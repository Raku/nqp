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
.sub "" :subid("cuid_1_1346968509.914") :anon :lex
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
    .param pmc _lex_param_0 :slurpy 
    .const 'Sub' $P5032 = 'cuid_12_1346968509.914' 
    capture_lex $P5032 
    .const 'Sub' $P5032 = 'cuid_14_1346968509.914' 
    capture_lex $P5032 
    .const 'Sub' $P5032 = 'cuid_34_1346968509.914' 
    capture_lex $P5032 
    .const 'Sub' $P5032 = 'cuid_36_1346968509.914' 
    capture_lex $P5032 
    .const 'Sub' $P5032 = 'cuid_55_1346968509.914' 
    capture_lex $P5032 
    .const 'Sub' $P5032 = 'cuid_98_1346968509.914' 
    capture_lex $P5032 
    .const 'Sub' $P5032 = 'cuid_108_1346968509.914' 
    capture_lex $P5032 
    .const 'Sub' $P5032 = 'cuid_119_1346968509.914' 
    capture_lex $P5032 
    .const 'Sub' $P5032 = 'cuid_130_1346968509.914' 
    capture_lex $P5032 
    .const 'Sub' $P5032 = 'cuid_131_1346968509.914' 
    capture_lex $P5032 
    .lex "GLOBALish", $P101 
    .lex "$?PACKAGE", $P102 
    .lex "Archetypes", $P103 
    .lex "RoleToRoleApplier", $P104 
    .lex "NQPConcreteRoleHOW", $P105 
    .lex "RoleToClassApplier", $P106 
    .lex "NQPParametricRoleHOW", $P107 
    .lex "NQPClassHOW", $P108 
    .lex "NQPNativeHOW", $P109 
    .lex "NQPAttribute", $P110 
    .lex "NQPModuleHOW", $P111 
    .lex "EXPORTHOW", $P112 
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
    .const 'Sub' $P5007 = 'cuid_12_1346968509.914' 
    capture_lex $P5007
    $P5008 = $P5007()
    .const 'Sub' $P5009 = 'cuid_14_1346968509.914' 
    capture_lex $P5009
    $P5010 = $P5009()
    .const 'Sub' $P5011 = 'cuid_34_1346968509.914' 
    capture_lex $P5011
    $P5012 = $P5011()
    .const 'Sub' $P5013 = 'cuid_36_1346968509.914' 
    capture_lex $P5013
    $P5014 = $P5013()
    .const 'Sub' $P5015 = 'cuid_55_1346968509.914' 
    capture_lex $P5015
    $P5016 = $P5015()
    .const 'Sub' $P5017 = 'cuid_98_1346968509.914' 
    capture_lex $P5017
    $P5018 = $P5017()
    .const 'Sub' $P5019 = 'cuid_108_1346968509.914' 
    capture_lex $P5019
    $P5020 = $P5019()
    .const 'Sub' $P5021 = 'cuid_119_1346968509.914' 
    capture_lex $P5021
    $P5022 = $P5021()
    .const 'Sub' $P5023 = 'cuid_130_1346968509.914' 
    capture_lex $P5023
    $P5024 = $P5023()
    .const 'Sub' $P5025 = 'cuid_131_1346968509.914' 
    capture_lex $P5025
    $P5026 = $P5025()
    set $P5031, _lex_param_0
    unless _lex_param_0 goto if111_end477 
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P5027, "ModuleLoader"
    getinterp $P5029
    set $P5028, $P5029["context"]
    $P5030 = $P5027."set_mainline_module"($P5028)
    set $P5031, $P5030
  if111_end477:
    .return () 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_12_1346968509.914") :anon :lex :outer("cuid_1_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 9
    .const 'Sub' $P5011 = 'cuid_2_1346968509.914' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_3_1346968509.914' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_4_1346968509.914' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_5_1346968509.914' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_6_1346968509.914' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_7_1346968509.914' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_8_1346968509.914' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_9_1346968509.914' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_10_1346968509.914' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_11_1346968509.914' 
    capture_lex $P5011 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_2_1346968509.914' 
    capture_lex $P5001
    .const 'Sub' $P5002 = 'cuid_3_1346968509.914' 
    capture_lex $P5002
    .const 'Sub' $P5003 = 'cuid_4_1346968509.914' 
    capture_lex $P5003
    .const 'Sub' $P5004 = 'cuid_5_1346968509.914' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_6_1346968509.914' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_7_1346968509.914' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_8_1346968509.914' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_9_1346968509.914' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_10_1346968509.914' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_11_1346968509.914' 
    capture_lex $P5010
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "new" :subid("cuid_2_1346968509.914") :anon :lex :outer("cuid_12_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 47
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("nominal") :optional 
    .param int haz_param_1 :opt_flag 
    .param pmc _lex_param_2 :named("inheritable") :optional 
    .param int haz_param_2 :opt_flag 
    .param pmc _lex_param_3 :named("composable") :optional 
    .param int haz_param_3 :opt_flag 
    .param pmc _lex_param_4 :named("parametric") :optional 
    .param int haz_param_4 :opt_flag 
    if haz_param_1, default14
    null $P5005
    set _lex_param_1, $P5005
  default14:
    if haz_param_2, default15
    null $P5006
    set _lex_param_2, $P5006
  default15:
    if haz_param_3, default16
    null $P5007
    set _lex_param_3, $P5007
  default16:
    if haz_param_4, default17
    null $P5008
    set _lex_param_4, $P5008
  default17:
    .lex "$arch", $P101 
    .lex "self", _lex_param_0 
    .lex "$nominal", _lex_param_1 
    .lex "$inheritable", _lex_param_2 
    .lex "$composable", _lex_param_3 
    .lex "$parametric", _lex_param_4 
    null $P5001
    set $P101, $P5001
    nqp_decontainerize $P5003, _lex_param_0
    repr_instance_of $P5002, $P5003
    set $P101, $P5002
.annotate 'line', 49
    $P5004 = $P101."BUILD"(_lex_param_1 :named("nominal"), _lex_param_2 :named("inheritable"), _lex_param_3 :named("composable"), _lex_param_4 :named("parametric"))
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "BUILD" :subid("cuid_3_1346968509.914") :anon :lex :outer("cuid_12_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 54
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("nominal") :optional 
    .param int haz_param_5 :opt_flag 
    .param pmc _lex_param_2 :named("inheritable") :optional 
    .param int haz_param_6 :opt_flag 
    .param pmc _lex_param_3 :named("composable") :optional 
    .param int haz_param_7 :opt_flag 
    .param pmc _lex_param_4 :named("parametric") :optional 
    .param int haz_param_8 :opt_flag 
    if haz_param_5, default18
    null $P5009
    set _lex_param_1, $P5009
  default18:
    if haz_param_6, default19
    null $P5010
    set _lex_param_2, $P5010
  default19:
    if haz_param_7, default20
    null $P5011
    set _lex_param_3, $P5011
  default20:
    if haz_param_8, default21
    null $P5012
    set _lex_param_4, $P5012
  default21:
    .lex "self", _lex_param_0 
    .lex "$nominal", _lex_param_1 
    .lex "$inheritable", _lex_param_2 
    .lex "$composable", _lex_param_3 
    .lex "$parametric", _lex_param_4 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 1
    repr_bind_attr_obj $P5001, $P5002, "$!nominal", _lex_param_1
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 1
    repr_bind_attr_obj $P5003, $P5004, "$!inheritable", _lex_param_2
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 1
    repr_bind_attr_obj $P5005, $P5006, "$!composable", _lex_param_3
    nqp_decontainerize $P5007, _lex_param_0
    nqp_get_sc_object $P5008, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 1
    repr_bind_attr_obj $P5007, $P5008, "$!parametric", _lex_param_4
    .return (_lex_param_4) 
.end
.HLL "nqp"
.namespace []
.sub "nominal" :subid("cuid_4_1346968509.914") :anon :lex :outer("cuid_12_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 61
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 1
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!nominal"
    unless_null $P5003, vivi_1222
    box $P5004, 0
    set $P5003, $P5004
  vivi_1222:
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "nominalizable" :subid("cuid_5_1346968509.914") :anon :lex :outer("cuid_12_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 62
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 1
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!nominalizable"
    unless_null $P5003, vivi_1323
    box $P5004, 0
    set $P5003, $P5004
  vivi_1323:
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "inheritable" :subid("cuid_6_1346968509.914") :anon :lex :outer("cuid_12_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 63
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 1
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!inheritable"
    unless_null $P5003, vivi_1424
    box $P5004, 0
    set $P5003, $P5004
  vivi_1424:
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "inheritalizable" :subid("cuid_7_1346968509.914") :anon :lex :outer("cuid_12_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 64
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 1
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!inheritalizable"
    unless_null $P5003, vivi_1525
    box $P5004, 0
    set $P5003, $P5004
  vivi_1525:
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "composable" :subid("cuid_8_1346968509.914") :anon :lex :outer("cuid_12_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 65
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 1
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!composable"
    unless_null $P5003, vivi_1626
    box $P5004, 0
    set $P5003, $P5004
  vivi_1626:
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "composalizable" :subid("cuid_9_1346968509.914") :anon :lex :outer("cuid_12_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 66
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 1
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!composalizable"
    unless_null $P5003, vivi_1727
    box $P5004, 0
    set $P5003, $P5004
  vivi_1727:
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "generic" :subid("cuid_10_1346968509.914") :anon :lex :outer("cuid_12_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 67
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 1
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!generic"
    unless_null $P5003, vivi_1828
    box $P5004, 0
    set $P5003, $P5004
  vivi_1828:
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "parametric" :subid("cuid_11_1346968509.914") :anon :lex :outer("cuid_12_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 68
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 1
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!parametric"
    unless_null $P5003, vivi_1929
    box $P5004, 0
    set $P5003, $P5004
  vivi_1929:
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_14_1346968509.914") :anon :lex :outer("cuid_1_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 72
    .const 'Sub' $P5002 = 'cuid_13_1346968509.914' 
    capture_lex $P5002 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_13_1346968509.914' 
    capture_lex $P5001
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "apply" :subid("cuid_13_1346968509.914") :anon :lex :outer("cuid_14_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 73
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .const 'Sub' $P5029 = 'cuid_134_1346968509.914' 
    capture_lex $P5029 
    .const 'Sub' $P5029 = 'cuid_135_1346968509.914' 
    capture_lex $P5029 
    .const 'Sub' $P5029 = 'cuid_136_1346968509.914' 
    capture_lex $P5029 
    .const 'Sub' $P5029 = 'cuid_139_1346968509.914' 
    capture_lex $P5029 
    .lex "%meth_info", $P101 
    .lex "%target_meth_info", $P102 
    .lex "@target_meths", $P103 
    .lex "@all_roles", $P104 
    .lex "self", _lex_param_0 
    .lex "$target", _lex_param_1 
    .lex "@roles", _lex_param_2 
    new $P5001, 'Hash'
    set $P101, $P5001
    new $P5002, 'Hash'
    set $P102, $P5002
    new $P5003, 'ResizablePMCArray'
    set $P103, $P5003
    new $P5004, 'ResizablePMCArray'
    set $P104, $P5004
    root_new $P105, ['parrot';'Continuation']
    set_label $P105, lexotic_30
    .lex "RETURN", $P105
    set $P5005, _lex_param_2
    iter $P5007, _lex_param_2
  for_next46:
    unless $P5007, for_done48
    shift $P5009, $P5007
  for_redo47:
    .const 'Sub' $P5008 = 'cuid_134_1346968509.914' 
    capture_lex $P5008
    $P5005 = $P5008($P5009)
    goto for_next46
  for_done48:
.annotate 'line', 102
    get_how $P5010, _lex_param_1
    $P5011 = $P5010."methods"(_lex_param_1)
    set $P103, $P5011
    set $P5012, $P103
    iter $P5014, $P103
  for_next49:
    unless $P5014, for_done51
    shift $P5016, $P5014
  for_redo50:
    .const 'Sub' $P5015 = 'cuid_135_1346968509.914' 
    capture_lex $P5015
    $P5012 = $P5015($P5016)
    goto for_next49
  for_done51:
    set $P5017, $P101
    iter $P5019, $P101
  for_next59:
    unless $P5019, for_done61
    shift $P5021, $P5019
  for_redo60:
    .const 'Sub' $P5020 = 'cuid_136_1346968509.914' 
    capture_lex $P5020
    $P5017 = $P5020($P5021)
    goto for_next59
  for_done61:
    set $P5022, _lex_param_2
    iter $P5024, _lex_param_2
  for_next74:
    unless $P5024, for_done76
    shift $P5026, $P5024
  for_redo75:
    .const 'Sub' $P5025 = 'cuid_139_1346968509.914' 
    capture_lex $P5025
    $P5022 = $P5025($P5026)
    goto for_next74
  for_done76:
    find_lex $P5027, "RETURN"
    $P5028 = $P5027($P104)
    goto lexotic_31
  lexotic_30:
    .get_results ($P5028)
  lexotic_31:
    .return ($P5028) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_134_1346968509.914") :anon :lex :outer("cuid_13_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 76
    .param pmc _lex_param_0 
    .const 'Sub' $P5009 = 'cuid_133_1346968509.914' 
    capture_lex $P5009 
    .lex "@methods", $P101 
    .lex "$_", _lex_param_0 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
.annotate 'line', 77
    get_how $P5002, _lex_param_0
    $P5003 = $P5002."methods"(_lex_param_0)
    set $P101, $P5003
    set $P5004, $P101
    iter $P5006, $P101
  for_next43:
    unless $P5006, for_done45
    shift $P5008, $P5006
  for_redo44:
    .const 'Sub' $P5007 = 'cuid_133_1346968509.914' 
    capture_lex $P5007
    $P5004 = $P5007($P5008)
    goto for_next43
  for_done45:
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_133_1346968509.914") :anon :lex :outer("cuid_134_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 78
    .param pmc _lex_param_0 
    .const 'Sub' $P5022 = 'cuid_132_1346968509.914' 
    capture_lex $P5022 
    .lex "$name", $P101 
    .lex "$meth", $P102 
    .lex "@meth_list", $P103 
    .lex "$found", $P104 
    .lex "$_", _lex_param_0 
    null $P5001
    set $P101, $P5001
    null $P5002
    set $P102, $P5002
    new $P5003, 'ResizablePMCArray'
    set $P103, $P5003
    null $P5004
    set $P104, $P5004
    set $S5001, _lex_param_0
    box $P5005, $S5001
    set $P101, $P5005
    set $P102, _lex_param_0
    find_lex $P5007, "%meth_info"
    set $S5002, $P101
    set $P5006, $P5007[$S5002]
    unless_null $P5006, fallback34
    null $P5008
    set $P5006, $P5008
  fallback34:
    defined $I5001, $P5006
    unless $I5001 goto if20_else32 
.annotate 'line', 82
    find_lex $P5010, "%meth_info"
    set $S5003, $P101
    set $P5009, $P5010[$S5003]
    unless_null $P5009, fallback35
    null $P5011
    set $P5009, $P5011
  fallback35:
    set $P103, $P5009
    set $P5013, $P103
    goto if20_end33
  if20_else32:
.annotate 'line', 85
    find_lex $P5012, "%meth_info"
    set $S5004, $P101
    set $P5012[$S5004], $P103
    set $P5013, $P103
  if20_end33:
    box $P5014, 0
    set $P104, $P5014
    set $P5015, $P103
    iter $P5017, $P103
  for_next38:
    unless $P5017, for_done40
    shift $P5019, $P5017
  for_redo39:
    .const 'Sub' $P5018 = 'cuid_132_1346968509.914' 
    capture_lex $P5018
    $P5015 = $P5018($P5019)
    goto for_next38
  for_done40:
    set $P5021, $P104
    if $P104 goto unless22_end42 
.annotate 'line', 94
.annotate 'line', 95
    $P5020 = $P103."push"($P102)
    set $P5021, $P5020
  unless22_end42:
    .return ($P5021) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_132_1346968509.914") :anon :lex :outer("cuid_133_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 89
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5001, "$meth"
    get_id $I5002, $P5001
    get_id $I5003, _lex_param_0
    iseq $I5001, $I5002, $I5003
    box $P5004, $I5001
    set $P5003, $P5004
    unless $I5001 goto if21_end37 
.annotate 'line', 90
    box $P5002, 1
    store_lex "$found", $P5002
    set $P5003, $P5002
  if21_end37:
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_135_1346968509.914") :anon :lex :outer("cuid_13_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 103
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5001, "%target_meth_info"
    set $S5001, _lex_param_0
    set $P5001[$S5001], _lex_param_0
    .return (_lex_param_0) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_136_1346968509.914") :anon :lex :outer("cuid_13_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 108
    .param pmc _lex_param_0 
    .lex "$name", $P101 
    .lex "@add_meths", $P102 
    .lex "$_", _lex_param_0 
    null $P5001
    set $P101, $P5001
    new $P5002, 'ResizablePMCArray'
    set $P102, $P5002
    set $S5001, _lex_param_0
    box $P5003, $S5001
    set $P101, $P5003
    find_lex $P5005, "%meth_info"
    set $S5002, $P101
    set $P5004, $P5005[$S5002]
    unless_null $P5004, fallback52
    null $P5006
    set $P5004, $P5006
  fallback52:
    set $P102, $P5004
    find_lex $P5008, "%target_meth_info"
    set $S5003, $P101
    set $P5007, $P5008[$S5003]
    unless_null $P5007, fallback55
    null $P5009
    set $P5007, $P5009
  fallback55:
    defined $I5001, $P5007
    box $P5022, $I5001
    set $P5021, $P5022
    if $I5001 goto unless23_end54 
.annotate 'line', 114
    set $N5001, $P102
    set $N5002, 1
    iseq $I5002, $N5001, $N5002
    unless $I5002 goto if24_else56 
.annotate 'line', 116
.annotate 'line', 117
    find_lex $P5011, "$target"
    get_how $P5010, $P5011
    find_lex $P5012, "$target"
    set $P5013, $P102[0]
    unless_null $P5013, fallback58
    null $P5014
    set $P5013, $P5014
  fallback58:
    $P5015 = $P5010."add_method"($P5012, $P101, $P5013)
    set $P5020, $P5015
    goto if24_end57
  if24_else56:
.annotate 'line', 119
.annotate 'line', 121
    find_lex $P5017, "$target"
    get_how $P5016, $P5017
    find_lex $P5018, "$target"
    $P5019 = $P5016."add_collision"($P5018, $P101)
    set $P5020, $P5019
  if24_end57:
    set $P5021, $P5020
  unless23_end54:
    .return ($P5021) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_139_1346968509.914") :anon :lex :outer("cuid_13_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 128
    .param pmc _lex_param_0 
    .const 'Sub' $P5012 = 'cuid_138_1346968509.914' 
    capture_lex $P5012 
    .lex "$how", $P101 
    .lex "@attributes", $P102 
    .lex "$_", _lex_param_0 
    null $P5001
    set $P101, $P5001
    new $P5002, 'ResizablePMCArray'
    set $P102, $P5002
    get_how $P5003, _lex_param_0
    set $P101, $P5003
.annotate 'line', 132
    $P5004 = $P101."attributes"(_lex_param_0)
    set $P102, $P5004
    set $P5005, $P102
    iter $P5007, $P102
  for_next71:
    unless $P5007, for_done73
    shift $P5009, $P5007
  for_redo72:
    .const 'Sub' $P5008 = 'cuid_138_1346968509.914' 
    capture_lex $P5008
    $P5005 = $P5008($P5009)
    goto for_next71
  for_done73:
.annotate 'line', 154
    find_lex $P5010, "@all_roles"
    $P5011 = $P5010."push"(_lex_param_0)
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_138_1346968509.914") :anon :lex :outer("cuid_139_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 133
    .param pmc _lex_param_0 
    .const 'Sub' $P5019 = 'cuid_137_1346968509.914' 
    capture_lex $P5019 
    .lex "$add_attr", $P101 
    .lex "$skip", $P102 
    .lex "@cur_attrs", $P103 
    .lex "$_", _lex_param_0 
    null $P5001
    set $P101, $P5001
    null $P5002
    set $P102, $P5002
    new $P5003, 'ResizablePMCArray'
    set $P103, $P5003
    set $P101, _lex_param_0
    box $P5004, 0
    set $P102, $P5004
.annotate 'line', 136
    find_lex $P5006, "$target"
    get_how $P5005, $P5006
    find_lex $P5007, "$target"
    $P5008 = $P5005."attributes"($P5007)
    set $P103, $P5008
    set $P5009, $P103
    iter $P5011, $P103
  for_next66:
    unless $P5011, for_done68
    shift $P5013, $P5011
  for_redo67:
    .const 'Sub' $P5012 = 'cuid_137_1346968509.914' 
    capture_lex $P5012
    $P5009 = $P5012($P5013)
    goto for_next66
  for_done68:
    set $P5018, $P102
    if $P102 goto unless27_end70 
.annotate 'line', 147
.annotate 'line', 148
    find_lex $P5015, "$target"
    get_how $P5014, $P5015
    find_lex $P5016, "$target"
    $P5017 = $P5014."add_attribute"($P5016, $P101)
    set $P5018, $P5017
  unless27_end70:
    .return ($P5018) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_137_1346968509.914") :anon :lex :outer("cuid_138_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 137
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    get_id $I5002, _lex_param_0
    find_lex $P5001, "$add_attr"
    get_id $I5003, $P5001
    iseq $I5001, $I5002, $I5003
    unless $I5001 goto if25_else62 
.annotate 'line', 138
    box $P5002, 1
    store_lex "$skip", $P5002
    set $P5010, $P5002
    goto if25_end63
  if25_else62:
.annotate 'line', 141
.annotate 'line', 142
    $P5003 = _lex_param_0."name"()
    set $S5001, $P5003
    find_lex $P5004, "$add_attr"
    $P5005 = $P5004."name"()
    set $S5002, $P5005
    iseq $I5004, $S5001, $S5002
    box $P5009, $I5004
    set $P5008, $P5009
    unless $I5004 goto if26_end65 
.annotate 'line', 143
    $P5006 = _lex_param_0."name"()
    set $S5005, $P5006
    concat $S5004, "Attribute '", $S5005
    concat $S5003, $S5004, "' conflicts in role composition"
    box $P5007, $S5003
    die $P5007
    set $P5008, $P5007
  if26_end65:
    set $P5010, $P5008
  if25_end63:
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_34_1346968509.914") :anon :lex :outer("cuid_1_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 164
    .const 'Sub' $P5023 = 'cuid_15_1346968509.914' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_16_1346968509.914' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_17_1346968509.914' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_18_1346968509.914' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_19_1346968509.914' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_20_1346968509.914' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_21_1346968509.914' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_22_1346968509.914' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_23_1346968509.914' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_24_1346968509.914' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_25_1346968509.914' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_26_1346968509.914' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_27_1346968509.914' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_28_1346968509.914' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_29_1346968509.914' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_30_1346968509.914' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_31_1346968509.914' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_32_1346968509.914' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_33_1346968509.914' 
    capture_lex $P5023 
    .lex "$archetypes", $P101 
    .lex "$?PACKAGE", $P102 
    .lex "$?CLASS", $P103 
    null $P5001
    set $P101, $P5001
.annotate 'line', 190
    nqp_get_sc_object $P5002, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 1
    $P5003 = $P5002."new"(1 :named("nominal"), 1 :named("composable"))
    set $P101, $P5003
    .const 'Sub' $P5004 = 'cuid_15_1346968509.914' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_16_1346968509.914' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_17_1346968509.914' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_18_1346968509.914' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_19_1346968509.914' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_20_1346968509.914' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_21_1346968509.914' 
    capture_lex $P5010
    .const 'Sub' $P5011 = 'cuid_22_1346968509.914' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_23_1346968509.914' 
    capture_lex $P5012
    .const 'Sub' $P5013 = 'cuid_24_1346968509.914' 
    capture_lex $P5013
    .const 'Sub' $P5014 = 'cuid_25_1346968509.914' 
    capture_lex $P5014
    .const 'Sub' $P5015 = 'cuid_26_1346968509.914' 
    capture_lex $P5015
    .const 'Sub' $P5016 = 'cuid_27_1346968509.914' 
    capture_lex $P5016
    .const 'Sub' $P5017 = 'cuid_28_1346968509.914' 
    capture_lex $P5017
    .const 'Sub' $P5018 = 'cuid_29_1346968509.914' 
    capture_lex $P5018
    .const 'Sub' $P5019 = 'cuid_30_1346968509.914' 
    capture_lex $P5019
    .const 'Sub' $P5020 = 'cuid_31_1346968509.914' 
    capture_lex $P5020
    .const 'Sub' $P5021 = 'cuid_32_1346968509.914' 
    capture_lex $P5021
    .const 'Sub' $P5022 = 'cuid_33_1346968509.914' 
    capture_lex $P5022
    .return ($P5022) 
.end
.HLL "nqp"
.namespace []
.sub "archetypes" :subid("cuid_15_1346968509.914") :anon :lex :outer("cuid_34_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 191
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    find_lex $P5001, "$archetypes"
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "new" :subid("cuid_16_1346968509.914") :anon :lex :outer("cuid_34_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 200
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("name") 
    .param pmc _lex_param_2 :named("instance_of") 
    .lex "$obj", $P101 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    .lex "$instance_of", _lex_param_2 
    null $P5001
    set $P101, $P5001
    nqp_decontainerize $P5003, _lex_param_0
    repr_instance_of $P5002, $P5003
    set $P101, $P5002
.annotate 'line', 202
    $P5004 = $P101."BUILD"(_lex_param_1 :named("name"), _lex_param_2 :named("instance_of"))
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "BUILD" :subid("cuid_17_1346968509.914") :anon :lex :outer("cuid_34_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 206
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("name") 
    .param pmc _lex_param_2 :named("instance_of") 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    .lex "$instance_of", _lex_param_2 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 3
    repr_bind_attr_obj $P5001, $P5002, "$!name", _lex_param_1
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 3
    repr_bind_attr_obj $P5003, $P5004, "$!instance_of", _lex_param_2
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 3
    new $P5007, 'Hash'
    repr_bind_attr_obj $P5005, $P5006, "%!attributes", $P5007
    nqp_decontainerize $P5008, _lex_param_0
    nqp_get_sc_object $P5009, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 3
    new $P5010, 'Hash'
    repr_bind_attr_obj $P5008, $P5009, "%!methods", $P5010
    nqp_decontainerize $P5011, _lex_param_0
    nqp_get_sc_object $P5012, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 3
    new $P5013, 'ResizablePMCArray'
    repr_bind_attr_obj $P5011, $P5012, "@!multi_methods_to_incorporate", $P5013
    nqp_decontainerize $P5014, _lex_param_0
    nqp_get_sc_object $P5015, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 3
    new $P5016, 'ResizablePMCArray'
    repr_bind_attr_obj $P5014, $P5015, "@!collisions", $P5016
    nqp_decontainerize $P5017, _lex_param_0
    nqp_get_sc_object $P5018, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 3
    new $P5019, 'ResizablePMCArray'
    repr_bind_attr_obj $P5017, $P5018, "@!roles", $P5019
    nqp_decontainerize $P5020, _lex_param_0
    nqp_get_sc_object $P5021, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 3
    new $P5022, 'ResizablePMCArray'
    repr_bind_attr_obj $P5020, $P5021, "@!role_typecheck_list", $P5022
    nqp_decontainerize $P5023, _lex_param_0
    nqp_get_sc_object $P5024, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 3
    box $P5025, 0
    repr_bind_attr_obj $P5023, $P5024, "$!composed", $P5025
    .return ($P5025) 
.end
.HLL "nqp"
.namespace []
.sub "new_type" :subid("cuid_18_1346968509.914") :anon :lex :outer("cuid_34_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 220
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("name") :optional 
    .param int haz_param_9 :opt_flag 
    .param pmc _lex_param_2 :named("instance_of") 
    if haz_param_9, default77
    box $P5005, "<anon>"
    set _lex_param_1, $P5005
  default77:
    .lex "$metarole", $P101 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    .lex "$instance_of", _lex_param_2 
    null $P5001
    set $P101, $P5001
.annotate 'line', 221
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."new"(_lex_param_1 :named("name"), _lex_param_2 :named("instance_of"))
    set $P101, $P5003
    repr_type_object_for $P5004, $P101, "Uninstantiable"
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "add_method" :subid("cuid_19_1346968509.914") :anon :lex :outer("cuid_34_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 225
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$name", _lex_param_2 
    .lex "$code_obj", _lex_param_3 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 3
    repr_get_attr_obj $P5003, $P5001, $P5002, "%!methods"
    set $S5001, _lex_param_2
    exists $I5001, $P5003[$S5001]
    box $P5006, $I5001
    set $P5005, $P5006
    unless $I5001 goto if28_end79 
.annotate 'line', 226
    set $S5003, _lex_param_2
    concat $S5002, "This role already has a method named ", $S5003
    box $P5004, $S5002
    die $P5004
    set $P5005, $P5004
  if28_end79:
    nqp_decontainerize $P5007, _lex_param_0
    nqp_get_sc_object $P5008, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 3
    repr_get_attr_obj $P5009, $P5007, $P5008, "%!methods"
    set $S5004, _lex_param_2
    set $P5009[$S5004], _lex_param_3
    .return (_lex_param_3) 
.end
.HLL "nqp"
.namespace []
.sub "add_multi_method" :subid("cuid_20_1346968509.914") :anon :lex :outer("cuid_34_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 232
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .lex "%todo", $P101 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$name", _lex_param_2 
    .lex "$code_obj", _lex_param_3 
    new $P5001, 'Hash'
    set $P101, $P5001
    set $P101["name"], _lex_param_2
    set $P101["code"], _lex_param_3
    nqp_decontainerize $P5002, _lex_param_0
    nqp_get_sc_object $P5003, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 3
    repr_get_attr_obj $P5004, $P5002, $P5003, "@!multi_methods_to_incorporate"
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 3
    repr_get_attr_obj $P5007, $P5005, $P5006, "@!multi_methods_to_incorporate"
    set $N5001, $P5007
    set $I5001, $N5001
    set $P5004[$I5001], $P101
    .return (_lex_param_3) 
.end
.HLL "nqp"
.namespace []
.sub "add_attribute" :subid("cuid_21_1346968509.914") :anon :lex :outer("cuid_34_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 240
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "$name", $P101 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$meta_attr", _lex_param_2 
    null $P5001
    set $P101, $P5001
.annotate 'line', 241
    $P5002 = _lex_param_2."name"()
    set $P101, $P5002
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 3
    repr_get_attr_obj $P5005, $P5003, $P5004, "%!attributes"
    set $S5001, $P101
    exists $I5001, $P5005[$S5001]
    box $P5008, $I5001
    set $P5007, $P5008
    unless $I5001 goto if29_end81 
.annotate 'line', 242
    set $S5003, $P101
    concat $S5002, "This role already has an attribute named ", $S5003
    box $P5006, $S5002
    die $P5006
    set $P5007, $P5006
  if29_end81:
    nqp_decontainerize $P5009, _lex_param_0
    nqp_get_sc_object $P5010, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 3
    repr_get_attr_obj $P5011, $P5009, $P5010, "%!attributes"
    set $S5004, $P101
    set $P5011[$S5004], _lex_param_2
    .return (_lex_param_2) 
.end
.HLL "nqp"
.namespace []
.sub "add_parent" :subid("cuid_22_1346968509.914") :anon :lex :outer("cuid_34_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 248
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$parent", _lex_param_2 
    box $P5001, "A role cannot inherit from a class in NQP"
    die $P5001
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "add_role" :subid("cuid_23_1346968509.914") :anon :lex :outer("cuid_34_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 252
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$role", _lex_param_2 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 3
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!roles"
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 3
    repr_get_attr_obj $P5006, $P5004, $P5005, "@!roles"
    set $N5001, $P5006
    set $I5001, $N5001
    set $P5003[$I5001], _lex_param_2
    .return (_lex_param_2) 
.end
.HLL "nqp"
.namespace []
.sub "add_collision" :subid("cuid_24_1346968509.914") :anon :lex :outer("cuid_34_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 256
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$colliding_name", _lex_param_2 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 3
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!collisions"
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 3
    repr_get_attr_obj $P5006, $P5004, $P5005, "@!collisions"
    set $N5001, $P5006
    set $I5001, $N5001
    set $P5003[$I5001], _lex_param_2
    .return (_lex_param_2) 
.end
.HLL "nqp"
.namespace []
.sub "compose" :subid("cuid_25_1346968509.914") :anon :lex :outer("cuid_34_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 261
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5021 = 'cuid_140_1346968509.914' 
    capture_lex $P5021 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 3
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!roles"
    set $P5017, $P5003
    unless $P5003 goto if30_end83 
.annotate 'line', 264
    nqp_decontainerize $P5007, _lex_param_0
    nqp_get_sc_object $P5008, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 3
    repr_get_attr_obj $P5009, $P5007, $P5008, "@!roles"
    set $P5004, $P5009
    iter $P5006, $P5009
  for_next84:
    unless $P5006, for_done86
    shift $P5011, $P5006
  for_redo85:
    .const 'Sub' $P5010 = 'cuid_140_1346968509.914' 
    capture_lex $P5010
    $P5004 = $P5010($P5011)
    goto for_next84
  for_done86:
.annotate 'line', 269
    nqp_get_sc_object $P5012, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 2
    nqp_decontainerize $P5013, _lex_param_0
    nqp_get_sc_object $P5014, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 3
    repr_get_attr_obj $P5015, $P5013, $P5014, "@!roles"
    $P5016 = $P5012."apply"(_lex_param_1, $P5015)
    set $P5017, $P5016
  if30_end83:
    nqp_decontainerize $P5018, _lex_param_0
    nqp_get_sc_object $P5019, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 3
    box $P5020, 1
    repr_bind_attr_obj $P5018, $P5019, "$!composed", $P5020
    .return (_lex_param_1) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_140_1346968509.914") :anon :lex :outer("cuid_25_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 265
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    nqp_get_sc_object $P5003, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 3
    repr_get_attr_obj $P5004, $P5001, $P5003, "@!role_typecheck_list"
    find_lex $P5006, "self"
    nqp_decontainerize $P5005, $P5006
    nqp_get_sc_object $P5007, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 3
    repr_get_attr_obj $P5008, $P5005, $P5007, "@!role_typecheck_list"
    set $N5001, $P5008
    set $I5001, $N5001
    set $P5004[$I5001], _lex_param_0
    find_lex $P5010, "self"
    nqp_decontainerize $P5009, $P5010
    nqp_get_sc_object $P5011, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 3
    repr_get_attr_obj $P5012, $P5009, $P5011, "@!role_typecheck_list"
    find_lex $P5014, "self"
    nqp_decontainerize $P5013, $P5014
    nqp_get_sc_object $P5015, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 3
    repr_get_attr_obj $P5016, $P5013, $P5015, "@!role_typecheck_list"
    set $N5002, $P5016
    set $I5002, $N5002
.annotate 'line', 267
    get_how $P5017, _lex_param_0
    $P5018 = $P5017."instance_of"(_lex_param_0)
    set $P5012[$I5002], $P5018
    .return ($P5018) 
.end
.HLL "nqp"
.namespace []
.sub "methods" :subid("cuid_26_1346968509.914") :anon :lex :outer("cuid_34_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 282
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :named("local") :optional 
    .param int haz_param_10 :opt_flag 
    .const 'Sub' $P5011 = 'cuid_141_1346968509.914' 
    capture_lex $P5011 
    if haz_param_10, default90
    null $P5010
    set _lex_param_2, $P5010
  default90:
    .lex "@meths", $P101 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$local", _lex_param_2 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 3
    repr_get_attr_obj $P5007, $P5005, $P5006, "%!methods"
    set $P5002, $P5007
    iter $P5004, $P5007
  for_next87:
    unless $P5004, for_done89
    shift $P5009, $P5004
  for_redo88:
    .const 'Sub' $P5008 = 'cuid_141_1346968509.914' 
    capture_lex $P5008
    $P5002 = $P5008($P5009)
    goto for_next87
  for_done89:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_141_1346968509.914") :anon :lex :outer("cuid_26_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 284
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 285
    find_lex $P5001, "@meths"
    $P5002 = _lex_param_0."value"()
    $P5003 = $P5001."push"($P5002)
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "method_table" :subid("cuid_27_1346968509.914") :anon :lex :outer("cuid_34_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 290
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 3
    repr_get_attr_obj $P5003, $P5001, $P5002, "%!methods"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "collisions" :subid("cuid_28_1346968509.914") :anon :lex :outer("cuid_34_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 294
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 3
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!collisions"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "name" :subid("cuid_29_1346968509.914") :anon :lex :outer("cuid_34_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 298
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 3
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!name"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "attributes" :subid("cuid_30_1346968509.914") :anon :lex :outer("cuid_34_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 302
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :named("local") :optional 
    .param int haz_param_11 :opt_flag 
    .const 'Sub' $P5011 = 'cuid_142_1346968509.914' 
    capture_lex $P5011 
    if haz_param_11, default94
    null $P5010
    set _lex_param_2, $P5010
  default94:
    .lex "@attrs", $P101 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$local", _lex_param_2 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 3
    repr_get_attr_obj $P5007, $P5005, $P5006, "%!attributes"
    set $P5002, $P5007
    iter $P5004, $P5007
  for_next91:
    unless $P5004, for_done93
    shift $P5009, $P5004
  for_redo92:
    .const 'Sub' $P5008 = 'cuid_142_1346968509.914' 
    capture_lex $P5008
    $P5002 = $P5008($P5009)
    goto for_next91
  for_done93:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_142_1346968509.914") :anon :lex :outer("cuid_30_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 304
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 305
    find_lex $P5001, "@attrs"
    $P5002 = _lex_param_0."value"()
    $P5003 = $P5001."push"($P5002)
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "roles" :subid("cuid_31_1346968509.914") :anon :lex :outer("cuid_34_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 310
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 3
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!roles"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "role_typecheck_list" :subid("cuid_32_1346968509.914") :anon :lex :outer("cuid_34_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 314
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 3
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!role_typecheck_list"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "instance_of" :subid("cuid_33_1346968509.914") :anon :lex :outer("cuid_34_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 318
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 3
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!instance_of"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_36_1346968509.914") :anon :lex :outer("cuid_1_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 324
    .const 'Sub' $P5004 = 'cuid_143_1346968509.914' 
    capture_lex $P5004 
    .const 'Sub' $P5004 = 'cuid_145_1346968509.914' 
    capture_lex $P5004 
    .const 'Sub' $P5004 = 'cuid_35_1346968509.914' 
    capture_lex $P5004 
    .lex "&has_method", $P101 
    .lex "&has_attribute", $P102 
    .lex "$?PACKAGE", $P103 
    .lex "$?CLASS", $P104 
    .const 'Sub' $P5001 = 'cuid_143_1346968509.914' 
    capture_lex $P5001
    set $P101, $P5001
    .const 'Sub' $P5002 = 'cuid_145_1346968509.914' 
    capture_lex $P5002
    set $P102, $P5002
    .const 'Sub' $P5003 = 'cuid_35_1346968509.914' 
    capture_lex $P5003
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "has_method" :subid("cuid_143_1346968509.914") :anon :lex :outer("cuid_36_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 326
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "%mt", $P101 
    .lex "$target", _lex_param_0 
    .lex "$name", _lex_param_1 
    .lex "$local", _lex_param_2 
    new $P5001, 'Hash'
    set $P101, $P5001
.annotate 'line', 327
    get_how $P5002, _lex_param_0
    $P5003 = $P5002."method_table"(_lex_param_0)
    set $P101, $P5003
    set $S5001, _lex_param_1
    exists $I5001, $P101[$S5001]
    .return ($I5001) 
.end
.HLL "nqp"
.namespace []
.sub "has_attribute" :subid("cuid_145_1346968509.914") :anon :lex :outer("cuid_36_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 331
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5011 = 'cuid_144_1346968509.914' 
    capture_lex $P5011 
    .lex "@attributes", $P101 
    .lex "$target", _lex_param_0 
    .lex "$name", _lex_param_1 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    root_new $P102, ['parrot';'Continuation']
    set_label $P102, lexotic_95
    .lex "RETURN", $P102
.annotate 'line', 332
    get_how $P5002, _lex_param_0
    $P5003 = $P5002."attributes"(_lex_param_0, 1 :named("local"))
    set $P101, $P5003
    set $P5004, $P101
    iter $P5006, $P101
  for_next99:
    unless $P5006, for_done101
    shift $P5008, $P5006
  for_redo100:
    .const 'Sub' $P5007 = 'cuid_144_1346968509.914' 
    capture_lex $P5007
    $P5004 = $P5007($P5008)
    goto for_next99
  for_done101:
    find_lex $P5009, "RETURN"
    $P5010 = $P5009(0)
    goto lexotic_96
  lexotic_95:
    .get_results ($P5010)
  lexotic_96:
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_144_1346968509.914") :anon :lex :outer("cuid_145_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 333
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 334
    $P5001 = _lex_param_0."name"()
    set $S5001, $P5001
    find_lex $P5002, "$name"
    set $S5002, $P5002
    iseq $I5001, $S5001, $S5002
    box $P5006, $I5001
    set $P5005, $P5006
    unless $I5001 goto if31_end98 
    find_lex $P5003, "RETURN"
    $P5004 = $P5003(1)
    set $P5005, $P5004
  if31_end98:
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "apply" :subid("cuid_35_1346968509.914") :anon :lex :outer("cuid_36_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 339
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .const 'Sub' $P5045 = 'cuid_146_1346968509.914' 
    capture_lex $P5045 
    .const 'Sub' $P5045 = 'cuid_147_1346968509.914' 
    capture_lex $P5045 
    .const 'Sub' $P5045 = 'cuid_148_1346968509.914' 
    capture_lex $P5045 
    .const 'Sub' $P5045 = 'cuid_149_1346968509.914' 
    capture_lex $P5045 
    .lex "$to_compose", $P101 
    .lex "$to_compose_meta", $P102 
    .lex "@collisions", $P103 
    .lex "@methods", $P104 
    .lex "@attributes", $P105 
    .lex "@done", $P106 
    .lex "self", _lex_param_0 
    .lex "$target", _lex_param_1 
    .lex "@roles", _lex_param_2 
    null $P5001
    set $P101, $P5001
    null $P5002
    set $P102, $P5002
    new $P5003, 'ResizablePMCArray'
    set $P103, $P5003
    new $P5004, 'ResizablePMCArray'
    set $P104, $P5004
    new $P5005, 'ResizablePMCArray'
    set $P105, $P5005
    new $P5006, 'ResizablePMCArray'
    set $P106, $P5006
    set $N5001, _lex_param_2
    set $N5002, 1
    iseq $I5001, $N5001, $N5002
    unless $I5001 goto if32_else102 
.annotate 'line', 344
    set $P5007, _lex_param_2[0]
    unless_null $P5007, fallback104
    null $P5008
    set $P5007, $P5008
  fallback104:
    set $P101, $P5007
    get_how $P5009, $P101
    set $P102, $P5009
    set $P5026, $P102
    goto if32_end103
  if32_else102:
.annotate 'line', 348
.annotate 'line', 349
    nqp_get_sc_object $P5010, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 3
    find_lex $P5013, "$?PACKAGE"
    get_who $P5012, $P5013
    set $P5011, $P5012["NQPMu"]
    unless_null $P5011, fallback105
    get_hll_global $P5016, "GLOBAL"
    get_who $P5015, $P5016
    set $P5014, $P5015["NQPMu"]
    unless_null $P5014, vivi_33106
    null $P5017
    set $P5014, $P5017
  vivi_33106:
    set $P5011, $P5014
  fallback105:
    $P5018 = $P5010."new_type"($P5011 :named("instance_of"))
    set $P101, $P5018
    get_how $P5019, $P101
    set $P102, $P5019
    set $P5020, _lex_param_2
    iter $P5022, _lex_param_2
  for_next107:
    unless $P5022, for_done109
    shift $P5024, $P5022
  for_redo108:
    .const 'Sub' $P5023 = 'cuid_146_1346968509.914' 
    capture_lex $P5023
    $P5020 = $P5023($P5024)
    goto for_next107
  for_done109:
.annotate 'line', 354
    $P5025 = $P102."compose"($P101)
    set $P101, $P5025
    set $P5026, $P101
  if32_end103:
.annotate 'line', 358
    $P5027 = $P102."collisions"($P101)
    set $P103, $P5027
    set $P5028, $P103
    iter $P5030, $P103
  for_next112:
    unless $P5030, for_done114
    shift $P5032, $P5030
  for_redo113:
    .const 'Sub' $P5031 = 'cuid_147_1346968509.914' 
    capture_lex $P5031
    $P5028 = $P5031($P5032)
    goto for_next112
  for_done114:
.annotate 'line', 367
    $P5033 = $P102."methods"($P101)
    set $P104, $P5033
    set $P5034, $P104
    iter $P5036, $P104
  for_next117:
    unless $P5036, for_done119
    shift $P5038, $P5036
  for_redo118:
    .const 'Sub' $P5037 = 'cuid_148_1346968509.914' 
    capture_lex $P5037
    $P5034 = $P5037($P5038)
    goto for_next117
  for_done119:
.annotate 'line', 375
    $P5039 = $P102."attributes"($P101)
    set $P105, $P5039
    set $P5040, $P105
    iter $P5042, $P105
  for_next122:
    unless $P5042, for_done124
    shift $P5044, $P5042
  for_redo123:
    .const 'Sub' $P5043 = 'cuid_149_1346968509.914' 
    capture_lex $P5043
    $P5040 = $P5043($P5044)
    goto for_next122
  for_done124:
    set $P106[0], $P101
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_146_1346968509.914") :anon :lex :outer("cuid_35_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 351
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 352
    find_lex $P5001, "$to_compose_meta"
    find_lex $P5002, "$to_compose"
    $P5003 = $P5001."add_role"($P5002, _lex_param_0)
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_147_1346968509.914") :anon :lex :outer("cuid_35_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 359
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 360
    find_lex $P5001, "$target"
    set $S5001, _lex_param_0
    $P5002 = "&has_method"($P5001, $S5001, 1)
    set $P5008, $P5002
    if $P5002 goto unless34_end111 
    set $S5006, _lex_param_0
    concat $S5005, "Method '", $S5006
    concat $S5004, $S5005, "' collides and a resolution must be provided by the class '"
.annotate 'line', 362
    find_lex $P5004, "$target"
    get_how $P5003, $P5004
    find_lex $P5005, "$target"
    $P5006 = $P5003."name"($P5005)
    set $S5007, $P5006
    concat $S5003, $S5004, $S5007
    concat $S5002, $S5003, "'"
    box $P5007, $S5002
    die $P5007
    set $P5008, $P5007
  unless34_end111:
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_148_1346968509.914") :anon :lex :outer("cuid_35_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 368
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 369
    find_lex $P5001, "$target"
    set $S5001, _lex_param_0
    $P5002 = "&has_method"($P5001, $S5001, 0)
    set $P5007, $P5002
    if $P5002 goto unless35_end116 
.annotate 'line', 370
    find_lex $P5004, "$target"
    get_how $P5003, $P5004
    find_lex $P5005, "$target"
    set $S5002, _lex_param_0
    $P5006 = $P5003."add_method"($P5005, $S5002, _lex_param_0)
    set $P5007, $P5006
  unless35_end116:
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_149_1346968509.914") :anon :lex :outer("cuid_35_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 376
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 377
    find_lex $P5001, "$target"
    $P5002 = _lex_param_0."name"()
    $P5003 = "&has_attribute"($P5001, $P5002)
    set $P5010, $P5003
    unless $P5003 goto if36_end121 
.annotate 'line', 378
    $P5004 = _lex_param_0."name"()
    set $S5005, $P5004
    concat $S5004, "Attribute '", $S5005
    concat $S5003, $S5004, "' already exists in the class '"
.annotate 'line', 379
    find_lex $P5006, "$target"
    get_how $P5005, $P5006
    find_lex $P5007, "$target"
    $P5008 = $P5005."name"($P5007)
    set $S5006, $P5008
    concat $S5002, $S5003, $S5006
    concat $S5001, $S5002, "', but a role also wishes to compose it"
    box $P5009, $S5001
    die $P5009
    set $P5010, $P5009
  if36_end121:
.annotate 'line', 381
    find_lex $P5012, "$target"
    get_how $P5011, $P5012
    find_lex $P5013, "$target"
    $P5014 = $P5011."add_attribute"($P5013, _lex_param_0)
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_55_1346968509.914") :anon :lex :outer("cuid_1_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 397
    .const 'Sub' $P5022 = 'cuid_37_1346968509.914' 
    capture_lex $P5022 
    .const 'Sub' $P5022 = 'cuid_38_1346968509.914' 
    capture_lex $P5022 
    .const 'Sub' $P5022 = 'cuid_39_1346968509.914' 
    capture_lex $P5022 
    .const 'Sub' $P5022 = 'cuid_40_1346968509.914' 
    capture_lex $P5022 
    .const 'Sub' $P5022 = 'cuid_41_1346968509.914' 
    capture_lex $P5022 
    .const 'Sub' $P5022 = 'cuid_42_1346968509.914' 
    capture_lex $P5022 
    .const 'Sub' $P5022 = 'cuid_43_1346968509.914' 
    capture_lex $P5022 
    .const 'Sub' $P5022 = 'cuid_44_1346968509.914' 
    capture_lex $P5022 
    .const 'Sub' $P5022 = 'cuid_45_1346968509.914' 
    capture_lex $P5022 
    .const 'Sub' $P5022 = 'cuid_46_1346968509.914' 
    capture_lex $P5022 
    .const 'Sub' $P5022 = 'cuid_47_1346968509.914' 
    capture_lex $P5022 
    .const 'Sub' $P5022 = 'cuid_48_1346968509.914' 
    capture_lex $P5022 
    .const 'Sub' $P5022 = 'cuid_49_1346968509.914' 
    capture_lex $P5022 
    .const 'Sub' $P5022 = 'cuid_50_1346968509.914' 
    capture_lex $P5022 
    .const 'Sub' $P5022 = 'cuid_51_1346968509.914' 
    capture_lex $P5022 
    .const 'Sub' $P5022 = 'cuid_52_1346968509.914' 
    capture_lex $P5022 
    .const 'Sub' $P5022 = 'cuid_53_1346968509.914' 
    capture_lex $P5022 
    .const 'Sub' $P5022 = 'cuid_54_1346968509.914' 
    capture_lex $P5022 
    .lex "$archetypes", $P101 
    .lex "$?PACKAGE", $P102 
    .lex "$?CLASS", $P103 
    null $P5001
    set $P101, $P5001
.annotate 'line', 421
    nqp_get_sc_object $P5002, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 1
    $P5003 = $P5002."new"(1 :named("nominal"), 1 :named("composable"), 1 :named("parametric"))
    set $P101, $P5003
    .const 'Sub' $P5004 = 'cuid_37_1346968509.914' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_38_1346968509.914' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_39_1346968509.914' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_40_1346968509.914' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_41_1346968509.914' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_42_1346968509.914' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_43_1346968509.914' 
    capture_lex $P5010
    .const 'Sub' $P5011 = 'cuid_44_1346968509.914' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_45_1346968509.914' 
    capture_lex $P5012
    .const 'Sub' $P5013 = 'cuid_46_1346968509.914' 
    capture_lex $P5013
    .const 'Sub' $P5014 = 'cuid_47_1346968509.914' 
    capture_lex $P5014
    .const 'Sub' $P5015 = 'cuid_48_1346968509.914' 
    capture_lex $P5015
    .const 'Sub' $P5016 = 'cuid_49_1346968509.914' 
    capture_lex $P5016
    .const 'Sub' $P5017 = 'cuid_50_1346968509.914' 
    capture_lex $P5017
    .const 'Sub' $P5018 = 'cuid_51_1346968509.914' 
    capture_lex $P5018
    .const 'Sub' $P5019 = 'cuid_52_1346968509.914' 
    capture_lex $P5019
    .const 'Sub' $P5020 = 'cuid_53_1346968509.914' 
    capture_lex $P5020
    .const 'Sub' $P5021 = 'cuid_54_1346968509.914' 
    capture_lex $P5021
    .return ($P5021) 
.end
.HLL "nqp"
.namespace []
.sub "archetypes" :subid("cuid_37_1346968509.914") :anon :lex :outer("cuid_55_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 422
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    find_lex $P5001, "$archetypes"
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "new" :subid("cuid_38_1346968509.914") :anon :lex :outer("cuid_55_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 431
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("name") 
    .lex "$obj", $P101 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    null $P5001
    set $P101, $P5001
    nqp_decontainerize $P5003, _lex_param_0
    repr_instance_of $P5002, $P5003
    set $P101, $P5002
.annotate 'line', 433
    $P5004 = $P101."BUILD"(_lex_param_1 :named("name"))
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "BUILD" :subid("cuid_39_1346968509.914") :anon :lex :outer("cuid_55_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 437
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("name") 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 5
    repr_bind_attr_obj $P5001, $P5002, "$!name", _lex_param_1
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 5
    new $P5005, 'Hash'
    repr_bind_attr_obj $P5003, $P5004, "%!attributes", $P5005
    nqp_decontainerize $P5006, _lex_param_0
    nqp_get_sc_object $P5007, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 5
    new $P5008, 'Hash'
    repr_bind_attr_obj $P5006, $P5007, "%!methods", $P5008
    nqp_decontainerize $P5009, _lex_param_0
    nqp_get_sc_object $P5010, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 5
    new $P5011, 'ResizablePMCArray'
    repr_bind_attr_obj $P5009, $P5010, "@!multi_methods_to_incorporate", $P5011
    nqp_decontainerize $P5012, _lex_param_0
    nqp_get_sc_object $P5013, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 5
    new $P5014, 'ResizablePMCArray'
    repr_bind_attr_obj $P5012, $P5013, "@!roles", $P5014
    nqp_decontainerize $P5015, _lex_param_0
    nqp_get_sc_object $P5016, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 5
    box $P5017, 0
    repr_bind_attr_obj $P5015, $P5016, "$!composed", $P5017
    .return ($P5017) 
.end
.HLL "nqp"
.namespace []
.sub "new_type" :subid("cuid_40_1346968509.914") :anon :lex :outer("cuid_55_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 448
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("name") :optional 
    .param int haz_param_12 :opt_flag 
    if haz_param_12, default125
    box $P5006, "<anon>"
    set _lex_param_1, $P5006
  default125:
    .lex "$metarole", $P101 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    null $P5001
    set $P101, $P5001
.annotate 'line', 449
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."new"(_lex_param_1 :named("name"))
    set $P101, $P5003
    repr_type_object_for $P5004, $P101, "Uninstantiable"
    new $P5005, 'Hash'
    set_who $P5004, $P5005
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "set_body_block" :subid("cuid_41_1346968509.914") :anon :lex :outer("cuid_55_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 453
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$body_block", _lex_param_2 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 5
    repr_bind_attr_obj $P5001, $P5002, "$!body_block", _lex_param_2
    .return (_lex_param_2) 
.end
.HLL "nqp"
.namespace []
.sub "add_method" :subid("cuid_42_1346968509.914") :anon :lex :outer("cuid_55_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 457
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$name", _lex_param_2 
    .lex "$code_obj", _lex_param_3 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 5
    repr_get_attr_obj $P5003, $P5001, $P5002, "%!methods"
    set $S5001, _lex_param_2
    exists $I5001, $P5003[$S5001]
    box $P5006, $I5001
    set $P5005, $P5006
    unless $I5001 goto if37_end127 
.annotate 'line', 458
    set $S5003, _lex_param_2
    concat $S5002, "This role already has a method named ", $S5003
    box $P5004, $S5002
    die $P5004
    set $P5005, $P5004
  if37_end127:
    nqp_decontainerize $P5007, _lex_param_0
    nqp_get_sc_object $P5008, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 5
    repr_get_attr_obj $P5009, $P5007, $P5008, "%!methods"
    set $S5004, _lex_param_2
    set $P5009[$S5004], _lex_param_3
    .return (_lex_param_3) 
.end
.HLL "nqp"
.namespace []
.sub "add_multi_method" :subid("cuid_43_1346968509.914") :anon :lex :outer("cuid_55_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 464
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .lex "%todo", $P101 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$name", _lex_param_2 
    .lex "$code_obj", _lex_param_3 
    new $P5001, 'Hash'
    set $P101, $P5001
    set $P101["name"], _lex_param_2
    set $P101["code"], _lex_param_3
    nqp_decontainerize $P5002, _lex_param_0
    nqp_get_sc_object $P5003, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 5
    repr_get_attr_obj $P5004, $P5002, $P5003, "@!multi_methods_to_incorporate"
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 5
    repr_get_attr_obj $P5007, $P5005, $P5006, "@!multi_methods_to_incorporate"
    set $N5001, $P5007
    set $I5001, $N5001
    set $P5004[$I5001], $P101
    .return (_lex_param_3) 
.end
.HLL "nqp"
.namespace []
.sub "add_attribute" :subid("cuid_44_1346968509.914") :anon :lex :outer("cuid_55_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 472
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "$name", $P101 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$meta_attr", _lex_param_2 
    null $P5001
    set $P101, $P5001
.annotate 'line', 473
    $P5002 = _lex_param_2."name"()
    set $P101, $P5002
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 5
    repr_get_attr_obj $P5005, $P5003, $P5004, "%!attributes"
    set $S5001, $P101
    exists $I5001, $P5005[$S5001]
    box $P5008, $I5001
    set $P5007, $P5008
    unless $I5001 goto if38_end129 
.annotate 'line', 474
    set $S5003, $P101
    concat $S5002, "This role already has an attribute named ", $S5003
    box $P5006, $S5002
    die $P5006
    set $P5007, $P5006
  if38_end129:
    nqp_decontainerize $P5009, _lex_param_0
    nqp_get_sc_object $P5010, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 5
    repr_get_attr_obj $P5011, $P5009, $P5010, "%!attributes"
    set $S5004, $P101
    set $P5011[$S5004], _lex_param_2
    .return (_lex_param_2) 
.end
.HLL "nqp"
.namespace []
.sub "add_parent" :subid("cuid_45_1346968509.914") :anon :lex :outer("cuid_55_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 480
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$parent", _lex_param_2 
    box $P5001, "A role cannot inherit from a class"
    die $P5001
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "add_role" :subid("cuid_46_1346968509.914") :anon :lex :outer("cuid_55_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 484
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$role", _lex_param_2 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 5
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!roles"
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 5
    repr_get_attr_obj $P5006, $P5004, $P5005, "@!roles"
    set $N5001, $P5006
    set $I5001, $N5001
    set $P5003[$I5001], _lex_param_2
    .return (_lex_param_2) 
.end
.HLL "nqp"
.namespace []
.sub "compose" :subid("cuid_47_1346968509.914") :anon :lex :outer("cuid_55_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 489
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 5
    box $P5003, 1
    repr_bind_attr_obj $P5001, $P5002, "$!composed", $P5003
    .return (_lex_param_1) 
.end
.HLL "nqp"
.namespace []
.sub "parametric" :subid("cuid_48_1346968509.914") :anon :lex :outer("cuid_55_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 500
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .return (1) 
.end
.HLL "nqp"
.namespace []
.sub "specialize" :subid("cuid_49_1346968509.914") :anon :lex :outer("cuid_55_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 506
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .const 'Sub' $P5047 = 'cuid_150_1346968509.914' 
    capture_lex $P5047 
    .const 'Sub' $P5047 = 'cuid_151_1346968509.914' 
    capture_lex $P5047 
    .const 'Sub' $P5047 = 'cuid_152_1346968509.914' 
    capture_lex $P5047 
    .const 'Sub' $P5047 = 'cuid_153_1346968509.914' 
    capture_lex $P5047 
    .lex "$irole", $P101 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$class_arg", _lex_param_2 
    null $P5001
    set $P101, $P5001
    root_new $P102, ['parrot';'Continuation']
    set_label $P102, lexotic_130
    .lex "RETURN", $P102
.annotate 'line', 509
    nqp_decontainerize $P5002, _lex_param_0
    nqp_get_sc_object $P5003, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 5
    repr_get_attr_obj $P5004, $P5002, $P5003, "$!body_block"
    $P5005 = $P5004(_lex_param_2)
.annotate 'line', 512
    nqp_get_sc_object $P5006, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 3
    nqp_decontainerize $P5007, _lex_param_0
    nqp_get_sc_object $P5008, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 5
    repr_get_attr_obj $P5009, $P5007, $P5008, "$!name"
    $P5010 = $P5006."new_type"($P5009 :named("name"), _lex_param_1 :named("instance_of"))
    set $P101, $P5010
    nqp_decontainerize $P5014, _lex_param_0
    nqp_get_sc_object $P5015, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 5
    repr_get_attr_obj $P5016, $P5014, $P5015, "%!attributes"
    set $P5011, $P5016
    iter $P5013, $P5016
  for_next132:
    unless $P5013, for_done134
    shift $P5018, $P5013
  for_redo133:
    .const 'Sub' $P5017 = 'cuid_150_1346968509.914' 
    capture_lex $P5017
    $P5011 = $P5017($P5018)
    goto for_next132
  for_done134:
    nqp_decontainerize $P5022, _lex_param_0
    nqp_get_sc_object $P5023, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 5
    repr_get_attr_obj $P5024, $P5022, $P5023, "%!methods"
    set $P5019, $P5024
    iter $P5021, $P5024
  for_next135:
    unless $P5021, for_done137
    shift $P5026, $P5021
  for_redo136:
    .const 'Sub' $P5025 = 'cuid_151_1346968509.914' 
    capture_lex $P5025
    $P5019 = $P5025($P5026)
    goto for_next135
  for_done137:
    nqp_decontainerize $P5030, _lex_param_0
    nqp_get_sc_object $P5031, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 5
    repr_get_attr_obj $P5032, $P5030, $P5031, "@!multi_methods_to_incorporate"
    set $P5027, $P5032
    iter $P5029, $P5032
  for_next140:
    unless $P5029, for_done142
    shift $P5034, $P5029
  for_redo141:
    .const 'Sub' $P5033 = 'cuid_152_1346968509.914' 
    capture_lex $P5033
    $P5027 = $P5033($P5034)
    goto for_next140
  for_done142:
    nqp_decontainerize $P5038, _lex_param_0
    nqp_get_sc_object $P5039, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 5
    repr_get_attr_obj $P5040, $P5038, $P5039, "@!roles"
    set $P5035, $P5040
    iter $P5037, $P5040
  for_next143:
    unless $P5037, for_done145
    shift $P5042, $P5037
  for_redo144:
    .const 'Sub' $P5041 = 'cuid_153_1346968509.914' 
    capture_lex $P5041
    $P5035 = $P5041($P5042)
    goto for_next143
  for_done145:
.annotate 'line', 535
    get_how $P5043, $P101
    $P5044 = $P5043."compose"($P101)
    find_lex $P5045, "RETURN"
    $P5046 = $P5045($P101)
    goto lexotic_131
  lexotic_130:
    .get_results ($P5046)
  lexotic_131:
    .return ($P5046) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_150_1346968509.914") :anon :lex :outer("cuid_49_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 516
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 517
    find_lex $P5002, "$irole"
    get_how $P5001, $P5002
    find_lex $P5003, "$irole"
    $P5004 = _lex_param_0."value"()
    $P5005 = $P5001."add_attribute"($P5003, $P5004)
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_151_1346968509.914") :anon :lex :outer("cuid_49_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 521
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 522
    find_lex $P5002, "$irole"
    get_how $P5001, $P5002
    find_lex $P5003, "$irole"
    $P5004 = _lex_param_0."key"()
    $P5005 = _lex_param_0."value"()
    $P5006 = $P5005."clone"()
    $P5007 = $P5001."add_method"($P5003, $P5004, $P5006)
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_152_1346968509.914") :anon :lex :outer("cuid_49_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 524
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 525
    find_lex $P5002, "$irole"
    get_how $P5001, $P5002
    find_lex $P5003, "$irole"
    set $P5004, _lex_param_0["name"]
    unless_null $P5004, fallback138
    null $P5005
    set $P5004, $P5005
  fallback138:
    set $P5006, _lex_param_0["code"]
    unless_null $P5006, fallback139
    null $P5007
    set $P5006, $P5007
  fallback139:
    $P5008 = "&reify_method"($P5006)
    $P5009 = $P5001."add_multi_method"($P5003, $P5004, $P5008)
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_153_1346968509.914") :anon :lex :outer("cuid_49_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 529
    .param pmc _lex_param_0 
    .lex "$specialized", $P101 
    .lex "$_", _lex_param_0 
    null $P5001
    set $P101, $P5001
.annotate 'line', 530
    find_lex $P5003, "$irole"
    get_how $P5002, $P5003
    find_lex $P5004, "$irole"
    find_lex $P5005, "$class_arg"
    $P5006 = $P5002."specialize"($P5004, $P5005)
    set $P101, $P5006
.annotate 'line', 531
    find_lex $P5008, "$irole"
    get_how $P5007, $P5008
    find_lex $P5009, "$irole"
    $P5010 = $P5007."add_role"($P5009, $P101)
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "methods" :subid("cuid_50_1346968509.914") :anon :lex :outer("cuid_55_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 543
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :named("local") :optional 
    .param int haz_param_13 :opt_flag 
    .const 'Sub' $P5011 = 'cuid_154_1346968509.914' 
    capture_lex $P5011 
    if haz_param_13, default149
    null $P5010
    set _lex_param_2, $P5010
  default149:
    .lex "@meths", $P101 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$local", _lex_param_2 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 5
    repr_get_attr_obj $P5007, $P5005, $P5006, "%!methods"
    set $P5002, $P5007
    iter $P5004, $P5007
  for_next146:
    unless $P5004, for_done148
    shift $P5009, $P5004
  for_redo147:
    .const 'Sub' $P5008 = 'cuid_154_1346968509.914' 
    capture_lex $P5008
    $P5002 = $P5008($P5009)
    goto for_next146
  for_done148:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_154_1346968509.914") :anon :lex :outer("cuid_50_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 545
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 546
    find_lex $P5001, "@meths"
    $P5002 = _lex_param_0."value"()
    $P5003 = $P5001."push"($P5002)
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "method_table" :subid("cuid_51_1346968509.914") :anon :lex :outer("cuid_55_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 551
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 5
    repr_get_attr_obj $P5003, $P5001, $P5002, "%!methods"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "name" :subid("cuid_52_1346968509.914") :anon :lex :outer("cuid_55_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 555
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 5
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!name"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "attributes" :subid("cuid_53_1346968509.914") :anon :lex :outer("cuid_55_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 559
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :named("local") :optional 
    .param int haz_param_14 :opt_flag 
    .const 'Sub' $P5011 = 'cuid_155_1346968509.914' 
    capture_lex $P5011 
    if haz_param_14, default153
    null $P5010
    set _lex_param_2, $P5010
  default153:
    .lex "@attrs", $P101 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$local", _lex_param_2 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 5
    repr_get_attr_obj $P5007, $P5005, $P5006, "%!attributes"
    set $P5002, $P5007
    iter $P5004, $P5007
  for_next150:
    unless $P5004, for_done152
    shift $P5009, $P5004
  for_redo151:
    .const 'Sub' $P5008 = 'cuid_155_1346968509.914' 
    capture_lex $P5008
    $P5002 = $P5008($P5009)
    goto for_next150
  for_done152:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_155_1346968509.914") :anon :lex :outer("cuid_53_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 561
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 562
    find_lex $P5001, "@attrs"
    $P5002 = _lex_param_0."value"()
    $P5003 = $P5001."push"($P5002)
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "roles" :subid("cuid_54_1346968509.914") :anon :lex :outer("cuid_55_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 567
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 5
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!roles"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_98_1346968509.914") :anon :lex :outer("cuid_1_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 577
    .const 'Sub' $P5049 = 'cuid_158_1346968509.914' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_163_1346968509.914' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_56_1346968509.914' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_57_1346968509.914' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_58_1346968509.914' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_59_1346968509.914' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_60_1346968509.914' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_61_1346968509.914' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_62_1346968509.914' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_63_1346968509.914' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_64_1346968509.914' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_65_1346968509.914' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_66_1346968509.914' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_67_1346968509.914' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_68_1346968509.914' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_69_1346968509.914' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_70_1346968509.914' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_71_1346968509.914' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_72_1346968509.914' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_73_1346968509.914' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_74_1346968509.914' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_75_1346968509.914' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_76_1346968509.914' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_77_1346968509.914' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_78_1346968509.914' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_79_1346968509.914' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_80_1346968509.914' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_81_1346968509.914' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_82_1346968509.914' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_83_1346968509.914' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_84_1346968509.914' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_85_1346968509.914' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_86_1346968509.914' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_87_1346968509.914' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_88_1346968509.914' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_89_1346968509.914' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_90_1346968509.914' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_91_1346968509.914' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_92_1346968509.914' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_93_1346968509.914' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_94_1346968509.914' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_95_1346968509.914' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_96_1346968509.914' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_97_1346968509.914' 
    capture_lex $P5049 
    .lex "%caches", $P101 
    .lex "$archetypes", $P102 
    .lex "&compute_c3_mro", $P103 
    .lex "&c3_merge", $P104 
    .lex "$?PACKAGE", $P105 
    .lex "$?CLASS", $P106 
    new $P5001, 'Hash'
    set $P101, $P5001
    null $P5002
    set $P102, $P5002
    .const 'Sub' $P5003 = 'cuid_158_1346968509.914' 
    capture_lex $P5003
    set $P103, $P5003
    .const 'Sub' $P5004 = 'cuid_163_1346968509.914' 
    capture_lex $P5004
    set $P104, $P5004
.annotate 'line', 626
    nqp_get_sc_object $P5005, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 1
    $P5006 = $P5005."new"(1 :named("nominal"), 1 :named("inheritable"))
    set $P102, $P5006
    .const 'Sub' $P5007 = 'cuid_56_1346968509.914' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_57_1346968509.914' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_58_1346968509.914' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_59_1346968509.914' 
    capture_lex $P5010
    .const 'Sub' $P5011 = 'cuid_60_1346968509.914' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_61_1346968509.914' 
    capture_lex $P5012
    .const 'Sub' $P5013 = 'cuid_62_1346968509.914' 
    capture_lex $P5013
    .const 'Sub' $P5014 = 'cuid_63_1346968509.914' 
    capture_lex $P5014
    .const 'Sub' $P5015 = 'cuid_64_1346968509.914' 
    capture_lex $P5015
    .const 'Sub' $P5016 = 'cuid_65_1346968509.914' 
    capture_lex $P5016
    .const 'Sub' $P5017 = 'cuid_66_1346968509.914' 
    capture_lex $P5017
    .const 'Sub' $P5018 = 'cuid_67_1346968509.914' 
    capture_lex $P5018
    .const 'Sub' $P5019 = 'cuid_68_1346968509.914' 
    capture_lex $P5019
    .const 'Sub' $P5020 = 'cuid_69_1346968509.914' 
    capture_lex $P5020
    .const 'Sub' $P5021 = 'cuid_70_1346968509.914' 
    capture_lex $P5021
    .const 'Sub' $P5022 = 'cuid_71_1346968509.914' 
    capture_lex $P5022
    .const 'Sub' $P5023 = 'cuid_72_1346968509.914' 
    capture_lex $P5023
    .const 'Sub' $P5024 = 'cuid_73_1346968509.914' 
    capture_lex $P5024
    .const 'Sub' $P5025 = 'cuid_74_1346968509.914' 
    capture_lex $P5025
    .const 'Sub' $P5026 = 'cuid_75_1346968509.914' 
    capture_lex $P5026
    .const 'Sub' $P5027 = 'cuid_76_1346968509.914' 
    capture_lex $P5027
    .const 'Sub' $P5028 = 'cuid_77_1346968509.914' 
    capture_lex $P5028
    .const 'Sub' $P5029 = 'cuid_78_1346968509.914' 
    capture_lex $P5029
    .const 'Sub' $P5030 = 'cuid_79_1346968509.914' 
    capture_lex $P5030
    .const 'Sub' $P5031 = 'cuid_80_1346968509.914' 
    capture_lex $P5031
    .const 'Sub' $P5032 = 'cuid_81_1346968509.914' 
    capture_lex $P5032
    .const 'Sub' $P5033 = 'cuid_82_1346968509.914' 
    capture_lex $P5033
    .const 'Sub' $P5034 = 'cuid_83_1346968509.914' 
    capture_lex $P5034
    .const 'Sub' $P5035 = 'cuid_84_1346968509.914' 
    capture_lex $P5035
    .const 'Sub' $P5036 = 'cuid_85_1346968509.914' 
    capture_lex $P5036
    .const 'Sub' $P5037 = 'cuid_86_1346968509.914' 
    capture_lex $P5037
    .const 'Sub' $P5038 = 'cuid_87_1346968509.914' 
    capture_lex $P5038
    .const 'Sub' $P5039 = 'cuid_88_1346968509.914' 
    capture_lex $P5039
    .const 'Sub' $P5040 = 'cuid_89_1346968509.914' 
    capture_lex $P5040
    .const 'Sub' $P5041 = 'cuid_90_1346968509.914' 
    capture_lex $P5041
    .const 'Sub' $P5042 = 'cuid_91_1346968509.914' 
    capture_lex $P5042
    .const 'Sub' $P5043 = 'cuid_92_1346968509.914' 
    capture_lex $P5043
    .const 'Sub' $P5044 = 'cuid_93_1346968509.914' 
    capture_lex $P5044
    .const 'Sub' $P5045 = 'cuid_94_1346968509.914' 
    capture_lex $P5045
    .const 'Sub' $P5046 = 'cuid_95_1346968509.914' 
    capture_lex $P5046
    .const 'Sub' $P5047 = 'cuid_96_1346968509.914' 
    capture_lex $P5047
    .const 'Sub' $P5048 = 'cuid_97_1346968509.914' 
    capture_lex $P5048
    .return ($P5048) 
.end
.HLL "nqp"
.namespace []
.sub "compute_c3_mro" :subid("cuid_158_1346968509.914") :anon :lex :outer("cuid_98_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 877
    .param pmc _lex_param_0 
    .const 'Sub' $P5016 = 'cuid_157_1346968509.914' 
    capture_lex $P5016 
    .lex "@immediate_parents", $P101 
    .lex "@result", $P102 
    .lex "$class", _lex_param_0 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    new $P5002, 'ResizablePMCArray'
    set $P102, $P5002
    root_new $P103, ['parrot';'Continuation']
    set_label $P103, lexotic_154
    .lex "RETURN", $P103
.annotate 'line', 878
    get_how $P5003, _lex_param_0
    $P5004 = $P5003."parents"(_lex_param_0, 1 :named("local"))
    set $P101, $P5004
    set $N5001, $P101
    box $P5012, $N5001
    set $P5011, $P5012
    unless $N5001 goto if39_end157 
.annotate 'line', 882
    set $N5002, $P101
    set $N5003, 1
    iseq $I5001, $N5002, $N5003
    unless $I5001 goto if40_else158 
.annotate 'line', 883
.annotate 'line', 884
    set $P5005, $P101[0]
    unless_null $P5005, fallback160
    null $P5006
    set $P5005, $P5006
  fallback160:
    $P5007 = "&compute_c3_mro"($P5005)
    set $P102, $P5007
    set $P5010, $P102
    goto if40_end159
  if40_else158:
    .const 'Sub' $P5008 = 'cuid_157_1346968509.914' 
    capture_lex $P5008
    $P5009 = $P5008()
    set $P5010, $P5009
  if40_end159:
    set $P5011, $P5010
  if39_end157:
.annotate 'line', 898
    $P5013 = $P102."unshift"(_lex_param_0)
    find_lex $P5014, "RETURN"
    $P5015 = $P5014($P102)
    goto lexotic_155
  lexotic_154:
    .get_results ($P5015)
  lexotic_155:
    .return ($P5015) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_157_1346968509.914") :anon :lex :outer("cuid_158_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 885
    .const 'Sub' $P5011 = 'cuid_156_1346968509.914' 
    capture_lex $P5011 
    .lex "@merge_list", $P101 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    find_lex $P5005, "@immediate_parents"
    set $P5002, $P5005
    iter $P5004, $P5005
  for_next161:
    unless $P5004, for_done163
    shift $P5007, $P5004
  for_redo162:
    .const 'Sub' $P5006 = 'cuid_156_1346968509.914' 
    capture_lex $P5006
    $P5002 = $P5006($P5007)
    goto for_next161
  for_done163:
.annotate 'line', 892
    find_lex $P5008, "@immediate_parents"
    $P5009 = $P101."push"($P5008)
.annotate 'line', 893
    $P5010 = "&c3_merge"($P101)
    store_lex "@result", $P5010
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_156_1346968509.914") :anon :lex :outer("cuid_157_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 889
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 890
    find_lex $P5001, "@merge_list"
    $P5002 = "&compute_c3_mro"(_lex_param_0)
    $P5003 = $P5001."push"($P5002)
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "c3_merge" :subid("cuid_163_1346968509.914") :anon :lex :outer("cuid_98_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 903
    .param pmc _lex_param_0 
    .const 'Sub' $P5029 = 'cuid_162_1346968509.914' 
    capture_lex $P5029 
    .const 'Sub' $P5029 = 'cuid_165_1346968509.914' 
    capture_lex $P5029 
    .lex "@result", $P101 
    .lex "$accepted", $P102 
    .lex "$something_accepted", $P103 
    .lex "$cand_count", $P104 
    .lex "$i", $P105 
    .lex "@merge_list", _lex_param_0 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    null $P5002
    set $P102, $P5002
    null $P5003
    set $P103, $P5003
    null $P5004
    set $P104, $P5004
    null $P5005
    set $P105, $P5005
    root_new $P106, ['parrot';'Continuation']
    set_label $P106, lexotic_164
    .lex "RETURN", $P106
    box $P5006, 0
    set $P103, $P5006
    box $P5007, 0
    set $P104, $P5007
    set $P5008, _lex_param_0
    iter $P5010, _lex_param_0
    new $P5012, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5012, for_handlers184
    push_eh $P5012
  for_next185:
    unless $P5010, for_done187
    shift $P5013, $P5010
  for_redo186:
    .const 'Sub' $P5011 = 'cuid_162_1346968509.914' 
    capture_lex $P5011
    $P5008 = $P5011($P5013)
    goto for_next185
  for_handlers184:
    .get_results ($P5012)
    pop_upto_eh $P5012
    getattribute $P5012, $P5012, 'type'
    eq $P5012, .CONTROL_LOOP_NEXT, for_next185
    eq $P5012, .CONTROL_LOOP_REDO, for_redo186
  for_done187:
    pop_eh 
    set $N5001, $P104
    set $N5002, 0
    iseq $I5001, $N5001, $N5002
    box $P5017, $I5001
    set $P5016, $P5017
    unless $I5001 goto if46_end189 
.annotate 'line', 940
    find_lex $P5014, "RETURN"
    $P5015 = $P5014($P101)
    set $P5016, $P5015
  if46_end189:
    set $P5019, $P103
    if $P103 goto unless47_end191 
.annotate 'line', 945
    box $P5018, "Could not build C3 linearization: ambiguous hierarchy"
    die $P5018
    set $P5019, $P5018
  unless47_end191:
    box $P5020, 0
    set $P105, $P5020
  while48_test192:
    set $N5003, $P105
    set $N5004, _lex_param_0
    islt $I5002, $N5003, $N5004
    box $P5024, $I5002
    set $P5023, $P5024
    unless $I5002 goto while48_done196 
  while48_redo194:
    .const 'Sub' $P5021 = 'cuid_165_1346968509.914' 
    capture_lex $P5021
    $P5022 = $P5021()
    set $P5023, $P5022
    goto while48_test192 
  while48_done196:
.annotate 'line', 964
    $P5025 = "&c3_merge"(_lex_param_0)
    set $P101, $P5025
.annotate 'line', 965
    $P5026 = $P101."unshift"($P102)
    find_lex $P5027, "RETURN"
    $P5028 = $P5027($P101)
    goto lexotic_165
  lexotic_164:
    .get_results ($P5028)
  lexotic_165:
    .return ($P5028) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_162_1346968509.914") :anon :lex :outer("cuid_163_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 910
    .param pmc _lex_param_0 
    .const 'Sub' $P5006 = 'cuid_161_1346968509.914' 
    capture_lex $P5006 
    .lex "@cand_list", $P101 
    .lex "$_", _lex_param_0 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    set $P101, _lex_param_0
    set $N5001, $P101
    box $P5005, $N5001
    set $P5004, $P5005
    unless $N5001 goto if41_end167 
    .const 'Sub' $P5002 = 'cuid_161_1346968509.914' 
    capture_lex $P5002
    $P5003 = $P5002()
    set $P5004, $P5003
  if41_end167:
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_161_1346968509.914") :anon :lex :outer("cuid_162_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 912
    .const 'Sub' $P5018 = 'cuid_160_1346968509.914' 
    capture_lex $P5018 
    .lex "$rejected", $P101 
    .lex "$cand_class", $P102 
    null $P5001
    set $P101, $P5001
    null $P5002
    set $P102, $P5002
    box $P5003, 0
    set $P101, $P5003
    find_lex $P5005, "@cand_list"
    set $P5004, $P5005[0]
    unless_null $P5004, fallback168
    null $P5006
    set $P5004, $P5006
  fallback168:
    set $P102, $P5004
    find_lex $P5007, "$cand_count"
    set $N5002, $P5007
    set $N5003, 1
    add $N5001, $N5002, $N5003
    box $P5008, $N5001
    store_lex "$cand_count", $P5008
    find_lex $P5012, "@merge_list"
    set $P5009, $P5012
    iter $P5011, $P5012
  for_next179:
    unless $P5011, for_done181
    shift $P5014, $P5011
  for_redo180:
    .const 'Sub' $P5013 = 'cuid_160_1346968509.914' 
    capture_lex $P5013
    $P5009 = $P5013($P5014)
    goto for_next179
  for_done181:
    set $P5016, $P101
    if $P101 goto unless45_end183 
.annotate 'line', 931
    store_lex "$accepted", $P102
    box $P5015, 1
    store_lex "$something_accepted", $P5015
    die 0, .CONTROL_LOOP_LAST
    box $P5017, 0
    set $P5016, $P5017
  unless45_end183:
    .return ($P5016) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_160_1346968509.914") :anon :lex :outer("cuid_161_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 916
    .param pmc _lex_param_0 
    .const 'Sub' $P5006 = 'cuid_159_1346968509.914' 
    capture_lex $P5006 
    .lex "$_", _lex_param_0 
    get_id $I5002, _lex_param_0
    find_lex $P5001, "@cand_list"
    get_id $I5003, $P5001
    iseq $I5001, $I5002, $I5003
    box $P5005, $I5001
    set $P5004, $P5005
    if $I5001 goto unless42_end170 
    .const 'Sub' $P5002 = 'cuid_159_1346968509.914' 
    capture_lex $P5002
    $P5003 = $P5002()
    set $P5004, $P5003
  unless42_end170:
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_159_1346968509.914") :anon :lex :outer("cuid_160_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 918
    .lex "$cur_pos", $P101 
    null $P5001
    set $P101, $P5001
    box $P5002, 1
    set $P101, $P5002
  while43_test171:
    set $N5001, $P101
    find_lex $P5003, "$_"
    set $N5002, $P5003
    isle $I5001, $N5001, $N5002
    box $P5013, $I5001
    set $P5012, $P5013
    unless $I5001 goto while43_done175 
  while43_redo173:
.annotate 'line', 921
    find_lex $P5005, "$_"
    set $I5004, $P101
    set $P5004, $P5005[$I5004]
    unless_null $P5004, fallback178
    null $P5006
    set $P5004, $P5006
  fallback178:
    get_id $I5003, $P5004
    find_lex $P5007, "$cand_class"
    get_id $I5005, $P5007
    iseq $I5002, $I5003, $I5005
    box $P5010, $I5002
    set $P5009, $P5010
    unless $I5002 goto if44_end177 
.annotate 'line', 922
    box $P5008, 1
    store_lex "$rejected", $P5008
    set $P5009, $P5008
  if44_end177:
    set $N5004, $P101
    set $N5005, 1
    add $N5003, $N5004, $N5005
    box $P5011, $N5003
    set $P101, $P5011
    set $P5012, $P101
    goto while43_test171 
  while43_done175:
    .return ($P5012) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_165_1346968509.914") :anon :lex :outer("cuid_163_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 951
    .const 'Sub' $P5015 = 'cuid_164_1346968509.914' 
    capture_lex $P5015 
    .lex "@new_list", $P101 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    find_lex $P5006, "@merge_list"
    find_lex $P5007, "$i"
    set $I5001, $P5007
    set $P5005, $P5006[$I5001]
    unless_null $P5005, fallback197
    null $P5008
    set $P5005, $P5008
  fallback197:
    set $P5002, $P5005
    iter $P5004, $P5005
  for_next200:
    unless $P5004, for_done202
    shift $P5010, $P5004
  for_redo201:
    .const 'Sub' $P5009 = 'cuid_164_1346968509.914' 
    capture_lex $P5009
    $P5002 = $P5009($P5010)
    goto for_next200
  for_done202:
    find_lex $P5011, "@merge_list"
    find_lex $P5012, "$i"
    set $I5002, $P5012
    set $P5011[$I5002], $P101
    find_lex $P5013, "$i"
    set $N5002, $P5013
    set $N5003, 1
    add $N5001, $N5002, $N5003
    box $P5014, $N5001
    store_lex "$i", $P5014
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_164_1346968509.914") :anon :lex :outer("cuid_165_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 953
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    get_id $I5002, _lex_param_0
    find_lex $P5001, "$accepted"
    get_id $I5003, $P5001
    iseq $I5001, $I5002, $I5003
    box $P5005, $I5001
    set $P5004, $P5005
    if $I5001 goto unless49_end199 
.annotate 'line', 954
.annotate 'line', 955
    find_lex $P5002, "@new_list"
    $P5003 = $P5002."push"(_lex_param_0)
    set $P5004, $P5003
  unless49_end199:
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "archetypes" :subid("cuid_56_1346968509.914") :anon :lex :outer("cuid_98_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 627
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    find_lex $P5001, "$archetypes"
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "new" :subid("cuid_57_1346968509.914") :anon :lex :outer("cuid_98_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 636
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("name") :optional 
    .param int haz_param_15 :opt_flag 
    if haz_param_15, default203
    null $P5005
    set _lex_param_1, $P5005
  default203:
    .lex "$obj", $P101 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    null $P5001
    set $P101, $P5001
    nqp_decontainerize $P5003, _lex_param_0
    repr_instance_of $P5002, $P5003
    set $P101, $P5002
.annotate 'line', 638
    $P5004 = $P101."BUILD"(_lex_param_1 :named("name"))
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "BUILD" :subid("cuid_58_1346968509.914") :anon :lex :outer("cuid_98_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 642
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("name") :optional 
    .param int haz_param_16 :opt_flag 
    if haz_param_16, default204
    box $P5054, "<anon>"
    set _lex_param_1, $P5054
  default204:
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 6
    repr_bind_attr_obj $P5001, $P5002, "$!name", _lex_param_1
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 6
    new $P5005, 'Hash'
    repr_bind_attr_obj $P5003, $P5004, "%!attributes", $P5005
    nqp_decontainerize $P5006, _lex_param_0
    nqp_get_sc_object $P5007, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 6
    new $P5008, 'Hash'
    repr_bind_attr_obj $P5006, $P5007, "%!methods", $P5008
    nqp_decontainerize $P5009, _lex_param_0
    nqp_get_sc_object $P5010, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 6
    new $P5011, 'ResizablePMCArray'
    repr_bind_attr_obj $P5009, $P5010, "@!method_order", $P5011
    nqp_decontainerize $P5012, _lex_param_0
    nqp_get_sc_object $P5013, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 6
    new $P5014, 'ResizablePMCArray'
    repr_bind_attr_obj $P5012, $P5013, "@!multi_methods_to_incorporate", $P5014
    nqp_decontainerize $P5015, _lex_param_0
    nqp_get_sc_object $P5016, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 6
    new $P5017, 'ResizablePMCArray'
    repr_bind_attr_obj $P5015, $P5016, "@!parents", $P5017
    nqp_decontainerize $P5018, _lex_param_0
    nqp_get_sc_object $P5019, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 6
    new $P5020, 'ResizablePMCArray'
    repr_bind_attr_obj $P5018, $P5019, "@!roles", $P5020
    nqp_decontainerize $P5021, _lex_param_0
    nqp_get_sc_object $P5022, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 6
    new $P5023, 'ResizablePMCArray'
    repr_bind_attr_obj $P5021, $P5022, "@!vtable", $P5023
    nqp_decontainerize $P5024, _lex_param_0
    nqp_get_sc_object $P5025, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 6
    new $P5026, 'Hash'
    repr_bind_attr_obj $P5024, $P5025, "%!method-vtable-slots", $P5026
    nqp_decontainerize $P5027, _lex_param_0
    nqp_get_sc_object $P5028, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 6
    new $P5029, 'ResizablePMCArray'
    repr_bind_attr_obj $P5027, $P5028, "@!mro", $P5029
    nqp_decontainerize $P5030, _lex_param_0
    nqp_get_sc_object $P5031, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 6
    new $P5032, 'ResizablePMCArray'
    repr_bind_attr_obj $P5030, $P5031, "@!done", $P5032
    nqp_decontainerize $P5033, _lex_param_0
    nqp_get_sc_object $P5034, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 6
    new $P5035, 'Hash'
    repr_bind_attr_obj $P5033, $P5034, "%!parrot_vtable_mapping", $P5035
    nqp_decontainerize $P5036, _lex_param_0
    nqp_get_sc_object $P5037, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 6
    new $P5038, 'Hash'
    repr_bind_attr_obj $P5036, $P5037, "%!parrot_vtable_handler_mapping", $P5038
    nqp_decontainerize $P5039, _lex_param_0
    nqp_get_sc_object $P5040, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 6
    new $P5041, 'ResizablePMCArray'
    repr_bind_attr_obj $P5039, $P5040, "@!BUILDALLPLAN", $P5041
    nqp_decontainerize $P5042, _lex_param_0
    nqp_get_sc_object $P5043, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 6
    new $P5044, 'ResizablePMCArray'
    repr_bind_attr_obj $P5042, $P5043, "@!BUILDPLAN", $P5044
    nqp_decontainerize $P5045, _lex_param_0
    nqp_get_sc_object $P5046, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 6
    box $P5047, 0
    repr_bind_attr_obj $P5045, $P5046, "$!trace", $P5047
    nqp_decontainerize $P5048, _lex_param_0
    nqp_get_sc_object $P5049, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 6
    box $P5050, 0
    repr_bind_attr_obj $P5048, $P5049, "$!trace_depth", $P5050
    nqp_decontainerize $P5051, _lex_param_0
    nqp_get_sc_object $P5052, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 6
    box $P5053, 0
    repr_bind_attr_obj $P5051, $P5052, "$!composed", $P5053
    .return ($P5053) 
.end
.HLL "nqp"
.namespace []
.sub "new_type" :subid("cuid_59_1346968509.914") :anon :lex :outer("cuid_98_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 665
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("name") :optional 
    .param int haz_param_17 :opt_flag 
    .param pmc _lex_param_2 :named("repr") :optional 
    .param int haz_param_18 :opt_flag 
    if haz_param_17, default205
    box $P5006, "<anon>"
    set _lex_param_1, $P5006
  default205:
    if haz_param_18, default206
    box $P5007, "P6opaque"
    set _lex_param_2, $P5007
  default206:
    .lex "$metaclass", $P101 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    .lex "$repr", _lex_param_2 
    null $P5001
    set $P101, $P5001
.annotate 'line', 666
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."new"(_lex_param_1 :named("name"))
    set $P101, $P5003
    set $S5001, _lex_param_2
    repr_type_object_for $P5004, $P101, $S5001
    new $P5005, 'Hash'
    set_who $P5004, $P5005
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "add_method" :subid("cuid_60_1346968509.914") :anon :lex :outer("cuid_98_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 670
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$name", _lex_param_2 
    .lex "$code_obj", _lex_param_3 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 6
    repr_get_attr_obj $P5003, $P5001, $P5002, "%!methods"
    set $S5001, _lex_param_2
    exists $I5001, $P5003[$S5001]
    box $P5006, $I5001
    set $P5005, $P5006
    unless $I5001 goto if50_end208 
.annotate 'line', 671
    set $S5003, _lex_param_2
    concat $S5002, "This class already has a method named ", $S5003
    box $P5004, $S5002
    die $P5004
    set $P5005, $P5004
  if50_end208:
    isnull $I5002, _lex_param_3
    set $I5005, $I5002
    if $I5002 goto unless52_end212 
    defined $I5004, _lex_param_3
    box $P5007, $I5004
    isfalse $I5003, $P5007
    set $I5005, $I5003
  unless52_end212:
    box $P5013, $I5005
    set $P5012, $P5013
    unless $I5005 goto if51_end210 
.annotate 'line', 674
    set $S5008, _lex_param_2
    concat $S5007, "Cannot add a null method '", $S5008
    concat $S5006, $S5007, "' to class '"
    nqp_decontainerize $P5008, _lex_param_0
    nqp_get_sc_object $P5009, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 6
    repr_get_attr_obj $P5010, $P5008, $P5009, "$!name"
    set $S5009, $P5010
    concat $S5005, $S5006, $S5009
    concat $S5004, $S5005, "'"
    box $P5011, $S5004
    die $P5011
    set $P5012, $P5011
  if51_end210:
    set_method_cache_authoritativeness _lex_param_1, 0
    find_lex $P5014, "%caches"
    nqp_decontainerize $P5015, _lex_param_0
    get_id $I5006, $P5015
    set $S5010, $I5006
    new $P5016, 'Hash'
    set $P5014[$S5010], $P5016
    nqp_decontainerize $P5017, _lex_param_0
    nqp_get_sc_object $P5018, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 6
    repr_get_attr_obj $P5019, $P5017, $P5018, "@!method_order"
    nqp_decontainerize $P5020, _lex_param_0
    nqp_get_sc_object $P5021, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 6
    repr_get_attr_obj $P5022, $P5020, $P5021, "@!method_order"
    set $N5001, $P5022
    set $I5007, $N5001
    nqp_decontainerize $P5023, _lex_param_0
    nqp_get_sc_object $P5024, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 6
    repr_get_attr_obj $P5025, $P5023, $P5024, "%!methods"
    set $S5011, _lex_param_2
    set $P5025[$S5011], _lex_param_3
    set $P5019[$I5007], _lex_param_3
    .return (_lex_param_3) 
.end
.HLL "nqp"
.namespace []
.sub "add_multi_method" :subid("cuid_61_1346968509.914") :anon :lex :outer("cuid_98_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 682
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .lex "%todo", $P101 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$name", _lex_param_2 
    .lex "$code_obj", _lex_param_3 
    new $P5001, 'Hash'
    set $P101, $P5001
    set $P101["name"], _lex_param_2
    set $P101["code"], _lex_param_3
    nqp_decontainerize $P5002, _lex_param_0
    nqp_get_sc_object $P5003, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 6
    repr_get_attr_obj $P5004, $P5002, $P5003, "@!multi_methods_to_incorporate"
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 6
    repr_get_attr_obj $P5007, $P5005, $P5006, "@!multi_methods_to_incorporate"
    set $N5001, $P5007
    set $I5001, $N5001
    set $P5004[$I5001], $P101
    set_method_cache_authoritativeness _lex_param_1, 0
    .return (_lex_param_3) 
.end
.HLL "nqp"
.namespace []
.sub "add_attribute" :subid("cuid_62_1346968509.914") :anon :lex :outer("cuid_98_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 696
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "$name", $P101 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$meta_attr", _lex_param_2 
    null $P5001
    set $P101, $P5001
.annotate 'line', 697
    $P5002 = _lex_param_2."name"()
    set $P101, $P5002
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 6
    repr_get_attr_obj $P5005, $P5003, $P5004, "%!attributes"
    set $S5001, $P101
    exists $I5001, $P5005[$S5001]
    box $P5008, $I5001
    set $P5007, $P5008
    unless $I5001 goto if53_end214 
.annotate 'line', 698
    set $S5003, $P101
    concat $S5002, "This class already has an attribute named ", $S5003
    box $P5006, $S5002
    die $P5006
    set $P5007, $P5006
  if53_end214:
    nqp_decontainerize $P5009, _lex_param_0
    nqp_get_sc_object $P5010, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 6
    repr_get_attr_obj $P5011, $P5009, $P5010, "%!attributes"
    set $S5004, $P101
    set $P5011[$S5004], _lex_param_2
    .return (_lex_param_2) 
.end
.HLL "nqp"
.namespace []
.sub "add_parent" :subid("cuid_63_1346968509.914") :anon :lex :outer("cuid_98_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 704
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .const 'Sub' $P5026 = 'cuid_166_1346968509.914' 
    capture_lex $P5026 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$parent", _lex_param_2 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 6
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!composed"
    set $P5005, $P5003
    unless $P5003 goto if54_end216 
.annotate 'line', 705
    box $P5004, "NQPClassHOW does not support adding parents after being composed."
    die $P5004
    set $P5005, $P5004
  if54_end216:
    get_id $I5002, _lex_param_1
    get_id $I5003, _lex_param_2
    iseq $I5001, $I5002, $I5003
    box $P5011, $I5001
    set $P5010, $P5011
    unless $I5001 goto if55_end218 
.annotate 'line', 708
    nqp_decontainerize $P5006, _lex_param_0
    nqp_get_sc_object $P5007, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 6
    repr_get_attr_obj $P5008, $P5006, $P5007, "$!name"
    set $S5003, $P5008
    concat $S5002, "Class '", $S5003
    concat $S5001, $S5002, "' cannot inherit from itself."
    box $P5009, $S5001
    die $P5009
    set $P5010, $P5009
  if55_end218:
    nqp_decontainerize $P5015, _lex_param_0
    nqp_get_sc_object $P5016, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 6
    repr_get_attr_obj $P5017, $P5015, $P5016, "@!parents"
    set $P5012, $P5017
    iter $P5014, $P5017
  for_next221:
    unless $P5014, for_done223
    shift $P5019, $P5014
  for_redo222:
    .const 'Sub' $P5018 = 'cuid_166_1346968509.914' 
    capture_lex $P5018
    $P5012 = $P5018($P5019)
    goto for_next221
  for_done223:
    nqp_decontainerize $P5020, _lex_param_0
    nqp_get_sc_object $P5021, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 6
    repr_get_attr_obj $P5022, $P5020, $P5021, "@!parents"
    nqp_decontainerize $P5023, _lex_param_0
    nqp_get_sc_object $P5024, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 6
    repr_get_attr_obj $P5025, $P5023, $P5024, "@!parents"
    set $N5001, $P5025
    set $I5004, $N5001
    set $P5022[$I5004], _lex_param_2
    .return (_lex_param_2) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_166_1346968509.914") :anon :lex :outer("cuid_63_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 711
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    get_id $I5002, _lex_param_0
    find_lex $P5001, "$parent"
    get_id $I5003, $P5001
    iseq $I5001, $I5002, $I5003
    box $P5005, $I5001
    set $P5004, $P5005
    unless $I5001 goto if56_end220 
.annotate 'line', 712
    find_lex $P5002, "$parent"
    set $S5003, $P5002
    concat $S5002, "Already have ", $S5003
    concat $S5001, $S5002, " as a parent class."
    box $P5003, $S5001
    die $P5003
    set $P5004, $P5003
  if56_end220:
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "set_default_parent" :subid("cuid_64_1346968509.914") :anon :lex :outer("cuid_98_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 719
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$parent", _lex_param_2 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 6
    repr_bind_attr_obj $P5001, $P5002, "$!default_parent", _lex_param_2
    .return (_lex_param_2) 
.end
.HLL "nqp"
.namespace []
.sub "reparent" :subid("cuid_65_1346968509.914") :anon :lex :outer("cuid_98_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 725
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .const 'Sub' $P5047 = 'cuid_167_1346968509.914' 
    capture_lex $P5047 
    .const 'Sub' $P5047 = 'cuid_168_1346968509.914' 
    capture_lex $P5047 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$new_parent", _lex_param_2 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 6
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!parents"
    set $N5001, $P5003
    set $N5002, 1
    isne $I5001, $N5001, $N5002
    box $P5006, $I5001
    set $P5005, $P5006
    unless $I5001 goto if57_end225 
.annotate 'line', 726
    box $P5004, "Can only re-parent a class with exactly one parent"
    die $P5004
    set $P5005, $P5004
  if57_end225:
.annotate 'line', 729
    nqp_decontainerize $P5012, _lex_param_0
    nqp_get_sc_object $P5013, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 6
    repr_get_attr_obj $P5014, $P5012, $P5013, "@!parents"
    set $P5011, $P5014[0]
    unless_null $P5011, fallback226
    null $P5015
    set $P5011, $P5015
  fallback226:
    get_how $P5010, $P5011
    nqp_decontainerize $P5017, _lex_param_0
    nqp_get_sc_object $P5018, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 6
    repr_get_attr_obj $P5019, $P5017, $P5018, "@!parents"
    set $P5016, $P5019[0]
    unless_null $P5016, fallback227
    null $P5020
    set $P5016, $P5020
  fallback227:
    $P5021 = $P5010."mro"($P5016)
    set $P5007, $P5021
    iter $P5009, $P5021
  for_next230:
    unless $P5009, for_done232
    shift $P5023, $P5009
  for_redo231:
    .const 'Sub' $P5022 = 'cuid_167_1346968509.914' 
    capture_lex $P5022
    $P5007 = $P5022($P5023)
    goto for_next230
  for_done232:
.annotate 'line', 734
    get_how $P5027, _lex_param_2
    $P5028 = $P5027."mro"(_lex_param_2)
    set $P5024, $P5028
    iter $P5026, $P5028
  for_next235:
    unless $P5026, for_done237
    shift $P5030, $P5026
  for_redo236:
    .const 'Sub' $P5029 = 'cuid_168_1346968509.914' 
    capture_lex $P5029
    $P5024 = $P5029($P5030)
    goto for_next235
  for_done237:
    nqp_decontainerize $P5031, _lex_param_0
    nqp_get_sc_object $P5032, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 6
    repr_get_attr_obj $P5033, $P5031, $P5032, "@!parents"
    set $P5033[0], _lex_param_2
    nqp_decontainerize $P5034, _lex_param_0
    nqp_get_sc_object $P5035, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 6
.annotate 'line', 740
    $P5036 = "&compute_c3_mro"(_lex_param_1)
    repr_bind_attr_obj $P5034, $P5035, "@!mro", $P5036
.annotate 'line', 741
    nqp_decontainerize $P5037, _lex_param_0
    $P5038 = $P5037."publish_type_cache"(_lex_param_1)
.annotate 'line', 742
    nqp_decontainerize $P5039, _lex_param_0
    $P5040 = $P5039."publish_method_cache"(_lex_param_1)
.annotate 'line', 743
    nqp_decontainerize $P5041, _lex_param_0
    $P5042 = $P5041."publish_boolification_spec"(_lex_param_1)
.annotate 'line', 744
    nqp_decontainerize $P5043, _lex_param_0
    $P5044 = $P5043."publish_parrot_vtable_mapping"(_lex_param_1)
.annotate 'line', 745
    nqp_decontainerize $P5045, _lex_param_0
    $P5046 = $P5045."publish_parrot_vtablee_handler_mapping"(_lex_param_1)
    .return (1) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_167_1346968509.914") :anon :lex :outer("cuid_65_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 729
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 730
    get_how $P5001, _lex_param_0
    $P5002 = $P5001."attributes"(_lex_param_0, 1 :named("local"))
    set $N5001, $P5002
    box $P5005, $N5001
    set $P5004, $P5005
    unless $N5001 goto if58_end229 
    box $P5003, "Can only re-parent a class whose parent has no attributes"
    die $P5003
    set $P5004, $P5003
  if58_end229:
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_168_1346968509.914") :anon :lex :outer("cuid_65_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 734
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 735
    get_how $P5001, _lex_param_0
    $P5002 = $P5001."attributes"(_lex_param_0, 1 :named("local"))
    set $N5001, $P5002
    box $P5005, $N5001
    set $P5004, $P5005
    unless $N5001 goto if59_end234 
    box $P5003, "Can only re-parent to a class with no attributes"
    die $P5003
    set $P5004, $P5003
  if59_end234:
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "add_role" :subid("cuid_66_1346968509.914") :anon :lex :outer("cuid_98_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 749
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .const 'Sub' $P5015 = 'cuid_169_1346968509.914' 
    capture_lex $P5015 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$role", _lex_param_2 
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 6
    repr_get_attr_obj $P5006, $P5004, $P5005, "@!roles"
    set $P5001, $P5006
    iter $P5003, $P5006
  for_next240:
    unless $P5003, for_done242
    shift $P5008, $P5003
  for_redo241:
    .const 'Sub' $P5007 = 'cuid_169_1346968509.914' 
    capture_lex $P5007
    $P5001 = $P5007($P5008)
    goto for_next240
  for_done242:
    nqp_decontainerize $P5009, _lex_param_0
    nqp_get_sc_object $P5010, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 6
    repr_get_attr_obj $P5011, $P5009, $P5010, "@!roles"
    nqp_decontainerize $P5012, _lex_param_0
    nqp_get_sc_object $P5013, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 6
    repr_get_attr_obj $P5014, $P5012, $P5013, "@!roles"
    set $N5001, $P5014
    set $I5001, $N5001
    set $P5011[$I5001], _lex_param_2
    .return (_lex_param_2) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_169_1346968509.914") :anon :lex :outer("cuid_66_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 750
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    get_id $I5002, _lex_param_0
    find_lex $P5001, "$role"
    get_id $I5003, $P5001
    iseq $I5001, $I5002, $I5003
    box $P5005, $I5001
    set $P5004, $P5005
    unless $I5001 goto if60_end239 
.annotate 'line', 751
    find_lex $P5002, "$role"
    set $S5003, $P5002
    concat $S5002, "The role ", $S5003
    concat $S5001, $S5002, " has already been added."
    box $P5003, $S5001
    die $P5003
    set $P5004, $P5003
  if60_end239:
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "add_parrot_vtable_mapping" :subid("cuid_67_1346968509.914") :anon :lex :outer("cuid_98_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 758
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$name", _lex_param_2 
    .lex "$meth", _lex_param_3 
    nqp_decontainerize $P5002, _lex_param_0
    nqp_get_sc_object $P5003, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 6
    repr_get_attr_obj $P5004, $P5002, $P5003, "%!parrot_vtable_mapping"
    set $S5001, _lex_param_2
    set $P5001, $P5004[$S5001]
    unless_null $P5001, fallback245
    null $P5005
    set $P5001, $P5005
  fallback245:
    defined $I5001, $P5001
    box $P5011, $I5001
    set $P5010, $P5011
    unless $I5001 goto if61_end244 
.annotate 'line', 759
    nqp_decontainerize $P5006, _lex_param_0
    nqp_get_sc_object $P5007, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 6
    repr_get_attr_obj $P5008, $P5006, $P5007, "$!name"
    set $S5006, $P5008
    concat $S5005, "Class '", $S5006
    concat $S5004, $S5005, "' already has a Parrot v-table override for '"
    set $S5007, _lex_param_2
    concat $S5003, $S5004, $S5007
    concat $S5002, $S5003, "'"
    box $P5009, $S5002
    die $P5009
    set $P5010, $P5009
  if61_end244:
    nqp_decontainerize $P5012, _lex_param_0
    nqp_get_sc_object $P5013, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 6
    repr_get_attr_obj $P5014, $P5012, $P5013, "%!parrot_vtable_mapping"
    set $S5008, _lex_param_2
    set $P5014[$S5008], _lex_param_3
    .return (_lex_param_3) 
.end
.HLL "nqp"
.namespace []
.sub "add_parrot_vtable_handler_mapping" :subid("cuid_68_1346968509.914") :anon :lex :outer("cuid_98_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 767
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$name", _lex_param_2 
    .lex "$att_name", _lex_param_3 
    nqp_decontainerize $P5002, _lex_param_0
    nqp_get_sc_object $P5003, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 6
    repr_get_attr_obj $P5004, $P5002, $P5003, "%!parrot_vtable_handler_mapping"
    set $S5001, _lex_param_2
    set $P5001, $P5004[$S5001]
    unless_null $P5001, fallback248
    null $P5005
    set $P5001, $P5005
  fallback248:
    defined $I5001, $P5001
    box $P5011, $I5001
    set $P5010, $P5011
    unless $I5001 goto if62_end247 
.annotate 'line', 768
    nqp_decontainerize $P5006, _lex_param_0
    nqp_get_sc_object $P5007, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 6
    repr_get_attr_obj $P5008, $P5006, $P5007, "$!name"
    set $S5006, $P5008
    concat $S5005, "Class '", $S5006
    concat $S5004, $S5005, "' already has a Parrot v-table handler for '"
    set $S5007, _lex_param_2
    concat $S5003, $S5004, $S5007
    concat $S5002, $S5003, "'"
    box $P5009, $S5002
    die $P5009
    set $P5010, $P5009
  if62_end247:
    nqp_decontainerize $P5012, _lex_param_0
    nqp_get_sc_object $P5013, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 6
    repr_get_attr_obj $P5014, $P5012, $P5013, "%!parrot_vtable_handler_mapping"
    set $S5008, _lex_param_2
    new $P5015, 'ResizablePMCArray'
    push $P5015, _lex_param_1
    push $P5015, _lex_param_3
    set $P5014[$S5008], $P5015
    .return ($P5015) 
.end
.HLL "nqp"
.namespace []
.sub "compose" :subid("cuid_69_1346968509.914") :anon :lex :outer("cuid_98_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 776
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5047 = 'cuid_171_1346968509.914' 
    capture_lex $P5047 
    .const 'Sub' $P5047 = 'cuid_172_1346968509.914' 
    capture_lex $P5047 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 6
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!roles"
    set $P5006, $P5003
    unless $P5003 goto if63_end250 
    .const 'Sub' $P5004 = 'cuid_171_1346968509.914' 
    capture_lex $P5004
    $P5005 = $P5004()
    set $P5006, $P5005
  if63_end250:
    nqp_decontainerize $P5007, _lex_param_0
    nqp_get_sc_object $P5008, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 6
    repr_get_attr_obj $P5009, $P5007, $P5008, "@!parents"
    set $N5001, $P5009
    set $N5002, 0
    iseq $I5001, $N5001, $N5002
    set $I5003, $I5001
    unless $I5001 goto if65_end257 
    nqp_decontainerize $P5010, _lex_param_0
    nqp_get_sc_object $P5011, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 6
    repr_get_attr_obj $P5012, $P5010, $P5011, "$!name"
    set $S5001, $P5012
    isne $I5002, $S5001, "NQPMu"
    set $I5003, $I5002
  if65_end257:
    box $P5019, $I5003
    set $P5018, $P5019
    unless $I5003 goto if64_end255 
.annotate 'line', 793
.annotate 'line', 794
    nqp_decontainerize $P5013, _lex_param_0
    nqp_decontainerize $P5014, _lex_param_0
    nqp_get_sc_object $P5015, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 6
    repr_get_attr_obj $P5016, $P5014, $P5015, "$!default_parent"
    $P5017 = $P5013."add_parent"(_lex_param_1, $P5016)
    set $P5018, $P5017
  if64_end255:
    nqp_decontainerize $P5020, _lex_param_0
    nqp_get_sc_object $P5021, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 6
.annotate 'line', 798
    $P5022 = "&compute_c3_mro"(_lex_param_1)
    repr_bind_attr_obj $P5020, $P5021, "@!mro", $P5022
.annotate 'line', 801
    nqp_decontainerize $P5023, _lex_param_0
    $P5024 = $P5023."incorporate_multi_candidates"(_lex_param_1)
.annotate 'line', 804
    nqp_decontainerize $P5028, _lex_param_0
    $P5029 = $P5028."attributes"(_lex_param_1, "0" :named("local"))
    set $P5025, $P5029
    iter $P5027, $P5029
  for_next258:
    unless $P5027, for_done260
    shift $P5031, $P5027
  for_redo259:
    .const 'Sub' $P5030 = 'cuid_172_1346968509.914' 
    capture_lex $P5030
    $P5025 = $P5030($P5031)
    goto for_next258
  for_done260:
.annotate 'line', 807
    nqp_decontainerize $P5032, _lex_param_0
    $P5033 = $P5032."publish_type_cache"(_lex_param_1)
.annotate 'line', 808
    nqp_decontainerize $P5034, _lex_param_0
    $P5035 = $P5034."publish_method_cache"(_lex_param_1)
.annotate 'line', 809
    nqp_decontainerize $P5036, _lex_param_0
    $P5037 = $P5036."publish_boolification_spec"(_lex_param_1)
.annotate 'line', 812
    nqp_decontainerize $P5038, _lex_param_0
    $P5039 = $P5038."publish_parrot_vtable_mapping"(_lex_param_1)
.annotate 'line', 813
    nqp_decontainerize $P5040, _lex_param_0
    $P5041 = $P5040."publish_parrot_vtablee_handler_mapping"(_lex_param_1)
.annotate 'line', 816
    nqp_decontainerize $P5042, _lex_param_0
    $P5043 = $P5042."create_BUILDPLAN"(_lex_param_1)
    nqp_decontainerize $P5044, _lex_param_0
    nqp_get_sc_object $P5045, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 6
    box $P5046, 1
    repr_bind_attr_obj $P5044, $P5045, "$!composed", $P5046
    .return (_lex_param_1) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_171_1346968509.914") :anon :lex :outer("cuid_69_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 780
    .const 'Sub' $P5014 = 'cuid_170_1346968509.914' 
    capture_lex $P5014 
    .lex "@specialized_roles", $P101 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    find_lex $P5006, "self"
    nqp_decontainerize $P5005, $P5006
    nqp_get_sc_object $P5007, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 6
    repr_get_attr_obj $P5008, $P5005, $P5007, "@!roles"
    set $P5002, $P5008
    iter $P5004, $P5008
  for_next251:
    unless $P5004, for_done253
    shift $P5010, $P5004
  for_redo252:
    .const 'Sub' $P5009 = 'cuid_170_1346968509.914' 
    capture_lex $P5009
    $P5002 = $P5009($P5010)
    goto for_next251
  for_done253:
.annotate 'line', 788
    nqp_get_sc_object $P5011, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 4
    find_lex $P5012, "$obj"
    $P5013 = $P5011."apply"($P5012, $P101)
    .return ($P5013) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_170_1346968509.914") :anon :lex :outer("cuid_171_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 782
    .param pmc _lex_param_0 
    .lex "$ins", $P101 
    .lex "$_", _lex_param_0 
    null $P5001
    set $P101, $P5001
.annotate 'line', 783
    get_how $P5002, _lex_param_0
    find_lex $P5003, "$obj"
    $P5004 = $P5002."specialize"(_lex_param_0, $P5003)
    set $P101, $P5004
.annotate 'line', 784
    find_lex $P5005, "@specialized_roles"
    $P5006 = $P5005."push"($P101)
    find_lex $P5008, "self"
    nqp_decontainerize $P5007, $P5008
    nqp_get_sc_object $P5009, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 6
    repr_get_attr_obj $P5010, $P5007, $P5009, "@!done"
    find_lex $P5012, "self"
    nqp_decontainerize $P5011, $P5012
    nqp_get_sc_object $P5013, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 6
    repr_get_attr_obj $P5014, $P5011, $P5013, "@!done"
    set $N5001, $P5014
    set $I5001, $N5001
    set $P5010[$I5001], _lex_param_0
    find_lex $P5016, "self"
    nqp_decontainerize $P5015, $P5016
    nqp_get_sc_object $P5017, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 6
    repr_get_attr_obj $P5018, $P5015, $P5017, "@!done"
    find_lex $P5020, "self"
    nqp_decontainerize $P5019, $P5020
    nqp_get_sc_object $P5021, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 6
    repr_get_attr_obj $P5022, $P5019, $P5021, "@!done"
    set $N5002, $P5022
    set $I5002, $N5002
    set $P5018[$I5002], $P101
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_172_1346968509.914") :anon :lex :outer("cuid_69_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 804
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5001, "$obj"
    $P5002 = _lex_param_0."compose"($P5001)
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "incorporate_multi_candidates" :subid("cuid_70_1346968509.914") :anon :lex :outer("cuid_98_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 824
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5012 = 'cuid_176_1346968509.914' 
    capture_lex $P5012 
    .lex "$num_todo", $P101 
    .lex "$i", $P102 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    null $P5001
    set $P101, $P5001
    null $P5002
    set $P102, $P5002
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 6
    repr_get_attr_obj $P5005, $P5003, $P5004, "@!multi_methods_to_incorporate"
    set $N5001, $P5005
    box $P5006, $N5001
    set $P101, $P5006
    box $P5007, 0
    set $P102, $P5007
  while66_test261:
    set $N5002, $P102
    set $N5003, $P101
    isne $I5001, $N5002, $N5003
    box $P5011, $I5001
    set $P5010, $P5011
    unless $I5001 goto while66_done265 
  while66_redo263:
    .const 'Sub' $P5008 = 'cuid_176_1346968509.914' 
    capture_lex $P5008
    $P5009 = $P5008()
    set $P5010, $P5009
    goto while66_test261 
  while66_done265:
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_176_1346968509.914") :anon :lex :outer("cuid_70_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 827
    .const 'Sub' $P5039 = 'cuid_175_1346968509.914' 
    capture_lex $P5039 
    .lex "$name", $P101 
    .lex "$code", $P102 
    .lex "$dispatcher", $P103 
    null $P5001
    set $P101, $P5001
    null $P5002
    set $P102, $P5002
    null $P5003
    set $P103, $P5003
    find_lex $P5007, "self"
    nqp_decontainerize $P5006, $P5007
    nqp_get_sc_object $P5008, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 6
    repr_get_attr_obj $P5009, $P5006, $P5008, "@!multi_methods_to_incorporate"
    find_lex $P5010, "$i"
    set $I5001, $P5010
    set $P5005, $P5009[$I5001]
    unless_null $P5005, fallback266
    null $P5011
    set $P5005, $P5011
  fallback266:
    set $P5004, $P5005["name"]
    unless_null $P5004, fallback267
    null $P5012
    set $P5004, $P5012
  fallback267:
    set $P101, $P5004
    find_lex $P5016, "self"
    nqp_decontainerize $P5015, $P5016
    nqp_get_sc_object $P5017, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 6
    repr_get_attr_obj $P5018, $P5015, $P5017, "@!multi_methods_to_incorporate"
    find_lex $P5019, "$i"
    set $I5002, $P5019
    set $P5014, $P5018[$I5002]
    unless_null $P5014, fallback268
    null $P5020
    set $P5014, $P5020
  fallback268:
    set $P5013, $P5014["code"]
    unless_null $P5013, fallback269
    null $P5021
    set $P5013, $P5021
  fallback269:
    set $P102, $P5013
    find_lex $P5024, "self"
    nqp_decontainerize $P5023, $P5024
    nqp_get_sc_object $P5025, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 6
    repr_get_attr_obj $P5026, $P5023, $P5025, "%!methods"
    set $S5001, $P101
    set $P5022, $P5026[$S5001]
    unless_null $P5022, fallback270
    null $P5027
    set $P5022, $P5027
  fallback270:
    set $P103, $P5022
    defined $I5003, $P103
    unless $I5003 goto if67_else271 
.annotate 'line', 835
    can $I5004, $P103, "is_dispatcher"
    box $P5030, $I5004
    set $P5029, $P5030
    unless $I5004 goto if69_end276 
.annotate 'line', 838
    $P5028 = $P103."is_dispatcher"()
    set $P5029, $P5028
  if69_end276:
    unless $P5029 goto if68_else273 
.annotate 'line', 839
    $P5031 = $P103."add_dispatchee"($P102)
    set $P5033, $P5031
    goto if68_end274
  if68_else273:
.annotate 'line', 841
    set $S5004, $P101
    concat $S5003, "Cannot have a multi candidate for ", $S5004
    concat $S5002, $S5003, " when an only method is also in the class"
    box $P5032, $S5002
    die $P5032
    set $P5033, $P5032
  if68_end274:
    set $P5036, $P5033
    goto if67_end272
  if67_else271:
    .const 'Sub' $P5034 = 'cuid_175_1346968509.914' 
    capture_lex $P5034
    $P5035 = $P5034()
    set $P5036, $P5035
  if67_end272:
    find_lex $P5037, "$i"
    set $N5002, $P5037
    set $N5003, 1
    add $N5001, $N5002, $N5003
    box $P5038, $N5001
    store_lex "$i", $P5038
    .return ($P5038) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_175_1346968509.914") :anon :lex :outer("cuid_176_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 845
    .const 'Sub' $P5016 = 'cuid_174_1346968509.914' 
    capture_lex $P5016 
    .lex "$j", $P101 
    .lex "$found", $P102 
    null $P5001
    set $P101, $P5001
    null $P5002
    set $P102, $P5002
    box $P5003, 1
    set $P101, $P5003
    box $P5004, 0
    set $P102, $P5004
  while70_test277:
    set $N5001, $P101
    find_lex $P5006, "self"
    nqp_decontainerize $P5005, $P5006
    nqp_get_sc_object $P5007, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 6
    repr_get_attr_obj $P5008, $P5005, $P5007, "@!mro"
    set $N5002, $P5008
    isne $I5001, $N5001, $N5002
    set $I5003, $I5001
    unless $I5001 goto if71_end283 
    isfalse $I5002, $P102
    set $I5003, $I5002
  if71_end283:
    box $P5012, $I5003
    set $P5011, $P5012
    unless $I5003 goto while70_done281 
  while70_redo279:
    .const 'Sub' $P5009 = 'cuid_174_1346968509.914' 
    capture_lex $P5009
    $P5010 = $P5009()
    set $P5011, $P5010
    goto while70_test277 
  while70_done281:
    set $P5015, $P102
    if $P102 goto unless75_end293 
.annotate 'line', 868
    find_lex $P5013, "$name"
    set $S5003, $P5013
    concat $S5002, "Could not find a proto for multi ", $S5003
    concat $S5001, $S5002, ", and proto generation is NYI"
    box $P5014, $S5001
    die $P5014
    set $P5015, $P5014
  unless75_end293:
    .return ($P5015) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_174_1346968509.914") :anon :lex :outer("cuid_175_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 849
    .const 'Sub' $P5028 = 'cuid_173_1346968509.914' 
    capture_lex $P5028 
    .lex "$parent", $P101 
    .lex "%meths", $P102 
    .lex "$dispatcher", $P103 
    null $P5001
    set $P101, $P5001
    new $P5002, 'Hash'
    set $P102, $P5002
    null $P5003
    set $P103, $P5003
    find_lex $P5006, "self"
    nqp_decontainerize $P5005, $P5006
    nqp_get_sc_object $P5007, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 6
    repr_get_attr_obj $P5008, $P5005, $P5007, "@!mro"
    find_lex $P5009, "$j"
    set $I5001, $P5009
    set $P5004, $P5008[$I5001]
    unless_null $P5004, fallback284
    null $P5010
    set $P5004, $P5010
  fallback284:
    set $P101, $P5004
.annotate 'line', 851
    get_how $P5011, $P101
    $P5012 = $P5011."method_table"($P101)
    set $P102, $P5012
    find_lex $P5014, "$name"
    set $S5001, $P5014
    set $P5013, $P102[$S5001]
    unless_null $P5013, fallback285
    null $P5015
    set $P5013, $P5015
  fallback285:
    set $P103, $P5013
    defined $I5002, $P103
    box $P5025, $I5002
    set $P5024, $P5025
    unless $I5002 goto if72_end287 
.annotate 'line', 853
    can $I5003, $P103, "is_dispatcher"
    box $P5018, $I5003
    set $P5017, $P5018
    unless $I5003 goto if74_end291 
.annotate 'line', 856
    $P5016 = $P103."is_dispatcher"()
    set $P5017, $P5016
  if74_end291:
    unless $P5017 goto if73_else288 
    .const 'Sub' $P5019 = 'cuid_173_1346968509.914' 
    capture_lex $P5019
    $P5020 = $P5019()
    set $P5023, $P5020
    goto if73_end289
  if73_else288:
.annotate 'line', 862
    find_lex $P5021, "$name"
    set $S5004, $P5021
    concat $S5003, "Could not find a proto for multi ", $S5004
    concat $S5002, $S5003, " (it may exist, but an only is hiding it if so)"
    box $P5022, $S5002
    die $P5022
    set $P5023, $P5022
  if73_end289:
    set $P5024, $P5023
  if72_end287:
    find_lex $P5026, "$j"
    set $N5002, $P5026
    set $N5003, 1
    add $N5001, $N5002, $N5003
    box $P5027, $N5001
    store_lex "$j", $P5027
    .return ($P5027) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_173_1346968509.914") :anon :lex :outer("cuid_174_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 856
    .lex "$new_disp", $P101 
    null $P5001
    set $P101, $P5001
.annotate 'line', 857
    find_lex $P5002, "$dispatcher"
    $P5003 = $P5002."derive_dispatcher"()
    set $P101, $P5003
.annotate 'line', 858
    find_lex $P5004, "$code"
    $P5005 = $P101."add_dispatchee"($P5004)
    find_lex $P5007, "self"
    nqp_decontainerize $P5006, $P5007
    nqp_get_sc_object $P5008, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 6
    repr_get_attr_obj $P5009, $P5006, $P5008, "%!methods"
    find_lex $P5010, "$name"
    set $S5001, $P5010
    set $P5009[$S5001], $P101
    box $P5011, 1
    store_lex "$found", $P5011
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "publish_type_cache" :subid("cuid_71_1346968509.914") :anon :lex :outer("cuid_98_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 969
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5018 = 'cuid_177_1346968509.914' 
    capture_lex $P5018 
    .const 'Sub' $P5018 = 'cuid_178_1346968509.914' 
    capture_lex $P5018 
    .lex "@tc", $P101 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 6
    repr_get_attr_obj $P5007, $P5005, $P5006, "@!mro"
    set $P5002, $P5007
    iter $P5004, $P5007
  for_next294:
    unless $P5004, for_done296
    shift $P5009, $P5004
  for_redo295:
    .const 'Sub' $P5008 = 'cuid_177_1346968509.914' 
    capture_lex $P5008
    $P5002 = $P5008($P5009)
    goto for_next294
  for_done296:
    nqp_decontainerize $P5013, _lex_param_0
    nqp_get_sc_object $P5014, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 6
    repr_get_attr_obj $P5015, $P5013, $P5014, "@!done"
    set $P5010, $P5015
    iter $P5012, $P5015
  for_next297:
    unless $P5012, for_done299
    shift $P5017, $P5012
  for_redo298:
    .const 'Sub' $P5016 = 'cuid_178_1346968509.914' 
    capture_lex $P5016
    $P5010 = $P5016($P5017)
    goto for_next297
  for_done299:
    publish_type_check_cache _lex_param_1, $P101
    .return (_lex_param_1) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_177_1346968509.914") :anon :lex :outer("cuid_71_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 971
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5001, "@tc"
    $P5002 = $P5001."push"(_lex_param_0)
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_178_1346968509.914") :anon :lex :outer("cuid_71_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 972
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5001, "@tc"
    $P5002 = $P5001."push"(_lex_param_0)
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "publish_method_cache" :subid("cuid_72_1346968509.914") :anon :lex :outer("cuid_98_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 976
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5013 = 'cuid_180_1346968509.914' 
    capture_lex $P5013 
    .lex "%cache", $P101 
    .lex "@mro_reversed", $P102 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    new $P5001, 'Hash'
    set $P101, $P5001
    new $P5002, 'ResizablePMCArray'
    set $P102, $P5002
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 6
    repr_get_attr_obj $P5006, $P5004, $P5005, "@!mro"
    clone $P5003, $P5006
    set $P102, $P5003
.annotate 'line', 981
    $P5007 = $P102."reverse"()
    set $P5008, $P102
    iter $P5010, $P102
  for_next303:
    unless $P5010, for_done305
    shift $P5012, $P5010
  for_redo304:
    .const 'Sub' $P5011 = 'cuid_180_1346968509.914' 
    capture_lex $P5011
    $P5008 = $P5011($P5012)
    goto for_next303
  for_done305:
    publish_method_cache _lex_param_1, $P101
    set_method_cache_authoritativeness _lex_param_1, 1
    .return (_lex_param_1) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_180_1346968509.914") :anon :lex :outer("cuid_72_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 982
    .param pmc _lex_param_0 
    .const 'Sub' $P5008 = 'cuid_179_1346968509.914' 
    capture_lex $P5008 
    .lex "$_", _lex_param_0 
.annotate 'line', 983
    get_how $P5004, _lex_param_0
    $P5005 = $P5004."method_table"(_lex_param_0)
    set $P5001, $P5005
    iter $P5003, $P5005
  for_next300:
    unless $P5003, for_done302
    shift $P5007, $P5003
  for_redo301:
    .const 'Sub' $P5006 = 'cuid_179_1346968509.914' 
    capture_lex $P5006
    $P5001 = $P5006($P5007)
    goto for_next300
  for_done302:
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_179_1346968509.914") :anon :lex :outer("cuid_180_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 983
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5001, "%cache"
.annotate 'line', 984
    $P5002 = _lex_param_0."key"()
    set $S5001, $P5002
    $P5003 = _lex_param_0."value"()
    set $P5001[$S5001], $P5003
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "publish_boolification_spec" :subid("cuid_73_1346968509.914") :anon :lex :outer("cuid_98_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 991
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$bool_meth", $P101 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    null $P5001
    set $P101, $P5001
.annotate 'line', 992
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."find_method"(_lex_param_1, "Bool")
    set $P101, $P5003
    defined $I5001, $P101
    unless $I5001 goto if76_else306 
.annotate 'line', 993
    set_boolification_spec _lex_param_1, 0, $P101
    set $P5005, _lex_param_1
    goto if76_end307
  if76_else306:
.annotate 'line', 996
    null $P5004
    set_boolification_spec _lex_param_1, 5, $P5004
    set $P5005, _lex_param_1
  if76_end307:
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "publish_parrot_vtable_mapping" :subid("cuid_74_1346968509.914") :anon :lex :outer("cuid_98_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1001
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5013 = 'cuid_182_1346968509.914' 
    capture_lex $P5013 
    .lex "%mapping", $P101 
    .lex "%seen_handlers", $P102 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    new $P5001, 'Hash'
    set $P101, $P5001
    new $P5002, 'Hash'
    set $P102, $P5002
    nqp_decontainerize $P5006, _lex_param_0
    nqp_get_sc_object $P5007, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 6
    repr_get_attr_obj $P5008, $P5006, $P5007, "@!mro"
    set $P5003, $P5008
    iter $P5005, $P5008
  for_next318:
    unless $P5005, for_done320
    shift $P5010, $P5005
  for_redo319:
    .const 'Sub' $P5009 = 'cuid_182_1346968509.914' 
    capture_lex $P5009
    $P5003 = $P5009($P5010)
    goto for_next318
  for_done320:
    set $N5001, $P101
    box $P5012, $N5001
    set $P5011, $P5012
    unless $N5001 goto if79_end322 
.annotate 'line', 1015
    stable_publish_vtable_mapping _lex_param_1, $P101
    set $P5011, _lex_param_1
  if79_end322:
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_182_1346968509.914") :anon :lex :outer("cuid_74_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1004
    .param pmc _lex_param_0 
    .const 'Sub' $P5015 = 'cuid_181_1346968509.914' 
    capture_lex $P5015 
    .const 'Sub' $P5015 = 'cuid_183_1346968509.914' 
    capture_lex $P5015 
    .lex "$_", _lex_param_0 
.annotate 'line', 1005
    get_how $P5004, _lex_param_0
    $P5005 = $P5004."parrot_vtable_handler_mappings"(_lex_param_0, 1 :named("local"))
    set $P5001, $P5005
    iter $P5003, $P5005
  for_next308:
    unless $P5003, for_done310
    shift $P5007, $P5003
  for_redo309:
    .const 'Sub' $P5006 = 'cuid_181_1346968509.914' 
    capture_lex $P5006
    $P5001 = $P5006($P5007)
    goto for_next308
  for_done310:
.annotate 'line', 1008
    get_how $P5011, _lex_param_0
    $P5012 = $P5011."parrot_vtable_mappings"(_lex_param_0, 1 :named("local"))
    set $P5008, $P5012
    iter $P5010, $P5012
  for_next315:
    unless $P5010, for_done317
    shift $P5014, $P5010
  for_redo316:
    .const 'Sub' $P5013 = 'cuid_183_1346968509.914' 
    capture_lex $P5013
    $P5008 = $P5013($P5014)
    goto for_next315
  for_done317:
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_181_1346968509.914") :anon :lex :outer("cuid_182_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1005
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5001, "%seen_handlers"
.annotate 'line', 1006
    $P5002 = _lex_param_0."key"()
    set $S5001, $P5002
    box $P5003, 1
    set $P5001[$S5001], $P5003
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_183_1346968509.914") :anon :lex :outer("cuid_182_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1008
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5001, "%mapping"
.annotate 'line', 1009
    $P5002 = _lex_param_0."key"()
    set $S5001, $P5002
    exists $I5001, $P5001[$S5001]
    set $I5003, $I5001
    if $I5001 goto unless78_end314 
    find_lex $P5003, "%seen_handlers"
.annotate 'line', 1010
    $P5004 = _lex_param_0."key"()
    set $S5002, $P5004
    exists $I5002, $P5003[$S5002]
    set $I5003, $I5002
  unless78_end314:
    box $P5009, $I5003
    set $P5008, $P5009
    if $I5003 goto unless77_end312 
    find_lex $P5005, "%mapping"
.annotate 'line', 1011
    $P5006 = _lex_param_0."key"()
    set $S5003, $P5006
    $P5007 = _lex_param_0."value"()
    set $P5005[$S5003], $P5007
    set $P5008, $P5007
  unless77_end312:
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "publish_parrot_vtablee_handler_mapping" :subid("cuid_75_1346968509.914") :anon :lex :outer("cuid_98_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1020
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5015 = 'cuid_185_1346968509.914' 
    capture_lex $P5015 
    .lex "%mapping", $P101 
    .lex "@mro_reversed", $P102 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    new $P5001, 'Hash'
    set $P101, $P5001
    new $P5002, 'ResizablePMCArray'
    set $P102, $P5002
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 6
    repr_get_attr_obj $P5006, $P5004, $P5005, "@!mro"
    clone $P5003, $P5006
    set $P102, $P5003
.annotate 'line', 1023
    $P5007 = $P102."reverse"()
    set $P5008, $P102
    iter $P5010, $P102
  for_next326:
    unless $P5010, for_done328
    shift $P5012, $P5010
  for_redo327:
    .const 'Sub' $P5011 = 'cuid_185_1346968509.914' 
    capture_lex $P5011
    $P5008 = $P5011($P5012)
    goto for_next326
  for_done328:
    set $N5001, $P101
    box $P5014, $N5001
    set $P5013, $P5014
    unless $N5001 goto if80_end330 
.annotate 'line', 1029
    stable_publish_vtable_handler_mapping _lex_param_1, $P101
    set $P5013, _lex_param_1
  if80_end330:
    .return ($P5013) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_185_1346968509.914") :anon :lex :outer("cuid_75_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1024
    .param pmc _lex_param_0 
    .const 'Sub' $P5008 = 'cuid_184_1346968509.914' 
    capture_lex $P5008 
    .lex "$_", _lex_param_0 
.annotate 'line', 1025
    get_how $P5004, _lex_param_0
    $P5005 = $P5004."parrot_vtable_handler_mappings"(_lex_param_0, 1 :named("local"))
    set $P5001, $P5005
    iter $P5003, $P5005
  for_next323:
    unless $P5003, for_done325
    shift $P5007, $P5003
  for_redo324:
    .const 'Sub' $P5006 = 'cuid_184_1346968509.914' 
    capture_lex $P5006
    $P5001 = $P5006($P5007)
    goto for_next323
  for_done325:
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_184_1346968509.914") :anon :lex :outer("cuid_185_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1025
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5001, "%mapping"
.annotate 'line', 1026
    $P5002 = _lex_param_0."key"()
    set $S5001, $P5002
    $P5003 = _lex_param_0."value"()
    set $P5001[$S5001], $P5003
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "create_BUILDPLAN" :subid("cuid_76_1346968509.914") :anon :lex :outer("cuid_98_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1044
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5035 = 'cuid_186_1346968509.914' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_188_1346968509.914' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_190_1346968509.914' 
    capture_lex $P5035 
    .lex "@plan", $P101 
    .lex "@attrs", $P102 
    .lex "$build", $P103 
    .lex "@all_plan", $P104 
    .lex "@mro", $P105 
    .lex "$i", $P106 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    new $P5002, 'ResizablePMCArray'
    set $P102, $P5002
    null $P5003
    set $P103, $P5003
    new $P5004, 'ResizablePMCArray'
    set $P104, $P5004
    new $P5005, 'ResizablePMCArray'
    set $P105, $P5005
    null $P5006
    set $P106, $P5006
.annotate 'line', 1047
    get_how $P5007, _lex_param_1
    $P5008 = $P5007."attributes"(_lex_param_1, 1 :named("local"))
    set $P102, $P5008
.annotate 'line', 1050
    get_how $P5009, _lex_param_1
    $P5010 = $P5009."find_method"(_lex_param_1, "BUILD", 1 :named("no_fallback"))
    set $P103, $P5010
    defined $I5001, $P103
    unless $I5001 goto if81_else331 
.annotate 'line', 1051
    set $N5001, $P101
    set $I5002, $N5001
    new $P5011, 'ResizablePMCArray'
    box $P5012, 0
    push $P5011, $P5012
    push $P5011, $P103
    set $P101[$I5002], $P5011
    set $P5018, $P5011
    goto if81_end332
  if81_else331:
.annotate 'line', 1055
    set $P5013, $P102
    iter $P5015, $P102
  for_next337:
    unless $P5015, for_done339
    shift $P5017, $P5015
  for_redo338:
    .const 'Sub' $P5016 = 'cuid_186_1346968509.914' 
    capture_lex $P5016
    $P5013 = $P5016($P5017)
    goto for_next337
  for_done339:
    set $P5018, $P5013
  if81_end332:
    set $P5019, $P102
    iter $P5021, $P102
  for_next344:
    unless $P5021, for_done346
    shift $P5023, $P5021
  for_redo345:
    .const 'Sub' $P5022 = 'cuid_188_1346968509.914' 
    capture_lex $P5022
    $P5019 = $P5022($P5023)
    goto for_next344
  for_done346:
    nqp_decontainerize $P5024, _lex_param_0
    nqp_get_sc_object $P5025, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 6
    repr_bind_attr_obj $P5024, $P5025, "@!BUILDPLAN", $P101
.annotate 'line', 1084
    nqp_decontainerize $P5026, _lex_param_0
    $P5027 = $P5026."mro"(_lex_param_1)
    set $P105, $P5027
    set $N5002, $P105
    box $P5028, $N5002
    set $P106, $P5028
  while86_test347:
    set $N5003, $P106
    set $N5004, 0
    isgt $I5003, $N5003, $N5004
    box $P5032, $I5003
    set $P5031, $P5032
    unless $I5003 goto while86_done351 
  while86_redo349:
    .const 'Sub' $P5029 = 'cuid_190_1346968509.914' 
    capture_lex $P5029
    $P5030 = $P5029()
    set $P5031, $P5030
    goto while86_test347 
  while86_done351:
    nqp_decontainerize $P5033, _lex_param_0
    nqp_get_sc_object $P5034, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 6
    repr_bind_attr_obj $P5033, $P5034, "@!BUILDALLPLAN", $P104
    .return ($P104) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_186_1346968509.914") :anon :lex :outer("cuid_76_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1059
    .param pmc _lex_param_0 
    .lex "$attr_name", $P101 
    .lex "$name", $P102 
    .lex "$sigil", $P103 
    .lex "$sigop", $P104 
    .lex "$_", _lex_param_0 
    null $P5001
    set $P101, $P5001
    null $P5002
    set $P102, $P5002
    null $P5003
    set $P103, $P5003
    null $P5004
    set $P104, $P5004
.annotate 'line', 1060
    $P5005 = _lex_param_0."name"()
    set $P101, $P5005
    set $S5002, $P101
    substr $S5001, $S5002, 2
    box $P5006, $S5001
    set $P102, $P5006
    set $S5004, $P101
    substr $S5003, $S5004, 0, 1
    box $P5007, $S5003
    set $P103, $P5007
    set $S5005, $P103
    iseq $I5001, $S5005, "@"
    unless $I5001 goto if82_else333 
    set $I5004, 2
    goto if82_end334
  if82_else333:
    set $S5006, $P103
    iseq $I5002, $S5006, "%"
    unless $I5002 goto if83_else335 
    set $I5003, 3
    goto if83_end336
  if83_else335:
    set $I5003, 1
  if83_end336:
    set $I5004, $I5003
  if82_end334:
    box $P5008, $I5004
    set $P104, $P5008
    find_lex $P5009, "@plan"
    find_lex $P5010, "@plan"
    set $N5001, $P5010
    set $I5005, $N5001
    new $P5011, 'ResizablePMCArray'
    push $P5011, $P104
    find_lex $P5012, "$obj"
    push $P5011, $P5012
    push $P5011, $P102
    push $P5011, $P101
    set $P5009[$I5005], $P5011
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_188_1346968509.914") :anon :lex :outer("cuid_76_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1069
    .param pmc _lex_param_0 
    .const 'Sub' $P5005 = 'cuid_187_1346968509.914' 
    capture_lex $P5005 
    .lex "$_", _lex_param_0 
    can $I5001, _lex_param_0, "build"
    box $P5004, $I5001
    set $P5003, $P5004
    unless $I5001 goto if84_end341 
    .const 'Sub' $P5001 = 'cuid_187_1346968509.914' 
    capture_lex $P5001
    $P5002 = $P5001()
    set $P5003, $P5002
  if84_end341:
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_187_1346968509.914") :anon :lex :outer("cuid_188_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1070
    .lex "$default", $P101 
    null $P5001
    set $P101, $P5001
.annotate 'line', 1071
    find_lex $P5002, "$_"
    $P5003 = $P5002."build"()
    set $P101, $P5003
    defined $I5001, $P101
    box $P5012, $I5001
    set $P5011, $P5012
    unless $I5001 goto if85_end343 
.annotate 'line', 1072
    find_lex $P5004, "@plan"
    find_lex $P5005, "@plan"
    set $N5001, $P5005
    set $I5002, $N5001
    new $P5006, 'ResizablePMCArray'
    box $P5007, 4
    push $P5006, $P5007
    find_lex $P5008, "$obj"
    push $P5006, $P5008
.annotate 'line', 1073
    find_lex $P5009, "$_"
    $P5010 = $P5009."name"()
    push $P5006, $P5010
    push $P5006, $P101
    set $P5004[$I5002], $P5006
    set $P5011, $P5006
  if85_end343:
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_190_1346968509.914") :anon :lex :outer("cuid_76_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1086
    .const 'Sub' $P5015 = 'cuid_189_1346968509.914' 
    capture_lex $P5015 
    .lex "$class", $P101 
    null $P5001
    set $P101, $P5001
    find_lex $P5002, "$i"
    set $N5002, $P5002
    set $N5003, 1
    sub $N5001, $N5002, $N5003
    box $P5003, $N5001
    store_lex "$i", $P5003
    find_lex $P5005, "@mro"
    find_lex $P5006, "$i"
    set $I5001, $P5006
    set $P5004, $P5005[$I5001]
    unless_null $P5004, fallback352
    null $P5007
    set $P5004, $P5007
  fallback352:
    set $P101, $P5004
.annotate 'line', 1089
    get_how $P5011, $P101
    $P5012 = $P5011."BUILDPLAN"($P101)
    set $P5008, $P5012
    iter $P5010, $P5012
  for_next353:
    unless $P5010, for_done355
    shift $P5014, $P5010
  for_redo354:
    .const 'Sub' $P5013 = 'cuid_189_1346968509.914' 
    capture_lex $P5013
    $P5008 = $P5013($P5014)
    goto for_next353
  for_done355:
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_189_1346968509.914") :anon :lex :outer("cuid_190_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1089
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5001, "@all_plan"
    push $P5001, _lex_param_0
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "BUILDPLAN" :subid("cuid_77_1346968509.914") :anon :lex :outer("cuid_98_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1096
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 6
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!BUILDPLAN"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "BUILDALLPLAN" :subid("cuid_78_1346968509.914") :anon :lex :outer("cuid_98_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1100
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 6
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!BUILDALLPLAN"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "parents" :subid("cuid_79_1346968509.914") :anon :lex :outer("cuid_98_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1108
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :named("local") :optional 
    .param int haz_param_19 :opt_flag 
    if haz_param_19, default358
    box $P5008, 0
    set _lex_param_2, $P5008
  default358:
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$local", _lex_param_2 
    unless _lex_param_2 goto if87_else356 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 6
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!parents"
    set $P5007, $P5003
    goto if87_end357
  if87_else356:
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 6
    repr_get_attr_obj $P5006, $P5004, $P5005, "@!mro"
    set $P5007, $P5006
  if87_end357:
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "mro" :subid("cuid_80_1346968509.914") :anon :lex :outer("cuid_98_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1112
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 6
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!mro"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "roles" :subid("cuid_81_1346968509.914") :anon :lex :outer("cuid_98_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1116
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :named("local") 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$local", _lex_param_2 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 6
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!roles"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "methods" :subid("cuid_82_1346968509.914") :anon :lex :outer("cuid_98_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1120
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :named("local") :optional 
    .param int haz_param_20 :opt_flag 
    .const 'Sub' $P5008 = 'cuid_193_1346968509.914' 
    capture_lex $P5008 
    if haz_param_20, default367
    box $P5007, 0
    set _lex_param_2, $P5007
  default367:
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$local", _lex_param_2 
    unless _lex_param_2 goto if88_else359 
.annotate 'line', 1121
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 6
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!method_order"
    set $P5006, $P5003
    goto if88_end360
  if88_else359:
    .const 'Sub' $P5004 = 'cuid_193_1346968509.914' 
    capture_lex $P5004
    $P5005 = $P5004()
    set $P5006, $P5005
  if88_end360:
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_193_1346968509.914") :anon :lex :outer("cuid_82_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1124
    .const 'Sub' $P5011 = 'cuid_192_1346968509.914' 
    capture_lex $P5011 
    .lex "@meths", $P101 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    find_lex $P5006, "self"
    nqp_decontainerize $P5005, $P5006
    nqp_get_sc_object $P5007, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 6
    repr_get_attr_obj $P5008, $P5005, $P5007, "@!mro"
    set $P5002, $P5008
    iter $P5004, $P5008
  for_next364:
    unless $P5004, for_done366
    shift $P5010, $P5004
  for_redo365:
    .const 'Sub' $P5009 = 'cuid_192_1346968509.914' 
    capture_lex $P5009
    $P5002 = $P5009($P5010)
    goto for_next364
  for_done366:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_192_1346968509.914") :anon :lex :outer("cuid_193_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1126
    .param pmc _lex_param_0 
    .const 'Sub' $P5008 = 'cuid_191_1346968509.914' 
    capture_lex $P5008 
    .lex "$_", _lex_param_0 
.annotate 'line', 1127
    get_how $P5004, _lex_param_0
    $P5005 = $P5004."methods"(_lex_param_0, 1 :named("local"))
    set $P5001, $P5005
    iter $P5003, $P5005
  for_next361:
    unless $P5003, for_done363
    shift $P5007, $P5003
  for_redo362:
    .const 'Sub' $P5006 = 'cuid_191_1346968509.914' 
    capture_lex $P5006
    $P5001 = $P5006($P5007)
    goto for_next361
  for_done363:
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_191_1346968509.914") :anon :lex :outer("cuid_192_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1127
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 1128
    find_lex $P5001, "@meths"
    $P5002 = $P5001."push"(_lex_param_0)
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "method_table" :subid("cuid_83_1346968509.914") :anon :lex :outer("cuid_98_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1135
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 6
    repr_get_attr_obj $P5003, $P5001, $P5002, "%!methods"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "name" :subid("cuid_84_1346968509.914") :anon :lex :outer("cuid_98_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1139
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 6
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!name"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "traced" :subid("cuid_85_1346968509.914") :anon :lex :outer("cuid_98_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1143
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 6
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!trace"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "trace_depth" :subid("cuid_86_1346968509.914") :anon :lex :outer("cuid_98_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1147
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 6
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!trace_depth"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "attributes" :subid("cuid_87_1346968509.914") :anon :lex :outer("cuid_98_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1151
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :named("local") :optional 
    .param int haz_param_21 :opt_flag 
    .const 'Sub' $P5020 = 'cuid_194_1346968509.914' 
    capture_lex $P5020 
    .const 'Sub' $P5020 = 'cuid_196_1346968509.914' 
    capture_lex $P5020 
    if haz_param_21, default379
    null $P5019
    set _lex_param_2, $P5019
  default379:
    .lex "@attrs", $P101 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$local", _lex_param_2 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    unless _lex_param_2 goto if89_else368 
.annotate 'line', 1153
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 6
    repr_get_attr_obj $P5007, $P5005, $P5006, "%!attributes"
    set $P5002, $P5007
    iter $P5004, $P5007
  for_next370:
    unless $P5004, for_done372
    shift $P5009, $P5004
  for_redo371:
    .const 'Sub' $P5008 = 'cuid_194_1346968509.914' 
    capture_lex $P5008
    $P5002 = $P5008($P5009)
    goto for_next370
  for_done372:
    set $P5018, $P5002
    goto if89_end369
  if89_else368:
.annotate 'line', 1158
    nqp_decontainerize $P5013, _lex_param_0
    nqp_get_sc_object $P5014, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 6
    repr_get_attr_obj $P5015, $P5013, $P5014, "@!mro"
    set $P5010, $P5015
    iter $P5012, $P5015
  for_next376:
    unless $P5012, for_done378
    shift $P5017, $P5012
  for_redo377:
    .const 'Sub' $P5016 = 'cuid_196_1346968509.914' 
    capture_lex $P5016
    $P5010 = $P5016($P5017)
    goto for_next376
  for_done378:
    set $P5018, $P5010
  if89_end369:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_194_1346968509.914") :anon :lex :outer("cuid_87_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1154
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 1155
    find_lex $P5001, "@attrs"
    $P5002 = _lex_param_0."value"()
    $P5003 = $P5001."push"($P5002)
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_196_1346968509.914") :anon :lex :outer("cuid_87_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1159
    .param pmc _lex_param_0 
    .const 'Sub' $P5008 = 'cuid_195_1346968509.914' 
    capture_lex $P5008 
    .lex "$_", _lex_param_0 
.annotate 'line', 1160
    get_how $P5004, _lex_param_0
    $P5005 = $P5004."attributes"(_lex_param_0, 1 :named("local"))
    set $P5001, $P5005
    iter $P5003, $P5005
  for_next373:
    unless $P5003, for_done375
    shift $P5007, $P5003
  for_redo374:
    .const 'Sub' $P5006 = 'cuid_195_1346968509.914' 
    capture_lex $P5006
    $P5001 = $P5006($P5007)
    goto for_next373
  for_done375:
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_195_1346968509.914") :anon :lex :outer("cuid_196_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1160
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 1161
    find_lex $P5001, "@attrs"
    $P5002 = $P5001."push"(_lex_param_0)
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "parrot_vtable_mappings" :subid("cuid_88_1346968509.914") :anon :lex :outer("cuid_98_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1168
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :named("local") 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$local", _lex_param_2 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 6
    repr_get_attr_obj $P5003, $P5001, $P5002, "%!parrot_vtable_mapping"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "parrot_vtable_handler_mappings" :subid("cuid_89_1346968509.914") :anon :lex :outer("cuid_98_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1172
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :named("local") 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$local", _lex_param_2 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 6
    repr_get_attr_obj $P5003, $P5001, $P5002, "%!parrot_vtable_handler_mapping"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "isa" :subid("cuid_90_1346968509.914") :anon :lex :outer("cuid_98_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1180
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "$check-class", $P101 
    .lex "$i", $P102 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$check", _lex_param_2 
    null $P5001
    set $P101, $P5001
    null $P5002
    set $P102, $P5002
    root_new $P103, ['parrot';'Continuation']
    set_label $P103, lexotic_380
    .lex "RETURN", $P103
    get_what $P5003, _lex_param_2
    set $P101, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 6
    repr_get_attr_obj $P5006, $P5004, $P5005, "@!mro"
    set $N5001, $P5006
    box $P5007, $N5001
    set $P102, $P5007
  while90_test382:
    set $N5002, $P102
    set $N5003, 0
    isgt $I5001, $N5002, $N5003
    box $P5019, $I5001
    set $P5018, $P5019
    unless $I5001 goto while90_done386 
  while90_redo384:
.annotate 'line', 1183
    set $N5005, $P102
    set $N5006, 1
    sub $N5004, $N5005, $N5006
    box $P5008, $N5004
    set $P102, $P5008
    nqp_decontainerize $P5010, _lex_param_0
    nqp_get_sc_object $P5011, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 6
    repr_get_attr_obj $P5012, $P5010, $P5011, "@!mro"
    set $I5004, $P102
    set $P5009, $P5012[$I5004]
    unless_null $P5009, fallback389
    null $P5013
    set $P5009, $P5013
  fallback389:
    get_id $I5003, $P5009
    get_id $I5005, $P101
    iseq $I5002, $I5003, $I5005
    box $P5017, $I5002
    set $P5016, $P5017
    unless $I5002 goto if91_end388 
.annotate 'line', 1185
    find_lex $P5014, "RETURN"
    $P5015 = $P5014(1)
    set $P5016, $P5015
  if91_end388:
    set $P5018, $P5016
    goto while90_test382 
  while90_done386:
    find_lex $P5020, "RETURN"
    $P5021 = $P5020(0)
    goto lexotic_381
  lexotic_380:
    .get_results ($P5021)
  lexotic_381:
    .return ($P5021) 
.end
.HLL "nqp"
.namespace []
.sub "does" :subid("cuid_91_1346968509.914") :anon :lex :outer("cuid_98_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1192
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "$i", $P101 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$check", _lex_param_2 
    null $P5001
    set $P101, $P5001
    root_new $P102, ['parrot';'Continuation']
    set_label $P102, lexotic_390
    .lex "RETURN", $P102
    nqp_decontainerize $P5002, _lex_param_0
    nqp_get_sc_object $P5003, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 6
    repr_get_attr_obj $P5004, $P5002, $P5003, "@!done"
    set $N5001, $P5004
    box $P5005, $N5001
    set $P101, $P5005
  while92_test392:
    set $N5002, $P101
    set $N5003, 0
    isgt $I5001, $N5002, $N5003
    box $P5017, $I5001
    set $P5016, $P5017
    unless $I5001 goto while92_done396 
  while92_redo394:
.annotate 'line', 1194
    set $N5005, $P101
    set $N5006, 1
    sub $N5004, $N5005, $N5006
    box $P5006, $N5004
    set $P101, $P5006
    nqp_decontainerize $P5008, _lex_param_0
    nqp_get_sc_object $P5009, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 6
    repr_get_attr_obj $P5010, $P5008, $P5009, "@!done"
    set $I5004, $P101
    set $P5007, $P5010[$I5004]
    unless_null $P5007, fallback399
    null $P5011
    set $P5007, $P5011
  fallback399:
    get_id $I5003, $P5007
    get_id $I5005, _lex_param_2
    iseq $I5002, $I5003, $I5005
    box $P5015, $I5002
    set $P5014, $P5015
    unless $I5002 goto if93_end398 
.annotate 'line', 1196
    find_lex $P5012, "RETURN"
    $P5013 = $P5012(1)
    set $P5014, $P5013
  if93_end398:
    set $P5016, $P5014
    goto while92_test392 
  while92_done396:
    find_lex $P5018, "RETURN"
    $P5019 = $P5018(0)
    goto lexotic_391
  lexotic_390:
    .get_results ($P5019)
  lexotic_391:
    .return ($P5019) 
.end
.HLL "nqp"
.namespace []
.sub "can" :subid("cuid_92_1346968509.914") :anon :lex :outer("cuid_98_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1203
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .const 'Sub' $P5011 = 'cuid_197_1346968509.914' 
    capture_lex $P5011 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$name", _lex_param_2 
    root_new $P101, ['parrot';'Continuation']
    set_label $P101, lexotic_400
    .lex "RETURN", $P101
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 6
    repr_get_attr_obj $P5006, $P5004, $P5005, "@!mro"
    set $P5001, $P5006
    iter $P5003, $P5006
  for_next405:
    unless $P5003, for_done407
    shift $P5008, $P5003
  for_redo406:
    .const 'Sub' $P5007 = 'cuid_197_1346968509.914' 
    capture_lex $P5007
    $P5001 = $P5007($P5008)
    goto for_next405
  for_done407:
    find_lex $P5009, "RETURN"
    $P5010 = $P5009(0)
    goto lexotic_401
  lexotic_400:
    .get_results ($P5010)
  lexotic_401:
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_197_1346968509.914") :anon :lex :outer("cuid_92_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1204
    .param pmc _lex_param_0 
    .lex "%meths", $P101 
    .lex "$can", $P102 
    .lex "$_", _lex_param_0 
    new $P5001, 'Hash'
    set $P101, $P5001
    null $P5002
    set $P102, $P5002
.annotate 'line', 1205
    get_how $P5003, _lex_param_0
    find_lex $P5004, "$obj"
    $P5005 = $P5003."method_table"($P5004)
    set $P101, $P5005
    find_lex $P5007, "$name"
    set $S5001, $P5007
    set $P5006, $P101[$S5001]
    unless_null $P5006, fallback402
    null $P5008
    set $P5006, $P5008
  fallback402:
    set $P102, $P5006
    defined $I5001, $P102
    box $P5012, $I5001
    set $P5011, $P5012
    unless $I5001 goto if94_end404 
.annotate 'line', 1207
    find_lex $P5009, "RETURN"
    $P5010 = $P5009($P102)
    set $P5011, $P5010
  if94_end404:
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "find_method" :subid("cuid_93_1346968509.914") :anon :lex :outer("cuid_98_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1217
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 :named("no_fallback") :optional 
    .param int haz_param_22 :opt_flag 
    .param pmc _lex_param_4 :named("no_trace") :optional 
    .param int haz_param_23 :opt_flag 
    .const 'Sub' $P5012 = 'cuid_200_1346968509.914' 
    capture_lex $P5012 
    if haz_param_22, default422
    box $P5010, 0
    set _lex_param_3, $P5010
  default422:
    if haz_param_23, default423
    box $P5011, 0
    set _lex_param_4, $P5011
  default423:
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$name", _lex_param_2 
    .lex "$no_fallback", _lex_param_3 
    .lex "$no_trace", _lex_param_4 
    root_new $P101, ['parrot';'Continuation']
    set_label $P101, lexotic_408
    .lex "RETURN", $P101
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 6
    repr_get_attr_obj $P5006, $P5004, $P5005, "@!mro"
    set $P5001, $P5006
    iter $P5003, $P5006
  for_next419:
    unless $P5003, for_done421
    shift $P5008, $P5003
  for_redo420:
    .const 'Sub' $P5007 = 'cuid_200_1346968509.914' 
    capture_lex $P5007
    $P5001 = $P5007($P5008)
    goto for_next419
  for_done421:
    null $P5009
    goto lexotic_409
  lexotic_408:
    .get_results ($P5009)
  lexotic_409:
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_200_1346968509.914") :anon :lex :outer("cuid_93_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1218
    .param pmc _lex_param_0 
    .const 'Sub' $P5010 = 'cuid_199_1346968509.914' 
    capture_lex $P5010 
    .lex "%meths", $P101 
    .lex "$_", _lex_param_0 
    new $P5001, 'Hash'
    set $P101, $P5001
.annotate 'line', 1219
    get_how $P5002, _lex_param_0
    find_lex $P5003, "$obj"
    $P5004 = $P5002."method_table"($P5003)
    set $P101, $P5004
    find_lex $P5005, "$name"
    set $S5001, $P5005
    exists $I5001, $P101[$S5001]
    box $P5009, $I5001
    set $P5008, $P5009
    unless $I5001 goto if95_end411 
    .const 'Sub' $P5006 = 'cuid_199_1346968509.914' 
    capture_lex $P5006
    $P5007 = $P5006()
    set $P5008, $P5007
  if95_end411:
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_199_1346968509.914") :anon :lex :outer("cuid_200_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1220
    .const 'Sub' $P5021 = 'cuid_198_1346968509.914' 
    capture_lex $P5021 
    .lex "$found", $P101 
    null $P5001
    set $P101, $P5001
    find_lex $P5003, "%meths"
    find_lex $P5004, "$name"
    set $S5001, $P5004
    set $P5002, $P5003[$S5001]
    unless_null $P5002, fallback412
    null $P5005
    set $P5002, $P5005
  fallback412:
    set $P101, $P5002
    find_lex $P5008, "self"
    nqp_decontainerize $P5007, $P5008
    nqp_get_sc_object $P5009, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 6
    repr_get_attr_obj $P5010, $P5007, $P5009, "$!trace"
    set $P5012, $P5010
    unless $P5010 goto if98_end418 
    find_lex $P5011, "$no_trace"
    isfalse $I5001, $P5011
    box $P5013, $I5001
    set $P5012, $P5013
  if98_end418:
    set $P5015, $P5012
    unless $P5012 goto if97_end416 
    find_lex $P5014, "$name"
    set $S5003, $P5014
    substr $S5002, $S5003, 0, 1
    isne $I5002, $S5002, "!"
    box $P5016, $I5002
    set $P5015, $P5016
  if97_end416:
    unless $P5015 goto if96_else413 
    .const 'Sub' $P5018 = 'cuid_198_1346968509.914' 
    capture_lex $P5018
    newclosure $P5017, $P5018
    set $P5019, $P5017
    goto if96_end414
  if96_else413:
    set $P5019, $P101
  if96_end414:
    find_lex $P5006, "RETURN"
    $P5020 = $P5006($P5019)
    .return ($P5020) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_198_1346968509.914") :anon :lex :outer("cuid_199_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1223
    .param pmc _lex_param_0 :slurpy 
    .param pmc _lex_param_1 :slurpy :named 
    .lex "$result", $P101 
    .lex "@pos", _lex_param_0 
    .lex "%named", _lex_param_1 
    null $P5001
    set $P101, $P5001
.annotate 'line', 1224
    find_lex $P5003, "self"
    nqp_decontainerize $P5002, $P5003
    nqp_get_sc_object $P5004, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 6
    repr_get_attr_obj $P5005, $P5002, $P5004, "$!trace_depth"
    set $I5001, $P5005
    repeat $S5002, "  ", $I5001
    find_lex $P5006, "$name"
    set $S5004, $P5006
    concat $S5003, "Calling ", $S5004
    concat $S5001, $S5002, $S5003
    $P5007 = "&say"($S5001)
    find_lex $P5009, "self"
    nqp_decontainerize $P5008, $P5009
    nqp_get_sc_object $P5010, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 6
    find_lex $P5012, "self"
    nqp_decontainerize $P5011, $P5012
    nqp_get_sc_object $P5013, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 6
    repr_get_attr_obj $P5014, $P5011, $P5013, "$!trace_depth"
    set $N5002, $P5014
    set $N5003, 1
    add $N5001, $N5002, $N5003
    box $P5015, $N5001
    repr_bind_attr_obj $P5008, $P5010, "$!trace_depth", $P5015
.annotate 'line', 1226
    find_lex $P5016, "$found"
    $P5017 = $P5016(_lex_param_0 :flat, _lex_param_1 :flat :named)
    set $P101, $P5017
    find_lex $P5019, "self"
    nqp_decontainerize $P5018, $P5019
    nqp_get_sc_object $P5020, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 6
    find_lex $P5022, "self"
    nqp_decontainerize $P5021, $P5022
    nqp_get_sc_object $P5023, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 6
    repr_get_attr_obj $P5024, $P5021, $P5023, "$!trace_depth"
    set $N5005, $P5024
    set $N5006, 1
    sub $N5004, $N5005, $N5006
    box $P5025, $N5004
    repr_bind_attr_obj $P5018, $P5020, "$!trace_depth", $P5025
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "cache" :subid("cuid_94_1346968509.914") :anon :lex :outer("cuid_98_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1239
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$key", _lex_param_2 
    .lex "$value_generator", _lex_param_3 
    find_lex $P5001, "%caches"
    nqp_decontainerize $P5002, _lex_param_0
    get_id $I5002, $P5002
    set $S5001, $I5002
    exists $I5001, $P5001[$S5001]
    box $P5007, $I5001
    set $P5006, $P5007
    if $I5001 goto unless99_end425 
    find_lex $P5003, "%caches"
    nqp_decontainerize $P5004, _lex_param_0
    get_id $I5003, $P5004
    set $S5002, $I5003
    new $P5005, 'Hash'
    set $P5003[$S5002], $P5005
    set $P5006, $P5005
  unless99_end425:
    find_lex $P5009, "%caches"
    nqp_decontainerize $P5010, _lex_param_0
    get_id $I5005, $P5010
    set $S5003, $I5005
    set $P5008, $P5009[$S5003]
    unless_null $P5008, fallback428
    null $P5011
    set $P5008, $P5011
  fallback428:
    set $S5004, _lex_param_2
    exists $I5004, $P5008[$S5004]
    unless $I5004 goto if100_else426 
    find_lex $P5014, "%caches"
    nqp_decontainerize $P5015, _lex_param_0
    get_id $I5006, $P5015
    set $S5005, $I5006
    set $P5013, $P5014[$S5005]
    unless_null $P5013, fallback429
    null $P5016
    set $P5013, $P5016
  fallback429:
    set $S5006, _lex_param_2
    set $P5012, $P5013[$S5006]
    unless_null $P5012, fallback430
    null $P5017
    set $P5012, $P5017
  fallback430:
    set $P5023, $P5012
    goto if100_end427
  if100_else426:
    find_lex $P5019, "%caches"
    nqp_decontainerize $P5020, _lex_param_0
    get_id $I5007, $P5020
    set $S5007, $I5007
    set $P5018, $P5019[$S5007]
    unless_null $P5018, fallback431
    null $P5021
    set $P5018, $P5021
  fallback431:
    set $S5008, _lex_param_2
.annotate 'line', 1243
    $P5022 = _lex_param_3()
    set $P5018[$S5008], $P5022
    set $P5023, $P5022
  if100_end427:
    .return ($P5023) 
.end
.HLL "nqp"
.namespace []
.sub "mixin" :subid("cuid_95_1346968509.914") :anon :lex :outer("cuid_98_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1251
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .const 'Sub' $P5023 = 'cuid_201_1346968509.914' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_202_1346968509.914' 
    capture_lex $P5023 
    .lex "$found", $P101 
    .lex "$new_type", $P102 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$role", _lex_param_2 
    null $P5001
    set $P101, $P5001
    null $P5002
    set $P102, $P5002
    box $P5003, 0
    set $P101, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 6
    repr_get_attr_obj $P5006, $P5004, $P5005, "@!mixin_cache"
    isnull $I5001, $P5006
    box $P5018, $I5001
    set $P5017, $P5018
    if $I5001 goto unless101_end433 
.annotate 'line', 1255
    nqp_decontainerize $P5010, _lex_param_0
    nqp_get_sc_object $P5011, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 6
    repr_get_attr_obj $P5012, $P5010, $P5011, "@!mixin_cache"
    set $P5007, $P5012
    iter $P5009, $P5012
    new $P5014, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5014, for_handlers436
    push_eh $P5014
  for_next437:
    unless $P5009, for_done439
    shift $P5015, $P5009
    shift $P5016, $P5009
  for_redo438:
    .const 'Sub' $P5013 = 'cuid_201_1346968509.914' 
    capture_lex $P5013
    $P5007 = $P5013($P5015, $P5016)
    goto for_next437
  for_handlers436:
    .get_results ($P5014)
    pop_upto_eh $P5014
    getattribute $P5014, $P5014, 'type'
    eq $P5014, .CONTROL_LOOP_NEXT, for_next437
    eq $P5014, .CONTROL_LOOP_REDO, for_redo438
  for_done439:
    pop_eh 
    set $P5017, $P5007
  unless101_end433:
    set $P5021, $P101
    if $P101 goto unless103_end441 
    .const 'Sub' $P5019 = 'cuid_202_1346968509.914' 
    capture_lex $P5019
    $P5020 = $P5019()
    set $P5021, $P5020
  unless103_end441:
    repr_defined $I5002, _lex_param_1
    unless $I5002 goto if105_else444 
    repr_change_type _lex_param_1, $P102
    set $P5022, _lex_param_1
    goto if105_end445
  if105_else444:
    set $P5022, $P102
  if105_end445:
    .return ($P5022) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_201_1346968509.914") :anon :lex :outer("cuid_95_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1256
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$c_role", _lex_param_0 
    .lex "$c_type", _lex_param_1 
    get_id $I5002, _lex_param_0
    find_lex $P5001, "$role"
    get_id $I5003, $P5001
    iseq $I5001, $I5002, $I5003
    set $I5004, $I5001
    unless $I5001 goto if102_end435 
.annotate 'line', 1257
    store_lex "$new_type", _lex_param_1
    box $P5002, 1
    store_lex "$found", $P5002
    die 0, .CONTROL_LOOP_LAST
    set $I5004, 0
  if102_end435:
    .return ($I5004) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_202_1346968509.914") :anon :lex :outer("cuid_95_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1266
    .lex "$new_name", $P101 
    null $P5001
    set $P101, $P5001
.annotate 'line', 1268
    find_lex $P5003, "self"
    nqp_decontainerize $P5002, $P5003
    find_lex $P5004, "$obj"
    $P5005 = $P5002."name"($P5004)
    set $S5004, $P5005
    concat $S5003, $S5004, "+{"
    find_lex $P5007, "$role"
    get_how $P5006, $P5007
    find_lex $P5008, "$role"
    $P5009 = $P5006."name"($P5008)
    set $S5005, $P5009
    concat $S5002, $S5003, $S5005
    concat $S5001, $S5002, "}"
    box $P5010, $S5001
    set $P101, $P5010
.annotate 'line', 1272
    find_lex $P5012, "self"
    nqp_decontainerize $P5011, $P5012
    find_lex $P5013, "$obj"
    repr_name $S5006, $P5013
    $P5014 = $P5011."new_type"($P101 :named("name"), $S5006 :named("repr"))
    store_lex "$new_type", $P5014
.annotate 'line', 1273
    find_lex $P5016, "$new_type"
    get_how $P5015, $P5016
    find_lex $P5017, "$new_type"
    find_lex $P5019, "$obj"
    get_what $P5018, $P5019
    $P5020 = $P5015."add_parent"($P5017, $P5018)
.annotate 'line', 1274
    find_lex $P5022, "$new_type"
    get_how $P5021, $P5022
    find_lex $P5023, "$new_type"
    find_lex $P5024, "$role"
    $P5025 = $P5021."add_role"($P5023, $P5024)
.annotate 'line', 1275
    find_lex $P5027, "$new_type"
    get_how $P5026, $P5027
    find_lex $P5028, "$new_type"
    $P5029 = $P5026."compose"($P5028)
    nqp_disable_sc_write_barrier 
    find_lex $P5031, "self"
    nqp_decontainerize $P5030, $P5031
    nqp_get_sc_object $P5032, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 6
    repr_get_attr_obj $P5033, $P5030, $P5032, "@!mixin_cache"
    isnull $I5001, $P5033
    box $P5039, $I5001
    set $P5038, $P5039
    unless $I5001 goto if104_end443 
    find_lex $P5035, "self"
    nqp_decontainerize $P5034, $P5035
    nqp_get_sc_object $P5036, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 6
    new $P5037, 'ResizablePMCArray'
    repr_bind_attr_obj $P5034, $P5036, "@!mixin_cache", $P5037
    set $P5038, $P5037
  if104_end443:
    find_lex $P5041, "self"
    nqp_decontainerize $P5040, $P5041
    nqp_get_sc_object $P5042, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 6
    repr_get_attr_obj $P5043, $P5040, $P5042, "@!mixin_cache"
    find_lex $P5045, "self"
    nqp_decontainerize $P5044, $P5045
    nqp_get_sc_object $P5046, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 6
    repr_get_attr_obj $P5047, $P5044, $P5046, "@!mixin_cache"
    set $N5001, $P5047
    set $I5002, $N5001
    find_lex $P5048, "$role"
    set $P5043[$I5002], $P5048
    find_lex $P5050, "self"
    nqp_decontainerize $P5049, $P5050
    nqp_get_sc_object $P5051, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 6
    repr_get_attr_obj $P5052, $P5049, $P5051, "@!mixin_cache"
    find_lex $P5054, "self"
    nqp_decontainerize $P5053, $P5054
    nqp_get_sc_object $P5055, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 6
    repr_get_attr_obj $P5056, $P5053, $P5055, "@!mixin_cache"
    set $N5002, $P5056
    set $I5003, $N5002
    find_lex $P5057, "$new_type"
    set $P5052[$I5003], $P5057
    nqp_enable_sc_write_barrier 
    .return (1) 
.end
.HLL "nqp"
.namespace []
.sub "trace-on" :subid("cuid_96_1346968509.914") :anon :lex :outer("cuid_98_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1296
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :optional 
    .param int haz_param_24 :opt_flag 
    if haz_param_24, default447
    null $P5009
    set _lex_param_2, $P5009
  default447:
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$depth", _lex_param_2 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 6
    box $P5003, 1
    repr_bind_attr_obj $P5001, $P5002, "$!trace", $P5003
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 6
    set $P5006, _lex_param_2
    defined $I5001, $P5006
    if $I5001, defor446
    box $P5007, 0
    set $P5006, $P5007
  defor446:
    repr_bind_attr_obj $P5004, $P5005, "$!trace_depth", $P5006
    set_method_cache_authoritativeness _lex_param_1, 0
    new $P5008, 'Hash'
    publish_method_cache _lex_param_1, $P5008
    .return (_lex_param_1) 
.end
.HLL "nqp"
.namespace []
.sub "trace-off" :subid("cuid_97_1346968509.914") :anon :lex :outer("cuid_98_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1302
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 6
    box $P5003, 0
    repr_bind_attr_obj $P5001, $P5002, "$!trace", $P5003
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_108_1346968509.914") :anon :lex :outer("cuid_1_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1308
    .const 'Sub' $P5013 = 'cuid_99_1346968509.914' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_100_1346968509.914' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_101_1346968509.914' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_102_1346968509.914' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_103_1346968509.914' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_104_1346968509.914' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_105_1346968509.914' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_106_1346968509.914' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_107_1346968509.914' 
    capture_lex $P5013 
    .lex "$archetypes", $P101 
    .lex "$?PACKAGE", $P102 
    .lex "$?CLASS", $P103 
    null $P5001
    set $P101, $P5001
.annotate 'line', 1312
    nqp_get_sc_object $P5002, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 1
    $P5003 = $P5002."new"(1 :named("nominal"))
    set $P101, $P5003
    .const 'Sub' $P5004 = 'cuid_99_1346968509.914' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_100_1346968509.914' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_101_1346968509.914' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_102_1346968509.914' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_103_1346968509.914' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_104_1346968509.914' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_105_1346968509.914' 
    capture_lex $P5010
    .const 'Sub' $P5011 = 'cuid_106_1346968509.914' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_107_1346968509.914' 
    capture_lex $P5012
    .return ($P5012) 
.end
.HLL "nqp"
.namespace []
.sub "archetypes" :subid("cuid_99_1346968509.914") :anon :lex :outer("cuid_108_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1313
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    find_lex $P5001, "$archetypes"
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "new" :subid("cuid_100_1346968509.914") :anon :lex :outer("cuid_108_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1317
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("name") :optional 
    .param int haz_param_25 :opt_flag 
    if haz_param_25, default448
    null $P5005
    set _lex_param_1, $P5005
  default448:
    .lex "$obj", $P101 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    null $P5001
    set $P101, $P5001
    nqp_decontainerize $P5003, _lex_param_0
    repr_instance_of $P5002, $P5003
    set $P101, $P5002
.annotate 'line', 1319
    $P5004 = $P101."BUILD"(_lex_param_1 :named("name"))
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "BUILD" :subid("cuid_101_1346968509.914") :anon :lex :outer("cuid_108_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1323
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("name") :optional 
    .param int haz_param_26 :opt_flag 
    if haz_param_26, default449
    null $P5006
    set _lex_param_1, $P5006
  default449:
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 7
    repr_bind_attr_obj $P5001, $P5002, "$!name", _lex_param_1
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 7
    box $P5005, 0
    repr_bind_attr_obj $P5003, $P5004, "$!composed", $P5005
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "new_type" :subid("cuid_102_1346968509.914") :anon :lex :outer("cuid_108_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1331
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("name") :optional 
    .param int haz_param_27 :opt_flag 
    .param pmc _lex_param_2 :named("repr") 
    if haz_param_27, default450
    box $P5006, "<anon>"
    set _lex_param_1, $P5006
  default450:
    .lex "$metaclass", $P101 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    .lex "$repr", _lex_param_2 
    null $P5001
    set $P101, $P5001
.annotate 'line', 1332
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."new"(_lex_param_1 :named("name"))
    set $P101, $P5003
    set $S5001, _lex_param_2
    repr_type_object_for $P5004, $P101, $S5001
    new $P5005, 'Hash'
    set_who $P5004, $P5005
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "add_method" :subid("cuid_103_1346968509.914") :anon :lex :outer("cuid_108_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1336
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$name", _lex_param_2 
    .lex "$code_obj", _lex_param_3 
    box $P5001, "Native types may not have methods (must be boxed to call method)"
    die $P5001
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "add_multi_method" :subid("cuid_104_1346968509.914") :anon :lex :outer("cuid_108_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1340
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$name", _lex_param_2 
    .lex "$code_obj", _lex_param_3 
    box $P5001, "Native types may not have methods (must be boxed to call method)"
    die $P5001
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "add_attribute" :subid("cuid_105_1346968509.914") :anon :lex :outer("cuid_108_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1344
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$meta_attr", _lex_param_2 
    box $P5001, "Native types may not have attributes"
    die $P5001
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "compose" :subid("cuid_106_1346968509.914") :anon :lex :outer("cuid_108_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1348
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 7
    box $P5003, 1
    repr_bind_attr_obj $P5001, $P5002, "$!composed", $P5003
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "name" :subid("cuid_107_1346968509.914") :anon :lex :outer("cuid_108_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1352
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 7
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!name"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_119_1346968509.914") :anon :lex :outer("cuid_1_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1358
    .const 'Sub' $P5012 = 'cuid_204_1346968509.914' 
    capture_lex $P5012 
    .const 'Sub' $P5012 = 'cuid_109_1346968509.914' 
    capture_lex $P5012 
    .const 'Sub' $P5012 = 'cuid_110_1346968509.914' 
    capture_lex $P5012 
    .const 'Sub' $P5012 = 'cuid_111_1346968509.914' 
    capture_lex $P5012 
    .const 'Sub' $P5012 = 'cuid_112_1346968509.914' 
    capture_lex $P5012 
    .const 'Sub' $P5012 = 'cuid_113_1346968509.914' 
    capture_lex $P5012 
    .const 'Sub' $P5012 = 'cuid_114_1346968509.914' 
    capture_lex $P5012 
    .const 'Sub' $P5012 = 'cuid_115_1346968509.914' 
    capture_lex $P5012 
    .const 'Sub' $P5012 = 'cuid_116_1346968509.914' 
    capture_lex $P5012 
    .const 'Sub' $P5012 = 'cuid_117_1346968509.914' 
    capture_lex $P5012 
    .const 'Sub' $P5012 = 'cuid_118_1346968509.914' 
    capture_lex $P5012 
    .lex "&has_method", $P101 
    .lex "$?PACKAGE", $P102 
    .lex "$?CLASS", $P103 
    .const 'Sub' $P5001 = 'cuid_204_1346968509.914' 
    capture_lex $P5001
    set $P101, $P5001
    .const 'Sub' $P5002 = 'cuid_109_1346968509.914' 
    capture_lex $P5002
    .const 'Sub' $P5003 = 'cuid_110_1346968509.914' 
    capture_lex $P5003
    .const 'Sub' $P5004 = 'cuid_111_1346968509.914' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_112_1346968509.914' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_113_1346968509.914' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_114_1346968509.914' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_115_1346968509.914' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_116_1346968509.914' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_117_1346968509.914' 
    capture_lex $P5010
    .const 'Sub' $P5011 = 'cuid_118_1346968509.914' 
    capture_lex $P5011
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "has_method" :subid("cuid_204_1346968509.914") :anon :lex :outer("cuid_119_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1438
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .const 'Sub' $P5011 = 'cuid_203_1346968509.914' 
    capture_lex $P5011 
    .lex "@methods", $P101 
    .lex "$target", _lex_param_0 
    .lex "$name", _lex_param_1 
    .lex "$local", _lex_param_2 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    root_new $P102, ['parrot';'Continuation']
    set_label $P102, lexotic_451
    .lex "RETURN", $P102
.annotate 'line', 1439
    get_how $P5002, _lex_param_0
    $P5003 = $P5002."methods"(_lex_param_0, _lex_param_2 :named("local"))
    set $P101, $P5003
    set $P5004, $P101
    iter $P5006, $P101
  for_next455:
    unless $P5006, for_done457
    shift $P5008, $P5006
  for_redo456:
    .const 'Sub' $P5007 = 'cuid_203_1346968509.914' 
    capture_lex $P5007
    $P5004 = $P5007($P5008)
    goto for_next455
  for_done457:
    find_lex $P5009, "RETURN"
    $P5010 = $P5009(0)
    goto lexotic_452
  lexotic_451:
    .get_results ($P5010)
  lexotic_452:
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_203_1346968509.914") :anon :lex :outer("cuid_204_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1440
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    set $S5001, _lex_param_0
    find_lex $P5001, "$name"
    set $S5002, $P5001
    iseq $I5001, $S5001, $S5002
    box $P5005, $I5001
    set $P5004, $P5005
    unless $I5001 goto if106_end454 
.annotate 'line', 1441
    find_lex $P5002, "RETURN"
    $P5003 = $P5002(1)
    set $P5004, $P5003
  if106_end454:
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "new" :subid("cuid_109_1346968509.914") :anon :lex :outer("cuid_119_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1366
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("name") 
    .param pmc _lex_param_2 :named("box_target") :optional 
    .param int haz_param_28 :opt_flag 
    .param pmc _lex_param_3 :slurpy :named 
    if haz_param_28, default458
    null $P5005
    set _lex_param_2, $P5005
  default458:
    .lex "$attr", $P101 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    .lex "$box_target", _lex_param_2 
    .lex "%extra", _lex_param_3 
    null $P5001
    set $P101, $P5001
    nqp_decontainerize $P5003, _lex_param_0
    repr_instance_of $P5002, $P5003
    set $P101, $P5002
.annotate 'line', 1368
    exists $I5001, _lex_param_3["type"]
    exists $I5002, _lex_param_3["default"]
    $P5004 = $P101."BUILD"(_lex_param_1 :named("name"), _lex_param_3 :flat :named, _lex_param_2 :named("box_target"), $I5001 :named("has_type"), $I5002 :named("has_default"))
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "BUILD" :subid("cuid_110_1346968509.914") :anon :lex :outer("cuid_119_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1374
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("name") :optional 
    .param int haz_param_29 :opt_flag 
    .param pmc _lex_param_2 :named("type") :optional 
    .param int haz_param_30 :opt_flag 
    .param pmc _lex_param_3 :named("has_type") :optional 
    .param int haz_param_31 :opt_flag 
    .param pmc _lex_param_4 :named("box_target") :optional 
    .param int haz_param_32 :opt_flag 
    .param pmc _lex_param_5 :named("default") :optional 
    .param int haz_param_33 :opt_flag 
    .param pmc _lex_param_6 :named("has_default") :optional 
    .param int haz_param_34 :opt_flag 
    if haz_param_29, default459
    null $P5013
    set _lex_param_1, $P5013
  default459:
    if haz_param_30, default460
    null $P5014
    set _lex_param_2, $P5014
  default460:
    if haz_param_31, default461
    null $P5015
    set _lex_param_3, $P5015
  default461:
    if haz_param_32, default462
    null $P5016
    set _lex_param_4, $P5016
  default462:
    if haz_param_33, default463
    null $P5017
    set _lex_param_5, $P5017
  default463:
    if haz_param_34, default464
    null $P5018
    set _lex_param_6, $P5018
  default464:
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    .lex "$type", _lex_param_2 
    .lex "$has_type", _lex_param_3 
    .lex "$box_target", _lex_param_4 
    .lex "$default", _lex_param_5 
    .lex "$has_default", _lex_param_6 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 8
    repr_bind_attr_obj $P5001, $P5002, "$!name", _lex_param_1
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 8
    repr_bind_attr_obj $P5003, $P5004, "$!type", _lex_param_2
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 8
    repr_bind_attr_obj $P5005, $P5006, "$!has_type", _lex_param_3
    nqp_decontainerize $P5007, _lex_param_0
    nqp_get_sc_object $P5008, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 8
    repr_bind_attr_obj $P5007, $P5008, "$!box_target", _lex_param_4
    nqp_decontainerize $P5009, _lex_param_0
    nqp_get_sc_object $P5010, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 8
    repr_bind_attr_obj $P5009, $P5010, "$!default", _lex_param_5
    nqp_decontainerize $P5011, _lex_param_0
    nqp_get_sc_object $P5012, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 8
    repr_bind_attr_obj $P5011, $P5012, "$!has_default", _lex_param_6
    .return (_lex_param_6) 
.end
.HLL "nqp"
.namespace []
.sub "name" :subid("cuid_111_1346968509.914") :anon :lex :outer("cuid_119_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1383
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 8
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!name"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "type" :subid("cuid_112_1346968509.914") :anon :lex :outer("cuid_119_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1387
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 8
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!has_type"
    unless $P5003 goto if107_else465 
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 8
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!type"
    set $P5008, $P5006
    goto if107_end466
  if107_else465:
    null $P5007
    set $P5008, $P5007
  if107_end466:
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "has_accessor" :subid("cuid_113_1346968509.914") :anon :lex :outer("cuid_119_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1391
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    .return (0) 
.end
.HLL "nqp"
.namespace []
.sub "build_closure" :subid("cuid_114_1346968509.914") :anon :lex :outer("cuid_119_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1395
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    .return (0) 
.end
.HLL "nqp"
.namespace []
.sub "box_target" :subid("cuid_115_1346968509.914") :anon :lex :outer("cuid_119_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1399
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 8
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!box_target"
    isnull $I5002, $P5003
    box $P5004, $I5002
    isfalse $I5001, $P5004
    box $P5009, $I5001
    set $P5008, $P5009
    unless $I5001 goto if109_end470 
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 8
    repr_get_attr_obj $P5007, $P5005, $P5006, "$!box_target"
    set $P5008, $P5007
  if109_end470:
    unless $P5008 goto if108_else467 
    set $I5003, 1
    goto if108_end468
  if108_else467:
    set $I5003, 0
  if108_end468:
    .return ($I5003) 
.end
.HLL "nqp"
.namespace []
.sub "auto_viv_container" :subid("cuid_116_1346968509.914") :anon :lex :outer("cuid_119_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1403
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 8
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!has_default"
    unless $P5003 goto if110_else471 
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 8
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!default"
    set $P5008, $P5006
    goto if110_end472
  if110_else471:
    null $P5007
    set $P5008, $P5007
  if110_end472:
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "compose" :subid("cuid_117_1346968509.914") :anon :lex :outer("cuid_119_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1407
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .return (_lex_param_1) 
.end
.HLL "nqp"
.namespace []
.sub "has_mutator" :subid("cuid_118_1346968509.914") :anon :lex :outer("cuid_119_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1434
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 8
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!name"
    set $S5002, $P5003
    substr $S5001, $S5002, 1, 1
    isne $I5001, $S5001, "!"
    .return ($I5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_130_1346968509.914") :anon :lex :outer("cuid_1_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1449
    .const 'Sub' $P5014 = 'cuid_120_1346968509.914' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_121_1346968509.914' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_122_1346968509.914' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_123_1346968509.914' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_124_1346968509.914' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_125_1346968509.914' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_126_1346968509.914' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_127_1346968509.914' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_128_1346968509.914' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_129_1346968509.914' 
    capture_lex $P5014 
    .lex "$archetypes", $P101 
    .lex "$?PACKAGE", $P102 
    .lex "$?CLASS", $P103 
    null $P5001
    set $P101, $P5001
.annotate 'line', 1453
    nqp_get_sc_object $P5002, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 1
    $P5003 = $P5002."new"()
    set $P101, $P5003
    .const 'Sub' $P5004 = 'cuid_120_1346968509.914' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_121_1346968509.914' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_122_1346968509.914' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_123_1346968509.914' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_124_1346968509.914' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_125_1346968509.914' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_126_1346968509.914' 
    capture_lex $P5010
    .const 'Sub' $P5011 = 'cuid_127_1346968509.914' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_128_1346968509.914' 
    capture_lex $P5012
    .const 'Sub' $P5013 = 'cuid_129_1346968509.914' 
    capture_lex $P5013
    .return ($P5013) 
.end
.HLL "nqp"
.namespace []
.sub "archetypes" :subid("cuid_120_1346968509.914") :anon :lex :outer("cuid_130_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1454
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    find_lex $P5001, "$archetypes"
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "new" :subid("cuid_121_1346968509.914") :anon :lex :outer("cuid_130_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1458
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("name") :optional 
    .param int haz_param_35 :opt_flag 
    if haz_param_35, default473
    null $P5005
    set _lex_param_1, $P5005
  default473:
    .lex "$obj", $P101 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    null $P5001
    set $P101, $P5001
    nqp_decontainerize $P5003, _lex_param_0
    repr_instance_of $P5002, $P5003
    set $P101, $P5002
.annotate 'line', 1460
    $P5004 = $P101."BUILD"(_lex_param_1 :named("name"))
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "BUILD" :subid("cuid_122_1346968509.914") :anon :lex :outer("cuid_130_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1464
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("name") :optional 
    .param int haz_param_36 :opt_flag 
    if haz_param_36, default474
    null $P5006
    set _lex_param_1, $P5006
  default474:
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 9
    repr_bind_attr_obj $P5001, $P5002, "$!name", _lex_param_1
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 9
    box $P5005, 0
    repr_bind_attr_obj $P5003, $P5004, "$!composed", $P5005
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "new_type" :subid("cuid_123_1346968509.914") :anon :lex :outer("cuid_130_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1471
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("name") :optional 
    .param int haz_param_37 :opt_flag 
    if haz_param_37, default475
    box $P5006, "<anon>"
    set _lex_param_1, $P5006
  default475:
    .lex "$metaclass", $P101 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    null $P5001
    set $P101, $P5001
.annotate 'line', 1472
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."new"(_lex_param_1 :named("name"))
    set $P101, $P5003
    repr_type_object_for $P5004, $P101, "Uninstantiable"
    new $P5005, 'Hash'
    set_who $P5004, $P5005
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "add_method" :subid("cuid_124_1346968509.914") :anon :lex :outer("cuid_130_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1476
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$name", _lex_param_2 
    .lex "$code_obj", _lex_param_3 
    null $P5001
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "add_multi_method" :subid("cuid_125_1346968509.914") :anon :lex :outer("cuid_130_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1482
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$name", _lex_param_2 
    .lex "$code_obj", _lex_param_3 
    box $P5001, "Modules may not have methods"
    die $P5001
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "add_attribute" :subid("cuid_126_1346968509.914") :anon :lex :outer("cuid_130_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1486
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$meta_attr", _lex_param_2 
    box $P5001, "Modules may not have attributes"
    die $P5001
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "compose" :subid("cuid_127_1346968509.914") :anon :lex :outer("cuid_130_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1490
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "%empty", $P101 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    new $P5001, 'Hash'
    set $P101, $P5001
    publish_method_cache _lex_param_1, $P101
    set_method_cache_authoritativeness _lex_param_1, 1
    nqp_decontainerize $P5002, _lex_param_0
    nqp_get_sc_object $P5003, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 9
    box $P5004, 1
    repr_bind_attr_obj $P5002, $P5003, "$!composed", $P5004
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "find_method" :subid("cuid_128_1346968509.914") :anon :lex :outer("cuid_130_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1496
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 :slurpy :named 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$name", _lex_param_2 
    .lex "%opts", _lex_param_3 
    null $P5001
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "name" :subid("cuid_129_1346968509.914") :anon :lex :outer("cuid_130_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1500
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 9
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!name"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_131_1346968509.914") :anon :lex :outer("cuid_1_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1508
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    get_who $P5001, $P101
    nqp_get_sc_object $P5002, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 9
    set $P5001["module"], $P5002
    get_who $P5003, $P101
    nqp_get_sc_object $P5004, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 6
    set $P5003["class"], $P5004
    get_who $P5005, $P101
    nqp_get_sc_object $P5006, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 8
    set $P5005["class-attr"], $P5006
    get_who $P5007, $P101
    nqp_get_sc_object $P5008, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 6
    set $P5007["grammar"], $P5008
    get_who $P5009, $P101
    nqp_get_sc_object $P5010, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 8
    set $P5009["grammar-attr"], $P5010
    get_who $P5011, $P101
    nqp_get_sc_object $P5012, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 5
    set $P5011["role"], $P5012
    get_who $P5013, $P101
    nqp_get_sc_object $P5014, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 8
    set $P5013["role-attr"], $P5014
    get_who $P5015, $P101
    nqp_get_sc_object $P5016, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 7
    set $P5015["native"], $P5016
    .return ($P5016) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_206_1346968509.914") :load :init
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
    .const 'Sub' $P5001 = 'cuid_205_1346968509.914' 
    capture_lex $P5001 
    .local pmc cur_sc 
    nqp_dynop_setup 
    nqp_bigint_setup 
    getinterp $P5001
    get_class $P5002, "LexPad"
    get_class $P5003, "NQPLexPad"
    $P5004 = $P5001."hll_map"($P5002, $P5003)
    nqp_create_sc $P5001, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932"
    set cur_sc, $P5001
    $P5002 = cur_sc."set_description"("src\\stage2\\gen\\nqp-mo.pm")
    new $P5003, 'ResizableStringArray'
    null $S5001
    push $P5003, $S5001
    push $P5003, "P6opaque"
    push $P5003, "RoleToRoleApplier"
    push $P5003, "NQPConcreteRoleHOW"
    push $P5003, "RoleToClassApplier"
    push $P5003, "NQPParametricRoleHOW"
    push $P5003, "NQPClassHOW"
    push $P5003, "NQPNativeHOW"
    push $P5003, "NQPAttribute"
    push $P5003, "NQPModuleHOW"
    push $P5003, "new"
    push $P5003, "BUILD"
    push $P5003, "nominal"
    push $P5003, "nominalizable"
    push $P5003, "inheritable"
    push $P5003, "inheritalizable"
    push $P5003, "composable"
    push $P5003, "composalizable"
    push $P5003, "generic"
    push $P5003, "parametric"
    push $P5003, "$!nominal"
    push $P5003, "$!nominalizable"
    push $P5003, "$!inheritable"
    push $P5003, "$!inheritalizable"
    push $P5003, "$!composable"
    push $P5003, "$!composalizable"
    push $P5003, "$!generic"
    push $P5003, "$!parametric"
    push $P5003, "apply"
    push $P5003, "archetypes"
    push $P5003, "new_type"
    push $P5003, "add_method"
    push $P5003, "add_multi_method"
    push $P5003, "add_attribute"
    push $P5003, "add_parent"
    push $P5003, "add_role"
    push $P5003, "add_collision"
    push $P5003, "compose"
    push $P5003, "methods"
    push $P5003, "method_table"
    push $P5003, "collisions"
    push $P5003, "name"
    push $P5003, "attributes"
    push $P5003, "roles"
    push $P5003, "role_typecheck_list"
    push $P5003, "instance_of"
    push $P5003, "$!name"
    push $P5003, "$!instance_of"
    push $P5003, "%!attributes"
    push $P5003, "%!methods"
    push $P5003, "@!multi_methods_to_incorporate"
    push $P5003, "@!collisions"
    push $P5003, "@!roles"
    push $P5003, "@!role_typecheck_list"
    push $P5003, "$!composed"
    push $P5003, "set_body_block"
    push $P5003, "specialize"
    push $P5003, "$!body_block"
    push $P5003, "set_default_parent"
    push $P5003, "reparent"
    push $P5003, "add_parrot_vtable_mapping"
    push $P5003, "add_parrot_vtable_handler_mapping"
    push $P5003, "incorporate_multi_candidates"
    push $P5003, "publish_type_cache"
    push $P5003, "publish_method_cache"
    push $P5003, "publish_boolification_spec"
    push $P5003, "publish_parrot_vtable_mapping"
    push $P5003, "publish_parrot_vtablee_handler_mapping"
    push $P5003, "create_BUILDPLAN"
    push $P5003, "BUILDPLAN"
    push $P5003, "BUILDALLPLAN"
    push $P5003, "parents"
    push $P5003, "mro"
    push $P5003, "traced"
    push $P5003, "trace_depth"
    push $P5003, "parrot_vtable_mappings"
    push $P5003, "parrot_vtable_handler_mappings"
    push $P5003, "isa"
    push $P5003, "does"
    push $P5003, "can"
    push $P5003, "find_method"
    push $P5003, "cache"
    push $P5003, "mixin"
    push $P5003, "trace-on"
    push $P5003, "trace-off"
    push $P5003, "@!method_order"
    push $P5003, "@!parents"
    push $P5003, "$!default_parent"
    push $P5003, "@!vtable"
    push $P5003, "%!method-vtable-slots"
    push $P5003, "@!mro"
    push $P5003, "@!done"
    push $P5003, "%!parrot_vtable_mapping"
    push $P5003, "%!parrot_vtable_handler_mapping"
    push $P5003, "$!trace"
    push $P5003, "$!trace_depth"
    push $P5003, "@!BUILDALLPLAN"
    push $P5003, "@!BUILDPLAN"
    push $P5003, "@!mixin_cache"
    push $P5003, "type"
    push $P5003, "has_accessor"
    push $P5003, "build_closure"
    push $P5003, "box_target"
    push $P5003, "auto_viv_container"
    push $P5003, "has_mutator"
    push $P5003, "$!type"
    push $P5003, "$!has_type"
    push $P5003, "$!box_target"
    push $P5003, "$!default"
    push $P5003, "$!has_default"
    push $P5003, "__6MODEL_CORE__"
    push $P5003, "GLOBALish"
    push $P5003, "Archetypes"
    push $P5003, "EXPORTHOW"
    .const 'Sub' $P5004 = 'cuid_205_1346968509.914' 
    capture_lex $P5004
    $P5005 = $P5004()
    nqp_deserialize_sc "AQAAAEAAAAABAAAASAAAAAsAAACgAAAA/hIAAEwAAAC+FwAA8iEAAAAAAADyIQAAAAAAAPIhAADyIQAAAAAAAG4AAAAAAAAAAQAAAAAAAAABAAAACgEAAAEAAADkAgAAAQAAAIwDAAABAAAA+gUAAAEAAACiBgAAAQAAANYIAAABAAAAeA0AAAEAAADADgAAAQAAAG4QAAABAAAAxBEAAAAAAAALAAAAAAAAAAAAAAAKAAgAAAACAAAAAgAAAAAAAgAAAAMAAAACAAAAAAADAAAABAAAAAIAAAAAAAQAAAAFAAAAAgAAAAAABQAAAAYAAAACAAAAAAAGAAAABwAAAAIAAAAAAAcAAAAIAAAAAgAAAAAACAAAAAkAAAACAAAAAAAJAAAACgAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAAAAAAAAMAAAAAAAwAAAAAAAAAAQAAAAoAAAAAAAoACgAAAAoAAAALAAAAAAAAAAAACwAAAAsAAAAAAAEAAAAMAAAACwAAAAAAAgAAAA0AAAALAAAAAAADAAAADgAAAAsAAAAAAAQAAAAPAAAACwAAAAAABQAAABAAAAALAAAAAAAGAAAAEQAAAAsAAAAAAAcAAAASAAAACwAAAAAACAAAABMAAAALAAAAAAAJAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAAEAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAAAEAAAAKAAgAAAAUAAAABAAAAAAAAAAAABUAAAAEAAEAAAAAAAAAFgAAAAQAAgAAAAAAAAAXAAAABAADAAAAAAAAABgAAAAEAAQAAAAAAAAAGQAAAAQABQAAAAAAAAAaAAAABAAGAAAAAAAAABsAAAAEAAcAAAAAAAAAAAAAAA0AAAAAAAAAAgAAAAoAAAAAAAoAAQAAABwAAAALAAAAAAAKAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAAIAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAAAgAAAAMAAAAAAA4AAAAAAAAAAwAAAAoAAAAAAAoAEwAAAB0AAAALAAAAAAALAAAACgAAAAsAAAAAAAwAAAALAAAACwAAAAAADQAAAB4AAAALAAAAAAAOAAAAHwAAAAsAAAAAAA8AAAAgAAAACwAAAAAAEAAAACEAAAALAAAAAAARAAAAIgAAAAsAAAAAABIAAAAjAAAACwAAAAAAEwAAACQAAAALAAAAAAAUAAAAJQAAAAsAAAAAABUAAAAmAAAACwAAAAAAFgAAACcAAAALAAAAAAAXAAAAKAAAAAsAAAAAABgAAAApAAAACwAAAAAAGQAAACoAAAALAAAAAAAaAAAAKwAAAAsAAAAAABsAAAAsAAAACwAAAAAAHAAAAC0AAAALAAAAAAAdAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAAMAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAJAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAAAwAAAAoACQAAAC4AAAAEAAAAAAAAAAAALwAAAAQAAQAAAAAAAAAwAAAABAACAAAAAAAAADEAAAAEAAMAAAAAAAAAMgAAAAQABAAAAAAAAAAzAAAABAAFAAAAAAAAADQAAAAEAAYAAAAAAAAANQAAAAQABwAAAAAAAAA2AAAABAAIAAAAAAAAAAAAAAAPAAAAAAAAAAQAAAAKAAAAAAAKAAEAAAAcAAAACwAAAAAAHgAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAAAEAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAAAQAAAADAAAAAAAQAAAAAAAAAAUAAAAKAAAAAAAKABIAAAAdAAAACwAAAAAAHwAAAAoAAAALAAAAAAAgAAAACwAAAAsAAAAAACEAAAAeAAAACwAAAAAAIgAAADcAAAALAAAAAAAjAAAAHwAAAAsAAAAAACQAAAAgAAAACwAAAAAAJQAAACEAAAALAAAAAAAmAAAAIgAAAAsAAAAAACcAAAAjAAAACwAAAAAAKAAAACUAAAALAAAAAAApAAAAEwAAAAsAAAAAACoAAAA4AAAACwAAAAAAKwAAACYAAAALAAAAAAAsAAAAJwAAAAsAAAAAAC0AAAApAAAACwAAAAAALgAAACoAAAALAAAAAAAvAAAAKwAAAAsAAAAAADAAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAAABQAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAcAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAAAUAAAAKAAcAAAAuAAAABAAAAAAAAAAAADAAAAAEAAEAAAAAAAAAMQAAAAQAAgAAAAAAAAAyAAAABAADAAAAAAAAADQAAAAEAAQAAAAAAAAANgAAAAQABQAAAAAAAAA5AAAABAAGAAAAAAAAAAAAAAARAAAAAAAAAAYAAAAKAAAAAAAKACoAAAAdAAAACwAAAAAAMQAAAAoAAAALAAAAAAAyAAAACwAAAAsAAAAAADMAAAAeAAAACwAAAAAANAAAAB8AAAALAAAAAAA1AAAAIAAAAAsAAAAAADYAAAAhAAAACwAAAAAANwAAACIAAAALAAAAAAA4AAAAOgAAAAsAAAAAADkAAAA7AAAACwAAAAAAOgAAACMAAAALAAAAAAA7AAAAPAAAAAsAAAAAADwAAAA9AAAACwAAAAAAPQAAACUAAAALAAAAAAA+AAAAPgAAAAsAAAAAAD8AAAA/AAAACwAAAAAAQAAAAEAAAAALAAAAAABBAAAAQQAAAAsAAAAAAEIAAABCAAAACwAAAAAAQwAAAEMAAAALAAAAAABEAAAARAAAAAsAAAAAAEUAAABFAAAACwAAAAAARgAAAEYAAAALAAAAAABHAAAARwAAAAsAAAAAAEgAAABIAAAACwAAAAAASQAAACsAAAALAAAAAABKAAAAJgAAAAsAAAAAAEsAAAAnAAAACwAAAAAATAAAACkAAAALAAAAAABNAAAASQAAAAsAAAAAAE4AAABKAAAACwAAAAAATwAAACoAAAALAAAAAABQAAAASwAAAAsAAAAAAFEAAABMAAAACwAAAAAAUgAAAE0AAAALAAAAAABTAAAATgAAAAsAAAAAAFQAAABPAAAACwAAAAAAVQAAAFAAAAALAAAAAABWAAAAUQAAAAsAAAAAAFcAAABSAAAACwAAAAAAWAAAAFMAAAALAAAAAABZAAAAVAAAAAsAAAAAAFoAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAAABgAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAABgAAAAoAFAAAAC4AAAAEAAAAAAAAAAAAMAAAAAQAAQAAAAAAAAAxAAAABAACAAAAAAAAAFUAAAAEAAMAAAAAAAAAMgAAAAQABAAAAAAAAABWAAAABAAFAAAAAAAAADQAAAAEAAYAAAAAAAAAVwAAAAQABwAAAAAAAABYAAAABAAIAAAAAAAAAFkAAAAEAAkAAAAAAAAANgAAAAQACgAAAAAAAABaAAAABAALAAAAAAAAAFsAAAAEAAwAAAAAAAAAXAAAAAQADQAAAAAAAABdAAAABAAOAAAAAAAAAF4AAAAEAA8AAAAAAAAAXwAAAAQAEAAAAAAAAABgAAAABAARAAAAAAAAAGEAAAAEABIAAAAAAAAAYgAAAAQAEwAAAAAAAAAAAAAAEgAAAAAAAAAHAAAACgAAAAAACgAJAAAAHQAAAAsAAAAAAFsAAAAKAAAACwAAAAAAXAAAAAsAAAALAAAAAABdAAAAHgAAAAsAAAAAAF4AAAAfAAAACwAAAAAAXwAAACAAAAALAAAAAABgAAAAIQAAAAsAAAAAAGEAAAAlAAAACwAAAAAAYgAAACkAAAALAAAAAABjAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAAcAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAAAcAAAAKAAIAAAAuAAAABAAAAAAAAAAAADYAAAAEAAEAAAAAAAAAAAAAABMAAAAAAAAACAAAAAoAAAAAAAoACgAAAAoAAAALAAAAAABkAAAACwAAAAsAAAAAAGUAAAApAAAACwAAAAAAZgAAAGMAAAALAAAAAABnAAAAZAAAAAsAAAAAAGgAAABlAAAACwAAAAAAaQAAAGYAAAALAAAAAABqAAAAZwAAAAsAAAAAAGsAAAAlAAAACwAAAAAAbAAAAGgAAAALAAAAAABtAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAAgAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAACAAAAAoABgAAAC4AAAAEAAAAAAAAAAAAaQAAAAQAAQAAAAAAAABqAAAABAACAAAAAAAAAGsAAAAEAAMAAAAAAAAAbAAAAAQABAAAAAAAAABtAAAABAAFAAAAAAAAAAAAAAAUAAAAAAAAAAkAAAAKAAAAAAAKAAoAAAAdAAAACwAAAAAAbgAAAAoAAAALAAAAAABvAAAACwAAAAsAAAAAAHAAAAAeAAAACwAAAAAAcQAAAB8AAAALAAAAAAByAAAAIAAAAAsAAAAAAHMAAAAhAAAACwAAAAAAdAAAACUAAAALAAAAAAB1AAAAUAAAAAsAAAAAAHYAAAApAAAACwAAAAAAdwAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAAAJAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAQAAAAAAAAACAAAAAAAJAAAACgACAAAALgAAAAQAAAAAAAAAAAA2AAAABAABAAAAAAAAAAAAAAAVAAAAAAAAAAoAAAAKAAAAAAAKAAAAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAAACgAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAQAAAAAAAAACAAAAAAAKAAAAAwAAAAAAAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAACAAAAAAAAAAAAAAAAAAAAAwAAAAAAAAAAAAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAFAAAAAAAAAAAAAAAAAAAABgAAAAAAAAAAAAAAAAAAAAcAAAAAAAAAAAAAAAAAAAAIAAAAAAAAAAAAAAAAAAAACQAAAAAAAAAAAAAAAAAAAAoAAAAAAAAAAAAAAAEAAAAAAAAAAAAAAAEAAAABAAAAAAAAABAAAAABAAAAAQAAAAAAAAD8AAAAAQAAAAEAAAAAAAAAGgEAAAEAAAABAAAAAAAAAI4CAAABAAAAAQAAAAAAAACsAgAAAQAAAAEAAAAAAAAA/gMAAAEAAAABAAAAAAAAACIHAAABAAAAAQAAAAAAAADEBwAAAQAAAAEAAAAAAAAAnAgAAAEAAAABAAAAAAAAAEwJAAABAAAAAQAAAAIAAABcCQAAAQAAAAEAAAACAAAAYAkAAAEAAAABAAAAAgAAAGQJAAABAAAAAQAAAAIAAABoCQAAAQAAAAEAAAACAAAAbAkAAAEAAAABAAAAAgAAAHAJAAABAAAAAQAAAAIAAAB0CQAAAQAAAAEAAAACAAAAeAkAAAEAAAABAAAAAgAAAHwJAAABAAAAAQAAAAIAAACACQAAAQAAAAEAAAACAAAAhAkAAAEAAAABAAAAAgAAAIgJAAABAAAAAQAAAAIAAACMCQAAAQAAAAEAAAACAAAAkAkAAAEAAAABAAAAAgAAAJQJAAABAAAAAQAAAAIAAACYCQAAAQAAAAEAAAACAAAAnAkAAAEAAAABAAAAAgAAAKAJAAABAAAAAQAAAAIAAACkCQAAAQAAAAEAAAACAAAAqAkAAAEAAAABAAAAAgAAAKwJAAABAAAAAQAAAAIAAACwCQAAAQAAAAEAAAACAAAAtAkAAAEAAAABAAAAAgAAALgJAAABAAAAAQAAAAIAAAC8CQAAAQAAAAEAAAACAAAAwAkAAAEAAAABAAAAAgAAAMQJAAABAAAAAQAAAAIAAADICQAAAQAAAAEAAAACAAAAzAkAAAEAAAABAAAAAgAAANAJAAABAAAAAQAAAAIAAADUCQAAAQAAAAEAAAACAAAA2AkAAAEAAAABAAAAAgAAANwJAAABAAAAAQAAAAIAAADgCQAAAQAAAAEAAAACAAAA5AkAAAEAAAABAAAAAgAAAOgJAAABAAAAAQAAAAIAAADsCQAAAQAAAAEAAAACAAAA8AkAAAEAAAABAAAAAgAAAPQJAAABAAAAAQAAAAIAAAD4CQAAAQAAAAEAAAACAAAA/AkAAAEAAAABAAAAAgAAAAAKAAABAAAAAQAAAAIAAAAECgAAAQAAAAEAAAACAAAACAoAAAEAAAABAAAAAgAAAAwKAAABAAAAAQAAAAIAAAAQCgAAAQAAAAEAAAACAAAAFAoAAAEAAAABAAAAAgAAABgKAAABAAAAAQAAAAIAAAAcCgAAAQAAAAEAAAACAAAAIAoAAAEAAAABAAAAAgAAACQKAAABAAAAAQAAAAIAAAAoCgAAAQAAAAEAAAACAAAALAoAAAEAAAABAAAAAgAAADAKAAABAAAAbwAAAAcAAAAAAAoAAAAAAHAAAAAHAAgAAAACAAAAAAAWAAAAAgAAAAAAFwAAAAIAAAAAABgAAAACAAAAAAAZAAAAAgAAAAAAGgAAAAIAAAAAABsAAAACAAAAAAAcAAAAAgAAAAAAHQAAAAoACgAAAAoAAAALAAAAAAAAAAAACwAAAAsAAAAAAAEAAAAMAAAACwAAAAAAAgAAAA0AAAALAAAAAAADAAAADgAAAAsAAAAAAAQAAAAPAAAACwAAAAAABQAAABAAAAALAAAAAAAGAAAAEQAAAAsAAAAAAAcAAAASAAAACwAAAAAACAAAABMAAAALAAAAAAAJAAAAAgAAAAcAAAAAAAoAAQAAABwAAAALAAAAAAAKAAAAAwAAAAcACQAAAAIAAAAAAB4AAAACAAAAAAAfAAAAAgAAAAAAIAAAAAIAAAAAACEAAAACAAAAAAAiAAAAAgAAAAAAIwAAAAIAAAAAACQAAAACAAAAAAAlAAAAAgAAAAAAJgAAAAoAEwAAAB0AAAALAAAAAAALAAAACgAAAAsAAAAAAAwAAAALAAAACwAAAAAADQAAAB4AAAALAAAAAAAOAAAAHwAAAAsAAAAAAA8AAAAgAAAACwAAAAAAEAAAACEAAAALAAAAAAARAAAAIgAAAAsAAAAAABIAAAAjAAAACwAAAAAAEwAAACQAAAALAAAAAAAUAAAAJQAAAAsAAAAAABUAAAAmAAAACwAAAAAAFgAAACcAAAALAAAAAAAXAAAAKAAAAAsAAAAAABgAAAApAAAACwAAAAAAGQAAACoAAAALAAAAAAAaAAAAKwAAAAsAAAAAABsAAAAsAAAACwAAAAAAHAAAAC0AAAALAAAAAAAdAAAABAAAAAcAAAAAAAoAAQAAABwAAAALAAAAAAAeAAAABQAAAAcABwAAAAIAAAAAACcAAAACAAAAAAAoAAAAAgAAAAAAKQAAAAIAAAAAACoAAAACAAAAAAArAAAAAgAAAAAALAAAAAIAAAAAAC0AAAAKABIAAAAdAAAACwAAAAAAHwAAAAoAAAALAAAAAAAgAAAACwAAAAsAAAAAACEAAAAeAAAACwAAAAAAIgAAADcAAAALAAAAAAAjAAAAHwAAAAsAAAAAACQAAAAgAAAACwAAAAAAJQAAACEAAAALAAAAAAAmAAAAIgAAAAsAAAAAACcAAAAjAAAACwAAAAAAKAAAACUAAAALAAAAAAApAAAAEwAAAAsAAAAAACoAAAA4AAAACwAAAAAAKwAAACYAAAALAAAAAAAsAAAAJwAAAAsAAAAAAC0AAAApAAAACwAAAAAALgAAACoAAAALAAAAAAAvAAAAKwAAAAsAAAAAADAAAAAGAAAABwAUAAAAAgAAAAAALgAAAAIAAAAAAC8AAAACAAAAAAAwAAAAAgAAAAAAMQAAAAIAAAAAADIAAAACAAAAAAAzAAAAAgAAAAAANAAAAAIAAAAAADUAAAACAAAAAAA2AAAAAgAAAAAANwAAAAIAAAAAADgAAAACAAAAAAA5AAAAAgAAAAAAOgAAAAIAAAAAADsAAAACAAAAAAA8AAAAAgAAAAAAPQAAAAIAAAAAAD4AAAACAAAAAAA/AAAAAgAAAAAAQAAAAAIAAAAAAEEAAAAKACoAAAAdAAAACwAAAAAAMQAAAAoAAAALAAAAAAAyAAAACwAAAAsAAAAAADMAAAAeAAAACwAAAAAANAAAAB8AAAALAAAAAAA1AAAAIAAAAAsAAAAAADYAAAAhAAAACwAAAAAANwAAACIAAAALAAAAAAA4AAAAOgAAAAsAAAAAADkAAAA7AAAACwAAAAAAOgAAACMAAAALAAAAAAA7AAAAPAAAAAsAAAAAADwAAAA9AAAACwAAAAAAPQAAACUAAAALAAAAAAA+AAAAPgAAAAsAAAAAAD8AAAA/AAAACwAAAAAAQAAAAEAAAAALAAAAAABBAAAAQQAAAAsAAAAAAEIAAABCAAAACwAAAAAAQwAAAEMAAAALAAAAAABEAAAARAAAAAsAAAAAAEUAAABFAAAACwAAAAAARgAAAEYAAAALAAAAAABHAAAARwAAAAsAAAAAAEgAAABIAAAACwAAAAAASQAAACsAAAALAAAAAABKAAAAJgAAAAsAAAAAAEsAAAAnAAAACwAAAAAATAAAACkAAAALAAAAAABNAAAASQAAAAsAAAAAAE4AAABKAAAACwAAAAAATwAAACoAAAALAAAAAABQAAAASwAAAAsAAAAAAFEAAABMAAAACwAAAAAAUgAAAE0AAAALAAAAAABTAAAATgAAAAsAAAAAAFQAAABPAAAACwAAAAAAVQAAAFAAAAALAAAAAABWAAAAUQAAAAsAAAAAAFcAAABSAAAACwAAAAAAWAAAAFMAAAALAAAAAABZAAAAVAAAAAsAAAAAAFoAAAAHAAAABwACAAAAAgAAAAAAQgAAAAIAAAAAAEMAAAAKAAkAAAAdAAAACwAAAAAAWwAAAAoAAAALAAAAAABcAAAACwAAAAsAAAAAAF0AAAAeAAAACwAAAAAAXgAAAB8AAAALAAAAAABfAAAAIAAAAAsAAAAAAGAAAAAhAAAACwAAAAAAYQAAACUAAAALAAAAAABiAAAAKQAAAAsAAAAAAGMAAAAIAAAABwAGAAAAAgAAAAAARAAAAAIAAAAAAEUAAAACAAAAAABGAAAAAgAAAAAARwAAAAIAAAAAAEgAAAACAAAAAABJAAAACgAKAAAACgAAAAsAAAAAAGQAAAALAAAACwAAAAAAZQAAACkAAAALAAAAAABmAAAAYwAAAAsAAAAAAGcAAABkAAAACwAAAAAAaAAAAGUAAAALAAAAAABpAAAAZgAAAAsAAAAAAGoAAABnAAAACwAAAAAAawAAACUAAAALAAAAAABsAAAAaAAAAAsAAAAAAG0AAAAJAAAABwACAAAAAgAAAAAASgAAAAIAAAAAAEsAAAAKAAoAAAAdAAAACwAAAAAAbgAAAAoAAAALAAAAAABvAAAACwAAAAsAAAAAAHAAAAAeAAAACwAAAAAAcQAAAB8AAAALAAAAAAByAAAAIAAAAAsAAAAAAHMAAAAhAAAACwAAAAAAdAAAACUAAAALAAAAAAB1AAAAUAAAAAsAAAAAAHYAAAApAAAACwAAAAAAdwAAAHEAAAAHAAAAAAAKAAAAAAAUAAAAFQAAABYAAAAXAAAAGAAAABkAAAAaAAAAGwAAAC4AAAAvAAAAMAAAADEAAAAyAAAAMwAAADQAAAA1AAAANgAAAC4AAAAwAAAAMQAAADIAAAA0AAAANgAAADkAAAAuAAAAMAAAADEAAABVAAAAMgAAAFYAAAA0AAAAVwAAAFgAAABZAAAANgAAAFoAAABbAAAAXAAAAF0AAABeAAAAXwAAAGAAAABhAAAAYgAAAC4AAAA2AAAALgAAAGkAAABqAAAAawAAAGwAAABtAAAALgAAADYAAAA=", cur_sc, $P5003, $P5005
    .const "LexInfo" $P5001 = "cuid_1_1346968509.914"
    nqp_get_sc_object $P5002, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 0
    $P5003 = $P5001."set_static_lexpad_value"("GLOBALish", $P5002)
    .const "LexInfo" $P5004 = "cuid_1_1346968509.914"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1346968509.914"
    nqp_get_sc_object $P5002, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 0
    $P5003 = $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5004 = "cuid_1_1346968509.914"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1346968509.914"
    nqp_get_sc_object $P5002, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 1
    $P5003 = $P5001."set_static_lexpad_value"("Archetypes", $P5002)
    .const "LexInfo" $P5004 = "cuid_1_1346968509.914"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_12_1346968509.914"
    nqp_get_sc_object $P5002, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 1
    $P5003 = $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5004 = "cuid_12_1346968509.914"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_12_1346968509.914"
    nqp_get_sc_object $P5002, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 1
    $P5003 = $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5004 = "cuid_12_1346968509.914"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1346968509.914"
    nqp_get_sc_object $P5002, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 2
    $P5003 = $P5001."set_static_lexpad_value"("RoleToRoleApplier", $P5002)
    .const "LexInfo" $P5004 = "cuid_1_1346968509.914"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_14_1346968509.914"
    nqp_get_sc_object $P5002, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 2
    $P5003 = $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5004 = "cuid_14_1346968509.914"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_14_1346968509.914"
    nqp_get_sc_object $P5002, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 2
    $P5003 = $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5004 = "cuid_14_1346968509.914"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1346968509.914"
    nqp_get_sc_object $P5002, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 3
    $P5003 = $P5001."set_static_lexpad_value"("NQPConcreteRoleHOW", $P5002)
    .const "LexInfo" $P5004 = "cuid_1_1346968509.914"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_34_1346968509.914"
    nqp_get_sc_object $P5002, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 3
    $P5003 = $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5004 = "cuid_34_1346968509.914"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_34_1346968509.914"
    nqp_get_sc_object $P5002, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 3
    $P5003 = $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5004 = "cuid_34_1346968509.914"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1346968509.914"
    nqp_get_sc_object $P5002, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 4
    $P5003 = $P5001."set_static_lexpad_value"("RoleToClassApplier", $P5002)
    .const "LexInfo" $P5004 = "cuid_1_1346968509.914"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_36_1346968509.914"
    nqp_get_sc_object $P5002, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 4
    $P5003 = $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5004 = "cuid_36_1346968509.914"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_36_1346968509.914"
    nqp_get_sc_object $P5002, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 4
    $P5003 = $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5004 = "cuid_36_1346968509.914"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1346968509.914"
    nqp_get_sc_object $P5002, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 5
    $P5003 = $P5001."set_static_lexpad_value"("NQPParametricRoleHOW", $P5002)
    .const "LexInfo" $P5004 = "cuid_1_1346968509.914"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_55_1346968509.914"
    nqp_get_sc_object $P5002, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 5
    $P5003 = $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5004 = "cuid_55_1346968509.914"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_55_1346968509.914"
    nqp_get_sc_object $P5002, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 5
    $P5003 = $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5004 = "cuid_55_1346968509.914"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1346968509.914"
    nqp_get_sc_object $P5002, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 6
    $P5003 = $P5001."set_static_lexpad_value"("NQPClassHOW", $P5002)
    .const "LexInfo" $P5004 = "cuid_1_1346968509.914"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_98_1346968509.914"
    nqp_get_sc_object $P5002, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 6
    $P5003 = $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5004 = "cuid_98_1346968509.914"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_98_1346968509.914"
    nqp_get_sc_object $P5002, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 6
    $P5003 = $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5004 = "cuid_98_1346968509.914"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1346968509.914"
    nqp_get_sc_object $P5002, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 7
    $P5003 = $P5001."set_static_lexpad_value"("NQPNativeHOW", $P5002)
    .const "LexInfo" $P5004 = "cuid_1_1346968509.914"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_108_1346968509.914"
    nqp_get_sc_object $P5002, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 7
    $P5003 = $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5004 = "cuid_108_1346968509.914"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_108_1346968509.914"
    nqp_get_sc_object $P5002, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 7
    $P5003 = $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5004 = "cuid_108_1346968509.914"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1346968509.914"
    nqp_get_sc_object $P5002, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 8
    $P5003 = $P5001."set_static_lexpad_value"("NQPAttribute", $P5002)
    .const "LexInfo" $P5004 = "cuid_1_1346968509.914"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_119_1346968509.914"
    nqp_get_sc_object $P5002, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 8
    $P5003 = $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5004 = "cuid_119_1346968509.914"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_119_1346968509.914"
    nqp_get_sc_object $P5002, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 8
    $P5003 = $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5004 = "cuid_119_1346968509.914"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1346968509.914"
    nqp_get_sc_object $P5002, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 9
    $P5003 = $P5001."set_static_lexpad_value"("NQPModuleHOW", $P5002)
    .const "LexInfo" $P5004 = "cuid_1_1346968509.914"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_130_1346968509.914"
    nqp_get_sc_object $P5002, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 9
    $P5003 = $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5004 = "cuid_130_1346968509.914"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_130_1346968509.914"
    nqp_get_sc_object $P5002, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 9
    $P5003 = $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5004 = "cuid_130_1346968509.914"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1346968509.914"
    nqp_get_sc_object $P5002, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 10
    $P5003 = $P5001."set_static_lexpad_value"("EXPORTHOW", $P5002)
    .const "LexInfo" $P5004 = "cuid_1_1346968509.914"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_131_1346968509.914"
    nqp_get_sc_object $P5002, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 10
    $P5003 = $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5004 = "cuid_131_1346968509.914"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_131_1346968509.914"
    nqp_get_sc_object $P5002, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 10
    $P5003 = $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5004 = "cuid_131_1346968509.914"
    $P5005 = $P5004."finish_static_lexpad"()
    nqp_get_sc_object $P5001, "3B7F9DF94D5E0C00B5BF75BB3CD549EA27F88861-1346968509.932", 0
    set_hll_global "GLOBAL", $P5001
    .return () 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_205_1346968509.914") :anon :lex :outer("cuid_206_1346968509.914")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
    new $P5001, 'ResizablePMCArray'
    .const 'Sub' $P5002 = "cuid_2_1346968509.914" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_3_1346968509.914" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_4_1346968509.914" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_5_1346968509.914" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_6_1346968509.914" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_7_1346968509.914" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_8_1346968509.914" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_9_1346968509.914" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_10_1346968509.914" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_11_1346968509.914" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_13_1346968509.914" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_15_1346968509.914" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_16_1346968509.914" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_17_1346968509.914" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_18_1346968509.914" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_19_1346968509.914" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_20_1346968509.914" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_21_1346968509.914" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_22_1346968509.914" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_23_1346968509.914" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_24_1346968509.914" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_25_1346968509.914" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_26_1346968509.914" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_27_1346968509.914" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_28_1346968509.914" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_29_1346968509.914" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_30_1346968509.914" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_31_1346968509.914" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_32_1346968509.914" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_33_1346968509.914" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_35_1346968509.914" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_37_1346968509.914" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_38_1346968509.914" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_39_1346968509.914" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_40_1346968509.914" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_41_1346968509.914" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_42_1346968509.914" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_43_1346968509.914" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_44_1346968509.914" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_45_1346968509.914" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_46_1346968509.914" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_47_1346968509.914" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_48_1346968509.914" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_49_1346968509.914" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_50_1346968509.914" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_51_1346968509.914" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_52_1346968509.914" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_53_1346968509.914" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_54_1346968509.914" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_56_1346968509.914" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_57_1346968509.914" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_58_1346968509.914" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_59_1346968509.914" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_60_1346968509.914" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_61_1346968509.914" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_62_1346968509.914" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_63_1346968509.914" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_64_1346968509.914" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_65_1346968509.914" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_66_1346968509.914" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_67_1346968509.914" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_68_1346968509.914" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_69_1346968509.914" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_70_1346968509.914" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_71_1346968509.914" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_72_1346968509.914" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_73_1346968509.914" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_74_1346968509.914" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_75_1346968509.914" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_76_1346968509.914" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_77_1346968509.914" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_78_1346968509.914" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_79_1346968509.914" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_80_1346968509.914" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_81_1346968509.914" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_82_1346968509.914" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_83_1346968509.914" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_84_1346968509.914" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_85_1346968509.914" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_86_1346968509.914" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_87_1346968509.914" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_88_1346968509.914" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_89_1346968509.914" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_90_1346968509.914" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_91_1346968509.914" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_92_1346968509.914" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_93_1346968509.914" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_94_1346968509.914" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_95_1346968509.914" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_96_1346968509.914" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_97_1346968509.914" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_99_1346968509.914" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_100_1346968509.914" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_101_1346968509.914" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_102_1346968509.914" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_103_1346968509.914" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_104_1346968509.914" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_105_1346968509.914" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_106_1346968509.914" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_107_1346968509.914" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_109_1346968509.914" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_110_1346968509.914" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_111_1346968509.914" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_112_1346968509.914" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_113_1346968509.914" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_114_1346968509.914" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_115_1346968509.914" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_116_1346968509.914" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_117_1346968509.914" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_118_1346968509.914" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_120_1346968509.914" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_121_1346968509.914" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_122_1346968509.914" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_123_1346968509.914" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_124_1346968509.914" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_125_1346968509.914" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_126_1346968509.914" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_127_1346968509.914" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_128_1346968509.914" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_129_1346968509.914" 
    push $P5001, $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_207_1346968509.914") :load
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
    .const 'Sub' $P5001 = "cuid_1_1346968509.914" 
    $P5002 = $P5001()
    .return ($P5002) 
.end