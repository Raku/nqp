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
.sub "" :subid("cuid_230_1383914954.64741") :anon :lex
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
    .param pmc _lex_param_0 :slurpy 
    .const 'Sub' $P5027 = 'cuid_231_1383914954.64741' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_22_1383914954.64741' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_236_1383914954.64741' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_249_1383914954.64741' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_261_1383914954.64741' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_289_1383914954.64741' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_290_1383914954.64741' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_300_1383914954.64741' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_301_1383914954.64741' 
    capture_lex $P5027 
    .lex "GLOBALish", $P101 
    .lex "$?PACKAGE", $P102 
    .lex "EXPORT", $P103 
    .lex "ParseShared", $P104 
    .lex "NQPCursorRole", $P105 
    .lex "$compiler", $P106 
    .lex "sprintf", $P107 
    .lex "@ARGS", _lex_param_0 
    .local pmc ctxsave 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P106, $P5001
    find_dynamic_lex $P5002, "$*CTXSAVE"
    set ctxsave, $P5002
    isnull $I5001, ctxsave
    if $I5001 goto unless10_end11 
    can $I5002, ctxsave, "ctxsave"
    box $P5005, $I5002
    set $P5004, $P5005
    unless $I5002 goto if11_end13 
    $P5003 = ctxsave."ctxsave"()
    set $P5004, $P5003
  if11_end13:
  unless10_end11:
.annotate 'line', 1
    .const 'Sub' $P5006 = 'cuid_231_1383914954.64741' 
    capture_lex $P5006
    $P5007 = $P5006()
    .const 'Sub' $P5008 = 'cuid_22_1383914954.64741' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_236_1383914954.64741' 
    capture_lex $P5009
    $P5010 = $P5009()
    .const 'Sub' $P5011 = 'cuid_249_1383914954.64741' 
    capture_lex $P5011
    $P5012 = $P5011()
    .const 'Sub' $P5013 = 'cuid_261_1383914954.64741' 
    capture_lex $P5013
    $P5014 = $P5013()
.annotate 'line', 1612
    nqp_get_sc_object $P5015, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 127
    $P5016 = $P5015."new"()
    set $P106, $P5016
.annotate 'line', 1613
    $P5017 = $P106."backend"()
    $P5018 = $P5017."name"()
    $P106."language"($P5018)
    .const 'Sub' $P5019 = 'cuid_289_1383914954.64741' 
    capture_lex $P5019
    $P5020 = $P5019()
    .const 'Sub' $P5021 = 'cuid_290_1383914954.64741' 
    capture_lex $P5021
    $P5022 = $P5021()
    .const 'Sub' $P5023 = 'cuid_300_1383914954.64741' 
    capture_lex $P5023
    $P5024 = $P5023()
    .const 'Sub' $P5025 = 'cuid_301_1383914954.64741' 
    capture_lex $P5025
    $P5026 = $P5025()
    .return () 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_231_1383914954.64741") :anon :lex :outer("cuid_230_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 6
    .const 'Sub' $P5027 = 'cuid_1_1383914954.64741' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_2_1383914954.64741' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_3_1383914954.64741' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_4_1383914954.64741' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_5_1383914954.64741' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_6_1383914954.64741' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_7_1383914954.64741' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_8_1383914954.64741' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_9_1383914954.64741' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_10_1383914954.64741' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_11_1383914954.64741' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_12_1383914954.64741' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_13_1383914954.64741' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_14_1383914954.64741' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_15_1383914954.64741' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_16_1383914954.64741' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_17_1383914954.64741' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_18_1383914954.64741' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_19_1383914954.64741' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_20_1383914954.64741' 
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
    new $P5006, 'ResizablePMCArray'
    set $P5005, $P5006
  vivi_1316:
    set $P5001["%parrot_config"], $P5005
    .const 'Sub' $P5007 = 'cuid_1_1383914954.64741' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_2_1383914954.64741' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_3_1383914954.64741' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_4_1383914954.64741' 
    capture_lex $P5010
    .const 'Sub' $P5011 = 'cuid_5_1383914954.64741' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_6_1383914954.64741' 
    capture_lex $P5012
    .const 'Sub' $P5013 = 'cuid_7_1383914954.64741' 
    capture_lex $P5013
    .const 'Sub' $P5014 = 'cuid_8_1383914954.64741' 
    capture_lex $P5014
    .const 'Sub' $P5015 = 'cuid_9_1383914954.64741' 
    capture_lex $P5015
    .const 'Sub' $P5016 = 'cuid_10_1383914954.64741' 
    capture_lex $P5016
    .const 'Sub' $P5017 = 'cuid_11_1383914954.64741' 
    capture_lex $P5017
    .const 'Sub' $P5018 = 'cuid_12_1383914954.64741' 
    capture_lex $P5018
    .const 'Sub' $P5019 = 'cuid_13_1383914954.64741' 
    capture_lex $P5019
    .const 'Sub' $P5020 = 'cuid_14_1383914954.64741' 
    capture_lex $P5020
    .const 'Sub' $P5021 = 'cuid_15_1383914954.64741' 
    capture_lex $P5021
    .const 'Sub' $P5022 = 'cuid_16_1383914954.64741' 
    capture_lex $P5022
    .const 'Sub' $P5023 = 'cuid_17_1383914954.64741' 
    capture_lex $P5023
    .const 'Sub' $P5024 = 'cuid_18_1383914954.64741' 
    capture_lex $P5024
    .const 'Sub' $P5025 = 'cuid_19_1383914954.64741' 
    capture_lex $P5025
    .const 'Sub' $P5026 = 'cuid_20_1383914954.64741' 
    capture_lex $P5026
    .return ($P5026) 
.end
.HLL "nqp"
.namespace []
.sub "apply_transcodings" :subid("cuid_1_1383914954.64741") :anon :lex :outer("cuid_231_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 9
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .const 'Sub' $P5008 = 'cuid_232_1383914954.64741' 
    capture_lex $P5008 
    .lex "self", _lex_param_0 
    .lex "$s", _lex_param_1 
    .lex "$transcode", _lex_param_2 
    root_new $P101, ['parrot';'Continuation']
    set_label $P101, lexotic_17
    .lex "RETURN", $P101
    set $S5001, _lex_param_2
    split $P5004, " ", $S5001
    set $P5001, $P5004
    iter $P5003, $P5004
  for_next21:
    unless $P5003, for_done23
    shift $P5006, $P5003
  for_redo22:
    .const 'Sub' $P5005 = 'cuid_232_1383914954.64741' 
    capture_lex $P5005
    $P5001 = $P5005($P5006)
    goto for_next21
  for_done23:
    $P5007 = "RETURN"(_lex_param_1)
    goto lexotic_18
  lexotic_17:
    .get_results ($P5007)
  lexotic_18:
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_232_1383914954.64741") :anon :lex :outer("cuid_1_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 10
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    new $P5003, 'ExceptionHandler'
    set_label $P5003, catch_handler_1520
    $P5003.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5003
.annotate 'line', 11
    find_lex $P5001, "$s"
    set $S5002, $P5001
    set $S5003, _lex_param_0
    find_encoding $I5001, $S5003
    trans_encoding $S5001, $S5002, $I5001
    box $P5002, $S5001
    store_lex "$s", $P5002
    set $P5004, $P5002
    pop_eh 
    goto skip_handler_1419
  catch_handler_1520:
    .get_results ($P5003) 
    set $I10001, 1
    set $P5003["handled"], $I10001
    nqp_get_sc_object $P10001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    finalize $P5003
    pop_upto_eh $P5003
    pop_eh 
    set $P5004, $P10001
    goto skip_handler_1419
  skip_handler_1419:
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "config" :subid("cuid_2_1383914954.64741") :anon :lex :outer("cuid_231_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 19
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    .local pmc fb_tmp_2 
    find_lex $P5002, "$?PACKAGE"
    get_who $P5001, $P5002
    set fb_tmp_2, $P5001
    repr_defined $I5001, fb_tmp_2
    unless $I5001 goto if16_else24 
    set $P5003, fb_tmp_2["%parrot_config"]
    set $P5005, $P5003
    goto if16_end25
  if16_else24:
    null $P5004
    set $P5005, $P5004
  if16_end25:
    unless_null $P5005, vivi_1726
    new $P5006, 'Hash'
    set $P5005, $P5006
  vivi_1726:
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "force_gc" :subid("cuid_3_1383914954.64741") :anon :lex :outer("cuid_231_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 23
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    sweep 1
    .return (1) 
.end
.HLL "nqp"
.namespace []
.sub "name" :subid("cuid_4_1383914954.64741") :anon :lex :outer("cuid_231_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 27
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    .return ("parrot") 
.end
.HLL "nqp"
.namespace []
.sub "nqpevent" :subid("cuid_5_1383914954.64741") :anon :lex :outer("cuid_231_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 31
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :optional 
    .param int haz_param_1 :opt_flag 
    .const 'Sub' $P5011 = 'cuid_234_1383914954.64741' 
    capture_lex $P5011 
    .lex "$fh", $P101 
    .lex "self", _lex_param_0 
    .lex "$spec", _lex_param_1 
    if haz_param_1, default45
    nqp_get_sc_object $P5010, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set _lex_param_1, $P5010
  default45:
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P101, $P5001
    nqpevent "nqpevent: log finished"
    null $P5003
    nqpevent_fh $P5002, $P5003
    set $P101, $P5002
    isnull $I5002, $P101
    not $I5001, $I5002
    box $P5005, $I5001
    set $P5004, $P5005
    unless $I5001 goto if19_end30 
    set $P5004, $P101
  if19_end30:
    unless $P5004 goto if18_end28 
.annotate 'line', 35
    $P5006 = $P101."flush"()
  if18_end28:
    set $P5009, _lex_param_1
    unless _lex_param_1 goto if20_end32 
    .const 'Sub' $P5007 = 'cuid_234_1383914954.64741' 
    capture_lex $P5007
    $P5008 = $P5007()
    set $P5009, $P5008
  if20_end32:
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_234_1383914954.64741") :anon :lex :outer("cuid_5_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 38
    .const 'Sub' $P5022 = 'cuid_233_1383914954.64741' 
    capture_lex $P5022 
    .lex "$file", $P101 
    .lex "$flags", $P102 
    .local pmc fb_tmp_3 
    .local pmc fb_tmp_4 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P102, $P5002
    find_lex $P5004, "$spec"
    set $S5001, $P5004
    split $P5003, ";", $S5001
    store_lex "$spec", $P5003
    find_lex $P5005, "$spec"
    set fb_tmp_3, $P5005
    repr_defined $I5001, fb_tmp_3
    unless $I5001 goto if21_else33 
    set $P5006, fb_tmp_3[0]
    set $P5008, $P5006
    goto if21_end34
  if21_else33:
    null $P5007
    set $P5008, $P5007
  if21_end34:
    unless_null $P5008, vivi_2235
    nqp_get_sc_object $P5009, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5008, $P5009
  vivi_2235:
    set $P101, $P5008
    find_lex $P5010, "$spec"
    set fb_tmp_4, $P5010
    repr_defined $I5002, fb_tmp_4
    unless $I5002 goto if23_else36 
    set $P5011, fb_tmp_4[1]
    set $P5013, $P5011
    goto if23_end37
  if23_else36:
    null $P5012
    set $P5013, $P5012
  if23_end37:
    unless_null $P5013, vivi_2438
    nqp_get_sc_object $P5014, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5013, $P5014
  vivi_2438:
    set $P102, $P5013
    set $S5002, $P101
    isgt $I5003, $S5002, ""
    unless $I5003 goto if25_else39 
    .const 'Sub' $P5015 = 'cuid_233_1383914954.64741' 
    capture_lex $P5015
    $P5016 = $P5015()
    goto if25_end40
  if25_else39:
.annotate 'line', 46
    getinterp $P5018
    $P5019 = $P5018."stderr_handle"()
    nqpevent_fh $P5017, $P5019
  if25_end40:
    set $S5003, $P102
    iseq $I5005, $S5003, ""
    unless $I5005 goto if27_else43 
    box $P5021, 31
    set $P5020, $P5021
    goto if27_end44
  if27_else43:
    set $P5020, $P102
  if27_end44:
    set $I5006, $P5020
    nqpdebflags $I5004, $I5006
    nqpevent "nqpevent: log started"
    .return ("nqpevent: log started") 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_233_1383914954.64741") :anon :lex :outer("cuid_234_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 42
    .lex "$fh", $P101 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P101, $P5001
    find_lex $P5003, "$file"
    set $S5001, $P5003
    open $P5002, $S5001, "w"
    set $P5008, $P5002
    if $P5002 goto unless26_end42 
.annotate 'line', 43
    find_lex $P5005, "self"
    nqp_decontainerize $P5004, $P5005
    find_lex $P5006, "$file"
    set $S5003, $P5006
    concat $S5002, "Cannot write to ", $S5003
    $P5007 = $P5004."panic"($S5002)
    set $P5008, $P5007
  unless26_end42:
    set $P101, $P5008
    nqpevent_fh $P5009, $P101
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "run_profiled" :subid("cuid_6_1383914954.64741") :anon :lex :outer("cuid_231_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 54
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$old_runcore", $P101 
    .lex "$res", $P102 
    .lex "self", _lex_param_0 
    .lex "$what", _lex_param_1 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P102, $P5002
    interpinfo $S5001, .INTERPINFO_CURRENT_RUNCORE
    box $P5003, $S5001
    set $P101, $P5003
    set_runcore "subprof_hll"
.annotate 'line', 57
    $P5004 = _lex_param_1()
    set $P102, $P5004
    set $S5002, $P101
    set_runcore $S5002
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "run_traced" :subid("cuid_7_1383914954.64741") :anon :lex :outer("cuid_231_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 62
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "$res", $P101 
    .lex "self", _lex_param_0 
    .lex "$level", _lex_param_1 
    .lex "$what", _lex_param_2 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P101, $P5001
    set $I5001, _lex_param_1
    trace $I5001
.annotate 'line', 64
    $P5002 = _lex_param_2()
    set $P101, $P5002
    trace 0
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "version_string" :subid("cuid_8_1383914954.64741") :anon :lex :outer("cuid_231_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 69
    .param pmc _lex_param_0 
    .lex "$parver", $P101 
    .lex "$parrev", $P102 
    .lex "self", _lex_param_0 
    .local pmc fb_tmp_5 
    .local pmc fb_tmp_6 
    .local pmc fb_tmp_7 
    .local pmc fb_tmp_8 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P102, $P5002
    root_new $P103, ['parrot';'Continuation']
    set_label $P103, lexotic_46
    .lex "RETURN", $P103
    find_lex $P5004, "$?PACKAGE"
    get_who $P5003, $P5004
    set fb_tmp_6, $P5003
    repr_defined $I5002, fb_tmp_6
    unless $I5002 goto if29_else50 
    set $P5005, fb_tmp_6["%parrot_config"]
    set $P5007, $P5005
    goto if29_end51
  if29_else50:
    null $P5006
    set $P5007, $P5006
  if29_end51:
    unless_null $P5007, vivi_3052
    new $P5008, 'Hash'
    set $P5007, $P5008
  vivi_3052:
    set fb_tmp_5, $P5007
    repr_defined $I5001, fb_tmp_5
    unless $I5001 goto if28_else48 
    set $P5009, fb_tmp_5["VERSION"]
    set $P5011, $P5009
    goto if28_end49
  if28_else48:
    null $P5010
    set $P5011, $P5010
  if28_end49:
    unless_null $P5011, vivi_3153
    nqp_get_sc_object $P5012, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5011, $P5012
  vivi_3153:
    set $P101, $P5011
    find_lex $P5015, "$?PACKAGE"
    get_who $P5014, $P5015
    set fb_tmp_8, $P5014
    repr_defined $I5005, fb_tmp_8
    unless $I5005 goto if33_else57 
    set $P5016, fb_tmp_8["%parrot_config"]
    set $P5018, $P5016
    goto if33_end58
  if33_else57:
    null $P5017
    set $P5018, $P5017
  if33_end58:
    unless_null $P5018, vivi_3459
    new $P5019, 'Hash'
    set $P5018, $P5019
  vivi_3459:
    set fb_tmp_7, $P5018
    repr_defined $I5004, fb_tmp_7
    unless $I5004 goto if32_else55 
    set $P5020, fb_tmp_7["git_describe"]
    set $P5022, $P5020
    goto if32_end56
  if32_else55:
    null $P5021
    set $P5022, $P5021
  if32_end56:
    unless_null $P5022, vivi_3560
    nqp_get_sc_object $P5023, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5022, $P5023
  vivi_3560:
    set $P5013, $P5022
    defined $I5003, $P5013
    if $I5003, defor54
    box $P5024, "(unknown)"
    set $P5013, $P5024
  defor54:
    set $P102, $P5013
    set $S5004, $P101
    concat $S5003, "parrot ", $S5004
    concat $S5002, $S5003, " revision "
    set $S5005, $P102
    concat $S5001, $S5002, $S5005
    $P5025 = "RETURN"($S5001)
    goto lexotic_47
  lexotic_46:
    .get_results ($P5025)
  lexotic_47:
    .return ($P5025) 
.end
.HLL "nqp"
.namespace []
.sub "vmstat" :subid("cuid_9_1383914954.64741") :anon :lex :outer("cuid_231_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 75
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    new $P5003, 'ResizablePMCArray'
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
.sub "stages" :subid("cuid_10_1383914954.64741") :anon :lex :outer("cuid_231_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 84
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    .return ("post pir evalpmc") 
.end
.HLL "nqp"
.namespace []
.sub "is_precomp_stage" :subid("cuid_11_1383914954.64741") :anon :lex :outer("cuid_231_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 88
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$stage", _lex_param_1 
    set $S5001, _lex_param_1
    iseq $I5001, $S5001, "pir"
    .return ($I5001) 
.end
.HLL "nqp"
.namespace []
.sub "is_textual_stage" :subid("cuid_12_1383914954.64741") :anon :lex :outer("cuid_231_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 93
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$stage", _lex_param_1 
    set $S5001, _lex_param_1
    iseq $I5001, $S5001, "pir"
    .return ($I5001) 
.end
.HLL "nqp"
.namespace []
.sub "post" :subid("cuid_13_1383914954.64741") :anon :lex :outer("cuid_231_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 97
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :slurpy :named 
    .lex "self", _lex_param_0 
    .lex "$source", _lex_param_1 
    .lex "%adverbs", _lex_param_2 
.annotate 'line', 98
    compreg $P5001, "QAST"
    $P5002 = $P5001."post"(_lex_param_1)
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "pirbegin" :subid("cuid_14_1383914954.64741") :anon :lex :outer("cuid_231_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 101
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
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
.sub "pir" :subid("cuid_15_1383914954.64741") :anon :lex :outer("cuid_231_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 115
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :slurpy :named 
    .lex "self", _lex_param_0 
    .lex "$source", _lex_param_1 
    .lex "%adverbs", _lex_param_2 
.annotate 'line', 116
    nqp_decontainerize $P5001, _lex_param_0
    $P5002 = $P5001."pirbegin"()
    set $S5002, $P5002
    $P5003 = _lex_param_1."pir"()
    set $S5003, $P5003
    concat $S5001, $S5002, $S5003
    .return ($S5001) 
.end
.HLL "nqp"
.namespace []
.sub "evalpmc" :subid("cuid_16_1383914954.64741") :anon :lex :outer("cuid_231_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 119
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :slurpy :named 
    .const 'Sub' $P5013 = 'cuid_235_1383914954.64741' 
    capture_lex $P5013 
    .lex "$compiler", $P101 
    .lex "$pbc", $P102 
    .lex "self", _lex_param_0 
    .lex "$source", _lex_param_1 
    .lex "%adverbs", _lex_param_2 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P102, $P5002
    compreg $P5003, "PIR"
    set $P101, $P5003
.annotate 'line', 121
    $P5004 = $P101(_lex_param_1)
    set $P102, $P5004
.annotate 'line', 122
    $P5005 = $P102."is_initialized"("init")
    if $P5005 goto unless36_end62 
.annotate 'line', 123
    $P5009 = $P102."subs_by_tag"("init")
    set $P5006, $P5009
    iter $P5008, $P5009
  for_next63:
    unless $P5008, for_done65
    shift $P5011, $P5008
  for_redo64:
    .const 'Sub' $P5010 = 'cuid_235_1383914954.64741' 
    capture_lex $P5010
    $P5006 = $P5010($P5011)
    goto for_next63
  for_done65:
.annotate 'line', 124
    $P5012 = $P102."mark_initialized"("init")
  unless36_end62:
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_235_1383914954.64741") :anon :lex :outer("cuid_16_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 123
    .param pmc _lex_param_0 
    .lex "$sub", _lex_param_0 
    $P5001 = _lex_param_0()
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "is_compunit" :subid("cuid_17_1383914954.64741") :anon :lex :outer("cuid_231_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 129
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$cuish", _lex_param_1 
    isa $I5002, _lex_param_1, "String"
    not $I5001, $I5002
    .return ($I5001) 
.end
.HLL "nqp"
.namespace []
.sub "compunit_mainline" :subid("cuid_18_1383914954.64741") :anon :lex :outer("cuid_231_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 133
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$cu", _lex_param_1 
    .local pmc fb_tmp_9 
.annotate 'line', 134
    $P5001 = _lex_param_1."all_subs"()
    set fb_tmp_9, $P5001
    repr_defined $I5001, fb_tmp_9
    unless $I5001 goto if37_else66 
    set $P5002, fb_tmp_9[0]
    set $P5004, $P5002
    goto if37_end67
  if37_else66:
    null $P5003
    set $P5004, $P5003
  if37_end67:
    unless_null $P5004, vivi_3868
    nqp_get_sc_object $P5005, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5004, $P5005
  vivi_3868:
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "compunit_coderefs" :subid("cuid_19_1383914954.64741") :anon :lex :outer("cuid_231_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 137
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$cu", _lex_param_1 
.annotate 'line', 138
    $P5001 = _lex_param_1."all_subs"()
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "recursion_limit" :subid("cuid_20_1383914954.64741") :anon :lex :outer("cuid_231_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 141
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$limit", _lex_param_1 
.annotate 'line', 142
    getinterp $P5001
    $P5002 = $P5001."recursion_limit"(_lex_param_1)
    .return ($P5002) 
.end
.loadlib "nqp_group"
.loadlib "nqp_ops"
.loadlib "nqp_bigint_ops"
.loadlib "trans_ops"
.loadlib "io_ops"
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_22_1383914954.64741") :anon :lex :outer("cuid_230_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 147
    .param pmc _lex_param_0 
    .const 'Sub' $P5003 = 'cuid_21_1383914954.64741' 
    capture_lex $P5003 
    .lex "$?PACKAGE", $P101 
    .lex "$?ROLE", $P102 
    .lex "$?CLASS", _lex_param_0 
    .const 'Sub' $P5001 = 'cuid_21_1383914954.64741' 
    capture_lex $P5001
    getinterp $P5002
    set $P5002, $P5002['lexpad']
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "default_backend" :subid("cuid_21_1383914954.64741") :anon :lex :outer("cuid_22_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 148
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 3
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_236_1383914954.64741") :anon :lex :outer("cuid_230_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 154
    .const 'Sub' $P5069 = 'cuid_23_1383914954.64741' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_24_1383914954.64741' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_25_1383914954.64741' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_26_1383914954.64741' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_27_1383914954.64741' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_28_1383914954.64741' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_29_1383914954.64741' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_30_1383914954.64741' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_31_1383914954.64741' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_32_1383914954.64741' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_33_1383914954.64741' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_34_1383914954.64741' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_35_1383914954.64741' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_36_1383914954.64741' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_37_1383914954.64741' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_38_1383914954.64741' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_39_1383914954.64741' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_40_1383914954.64741' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_41_1383914954.64741' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_42_1383914954.64741' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_43_1383914954.64741' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_44_1383914954.64741' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_45_1383914954.64741' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_46_1383914954.64741' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_47_1383914954.64741' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_48_1383914954.64741' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_49_1383914954.64741' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_50_1383914954.64741' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_51_1383914954.64741' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_52_1383914954.64741' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_53_1383914954.64741' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_54_1383914954.64741' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_55_1383914954.64741' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_56_1383914954.64741' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_57_1383914954.64741' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_58_1383914954.64741' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_59_1383914954.64741' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_60_1383914954.64741' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_61_1383914954.64741' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_62_1383914954.64741' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_63_1383914954.64741' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_64_1383914954.64741' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_67_1383914954.64741' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_69_1383914954.64741' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_70_1383914954.64741' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_71_1383914954.64741' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_72_1383914954.64741' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_73_1383914954.64741' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_74_1383914954.64741' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_75_1383914954.64741' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_76_1383914954.64741' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_77_1383914954.64741' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_78_1383914954.64741' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_79_1383914954.64741' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_80_1383914954.64741' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_81_1383914954.64741' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_82_1383914954.64741' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_83_1383914954.64741' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_84_1383914954.64741' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_85_1383914954.64741' 
    capture_lex $P5069 
    .const 'Sub' $P5069 = 'cuid_86_1383914954.64741' 
    capture_lex $P5069 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .lex "$brackets", $P103 
    .lex "$cursor_class", $P104 
    .lex "%ohash", $P105 
    .lex "$TRUE", $P106 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P103, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P104, $P5002
    new $P5003, 'Hash'
    set $P105, $P5003
    nqp_get_sc_object $P5004, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P106, $P5004
    box $P5005, utf8:"<>[](){}()<>[]{}\x{ab}\x{bb}\u0f3a\u0f3b\u0f3c\u0f3d\u169b\u169c\u2018\u2019\u201a\u2019\u201b\u2019\u201c\u201d\u201e\u201d\u201f\u201d\u2039\u203a\u2045\u2046\u207d\u207e\u208d\u208e\u2208\u220b\u2209\u220c\u220a\u220d\u2215\u29f5\u223c\u223d\u2243\u22cd\u2252\u2253\u2254\u2255\u2264\u2265\u2266\u2267\u2268\u2269\u226a\u226b\u226e\u226f\u2270\u2271\u2272\u2273\u2274\u2275\u2276\u2277\u2278\u2279\u227a\u227b\u227c\u227d\u227e\u227f\u2280\u2281\u2282\u2283\u2284\u2285\u2286\u2287\u2288\u2289\u228a\u228b\u228f\u2290\u2291\u2292\u2298\u29b8\u22a2\u22a3\u22a6\u2ade\u22a8\u2ae4\u22a9\u2ae3\u22ab\u2ae5\u22b0\u22b1\u22b2\u22b3\u22b4\u22b5\u22b6\u22b7\u22c9\u22ca\u22cb\u22cc\u22d0\u22d1\u22d6\u22d7\u22d8\u22d9\u22da\u22db\u22dc\u22dd\u22de\u22df\u22e0\u22e1\u22e2\u22e3\u22e4\u22e5\u22e6\u22e7\u22e8\u22e9\u22ea\u22eb\u22ec\u22ed\u22f0\u22f1\u22f2\u22fa\u22f3\u22fb\u22f4\u22fc\u22f6\u22fd\u22f7\u22fe\u2308\u2309\u230a\u230b\u2329\u232a\u23b4\u23b5\u2768\u2769\u276a\u276b\u276c\u276d\u276e\u276f\u2770\u2771\u2772\u2773\u2774\u2775\u27c3\u27c4\u27c5\u27c6\u27d5\u27d6\u27dd\u27de\u27e2\u27e3\u27e4\u27e5\u27e6\u27e7\u27e8\u27e9\u27ea\u27eb\u2983\u2984\u2985\u2986\u2987\u2988\u2989\u298a\u298b\u298c\u298d\u298e\u298f\u2990\u2991\u2992\u2993\u2994\u2995\u2996\u2997\u2998\u29c0\u29c1\u29c4\u29c5\u29cf\u29d0\u29d1\u29d2\u29d4\u29d5\u29d8\u29d9\u29da\u29db\u29f8\u29f9\u29fc\u29fd\u2a2b\u2a2c\u2a2d\u2a2e\u2a34\u2a35\u2a3c\u2a3d\u2a64\u2a65\u2a79\u2a7a\u2a7d\u2a7e\u2a7f\u2a80\u2a81\u2a82\u2a83\u2a84\u2a8b\u2a8c\u2a91\u2a92\u2a93\u2a94\u2a95\u2a96\u2a97\u2a98\u2a99\u2a9a\u2a9b\u2a9c\u2aa1\u2aa2\u2aa6\u2aa7\u2aa8\u2aa9\u2aaa\u2aab\u2aac\u2aad\u2aaf\u2ab0\u2ab3\u2ab4\u2abb\u2abc\u2abd\u2abe\u2abf\u2ac0\u2ac1\u2ac2\u2ac3\u2ac4\u2ac5\u2ac6\u2acd\u2ace\u2acf\u2ad0\u2ad1\u2ad2\u2ad3\u2ad4\u2ad5\u2ad6\u2aec\u2aed\u2af7\u2af8\u2af9\u2afa\u2e02\u2e03\u2e04\u2e05\u2e09\u2e0a\u2e0c\u2e0d\u2e1c\u2e1d\u2e20\u2e21\u3008\u3009\u300a\u300b\u300c\u300d\u300e\u300f\u3010\u3011\u3014\u3015\u3016\u3017\u3018\u3019\u301a\u301b\u301d\u301e\ufd3e\ufd3f\ufe17\ufe18\ufe35\ufe36\ufe37\ufe38\ufe39\ufe3a\ufe3b\ufe3c\ufe3d\ufe3e\ufe3f\ufe40\ufe41\ufe42\ufe43\ufe44\ufe47\ufe48\ufe59\ufe5a\ufe5b\ufe5c\ufe5d\ufe5e\uff08\uff09\uff1c\uff1e\uff3b\uff3d\uff5b\uff5d\uff5f\uff60\uff62\uff63"
    set $P103, $P5005
    nqp_get_sc_object $P5006, "65475E2A0C14FDD82BB949E6EFAAEB49870261A5-1383914944.49584", 103
    set $P104, $P5006
    .const 'Sub' $P5007 = 'cuid_23_1383914954.64741' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_24_1383914954.64741' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_25_1383914954.64741' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_26_1383914954.64741' 
    capture_lex $P5010
    .const 'Sub' $P5011 = 'cuid_27_1383914954.64741' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_28_1383914954.64741' 
    capture_lex $P5012
    .const 'Sub' $P5013 = 'cuid_29_1383914954.64741' 
    capture_lex $P5013
    .const 'Sub' $P5014 = 'cuid_30_1383914954.64741' 
    capture_lex $P5014
    .const 'Sub' $P5015 = 'cuid_31_1383914954.64741' 
    capture_lex $P5015
    .const 'Sub' $P5016 = 'cuid_32_1383914954.64741' 
    capture_lex $P5016
    .const 'Sub' $P5017 = 'cuid_33_1383914954.64741' 
    capture_lex $P5017
    .const 'Sub' $P5018 = 'cuid_34_1383914954.64741' 
    capture_lex $P5018
    .const 'Sub' $P5019 = 'cuid_35_1383914954.64741' 
    capture_lex $P5019
    .const 'Sub' $P5020 = 'cuid_36_1383914954.64741' 
    capture_lex $P5020
    .const 'Sub' $P5021 = 'cuid_37_1383914954.64741' 
    capture_lex $P5021
    .const 'Sub' $P5022 = 'cuid_38_1383914954.64741' 
    capture_lex $P5022
    .const 'Sub' $P5023 = 'cuid_39_1383914954.64741' 
    capture_lex $P5023
    .const 'Sub' $P5024 = 'cuid_40_1383914954.64741' 
    capture_lex $P5024
    .const 'Sub' $P5025 = 'cuid_41_1383914954.64741' 
    capture_lex $P5025
    .const 'Sub' $P5026 = 'cuid_42_1383914954.64741' 
    capture_lex $P5026
    .const 'Sub' $P5027 = 'cuid_43_1383914954.64741' 
    capture_lex $P5027
    .const 'Sub' $P5028 = 'cuid_44_1383914954.64741' 
    capture_lex $P5028
    .const 'Sub' $P5029 = 'cuid_45_1383914954.64741' 
    capture_lex $P5029
    .const 'Sub' $P5030 = 'cuid_46_1383914954.64741' 
    capture_lex $P5030
    .const 'Sub' $P5031 = 'cuid_47_1383914954.64741' 
    capture_lex $P5031
    .const 'Sub' $P5032 = 'cuid_48_1383914954.64741' 
    capture_lex $P5032
    .const 'Sub' $P5033 = 'cuid_49_1383914954.64741' 
    capture_lex $P5033
    .const 'Sub' $P5034 = 'cuid_50_1383914954.64741' 
    capture_lex $P5034
    .const 'Sub' $P5035 = 'cuid_51_1383914954.64741' 
    capture_lex $P5035
    .const 'Sub' $P5036 = 'cuid_52_1383914954.64741' 
    capture_lex $P5036
    .const 'Sub' $P5037 = 'cuid_53_1383914954.64741' 
    capture_lex $P5037
    .const 'Sub' $P5038 = 'cuid_54_1383914954.64741' 
    capture_lex $P5038
    .const 'Sub' $P5039 = 'cuid_55_1383914954.64741' 
    capture_lex $P5039
    .const 'Sub' $P5040 = 'cuid_56_1383914954.64741' 
    capture_lex $P5040
    .const 'Sub' $P5041 = 'cuid_57_1383914954.64741' 
    capture_lex $P5041
    .const 'Sub' $P5042 = 'cuid_58_1383914954.64741' 
    capture_lex $P5042
    .const 'Sub' $P5043 = 'cuid_59_1383914954.64741' 
    capture_lex $P5043
    .const 'Sub' $P5044 = 'cuid_60_1383914954.64741' 
    capture_lex $P5044
    .const 'Sub' $P5045 = 'cuid_61_1383914954.64741' 
    capture_lex $P5045
    .const 'Sub' $P5046 = 'cuid_62_1383914954.64741' 
    capture_lex $P5046
    .const 'Sub' $P5047 = 'cuid_63_1383914954.64741' 
    capture_lex $P5047
    .const 'Sub' $P5048 = 'cuid_64_1383914954.64741' 
    capture_lex $P5048
    .const 'Sub' $P5049 = 'cuid_67_1383914954.64741' 
    capture_lex $P5049
    .const 'Sub' $P5050 = 'cuid_69_1383914954.64741' 
    capture_lex $P5050
    .const 'Sub' $P5051 = 'cuid_70_1383914954.64741' 
    capture_lex $P5051
    .const 'Sub' $P5052 = 'cuid_71_1383914954.64741' 
    capture_lex $P5052
    .const 'Sub' $P5053 = 'cuid_72_1383914954.64741' 
    capture_lex $P5053
    .const 'Sub' $P5054 = 'cuid_73_1383914954.64741' 
    capture_lex $P5054
    .const 'Sub' $P5055 = 'cuid_74_1383914954.64741' 
    capture_lex $P5055
    box $P5056, 1
    set $P106, $P5056
    .const 'Sub' $P5057 = 'cuid_75_1383914954.64741' 
    capture_lex $P5057
    .const 'Sub' $P5058 = 'cuid_76_1383914954.64741' 
    capture_lex $P5058
    .const 'Sub' $P5059 = 'cuid_77_1383914954.64741' 
    capture_lex $P5059
    .const 'Sub' $P5060 = 'cuid_78_1383914954.64741' 
    capture_lex $P5060
    .const 'Sub' $P5061 = 'cuid_79_1383914954.64741' 
    capture_lex $P5061
    .const 'Sub' $P5062 = 'cuid_80_1383914954.64741' 
    capture_lex $P5062
    .const 'Sub' $P5063 = 'cuid_81_1383914954.64741' 
    capture_lex $P5063
    .const 'Sub' $P5064 = 'cuid_82_1383914954.64741' 
    capture_lex $P5064
    .const 'Sub' $P5065 = 'cuid_83_1383914954.64741' 
    capture_lex $P5065
    .const 'Sub' $P5066 = 'cuid_84_1383914954.64741' 
    capture_lex $P5066
    .const 'Sub' $P5067 = 'cuid_85_1383914954.64741' 
    capture_lex $P5067
    .const 'Sub' $P5068 = 'cuid_86_1383914954.64741' 
    capture_lex $P5068
    .return ($P5068) 
.end
.HLL "nqp"
.namespace []
.sub "throw_unrecog_backslash_seq" :subid("cuid_23_1383914954.64741") :anon :lex :outer("cuid_236_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 158
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$sequence", _lex_param_1 
.annotate 'line', 159
    nqp_decontainerize $P5001, _lex_param_0
    set $S5003, _lex_param_1
    concat $S5002, "Unrecognized backslash sequence: '\\", $S5003
    concat $S5001, $S5002, "'"
    $P5002 = $P5001."panic"($S5001)
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "termish" :subid("cuid_24_1383914954.64741") :anon :lex :outer("cuid_236_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 162
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx39_start
    .local string rx39_tgt
    .local int rx39_pos
    .local int rx39_off
    .local int rx39_eos
    .local int rx39_rep
    .local pmc rx39_cur
    .local pmc rx39_curclass
    .local pmc rx39_bstack
    .local pmc rx39_cstack
    rx39_start = self."!cursor_start_all"()
    set rx39_cur, rx39_start[0]
    set rx39_tgt, rx39_start[1]
    set rx39_pos, rx39_start[2]
    set rx39_curclass, rx39_start[3]
    set rx39_bstack, rx39_start[4]
    set $I19, rx39_start[5]
    store_lex unicode:"$\x{a2}", rx39_cur
    length rx39_eos, rx39_tgt
    eq $I19, 1, rx39_restart71
    gt rx39_pos, rx39_eos, rx39_fail72
    repr_get_attr_int $I11, self, rx39_curclass, "$!from"
    ne $I11, -1, rxscan40_done78
    goto rxscan40_scan77
  rxscan40_loop76:
    inc rx39_pos
    gt rx39_pos, rx39_eos, rx39_fail72
    repr_bind_attr_int rx39_cur, rx39_curclass, "$!from", rx39_pos
  rxscan40_scan77:
    nqp_rxmark rx39_bstack, rxscan40_loop76, rx39_pos, 0
  rxscan40_done78:
    nqp_rxmark rx39_bstack, rxquantr41_done80, rx39_pos, 0
  rxquantr41_loop79:
    repr_bind_attr_int rx39_cur, rx39_curclass, "$!pos", rx39_pos
    $P11 = rx39_cur."prefixish"()
    repr_get_attr_int $I11, $P11, rx39_curclass, "$!pos"
    lt $I11, 0, rx39_fail72
    goto rxsubrule42_pass81
  rxsubrule42_back82:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx39_curclass, "$!pos"
    lt $I11, 0, rx39_fail72
  rxsubrule42_pass81:
    rx39_cstack = rx39_cur."!cursor_capture"($P11, "prefixish")
    set_addr $I11, rxsubrule42_back82
    push rx39_bstack, $I11
    push rx39_bstack, 0
    push rx39_bstack, rx39_pos
    elements $I11, rx39_cstack
    push rx39_bstack, $I11
    repr_get_attr_int rx39_pos, $P11, rx39_curclass, "$!pos"
    nqp_rxpeek $I19, rx39_bstack, rxquantr41_done80
    inc $I19
    inc $I19
    set rx39_rep, rx39_bstack[$I19]
    nqp_rxcommit rx39_bstack, rxquantr41_done80
    inc rx39_rep
    nqp_rxmark rx39_bstack, rxquantr41_done80, rx39_pos, rx39_rep
    goto rxquantr41_loop79
  rxquantr41_done80:
    repr_bind_attr_int rx39_cur, rx39_curclass, "$!pos", rx39_pos
    $P11 = rx39_cur."term"()
    repr_get_attr_int $I11, $P11, rx39_curclass, "$!pos"
    lt $I11, 0, rx39_fail72
    nqp_rxmark rx39_bstack, rxsubrule43_pass83, -1, 0
  rxsubrule43_pass83:
    rx39_cstack = rx39_cur."!cursor_capture"($P11, "term")
    repr_get_attr_int rx39_pos, $P11, rx39_curclass, "$!pos"
    nqp_rxmark rx39_bstack, rxquantr44_done85, rx39_pos, 0
  rxquantr44_loop84:
    repr_bind_attr_int rx39_cur, rx39_curclass, "$!pos", rx39_pos
    $P11 = rx39_cur."postfixish"()
    repr_get_attr_int $I11, $P11, rx39_curclass, "$!pos"
    lt $I11, 0, rx39_fail72
    goto rxsubrule45_pass86
  rxsubrule45_back87:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx39_curclass, "$!pos"
    lt $I11, 0, rx39_fail72
  rxsubrule45_pass86:
    rx39_cstack = rx39_cur."!cursor_capture"($P11, "postfixish")
    set_addr $I11, rxsubrule45_back87
    push rx39_bstack, $I11
    push rx39_bstack, 0
    push rx39_bstack, rx39_pos
    elements $I11, rx39_cstack
    push rx39_bstack, $I11
    repr_get_attr_int rx39_pos, $P11, rx39_curclass, "$!pos"
    nqp_rxpeek $I19, rx39_bstack, rxquantr44_done85
    inc $I19
    inc $I19
    set rx39_rep, rx39_bstack[$I19]
    nqp_rxcommit rx39_bstack, rxquantr44_done85
    inc rx39_rep
    nqp_rxmark rx39_bstack, rxquantr44_done85, rx39_pos, rx39_rep
    goto rxquantr44_loop84
  rxquantr44_done85:
    rx39_cur."!cursor_pass"(rx39_pos, "termish", 'backtrack'=>1)
    .return (rx39_cur)
  rx39_restart71:
    repr_get_attr_obj rx39_cstack, rx39_cur, rx39_curclass, "$!cstack"
  rx39_fail72:
    unless rx39_bstack, rx39_done70
    pop $I19, rx39_bstack
    if_null rx39_cstack, rx39_cstack_done75
    unless rx39_cstack, rx39_cstack_done75
    dec $I19
    set $P11, rx39_cstack[$I19]
  rx39_cstack_done75:
    pop rx39_rep, rx39_bstack
    pop rx39_pos, rx39_bstack
    pop $I19, rx39_bstack
    lt rx39_pos, -1, rx39_done70
    lt rx39_pos, 0, rx39_fail72
    eq $I19, 0, rx39_fail72
    nqp_islist $I20, rx39_cstack
    unless $I20, rx39_jump73
    elements $I18, rx39_bstack
    le $I18, 0, rx39_cut74
    dec $I18
    set $I18, rx39_bstack[$I18]
  rx39_cut74:
    assign rx39_cstack, $I18
  rx39_jump73:
    jump $I19
  rx39_done70:
    rx39_cur."!cursor_fail"()
    .return (rx39_cur) 
.end
.HLL "nqp"
.namespace []
.sub "term" :subid("cuid_25_1383914954.64741") :anon :lex :outer("cuid_236_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 168
    .param pmc self 
    $P5001 = self."!protoregex"("term")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "infix" :subid("cuid_26_1383914954.64741") :anon :lex :outer("cuid_236_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 169
    .param pmc self 
    $P5001 = self."!protoregex"("infix")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "prefix" :subid("cuid_27_1383914954.64741") :anon :lex :outer("cuid_236_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 170
    .param pmc self 
    $P5001 = self."!protoregex"("prefix")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "postfix" :subid("cuid_28_1383914954.64741") :anon :lex :outer("cuid_236_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 171
    .param pmc self 
    $P5001 = self."!protoregex"("postfix")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "circumfix" :subid("cuid_29_1383914954.64741") :anon :lex :outer("cuid_236_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 172
    .param pmc self 
    $P5001 = self."!protoregex"("circumfix")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "postcircumfix" :subid("cuid_30_1383914954.64741") :anon :lex :outer("cuid_236_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 173
    .param pmc self 
    $P5001 = self."!protoregex"("postcircumfix")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "term:sym<circumfix>" :subid("cuid_31_1383914954.64741") :anon :lex :outer("cuid_236_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 175
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx46_start
    .local string rx46_tgt
    .local int rx46_pos
    .local int rx46_off
    .local int rx46_eos
    .local int rx46_rep
    .local pmc rx46_cur
    .local pmc rx46_curclass
    .local pmc rx46_bstack
    .local pmc rx46_cstack
    rx46_start = self."!cursor_start_all"()
    set rx46_cur, rx46_start[0]
    set rx46_tgt, rx46_start[1]
    set rx46_pos, rx46_start[2]
    set rx46_curclass, rx46_start[3]
    set rx46_bstack, rx46_start[4]
    set $I19, rx46_start[5]
    store_lex unicode:"$\x{a2}", rx46_cur
    length rx46_eos, rx46_tgt
    eq $I19, 1, rx46_restart90
    gt rx46_pos, rx46_eos, rx46_fail91
    repr_get_attr_int $I11, self, rx46_curclass, "$!from"
    ne $I11, -1, rxscan47_done97
    goto rxscan47_scan96
  rxscan47_loop95:
    inc rx46_pos
    gt rx46_pos, rx46_eos, rx46_fail91
    repr_bind_attr_int rx46_cur, rx46_curclass, "$!from", rx46_pos
  rxscan47_scan96:
    nqp_rxmark rx46_bstack, rxscan47_loop95, rx46_pos, 0
  rxscan47_done97:
    repr_bind_attr_int rx46_cur, rx46_curclass, "$!pos", rx46_pos
    $P11 = rx46_cur."circumfix"()
    repr_get_attr_int $I11, $P11, rx46_curclass, "$!pos"
    lt $I11, 0, rx46_fail91
    nqp_rxmark rx46_bstack, rxsubrule48_pass98, -1, 0
  rxsubrule48_pass98:
    rx46_cstack = rx46_cur."!cursor_capture"($P11, "circumfix")
    repr_get_attr_int rx46_pos, $P11, rx46_curclass, "$!pos"
    rx46_cur."!cursor_pass"(rx46_pos, "term:sym<circumfix>", 'backtrack'=>1)
    .return (rx46_cur)
  rx46_restart90:
    repr_get_attr_obj rx46_cstack, rx46_cur, rx46_curclass, "$!cstack"
  rx46_fail91:
    unless rx46_bstack, rx46_done89
    pop $I19, rx46_bstack
    if_null rx46_cstack, rx46_cstack_done94
    unless rx46_cstack, rx46_cstack_done94
    dec $I19
    set $P11, rx46_cstack[$I19]
  rx46_cstack_done94:
    pop rx46_rep, rx46_bstack
    pop rx46_pos, rx46_bstack
    pop $I19, rx46_bstack
    lt rx46_pos, -1, rx46_done89
    lt rx46_pos, 0, rx46_fail91
    eq $I19, 0, rx46_fail91
    nqp_islist $I20, rx46_cstack
    unless $I20, rx46_jump92
    elements $I18, rx46_bstack
    le $I18, 0, rx46_cut93
    dec $I18
    set $I18, rx46_bstack[$I18]
  rx46_cut93:
    assign rx46_cstack, $I18
  rx46_jump92:
    jump $I19
  rx46_done89:
    rx46_cur."!cursor_fail"()
    .return (rx46_cur) 
.end
.HLL "nqp"
.namespace []
.sub "infixish" :subid("cuid_32_1383914954.64741") :anon :lex :outer("cuid_236_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 177
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx49_start
    .local string rx49_tgt
    .local int rx49_pos
    .local int rx49_off
    .local int rx49_eos
    .local int rx49_rep
    .local pmc rx49_cur
    .local pmc rx49_curclass
    .local pmc rx49_bstack
    .local pmc rx49_cstack
    rx49_start = self."!cursor_start_all"()
    set rx49_cur, rx49_start[0]
    set rx49_tgt, rx49_start[1]
    set rx49_pos, rx49_start[2]
    set rx49_curclass, rx49_start[3]
    set rx49_bstack, rx49_start[4]
    set $I19, rx49_start[5]
    store_lex unicode:"$\x{a2}", rx49_cur
    length rx49_eos, rx49_tgt
    eq $I19, 1, rx49_restart101
    gt rx49_pos, rx49_eos, rx49_fail102
    repr_get_attr_int $I11, self, rx49_curclass, "$!from"
    ne $I11, -1, rxscan50_done108
    goto rxscan50_scan107
  rxscan50_loop106:
    inc rx49_pos
    gt rx49_pos, rx49_eos, rx49_fail102
    repr_bind_attr_int rx49_cur, rx49_curclass, "$!from", rx49_pos
  rxscan50_scan107:
    nqp_rxmark rx49_bstack, rxscan50_loop106, rx49_pos, 0
  rxscan50_done108:
    repr_bind_attr_int rx49_cur, rx49_curclass, "$!pos", rx49_pos
    $P11 = rx49_cur."infix"()
    repr_get_attr_int $I11, $P11, rx49_curclass, "$!pos"
    lt $I11, 0, rx49_fail102
    nqp_rxmark rx49_bstack, rxsubrule51_pass109, -1, 0
  rxsubrule51_pass109:
    rx49_cstack = rx49_cur."!cursor_capture"($P11, "OPER=infix")
    repr_get_attr_int rx49_pos, $P11, rx49_curclass, "$!pos"
    rx49_cur."!cursor_pass"(rx49_pos, "infixish", 'backtrack'=>1)
    .return (rx49_cur)
  rx49_restart101:
    repr_get_attr_obj rx49_cstack, rx49_cur, rx49_curclass, "$!cstack"
  rx49_fail102:
    unless rx49_bstack, rx49_done100
    pop $I19, rx49_bstack
    if_null rx49_cstack, rx49_cstack_done105
    unless rx49_cstack, rx49_cstack_done105
    dec $I19
    set $P11, rx49_cstack[$I19]
  rx49_cstack_done105:
    pop rx49_rep, rx49_bstack
    pop rx49_pos, rx49_bstack
    pop $I19, rx49_bstack
    lt rx49_pos, -1, rx49_done100
    lt rx49_pos, 0, rx49_fail102
    eq $I19, 0, rx49_fail102
    nqp_islist $I20, rx49_cstack
    unless $I20, rx49_jump103
    elements $I18, rx49_bstack
    le $I18, 0, rx49_cut104
    dec $I18
    set $I18, rx49_bstack[$I18]
  rx49_cut104:
    assign rx49_cstack, $I18
  rx49_jump103:
    jump $I19
  rx49_done100:
    rx49_cur."!cursor_fail"()
    .return (rx49_cur) 
.end
.HLL "nqp"
.namespace []
.sub "prefixish" :subid("cuid_33_1383914954.64741") :anon :lex :outer("cuid_236_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 178
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx52_start
    .local string rx52_tgt
    .local int rx52_pos
    .local int rx52_off
    .local int rx52_eos
    .local int rx52_rep
    .local pmc rx52_cur
    .local pmc rx52_curclass
    .local pmc rx52_bstack
    .local pmc rx52_cstack
    rx52_start = self."!cursor_start_all"()
    set rx52_cur, rx52_start[0]
    set rx52_tgt, rx52_start[1]
    set rx52_pos, rx52_start[2]
    set rx52_curclass, rx52_start[3]
    set rx52_bstack, rx52_start[4]
    set $I19, rx52_start[5]
    store_lex unicode:"$\x{a2}", rx52_cur
    length rx52_eos, rx52_tgt
    eq $I19, 1, rx52_restart112
    gt rx52_pos, rx52_eos, rx52_fail113
    repr_get_attr_int $I11, self, rx52_curclass, "$!from"
    ne $I11, -1, rxscan53_done119
    goto rxscan53_scan118
  rxscan53_loop117:
    inc rx52_pos
    gt rx52_pos, rx52_eos, rx52_fail113
    repr_bind_attr_int rx52_cur, rx52_curclass, "$!from", rx52_pos
  rxscan53_scan118:
    nqp_rxmark rx52_bstack, rxscan53_loop117, rx52_pos, 0
  rxscan53_done119:
    repr_bind_attr_int rx52_cur, rx52_curclass, "$!pos", rx52_pos
    $P11 = rx52_cur."prefix"()
    repr_get_attr_int $I11, $P11, rx52_curclass, "$!pos"
    lt $I11, 0, rx52_fail113
    nqp_rxmark rx52_bstack, rxsubrule54_pass120, -1, 0
  rxsubrule54_pass120:
    rx52_cstack = rx52_cur."!cursor_capture"($P11, "OPER=prefix")
    repr_get_attr_int rx52_pos, $P11, rx52_curclass, "$!pos"
    repr_bind_attr_int rx52_cur, rx52_curclass, "$!pos", rx52_pos
    $P11 = rx52_cur."ws"()
    repr_get_attr_int $I11, $P11, rx52_curclass, "$!pos"
    lt $I11, 0, rx52_fail113
    repr_get_attr_int rx52_pos, $P11, rx52_curclass, "$!pos"
    rx52_cur."!cursor_pass"(rx52_pos, "prefixish", 'backtrack'=>1)
    .return (rx52_cur)
  rx52_restart112:
    repr_get_attr_obj rx52_cstack, rx52_cur, rx52_curclass, "$!cstack"
  rx52_fail113:
    unless rx52_bstack, rx52_done111
    pop $I19, rx52_bstack
    if_null rx52_cstack, rx52_cstack_done116
    unless rx52_cstack, rx52_cstack_done116
    dec $I19
    set $P11, rx52_cstack[$I19]
  rx52_cstack_done116:
    pop rx52_rep, rx52_bstack
    pop rx52_pos, rx52_bstack
    pop $I19, rx52_bstack
    lt rx52_pos, -1, rx52_done111
    lt rx52_pos, 0, rx52_fail113
    eq $I19, 0, rx52_fail113
    nqp_islist $I20, rx52_cstack
    unless $I20, rx52_jump114
    elements $I18, rx52_bstack
    le $I18, 0, rx52_cut115
    dec $I18
    set $I18, rx52_bstack[$I18]
  rx52_cut115:
    assign rx52_cstack, $I18
  rx52_jump114:
    jump $I19
  rx52_done111:
    rx52_cur."!cursor_fail"()
    .return (rx52_cur) 
.end
.HLL "nqp"
.namespace []
.sub "postfixish" :subid("cuid_34_1383914954.64741") :anon :lex :outer("cuid_236_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 179
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx56_start
    .local string rx56_tgt
    .local int rx56_pos
    .local int rx56_off
    .local int rx56_eos
    .local int rx56_rep
    .local pmc rx56_cur
    .local pmc rx56_curclass
    .local pmc rx56_bstack
    .local pmc rx56_cstack
    rx56_start = self."!cursor_start_all"()
    set rx56_cur, rx56_start[0]
    set rx56_tgt, rx56_start[1]
    set rx56_pos, rx56_start[2]
    set rx56_curclass, rx56_start[3]
    set rx56_bstack, rx56_start[4]
    set $I19, rx56_start[5]
    store_lex unicode:"$\x{a2}", rx56_cur
    length rx56_eos, rx56_tgt
    eq $I19, 1, rx56_restart124
    gt rx56_pos, rx56_eos, rx56_fail125
    repr_get_attr_int $I11, self, rx56_curclass, "$!from"
    ne $I11, -1, rxscan57_done131
    goto rxscan57_scan130
  rxscan57_loop129:
    inc rx56_pos
    gt rx56_pos, rx56_eos, rx56_fail125
    repr_bind_attr_int rx56_cur, rx56_curclass, "$!from", rx56_pos
  rxscan57_scan130:
    nqp_rxmark rx56_bstack, rxscan57_loop129, rx56_pos, 0
  rxscan57_done131:
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt58_0133
    nqp_push_label $P11, alt58_1135
    nqp_rxmark rx56_bstack, alt58_end132, -1, 0
    rx56_cur."!alt"(rx56_pos, "alt_nfa__1_1383914955.75464", $P11)
    goto rx56_fail125
  alt58_0133:
    repr_bind_attr_int rx56_cur, rx56_curclass, "$!pos", rx56_pos
    $P11 = rx56_cur."postfix"()
    repr_get_attr_int $I11, $P11, rx56_curclass, "$!pos"
    lt $I11, 0, rx56_fail125
    nqp_rxmark rx56_bstack, rxsubrule59_pass134, -1, 0
  rxsubrule59_pass134:
    rx56_cstack = rx56_cur."!cursor_capture"($P11, "OPER=postfix")
    repr_get_attr_int rx56_pos, $P11, rx56_curclass, "$!pos"
    goto alt58_end132
  alt58_1135:
    repr_bind_attr_int rx56_cur, rx56_curclass, "$!pos", rx56_pos
    $P11 = rx56_cur."postcircumfix"()
    repr_get_attr_int $I11, $P11, rx56_curclass, "$!pos"
    lt $I11, 0, rx56_fail125
    nqp_rxmark rx56_bstack, rxsubrule60_pass136, -1, 0
  rxsubrule60_pass136:
    rx56_cstack = rx56_cur."!cursor_capture"($P11, "OPER=postcircumfix")
    repr_get_attr_int rx56_pos, $P11, rx56_curclass, "$!pos"
    goto alt58_end132
  alt58_end132:
    rx56_cur."!cursor_pass"(rx56_pos, "postfixish", 'backtrack'=>1)
    .return (rx56_cur)
  rx56_restart124:
    repr_get_attr_obj rx56_cstack, rx56_cur, rx56_curclass, "$!cstack"
  rx56_fail125:
    unless rx56_bstack, rx56_done123
    pop $I19, rx56_bstack
    if_null rx56_cstack, rx56_cstack_done128
    unless rx56_cstack, rx56_cstack_done128
    dec $I19
    set $P11, rx56_cstack[$I19]
  rx56_cstack_done128:
    pop rx56_rep, rx56_bstack
    pop rx56_pos, rx56_bstack
    pop $I19, rx56_bstack
    lt rx56_pos, -1, rx56_done123
    lt rx56_pos, 0, rx56_fail125
    eq $I19, 0, rx56_fail125
    nqp_islist $I20, rx56_cstack
    unless $I20, rx56_jump126
    elements $I18, rx56_bstack
    le $I18, 0, rx56_cut127
    dec $I18
    set $I18, rx56_bstack[$I18]
  rx56_cut127:
    assign rx56_cstack, $I18
  rx56_jump126:
    jump $I19
  rx56_done123:
    rx56_cur."!cursor_fail"()
    .return (rx56_cur) 
.end
.HLL "nqp"
.namespace []
.sub "nullterm" :subid("cuid_35_1383914954.64741") :anon :lex :outer("cuid_236_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 184
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx61_start
    .local string rx61_tgt
    .local int rx61_pos
    .local int rx61_off
    .local int rx61_eos
    .local int rx61_rep
    .local pmc rx61_cur
    .local pmc rx61_curclass
    .local pmc rx61_bstack
    .local pmc rx61_cstack
    rx61_start = self."!cursor_start_all"()
    set rx61_cur, rx61_start[0]
    set rx61_tgt, rx61_start[1]
    set rx61_pos, rx61_start[2]
    set rx61_curclass, rx61_start[3]
    set rx61_bstack, rx61_start[4]
    set $I19, rx61_start[5]
    store_lex unicode:"$\x{a2}", rx61_cur
    length rx61_eos, rx61_tgt
    eq $I19, 1, rx61_restart139
    gt rx61_pos, rx61_eos, rx61_fail140
    repr_get_attr_int $I11, self, rx61_curclass, "$!from"
    ne $I11, -1, rxscan62_done146
    goto rxscan62_scan145
  rxscan62_loop144:
    inc rx61_pos
    gt rx61_pos, rx61_eos, rx61_fail140
    repr_bind_attr_int rx61_cur, rx61_curclass, "$!from", rx61_pos
  rxscan62_scan145:
    nqp_rxmark rx61_bstack, rxscan62_loop144, rx61_pos, 0
  rxscan62_done146:
    rx61_cur."!cursor_pass"(rx61_pos, "nullterm", 'backtrack'=>1)
    .return (rx61_cur)
  rx61_restart139:
    repr_get_attr_obj rx61_cstack, rx61_cur, rx61_curclass, "$!cstack"
  rx61_fail140:
    unless rx61_bstack, rx61_done138
    pop $I19, rx61_bstack
    if_null rx61_cstack, rx61_cstack_done143
    unless rx61_cstack, rx61_cstack_done143
    dec $I19
    set $P11, rx61_cstack[$I19]
  rx61_cstack_done143:
    pop rx61_rep, rx61_bstack
    pop rx61_pos, rx61_bstack
    pop $I19, rx61_bstack
    lt rx61_pos, -1, rx61_done138
    lt rx61_pos, 0, rx61_fail140
    eq $I19, 0, rx61_fail140
    nqp_islist $I20, rx61_cstack
    unless $I20, rx61_jump141
    elements $I18, rx61_bstack
    le $I18, 0, rx61_cut142
    dec $I18
    set $I18, rx61_bstack[$I18]
  rx61_cut142:
    assign rx61_cstack, $I18
  rx61_jump141:
    jump $I19
  rx61_done138:
    rx61_cur."!cursor_fail"()
    .return (rx61_cur) 
.end
.HLL "nqp"
.namespace []
.sub "nullterm_alt" :subid("cuid_36_1383914954.64741") :anon :lex :outer("cuid_236_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 185
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx64_start
    .local string rx64_tgt
    .local int rx64_pos
    .local int rx64_off
    .local int rx64_eos
    .local int rx64_rep
    .local pmc rx64_cur
    .local pmc rx64_curclass
    .local pmc rx64_bstack
    .local pmc rx64_cstack
    rx64_start = self."!cursor_start_all"()
    set rx64_cur, rx64_start[0]
    set rx64_tgt, rx64_start[1]
    set rx64_pos, rx64_start[2]
    set rx64_curclass, rx64_start[3]
    set rx64_bstack, rx64_start[4]
    set $I19, rx64_start[5]
    store_lex unicode:"$\x{a2}", rx64_cur
    length rx64_eos, rx64_tgt
    eq $I19, 1, rx64_restart150
    gt rx64_pos, rx64_eos, rx64_fail151
    repr_get_attr_int $I11, self, rx64_curclass, "$!from"
    ne $I11, -1, rxscan65_done157
    goto rxscan65_scan156
  rxscan65_loop155:
    inc rx64_pos
    gt rx64_pos, rx64_eos, rx64_fail151
    repr_bind_attr_int rx64_cur, rx64_curclass, "$!from", rx64_pos
  rxscan65_scan156:
    nqp_rxmark rx64_bstack, rxscan65_loop155, rx64_pos, 0
  rxscan65_done157:
    repr_bind_attr_int rx64_cur, rx64_curclass, "$!pos", rx64_pos
    $P11 = rx64_cur."nullterm"()
    repr_get_attr_int $I11, $P11, rx64_curclass, "$!pos"
    lt $I11, 0, rx64_fail151
    nqp_rxmark rx64_bstack, rxsubrule66_pass158, -1, 0
  rxsubrule66_pass158:
    rx64_cstack = rx64_cur."!cursor_capture"($P11, "term")
    repr_get_attr_int rx64_pos, $P11, rx64_curclass, "$!pos"
    rx64_cur."!cursor_pass"(rx64_pos, "nullterm_alt", 'backtrack'=>1)
    .return (rx64_cur)
  rx64_restart150:
    repr_get_attr_obj rx64_cstack, rx64_cur, rx64_curclass, "$!cstack"
  rx64_fail151:
    unless rx64_bstack, rx64_done149
    pop $I19, rx64_bstack
    if_null rx64_cstack, rx64_cstack_done154
    unless rx64_cstack, rx64_cstack_done154
    dec $I19
    set $P11, rx64_cstack[$I19]
  rx64_cstack_done154:
    pop rx64_rep, rx64_bstack
    pop rx64_pos, rx64_bstack
    pop $I19, rx64_bstack
    lt rx64_pos, -1, rx64_done149
    lt rx64_pos, 0, rx64_fail151
    eq $I19, 0, rx64_fail151
    nqp_islist $I20, rx64_cstack
    unless $I20, rx64_jump152
    elements $I18, rx64_bstack
    le $I18, 0, rx64_cut153
    dec $I18
    set $I18, rx64_bstack[$I18]
  rx64_cut153:
    assign rx64_cstack, $I18
  rx64_jump152:
    jump $I19
  rx64_done149:
    rx64_cur."!cursor_fail"()
    .return (rx64_cur) 
.end
.HLL "nqp"
.namespace []
.sub "nulltermish" :subid("cuid_37_1383914954.64741") :anon :lex :outer("cuid_236_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 188
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    $P5002 = $P5001."termish"()
    set $P5005, $P5002
    if $P5002 goto unless67_end160 
    nqp_decontainerize $P5003, _lex_param_0
    $P5004 = $P5003."nullterm_alt"()
    set $P5005, $P5004
  unless67_end160:
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "quote_delimited" :subid("cuid_38_1383914954.64741") :anon :lex :outer("cuid_236_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 190
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx68_start
    .local string rx68_tgt
    .local int rx68_pos
    .local int rx68_off
    .local int rx68_eos
    .local int rx68_rep
    .local pmc rx68_cur
    .local pmc rx68_curclass
    .local pmc rx68_bstack
    .local pmc rx68_cstack
    rx68_start = self."!cursor_start_all"()
    set rx68_cur, rx68_start[0]
    set rx68_tgt, rx68_start[1]
    set rx68_pos, rx68_start[2]
    set rx68_curclass, rx68_start[3]
    set rx68_bstack, rx68_start[4]
    set $I19, rx68_start[5]
    store_lex unicode:"$\x{a2}", rx68_cur
    length rx68_eos, rx68_tgt
    eq $I19, 1, rx68_restart163
    gt rx68_pos, rx68_eos, rx68_fail164
    repr_get_attr_int $I11, self, rx68_curclass, "$!from"
    ne $I11, -1, rxscan69_done170
    goto rxscan69_scan169
  rxscan69_loop168:
    inc rx68_pos
    gt rx68_pos, rx68_eos, rx68_fail164
    repr_bind_attr_int rx68_cur, rx68_curclass, "$!from", rx68_pos
  rxscan69_scan169:
    nqp_rxmark rx68_bstack, rxscan69_loop168, rx68_pos, 0
  rxscan69_done170:
    repr_bind_attr_int rx68_cur, rx68_curclass, "$!pos", rx68_pos
    $P11 = rx68_cur."starter"()
    repr_get_attr_int $I11, $P11, rx68_curclass, "$!pos"
    lt $I11, 0, rx68_fail164
    nqp_rxmark rx68_bstack, rxsubrule70_pass171, -1, 0
  rxsubrule70_pass171:
    rx68_cstack = rx68_cur."!cursor_capture"($P11, "starter")
    repr_get_attr_int rx68_pos, $P11, rx68_curclass, "$!pos"
    nqp_rxmark rx68_bstack, rxquantr71_done173, rx68_pos, 0
  rxquantr71_loop172:
    repr_bind_attr_int rx68_cur, rx68_curclass, "$!pos", rx68_pos
    $P11 = rx68_cur."quote_atom"()
    repr_get_attr_int $I11, $P11, rx68_curclass, "$!pos"
    lt $I11, 0, rx68_fail164
    goto rxsubrule72_pass174
  rxsubrule72_back175:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx68_curclass, "$!pos"
    lt $I11, 0, rx68_fail164
  rxsubrule72_pass174:
    rx68_cstack = rx68_cur."!cursor_capture"($P11, "quote_atom")
    set_addr $I11, rxsubrule72_back175
    push rx68_bstack, $I11
    push rx68_bstack, 0
    push rx68_bstack, rx68_pos
    elements $I11, rx68_cstack
    push rx68_bstack, $I11
    repr_get_attr_int rx68_pos, $P11, rx68_curclass, "$!pos"
    nqp_rxpeek $I19, rx68_bstack, rxquantr71_done173
    inc $I19
    inc $I19
    set rx68_rep, rx68_bstack[$I19]
    nqp_rxcommit rx68_bstack, rxquantr71_done173
    inc rx68_rep
    nqp_rxmark rx68_bstack, rxquantr71_done173, rx68_pos, rx68_rep
    goto rxquantr71_loop172
  rxquantr71_done173:
    repr_bind_attr_int rx68_cur, rx68_curclass, "$!pos", rx68_pos
    $P11 = rx68_cur."stopper"()
    repr_get_attr_int $I11, $P11, rx68_curclass, "$!pos"
    lt $I11, 0, rx68_fail164
    nqp_rxmark rx68_bstack, rxsubrule73_pass176, -1, 0
  rxsubrule73_pass176:
    rx68_cstack = rx68_cur."!cursor_capture"($P11, "stopper")
    repr_get_attr_int rx68_pos, $P11, rx68_curclass, "$!pos"
    rx68_cur."!cursor_pass"(rx68_pos, "quote_delimited", 'backtrack'=>1)
    .return (rx68_cur)
  rx68_restart163:
    repr_get_attr_obj rx68_cstack, rx68_cur, rx68_curclass, "$!cstack"
  rx68_fail164:
    unless rx68_bstack, rx68_done162
    pop $I19, rx68_bstack
    if_null rx68_cstack, rx68_cstack_done167
    unless rx68_cstack, rx68_cstack_done167
    dec $I19
    set $P11, rx68_cstack[$I19]
  rx68_cstack_done167:
    pop rx68_rep, rx68_bstack
    pop rx68_pos, rx68_bstack
    pop $I19, rx68_bstack
    lt rx68_pos, -1, rx68_done162
    lt rx68_pos, 0, rx68_fail164
    eq $I19, 0, rx68_fail164
    nqp_islist $I20, rx68_cstack
    unless $I20, rx68_jump165
    elements $I18, rx68_bstack
    le $I18, 0, rx68_cut166
    dec $I18
    set $I18, rx68_bstack[$I18]
  rx68_cut166:
    assign rx68_cstack, $I18
  rx68_jump165:
    jump $I19
  rx68_done162:
    rx68_cur."!cursor_fail"()
    .return (rx68_cur) 
.end
.HLL "nqp"
.namespace []
.sub "quote_atom" :subid("cuid_39_1383914954.64741") :anon :lex :outer("cuid_236_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 194
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx74_start
    .local string rx74_tgt
    .local int rx74_pos
    .local int rx74_off
    .local int rx74_eos
    .local int rx74_rep
    .local pmc rx74_cur
    .local pmc rx74_curclass
    .local pmc rx74_bstack
    .local pmc rx74_cstack
    rx74_start = self."!cursor_start_all"()
    set rx74_cur, rx74_start[0]
    set rx74_tgt, rx74_start[1]
    set rx74_pos, rx74_start[2]
    set rx74_curclass, rx74_start[3]
    set rx74_bstack, rx74_start[4]
    set $I19, rx74_start[5]
    store_lex unicode:"$\x{a2}", rx74_cur
    length rx74_eos, rx74_tgt
    eq $I19, 1, rx74_restart179
    gt rx74_pos, rx74_eos, rx74_fail180
    repr_get_attr_int $I11, self, rx74_curclass, "$!from"
    ne $I11, -1, rxscan75_done186
    goto rxscan75_scan185
  rxscan75_loop184:
    inc rx74_pos
    gt rx74_pos, rx74_eos, rx74_fail180
    repr_bind_attr_int rx74_cur, rx74_curclass, "$!from", rx74_pos
  rxscan75_scan185:
    nqp_rxmark rx74_bstack, rxscan75_loop184, rx74_pos, 0
  rxscan75_done186:
    repr_bind_attr_int rx74_cur, rx74_curclass, "$!pos", rx74_pos
    $P11 = rx74_cur."stopper"()
    repr_get_attr_int $I11, $P11, rx74_curclass, "$!pos"
    ge $I11, 0, rx74_fail180
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt76_0188
    nqp_push_label $P11, alt76_1190
    nqp_push_label $P11, alt76_2197
    nqp_rxmark rx74_bstack, alt76_end187, -1, 0
    rx74_cur."!alt"(rx74_pos, "alt_nfa__2_1383914955.81866", $P11)
    goto rx74_fail180
  alt76_0188:
    repr_bind_attr_int rx74_cur, rx74_curclass, "$!pos", rx74_pos
    $P11 = rx74_cur."quote_escape"()
    repr_get_attr_int $I11, $P11, rx74_curclass, "$!pos"
    lt $I11, 0, rx74_fail180
    nqp_rxmark rx74_bstack, rxsubrule77_pass189, -1, 0
  rxsubrule77_pass189:
    rx74_cstack = rx74_cur."!cursor_capture"($P11, "quote_escape")
    repr_get_attr_int rx74_pos, $P11, rx74_curclass, "$!pos"
    goto alt76_end187
  alt76_1190:
    nqp_rxmark rx74_bstack, rxquantr78_done192, -1, 0
  rxquantr78_loop191:
    nqp_rxmark rx74_bstack, rxconj79_fail193, rx74_pos, 0
    goto rxconj79_first194
  rxconj79_fail193:
    goto rx74_fail180
  rxconj79_first194:
    repr_bind_attr_int rx74_cur, rx74_curclass, "$!pos", rx74_pos
    $P11 = rx74_cur."starter"()
    repr_get_attr_int $I11, $P11, rx74_curclass, "$!pos"
    ge $I11, 0, rx74_fail180
    nqp_rxpeek $I19, rx74_bstack, rxconj79_fail193
    inc $I19
    set $I11, rx74_bstack[$I19]
    nqp_rxmark rx74_bstack, rxconj79_fail193, $I11, rx74_pos
    set rx74_pos, $I11
    nqp_rxmark rx74_bstack, rxconj80_fail195, rx74_pos, 0
    goto rxconj80_first196
  rxconj80_fail195:
    goto rx74_fail180
  rxconj80_first196:
    repr_bind_attr_int rx74_cur, rx74_curclass, "$!pos", rx74_pos
    $P11 = rx74_cur."stopper"()
    repr_get_attr_int $I11, $P11, rx74_curclass, "$!pos"
    ge $I11, 0, rx74_fail180
    nqp_rxpeek $I19, rx74_bstack, rxconj80_fail195
    inc $I19
    set $I11, rx74_bstack[$I19]
    nqp_rxmark rx74_bstack, rxconj80_fail195, $I11, rx74_pos
    set rx74_pos, $I11
    repr_bind_attr_int rx74_cur, rx74_curclass, "$!pos", rx74_pos
    $P11 = rx74_cur."quote_escape"()
    repr_get_attr_int $I11, $P11, rx74_curclass, "$!pos"
    ge $I11, 0, rx74_fail180
    ge rx74_pos, rx74_eos, rx74_fail180
    add rx74_pos, 1
    nqp_rxpeek $I19, rx74_bstack, rxquantr78_done192
    inc $I19
    inc $I19
    set rx74_rep, rx74_bstack[$I19]
    nqp_rxcommit rx74_bstack, rxquantr78_done192
    inc rx74_rep
    nqp_rxmark rx74_bstack, rxquantr78_done192, rx74_pos, rx74_rep
    goto rxquantr78_loop191
  rxquantr78_done192:
    goto alt76_end187
  alt76_2197:
    repr_bind_attr_int rx74_cur, rx74_curclass, "$!pos", rx74_pos
    $P11 = rx74_cur."starter"()
    repr_get_attr_int $I11, $P11, rx74_curclass, "$!pos"
    lt $I11, 0, rx74_fail180
    nqp_rxmark rx74_bstack, rxsubrule81_pass198, -1, 0
  rxsubrule81_pass198:
    rx74_cstack = rx74_cur."!cursor_capture"($P11, "starter")
    repr_get_attr_int rx74_pos, $P11, rx74_curclass, "$!pos"
    nqp_rxmark rx74_bstack, rxquantr82_done200, rx74_pos, 0
  rxquantr82_loop199:
    repr_bind_attr_int rx74_cur, rx74_curclass, "$!pos", rx74_pos
    $P11 = rx74_cur."quote_atom"()
    repr_get_attr_int $I11, $P11, rx74_curclass, "$!pos"
    lt $I11, 0, rx74_fail180
    goto rxsubrule83_pass201
  rxsubrule83_back202:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx74_curclass, "$!pos"
    lt $I11, 0, rx74_fail180
  rxsubrule83_pass201:
    rx74_cstack = rx74_cur."!cursor_capture"($P11, "quote_atom")
    set_addr $I11, rxsubrule83_back202
    push rx74_bstack, $I11
    push rx74_bstack, 0
    push rx74_bstack, rx74_pos
    elements $I11, rx74_cstack
    push rx74_bstack, $I11
    repr_get_attr_int rx74_pos, $P11, rx74_curclass, "$!pos"
    nqp_rxpeek $I19, rx74_bstack, rxquantr82_done200
    inc $I19
    inc $I19
    set rx74_rep, rx74_bstack[$I19]
    nqp_rxcommit rx74_bstack, rxquantr82_done200
    inc rx74_rep
    nqp_rxmark rx74_bstack, rxquantr82_done200, rx74_pos, rx74_rep
    goto rxquantr82_loop199
  rxquantr82_done200:
    repr_bind_attr_int rx74_cur, rx74_curclass, "$!pos", rx74_pos
    $P11 = rx74_cur."stopper"()
    repr_get_attr_int $I11, $P11, rx74_curclass, "$!pos"
    lt $I11, 0, rx74_fail180
    nqp_rxmark rx74_bstack, rxsubrule84_pass203, -1, 0
  rxsubrule84_pass203:
    rx74_cstack = rx74_cur."!cursor_capture"($P11, "stopper")
    repr_get_attr_int rx74_pos, $P11, rx74_curclass, "$!pos"
    goto alt76_end187
  alt76_end187:
    nqp_rxcommit rx74_bstack, alt76_end187
    rx74_cur."!cursor_pass"(rx74_pos, "quote_atom", 'backtrack'=>1)
    .return (rx74_cur)
  rx74_restart179:
    repr_get_attr_obj rx74_cstack, rx74_cur, rx74_curclass, "$!cstack"
  rx74_fail180:
    unless rx74_bstack, rx74_done178
    pop $I19, rx74_bstack
    if_null rx74_cstack, rx74_cstack_done183
    unless rx74_cstack, rx74_cstack_done183
    dec $I19
    set $P11, rx74_cstack[$I19]
  rx74_cstack_done183:
    pop rx74_rep, rx74_bstack
    pop rx74_pos, rx74_bstack
    pop $I19, rx74_bstack
    lt rx74_pos, -1, rx74_done178
    lt rx74_pos, 0, rx74_fail180
    eq $I19, 0, rx74_fail180
    nqp_islist $I20, rx74_cstack
    unless $I20, rx74_jump181
    elements $I18, rx74_bstack
    le $I18, 0, rx74_cut182
    dec $I18
    set $I18, rx74_bstack[$I18]
  rx74_cut182:
    assign rx74_cstack, $I18
  rx74_jump181:
    jump $I19
  rx74_done178:
    rx74_cur."!cursor_fail"()
    .return (rx74_cur) 
.end
.HLL "nqp"
.namespace []
.sub "decint" :subid("cuid_40_1383914954.64741") :anon :lex :outer("cuid_236_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 203
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx85_start
    .local string rx85_tgt
    .local int rx85_pos
    .local int rx85_off
    .local int rx85_eos
    .local int rx85_rep
    .local pmc rx85_cur
    .local pmc rx85_curclass
    .local pmc rx85_bstack
    .local pmc rx85_cstack
    rx85_start = self."!cursor_start_all"()
    set rx85_cur, rx85_start[0]
    set rx85_tgt, rx85_start[1]
    set rx85_pos, rx85_start[2]
    set rx85_curclass, rx85_start[3]
    set rx85_bstack, rx85_start[4]
    set $I19, rx85_start[5]
    store_lex unicode:"$\x{a2}", rx85_cur
    length rx85_eos, rx85_tgt
    eq $I19, 1, rx85_restart206
    gt rx85_pos, rx85_eos, rx85_fail207
    repr_get_attr_int $I11, self, rx85_curclass, "$!from"
    ne $I11, -1, rxscan86_done213
    goto rxscan86_scan212
  rxscan86_loop211:
    inc rx85_pos
    gt rx85_pos, rx85_eos, rx85_fail207
    repr_bind_attr_int rx85_cur, rx85_curclass, "$!from", rx85_pos
  rxscan86_scan212:
    nqp_rxmark rx85_bstack, rxscan86_loop211, rx85_pos, 0
  rxscan86_done213:
    nqp_rxmark rx85_bstack, rxquantr87_done215, -1, 0
  rxquantr87_loop214:
    nqp_rxmark rx85_bstack, rxquantr88_done217, -1, 0
  rxquantr88_loop216:
    ge rx85_pos, rx85_eos, rx85_fail207
    is_cclass $I11, .CCLASS_NUMERIC, rx85_tgt, rx85_pos
    unless $I11, rx85_fail207
    add rx85_pos, 1
    nqp_rxpeek $I19, rx85_bstack, rxquantr88_done217
    inc $I19
    inc $I19
    set rx85_rep, rx85_bstack[$I19]
    nqp_rxcommit rx85_bstack, rxquantr88_done217
    inc rx85_rep
    nqp_rxmark rx85_bstack, rxquantr88_done217, rx85_pos, rx85_rep
    goto rxquantr88_loop216
  rxquantr88_done217:
    nqp_rxpeek $I19, rx85_bstack, rxquantr87_done215
    inc $I19
    inc $I19
    set rx85_rep, rx85_bstack[$I19]
    nqp_rxcommit rx85_bstack, rxquantr87_done215
    inc rx85_rep
    nqp_rxmark rx85_bstack, rxquantr87_done215, rx85_pos, rx85_rep
    add $I11, rx85_pos, 1
    gt $I11, rx85_eos, rx85_fail207
    substr $S10, rx85_tgt, rx85_pos, 1
    ne $S10, ucs4:"_", rx85_fail207
    add rx85_pos, 1
    goto rxquantr87_loop214
  rxquantr87_done215:
    rx85_cur."!cursor_pass"(rx85_pos, "decint", 'backtrack'=>1)
    .return (rx85_cur)
  rx85_restart206:
    repr_get_attr_obj rx85_cstack, rx85_cur, rx85_curclass, "$!cstack"
  rx85_fail207:
    unless rx85_bstack, rx85_done205
    pop $I19, rx85_bstack
    if_null rx85_cstack, rx85_cstack_done210
    unless rx85_cstack, rx85_cstack_done210
    dec $I19
    set $P11, rx85_cstack[$I19]
  rx85_cstack_done210:
    pop rx85_rep, rx85_bstack
    pop rx85_pos, rx85_bstack
    pop $I19, rx85_bstack
    lt rx85_pos, -1, rx85_done205
    lt rx85_pos, 0, rx85_fail207
    eq $I19, 0, rx85_fail207
    nqp_islist $I20, rx85_cstack
    unless $I20, rx85_jump208
    elements $I18, rx85_bstack
    le $I18, 0, rx85_cut209
    dec $I18
    set $I18, rx85_bstack[$I18]
  rx85_cut209:
    assign rx85_cstack, $I18
  rx85_jump208:
    jump $I19
  rx85_done205:
    rx85_cur."!cursor_fail"()
    .return (rx85_cur) 
.end
.HLL "nqp"
.namespace []
.sub "decints" :subid("cuid_41_1383914954.64741") :anon :lex :outer("cuid_236_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 204
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx89_start
    .local string rx89_tgt
    .local int rx89_pos
    .local int rx89_off
    .local int rx89_eos
    .local int rx89_rep
    .local pmc rx89_cur
    .local pmc rx89_curclass
    .local pmc rx89_bstack
    .local pmc rx89_cstack
    rx89_start = self."!cursor_start_all"()
    set rx89_cur, rx89_start[0]
    set rx89_tgt, rx89_start[1]
    set rx89_pos, rx89_start[2]
    set rx89_curclass, rx89_start[3]
    set rx89_bstack, rx89_start[4]
    set $I19, rx89_start[5]
    store_lex unicode:"$\x{a2}", rx89_cur
    length rx89_eos, rx89_tgt
    eq $I19, 1, rx89_restart220
    gt rx89_pos, rx89_eos, rx89_fail221
    repr_get_attr_int $I11, self, rx89_curclass, "$!from"
    ne $I11, -1, rxscan90_done227
    goto rxscan90_scan226
  rxscan90_loop225:
    inc rx89_pos
    gt rx89_pos, rx89_eos, rx89_fail221
    repr_bind_attr_int rx89_cur, rx89_curclass, "$!from", rx89_pos
  rxscan90_scan226:
    nqp_rxmark rx89_bstack, rxscan90_loop225, rx89_pos, 0
  rxscan90_done227:
    nqp_rxmark rx89_bstack, rxquantr91_done229, -1, 0
  rxquantr91_loop228:
    repr_bind_attr_int rx89_cur, rx89_curclass, "$!pos", rx89_pos
    $P11 = rx89_cur."ws"()
    repr_get_attr_int $I11, $P11, rx89_curclass, "$!pos"
    lt $I11, 0, rx89_fail221
    repr_get_attr_int rx89_pos, $P11, rx89_curclass, "$!pos"
    repr_bind_attr_int rx89_cur, rx89_curclass, "$!pos", rx89_pos
    $P11 = rx89_cur."decint"()
    repr_get_attr_int $I11, $P11, rx89_curclass, "$!pos"
    lt $I11, 0, rx89_fail221
    nqp_rxmark rx89_bstack, rxsubrule93_pass231, -1, 0
  rxsubrule93_pass231:
    rx89_cstack = rx89_cur."!cursor_capture"($P11, "decint")
    repr_get_attr_int rx89_pos, $P11, rx89_curclass, "$!pos"
    repr_bind_attr_int rx89_cur, rx89_curclass, "$!pos", rx89_pos
    $P11 = rx89_cur."ws"()
    repr_get_attr_int $I11, $P11, rx89_curclass, "$!pos"
    lt $I11, 0, rx89_fail221
    repr_get_attr_int rx89_pos, $P11, rx89_curclass, "$!pos"
    nqp_rxpeek $I19, rx89_bstack, rxquantr91_done229
    inc $I19
    inc $I19
    set rx89_rep, rx89_bstack[$I19]
    nqp_rxcommit rx89_bstack, rxquantr91_done229
    inc rx89_rep
    nqp_rxmark rx89_bstack, rxquantr91_done229, rx89_pos, rx89_rep
    add $I11, rx89_pos, 1
    gt $I11, rx89_eos, rx89_fail221
    substr $S10, rx89_tgt, rx89_pos, 1
    ne $S10, ucs4:",", rx89_fail221
    add rx89_pos, 1
    goto rxquantr91_loop228
  rxquantr91_done229:
    rx89_cur."!cursor_pass"(rx89_pos, "decints", 'backtrack'=>1)
    .return (rx89_cur)
  rx89_restart220:
    repr_get_attr_obj rx89_cstack, rx89_cur, rx89_curclass, "$!cstack"
  rx89_fail221:
    unless rx89_bstack, rx89_done219
    pop $I19, rx89_bstack
    if_null rx89_cstack, rx89_cstack_done224
    unless rx89_cstack, rx89_cstack_done224
    dec $I19
    set $P11, rx89_cstack[$I19]
  rx89_cstack_done224:
    pop rx89_rep, rx89_bstack
    pop rx89_pos, rx89_bstack
    pop $I19, rx89_bstack
    lt rx89_pos, -1, rx89_done219
    lt rx89_pos, 0, rx89_fail221
    eq $I19, 0, rx89_fail221
    nqp_islist $I20, rx89_cstack
    unless $I20, rx89_jump222
    elements $I18, rx89_bstack
    le $I18, 0, rx89_cut223
    dec $I18
    set $I18, rx89_bstack[$I18]
  rx89_cut223:
    assign rx89_cstack, $I18
  rx89_jump222:
    jump $I19
  rx89_done219:
    rx89_cur."!cursor_fail"()
    .return (rx89_cur) 
.end
.HLL "nqp"
.namespace []
.sub "hexint" :subid("cuid_42_1383914954.64741") :anon :lex :outer("cuid_236_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 206
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx95_start
    .local string rx95_tgt
    .local int rx95_pos
    .local int rx95_off
    .local int rx95_eos
    .local int rx95_rep
    .local pmc rx95_cur
    .local pmc rx95_curclass
    .local pmc rx95_bstack
    .local pmc rx95_cstack
    rx95_start = self."!cursor_start_all"()
    set rx95_cur, rx95_start[0]
    set rx95_tgt, rx95_start[1]
    set rx95_pos, rx95_start[2]
    set rx95_curclass, rx95_start[3]
    set rx95_bstack, rx95_start[4]
    set $I19, rx95_start[5]
    store_lex unicode:"$\x{a2}", rx95_cur
    length rx95_eos, rx95_tgt
    eq $I19, 1, rx95_restart235
    gt rx95_pos, rx95_eos, rx95_fail236
    repr_get_attr_int $I11, self, rx95_curclass, "$!from"
    ne $I11, -1, rxscan96_done242
    goto rxscan96_scan241
  rxscan96_loop240:
    inc rx95_pos
    gt rx95_pos, rx95_eos, rx95_fail236
    repr_bind_attr_int rx95_cur, rx95_curclass, "$!from", rx95_pos
  rxscan96_scan241:
    nqp_rxmark rx95_bstack, rxscan96_loop240, rx95_pos, 0
  rxscan96_done242:
    nqp_rxmark rx95_bstack, rxquantr97_done244, -1, 0
  rxquantr97_loop243:
    nqp_rxmark rx95_bstack, rxquantr98_done246, -1, 0
  rxquantr98_loop245:
    ge rx95_pos, rx95_eos, rx95_fail236
    substr $S11, rx95_tgt, rx95_pos, 1
    index $I11, ucs4:"0123456789abcdefABCDEF", $S11
    lt $I11, 0, rx95_fail236
    inc rx95_pos
    nqp_rxpeek $I19, rx95_bstack, rxquantr98_done246
    inc $I19
    inc $I19
    set rx95_rep, rx95_bstack[$I19]
    nqp_rxcommit rx95_bstack, rxquantr98_done246
    inc rx95_rep
    nqp_rxmark rx95_bstack, rxquantr98_done246, rx95_pos, rx95_rep
    goto rxquantr98_loop245
  rxquantr98_done246:
    nqp_rxpeek $I19, rx95_bstack, rxquantr97_done244
    inc $I19
    inc $I19
    set rx95_rep, rx95_bstack[$I19]
    nqp_rxcommit rx95_bstack, rxquantr97_done244
    inc rx95_rep
    nqp_rxmark rx95_bstack, rxquantr97_done244, rx95_pos, rx95_rep
    add $I11, rx95_pos, 1
    gt $I11, rx95_eos, rx95_fail236
    substr $S10, rx95_tgt, rx95_pos, 1
    ne $S10, ucs4:"_", rx95_fail236
    add rx95_pos, 1
    goto rxquantr97_loop243
  rxquantr97_done244:
    rx95_cur."!cursor_pass"(rx95_pos, "hexint", 'backtrack'=>1)
    .return (rx95_cur)
  rx95_restart235:
    repr_get_attr_obj rx95_cstack, rx95_cur, rx95_curclass, "$!cstack"
  rx95_fail236:
    unless rx95_bstack, rx95_done234
    pop $I19, rx95_bstack
    if_null rx95_cstack, rx95_cstack_done239
    unless rx95_cstack, rx95_cstack_done239
    dec $I19
    set $P11, rx95_cstack[$I19]
  rx95_cstack_done239:
    pop rx95_rep, rx95_bstack
    pop rx95_pos, rx95_bstack
    pop $I19, rx95_bstack
    lt rx95_pos, -1, rx95_done234
    lt rx95_pos, 0, rx95_fail236
    eq $I19, 0, rx95_fail236
    nqp_islist $I20, rx95_cstack
    unless $I20, rx95_jump237
    elements $I18, rx95_bstack
    le $I18, 0, rx95_cut238
    dec $I18
    set $I18, rx95_bstack[$I18]
  rx95_cut238:
    assign rx95_cstack, $I18
  rx95_jump237:
    jump $I19
  rx95_done234:
    rx95_cur."!cursor_fail"()
    .return (rx95_cur) 
.end
.HLL "nqp"
.namespace []
.sub "hexints" :subid("cuid_43_1383914954.64741") :anon :lex :outer("cuid_236_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 207
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx99_start
    .local string rx99_tgt
    .local int rx99_pos
    .local int rx99_off
    .local int rx99_eos
    .local int rx99_rep
    .local pmc rx99_cur
    .local pmc rx99_curclass
    .local pmc rx99_bstack
    .local pmc rx99_cstack
    rx99_start = self."!cursor_start_all"()
    set rx99_cur, rx99_start[0]
    set rx99_tgt, rx99_start[1]
    set rx99_pos, rx99_start[2]
    set rx99_curclass, rx99_start[3]
    set rx99_bstack, rx99_start[4]
    set $I19, rx99_start[5]
    store_lex unicode:"$\x{a2}", rx99_cur
    length rx99_eos, rx99_tgt
    eq $I19, 1, rx99_restart249
    gt rx99_pos, rx99_eos, rx99_fail250
    repr_get_attr_int $I11, self, rx99_curclass, "$!from"
    ne $I11, -1, rxscan100_done256
    goto rxscan100_scan255
  rxscan100_loop254:
    inc rx99_pos
    gt rx99_pos, rx99_eos, rx99_fail250
    repr_bind_attr_int rx99_cur, rx99_curclass, "$!from", rx99_pos
  rxscan100_scan255:
    nqp_rxmark rx99_bstack, rxscan100_loop254, rx99_pos, 0
  rxscan100_done256:
    nqp_rxmark rx99_bstack, rxquantr101_done258, -1, 0
  rxquantr101_loop257:
    repr_bind_attr_int rx99_cur, rx99_curclass, "$!pos", rx99_pos
    $P11 = rx99_cur."ws"()
    repr_get_attr_int $I11, $P11, rx99_curclass, "$!pos"
    lt $I11, 0, rx99_fail250
    repr_get_attr_int rx99_pos, $P11, rx99_curclass, "$!pos"
    repr_bind_attr_int rx99_cur, rx99_curclass, "$!pos", rx99_pos
    $P11 = rx99_cur."hexint"()
    repr_get_attr_int $I11, $P11, rx99_curclass, "$!pos"
    lt $I11, 0, rx99_fail250
    nqp_rxmark rx99_bstack, rxsubrule103_pass260, -1, 0
  rxsubrule103_pass260:
    rx99_cstack = rx99_cur."!cursor_capture"($P11, "hexint")
    repr_get_attr_int rx99_pos, $P11, rx99_curclass, "$!pos"
    repr_bind_attr_int rx99_cur, rx99_curclass, "$!pos", rx99_pos
    $P11 = rx99_cur."ws"()
    repr_get_attr_int $I11, $P11, rx99_curclass, "$!pos"
    lt $I11, 0, rx99_fail250
    repr_get_attr_int rx99_pos, $P11, rx99_curclass, "$!pos"
    nqp_rxpeek $I19, rx99_bstack, rxquantr101_done258
    inc $I19
    inc $I19
    set rx99_rep, rx99_bstack[$I19]
    nqp_rxcommit rx99_bstack, rxquantr101_done258
    inc rx99_rep
    nqp_rxmark rx99_bstack, rxquantr101_done258, rx99_pos, rx99_rep
    add $I11, rx99_pos, 1
    gt $I11, rx99_eos, rx99_fail250
    substr $S10, rx99_tgt, rx99_pos, 1
    ne $S10, ucs4:",", rx99_fail250
    add rx99_pos, 1
    goto rxquantr101_loop257
  rxquantr101_done258:
    rx99_cur."!cursor_pass"(rx99_pos, "hexints", 'backtrack'=>1)
    .return (rx99_cur)
  rx99_restart249:
    repr_get_attr_obj rx99_cstack, rx99_cur, rx99_curclass, "$!cstack"
  rx99_fail250:
    unless rx99_bstack, rx99_done248
    pop $I19, rx99_bstack
    if_null rx99_cstack, rx99_cstack_done253
    unless rx99_cstack, rx99_cstack_done253
    dec $I19
    set $P11, rx99_cstack[$I19]
  rx99_cstack_done253:
    pop rx99_rep, rx99_bstack
    pop rx99_pos, rx99_bstack
    pop $I19, rx99_bstack
    lt rx99_pos, -1, rx99_done248
    lt rx99_pos, 0, rx99_fail250
    eq $I19, 0, rx99_fail250
    nqp_islist $I20, rx99_cstack
    unless $I20, rx99_jump251
    elements $I18, rx99_bstack
    le $I18, 0, rx99_cut252
    dec $I18
    set $I18, rx99_bstack[$I18]
  rx99_cut252:
    assign rx99_cstack, $I18
  rx99_jump251:
    jump $I19
  rx99_done248:
    rx99_cur."!cursor_fail"()
    .return (rx99_cur) 
.end
.HLL "nqp"
.namespace []
.sub "octint" :subid("cuid_44_1383914954.64741") :anon :lex :outer("cuid_236_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 209
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx105_start
    .local string rx105_tgt
    .local int rx105_pos
    .local int rx105_off
    .local int rx105_eos
    .local int rx105_rep
    .local pmc rx105_cur
    .local pmc rx105_curclass
    .local pmc rx105_bstack
    .local pmc rx105_cstack
    rx105_start = self."!cursor_start_all"()
    set rx105_cur, rx105_start[0]
    set rx105_tgt, rx105_start[1]
    set rx105_pos, rx105_start[2]
    set rx105_curclass, rx105_start[3]
    set rx105_bstack, rx105_start[4]
    set $I19, rx105_start[5]
    store_lex unicode:"$\x{a2}", rx105_cur
    length rx105_eos, rx105_tgt
    eq $I19, 1, rx105_restart264
    gt rx105_pos, rx105_eos, rx105_fail265
    repr_get_attr_int $I11, self, rx105_curclass, "$!from"
    ne $I11, -1, rxscan106_done271
    goto rxscan106_scan270
  rxscan106_loop269:
    inc rx105_pos
    gt rx105_pos, rx105_eos, rx105_fail265
    repr_bind_attr_int rx105_cur, rx105_curclass, "$!from", rx105_pos
  rxscan106_scan270:
    nqp_rxmark rx105_bstack, rxscan106_loop269, rx105_pos, 0
  rxscan106_done271:
    nqp_rxmark rx105_bstack, rxquantr107_done273, -1, 0
  rxquantr107_loop272:
    nqp_rxmark rx105_bstack, rxquantr108_done275, -1, 0
  rxquantr108_loop274:
    ge rx105_pos, rx105_eos, rx105_fail265
    substr $S11, rx105_tgt, rx105_pos, 1
    index $I11, ucs4:"01234567", $S11
    lt $I11, 0, rx105_fail265
    inc rx105_pos
    nqp_rxpeek $I19, rx105_bstack, rxquantr108_done275
    inc $I19
    inc $I19
    set rx105_rep, rx105_bstack[$I19]
    nqp_rxcommit rx105_bstack, rxquantr108_done275
    inc rx105_rep
    nqp_rxmark rx105_bstack, rxquantr108_done275, rx105_pos, rx105_rep
    goto rxquantr108_loop274
  rxquantr108_done275:
    nqp_rxpeek $I19, rx105_bstack, rxquantr107_done273
    inc $I19
    inc $I19
    set rx105_rep, rx105_bstack[$I19]
    nqp_rxcommit rx105_bstack, rxquantr107_done273
    inc rx105_rep
    nqp_rxmark rx105_bstack, rxquantr107_done273, rx105_pos, rx105_rep
    add $I11, rx105_pos, 1
    gt $I11, rx105_eos, rx105_fail265
    substr $S10, rx105_tgt, rx105_pos, 1
    ne $S10, ucs4:"_", rx105_fail265
    add rx105_pos, 1
    goto rxquantr107_loop272
  rxquantr107_done273:
    rx105_cur."!cursor_pass"(rx105_pos, "octint", 'backtrack'=>1)
    .return (rx105_cur)
  rx105_restart264:
    repr_get_attr_obj rx105_cstack, rx105_cur, rx105_curclass, "$!cstack"
  rx105_fail265:
    unless rx105_bstack, rx105_done263
    pop $I19, rx105_bstack
    if_null rx105_cstack, rx105_cstack_done268
    unless rx105_cstack, rx105_cstack_done268
    dec $I19
    set $P11, rx105_cstack[$I19]
  rx105_cstack_done268:
    pop rx105_rep, rx105_bstack
    pop rx105_pos, rx105_bstack
    pop $I19, rx105_bstack
    lt rx105_pos, -1, rx105_done263
    lt rx105_pos, 0, rx105_fail265
    eq $I19, 0, rx105_fail265
    nqp_islist $I20, rx105_cstack
    unless $I20, rx105_jump266
    elements $I18, rx105_bstack
    le $I18, 0, rx105_cut267
    dec $I18
    set $I18, rx105_bstack[$I18]
  rx105_cut267:
    assign rx105_cstack, $I18
  rx105_jump266:
    jump $I19
  rx105_done263:
    rx105_cur."!cursor_fail"()
    .return (rx105_cur) 
.end
.HLL "nqp"
.namespace []
.sub "octints" :subid("cuid_45_1383914954.64741") :anon :lex :outer("cuid_236_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 210
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx109_start
    .local string rx109_tgt
    .local int rx109_pos
    .local int rx109_off
    .local int rx109_eos
    .local int rx109_rep
    .local pmc rx109_cur
    .local pmc rx109_curclass
    .local pmc rx109_bstack
    .local pmc rx109_cstack
    rx109_start = self."!cursor_start_all"()
    set rx109_cur, rx109_start[0]
    set rx109_tgt, rx109_start[1]
    set rx109_pos, rx109_start[2]
    set rx109_curclass, rx109_start[3]
    set rx109_bstack, rx109_start[4]
    set $I19, rx109_start[5]
    store_lex unicode:"$\x{a2}", rx109_cur
    length rx109_eos, rx109_tgt
    eq $I19, 1, rx109_restart278
    gt rx109_pos, rx109_eos, rx109_fail279
    repr_get_attr_int $I11, self, rx109_curclass, "$!from"
    ne $I11, -1, rxscan110_done285
    goto rxscan110_scan284
  rxscan110_loop283:
    inc rx109_pos
    gt rx109_pos, rx109_eos, rx109_fail279
    repr_bind_attr_int rx109_cur, rx109_curclass, "$!from", rx109_pos
  rxscan110_scan284:
    nqp_rxmark rx109_bstack, rxscan110_loop283, rx109_pos, 0
  rxscan110_done285:
    nqp_rxmark rx109_bstack, rxquantr111_done287, -1, 0
  rxquantr111_loop286:
    repr_bind_attr_int rx109_cur, rx109_curclass, "$!pos", rx109_pos
    $P11 = rx109_cur."ws"()
    repr_get_attr_int $I11, $P11, rx109_curclass, "$!pos"
    lt $I11, 0, rx109_fail279
    repr_get_attr_int rx109_pos, $P11, rx109_curclass, "$!pos"
    repr_bind_attr_int rx109_cur, rx109_curclass, "$!pos", rx109_pos
    $P11 = rx109_cur."octint"()
    repr_get_attr_int $I11, $P11, rx109_curclass, "$!pos"
    lt $I11, 0, rx109_fail279
    nqp_rxmark rx109_bstack, rxsubrule113_pass289, -1, 0
  rxsubrule113_pass289:
    rx109_cstack = rx109_cur."!cursor_capture"($P11, "octint")
    repr_get_attr_int rx109_pos, $P11, rx109_curclass, "$!pos"
    repr_bind_attr_int rx109_cur, rx109_curclass, "$!pos", rx109_pos
    $P11 = rx109_cur."ws"()
    repr_get_attr_int $I11, $P11, rx109_curclass, "$!pos"
    lt $I11, 0, rx109_fail279
    repr_get_attr_int rx109_pos, $P11, rx109_curclass, "$!pos"
    nqp_rxpeek $I19, rx109_bstack, rxquantr111_done287
    inc $I19
    inc $I19
    set rx109_rep, rx109_bstack[$I19]
    nqp_rxcommit rx109_bstack, rxquantr111_done287
    inc rx109_rep
    nqp_rxmark rx109_bstack, rxquantr111_done287, rx109_pos, rx109_rep
    add $I11, rx109_pos, 1
    gt $I11, rx109_eos, rx109_fail279
    substr $S10, rx109_tgt, rx109_pos, 1
    ne $S10, ucs4:",", rx109_fail279
    add rx109_pos, 1
    goto rxquantr111_loop286
  rxquantr111_done287:
    rx109_cur."!cursor_pass"(rx109_pos, "octints", 'backtrack'=>1)
    .return (rx109_cur)
  rx109_restart278:
    repr_get_attr_obj rx109_cstack, rx109_cur, rx109_curclass, "$!cstack"
  rx109_fail279:
    unless rx109_bstack, rx109_done277
    pop $I19, rx109_bstack
    if_null rx109_cstack, rx109_cstack_done282
    unless rx109_cstack, rx109_cstack_done282
    dec $I19
    set $P11, rx109_cstack[$I19]
  rx109_cstack_done282:
    pop rx109_rep, rx109_bstack
    pop rx109_pos, rx109_bstack
    pop $I19, rx109_bstack
    lt rx109_pos, -1, rx109_done277
    lt rx109_pos, 0, rx109_fail279
    eq $I19, 0, rx109_fail279
    nqp_islist $I20, rx109_cstack
    unless $I20, rx109_jump280
    elements $I18, rx109_bstack
    le $I18, 0, rx109_cut281
    dec $I18
    set $I18, rx109_bstack[$I18]
  rx109_cut281:
    assign rx109_cstack, $I18
  rx109_jump280:
    jump $I19
  rx109_done277:
    rx109_cur."!cursor_fail"()
    .return (rx109_cur) 
.end
.HLL "nqp"
.namespace []
.sub "binint" :subid("cuid_46_1383914954.64741") :anon :lex :outer("cuid_236_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 212
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx115_start
    .local string rx115_tgt
    .local int rx115_pos
    .local int rx115_off
    .local int rx115_eos
    .local int rx115_rep
    .local pmc rx115_cur
    .local pmc rx115_curclass
    .local pmc rx115_bstack
    .local pmc rx115_cstack
    rx115_start = self."!cursor_start_all"()
    set rx115_cur, rx115_start[0]
    set rx115_tgt, rx115_start[1]
    set rx115_pos, rx115_start[2]
    set rx115_curclass, rx115_start[3]
    set rx115_bstack, rx115_start[4]
    set $I19, rx115_start[5]
    store_lex unicode:"$\x{a2}", rx115_cur
    length rx115_eos, rx115_tgt
    eq $I19, 1, rx115_restart293
    gt rx115_pos, rx115_eos, rx115_fail294
    repr_get_attr_int $I11, self, rx115_curclass, "$!from"
    ne $I11, -1, rxscan116_done300
    goto rxscan116_scan299
  rxscan116_loop298:
    inc rx115_pos
    gt rx115_pos, rx115_eos, rx115_fail294
    repr_bind_attr_int rx115_cur, rx115_curclass, "$!from", rx115_pos
  rxscan116_scan299:
    nqp_rxmark rx115_bstack, rxscan116_loop298, rx115_pos, 0
  rxscan116_done300:
    nqp_rxmark rx115_bstack, rxquantr117_done302, -1, 0
  rxquantr117_loop301:
    nqp_rxmark rx115_bstack, rxquantr118_done304, -1, 0
  rxquantr118_loop303:
    ge rx115_pos, rx115_eos, rx115_fail294
    substr $S11, rx115_tgt, rx115_pos, 1
    index $I11, ucs4:"01", $S11
    lt $I11, 0, rx115_fail294
    inc rx115_pos
    nqp_rxpeek $I19, rx115_bstack, rxquantr118_done304
    inc $I19
    inc $I19
    set rx115_rep, rx115_bstack[$I19]
    nqp_rxcommit rx115_bstack, rxquantr118_done304
    inc rx115_rep
    nqp_rxmark rx115_bstack, rxquantr118_done304, rx115_pos, rx115_rep
    goto rxquantr118_loop303
  rxquantr118_done304:
    nqp_rxpeek $I19, rx115_bstack, rxquantr117_done302
    inc $I19
    inc $I19
    set rx115_rep, rx115_bstack[$I19]
    nqp_rxcommit rx115_bstack, rxquantr117_done302
    inc rx115_rep
    nqp_rxmark rx115_bstack, rxquantr117_done302, rx115_pos, rx115_rep
    add $I11, rx115_pos, 1
    gt $I11, rx115_eos, rx115_fail294
    substr $S10, rx115_tgt, rx115_pos, 1
    ne $S10, ucs4:"_", rx115_fail294
    add rx115_pos, 1
    goto rxquantr117_loop301
  rxquantr117_done302:
    rx115_cur."!cursor_pass"(rx115_pos, "binint", 'backtrack'=>1)
    .return (rx115_cur)
  rx115_restart293:
    repr_get_attr_obj rx115_cstack, rx115_cur, rx115_curclass, "$!cstack"
  rx115_fail294:
    unless rx115_bstack, rx115_done292
    pop $I19, rx115_bstack
    if_null rx115_cstack, rx115_cstack_done297
    unless rx115_cstack, rx115_cstack_done297
    dec $I19
    set $P11, rx115_cstack[$I19]
  rx115_cstack_done297:
    pop rx115_rep, rx115_bstack
    pop rx115_pos, rx115_bstack
    pop $I19, rx115_bstack
    lt rx115_pos, -1, rx115_done292
    lt rx115_pos, 0, rx115_fail294
    eq $I19, 0, rx115_fail294
    nqp_islist $I20, rx115_cstack
    unless $I20, rx115_jump295
    elements $I18, rx115_bstack
    le $I18, 0, rx115_cut296
    dec $I18
    set $I18, rx115_bstack[$I18]
  rx115_cut296:
    assign rx115_cstack, $I18
  rx115_jump295:
    jump $I19
  rx115_done292:
    rx115_cur."!cursor_fail"()
    .return (rx115_cur) 
.end
.HLL "nqp"
.namespace []
.sub "binints" :subid("cuid_47_1383914954.64741") :anon :lex :outer("cuid_236_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 213
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx119_start
    .local string rx119_tgt
    .local int rx119_pos
    .local int rx119_off
    .local int rx119_eos
    .local int rx119_rep
    .local pmc rx119_cur
    .local pmc rx119_curclass
    .local pmc rx119_bstack
    .local pmc rx119_cstack
    rx119_start = self."!cursor_start_all"()
    set rx119_cur, rx119_start[0]
    set rx119_tgt, rx119_start[1]
    set rx119_pos, rx119_start[2]
    set rx119_curclass, rx119_start[3]
    set rx119_bstack, rx119_start[4]
    set $I19, rx119_start[5]
    store_lex unicode:"$\x{a2}", rx119_cur
    length rx119_eos, rx119_tgt
    eq $I19, 1, rx119_restart307
    gt rx119_pos, rx119_eos, rx119_fail308
    repr_get_attr_int $I11, self, rx119_curclass, "$!from"
    ne $I11, -1, rxscan120_done314
    goto rxscan120_scan313
  rxscan120_loop312:
    inc rx119_pos
    gt rx119_pos, rx119_eos, rx119_fail308
    repr_bind_attr_int rx119_cur, rx119_curclass, "$!from", rx119_pos
  rxscan120_scan313:
    nqp_rxmark rx119_bstack, rxscan120_loop312, rx119_pos, 0
  rxscan120_done314:
    nqp_rxmark rx119_bstack, rxquantr121_done316, -1, 0
  rxquantr121_loop315:
    repr_bind_attr_int rx119_cur, rx119_curclass, "$!pos", rx119_pos
    $P11 = rx119_cur."ws"()
    repr_get_attr_int $I11, $P11, rx119_curclass, "$!pos"
    lt $I11, 0, rx119_fail308
    repr_get_attr_int rx119_pos, $P11, rx119_curclass, "$!pos"
    repr_bind_attr_int rx119_cur, rx119_curclass, "$!pos", rx119_pos
    $P11 = rx119_cur."binint"()
    repr_get_attr_int $I11, $P11, rx119_curclass, "$!pos"
    lt $I11, 0, rx119_fail308
    nqp_rxmark rx119_bstack, rxsubrule123_pass318, -1, 0
  rxsubrule123_pass318:
    rx119_cstack = rx119_cur."!cursor_capture"($P11, "binint")
    repr_get_attr_int rx119_pos, $P11, rx119_curclass, "$!pos"
    repr_bind_attr_int rx119_cur, rx119_curclass, "$!pos", rx119_pos
    $P11 = rx119_cur."ws"()
    repr_get_attr_int $I11, $P11, rx119_curclass, "$!pos"
    lt $I11, 0, rx119_fail308
    repr_get_attr_int rx119_pos, $P11, rx119_curclass, "$!pos"
    nqp_rxpeek $I19, rx119_bstack, rxquantr121_done316
    inc $I19
    inc $I19
    set rx119_rep, rx119_bstack[$I19]
    nqp_rxcommit rx119_bstack, rxquantr121_done316
    inc rx119_rep
    nqp_rxmark rx119_bstack, rxquantr121_done316, rx119_pos, rx119_rep
    add $I11, rx119_pos, 1
    gt $I11, rx119_eos, rx119_fail308
    substr $S10, rx119_tgt, rx119_pos, 1
    ne $S10, ucs4:",", rx119_fail308
    add rx119_pos, 1
    goto rxquantr121_loop315
  rxquantr121_done316:
    rx119_cur."!cursor_pass"(rx119_pos, "binints", 'backtrack'=>1)
    .return (rx119_cur)
  rx119_restart307:
    repr_get_attr_obj rx119_cstack, rx119_cur, rx119_curclass, "$!cstack"
  rx119_fail308:
    unless rx119_bstack, rx119_done306
    pop $I19, rx119_bstack
    if_null rx119_cstack, rx119_cstack_done311
    unless rx119_cstack, rx119_cstack_done311
    dec $I19
    set $P11, rx119_cstack[$I19]
  rx119_cstack_done311:
    pop rx119_rep, rx119_bstack
    pop rx119_pos, rx119_bstack
    pop $I19, rx119_bstack
    lt rx119_pos, -1, rx119_done306
    lt rx119_pos, 0, rx119_fail308
    eq $I19, 0, rx119_fail308
    nqp_islist $I20, rx119_cstack
    unless $I20, rx119_jump309
    elements $I18, rx119_bstack
    le $I18, 0, rx119_cut310
    dec $I18
    set $I18, rx119_bstack[$I18]
  rx119_cut310:
    assign rx119_cstack, $I18
  rx119_jump309:
    jump $I19
  rx119_done306:
    rx119_cur."!cursor_fail"()
    .return (rx119_cur) 
.end
.HLL "nqp"
.namespace []
.sub "integer" :subid("cuid_48_1383914954.64741") :anon :lex :outer("cuid_236_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 215
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx125_start
    .local string rx125_tgt
    .local int rx125_pos
    .local int rx125_off
    .local int rx125_eos
    .local int rx125_rep
    .local pmc rx125_cur
    .local pmc rx125_curclass
    .local pmc rx125_bstack
    .local pmc rx125_cstack
    rx125_start = self."!cursor_start_all"()
    set rx125_cur, rx125_start[0]
    set rx125_tgt, rx125_start[1]
    set rx125_pos, rx125_start[2]
    set rx125_curclass, rx125_start[3]
    set rx125_bstack, rx125_start[4]
    set $I19, rx125_start[5]
    store_lex unicode:"$\x{a2}", rx125_cur
    length rx125_eos, rx125_tgt
    eq $I19, 1, rx125_restart322
    gt rx125_pos, rx125_eos, rx125_fail323
    repr_get_attr_int $I11, self, rx125_curclass, "$!from"
    ne $I11, -1, rxscan126_done329
    goto rxscan126_scan328
  rxscan126_loop327:
    inc rx125_pos
    gt rx125_pos, rx125_eos, rx125_fail323
    repr_bind_attr_int rx125_cur, rx125_curclass, "$!from", rx125_pos
  rxscan126_scan328:
    nqp_rxmark rx125_bstack, rxscan126_loop327, rx125_pos, 0
  rxscan126_done329:
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt127_0331
    nqp_push_label $P11, alt127_1341
    nqp_rxmark rx125_bstack, alt127_end330, -1, 0
    rx125_cur."!alt"(rx125_pos, "alt_nfa__4_1383914955.96359", $P11)
    goto rx125_fail323
  alt127_0331:
    add $I11, rx125_pos, 1
    gt $I11, rx125_eos, rx125_fail323
    substr $S10, rx125_tgt, rx125_pos, 1
    ne $S10, ucs4:"0", rx125_fail323
    add rx125_pos, 1
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt128_0333
    nqp_push_label $P11, alt128_1335
    nqp_push_label $P11, alt128_2337
    nqp_push_label $P11, alt128_3339
    nqp_rxmark rx125_bstack, alt128_end332, -1, 0
    rx125_cur."!alt"(rx125_pos, "alt_nfa__3_1383914955.96268", $P11)
    goto rx125_fail323
  alt128_0333:
    add $I11, rx125_pos, 1
    gt $I11, rx125_eos, rx125_fail323
    substr $S10, rx125_tgt, rx125_pos, 1
    ne $S10, ucs4:"b", rx125_fail323
    add rx125_pos, 1
    repr_bind_attr_int rx125_cur, rx125_curclass, "$!pos", rx125_pos
    $P11 = rx125_cur."binint"()
    repr_get_attr_int $I11, $P11, rx125_curclass, "$!pos"
    lt $I11, 0, rx125_fail323
    nqp_rxmark rx125_bstack, rxsubrule129_pass334, -1, 0
  rxsubrule129_pass334:
    rx125_cstack = rx125_cur."!cursor_capture"($P11, "VALUE=binint")
    repr_get_attr_int rx125_pos, $P11, rx125_curclass, "$!pos"
    goto alt128_end332
  alt128_1335:
    add $I11, rx125_pos, 1
    gt $I11, rx125_eos, rx125_fail323
    substr $S10, rx125_tgt, rx125_pos, 1
    ne $S10, ucs4:"o", rx125_fail323
    add rx125_pos, 1
    repr_bind_attr_int rx125_cur, rx125_curclass, "$!pos", rx125_pos
    $P11 = rx125_cur."octint"()
    repr_get_attr_int $I11, $P11, rx125_curclass, "$!pos"
    lt $I11, 0, rx125_fail323
    nqp_rxmark rx125_bstack, rxsubrule130_pass336, -1, 0
  rxsubrule130_pass336:
    rx125_cstack = rx125_cur."!cursor_capture"($P11, "VALUE=octint")
    repr_get_attr_int rx125_pos, $P11, rx125_curclass, "$!pos"
    goto alt128_end332
  alt128_2337:
    add $I11, rx125_pos, 1
    gt $I11, rx125_eos, rx125_fail323
    substr $S10, rx125_tgt, rx125_pos, 1
    ne $S10, ucs4:"x", rx125_fail323
    add rx125_pos, 1
    repr_bind_attr_int rx125_cur, rx125_curclass, "$!pos", rx125_pos
    $P11 = rx125_cur."hexint"()
    repr_get_attr_int $I11, $P11, rx125_curclass, "$!pos"
    lt $I11, 0, rx125_fail323
    nqp_rxmark rx125_bstack, rxsubrule131_pass338, -1, 0
  rxsubrule131_pass338:
    rx125_cstack = rx125_cur."!cursor_capture"($P11, "VALUE=hexint")
    repr_get_attr_int rx125_pos, $P11, rx125_curclass, "$!pos"
    goto alt128_end332
  alt128_3339:
    add $I11, rx125_pos, 1
    gt $I11, rx125_eos, rx125_fail323
    substr $S10, rx125_tgt, rx125_pos, 1
    ne $S10, ucs4:"d", rx125_fail323
    add rx125_pos, 1
    repr_bind_attr_int rx125_cur, rx125_curclass, "$!pos", rx125_pos
    $P11 = rx125_cur."decint"()
    repr_get_attr_int $I11, $P11, rx125_curclass, "$!pos"
    lt $I11, 0, rx125_fail323
    nqp_rxmark rx125_bstack, rxsubrule132_pass340, -1, 0
  rxsubrule132_pass340:
    rx125_cstack = rx125_cur."!cursor_capture"($P11, "VALUE=decint")
    repr_get_attr_int rx125_pos, $P11, rx125_curclass, "$!pos"
    goto alt128_end332
  alt128_end332:
    nqp_rxcommit rx125_bstack, alt128_end332
    goto alt127_end330
  alt127_1341:
    repr_bind_attr_int rx125_cur, rx125_curclass, "$!pos", rx125_pos
    $P11 = rx125_cur."decint"()
    repr_get_attr_int $I11, $P11, rx125_curclass, "$!pos"
    lt $I11, 0, rx125_fail323
    nqp_rxmark rx125_bstack, rxsubrule133_pass342, -1, 0
  rxsubrule133_pass342:
    rx125_cstack = rx125_cur."!cursor_capture"($P11, "VALUE=decint")
    repr_get_attr_int rx125_pos, $P11, rx125_curclass, "$!pos"
    goto alt127_end330
  alt127_end330:
    nqp_rxcommit rx125_bstack, alt127_end330
    rx125_cur."!cursor_pass"(rx125_pos, "integer", 'backtrack'=>1)
    .return (rx125_cur)
  rx125_restart322:
    repr_get_attr_obj rx125_cstack, rx125_cur, rx125_curclass, "$!cstack"
  rx125_fail323:
    unless rx125_bstack, rx125_done321
    pop $I19, rx125_bstack
    if_null rx125_cstack, rx125_cstack_done326
    unless rx125_cstack, rx125_cstack_done326
    dec $I19
    set $P11, rx125_cstack[$I19]
  rx125_cstack_done326:
    pop rx125_rep, rx125_bstack
    pop rx125_pos, rx125_bstack
    pop $I19, rx125_bstack
    lt rx125_pos, -1, rx125_done321
    lt rx125_pos, 0, rx125_fail323
    eq $I19, 0, rx125_fail323
    nqp_islist $I20, rx125_cstack
    unless $I20, rx125_jump324
    elements $I18, rx125_bstack
    le $I18, 0, rx125_cut325
    dec $I18
    set $I18, rx125_bstack[$I18]
  rx125_cut325:
    assign rx125_cstack, $I18
  rx125_jump324:
    jump $I19
  rx125_done321:
    rx125_cur."!cursor_fail"()
    .return (rx125_cur) 
.end
.HLL "nqp"
.namespace []
.sub "dec_number" :subid("cuid_49_1383914954.64741") :anon :lex :outer("cuid_236_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 226
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx134_start
    .local string rx134_tgt
    .local int rx134_pos
    .local int rx134_off
    .local int rx134_eos
    .local int rx134_rep
    .local pmc rx134_cur
    .local pmc rx134_curclass
    .local pmc rx134_bstack
    .local pmc rx134_cstack
    rx134_start = self."!cursor_start_all"()
    set rx134_cur, rx134_start[0]
    set rx134_tgt, rx134_start[1]
    set rx134_pos, rx134_start[2]
    set rx134_curclass, rx134_start[3]
    set rx134_bstack, rx134_start[4]
    set $I19, rx134_start[5]
    store_lex unicode:"$\x{a2}", rx134_cur
    length rx134_eos, rx134_tgt
    eq $I19, 1, rx134_restart345
    gt rx134_pos, rx134_eos, rx134_fail346
    repr_get_attr_int $I11, self, rx134_curclass, "$!from"
    ne $I11, -1, rxscan135_done352
    goto rxscan135_scan351
  rxscan135_loop350:
    inc rx134_pos
    gt rx134_pos, rx134_eos, rx134_fail346
    repr_bind_attr_int rx134_cur, rx134_curclass, "$!from", rx134_pos
  rxscan135_scan351:
    nqp_rxmark rx134_bstack, rxscan135_loop350, rx134_pos, 0
  rxscan135_done352:
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt136_0354
    nqp_push_label $P11, alt136_1363
    nqp_push_label $P11, alt136_2374
    nqp_rxmark rx134_bstack, alt136_end353, -1, 0
    rx134_cur."!alt"(rx134_pos, "alt_nfa__5_1383914956.001", $P11)
    goto rx134_fail346
  alt136_0354:
    nqp_rxmark rx134_bstack, rxcap137_fail356, rx134_pos, 0
    add $I11, rx134_pos, 1
    gt $I11, rx134_eos, rx134_fail346
    substr $S10, rx134_tgt, rx134_pos, 1
    ne $S10, ucs4:".", rx134_fail346
    add rx134_pos, 1
    nqp_rxmark rx134_bstack, rxquantr138_done358, -1, 0
  rxquantr138_loop357:
    ge rx134_pos, rx134_eos, rx134_fail346
    is_cclass $I11, .CCLASS_NUMERIC, rx134_tgt, rx134_pos
    unless $I11, rx134_fail346
    add rx134_pos, 1
    nqp_rxpeek $I19, rx134_bstack, rxquantr138_done358
    inc $I19
    inc $I19
    set rx134_rep, rx134_bstack[$I19]
    nqp_rxcommit rx134_bstack, rxquantr138_done358
    inc rx134_rep
    nqp_rxmark rx134_bstack, rxquantr138_done358, rx134_pos, rx134_rep
    goto rxquantr138_loop357
  rxquantr138_done358:
    nqp_rxpeek $I19, rx134_bstack, rxcap137_fail356
    inc $I19
    set $I11, rx134_bstack[$I19]
    repr_bind_attr_int rx134_cur, rx134_curclass, "$!pos", rx134_pos
    $P11 = rx134_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx134_pos)
    rx134_cstack = rx134_cur."!cursor_capture"($P11, "coeff")
    goto rxcap137_done355
  rxcap137_fail356:
    goto rx134_fail346
  rxcap137_done355:
    nqp_rxmark rx134_bstack, rxquantr139_done360, rx134_pos, 0
  rxquantr139_loop359:
    repr_bind_attr_int rx134_cur, rx134_curclass, "$!pos", rx134_pos
    $P11 = rx134_cur."escale"()
    repr_get_attr_int $I11, $P11, rx134_curclass, "$!pos"
    lt $I11, 0, rx134_fail346
    goto rxsubrule140_pass361
  rxsubrule140_back362:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx134_curclass, "$!pos"
    lt $I11, 0, rx134_fail346
  rxsubrule140_pass361:
    rx134_cstack = rx134_cur."!cursor_capture"($P11, "escale")
    set_addr $I11, rxsubrule140_back362
    push rx134_bstack, $I11
    push rx134_bstack, 0
    push rx134_bstack, rx134_pos
    elements $I11, rx134_cstack
    push rx134_bstack, $I11
    repr_get_attr_int rx134_pos, $P11, rx134_curclass, "$!pos"
    nqp_rxpeek $I19, rx134_bstack, rxquantr139_done360
    inc $I19
    inc $I19
    set rx134_rep, rx134_bstack[$I19]
    nqp_rxcommit rx134_bstack, rxquantr139_done360
    inc rx134_rep
  rxquantr139_done360:
    goto alt136_end353
  alt136_1363:
    nqp_rxmark rx134_bstack, rxcap141_fail365, rx134_pos, 0
    nqp_rxmark rx134_bstack, rxquantr142_done367, -1, 0
  rxquantr142_loop366:
    ge rx134_pos, rx134_eos, rx134_fail346
    is_cclass $I11, .CCLASS_NUMERIC, rx134_tgt, rx134_pos
    unless $I11, rx134_fail346
    add rx134_pos, 1
    nqp_rxpeek $I19, rx134_bstack, rxquantr142_done367
    inc $I19
    inc $I19
    set rx134_rep, rx134_bstack[$I19]
    nqp_rxcommit rx134_bstack, rxquantr142_done367
    inc rx134_rep
    nqp_rxmark rx134_bstack, rxquantr142_done367, rx134_pos, rx134_rep
    goto rxquantr142_loop366
  rxquantr142_done367:
    add $I11, rx134_pos, 1
    gt $I11, rx134_eos, rx134_fail346
    substr $S10, rx134_tgt, rx134_pos, 1
    ne $S10, ucs4:".", rx134_fail346
    add rx134_pos, 1
    nqp_rxmark rx134_bstack, rxquantr143_done369, -1, 0
  rxquantr143_loop368:
    ge rx134_pos, rx134_eos, rx134_fail346
    is_cclass $I11, .CCLASS_NUMERIC, rx134_tgt, rx134_pos
    unless $I11, rx134_fail346
    add rx134_pos, 1
    nqp_rxpeek $I19, rx134_bstack, rxquantr143_done369
    inc $I19
    inc $I19
    set rx134_rep, rx134_bstack[$I19]
    nqp_rxcommit rx134_bstack, rxquantr143_done369
    inc rx134_rep
    nqp_rxmark rx134_bstack, rxquantr143_done369, rx134_pos, rx134_rep
    goto rxquantr143_loop368
  rxquantr143_done369:
    nqp_rxpeek $I19, rx134_bstack, rxcap141_fail365
    inc $I19
    set $I11, rx134_bstack[$I19]
    repr_bind_attr_int rx134_cur, rx134_curclass, "$!pos", rx134_pos
    $P11 = rx134_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx134_pos)
    rx134_cstack = rx134_cur."!cursor_capture"($P11, "coeff")
    goto rxcap141_done364
  rxcap141_fail365:
    goto rx134_fail346
  rxcap141_done364:
    nqp_rxmark rx134_bstack, rxquantr144_done371, rx134_pos, 0
  rxquantr144_loop370:
    repr_bind_attr_int rx134_cur, rx134_curclass, "$!pos", rx134_pos
    $P11 = rx134_cur."escale"()
    repr_get_attr_int $I11, $P11, rx134_curclass, "$!pos"
    lt $I11, 0, rx134_fail346
    goto rxsubrule145_pass372
  rxsubrule145_back373:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx134_curclass, "$!pos"
    lt $I11, 0, rx134_fail346
  rxsubrule145_pass372:
    rx134_cstack = rx134_cur."!cursor_capture"($P11, "escale")
    set_addr $I11, rxsubrule145_back373
    push rx134_bstack, $I11
    push rx134_bstack, 0
    push rx134_bstack, rx134_pos
    elements $I11, rx134_cstack
    push rx134_bstack, $I11
    repr_get_attr_int rx134_pos, $P11, rx134_curclass, "$!pos"
    nqp_rxpeek $I19, rx134_bstack, rxquantr144_done371
    inc $I19
    inc $I19
    set rx134_rep, rx134_bstack[$I19]
    nqp_rxcommit rx134_bstack, rxquantr144_done371
    inc rx134_rep
  rxquantr144_done371:
    goto alt136_end353
  alt136_2374:
    nqp_rxmark rx134_bstack, rxcap146_fail376, rx134_pos, 0
    nqp_rxmark rx134_bstack, rxquantr147_done378, -1, 0
  rxquantr147_loop377:
    ge rx134_pos, rx134_eos, rx134_fail346
    is_cclass $I11, .CCLASS_NUMERIC, rx134_tgt, rx134_pos
    unless $I11, rx134_fail346
    add rx134_pos, 1
    nqp_rxpeek $I19, rx134_bstack, rxquantr147_done378
    inc $I19
    inc $I19
    set rx134_rep, rx134_bstack[$I19]
    nqp_rxcommit rx134_bstack, rxquantr147_done378
    inc rx134_rep
    nqp_rxmark rx134_bstack, rxquantr147_done378, rx134_pos, rx134_rep
    goto rxquantr147_loop377
  rxquantr147_done378:
    nqp_rxpeek $I19, rx134_bstack, rxcap146_fail376
    inc $I19
    set $I11, rx134_bstack[$I19]
    repr_bind_attr_int rx134_cur, rx134_curclass, "$!pos", rx134_pos
    $P11 = rx134_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx134_pos)
    rx134_cstack = rx134_cur."!cursor_capture"($P11, "coeff")
    goto rxcap146_done375
  rxcap146_fail376:
    goto rx134_fail346
  rxcap146_done375:
    repr_bind_attr_int rx134_cur, rx134_curclass, "$!pos", rx134_pos
    $P11 = rx134_cur."escale"()
    repr_get_attr_int $I11, $P11, rx134_curclass, "$!pos"
    lt $I11, 0, rx134_fail346
    nqp_rxmark rx134_bstack, rxsubrule148_pass379, -1, 0
  rxsubrule148_pass379:
    rx134_cstack = rx134_cur."!cursor_capture"($P11, "escale")
    repr_get_attr_int rx134_pos, $P11, rx134_curclass, "$!pos"
    goto alt136_end353
  alt136_end353:
    rx134_cur."!cursor_pass"(rx134_pos, "dec_number", 'backtrack'=>1)
    .return (rx134_cur)
  rx134_restart345:
    repr_get_attr_obj rx134_cstack, rx134_cur, rx134_curclass, "$!cstack"
  rx134_fail346:
    unless rx134_bstack, rx134_done344
    pop $I19, rx134_bstack
    if_null rx134_cstack, rx134_cstack_done349
    unless rx134_cstack, rx134_cstack_done349
    dec $I19
    set $P11, rx134_cstack[$I19]
  rx134_cstack_done349:
    pop rx134_rep, rx134_bstack
    pop rx134_pos, rx134_bstack
    pop $I19, rx134_bstack
    lt rx134_pos, -1, rx134_done344
    lt rx134_pos, 0, rx134_fail346
    eq $I19, 0, rx134_fail346
    nqp_islist $I20, rx134_cstack
    unless $I20, rx134_jump347
    elements $I18, rx134_bstack
    le $I18, 0, rx134_cut348
    dec $I18
    set $I18, rx134_bstack[$I18]
  rx134_cut348:
    assign rx134_cstack, $I18
  rx134_jump347:
    jump $I19
  rx134_done344:
    rx134_cur."!cursor_fail"()
    .return (rx134_cur) 
.end
.HLL "nqp"
.namespace []
.sub "escale" :subid("cuid_50_1383914954.64741") :anon :lex :outer("cuid_236_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 232
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx149_start
    .local string rx149_tgt
    .local int rx149_pos
    .local int rx149_off
    .local int rx149_eos
    .local int rx149_rep
    .local pmc rx149_cur
    .local pmc rx149_curclass
    .local pmc rx149_bstack
    .local pmc rx149_cstack
    rx149_start = self."!cursor_start_all"()
    set rx149_cur, rx149_start[0]
    set rx149_tgt, rx149_start[1]
    set rx149_pos, rx149_start[2]
    set rx149_curclass, rx149_start[3]
    set rx149_bstack, rx149_start[4]
    set $I19, rx149_start[5]
    store_lex unicode:"$\x{a2}", rx149_cur
    length rx149_eos, rx149_tgt
    eq $I19, 1, rx149_restart382
    gt rx149_pos, rx149_eos, rx149_fail383
    repr_get_attr_int $I11, self, rx149_curclass, "$!from"
    ne $I11, -1, rxscan150_done389
    goto rxscan150_scan388
  rxscan150_loop387:
    inc rx149_pos
    gt rx149_pos, rx149_eos, rx149_fail383
    repr_bind_attr_int rx149_cur, rx149_curclass, "$!from", rx149_pos
  rxscan150_scan388:
    nqp_rxmark rx149_bstack, rxscan150_loop387, rx149_pos, 0
  rxscan150_done389:
    ge rx149_pos, rx149_eos, rx149_fail383
    substr $S11, rx149_tgt, rx149_pos, 1
    index $I11, ucs4:"Ee", $S11
    lt $I11, 0, rx149_fail383
    inc rx149_pos
    nqp_rxmark rx149_bstack, rxquantr151_done391, rx149_pos, 0
  rxquantr151_loop390:
    ge rx149_pos, rx149_eos, rx149_fail383
    substr $S11, rx149_tgt, rx149_pos, 1
    index $I11, ucs4:"+-", $S11
    lt $I11, 0, rx149_fail383
    inc rx149_pos
    nqp_rxpeek $I19, rx149_bstack, rxquantr151_done391
    inc $I19
    inc $I19
    set rx149_rep, rx149_bstack[$I19]
    nqp_rxcommit rx149_bstack, rxquantr151_done391
    inc rx149_rep
  rxquantr151_done391:
    nqp_rxmark rx149_bstack, rxquantr152_done393, -1, 0
  rxquantr152_loop392:
    ge rx149_pos, rx149_eos, rx149_fail383
    is_cclass $I11, .CCLASS_NUMERIC, rx149_tgt, rx149_pos
    unless $I11, rx149_fail383
    add rx149_pos, 1
    nqp_rxpeek $I19, rx149_bstack, rxquantr152_done393
    inc $I19
    inc $I19
    set rx149_rep, rx149_bstack[$I19]
    nqp_rxcommit rx149_bstack, rxquantr152_done393
    inc rx149_rep
    nqp_rxmark rx149_bstack, rxquantr152_done393, rx149_pos, rx149_rep
    goto rxquantr152_loop392
  rxquantr152_done393:
    rx149_cur."!cursor_pass"(rx149_pos, "escale", 'backtrack'=>1)
    .return (rx149_cur)
  rx149_restart382:
    repr_get_attr_obj rx149_cstack, rx149_cur, rx149_curclass, "$!cstack"
  rx149_fail383:
    unless rx149_bstack, rx149_done381
    pop $I19, rx149_bstack
    if_null rx149_cstack, rx149_cstack_done386
    unless rx149_cstack, rx149_cstack_done386
    dec $I19
    set $P11, rx149_cstack[$I19]
  rx149_cstack_done386:
    pop rx149_rep, rx149_bstack
    pop rx149_pos, rx149_bstack
    pop $I19, rx149_bstack
    lt rx149_pos, -1, rx149_done381
    lt rx149_pos, 0, rx149_fail383
    eq $I19, 0, rx149_fail383
    nqp_islist $I20, rx149_cstack
    unless $I20, rx149_jump384
    elements $I18, rx149_bstack
    le $I18, 0, rx149_cut385
    dec $I18
    set $I18, rx149_bstack[$I18]
  rx149_cut385:
    assign rx149_cstack, $I18
  rx149_jump384:
    jump $I19
  rx149_done381:
    rx149_cur."!cursor_fail"()
    .return (rx149_cur) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape" :subid("cuid_51_1383914954.64741") :anon :lex :outer("cuid_236_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 234
    .param pmc self 
    $P5001 = self."!protoregex"("quote_escape")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<backslash>" :subid("cuid_52_1383914954.64741") :anon :lex :outer("cuid_236_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 235
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx153_start
    .local string rx153_tgt
    .local int rx153_pos
    .local int rx153_off
    .local int rx153_eos
    .local int rx153_rep
    .local pmc rx153_cur
    .local pmc rx153_curclass
    .local pmc rx153_bstack
    .local pmc rx153_cstack
    rx153_start = self."!cursor_start_all"()
    set rx153_cur, rx153_start[0]
    set rx153_tgt, rx153_start[1]
    set rx153_pos, rx153_start[2]
    set rx153_curclass, rx153_start[3]
    set rx153_bstack, rx153_start[4]
    set $I19, rx153_start[5]
    store_lex unicode:"$\x{a2}", rx153_cur
    length rx153_eos, rx153_tgt
    eq $I19, 1, rx153_restart396
    gt rx153_pos, rx153_eos, rx153_fail397
    repr_get_attr_int $I11, self, rx153_curclass, "$!from"
    ne $I11, -1, rxscan154_done403
    goto rxscan154_scan402
  rxscan154_loop401:
    inc rx153_pos
    gt rx153_pos, rx153_eos, rx153_fail397
    repr_bind_attr_int rx153_cur, rx153_curclass, "$!from", rx153_pos
  rxscan154_scan402:
    nqp_rxmark rx153_bstack, rxscan154_loop401, rx153_pos, 0
  rxscan154_done403:
    ge rx153_pos, rx153_eos, rx153_fail397
    substr $S11, rx153_tgt, rx153_pos, 1
    index $I11, ucs4:"\\", $S11
    lt $I11, 0, rx153_fail397
    inc rx153_pos
    ge rx153_pos, rx153_eos, rx153_fail397
    substr $S11, rx153_tgt, rx153_pos, 1
    index $I11, ucs4:"\\", $S11
    lt $I11, 0, rx153_fail397
    inc rx153_pos
    repr_bind_attr_int rx153_cur, rx153_curclass, "$!pos", rx153_pos
    $P11 = rx153_cur."quotemod_check"("q")
    repr_get_attr_int $I11, $P11, rx153_curclass, "$!pos"
    lt $I11, 0, rx153_fail397
    rx153_cur."!cursor_pass"(rx153_pos, "quote_escape:sym<backslash>", 'backtrack'=>1)
    .return (rx153_cur)
  rx153_restart396:
    repr_get_attr_obj rx153_cstack, rx153_cur, rx153_curclass, "$!cstack"
  rx153_fail397:
    unless rx153_bstack, rx153_done395
    pop $I19, rx153_bstack
    if_null rx153_cstack, rx153_cstack_done400
    unless rx153_cstack, rx153_cstack_done400
    dec $I19
    set $P11, rx153_cstack[$I19]
  rx153_cstack_done400:
    pop rx153_rep, rx153_bstack
    pop rx153_pos, rx153_bstack
    pop $I19, rx153_bstack
    lt rx153_pos, -1, rx153_done395
    lt rx153_pos, 0, rx153_fail397
    eq $I19, 0, rx153_fail397
    nqp_islist $I20, rx153_cstack
    unless $I20, rx153_jump398
    elements $I18, rx153_bstack
    le $I18, 0, rx153_cut399
    dec $I18
    set $I18, rx153_bstack[$I18]
  rx153_cut399:
    assign rx153_cstack, $I18
  rx153_jump398:
    jump $I19
  rx153_done395:
    rx153_cur."!cursor_fail"()
    .return (rx153_cur) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<stopper>" :subid("cuid_53_1383914954.64741") :anon :lex :outer("cuid_236_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 236
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx155_start
    .local string rx155_tgt
    .local int rx155_pos
    .local int rx155_off
    .local int rx155_eos
    .local int rx155_rep
    .local pmc rx155_cur
    .local pmc rx155_curclass
    .local pmc rx155_bstack
    .local pmc rx155_cstack
    rx155_start = self."!cursor_start_all"()
    set rx155_cur, rx155_start[0]
    set rx155_tgt, rx155_start[1]
    set rx155_pos, rx155_start[2]
    set rx155_curclass, rx155_start[3]
    set rx155_bstack, rx155_start[4]
    set $I19, rx155_start[5]
    store_lex unicode:"$\x{a2}", rx155_cur
    length rx155_eos, rx155_tgt
    eq $I19, 1, rx155_restart406
    gt rx155_pos, rx155_eos, rx155_fail407
    repr_get_attr_int $I11, self, rx155_curclass, "$!from"
    ne $I11, -1, rxscan156_done413
    goto rxscan156_scan412
  rxscan156_loop411:
    inc rx155_pos
    gt rx155_pos, rx155_eos, rx155_fail407
    repr_bind_attr_int rx155_cur, rx155_curclass, "$!from", rx155_pos
  rxscan156_scan412:
    nqp_rxmark rx155_bstack, rxscan156_loop411, rx155_pos, 0
  rxscan156_done413:
    ge rx155_pos, rx155_eos, rx155_fail407
    substr $S11, rx155_tgt, rx155_pos, 1
    index $I11, ucs4:"\\", $S11
    lt $I11, 0, rx155_fail407
    inc rx155_pos
    repr_bind_attr_int rx155_cur, rx155_curclass, "$!pos", rx155_pos
    $P11 = rx155_cur."quotemod_check"("q")
    repr_get_attr_int $I11, $P11, rx155_curclass, "$!pos"
    lt $I11, 0, rx155_fail407
    repr_bind_attr_int rx155_cur, rx155_curclass, "$!pos", rx155_pos
    $P11 = rx155_cur."stopper"()
    repr_get_attr_int $I11, $P11, rx155_curclass, "$!pos"
    lt $I11, 0, rx155_fail407
    nqp_rxmark rx155_bstack, rxsubrule157_pass414, -1, 0
  rxsubrule157_pass414:
    rx155_cstack = rx155_cur."!cursor_capture"($P11, "stopper")
    repr_get_attr_int rx155_pos, $P11, rx155_curclass, "$!pos"
    rx155_cur."!cursor_pass"(rx155_pos, "quote_escape:sym<stopper>", 'backtrack'=>1)
    .return (rx155_cur)
  rx155_restart406:
    repr_get_attr_obj rx155_cstack, rx155_cur, rx155_curclass, "$!cstack"
  rx155_fail407:
    unless rx155_bstack, rx155_done405
    pop $I19, rx155_bstack
    if_null rx155_cstack, rx155_cstack_done410
    unless rx155_cstack, rx155_cstack_done410
    dec $I19
    set $P11, rx155_cstack[$I19]
  rx155_cstack_done410:
    pop rx155_rep, rx155_bstack
    pop rx155_pos, rx155_bstack
    pop $I19, rx155_bstack
    lt rx155_pos, -1, rx155_done405
    lt rx155_pos, 0, rx155_fail407
    eq $I19, 0, rx155_fail407
    nqp_islist $I20, rx155_cstack
    unless $I20, rx155_jump408
    elements $I18, rx155_bstack
    le $I18, 0, rx155_cut409
    dec $I18
    set $I18, rx155_bstack[$I18]
  rx155_cut409:
    assign rx155_cstack, $I18
  rx155_jump408:
    jump $I19
  rx155_done405:
    rx155_cur."!cursor_fail"()
    .return (rx155_cur) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<bs>" :subid("cuid_54_1383914954.64741") :anon :lex :outer("cuid_236_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 238
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
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
    eq $I19, 1, rx158_restart417
    gt rx158_pos, rx158_eos, rx158_fail418
    repr_get_attr_int $I11, self, rx158_curclass, "$!from"
    ne $I11, -1, rxscan159_done424
    goto rxscan159_scan423
  rxscan159_loop422:
    inc rx158_pos
    gt rx158_pos, rx158_eos, rx158_fail418
    repr_bind_attr_int rx158_cur, rx158_curclass, "$!from", rx158_pos
  rxscan159_scan423:
    nqp_rxmark rx158_bstack, rxscan159_loop422, rx158_pos, 0
  rxscan159_done424:
    ge rx158_pos, rx158_eos, rx158_fail418
    substr $S11, rx158_tgt, rx158_pos, 1
    index $I11, ucs4:"\\", $S11
    lt $I11, 0, rx158_fail418
    inc rx158_pos
    add $I11, rx158_pos, 1
    gt $I11, rx158_eos, rx158_fail418
    substr $S10, rx158_tgt, rx158_pos, 1
    ne $S10, ucs4:"b", rx158_fail418
    add rx158_pos, 1
    repr_bind_attr_int rx158_cur, rx158_curclass, "$!pos", rx158_pos
    $P11 = rx158_cur."quotemod_check"("b")
    repr_get_attr_int $I11, $P11, rx158_curclass, "$!pos"
    lt $I11, 0, rx158_fail418
    rx158_cur."!cursor_pass"(rx158_pos, "quote_escape:sym<bs>", 'backtrack'=>1)
    .return (rx158_cur)
  rx158_restart417:
    repr_get_attr_obj rx158_cstack, rx158_cur, rx158_curclass, "$!cstack"
  rx158_fail418:
    unless rx158_bstack, rx158_done416
    pop $I19, rx158_bstack
    if_null rx158_cstack, rx158_cstack_done421
    unless rx158_cstack, rx158_cstack_done421
    dec $I19
    set $P11, rx158_cstack[$I19]
  rx158_cstack_done421:
    pop rx158_rep, rx158_bstack
    pop rx158_pos, rx158_bstack
    pop $I19, rx158_bstack
    lt rx158_pos, -1, rx158_done416
    lt rx158_pos, 0, rx158_fail418
    eq $I19, 0, rx158_fail418
    nqp_islist $I20, rx158_cstack
    unless $I20, rx158_jump419
    elements $I18, rx158_bstack
    le $I18, 0, rx158_cut420
    dec $I18
    set $I18, rx158_bstack[$I18]
  rx158_cut420:
    assign rx158_cstack, $I18
  rx158_jump419:
    jump $I19
  rx158_done416:
    rx158_cur."!cursor_fail"()
    .return (rx158_cur) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<nl>" :subid("cuid_55_1383914954.64741") :anon :lex :outer("cuid_236_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 239
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx160_start
    .local string rx160_tgt
    .local int rx160_pos
    .local int rx160_off
    .local int rx160_eos
    .local int rx160_rep
    .local pmc rx160_cur
    .local pmc rx160_curclass
    .local pmc rx160_bstack
    .local pmc rx160_cstack
    rx160_start = self."!cursor_start_all"()
    set rx160_cur, rx160_start[0]
    set rx160_tgt, rx160_start[1]
    set rx160_pos, rx160_start[2]
    set rx160_curclass, rx160_start[3]
    set rx160_bstack, rx160_start[4]
    set $I19, rx160_start[5]
    store_lex unicode:"$\x{a2}", rx160_cur
    length rx160_eos, rx160_tgt
    eq $I19, 1, rx160_restart427
    gt rx160_pos, rx160_eos, rx160_fail428
    repr_get_attr_int $I11, self, rx160_curclass, "$!from"
    ne $I11, -1, rxscan161_done434
    goto rxscan161_scan433
  rxscan161_loop432:
    inc rx160_pos
    gt rx160_pos, rx160_eos, rx160_fail428
    repr_bind_attr_int rx160_cur, rx160_curclass, "$!from", rx160_pos
  rxscan161_scan433:
    nqp_rxmark rx160_bstack, rxscan161_loop432, rx160_pos, 0
  rxscan161_done434:
    ge rx160_pos, rx160_eos, rx160_fail428
    substr $S11, rx160_tgt, rx160_pos, 1
    index $I11, ucs4:"\\", $S11
    lt $I11, 0, rx160_fail428
    inc rx160_pos
    add $I11, rx160_pos, 1
    gt $I11, rx160_eos, rx160_fail428
    substr $S10, rx160_tgt, rx160_pos, 1
    ne $S10, ucs4:"n", rx160_fail428
    add rx160_pos, 1
    repr_bind_attr_int rx160_cur, rx160_curclass, "$!pos", rx160_pos
    $P11 = rx160_cur."quotemod_check"("b")
    repr_get_attr_int $I11, $P11, rx160_curclass, "$!pos"
    lt $I11, 0, rx160_fail428
    rx160_cur."!cursor_pass"(rx160_pos, "quote_escape:sym<nl>", 'backtrack'=>1)
    .return (rx160_cur)
  rx160_restart427:
    repr_get_attr_obj rx160_cstack, rx160_cur, rx160_curclass, "$!cstack"
  rx160_fail428:
    unless rx160_bstack, rx160_done426
    pop $I19, rx160_bstack
    if_null rx160_cstack, rx160_cstack_done431
    unless rx160_cstack, rx160_cstack_done431
    dec $I19
    set $P11, rx160_cstack[$I19]
  rx160_cstack_done431:
    pop rx160_rep, rx160_bstack
    pop rx160_pos, rx160_bstack
    pop $I19, rx160_bstack
    lt rx160_pos, -1, rx160_done426
    lt rx160_pos, 0, rx160_fail428
    eq $I19, 0, rx160_fail428
    nqp_islist $I20, rx160_cstack
    unless $I20, rx160_jump429
    elements $I18, rx160_bstack
    le $I18, 0, rx160_cut430
    dec $I18
    set $I18, rx160_bstack[$I18]
  rx160_cut430:
    assign rx160_cstack, $I18
  rx160_jump429:
    jump $I19
  rx160_done426:
    rx160_cur."!cursor_fail"()
    .return (rx160_cur) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<cr>" :subid("cuid_56_1383914954.64741") :anon :lex :outer("cuid_236_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 240
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx162_start
    .local string rx162_tgt
    .local int rx162_pos
    .local int rx162_off
    .local int rx162_eos
    .local int rx162_rep
    .local pmc rx162_cur
    .local pmc rx162_curclass
    .local pmc rx162_bstack
    .local pmc rx162_cstack
    rx162_start = self."!cursor_start_all"()
    set rx162_cur, rx162_start[0]
    set rx162_tgt, rx162_start[1]
    set rx162_pos, rx162_start[2]
    set rx162_curclass, rx162_start[3]
    set rx162_bstack, rx162_start[4]
    set $I19, rx162_start[5]
    store_lex unicode:"$\x{a2}", rx162_cur
    length rx162_eos, rx162_tgt
    eq $I19, 1, rx162_restart437
    gt rx162_pos, rx162_eos, rx162_fail438
    repr_get_attr_int $I11, self, rx162_curclass, "$!from"
    ne $I11, -1, rxscan163_done444
    goto rxscan163_scan443
  rxscan163_loop442:
    inc rx162_pos
    gt rx162_pos, rx162_eos, rx162_fail438
    repr_bind_attr_int rx162_cur, rx162_curclass, "$!from", rx162_pos
  rxscan163_scan443:
    nqp_rxmark rx162_bstack, rxscan163_loop442, rx162_pos, 0
  rxscan163_done444:
    ge rx162_pos, rx162_eos, rx162_fail438
    substr $S11, rx162_tgt, rx162_pos, 1
    index $I11, ucs4:"\\", $S11
    lt $I11, 0, rx162_fail438
    inc rx162_pos
    add $I11, rx162_pos, 1
    gt $I11, rx162_eos, rx162_fail438
    substr $S10, rx162_tgt, rx162_pos, 1
    ne $S10, ucs4:"r", rx162_fail438
    add rx162_pos, 1
    repr_bind_attr_int rx162_cur, rx162_curclass, "$!pos", rx162_pos
    $P11 = rx162_cur."quotemod_check"("b")
    repr_get_attr_int $I11, $P11, rx162_curclass, "$!pos"
    lt $I11, 0, rx162_fail438
    rx162_cur."!cursor_pass"(rx162_pos, "quote_escape:sym<cr>", 'backtrack'=>1)
    .return (rx162_cur)
  rx162_restart437:
    repr_get_attr_obj rx162_cstack, rx162_cur, rx162_curclass, "$!cstack"
  rx162_fail438:
    unless rx162_bstack, rx162_done436
    pop $I19, rx162_bstack
    if_null rx162_cstack, rx162_cstack_done441
    unless rx162_cstack, rx162_cstack_done441
    dec $I19
    set $P11, rx162_cstack[$I19]
  rx162_cstack_done441:
    pop rx162_rep, rx162_bstack
    pop rx162_pos, rx162_bstack
    pop $I19, rx162_bstack
    lt rx162_pos, -1, rx162_done436
    lt rx162_pos, 0, rx162_fail438
    eq $I19, 0, rx162_fail438
    nqp_islist $I20, rx162_cstack
    unless $I20, rx162_jump439
    elements $I18, rx162_bstack
    le $I18, 0, rx162_cut440
    dec $I18
    set $I18, rx162_bstack[$I18]
  rx162_cut440:
    assign rx162_cstack, $I18
  rx162_jump439:
    jump $I19
  rx162_done436:
    rx162_cur."!cursor_fail"()
    .return (rx162_cur) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<tab>" :subid("cuid_57_1383914954.64741") :anon :lex :outer("cuid_236_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 241
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx164_start
    .local string rx164_tgt
    .local int rx164_pos
    .local int rx164_off
    .local int rx164_eos
    .local int rx164_rep
    .local pmc rx164_cur
    .local pmc rx164_curclass
    .local pmc rx164_bstack
    .local pmc rx164_cstack
    rx164_start = self."!cursor_start_all"()
    set rx164_cur, rx164_start[0]
    set rx164_tgt, rx164_start[1]
    set rx164_pos, rx164_start[2]
    set rx164_curclass, rx164_start[3]
    set rx164_bstack, rx164_start[4]
    set $I19, rx164_start[5]
    store_lex unicode:"$\x{a2}", rx164_cur
    length rx164_eos, rx164_tgt
    eq $I19, 1, rx164_restart447
    gt rx164_pos, rx164_eos, rx164_fail448
    repr_get_attr_int $I11, self, rx164_curclass, "$!from"
    ne $I11, -1, rxscan165_done454
    goto rxscan165_scan453
  rxscan165_loop452:
    inc rx164_pos
    gt rx164_pos, rx164_eos, rx164_fail448
    repr_bind_attr_int rx164_cur, rx164_curclass, "$!from", rx164_pos
  rxscan165_scan453:
    nqp_rxmark rx164_bstack, rxscan165_loop452, rx164_pos, 0
  rxscan165_done454:
    ge rx164_pos, rx164_eos, rx164_fail448
    substr $S11, rx164_tgt, rx164_pos, 1
    index $I11, ucs4:"\\", $S11
    lt $I11, 0, rx164_fail448
    inc rx164_pos
    add $I11, rx164_pos, 1
    gt $I11, rx164_eos, rx164_fail448
    substr $S10, rx164_tgt, rx164_pos, 1
    ne $S10, ucs4:"t", rx164_fail448
    add rx164_pos, 1
    repr_bind_attr_int rx164_cur, rx164_curclass, "$!pos", rx164_pos
    $P11 = rx164_cur."quotemod_check"("b")
    repr_get_attr_int $I11, $P11, rx164_curclass, "$!pos"
    lt $I11, 0, rx164_fail448
    rx164_cur."!cursor_pass"(rx164_pos, "quote_escape:sym<tab>", 'backtrack'=>1)
    .return (rx164_cur)
  rx164_restart447:
    repr_get_attr_obj rx164_cstack, rx164_cur, rx164_curclass, "$!cstack"
  rx164_fail448:
    unless rx164_bstack, rx164_done446
    pop $I19, rx164_bstack
    if_null rx164_cstack, rx164_cstack_done451
    unless rx164_cstack, rx164_cstack_done451
    dec $I19
    set $P11, rx164_cstack[$I19]
  rx164_cstack_done451:
    pop rx164_rep, rx164_bstack
    pop rx164_pos, rx164_bstack
    pop $I19, rx164_bstack
    lt rx164_pos, -1, rx164_done446
    lt rx164_pos, 0, rx164_fail448
    eq $I19, 0, rx164_fail448
    nqp_islist $I20, rx164_cstack
    unless $I20, rx164_jump449
    elements $I18, rx164_bstack
    le $I18, 0, rx164_cut450
    dec $I18
    set $I18, rx164_bstack[$I18]
  rx164_cut450:
    assign rx164_cstack, $I18
  rx164_jump449:
    jump $I19
  rx164_done446:
    rx164_cur."!cursor_fail"()
    .return (rx164_cur) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<ff>" :subid("cuid_58_1383914954.64741") :anon :lex :outer("cuid_236_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 242
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx166_start
    .local string rx166_tgt
    .local int rx166_pos
    .local int rx166_off
    .local int rx166_eos
    .local int rx166_rep
    .local pmc rx166_cur
    .local pmc rx166_curclass
    .local pmc rx166_bstack
    .local pmc rx166_cstack
    rx166_start = self."!cursor_start_all"()
    set rx166_cur, rx166_start[0]
    set rx166_tgt, rx166_start[1]
    set rx166_pos, rx166_start[2]
    set rx166_curclass, rx166_start[3]
    set rx166_bstack, rx166_start[4]
    set $I19, rx166_start[5]
    store_lex unicode:"$\x{a2}", rx166_cur
    length rx166_eos, rx166_tgt
    eq $I19, 1, rx166_restart457
    gt rx166_pos, rx166_eos, rx166_fail458
    repr_get_attr_int $I11, self, rx166_curclass, "$!from"
    ne $I11, -1, rxscan167_done464
    goto rxscan167_scan463
  rxscan167_loop462:
    inc rx166_pos
    gt rx166_pos, rx166_eos, rx166_fail458
    repr_bind_attr_int rx166_cur, rx166_curclass, "$!from", rx166_pos
  rxscan167_scan463:
    nqp_rxmark rx166_bstack, rxscan167_loop462, rx166_pos, 0
  rxscan167_done464:
    ge rx166_pos, rx166_eos, rx166_fail458
    substr $S11, rx166_tgt, rx166_pos, 1
    index $I11, ucs4:"\\", $S11
    lt $I11, 0, rx166_fail458
    inc rx166_pos
    add $I11, rx166_pos, 1
    gt $I11, rx166_eos, rx166_fail458
    substr $S10, rx166_tgt, rx166_pos, 1
    ne $S10, ucs4:"f", rx166_fail458
    add rx166_pos, 1
    repr_bind_attr_int rx166_cur, rx166_curclass, "$!pos", rx166_pos
    $P11 = rx166_cur."quotemod_check"("b")
    repr_get_attr_int $I11, $P11, rx166_curclass, "$!pos"
    lt $I11, 0, rx166_fail458
    rx166_cur."!cursor_pass"(rx166_pos, "quote_escape:sym<ff>", 'backtrack'=>1)
    .return (rx166_cur)
  rx166_restart457:
    repr_get_attr_obj rx166_cstack, rx166_cur, rx166_curclass, "$!cstack"
  rx166_fail458:
    unless rx166_bstack, rx166_done456
    pop $I19, rx166_bstack
    if_null rx166_cstack, rx166_cstack_done461
    unless rx166_cstack, rx166_cstack_done461
    dec $I19
    set $P11, rx166_cstack[$I19]
  rx166_cstack_done461:
    pop rx166_rep, rx166_bstack
    pop rx166_pos, rx166_bstack
    pop $I19, rx166_bstack
    lt rx166_pos, -1, rx166_done456
    lt rx166_pos, 0, rx166_fail458
    eq $I19, 0, rx166_fail458
    nqp_islist $I20, rx166_cstack
    unless $I20, rx166_jump459
    elements $I18, rx166_bstack
    le $I18, 0, rx166_cut460
    dec $I18
    set $I18, rx166_bstack[$I18]
  rx166_cut460:
    assign rx166_cstack, $I18
  rx166_jump459:
    jump $I19
  rx166_done456:
    rx166_cur."!cursor_fail"()
    .return (rx166_cur) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<esc>" :subid("cuid_59_1383914954.64741") :anon :lex :outer("cuid_236_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 243
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx168_start
    .local string rx168_tgt
    .local int rx168_pos
    .local int rx168_off
    .local int rx168_eos
    .local int rx168_rep
    .local pmc rx168_cur
    .local pmc rx168_curclass
    .local pmc rx168_bstack
    .local pmc rx168_cstack
    rx168_start = self."!cursor_start_all"()
    set rx168_cur, rx168_start[0]
    set rx168_tgt, rx168_start[1]
    set rx168_pos, rx168_start[2]
    set rx168_curclass, rx168_start[3]
    set rx168_bstack, rx168_start[4]
    set $I19, rx168_start[5]
    store_lex unicode:"$\x{a2}", rx168_cur
    length rx168_eos, rx168_tgt
    eq $I19, 1, rx168_restart467
    gt rx168_pos, rx168_eos, rx168_fail468
    repr_get_attr_int $I11, self, rx168_curclass, "$!from"
    ne $I11, -1, rxscan169_done474
    goto rxscan169_scan473
  rxscan169_loop472:
    inc rx168_pos
    gt rx168_pos, rx168_eos, rx168_fail468
    repr_bind_attr_int rx168_cur, rx168_curclass, "$!from", rx168_pos
  rxscan169_scan473:
    nqp_rxmark rx168_bstack, rxscan169_loop472, rx168_pos, 0
  rxscan169_done474:
    ge rx168_pos, rx168_eos, rx168_fail468
    substr $S11, rx168_tgt, rx168_pos, 1
    index $I11, ucs4:"\\", $S11
    lt $I11, 0, rx168_fail468
    inc rx168_pos
    add $I11, rx168_pos, 1
    gt $I11, rx168_eos, rx168_fail468
    substr $S10, rx168_tgt, rx168_pos, 1
    ne $S10, ucs4:"e", rx168_fail468
    add rx168_pos, 1
    repr_bind_attr_int rx168_cur, rx168_curclass, "$!pos", rx168_pos
    $P11 = rx168_cur."quotemod_check"("b")
    repr_get_attr_int $I11, $P11, rx168_curclass, "$!pos"
    lt $I11, 0, rx168_fail468
    rx168_cur."!cursor_pass"(rx168_pos, "quote_escape:sym<esc>", 'backtrack'=>1)
    .return (rx168_cur)
  rx168_restart467:
    repr_get_attr_obj rx168_cstack, rx168_cur, rx168_curclass, "$!cstack"
  rx168_fail468:
    unless rx168_bstack, rx168_done466
    pop $I19, rx168_bstack
    if_null rx168_cstack, rx168_cstack_done471
    unless rx168_cstack, rx168_cstack_done471
    dec $I19
    set $P11, rx168_cstack[$I19]
  rx168_cstack_done471:
    pop rx168_rep, rx168_bstack
    pop rx168_pos, rx168_bstack
    pop $I19, rx168_bstack
    lt rx168_pos, -1, rx168_done466
    lt rx168_pos, 0, rx168_fail468
    eq $I19, 0, rx168_fail468
    nqp_islist $I20, rx168_cstack
    unless $I20, rx168_jump469
    elements $I18, rx168_bstack
    le $I18, 0, rx168_cut470
    dec $I18
    set $I18, rx168_bstack[$I18]
  rx168_cut470:
    assign rx168_cstack, $I18
  rx168_jump469:
    jump $I19
  rx168_done466:
    rx168_cur."!cursor_fail"()
    .return (rx168_cur) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<hex>" :subid("cuid_60_1383914954.64741") :anon :lex :outer("cuid_236_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 244
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx170_start
    .local string rx170_tgt
    .local int rx170_pos
    .local int rx170_off
    .local int rx170_eos
    .local int rx170_rep
    .local pmc rx170_cur
    .local pmc rx170_curclass
    .local pmc rx170_bstack
    .local pmc rx170_cstack
    rx170_start = self."!cursor_start_all"()
    set rx170_cur, rx170_start[0]
    set rx170_tgt, rx170_start[1]
    set rx170_pos, rx170_start[2]
    set rx170_curclass, rx170_start[3]
    set rx170_bstack, rx170_start[4]
    set $I19, rx170_start[5]
    store_lex unicode:"$\x{a2}", rx170_cur
    length rx170_eos, rx170_tgt
    eq $I19, 1, rx170_restart477
    gt rx170_pos, rx170_eos, rx170_fail478
    repr_get_attr_int $I11, self, rx170_curclass, "$!from"
    ne $I11, -1, rxscan171_done484
    goto rxscan171_scan483
  rxscan171_loop482:
    inc rx170_pos
    gt rx170_pos, rx170_eos, rx170_fail478
    repr_bind_attr_int rx170_cur, rx170_curclass, "$!from", rx170_pos
  rxscan171_scan483:
    nqp_rxmark rx170_bstack, rxscan171_loop482, rx170_pos, 0
  rxscan171_done484:
    ge rx170_pos, rx170_eos, rx170_fail478
    substr $S11, rx170_tgt, rx170_pos, 1
    index $I11, ucs4:"\\", $S11
    lt $I11, 0, rx170_fail478
    inc rx170_pos
    add $I11, rx170_pos, 1
    gt $I11, rx170_eos, rx170_fail478
    substr $S10, rx170_tgt, rx170_pos, 1
    ne $S10, ucs4:"x", rx170_fail478
    add rx170_pos, 1
    repr_bind_attr_int rx170_cur, rx170_curclass, "$!pos", rx170_pos
    $P11 = rx170_cur."quotemod_check"("b")
    repr_get_attr_int $I11, $P11, rx170_curclass, "$!pos"
    lt $I11, 0, rx170_fail478
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt172_0486
    nqp_push_label $P11, alt172_1488
    nqp_rxmark rx170_bstack, alt172_end485, -1, 0
    rx170_cur."!alt"(rx170_pos, "alt_nfa__6_1383914956.20842", $P11)
    goto rx170_fail478
  alt172_0486:
    repr_bind_attr_int rx170_cur, rx170_curclass, "$!pos", rx170_pos
    $P11 = rx170_cur."hexint"()
    repr_get_attr_int $I11, $P11, rx170_curclass, "$!pos"
    lt $I11, 0, rx170_fail478
    nqp_rxmark rx170_bstack, rxsubrule173_pass487, -1, 0
  rxsubrule173_pass487:
    rx170_cstack = rx170_cur."!cursor_capture"($P11, "hexint")
    repr_get_attr_int rx170_pos, $P11, rx170_curclass, "$!pos"
    goto alt172_end485
  alt172_1488:
    add $I11, rx170_pos, 1
    gt $I11, rx170_eos, rx170_fail478
    substr $S10, rx170_tgt, rx170_pos, 1
    ne $S10, ucs4:"[", rx170_fail478
    add rx170_pos, 1
    repr_bind_attr_int rx170_cur, rx170_curclass, "$!pos", rx170_pos
    $P11 = rx170_cur."hexints"()
    repr_get_attr_int $I11, $P11, rx170_curclass, "$!pos"
    lt $I11, 0, rx170_fail478
    nqp_rxmark rx170_bstack, rxsubrule174_pass489, -1, 0
  rxsubrule174_pass489:
    rx170_cstack = rx170_cur."!cursor_capture"($P11, "hexints")
    repr_get_attr_int rx170_pos, $P11, rx170_curclass, "$!pos"
    add $I11, rx170_pos, 1
    gt $I11, rx170_eos, rx170_fail478
    substr $S10, rx170_tgt, rx170_pos, 1
    ne $S10, ucs4:"]", rx170_fail478
    add rx170_pos, 1
    goto alt172_end485
  alt172_end485:
    nqp_rxcommit rx170_bstack, alt172_end485
    rx170_cur."!cursor_pass"(rx170_pos, "quote_escape:sym<hex>", 'backtrack'=>1)
    .return (rx170_cur)
  rx170_restart477:
    repr_get_attr_obj rx170_cstack, rx170_cur, rx170_curclass, "$!cstack"
  rx170_fail478:
    unless rx170_bstack, rx170_done476
    pop $I19, rx170_bstack
    if_null rx170_cstack, rx170_cstack_done481
    unless rx170_cstack, rx170_cstack_done481
    dec $I19
    set $P11, rx170_cstack[$I19]
  rx170_cstack_done481:
    pop rx170_rep, rx170_bstack
    pop rx170_pos, rx170_bstack
    pop $I19, rx170_bstack
    lt rx170_pos, -1, rx170_done476
    lt rx170_pos, 0, rx170_fail478
    eq $I19, 0, rx170_fail478
    nqp_islist $I20, rx170_cstack
    unless $I20, rx170_jump479
    elements $I18, rx170_bstack
    le $I18, 0, rx170_cut480
    dec $I18
    set $I18, rx170_bstack[$I18]
  rx170_cut480:
    assign rx170_cstack, $I18
  rx170_jump479:
    jump $I19
  rx170_done476:
    rx170_cur."!cursor_fail"()
    .return (rx170_cur) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<oct>" :subid("cuid_61_1383914954.64741") :anon :lex :outer("cuid_236_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 248
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx175_start
    .local string rx175_tgt
    .local int rx175_pos
    .local int rx175_off
    .local int rx175_eos
    .local int rx175_rep
    .local pmc rx175_cur
    .local pmc rx175_curclass
    .local pmc rx175_bstack
    .local pmc rx175_cstack
    rx175_start = self."!cursor_start_all"()
    set rx175_cur, rx175_start[0]
    set rx175_tgt, rx175_start[1]
    set rx175_pos, rx175_start[2]
    set rx175_curclass, rx175_start[3]
    set rx175_bstack, rx175_start[4]
    set $I19, rx175_start[5]
    store_lex unicode:"$\x{a2}", rx175_cur
    length rx175_eos, rx175_tgt
    eq $I19, 1, rx175_restart492
    gt rx175_pos, rx175_eos, rx175_fail493
    repr_get_attr_int $I11, self, rx175_curclass, "$!from"
    ne $I11, -1, rxscan176_done499
    goto rxscan176_scan498
  rxscan176_loop497:
    inc rx175_pos
    gt rx175_pos, rx175_eos, rx175_fail493
    repr_bind_attr_int rx175_cur, rx175_curclass, "$!from", rx175_pos
  rxscan176_scan498:
    nqp_rxmark rx175_bstack, rxscan176_loop497, rx175_pos, 0
  rxscan176_done499:
    ge rx175_pos, rx175_eos, rx175_fail493
    substr $S11, rx175_tgt, rx175_pos, 1
    index $I11, ucs4:"\\", $S11
    lt $I11, 0, rx175_fail493
    inc rx175_pos
    add $I11, rx175_pos, 1
    gt $I11, rx175_eos, rx175_fail493
    substr $S10, rx175_tgt, rx175_pos, 1
    ne $S10, ucs4:"o", rx175_fail493
    add rx175_pos, 1
    repr_bind_attr_int rx175_cur, rx175_curclass, "$!pos", rx175_pos
    $P11 = rx175_cur."quotemod_check"("b")
    repr_get_attr_int $I11, $P11, rx175_curclass, "$!pos"
    lt $I11, 0, rx175_fail493
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt177_0501
    nqp_push_label $P11, alt177_1503
    nqp_rxmark rx175_bstack, alt177_end500, -1, 0
    rx175_cur."!alt"(rx175_pos, "alt_nfa__7_1383914956.23174", $P11)
    goto rx175_fail493
  alt177_0501:
    repr_bind_attr_int rx175_cur, rx175_curclass, "$!pos", rx175_pos
    $P11 = rx175_cur."octint"()
    repr_get_attr_int $I11, $P11, rx175_curclass, "$!pos"
    lt $I11, 0, rx175_fail493
    nqp_rxmark rx175_bstack, rxsubrule178_pass502, -1, 0
  rxsubrule178_pass502:
    rx175_cstack = rx175_cur."!cursor_capture"($P11, "octint")
    repr_get_attr_int rx175_pos, $P11, rx175_curclass, "$!pos"
    goto alt177_end500
  alt177_1503:
    add $I11, rx175_pos, 1
    gt $I11, rx175_eos, rx175_fail493
    substr $S10, rx175_tgt, rx175_pos, 1
    ne $S10, ucs4:"[", rx175_fail493
    add rx175_pos, 1
    repr_bind_attr_int rx175_cur, rx175_curclass, "$!pos", rx175_pos
    $P11 = rx175_cur."octints"()
    repr_get_attr_int $I11, $P11, rx175_curclass, "$!pos"
    lt $I11, 0, rx175_fail493
    nqp_rxmark rx175_bstack, rxsubrule179_pass504, -1, 0
  rxsubrule179_pass504:
    rx175_cstack = rx175_cur."!cursor_capture"($P11, "octints")
    repr_get_attr_int rx175_pos, $P11, rx175_curclass, "$!pos"
    add $I11, rx175_pos, 1
    gt $I11, rx175_eos, rx175_fail493
    substr $S10, rx175_tgt, rx175_pos, 1
    ne $S10, ucs4:"]", rx175_fail493
    add rx175_pos, 1
    goto alt177_end500
  alt177_end500:
    nqp_rxcommit rx175_bstack, alt177_end500
    rx175_cur."!cursor_pass"(rx175_pos, "quote_escape:sym<oct>", 'backtrack'=>1)
    .return (rx175_cur)
  rx175_restart492:
    repr_get_attr_obj rx175_cstack, rx175_cur, rx175_curclass, "$!cstack"
  rx175_fail493:
    unless rx175_bstack, rx175_done491
    pop $I19, rx175_bstack
    if_null rx175_cstack, rx175_cstack_done496
    unless rx175_cstack, rx175_cstack_done496
    dec $I19
    set $P11, rx175_cstack[$I19]
  rx175_cstack_done496:
    pop rx175_rep, rx175_bstack
    pop rx175_pos, rx175_bstack
    pop $I19, rx175_bstack
    lt rx175_pos, -1, rx175_done491
    lt rx175_pos, 0, rx175_fail493
    eq $I19, 0, rx175_fail493
    nqp_islist $I20, rx175_cstack
    unless $I20, rx175_jump494
    elements $I18, rx175_bstack
    le $I18, 0, rx175_cut495
    dec $I18
    set $I18, rx175_bstack[$I18]
  rx175_cut495:
    assign rx175_cstack, $I18
  rx175_jump494:
    jump $I19
  rx175_done491:
    rx175_cur."!cursor_fail"()
    .return (rx175_cur) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<chr>" :subid("cuid_62_1383914954.64741") :anon :lex :outer("cuid_236_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 252
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx180_start
    .local string rx180_tgt
    .local int rx180_pos
    .local int rx180_off
    .local int rx180_eos
    .local int rx180_rep
    .local pmc rx180_cur
    .local pmc rx180_curclass
    .local pmc rx180_bstack
    .local pmc rx180_cstack
    rx180_start = self."!cursor_start_all"()
    set rx180_cur, rx180_start[0]
    set rx180_tgt, rx180_start[1]
    set rx180_pos, rx180_start[2]
    set rx180_curclass, rx180_start[3]
    set rx180_bstack, rx180_start[4]
    set $I19, rx180_start[5]
    store_lex unicode:"$\x{a2}", rx180_cur
    length rx180_eos, rx180_tgt
    eq $I19, 1, rx180_restart507
    gt rx180_pos, rx180_eos, rx180_fail508
    repr_get_attr_int $I11, self, rx180_curclass, "$!from"
    ne $I11, -1, rxscan181_done514
    goto rxscan181_scan513
  rxscan181_loop512:
    inc rx180_pos
    gt rx180_pos, rx180_eos, rx180_fail508
    repr_bind_attr_int rx180_cur, rx180_curclass, "$!from", rx180_pos
  rxscan181_scan513:
    nqp_rxmark rx180_bstack, rxscan181_loop512, rx180_pos, 0
  rxscan181_done514:
    ge rx180_pos, rx180_eos, rx180_fail508
    substr $S11, rx180_tgt, rx180_pos, 1
    index $I11, ucs4:"\\", $S11
    lt $I11, 0, rx180_fail508
    inc rx180_pos
    add $I11, rx180_pos, 1
    gt $I11, rx180_eos, rx180_fail508
    substr $S10, rx180_tgt, rx180_pos, 1
    ne $S10, ucs4:"c", rx180_fail508
    add rx180_pos, 1
    repr_bind_attr_int rx180_cur, rx180_curclass, "$!pos", rx180_pos
    $P11 = rx180_cur."quotemod_check"("b")
    repr_get_attr_int $I11, $P11, rx180_curclass, "$!pos"
    lt $I11, 0, rx180_fail508
    repr_bind_attr_int rx180_cur, rx180_curclass, "$!pos", rx180_pos
    $P11 = rx180_cur."charspec"()
    repr_get_attr_int $I11, $P11, rx180_curclass, "$!pos"
    lt $I11, 0, rx180_fail508
    nqp_rxmark rx180_bstack, rxsubrule182_pass515, -1, 0
  rxsubrule182_pass515:
    rx180_cstack = rx180_cur."!cursor_capture"($P11, "charspec")
    repr_get_attr_int rx180_pos, $P11, rx180_curclass, "$!pos"
    rx180_cur."!cursor_pass"(rx180_pos, "quote_escape:sym<chr>", 'backtrack'=>1)
    .return (rx180_cur)
  rx180_restart507:
    repr_get_attr_obj rx180_cstack, rx180_cur, rx180_curclass, "$!cstack"
  rx180_fail508:
    unless rx180_bstack, rx180_done506
    pop $I19, rx180_bstack
    if_null rx180_cstack, rx180_cstack_done511
    unless rx180_cstack, rx180_cstack_done511
    dec $I19
    set $P11, rx180_cstack[$I19]
  rx180_cstack_done511:
    pop rx180_rep, rx180_bstack
    pop rx180_pos, rx180_bstack
    pop $I19, rx180_bstack
    lt rx180_pos, -1, rx180_done506
    lt rx180_pos, 0, rx180_fail508
    eq $I19, 0, rx180_fail508
    nqp_islist $I20, rx180_cstack
    unless $I20, rx180_jump509
    elements $I18, rx180_bstack
    le $I18, 0, rx180_cut510
    dec $I18
    set $I18, rx180_bstack[$I18]
  rx180_cut510:
    assign rx180_cstack, $I18
  rx180_jump509:
    jump $I19
  rx180_done506:
    rx180_cur."!cursor_fail"()
    .return (rx180_cur) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<0>" :subid("cuid_63_1383914954.64741") :anon :lex :outer("cuid_236_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 253
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
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
    eq $I19, 1, rx183_restart518
    gt rx183_pos, rx183_eos, rx183_fail519
    repr_get_attr_int $I11, self, rx183_curclass, "$!from"
    ne $I11, -1, rxscan184_done525
    goto rxscan184_scan524
  rxscan184_loop523:
    inc rx183_pos
    gt rx183_pos, rx183_eos, rx183_fail519
    repr_bind_attr_int rx183_cur, rx183_curclass, "$!from", rx183_pos
  rxscan184_scan524:
    nqp_rxmark rx183_bstack, rxscan184_loop523, rx183_pos, 0
  rxscan184_done525:
    ge rx183_pos, rx183_eos, rx183_fail519
    substr $S11, rx183_tgt, rx183_pos, 1
    index $I11, ucs4:"\\", $S11
    lt $I11, 0, rx183_fail519
    inc rx183_pos
    nqp_rxmark rx183_bstack, rxcap185_fail527, rx183_pos, 0
    add $I11, rx183_pos, 1
    gt $I11, rx183_eos, rx183_fail519
    substr $S10, rx183_tgt, rx183_pos, 1
    ne $S10, ucs4:"0", rx183_fail519
    add rx183_pos, 1
    nqp_rxpeek $I19, rx183_bstack, rxcap185_fail527
    inc $I19
    set $I11, rx183_bstack[$I19]
    repr_bind_attr_int rx183_cur, rx183_curclass, "$!pos", rx183_pos
    $P11 = rx183_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx183_pos)
    rx183_cstack = rx183_cur."!cursor_capture"($P11, "sym")
    goto rxcap185_done526
  rxcap185_fail527:
    goto rx183_fail519
  rxcap185_done526:
    repr_bind_attr_int rx183_cur, rx183_curclass, "$!pos", rx183_pos
    $P11 = rx183_cur."quotemod_check"("b")
    repr_get_attr_int $I11, $P11, rx183_curclass, "$!pos"
    lt $I11, 0, rx183_fail519
    rx183_cur."!cursor_pass"(rx183_pos, "quote_escape:sym<0>", 'backtrack'=>1)
    .return (rx183_cur)
  rx183_restart518:
    repr_get_attr_obj rx183_cstack, rx183_cur, rx183_curclass, "$!cstack"
  rx183_fail519:
    unless rx183_bstack, rx183_done517
    pop $I19, rx183_bstack
    if_null rx183_cstack, rx183_cstack_done522
    unless rx183_cstack, rx183_cstack_done522
    dec $I19
    set $P11, rx183_cstack[$I19]
  rx183_cstack_done522:
    pop rx183_rep, rx183_bstack
    pop rx183_pos, rx183_bstack
    pop $I19, rx183_bstack
    lt rx183_pos, -1, rx183_done517
    lt rx183_pos, 0, rx183_fail519
    eq $I19, 0, rx183_fail519
    nqp_islist $I20, rx183_cstack
    unless $I20, rx183_jump520
    elements $I18, rx183_bstack
    le $I18, 0, rx183_cut521
    dec $I18
    set $I18, rx183_bstack[$I18]
  rx183_cut521:
    assign rx183_cstack, $I18
  rx183_jump520:
    jump $I19
  rx183_done517:
    rx183_cur."!cursor_fail"()
    .return (rx183_cur) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<misc>" :subid("cuid_64_1383914954.64741") :anon :lex :outer("cuid_236_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 254
    .param pmc _lex_param_0 
    .const 'Sub' $P5009 = 'cuid_237_1383914954.64741' 
    capture_lex $P5009 
    .const 'Sub' $P5009 = 'cuid_65_1383914954.64741' 
    capture_lex $P5009 
    .const 'Sub' $P5009 = 'cuid_66_1383914954.64741' 
    capture_lex $P5009 
    .const 'Sub' $P5009 = 'cuid_238_1383914954.64741' 
    capture_lex $P5009 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
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
    eq $I19, 1, rx186_restart530
    gt rx186_pos, rx186_eos, rx186_fail531
    repr_get_attr_int $I11, self, rx186_curclass, "$!from"
    ne $I11, -1, rxscan187_done537
    goto rxscan187_scan536
  rxscan187_loop535:
    inc rx186_pos
    gt rx186_pos, rx186_eos, rx186_fail531
    repr_bind_attr_int rx186_cur, rx186_curclass, "$!from", rx186_pos
  rxscan187_scan536:
    nqp_rxmark rx186_bstack, rxscan187_loop535, rx186_pos, 0
  rxscan187_done537:
    ge rx186_pos, rx186_eos, rx186_fail531
    substr $S11, rx186_tgt, rx186_pos, 1
    index $I11, ucs4:"\\", $S11
    lt $I11, 0, rx186_fail531
    inc rx186_pos
    repr_bind_attr_int rx186_cur, rx186_curclass, "$!pos", rx186_pos
    store_lex unicode:"$\x{a2}", rx186_cur
    $P5001 = $P101."MATCH"()
    set $P102, $P5001
    .const 'Sub' $P5002 = 'cuid_237_1383914954.64741' 
    capture_lex $P5002
    $P5003 = $P5002()
  alt188_0539:
    nqp_rxmark rx186_bstack, alt188_1568, rx186_pos, 0
    repr_bind_attr_int rx186_cur, rx186_curclass, "$!pos", rx186_pos
    $P11 = rx186_cur."quotemod_check"("b")
    repr_get_attr_int $I11, $P11, rx186_curclass, "$!pos"
    lt $I11, 0, rx186_fail531
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt189_0541
    nqp_push_label $P11, alt189_1553
    nqp_rxmark rx186_bstack, alt189_end540, -1, 0
    rx186_cur."!alt"(rx186_pos, "alt_nfa__8_1383914956.30432", $P11)
    goto rx186_fail531
  alt189_0541:
    .const 'Sub' $P5004 = 'cuid_65_1383914954.64741' 
    capture_lex $P5004
    repr_bind_attr_int rx186_cur, rx186_curclass, "$!pos", rx186_pos
    $P11 = rx186_cur.$P5004()
    repr_get_attr_int $I11, $P11, rx186_curclass, "$!pos"
    lt $I11, 0, rx186_fail531
    nqp_rxmark rx186_bstack, rxsubrule192_pass552, -1, 0
  rxsubrule192_pass552:
    rx186_cstack = rx186_cur."!cursor_capture"($P11, "textqq")
    repr_get_attr_int rx186_pos, $P11, rx186_curclass, "$!pos"
    goto alt189_end540
  alt189_1553:
    .const 'Sub' $P5005 = 'cuid_66_1383914954.64741' 
    capture_lex $P5005
    repr_bind_attr_int rx186_cur, rx186_curclass, "$!pos", rx186_pos
    $P11 = rx186_cur.$P5005()
    repr_get_attr_int $I11, $P11, rx186_curclass, "$!pos"
    lt $I11, 0, rx186_fail531
    nqp_rxmark rx186_bstack, rxsubrule195_pass564, -1, 0
  rxsubrule195_pass564:
    rx186_cstack = rx186_cur."!cursor_capture"($P11, "0")
    repr_get_attr_int rx186_pos, $P11, rx186_curclass, "$!pos"
    repr_bind_attr_int rx186_cur, rx186_curclass, "$!pos", rx186_pos
    store_lex unicode:"$\x{a2}", rx186_cur
    $P5006 = $P101."MATCH"()
    set $P102, $P5006
    .const 'Sub' $P5007 = 'cuid_238_1383914954.64741' 
    capture_lex $P5007
    $P5008 = $P5007()
    goto alt189_end540
  alt189_end540:
    nqp_rxcommit rx186_bstack, alt189_end540
    goto alt188_end538
  alt188_1568:
    nqp_rxmark rx186_bstack, rxcap198_fail570, rx186_pos, 0
    ge rx186_pos, rx186_eos, rx186_fail531
    add rx186_pos, 1
    nqp_rxpeek $I19, rx186_bstack, rxcap198_fail570
    inc $I19
    set $I11, rx186_bstack[$I19]
    repr_bind_attr_int rx186_cur, rx186_curclass, "$!pos", rx186_pos
    $P11 = rx186_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx186_pos)
    rx186_cstack = rx186_cur."!cursor_capture"($P11, "textq")
    goto rxcap198_done569
  rxcap198_fail570:
    goto rx186_fail531
  rxcap198_done569:
  alt188_end538:
    rx186_cur."!cursor_pass"(rx186_pos, "quote_escape:sym<misc>", 'backtrack'=>1)
    .return (rx186_cur)
  rx186_restart530:
    repr_get_attr_obj rx186_cstack, rx186_cur, rx186_curclass, "$!cstack"
  rx186_fail531:
    unless rx186_bstack, rx186_done529
    pop $I19, rx186_bstack
    if_null rx186_cstack, rx186_cstack_done534
    unless rx186_cstack, rx186_cstack_done534
    dec $I19
    set $P11, rx186_cstack[$I19]
  rx186_cstack_done534:
    pop rx186_rep, rx186_bstack
    pop rx186_pos, rx186_bstack
    pop $I19, rx186_bstack
    lt rx186_pos, -1, rx186_done529
    lt rx186_pos, 0, rx186_fail531
    eq $I19, 0, rx186_fail531
    nqp_islist $I20, rx186_cstack
    unless $I20, rx186_jump532
    elements $I18, rx186_bstack
    le $I18, 0, rx186_cut533
    dec $I18
    set $I18, rx186_bstack[$I18]
  rx186_cut533:
    assign rx186_cstack, $I18
  rx186_jump532:
    jump $I19
  rx186_done529:
    rx186_cur."!cursor_fail"()
    .return (rx186_cur) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_237_1383914954.64741") :anon :lex :outer("cuid_64_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 255

    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_65_1383914954.64741") :anon :lex :outer("cuid_64_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
    .param pmc self 
    .lex utf8:"$\x{a2}", $P101 
    .local pmc rx190_start
    .local string rx190_tgt
    .local int rx190_pos
    .local int rx190_off
    .local int rx190_eos
    .local int rx190_rep
    .local pmc rx190_cur
    .local pmc rx190_curclass
    .local pmc rx190_bstack
    .local pmc rx190_cstack
    rx190_start = self."!cursor_start_all"()
    set rx190_cur, rx190_start[0]
    set rx190_tgt, rx190_start[1]
    set rx190_pos, rx190_start[2]
    set rx190_curclass, rx190_start[3]
    set rx190_bstack, rx190_start[4]
    set $I19, rx190_start[5]
    store_lex unicode:"$\x{a2}", rx190_cur
    length rx190_eos, rx190_tgt
    eq $I19, 1, rx190_restart544
    gt rx190_pos, rx190_eos, rx190_fail545
    repr_get_attr_int $I11, self, rx190_curclass, "$!from"
    ne $I11, -1, rxscan191_done551
    goto rxscan191_scan550
  rxscan191_loop549:
    inc rx190_pos
    gt rx190_pos, rx190_eos, rx190_fail545
    repr_bind_attr_int rx190_cur, rx190_curclass, "$!from", rx190_pos
  rxscan191_scan550:
    nqp_rxmark rx190_bstack, rxscan191_loop549, rx190_pos, 0
  rxscan191_done551:
    ge rx190_pos, rx190_eos, rx190_fail545
    is_cclass $I11, .CCLASS_WORD, rx190_tgt, rx190_pos
    if $I11, rx190_fail545
    add rx190_pos, 1
    rx190_cur."!cursor_pass"(rx190_pos, 'backtrack'=>1)
    .return (rx190_cur)
  rx190_restart544:
    repr_get_attr_obj rx190_cstack, rx190_cur, rx190_curclass, "$!cstack"
  rx190_fail545:
    unless rx190_bstack, rx190_done543
    pop $I19, rx190_bstack
    if_null rx190_cstack, rx190_cstack_done548
    unless rx190_cstack, rx190_cstack_done548
    dec $I19
    set $P11, rx190_cstack[$I19]
  rx190_cstack_done548:
    pop rx190_rep, rx190_bstack
    pop rx190_pos, rx190_bstack
    pop $I19, rx190_bstack
    lt rx190_pos, -1, rx190_done543
    lt rx190_pos, 0, rx190_fail545
    eq $I19, 0, rx190_fail545
    nqp_islist $I20, rx190_cstack
    unless $I20, rx190_jump546
    elements $I18, rx190_bstack
    le $I18, 0, rx190_cut547
    dec $I18
    set $I18, rx190_bstack[$I18]
  rx190_cut547:
    assign rx190_cstack, $I18
  rx190_jump546:
    jump $I19
  rx190_done543:
    rx190_cur."!cursor_fail"()
    .return (rx190_cur) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_66_1383914954.64741") :anon :lex :outer("cuid_64_1383914954.64741")
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
    eq $I19, 1, rx193_restart556
    gt rx193_pos, rx193_eos, rx193_fail557
    repr_get_attr_int $I11, self, rx193_curclass, "$!from"
    ne $I11, -1, rxscan194_done563
    goto rxscan194_scan562
  rxscan194_loop561:
    inc rx193_pos
    gt rx193_pos, rx193_eos, rx193_fail557
    repr_bind_attr_int rx193_cur, rx193_curclass, "$!from", rx193_pos
  rxscan194_scan562:
    nqp_rxmark rx193_bstack, rxscan194_loop561, rx193_pos, 0
  rxscan194_done563:
    ge rx193_pos, rx193_eos, rx193_fail557
    is_cclass $I11, .CCLASS_WORD, rx193_tgt, rx193_pos
    unless $I11, rx193_fail557
    add rx193_pos, 1
    rx193_cur."!cursor_pass"(rx193_pos, 'backtrack'=>1)
    .return (rx193_cur)
  rx193_restart556:
    repr_get_attr_obj rx193_cstack, rx193_cur, rx193_curclass, "$!cstack"
  rx193_fail557:
    unless rx193_bstack, rx193_done555
    pop $I19, rx193_bstack
    if_null rx193_cstack, rx193_cstack_done560
    unless rx193_cstack, rx193_cstack_done560
    dec $I19
    set $P11, rx193_cstack[$I19]
  rx193_cstack_done560:
    pop rx193_rep, rx193_bstack
    pop rx193_pos, rx193_bstack
    pop $I19, rx193_bstack
    lt rx193_pos, -1, rx193_done555
    lt rx193_pos, 0, rx193_fail557
    eq $I19, 0, rx193_fail557
    nqp_islist $I20, rx193_cstack
    unless $I20, rx193_jump558
    elements $I18, rx193_bstack
    le $I18, 0, rx193_cut559
    dec $I18
    set $I18, rx193_bstack[$I18]
  rx193_cut559:
    assign rx193_cstack, $I18
  rx193_jump558:
    jump $I19
  rx193_done555:
    rx193_cur."!cursor_fail"()
    .return (rx193_cur) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_238_1383914954.64741") :anon :lex :outer("cuid_64_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 260
    .local pmc fb_tmp_10 
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    find_lex $P5003, "$/"
    set fb_tmp_10, $P5003
    repr_defined $I5001, fb_tmp_10
    unless $I5001 goto if196_else565 
    set $P5004, fb_tmp_10[0]
    set $P5006, $P5004
    goto if196_end566
  if196_else565:
    null $P5005
    set $P5006, $P5005
  if196_end566:
    unless_null $P5006, vivi_197567
    nqp_get_sc_object $P5007, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5006, $P5007
  vivi_197567:
    $P5008 = $P5006."Str"()
    $P5009 = $P5001."throw_unrecog_backslash_seq"($P5008)
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "charname" :subid("cuid_67_1383914954.64741") :anon :lex :outer("cuid_236_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 266
    .param pmc _lex_param_0 
    .const 'Sub' $P5002 = 'cuid_68_1383914954.64741' 
    capture_lex $P5002 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx199_start
    .local string rx199_tgt
    .local int rx199_pos
    .local int rx199_off
    .local int rx199_eos
    .local int rx199_rep
    .local pmc rx199_cur
    .local pmc rx199_curclass
    .local pmc rx199_bstack
    .local pmc rx199_cstack
    rx199_start = self."!cursor_start_all"()
    set rx199_cur, rx199_start[0]
    set rx199_tgt, rx199_start[1]
    set rx199_pos, rx199_start[2]
    set rx199_curclass, rx199_start[3]
    set rx199_bstack, rx199_start[4]
    set $I19, rx199_start[5]
    store_lex unicode:"$\x{a2}", rx199_cur
    length rx199_eos, rx199_tgt
    eq $I19, 1, rx199_restart573
    gt rx199_pos, rx199_eos, rx199_fail574
    repr_get_attr_int $I11, self, rx199_curclass, "$!from"
    ne $I11, -1, rxscan200_done580
    goto rxscan200_scan579
  rxscan200_loop578:
    inc rx199_pos
    gt rx199_pos, rx199_eos, rx199_fail574
    repr_bind_attr_int rx199_cur, rx199_curclass, "$!from", rx199_pos
  rxscan200_scan579:
    nqp_rxmark rx199_bstack, rxscan200_loop578, rx199_pos, 0
  rxscan200_done580:
  alt201_0582:
    nqp_rxmark rx199_bstack, alt201_1584, rx199_pos, 0
    repr_bind_attr_int rx199_cur, rx199_curclass, "$!pos", rx199_pos
    $P11 = rx199_cur."integer"()
    repr_get_attr_int $I11, $P11, rx199_curclass, "$!pos"
    lt $I11, 0, rx199_fail574
    nqp_rxmark rx199_bstack, rxsubrule202_pass583, -1, 0
  rxsubrule202_pass583:
    rx199_cstack = rx199_cur."!cursor_capture"($P11, "integer")
    repr_get_attr_int rx199_pos, $P11, rx199_curclass, "$!pos"
    goto alt201_end581
  alt201_1584:
    ge rx199_pos, rx199_eos, rx199_fail574
    substr $S11, rx199_tgt, rx199_pos, 1
    index $I11, ucs4:"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ", $S11
    lt $I11, 0, rx199_fail574
    inc rx199_pos
    set rx199_rep, 0
    nqp_rxmark rx199_bstack, rxquantf203_loop585, rx199_pos, rx199_rep
    goto rxquantf203_done586
  rxquantf203_loop585:
    set $I12, rx199_rep
    ge rx199_pos, rx199_eos, rx199_fail574
    substr $S11, rx199_tgt, rx199_pos, 1
    index $I11, ucs4:"],#", $S11
    ge $I11, 0, rx199_fail574
    inc rx199_pos
    set rx199_rep, $I12
    inc rx199_rep
    nqp_rxmark rx199_bstack, rxquantf203_loop585, rx199_pos, rx199_rep
  rxquantf203_done586:
    ge rx199_pos, rx199_eos, rx199_fail574
    substr $S11, rx199_tgt, rx199_pos, 1
    index $I11, ucs4:"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ)", $S11
    lt $I11, 0, rx199_fail574
    inc rx199_pos
    .const 'Sub' $P5001 = 'cuid_68_1383914954.64741' 
    capture_lex $P5001
    repr_bind_attr_int rx199_cur, rx199_curclass, "$!pos", rx199_pos
    $P11 = rx199_cur."before"($P5001)
    repr_get_attr_int $I11, $P11, rx199_curclass, "$!pos"
    lt $I11, 0, rx199_fail574
  alt201_end581:
    rx199_cur."!cursor_pass"(rx199_pos, "charname", 'backtrack'=>1)
    .return (rx199_cur)
  rx199_restart573:
    repr_get_attr_obj rx199_cstack, rx199_cur, rx199_curclass, "$!cstack"
  rx199_fail574:
    unless rx199_bstack, rx199_done572
    pop $I19, rx199_bstack
    if_null rx199_cstack, rx199_cstack_done577
    unless rx199_cstack, rx199_cstack_done577
    dec $I19
    set $P11, rx199_cstack[$I19]
  rx199_cstack_done577:
    pop rx199_rep, rx199_bstack
    pop rx199_pos, rx199_bstack
    pop $I19, rx199_bstack
    lt rx199_pos, -1, rx199_done572
    lt rx199_pos, 0, rx199_fail574
    eq $I19, 0, rx199_fail574
    nqp_islist $I20, rx199_cstack
    unless $I20, rx199_jump575
    elements $I18, rx199_bstack
    le $I18, 0, rx199_cut576
    dec $I18
    set $I18, rx199_bstack[$I18]
  rx199_cut576:
    assign rx199_cstack, $I18
  rx199_jump575:
    jump $I19
  rx199_done572:
    rx199_cur."!cursor_fail"()
    .return (rx199_cur) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_68_1383914954.64741") :anon :lex :outer("cuid_67_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
    .param pmc self 
    .lex utf8:"$\x{a2}", $P101 
    .local pmc rx204_start
    .local string rx204_tgt
    .local int rx204_pos
    .local int rx204_off
    .local int rx204_eos
    .local int rx204_rep
    .local pmc rx204_cur
    .local pmc rx204_curclass
    .local pmc rx204_bstack
    .local pmc rx204_cstack
    rx204_start = self."!cursor_start_all"()
    set rx204_cur, rx204_start[0]
    set rx204_tgt, rx204_start[1]
    set rx204_pos, rx204_start[2]
    set rx204_curclass, rx204_start[3]
    set rx204_bstack, rx204_start[4]
    set $I19, rx204_start[5]
    store_lex unicode:"$\x{a2}", rx204_cur
    length rx204_eos, rx204_tgt
    eq $I19, 1, rx204_restart590
    gt rx204_pos, rx204_eos, rx204_fail591
    repr_get_attr_int $I11, self, rx204_curclass, "$!from"
    ne $I11, -1, rxscan205_done597
    goto rxscan205_scan596
  rxscan205_loop595:
    inc rx204_pos
    gt rx204_pos, rx204_eos, rx204_fail591
    repr_bind_attr_int rx204_cur, rx204_curclass, "$!from", rx204_pos
  rxscan205_scan596:
    nqp_rxmark rx204_bstack, rxscan205_loop595, rx204_pos, 0
  rxscan205_done597:
    nqp_rxmark rx204_bstack, rxquantr206_done599, rx204_pos, 0
  rxquantr206_loop598:
    ge rx204_pos, rx204_eos, rx204_fail591
    is_cclass $I11, .CCLASS_WHITESPACE, rx204_tgt, rx204_pos
    unless $I11, rx204_fail591
    add rx204_pos, 1
    nqp_rxpeek $I19, rx204_bstack, rxquantr206_done599
    inc $I19
    inc $I19
    set rx204_rep, rx204_bstack[$I19]
    nqp_rxcommit rx204_bstack, rxquantr206_done599
    inc rx204_rep
    nqp_rxmark rx204_bstack, rxquantr206_done599, rx204_pos, rx204_rep
    goto rxquantr206_loop598
  rxquantr206_done599:
    ge rx204_pos, rx204_eos, rx204_fail591
    substr $S11, rx204_tgt, rx204_pos, 1
    index $I11, ucs4:"],#", $S11
    lt $I11, 0, rx204_fail591
    inc rx204_pos
    rx204_cur."!cursor_pass"(rx204_pos, 'backtrack'=>1)
    .return (rx204_cur)
  rx204_restart590:
    repr_get_attr_obj rx204_cstack, rx204_cur, rx204_curclass, "$!cstack"
  rx204_fail591:
    unless rx204_bstack, rx204_done589
    pop $I19, rx204_bstack
    if_null rx204_cstack, rx204_cstack_done594
    unless rx204_cstack, rx204_cstack_done594
    dec $I19
    set $P11, rx204_cstack[$I19]
  rx204_cstack_done594:
    pop rx204_rep, rx204_bstack
    pop rx204_pos, rx204_bstack
    pop $I19, rx204_bstack
    lt rx204_pos, -1, rx204_done589
    lt rx204_pos, 0, rx204_fail591
    eq $I19, 0, rx204_fail591
    nqp_islist $I20, rx204_cstack
    unless $I20, rx204_jump592
    elements $I18, rx204_bstack
    le $I18, 0, rx204_cut593
    dec $I18
    set $I18, rx204_bstack[$I18]
  rx204_cut593:
    assign rx204_cstack, $I18
  rx204_jump592:
    jump $I19
  rx204_done589:
    rx204_cur."!cursor_fail"()
    .return (rx204_cur) 
.end
.HLL "nqp"
.namespace []
.sub "charnames" :subid("cuid_69_1383914954.64741") :anon :lex :outer("cuid_236_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 271
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx207_start
    .local string rx207_tgt
    .local int rx207_pos
    .local int rx207_off
    .local int rx207_eos
    .local int rx207_rep
    .local pmc rx207_cur
    .local pmc rx207_curclass
    .local pmc rx207_bstack
    .local pmc rx207_cstack
    rx207_start = self."!cursor_start_all"()
    set rx207_cur, rx207_start[0]
    set rx207_tgt, rx207_start[1]
    set rx207_pos, rx207_start[2]
    set rx207_curclass, rx207_start[3]
    set rx207_bstack, rx207_start[4]
    set $I19, rx207_start[5]
    store_lex unicode:"$\x{a2}", rx207_cur
    length rx207_eos, rx207_tgt
    eq $I19, 1, rx207_restart602
    gt rx207_pos, rx207_eos, rx207_fail603
    repr_get_attr_int $I11, self, rx207_curclass, "$!from"
    ne $I11, -1, rxscan208_done609
    goto rxscan208_scan608
  rxscan208_loop607:
    inc rx207_pos
    gt rx207_pos, rx207_eos, rx207_fail603
    repr_bind_attr_int rx207_cur, rx207_curclass, "$!from", rx207_pos
  rxscan208_scan608:
    nqp_rxmark rx207_bstack, rxscan208_loop607, rx207_pos, 0
  rxscan208_done609:
    nqp_rxmark rx207_bstack, rxquantr209_done611, -1, 0
  rxquantr209_loop610:
    repr_bind_attr_int rx207_cur, rx207_curclass, "$!pos", rx207_pos
    $P11 = rx207_cur."ws"()
    repr_get_attr_int $I11, $P11, rx207_curclass, "$!pos"
    lt $I11, 0, rx207_fail603
    repr_get_attr_int rx207_pos, $P11, rx207_curclass, "$!pos"
    repr_bind_attr_int rx207_cur, rx207_curclass, "$!pos", rx207_pos
    $P11 = rx207_cur."charname"()
    repr_get_attr_int $I11, $P11, rx207_curclass, "$!pos"
    lt $I11, 0, rx207_fail603
    nqp_rxmark rx207_bstack, rxsubrule211_pass613, -1, 0
  rxsubrule211_pass613:
    rx207_cstack = rx207_cur."!cursor_capture"($P11, "charname")
    repr_get_attr_int rx207_pos, $P11, rx207_curclass, "$!pos"
    repr_bind_attr_int rx207_cur, rx207_curclass, "$!pos", rx207_pos
    $P11 = rx207_cur."ws"()
    repr_get_attr_int $I11, $P11, rx207_curclass, "$!pos"
    lt $I11, 0, rx207_fail603
    repr_get_attr_int rx207_pos, $P11, rx207_curclass, "$!pos"
    nqp_rxpeek $I19, rx207_bstack, rxquantr209_done611
    inc $I19
    inc $I19
    set rx207_rep, rx207_bstack[$I19]
    nqp_rxcommit rx207_bstack, rxquantr209_done611
    inc rx207_rep
    nqp_rxmark rx207_bstack, rxquantr209_done611, rx207_pos, rx207_rep
    add $I11, rx207_pos, 1
    gt $I11, rx207_eos, rx207_fail603
    substr $S10, rx207_tgt, rx207_pos, 1
    ne $S10, ucs4:",", rx207_fail603
    add rx207_pos, 1
    goto rxquantr209_loop610
  rxquantr209_done611:
    rx207_cur."!cursor_pass"(rx207_pos, "charnames", 'backtrack'=>1)
    .return (rx207_cur)
  rx207_restart602:
    repr_get_attr_obj rx207_cstack, rx207_cur, rx207_curclass, "$!cstack"
  rx207_fail603:
    unless rx207_bstack, rx207_done601
    pop $I19, rx207_bstack
    if_null rx207_cstack, rx207_cstack_done606
    unless rx207_cstack, rx207_cstack_done606
    dec $I19
    set $P11, rx207_cstack[$I19]
  rx207_cstack_done606:
    pop rx207_rep, rx207_bstack
    pop rx207_pos, rx207_bstack
    pop $I19, rx207_bstack
    lt rx207_pos, -1, rx207_done601
    lt rx207_pos, 0, rx207_fail603
    eq $I19, 0, rx207_fail603
    nqp_islist $I20, rx207_cstack
    unless $I20, rx207_jump604
    elements $I18, rx207_bstack
    le $I18, 0, rx207_cut605
    dec $I18
    set $I18, rx207_bstack[$I18]
  rx207_cut605:
    assign rx207_cstack, $I18
  rx207_jump604:
    jump $I19
  rx207_done601:
    rx207_cur."!cursor_fail"()
    .return (rx207_cur) 
.end
.HLL "nqp"
.namespace []
.sub "charspec" :subid("cuid_70_1383914954.64741") :anon :lex :outer("cuid_236_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 272
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx213_start
    .local string rx213_tgt
    .local int rx213_pos
    .local int rx213_off
    .local int rx213_eos
    .local int rx213_rep
    .local pmc rx213_cur
    .local pmc rx213_curclass
    .local pmc rx213_bstack
    .local pmc rx213_cstack
    rx213_start = self."!cursor_start_all"()
    set rx213_cur, rx213_start[0]
    set rx213_tgt, rx213_start[1]
    set rx213_pos, rx213_start[2]
    set rx213_curclass, rx213_start[3]
    set rx213_bstack, rx213_start[4]
    set $I19, rx213_start[5]
    store_lex unicode:"$\x{a2}", rx213_cur
    length rx213_eos, rx213_tgt
    eq $I19, 1, rx213_restart617
    gt rx213_pos, rx213_eos, rx213_fail618
    repr_get_attr_int $I11, self, rx213_curclass, "$!from"
    ne $I11, -1, rxscan214_done624
    goto rxscan214_scan623
  rxscan214_loop622:
    inc rx213_pos
    gt rx213_pos, rx213_eos, rx213_fail618
    repr_bind_attr_int rx213_cur, rx213_curclass, "$!from", rx213_pos
  rxscan214_scan623:
    nqp_rxmark rx213_bstack, rxscan214_loop622, rx213_pos, 0
  rxscan214_done624:
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt215_0626
    nqp_push_label $P11, alt215_1628
    nqp_push_label $P11, alt215_2635
    nqp_push_label $P11, alt215_3636
    nqp_rxmark rx213_bstack, alt215_end625, -1, 0
    rx213_cur."!alt"(rx213_pos, "alt_nfa__9_1383914956.3785", $P11)
    goto rx213_fail618
  alt215_0626:
    add $I11, rx213_pos, 1
    gt $I11, rx213_eos, rx213_fail618
    substr $S10, rx213_tgt, rx213_pos, 1
    ne $S10, ucs4:"[", rx213_fail618
    add rx213_pos, 1
    repr_bind_attr_int rx213_cur, rx213_curclass, "$!pos", rx213_pos
    $P11 = rx213_cur."charnames"()
    repr_get_attr_int $I11, $P11, rx213_curclass, "$!pos"
    lt $I11, 0, rx213_fail618
    nqp_rxmark rx213_bstack, rxsubrule216_pass627, -1, 0
  rxsubrule216_pass627:
    rx213_cstack = rx213_cur."!cursor_capture"($P11, "charnames")
    repr_get_attr_int rx213_pos, $P11, rx213_curclass, "$!pos"
    add $I11, rx213_pos, 1
    gt $I11, rx213_eos, rx213_fail618
    substr $S10, rx213_tgt, rx213_pos, 1
    ne $S10, ucs4:"]", rx213_fail618
    add rx213_pos, 1
    goto alt215_end625
  alt215_1628:
    nqp_rxmark rx213_bstack, rxquantr217_done630, -1, 0
  rxquantr217_loop629:
    ge rx213_pos, rx213_eos, rx213_fail618
    is_cclass $I11, .CCLASS_NUMERIC, rx213_tgt, rx213_pos
    unless $I11, rx213_fail618
    add rx213_pos, 1
    nqp_rxpeek $I19, rx213_bstack, rxquantr217_done630
    inc $I19
    inc $I19
    set rx213_rep, rx213_bstack[$I19]
    nqp_rxcommit rx213_bstack, rxquantr217_done630
    inc rx213_rep
    nqp_rxmark rx213_bstack, rxquantr217_done630, rx213_pos, rx213_rep
    goto rxquantr217_loop629
  rxquantr217_done630:
    nqp_rxmark rx213_bstack, rxquantr218_done632, rx213_pos, 0
  rxquantr218_loop631:
    add $I11, rx213_pos, 1
    gt $I11, rx213_eos, rx213_fail618
    substr $S10, rx213_tgt, rx213_pos, 1
    ne $S10, ucs4:"_", rx213_fail618
    add rx213_pos, 1
    nqp_rxmark rx213_bstack, rxquantr219_done634, -1, 0
  rxquantr219_loop633:
    ge rx213_pos, rx213_eos, rx213_fail618
    is_cclass $I11, .CCLASS_NUMERIC, rx213_tgt, rx213_pos
    unless $I11, rx213_fail618
    add rx213_pos, 1
    nqp_rxpeek $I19, rx213_bstack, rxquantr219_done634
    inc $I19
    inc $I19
    set rx213_rep, rx213_bstack[$I19]
    nqp_rxcommit rx213_bstack, rxquantr219_done634
    inc rx213_rep
    nqp_rxmark rx213_bstack, rxquantr219_done634, rx213_pos, rx213_rep
    goto rxquantr219_loop633
  rxquantr219_done634:
    nqp_rxpeek $I19, rx213_bstack, rxquantr218_done632
    inc $I19
    inc $I19
    set rx213_rep, rx213_bstack[$I19]
    nqp_rxcommit rx213_bstack, rxquantr218_done632
    inc rx213_rep
    nqp_rxmark rx213_bstack, rxquantr218_done632, rx213_pos, rx213_rep
    goto rxquantr218_loop631
  rxquantr218_done632:
    goto alt215_end625
  alt215_2635:
    ge rx213_pos, rx213_eos, rx213_fail618
    substr $S11, rx213_tgt, rx213_pos, 1
    index $I11, ucs4:"?@ABCDEFGHIJKLMNOPQRSTUVWXYZ", $S11
    lt $I11, 0, rx213_fail618
    inc rx213_pos
    goto alt215_end625
  alt215_3636:
    repr_bind_attr_int rx213_cur, rx213_curclass, "$!pos", rx213_pos
    $P11 = rx213_cur."panic"("Unrecognized \\c character")
    repr_get_attr_int $I11, $P11, rx213_curclass, "$!pos"
    lt $I11, 0, rx213_fail618
    repr_get_attr_int rx213_pos, $P11, rx213_curclass, "$!pos"
    goto alt215_end625
  alt215_end625:
    nqp_rxcommit rx213_bstack, alt215_end625
    rx213_cur."!cursor_pass"(rx213_pos, "charspec", 'backtrack'=>1)
    .return (rx213_cur)
  rx213_restart617:
    repr_get_attr_obj rx213_cstack, rx213_cur, rx213_curclass, "$!cstack"
  rx213_fail618:
    unless rx213_bstack, rx213_done616
    pop $I19, rx213_bstack
    if_null rx213_cstack, rx213_cstack_done621
    unless rx213_cstack, rx213_cstack_done621
    dec $I19
    set $P11, rx213_cstack[$I19]
  rx213_cstack_done621:
    pop rx213_rep, rx213_bstack
    pop rx213_pos, rx213_bstack
    pop $I19, rx213_bstack
    lt rx213_pos, -1, rx213_done616
    lt rx213_pos, 0, rx213_fail618
    eq $I19, 0, rx213_fail618
    nqp_islist $I20, rx213_cstack
    unless $I20, rx213_jump619
    elements $I18, rx213_bstack
    le $I18, 0, rx213_cut620
    dec $I18
    set $I18, rx213_bstack[$I18]
  rx213_cut620:
    assign rx213_cstack, $I18
  rx213_jump619:
    jump $I19
  rx213_done616:
    rx213_cur."!cursor_fail"()
    .return (rx213_cur) 
.end
.HLL "nqp"
.namespace []
.sub "O" :subid("cuid_71_1383914954.64741") :anon :lex :outer("cuid_236_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 325
    .param pmc _lex_param_0 
    .param string _lex_param_1 
    .param pmc _lex_param_2 :optional 
    .param int haz_param_2 :opt_flag 
    .const 'Sub' $P5015 = 'cuid_242_1383914954.64741' 
    capture_lex $P5015 
    .const 'Sub' $P5015 = 'cuid_243_1383914954.64741' 
    capture_lex $P5015 
    .lex "%hash", $P101 
    .lex "self", _lex_param_0 
    .lex "$spec", _lex_param_1 
    .lex "$save", _lex_param_2 
    .local pmc fb_tmp_11 
    if haz_param_2, default675
    nqp_get_sc_object $P5014, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set _lex_param_2, $P5014
  default675:
    new $P5001, 'Hash'
    set $P101, $P5001
    find_lex $P5002, "%ohash"
    set fb_tmp_11, $P5002
    repr_defined $I5001, fb_tmp_11
    unless $I5001 goto if221_else638 
    set $P5003, fb_tmp_11[_lex_param_1]
    set $P5005, $P5003
    goto if221_end639
  if221_else638:
    null $P5004
    set $P5005, $P5004
  if221_end639:
    unless_null $P5005, vivi_222640
    nqp_get_sc_object $P5006, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5005, $P5006
  vivi_222640:
    set $P101, $P5005
    if $P101 goto unless223_end642 
    .const 'Sub' $P5007 = 'cuid_242_1383914954.64741' 
    capture_lex $P5007
    $P5008 = $P5007()
  unless223_end642:
    unless _lex_param_2 goto if237_else673 
.annotate 'line', 393
    find_lex $P5009, "%ohash"
    set $S5001, _lex_param_2
    set $P5009[$S5001], $P101
    nqp_decontainerize $P5010, _lex_param_0
    set $P5013, $P5010
    goto if237_end674
  if237_else673:
    .const 'Sub' $P5011 = 'cuid_243_1383914954.64741' 
    capture_lex $P5011
    $P5012 = $P5011()
    set $P5013, $P5012
  if237_end674:
    .return ($P5013) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_242_1383914954.64741") :anon :lex :outer("cuid_71_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 329
    .const 'Sub' $P5008 = 'cuid_240_1383914954.64741' 
    capture_lex $P5008 
    .lex "$eos", $I101 
    .lex "$pos", $I102 
    set $I101, 0
    set $I102, 0
    new $P5001, 'Hash'
    store_lex "%hash", $P5001
    find_lex $S5001, "$spec"
    length $I5001, $S5001
    set $I101, $I5001
    set $I102, 0
  while224_test643:
    find_lex $S5002, "$spec"
    find_not_cclass $I5003, 32, $S5002, $I102, $I101
    set $I102, $I5003
    set $N5001, $I102
    set $N5002, $I101
    islt $I5002, $N5001, $N5002
    box $P5005, $I5002
    set $P5004, $P5005
    unless $I5002 goto while224_done647 
  while224_redo645:
    .const 'Sub' $P5002 = 'cuid_240_1383914954.64741' 
    capture_lex $P5002
    $P5003 = $P5002()
    set $P5004, $P5003
    goto while224_test643 
  while224_done647:
    find_lex $P5006, "%ohash"
    find_lex $S5003, "$spec"
    find_lex $P5007, "%hash"
    set $P5006[$S5003], $P5007
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_240_1383914954.64741") :anon :lex :outer("cuid_242_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 336
    .const 'Sub' $P5007 = 'cuid_239_1383914954.64741' 
    capture_lex $P5007 
    .const 'Sub' $P5007 = 'cuid_241_1383914954.64741' 
    capture_lex $P5007 
    .lex "$lpos", $I101 
    .lex "$s", $S101 
    .local pmc tmp_1 
    set $I101, 0
    set $S101, ""
    find_lex $S5002, "$spec"
    find_lex $I5001, "$pos"
    substr $S5001, $S5002, $I5001, 1
    set $S101, $S5001
    iseq $I5002, $S101, ","
    unless $I5002 goto if225_else648 
.annotate 'line', 339
    find_lex $I5003, "$pos"
    box $P5001, $I5003
    set tmp_1, $P5001
    set $N5002, tmp_1
    set $N5003, 1
    add $N5001, $N5002, $N5003
    set $I5004, $N5001
    store_lex "$pos", $I5004
    set $P5006, tmp_1
    goto if225_end649
  if225_else648:
    iseq $I5003, $S101, ":"
    unless $I5003 goto if226_else650 
    .const 'Sub' $P5001 = 'cuid_239_1383914954.64741' 
    capture_lex $P5001
    $P5002 = $P5001()
    set $P5005, $P5002
    goto if226_end651
  if226_else650:
    .const 'Sub' $P5003 = 'cuid_241_1383914954.64741' 
    capture_lex $P5003
    $P5004 = $P5003()
    set $P5005, $P5004
  if226_end651:
    set $P5006, $P5005
  if225_end649:
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_239_1383914954.64741") :anon :lex :outer("cuid_240_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 342
    .lex "$value", $P101 
    .lex "$name", $P102 
    .local pmc tmp_2 
    .local pmc tmp_3 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P102, $P5002
    find_lex $I5001, "$pos"
    box $P5003, $I5001
    set tmp_2, $P5003
    set $N5002, tmp_2
    set $N5003, 1
    add $N5001, $N5002, $N5003
    set $I5002, $N5001
    store_lex "$pos", $I5002
    box $P5003, 1
    set $P101, $P5003
    find_lex $S5002, "$spec"
    find_lex $I5002, "$pos"
    substr $S5001, $S5002, $I5002, 1
    iseq $I5001, $S5001, "!"
    unless $I5001 goto if227_end653 
.annotate 'line', 348
    find_lex $I5003, "$pos"
    box $P5004, $I5003
    set tmp_3, $P5004
    set $N5002, tmp_3
    set $N5003, 1
    add $N5001, $N5002, $N5003
    set $I5004, $N5001
    store_lex "$pos", $I5004
    box $P5004, 0
    set $P101, $P5004
  if227_end653:
    find_lex $S5003, "$spec"
    find_lex $I5004, "$pos"
    find_lex $I5005, "$eos"
    find_not_cclass $I5003, 8192, $S5003, $I5004, $I5005
    store_lex "$lpos", $I5003
    find_lex $S5005, "$spec"
    find_lex $I5006, "$pos"
    find_lex $I5008, "$lpos"
    find_lex $I5009, "$pos"
    sub $I5007, $I5008, $I5009
    substr $S5004, $S5005, $I5006, $I5007
    box $P5005, $S5004
    set $P102, $P5005
    find_lex $I5010, "$lpos"
    store_lex "$pos", $I5010
    find_lex $S5007, "$spec"
    find_lex $I5012, "$pos"
    substr $S5006, $S5007, $I5012, 1
    iseq $I5011, $S5006, "<"
    unless $I5011 goto if228_end655 
.annotate 'line', 360
    find_lex $I5014, "$pos"
    add $I5013, $I5014, 1
    store_lex "$pos", $I5013
    find_lex $S5008, "$spec"
    find_lex $I5016, "$pos"
    index $I5015, $S5008, ">", $I5016
    store_lex "$lpos", $I5015
    find_lex $S5010, "$spec"
    find_lex $I5017, "$pos"
    find_lex $I5019, "$lpos"
    find_lex $I5020, "$pos"
    sub $I5018, $I5019, $I5020
    substr $S5009, $S5010, $I5017, $I5018
    box $P5006, $S5009
    set $P101, $P5006
    find_lex $I5022, "$lpos"
    add $I5021, $I5022, 1
    store_lex "$pos", $I5021
  if228_end655:
    find_lex $P5007, "%hash"
    set $S5011, $P102
    set $P5007[$S5011], $P101
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_241_1383914954.64741") :anon :lex :outer("cuid_240_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 369
    .lex "$index", $P101 
    .lex "$lookup", $P102 
    .lex "%lhash", $P103 
    .lex "$lhash_it", $P104 
    .local pmc fb_tmp_12 
    .local pmc fb_tmp_13 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P102, $P5002
    new $P5003, 'Hash'
    set $P103, $P5003
    nqp_get_sc_object $P5004, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P104, $P5004
    find_lex $S5001, "$spec"
    find_lex $I5002, "$pos"
    find_lex $I5003, "$eos"
    find_cclass $I5001, 32, $S5001, $I5002, $I5003
    store_lex "$lpos", $I5001
    find_lex $S5002, "$spec"
    find_lex $I5005, "$pos"
    index $I5004, $S5002, ",", $I5005
    box $P5005, $I5004
    set $P101, $P5005
    set $N5001, $P101
    set $N5002, 0
    islt $I5006, $N5001, $N5002
    set $I5009, $I5006
    if $I5006 goto unless230_end659 
    set $N5003, $P101
    find_lex $I5008, "$lpos"
    set $N5004, $I5008
    isge $I5007, $N5003, $N5004
    set $I5009, $I5007
  unless230_end659:
    if $I5009 goto unless229_end657 
    set $I5010, $P101
    store_lex "$lpos", $I5010
  unless229_end657:
    find_lex $S5004, "$spec"
    find_lex $I5011, "$pos"
    find_lex $I5013, "$lpos"
    find_lex $I5014, "$pos"
    sub $I5012, $I5013, $I5014
    substr $S5003, $S5004, $I5011, $I5012
    box $P5006, $S5003
    set $P102, $P5006
    find_lex $P5007, "%ohash"
    set fb_tmp_12, $P5007
    repr_defined $I5015, fb_tmp_12
    unless $I5015 goto if231_else660 
    set $S5005, $P102
    set $P5008, fb_tmp_12[$S5005]
    set $P5010, $P5008
    goto if231_end661
  if231_else660:
    null $P5009
    set $P5010, $P5009
  if231_end661:
    unless_null $P5010, vivi_232662
    nqp_get_sc_object $P5011, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5010, $P5011
  vivi_232662:
    set $P103, $P5010
    if $P103 goto unless233_end664 
.annotate 'line', 379
    find_lex $P5013, "self"
    nqp_decontainerize $P5012, $P5013
    $P5014 = $P5012."panic"("Unknown operator precedence specification \"", $P102, "\"")
  unless233_end664:
    iter $P5015, $P103
    set $P104, $P5015
  while234_test665:
    set $P5022, $P104
    unless $P104 goto while234_done669 
  while234_redo667:
.annotate 'line', 382
    shift $P5016, $P104
    set $S5006, $P5016
    store_lex "$s", $S5006
    find_lex $P5017, "%hash"
    find_lex $S5007, "$s"
    set fb_tmp_13, $P103
    repr_defined $I5016, fb_tmp_13
    unless $I5016 goto if235_else670 
    find_lex $S5008, "$s"
    set $P5018, fb_tmp_13[$S5008]
    set $P5020, $P5018
    goto if235_end671
  if235_else670:
    null $P5019
    set $P5020, $P5019
  if235_end671:
    unless_null $P5020, vivi_236672
    nqp_get_sc_object $P5021, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5020, $P5021
  vivi_236672:
    set $P5017[$S5007], $P5020
    set $P5022, $P5020
    goto while234_test665 
  while234_done669:
    find_lex $I5017, "$lpos"
    store_lex "$pos", $I5017
    .return ($I5017) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_243_1383914954.64741") :anon :lex :outer("cuid_71_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 397
    .lex "$cur", $P101 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P101, $P5001
.annotate 'line', 400
    find_lex $P5003, "self"
    nqp_decontainerize $P5002, $P5003
    $P5004 = $P5002."!cursor_start_cur"()
    set $P101, $P5004
.annotate 'line', 401
    find_lex $P5005, "$cursor_class"
    repr_get_attr_int $I5001, $P101, $P5005, "$!from"
    $P101."!cursor_pass"($I5001)
    find_lex $P5006, "$cursor_class"
    find_lex $P5007, "%hash"
    setattribute $P101, $P5006, "$!match", $P5007
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "panic" :subid("cuid_72_1383914954.64741") :anon :lex :outer("cuid_236_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 418
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy 
    .lex "$pos", $P101 
    .lex "$target", $P102 
    .lex "self", _lex_param_0 
    .lex "@args", _lex_param_1 
    .local pmc fb_tmp_14 
    .local pmc pkg_lookup_tmp_1 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P102, $P5002
.annotate 'line', 419
    nqp_decontainerize $P5003, _lex_param_0
    $P5004 = $P5003."pos"()
    set $P101, $P5004
.annotate 'line', 420
    nqp_decontainerize $P5005, _lex_param_0
    $P5006 = $P5005."target"()
    set $P102, $P5006
.annotate 'line', 421
    _lex_param_1."push"(" at line ")
.annotate 'line', 422
    nqp_get_sc_object $P5008, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 0
    set pkg_lookup_tmp_1, $P5008
    get_who $P5009, pkg_lookup_tmp_1
    exists $I5002, $P5009["HLL"]
    unless $I5002 goto if239_else678 
    get_who $P5011, pkg_lookup_tmp_1
    set $P5010, $P5011["HLL"]
    set $P5013, $P5010
    goto if239_end679
  if239_else678:
    nqp_get_sc_object $P5012, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5013, $P5012
  if239_end679:
    get_who $P5007, $P5013
    set fb_tmp_14, $P5007
    repr_defined $I5001, fb_tmp_14
    unless $I5001 goto if238_else676 
    set $P5014, fb_tmp_14["Compiler"]
    set $P5016, $P5014
    goto if238_end677
  if238_else676:
    null $P5015
    set $P5016, $P5015
  if238_end677:
    unless_null $P5016, vivi_240680
    nqp_get_sc_object $P5017, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5016, $P5017
  vivi_240680:
    $P5018 = $P5016."lineof"($P102, $P101)
    set $N5002, $P5018
    set $N5003, 1
    add $N5001, $N5002, $N5003
    _lex_param_1."push"($N5001)
.annotate 'line', 423
    _lex_param_1."push"(", near \"")
.annotate 'line', 424
    set $S5003, $P102
    set $I5003, $P101
    substr $S5002, $S5003, $I5003, 10
    escape $S5001, $S5002
    _lex_param_1."push"($S5001)
.annotate 'line', 425
    _lex_param_1."push"("\"")
.annotate 'line', 426
    $P5019 = "&join"("", _lex_param_1)
    die $P5019
    .return ($P5019) 
.end
.HLL "nqp"
.namespace []
.sub "FAILGOAL" :subid("cuid_73_1383914954.64741") :anon :lex :outer("cuid_236_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 429
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :optional 
    .param int haz_param_3 :opt_flag 
    .lex "self", _lex_param_0 
    .lex "$goal", _lex_param_1 
    .lex "$dba", _lex_param_2 
    if haz_param_3, default683
    nqp_get_sc_object $P5005, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set _lex_param_2, $P5005
  default683:
    if _lex_param_2 goto unless241_end682 
.annotate 'line', 430
    getinterp $P5001
    set $P5001, $P5001['sub';1]
    set $S5001, $P5001
    box $P5002, $S5001
    set _lex_param_2, $P5002
  unless241_end682:
.annotate 'line', 433
    nqp_decontainerize $P5003, _lex_param_0
    set $S5005, _lex_param_2
    concat $S5004, "Unable to parse expression in ", $S5005
    concat $S5003, $S5004, "; couldn't find final "
    set $S5006, _lex_param_1
    concat $S5002, $S5003, $S5006
    $P5004 = $P5003."panic"($S5002)
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "peek_delimiters" :subid("cuid_74_1383914954.64741") :anon :lex :outer("cuid_236_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 446
    .param pmc _lex_param_0 
    .param string _lex_param_1 
    .param int _lex_param_2 
    .const 'Sub' $P5013 = 'cuid_244_1383914954.64741' 
    capture_lex $P5013 
    .lex "$start", $S101 
    .lex "$stop", $S102 
    .lex "$brac", $I101 
    .lex "self", _lex_param_0 
    .lex "$target", _lex_param_1 
    .lex "$pos", _lex_param_2 
    set $S101, ""
    set $S102, ""
    set $I101, 0
    substr $S5001, _lex_param_1, _lex_param_2, 1
    set $S101, $S5001
    iseq $I5001, $S101, ":"
    unless $I5001 goto if242_end685 
.annotate 'line', 451
.annotate 'line', 452
    nqp_decontainerize $P5001, _lex_param_0
    $P5002 = $P5001."panic"("Colons may not be used to delimit quoting constructs")
  if242_end685:
    is_cclass $I5002, 8192, $S101, 0
    unless $I5002 goto if243_end687 
.annotate 'line', 454
.annotate 'line', 455
    nqp_decontainerize $P5003, _lex_param_0
    $P5004 = $P5003."panic"("Alphanumeric character is not allowed as a delimiter")
  if243_end687:
    is_cclass $I5003, 32, $S101, 0
    unless $I5003 goto if244_end689 
.annotate 'line', 457
.annotate 'line', 458
    nqp_decontainerize $P5005, _lex_param_0
    $P5006 = $P5005."panic"("Whitespace character is not allowed as a delimiter")
  if244_end689:
    set $S102, $S101
    find_lex $P5007, "$brackets"
    set $S5002, $P5007
    index $I5004, $S5002, $S101, 0
    set $I101, $I5004
    set $N5001, $I101
    set $N5002, 0
    isge $I5005, $N5001, $N5002
    unless $I5005 goto if245_end691 
    .const 'Sub' $P5008 = 'cuid_244_1383914954.64741' 
    capture_lex $P5008
    $P5009 = $P5008()
  if245_end691:
    new $P5010, 'ResizablePMCArray'
    box $P5011, $S101
    push $P5010, $P5011
    box $P5012, $S102
    push $P5010, $P5012
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_244_1383914954.64741") :anon :lex :outer("cuid_74_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 464
    .lex "$len", $I101 
    .local pmc tmp_4 
    set $I101, 0
    find_lex $I5001, "$brac"
    set $N5002, $I5001
    set $N5003, 2
    mod $N5001, $N5002, $N5003
    unless $N5001 goto if246_end693 
.annotate 'line', 466
.annotate 'line', 467
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    $P5003 = $P5001."panic"("Use of a closing delimiter for an opener is reserved")
  if246_end693:
    find_lex $P5004, "$brackets"
    set $S5002, $P5004
    find_lex $I5003, "$brac"
    add $I5002, $I5003, 1
    substr $S5001, $S5002, $I5002, 1
    store_lex "$stop", $S5001
    set $I101, 1
  while247_test694:
    find_lex $S5004, "$target"
    find_lex $I5005, "$pos"
    set $N5005, $I5005
    set $N5006, 1
    add $N5004, $N5005, $N5006
    set $I5006, $N5004
    store_lex "$pos", $I5006
    substr $S5003, $S5004, $I5006, 1
    find_lex $S5005, "$start"
    iseq $I5004, $S5003, $S5005
    box $P5006, $I5004
    set $P5005, $P5006
    unless $I5004 goto while247_done698 
  while247_redo696:
.annotate 'line', 475
    box $P5005, $I101
    set tmp_4, $P5005
    set $N5008, tmp_4
    set $N5009, 1
    add $N5007, $N5008, $N5009
    set $I5007, $N5007
    set $I101, $I5007
    set $P5005, tmp_4
    goto while247_test694 
  while247_done698:
    set $N5007, $I101
    set $N5008, 1
    isgt $I5007, $N5007, $N5008
    box $P5008, $I5007
    set $P5007, $P5008
    unless $I5007 goto if248_end700 
.annotate 'line', 478
    find_lex $S5007, "$start"
    repeat $S5006, $S5007, $I101
    store_lex "$start", $S5006
    find_lex $S5009, "$stop"
    repeat $S5008, $S5009, $I101
    store_lex "$stop", $S5008
    box $P5009, $S5008
    set $P5007, $P5009
  if248_end700:
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "quote_EXPR" :subid("cuid_75_1383914954.64741") :anon :lex :outer("cuid_236_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 487
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy 
    .const 'Sub' $P5028 = 'cuid_246_1383914954.64741' 
    capture_lex $P5028 
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
    new $P5001, 'Hash'
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P102, $P5002
    nqp_get_sc_object $P5003, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P103, $P5003
    set self, _lex_param_0
    .local pmc rx249_start
    .local string rx249_tgt
    .local int rx249_pos
    .local int rx249_off
    .local int rx249_eos
    .local int rx249_rep
    .local pmc rx249_cur
    .local pmc rx249_curclass
    .local pmc rx249_bstack
    .local pmc rx249_cstack
    rx249_start = self."!cursor_start_all"()
    set rx249_cur, rx249_start[0]
    set rx249_tgt, rx249_start[1]
    set rx249_pos, rx249_start[2]
    set rx249_curclass, rx249_start[3]
    set rx249_bstack, rx249_start[4]
    set $I19, rx249_start[5]
    store_lex unicode:"$\x{a2}", rx249_cur
    length rx249_eos, rx249_tgt
    eq $I19, 1, rx249_restart703
    gt rx249_pos, rx249_eos, rx249_fail704
    repr_get_attr_int $I11, self, rx249_curclass, "$!from"
    ne $I11, -1, rxscan250_done710
    goto rxscan250_scan709
  rxscan250_loop708:
    inc rx249_pos
    gt rx249_pos, rx249_eos, rx249_fail704
    repr_bind_attr_int rx249_cur, rx249_curclass, "$!from", rx249_pos
  rxscan250_scan709:
    nqp_rxmark rx249_bstack, rxscan250_loop708, rx249_pos, 0
  rxscan250_done710:
    repr_bind_attr_int rx249_cur, rx249_curclass, "$!pos", rx249_pos
    store_lex unicode:"$\x{a2}", rx249_cur
    unless_null $P101, fallback711
    nqp_get_sc_object $P5005, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 0
    get_who $P5004, $P5005
    set pkg_viv_tmp_1, $P5004
    set fb_tmp_15, pkg_viv_tmp_1
    repr_defined $I5001, fb_tmp_15
    unless $I5001 goto if251_else712 
    set $P5006, fb_tmp_15["%QUOTEMOD"]
    set $P5008, $P5006
    goto if251_end713
  if251_else712:
    null $P5007
    set $P5008, $P5007
  if251_end713:
    unless_null $P5008, vivi_252714
    new $P5009, 'Hash'
    set pkg_viv_tmp_1["%QUOTEMOD"], $P5009
    set $P5008, $P5009
  vivi_252714:
    unless_null $P5008, vivi_253715
    die "Contextual %*QUOTEMOD not found"
    box $P5010, "Contextual %*QUOTEMOD not found"
    set $P5008, $P5010
  vivi_253715:
    set $P101, $P5008
  fallback711:
    repr_bind_attr_int rx249_cur, rx249_curclass, "$!pos", rx249_pos
    store_lex unicode:"$\x{a2}", rx249_cur
    unless_null $P102, fallback716
    nqp_get_sc_object $P5012, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 0
    get_who $P5011, $P5012
    set fb_tmp_16, $P5011
    repr_defined $I5002, fb_tmp_16
    unless $I5002 goto if254_else717 
    set $P5013, fb_tmp_16["$QUOTE_START"]
    set $P5015, $P5013
    goto if254_end718
  if254_else717:
    null $P5014
    set $P5015, $P5014
  if254_end718:
    unless_null $P5015, vivi_255719
    nqp_get_sc_object $P5016, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5015, $P5016
  vivi_255719:
    unless_null $P5015, vivi_256720
    die "Contextual $*QUOTE_START not found"
    box $P5017, "Contextual $*QUOTE_START not found"
    set $P5015, $P5017
  vivi_256720:
    set $P102, $P5015
  fallback716:
    repr_bind_attr_int rx249_cur, rx249_curclass, "$!pos", rx249_pos
    store_lex unicode:"$\x{a2}", rx249_cur
    unless_null $P103, fallback721
    nqp_get_sc_object $P5019, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 0
    get_who $P5018, $P5019
    set fb_tmp_17, $P5018
    repr_defined $I5003, fb_tmp_17
    unless $I5003 goto if257_else722 
    set $P5020, fb_tmp_17["$QUOTE_STOP"]
    set $P5022, $P5020
    goto if257_end723
  if257_else722:
    null $P5021
    set $P5022, $P5021
  if257_end723:
    unless_null $P5022, vivi_258724
    nqp_get_sc_object $P5023, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5022, $P5023
  vivi_258724:
    unless_null $P5022, vivi_259725
    die "Contextual $*QUOTE_STOP not found"
    box $P5024, "Contextual $*QUOTE_STOP not found"
    set $P5022, $P5024
  vivi_259725:
    set $P103, $P5022
  fallback721:
    repr_bind_attr_int rx249_cur, rx249_curclass, "$!pos", rx249_pos
    store_lex unicode:"$\x{a2}", rx249_cur
    $P5025 = $P104."MATCH"()
    set $P105, $P5025
    .const 'Sub' $P5026 = 'cuid_246_1383914954.64741' 
    capture_lex $P5026
    $P5027 = $P5026()
    repr_bind_attr_int rx249_cur, rx249_curclass, "$!pos", rx249_pos
    $P11 = rx249_cur."quote_delimited"()
    repr_get_attr_int $I11, $P11, rx249_curclass, "$!pos"
    lt $I11, 0, rx249_fail704
    nqp_rxmark rx249_bstack, rxsubrule290_pass779, -1, 0
  rxsubrule290_pass779:
    rx249_cstack = rx249_cur."!cursor_capture"($P11, "quote_delimited")
    repr_get_attr_int rx249_pos, $P11, rx249_curclass, "$!pos"
    rx249_cur."!cursor_pass"(rx249_pos, "quote_EXPR", 'backtrack'=>1)
    .return (rx249_cur)
  rx249_restart703:
    repr_get_attr_obj rx249_cstack, rx249_cur, rx249_curclass, "$!cstack"
  rx249_fail704:
    unless rx249_bstack, rx249_done702
    pop $I19, rx249_bstack
    if_null rx249_cstack, rx249_cstack_done707
    unless rx249_cstack, rx249_cstack_done707
    dec $I19
    set $P11, rx249_cstack[$I19]
  rx249_cstack_done707:
    pop rx249_rep, rx249_bstack
    pop rx249_pos, rx249_bstack
    pop $I19, rx249_bstack
    lt rx249_pos, -1, rx249_done702
    lt rx249_pos, 0, rx249_fail704
    eq $I19, 0, rx249_fail704
    nqp_islist $I20, rx249_cstack
    unless $I20, rx249_jump705
    elements $I18, rx249_bstack
    le $I18, 0, rx249_cut706
    dec $I18
    set $I18, rx249_bstack[$I18]
  rx249_cut706:
    assign rx249_cstack, $I18
  rx249_jump705:
    jump $I19
  rx249_done702:
    rx249_cur."!cursor_fail"()
    .return (rx249_cur) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_246_1383914954.64741") :anon :lex :outer("cuid_75_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 491
    .const 'Sub' $P5025 = 'cuid_245_1383914954.64741' 
    capture_lex $P5025 
    .lex "@delims", $P101 
    .local pmc fb_tmp_26 
    .local pmc fb_tmp_27 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    find_lex $P5005, "@args"
    set $P5002, $P5005
    iter $P5004, $P5005
  for_next770:
    unless $P5004, for_done772
    shift $P5007, $P5004
  for_redo771:
    .const 'Sub' $P5006 = 'cuid_245_1383914954.64741' 
    capture_lex $P5006
    $P5002 = $P5006($P5007)
    goto for_next770
  for_done772:
.annotate 'line', 508
    find_lex $P5009, "self"
    nqp_decontainerize $P5008, $P5009
    find_lex $P5011, "self"
    nqp_decontainerize $P5010, $P5011
    $P5012 = $P5010."target"()
    find_lex $P5014, "self"
    nqp_decontainerize $P5013, $P5014
    $P5015 = $P5013."pos"()
    $P5016 = $P5008."peek_delimiters"($P5012, $P5015)
    set $P101, $P5016
    set fb_tmp_26, $P101
    repr_defined $I5001, fb_tmp_26
    unless $I5001 goto if286_else773 
    set $P5017, fb_tmp_26[0]
    set $P5019, $P5017
    goto if286_end774
  if286_else773:
    null $P5018
    set $P5019, $P5018
  if286_end774:
    unless_null $P5019, vivi_287775
    nqp_get_sc_object $P5020, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5019, $P5020
  vivi_287775:
    store_dynamic_lex "$*QUOTE_START", $P5019
    set fb_tmp_27, $P101
    repr_defined $I5002, fb_tmp_27
    unless $I5002 goto if288_else776 
    set $P5021, fb_tmp_27[1]
    set $P5023, $P5021
    goto if288_end777
  if288_else776:
    null $P5022
    set $P5023, $P5022
  if288_end777:
    unless_null $P5023, vivi_289778
    nqp_get_sc_object $P5024, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5023, $P5024
  vivi_289778:
    store_dynamic_lex "$*QUOTE_STOP", $P5023
    .return ($P5023) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_245_1383914954.64741") :anon :lex :outer("cuid_246_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 492
    .param pmc _lex_param_0 
    .lex "$mod", _lex_param_0 
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
    set $S5002, _lex_param_0
    substr $S5001, $S5002, 1
    box $P5001, $S5001
    set _lex_param_0, $P5001
    find_dynamic_lex $P5002, "%*QUOTEMOD"
    unless_null $P5002, fallback726
    nqp_get_sc_object $P5004, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 0
    get_who $P5003, $P5004
    set pkg_viv_tmp_2, $P5003
    set fb_tmp_18, pkg_viv_tmp_2
    repr_defined $I5001, fb_tmp_18
    unless $I5001 goto if260_else727 
    set $P5005, fb_tmp_18["%QUOTEMOD"]
    set $P5007, $P5005
    goto if260_end728
  if260_else727:
    null $P5006
    set $P5007, $P5006
  if260_end728:
    unless_null $P5007, vivi_261729
    new $P5008, 'Hash'
    set pkg_viv_tmp_2["%QUOTEMOD"], $P5008
    set $P5007, $P5008
  vivi_261729:
    unless_null $P5007, vivi_262730
    die "Contextual %*QUOTEMOD not found"
    box $P5009, "Contextual %*QUOTEMOD not found"
    set $P5007, $P5009
  vivi_262730:
    set $P5002, $P5007
  fallback726:
    set $S5003, _lex_param_0
    find_lex $P5010, "$TRUE"
    set $P5002[$S5003], $P5010
    set $S5004, _lex_param_0
    iseq $I5002, $S5004, "qq"
    unless $I5002 goto if263_else731 
.annotate 'line', 495
    find_dynamic_lex $P5011, "%*QUOTEMOD"
    unless_null $P5011, fallback733
    nqp_get_sc_object $P5013, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 0
    get_who $P5012, $P5013
    set pkg_viv_tmp_3, $P5012
    set fb_tmp_19, pkg_viv_tmp_3
    repr_defined $I5003, fb_tmp_19
    unless $I5003 goto if264_else734 
    set $P5014, fb_tmp_19["%QUOTEMOD"]
    set $P5016, $P5014
    goto if264_end735
  if264_else734:
    null $P5015
    set $P5016, $P5015
  if264_end735:
    unless_null $P5016, vivi_265736
    new $P5017, 'Hash'
    set pkg_viv_tmp_3["%QUOTEMOD"], $P5017
    set $P5016, $P5017
  vivi_265736:
    unless_null $P5016, vivi_266737
    die "Contextual %*QUOTEMOD not found"
    box $P5018, "Contextual %*QUOTEMOD not found"
    set $P5016, $P5018
  vivi_266737:
    set $P5011, $P5016
  fallback733:
    find_lex $P5019, "$TRUE"
    set $P5011["s"], $P5019
    find_dynamic_lex $P5020, "%*QUOTEMOD"
    unless_null $P5020, fallback738
    nqp_get_sc_object $P5022, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 0
    get_who $P5021, $P5022
    set pkg_viv_tmp_4, $P5021
    set fb_tmp_20, pkg_viv_tmp_4
    repr_defined $I5004, fb_tmp_20
    unless $I5004 goto if267_else739 
    set $P5023, fb_tmp_20["%QUOTEMOD"]
    set $P5025, $P5023
    goto if267_end740
  if267_else739:
    null $P5024
    set $P5025, $P5024
  if267_end740:
    unless_null $P5025, vivi_268741
    new $P5026, 'Hash'
    set pkg_viv_tmp_4["%QUOTEMOD"], $P5026
    set $P5025, $P5026
  vivi_268741:
    unless_null $P5025, vivi_269742
    die "Contextual %*QUOTEMOD not found"
    box $P5027, "Contextual %*QUOTEMOD not found"
    set $P5025, $P5027
  vivi_269742:
    set $P5020, $P5025
  fallback738:
    find_lex $P5028, "$TRUE"
    set $P5020["a"], $P5028
    find_dynamic_lex $P5029, "%*QUOTEMOD"
    unless_null $P5029, fallback743
    nqp_get_sc_object $P5031, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 0
    get_who $P5030, $P5031
    set pkg_viv_tmp_5, $P5030
    set fb_tmp_21, pkg_viv_tmp_5
    repr_defined $I5005, fb_tmp_21
    unless $I5005 goto if270_else744 
    set $P5032, fb_tmp_21["%QUOTEMOD"]
    set $P5034, $P5032
    goto if270_end745
  if270_else744:
    null $P5033
    set $P5034, $P5033
  if270_end745:
    unless_null $P5034, vivi_271746
    new $P5035, 'Hash'
    set pkg_viv_tmp_5["%QUOTEMOD"], $P5035
    set $P5034, $P5035
  vivi_271746:
    unless_null $P5034, vivi_272747
    die "Contextual %*QUOTEMOD not found"
    box $P5036, "Contextual %*QUOTEMOD not found"
    set $P5034, $P5036
  vivi_272747:
    set $P5029, $P5034
  fallback743:
    find_lex $P5037, "$TRUE"
    set $P5029["h"], $P5037
    find_dynamic_lex $P5038, "%*QUOTEMOD"
    unless_null $P5038, fallback748
    nqp_get_sc_object $P5040, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 0
    get_who $P5039, $P5040
    set pkg_viv_tmp_6, $P5039
    set fb_tmp_22, pkg_viv_tmp_6
    repr_defined $I5006, fb_tmp_22
    unless $I5006 goto if273_else749 
    set $P5041, fb_tmp_22["%QUOTEMOD"]
    set $P5043, $P5041
    goto if273_end750
  if273_else749:
    null $P5042
    set $P5043, $P5042
  if273_end750:
    unless_null $P5043, vivi_274751
    new $P5044, 'Hash'
    set pkg_viv_tmp_6["%QUOTEMOD"], $P5044
    set $P5043, $P5044
  vivi_274751:
    unless_null $P5043, vivi_275752
    die "Contextual %*QUOTEMOD not found"
    box $P5045, "Contextual %*QUOTEMOD not found"
    set $P5043, $P5045
  vivi_275752:
    set $P5038, $P5043
  fallback748:
    find_lex $P5046, "$TRUE"
    set $P5038["f"], $P5046
    find_dynamic_lex $P5047, "%*QUOTEMOD"
    unless_null $P5047, fallback753
    nqp_get_sc_object $P5049, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 0
    get_who $P5048, $P5049
    set pkg_viv_tmp_7, $P5048
    set fb_tmp_23, pkg_viv_tmp_7
    repr_defined $I5007, fb_tmp_23
    unless $I5007 goto if276_else754 
    set $P5050, fb_tmp_23["%QUOTEMOD"]
    set $P5052, $P5050
    goto if276_end755
  if276_else754:
    null $P5051
    set $P5052, $P5051
  if276_end755:
    unless_null $P5052, vivi_277756
    new $P5053, 'Hash'
    set pkg_viv_tmp_7["%QUOTEMOD"], $P5053
    set $P5052, $P5053
  vivi_277756:
    unless_null $P5052, vivi_278757
    die "Contextual %*QUOTEMOD not found"
    box $P5054, "Contextual %*QUOTEMOD not found"
    set $P5052, $P5054
  vivi_278757:
    set $P5047, $P5052
  fallback753:
    find_lex $P5055, "$TRUE"
    set $P5047["c"], $P5055
    find_dynamic_lex $P5056, "%*QUOTEMOD"
    unless_null $P5056, fallback758
    nqp_get_sc_object $P5058, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 0
    get_who $P5057, $P5058
    set pkg_viv_tmp_8, $P5057
    set fb_tmp_24, pkg_viv_tmp_8
    repr_defined $I5008, fb_tmp_24
    unless $I5008 goto if279_else759 
    set $P5059, fb_tmp_24["%QUOTEMOD"]
    set $P5061, $P5059
    goto if279_end760
  if279_else759:
    null $P5060
    set $P5061, $P5060
  if279_end760:
    unless_null $P5061, vivi_280761
    new $P5062, 'Hash'
    set pkg_viv_tmp_8["%QUOTEMOD"], $P5062
    set $P5061, $P5062
  vivi_280761:
    unless_null $P5061, vivi_281762
    die "Contextual %*QUOTEMOD not found"
    box $P5063, "Contextual %*QUOTEMOD not found"
    set $P5061, $P5063
  vivi_281762:
    set $P5056, $P5061
  fallback758:
    find_lex $P5064, "$TRUE"
    set $P5056["b"], $P5064
    set $P5076, $P5064
    goto if263_end732
  if263_else731:
    set $S5005, _lex_param_0
    iseq $I5009, $S5005, "b"
    box $P5075, $I5009
    set $P5074, $P5075
    unless $I5009 goto if282_end764 
.annotate 'line', 503
    find_dynamic_lex $P5065, "%*QUOTEMOD"
    unless_null $P5065, fallback765
    nqp_get_sc_object $P5067, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 0
    get_who $P5066, $P5067
    set pkg_viv_tmp_9, $P5066
    set fb_tmp_25, pkg_viv_tmp_9
    repr_defined $I5010, fb_tmp_25
    unless $I5010 goto if283_else766 
    set $P5068, fb_tmp_25["%QUOTEMOD"]
    set $P5070, $P5068
    goto if283_end767
  if283_else766:
    null $P5069
    set $P5070, $P5069
  if283_end767:
    unless_null $P5070, vivi_284768
    new $P5071, 'Hash'
    set pkg_viv_tmp_9["%QUOTEMOD"], $P5071
    set $P5070, $P5071
  vivi_284768:
    unless_null $P5070, vivi_285769
    die "Contextual %*QUOTEMOD not found"
    box $P5072, "Contextual %*QUOTEMOD not found"
    set $P5070, $P5072
  vivi_285769:
    set $P5065, $P5070
  fallback765:
    find_lex $P5073, "$TRUE"
    set $P5065["q"], $P5073
    set $P5074, $P5073
  if282_end764:
    set $P5076, $P5074
  if263_end732:
    .return ($P5076) 
.end
.HLL "nqp"
.namespace []
.sub "quotemod_check" :subid("cuid_76_1383914954.64741") :anon :lex :outer("cuid_236_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 515
    .param pmc _lex_param_0 
    .param string _lex_param_1 
    .const 'Sub' $P5004 = 'cuid_247_1383914954.64741' 
    capture_lex $P5004 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .lex "$mod", _lex_param_1 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx291_start
    .local string rx291_tgt
    .local int rx291_pos
    .local int rx291_off
    .local int rx291_eos
    .local int rx291_rep
    .local pmc rx291_cur
    .local pmc rx291_curclass
    .local pmc rx291_bstack
    .local pmc rx291_cstack
    rx291_start = self."!cursor_start_all"()
    set rx291_cur, rx291_start[0]
    set rx291_tgt, rx291_start[1]
    set rx291_pos, rx291_start[2]
    set rx291_curclass, rx291_start[3]
    set rx291_bstack, rx291_start[4]
    set $I19, rx291_start[5]
    store_lex unicode:"$\x{a2}", rx291_cur
    length rx291_eos, rx291_tgt
    eq $I19, 1, rx291_restart782
    gt rx291_pos, rx291_eos, rx291_fail783
    repr_get_attr_int $I11, self, rx291_curclass, "$!from"
    ne $I11, -1, rxscan292_done789
    goto rxscan292_scan788
  rxscan292_loop787:
    inc rx291_pos
    gt rx291_pos, rx291_eos, rx291_fail783
    repr_bind_attr_int rx291_cur, rx291_curclass, "$!from", rx291_pos
  rxscan292_scan788:
    nqp_rxmark rx291_bstack, rxscan292_loop787, rx291_pos, 0
  rxscan292_done789:
    repr_bind_attr_int rx291_cur, rx291_curclass, "$!pos", rx291_pos
    store_lex unicode:"$\x{a2}", rx291_cur
    $P5001 = $P101."MATCH"()
    set $P102, $P5001
    .const 'Sub' $P5002 = 'cuid_247_1383914954.64741' 
    capture_lex $P5002
    $P5003 = $P5002()
    unless $P5003, rx291_fail783
    rx291_cur."!cursor_pass"(rx291_pos, "quotemod_check", 'backtrack'=>1)
    .return (rx291_cur)
  rx291_restart782:
    repr_get_attr_obj rx291_cstack, rx291_cur, rx291_curclass, "$!cstack"
  rx291_fail783:
    unless rx291_bstack, rx291_done781
    pop $I19, rx291_bstack
    if_null rx291_cstack, rx291_cstack_done786
    unless rx291_cstack, rx291_cstack_done786
    dec $I19
    set $P11, rx291_cstack[$I19]
  rx291_cstack_done786:
    pop rx291_rep, rx291_bstack
    pop rx291_pos, rx291_bstack
    pop $I19, rx291_bstack
    lt rx291_pos, -1, rx291_done781
    lt rx291_pos, 0, rx291_fail783
    eq $I19, 0, rx291_fail783
    nqp_islist $I20, rx291_cstack
    unless $I20, rx291_jump784
    elements $I18, rx291_bstack
    le $I18, 0, rx291_cut785
    dec $I18
    set $I18, rx291_bstack[$I18]
  rx291_cut785:
    assign rx291_cstack, $I18
  rx291_jump784:
    jump $I19
  rx291_done781:
    rx291_cur."!cursor_fail"()
    .return (rx291_cur) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_247_1383914954.64741") :anon :lex :outer("cuid_76_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 516
    .local pmc fb_tmp_28 
    .local pmc fb_tmp_29 
    .local pmc pkg_viv_tmp_10 
    find_dynamic_lex $P5001, "%*QUOTEMOD"
    unless_null $P5001, fallback792
    nqp_get_sc_object $P5003, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 0
    get_who $P5002, $P5003
    set pkg_viv_tmp_10, $P5002
    set fb_tmp_29, pkg_viv_tmp_10
    repr_defined $I5002, fb_tmp_29
    unless $I5002 goto if294_else793 
    set $P5004, fb_tmp_29["%QUOTEMOD"]
    set $P5006, $P5004
    goto if294_end794
  if294_else793:
    null $P5005
    set $P5006, $P5005
  if294_end794:
    unless_null $P5006, vivi_295795
    new $P5007, 'Hash'
    set pkg_viv_tmp_10["%QUOTEMOD"], $P5007
    set $P5006, $P5007
  vivi_295795:
    unless_null $P5006, vivi_296796
    die "Contextual %*QUOTEMOD not found"
    box $P5008, "Contextual %*QUOTEMOD not found"
    set $P5006, $P5008
  vivi_296796:
    set $P5001, $P5006
  fallback792:
    set fb_tmp_28, $P5001
    repr_defined $I5001, fb_tmp_28
    unless $I5001 goto if293_else790 
    find_lex $S5001, "$mod"
    set $P5009, fb_tmp_28[$S5001]
    set $P5011, $P5009
    goto if293_end791
  if293_else790:
    null $P5010
    set $P5011, $P5010
  if293_end791:
    unless_null $P5011, vivi_297797
    nqp_get_sc_object $P5012, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5011, $P5012
  vivi_297797:
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "starter" :subid("cuid_77_1383914954.64741") :anon :lex :outer("cuid_236_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 519
    .param pmc _lex_param_0 
    .lex "$start", $P101 
    .lex "self", _lex_param_0 
    .local pmc fb_tmp_30 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P101, $P5001
    find_dynamic_lex $P5002, "$*QUOTE_START"
    unless_null $P5002, fallback798
    nqp_get_sc_object $P5004, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 0
    get_who $P5003, $P5004
    set fb_tmp_30, $P5003
    repr_defined $I5001, fb_tmp_30
    unless $I5001 goto if298_else799 
    set $P5005, fb_tmp_30["$QUOTE_START"]
    set $P5007, $P5005
    goto if298_end800
  if298_else799:
    null $P5006
    set $P5007, $P5006
  if298_end800:
    unless_null $P5007, vivi_299801
    nqp_get_sc_object $P5008, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5007, $P5008
  vivi_299801:
    unless_null $P5007, vivi_300802
    die "Contextual $*QUOTE_START not found"
    box $P5009, "Contextual $*QUOTE_START not found"
    set $P5007, $P5009
  vivi_300802:
    set $P5002, $P5007
  fallback798:
    set $P101, $P5002
    repr_defined $I5002, $P101
    unless $I5002 goto if301_else803 
.annotate 'line', 522
    nqp_decontainerize $P5010, _lex_param_0
    $P5011 = $P5010."!LITERAL"($P101)
    set $P5014, $P5011
    goto if301_end804
  if301_else803:
.annotate 'line', 523
    nqp_decontainerize $P5012, _lex_param_0
    $P5013 = $P5012."!cursor_start_fail"()
    set $P5014, $P5013
  if301_end804:
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "stopper" :subid("cuid_78_1383914954.64741") :anon :lex :outer("cuid_236_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 526
    .param pmc _lex_param_0 
    .lex "$stop", $P101 
    .lex "self", _lex_param_0 
    .local pmc fb_tmp_31 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P101, $P5001
    find_dynamic_lex $P5002, "$*QUOTE_STOP"
    unless_null $P5002, fallback805
    nqp_get_sc_object $P5004, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 0
    get_who $P5003, $P5004
    set fb_tmp_31, $P5003
    repr_defined $I5001, fb_tmp_31
    unless $I5001 goto if302_else806 
    set $P5005, fb_tmp_31["$QUOTE_STOP"]
    set $P5007, $P5005
    goto if302_end807
  if302_else806:
    null $P5006
    set $P5007, $P5006
  if302_end807:
    unless_null $P5007, vivi_303808
    nqp_get_sc_object $P5008, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5007, $P5008
  vivi_303808:
    unless_null $P5007, vivi_304809
    die "Contextual $*QUOTE_STOP not found"
    box $P5009, "Contextual $*QUOTE_STOP not found"
    set $P5007, $P5009
  vivi_304809:
    set $P5002, $P5007
  fallback805:
    set $P101, $P5002
    repr_defined $I5002, $P101
    unless $I5002 goto if305_else810 
.annotate 'line', 529
    nqp_decontainerize $P5010, _lex_param_0
    $P5011 = $P5010."!LITERAL"($P101)
    set $P5014, $P5011
    goto if305_end811
  if305_else810:
.annotate 'line', 530
    nqp_decontainerize $P5012, _lex_param_0
    $P5013 = $P5012."!cursor_start_fail"()
    set $P5014, $P5013
  if305_end811:
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "split_words" :subid("cuid_79_1383914954.64741") :anon :lex :outer("cuid_236_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 533
    .param pmc _lex_param_0 
    .param string _lex_param_1 
    .lex "@result", $P101 
    .lex "$pos", $I101 
    .lex "$eos", $I102 
    .lex "$ws", $I103 
    .lex "self", _lex_param_0 
    .lex "$words", _lex_param_1 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    set $I101, 0
    set $I102, 0
    set $I103, 0
    set $I101, 0
    length $I5001, _lex_param_1
    set $I102, $I5001
  while306_test812:
    find_not_cclass $I5003, 32, _lex_param_1, $I101, $I102
    set $I101, $I5003
    set $N5001, $I101
    set $N5002, $I102
    islt $I5002, $N5001, $N5002
    set $I5006, $I5002
    unless $I5002 goto while306_done816 
  while306_redo814:
.annotate 'line', 538
    find_cclass $I5004, 32, _lex_param_1, $I101, $I102
    set $I103, $I5004
    sub $I5005, $I103, $I101
    substr $S5001, _lex_param_1, $I101, $I5005
    box $P5002, $S5001
    push $P101, $P5002
    set $I101, $I103
    set $I5006, $I101
    goto while306_test812 
  while306_done816:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "EXPR" :subid("cuid_80_1383914954.64741") :anon :lex :outer("cuid_236_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 554
    .param pmc _lex_param_0 
    .param string _lex_param_1 :optional 
    .param int haz_param_4 :opt_flag 
    .param int _lex_param_2 :named("noinfix") :optional 
    .param int haz_param_5 :opt_flag 
    .const 'Sub' $P5131 = 'cuid_248_1383914954.64741' 
    capture_lex $P5131 
    .lex "$here", $P101 
    .lex "$pos", $I101 
    .lex "$termishrx", $S101 
    .lex "@opstack", $P102 
    .lex "@termstack", $P103 
    .lex "$termcur", $P104 
    .lex "$termish", $P105 
    .lex "%termOPER", $P106 
    .lex "@prefixish", $P107 
    .lex "@postfixish", $P108 
    .lex "$wscur", $P109 
    .lex "$infixcur", $P110 
    .lex "$infix", $P111 
    .lex "%inO", $P112 
    .lex "$inprec", $S102 
    .lex "$opprec", $S103 
    .lex "$inassoc", $S104 
    .lex "$more_infix", $I102 
    .lex "$term_done", $I103 
    .lex "self", _lex_param_0 
    .lex "$preclim", _lex_param_1 
    .lex "$noinfix", _lex_param_2 
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
    if haz_param_4, default952
    set $S5005, ""
    set _lex_param_1, $S5005
  default952:
    if haz_param_5, default953
    set $I5035, 0
    set _lex_param_2, $I5035
  default953:
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P101, $P5001
    set $I101, 0
    set $S101, ""
    new $P5002, 'ResizablePMCArray'
    set $P102, $P5002
    new $P5003, 'ResizablePMCArray'
    set $P103, $P5003
    nqp_get_sc_object $P5004, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P104, $P5004
    nqp_get_sc_object $P5005, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P105, $P5005
    new $P5006, 'Hash'
    set $P106, $P5006
    new $P5007, 'ResizablePMCArray'
    set $P107, $P5007
    new $P5008, 'ResizablePMCArray'
    set $P108, $P5008
    nqp_get_sc_object $P5009, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P109, $P5009
    nqp_get_sc_object $P5010, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P110, $P5010
    nqp_get_sc_object $P5011, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P111, $P5011
    new $P5012, 'Hash'
    set $P112, $P5012
    set $S102, ""
    set $S103, ""
    set $S104, ""
    set $I102, 0
    set $I103, 0
    root_new $P113, ['parrot';'Continuation']
    set_label $P113, lexotic_817
    .lex "RETURN", $P113
.annotate 'line', 555
    nqp_decontainerize $P5013, _lex_param_0
    $P5014 = $P5013."!cursor_start_cur"()
    set $P101, $P5014
    find_lex $P5015, "$cursor_class"
    repr_get_attr_int $I5001, $P101, $P5015, "$!from"
    set $I101, $I5001
    set $S101, "termish"
    new $P5119, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5119, while307_handlers822
    push_eh $P5119
  while307_test819:
    box $P5120, 1
    set $P5118, $P5120
    unless 1 goto while307_done823 
  while307_redo821:
.annotate 'line', 575
    find_lex $P5016, "$cursor_class"
    repr_bind_attr_int $P101, $P5016, "$!pos", $I101
.annotate 'line', 577
    $P5017 = $P101.$S101()
    set $P104, $P5017
    find_lex $P5018, "$cursor_class"
    repr_get_attr_int $I5002, $P104, $P5018, "$!pos"
    set $I101, $I5002
    find_lex $P5019, "$cursor_class"
    repr_bind_attr_int $P101, $P5019, "$!pos", $I101
    set $N5001, $I101
    set $N5002, 0
    islt $I5003, $N5001, $N5002
    unless $I5003 goto if308_end825 
    $P5020 = "RETURN"($P101)
  if308_end825:
.annotate 'line', 582
    $P5021 = $P104."MATCH"()
    set $P105, $P5021
    set $P106, $P105
    new $P5024, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5024, while309_handlers829
    push_eh $P5024
  while309_test826:
    exists $I5004, $P106["OPER"]
    box $P5025, $I5004
    set $P5023, $P5025
    unless $I5004 goto while309_done830 
  while309_redo828:
    set $P5022, $P106["OPER"]
    set $P106, $P5022
    set $P5023, $P106
    goto while309_test826 
  while309_handlers829:
    .get_results ($P5024)
    pop_upto_eh $P5024
    getattribute $P5024, $P5024, 'type'
    eq $P5024, .CONTROL_LOOP_NEXT, while309_test826
    eq $P5024, .CONTROL_LOOP_REDO, while309_redo828
  while309_done830:
    pop_eh 
    set $P5026, $P106["prefixish"]
    set $P107, $P5026
    set $P5027, $P106["postfixish"]
    set $P108, $P5027
    isnull $I5005, $P107
    set $I5007, $I5005
    if $I5005 goto unless311_end834 
    isnull $I5006, $P108
    set $I5007, $I5006
  unless311_end834:
    if $I5007 goto unless310_end832 
.annotate 'line', 591
  while312_test835:
    set $P5028, $P107
    unless $P107 goto if313_end841 
    set $P5028, $P108
  if313_end841:
    set $P5031, $P5028
    unless $P5028 goto while312_done839 
  while312_redo837:
    .const 'Sub' $P5029 = 'cuid_248_1383914954.64741' 
    capture_lex $P5029
    $P5030 = $P5029()
    set $P5031, $P5030
    goto while312_test835 
  while312_done839:
    new $P5034, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5034, while333_handlers874
    push_eh $P5034
  while333_test871:
    set $P5033, $P107
    unless $P107 goto while333_done875 
  while333_redo873:
    shift $P5032, $P107
    push $P102, $P5032
    set $P5033, $P102
    goto while333_test871 
  while333_handlers874:
    .get_results ($P5034)
    pop_upto_eh $P5034
    getattribute $P5034, $P5034, 'type'
    eq $P5034, .CONTROL_LOOP_NEXT, while333_test871
    eq $P5034, .CONTROL_LOOP_REDO, while333_redo873
  while333_done875:
    pop_eh 
    new $P5037, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5037, while334_handlers879
    push_eh $P5037
  while334_test876:
    set $P5036, $P108
    unless $P108 goto while334_done880 
  while334_redo878:
    pop $P5035, $P108
    push $P102, $P5035
    set $P5036, $P102
    goto while334_test876 
  while334_handlers879:
    .get_results ($P5037)
    pop_upto_eh $P5037
    getattribute $P5037, $P5037, 'type'
    eq $P5037, .CONTROL_LOOP_NEXT, while334_test876
    eq $P5037, .CONTROL_LOOP_REDO, while334_redo878
  while334_done880:
    pop_eh 
  unless310_end832:
    delete $P105["prefixish"]
    delete $P105["postfixish"]
    set $P5038, $P105["term"]
    push $P103, $P5038
    unless _lex_param_2 goto if335_end882 
    die 0, .CONTROL_LOOP_LAST
  if335_end882:
    set $I102, 1
    set $I103, 0
    new $P5089, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5089, while336_handlers886
    push_eh $P5089
  while336_test883:
    box $P5090, $I102
    set $P5088, $P5090
    unless $I102 goto while336_done887 
  while336_redo885:
.annotate 'line', 618
    find_lex $P5039, "$cursor_class"
    repr_bind_attr_int $P101, $P5039, "$!pos", $I101
.annotate 'line', 622
    $P5040 = $P101."ws"()
    set $P109, $P5040
    find_lex $P5041, "$cursor_class"
    repr_get_attr_int $I5008, $P109, $P5041, "$!pos"
    set $I101, $I5008
    set $N5003, $I101
    set $N5004, 0
    islt $I5009, $N5003, $N5004
    unless $I5009 goto if337_end889 
.annotate 'line', 624
    set $I103, 1
    die 0, .CONTROL_LOOP_LAST
  if337_end889:
    find_lex $P5042, "$cursor_class"
    repr_bind_attr_int $P101, $P5042, "$!pos", $I101
.annotate 'line', 631
    $P5043 = $P101."infixish"()
    set $P110, $P5043
    find_lex $P5044, "$cursor_class"
    repr_get_attr_int $I5010, $P110, $P5044, "$!pos"
    set $I101, $I5010
    set $N5005, $I101
    set $N5006, 0
    islt $I5011, $N5005, $N5006
    unless $I5011 goto if338_end891 
.annotate 'line', 633
    set $I103, 1
    die 0, .CONTROL_LOOP_LAST
  if338_end891:
.annotate 'line', 637
    $P5045 = $P110."MATCH"()
    set $P111, $P5045
    set fb_tmp_40, $P111
    repr_defined $I5013, fb_tmp_40
    unless $I5013 goto if340_else894 
    set $P5046, fb_tmp_40["OPER"]
    set $P5048, $P5046
    goto if340_end895
  if340_else894:
    null $P5047
    set $P5048, $P5047
  if340_end895:
    unless_null $P5048, vivi_341896
    nqp_get_sc_object $P5049, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5048, $P5049
  vivi_341896:
    set fb_tmp_39, $P5048
    repr_defined $I5012, fb_tmp_39
    unless $I5012 goto if339_else892 
    set $P5050, fb_tmp_39["O"]
    set $P5052, $P5050
    goto if339_end893
  if339_else892:
    null $P5051
    set $P5052, $P5051
  if339_end893:
    unless_null $P5052, vivi_342897
    nqp_get_sc_object $P5053, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5052, $P5053
  vivi_342897:
    set $P112, $P5052
    set $P5054, $P112["nextterm"]
    unless_null $P5054, vivi_343898
    box $P5055, "termish"
    set $P5054, $P5055
  vivi_343898:
    set $S5001, $P5054
    set $S101, $S5001
    set fb_tmp_41, $P112
    repr_defined $I5014, fb_tmp_41
    unless $I5014 goto if344_else899 
    set $P5056, fb_tmp_41["prec"]
    set $P5058, $P5056
    goto if344_end900
  if344_else899:
    null $P5057
    set $P5058, $P5057
  if344_end900:
    unless_null $P5058, vivi_345901
    nqp_get_sc_object $P5059, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5058, $P5059
  vivi_345901:
    set $S5002, $P5058
    set $S102, $S5002
    if $S102 goto unless346_end903 
.annotate 'line', 643
    $P5060 = $P110."panic"("Missing infixish operator precedence")
  unless346_end903:
    islt $I5015, $S102, _lex_param_1
    unless $I5015 goto if347_end905 
.annotate 'line', 645
    set $I103, 1
    die 0, .CONTROL_LOOP_LAST
  if347_end905:
    set $P5061, $P112["sub"]
    unless_null $P5061, vivi_348906
    set $P5062, $P112["prec"]
    set $P5061, $P5062
  vivi_348906:
    set $P112["prec"], $P5061
    new $P5082, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5082, while349_handlers910
    push_eh $P5082
  while349_test907:
    set $P5081, $P102
    unless $P102 goto while349_done911 
  while349_redo909:
.annotate 'line', 652
    set fb_tmp_45, $P102
    repr_defined $I5019, fb_tmp_45
    unless $I5019 goto if353_else918 
    set $N5007, $P102
    set $I5021, $N5007
    sub $I5020, $I5021, 1
    set $P5063, fb_tmp_45[$I5020]
    set $P5065, $P5063
    goto if353_end919
  if353_else918:
    null $P5064
    set $P5065, $P5064
  if353_end919:
    unless_null $P5065, vivi_354920
    nqp_get_sc_object $P5066, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5065, $P5066
  vivi_354920:
    set fb_tmp_44, $P5065
    repr_defined $I5018, fb_tmp_44
    unless $I5018 goto if352_else916 
    set $P5067, fb_tmp_44["OPER"]
    set $P5069, $P5067
    goto if352_end917
  if352_else916:
    null $P5068
    set $P5069, $P5068
  if352_end917:
    unless_null $P5069, vivi_355921
    nqp_get_sc_object $P5070, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5069, $P5070
  vivi_355921:
    set fb_tmp_43, $P5069
    repr_defined $I5017, fb_tmp_43
    unless $I5017 goto if351_else914 
    set $P5071, fb_tmp_43["O"]
    set $P5073, $P5071
    goto if351_end915
  if351_else914:
    null $P5072
    set $P5073, $P5072
  if351_end915:
    unless_null $P5073, vivi_356922
    nqp_get_sc_object $P5074, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5073, $P5074
  vivi_356922:
    set fb_tmp_42, $P5073
    repr_defined $I5016, fb_tmp_42
    unless $I5016 goto if350_else912 
    set $P5075, fb_tmp_42["prec"]
    set $P5077, $P5075
    goto if350_end913
  if350_else912:
    null $P5076
    set $P5077, $P5076
  if350_end913:
    unless_null $P5077, vivi_357923
    nqp_get_sc_object $P5078, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5077, $P5078
  vivi_357923:
    set $S5003, $P5077
    set $S103, $S5003
    isgt $I5022, $S103, $S102
    if $I5022 goto unless358_end925 
    die 0, .CONTROL_LOOP_LAST
  unless358_end925:
.annotate 'line', 655
    nqp_decontainerize $P5079, _lex_param_0
    $P5080 = $P5079."EXPR_reduce"($P103, $P102)
    set $P5081, $P5080
    goto while349_test907 
  while349_handlers910:
    .get_results ($P5082)
    pop_upto_eh $P5082
    getattribute $P5082, $P5082, 'type'
    eq $P5082, .CONTROL_LOOP_NEXT, while349_test907
    eq $P5082, .CONTROL_LOOP_REDO, while349_redo909
  while349_done911:
    pop_eh 
    set $P5083, $P112["fake"]
    isnull $I5023, $P5083
    unless $I5023 goto if359_else926 
.annotate 'line', 658
    set $I102, 0
    box $P5087, $I102
    set $P5086, $P5087
    goto if359_end927
  if359_else926:
.annotate 'line', 661
    push $P102, $P111
.annotate 'line', 663
    nqp_decontainerize $P5084, _lex_param_0
    $P5085 = $P5084."EXPR_reduce"($P103, $P102)
    set $P5086, $P5085
  if359_end927:
    set $P5088, $P5086
    goto while336_test883 
  while336_handlers886:
    .get_results ($P5089)
    pop_upto_eh $P5089
    getattribute $P5089, $P5089, 'type'
    eq $P5089, .CONTROL_LOOP_NEXT, while336_test883
    eq $P5089, .CONTROL_LOOP_REDO, while336_redo885
  while336_done887:
    pop_eh 
    unless $I103 goto if360_end929 
    die 0, .CONTROL_LOOP_LAST
  if360_end929:
    iseq $I5024, $S103, $S102
    unless $I5024 goto if361_end931 
.annotate 'line', 669
    set $P5091, $P112["assoc"]
    set $S5004, $P5091
    set $S104, $S5004
    iseq $I5025, $S104, "non"
    unless $I5025 goto if362_end933 
.annotate 'line', 671
.annotate 'line', 672
    nqp_decontainerize $P5092, _lex_param_0
    set fb_tmp_48, $P102
    repr_defined $I5028, fb_tmp_48
    unless $I5028 goto if365_else938 
    elements $I5030, $P102
    sub $I5029, $I5030, 1
    set $P5093, fb_tmp_48[$I5029]
    set $P5095, $P5093
    goto if365_end939
  if365_else938:
    null $P5094
    set $P5095, $P5094
  if365_end939:
    unless_null $P5095, vivi_366940
    nqp_get_sc_object $P5096, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5095, $P5096
  vivi_366940:
    set fb_tmp_47, $P5095
    repr_defined $I5027, fb_tmp_47
    unless $I5027 goto if364_else936 
    set $P5097, fb_tmp_47["OPER"]
    set $P5099, $P5097
    goto if364_end937
  if364_else936:
    null $P5098
    set $P5099, $P5098
  if364_end937:
    unless_null $P5099, vivi_367941
    nqp_get_sc_object $P5100, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5099, $P5100
  vivi_367941:
    set fb_tmp_46, $P5099
    repr_defined $I5026, fb_tmp_46
    unless $I5026 goto if363_else934 
    set $P5101, fb_tmp_46["sym"]
    set $P5103, $P5101
    goto if363_end935
  if363_else934:
    null $P5102
    set $P5103, $P5102
  if363_end935:
    unless_null $P5103, vivi_368942
    nqp_get_sc_object $P5104, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5103, $P5104
  vivi_368942:
.annotate 'line', 674
    $P5105 = $P111."Str"()
    $P5106 = $P5092."EXPR_nonassoc"($P110, $P5103, $P5105)
  if362_end933:
    iseq $I5031, $S104, "left"
    box $P5110, $I5031
    set $P5109, $P5110
    unless $I5031 goto if369_end944 
.annotate 'line', 676
.annotate 'line', 678
    nqp_decontainerize $P5107, _lex_param_0
    $P5108 = $P5107."EXPR_reduce"($P103, $P102)
    set $P5109, $P5108
  if369_end944:
  if361_end931:
    push $P102, $P111
    find_lex $P5111, "$cursor_class"
    repr_bind_attr_int $P101, $P5111, "$!pos", $I101
.annotate 'line', 684
    $P5112 = $P101."ws"()
    set $P109, $P5112
    find_lex $P5113, "$cursor_class"
    repr_get_attr_int $I5032, $P109, $P5113, "$!pos"
    set $I101, $I5032
    find_lex $P5114, "$cursor_class"
    repr_bind_attr_int $P101, $P5114, "$!pos", $I101
    set $N5008, $I101
    set $N5009, 0
    islt $I5033, $N5008, $N5009
    box $P5117, $I5033
    set $P5116, $P5117
    unless $I5033 goto if370_end946 
    $P5115 = "RETURN"($P101)
    set $P5116, $P5115
  if370_end946:
    set $P5118, $P5116
    goto while307_test819 
  while307_handlers822:
    .get_results ($P5119)
    pop_upto_eh $P5119
    getattribute $P5119, $P5119, 'type'
    eq $P5119, .CONTROL_LOOP_NEXT, while307_test819
    eq $P5119, .CONTROL_LOOP_REDO, while307_redo821
  while307_done823:
    pop_eh 
    new $P5124, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5124, while371_handlers950
    push_eh $P5124
  while371_test947:
    set $P5123, $P102
    unless $P102 goto while371_done951 
  while371_redo949:
.annotate 'line', 690
    nqp_decontainerize $P5121, _lex_param_0
    $P5122 = $P5121."EXPR_reduce"($P103, $P102)
    set $P5123, $P5122
    goto while371_test947 
  while371_handlers950:
    .get_results ($P5124)
    pop_upto_eh $P5124
    getattribute $P5124, $P5124, 'type'
    eq $P5124, .CONTROL_LOOP_NEXT, while371_test947
    eq $P5124, .CONTROL_LOOP_REDO, while371_redo949
  while371_done951:
    pop_eh 
    find_lex $P5125, "$cursor_class"
    repr_get_attr_int $I5034, $P101, $P5125, "$!pos"
    set $I101, $I5034
.annotate 'line', 692
    nqp_decontainerize $P5126, _lex_param_0
    $P5127 = $P5126."!cursor_start_cur"()
    set $P101, $P5127
.annotate 'line', 693
    $P101."!cursor_pass"($I101)
    find_lex $P5128, "$cursor_class"
    repr_bind_attr_int $P101, $P5128, "$!pos", $I101
    find_lex $P5129, "$cursor_class"
    pop $P5130, $P103
    setattribute $P101, $P5129, "$!match", $P5130
.annotate 'line', 696
    $P101."!reduce"("EXPR")
    goto lexotic_818
  lexotic_817:
    .get_results ($P101)
  lexotic_818:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_248_1383914954.64741") :anon :lex :outer("cuid_80_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 592
    .lex "%preO", $P101 
    .lex "%postO", $P102 
    .lex "$preprec", $P103 
    .lex "$postprec", $P104 
    .local pmc fb_tmp_32 
    .local pmc fb_tmp_33 
    .local pmc fb_tmp_34 
    .local pmc fb_tmp_35 
    .local pmc fb_tmp_36 
    .local pmc fb_tmp_37 
    .local pmc fb_tmp_38 
    new $P5001, 'Hash'
    set $P101, $P5001
    new $P5002, 'Hash'
    set $P102, $P5002
    nqp_get_sc_object $P5003, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P103, $P5003
    nqp_get_sc_object $P5004, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P104, $P5004
    find_lex $P5005, "@prefixish"
    set fb_tmp_34, $P5005
    repr_defined $I5003, fb_tmp_34
    unless $I5003 goto if316_else846 
    set $P5006, fb_tmp_34[0]
    set $P5008, $P5006
    goto if316_end847
  if316_else846:
    null $P5007
    set $P5008, $P5007
  if316_end847:
    unless_null $P5008, vivi_317848
    nqp_get_sc_object $P5009, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5008, $P5009
  vivi_317848:
    set fb_tmp_33, $P5008
    repr_defined $I5002, fb_tmp_33
    unless $I5002 goto if315_else844 
    set $P5010, fb_tmp_33["OPER"]
    set $P5012, $P5010
    goto if315_end845
  if315_else844:
    null $P5011
    set $P5012, $P5011
  if315_end845:
    unless_null $P5012, vivi_318849
    nqp_get_sc_object $P5013, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5012, $P5013
  vivi_318849:
    set fb_tmp_32, $P5012
    repr_defined $I5001, fb_tmp_32
    unless $I5001 goto if314_else842 
    set $P5014, fb_tmp_32["O"]
    set $P5016, $P5014
    goto if314_end843
  if314_else842:
    null $P5015
    set $P5016, $P5015
  if314_end843:
    unless_null $P5016, vivi_319850
    nqp_get_sc_object $P5017, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5016, $P5017
  vivi_319850:
    set $P101, $P5016
    find_lex $P5018, "@postfixish"
    set fb_tmp_37, $P5018
    repr_defined $I5006, fb_tmp_37
    unless $I5006 goto if322_else855 
    find_lex $P5020, "@postfixish"
    elements $I5008, $P5020
    sub $I5007, $I5008, 1
    set $P5019, fb_tmp_37[$I5007]
    set $P5022, $P5019
    goto if322_end856
  if322_else855:
    null $P5021
    set $P5022, $P5021
  if322_end856:
    unless_null $P5022, vivi_323857
    nqp_get_sc_object $P5023, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5022, $P5023
  vivi_323857:
    set fb_tmp_36, $P5022
    repr_defined $I5005, fb_tmp_36
    unless $I5005 goto if321_else853 
    set $P5024, fb_tmp_36["OPER"]
    set $P5026, $P5024
    goto if321_end854
  if321_else853:
    null $P5025
    set $P5026, $P5025
  if321_end854:
    unless_null $P5026, vivi_324858
    nqp_get_sc_object $P5027, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5026, $P5027
  vivi_324858:
    set fb_tmp_35, $P5026
    repr_defined $I5004, fb_tmp_35
    unless $I5004 goto if320_else851 
    set $P5028, fb_tmp_35["O"]
    set $P5030, $P5028
    goto if320_end852
  if320_else851:
    null $P5029
    set $P5030, $P5029
  if320_end852:
    unless_null $P5030, vivi_325859
    nqp_get_sc_object $P5031, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5030, $P5031
  vivi_325859:
    set $P102, $P5030
    set $P5032, $P101["prec"]
    unless_null $P5032, vivi_326860
    box $P5033, ""
    set $P5032, $P5033
  vivi_326860:
    set $P103, $P5032
    set $P5034, $P102["prec"]
    unless_null $P5034, vivi_327861
    box $P5035, ""
    set $P5034, $P5035
  vivi_327861:
    set $P104, $P5034
    set $S5001, $P104
    set $S5002, $P103
    isgt $I5009, $S5001, $S5002
    set $I5014, $I5009
    if $I5009 goto unless329_end865 
    set $S5003, $P104
    set $S5004, $P103
    iseq $I5010, $S5003, $S5004
    set $I5013, $I5010
    unless $I5010 goto if330_end867 
    set fb_tmp_38, $P102
    repr_defined $I5012, fb_tmp_38
    unless $I5012 goto if331_else868 
    set $P5036, fb_tmp_38["uassoc"]
    set $P5038, $P5036
    goto if331_end869
  if331_else868:
    null $P5037
    set $P5038, $P5037
  if331_end869:
    unless_null $P5038, vivi_332870
    nqp_get_sc_object $P5039, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5038, $P5039
  vivi_332870:
    set $S5005, $P5038
    iseq $I5011, $S5005, "right"
    set $I5013, $I5011
  if330_end867:
    set $I5014, $I5013
  unless329_end865:
    unless $I5014 goto if328_else862 
.annotate 'line', 600
    find_lex $P5040, "@opstack"
    find_lex $P5042, "@prefixish"
    shift $P5041, $P5042
    push $P5040, $P5041
    set $P5046, $P5040
    goto if328_end863
  if328_else862:
.annotate 'line', 603
    find_lex $P5043, "@opstack"
    find_lex $P5045, "@postfixish"
    pop $P5044, $P5045
    push $P5043, $P5044
    set $P5046, $P5043
  if328_end863:
    .return ($P5046) 
.end
.HLL "nqp"
.namespace []
.sub "EXPR_reduce" :subid("cuid_81_1383914954.64741") :anon :lex :outer("cuid_236_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 700
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "$op", $P101 
    .lex "%opOPER", $P102 
    .lex "%opO", $P103 
    .lex "$opassoc", $S101 
    .lex "$key", $S102 
    .lex "$sym", $S103 
    .lex "$reducecheck", $P104 
    .lex "$arg", $P105 
    .lex "self", _lex_param_0 
    .lex "@termstack", _lex_param_1 
    .lex "@opstack", _lex_param_2 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P101, $P5001
    new $P5002, 'Hash'
    set $P102, $P5002
    new $P5003, 'Hash'
    set $P103, $P5003
    set $S101, ""
    set $S102, ""
    set $S103, ""
    nqp_get_sc_object $P5004, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P104, $P5004
    nqp_get_sc_object $P5005, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P105, $P5005
    pop $P5006, _lex_param_2
    set $P101, $P5006
    nqp_get_sc_object $P5007, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 42
    new $P5008, 'ResizablePMCArray'
    setattribute $P101, $P5007, "@!array", $P5008
    set $P5009, $P101["OPER"]
    set $P102, $P5009
    set $P5010, $P102["O"]
    set $P103, $P5010
    set $P5011, $P103["assoc"]
    set $S5001, $P5011
    set $S101, $S5001
    iseq $I5001, $S101, "unary"
    unless $I5001 goto if372_else954 
.annotate 'line', 714
    pop $P5012, _lex_param_1
    set $P105, $P5012
    set $P101[0], $P105
.annotate 'line', 717
    $P5013 = $P105."from"()
    set $N5001, $P5013
    $P5014 = $P101."from"()
    set $N5002, $P5014
    islt $I5002, $N5001, $N5002
    unless $I5002 goto if373_else956 
    set $S5002, "POSTFIX"
    goto if373_end957
  if373_else956:
    set $S5002, "PREFIX"
  if373_end957:
    set $S102, $S5002
    goto if372_end955
  if372_else954:
    iseq $I5003, $S101, "list"
    unless $I5003 goto if374_else958 
.annotate 'line', 719
    set $P5015, $P102["sym"]
    unless_null $P5015, vivi_375960
    box $P5016, ""
    set $P5015, $P5016
  vivi_375960:
    set $S5003, $P5015
    set $S103, $S5003
    pop $P5017, _lex_param_1
    unshift $P101, $P5017
    new $P5025, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5025, while376_handlers964
    push_eh $P5025
  while376_test961:
    set $P5024, _lex_param_2
    unless _lex_param_2 goto while376_done965 
  while376_redo963:
.annotate 'line', 722
    elements $I5006, _lex_param_2
    sub $I5005, $I5006, 1
    set $P5020, _lex_param_2[$I5005]
    set $P5019, $P5020["OPER"]
    set $P5018, $P5019["sym"]
    unless_null $P5018, vivi_378968
    box $P5021, ""
    set $P5018, $P5021
  vivi_378968:
    set $S5004, $P5018
    isne $I5004, $S103, $S5004
    unless $I5004 goto if377_end967 
    die 0, .CONTROL_LOOP_LAST
  if377_end967:
    pop $P5022, _lex_param_1
    unshift $P101, $P5022
    pop $P5023, _lex_param_2
    set $P5024, $P5023
    goto while376_test961 
  while376_handlers964:
    .get_results ($P5025)
    pop_upto_eh $P5025
    getattribute $P5025, $P5025, 'type'
    eq $P5025, .CONTROL_LOOP_NEXT, while376_test961
    eq $P5025, .CONTROL_LOOP_REDO, while376_redo963
  while376_done965:
    pop_eh 
    pop $P5026, _lex_param_1
    unshift $P101, $P5026
    set $S102, "LIST"
    set $S5006, $S102
    goto if374_end959
  if374_else958:
.annotate 'line', 732
    pop $P5027, _lex_param_1
    set $P101[1], $P5027
    pop $P5028, _lex_param_1
    set $P101[0], $P5028
    set $P5029, $P103["reducecheck"]
    set $P104, $P5029
    isnull $I5007, $P104
    if $I5007 goto unless379_end970 
.annotate 'line', 736
    nqp_decontainerize $P5030, _lex_param_0
    set $S5005, $P104
    $P5031 = $P5030.$S5005($P101)
  unless379_end970:
    set $S102, "INFIX"
    set $S5006, $S102
  if374_end959:
  if372_end955:
.annotate 'line', 739
    nqp_decontainerize $P5032, _lex_param_0
    $P5032."!reduce_with_match"("EXPR", $S102, $P101)
    push _lex_param_1, $P101
    .return (_lex_param_1) 
.end
.HLL "nqp"
.namespace []
.sub "EXPR_nonassoc" :subid("cuid_82_1383914954.64741") :anon :lex :outer("cuid_236_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 743
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .lex "self", _lex_param_0 
    .lex "$cur", _lex_param_1 
    .lex "$op1", _lex_param_2 
    .lex "$op2", _lex_param_3 
.annotate 'line', 744
    set $S5005, _lex_param_2
    concat $S5004, "\"", $S5005
    concat $S5003, $S5004, "\" and \""
    set $S5006, _lex_param_3
    concat $S5002, $S5003, $S5006
    concat $S5001, $S5002, "\" are non-associative and require parens"
    $P5001 = _lex_param_1."panic"($S5001)
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "ternary" :subid("cuid_83_1383914954.64741") :anon :lex :outer("cuid_236_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 747
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$match", _lex_param_1 
    .local pmc fb_tmp_49 
    .local pmc fb_tmp_50 
    .local pmc fb_tmp_51 
    set fb_tmp_49, _lex_param_1
    repr_defined $I5001, fb_tmp_49
    unless $I5001 goto if380_else971 
    set $P5001, fb_tmp_49[1]
    set $P5003, $P5001
    goto if380_end972
  if380_else971:
    null $P5002
    set $P5003, $P5002
  if380_end972:
    unless_null $P5003, vivi_381973
    nqp_get_sc_object $P5004, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5003, $P5004
  vivi_381973:
    set _lex_param_1[2], $P5003
    set fb_tmp_51, _lex_param_1
    repr_defined $I5003, fb_tmp_51
    unless $I5003 goto if383_else976 
    set $P5005, fb_tmp_51["infix"]
    set $P5007, $P5005
    goto if383_end977
  if383_else976:
    null $P5006
    set $P5007, $P5006
  if383_end977:
    unless_null $P5007, vivi_384978
    nqp_get_sc_object $P5008, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5007, $P5008
  vivi_384978:
    set fb_tmp_50, $P5007
    repr_defined $I5002, fb_tmp_50
    unless $I5002 goto if382_else974 
    set $P5009, fb_tmp_50["EXPR"]
    set $P5011, $P5009
    goto if382_end975
  if382_else974:
    null $P5010
    set $P5011, $P5010
  if382_end975:
    unless_null $P5011, vivi_385979
    nqp_get_sc_object $P5012, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5011, $P5012
  vivi_385979:
    set _lex_param_1[1], $P5011
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "MARKER" :subid("cuid_84_1383914954.64741") :anon :lex :outer("cuid_236_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 752
    .param pmc _lex_param_0 
    .param string _lex_param_1 
    .lex "%markhash", $P101 
    .lex "$cur", $P102 
    .lex "self", _lex_param_0 
    .lex "$markname", _lex_param_1 
    new $P5001, 'Hash'
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P102, $P5002
    nqp_decontainerize $P5005, _lex_param_0
    find_lex $P5006, "$cursor_class"
    getattribute $P5004, $P5005, $P5006, "$!shared"
    nqp_get_sc_object $P5007, "65475E2A0C14FDD82BB949E6EFAAEB49870261A5-1383914944.49584", 32
    getattribute $P5003, $P5004, $P5007, "%!marks"
    set $P101, $P5003
    set $P5008, $P101[_lex_param_1]
    set $P102, $P5008
    isnull $I5001, $P102
    unless $I5001 goto if386_else980 
.annotate 'line', 757
.annotate 'line', 758
    nqp_decontainerize $P5009, _lex_param_0
    $P5010 = $P5009."!cursor_start_cur"()
    set $P102, $P5010
.annotate 'line', 759
    nqp_decontainerize $P5011, _lex_param_0
    $P5012 = $P5011."pos"()
    $P102."!cursor_pass"($P5012)
    set $P101[_lex_param_1], $P102
    set $P5015, $P102
    goto if386_end981
  if386_else980:
.annotate 'line', 762
.annotate 'line', 763
    nqp_decontainerize $P5013, _lex_param_0
    $P5014 = $P5013."pos"()
    $P102."!cursor_pos"($P5014)
    set $P5015, $P102
  if386_end981:
    .return ($P5015) 
.end
.HLL "nqp"
.namespace []
.sub "MARKED" :subid("cuid_85_1383914954.64741") :anon :lex :outer("cuid_236_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 768
    .param pmc _lex_param_0 
    .param string _lex_param_1 
    .lex "%markhash", $P101 
    .lex "$cur", $P102 
    .lex "self", _lex_param_0 
    .lex "$markname", _lex_param_1 
    new $P5001, 'Hash'
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P102, $P5002
    nqp_decontainerize $P5005, _lex_param_0
    find_lex $P5006, "$cursor_class"
    getattribute $P5004, $P5005, $P5006, "$!shared"
    nqp_get_sc_object $P5007, "65475E2A0C14FDD82BB949E6EFAAEB49870261A5-1383914944.49584", 32
    getattribute $P5003, $P5004, $P5007, "%!marks"
    set $P101, $P5003
    set $P5008, $P101[_lex_param_1]
    set $P102, $P5008
    nqp_get_sc_object $P5009, "65475E2A0C14FDD82BB949E6EFAAEB49870261A5-1383914944.49584", 103
    type_check $I5001, $P102, $P5009
    set $I5003, $I5001
    unless $I5001 goto if388_end985 
.annotate 'line', 773
    $P5010 = $P102."pos"()
    set $N5001, $P5010
    nqp_decontainerize $P5011, _lex_param_0
    $P5012 = $P5011."pos"()
    set $N5002, $P5012
    iseq $I5002, $N5001, $N5002
    set $I5003, $I5002
  if388_end985:
    if $I5003 goto unless387_end983 
.annotate 'line', 774
    nqp_decontainerize $P5013, _lex_param_0
    $P5014 = $P5013."!cursor_start_fail"()
    set $P102, $P5014
  unless387_end983:
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "LANG" :subid("cuid_86_1383914954.64741") :anon :lex :outer("cuid_236_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 779
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 :slurpy 
    .lex "$lang_cursor", $P101 
    .lex "$*ACTIONS", $P102 
    .lex "self", _lex_param_0 
    .lex "$lang", _lex_param_1 
    .lex "$regex", _lex_param_2 
    .lex "@args", _lex_param_3 
    .local pmc fb_tmp_52 
    .local pmc fb_tmp_53 
    .local pmc pkg_viv_tmp_11 
    .local pmc fb_tmp_54 
    .local pmc fb_tmp_55 
    .local pmc pkg_viv_tmp_12 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P102, $P5002
.annotate 'line', 780
    find_dynamic_lex $P5003, "%*LANG"
    unless_null $P5003, fallback988
    nqp_get_sc_object $P5005, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 0
    get_who $P5004, $P5005
    set pkg_viv_tmp_11, $P5004
    set fb_tmp_53, pkg_viv_tmp_11
    repr_defined $I5002, fb_tmp_53
    unless $I5002 goto if390_else989 
    set $P5006, fb_tmp_53["%LANG"]
    set $P5008, $P5006
    goto if390_end990
  if390_else989:
    null $P5007
    set $P5008, $P5007
  if390_end990:
    unless_null $P5008, vivi_391991
    new $P5009, 'Hash'
    set pkg_viv_tmp_11["%LANG"], $P5009
    set $P5008, $P5009
  vivi_391991:
    unless_null $P5008, vivi_392992
    die "Contextual %*LANG not found"
    box $P5010, "Contextual %*LANG not found"
    set $P5008, $P5010
  vivi_392992:
    set $P5003, $P5008
  fallback988:
    set fb_tmp_52, $P5003
    repr_defined $I5001, fb_tmp_52
    unless $I5001 goto if389_else986 
    set $S5001, _lex_param_1
    set $P5011, fb_tmp_52[$S5001]
    set $P5013, $P5011
    goto if389_end987
  if389_else986:
    null $P5012
    set $P5013, $P5012
  if389_end987:
    unless_null $P5013, vivi_393993
    nqp_get_sc_object $P5014, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5013, $P5014
  vivi_393993:
    nqp_decontainerize $P5015, _lex_param_0
    $P5016 = $P5015."orig"()
    nqp_decontainerize $P5017, _lex_param_0
    $P5018 = $P5017."pos"()
    nqp_decontainerize $P5019, _lex_param_0
    $P5020 = $P5019."!shared"()
    $P5021 = $P5013."!cursor_init"($P5016, $P5018 :named("p"), $P5020 :named("shared"))
    set $P101, $P5021
.annotate 'line', 781
    nqp_decontainerize $P5023, _lex_param_0
    get_how $P5022, $P5023
    nqp_decontainerize $P5024, _lex_param_0
    $P5025 = $P5022."traced"($P5024)
    unless $P5025 goto if394_end995 
.annotate 'line', 782
    get_how $P5026, $P101
    nqp_decontainerize $P5028, _lex_param_0
    get_how $P5027, $P5028
    nqp_decontainerize $P5029, _lex_param_0
    $P5030 = $P5027."trace_depth"($P5029)
    $P5031 = $P5026."trace-on"($P101, $P5030)
  if394_end995:
    find_dynamic_lex $P5032, "%*LANG"
    unless_null $P5032, fallback998
    nqp_get_sc_object $P5034, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 0
    get_who $P5033, $P5034
    set pkg_viv_tmp_12, $P5033
    set fb_tmp_55, pkg_viv_tmp_12
    repr_defined $I5004, fb_tmp_55
    unless $I5004 goto if396_else999 
    set $P5035, fb_tmp_55["%LANG"]
    set $P5037, $P5035
    goto if396_end1000
  if396_else999:
    null $P5036
    set $P5037, $P5036
  if396_end1000:
    unless_null $P5037, vivi_3971001
    new $P5038, 'Hash'
    set pkg_viv_tmp_12["%LANG"], $P5038
    set $P5037, $P5038
  vivi_3971001:
    unless_null $P5037, vivi_3981002
    die "Contextual %*LANG not found"
    box $P5039, "Contextual %*LANG not found"
    set $P5037, $P5039
  vivi_3981002:
    set $P5032, $P5037
  fallback998:
    set fb_tmp_54, $P5032
    repr_defined $I5003, fb_tmp_54
    unless $I5003 goto if395_else996 
    set $S5003, _lex_param_1
    concat $S5002, $S5003, "-actions"
    set $P5040, fb_tmp_54[$S5002]
    set $P5042, $P5040
    goto if395_end997
  if395_else996:
    null $P5041
    set $P5042, $P5041
  if395_end997:
    unless_null $P5042, vivi_3991003
    nqp_get_sc_object $P5043, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5042, $P5043
  vivi_3991003:
    set $P102, $P5042
.annotate 'line', 785
    set $S5004, _lex_param_2
    $P5044 = $P101.$S5004(_lex_param_3 :flat)
    .return ($P5044) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_249_1383914954.64741") :anon :lex :outer("cuid_230_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 790
    .const 'Sub' $P5035 = 'cuid_87_1383914954.64741' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_88_1383914954.64741' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_89_1383914954.64741' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_90_1383914954.64741' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_91_1383914954.64741' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_92_1383914954.64741' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_93_1383914954.64741' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_94_1383914954.64741' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_95_1383914954.64741' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_96_1383914954.64741' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_97_1383914954.64741' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_98_1383914954.64741' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_99_1383914954.64741' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_100_1383914954.64741' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_101_1383914954.64741' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_102_1383914954.64741' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_103_1383914954.64741' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_104_1383914954.64741' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_105_1383914954.64741' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_106_1383914954.64741' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_107_1383914954.64741' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_108_1383914954.64741' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_109_1383914954.64741' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_110_1383914954.64741' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_111_1383914954.64741' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_112_1383914954.64741' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_113_1383914954.64741' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_114_1383914954.64741' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_115_1383914954.64741' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_116_1383914954.64741' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_117_1383914954.64741' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_118_1383914954.64741' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_119_1383914954.64741' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_120_1383914954.64741' 
    capture_lex $P5035 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_87_1383914954.64741' 
    capture_lex $P5001
    .const 'Sub' $P5002 = 'cuid_88_1383914954.64741' 
    capture_lex $P5002
    .const 'Sub' $P5003 = 'cuid_89_1383914954.64741' 
    capture_lex $P5003
    .const 'Sub' $P5004 = 'cuid_90_1383914954.64741' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_91_1383914954.64741' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_92_1383914954.64741' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_93_1383914954.64741' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_94_1383914954.64741' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_95_1383914954.64741' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_96_1383914954.64741' 
    capture_lex $P5010
    .const 'Sub' $P5011 = 'cuid_97_1383914954.64741' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_98_1383914954.64741' 
    capture_lex $P5012
    .const 'Sub' $P5013 = 'cuid_99_1383914954.64741' 
    capture_lex $P5013
    .const 'Sub' $P5014 = 'cuid_100_1383914954.64741' 
    capture_lex $P5014
    .const 'Sub' $P5015 = 'cuid_101_1383914954.64741' 
    capture_lex $P5015
    .const 'Sub' $P5016 = 'cuid_102_1383914954.64741' 
    capture_lex $P5016
    .const 'Sub' $P5017 = 'cuid_103_1383914954.64741' 
    capture_lex $P5017
    .const 'Sub' $P5018 = 'cuid_104_1383914954.64741' 
    capture_lex $P5018
    .const 'Sub' $P5019 = 'cuid_105_1383914954.64741' 
    capture_lex $P5019
    .const 'Sub' $P5020 = 'cuid_106_1383914954.64741' 
    capture_lex $P5020
    .const 'Sub' $P5021 = 'cuid_107_1383914954.64741' 
    capture_lex $P5021
    .const 'Sub' $P5022 = 'cuid_108_1383914954.64741' 
    capture_lex $P5022
    .const 'Sub' $P5023 = 'cuid_109_1383914954.64741' 
    capture_lex $P5023
    .const 'Sub' $P5024 = 'cuid_110_1383914954.64741' 
    capture_lex $P5024
    .const 'Sub' $P5025 = 'cuid_111_1383914954.64741' 
    capture_lex $P5025
    .const 'Sub' $P5026 = 'cuid_112_1383914954.64741' 
    capture_lex $P5026
    .const 'Sub' $P5027 = 'cuid_113_1383914954.64741' 
    capture_lex $P5027
    .const 'Sub' $P5028 = 'cuid_114_1383914954.64741' 
    capture_lex $P5028
    .const 'Sub' $P5029 = 'cuid_115_1383914954.64741' 
    capture_lex $P5029
    .const 'Sub' $P5030 = 'cuid_116_1383914954.64741' 
    capture_lex $P5030
    .const 'Sub' $P5031 = 'cuid_117_1383914954.64741' 
    capture_lex $P5031
    .const 'Sub' $P5032 = 'cuid_118_1383914954.64741' 
    capture_lex $P5032
    .const 'Sub' $P5033 = 'cuid_119_1383914954.64741' 
    capture_lex $P5033
    .const 'Sub' $P5034 = 'cuid_120_1383914954.64741' 
    capture_lex $P5034
    .return ($P5034) 
.end
.HLL "nqp"
.namespace []
.sub "string_to_int" :subid("cuid_87_1383914954.64741") :anon :lex :outer("cuid_249_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 791
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "$res", $P101 
    .lex "self", _lex_param_0 
    .lex "$src", _lex_param_1 
    .lex "$base", _lex_param_2 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P101, $P5001
    set $I5001, _lex_param_2
    set $S5001, _lex_param_1
    nqp_radix $P5002, $I5001, $S5001, 0, 2
    set $P101, $P5002
    set $P5003, $P101[2]
    set $N5001, $P5003
    set $S5002, _lex_param_1
    length $I5003, $S5002
    set $N5002, $I5003
    iseq $I5002, $N5001, $N5002
    if $I5002 goto unless400_end1005 
.annotate 'line', 793
    $P5004 = _lex_param_1."CURSOR"()
    set $S5005, _lex_param_1
    concat $S5004, "'", $S5005
    concat $S5003, $S5004, "' is not a valid number"
    $P5005 = $P5004."panic"($S5003)
  unless400_end1005:
    set $P5006, $P101[0]
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "ints_to_string" :subid("cuid_88_1383914954.64741") :anon :lex :outer("cuid_249_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 798
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5006 = 'cuid_251_1383914954.64741' 
    capture_lex $P5006 
    .lex "self", _lex_param_0 
    .lex "$ints", _lex_param_1 
    nqp_islist $I5001, _lex_param_1
    unless $I5001 goto if401_else1006 
    .const 'Sub' $P5001 = 'cuid_251_1383914954.64741' 
    capture_lex $P5001
    $P5002 = $P5001()
    set $P5004, $P5002
    goto if401_end1007
  if401_else1006:
.annotate 'line', 805
.annotate 'line', 806
    $P5003 = _lex_param_1."ast"()
    set $I5002, $P5003
    chr $S5001, $I5002
    box $P5005, $S5001
    set $P5004, $P5005
  if401_end1007:
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_251_1383914954.64741") :anon :lex :outer("cuid_88_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 799
    .const 'Sub' $P5009 = 'cuid_250_1383914954.64741' 
    capture_lex $P5009 
    .lex "$result", $P101 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P101, $P5001
    box $P5002, ""
    set $P101, $P5002
    find_lex $P5006, "$ints"
    set $P5003, $P5006
    iter $P5005, $P5006
  for_next1008:
    unless $P5005, for_done1010
    shift $P5008, $P5005
  for_redo1009:
    .const 'Sub' $P5007 = 'cuid_250_1383914954.64741' 
    capture_lex $P5007
    $P5003 = $P5007($P5008)
    goto for_next1008
  for_done1010:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_250_1383914954.64741") :anon :lex :outer("cuid_251_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 801
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5001, "$result"
    set $S5002, $P5001
.annotate 'line', 802
    $P5002 = _lex_param_0."ast"()
    set $I5001, $P5002
    chr $S5003, $I5001
    concat $S5001, $S5002, $S5003
    box $P5003, $S5001
    store_lex "$result", $P5003
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "CTXSAVE" :subid("cuid_89_1383914954.64741") :anon :lex :outer("cuid_249_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 810
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
.annotate 'line', 811
    nqp_get_sc_object $P5001, "2D75A9E3BEA240A82E5B17B1BB1078D757A67840-1383914940.28217", 98
.annotate 'line', 812
    nqp_get_sc_object $P5002, "2D75A9E3BEA240A82E5B17B1BB1078D757A67840-1383914940.28217", 86
.annotate 'line', 814
    nqp_get_sc_object $P5003, "2D75A9E3BEA240A82E5B17B1BB1078D757A67840-1383914940.28217", 74
    $P5004 = $P5003."new"("ctxsave" :named("name"), "local" :named("scope"), "var" :named("decl"))
.annotate 'line', 815
    nqp_get_sc_object $P5005, "2D75A9E3BEA240A82E5B17B1BB1078D757A67840-1383914940.28217", 74
    $P5006 = $P5005."new"("$*CTXSAVE" :named("name"), "contextual" :named("scope"))
    $P5007 = $P5002."new"($P5004, $P5006, "bind" :named("op"))
.annotate 'line', 817
    nqp_get_sc_object $P5008, "2D75A9E3BEA240A82E5B17B1BB1078D757A67840-1383914940.28217", 86
.annotate 'line', 819
    nqp_get_sc_object $P5009, "2D75A9E3BEA240A82E5B17B1BB1078D757A67840-1383914940.28217", 86
.annotate 'line', 821
    nqp_get_sc_object $P5010, "2D75A9E3BEA240A82E5B17B1BB1078D757A67840-1383914940.28217", 74
    $P5011 = $P5010."new"("ctxsave" :named("name"), "local" :named("scope"))
    $P5012 = $P5009."new"($P5011, "isnull" :named("op"))
.annotate 'line', 823
    nqp_get_sc_object $P5013, "2D75A9E3BEA240A82E5B17B1BB1078D757A67840-1383914940.28217", 86
.annotate 'line', 825
    nqp_get_sc_object $P5014, "2D75A9E3BEA240A82E5B17B1BB1078D757A67840-1383914940.28217", 86
.annotate 'line', 827
    nqp_get_sc_object $P5015, "2D75A9E3BEA240A82E5B17B1BB1078D757A67840-1383914940.28217", 74
    $P5016 = $P5015."new"("ctxsave" :named("name"), "local" :named("scope"))
.annotate 'line', 828
    nqp_get_sc_object $P5017, "2D75A9E3BEA240A82E5B17B1BB1078D757A67840-1383914940.28217", 55
    $P5018 = $P5017."new"("ctxsave" :named("value"))
    $P5019 = $P5014."new"($P5016, $P5018, "can" :named("op"))
.annotate 'line', 830
    nqp_get_sc_object $P5020, "2D75A9E3BEA240A82E5B17B1BB1078D757A67840-1383914940.28217", 86
.annotate 'line', 832
    nqp_get_sc_object $P5021, "2D75A9E3BEA240A82E5B17B1BB1078D757A67840-1383914940.28217", 74
    $P5022 = $P5021."new"("ctxsave" :named("name"), "local" :named("scope"))
    $P5023 = $P5020."new"($P5022, "callmethod" :named("op"), "ctxsave" :named("name"))
    $P5024 = $P5013."new"($P5019, $P5023, "if" :named("op"))
    $P5025 = $P5008."new"($P5012, $P5024, "unless" :named("op"))
    $P5026 = $P5001."new"($P5007, $P5025)
    .return ($P5026) 
.end
.HLL "nqp"
.namespace []
.sub "SET_BLOCK_OUTER_CTX" :subid("cuid_90_1383914954.64741") :anon :lex :outer("cuid_249_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 836
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5024 = 'cuid_254_1383914954.64741' 
    capture_lex $P5024 
    .lex "$outer_ctx", $P101 
    .lex "self", _lex_param_0 
    .lex "$block", _lex_param_1 
    .local pmc fb_tmp_56 
    .local pmc fb_tmp_57 
    .local pmc fb_tmp_58 
    .local pmc pkg_viv_tmp_13 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P101, $P5001
    find_dynamic_lex $P5002, "%*COMPILING"
    unless_null $P5002, fallback1015
    nqp_get_sc_object $P5004, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 0
    get_who $P5003, $P5004
    set pkg_viv_tmp_13, $P5003
    set fb_tmp_58, pkg_viv_tmp_13
    repr_defined $I5003, fb_tmp_58
    unless $I5003 goto if404_else1016 
    set $P5005, fb_tmp_58["%COMPILING"]
    set $P5007, $P5005
    goto if404_end1017
  if404_else1016:
    null $P5006
    set $P5007, $P5006
  if404_end1017:
    unless_null $P5007, vivi_4051018
    new $P5008, 'Hash'
    set pkg_viv_tmp_13["%COMPILING"], $P5008
    set $P5007, $P5008
  vivi_4051018:
    unless_null $P5007, vivi_4061019
    die "Contextual %*COMPILING not found"
    box $P5009, "Contextual %*COMPILING not found"
    set $P5007, $P5009
  vivi_4061019:
    set $P5002, $P5007
  fallback1015:
    set fb_tmp_57, $P5002
    repr_defined $I5002, fb_tmp_57
    unless $I5002 goto if403_else1013 
    set $P5010, fb_tmp_57["%?OPTIONS"]
    set $P5012, $P5010
    goto if403_end1014
  if403_else1013:
    null $P5011
    set $P5012, $P5011
  if403_end1014:
    unless_null $P5012, vivi_4071020
    nqp_get_sc_object $P5013, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5012, $P5013
  vivi_4071020:
    set fb_tmp_56, $P5012
    repr_defined $I5001, fb_tmp_56
    unless $I5001 goto if402_else1011 
    set $P5014, fb_tmp_56["outer_ctx"]
    set $P5016, $P5014
    goto if402_end1012
  if402_else1011:
    null $P5015
    set $P5016, $P5015
  if402_end1012:
    unless_null $P5016, vivi_4081021
    nqp_get_sc_object $P5017, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5016, $P5017
  vivi_4081021:
    set $P101, $P5016
    defined $I5004, $P101
    box $P5023, $I5004
    set $P5022, $P5023
    unless $I5004 goto if409_end1023 
.annotate 'line', 838
  until410_test1024:
    isnull $I5005, $P101
    box $P5021, $I5005
    set $P5020, $P5021
    if $I5005 goto until410_done1028 
  until410_redo1026:
    .const 'Sub' $P5018 = 'cuid_254_1383914954.64741' 
    capture_lex $P5018
    $P5019 = $P5018()
    set $P5020, $P5019
    goto until410_test1024 
  until410_done1028:
    set $P5022, $P5020
  if409_end1023:
    .return ($P5022) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_254_1383914954.64741") :anon :lex :outer("cuid_90_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 839
    .const 'Sub' $P5011 = 'cuid_253_1383914954.64741' 
    capture_lex $P5011 
    .lex "$pad", $P101 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P101, $P5001
    find_lex $P5003, "$outer_ctx"
    getattribute $P5002, $P5003, 'lex_pad'
    set $P101, $P5002
    isnull $I5001, $P101
    if $I5001 goto unless411_end1030 
.annotate 'line', 841
    set $P5004, $P101
    iter $P5006, $P101
  for_next1041:
    unless $P5006, for_done1043
    shift $P5008, $P5006
  for_redo1042:
    .const 'Sub' $P5007 = 'cuid_253_1383914954.64741' 
    capture_lex $P5007
    $P5004 = $P5007($P5008)
    goto for_next1041
  for_done1043:
  unless411_end1030:
    find_lex $P5010, "$outer_ctx"
    getattribute $P5009, $P5010, 'outer_ctx'
    store_lex "$outer_ctx", $P5009
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_253_1383914954.64741") :anon :lex :outer("cuid_254_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 842
    .param pmc _lex_param_0 
    .const 'Sub' $P5006 = 'cuid_252_1383914954.64741' 
    capture_lex $P5006 
    .lex "$key", $S101 
    .lex "$_", _lex_param_0 
    set $S101, ""
    set $S5001, _lex_param_0
    set $S101, $S5001
.annotate 'line', 844
    find_lex $P5001, "$block"
    $P5002 = $P5001."symbol"($S101)
    set $P5005, $P5002
    if $P5002 goto unless412_end1032 
    .const 'Sub' $P5003 = 'cuid_252_1383914954.64741' 
    capture_lex $P5003
    $P5004 = $P5003()
    set $P5005, $P5004
  unless412_end1032:
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_252_1383914954.64741") :anon :lex :outer("cuid_253_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 844
    .lex "$lextype", $P101 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P101, $P5001
    find_lex $P5002, "$pad"
    find_lex $S5001, "$key"
    $I5001 = $P5002."get_lex_type"($S5001)
    box $P5003, $I5001
    set $P101, $P5003
    set $N5001, $P101
    set $N5002, 0
    iseq $I5002, $N5001, $N5002
    unless $I5002 goto if413_else1033 
.annotate 'line', 846
.annotate 'line', 847
    find_lex $P5004, "$block"
    find_lex $S5002, "$key"
    find_lex $P5006, "$pad"
    find_lex $S5003, "$key"
    set $P5005, $P5006[$S5003]
    $P5007 = $P5004."symbol"($S5002, "lexical" :named("scope"), $P5005 :named("value"))
    set $P5024, $P5007
    goto if413_end1034
  if413_else1033:
    set $N5003, $P101
    set $N5004, 1
    iseq $I5003, $N5003, $N5004
    unless $I5003 goto if414_else1035 
.annotate 'line', 849
.annotate 'line', 850
    find_lex $P5008, "$block"
    find_lex $S5004, "$key"
    find_lex $P5009, "$pad"
    find_lex $S5005, "$key"
    set $I5004, $P5009[$S5005]
    nqp_get_sc_object $P5010, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 2
    $P5011 = $P5008."symbol"($S5004, "lexical" :named("scope"), $I5004 :named("value"), $P5010 :named("type"))
    set $P5023, $P5011
    goto if414_end1036
  if414_else1035:
    set $N5005, $P101
    set $N5006, 2
    iseq $I5005, $N5005, $N5006
    unless $I5005 goto if415_else1037 
.annotate 'line', 852
.annotate 'line', 853
    find_lex $P5012, "$block"
    find_lex $S5006, "$key"
    find_lex $P5013, "$pad"
    find_lex $S5007, "$key"
    set $N5007, $P5013[$S5007]
    nqp_get_sc_object $P5014, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 3
    $P5015 = $P5012."symbol"($S5006, "lexical" :named("scope"), $N5007 :named("value"), $P5014 :named("type"))
    set $P5022, $P5015
    goto if415_end1038
  if415_else1037:
    set $N5008, $P101
    set $N5009, 3
    iseq $I5006, $N5008, $N5009
    box $P5021, $I5006
    set $P5020, $P5021
    unless $I5006 goto if416_end1040 
.annotate 'line', 855
.annotate 'line', 856
    find_lex $P5016, "$block"
    find_lex $S5008, "$key"
    find_lex $P5017, "$pad"
    find_lex $S5010, "$key"
    set $S5009, $P5017[$S5010]
    nqp_get_sc_object $P5018, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 4
    $P5019 = $P5016."symbol"($S5008, "lexical" :named("scope"), $S5009 :named("value"), $P5018 :named("type"))
    set $P5020, $P5019
  if416_end1040:
    set $P5022, $P5020
  if415_end1038:
    set $P5023, $P5022
  if414_end1036:
    set $P5024, $P5023
  if413_end1034:
    .return ($P5024) 
.end
.HLL "nqp"
.namespace []
.sub "EXPR" :subid("cuid_91_1383914954.64741") :anon :lex :outer("cuid_249_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 866
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :optional 
    .param int haz_param_6 :opt_flag 
    .const 'Sub' $P5027 = 'cuid_255_1383914954.64741' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_256_1383914954.64741' 
    capture_lex $P5027 
    .lex "$past", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .lex "$key", _lex_param_2 
    .local pmc fb_tmp_59 
    .local pmc fb_tmp_68 
    if haz_param_6, default1098
    nqp_get_sc_object $P5026, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set _lex_param_2, $P5026
  default1098:
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P101, $P5001
    root_new $P102, ['parrot';'Continuation']
    set_label $P102, lexotic_1044
    .lex "RETURN", $P102
    if _lex_param_2 goto unless417_end1047 
.annotate 'line', 867
    $P5002 = "RETURN"(0)
  unless417_end1047:
.annotate 'line', 868
    $P5004 = _lex_param_1."ast"()
    set $P5003, $P5004
    defined $I5001, $P5003
    if $I5001, defor1048
    unless_null _lex_param_1, fallback1051
    nqp_get_sc_object $P5005, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set _lex_param_1, $P5005
  fallback1051:
    set fb_tmp_59, _lex_param_1
    repr_defined $I5002, fb_tmp_59
    unless $I5002 goto if418_else1049 
    set $P5006, fb_tmp_59["OPER"]
    set $P5008, $P5006
    goto if418_end1050
  if418_else1049:
    null $P5007
    set $P5008, $P5007
  if418_end1050:
    unless_null $P5008, vivi_4191052
    nqp_get_sc_object $P5009, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5008, $P5009
  vivi_4191052:
    $P5010 = $P5008."ast"()
    set $P5003, $P5010
  defor1048:
    set $P101, $P5003
    if $P101 goto unless420_end1054 
    .const 'Sub' $P5011 = 'cuid_255_1383914954.64741' 
    capture_lex $P5011
    $P5012 = $P5011()
  unless420_end1054:
    set $S5001, _lex_param_2
    iseq $I5003, $S5001, "POSTFIX"
    unless $I5003 goto if440_else1088 
.annotate 'line', 881
.annotate 'line', 882
    set fb_tmp_68, _lex_param_1
    repr_defined $I5004, fb_tmp_68
    unless $I5004 goto if441_else1090 
    set $P5013, fb_tmp_68[0]
    set $P5015, $P5013
    goto if441_end1091
  if441_else1090:
    null $P5014
    set $P5015, $P5014
  if441_end1091:
    unless_null $P5015, vivi_4421092
    nqp_get_sc_object $P5016, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5015, $P5016
  vivi_4421092:
    $P5017 = $P5015."ast"()
    $P5018 = $P101."unshift"($P5017)
    goto if440_end1089
  if440_else1088:
.annotate 'line', 884
.annotate 'line', 885
    $P5022 = _lex_param_1."list"()
    set $P5019, $P5022
    iter $P5021, $P5022
  for_next1095:
    unless $P5021, for_done1097
    shift $P5024, $P5021
  for_redo1096:
    .const 'Sub' $P5023 = 'cuid_256_1383914954.64741' 
    capture_lex $P5023
    $P5019 = $P5023($P5024)
    goto for_next1095
  for_done1097:
  if440_end1089:
.annotate 'line', 887
    $P5025 = _lex_param_1."!make"($P101)
    goto lexotic_1045
  lexotic_1044:
    .get_results ($P5025)
  lexotic_1045:
    .return ($P5025) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_255_1383914954.64741") :anon :lex :outer("cuid_91_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 869
    .lex "$name", $P101 
    .local pmc fb_tmp_60 
    .local pmc fb_tmp_61 
    .local pmc fb_tmp_62 
    .local pmc fb_tmp_63 
    .local pmc fb_tmp_64 
    .local pmc fb_tmp_65 
    .local pmc fb_tmp_66 
    .local pmc fb_tmp_67 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P101, $P5001
.annotate 'line', 870
    nqp_get_sc_object $P5002, "2D75A9E3BEA240A82E5B17B1BB1078D757A67840-1383914940.28217", 86
    find_lex $P5003, "$/"
    $P5004 = $P5002."new"($P5003 :named("node"))
    store_lex "$past", $P5004
    find_lex $P5005, "$/"
    unless_null $P5005, fallback1063
    nqp_get_sc_object $P5006, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5005, $P5006
  fallback1063:
    set fb_tmp_62, $P5005
    repr_defined $I5003, fb_tmp_62
    unless $I5003 goto if424_else1061 
    set $P5007, fb_tmp_62["OPER"]
    set $P5009, $P5007
    goto if424_end1062
  if424_else1061:
    null $P5008
    set $P5009, $P5008
  if424_end1062:
    unless_null $P5009, vivi_4251064
    nqp_get_sc_object $P5010, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5009, $P5010
  vivi_4251064:
    set fb_tmp_61, $P5009
    repr_defined $I5002, fb_tmp_61
    unless $I5002 goto if423_else1059 
    set $P5011, fb_tmp_61["O"]
    set $P5013, $P5011
    goto if423_end1060
  if423_else1059:
    null $P5012
    set $P5013, $P5012
  if423_end1060:
    unless_null $P5013, vivi_4261065
    nqp_get_sc_object $P5014, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5013, $P5014
  vivi_4261065:
    set fb_tmp_60, $P5013
    repr_defined $I5001, fb_tmp_60
    unless $I5001 goto if422_else1057 
    set $P5015, fb_tmp_60["op"]
    set $P5017, $P5015
    goto if422_end1058
  if422_else1057:
    null $P5016
    set $P5017, $P5016
  if422_end1058:
    unless_null $P5017, vivi_4271066
    nqp_get_sc_object $P5018, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5017, $P5018
  vivi_4271066:
    unless $P5017 goto if421_end1056 
.annotate 'line', 871
.annotate 'line', 872
    find_lex $P5019, "$past"
    find_lex $P5020, "$/"
    unless_null $P5020, fallback1073
    nqp_get_sc_object $P5021, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5020, $P5021
  fallback1073:
    set fb_tmp_65, $P5020
    repr_defined $I5006, fb_tmp_65
    unless $I5006 goto if430_else1071 
    set $P5022, fb_tmp_65["OPER"]
    set $P5024, $P5022
    goto if430_end1072
  if430_else1071:
    null $P5023
    set $P5024, $P5023
  if430_end1072:
    unless_null $P5024, vivi_4311074
    nqp_get_sc_object $P5025, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5024, $P5025
  vivi_4311074:
    set fb_tmp_64, $P5024
    repr_defined $I5005, fb_tmp_64
    unless $I5005 goto if429_else1069 
    set $P5026, fb_tmp_64["O"]
    set $P5028, $P5026
    goto if429_end1070
  if429_else1069:
    null $P5027
    set $P5028, $P5027
  if429_end1070:
    unless_null $P5028, vivi_4321075
    nqp_get_sc_object $P5029, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5028, $P5029
  vivi_4321075:
    set fb_tmp_63, $P5028
    repr_defined $I5004, fb_tmp_63
    unless $I5004 goto if428_else1067 
    set $P5030, fb_tmp_63["op"]
    set $P5032, $P5030
    goto if428_end1068
  if428_else1067:
    null $P5031
    set $P5032, $P5031
  if428_end1068:
    unless_null $P5032, vivi_4331076
    nqp_get_sc_object $P5033, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5032, $P5033
  vivi_4331076:
    set $S5001, $P5032
    $P5034 = $P5019."op"($S5001)
  if421_end1056:
    find_lex $P5035, "$key"
    set $S5002, $P5035
    iseq $I5007, $S5002, "LIST"
    unless $I5007 goto if434_end1078 
.annotate 'line', 874
    box $P5036, "infix"
    store_lex "$key", $P5036
  if434_end1078:
    find_lex $P5037, "$key"
    set $S5007, $P5037
    downcase $S5006, $S5007
    concat $S5005, $S5006, ":<"
    find_lex $P5038, "$/"
    unless_null $P5038, fallback1083
    nqp_get_sc_object $P5039, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5038, $P5039
  fallback1083:
    set fb_tmp_67, $P5038
    repr_defined $I5009, fb_tmp_67
    unless $I5009 goto if436_else1081 
    set $P5040, fb_tmp_67["OPER"]
    set $P5042, $P5040
    goto if436_end1082
  if436_else1081:
    null $P5041
    set $P5042, $P5041
  if436_end1082:
    unless_null $P5042, vivi_4371084
    nqp_get_sc_object $P5043, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5042, $P5043
  vivi_4371084:
    set fb_tmp_66, $P5042
    repr_defined $I5008, fb_tmp_66
    unless $I5008 goto if435_else1079 
    set $P5044, fb_tmp_66["sym"]
    set $P5046, $P5044
    goto if435_end1080
  if435_else1079:
    null $P5045
    set $P5046, $P5045
  if435_end1080:
    unless_null $P5046, vivi_4381085
    nqp_get_sc_object $P5047, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5046, $P5047
  vivi_4381085:
    set $S5008, $P5046
    concat $S5004, $S5005, $S5008
    concat $S5003, $S5004, ">"
    box $P5048, $S5003
    set $P101, $P5048
.annotate 'line', 876
    find_lex $P5049, "$past"
    set $S5010, $P101
    concat $S5009, "&", $S5010
    $P5049."name"($S5009)
.annotate 'line', 877
    find_lex $P5050, "$past"
    $P5051 = $P5050."op"()
    set $P5054, $P5051
    if $P5051 goto unless439_end1087 
.annotate 'line', 878
    find_lex $P5052, "$past"
    $P5053 = $P5052."op"("call")
    set $P5054, $P5053
  unless439_end1087:
    .return ($P5054) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_256_1383914954.64741") :anon :lex :outer("cuid_91_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 885
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    $P5001 = _lex_param_0."ast"()
    defined $I5001, $P5001
    box $P5006, $I5001
    set $P5005, $P5006
    unless $I5001 goto if443_end1094 
    find_lex $P5002, "$past"
    $P5003 = _lex_param_0."ast"()
    $P5004 = $P5002."push"($P5003)
    set $P5005, $P5004
  if443_end1094:
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "term:sym<circumfix>" :subid("cuid_92_1383914954.64741") :anon :lex :outer("cuid_249_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 890
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_69 
    unless_null _lex_param_1, fallback1101
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set _lex_param_1, $P5001
  fallback1101:
    set fb_tmp_69, _lex_param_1
    repr_defined $I5001, fb_tmp_69
    unless $I5001 goto if444_else1099 
    set $P5002, fb_tmp_69["circumfix"]
    set $P5004, $P5002
    goto if444_end1100
  if444_else1099:
    null $P5003
    set $P5004, $P5003
  if444_end1100:
    unless_null $P5004, vivi_4451102
    nqp_get_sc_object $P5005, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5004, $P5005
  vivi_4451102:
    $P5006 = $P5004."ast"()
    $P5007 = _lex_param_1."!make"($P5006)
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "termish" :subid("cuid_93_1383914954.64741") :anon :lex :outer("cuid_249_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 892
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_70 
    unless_null _lex_param_1, fallback1105
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set _lex_param_1, $P5001
  fallback1105:
    set fb_tmp_70, _lex_param_1
    repr_defined $I5001, fb_tmp_70
    unless $I5001 goto if446_else1103 
    set $P5002, fb_tmp_70["term"]
    set $P5004, $P5002
    goto if446_end1104
  if446_else1103:
    null $P5003
    set $P5004, $P5003
  if446_end1104:
    unless_null $P5004, vivi_4471106
    nqp_get_sc_object $P5005, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5004, $P5005
  vivi_4471106:
    $P5006 = $P5004."ast"()
    $P5007 = _lex_param_1."!make"($P5006)
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "nullterm" :subid("cuid_94_1383914954.64741") :anon :lex :outer("cuid_249_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 893
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    $P5002 = _lex_param_1."!make"($P5001)
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "nullterm_alt" :subid("cuid_95_1383914954.64741") :anon :lex :outer("cuid_249_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 894
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_71 
    unless_null _lex_param_1, fallback1109
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set _lex_param_1, $P5001
  fallback1109:
    set fb_tmp_71, _lex_param_1
    repr_defined $I5001, fb_tmp_71
    unless $I5001 goto if448_else1107 
    set $P5002, fb_tmp_71["term"]
    set $P5004, $P5002
    goto if448_end1108
  if448_else1107:
    null $P5003
    set $P5004, $P5003
  if448_end1108:
    unless_null $P5004, vivi_4491110
    nqp_get_sc_object $P5005, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5004, $P5005
  vivi_4491110:
    $P5006 = $P5004."ast"()
    $P5007 = _lex_param_1."!make"($P5006)
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "integer" :subid("cuid_96_1383914954.64741") :anon :lex :outer("cuid_249_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 896
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_72 
    unless_null _lex_param_1, fallback1113
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set _lex_param_1, $P5001
  fallback1113:
    set fb_tmp_72, _lex_param_1
    repr_defined $I5001, fb_tmp_72
    unless $I5001 goto if450_else1111 
    set $P5002, fb_tmp_72["VALUE"]
    set $P5004, $P5002
    goto if450_end1112
  if450_else1111:
    null $P5003
    set $P5004, $P5003
  if450_end1112:
    unless_null $P5004, vivi_4511114
    nqp_get_sc_object $P5005, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5004, $P5005
  vivi_4511114:
    $P5006 = $P5004."ast"()
    $P5007 = _lex_param_1."!make"($P5006)
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "dec_number" :subid("cuid_97_1383914954.64741") :anon :lex :outer("cuid_249_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 898
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    set $N5001, _lex_param_1
    $P5001 = _lex_param_1."!make"($N5001)
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "decint" :subid("cuid_98_1383914954.64741") :anon :lex :outer("cuid_249_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 900
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    $P5002 = $P5001."string_to_int"(_lex_param_1, 10)
    $P5003 = _lex_param_1."!make"($P5002)
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "hexint" :subid("cuid_99_1383914954.64741") :anon :lex :outer("cuid_249_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 901
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    $P5002 = $P5001."string_to_int"(_lex_param_1, 16)
    $P5003 = _lex_param_1."!make"($P5002)
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "octint" :subid("cuid_100_1383914954.64741") :anon :lex :outer("cuid_249_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 902
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    $P5002 = $P5001."string_to_int"(_lex_param_1, 8)
    $P5003 = _lex_param_1."!make"($P5002)
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "binint" :subid("cuid_101_1383914954.64741") :anon :lex :outer("cuid_249_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 903
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    $P5002 = $P5001."string_to_int"(_lex_param_1, 2)
    $P5003 = _lex_param_1."!make"($P5002)
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "quote_EXPR" :subid("cuid_102_1383914954.64741") :anon :lex :outer("cuid_249_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 905
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5027 = 'cuid_258_1383914954.64741' 
    capture_lex $P5027 
    .lex "$past", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_73 
    .local pmc fb_tmp_74 
    .local pmc fb_tmp_75 
    .local pmc pkg_viv_tmp_14 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P101, $P5001
.annotate 'line', 906
    unless_null _lex_param_1, fallback1117
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set _lex_param_1, $P5002
  fallback1117:
    set fb_tmp_73, _lex_param_1
    repr_defined $I5001, fb_tmp_73
    unless $I5001 goto if452_else1115 
    set $P5003, fb_tmp_73["quote_delimited"]
    set $P5005, $P5003
    goto if452_end1116
  if452_else1115:
    null $P5004
    set $P5005, $P5004
  if452_end1116:
    unless_null $P5005, vivi_4531118
    nqp_get_sc_object $P5006, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5005, $P5006
  vivi_4531118:
    $P5007 = $P5005."ast"()
    set $P101, $P5007
    find_dynamic_lex $P5008, "%*QUOTEMOD"
    unless_null $P5008, fallback1123
    nqp_get_sc_object $P5010, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 0
    get_who $P5009, $P5010
    set pkg_viv_tmp_14, $P5009
    set fb_tmp_75, pkg_viv_tmp_14
    repr_defined $I5003, fb_tmp_75
    unless $I5003 goto if456_else1124 
    set $P5011, fb_tmp_75["%QUOTEMOD"]
    set $P5013, $P5011
    goto if456_end1125
  if456_else1124:
    null $P5012
    set $P5013, $P5012
  if456_end1125:
    unless_null $P5013, vivi_4571126
    new $P5014, 'Hash'
    set pkg_viv_tmp_14["%QUOTEMOD"], $P5014
    set $P5013, $P5014
  vivi_4571126:
    unless_null $P5013, vivi_4581127
    die "Contextual %*QUOTEMOD not found"
    box $P5015, "Contextual %*QUOTEMOD not found"
    set $P5013, $P5015
  vivi_4581127:
    set $P5008, $P5013
  fallback1123:
    set fb_tmp_74, $P5008
    repr_defined $I5002, fb_tmp_74
    unless $I5002 goto if455_else1121 
    set $P5016, fb_tmp_74["w"]
    set $P5018, $P5016
    goto if455_end1122
  if455_else1121:
    null $P5017
    set $P5018, $P5017
  if455_end1122:
    unless_null $P5018, vivi_4591128
    nqp_get_sc_object $P5019, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5018, $P5019
  vivi_4591128:
    unless $P5018 goto if454_end1120 
.annotate 'line', 907
    nqp_get_sc_object $P5020, "2D75A9E3BEA240A82E5B17B1BB1078D757A67840-1383914940.28217", 55
    type_check $I5004, $P101, $P5020
    unless $I5004 goto if460_else1129 
    .const 'Sub' $P5021 = 'cuid_258_1383914954.64741' 
    capture_lex $P5021
    $P5022 = $P5021()
    set $P5025, $P5022
    goto if460_end1130
  if460_else1129:
.annotate 'line', 918
.annotate 'line', 919
    $P5023 = _lex_param_1."CURSOR"()
    $P5024 = $P5023."panic"("Can't form :w list from non-constant strings (yet)")
    set $P5025, $P5024
  if460_end1130:
  if454_end1120:
.annotate 'line', 922
    $P5026 = _lex_param_1."!make"($P101)
    .return ($P5026) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_258_1383914954.64741") :anon :lex :outer("cuid_102_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 908
    .const 'Sub' $P5037 = 'cuid_257_1383914954.64741' 
    capture_lex $P5037 
    .lex "@words", $P101 
    .local pmc fb_tmp_76 
    .local pmc pkg_lookup_tmp_3 
    .local pmc pkg_lookup_tmp_2 
    .local pmc fb_tmp_77 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
.annotate 'line', 909
    find_lex $P5018, "$/"
    find_lex $P5019, "$past"
    $P5020 = $P5019."value"()
    nqp_get_sc_object $P5003, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 0
    set pkg_lookup_tmp_2, $P5003
    get_who $P5004, pkg_lookup_tmp_2
    exists $I5002, $P5004["HLL"]
    unless $I5002 goto if462_else1133 
    get_who $P5006, pkg_lookup_tmp_2
    set $P5005, $P5006["HLL"]
    set $P5008, $P5005
    goto if462_end1134
  if462_else1133:
    nqp_get_sc_object $P5007, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5008, $P5007
  if462_end1134:
    set pkg_lookup_tmp_3, $P5008
    get_who $P5009, pkg_lookup_tmp_3
    exists $I5003, $P5009["Grammar"]
    unless $I5003 goto if463_else1135 
    get_who $P5011, pkg_lookup_tmp_3
    set $P5010, $P5011["Grammar"]
    set $P5013, $P5010
    goto if463_end1136
  if463_else1135:
    nqp_get_sc_object $P5012, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5013, $P5012
  if463_end1136:
    get_who $P5002, $P5013
    set fb_tmp_76, $P5002
    repr_defined $I5001, fb_tmp_76
    unless $I5001 goto if461_else1131 
    set $P5014, fb_tmp_76["split_words"]
    set $P5016, $P5014
    goto if461_end1132
  if461_else1131:
    null $P5015
    set $P5016, $P5015
  if461_end1132:
    unless_null $P5016, vivi_4641137
    nqp_get_sc_object $P5017, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5016, $P5017
  vivi_4641137:
    $P5021 = $P5016($P5018, $P5020)
    set $P101, $P5021
    set $N5001, $P101
    set $N5002, 1
    isne $I5004, $N5001, $N5002
    unless $I5004 goto if465_else1138 
.annotate 'line', 910
.annotate 'line', 911
    nqp_get_sc_object $P5022, "2D75A9E3BEA240A82E5B17B1BB1078D757A67840-1383914940.28217", 86
    find_lex $P5023, "$/"
    $P5024 = $P5022."new"("list" :named("op"), $P5023 :named("node"))
    store_lex "$past", $P5024
    set $P5025, $P101
    iter $P5027, $P101
  for_next1140:
    unless $P5027, for_done1142
    shift $P5029, $P5027
  for_redo1141:
    .const 'Sub' $P5028 = 'cuid_257_1383914954.64741' 
    capture_lex $P5028
    $P5025 = $P5028($P5029)
    goto for_next1140
  for_done1142:
    set $P5036, $P5025
    goto if465_end1139
  if465_else1138:
.annotate 'line', 914
.annotate 'line', 915
    nqp_get_sc_object $P5030, "2D75A9E3BEA240A82E5B17B1BB1078D757A67840-1383914940.28217", 55
    set fb_tmp_77, $P101
    repr_defined $I5005, fb_tmp_77
    unless $I5005 goto if466_else1143 
    set $P5031, fb_tmp_77[0]
    set $P5033, $P5031
    goto if466_end1144
  if466_else1143:
    null $P5032
    set $P5033, $P5032
  if466_end1144:
    unless_null $P5033, vivi_4671145
    nqp_get_sc_object $P5034, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5033, $P5034
  vivi_4671145:
    set $S5001, $P5033
    $P5035 = $P5030."new"($S5001 :named("value"))
    store_lex "$past", $P5035
    set $P5036, $P5035
  if465_end1139:
    .return ($P5036) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_257_1383914954.64741") :anon :lex :outer("cuid_258_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 912
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5001, "$past"
    nqp_get_sc_object $P5002, "2D75A9E3BEA240A82E5B17B1BB1078D757A67840-1383914940.28217", 55
    $P5003 = $P5002."new"(_lex_param_0 :named("value"))
    $P5004 = $P5001."push"($P5003)
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "quote_delimited" :subid("cuid_103_1383914954.64741") :anon :lex :outer("cuid_249_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 925
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5027 = 'cuid_259_1383914954.64741' 
    capture_lex $P5027 
    .lex "@parts", $P101 
    .lex "$lastlit", $P102 
    .lex "$past", $P103 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_78 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P102, $P5002
    nqp_get_sc_object $P5003, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P103, $P5003
    box $P5004, ""
    set $P102, $P5004
    unless_null _lex_param_1, fallback1148
    nqp_get_sc_object $P5008, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set _lex_param_1, $P5008
  fallback1148:
    set fb_tmp_78, _lex_param_1
    repr_defined $I5001, fb_tmp_78
    unless $I5001 goto if468_else1146 
    set $P5009, fb_tmp_78["quote_atom"]
    set $P5011, $P5009
    goto if468_end1147
  if468_else1146:
    null $P5010
    set $P5011, $P5010
  if468_end1147:
    unless_null $P5011, vivi_4691149
    nqp_get_sc_object $P5012, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5011, $P5012
  vivi_4691149:
    set $P5005, $P5011
    iter $P5007, $P5011
  for_next1158:
    unless $P5007, for_done1160
    shift $P5014, $P5007
  for_redo1159:
    .const 'Sub' $P5013 = 'cuid_259_1383914954.64741' 
    capture_lex $P5013
    $P5005 = $P5013($P5014)
    goto for_next1158
  for_done1160:
    set $S5001, $P102
    isgt $I5002, $S5001, ""
    unless $I5002 goto if474_end1162 
.annotate 'line', 946
    nqp_get_sc_object $P5015, "2D75A9E3BEA240A82E5B17B1BB1078D757A67840-1383914940.28217", 55
    $P5016 = $P5015."new"($P102 :named("value"))
    $P5017 = $P101."push"($P5016)
  if474_end1162:
    unless $P101 goto if475_else1163 
.annotate 'line', 947
    $P5018 = $P101."shift"()
    set $P5021, $P5018
    goto if475_end1164
  if475_else1163:
    nqp_get_sc_object $P5019, "2D75A9E3BEA240A82E5B17B1BB1078D757A67840-1383914940.28217", 55
    $P5020 = $P5019."new"("" :named("value"))
    set $P5021, $P5020
  if475_end1164:
    set $P103, $P5021
  while476_test1165:
    set $P5025, $P101
    unless $P101 goto while476_done1169 
  while476_redo1167:
.annotate 'line', 948
.annotate 'line', 949
    nqp_get_sc_object $P5022, "2D75A9E3BEA240A82E5B17B1BB1078D757A67840-1383914940.28217", 86
    $P5023 = $P101."shift"()
    $P5024 = $P5022."new"($P103, $P5023, "concat" :named("op"))
    set $P103, $P5024
    set $P5025, $P103
    goto while476_test1165 
  while476_done1169:
.annotate 'line', 951
    $P5026 = _lex_param_1."!make"($P103)
    .return ($P5026) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_259_1383914954.64741") :anon :lex :outer("cuid_103_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 928
    .param pmc _lex_param_0 
    .lex "$ast", $P101 
    .lex "$_", _lex_param_0 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P101, $P5001
.annotate 'line', 929
    $P5002 = _lex_param_0."ast"()
    set $P101, $P5002
    nqp_get_sc_object $P5003, "2D75A9E3BEA240A82E5B17B1BB1078D757A67840-1383914940.28217", 12
    type_check $I5002, $P101, $P5003
    not $I5001, $I5002
    unless $I5001 goto if470_else1150 
.annotate 'line', 930
    find_lex $P5004, "$lastlit"
    set $S5002, $P5004
    set $S5003, $P101
    concat $S5001, $S5002, $S5003
    box $P5005, $S5001
    store_lex "$lastlit", $P5005
    set $P5023, $P5005
    goto if470_end1151
  if470_else1150:
    nqp_get_sc_object $P5006, "2D75A9E3BEA240A82E5B17B1BB1078D757A67840-1383914940.28217", 55
    type_check $I5003, $P101, $P5006
    unless $I5003 goto if471_else1152 
.annotate 'line', 933
    find_lex $P5007, "$lastlit"
    set $S5005, $P5007
.annotate 'line', 934
    $P5008 = $P101."value"()
    set $S5006, $P5008
    concat $S5004, $S5005, $S5006
    box $P5009, $S5004
    store_lex "$lastlit", $P5009
    set $P5022, $P5009
    goto if471_end1153
  if471_else1152:
.annotate 'line', 936
    find_lex $P5010, "$lastlit"
    set $S5007, $P5010
    isgt $I5004, $S5007, ""
    unless $I5004 goto if472_end1155 
.annotate 'line', 937
.annotate 'line', 938
    find_lex $P5011, "@parts"
    nqp_get_sc_object $P5012, "2D75A9E3BEA240A82E5B17B1BB1078D757A67840-1383914940.28217", 55
    find_lex $P5013, "$lastlit"
    $P5014 = $P5012."new"($P5013 :named("value"))
    $P5015 = $P5011."push"($P5014)
  if472_end1155:
.annotate 'line', 940
    find_lex $P5016, "@parts"
    nqp_get_sc_object $P5017, "2D75A9E3BEA240A82E5B17B1BB1078D757A67840-1383914940.28217", 12
    type_check $I5005, $P101, $P5017
    unless $I5005 goto if473_else1156 
    set $P5020, $P101
    goto if473_end1157
  if473_else1156:
.annotate 'line', 942
    nqp_get_sc_object $P5018, "2D75A9E3BEA240A82E5B17B1BB1078D757A67840-1383914940.28217", 55
    $P5019 = $P5018."new"($P101 :named("value"))
    set $P5020, $P5019
  if473_end1157:
    $P5016."push"($P5020)
    box $P5021, ""
    store_lex "$lastlit", $P5021
    set $P5022, $P5021
  if471_end1153:
    set $P5023, $P5022
  if470_end1151:
    .return ($P5023) 
.end
.HLL "nqp"
.namespace []
.sub "quote_atom" :subid("cuid_104_1383914954.64741") :anon :lex :outer("cuid_249_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 954
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_79 
    .local pmc fb_tmp_80 
.annotate 'line', 955
    unless_null _lex_param_1, fallback1174
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set _lex_param_1, $P5001
  fallback1174:
    set fb_tmp_79, _lex_param_1
    repr_defined $I5001, fb_tmp_79
    unless $I5001 goto if478_else1172 
    set $P5002, fb_tmp_79["quote_escape"]
    set $P5004, $P5002
    goto if478_end1173
  if478_else1172:
    null $P5003
    set $P5004, $P5003
  if478_end1173:
    unless_null $P5004, vivi_4791175
    nqp_get_sc_object $P5005, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5004, $P5005
  vivi_4791175:
    unless $P5004 goto if477_else1170 
    unless_null _lex_param_1, fallback1178
    nqp_get_sc_object $P5006, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set _lex_param_1, $P5006
  fallback1178:
    set fb_tmp_80, _lex_param_1
    repr_defined $I5002, fb_tmp_80
    unless $I5002 goto if480_else1176 
    set $P5007, fb_tmp_80["quote_escape"]
    set $P5009, $P5007
    goto if480_end1177
  if480_else1176:
    null $P5008
    set $P5009, $P5008
  if480_end1177:
    unless_null $P5009, vivi_4811179
    nqp_get_sc_object $P5010, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5009, $P5010
  vivi_4811179:
    $P5011 = $P5009."ast"()
    set $P5012, $P5011
    goto if477_end1171
  if477_else1170:
    set $S5001, _lex_param_1
    box $P5013, $S5001
    set $P5012, $P5013
  if477_end1171:
    $P5014 = _lex_param_1."!make"($P5012)
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<backslash>" :subid("cuid_105_1383914954.64741") :anon :lex :outer("cuid_249_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 958
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    $P5001 = _lex_param_1."!make"("\\")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<stopper>" :subid("cuid_106_1383914954.64741") :anon :lex :outer("cuid_249_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 959
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_81 
    unless_null _lex_param_1, fallback1182
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set _lex_param_1, $P5001
  fallback1182:
    set fb_tmp_81, _lex_param_1
    repr_defined $I5001, fb_tmp_81
    unless $I5001 goto if482_else1180 
    set $P5002, fb_tmp_81["stopper"]
    set $P5004, $P5002
    goto if482_end1181
  if482_else1180:
    null $P5003
    set $P5004, $P5003
  if482_end1181:
    unless_null $P5004, vivi_4831183
    nqp_get_sc_object $P5005, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5004, $P5005
  vivi_4831183:
    set $S5001, $P5004
    $P5006 = _lex_param_1."!make"($S5001)
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<bs>" :subid("cuid_107_1383914954.64741") :anon :lex :outer("cuid_249_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 961
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    $P5001 = _lex_param_1."!make"("\b")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<nl>" :subid("cuid_108_1383914954.64741") :anon :lex :outer("cuid_249_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 962
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    $P5001 = _lex_param_1."!make"("\n")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<cr>" :subid("cuid_109_1383914954.64741") :anon :lex :outer("cuid_249_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 963
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    $P5001 = _lex_param_1."!make"("\r")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<tab>" :subid("cuid_110_1383914954.64741") :anon :lex :outer("cuid_249_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 964
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    $P5001 = _lex_param_1."!make"("\t")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<ff>" :subid("cuid_111_1383914954.64741") :anon :lex :outer("cuid_249_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 965
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    $P5001 = _lex_param_1."!make"("\f")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<esc>" :subid("cuid_112_1383914954.64741") :anon :lex :outer("cuid_249_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 966
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    $P5001 = _lex_param_1."!make"("\e")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<hex>" :subid("cuid_113_1383914954.64741") :anon :lex :outer("cuid_249_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 968
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_82 
    .local pmc fb_tmp_83 
    .local pmc fb_tmp_84 
    .local pmc fb_tmp_85 
.annotate 'line', 969
    nqp_decontainerize $P5001, _lex_param_0
    unless_null _lex_param_1, fallback1188
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set _lex_param_1, $P5002
  fallback1188:
    set fb_tmp_82, _lex_param_1
    repr_defined $I5001, fb_tmp_82
    unless $I5001 goto if485_else1186 
    set $P5003, fb_tmp_82["hexint"]
    set $P5005, $P5003
    goto if485_end1187
  if485_else1186:
    null $P5004
    set $P5005, $P5004
  if485_end1187:
    unless_null $P5005, vivi_4861189
    nqp_get_sc_object $P5006, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5005, $P5006
  vivi_4861189:
    unless $P5005 goto if484_else1184 
    unless_null _lex_param_1, fallback1192
    nqp_get_sc_object $P5007, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set _lex_param_1, $P5007
  fallback1192:
    set fb_tmp_83, _lex_param_1
    repr_defined $I5002, fb_tmp_83
    unless $I5002 goto if487_else1190 
    set $P5008, fb_tmp_83["hexint"]
    set $P5010, $P5008
    goto if487_end1191
  if487_else1190:
    null $P5009
    set $P5010, $P5009
  if487_end1191:
    unless_null $P5010, vivi_4881193
    nqp_get_sc_object $P5011, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5010, $P5011
  vivi_4881193:
    set $P5021, $P5010
    goto if484_end1185
  if484_else1184:
    unless_null _lex_param_1, fallback1198
    nqp_get_sc_object $P5012, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set _lex_param_1, $P5012
  fallback1198:
    set fb_tmp_85, _lex_param_1
    repr_defined $I5004, fb_tmp_85
    unless $I5004 goto if490_else1196 
    set $P5013, fb_tmp_85["hexints"]
    set $P5015, $P5013
    goto if490_end1197
  if490_else1196:
    null $P5014
    set $P5015, $P5014
  if490_end1197:
    unless_null $P5015, vivi_4911199
    nqp_get_sc_object $P5016, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5015, $P5016
  vivi_4911199:
    set fb_tmp_84, $P5015
    repr_defined $I5003, fb_tmp_84
    unless $I5003 goto if489_else1194 
    set $P5017, fb_tmp_84["hexint"]
    set $P5019, $P5017
    goto if489_end1195
  if489_else1194:
    null $P5018
    set $P5019, $P5018
  if489_end1195:
    unless_null $P5019, vivi_4921200
    nqp_get_sc_object $P5020, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5019, $P5020
  vivi_4921200:
    set $P5021, $P5019
  if484_end1185:
    $P5022 = $P5001."ints_to_string"($P5021)
    $P5023 = _lex_param_1."!make"($P5022)
    .return ($P5023) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<oct>" :subid("cuid_114_1383914954.64741") :anon :lex :outer("cuid_249_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 972
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_86 
    .local pmc fb_tmp_87 
    .local pmc fb_tmp_88 
    .local pmc fb_tmp_89 
.annotate 'line', 973
    nqp_decontainerize $P5001, _lex_param_0
    unless_null _lex_param_1, fallback1205
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set _lex_param_1, $P5002
  fallback1205:
    set fb_tmp_86, _lex_param_1
    repr_defined $I5001, fb_tmp_86
    unless $I5001 goto if494_else1203 
    set $P5003, fb_tmp_86["octint"]
    set $P5005, $P5003
    goto if494_end1204
  if494_else1203:
    null $P5004
    set $P5005, $P5004
  if494_end1204:
    unless_null $P5005, vivi_4951206
    nqp_get_sc_object $P5006, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5005, $P5006
  vivi_4951206:
    unless $P5005 goto if493_else1201 
    unless_null _lex_param_1, fallback1209
    nqp_get_sc_object $P5007, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set _lex_param_1, $P5007
  fallback1209:
    set fb_tmp_87, _lex_param_1
    repr_defined $I5002, fb_tmp_87
    unless $I5002 goto if496_else1207 
    set $P5008, fb_tmp_87["octint"]
    set $P5010, $P5008
    goto if496_end1208
  if496_else1207:
    null $P5009
    set $P5010, $P5009
  if496_end1208:
    unless_null $P5010, vivi_4971210
    nqp_get_sc_object $P5011, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5010, $P5011
  vivi_4971210:
    set $P5021, $P5010
    goto if493_end1202
  if493_else1201:
    unless_null _lex_param_1, fallback1215
    nqp_get_sc_object $P5012, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set _lex_param_1, $P5012
  fallback1215:
    set fb_tmp_89, _lex_param_1
    repr_defined $I5004, fb_tmp_89
    unless $I5004 goto if499_else1213 
    set $P5013, fb_tmp_89["octints"]
    set $P5015, $P5013
    goto if499_end1214
  if499_else1213:
    null $P5014
    set $P5015, $P5014
  if499_end1214:
    unless_null $P5015, vivi_5001216
    nqp_get_sc_object $P5016, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5015, $P5016
  vivi_5001216:
    set fb_tmp_88, $P5015
    repr_defined $I5003, fb_tmp_88
    unless $I5003 goto if498_else1211 
    set $P5017, fb_tmp_88["octint"]
    set $P5019, $P5017
    goto if498_end1212
  if498_else1211:
    null $P5018
    set $P5019, $P5018
  if498_end1212:
    unless_null $P5019, vivi_5011217
    nqp_get_sc_object $P5020, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5019, $P5020
  vivi_5011217:
    set $P5021, $P5019
  if493_end1202:
    $P5022 = $P5001."ints_to_string"($P5021)
    $P5023 = _lex_param_1."!make"($P5022)
    .return ($P5023) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<chr>" :subid("cuid_115_1383914954.64741") :anon :lex :outer("cuid_249_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 976
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_90 
.annotate 'line', 977
    unless_null _lex_param_1, fallback1220
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set _lex_param_1, $P5001
  fallback1220:
    set fb_tmp_90, _lex_param_1
    repr_defined $I5001, fb_tmp_90
    unless $I5001 goto if502_else1218 
    set $P5002, fb_tmp_90["charspec"]
    set $P5004, $P5002
    goto if502_end1219
  if502_else1218:
    null $P5003
    set $P5004, $P5003
  if502_end1219:
    unless_null $P5004, vivi_5031221
    nqp_get_sc_object $P5005, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5004, $P5005
  vivi_5031221:
    $P5006 = $P5004."ast"()
    $P5007 = _lex_param_1."!make"($P5006)
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<0>" :subid("cuid_116_1383914954.64741") :anon :lex :outer("cuid_249_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 980
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
.annotate 'line', 981
    $P5001 = _lex_param_1."!make"(utf8:"\x{0}")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "quote_escape:sym<misc>" :subid("cuid_117_1383914954.64741") :anon :lex :outer("cuid_249_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 984
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_91 
    .local pmc fb_tmp_92 
    .local pmc fb_tmp_93 
.annotate 'line', 985
    unless_null _lex_param_1, fallback1226
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set _lex_param_1, $P5001
  fallback1226:
    set fb_tmp_91, _lex_param_1
    repr_defined $I5001, fb_tmp_91
    unless $I5001 goto if505_else1224 
    set $P5002, fb_tmp_91["textq"]
    set $P5004, $P5002
    goto if505_end1225
  if505_else1224:
    null $P5003
    set $P5004, $P5003
  if505_end1225:
    unless_null $P5004, vivi_5061227
    nqp_get_sc_object $P5005, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5004, $P5005
  vivi_5061227:
    unless $P5004 goto if504_else1222 
    unless_null _lex_param_1, fallback1230
    nqp_get_sc_object $P5006, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set _lex_param_1, $P5006
  fallback1230:
    set fb_tmp_92, _lex_param_1
    repr_defined $I5002, fb_tmp_92
    unless $I5002 goto if507_else1228 
    set $P5007, fb_tmp_92["textq"]
    set $P5009, $P5007
    goto if507_end1229
  if507_else1228:
    null $P5008
    set $P5009, $P5008
  if507_end1229:
    unless_null $P5009, vivi_5081231
    nqp_get_sc_object $P5010, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5009, $P5010
  vivi_5081231:
    $P5011 = $P5009."Str"()
    set $S5002, $P5011
    concat $S5001, "\\", $S5002
    box $P5019, $S5001
    set $P5018, $P5019
    goto if504_end1223
  if504_else1222:
    unless_null _lex_param_1, fallback1234
    nqp_get_sc_object $P5012, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set _lex_param_1, $P5012
  fallback1234:
    set fb_tmp_93, _lex_param_1
    repr_defined $I5003, fb_tmp_93
    unless $I5003 goto if509_else1232 
    set $P5013, fb_tmp_93["textqq"]
    set $P5015, $P5013
    goto if509_end1233
  if509_else1232:
    null $P5014
    set $P5015, $P5014
  if509_end1233:
    unless_null $P5015, vivi_5101235
    nqp_get_sc_object $P5016, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5015, $P5016
  vivi_5101235:
    $P5017 = $P5015."Str"()
    set $P5018, $P5017
  if504_end1223:
    $P5020 = _lex_param_1."!make"($P5018)
    .return ($P5020) 
.end
.HLL "nqp"
.namespace []
.sub "charname" :subid("cuid_118_1383914954.64741") :anon :lex :outer("cuid_249_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 988
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$codepoint", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_94 
    .local pmc fb_tmp_95 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P101, $P5001
    unless_null _lex_param_1, fallback1240
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set _lex_param_1, $P5002
  fallback1240:
    set fb_tmp_94, _lex_param_1
    repr_defined $I5001, fb_tmp_94
    unless $I5001 goto if512_else1238 
    set $P5003, fb_tmp_94["integer"]
    set $P5005, $P5003
    goto if512_end1239
  if512_else1238:
    null $P5004
    set $P5005, $P5004
  if512_end1239:
    unless_null $P5005, vivi_5131241
    nqp_get_sc_object $P5006, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5005, $P5006
  vivi_5131241:
    unless $P5005 goto if511_else1236 
.annotate 'line', 990
    unless_null _lex_param_1, fallback1244
    nqp_get_sc_object $P5007, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set _lex_param_1, $P5007
  fallback1244:
    set fb_tmp_95, _lex_param_1
    repr_defined $I5002, fb_tmp_95
    unless $I5002 goto if514_else1242 
    set $P5008, fb_tmp_95["integer"]
    set $P5010, $P5008
    goto if514_end1243
  if514_else1242:
    null $P5009
    set $P5010, $P5009
  if514_end1243:
    unless_null $P5010, vivi_5151245
    nqp_get_sc_object $P5011, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5010, $P5011
  vivi_5151245:
    $P5012 = $P5010."ast"()
    set $P5013, $P5012
    goto if511_end1237
  if511_else1236:
    set $S5002, _lex_param_1
    find_encoding $I5003, 'utf8'
    trans_encoding $S5001, $S5002, $I5003
    find_codepoint $I5003, $S5001
    box $P5014, $I5003
    set $P5013, $P5014
  if511_end1237:
    set $P101, $P5013
    set $N5001, $P101
    set $N5002, 0
    islt $I5004, $N5001, $N5002
    unless $I5004 goto if516_end1247 
.annotate 'line', 992
    $P5015 = _lex_param_1."CURSOR"()
    set $S5004, _lex_param_1
    concat $S5003, "Unrecognized character name ", $S5004
    $P5016 = $P5015."panic"($S5003)
  if516_end1247:
.annotate 'line', 993
    set $I5005, $P101
    chr $S5005, $I5005
    $P5017 = _lex_param_1."!make"($S5005)
    .return ($P5017) 
.end
.HLL "nqp"
.namespace []
.sub "charnames" :subid("cuid_119_1383914954.64741") :anon :lex :outer("cuid_249_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 996
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5014 = 'cuid_260_1383914954.64741' 
    capture_lex $P5014 
    .lex "$str", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_96 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P101, $P5001
    box $P5002, ""
    set $P101, $P5002
    unless_null _lex_param_1, fallback1250
    nqp_get_sc_object $P5006, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set _lex_param_1, $P5006
  fallback1250:
    set fb_tmp_96, _lex_param_1
    repr_defined $I5001, fb_tmp_96
    unless $I5001 goto if517_else1248 
    set $P5007, fb_tmp_96["charname"]
    set $P5009, $P5007
    goto if517_end1249
  if517_else1248:
    null $P5008
    set $P5009, $P5008
  if517_end1249:
    unless_null $P5009, vivi_5181251
    nqp_get_sc_object $P5010, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5009, $P5010
  vivi_5181251:
    set $P5003, $P5009
    iter $P5005, $P5009
  for_next1252:
    unless $P5005, for_done1254
    shift $P5012, $P5005
  for_redo1253:
    .const 'Sub' $P5011 = 'cuid_260_1383914954.64741' 
    capture_lex $P5011
    $P5003 = $P5011($P5012)
    goto for_next1252
  for_done1254:
.annotate 'line', 999
    $P5013 = _lex_param_1."!make"($P101)
    .return ($P5013) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_260_1383914954.64741") :anon :lex :outer("cuid_119_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 998
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5001, "$str"
    set $S5002, $P5001
    $P5002 = _lex_param_0."ast"()
    set $S5003, $P5002
    concat $S5001, $S5002, $S5003
    box $P5003, $S5001
    store_lex "$str", $P5003
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "charspec" :subid("cuid_120_1383914954.64741") :anon :lex :outer("cuid_249_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1002
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_97 
    .local pmc fb_tmp_98 
.annotate 'line', 1003
    unless_null _lex_param_1, fallback1259
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set _lex_param_1, $P5001
  fallback1259:
    set fb_tmp_97, _lex_param_1
    repr_defined $I5001, fb_tmp_97
    unless $I5001 goto if520_else1257 
    set $P5002, fb_tmp_97["charnames"]
    set $P5004, $P5002
    goto if520_end1258
  if520_else1257:
    null $P5003
    set $P5004, $P5003
  if520_end1258:
    unless_null $P5004, vivi_5211260
    nqp_get_sc_object $P5005, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5004, $P5005
  vivi_5211260:
    unless $P5004 goto if519_else1255 
    unless_null _lex_param_1, fallback1263
    nqp_get_sc_object $P5006, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set _lex_param_1, $P5006
  fallback1263:
    set fb_tmp_98, _lex_param_1
    repr_defined $I5002, fb_tmp_98
    unless $I5002 goto if522_else1261 
    set $P5007, fb_tmp_98["charnames"]
    set $P5009, $P5007
    goto if522_end1262
  if522_else1261:
    null $P5008
    set $P5009, $P5008
  if522_end1262:
    unless_null $P5009, vivi_5231264
    nqp_get_sc_object $P5010, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5009, $P5010
  vivi_5231264:
    $P5011 = $P5009."ast"()
    set $P5014, $P5011
    goto if519_end1256
  if519_else1255:
    nqp_decontainerize $P5012, _lex_param_0
    $P5013 = $P5012."string_to_int"(_lex_param_1, 10)
    set $I5003, $P5013
    chr $S5001, $I5003
    box $P5015, $S5001
    set $P5014, $P5015
  if519_end1256:
    $P5016 = _lex_param_1."!make"($P5014)
    .return ($P5016) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_261_1383914954.64741") :anon :lex :outer("cuid_230_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1009
    .const 'Sub' $P5043 = 'cuid_121_1383914954.64741' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_122_1383914954.64741' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_123_1383914954.64741' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_124_1383914954.64741' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_125_1383914954.64741' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_126_1383914954.64741' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_127_1383914954.64741' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_128_1383914954.64741' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_129_1383914954.64741' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_130_1383914954.64741' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_131_1383914954.64741' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_132_1383914954.64741' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_133_1383914954.64741' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_134_1383914954.64741' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_135_1383914954.64741' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_136_1383914954.64741' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_137_1383914954.64741' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_138_1383914954.64741' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_139_1383914954.64741' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_140_1383914954.64741' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_141_1383914954.64741' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_142_1383914954.64741' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_143_1383914954.64741' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_144_1383914954.64741' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_145_1383914954.64741' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_146_1383914954.64741' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_147_1383914954.64741' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_148_1383914954.64741' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_149_1383914954.64741' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_150_1383914954.64741' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_151_1383914954.64741' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_152_1383914954.64741' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_153_1383914954.64741' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_154_1383914954.64741' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_155_1383914954.64741' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_156_1383914954.64741' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_157_1383914954.64741' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_158_1383914954.64741' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_159_1383914954.64741' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_160_1383914954.64741' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_161_1383914954.64741' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_162_1383914954.64741' 
    capture_lex $P5043 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_121_1383914954.64741' 
    capture_lex $P5001
    .const 'Sub' $P5002 = 'cuid_122_1383914954.64741' 
    capture_lex $P5002
    .const 'Sub' $P5003 = 'cuid_123_1383914954.64741' 
    capture_lex $P5003
    .const 'Sub' $P5004 = 'cuid_124_1383914954.64741' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_125_1383914954.64741' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_126_1383914954.64741' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_127_1383914954.64741' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_128_1383914954.64741' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_129_1383914954.64741' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_130_1383914954.64741' 
    capture_lex $P5010
    .const 'Sub' $P5011 = 'cuid_131_1383914954.64741' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_132_1383914954.64741' 
    capture_lex $P5012
    .const 'Sub' $P5013 = 'cuid_133_1383914954.64741' 
    capture_lex $P5013
    .const 'Sub' $P5014 = 'cuid_134_1383914954.64741' 
    capture_lex $P5014
    .const 'Sub' $P5015 = 'cuid_135_1383914954.64741' 
    capture_lex $P5015
    .const 'Sub' $P5016 = 'cuid_136_1383914954.64741' 
    capture_lex $P5016
    .const 'Sub' $P5017 = 'cuid_137_1383914954.64741' 
    capture_lex $P5017
    .const 'Sub' $P5018 = 'cuid_138_1383914954.64741' 
    capture_lex $P5018
    .const 'Sub' $P5019 = 'cuid_139_1383914954.64741' 
    capture_lex $P5019
    .const 'Sub' $P5020 = 'cuid_140_1383914954.64741' 
    capture_lex $P5020
    .const 'Sub' $P5021 = 'cuid_141_1383914954.64741' 
    capture_lex $P5021
    .const 'Sub' $P5022 = 'cuid_142_1383914954.64741' 
    capture_lex $P5022
    .const 'Sub' $P5023 = 'cuid_143_1383914954.64741' 
    capture_lex $P5023
    .const 'Sub' $P5024 = 'cuid_144_1383914954.64741' 
    capture_lex $P5024
    .const 'Sub' $P5025 = 'cuid_145_1383914954.64741' 
    capture_lex $P5025
    .const 'Sub' $P5026 = 'cuid_146_1383914954.64741' 
    capture_lex $P5026
    .const 'Sub' $P5027 = 'cuid_147_1383914954.64741' 
    capture_lex $P5027
    .const 'Sub' $P5028 = 'cuid_148_1383914954.64741' 
    capture_lex $P5028
    .const 'Sub' $P5029 = 'cuid_149_1383914954.64741' 
    capture_lex $P5029
    .const 'Sub' $P5030 = 'cuid_150_1383914954.64741' 
    capture_lex $P5030
    .const 'Sub' $P5031 = 'cuid_151_1383914954.64741' 
    capture_lex $P5031
    .const 'Sub' $P5032 = 'cuid_152_1383914954.64741' 
    capture_lex $P5032
    .const 'Sub' $P5033 = 'cuid_153_1383914954.64741' 
    capture_lex $P5033
    .const 'Sub' $P5034 = 'cuid_154_1383914954.64741' 
    capture_lex $P5034
    .const 'Sub' $P5035 = 'cuid_155_1383914954.64741' 
    capture_lex $P5035
    .const 'Sub' $P5036 = 'cuid_156_1383914954.64741' 
    capture_lex $P5036
    .const 'Sub' $P5037 = 'cuid_157_1383914954.64741' 
    capture_lex $P5037
    .const 'Sub' $P5038 = 'cuid_158_1383914954.64741' 
    capture_lex $P5038
    .const 'Sub' $P5039 = 'cuid_159_1383914954.64741' 
    capture_lex $P5039
    .const 'Sub' $P5040 = 'cuid_160_1383914954.64741' 
    capture_lex $P5040
    .const 'Sub' $P5041 = 'cuid_161_1383914954.64741' 
    capture_lex $P5041
    .const 'Sub' $P5042 = 'cuid_162_1383914954.64741' 
    capture_lex $P5042
    .return ($P5042) 
.end
.HLL "nqp"
.namespace []
.sub "BUILD" :subid("cuid_121_1383914954.64741") :anon :lex :outer("cuid_261_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1022
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 127
.annotate 'line', 1024
    nqp_decontainerize $P5003, _lex_param_0
    $P5004 = $P5003."default_backend"()
    repr_bind_attr_obj $P5001, $P5002, "$!backend", 10, $P5004
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 127
.annotate 'line', 1027
    nqp_decontainerize $P5008, _lex_param_0
    nqp_get_sc_object $P5009, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 127
    repr_get_attr_obj $P5010, $P5008, $P5009, "$!backend", 10
    $P5011 = $P5010."stages"()
    set $S5002, $P5011
    concat $S5001, "start parse ast ", $S5002
    split $P5007, " ", $S5001
    repr_bind_attr_obj $P5005, $P5006, "@!stages", 0, $P5007
    nqp_decontainerize $P5012, _lex_param_0
    nqp_get_sc_object $P5013, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 127
    split $P5014, " ", "e=s help|h target=s trace|t=s encoding=s output|o=s combine version|v show-config verbose-config|V stagestats=s? ll-exception rxtrace nqpevent=s profile profile-compile"
    repr_bind_attr_obj $P5012, $P5013, "@!cmdoptions", 3, $P5014
    nqp_decontainerize $P5015, _lex_param_0
    nqp_get_sc_object $P5016, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 127
    new $P5017, 'Hash'
    repr_bind_attr_obj $P5015, $P5016, "%!config", 6, $P5017
    .return ($P5017) 
.end
.HLL "nqp"
.namespace []
.sub "backend" :subid("cuid_122_1383914954.64741") :anon :lex :outer("cuid_261_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1034
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy 
    .lex "self", _lex_param_0 
    .lex "@value", _lex_param_1 
    .local pmc fb_tmp_99 
    unless _lex_param_1 goto if524_end1266 
.annotate 'line', 1035
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 127
    set fb_tmp_99, _lex_param_1
    repr_defined $I5001, fb_tmp_99
    unless $I5001 goto if525_else1267 
    set $P5003, fb_tmp_99[0]
    set $P5005, $P5003
    goto if525_end1268
  if525_else1267:
    null $P5004
    set $P5005, $P5004
  if525_end1268:
    unless_null $P5005, vivi_5261269
    nqp_get_sc_object $P5006, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5005, $P5006
  vivi_5261269:
    repr_bind_attr_obj $P5001, $P5002, "$!backend", 10, $P5005
    nqp_decontainerize $P5007, _lex_param_0
    nqp_get_sc_object $P5008, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 127
.annotate 'line', 1037
    nqp_decontainerize $P5010, _lex_param_0
    nqp_get_sc_object $P5011, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 127
    repr_get_attr_obj $P5012, $P5010, $P5011, "$!backend", 10
    $P5013 = $P5012."stages"()
    set $S5002, $P5013
    concat $S5001, "start parse ast ", $S5002
    split $P5009, " ", $S5001
    repr_bind_attr_obj $P5007, $P5008, "@!stages", 0, $P5009
  if524_end1266:
    nqp_decontainerize $P5014, _lex_param_0
    nqp_get_sc_object $P5015, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 127
    repr_get_attr_obj $P5016, $P5014, $P5015, "$!backend", 10
    .return ($P5016) 
.end
.HLL "nqp"
.namespace []
.sub "language" :subid("cuid_123_1383914954.64741") :anon :lex :outer("cuid_261_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1042
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :optional 
    .param int haz_param_7 :opt_flag 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    if haz_param_7, default1272
    nqp_get_sc_object $P5007, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set _lex_param_1, $P5007
  default1272:
    unless _lex_param_1 goto if527_end1271 
.annotate 'line', 1043
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 127
    repr_bind_attr_obj $P5001, $P5002, "$!language", 5, _lex_param_1
    set $S5001, _lex_param_1
    nqp_decontainerize $P5003, _lex_param_0
    compreg $S5001, $P5003
  if527_end1271:
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 127
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!language", 5
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "compiler" :subid("cuid_124_1383914954.64741") :anon :lex :outer("cuid_261_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1050
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    set $S5001, _lex_param_1
    compreg $P5001, $S5001
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "config" :subid("cuid_125_1383914954.64741") :anon :lex :outer("cuid_261_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1054
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 127
    repr_get_attr_obj $P5003, $P5001, $P5002, "%!config", 6
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "autoprint" :subid("cuid_126_1383914954.64741") :anon :lex :outer("cuid_261_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1056
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$value", _lex_param_1 
    .local pmc fb_tmp_100 
    getinterp $P5001
    $P5002 = $P5001."stdout_handle"()
    $P5003 = $P5002."tell"()
    set $N5001, $P5003
    find_dynamic_lex $P5004, "$*AUTOPRINTPOS"
    unless_null $P5004, fallback1275
    nqp_get_sc_object $P5006, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 0
    get_who $P5005, $P5006
    set fb_tmp_100, $P5005
    repr_defined $I5002, fb_tmp_100
    unless $I5002 goto if529_else1276 
    set $P5007, fb_tmp_100["$AUTOPRINTPOS"]
    set $P5009, $P5007
    goto if529_end1277
  if529_else1276:
    null $P5008
    set $P5009, $P5008
  if529_end1277:
    unless_null $P5009, vivi_5301278
    nqp_get_sc_object $P5010, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5009, $P5010
  vivi_5301278:
    unless_null $P5009, vivi_5311279
    die "Contextual $*AUTOPRINTPOS not found"
    box $P5011, "Contextual $*AUTOPRINTPOS not found"
    set $P5009, $P5011
  vivi_5311279:
    set $P5004, $P5009
  fallback1275:
    set $N5002, $P5004
    isgt $I5001, $N5001, $N5002
    box $P5015, $I5001
    set $P5014, $P5015
    if $I5001 goto unless528_end1274 
.annotate 'line', 1057
    nqp_decontainerize $P5012, _lex_param_0
    $P5013 = $P5012."interactive_result"(_lex_param_1)
    set $P5014, $P5013
  unless528_end1274:
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "interactive" :subid("cuid_127_1383914954.64741") :anon :lex :outer("cuid_261_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1061
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy :named 
    .const 'Sub' $P5030 = 'cuid_264_1383914954.64741' 
    capture_lex $P5030 
    .lex "$stdin", $P101 
    .lex "$encoding", $P102 
    .lex "$target", $P103 
    .lex "$save_ctx", $P104 
    .lex "self", _lex_param_0 
    .lex "%adverbs", _lex_param_1 
    .local pmc fb_tmp_101 
    .local pmc fb_tmp_102 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P102, $P5002
    nqp_get_sc_object $P5003, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P103, $P5003
    nqp_get_sc_object $P5004, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P104, $P5004
    getinterp $P5005
    $P5006 = $P5005."stderr_handle"()
.annotate 'line', 1062
    nqp_decontainerize $P5007, _lex_param_0
    $P5008 = $P5007."interactive_banner"()
    $P5009 = $P5006."print"($P5008)
    getinterp $P5010
    $P5011 = $P5010."stdin_handle"()
    set $P101, $P5011
    set fb_tmp_101, _lex_param_1
    repr_defined $I5001, fb_tmp_101
    unless $I5001 goto if532_else1280 
    set $P5012, fb_tmp_101["encoding"]
    set $P5014, $P5012
    goto if532_end1281
  if532_else1280:
    null $P5013
    set $P5014, $P5013
  if532_end1281:
    unless_null $P5014, vivi_5331282
    nqp_get_sc_object $P5015, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5014, $P5015
  vivi_5331282:
    set $S5001, $P5014
    box $P5016, $S5001
    set $P102, $P5016
    set $P5017, $P102
    unless $P102 goto if535_end1286 
    set $S5002, $P102
    isne $I5002, $S5002, "fixed_8"
    box $P5018, $I5002
    set $P5017, $P5018
  if535_end1286:
    unless $P5017 goto if534_end1284 
.annotate 'line', 1066
    $P5019 = $P101."encoding"($P102)
  if534_end1284:
    set fb_tmp_102, _lex_param_1
    repr_defined $I5003, fb_tmp_102
    unless $I5003 goto if536_else1287 
    set $P5020, fb_tmp_102["target"]
    set $P5022, $P5020
    goto if536_end1288
  if536_else1287:
    null $P5021
    set $P5022, $P5021
  if536_end1288:
    unless_null $P5022, vivi_5371289
    nqp_get_sc_object $P5023, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5022, $P5023
  vivi_5371289:
    set $S5004, $P5022
    downcase $S5003, $S5004
    box $P5024, $S5003
    set $P103, $P5024
    new $P5028, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5028, while538_handlers1293
    push_eh $P5028
  while538_test1290:
    box $P5029, 1
    set $P5027, $P5029
    unless 1 goto while538_done1294 
  while538_redo1292:
    .const 'Sub' $P5025 = 'cuid_264_1383914954.64741' 
    capture_lex $P5025
    $P5026 = $P5025()
    set $P5027, $P5026
    goto while538_test1290 
  while538_handlers1293:
    .get_results ($P5028)
    pop_upto_eh $P5028
    getattribute $P5028, $P5028, 'type'
    eq $P5028, .CONTROL_LOOP_NEXT, while538_test1290
    eq $P5028, .CONTROL_LOOP_REDO, while538_redo1292
  while538_done1294:
    pop_eh 
    .return ($P5027) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_264_1383914954.64741") :anon :lex :outer("cuid_127_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1072
    .const 'Sub' $P5029 = 'cuid_263_1383914954.64741' 
    capture_lex $P5029 
    .lex "$prompt", $P101 
    .lex "$code", $P102 
    .lex "$*AUTOPRINTPOS", $P103 
    .lex "$*CTXSAVE", $P104 
    .lex "$*MAIN_CTX", $P105 
    .local pmc fb_tmp_103 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P102, $P5002
    nqp_get_sc_object $P5003, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P103, $P5003
    nqp_get_sc_object $P5004, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P104, $P5004
    nqp_get_sc_object $P5005, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P105, $P5005
    find_lex $P5006, "$stdin"
    isfalse $I5001, $P5006
    unless $I5001 goto if539_end1296 
    die 0, .CONTROL_LOOP_LAST
  if539_end1296:
.annotate 'line', 1075
    find_lex $P5009, "self"
    nqp_decontainerize $P5008, $P5009
    $P5010 = $P5008."interactive_prompt"()
    set $P5007, $P5010
    defined $I5002, $P5007
    if $I5002, defor1297
    box $P5011, "> "
    set $P5007, $P5011
  defor1297:
    set $P101, $P5007
    find_lex $P5012, "$stdin"
    set $S5001, $P101
    $P5013 = $P5012."readline_interactive"($S5001)
    set $P102, $P5013
    isnull $I5003, $P102
    set $I5006, $I5003
    if $I5003 goto unless541_end1301 
    defined $I5005, $P102
    not $I5004, $I5005
    set $I5006, $I5004
  unless541_end1301:
    unless $I5006 goto if540_end1299 
.annotate 'line', 1077
    print "\n"
    die 0, .CONTROL_LOOP_LAST
  if540_end1299:
    getinterp $P5014
    $P5015 = $P5014."stdout_handle"()
    $P5016 = $P5015."tell"()
    set $P103, $P5016
    find_lex $P5018, "self"
    nqp_decontainerize $P5017, $P5018
    set $P104, $P5017
    set $P5028, $P102
    unless $P102 goto if545_end1308 
    .const 'Sub' $P5026 = 'cuid_263_1383914954.64741' 
    capture_lex $P5026
    $P5027 = $P5026()
    set $P5028, $P5027
  if545_end1308:
    .return ($P5028) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_263_1383914954.64741") :anon :lex :outer("cuid_264_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1087
    .const 'Sub' $P5047 = 'cuid_262_1383914954.64741' 
    capture_lex $P5047 
    .lex "$output", $P101 
    .local pmc fb_tmp_104 
    .local pmc fb_tmp_105 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P101, $P5001
    find_lex $P5002, "$code"
    set $S5002, $P5002
    concat $S5001, $S5002, "\n"
    box $P5003, $S5001
    store_lex "$code", $P5003
.annotate 'line', 1090
    new $P5011, 'ExceptionHandler'
    set_label $P5011, catch_handler_5471310
    $P5011.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5011
.annotate 'line', 1091
    find_lex $P5005, "self"
    nqp_decontainerize $P5004, $P5005
    find_lex $P5006, "$code"
    find_lex $P5007, "$save_ctx"
    find_lex $P5008, "%adverbs"
    $P5009 = $P5004."eval"($P5006, $P5007 :named("outer_ctx"), $P5008 :flat :named)
    set $P101, $P5009
    nqp_get_sc_object $P5010, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5012, $P5010
    pop_eh 
    goto skip_handler_5461309
  catch_handler_5471310:
    .get_results ($P5011) 
    .const 'Sub' $P10001 = 'cuid_262_1383914954.64741' 
    capture_lex $P10001
    $P10001($P5011)
    set $I10001, 1
    set $P5011["handled"], $I10001
    nqp_get_sc_object $P10002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    finalize $P5011
    pop_upto_eh $P5011
    pop_eh 
    set $P5012, $P10002
    goto skip_handler_5461309
  skip_handler_5461309:
    find_dynamic_lex $P5013, "$*MAIN_CTX"
    unless_null $P5013, fallback1313
    nqp_get_sc_object $P5015, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 0
    get_who $P5014, $P5015
    set fb_tmp_104, $P5014
    repr_defined $I5002, fb_tmp_104
    unless $I5002 goto if549_else1314 
    set $P5016, fb_tmp_104["$MAIN_CTX"]
    set $P5018, $P5016
    goto if549_end1315
  if549_else1314:
    null $P5017
    set $P5018, $P5017
  if549_end1315:
    unless_null $P5018, vivi_5501316
    nqp_get_sc_object $P5019, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5018, $P5019
  vivi_5501316:
    unless_null $P5018, vivi_5511317
    die "Contextual $*MAIN_CTX not found"
    box $P5020, "Contextual $*MAIN_CTX not found"
    set $P5018, $P5020
  vivi_5511317:
    set $P5013, $P5018
  fallback1313:
    defined $I5001, $P5013
    unless $I5001 goto if548_end1312 
.annotate 'line', 1097
    find_dynamic_lex $P5021, "$*MAIN_CTX"
    unless_null $P5021, fallback1318
    nqp_get_sc_object $P5023, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 0
    get_who $P5022, $P5023
    set fb_tmp_105, $P5022
    repr_defined $I5003, fb_tmp_105
    unless $I5003 goto if552_else1319 
    set $P5024, fb_tmp_105["$MAIN_CTX"]
    set $P5026, $P5024
    goto if552_end1320
  if552_else1319:
    null $P5025
    set $P5026, $P5025
  if552_end1320:
    unless_null $P5026, vivi_5531321
    nqp_get_sc_object $P5027, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5026, $P5027
  vivi_5531321:
    unless_null $P5026, vivi_5541322
    die "Contextual $*MAIN_CTX not found"
    box $P5028, "Contextual $*MAIN_CTX not found"
    set $P5026, $P5028
  vivi_5541322:
    set $P5021, $P5026
  fallback1318:
    store_lex "$save_ctx", $P5021
  if548_end1312:
    isnull $I5004, $P101
    unless $I5004 goto if555_end1324 
    die 0, .CONTROL_LOOP_NEXT
  if555_end1324:
    find_lex $P5029, "$target"
    isfalse $I5005, $P5029
    unless $I5005 goto if556_else1325 
.annotate 'line', 1102
.annotate 'line', 1103
    find_lex $P5031, "self"
    nqp_decontainerize $P5030, $P5031
    $P5032 = $P5030."autoprint"($P101)
    set $P5046, $P5032
    goto if556_end1326
  if556_else1325:
.annotate 'line', 1104
    find_lex $P5034, "self"
    nqp_decontainerize $P5033, $P5034
    nqp_get_sc_object $P5035, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 127
    repr_get_attr_obj $P5036, $P5033, $P5035, "$!backend", 10
    find_lex $P5037, "$target"
    $P5038 = $P5036."is_textual_stage"($P5037)
    unless $P5038 goto if557_else1327 
    set $S5003, $P101
    say $S5003
    box $P5045, $S5003
    set $P5044, $P5045
    goto if557_end1328
  if557_else1327:
.annotate 'line', 1106
.annotate 'line', 1107
    find_lex $P5040, "self"
    nqp_decontainerize $P5039, $P5040
    find_lex $P5041, "$target"
    find_lex $P5042, "%adverbs"
    $P5043 = $P5039."dumper"($P101, $P5041, $P5042 :flat :named)
    set $P5044, $P5043
  if557_end1328:
    set $P5046, $P5044
  if556_end1326:
    .return ($P5046) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_262_1383914954.64741") :anon :lex :outer("cuid_263_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1092
    .param pmc _lex_param_0 
    .lex "$!", $P101 
    .lex "$_", _lex_param_0 
    set $P101, _lex_param_0
.annotate 'line', 1093
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    $P5001."interactive_exception"($P101)
    die 0, .CONTROL_LOOP_NEXT
    .return (0) 
.end
.HLL "nqp"
.namespace []
.sub "interactive_result" :subid("cuid_128_1383914954.64741") :anon :lex :outer("cuid_261_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1113
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$value", _lex_param_1 
    set $S5001, _lex_param_1
    say $S5001
    .return ($S5001) 
.end
.HLL "nqp"
.namespace []
.sub "interactive_exception" :subid("cuid_129_1383914954.64741") :anon :lex :outer("cuid_261_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1117
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$ex", _lex_param_1 
    set $S5002, _lex_param_1
    concat $S5001, $S5002, "\n"
    print $S5001
    .return ($S5001) 
.end
.HLL "nqp"
.namespace []
.sub "eval" :subid("cuid_130_1383914954.64741") :anon :lex :outer("cuid_261_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1121
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :slurpy 
    .param pmc _lex_param_3 :slurpy :named 
    .const 'Sub' $P5026 = 'cuid_265_1383914954.64741' 
    capture_lex $P5026 
    .const 'Sub' $P5026 = 'cuid_267_1383914954.64741' 
    capture_lex $P5026 
    .lex "$output", $P101 
    .lex "self", _lex_param_0 
    .lex "$code", _lex_param_1 
    .lex "@args", _lex_param_2 
    .lex "%adverbs", _lex_param_3 
    .local pmc fb_tmp_106 
    .local pmc fb_tmp_107 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P101, $P5001
    set fb_tmp_106, _lex_param_3
    repr_defined $I5001, fb_tmp_106
    unless $I5001 goto if559_else1331 
    set $P5002, fb_tmp_106["profile-compile"]
    set $P5004, $P5002
    goto if559_end1332
  if559_else1331:
    null $P5003
    set $P5004, $P5003
  if559_end1332:
    unless_null $P5004, vivi_5601333
    nqp_get_sc_object $P5005, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5004, $P5005
  vivi_5601333:
    unless $P5004 goto if558_else1329 
.annotate 'line', 1124
.annotate 'line', 1125
    nqp_decontainerize $P5006, _lex_param_0
    nqp_get_sc_object $P5007, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 127
    repr_get_attr_obj $P5008, $P5006, $P5007, "$!backend", 10
    .const 'Sub' $P5010 = 'cuid_265_1383914954.64741' 
    capture_lex $P5010
    newclosure $P5009, $P5010
    $P5011 = $P5008."run_profiled"($P5009)
    set $P101, $P5011
    goto if558_end1330
  if558_else1329:
.annotate 'line', 1129
.annotate 'line', 1130
    nqp_decontainerize $P5012, _lex_param_0
    $P5013 = $P5012."compile"(_lex_param_1, 1 :named("compunit_ok"), _lex_param_3 :flat :named)
    set $P101, $P5013
  if558_end1330:
.annotate 'line', 1133
    nqp_decontainerize $P5014, _lex_param_0
    nqp_get_sc_object $P5015, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 127
    repr_get_attr_obj $P5016, $P5014, $P5015, "$!backend", 10
    $P5017 = $P5016."is_compunit"($P101)
    set $P5022, $P5017
    unless $P5017 goto if562_end1337 
    set fb_tmp_107, _lex_param_3
    repr_defined $I5003, fb_tmp_107
    unless $I5003 goto if563_else1338 
    set $P5018, fb_tmp_107["target"]
    set $P5020, $P5018
    goto if563_end1339
  if563_else1338:
    null $P5019
    set $P5020, $P5019
  if563_end1339:
    unless_null $P5020, vivi_5641340
    nqp_get_sc_object $P5021, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5020, $P5021
  vivi_5641340:
    set $S5001, $P5020
    iseq $I5002, $S5001, ""
    box $P5023, $I5002
    set $P5022, $P5023
  if562_end1337:
    unless $P5022 goto if561_end1335 
    .const 'Sub' $P5024 = 'cuid_267_1383914954.64741' 
    capture_lex $P5024
    $P5025 = $P5024()
  if561_end1335:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_265_1383914954.64741") :anon :lex :outer("cuid_130_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1125

.annotate 'line', 1126
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    find_lex $P5003, "$code"
    find_lex $P5004, "%adverbs"
    $P5005 = $P5001."compile"($P5003, 1 :named("compunit_ok"), $P5004 :flat :named)
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_267_1383914954.64741") :anon :lex :outer("cuid_130_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1133
    .const 'Sub' $P5049 = 'cuid_266_1383914954.64741' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_268_1383914954.64741' 
    capture_lex $P5049 
    .lex "$outer_ctx", $P101 
    .local pmc fb_tmp_108 
    .local pmc fb_tmp_109 
    .local pmc fb_tmp_110 
    .local pmc fb_tmp_111 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P101, $P5001
    find_lex $P5002, "%adverbs"
    set fb_tmp_108, $P5002
    repr_defined $I5001, fb_tmp_108
    unless $I5001 goto if565_else1341 
    set $P5003, fb_tmp_108["outer_ctx"]
    set $P5005, $P5003
    goto if565_end1342
  if565_else1341:
    null $P5004
    set $P5005, $P5004
  if565_end1342:
    unless_null $P5005, vivi_5661343
    nqp_get_sc_object $P5006, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5005, $P5006
  vivi_5661343:
    set $P101, $P5005
.annotate 'line', 1135
    find_lex $P5008, "self"
    nqp_decontainerize $P5007, $P5008
    nqp_get_sc_object $P5009, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 127
    repr_get_attr_obj $P5010, $P5007, $P5009, "$!backend", 10
    find_lex $P5011, "$output"
    $P5012 = $P5010."compunit_mainline"($P5011)
    store_lex "$output", $P5012
    defined $I5002, $P101
    unless $I5002 goto if567_end1345 
.annotate 'line', 1136
    find_lex $P5013, "$output"
    $P5014 = $P5013."set_outer_ctx"($P101)
  if567_end1345:
    find_lex $P5015, "%adverbs"
    set fb_tmp_109, $P5015
    repr_defined $I5003, fb_tmp_109
    unless $I5003 goto if569_else1348 
    set $P5016, fb_tmp_109["profile"]
    set $P5018, $P5016
    goto if569_end1349
  if569_else1348:
    null $P5017
    set $P5018, $P5017
  if569_end1349:
    unless_null $P5018, vivi_5701350
    nqp_get_sc_object $P5019, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5018, $P5019
  vivi_5701350:
    unless $P5018 goto if568_else1346 
.annotate 'line', 1140
.annotate 'line', 1141
    find_lex $P5021, "self"
    nqp_decontainerize $P5020, $P5021
    nqp_get_sc_object $P5022, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 127
    repr_get_attr_obj $P5023, $P5020, $P5022, "$!backend", 10
    .const 'Sub' $P5025 = 'cuid_266_1383914954.64741' 
    capture_lex $P5025
    newclosure $P5024, $P5025
    $P5026 = $P5023."run_profiled"($P5024)
    store_lex "$output", $P5026
    set $P5048, $P5026
    goto if568_end1347
  if568_else1346:
    find_lex $P5027, "%adverbs"
    set fb_tmp_110, $P5027
    repr_defined $I5004, fb_tmp_110
    unless $I5004 goto if572_else1353 
    set $P5028, fb_tmp_110["trace"]
    set $P5030, $P5028
    goto if572_end1354
  if572_else1353:
    null $P5029
    set $P5030, $P5029
  if572_end1354:
    unless_null $P5030, vivi_5731355
    nqp_get_sc_object $P5031, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5030, $P5031
  vivi_5731355:
    unless $P5030 goto if571_else1351 
.annotate 'line', 1143
.annotate 'line', 1144
    find_lex $P5033, "self"
    nqp_decontainerize $P5032, $P5033
    nqp_get_sc_object $P5034, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 127
    repr_get_attr_obj $P5035, $P5032, $P5034, "$!backend", 10
    find_lex $P5036, "%adverbs"
    set fb_tmp_111, $P5036
    repr_defined $I5005, fb_tmp_111
    unless $I5005 goto if574_else1356 
    set $P5037, fb_tmp_111["trace"]
    set $P5039, $P5037
    goto if574_end1357
  if574_else1356:
    null $P5038
    set $P5039, $P5038
  if574_end1357:
    unless_null $P5039, vivi_5751358
    nqp_get_sc_object $P5040, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5039, $P5040
  vivi_5751358:
    .const 'Sub' $P5042 = 'cuid_268_1383914954.64741' 
    capture_lex $P5042
    newclosure $P5041, $P5042
    $P5043 = $P5035."run_traced"($P5039, $P5041)
    store_lex "$output", $P5043
    set $P5047, $P5043
    goto if571_end1352
  if571_else1351:
.annotate 'line', 1146
.annotate 'line', 1147
    find_lex $P5045, "@args"
    find_lex $P5044, "$output"
    $P5046 = $P5044($P5045 :flat)
    store_lex "$output", $P5046
    set $P5047, $P5046
  if571_end1352:
    set $P5048, $P5047
  if568_end1347:
    .return ($P5048) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_266_1383914954.64741") :anon :lex :outer("cuid_267_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1141

    find_lex $P5002, "@args"
    find_lex $P5001, "$output"
    $P5003 = $P5001($P5002 :flat)
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_268_1383914954.64741") :anon :lex :outer("cuid_267_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1144

    find_lex $P5002, "@args"
    find_lex $P5001, "$output"
    $P5003 = $P5001($P5002 :flat)
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "ctxsave" :subid("cuid_131_1383914954.64741") :anon :lex :outer("cuid_261_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1154
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
.sub "panic" :subid("cuid_132_1383914954.64741") :anon :lex :outer("cuid_261_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1159
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy 
    .lex "self", _lex_param_0 
    .lex "@args", _lex_param_1 
.annotate 'line', 1160
    $P5001 = "&join"("", _lex_param_1)
    die $P5001
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "stages" :subid("cuid_133_1383914954.64741") :anon :lex :outer("cuid_261_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1163
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :optional 
    .param int haz_param_8 :opt_flag 
    .lex "self", _lex_param_0 
    .lex "@value", _lex_param_1 
    if haz_param_8, default1361
    new $P5006, 'ResizablePMCArray'
    set _lex_param_1, $P5006
  default1361:
    set $N5001, _lex_param_1
    unless $N5001 goto if576_end1360 
.annotate 'line', 1164
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 127
    repr_bind_attr_obj $P5001, $P5002, "@!stages", 0, _lex_param_1
  if576_end1360:
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 127
    repr_get_attr_obj $P5005, $P5003, $P5004, "@!stages", 0
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "parsegrammar" :subid("cuid_134_1383914954.64741") :anon :lex :outer("cuid_261_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1170
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy 
    .lex "self", _lex_param_0 
    .lex "@value", _lex_param_1 
    .local pmc fb_tmp_112 
    set $N5001, _lex_param_1
    unless $N5001 goto if577_end1363 
.annotate 'line', 1171
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 127
    set fb_tmp_112, _lex_param_1
    repr_defined $I5001, fb_tmp_112
    unless $I5001 goto if578_else1364 
    set $P5003, fb_tmp_112[0]
    set $P5005, $P5003
    goto if578_end1365
  if578_else1364:
    null $P5004
    set $P5005, $P5004
  if578_end1365:
    unless_null $P5005, vivi_5791366
    nqp_get_sc_object $P5006, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5005, $P5006
  vivi_5791366:
    repr_bind_attr_obj $P5001, $P5002, "$!parsegrammar", 1, $P5005
  if577_end1363:
    nqp_decontainerize $P5007, _lex_param_0
    nqp_get_sc_object $P5008, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 127
    repr_get_attr_obj $P5009, $P5007, $P5008, "$!parsegrammar", 1
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "parseactions" :subid("cuid_135_1383914954.64741") :anon :lex :outer("cuid_261_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1177
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy 
    .lex "self", _lex_param_0 
    .lex "@value", _lex_param_1 
    .local pmc fb_tmp_113 
    set $N5001, _lex_param_1
    unless $N5001 goto if580_end1368 
.annotate 'line', 1178
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 127
    set fb_tmp_113, _lex_param_1
    repr_defined $I5001, fb_tmp_113
    unless $I5001 goto if581_else1369 
    set $P5003, fb_tmp_113[0]
    set $P5005, $P5003
    goto if581_end1370
  if581_else1369:
    null $P5004
    set $P5005, $P5004
  if581_end1370:
    unless_null $P5005, vivi_5821371
    nqp_get_sc_object $P5006, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5005, $P5006
  vivi_5821371:
    repr_bind_attr_obj $P5001, $P5002, "$!parseactions", 2, $P5005
  if580_end1368:
    nqp_decontainerize $P5007, _lex_param_0
    nqp_get_sc_object $P5008, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 127
    repr_get_attr_obj $P5009, $P5007, $P5008, "$!parseactions", 2
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "interactive_banner" :subid("cuid_136_1383914954.64741") :anon :lex :outer("cuid_261_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1184
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    .return ("") 
.end
.HLL "nqp"
.namespace []
.sub "interactive_prompt" :subid("cuid_137_1383914954.64741") :anon :lex :outer("cuid_261_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1186
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    .return ("> ") 
.end
.HLL "nqp"
.namespace []
.sub "compiler_progname" :subid("cuid_138_1383914954.64741") :anon :lex :outer("cuid_261_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1188
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :optional 
    .param int haz_param_9 :opt_flag 
    .lex "self", _lex_param_0 
    .lex "$value", _lex_param_1 
    if haz_param_9, default1374
    nqp_get_sc_object $P5006, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set _lex_param_1, $P5006
  default1374:
    defined $I5001, _lex_param_1
    unless $I5001 goto if583_end1373 
.annotate 'line', 1189
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 127
    repr_bind_attr_obj $P5001, $P5002, "$!compiler_progname", 4, _lex_param_1
  if583_end1373:
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 127
    repr_get_attr_obj $P5005, $P5003, $P5004, "$!compiler_progname", 4
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "commandline_options" :subid("cuid_139_1383914954.64741") :anon :lex :outer("cuid_261_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1196
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :optional 
    .param int haz_param_10 :opt_flag 
    .lex "self", _lex_param_0 
    .lex "@value", _lex_param_1 
    if haz_param_10, default1377
    new $P5006, 'ResizablePMCArray'
    set _lex_param_1, $P5006
  default1377:
    set $N5001, _lex_param_1
    unless $N5001 goto if584_end1376 
.annotate 'line', 1197
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 127
    repr_bind_attr_obj $P5001, $P5002, "@!cmdoptions", 3, _lex_param_1
  if584_end1376:
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 127
    repr_get_attr_obj $P5005, $P5003, $P5004, "@!cmdoptions", 3
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "command_line" :subid("cuid_140_1383914954.64741") :anon :lex :outer("cuid_261_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1203
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :slurpy :named 
    .const 'Sub' $P5040 = 'cuid_269_1383914954.64741' 
    capture_lex $P5040 
    .lex "$program-name", $P101 
    .lex "$res", $P102 
    .lex "%opts", $P103 
    .lex "@a", $P104 
    .lex "self", _lex_param_0 
    .lex "@args", _lex_param_1 
    .lex "%adverbs", _lex_param_2 
    .local pmc fb_tmp_114 
    .local pmc fb_tmp_115 
    .local pmc fb_tmp_116 
    .local pmc fb_tmp_117 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P102, $P5002
    new $P5003, 'Hash'
    set $P103, $P5003
    new $P5004, 'ResizablePMCArray'
    set $P104, $P5004
    set fb_tmp_114, _lex_param_1
    repr_defined $I5001, fb_tmp_114
    unless $I5001 goto if585_else1378 
    set $P5005, fb_tmp_114[0]
    set $P5007, $P5005
    goto if585_end1379
  if585_else1378:
    null $P5006
    set $P5007, $P5006
  if585_end1379:
    unless_null $P5007, vivi_5861380
    nqp_get_sc_object $P5008, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5007, $P5008
  vivi_5861380:
    set $P101, $P5007
.annotate 'line', 1205
    nqp_decontainerize $P5009, _lex_param_0
    $P5010 = $P5009."process_args"(_lex_param_1)
    set $P102, $P5010
.annotate 'line', 1206
    $P5011 = $P102."options"()
    set $P103, $P5011
.annotate 'line', 1207
    $P5012 = $P102."arguments"()
    set $P104, $P5012
    set $P5013, $P103
    iter $P5015, $P103
  for_next1381:
    unless $P5015, for_done1383
    shift $P5017, $P5015
  for_redo1382:
    .const 'Sub' $P5016 = 'cuid_269_1383914954.64741' 
    capture_lex $P5016
    $P5013 = $P5016($P5017)
    goto for_next1381
  for_done1383:
    set fb_tmp_115, _lex_param_2
    repr_defined $I5002, fb_tmp_115
    unless $I5002 goto if589_else1388 
    set $P5018, fb_tmp_115["help"]
    set $P5020, $P5018
    goto if589_end1389
  if589_else1388:
    null $P5019
    set $P5020, $P5019
  if589_end1389:
    unless_null $P5020, vivi_5901390
    nqp_get_sc_object $P5021, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5020, $P5021
  vivi_5901390:
    set $P5026, $P5020
    if $P5020 goto unless588_end1387 
    set fb_tmp_116, _lex_param_2
    repr_defined $I5003, fb_tmp_116
    unless $I5003 goto if591_else1391 
    set $P5022, fb_tmp_116["h"]
    set $P5024, $P5022
    goto if591_end1392
  if591_else1391:
    null $P5023
    set $P5024, $P5023
  if591_end1392:
    unless_null $P5024, vivi_5921393
    nqp_get_sc_object $P5025, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5024, $P5025
  vivi_5921393:
    set $P5026, $P5024
  unless588_end1387:
    unless $P5026 goto if587_end1385 
.annotate 'line', 1212
    nqp_decontainerize $P5027, _lex_param_0
    $P5028 = $P5027."usage"($P101)
  if587_end1385:
.annotate 'line', 1214
    nqp_decontainerize $P5029, _lex_param_0
    nqp_get_sc_object $P5030, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 127
    repr_get_attr_obj $P5031, $P5029, $P5030, "$!backend", 10
    set fb_tmp_117, _lex_param_2
    repr_defined $I5004, fb_tmp_117
    unless $I5004 goto if594_else1396 
    set $P5032, fb_tmp_117["target"]
    set $P5034, $P5032
    goto if594_end1397
  if594_else1396:
    null $P5033
    set $P5034, $P5033
  if594_end1397:
    unless_null $P5034, vivi_5951398
    nqp_get_sc_object $P5035, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5034, $P5035
  vivi_5951398:
    $P5036 = $P5031."is_precomp_stage"($P5034)
    unless $P5036 goto if593_end1395 
    box $P5037, 1
    set _lex_param_2["precomp"], $P5037
  if593_end1395:
.annotate 'line', 1218
    nqp_decontainerize $P5038, _lex_param_0
    $P5039 = $P5038."command_eval"($P104 :flat, _lex_param_2 :flat :named)
    .return ($P5039) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_269_1383914954.64741") :anon :lex :outer("cuid_140_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1209
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5001, "%adverbs"
.annotate 'line', 1210
    $P5002 = _lex_param_0."key"()
    set $S5001, $P5002
    $P5003 = _lex_param_0."value"()
    set $P5001[$S5001], $P5003
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "command_eval" :subid("cuid_141_1383914954.64741") :anon :lex :outer("cuid_261_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1222
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy 
    .param pmc _lex_param_2 :slurpy :named 
    .const 'Sub' $P5101 = 'cuid_270_1383914954.64741' 
    capture_lex $P5101 
    .const 'Sub' $P5101 = 'cuid_271_1383914954.64741' 
    capture_lex $P5101 
    .const 'Sub' $P5101 = 'cuid_272_1383914954.64741' 
    capture_lex $P5101 
    .const 'Sub' $P5101 = 'cuid_273_1383914954.64741' 
    capture_lex $P5101 
    .const 'Sub' $P5101 = 'cuid_274_1383914954.64741' 
    capture_lex $P5101 
    .lex "$result", $P101 
    .lex "$error", $P102 
    .lex "$has_error", $P103 
    .lex "$target", $P104 
    .lex "self", _lex_param_0 
    .lex "@a", _lex_param_1 
    .lex "%adverbs", _lex_param_2 
    .local pmc fb_tmp_118 
    .local pmc fb_tmp_119 
    .local pmc fb_tmp_120 
    .local pmc fb_tmp_121 
    .local pmc fb_tmp_122 
    .local pmc fb_tmp_123 
    .local pmc fb_tmp_124 
    .local pmc fb_tmp_125 
    .local pmc fb_tmp_126 
    .local pmc fb_tmp_129 
    .local pmc fb_tmp_130 
    .local pmc fb_tmp_131 
    .local pmc fb_tmp_133 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P102, $P5002
    nqp_get_sc_object $P5003, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P103, $P5003
    nqp_get_sc_object $P5004, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P104, $P5004
    set fb_tmp_118, _lex_param_2
    repr_defined $I5001, fb_tmp_118
    unless $I5001 goto if598_else1403 
    set $P5005, fb_tmp_118["version"]
    set $P5007, $P5005
    goto if598_end1404
  if598_else1403:
    null $P5006
    set $P5007, $P5006
  if598_end1404:
    unless_null $P5007, vivi_5991405
    nqp_get_sc_object $P5008, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5007, $P5008
  vivi_5991405:
    set $P5013, $P5007
    if $P5007 goto unless597_end1402 
    set fb_tmp_119, _lex_param_2
    repr_defined $I5002, fb_tmp_119
    unless $I5002 goto if600_else1406 
    set $P5009, fb_tmp_119["v"]
    set $P5011, $P5009
    goto if600_end1407
  if600_else1406:
    null $P5010
    set $P5011, $P5010
  if600_end1407:
    unless_null $P5011, vivi_6011408
    nqp_get_sc_object $P5012, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5011, $P5012
  vivi_6011408:
    set $P5013, $P5011
  unless597_end1402:
    unless $P5013 goto if596_end1400 
.annotate 'line', 1223
    nqp_decontainerize $P5014, _lex_param_0
    $P5015 = $P5014."version"()
  if596_end1400:
    set fb_tmp_120, _lex_param_2
    repr_defined $I5003, fb_tmp_120
    unless $I5003 goto if605_else1415 
    set $P5016, fb_tmp_120["verbose-config"]
    set $P5018, $P5016
    goto if605_end1416
  if605_else1415:
    null $P5017
    set $P5018, $P5017
  if605_end1416:
    unless_null $P5018, vivi_6061417
    nqp_get_sc_object $P5019, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5018, $P5019
  vivi_6061417:
    set $P5024, $P5018
    if $P5018 goto unless604_end1414 
    set fb_tmp_121, _lex_param_2
    repr_defined $I5004, fb_tmp_121
    unless $I5004 goto if607_else1418 
    set $P5020, fb_tmp_121["V"]
    set $P5022, $P5020
    goto if607_end1419
  if607_else1418:
    null $P5021
    set $P5022, $P5021
  if607_end1419:
    unless_null $P5022, vivi_6081420
    nqp_get_sc_object $P5023, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5022, $P5023
  vivi_6081420:
    set $P5024, $P5022
  unless604_end1414:
    set $P5029, $P5024
    if $P5024 goto unless603_end1412 
    set fb_tmp_122, _lex_param_2
    repr_defined $I5005, fb_tmp_122
    unless $I5005 goto if609_else1421 
    set $P5025, fb_tmp_122["show-config"]
    set $P5027, $P5025
    goto if609_end1422
  if609_else1421:
    null $P5026
    set $P5027, $P5026
  if609_end1422:
    unless_null $P5027, vivi_6101423
    nqp_get_sc_object $P5028, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5027, $P5028
  vivi_6101423:
    set $P5029, $P5027
  unless603_end1412:
    unless $P5029 goto if602_end1410 
.annotate 'line', 1224
    nqp_decontainerize $P5030, _lex_param_0
    $P5031 = $P5030."verbose-config"()
  if602_end1410:
    set fb_tmp_123, _lex_param_2
    repr_defined $I5006, fb_tmp_123
    unless $I5006 goto if612_else1426 
    set $P5032, fb_tmp_123["nqpevent"]
    set $P5034, $P5032
    goto if612_end1427
  if612_else1426:
    null $P5033
    set $P5034, $P5033
  if612_end1427:
    unless_null $P5034, vivi_6131428
    nqp_get_sc_object $P5035, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5034, $P5035
  vivi_6131428:
    unless $P5034 goto if611_end1425 
.annotate 'line', 1226
    nqp_decontainerize $P5036, _lex_param_0
    set fb_tmp_124, _lex_param_2
    repr_defined $I5007, fb_tmp_124
    unless $I5007 goto if614_else1429 
    set $P5037, fb_tmp_124["nqpevent"]
    set $P5039, $P5037
    goto if614_end1430
  if614_else1429:
    null $P5038
    set $P5039, $P5038
  if614_end1430:
    unless_null $P5039, vivi_6151431
    nqp_get_sc_object $P5040, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5039, $P5040
  vivi_6151431:
    $P5041 = $P5036."nqpevent"($P5039)
  if611_end1425:
    box $P5042, 0
    set $P103, $P5042
    set fb_tmp_125, _lex_param_2
    repr_defined $I5008, fb_tmp_125
    unless $I5008 goto if616_else1432 
    set $P5043, fb_tmp_125["target"]
    set $P5045, $P5043
    goto if616_end1433
  if616_else1432:
    null $P5044
    set $P5045, $P5044
  if616_end1433:
    unless_null $P5045, vivi_6171434
    nqp_get_sc_object $P5046, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5045, $P5046
  vivi_6171434:
    set $S5002, $P5045
    downcase $S5001, $S5002
    box $P5047, $S5001
    set $P104, $P5047
    new $P5087, 'ExceptionHandler'
    set_label $P5087, catch_handler_6491486
    $P5087.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5087
.annotate 'line', 1232
    new $P5085, 'ExceptionHandler'
    set_label $P5085, catch_handler_6451481
    $P5085.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5085
    new $P5085, 'ExceptionHandler', [.CONTROL_ALL]
    set_label $P5085, catch_handler_6461482
    push_eh $P5085
    set fb_tmp_126, _lex_param_2
    repr_defined $I5010, fb_tmp_126
    unless $I5010 goto if619_else1437 
    set $P5048, fb_tmp_126["e"]
    set $P5050, $P5048
    goto if619_end1438
  if619_else1437:
    null $P5049
    set $P5050, $P5049
  if619_end1438:
    unless_null $P5050, vivi_6201439
    nqp_get_sc_object $P5051, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5050, $P5051
  vivi_6201439:
    defined $I5009, $P5050
    unless $I5009 goto if618_else1435 
    .const 'Sub' $P5052 = 'cuid_270_1383914954.64741' 
    capture_lex $P5052
    $P5053 = $P5052()
    goto if618_end1436
  if618_else1435:
    isfalse $I5011, _lex_param_1
    unless $I5011 goto if628_else1452 
.annotate 'line', 1241
    nqp_decontainerize $P5054, _lex_param_0
    $P5055 = $P5054."interactive"(_lex_param_2 :flat :named)
    set $P101, $P5055
    set $P5069, $P101
    goto if628_end1453
  if628_else1452:
    set fb_tmp_129, _lex_param_2
    repr_defined $I5012, fb_tmp_129
    unless $I5012 goto if630_else1456 
    set $P5056, fb_tmp_129["combine"]
    set $P5058, $P5056
    goto if630_end1457
  if630_else1456:
    null $P5057
    set $P5058, $P5057
  if630_end1457:
    unless_null $P5058, vivi_6311458
    nqp_get_sc_object $P5059, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5058, $P5059
  vivi_6311458:
    unless $P5058 goto if629_else1454 
.annotate 'line', 1242
    nqp_decontainerize $P5060, _lex_param_0
    $P5061 = $P5060."evalfiles"(_lex_param_1, _lex_param_2 :flat :named)
    set $P101, $P5061
    set $P5068, $P101
    goto if629_end1455
  if629_else1454:
.annotate 'line', 1243
    nqp_decontainerize $P5062, _lex_param_0
    set fb_tmp_130, _lex_param_1
    repr_defined $I5013, fb_tmp_130
    unless $I5013 goto if632_else1459 
    set $P5063, fb_tmp_130[0]
    set $P5065, $P5063
    goto if632_end1460
  if632_else1459:
    null $P5064
    set $P5065, $P5064
  if632_end1460:
    unless_null $P5065, vivi_6331461
    nqp_get_sc_object $P5066, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5065, $P5066
  vivi_6331461:
    $P5067 = $P5062."evalfiles"($P5065, _lex_param_1 :flat, _lex_param_2 :flat :named)
    set $P101, $P5067
    set $P5068, $P101
  if629_end1455:
    set $P5069, $P5068
  if628_end1453:
  if618_end1436:
    isnull $I5015, $P101
    not $I5014, $I5015
    box $P5080, $I5014
    set $P5079, $P5080
    unless $I5014 goto if635_end1465 
.annotate 'line', 1245
    nqp_decontainerize $P5070, _lex_param_0
    nqp_get_sc_object $P5071, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 127
    repr_get_attr_obj $P5072, $P5070, $P5071, "$!backend", 10
    $P5073 = $P5072."is_textual_stage"($P104)
    set $P5078, $P5073
    if $P5073 goto unless636_end1467 
    set fb_tmp_131, _lex_param_2
    repr_defined $I5016, fb_tmp_131
    unless $I5016 goto if637_else1468 
    set $P5074, fb_tmp_131["output"]
    set $P5076, $P5074
    goto if637_end1469
  if637_else1468:
    null $P5075
    set $P5076, $P5075
  if637_end1469:
    unless_null $P5076, vivi_6381470
    nqp_get_sc_object $P5077, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5076, $P5077
  vivi_6381470:
    set $P5078, $P5076
  unless636_end1467:
    set $P5079, $P5078
  if635_end1465:
    unless $P5079 goto if634_end1463 
    .const 'Sub' $P5081 = 'cuid_271_1383914954.64741' 
    capture_lex $P5081
    $P5082 = $P5081()
  if634_end1463:
    nqp_get_sc_object $P5083, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    nqp_get_sc_object $P5084, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5086, $P5084
    pop_eh 
    pop_eh 
    goto skip_handler_6441480
  catch_handler_6451481:
    .get_results ($P5085) 
    .const 'Sub' $P10001 = 'cuid_272_1383914954.64741' 
    capture_lex $P10001
    $P10001($P5085)
    set $I10001, 1
    set $P5085["handled"], $I10001
    nqp_get_sc_object $P10002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    finalize $P5085
    pop_upto_eh $P5085
    pop_eh 
    set $P5086, $P10002
    goto skip_handler_6441480
  catch_handler_6461482:
    .get_results ($P5085) 
    .const 'Sub' $P10003 = 'cuid_273_1383914954.64741' 
    capture_lex $P10003
    $P10003($P5085)
    set $I10002, 1
    set $P5085["handled"], $I10002
    nqp_get_sc_object $P10004, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    finalize $P5085
    pop_upto_eh $P5085
    pop_eh 
    set $P5086, $P10004
    goto skip_handler_6441480
  skip_handler_6441480:
    set $P5088, $P5086
    pop_eh 
    goto skip_handler_6481485
  catch_handler_6491486:
    .get_results ($P5087) 
    set $I10001, 1
    set $P5087["handled"], $I10001
    nqp_get_sc_object $P10001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    finalize $P5087
    pop_upto_eh $P5087
    pop_eh 
    set $P5088, $P10001
    goto skip_handler_6481485
  skip_handler_6481485:
    unless $P103 goto if650_end1488 
.annotate 'line', 1268
    set fb_tmp_133, _lex_param_2
    repr_defined $I5017, fb_tmp_133
    unless $I5017 goto if653_else1493 
    set $P5089, fb_tmp_133["ll-exception"]
    set $P5091, $P5089
    goto if653_end1494
  if653_else1493:
    null $P5090
    set $P5091, $P5090
  if653_end1494:
    unless_null $P5091, vivi_6541495
    nqp_get_sc_object $P5092, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5091, $P5092
  vivi_6541495:
    set $P5094, $P5091
    if $P5091 goto unless652_end1492 
    nqp_decontainerize $P5093, _lex_param_0
    can $I5019, $P5093, "handle-exception"
    not $I5018, $I5019
    box $P5095, $I5018
    set $P5094, $P5095
  unless652_end1492:
    unless $P5094 goto if651_else1489 
    .const 'Sub' $P5096 = 'cuid_274_1383914954.64741' 
    capture_lex $P5096
    $P5097 = $P5096()
    set $P5100, $P5097
    goto if651_end1490
  if651_else1489:
.annotate 'line', 1276
.annotate 'line', 1277
    nqp_decontainerize $P5098, _lex_param_0
    $P5099 = $P5098."handle-exception"($P102)
    set $P5100, $P5099
  if651_end1490:
  if650_end1488:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_270_1383914954.64741") :anon :lex :outer("cuid_141_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1233
    .lex "$?FILES", $P101 
    .local pmc fb_tmp_127 
    .local pmc fb_tmp_128 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P101, $P5001
    find_lex $P5003, "self"
    nqp_decontainerize $P5002, $P5003
    nqp_get_sc_object $P5004, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 127
    box $P5005, "-e"
    repr_bind_attr_obj $P5002, $P5004, "$!user_progname", 7, $P5005
    box $P5006, "-e"
    set $P101, $P5006
.annotate 'line', 1236
    find_lex $P5008, "self"
    nqp_decontainerize $P5007, $P5008
    find_lex $P5009, "%adverbs"
    set fb_tmp_127, $P5009
    repr_defined $I5001, fb_tmp_127
    unless $I5001 goto if621_else1440 
    set $P5010, fb_tmp_127["e"]
    set $P5012, $P5010
    goto if621_end1441
  if621_else1440:
    null $P5011
    set $P5012, $P5011
  if621_end1441:
    unless_null $P5012, vivi_6221442
    nqp_get_sc_object $P5013, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5012, $P5013
  vivi_6221442:
    find_lex $P5014, "@a"
    find_lex $P5015, "%adverbs"
    $P5016 = $P5007."eval"($P5012, "-e", $P5014 :flat, $P5015 :flat :named)
    store_lex "$result", $P5016
    find_lex $P5017, "$target"
    set $S5001, $P5017
    iseq $I5002, $S5001, ""
    box $P5025, $I5002
    set $P5024, $P5025
    if $I5002 goto unless625_end1448 
.annotate 'line', 1237
    find_lex $P5019, "self"
    nqp_decontainerize $P5018, $P5019
    nqp_get_sc_object $P5020, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 127
    repr_get_attr_obj $P5021, $P5018, $P5020, "$!backend", 10
    find_lex $P5022, "$target"
    $P5023 = $P5021."is_textual_stage"($P5022)
    set $P5024, $P5023
  unless625_end1448:
    set $P5031, $P5024
    if $P5024 goto unless624_end1446 
    find_lex $P5026, "%adverbs"
    set fb_tmp_128, $P5026
    repr_defined $I5003, fb_tmp_128
    unless $I5003 goto if626_else1449 
    set $P5027, fb_tmp_128["output"]
    set $P5029, $P5027
    goto if626_end1450
  if626_else1449:
    null $P5028
    set $P5029, $P5028
  if626_end1450:
    unless_null $P5029, vivi_6271451
    nqp_get_sc_object $P5030, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5029, $P5030
  vivi_6271451:
    set $P5031, $P5029
  unless624_end1446:
    set $P5038, $P5031
    if $P5031 goto unless623_end1444 
.annotate 'line', 1238
    find_lex $P5033, "self"
    nqp_decontainerize $P5032, $P5033
    find_lex $P5034, "$result"
    find_lex $P5035, "$target"
    find_lex $P5036, "%adverbs"
    $P5037 = $P5032."dumper"($P5034, $P5035, $P5036 :flat :named)
    set $P5038, $P5037
  unless623_end1444:
    .return ($P5038) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_271_1383914954.64741") :anon :lex :outer("cuid_141_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1245
    .lex "$output", $P101 
    .lex "$fh", $P102 
    .local pmc fb_tmp_132 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P102, $P5002
    find_lex $P5003, "%adverbs"
    set fb_tmp_132, $P5003
    repr_defined $I5001, fb_tmp_132
    unless $I5001 goto if639_else1471 
    set $P5004, fb_tmp_132["output"]
    set $P5006, $P5004
    goto if639_end1472
  if639_else1471:
    null $P5005
    set $P5006, $P5005
  if639_end1472:
    unless_null $P5006, vivi_6401473
    nqp_get_sc_object $P5007, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5006, $P5007
  vivi_6401473:
    set $P101, $P5006
    set $S5001, $P101
    iseq $I5002, $S5001, ""
    set $I5004, $I5002
    if $I5002 goto unless642_end1477 
    set $S5002, $P101
    iseq $I5003, $S5002, "-"
    set $I5004, $I5003
  unless642_end1477:
    unless $I5004 goto if641_else1474 
    getinterp $P5008
    $P5009 = $P5008."stdout_handle"()
    set $P5011, $P5009
    goto if641_end1475
  if641_else1474:
    set $S5003, $P101
    open $P5010, $S5003, "w"
    set $P5011, $P5010
  if641_end1475:
    set $P102, $P5011
    if $P102 goto unless643_end1479 
.annotate 'line', 1250
    find_lex $P5013, "self"
    nqp_decontainerize $P5012, $P5013
    set $S5005, $P101
    concat $S5004, "Cannot write to ", $S5005
    $P5014 = $P5012."panic"($S5004)
  unless643_end1479:
    find_lex $P5015, "$result"
    $P5016 = $P102."print"($P5015)
    $P5017 = $P102."close"()
    .return ($P5017) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_272_1383914954.64741") :anon :lex :outer("cuid_141_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1254
    .param pmc _lex_param_0 
    .lex "$!", $P101 
    .lex "$_", _lex_param_0 
    set $P101, _lex_param_0
    box $P5001, 1
    store_lex "$has_error", $P5001
    store_lex "$error", _lex_param_0
    .return (_lex_param_0) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_273_1383914954.64741") :anon :lex :outer("cuid_141_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1258
    .param pmc _lex_param_0 
    .lex "$!", $P101 
    .lex "$_", _lex_param_0 
    set $P101, _lex_param_0
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    can $I5001, $P5001, "handle-control"
    unless $I5001 goto if647_else1483 
.annotate 'line', 1259
.annotate 'line', 1260
    find_lex $P5004, "self"
    nqp_decontainerize $P5003, $P5004
    $P5005 = $P5003."handle-control"(_lex_param_0)
    goto if647_end1484
  if647_else1483:
.annotate 'line', 1261
    rethrow _lex_param_0
  if647_end1484:
    box $P5006, 1
    store_lex "$has_error", $P5006
    store_lex "$error", _lex_param_0
    .return (_lex_param_0) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_274_1383914954.64741") :anon :lex :outer("cuid_141_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1269
    .lex "$err", $P101 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P101, $P5001
    getinterp $P5002
    $P5003 = $P5002."stderr_handle"()
    set $P101, $P5003
    find_lex $P5004, "$error"
    getattribute $P5005, $P5004, "message"
    set $S5001, $P5005
    $P5006 = $P101."print"($S5001)
    $P5007 = $P101."print"("\n")
    find_lex $P5008, "$error"
    $P5009 = $P5008."backtrace_strings"()
    join $S5002, "\n", $P5009
    $P5010 = $P101."print"($S5002)
    $P5011 = $P101."print"("\n")
    exit 1
    .return (1) 
.end
.HLL "nqp"
.namespace []
.sub "process_args" :subid("cuid_142_1383914954.64741") :anon :lex :outer("cuid_261_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1283
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5043 = 'cuid_275_1383914954.64741' 
    capture_lex $P5043 
    .lex "$p", $P101 
    .lex "$res", $P102 
    .lex "self", _lex_param_0 
    .lex "@args", _lex_param_1 
    .local pmc fb_tmp_134 
    .local pmc pkg_lookup_tmp_5 
    .local pmc pkg_lookup_tmp_4 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P102, $P5002
.annotate 'line', 1285
    nqp_decontainerize $P5003, _lex_param_0
    $P5004 = _lex_param_1."shift"()
    $P5003."compiler_progname"($P5004)
.annotate 'line', 1287
    nqp_get_sc_object $P5006, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 0
    set pkg_lookup_tmp_4, $P5006
    get_who $P5007, pkg_lookup_tmp_4
    exists $I5002, $P5007["HLL"]
    unless $I5002 goto if656_else1498 
    get_who $P5009, pkg_lookup_tmp_4
    set $P5008, $P5009["HLL"]
    set $P5011, $P5008
    goto if656_end1499
  if656_else1498:
    nqp_get_sc_object $P5010, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5011, $P5010
  if656_end1499:
    set pkg_lookup_tmp_5, $P5011
    get_who $P5012, pkg_lookup_tmp_5
    exists $I5003, $P5012["CommandLine"]
    unless $I5003 goto if657_else1500 
    get_who $P5014, pkg_lookup_tmp_5
    set $P5013, $P5014["CommandLine"]
    set $P5016, $P5013
    goto if657_end1501
  if657_else1500:
    nqp_get_sc_object $P5015, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5016, $P5015
  if657_end1501:
    get_who $P5005, $P5016
    set fb_tmp_134, $P5005
    repr_defined $I5001, fb_tmp_134
    unless $I5001 goto if655_else1496 
    set $P5017, fb_tmp_134["Parser"]
    set $P5019, $P5017
    goto if655_end1497
  if655_else1496:
    null $P5018
    set $P5019, $P5018
  if655_end1497:
    unless_null $P5019, vivi_6581502
    nqp_get_sc_object $P5020, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5019, $P5020
  vivi_6581502:
    nqp_decontainerize $P5021, _lex_param_0
    nqp_get_sc_object $P5022, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 127
    repr_get_attr_obj $P5023, $P5021, $P5022, "@!cmdoptions", 3
    $P5024 = $P5019."new"($P5023)
    set $P101, $P5024
.annotate 'line', 1288
    $P101."add-stopper"("-e")
.annotate 'line', 1289
    $P101."stop-after-first-arg"()
    new $P5029, 'ExceptionHandler'
    set_label $P5029, catch_handler_6621506
    $P5029.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5029
.annotate 'line', 1291
    new $P5027, 'ExceptionHandler'
    set_label $P5027, catch_handler_6601504
    $P5027.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5027
.annotate 'line', 1292
    $P5025 = $P101."parse"(_lex_param_1)
    set $P102, $P5025
    nqp_get_sc_object $P5026, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5028, $P5026
    pop_eh 
    goto skip_handler_6591503
  catch_handler_6601504:
    .get_results ($P5027) 
    .const 'Sub' $P10001 = 'cuid_275_1383914954.64741' 
    capture_lex $P10001
    $P10001($P5027)
    set $I10001, 1
    set $P5027["handled"], $I10001
    nqp_get_sc_object $P10002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    finalize $P5027
    pop_upto_eh $P5027
    pop_eh 
    set $P5028, $P10002
    goto skip_handler_6591503
  skip_handler_6591503:
    set $P5030, $P5028
    pop_eh 
    goto skip_handler_6611505
  catch_handler_6621506:
    .get_results ($P5029) 
    set $I10001, 1
    set $P5029["handled"], $I10001
    nqp_get_sc_object $P10001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    finalize $P5029
    pop_upto_eh $P5029
    pop_eh 
    set $P5030, $P10001
    goto skip_handler_6611505
  skip_handler_6611505:
    unless $P102 goto if663_else1507 
.annotate 'line', 1299
    nqp_decontainerize $P5031, _lex_param_0
    nqp_get_sc_object $P5032, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 127
.annotate 'line', 1300
    $P5033 = $P102."options"()
    repr_bind_attr_obj $P5031, $P5032, "%!cli-options", 9, $P5033
    nqp_decontainerize $P5034, _lex_param_0
    nqp_get_sc_object $P5035, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 127
.annotate 'line', 1301
    $P5036 = $P102."arguments"()
    repr_bind_attr_obj $P5034, $P5035, "@!cli-arguments", 8, $P5036
    goto if663_end1508
  if663_else1507:
.annotate 'line', 1303
    nqp_decontainerize $P5037, _lex_param_0
    nqp_get_sc_object $P5038, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 127
    new $P5039, 'Hash'
    repr_bind_attr_obj $P5037, $P5038, "%!cli-options", 9, $P5039
    nqp_decontainerize $P5040, _lex_param_0
    nqp_get_sc_object $P5041, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 127
    new $P5042, 'ResizablePMCArray'
    repr_bind_attr_obj $P5040, $P5041, "@!cli-arguments", 8, $P5042
  if663_end1508:
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_275_1383914954.64741") :anon :lex :outer("cuid_142_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1293
    .param pmc _lex_param_0 
    .lex "$!", $P101 
    .lex "$_", _lex_param_0 
    set $P101, _lex_param_0
    set $S5001, _lex_param_0
    say $S5001
.annotate 'line', 1295
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    $P5001."usage"()
    exit 1
    .return (1) 
.end
.HLL "nqp"
.namespace []
.sub "evalfiles" :subid("cuid_143_1383914954.64741") :anon :lex :outer("cuid_261_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1310
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :slurpy 
    .param pmc _lex_param_3 :slurpy :named 
    .const 'Sub' $P5047 = 'cuid_277_1383914954.64741' 
    capture_lex $P5047 
    .lex "$target", $P101 
    .lex "$encoding", $P102 
    .lex "@files", $P103 
    .lex "@codes", $P104 
    .lex "$code", $P105 
    .lex "$?FILES", $P106 
    .lex "$r", $P107 
    .lex "self", _lex_param_0 
    .lex "$files", _lex_param_1 
    .lex "@args", _lex_param_2 
    .lex "%adverbs", _lex_param_3 
    .local pmc fb_tmp_135 
    .local pmc fb_tmp_136 
    .local pmc fb_tmp_137 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P102, $P5002
    new $P5003, 'ResizablePMCArray'
    set $P103, $P5003
    new $P5004, 'ResizablePMCArray'
    set $P104, $P5004
    nqp_get_sc_object $P5005, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P105, $P5005
    nqp_get_sc_object $P5006, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P106, $P5006
    nqp_get_sc_object $P5007, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P107, $P5007
    root_new $P108, ['parrot';'Continuation']
    set_label $P108, lexotic_1509
    .lex "RETURN", $P108
    set fb_tmp_135, _lex_param_3
    repr_defined $I5001, fb_tmp_135
    unless $I5001 goto if664_else1511 
    set $P5008, fb_tmp_135["target"]
    set $P5010, $P5008
    goto if664_end1512
  if664_else1511:
    null $P5009
    set $P5010, $P5009
  if664_end1512:
    unless_null $P5010, vivi_6651513
    nqp_get_sc_object $P5011, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5010, $P5011
  vivi_6651513:
    set $S5002, $P5010
    downcase $S5001, $S5002
    box $P5012, $S5001
    set $P101, $P5012
    set fb_tmp_136, _lex_param_3
    repr_defined $I5002, fb_tmp_136
    unless $I5002 goto if666_else1514 
    set $P5013, fb_tmp_136["encoding"]
    set $P5015, $P5013
    goto if666_end1515
  if666_else1514:
    null $P5014
    set $P5015, $P5014
  if666_end1515:
    unless_null $P5015, vivi_6671516
    nqp_get_sc_object $P5016, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5015, $P5016
  vivi_6671516:
    set $P102, $P5015
    nqp_islist $I5003, _lex_param_1
    unless $I5003 goto if668_else1517 
    set $P5018, _lex_param_1
    goto if668_end1518
  if668_else1517:
    new $P5017, 'ResizablePMCArray'
    push $P5017, _lex_param_1
    set $P5018, $P5017
  if668_end1518:
    set $P103, $P5018
    nqp_decontainerize $P5019, _lex_param_0
    nqp_get_sc_object $P5020, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 127
.annotate 'line', 1314
    $P5021 = "&join"(",", $P103)
    repr_bind_attr_obj $P5019, $P5020, "$!user_progname", 7, $P5021
    set $P5022, $P103
    iter $P5024, $P103
  for_next1531:
    unless $P5024, for_done1533
    shift $P5026, $P5024
  for_redo1532:
    .const 'Sub' $P5025 = 'cuid_277_1383914954.64741' 
    capture_lex $P5025
    $P5022 = $P5025($P5026)
    goto for_next1531
  for_done1533:
.annotate 'line', 1337
    $P5027 = "&join"("", $P104)
    set $P105, $P5027
.annotate 'line', 1338
    $P5028 = "&join"(" ", $P103)
    set $P106, $P5028
.annotate 'line', 1339
    nqp_decontainerize $P5029, _lex_param_0
    $P5030 = $P5029."eval"($P105, _lex_param_2 :flat, _lex_param_3 :flat :named)
    set $P107, $P5030
    set $S5003, $P101
    iseq $I5004, $S5003, ""
    box $P5036, $I5004
    set $P5035, $P5036
    if $I5004 goto unless681_end1539 
.annotate 'line', 1340
    nqp_decontainerize $P5031, _lex_param_0
    nqp_get_sc_object $P5032, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 127
    repr_get_attr_obj $P5033, $P5031, $P5032, "$!backend", 10
    $P5034 = $P5033."is_textual_stage"($P101)
    set $P5035, $P5034
  unless681_end1539:
    set $P5041, $P5035
    if $P5035 goto unless680_end1537 
    set fb_tmp_137, _lex_param_3
    repr_defined $I5005, fb_tmp_137
    unless $I5005 goto if682_else1540 
    set $P5037, fb_tmp_137["output"]
    set $P5039, $P5037
    goto if682_end1541
  if682_else1540:
    null $P5038
    set $P5039, $P5038
  if682_end1541:
    unless_null $P5039, vivi_6831542
    nqp_get_sc_object $P5040, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5039, $P5040
  vivi_6831542:
    set $P5041, $P5039
  unless680_end1537:
    unless $P5041 goto if679_else1534 
    $P5042 = "RETURN"($P107)
    set $P5046, $P5042
    goto if679_end1535
  if679_else1534:
.annotate 'line', 1342
.annotate 'line', 1343
    nqp_decontainerize $P5043, _lex_param_0
    $P5044 = $P5043."dumper"($P107, $P101, _lex_param_3 :flat :named)
    $P5045 = "RETURN"($P5044)
    set $P5046, $P5045
  if679_end1535:
    goto lexotic_1510
  lexotic_1509:
    .get_results ($P5046)
  lexotic_1510:
    .return ($P5046) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_277_1383914954.64741") :anon :lex :outer("cuid_143_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1316
    .param pmc _lex_param_0 
    .const 'Sub' $P5021 = 'cuid_276_1383914954.64741' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_278_1383914954.64741' 
    capture_lex $P5021 
    .lex "$err", $P101 
    .lex "$in-handle", $P102 
    .lex "$filename", _lex_param_0 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P102, $P5002
    box $P5003, 0
    set $P101, $P5003
    new $P5008, 'ExceptionHandler'
    set_label $P5008, catch_handler_6721522
    $P5008.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5008
.annotate 'line', 1319
    new $P5006, 'ExceptionHandler'
    set_label $P5006, catch_handler_6701520
    $P5006.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5006
    set $S5001, _lex_param_0
    open $P5004, $S5001, "r"
    set $P102, $P5004
    nqp_get_sc_object $P5005, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5007, $P5005
    pop_eh 
    goto skip_handler_6691519
  catch_handler_6701520:
    .get_results ($P5006) 
    .const 'Sub' $P10001 = 'cuid_276_1383914954.64741' 
    capture_lex $P10001
    $P10001($P5006)
    set $I10001, 1
    set $P5006["handled"], $I10001
    nqp_get_sc_object $P10002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    finalize $P5006
    pop_upto_eh $P5006
    pop_eh 
    set $P5007, $P10002
    goto skip_handler_6691519
  skip_handler_6691519:
    set $P5009, $P5007
    pop_eh 
    goto skip_handler_6711521
  catch_handler_6721522:
    .get_results ($P5008) 
    set $I10001, 1
    set $P5008["handled"], $I10001
    nqp_get_sc_object $P10001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    finalize $P5008
    pop_upto_eh $P5008
    pop_eh 
    set $P5009, $P10001
    goto skip_handler_6711521
  skip_handler_6711521:
    unless $P101 goto if673_end1524 
    exit 1
  if673_end1524:
    new $P5018, 'ExceptionHandler'
    set_label $P5018, catch_handler_6771528
    $P5018.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5018
.annotate 'line', 1327
    new $P5016, 'ExceptionHandler'
    set_label $P5016, catch_handler_6751526
    $P5016.'handle_types_except'(.CONTROL_ALL)
    push_eh $P5016
    find_lex $P5010, "$encoding"
    $P5011 = $P102."encoding"($P5010)
    find_lex $P5012, "@codes"
    $P5013 = $P102."readall"()
    push $P5012, $P5013
    $P5014 = $P102."close"()
    nqp_get_sc_object $P5015, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5017, $P5015
    pop_eh 
    goto skip_handler_6741525
  catch_handler_6751526:
    .get_results ($P5016) 
    .const 'Sub' $P10001 = 'cuid_278_1383914954.64741' 
    capture_lex $P10001
    $P10001($P5016)
    set $I10001, 1
    set $P5016["handled"], $I10001
    nqp_get_sc_object $P10002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    finalize $P5016
    pop_upto_eh $P5016
    pop_eh 
    set $P5017, $P10002
    goto skip_handler_6741525
  skip_handler_6741525:
    set $P5019, $P5017
    pop_eh 
    goto skip_handler_6761527
  catch_handler_6771528:
    .get_results ($P5018) 
    set $I10001, 1
    set $P5018["handled"], $I10001
    nqp_get_sc_object $P10001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    finalize $P5018
    pop_upto_eh $P5018
    pop_eh 
    set $P5019, $P10001
    goto skip_handler_6761527
  skip_handler_6761527:
    set $P5020, $P101
    unless $P101 goto if678_end1530 
    die $P101
    set $P5020, $P101
  if678_end1530:
    .return ($P5020) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_276_1383914954.64741") :anon :lex :outer("cuid_277_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1321
    .param pmc _lex_param_0 
    .lex "$!", $P101 
    .lex "$_", _lex_param_0 
    set $P101, _lex_param_0
    find_lex $P5001, "$filename"
    set $S5004, $P5001
    concat $S5003, "Could not open ", $S5004
    concat $S5002, $S5003, ". "
    set $S5005, _lex_param_0
    concat $S5001, $S5002, $S5005
    say $S5001
    box $P5002, 1
    store_lex "$err", $P5002
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_278_1383914954.64741") :anon :lex :outer("cuid_277_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1331
    .param pmc _lex_param_0 
    .lex "$!", $P101 
    .lex "$_", _lex_param_0 
    set $P101, _lex_param_0
    set $S5002, _lex_param_0
    concat $S5001, "Error while reading from file: ", $S5002
    box $P5001, $S5001
    store_lex "$err", $P5001
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "exists_stage" :subid("cuid_144_1383914954.64741") :anon :lex :outer("cuid_261_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1347
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5011 = 'cuid_279_1383914954.64741' 
    capture_lex $P5011 
    .lex "$found", $P101 
    .lex "self", _lex_param_0 
    .lex "$stage", _lex_param_1 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P101, $P5001
    root_new $P102, ['parrot';'Continuation']
    set_label $P102, lexotic_1543
    .lex "RETURN", $P102
    box $P5002, 0
    set $P101, $P5002
.annotate 'line', 1349
    nqp_decontainerize $P5006, _lex_param_0
    $P5007 = $P5006."stages"()
    set $P5003, $P5007
    iter $P5005, $P5007
  for_next1547:
    unless $P5005, for_done1549
    shift $P5009, $P5005
  for_redo1548:
    .const 'Sub' $P5008 = 'cuid_279_1383914954.64741' 
    capture_lex $P5008
    $P5003 = $P5008($P5009)
    goto for_next1547
  for_done1549:
    $P5010 = "RETURN"(0)
    goto lexotic_1544
  lexotic_1543:
    .get_results ($P5010)
  lexotic_1544:
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_279_1383914954.64741") :anon :lex :outer("cuid_144_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1349
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    set $S5001, _lex_param_0
    find_lex $P5001, "$stage"
    set $S5002, $P5001
    iseq $I5001, $S5001, $S5002
    box $P5004, $I5001
    set $P5003, $P5004
    unless $I5001 goto if684_end1546 
.annotate 'line', 1350
    $P5002 = "RETURN"(1)
    set $P5003, $P5002
  if684_end1546:
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "compile" :subid("cuid_145_1383914954.64741") :anon :lex :outer("cuid_261_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1357
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :named("from") :optional 
    .param int haz_param_11 :opt_flag 
    .param pmc _lex_param_3 :named("lineposcache") :optional 
    .param int haz_param_12 :opt_flag 
    .param pmc _lex_param_4 :slurpy :named 
    .const 'Sub' $P5059 = 'cuid_280_1383914954.64741' 
    capture_lex $P5059 
    .lex "%*COMPILING", $P101 
    .lex "$*LINEPOSCACHE", $P102 
    .lex "$target", $P103 
    .lex "$result", $P104 
    .lex "$stderr", $P105 
    .lex "$stdin", $P106 
    .lex "$stagestats", $P107 
    .lex "self", _lex_param_0 
    .lex "$source", _lex_param_1 
    .lex "$from", _lex_param_2 
    .lex "$lineposcache", _lex_param_3 
    .lex "%adverbs", _lex_param_4 
    .local pmc fb_tmp_138 
    .local pmc pkg_viv_tmp_15 
    .local pmc fb_tmp_139 
    .local pmc fb_tmp_140 
    .local pmc fb_tmp_141 
    if haz_param_11, default1598
    nqp_get_sc_object $P5057, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set _lex_param_2, $P5057
  default1598:
    if haz_param_12, default1599
    nqp_get_sc_object $P5058, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set _lex_param_3, $P5058
  default1599:
    new $P5001, 'Hash'
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P102, $P5002
    nqp_get_sc_object $P5003, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P103, $P5003
    nqp_get_sc_object $P5004, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P104, $P5004
    nqp_get_sc_object $P5005, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P105, $P5005
    nqp_get_sc_object $P5006, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P106, $P5006
    nqp_get_sc_object $P5007, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P107, $P5007
    root_new $P108, ['parrot';'Continuation']
    set_label $P108, lexotic_1550
    .lex "RETURN", $P108
    unless_null $P101, fallback1552
    nqp_get_sc_object $P5009, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 0
    get_who $P5008, $P5009
    set pkg_viv_tmp_15, $P5008
    set fb_tmp_138, pkg_viv_tmp_15
    repr_defined $I5001, fb_tmp_138
    unless $I5001 goto if685_else1553 
    set $P5010, fb_tmp_138["%COMPILING"]
    set $P5012, $P5010
    goto if685_end1554
  if685_else1553:
    null $P5011
    set $P5012, $P5011
  if685_end1554:
    unless_null $P5012, vivi_6861555
    new $P5013, 'Hash'
    set pkg_viv_tmp_15["%COMPILING"], $P5013
    set $P5012, $P5013
  vivi_6861555:
    unless_null $P5012, vivi_6871556
    die "Contextual %*COMPILING not found"
    box $P5014, "Contextual %*COMPILING not found"
    set $P5012, $P5014
  vivi_6871556:
    set $P101, $P5012
  fallback1552:
    set $P101["%?OPTIONS"], _lex_param_4
    set $P102, _lex_param_3
    set fb_tmp_139, _lex_param_4
    repr_defined $I5002, fb_tmp_139
    unless $I5002 goto if688_else1557 
    set $P5015, fb_tmp_139["target"]
    set $P5017, $P5015
    goto if688_end1558
  if688_else1557:
    null $P5016
    set $P5017, $P5016
  if688_end1558:
    unless_null $P5017, vivi_6891559
    nqp_get_sc_object $P5018, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5017, $P5018
  vivi_6891559:
    set $S5002, $P5017
    downcase $S5001, $S5002
    box $P5019, $S5001
    set $P103, $P5019
    set $P104, _lex_param_1
    getinterp $P5020
    $P5021 = $P5020."stderr_handle"()
    set $P105, $P5021
    getinterp $P5022
    $P5023 = $P5022."stdin_handle"()
    set $P106, $P5023
    set fb_tmp_140, _lex_param_4
    repr_defined $I5003, fb_tmp_140
    unless $I5003 goto if690_else1560 
    set $P5024, fb_tmp_140["stagestats"]
    set $P5026, $P5024
    goto if690_end1561
  if690_else1560:
    null $P5025
    set $P5026, $P5025
  if690_end1561:
    unless_null $P5026, vivi_6911562
    nqp_get_sc_object $P5027, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5026, $P5027
  vivi_6911562:
    set $P107, $P5026
    set $S5003, _lex_param_2
    iseq $I5004, $S5003, ""
    box $P5031, $I5004
    set $P5030, $P5031
    if $I5004 goto unless693_end1566 
.annotate 'line', 1366
    nqp_decontainerize $P5028, _lex_param_0
    $P5029 = $P5028."exists_stage"(_lex_param_2)
    set $P5030, $P5029
  unless693_end1566:
    if $P5030 goto unless692_end1564 
    set $S5006, _lex_param_2
    concat $S5005, "Unknown compilation input '", $S5006
    concat $S5004, $S5005, "'"
    box $P5032, $S5004
    die $P5032
  unless692_end1564:
    set $S5007, $P103
    iseq $I5005, $S5007, ""
    box $P5036, $I5005
    set $P5035, $P5036
    if $I5005 goto unless695_end1570 
.annotate 'line', 1369
    nqp_decontainerize $P5033, _lex_param_0
    $P5034 = $P5033."exists_stage"($P103)
    set $P5035, $P5034
  unless695_end1570:
    if $P5035 goto unless694_end1568 
    set $S5010, $P103
    concat $S5009, "Unknown compilation target '", $S5010
    concat $S5008, $S5009, "'"
    box $P5037, $S5008
    die $P5037
  unless694_end1568:
.annotate 'line', 1372
    nqp_decontainerize $P5041, _lex_param_0
    $P5042 = $P5041."stages"()
    set $P5038, $P5042
    iter $P5040, $P5042
    new $P5044, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5044, for_handlers1589
    push_eh $P5044
  for_next1590:
    unless $P5040, for_done1592
    shift $P5045, $P5040
  for_redo1591:
    .const 'Sub' $P5043 = 'cuid_280_1383914954.64741' 
    capture_lex $P5043
    $P5038 = $P5043($P5045)
    goto for_next1590
  for_handlers1589:
    .get_results ($P5044)
    pop_upto_eh $P5044
    getattribute $P5044, $P5044, 'type'
    eq $P5044, .CONTROL_LOOP_NEXT, for_next1590
    eq $P5044, .CONTROL_LOOP_REDO, for_redo1591
  for_done1592:
    pop_eh 
    set fb_tmp_141, _lex_param_4
    repr_defined $I5006, fb_tmp_141
    unless $I5006 goto if706_else1595 
    set $P5046, fb_tmp_141["compunit_ok"]
    set $P5048, $P5046
    goto if706_end1596
  if706_else1595:
    null $P5047
    set $P5048, $P5047
  if706_end1596:
    unless_null $P5048, vivi_7071597
    nqp_get_sc_object $P5049, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5048, $P5049
  vivi_7071597:
    unless $P5048 goto if705_else1593 
.annotate 'line', 1404
    $P5050 = "RETURN"($P104)
    set $P5056, $P5050
    goto if705_end1594
  if705_else1593:
.annotate 'line', 1407
.annotate 'line', 1408
    nqp_decontainerize $P5051, _lex_param_0
    nqp_get_sc_object $P5052, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 127
    repr_get_attr_obj $P5053, $P5051, $P5052, "$!backend", 10
    $P5054 = $P5053."compunit_mainline"($P104)
    $P5055 = "RETURN"($P5054)
    set $P5056, $P5055
  if705_end1594:
    goto lexotic_1551
  lexotic_1550:
    .get_results ($P5056)
  lexotic_1551:
    .return ($P5056) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_280_1383914954.64741") :anon :lex :outer("cuid_145_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1372
    .param pmc _lex_param_0 
    .lex "$timestamp", $P101 
    .lex "$diff", $P102 
    .lex "$_", _lex_param_0 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P102, $P5002
    find_lex $P5003, "$from"
    set $S5001, $P5003
    isne $I5001, $S5001, ""
    unless $I5001 goto if696_end1572 
.annotate 'line', 1373
    set $S5002, _lex_param_0
    find_lex $P5004, "$from"
    set $S5003, $P5004
    iseq $I5002, $S5002, $S5003
    unless $I5002 goto if697_end1574 
.annotate 'line', 1374
    box $P5005, ""
    store_lex "$from", $P5005
  if697_end1574:
    die 0, .CONTROL_LOOP_NEXT
  if696_end1572:
    time $N5001
    box $P5006, $N5001
    set $P101, $P5006
    find_lex $P5008, "self"
    nqp_decontainerize $P5007, $P5008
    set $S5004, _lex_param_0
    can $I5003, $P5007, $S5004
    unless $I5003 goto if698_else1575 
.annotate 'line', 1380
.annotate 'line', 1381
    find_lex $P5010, "self"
    nqp_decontainerize $P5009, $P5010
    find_lex $P5011, "$result"
    find_lex $P5012, "%adverbs"
    set $S5005, _lex_param_0
    $P5013 = $P5009.$S5005($P5011, $P5012 :flat :named)
    store_lex "$result", $P5013
    goto if698_end1576
  if698_else1575:
    find_lex $P5015, "self"
    nqp_decontainerize $P5014, $P5015
    nqp_get_sc_object $P5016, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 127
    repr_get_attr_obj $P5017, $P5014, $P5016, "$!backend", 10
    set $S5006, _lex_param_0
    can $I5004, $P5017, $S5006
    unless $I5004 goto if699_else1577 
.annotate 'line', 1383
.annotate 'line', 1384
    find_lex $P5019, "self"
    nqp_decontainerize $P5018, $P5019
    nqp_get_sc_object $P5020, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 127
    repr_get_attr_obj $P5021, $P5018, $P5020, "$!backend", 10
    find_lex $P5022, "$result"
    find_lex $P5023, "%adverbs"
    set $S5007, _lex_param_0
    $P5024 = $P5021.$S5007($P5022, $P5023 :flat :named)
    store_lex "$result", $P5024
    set $P5026, $P5024
    goto if699_end1578
  if699_else1577:
.annotate 'line', 1386
    set $S5010, _lex_param_0
    concat $S5009, "Unknown compilation stage '", $S5010
    concat $S5008, $S5009, "'"
    box $P5025, $S5008
    die $P5025
    set $P5026, $P5025
  if699_end1578:
  if698_end1576:
    time $N5003
    set $N5004, $P101
    sub $N5002, $N5003, $N5004
    box $P5027, $N5002
    set $P102, $P5027
    find_lex $P5028, "$stagestats"
    defined $I5005, $P5028
    unless $I5005 goto if700_end1580 
.annotate 'line', 1390
    find_lex $P5029, "$stderr"
    new $P5032, 'ResizablePMCArray'
    push $P5032, _lex_param_0
    push $P5032, $P102
    new $P5031, 'ResizableStringArray'
    push $P5031, "nqp"
    get_root_global $P5030, $P5031, "sprintf"
    $S5011 = $P5030("Stage %-11s: %7.3f", $P5032)
    $P5033 = $P5029."print"($S5011)
    find_lex $P5034, "$stagestats"
    set $I5007, $P5034
    band $I5006, $I5007, 4
    unless $I5006 goto if701_end1582 
.annotate 'line', 1392
    find_lex $P5036, "self"
    nqp_decontainerize $P5035, $P5036
    nqp_get_sc_object $P5037, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 127
    repr_get_attr_obj $P5038, $P5035, $P5037, "$!backend", 10
    $P5039 = $P5038."force_gc"()
  if701_end1582:
    find_lex $P5040, "$stagestats"
    set $I5009, $P5040
    band $I5008, $I5009, 2
    unless $I5008 goto if702_end1584 
    find_lex $P5041, "$stderr"
.annotate 'line', 1393
    find_lex $P5043, "self"
    nqp_decontainerize $P5042, $P5043
    nqp_get_sc_object $P5044, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 127
    repr_get_attr_obj $P5045, $P5042, $P5044, "$!backend", 10
    $P5046 = $P5045."vmstat"()
    $P5047 = $P5041."print"($P5046)
  if702_end1584:
    find_lex $P5048, "$stderr"
    $P5049 = $P5048."print"("\n")
    find_lex $P5050, "$stagestats"
    set $I5011, $P5050
    band $I5010, $I5011, 8
    box $P5056, $I5010
    set $P5055, $P5056
    unless $I5010 goto if703_end1586 
.annotate 'line', 1396
    find_lex $P5051, "$stderr"
    $P5052 = $P5051."print"("continue> ")
    find_lex $P5053, "$stdin"
    $P5054 = $P5053."readline"()
    set $P5055, $P5054
  if703_end1586:
  if700_end1580:
    set $S5012, _lex_param_0
    find_lex $P5057, "$target"
    set $S5013, $P5057
    iseq $I5012, $S5012, $S5013
    set $I5013, $I5012
    unless $I5012 goto if704_end1588 
    die 0, .CONTROL_LOOP_LAST
    set $I5013, 0
  if704_end1588:
    .return ($I5013) 
.end
.HLL "nqp"
.namespace []
.sub "start" :subid("cuid_146_1383914954.64741") :anon :lex :outer("cuid_261_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1412
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :slurpy :named 
    .lex "self", _lex_param_0 
    .lex "$source", _lex_param_1 
    .lex "%adverbs", _lex_param_2 
    .return (_lex_param_1) 
.end
.HLL "nqp"
.namespace []
.sub "parse" :subid("cuid_147_1383914954.64741") :anon :lex :outer("cuid_261_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1416
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :slurpy :named 
    .lex "$s", $P101 
    .lex "$grammar", $P102 
    .lex "$actions", $P103 
    .lex "$match", $P104 
    .lex "self", _lex_param_0 
    .lex "$source", _lex_param_1 
    .lex "%adverbs", _lex_param_2 
    .local pmc fb_tmp_142 
    .local pmc fb_tmp_143 
    .local pmc fb_tmp_144 
    .local pmc fb_tmp_145 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P102, $P5002
    nqp_get_sc_object $P5003, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P103, $P5003
    nqp_get_sc_object $P5004, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P104, $P5004
    root_new $P105, ['parrot';'Continuation']
    set_label $P105, lexotic_1600
    .lex "RETURN", $P105
    set $P101, _lex_param_1
    set fb_tmp_142, _lex_param_2
    repr_defined $I5001, fb_tmp_142
    unless $I5001 goto if709_else1604 
    set $P5005, fb_tmp_142["transcode"]
    set $P5007, $P5005
    goto if709_end1605
  if709_else1604:
    null $P5006
    set $P5007, $P5006
  if709_end1605:
    unless_null $P5007, vivi_7101606
    nqp_get_sc_object $P5008, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5007, $P5008
  vivi_7101606:
    unless $P5007 goto if708_end1603 
.annotate 'line', 1418
.annotate 'line', 1419
    nqp_decontainerize $P5009, _lex_param_0
    nqp_get_sc_object $P5010, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 127
    repr_get_attr_obj $P5011, $P5009, $P5010, "$!backend", 10
    set fb_tmp_143, _lex_param_2
    repr_defined $I5002, fb_tmp_143
    unless $I5002 goto if711_else1607 
    set $P5012, fb_tmp_143["transcode"]
    set $P5014, $P5012
    goto if711_end1608
  if711_else1607:
    null $P5013
    set $P5014, $P5013
  if711_end1608:
    unless_null $P5014, vivi_7121609
    nqp_get_sc_object $P5015, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5014, $P5015
  vivi_7121609:
    $P5016 = $P5011."apply_transcodings"($P101, $P5014)
    set $P101, $P5016
  if708_end1603:
.annotate 'line', 1421
    nqp_decontainerize $P5017, _lex_param_0
    $P5018 = $P5017."parsegrammar"()
    set $P102, $P5018
.annotate 'line', 1423
    nqp_decontainerize $P5019, _lex_param_0
    $P5020 = $P5019."parseactions"()
    set $P103, $P5020
    set fb_tmp_144, _lex_param_2
    repr_defined $I5003, fb_tmp_144
    unless $I5003 goto if714_else1612 
    set $P5021, fb_tmp_144["rxtrace"]
    set $P5023, $P5021
    goto if714_end1613
  if714_else1612:
    null $P5022
    set $P5023, $P5022
  if714_end1613:
    unless_null $P5023, vivi_7151614
    nqp_get_sc_object $P5024, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5023, $P5024
  vivi_7151614:
    unless $P5023 goto if713_end1611 
.annotate 'line', 1424
    get_how $P5025, $P102
    $P5026 = $P5025."trace-on"($P102)
  if713_end1611:
.annotate 'line', 1425
    $P5027 = $P102."parse"($P101, 0 :named("p"), $P103 :named("actions"))
    set $P104, $P5027
    set fb_tmp_145, _lex_param_2
    repr_defined $I5004, fb_tmp_145
    unless $I5004 goto if717_else1617 
    set $P5028, fb_tmp_145["rxtrace"]
    set $P5030, $P5028
    goto if717_end1618
  if717_else1617:
    null $P5029
    set $P5030, $P5029
  if717_end1618:
    unless_null $P5030, vivi_7181619
    nqp_get_sc_object $P5031, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5030, $P5031
  vivi_7181619:
    unless $P5030 goto if716_end1616 
.annotate 'line', 1426
    get_how $P5032, $P102
    $P5033 = $P5032."trace-off"($P102)
  if716_end1616:
    if $P104 goto unless719_end1621 
.annotate 'line', 1427
    nqp_decontainerize $P5034, _lex_param_0
    $P5035 = $P5034."panic"("Unable to parse source")
  unless719_end1621:
    $P5036 = "RETURN"($P104)
    goto lexotic_1601
  lexotic_1600:
    .get_results ($P5036)
  lexotic_1601:
    .return ($P5036) 
.end
.HLL "nqp"
.namespace []
.sub "ast" :subid("cuid_148_1383914954.64741") :anon :lex :outer("cuid_261_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1431
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :slurpy :named 
    .lex "$ast", $P101 
    .lex "self", _lex_param_0 
    .lex "$source", _lex_param_1 
    .lex "%adverbs", _lex_param_2 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P101, $P5001
.annotate 'line', 1432
    $P5002 = _lex_param_1."ast"()
    set $P101, $P5002
.annotate 'line', 1434
    nqp_get_sc_object $P5003, "2D75A9E3BEA240A82E5B17B1BB1078D757A67840-1383914940.28217", 12
    $P5004 = $P5003."ACCEPTS"($P101)
    if $P5004 goto unless720_end1623 
.annotate 'line', 1433
    nqp_decontainerize $P5005, _lex_param_0
    get_how $P5006, _lex_param_1
    $P5007 = $P5006."name"(_lex_param_1)
    set $S5002, $P5007
    concat $S5001, "Unable to obtain AST from ", $S5002
    $P5008 = $P5005."panic"($S5001)
  unless720_end1623:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "dumper" :subid("cuid_149_1383914954.64741") :anon :lex :outer("cuid_261_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1438
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 :slurpy :named 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$name", _lex_param_2 
    .lex "%options", _lex_param_3 
    can $I5001, _lex_param_1, "dump"
    unless $I5001 goto if721_else1624 
.annotate 'line', 1439
.annotate 'line', 1440
    $P5001 = _lex_param_1."dump"()
    set $S5001, $P5001
    print $S5001
    box $P5004, $S5001
    set $P5003, $P5004
    goto if721_end1625
  if721_else1624:
.annotate 'line', 1442
    box $P5002, "Cannot dump this object; no dump method"
    die $P5002
    set $P5003, $P5002
  if721_end1625:
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "usage" :subid("cuid_150_1383914954.64741") :anon :lex :outer("cuid_261_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1447
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :optional 
    .param int haz_param_13 :opt_flag 
    .const 'Sub' $P5013 = 'cuid_281_1383914954.64741' 
    capture_lex $P5013 
    .lex "$usage", $P101 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    if haz_param_13, default1631
    nqp_get_sc_object $P5012, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set _lex_param_1, $P5012
  default1631:
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P101, $P5001
    unless _lex_param_1 goto if722_end1627 
.annotate 'line', 1448
.annotate 'line', 1449
    $P5002 = "&say"(_lex_param_1)
  if722_end1627:
    box $P5003, "This compiler is based on HLL::Compiler.\n\nOptions:\n"
    set $P101, $P5003
    nqp_decontainerize $P5007, _lex_param_0
    nqp_get_sc_object $P5008, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 127
    repr_get_attr_obj $P5009, $P5007, $P5008, "@!cmdoptions", 3
    set $P5004, $P5009
    iter $P5006, $P5009
  for_next1628:
    unless $P5006, for_done1630
    shift $P5011, $P5006
  for_redo1629:
    .const 'Sub' $P5010 = 'cuid_281_1383914954.64741' 
    capture_lex $P5010
    $P5004 = $P5010($P5011)
    goto for_next1628
  for_done1630:
    set $S5001, $P101
    say $S5001
    exit 0
    .return (0) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_281_1383914954.64741") :anon :lex :outer("cuid_150_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1452
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5001, "$usage"
    set $S5002, $P5001
    set $S5005, _lex_param_0
    concat $S5004, "    ", $S5005
    concat $S5003, $S5004, "\n"
    concat $S5001, $S5002, $S5003
    box $P5002, $S5001
    store_lex "$usage", $P5002
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "version" :subid("cuid_151_1383914954.64741") :anon :lex :outer("cuid_261_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1459
    .param pmc _lex_param_0 
    .lex "$version", $P101 
    .lex "$backver", $P102 
    .lex "self", _lex_param_0 
    .local pmc fb_tmp_146 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P102, $P5002
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 127
    repr_get_attr_obj $P5005, $P5003, $P5004, "%!config", 6
    set fb_tmp_146, $P5005
    repr_defined $I5001, fb_tmp_146
    unless $I5001 goto if723_else1632 
    set $P5006, fb_tmp_146["version"]
    set $P5008, $P5006
    goto if723_end1633
  if723_else1632:
    null $P5007
    set $P5008, $P5007
  if723_end1633:
    unless_null $P5008, vivi_7241634
    nqp_get_sc_object $P5009, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5008, $P5009
  vivi_7241634:
    set $P101, $P5008
.annotate 'line', 1461
    nqp_decontainerize $P5010, _lex_param_0
    nqp_get_sc_object $P5011, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 127
    repr_get_attr_obj $P5012, $P5010, $P5011, "$!backend", 10
    $P5013 = $P5012."version_string"()
    set $P102, $P5013
    nqp_decontainerize $P5014, _lex_param_0
    nqp_get_sc_object $P5015, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 127
    repr_get_attr_obj $P5016, $P5014, $P5015, "$!language", 5
    set $S5006, $P5016
    concat $S5005, "This is ", $S5006
    concat $S5004, $S5005, " version "
    set $S5007, $P101
    concat $S5003, $S5004, $S5007
    concat $S5002, $S5003, " built on "
    set $S5008, $P102
    concat $S5001, $S5002, $S5008
    say $S5001
    exit 0
    .return (0) 
.end
.HLL "nqp"
.namespace []
.sub "show-config" :subid("cuid_152_1383914954.64741") :anon :lex :outer("cuid_261_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1466
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    $P5002 = $P5001."verbose-config"()
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "verbose-config" :subid("cuid_153_1383914954.64741") :anon :lex :outer("cuid_261_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1468
    .param pmc _lex_param_0 
    .const 'Sub' $P5023 = 'cuid_282_1383914954.64741' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_283_1383914954.64741' 
    capture_lex $P5023 
    .lex "$bname", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P101, $P5001
.annotate 'line', 1469
    nqp_decontainerize $P5002, _lex_param_0
    nqp_get_sc_object $P5003, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 127
    repr_get_attr_obj $P5004, $P5002, $P5003, "$!backend", 10
    $P5005 = $P5004."name"()
    set $P101, $P5005
.annotate 'line', 1470
    nqp_decontainerize $P5009, _lex_param_0
    nqp_get_sc_object $P5010, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 127
    repr_get_attr_obj $P5011, $P5009, $P5010, "$!backend", 10
    $P5012 = $P5011."config"()
    set $P5006, $P5012
    iter $P5008, $P5012
  for_next1635:
    unless $P5008, for_done1637
    shift $P5014, $P5008
  for_redo1636:
    .const 'Sub' $P5013 = 'cuid_282_1383914954.64741' 
    capture_lex $P5013
    $P5006 = $P5013($P5014)
    goto for_next1635
  for_done1637:
    nqp_decontainerize $P5018, _lex_param_0
    nqp_get_sc_object $P5019, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 127
    repr_get_attr_obj $P5020, $P5018, $P5019, "%!config", 6
    set $P5015, $P5020
    iter $P5017, $P5020
  for_next1638:
    unless $P5017, for_done1640
    shift $P5022, $P5017
  for_redo1639:
    .const 'Sub' $P5021 = 'cuid_283_1383914954.64741' 
    capture_lex $P5021
    $P5015 = $P5021($P5022)
    goto for_next1638
  for_done1640:
    exit 0
    .return (0) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_282_1383914954.64741") :anon :lex :outer("cuid_153_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1470
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5001, "$bname"
    set $S5005, $P5001
    concat $S5004, $S5005, "::"
.annotate 'line', 1471
    $P5002 = _lex_param_0."key"()
    set $S5006, $P5002
    concat $S5003, $S5004, $S5006
    concat $S5002, $S5003, "="
    $P5003 = _lex_param_0."value"()
    set $S5007, $P5003
    concat $S5001, $S5002, $S5007
    say $S5001
    .return ($S5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_283_1383914954.64741") :anon :lex :outer("cuid_153_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1473
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    nqp_get_sc_object $P5003, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 127
    repr_get_attr_obj $P5004, $P5001, $P5003, "$!language", 5
    set $S5005, $P5004
    concat $S5004, $S5005, "::"
.annotate 'line', 1474
    $P5005 = _lex_param_0."key"()
    set $S5006, $P5005
    concat $S5003, $S5004, $S5006
    concat $S5002, $S5003, "="
    $P5006 = _lex_param_0."value"()
    set $S5007, $P5006
    concat $S5001, $S5002, $S5007
    say $S5001
    .return ($S5001) 
.end
.HLL "nqp"
.namespace []
.sub "nqpevent" :subid("cuid_154_1383914954.64741") :anon :lex :outer("cuid_261_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1479
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy 
    .lex "self", _lex_param_0 
    .lex "@pos", _lex_param_1 
.annotate 'line', 1480
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 127
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!backend", 10
    $P5004 = $P5003."nqpevent"(_lex_param_1 :flat)
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "removestage" :subid("cuid_155_1383914954.64741") :anon :lex :outer("cuid_261_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1483
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5013 = 'cuid_284_1383914954.64741' 
    capture_lex $P5013 
    .lex "@new_stages", $P101 
    .lex "self", _lex_param_0 
    .lex "$stagename", _lex_param_1 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    new $P5002, 'ResizableStringArray'
    set $P101, $P5002
    nqp_decontainerize $P5006, _lex_param_0
    nqp_get_sc_object $P5007, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 127
    repr_get_attr_obj $P5008, $P5006, $P5007, "@!stages", 0
    set $P5003, $P5008
    iter $P5005, $P5008
  for_next1643:
    unless $P5005, for_done1645
    shift $P5010, $P5005
  for_redo1644:
    .const 'Sub' $P5009 = 'cuid_284_1383914954.64741' 
    capture_lex $P5009
    $P5003 = $P5009($P5010)
    goto for_next1643
  for_done1645:
    nqp_decontainerize $P5011, _lex_param_0
    nqp_get_sc_object $P5012, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 127
    repr_bind_attr_obj $P5011, $P5012, "@!stages", 0, $P101
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_284_1383914954.64741") :anon :lex :outer("cuid_155_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1485
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    set $S5001, _lex_param_0
    find_lex $P5001, "$stagename"
    set $S5002, $P5001
    isne $I5001, $S5001, $S5002
    box $P5005, $I5001
    set $P5004, $P5005
    unless $I5001 goto if725_end1642 
.annotate 'line', 1486
.annotate 'line', 1487
    find_lex $P5002, "@new_stages"
    $P5003 = $P5002."push"(_lex_param_0)
    set $P5004, $P5003
  if725_end1642:
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "addstage" :subid("cuid_156_1383914954.64741") :anon :lex :outer("cuid_261_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1493
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :slurpy :named 
    .const 'Sub' $P5035 = 'cuid_285_1383914954.64741' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_286_1383914954.64741' 
    capture_lex $P5035 
    .lex "$position", $P101 
    .lex "$where", $P102 
    .lex "@new-stages", $P103 
    .lex "self", _lex_param_0 
    .lex "$stagename", _lex_param_1 
    .lex "%adverbs", _lex_param_2 
    .local pmc fb_tmp_147 
    .local pmc fb_tmp_148 
    .local pmc fb_tmp_149 
    .local pmc fb_tmp_150 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P102, $P5002
    new $P5003, 'ResizablePMCArray'
    set $P103, $P5003
    root_new $P104, ['parrot';'Continuation']
    set_label $P104, lexotic_1646
    .lex "RETURN", $P104
    set fb_tmp_147, _lex_param_2
    repr_defined $I5001, fb_tmp_147
    unless $I5001 goto if727_else1650 
    set $P5004, fb_tmp_147["before"]
    set $P5006, $P5004
    goto if727_end1651
  if727_else1650:
    null $P5005
    set $P5006, $P5005
  if727_end1651:
    unless_null $P5006, vivi_7281652
    nqp_get_sc_object $P5007, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5006, $P5007
  vivi_7281652:
    unless $P5006 goto if726_else1648 
.annotate 'line', 1496
    set fb_tmp_148, _lex_param_2
    repr_defined $I5002, fb_tmp_148
    unless $I5002 goto if729_else1653 
    set $P5008, fb_tmp_148["before"]
    set $P5010, $P5008
    goto if729_end1654
  if729_else1653:
    null $P5009
    set $P5010, $P5009
  if729_end1654:
    unless_null $P5010, vivi_7301655
    nqp_get_sc_object $P5011, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5010, $P5011
  vivi_7301655:
    set $P102, $P5010
    box $P5012, "before"
    set $P101, $P5012
    goto if726_end1649
  if726_else1648:
    set fb_tmp_149, _lex_param_2
    repr_defined $I5003, fb_tmp_149
    unless $I5003 goto if732_else1658 
    set $P5013, fb_tmp_149["after"]
    set $P5015, $P5013
    goto if732_end1659
  if732_else1658:
    null $P5014
    set $P5015, $P5014
  if732_end1659:
    unless_null $P5015, vivi_7331660
    nqp_get_sc_object $P5016, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5015, $P5016
  vivi_7331660:
    unless $P5015 goto if731_else1656 
.annotate 'line', 1499
    set fb_tmp_150, _lex_param_2
    repr_defined $I5004, fb_tmp_150
    unless $I5004 goto if734_else1661 
    set $P5017, fb_tmp_150["after"]
    set $P5019, $P5017
    goto if734_end1662
  if734_else1661:
    null $P5018
    set $P5019, $P5018
  if734_end1662:
    unless_null $P5019, vivi_7351663
    nqp_get_sc_object $P5020, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5019, $P5020
  vivi_7351663:
    set $P102, $P5019
    box $P5021, "after"
    set $P101, $P5021
    set $P5024, $P101
    goto if731_end1657
  if731_else1656:
    .const 'Sub' $P5022 = 'cuid_285_1383914954.64741' 
    capture_lex $P5022
    $P5023 = $P5022()
    set $P5024, $P5023
  if731_end1657:
  if726_end1649:
    new $P5025, 'ResizablePMCArray'
    set $P103, $P5025
.annotate 'line', 1509
    nqp_decontainerize $P5029, _lex_param_0
    $P5030 = $P5029."stages"()
    set $P5026, $P5030
    iter $P5028, $P5030
  for_next1668:
    unless $P5028, for_done1670
    shift $P5032, $P5028
  for_redo1669:
    .const 'Sub' $P5031 = 'cuid_286_1383914954.64741' 
    capture_lex $P5031
    $P5026 = $P5031($P5032)
    goto for_next1668
  for_done1670:
.annotate 'line', 1522
    nqp_decontainerize $P5033, _lex_param_0
    $P5034 = $P5033."stages"($P103)
    goto lexotic_1647
  lexotic_1646:
    .get_results ($P5034)
  lexotic_1647:
    .return ($P5034) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_285_1383914954.64741") :anon :lex :outer("cuid_156_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1502
    .lex "@new-stages", $P101 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
.annotate 'line', 1503
    find_lex $P5004, "self"
    nqp_decontainerize $P5003, $P5004
    $P5005 = $P5003."stages"()
    repr_clone $P5002, $P5005
    set $P101, $P5002
    find_lex $P5006, "$stagename"
    push $P101, $P5006
.annotate 'line', 1505
    find_lex $P5008, "self"
    nqp_decontainerize $P5007, $P5008
    $P5007."stages"($P101)
    $P5009 = "RETURN"(1)
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_286_1383914954.64741") :anon :lex :outer("cuid_156_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1509
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    set $S5001, _lex_param_0
    find_lex $P5001, "$where"
    set $S5002, $P5001
    iseq $I5001, $S5001, $S5002
    unless $I5001 goto if736_else1664 
.annotate 'line', 1510
    find_lex $P5002, "$position"
    set $S5003, $P5002
    iseq $I5002, $S5003, "before"
    unless $I5002 goto if737_else1666 
.annotate 'line', 1511
    find_lex $P5003, "@new-stages"
    find_lex $P5004, "$stagename"
    push $P5003, $P5004
    find_lex $P5005, "@new-stages"
    push $P5005, _lex_param_0
    set $P5009, $P5005
    goto if737_end1667
  if737_else1666:
.annotate 'line', 1514
    find_lex $P5006, "@new-stages"
    push $P5006, _lex_param_0
    find_lex $P5007, "@new-stages"
    find_lex $P5008, "$stagename"
    push $P5007, $P5008
    set $P5009, $P5007
  if737_end1667:
    set $P5011, $P5009
    goto if736_end1665
  if736_else1664:
.annotate 'line', 1518
    find_lex $P5010, "@new-stages"
    push $P5010, _lex_param_0
    set $P5011, $P5010
  if736_end1665:
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "parse_name" :subid("cuid_157_1383914954.64741") :anon :lex :outer("cuid_261_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1525
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5027 = 'cuid_287_1383914954.64741' 
    capture_lex $P5027 
    .lex "@ns", $P101 
    .lex "$sigil", $P102 
    .lex "$idx", $P103 
    .lex "@actual_ns", $P104 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    .local pmc fb_tmp_151 
    .local pmc fb_tmp_152 
    .local pmc fb_tmp_153 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P102, $P5002
    nqp_get_sc_object $P5003, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P103, $P5003
    new $P5004, 'ResizablePMCArray'
    set $P104, $P5004
    set $S5001, _lex_param_1
    split $P5005, "::", $S5001
    set $P101, $P5005
    set fb_tmp_151, $P101
    repr_defined $I5001, fb_tmp_151
    unless $I5001 goto if738_else1671 
    set $P5006, fb_tmp_151[0]
    set $P5008, $P5006
    goto if738_end1672
  if738_else1671:
    null $P5007
    set $P5008, $P5007
  if738_end1672:
    unless_null $P5008, vivi_7391673
    nqp_get_sc_object $P5009, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5008, $P5009
  vivi_7391673:
    set $S5003, $P5008
    substr $S5002, $S5003, 0, 1
    box $P5010, $S5002
    set $P102, $P5010
    set $S5004, $P102
    index $I5002, "$@%&", $S5004, 0
    box $P5011, $I5002
    set $P103, $P5011
    set $N5001, $P103
    set $N5002, 0
    isge $I5003, $N5001, $N5002
    unless $I5003 goto if740_end1675 
.annotate 'line', 1531
    set fb_tmp_152, $P101
    repr_defined $I5004, fb_tmp_152
    unless $I5004 goto if741_else1676 
    set $P5012, fb_tmp_152[0]
    set $P5014, $P5012
    goto if741_end1677
  if741_else1676:
    null $P5013
    set $P5014, $P5013
  if741_end1677:
    unless_null $P5014, vivi_7421678
    nqp_get_sc_object $P5015, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5014, $P5015
  vivi_7421678:
    set $S5006, $P5014
    substr $S5005, $S5006, 1
    box $P5016, $S5005
    set $P101[0], $P5016
    set $S5008, $P102
    set fb_tmp_153, $P101
    repr_defined $I5005, fb_tmp_153
    unless $I5005 goto if743_else1679 
    set $P5017, fb_tmp_153[-1]
    set $P5019, $P5017
    goto if743_end1680
  if743_else1679:
    null $P5018
    set $P5019, $P5018
  if743_end1680:
    unless_null $P5019, vivi_7441681
    nqp_get_sc_object $P5020, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5019, $P5020
  vivi_7441681:
    set $S5009, $P5019
    concat $S5007, $S5008, $S5009
    box $P5021, $S5007
    set $P101[-1], $P5021
  if740_end1675:
    set $P5022, $P101
    iter $P5024, $P101
  for_next1684:
    unless $P5024, for_done1686
    shift $P5026, $P5024
  for_redo1685:
    .const 'Sub' $P5025 = 'cuid_287_1383914954.64741' 
    capture_lex $P5025
    $P5022 = $P5025($P5026)
    goto for_next1684
  for_done1686:
    .return ($P104) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_287_1383914954.64741") :anon :lex :outer("cuid_157_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1539
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    set $S5001, _lex_param_0
    iseq $I5001, $S5001, ""
    box $P5003, $I5001
    set $P5002, $P5003
    if $I5001 goto unless745_end1683 
    find_lex $P5001, "@actual_ns"
    push $P5001, _lex_param_0
    set $P5002, $P5001
  unless745_end1683:
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "lineof" :subid("cuid_158_1383914954.64741") :anon :lex :outer("cuid_261_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1545
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param int _lex_param_2 
    .param int _lex_param_3 :named("cache") :optional 
    .param int haz_param_14 :opt_flag 
    .const 'Sub' $P5012 = 'cuid_288_1383914954.64741' 
    capture_lex $P5012 
    .lex "$linepos", $P101 
    .lex "$lo", $I101 
    .lex "$hi", $I102 
    .lex "$line", $I103 
    .lex "self", _lex_param_0 
    .lex "$target", _lex_param_1 
    .lex "$pos", _lex_param_2 
    .lex "$cache", _lex_param_3 
    .local pmc fb_tmp_154 
    if haz_param_14, default1714
    set $I5013, 0
    set _lex_param_3, $I5013
  default1714:
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P101, $P5001
    set $I101, 0
    set $I102, 0
    set $I103, 0
    unless _lex_param_3 goto if746_end1688 
.annotate 'line', 1547
    find_dynamic_lex $P5002, "$*LINEPOSCACHE"
    unless_null $P5002, fallback1689
    nqp_get_sc_object $P5004, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 0
    get_who $P5003, $P5004
    set fb_tmp_154, $P5003
    repr_defined $I5001, fb_tmp_154
    unless $I5001 goto if747_else1690 
    set $P5005, fb_tmp_154["$LINEPOSCACHE"]
    set $P5007, $P5005
    goto if747_end1691
  if747_else1690:
    null $P5006
    set $P5007, $P5006
  if747_end1691:
    unless_null $P5007, vivi_7481692
    nqp_get_sc_object $P5008, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5007, $P5008
  vivi_7481692:
    unless_null $P5007, vivi_7491693
    die "Contextual $*LINEPOSCACHE not found"
    box $P5009, "Contextual $*LINEPOSCACHE not found"
    set $P5007, $P5009
  vivi_7491693:
    set $P5002, $P5007
  fallback1689:
    set $P101, $P5002
  if746_end1688:
    defined $I5002, $P101
    if $I5002 goto unless750_end1695 
    .const 'Sub' $P5010 = 'cuid_288_1383914954.64741' 
    capture_lex $P5010
    $P5011 = $P5010()
  unless750_end1695:
    set $I101, 0
    elements $I5003, $P101
    set $I102, $I5003
  while755_test1707:
    islt $I5004, $I101, $I102
    set $I5011, $I5004
    unless $I5004 goto while755_done1711 
  while755_redo1709:
.annotate 'line', 1582
    add $I5006, $I101, $I102
    div $I5005, $I5006, 2
    set $I103, $I5005
    set $I5008, $P101[$I103]
    isgt $I5007, $I5008, _lex_param_2
    unless $I5007 goto if756_else1712 
.annotate 'line', 1584
    set $I102, $I103
    set $I5010, $I102
    goto if756_end1713
  if756_else1712:
.annotate 'line', 1586
    add $I5009, $I103, 1
    set $I101, $I5009
    set $I5010, $I101
  if756_end1713:
    set $I5011, $I5010
    goto while755_test1707 
  while755_done1711:
    add $I5012, $I101, 1
    .return ($I5012) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_288_1383914954.64741") :anon :lex :outer("cuid_158_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1551
    .lex "$s", $S101 
    .lex "$eos", $I101 
    .lex "$jpos", $I102 
    .lex "$ord", $I103 
    set $S101, ""
    set $I101, 0
    set $I102, 0
    set $I103, 0
    new $P5001, 'ResizableIntegerArray'
    store_lex "$linepos", $P5001
    find_lex $I5001, "$cache"
    unless $I5001 goto if751_end1697 
.annotate 'line', 1554
    find_lex $P5002, "$linepos"
    store_dynamic_lex "$*LINEPOSCACHE", $P5002
  if751_end1697:
    find_lex $P5003, "$target"
    set $S5001, $P5003
    set $S101, $S5001
    length $I5002, $S101
    set $I101, $I5002
    set $I102, 0
  while752_test1698:
    find_cclass $I5004, 4096, $S101, $I102, $I101
    set $I102, $I5004
    islt $I5003, $I102, $I101
    set $I5013, $I5003
    unless $I5003 goto while752_done1702 
  while752_redo1700:
.annotate 'line', 1565
    ord $I5005, $S101, $I102
    set $I103, $I5005
    add $I5006, $I102, 1
    set $I102, $I5006
    find_lex $P5004, "$linepos"
    push $P5004, $I102
    iseq $I5007, $I103, 13
    set $I5010, $I5007
    unless $I5007 goto if754_end1706 
    ord $I5009, $S101, $I102
    iseq $I5008, $I5009, 10
    set $I5010, $I5008
  if754_end1706:
    set $I5012, $I5010
    unless $I5010 goto if753_end1704 
.annotate 'line', 1571
    add $I5011, $I102, 1
    set $I102, $I5011
    set $I5012, $I102
  if753_end1704:
    set $I5013, $I5012
    goto while752_test1698 
  while752_done1702:
    .return ($I5013) 
.end
.HLL "nqp"
.namespace []
.sub "user-progname" :subid("cuid_159_1383914954.64741") :anon :lex :outer("cuid_261_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1594
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5002, _lex_param_0
    nqp_get_sc_object $P5003, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 127
    repr_get_attr_obj $P5004, $P5002, $P5003, "$!user_progname", 7
    set $P5001, $P5004
    defined $I5001, $P5001
    if $I5001, defor1715
    box $P5005, "interactive"
    set $P5001, $P5005
  defor1715:
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "cli-options" :subid("cuid_160_1383914954.64741") :anon :lex :outer("cuid_261_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1597
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 127
    repr_get_attr_obj $P5003, $P5001, $P5002, "%!cli-options", 9
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "cli-arguments" :subid("cuid_161_1383914954.64741") :anon :lex :outer("cuid_261_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1598
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 127
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!cli-arguments", 8
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "recursion_limit" :subid("cuid_162_1383914954.64741") :anon :lex :outer("cuid_261_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1601
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$limit", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 127
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!backend", 10
    can $I5001, $P5003, "recursion_limit"
    unless $I5001 goto if757_else1716 
.annotate 'line', 1602
.annotate 'line', 1603
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 127
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!backend", 10
    $P5006."recursion_limit"(_lex_param_1)
    set $I5002, 1
    goto if757_end1717
  if757_else1716:
.annotate 'line', 1606

    set $I5002, 0
  if757_end1717:
    .return ($I5002) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_289_1383914954.64741") :anon :lex :outer("cuid_230_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1704
    .const 'Sub' $P5006 = 'cuid_164_1383914954.64741' 
    capture_lex $P5006 
    .const 'Sub' $P5006 = 'cuid_165_1383914954.64741' 
    capture_lex $P5006 
    .const 'Sub' $P5006 = 'cuid_166_1383914954.64741' 
    capture_lex $P5006 
    .const 'Sub' $P5006 = 'cuid_167_1383914954.64741' 
    capture_lex $P5006 
    .const 'Sub' $P5006 = 'cuid_168_1383914954.64741' 
    capture_lex $P5006 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_164_1383914954.64741' 
    capture_lex $P5001
    .const 'Sub' $P5002 = 'cuid_165_1383914954.64741' 
    capture_lex $P5002
    .const 'Sub' $P5003 = 'cuid_166_1383914954.64741' 
    capture_lex $P5003
    .const 'Sub' $P5004 = 'cuid_167_1383914954.64741' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_168_1383914954.64741' 
    capture_lex $P5005
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "init" :subid("cuid_164_1383914954.64741") :anon :lex :outer("cuid_289_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1708
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 170
    new $P5003, 'ResizablePMCArray'
    repr_bind_attr_obj $P5001, $P5002, "@!arguments", 0, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 170
    new $P5006, 'Hash'
    repr_bind_attr_obj $P5004, $P5005, "%!options", 1, $P5006
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "arguments" :subid("cuid_165_1383914954.64741") :anon :lex :outer("cuid_289_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1713
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 170
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!arguments", 0
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "options" :subid("cuid_166_1383914954.64741") :anon :lex :outer("cuid_289_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1714
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 170
    repr_get_attr_obj $P5003, $P5001, $P5002, "%!options", 1
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "add-argument" :subid("cuid_167_1383914954.64741") :anon :lex :outer("cuid_289_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1716
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$x", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 170
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!arguments", 0
    push $P5003, _lex_param_1
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "add-option" :subid("cuid_168_1383914954.64741") :anon :lex :outer("cuid_289_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1720
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    .lex "$value", _lex_param_2 
    .local pmc fb_tmp_155 
    .local pmc fb_tmp_156 
    .local pmc fb_tmp_157 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 170
    repr_get_attr_obj $P5003, $P5001, $P5002, "%!options", 1
    set $S5001, _lex_param_1
    exists $I5001, $P5003[$S5001]
    unless $I5001 goto if758_else1718 
.annotate 'line', 1723
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 170
    repr_get_attr_obj $P5006, $P5004, $P5005, "%!options", 1
    set fb_tmp_155, $P5006
    repr_defined $I5003, fb_tmp_155
    unless $I5003 goto if760_else1722 
    set $S5002, _lex_param_1
    set $P5007, fb_tmp_155[$S5002]
    set $P5009, $P5007
    goto if760_end1723
  if760_else1722:
    null $P5008
    set $P5009, $P5008
  if760_end1723:
    unless_null $P5009, vivi_7611724
    nqp_get_sc_object $P5010, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5009, $P5010
  vivi_7611724:
    nqp_islist $I5002, $P5009
    unless $I5002 goto if759_else1720 
.annotate 'line', 1724
    nqp_decontainerize $P5011, _lex_param_0
    nqp_get_sc_object $P5012, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 170
    repr_get_attr_obj $P5013, $P5011, $P5012, "%!options", 1
    set fb_tmp_156, $P5013
    repr_defined $I5004, fb_tmp_156
    unless $I5004 goto if762_else1725 
    set $S5003, _lex_param_1
    set $P5014, fb_tmp_156[$S5003]
    set $P5016, $P5014
    goto if762_end1726
  if762_else1725:
    null $P5015
    set $P5016, $P5015
  if762_end1726:
    unless_null $P5016, vivi_7631727
    nqp_get_sc_object $P5017, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5016, $P5017
  vivi_7631727:
    push $P5016, _lex_param_2
    set $P5029, $P5016
    goto if759_end1721
  if759_else1720:
.annotate 'line', 1726
    nqp_decontainerize $P5018, _lex_param_0
    nqp_get_sc_object $P5019, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 170
    repr_get_attr_obj $P5020, $P5018, $P5019, "%!options", 1
    set $S5004, _lex_param_1
    new $P5021, 'ResizablePMCArray'
    nqp_decontainerize $P5022, _lex_param_0
    nqp_get_sc_object $P5023, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 170
    repr_get_attr_obj $P5024, $P5022, $P5023, "%!options", 1
    set fb_tmp_157, $P5024
    repr_defined $I5005, fb_tmp_157
    unless $I5005 goto if764_else1728 
    set $S5005, _lex_param_1
    set $P5025, fb_tmp_157[$S5005]
    set $P5027, $P5025
    goto if764_end1729
  if764_else1728:
    null $P5026
    set $P5027, $P5026
  if764_end1729:
    unless_null $P5027, vivi_7651730
    nqp_get_sc_object $P5028, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5027, $P5028
  vivi_7651730:
    push $P5021, $P5027
    push $P5021, _lex_param_2
    set $P5020[$S5004], $P5021
    set $P5029, $P5021
  if759_end1721:
    set $P5033, $P5029
    goto if758_end1719
  if758_else1718:
.annotate 'line', 1729
    nqp_decontainerize $P5030, _lex_param_0
    nqp_get_sc_object $P5031, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 170
    repr_get_attr_obj $P5032, $P5030, $P5031, "%!options", 1
    set $S5006, _lex_param_1
    set $P5032[$S5006], _lex_param_2
    set $P5033, _lex_param_2
  if758_end1719:
    .return ($P5033) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_290_1383914954.64741") :anon :lex :outer("cuid_230_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1735
    .const 'Sub' $P5011 = 'cuid_169_1383914954.64741' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_170_1383914954.64741' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_171_1383914954.64741' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_172_1383914954.64741' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_173_1383914954.64741' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_174_1383914954.64741' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_175_1383914954.64741' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_176_1383914954.64741' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_177_1383914954.64741' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_178_1383914954.64741' 
    capture_lex $P5011 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_169_1383914954.64741' 
    capture_lex $P5001
    .const 'Sub' $P5002 = 'cuid_170_1383914954.64741' 
    capture_lex $P5002
    .const 'Sub' $P5003 = 'cuid_171_1383914954.64741' 
    capture_lex $P5003
    .const 'Sub' $P5004 = 'cuid_172_1383914954.64741' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_173_1383914954.64741' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_174_1383914954.64741' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_175_1383914954.64741' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_176_1383914954.64741' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_177_1383914954.64741' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_178_1383914954.64741' 
    capture_lex $P5010
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "new" :subid("cuid_169_1383914954.64741") :anon :lex :outer("cuid_290_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1741
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$obj", $P101 
    .lex "self", _lex_param_0 
    .lex "@specs", _lex_param_1 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P101, $P5001
.annotate 'line', 1742
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."CREATE"()
    set $P101, $P5003
.annotate 'line', 1743
    $P101."BUILD"(_lex_param_1 :named("specs"))
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "stop-after-first-arg" :subid("cuid_170_1383914954.64741") :anon :lex :outer("cuid_290_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1747
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 176
    box $P5003, 1
    repr_bind_attr_obj $P5001, $P5002, "$!stop-after-first-arg", 3, $P5003
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "BUILD" :subid("cuid_171_1383914954.64741") :anon :lex :outer("cuid_290_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1751
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("specs") :optional 
    .param int haz_param_15 :opt_flag 
    .const 'Sub' $P5023 = 'cuid_291_1383914954.64741' 
    capture_lex $P5023 
    .lex "self", _lex_param_0 
    .lex "@specs", _lex_param_1 
    if haz_param_15, default1734
    new $P5022, 'ResizablePMCArray'
    set _lex_param_1, $P5022
  default1734:
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 176
    new $P5003, 'ResizablePMCArray'
    repr_bind_attr_obj $P5001, $P5002, "@!specs", 0, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 176
    new $P5006, 'Hash'
    repr_bind_attr_obj $P5004, $P5005, "%!options", 1, $P5006
    nqp_decontainerize $P5007, _lex_param_0
    nqp_get_sc_object $P5008, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 176
    new $P5009, 'Hash'
    repr_bind_attr_obj $P5007, $P5008, "%!stopper", 2, $P5009
    nqp_decontainerize $P5010, _lex_param_0
    nqp_get_sc_object $P5011, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 176
    repr_get_attr_obj $P5012, $P5010, $P5011, "%!stopper", 2
    box $P5013, 1
    set $P5012["--"], $P5013
    nqp_decontainerize $P5014, _lex_param_0
    nqp_get_sc_object $P5015, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 176
    box $P5016, 0
    repr_bind_attr_obj $P5014, $P5015, "$!stop-after-first-arg", 3, $P5016
    set $P5017, _lex_param_1
    iter $P5019, _lex_param_1
  for_next1731:
    unless $P5019, for_done1733
    shift $P5021, $P5019
  for_redo1732:
    .const 'Sub' $P5020 = 'cuid_291_1383914954.64741' 
    capture_lex $P5020
    $P5017 = $P5020($P5021)
    goto for_next1731
  for_done1733:
    .return ($P5017) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_291_1383914954.64741") :anon :lex :outer("cuid_171_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1757
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 1758
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    $P5003 = $P5001."add-spec"(_lex_param_0)
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "add-stopper" :subid("cuid_172_1383914954.64741") :anon :lex :outer("cuid_290_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1761
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$x", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 176
    repr_get_attr_obj $P5003, $P5001, $P5002, "%!stopper", 2
    set $S5001, _lex_param_1
    box $P5004, 1
    set $P5003[$S5001], $P5004
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "split-option-aliases" :subid("cuid_173_1383914954.64741") :anon :lex :outer("cuid_290_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1765
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$s", _lex_param_1 
    set $S5001, _lex_param_1
    split $P5001, "|", $S5001
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "add-spec" :subid("cuid_174_1383914954.64741") :anon :lex :outer("cuid_290_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1770
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5016 = 'cuid_292_1383914954.64741' 
    capture_lex $P5016 
    .lex "$i", $P101 
    .lex "$type", $P102 
    .lex "@options", $P103 
    .lex "self", _lex_param_0 
    .lex "$s", _lex_param_1 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P102, $P5002
    new $P5003, 'ResizablePMCArray'
    set $P103, $P5003
    set $S5001, _lex_param_1
    index $I5001, $S5001, "=", 0
    box $P5004, $I5001
    set $P101, $P5004
    set $N5001, $P101
    set $N5002, 0
    islt $I5002, $N5001, $N5002
    unless $I5002 goto if766_else1735 
.annotate 'line', 1774
    box $P5005, "b"
    set $P102, $P5005
.annotate 'line', 1776
    nqp_decontainerize $P5006, _lex_param_0
    $P5007 = $P5006."split-option-aliases"(_lex_param_1)
    set $P103, $P5007
    goto if766_end1736
  if766_else1735:
.annotate 'line', 1777
    set $S5003, _lex_param_1
    set $N5004, $P101
    set $N5005, 1
    add $N5003, $N5004, $N5005
    set $I5003, $N5003
    substr $S5002, $S5003, $I5003
    box $P5008, $S5002
    set $P102, $P5008
.annotate 'line', 1779
    nqp_decontainerize $P5009, _lex_param_0
    set $S5005, _lex_param_1
    set $I5004, $P101
    substr $S5004, $S5005, 0, $I5004
    $P5010 = $P5009."split-option-aliases"($S5004)
    set $P103, $P5010
  if766_end1736:
    set $P5011, $P103
    iter $P5013, $P103
  for_next1737:
    unless $P5013, for_done1739
    shift $P5015, $P5013
  for_redo1738:
    .const 'Sub' $P5014 = 'cuid_292_1383914954.64741' 
    capture_lex $P5014
    $P5011 = $P5014($P5015)
    goto for_next1737
  for_done1739:
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_292_1383914954.64741") :anon :lex :outer("cuid_174_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1781
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    nqp_get_sc_object $P5003, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 176
    repr_get_attr_obj $P5004, $P5001, $P5003, "%!options", 1
    set $S5001, _lex_param_0
    find_lex $P5005, "$type"
    set $P5004[$S5001], $P5005
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "is-option" :subid("cuid_175_1383914954.64741") :anon :lex :outer("cuid_290_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1787
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$x", _lex_param_1 
    root_new $P101, ['parrot';'Continuation']
    set_label $P101, lexotic_1740
    .lex "RETURN", $P101
    set $S5001, _lex_param_1
    iseq $I5001, $S5001, "-"
    set $I5003, $I5001
    if $I5001 goto unless768_end1745 
    set $S5002, _lex_param_1
    iseq $I5002, $S5002, "--"
    set $I5003, $I5002
  unless768_end1745:
    unless $I5003 goto if767_end1743 
    $P5001 = "RETURN"(0)
  if767_end1743:
    set $S5004, _lex_param_1
    substr $S5003, $S5004, 0, 1
    iseq $I5004, $S5003, "-"
    unless $I5004 goto if769_end1747 
    $P5002 = "RETURN"(1)
  if769_end1747:
    box $P5003, 0
    goto lexotic_1741
  lexotic_1740:
    .get_results ($P5003)
  lexotic_1741:
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "wants-value" :subid("cuid_176_1383914954.64741") :anon :lex :outer("cuid_290_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1793
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$spec", $P101 
    .lex "self", _lex_param_0 
    .lex "$x", _lex_param_1 
    .local pmc fb_tmp_158 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P101, $P5001
    nqp_decontainerize $P5002, _lex_param_0
    nqp_get_sc_object $P5003, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 176
    repr_get_attr_obj $P5004, $P5002, $P5003, "%!options", 1
    set fb_tmp_158, $P5004
    repr_defined $I5001, fb_tmp_158
    unless $I5001 goto if770_else1748 
    set $S5001, _lex_param_1
    set $P5005, fb_tmp_158[$S5001]
    set $P5007, $P5005
    goto if770_end1749
  if770_else1748:
    null $P5006
    set $P5007, $P5006
  if770_end1749:
    unless_null $P5007, vivi_7711750
    nqp_get_sc_object $P5008, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5007, $P5008
  vivi_7711750:
    set $P101, $P5007
    set $S5003, $P101
    substr $S5002, $S5003, 0, 1
    iseq $I5002, $S5002, "s"
    .return ($I5002) 
.end
.HLL "nqp"
.namespace []
.sub "optional-value" :subid("cuid_177_1383914954.64741") :anon :lex :outer("cuid_290_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1798
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$spec", $P101 
    .lex "self", _lex_param_0 
    .lex "$x", _lex_param_1 
    .local pmc fb_tmp_159 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P101, $P5001
    nqp_decontainerize $P5002, _lex_param_0
    nqp_get_sc_object $P5003, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 176
    repr_get_attr_obj $P5004, $P5002, $P5003, "%!options", 1
    set fb_tmp_159, $P5004
    repr_defined $I5001, fb_tmp_159
    unless $I5001 goto if772_else1751 
    set $S5001, _lex_param_1
    set $P5005, fb_tmp_159[$S5001]
    set $P5007, $P5005
    goto if772_end1752
  if772_else1751:
    null $P5006
    set $P5007, $P5006
  if772_end1752:
    unless_null $P5007, vivi_7731753
    nqp_get_sc_object $P5008, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5007, $P5008
  vivi_7731753:
    set $P101, $P5007
    set $S5002, $P101
    iseq $I5002, $S5002, "s?"
    .return ($I5002) 
.end
.HLL "nqp"
.namespace []
.sub "parse" :subid("cuid_178_1383914954.64741") :anon :lex :outer("cuid_290_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1803
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5015 = 'cuid_293_1383914954.64741' 
    capture_lex $P5015 
    .const 'Sub' $P5015 = 'cuid_294_1383914954.64741' 
    capture_lex $P5015 
    .const 'Sub' $P5015 = 'cuid_296_1383914954.64741' 
    capture_lex $P5015 
    .lex "$i", $P101 
    .lex "$arg-count", $P102 
    .lex "$result", $P103 
    .lex "&get-value", $P104 
    .lex "&slurp-rest", $P105 
    .lex "self", _lex_param_0 
    .lex "@args", _lex_param_1 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P102, $P5002
    nqp_get_sc_object $P5003, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P103, $P5003
    .const 'Sub' $P5004 = 'cuid_293_1383914954.64741' 
    capture_lex $P5004
    set $P104, $P5004
    .const 'Sub' $P5005 = 'cuid_294_1383914954.64741' 
    capture_lex $P5005
    set $P105, $P5005
    root_new $P106, ['parrot';'Continuation']
    set_label $P106, lexotic_1767
    .lex "RETURN", $P106
    box $P5006, 0
    set $P101, $P5006
    set $N5001, _lex_param_1
    box $P5007, $N5001
    set $P102, $P5007
.annotate 'line', 1807
    nqp_get_sc_object $P5008, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 170
    $P5009 = $P5008."new"()
    set $P103, $P5009
.annotate 'line', 1808
    $P103."init"()
  while780_test1769:
    set $N5002, $P101
    set $N5003, $P102
    islt $I5001, $N5002, $N5003
    box $P5013, $I5001
    set $P5012, $P5013
    unless $I5001 goto while780_done1773 
  while780_redo1771:
    .const 'Sub' $P5010 = 'cuid_296_1383914954.64741' 
    capture_lex $P5010
    $P5011 = $P5010()
    set $P5012, $P5011
    goto while780_test1769 
  while780_done1773:
    $P5014 = "RETURN"($P103)
    goto lexotic_1768
  lexotic_1767:
    .get_results ($P5014)
  lexotic_1768:
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "get-value" :subid("cuid_293_1383914954.64741") :anon :lex :outer("cuid_178_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1811
    .param pmc _lex_param_0 
    .lex "$opt", _lex_param_0 
    .local pmc tmp_5 
    .local pmc fb_tmp_160 
    find_lex $P5001, "$i"
    set $N5001, $P5001
    find_lex $P5002, "$arg-count"
    set $N5003, $P5002
    set $N5004, 1
    sub $N5002, $N5003, $N5004
    iseq $I5001, $N5001, $N5002
    unless $I5001 goto if774_else1754 
.annotate 'line', 1812
    set $S5003, _lex_param_0
    concat $S5002, "Option ", $S5003
    concat $S5001, $S5002, " needs a value"
    box $P5003, $S5001
    die $P5003
    set $P5010, $P5003
    goto if774_end1755
  if774_else1754:
.annotate 'line', 1814
    find_lex $P5004, "$i"
    set tmp_5, $P5004
    set $N5006, tmp_5
    set $N5007, 1
    add $N5005, $N5006, $N5007
    box $P5005, $N5005
    store_lex "$i", $P5005
    find_lex $P5004, "@args"
    set fb_tmp_160, $P5004
    repr_defined $I5002, fb_tmp_160
    unless $I5002 goto if775_else1756 
    find_lex $P5006, "$i"
    set $I5003, $P5006
    set $P5005, fb_tmp_160[$I5003]
    set $P5008, $P5005
    goto if775_end1757
  if775_else1756:
    null $P5007
    set $P5008, $P5007
  if775_end1757:
    unless_null $P5008, vivi_7761758
    nqp_get_sc_object $P5009, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5008, $P5009
  vivi_7761758:
    set $P5010, $P5008
  if774_end1755:
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "slurp-rest" :subid("cuid_294_1383914954.64741") :anon :lex :outer("cuid_178_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1822
    .local pmc tmp_6 
    .local pmc fb_tmp_161 
    .local pmc tmp_7 
    find_lex $P5001, "$i"
    set tmp_6, $P5001
    set $N5002, tmp_6
    set $N5003, 1
    add $N5001, $N5002, $N5003
    box $P5002, $N5001
    store_lex "$i", $P5002
  while777_test1759:
    find_lex $P5001, "$i"
    set $N5001, $P5001
    find_lex $P5002, "$arg-count"
    set $N5002, $P5002
    islt $I5001, $N5001, $N5002
    box $P5011, $I5001
    set $P5010, $P5011
    unless $I5001 goto while777_done1763 
  while777_redo1761:
.annotate 'line', 1824
.annotate 'line', 1825
    find_lex $P5003, "$result"
    find_lex $P5004, "@args"
    set fb_tmp_161, $P5004
    repr_defined $I5002, fb_tmp_161
    unless $I5002 goto if778_else1764 
    find_lex $P5006, "$i"
    set $I5003, $P5006
    set $P5005, fb_tmp_161[$I5003]
    set $P5008, $P5005
    goto if778_end1765
  if778_else1764:
    null $P5007
    set $P5008, $P5007
  if778_end1765:
    unless_null $P5008, vivi_7791766
    nqp_get_sc_object $P5009, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5008, $P5009
  vivi_7791766:
    $P5003."add-argument"($P5008)
    find_lex $P5010, "$i"
    set tmp_7, $P5010
    set $N5004, tmp_7
    set $N5005, 1
    add $N5003, $N5004, $N5005
    box $P5011, $N5003
    store_lex "$i", $P5011
    set $P5010, tmp_7
    goto while777_test1759 
  while777_done1763:
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_296_1383914954.64741") :anon :lex :outer("cuid_178_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1830
    .const 'Sub' $P5033 = 'cuid_295_1383914954.64741' 
    capture_lex $P5033 
    .const 'Sub' $P5033 = 'cuid_299_1383914954.64741' 
    capture_lex $P5033 
    .lex "$cur", $P101 
    .local pmc fb_tmp_162 
    .local pmc fb_tmp_169 
    .local pmc tmp_9 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P101, $P5001
    find_lex $P5002, "@args"
    set fb_tmp_162, $P5002
    repr_defined $I5001, fb_tmp_162
    unless $I5001 goto if781_else1774 
    find_lex $P5004, "$i"
    set $I5002, $P5004
    set $P5003, fb_tmp_162[$I5002]
    set $P5006, $P5003
    goto if781_end1775
  if781_else1774:
    null $P5005
    set $P5006, $P5005
  if781_end1775:
    unless_null $P5006, vivi_7821776
    nqp_get_sc_object $P5007, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5006, $P5007
  vivi_7821776:
    set $P101, $P5006
.annotate 'line', 1832
    find_lex $P5009, "self"
    nqp_decontainerize $P5008, $P5009
    $P5010 = $P5008."is-option"($P101)
    unless $P5010 goto if783_else1777 
    set $S5002, $P101
    substr $S5001, $S5002, 0, 2
    iseq $I5003, $S5001, "--"
    unless $I5003 goto if784_else1779 
    .const 'Sub' $P5011 = 'cuid_295_1383914954.64741' 
    capture_lex $P5011
    $P5012 = $P5011()
    set $P5015, $P5012
    goto if784_end1780
  if784_else1779:
    .const 'Sub' $P5013 = 'cuid_299_1383914954.64741' 
    capture_lex $P5013
    $P5014 = $P5013()
    set $P5015, $P5014
  if784_end1780:
    goto if783_end1778
  if783_else1777:
    find_lex $P5017, "self"
    nqp_decontainerize $P5016, $P5017
    nqp_get_sc_object $P5018, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 176
    repr_get_attr_obj $P5019, $P5016, $P5018, "%!stopper", 2
    set fb_tmp_169, $P5019
    repr_defined $I5004, fb_tmp_169
    unless $I5004 goto if815_else1837 
    set $S5003, $P101
    set $P5020, fb_tmp_169[$S5003]
    set $P5022, $P5020
    goto if815_end1838
  if815_else1837:
    null $P5021
    set $P5022, $P5021
  if815_end1838:
    unless_null $P5022, vivi_8161839
    nqp_get_sc_object $P5023, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5022, $P5023
  vivi_8161839:
    unless $P5022 goto if814_else1835 
.annotate 'line', 1891
.annotate 'line', 1892
    $P5024 = "&slurp-rest"()
    set $P5032, $P5024
    goto if814_end1836
  if814_else1835:
.annotate 'line', 1893
.annotate 'line', 1894
    find_lex $P5025, "$result"
    $P5025."add-argument"($P101)
    find_lex $P5027, "self"
    nqp_decontainerize $P5026, $P5027
    nqp_get_sc_object $P5028, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 176
    repr_get_attr_obj $P5029, $P5026, $P5028, "$!stop-after-first-arg", 3
    set $P5031, $P5029
    unless $P5029 goto if817_end1841 
.annotate 'line', 1895
    $P5030 = "&slurp-rest"()
    set $P5031, $P5030
  if817_end1841:
    set $P5032, $P5031
  if814_end1836:
  if783_end1778:
    find_lex $P5033, "$i"
    set tmp_9, $P5033
    set $N5002, tmp_9
    set $N5003, 1
    add $N5001, $N5002, $N5003
    box $P5034, $N5001
    store_lex "$i", $P5034
    .return (tmp_9) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_295_1383914954.64741") :anon :lex :outer("cuid_296_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1833
    .lex "$opt", $P101 
    .lex "$idx", $P102 
    .lex "$value", $P103 
    .lex "$has-value", $P104 
    .local pmc fb_tmp_163 
    .local pmc fb_tmp_164 
    .local pmc fb_tmp_165 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P102, $P5002
    nqp_get_sc_object $P5003, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P103, $P5003
    nqp_get_sc_object $P5004, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P104, $P5004
    find_lex $P5005, "@args"
    set fb_tmp_163, $P5005
    repr_defined $I5001, fb_tmp_163
    unless $I5001 goto if785_else1781 
    find_lex $P5007, "$i"
    set $I5002, $P5007
    set $P5006, fb_tmp_163[$I5002]
    set $P5009, $P5006
    goto if785_end1782
  if785_else1781:
    null $P5008
    set $P5009, $P5008
  if785_end1782:
    unless_null $P5009, vivi_7861783
    nqp_get_sc_object $P5010, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5009, $P5010
  vivi_7861783:
    set $S5002, $P5009
    substr $S5001, $S5002, 2
    box $P5011, $S5001
    set $P101, $P5011
    set $S5003, $P101
    index $I5003, $S5003, "=", 0
    box $P5012, $I5003
    set $P102, $P5012
    box $P5013, 1
    set $P103, $P5013
    box $P5014, 0
    set $P104, $P5014
    set $N5001, $P102
    set $N5002, 0
    isge $I5004, $N5001, $N5002
    unless $I5004 goto if787_else1784 
.annotate 'line', 1840
    set $S5005, $P101
    set $N5004, $P102
    set $N5005, 1
    add $N5003, $N5004, $N5005
    set $I5005, $N5003
    substr $S5004, $S5005, $I5005
    box $P5015, $S5004
    set $P103, $P5015
    set $S5007, $P101
    set $I5006, $P102
    substr $S5006, $S5007, 0, $I5006
    box $P5016, $S5006
    set $P101, $P5016
    box $P5017, 1
    set $P104, $P5017
    goto if787_end1785
  if787_else1784:
.annotate 'line', 1844
    find_lex $P5019, "self"
    nqp_decontainerize $P5018, $P5019
    $P5020 = $P5018."optional-value"($P101)
    set $P5023, $P5020
    unless $P5020 goto if788_end1787 
    box $P5021, ""
    set $P103, $P5021
    box $P5022, 1
    set $P104, $P5022
    set $P5023, $P104
  if788_end1787:
  if787_end1785:
    find_lex $P5025, "self"
    nqp_decontainerize $P5024, $P5025
    nqp_get_sc_object $P5026, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 176
    repr_get_attr_obj $P5027, $P5024, $P5026, "%!options", 1
    set $S5008, $P101
    exists $I5007, $P5027[$S5008]
    if $I5007 goto unless789_end1789 
    set $S5010, $P101
    concat $S5009, "Illegal option --", $S5010
    box $P5028, $S5009
    die $P5028
  unless789_end1789:
.annotate 'line', 1849
    find_lex $P5030, "self"
    nqp_decontainerize $P5029, $P5030
    $P5031 = $P5029."wants-value"($P101)
    isfalse $I5008, $P5031
    box $P5033, $I5008
    set $P5032, $P5033
    unless $I5008 goto if791_end1793 
    set $P5032, $P104
  if791_end1793:
    unless $P5032 goto if790_end1791 
    set $S5013, $P101
    concat $S5012, "Option --", $S5013
    concat $S5011, $S5012, " does not allow a value"
    box $P5034, $S5011
    die $P5034
  if790_end1791:
    isfalse $I5009, $P104
    box $P5039, $I5009
    set $P5038, $P5039
    unless $I5009 goto if793_end1797 
.annotate 'line', 1850
    find_lex $P5036, "self"
    nqp_decontainerize $P5035, $P5036
    $P5037 = $P5035."wants-value"($P101)
    set $P5038, $P5037
  if793_end1797:
    unless $P5038 goto if792_end1795 
.annotate 'line', 1851
    set $S5015, $P101
    concat $S5014, "--", $S5015
    $P5040 = "&get-value"($S5014)
    set $P103, $P5040
  if792_end1795:
.annotate 'line', 1853
    find_lex $P5041, "$result"
    $P5041."add-option"($P101, $P103)
    find_lex $P5043, "self"
    nqp_decontainerize $P5042, $P5043
    nqp_get_sc_object $P5044, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 176
    repr_get_attr_obj $P5045, $P5042, $P5044, "%!stopper", 2
    set fb_tmp_164, $P5045
    repr_defined $I5010, fb_tmp_164
    unless $I5010 goto if795_else1800 
    set $S5017, $P101
    concat $S5016, "--", $S5017
    set $P5046, fb_tmp_164[$S5016]
    set $P5048, $P5046
    goto if795_end1801
  if795_else1800:
    null $P5047
    set $P5048, $P5047
  if795_end1801:
    unless_null $P5048, vivi_7961802
    nqp_get_sc_object $P5049, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5048, $P5049
  vivi_7961802:
    set $P5059, $P5048
    unless $P5048 goto if794_end1799 
    find_lex $P5051, "$?PACKAGE"
    get_who $P5050, $P5051
    set fb_tmp_165, $P5050
    repr_defined $I5011, fb_tmp_165
    unless $I5011 goto if797_else1803 
    set $P5052, fb_tmp_165["slurp-rest"]
    set $P5054, $P5052
    goto if797_end1804
  if797_else1803:
    null $P5053
    set $P5054, $P5053
  if797_end1804:
    unless_null $P5054, vivi_7991806
    nqp_get_sc_object $P5057, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 0
    get_who $P5056, $P5057
    set $P5055, $P5056["slurp-rest"]
    unless_null $P5055, vivi_7981805
    nqp_get_sc_object $P5058, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5055, $P5058
  vivi_7981805:
    set $P5054, $P5055
  vivi_7991806:
    set $P5059, $P5054
  if794_end1799:
    .return ($P5059) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_299_1383914954.64741") :anon :lex :outer("cuid_296_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1855
    .const 'Sub' $P5036 = 'cuid_298_1383914954.64741' 
    capture_lex $P5036 
    .lex "$opt", $P101 
    .lex "$len", $P102 
    .local pmc fb_tmp_166 
    .local pmc fb_tmp_167 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P102, $P5002
    find_lex $P5003, "$cur"
    set $S5002, $P5003
    substr $S5001, $S5002, 1
    box $P5004, $S5001
    set $P101, $P5004
    set $S5003, $P101
    length $I5001, $S5003
    box $P5005, $I5001
    set $P102, $P5005
    set $N5001, $P102
    set $N5002, 1
    iseq $I5002, $N5001, $N5002
    unless $I5002 goto if800_else1807 
.annotate 'line', 1858
    find_lex $P5007, "self"
    nqp_decontainerize $P5006, $P5007
    nqp_get_sc_object $P5008, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 176
    repr_get_attr_obj $P5009, $P5006, $P5008, "%!options", 1
    set fb_tmp_166, $P5009
    repr_defined $I5003, fb_tmp_166
    unless $I5003 goto if802_else1811 
    set $S5004, $P101
    set $P5010, fb_tmp_166[$S5004]
    set $P5012, $P5010
    goto if802_end1812
  if802_else1811:
    null $P5011
    set $P5012, $P5011
  if802_end1812:
    unless_null $P5012, vivi_8031813
    nqp_get_sc_object $P5013, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5012, $P5013
  vivi_8031813:
    if $P5012 goto unless801_end1810 
    set $S5006, $P101
    concat $S5005, "No such option -", $S5006
    box $P5014, $S5005
    die $P5014
  unless801_end1810:
.annotate 'line', 1861
    find_lex $P5016, "self"
    nqp_decontainerize $P5015, $P5016
    $P5017 = $P5015."wants-value"($P101)
    unless $P5017 goto if804_else1814 
.annotate 'line', 1862
    find_lex $P5018, "$result"
.annotate 'line', 1863
    set $S5008, $P101
    concat $S5007, "-", $S5008
    $P5019 = "&get-value"($S5007)
    $P5020 = $P5018."add-option"($P101, $P5019)
    goto if804_end1815
  if804_else1814:
.annotate 'line', 1864
.annotate 'line', 1865
    find_lex $P5021, "$result"
    $P5022 = $P5021."add-option"($P101, 1)
  if804_end1815:
    find_lex $P5024, "self"
    nqp_decontainerize $P5023, $P5024
    nqp_get_sc_object $P5025, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 176
    repr_get_attr_obj $P5026, $P5023, $P5025, "%!stopper", 2
    set fb_tmp_167, $P5026
    repr_defined $I5004, fb_tmp_167
    unless $I5004 goto if806_else1818 
    set $S5010, $P101
    concat $S5009, "-", $S5010
    set $P5027, fb_tmp_167[$S5009]
    set $P5029, $P5027
    goto if806_end1819
  if806_else1818:
    null $P5028
    set $P5029, $P5028
  if806_end1819:
    unless_null $P5029, vivi_8071820
    nqp_get_sc_object $P5030, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5029, $P5030
  vivi_8071820:
    set $P5032, $P5029
    unless $P5029 goto if805_end1817 
.annotate 'line', 1867
    $P5031 = "&slurp-rest"()
    set $P5032, $P5031
  if805_end1817:
    set $P5035, $P5032
    goto if800_end1808
  if800_else1807:
    .const 'Sub' $P5033 = 'cuid_298_1383914954.64741' 
    capture_lex $P5033
    $P5034 = $P5033()
    set $P5035, $P5034
  if800_end1808:
    .return ($P5035) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_298_1383914954.64741") :anon :lex :outer("cuid_299_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1868
    .const 'Sub' $P5009 = 'cuid_297_1383914954.64741' 
    capture_lex $P5009 
    .lex "$i", $P101 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P101, $P5001
    box $P5002, 0
    set $P101, $P5002
    new $P5007, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5007, while808_handlers1824
    push_eh $P5007
  while808_test1821:
    set $N5001, $P101
    find_lex $P5003, "$len"
    set $N5002, $P5003
    islt $I5001, $N5001, $N5002
    box $P5008, $I5001
    set $P5006, $P5008
    unless $I5001 goto while808_done1825 
  while808_redo1823:
    .const 'Sub' $P5004 = 'cuid_297_1383914954.64741' 
    capture_lex $P5004
    $P5005 = $P5004()
    set $P5006, $P5005
    goto while808_test1821 
  while808_handlers1824:
    .get_results ($P5007)
    pop_upto_eh $P5007
    getattribute $P5007, $P5007, 'type'
    eq $P5007, .CONTROL_LOOP_NEXT, while808_test1821
    eq $P5007, .CONTROL_LOOP_REDO, while808_redo1823
  while808_done1825:
    pop_eh 
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_297_1383914954.64741") :anon :lex :outer("cuid_298_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1870
    .lex "$o", $P101 
    .local pmc fb_tmp_168 
    .local pmc tmp_8 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P101, $P5001
    find_lex $P5002, "$opt"
    set $S5002, $P5002
    find_lex $P5003, "$i"
    set $I5001, $P5003
    substr $S5001, $S5002, $I5001, 1
    box $P5004, $S5001
    set $P101, $P5004
    find_lex $P5006, "self"
    nqp_decontainerize $P5005, $P5006
    nqp_get_sc_object $P5007, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 176
    repr_get_attr_obj $P5008, $P5005, $P5007, "%!options", 1
    set fb_tmp_168, $P5008
    repr_defined $I5002, fb_tmp_168
    unless $I5002 goto if810_else1828 
    set $S5003, $P101
    set $P5009, fb_tmp_168[$S5003]
    set $P5011, $P5009
    goto if810_end1829
  if810_else1828:
    null $P5010
    set $P5011, $P5010
  if810_end1829:
    unless_null $P5011, vivi_8111830
    nqp_get_sc_object $P5012, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5011, $P5012
  vivi_8111830:
    unless $P5011 goto if809_else1826 
.annotate 'line', 1872
.annotate 'line', 1873
    find_lex $P5014, "self"
    nqp_decontainerize $P5013, $P5014
    $P5015 = $P5013."wants-value"($P101)
    unless $P5015 goto if812_else1831 
    find_lex $P5016, "$i"
    set $N5002, $P5016
    set $N5003, 1
    add $N5001, $N5002, $N5003
    find_lex $P5017, "$len"
    set $N5004, $P5017
    iseq $I5003, $N5001, $N5004
    unless $I5003 goto if813_end1834 
.annotate 'line', 1874
    set $S5008, $P101
    concat $S5007, "Option '", $S5008
    concat $S5006, $S5007, "' in grouped options '-"
    find_lex $P5018, "$opt"
    set $S5009, $P5018
    concat $S5005, $S5006, $S5009
    concat $S5004, $S5005, "' needs a value, but does not have one"
    box $P5019, $S5004
    die $P5019
  if813_end1834:
.annotate 'line', 1877
    find_lex $P5020, "$result"
    find_lex $P5021, "$opt"
    set $S5011, $P5021
    find_lex $P5022, "$i"
    set $N5006, $P5022
    set $N5007, 1
    add $N5005, $N5006, $N5007
    set $I5004, $N5005
    substr $S5010, $S5011, $I5004
    $P5020."add-option"($P101, $S5010)
    die 0, .CONTROL_LOOP_LAST
    box $P5026, 0
    set $P5025, $P5026
    goto if812_end1832
  if812_else1831:
.annotate 'line', 1880
.annotate 'line', 1881
    find_lex $P5023, "$result"
    $P5024 = $P5023."add-option"($P101, 1)
    set $P5025, $P5024
  if812_end1832:
    goto if809_end1827
  if809_else1826:
.annotate 'line', 1884
    find_lex $P5027, "$opt"
    set $S5016, $P5027
    concat $S5015, "Grouped options '-", $S5016
    concat $S5014, $S5015, "' contain '"
    set $S5017, $P101
    concat $S5013, $S5014, $S5017
    concat $S5012, $S5013, "', which is not a valid option"
    box $P5028, $S5012
    die $P5028
  if809_end1827:
    find_lex $P5029, "$i"
    set tmp_8, $P5029
    set $N5009, tmp_8
    set $N5010, 1
    add $N5008, $N5009, $N5010
    box $P5030, $N5008
    store_lex "$i", $P5030
    .return (tmp_8) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_300_1383914954.64741") :anon :lex :outer("cuid_230_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1925
    .const 'Sub' $P5013 = 'cuid_179_1383914954.64741' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_180_1383914954.64741' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_181_1383914954.64741' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_182_1383914954.64741' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_183_1383914954.64741' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_184_1383914954.64741' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_185_1383914954.64741' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_186_1383914954.64741' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_187_1383914954.64741' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_188_1383914954.64741' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_189_1383914954.64741' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_190_1383914954.64741' 
    capture_lex $P5013 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_179_1383914954.64741' 
    capture_lex $P5001
    .const 'Sub' $P5002 = 'cuid_180_1383914954.64741' 
    capture_lex $P5002
    .const 'Sub' $P5003 = 'cuid_181_1383914954.64741' 
    capture_lex $P5003
    .const 'Sub' $P5004 = 'cuid_182_1383914954.64741' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_183_1383914954.64741' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_184_1383914954.64741' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_185_1383914954.64741' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_186_1383914954.64741' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_187_1383914954.64741' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_188_1383914954.64741' 
    capture_lex $P5010
    .const 'Sub' $P5011 = 'cuid_189_1383914954.64741' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_190_1383914954.64741' 
    capture_lex $P5012
    .return ($P5012) 
.end
.HLL "nqp"
.namespace []
.sub "BUILD" :subid("cuid_179_1383914954.64741") :anon :lex :outer("cuid_300_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1951
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("handle") 
    .param pmc _lex_param_2 :named("description") :optional 
    .param int haz_param_16 :opt_flag 
    .lex "self", _lex_param_0 
    .lex "$handle", _lex_param_1 
    .lex "$description", _lex_param_2 
    .local pmc fb_tmp_170 
    .local pmc fb_tmp_171 
    .local pmc fb_tmp_172 
    .local pmc pkg_viv_tmp_16 
    if haz_param_16, default1853
    box $P5043, "<unknown>"
    set _lex_param_2, $P5043
  default1853:
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 187
    set $S5001, _lex_param_1
    nqp_create_sc $P5003, $S5001
    repr_bind_attr_obj $P5001, $P5002, "$!sc", 0, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 187
    repr_bind_attr_obj $P5004, $P5005, "$!handle", 1, _lex_param_1
    nqp_decontainerize $P5006, _lex_param_0
    nqp_get_sc_object $P5007, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 187
    new $P5008, 'ResizablePMCArray'
    repr_bind_attr_obj $P5006, $P5007, "@!fixup_tasks", 6, $P5008
    nqp_decontainerize $P5009, _lex_param_0
    nqp_get_sc_object $P5010, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 187
    new $P5011, 'ResizablePMCArray'
    repr_bind_attr_obj $P5009, $P5010, "@!load_dependency_tasks", 5, $P5011
    nqp_decontainerize $P5012, _lex_param_0
    nqp_get_sc_object $P5013, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 187
    find_dynamic_lex $P5014, "%*COMPILING"
    unless_null $P5014, fallback1846
    nqp_get_sc_object $P5016, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 0
    get_who $P5015, $P5016
    set pkg_viv_tmp_16, $P5015
    set fb_tmp_172, pkg_viv_tmp_16
    repr_defined $I5003, fb_tmp_172
    unless $I5003 goto if820_else1847 
    set $P5017, fb_tmp_172["%COMPILING"]
    set $P5019, $P5017
    goto if820_end1848
  if820_else1847:
    null $P5018
    set $P5019, $P5018
  if820_end1848:
    unless_null $P5019, vivi_8211849
    new $P5020, 'Hash'
    set pkg_viv_tmp_16["%COMPILING"], $P5020
    set $P5019, $P5020
  vivi_8211849:
    unless_null $P5019, vivi_8221850
    die "Contextual %*COMPILING not found"
    box $P5021, "Contextual %*COMPILING not found"
    set $P5019, $P5021
  vivi_8221850:
    set $P5014, $P5019
  fallback1846:
    set fb_tmp_171, $P5014
    repr_defined $I5002, fb_tmp_171
    unless $I5002 goto if819_else1844 
    set $P5022, fb_tmp_171["%?OPTIONS"]
    set $P5024, $P5022
    goto if819_end1845
  if819_else1844:
    null $P5023
    set $P5024, $P5023
  if819_end1845:
    unless_null $P5024, vivi_8231851
    nqp_get_sc_object $P5025, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5024, $P5025
  vivi_8231851:
    set fb_tmp_170, $P5024
    repr_defined $I5001, fb_tmp_170
    unless $I5001 goto if818_else1842 
    set $P5026, fb_tmp_170["precomp"]
    set $P5028, $P5026
    goto if818_end1843
  if818_else1842:
    null $P5027
    set $P5028, $P5027
  if818_end1843:
    unless_null $P5028, vivi_8241852
    nqp_get_sc_object $P5029, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5028, $P5029
  vivi_8241852:
    repr_bind_attr_obj $P5012, $P5013, "$!precomp_mode", 2, $P5028
    nqp_decontainerize $P5030, _lex_param_0
    nqp_get_sc_object $P5031, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 187
    box $P5032, 0
    repr_bind_attr_obj $P5030, $P5031, "$!num_code_refs", 3, $P5032
    nqp_decontainerize $P5033, _lex_param_0
    nqp_get_sc_object $P5034, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 187
    new $P5035, 'ResizablePMCArray'
    repr_bind_attr_obj $P5033, $P5034, "$!code_ref_blocks", 4, $P5035
    nqp_decontainerize $P5036, _lex_param_0
    nqp_get_sc_object $P5037, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 187
    repr_get_attr_obj $P5038, $P5036, $P5037, "$!sc", 0
    $P5039 = $P5038."set_description"(_lex_param_2)
    nqp_decontainerize $P5040, _lex_param_0
    nqp_get_sc_object $P5041, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 187
    repr_get_attr_obj $P5042, $P5040, $P5041, "$!sc", 0
    nqp_push_compiling_sc $P5042
    .return ($P5042) 
.end
.HLL "nqp"
.namespace []
.sub "add_object" :subid("cuid_180_1383914954.64741") :anon :lex :outer("cuid_300_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1967
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$idx", $P101 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P101, $P5001
    nqp_decontainerize $P5002, _lex_param_0
    nqp_get_sc_object $P5003, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 187
    repr_get_attr_obj $P5004, $P5002, $P5003, "$!sc", 0
    nqp_set_sc_for_object _lex_param_1, $P5004
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 187
    repr_get_attr_obj $P5007, $P5005, $P5006, "$!sc", 0
    $P5008 = $P5007."elems"()
    set $P101, $P5008
    nqp_decontainerize $P5009, _lex_param_0
    nqp_get_sc_object $P5010, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 187
    repr_get_attr_obj $P5011, $P5009, $P5010, "$!sc", 0
    set $I5001, $P101
    set $P5011[$I5001], _lex_param_1
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "add_root_code_ref" :subid("cuid_181_1383914954.64741") :anon :lex :outer("cuid_300_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1975
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "$code_ref_idx", $P101 
    .lex "self", _lex_param_0 
    .lex "$code_ref", _lex_param_1 
    .lex "$past_block", _lex_param_2 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P101, $P5001
    nqp_decontainerize $P5002, _lex_param_0
    nqp_get_sc_object $P5003, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 187
    repr_get_attr_obj $P5004, $P5002, $P5003, "$!num_code_refs", 3
    set $P101, $P5004
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 187
    nqp_decontainerize $P5007, _lex_param_0
    nqp_get_sc_object $P5008, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 187
    repr_get_attr_obj $P5009, $P5007, $P5008, "$!num_code_refs", 3
    set $N5002, $P5009
    set $N5003, 1
    add $N5001, $N5002, $N5003
    box $P5010, $N5001
    repr_bind_attr_obj $P5005, $P5006, "$!num_code_refs", 3, $P5010
.annotate 'line', 1978
    nqp_decontainerize $P5011, _lex_param_0
    nqp_get_sc_object $P5012, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 187
    repr_get_attr_obj $P5013, $P5011, $P5012, "$!code_ref_blocks", 4
    $P5013."push"(_lex_param_2)
    nqp_decontainerize $P5014, _lex_param_0
    nqp_get_sc_object $P5015, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 187
    repr_get_attr_obj $P5016, $P5014, $P5015, "$!sc", 0
    set $I5001, $P101
    nqp_add_code_ref_to_sc $P5016, $I5001, _lex_param_1
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "update_root_code_ref" :subid("cuid_182_1383914954.64741") :anon :lex :outer("cuid_300_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1984
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "self", _lex_param_0 
    .lex "$idx", _lex_param_1 
    .lex "$new_code_ref", _lex_param_2 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 187
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!sc", 0
    set $I5001, _lex_param_1
    nqp_add_code_ref_to_sc $P5003, $I5001, _lex_param_2
    .return (_lex_param_2) 
.end
.HLL "nqp"
.namespace []
.sub "is_precompilation_mode" :subid("cuid_183_1383914954.64741") :anon :lex :outer("cuid_300_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1989
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 187
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!precomp_mode", 2
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "add_load_dependency_task" :subid("cuid_184_1383914954.64741") :anon :lex :outer("cuid_300_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 1995
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("deserialize_past") :optional 
    .param int haz_param_17 :opt_flag 
    .param pmc _lex_param_2 :named("fixup_past") :optional 
    .param int haz_param_18 :opt_flag 
    .lex "self", _lex_param_0 
    .lex "$deserialize_past", _lex_param_1 
    .lex "$fixup_past", _lex_param_2 
    if haz_param_17, default1860
    nqp_get_sc_object $P5015, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set _lex_param_1, $P5015
  default1860:
    if haz_param_18, default1861
    nqp_get_sc_object $P5016, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set _lex_param_2, $P5016
  default1861:
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 187
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!precomp_mode", 2
    unless $P5003 goto if825_else1854 
.annotate 'line', 1996
    set $P5008, _lex_param_1
    unless _lex_param_1 goto if826_end1857 
.annotate 'line', 1997
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 187
    repr_get_attr_obj $P5006, $P5004, $P5005, "@!load_dependency_tasks", 5
    $P5007 = $P5006."push"(_lex_param_1)
    set $P5008, $P5007
  if826_end1857:
    set $P5014, $P5008
    goto if825_end1855
  if825_else1854:
.annotate 'line', 1999
    set $P5013, _lex_param_2
    unless _lex_param_2 goto if827_end1859 
.annotate 'line', 2000
    nqp_decontainerize $P5009, _lex_param_0
    nqp_get_sc_object $P5010, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 187
    repr_get_attr_obj $P5011, $P5009, $P5010, "@!load_dependency_tasks", 5
    $P5012 = $P5011."push"(_lex_param_2)
    set $P5013, $P5012
  if827_end1859:
    set $P5014, $P5013
  if825_end1855:
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "add_fixup_task" :subid("cuid_185_1383914954.64741") :anon :lex :outer("cuid_300_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2006
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("deserialize_past") :optional 
    .param int haz_param_19 :opt_flag 
    .param pmc _lex_param_2 :named("fixup_past") :optional 
    .param int haz_param_20 :opt_flag 
    .lex "self", _lex_param_0 
    .lex "$deserialize_past", _lex_param_1 
    .lex "$fixup_past", _lex_param_2 
    if haz_param_19, default1868
    nqp_get_sc_object $P5015, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set _lex_param_1, $P5015
  default1868:
    if haz_param_20, default1869
    nqp_get_sc_object $P5016, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set _lex_param_2, $P5016
  default1869:
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 187
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!precomp_mode", 2
    unless $P5003 goto if828_else1862 
.annotate 'line', 2007
    set $P5008, _lex_param_1
    unless _lex_param_1 goto if829_end1865 
.annotate 'line', 2008
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 187
    repr_get_attr_obj $P5006, $P5004, $P5005, "@!fixup_tasks", 6
    $P5007 = $P5006."push"(_lex_param_1)
    set $P5008, $P5007
  if829_end1865:
    set $P5014, $P5008
    goto if828_end1863
  if828_else1862:
.annotate 'line', 2010
    set $P5013, _lex_param_2
    unless _lex_param_2 goto if830_end1867 
.annotate 'line', 2011
    nqp_decontainerize $P5009, _lex_param_0
    nqp_get_sc_object $P5010, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 187
    repr_get_attr_obj $P5011, $P5009, $P5010, "@!fixup_tasks", 6
    $P5012 = $P5011."push"(_lex_param_2)
    set $P5013, $P5012
  if830_end1867:
    set $P5014, $P5013
  if828_end1863:
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "sc" :subid("cuid_186_1383914954.64741") :anon :lex :outer("cuid_300_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2016
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 187
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!sc", 0
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "handle" :subid("cuid_187_1383914954.64741") :anon :lex :outer("cuid_300_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2021
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 187
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!handle", 1
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "code_ref_blocks" :subid("cuid_188_1383914954.64741") :anon :lex :outer("cuid_300_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2025
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 187
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!code_ref_blocks", 4
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "load_dependency_tasks" :subid("cuid_189_1383914954.64741") :anon :lex :outer("cuid_300_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2030
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 187
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!load_dependency_tasks", 5
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "fixup_tasks" :subid("cuid_190_1383914954.64741") :anon :lex :outer("cuid_300_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2035
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 187
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!fixup_tasks", 6
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_301_1383914954.64741") :anon :lex :outer("cuid_230_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2041
    .const 'Sub' $P5018 = 'cuid_302_1383914954.64741' 
    capture_lex $P5018 
    .const 'Sub' $P5018 = 'cuid_303_1383914954.64741' 
    capture_lex $P5018 
    .const 'Sub' $P5018 = 'cuid_304_1383914954.64741' 
    capture_lex $P5018 
    .const 'Sub' $P5018 = 'cuid_305_1383914954.64741' 
    capture_lex $P5018 
    .const 'Sub' $P5018 = 'cuid_306_1383914954.64741' 
    capture_lex $P5018 
    .const 'Sub' $P5018 = 'cuid_325_1383914954.64741' 
    capture_lex $P5018 
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
    new $P5001, 'ResizablePMCArray'
    set $P103, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P104, $P5002
    nqp_get_sc_object $P5003, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P107, $P5003
    .const 'Sub' $P5004 = 'cuid_302_1383914954.64741' 
    capture_lex $P5004
    set $P108, $P5004
    nqp_get_sc_object $P5005, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P110, $P5005
    .const 'Sub' $P5006 = 'cuid_303_1383914954.64741' 
    capture_lex $P5006
    set $P111, $P5006
    .const 'Sub' $P5007 = 'cuid_304_1383914954.64741' 
    capture_lex $P5007
    set $P112, $P5007
    .const 'Sub' $P5008 = 'cuid_305_1383914954.64741' 
    capture_lex $P5008
    $P5009 = $P5008()
    .const 'Sub' $P5010 = 'cuid_306_1383914954.64741' 
    capture_lex $P5010
    $P5011 = $P5010()
.annotate 'line', 2384
    nqp_get_sc_object $P5012, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 222
    $P5013 = $P5012."new"()
    set $P107, $P5013
    set_hll_global "sprintf", $P108
    .const 'Sub' $P5014 = 'cuid_325_1383914954.64741' 
    capture_lex $P5014
    $P5015 = $P5014()
.annotate 'line', 2406
    nqp_get_sc_object $P5016, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 240
    $P5017 = $P5016."new"()
    set $P110, $P5017
    set_hll_global "sprintfdirectives", $P111
    set_hll_global "sprintfaddargumenthandler", $P112
    .return ($P112) 
.end
.HLL "nqp"
.namespace []
.sub "sprintf" :subid("cuid_302_1383914954.64741") :anon :lex :outer("cuid_301_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2386
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "@*ARGS_HAVE", $P101 
    .lex "$format", _lex_param_0 
    .lex "@arguments", _lex_param_1 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    root_new $P102, ['parrot';'Continuation']
    set_label $P102, lexotic_1870
    .lex "RETURN", $P102
    set $P101, _lex_param_1
    box $P5002, 1
    store_lex "$assert_used_args", $P5002
.annotate 'line', 2389
    nqp_get_sc_object $P5003, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 201
    find_lex $P5004, "$actions"
    $P5005 = $P5003."parse"(_lex_param_0, $P5004 :named("actions"))
    $P5006 = $P5005."ast"()
    $P5007 = "RETURN"($P5006)
    goto lexotic_1871
  lexotic_1870:
    .get_results ($P5007)
  lexotic_1871:
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "sprintfdirectives" :subid("cuid_303_1383914954.64741") :anon :lex :outer("cuid_301_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2408
    .param pmc _lex_param_0 
    .lex "$format", _lex_param_0 
    root_new $P101, ['parrot';'Continuation']
    set_label $P101, lexotic_1872
    .lex "RETURN", $P101
.annotate 'line', 2409
    nqp_get_sc_object $P5001, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 201
    find_lex $P5002, "$directives"
    $P5003 = $P5001."parse"(_lex_param_0, $P5002 :named("actions"))
    $P5004 = $P5003."ast"()
    $P5005 = "RETURN"($P5004)
    goto lexotic_1873
  lexotic_1872:
    .get_results ($P5005)
  lexotic_1873:
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "sprintfaddargumenthandler" :subid("cuid_304_1383914954.64741") :anon :lex :outer("cuid_301_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2414
    .param pmc _lex_param_0 
    .lex "$interface", _lex_param_0 
.annotate 'line', 2415
    find_lex $P5001, "@handlers"
    $P5001."push"(_lex_param_0)
    .return ("Added!") 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_305_1383914954.64741") :anon :lex :outer("cuid_301_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2045
    .const 'Sub' $P5021 = 'cuid_191_1383914954.64741' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_192_1383914954.64741' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_193_1383914954.64741' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_194_1383914954.64741' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_195_1383914954.64741' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_196_1383914954.64741' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_197_1383914954.64741' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_198_1383914954.64741' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_199_1383914954.64741' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_200_1383914954.64741' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_201_1383914954.64741' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_202_1383914954.64741' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_203_1383914954.64741' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_204_1383914954.64741' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_205_1383914954.64741' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_206_1383914954.64741' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_207_1383914954.64741' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_208_1383914954.64741' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_209_1383914954.64741' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_210_1383914954.64741' 
    capture_lex $P5021 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_191_1383914954.64741' 
    capture_lex $P5001
    .const 'Sub' $P5002 = 'cuid_192_1383914954.64741' 
    capture_lex $P5002
    .const 'Sub' $P5003 = 'cuid_193_1383914954.64741' 
    capture_lex $P5003
    .const 'Sub' $P5004 = 'cuid_194_1383914954.64741' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_195_1383914954.64741' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_196_1383914954.64741' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_197_1383914954.64741' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_198_1383914954.64741' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_199_1383914954.64741' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_200_1383914954.64741' 
    capture_lex $P5010
    .const 'Sub' $P5011 = 'cuid_201_1383914954.64741' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_202_1383914954.64741' 
    capture_lex $P5012
    .const 'Sub' $P5013 = 'cuid_203_1383914954.64741' 
    capture_lex $P5013
    .const 'Sub' $P5014 = 'cuid_204_1383914954.64741' 
    capture_lex $P5014
    .const 'Sub' $P5015 = 'cuid_205_1383914954.64741' 
    capture_lex $P5015
    .const 'Sub' $P5016 = 'cuid_206_1383914954.64741' 
    capture_lex $P5016
    .const 'Sub' $P5017 = 'cuid_207_1383914954.64741' 
    capture_lex $P5017
    .const 'Sub' $P5018 = 'cuid_208_1383914954.64741' 
    capture_lex $P5018
    .const 'Sub' $P5019 = 'cuid_209_1383914954.64741' 
    capture_lex $P5019
    .const 'Sub' $P5020 = 'cuid_210_1383914954.64741' 
    capture_lex $P5020
    .return ($P5020) 
.end
.HLL "nqp"
.namespace []
.sub "TOP" :subid("cuid_191_1383914954.64741") :anon :lex :outer("cuid_305_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2046
    .param pmc _lex_param_0 
    .lex "$*ARGS_USED", $P101 
    .lex utf8:"$\x{a2}", $P102 
    .lex "$/", $P103 
    .lex "self", _lex_param_0 
    .local pmc self 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P101, $P5001
    set self, _lex_param_0
    .local pmc rx831_start
    .local string rx831_tgt
    .local int rx831_pos
    .local int rx831_off
    .local int rx831_eos
    .local int rx831_rep
    .local pmc rx831_cur
    .local pmc rx831_curclass
    .local pmc rx831_bstack
    .local pmc rx831_cstack
    rx831_start = self."!cursor_start_all"()
    set rx831_cur, rx831_start[0]
    set rx831_tgt, rx831_start[1]
    set rx831_pos, rx831_start[2]
    set rx831_curclass, rx831_start[3]
    set rx831_bstack, rx831_start[4]
    set $I19, rx831_start[5]
    store_lex unicode:"$\x{a2}", rx831_cur
    length rx831_eos, rx831_tgt
    eq $I19, 1, rx831_restart1876
    gt rx831_pos, rx831_eos, rx831_fail1877
    repr_get_attr_int $I11, self, rx831_curclass, "$!from"
    ne $I11, -1, rxscan832_done1883
    goto rxscan832_scan1882
  rxscan832_loop1881:
    inc rx831_pos
    gt rx831_pos, rx831_eos, rx831_fail1877
    repr_bind_attr_int rx831_cur, rx831_curclass, "$!from", rx831_pos
  rxscan832_scan1882:
    nqp_rxmark rx831_bstack, rxscan832_loop1881, rx831_pos, 0
  rxscan832_done1883:
    repr_bind_attr_int rx831_cur, rx831_curclass, "$!pos", rx831_pos
    store_lex unicode:"$\x{a2}", rx831_cur
    box $P5002, 0
    set $P101, $P5002
    ne rx831_pos, 0, rx831_fail1877
    nqp_rxmark rx831_bstack, rxquantr834_done1886, rx831_pos, 0
  rxquantr834_loop1885:
    repr_bind_attr_int rx831_cur, rx831_curclass, "$!pos", rx831_pos
    $P11 = rx831_cur."statement"()
    repr_get_attr_int $I11, $P11, rx831_curclass, "$!pos"
    lt $I11, 0, rx831_fail1877
    goto rxsubrule835_pass1887
  rxsubrule835_back1888:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx831_curclass, "$!pos"
    lt $I11, 0, rx831_fail1877
  rxsubrule835_pass1887:
    rx831_cstack = rx831_cur."!cursor_capture"($P11, "statement")
    set_addr $I11, rxsubrule835_back1888
    push rx831_bstack, $I11
    push rx831_bstack, 0
    push rx831_bstack, rx831_pos
    elements $I11, rx831_cstack
    push rx831_bstack, $I11
    repr_get_attr_int rx831_pos, $P11, rx831_curclass, "$!pos"
    nqp_rxpeek $I19, rx831_bstack, rxquantr834_done1886
    inc $I19
    inc $I19
    set rx831_rep, rx831_bstack[$I19]
    nqp_rxcommit rx831_bstack, rxquantr834_done1886
    inc rx831_rep
    nqp_rxmark rx831_bstack, rxquantr834_done1886, rx831_pos, rx831_rep
    goto rxquantr834_loop1885
  rxquantr834_done1886:
    lt rx831_pos, rx831_eos, rx831_fail1877
    rx831_cur."!cursor_pass"(rx831_pos, "TOP", 'backtrack'=>1)
    .return (rx831_cur)
  rx831_restart1876:
    repr_get_attr_obj rx831_cstack, rx831_cur, rx831_curclass, "$!cstack"
  rx831_fail1877:
    unless rx831_bstack, rx831_done1875
    pop $I19, rx831_bstack
    if_null rx831_cstack, rx831_cstack_done1880
    unless rx831_cstack, rx831_cstack_done1880
    dec $I19
    set $P11, rx831_cstack[$I19]
  rx831_cstack_done1880:
    pop rx831_rep, rx831_bstack
    pop rx831_pos, rx831_bstack
    pop $I19, rx831_bstack
    lt rx831_pos, -1, rx831_done1875
    lt rx831_pos, 0, rx831_fail1877
    eq $I19, 0, rx831_fail1877
    nqp_islist $I20, rx831_cstack
    unless $I20, rx831_jump1878
    elements $I18, rx831_bstack
    le $I18, 0, rx831_cut1879
    dec $I18
    set $I18, rx831_bstack[$I18]
  rx831_cut1879:
    assign rx831_cstack, $I18
  rx831_jump1878:
    jump $I19
  rx831_done1875:
    rx831_cur."!cursor_fail"()
    .return (rx831_cur) 
.end
.HLL "nqp"
.namespace []
.sub "panic" :subid("cuid_192_1383914954.64741") :anon :lex :outer("cuid_305_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2051
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$msg", _lex_param_1 
    die _lex_param_1
    .return (_lex_param_1) 
.end
.HLL "nqp"
.namespace []
.sub "statement" :subid("cuid_193_1383914954.64741") :anon :lex :outer("cuid_305_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2053
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx837_start
    .local string rx837_tgt
    .local int rx837_pos
    .local int rx837_off
    .local int rx837_eos
    .local int rx837_rep
    .local pmc rx837_cur
    .local pmc rx837_curclass
    .local pmc rx837_bstack
    .local pmc rx837_cstack
    rx837_start = self."!cursor_start_all"()
    set rx837_cur, rx837_start[0]
    set rx837_tgt, rx837_start[1]
    set rx837_pos, rx837_start[2]
    set rx837_curclass, rx837_start[3]
    set rx837_bstack, rx837_start[4]
    set $I19, rx837_start[5]
    store_lex unicode:"$\x{a2}", rx837_cur
    length rx837_eos, rx837_tgt
    eq $I19, 1, rx837_restart1892
    gt rx837_pos, rx837_eos, rx837_fail1893
    repr_get_attr_int $I11, self, rx837_curclass, "$!from"
    ne $I11, -1, rxscan838_done1899
    goto rxscan838_scan1898
  rxscan838_loop1897:
    inc rx837_pos
    gt rx837_pos, rx837_eos, rx837_fail1893
    repr_bind_attr_int rx837_cur, rx837_curclass, "$!from", rx837_pos
  rxscan838_scan1898:
    nqp_rxmark rx837_bstack, rxscan838_loop1897, rx837_pos, 0
  rxscan838_done1899:
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt839_01901
    nqp_push_label $P11, alt839_11911
    nqp_rxmark rx837_bstack, alt839_end1900, -1, 0
    rx837_cur."!alt"(rx837_pos, "alt_nfa__11_1383914963.13059", $P11)
    goto rx837_fail1893
  alt839_01901:
    ge rx837_pos, rx837_eos, rx837_fail1893
    substr $S11, rx837_tgt, rx837_pos, 1
    index $I11, ucs4:"%", $S11
    lt $I11, 0, rx837_fail1893
  alt840_01903:
    nqp_rxmark rx837_bstack, alt840_11909, rx837_pos, 0
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt841_01905
    nqp_push_label $P11, alt841_11907
    nqp_rxmark rx837_bstack, alt841_end1904, -1, 0
    rx837_cur."!alt"(rx837_pos, "alt_nfa__10_1383914963.13024", $P11)
    goto rx837_fail1893
  alt841_01905:
    repr_bind_attr_int rx837_cur, rx837_curclass, "$!pos", rx837_pos
    $P11 = rx837_cur."directive"()
    repr_get_attr_int $I11, $P11, rx837_curclass, "$!pos"
    lt $I11, 0, rx837_fail1893
    nqp_rxmark rx837_bstack, rxsubrule842_pass1906, -1, 0
  rxsubrule842_pass1906:
    rx837_cstack = rx837_cur."!cursor_capture"($P11, "directive")
    repr_get_attr_int rx837_pos, $P11, rx837_curclass, "$!pos"
    goto alt841_end1904
  alt841_11907:
    repr_bind_attr_int rx837_cur, rx837_curclass, "$!pos", rx837_pos
    $P11 = rx837_cur."escape"()
    repr_get_attr_int $I11, $P11, rx837_curclass, "$!pos"
    lt $I11, 0, rx837_fail1893
    nqp_rxmark rx837_bstack, rxsubrule843_pass1908, -1, 0
  rxsubrule843_pass1908:
    rx837_cstack = rx837_cur."!cursor_capture"($P11, "escape")
    repr_get_attr_int rx837_pos, $P11, rx837_curclass, "$!pos"
    goto alt841_end1904
  alt841_end1904:
    nqp_rxcommit rx837_bstack, alt841_end1904
    goto alt840_end1902
  alt840_11909:
.annotate 'line', 2056
    nqp_decontainerize $P5001, _lex_param_0
    $P5002 = $P5001."orig"()
    set $S5006, $P5002
    substr $S5005, $S5006, 1
    concat $S5004, "'", $S5005
    concat $S5003, $S5004, "' is not valid in sprintf format sequence '"
    nqp_decontainerize $P5003, _lex_param_0
    $P5004 = $P5003."orig"()
    set $S5007, $P5004
    concat $S5002, $S5003, $S5007
    concat $S5001, $S5002, "'"
    repr_bind_attr_int rx837_cur, rx837_curclass, "$!pos", rx837_pos
    $P11 = rx837_cur."panic"($S5001)
    repr_get_attr_int $I11, $P11, rx837_curclass, "$!pos"
    lt $I11, 0, rx837_fail1893
    repr_get_attr_int rx837_pos, $P11, rx837_curclass, "$!pos"
  alt840_end1902:
    goto alt839_end1900
  alt839_11911:
    ge rx837_pos, rx837_eos, rx837_fail1893
    substr $S11, rx837_tgt, rx837_pos, 1
    index $I11, ucs4:"%", $S11
    ge $I11, 0, rx837_fail1893
    repr_bind_attr_int rx837_cur, rx837_curclass, "$!pos", rx837_pos
    $P11 = rx837_cur."literal"()
    repr_get_attr_int $I11, $P11, rx837_curclass, "$!pos"
    lt $I11, 0, rx837_fail1893
    nqp_rxmark rx837_bstack, rxsubrule845_pass1912, -1, 0
  rxsubrule845_pass1912:
    rx837_cstack = rx837_cur."!cursor_capture"($P11, "literal")
    repr_get_attr_int rx837_pos, $P11, rx837_curclass, "$!pos"
    goto alt839_end1900
  alt839_end1900:
    nqp_rxcommit rx837_bstack, alt839_end1900
    rx837_cur."!cursor_pass"(rx837_pos, "statement", 'backtrack'=>1)
    .return (rx837_cur)
  rx837_restart1892:
    repr_get_attr_obj rx837_cstack, rx837_cur, rx837_curclass, "$!cstack"
  rx837_fail1893:
    unless rx837_bstack, rx837_done1891
    pop $I19, rx837_bstack
    if_null rx837_cstack, rx837_cstack_done1896
    unless rx837_cstack, rx837_cstack_done1896
    dec $I19
    set $P11, rx837_cstack[$I19]
  rx837_cstack_done1896:
    pop rx837_rep, rx837_bstack
    pop rx837_pos, rx837_bstack
    pop $I19, rx837_bstack
    lt rx837_pos, -1, rx837_done1891
    lt rx837_pos, 0, rx837_fail1893
    eq $I19, 0, rx837_fail1893
    nqp_islist $I20, rx837_cstack
    unless $I20, rx837_jump1894
    elements $I18, rx837_bstack
    le $I18, 0, rx837_cut1895
    dec $I18
    set $I18, rx837_bstack[$I18]
  rx837_cut1895:
    assign rx837_cstack, $I18
  rx837_jump1894:
    jump $I19
  rx837_done1891:
    rx837_cur."!cursor_fail"()
    .return (rx837_cur) 
.end
.HLL "nqp"
.namespace []
.sub "directive" :subid("cuid_194_1383914954.64741") :anon :lex :outer("cuid_305_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2061
    .param pmc self 
    $P5001 = self."!protoregex"("directive")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "directive:sym<b>" :subid("cuid_195_1383914954.64741") :anon :lex :outer("cuid_305_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2062
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx846_start
    .local string rx846_tgt
    .local int rx846_pos
    .local int rx846_off
    .local int rx846_eos
    .local int rx846_rep
    .local pmc rx846_cur
    .local pmc rx846_curclass
    .local pmc rx846_bstack
    .local pmc rx846_cstack
    rx846_start = self."!cursor_start_all"()
    set rx846_cur, rx846_start[0]
    set rx846_tgt, rx846_start[1]
    set rx846_pos, rx846_start[2]
    set rx846_curclass, rx846_start[3]
    set rx846_bstack, rx846_start[4]
    set $I19, rx846_start[5]
    store_lex unicode:"$\x{a2}", rx846_cur
    length rx846_eos, rx846_tgt
    eq $I19, 1, rx846_restart1915
    gt rx846_pos, rx846_eos, rx846_fail1916
    repr_get_attr_int $I11, self, rx846_curclass, "$!from"
    ne $I11, -1, rxscan847_done1922
    goto rxscan847_scan1921
  rxscan847_loop1920:
    inc rx846_pos
    index rx846_pos, rx846_tgt, ucs4:"%", rx846_pos
    eq rx846_pos, -1, rx846_fail1916
    repr_bind_attr_int rx846_cur, rx846_curclass, "$!from", rx846_pos
  rxscan847_scan1921:
    nqp_rxmark rx846_bstack, rxscan847_loop1920, rx846_pos, 0
  rxscan847_done1922:
    add $I11, rx846_pos, 1
    gt $I11, rx846_eos, rx846_fail1916
    substr $S10, rx846_tgt, rx846_pos, 1
    ne $S10, ucs4:"%", rx846_fail1916
    add rx846_pos, 1
    nqp_rxmark rx846_bstack, rxquantr848_done1924, rx846_pos, 0
  rxquantr848_loop1923:
    repr_bind_attr_int rx846_cur, rx846_curclass, "$!pos", rx846_pos
    $P11 = rx846_cur."idx"()
    repr_get_attr_int $I11, $P11, rx846_curclass, "$!pos"
    lt $I11, 0, rx846_fail1916
    goto rxsubrule849_pass1925
  rxsubrule849_back1926:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx846_curclass, "$!pos"
    lt $I11, 0, rx846_fail1916
  rxsubrule849_pass1925:
    rx846_cstack = rx846_cur."!cursor_capture"($P11, "idx")
    set_addr $I11, rxsubrule849_back1926
    push rx846_bstack, $I11
    push rx846_bstack, 0
    push rx846_bstack, rx846_pos
    elements $I11, rx846_cstack
    push rx846_bstack, $I11
    repr_get_attr_int rx846_pos, $P11, rx846_curclass, "$!pos"
    nqp_rxpeek $I19, rx846_bstack, rxquantr848_done1924
    inc $I19
    inc $I19
    set rx846_rep, rx846_bstack[$I19]
    nqp_rxcommit rx846_bstack, rxquantr848_done1924
    inc rx846_rep
  rxquantr848_done1924:
    nqp_rxmark rx846_bstack, rxquantr850_done1928, rx846_pos, 0
  rxquantr850_loop1927:
    repr_bind_attr_int rx846_cur, rx846_curclass, "$!pos", rx846_pos
    $P11 = rx846_cur."flags"()
    repr_get_attr_int $I11, $P11, rx846_curclass, "$!pos"
    lt $I11, 0, rx846_fail1916
    goto rxsubrule851_pass1929
  rxsubrule851_back1930:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx846_curclass, "$!pos"
    lt $I11, 0, rx846_fail1916
  rxsubrule851_pass1929:
    rx846_cstack = rx846_cur."!cursor_capture"($P11, "flags")
    set_addr $I11, rxsubrule851_back1930
    push rx846_bstack, $I11
    push rx846_bstack, 0
    push rx846_bstack, rx846_pos
    elements $I11, rx846_cstack
    push rx846_bstack, $I11
    repr_get_attr_int rx846_pos, $P11, rx846_curclass, "$!pos"
    nqp_rxpeek $I19, rx846_bstack, rxquantr850_done1928
    inc $I19
    inc $I19
    set rx846_rep, rx846_bstack[$I19]
    nqp_rxcommit rx846_bstack, rxquantr850_done1928
    inc rx846_rep
    nqp_rxmark rx846_bstack, rxquantr850_done1928, rx846_pos, rx846_rep
    goto rxquantr850_loop1927
  rxquantr850_done1928:
    nqp_rxmark rx846_bstack, rxquantr852_done1932, rx846_pos, 0
  rxquantr852_loop1931:
    repr_bind_attr_int rx846_cur, rx846_curclass, "$!pos", rx846_pos
    $P11 = rx846_cur."size"()
    repr_get_attr_int $I11, $P11, rx846_curclass, "$!pos"
    lt $I11, 0, rx846_fail1916
    goto rxsubrule853_pass1933
  rxsubrule853_back1934:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx846_curclass, "$!pos"
    lt $I11, 0, rx846_fail1916
  rxsubrule853_pass1933:
    rx846_cstack = rx846_cur."!cursor_capture"($P11, "size")
    set_addr $I11, rxsubrule853_back1934
    push rx846_bstack, $I11
    push rx846_bstack, 0
    push rx846_bstack, rx846_pos
    elements $I11, rx846_cstack
    push rx846_bstack, $I11
    repr_get_attr_int rx846_pos, $P11, rx846_curclass, "$!pos"
    nqp_rxpeek $I19, rx846_bstack, rxquantr852_done1932
    inc $I19
    inc $I19
    set rx846_rep, rx846_bstack[$I19]
    nqp_rxcommit rx846_bstack, rxquantr852_done1932
    inc rx846_rep
  rxquantr852_done1932:
    nqp_rxmark rx846_bstack, rxquantr854_done1936, rx846_pos, 0
  rxquantr854_loop1935:
    add $I11, rx846_pos, 1
    gt $I11, rx846_eos, rx846_fail1916
    substr $S10, rx846_tgt, rx846_pos, 1
    ne $S10, ucs4:".", rx846_fail1916
    add rx846_pos, 1
    repr_bind_attr_int rx846_cur, rx846_curclass, "$!pos", rx846_pos
    $P11 = rx846_cur."size"()
    repr_get_attr_int $I11, $P11, rx846_curclass, "$!pos"
    lt $I11, 0, rx846_fail1916
    nqp_rxmark rx846_bstack, rxsubrule855_pass1937, -1, 0
  rxsubrule855_pass1937:
    rx846_cstack = rx846_cur."!cursor_capture"($P11, "precision")
    repr_get_attr_int rx846_pos, $P11, rx846_curclass, "$!pos"
    nqp_rxpeek $I19, rx846_bstack, rxquantr854_done1936
    inc $I19
    inc $I19
    set rx846_rep, rx846_bstack[$I19]
    nqp_rxcommit rx846_bstack, rxquantr854_done1936
    inc rx846_rep
  rxquantr854_done1936:
    nqp_rxmark rx846_bstack, rxcap856_fail1939, rx846_pos, 0
    ge rx846_pos, rx846_eos, rx846_fail1916
    substr $S11, rx846_tgt, rx846_pos, 1
    index $I11, ucs4:"bB", $S11
    lt $I11, 0, rx846_fail1916
    inc rx846_pos
    nqp_rxpeek $I19, rx846_bstack, rxcap856_fail1939
    inc $I19
    set $I11, rx846_bstack[$I19]
    repr_bind_attr_int rx846_cur, rx846_curclass, "$!pos", rx846_pos
    $P11 = rx846_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx846_pos)
    rx846_cstack = rx846_cur."!cursor_capture"($P11, "sym")
    goto rxcap856_done1938
  rxcap856_fail1939:
    goto rx846_fail1916
  rxcap856_done1938:
    rx846_cur."!cursor_pass"(rx846_pos, "directive:sym<b>", 'backtrack'=>1)
    .return (rx846_cur)
  rx846_restart1915:
    repr_get_attr_obj rx846_cstack, rx846_cur, rx846_curclass, "$!cstack"
  rx846_fail1916:
    unless rx846_bstack, rx846_done1914
    pop $I19, rx846_bstack
    if_null rx846_cstack, rx846_cstack_done1919
    unless rx846_cstack, rx846_cstack_done1919
    dec $I19
    set $P11, rx846_cstack[$I19]
  rx846_cstack_done1919:
    pop rx846_rep, rx846_bstack
    pop rx846_pos, rx846_bstack
    pop $I19, rx846_bstack
    lt rx846_pos, -1, rx846_done1914
    lt rx846_pos, 0, rx846_fail1916
    eq $I19, 0, rx846_fail1916
    nqp_islist $I20, rx846_cstack
    unless $I20, rx846_jump1917
    elements $I18, rx846_bstack
    le $I18, 0, rx846_cut1918
    dec $I18
    set $I18, rx846_bstack[$I18]
  rx846_cut1918:
    assign rx846_cstack, $I18
  rx846_jump1917:
    jump $I19
  rx846_done1914:
    rx846_cur."!cursor_fail"()
    .return (rx846_cur) 
.end
.HLL "nqp"
.namespace []
.sub "directive:sym<c>" :subid("cuid_196_1383914954.64741") :anon :lex :outer("cuid_305_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2063
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx857_start
    .local string rx857_tgt
    .local int rx857_pos
    .local int rx857_off
    .local int rx857_eos
    .local int rx857_rep
    .local pmc rx857_cur
    .local pmc rx857_curclass
    .local pmc rx857_bstack
    .local pmc rx857_cstack
    rx857_start = self."!cursor_start_all"()
    set rx857_cur, rx857_start[0]
    set rx857_tgt, rx857_start[1]
    set rx857_pos, rx857_start[2]
    set rx857_curclass, rx857_start[3]
    set rx857_bstack, rx857_start[4]
    set $I19, rx857_start[5]
    store_lex unicode:"$\x{a2}", rx857_cur
    length rx857_eos, rx857_tgt
    eq $I19, 1, rx857_restart1942
    gt rx857_pos, rx857_eos, rx857_fail1943
    repr_get_attr_int $I11, self, rx857_curclass, "$!from"
    ne $I11, -1, rxscan858_done1949
    goto rxscan858_scan1948
  rxscan858_loop1947:
    inc rx857_pos
    index rx857_pos, rx857_tgt, ucs4:"%", rx857_pos
    eq rx857_pos, -1, rx857_fail1943
    repr_bind_attr_int rx857_cur, rx857_curclass, "$!from", rx857_pos
  rxscan858_scan1948:
    nqp_rxmark rx857_bstack, rxscan858_loop1947, rx857_pos, 0
  rxscan858_done1949:
    add $I11, rx857_pos, 1
    gt $I11, rx857_eos, rx857_fail1943
    substr $S10, rx857_tgt, rx857_pos, 1
    ne $S10, ucs4:"%", rx857_fail1943
    add rx857_pos, 1
    nqp_rxmark rx857_bstack, rxquantr859_done1951, rx857_pos, 0
  rxquantr859_loop1950:
    repr_bind_attr_int rx857_cur, rx857_curclass, "$!pos", rx857_pos
    $P11 = rx857_cur."idx"()
    repr_get_attr_int $I11, $P11, rx857_curclass, "$!pos"
    lt $I11, 0, rx857_fail1943
    goto rxsubrule860_pass1952
  rxsubrule860_back1953:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx857_curclass, "$!pos"
    lt $I11, 0, rx857_fail1943
  rxsubrule860_pass1952:
    rx857_cstack = rx857_cur."!cursor_capture"($P11, "idx")
    set_addr $I11, rxsubrule860_back1953
    push rx857_bstack, $I11
    push rx857_bstack, 0
    push rx857_bstack, rx857_pos
    elements $I11, rx857_cstack
    push rx857_bstack, $I11
    repr_get_attr_int rx857_pos, $P11, rx857_curclass, "$!pos"
    nqp_rxpeek $I19, rx857_bstack, rxquantr859_done1951
    inc $I19
    inc $I19
    set rx857_rep, rx857_bstack[$I19]
    nqp_rxcommit rx857_bstack, rxquantr859_done1951
    inc rx857_rep
  rxquantr859_done1951:
    nqp_rxmark rx857_bstack, rxquantr861_done1955, rx857_pos, 0
  rxquantr861_loop1954:
    repr_bind_attr_int rx857_cur, rx857_curclass, "$!pos", rx857_pos
    $P11 = rx857_cur."flags"()
    repr_get_attr_int $I11, $P11, rx857_curclass, "$!pos"
    lt $I11, 0, rx857_fail1943
    goto rxsubrule862_pass1956
  rxsubrule862_back1957:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx857_curclass, "$!pos"
    lt $I11, 0, rx857_fail1943
  rxsubrule862_pass1956:
    rx857_cstack = rx857_cur."!cursor_capture"($P11, "flags")
    set_addr $I11, rxsubrule862_back1957
    push rx857_bstack, $I11
    push rx857_bstack, 0
    push rx857_bstack, rx857_pos
    elements $I11, rx857_cstack
    push rx857_bstack, $I11
    repr_get_attr_int rx857_pos, $P11, rx857_curclass, "$!pos"
    nqp_rxpeek $I19, rx857_bstack, rxquantr861_done1955
    inc $I19
    inc $I19
    set rx857_rep, rx857_bstack[$I19]
    nqp_rxcommit rx857_bstack, rxquantr861_done1955
    inc rx857_rep
    nqp_rxmark rx857_bstack, rxquantr861_done1955, rx857_pos, rx857_rep
    goto rxquantr861_loop1954
  rxquantr861_done1955:
    nqp_rxmark rx857_bstack, rxquantr863_done1959, rx857_pos, 0
  rxquantr863_loop1958:
    repr_bind_attr_int rx857_cur, rx857_curclass, "$!pos", rx857_pos
    $P11 = rx857_cur."size"()
    repr_get_attr_int $I11, $P11, rx857_curclass, "$!pos"
    lt $I11, 0, rx857_fail1943
    goto rxsubrule864_pass1960
  rxsubrule864_back1961:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx857_curclass, "$!pos"
    lt $I11, 0, rx857_fail1943
  rxsubrule864_pass1960:
    rx857_cstack = rx857_cur."!cursor_capture"($P11, "size")
    set_addr $I11, rxsubrule864_back1961
    push rx857_bstack, $I11
    push rx857_bstack, 0
    push rx857_bstack, rx857_pos
    elements $I11, rx857_cstack
    push rx857_bstack, $I11
    repr_get_attr_int rx857_pos, $P11, rx857_curclass, "$!pos"
    nqp_rxpeek $I19, rx857_bstack, rxquantr863_done1959
    inc $I19
    inc $I19
    set rx857_rep, rx857_bstack[$I19]
    nqp_rxcommit rx857_bstack, rxquantr863_done1959
    inc rx857_rep
  rxquantr863_done1959:
    nqp_rxmark rx857_bstack, rxcap865_fail1963, rx857_pos, 0
    add $I11, rx857_pos, 1
    gt $I11, rx857_eos, rx857_fail1943
    substr $S10, rx857_tgt, rx857_pos, 1
    ne $S10, ucs4:"c", rx857_fail1943
    add rx857_pos, 1
    nqp_rxpeek $I19, rx857_bstack, rxcap865_fail1963
    inc $I19
    set $I11, rx857_bstack[$I19]
    repr_bind_attr_int rx857_cur, rx857_curclass, "$!pos", rx857_pos
    $P11 = rx857_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx857_pos)
    rx857_cstack = rx857_cur."!cursor_capture"($P11, "sym")
    goto rxcap865_done1962
  rxcap865_fail1963:
    goto rx857_fail1943
  rxcap865_done1962:
    rx857_cur."!cursor_pass"(rx857_pos, "directive:sym<c>", 'backtrack'=>1)
    .return (rx857_cur)
  rx857_restart1942:
    repr_get_attr_obj rx857_cstack, rx857_cur, rx857_curclass, "$!cstack"
  rx857_fail1943:
    unless rx857_bstack, rx857_done1941
    pop $I19, rx857_bstack
    if_null rx857_cstack, rx857_cstack_done1946
    unless rx857_cstack, rx857_cstack_done1946
    dec $I19
    set $P11, rx857_cstack[$I19]
  rx857_cstack_done1946:
    pop rx857_rep, rx857_bstack
    pop rx857_pos, rx857_bstack
    pop $I19, rx857_bstack
    lt rx857_pos, -1, rx857_done1941
    lt rx857_pos, 0, rx857_fail1943
    eq $I19, 0, rx857_fail1943
    nqp_islist $I20, rx857_cstack
    unless $I20, rx857_jump1944
    elements $I18, rx857_bstack
    le $I18, 0, rx857_cut1945
    dec $I18
    set $I18, rx857_bstack[$I18]
  rx857_cut1945:
    assign rx857_cstack, $I18
  rx857_jump1944:
    jump $I19
  rx857_done1941:
    rx857_cur."!cursor_fail"()
    .return (rx857_cur) 
.end
.HLL "nqp"
.namespace []
.sub "directive:sym<d>" :subid("cuid_197_1383914954.64741") :anon :lex :outer("cuid_305_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2064
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx866_start
    .local string rx866_tgt
    .local int rx866_pos
    .local int rx866_off
    .local int rx866_eos
    .local int rx866_rep
    .local pmc rx866_cur
    .local pmc rx866_curclass
    .local pmc rx866_bstack
    .local pmc rx866_cstack
    rx866_start = self."!cursor_start_all"()
    set rx866_cur, rx866_start[0]
    set rx866_tgt, rx866_start[1]
    set rx866_pos, rx866_start[2]
    set rx866_curclass, rx866_start[3]
    set rx866_bstack, rx866_start[4]
    set $I19, rx866_start[5]
    store_lex unicode:"$\x{a2}", rx866_cur
    length rx866_eos, rx866_tgt
    eq $I19, 1, rx866_restart1966
    gt rx866_pos, rx866_eos, rx866_fail1967
    repr_get_attr_int $I11, self, rx866_curclass, "$!from"
    ne $I11, -1, rxscan867_done1973
    goto rxscan867_scan1972
  rxscan867_loop1971:
    inc rx866_pos
    index rx866_pos, rx866_tgt, ucs4:"%", rx866_pos
    eq rx866_pos, -1, rx866_fail1967
    repr_bind_attr_int rx866_cur, rx866_curclass, "$!from", rx866_pos
  rxscan867_scan1972:
    nqp_rxmark rx866_bstack, rxscan867_loop1971, rx866_pos, 0
  rxscan867_done1973:
    add $I11, rx866_pos, 1
    gt $I11, rx866_eos, rx866_fail1967
    substr $S10, rx866_tgt, rx866_pos, 1
    ne $S10, ucs4:"%", rx866_fail1967
    add rx866_pos, 1
    nqp_rxmark rx866_bstack, rxquantr868_done1975, rx866_pos, 0
  rxquantr868_loop1974:
    repr_bind_attr_int rx866_cur, rx866_curclass, "$!pos", rx866_pos
    $P11 = rx866_cur."idx"()
    repr_get_attr_int $I11, $P11, rx866_curclass, "$!pos"
    lt $I11, 0, rx866_fail1967
    goto rxsubrule869_pass1976
  rxsubrule869_back1977:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx866_curclass, "$!pos"
    lt $I11, 0, rx866_fail1967
  rxsubrule869_pass1976:
    rx866_cstack = rx866_cur."!cursor_capture"($P11, "idx")
    set_addr $I11, rxsubrule869_back1977
    push rx866_bstack, $I11
    push rx866_bstack, 0
    push rx866_bstack, rx866_pos
    elements $I11, rx866_cstack
    push rx866_bstack, $I11
    repr_get_attr_int rx866_pos, $P11, rx866_curclass, "$!pos"
    nqp_rxpeek $I19, rx866_bstack, rxquantr868_done1975
    inc $I19
    inc $I19
    set rx866_rep, rx866_bstack[$I19]
    nqp_rxcommit rx866_bstack, rxquantr868_done1975
    inc rx866_rep
  rxquantr868_done1975:
    nqp_rxmark rx866_bstack, rxquantr870_done1979, rx866_pos, 0
  rxquantr870_loop1978:
    repr_bind_attr_int rx866_cur, rx866_curclass, "$!pos", rx866_pos
    $P11 = rx866_cur."flags"()
    repr_get_attr_int $I11, $P11, rx866_curclass, "$!pos"
    lt $I11, 0, rx866_fail1967
    goto rxsubrule871_pass1980
  rxsubrule871_back1981:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx866_curclass, "$!pos"
    lt $I11, 0, rx866_fail1967
  rxsubrule871_pass1980:
    rx866_cstack = rx866_cur."!cursor_capture"($P11, "flags")
    set_addr $I11, rxsubrule871_back1981
    push rx866_bstack, $I11
    push rx866_bstack, 0
    push rx866_bstack, rx866_pos
    elements $I11, rx866_cstack
    push rx866_bstack, $I11
    repr_get_attr_int rx866_pos, $P11, rx866_curclass, "$!pos"
    nqp_rxpeek $I19, rx866_bstack, rxquantr870_done1979
    inc $I19
    inc $I19
    set rx866_rep, rx866_bstack[$I19]
    nqp_rxcommit rx866_bstack, rxquantr870_done1979
    inc rx866_rep
    nqp_rxmark rx866_bstack, rxquantr870_done1979, rx866_pos, rx866_rep
    goto rxquantr870_loop1978
  rxquantr870_done1979:
    nqp_rxmark rx866_bstack, rxquantr872_done1983, rx866_pos, 0
  rxquantr872_loop1982:
    repr_bind_attr_int rx866_cur, rx866_curclass, "$!pos", rx866_pos
    $P11 = rx866_cur."size"()
    repr_get_attr_int $I11, $P11, rx866_curclass, "$!pos"
    lt $I11, 0, rx866_fail1967
    goto rxsubrule873_pass1984
  rxsubrule873_back1985:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx866_curclass, "$!pos"
    lt $I11, 0, rx866_fail1967
  rxsubrule873_pass1984:
    rx866_cstack = rx866_cur."!cursor_capture"($P11, "size")
    set_addr $I11, rxsubrule873_back1985
    push rx866_bstack, $I11
    push rx866_bstack, 0
    push rx866_bstack, rx866_pos
    elements $I11, rx866_cstack
    push rx866_bstack, $I11
    repr_get_attr_int rx866_pos, $P11, rx866_curclass, "$!pos"
    nqp_rxpeek $I19, rx866_bstack, rxquantr872_done1983
    inc $I19
    inc $I19
    set rx866_rep, rx866_bstack[$I19]
    nqp_rxcommit rx866_bstack, rxquantr872_done1983
    inc rx866_rep
  rxquantr872_done1983:
    nqp_rxmark rx866_bstack, rxquantr874_done1987, rx866_pos, 0
  rxquantr874_loop1986:
    add $I11, rx866_pos, 1
    gt $I11, rx866_eos, rx866_fail1967
    substr $S10, rx866_tgt, rx866_pos, 1
    ne $S10, ucs4:".", rx866_fail1967
    add rx866_pos, 1
    repr_bind_attr_int rx866_cur, rx866_curclass, "$!pos", rx866_pos
    $P11 = rx866_cur."size"()
    repr_get_attr_int $I11, $P11, rx866_curclass, "$!pos"
    lt $I11, 0, rx866_fail1967
    nqp_rxmark rx866_bstack, rxsubrule875_pass1988, -1, 0
  rxsubrule875_pass1988:
    rx866_cstack = rx866_cur."!cursor_capture"($P11, "precision")
    repr_get_attr_int rx866_pos, $P11, rx866_curclass, "$!pos"
    nqp_rxpeek $I19, rx866_bstack, rxquantr874_done1987
    inc $I19
    inc $I19
    set rx866_rep, rx866_bstack[$I19]
    nqp_rxcommit rx866_bstack, rxquantr874_done1987
    inc rx866_rep
  rxquantr874_done1987:
    nqp_rxmark rx866_bstack, rxcap876_fail1990, rx866_pos, 0
    ge rx866_pos, rx866_eos, rx866_fail1967
    substr $S11, rx866_tgt, rx866_pos, 1
    index $I11, ucs4:"di", $S11
    lt $I11, 0, rx866_fail1967
    inc rx866_pos
    nqp_rxpeek $I19, rx866_bstack, rxcap876_fail1990
    inc $I19
    set $I11, rx866_bstack[$I19]
    repr_bind_attr_int rx866_cur, rx866_curclass, "$!pos", rx866_pos
    $P11 = rx866_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx866_pos)
    rx866_cstack = rx866_cur."!cursor_capture"($P11, "sym")
    goto rxcap876_done1989
  rxcap876_fail1990:
    goto rx866_fail1967
  rxcap876_done1989:
    rx866_cur."!cursor_pass"(rx866_pos, "directive:sym<d>", 'backtrack'=>1)
    .return (rx866_cur)
  rx866_restart1966:
    repr_get_attr_obj rx866_cstack, rx866_cur, rx866_curclass, "$!cstack"
  rx866_fail1967:
    unless rx866_bstack, rx866_done1965
    pop $I19, rx866_bstack
    if_null rx866_cstack, rx866_cstack_done1970
    unless rx866_cstack, rx866_cstack_done1970
    dec $I19
    set $P11, rx866_cstack[$I19]
  rx866_cstack_done1970:
    pop rx866_rep, rx866_bstack
    pop rx866_pos, rx866_bstack
    pop $I19, rx866_bstack
    lt rx866_pos, -1, rx866_done1965
    lt rx866_pos, 0, rx866_fail1967
    eq $I19, 0, rx866_fail1967
    nqp_islist $I20, rx866_cstack
    unless $I20, rx866_jump1968
    elements $I18, rx866_bstack
    le $I18, 0, rx866_cut1969
    dec $I18
    set $I18, rx866_bstack[$I18]
  rx866_cut1969:
    assign rx866_cstack, $I18
  rx866_jump1968:
    jump $I19
  rx866_done1965:
    rx866_cur."!cursor_fail"()
    .return (rx866_cur) 
.end
.HLL "nqp"
.namespace []
.sub "directive:sym<e>" :subid("cuid_198_1383914954.64741") :anon :lex :outer("cuid_305_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2065
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx877_start
    .local string rx877_tgt
    .local int rx877_pos
    .local int rx877_off
    .local int rx877_eos
    .local int rx877_rep
    .local pmc rx877_cur
    .local pmc rx877_curclass
    .local pmc rx877_bstack
    .local pmc rx877_cstack
    rx877_start = self."!cursor_start_all"()
    set rx877_cur, rx877_start[0]
    set rx877_tgt, rx877_start[1]
    set rx877_pos, rx877_start[2]
    set rx877_curclass, rx877_start[3]
    set rx877_bstack, rx877_start[4]
    set $I19, rx877_start[5]
    store_lex unicode:"$\x{a2}", rx877_cur
    length rx877_eos, rx877_tgt
    eq $I19, 1, rx877_restart1993
    gt rx877_pos, rx877_eos, rx877_fail1994
    repr_get_attr_int $I11, self, rx877_curclass, "$!from"
    ne $I11, -1, rxscan878_done2000
    goto rxscan878_scan1999
  rxscan878_loop1998:
    inc rx877_pos
    index rx877_pos, rx877_tgt, ucs4:"%", rx877_pos
    eq rx877_pos, -1, rx877_fail1994
    repr_bind_attr_int rx877_cur, rx877_curclass, "$!from", rx877_pos
  rxscan878_scan1999:
    nqp_rxmark rx877_bstack, rxscan878_loop1998, rx877_pos, 0
  rxscan878_done2000:
    add $I11, rx877_pos, 1
    gt $I11, rx877_eos, rx877_fail1994
    substr $S10, rx877_tgt, rx877_pos, 1
    ne $S10, ucs4:"%", rx877_fail1994
    add rx877_pos, 1
    nqp_rxmark rx877_bstack, rxquantr879_done2002, rx877_pos, 0
  rxquantr879_loop2001:
    repr_bind_attr_int rx877_cur, rx877_curclass, "$!pos", rx877_pos
    $P11 = rx877_cur."idx"()
    repr_get_attr_int $I11, $P11, rx877_curclass, "$!pos"
    lt $I11, 0, rx877_fail1994
    goto rxsubrule880_pass2003
  rxsubrule880_back2004:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx877_curclass, "$!pos"
    lt $I11, 0, rx877_fail1994
  rxsubrule880_pass2003:
    rx877_cstack = rx877_cur."!cursor_capture"($P11, "idx")
    set_addr $I11, rxsubrule880_back2004
    push rx877_bstack, $I11
    push rx877_bstack, 0
    push rx877_bstack, rx877_pos
    elements $I11, rx877_cstack
    push rx877_bstack, $I11
    repr_get_attr_int rx877_pos, $P11, rx877_curclass, "$!pos"
    nqp_rxpeek $I19, rx877_bstack, rxquantr879_done2002
    inc $I19
    inc $I19
    set rx877_rep, rx877_bstack[$I19]
    nqp_rxcommit rx877_bstack, rxquantr879_done2002
    inc rx877_rep
  rxquantr879_done2002:
    nqp_rxmark rx877_bstack, rxquantr881_done2006, rx877_pos, 0
  rxquantr881_loop2005:
    repr_bind_attr_int rx877_cur, rx877_curclass, "$!pos", rx877_pos
    $P11 = rx877_cur."flags"()
    repr_get_attr_int $I11, $P11, rx877_curclass, "$!pos"
    lt $I11, 0, rx877_fail1994
    goto rxsubrule882_pass2007
  rxsubrule882_back2008:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx877_curclass, "$!pos"
    lt $I11, 0, rx877_fail1994
  rxsubrule882_pass2007:
    rx877_cstack = rx877_cur."!cursor_capture"($P11, "flags")
    set_addr $I11, rxsubrule882_back2008
    push rx877_bstack, $I11
    push rx877_bstack, 0
    push rx877_bstack, rx877_pos
    elements $I11, rx877_cstack
    push rx877_bstack, $I11
    repr_get_attr_int rx877_pos, $P11, rx877_curclass, "$!pos"
    nqp_rxpeek $I19, rx877_bstack, rxquantr881_done2006
    inc $I19
    inc $I19
    set rx877_rep, rx877_bstack[$I19]
    nqp_rxcommit rx877_bstack, rxquantr881_done2006
    inc rx877_rep
    nqp_rxmark rx877_bstack, rxquantr881_done2006, rx877_pos, rx877_rep
    goto rxquantr881_loop2005
  rxquantr881_done2006:
    nqp_rxmark rx877_bstack, rxquantr883_done2010, rx877_pos, 0
  rxquantr883_loop2009:
    repr_bind_attr_int rx877_cur, rx877_curclass, "$!pos", rx877_pos
    $P11 = rx877_cur."size"()
    repr_get_attr_int $I11, $P11, rx877_curclass, "$!pos"
    lt $I11, 0, rx877_fail1994
    goto rxsubrule884_pass2011
  rxsubrule884_back2012:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx877_curclass, "$!pos"
    lt $I11, 0, rx877_fail1994
  rxsubrule884_pass2011:
    rx877_cstack = rx877_cur."!cursor_capture"($P11, "size")
    set_addr $I11, rxsubrule884_back2012
    push rx877_bstack, $I11
    push rx877_bstack, 0
    push rx877_bstack, rx877_pos
    elements $I11, rx877_cstack
    push rx877_bstack, $I11
    repr_get_attr_int rx877_pos, $P11, rx877_curclass, "$!pos"
    nqp_rxpeek $I19, rx877_bstack, rxquantr883_done2010
    inc $I19
    inc $I19
    set rx877_rep, rx877_bstack[$I19]
    nqp_rxcommit rx877_bstack, rxquantr883_done2010
    inc rx877_rep
  rxquantr883_done2010:
    nqp_rxmark rx877_bstack, rxquantr885_done2014, rx877_pos, 0
  rxquantr885_loop2013:
    add $I11, rx877_pos, 1
    gt $I11, rx877_eos, rx877_fail1994
    substr $S10, rx877_tgt, rx877_pos, 1
    ne $S10, ucs4:".", rx877_fail1994
    add rx877_pos, 1
    repr_bind_attr_int rx877_cur, rx877_curclass, "$!pos", rx877_pos
    $P11 = rx877_cur."size"()
    repr_get_attr_int $I11, $P11, rx877_curclass, "$!pos"
    lt $I11, 0, rx877_fail1994
    nqp_rxmark rx877_bstack, rxsubrule886_pass2015, -1, 0
  rxsubrule886_pass2015:
    rx877_cstack = rx877_cur."!cursor_capture"($P11, "precision")
    repr_get_attr_int rx877_pos, $P11, rx877_curclass, "$!pos"
    nqp_rxpeek $I19, rx877_bstack, rxquantr885_done2014
    inc $I19
    inc $I19
    set rx877_rep, rx877_bstack[$I19]
    nqp_rxcommit rx877_bstack, rxquantr885_done2014
    inc rx877_rep
  rxquantr885_done2014:
    nqp_rxmark rx877_bstack, rxcap887_fail2017, rx877_pos, 0
    ge rx877_pos, rx877_eos, rx877_fail1994
    substr $S11, rx877_tgt, rx877_pos, 1
    index $I11, ucs4:"eE", $S11
    lt $I11, 0, rx877_fail1994
    inc rx877_pos
    nqp_rxpeek $I19, rx877_bstack, rxcap887_fail2017
    inc $I19
    set $I11, rx877_bstack[$I19]
    repr_bind_attr_int rx877_cur, rx877_curclass, "$!pos", rx877_pos
    $P11 = rx877_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx877_pos)
    rx877_cstack = rx877_cur."!cursor_capture"($P11, "sym")
    goto rxcap887_done2016
  rxcap887_fail2017:
    goto rx877_fail1994
  rxcap887_done2016:
    rx877_cur."!cursor_pass"(rx877_pos, "directive:sym<e>", 'backtrack'=>1)
    .return (rx877_cur)
  rx877_restart1993:
    repr_get_attr_obj rx877_cstack, rx877_cur, rx877_curclass, "$!cstack"
  rx877_fail1994:
    unless rx877_bstack, rx877_done1992
    pop $I19, rx877_bstack
    if_null rx877_cstack, rx877_cstack_done1997
    unless rx877_cstack, rx877_cstack_done1997
    dec $I19
    set $P11, rx877_cstack[$I19]
  rx877_cstack_done1997:
    pop rx877_rep, rx877_bstack
    pop rx877_pos, rx877_bstack
    pop $I19, rx877_bstack
    lt rx877_pos, -1, rx877_done1992
    lt rx877_pos, 0, rx877_fail1994
    eq $I19, 0, rx877_fail1994
    nqp_islist $I20, rx877_cstack
    unless $I20, rx877_jump1995
    elements $I18, rx877_bstack
    le $I18, 0, rx877_cut1996
    dec $I18
    set $I18, rx877_bstack[$I18]
  rx877_cut1996:
    assign rx877_cstack, $I18
  rx877_jump1995:
    jump $I19
  rx877_done1992:
    rx877_cur."!cursor_fail"()
    .return (rx877_cur) 
.end
.HLL "nqp"
.namespace []
.sub "directive:sym<f>" :subid("cuid_199_1383914954.64741") :anon :lex :outer("cuid_305_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2066
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx888_start
    .local string rx888_tgt
    .local int rx888_pos
    .local int rx888_off
    .local int rx888_eos
    .local int rx888_rep
    .local pmc rx888_cur
    .local pmc rx888_curclass
    .local pmc rx888_bstack
    .local pmc rx888_cstack
    rx888_start = self."!cursor_start_all"()
    set rx888_cur, rx888_start[0]
    set rx888_tgt, rx888_start[1]
    set rx888_pos, rx888_start[2]
    set rx888_curclass, rx888_start[3]
    set rx888_bstack, rx888_start[4]
    set $I19, rx888_start[5]
    store_lex unicode:"$\x{a2}", rx888_cur
    length rx888_eos, rx888_tgt
    eq $I19, 1, rx888_restart2020
    gt rx888_pos, rx888_eos, rx888_fail2021
    repr_get_attr_int $I11, self, rx888_curclass, "$!from"
    ne $I11, -1, rxscan889_done2027
    goto rxscan889_scan2026
  rxscan889_loop2025:
    inc rx888_pos
    index rx888_pos, rx888_tgt, ucs4:"%", rx888_pos
    eq rx888_pos, -1, rx888_fail2021
    repr_bind_attr_int rx888_cur, rx888_curclass, "$!from", rx888_pos
  rxscan889_scan2026:
    nqp_rxmark rx888_bstack, rxscan889_loop2025, rx888_pos, 0
  rxscan889_done2027:
    add $I11, rx888_pos, 1
    gt $I11, rx888_eos, rx888_fail2021
    substr $S10, rx888_tgt, rx888_pos, 1
    ne $S10, ucs4:"%", rx888_fail2021
    add rx888_pos, 1
    nqp_rxmark rx888_bstack, rxquantr890_done2029, rx888_pos, 0
  rxquantr890_loop2028:
    repr_bind_attr_int rx888_cur, rx888_curclass, "$!pos", rx888_pos
    $P11 = rx888_cur."idx"()
    repr_get_attr_int $I11, $P11, rx888_curclass, "$!pos"
    lt $I11, 0, rx888_fail2021
    goto rxsubrule891_pass2030
  rxsubrule891_back2031:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx888_curclass, "$!pos"
    lt $I11, 0, rx888_fail2021
  rxsubrule891_pass2030:
    rx888_cstack = rx888_cur."!cursor_capture"($P11, "idx")
    set_addr $I11, rxsubrule891_back2031
    push rx888_bstack, $I11
    push rx888_bstack, 0
    push rx888_bstack, rx888_pos
    elements $I11, rx888_cstack
    push rx888_bstack, $I11
    repr_get_attr_int rx888_pos, $P11, rx888_curclass, "$!pos"
    nqp_rxpeek $I19, rx888_bstack, rxquantr890_done2029
    inc $I19
    inc $I19
    set rx888_rep, rx888_bstack[$I19]
    nqp_rxcommit rx888_bstack, rxquantr890_done2029
    inc rx888_rep
  rxquantr890_done2029:
    nqp_rxmark rx888_bstack, rxquantr892_done2033, rx888_pos, 0
  rxquantr892_loop2032:
    repr_bind_attr_int rx888_cur, rx888_curclass, "$!pos", rx888_pos
    $P11 = rx888_cur."flags"()
    repr_get_attr_int $I11, $P11, rx888_curclass, "$!pos"
    lt $I11, 0, rx888_fail2021
    goto rxsubrule893_pass2034
  rxsubrule893_back2035:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx888_curclass, "$!pos"
    lt $I11, 0, rx888_fail2021
  rxsubrule893_pass2034:
    rx888_cstack = rx888_cur."!cursor_capture"($P11, "flags")
    set_addr $I11, rxsubrule893_back2035
    push rx888_bstack, $I11
    push rx888_bstack, 0
    push rx888_bstack, rx888_pos
    elements $I11, rx888_cstack
    push rx888_bstack, $I11
    repr_get_attr_int rx888_pos, $P11, rx888_curclass, "$!pos"
    nqp_rxpeek $I19, rx888_bstack, rxquantr892_done2033
    inc $I19
    inc $I19
    set rx888_rep, rx888_bstack[$I19]
    nqp_rxcommit rx888_bstack, rxquantr892_done2033
    inc rx888_rep
    nqp_rxmark rx888_bstack, rxquantr892_done2033, rx888_pos, rx888_rep
    goto rxquantr892_loop2032
  rxquantr892_done2033:
    nqp_rxmark rx888_bstack, rxquantr894_done2037, rx888_pos, 0
  rxquantr894_loop2036:
    repr_bind_attr_int rx888_cur, rx888_curclass, "$!pos", rx888_pos
    $P11 = rx888_cur."size"()
    repr_get_attr_int $I11, $P11, rx888_curclass, "$!pos"
    lt $I11, 0, rx888_fail2021
    goto rxsubrule895_pass2038
  rxsubrule895_back2039:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx888_curclass, "$!pos"
    lt $I11, 0, rx888_fail2021
  rxsubrule895_pass2038:
    rx888_cstack = rx888_cur."!cursor_capture"($P11, "size")
    set_addr $I11, rxsubrule895_back2039
    push rx888_bstack, $I11
    push rx888_bstack, 0
    push rx888_bstack, rx888_pos
    elements $I11, rx888_cstack
    push rx888_bstack, $I11
    repr_get_attr_int rx888_pos, $P11, rx888_curclass, "$!pos"
    nqp_rxpeek $I19, rx888_bstack, rxquantr894_done2037
    inc $I19
    inc $I19
    set rx888_rep, rx888_bstack[$I19]
    nqp_rxcommit rx888_bstack, rxquantr894_done2037
    inc rx888_rep
  rxquantr894_done2037:
    nqp_rxmark rx888_bstack, rxquantr896_done2041, rx888_pos, 0
  rxquantr896_loop2040:
    add $I11, rx888_pos, 1
    gt $I11, rx888_eos, rx888_fail2021
    substr $S10, rx888_tgt, rx888_pos, 1
    ne $S10, ucs4:".", rx888_fail2021
    add rx888_pos, 1
    repr_bind_attr_int rx888_cur, rx888_curclass, "$!pos", rx888_pos
    $P11 = rx888_cur."size"()
    repr_get_attr_int $I11, $P11, rx888_curclass, "$!pos"
    lt $I11, 0, rx888_fail2021
    nqp_rxmark rx888_bstack, rxsubrule897_pass2042, -1, 0
  rxsubrule897_pass2042:
    rx888_cstack = rx888_cur."!cursor_capture"($P11, "precision")
    repr_get_attr_int rx888_pos, $P11, rx888_curclass, "$!pos"
    nqp_rxpeek $I19, rx888_bstack, rxquantr896_done2041
    inc $I19
    inc $I19
    set rx888_rep, rx888_bstack[$I19]
    nqp_rxcommit rx888_bstack, rxquantr896_done2041
    inc rx888_rep
  rxquantr896_done2041:
    nqp_rxmark rx888_bstack, rxcap898_fail2044, rx888_pos, 0
    ge rx888_pos, rx888_eos, rx888_fail2021
    substr $S11, rx888_tgt, rx888_pos, 1
    index $I11, ucs4:"fF", $S11
    lt $I11, 0, rx888_fail2021
    inc rx888_pos
    nqp_rxpeek $I19, rx888_bstack, rxcap898_fail2044
    inc $I19
    set $I11, rx888_bstack[$I19]
    repr_bind_attr_int rx888_cur, rx888_curclass, "$!pos", rx888_pos
    $P11 = rx888_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx888_pos)
    rx888_cstack = rx888_cur."!cursor_capture"($P11, "sym")
    goto rxcap898_done2043
  rxcap898_fail2044:
    goto rx888_fail2021
  rxcap898_done2043:
    rx888_cur."!cursor_pass"(rx888_pos, "directive:sym<f>", 'backtrack'=>1)
    .return (rx888_cur)
  rx888_restart2020:
    repr_get_attr_obj rx888_cstack, rx888_cur, rx888_curclass, "$!cstack"
  rx888_fail2021:
    unless rx888_bstack, rx888_done2019
    pop $I19, rx888_bstack
    if_null rx888_cstack, rx888_cstack_done2024
    unless rx888_cstack, rx888_cstack_done2024
    dec $I19
    set $P11, rx888_cstack[$I19]
  rx888_cstack_done2024:
    pop rx888_rep, rx888_bstack
    pop rx888_pos, rx888_bstack
    pop $I19, rx888_bstack
    lt rx888_pos, -1, rx888_done2019
    lt rx888_pos, 0, rx888_fail2021
    eq $I19, 0, rx888_fail2021
    nqp_islist $I20, rx888_cstack
    unless $I20, rx888_jump2022
    elements $I18, rx888_bstack
    le $I18, 0, rx888_cut2023
    dec $I18
    set $I18, rx888_bstack[$I18]
  rx888_cut2023:
    assign rx888_cstack, $I18
  rx888_jump2022:
    jump $I19
  rx888_done2019:
    rx888_cur."!cursor_fail"()
    .return (rx888_cur) 
.end
.HLL "nqp"
.namespace []
.sub "directive:sym<g>" :subid("cuid_200_1383914954.64741") :anon :lex :outer("cuid_305_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2067
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx899_start
    .local string rx899_tgt
    .local int rx899_pos
    .local int rx899_off
    .local int rx899_eos
    .local int rx899_rep
    .local pmc rx899_cur
    .local pmc rx899_curclass
    .local pmc rx899_bstack
    .local pmc rx899_cstack
    rx899_start = self."!cursor_start_all"()
    set rx899_cur, rx899_start[0]
    set rx899_tgt, rx899_start[1]
    set rx899_pos, rx899_start[2]
    set rx899_curclass, rx899_start[3]
    set rx899_bstack, rx899_start[4]
    set $I19, rx899_start[5]
    store_lex unicode:"$\x{a2}", rx899_cur
    length rx899_eos, rx899_tgt
    eq $I19, 1, rx899_restart2047
    gt rx899_pos, rx899_eos, rx899_fail2048
    repr_get_attr_int $I11, self, rx899_curclass, "$!from"
    ne $I11, -1, rxscan900_done2054
    goto rxscan900_scan2053
  rxscan900_loop2052:
    inc rx899_pos
    index rx899_pos, rx899_tgt, ucs4:"%", rx899_pos
    eq rx899_pos, -1, rx899_fail2048
    repr_bind_attr_int rx899_cur, rx899_curclass, "$!from", rx899_pos
  rxscan900_scan2053:
    nqp_rxmark rx899_bstack, rxscan900_loop2052, rx899_pos, 0
  rxscan900_done2054:
    add $I11, rx899_pos, 1
    gt $I11, rx899_eos, rx899_fail2048
    substr $S10, rx899_tgt, rx899_pos, 1
    ne $S10, ucs4:"%", rx899_fail2048
    add rx899_pos, 1
    nqp_rxmark rx899_bstack, rxquantr901_done2056, rx899_pos, 0
  rxquantr901_loop2055:
    repr_bind_attr_int rx899_cur, rx899_curclass, "$!pos", rx899_pos
    $P11 = rx899_cur."idx"()
    repr_get_attr_int $I11, $P11, rx899_curclass, "$!pos"
    lt $I11, 0, rx899_fail2048
    goto rxsubrule902_pass2057
  rxsubrule902_back2058:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx899_curclass, "$!pos"
    lt $I11, 0, rx899_fail2048
  rxsubrule902_pass2057:
    rx899_cstack = rx899_cur."!cursor_capture"($P11, "idx")
    set_addr $I11, rxsubrule902_back2058
    push rx899_bstack, $I11
    push rx899_bstack, 0
    push rx899_bstack, rx899_pos
    elements $I11, rx899_cstack
    push rx899_bstack, $I11
    repr_get_attr_int rx899_pos, $P11, rx899_curclass, "$!pos"
    nqp_rxpeek $I19, rx899_bstack, rxquantr901_done2056
    inc $I19
    inc $I19
    set rx899_rep, rx899_bstack[$I19]
    nqp_rxcommit rx899_bstack, rxquantr901_done2056
    inc rx899_rep
  rxquantr901_done2056:
    nqp_rxmark rx899_bstack, rxquantr903_done2060, rx899_pos, 0
  rxquantr903_loop2059:
    repr_bind_attr_int rx899_cur, rx899_curclass, "$!pos", rx899_pos
    $P11 = rx899_cur."flags"()
    repr_get_attr_int $I11, $P11, rx899_curclass, "$!pos"
    lt $I11, 0, rx899_fail2048
    goto rxsubrule904_pass2061
  rxsubrule904_back2062:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx899_curclass, "$!pos"
    lt $I11, 0, rx899_fail2048
  rxsubrule904_pass2061:
    rx899_cstack = rx899_cur."!cursor_capture"($P11, "flags")
    set_addr $I11, rxsubrule904_back2062
    push rx899_bstack, $I11
    push rx899_bstack, 0
    push rx899_bstack, rx899_pos
    elements $I11, rx899_cstack
    push rx899_bstack, $I11
    repr_get_attr_int rx899_pos, $P11, rx899_curclass, "$!pos"
    nqp_rxpeek $I19, rx899_bstack, rxquantr903_done2060
    inc $I19
    inc $I19
    set rx899_rep, rx899_bstack[$I19]
    nqp_rxcommit rx899_bstack, rxquantr903_done2060
    inc rx899_rep
    nqp_rxmark rx899_bstack, rxquantr903_done2060, rx899_pos, rx899_rep
    goto rxquantr903_loop2059
  rxquantr903_done2060:
    nqp_rxmark rx899_bstack, rxquantr905_done2064, rx899_pos, 0
  rxquantr905_loop2063:
    repr_bind_attr_int rx899_cur, rx899_curclass, "$!pos", rx899_pos
    $P11 = rx899_cur."size"()
    repr_get_attr_int $I11, $P11, rx899_curclass, "$!pos"
    lt $I11, 0, rx899_fail2048
    goto rxsubrule906_pass2065
  rxsubrule906_back2066:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx899_curclass, "$!pos"
    lt $I11, 0, rx899_fail2048
  rxsubrule906_pass2065:
    rx899_cstack = rx899_cur."!cursor_capture"($P11, "size")
    set_addr $I11, rxsubrule906_back2066
    push rx899_bstack, $I11
    push rx899_bstack, 0
    push rx899_bstack, rx899_pos
    elements $I11, rx899_cstack
    push rx899_bstack, $I11
    repr_get_attr_int rx899_pos, $P11, rx899_curclass, "$!pos"
    nqp_rxpeek $I19, rx899_bstack, rxquantr905_done2064
    inc $I19
    inc $I19
    set rx899_rep, rx899_bstack[$I19]
    nqp_rxcommit rx899_bstack, rxquantr905_done2064
    inc rx899_rep
  rxquantr905_done2064:
    nqp_rxmark rx899_bstack, rxquantr907_done2068, rx899_pos, 0
  rxquantr907_loop2067:
    add $I11, rx899_pos, 1
    gt $I11, rx899_eos, rx899_fail2048
    substr $S10, rx899_tgt, rx899_pos, 1
    ne $S10, ucs4:".", rx899_fail2048
    add rx899_pos, 1
    repr_bind_attr_int rx899_cur, rx899_curclass, "$!pos", rx899_pos
    $P11 = rx899_cur."size"()
    repr_get_attr_int $I11, $P11, rx899_curclass, "$!pos"
    lt $I11, 0, rx899_fail2048
    nqp_rxmark rx899_bstack, rxsubrule908_pass2069, -1, 0
  rxsubrule908_pass2069:
    rx899_cstack = rx899_cur."!cursor_capture"($P11, "precision")
    repr_get_attr_int rx899_pos, $P11, rx899_curclass, "$!pos"
    nqp_rxpeek $I19, rx899_bstack, rxquantr907_done2068
    inc $I19
    inc $I19
    set rx899_rep, rx899_bstack[$I19]
    nqp_rxcommit rx899_bstack, rxquantr907_done2068
    inc rx899_rep
  rxquantr907_done2068:
    nqp_rxmark rx899_bstack, rxcap909_fail2071, rx899_pos, 0
    ge rx899_pos, rx899_eos, rx899_fail2048
    substr $S11, rx899_tgt, rx899_pos, 1
    index $I11, ucs4:"gG", $S11
    lt $I11, 0, rx899_fail2048
    inc rx899_pos
    nqp_rxpeek $I19, rx899_bstack, rxcap909_fail2071
    inc $I19
    set $I11, rx899_bstack[$I19]
    repr_bind_attr_int rx899_cur, rx899_curclass, "$!pos", rx899_pos
    $P11 = rx899_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx899_pos)
    rx899_cstack = rx899_cur."!cursor_capture"($P11, "sym")
    goto rxcap909_done2070
  rxcap909_fail2071:
    goto rx899_fail2048
  rxcap909_done2070:
    rx899_cur."!cursor_pass"(rx899_pos, "directive:sym<g>", 'backtrack'=>1)
    .return (rx899_cur)
  rx899_restart2047:
    repr_get_attr_obj rx899_cstack, rx899_cur, rx899_curclass, "$!cstack"
  rx899_fail2048:
    unless rx899_bstack, rx899_done2046
    pop $I19, rx899_bstack
    if_null rx899_cstack, rx899_cstack_done2051
    unless rx899_cstack, rx899_cstack_done2051
    dec $I19
    set $P11, rx899_cstack[$I19]
  rx899_cstack_done2051:
    pop rx899_rep, rx899_bstack
    pop rx899_pos, rx899_bstack
    pop $I19, rx899_bstack
    lt rx899_pos, -1, rx899_done2046
    lt rx899_pos, 0, rx899_fail2048
    eq $I19, 0, rx899_fail2048
    nqp_islist $I20, rx899_cstack
    unless $I20, rx899_jump2049
    elements $I18, rx899_bstack
    le $I18, 0, rx899_cut2050
    dec $I18
    set $I18, rx899_bstack[$I18]
  rx899_cut2050:
    assign rx899_cstack, $I18
  rx899_jump2049:
    jump $I19
  rx899_done2046:
    rx899_cur."!cursor_fail"()
    .return (rx899_cur) 
.end
.HLL "nqp"
.namespace []
.sub "directive:sym<o>" :subid("cuid_201_1383914954.64741") :anon :lex :outer("cuid_305_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2068
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx910_start
    .local string rx910_tgt
    .local int rx910_pos
    .local int rx910_off
    .local int rx910_eos
    .local int rx910_rep
    .local pmc rx910_cur
    .local pmc rx910_curclass
    .local pmc rx910_bstack
    .local pmc rx910_cstack
    rx910_start = self."!cursor_start_all"()
    set rx910_cur, rx910_start[0]
    set rx910_tgt, rx910_start[1]
    set rx910_pos, rx910_start[2]
    set rx910_curclass, rx910_start[3]
    set rx910_bstack, rx910_start[4]
    set $I19, rx910_start[5]
    store_lex unicode:"$\x{a2}", rx910_cur
    length rx910_eos, rx910_tgt
    eq $I19, 1, rx910_restart2074
    gt rx910_pos, rx910_eos, rx910_fail2075
    repr_get_attr_int $I11, self, rx910_curclass, "$!from"
    ne $I11, -1, rxscan911_done2081
    goto rxscan911_scan2080
  rxscan911_loop2079:
    inc rx910_pos
    index rx910_pos, rx910_tgt, ucs4:"%", rx910_pos
    eq rx910_pos, -1, rx910_fail2075
    repr_bind_attr_int rx910_cur, rx910_curclass, "$!from", rx910_pos
  rxscan911_scan2080:
    nqp_rxmark rx910_bstack, rxscan911_loop2079, rx910_pos, 0
  rxscan911_done2081:
    add $I11, rx910_pos, 1
    gt $I11, rx910_eos, rx910_fail2075
    substr $S10, rx910_tgt, rx910_pos, 1
    ne $S10, ucs4:"%", rx910_fail2075
    add rx910_pos, 1
    nqp_rxmark rx910_bstack, rxquantr912_done2083, rx910_pos, 0
  rxquantr912_loop2082:
    repr_bind_attr_int rx910_cur, rx910_curclass, "$!pos", rx910_pos
    $P11 = rx910_cur."idx"()
    repr_get_attr_int $I11, $P11, rx910_curclass, "$!pos"
    lt $I11, 0, rx910_fail2075
    goto rxsubrule913_pass2084
  rxsubrule913_back2085:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx910_curclass, "$!pos"
    lt $I11, 0, rx910_fail2075
  rxsubrule913_pass2084:
    rx910_cstack = rx910_cur."!cursor_capture"($P11, "idx")
    set_addr $I11, rxsubrule913_back2085
    push rx910_bstack, $I11
    push rx910_bstack, 0
    push rx910_bstack, rx910_pos
    elements $I11, rx910_cstack
    push rx910_bstack, $I11
    repr_get_attr_int rx910_pos, $P11, rx910_curclass, "$!pos"
    nqp_rxpeek $I19, rx910_bstack, rxquantr912_done2083
    inc $I19
    inc $I19
    set rx910_rep, rx910_bstack[$I19]
    nqp_rxcommit rx910_bstack, rxquantr912_done2083
    inc rx910_rep
  rxquantr912_done2083:
    nqp_rxmark rx910_bstack, rxquantr914_done2087, rx910_pos, 0
  rxquantr914_loop2086:
    repr_bind_attr_int rx910_cur, rx910_curclass, "$!pos", rx910_pos
    $P11 = rx910_cur."flags"()
    repr_get_attr_int $I11, $P11, rx910_curclass, "$!pos"
    lt $I11, 0, rx910_fail2075
    goto rxsubrule915_pass2088
  rxsubrule915_back2089:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx910_curclass, "$!pos"
    lt $I11, 0, rx910_fail2075
  rxsubrule915_pass2088:
    rx910_cstack = rx910_cur."!cursor_capture"($P11, "flags")
    set_addr $I11, rxsubrule915_back2089
    push rx910_bstack, $I11
    push rx910_bstack, 0
    push rx910_bstack, rx910_pos
    elements $I11, rx910_cstack
    push rx910_bstack, $I11
    repr_get_attr_int rx910_pos, $P11, rx910_curclass, "$!pos"
    nqp_rxpeek $I19, rx910_bstack, rxquantr914_done2087
    inc $I19
    inc $I19
    set rx910_rep, rx910_bstack[$I19]
    nqp_rxcommit rx910_bstack, rxquantr914_done2087
    inc rx910_rep
    nqp_rxmark rx910_bstack, rxquantr914_done2087, rx910_pos, rx910_rep
    goto rxquantr914_loop2086
  rxquantr914_done2087:
    nqp_rxmark rx910_bstack, rxquantr916_done2091, rx910_pos, 0
  rxquantr916_loop2090:
    repr_bind_attr_int rx910_cur, rx910_curclass, "$!pos", rx910_pos
    $P11 = rx910_cur."size"()
    repr_get_attr_int $I11, $P11, rx910_curclass, "$!pos"
    lt $I11, 0, rx910_fail2075
    goto rxsubrule917_pass2092
  rxsubrule917_back2093:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx910_curclass, "$!pos"
    lt $I11, 0, rx910_fail2075
  rxsubrule917_pass2092:
    rx910_cstack = rx910_cur."!cursor_capture"($P11, "size")
    set_addr $I11, rxsubrule917_back2093
    push rx910_bstack, $I11
    push rx910_bstack, 0
    push rx910_bstack, rx910_pos
    elements $I11, rx910_cstack
    push rx910_bstack, $I11
    repr_get_attr_int rx910_pos, $P11, rx910_curclass, "$!pos"
    nqp_rxpeek $I19, rx910_bstack, rxquantr916_done2091
    inc $I19
    inc $I19
    set rx910_rep, rx910_bstack[$I19]
    nqp_rxcommit rx910_bstack, rxquantr916_done2091
    inc rx910_rep
  rxquantr916_done2091:
    nqp_rxmark rx910_bstack, rxquantr918_done2095, rx910_pos, 0
  rxquantr918_loop2094:
    add $I11, rx910_pos, 1
    gt $I11, rx910_eos, rx910_fail2075
    substr $S10, rx910_tgt, rx910_pos, 1
    ne $S10, ucs4:".", rx910_fail2075
    add rx910_pos, 1
    repr_bind_attr_int rx910_cur, rx910_curclass, "$!pos", rx910_pos
    $P11 = rx910_cur."size"()
    repr_get_attr_int $I11, $P11, rx910_curclass, "$!pos"
    lt $I11, 0, rx910_fail2075
    nqp_rxmark rx910_bstack, rxsubrule919_pass2096, -1, 0
  rxsubrule919_pass2096:
    rx910_cstack = rx910_cur."!cursor_capture"($P11, "precision")
    repr_get_attr_int rx910_pos, $P11, rx910_curclass, "$!pos"
    nqp_rxpeek $I19, rx910_bstack, rxquantr918_done2095
    inc $I19
    inc $I19
    set rx910_rep, rx910_bstack[$I19]
    nqp_rxcommit rx910_bstack, rxquantr918_done2095
    inc rx910_rep
  rxquantr918_done2095:
    nqp_rxmark rx910_bstack, rxcap920_fail2098, rx910_pos, 0
    add $I11, rx910_pos, 1
    gt $I11, rx910_eos, rx910_fail2075
    substr $S10, rx910_tgt, rx910_pos, 1
    ne $S10, ucs4:"o", rx910_fail2075
    add rx910_pos, 1
    nqp_rxpeek $I19, rx910_bstack, rxcap920_fail2098
    inc $I19
    set $I11, rx910_bstack[$I19]
    repr_bind_attr_int rx910_cur, rx910_curclass, "$!pos", rx910_pos
    $P11 = rx910_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx910_pos)
    rx910_cstack = rx910_cur."!cursor_capture"($P11, "sym")
    goto rxcap920_done2097
  rxcap920_fail2098:
    goto rx910_fail2075
  rxcap920_done2097:
    rx910_cur."!cursor_pass"(rx910_pos, "directive:sym<o>", 'backtrack'=>1)
    .return (rx910_cur)
  rx910_restart2074:
    repr_get_attr_obj rx910_cstack, rx910_cur, rx910_curclass, "$!cstack"
  rx910_fail2075:
    unless rx910_bstack, rx910_done2073
    pop $I19, rx910_bstack
    if_null rx910_cstack, rx910_cstack_done2078
    unless rx910_cstack, rx910_cstack_done2078
    dec $I19
    set $P11, rx910_cstack[$I19]
  rx910_cstack_done2078:
    pop rx910_rep, rx910_bstack
    pop rx910_pos, rx910_bstack
    pop $I19, rx910_bstack
    lt rx910_pos, -1, rx910_done2073
    lt rx910_pos, 0, rx910_fail2075
    eq $I19, 0, rx910_fail2075
    nqp_islist $I20, rx910_cstack
    unless $I20, rx910_jump2076
    elements $I18, rx910_bstack
    le $I18, 0, rx910_cut2077
    dec $I18
    set $I18, rx910_bstack[$I18]
  rx910_cut2077:
    assign rx910_cstack, $I18
  rx910_jump2076:
    jump $I19
  rx910_done2073:
    rx910_cur."!cursor_fail"()
    .return (rx910_cur) 
.end
.HLL "nqp"
.namespace []
.sub "directive:sym<s>" :subid("cuid_202_1383914954.64741") :anon :lex :outer("cuid_305_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2069
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx921_start
    .local string rx921_tgt
    .local int rx921_pos
    .local int rx921_off
    .local int rx921_eos
    .local int rx921_rep
    .local pmc rx921_cur
    .local pmc rx921_curclass
    .local pmc rx921_bstack
    .local pmc rx921_cstack
    rx921_start = self."!cursor_start_all"()
    set rx921_cur, rx921_start[0]
    set rx921_tgt, rx921_start[1]
    set rx921_pos, rx921_start[2]
    set rx921_curclass, rx921_start[3]
    set rx921_bstack, rx921_start[4]
    set $I19, rx921_start[5]
    store_lex unicode:"$\x{a2}", rx921_cur
    length rx921_eos, rx921_tgt
    eq $I19, 1, rx921_restart2101
    gt rx921_pos, rx921_eos, rx921_fail2102
    repr_get_attr_int $I11, self, rx921_curclass, "$!from"
    ne $I11, -1, rxscan922_done2108
    goto rxscan922_scan2107
  rxscan922_loop2106:
    inc rx921_pos
    index rx921_pos, rx921_tgt, ucs4:"%", rx921_pos
    eq rx921_pos, -1, rx921_fail2102
    repr_bind_attr_int rx921_cur, rx921_curclass, "$!from", rx921_pos
  rxscan922_scan2107:
    nqp_rxmark rx921_bstack, rxscan922_loop2106, rx921_pos, 0
  rxscan922_done2108:
    add $I11, rx921_pos, 1
    gt $I11, rx921_eos, rx921_fail2102
    substr $S10, rx921_tgt, rx921_pos, 1
    ne $S10, ucs4:"%", rx921_fail2102
    add rx921_pos, 1
    nqp_rxmark rx921_bstack, rxquantr923_done2110, rx921_pos, 0
  rxquantr923_loop2109:
    repr_bind_attr_int rx921_cur, rx921_curclass, "$!pos", rx921_pos
    $P11 = rx921_cur."idx"()
    repr_get_attr_int $I11, $P11, rx921_curclass, "$!pos"
    lt $I11, 0, rx921_fail2102
    goto rxsubrule924_pass2111
  rxsubrule924_back2112:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx921_curclass, "$!pos"
    lt $I11, 0, rx921_fail2102
  rxsubrule924_pass2111:
    rx921_cstack = rx921_cur."!cursor_capture"($P11, "idx")
    set_addr $I11, rxsubrule924_back2112
    push rx921_bstack, $I11
    push rx921_bstack, 0
    push rx921_bstack, rx921_pos
    elements $I11, rx921_cstack
    push rx921_bstack, $I11
    repr_get_attr_int rx921_pos, $P11, rx921_curclass, "$!pos"
    nqp_rxpeek $I19, rx921_bstack, rxquantr923_done2110
    inc $I19
    inc $I19
    set rx921_rep, rx921_bstack[$I19]
    nqp_rxcommit rx921_bstack, rxquantr923_done2110
    inc rx921_rep
  rxquantr923_done2110:
    nqp_rxmark rx921_bstack, rxquantr925_done2114, rx921_pos, 0
  rxquantr925_loop2113:
    repr_bind_attr_int rx921_cur, rx921_curclass, "$!pos", rx921_pos
    $P11 = rx921_cur."flags"()
    repr_get_attr_int $I11, $P11, rx921_curclass, "$!pos"
    lt $I11, 0, rx921_fail2102
    goto rxsubrule926_pass2115
  rxsubrule926_back2116:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx921_curclass, "$!pos"
    lt $I11, 0, rx921_fail2102
  rxsubrule926_pass2115:
    rx921_cstack = rx921_cur."!cursor_capture"($P11, "flags")
    set_addr $I11, rxsubrule926_back2116
    push rx921_bstack, $I11
    push rx921_bstack, 0
    push rx921_bstack, rx921_pos
    elements $I11, rx921_cstack
    push rx921_bstack, $I11
    repr_get_attr_int rx921_pos, $P11, rx921_curclass, "$!pos"
    nqp_rxpeek $I19, rx921_bstack, rxquantr925_done2114
    inc $I19
    inc $I19
    set rx921_rep, rx921_bstack[$I19]
    nqp_rxcommit rx921_bstack, rxquantr925_done2114
    inc rx921_rep
    nqp_rxmark rx921_bstack, rxquantr925_done2114, rx921_pos, rx921_rep
    goto rxquantr925_loop2113
  rxquantr925_done2114:
    nqp_rxmark rx921_bstack, rxquantr927_done2118, rx921_pos, 0
  rxquantr927_loop2117:
    repr_bind_attr_int rx921_cur, rx921_curclass, "$!pos", rx921_pos
    $P11 = rx921_cur."size"()
    repr_get_attr_int $I11, $P11, rx921_curclass, "$!pos"
    lt $I11, 0, rx921_fail2102
    goto rxsubrule928_pass2119
  rxsubrule928_back2120:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx921_curclass, "$!pos"
    lt $I11, 0, rx921_fail2102
  rxsubrule928_pass2119:
    rx921_cstack = rx921_cur."!cursor_capture"($P11, "size")
    set_addr $I11, rxsubrule928_back2120
    push rx921_bstack, $I11
    push rx921_bstack, 0
    push rx921_bstack, rx921_pos
    elements $I11, rx921_cstack
    push rx921_bstack, $I11
    repr_get_attr_int rx921_pos, $P11, rx921_curclass, "$!pos"
    nqp_rxpeek $I19, rx921_bstack, rxquantr927_done2118
    inc $I19
    inc $I19
    set rx921_rep, rx921_bstack[$I19]
    nqp_rxcommit rx921_bstack, rxquantr927_done2118
    inc rx921_rep
  rxquantr927_done2118:
    nqp_rxmark rx921_bstack, rxquantr929_done2122, rx921_pos, 0
  rxquantr929_loop2121:
    add $I11, rx921_pos, 1
    gt $I11, rx921_eos, rx921_fail2102
    substr $S10, rx921_tgt, rx921_pos, 1
    ne $S10, ucs4:".", rx921_fail2102
    add rx921_pos, 1
    repr_bind_attr_int rx921_cur, rx921_curclass, "$!pos", rx921_pos
    $P11 = rx921_cur."size"()
    repr_get_attr_int $I11, $P11, rx921_curclass, "$!pos"
    lt $I11, 0, rx921_fail2102
    nqp_rxmark rx921_bstack, rxsubrule930_pass2123, -1, 0
  rxsubrule930_pass2123:
    rx921_cstack = rx921_cur."!cursor_capture"($P11, "precision")
    repr_get_attr_int rx921_pos, $P11, rx921_curclass, "$!pos"
    nqp_rxpeek $I19, rx921_bstack, rxquantr929_done2122
    inc $I19
    inc $I19
    set rx921_rep, rx921_bstack[$I19]
    nqp_rxcommit rx921_bstack, rxquantr929_done2122
    inc rx921_rep
  rxquantr929_done2122:
    nqp_rxmark rx921_bstack, rxcap931_fail2125, rx921_pos, 0
    add $I11, rx921_pos, 1
    gt $I11, rx921_eos, rx921_fail2102
    substr $S10, rx921_tgt, rx921_pos, 1
    ne $S10, ucs4:"s", rx921_fail2102
    add rx921_pos, 1
    nqp_rxpeek $I19, rx921_bstack, rxcap931_fail2125
    inc $I19
    set $I11, rx921_bstack[$I19]
    repr_bind_attr_int rx921_cur, rx921_curclass, "$!pos", rx921_pos
    $P11 = rx921_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx921_pos)
    rx921_cstack = rx921_cur."!cursor_capture"($P11, "sym")
    goto rxcap931_done2124
  rxcap931_fail2125:
    goto rx921_fail2102
  rxcap931_done2124:
    rx921_cur."!cursor_pass"(rx921_pos, "directive:sym<s>", 'backtrack'=>1)
    .return (rx921_cur)
  rx921_restart2101:
    repr_get_attr_obj rx921_cstack, rx921_cur, rx921_curclass, "$!cstack"
  rx921_fail2102:
    unless rx921_bstack, rx921_done2100
    pop $I19, rx921_bstack
    if_null rx921_cstack, rx921_cstack_done2105
    unless rx921_cstack, rx921_cstack_done2105
    dec $I19
    set $P11, rx921_cstack[$I19]
  rx921_cstack_done2105:
    pop rx921_rep, rx921_bstack
    pop rx921_pos, rx921_bstack
    pop $I19, rx921_bstack
    lt rx921_pos, -1, rx921_done2100
    lt rx921_pos, 0, rx921_fail2102
    eq $I19, 0, rx921_fail2102
    nqp_islist $I20, rx921_cstack
    unless $I20, rx921_jump2103
    elements $I18, rx921_bstack
    le $I18, 0, rx921_cut2104
    dec $I18
    set $I18, rx921_bstack[$I18]
  rx921_cut2104:
    assign rx921_cstack, $I18
  rx921_jump2103:
    jump $I19
  rx921_done2100:
    rx921_cur."!cursor_fail"()
    .return (rx921_cur) 
.end
.HLL "nqp"
.namespace []
.sub "directive:sym<u>" :subid("cuid_203_1383914954.64741") :anon :lex :outer("cuid_305_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2070
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx932_start
    .local string rx932_tgt
    .local int rx932_pos
    .local int rx932_off
    .local int rx932_eos
    .local int rx932_rep
    .local pmc rx932_cur
    .local pmc rx932_curclass
    .local pmc rx932_bstack
    .local pmc rx932_cstack
    rx932_start = self."!cursor_start_all"()
    set rx932_cur, rx932_start[0]
    set rx932_tgt, rx932_start[1]
    set rx932_pos, rx932_start[2]
    set rx932_curclass, rx932_start[3]
    set rx932_bstack, rx932_start[4]
    set $I19, rx932_start[5]
    store_lex unicode:"$\x{a2}", rx932_cur
    length rx932_eos, rx932_tgt
    eq $I19, 1, rx932_restart2128
    gt rx932_pos, rx932_eos, rx932_fail2129
    repr_get_attr_int $I11, self, rx932_curclass, "$!from"
    ne $I11, -1, rxscan933_done2135
    goto rxscan933_scan2134
  rxscan933_loop2133:
    inc rx932_pos
    index rx932_pos, rx932_tgt, ucs4:"%", rx932_pos
    eq rx932_pos, -1, rx932_fail2129
    repr_bind_attr_int rx932_cur, rx932_curclass, "$!from", rx932_pos
  rxscan933_scan2134:
    nqp_rxmark rx932_bstack, rxscan933_loop2133, rx932_pos, 0
  rxscan933_done2135:
    add $I11, rx932_pos, 1
    gt $I11, rx932_eos, rx932_fail2129
    substr $S10, rx932_tgt, rx932_pos, 1
    ne $S10, ucs4:"%", rx932_fail2129
    add rx932_pos, 1
    nqp_rxmark rx932_bstack, rxquantr934_done2137, rx932_pos, 0
  rxquantr934_loop2136:
    repr_bind_attr_int rx932_cur, rx932_curclass, "$!pos", rx932_pos
    $P11 = rx932_cur."idx"()
    repr_get_attr_int $I11, $P11, rx932_curclass, "$!pos"
    lt $I11, 0, rx932_fail2129
    goto rxsubrule935_pass2138
  rxsubrule935_back2139:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx932_curclass, "$!pos"
    lt $I11, 0, rx932_fail2129
  rxsubrule935_pass2138:
    rx932_cstack = rx932_cur."!cursor_capture"($P11, "idx")
    set_addr $I11, rxsubrule935_back2139
    push rx932_bstack, $I11
    push rx932_bstack, 0
    push rx932_bstack, rx932_pos
    elements $I11, rx932_cstack
    push rx932_bstack, $I11
    repr_get_attr_int rx932_pos, $P11, rx932_curclass, "$!pos"
    nqp_rxpeek $I19, rx932_bstack, rxquantr934_done2137
    inc $I19
    inc $I19
    set rx932_rep, rx932_bstack[$I19]
    nqp_rxcommit rx932_bstack, rxquantr934_done2137
    inc rx932_rep
  rxquantr934_done2137:
    nqp_rxmark rx932_bstack, rxquantr936_done2141, rx932_pos, 0
  rxquantr936_loop2140:
    repr_bind_attr_int rx932_cur, rx932_curclass, "$!pos", rx932_pos
    $P11 = rx932_cur."flags"()
    repr_get_attr_int $I11, $P11, rx932_curclass, "$!pos"
    lt $I11, 0, rx932_fail2129
    goto rxsubrule937_pass2142
  rxsubrule937_back2143:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx932_curclass, "$!pos"
    lt $I11, 0, rx932_fail2129
  rxsubrule937_pass2142:
    rx932_cstack = rx932_cur."!cursor_capture"($P11, "flags")
    set_addr $I11, rxsubrule937_back2143
    push rx932_bstack, $I11
    push rx932_bstack, 0
    push rx932_bstack, rx932_pos
    elements $I11, rx932_cstack
    push rx932_bstack, $I11
    repr_get_attr_int rx932_pos, $P11, rx932_curclass, "$!pos"
    nqp_rxpeek $I19, rx932_bstack, rxquantr936_done2141
    inc $I19
    inc $I19
    set rx932_rep, rx932_bstack[$I19]
    nqp_rxcommit rx932_bstack, rxquantr936_done2141
    inc rx932_rep
    nqp_rxmark rx932_bstack, rxquantr936_done2141, rx932_pos, rx932_rep
    goto rxquantr936_loop2140
  rxquantr936_done2141:
    nqp_rxmark rx932_bstack, rxquantr938_done2145, rx932_pos, 0
  rxquantr938_loop2144:
    repr_bind_attr_int rx932_cur, rx932_curclass, "$!pos", rx932_pos
    $P11 = rx932_cur."size"()
    repr_get_attr_int $I11, $P11, rx932_curclass, "$!pos"
    lt $I11, 0, rx932_fail2129
    goto rxsubrule939_pass2146
  rxsubrule939_back2147:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx932_curclass, "$!pos"
    lt $I11, 0, rx932_fail2129
  rxsubrule939_pass2146:
    rx932_cstack = rx932_cur."!cursor_capture"($P11, "size")
    set_addr $I11, rxsubrule939_back2147
    push rx932_bstack, $I11
    push rx932_bstack, 0
    push rx932_bstack, rx932_pos
    elements $I11, rx932_cstack
    push rx932_bstack, $I11
    repr_get_attr_int rx932_pos, $P11, rx932_curclass, "$!pos"
    nqp_rxpeek $I19, rx932_bstack, rxquantr938_done2145
    inc $I19
    inc $I19
    set rx932_rep, rx932_bstack[$I19]
    nqp_rxcommit rx932_bstack, rxquantr938_done2145
    inc rx932_rep
  rxquantr938_done2145:
    nqp_rxmark rx932_bstack, rxcap940_fail2149, rx932_pos, 0
    add $I11, rx932_pos, 1
    gt $I11, rx932_eos, rx932_fail2129
    substr $S10, rx932_tgt, rx932_pos, 1
    ne $S10, ucs4:"u", rx932_fail2129
    add rx932_pos, 1
    nqp_rxpeek $I19, rx932_bstack, rxcap940_fail2149
    inc $I19
    set $I11, rx932_bstack[$I19]
    repr_bind_attr_int rx932_cur, rx932_curclass, "$!pos", rx932_pos
    $P11 = rx932_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx932_pos)
    rx932_cstack = rx932_cur."!cursor_capture"($P11, "sym")
    goto rxcap940_done2148
  rxcap940_fail2149:
    goto rx932_fail2129
  rxcap940_done2148:
    rx932_cur."!cursor_pass"(rx932_pos, "directive:sym<u>", 'backtrack'=>1)
    .return (rx932_cur)
  rx932_restart2128:
    repr_get_attr_obj rx932_cstack, rx932_cur, rx932_curclass, "$!cstack"
  rx932_fail2129:
    unless rx932_bstack, rx932_done2127
    pop $I19, rx932_bstack
    if_null rx932_cstack, rx932_cstack_done2132
    unless rx932_cstack, rx932_cstack_done2132
    dec $I19
    set $P11, rx932_cstack[$I19]
  rx932_cstack_done2132:
    pop rx932_rep, rx932_bstack
    pop rx932_pos, rx932_bstack
    pop $I19, rx932_bstack
    lt rx932_pos, -1, rx932_done2127
    lt rx932_pos, 0, rx932_fail2129
    eq $I19, 0, rx932_fail2129
    nqp_islist $I20, rx932_cstack
    unless $I20, rx932_jump2130
    elements $I18, rx932_bstack
    le $I18, 0, rx932_cut2131
    dec $I18
    set $I18, rx932_bstack[$I18]
  rx932_cut2131:
    assign rx932_cstack, $I18
  rx932_jump2130:
    jump $I19
  rx932_done2127:
    rx932_cur."!cursor_fail"()
    .return (rx932_cur) 
.end
.HLL "nqp"
.namespace []
.sub "directive:sym<x>" :subid("cuid_204_1383914954.64741") :anon :lex :outer("cuid_305_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2071
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx941_start
    .local string rx941_tgt
    .local int rx941_pos
    .local int rx941_off
    .local int rx941_eos
    .local int rx941_rep
    .local pmc rx941_cur
    .local pmc rx941_curclass
    .local pmc rx941_bstack
    .local pmc rx941_cstack
    rx941_start = self."!cursor_start_all"()
    set rx941_cur, rx941_start[0]
    set rx941_tgt, rx941_start[1]
    set rx941_pos, rx941_start[2]
    set rx941_curclass, rx941_start[3]
    set rx941_bstack, rx941_start[4]
    set $I19, rx941_start[5]
    store_lex unicode:"$\x{a2}", rx941_cur
    length rx941_eos, rx941_tgt
    eq $I19, 1, rx941_restart2152
    gt rx941_pos, rx941_eos, rx941_fail2153
    repr_get_attr_int $I11, self, rx941_curclass, "$!from"
    ne $I11, -1, rxscan942_done2159
    goto rxscan942_scan2158
  rxscan942_loop2157:
    inc rx941_pos
    index rx941_pos, rx941_tgt, ucs4:"%", rx941_pos
    eq rx941_pos, -1, rx941_fail2153
    repr_bind_attr_int rx941_cur, rx941_curclass, "$!from", rx941_pos
  rxscan942_scan2158:
    nqp_rxmark rx941_bstack, rxscan942_loop2157, rx941_pos, 0
  rxscan942_done2159:
    add $I11, rx941_pos, 1
    gt $I11, rx941_eos, rx941_fail2153
    substr $S10, rx941_tgt, rx941_pos, 1
    ne $S10, ucs4:"%", rx941_fail2153
    add rx941_pos, 1
    nqp_rxmark rx941_bstack, rxquantr943_done2161, rx941_pos, 0
  rxquantr943_loop2160:
    repr_bind_attr_int rx941_cur, rx941_curclass, "$!pos", rx941_pos
    $P11 = rx941_cur."idx"()
    repr_get_attr_int $I11, $P11, rx941_curclass, "$!pos"
    lt $I11, 0, rx941_fail2153
    goto rxsubrule944_pass2162
  rxsubrule944_back2163:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx941_curclass, "$!pos"
    lt $I11, 0, rx941_fail2153
  rxsubrule944_pass2162:
    rx941_cstack = rx941_cur."!cursor_capture"($P11, "idx")
    set_addr $I11, rxsubrule944_back2163
    push rx941_bstack, $I11
    push rx941_bstack, 0
    push rx941_bstack, rx941_pos
    elements $I11, rx941_cstack
    push rx941_bstack, $I11
    repr_get_attr_int rx941_pos, $P11, rx941_curclass, "$!pos"
    nqp_rxpeek $I19, rx941_bstack, rxquantr943_done2161
    inc $I19
    inc $I19
    set rx941_rep, rx941_bstack[$I19]
    nqp_rxcommit rx941_bstack, rxquantr943_done2161
    inc rx941_rep
  rxquantr943_done2161:
    nqp_rxmark rx941_bstack, rxquantr945_done2165, rx941_pos, 0
  rxquantr945_loop2164:
    repr_bind_attr_int rx941_cur, rx941_curclass, "$!pos", rx941_pos
    $P11 = rx941_cur."flags"()
    repr_get_attr_int $I11, $P11, rx941_curclass, "$!pos"
    lt $I11, 0, rx941_fail2153
    goto rxsubrule946_pass2166
  rxsubrule946_back2167:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx941_curclass, "$!pos"
    lt $I11, 0, rx941_fail2153
  rxsubrule946_pass2166:
    rx941_cstack = rx941_cur."!cursor_capture"($P11, "flags")
    set_addr $I11, rxsubrule946_back2167
    push rx941_bstack, $I11
    push rx941_bstack, 0
    push rx941_bstack, rx941_pos
    elements $I11, rx941_cstack
    push rx941_bstack, $I11
    repr_get_attr_int rx941_pos, $P11, rx941_curclass, "$!pos"
    nqp_rxpeek $I19, rx941_bstack, rxquantr945_done2165
    inc $I19
    inc $I19
    set rx941_rep, rx941_bstack[$I19]
    nqp_rxcommit rx941_bstack, rxquantr945_done2165
    inc rx941_rep
    nqp_rxmark rx941_bstack, rxquantr945_done2165, rx941_pos, rx941_rep
    goto rxquantr945_loop2164
  rxquantr945_done2165:
    nqp_rxmark rx941_bstack, rxquantr947_done2169, rx941_pos, 0
  rxquantr947_loop2168:
    repr_bind_attr_int rx941_cur, rx941_curclass, "$!pos", rx941_pos
    $P11 = rx941_cur."size"()
    repr_get_attr_int $I11, $P11, rx941_curclass, "$!pos"
    lt $I11, 0, rx941_fail2153
    goto rxsubrule948_pass2170
  rxsubrule948_back2171:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx941_curclass, "$!pos"
    lt $I11, 0, rx941_fail2153
  rxsubrule948_pass2170:
    rx941_cstack = rx941_cur."!cursor_capture"($P11, "size")
    set_addr $I11, rxsubrule948_back2171
    push rx941_bstack, $I11
    push rx941_bstack, 0
    push rx941_bstack, rx941_pos
    elements $I11, rx941_cstack
    push rx941_bstack, $I11
    repr_get_attr_int rx941_pos, $P11, rx941_curclass, "$!pos"
    nqp_rxpeek $I19, rx941_bstack, rxquantr947_done2169
    inc $I19
    inc $I19
    set rx941_rep, rx941_bstack[$I19]
    nqp_rxcommit rx941_bstack, rxquantr947_done2169
    inc rx941_rep
  rxquantr947_done2169:
    nqp_rxmark rx941_bstack, rxquantr949_done2173, rx941_pos, 0
  rxquantr949_loop2172:
    add $I11, rx941_pos, 1
    gt $I11, rx941_eos, rx941_fail2153
    substr $S10, rx941_tgt, rx941_pos, 1
    ne $S10, ucs4:".", rx941_fail2153
    add rx941_pos, 1
    repr_bind_attr_int rx941_cur, rx941_curclass, "$!pos", rx941_pos
    $P11 = rx941_cur."size"()
    repr_get_attr_int $I11, $P11, rx941_curclass, "$!pos"
    lt $I11, 0, rx941_fail2153
    nqp_rxmark rx941_bstack, rxsubrule950_pass2174, -1, 0
  rxsubrule950_pass2174:
    rx941_cstack = rx941_cur."!cursor_capture"($P11, "precision")
    repr_get_attr_int rx941_pos, $P11, rx941_curclass, "$!pos"
    nqp_rxpeek $I19, rx941_bstack, rxquantr949_done2173
    inc $I19
    inc $I19
    set rx941_rep, rx941_bstack[$I19]
    nqp_rxcommit rx941_bstack, rxquantr949_done2173
    inc rx941_rep
  rxquantr949_done2173:
    nqp_rxmark rx941_bstack, rxcap951_fail2176, rx941_pos, 0
    ge rx941_pos, rx941_eos, rx941_fail2153
    substr $S11, rx941_tgt, rx941_pos, 1
    index $I11, ucs4:"xX", $S11
    lt $I11, 0, rx941_fail2153
    inc rx941_pos
    nqp_rxpeek $I19, rx941_bstack, rxcap951_fail2176
    inc $I19
    set $I11, rx941_bstack[$I19]
    repr_bind_attr_int rx941_cur, rx941_curclass, "$!pos", rx941_pos
    $P11 = rx941_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx941_pos)
    rx941_cstack = rx941_cur."!cursor_capture"($P11, "sym")
    goto rxcap951_done2175
  rxcap951_fail2176:
    goto rx941_fail2153
  rxcap951_done2175:
    rx941_cur."!cursor_pass"(rx941_pos, "directive:sym<x>", 'backtrack'=>1)
    .return (rx941_cur)
  rx941_restart2152:
    repr_get_attr_obj rx941_cstack, rx941_cur, rx941_curclass, "$!cstack"
  rx941_fail2153:
    unless rx941_bstack, rx941_done2151
    pop $I19, rx941_bstack
    if_null rx941_cstack, rx941_cstack_done2156
    unless rx941_cstack, rx941_cstack_done2156
    dec $I19
    set $P11, rx941_cstack[$I19]
  rx941_cstack_done2156:
    pop rx941_rep, rx941_bstack
    pop rx941_pos, rx941_bstack
    pop $I19, rx941_bstack
    lt rx941_pos, -1, rx941_done2151
    lt rx941_pos, 0, rx941_fail2153
    eq $I19, 0, rx941_fail2153
    nqp_islist $I20, rx941_cstack
    unless $I20, rx941_jump2154
    elements $I18, rx941_bstack
    le $I18, 0, rx941_cut2155
    dec $I18
    set $I18, rx941_bstack[$I18]
  rx941_cut2155:
    assign rx941_cstack, $I18
  rx941_jump2154:
    jump $I19
  rx941_done2151:
    rx941_cur."!cursor_fail"()
    .return (rx941_cur) 
.end
.HLL "nqp"
.namespace []
.sub "escape" :subid("cuid_205_1383914954.64741") :anon :lex :outer("cuid_305_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2073
    .param pmc self 
    $P5001 = self."!protoregex"("escape")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "escape:sym<%>" :subid("cuid_206_1383914954.64741") :anon :lex :outer("cuid_305_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2074
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx952_start
    .local string rx952_tgt
    .local int rx952_pos
    .local int rx952_off
    .local int rx952_eos
    .local int rx952_rep
    .local pmc rx952_cur
    .local pmc rx952_curclass
    .local pmc rx952_bstack
    .local pmc rx952_cstack
    rx952_start = self."!cursor_start_all"()
    set rx952_cur, rx952_start[0]
    set rx952_tgt, rx952_start[1]
    set rx952_pos, rx952_start[2]
    set rx952_curclass, rx952_start[3]
    set rx952_bstack, rx952_start[4]
    set $I19, rx952_start[5]
    store_lex unicode:"$\x{a2}", rx952_cur
    length rx952_eos, rx952_tgt
    eq $I19, 1, rx952_restart2179
    gt rx952_pos, rx952_eos, rx952_fail2180
    repr_get_attr_int $I11, self, rx952_curclass, "$!from"
    ne $I11, -1, rxscan953_done2186
    goto rxscan953_scan2185
  rxscan953_loop2184:
    inc rx952_pos
    index rx952_pos, rx952_tgt, ucs4:"%", rx952_pos
    eq rx952_pos, -1, rx952_fail2180
    repr_bind_attr_int rx952_cur, rx952_curclass, "$!from", rx952_pos
  rxscan953_scan2185:
    nqp_rxmark rx952_bstack, rxscan953_loop2184, rx952_pos, 0
  rxscan953_done2186:
    add $I11, rx952_pos, 1
    gt $I11, rx952_eos, rx952_fail2180
    substr $S10, rx952_tgt, rx952_pos, 1
    ne $S10, ucs4:"%", rx952_fail2180
    add rx952_pos, 1
    nqp_rxmark rx952_bstack, rxquantr954_done2188, rx952_pos, 0
  rxquantr954_loop2187:
    repr_bind_attr_int rx952_cur, rx952_curclass, "$!pos", rx952_pos
    $P11 = rx952_cur."flags"()
    repr_get_attr_int $I11, $P11, rx952_curclass, "$!pos"
    lt $I11, 0, rx952_fail2180
    goto rxsubrule955_pass2189
  rxsubrule955_back2190:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx952_curclass, "$!pos"
    lt $I11, 0, rx952_fail2180
  rxsubrule955_pass2189:
    rx952_cstack = rx952_cur."!cursor_capture"($P11, "flags")
    set_addr $I11, rxsubrule955_back2190
    push rx952_bstack, $I11
    push rx952_bstack, 0
    push rx952_bstack, rx952_pos
    elements $I11, rx952_cstack
    push rx952_bstack, $I11
    repr_get_attr_int rx952_pos, $P11, rx952_curclass, "$!pos"
    nqp_rxpeek $I19, rx952_bstack, rxquantr954_done2188
    inc $I19
    inc $I19
    set rx952_rep, rx952_bstack[$I19]
    nqp_rxcommit rx952_bstack, rxquantr954_done2188
    inc rx952_rep
    nqp_rxmark rx952_bstack, rxquantr954_done2188, rx952_pos, rx952_rep
    goto rxquantr954_loop2187
  rxquantr954_done2188:
    nqp_rxmark rx952_bstack, rxquantr956_done2192, rx952_pos, 0
  rxquantr956_loop2191:
    repr_bind_attr_int rx952_cur, rx952_curclass, "$!pos", rx952_pos
    $P11 = rx952_cur."size"()
    repr_get_attr_int $I11, $P11, rx952_curclass, "$!pos"
    lt $I11, 0, rx952_fail2180
    goto rxsubrule957_pass2193
  rxsubrule957_back2194:
    $P11 = $P11."!cursor_next"()
    repr_get_attr_int $I11, $P11, rx952_curclass, "$!pos"
    lt $I11, 0, rx952_fail2180
  rxsubrule957_pass2193:
    rx952_cstack = rx952_cur."!cursor_capture"($P11, "size")
    set_addr $I11, rxsubrule957_back2194
    push rx952_bstack, $I11
    push rx952_bstack, 0
    push rx952_bstack, rx952_pos
    elements $I11, rx952_cstack
    push rx952_bstack, $I11
    repr_get_attr_int rx952_pos, $P11, rx952_curclass, "$!pos"
    nqp_rxpeek $I19, rx952_bstack, rxquantr956_done2192
    inc $I19
    inc $I19
    set rx952_rep, rx952_bstack[$I19]
    nqp_rxcommit rx952_bstack, rxquantr956_done2192
    inc rx952_rep
  rxquantr956_done2192:
    nqp_rxmark rx952_bstack, rxcap958_fail2196, rx952_pos, 0
    add $I11, rx952_pos, 1
    gt $I11, rx952_eos, rx952_fail2180
    substr $S10, rx952_tgt, rx952_pos, 1
    ne $S10, ucs4:"%", rx952_fail2180
    add rx952_pos, 1
    nqp_rxpeek $I19, rx952_bstack, rxcap958_fail2196
    inc $I19
    set $I11, rx952_bstack[$I19]
    repr_bind_attr_int rx952_cur, rx952_curclass, "$!pos", rx952_pos
    $P11 = rx952_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx952_pos)
    rx952_cstack = rx952_cur."!cursor_capture"($P11, "sym")
    goto rxcap958_done2195
  rxcap958_fail2196:
    goto rx952_fail2180
  rxcap958_done2195:
    rx952_cur."!cursor_pass"(rx952_pos, "escape:sym<%>", 'backtrack'=>1)
    .return (rx952_cur)
  rx952_restart2179:
    repr_get_attr_obj rx952_cstack, rx952_cur, rx952_curclass, "$!cstack"
  rx952_fail2180:
    unless rx952_bstack, rx952_done2178
    pop $I19, rx952_bstack
    if_null rx952_cstack, rx952_cstack_done2183
    unless rx952_cstack, rx952_cstack_done2183
    dec $I19
    set $P11, rx952_cstack[$I19]
  rx952_cstack_done2183:
    pop rx952_rep, rx952_bstack
    pop rx952_pos, rx952_bstack
    pop $I19, rx952_bstack
    lt rx952_pos, -1, rx952_done2178
    lt rx952_pos, 0, rx952_fail2180
    eq $I19, 0, rx952_fail2180
    nqp_islist $I20, rx952_cstack
    unless $I20, rx952_jump2181
    elements $I18, rx952_bstack
    le $I18, 0, rx952_cut2182
    dec $I18
    set $I18, rx952_bstack[$I18]
  rx952_cut2182:
    assign rx952_cstack, $I18
  rx952_jump2181:
    jump $I19
  rx952_done2178:
    rx952_cur."!cursor_fail"()
    .return (rx952_cur) 
.end
.HLL "nqp"
.namespace []
.sub "literal" :subid("cuid_207_1383914954.64741") :anon :lex :outer("cuid_305_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2076
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx959_start
    .local string rx959_tgt
    .local int rx959_pos
    .local int rx959_off
    .local int rx959_eos
    .local int rx959_rep
    .local pmc rx959_cur
    .local pmc rx959_curclass
    .local pmc rx959_bstack
    .local pmc rx959_cstack
    rx959_start = self."!cursor_start_all"()
    set rx959_cur, rx959_start[0]
    set rx959_tgt, rx959_start[1]
    set rx959_pos, rx959_start[2]
    set rx959_curclass, rx959_start[3]
    set rx959_bstack, rx959_start[4]
    set $I19, rx959_start[5]
    store_lex unicode:"$\x{a2}", rx959_cur
    length rx959_eos, rx959_tgt
    eq $I19, 1, rx959_restart2199
    gt rx959_pos, rx959_eos, rx959_fail2200
    repr_get_attr_int $I11, self, rx959_curclass, "$!from"
    ne $I11, -1, rxscan960_done2206
    goto rxscan960_scan2205
  rxscan960_loop2204:
    inc rx959_pos
    gt rx959_pos, rx959_eos, rx959_fail2200
    repr_bind_attr_int rx959_cur, rx959_curclass, "$!from", rx959_pos
  rxscan960_scan2205:
    nqp_rxmark rx959_bstack, rxscan960_loop2204, rx959_pos, 0
  rxscan960_done2206:
    nqp_rxmark rx959_bstack, rxquantr961_done2208, -1, 0
  rxquantr961_loop2207:
    ge rx959_pos, rx959_eos, rx959_fail2200
    substr $S11, rx959_tgt, rx959_pos, 1
    index $I11, ucs4:"%", $S11
    ge $I11, 0, rx959_fail2200
    inc rx959_pos
    nqp_rxpeek $I19, rx959_bstack, rxquantr961_done2208
    inc $I19
    inc $I19
    set rx959_rep, rx959_bstack[$I19]
    nqp_rxcommit rx959_bstack, rxquantr961_done2208
    inc rx959_rep
    nqp_rxmark rx959_bstack, rxquantr961_done2208, rx959_pos, rx959_rep
    goto rxquantr961_loop2207
  rxquantr961_done2208:
    rx959_cur."!cursor_pass"(rx959_pos, "literal", 'backtrack'=>1)
    .return (rx959_cur)
  rx959_restart2199:
    repr_get_attr_obj rx959_cstack, rx959_cur, rx959_curclass, "$!cstack"
  rx959_fail2200:
    unless rx959_bstack, rx959_done2198
    pop $I19, rx959_bstack
    if_null rx959_cstack, rx959_cstack_done2203
    unless rx959_cstack, rx959_cstack_done2203
    dec $I19
    set $P11, rx959_cstack[$I19]
  rx959_cstack_done2203:
    pop rx959_rep, rx959_bstack
    pop rx959_pos, rx959_bstack
    pop $I19, rx959_bstack
    lt rx959_pos, -1, rx959_done2198
    lt rx959_pos, 0, rx959_fail2200
    eq $I19, 0, rx959_fail2200
    nqp_islist $I20, rx959_cstack
    unless $I20, rx959_jump2201
    elements $I18, rx959_bstack
    le $I18, 0, rx959_cut2202
    dec $I18
    set $I18, rx959_bstack[$I18]
  rx959_cut2202:
    assign rx959_cstack, $I18
  rx959_jump2201:
    jump $I19
  rx959_done2198:
    rx959_cur."!cursor_fail"()
    .return (rx959_cur) 
.end
.HLL "nqp"
.namespace []
.sub "idx" :subid("cuid_208_1383914954.64741") :anon :lex :outer("cuid_305_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2078
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx962_start
    .local string rx962_tgt
    .local int rx962_pos
    .local int rx962_off
    .local int rx962_eos
    .local int rx962_rep
    .local pmc rx962_cur
    .local pmc rx962_curclass
    .local pmc rx962_bstack
    .local pmc rx962_cstack
    rx962_start = self."!cursor_start_all"()
    set rx962_cur, rx962_start[0]
    set rx962_tgt, rx962_start[1]
    set rx962_pos, rx962_start[2]
    set rx962_curclass, rx962_start[3]
    set rx962_bstack, rx962_start[4]
    set $I19, rx962_start[5]
    store_lex unicode:"$\x{a2}", rx962_cur
    length rx962_eos, rx962_tgt
    eq $I19, 1, rx962_restart2211
    gt rx962_pos, rx962_eos, rx962_fail2212
    repr_get_attr_int $I11, self, rx962_curclass, "$!from"
    ne $I11, -1, rxscan963_done2218
    goto rxscan963_scan2217
  rxscan963_loop2216:
    inc rx962_pos
    gt rx962_pos, rx962_eos, rx962_fail2212
    repr_bind_attr_int rx962_cur, rx962_curclass, "$!from", rx962_pos
  rxscan963_scan2217:
    nqp_rxmark rx962_bstack, rxscan963_loop2216, rx962_pos, 0
  rxscan963_done2218:
    nqp_rxmark rx962_bstack, rxcap964_fail2220, rx962_pos, 0
    nqp_rxmark rx962_bstack, rxquantr965_done2222, -1, 0
  rxquantr965_loop2221:
    ge rx962_pos, rx962_eos, rx962_fail2212
    is_cclass $I11, .CCLASS_NUMERIC, rx962_tgt, rx962_pos
    unless $I11, rx962_fail2212
    add rx962_pos, 1
    nqp_rxpeek $I19, rx962_bstack, rxquantr965_done2222
    inc $I19
    inc $I19
    set rx962_rep, rx962_bstack[$I19]
    nqp_rxcommit rx962_bstack, rxquantr965_done2222
    inc rx962_rep
    nqp_rxmark rx962_bstack, rxquantr965_done2222, rx962_pos, rx962_rep
    goto rxquantr965_loop2221
  rxquantr965_done2222:
    nqp_rxpeek $I19, rx962_bstack, rxcap964_fail2220
    inc $I19
    set $I11, rx962_bstack[$I19]
    repr_bind_attr_int rx962_cur, rx962_curclass, "$!pos", rx962_pos
    $P11 = rx962_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx962_pos)
    rx962_cstack = rx962_cur."!cursor_capture"($P11, "param_index")
    goto rxcap964_done2219
  rxcap964_fail2220:
    goto rx962_fail2212
  rxcap964_done2219:
    add $I11, rx962_pos, 1
    gt $I11, rx962_eos, rx962_fail2212
    substr $S10, rx962_tgt, rx962_pos, 1
    ne $S10, ucs4:"$", rx962_fail2212
    add rx962_pos, 1
    rx962_cur."!cursor_pass"(rx962_pos, "idx", 'backtrack'=>1)
    .return (rx962_cur)
  rx962_restart2211:
    repr_get_attr_obj rx962_cstack, rx962_cur, rx962_curclass, "$!cstack"
  rx962_fail2212:
    unless rx962_bstack, rx962_done2210
    pop $I19, rx962_bstack
    if_null rx962_cstack, rx962_cstack_done2215
    unless rx962_cstack, rx962_cstack_done2215
    dec $I19
    set $P11, rx962_cstack[$I19]
  rx962_cstack_done2215:
    pop rx962_rep, rx962_bstack
    pop rx962_pos, rx962_bstack
    pop $I19, rx962_bstack
    lt rx962_pos, -1, rx962_done2210
    lt rx962_pos, 0, rx962_fail2212
    eq $I19, 0, rx962_fail2212
    nqp_islist $I20, rx962_cstack
    unless $I20, rx962_jump2213
    elements $I18, rx962_bstack
    le $I18, 0, rx962_cut2214
    dec $I18
    set $I18, rx962_bstack[$I18]
  rx962_cut2214:
    assign rx962_cstack, $I18
  rx962_jump2213:
    jump $I19
  rx962_done2210:
    rx962_cur."!cursor_fail"()
    .return (rx962_cur) 
.end
.HLL "nqp"
.namespace []
.sub "flags" :subid("cuid_209_1383914954.64741") :anon :lex :outer("cuid_305_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2082
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx966_start
    .local string rx966_tgt
    .local int rx966_pos
    .local int rx966_off
    .local int rx966_eos
    .local int rx966_rep
    .local pmc rx966_cur
    .local pmc rx966_curclass
    .local pmc rx966_bstack
    .local pmc rx966_cstack
    rx966_start = self."!cursor_start_all"()
    set rx966_cur, rx966_start[0]
    set rx966_tgt, rx966_start[1]
    set rx966_pos, rx966_start[2]
    set rx966_curclass, rx966_start[3]
    set rx966_bstack, rx966_start[4]
    set $I19, rx966_start[5]
    store_lex unicode:"$\x{a2}", rx966_cur
    length rx966_eos, rx966_tgt
    eq $I19, 1, rx966_restart2225
    gt rx966_pos, rx966_eos, rx966_fail2226
    repr_get_attr_int $I11, self, rx966_curclass, "$!from"
    ne $I11, -1, rxscan967_done2232
    goto rxscan967_scan2231
  rxscan967_loop2230:
    inc rx966_pos
    gt rx966_pos, rx966_eos, rx966_fail2226
    repr_bind_attr_int rx966_cur, rx966_curclass, "$!from", rx966_pos
  rxscan967_scan2231:
    nqp_rxmark rx966_bstack, rxscan967_loop2230, rx966_pos, 0
  rxscan967_done2232:
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt968_02234
    nqp_push_label $P11, alt968_12237
    nqp_push_label $P11, alt968_22240
    nqp_push_label $P11, alt968_32243
    nqp_push_label $P11, alt968_42246
    nqp_rxmark rx966_bstack, alt968_end2233, -1, 0
    rx966_cur."!alt"(rx966_pos, "alt_nfa__12_1383914963.50244", $P11)
    goto rx966_fail2226
  alt968_02234:
    nqp_rxmark rx966_bstack, rxcap969_fail2236, rx966_pos, 0
    add $I11, rx966_pos, 1
    gt $I11, rx966_eos, rx966_fail2226
    substr $S10, rx966_tgt, rx966_pos, 1
    ne $S10, ucs4:" ", rx966_fail2226
    add rx966_pos, 1
    nqp_rxpeek $I19, rx966_bstack, rxcap969_fail2236
    inc $I19
    set $I11, rx966_bstack[$I19]
    repr_bind_attr_int rx966_cur, rx966_curclass, "$!pos", rx966_pos
    $P11 = rx966_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx966_pos)
    rx966_cstack = rx966_cur."!cursor_capture"($P11, "space")
    goto rxcap969_done2235
  rxcap969_fail2236:
    goto rx966_fail2226
  rxcap969_done2235:
    goto alt968_end2233
  alt968_12237:
    nqp_rxmark rx966_bstack, rxcap970_fail2239, rx966_pos, 0
    add $I11, rx966_pos, 1
    gt $I11, rx966_eos, rx966_fail2226
    substr $S10, rx966_tgt, rx966_pos, 1
    ne $S10, ucs4:"+", rx966_fail2226
    add rx966_pos, 1
    nqp_rxpeek $I19, rx966_bstack, rxcap970_fail2239
    inc $I19
    set $I11, rx966_bstack[$I19]
    repr_bind_attr_int rx966_cur, rx966_curclass, "$!pos", rx966_pos
    $P11 = rx966_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx966_pos)
    rx966_cstack = rx966_cur."!cursor_capture"($P11, "plus")
    goto rxcap970_done2238
  rxcap970_fail2239:
    goto rx966_fail2226
  rxcap970_done2238:
    goto alt968_end2233
  alt968_22240:
    nqp_rxmark rx966_bstack, rxcap971_fail2242, rx966_pos, 0
    add $I11, rx966_pos, 1
    gt $I11, rx966_eos, rx966_fail2226
    substr $S10, rx966_tgt, rx966_pos, 1
    ne $S10, ucs4:"-", rx966_fail2226
    add rx966_pos, 1
    nqp_rxpeek $I19, rx966_bstack, rxcap971_fail2242
    inc $I19
    set $I11, rx966_bstack[$I19]
    repr_bind_attr_int rx966_cur, rx966_curclass, "$!pos", rx966_pos
    $P11 = rx966_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx966_pos)
    rx966_cstack = rx966_cur."!cursor_capture"($P11, "minus")
    goto rxcap971_done2241
  rxcap971_fail2242:
    goto rx966_fail2226
  rxcap971_done2241:
    goto alt968_end2233
  alt968_32243:
    nqp_rxmark rx966_bstack, rxcap972_fail2245, rx966_pos, 0
    add $I11, rx966_pos, 1
    gt $I11, rx966_eos, rx966_fail2226
    substr $S10, rx966_tgt, rx966_pos, 1
    ne $S10, ucs4:"0", rx966_fail2226
    add rx966_pos, 1
    nqp_rxpeek $I19, rx966_bstack, rxcap972_fail2245
    inc $I19
    set $I11, rx966_bstack[$I19]
    repr_bind_attr_int rx966_cur, rx966_curclass, "$!pos", rx966_pos
    $P11 = rx966_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx966_pos)
    rx966_cstack = rx966_cur."!cursor_capture"($P11, "zero")
    goto rxcap972_done2244
  rxcap972_fail2245:
    goto rx966_fail2226
  rxcap972_done2244:
    goto alt968_end2233
  alt968_42246:
    nqp_rxmark rx966_bstack, rxcap973_fail2248, rx966_pos, 0
    add $I11, rx966_pos, 1
    gt $I11, rx966_eos, rx966_fail2226
    substr $S10, rx966_tgt, rx966_pos, 1
    ne $S10, ucs4:"#", rx966_fail2226
    add rx966_pos, 1
    nqp_rxpeek $I19, rx966_bstack, rxcap973_fail2248
    inc $I19
    set $I11, rx966_bstack[$I19]
    repr_bind_attr_int rx966_cur, rx966_curclass, "$!pos", rx966_pos
    $P11 = rx966_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx966_pos)
    rx966_cstack = rx966_cur."!cursor_capture"($P11, "hash")
    goto rxcap973_done2247
  rxcap973_fail2248:
    goto rx966_fail2226
  rxcap973_done2247:
    goto alt968_end2233
  alt968_end2233:
    rx966_cur."!cursor_pass"(rx966_pos, "flags", 'backtrack'=>1)
    .return (rx966_cur)
  rx966_restart2225:
    repr_get_attr_obj rx966_cstack, rx966_cur, rx966_curclass, "$!cstack"
  rx966_fail2226:
    unless rx966_bstack, rx966_done2224
    pop $I19, rx966_bstack
    if_null rx966_cstack, rx966_cstack_done2229
    unless rx966_cstack, rx966_cstack_done2229
    dec $I19
    set $P11, rx966_cstack[$I19]
  rx966_cstack_done2229:
    pop rx966_rep, rx966_bstack
    pop rx966_pos, rx966_bstack
    pop $I19, rx966_bstack
    lt rx966_pos, -1, rx966_done2224
    lt rx966_pos, 0, rx966_fail2226
    eq $I19, 0, rx966_fail2226
    nqp_islist $I20, rx966_cstack
    unless $I20, rx966_jump2227
    elements $I18, rx966_bstack
    le $I18, 0, rx966_cut2228
    dec $I18
    set $I18, rx966_bstack[$I18]
  rx966_cut2228:
    assign rx966_cstack, $I18
  rx966_jump2227:
    jump $I19
  rx966_done2224:
    rx966_cur."!cursor_fail"()
    .return (rx966_cur) 
.end
.HLL "nqp"
.namespace []
.sub "size" :subid("cuid_210_1383914954.64741") :anon :lex :outer("cuid_305_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2090
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx974_start
    .local string rx974_tgt
    .local int rx974_pos
    .local int rx974_off
    .local int rx974_eos
    .local int rx974_rep
    .local pmc rx974_cur
    .local pmc rx974_curclass
    .local pmc rx974_bstack
    .local pmc rx974_cstack
    rx974_start = self."!cursor_start_all"()
    set rx974_cur, rx974_start[0]
    set rx974_tgt, rx974_start[1]
    set rx974_pos, rx974_start[2]
    set rx974_curclass, rx974_start[3]
    set rx974_bstack, rx974_start[4]
    set $I19, rx974_start[5]
    store_lex unicode:"$\x{a2}", rx974_cur
    length rx974_eos, rx974_tgt
    eq $I19, 1, rx974_restart2251
    gt rx974_pos, rx974_eos, rx974_fail2252
    repr_get_attr_int $I11, self, rx974_curclass, "$!from"
    ne $I11, -1, rxscan975_done2258
    goto rxscan975_scan2257
  rxscan975_loop2256:
    inc rx974_pos
    gt rx974_pos, rx974_eos, rx974_fail2252
    repr_bind_attr_int rx974_cur, rx974_curclass, "$!from", rx974_pos
  rxscan975_scan2257:
    nqp_rxmark rx974_bstack, rxscan975_loop2256, rx974_pos, 0
  rxscan975_done2258:
    new $P11, "ResizableIntegerArray"
    nqp_push_label $P11, alt976_02260
    nqp_push_label $P11, alt976_12263
    nqp_rxmark rx974_bstack, alt976_end2259, -1, 0
    rx974_cur."!alt"(rx974_pos, "alt_nfa__13_1383914963.51399", $P11)
    goto rx974_fail2252
  alt976_02260:
    nqp_rxmark rx974_bstack, rxquantr977_done2262, rx974_pos, 0
  rxquantr977_loop2261:
    ge rx974_pos, rx974_eos, rx974_fail2252
    is_cclass $I11, .CCLASS_NUMERIC, rx974_tgt, rx974_pos
    unless $I11, rx974_fail2252
    add rx974_pos, 1
    nqp_rxpeek $I19, rx974_bstack, rxquantr977_done2262
    inc $I19
    inc $I19
    set rx974_rep, rx974_bstack[$I19]
    nqp_rxcommit rx974_bstack, rxquantr977_done2262
    inc rx974_rep
    nqp_rxmark rx974_bstack, rxquantr977_done2262, rx974_pos, rx974_rep
    goto rxquantr977_loop2261
  rxquantr977_done2262:
    goto alt976_end2259
  alt976_12263:
    nqp_rxmark rx974_bstack, rxcap978_fail2265, rx974_pos, 0
    add $I11, rx974_pos, 1
    gt $I11, rx974_eos, rx974_fail2252
    substr $S10, rx974_tgt, rx974_pos, 1
    ne $S10, ucs4:"*", rx974_fail2252
    add rx974_pos, 1
    nqp_rxpeek $I19, rx974_bstack, rxcap978_fail2265
    inc $I19
    set $I11, rx974_bstack[$I19]
    repr_bind_attr_int rx974_cur, rx974_curclass, "$!pos", rx974_pos
    $P11 = rx974_cur."!cursor_start_subcapture"($I11)
    $P11."!cursor_pass"(rx974_pos)
    rx974_cstack = rx974_cur."!cursor_capture"($P11, "star")
    goto rxcap978_done2264
  rxcap978_fail2265:
    goto rx974_fail2252
  rxcap978_done2264:
    goto alt976_end2259
  alt976_end2259:
    rx974_cur."!cursor_pass"(rx974_pos, "size", 'backtrack'=>1)
    .return (rx974_cur)
  rx974_restart2251:
    repr_get_attr_obj rx974_cstack, rx974_cur, rx974_curclass, "$!cstack"
  rx974_fail2252:
    unless rx974_bstack, rx974_done2250
    pop $I19, rx974_bstack
    if_null rx974_cstack, rx974_cstack_done2255
    unless rx974_cstack, rx974_cstack_done2255
    dec $I19
    set $P11, rx974_cstack[$I19]
  rx974_cstack_done2255:
    pop rx974_rep, rx974_bstack
    pop rx974_pos, rx974_bstack
    pop $I19, rx974_bstack
    lt rx974_pos, -1, rx974_done2250
    lt rx974_pos, 0, rx974_fail2252
    eq $I19, 0, rx974_fail2252
    nqp_islist $I20, rx974_cstack
    unless $I20, rx974_jump2253
    elements $I18, rx974_bstack
    le $I18, 0, rx974_cut2254
    dec $I18
    set $I18, rx974_bstack[$I18]
  rx974_cut2254:
    assign rx974_cstack, $I18
  rx974_jump2253:
    jump $I19
  rx974_done2250:
    rx974_cur."!cursor_fail"()
    .return (rx974_cur) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_306_1383914954.64741") :anon :lex :outer("cuid_301_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2095
    .const 'Sub' $P5033 = 'cuid_307_1383914954.64741' 
    capture_lex $P5033 
    .const 'Sub' $P5033 = 'cuid_308_1383914954.64741' 
    capture_lex $P5033 
    .const 'Sub' $P5033 = 'cuid_310_1383914954.64741' 
    capture_lex $P5033 
    .const 'Sub' $P5033 = 'cuid_311_1383914954.64741' 
    capture_lex $P5033 
    .const 'Sub' $P5033 = 'cuid_314_1383914954.64741' 
    capture_lex $P5033 
    .const 'Sub' $P5033 = 'cuid_315_1383914954.64741' 
    capture_lex $P5033 
    .const 'Sub' $P5033 = 'cuid_316_1383914954.64741' 
    capture_lex $P5033 
    .const 'Sub' $P5033 = 'cuid_317_1383914954.64741' 
    capture_lex $P5033 
    .const 'Sub' $P5033 = 'cuid_318_1383914954.64741' 
    capture_lex $P5033 
    .const 'Sub' $P5033 = 'cuid_319_1383914954.64741' 
    capture_lex $P5033 
    .const 'Sub' $P5033 = 'cuid_321_1383914954.64741' 
    capture_lex $P5033 
    .const 'Sub' $P5033 = 'cuid_211_1383914954.64741' 
    capture_lex $P5033 
    .const 'Sub' $P5033 = 'cuid_213_1383914954.64741' 
    capture_lex $P5033 
    .const 'Sub' $P5033 = 'cuid_214_1383914954.64741' 
    capture_lex $P5033 
    .const 'Sub' $P5033 = 'cuid_215_1383914954.64741' 
    capture_lex $P5033 
    .const 'Sub' $P5033 = 'cuid_216_1383914954.64741' 
    capture_lex $P5033 
    .const 'Sub' $P5033 = 'cuid_217_1383914954.64741' 
    capture_lex $P5033 
    .const 'Sub' $P5033 = 'cuid_218_1383914954.64741' 
    capture_lex $P5033 
    .const 'Sub' $P5033 = 'cuid_219_1383914954.64741' 
    capture_lex $P5033 
    .const 'Sub' $P5033 = 'cuid_220_1383914954.64741' 
    capture_lex $P5033 
    .const 'Sub' $P5033 = 'cuid_221_1383914954.64741' 
    capture_lex $P5033 
    .const 'Sub' $P5033 = 'cuid_222_1383914954.64741' 
    capture_lex $P5033 
    .const 'Sub' $P5033 = 'cuid_223_1383914954.64741' 
    capture_lex $P5033 
    .const 'Sub' $P5033 = 'cuid_224_1383914954.64741' 
    capture_lex $P5033 
    .const 'Sub' $P5033 = 'cuid_225_1383914954.64741' 
    capture_lex $P5033 
    .const 'Sub' $P5033 = 'cuid_226_1383914954.64741' 
    capture_lex $P5033 
    .const 'Sub' $P5033 = 'cuid_227_1383914954.64741' 
    capture_lex $P5033 
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
    .lex "&stringify-to-precision", $P111 
    .lex "&stringify-to-precision2", $P112 
    .lex "&fixed-point", $P113 
    .lex "&scientific", $P114 
    .lex "&shortest", $P115 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P103, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P104, $P5002
    .const 'Sub' $P5003 = 'cuid_307_1383914954.64741' 
    capture_lex $P5003
    set $P105, $P5003
    .const 'Sub' $P5004 = 'cuid_308_1383914954.64741' 
    capture_lex $P5004
    set $P106, $P5004
    .const 'Sub' $P5005 = 'cuid_310_1383914954.64741' 
    capture_lex $P5005
    set $P107, $P5005
    .const 'Sub' $P5006 = 'cuid_311_1383914954.64741' 
    capture_lex $P5006
    set $P108, $P5006
    .const 'Sub' $P5007 = 'cuid_314_1383914954.64741' 
    capture_lex $P5007
    set $P109, $P5007
    .const 'Sub' $P5008 = 'cuid_315_1383914954.64741' 
    capture_lex $P5008
    set $P110, $P5008
    .const 'Sub' $P5009 = 'cuid_316_1383914954.64741' 
    capture_lex $P5009
    set $P111, $P5009
    .const 'Sub' $P5010 = 'cuid_317_1383914954.64741' 
    capture_lex $P5010
    set $P112, $P5010
    .const 'Sub' $P5011 = 'cuid_318_1383914954.64741' 
    capture_lex $P5011
    set $P113, $P5011
    .const 'Sub' $P5012 = 'cuid_319_1383914954.64741' 
    capture_lex $P5012
    set $P114, $P5012
    .const 'Sub' $P5013 = 'cuid_321_1383914954.64741' 
    capture_lex $P5013
    set $P115, $P5013
.annotate 'line', 2096
    get_knowhow $P5014
    $P5015 = $P5014."new_type"("P6bigint" :named("repr"))
    set $P103, $P5015
    repr_box_int $P5016, 0, $P103
    set $P104, $P5016
    .const 'Sub' $P5017 = 'cuid_211_1383914954.64741' 
    capture_lex $P5017
    .const 'Sub' $P5018 = 'cuid_213_1383914954.64741' 
    capture_lex $P5018
    .const 'Sub' $P5019 = 'cuid_214_1383914954.64741' 
    capture_lex $P5019
    .const 'Sub' $P5020 = 'cuid_215_1383914954.64741' 
    capture_lex $P5020
    .const 'Sub' $P5021 = 'cuid_216_1383914954.64741' 
    capture_lex $P5021
    .const 'Sub' $P5022 = 'cuid_217_1383914954.64741' 
    capture_lex $P5022
    .const 'Sub' $P5023 = 'cuid_218_1383914954.64741' 
    capture_lex $P5023
    .const 'Sub' $P5024 = 'cuid_219_1383914954.64741' 
    capture_lex $P5024
    .const 'Sub' $P5025 = 'cuid_220_1383914954.64741' 
    capture_lex $P5025
    .const 'Sub' $P5026 = 'cuid_221_1383914954.64741' 
    capture_lex $P5026
    .const 'Sub' $P5027 = 'cuid_222_1383914954.64741' 
    capture_lex $P5027
    .const 'Sub' $P5028 = 'cuid_223_1383914954.64741' 
    capture_lex $P5028
    .const 'Sub' $P5029 = 'cuid_224_1383914954.64741' 
    capture_lex $P5029
    .const 'Sub' $P5030 = 'cuid_225_1383914954.64741' 
    capture_lex $P5030
    .const 'Sub' $P5031 = 'cuid_226_1383914954.64741' 
    capture_lex $P5031
    .const 'Sub' $P5032 = 'cuid_227_1383914954.64741' 
    capture_lex $P5032
    .return ($P5032) 
.end
.HLL "nqp"
.namespace []
.sub "infix_x" :subid("cuid_307_1383914954.64741") :anon :lex :outer("cuid_306_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2114
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "@strings", $P101 
    .lex "$i", $P102 
    .lex "$s", _lex_param_0 
    .lex "$n", _lex_param_1 
    .local pmc tmp_10 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P102, $P5002
    box $P5003, 0
    set $P102, $P5003
    new $P5006, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5006, while979_handlers2269
    push_eh $P5006
  while979_test2266:
    set tmp_10, $P102
    set $N5002, tmp_10
    set $N5003, 1
    add $N5001, $N5002, $N5003
    box $P5004, $N5001
    set $P102, $P5004
    set $N5001, tmp_10
    set $N5002, _lex_param_1
    islt $I5001, $N5001, $N5002
    box $P5007, $I5001
    set $P5005, $P5007
    unless $I5001 goto while979_done2270 
  while979_redo2268:
.annotate 'line', 2117
    $P5004 = $P101."push"(_lex_param_0)
    set $P5005, $P5004
    goto while979_test2266 
  while979_handlers2269:
    .get_results ($P5006)
    pop_upto_eh $P5006
    getattribute $P5006, $P5006, 'type'
    eq $P5006, .CONTROL_LOOP_NEXT, while979_test2266
    eq $P5006, .CONTROL_LOOP_REDO, while979_redo2268
  while979_done2270:
    pop_eh 
    join $S5001, "", $P101
    .return ($S5001) 
.end
.HLL "nqp"
.namespace []
.sub "next_argument" :subid("cuid_308_1383914954.64741") :anon :lex :outer("cuid_306_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2121
    .param pmc _lex_param_0 
    .lex "$/", _lex_param_0 
    .local pmc fb_tmp_173 
    .local pmc fb_tmp_174 
    .local pmc fb_tmp_175 
    .local pmc pkg_viv_tmp_22 
    .local pmc fb_tmp_176 
    .local pmc fb_tmp_177 
    .local pmc fb_tmp_178 
    .local pmc pkg_viv_tmp_23 
    .local pmc tmp_11 
    .local pmc fb_tmp_179 
    unless_null _lex_param_0, fallback2275
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set _lex_param_0, $P5001
  fallback2275:
    set fb_tmp_173, _lex_param_0
    repr_defined $I5001, fb_tmp_173
    unless $I5001 goto if981_else2273 
    set $P5002, fb_tmp_173["idx"]
    set $P5004, $P5002
    goto if981_end2274
  if981_else2273:
    null $P5003
    set $P5004, $P5003
  if981_end2274:
    unless_null $P5004, vivi_9822276
    nqp_get_sc_object $P5005, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5004, $P5005
  vivi_9822276:
    unless $P5004 goto if980_else2271 
.annotate 'line', 2122
    box $P5006, 0
    store_lex "$assert_used_args", $P5006
    find_dynamic_lex $P5007, "@*ARGS_HAVE"
    unless_null $P5007, fallback2279
    nqp_get_sc_object $P5009, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 0
    get_who $P5008, $P5009
    set pkg_viv_tmp_22, $P5008
    set fb_tmp_175, pkg_viv_tmp_22
    repr_defined $I5003, fb_tmp_175
    unless $I5003 goto if984_else2280 
    set $P5010, fb_tmp_175["@ARGS_HAVE"]
    set $P5012, $P5010
    goto if984_end2281
  if984_else2280:
    null $P5011
    set $P5012, $P5011
  if984_end2281:
    unless_null $P5012, vivi_9852282
    new $P5013, 'ResizablePMCArray'
    set pkg_viv_tmp_22["@ARGS_HAVE"], $P5013
    set $P5012, $P5013
  vivi_9852282:
    unless_null $P5012, vivi_9862283
    die "Contextual @*ARGS_HAVE not found"
    box $P5014, "Contextual @*ARGS_HAVE not found"
    set $P5012, $P5014
  vivi_9862283:
    set $P5007, $P5012
  fallback2279:
    set fb_tmp_174, $P5007
    repr_defined $I5002, fb_tmp_174
    unless $I5002 goto if983_else2277 
.annotate 'line', 2124
    unless_null _lex_param_0, fallback2286
    nqp_get_sc_object $P5016, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set _lex_param_0, $P5016
  fallback2286:
    set fb_tmp_176, _lex_param_0
    repr_defined $I5004, fb_tmp_176
    unless $I5004 goto if987_else2284 
    set $P5017, fb_tmp_176["idx"]
    set $P5019, $P5017
    goto if987_end2285
  if987_else2284:
    null $P5018
    set $P5019, $P5018
  if987_end2285:
    unless_null $P5019, vivi_9882287
    nqp_get_sc_object $P5020, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5019, $P5020
  vivi_9882287:
    $P5021 = $P5019."ast"()
    set $I5005, $P5021
    set $P5015, fb_tmp_174[$I5005]
    set $P5023, $P5015
    goto if983_end2278
  if983_else2277:
    null $P5022
    set $P5023, $P5022
  if983_end2278:
    unless_null $P5023, vivi_9892288
    nqp_get_sc_object $P5024, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5023, $P5024
  vivi_9892288:
    set $P5037, $P5023
    goto if980_end2272
  if980_else2271:
.annotate 'line', 2126
    find_dynamic_lex $P5025, "@*ARGS_HAVE"
    unless_null $P5025, fallback2291
    nqp_get_sc_object $P5027, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 0
    get_who $P5026, $P5027
    set pkg_viv_tmp_23, $P5026
    set fb_tmp_178, pkg_viv_tmp_23
    repr_defined $I5007, fb_tmp_178
    unless $I5007 goto if991_else2292 
    set $P5028, fb_tmp_178["@ARGS_HAVE"]
    set $P5030, $P5028
    goto if991_end2293
  if991_else2292:
    null $P5029
    set $P5030, $P5029
  if991_end2293:
    unless_null $P5030, vivi_9922294
    new $P5031, 'ResizablePMCArray'
    set pkg_viv_tmp_23["@ARGS_HAVE"], $P5031
    set $P5030, $P5031
  vivi_9922294:
    unless_null $P5030, vivi_9932295
    die "Contextual @*ARGS_HAVE not found"
    box $P5032, "Contextual @*ARGS_HAVE not found"
    set $P5030, $P5032
  vivi_9932295:
    set $P5025, $P5030
  fallback2291:
    set fb_tmp_177, $P5025
    repr_defined $I5006, fb_tmp_177
    unless $I5006 goto if990_else2289 
    find_dynamic_lex $P5034, "$*ARGS_USED"
    unless_null $P5034, fallback2296
    nqp_get_sc_object $P5036, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 0
    get_who $P5035, $P5036
    set fb_tmp_179, $P5035
    repr_defined $I5008, fb_tmp_179
    unless $I5008 goto if994_else2297 
    set $P5037, fb_tmp_179["$ARGS_USED"]
    set $P5039, $P5037
    goto if994_end2298
  if994_else2297:
    null $P5038
    set $P5039, $P5038
  if994_end2298:
    unless_null $P5039, vivi_9952299
    nqp_get_sc_object $P5040, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5039, $P5040
  vivi_9952299:
    unless_null $P5039, vivi_9962300
    die "Contextual $*ARGS_USED not found"
    box $P5041, "Contextual $*ARGS_USED not found"
    set $P5039, $P5041
  vivi_9962300:
    set $P5034, $P5039
  fallback2296:
    set tmp_11, $P5034
    set $N5002, tmp_11
    set $N5003, 1
    add $N5001, $N5002, $N5003
    box $P5042, $N5001
    store_dynamic_lex "$*ARGS_USED", $P5042
    set $I5008, tmp_11
    set $P5033, fb_tmp_177[$I5008]
    set $P5035, $P5033
    goto if990_end2290
  if990_else2289:
    null $P5034
    set $P5035, $P5034
  if990_end2290:
    unless_null $P5035, vivi_9972301
    nqp_get_sc_object $P5036, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5035, $P5036
  vivi_9972301:
    set $P5037, $P5035
  if980_end2272:
    .return ($P5037) 
.end
.HLL "nqp"
.namespace []
.sub "intify" :subid("cuid_310_1383914954.64741") :anon :lex :outer("cuid_306_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2131
    .param pmc _lex_param_0 
    .const 'Sub' $P5016 = 'cuid_309_1383914954.64741' 
    capture_lex $P5016 
    .lex "$number_representation", _lex_param_0 
    root_new $P101, ['parrot';'Continuation']
    set_label $P101, lexotic_2302
    .lex "RETURN", $P101
    find_lex $P5004, "@handlers"
    set $P5001, $P5004
    iter $P5003, $P5004
  for_next2306:
    unless $P5003, for_done2308
    shift $P5006, $P5003
  for_redo2307:
    .const 'Sub' $P5005 = 'cuid_309_1383914954.64741' 
    capture_lex $P5005
    $P5001 = $P5005($P5006)
    goto for_next2306
  for_done2308:
    nqp_isint $I5001, _lex_param_0
    unless $I5001 goto if999_else2309 
.annotate 'line', 2138
    set $I5002, _lex_param_0
    find_lex $P5008, "$knowhow"
    repr_box_int $P5007, $I5002, $P5008
    set $P5015, $P5007
    goto if999_end2310
  if999_else2309:
.annotate 'line', 2140
    nqp_isnum $I5003, _lex_param_0
    set $I5005, $I5003
    if $I5003 goto unless1001_end2314 
    nqp_isstr $I5004, _lex_param_0
    set $I5005, $I5004
  unless1001_end2314:
    unless $I5005 goto if1000_else2311 
.annotate 'line', 2142
    set $N5001, _lex_param_0
    set $N5002, 0
    isgt $I5006, $N5001, $N5002
    unless $I5006 goto if1002_else2315 
.annotate 'line', 2143
    set $N5004, _lex_param_0
    floor $N5003, $N5004
    find_lex $P5010, "$knowhow"
    nqp_bigint_from_num $P5009, $N5003, $P5010
    set $P5013, $P5009
    goto if1002_end2316
  if1002_else2315:
.annotate 'line', 2146
    set $N5006, _lex_param_0
    ceil $N5005, $N5006
    find_lex $P5012, "$knowhow"
    nqp_bigint_from_num $P5011, $N5005, $P5012
    set $P5013, $P5011
  if1002_end2316:
    set $P5014, $P5013
    goto if1000_end2312
  if1000_else2311:
.annotate 'line', 2149

    set $P5014, _lex_param_0
  if1000_end2312:
    set $P5015, $P5014
  if999_end2310:
    goto lexotic_2303
  lexotic_2302:
    .get_results ($P5015)
  lexotic_2303:
    .return ($P5015) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_309_1383914954.64741") :anon :lex :outer("cuid_310_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2132
    .param pmc _lex_param_0 
    .lex "$handler", _lex_param_0 
.annotate 'line', 2133
    find_lex $P5001, "$number_representation"
    $P5002 = _lex_param_0."mine"($P5001)
    set $P5006, $P5002
    unless $P5002 goto if998_end2305 
.annotate 'line', 2134
    find_lex $P5003, "$number_representation"
    $P5004 = _lex_param_0."int"($P5003)
    $P5005 = "RETURN"($P5004)
    set $P5006, $P5005
  if998_end2305:
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "padding_char" :subid("cuid_311_1383914954.64741") :anon :lex :outer("cuid_306_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2155
    .param pmc _lex_param_0 
    .const 'Sub' $P5036 = 'cuid_212_1383914954.64741' 
    capture_lex $P5036 
    .const 'Sub' $P5036 = 'cuid_312_1383914954.64741' 
    capture_lex $P5036 
    .lex "$padding_char", $P101 
    .lex "$st", _lex_param_0 
    .local pmc fb_tmp_180 
    .local pmc fb_tmp_181 
    .local pmc fb_tmp_182 
    .local pmc fb_tmp_183 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P101, $P5001
    box $P5002, " "
    set $P101, $P5002
    set fb_tmp_180, _lex_param_0
    repr_defined $I5002, fb_tmp_180
    unless $I5002 goto if1006_else2323 
    set $P5003, fb_tmp_180["precision"]
    set $P5005, $P5003
    goto if1006_end2324
  if1006_else2323:
    null $P5004
    set $P5005, $P5004
  if1006_end2324:
    unless_null $P5005, vivi_10072325
    nqp_get_sc_object $P5006, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5005, $P5006
  vivi_10072325:
    isfalse $I5001, $P5005
    set $I5004, $I5001
    unless $I5001 goto if1005_end2322 
.annotate 'line', 2157
    $P5007 = "&has_flag"(_lex_param_0, "minus")
    isfalse $I5003, $P5007
    set $I5004, $I5003
  if1005_end2322:
    box $P5025, $I5004
    set $P5024, $P5025
    if $I5004 goto unless1004_end2320 
.annotate 'line', 2158
    find_lex $P5009, "$?PACKAGE"
    get_who $P5008, $P5009
    set fb_tmp_181, $P5008
    repr_defined $I5005, fb_tmp_181
    unless $I5005 goto if1008_else2326 
    set $P5010, fb_tmp_181["NQPRegex"]
    set $P5012, $P5010
    goto if1008_end2327
  if1008_else2326:
    null $P5011
    set $P5012, $P5011
  if1008_end2327:
    unless_null $P5012, vivi_10102329
    nqp_get_sc_object $P5015, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 0
    get_who $P5014, $P5015
    set $P5013, $P5014["NQPRegex"]
    unless_null $P5013, vivi_10092328
    nqp_get_sc_object $P5016, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5013, $P5016
  vivi_10092328:
    set $P5012, $P5013
  vivi_10102329:
    .const 'Sub' $P5017 = 'cuid_212_1383914954.64741' 
    capture_lex $P5017
    $P5018 = $P5012."new"($P5017)
    set fb_tmp_182, _lex_param_0
    repr_defined $I5006, fb_tmp_182
    unless $I5006 goto if1013_else2340 
    set $P5019, fb_tmp_182["sym"]
    set $P5021, $P5019
    goto if1013_end2341
  if1013_else2340:
    null $P5020
    set $P5021, $P5020
  if1013_end2341:
    unless_null $P5021, vivi_10142342
    nqp_get_sc_object $P5022, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5021, $P5022
  vivi_10142342:
    $P5023 = $P5018."ACCEPTS"($P5021)
    set $P5024, $P5023
  unless1004_end2320:
    unless $P5024 goto if1003_end2318 
    set fb_tmp_183, _lex_param_0
    repr_defined $I5007, fb_tmp_183
    unless $I5007 goto if1015_else2343 
    set $P5029, fb_tmp_183["flags"]
    set $P5031, $P5029
    goto if1015_end2344
  if1015_else2343:
    null $P5030
    set $P5031, $P5030
  if1015_end2344:
    unless_null $P5031, vivi_10162345
    nqp_get_sc_object $P5032, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5031, $P5032
  vivi_10162345:
    set $P5026, $P5031
    iter $P5028, $P5031
    new $P5034, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5034, for_handlers2351
    push_eh $P5034
  for_next2352:
    unless $P5028, for_done2354
    shift $P5035, $P5028
  for_redo2353:
    .const 'Sub' $P5033 = 'cuid_312_1383914954.64741' 
    capture_lex $P5033
    $P5026 = $P5033($P5035)
    goto for_next2352
  for_handlers2351:
    .get_results ($P5034)
    pop_upto_eh $P5034
    getattribute $P5034, $P5034, 'type'
    eq $P5034, .CONTROL_LOOP_NEXT, for_next2352
    eq $P5034, .CONTROL_LOOP_REDO, for_redo2353
  for_done2354:
    pop_eh 
  if1003_end2318:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_212_1383914954.64741") :anon :lex :outer("cuid_311_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2158
    .param pmc _lex_param_0 
    .lex utf8:"$\x{a2}", $P101 
    .lex "$/", $P102 
    .lex "self", _lex_param_0 
    .local pmc self 
    set self, _lex_param_0
    .local pmc rx1011_start
    .local string rx1011_tgt
    .local int rx1011_pos
    .local int rx1011_off
    .local int rx1011_eos
    .local int rx1011_rep
    .local pmc rx1011_cur
    .local pmc rx1011_curclass
    .local pmc rx1011_bstack
    .local pmc rx1011_cstack
    rx1011_start = self."!cursor_start_all"()
    set rx1011_cur, rx1011_start[0]
    set rx1011_tgt, rx1011_start[1]
    set rx1011_pos, rx1011_start[2]
    set rx1011_curclass, rx1011_start[3]
    set rx1011_bstack, rx1011_start[4]
    set $I19, rx1011_start[5]
    store_lex unicode:"$\x{a2}", rx1011_cur
    length rx1011_eos, rx1011_tgt
    eq $I19, 1, rx1011_restart2332
    gt rx1011_pos, rx1011_eos, rx1011_fail2333
    repr_get_attr_int $I11, self, rx1011_curclass, "$!from"
    ne $I11, -1, rxscan1012_done2339
    goto rxscan1012_scan2338
  rxscan1012_loop2337:
    inc rx1011_pos
    gt rx1011_pos, rx1011_eos, rx1011_fail2333
    repr_bind_attr_int rx1011_cur, rx1011_curclass, "$!from", rx1011_pos
  rxscan1012_scan2338:
    nqp_rxmark rx1011_bstack, rxscan1012_loop2337, rx1011_pos, 0
  rxscan1012_done2339:
    ge rx1011_pos, rx1011_eos, rx1011_fail2333
    substr $S11, rx1011_tgt, rx1011_pos, 1
    index $I11, ucs4:"eEfFgG", $S11
    lt $I11, 0, rx1011_fail2333
    inc rx1011_pos
    rx1011_cur."!cursor_pass"(rx1011_pos, 'backtrack'=>1)
    .return (rx1011_cur)
  rx1011_restart2332:
    repr_get_attr_obj rx1011_cstack, rx1011_cur, rx1011_curclass, "$!cstack"
  rx1011_fail2333:
    unless rx1011_bstack, rx1011_done2331
    pop $I19, rx1011_bstack
    if_null rx1011_cstack, rx1011_cstack_done2336
    unless rx1011_cstack, rx1011_cstack_done2336
    dec $I19
    set $P11, rx1011_cstack[$I19]
  rx1011_cstack_done2336:
    pop rx1011_rep, rx1011_bstack
    pop rx1011_pos, rx1011_bstack
    pop $I19, rx1011_bstack
    lt rx1011_pos, -1, rx1011_done2331
    lt rx1011_pos, 0, rx1011_fail2333
    eq $I19, 0, rx1011_fail2333
    nqp_islist $I20, rx1011_cstack
    unless $I20, rx1011_jump2334
    elements $I18, rx1011_bstack
    le $I18, 0, rx1011_cut2335
    dec $I18
    set $I18, rx1011_bstack[$I18]
  rx1011_cut2335:
    assign rx1011_cstack, $I18
  rx1011_jump2334:
    jump $I19
  rx1011_done2331:
    rx1011_cur."!cursor_fail"()
    .return (rx1011_cur) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_312_1383914954.64741") :anon :lex :outer("cuid_311_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    .local pmc fb_tmp_184 
    set fb_tmp_184, _lex_param_0
    repr_defined $I5001, fb_tmp_184
    unless $I5001 goto if1018_else2348 
    set $P5001, fb_tmp_184["zero"]
    set $P5003, $P5001
    goto if1018_end2349
  if1018_else2348:
    null $P5002
    set $P5003, $P5002
  if1018_end2349:
    unless_null $P5003, vivi_10192350
    nqp_get_sc_object $P5004, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5003, $P5004
  vivi_10192350:
    set $P5006, $P5003
    unless $P5003 goto if1017_end2347 
    box $P5005, "0"
    store_lex "$padding_char", $P5005
    set $P5006, $P5005
  if1017_end2347:
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "has_flag" :subid("cuid_314_1383914954.64741") :anon :lex :outer("cuid_306_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2164
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5017 = 'cuid_313_1383914954.64741' 
    capture_lex $P5017 
    .lex "$ok", $P101 
    .lex "$st", _lex_param_0 
    .lex "$key", _lex_param_1 
    .local pmc fb_tmp_185 
    .local pmc fb_tmp_186 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P101, $P5001
    box $P5002, 0
    set $P101, $P5002
    set fb_tmp_185, _lex_param_0
    repr_defined $I5001, fb_tmp_185
    unless $I5001 goto if1021_else2357 
    set $P5003, fb_tmp_185["flags"]
    set $P5005, $P5003
    goto if1021_end2358
  if1021_else2357:
    null $P5004
    set $P5005, $P5004
  if1021_end2358:
    unless_null $P5005, vivi_10222359
    nqp_get_sc_object $P5006, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5005, $P5006
  vivi_10222359:
    unless $P5005 goto if1020_end2356 
.annotate 'line', 2166
    set fb_tmp_186, _lex_param_0
    repr_defined $I5002, fb_tmp_186
    unless $I5002 goto if1023_else2360 
    set $P5010, fb_tmp_186["flags"]
    set $P5012, $P5010
    goto if1023_end2361
  if1023_else2360:
    null $P5011
    set $P5012, $P5011
  if1023_end2361:
    unless_null $P5012, vivi_10242362
    nqp_get_sc_object $P5013, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5012, $P5013
  vivi_10242362:
    set $P5007, $P5012
    iter $P5009, $P5012
    new $P5015, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5015, for_handlers2368
    push_eh $P5015
  for_next2369:
    unless $P5009, for_done2371
    shift $P5016, $P5009
  for_redo2370:
    .const 'Sub' $P5014 = 'cuid_313_1383914954.64741' 
    capture_lex $P5014
    $P5007 = $P5014($P5016)
    goto for_next2369
  for_handlers2368:
    .get_results ($P5015)
    pop_upto_eh $P5015
    getattribute $P5015, $P5015, 'type'
    eq $P5015, .CONTROL_LOOP_NEXT, for_next2369
    eq $P5015, .CONTROL_LOOP_REDO, for_redo2370
  for_done2371:
    pop_eh 
  if1020_end2356:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_313_1383914954.64741") :anon :lex :outer("cuid_314_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    .local pmc fb_tmp_187 
    set fb_tmp_187, _lex_param_0
    repr_defined $I5001, fb_tmp_187
    unless $I5001 goto if1026_else2365 
    find_lex $P5002, "$key"
    set $S5001, $P5002
    set $P5001, fb_tmp_187[$S5001]
    set $P5004, $P5001
    goto if1026_end2366
  if1026_else2365:
    null $P5003
    set $P5004, $P5003
  if1026_end2366:
    unless_null $P5004, vivi_10272367
    nqp_get_sc_object $P5005, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5004, $P5005
  vivi_10272367:
    set $P5007, $P5004
    unless $P5004 goto if1025_end2364 
    box $P5006, 1
    store_lex "$ok", $P5006
    set $P5007, $P5006
  if1025_end2364:
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "pad-with-sign" :subid("cuid_315_1383914954.64741") :anon :lex :outer("cuid_306_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2219
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .lex "$sign", _lex_param_0 
    .lex "$num", _lex_param_1 
    .lex "$size", _lex_param_2 
    .lex "$pad", _lex_param_3 
    set $S5001, _lex_param_3
    isne $I5001, $S5001, " "
    box $P5002, $I5001
    set $P5001, $P5002
    unless $I5001 goto if1029_end2375 
    set $P5001, _lex_param_2
  if1029_end2375:
    unless $P5001 goto if1028_else2372 
.annotate 'line', 2220
    set $S5004, _lex_param_0
.annotate 'line', 2221
    set $N5003, _lex_param_2
    set $S5005, _lex_param_1
    length $I5002, $S5005
    set $N5004, $I5002
    sub $N5002, $N5003, $N5004
    set $N5005, 1
    sub $N5001, $N5002, $N5005
    $P5003 = "&infix_x"(_lex_param_3, $N5001)
    set $S5006, $P5003
    concat $S5003, $S5004, $S5006
    set $S5007, _lex_param_1
    concat $S5002, $S5003, $S5007
    set $S5011, $S5002
    goto if1028_end2373
  if1028_else2372:
.annotate 'line', 2222
    set $S5009, _lex_param_0
    set $S5010, _lex_param_1
    concat $S5008, $S5009, $S5010
    set $S5011, $S5008
  if1028_end2373:
    .return ($S5011) 
.end
.HLL "nqp"
.namespace []
.sub "stringify-to-precision" :subid("cuid_316_1383914954.64741") :anon :lex :outer("cuid_306_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2226
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$lhs", $P101 
    .lex "$rhs", $P102 
    .lex "$int", $P103 
    .lex "$float", _lex_param_0 
    .lex "$precision", _lex_param_1 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P102, $P5002
    nqp_get_sc_object $P5003, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P103, $P5003
    set $N5002, _lex_param_0
    abs $N5001, $N5002
    box $P5004, $N5001
    set _lex_param_0, $P5004
    set $N5004, _lex_param_0
    floor $N5003, $N5004
    box $P5005, $N5003
    set $P101, $P5005
    set $N5006, _lex_param_0
    set $N5007, $P101
    sub $N5005, $N5006, $N5007
    box $P5006, $N5005
    set $P102, $P5006
    set $N5008, $P101
    find_lex $P5008, "$knowhow"
    nqp_bigint_from_num $P5007, $N5008, $P5008
    set $P103, $P5007
    nqp_bigint_to_str $S5001, $P103
    box $P5009, $S5001
    set $P101, $P5009
    set $N5010, $P102
    set $N5011, 1
    add $N5009, $N5010, $N5011
    box $P5010, $N5009
    set _lex_param_0, $P5010
    set $N5013, _lex_param_0
    set $N5015, 10
    set $N5016, _lex_param_1
    pow $N5014, $N5015, $N5016
    mul $N5012, $N5013, $N5014
    box $P5011, $N5012
    set _lex_param_0, $P5011
    set $N5019, _lex_param_0
    add $N5018, $N5019, 0.5
    floor $N5017, $N5018
    set $S5002, $N5017
    box $P5012, $S5002
    set _lex_param_0, $P5012
    set $N5021, _lex_param_0
    set $N5023, 10
    set $N5024, _lex_param_1
    pow $N5022, $N5023, $N5024
    sub $N5020, $N5021, $N5022
    box $P5013, $N5020
    set _lex_param_0, $P5013
.annotate 'line', 2239
    set $N5026, _lex_param_1
    set $S5004, _lex_param_0
    length $I5001, $S5004
    set $N5027, $I5001
    sub $N5025, $N5026, $N5027
    $P5014 = "&infix_x"("0", $N5025)
    set $S5005, $P5014
    set $S5006, _lex_param_0
    concat $S5003, $S5005, $S5006
    box $P5015, $S5003
    set $P102, $P5015
    set $S5008, $P102
    set $S5009, $P102
    length $I5002, $S5009
    set $N5029, $I5002
    set $N5030, _lex_param_1
    sub $N5028, $N5029, $N5030
    set $I5003, $N5028
    substr $S5007, $S5008, $I5003
    box $P5016, $S5007
    set $P102, $P5016
    set $S5012, $P101
    concat $S5011, $S5012, "."
    set $S5013, $P102
    concat $S5010, $S5011, $S5013
    .return ($S5010) 
.end
.HLL "nqp"
.namespace []
.sub "stringify-to-precision2" :subid("cuid_317_1383914954.64741") :anon :lex :outer("cuid_306_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2244
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$exp", $P101 
    .lex "$float", _lex_param_0 
    .lex "$precision", _lex_param_1 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P101, $P5001
    set $N5001, _lex_param_0
    iseq $I5001, $N5001, 0.0
    unless $I5001 goto if1030_else2376 
    box $P5003, 0
    set $P5002, $P5003
    goto if1030_end2377
  if1030_else2376:
    set $N5005, _lex_param_0
    ln $N5004, $N5005
    set $N5007, 10
    ln $N5006, $N5007
    div $N5003, $N5004, $N5006
    floor $N5002, $N5003
    box $P5004, $N5002
    set $P5002, $P5004
  if1030_end2377:
    set $P101, $P5002
    set $N5011, _lex_param_0
    abs $N5010, $N5011
    set $N5013, 10
    set $N5015, _lex_param_1
    set $N5017, $P101
    set $N5018, 1
    add $N5016, $N5017, $N5018
    sub $N5014, $N5015, $N5016
    pow $N5012, $N5013, $N5014
    mul $N5009, $N5010, $N5012
    add $N5008, $N5009, 0.5
    box $P5005, $N5008
    set _lex_param_0, $P5005
    set $N5020, _lex_param_0
    floor $N5019, $N5020
    box $P5006, $N5019
    set _lex_param_0, $P5006
    set $N5022, _lex_param_0
    set $N5024, 10
    set $N5026, _lex_param_1
    set $N5028, $P101
    set $N5029, 1
    add $N5027, $N5028, $N5029
    sub $N5025, $N5026, $N5027
    pow $N5023, $N5024, $N5025
    div $N5021, $N5022, $N5023
    box $P5007, $N5021
    set _lex_param_0, $P5007
    .return (_lex_param_0) 
.end
.HLL "nqp"
.namespace []
.sub "fixed-point" :subid("cuid_318_1383914954.64741") :anon :lex :outer("cuid_306_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2250
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .lex "$sign", $P101 
    .lex "$float", _lex_param_0 
    .lex "$precision", _lex_param_1 
    .lex "$size", _lex_param_2 
    .lex "$pad", _lex_param_3 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P101, $P5001
    set $N5001, _lex_param_0
    set $N5002, 0
    islt $I5001, $N5001, $N5002
    unless $I5001 goto if1031_else2378 
    set $S5001, "-"
    goto if1031_end2379
  if1031_else2378:
    set $S5001, ""
  if1031_end2379:
    box $P5002, $S5001
    set $P101, $P5002
.annotate 'line', 2252
    set $N5004, _lex_param_0
    abs $N5003, $N5004
    $P5003 = "&stringify-to-precision"($N5003, _lex_param_1)
    set _lex_param_0, $P5003
.annotate 'line', 2253
    $P5004 = "&pad-with-sign"($P101, _lex_param_0, _lex_param_2, _lex_param_3)
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "scientific" :subid("cuid_319_1383914954.64741") :anon :lex :outer("cuid_306_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2255
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .param pmc _lex_param_4 
    .lex "$sign", $P101 
    .lex "$exp", $P102 
    .lex "$float", _lex_param_0 
    .lex "$e", _lex_param_1 
    .lex "$precision", _lex_param_2 
    .lex "$size", _lex_param_3 
    .lex "$pad", _lex_param_4 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P102, $P5002
    set $N5001, _lex_param_0
    set $N5002, 0
    islt $I5001, $N5001, $N5002
    unless $I5001 goto if1032_else2380 
    set $S5001, "-"
    goto if1032_end2381
  if1032_else2380:
    set $S5001, ""
  if1032_end2381:
    box $P5003, $S5001
    set $P101, $P5003
    set $N5004, _lex_param_0
    abs $N5003, $N5004
    box $P5004, $N5003
    set _lex_param_0, $P5004
    set $N5005, _lex_param_0
    iseq $I5002, $N5005, 0.0
    unless $I5002 goto if1033_else2382 
    box $P5006, 0
    set $P5005, $P5006
    goto if1033_end2383
  if1033_else2382:
    set $N5009, _lex_param_0
    ln $N5008, $N5009
    set $N5011, 10
    ln $N5010, $N5011
    div $N5007, $N5008, $N5010
    floor $N5006, $N5007
    box $P5007, $N5006
    set $P5005, $P5007
  if1033_end2383:
    set $P102, $P5005
    set $N5013, _lex_param_0
    set $N5015, 10
    set $N5016, $P102
    pow $N5014, $N5015, $N5016
    div $N5012, $N5013, $N5014
    box $P5008, $N5012
    set _lex_param_0, $P5008
.annotate 'line', 2260
    $P5009 = "&stringify-to-precision"(_lex_param_0, _lex_param_2)
    set _lex_param_0, $P5009
    set $N5017, $P102
    set $N5018, 0
    islt $I5003, $N5017, $N5018
    unless $I5003 goto if1034_else2384 
.annotate 'line', 2261
    set $N5020, $P102
    neg $N5019, $N5020
    box $P5010, $N5019
    set $P102, $P5010
    set $S5006, _lex_param_0
    set $S5007, _lex_param_1
    concat $S5005, $S5006, $S5007
    concat $S5004, $S5005, "-"
    set $N5021, $P102
    set $N5022, 10
    islt $I5004, $N5021, $N5022
    unless $I5004 goto if1035_else2386 
    set $S5008, "0"
    goto if1035_end2387
  if1035_else2386:
    set $S5008, ""
  if1035_end2387:
    concat $S5003, $S5004, $S5008
    set $S5009, $P102
    concat $S5002, $S5003, $S5009
    box $P5011, $S5002
    set _lex_param_0, $P5011
    goto if1034_end2385
  if1034_else2384:
.annotate 'line', 2264
    set $S5014, _lex_param_0
    set $S5015, _lex_param_1
    concat $S5013, $S5014, $S5015
    concat $S5012, $S5013, "+"
    set $N5023, $P102
    set $N5024, 10
    islt $I5005, $N5023, $N5024
    unless $I5005 goto if1036_else2388 
    set $S5016, "0"
    goto if1036_end2389
  if1036_else2388:
    set $S5016, ""
  if1036_end2389:
    concat $S5011, $S5012, $S5016
    set $S5017, $P102
    concat $S5010, $S5011, $S5017
    box $P5012, $S5010
    set _lex_param_0, $P5012
  if1034_end2385:
.annotate 'line', 2267
    $P5013 = "&pad-with-sign"($P101, _lex_param_0, _lex_param_3, _lex_param_4)
    .return ($P5013) 
.end
.HLL "nqp"
.namespace []
.sub "shortest" :subid("cuid_321_1383914954.64741") :anon :lex :outer("cuid_306_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2269
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .param pmc _lex_param_4 
    .const 'Sub' $P5013 = 'cuid_320_1383914954.64741' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_322_1383914954.64741' 
    capture_lex $P5013 
    .lex "$sign", $P101 
    .lex "$exp", $P102 
    .lex "$float", _lex_param_0 
    .lex "$e", _lex_param_1 
    .lex "$precision", _lex_param_2 
    .lex "$size", _lex_param_3 
    .lex "$pad", _lex_param_4 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P102, $P5002
    set $N5001, _lex_param_0
    set $N5002, 0
    islt $I5001, $N5001, $N5002
    unless $I5001 goto if1037_else2390 
    set $S5001, "-"
    goto if1037_end2391
  if1037_else2390:
    set $S5001, ""
  if1037_end2391:
    box $P5003, $S5001
    set $P101, $P5003
    set $N5004, _lex_param_0
    abs $N5003, $N5004
    box $P5004, $N5003
    set _lex_param_0, $P5004
    set $N5005, _lex_param_0
    iseq $I5002, $N5005, 0.0
    unless $I5002 goto if1038_else2392 
    box $P5006, 0
    set $P5005, $P5006
    goto if1038_end2393
  if1038_else2392:
    set $N5009, _lex_param_0
    ln $N5008, $N5009
    set $N5011, 10
    ln $N5010, $N5011
    div $N5007, $N5008, $N5010
    floor $N5006, $N5007
    box $P5007, $N5006
    set $P5005, $P5007
  if1038_end2393:
    set $P102, $P5005
    set $N5013, -2
    set $N5014, _lex_param_2
    sub $N5012, $N5013, $N5014
    set $N5015, $P102
    islt $I5003, $N5012, $N5015
    set $I5005, $I5003
    unless $I5003 goto if1040_end2397 
    set $N5016, $P102
    set $N5017, _lex_param_2
    islt $I5004, $N5016, $N5017
    set $I5005, $I5004
  if1040_end2397:
    unless $I5005 goto if1039_else2394 
    .const 'Sub' $P5008 = 'cuid_320_1383914954.64741' 
    capture_lex $P5008
    $P5009 = $P5008()
    set $P5012, $P5009
    goto if1039_end2395
  if1039_else2394:
    .const 'Sub' $P5010 = 'cuid_322_1383914954.64741' 
    capture_lex $P5010
    $P5011 = $P5010()
    set $P5012, $P5011
  if1039_end2395:
    .return ($P5012) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_320_1383914954.64741") :anon :lex :outer("cuid_321_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2275
    .lex "$fixed-precision", $P101 
    .lex "$fixed", $P102 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P102, $P5002
    find_lex $P5003, "$exp"
    set $N5001, $P5003
    find_lex $P5004, "$precision"
    set $N5002, $P5004
    isgt $I5001, $N5001, $N5002
    unless $I5001 goto if1041_else2398 
    box $P5008, 0
    set $P5007, $P5008
    goto if1041_end2399
  if1041_else2398:
    find_lex $P5005, "$precision"
    set $N5004, $P5005
    find_lex $P5006, "$exp"
    set $N5006, $P5006
    set $N5007, 1
    add $N5005, $N5006, $N5007
    sub $N5003, $N5004, $N5005
    box $P5009, $N5003
    set $P5007, $P5009
  if1041_end2399:
    set $P101, $P5007
.annotate 'line', 2277
    find_lex $P5010, "$float"
    find_lex $P5011, "$precision"
    $P5012 = "&stringify-to-precision2"($P5010, $P5011)
    set $P102, $P5012
.annotate 'line', 2278
    find_lex $P5013, "$sign"
    find_lex $P5014, "$size"
    find_lex $P5015, "$pad"
    $P5016 = "&pad-with-sign"($P5013, $P102, $P5014, $P5015)
    .return ($P5016) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_322_1383914954.64741") :anon :lex :outer("cuid_321_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2279
    .lex "$sci", $P101 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P101, $P5001
    find_lex $P5002, "$float"
    set $N5002, $P5002
    set $N5004, 10
    find_lex $P5003, "$exp"
    set $N5005, $P5003
    pow $N5003, $N5004, $N5005
    div $N5001, $N5002, $N5003
    box $P5004, $N5001
    store_lex "$float", $P5004
.annotate 'line', 2281
    find_lex $P5005, "$float"
    find_lex $P5006, "$precision"
    $P5007 = "&stringify-to-precision2"($P5005, $P5006)
    store_lex "$float", $P5007
    find_lex $P5008, "$exp"
    set $N5006, $P5008
    set $N5007, 0
    islt $I5001, $N5006, $N5007
    unless $I5001 goto if1042_else2400 
.annotate 'line', 2283
    find_lex $P5009, "$exp"
    set $N5009, $P5009
    neg $N5008, $N5009
    box $P5010, $N5008
    store_lex "$exp", $P5010
    find_lex $P5011, "$float"
    set $S5005, $P5011
    find_lex $P5012, "$e"
    set $S5006, $P5012
    concat $S5004, $S5005, $S5006
    concat $S5003, $S5004, "-"
    find_lex $P5013, "$exp"
    set $N5010, $P5013
    set $N5011, 10
    islt $I5002, $N5010, $N5011
    unless $I5002 goto if1043_else2402 
    set $S5007, "0"
    goto if1043_end2403
  if1043_else2402:
    set $S5007, ""
  if1043_end2403:
    concat $S5002, $S5003, $S5007
    find_lex $P5014, "$exp"
    set $S5008, $P5014
    concat $S5001, $S5002, $S5008
    box $P5015, $S5001
    set $P101, $P5015
    goto if1042_end2401
  if1042_else2400:
.annotate 'line', 2286
    find_lex $P5016, "$float"
    set $S5013, $P5016
    find_lex $P5017, "$e"
    set $S5014, $P5017
    concat $S5012, $S5013, $S5014
    concat $S5011, $S5012, "+"
    find_lex $P5018, "$exp"
    set $N5012, $P5018
    set $N5013, 10
    islt $I5003, $N5012, $N5013
    unless $I5003 goto if1044_else2404 
    set $S5015, "0"
    goto if1044_end2405
  if1044_else2404:
    set $S5015, ""
  if1044_end2405:
    concat $S5010, $S5011, $S5015
    find_lex $P5019, "$exp"
    set $S5016, $P5019
    concat $S5009, $S5010, $S5016
    box $P5020, $S5009
    set $P101, $P5020
  if1042_end2401:
.annotate 'line', 2290
    find_lex $P5021, "$sign"
    find_lex $P5022, "$size"
    find_lex $P5023, "$pad"
    $P5024 = "&pad-with-sign"($P5021, $P101, $P5022, $P5023)
    .return ($P5024) 
.end
.HLL "nqp"
.namespace []
.sub "TOP" :subid("cuid_211_1383914954.64741") :anon :lex :outer("cuid_306_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2098
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5091 = 'cuid_323_1383914954.64741' 
    capture_lex $P5091 
    .lex "@statements", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_188 
    .local pmc fb_tmp_189 
    .local pmc fb_tmp_190 
    .local pmc pkg_viv_tmp_17 
    .local pmc fb_tmp_191 
    .local pmc fb_tmp_192 
    .local pmc pkg_viv_tmp_18 
    .local pmc fb_tmp_193 
    .local pmc fb_tmp_194 
    .local pmc pkg_viv_tmp_19 
    .local pmc fb_tmp_195 
    .local pmc fb_tmp_196 
    .local pmc pkg_viv_tmp_20 
    .local pmc fb_tmp_197 
    .local pmc pkg_viv_tmp_21 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    unless_null _lex_param_1, fallback2408
    nqp_get_sc_object $P5005, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set _lex_param_1, $P5005
  fallback2408:
    set fb_tmp_188, _lex_param_1
    repr_defined $I5001, fb_tmp_188
    unless $I5001 goto if1045_else2406 
    set $P5006, fb_tmp_188["statement"]
    set $P5008, $P5006
    goto if1045_end2407
  if1045_else2406:
    null $P5007
    set $P5008, $P5007
  if1045_end2407:
    unless_null $P5008, vivi_10462409
    nqp_get_sc_object $P5009, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5008, $P5009
  vivi_10462409:
    set $P5002, $P5008
    iter $P5004, $P5008
    new $P5011, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5011, for_handlers2410
    push_eh $P5011
  for_next2411:
    unless $P5004, for_done2413
    shift $P5012, $P5004
  for_redo2412:
    .const 'Sub' $P5010 = 'cuid_323_1383914954.64741' 
    capture_lex $P5010
    $P5002 = $P5010($P5012)
    goto for_next2411
  for_handlers2410:
    .get_results ($P5011)
    pop_upto_eh $P5011
    getattribute $P5011, $P5011, 'type'
    eq $P5011, .CONTROL_LOOP_NEXT, for_next2411
    eq $P5011, .CONTROL_LOOP_REDO, for_redo2412
  for_done2413:
    pop_eh 
    find_lex $P5013, "$assert_used_args"
    set $P5030, $P5013
    unless $P5013 goto if1048_end2417 
    find_dynamic_lex $P5014, "$*ARGS_USED"
    unless_null $P5014, fallback2418
    nqp_get_sc_object $P5016, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 0
    get_who $P5015, $P5016
    set fb_tmp_189, $P5015
    repr_defined $I5003, fb_tmp_189
    unless $I5003 goto if1049_else2419 
    set $P5017, fb_tmp_189["$ARGS_USED"]
    set $P5019, $P5017
    goto if1049_end2420
  if1049_else2419:
    null $P5018
    set $P5019, $P5018
  if1049_end2420:
    unless_null $P5019, vivi_10502421
    nqp_get_sc_object $P5020, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5019, $P5020
  vivi_10502421:
    unless_null $P5019, vivi_10512422
    die "Contextual $*ARGS_USED not found"
    box $P5021, "Contextual $*ARGS_USED not found"
    set $P5019, $P5021
  vivi_10512422:
    set $P5014, $P5019
  fallback2418:
    set $N5001, $P5014
    find_dynamic_lex $P5022, "@*ARGS_HAVE"
    unless_null $P5022, fallback2423
    nqp_get_sc_object $P5024, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 0
    get_who $P5023, $P5024
    set pkg_viv_tmp_17, $P5023
    set fb_tmp_190, pkg_viv_tmp_17
    repr_defined $I5004, fb_tmp_190
    unless $I5004 goto if1052_else2424 
    set $P5025, fb_tmp_190["@ARGS_HAVE"]
    set $P5027, $P5025
    goto if1052_end2425
  if1052_else2424:
    null $P5026
    set $P5027, $P5026
  if1052_end2425:
    unless_null $P5027, vivi_10532426
    new $P5028, 'ResizablePMCArray'
    set pkg_viv_tmp_17["@ARGS_HAVE"], $P5028
    set $P5027, $P5028
  vivi_10532426:
    unless_null $P5027, vivi_10542427
    die "Contextual @*ARGS_HAVE not found"
    box $P5029, "Contextual @*ARGS_HAVE not found"
    set $P5027, $P5029
  vivi_10542427:
    set $P5022, $P5027
  fallback2423:
    set $N5002, $P5022
    islt $I5002, $N5001, $N5002
    box $P5031, $I5002
    set $P5030, $P5031
  if1048_end2417:
    unless $P5030 goto if1047_end2415 
.annotate 'line', 2102
    find_dynamic_lex $P5032, "$*ARGS_USED"
    unless_null $P5032, fallback2428
    nqp_get_sc_object $P5034, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 0
    get_who $P5033, $P5034
    set fb_tmp_191, $P5033
    repr_defined $I5005, fb_tmp_191
    unless $I5005 goto if1055_else2429 
    set $P5035, fb_tmp_191["$ARGS_USED"]
    set $P5037, $P5035
    goto if1055_end2430
  if1055_else2429:
    null $P5036
    set $P5037, $P5036
  if1055_end2430:
    unless_null $P5037, vivi_10562431
    nqp_get_sc_object $P5038, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5037, $P5038
  vivi_10562431:
    unless_null $P5037, vivi_10572432
    die "Contextual $*ARGS_USED not found"
    box $P5039, "Contextual $*ARGS_USED not found"
    set $P5037, $P5039
  vivi_10572432:
    set $P5032, $P5037
  fallback2428:
    set $S5006, $P5032
    concat $S5005, "Too few directives: found ", $S5006
    concat $S5004, $S5005, ","
    concat $S5003, $S5004, " fewer than the "
    find_dynamic_lex $P5040, "@*ARGS_HAVE"
    unless_null $P5040, fallback2433
    nqp_get_sc_object $P5042, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 0
    get_who $P5041, $P5042
    set pkg_viv_tmp_18, $P5041
    set fb_tmp_192, pkg_viv_tmp_18
    repr_defined $I5006, fb_tmp_192
    unless $I5006 goto if1058_else2434 
    set $P5043, fb_tmp_192["@ARGS_HAVE"]
    set $P5045, $P5043
    goto if1058_end2435
  if1058_else2434:
    null $P5044
    set $P5045, $P5044
  if1058_end2435:
    unless_null $P5045, vivi_10592436
    new $P5046, 'ResizablePMCArray'
    set pkg_viv_tmp_18["@ARGS_HAVE"], $P5046
    set $P5045, $P5046
  vivi_10592436:
    unless_null $P5045, vivi_10602437
    die "Contextual @*ARGS_HAVE not found"
    box $P5047, "Contextual @*ARGS_HAVE not found"
    set $P5045, $P5047
  vivi_10602437:
    set $P5040, $P5045
  fallback2433:
    set $N5003, $P5040
    set $S5007, $N5003
    concat $S5002, $S5003, $S5007
    concat $S5001, $S5002, " arguments after the format string"
    box $P5048, $S5001
    die $P5048
  if1047_end2415:
    find_dynamic_lex $P5049, "$*ARGS_USED"
    unless_null $P5049, fallback2440
    nqp_get_sc_object $P5051, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 0
    get_who $P5050, $P5051
    set fb_tmp_193, $P5050
    repr_defined $I5008, fb_tmp_193
    unless $I5008 goto if1062_else2441 
    set $P5052, fb_tmp_193["$ARGS_USED"]
    set $P5054, $P5052
    goto if1062_end2442
  if1062_else2441:
    null $P5053
    set $P5054, $P5053
  if1062_end2442:
    unless_null $P5054, vivi_10632443
    nqp_get_sc_object $P5055, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5054, $P5055
  vivi_10632443:
    unless_null $P5054, vivi_10642444
    die "Contextual $*ARGS_USED not found"
    box $P5056, "Contextual $*ARGS_USED not found"
    set $P5054, $P5056
  vivi_10642444:
    set $P5049, $P5054
  fallback2440:
    set $N5004, $P5049
    find_dynamic_lex $P5057, "@*ARGS_HAVE"
    unless_null $P5057, fallback2445
    nqp_get_sc_object $P5059, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 0
    get_who $P5058, $P5059
    set pkg_viv_tmp_19, $P5058
    set fb_tmp_194, pkg_viv_tmp_19
    repr_defined $I5009, fb_tmp_194
    unless $I5009 goto if1065_else2446 
    set $P5060, fb_tmp_194["@ARGS_HAVE"]
    set $P5062, $P5060
    goto if1065_end2447
  if1065_else2446:
    null $P5061
    set $P5062, $P5061
  if1065_end2447:
    unless_null $P5062, vivi_10662448
    new $P5063, 'ResizablePMCArray'
    set pkg_viv_tmp_19["@ARGS_HAVE"], $P5063
    set $P5062, $P5063
  vivi_10662448:
    unless_null $P5062, vivi_10672449
    die "Contextual @*ARGS_HAVE not found"
    box $P5064, "Contextual @*ARGS_HAVE not found"
    set $P5062, $P5064
  vivi_10672449:
    set $P5057, $P5062
  fallback2445:
    set $N5005, $P5057
    isgt $I5007, $N5004, $N5005
    unless $I5007 goto if1061_end2439 
.annotate 'line', 2106
    find_dynamic_lex $P5065, "$*ARGS_USED"
    unless_null $P5065, fallback2450
    nqp_get_sc_object $P5067, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 0
    get_who $P5066, $P5067
    set fb_tmp_195, $P5066
    repr_defined $I5010, fb_tmp_195
    unless $I5010 goto if1068_else2451 
    set $P5068, fb_tmp_195["$ARGS_USED"]
    set $P5070, $P5068
    goto if1068_end2452
  if1068_else2451:
    null $P5069
    set $P5070, $P5069
  if1068_end2452:
    unless_null $P5070, vivi_10692453
    nqp_get_sc_object $P5071, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5070, $P5071
  vivi_10692453:
    unless_null $P5070, vivi_10702454
    die "Contextual $*ARGS_USED not found"
    box $P5072, "Contextual $*ARGS_USED not found"
    set $P5070, $P5072
  vivi_10702454:
    set $P5065, $P5070
  fallback2450:
    set $S5012, $P5065
    concat $S5011, "Too many directives: found ", $S5012
    concat $S5010, $S5011, ", but "
    find_dynamic_lex $P5073, "@*ARGS_HAVE"
    unless_null $P5073, fallback2457
    nqp_get_sc_object $P5075, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 0
    get_who $P5074, $P5075
    set pkg_viv_tmp_20, $P5074
    set fb_tmp_196, pkg_viv_tmp_20
    repr_defined $I5012, fb_tmp_196
    unless $I5012 goto if1072_else2458 
    set $P5076, fb_tmp_196["@ARGS_HAVE"]
    set $P5078, $P5076
    goto if1072_end2459
  if1072_else2458:
    null $P5077
    set $P5078, $P5077
  if1072_end2459:
    unless_null $P5078, vivi_10732460
    new $P5079, 'ResizablePMCArray'
    set pkg_viv_tmp_20["@ARGS_HAVE"], $P5079
    set $P5078, $P5079
  vivi_10732460:
    unless_null $P5078, vivi_10742461
    die "Contextual @*ARGS_HAVE not found"
    box $P5080, "Contextual @*ARGS_HAVE not found"
    set $P5078, $P5080
  vivi_10742461:
    set $P5073, $P5078
  fallback2457:
    set $N5006, $P5073
    set $N5007, 0
    isgt $I5011, $N5006, $N5007
    unless $I5011 goto if1071_else2455 
    find_dynamic_lex $P5081, "@*ARGS_HAVE"
    unless_null $P5081, fallback2462
    nqp_get_sc_object $P5083, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 0
    get_who $P5082, $P5083
    set pkg_viv_tmp_21, $P5082
    set fb_tmp_197, pkg_viv_tmp_21
    repr_defined $I5013, fb_tmp_197
    unless $I5013 goto if1075_else2463 
    set $P5084, fb_tmp_197["@ARGS_HAVE"]
    set $P5086, $P5084
    goto if1075_end2464
  if1075_else2463:
    null $P5085
    set $P5086, $P5085
  if1075_end2464:
    unless_null $P5086, vivi_10762465
    new $P5087, 'ResizablePMCArray'
    set pkg_viv_tmp_21["@ARGS_HAVE"], $P5087
    set $P5086, $P5087
  vivi_10762465:
    unless_null $P5086, vivi_10772466
    die "Contextual @*ARGS_HAVE not found"
    box $P5088, "Contextual @*ARGS_HAVE not found"
    set $P5086, $P5088
  vivi_10772466:
    set $P5081, $P5086
  fallback2462:
    set $N5008, $P5081
    set $S5014, $N5008
    concat $S5013, "only ", $S5014
    set $S5015, $S5013
    goto if1071_end2456
  if1071_else2455:
    set $S5015, "no"
  if1071_end2456:
    concat $S5009, $S5010, $S5015
    concat $S5008, $S5009, " arguments after the format string"
    box $P5089, $S5008
    die $P5089
  if1061_end2439:
.annotate 'line', 2111
    join $S5016, "", $P101
    $P5090 = _lex_param_1."!make"($S5016)
    .return ($P5090) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_323_1383914954.64741") :anon :lex :outer("cuid_211_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 2100
    find_lex $P5001, "@statements"
    $P5002 = _lex_param_0."ast"()
    $P5003 = $P5001."push"($P5002)
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "statement" :subid("cuid_213_1383914954.64741") :anon :lex :outer("cuid_306_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2172
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$st", $P101 
    .lex "@pieces", $P102 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_198 
    .local pmc fb_tmp_199 
    .local pmc fb_tmp_200 
    .local pmc fb_tmp_201 
    .local pmc fb_tmp_202 
    .local pmc fb_tmp_203 
    .local pmc fb_tmp_204 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P101, $P5001
    new $P5002, 'ResizablePMCArray'
    set $P102, $P5002
    unless_null _lex_param_1, fallback2471
    nqp_get_sc_object $P5003, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set _lex_param_1, $P5003
  fallback2471:
    set fb_tmp_198, _lex_param_1
    repr_defined $I5001, fb_tmp_198
    unless $I5001 goto if1079_else2469 
    set $P5004, fb_tmp_198["directive"]
    set $P5006, $P5004
    goto if1079_end2470
  if1079_else2469:
    null $P5005
    set $P5006, $P5005
  if1079_end2470:
    unless_null $P5006, vivi_10802472
    nqp_get_sc_object $P5007, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5006, $P5007
  vivi_10802472:
    unless $P5006 goto if1078_else2467 
.annotate 'line', 2174
    unless_null _lex_param_1, fallback2475
    nqp_get_sc_object $P5008, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set _lex_param_1, $P5008
  fallback2475:
    set fb_tmp_199, _lex_param_1
    repr_defined $I5002, fb_tmp_199
    unless $I5002 goto if1081_else2473 
    set $P5009, fb_tmp_199["directive"]
    set $P5011, $P5009
    goto if1081_end2474
  if1081_else2473:
    null $P5010
    set $P5011, $P5010
  if1081_end2474:
    unless_null $P5011, vivi_10822476
    nqp_get_sc_object $P5012, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5011, $P5012
  vivi_10822476:
    set $P101, $P5011
    goto if1078_end2468
  if1078_else2467:
    unless_null _lex_param_1, fallback2481
    nqp_get_sc_object $P5013, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set _lex_param_1, $P5013
  fallback2481:
    set fb_tmp_200, _lex_param_1
    repr_defined $I5003, fb_tmp_200
    unless $I5003 goto if1084_else2479 
    set $P5014, fb_tmp_200["escape"]
    set $P5016, $P5014
    goto if1084_end2480
  if1084_else2479:
    null $P5015
    set $P5016, $P5015
  if1084_end2480:
    unless_null $P5016, vivi_10852482
    nqp_get_sc_object $P5017, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5016, $P5017
  vivi_10852482:
    unless $P5016 goto if1083_else2477 
.annotate 'line', 2175
    unless_null _lex_param_1, fallback2485
    nqp_get_sc_object $P5018, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set _lex_param_1, $P5018
  fallback2485:
    set fb_tmp_201, _lex_param_1
    repr_defined $I5004, fb_tmp_201
    unless $I5004 goto if1086_else2483 
    set $P5019, fb_tmp_201["escape"]
    set $P5021, $P5019
    goto if1086_end2484
  if1086_else2483:
    null $P5020
    set $P5021, $P5020
  if1086_end2484:
    unless_null $P5021, vivi_10872486
    nqp_get_sc_object $P5022, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5021, $P5022
  vivi_10872486:
    set $P101, $P5021
    set $P5028, $P101
    goto if1083_end2478
  if1083_else2477:
.annotate 'line', 2176
    unless_null _lex_param_1, fallback2489
    nqp_get_sc_object $P5023, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set _lex_param_1, $P5023
  fallback2489:
    set fb_tmp_202, _lex_param_1
    repr_defined $I5005, fb_tmp_202
    unless $I5005 goto if1088_else2487 
    set $P5024, fb_tmp_202["literal"]
    set $P5026, $P5024
    goto if1088_end2488
  if1088_else2487:
    null $P5025
    set $P5026, $P5025
  if1088_end2488:
    unless_null $P5026, vivi_10892490
    nqp_get_sc_object $P5027, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5026, $P5027
  vivi_10892490:
    set $P101, $P5026
    set $P5028, $P101
  if1083_end2478:
  if1078_end2468:
    set fb_tmp_203, $P101
    repr_defined $I5006, fb_tmp_203
    unless $I5006 goto if1091_else2493 
    set $P5029, fb_tmp_203["size"]
    set $P5031, $P5029
    goto if1091_end2494
  if1091_else2493:
    null $P5030
    set $P5031, $P5030
  if1091_end2494:
    unless_null $P5031, vivi_10922495
    nqp_get_sc_object $P5032, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5031, $P5032
  vivi_10922495:
    unless $P5031 goto if1090_end2492 
.annotate 'line', 2178
    $P5033 = "&padding_char"($P101)
    set fb_tmp_204, $P101
    repr_defined $I5007, fb_tmp_204
    unless $I5007 goto if1093_else2496 
    set $P5034, fb_tmp_204["size"]
    set $P5036, $P5034
    goto if1093_end2497
  if1093_else2496:
    null $P5035
    set $P5036, $P5035
  if1093_end2497:
    unless_null $P5036, vivi_10942498
    nqp_get_sc_object $P5037, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5036, $P5037
  vivi_10942498:
    $P5038 = $P5036."ast"()
    set $N5002, $P5038
    $P5039 = $P101."ast"()
    set $S5001, $P5039
    length $I5008, $S5001
    set $N5003, $I5008
    sub $N5001, $N5002, $N5003
    $P5040 = "&infix_x"($P5033, $N5001)
    $P5041 = $P102."push"($P5040)
  if1090_end2492:
.annotate 'line', 2179
    $P5042 = "&has_flag"($P101, "minus")
    unless $P5042 goto if1095_else2499 
.annotate 'line', 2180
    $P5043 = $P101."ast"()
    $P5044 = $P102."unshift"($P5043)
    goto if1095_end2500
  if1095_else2499:
.annotate 'line', 2181
    $P5045 = $P101."ast"()
    $P5046 = $P102."push"($P5045)
  if1095_end2500:
.annotate 'line', 2182
    $P5047 = "&join"("", $P102)
    $P5048 = _lex_param_1."!make"($P5047)
    .return ($P5048) 
.end
.HLL "nqp"
.namespace []
.sub "directive:sym<b>" :subid("cuid_214_1383914954.64741") :anon :lex :outer("cuid_306_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2185
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$int", $P101 
    .lex "$pre", $P102 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_205 
    .local pmc fb_tmp_206 
    .local pmc fb_tmp_207 
    .local pmc fb_tmp_208 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P102, $P5002
.annotate 'line', 2186
    $P5003 = "&next_argument"(_lex_param_1)
    $P5004 = "&intify"($P5003)
    set $P101, $P5004
    set $I5001, 2
    nqp_bigint_to_str_base $S5001, $P101, $I5001
    box $P5005, $S5001
    set $P101, $P5005
    set $P5007, $P101
    unless $P101 goto if1097_end2504 
.annotate 'line', 2188
    $P5006 = "&has_flag"(_lex_param_1, "hash")
    set $P5007, $P5006
  if1097_end2504:
    unless $P5007 goto if1096_end2502 
    unless_null _lex_param_1, fallback2509
    nqp_get_sc_object $P5008, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set _lex_param_1, $P5008
  fallback2509:
    set fb_tmp_205, _lex_param_1
    repr_defined $I5003, fb_tmp_205
    unless $I5003 goto if1099_else2507 
    set $P5009, fb_tmp_205["sym"]
    set $P5011, $P5009
    goto if1099_end2508
  if1099_else2507:
    null $P5010
    set $P5011, $P5010
  if1099_end2508:
    unless_null $P5011, vivi_11002510
    nqp_get_sc_object $P5012, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5011, $P5012
  vivi_11002510:
    set $S5002, $P5011
    iseq $I5002, $S5002, "b"
    unless $I5002 goto if1098_else2505 
    set $S5003, "0b"
    goto if1098_end2506
  if1098_else2505:
    set $S5003, "0B"
  if1098_end2506:
    box $P5013, $S5003
    set $P102, $P5013
  if1096_end2502:
    unless_null _lex_param_1, fallback2515
    nqp_get_sc_object $P5014, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set _lex_param_1, $P5014
  fallback2515:
    set fb_tmp_206, _lex_param_1
    repr_defined $I5005, fb_tmp_206
    unless $I5005 goto if1102_else2513 
    set $P5015, fb_tmp_206["precision"]
    set $P5017, $P5015
    goto if1102_end2514
  if1102_else2513:
    null $P5016
    set $P5017, $P5016
  if1102_end2514:
    unless_null $P5017, vivi_11032516
    nqp_get_sc_object $P5018, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5017, $P5018
  vivi_11032516:
    set $S5004, $P5017
    length $I5004, $S5004
    unless $I5004 goto if1101_else2511 
.annotate 'line', 2189
.annotate 'line', 2190
    unless_null _lex_param_1, fallback2523
    nqp_get_sc_object $P5019, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set _lex_param_1, $P5019
  fallback2523:
    set fb_tmp_207, _lex_param_1
    repr_defined $I5007, fb_tmp_207
    unless $I5007 goto if1106_else2521 
    set $P5020, fb_tmp_207["precision"]
    set $P5022, $P5020
    goto if1106_end2522
  if1106_else2521:
    null $P5021
    set $P5022, $P5021
  if1106_end2522:
    unless_null $P5022, vivi_11072524
    nqp_get_sc_object $P5023, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5022, $P5023
  vivi_11072524:
    $P5024 = $P5022."ast"()
    set $N5001, $P5024
    set $N5002, 0
    iseq $I5006, $N5001, $N5002
    set $I5009, $I5006
    unless $I5006 goto if1105_end2520 
    set $N5003, $P101
    set $N5004, 0
    iseq $I5008, $N5003, $N5004
    set $I5009, $I5008
  if1105_end2520:
    unless $I5009 goto if1104_end2518 
    box $P5025, ""
    set $P101, $P5025
  if1104_end2518:
    set $S5007, $P102
.annotate 'line', 2191
    unless_null _lex_param_1, fallback2527
    nqp_get_sc_object $P5026, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set _lex_param_1, $P5026
  fallback2527:
    set fb_tmp_208, _lex_param_1
    repr_defined $I5010, fb_tmp_208
    unless $I5010 goto if1108_else2525 
    set $P5027, fb_tmp_208["precision"]
    set $P5029, $P5027
    goto if1108_end2526
  if1108_else2525:
    null $P5028
    set $P5029, $P5028
  if1108_end2526:
    unless_null $P5029, vivi_11092528
    nqp_get_sc_object $P5030, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5029, $P5030
  vivi_11092528:
    $P5031 = $P5029."ast"()
    set $N5006, $P5031
    set $S5008, $P101
    length $I5011, $S5008
    set $N5007, $I5011
    sub $N5005, $N5006, $N5007
    $P5032 = "&infix_x"("0", $N5005)
    set $S5009, $P5032
    concat $S5006, $S5007, $S5009
    set $S5010, $P101
    concat $S5005, $S5006, $S5010
    box $P5033, $S5005
    set $P101, $P5033
    goto if1101_end2512
  if1101_else2511:
.annotate 'line', 2193
    set $S5012, $P102
    set $S5013, $P101
    concat $S5011, $S5012, $S5013
    box $P5034, $S5011
    set $P101, $P5034
  if1101_end2512:
.annotate 'line', 2196
    $P5035 = _lex_param_1."!make"($P101)
    .return ($P5035) 
.end
.HLL "nqp"
.namespace []
.sub "directive:sym<c>" :subid("cuid_215_1383914954.64741") :anon :lex :outer("cuid_306_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2198
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
.annotate 'line', 2199
    $P5001 = "&next_argument"(_lex_param_1)
    set $I5001, $P5001
    chr $S5001, $I5001
    $P5002 = _lex_param_1."!make"($S5001)
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "directive:sym<d>" :subid("cuid_216_1383914954.64741") :anon :lex :outer("cuid_306_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2202
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$int", $P101 
    .lex "$pad", $P102 
    .lex "$sign", $P103 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_209 
    .local pmc fb_tmp_210 
    .local pmc fb_tmp_211 
    .local pmc fb_tmp_212 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P102, $P5002
    nqp_get_sc_object $P5003, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P103, $P5003
.annotate 'line', 2203
    $P5004 = "&next_argument"(_lex_param_1)
    $P5005 = "&intify"($P5004)
    set $P101, $P5005
.annotate 'line', 2204
    $P5006 = "&padding_char"(_lex_param_1)
    set $P102, $P5006
    find_lex $P5007, "$zero"
    nqp_bigint_lt $I5001, $P101, $P5007
    unless $I5001 goto if1110_else2529 
    set $S5002, "-"
    goto if1110_end2530
  if1110_else2529:
.annotate 'line', 2206
    $P5008 = "&has_flag"(_lex_param_1, "plus")
    unless $P5008 goto if1111_else2531 
    set $S5001, "+"
    goto if1111_end2532
  if1111_else2531:
    set $S5001, ""
  if1111_end2532:
    set $S5002, $S5001
  if1110_end2530:
    box $P5009, $S5002
    set $P103, $P5009
    find_lex $P5011, "$knowhow"
    nqp_bigint_abs $P5010, $P101, $P5011
    nqp_bigint_to_str $S5003, $P5010
    box $P5012, $S5003
    set $P101, $P5012
    unless_null _lex_param_1, fallback2537
    nqp_get_sc_object $P5013, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set _lex_param_1, $P5013
  fallback2537:
    set fb_tmp_209, _lex_param_1
    repr_defined $I5003, fb_tmp_209
    unless $I5003 goto if1113_else2535 
    set $P5014, fb_tmp_209["precision"]
    set $P5016, $P5014
    goto if1113_end2536
  if1113_else2535:
    null $P5015
    set $P5016, $P5015
  if1113_end2536:
    unless_null $P5016, vivi_11142538
    nqp_get_sc_object $P5017, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5016, $P5017
  vivi_11142538:
    set $S5004, $P5016
    length $I5002, $S5004
    unless $I5002 goto if1112_end2534 
    set $S5006, $P101
.annotate 'line', 2209
    unless_null _lex_param_1, fallback2541
    nqp_get_sc_object $P5018, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set _lex_param_1, $P5018
  fallback2541:
    set fb_tmp_210, _lex_param_1
    repr_defined $I5004, fb_tmp_210
    unless $I5004 goto if1115_else2539 
    set $P5019, fb_tmp_210["precision"]
    set $P5021, $P5019
    goto if1115_end2540
  if1115_else2539:
    null $P5020
    set $P5021, $P5020
  if1115_end2540:
    unless_null $P5021, vivi_11162542
    nqp_get_sc_object $P5022, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5021, $P5022
  vivi_11162542:
    $P5023 = $P5021."ast"()
    set $I5005, $P5023
    substr $S5005, $S5006, 0, $I5005
    box $P5024, $S5005
    set $P101, $P5024
  if1112_end2534:
    set $S5007, $P102
    isne $I5006, $S5007, " "
    box $P5031, $I5006
    set $P5030, $P5031
    unless $I5006 goto if1118_end2546 
    unless_null _lex_param_1, fallback2549
    nqp_get_sc_object $P5025, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set _lex_param_1, $P5025
  fallback2549:
    set fb_tmp_211, _lex_param_1
    repr_defined $I5007, fb_tmp_211
    unless $I5007 goto if1119_else2547 
    set $P5026, fb_tmp_211["size"]
    set $P5028, $P5026
    goto if1119_end2548
  if1119_else2547:
    null $P5027
    set $P5028, $P5027
  if1119_end2548:
    unless_null $P5028, vivi_11202550
    nqp_get_sc_object $P5029, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5028, $P5029
  vivi_11202550:
    set $P5030, $P5028
  if1118_end2546:
    unless $P5030 goto if1117_else2543 
.annotate 'line', 2210
    set $S5010, $P103
.annotate 'line', 2211
    unless_null _lex_param_1, fallback2553
    nqp_get_sc_object $P5032, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set _lex_param_1, $P5032
  fallback2553:
    set fb_tmp_212, _lex_param_1
    repr_defined $I5008, fb_tmp_212
    unless $I5008 goto if1121_else2551 
    set $P5033, fb_tmp_212["size"]
    set $P5035, $P5033
    goto if1121_end2552
  if1121_else2551:
    null $P5034
    set $P5035, $P5034
  if1121_end2552:
    unless_null $P5035, vivi_11222554
    nqp_get_sc_object $P5036, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5035, $P5036
  vivi_11222554:
    $P5037 = $P5035."ast"()
    set $N5003, $P5037
    set $S5011, $P101
    length $I5009, $S5011
    set $N5004, $I5009
    sub $N5002, $N5003, $N5004
    set $N5005, 1
    sub $N5001, $N5002, $N5005
    $P5038 = "&infix_x"($P102, $N5001)
    set $S5012, $P5038
    concat $S5009, $S5010, $S5012
    set $S5013, $P101
    concat $S5008, $S5009, $S5013
    box $P5039, $S5008
    set $P101, $P5039
    goto if1117_end2544
  if1117_else2543:
.annotate 'line', 2213
    set $S5015, $P103
    set $S5016, $P101
    concat $S5014, $S5015, $S5016
    box $P5040, $S5014
    set $P101, $P5040
  if1117_end2544:
.annotate 'line', 2216
    $P5041 = _lex_param_1."!make"($P101)
    .return ($P5041) 
.end
.HLL "nqp"
.namespace []
.sub "directive:sym<e>" :subid("cuid_217_1383914954.64741") :anon :lex :outer("cuid_306_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2294
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$float", $P101 
    .lex "$precision", $P102 
    .lex "$pad", $P103 
    .lex "$size", $P104 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_213 
    .local pmc fb_tmp_214 
    .local pmc fb_tmp_215 
    .local pmc fb_tmp_216 
    .local pmc fb_tmp_217 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P102, $P5002
    nqp_get_sc_object $P5003, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P103, $P5003
    nqp_get_sc_object $P5004, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P104, $P5004
.annotate 'line', 2295
    $P5005 = "&next_argument"(_lex_param_1)
    set $P101, $P5005
    unless_null _lex_param_1, fallback2559
    nqp_get_sc_object $P5006, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set _lex_param_1, $P5006
  fallback2559:
    set fb_tmp_213, _lex_param_1
    repr_defined $I5001, fb_tmp_213
    unless $I5001 goto if1124_else2557 
    set $P5007, fb_tmp_213["precision"]
    set $P5009, $P5007
    goto if1124_end2558
  if1124_else2557:
    null $P5008
    set $P5009, $P5008
  if1124_end2558:
    unless_null $P5009, vivi_11252560
    nqp_get_sc_object $P5010, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5009, $P5010
  vivi_11252560:
    unless $P5009 goto if1123_else2555 
.annotate 'line', 2296
    unless_null _lex_param_1, fallback2563
    nqp_get_sc_object $P5011, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set _lex_param_1, $P5011
  fallback2563:
    set fb_tmp_214, _lex_param_1
    repr_defined $I5002, fb_tmp_214
    unless $I5002 goto if1126_else2561 
    set $P5012, fb_tmp_214["precision"]
    set $P5014, $P5012
    goto if1126_end2562
  if1126_else2561:
    null $P5013
    set $P5014, $P5013
  if1126_end2562:
    unless_null $P5014, vivi_11272564
    nqp_get_sc_object $P5015, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5014, $P5015
  vivi_11272564:
    $P5016 = $P5014."ast"()
    set $P5017, $P5016
    goto if1123_end2556
  if1123_else2555:
    box $P5018, 6
    set $P5017, $P5018
  if1123_end2556:
    set $P102, $P5017
.annotate 'line', 2297
    $P5019 = "&padding_char"(_lex_param_1)
    set $P103, $P5019
    unless_null _lex_param_1, fallback2569
    nqp_get_sc_object $P5020, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set _lex_param_1, $P5020
  fallback2569:
    set fb_tmp_215, _lex_param_1
    repr_defined $I5003, fb_tmp_215
    unless $I5003 goto if1129_else2567 
    set $P5021, fb_tmp_215["size"]
    set $P5023, $P5021
    goto if1129_end2568
  if1129_else2567:
    null $P5022
    set $P5023, $P5022
  if1129_end2568:
    unless_null $P5023, vivi_11302570
    nqp_get_sc_object $P5024, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5023, $P5024
  vivi_11302570:
    unless $P5023 goto if1128_else2565 
.annotate 'line', 2298
    unless_null _lex_param_1, fallback2573
    nqp_get_sc_object $P5025, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set _lex_param_1, $P5025
  fallback2573:
    set fb_tmp_216, _lex_param_1
    repr_defined $I5004, fb_tmp_216
    unless $I5004 goto if1131_else2571 
    set $P5026, fb_tmp_216["size"]
    set $P5028, $P5026
    goto if1131_end2572
  if1131_else2571:
    null $P5027
    set $P5028, $P5027
  if1131_end2572:
    unless_null $P5028, vivi_11322574
    nqp_get_sc_object $P5029, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5028, $P5029
  vivi_11322574:
    $P5030 = $P5028."ast"()
    set $P5031, $P5030
    goto if1128_end2566
  if1128_else2565:
    box $P5032, 0
    set $P5031, $P5032
  if1128_end2566:
    set $P104, $P5031
.annotate 'line', 2299
    unless_null _lex_param_1, fallback2577
    nqp_get_sc_object $P5033, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set _lex_param_1, $P5033
  fallback2577:
    set fb_tmp_217, _lex_param_1
    repr_defined $I5005, fb_tmp_217
    unless $I5005 goto if1133_else2575 
    set $P5034, fb_tmp_217["sym"]
    set $P5036, $P5034
    goto if1133_end2576
  if1133_else2575:
    null $P5035
    set $P5036, $P5035
  if1133_end2576:
    unless_null $P5036, vivi_11342578
    nqp_get_sc_object $P5037, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5036, $P5037
  vivi_11342578:
    $P5038 = "&scientific"($P101, $P5036, $P102, $P104, $P103)
    $P5039 = _lex_param_1."!make"($P5038)
    .return ($P5039) 
.end
.HLL "nqp"
.namespace []
.sub "directive:sym<f>" :subid("cuid_218_1383914954.64741") :anon :lex :outer("cuid_306_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2301
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$int", $P101 
    .lex "$precision", $P102 
    .lex "$pad", $P103 
    .lex "$size", $P104 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_218 
    .local pmc fb_tmp_219 
    .local pmc fb_tmp_220 
    .local pmc fb_tmp_221 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P102, $P5002
    nqp_get_sc_object $P5003, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P103, $P5003
    nqp_get_sc_object $P5004, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P104, $P5004
.annotate 'line', 2302
    $P5005 = "&next_argument"(_lex_param_1)
    set $P101, $P5005
    unless_null _lex_param_1, fallback2583
    nqp_get_sc_object $P5006, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set _lex_param_1, $P5006
  fallback2583:
    set fb_tmp_218, _lex_param_1
    repr_defined $I5001, fb_tmp_218
    unless $I5001 goto if1136_else2581 
    set $P5007, fb_tmp_218["precision"]
    set $P5009, $P5007
    goto if1136_end2582
  if1136_else2581:
    null $P5008
    set $P5009, $P5008
  if1136_end2582:
    unless_null $P5009, vivi_11372584
    nqp_get_sc_object $P5010, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5009, $P5010
  vivi_11372584:
    unless $P5009 goto if1135_else2579 
.annotate 'line', 2303
    unless_null _lex_param_1, fallback2587
    nqp_get_sc_object $P5011, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set _lex_param_1, $P5011
  fallback2587:
    set fb_tmp_219, _lex_param_1
    repr_defined $I5002, fb_tmp_219
    unless $I5002 goto if1138_else2585 
    set $P5012, fb_tmp_219["precision"]
    set $P5014, $P5012
    goto if1138_end2586
  if1138_else2585:
    null $P5013
    set $P5014, $P5013
  if1138_end2586:
    unless_null $P5014, vivi_11392588
    nqp_get_sc_object $P5015, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5014, $P5015
  vivi_11392588:
    $P5016 = $P5014."ast"()
    set $P5017, $P5016
    goto if1135_end2580
  if1135_else2579:
    box $P5018, 6
    set $P5017, $P5018
  if1135_end2580:
    set $P102, $P5017
.annotate 'line', 2304
    $P5019 = "&padding_char"(_lex_param_1)
    set $P103, $P5019
    unless_null _lex_param_1, fallback2593
    nqp_get_sc_object $P5020, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set _lex_param_1, $P5020
  fallback2593:
    set fb_tmp_220, _lex_param_1
    repr_defined $I5003, fb_tmp_220
    unless $I5003 goto if1141_else2591 
    set $P5021, fb_tmp_220["size"]
    set $P5023, $P5021
    goto if1141_end2592
  if1141_else2591:
    null $P5022
    set $P5023, $P5022
  if1141_end2592:
    unless_null $P5023, vivi_11422594
    nqp_get_sc_object $P5024, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5023, $P5024
  vivi_11422594:
    unless $P5023 goto if1140_else2589 
.annotate 'line', 2305
    unless_null _lex_param_1, fallback2597
    nqp_get_sc_object $P5025, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set _lex_param_1, $P5025
  fallback2597:
    set fb_tmp_221, _lex_param_1
    repr_defined $I5004, fb_tmp_221
    unless $I5004 goto if1143_else2595 
    set $P5026, fb_tmp_221["size"]
    set $P5028, $P5026
    goto if1143_end2596
  if1143_else2595:
    null $P5027
    set $P5028, $P5027
  if1143_end2596:
    unless_null $P5028, vivi_11442598
    nqp_get_sc_object $P5029, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5028, $P5029
  vivi_11442598:
    $P5030 = $P5028."ast"()
    set $P5031, $P5030
    goto if1140_end2590
  if1140_else2589:
    box $P5032, 0
    set $P5031, $P5032
  if1140_end2590:
    set $P104, $P5031
.annotate 'line', 2306
    $P5033 = "&fixed-point"($P101, $P102, $P104, $P103)
    $P5034 = _lex_param_1."!make"($P5033)
    .return ($P5034) 
.end
.HLL "nqp"
.namespace []
.sub "directive:sym<g>" :subid("cuid_219_1383914954.64741") :anon :lex :outer("cuid_306_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2308
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$float", $P101 
    .lex "$precision", $P102 
    .lex "$pad", $P103 
    .lex "$size", $P104 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_222 
    .local pmc fb_tmp_223 
    .local pmc fb_tmp_224 
    .local pmc fb_tmp_225 
    .local pmc fb_tmp_226 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P102, $P5002
    nqp_get_sc_object $P5003, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P103, $P5003
    nqp_get_sc_object $P5004, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P104, $P5004
.annotate 'line', 2309
    $P5005 = "&next_argument"(_lex_param_1)
    set $P101, $P5005
    unless_null _lex_param_1, fallback2603
    nqp_get_sc_object $P5006, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set _lex_param_1, $P5006
  fallback2603:
    set fb_tmp_222, _lex_param_1
    repr_defined $I5001, fb_tmp_222
    unless $I5001 goto if1146_else2601 
    set $P5007, fb_tmp_222["precision"]
    set $P5009, $P5007
    goto if1146_end2602
  if1146_else2601:
    null $P5008
    set $P5009, $P5008
  if1146_end2602:
    unless_null $P5009, vivi_11472604
    nqp_get_sc_object $P5010, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5009, $P5010
  vivi_11472604:
    unless $P5009 goto if1145_else2599 
.annotate 'line', 2310
    unless_null _lex_param_1, fallback2607
    nqp_get_sc_object $P5011, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set _lex_param_1, $P5011
  fallback2607:
    set fb_tmp_223, _lex_param_1
    repr_defined $I5002, fb_tmp_223
    unless $I5002 goto if1148_else2605 
    set $P5012, fb_tmp_223["precision"]
    set $P5014, $P5012
    goto if1148_end2606
  if1148_else2605:
    null $P5013
    set $P5014, $P5013
  if1148_end2606:
    unless_null $P5014, vivi_11492608
    nqp_get_sc_object $P5015, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5014, $P5015
  vivi_11492608:
    $P5016 = $P5014."ast"()
    set $P5017, $P5016
    goto if1145_end2600
  if1145_else2599:
    box $P5018, 6
    set $P5017, $P5018
  if1145_end2600:
    set $P102, $P5017
.annotate 'line', 2311
    $P5019 = "&padding_char"(_lex_param_1)
    set $P103, $P5019
    unless_null _lex_param_1, fallback2613
    nqp_get_sc_object $P5020, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set _lex_param_1, $P5020
  fallback2613:
    set fb_tmp_224, _lex_param_1
    repr_defined $I5003, fb_tmp_224
    unless $I5003 goto if1151_else2611 
    set $P5021, fb_tmp_224["size"]
    set $P5023, $P5021
    goto if1151_end2612
  if1151_else2611:
    null $P5022
    set $P5023, $P5022
  if1151_end2612:
    unless_null $P5023, vivi_11522614
    nqp_get_sc_object $P5024, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5023, $P5024
  vivi_11522614:
    unless $P5023 goto if1150_else2609 
.annotate 'line', 2312
    unless_null _lex_param_1, fallback2617
    nqp_get_sc_object $P5025, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set _lex_param_1, $P5025
  fallback2617:
    set fb_tmp_225, _lex_param_1
    repr_defined $I5004, fb_tmp_225
    unless $I5004 goto if1153_else2615 
    set $P5026, fb_tmp_225["size"]
    set $P5028, $P5026
    goto if1153_end2616
  if1153_else2615:
    null $P5027
    set $P5028, $P5027
  if1153_end2616:
    unless_null $P5028, vivi_11542618
    nqp_get_sc_object $P5029, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5028, $P5029
  vivi_11542618:
    $P5030 = $P5028."ast"()
    set $P5031, $P5030
    goto if1150_end2610
  if1150_else2609:
    box $P5032, 0
    set $P5031, $P5032
  if1150_end2610:
    set $P104, $P5031
.annotate 'line', 2313
    unless_null _lex_param_1, fallback2623
    nqp_get_sc_object $P5033, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set _lex_param_1, $P5033
  fallback2623:
    set fb_tmp_226, _lex_param_1
    repr_defined $I5006, fb_tmp_226
    unless $I5006 goto if1156_else2621 
    set $P5034, fb_tmp_226["sym"]
    set $P5036, $P5034
    goto if1156_end2622
  if1156_else2621:
    null $P5035
    set $P5036, $P5035
  if1156_end2622:
    unless_null $P5036, vivi_11572624
    nqp_get_sc_object $P5037, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5036, $P5037
  vivi_11572624:
    set $S5001, $P5036
    iseq $I5005, $S5001, "G"
    unless $I5005 goto if1155_else2619 
    set $S5002, "E"
    goto if1155_end2620
  if1155_else2619:
    set $S5002, "e"
  if1155_end2620:
    $P5038 = "&shortest"($P101, $S5002, $P102, $P104, $P103)
    $P5039 = _lex_param_1."!make"($P5038)
    .return ($P5039) 
.end
.HLL "nqp"
.namespace []
.sub "directive:sym<o>" :subid("cuid_220_1383914954.64741") :anon :lex :outer("cuid_306_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2315
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$int", $P101 
    .lex "$pre", $P102 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_227 
    .local pmc fb_tmp_228 
    .local pmc fb_tmp_229 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P102, $P5002
.annotate 'line', 2316
    $P5003 = "&next_argument"(_lex_param_1)
    $P5004 = "&intify"($P5003)
    set $P101, $P5004
    set $I5001, 8
    nqp_bigint_to_str_base $S5001, $P101, $I5001
    box $P5005, $S5001
    set $P101, $P5005
    set $P5007, $P101
    unless $P101 goto if1159_end2628 
.annotate 'line', 2318
    $P5006 = "&has_flag"(_lex_param_1, "hash")
    set $P5007, $P5006
  if1159_end2628:
    unless $P5007 goto if1158_end2626 
    box $P5008, "0"
    set $P102, $P5008
  if1158_end2626:
    unless_null _lex_param_1, fallback2633
    nqp_get_sc_object $P5009, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set _lex_param_1, $P5009
  fallback2633:
    set fb_tmp_227, _lex_param_1
    repr_defined $I5003, fb_tmp_227
    unless $I5003 goto if1161_else2631 
    set $P5010, fb_tmp_227["precision"]
    set $P5012, $P5010
    goto if1161_end2632
  if1161_else2631:
    null $P5011
    set $P5012, $P5011
  if1161_end2632:
    unless_null $P5012, vivi_11622634
    nqp_get_sc_object $P5013, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5012, $P5013
  vivi_11622634:
    set $S5002, $P5012
    length $I5002, $S5002
    unless $I5002 goto if1160_else2629 
.annotate 'line', 2319
.annotate 'line', 2320
    unless_null _lex_param_1, fallback2641
    nqp_get_sc_object $P5014, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set _lex_param_1, $P5014
  fallback2641:
    set fb_tmp_228, _lex_param_1
    repr_defined $I5005, fb_tmp_228
    unless $I5005 goto if1165_else2639 
    set $P5015, fb_tmp_228["precision"]
    set $P5017, $P5015
    goto if1165_end2640
  if1165_else2639:
    null $P5016
    set $P5017, $P5016
  if1165_end2640:
    unless_null $P5017, vivi_11662642
    nqp_get_sc_object $P5018, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5017, $P5018
  vivi_11662642:
    $P5019 = $P5017."ast"()
    set $N5001, $P5019
    set $N5002, 0
    iseq $I5004, $N5001, $N5002
    set $I5007, $I5004
    unless $I5004 goto if1164_end2638 
    set $N5003, $P101
    set $N5004, 0
    iseq $I5006, $N5003, $N5004
    set $I5007, $I5006
  if1164_end2638:
    unless $I5007 goto if1163_end2636 
    box $P5020, ""
    set $P101, $P5020
  if1163_end2636:
    set $S5005, $P102
.annotate 'line', 2321
    unless_null _lex_param_1, fallback2645
    nqp_get_sc_object $P5021, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set _lex_param_1, $P5021
  fallback2645:
    set fb_tmp_229, _lex_param_1
    repr_defined $I5008, fb_tmp_229
    unless $I5008 goto if1167_else2643 
    set $P5022, fb_tmp_229["precision"]
    set $P5024, $P5022
    goto if1167_end2644
  if1167_else2643:
    null $P5023
    set $P5024, $P5023
  if1167_end2644:
    unless_null $P5024, vivi_11682646
    nqp_get_sc_object $P5025, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5024, $P5025
  vivi_11682646:
    $P5026 = $P5024."ast"()
    $P5027 = "&intify"($P5026)
    set $N5006, $P5027
    set $S5006, $P101
    length $I5009, $S5006
    set $N5007, $I5009
    sub $N5005, $N5006, $N5007
    $P5028 = "&infix_x"("0", $N5005)
    set $S5007, $P5028
    concat $S5004, $S5005, $S5007
    set $S5008, $P101
    concat $S5003, $S5004, $S5008
    box $P5029, $S5003
    set $P101, $P5029
    goto if1160_end2630
  if1160_else2629:
.annotate 'line', 2323
    set $S5010, $P102
    set $S5011, $P101
    concat $S5009, $S5010, $S5011
    box $P5030, $S5009
    set $P101, $P5030
  if1160_end2630:
.annotate 'line', 2326
    $P5031 = _lex_param_1."!make"($P101)
    .return ($P5031) 
.end
.HLL "nqp"
.namespace []
.sub "directive:sym<s>" :subid("cuid_221_1383914954.64741") :anon :lex :outer("cuid_306_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2329
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$string", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_230 
    .local pmc fb_tmp_231 
    .local pmc fb_tmp_232 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P101, $P5001
.annotate 'line', 2330
    $P5002 = "&next_argument"(_lex_param_1)
    set $P101, $P5002
    unless_null _lex_param_1, fallback2653
    nqp_get_sc_object $P5003, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set _lex_param_1, $P5003
  fallback2653:
    set fb_tmp_230, _lex_param_1
    repr_defined $I5002, fb_tmp_230
    unless $I5002 goto if1171_else2651 
    set $P5004, fb_tmp_230["precision"]
    set $P5006, $P5004
    goto if1171_end2652
  if1171_else2651:
    null $P5005
    set $P5006, $P5005
  if1171_end2652:
    unless_null $P5006, vivi_11722654
    nqp_get_sc_object $P5007, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5006, $P5007
  vivi_11722654:
    set $S5001, $P5006
    length $I5001, $S5001
    set $I5006, $I5001
    unless $I5001 goto if1170_end2650 
    set $S5002, $P101
    length $I5004, $S5002
    set $N5001, $I5004
.annotate 'line', 2331
    unless_null _lex_param_1, fallback2657
    nqp_get_sc_object $P5008, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set _lex_param_1, $P5008
  fallback2657:
    set fb_tmp_231, _lex_param_1
    repr_defined $I5005, fb_tmp_231
    unless $I5005 goto if1173_else2655 
    set $P5009, fb_tmp_231["precision"]
    set $P5011, $P5009
    goto if1173_end2656
  if1173_else2655:
    null $P5010
    set $P5011, $P5010
  if1173_end2656:
    unless_null $P5011, vivi_11742658
    nqp_get_sc_object $P5012, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5011, $P5012
  vivi_11742658:
    $P5013 = $P5011."ast"()
    set $N5002, $P5013
    isgt $I5003, $N5001, $N5002
    set $I5006, $I5003
  if1170_end2650:
    unless $I5006 goto if1169_end2648 
    set $S5004, $P101
.annotate 'line', 2332
    unless_null _lex_param_1, fallback2661
    nqp_get_sc_object $P5014, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set _lex_param_1, $P5014
  fallback2661:
    set fb_tmp_232, _lex_param_1
    repr_defined $I5007, fb_tmp_232
    unless $I5007 goto if1175_else2659 
    set $P5015, fb_tmp_232["precision"]
    set $P5017, $P5015
    goto if1175_end2660
  if1175_else2659:
    null $P5016
    set $P5017, $P5016
  if1175_end2660:
    unless_null $P5017, vivi_11762662
    nqp_get_sc_object $P5018, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5017, $P5018
  vivi_11762662:
    $P5019 = $P5017."ast"()
    set $I5008, $P5019
    substr $S5003, $S5004, 0, $I5008
    box $P5020, $S5003
    set $P101, $P5020
  if1169_end2648:
.annotate 'line', 2334
    $P5021 = _lex_param_1."!make"($P101)
    .return ($P5021) 
.end
.HLL "nqp"
.namespace []
.sub "directive:sym<u>" :subid("cuid_222_1383914954.64741") :anon :lex :outer("cuid_306_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2338
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5008 = 'cuid_324_1383914954.64741' 
    capture_lex $P5008 
    .lex "$int", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P101, $P5001
.annotate 'line', 2339
    $P5002 = "&next_argument"(_lex_param_1)
    $P5003 = "&intify"($P5002)
    set $P101, $P5003
    find_lex $P5004, "$zero"
    nqp_bigint_lt $I5001, $P101, $P5004
    unless $I5001 goto if1177_end2664 
    .const 'Sub' $P5005 = 'cuid_324_1383914954.64741' 
    capture_lex $P5005
    $P5006 = $P5005()
  if1177_end2664:
.annotate 'line', 2349
    nqp_bigint_to_str $S5001, $P101
    $P5007 = _lex_param_1."!make"($S5001)
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_324_1383914954.64741") :anon :lex :outer("cuid_222_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2340
    .lex "$err", $P101 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P101, $P5001
    getinterp $P5002
    $P5003 = $P5002."stderr_handle"()
    set $P101, $P5003
    find_lex $P5004, "$int"
    set $S5003, $P5004
    concat $S5002, "negative value '", $S5003
    concat $S5001, $S5002, "' for %u in sprintf"
    $P5005 = $P101."print"($S5001)
    box $P5006, 0
    store_lex "$int", $P5006
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "directive:sym<x>" :subid("cuid_223_1383914954.64741") :anon :lex :outer("cuid_306_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2351
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$int", $P101 
    .lex "$pre", $P102 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_233 
    .local pmc fb_tmp_234 
    .local pmc fb_tmp_235 
    .local pmc fb_tmp_236 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P102, $P5002
.annotate 'line', 2352
    $P5003 = "&next_argument"(_lex_param_1)
    $P5004 = "&intify"($P5003)
    set $P101, $P5004
    set $I5001, 16
    nqp_bigint_to_str_base $S5001, $P101, $I5001
    box $P5005, $S5001
    set $P101, $P5005
    set $P5007, $P101
    unless $P101 goto if1179_end2668 
.annotate 'line', 2354
    $P5006 = "&has_flag"(_lex_param_1, "hash")
    set $P5007, $P5006
  if1179_end2668:
    unless $P5007 goto if1178_end2666 
    box $P5008, "0X"
    set $P102, $P5008
  if1178_end2666:
    unless_null _lex_param_1, fallback2673
    nqp_get_sc_object $P5009, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set _lex_param_1, $P5009
  fallback2673:
    set fb_tmp_233, _lex_param_1
    repr_defined $I5003, fb_tmp_233
    unless $I5003 goto if1181_else2671 
    set $P5010, fb_tmp_233["precision"]
    set $P5012, $P5010
    goto if1181_end2672
  if1181_else2671:
    null $P5011
    set $P5012, $P5011
  if1181_end2672:
    unless_null $P5012, vivi_11822674
    nqp_get_sc_object $P5013, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5012, $P5013
  vivi_11822674:
    set $S5002, $P5012
    length $I5002, $S5002
    unless $I5002 goto if1180_else2669 
.annotate 'line', 2355
.annotate 'line', 2356
    unless_null _lex_param_1, fallback2681
    nqp_get_sc_object $P5014, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set _lex_param_1, $P5014
  fallback2681:
    set fb_tmp_234, _lex_param_1
    repr_defined $I5005, fb_tmp_234
    unless $I5005 goto if1185_else2679 
    set $P5015, fb_tmp_234["precision"]
    set $P5017, $P5015
    goto if1185_end2680
  if1185_else2679:
    null $P5016
    set $P5017, $P5016
  if1185_end2680:
    unless_null $P5017, vivi_11862682
    nqp_get_sc_object $P5018, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5017, $P5018
  vivi_11862682:
    $P5019 = $P5017."ast"()
    set $N5001, $P5019
    set $N5002, 0
    iseq $I5004, $N5001, $N5002
    set $I5007, $I5004
    unless $I5004 goto if1184_end2678 
    set $N5003, $P101
    set $N5004, 0
    iseq $I5006, $N5003, $N5004
    set $I5007, $I5006
  if1184_end2678:
    unless $I5007 goto if1183_end2676 
    box $P5020, ""
    set $P101, $P5020
  if1183_end2676:
    set $S5005, $P102
.annotate 'line', 2357
    unless_null _lex_param_1, fallback2685
    nqp_get_sc_object $P5021, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set _lex_param_1, $P5021
  fallback2685:
    set fb_tmp_235, _lex_param_1
    repr_defined $I5008, fb_tmp_235
    unless $I5008 goto if1187_else2683 
    set $P5022, fb_tmp_235["precision"]
    set $P5024, $P5022
    goto if1187_end2684
  if1187_else2683:
    null $P5023
    set $P5024, $P5023
  if1187_end2684:
    unless_null $P5024, vivi_11882686
    nqp_get_sc_object $P5025, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5024, $P5025
  vivi_11882686:
    $P5026 = $P5024."ast"()
    set $N5006, $P5026
    set $S5006, $P101
    length $I5009, $S5006
    set $N5007, $I5009
    sub $N5005, $N5006, $N5007
    $P5027 = "&infix_x"("0", $N5005)
    set $S5007, $P5027
    concat $S5004, $S5005, $S5007
    set $S5008, $P101
    concat $S5003, $S5004, $S5008
    box $P5028, $S5003
    set $P101, $P5028
    goto if1180_end2670
  if1180_else2669:
.annotate 'line', 2359
    set $S5010, $P102
    set $S5011, $P101
    concat $S5009, $S5010, $S5011
    box $P5029, $S5009
    set $P101, $P5029
  if1180_end2670:
.annotate 'line', 2362
    unless_null _lex_param_1, fallback2691
    nqp_get_sc_object $P5030, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set _lex_param_1, $P5030
  fallback2691:
    set fb_tmp_236, _lex_param_1
    repr_defined $I5011, fb_tmp_236
    unless $I5011 goto if1190_else2689 
    set $P5031, fb_tmp_236["sym"]
    set $P5033, $P5031
    goto if1190_end2690
  if1190_else2689:
    null $P5032
    set $P5033, $P5032
  if1190_end2690:
    unless_null $P5033, vivi_11912692
    nqp_get_sc_object $P5034, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5033, $P5034
  vivi_11912692:
    set $S5012, $P5033
    iseq $I5010, $S5012, "x"
    unless $I5010 goto if1189_else2687 
    set $S5014, $P101
    downcase $S5013, $S5014
    box $P5036, $S5013
    set $P5035, $P5036
    goto if1189_end2688
  if1189_else2687:
    set $P5035, $P101
  if1189_end2688:
    $P5037 = _lex_param_1."!make"($P5035)
    .return ($P5037) 
.end
.HLL "nqp"
.namespace []
.sub "escape:sym<%>" :subid("cuid_224_1383914954.64741") :anon :lex :outer("cuid_306_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2365
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
.annotate 'line', 2366
    $P5001 = _lex_param_1."!make"("%")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "literal" :subid("cuid_225_1383914954.64741") :anon :lex :outer("cuid_306_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2369
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
.annotate 'line', 2370
    set $S5001, _lex_param_1
    $P5001 = _lex_param_1."!make"($S5001)
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "idx" :subid("cuid_226_1383914954.64741") :anon :lex :outer("cuid_306_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2373
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$index", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_237 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P101, $P5001
    unless_null _lex_param_1, fallback2695
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set _lex_param_1, $P5002
  fallback2695:
    set fb_tmp_237, _lex_param_1
    repr_defined $I5001, fb_tmp_237
    unless $I5001 goto if1192_else2693 
    set $P5003, fb_tmp_237["param_index"]
    set $P5005, $P5003
    goto if1192_end2694
  if1192_else2693:
    null $P5004
    set $P5005, $P5004
  if1192_end2694:
    unless_null $P5005, vivi_11932696
    nqp_get_sc_object $P5006, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5005, $P5006
  vivi_11932696:
    set $N5002, $P5005
    set $N5003, 1
    sub $N5001, $N5002, $N5003
    box $P5007, $N5001
    set $P101, $P5007
    set $N5004, $P101
    set $N5005, 0
    islt $I5002, $N5004, $N5005
    unless $I5002 goto if1194_end2698 
    box $P5008, "Parameter index starts to count at 1 but 0 was passed"
    die $P5008
  if1194_end2698:
.annotate 'line', 2376
    $P5009 = _lex_param_1."!make"($P101)
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "size" :subid("cuid_227_1383914954.64741") :anon :lex :outer("cuid_306_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2379
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_238 
.annotate 'line', 2380
    unless_null _lex_param_1, fallback2703
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set _lex_param_1, $P5001
  fallback2703:
    set fb_tmp_238, _lex_param_1
    repr_defined $I5001, fb_tmp_238
    unless $I5001 goto if1196_else2701 
    set $P5002, fb_tmp_238["star"]
    set $P5004, $P5002
    goto if1196_end2702
  if1196_else2701:
    null $P5003
    set $P5004, $P5003
  if1196_end2702:
    unless_null $P5004, vivi_11972704
    nqp_get_sc_object $P5005, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5004, $P5005
  vivi_11972704:
    unless $P5004 goto if1195_else2699 
    new $P5006, 'Hash'
    $P5007 = "&next_argument"($P5006)
    set $P5008, $P5007
    goto if1195_end2700
  if1195_else2699:
    set $S5001, _lex_param_1
    box $P5009, $S5001
    set $P5008, $P5009
  if1195_end2700:
    $P5010 = _lex_param_1."!make"($P5008)
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_325_1383914954.64741") :anon :lex :outer("cuid_301_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2394
    .const 'Sub' $P5003 = 'cuid_228_1383914954.64741' 
    capture_lex $P5003 
    .const 'Sub' $P5003 = 'cuid_229_1383914954.64741' 
    capture_lex $P5003 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_228_1383914954.64741' 
    capture_lex $P5001
    .const 'Sub' $P5002 = 'cuid_229_1383914954.64741' 
    capture_lex $P5002
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "TOP" :subid("cuid_228_1383914954.64741") :anon :lex :outer("cuid_325_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2395
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5015 = 'cuid_326_1383914954.64741' 
    capture_lex $P5015 
    .lex "$count", $P101 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_239 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P101, $P5001
    box $P5002, 0
    set $P101, $P5002
    unless_null _lex_param_1, fallback2707
    nqp_get_sc_object $P5006, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set _lex_param_1, $P5006
  fallback2707:
    set fb_tmp_239, _lex_param_1
    repr_defined $I5001, fb_tmp_239
    unless $I5001 goto if1198_else2705 
    set $P5007, fb_tmp_239["statement"]
    set $P5009, $P5007
    goto if1198_end2706
  if1198_else2705:
    null $P5008
    set $P5009, $P5008
  if1198_end2706:
    unless_null $P5009, vivi_11992708
    nqp_get_sc_object $P5010, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5009, $P5010
  vivi_11992708:
    set $P5003, $P5009
    iter $P5005, $P5009
    new $P5012, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5012, for_handlers2709
    push_eh $P5012
  for_next2710:
    unless $P5005, for_done2712
    shift $P5013, $P5005
  for_redo2711:
    .const 'Sub' $P5011 = 'cuid_326_1383914954.64741' 
    capture_lex $P5011
    $P5003 = $P5011($P5013)
    goto for_next2710
  for_handlers2709:
    .get_results ($P5012)
    pop_upto_eh $P5012
    getattribute $P5012, $P5012, 'type'
    eq $P5012, .CONTROL_LOOP_NEXT, for_next2710
    eq $P5012, .CONTROL_LOOP_REDO, for_redo2711
  for_done2712:
    pop_eh 
.annotate 'line', 2398
    $P5014 = _lex_param_1."!make"($P101)
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_326_1383914954.64741") :anon :lex :outer("cuid_228_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5001, "$count"
    set $I5002, $P5001
.annotate 'line', 2397
    $P5002 = _lex_param_0."ast"()
    set $I5003, $P5002
    add $I5001, $I5002, $I5003
    box $P5003, $I5001
    store_lex "$count", $P5003
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "statement" :subid("cuid_229_1383914954.64741") :anon :lex :outer("cuid_325_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
.annotate 'line', 2401
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$/", _lex_param_1 
    .local pmc fb_tmp_240 
    .local pmc fb_tmp_241 
    .local pmc fb_tmp_242 
.annotate 'line', 2402
    unless_null _lex_param_1, fallback2719
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set _lex_param_1, $P5001
  fallback2719:
    set fb_tmp_240, _lex_param_1
    repr_defined $I5001, fb_tmp_240
    unless $I5001 goto if1202_else2717 
    set $P5002, fb_tmp_240["directive"]
    set $P5004, $P5002
    goto if1202_end2718
  if1202_else2717:
    null $P5003
    set $P5004, $P5003
  if1202_end2718:
    unless_null $P5004, vivi_12032720
    nqp_get_sc_object $P5005, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5004, $P5005
  vivi_12032720:
    set $P5015, $P5004
    unless $P5004 goto if1201_end2716 
    unless_null _lex_param_1, fallback2725
    nqp_get_sc_object $P5006, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set _lex_param_1, $P5006
  fallback2725:
    set fb_tmp_242, _lex_param_1
    repr_defined $I5004, fb_tmp_242
    unless $I5004 goto if1205_else2723 
    set $P5007, fb_tmp_242["directive"]
    set $P5009, $P5007
    goto if1205_end2724
  if1205_else2723:
    null $P5008
    set $P5009, $P5008
  if1205_end2724:
    unless_null $P5009, vivi_12062726
    nqp_get_sc_object $P5010, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5009, $P5010
  vivi_12062726:
    set fb_tmp_241, $P5009
    repr_defined $I5003, fb_tmp_241
    unless $I5003 goto if1204_else2721 
    set $P5011, fb_tmp_241["idx"]
    set $P5013, $P5011
    goto if1204_end2722
  if1204_else2721:
    null $P5012
    set $P5013, $P5012
  if1204_end2722:
    unless_null $P5013, vivi_12072727
    nqp_get_sc_object $P5014, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449", 26
    set $P5013, $P5014
  vivi_12072727:
    isfalse $I5002, $P5013
    box $P5016, $I5002
    set $P5015, $P5016
  if1201_end2716:
    unless $P5015 goto if1200_else2713 
    set $I5005, 1
    goto if1200_end2714
  if1200_else2713:
    set $I5005, 0
  if1200_end2714:
    $P5017 = _lex_param_1."!make"($I5005)
    .return ($P5017) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_328_1383914954.64741") :load :init
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
    .const 'Sub' $P5001 = 'cuid_327_1383914954.64741' 
    capture_lex $P5001 
    .local pmc cur_sc 
    .local pmc conflicts 
    nqp_dynop_setup 
    nqp_bigint_setup 
    getinterp $P5001
    get_class $P5002, "LexPad"
    get_class $P5003, "NQPLexPad"
    $P5004 = $P5001."hll_map"($P5002, $P5003)
    load_bytecode "ModuleLoader.pbc"
    .const 'Sub' $P5001 = "cuid_230_1383914954.64741" 
    get_hll_global $P5002, "ModuleLoader"
    $P5003 = $P5002."load_setting"("NQPCORE")
    $P5004 = $P5001."set_outer_ctx"($P5003)
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P5001, "ModuleLoader"
    $P5001."load_module"("QRegex")
    nqp_create_sc $P5001, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819"
    set cur_sc, $P5001
    $P5002 = cur_sc."set_description"("gen/parrot/stage2/NQPHLL.nqp")
    new $P5003, 'ResizablePMCArray'
    set conflicts, $P5003
    new $P5004, 'ResizableStringArray'
    null $S5001
    push $P5004, $S5001
    push $P5004, "P6opaque"
    push $P5004, "HLL"
    push $P5004, "QAST"
    push $P5004, "QRegex"
    push $P5004, "NQPCursorRole"
    push $P5004, "65475E2A0C14FDD82BB949E6EFAAEB49870261A5-1383914944.49584"
    push $P5004, "gen/parrot/stage2/QRegex.nqp"
    push $P5004, "NQPMatch"
    push $P5004, "NQPCursor"
    push $P5004, "NQPRegexMethod"
    push $P5004, "NQPRegex"
    push $P5004, "DEFAULT"
    push $P5004, "CREATE"
    push $P5004, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1383914936.15449"
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
    push $P5004, "CAPHASH"
    push $P5004, "!cursor_init"
    push $P5004, "!cursor_start_all"
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
    push $P5004, ""
    push $P5004, "OPER"
    push $P5004, "alt_nfa__1_1383914955.75464"
    push $P5004, "alt_nfa__2_1383914955.81866"
    push $P5004, "0123456789abcdefABCDEF"
    push $P5004, "01234567"
    push $P5004, "01"
    push $P5004, "VALUE"
    push $P5004, "alt_nfa__3_1383914955.96268"
    push $P5004, "alt_nfa__4_1383914955.96359"
    push $P5004, "coeff"
    push $P5004, "alt_nfa__5_1383914956.001"
    push $P5004, "Ee"
    push $P5004, "+-"
    push $P5004, "\\"
    push $P5004, "alt_nfa__6_1383914956.20842"
    push $P5004, "alt_nfa__7_1383914956.23174"
    push $P5004, "sym"
    push $P5004, "textqq"
    push $P5004, "0"
    push $P5004, "textq"
    push $P5004, "alt_nfa__8_1383914956.30432"
    push $P5004, "],#"
    push $P5004, "?@ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    push $P5004, "alt_nfa__9_1383914956.3785"
    push $P5004, "%"
    push $P5004, "alt_nfa__10_1383914963.13024"
    push $P5004, "alt_nfa__11_1383914963.13059"
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
    push $P5004, "alt_nfa__12_1383914963.50244"
    push $P5004, "star"
    push $P5004, "alt_nfa__13_1383914963.51399"
    push $P5004, "eEfFgG"
    push $P5004, "__6MODEL_CORE__"
    push $P5004, "GLOBALish"
    push $P5004, "EXPORT"
    push $P5004, "82C8134F4F1F98F3955D960634CCE916B8CF0355-1383914928.04611"
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
    push $P5004, "2D75A9E3BEA240A82E5B17B1BB1078D757A67840-1383914940.28217"
    push $P5004, "gen/parrot/stage2/QASTNode.nqp"
    push $P5004, "SpecialArg"
    push $P5004, "Node"
    push $P5004, "Regex"
    push $P5004, "IVal"
    push $P5004, "NVal"
    push $P5004, "SVal"
    push $P5004, "BVal"
    push $P5004, "WVal"
    push $P5004, "Want"
    push $P5004, "Var"
    push $P5004, "VarWithFallback"
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
    .const 'Sub' $P5005 = 'cuid_327_1383914954.64741' 
    capture_lex $P5005
    $P5006 = $P5005()
    nqp_deserialize_sc "BgAAAEAAAAAFAAAAaAAAABUAAABkAQAAWi8AADgBAADaQgAAwnIBAAEAAADacgEAAQAAAOpyAQAccwEAAAAAAAYAAAAHAAAADgAAAA8AAABCAQAAAAAAAEUBAABGAQAAXwEAAGABAAABAAAAAAAAAMYAAAABAAAAIgEAAIYBAAABAAAA4gEAADgCAAABAAAAlAIAAKIEAAAtAAAACgUAAGAFAAABAAAAYAUAAM4MAAABAAAAZg4AADgRAAABAAAAoBEAAAQVAAABAAAAqBYAAOQXAAABAAAAfBgAAPAZAAABAAAAxBoAAGIcAAAtAAAAnh0AAOodAAABAAAA6h0AACgjAAABAAAAwCQAAJYmAAABAAAA/iYAABAoAAABAAAAeCgAACIpAAABAAAAfikAAOwqAAABAAAASCsAAKwrAAAtAAAACCwAAFosAAABAAAAWiwAAMwsAAABAAAAKC0AAJotAAAAAAAA8wAAAAAAAAAAAAAACgAIAAAAAgAAAAIAAAAAAPQAAAADAAAAAgAAAAAA9QAAAAQAAAACAAAAAAD2AAAABQAAAAIAAQAAACMAAAAIAAAAAgABAAAAWQAAAAkAAAACAAEAAABnAAAACgAAAAIAAQAAAG0AAAALAAAAAgABAAAAcgAAAAoAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAAAAAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAAAAAAAAMA/////////////////////wAAAAD3AAAAAAAAAAEAAAAKAAEAAAAMAAAAAgAAAAAAAgAAAAoAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAAABAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAAAQAAAAMA/////////////////////wAAAAD4AAAAAAAAAAIAAAAKAAAAAAAKAAAAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAAAAgAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAAAIAAAADAP////////////////////8AAAAA+QAAAAAAAAADAAAACgAAAAAACgAeAAAADQAAAAIAAgAAABsAAAAQAAAAAgACAAAAHAAAABEAAAACAAIAAAAdAAAAEgAAAAIAAgAAAB4AAAATAAAAAgACAAAAHwAAABQAAAACAAIAAAAiAAAAFQAAAAIAAgAAACQAAAAWAAAAAgACAAAAJgAAABcAAAACAAIAAAAnAAAAGAAAAAIAAgAAACkAAAAZAAAAAgAAAAAABAAAABoAAAACAAAAAAAFAAAAGwAAAAIAAAAAAAYAAAAcAAAAAgAAAAAABwAAAB0AAAACAAAAAAAIAAAAHgAAAAIAAAAAAAkAAAAfAAAAAgAAAAAACgAAACAAAAACAAAAAAALAAAAIQAAAAIAAAAAAAwAAAAiAAAAAgAAAAAADQAAACMAAAACAAAAAAAOAAAAJAAAAAIAAAAAAA8AAAAlAAAAAgAAAAAAEAAAACYAAAACAAAAAAARAAAAJwAAAAIAAAAAABIAAAAoAAAAAgAAAAAAEwAAACkAAAACAAAAAAAUAAAAKgAAAAIAAAAAABUAAAArAAAAAgAAAAAAFgAAACwAAAACAAAAAAAXAAAAAAAAAAAAAAACAAAAAAAAAAIAAAAAAAMAAAACAAIAAAAaAAAABAAAAAAAAAABAAAAAAAAAAUAAAAAAAAAAwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAACAAAAAAAAAAIAAgAAABoAAAADAAIAAAAAAAMAAAADAP////////////////////8AAAAA+gAAAAAAAAAYAAAACgAAAAAACgAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAABgAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD7AAAAAAAAABsAAAAKAAAAAAAKAH8AAAANAAAAAgACAAAAGwAAABAAAAACAAIAAAAcAAAAEQAAAAIAAgAAAB0AAAASAAAAAgACAAAAHgAAABMAAAACAAIAAAAfAAAAFAAAAAIAAgAAACIAAAAVAAAAAgACAAAAJAAAABYAAAACAAIAAAAmAAAAFwAAAAIAAgAAACcAAAAYAAAAAgACAAAAKQAAAC4AAAACAAEAAABoAAAALwAAAAIAAQAAAGkAAAAwAAAAAgABAAAAagAAADEAAAACAAEAAABrAAAAMgAAAAIAAQAAAGwAAAAzAAAAAgABAAAAfwAAADQAAAACAAEAAACAAAAANQAAAAIAAQAAAIEAAAA2AAAAAgABAAAAggAAADcAAAACAAEAAACDAAAAOAAAAAIAAQAAAIQAAAA5AAAAAgABAAAAhQAAADoAAAACAAEAAACGAAAAOwAAAAIAAQAAAIcAAAA8AAAAAgABAAAAiAAAAD0AAAACAAEAAACJAAAAPgAAAAIAAQAAAIoAAAA/AAAAAgABAAAAiwAAAEAAAAACAAEAAACMAAAAQQAAAAIAAQAAAI0AAABCAAAAAgABAAAAjgAAAEMAAAACAAEAAACPAAAARAAAAAIAAQAAAJAAAABFAAAAAgABAAAAkQAAAEYAAAACAAEAAACSAAAARwAAAAIAAQAAAJMAAABIAAAAAgABAAAAlAAAAEkAAAACAAEAAACVAAAASgAAAAIAAQAAAJYAAABLAAAAAgABAAAAlwAAAEwAAAACAAEAAACYAAAATQAAAAIAAQAAAJkAAABOAAAAAgABAAAAmgAAAE8AAAACAAEAAACbAAAAUAAAAAIAAQAAAJwAAABRAAAAAgABAAAAnQAAAFIAAAACAAEAAACeAAAAUwAAAAIAAQAAAJ8AAABUAAAAAgABAAAAoAAAAFUAAAACAAEAAAChAAAAVgAAAAIAAQAAAKIAAABXAAAAAgABAAAAowAAAFgAAAACAAEAAACkAAAAWQAAAAIAAQAAAKUAAABaAAAAAgABAAAApgAAAFsAAAACAAEAAACnAAAAXAAAAAIAAQAAAKgAAABdAAAAAgABAAAAqQAAAF4AAAACAAEAAACqAAAAXwAAAAIAAQAAAKsAAABgAAAAAgABAAAArAAAAGEAAAACAAEAAACtAAAAYgAAAAIAAQAAAK4AAABjAAAAAgABAAAArwAAAGQAAAACAAEAAACwAAAAZQAAAAIAAQAAALEAAABmAAAAAgAAAAAATgAAAGcAAAACAAAAAAAcAAAAaAAAAAIAAAAAAB0AAABpAAAAAgAAAAAAHgAAAGoAAAACAAAAAAAfAAAAawAAAAIAAAAAACAAAABsAAAAAgAAAAAAIQAAAG0AAAACAAAAAAAiAAAAbgAAAAIAAAAAACMAAABvAAAAAgAAAAAAJAAAAHAAAAACAAAAAAAlAAAAcQAAAAIAAAAAACYAAAByAAAAAgAAAAAAJwAAAHMAAAACAAAAAAAoAAAAdAAAAAIAAAAAACkAAAB1AAAAAgAAAAAAKgAAAHYAAAACAAAAAAArAAAAdwAAAAIAAAAAACwAAAB4AAAAAgAAAAAALQAAAHkAAAACAAAAAAAuAAAAegAAAAIAAAAAAC8AAAB7AAAAAgAAAAAAMAAAAHwAAAACAAAAAAAxAAAAfQAAAAIAAAAAADIAAAB+AAAAAgAAAAAAMwAAAH8AAAACAAAAAAA0AAAAgAAAAAIAAAAAADUAAACBAAAAAgAAAAAANgAAAIIAAAACAAAAAAA3AAAAgwAAAAIAAAAAADgAAACEAAAAAgAAAAAAOQAAAIUAAAACAAAAAAA6AAAAhgAAAAIAAAAAADsAAACHAAAAAgAAAAAAPAAAAIgAAAACAAAAAAA9AAAAiQAAAAIAAAAAAD4AAACKAAAAAgAAAAAAPwAAAIsAAAACAAAAAABAAAAAjAAAAAIAAAAAAEEAAACNAAAAAgAAAAAAQgAAAI4AAAACAAAAAABDAAAAjwAAAAIAAAAAAEQAAACQAAAAAgAAAAAARQAAAJEAAAACAAAAAABIAAAAkgAAAAIAAAAAAEoAAACTAAAAAgAAAAAASwAAAJQAAAACAAAAAABMAAAAlQAAAAIAAAAAAE0AAACWAAAAAgAAAAAATwAAAJcAAAACAAAAAABQAAAAmAAAAAIAAAAAAFEAAACZAAAAAgAAAAAAUgAAAJoAAAACAAAAAABTAAAAmwAAAAIAAAAAAFQAAACcAAAAAgAAAAAAVQAAAJ0AAAACAAAAAABWAAAAngAAAAIAAAAAAFcAAACfAAAAAgAAAAAAWAAAAKAAAAACAAAAAABZAAAAoQAAAAIAAAAAAFoAAACiAAAAAgAAAAAAWwAAAAAAAAAAAAAAAwAAAAAAAAACAAAAAAAbAAAAAgABAAAAZwAAAAIAAgAAABoAAAAEAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAACAAEAAABpAAAAAAAAAAAAAAAAAAAAAAAAAAkAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAACAAAAAQAAAAAAAAACAAAAAgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAIAAAAaAAAAAQABAAIAAgAAABoAAAACAAIAAAAaAAAAAgACAAAAGgAAAAIAAgAAABoAAAACAAIAAAAaAAAAAgACAAAAGgAAAP///////////////////////////////wAAAAAAAAAAAwAAAAAAAAACAAIAAAAaAAAAAwACAAEAAABnAAAACgAJAAAAowAAAAQAAAAAAAAAAACkAAAABAABAAAAAAAAAKUAAAAEAAIAAAAAAAAApgAAAAQAAwAAAAAAAACnAAAABAAEAAAAAAAAAKgAAAAEAAUAAAAAAAAAqQAAAAQABgAAAAAAAACqAAAABAAHAAAAAAAAAKsAAAAEAAgAAAAAAAAAAgAAAAAAGwAAAAMA/////////////////////wAAAAD8AAAAAAAAAFwAAAAKAAAAAAAKACwAAAANAAAAAgACAAAAGwAAABAAAAACAAIAAAAcAAAAEQAAAAIAAgAAAB0AAAASAAAAAgACAAAAHgAAABMAAAACAAIAAAAfAAAAFAAAAAIAAgAAACIAAAAVAAAAAgACAAAAJAAAABYAAAACAAIAAAAmAAAAFwAAAAIAAgAAACcAAAAYAAAAAgACAAAAKQAAAKwAAAACAAAAAABdAAAArQAAAAIAAAAAAF4AAACuAAAAAgAAAAAAXwAAAK8AAAACAAAAAABgAAAAnAAAAAIAAAAAAGEAAABvAAAAAgAAAAAAYgAAAGgAAAACAAAAAABjAAAAcwAAAAIAAAAAAGQAAAB0AAAAAgAAAAAAZQAAAIAAAAACAAAAAABmAAAAgQAAAAIAAAAAAGcAAAB4AAAAAgAAAAAAaAAAAHoAAAACAAAAAABpAAAAfAAAAAIAAAAAAGoAAAB+AAAAAgAAAAAAawAAAJcAAAACAAAAAABsAAAAdgAAAAIAAAAAAG0AAAB3AAAAAgAAAAAAbgAAAIQAAAACAAAAAABvAAAAhQAAAAIAAAAAAHAAAACGAAAAAgAAAAAAcQAAAIcAAAACAAAAAAByAAAAiAAAAAIAAAAAAHMAAACJAAAAAgAAAAAAdAAAAIoAAAACAAAAAAB1AAAAiwAAAAIAAAAAAHYAAACMAAAAAgAAAAAAdwAAAI0AAAACAAAAAAB4AAAAjgAAAAIAAAAAAHkAAACPAAAAAgAAAAAAegAAAJAAAAACAAAAAAB7AAAAkQAAAAIAAAAAAHwAAACSAAAAAgAAAAAAfQAAAJMAAAACAAAAAAB+AAAAAAAAAAAAAAACAAAAAAAAAAIAAAAAAFwAAAACAAIAAAAaAAAABAAAAAAAAAABAAAAAAAAAAUAAAAAAAAAAwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAACAAAAAAAAAAIAAgAAABoAAAADAAIAAAAAAFwAAAADAP////////////////////8AAAAA/QAAAAAAAAB/AAAACgAAAAAACgA1AAAADQAAAAIAAgAAABsAAAAQAAAAAgACAAAAHAAAABEAAAACAAIAAAAdAAAAEgAAAAIAAgAAAB4AAAATAAAAAgACAAAAHwAAABQAAAACAAIAAAAiAAAAFQAAAAIAAgAAACQAAAAWAAAAAgACAAAAJgAAABcAAAACAAIAAAAnAAAAGAAAAAIAAgAAACkAAACwAAAAAgAAAAAAgAAAALEAAAACAAAAAACBAAAAsgAAAAIAAAAAAIIAAACzAAAAAgAAAAAAgwAAABoAAAACAAAAAACEAAAAtAAAAAIAAAAAAIUAAAC1AAAAAgAAAAAAhgAAALYAAAACAAAAAACHAAAAtwAAAAIAAAAAAIgAAAC4AAAAAgAAAAAAiQAAALkAAAACAAAAAACKAAAAlQAAAAIAAAAAAIsAAAAiAAAAAgAAAAAAjAAAALoAAAACAAAAAACNAAAAuwAAAAIAAAAAAI4AAAC8AAAAAgAAAAAAjwAAAL0AAAACAAAAAACQAAAAvgAAAAIAAAAAAJEAAAC/AAAAAgAAAAAAkgAAAMAAAAACAAAAAACTAAAAwQAAAAIAAAAAAJQAAADCAAAAAgAAAAAAlQAAAMMAAAACAAAAAACWAAAAxAAAAAIAAAAAAJcAAADFAAAAAgAAAAAAmAAAAMYAAAACAAAAAACZAAAAMAAAAAIAAAAAAJoAAADHAAAAAgAAAAAAmwAAAMgAAAACAAAAAACcAAAAyQAAAAIAAAAAAJ0AAADKAAAAAgAAAAAAngAAAMsAAAACAAAAAACfAAAAzAAAAAIAAAAAAKAAAAAdAAAAAgAAAAAAoQAAAM0AAAACAAAAAACiAAAAzgAAAAIAAAAAAKMAAADPAAAAAgAAAAAApAAAANAAAAACAAAAAAClAAAA0QAAAAIAAAAAAKYAAADSAAAAAgAAAAAApwAAANMAAAACAAAAAACoAAAALAAAAAIAAAAAAKkAAADUAAAAAgAAAAAA/gAAAAAAAAAAAAAABAAAAAAAAAACAAAAAAB/AAAAAgACAAAAGgAAAAIAAAAAABgAAAACAAAAAAD/AAAABAAAAAAAAAABAAAAAAAAAAUAAAAAAAAAAwAAAAAAAAAAAAAAAAAAAAAACwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAEAAgACAAAAGgAAAAIAAgAAABoAAAABAAIAAgAAABoAAAACAAIAAAAaAAAAAQACAAIAAAAaAAAAAQABAAIAAgAAABoAAAD///////////////////////////////8AAAAAAAAAAAIAAAAAAAAAAgACAAAAGgAAAAMAAgAAAAAAfwAAAAoACwAAANUAAAAEAAAAAAAAAAAA1gAAAAQAAQAAAAAAAADXAAAABAACAAAAAAAAANgAAAAEAAMAAAAAAAAA2QAAAAQABAAAAAAAAADaAAAABAAFAAAAAAAAANsAAAAEAAYAAAAAAAAA3AAAAAQABwAAAAAAAADdAAAABAAIAAAAAAAAAN4AAAAEAAkAAAAAAAAA3wAAAAQACgAAAAAAAAD/////////////////////AAAAAAABAAAAAAAAqgAAAAoAAAAAAAoADwAAAA0AAAACAAIAAAAbAAAAEAAAAAIAAgAAABwAAAARAAAAAgACAAAAHQAAABIAAAACAAIAAAAeAAAAEwAAAAIAAgAAAB8AAAAUAAAAAgACAAAAIgAAABUAAAACAAIAAAAkAAAAFgAAAAIAAgAAACYAAAAXAAAAAgACAAAAJwAAABgAAAACAAIAAAApAAAA4AAAAAIAAAAAAKsAAADhAAAAAgAAAAAArAAAAOIAAAACAAAAAACtAAAA4wAAAAIAAAAAAK4AAADkAAAAAgAAAAAArwAAAAAAAAAAAAAAAgAAAAAAAAACAAAAAACqAAAAAgACAAAAGgAAAAQAAAAAAAAAAQAAAAAAAAAFAAAAAAAAAAMAAAAAAAAAAAAAAAAAAAAAAAIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAIAAAAAAAAAAgACAAAAGgAAAAMAAgAAAAAAqgAAAAoAAgAAAOUAAAAEAAAAAAAAAAAA5gAAAAQAAQAAAAAAAAD/////////////////////AAAAAAEBAAAAAAAAsAAAAAoAAAAAAAoAEwAAAA0AAAACAAIAAAAbAAAAEAAAAAIAAgAAABwAAAARAAAAAgACAAAAHQAAABIAAAACAAAAAACxAAAAEwAAAAIAAgAAAB8AAAAUAAAAAgACAAAAIgAAABUAAAACAAIAAAAkAAAAFgAAAAIAAgAAACYAAAAXAAAAAgACAAAAJwAAABgAAAACAAIAAAApAAAA5wAAAAIAAAAAALIAAACwAAAAAgAAAAAAswAAAOgAAAACAAAAAAC0AAAA6QAAAAIAAAAAALUAAADqAAAAAgAAAAAAtgAAAOsAAAACAAAAAAC3AAAA7AAAAAIAAAAAALgAAADtAAAAAgAAAAAAuQAAADAAAAACAAAAAAC6AAAAAAAAAAAAAAACAAAAAAAAAAIAAAAAALAAAAACAAIAAAAaAAAABAAAAAAAAAABAAAAAAAAAAUAAAAAAAAAAwAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAABAAEAAQACAAIAAAAaAAAA////////////////////////////////AAAAAAAAAAACAAAAAAAAAAIAAgAAABoAAAADAAIAAAAAALAAAAAKAAQAAADuAAAABAAAAAAAAAAAAOYAAAAEAAEAAAAAAAAA7wAAAAQAAgAAAAAAAADwAAAABAADAAAAAAAAAP////////////////////8AAAAAAgEAAAAAAAC7AAAACgAAAAAACgAWAAAADQAAAAIAAgAAABsAAAAQAAAAAgACAAAAHAAAABEAAAACAAIAAAAdAAAAEgAAAAIAAgAAAB4AAAATAAAAAgACAAAAHwAAABQAAAACAAIAAAAiAAAAFQAAAAIAAgAAACQAAAAWAAAAAgACAAAAJgAAABcAAAACAAIAAAAnAAAAGAAAAAIAAgAAACkAAACwAAAAAgAAAAAAvAAAAPEAAAACAAAAAAC9AAAA8gAAAAIAAAAAAL4AAADzAAAAAgAAAAAAvwAAAPQAAAACAAAAAADAAAAA9QAAAAIAAAAAAMEAAAD2AAAAAgAAAAAAwgAAAPcAAAACAAAAAADDAAAA+AAAAAIAAAAAAMQAAAD5AAAAAgAAAAAAxQAAAPoAAAACAAAAAADGAAAA+wAAAAIAAAAAAMcAAAAAAAAAAAAAAAIAAAAAAAAAAgAAAAAAuwAAAAIAAgAAABoAAAAEAAAAAAAAAAEAAAAAAAAABQAAAAAAAAADAAAAAAAAAAAAAAAAAAAAAAAHAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAgAAABoAAAACAAIAAAAaAAAAAgACAAAAGgAAAAIAAgAAABoAAAACAAIAAAAaAAAAAQABAP///////////////////////////////wAAAAAAAAAAAgAAAAAAAAACAAIAAAAaAAAAAwACAAAAAAC7AAAACgAHAAAA/AAAAAQAAAAAAAAAAAD9AAAABAABAAAAAAAAAP4AAAAEAAIAAAAAAAAA/wAAAAQAAwAAAAAAAAAAAQAABAAEAAAAAAAAAAEBAAAEAAUAAAAAAAAAAgEAAAQABgAAAAAAAAD/////////////////////AAAAAAMBAAAAAAAAyAAAAAoAAAAAAAoAAAAAAAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEAQAAAAAAAMkAAAAKAAAAAAAKAFcAAAANAAAAAgACAAAAGwAAABAAAAACAAIAAAAcAAAAEQAAAAIAAgAAAB0AAAASAAAAAgACAAAAHgAAABMAAAACAAIAAAAfAAAAFAAAAAIAAgAAACIAAAAVAAAAAgACAAAAJAAAABYAAAACAAIAAAAmAAAAFwAAAAIAAgAAACcAAAAYAAAAAgACAAAAKQAAAC4AAAACAAEAAABoAAAALwAAAAIAAQAAAGkAAAAwAAAAAgABAAAAagAAADEAAAACAAEAAABrAAAAMgAAAAIAAQAAAGwAAAAzAAAAAgABAAAAfwAAADQAAAACAAEAAACAAAAANQAAAAIAAQAAAIEAAAA2AAAAAgABAAAAggAAADcAAAACAAEAAACDAAAAOAAAAAIAAQAAAIQAAAA5AAAAAgABAAAAhQAAADoAAAACAAEAAACGAAAAOwAAAAIAAQAAAIcAAAA8AAAAAgABAAAAiAAAAD0AAAACAAEAAACJAAAAPgAAAAIAAQAAAIoAAAA/AAAAAgABAAAAiwAAAEAAAAACAAEAAACMAAAAQQAAAAIAAQAAAI0AAABCAAAAAgABAAAAjgAAAEMAAAACAAEAAACPAAAARAAAAAIAAQAAAJAAAABFAAAAAgABAAAAkQAAAEYAAAACAAEAAACSAAAARwAAAAIAAQAAAJMAAABIAAAAAgABAAAAlAAAAEkAAAACAAEAAACVAAAASgAAAAIAAQAAAJYAAABLAAAAAgABAAAAlwAAAEwAAAACAAEAAACYAAAATQAAAAIAAQAAAJkAAABOAAAAAgABAAAAmgAAAE8AAAACAAEAAACbAAAAUAAAAAIAAQAAAJwAAABRAAAAAgABAAAAnQAAAFIAAAACAAEAAACeAAAAUwAAAAIAAQAAAJ8AAABUAAAAAgABAAAAoAAAAFUAAAACAAEAAAChAAAAVgAAAAIAAQAAAKIAAABXAAAAAgABAAAAowAAAFgAAAACAAEAAACkAAAAWQAAAAIAAQAAAKUAAABaAAAAAgABAAAApgAAAFsAAAACAAEAAACnAAAAXAAAAAIAAQAAAKgAAABdAAAAAgABAAAAqQAAAF4AAAACAAEAAACqAAAAXwAAAAIAAQAAAKsAAABgAAAAAgABAAAArAAAAGEAAAACAAEAAACtAAAAYgAAAAIAAQAAAK4AAABjAAAAAgABAAAArwAAAGQAAAACAAEAAACwAAAAZQAAAAIAAQAAALEAAABmAAAAAgABAAAAsgAAAAMBAAACAAAAAADKAAAAlQAAAAIAAAAAAMsAAAAEAQAAAgAAAAAAzAAAAAUBAAACAAAAAADNAAAABgEAAAIAAAAAAM4AAAAHAQAAAgAAAAAAzwAAAAgBAAACAAAAAADQAAAACQEAAAIAAAAAANEAAAAKAQAAAgAAAAAA0gAAAAsBAAACAAAAAADTAAAADAEAAAIAAAAAANQAAAANAQAAAgAAAAAA1QAAAA4BAAACAAAAAADWAAAADwEAAAIAAAAAANcAAAAQAQAAAgAAAAAA2AAAABEBAAACAAAAAADZAAAAEgEAAAIAAAAAANoAAAATAQAAAgAAAAAA2wAAABQBAAACAAAAAADcAAAAFQEAAAIAAAAAAN0AAAAAAAAAAAAAAAMAAAAAAAAAAgAAAAAAyQAAAAIAAQAAAGcAAAACAAIAAAAaAAAABAAAAAAAAAABAAAAAAAAAAAAAAAAAAAAAgABAAAAaQAAAAAAAAAAAAAAAAAAAAAAAAAJAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAgAAAAEAAAAAAAAAAgAAAAIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAgACAAAAGgAAAAEAAQACAAIAAAAaAAAAAgACAAAAGgAAAAIAAgAAABoAAAACAAIAAAAaAAAAAgACAAAAGgAAAAIAAgAAABoAAAD///////////////////////////////8AAAAAAAAAAAMAAAAAAAAAAgACAAAAGgAAAAMAAgABAAAAZwAAAAoACQAAAKMAAAAEAAAAAAAAAAAApAAAAAQAAQAAAAAAAAClAAAABAACAAAAAAAAAKYAAAAEAAMAAAAAAAAApwAAAAQABAAAAAAAAACoAAAABAAFAAAAAAAAAKkAAAAEAAYAAAAAAAAAqgAAAAQABwAAAAAAAACrAAAABAAIAAAAAAAAAAIAAAAAAMkAAAADAP////////////////////8AAAAABQEAAAAAAADeAAAACgAAAAAACgAaAAAADQAAAAIAAgAAABsAAAAQAAAAAgACAAAAHAAAABEAAAACAAIAAAAdAAAAEgAAAAIAAgAAAB4AAAATAAAAAgACAAAAHwAAABQAAAACAAIAAAAiAAAAFQAAAAIAAgAAACQAAAAWAAAAAgACAAAAJgAAABcAAAACAAIAAAAnAAAAGAAAAAIAAgAAACkAAAADAQAAAgAAAAAA3wAAAAQBAAACAAAAAADhAAAABgEAAAIAAAAAAOIAAAAHAQAAAgAAAAAA4wAAAAgBAAACAAAAAADkAAAACQEAAAIAAAAAAOUAAAAKAQAAAgAAAAAA5gAAAAsBAAACAAAAAADnAAAADAEAAAIAAAAAAOgAAAANAQAAAgAAAAAA6QAAAA4BAAACAAAAAADqAAAADwEAAAIAAAAAAOsAAAARAQAAAgAAAAAA7AAAABIBAAACAAAAAADtAAAAEwEAAAIAAAAAAO4AAAAVAQAAAgAAAAAA7wAAAAAAAAAAAAAAAgAAAAAAAAACAAAAAADeAAAAAgACAAAAGgAAAAQAAAAAAAAAAQAAAAAAAAAFAAAAAAAAAAMAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAgAAAAAAAAACAAIAAAAaAAAAAwACAAAAAADeAAAAAwD/////////////////////AAAAAAYBAAAAAAAA8AAAAAoAAAAAAAoADAAAAA0AAAACAAIAAAAbAAAAEAAAAAIAAgAAABwAAAARAAAAAgACAAAAHQAAABIAAAACAAIAAAAeAAAAEwAAAAIAAgAAAB8AAAAUAAAAAgACAAAAIgAAABUAAAACAAIAAAAkAAAAFgAAAAIAAgAAACYAAAAXAAAAAgACAAAAJwAAABgAAAACAAIAAAApAAAAAwEAAAIAAAAAAPEAAAAEAQAAAgAAAAAA8gAAAAAAAAAAAAAAAgAAAAAAAAACAAAAAADwAAAAAgACAAAAGgAAAAQAAAAAAAAAAQAAAAAAAAAFAAAAAAAAAAMAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAgAAAAAAAAACAAIAAAAaAAAAAwACAAAAAADwAAAAAwD/////////////////////AAAAADABAAAAAAAA9AAAAAoABgAAAFkBAAACAAAAAAAxAQAAWgEAAAIAAAAAABsAAABXAQAAAgAAAAAAXAAAAFsBAAACAAAAAAB/AAAAXAEAAAIAAAAAADIBAABdAQAAAgAAAAAAuwAAAAoAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAAD0AAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAA9AAAAAMA/////////////////////wAAAAAzAQAAAAAAAPUAAAAKABQAAABeAQAAAgAFAAAAAwAAAGEBAAACAAUAAAAIAAAAYgEAAAIABQAAAAwAAABjAQAAAgAFAAAAIgAAAGQBAAACAAUAAAArAAAAZQEAAAIABQAAADEAAABmAQAAAgAFAAAANwAAAGcBAAACAAUAAAA8AAAAaAEAAAIABQAAAEAAAABpAQAAAgAFAAAARQAAAGoBAAACAAUAAABKAAAAawEAAAIABQAAAFQAAABsAQAAAgAFAAAAVgAAAG0BAAACAAUAAABdAAAAbgEAAAIABQAAAGIAAABvAQAAAgAFAAAAZwAAAHABAAACAAUAAABsAAAAcQEAAAIABQAAAHUAAAByAQAAAgAFAAAAeAAAAHMBAAACAAUAAACCAAAACgAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAPUAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAQAAAAAAAAACAAAAAAD1AAAAAwD/////////////////////AAAAADQBAAAAAAAA9gAAAAoAAQAAAHQBAAACAAEAAAADAAAACgAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAPYAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAQAAAAAAAAACAAAAAAD2AAAAAwD/////////////////////AAAAADUBAAAAAAAA/wAAAAMACgAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAP8AAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA2AQAAAAAAADEBAAAKAAIAAAB4AQAAAgAAAAAAAwAAAHkBAAACAAAAAAAYAAAACgAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAADEBAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAQAAAAAAAAACAAAAAAAxAQAAAwD/////////////////////AAAAADcBAAAAAAAAMgEAAAoAAgAAAHoBAAACAAAAAACqAAAAewEAAAIAAAAAALAAAAAKAAAAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAAAMgEAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAADIBAAADAP////////////////////8AAAAAAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAACAAAAAAAAAAAAAAAAAAAAAwAAAAAAAAAAAAAAAgAAAAUAAAAAAAAAAQAAAAIAAAAFAAAAFAAAAAEAAAACAAAABQAAACgAAAABAAAAAgAAAAUAAAA8AAAAAQAAAAIAAAAFAAAAUAAAAAEAAAACAAAABQAAAGQAAAABAAAAAgAAAAUAAAB4AAAAAQAAAAIAAAAFAAAAjAAAAAEAAAACAAAABQAAAKAAAAABAAAAAgAAAAUAAAC0AAAAAQAAAAIAAAAFAAAAyAAAAAEAAAACAAAABQAAANwAAAABAAAAAgAAAAUAAADwAAAAAQAAAAIAAAAFAAAABAEAAAEAAAACAAAABQAAABgBAAABAAAAAgAAAAUAAAAsAQAAAQAAAAIAAAAFAAAAQAEAAAEAAAACAAAABQAAAFQBAAABAAAAAgAAAAUAAABoAQAAAQAAAAIAAAAFAAAAfAEAAAEAAAAAAAAABAAAAJABAAAAAAAAAgAAAAUAAACQAQAAAQAAAAIAAAAFAAAApAEAAAEAAAAAAAAABQAAALgBAAAAAAAAAgAAAAUAAAC4AQAAAQAAAAIAAAAHAAAAzAEAAAEAAAACAAAABwAAAMQCAAABAAAAAgAAAAcAAADaAgAAAQAAAAIAAAAHAAAA8AIAAAEAAAACAAAABwAAAAYDAAABAAAAAgAAAAcAAAAcAwAAAQAAAAIAAAAHAAAAMgMAAAEAAAACAAAABwAAAEgDAAABAAAAAgAAAAcAAACoAwAAAQAAAAIAAAAHAAAAFgQAAAEAAAACAAAABwAAAKQEAAABAAAAAgAAAAcAAACgBQAAAQAAAAIAAAAHAAAA9gUAAAEAAAACAAAABQAAAFYGAAABAAAAAgAAAAcAAABqBgAAAQAAAAIAAAAHAAAARAcAAAEAAAACAAAABwAAAAYJAAABAAAAAgAAAAcAAAAoCgAAAQAAAAIAAAAHAAAALgsAAAEAAAACAAAABwAAAEwMAAABAAAAAgAAAAcAAABSDQAAAQAAAAIAAAAHAAAAcA4AAAEAAAACAAAABwAAAHYPAAABAAAAAgAAAAcAAACUEAAAAQAAAAIAAAAHAAAAmhEAAAEAAAACAAAABwAAAAAWAAABAAAAAgAAAAcAAACMHAAAAQAAAAIAAAAHAAAAph0AAAEAAAACAAAABwAAALwdAAABAAAAAgAAAAcAAAByHgAAAQAAAAIAAAAHAAAAFh8AAAEAAAACAAAABwAAANAfAAABAAAAAgAAAAcAAACKIAAAAQAAAAIAAAAHAAAARCEAAAEAAAACAAAABwAAAP4hAAABAAAAAgAAAAcAAAC4IgAAAQAAAAIAAAAHAAAAciMAAAEAAAACAAAABwAAAPYkAAABAAAAAgAAAAcAAAB6JgAAAQAAAAIAAAAHAAAAQicAAAEAAAACAAAABwAAAAooAAABAAAAAgAAAAcAAABUKQAAAQAAAAIAAAAHAAAAqikAAAEAAAACAAAABwAAAAAqAAABAAAAAgAAAAcAAABMKgAAAQAAAAIAAAAHAAAA4CoAAAEAAAACAAAABwAAAOYrAAABAAAAAgAAAAUAAABOMAAAAQAAAAIAAAAFAAAAYjAAAAEAAAACAAAABQAAAHYwAAABAAAAAgAAAAUAAACKMAAAAQAAAAIAAAAHAAAAnjAAAAEAAAACAAAABwAAAG4xAAABAAAAAgAAAAUAAADEMQAAAQAAAAIAAAAFAAAA2DEAAAEAAAACAAAABQAAAOwxAAABAAAAAgAAAAUAAAAAMgAAAQAAAAIAAAAFAAAAFDIAAAEAAAACAAAABQAAACgyAAABAAAAAgAAAAUAAAA8MgAAAQAAAAIAAAAFAAAAUDIAAAEAAAACAAAABQAAAGQyAAABAAAAAgAAAAUAAAB4MgAAAQAAAAAAAAAGAAAAjDIAAAAAAAACAAAABQAAAIwyAAABAAAAAgAAAAUAAACgMgAAAQAAAAIAAAAFAAAAtDIAAAEAAAACAAAABQAAAMgyAAABAAAAAgAAAAUAAADcMgAAAQAAAAIAAAAFAAAA8DIAAAEAAAACAAAABQAAAAQzAAABAAAAAgAAAAUAAAAYMwAAAQAAAAIAAAAFAAAALDMAAAEAAAACAAAABQAAAEAzAAABAAAAAgAAAAUAAABUMwAAAQAAAAIAAAAFAAAAaDMAAAEAAAACAAAABQAAAHwzAAABAAAAAgAAAAUAAACQMwAAAQAAAAIAAAAFAAAApDMAAAEAAAACAAAABQAAALgzAAABAAAAAgAAAAUAAADMMwAAAQAAAAIAAAAFAAAA4DMAAAEAAAACAAAABQAAAPQzAAABAAAAAgAAAAUAAAAINAAAAQAAAAIAAAAFAAAAHDQAAAEAAAACAAAABQAAADA0AAABAAAAAgAAAAUAAABENAAAAQAAAAIAAAAFAAAAWDQAAAEAAAACAAAABQAAAGw0AAABAAAAAgAAAAUAAACANAAAAQAAAAIAAAAFAAAAlDQAAAEAAAACAAAABQAAAKg0AAABAAAAAgAAAAUAAAC8NAAAAQAAAAIAAAAFAAAA0DQAAAEAAAACAAAABQAAAOQ0AAABAAAAAgAAAAUAAAD4NAAAAQAAAAIAAAAFAAAADDUAAAEAAAACAAAABQAAACA1AAABAAAAAAAAAAcAAAA0NQAAAAAAAAIAAAAFAAAANDUAAAEAAAACAAAABQAAAEg1AAABAAAAAgAAAAUAAABcNQAAAQAAAAIAAAAFAAAAcDUAAAEAAAACAAAABQAAAIQ1AAABAAAAAgAAAAUAAACYNQAAAQAAAAIAAAAFAAAArDUAAAEAAAACAAAABQAAAMA1AAABAAAAAgAAAAUAAADUNQAAAQAAAAIAAAAFAAAA6DUAAAEAAAACAAAABQAAAPw1AAABAAAAAgAAAAUAAAAQNgAAAQAAAAIAAAAFAAAAJDYAAAEAAAACAAAABQAAADg2AAABAAAAAgAAAAUAAABMNgAAAQAAAAIAAAAFAAAAYDYAAAEAAAACAAAABQAAAHQ2AAABAAAAAgAAAAUAAACINgAAAQAAAAIAAAAFAAAAnDYAAAEAAAACAAAABQAAALA2AAABAAAAAgAAAAUAAADENgAAAQAAAAIAAAAFAAAA2DYAAAEAAAACAAAABQAAAOw2AAABAAAAAgAAAAUAAAAANwAAAQAAAAIAAAAFAAAAFDcAAAEAAAACAAAABQAAACg3AAABAAAAAgAAAAUAAAA8NwAAAQAAAAIAAAAFAAAAUDcAAAEAAAACAAAABQAAAGQ3AAABAAAAAgAAAAUAAAB4NwAAAQAAAAIAAAAFAAAAjDcAAAEAAAACAAAABQAAAKA3AAABAAAAAgAAAAUAAAC0NwAAAQAAAAIAAAAFAAAAyDcAAAEAAAACAAAABQAAANw3AAABAAAAAgAAAAUAAADwNwAAAQAAAAIAAAAFAAAABDgAAAEAAAACAAAABQAAABg4AAABAAAAAgAAAAUAAAAsOAAAAQAAAAIAAAAFAAAAQDgAAAEAAAACAAAABQAAAFQ4AAABAAAAAgAAAAUAAABoOAAAAQAAAAAAAAAIAAAAfDgAAAAAAAACAAAABQAAAHw4AAABAAAAAgAAAAUAAACQOAAAAQAAAAIAAAAFAAAApDgAAAEAAAACAAAABQAAALg4AAABAAAAAgAAAAUAAADMOAAAAQAAAAAAAAAJAAAA4DgAAAAAAAACAAAABQAAAOA4AAABAAAAAgAAAAUAAAD0OAAAAQAAAAIAAAAFAAAACDkAAAEAAAACAAAABQAAABw5AAABAAAAAgAAAAUAAAAwOQAAAQAAAAIAAAAFAAAARDkAAAEAAAACAAAABQAAAFg5AAABAAAAAgAAAAUAAABsOQAAAQAAAAIAAAAFAAAAgDkAAAEAAAACAAAABQAAAJQ5AAABAAAAAAAAAAoAAACoOQAAAAAAAAIAAAAFAAAAqDkAAAEAAAACAAAABQAAALw5AAABAAAAAgAAAAUAAADQOQAAAQAAAAIAAAAFAAAA5DkAAAEAAAACAAAABQAAAPg5AAABAAAAAgAAAAUAAAAMOgAAAQAAAAIAAAAFAAAAIDoAAAEAAAACAAAABQAAADQ6AAABAAAAAgAAAAUAAABIOgAAAQAAAAIAAAAFAAAAXDoAAAEAAAACAAAABQAAAHA6AAABAAAAAgAAAAUAAACEOgAAAQAAAAAAAAALAAAAmDoAAAAAAAAAAAAADAAAAJg6AAAAAAAAAgAAAAcAAACYOgAAAQAAAAIAAAAFAAAAgjsAAAEAAAACAAAABwAAAJY7AAABAAAAAgAAAAcAAACEPQAAAQAAAAIAAAAHAAAAmj0AAAEAAAACAAAABwAAAHI/AAABAAAAAgAAAAcAAADeQAAAAQAAAAIAAAAHAAAAtkIAAAEAAAACAAAABwAAAI5EAAABAAAAAgAAAAcAAABmRgAAAQAAAAIAAAAHAAAAPkgAAAEAAAACAAAABwAAABpKAAABAAAAAgAAAAcAAAD2SwAAAQAAAAIAAAAHAAAAYk0AAAEAAAACAAAABwAAADpPAAABAAAAAgAAAAcAAABQTwAAAQAAAAIAAAAHAAAAcFAAAAEAAAACAAAABwAAAChRAAABAAAAAgAAAAcAAAAWUgAAAQAAAAIAAAAHAAAAKFQAAAEAAAAAAAAADQAAAFRVAAAAAAAAAgAAAAUAAABUVQAAAQAAAAIAAAAHAAAAaFUAAAEAAAACAAAABQAAALpVAAABAAAAAgAAAAUAAADOVQAAAQAAAAIAAAAFAAAA4lUAAAEAAAACAAAABQAAAPZVAAABAAAAAgAAAAUAAAAKVgAAAQAAAAIAAAAFAAAAHlYAAAEAAAACAAAABQAAADJWAAABAAAAAgAAAAUAAABGVgAAAQAAAAIAAAAFAAAAWlYAAAEAAAACAAAABQAAAG5WAAABAAAAAgAAAAUAAACCVgAAAQAAAAIAAAAFAAAAllYAAAEAAAACAAAABQAAAKpWAAABAAAAAgAAAAUAAAC+VgAAAQAAAAIAAAAFAAAA0lYAAAEAAAAAAAAADgAAAOZWAAAAAAAAAgAAAAUAAADmVgAAAQAAAAIAAAAFAAAA+lYAAAEAAAADAAAAAAAAAA5XAAABAAAAAAAAAA8AAAAeVwAAAAAAAAAAAAAQAAAAHlcAAAAAAAAAAAAAEQAAAB5XAAAAAAAAAwAAAAAAAAAeVwAAAQAAAAMAAAAAAAAALlcAAAEAAAAEAAAABwAAAD5XAAABAAAABAAAAAYAAADOWQAAAQAAAAQAAAAHAAAADloAAAEAAAAEAAAABwAAAOZiAAABAAAABAAAAAcAAADGZgAAAQAAAAIAAAAFAAAAPmwAAAEAAAAAAAAAEgAAAFJsAAAAAAAABAAAAAcAAABSbAAAAQAAAAQAAAAHAAAAJm4AAAEAAAAEAAAABwAAACJwAAABAAAABAAAAAoAAABscgAAAQAAAAQAAAAHAAAAfHIAAAEAAAAEAAAABwAAACR3AAABAAAABAAAAAcAAABUeQAAAQAAAAEAAAADAAAANHoAAAEAAAABAAAAAwAAAOJ6AAABAAAAAQAAAAMAAAD2iQAAAQAAAAEAAAADAAAAMIsAAAEAAAABAAAAAwAAAPSdAAABAAAAAQAAAAMAAAAWpQAAAQAAAAEAAAADAAAABK0AAAEAAAABAAAAAwAAAJi0AAABAAAAAQAAAAMAAAB+uQAAAQAAAAEAAAADAAAAZL4AAAEAAAABAAAAAwAAAI6/AAABAAAABAAAAAkAAABixAAAAQAAAAQAAAAJAAAAhsQAAAEAAAAEAAAACQAAALLEAAABAAAABAAAAAkAAADexAAAAQAAAAQAAAAJAAAAAsUAAAEAAAAEAAAACQAAAC7FAAABAAAABAAAAAkAAABaxQAAAQAAAAQAAAAJAAAAfsUAAAEAAAAEAAAACQAAAKrFAAABAAAABAAAAAkAAADOxQAAAQAAAAQAAAAJAAAA8sUAAAEAAAAEAAAACQAAAB7GAAABAAAABAAAAAkAAABCxgAAAQAAAAQAAAAJAAAAZsYAAAEAAAAEAAAACQAAAIrGAAABAAAABAAAAAkAAACuxgAAAQAAAAQAAAAJAAAA0sYAAAEAAAAEAAAACQAAAP7GAAABAAAABAAAAAkAAAAqxwAAAQAAAAQAAAAJAAAAVscAAAEAAAAEAAAACQAAAILHAAABAAAABAAAAAkAAACuxwAAAQAAAAQAAAAJAAAA2scAAAEAAAAEAAAACQAAAP7HAAABAAAAAQAAAAMAAAAiyAAAAQAAAAEAAAADAAAAlvUAAAEAAAABAAAAAwAAAEr4AAABAAAAAQAAAAMAAACMKgEAAQAAAAEAAAADAAAA0isBAAEAAAABAAAAAwAAACguAQABAAAAAwAAAAAAAABMLwEAAQAAAAAAAAATAAAAXC8BAAAAAAAAAAAAFAAAAFwvAQAAAAAAAwAAAAAAAABcLwEAAQAAAAMAAAAAAAAAbC8BAAEAAAAEAAAAAwAAAHwvAQABAAAAAwAAAAAAAADILwEAAQAAAAMAAAAAAAAA2C8BAAEAAAALAAAAAAAAAAAAAQABAAEAAQADAAsAAAAAAAEAAAABAAEAAQABAAMACwAAAAAAAgAAAAEAAQABAAEAAwALAAAAAAADAAAAAQABAAEAAQADAAsAAAAAAAQAAAABAAEAAQABAAMACwAAAAAABQAAAAEAAQABAAEAAwALAAAAAAAGAAAAAQABAAEAAQADAAsAAAAAAAcAAAABAAEAAQABAAMACwAAAAAACAAAAAEAAQABAAEAAwALAAAAAAAJAAAAAQABAAEAAQADAAsAAAAAAAoAAAABAAEAAQABAAMACwAAAAAACwAAAAEAAQABAAEAAwALAAAAAAAMAAAAAQABAAEAAQADAAsAAAAAAA0AAAABAAEAAQABAAMACwAAAAAADgAAAAEAAQABAAEAAwALAAAAAAAPAAAAAQABAAEAAQADAAsAAAAAABAAAAABAAEAAQABAAMACwAAAAAAEQAAAAEAAQABAAEAAwALAAAAAAASAAAAAQABAAEAAQADAAsAAAAAABMAAAABAAEAAQABAAMACwAAAAAAFAAAAAEAAQABAAEAAwALAAAAAAAVAAAAAQABAAEAAQADAAsAAAAAABYAAAABAAEAAQABAAMACwAAAAAAFwAAAAoABAAAAHEAAAAFAAAAAAAAAABAFgEAAAQAAAAAAAAAAABpAAAABQAAAAAAAADwP3IAAAAFAAAAAAAAAABABwAEAAAABwAAAAAABwAGAAAABAAIAAAAAAAAAAYAcQAAAAQAAQAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBpAAAABAADAAAAAAAAAAcABgAAAAQACAAAAAAAAAAGAHIAAAAEAAMAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAAAQABAAEAAwALAAAAAAAYAAAAAQABAAEAAQABAAMACwAAAAAAGQAAAAEAAQABAAEAAQADAAsAAAAAABoAAAABAAEAAQABAAEAAwALAAAAAAAbAAAAAQABAAEAAQABAAMACwAAAAAAHAAAAAEAAQABAAEAAQADAAsAAAAAAB0AAAABAAEAAQABAAEAAwALAAAAAAAeAAAACgACAAAAbQAAAAUAAAAAAAAA8D8WAQAABAAAAAAAAAAAAAcAAgAAAAcAAAAAAAcAAwAAAAQACAAAAAAAAAAGAG0AAAAEAAAAAAAAAAAAAQABAAEAAwALAAAAAAAfAAAACgADAAAAFwEAAAUAAAAAAAAA8D9qAAAABQAAAAAAAADwPxYBAAAEAAAAAAAAAAAABwACAAAABwAAAAAABwADAAAABAAIAAAAAAAAAAYAagAAAAQAAAAAAAAAAAABAAEAAQADAAsAAAAAACAAAAAKAAMAAAAXAQAABQAAAAAAAADwP2sAAAAFAAAAAAAAAPA/FgEAAAQAAAAAAAAAAAAHAAMAAAAHAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBrAAAABAACAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAFgAAAAEAAAAAAAAAAAAAQABAAEAAwALAAAAAAAhAAAACgAEAAAAFwEAAAQAAQAAAAAAAABsAAAABAABAAAAAAAAABYBAAAEAAAAAAAAAAAAbgAAAAQAAQAAAAAAAAAHAAIAAAAHAAAAAAAHAAYAAAAEAAgAAAAAAAAABgBsAAAABAAAAAAAAAAAAAQACAAAAAAAAAAGAG4AAAAEAAAAAAAAAAAACgABAAAAGAEAAAcAAgAAAAcAAgAAAAcAAAAAAAcAAwAAAAQACAAAAAAAAAAGAGwAAAAEAAAAAAAAAAAABwACAAAABwAAAAAABwADAAAABAAIAAAAAAAAAAYAbgAAAAQAAAAAAAAAAAABAAEAAwALAAAAAAAiAAAACgABAAAAFgEAAAQAAAAAAAAAAAAHAAIAAAAHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAABAAEAAQADAAsAAAAAACMAAAAKAAIAAABpAAAABQAAAAAAAADwPxYBAAAEAAAAAAAAAAAABwACAAAABwAAAAAABwADAAAABAAIAAAAAAAAAAYAcwAAAAQAAAAAAAAAAAABAAEAAQADAAsAAAAAACQAAAABAAEAAQABAAMACwAAAAAAJQAAAAoABAAAAJkAAAAFAAAAAAAAAPA/FgEAAAQAAAAAAAAAAAB3AAAABQAAAAAAAAAAQJoAAAAFAAAAAAAAAPA/BwAEAAAABwAAAAAABwADAAAABAAIAAAAAAAAAAYAmQAAAAQAAgAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgB3AAAABAACAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAJoAAAAEAAAAAAAAAAAAAQABAAEAAwALAAAAAAAmAAAACgAFAAAAFgEAAAQAAAAAAAAAAACDAAAABQAAAAAAAADwP5kAAAAFAAAAAAAAAPA/dwAAAAUAAAAAAAAAAECaAAAABQAAAAAAAADwPwQAAAAAAAAAAAAKAAEAAAAZAQAABwADAAAABwACAAAABwAAAAAABwADAAAABAAIAAAAAAAAAAYAgwAAAAQAAAAAAAAAAAAHAAQAAAAHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAQAAAAHAAAAAAAHAAMAAAAEAAgAAAAAAAAABgCZAAAABAACAAAAAAAAAAcABgAAAAQACAAAAAAAAAAGAHcAAAAEAAIAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAMAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAmgAAAAQAAAAAAAAAAAABAAEAAwALAAAAAAAnAAAACgABAAAAFgEAAAQAAAAAAAAAAAAHAAYAAAAHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABAAAAAAAAAAHAAYAAAAEAAIAAAAAAAAABABfAAAAAAAAAAQAAgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAQABQAAAAAAAAAHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAwAAAAAAAAABAAEAAQADAAsAAAAAACgAAAAKAAIAAAAWAQAABAAAAAAAAAAAAHgAAAAFAAAAAAAAAABABwAGAAAABwAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAWAAAAAQABAAAAAAAAAAHAAYAAAAEAAIAAAAAAAAABAAsAAAAAAAAAAQAAgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgB4AAAABAAFAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAFgAAAAEAAMAAAAAAAAAAQABAAEAAwALAAAAAAApAAAACgABAAAAFgEAAAQAAAAAAAAAAAAHAAYAAAAHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABAAAAAAAAAAHAAYAAAAEAAIAAAAAAAAABABfAAAAAAAAAAQAAgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAFAAAAAAAAABhABgAaAQAABAAFAAAAAAAAAAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAEAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAEAAQABAAMACwAAAAAAKgAAAAoAAgAAABYBAAAEAAAAAAAAAAAAegAAAAUAAAAAAAAAAEAHAAYAAAAHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBYAAAABAAEAAAAAAAAAAcABgAAAAQAAgAAAAAAAAAEACwAAAAAAAAABAACAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAHoAAAAEAAUAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAWAAAAAQAAwAAAAAAAAABAAEAAQADAAsAAAAAACsAAAAKAAEAAAAWAQAABAAAAAAAAAAAAAcABgAAAAcAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAACAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAEAAAAAAAAAAcABgAAAAQAAgAAAAAAAAAEAF8AAAAAAAAABAACAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAUAAAAAAAAAGEAGABsBAAAEAAUAAAAAAAAABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAMAAAAAAAAAAQABAAEAAwALAAAAAAAsAAAACgACAAAAFgEAAAQAAAAAAAAAAAB8AAAABQAAAAAAAAAAQAcABgAAAAcAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAACAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAFgAAAAEAAQAAAAAAAAABwAGAAAABAACAAAAAAAAAAQALAAAAAAAAAAEAAIAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAfAAAAAQABQAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgBYAAAABAADAAAAAAAAAAEAAQABAAMACwAAAAAALQAAAAoAAQAAABYBAAAEAAAAAAAAAAAABwAGAAAABwAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABwAGAAAABAACAAAAAAAAAAQAXwAAAAAAAAAEAAIAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwADAAAABQAAAAAAAAAYQAYAHAEAAAQABQAAAAAAAAAHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAwAAAAAAAAABAAEAAQADAAsAAAAAAC4AAAAKAAIAAAAWAQAABAAAAAAAAAAAAH4AAAAFAAAAAAAAAABABwAGAAAABwAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAWAAAAAQABAAAAAAAAAAHAAYAAAAEAAIAAAAAAAAABAAsAAAAAAAAAAQAAgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgB+AAAABAAFAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAFgAAAAEAAMAAAAAAAAAAQABAAEAAwALAAAAAAAvAAAACgAGAAAAFgEAAAQAAAAAAAAAAAAdAQAABQAAAAAAAADwP34AAAAFAAAAAAAAAPA/fAAAAAUAAAAAAAAA8D96AAAABQAAAAAAAADwP3gAAAAFAAAAAAAAAPA/BwAHAAAABwAAAAAABwAGAAAABAACAAAAAAAAAAQAMAAAAAAAAAAEAAIAAAAAAAAABAAIAAAAAAAAAAYAeAAAAAQAAAAAAAAAAAAHAAwAAAAEAAIAAAAAAAAABABiAAAAAAAAAAQAAwAAAAAAAAAEAAIAAAAAAAAABABvAAAAAAAAAAQABAAAAAAAAAAEAAIAAAAAAAAABAB4AAAAAAAAAAQABQAAAAAAAAAEAAIAAAAAAAAABABkAAAAAAAAAAQABgAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgB+AAAABAAAAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAHwAAAAEAAAAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAegAAAAQAAAAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgB4AAAABAAAAAAAAAAAAAoAAgAAAB4BAAAHAAQAAAAHAAMAAAAHAAAAAAAHAAMAAAAEAAIAAAAAAAAABABiAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgB+AAAABAAAAAAAAAAAAAcAAwAAAAcAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAG8AAAAAAAAABAACAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAHwAAAAEAAAAAAAAAAAABwADAAAABwAAAAAABwADAAAABAACAAAAAAAAAAQAeAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAegAAAAQAAAAAAAAAAAAHAAMAAAAHAAAAAAAHAAMAAAAEAAIAAAAAAAAABABkAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgB4AAAABAAAAAAAAAAAAB8BAAAHAAIAAAAHAAcAAAAHAAAAAAAHAAMAAAAEAAIAAAAAAAAABAAwAAAAAAAAAAQAAgAAAAAAAAAHAAwAAAAEAAIAAAAAAAAABABiAAAAAAAAAAQAAwAAAAAAAAAEAAIAAAAAAAAABABvAAAAAAAAAAQABAAAAAAAAAAEAAIAAAAAAAAABAB4AAAAAAAAAAQABQAAAAAAAAAEAAIAAAAAAAAABABkAAAAAAAAAAQABgAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgB+AAAABAAAAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAHwAAAAEAAAAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAegAAAAQAAAAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgB4AAAABAAAAAAAAAAAAAcAAgAAAAcAAAAAAAcAAwAAAAQACAAAAAAAAAAGAHgAAAAEAAAAAAAAAAAAAQABAAMACwAAAAAAMAAAAAoAAwAAACABAAAEAAEAAAAAAAAAFgEAAAQAAAAAAAAAAACCAAAABAABAAAAAAAAAAcAEAAAAAcAAAAAAAcACQAAAAQAAgAAAAAAAAAEAC4AAAAAAAAABAACAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAGAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAANAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAcAAwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABAAEAAAAAAAAAAcADAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAFAAAAAAAAAAQACAAAAAAAAAAGAIIAAAAEAAAAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwAAAAAABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAEAAcAAAAAAAAABwAJAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAYAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAgAAAAAAAAABAACAAAAAAAAAAQALgAAAAAAAAAEAAkAAAAAAAAABwAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAoAAAAAAAAABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAEAAsAAAAAAAAABwAMAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAoAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAwAAAAAAAAABAAIAAAAAAAAAAYAggAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAAAAAAHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAQADgAAAAAAAAAHAAkAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQADQAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQADwAAAAAAAAAEAAgAAAAAAAAABgCCAAAABAAAAAAAAAAAAAcAAAAAAAoAAQAAACEBAAAHAAMAAAAHAAYAAAAHAAAAAAAHAAMAAAAEAAIAAAAAAAAABAAuAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAwAAAAAAAAAHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAQABAAAAAAAAAAHAAwAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAwAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABQAAAAAAAAAEAAgAAAAAAAAABgCCAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAAAAAAcACQAAAAcAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAACAAAAAAAAAAcAAwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABAADAAAAAAAAAAcACQAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAACAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAEAAAAAAAAAAQAAgAAAAAAAAAEAC4AAAAAAAAABAAFAAAAAAAAAAcAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAGAAAAAAAAAAcAAwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABAAHAAAAAAAAAAcADAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAGAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAIAAAAAAAAAAQACAAAAAAAAAAGAIIAAAAEAAAAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwAAAAAABwAFAAAABwAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAEAAMAAAAAAAAABwAJAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABAAIAAAAAAAAAAYAggAAAAQAAAAAAAAAAAAHAAAAAAABAAEAAwALAAAAAAAxAAAACgABAAAAFgEAAAQAAAAAAAAAAAAHAAYAAAAHAAAAAAAHAAMAAAAFAAAAAAAAABhABgAiAQAABAACAAAAAAAAAAcABgAAAAUAAAAAAAAAGEAGACMBAAAEAAMAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAMAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAEAAUAAAAAAAAABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAAAQABAAEAAwALAAAAAAAyAAAAAQABAAEAAQABAAMACwAAAAAAMwAAAAoAAQAAABYBAAAEAAAAAAAAAAAABwAFAAAABwAAAAAABwADAAAABQAAAAAAAAAYQAYAJAEAAAQAAgAAAAAAAAAHAAMAAAAFAAAAAAAAABhABgAkAQAABAADAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAJgAAAAEAAQAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAAAQABAAEAAwALAAAAAAA0AAAACgACAAAAFgEAAAQAAAAAAAAAAACaAAAABQAAAAAAAADwPwcABAAAAAcAAAAAAAcAAwAAAAUAAAAAAAAAGEAGACQBAAAEAAIAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAmAAAAAQAAwAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAABAAEAAQADAAsAAAAAADUAAAAKAAEAAAAWAQAABAAAAAAAAAAAAAcABQAAAAcAAAAAAAcAAwAAAAUAAAAAAAAAGEAGACQBAAAEAAIAAAAAAAAABwADAAAABAACAAAAAAAAAAQAYgAAAAAAAAAEAAMAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAmAAAAAQABAAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAABAAEAAQADAAsAAAAAADYAAAAKAAEAAAAWAQAABAAAAAAAAAAAAAcABQAAAAcAAAAAAAcAAwAAAAUAAAAAAAAAGEAGACQBAAAEAAIAAAAAAAAABwADAAAABAACAAAAAAAAAAQAbgAAAAAAAAAEAAMAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAmAAAAAQABAAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAABAAEAAQADAAsAAAAAADcAAAAKAAEAAAAWAQAABAAAAAAAAAAAAAcABQAAAAcAAAAAAAcAAwAAAAUAAAAAAAAAGEAGACQBAAAEAAIAAAAAAAAABwADAAAABAACAAAAAAAAAAQAcgAAAAAAAAAEAAMAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAmAAAAAQABAAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAABAAEAAQADAAsAAAAAADgAAAAKAAEAAAAWAQAABAAAAAAAAAAAAAcABQAAAAcAAAAAAAcAAwAAAAUAAAAAAAAAGEAGACQBAAAEAAIAAAAAAAAABwADAAAABAACAAAAAAAAAAQAdAAAAAAAAAAEAAMAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAmAAAAAQABAAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAABAAEAAQADAAsAAAAAADkAAAAKAAEAAAAWAQAABAAAAAAAAAAAAAcABQAAAAcAAAAAAAcAAwAAAAUAAAAAAAAAGEAGACQBAAAEAAIAAAAAAAAABwADAAAABAACAAAAAAAAAAQAZgAAAAAAAAAEAAMAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAmAAAAAQABAAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAABAAEAAQADAAsAAAAAADoAAAAKAAEAAAAWAQAABAAAAAAAAAAAAAcABQAAAAcAAAAAAAcAAwAAAAUAAAAAAAAAGEAGACQBAAAEAAIAAAAAAAAABwADAAAABAACAAAAAAAAAAQAZQAAAAAAAAAEAAMAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAmAAAAAQABAAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAABAAEAAQADAAsAAAAAADsAAAAKAAMAAAAWAQAABAAAAAAAAAAAAHoAAAAFAAAAAAAAAPA/ewAAAAUAAAAAAAAA8D8HAAUAAAAHAAAAAAAHAAMAAAAFAAAAAAAAABhABgAkAQAABAACAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAHgAAAAAAAAABAADAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAJgAAAAEAAQAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAACgABAAAAJQEAAAcAAgAAAAcAAgAAAAcAAAAAAAcAAwAAAAQACAAAAAAAAAAGAHoAAAAEAAAAAAAAAAAABwAEAAAABwAAAAAABwADAAAABAACAAAAAAAAAAQAWwAAAAAAAAAEAAIAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAewAAAAQAAwAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABdAAAAAAAAAAQAAAAAAAAAAAABAAEAAwALAAAAAAA8AAAACgADAAAAFgEAAAQAAAAAAAAAAAB8AAAABQAAAAAAAADwP30AAAAFAAAAAAAAAPA/BwAFAAAABwAAAAAABwADAAAABQAAAAAAAAAYQAYAJAEAAAQAAgAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABvAAAAAAAAAAQAAwAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgCYAAAABAAEAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAoAAQAAACYBAAAHAAIAAAAHAAIAAAAHAAAAAAAHAAMAAAAEAAgAAAAAAAAABgB8AAAABAAAAAAAAAAAAAcABAAAAAcAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAFsAAAAAAAAABAACAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAH0AAAAEAAMAAAAAAAAABwADAAAABAACAAAAAAAAAAQAXQAAAAAAAAAEAAAAAAAAAAAAAQABAAMACwAAAAAAPQAAAAoAAgAAABYBAAAEAAAAAAAAAAAAkwAAAAUAAAAAAAAA8D8HAAUAAAAHAAAAAAAHAAMAAAAFAAAAAAAAABhABgAkAQAABAACAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAGMAAAAAAAAABAADAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAJgAAAAEAAQAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAAAQABAAEAAwALAAAAAAA+AAAACgACAAAAFgEAAAQAAAAAAAAAAAAnAQAABQAAAAAAAADwPwcABQAAAAcAAAAAAAcAAwAAAAUAAAAAAAAAGEAGACQBAAAEAAIAAAAAAAAABwADAAAABAACAAAAAAAAAAQAMAAAAAAAAAAEAAMAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAmAAAAAQABAAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAABAAEAAQADAAsAAAAAAD8AAAAKAAQAAAAWAQAABQAAAAAAAADwPygBAAAFAAAAAAAAAPA/KQEAAAUAAAAAAAAA8D8qAQAABQAAAAAAAADwPwcAAwAAAAcAAAAAAAcAAwAAAAUAAAAAAAAAGEAGACQBAAAEAAIAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAACgABAAAAKwEAAAcAAgAAAAcAAgAAAAcAAAAAAAcAAwAAAAUAAAAAAAAAFEAEAAAgAAAAAAAABAAAAAAAAAAAAAcAAwAAAAcAAAAAAAcAAwAAAAUAAAAAAAAAEEAEAAAgAAAAAAAABAACAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAEABwACAAAAAgAAAAAARgAAAAIAAAAAAEcAAAADAAsAAAAAAEAAAAAKAAEAAAAWAQAABAAAAAAAAAAAAAcAAgAAAAcAAAAAAAcAAwAAAAUAAAAAAAAAFEAEAAAgAAAAAAAABAAAAAAAAAAAAAEAAQABAAMACwAAAAAAQQAAAAoAAQAAABYBAAAEAAAAAAAAAAAABwACAAAABwAAAAAABwADAAAABQAAAAAAAAAQQAQAACAAAAAAAAAEAAAAAAAAAAAAAQABAAEAAwALAAAAAABCAAAACgACAAAAgAAAAAQAAQAAAAAAAAAWAQAABAAAAAAAAAAAAAQAAAAAAAAAAAABAAEABwABAAAAAgAAAAAASQAAAAMACwAAAAAAQwAAAAoAAQAAABYBAAAEAAAAAAAAAAAABwADAAAABwAAAAAABwAGAAAABQAAAAAAAAAQQAQAIAAAAAAAAAAEAAEAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABwADAAAABQAAAAAAAAAYQAYALAEAAAQAAAAAAAAAAAABAAEAAQADAAsAAAAAAEQAAAAKAAIAAAAWAQAABAAAAAAAAAAAAJEAAAAFAAAAAAAAAABABwAGAAAABwAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAWAAAAAQABAAAAAAAAAAHAAYAAAAEAAIAAAAAAAAABAAsAAAAAAAAAAQAAgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgCRAAAABAAFAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGAFgAAAAEAAMAAAAAAAAAAQABAAEAAwALAAAAAABFAAAACgACAAAAFgEAAAQAAAAAAAAAAACSAAAABQAAAAAAAADwPwcACgAAAAcAAAAAAAcADAAAAAQAAgAAAAAAAAAEAFsAAAAAAAAABAACAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAEAAAAAAAAAAUAAAAAAAAAGEAGAC0BAAAEAAAAAAAAAAAABAAIAAAAAAAAAAYAlQAAAAQAAAAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgCSAAAABAADAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAF0AAAAAAAAABAAAAAAAAAAAAAcAAwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABAAFAAAAAAAAAAcADAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAEAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAGAAAAAAAAAAQAAgAAAAAAAAAEAF8AAAAAAAAABAAHAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAIAAAAAAAAAAcAAwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABAAJAAAAAAAAAAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAIAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAFAAAAAAAAAAoAAQAAAC4BAAAHAAQAAAAHAAQAAAAHAAAAAAAHAAMAAAAEAAIAAAAAAAAABABbAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgCSAAAABAADAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAF0AAAAAAAAABAAAAAAAAAAAAAcACAAAAAcAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAACAAAAAAAAAAcAAwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABAADAAAAAAAAAAcADAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAACAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAEAAAAAAAAAAQAAgAAAAAAAAAEAF8AAAAAAAAABAAFAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAGAAAAAAAAAAcAAwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABAAHAAAAAAAAAAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAGAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAcAAgAAAAcAAAAAAAcAAwAAAAUAAAAAAAAAGEAGAC0BAAAEAAAAAAAAAAAABwACAAAABwAAAAAABwADAAAABAAIAAAAAAAAAAYAlQAAAAQAAAAAAAAAAAABAAEAAwALAAAAAABGAAAAAQABAAEAAQADAAsAAAAAAEcAAAABAAEAAQABAAMACwAAAAAASAAAAAEAAQABAAEAAwALAAAAAABJAAAAAQABAAEAAQADAAsAAAAAAEoAAAAKAAIAAAAWAQAABAAAAAAAAAAAAHYAAAAFAAAAAAAAAPA/BwAFAAAABwAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAMAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAAAQABAAEAAwALAAAAAABLAAAACgABAAAAFgEAAAQAAAAAAAAAAAAHAAIAAAAHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAABAAEAAQADAAsAAAAAAEwAAAABAAEAAQABAAMACwAAAAAATQAAAAEAAQABAAEAAwALAAAAAABOAAAAAQABAAEAAQADAAsAAAAAAE8AAAABAAEAAQABAAMACwAAAAAAUAAAAAEAAQABAAEAAwALAAAAAABRAAAAAQABAAEAAQADAAsAAAAAAFIAAAABAAEAAQABAAMACwAAAAAAUwAAAAEAAQABAAEAAwALAAAAAABUAAAAAQABAAEAAQADAAsAAAAAAFUAAAABAAEAAQABAAMACwAAAAAAVgAAAAEAAQABAAEAAwALAAAAAABXAAAAAQABAAEAAQADAAsAAAAAAFgAAAABAAEAAQABAAMACwAAAAAAWQAAAAEAAQABAAEAAwALAAAAAABaAAAAAQABAAEAAQADAAsAAAAAAFsAAAABAAEAAQABAAMACwAAAAAAXAAAAAEAAQABAAEAAwALAAAAAABdAAAAAQABAAEAAQADAAsAAAAAAF4AAAABAAEAAQABAAMACwAAAAAAXwAAAAEAAQABAAEAAwALAAAAAABgAAAAAQABAAEAAQADAAsAAAAAAGEAAAABAAEAAQABAAMACwAAAAAAYgAAAAEAAQABAAEAAwALAAAAAABjAAAAAQABAAEAAQADAAsAAAAAAGQAAAABAAEAAQABAAMACwAAAAAAZQAAAAEAAQABAAEAAwALAAAAAABmAAAAAQABAAEAAQADAAsAAAAAAGcAAAABAAEAAQABAAMACwAAAAAAaAAAAAEAAQABAAEAAwALAAAAAABpAAAAAQABAAEAAQADAAsAAAAAAGoAAAABAAEAAQABAAMACwAAAAAAawAAAAEAAQABAAEAAwALAAAAAABsAAAAAQABAAEAAQADAAsAAAAAAG0AAAABAAEAAQABAAMACwAAAAAAbgAAAAEAAQABAAEAAwALAAAAAABvAAAAAQABAAEAAQADAAsAAAAAAHAAAAABAAEAAQABAAMACwAAAAAAcQAAAAEAAQABAAEAAwALAAAAAAByAAAAAQABAAEAAQADAAsAAAAAAHMAAAABAAEAAQABAAMACwAAAAAAdAAAAAEAAQABAAEAAwALAAAAAAB1AAAAAQABAAEAAQADAAsAAAAAAHYAAAABAAEAAQABAAMACwAAAAAAdwAAAAEAAQABAAEAAwALAAAAAAB4AAAAAQABAAEAAQADAAsAAAAAAHkAAAABAAEAAQABAAMACwAAAAAAegAAAAEAAQABAAEAAwALAAAAAAB7AAAAAQABAAEAAQADAAsAAAAAAHwAAAABAAEAAQABAAMACwAAAAAAfQAAAAEAAQABAAEAAwALAAAAAAB+AAAAAQABAAEAAQADAAsAAAAAAH8AAAABAAEAAQABAAMACwAAAAAAgAAAAAEAAQABAAEAAwALAAAAAACBAAAAAQABAAEAAQADAAsAAAAAAIIAAAABAAEAAQABAAMACwAAAAAAgwAAAAEAAQABAAEAAwALAAAAAACEAAAAAQABAAEAAQADAAsAAAAAAIUAAAABAAEAAQABAAMACwAAAAAAhgAAAAEAAQABAAEAAwALAAAAAACHAAAAAQABAAEAAQADAAsAAAAAAIgAAAABAAEAAQABAAMACwAAAAAAiQAAAAEAAQABAAEAAwALAAAAAACKAAAAAQABAAEAAQADAAsAAAAAAIsAAAABAAEAAQABAAMACwAAAAAAjAAAAAEAAQABAAEAAwALAAAAAACNAAAAAQABAAEAAQADAAsAAAAAAI4AAAABAAEAAQABAAMACwAAAAAAjwAAAAEAAQABAAEAAwALAAAAAACQAAAAAQABAAEAAQADAAsAAAAAAJEAAAABAAEAAQABAAMACwAAAAAAkgAAAAEAAQABAAEAAwALAAAAAACTAAAAAQABAAEAAQADAAsAAAAAAJQAAAABAAEAAQABAAMACwAAAAAAlQAAAAEAAQABAAEAAwALAAAAAACWAAAAAQABAAEAAQADAAsAAAAAAJcAAAABAAEAAQABAAMACwAAAAAAmAAAAAEAAQABAAEAAwALAAAAAACZAAAAAQABAAEAAQADAAsAAAAAAJoAAAABAAEAAQABAAMACwAAAAAAmwAAAAEAAQABAAEAAwALAAAAAACcAAAAAQABAAEAAQADAAsAAAAAAJ0AAAABAAEAAQABAAMACwAAAAAAngAAAAEAAQABAAEAAwALAAAAAACfAAAAAQABAAEAAQADAAsAAAAAAKAAAAABAAEAAQABAAMACwAAAAAAoQAAAAEAAQABAAEAAwALAAAAAACiAAAAAQABAAEAAQADAAsAAAAAAKMAAAABAAEAAQABAAMACwAAAAAApAAAAAEAAQABAAEAAwALAAAAAAClAAAAAQABAAEAAQADAAsAAAAAAKYAAAABAAEAAQABAAMACwAAAAAApwAAAAEAAQABAAEAAwALAAAAAACoAAAAAQABAAEAAQADAAsAAAAAAKkAAAABAAEAAQABAAMACwAAAAAAqgAAAAEAAQABAAEAAwALAAAAAACrAAAAAQABAAEAAQADAAsAAAAAAKwAAAABAAEAAQABAAMACwAAAAAArQAAAAEAAQABAAEAAwALAAAAAACuAAAAAQABAAEAAQADAAsAAAAAAK8AAAABAAEAAQABAAMACwAAAAAAsAAAAAEAAQABAAEAAwALAAAAAACxAAAAAQABAAEAAQADAAsAAAAAALIAAAABAAEAAQABAAMACwAAAAAAswAAAAEAAQABAAEAAwALAAAAAAC0AAAAAQABAAEAAQADAAsAAAAAALUAAAABAAEAAQABAAMACwAAAAAAtgAAAAEAAQABAAEAAwALAAAAAAC3AAAAAQABAAEAAQADAAsAAAAAALgAAAABAAEAAQABAAMACwAAAAAAuQAAAAEAAQABAAEAAwALAAAAAAC6AAAAAQABAAEAAQADAAsAAAAAALsAAAABAAEAAQABAAMACwAAAAAAvAAAAAEAAQABAAEAAwALAAAAAAC9AAAACgACAAAAFgEAAAQAAAAAAAAAAAAEAQAABQAAAAAAAAAAQAcABQAAAAcAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAACAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAcABgAAAAQACAAAAAAAAAAGAAQBAAAEAAMAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAAAQABAAEAAwALAAAAAAC+AAAAAQABAAEAAQADAAsAAAAAAL8AAAAKAAQAAAAWAQAABAAAAAAAAAAAAAUBAAAFAAAAAAAAAPA/EAEAAAUAAAAAAAAA8D8SAQAABQAAAAAAAADwPwcABAAAAAcAAAAAAAcABgAAAAUAAAAAAAAAGEAGAC8BAAAEAAIAAAAAAAAABQAAAAAAAAAcQAYALwEAAAQAAwAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAKAAIAAAAwAQAABwACAAAABwACAAAABwAAAAAABwADAAAABAAIAAAAAAAAAAYABQEAAAQAAAAAAAAAAAAHAAIAAAAHAAAAAAAHAAMAAAAEAAgAAAAAAAAABgAQAQAABAAAAAAAAAAAADEBAAAHAAIAAAAHAAMAAAAHAAAAAAAHAAMAAAAFAAAAAAAAABhABgAvAQAABAACAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAcAAAAAAAcAAwAAAAUAAAAAAAAAHEAGAC8BAAAEAAIAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAAAQABAAMACwAAAAAAwAAAAAEAAQABAAEAAQADAAsAAAAAAMEAAAAKAAYAAAAWAQAABAAAAAAAAAAAABMBAAAFAAAAAAAAAPA/FAEAAAUAAAAAAAAAAEAVAQAABQAAAAAAAADwPzIBAAAFAAAAAAAAAPA/JwEAAAUAAAAAAAAA8D8HAAgAAAAHAAAAAAAHAAMAAAAEAAIAAAAAAAAABAAlAAAAAAAAAAQAAgAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgATAQAABAADAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAcABgAAAAQACAAAAAAAAAAGABQBAAAEAAMAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABwAGAAAABAAIAAAAAAAAAAYAFQEAAAQABQAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABQAAAAAAAAAHAAYAAAAEAAIAAAAAAAAABAAuAAAAAAAAAAQABgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABwAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgAVAQAABAAHAAAAAAAAAAcAAwAAAAUAAAAAAAAAGEAGADMBAAAEAAAAAAAAAAAAAQABAAEAAwALAAAAAADCAAAACgAFAAAAFgEAAAQAAAAAAAAAAAATAQAABQAAAAAAAADwPxQBAAAFAAAAAAAAAABAFQEAAAUAAAAAAAAA8D8nAQAABQAAAAAAAADwPwcABgAAAAcAAAAAAAcAAwAAAAQAAgAAAAAAAAAEACUAAAAAAAAABAACAAAAAAAAAAcABgAAAAQACAAAAAAAAAAGABMBAAAEAAMAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAMAAAAAAAAABwAGAAAABAAIAAAAAAAAAAYAFAEAAAQAAwAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABAAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgAVAQAABAAFAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAFAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAGMAAAAAAAAABAAAAAAAAAAAAAEAAQABAAMACwAAAAAAwwAAAAoABgAAABYBAAAEAAAAAAAAAAAAEwEAAAUAAAAAAAAA8D8UAQAABQAAAAAAAAAAQBUBAAAFAAAAAAAAAPA/MgEAAAUAAAAAAAAA8D8nAQAABQAAAAAAAADwPwcACAAAAAcAAAAAAAcAAwAAAAQAAgAAAAAAAAAEACUAAAAAAAAABAACAAAAAAAAAAcABgAAAAQACAAAAAAAAAAGABMBAAAEAAMAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAMAAAAAAAAABwAGAAAABAAIAAAAAAAAAAYAFAEAAAQAAwAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABAAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgAVAQAABAAFAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAFAAAAAAAAAAcABgAAAAQAAgAAAAAAAAAEAC4AAAAAAAAABAAGAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAHAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGABUBAAAEAAcAAAAAAAAABwADAAAABQAAAAAAAAAYQAYANAEAAAQAAAAAAAAAAAABAAEAAQADAAsAAAAAAMQAAAAKAAYAAAAWAQAABAAAAAAAAAAAABMBAAAFAAAAAAAAAPA/FAEAAAUAAAAAAAAAAEAVAQAABQAAAAAAAADwPzIBAAAFAAAAAAAAAPA/JwEAAAUAAAAAAAAA8D8HAAgAAAAHAAAAAAAHAAMAAAAEAAIAAAAAAAAABAAlAAAAAAAAAAQAAgAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgATAQAABAADAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAcABgAAAAQACAAAAAAAAAAGABQBAAAEAAMAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABwAGAAAABAAIAAAAAAAAAAYAFQEAAAQABQAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABQAAAAAAAAAHAAYAAAAEAAIAAAAAAAAABAAuAAAAAAAAAAQABgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABwAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgAVAQAABAAHAAAAAAAAAAcAAwAAAAUAAAAAAAAAGEAGADUBAAAEAAAAAAAAAAAAAQABAAEAAwALAAAAAADFAAAACgAGAAAAFgEAAAQAAAAAAAAAAAATAQAABQAAAAAAAADwPxQBAAAFAAAAAAAAAABAFQEAAAUAAAAAAAAA8D8yAQAABQAAAAAAAADwPycBAAAFAAAAAAAAAPA/BwAIAAAABwAAAAAABwADAAAABAACAAAAAAAAAAQAJQAAAAAAAAAEAAIAAAAAAAAABwAGAAAABAAIAAAAAAAAAAYAEwEAAAQAAwAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAwAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgAUAQAABAADAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAEAAAAAAAAAAcABgAAAAQACAAAAAAAAAAGABUBAAAEAAUAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAUAAAAAAAAABwAGAAAABAACAAAAAAAAAAQALgAAAAAAAAAEAAYAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAcAAAAAAAAABwADAAAABAAIAAAAAAAAAAYAFQEAAAQABwAAAAAAAAAHAAMAAAAFAAAAAAAAABhABgA2AQAABAAAAAAAAAAAAAEAAQABAAMACwAAAAAAxgAAAAoABgAAABYBAAAEAAAAAAAAAAAAEwEAAAUAAAAAAAAA8D8UAQAABQAAAAAAAAAAQBUBAAAFAAAAAAAAAPA/MgEAAAUAAAAAAAAA8D8nAQAABQAAAAAAAADwPwcACAAAAAcAAAAAAAcAAwAAAAQAAgAAAAAAAAAEACUAAAAAAAAABAACAAAAAAAAAAcABgAAAAQACAAAAAAAAAAGABMBAAAEAAMAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAMAAAAAAAAABwAGAAAABAAIAAAAAAAAAAYAFAEAAAQAAwAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABAAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgAVAQAABAAFAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAFAAAAAAAAAAcABgAAAAQAAgAAAAAAAAAEAC4AAAAAAAAABAAGAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAHAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGABUBAAAEAAcAAAAAAAAABwADAAAABQAAAAAAAAAYQAYANwEAAAQAAAAAAAAAAAABAAEAAQADAAsAAAAAAMcAAAAKAAYAAAAWAQAABAAAAAAAAAAAABMBAAAFAAAAAAAAAPA/FAEAAAUAAAAAAAAAAEAVAQAABQAAAAAAAADwPzIBAAAFAAAAAAAAAPA/JwEAAAUAAAAAAAAA8D8HAAgAAAAHAAAAAAAHAAMAAAAEAAIAAAAAAAAABAAlAAAAAAAAAAQAAgAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgATAQAABAADAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAcABgAAAAQACAAAAAAAAAAGABQBAAAEAAMAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABwAGAAAABAAIAAAAAAAAAAYAFQEAAAQABQAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABQAAAAAAAAAHAAYAAAAEAAIAAAAAAAAABAAuAAAAAAAAAAQABgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABwAAAAAAAAAHAAMAAAAEAAgAAAAAAAAABgAVAQAABAAHAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAG8AAAAAAAAABAAAAAAAAAAAAAEAAQABAAMACwAAAAAAyAAAAAoABgAAABYBAAAEAAAAAAAAAAAAEwEAAAUAAAAAAAAA8D8UAQAABQAAAAAAAAAAQBUBAAAFAAAAAAAAAPA/MgEAAAUAAAAAAAAA8D8nAQAABQAAAAAAAADwPwcACAAAAAcAAAAAAAcAAwAAAAQAAgAAAAAAAAAEACUAAAAAAAAABAACAAAAAAAAAAcABgAAAAQACAAAAAAAAAAGABMBAAAEAAMAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAMAAAAAAAAABwAGAAAABAAIAAAAAAAAAAYAFAEAAAQAAwAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABAAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgAVAQAABAAFAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAFAAAAAAAAAAcABgAAAAQAAgAAAAAAAAAEAC4AAAAAAAAABAAGAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAHAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGABUBAAAEAAcAAAAAAAAABwADAAAABAACAAAAAAAAAAQAcwAAAAAAAAAEAAAAAAAAAAAAAQABAAEAAwALAAAAAADJAAAACgAFAAAAFgEAAAQAAAAAAAAAAAATAQAABQAAAAAAAADwPxQBAAAFAAAAAAAAAABAFQEAAAUAAAAAAAAA8D8nAQAABQAAAAAAAADwPwcABgAAAAcAAAAAAAcAAwAAAAQAAgAAAAAAAAAEACUAAAAAAAAABAACAAAAAAAAAAcABgAAAAQACAAAAAAAAAAGABMBAAAEAAMAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAMAAAAAAAAABwAGAAAABAAIAAAAAAAAAAYAFAEAAAQAAwAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABAAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgAVAQAABAAFAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAFAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAHUAAAAAAAAABAAAAAAAAAAAAAEAAQABAAMACwAAAAAAygAAAAoABgAAABYBAAAEAAAAAAAAAAAAEwEAAAUAAAAAAAAA8D8UAQAABQAAAAAAAAAAQBUBAAAFAAAAAAAAAPA/MgEAAAUAAAAAAAAA8D8nAQAABQAAAAAAAADwPwcACAAAAAcAAAAAAAcAAwAAAAQAAgAAAAAAAAAEACUAAAAAAAAABAACAAAAAAAAAAcABgAAAAQACAAAAAAAAAAGABMBAAAEAAMAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAMAAAAAAAAABwAGAAAABAAIAAAAAAAAAAYAFAEAAAQAAwAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABAAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgAVAQAABAAFAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAFAAAAAAAAAAcABgAAAAQAAgAAAAAAAAAEAC4AAAAAAAAABAAGAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAHAAAAAAAAAAcAAwAAAAQACAAAAAAAAAAGABUBAAAEAAcAAAAAAAAABwADAAAABQAAAAAAAAAYQAYAOAEAAAQAAAAAAAAAAAABAAEAAQADAAsAAAAAAMsAAAABAAEAAQABAAEAAwALAAAAAADMAAAACgAEAAAAFgEAAAQAAAAAAAAAAAAUAQAABQAAAAAAAAAAQBUBAAAFAAAAAAAAAPA/JwEAAAUAAAAAAAAA8D8HAAUAAAAHAAAAAAAHAAMAAAAEAAIAAAAAAAAABAAlAAAAAAAAAAQAAgAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgAUAQAABAACAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAcABgAAAAQACAAAAAAAAAAGABUBAAAEAAQAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABwADAAAABAACAAAAAAAAAAQAJQAAAAAAAAAEAAAAAAAAAAAAAQABAAEAAwALAAAAAADNAAAACgABAAAAFgEAAAQAAAAAAAAAAAAHAAQAAAAHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAFAAAAAAAAABxABgAvAQAABAADAAAAAAAAAAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAACAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAEAAQABAAMACwAAAAAAzgAAAAoAAgAAADkBAAAFAAAAAAAAAPA/FgEAAAQAAAAAAAAAAAAHAAUAAAAHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAQAAwAAAAAAAAAHAAkAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQABAAAAAAAAAAEAAIAAAAAAAAABAAkAAAAAAAAAAQAAAAAAAAAAAAHAAAAAAABAAEAAQADAAsAAAAAAM8AAAAKAAYAAABiAAAABAABAAAAAAAAABYBAAAEAAAAAAAAAAAAOgEAAAQAAQAAAAAAAAA7AQAABAABAAAAAAAAADwBAAAEAAEAAAAAAAAAPQEAAAQAAQAAAAAAAAAHAAIAAAAHAAAAAAAHAA8AAAAEAAIAAAAAAAAABAAgAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABAArAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABAAtAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABAAwAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABAAjAAAAAAAAAAQAAAAAAAAAAAAKAAEAAAA+AQAABwAFAAAABwACAAAABwAAAAAABwADAAAABAACAAAAAAAAAAQAIAAAAAAAAAAEAAAAAAAAAAAABwACAAAABwAAAAAABwADAAAABAACAAAAAAAAAAQAKwAAAAAAAAAEAAAAAAAAAAAABwACAAAABwAAAAAABwADAAAABAACAAAAAAAAAAQALQAAAAAAAAAEAAAAAAAAAAAABwACAAAABwAAAAAABwADAAAABAACAAAAAAAAAAQAMAAAAAAAAAAEAAAAAAAAAAAABwACAAAABwAAAAAABwADAAAABAACAAAAAAAAAAQAIwAAAAAAAAAEAAAAAAAAAAAAAQABAAMACwAAAAAA0AAAAAoAAgAAABYBAAAEAAAAAAAAAAAAPwEAAAQAAQAAAAAAAAAHAAIAAAAHAAAAAAAHAAkAAAAFAAAAAAAAABBABAAIAAAAAAAAAAQAAQAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABAAqAAAAAAAAAAQAAAAAAAAAAAAKAAEAAABAAQAABwACAAAABwACAAAABwAAAAAABwAGAAAABQAAAAAAAAAQQAQACAAAAAAAAAAEAAEAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwACAAAABwAAAAAABwADAAAABAACAAAAAAAAAAQAKgAAAAAAAAAEAAAAAAAAAAAAAQABAAMACwAAAAAA0QAAAAEAAQABAAEAAwALAAAAAADSAAAACgABAAAAFgEAAAQAAAAAAAAAAAAHAAIAAAAHAAAAAAAHAAMAAAAFAAAAAAAAABhABgBBAQAABAAAAAAAAAAAAAEAAQABAAMACwAAAAAA0wAAAAEAAQABAAEAAwALAAAAAADUAAAAAQABAAEAAQADAAsAAAAAANUAAAABAAEAAQABAAMACwAAAAAA1gAAAAEAAQABAAEAAwALAAAAAADXAAAAAQABAAEAAQADAAsAAAAAANgAAAABAAEAAQABAAMACwAAAAAA2QAAAAEAAQABAAEAAwALAAAAAADaAAAAAQABAAEAAQADAAsAAAAAANsAAAABAAEAAQABAAMACwAAAAAA3AAAAAEAAQABAAEAAwALAAAAAADdAAAAAQABAAEAAQADAAsAAAAAAN4AAAABAAEAAQABAAMACwAAAAAA3wAAAAEAAQABAAEAAwALAAAAAADgAAAAAQABAAEAAQADAAsAAAAAAOEAAAABAAEAAQABAAMACwAAAAAA4gAAAAEAAQABAAEAAwALAAAAAADjAAAAAQABAAEAAQADAEMBAAAHAAAAAAAKAAAAAABEAQAABwAAAAAACgAAAAAADAAAAAcAAAAAAAoAAAAAAAYARwEAAAcAAAAAAAoAFAAAABkAAAACAAAAAAAEAAAAGgAAAAIAAAAAAAUAAAAbAAAAAgAAAAAABgAAABwAAAACAAAAAAAHAAAAHQAAAAIAAAAAAAgAAAAeAAAAAgAAAAAACQAAAB8AAAACAAAAAAAKAAAAIAAAAAIAAAAAAAsAAAAhAAAAAgAAAAAADAAAACIAAAACAAAAAAANAAAAIwAAAAIAAAAAAA4AAAAkAAAAAgAAAAAADwAAACUAAAACAAAAAAAQAAAAJgAAAAIAAAAAABEAAAAnAAAAAgAAAAAAEgAAACgAAAACAAAAAAATAAAAKQAAAAIAAAAAABQAAAAqAAAAAgAAAAAAFQAAACsAAAACAAAAAAAWAAAALAAAAAIAAAAAABcAAAAHABQAAAACAAAAAAAEAAAAAgAAAAAABQAAAAIAAAAAAAYAAAACAAAAAAAHAAAAAgAAAAAACAAAAAIAAAAAAAkAAAACAAAAAAAKAAAAAgAAAAAACwAAAAIAAAAAAAwAAAACAAAAAAANAAAAAgAAAAAADgAAAAIAAAAAAA8AAAACAAAAAAAQAAAAAgAAAAAAEQAAAAIAAAAAABIAAAACAAAAAAATAAAAAgAAAAAAFAAAAAIAAAAAABUAAAACAAAAAAAWAAAAAgAAAAAAFwAAAAcAAAAAAAcAAQAAAAIAAgAAABoAAAAHAAAAAAACAAIAAAAaAAAABwAAAAAACgAAAAAABAABAAAAAAAAAAcAAgAAAAIAAAAAAAMAAAACAAIAAAAaAAAABwAAAAAAAQAEAAAAAAAAAAAACgAAAAAACgAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAABAAcAAAAAAAcAAAAAAAEABgBIAQAABwAAAAAACgABAAAA1AAAAAIAAAAAABkAAAAHAAAAAAAHAAAAAAAEAAEAAAAAAAAAAgAAAAAAGgAAAAYASQEAAAcAAAAAAAoAPQAAAGcAAAACAAAAAAAcAAAAaAAAAAIAAAAAAB0AAABpAAAAAgAAAAAAHgAAAGoAAAACAAAAAAAfAAAAawAAAAIAAAAAACAAAABsAAAAAgAAAAAAIQAAAG0AAAACAAAAAAAiAAAAbgAAAAIAAAAAACMAAABvAAAAAgAAAAAAJAAAAHAAAAACAAAAAAAlAAAAcQAAAAIAAAAAACYAAAByAAAAAgAAAAAAJwAAAHMAAAACAAAAAAAoAAAAdAAAAAIAAAAAACkAAAB1AAAAAgAAAAAAKgAAAHYAAAACAAAAAAArAAAAdwAAAAIAAAAAACwAAAB4AAAAAgAAAAAALQAAAHkAAAACAAAAAAAuAAAAegAAAAIAAAAAAC8AAAB7AAAAAgAAAAAAMAAAAHwAAAACAAAAAAAxAAAAfQAAAAIAAAAAADIAAAB+AAAAAgAAAAAAMwAAAH8AAAACAAAAAAA0AAAAgAAAAAIAAAAAADUAAACBAAAAAgAAAAAANgAAAIIAAAACAAAAAAA3AAAAgwAAAAIAAAAAADgAAACEAAAAAgAAAAAAOQAAAIUAAAACAAAAAAA6AAAAhgAAAAIAAAAAADsAAACHAAAAAgAAAAAAPAAAAIgAAAACAAAAAAA9AAAAiQAAAAIAAAAAAD4AAACKAAAAAgAAAAAAPwAAAIsAAAACAAAAAABAAAAAjAAAAAIAAAAAAEEAAACNAAAAAgAAAAAAQgAAAI4AAAACAAAAAABDAAAAjwAAAAIAAAAAAEQAAACQAAAAAgAAAAAARQAAAJEAAAACAAAAAABIAAAAkgAAAAIAAAAAAEoAAACTAAAAAgAAAAAASwAAAJQAAAACAAAAAABMAAAAlQAAAAIAAAAAAE0AAABmAAAAAgAAAAAATgAAAJYAAAACAAAAAABPAAAAlwAAAAIAAAAAAFAAAACYAAAAAgAAAAAAUQAAAJkAAAACAAAAAABSAAAAmgAAAAIAAAAAAFMAAACbAAAAAgAAAAAAVAAAAJwAAAACAAAAAABVAAAAnQAAAAIAAAAAAFYAAACeAAAAAgAAAAAAVwAAAJ8AAAACAAAAAABYAAAAoAAAAAIAAAAAAFkAAAChAAAAAgAAAAAAWgAAAKIAAAACAAAAAABbAAAABwA9AAAAAgAAAAAAHAAAAAIAAAAAAB0AAAACAAAAAAAeAAAAAgAAAAAAHwAAAAIAAAAAACAAAAACAAAAAAAhAAAAAgAAAAAAIgAAAAIAAAAAACMAAAACAAAAAAAkAAAAAgAAAAAAJQAAAAIAAAAAACYAAAACAAAAAAAnAAAAAgAAAAAAKAAAAAIAAAAAACkAAAACAAAAAAAqAAAAAgAAAAAAKwAAAAIAAAAAACwAAAACAAAAAAAtAAAAAgAAAAAALgAAAAIAAAAAAC8AAAACAAAAAAAwAAAAAgAAAAAAMQAAAAIAAAAAADIAAAACAAAAAAAzAAAAAgAAAAAANAAAAAIAAAAAADUAAAACAAAAAAA2AAAAAgAAAAAANwAAAAIAAAAAADgAAAACAAAAAAA5AAAAAgAAAAAAOgAAAAIAAAAAADsAAAACAAAAAAA8AAAAAgAAAAAAPQAAAAIAAAAAAD4AAAACAAAAAAA/AAAAAgAAAAAAQAAAAAIAAAAAAEEAAAACAAAAAABCAAAAAgAAAAAAQwAAAAIAAAAAAEQAAAACAAAAAABFAAAAAgAAAAAASAAAAAIAAAAAAEoAAAACAAAAAABLAAAAAgAAAAAATAAAAAIAAAAAAE0AAAACAAAAAABOAAAAAgAAAAAATwAAAAIAAAAAAFAAAAACAAAAAABRAAAAAgAAAAAAUgAAAAIAAAAAAFMAAAACAAAAAABUAAAAAgAAAAAAVQAAAAIAAAAAAFYAAAACAAAAAABXAAAAAgAAAAAAWAAAAAIAAAAAAFkAAAACAAAAAABaAAAAAgAAAAAAWwAAAAcAAAAAAAcAAQAAAAIAAQAAAGcAAAAHAAAAAAACAAEAAABnAAAABwAAAAAACgAAAAAABAABAAAAAAAAAAcAAwAAAAIAAAAAABsAAAACAAEAAABnAAAAAgACAAAAGgAAAAcAAAAAAAoADAAAAEkAAAAKAAIAAABpAAAABwABAAAABgBvAAAAgwAAAAcADQAAAAYAhAAAAAYAhQAAAAYAhgAAAAYAhwAAAAYAiAAAAAYAiQAAAAYAigAAAAYAiwAAAAYAjAAAAAYAjQAAAAYAjgAAAAYAjwAAAAYAkAAAAGkAAAACAAAAAAAHAQAAgwAAAAIAAAAAAAgBAAAYAQAAAgAAAAAACQEAABkBAAACAAAAAAAKAQAAHgEAAAIAAAAAAAsBAAAfAQAAAgAAAAAADAEAACEBAAACAAAAAAANAQAAJQEAAAIAAAAAAA4BAAAmAQAAAgAAAAAADwEAACsBAAACAAAAAAAQAQAALgEAAAIAAAAAABEBAAAEAAAAAAAAAAAACgAAAAAACgAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAABAAcACQAAAAcABAAAAAQAAQAAAAAAAAACAAEAAABnAAAABgBKAQAABgCjAAAABwAEAAAABAABAAAAAAAAAAIAAQAAAGcAAAAGADUAAAAGAKQAAAAHAAQAAAAEAAEAAAAAAAAAAgABAAAAZwAAAAYANgAAAAYApQAAAAcABAAAAAQAAQAAAAAAAAACAAEAAABnAAAABgBLAQAABgCmAAAABwAEAAAABAABAAAAAAAAAAIAAQAAAGcAAAAGABwAAAAGAKcAAAAHAAQAAAAEAAEAAAAAAAAAAgABAAAAZwAAAAYATAEAAAYAqAAAAAcABAAAAAQAAQAAAAAAAAACAAEAAABnAAAABgBNAQAABgCpAAAABwAEAAAABAABAAAAAAAAAAIAAQAAAGcAAAAGAE4BAAAGAKoAAAAHAAQAAAAEAAEAAAAAAAAAAgABAAAAZwAAAAYATwEAAAYAqwAAAAcAAAAAAAEABgBQAQAABwAAAAAACgAiAAAArAAAAAIAAAAAAF0AAACtAAAAAgAAAAAAXgAAAK4AAAACAAAAAABfAAAArwAAAAIAAAAAAGAAAACcAAAAAgAAAAAAYQAAAG8AAAACAAAAAABiAAAAaAAAAAIAAAAAAGMAAABzAAAAAgAAAAAAZAAAAHQAAAACAAAAAABlAAAAgAAAAAIAAAAAAGYAAACBAAAAAgAAAAAAZwAAAHgAAAACAAAAAABoAAAAegAAAAIAAAAAAGkAAAB8AAAAAgAAAAAAagAAAH4AAAACAAAAAABrAAAAlwAAAAIAAAAAAGwAAAB2AAAAAgAAAAAAbQAAAHcAAAACAAAAAABuAAAAhAAAAAIAAAAAAG8AAACFAAAAAgAAAAAAcAAAAIYAAAACAAAAAABxAAAAhwAAAAIAAAAAAHIAAACIAAAAAgAAAAAAcwAAAIkAAAACAAAAAAB0AAAAigAAAAIAAAAAAHUAAACLAAAAAgAAAAAAdgAAAIwAAAACAAAAAAB3AAAAjQAAAAIAAAAAAHgAAACOAAAAAgAAAAAAeQAAAI8AAAACAAAAAAB6AAAAkAAAAAIAAAAAAHsAAACRAAAAAgAAAAAAfAAAAJIAAAACAAAAAAB9AAAAkwAAAAIAAAAAAH4AAAAHACIAAAACAAAAAABdAAAAAgAAAAAAXgAAAAIAAAAAAF8AAAACAAAAAABgAAAAAgAAAAAAYQAAAAIAAAAAAGIAAAACAAAAAABjAAAAAgAAAAAAZAAAAAIAAAAAAGUAAAACAAAAAABmAAAAAgAAAAAAZwAAAAIAAAAAAGgAAAACAAAAAABpAAAAAgAAAAAAagAAAAIAAAAAAGsAAAACAAAAAABsAAAAAgAAAAAAbQAAAAIAAAAAAG4AAAACAAAAAABvAAAAAgAAAAAAcAAAAAIAAAAAAHEAAAACAAAAAAByAAAAAgAAAAAAcwAAAAIAAAAAAHQAAAACAAAAAAB1AAAAAgAAAAAAdgAAAAIAAAAAAHcAAAACAAAAAAB4AAAAAgAAAAAAeQAAAAIAAAAAAHoAAAACAAAAAAB7AAAAAgAAAAAAfAAAAAIAAAAAAH0AAAACAAAAAAB+AAAABwAAAAAABwABAAAAAgACAAAAGgAAAAcAAAAAAAIAAgAAABoAAAAHAAAAAAAKAAAAAAAEAAEAAAAAAAAABwACAAAAAgAAAAAAXAAAAAIAAgAAABoAAAAHAAAAAAABAAQAAAAAAAAAAAAKAAAAAAAKAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAEABwAAAAAABwAAAAAAAQAGAFEBAAAHAAsAAAACAAAAAAASAQAAAgAAAAAAEwEAAAIAAAAAABQBAAACAAAAAAAVAQAAAgAAAAAAFgEAAAIAAAAAABcBAAACAAAAAAAYAQAAAgAAAAAAGQEAAAIAAAAAABoBAAACAAAAAAAbAQAAAgAAAAAAHAEAAAoAKwAAALAAAAACAAAAAACAAAAAsQAAAAIAAAAAAIEAAACyAAAAAgAAAAAAggAAALMAAAACAAAAAACDAAAAGgAAAAIAAAAAAIQAAAC0AAAAAgAAAAAAhQAAALUAAAACAAAAAACGAAAAtgAAAAIAAAAAAIcAAAC3AAAAAgAAAAAAiAAAALgAAAACAAAAAACJAAAAuQAAAAIAAAAAAIoAAACVAAAAAgAAAAAAiwAAACIAAAACAAAAAACMAAAAugAAAAIAAAAAAI0AAAC7AAAAAgAAAAAAjgAAALwAAAACAAAAAACPAAAAvQAAAAIAAAAAAJAAAAC+AAAAAgAAAAAAkQAAAL8AAAACAAAAAACSAAAAwAAAAAIAAAAAAJMAAADBAAAAAgAAAAAAlAAAAMIAAAACAAAAAACVAAAAwwAAAAIAAAAAAJYAAADEAAAAAgAAAAAAlwAAAMUAAAACAAAAAACYAAAAxgAAAAIAAAAAAJkAAAAwAAAAAgAAAAAAmgAAAMcAAAACAAAAAACbAAAAyAAAAAIAAAAAAJwAAADJAAAAAgAAAAAAnQAAAMoAAAACAAAAAACeAAAAywAAAAIAAAAAAJ8AAADMAAAAAgAAAAAAoAAAAB0AAAACAAAAAAChAAAAzQAAAAIAAAAAAKIAAADOAAAAAgAAAAAAowAAAM8AAAACAAAAAACkAAAA0AAAAAIAAAAAAKUAAADRAAAAAgAAAAAApgAAANIAAAACAAAAAACnAAAA0wAAAAIAAAAAAKgAAAAsAAAAAgAAAAAAqQAAANQAAAACAAAAAAD+AAAABwArAAAAAgAAAAAAgAAAAAIAAAAAAIEAAAACAAAAAACCAAAAAgAAAAAAgwAAAAIAAAAAAIQAAAACAAAAAACFAAAAAgAAAAAAhgAAAAIAAAAAAIcAAAACAAAAAACIAAAAAgAAAAAAiQAAAAIAAAAAAIoAAAACAAAAAACLAAAAAgAAAAAAjAAAAAIAAAAAAI0AAAACAAAAAACOAAAAAgAAAAAAjwAAAAIAAAAAAJAAAAACAAAAAACRAAAAAgAAAAAAkgAAAAIAAAAAAJMAAAACAAAAAACUAAAAAgAAAAAAlQAAAAIAAAAAAJYAAAACAAAAAACXAAAAAgAAAAAAmAAAAAIAAAAAAJkAAAACAAAAAACaAAAAAgAAAAAAmwAAAAIAAAAAAJwAAAACAAAAAACdAAAAAgAAAAAAngAAAAIAAAAAAJ8AAAACAAAAAACgAAAAAgAAAAAAoQAAAAIAAAAAAKIAAAACAAAAAACjAAAAAgAAAAAApAAAAAIAAAAAAKUAAAACAAAAAACmAAAAAgAAAAAApwAAAAIAAAAAAKgAAAACAAAAAACpAAAAAgAAAAAA/gAAAAcAAAAAAAcAAQAAAAIAAgAAABoAAAAHAAEAAAACAAAAAAAYAAAAAgACAAAAGgAAAAcAAAAAAAoAAAAAAAQAAQAAAAAAAAAHAAIAAAACAAAAAAB/AAAAAgACAAAAGgAAAAcAAgAAAAIAAAAAABgAAAACAAAAAAD/AAAAAQAEAAAAAAAAAAAACgAAAAAACgAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAABAAcAAQAAAAcAAgAAAAQAAAAAAAAAAAACAAAAAACAAAAABwABAAAABwACAAAABAAAAAAAAAAAAAIAAAAAAIAAAAABAAwAAAAAAOQAAAABAAEAAQABAAMABgBSAQAABwACAAAAAgAAAAAAHQEAAAIAAAAAAB4BAAAKAAUAAADgAAAAAgAAAAAAqwAAAOEAAAACAAAAAACsAAAA4gAAAAIAAAAAAK0AAADjAAAAAgAAAAAArgAAAOQAAAACAAAAAACvAAAABwAFAAAAAgAAAAAAqwAAAAIAAAAAAKwAAAACAAAAAACtAAAAAgAAAAAArgAAAAIAAAAAAK8AAAAHAAAAAAAHAAEAAAACAAIAAAAaAAAABwAAAAAAAgACAAAAGgAAAAcAAAAAAAoAAAAAAAQAAQAAAAAAAAAHAAIAAAACAAAAAACqAAAAAgACAAAAGgAAAAcAAAAAAAEABAAAAAAAAAAAAAoAAAAAAAoAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAAAQAHAAIAAAAHAAQAAAAEAAIAAAAAAAAAAgAAAAAAqgAAAAYA4QAAAAYA5QAAAAcABAAAAAQAAwAAAAAAAAACAAAAAACqAAAABgDiAAAABgDmAAAABwACAAAABwAEAAAABAACAAAAAAAAAAIAAAAAAKoAAAAGAOEAAAAGAOUAAAAHAAQAAAAEAAMAAAAAAAAAAgAAAAAAqgAAAAYA4gAAAAYA5gAAAAEABgBTAQAABwAEAAAAAgAAAAAAHwEAAAIAAAAAACABAAACAAAAAAAhAQAAAgAAAAAAIgEAAAoACgAAABIAAAACAAAAAACxAAAA5wAAAAIAAAAAALIAAACwAAAAAgAAAAAAswAAAOgAAAACAAAAAAC0AAAA6QAAAAIAAAAAALUAAADqAAAAAgAAAAAAtgAAAOsAAAACAAAAAAC3AAAA7AAAAAIAAAAAALgAAADtAAAAAgAAAAAAuQAAADAAAAACAAAAAAC6AAAABwAKAAAAAgAAAAAAsQAAAAIAAAAAALIAAAACAAAAAACzAAAAAgAAAAAAtAAAAAIAAAAAALUAAAACAAAAAAC2AAAAAgAAAAAAtwAAAAIAAAAAALgAAAACAAAAAAC5AAAAAgAAAAAAugAAAAcAAAAAAAcAAQAAAAIAAgAAABoAAAAHAAAAAAACAAIAAAAaAAAABwAAAAAACgAAAAAABAABAAAAAAAAAAcAAgAAAAIAAAAAALAAAAACAAIAAAAaAAAABwAAAAAAAQAEAAAAAAAAAAAACgAAAAAACgAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAABAAcAAQAAAAcAAgAAAAQAAAAAAAAAAAACAAAAAACzAAAABwABAAAABwACAAAABAAAAAAAAAAAAAIAAAAAALMAAAABAAYAVAEAAAcABwAAAAIAAAAAACMBAAACAAAAAAAkAQAAAgAAAAAAJQEAAAIAAAAAACYBAAACAAAAAAAnAQAAAgAAAAAAKAEAAAIAAAAAACkBAAAKAAwAAACwAAAAAgAAAAAAvAAAAPEAAAACAAAAAAC9AAAA8gAAAAIAAAAAAL4AAADzAAAAAgAAAAAAvwAAAPQAAAACAAAAAADAAAAA9QAAAAIAAAAAAMEAAAD2AAAAAgAAAAAAwgAAAPcAAAACAAAAAADDAAAA+AAAAAIAAAAAAMQAAAD5AAAAAgAAAAAAxQAAAPoAAAACAAAAAADGAAAA+wAAAAIAAAAAAMcAAAAHAAwAAAACAAAAAAC8AAAAAgAAAAAAvQAAAAIAAAAAAL4AAAACAAAAAAC/AAAAAgAAAAAAwAAAAAIAAAAAAMEAAAACAAAAAADCAAAAAgAAAAAAwwAAAAIAAAAAAMQAAAACAAAAAADFAAAAAgAAAAAAxgAAAAIAAAAAAMcAAAAHAAAAAAAHAAEAAAACAAIAAAAaAAAABwAAAAAAAgACAAAAGgAAAAcAAAAAAAoAAAAAAAQAAQAAAAAAAAAHAAIAAAACAAAAAAC7AAAAAgACAAAAGgAAAAcAAAAAAAEABAAAAAAAAAAAAAoAAAAAAAoAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAAAQAHAAEAAAAHAAIAAAAEAAAAAAAAAAAAAgAAAAAAvAAAAAcAAQAAAAcAAgAAAAQAAAAAAAAAAAACAAAAAAC8AAAAAQAGAFUBAAAEAAEAAAAAAAAABgBWAQAABwAAAAAACgAUAAAAAwEAAAIAAAAAAMoAAACVAAAAAgAAAAAAywAAAAQBAAACAAAAAADMAAAABQEAAAIAAAAAAM0AAAAGAQAAAgAAAAAAzgAAAAcBAAACAAAAAADPAAAACAEAAAIAAAAAANAAAAAJAQAAAgAAAAAA0QAAAAoBAAACAAAAAADSAAAACwEAAAIAAAAAANMAAAAMAQAAAgAAAAAA1AAAAA0BAAACAAAAAADVAAAADgEAAAIAAAAAANYAAAAPAQAAAgAAAAAA1wAAABABAAACAAAAAADYAAAAEQEAAAIAAAAAANkAAAASAQAAAgAAAAAA2gAAABMBAAACAAAAAADbAAAAFAEAAAIAAAAAANwAAAAVAQAAAgAAAAAA3QAAAAcAFAAAAAIAAAAAAMoAAAACAAAAAADLAAAAAgAAAAAAzAAAAAIAAAAAAM0AAAACAAAAAADOAAAAAgAAAAAAzwAAAAIAAAAAANAAAAACAAAAAADRAAAAAgAAAAAA0gAAAAIAAAAAANMAAAACAAAAAADUAAAAAgAAAAAA1QAAAAIAAAAAANYAAAACAAAAAADXAAAAAgAAAAAA2AAAAAIAAAAAANkAAAACAAAAAADaAAAAAgAAAAAA2wAAAAIAAAAAANwAAAACAAAAAADdAAAABwAAAAAABwABAAAAAgABAAAAZwAAAAcAAAAAAAIAAQAAAGcAAAAHAAAAAAAKAAAAAAAEAAEAAAAAAAAABwADAAAAAgAAAAAAyQAAAAIAAQAAAGcAAAACAAIAAAAaAAAABwAAAAAACgAHAAAASQAAAAoAAgAAAAUBAAAHAAoAAAAGAAYBAAAGAAcBAAAGAAgBAAAGAAkBAAAGAAoBAAAGAAsBAAAGAAwBAAAGAA0BAAAGAA4BAAAGAA8BAAAQAQAABwABAAAABgARAQAABQEAAAIAAAAAACoBAAAQAQAAAgAAAAAAKwEAADABAAACAAAAAAAsAQAAMQEAAAIAAAAAAC0BAAA+AQAAAgAAAAAALgEAAEABAAACAAAAAAAvAQAABAAAAAAAAAAAAAoAAAAAAAoAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAAAQAHAAkAAAAHAAQAAAAEAAEAAAAAAAAAAgABAAAAZwAAAAYASgEAAAYAowAAAAcABAAAAAQAAQAAAAAAAAACAAEAAABnAAAABgA1AAAABgCkAAAABwAEAAAABAABAAAAAAAAAAIAAQAAAGcAAAAGADYAAAAGAKUAAAAHAAQAAAAEAAEAAAAAAAAAAgABAAAAZwAAAAYASwEAAAYApgAAAAcABAAAAAQAAQAAAAAAAAACAAEAAABnAAAABgAcAAAABgCnAAAABwAEAAAABAABAAAAAAAAAAIAAQAAAGcAAAAGAEwBAAAGAKgAAAAHAAQAAAAEAAEAAAAAAAAAAgABAAAAZwAAAAYATQEAAAYAqQAAAAcABAAAAAQAAQAAAAAAAAACAAEAAABnAAAABgBOAQAABgCqAAAABwAEAAAABAABAAAAAAAAAAIAAQAAAGcAAAAGAE8BAAAGAKsAAAAHAAAAAAABAAYAVwEAAAcAAAAAAAoAEAAAAAMBAAACAAAAAADfAAAABAEAAAIAAAAAAOEAAAAGAQAAAgAAAAAA4gAAAAcBAAACAAAAAADjAAAACAEAAAIAAAAAAOQAAAAJAQAAAgAAAAAA5QAAAAoBAAACAAAAAADmAAAACwEAAAIAAAAAAOcAAAAMAQAAAgAAAAAA6AAAAA0BAAACAAAAAADpAAAADgEAAAIAAAAAAOoAAAAPAQAAAgAAAAAA6wAAABEBAAACAAAAAADsAAAAEgEAAAIAAAAAAO0AAAATAQAAAgAAAAAA7gAAABUBAAACAAAAAADvAAAABwAQAAAAAgAAAAAA3wAAAAIAAAAAAOEAAAACAAAAAADiAAAAAgAAAAAA4wAAAAIAAAAAAOQAAAACAAAAAADlAAAAAgAAAAAA5gAAAAIAAAAAAOcAAAACAAAAAADoAAAAAgAAAAAA6QAAAAIAAAAAAOoAAAACAAAAAADrAAAAAgAAAAAA7AAAAAIAAAAAAO0AAAACAAAAAADuAAAAAgAAAAAA7wAAAAcAAAAAAAcAAQAAAAIAAgAAABoAAAAHAAAAAAACAAIAAAAaAAAABwAAAAAACgAAAAAABAABAAAAAAAAAAcAAgAAAAIAAAAAAN4AAAACAAIAAAAaAAAABwAAAAAAAQAEAAAAAAAAAAAACgAAAAAACgAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAABAAcAAAAAAAcAAAAAAAEABgBYAQAABwAAAAAACgACAAAAAwEAAAIAAAAAAPEAAAAEAQAAAgAAAAAA8gAAAAcAAgAAAAIAAAAAAPEAAAACAAAAAADyAAAABwAAAAAABwABAAAAAgACAAAAGgAAAAcAAAAAAAIAAgAAABoAAAAHAAAAAAAKAAAAAAAEAAEAAAAAAAAABwACAAAAAgAAAAAA8AAAAAIAAgAAABoAAAAHAAAAAAABAAQAAAAAAAAAAAAKAAAAAAAKAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAEABwAAAAAABwAAAAAAAQAHAAQAAAAHAAIAAAADAAYAbwAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAcABgAAAAQACAAAAAAAAAAGAG0AAAAFAAAAAAAAAABABAAAAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAABAAAAAAAAAAAAAAAAAAAAAQAHAFgAAAAHAA4AAAADAAYAhAAAAAYAhQAAAAYAhgAAAAYAhwAAAAYAiAAAAAYAiQAAAAYAigAAAAYAiwAAAAYAjAAAAAYAjQAAAAYAjgAAAAYAjwAAAAYAkAAAAAcAJwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAKAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAQAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAXAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAeAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAlAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAsAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAzAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAA6AAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABABBAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABABIAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABABPAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABABWAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAUAAAAAAAAAGEAGACQBAAAFAAAAAAAAABBABwADAAAABQAAAAAAAAAYQAYAJAEAAAUAAAAAAAAAFEAHAAYAAAAEAAgAAAAAAAAABgCYAAAABQAAAAAAAAAYQAQAAQAAAAAAAAAEAAAAAAAAAAAABAAIAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABQAAAAAAAAAAQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAYQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAcQAcAAwAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAUAAAAAAAAAGEAGACQBAAAFAAAAAAAAACZABwAGAAAABAAIAAAAAAAAAAYAmAAAAAUAAAAAAAAAKEAEAAEAAAAAAAAABAAAAAAAAAAAAAQADgAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAACAAAAAAAAAAUAAAAAAAAAIkAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAKEAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAKkAHAAMAAAAEAAAAAAAAAAAABAADAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAFAAAAAAAAABhABgAkAQAABQAAAAAAAAAxQAcAAwAAAAQAAgAAAAAAAAAEAGIAAAAAAAAABQAAAAAAAAAyQAcABgAAAAQACAAAAAAAAAAGAJgAAAAFAAAAAAAAADNABAABAAAAAAAAAAQAAAAAAAAAAAAEABUAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAwAAAAAAAAAFAAAAAAAAAC5ABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADNABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADRABwADAAAABAAAAAAAAAAAAAQABAAAAAAAAAAEAAAAAAAAAAAABwADAAAABQAAAAAAAAAYQAYAJAEAAAUAAAAAAAAAOEAHAAMAAAAEAAIAAAAAAAAABABuAAAAAAAAAAUAAAAAAAAAOUAHAAYAAAAEAAgAAAAAAAAABgCYAAAABQAAAAAAAAA6QAQAAQAAAAAAAAAEAAAAAAAAAAAABAAcAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAQAAAAAAAAABQAAAAAAAAA2QAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA6QAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA7QAcAAwAAAAQAAAAAAAAAAAAEAAUAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAUAAAAAAAAAGEAGACQBAAAFAAAAAAAAAD9ABwADAAAABAACAAAAAAAAAAQAcgAAAAAAAAAFAAAAAAAAAEBABwAGAAAABAAIAAAAAAAAAAYAmAAAAAUAAAAAAACAQEAEAAEAAAAAAAAABAAAAAAAAAAAAAQAIwAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAFAAAAAAAAAAUAAAAAAAAAPUAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAACAQEAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAQUAHAAMAAAAEAAAAAAAAAAAABAAGAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAFAAAAAAAAABhABgAkAQAABQAAAAAAAABDQAcAAwAAAAQAAgAAAAAAAAAEAHQAAAAAAAAABQAAAAAAAIBDQAcABgAAAAQACAAAAAAAAAAGAJgAAAAFAAAAAAAAAERABAABAAAAAAAAAAQAAAAAAAAAAAAEACoAAAAAAAAABwADAAAABAAAAAAAAAAAAAQABgAAAAAAAAAFAAAAAAAAAEJABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAERABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgERABwADAAAABAAAAAAAAAAAAAQABwAAAAAAAAAEAAAAAAAAAAAABwADAAAABQAAAAAAAAAYQAYAJAEAAAUAAAAAAACARkAHAAMAAAAEAAIAAAAAAAAABABmAAAAAAAAAAUAAAAAAAAAR0AHAAYAAAAEAAgAAAAAAAAABgCYAAAABQAAAAAAAIBHQAQAAQAAAAAAAAAEAAAAAAAAAAAABAAxAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAcAAAAAAAAABQAAAAAAAIBFQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBHQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABIQAcAAwAAAAQAAAAAAAAAAAAEAAgAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAUAAAAAAAAAGEAGACQBAAAFAAAAAAAAAEpABwADAAAABAACAAAAAAAAAAQAZQAAAAAAAAAFAAAAAAAAgEpABwAGAAAABAAIAAAAAAAAAAYAmAAAAAUAAAAAAAAAS0AEAAEAAAAAAAAABAAAAAAAAAAAAAQAOAAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAIAAAAAAAAAAUAAAAAAAAASUAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAS0AHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAACAS0AHAAMAAAAEAAAAAAAAAAAABAAJAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAFAAAAAAAAABhABgAkAQAABQAAAAAAAIBNQAcAAwAAAAQAAgAAAAAAAAAEAHgAAAAAAAAABQAAAAAAAABOQAcABgAAAAQACAAAAAAAAAAGAJgAAAAFAAAAAAAAgE5ABAABAAAAAAAAAAQAAAAAAAAAAAAEAD8AAAAAAAAABwADAAAABAAAAAAAAAAAAAQACQAAAAAAAAAFAAAAAAAAgExABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgE5ABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAE9ABwADAAAABAAAAAAAAAAAAAQACgAAAAAAAAAEAAAAAAAAAAAABwADAAAABQAAAAAAAAAYQAYAJAEAAAUAAAAAAACAUEAHAAMAAAAEAAIAAAAAAAAABABvAAAAAAAAAAUAAAAAAADAUEAHAAYAAAAEAAgAAAAAAAAABgCYAAAABQAAAAAAAABRQAQAAQAAAAAAAAAEAAAAAAAAAAAABABGAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAoAAAAAAAAABQAAAAAAAABQQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABRQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAEBRQAcAAwAAAAQAAAAAAAAAAAAEAAsAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAUAAAAAAAAAGEAGACQBAAAFAAAAAAAAQFJABwADAAAABAACAAAAAAAAAAQAYwAAAAAAAAAFAAAAAAAAgFJABwAGAAAABAAIAAAAAAAAAAYAmAAAAAUAAAAAAADAUkAEAAEAAAAAAAAABAAAAAAAAAAAAAQATQAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAALAAAAAAAAAAUAAAAAAADAUUAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAADAUkAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAU0AHAAMAAAAEAAAAAAAAAAAABAAMAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAFAAAAAAAAABhABgAkAQAABQAAAAAAAABUQAcAAwAAAAQAAgAAAAAAAAAEADAAAAAAAAAABQAAAAAAAEBUQAcABgAAAAQACAAAAAAAAAAGAJgAAAAFAAAAAAAAgFRABAABAAAAAAAAAAQAAAAAAAAAAAAEAFQAAAAAAAAABwADAAAABAAAAAAAAAAAAAQADAAAAAAAAAAFAAAAAAAAgFNABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgFRABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAwFRABwADAAAABAAAAAAAAAAAAAQADQAAAAAAAAAEAAAAAAAAAAAABwADAAAABQAAAAAAAAAYQAYAJAEAAAUAAAAAAADAVUAHAAMAAAAEAAAAAAAAAAAABAANAAAAAAAAAAUAAAAAAABAVUAEAAEAAAAAAAAAAAAAAAAAAAABAAcABgAAAAcAAgAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAMAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAUAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwAGAAAABAAIAAAAAAAAAAYAbAAAAAUAAAAAAAAAAEAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgBuAAAABQAAAAAAAAAQQAQAAAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAAAAAAAAAAAAEABwBkAAAABwADAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAEAAIAAAAAAAAABwAJAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAMAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAF0AAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAGEAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwAGAAAABAAIAAAAAAAAAAYAgwAAAAUAAAAAAAAAAEAEAAEAAAAAAAAABAAAAAAAAAAAAAQABQAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAAEAHAE4AAAAEAAgAAAAAAAAABgCEAAAABQAAAAAAAAAQQAQACAAAAAAAAAAGAIUAAAAFAAAAAAAAABBABAAIAAAAAAAAAAYAhgAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABgCHAAAABQAAAAAAAAAQQAQACAAAAAAAAAAGAIgAAAAFAAAAAAAAABBABAAIAAAAAAAAAAYAiQAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABgCKAAAABQAAAAAAAAAQQAQACAAAAAAAAAAGAIsAAAAFAAAAAAAAABBABAAIAAAAAAAAAAYAjAAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABgCNAAAABQAAAAAAAAAQQAQACAAAAAAAAAAGAI4AAAAFAAAAAAAAABBABAAIAAAAAAAAAAYAjwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABgCQAAAABQAAAAAAAAAQQAQAAQAAAAAAAAAEAAAAAAAAAAAABAAHAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAOAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAUAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAbAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAiAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAApAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAwAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAA3AAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAA+AAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABABFAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABABMAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABABTAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABABaAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAQQAcAAwAAAAUAAAAAAAAAGEAGACQBAAAFAAAAAAAAACBABwADAAAABQAAAAAAAAAYQAYAJAEAAAUAAAAAAAAAIkAHAAYAAAAEAAgAAAAAAAAABgCYAAAABQAAAAAAAAAkQAQAAQAAAAAAAAAEAAAAAAAAAAAABAAMAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAYQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAkQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAmQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAQQAcAAwAAAAUAAAAAAAAAGEAGACQBAAAFAAAAAAAAAC5ABwAGAAAABAAIAAAAAAAAAAYAmAAAAAUAAAAAAAAAMEAEAAEAAAAAAAAABAAAAAAAAAAAAAQAEgAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAKkAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAMEAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAMUAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAEEAHAAMAAAAFAAAAAAAAABhABgAkAQAABQAAAAAAAAA1QAcAAwAAAAQAAgAAAAAAAAAEAGIAAAAAAAAABQAAAAAAAAA2QAcABgAAAAQACAAAAAAAAAAGAJgAAAAFAAAAAAAAADdABAABAAAAAAAAAAQAAAAAAAAAAAAEABkAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADNABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADdABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADhABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAABBABwADAAAABQAAAAAAAAAYQAYAJAEAAAUAAAAAAAAAPEAHAAMAAAAEAAIAAAAAAAAABABuAAAAAAAAAAUAAAAAAAAAPUAHAAYAAAAEAAgAAAAAAAAABgCYAAAABQAAAAAAAAA+QAQAAQAAAAAAAAAEAAAAAAAAAAAABAAgAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA6QAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA+QAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA/QAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAQQAcAAwAAAAUAAAAAAAAAGEAGACQBAAAFAAAAAAAAgEFABwADAAAABAACAAAAAAAAAAQAcgAAAAAAAAAFAAAAAAAAAEJABwAGAAAABAAIAAAAAAAAAAYAmAAAAAUAAAAAAACAQkAEAAEAAAAAAAAABAAAAAAAAAAAAAQAJwAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAUAAAAAAACAQEAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAACAQkAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAQ0AHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAEEAHAAMAAAAFAAAAAAAAABhABgAkAQAABQAAAAAAAABFQAcAAwAAAAQAAgAAAAAAAAAEAHQAAAAAAAAABQAAAAAAAIBFQAcABgAAAAQACAAAAAAAAAAGAJgAAAAFAAAAAAAAAEZABAABAAAAAAAAAAQAAAAAAAAAAAAEAC4AAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAERABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAEZABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgEZABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAABBABwADAAAABQAAAAAAAAAYQAYAJAEAAAUAAAAAAACASEAHAAMAAAAEAAIAAAAAAAAABABmAAAAAAAAAAUAAAAAAAAASUAHAAYAAAAEAAgAAAAAAAAABgCYAAAABQAAAAAAAIBJQAQAAQAAAAAAAAAEAAAAAAAAAAAABAA1AAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBHQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBJQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABKQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAQQAcAAwAAAAUAAAAAAAAAGEAGACQBAAAFAAAAAAAAAExABwADAAAABAACAAAAAAAAAAQAZQAAAAAAAAAFAAAAAAAAgExABwAGAAAABAAIAAAAAAAAAAYAmAAAAAUAAAAAAAAATUAEAAEAAAAAAAAABAAAAAAAAAAAAAQAPAAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAS0AHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAATUAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAACATUAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAEEAHAAMAAAAFAAAAAAAAABhABgAkAQAABQAAAAAAAIBPQAcAAwAAAAQAAgAAAAAAAAAEAHgAAAAAAAAABQAAAAAAAABQQAcABgAAAAQACAAAAAAAAAAGAJgAAAAFAAAAAAAAQFBABAABAAAAAAAAAAQAAAAAAAAAAAAEAEMAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgE5ABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAQFBABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgFBABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAABBABwADAAAABQAAAAAAAAAYQAYAJAEAAAUAAAAAAACAUUAHAAMAAAAEAAIAAAAAAAAABABvAAAAAAAAAAUAAAAAAADAUUAHAAYAAAAEAAgAAAAAAAAABgCYAAAABQAAAAAAAABSQAQAAQAAAAAAAAAEAAAAAAAAAAAABABKAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABRQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABSQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAEBSQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAQQAcAAwAAAAUAAAAAAAAAGEAGACQBAAAFAAAAAAAAQFNABwADAAAABAACAAAAAAAAAAQAYwAAAAAAAAAFAAAAAAAAgFNABwAGAAAABAAIAAAAAAAAAAYAmAAAAAUAAAAAAADAU0AEAAEAAAAAAAAABAAAAAAAAAAAAAQAUQAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAUAAAAAAADAUkAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAADAU0AHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAVEAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAEEAHAAMAAAAFAAAAAAAAABhABgAkAQAABQAAAAAAAABVQAcAAwAAAAQAAgAAAAAAAAAEADAAAAAAAAAABQAAAAAAAEBVQAcABgAAAAQACAAAAAAAAAAGAJgAAAAFAAAAAAAAgFVABAABAAAAAAAAAAQAAAAAAAAAAAAEAFgAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgFRABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgFVABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAwFVABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAABBABwADAAAABQAAAAAAAAAYQAYAJAEAAAUAAAAAAADAVkAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAUAAAAAAABAVkAHAAMAAAAEAAAAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAACAV0AHAAMAAAAEAAAAAAAAAAAABAABAAAAAAAAAAUAAAAAAAAAV0AHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAACAV0AEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAV0AHAAMAAAAEAAAAAAAAAAAABAACAAAAAAAAAAQAAAAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgCZAAAABQAAAAAAAIBYQAQAAAAAAAAAAAAEAAIAAAAAAAAABAAAAAAAAAAAAAcACQAAAAQACAAAAAAAAAAGAHcAAAAFAAAAAAAAgFhABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAwFhABAAAAAAAAAAAAAQAAgAAAAAAAAAEAAAAAAAAAAAABwAGAAAABAAIAAAAAAAAAAYAmgAAAAUAAAAAAAAAWEAEAAAAAAAAAAAABAACAAAAAAAAAAQAAAAAAAAAAAAEAAEAAAAAAAAAAAAAAAAAAAABAAcAJgAAAAcABAAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABAACAAAAAAAAAAQAAwAAAAAAAAAHAAwAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAwAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQADAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAFQAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAHgAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABiAAAAAAAAAAUAAAAAAAAAEEAHAAYAAAAEAAgAAAAAAAAABgB+AAAABQAAAAAAAAAAQAQAAQAAAAAAAAAEAAAAAAAAAAAABAAGAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAAQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAcQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAiQAcABgAAAAQAAgAAAAAAAAAEAF8AAAAAAAAABQAAAAAAAAAcQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAUQAcAAwAAAAUAAAAAAAAAGEAGABwBAAAFAAAAAAAAACRABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAACJABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAACBABwADAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABwADAAAABAACAAAAAAAAAAQAbwAAAAAAAAAFAAAAAAAAACpABwAGAAAABAAIAAAAAAAAAAYAfAAAAAUAAAAAAAAAJkAEAAEAAAAAAAAABAAAAAAAAAAAAAQADwAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAJkAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAMEAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAMkAHAAYAAAAEAAIAAAAAAAAABABfAAAAAAAAAAUAAAAAAAAAMEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAALEAHAAMAAAAFAAAAAAAAABhABgAbAQAABQAAAAAAAAAzQAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAyQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAxQAcAAwAAAAQAAAAAAAAAAAAEAAIAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAHgAAAAAAAAABQAAAAAAAAA2QAcABgAAAAQACAAAAAAAAAAGAHoAAAAFAAAAAAAAADRABAABAAAAAAAAAAQAAAAAAAAAAAAEABgAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADRABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADlABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADtABwAGAAAABAACAAAAAAAAAAQAXwAAAAAAAAAFAAAAAAAAADlABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADdABwADAAAABQAAAAAAAAAYQAYAGgEAAAUAAAAAAAAAPEAHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAO0AEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAOkAHAAMAAAAEAAAAAAAAAAAABAADAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABkAAAAAAAAAAUAAAAAAAAAP0AHAAYAAAAEAAgAAAAAAAAABgB4AAAABQAAAAAAAAA9QAQAAQAAAAAAAAAEAAAAAAAAAAAABAAhAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA9QAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABBQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABCQAcABgAAAAQAAgAAAAAAAAAEAF8AAAAAAAAABQAAAAAAAABBQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABAQAcAAwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABQAAAAAAAIBCQAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABCQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBBQAQAAQAAAAAAAAAAAAAAAAAAAAEABwApAAAABwACAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAwAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAIgAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABAAwAAAAAAAAAAUAAAAAAAAAEEAHAAwAAAAEAAIAAAAAAAAABABiAAAAAAAAAAUAAAAAAAAAFEAEAAIAAAAAAAAABABvAAAAAAAAAAUAAAAAAAAAGEAEAAIAAAAAAAAABAB4AAAAAAAAAAUAAAAAAAAAHEAEAAIAAAAAAAAABABkAAAAAAAAAAUAAAAAAAAAIEAHAAYAAAAEAAgAAAAAAAAABgB+AAAABQAAAAAAAAAAQAQAAQAAAAAAAAAEAAAAAAAAAAAABAAKAAAAAAAAAAcABgAAAAQACAAAAAAAAAAGAHwAAAAFAAAAAAAAAABABAABAAAAAAAAAAQAAAAAAAAAAAAEABAAAAAAAAAABwAGAAAABAAIAAAAAAAAAAYAegAAAAUAAAAAAAAAAEAEAAEAAAAAAAAABAAAAAAAAAAAAAQAFgAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgB4AAAABQAAAAAAAAAAQAQAAQAAAAAAAAAEAAAAAAAAAAAABAAcAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAAQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAmQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAqQAcABgAAAAQAAgAAAAAAAAAEAF8AAAAAAAAABQAAAAAAAAAmQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAiQAcAAwAAAAUAAAAAAAAAGEAGABwBAAAFAAAAAAAAACxABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAACpABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAChABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAABABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADFABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADNABwAGAAAABAACAAAAAAAAAAQAXwAAAAAAAAAFAAAAAAAAADFABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAC5ABwADAAAABQAAAAAAAAAYQAYAGwEAAAUAAAAAAAAANEAHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAM0AEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAMkAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAAEAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAN0AHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAOUAHAAYAAAAEAAIAAAAAAAAABABfAAAAAAAAAAUAAAAAAAAAN0AEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAANUAHAAMAAAAFAAAAAAAAABhABgAaAQAABQAAAAAAAAA6QAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA5QAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA4QAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAAQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA9QAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA/QAcABgAAAAQAAgAAAAAAAAAEAF8AAAAAAAAABQAAAAAAAAA9QAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA7QAcAAwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABQAAAAAAAABAQAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA/QAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA+QAcAAwAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAcABgAAAAQACAAAAAAAAAAGAHgAAAAFAAAAAAAAgEBABAABAAAAAAAAAAQAAAAAAAAAAAAEACQAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgEBABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgEJABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgENABwAGAAAABAACAAAAAAAAAAQAXwAAAAAAAAAFAAAAAAAAgEJABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgEFABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAFAAAAAAAAAERABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgENABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAENABAABAAAAAAAAAAAAAAAAAAAAAQAHACgAAAAHAAMAAAAEAAAAAAAAAAAABAABAAAAAAAAAAQAAgAAAAAAAAAHAAkAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAwAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQADwAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAHgAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABAAuAAAAAAAAAAUAAAAAAAAAEEAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAFEAHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAUAAAAAAAAAGEAHAA8AAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAFEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAHEAEAAgAAAAAAAAABgCCAAAABQAAAAAAAAAAQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAAQAQAAQAAAAAAAAAEAAAAAAAAAAAABAAJAAAAAAAAAAcAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAAQAcAAwAAAAUAAAAAAAAAGEAGACIBAAAFAAAAAAAAACRABwAGAAAABQAAAAAAAAAYQAYAIwEAAAUAAAAAAAAAJkAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAJkAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAKEAHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAUAAAAAAAAAKkAHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAKEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAIEAHAAMAAAAEAAAAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAMEAHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAUAAAAAAAAAMUAHAAkAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAMEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAMkAEAAIAAAAAAAAABAAuAAAAAAAAAAUAAAAAAAAAM0AHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAANEAHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAUAAAAAAAAANUAHAA8AAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAANEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAANkAEAAgAAAAAAAAABgCCAAAABQAAAAAAAAAsQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAsQAQAAQAAAAAAAAAEAAAAAAAAAAAABAAYAAAAAAAAAAcAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAsQAcAAwAAAAUAAAAAAAAAGEAGACIBAAAFAAAAAAAAADlABwAGAAAABQAAAAAAAAAYQAYAIwEAAAUAAAAAAAAAOkAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAOkAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAO0AHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAUAAAAAAAAAPEAHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAO0AEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAN0AHAAMAAAAEAAAAAAAAAAAABAACAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAP0AHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAUAAAAAAAAAQEAHAAwAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAP0AEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAACAQEAEAAgAAAAAAAAABgCCAAAABQAAAAAAAAA9QAQAAQAAAAAAAAAEAAAAAAAAAAAABAAjAAAAAAAAAAcAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA9QAcAAwAAAAUAAAAAAAAAGEAGACIBAAAFAAAAAAAAAEJABwAGAAAABQAAAAAAAAAYQAYAIwEAAAUAAAAAAACAQkAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAACAQkAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAQ0AHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAUAAAAAAACAQ0AHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAQ0AEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAQUAEAAEAAAAAAAAAAAAAAAAAAAABAAcAGgAAAAcAAgAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAMAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAsAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwAGAAAABAAIAAAAAAAAAAYAegAAAAUAAAAAAAAAAEAEAAEAAAAAAAAABAAAAAAAAAAAAAQABQAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAAEAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAGEAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAIEAHAAYAAAAEAAIAAAAAAAAABABfAAAAAAAAAAUAAAAAAAAAGEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAEEAHAAMAAAAFAAAAAAAAABhABgAaAQAABQAAAAAAAAAiQAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAgQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAcQAcAAwAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAFsAAAAAAAAABQAAAAAAAAAoQAcABgAAAAQACAAAAAAAAAAGAHsAAAAFAAAAAAAAACpABAABAAAAAAAAAAQAAAAAAAAAAAAEAA8AAAAAAAAABwADAAAABAACAAAAAAAAAAQAXQAAAAAAAAAFAAAAAAAAACRABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAACpABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADBABwAGAAAABAAIAAAAAAAAAAYAWAAAAAUAAAAAAAAAMkAEAAAAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAHAAYAAAAEAAIAAAAAAAAABAAsAAAAAAAAAAUAAAAAAAAAMEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAALEAHAAYAAAAEAAgAAAAAAAAABgB6AAAABQAAAAAAAAAzQAQAAQAAAAAAAAAEAAAAAAAAAAAABAAVAAAAAAAAAAcABgAAAAQACAAAAAAAAAAGAFgAAAAFAAAAAAAAADFABAAAAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADNABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADZABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADhABwAGAAAABAACAAAAAAAAAAQAXwAAAAAAAAAFAAAAAAAAADZABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADRABwADAAAABQAAAAAAAAAYQAYAGgEAAAUAAAAAAAAAOUAHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAOEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAN0AEAAEAAAAAAAAAAAAAAAAAAAABAAcAGgAAAAcAAgAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAMAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAsAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwAGAAAABAAIAAAAAAAAAAYAfAAAAAUAAAAAAAAAAEAEAAEAAAAAAAAABAAAAAAAAAAAAAQABQAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAAEAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAGEAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAIEAHAAYAAAAEAAIAAAAAAAAABABfAAAAAAAAAAUAAAAAAAAAGEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAEEAHAAMAAAAFAAAAAAAAABhABgAbAQAABQAAAAAAAAAiQAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAgQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAcQAcAAwAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAFsAAAAAAAAABQAAAAAAAAAoQAcABgAAAAQACAAAAAAAAAAGAH0AAAAFAAAAAAAAACpABAABAAAAAAAAAAQAAAAAAAAAAAAEAA8AAAAAAAAABwADAAAABAACAAAAAAAAAAQAXQAAAAAAAAAFAAAAAAAAACRABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAACpABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADBABwAGAAAABAAIAAAAAAAAAAYAWAAAAAUAAAAAAAAAMkAEAAAAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAHAAYAAAAEAAIAAAAAAAAABAAsAAAAAAAAAAUAAAAAAAAAMEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAALEAHAAYAAAAEAAgAAAAAAAAABgB8AAAABQAAAAAAAAAzQAQAAQAAAAAAAAAEAAAAAAAAAAAABAAVAAAAAAAAAAcABgAAAAQACAAAAAAAAAAGAFgAAAAFAAAAAAAAADFABAAAAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADNABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADZABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADhABwAGAAAABAACAAAAAAAAAAQAXwAAAAAAAAAFAAAAAAAAADZABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADRABwADAAAABQAAAAAAAAAYQAYAGwEAAAUAAAAAAAAAOUAHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAOEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAN0AEAAEAAAAAAAAAAAAAAAAAAAABAAcABwAAAAcAAgAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABwAGAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAMAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAUAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwADAAAABQAAAAAAAAAUQAQAACAAAAAAAAAFAAAAAAAAAABABwADAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABwADAAAABQAAAAAAAAAQQAQAACAAAAAAAAAFAAAAAAAAABhABwADAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAFAAAAAAAAABBABAABAAAAAAAAAAAAAAAAAAAAAQAHABgAAAAHAAQAAAAEAAAAAAAAAAAABAABAAAAAAAAAAQAAgAAAAAAAAAEAAMAAAAAAAAABwAMAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAMAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAA0AAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEABUAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEABcAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwADAAAABAACAAAAAAAAAAQAWwAAAAAAAAAFAAAAAAAAABBABwAGAAAABAAIAAAAAAAAAAYAkgAAAAUAAAAAAAAAFEAEAAEAAAAAAAAABAAAAAAAAAAAAAQABwAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABdAAAAAAAAAAUAAAAAAAAAAEAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAFEAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAIEAHAAYAAAAEAAgAAAAAAAAABgBYAAAABQAAAAAAAAAkQAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcABgAAAAQAAgAAAAAAAAAEACwAAAAAAAAABQAAAAAAAAAgQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAYQAcABgAAAAQACAAAAAAAAAAGAJEAAAAFAAAAAAAAACZABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwAGAAAABAAIAAAAAAAAAAYAWAAAAAUAAAAAAAAAIkAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAALEAHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAUAAAAAAAAALkAHAAwAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAALEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAMEAEAAIAAAAAAAAABABfAAAAAAAAAAUAAAAAAAAAMUAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAKEAHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAMkAHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAUAAAAAAAAAM0AHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAMkAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAALkAHAAMAAAAEAAAAAAAAAAAABAACAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAFAAAAAAAAABhABgAtAQAABQAAAAAAAAA0QAcAAwAAAAQAAAAAAAAAAAAEAAMAAAAAAAAABAAAAAAAAAAAAAcABgAAAAQACAAAAAAAAAAGAJUAAAAFAAAAAAAAADZABAAAAAAAAAAAAAQAAwAAAAAAAAAEAAAAAAAAAAAABAABAAAAAAAAAAAAAAAAAAAAAQAGANUAAAADAAQAAAAAAAAAAAADAAMABAAAAAAAAAAAAAEAAQAGANYAAAADAAQAAAAAAAAAAAADAAIAAgAAABoAAAAEAAEAAAAAAAAAAQABAAYA1wAAAAMABAAAAAAAAAAAAAMAAgACAAAAGgAAAAQAAQAAAAAAAAABAAEABgDYAAAAAwAEAAAAAAAAAAAAAwADAAQAAAAAAAAAAAABAAEABgDZAAAAAwAEAAAAAAAAAAAAAwACAAIAAAAaAAAABAABAAAAAAAAAAEAAQAGANoAAAADAAQAAAAAAAAAAAADAAIAAgAAABoAAAAEAAEAAAAAAAAAAQABAAYA2wAAAAMABAAAAAAAAAAAAAMAAwAEAAAAAAAAAAAAAQABAAYA3AAAAAMABAAAAAAAAAAAAAMAAgACAAAAGgAAAAQAAQAAAAAAAAABAAEABgDdAAAAAwAEAAAAAAAAAAAAAwADAAQAAAAAAAAAAAABAAEABgDeAAAAAwAEAAAAAAAAAAAAAwADAAQAAAAAAAAAAAABAAEABgDfAAAAAwAEAAAAAAAAAAAAAwACAAIAAAAaAAAABAABAAAAAAAAAAEAAQAGAOUAAAADAAQAAAAAAAAAAAADAAMABAAAAAAAAAAAAAEAAQAGAOYAAAADAAQAAAAAAAAAAAADAAMABAAAAAAAAAAAAAEAAQAGAO4AAAADAAQAAAAAAAAAAAADAAMABAAAAAAAAAAAAAEAAQAGAOYAAAADAAQAAAAAAAAAAAADAAMABAAAAAAAAAAAAAEAAQAGAO8AAAADAAQAAAAAAAAAAAADAAMABAAAAAAAAAAAAAEAAQAGAPAAAAADAAQAAAAAAAAAAAADAAIAAgAAABoAAAAEAAEAAAAAAAAAAQABAAYA/AAAAAMABAAAAAAAAAAAAAMAAgACAAAAGgAAAAQAAQAAAAAAAAABAAEABgD9AAAAAwAEAAAAAAAAAAAAAwACAAIAAAAaAAAABAABAAAAAAAAAAEAAQAGAP4AAAADAAQAAAAAAAAAAAADAAIAAgAAABoAAAAEAAEAAAAAAAAAAQABAAYA/wAAAAMABAAAAAAAAAAAAAMAAgACAAAAGgAAAAQAAQAAAAAAAAABAAEABgAAAQAAAwAEAAAAAAAAAAAAAwACAAIAAAAaAAAABAABAAAAAAAAAAEAAQAGAAEBAAADAAQAAAAAAAAAAAADAAMABAAAAAAAAAAAAAEAAQAGAAIBAAADAAQAAAAAAAAAAAADAAMABAAAAAAAAAAAAAEAAQAHALgAAAAHAAsAAAADAAYABgEAAAYABwEAAAYACAEAAAYACQEAAAYACgEAAAYACwEAAAYADAEAAAYADQEAAAYADgEAAAYADwEAAAcAHgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAWAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAlAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAA4AAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABABLAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABABeAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABABxAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABACEAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABACXAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABACmAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEACUAAAAAAAAABQAAAAAAAAAQQAcACQAAAAQACAAAAAAAAAAGABMBAAAFAAAAAAAAABRABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAABRABAABAAAAAAAAAAQAAAAAAAAAAAAEAAsAAAAAAAAABwAJAAAABAAIAAAAAAAAAAYAFAEAAAUAAAAAAAAAFEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAGEAEAAEAAAAAAAAABAAAAAAAAAAAAAQAEAAAAAAAAAAHAAkAAAAEAAgAAAAAAAAABgAVAQAABQAAAAAAAAAcQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAcQAQAAQAAAAAAAAAEAAAAAAAAAAAABAASAAAAAAAAAAcABgAAAAQAAgAAAAAAAAAEAC4AAAAAAAAABQAAAAAAAAAgQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAiQAcABgAAAAQACAAAAAAAAAAGABUBAAAFAAAAAAAAACJABAABAAAAAAAAAAQAAAAAAAAAAAAEABQAAAAAAAAABwADAAAABQAAAAAAAAAYQAYAMwEAAAUAAAAAAAAAAEAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAFEAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAKEAHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAUAAAAAAAAAKkAHAAkAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAKEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAALEAEAAIAAAAAAAAABAAkAAAAAAAAAAUAAAAAAAAAJEAHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAFEAHAA8AAAAEAAIAAAAAAAAABAAgAAAAAAAAAAUAAAAAAAAALkAEAAIAAAAAAAAABAArAAAAAAAAAAUAAAAAAAAALkAEAAIAAAAAAAAABAAtAAAAAAAAAAUAAAAAAAAALkAEAAIAAAAAAAAABAAwAAAAAAAAAAUAAAAAAAAALkAEAAIAAAAAAAAABAAjAAAAAAAAAAUAAAAAAAAALkAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAHEAHAAkAAAAFAAAAAAAAABBABAAIAAAAAAAAAAUAAAAAAAAAMkAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAMUAEAAIAAAAAAAAABAAqAAAAAAAAAAUAAAAAAAAAMUAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAIkAHAAkAAAAFAAAAAAAAABBABAAIAAAAAAAAAAUAAAAAAAAANEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAM0AEAAIAAAAAAAAABAAqAAAAAAAAAAUAAAAAAAAAM0AHAAMAAAAEAAAAAAAAAAAABAACAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABAAlAAAAAAAAAAUAAAAAAAAAN0AHAAkAAAAEAAgAAAAAAAAABgATAQAABQAAAAAAAAA4QAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA4QAQAAQAAAAAAAAAEAAAAAAAAAAAABAAcAAAAAAAAAAcACQAAAAQACAAAAAAAAAAGABQBAAAFAAAAAAAAADhABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADlABAABAAAAAAAAAAQAAAAAAAAAAAAEACEAAAAAAAAABwAJAAAABAAIAAAAAAAAAAYAFQEAAAUAAAAAAAAAOkAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAOkAEAAEAAAAAAAAABAAAAAAAAAAAAAQAIwAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABjAAAAAAAAAAUAAAAAAAAANUAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAOEAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAPUAHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAUAAAAAAAAAPkAHAAkAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAPUAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAP0AEAAIAAAAAAAAABAAkAAAAAAAAAAUAAAAAAAAAO0AHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAOEAHAA8AAAAEAAIAAAAAAAAABAAgAAAAAAAAAAUAAAAAAAAAQEAEAAIAAAAAAAAABAArAAAAAAAAAAUAAAAAAAAAQEAEAAIAAAAAAAAABAAtAAAAAAAAAAUAAAAAAAAAQEAEAAIAAAAAAAAABAAwAAAAAAAAAAUAAAAAAAAAQEAEAAIAAAAAAAAABAAjAAAAAAAAAAUAAAAAAAAAQEAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAOkAHAAkAAAAFAAAAAAAAABBABAAIAAAAAAAAAAUAAAAAAACAQUAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAQUAEAAIAAAAAAAAABAAqAAAAAAAAAAUAAAAAAAAAQUAHAAMAAAAEAAAAAAAAAAAABAADAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABAAlAAAAAAAAAAUAAAAAAAAAQ0AHAAkAAAAEAAgAAAAAAAAABgATAQAABQAAAAAAAIBDQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBDQAQAAQAAAAAAAAAEAAAAAAAAAAAABAAtAAAAAAAAAAcACQAAAAQACAAAAAAAAAAGABQBAAAFAAAAAAAAgENABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAERABAABAAAAAAAAAAQAAAAAAAAAAAAEADIAAAAAAAAABwAJAAAABAAIAAAAAAAAAAYAFQEAAAUAAAAAAACAREAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAACAREAEAAEAAAAAAAAABAAAAAAAAAAAAAQANAAAAAAAAAAHAAYAAAAEAAIAAAAAAAAABAAuAAAAAAAAAAUAAAAAAAAARUAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAACARUAHAAYAAAAEAAgAAAAAAAAABgAVAQAABQAAAAAAAIBFQAQAAQAAAAAAAAAEAAAAAAAAAAAABAA2AAAAAAAAAAcAAwAAAAUAAAAAAAAAGEAGADQBAAAFAAAAAAAAAEJABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgENABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAEdABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAFAAAAAAAAgEdABwAJAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAEdABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAEhABAACAAAAAAAAAAQAJAAAAAAAAAAFAAAAAAAAAEZABwAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgENABwAPAAAABAACAAAAAAAAAAQAIAAAAAAAAAAFAAAAAAAAgEhABAACAAAAAAAAAAQAKwAAAAAAAAAFAAAAAAAAgEhABAACAAAAAAAAAAQALQAAAAAAAAAFAAAAAAAAgEhABAACAAAAAAAAAAQAMAAAAAAAAAAFAAAAAAAAgEhABAACAAAAAAAAAAQAIwAAAAAAAAAFAAAAAAAAgEhABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgERABwAJAAAABQAAAAAAAAAQQAQACAAAAAAAAAAFAAAAAAAAAEpABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgElABAACAAAAAAAAAAQAKgAAAAAAAAAFAAAAAAAAgElABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgEVABwAJAAAABQAAAAAAAAAQQAQACAAAAAAAAAAFAAAAAAAAAEtABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgEpABAACAAAAAAAAAAQAKgAAAAAAAAAFAAAAAAAAgEpABwADAAAABAAAAAAAAAAAAAQABAAAAAAAAAAEAAAAAAAAAAAABwADAAAABAACAAAAAAAAAAQAJQAAAAAAAAAFAAAAAAAAgExABwAJAAAABAAIAAAAAAAAAAYAEwEAAAUAAAAAAAAATUAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAATUAEAAEAAAAAAAAABAAAAAAAAAAAAAQAQAAAAAAAAAAHAAkAAAAEAAgAAAAAAAAABgAUAQAABQAAAAAAAABNQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBNQAQAAQAAAAAAAAAEAAAAAAAAAAAABABFAAAAAAAAAAcACQAAAAQACAAAAAAAAAAGABUBAAAFAAAAAAAAAE5ABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAE5ABAABAAAAAAAAAAQAAAAAAAAAAAAEAEcAAAAAAAAABwAGAAAABAACAAAAAAAAAAQALgAAAAAAAAAFAAAAAAAAgE5ABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAE9ABwAGAAAABAAIAAAAAAAAAAYAFQEAAAUAAAAAAAAAT0AEAAEAAAAAAAAABAAAAAAAAAAAAAQASQAAAAAAAAAHAAMAAAAFAAAAAAAAABhABgA1AQAABQAAAAAAAIBLQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABNQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAEBQQAcAAwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABQAAAAAAAIBQQAcACQAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAEBQQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAMBQQAQAAgAAAAAAAAAEACQAAAAAAAAABQAAAAAAAIBPQAcAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABNQAcADwAAAAQAAgAAAAAAAAAEACAAAAAAAAAABQAAAAAAAABRQAQAAgAAAAAAAAAEACsAAAAAAAAABQAAAAAAAABRQAQAAgAAAAAAAAAEAC0AAAAAAAAABQAAAAAAAABRQAQAAgAAAAAAAAAEADAAAAAAAAAABQAAAAAAAABRQAQAAgAAAAAAAAAEACMAAAAAAAAABQAAAAAAAABRQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABOQAcACQAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABQAAAAAAAMBRQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBRQAQAAgAAAAAAAAAEACoAAAAAAAAABQAAAAAAAIBRQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABPQAcACQAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABQAAAAAAAEBSQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABSQAQAAgAAAAAAAAAEACoAAAAAAAAABQAAAAAAAABSQAcAAwAAAAQAAAAAAAAAAAAEAAUAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEACUAAAAAAAAABQAAAAAAAABTQAcACQAAAAQACAAAAAAAAAAGABMBAAAFAAAAAAAAQFNABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAQFNABAABAAAAAAAAAAQAAAAAAAAAAAAEAFMAAAAAAAAABwAJAAAABAAIAAAAAAAAAAYAFAEAAAUAAAAAAABAU0AEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAACAU0AEAAEAAAAAAAAABAAAAAAAAAAAAAQAWAAAAAAAAAAHAAkAAAAEAAgAAAAAAAAABgAVAQAABQAAAAAAAMBTQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAMBTQAQAAQAAAAAAAAAEAAAAAAAAAAAABABaAAAAAAAAAAcABgAAAAQAAgAAAAAAAAAEAC4AAAAAAAAABQAAAAAAAABUQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAEBUQAcABgAAAAQACAAAAAAAAAAGABUBAAAFAAAAAAAAQFRABAABAAAAAAAAAAQAAAAAAAAAAAAEAFwAAAAAAAAABwADAAAABQAAAAAAAAAYQAYANgEAAAUAAAAAAACAUkAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAABAU0AHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAVUAHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAUAAAAAAABAVUAHAAkAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAVUAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAACAVUAEAAIAAAAAAAAABAAkAAAAAAAAAAUAAAAAAACAVEAHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAABAU0AHAA8AAAAEAAIAAAAAAAAABAAgAAAAAAAAAAUAAAAAAADAVUAEAAIAAAAAAAAABAArAAAAAAAAAAUAAAAAAADAVUAEAAIAAAAAAAAABAAtAAAAAAAAAAUAAAAAAADAVUAEAAIAAAAAAAAABAAwAAAAAAAAAAUAAAAAAADAVUAEAAIAAAAAAAAABAAjAAAAAAAAAAUAAAAAAADAVUAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAADAU0AHAAkAAAAFAAAAAAAAABBABAAIAAAAAAAAAAUAAAAAAACAVkAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAABAVkAEAAIAAAAAAAAABAAqAAAAAAAAAAUAAAAAAABAVkAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAABAVEAHAAkAAAAFAAAAAAAAABBABAAIAAAAAAAAAAUAAAAAAAAAV0AEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAADAVkAEAAIAAAAAAAAABAAqAAAAAAAAAAUAAAAAAADAVkAHAAMAAAAEAAAAAAAAAAAABAAGAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABAAlAAAAAAAAAAUAAAAAAADAV0AHAAkAAAAEAAgAAAAAAAAABgATAQAABQAAAAAAAABYQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABYQAQAAQAAAAAAAAAEAAAAAAAAAAAABABmAAAAAAAAAAcACQAAAAQACAAAAAAAAAAGABQBAAAFAAAAAAAAAFhABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAQFhABAABAAAAAAAAAAQAAAAAAAAAAAAEAGsAAAAAAAAABwAJAAAABAAIAAAAAAAAAAYAFQEAAAUAAAAAAACAWEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAACAWEAEAAEAAAAAAAAABAAAAAAAAAAAAAQAbQAAAAAAAAAHAAYAAAAEAAIAAAAAAAAABAAuAAAAAAAAAAUAAAAAAADAWEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAWUAHAAYAAAAEAAgAAAAAAAAABgAVAQAABQAAAAAAAABZQAQAAQAAAAAAAAAEAAAAAAAAAAAABABvAAAAAAAAAAcAAwAAAAUAAAAAAAAAGEAGADcBAAAFAAAAAAAAQFdABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAFhABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAwFlABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAFAAAAAAAAAFpABwAJAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAwFlABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAQFpABAACAAAAAAAAAAQAJAAAAAAAAAAFAAAAAAAAQFlABwAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAFhABwAPAAAABAACAAAAAAAAAAQAIAAAAAAAAAAFAAAAAAAAgFpABAACAAAAAAAAAAQAKwAAAAAAAAAFAAAAAAAAgFpABAACAAAAAAAAAAQALQAAAAAAAAAFAAAAAAAAgFpABAACAAAAAAAAAAQAMAAAAAAAAAAFAAAAAAAAgFpABAACAAAAAAAAAAQAIwAAAAAAAAAFAAAAAAAAgFpABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgFhABwAJAAAABQAAAAAAAAAQQAQACAAAAAAAAAAFAAAAAAAAQFtABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAFtABAACAAAAAAAAAAQAKgAAAAAAAAAFAAAAAAAAAFtABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAFlABwAJAAAABQAAAAAAAAAQQAQACAAAAAAAAAAFAAAAAAAAwFtABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgFtABAACAAAAAAAAAAQAKgAAAAAAAAAFAAAAAAAAgFtABwADAAAABAAAAAAAAAAAAAQABwAAAAAAAAAEAAAAAAAAAAAABwADAAAABAACAAAAAAAAAAQAJQAAAAAAAAAFAAAAAAAAgFxABwAJAAAABAAIAAAAAAAAAAYAEwEAAAUAAAAAAADAXEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAADAXEAEAAEAAAAAAAAABAAAAAAAAAAAAAQAeQAAAAAAAAAHAAkAAAAEAAgAAAAAAAAABgAUAQAABQAAAAAAAMBcQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABdQAQAAQAAAAAAAAAEAAAAAAAAAAAABAB+AAAAAAAAAAcACQAAAAQACAAAAAAAAAAGABUBAAAFAAAAAAAAQF1ABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAQF1ABAABAAAAAAAAAAQAAAAAAAAAAAAEAIAAAAAAAAAABwAGAAAABAACAAAAAAAAAAQALgAAAAAAAAAFAAAAAAAAgF1ABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAwF1ABwAGAAAABAAIAAAAAAAAAAYAFQEAAAUAAAAAAADAXUAEAAEAAAAAAAAABAAAAAAAAAAAAAQAggAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABABvAAAAAAAAAAUAAAAAAAAAXEAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAADAXEAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAACAXkAHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAUAAAAAAADAXkAHAAkAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAACAXkAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAX0AEAAIAAAAAAAAABAAkAAAAAAAAAAUAAAAAAAAAXkAHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAADAXEAHAA8AAAAEAAIAAAAAAAAABAAgAAAAAAAAAAUAAAAAAABAX0AEAAIAAAAAAAAABAArAAAAAAAAAAUAAAAAAABAX0AEAAIAAAAAAAAABAAtAAAAAAAAAAUAAAAAAABAX0AEAAIAAAAAAAAABAAwAAAAAAAAAAUAAAAAAABAX0AEAAIAAAAAAAAABAAjAAAAAAAAAAUAAAAAAABAX0AHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAABAXUAHAAkAAAAFAAAAAAAAABBABAAIAAAAAAAAAAUAAAAAAAAAYEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAADAX0AEAAIAAAAAAAAABAAqAAAAAAAAAAUAAAAAAADAX0AHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAADAXUAHAAkAAAAFAAAAAAAAABBABAAIAAAAAAAAAAUAAAAAAABAYEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAgYEAEAAIAAAAAAAAABAAqAAAAAAAAAAUAAAAAAAAgYEAHAAMAAAAEAAAAAAAAAAAABAAIAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAEAAIAAAAAAAAABAAlAAAAAAAAAAUAAAAAAACgYEAHAAkAAAAEAAgAAAAAAAAABgATAQAABQAAAAAAAMBgQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAMBgQAQAAQAAAAAAAAAEAAAAAAAAAAAABACMAAAAAAAAAAcACQAAAAQACAAAAAAAAAAGABQBAAAFAAAAAAAAwGBABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAA4GBABAABAAAAAAAAAAQAAAAAAAAAAAAEAJEAAAAAAAAABwAJAAAABAAIAAAAAAAAAAYAFQEAAAUAAAAAAAAAYUAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAYUAEAAEAAAAAAAAABAAAAAAAAAAAAAQAkwAAAAAAAAAHAAYAAAAEAAIAAAAAAAAABAAuAAAAAAAAAAUAAAAAAAAgYUAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAABAYUAHAAYAAAAEAAgAAAAAAAAABgAVAQAABQAAAAAAAEBhQAQAAQAAAAAAAAAEAAAAAAAAAAAABACVAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAHMAAAAAAAAABQAAAAAAAGBgQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAMBgQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAKBhQAcAAwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABQAAAAAAAMBhQAcACQAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAKBhQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAOBhQAQAAgAAAAAAAAAEACQAAAAAAAAABQAAAAAAAGBhQAcAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAMBgQAcADwAAAAQAAgAAAAAAAAAEACAAAAAAAAAABQAAAAAAAABiQAQAAgAAAAAAAAAEACsAAAAAAAAABQAAAAAAAABiQAQAAgAAAAAAAAAEAC0AAAAAAAAABQAAAAAAAABiQAQAAgAAAAAAAAAEADAAAAAAAAAABQAAAAAAAABiQAQAAgAAAAAAAAAEACMAAAAAAAAABQAAAAAAAABiQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABhQAcACQAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABQAAAAAAAGBiQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAEBiQAQAAgAAAAAAAAAEACoAAAAAAAAABQAAAAAAAEBiQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAEBhQAcACQAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABQAAAAAAAKBiQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBiQAQAAgAAAAAAAAAEACoAAAAAAAAABQAAAAAAAIBiQAcAAwAAAAQAAAAAAAAAAAAEAAkAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEACUAAAAAAAAABQAAAAAAAABjQAcACQAAAAQACAAAAAAAAAAGABMBAAAFAAAAAAAAIGNABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAIGNABAABAAAAAAAAAAQAAAAAAAAAAAAEAJ0AAAAAAAAABwAJAAAABAAIAAAAAAAAAAYAFAEAAAUAAAAAAAAgY0AEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAABAY0AEAAEAAAAAAAAABAAAAAAAAAAAAAQAogAAAAAAAAAHAAkAAAAEAAgAAAAAAAAABgAVAQAABQAAAAAAAGBjQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAGBjQAQAAQAAAAAAAAAEAAAAAAAAAAAABACkAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAHUAAAAAAAAABQAAAAAAAMBiQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAACBjQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAMBjQAcAAwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABQAAAAAAAOBjQAcACQAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAMBjQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABkQAQAAgAAAAAAAAAEACQAAAAAAAAABQAAAAAAAIBjQAcAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAACBjQAcADwAAAAQAAgAAAAAAAAAEACAAAAAAAAAABQAAAAAAACBkQAQAAgAAAAAAAAAEACsAAAAAAAAABQAAAAAAACBkQAQAAgAAAAAAAAAEAC0AAAAAAAAABQAAAAAAACBkQAQAAgAAAAAAAAAEADAAAAAAAAAABQAAAAAAACBkQAQAAgAAAAAAAAAEACMAAAAAAAAABQAAAAAAACBkQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAGBjQAcACQAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABQAAAAAAAIBkQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAGBkQAQAAgAAAAAAAAAEACoAAAAAAAAABQAAAAAAAGBkQAcAAwAAAAQAAAAAAAAAAAAEAAoAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEACUAAAAAAAAABQAAAAAAAOBkQAcACQAAAAQACAAAAAAAAAAGABMBAAAFAAAAAAAAAGVABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAGVABAABAAAAAAAAAAQAAAAAAAAAAAAEAK4AAAAAAAAABwAJAAAABAAIAAAAAAAAAAYAFAEAAAUAAAAAAAAAZUAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAgZUAEAAEAAAAAAAAABAAAAAAAAAAAAAQAswAAAAAAAAAHAAkAAAAEAAgAAAAAAAAABgAVAQAABQAAAAAAAEBlQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAEBlQAQAAQAAAAAAAAAEAAAAAAAAAAAABAC1AAAAAAAAAAcABgAAAAQAAgAAAAAAAAAEAC4AAAAAAAAABQAAAAAAAGBlQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBlQAcABgAAAAQACAAAAAAAAAAGABUBAAAFAAAAAAAAgGVABAABAAAAAAAAAAQAAAAAAAAAAAAEALcAAAAAAAAABwADAAAABQAAAAAAAAAYQAYAOAEAAAUAAAAAAACgZEAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAZUAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAADgZUAHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAUAAAAAAAAAZkAHAAkAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAADgZUAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAgZkAEAAIAAAAAAAAABAAkAAAAAAAAAAUAAAAAAACgZUAHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAZUAHAA8AAAAEAAIAAAAAAAAABAAgAAAAAAAAAAUAAAAAAABAZkAEAAIAAAAAAAAABAArAAAAAAAAAAUAAAAAAABAZkAEAAIAAAAAAAAABAAtAAAAAAAAAAUAAAAAAABAZkAEAAIAAAAAAAAABAAwAAAAAAAAAAUAAAAAAABAZkAEAAIAAAAAAAAABAAjAAAAAAAAAAUAAAAAAABAZkAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAABAZUAHAAkAAAAFAAAAAAAAABBABAAIAAAAAAAAAAUAAAAAAACgZkAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAACAZkAEAAIAAAAAAAAABAAqAAAAAAAAAAUAAAAAAACAZkAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAACAZUAHAAkAAAAFAAAAAAAAABBABAAIAAAAAAAAAAUAAAAAAADgZkAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAADAZkAEAAIAAAAAAAAABAAqAAAAAAAAAAUAAAAAAADAZkAEAAEAAAAAAAAAAAAAAAAAAAABAAcACwAAAAcAAgAAAAMABgARAQAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAMAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABwADAAAABAACAAAAAAAAAAQAJQAAAAAAAAAFAAAAAAAAABBABwAJAAAABAAIAAAAAAAAAAYAFAEAAAUAAAAAAAAAEEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAFEAEAAEAAAAAAAAABAAAAAAAAAAAAAQACAAAAAAAAAAHAAkAAAAEAAgAAAAAAAAABgAVAQAABQAAAAAAAAAYQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAYQAQAAQAAAAAAAAAEAAAAAAAAAAAABAAKAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEACUAAAAAAAAABQAAAAAAAAAAQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAQQAcADwAAAAQAAgAAAAAAAAAEACAAAAAAAAAABQAAAAAAAAAcQAQAAgAAAAAAAAAEACsAAAAAAAAABQAAAAAAAAAcQAQAAgAAAAAAAAAEAC0AAAAAAAAABQAAAAAAAAAcQAQAAgAAAAAAAAAEADAAAAAAAAAABQAAAAAAAAAcQAQAAgAAAAAAAAAEACMAAAAAAAAABQAAAAAAAAAcQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAYQAcACQAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABQAAAAAAAAAkQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAiQAQAAgAAAAAAAAAEACoAAAAAAAAABQAAAAAAAAAiQAQAAQAAAAAAAAAAAAAAAAAAAAEABwDJAAAABwACAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAHAAYAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAAwAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAQAvQAAAAAAAAAHAAMAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAYAAAAEAAgAAAAAAAAABgAFAQAABQAAAAAAAAAAQAQAAQAAAAAAAAAEAAAAAAAAAAAABAAFAAAAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAAQAcAPAAAAAQACAAAAAAAAAAGAAYBAAAFAAAAAAAAABBABAAIAAAAAAAAAAYABwEAAAUAAAAAAAAAEEAEAAgAAAAAAAAABgAIAQAABQAAAAAAAAAQQAQACAAAAAAAAAAGAAkBAAAFAAAAAAAAABBABAAIAAAAAAAAAAYACgEAAAUAAAAAAAAAEEAEAAgAAAAAAAAABgALAQAABQAAAAAAAAAQQAQACAAAAAAAAAAGAAwBAAAFAAAAAAAAABBABAAIAAAAAAAAAAYADQEAAAUAAAAAAAAAEEAEAAgAAAAAAAAABgAOAQAABQAAAAAAAAAQQAQACAAAAAAAAAAGAA8BAAAFAAAAAAAAABBABAABAAAAAAAAAAQAAAAAAAAAAAAEAAcAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEABoAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEACkAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEADwAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAE8AAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAGIAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAHUAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAIgAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAJsAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAKoAAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAABBABwADAAAABAACAAAAAAAAAAQAJQAAAAAAAAAFAAAAAAAAACBABwAJAAAABAAIAAAAAAAAAAYAEwEAAAUAAAAAAAAAIkAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAIkAEAAEAAAAAAAAABAAAAAAAAAAAAAQADwAAAAAAAAAHAAkAAAAEAAgAAAAAAAAABgAUAQAABQAAAAAAAAAiQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAkQAQAAQAAAAAAAAAEAAAAAAAAAAAABAAUAAAAAAAAAAcACQAAAAQACAAAAAAAAAAGABUBAAAFAAAAAAAAACZABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAACZABAABAAAAAAAAAAQAAAAAAAAAAAAEABYAAAAAAAAABwAGAAAABAACAAAAAAAAAAQALgAAAAAAAAAFAAAAAAAAAChABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAACpABwAGAAAABAAIAAAAAAAAAAYAFQEAAAUAAAAAAAAAKkAEAAEAAAAAAAAABAAAAAAAAAAAAAQAGAAAAAAAAAAHAAMAAAAFAAAAAAAAABhABgAzAQAABQAAAAAAAAAYQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAiQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAwQAcAAwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABQAAAAAAAAAxQAcACQAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAwQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAyQAQAAgAAAAAAAAAEACQAAAAAAAAABQAAAAAAAAAsQAcAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAiQAcADwAAAAQAAgAAAAAAAAAEACAAAAAAAAAABQAAAAAAAAAzQAQAAgAAAAAAAAAEACsAAAAAAAAABQAAAAAAAAAzQAQAAgAAAAAAAAAEAC0AAAAAAAAABQAAAAAAAAAzQAQAAgAAAAAAAAAEADAAAAAAAAAABQAAAAAAAAAzQAQAAgAAAAAAAAAEACMAAAAAAAAABQAAAAAAAAAzQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAmQAcACQAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABQAAAAAAAAA2QAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA1QAQAAgAAAAAAAAAEACoAAAAAAAAABQAAAAAAAAA1QAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAqQAcACQAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABQAAAAAAAAA4QAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA3QAQAAgAAAAAAAAAEACoAAAAAAAAABQAAAAAAAAA3QAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAQQAcAAwAAAAQAAgAAAAAAAAAEACUAAAAAAAAABQAAAAAAAAA7QAcACQAAAAQACAAAAAAAAAAGABMBAAAFAAAAAAAAADxABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAADxABAABAAAAAAAAAAQAAAAAAAAAAAAEACAAAAAAAAAABwAJAAAABAAIAAAAAAAAAAYAFAEAAAUAAAAAAAAAPEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAPUAEAAEAAAAAAAAABAAAAAAAAAAAAAQAJQAAAAAAAAAHAAkAAAAEAAgAAAAAAAAABgAVAQAABQAAAAAAAAA+QAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA+QAQAAQAAAAAAAAAEAAAAAAAAAAAABAAnAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAGMAAAAAAAAABQAAAAAAAAA5QAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA8QAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBAQAcAAwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABQAAAAAAAABBQAcACQAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBAQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBBQAQAAgAAAAAAAAAEACQAAAAAAAAABQAAAAAAAAA/QAcAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA8QAcADwAAAAQAAgAAAAAAAAAEACAAAAAAAAAABQAAAAAAAABCQAQAAgAAAAAAAAAEACsAAAAAAAAABQAAAAAAAABCQAQAAgAAAAAAAAAEAC0AAAAAAAAABQAAAAAAAABCQAQAAgAAAAAAAAAEADAAAAAAAAAABQAAAAAAAABCQAQAAgAAAAAAAAAEACMAAAAAAAAABQAAAAAAAABCQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAA+QAcACQAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABQAAAAAAAIBDQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABDQAQAAgAAAAAAAAAEACoAAAAAAAAABQAAAAAAAABDQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAQQAcAAwAAAAQAAgAAAAAAAAAEACUAAAAAAAAABQAAAAAAAABFQAcACQAAAAQACAAAAAAAAAAGABMBAAAFAAAAAAAAgEVABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgEVABAABAAAAAAAAAAQAAAAAAAAAAAAEADEAAAAAAAAABwAJAAAABAAIAAAAAAAAAAYAFAEAAAUAAAAAAACARUAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAARkAEAAEAAAAAAAAABAAAAAAAAAAAAAQANgAAAAAAAAAHAAkAAAAEAAgAAAAAAAAABgAVAQAABQAAAAAAAIBGQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBGQAQAAQAAAAAAAAAEAAAAAAAAAAAABAA4AAAAAAAAAAcABgAAAAQAAgAAAAAAAAAEAC4AAAAAAAAABQAAAAAAAABHQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBHQAcABgAAAAQACAAAAAAAAAAGABUBAAAFAAAAAAAAgEdABAABAAAAAAAAAAQAAAAAAAAAAAAEADoAAAAAAAAABwADAAAABQAAAAAAAAAYQAYANAEAAAUAAAAAAAAAREAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAACARUAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAASUAHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAUAAAAAAACASUAHAAkAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAASUAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAASkAEAAIAAAAAAAAABAAkAAAAAAAAAAUAAAAAAAAASEAHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAACARUAHAA8AAAAEAAIAAAAAAAAABAAgAAAAAAAAAAUAAAAAAACASkAEAAIAAAAAAAAABAArAAAAAAAAAAUAAAAAAACASkAEAAIAAAAAAAAABAAtAAAAAAAAAAUAAAAAAACASkAEAAIAAAAAAAAABAAwAAAAAAAAAAUAAAAAAACASkAEAAIAAAAAAAAABAAjAAAAAAAAAAUAAAAAAACASkAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAACARkAHAAkAAAAFAAAAAAAAABBABAAIAAAAAAAAAAUAAAAAAAAATEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAACAS0AEAAIAAAAAAAAABAAqAAAAAAAAAAUAAAAAAACAS0AHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAACAR0AHAAkAAAAFAAAAAAAAABBABAAIAAAAAAAAAAUAAAAAAAAATUAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAACATEAEAAIAAAAAAAAABAAqAAAAAAAAAAUAAAAAAACATEAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAEEAHAAMAAAAEAAIAAAAAAAAABAAlAAAAAAAAAAUAAAAAAACATkAHAAkAAAAEAAgAAAAAAAAABgATAQAABQAAAAAAAABPQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABPQAQAAQAAAAAAAAAEAAAAAAAAAAAABABEAAAAAAAAAAcACQAAAAQACAAAAAAAAAAGABQBAAAFAAAAAAAAAE9ABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgE9ABAABAAAAAAAAAAQAAAAAAAAAAAAEAEkAAAAAAAAABwAJAAAABAAIAAAAAAAAAAYAFQEAAAUAAAAAAAAAUEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAUEAEAAEAAAAAAAAABAAAAAAAAAAAAAQASwAAAAAAAAAHAAYAAAAEAAIAAAAAAAAABAAuAAAAAAAAAAUAAAAAAABAUEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAACAUEAHAAYAAAAEAAgAAAAAAAAABgAVAQAABQAAAAAAAIBQQAQAAQAAAAAAAAAEAAAAAAAAAAAABABNAAAAAAAAAAcAAwAAAAUAAAAAAAAAGEAGADUBAAAFAAAAAAAAgE1ABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAE9ABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAQFFABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAFAAAAAAAAgFFABwAJAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAQFFABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAwFFABAACAAAAAAAAAAQAJAAAAAAAAAAFAAAAAAAAwFBABwAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAE9ABwAPAAAABAACAAAAAAAAAAQAIAAAAAAAAAAFAAAAAAAAAFJABAACAAAAAAAAAAQAKwAAAAAAAAAFAAAAAAAAAFJABAACAAAAAAAAAAQALQAAAAAAAAAFAAAAAAAAAFJABAACAAAAAAAAAAQAMAAAAAAAAAAFAAAAAAAAAFJABAACAAAAAAAAAAQAIwAAAAAAAAAFAAAAAAAAAFJABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAFBABwAJAAAABQAAAAAAAAAQQAQACAAAAAAAAAAFAAAAAAAAwFJABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgFJABAACAAAAAAAAAAQAKgAAAAAAAAAFAAAAAAAAgFJABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgFBABwAJAAAABQAAAAAAAAAQQAQACAAAAAAAAAAFAAAAAAAAQFNABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAFNABAACAAAAAAAAAAQAKgAAAAAAAAAFAAAAAAAAAFNABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAABBABwADAAAABAACAAAAAAAAAAQAJQAAAAAAAAAFAAAAAAAAAFRABwAJAAAABAAIAAAAAAAAAAYAEwEAAAUAAAAAAABAVEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAABAVEAEAAEAAAAAAAAABAAAAAAAAAAAAAQAVwAAAAAAAAAHAAkAAAAEAAgAAAAAAAAABgAUAQAABQAAAAAAAEBUQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBUQAQAAQAAAAAAAAAEAAAAAAAAAAAABABcAAAAAAAAAAcACQAAAAQACAAAAAAAAAAGABUBAAAFAAAAAAAAwFRABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAwFRABAABAAAAAAAAAAQAAAAAAAAAAAAEAF4AAAAAAAAABwAGAAAABAACAAAAAAAAAAQALgAAAAAAAAAFAAAAAAAAAFVABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAQFVABwAGAAAABAAIAAAAAAAAAAYAFQEAAAUAAAAAAABAVUAEAAEAAAAAAAAABAAAAAAAAAAAAAQAYAAAAAAAAAAHAAMAAAAFAAAAAAAAABhABgA2AQAABQAAAAAAAIBTQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAEBUQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABWQAcAAwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABQAAAAAAAEBWQAcACQAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABWQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBWQAQAAgAAAAAAAAAEACQAAAAAAAAABQAAAAAAAIBVQAcAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAEBUQAcADwAAAAQAAgAAAAAAAAAEACAAAAAAAAAABQAAAAAAAMBWQAQAAgAAAAAAAAAEACsAAAAAAAAABQAAAAAAAMBWQAQAAgAAAAAAAAAEAC0AAAAAAAAABQAAAAAAAMBWQAQAAgAAAAAAAAAEADAAAAAAAAAABQAAAAAAAMBWQAQAAgAAAAAAAAAEACMAAAAAAAAABQAAAAAAAMBWQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAMBUQAcACQAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABQAAAAAAAIBXQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAEBXQAQAAgAAAAAAAAAEACoAAAAAAAAABQAAAAAAAEBXQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAEBVQAcACQAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABQAAAAAAAABYQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAMBXQAQAAgAAAAAAAAAEACoAAAAAAAAABQAAAAAAAMBXQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAQQAcAAwAAAAQAAgAAAAAAAAAEACUAAAAAAAAABQAAAAAAAMBYQAcACQAAAAQACAAAAAAAAAAGABMBAAAFAAAAAAAAAFlABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAFlABAABAAAAAAAAAAQAAAAAAAAAAAAEAGoAAAAAAAAABwAJAAAABAAIAAAAAAAAAAYAFAEAAAUAAAAAAAAAWUAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAABAWUAEAAEAAAAAAAAABAAAAAAAAAAAAAQAbwAAAAAAAAAHAAkAAAAEAAgAAAAAAAAABgAVAQAABQAAAAAAAIBZQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBZQAQAAQAAAAAAAAAEAAAAAAAAAAAABABxAAAAAAAAAAcABgAAAAQAAgAAAAAAAAAEAC4AAAAAAAAABQAAAAAAAMBZQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABaQAcABgAAAAQACAAAAAAAAAAGABUBAAAFAAAAAAAAAFpABAABAAAAAAAAAAQAAAAAAAAAAAAEAHMAAAAAAAAABwADAAAABQAAAAAAAAAYQAYANwEAAAUAAAAAAABAWEAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAWUAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAADAWkAHAAMAAAAFAAAAAAAAABBABAAIAAAAAAAAAAUAAAAAAAAAW0AHAAkAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAADAWkAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAABAW0AEAAIAAAAAAAAABAAkAAAAAAAAAAUAAAAAAABAWkAHAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAWUAHAA8AAAAEAAIAAAAAAAAABAAgAAAAAAAAAAUAAAAAAACAW0AEAAIAAAAAAAAABAArAAAAAAAAAAUAAAAAAACAW0AEAAIAAAAAAAAABAAtAAAAAAAAAAUAAAAAAACAW0AEAAIAAAAAAAAABAAwAAAAAAAAAAUAAAAAAACAW0AEAAIAAAAAAAAABAAjAAAAAAAAAAUAAAAAAACAW0AHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAACAWUAHAAkAAAAFAAAAAAAAABBABAAIAAAAAAAAAAUAAAAAAABAXEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAXEAEAAIAAAAAAAAABAAqAAAAAAAAAAUAAAAAAAAAXEAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAWkAHAAkAAAAFAAAAAAAAABBABAAIAAAAAAAAAAUAAAAAAADAXEAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAACAXEAEAAIAAAAAAAAABAAqAAAAAAAAAAUAAAAAAACAXEAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAAAAEEAHAAMAAAAEAAIAAAAAAAAABAAlAAAAAAAAAAUAAAAAAACAXUAHAAkAAAAEAAgAAAAAAAAABgATAQAABQAAAAAAAMBdQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAMBdQAQAAQAAAAAAAAAEAAAAAAAAAAAABAB9AAAAAAAAAAcACQAAAAQACAAAAAAAAAAGABQBAAAFAAAAAAAAwF1ABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAF5ABAABAAAAAAAAAAQAAAAAAAAAAAAEAIIAAAAAAAAABwAJAAAABAAIAAAAAAAAAAYAFQEAAAUAAAAAAABAXkAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAABAXkAEAAEAAAAAAAAABAAAAAAAAAAAAAQAhAAAAAAAAAAHAAYAAAAEAAIAAAAAAAAABAAuAAAAAAAAAAUAAAAAAACAXkAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAADAXkAHAAYAAAAEAAgAAAAAAAAABgAVAQAABQAAAAAAAMBeQAQAAQAAAAAAAAAEAAAAAAAAAAAABACGAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEAG8AAAAAAAAABQAAAAAAAABdQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAMBdQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBfQAcAAwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABQAAAAAAAMBfQAcACQAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBfQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABgQAQAAgAAAAAAAAAEACQAAAAAAAAABQAAAAAAAABfQAcAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAMBdQAcADwAAAAQAAgAAAAAAAAAEACAAAAAAAAAABQAAAAAAACBgQAQAAgAAAAAAAAAEACsAAAAAAAAABQAAAAAAACBgQAQAAgAAAAAAAAAEAC0AAAAAAAAABQAAAAAAACBgQAQAAgAAAAAAAAAEADAAAAAAAAAABQAAAAAAACBgQAQAAgAAAAAAAAAEACMAAAAAAAAABQAAAAAAACBgQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAEBeQAcACQAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABQAAAAAAAIBgQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAGBgQAQAAgAAAAAAAAAEACoAAAAAAAAABQAAAAAAAGBgQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAMBeQAcACQAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABQAAAAAAAMBgQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAKBgQAQAAgAAAAAAAAAEACoAAAAAAAAABQAAAAAAAKBgQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAQQAcAAwAAAAQAAgAAAAAAAAAEACUAAAAAAAAABQAAAAAAACBhQAcACQAAAAQACAAAAAAAAAAGABMBAAAFAAAAAAAAQGFABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAQGFABAABAAAAAAAAAAQAAAAAAAAAAAAEAJAAAAAAAAAABwAJAAAABAAIAAAAAAAAAAYAFAEAAAUAAAAAAABAYUAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAABgYUAEAAEAAAAAAAAABAAAAAAAAAAAAAQAlQAAAAAAAAAHAAkAAAAEAAgAAAAAAAAABgAVAQAABQAAAAAAAIBhQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBhQAQAAQAAAAAAAAAEAAAAAAAAAAAABACXAAAAAAAAAAcABgAAAAQAAgAAAAAAAAAEAC4AAAAAAAAABQAAAAAAAKBhQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAMBhQAcABgAAAAQACAAAAAAAAAAGABUBAAAFAAAAAAAAwGFABAABAAAAAAAAAAQAAAAAAAAAAAAEAJkAAAAAAAAABwADAAAABAACAAAAAAAAAAQAcwAAAAAAAAAFAAAAAAAA4GBABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAQGFABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAIGJABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAFAAAAAAAAQGJABwAJAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAIGJABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAYGJABAACAAAAAAAAAAQAJAAAAAAAAAAFAAAAAAAA4GFABwAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAQGFABwAPAAAABAACAAAAAAAAAAQAIAAAAAAAAAAFAAAAAAAAgGJABAACAAAAAAAAAAQAKwAAAAAAAAAFAAAAAAAAgGJABAACAAAAAAAAAAQALQAAAAAAAAAFAAAAAAAAgGJABAACAAAAAAAAAAQAMAAAAAAAAAAFAAAAAAAAgGJABAACAAAAAAAAAAQAIwAAAAAAAAAFAAAAAAAAgGJABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgGFABwAJAAAABQAAAAAAAAAQQAQACAAAAAAAAAAFAAAAAAAA4GJABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAwGJABAACAAAAAAAAAAQAKgAAAAAAAAAFAAAAAAAAwGJABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAwGFABwAJAAAABQAAAAAAAAAQQAQACAAAAAAAAAAFAAAAAAAAIGNABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAGNABAACAAAAAAAAAAQAKgAAAAAAAAAFAAAAAAAAAGNABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAABBABwADAAAABAACAAAAAAAAAAQAJQAAAAAAAAAFAAAAAAAAgGNABwAJAAAABAAIAAAAAAAAAAYAEwEAAAUAAAAAAACgY0AEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAACgY0AEAAEAAAAAAAAABAAAAAAAAAAAAAQAoQAAAAAAAAAHAAkAAAAEAAgAAAAAAAAABgAUAQAABQAAAAAAAKBjQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAMBjQAQAAQAAAAAAAAAEAAAAAAAAAAAABACmAAAAAAAAAAcACQAAAAQACAAAAAAAAAAGABUBAAAFAAAAAAAA4GNABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAA4GNABAABAAAAAAAAAAQAAAAAAAAAAAAEAKgAAAAAAAAABwADAAAABAACAAAAAAAAAAQAdQAAAAAAAAAFAAAAAAAAQGNABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAoGNABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAQGRABwADAAAABQAAAAAAAAAQQAQACAAAAAAAAAAFAAAAAAAAYGRABwAJAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAQGRABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgGRABAACAAAAAAAAAAQAJAAAAAAAAAAFAAAAAAAAAGRABwAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAoGNABwAPAAAABAACAAAAAAAAAAQAIAAAAAAAAAAFAAAAAAAAoGRABAACAAAAAAAAAAQAKwAAAAAAAAAFAAAAAAAAoGRABAACAAAAAAAAAAQALQAAAAAAAAAFAAAAAAAAoGRABAACAAAAAAAAAAQAMAAAAAAAAAAFAAAAAAAAoGRABAACAAAAAAAAAAQAIwAAAAAAAAAFAAAAAAAAoGRABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAA4GNABwAJAAAABQAAAAAAAAAQQAQACAAAAAAAAAAFAAAAAAAAAGVABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAA4GRABAACAAAAAAAAAAQAKgAAAAAAAAAFAAAAAAAA4GRABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAABBABwADAAAABAACAAAAAAAAAAQAJQAAAAAAAAAFAAAAAAAAYGVABwAJAAAABAAIAAAAAAAAAAYAEwEAAAUAAAAAAACAZUAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAACAZUAEAAEAAAAAAAAABAAAAAAAAAAAAAQAsgAAAAAAAAAHAAkAAAAEAAgAAAAAAAAABgAUAQAABQAAAAAAAIBlQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAKBlQAQAAQAAAAAAAAAEAAAAAAAAAAAABAC3AAAAAAAAAAcACQAAAAQACAAAAAAAAAAGABUBAAAFAAAAAAAAwGVABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAwGVABAABAAAAAAAAAAQAAAAAAAAAAAAEALkAAAAAAAAABwAGAAAABAACAAAAAAAAAAQALgAAAAAAAAAFAAAAAAAA4GVABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAGZABwAGAAAABAAIAAAAAAAAAAYAFQEAAAUAAAAAAAAAZkAEAAEAAAAAAAAABAAAAAAAAAAAAAQAuwAAAAAAAAAHAAMAAAAFAAAAAAAAABhABgA4AQAABQAAAAAAACBlQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBlQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAGBmQAcAAwAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABQAAAAAAAIBmQAcACQAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAGBmQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAKBmQAQAAgAAAAAAAAAEACQAAAAAAAAABQAAAAAAACBmQAcAAAAAAAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAIBlQAcADwAAAAQAAgAAAAAAAAAEACAAAAAAAAAABQAAAAAAAMBmQAQAAgAAAAAAAAAEACsAAAAAAAAABQAAAAAAAMBmQAQAAgAAAAAAAAAEAC0AAAAAAAAABQAAAAAAAMBmQAQAAgAAAAAAAAAEADAAAAAAAAAABQAAAAAAAMBmQAQAAgAAAAAAAAAEACMAAAAAAAAABQAAAAAAAMBmQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAMBlQAcACQAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABQAAAAAAACBnQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABnQAQAAgAAAAAAAAAEACoAAAAAAAAABQAAAAAAAABnQAcAAwAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAABmQAcACQAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABQAAAAAAAGBnQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAEBnQAQAAgAAAAAAAAAEACoAAAAAAAAABQAAAAAAAEBnQAcAAwAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAcABgAAAAQACAAAAAAAAAAGABABAAAFAAAAAAAAgGdABAABAAAAAAAAAAQAAAAAAAAAAAAEAL8AAAAAAAAABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgGdABwAGAAAABAAIAAAAAAAAAAYAEQEAAAUAAAAAAADAZ0AEAAEAAAAAAAAABAAAAAAAAAAAAAQAwQAAAAAAAAAHAAMAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAUAAAAAAADAZ0AHAAMAAAAEAAIAAAAAAAAABAAlAAAAAAAAAAUAAAAAAABAaEAHAAkAAAAEAAgAAAAAAAAABgAUAQAABQAAAAAAAEBoQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAGBoQAQAAQAAAAAAAAAEAAAAAAAAAAAABADGAAAAAAAAAAcACQAAAAQACAAAAAAAAAAGABUBAAAFAAAAAAAAgGhABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgGhABAABAAAAAAAAAAQAAAAAAAAAAAAEAMgAAAAAAAAABwADAAAABAACAAAAAAAAAAQAJQAAAAAAAAAFAAAAAAAAAGhABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAQGhABwAPAAAABAACAAAAAAAAAAQAIAAAAAAAAAAFAAAAAAAAoGhABAACAAAAAAAAAAQAKwAAAAAAAAAFAAAAAAAAoGhABAACAAAAAAAAAAQALQAAAAAAAAAFAAAAAAAAoGhABAACAAAAAAAAAAQAMAAAAAAAAAAFAAAAAAAAoGhABAACAAAAAAAAAAQAIwAAAAAAAAAFAAAAAAAAoGhABwADAAAABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAgGhABwAJAAAABQAAAAAAAAAQQAQACAAAAAAAAAAFAAAAAAAAAGlABAABAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAA4GhABAACAAAAAAAAAAQAKgAAAAAAAAAFAAAAAAAA4GhABAABAAAAAAAAAAAAAAAAAAAAAQAHAAgAAAAHAAIAAAAEAAAAAAAAAAAABAABAAAAAAAAAAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAGAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAUAAAAAAAAAGEAGAC8BAAAFAAAAAAAAABBABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAFAAAAAAAAAABABwADAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABwADAAAABQAAAAAAAAAcQAYALwEAAAUAAAAAAAAAHEAHAAMAAAAEAAAAAAAAAAAABAABAAAAAAAAAAUAAAAAAAAAFEAEAAEAAAAAAAAAAAAAAAAAAAABAAcADAAAAAcABQAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABAACAAAAAAAAAAQAAwAAAAAAAAAEAAQAAAAAAAAABwAPAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAMAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAUAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAcAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAkAAAAAAAAABAABAAAAAAAAAAQAAAAAAAAAAAAEAAsAAAAAAAAABwADAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwADAAAABAACAAAAAAAAAAQAIAAAAAAAAAAFAAAAAAAAAABABwADAAAABAAAAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABwADAAAABAACAAAAAAAAAAQAKwAAAAAAAAAFAAAAAAAAABBABwADAAAABAAAAAAAAAAAAAQAAgAAAAAAAAAEAAAAAAAAAAAABwADAAAABAACAAAAAAAAAAQALQAAAAAAAAAFAAAAAAAAABhABwADAAAABAAAAAAAAAAAAAQAAwAAAAAAAAAEAAAAAAAAAAAABwADAAAABAACAAAAAAAAAAQAMAAAAAAAAAAFAAAAAAAAACBABwADAAAABAAAAAAAAAAAAAQABAAAAAAAAAAEAAAAAAAAAAAABwADAAAABAACAAAAAAAAAAQAIwAAAAAAAAAFAAAAAAAAACRABAABAAAAAAAAAAAAAAAAAAAAAQAHAAYAAAAHAAIAAAAEAAAAAAAAAAAABAABAAAAAAAAAAcABgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAADAAAAAAAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABAAFAAAAAAAAAAcAAwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcABgAAAAUAAAAAAAAAEEAEAAgAAAAAAAAABQAAAAAAAAAIQAQAAQAAAAAAAAAEAAAAAAAAAAAABQAAAAAAAAAAQAcAAwAAAAQAAAAAAAAAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAQAAgAAAAAAAAAEACoAAAAAAAAABQAAAAAAAAAQQAQAAQAAAAAAAAAAAAAAAAAAAAEAAgAAAAcAAAAAAAoAAAAAAAMAAAAHAAAAAAAKAAAAAAAEAAAABwAAAAAACgAAAAAABgBIAQAAAgAAAAAAGAAAAAcAAAAAAAoAAQAAANQAAAACAAAAAAD+AAAABwAAAAAABwAAAAAABwAAAAAABwAAAAAABAABAAAAAAAAAFkBAAAHAAAAAAAKAAAAAABcAQAABwAAAAAACgAAAAAAAAAAABQAAAABAAAAAQAAAAAAAAD+AAAAAAAAABUAAAAAAAAAAAAAAAMAAAAAAAAAdQEAAAIAAAAAABgAAAB2AQAAAgAAAAAAGAAAAHcBAAACAAAAAAB/AAAA", cur_sc, $P5004, $P5006, conflicts
    unless conflicts goto if1208_end2729 
    die "Repossession conflicts occurred during deserialization"
  if1208_end2729:
    .const 'Sub' $P5001 = "cuid_1_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 4
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_2_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 5
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_3_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 6
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_4_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 7
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_5_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 8
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_6_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 9
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_7_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 10
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_8_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 11
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_9_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 12
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_10_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 13
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_11_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 14
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_12_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 15
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_13_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 16
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_14_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 17
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_15_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 18
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_16_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 19
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_17_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 20
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_18_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 21
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_19_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 22
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_20_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 23
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_21_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 25
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_22_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 26
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_23_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 28
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_24_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 29
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_25_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 30
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_26_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 31
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_27_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 32
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_28_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 33
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_29_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 34
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_30_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 35
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_31_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 36
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_32_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 37
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_33_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 38
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_34_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 39
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_35_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 40
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_36_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 41
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_37_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 42
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_38_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 43
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_39_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 44
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_40_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 45
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_41_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 46
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_42_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 47
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_43_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 48
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_44_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 49
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_45_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 50
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_46_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 51
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_47_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 52
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_48_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 53
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_49_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 54
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_50_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 55
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_51_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 56
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_52_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 57
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_53_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 58
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_54_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 59
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_55_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 60
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_56_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 61
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_57_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 62
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_58_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 63
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_59_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 64
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_60_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 65
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_61_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 66
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_62_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 67
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_63_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 68
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_64_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 69
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_65_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 70
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_66_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 71
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_67_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 72
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_68_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 73
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_69_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 74
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_70_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 75
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_71_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 76
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_72_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 77
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_73_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 78
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_74_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 79
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_75_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 80
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_76_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 81
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_77_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 82
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_78_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 83
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_79_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 84
    set_sub_code_object $P5001, $P5002
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 27
    get_who $P5001, $P5002
    .const 'Sub' $P5003 = "cuid_79_1383914954.64741" 
    set $P5001["split_words"], $P5003
    .const 'Sub' $P5001 = "cuid_80_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 85
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_81_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 86
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_82_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 87
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_83_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 88
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_84_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 89
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_85_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 90
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_86_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 91
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_87_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 93
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_88_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 94
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_89_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 95
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_90_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 96
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_91_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 97
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_92_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 98
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_93_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 99
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_94_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 100
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_95_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 101
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_96_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 102
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_97_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 103
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_98_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 104
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_99_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 105
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_100_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 106
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_101_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 107
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_102_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 108
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_103_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 109
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_104_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 110
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_105_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 111
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_106_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 112
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_107_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 113
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_108_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 114
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_109_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 115
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_110_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 116
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_111_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 117
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_112_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 118
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_113_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 119
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_114_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 120
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_115_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 121
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_116_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 122
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_117_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 123
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_118_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 124
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_119_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 125
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_120_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 126
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_121_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 128
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_122_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 129
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_123_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 130
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_124_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 131
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_125_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 132
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_126_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 133
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_127_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 134
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_128_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 135
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_129_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 136
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_130_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 137
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_131_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 138
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_132_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 139
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_133_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 140
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_134_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 141
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_135_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 142
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_136_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 143
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_137_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 144
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_138_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 145
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_139_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 146
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_140_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 147
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_141_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 148
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_142_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 149
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_143_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 150
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_144_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 151
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_145_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 152
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_146_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 153
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_147_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 154
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_148_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 155
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_149_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 156
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_150_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 157
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_151_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 158
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_152_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 159
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_153_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 160
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_154_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 161
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_155_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 162
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_156_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 163
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_157_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 164
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_158_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 165
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_159_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 166
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_160_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 167
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_161_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 168
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_162_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 169
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_164_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 171
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_165_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 172
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_166_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 173
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_167_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 174
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_168_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 175
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_169_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 177
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_170_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 178
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_171_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 179
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_172_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 180
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_173_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 181
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_174_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 182
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_175_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 183
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_176_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 184
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_177_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 185
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_178_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 186
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_179_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 188
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_180_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 189
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_181_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 190
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_182_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 191
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_183_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 192
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_184_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 193
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_185_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 194
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_186_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 195
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_187_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 196
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_188_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 197
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_189_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 198
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_190_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 199
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_191_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 202
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_192_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 203
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_193_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 204
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_194_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 205
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_195_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 206
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_196_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 207
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_197_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 208
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_198_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 209
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_199_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 210
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_200_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 211
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_201_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 212
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_202_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 213
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_203_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 214
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_204_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 215
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_205_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 216
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_206_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 217
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_207_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 218
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_208_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 219
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_209_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 220
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_210_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 221
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_211_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 223
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_212_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 224
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_213_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 225
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_214_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 226
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_215_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 227
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_216_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 228
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_217_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 229
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_218_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 230
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_219_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 231
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_220_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 232
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_221_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 233
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_222_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 234
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_223_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 235
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_224_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 236
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_225_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 237
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_226_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 238
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_227_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 239
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_228_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 241
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_229_1383914954.64741" 
    nqp_get_sc_object $P5002, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 242
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_230_1383914954.64741"
    new $P5002, 'ResizableStringArray'
    push $P5002, "GLOBALish"
    push $P5002, "$?PACKAGE"
    push $P5002, "EXPORT"
    push $P5002, "ParseShared"
    push $P5002, "NQPCursorRole"
    push $P5002, "sprintf"
    new $P5003, 'ResizablePMCArray'
    nqp_get_sc_object $P5004, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 0
    push $P5003, $P5004
    nqp_get_sc_object $P5005, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 0
    push $P5003, $P5005
    nqp_get_sc_object $P5006, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 1
    push $P5003, $P5006
    nqp_get_sc_object $P5007, "65475E2A0C14FDD82BB949E6EFAAEB49870261A5-1383914944.49584", 32
    push $P5003, $P5007
    nqp_get_sc_object $P5008, "65475E2A0C14FDD82BB949E6EFAAEB49870261A5-1383914944.49584", 35
    push $P5003, $P5008
    nqp_get_sc_object $P5009, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 200
    push $P5003, $P5009
    new $P5010, 'ResizableIntegerArray'
    push $P5010, 0
    push $P5010, 0
    push $P5010, 0
    push $P5010, 0
    push $P5010, 0
    push $P5010, 0
    $P5001."setup_static_lexpad"($P5002, $P5003, $P5010)
    .const "LexInfo" $P5001 = "cuid_231_1383914954.64741"
    new $P5002, 'ResizableStringArray'
    push $P5002, "$?PACKAGE"
    push $P5002, "$?CLASS"
    new $P5003, 'ResizablePMCArray'
    nqp_get_sc_object $P5004, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 3
    push $P5003, $P5004
    nqp_get_sc_object $P5005, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 3
    push $P5003, $P5005
    new $P5006, 'ResizableIntegerArray'
    push $P5006, 0
    push $P5006, 0
    $P5001."setup_static_lexpad"($P5002, $P5003, $P5006)
    .const "LexInfo" $P5001 = "cuid_22_1383914954.64741"
    new $P5002, 'ResizableStringArray'
    push $P5002, "$?PACKAGE"
    push $P5002, "$?ROLE"
    new $P5003, 'ResizablePMCArray'
    nqp_get_sc_object $P5004, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 24
    push $P5003, $P5004
    nqp_get_sc_object $P5005, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 24
    push $P5003, $P5005
    new $P5006, 'ResizableIntegerArray'
    push $P5006, 0
    push $P5006, 0
    $P5001."setup_static_lexpad"($P5002, $P5003, $P5006)
    .const "LexInfo" $P5001 = "cuid_236_1383914954.64741"
    new $P5002, 'ResizableStringArray'
    push $P5002, "$?PACKAGE"
    push $P5002, "$?CLASS"
    new $P5003, 'ResizablePMCArray'
    nqp_get_sc_object $P5004, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 27
    push $P5003, $P5004
    nqp_get_sc_object $P5005, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 27
    push $P5003, $P5005
    new $P5006, 'ResizableIntegerArray'
    push $P5006, 0
    push $P5006, 0
    $P5001."setup_static_lexpad"($P5002, $P5003, $P5006)
    .const "LexInfo" $P5001 = "cuid_249_1383914954.64741"
    new $P5002, 'ResizableStringArray'
    push $P5002, "$?PACKAGE"
    push $P5002, "$?CLASS"
    new $P5003, 'ResizablePMCArray'
    nqp_get_sc_object $P5004, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 92
    push $P5003, $P5004
    nqp_get_sc_object $P5005, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 92
    push $P5003, $P5005
    new $P5006, 'ResizableIntegerArray'
    push $P5006, 0
    push $P5006, 0
    $P5001."setup_static_lexpad"($P5002, $P5003, $P5006)
    .const "LexInfo" $P5001 = "cuid_261_1383914954.64741"
    new $P5002, 'ResizableStringArray'
    push $P5002, "$?PACKAGE"
    push $P5002, "$?CLASS"
    new $P5003, 'ResizablePMCArray'
    nqp_get_sc_object $P5004, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 127
    push $P5003, $P5004
    nqp_get_sc_object $P5005, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 127
    push $P5003, $P5005
    new $P5006, 'ResizableIntegerArray'
    push $P5006, 0
    push $P5006, 0
    $P5001."setup_static_lexpad"($P5002, $P5003, $P5006)
    .const "LexInfo" $P5001 = "cuid_289_1383914954.64741"
    new $P5002, 'ResizableStringArray'
    push $P5002, "$?PACKAGE"
    push $P5002, "$?CLASS"
    new $P5003, 'ResizablePMCArray'
    nqp_get_sc_object $P5004, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 170
    push $P5003, $P5004
    nqp_get_sc_object $P5005, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 170
    push $P5003, $P5005
    new $P5006, 'ResizableIntegerArray'
    push $P5006, 0
    push $P5006, 0
    $P5001."setup_static_lexpad"($P5002, $P5003, $P5006)
    .const "LexInfo" $P5001 = "cuid_290_1383914954.64741"
    new $P5002, 'ResizableStringArray'
    push $P5002, "$?PACKAGE"
    push $P5002, "$?CLASS"
    new $P5003, 'ResizablePMCArray'
    nqp_get_sc_object $P5004, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 176
    push $P5003, $P5004
    nqp_get_sc_object $P5005, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 176
    push $P5003, $P5005
    new $P5006, 'ResizableIntegerArray'
    push $P5006, 0
    push $P5006, 0
    $P5001."setup_static_lexpad"($P5002, $P5003, $P5006)
    .const "LexInfo" $P5001 = "cuid_300_1383914954.64741"
    new $P5002, 'ResizableStringArray'
    push $P5002, "$?PACKAGE"
    push $P5002, "$?CLASS"
    new $P5003, 'ResizablePMCArray'
    nqp_get_sc_object $P5004, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 187
    push $P5003, $P5004
    nqp_get_sc_object $P5005, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 187
    push $P5003, $P5005
    new $P5006, 'ResizableIntegerArray'
    push $P5006, 0
    push $P5006, 0
    $P5001."setup_static_lexpad"($P5002, $P5003, $P5006)
    .const "LexInfo" $P5001 = "cuid_301_1383914954.64741"
    new $P5002, 'ResizableStringArray'
    push $P5002, "$?PACKAGE"
    push $P5002, "$?CLASS"
    push $P5002, "Syntax"
    push $P5002, "Actions"
    push $P5002, "Directives"
    new $P5003, 'ResizablePMCArray'
    nqp_get_sc_object $P5004, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 200
    push $P5003, $P5004
    nqp_get_sc_object $P5005, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 200
    push $P5003, $P5005
    nqp_get_sc_object $P5006, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 201
    push $P5003, $P5006
    nqp_get_sc_object $P5007, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 222
    push $P5003, $P5007
    nqp_get_sc_object $P5008, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 240
    push $P5003, $P5008
    new $P5009, 'ResizableIntegerArray'
    push $P5009, 0
    push $P5009, 0
    push $P5009, 0
    push $P5009, 0
    push $P5009, 0
    $P5001."setup_static_lexpad"($P5002, $P5003, $P5009)
    .const "LexInfo" $P5001 = "cuid_305_1383914954.64741"
    new $P5002, 'ResizableStringArray'
    push $P5002, "$?PACKAGE"
    push $P5002, "$?CLASS"
    new $P5003, 'ResizablePMCArray'
    nqp_get_sc_object $P5004, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 201
    push $P5003, $P5004
    nqp_get_sc_object $P5005, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 201
    push $P5003, $P5005
    new $P5006, 'ResizableIntegerArray'
    push $P5006, 0
    push $P5006, 0
    $P5001."setup_static_lexpad"($P5002, $P5003, $P5006)
    .const "LexInfo" $P5001 = "cuid_306_1383914954.64741"
    new $P5002, 'ResizableStringArray'
    push $P5002, "$?PACKAGE"
    push $P5002, "$?CLASS"
    new $P5003, 'ResizablePMCArray'
    nqp_get_sc_object $P5004, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 222
    push $P5003, $P5004
    nqp_get_sc_object $P5005, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 222
    push $P5003, $P5005
    new $P5006, 'ResizableIntegerArray'
    push $P5006, 0
    push $P5006, 0
    $P5001."setup_static_lexpad"($P5002, $P5003, $P5006)
    .const "LexInfo" $P5001 = "cuid_325_1383914954.64741"
    new $P5002, 'ResizableStringArray'
    push $P5002, "$?PACKAGE"
    push $P5002, "$?CLASS"
    new $P5003, 'ResizablePMCArray'
    nqp_get_sc_object $P5004, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 240
    push $P5003, $P5004
    nqp_get_sc_object $P5005, "B70A3A6C61478A243495E9368C50A2B67630EC67-1383914954.73819", 240
    push $P5003, $P5005
    new $P5006, 'ResizableIntegerArray'
    push $P5006, 0
    push $P5006, 0
    $P5007 = $P5001."setup_static_lexpad"($P5002, $P5003, $P5006)
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_327_1383914954.64741") :anon :lex :outer("cuid_328_1383914954.64741")
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
    new $P5001, 'ResizablePMCArray'
    .const 'Sub' $P5002 = "cuid_1_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_2_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_3_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_4_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_5_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_6_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_7_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_8_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_9_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_10_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_11_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_12_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_13_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_14_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_15_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_16_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_17_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_18_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_19_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_20_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_21_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_22_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_23_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_24_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_25_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_26_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_27_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_28_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_29_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_30_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_31_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_32_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_33_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_34_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_35_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_36_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_37_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_38_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_39_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_40_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_41_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_42_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_43_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_44_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_45_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_46_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_47_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_48_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_49_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_50_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_51_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_52_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_53_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_54_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_55_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_56_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_57_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_58_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_59_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_60_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_61_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_62_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_63_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_64_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_65_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_66_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_67_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_68_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_69_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_70_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_71_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_72_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_73_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_74_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_75_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_76_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_77_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_78_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_79_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_80_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_81_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_82_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_83_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_84_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_85_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_86_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_87_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_88_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_89_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_90_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_91_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_92_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_93_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_94_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_95_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_96_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_97_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_98_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_99_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_100_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_101_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_102_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_103_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_104_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_105_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_106_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_107_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_108_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_109_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_110_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_111_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_112_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_113_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_114_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_115_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_116_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_117_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_118_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_119_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_120_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_121_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_122_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_123_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_124_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_125_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_126_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_127_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_128_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_129_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_130_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_131_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_132_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_133_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_134_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_135_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_136_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_137_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_138_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_139_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_140_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_141_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_142_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_143_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_144_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_145_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_146_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_147_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_148_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_149_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_150_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_151_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_152_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_153_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_154_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_155_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_156_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_157_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_158_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_159_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_160_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_161_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_162_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_164_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_165_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_166_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_167_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_168_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_169_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_170_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_171_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_172_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_173_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_174_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_175_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_176_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_177_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_178_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_179_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_180_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_181_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_182_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_183_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_184_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_185_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_186_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_187_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_188_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_189_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_190_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_191_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_192_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_193_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_194_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_195_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_196_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_197_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_198_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_199_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_200_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_201_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_202_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_203_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_204_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_205_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_206_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_207_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_208_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_209_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_210_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_211_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_212_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_213_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_214_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_215_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_216_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_217_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_218_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_219_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_220_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_221_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_222_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_223_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_224_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_225_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_226_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_227_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_228_1383914954.64741" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_229_1383914954.64741" 
    push $P5001, $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_329_1383914954.64741") :load
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
    .const 'Sub' $P5001 = "cuid_230_1383914954.64741" 
    $P5002 = $P5001()
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_330_1383914954.64741") :main
.annotate 'file', "gen/parrot/stage2/NQPHLL.nqp"
    .param pmc ARGS :slurpy 
    .const 'Sub' $P5001 = "cuid_230_1383914954.64741" 
    $P5002 = $P5001(ARGS :flat)
    .return ($P5002) 
.end