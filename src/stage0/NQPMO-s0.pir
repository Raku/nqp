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
.sub "" :subid("cuid_1_1357684851.462") :anon :lex
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
    .param pmc _lex_param_0 :slurpy 
    .const 'Sub' $P5031 = 'cuid_12_1357684851.462' 
    capture_lex $P5031 
    .const 'Sub' $P5031 = 'cuid_14_1357684851.462' 
    capture_lex $P5031 
    .const 'Sub' $P5031 = 'cuid_34_1357684851.462' 
    capture_lex $P5031 
    .const 'Sub' $P5031 = 'cuid_36_1357684851.462' 
    capture_lex $P5031 
    .const 'Sub' $P5031 = 'cuid_44_1357684851.462' 
    capture_lex $P5031 
    .const 'Sub' $P5031 = 'cuid_64_1357684851.462' 
    capture_lex $P5031 
    .const 'Sub' $P5031 = 'cuid_107_1357684851.462' 
    capture_lex $P5031 
    .const 'Sub' $P5031 = 'cuid_117_1357684851.462' 
    capture_lex $P5031 
    .const 'Sub' $P5031 = 'cuid_128_1357684851.462' 
    capture_lex $P5031 
    .const 'Sub' $P5031 = 'cuid_139_1357684851.462' 
    capture_lex $P5031 
    .const 'Sub' $P5031 = 'cuid_140_1357684851.462' 
    capture_lex $P5031 
    .lex "GLOBALish", $P101 
    .lex "$?PACKAGE", $P102 
    .lex "Archetypes", $P103 
    .lex "RoleToRoleApplier", $P104 
    .lex "NQPConcreteRoleHOW", $P105 
    .lex "RoleToClassApplier", $P106 
    .lex "NQPCurriedRoleHOW", $P107 
    .lex "NQPParametricRoleHOW", $P108 
    .lex "NQPClassHOW", $P109 
    .lex "NQPNativeHOW", $P110 
    .lex "NQPAttribute", $P111 
    .lex "NQPModuleHOW", $P112 
    .lex "EXPORTHOW", $P113 
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
    .const 'Sub' $P5005 = 'cuid_12_1357684851.462' 
    capture_lex $P5005
    $P5006 = $P5005()
    .const 'Sub' $P5007 = 'cuid_14_1357684851.462' 
    capture_lex $P5007
    $P5008 = $P5007()
    .const 'Sub' $P5009 = 'cuid_34_1357684851.462' 
    capture_lex $P5009
    $P5010 = $P5009()
    .const 'Sub' $P5011 = 'cuid_36_1357684851.462' 
    capture_lex $P5011
    $P5012 = $P5011()
    .const 'Sub' $P5013 = 'cuid_44_1357684851.462' 
    capture_lex $P5013
    $P5014 = $P5013()
    .const 'Sub' $P5015 = 'cuid_64_1357684851.462' 
    capture_lex $P5015
    $P5016 = $P5015()
    .const 'Sub' $P5017 = 'cuid_107_1357684851.462' 
    capture_lex $P5017
    $P5018 = $P5017()
    .const 'Sub' $P5019 = 'cuid_117_1357684851.462' 
    capture_lex $P5019
    $P5020 = $P5019()
    .const 'Sub' $P5021 = 'cuid_128_1357684851.462' 
    capture_lex $P5021
    $P5022 = $P5021()
    .const 'Sub' $P5023 = 'cuid_139_1357684851.462' 
    capture_lex $P5023
    $P5024 = $P5023()
    .const 'Sub' $P5025 = 'cuid_140_1357684851.462' 
    capture_lex $P5025
    $P5026 = $P5025()
    unless _lex_param_0 goto if114_end480 
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P5027, "ModuleLoader"
    getinterp $P5029
    set $P5028, $P5029["context"]
    $P5030 = $P5027."set_mainline_module"($P5028)
  if114_end480:
    .return () 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_12_1357684851.462") :anon :lex :outer("cuid_1_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 9
    .const 'Sub' $P5011 = 'cuid_2_1357684851.462' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_3_1357684851.462' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_4_1357684851.462' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_5_1357684851.462' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_6_1357684851.462' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_7_1357684851.462' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_8_1357684851.462' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_9_1357684851.462' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_10_1357684851.462' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_11_1357684851.462' 
    capture_lex $P5011 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_2_1357684851.462' 
    capture_lex $P5001
    .const 'Sub' $P5002 = 'cuid_3_1357684851.462' 
    capture_lex $P5002
    .const 'Sub' $P5003 = 'cuid_4_1357684851.462' 
    capture_lex $P5003
    .const 'Sub' $P5004 = 'cuid_5_1357684851.462' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_6_1357684851.462' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_7_1357684851.462' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_8_1357684851.462' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_9_1357684851.462' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_10_1357684851.462' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_11_1357684851.462' 
    capture_lex $P5010
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "new" :subid("cuid_2_1357684851.462") :anon :lex :outer("cuid_12_1357684851.462")
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
    null $P5004
    set _lex_param_1, $P5004
  default14:
    if haz_param_2, default15
    null $P5005
    set _lex_param_2, $P5005
  default15:
    if haz_param_3, default16
    null $P5006
    set _lex_param_3, $P5006
  default16:
    if haz_param_4, default17
    null $P5007
    set _lex_param_4, $P5007
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
    $P101."BUILD"(_lex_param_1 :named("nominal"), _lex_param_2 :named("inheritable"), _lex_param_3 :named("composable"), _lex_param_4 :named("parametric"))
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "BUILD" :subid("cuid_3_1357684851.462") :anon :lex :outer("cuid_12_1357684851.462")
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
    nqp_get_sc_object $P5002, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 1
    repr_bind_attr_obj $P5001, $P5002, "$!nominal", _lex_param_1
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 1
    repr_bind_attr_obj $P5003, $P5004, "$!inheritable", _lex_param_2
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 1
    repr_bind_attr_obj $P5005, $P5006, "$!composable", _lex_param_3
    nqp_decontainerize $P5007, _lex_param_0
    nqp_get_sc_object $P5008, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 1
    repr_bind_attr_obj $P5007, $P5008, "$!parametric", _lex_param_4
    .return (_lex_param_4) 
.end
.HLL "nqp"
.namespace []
.sub "nominal" :subid("cuid_4_1357684851.462") :anon :lex :outer("cuid_12_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 61
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 1
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!nominal"
    unless_null $P5003, vivi_1222
    box $P5004, 0
    set $P5003, $P5004
  vivi_1222:
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "nominalizable" :subid("cuid_5_1357684851.462") :anon :lex :outer("cuid_12_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 62
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 1
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!nominalizable"
    unless_null $P5003, vivi_1323
    box $P5004, 0
    set $P5003, $P5004
  vivi_1323:
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "inheritable" :subid("cuid_6_1357684851.462") :anon :lex :outer("cuid_12_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 63
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 1
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!inheritable"
    unless_null $P5003, vivi_1424
    box $P5004, 0
    set $P5003, $P5004
  vivi_1424:
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "inheritalizable" :subid("cuid_7_1357684851.462") :anon :lex :outer("cuid_12_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 64
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 1
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!inheritalizable"
    unless_null $P5003, vivi_1525
    box $P5004, 0
    set $P5003, $P5004
  vivi_1525:
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "composable" :subid("cuid_8_1357684851.462") :anon :lex :outer("cuid_12_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 65
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 1
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!composable"
    unless_null $P5003, vivi_1626
    box $P5004, 0
    set $P5003, $P5004
  vivi_1626:
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "composalizable" :subid("cuid_9_1357684851.462") :anon :lex :outer("cuid_12_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 66
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 1
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!composalizable"
    unless_null $P5003, vivi_1727
    box $P5004, 0
    set $P5003, $P5004
  vivi_1727:
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "generic" :subid("cuid_10_1357684851.462") :anon :lex :outer("cuid_12_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 67
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 1
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!generic"
    unless_null $P5003, vivi_1828
    box $P5004, 0
    set $P5003, $P5004
  vivi_1828:
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "parametric" :subid("cuid_11_1357684851.462") :anon :lex :outer("cuid_12_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 68
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 1
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!parametric"
    unless_null $P5003, vivi_1929
    box $P5004, 0
    set $P5003, $P5004
  vivi_1929:
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_14_1357684851.462") :anon :lex :outer("cuid_1_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 72
    .const 'Sub' $P5002 = 'cuid_13_1357684851.462' 
    capture_lex $P5002 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_13_1357684851.462' 
    capture_lex $P5001
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "apply" :subid("cuid_13_1357684851.462") :anon :lex :outer("cuid_14_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 73
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .const 'Sub' $P5029 = 'cuid_143_1357684851.462' 
    capture_lex $P5029 
    .const 'Sub' $P5029 = 'cuid_144_1357684851.462' 
    capture_lex $P5029 
    .const 'Sub' $P5029 = 'cuid_145_1357684851.462' 
    capture_lex $P5029 
    .const 'Sub' $P5029 = 'cuid_148_1357684851.462' 
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
    .const 'Sub' $P5008 = 'cuid_143_1357684851.462' 
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
    .const 'Sub' $P5015 = 'cuid_144_1357684851.462' 
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
    .const 'Sub' $P5020 = 'cuid_145_1357684851.462' 
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
    .const 'Sub' $P5025 = 'cuid_148_1357684851.462' 
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
.sub "" :subid("cuid_143_1357684851.462") :anon :lex :outer("cuid_13_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 76
    .param pmc _lex_param_0 
    .const 'Sub' $P5009 = 'cuid_142_1357684851.462' 
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
    .const 'Sub' $P5007 = 'cuid_142_1357684851.462' 
    capture_lex $P5007
    $P5004 = $P5007($P5008)
    goto for_next43
  for_done45:
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_142_1357684851.462") :anon :lex :outer("cuid_143_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 78
    .param pmc _lex_param_0 
    .const 'Sub' $P5021 = 'cuid_141_1357684851.462' 
    capture_lex $P5021 
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
    goto if20_end33
  if20_else32:
.annotate 'line', 85
    find_lex $P5012, "%meth_info"
    set $S5004, $P101
    set $P5012[$S5004], $P103
  if20_end33:
    box $P5013, 0
    set $P104, $P5013
    set $P5014, $P103
    iter $P5016, $P103
  for_next38:
    unless $P5016, for_done40
    shift $P5018, $P5016
  for_redo39:
    .const 'Sub' $P5017 = 'cuid_141_1357684851.462' 
    capture_lex $P5017
    $P5014 = $P5017($P5018)
    goto for_next38
  for_done40:
    set $P5020, $P104
    if $P104 goto unless22_end42 
.annotate 'line', 94
.annotate 'line', 95
    $P5019 = $P103."push"($P102)
    set $P5020, $P5019
  unless22_end42:
    .return ($P5020) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_141_1357684851.462") :anon :lex :outer("cuid_142_1357684851.462")
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
.sub "" :subid("cuid_144_1357684851.462") :anon :lex :outer("cuid_13_1357684851.462")
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
.sub "" :subid("cuid_145_1357684851.462") :anon :lex :outer("cuid_13_1357684851.462")
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
.sub "" :subid("cuid_148_1357684851.462") :anon :lex :outer("cuid_13_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 128
    .param pmc _lex_param_0 
    .const 'Sub' $P5012 = 'cuid_147_1357684851.462' 
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
    .const 'Sub' $P5008 = 'cuid_147_1357684851.462' 
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
.sub "" :subid("cuid_147_1357684851.462") :anon :lex :outer("cuid_148_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 133
    .param pmc _lex_param_0 
    .const 'Sub' $P5019 = 'cuid_146_1357684851.462' 
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
    .const 'Sub' $P5012 = 'cuid_146_1357684851.462' 
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
.sub "" :subid("cuid_146_1357684851.462") :anon :lex :outer("cuid_147_1357684851.462")
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
.sub "" :subid("cuid_34_1357684851.462") :anon :lex :outer("cuid_1_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 164
    .const 'Sub' $P5023 = 'cuid_15_1357684851.462' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_16_1357684851.462' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_17_1357684851.462' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_18_1357684851.462' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_19_1357684851.462' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_20_1357684851.462' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_21_1357684851.462' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_22_1357684851.462' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_23_1357684851.462' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_24_1357684851.462' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_25_1357684851.462' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_26_1357684851.462' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_27_1357684851.462' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_28_1357684851.462' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_29_1357684851.462' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_30_1357684851.462' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_31_1357684851.462' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_32_1357684851.462' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_33_1357684851.462' 
    capture_lex $P5023 
    .lex "$archetypes", $P101 
    .lex "$?PACKAGE", $P102 
    .lex "$?CLASS", $P103 
    null $P5001
    set $P101, $P5001
.annotate 'line', 190
    nqp_get_sc_object $P5002, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 1
    $P5003 = $P5002."new"(1 :named("nominal"), 1 :named("composable"))
    set $P101, $P5003
    .const 'Sub' $P5004 = 'cuid_15_1357684851.462' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_16_1357684851.462' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_17_1357684851.462' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_18_1357684851.462' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_19_1357684851.462' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_20_1357684851.462' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_21_1357684851.462' 
    capture_lex $P5010
    .const 'Sub' $P5011 = 'cuid_22_1357684851.462' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_23_1357684851.462' 
    capture_lex $P5012
    .const 'Sub' $P5013 = 'cuid_24_1357684851.462' 
    capture_lex $P5013
    .const 'Sub' $P5014 = 'cuid_25_1357684851.462' 
    capture_lex $P5014
    .const 'Sub' $P5015 = 'cuid_26_1357684851.462' 
    capture_lex $P5015
    .const 'Sub' $P5016 = 'cuid_27_1357684851.462' 
    capture_lex $P5016
    .const 'Sub' $P5017 = 'cuid_28_1357684851.462' 
    capture_lex $P5017
    .const 'Sub' $P5018 = 'cuid_29_1357684851.462' 
    capture_lex $P5018
    .const 'Sub' $P5019 = 'cuid_30_1357684851.462' 
    capture_lex $P5019
    .const 'Sub' $P5020 = 'cuid_31_1357684851.462' 
    capture_lex $P5020
    .const 'Sub' $P5021 = 'cuid_32_1357684851.462' 
    capture_lex $P5021
    .const 'Sub' $P5022 = 'cuid_33_1357684851.462' 
    capture_lex $P5022
    .return ($P5022) 
.end
.HLL "nqp"
.namespace []
.sub "archetypes" :subid("cuid_15_1357684851.462") :anon :lex :outer("cuid_34_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 191
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    find_lex $P5001, "$archetypes"
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "new" :subid("cuid_16_1357684851.462") :anon :lex :outer("cuid_34_1357684851.462")
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
    $P101."BUILD"(_lex_param_1 :named("name"), _lex_param_2 :named("instance_of"))
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "BUILD" :subid("cuid_17_1357684851.462") :anon :lex :outer("cuid_34_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 206
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("name") 
    .param pmc _lex_param_2 :named("instance_of") 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    .lex "$instance_of", _lex_param_2 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 3
    repr_bind_attr_obj $P5001, $P5002, "$!name", _lex_param_1
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 3
    repr_bind_attr_obj $P5003, $P5004, "$!instance_of", _lex_param_2
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 3
    new $P5007, 'Hash'
    repr_bind_attr_obj $P5005, $P5006, "%!attributes", $P5007
    nqp_decontainerize $P5008, _lex_param_0
    nqp_get_sc_object $P5009, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 3
    new $P5010, 'Hash'
    repr_bind_attr_obj $P5008, $P5009, "%!methods", $P5010
    nqp_decontainerize $P5011, _lex_param_0
    nqp_get_sc_object $P5012, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 3
    new $P5013, 'ResizablePMCArray'
    repr_bind_attr_obj $P5011, $P5012, "@!multi_methods_to_incorporate", $P5013
    nqp_decontainerize $P5014, _lex_param_0
    nqp_get_sc_object $P5015, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 3
    new $P5016, 'ResizablePMCArray'
    repr_bind_attr_obj $P5014, $P5015, "@!collisions", $P5016
    nqp_decontainerize $P5017, _lex_param_0
    nqp_get_sc_object $P5018, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 3
    new $P5019, 'ResizablePMCArray'
    repr_bind_attr_obj $P5017, $P5018, "@!roles", $P5019
    nqp_decontainerize $P5020, _lex_param_0
    nqp_get_sc_object $P5021, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 3
    new $P5022, 'ResizablePMCArray'
    repr_bind_attr_obj $P5020, $P5021, "@!role_typecheck_list", $P5022
    nqp_decontainerize $P5023, _lex_param_0
    nqp_get_sc_object $P5024, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 3
    box $P5025, 0
    repr_bind_attr_obj $P5023, $P5024, "$!composed", $P5025
    .return ($P5025) 
.end
.HLL "nqp"
.namespace []
.sub "new_type" :subid("cuid_18_1357684851.462") :anon :lex :outer("cuid_34_1357684851.462")
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
.sub "add_method" :subid("cuid_19_1357684851.462") :anon :lex :outer("cuid_34_1357684851.462")
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
    nqp_get_sc_object $P5002, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 3
    repr_get_attr_obj $P5003, $P5001, $P5002, "%!methods"
    set $S5001, _lex_param_2
    exists $I5001, $P5003[$S5001]
    unless $I5001 goto if28_end79 
.annotate 'line', 226
    set $S5003, _lex_param_2
    concat $S5002, "This role already has a method named ", $S5003
    box $P5004, $S5002
    die $P5004
  if28_end79:
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 3
    repr_get_attr_obj $P5007, $P5005, $P5006, "%!methods"
    set $S5004, _lex_param_2
    set $P5007[$S5004], _lex_param_3
    .return (_lex_param_3) 
.end
.HLL "nqp"
.namespace []
.sub "add_multi_method" :subid("cuid_20_1357684851.462") :anon :lex :outer("cuid_34_1357684851.462")
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
    nqp_get_sc_object $P5003, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 3
    repr_get_attr_obj $P5004, $P5002, $P5003, "@!multi_methods_to_incorporate"
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 3
    repr_get_attr_obj $P5007, $P5005, $P5006, "@!multi_methods_to_incorporate"
    set $N5001, $P5007
    set $I5001, $N5001
    set $P5004[$I5001], $P101
    .return (_lex_param_3) 
.end
.HLL "nqp"
.namespace []
.sub "add_attribute" :subid("cuid_21_1357684851.462") :anon :lex :outer("cuid_34_1357684851.462")
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
    nqp_get_sc_object $P5004, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 3
    repr_get_attr_obj $P5005, $P5003, $P5004, "%!attributes"
    set $S5001, $P101
    exists $I5001, $P5005[$S5001]
    unless $I5001 goto if29_end81 
.annotate 'line', 242
    set $S5003, $P101
    concat $S5002, "This role already has an attribute named ", $S5003
    box $P5006, $S5002
    die $P5006
  if29_end81:
    nqp_decontainerize $P5007, _lex_param_0
    nqp_get_sc_object $P5008, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 3
    repr_get_attr_obj $P5009, $P5007, $P5008, "%!attributes"
    set $S5004, $P101
    set $P5009[$S5004], _lex_param_2
    .return (_lex_param_2) 
.end
.HLL "nqp"
.namespace []
.sub "add_parent" :subid("cuid_22_1357684851.462") :anon :lex :outer("cuid_34_1357684851.462")
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
.sub "add_role" :subid("cuid_23_1357684851.462") :anon :lex :outer("cuid_34_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 252
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$role", _lex_param_2 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 3
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!roles"
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 3
    repr_get_attr_obj $P5006, $P5004, $P5005, "@!roles"
    set $N5001, $P5006
    set $I5001, $N5001
    set $P5003[$I5001], _lex_param_2
    .return (_lex_param_2) 
.end
.HLL "nqp"
.namespace []
.sub "add_collision" :subid("cuid_24_1357684851.462") :anon :lex :outer("cuid_34_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 256
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$colliding_name", _lex_param_2 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 3
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!collisions"
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 3
    repr_get_attr_obj $P5006, $P5004, $P5005, "@!collisions"
    set $N5001, $P5006
    set $I5001, $N5001
    set $P5003[$I5001], _lex_param_2
    .return (_lex_param_2) 
.end
.HLL "nqp"
.namespace []
.sub "compose" :subid("cuid_25_1357684851.462") :anon :lex :outer("cuid_34_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 261
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5020 = 'cuid_149_1357684851.462' 
    capture_lex $P5020 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 3
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!roles"
    unless $P5003 goto if30_end83 
.annotate 'line', 264
    nqp_decontainerize $P5007, _lex_param_0
    nqp_get_sc_object $P5008, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 3
    repr_get_attr_obj $P5009, $P5007, $P5008, "@!roles"
    set $P5004, $P5009
    iter $P5006, $P5009
  for_next84:
    unless $P5006, for_done86
    shift $P5011, $P5006
  for_redo85:
    .const 'Sub' $P5010 = 'cuid_149_1357684851.462' 
    capture_lex $P5010
    $P5004 = $P5010($P5011)
    goto for_next84
  for_done86:
.annotate 'line', 269
    nqp_get_sc_object $P5012, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 2
    nqp_decontainerize $P5013, _lex_param_0
    nqp_get_sc_object $P5014, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 3
    repr_get_attr_obj $P5015, $P5013, $P5014, "@!roles"
    $P5016 = $P5012."apply"(_lex_param_1, $P5015)
  if30_end83:
    nqp_decontainerize $P5017, _lex_param_0
    nqp_get_sc_object $P5018, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 3
    box $P5019, 1
    repr_bind_attr_obj $P5017, $P5018, "$!composed", $P5019
    .return (_lex_param_1) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_149_1357684851.462") :anon :lex :outer("cuid_25_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 265
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    nqp_get_sc_object $P5003, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 3
    repr_get_attr_obj $P5004, $P5001, $P5003, "@!role_typecheck_list"
    find_lex $P5006, "self"
    nqp_decontainerize $P5005, $P5006
    nqp_get_sc_object $P5007, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 3
    repr_get_attr_obj $P5008, $P5005, $P5007, "@!role_typecheck_list"
    set $N5001, $P5008
    set $I5001, $N5001
    set $P5004[$I5001], _lex_param_0
    find_lex $P5010, "self"
    nqp_decontainerize $P5009, $P5010
    nqp_get_sc_object $P5011, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 3
    repr_get_attr_obj $P5012, $P5009, $P5011, "@!role_typecheck_list"
    find_lex $P5014, "self"
    nqp_decontainerize $P5013, $P5014
    nqp_get_sc_object $P5015, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 3
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
.sub "methods" :subid("cuid_26_1357684851.462") :anon :lex :outer("cuid_34_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 282
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :named("local") :optional 
    .param int haz_param_10 :opt_flag 
    .const 'Sub' $P5011 = 'cuid_150_1357684851.462' 
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
    nqp_get_sc_object $P5006, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 3
    repr_get_attr_obj $P5007, $P5005, $P5006, "%!methods"
    set $P5002, $P5007
    iter $P5004, $P5007
  for_next87:
    unless $P5004, for_done89
    shift $P5009, $P5004
  for_redo88:
    .const 'Sub' $P5008 = 'cuid_150_1357684851.462' 
    capture_lex $P5008
    $P5002 = $P5008($P5009)
    goto for_next87
  for_done89:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_150_1357684851.462") :anon :lex :outer("cuid_26_1357684851.462")
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
.sub "method_table" :subid("cuid_27_1357684851.462") :anon :lex :outer("cuid_34_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 290
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 3
    repr_get_attr_obj $P5003, $P5001, $P5002, "%!methods"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "collisions" :subid("cuid_28_1357684851.462") :anon :lex :outer("cuid_34_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 294
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 3
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!collisions"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "name" :subid("cuid_29_1357684851.462") :anon :lex :outer("cuid_34_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 298
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 3
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!name"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "attributes" :subid("cuid_30_1357684851.462") :anon :lex :outer("cuid_34_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 302
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :named("local") :optional 
    .param int haz_param_11 :opt_flag 
    .const 'Sub' $P5011 = 'cuid_151_1357684851.462' 
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
    nqp_get_sc_object $P5006, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 3
    repr_get_attr_obj $P5007, $P5005, $P5006, "%!attributes"
    set $P5002, $P5007
    iter $P5004, $P5007
  for_next91:
    unless $P5004, for_done93
    shift $P5009, $P5004
  for_redo92:
    .const 'Sub' $P5008 = 'cuid_151_1357684851.462' 
    capture_lex $P5008
    $P5002 = $P5008($P5009)
    goto for_next91
  for_done93:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_151_1357684851.462") :anon :lex :outer("cuid_30_1357684851.462")
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
.sub "roles" :subid("cuid_31_1357684851.462") :anon :lex :outer("cuid_34_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 310
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 3
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!roles"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "role_typecheck_list" :subid("cuid_32_1357684851.462") :anon :lex :outer("cuid_34_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 314
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 3
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!role_typecheck_list"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "instance_of" :subid("cuid_33_1357684851.462") :anon :lex :outer("cuid_34_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 318
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 3
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!instance_of"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_36_1357684851.462") :anon :lex :outer("cuid_1_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 324
    .const 'Sub' $P5004 = 'cuid_152_1357684851.462' 
    capture_lex $P5004 
    .const 'Sub' $P5004 = 'cuid_154_1357684851.462' 
    capture_lex $P5004 
    .const 'Sub' $P5004 = 'cuid_35_1357684851.462' 
    capture_lex $P5004 
    .lex "&has_method", $P101 
    .lex "&has_attribute", $P102 
    .lex "$?PACKAGE", $P103 
    .lex "$?CLASS", $P104 
    .const 'Sub' $P5001 = 'cuid_152_1357684851.462' 
    capture_lex $P5001
    set $P101, $P5001
    .const 'Sub' $P5002 = 'cuid_154_1357684851.462' 
    capture_lex $P5002
    set $P102, $P5002
    .const 'Sub' $P5003 = 'cuid_35_1357684851.462' 
    capture_lex $P5003
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "has_method" :subid("cuid_152_1357684851.462") :anon :lex :outer("cuid_36_1357684851.462")
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
.sub "has_attribute" :subid("cuid_154_1357684851.462") :anon :lex :outer("cuid_36_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 331
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5011 = 'cuid_153_1357684851.462' 
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
    .const 'Sub' $P5007 = 'cuid_153_1357684851.462' 
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
.sub "" :subid("cuid_153_1357684851.462") :anon :lex :outer("cuid_154_1357684851.462")
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
.sub "apply" :subid("cuid_35_1357684851.462") :anon :lex :outer("cuid_36_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 339
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .const 'Sub' $P5044 = 'cuid_155_1357684851.462' 
    capture_lex $P5044 
    .const 'Sub' $P5044 = 'cuid_156_1357684851.462' 
    capture_lex $P5044 
    .const 'Sub' $P5044 = 'cuid_157_1357684851.462' 
    capture_lex $P5044 
    .const 'Sub' $P5044 = 'cuid_158_1357684851.462' 
    capture_lex $P5044 
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
    goto if32_end103
  if32_else102:
.annotate 'line', 348
.annotate 'line', 349
    nqp_get_sc_object $P5010, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 3
    find_lex $P5013, "$?PACKAGE"
    get_who $P5012, $P5013
    set $P5011, $P5012["NQPMu"]
    unless_null $P5011, fallback105
    nqp_get_sc_object $P5016, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 0
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
    .const 'Sub' $P5023 = 'cuid_155_1357684851.462' 
    capture_lex $P5023
    $P5020 = $P5023($P5024)
    goto for_next107
  for_done109:
.annotate 'line', 354
    $P5025 = $P102."compose"($P101)
    set $P101, $P5025
  if32_end103:
.annotate 'line', 358
    $P5026 = $P102."collisions"($P101)
    set $P103, $P5026
    set $P5027, $P103
    iter $P5029, $P103
  for_next112:
    unless $P5029, for_done114
    shift $P5031, $P5029
  for_redo113:
    .const 'Sub' $P5030 = 'cuid_156_1357684851.462' 
    capture_lex $P5030
    $P5027 = $P5030($P5031)
    goto for_next112
  for_done114:
.annotate 'line', 367
    $P5032 = $P102."methods"($P101)
    set $P104, $P5032
    set $P5033, $P104
    iter $P5035, $P104
  for_next117:
    unless $P5035, for_done119
    shift $P5037, $P5035
  for_redo118:
    .const 'Sub' $P5036 = 'cuid_157_1357684851.462' 
    capture_lex $P5036
    $P5033 = $P5036($P5037)
    goto for_next117
  for_done119:
.annotate 'line', 375
    $P5038 = $P102."attributes"($P101)
    set $P105, $P5038
    set $P5039, $P105
    iter $P5041, $P105
  for_next122:
    unless $P5041, for_done124
    shift $P5043, $P5041
  for_redo123:
    .const 'Sub' $P5042 = 'cuid_158_1357684851.462' 
    capture_lex $P5042
    $P5039 = $P5042($P5043)
    goto for_next122
  for_done124:
    set $P106[0], $P101
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_155_1357684851.462") :anon :lex :outer("cuid_35_1357684851.462")
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
.sub "" :subid("cuid_156_1357684851.462") :anon :lex :outer("cuid_35_1357684851.462")
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
.sub "" :subid("cuid_157_1357684851.462") :anon :lex :outer("cuid_35_1357684851.462")
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
.sub "" :subid("cuid_158_1357684851.462") :anon :lex :outer("cuid_35_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 376
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 377
    find_lex $P5001, "$target"
    $P5002 = _lex_param_0."name"()
    $P5003 = "&has_attribute"($P5001, $P5002)
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
  if36_end121:
.annotate 'line', 381
    find_lex $P5011, "$target"
    get_how $P5010, $P5011
    find_lex $P5012, "$target"
    $P5013 = $P5010."add_attribute"($P5012, _lex_param_0)
    .return ($P5013) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_44_1357684851.462") :anon :lex :outer("cuid_1_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 393
    .const 'Sub' $P5011 = 'cuid_37_1357684851.462' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_38_1357684851.462' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_39_1357684851.462' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_40_1357684851.462' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_41_1357684851.462' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_42_1357684851.462' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_43_1357684851.462' 
    capture_lex $P5011 
    .lex "$archetypes", $P101 
    .lex "$?PACKAGE", $P102 
    .lex "$?CLASS", $P103 
    null $P5001
    set $P101, $P5001
.annotate 'line', 397
    nqp_get_sc_object $P5002, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 1
    $P5003 = $P5002."new"(1 :named("nominal"), 1 :named("composable"), 1 :named("parametric"))
    set $P101, $P5003
    .const 'Sub' $P5004 = 'cuid_37_1357684851.462' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_38_1357684851.462' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_39_1357684851.462' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_40_1357684851.462' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_41_1357684851.462' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_42_1357684851.462' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_43_1357684851.462' 
    capture_lex $P5010
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "archetypes" :subid("cuid_37_1357684851.462") :anon :lex :outer("cuid_44_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 398
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    find_lex $P5001, "$archetypes"
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "new" :subid("cuid_38_1357684851.462") :anon :lex :outer("cuid_44_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 402
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("curried_role") 
    .param pmc _lex_param_2 :named("pos_args") 
    .lex "$obj", $P101 
    .lex "self", _lex_param_0 
    .lex "$curried_role", _lex_param_1 
    .lex "@pos_args", _lex_param_2 
    null $P5001
    set $P101, $P5001
    nqp_decontainerize $P5003, _lex_param_0
    repr_instance_of $P5002, $P5003
    set $P101, $P5002
.annotate 'line', 404
    $P101."BUILD"(_lex_param_1 :named("curried_role"), _lex_param_2 :named("pos_args"))
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "BUILD" :subid("cuid_39_1357684851.462") :anon :lex :outer("cuid_44_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 408
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("curried_role") 
    .param pmc _lex_param_2 :named("pos_args") 
    .lex "self", _lex_param_0 
    .lex "$curried_role", _lex_param_1 
    .lex "@pos_args", _lex_param_2 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 5
    repr_bind_attr_obj $P5001, $P5002, "$!curried_role", _lex_param_1
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 5
    repr_bind_attr_obj $P5003, $P5004, "@!pos_args", _lex_param_2
    .return (_lex_param_2) 
.end
.HLL "nqp"
.namespace []
.sub "new_type" :subid("cuid_40_1357684851.462") :anon :lex :outer("cuid_44_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 413
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :slurpy 
    .lex "$meta", $P101 
    .lex "self", _lex_param_0 
    .lex "$curried_role", _lex_param_1 
    .lex "@pos_args", _lex_param_2 
    null $P5001
    set $P101, $P5001
.annotate 'line', 414
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."new"(_lex_param_1 :named("curried_role"), _lex_param_2 :named("pos_args"))
    set $P101, $P5003
    set $S5001, "Uninstantiable"
    repr_type_object_for $P5004, $P101, $S5001
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "specialize" :subid("cuid_41_1357684851.462") :anon :lex :outer("cuid_44_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 418
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$class_arg", _lex_param_2 
.annotate 'line', 419
    nqp_decontainerize $P5002, _lex_param_0
    nqp_get_sc_object $P5003, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 5
    repr_get_attr_obj $P5004, $P5002, $P5003, "$!curried_role"
    get_how $P5001, $P5004
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 5
    repr_get_attr_obj $P5007, $P5005, $P5006, "$!curried_role"
    nqp_decontainerize $P5008, _lex_param_0
    nqp_get_sc_object $P5009, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 5
    repr_get_attr_obj $P5010, $P5008, $P5009, "@!pos_args"
    $P5011 = $P5001."specialize"($P5007, _lex_param_2, $P5010 :flat)
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "name" :subid("cuid_42_1357684851.462") :anon :lex :outer("cuid_44_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 422
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
.annotate 'line', 423
    nqp_decontainerize $P5002, _lex_param_0
    nqp_get_sc_object $P5003, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 5
    repr_get_attr_obj $P5004, $P5002, $P5003, "$!curried_role"
    get_how $P5001, $P5004
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 5
    repr_get_attr_obj $P5007, $P5005, $P5006, "$!curried_role"
    $P5008 = $P5001."name"($P5007)
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "curried_role" :subid("cuid_43_1357684851.462") :anon :lex :outer("cuid_44_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 426
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 5
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!curried_role"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_64_1357684851.462") :anon :lex :outer("cuid_1_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 436
    .const 'Sub' $P5023 = 'cuid_45_1357684851.462' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_46_1357684851.462' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_47_1357684851.462' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_48_1357684851.462' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_49_1357684851.462' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_50_1357684851.462' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_51_1357684851.462' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_52_1357684851.462' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_53_1357684851.462' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_54_1357684851.462' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_55_1357684851.462' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_56_1357684851.462' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_57_1357684851.462' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_58_1357684851.462' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_59_1357684851.462' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_60_1357684851.462' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_61_1357684851.462' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_62_1357684851.462' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_63_1357684851.462' 
    capture_lex $P5023 
    .lex "$archetypes", $P101 
    .lex "$?PACKAGE", $P102 
    .lex "$?CLASS", $P103 
    null $P5001
    set $P101, $P5001
.annotate 'line', 460
    nqp_get_sc_object $P5002, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 1
    $P5003 = $P5002."new"(1 :named("nominal"), 1 :named("composable"), 1 :named("parametric"))
    set $P101, $P5003
    .const 'Sub' $P5004 = 'cuid_45_1357684851.462' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_46_1357684851.462' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_47_1357684851.462' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_48_1357684851.462' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_49_1357684851.462' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_50_1357684851.462' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_51_1357684851.462' 
    capture_lex $P5010
    .const 'Sub' $P5011 = 'cuid_52_1357684851.462' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_53_1357684851.462' 
    capture_lex $P5012
    .const 'Sub' $P5013 = 'cuid_54_1357684851.462' 
    capture_lex $P5013
    .const 'Sub' $P5014 = 'cuid_55_1357684851.462' 
    capture_lex $P5014
    .const 'Sub' $P5015 = 'cuid_56_1357684851.462' 
    capture_lex $P5015
    .const 'Sub' $P5016 = 'cuid_57_1357684851.462' 
    capture_lex $P5016
    .const 'Sub' $P5017 = 'cuid_58_1357684851.462' 
    capture_lex $P5017
    .const 'Sub' $P5018 = 'cuid_59_1357684851.462' 
    capture_lex $P5018
    .const 'Sub' $P5019 = 'cuid_60_1357684851.462' 
    capture_lex $P5019
    .const 'Sub' $P5020 = 'cuid_61_1357684851.462' 
    capture_lex $P5020
    .const 'Sub' $P5021 = 'cuid_62_1357684851.462' 
    capture_lex $P5021
    .const 'Sub' $P5022 = 'cuid_63_1357684851.462' 
    capture_lex $P5022
    .return ($P5022) 
.end
.HLL "nqp"
.namespace []
.sub "archetypes" :subid("cuid_45_1357684851.462") :anon :lex :outer("cuid_64_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 461
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    find_lex $P5001, "$archetypes"
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "new" :subid("cuid_46_1357684851.462") :anon :lex :outer("cuid_64_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 470
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
.annotate 'line', 472
    $P101."BUILD"(_lex_param_1 :named("name"))
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "BUILD" :subid("cuid_47_1357684851.462") :anon :lex :outer("cuid_64_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 476
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("name") 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 6
    repr_bind_attr_obj $P5001, $P5002, "$!name", _lex_param_1
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 6
    new $P5005, 'Hash'
    repr_bind_attr_obj $P5003, $P5004, "%!attributes", $P5005
    nqp_decontainerize $P5006, _lex_param_0
    nqp_get_sc_object $P5007, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 6
    new $P5008, 'Hash'
    repr_bind_attr_obj $P5006, $P5007, "%!methods", $P5008
    nqp_decontainerize $P5009, _lex_param_0
    nqp_get_sc_object $P5010, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 6
    new $P5011, 'ResizablePMCArray'
    repr_bind_attr_obj $P5009, $P5010, "@!multi_methods_to_incorporate", $P5011
    nqp_decontainerize $P5012, _lex_param_0
    nqp_get_sc_object $P5013, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 6
    new $P5014, 'ResizablePMCArray'
    repr_bind_attr_obj $P5012, $P5013, "@!roles", $P5014
    nqp_decontainerize $P5015, _lex_param_0
    nqp_get_sc_object $P5016, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 6
    box $P5017, 0
    repr_bind_attr_obj $P5015, $P5016, "$!composed", $P5017
    .return ($P5017) 
.end
.HLL "nqp"
.namespace []
.sub "new_type" :subid("cuid_48_1357684851.462") :anon :lex :outer("cuid_64_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 487
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
.annotate 'line', 488
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
.sub "set_body_block" :subid("cuid_49_1357684851.462") :anon :lex :outer("cuid_64_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 492
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$body_block", _lex_param_2 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 6
    repr_bind_attr_obj $P5001, $P5002, "$!body_block", _lex_param_2
    .return (_lex_param_2) 
.end
.HLL "nqp"
.namespace []
.sub "add_method" :subid("cuid_50_1357684851.462") :anon :lex :outer("cuid_64_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 496
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$name", _lex_param_2 
    .lex "$code_obj", _lex_param_3 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 6
    repr_get_attr_obj $P5003, $P5001, $P5002, "%!methods"
    set $S5001, _lex_param_2
    exists $I5001, $P5003[$S5001]
    unless $I5001 goto if37_end127 
.annotate 'line', 497
    set $S5003, _lex_param_2
    concat $S5002, "This role already has a method named ", $S5003
    box $P5004, $S5002
    die $P5004
  if37_end127:
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 6
    repr_get_attr_obj $P5007, $P5005, $P5006, "%!methods"
    set $S5004, _lex_param_2
    set $P5007[$S5004], _lex_param_3
    .return (_lex_param_3) 
.end
.HLL "nqp"
.namespace []
.sub "add_multi_method" :subid("cuid_51_1357684851.462") :anon :lex :outer("cuid_64_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 503
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
    nqp_get_sc_object $P5003, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 6
    repr_get_attr_obj $P5004, $P5002, $P5003, "@!multi_methods_to_incorporate"
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 6
    repr_get_attr_obj $P5007, $P5005, $P5006, "@!multi_methods_to_incorporate"
    set $N5001, $P5007
    set $I5001, $N5001
    set $P5004[$I5001], $P101
    .return (_lex_param_3) 
.end
.HLL "nqp"
.namespace []
.sub "add_attribute" :subid("cuid_52_1357684851.462") :anon :lex :outer("cuid_64_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 511
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "$name", $P101 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$meta_attr", _lex_param_2 
    null $P5001
    set $P101, $P5001
.annotate 'line', 512
    $P5002 = _lex_param_2."name"()
    set $P101, $P5002
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 6
    repr_get_attr_obj $P5005, $P5003, $P5004, "%!attributes"
    set $S5001, $P101
    exists $I5001, $P5005[$S5001]
    unless $I5001 goto if38_end129 
.annotate 'line', 513
    set $S5003, $P101
    concat $S5002, "This role already has an attribute named ", $S5003
    box $P5006, $S5002
    die $P5006
  if38_end129:
    nqp_decontainerize $P5007, _lex_param_0
    nqp_get_sc_object $P5008, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 6
    repr_get_attr_obj $P5009, $P5007, $P5008, "%!attributes"
    set $S5004, $P101
    set $P5009[$S5004], _lex_param_2
    .return (_lex_param_2) 
.end
.HLL "nqp"
.namespace []
.sub "add_parent" :subid("cuid_53_1357684851.462") :anon :lex :outer("cuid_64_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 519
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
.sub "add_role" :subid("cuid_54_1357684851.462") :anon :lex :outer("cuid_64_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 523
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$role", _lex_param_2 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 6
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!roles"
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 6
    repr_get_attr_obj $P5006, $P5004, $P5005, "@!roles"
    set $N5001, $P5006
    set $I5001, $N5001
    set $P5003[$I5001], _lex_param_2
    .return (_lex_param_2) 
.end
.HLL "nqp"
.namespace []
.sub "compose" :subid("cuid_55_1357684851.462") :anon :lex :outer("cuid_64_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 528
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 6
    box $P5003, 1
    repr_bind_attr_obj $P5001, $P5002, "$!composed", $P5003
    .return (_lex_param_1) 
.end
.HLL "nqp"
.namespace []
.sub "parametric" :subid("cuid_56_1357684851.462") :anon :lex :outer("cuid_64_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 539
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .return (1) 
.end
.HLL "nqp"
.namespace []
.sub "curry" :subid("cuid_57_1357684851.462") :anon :lex :outer("cuid_64_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 544
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :slurpy 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "@args", _lex_param_2 
.annotate 'line', 545
    nqp_get_sc_object $P5001, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 5
    $P5002 = $P5001."new_type"(_lex_param_1, _lex_param_2 :flat)
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "specialize" :subid("cuid_58_1357684851.462") :anon :lex :outer("cuid_64_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 550
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 :slurpy 
    .const 'Sub' $P5047 = 'cuid_159_1357684851.462' 
    capture_lex $P5047 
    .const 'Sub' $P5047 = 'cuid_160_1357684851.462' 
    capture_lex $P5047 
    .const 'Sub' $P5047 = 'cuid_161_1357684851.462' 
    capture_lex $P5047 
    .const 'Sub' $P5047 = 'cuid_162_1357684851.462' 
    capture_lex $P5047 
    .lex "$pad", $P101 
    .lex "$irole", $P102 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$class_arg", _lex_param_2 
    .lex "@args", _lex_param_3 
    null $P5001
    set $P101, $P5001
    null $P5002
    set $P102, $P5002
    root_new $P103, ['parrot';'Continuation']
    set_label $P103, lexotic_130
    .lex "RETURN", $P103
.annotate 'line', 553
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 6
    repr_get_attr_obj $P5005, $P5003, $P5004, "$!body_block"
    $P5006 = $P5005(_lex_param_2, _lex_param_3 :flat)
    set $P101, $P5006
.annotate 'line', 556
    nqp_get_sc_object $P5007, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 3
    nqp_decontainerize $P5008, _lex_param_0
    nqp_get_sc_object $P5009, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 6
    repr_get_attr_obj $P5010, $P5008, $P5009, "$!name"
    $P5011 = $P5007."new_type"($P5010 :named("name"), _lex_param_1 :named("instance_of"))
    set $P102, $P5011
    nqp_decontainerize $P5015, _lex_param_0
    nqp_get_sc_object $P5016, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 6
    repr_get_attr_obj $P5017, $P5015, $P5016, "%!attributes"
    set $P5012, $P5017
    iter $P5014, $P5017
  for_next132:
    unless $P5014, for_done134
    shift $P5019, $P5014
  for_redo133:
    .const 'Sub' $P5018 = 'cuid_159_1357684851.462' 
    capture_lex $P5018
    $P5012 = $P5018($P5019)
    goto for_next132
  for_done134:
    nqp_decontainerize $P5023, _lex_param_0
    nqp_get_sc_object $P5024, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 6
    repr_get_attr_obj $P5025, $P5023, $P5024, "%!methods"
    set $P5020, $P5025
    iter $P5022, $P5025
  for_next139:
    unless $P5022, for_done141
    shift $P5027, $P5022
  for_redo140:
    .const 'Sub' $P5026 = 'cuid_160_1357684851.462' 
    capture_lex $P5026
    $P5020 = $P5026($P5027)
    goto for_next139
  for_done141:
    nqp_decontainerize $P5031, _lex_param_0
    nqp_get_sc_object $P5032, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 6
    repr_get_attr_obj $P5033, $P5031, $P5032, "@!multi_methods_to_incorporate"
    set $P5028, $P5033
    iter $P5030, $P5033
  for_next144:
    unless $P5030, for_done146
    shift $P5035, $P5030
  for_redo145:
    .const 'Sub' $P5034 = 'cuid_161_1357684851.462' 
    capture_lex $P5034
    $P5028 = $P5034($P5035)
    goto for_next144
  for_done146:
    nqp_decontainerize $P5039, _lex_param_0
    nqp_get_sc_object $P5040, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 6
    repr_get_attr_obj $P5041, $P5039, $P5040, "@!roles"
    set $P5036, $P5041
    iter $P5038, $P5041
  for_next147:
    unless $P5038, for_done149
    shift $P5043, $P5038
  for_redo148:
    .const 'Sub' $P5042 = 'cuid_162_1357684851.462' 
    capture_lex $P5042
    $P5036 = $P5042($P5043)
    goto for_next147
  for_done149:
.annotate 'line', 587
    get_how $P5044, $P102
    $P5044."compose"($P102)
    find_lex $P5045, "RETURN"
    $P5046 = $P5045($P102)
    goto lexotic_131
  lexotic_130:
    .get_results ($P5046)
  lexotic_131:
    .return ($P5046) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_159_1357684851.462") :anon :lex :outer("cuid_58_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 560
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 561
    find_lex $P5002, "$irole"
    get_how $P5001, $P5002
    find_lex $P5003, "$irole"
    $P5004 = _lex_param_0."value"()
    $P5005 = $P5001."add_attribute"($P5003, $P5004)
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_160_1357684851.462") :anon :lex :outer("cuid_58_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 565
    .param pmc _lex_param_0 
    .lex "$name", $P101 
    .lex "$meth", $P102 
    .lex "$_", _lex_param_0 
    null $P5001
    set $P101, $P5001
    null $P5002
    set $P102, $P5002
.annotate 'line', 566
    $P5003 = _lex_param_0."key"()
    set $P101, $P5003
.annotate 'line', 567
    $P5004 = _lex_param_0."value"()
    can $I5001, $P5004, "instantiate_generic"
    unless $I5001 goto if39_else135 
.annotate 'line', 568
    $P5005 = _lex_param_0."value"()
    find_lex $P5006, "$pad"
    $P5007 = $P5005."instantiate_generic"($P5006)
    set $P5010, $P5007
    goto if39_end136
  if39_else135:
.annotate 'line', 569
    $P5008 = _lex_param_0."value"()
    $P5009 = $P5008."clone"()
    set $P5010, $P5009
  if39_end136:
    set $P102, $P5010
    set $S5002, $P101
    substr $S5001, $S5002, 0, 12
    iseq $I5002, $S5001, "!!LATENAME!!"
    unless $I5002 goto if40_end138 
.annotate 'line', 570
    find_lex $P5012, "$pad"
    set $S5004, $P101
    substr $S5003, $S5004, 12
    set $P5011, $P5012[$S5003]
    set $P101, $P5011
.annotate 'line', 572
    $P5013 = $P102."!set_name"($P101)
  if40_end138:
.annotate 'line', 574
    find_lex $P5015, "$irole"
    get_how $P5014, $P5015
    find_lex $P5016, "$irole"
    $P5017 = $P5014."add_method"($P5016, $P101, $P102)
    .return ($P5017) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_161_1357684851.462") :anon :lex :outer("cuid_58_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 576
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 577
    find_lex $P5002, "$irole"
    get_how $P5001, $P5002
    find_lex $P5003, "$irole"
    set $P5004, _lex_param_0["name"]
    unless_null $P5004, fallback142
    null $P5005
    set $P5004, $P5005
  fallback142:
    set $P5006, _lex_param_0["code"]
    unless_null $P5006, fallback143
    null $P5007
    set $P5006, $P5007
  fallback143:
    $P5008 = "&reify_method"($P5006)
    $P5009 = $P5001."add_multi_method"($P5003, $P5004, $P5008)
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_162_1357684851.462") :anon :lex :outer("cuid_58_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 581
    .param pmc _lex_param_0 
    .lex "$specialized", $P101 
    .lex "$_", _lex_param_0 
    null $P5001
    set $P101, $P5001
.annotate 'line', 582
    get_how $P5002, _lex_param_0
    find_lex $P5003, "$class_arg"
    $P5004 = $P5002."specialize"(_lex_param_0, $P5003)
    set $P101, $P5004
.annotate 'line', 583
    find_lex $P5006, "$irole"
    get_how $P5005, $P5006
    find_lex $P5007, "$irole"
    $P5008 = $P5005."add_role"($P5007, $P101)
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "methods" :subid("cuid_59_1357684851.462") :anon :lex :outer("cuid_64_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 595
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :named("local") :optional 
    .param int haz_param_13 :opt_flag 
    .const 'Sub' $P5011 = 'cuid_163_1357684851.462' 
    capture_lex $P5011 
    if haz_param_13, default153
    null $P5010
    set _lex_param_2, $P5010
  default153:
    .lex "@meths", $P101 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$local", _lex_param_2 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 6
    repr_get_attr_obj $P5007, $P5005, $P5006, "%!methods"
    set $P5002, $P5007
    iter $P5004, $P5007
  for_next150:
    unless $P5004, for_done152
    shift $P5009, $P5004
  for_redo151:
    .const 'Sub' $P5008 = 'cuid_163_1357684851.462' 
    capture_lex $P5008
    $P5002 = $P5008($P5009)
    goto for_next150
  for_done152:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_163_1357684851.462") :anon :lex :outer("cuid_59_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 597
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 598
    find_lex $P5001, "@meths"
    $P5002 = _lex_param_0."value"()
    $P5003 = $P5001."push"($P5002)
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "method_table" :subid("cuid_60_1357684851.462") :anon :lex :outer("cuid_64_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 603
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 6
    repr_get_attr_obj $P5003, $P5001, $P5002, "%!methods"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "name" :subid("cuid_61_1357684851.462") :anon :lex :outer("cuid_64_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 607
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 6
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!name"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "attributes" :subid("cuid_62_1357684851.462") :anon :lex :outer("cuid_64_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 611
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :named("local") :optional 
    .param int haz_param_14 :opt_flag 
    .const 'Sub' $P5011 = 'cuid_164_1357684851.462' 
    capture_lex $P5011 
    if haz_param_14, default157
    null $P5010
    set _lex_param_2, $P5010
  default157:
    .lex "@attrs", $P101 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$local", _lex_param_2 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 6
    repr_get_attr_obj $P5007, $P5005, $P5006, "%!attributes"
    set $P5002, $P5007
    iter $P5004, $P5007
  for_next154:
    unless $P5004, for_done156
    shift $P5009, $P5004
  for_redo155:
    .const 'Sub' $P5008 = 'cuid_164_1357684851.462' 
    capture_lex $P5008
    $P5002 = $P5008($P5009)
    goto for_next154
  for_done156:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_164_1357684851.462") :anon :lex :outer("cuid_62_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 613
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 614
    find_lex $P5001, "@attrs"
    $P5002 = _lex_param_0."value"()
    $P5003 = $P5001."push"($P5002)
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "roles" :subid("cuid_63_1357684851.462") :anon :lex :outer("cuid_64_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 619
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 6
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!roles"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_107_1357684851.462") :anon :lex :outer("cuid_1_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 629
    .const 'Sub' $P5048 = 'cuid_167_1357684851.462' 
    capture_lex $P5048 
    .const 'Sub' $P5048 = 'cuid_172_1357684851.462' 
    capture_lex $P5048 
    .const 'Sub' $P5048 = 'cuid_65_1357684851.462' 
    capture_lex $P5048 
    .const 'Sub' $P5048 = 'cuid_66_1357684851.462' 
    capture_lex $P5048 
    .const 'Sub' $P5048 = 'cuid_67_1357684851.462' 
    capture_lex $P5048 
    .const 'Sub' $P5048 = 'cuid_68_1357684851.462' 
    capture_lex $P5048 
    .const 'Sub' $P5048 = 'cuid_69_1357684851.462' 
    capture_lex $P5048 
    .const 'Sub' $P5048 = 'cuid_70_1357684851.462' 
    capture_lex $P5048 
    .const 'Sub' $P5048 = 'cuid_71_1357684851.462' 
    capture_lex $P5048 
    .const 'Sub' $P5048 = 'cuid_72_1357684851.462' 
    capture_lex $P5048 
    .const 'Sub' $P5048 = 'cuid_73_1357684851.462' 
    capture_lex $P5048 
    .const 'Sub' $P5048 = 'cuid_74_1357684851.462' 
    capture_lex $P5048 
    .const 'Sub' $P5048 = 'cuid_75_1357684851.462' 
    capture_lex $P5048 
    .const 'Sub' $P5048 = 'cuid_76_1357684851.462' 
    capture_lex $P5048 
    .const 'Sub' $P5048 = 'cuid_77_1357684851.462' 
    capture_lex $P5048 
    .const 'Sub' $P5048 = 'cuid_78_1357684851.462' 
    capture_lex $P5048 
    .const 'Sub' $P5048 = 'cuid_79_1357684851.462' 
    capture_lex $P5048 
    .const 'Sub' $P5048 = 'cuid_80_1357684851.462' 
    capture_lex $P5048 
    .const 'Sub' $P5048 = 'cuid_81_1357684851.462' 
    capture_lex $P5048 
    .const 'Sub' $P5048 = 'cuid_82_1357684851.462' 
    capture_lex $P5048 
    .const 'Sub' $P5048 = 'cuid_83_1357684851.462' 
    capture_lex $P5048 
    .const 'Sub' $P5048 = 'cuid_84_1357684851.462' 
    capture_lex $P5048 
    .const 'Sub' $P5048 = 'cuid_85_1357684851.462' 
    capture_lex $P5048 
    .const 'Sub' $P5048 = 'cuid_86_1357684851.462' 
    capture_lex $P5048 
    .const 'Sub' $P5048 = 'cuid_87_1357684851.462' 
    capture_lex $P5048 
    .const 'Sub' $P5048 = 'cuid_88_1357684851.462' 
    capture_lex $P5048 
    .const 'Sub' $P5048 = 'cuid_89_1357684851.462' 
    capture_lex $P5048 
    .const 'Sub' $P5048 = 'cuid_90_1357684851.462' 
    capture_lex $P5048 
    .const 'Sub' $P5048 = 'cuid_91_1357684851.462' 
    capture_lex $P5048 
    .const 'Sub' $P5048 = 'cuid_92_1357684851.462' 
    capture_lex $P5048 
    .const 'Sub' $P5048 = 'cuid_93_1357684851.462' 
    capture_lex $P5048 
    .const 'Sub' $P5048 = 'cuid_94_1357684851.462' 
    capture_lex $P5048 
    .const 'Sub' $P5048 = 'cuid_95_1357684851.462' 
    capture_lex $P5048 
    .const 'Sub' $P5048 = 'cuid_96_1357684851.462' 
    capture_lex $P5048 
    .const 'Sub' $P5048 = 'cuid_97_1357684851.462' 
    capture_lex $P5048 
    .const 'Sub' $P5048 = 'cuid_98_1357684851.462' 
    capture_lex $P5048 
    .const 'Sub' $P5048 = 'cuid_99_1357684851.462' 
    capture_lex $P5048 
    .const 'Sub' $P5048 = 'cuid_100_1357684851.462' 
    capture_lex $P5048 
    .const 'Sub' $P5048 = 'cuid_101_1357684851.462' 
    capture_lex $P5048 
    .const 'Sub' $P5048 = 'cuid_102_1357684851.462' 
    capture_lex $P5048 
    .const 'Sub' $P5048 = 'cuid_103_1357684851.462' 
    capture_lex $P5048 
    .const 'Sub' $P5048 = 'cuid_104_1357684851.462' 
    capture_lex $P5048 
    .const 'Sub' $P5048 = 'cuid_105_1357684851.462' 
    capture_lex $P5048 
    .const 'Sub' $P5048 = 'cuid_106_1357684851.462' 
    capture_lex $P5048 
    .lex "$archetypes", $P101 
    .lex "&compute_c3_mro", $P102 
    .lex "&c3_merge", $P103 
    .lex "$?PACKAGE", $P104 
    .lex "$?CLASS", $P105 
    null $P5001
    set $P101, $P5001
    .const 'Sub' $P5002 = 'cuid_167_1357684851.462' 
    capture_lex $P5002
    set $P102, $P5002
    .const 'Sub' $P5003 = 'cuid_172_1357684851.462' 
    capture_lex $P5003
    set $P103, $P5003
.annotate 'line', 679
    nqp_get_sc_object $P5004, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 1
    $P5005 = $P5004."new"(1 :named("nominal"), 1 :named("inheritable"))
    set $P101, $P5005
    .const 'Sub' $P5006 = 'cuid_65_1357684851.462' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_66_1357684851.462' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_67_1357684851.462' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_68_1357684851.462' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_69_1357684851.462' 
    capture_lex $P5010
    .const 'Sub' $P5011 = 'cuid_70_1357684851.462' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_71_1357684851.462' 
    capture_lex $P5012
    .const 'Sub' $P5013 = 'cuid_72_1357684851.462' 
    capture_lex $P5013
    .const 'Sub' $P5014 = 'cuid_73_1357684851.462' 
    capture_lex $P5014
    .const 'Sub' $P5015 = 'cuid_74_1357684851.462' 
    capture_lex $P5015
    .const 'Sub' $P5016 = 'cuid_75_1357684851.462' 
    capture_lex $P5016
    .const 'Sub' $P5017 = 'cuid_76_1357684851.462' 
    capture_lex $P5017
    .const 'Sub' $P5018 = 'cuid_77_1357684851.462' 
    capture_lex $P5018
    .const 'Sub' $P5019 = 'cuid_78_1357684851.462' 
    capture_lex $P5019
    .const 'Sub' $P5020 = 'cuid_79_1357684851.462' 
    capture_lex $P5020
    .const 'Sub' $P5021 = 'cuid_80_1357684851.462' 
    capture_lex $P5021
    .const 'Sub' $P5022 = 'cuid_81_1357684851.462' 
    capture_lex $P5022
    .const 'Sub' $P5023 = 'cuid_82_1357684851.462' 
    capture_lex $P5023
    .const 'Sub' $P5024 = 'cuid_83_1357684851.462' 
    capture_lex $P5024
    .const 'Sub' $P5025 = 'cuid_84_1357684851.462' 
    capture_lex $P5025
    .const 'Sub' $P5026 = 'cuid_85_1357684851.462' 
    capture_lex $P5026
    .const 'Sub' $P5027 = 'cuid_86_1357684851.462' 
    capture_lex $P5027
    .const 'Sub' $P5028 = 'cuid_87_1357684851.462' 
    capture_lex $P5028
    .const 'Sub' $P5029 = 'cuid_88_1357684851.462' 
    capture_lex $P5029
    .const 'Sub' $P5030 = 'cuid_89_1357684851.462' 
    capture_lex $P5030
    .const 'Sub' $P5031 = 'cuid_90_1357684851.462' 
    capture_lex $P5031
    .const 'Sub' $P5032 = 'cuid_91_1357684851.462' 
    capture_lex $P5032
    .const 'Sub' $P5033 = 'cuid_92_1357684851.462' 
    capture_lex $P5033
    .const 'Sub' $P5034 = 'cuid_93_1357684851.462' 
    capture_lex $P5034
    .const 'Sub' $P5035 = 'cuid_94_1357684851.462' 
    capture_lex $P5035
    .const 'Sub' $P5036 = 'cuid_95_1357684851.462' 
    capture_lex $P5036
    .const 'Sub' $P5037 = 'cuid_96_1357684851.462' 
    capture_lex $P5037
    .const 'Sub' $P5038 = 'cuid_97_1357684851.462' 
    capture_lex $P5038
    .const 'Sub' $P5039 = 'cuid_98_1357684851.462' 
    capture_lex $P5039
    .const 'Sub' $P5040 = 'cuid_99_1357684851.462' 
    capture_lex $P5040
    .const 'Sub' $P5041 = 'cuid_100_1357684851.462' 
    capture_lex $P5041
    .const 'Sub' $P5042 = 'cuid_101_1357684851.462' 
    capture_lex $P5042
    .const 'Sub' $P5043 = 'cuid_102_1357684851.462' 
    capture_lex $P5043
    .const 'Sub' $P5044 = 'cuid_103_1357684851.462' 
    capture_lex $P5044
    .const 'Sub' $P5045 = 'cuid_104_1357684851.462' 
    capture_lex $P5045
    .const 'Sub' $P5046 = 'cuid_105_1357684851.462' 
    capture_lex $P5046
    .const 'Sub' $P5047 = 'cuid_106_1357684851.462' 
    capture_lex $P5047
    .return ($P5047) 
.end
.HLL "nqp"
.namespace []
.sub "compute_c3_mro" :subid("cuid_167_1357684851.462") :anon :lex :outer("cuid_107_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 930
    .param pmc _lex_param_0 
    .const 'Sub' $P5013 = 'cuid_166_1357684851.462' 
    capture_lex $P5013 
    .lex "@immediate_parents", $P101 
    .lex "@result", $P102 
    .lex "$class", _lex_param_0 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    new $P5002, 'ResizablePMCArray'
    set $P102, $P5002
    root_new $P103, ['parrot';'Continuation']
    set_label $P103, lexotic_158
    .lex "RETURN", $P103
.annotate 'line', 931
    get_how $P5003, _lex_param_0
    $P5004 = $P5003."parents"(_lex_param_0, 1 :named("local"))
    set $P101, $P5004
    set $N5001, $P101
    unless $N5001 goto if41_end161 
.annotate 'line', 935
    set $N5002, $P101
    set $N5003, 1
    iseq $I5001, $N5002, $N5003
    unless $I5001 goto if42_else162 
.annotate 'line', 936
.annotate 'line', 937
    set $P5005, $P101[0]
    unless_null $P5005, fallback164
    null $P5006
    set $P5005, $P5006
  fallback164:
    $P5007 = "&compute_c3_mro"($P5005)
    set $P102, $P5007
    set $P5010, $P102
    goto if42_end163
  if42_else162:
    .const 'Sub' $P5008 = 'cuid_166_1357684851.462' 
    capture_lex $P5008
    $P5009 = $P5008()
    set $P5010, $P5009
  if42_end163:
  if41_end161:
.annotate 'line', 951
    $P102."unshift"(_lex_param_0)
    find_lex $P5011, "RETURN"
    $P5012 = $P5011($P102)
    goto lexotic_159
  lexotic_158:
    .get_results ($P5012)
  lexotic_159:
    .return ($P5012) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_166_1357684851.462") :anon :lex :outer("cuid_167_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 938
    .const 'Sub' $P5010 = 'cuid_165_1357684851.462' 
    capture_lex $P5010 
    .lex "@merge_list", $P101 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    find_lex $P5005, "@immediate_parents"
    set $P5002, $P5005
    iter $P5004, $P5005
  for_next165:
    unless $P5004, for_done167
    shift $P5007, $P5004
  for_redo166:
    .const 'Sub' $P5006 = 'cuid_165_1357684851.462' 
    capture_lex $P5006
    $P5002 = $P5006($P5007)
    goto for_next165
  for_done167:
.annotate 'line', 945
    find_lex $P5008, "@immediate_parents"
    $P101."push"($P5008)
.annotate 'line', 946
    $P5009 = "&c3_merge"($P101)
    store_lex "@result", $P5009
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_165_1357684851.462") :anon :lex :outer("cuid_166_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 942
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 943
    find_lex $P5001, "@merge_list"
    $P5002 = "&compute_c3_mro"(_lex_param_0)
    $P5003 = $P5001."push"($P5002)
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "c3_merge" :subid("cuid_172_1357684851.462") :anon :lex :outer("cuid_107_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 956
    .param pmc _lex_param_0 
    .const 'Sub' $P5025 = 'cuid_171_1357684851.462' 
    capture_lex $P5025 
    .const 'Sub' $P5025 = 'cuid_174_1357684851.462' 
    capture_lex $P5025 
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
    set_label $P106, lexotic_168
    .lex "RETURN", $P106
    box $P5006, 0
    set $P103, $P5006
    box $P5007, 0
    set $P104, $P5007
    set $P5008, _lex_param_0
    iter $P5010, _lex_param_0
    new $P5012, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5012, for_handlers188
    push_eh $P5012
  for_next189:
    unless $P5010, for_done191
    shift $P5013, $P5010
  for_redo190:
    .const 'Sub' $P5011 = 'cuid_171_1357684851.462' 
    capture_lex $P5011
    $P5008 = $P5011($P5013)
    goto for_next189
  for_handlers188:
    .get_results ($P5012)
    pop_upto_eh $P5012
    getattribute $P5012, $P5012, 'type'
    eq $P5012, .CONTROL_LOOP_NEXT, for_next189
    eq $P5012, .CONTROL_LOOP_REDO, for_redo190
  for_done191:
    pop_eh 
    set $N5001, $P104
    set $N5002, 0
    iseq $I5001, $N5001, $N5002
    unless $I5001 goto if48_end193 
.annotate 'line', 993
    find_lex $P5014, "RETURN"
    $P5015 = $P5014($P101)
  if48_end193:
    if $P103 goto unless49_end195 
.annotate 'line', 998
    box $P5016, "Could not build C3 linearization: ambiguous hierarchy"
    die $P5016
  unless49_end195:
    box $P5017, 0
    set $P105, $P5017
  while50_test196:
    set $N5003, $P105
    set $N5004, _lex_param_0
    islt $I5002, $N5003, $N5004
    box $P5021, $I5002
    set $P5020, $P5021
    unless $I5002 goto while50_done200 
  while50_redo198:
    .const 'Sub' $P5018 = 'cuid_174_1357684851.462' 
    capture_lex $P5018
    $P5019 = $P5018()
    set $P5020, $P5019
    goto while50_test196 
  while50_done200:
.annotate 'line', 1017
    $P5022 = "&c3_merge"(_lex_param_0)
    set $P101, $P5022
.annotate 'line', 1018
    $P101."unshift"($P102)
    find_lex $P5023, "RETURN"
    $P5024 = $P5023($P101)
    goto lexotic_169
  lexotic_168:
    .get_results ($P5024)
  lexotic_169:
    .return ($P5024) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_171_1357684851.462") :anon :lex :outer("cuid_172_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 963
    .param pmc _lex_param_0 
    .const 'Sub' $P5006 = 'cuid_170_1357684851.462' 
    capture_lex $P5006 
    .lex "@cand_list", $P101 
    .lex "$_", _lex_param_0 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    set $P101, _lex_param_0
    set $N5001, $P101
    box $P5005, $N5001
    set $P5004, $P5005
    unless $N5001 goto if43_end171 
    .const 'Sub' $P5002 = 'cuid_170_1357684851.462' 
    capture_lex $P5002
    $P5003 = $P5002()
    set $P5004, $P5003
  if43_end171:
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_170_1357684851.462") :anon :lex :outer("cuid_171_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 965
    .const 'Sub' $P5018 = 'cuid_169_1357684851.462' 
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
    unless_null $P5004, fallback172
    null $P5006
    set $P5004, $P5006
  fallback172:
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
  for_next183:
    unless $P5011, for_done185
    shift $P5014, $P5011
  for_redo184:
    .const 'Sub' $P5013 = 'cuid_169_1357684851.462' 
    capture_lex $P5013
    $P5009 = $P5013($P5014)
    goto for_next183
  for_done185:
    set $P5016, $P101
    if $P101 goto unless47_end187 
.annotate 'line', 984
    store_lex "$accepted", $P102
    box $P5015, 1
    store_lex "$something_accepted", $P5015
    die 0, .CONTROL_LOOP_LAST
    box $P5017, 0
    set $P5016, $P5017
  unless47_end187:
    .return ($P5016) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_169_1357684851.462") :anon :lex :outer("cuid_170_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 969
    .param pmc _lex_param_0 
    .const 'Sub' $P5006 = 'cuid_168_1357684851.462' 
    capture_lex $P5006 
    .lex "$_", _lex_param_0 
    get_id $I5002, _lex_param_0
    find_lex $P5001, "@cand_list"
    get_id $I5003, $P5001
    iseq $I5001, $I5002, $I5003
    box $P5005, $I5001
    set $P5004, $P5005
    if $I5001 goto unless44_end174 
    .const 'Sub' $P5002 = 'cuid_168_1357684851.462' 
    capture_lex $P5002
    $P5003 = $P5002()
    set $P5004, $P5003
  unless44_end174:
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_168_1357684851.462") :anon :lex :outer("cuid_169_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 971
    .lex "$cur_pos", $P101 
    null $P5001
    set $P101, $P5001
    box $P5002, 1
    set $P101, $P5002
  while45_test175:
    set $N5001, $P101
    find_lex $P5003, "$_"
    set $N5002, $P5003
    isle $I5001, $N5001, $N5002
    box $P5011, $I5001
    set $P5010, $P5011
    unless $I5001 goto while45_done179 
  while45_redo177:
.annotate 'line', 974
    find_lex $P5005, "$_"
    set $I5004, $P101
    set $P5004, $P5005[$I5004]
    unless_null $P5004, fallback182
    null $P5006
    set $P5004, $P5006
  fallback182:
    get_id $I5003, $P5004
    find_lex $P5007, "$cand_class"
    get_id $I5005, $P5007
    iseq $I5002, $I5003, $I5005
    unless $I5002 goto if46_end181 
.annotate 'line', 975
    box $P5008, 1
    store_lex "$rejected", $P5008
  if46_end181:
    set $N5004, $P101
    set $N5005, 1
    add $N5003, $N5004, $N5005
    box $P5009, $N5003
    set $P101, $P5009
    set $P5010, $P101
    goto while45_test175 
  while45_done179:
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_174_1357684851.462") :anon :lex :outer("cuid_172_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1004
    .const 'Sub' $P5015 = 'cuid_173_1357684851.462' 
    capture_lex $P5015 
    .lex "@new_list", $P101 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    find_lex $P5006, "@merge_list"
    find_lex $P5007, "$i"
    set $I5001, $P5007
    set $P5005, $P5006[$I5001]
    unless_null $P5005, fallback201
    null $P5008
    set $P5005, $P5008
  fallback201:
    set $P5002, $P5005
    iter $P5004, $P5005
  for_next204:
    unless $P5004, for_done206
    shift $P5010, $P5004
  for_redo205:
    .const 'Sub' $P5009 = 'cuid_173_1357684851.462' 
    capture_lex $P5009
    $P5002 = $P5009($P5010)
    goto for_next204
  for_done206:
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
.sub "" :subid("cuid_173_1357684851.462") :anon :lex :outer("cuid_174_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1006
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    get_id $I5002, _lex_param_0
    find_lex $P5001, "$accepted"
    get_id $I5003, $P5001
    iseq $I5001, $I5002, $I5003
    box $P5005, $I5001
    set $P5004, $P5005
    if $I5001 goto unless51_end203 
.annotate 'line', 1007
.annotate 'line', 1008
    find_lex $P5002, "@new_list"
    $P5003 = $P5002."push"(_lex_param_0)
    set $P5004, $P5003
  unless51_end203:
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "archetypes" :subid("cuid_65_1357684851.462") :anon :lex :outer("cuid_107_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 680
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    find_lex $P5001, "$archetypes"
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "new" :subid("cuid_66_1357684851.462") :anon :lex :outer("cuid_107_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 689
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("name") :optional 
    .param int haz_param_15 :opt_flag 
    if haz_param_15, default207
    box $P5004, "<anon>"
    set _lex_param_1, $P5004
  default207:
    .lex "$obj", $P101 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    null $P5001
    set $P101, $P5001
    nqp_decontainerize $P5003, _lex_param_0
    repr_instance_of $P5002, $P5003
    set $P101, $P5002
.annotate 'line', 691
    $P101."BUILD"(_lex_param_1 :named("name"))
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "BUILD" :subid("cuid_67_1357684851.462") :anon :lex :outer("cuid_107_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 695
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("name") :optional 
    .param int haz_param_16 :opt_flag 
    if haz_param_16, default208
    box $P5054, "<anon>"
    set _lex_param_1, $P5054
  default208:
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 7
    repr_bind_attr_obj $P5001, $P5002, "$!name", _lex_param_1
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 7
    new $P5005, 'Hash'
    repr_bind_attr_obj $P5003, $P5004, "%!attributes", $P5005
    nqp_decontainerize $P5006, _lex_param_0
    nqp_get_sc_object $P5007, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 7
    new $P5008, 'Hash'
    repr_bind_attr_obj $P5006, $P5007, "%!methods", $P5008
    nqp_decontainerize $P5009, _lex_param_0
    nqp_get_sc_object $P5010, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 7
    new $P5011, 'ResizablePMCArray'
    repr_bind_attr_obj $P5009, $P5010, "@!method_order", $P5011
    nqp_decontainerize $P5012, _lex_param_0
    nqp_get_sc_object $P5013, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 7
    new $P5014, 'ResizablePMCArray'
    repr_bind_attr_obj $P5012, $P5013, "@!multi_methods_to_incorporate", $P5014
    nqp_decontainerize $P5015, _lex_param_0
    nqp_get_sc_object $P5016, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 7
    new $P5017, 'ResizablePMCArray'
    repr_bind_attr_obj $P5015, $P5016, "@!parents", $P5017
    nqp_decontainerize $P5018, _lex_param_0
    nqp_get_sc_object $P5019, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 7
    new $P5020, 'ResizablePMCArray'
    repr_bind_attr_obj $P5018, $P5019, "@!roles", $P5020
    nqp_decontainerize $P5021, _lex_param_0
    nqp_get_sc_object $P5022, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 7
    new $P5023, 'ResizablePMCArray'
    repr_bind_attr_obj $P5021, $P5022, "@!vtable", $P5023
    nqp_decontainerize $P5024, _lex_param_0
    nqp_get_sc_object $P5025, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 7
    new $P5026, 'Hash'
    repr_bind_attr_obj $P5024, $P5025, "%!method-vtable-slots", $P5026
    nqp_decontainerize $P5027, _lex_param_0
    nqp_get_sc_object $P5028, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 7
    new $P5029, 'ResizablePMCArray'
    repr_bind_attr_obj $P5027, $P5028, "@!mro", $P5029
    nqp_decontainerize $P5030, _lex_param_0
    nqp_get_sc_object $P5031, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 7
    new $P5032, 'ResizablePMCArray'
    repr_bind_attr_obj $P5030, $P5031, "@!done", $P5032
    nqp_decontainerize $P5033, _lex_param_0
    nqp_get_sc_object $P5034, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 7
    new $P5035, 'Hash'
    repr_bind_attr_obj $P5033, $P5034, "%!parrot_vtable_mapping", $P5035
    nqp_decontainerize $P5036, _lex_param_0
    nqp_get_sc_object $P5037, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 7
    new $P5038, 'Hash'
    repr_bind_attr_obj $P5036, $P5037, "%!parrot_vtable_handler_mapping", $P5038
    nqp_decontainerize $P5039, _lex_param_0
    nqp_get_sc_object $P5040, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 7
    new $P5041, 'ResizablePMCArray'
    repr_bind_attr_obj $P5039, $P5040, "@!BUILDALLPLAN", $P5041
    nqp_decontainerize $P5042, _lex_param_0
    nqp_get_sc_object $P5043, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 7
    new $P5044, 'ResizablePMCArray'
    repr_bind_attr_obj $P5042, $P5043, "@!BUILDPLAN", $P5044
    nqp_decontainerize $P5045, _lex_param_0
    nqp_get_sc_object $P5046, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 7
    box $P5047, 0
    repr_bind_attr_obj $P5045, $P5046, "$!trace", $P5047
    nqp_decontainerize $P5048, _lex_param_0
    nqp_get_sc_object $P5049, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 7
    box $P5050, 0
    repr_bind_attr_obj $P5048, $P5049, "$!trace_depth", $P5050
    nqp_decontainerize $P5051, _lex_param_0
    nqp_get_sc_object $P5052, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 7
    box $P5053, 0
    repr_bind_attr_obj $P5051, $P5052, "$!composed", $P5053
    .return ($P5053) 
.end
.HLL "nqp"
.namespace []
.sub "new_type" :subid("cuid_68_1357684851.462") :anon :lex :outer("cuid_107_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 718
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("name") :optional 
    .param int haz_param_17 :opt_flag 
    .param pmc _lex_param_2 :named("repr") :optional 
    .param int haz_param_18 :opt_flag 
    if haz_param_17, default209
    box $P5006, "<anon>"
    set _lex_param_1, $P5006
  default209:
    if haz_param_18, default210
    box $P5007, "P6opaque"
    set _lex_param_2, $P5007
  default210:
    .lex "$metaclass", $P101 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    .lex "$repr", _lex_param_2 
    null $P5001
    set $P101, $P5001
.annotate 'line', 719
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
.sub "add_method" :subid("cuid_69_1357684851.462") :anon :lex :outer("cuid_107_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 723
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$name", _lex_param_2 
    .lex "$code_obj", _lex_param_3 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 7
    repr_get_attr_obj $P5003, $P5001, $P5002, "%!methods"
    set $S5001, _lex_param_2
    exists $I5001, $P5003[$S5001]
    unless $I5001 goto if52_end212 
.annotate 'line', 724
    set $S5003, _lex_param_2
    concat $S5002, "This class already has a method named ", $S5003
    box $P5004, $S5002
    die $P5004
  if52_end212:
    isnull $I5002, _lex_param_3
    set $I5005, $I5002
    if $I5002 goto unless54_end216 
    defined $I5004, _lex_param_3
    not $I5003, $I5004
    set $I5005, $I5003
  unless54_end216:
    unless $I5005 goto if53_end214 
.annotate 'line', 727
    set $S5008, _lex_param_2
    concat $S5007, "Cannot add a null method '", $S5008
    concat $S5006, $S5007, "' to class '"
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 7
    repr_get_attr_obj $P5007, $P5005, $P5006, "$!name"
    set $S5009, $P5007
    concat $S5005, $S5006, $S5009
    concat $S5004, $S5005, "'"
    box $P5008, $S5004
    die $P5008
  if53_end214:
    set_method_cache_authoritativeness _lex_param_1, 0
    nqp_decontainerize $P5009, _lex_param_0
    nqp_get_sc_object $P5010, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 7
    repr_get_attr_obj $P5011, $P5009, $P5010, "%!caches"
    isnull $I5006, $P5011
    if $I5006 goto unless55_end218 
    nqp_decontainerize $P5012, _lex_param_0
    nqp_get_sc_object $P5013, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 7
    repr_get_attr_obj $P5014, $P5012, $P5013, "%!caches"
    nqp_decontainerize $P5015, _lex_param_0
    get_id $I5007, $P5015
    set $S5010, $I5007
    new $P5016, 'Hash'
    set $P5014[$S5010], $P5016
  unless55_end218:
    nqp_decontainerize $P5017, _lex_param_0
    nqp_get_sc_object $P5018, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 7
    repr_get_attr_obj $P5019, $P5017, $P5018, "@!method_order"
    nqp_decontainerize $P5020, _lex_param_0
    nqp_get_sc_object $P5021, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 7
    repr_get_attr_obj $P5022, $P5020, $P5021, "@!method_order"
    set $N5001, $P5022
    set $I5008, $N5001
    nqp_decontainerize $P5023, _lex_param_0
    nqp_get_sc_object $P5024, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 7
    repr_get_attr_obj $P5025, $P5023, $P5024, "%!methods"
    set $S5011, _lex_param_2
    set $P5025[$S5011], _lex_param_3
    set $P5019[$I5008], _lex_param_3
    .return (_lex_param_3) 
.end
.HLL "nqp"
.namespace []
.sub "add_multi_method" :subid("cuid_70_1357684851.462") :anon :lex :outer("cuid_107_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 735
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
    nqp_get_sc_object $P5003, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 7
    repr_get_attr_obj $P5004, $P5002, $P5003, "@!multi_methods_to_incorporate"
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 7
    repr_get_attr_obj $P5007, $P5005, $P5006, "@!multi_methods_to_incorporate"
    set $N5001, $P5007
    set $I5001, $N5001
    set $P5004[$I5001], $P101
    set_method_cache_authoritativeness _lex_param_1, 0
    .return (_lex_param_3) 
.end
.HLL "nqp"
.namespace []
.sub "add_attribute" :subid("cuid_71_1357684851.462") :anon :lex :outer("cuid_107_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 749
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "$name", $P101 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$meta_attr", _lex_param_2 
    null $P5001
    set $P101, $P5001
.annotate 'line', 750
    $P5002 = _lex_param_2."name"()
    set $P101, $P5002
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 7
    repr_get_attr_obj $P5005, $P5003, $P5004, "%!attributes"
    set $S5001, $P101
    exists $I5001, $P5005[$S5001]
    unless $I5001 goto if56_end220 
.annotate 'line', 751
    set $S5003, $P101
    concat $S5002, "This class already has an attribute named ", $S5003
    box $P5006, $S5002
    die $P5006
  if56_end220:
    nqp_decontainerize $P5007, _lex_param_0
    nqp_get_sc_object $P5008, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 7
    repr_get_attr_obj $P5009, $P5007, $P5008, "%!attributes"
    set $S5004, $P101
    set $P5009[$S5004], _lex_param_2
    .return (_lex_param_2) 
.end
.HLL "nqp"
.namespace []
.sub "add_parent" :subid("cuid_72_1357684851.462") :anon :lex :outer("cuid_107_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 757
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .const 'Sub' $P5023 = 'cuid_175_1357684851.462' 
    capture_lex $P5023 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$parent", _lex_param_2 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 7
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!composed"
    unless $P5003 goto if57_end222 
.annotate 'line', 758
    box $P5004, "NQPClassHOW does not support adding parents after being composed."
    die $P5004
  if57_end222:
    get_id $I5002, _lex_param_1
    get_id $I5003, _lex_param_2
    iseq $I5001, $I5002, $I5003
    unless $I5001 goto if58_end224 
.annotate 'line', 761
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 7
    repr_get_attr_obj $P5007, $P5005, $P5006, "$!name"
    set $S5003, $P5007
    concat $S5002, "Class '", $S5003
    concat $S5001, $S5002, "' cannot inherit from itself."
    box $P5008, $S5001
    die $P5008
  if58_end224:
    nqp_decontainerize $P5012, _lex_param_0
    nqp_get_sc_object $P5013, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 7
    repr_get_attr_obj $P5014, $P5012, $P5013, "@!parents"
    set $P5009, $P5014
    iter $P5011, $P5014
  for_next227:
    unless $P5011, for_done229
    shift $P5016, $P5011
  for_redo228:
    .const 'Sub' $P5015 = 'cuid_175_1357684851.462' 
    capture_lex $P5015
    $P5009 = $P5015($P5016)
    goto for_next227
  for_done229:
    nqp_decontainerize $P5017, _lex_param_0
    nqp_get_sc_object $P5018, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 7
    repr_get_attr_obj $P5019, $P5017, $P5018, "@!parents"
    nqp_decontainerize $P5020, _lex_param_0
    nqp_get_sc_object $P5021, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 7
    repr_get_attr_obj $P5022, $P5020, $P5021, "@!parents"
    set $N5001, $P5022
    set $I5004, $N5001
    set $P5019[$I5004], _lex_param_2
    .return (_lex_param_2) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_175_1357684851.462") :anon :lex :outer("cuid_72_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 764
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    get_id $I5002, _lex_param_0
    find_lex $P5001, "$parent"
    get_id $I5003, $P5001
    iseq $I5001, $I5002, $I5003
    box $P5005, $I5001
    set $P5004, $P5005
    unless $I5001 goto if59_end226 
.annotate 'line', 765
    find_lex $P5002, "$parent"
    set $S5003, $P5002
    concat $S5002, "Already have ", $S5003
    concat $S5001, $S5002, " as a parent class."
    box $P5003, $S5001
    die $P5003
    set $P5004, $P5003
  if59_end226:
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "set_default_parent" :subid("cuid_73_1357684851.462") :anon :lex :outer("cuid_107_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 772
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$parent", _lex_param_2 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 7
    repr_bind_attr_obj $P5001, $P5002, "$!default_parent", _lex_param_2
    .return (_lex_param_2) 
.end
.HLL "nqp"
.namespace []
.sub "reparent" :subid("cuid_74_1357684851.462") :anon :lex :outer("cuid_107_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 778
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .const 'Sub' $P5040 = 'cuid_176_1357684851.462' 
    capture_lex $P5040 
    .const 'Sub' $P5040 = 'cuid_177_1357684851.462' 
    capture_lex $P5040 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$new_parent", _lex_param_2 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 7
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!parents"
    set $N5001, $P5003
    set $N5002, 1
    isne $I5001, $N5001, $N5002
    unless $I5001 goto if60_end231 
.annotate 'line', 779
    box $P5004, "Can only re-parent a class with exactly one parent"
    die $P5004
  if60_end231:
.annotate 'line', 782
    nqp_decontainerize $P5010, _lex_param_0
    nqp_get_sc_object $P5011, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 7
    repr_get_attr_obj $P5012, $P5010, $P5011, "@!parents"
    set $P5009, $P5012[0]
    unless_null $P5009, fallback232
    null $P5013
    set $P5009, $P5013
  fallback232:
    get_how $P5008, $P5009
    nqp_decontainerize $P5015, _lex_param_0
    nqp_get_sc_object $P5016, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 7
    repr_get_attr_obj $P5017, $P5015, $P5016, "@!parents"
    set $P5014, $P5017[0]
    unless_null $P5014, fallback233
    null $P5018
    set $P5014, $P5018
  fallback233:
    $P5019 = $P5008."mro"($P5014)
    set $P5005, $P5019
    iter $P5007, $P5019
  for_next236:
    unless $P5007, for_done238
    shift $P5021, $P5007
  for_redo237:
    .const 'Sub' $P5020 = 'cuid_176_1357684851.462' 
    capture_lex $P5020
    $P5005 = $P5020($P5021)
    goto for_next236
  for_done238:
.annotate 'line', 787
    get_how $P5025, _lex_param_2
    $P5026 = $P5025."mro"(_lex_param_2)
    set $P5022, $P5026
    iter $P5024, $P5026
  for_next241:
    unless $P5024, for_done243
    shift $P5028, $P5024
  for_redo242:
    .const 'Sub' $P5027 = 'cuid_177_1357684851.462' 
    capture_lex $P5027
    $P5022 = $P5027($P5028)
    goto for_next241
  for_done243:
    nqp_decontainerize $P5029, _lex_param_0
    nqp_get_sc_object $P5030, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 7
    repr_get_attr_obj $P5031, $P5029, $P5030, "@!parents"
    set $P5031[0], _lex_param_2
    nqp_decontainerize $P5032, _lex_param_0
    nqp_get_sc_object $P5033, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 7
.annotate 'line', 793
    $P5034 = "&compute_c3_mro"(_lex_param_1)
    repr_bind_attr_obj $P5032, $P5033, "@!mro", $P5034
.annotate 'line', 794
    nqp_decontainerize $P5035, _lex_param_0
    $P5035."publish_type_cache"(_lex_param_1)
.annotate 'line', 795
    nqp_decontainerize $P5036, _lex_param_0
    $P5036."publish_method_cache"(_lex_param_1)
.annotate 'line', 796
    nqp_decontainerize $P5037, _lex_param_0
    $P5037."publish_boolification_spec"(_lex_param_1)
.annotate 'line', 797
    nqp_decontainerize $P5038, _lex_param_0
    $P5038."publish_parrot_vtable_mapping"(_lex_param_1)
.annotate 'line', 798
    nqp_decontainerize $P5039, _lex_param_0
    $P5039."publish_parrot_vtablee_handler_mapping"(_lex_param_1)
    .return (1) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_176_1357684851.462") :anon :lex :outer("cuid_74_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 782
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 783
    get_how $P5001, _lex_param_0
    $P5002 = $P5001."attributes"(_lex_param_0, 1 :named("local"))
    set $N5001, $P5002
    box $P5005, $N5001
    set $P5004, $P5005
    unless $N5001 goto if61_end235 
    box $P5003, "Can only re-parent a class whose parent has no attributes"
    die $P5003
    set $P5004, $P5003
  if61_end235:
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_177_1357684851.462") :anon :lex :outer("cuid_74_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 787
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 788
    get_how $P5001, _lex_param_0
    $P5002 = $P5001."attributes"(_lex_param_0, 1 :named("local"))
    set $N5001, $P5002
    box $P5005, $N5001
    set $P5004, $P5005
    unless $N5001 goto if62_end240 
    box $P5003, "Can only re-parent to a class with no attributes"
    die $P5003
    set $P5004, $P5003
  if62_end240:
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "add_role" :subid("cuid_75_1357684851.462") :anon :lex :outer("cuid_107_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 802
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .const 'Sub' $P5015 = 'cuid_178_1357684851.462' 
    capture_lex $P5015 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$role", _lex_param_2 
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 7
    repr_get_attr_obj $P5006, $P5004, $P5005, "@!roles"
    set $P5001, $P5006
    iter $P5003, $P5006
  for_next246:
    unless $P5003, for_done248
    shift $P5008, $P5003
  for_redo247:
    .const 'Sub' $P5007 = 'cuid_178_1357684851.462' 
    capture_lex $P5007
    $P5001 = $P5007($P5008)
    goto for_next246
  for_done248:
    nqp_decontainerize $P5009, _lex_param_0
    nqp_get_sc_object $P5010, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 7
    repr_get_attr_obj $P5011, $P5009, $P5010, "@!roles"
    nqp_decontainerize $P5012, _lex_param_0
    nqp_get_sc_object $P5013, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 7
    repr_get_attr_obj $P5014, $P5012, $P5013, "@!roles"
    set $N5001, $P5014
    set $I5001, $N5001
    set $P5011[$I5001], _lex_param_2
    .return (_lex_param_2) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_178_1357684851.462") :anon :lex :outer("cuid_75_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 803
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    get_id $I5002, _lex_param_0
    find_lex $P5001, "$role"
    get_id $I5003, $P5001
    iseq $I5001, $I5002, $I5003
    box $P5005, $I5001
    set $P5004, $P5005
    unless $I5001 goto if63_end245 
.annotate 'line', 804
    find_lex $P5002, "$role"
    set $S5003, $P5002
    concat $S5002, "The role ", $S5003
    concat $S5001, $S5002, " has already been added."
    box $P5003, $S5001
    die $P5003
    set $P5004, $P5003
  if63_end245:
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "add_parrot_vtable_mapping" :subid("cuid_76_1357684851.462") :anon :lex :outer("cuid_107_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 811
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$name", _lex_param_2 
    .lex "$meth", _lex_param_3 
    nqp_decontainerize $P5002, _lex_param_0
    nqp_get_sc_object $P5003, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 7
    repr_get_attr_obj $P5004, $P5002, $P5003, "%!parrot_vtable_mapping"
    set $S5001, _lex_param_2
    set $P5001, $P5004[$S5001]
    unless_null $P5001, fallback251
    null $P5005
    set $P5001, $P5005
  fallback251:
    defined $I5001, $P5001
    unless $I5001 goto if64_end250 
.annotate 'line', 812
    nqp_decontainerize $P5006, _lex_param_0
    nqp_get_sc_object $P5007, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 7
    repr_get_attr_obj $P5008, $P5006, $P5007, "$!name"
    set $S5006, $P5008
    concat $S5005, "Class '", $S5006
    concat $S5004, $S5005, "' already has a Parrot v-table override for '"
    set $S5007, _lex_param_2
    concat $S5003, $S5004, $S5007
    concat $S5002, $S5003, "'"
    box $P5009, $S5002
    die $P5009
  if64_end250:
    nqp_decontainerize $P5010, _lex_param_0
    nqp_get_sc_object $P5011, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 7
    repr_get_attr_obj $P5012, $P5010, $P5011, "%!parrot_vtable_mapping"
    set $S5008, _lex_param_2
    set $P5012[$S5008], _lex_param_3
    .return (_lex_param_3) 
.end
.HLL "nqp"
.namespace []
.sub "add_parrot_vtable_handler_mapping" :subid("cuid_77_1357684851.462") :anon :lex :outer("cuid_107_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 820
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$name", _lex_param_2 
    .lex "$att_name", _lex_param_3 
    nqp_decontainerize $P5002, _lex_param_0
    nqp_get_sc_object $P5003, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 7
    repr_get_attr_obj $P5004, $P5002, $P5003, "%!parrot_vtable_handler_mapping"
    set $S5001, _lex_param_2
    set $P5001, $P5004[$S5001]
    unless_null $P5001, fallback254
    null $P5005
    set $P5001, $P5005
  fallback254:
    defined $I5001, $P5001
    unless $I5001 goto if65_end253 
.annotate 'line', 821
    nqp_decontainerize $P5006, _lex_param_0
    nqp_get_sc_object $P5007, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 7
    repr_get_attr_obj $P5008, $P5006, $P5007, "$!name"
    set $S5006, $P5008
    concat $S5005, "Class '", $S5006
    concat $S5004, $S5005, "' already has a Parrot v-table handler for '"
    set $S5007, _lex_param_2
    concat $S5003, $S5004, $S5007
    concat $S5002, $S5003, "'"
    box $P5009, $S5002
    die $P5009
  if65_end253:
    nqp_decontainerize $P5010, _lex_param_0
    nqp_get_sc_object $P5011, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 7
    repr_get_attr_obj $P5012, $P5010, $P5011, "%!parrot_vtable_handler_mapping"
    set $S5008, _lex_param_2
    new $P5013, 'ResizablePMCArray'
    push $P5013, _lex_param_1
    push $P5013, _lex_param_3
    set $P5012[$S5008], $P5013
    .return ($P5013) 
.end
.HLL "nqp"
.namespace []
.sub "compose" :subid("cuid_78_1357684851.462") :anon :lex :outer("cuid_107_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 829
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5037 = 'cuid_180_1357684851.462' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_181_1357684851.462' 
    capture_lex $P5037 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 7
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!roles"
    unless $P5003 goto if66_end256 
    .const 'Sub' $P5004 = 'cuid_180_1357684851.462' 
    capture_lex $P5004
    $P5005 = $P5004()
  if66_end256:
    nqp_decontainerize $P5006, _lex_param_0
    nqp_get_sc_object $P5007, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 7
    repr_get_attr_obj $P5008, $P5006, $P5007, "@!parents"
    set $N5001, $P5008
    set $N5002, 0
    iseq $I5001, $N5001, $N5002
    set $I5003, $I5001
    unless $I5001 goto if68_end263 
    nqp_decontainerize $P5009, _lex_param_0
    nqp_get_sc_object $P5010, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 7
    repr_get_attr_obj $P5011, $P5009, $P5010, "$!name"
    set $S5001, $P5011
    isne $I5002, $S5001, "NQPMu"
    set $I5003, $I5002
  if68_end263:
    unless $I5003 goto if67_end261 
.annotate 'line', 846
.annotate 'line', 847
    nqp_decontainerize $P5012, _lex_param_0
    nqp_decontainerize $P5013, _lex_param_0
    nqp_get_sc_object $P5014, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 7
    repr_get_attr_obj $P5015, $P5013, $P5014, "$!default_parent"
    $P5016 = $P5012."add_parent"(_lex_param_1, $P5015)
  if67_end261:
    nqp_decontainerize $P5017, _lex_param_0
    nqp_get_sc_object $P5018, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 7
.annotate 'line', 851
    $P5019 = "&compute_c3_mro"(_lex_param_1)
    repr_bind_attr_obj $P5017, $P5018, "@!mro", $P5019
.annotate 'line', 854
    nqp_decontainerize $P5020, _lex_param_0
    $P5020."incorporate_multi_candidates"(_lex_param_1)
.annotate 'line', 857
    nqp_decontainerize $P5024, _lex_param_0
    $P5025 = $P5024."attributes"(_lex_param_1, "0" :named("local"))
    set $P5021, $P5025
    iter $P5023, $P5025
  for_next264:
    unless $P5023, for_done266
    shift $P5027, $P5023
  for_redo265:
    .const 'Sub' $P5026 = 'cuid_181_1357684851.462' 
    capture_lex $P5026
    $P5021 = $P5026($P5027)
    goto for_next264
  for_done266:
.annotate 'line', 860
    nqp_decontainerize $P5028, _lex_param_0
    $P5028."publish_type_cache"(_lex_param_1)
.annotate 'line', 861
    nqp_decontainerize $P5029, _lex_param_0
    $P5029."publish_method_cache"(_lex_param_1)
.annotate 'line', 862
    nqp_decontainerize $P5030, _lex_param_0
    $P5030."publish_boolification_spec"(_lex_param_1)
.annotate 'line', 865
    nqp_decontainerize $P5031, _lex_param_0
    $P5031."publish_parrot_vtable_mapping"(_lex_param_1)
.annotate 'line', 866
    nqp_decontainerize $P5032, _lex_param_0
    $P5032."publish_parrot_vtablee_handler_mapping"(_lex_param_1)
.annotate 'line', 869
    nqp_decontainerize $P5033, _lex_param_0
    $P5033."create_BUILDPLAN"(_lex_param_1)
    nqp_decontainerize $P5034, _lex_param_0
    nqp_get_sc_object $P5035, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 7
    box $P5036, 1
    repr_bind_attr_obj $P5034, $P5035, "$!composed", $P5036
    .return (_lex_param_1) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_180_1357684851.462") :anon :lex :outer("cuid_78_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 833
    .const 'Sub' $P5014 = 'cuid_179_1357684851.462' 
    capture_lex $P5014 
    .lex "@specialized_roles", $P101 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    find_lex $P5006, "self"
    nqp_decontainerize $P5005, $P5006
    nqp_get_sc_object $P5007, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 7
    repr_get_attr_obj $P5008, $P5005, $P5007, "@!roles"
    set $P5002, $P5008
    iter $P5004, $P5008
  for_next257:
    unless $P5004, for_done259
    shift $P5010, $P5004
  for_redo258:
    .const 'Sub' $P5009 = 'cuid_179_1357684851.462' 
    capture_lex $P5009
    $P5002 = $P5009($P5010)
    goto for_next257
  for_done259:
.annotate 'line', 841
    nqp_get_sc_object $P5011, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 4
    find_lex $P5012, "$obj"
    $P5013 = $P5011."apply"($P5012, $P101)
    .return ($P5013) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_179_1357684851.462") :anon :lex :outer("cuid_180_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 835
    .param pmc _lex_param_0 
    .lex "$ins", $P101 
    .lex "$_", _lex_param_0 
    null $P5001
    set $P101, $P5001
.annotate 'line', 836
    get_how $P5002, _lex_param_0
    find_lex $P5003, "$obj"
    $P5004 = $P5002."specialize"(_lex_param_0, $P5003)
    set $P101, $P5004
.annotate 'line', 837
    find_lex $P5005, "@specialized_roles"
    $P5005."push"($P101)
    find_lex $P5007, "self"
    nqp_decontainerize $P5006, $P5007
    nqp_get_sc_object $P5008, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 7
    repr_get_attr_obj $P5009, $P5006, $P5008, "@!done"
    find_lex $P5011, "self"
    nqp_decontainerize $P5010, $P5011
    nqp_get_sc_object $P5012, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 7
    repr_get_attr_obj $P5013, $P5010, $P5012, "@!done"
    set $N5001, $P5013
    set $I5001, $N5001
    set $P5009[$I5001], _lex_param_0
    find_lex $P5015, "self"
    nqp_decontainerize $P5014, $P5015
    nqp_get_sc_object $P5016, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 7
    repr_get_attr_obj $P5017, $P5014, $P5016, "@!done"
    find_lex $P5019, "self"
    nqp_decontainerize $P5018, $P5019
    nqp_get_sc_object $P5020, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 7
    repr_get_attr_obj $P5021, $P5018, $P5020, "@!done"
    set $N5002, $P5021
    set $I5002, $N5002
    set $P5017[$I5002], $P101
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_181_1357684851.462") :anon :lex :outer("cuid_78_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 857
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5001, "$obj"
    $P5002 = _lex_param_0."compose"($P5001)
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "incorporate_multi_candidates" :subid("cuid_79_1357684851.462") :anon :lex :outer("cuid_107_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 877
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5012 = 'cuid_185_1357684851.462' 
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
    nqp_get_sc_object $P5004, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 7
    repr_get_attr_obj $P5005, $P5003, $P5004, "@!multi_methods_to_incorporate"
    set $N5001, $P5005
    box $P5006, $N5001
    set $P101, $P5006
    box $P5007, 0
    set $P102, $P5007
  while69_test267:
    set $N5002, $P102
    set $N5003, $P101
    isne $I5001, $N5002, $N5003
    box $P5011, $I5001
    set $P5010, $P5011
    unless $I5001 goto while69_done271 
  while69_redo269:
    .const 'Sub' $P5008 = 'cuid_185_1357684851.462' 
    capture_lex $P5008
    $P5009 = $P5008()
    set $P5010, $P5009
    goto while69_test267 
  while69_done271:
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_185_1357684851.462") :anon :lex :outer("cuid_79_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 880
    .const 'Sub' $P5038 = 'cuid_184_1357684851.462' 
    capture_lex $P5038 
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
    nqp_get_sc_object $P5008, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 7
    repr_get_attr_obj $P5009, $P5006, $P5008, "@!multi_methods_to_incorporate"
    find_lex $P5010, "$i"
    set $I5001, $P5010
    set $P5005, $P5009[$I5001]
    unless_null $P5005, fallback272
    null $P5011
    set $P5005, $P5011
  fallback272:
    set $P5004, $P5005["name"]
    unless_null $P5004, fallback273
    null $P5012
    set $P5004, $P5012
  fallback273:
    set $P101, $P5004
    find_lex $P5016, "self"
    nqp_decontainerize $P5015, $P5016
    nqp_get_sc_object $P5017, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 7
    repr_get_attr_obj $P5018, $P5015, $P5017, "@!multi_methods_to_incorporate"
    find_lex $P5019, "$i"
    set $I5002, $P5019
    set $P5014, $P5018[$I5002]
    unless_null $P5014, fallback274
    null $P5020
    set $P5014, $P5020
  fallback274:
    set $P5013, $P5014["code"]
    unless_null $P5013, fallback275
    null $P5021
    set $P5013, $P5021
  fallback275:
    set $P102, $P5013
    find_lex $P5024, "self"
    nqp_decontainerize $P5023, $P5024
    nqp_get_sc_object $P5025, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 7
    repr_get_attr_obj $P5026, $P5023, $P5025, "%!methods"
    set $S5001, $P101
    set $P5022, $P5026[$S5001]
    unless_null $P5022, fallback276
    null $P5027
    set $P5022, $P5027
  fallback276:
    set $P103, $P5022
    defined $I5003, $P103
    unless $I5003 goto if70_else277 
.annotate 'line', 888
    can $I5004, $P103, "is_dispatcher"
    box $P5030, $I5004
    set $P5029, $P5030
    unless $I5004 goto if72_end282 
.annotate 'line', 891
    $P5028 = $P103."is_dispatcher"()
    set $P5029, $P5028
  if72_end282:
    unless $P5029 goto if71_else279 
.annotate 'line', 892
    $P5031 = $P103."add_dispatchee"($P102)
    set $P5033, $P5031
    goto if71_end280
  if71_else279:
.annotate 'line', 894
    set $S5004, $P101
    concat $S5003, "Cannot have a multi candidate for ", $S5004
    concat $S5002, $S5003, " when an only method is also in the class"
    box $P5032, $S5002
    die $P5032
    set $P5033, $P5032
  if71_end280:
    goto if70_end278
  if70_else277:
    .const 'Sub' $P5034 = 'cuid_184_1357684851.462' 
    capture_lex $P5034
    $P5035 = $P5034()
  if70_end278:
    find_lex $P5036, "$i"
    set $N5002, $P5036
    set $N5003, 1
    add $N5001, $N5002, $N5003
    box $P5037, $N5001
    store_lex "$i", $P5037
    .return ($P5037) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_184_1357684851.462") :anon :lex :outer("cuid_185_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 898
    .const 'Sub' $P5016 = 'cuid_183_1357684851.462' 
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
  while73_test283:
    set $N5001, $P101
    find_lex $P5006, "self"
    nqp_decontainerize $P5005, $P5006
    nqp_get_sc_object $P5007, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 7
    repr_get_attr_obj $P5008, $P5005, $P5007, "@!mro"
    set $N5002, $P5008
    isne $I5001, $N5001, $N5002
    set $I5003, $I5001
    unless $I5001 goto if74_end289 
    isfalse $I5002, $P102
    set $I5003, $I5002
  if74_end289:
    box $P5012, $I5003
    set $P5011, $P5012
    unless $I5003 goto while73_done287 
  while73_redo285:
    .const 'Sub' $P5009 = 'cuid_183_1357684851.462' 
    capture_lex $P5009
    $P5010 = $P5009()
    set $P5011, $P5010
    goto while73_test283 
  while73_done287:
    set $P5015, $P102
    if $P102 goto unless78_end299 
.annotate 'line', 921
    find_lex $P5013, "$name"
    set $S5003, $P5013
    concat $S5002, "Could not find a proto for multi ", $S5003
    concat $S5001, $S5002, ", and proto generation is NYI"
    box $P5014, $S5001
    die $P5014
    set $P5015, $P5014
  unless78_end299:
    .return ($P5015) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_183_1357684851.462") :anon :lex :outer("cuid_184_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 902
    .const 'Sub' $P5026 = 'cuid_182_1357684851.462' 
    capture_lex $P5026 
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
    nqp_get_sc_object $P5007, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 7
    repr_get_attr_obj $P5008, $P5005, $P5007, "@!mro"
    find_lex $P5009, "$j"
    set $I5001, $P5009
    set $P5004, $P5008[$I5001]
    unless_null $P5004, fallback290
    null $P5010
    set $P5004, $P5010
  fallback290:
    set $P101, $P5004
.annotate 'line', 904
    get_how $P5011, $P101
    $P5012 = $P5011."method_table"($P101)
    set $P102, $P5012
    find_lex $P5014, "$name"
    set $S5001, $P5014
    set $P5013, $P102[$S5001]
    unless_null $P5013, fallback291
    null $P5015
    set $P5013, $P5015
  fallback291:
    set $P103, $P5013
    defined $I5002, $P103
    unless $I5002 goto if75_end293 
.annotate 'line', 906
    can $I5003, $P103, "is_dispatcher"
    box $P5018, $I5003
    set $P5017, $P5018
    unless $I5003 goto if77_end297 
.annotate 'line', 909
    $P5016 = $P103."is_dispatcher"()
    set $P5017, $P5016
  if77_end297:
    unless $P5017 goto if76_else294 
    .const 'Sub' $P5019 = 'cuid_182_1357684851.462' 
    capture_lex $P5019
    $P5020 = $P5019()
    set $P5023, $P5020
    goto if76_end295
  if76_else294:
.annotate 'line', 915
    find_lex $P5021, "$name"
    set $S5004, $P5021
    concat $S5003, "Could not find a proto for multi ", $S5004
    concat $S5002, $S5003, " (it may exist, but an only is hiding it if so)"
    box $P5022, $S5002
    die $P5022
    set $P5023, $P5022
  if76_end295:
  if75_end293:
    find_lex $P5024, "$j"
    set $N5002, $P5024
    set $N5003, 1
    add $N5001, $N5002, $N5003
    box $P5025, $N5001
    store_lex "$j", $P5025
    .return ($P5025) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_182_1357684851.462") :anon :lex :outer("cuid_183_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 909
    .lex "$new_disp", $P101 
    null $P5001
    set $P101, $P5001
.annotate 'line', 910
    find_lex $P5002, "$dispatcher"
    $P5003 = $P5002."derive_dispatcher"()
    set $P101, $P5003
.annotate 'line', 911
    find_lex $P5004, "$code"
    $P101."add_dispatchee"($P5004)
    find_lex $P5006, "self"
    nqp_decontainerize $P5005, $P5006
    nqp_get_sc_object $P5007, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 7
    repr_get_attr_obj $P5008, $P5005, $P5007, "%!methods"
    find_lex $P5009, "$name"
    set $S5001, $P5009
    set $P5008[$S5001], $P101
    box $P5010, 1
    store_lex "$found", $P5010
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "publish_type_cache" :subid("cuid_80_1357684851.462") :anon :lex :outer("cuid_107_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1022
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5018 = 'cuid_186_1357684851.462' 
    capture_lex $P5018 
    .const 'Sub' $P5018 = 'cuid_187_1357684851.462' 
    capture_lex $P5018 
    .lex "@tc", $P101 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 7
    repr_get_attr_obj $P5007, $P5005, $P5006, "@!mro"
    set $P5002, $P5007
    iter $P5004, $P5007
  for_next300:
    unless $P5004, for_done302
    shift $P5009, $P5004
  for_redo301:
    .const 'Sub' $P5008 = 'cuid_186_1357684851.462' 
    capture_lex $P5008
    $P5002 = $P5008($P5009)
    goto for_next300
  for_done302:
    nqp_decontainerize $P5013, _lex_param_0
    nqp_get_sc_object $P5014, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 7
    repr_get_attr_obj $P5015, $P5013, $P5014, "@!done"
    set $P5010, $P5015
    iter $P5012, $P5015
  for_next303:
    unless $P5012, for_done305
    shift $P5017, $P5012
  for_redo304:
    .const 'Sub' $P5016 = 'cuid_187_1357684851.462' 
    capture_lex $P5016
    $P5010 = $P5016($P5017)
    goto for_next303
  for_done305:
    publish_type_check_cache _lex_param_1, $P101
    .return (_lex_param_1) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_186_1357684851.462") :anon :lex :outer("cuid_80_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1024
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5001, "@tc"
    $P5002 = $P5001."push"(_lex_param_0)
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_187_1357684851.462") :anon :lex :outer("cuid_80_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1025
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5001, "@tc"
    $P5002 = $P5001."push"(_lex_param_0)
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "publish_method_cache" :subid("cuid_81_1357684851.462") :anon :lex :outer("cuid_107_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1029
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5012 = 'cuid_189_1357684851.462' 
    capture_lex $P5012 
    .lex "%cache", $P101 
    .lex "@mro_reversed", $P102 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    new $P5001, 'Hash'
    set $P101, $P5001
    new $P5002, 'ResizablePMCArray'
    set $P102, $P5002
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 7
    repr_get_attr_obj $P5006, $P5004, $P5005, "@!mro"
    clone $P5003, $P5006
    set $P102, $P5003
.annotate 'line', 1034
    $P102."reverse"()
    set $P5007, $P102
    iter $P5009, $P102
  for_next309:
    unless $P5009, for_done311
    shift $P5011, $P5009
  for_redo310:
    .const 'Sub' $P5010 = 'cuid_189_1357684851.462' 
    capture_lex $P5010
    $P5007 = $P5010($P5011)
    goto for_next309
  for_done311:
    publish_method_cache _lex_param_1, $P101
    set_method_cache_authoritativeness _lex_param_1, 1
    .return (_lex_param_1) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_189_1357684851.462") :anon :lex :outer("cuid_81_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1035
    .param pmc _lex_param_0 
    .const 'Sub' $P5008 = 'cuid_188_1357684851.462' 
    capture_lex $P5008 
    .lex "$_", _lex_param_0 
.annotate 'line', 1036
    get_how $P5004, _lex_param_0
    $P5005 = $P5004."method_table"(_lex_param_0)
    set $P5001, $P5005
    iter $P5003, $P5005
  for_next306:
    unless $P5003, for_done308
    shift $P5007, $P5003
  for_redo307:
    .const 'Sub' $P5006 = 'cuid_188_1357684851.462' 
    capture_lex $P5006
    $P5001 = $P5006($P5007)
    goto for_next306
  for_done308:
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_188_1357684851.462") :anon :lex :outer("cuid_189_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1036
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5001, "%cache"
.annotate 'line', 1037
    $P5002 = _lex_param_0."key"()
    set $S5001, $P5002
    $P5003 = _lex_param_0."value"()
    set $P5001[$S5001], $P5003
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "publish_boolification_spec" :subid("cuid_82_1357684851.462") :anon :lex :outer("cuid_107_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1044
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$bool_meth", $P101 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    null $P5001
    set $P101, $P5001
.annotate 'line', 1045
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."find_method"(_lex_param_1, "Bool")
    set $P101, $P5003
    defined $I5001, $P101
    unless $I5001 goto if79_else312 
.annotate 'line', 1046
    set_boolification_spec _lex_param_1, 0, $P101
    set $P5005, _lex_param_1
    goto if79_end313
  if79_else312:
.annotate 'line', 1049
    null $P5004
    set_boolification_spec _lex_param_1, 5, $P5004
    set $P5005, _lex_param_1
  if79_end313:
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "publish_parrot_vtable_mapping" :subid("cuid_83_1357684851.462") :anon :lex :outer("cuid_107_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1054
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5013 = 'cuid_191_1357684851.462' 
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
    nqp_get_sc_object $P5007, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 7
    repr_get_attr_obj $P5008, $P5006, $P5007, "@!mro"
    set $P5003, $P5008
    iter $P5005, $P5008
  for_next324:
    unless $P5005, for_done326
    shift $P5010, $P5005
  for_redo325:
    .const 'Sub' $P5009 = 'cuid_191_1357684851.462' 
    capture_lex $P5009
    $P5003 = $P5009($P5010)
    goto for_next324
  for_done326:
    set $N5001, $P101
    box $P5012, $N5001
    set $P5011, $P5012
    unless $N5001 goto if82_end328 
.annotate 'line', 1068
    stable_publish_vtable_mapping _lex_param_1, $P101
    set $P5011, _lex_param_1
  if82_end328:
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_191_1357684851.462") :anon :lex :outer("cuid_83_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1057
    .param pmc _lex_param_0 
    .const 'Sub' $P5015 = 'cuid_190_1357684851.462' 
    capture_lex $P5015 
    .const 'Sub' $P5015 = 'cuid_192_1357684851.462' 
    capture_lex $P5015 
    .lex "$_", _lex_param_0 
.annotate 'line', 1058
    get_how $P5004, _lex_param_0
    $P5005 = $P5004."parrot_vtable_handler_mappings"(_lex_param_0, 1 :named("local"))
    set $P5001, $P5005
    iter $P5003, $P5005
  for_next314:
    unless $P5003, for_done316
    shift $P5007, $P5003
  for_redo315:
    .const 'Sub' $P5006 = 'cuid_190_1357684851.462' 
    capture_lex $P5006
    $P5001 = $P5006($P5007)
    goto for_next314
  for_done316:
.annotate 'line', 1061
    get_how $P5011, _lex_param_0
    $P5012 = $P5011."parrot_vtable_mappings"(_lex_param_0, 1 :named("local"))
    set $P5008, $P5012
    iter $P5010, $P5012
  for_next321:
    unless $P5010, for_done323
    shift $P5014, $P5010
  for_redo322:
    .const 'Sub' $P5013 = 'cuid_192_1357684851.462' 
    capture_lex $P5013
    $P5008 = $P5013($P5014)
    goto for_next321
  for_done323:
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_190_1357684851.462") :anon :lex :outer("cuid_191_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1058
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5001, "%seen_handlers"
.annotate 'line', 1059
    $P5002 = _lex_param_0."key"()
    set $S5001, $P5002
    box $P5003, 1
    set $P5001[$S5001], $P5003
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_192_1357684851.462") :anon :lex :outer("cuid_191_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1061
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5001, "%mapping"
.annotate 'line', 1062
    $P5002 = _lex_param_0."key"()
    set $S5001, $P5002
    exists $I5001, $P5001[$S5001]
    set $I5003, $I5001
    if $I5001 goto unless81_end320 
    find_lex $P5003, "%seen_handlers"
.annotate 'line', 1063
    $P5004 = _lex_param_0."key"()
    set $S5002, $P5004
    exists $I5002, $P5003[$S5002]
    set $I5003, $I5002
  unless81_end320:
    box $P5009, $I5003
    set $P5008, $P5009
    if $I5003 goto unless80_end318 
    find_lex $P5005, "%mapping"
.annotate 'line', 1064
    $P5006 = _lex_param_0."key"()
    set $S5003, $P5006
    $P5007 = _lex_param_0."value"()
    set $P5005[$S5003], $P5007
    set $P5008, $P5007
  unless80_end318:
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "publish_parrot_vtablee_handler_mapping" :subid("cuid_84_1357684851.462") :anon :lex :outer("cuid_107_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1073
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5014 = 'cuid_194_1357684851.462' 
    capture_lex $P5014 
    .lex "%mapping", $P101 
    .lex "@mro_reversed", $P102 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    new $P5001, 'Hash'
    set $P101, $P5001
    new $P5002, 'ResizablePMCArray'
    set $P102, $P5002
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 7
    repr_get_attr_obj $P5006, $P5004, $P5005, "@!mro"
    clone $P5003, $P5006
    set $P102, $P5003
.annotate 'line', 1076
    $P102."reverse"()
    set $P5007, $P102
    iter $P5009, $P102
  for_next332:
    unless $P5009, for_done334
    shift $P5011, $P5009
  for_redo333:
    .const 'Sub' $P5010 = 'cuid_194_1357684851.462' 
    capture_lex $P5010
    $P5007 = $P5010($P5011)
    goto for_next332
  for_done334:
    set $N5001, $P101
    box $P5013, $N5001
    set $P5012, $P5013
    unless $N5001 goto if83_end336 
.annotate 'line', 1082
    stable_publish_vtable_handler_mapping _lex_param_1, $P101
    set $P5012, _lex_param_1
  if83_end336:
    .return ($P5012) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_194_1357684851.462") :anon :lex :outer("cuid_84_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1077
    .param pmc _lex_param_0 
    .const 'Sub' $P5008 = 'cuid_193_1357684851.462' 
    capture_lex $P5008 
    .lex "$_", _lex_param_0 
.annotate 'line', 1078
    get_how $P5004, _lex_param_0
    $P5005 = $P5004."parrot_vtable_handler_mappings"(_lex_param_0, 1 :named("local"))
    set $P5001, $P5005
    iter $P5003, $P5005
  for_next329:
    unless $P5003, for_done331
    shift $P5007, $P5003
  for_redo330:
    .const 'Sub' $P5006 = 'cuid_193_1357684851.462' 
    capture_lex $P5006
    $P5001 = $P5006($P5007)
    goto for_next329
  for_done331:
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_193_1357684851.462") :anon :lex :outer("cuid_194_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1078
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5001, "%mapping"
.annotate 'line', 1079
    $P5002 = _lex_param_0."key"()
    set $S5001, $P5002
    $P5003 = _lex_param_0."value"()
    set $P5001[$S5001], $P5003
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "create_BUILDPLAN" :subid("cuid_85_1357684851.462") :anon :lex :outer("cuid_107_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1097
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5034 = 'cuid_195_1357684851.462' 
    capture_lex $P5034 
    .const 'Sub' $P5034 = 'cuid_197_1357684851.462' 
    capture_lex $P5034 
    .const 'Sub' $P5034 = 'cuid_199_1357684851.462' 
    capture_lex $P5034 
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
.annotate 'line', 1100
    get_how $P5007, _lex_param_1
    $P5008 = $P5007."attributes"(_lex_param_1, 1 :named("local"))
    set $P102, $P5008
.annotate 'line', 1103
    get_how $P5009, _lex_param_1
    $P5010 = $P5009."find_method"(_lex_param_1, "BUILD", 1 :named("no_fallback"))
    set $P103, $P5010
    defined $I5001, $P103
    unless $I5001 goto if84_else337 
.annotate 'line', 1104
    set $N5001, $P101
    set $I5002, $N5001
    new $P5011, 'ResizablePMCArray'
    box $P5012, 0
    push $P5011, $P5012
    push $P5011, $P103
    set $P101[$I5002], $P5011
    goto if84_end338
  if84_else337:
.annotate 'line', 1108
    set $P5013, $P102
    iter $P5015, $P102
  for_next343:
    unless $P5015, for_done345
    shift $P5017, $P5015
  for_redo344:
    .const 'Sub' $P5016 = 'cuid_195_1357684851.462' 
    capture_lex $P5016
    $P5013 = $P5016($P5017)
    goto for_next343
  for_done345:
  if84_end338:
    set $P5018, $P102
    iter $P5020, $P102
  for_next350:
    unless $P5020, for_done352
    shift $P5022, $P5020
  for_redo351:
    .const 'Sub' $P5021 = 'cuid_197_1357684851.462' 
    capture_lex $P5021
    $P5018 = $P5021($P5022)
    goto for_next350
  for_done352:
    nqp_decontainerize $P5023, _lex_param_0
    nqp_get_sc_object $P5024, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 7
    repr_bind_attr_obj $P5023, $P5024, "@!BUILDPLAN", $P101
.annotate 'line', 1137
    nqp_decontainerize $P5025, _lex_param_0
    $P5026 = $P5025."mro"(_lex_param_1)
    set $P105, $P5026
    set $N5002, $P105
    box $P5027, $N5002
    set $P106, $P5027
  while89_test353:
    set $N5003, $P106
    set $N5004, 0
    isgt $I5003, $N5003, $N5004
    box $P5031, $I5003
    set $P5030, $P5031
    unless $I5003 goto while89_done357 
  while89_redo355:
    .const 'Sub' $P5028 = 'cuid_199_1357684851.462' 
    capture_lex $P5028
    $P5029 = $P5028()
    set $P5030, $P5029
    goto while89_test353 
  while89_done357:
    nqp_decontainerize $P5032, _lex_param_0
    nqp_get_sc_object $P5033, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 7
    repr_bind_attr_obj $P5032, $P5033, "@!BUILDALLPLAN", $P104
    .return ($P104) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_195_1357684851.462") :anon :lex :outer("cuid_85_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1112
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
.annotate 'line', 1113
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
    unless $I5001 goto if85_else339 
    set $I5004, 2
    goto if85_end340
  if85_else339:
    set $S5006, $P103
    iseq $I5002, $S5006, "%"
    unless $I5002 goto if86_else341 
    set $I5003, 3
    goto if86_end342
  if86_else341:
    set $I5003, 1
  if86_end342:
    set $I5004, $I5003
  if85_end340:
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
.sub "" :subid("cuid_197_1357684851.462") :anon :lex :outer("cuid_85_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1122
    .param pmc _lex_param_0 
    .const 'Sub' $P5005 = 'cuid_196_1357684851.462' 
    capture_lex $P5005 
    .lex "$_", _lex_param_0 
    can $I5001, _lex_param_0, "build"
    box $P5004, $I5001
    set $P5003, $P5004
    unless $I5001 goto if87_end347 
    .const 'Sub' $P5001 = 'cuid_196_1357684851.462' 
    capture_lex $P5001
    $P5002 = $P5001()
    set $P5003, $P5002
  if87_end347:
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_196_1357684851.462") :anon :lex :outer("cuid_197_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1123
    .lex "$default", $P101 
    null $P5001
    set $P101, $P5001
.annotate 'line', 1124
    find_lex $P5002, "$_"
    $P5003 = $P5002."build"()
    set $P101, $P5003
    defined $I5001, $P101
    box $P5012, $I5001
    set $P5011, $P5012
    unless $I5001 goto if88_end349 
.annotate 'line', 1125
    find_lex $P5004, "@plan"
    find_lex $P5005, "@plan"
    set $N5001, $P5005
    set $I5002, $N5001
    new $P5006, 'ResizablePMCArray'
    box $P5007, 4
    push $P5006, $P5007
    find_lex $P5008, "$obj"
    push $P5006, $P5008
.annotate 'line', 1126
    find_lex $P5009, "$_"
    $P5010 = $P5009."name"()
    push $P5006, $P5010
    push $P5006, $P101
    set $P5004[$I5002], $P5006
    set $P5011, $P5006
  if88_end349:
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_199_1357684851.462") :anon :lex :outer("cuid_85_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1139
    .const 'Sub' $P5015 = 'cuid_198_1357684851.462' 
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
    unless_null $P5004, fallback358
    null $P5007
    set $P5004, $P5007
  fallback358:
    set $P101, $P5004
.annotate 'line', 1142
    get_how $P5011, $P101
    $P5012 = $P5011."BUILDPLAN"($P101)
    set $P5008, $P5012
    iter $P5010, $P5012
  for_next359:
    unless $P5010, for_done361
    shift $P5014, $P5010
  for_redo360:
    .const 'Sub' $P5013 = 'cuid_198_1357684851.462' 
    capture_lex $P5013
    $P5008 = $P5013($P5014)
    goto for_next359
  for_done361:
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_198_1357684851.462") :anon :lex :outer("cuid_199_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1142
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5001, "@all_plan"
    push $P5001, _lex_param_0
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "BUILDPLAN" :subid("cuid_86_1357684851.462") :anon :lex :outer("cuid_107_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1149
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 7
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!BUILDPLAN"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "BUILDALLPLAN" :subid("cuid_87_1357684851.462") :anon :lex :outer("cuid_107_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1153
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 7
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!BUILDALLPLAN"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "parents" :subid("cuid_88_1357684851.462") :anon :lex :outer("cuid_107_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1161
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :named("local") :optional 
    .param int haz_param_19 :opt_flag 
    if haz_param_19, default364
    box $P5008, 0
    set _lex_param_2, $P5008
  default364:
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$local", _lex_param_2 
    unless _lex_param_2 goto if90_else362 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 7
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!parents"
    set $P5007, $P5003
    goto if90_end363
  if90_else362:
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 7
    repr_get_attr_obj $P5006, $P5004, $P5005, "@!mro"
    set $P5007, $P5006
  if90_end363:
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "mro" :subid("cuid_89_1357684851.462") :anon :lex :outer("cuid_107_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1165
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 7
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!mro"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "roles" :subid("cuid_90_1357684851.462") :anon :lex :outer("cuid_107_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1169
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :named("local") 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$local", _lex_param_2 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 7
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!roles"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "methods" :subid("cuid_91_1357684851.462") :anon :lex :outer("cuid_107_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1173
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :named("local") :optional 
    .param int haz_param_20 :opt_flag 
    .const 'Sub' $P5008 = 'cuid_202_1357684851.462' 
    capture_lex $P5008 
    if haz_param_20, default373
    box $P5007, 0
    set _lex_param_2, $P5007
  default373:
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$local", _lex_param_2 
    unless _lex_param_2 goto if91_else365 
.annotate 'line', 1174
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 7
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!method_order"
    set $P5006, $P5003
    goto if91_end366
  if91_else365:
    .const 'Sub' $P5004 = 'cuid_202_1357684851.462' 
    capture_lex $P5004
    $P5005 = $P5004()
    set $P5006, $P5005
  if91_end366:
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_202_1357684851.462") :anon :lex :outer("cuid_91_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1177
    .const 'Sub' $P5011 = 'cuid_201_1357684851.462' 
    capture_lex $P5011 
    .lex "@meths", $P101 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    find_lex $P5006, "self"
    nqp_decontainerize $P5005, $P5006
    nqp_get_sc_object $P5007, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 7
    repr_get_attr_obj $P5008, $P5005, $P5007, "@!mro"
    set $P5002, $P5008
    iter $P5004, $P5008
  for_next370:
    unless $P5004, for_done372
    shift $P5010, $P5004
  for_redo371:
    .const 'Sub' $P5009 = 'cuid_201_1357684851.462' 
    capture_lex $P5009
    $P5002 = $P5009($P5010)
    goto for_next370
  for_done372:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_201_1357684851.462") :anon :lex :outer("cuid_202_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1179
    .param pmc _lex_param_0 
    .const 'Sub' $P5008 = 'cuid_200_1357684851.462' 
    capture_lex $P5008 
    .lex "$_", _lex_param_0 
.annotate 'line', 1180
    get_how $P5004, _lex_param_0
    $P5005 = $P5004."methods"(_lex_param_0, 1 :named("local"))
    set $P5001, $P5005
    iter $P5003, $P5005
  for_next367:
    unless $P5003, for_done369
    shift $P5007, $P5003
  for_redo368:
    .const 'Sub' $P5006 = 'cuid_200_1357684851.462' 
    capture_lex $P5006
    $P5001 = $P5006($P5007)
    goto for_next367
  for_done369:
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_200_1357684851.462") :anon :lex :outer("cuid_201_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1180
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 1181
    find_lex $P5001, "@meths"
    $P5002 = $P5001."push"(_lex_param_0)
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "method_table" :subid("cuid_92_1357684851.462") :anon :lex :outer("cuid_107_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1188
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 7
    repr_get_attr_obj $P5003, $P5001, $P5002, "%!methods"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "name" :subid("cuid_93_1357684851.462") :anon :lex :outer("cuid_107_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1192
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 7
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!name"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "traced" :subid("cuid_94_1357684851.462") :anon :lex :outer("cuid_107_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1196
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 7
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!trace"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "trace_depth" :subid("cuid_95_1357684851.462") :anon :lex :outer("cuid_107_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1200
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 7
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!trace_depth"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "attributes" :subid("cuid_96_1357684851.462") :anon :lex :outer("cuid_107_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1204
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :named("local") :optional 
    .param int haz_param_21 :opt_flag 
    .const 'Sub' $P5019 = 'cuid_203_1357684851.462' 
    capture_lex $P5019 
    .const 'Sub' $P5019 = 'cuid_205_1357684851.462' 
    capture_lex $P5019 
    if haz_param_21, default385
    box $P5018, 0
    set _lex_param_2, $P5018
  default385:
    .lex "@attrs", $P101 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$local", _lex_param_2 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    unless _lex_param_2 goto if92_else374 
.annotate 'line', 1206
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 7
    repr_get_attr_obj $P5007, $P5005, $P5006, "%!attributes"
    set $P5002, $P5007
    iter $P5004, $P5007
  for_next376:
    unless $P5004, for_done378
    shift $P5009, $P5004
  for_redo377:
    .const 'Sub' $P5008 = 'cuid_203_1357684851.462' 
    capture_lex $P5008
    $P5002 = $P5008($P5009)
    goto for_next376
  for_done378:
    goto if92_end375
  if92_else374:
.annotate 'line', 1211
    nqp_decontainerize $P5013, _lex_param_0
    nqp_get_sc_object $P5014, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 7
    repr_get_attr_obj $P5015, $P5013, $P5014, "@!mro"
    set $P5010, $P5015
    iter $P5012, $P5015
  for_next382:
    unless $P5012, for_done384
    shift $P5017, $P5012
  for_redo383:
    .const 'Sub' $P5016 = 'cuid_205_1357684851.462' 
    capture_lex $P5016
    $P5010 = $P5016($P5017)
    goto for_next382
  for_done384:
  if92_end375:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_203_1357684851.462") :anon :lex :outer("cuid_96_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1207
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 1208
    find_lex $P5001, "@attrs"
    $P5002 = _lex_param_0."value"()
    $P5003 = $P5001."push"($P5002)
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_205_1357684851.462") :anon :lex :outer("cuid_96_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1212
    .param pmc _lex_param_0 
    .const 'Sub' $P5008 = 'cuid_204_1357684851.462' 
    capture_lex $P5008 
    .lex "$_", _lex_param_0 
.annotate 'line', 1213
    get_how $P5004, _lex_param_0
    $P5005 = $P5004."attributes"(_lex_param_0, 1 :named("local"))
    set $P5001, $P5005
    iter $P5003, $P5005
  for_next379:
    unless $P5003, for_done381
    shift $P5007, $P5003
  for_redo380:
    .const 'Sub' $P5006 = 'cuid_204_1357684851.462' 
    capture_lex $P5006
    $P5001 = $P5006($P5007)
    goto for_next379
  for_done381:
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_204_1357684851.462") :anon :lex :outer("cuid_205_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1213
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 1214
    find_lex $P5001, "@attrs"
    $P5002 = $P5001."push"(_lex_param_0)
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "parrot_vtable_mappings" :subid("cuid_97_1357684851.462") :anon :lex :outer("cuid_107_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1221
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :named("local") 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$local", _lex_param_2 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 7
    repr_get_attr_obj $P5003, $P5001, $P5002, "%!parrot_vtable_mapping"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "parrot_vtable_handler_mappings" :subid("cuid_98_1357684851.462") :anon :lex :outer("cuid_107_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1225
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :named("local") 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$local", _lex_param_2 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 7
    repr_get_attr_obj $P5003, $P5001, $P5002, "%!parrot_vtable_handler_mapping"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "isa" :subid("cuid_99_1357684851.462") :anon :lex :outer("cuid_107_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1233
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
    set_label $P103, lexotic_386
    .lex "RETURN", $P103
    get_what $P5003, _lex_param_2
    set $P101, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 7
    repr_get_attr_obj $P5006, $P5004, $P5005, "@!mro"
    set $N5001, $P5006
    box $P5007, $N5001
    set $P102, $P5007
  while93_test388:
    set $N5002, $P102
    set $N5003, 0
    isgt $I5001, $N5002, $N5003
    box $P5019, $I5001
    set $P5018, $P5019
    unless $I5001 goto while93_done392 
  while93_redo390:
.annotate 'line', 1236
    set $N5005, $P102
    set $N5006, 1
    sub $N5004, $N5005, $N5006
    box $P5008, $N5004
    set $P102, $P5008
    nqp_decontainerize $P5010, _lex_param_0
    nqp_get_sc_object $P5011, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 7
    repr_get_attr_obj $P5012, $P5010, $P5011, "@!mro"
    set $I5004, $P102
    set $P5009, $P5012[$I5004]
    unless_null $P5009, fallback395
    null $P5013
    set $P5009, $P5013
  fallback395:
    get_id $I5003, $P5009
    get_id $I5005, $P101
    iseq $I5002, $I5003, $I5005
    box $P5017, $I5002
    set $P5016, $P5017
    unless $I5002 goto if94_end394 
.annotate 'line', 1238
    find_lex $P5014, "RETURN"
    $P5015 = $P5014(1)
    set $P5016, $P5015
  if94_end394:
    set $P5018, $P5016
    goto while93_test388 
  while93_done392:
    find_lex $P5020, "RETURN"
    $P5021 = $P5020(0)
    goto lexotic_387
  lexotic_386:
    .get_results ($P5021)
  lexotic_387:
    .return ($P5021) 
.end
.HLL "nqp"
.namespace []
.sub "does" :subid("cuid_100_1357684851.462") :anon :lex :outer("cuid_107_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1245
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
    set_label $P102, lexotic_396
    .lex "RETURN", $P102
    nqp_decontainerize $P5002, _lex_param_0
    nqp_get_sc_object $P5003, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 7
    repr_get_attr_obj $P5004, $P5002, $P5003, "@!done"
    set $N5001, $P5004
    box $P5005, $N5001
    set $P101, $P5005
  while95_test398:
    set $N5002, $P101
    set $N5003, 0
    isgt $I5001, $N5002, $N5003
    box $P5017, $I5001
    set $P5016, $P5017
    unless $I5001 goto while95_done402 
  while95_redo400:
.annotate 'line', 1247
    set $N5005, $P101
    set $N5006, 1
    sub $N5004, $N5005, $N5006
    box $P5006, $N5004
    set $P101, $P5006
    nqp_decontainerize $P5008, _lex_param_0
    nqp_get_sc_object $P5009, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 7
    repr_get_attr_obj $P5010, $P5008, $P5009, "@!done"
    set $I5004, $P101
    set $P5007, $P5010[$I5004]
    unless_null $P5007, fallback405
    null $P5011
    set $P5007, $P5011
  fallback405:
    get_id $I5003, $P5007
    get_id $I5005, _lex_param_2
    iseq $I5002, $I5003, $I5005
    box $P5015, $I5002
    set $P5014, $P5015
    unless $I5002 goto if96_end404 
.annotate 'line', 1249
    find_lex $P5012, "RETURN"
    $P5013 = $P5012(1)
    set $P5014, $P5013
  if96_end404:
    set $P5016, $P5014
    goto while95_test398 
  while95_done402:
    find_lex $P5018, "RETURN"
    $P5019 = $P5018(0)
    goto lexotic_397
  lexotic_396:
    .get_results ($P5019)
  lexotic_397:
    .return ($P5019) 
.end
.HLL "nqp"
.namespace []
.sub "can" :subid("cuid_101_1357684851.462") :anon :lex :outer("cuid_107_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1256
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .const 'Sub' $P5011 = 'cuid_206_1357684851.462' 
    capture_lex $P5011 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$name", _lex_param_2 
    root_new $P101, ['parrot';'Continuation']
    set_label $P101, lexotic_406
    .lex "RETURN", $P101
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 7
    repr_get_attr_obj $P5006, $P5004, $P5005, "@!mro"
    set $P5001, $P5006
    iter $P5003, $P5006
  for_next411:
    unless $P5003, for_done413
    shift $P5008, $P5003
  for_redo412:
    .const 'Sub' $P5007 = 'cuid_206_1357684851.462' 
    capture_lex $P5007
    $P5001 = $P5007($P5008)
    goto for_next411
  for_done413:
    find_lex $P5009, "RETURN"
    $P5010 = $P5009(0)
    goto lexotic_407
  lexotic_406:
    .get_results ($P5010)
  lexotic_407:
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_206_1357684851.462") :anon :lex :outer("cuid_101_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1257
    .param pmc _lex_param_0 
    .lex "%meths", $P101 
    .lex "$can", $P102 
    .lex "$_", _lex_param_0 
    new $P5001, 'Hash'
    set $P101, $P5001
    null $P5002
    set $P102, $P5002
.annotate 'line', 1258
    get_how $P5003, _lex_param_0
    find_lex $P5004, "$obj"
    $P5005 = $P5003."method_table"($P5004)
    set $P101, $P5005
    find_lex $P5007, "$name"
    set $S5001, $P5007
    set $P5006, $P101[$S5001]
    unless_null $P5006, fallback408
    null $P5008
    set $P5006, $P5008
  fallback408:
    set $P102, $P5006
    defined $I5001, $P102
    box $P5012, $I5001
    set $P5011, $P5012
    unless $I5001 goto if97_end410 
.annotate 'line', 1260
    find_lex $P5009, "RETURN"
    $P5010 = $P5009($P102)
    set $P5011, $P5010
  if97_end410:
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "find_method" :subid("cuid_102_1357684851.462") :anon :lex :outer("cuid_107_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1270
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 :named("no_fallback") :optional 
    .param int haz_param_22 :opt_flag 
    .param pmc _lex_param_4 :named("no_trace") :optional 
    .param int haz_param_23 :opt_flag 
    .const 'Sub' $P5012 = 'cuid_209_1357684851.462' 
    capture_lex $P5012 
    if haz_param_22, default428
    box $P5010, 0
    set _lex_param_3, $P5010
  default428:
    if haz_param_23, default429
    box $P5011, 0
    set _lex_param_4, $P5011
  default429:
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$name", _lex_param_2 
    .lex "$no_fallback", _lex_param_3 
    .lex "$no_trace", _lex_param_4 
    root_new $P101, ['parrot';'Continuation']
    set_label $P101, lexotic_414
    .lex "RETURN", $P101
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 7
    repr_get_attr_obj $P5006, $P5004, $P5005, "@!mro"
    set $P5001, $P5006
    iter $P5003, $P5006
  for_next425:
    unless $P5003, for_done427
    shift $P5008, $P5003
  for_redo426:
    .const 'Sub' $P5007 = 'cuid_209_1357684851.462' 
    capture_lex $P5007
    $P5001 = $P5007($P5008)
    goto for_next425
  for_done427:
    null $P5009
    goto lexotic_415
  lexotic_414:
    .get_results ($P5009)
  lexotic_415:
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_209_1357684851.462") :anon :lex :outer("cuid_102_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1271
    .param pmc _lex_param_0 
    .const 'Sub' $P5010 = 'cuid_208_1357684851.462' 
    capture_lex $P5010 
    .lex "%meths", $P101 
    .lex "$_", _lex_param_0 
    new $P5001, 'Hash'
    set $P101, $P5001
.annotate 'line', 1272
    get_how $P5002, _lex_param_0
    find_lex $P5003, "$obj"
    $P5004 = $P5002."method_table"($P5003)
    set $P101, $P5004
    find_lex $P5005, "$name"
    set $S5001, $P5005
    exists $I5001, $P101[$S5001]
    box $P5009, $I5001
    set $P5008, $P5009
    unless $I5001 goto if98_end417 
    .const 'Sub' $P5006 = 'cuid_208_1357684851.462' 
    capture_lex $P5006
    $P5007 = $P5006()
    set $P5008, $P5007
  if98_end417:
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_208_1357684851.462") :anon :lex :outer("cuid_209_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1273
    .const 'Sub' $P5021 = 'cuid_207_1357684851.462' 
    capture_lex $P5021 
    .lex "$found", $P101 
    null $P5001
    set $P101, $P5001
    find_lex $P5003, "%meths"
    find_lex $P5004, "$name"
    set $S5001, $P5004
    set $P5002, $P5003[$S5001]
    unless_null $P5002, fallback418
    null $P5005
    set $P5002, $P5005
  fallback418:
    set $P101, $P5002
    find_lex $P5008, "self"
    nqp_decontainerize $P5007, $P5008
    nqp_get_sc_object $P5009, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 7
    repr_get_attr_obj $P5010, $P5007, $P5009, "$!trace"
    set $P5012, $P5010
    unless $P5010 goto if101_end424 
    find_lex $P5011, "$no_trace"
    isfalse $I5001, $P5011
    box $P5013, $I5001
    set $P5012, $P5013
  if101_end424:
    set $P5015, $P5012
    unless $P5012 goto if100_end422 
    find_lex $P5014, "$name"
    set $S5003, $P5014
    substr $S5002, $S5003, 0, 1
    isne $I5002, $S5002, "!"
    box $P5016, $I5002
    set $P5015, $P5016
  if100_end422:
    unless $P5015 goto if99_else419 
    .const 'Sub' $P5018 = 'cuid_207_1357684851.462' 
    capture_lex $P5018
    newclosure $P5017, $P5018
    set $P5019, $P5017
    goto if99_end420
  if99_else419:
    set $P5019, $P101
  if99_end420:
    find_lex $P5006, "RETURN"
    $P5020 = $P5006($P5019)
    .return ($P5020) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_207_1357684851.462") :anon :lex :outer("cuid_208_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1276
    .param pmc _lex_param_0 :slurpy 
    .param pmc _lex_param_1 :slurpy :named 
    .lex "$result", $P101 
    .lex "@pos", _lex_param_0 
    .lex "%named", _lex_param_1 
    null $P5001
    set $P101, $P5001
    find_lex $P5003, "self"
    nqp_decontainerize $P5002, $P5003
    nqp_get_sc_object $P5004, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 7
    repr_get_attr_obj $P5005, $P5002, $P5004, "$!trace_depth"
    set $I5001, $P5005
    repeat $S5002, "  ", $I5001
    find_lex $P5006, "$name"
    set $S5004, $P5006
    concat $S5003, "Calling ", $S5004
    concat $S5001, $S5002, $S5003
    say $S5001
    find_lex $P5008, "self"
    nqp_decontainerize $P5007, $P5008
    nqp_get_sc_object $P5009, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 7
    find_lex $P5011, "self"
    nqp_decontainerize $P5010, $P5011
    nqp_get_sc_object $P5012, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 7
    repr_get_attr_obj $P5013, $P5010, $P5012, "$!trace_depth"
    set $N5002, $P5013
    set $N5003, 1
    add $N5001, $N5002, $N5003
    box $P5014, $N5001
    repr_bind_attr_obj $P5007, $P5009, "$!trace_depth", $P5014
.annotate 'line', 1279
    find_lex $P5015, "$found"
    $P5016 = $P5015(_lex_param_0 :flat, _lex_param_1 :flat :named)
    set $P101, $P5016
    find_lex $P5018, "self"
    nqp_decontainerize $P5017, $P5018
    nqp_get_sc_object $P5019, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 7
    find_lex $P5021, "self"
    nqp_decontainerize $P5020, $P5021
    nqp_get_sc_object $P5022, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 7
    repr_get_attr_obj $P5023, $P5020, $P5022, "$!trace_depth"
    set $N5005, $P5023
    set $N5006, 1
    sub $N5004, $N5005, $N5006
    box $P5024, $N5004
    repr_bind_attr_obj $P5017, $P5019, "$!trace_depth", $P5024
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "cache" :subid("cuid_103_1357684851.462") :anon :lex :outer("cuid_107_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1292
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$key", _lex_param_2 
    .lex "$value_generator", _lex_param_3 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 7
    repr_get_attr_obj $P5003, $P5001, $P5002, "%!caches"
    nqp_ishash $I5001, $P5003
    if $I5001 goto unless102_end431 
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 7
    new $P5006, 'Hash'
    repr_bind_attr_obj $P5004, $P5005, "%!caches", $P5006
  unless102_end431:
    nqp_decontainerize $P5007, _lex_param_0
    nqp_get_sc_object $P5008, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 7
    repr_get_attr_obj $P5009, $P5007, $P5008, "%!caches"
    set $S5001, _lex_param_2
    exists $I5002, $P5009[$S5001]
    unless $I5002 goto if103_else432 
    nqp_decontainerize $P5011, _lex_param_0
    nqp_get_sc_object $P5012, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 7
    repr_get_attr_obj $P5013, $P5011, $P5012, "%!caches"
    set $S5002, _lex_param_2
    set $P5010, $P5013[$S5002]
    unless_null $P5010, fallback434
    null $P5014
    set $P5010, $P5014
  fallback434:
    set $P5019, $P5010
    goto if103_end433
  if103_else432:
    nqp_decontainerize $P5015, _lex_param_0
    nqp_get_sc_object $P5016, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 7
    repr_get_attr_obj $P5017, $P5015, $P5016, "%!caches"
    set $S5003, _lex_param_2
.annotate 'line', 1296
    $P5018 = _lex_param_3()
    set $P5017[$S5003], $P5018
    set $P5019, $P5018
  if103_end433:
    .return ($P5019) 
.end
.HLL "nqp"
.namespace []
.sub "mixin" :subid("cuid_104_1357684851.462") :anon :lex :outer("cuid_107_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1304
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .const 'Sub' $P5020 = 'cuid_210_1357684851.462' 
    capture_lex $P5020 
    .const 'Sub' $P5020 = 'cuid_211_1357684851.462' 
    capture_lex $P5020 
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
    nqp_get_sc_object $P5005, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 7
    repr_get_attr_obj $P5006, $P5004, $P5005, "@!mixin_cache"
    isnull $I5001, $P5006
    if $I5001 goto unless104_end436 
.annotate 'line', 1308
    nqp_decontainerize $P5010, _lex_param_0
    nqp_get_sc_object $P5011, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 7
    repr_get_attr_obj $P5012, $P5010, $P5011, "@!mixin_cache"
    set $P5007, $P5012
    iter $P5009, $P5012
    new $P5014, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5014, for_handlers439
    push_eh $P5014
  for_next440:
    unless $P5009, for_done442
    shift $P5015, $P5009
    shift $P5016, $P5009
  for_redo441:
    .const 'Sub' $P5013 = 'cuid_210_1357684851.462' 
    capture_lex $P5013
    $P5007 = $P5013($P5015, $P5016)
    goto for_next440
  for_handlers439:
    .get_results ($P5014)
    pop_upto_eh $P5014
    getattribute $P5014, $P5014, 'type'
    eq $P5014, .CONTROL_LOOP_NEXT, for_next440
    eq $P5014, .CONTROL_LOOP_REDO, for_redo441
  for_done442:
    pop_eh 
  unless104_end436:
    if $P101 goto unless106_end444 
    .const 'Sub' $P5017 = 'cuid_211_1357684851.462' 
    capture_lex $P5017
    $P5018 = $P5017()
  unless106_end444:
    repr_defined $I5002, _lex_param_1
    unless $I5002 goto if108_else447 
    repr_change_type _lex_param_1, $P102
    set $P5019, _lex_param_1
    goto if108_end448
  if108_else447:
    set $P5019, $P102
  if108_end448:
    .return ($P5019) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_210_1357684851.462") :anon :lex :outer("cuid_104_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1309
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$c_role", _lex_param_0 
    .lex "$c_type", _lex_param_1 
    get_id $I5002, _lex_param_0
    find_lex $P5001, "$role"
    get_id $I5003, $P5001
    iseq $I5001, $I5002, $I5003
    set $I5004, $I5001
    unless $I5001 goto if105_end438 
.annotate 'line', 1310
    store_lex "$new_type", _lex_param_1
    box $P5002, 1
    store_lex "$found", $P5002
    die 0, .CONTROL_LOOP_LAST
    set $I5004, 0
  if105_end438:
    .return ($I5004) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_211_1357684851.462") :anon :lex :outer("cuid_104_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1319
    .lex "$new_name", $P101 
    null $P5001
    set $P101, $P5001
.annotate 'line', 1321
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
.annotate 'line', 1325
    find_lex $P5012, "self"
    nqp_decontainerize $P5011, $P5012
    find_lex $P5013, "$obj"
    repr_name $S5006, $P5013
    $P5014 = $P5011."new_type"($P101 :named("name"), $S5006 :named("repr"))
    store_lex "$new_type", $P5014
.annotate 'line', 1326
    find_lex $P5016, "$new_type"
    get_how $P5015, $P5016
    find_lex $P5017, "$new_type"
    find_lex $P5019, "$obj"
    get_what $P5018, $P5019
    $P5015."add_parent"($P5017, $P5018)
.annotate 'line', 1327
    find_lex $P5021, "$new_type"
    get_how $P5020, $P5021
    find_lex $P5022, "$new_type"
    find_lex $P5023, "$role"
    $P5020."add_role"($P5022, $P5023)
.annotate 'line', 1328
    find_lex $P5025, "$new_type"
    get_how $P5024, $P5025
    find_lex $P5026, "$new_type"
    $P5024."compose"($P5026)
    nqp_disable_sc_write_barrier 
    find_lex $P5028, "self"
    nqp_decontainerize $P5027, $P5028
    nqp_get_sc_object $P5029, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 7
    repr_get_attr_obj $P5030, $P5027, $P5029, "@!mixin_cache"
    isnull $I5001, $P5030
    unless $I5001 goto if107_end446 
    find_lex $P5032, "self"
    nqp_decontainerize $P5031, $P5032
    nqp_get_sc_object $P5033, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 7
    new $P5034, 'ResizablePMCArray'
    repr_bind_attr_obj $P5031, $P5033, "@!mixin_cache", $P5034
  if107_end446:
    find_lex $P5036, "self"
    nqp_decontainerize $P5035, $P5036
    nqp_get_sc_object $P5037, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 7
    repr_get_attr_obj $P5038, $P5035, $P5037, "@!mixin_cache"
    find_lex $P5040, "self"
    nqp_decontainerize $P5039, $P5040
    nqp_get_sc_object $P5041, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 7
    repr_get_attr_obj $P5042, $P5039, $P5041, "@!mixin_cache"
    set $N5001, $P5042
    set $I5002, $N5001
    find_lex $P5043, "$role"
    set $P5038[$I5002], $P5043
    find_lex $P5045, "self"
    nqp_decontainerize $P5044, $P5045
    nqp_get_sc_object $P5046, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 7
    repr_get_attr_obj $P5047, $P5044, $P5046, "@!mixin_cache"
    find_lex $P5049, "self"
    nqp_decontainerize $P5048, $P5049
    nqp_get_sc_object $P5050, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 7
    repr_get_attr_obj $P5051, $P5048, $P5050, "@!mixin_cache"
    set $N5002, $P5051
    set $I5003, $N5002
    find_lex $P5052, "$new_type"
    set $P5047[$I5003], $P5052
    nqp_enable_sc_write_barrier 
    .return (1) 
.end
.HLL "nqp"
.namespace []
.sub "trace-on" :subid("cuid_105_1357684851.462") :anon :lex :outer("cuid_107_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1349
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :optional 
    .param int haz_param_24 :opt_flag 
    if haz_param_24, default450
    null $P5009
    set _lex_param_2, $P5009
  default450:
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$depth", _lex_param_2 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 7
    box $P5003, 1
    repr_bind_attr_obj $P5001, $P5002, "$!trace", $P5003
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 7
    set $P5006, _lex_param_2
    defined $I5001, $P5006
    if $I5001, defor449
    box $P5007, 0
    set $P5006, $P5007
  defor449:
    repr_bind_attr_obj $P5004, $P5005, "$!trace_depth", $P5006
    set_method_cache_authoritativeness _lex_param_1, 0
    new $P5008, 'Hash'
    publish_method_cache _lex_param_1, $P5008
    .return (_lex_param_1) 
.end
.HLL "nqp"
.namespace []
.sub "trace-off" :subid("cuid_106_1357684851.462") :anon :lex :outer("cuid_107_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1355
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 7
    box $P5003, 0
    repr_bind_attr_obj $P5001, $P5002, "$!trace", $P5003
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_117_1357684851.462") :anon :lex :outer("cuid_1_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1361
    .const 'Sub' $P5013 = 'cuid_108_1357684851.462' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_109_1357684851.462' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_110_1357684851.462' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_111_1357684851.462' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_112_1357684851.462' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_113_1357684851.462' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_114_1357684851.462' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_115_1357684851.462' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_116_1357684851.462' 
    capture_lex $P5013 
    .lex "$archetypes", $P101 
    .lex "$?PACKAGE", $P102 
    .lex "$?CLASS", $P103 
    null $P5001
    set $P101, $P5001
.annotate 'line', 1365
    nqp_get_sc_object $P5002, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 1
    $P5003 = $P5002."new"(1 :named("nominal"))
    set $P101, $P5003
    .const 'Sub' $P5004 = 'cuid_108_1357684851.462' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_109_1357684851.462' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_110_1357684851.462' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_111_1357684851.462' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_112_1357684851.462' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_113_1357684851.462' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_114_1357684851.462' 
    capture_lex $P5010
    .const 'Sub' $P5011 = 'cuid_115_1357684851.462' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_116_1357684851.462' 
    capture_lex $P5012
    .return ($P5012) 
.end
.HLL "nqp"
.namespace []
.sub "archetypes" :subid("cuid_108_1357684851.462") :anon :lex :outer("cuid_117_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1366
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    find_lex $P5001, "$archetypes"
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "new" :subid("cuid_109_1357684851.462") :anon :lex :outer("cuid_117_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1370
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("name") :optional 
    .param int haz_param_25 :opt_flag 
    if haz_param_25, default451
    null $P5004
    set _lex_param_1, $P5004
  default451:
    .lex "$obj", $P101 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    null $P5001
    set $P101, $P5001
    nqp_decontainerize $P5003, _lex_param_0
    repr_instance_of $P5002, $P5003
    set $P101, $P5002
.annotate 'line', 1372
    $P101."BUILD"(_lex_param_1 :named("name"))
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "BUILD" :subid("cuid_110_1357684851.462") :anon :lex :outer("cuid_117_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1376
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("name") :optional 
    .param int haz_param_26 :opt_flag 
    if haz_param_26, default452
    null $P5006
    set _lex_param_1, $P5006
  default452:
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 8
    repr_bind_attr_obj $P5001, $P5002, "$!name", _lex_param_1
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 8
    box $P5005, 0
    repr_bind_attr_obj $P5003, $P5004, "$!composed", $P5005
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "new_type" :subid("cuid_111_1357684851.462") :anon :lex :outer("cuid_117_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1384
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("name") :optional 
    .param int haz_param_27 :opt_flag 
    .param pmc _lex_param_2 :named("repr") 
    if haz_param_27, default453
    box $P5006, "<anon>"
    set _lex_param_1, $P5006
  default453:
    .lex "$metaclass", $P101 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    .lex "$repr", _lex_param_2 
    null $P5001
    set $P101, $P5001
.annotate 'line', 1385
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
.sub "add_method" :subid("cuid_112_1357684851.462") :anon :lex :outer("cuid_117_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1389
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
.sub "add_multi_method" :subid("cuid_113_1357684851.462") :anon :lex :outer("cuid_117_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1393
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
.sub "add_attribute" :subid("cuid_114_1357684851.462") :anon :lex :outer("cuid_117_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1397
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
.sub "compose" :subid("cuid_115_1357684851.462") :anon :lex :outer("cuid_117_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1401
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 8
    box $P5003, 1
    repr_bind_attr_obj $P5001, $P5002, "$!composed", $P5003
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "name" :subid("cuid_116_1357684851.462") :anon :lex :outer("cuid_117_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1405
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 8
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!name"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_128_1357684851.462") :anon :lex :outer("cuid_1_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1411
    .const 'Sub' $P5012 = 'cuid_213_1357684851.462' 
    capture_lex $P5012 
    .const 'Sub' $P5012 = 'cuid_118_1357684851.462' 
    capture_lex $P5012 
    .const 'Sub' $P5012 = 'cuid_119_1357684851.462' 
    capture_lex $P5012 
    .const 'Sub' $P5012 = 'cuid_120_1357684851.462' 
    capture_lex $P5012 
    .const 'Sub' $P5012 = 'cuid_121_1357684851.462' 
    capture_lex $P5012 
    .const 'Sub' $P5012 = 'cuid_122_1357684851.462' 
    capture_lex $P5012 
    .const 'Sub' $P5012 = 'cuid_123_1357684851.462' 
    capture_lex $P5012 
    .const 'Sub' $P5012 = 'cuid_124_1357684851.462' 
    capture_lex $P5012 
    .const 'Sub' $P5012 = 'cuid_125_1357684851.462' 
    capture_lex $P5012 
    .const 'Sub' $P5012 = 'cuid_126_1357684851.462' 
    capture_lex $P5012 
    .const 'Sub' $P5012 = 'cuid_127_1357684851.462' 
    capture_lex $P5012 
    .lex "&has_method", $P101 
    .lex "$?PACKAGE", $P102 
    .lex "$?CLASS", $P103 
    .const 'Sub' $P5001 = 'cuid_213_1357684851.462' 
    capture_lex $P5001
    set $P101, $P5001
    .const 'Sub' $P5002 = 'cuid_118_1357684851.462' 
    capture_lex $P5002
    .const 'Sub' $P5003 = 'cuid_119_1357684851.462' 
    capture_lex $P5003
    .const 'Sub' $P5004 = 'cuid_120_1357684851.462' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_121_1357684851.462' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_122_1357684851.462' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_123_1357684851.462' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_124_1357684851.462' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_125_1357684851.462' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_126_1357684851.462' 
    capture_lex $P5010
    .const 'Sub' $P5011 = 'cuid_127_1357684851.462' 
    capture_lex $P5011
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "has_method" :subid("cuid_213_1357684851.462") :anon :lex :outer("cuid_128_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1491
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .const 'Sub' $P5011 = 'cuid_212_1357684851.462' 
    capture_lex $P5011 
    .lex "@methods", $P101 
    .lex "$target", _lex_param_0 
    .lex "$name", _lex_param_1 
    .lex "$local", _lex_param_2 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    root_new $P102, ['parrot';'Continuation']
    set_label $P102, lexotic_454
    .lex "RETURN", $P102
.annotate 'line', 1492
    get_how $P5002, _lex_param_0
    $P5003 = $P5002."methods"(_lex_param_0, _lex_param_2 :named("local"))
    set $P101, $P5003
    set $P5004, $P101
    iter $P5006, $P101
  for_next458:
    unless $P5006, for_done460
    shift $P5008, $P5006
  for_redo459:
    .const 'Sub' $P5007 = 'cuid_212_1357684851.462' 
    capture_lex $P5007
    $P5004 = $P5007($P5008)
    goto for_next458
  for_done460:
    find_lex $P5009, "RETURN"
    $P5010 = $P5009(0)
    goto lexotic_455
  lexotic_454:
    .get_results ($P5010)
  lexotic_455:
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_212_1357684851.462") :anon :lex :outer("cuid_213_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1493
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    set $S5001, _lex_param_0
    find_lex $P5001, "$name"
    set $S5002, $P5001
    iseq $I5001, $S5001, $S5002
    box $P5005, $I5001
    set $P5004, $P5005
    unless $I5001 goto if109_end457 
.annotate 'line', 1494
    find_lex $P5002, "RETURN"
    $P5003 = $P5002(1)
    set $P5004, $P5003
  if109_end457:
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "new" :subid("cuid_118_1357684851.462") :anon :lex :outer("cuid_128_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1419
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("name") 
    .param pmc _lex_param_2 :named("box_target") :optional 
    .param int haz_param_28 :opt_flag 
    .param pmc _lex_param_3 :slurpy :named 
    if haz_param_28, default461
    null $P5004
    set _lex_param_2, $P5004
  default461:
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
.annotate 'line', 1421
    exists $I5001, _lex_param_3["type"]
    exists $I5002, _lex_param_3["default"]
    $P101."BUILD"(_lex_param_1 :named("name"), _lex_param_3 :flat :named, _lex_param_2 :named("box_target"), $I5001 :named("has_type"), $I5002 :named("has_default"))
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "BUILD" :subid("cuid_119_1357684851.462") :anon :lex :outer("cuid_128_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1427
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
    if haz_param_29, default462
    null $P5013
    set _lex_param_1, $P5013
  default462:
    if haz_param_30, default463
    null $P5014
    set _lex_param_2, $P5014
  default463:
    if haz_param_31, default464
    null $P5015
    set _lex_param_3, $P5015
  default464:
    if haz_param_32, default465
    null $P5016
    set _lex_param_4, $P5016
  default465:
    if haz_param_33, default466
    null $P5017
    set _lex_param_5, $P5017
  default466:
    if haz_param_34, default467
    null $P5018
    set _lex_param_6, $P5018
  default467:
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    .lex "$type", _lex_param_2 
    .lex "$has_type", _lex_param_3 
    .lex "$box_target", _lex_param_4 
    .lex "$default", _lex_param_5 
    .lex "$has_default", _lex_param_6 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 9
    repr_bind_attr_obj $P5001, $P5002, "$!name", _lex_param_1
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 9
    repr_bind_attr_obj $P5003, $P5004, "$!type", _lex_param_2
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 9
    repr_bind_attr_obj $P5005, $P5006, "$!has_type", _lex_param_3
    nqp_decontainerize $P5007, _lex_param_0
    nqp_get_sc_object $P5008, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 9
    repr_bind_attr_obj $P5007, $P5008, "$!box_target", _lex_param_4
    nqp_decontainerize $P5009, _lex_param_0
    nqp_get_sc_object $P5010, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 9
    repr_bind_attr_obj $P5009, $P5010, "$!default", _lex_param_5
    nqp_decontainerize $P5011, _lex_param_0
    nqp_get_sc_object $P5012, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 9
    repr_bind_attr_obj $P5011, $P5012, "$!has_default", _lex_param_6
    .return (_lex_param_6) 
.end
.HLL "nqp"
.namespace []
.sub "name" :subid("cuid_120_1357684851.462") :anon :lex :outer("cuid_128_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1436
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 9
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!name"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "type" :subid("cuid_121_1357684851.462") :anon :lex :outer("cuid_128_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1440
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 9
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!has_type"
    unless $P5003 goto if110_else468 
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 9
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!type"
    set $P5008, $P5006
    goto if110_end469
  if110_else468:
    null $P5007
    set $P5008, $P5007
  if110_end469:
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "has_accessor" :subid("cuid_122_1357684851.462") :anon :lex :outer("cuid_128_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1444
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    .return (0) 
.end
.HLL "nqp"
.namespace []
.sub "build_closure" :subid("cuid_123_1357684851.462") :anon :lex :outer("cuid_128_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1448
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    .return (0) 
.end
.HLL "nqp"
.namespace []
.sub "box_target" :subid("cuid_124_1357684851.462") :anon :lex :outer("cuid_128_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1452
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 9
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!box_target"
    isnull $I5002, $P5003
    not $I5001, $I5002
    box $P5008, $I5001
    set $P5007, $P5008
    unless $I5001 goto if112_end473 
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 9
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!box_target"
    set $P5007, $P5006
  if112_end473:
    unless $P5007 goto if111_else470 
    set $I5003, 1
    goto if111_end471
  if111_else470:
    set $I5003, 0
  if111_end471:
    .return ($I5003) 
.end
.HLL "nqp"
.namespace []
.sub "auto_viv_container" :subid("cuid_125_1357684851.462") :anon :lex :outer("cuid_128_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1456
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 9
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!has_default"
    unless $P5003 goto if113_else474 
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 9
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!default"
    set $P5008, $P5006
    goto if113_end475
  if113_else474:
    null $P5007
    set $P5008, $P5007
  if113_end475:
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "compose" :subid("cuid_126_1357684851.462") :anon :lex :outer("cuid_128_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1460
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .return (_lex_param_1) 
.end
.HLL "nqp"
.namespace []
.sub "has_mutator" :subid("cuid_127_1357684851.462") :anon :lex :outer("cuid_128_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1487
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 9
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!name"
    set $S5002, $P5003
    substr $S5001, $S5002, 1, 1
    isne $I5001, $S5001, "!"
    .return ($I5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_139_1357684851.462") :anon :lex :outer("cuid_1_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1502
    .const 'Sub' $P5014 = 'cuid_129_1357684851.462' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_130_1357684851.462' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_131_1357684851.462' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_132_1357684851.462' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_133_1357684851.462' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_134_1357684851.462' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_135_1357684851.462' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_136_1357684851.462' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_137_1357684851.462' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_138_1357684851.462' 
    capture_lex $P5014 
    .lex "$archetypes", $P101 
    .lex "$?PACKAGE", $P102 
    .lex "$?CLASS", $P103 
    null $P5001
    set $P101, $P5001
.annotate 'line', 1506
    nqp_get_sc_object $P5002, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 1
    $P5003 = $P5002."new"()
    set $P101, $P5003
    .const 'Sub' $P5004 = 'cuid_129_1357684851.462' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_130_1357684851.462' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_131_1357684851.462' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_132_1357684851.462' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_133_1357684851.462' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_134_1357684851.462' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_135_1357684851.462' 
    capture_lex $P5010
    .const 'Sub' $P5011 = 'cuid_136_1357684851.462' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_137_1357684851.462' 
    capture_lex $P5012
    .const 'Sub' $P5013 = 'cuid_138_1357684851.462' 
    capture_lex $P5013
    .return ($P5013) 
.end
.HLL "nqp"
.namespace []
.sub "archetypes" :subid("cuid_129_1357684851.462") :anon :lex :outer("cuid_139_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1507
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    find_lex $P5001, "$archetypes"
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "new" :subid("cuid_130_1357684851.462") :anon :lex :outer("cuid_139_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1511
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("name") :optional 
    .param int haz_param_35 :opt_flag 
    if haz_param_35, default476
    null $P5004
    set _lex_param_1, $P5004
  default476:
    .lex "$obj", $P101 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    null $P5001
    set $P101, $P5001
    nqp_decontainerize $P5003, _lex_param_0
    repr_instance_of $P5002, $P5003
    set $P101, $P5002
.annotate 'line', 1513
    $P101."BUILD"(_lex_param_1 :named("name"))
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "BUILD" :subid("cuid_131_1357684851.462") :anon :lex :outer("cuid_139_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1517
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("name") :optional 
    .param int haz_param_36 :opt_flag 
    if haz_param_36, default477
    null $P5006
    set _lex_param_1, $P5006
  default477:
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 10
    repr_bind_attr_obj $P5001, $P5002, "$!name", _lex_param_1
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 10
    box $P5005, 0
    repr_bind_attr_obj $P5003, $P5004, "$!composed", $P5005
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "new_type" :subid("cuid_132_1357684851.462") :anon :lex :outer("cuid_139_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1524
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("name") :optional 
    .param int haz_param_37 :opt_flag 
    if haz_param_37, default478
    box $P5006, "<anon>"
    set _lex_param_1, $P5006
  default478:
    .lex "$metaclass", $P101 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    null $P5001
    set $P101, $P5001
.annotate 'line', 1525
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
.sub "add_method" :subid("cuid_133_1357684851.462") :anon :lex :outer("cuid_139_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1529
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
.sub "add_multi_method" :subid("cuid_134_1357684851.462") :anon :lex :outer("cuid_139_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1535
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
.sub "add_attribute" :subid("cuid_135_1357684851.462") :anon :lex :outer("cuid_139_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1539
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
.sub "compose" :subid("cuid_136_1357684851.462") :anon :lex :outer("cuid_139_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1543
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
    nqp_get_sc_object $P5003, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 10
    box $P5004, 1
    repr_bind_attr_obj $P5002, $P5003, "$!composed", $P5004
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "find_method" :subid("cuid_137_1357684851.462") :anon :lex :outer("cuid_139_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1549
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
.sub "name" :subid("cuid_138_1357684851.462") :anon :lex :outer("cuid_139_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1553
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 10
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!name"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_140_1357684851.462") :anon :lex :outer("cuid_1_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1561
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    get_who $P5001, $P101
    nqp_get_sc_object $P5002, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 10
    set $P5001["module"], $P5002
    get_who $P5003, $P101
    nqp_get_sc_object $P5004, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 7
    set $P5003["class"], $P5004
    get_who $P5005, $P101
    nqp_get_sc_object $P5006, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 9
    set $P5005["class-attr"], $P5006
    get_who $P5007, $P101
    nqp_get_sc_object $P5008, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 7
    set $P5007["grammar"], $P5008
    get_who $P5009, $P101
    nqp_get_sc_object $P5010, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 9
    set $P5009["grammar-attr"], $P5010
    get_who $P5011, $P101
    nqp_get_sc_object $P5012, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 6
    set $P5011["role"], $P5012
    get_who $P5013, $P101
    nqp_get_sc_object $P5014, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 9
    set $P5013["role-attr"], $P5014
    get_who $P5015, $P101
    nqp_get_sc_object $P5016, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 8
    set $P5015["native"], $P5016
    .return ($P5016) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_215_1357684851.462") :load :init
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
    .const 'Sub' $P5001 = 'cuid_214_1357684851.462' 
    capture_lex $P5001 
    .local pmc cur_sc 
    .local pmc conflicts 
    nqp_dynop_setup 
    nqp_bigint_setup 
    getinterp $P5001
    get_class $P5002, "LexPad"
    get_class $P5003, "NQPLexPad"
    $P5001."hll_map"($P5002, $P5003)
    nqp_create_sc $P5001, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488"
    set cur_sc, $P5001
    cur_sc."set_description"("src\\stage2\\gen\\nqp-mo.pm")
    new $P5002, 'ResizablePMCArray'
    set conflicts, $P5002
    new $P5003, 'ResizableStringArray'
    null $S5001
    push $P5003, $S5001
    push $P5003, "P6opaque"
    push $P5003, "RoleToRoleApplier"
    push $P5003, "NQPConcreteRoleHOW"
    push $P5003, "RoleToClassApplier"
    push $P5003, "NQPCurriedRoleHOW"
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
    push $P5003, "specialize"
    push $P5003, "curried_role"
    push $P5003, "$!curried_role"
    push $P5003, "@!pos_args"
    push $P5003, "set_body_block"
    push $P5003, "curry"
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
    push $P5003, "%!caches"
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
    .const 'Sub' $P5004 = 'cuid_214_1357684851.462' 
    capture_lex $P5004
    $P5005 = $P5004()
    nqp_deserialize_sc "AQAAAEAAAAABAAAASAAAAAwAAACoAAAAZBQAAFEAAAB0GQAAUiQAAAAAAABSJAAAAAAAAFIkAABSJAAAAAAAAHQAAAAAAAAAAQAAAAAAAAABAAAAGAEAAAEAAADyAgAAAQAAAJoDAAABAAAACAYAAAEAAACwBgAAAQAAANwHAAABAAAAHgoAAAEAAADWDgAAAQAAAB4QAAABAAAAzBEAAAEAAAAiEwAAAAAAAAwAAAAAAAAAAAAAAAoACQAAAAIAAAACAAAAAAACAAAAAwAAAAIAAAAAAAMAAAAEAAAAAgAAAAAABAAAAAUAAAACAAAAAAAFAAAABgAAAAIAAAAAAAYAAAAHAAAAAgAAAAAABwAAAAgAAAACAAAAAAAIAAAACQAAAAIAAAAAAAkAAAAKAAAAAgAAAAAACgAAAAoAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAAAAAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAAAAAAAADAAAAAAANAAAAAAAAAAEAAAAKAAAAAAAKAAoAAAALAAAACwAAAAAAAAAAAAwAAAALAAAAAAABAAAADQAAAAsAAAAAAAIAAAAOAAAACwAAAAAAAwAAAA8AAAALAAAAAAAEAAAAEAAAAAsAAAAAAAUAAAARAAAACwAAAAAABgAAABIAAAALAAAAAAAHAAAAEwAAAAsAAAAAAAgAAAAUAAAACwAAAAAACQAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAAABAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAQAAAAAAAAACAAAAAAABAAAACgAIAAAAFQAAAAQAAAAAAAAAAAAWAAAABAABAAAAAAAAABcAAAAEAAIAAAAAAAAAGAAAAAQAAwAAAAAAAAAZAAAABAAEAAAAAAAAABoAAAAEAAUAAAAAAAAAGwAAAAQABgAAAAAAAAAcAAAABAAHAAAAAAAAAAAAAAAOAAAAAAAAAAIAAAAKAAAAAAAKAAEAAAAdAAAACwAAAAAACgAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAAACAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAAAIAAAADAAAAAAAPAAAAAAAAAAMAAAAKAAAAAAAKABMAAAAeAAAACwAAAAAACwAAAAsAAAALAAAAAAAMAAAADAAAAAsAAAAAAA0AAAAfAAAACwAAAAAADgAAACAAAAALAAAAAAAPAAAAIQAAAAsAAAAAABAAAAAiAAAACwAAAAAAEQAAACMAAAALAAAAAAASAAAAJAAAAAsAAAAAABMAAAAlAAAACwAAAAAAFAAAACYAAAALAAAAAAAVAAAAJwAAAAsAAAAAABYAAAAoAAAACwAAAAAAFwAAACkAAAALAAAAAAAYAAAAKgAAAAsAAAAAABkAAAArAAAACwAAAAAAGgAAACwAAAALAAAAAAAbAAAALQAAAAsAAAAAABwAAAAuAAAACwAAAAAAHQAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAAADAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAAAMAAAAKAAkAAAAvAAAABAAAAAAAAAAAADAAAAAEAAEAAAAAAAAAMQAAAAQAAgAAAAAAAAAyAAAABAADAAAAAAAAADMAAAAEAAQAAAAAAAAANAAAAAQABQAAAAAAAAA1AAAABAAGAAAAAAAAADYAAAAEAAcAAAAAAAAANwAAAAQACAAAAAAAAAAAAAAAEAAAAAAAAAAEAAAACgAAAAAACgABAAAAHQAAAAsAAAAAAB4AAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAAABAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAQAAAAAAAAACAAAAAAAEAAAAAwAAAAAAEQAAAAAAAAAFAAAACgAAAAAACgAHAAAAHgAAAAsAAAAAAB8AAAALAAAACwAAAAAAIAAAAAwAAAALAAAAAAAhAAAAHwAAAAsAAAAAACIAAAA4AAAACwAAAAAAIwAAACoAAAALAAAAAAAkAAAAOQAAAAsAAAAAACUAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAAABQAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAABQAAAAoAAgAAADoAAAAEAAAAAAAAAAAAOwAAAAQAAQAAAAAAAAAAAAAAEgAAAAAAAAAGAAAACgAAAAAACgATAAAAHgAAAAsAAAAAACYAAAALAAAACwAAAAAAJwAAAAwAAAALAAAAAAAoAAAAHwAAAAsAAAAAACkAAAA8AAAACwAAAAAAKgAAACAAAAALAAAAAAArAAAAIQAAAAsAAAAAACwAAAAiAAAACwAAAAAALQAAACMAAAALAAAAAAAuAAAAJAAAAAsAAAAAAC8AAAAmAAAACwAAAAAAMAAAABQAAAALAAAAAAAxAAAAPQAAAAsAAAAAADIAAAA4AAAACwAAAAAAMwAAACcAAAALAAAAAAA0AAAAKAAAAAsAAAAAADUAAAAqAAAACwAAAAAANgAAACsAAAALAAAAAAA3AAAALAAAAAsAAAAAADgAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAAABgAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAcAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAAAYAAAAKAAcAAAAvAAAABAAAAAAAAAAAADEAAAAEAAEAAAAAAAAAMgAAAAQAAgAAAAAAAAAzAAAABAADAAAAAAAAADUAAAAEAAQAAAAAAAAANwAAAAQABQAAAAAAAAA+AAAABAAGAAAAAAAAAAAAAAATAAAAAAAAAAcAAAAKAAAAAAAKACoAAAAeAAAACwAAAAAAOQAAAAsAAAALAAAAAAA6AAAADAAAAAsAAAAAADsAAAAfAAAACwAAAAAAPAAAACAAAAALAAAAAAA9AAAAIQAAAAsAAAAAAD4AAAAiAAAACwAAAAAAPwAAACMAAAALAAAAAABAAAAAPwAAAAsAAAAAAEEAAABAAAAACwAAAAAAQgAAACQAAAALAAAAAABDAAAAQQAAAAsAAAAAAEQAAABCAAAACwAAAAAARQAAACYAAAALAAAAAABGAAAAQwAAAAsAAAAAAEcAAABEAAAACwAAAAAASAAAAEUAAAALAAAAAABJAAAARgAAAAsAAAAAAEoAAABHAAAACwAAAAAASwAAAEgAAAALAAAAAABMAAAASQAAAAsAAAAAAE0AAABKAAAACwAAAAAATgAAAEsAAAALAAAAAABPAAAATAAAAAsAAAAAAFAAAABNAAAACwAAAAAAUQAAACwAAAALAAAAAABSAAAAJwAAAAsAAAAAAFMAAAAoAAAACwAAAAAAVAAAACoAAAALAAAAAABVAAAATgAAAAsAAAAAAFYAAABPAAAACwAAAAAAVwAAACsAAAALAAAAAABYAAAAUAAAAAsAAAAAAFkAAABRAAAACwAAAAAAWgAAAFIAAAALAAAAAABbAAAAUwAAAAsAAAAAAFwAAABUAAAACwAAAAAAXQAAAFUAAAALAAAAAABeAAAAVgAAAAsAAAAAAF8AAABXAAAACwAAAAAAYAAAAFgAAAALAAAAAABhAAAAWQAAAAsAAAAAAGIAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAAABwAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABUAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAQAAAAAAAAACAAAAAAAHAAAACgAVAAAALwAAAAQAAAAAAAAAAAAxAAAABAABAAAAAAAAADIAAAAEAAIAAAAAAAAAWgAAAAQAAwAAAAAAAAAzAAAABAAEAAAAAAAAAFsAAAAEAAUAAAAAAAAANQAAAAQABgAAAAAAAABcAAAABAAHAAAAAAAAAF0AAAAEAAgAAAAAAAAAXgAAAAQACQAAAAAAAAA3AAAABAAKAAAAAAAAAF8AAAAEAAsAAAAAAAAAYAAAAAQADAAAAAAAAABhAAAABAANAAAAAAAAAGIAAAAEAA4AAAAAAAAAYwAAAAQADwAAAAAAAABkAAAABAAQAAAAAAAAAGUAAAAEABEAAAAAAAAAZgAAAAQAEgAAAAAAAABnAAAABAATAAAAAAAAAGgAAAAEABQAAAAAAAAAAAAAABQAAAAAAAAACAAAAAoAAAAAAAoACQAAAB4AAAALAAAAAABjAAAACwAAAAsAAAAAAGQAAAAMAAAACwAAAAAAZQAAAB8AAAALAAAAAABmAAAAIAAAAAsAAAAAAGcAAAAhAAAACwAAAAAAaAAAACIAAAALAAAAAABpAAAAJgAAAAsAAAAAAGoAAAAqAAAACwAAAAAAawAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAAAIAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAQAAAAAAAAACAAAAAAAIAAAACgACAAAALwAAAAQAAAAAAAAAAAA3AAAABAABAAAAAAAAAAAAAAAVAAAAAAAAAAkAAAAKAAAAAAAKAAoAAAALAAAACwAAAAAAbAAAAAwAAAALAAAAAABtAAAAKgAAAAsAAAAAAG4AAABpAAAACwAAAAAAbwAAAGoAAAALAAAAAABwAAAAawAAAAsAAAAAAHEAAABsAAAACwAAAAAAcgAAAG0AAAALAAAAAABzAAAAJgAAAAsAAAAAAHQAAABuAAAACwAAAAAAdQAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAAAJAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAAAkAAAAKAAYAAAAvAAAABAAAAAAAAAAAAG8AAAAEAAEAAAAAAAAAcAAAAAQAAgAAAAAAAABxAAAABAADAAAAAAAAAHIAAAAEAAQAAAAAAAAAcwAAAAQABQAAAAAAAAAAAAAAFgAAAAAAAAAKAAAACgAAAAAACgAKAAAAHgAAAAsAAAAAAHYAAAALAAAACwAAAAAAdwAAAAwAAAALAAAAAAB4AAAAHwAAAAsAAAAAAHkAAAAgAAAACwAAAAAAegAAACEAAAALAAAAAAB7AAAAIgAAAAsAAAAAAHwAAAAmAAAACwAAAAAAfQAAAFUAAAALAAAAAAB+AAAAKgAAAAsAAAAAAH8AAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAAACgAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAACgAAAAoAAgAAAC8AAAAEAAAAAAAAAAAANwAAAAQAAQAAAAAAAAAAAAAAFwAAAAAAAAALAAAACgAAAAAACgAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAAsAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAACwAAAAMAAAAAAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAAAAAAAAAAAAgAAAAAAAAAAAAAAAAAAAAMAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAABQAAAAAAAAAAAAAAAAAAAAYAAAAAAAAAAAAAAAAAAAAHAAAAAAAAAAAAAAAAAAAACAAAAAAAAAAAAAAAAAAAAAkAAAAAAAAAAAAAAAAAAAAKAAAAAAAAAAAAAAAAAAAACwAAAAAAAAAAAAAAAQAAAAAAAAAAAAAAAQAAAAEAAAAAAAAAEAAAAAEAAAABAAAAAAAAAPwAAAABAAAAAQAAAAAAAAAaAQAAAQAAAAEAAAAAAAAAjgIAAAEAAAABAAAAAAAAAKwCAAABAAAAAQAAAAAAAAAyAwAAAQAAAAEAAAAAAAAAkgQAAAEAAAABAAAAAAAAAMAHAAABAAAAAQAAAAAAAABiCAAAAQAAAAEAAAAAAAAAOgkAAAEAAAABAAAAAAAAAOoJAAABAAAAAQAAAAIAAAD6CQAAAQAAAAEAAAACAAAA/gkAAAEAAAABAAAAAgAAAAIKAAABAAAAAQAAAAIAAAAGCgAAAQAAAAEAAAACAAAACgoAAAEAAAABAAAAAgAAAA4KAAABAAAAAQAAAAIAAAASCgAAAQAAAAEAAAACAAAAFgoAAAEAAAABAAAAAgAAABoKAAABAAAAAQAAAAIAAAAeCgAAAQAAAAEAAAACAAAAIgoAAAEAAAABAAAAAgAAACYKAAABAAAAAQAAAAIAAAAqCgAAAQAAAAEAAAACAAAALgoAAAEAAAABAAAAAgAAADIKAAABAAAAAQAAAAIAAAA2CgAAAQAAAAEAAAACAAAAOgoAAAEAAAABAAAAAgAAAD4KAAABAAAAAQAAAAIAAABCCgAAAQAAAAEAAAACAAAARgoAAAEAAAABAAAAAgAAAEoKAAABAAAAAQAAAAIAAABOCgAAAQAAAAEAAAACAAAAUgoAAAEAAAABAAAAAgAAAFYKAAABAAAAAQAAAAIAAABaCgAAAQAAAAEAAAACAAAAXgoAAAEAAAABAAAAAgAAAGIKAAABAAAAAQAAAAIAAABmCgAAAQAAAAEAAAACAAAAagoAAAEAAAABAAAAAgAAAG4KAAABAAAAAQAAAAIAAAByCgAAAQAAAAEAAAACAAAAdgoAAAEAAAABAAAAAgAAAHoKAAABAAAAAQAAAAIAAAB+CgAAAQAAAAEAAAACAAAAggoAAAEAAAABAAAAAgAAAIYKAAABAAAAAQAAAAIAAACKCgAAAQAAAAEAAAACAAAAjgoAAAEAAAABAAAAAgAAAJIKAAABAAAAAQAAAAIAAACWCgAAAQAAAAEAAAACAAAAmgoAAAEAAAABAAAAAgAAAJ4KAAABAAAAAQAAAAIAAACiCgAAAQAAAAEAAAACAAAApgoAAAEAAAABAAAAAgAAAKoKAAABAAAAAQAAAAIAAACuCgAAAQAAAAEAAAACAAAAsgoAAAEAAAABAAAAAgAAALYKAAABAAAAAQAAAAIAAAC6CgAAAQAAAAEAAAACAAAAvgoAAAEAAAABAAAAAgAAAMIKAAABAAAAAQAAAAIAAADGCgAAAQAAAAEAAAACAAAAygoAAAEAAAABAAAAAgAAAM4KAAABAAAAAQAAAAIAAADSCgAAAQAAAAEAAAACAAAA1goAAAEAAAABAAAAAgAAANoKAAABAAAAdQAAAAcAAAAAAAoAAAAAAHYAAAAHAAgAAAACAAAAAAAYAAAAAgAAAAAAGQAAAAIAAAAAABoAAAACAAAAAAAbAAAAAgAAAAAAHAAAAAIAAAAAAB0AAAACAAAAAAAeAAAAAgAAAAAAHwAAAAoACgAAAAsAAAALAAAAAAAAAAAADAAAAAsAAAAAAAEAAAANAAAACwAAAAAAAgAAAA4AAAALAAAAAAADAAAADwAAAAsAAAAAAAQAAAAQAAAACwAAAAAABQAAABEAAAALAAAAAAAGAAAAEgAAAAsAAAAAAAcAAAATAAAACwAAAAAACAAAABQAAAALAAAAAAAJAAAAAgAAAAcAAAAAAAoAAQAAAB0AAAALAAAAAAAKAAAAAwAAAAcACQAAAAIAAAAAACAAAAACAAAAAAAhAAAAAgAAAAAAIgAAAAIAAAAAACMAAAACAAAAAAAkAAAAAgAAAAAAJQAAAAIAAAAAACYAAAACAAAAAAAnAAAAAgAAAAAAKAAAAAoAEwAAAB4AAAALAAAAAAALAAAACwAAAAsAAAAAAAwAAAAMAAAACwAAAAAADQAAAB8AAAALAAAAAAAOAAAAIAAAAAsAAAAAAA8AAAAhAAAACwAAAAAAEAAAACIAAAALAAAAAAARAAAAIwAAAAsAAAAAABIAAAAkAAAACwAAAAAAEwAAACUAAAALAAAAAAAUAAAAJgAAAAsAAAAAABUAAAAnAAAACwAAAAAAFgAAACgAAAALAAAAAAAXAAAAKQAAAAsAAAAAABgAAAAqAAAACwAAAAAAGQAAACsAAAALAAAAAAAaAAAALAAAAAsAAAAAABsAAAAtAAAACwAAAAAAHAAAAC4AAAALAAAAAAAdAAAABAAAAAcAAAAAAAoAAQAAAB0AAAALAAAAAAAeAAAABQAAAAcAAgAAAAIAAAAAACkAAAACAAAAAAAqAAAACgAHAAAAHgAAAAsAAAAAAB8AAAALAAAACwAAAAAAIAAAAAwAAAALAAAAAAAhAAAAHwAAAAsAAAAAACIAAAA4AAAACwAAAAAAIwAAACoAAAALAAAAAAAkAAAAOQAAAAsAAAAAACUAAAAGAAAABwAHAAAAAgAAAAAAKwAAAAIAAAAAACwAAAACAAAAAAAtAAAAAgAAAAAALgAAAAIAAAAAAC8AAAACAAAAAAAwAAAAAgAAAAAAMQAAAAoAEwAAAB4AAAALAAAAAAAmAAAACwAAAAsAAAAAACcAAAAMAAAACwAAAAAAKAAAAB8AAAALAAAAAAApAAAAPAAAAAsAAAAAACoAAAAgAAAACwAAAAAAKwAAACEAAAALAAAAAAAsAAAAIgAAAAsAAAAAAC0AAAAjAAAACwAAAAAALgAAACQAAAALAAAAAAAvAAAAJgAAAAsAAAAAADAAAAAUAAAACwAAAAAAMQAAAD0AAAALAAAAAAAyAAAAOAAAAAsAAAAAADMAAAAnAAAACwAAAAAANAAAACgAAAALAAAAAAA1AAAAKgAAAAsAAAAAADYAAAArAAAACwAAAAAANwAAACwAAAALAAAAAAA4AAAABwAAAAcAFQAAAAIAAAAAADIAAAACAAAAAAAzAAAAAgAAAAAANAAAAAIAAAAAADUAAAACAAAAAAA2AAAAAgAAAAAANwAAAAIAAAAAADgAAAACAAAAAAA5AAAAAgAAAAAAOgAAAAIAAAAAADsAAAACAAAAAAA8AAAAAgAAAAAAPQAAAAIAAAAAAD4AAAACAAAAAAA/AAAAAgAAAAAAQAAAAAIAAAAAAEEAAAACAAAAAABCAAAAAgAAAAAAQwAAAAIAAAAAAEQAAAACAAAAAABFAAAAAgAAAAAARgAAAAoAKgAAAB4AAAALAAAAAAA5AAAACwAAAAsAAAAAADoAAAAMAAAACwAAAAAAOwAAAB8AAAALAAAAAAA8AAAAIAAAAAsAAAAAAD0AAAAhAAAACwAAAAAAPgAAACIAAAALAAAAAAA/AAAAIwAAAAsAAAAAAEAAAAA/AAAACwAAAAAAQQAAAEAAAAALAAAAAABCAAAAJAAAAAsAAAAAAEMAAABBAAAACwAAAAAARAAAAEIAAAALAAAAAABFAAAAJgAAAAsAAAAAAEYAAABDAAAACwAAAAAARwAAAEQAAAALAAAAAABIAAAARQAAAAsAAAAAAEkAAABGAAAACwAAAAAASgAAAEcAAAALAAAAAABLAAAASAAAAAsAAAAAAEwAAABJAAAACwAAAAAATQAAAEoAAAALAAAAAABOAAAASwAAAAsAAAAAAE8AAABMAAAACwAAAAAAUAAAAE0AAAALAAAAAABRAAAALAAAAAsAAAAAAFIAAAAnAAAACwAAAAAAUwAAACgAAAALAAAAAABUAAAAKgAAAAsAAAAAAFUAAABOAAAACwAAAAAAVgAAAE8AAAALAAAAAABXAAAAKwAAAAsAAAAAAFgAAABQAAAACwAAAAAAWQAAAFEAAAALAAAAAABaAAAAUgAAAAsAAAAAAFsAAABTAAAACwAAAAAAXAAAAFQAAAALAAAAAABdAAAAVQAAAAsAAAAAAF4AAABWAAAACwAAAAAAXwAAAFcAAAALAAAAAABgAAAAWAAAAAsAAAAAAGEAAABZAAAACwAAAAAAYgAAAAgAAAAHAAIAAAACAAAAAABHAAAAAgAAAAAASAAAAAoACQAAAB4AAAALAAAAAABjAAAACwAAAAsAAAAAAGQAAAAMAAAACwAAAAAAZQAAAB8AAAALAAAAAABmAAAAIAAAAAsAAAAAAGcAAAAhAAAACwAAAAAAaAAAACIAAAALAAAAAABpAAAAJgAAAAsAAAAAAGoAAAAqAAAACwAAAAAAawAAAAkAAAAHAAYAAAACAAAAAABJAAAAAgAAAAAASgAAAAIAAAAAAEsAAAACAAAAAABMAAAAAgAAAAAATQAAAAIAAAAAAE4AAAAKAAoAAAALAAAACwAAAAAAbAAAAAwAAAALAAAAAABtAAAAKgAAAAsAAAAAAG4AAABpAAAACwAAAAAAbwAAAGoAAAALAAAAAABwAAAAawAAAAsAAAAAAHEAAABsAAAACwAAAAAAcgAAAG0AAAALAAAAAABzAAAAJgAAAAsAAAAAAHQAAABuAAAACwAAAAAAdQAAAAoAAAAHAAIAAAACAAAAAABPAAAAAgAAAAAAUAAAAAoACgAAAB4AAAALAAAAAAB2AAAACwAAAAsAAAAAAHcAAAAMAAAACwAAAAAAeAAAAB8AAAALAAAAAAB5AAAAIAAAAAsAAAAAAHoAAAAhAAAACwAAAAAAewAAACIAAAALAAAAAAB8AAAAJgAAAAsAAAAAAH0AAABVAAAACwAAAAAAfgAAACoAAAALAAAAAAB/AAAAdwAAAAcAAAAAAAoAAAAAABUAAAAWAAAAFwAAABgAAAAZAAAAGgAAABsAAAAcAAAALwAAADAAAAAxAAAAMgAAADMAAAA0AAAANQAAADYAAAA3AAAAOgAAADsAAAAvAAAAMQAAADIAAAAzAAAANQAAADcAAAA+AAAALwAAADEAAAAyAAAAWgAAADMAAABbAAAANQAAAFwAAABdAAAAXgAAADcAAABfAAAAYAAAAGEAAABiAAAAYwAAAGQAAABlAAAAZgAAAGcAAABoAAAALwAAADcAAAAvAAAAbwAAAHAAAABxAAAAcgAAAHMAAAAvAAAANwAAAA==", cur_sc, $P5003, $P5005, conflicts
    unless conflicts goto if115_end482 
    die "Repossession conflicts occurred during deserialization"
  if115_end482:
    .const "LexInfo" $P5001 = "cuid_1_1357684851.462"
    nqp_get_sc_object $P5002, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 0
    $P5001."set_static_lexpad_value"("GLOBALish", $P5002)
    .const "LexInfo" $P5003 = "cuid_1_1357684851.462"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1357684851.462"
    nqp_get_sc_object $P5002, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 0
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_1_1357684851.462"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1357684851.462"
    nqp_get_sc_object $P5002, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 1
    $P5001."set_static_lexpad_value"("Archetypes", $P5002)
    .const "LexInfo" $P5003 = "cuid_1_1357684851.462"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_12_1357684851.462"
    nqp_get_sc_object $P5002, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 1
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_12_1357684851.462"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_12_1357684851.462"
    nqp_get_sc_object $P5002, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 1
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_12_1357684851.462"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1357684851.462"
    nqp_get_sc_object $P5002, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 2
    $P5001."set_static_lexpad_value"("RoleToRoleApplier", $P5002)
    .const "LexInfo" $P5003 = "cuid_1_1357684851.462"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_14_1357684851.462"
    nqp_get_sc_object $P5002, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 2
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_14_1357684851.462"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_14_1357684851.462"
    nqp_get_sc_object $P5002, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 2
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_14_1357684851.462"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1357684851.462"
    nqp_get_sc_object $P5002, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 3
    $P5001."set_static_lexpad_value"("NQPConcreteRoleHOW", $P5002)
    .const "LexInfo" $P5003 = "cuid_1_1357684851.462"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_34_1357684851.462"
    nqp_get_sc_object $P5002, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 3
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_34_1357684851.462"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_34_1357684851.462"
    nqp_get_sc_object $P5002, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 3
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_34_1357684851.462"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1357684851.462"
    nqp_get_sc_object $P5002, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 4
    $P5001."set_static_lexpad_value"("RoleToClassApplier", $P5002)
    .const "LexInfo" $P5003 = "cuid_1_1357684851.462"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_36_1357684851.462"
    nqp_get_sc_object $P5002, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 4
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_36_1357684851.462"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_36_1357684851.462"
    nqp_get_sc_object $P5002, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 4
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_36_1357684851.462"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1357684851.462"
    nqp_get_sc_object $P5002, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 5
    $P5001."set_static_lexpad_value"("NQPCurriedRoleHOW", $P5002)
    .const "LexInfo" $P5003 = "cuid_1_1357684851.462"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_44_1357684851.462"
    nqp_get_sc_object $P5002, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 5
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_44_1357684851.462"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_44_1357684851.462"
    nqp_get_sc_object $P5002, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 5
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_44_1357684851.462"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1357684851.462"
    nqp_get_sc_object $P5002, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 6
    $P5001."set_static_lexpad_value"("NQPParametricRoleHOW", $P5002)
    .const "LexInfo" $P5003 = "cuid_1_1357684851.462"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_64_1357684851.462"
    nqp_get_sc_object $P5002, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 6
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_64_1357684851.462"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_64_1357684851.462"
    nqp_get_sc_object $P5002, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 6
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_64_1357684851.462"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1357684851.462"
    nqp_get_sc_object $P5002, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 7
    $P5001."set_static_lexpad_value"("NQPClassHOW", $P5002)
    .const "LexInfo" $P5003 = "cuid_1_1357684851.462"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_107_1357684851.462"
    nqp_get_sc_object $P5002, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 7
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_107_1357684851.462"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_107_1357684851.462"
    nqp_get_sc_object $P5002, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 7
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_107_1357684851.462"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1357684851.462"
    nqp_get_sc_object $P5002, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 8
    $P5001."set_static_lexpad_value"("NQPNativeHOW", $P5002)
    .const "LexInfo" $P5003 = "cuid_1_1357684851.462"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_117_1357684851.462"
    nqp_get_sc_object $P5002, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 8
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_117_1357684851.462"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_117_1357684851.462"
    nqp_get_sc_object $P5002, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 8
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_117_1357684851.462"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1357684851.462"
    nqp_get_sc_object $P5002, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 9
    $P5001."set_static_lexpad_value"("NQPAttribute", $P5002)
    .const "LexInfo" $P5003 = "cuid_1_1357684851.462"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_128_1357684851.462"
    nqp_get_sc_object $P5002, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 9
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_128_1357684851.462"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_128_1357684851.462"
    nqp_get_sc_object $P5002, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 9
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_128_1357684851.462"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1357684851.462"
    nqp_get_sc_object $P5002, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 10
    $P5001."set_static_lexpad_value"("NQPModuleHOW", $P5002)
    .const "LexInfo" $P5003 = "cuid_1_1357684851.462"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_139_1357684851.462"
    nqp_get_sc_object $P5002, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 10
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_139_1357684851.462"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_139_1357684851.462"
    nqp_get_sc_object $P5002, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 10
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_139_1357684851.462"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1357684851.462"
    nqp_get_sc_object $P5002, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 11
    $P5001."set_static_lexpad_value"("EXPORTHOW", $P5002)
    .const "LexInfo" $P5003 = "cuid_1_1357684851.462"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_140_1357684851.462"
    nqp_get_sc_object $P5002, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 11
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_140_1357684851.462"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_140_1357684851.462"
    nqp_get_sc_object $P5002, "5DE74D1681CB072582D84AEE930F45D63A439961-1357684851.488", 11
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_140_1357684851.462"
    $P5004 = $P5003."finish_static_lexpad"()
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_214_1357684851.462") :anon :lex :outer("cuid_215_1357684851.462")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
    new $P5001, 'ResizablePMCArray'
    .const 'Sub' $P5002 = "cuid_2_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_3_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_4_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_5_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_6_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_7_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_8_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_9_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_10_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_11_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_13_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_15_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_16_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_17_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_18_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_19_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_20_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_21_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_22_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_23_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_24_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_25_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_26_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_27_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_28_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_29_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_30_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_31_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_32_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_33_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_35_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_37_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_38_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_39_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_40_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_41_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_42_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_43_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_45_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_46_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_47_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_48_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_49_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_50_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_51_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_52_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_53_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_54_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_55_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_56_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_57_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_58_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_59_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_60_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_61_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_62_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_63_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_65_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_66_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_67_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_68_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_69_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_70_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_71_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_72_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_73_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_74_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_75_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_76_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_77_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_78_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_79_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_80_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_81_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_82_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_83_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_84_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_85_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_86_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_87_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_88_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_89_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_90_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_91_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_92_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_93_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_94_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_95_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_96_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_97_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_98_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_99_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_100_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_101_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_102_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_103_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_104_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_105_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_106_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_108_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_109_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_110_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_111_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_112_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_113_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_114_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_115_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_116_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_118_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_119_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_120_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_121_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_122_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_123_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_124_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_125_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_126_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_127_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_129_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_130_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_131_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_132_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_133_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_134_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_135_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_136_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_137_1357684851.462" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_138_1357684851.462" 
    push $P5001, $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_216_1357684851.462") :load
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
    .const 'Sub' $P5001 = "cuid_1_1357684851.462" 
    $P5002 = $P5001()
    .return ($P5002) 
.end