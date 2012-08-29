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
.sub "" :subid("cuid_1_1346277574.467") :anon :lex
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
    .param pmc _lex_param_0 :slurpy 
    .const 'Sub' $P5032 = 'cuid_12_1346277574.467' 
    capture_lex $P5032 
    .const 'Sub' $P5032 = 'cuid_14_1346277574.467' 
    capture_lex $P5032 
    .const 'Sub' $P5032 = 'cuid_34_1346277574.467' 
    capture_lex $P5032 
    .const 'Sub' $P5032 = 'cuid_36_1346277574.467' 
    capture_lex $P5032 
    .const 'Sub' $P5032 = 'cuid_55_1346277574.467' 
    capture_lex $P5032 
    .const 'Sub' $P5032 = 'cuid_98_1346277574.467' 
    capture_lex $P5032 
    .const 'Sub' $P5032 = 'cuid_108_1346277574.467' 
    capture_lex $P5032 
    .const 'Sub' $P5032 = 'cuid_119_1346277574.467' 
    capture_lex $P5032 
    .const 'Sub' $P5032 = 'cuid_130_1346277574.467' 
    capture_lex $P5032 
    .const 'Sub' $P5032 = 'cuid_131_1346277574.467' 
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
    .const 'Sub' $P5007 = 'cuid_12_1346277574.467' 
    capture_lex $P5007
    $P5008 = $P5007()
    .const 'Sub' $P5009 = 'cuid_14_1346277574.467' 
    capture_lex $P5009
    $P5010 = $P5009()
    .const 'Sub' $P5011 = 'cuid_34_1346277574.467' 
    capture_lex $P5011
    $P5012 = $P5011()
    .const 'Sub' $P5013 = 'cuid_36_1346277574.467' 
    capture_lex $P5013
    $P5014 = $P5013()
    .const 'Sub' $P5015 = 'cuid_55_1346277574.467' 
    capture_lex $P5015
    $P5016 = $P5015()
    .const 'Sub' $P5017 = 'cuid_98_1346277574.467' 
    capture_lex $P5017
    $P5018 = $P5017()
    .const 'Sub' $P5019 = 'cuid_108_1346277574.467' 
    capture_lex $P5019
    $P5020 = $P5019()
    .const 'Sub' $P5021 = 'cuid_119_1346277574.467' 
    capture_lex $P5021
    $P5022 = $P5021()
    .const 'Sub' $P5023 = 'cuid_130_1346277574.467' 
    capture_lex $P5023
    $P5024 = $P5023()
    .const 'Sub' $P5025 = 'cuid_131_1346277574.467' 
    capture_lex $P5025
    $P5026 = $P5025()
    set $P5031, _lex_param_0
    unless _lex_param_0 goto if115_end532 
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P5027, "ModuleLoader"
    getinterp $P5029
    set $P5028, $P5029["context"]
    $P5030 = $P5027."set_mainline_module"($P5028)
    set $P5031, $P5030
  if115_end532:
    .return () 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_12_1346277574.467") :anon :lex :outer("cuid_1_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 9
    .const 'Sub' $P5011 = 'cuid_2_1346277574.467' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_3_1346277574.467' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_4_1346277574.467' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_5_1346277574.467' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_6_1346277574.467' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_7_1346277574.467' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_8_1346277574.467' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_9_1346277574.467' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_10_1346277574.467' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_11_1346277574.467' 
    capture_lex $P5011 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_2_1346277574.467' 
    capture_lex $P5001
    .const 'Sub' $P5002 = 'cuid_3_1346277574.467' 
    capture_lex $P5002
    .const 'Sub' $P5003 = 'cuid_4_1346277574.467' 
    capture_lex $P5003
    .const 'Sub' $P5004 = 'cuid_5_1346277574.467' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_6_1346277574.467' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_7_1346277574.467' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_8_1346277574.467' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_9_1346277574.467' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_10_1346277574.467' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_11_1346277574.467' 
    capture_lex $P5010
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "new" :subid("cuid_2_1346277574.467") :anon :lex :outer("cuid_12_1346277574.467")
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
.sub "BUILD" :subid("cuid_3_1346277574.467") :anon :lex :outer("cuid_12_1346277574.467")
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
    nqp_get_sc_object $P5002, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 1
    repr_bind_attr_obj $P5001, $P5002, "$!nominal", _lex_param_1
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 1
    repr_bind_attr_obj $P5003, $P5004, "$!inheritable", _lex_param_2
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 1
    repr_bind_attr_obj $P5005, $P5006, "$!composable", _lex_param_3
    nqp_decontainerize $P5007, _lex_param_0
    nqp_get_sc_object $P5008, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 1
    repr_bind_attr_obj $P5007, $P5008, "$!parametric", _lex_param_4
    .return (_lex_param_4) 
.end
.HLL "nqp"
.namespace []
.sub "nominal" :subid("cuid_4_1346277574.467") :anon :lex :outer("cuid_12_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 61
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 1
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!nominal"
    unless_null $P5003, vivi_1222
    box $P5004, 0
    set $P5003, $P5004
  vivi_1222:
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "nominalizable" :subid("cuid_5_1346277574.467") :anon :lex :outer("cuid_12_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 62
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 1
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!nominalizable"
    unless_null $P5003, vivi_1323
    box $P5004, 0
    set $P5003, $P5004
  vivi_1323:
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "inheritable" :subid("cuid_6_1346277574.467") :anon :lex :outer("cuid_12_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 63
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 1
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!inheritable"
    unless_null $P5003, vivi_1424
    box $P5004, 0
    set $P5003, $P5004
  vivi_1424:
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "inheritalizable" :subid("cuid_7_1346277574.467") :anon :lex :outer("cuid_12_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 64
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 1
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!inheritalizable"
    unless_null $P5003, vivi_1525
    box $P5004, 0
    set $P5003, $P5004
  vivi_1525:
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "composable" :subid("cuid_8_1346277574.467") :anon :lex :outer("cuid_12_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 65
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 1
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!composable"
    unless_null $P5003, vivi_1626
    box $P5004, 0
    set $P5003, $P5004
  vivi_1626:
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "composalizable" :subid("cuid_9_1346277574.467") :anon :lex :outer("cuid_12_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 66
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 1
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!composalizable"
    unless_null $P5003, vivi_1727
    box $P5004, 0
    set $P5003, $P5004
  vivi_1727:
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "generic" :subid("cuid_10_1346277574.467") :anon :lex :outer("cuid_12_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 67
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 1
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!generic"
    unless_null $P5003, vivi_1828
    box $P5004, 0
    set $P5003, $P5004
  vivi_1828:
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "parametric" :subid("cuid_11_1346277574.467") :anon :lex :outer("cuid_12_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 68
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 1
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!parametric"
    unless_null $P5003, vivi_1929
    box $P5004, 0
    set $P5003, $P5004
  vivi_1929:
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_14_1346277574.467") :anon :lex :outer("cuid_1_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 72
    .const 'Sub' $P5002 = 'cuid_13_1346277574.467' 
    capture_lex $P5002 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_13_1346277574.467' 
    capture_lex $P5001
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "apply" :subid("cuid_13_1346277574.467") :anon :lex :outer("cuid_14_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 73
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .const 'Sub' $P5033 = 'cuid_134_1346277574.467' 
    capture_lex $P5033 
    .const 'Sub' $P5033 = 'cuid_135_1346277574.467' 
    capture_lex $P5033 
    .const 'Sub' $P5033 = 'cuid_136_1346277574.467' 
    capture_lex $P5033 
    .const 'Sub' $P5033 = 'cuid_139_1346277574.467' 
    capture_lex $P5033 
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
    new $P5009, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5009, for_handlers48
    push_eh $P5009
  for_next49:
    unless $P5007, for_done51
    shift $P5010, $P5007
  for_redo50:
    .const 'Sub' $P5008 = 'cuid_134_1346277574.467' 
    capture_lex $P5008
    $P5005 = $P5008($P5010)
    goto for_next49
  for_handlers48:
    .get_results ($P5009)
    pop_upto_eh $P5009
    getattribute $P5009, $P5009, 'type'
    eq $P5009, .CONTROL_LOOP_NEXT, for_next49
    eq $P5009, .CONTROL_LOOP_REDO, for_redo50
  for_done51:
    pop_eh 
.annotate 'line', 102
    get_how $P5011, _lex_param_1
    $P5012 = $P5011."methods"(_lex_param_1)
    set $P103, $P5012
    set $P5013, $P103
    iter $P5015, $P103
    new $P5017, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5017, for_handlers52
    push_eh $P5017
  for_next53:
    unless $P5015, for_done55
    shift $P5018, $P5015
  for_redo54:
    .const 'Sub' $P5016 = 'cuid_135_1346277574.467' 
    capture_lex $P5016
    $P5013 = $P5016($P5018)
    goto for_next53
  for_handlers52:
    .get_results ($P5017)
    pop_upto_eh $P5017
    getattribute $P5017, $P5017, 'type'
    eq $P5017, .CONTROL_LOOP_NEXT, for_next53
    eq $P5017, .CONTROL_LOOP_REDO, for_redo54
  for_done55:
    pop_eh 
    set $P5019, $P101
    iter $P5021, $P101
    new $P5023, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5023, for_handlers63
    push_eh $P5023
  for_next64:
    unless $P5021, for_done66
    shift $P5024, $P5021
  for_redo65:
    .const 'Sub' $P5022 = 'cuid_136_1346277574.467' 
    capture_lex $P5022
    $P5019 = $P5022($P5024)
    goto for_next64
  for_handlers63:
    .get_results ($P5023)
    pop_upto_eh $P5023
    getattribute $P5023, $P5023, 'type'
    eq $P5023, .CONTROL_LOOP_NEXT, for_next64
    eq $P5023, .CONTROL_LOOP_REDO, for_redo65
  for_done66:
    pop_eh 
    set $P5025, _lex_param_2
    iter $P5027, _lex_param_2
    new $P5029, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5029, for_handlers81
    push_eh $P5029
  for_next82:
    unless $P5027, for_done84
    shift $P5030, $P5027
  for_redo83:
    .const 'Sub' $P5028 = 'cuid_139_1346277574.467' 
    capture_lex $P5028
    $P5025 = $P5028($P5030)
    goto for_next82
  for_handlers81:
    .get_results ($P5029)
    pop_upto_eh $P5029
    getattribute $P5029, $P5029, 'type'
    eq $P5029, .CONTROL_LOOP_NEXT, for_next82
    eq $P5029, .CONTROL_LOOP_REDO, for_redo83
  for_done84:
    pop_eh 
    find_lex $P5031, "RETURN"
    $P5032 = $P5031($P104)
    goto lexotic_31
  lexotic_30:
    .get_results ($P5032)
  lexotic_31:
    .return ($P5032) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_134_1346277574.467") :anon :lex :outer("cuid_13_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 76
    .param pmc _lex_param_0 
    .const 'Sub' $P5010 = 'cuid_133_1346277574.467' 
    capture_lex $P5010 
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
    new $P5008, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5008, for_handlers44
    push_eh $P5008
  for_next45:
    unless $P5006, for_done47
    shift $P5009, $P5006
  for_redo46:
    .const 'Sub' $P5007 = 'cuid_133_1346277574.467' 
    capture_lex $P5007
    $P5004 = $P5007($P5009)
    goto for_next45
  for_handlers44:
    .get_results ($P5008)
    pop_upto_eh $P5008
    getattribute $P5008, $P5008, 'type'
    eq $P5008, .CONTROL_LOOP_NEXT, for_next45
    eq $P5008, .CONTROL_LOOP_REDO, for_redo46
  for_done47:
    pop_eh 
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_133_1346277574.467") :anon :lex :outer("cuid_134_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 78
    .param pmc _lex_param_0 
    .const 'Sub' $P5023 = 'cuid_132_1346277574.467' 
    capture_lex $P5023 
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
    new $P5019, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5019, for_handlers38
    push_eh $P5019
  for_next39:
    unless $P5017, for_done41
    shift $P5020, $P5017
  for_redo40:
    .const 'Sub' $P5018 = 'cuid_132_1346277574.467' 
    capture_lex $P5018
    $P5015 = $P5018($P5020)
    goto for_next39
  for_handlers38:
    .get_results ($P5019)
    pop_upto_eh $P5019
    getattribute $P5019, $P5019, 'type'
    eq $P5019, .CONTROL_LOOP_NEXT, for_next39
    eq $P5019, .CONTROL_LOOP_REDO, for_redo40
  for_done41:
    pop_eh 
    set $P5022, $P104
    if $P104 goto unless22_end43 
.annotate 'line', 94
.annotate 'line', 95
    $P5021 = $P103."push"($P102)
    set $P5022, $P5021
  unless22_end43:
    .return ($P5022) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_132_1346277574.467") :anon :lex :outer("cuid_133_1346277574.467")
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
.sub "" :subid("cuid_135_1346277574.467") :anon :lex :outer("cuid_13_1346277574.467")
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
.sub "" :subid("cuid_136_1346277574.467") :anon :lex :outer("cuid_13_1346277574.467")
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
    unless_null $P5004, fallback56
    null $P5006
    set $P5004, $P5006
  fallback56:
    set $P102, $P5004
    find_lex $P5008, "%target_meth_info"
    set $S5003, $P101
    set $P5007, $P5008[$S5003]
    unless_null $P5007, fallback59
    null $P5009
    set $P5007, $P5009
  fallback59:
    defined $I5001, $P5007
    box $P5022, $I5001
    set $P5021, $P5022
    if $I5001 goto unless23_end58 
.annotate 'line', 114
    set $N5001, $P102
    set $N5002, 1
    iseq $I5002, $N5001, $N5002
    unless $I5002 goto if24_else60 
.annotate 'line', 116
.annotate 'line', 117
    find_lex $P5011, "$target"
    get_how $P5010, $P5011
    find_lex $P5012, "$target"
    set $P5013, $P102[0]
    unless_null $P5013, fallback62
    null $P5014
    set $P5013, $P5014
  fallback62:
    $P5015 = $P5010."add_method"($P5012, $P101, $P5013)
    set $P5020, $P5015
    goto if24_end61
  if24_else60:
.annotate 'line', 119
.annotate 'line', 121
    find_lex $P5017, "$target"
    get_how $P5016, $P5017
    find_lex $P5018, "$target"
    $P5019 = $P5016."add_collision"($P5018, $P101)
    set $P5020, $P5019
  if24_end61:
    set $P5021, $P5020
  unless23_end58:
    .return ($P5021) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_139_1346277574.467") :anon :lex :outer("cuid_13_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 128
    .param pmc _lex_param_0 
    .const 'Sub' $P5013 = 'cuid_138_1346277574.467' 
    capture_lex $P5013 
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
    new $P5009, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5009, for_handlers77
    push_eh $P5009
  for_next78:
    unless $P5007, for_done80
    shift $P5010, $P5007
  for_redo79:
    .const 'Sub' $P5008 = 'cuid_138_1346277574.467' 
    capture_lex $P5008
    $P5005 = $P5008($P5010)
    goto for_next78
  for_handlers77:
    .get_results ($P5009)
    pop_upto_eh $P5009
    getattribute $P5009, $P5009, 'type'
    eq $P5009, .CONTROL_LOOP_NEXT, for_next78
    eq $P5009, .CONTROL_LOOP_REDO, for_redo79
  for_done80:
    pop_eh 
.annotate 'line', 154
    find_lex $P5011, "@all_roles"
    $P5012 = $P5011."push"(_lex_param_0)
    .return ($P5012) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_138_1346277574.467") :anon :lex :outer("cuid_139_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 133
    .param pmc _lex_param_0 
    .const 'Sub' $P5020 = 'cuid_137_1346277574.467' 
    capture_lex $P5020 
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
    new $P5013, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5013, for_handlers71
    push_eh $P5013
  for_next72:
    unless $P5011, for_done74
    shift $P5014, $P5011
  for_redo73:
    .const 'Sub' $P5012 = 'cuid_137_1346277574.467' 
    capture_lex $P5012
    $P5009 = $P5012($P5014)
    goto for_next72
  for_handlers71:
    .get_results ($P5013)
    pop_upto_eh $P5013
    getattribute $P5013, $P5013, 'type'
    eq $P5013, .CONTROL_LOOP_NEXT, for_next72
    eq $P5013, .CONTROL_LOOP_REDO, for_redo73
  for_done74:
    pop_eh 
    set $P5019, $P102
    if $P102 goto unless27_end76 
.annotate 'line', 147
.annotate 'line', 148
    find_lex $P5016, "$target"
    get_how $P5015, $P5016
    find_lex $P5017, "$target"
    $P5018 = $P5015."add_attribute"($P5017, $P101)
    set $P5019, $P5018
  unless27_end76:
    .return ($P5019) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_137_1346277574.467") :anon :lex :outer("cuid_138_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 137
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    get_id $I5002, _lex_param_0
    find_lex $P5001, "$add_attr"
    get_id $I5003, $P5001
    iseq $I5001, $I5002, $I5003
    unless $I5001 goto if25_else67 
.annotate 'line', 138
    box $P5002, 1
    store_lex "$skip", $P5002
    set $P5010, $P5002
    goto if25_end68
  if25_else67:
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
    unless $I5004 goto if26_end70 
.annotate 'line', 143
    $P5006 = _lex_param_0."name"()
    set $S5005, $P5006
    concat $S5004, "Attribute '", $S5005
    concat $S5003, $S5004, "' conflicts in role composition"
    box $P5007, $S5003
    die $P5007
    set $P5008, $P5007
  if26_end70:
    set $P5010, $P5008
  if25_end68:
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_34_1346277574.467") :anon :lex :outer("cuid_1_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 164
    .const 'Sub' $P5023 = 'cuid_15_1346277574.467' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_16_1346277574.467' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_17_1346277574.467' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_18_1346277574.467' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_19_1346277574.467' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_20_1346277574.467' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_21_1346277574.467' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_22_1346277574.467' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_23_1346277574.467' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_24_1346277574.467' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_25_1346277574.467' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_26_1346277574.467' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_27_1346277574.467' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_28_1346277574.467' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_29_1346277574.467' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_30_1346277574.467' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_31_1346277574.467' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_32_1346277574.467' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_33_1346277574.467' 
    capture_lex $P5023 
    .lex "$archetypes", $P101 
    .lex "$?PACKAGE", $P102 
    .lex "$?CLASS", $P103 
    null $P5001
    set $P101, $P5001
.annotate 'line', 190
    nqp_get_sc_object $P5002, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 1
    $P5003 = $P5002."new"(1 :named("nominal"), 1 :named("composable"))
    set $P101, $P5003
    .const 'Sub' $P5004 = 'cuid_15_1346277574.467' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_16_1346277574.467' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_17_1346277574.467' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_18_1346277574.467' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_19_1346277574.467' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_20_1346277574.467' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_21_1346277574.467' 
    capture_lex $P5010
    .const 'Sub' $P5011 = 'cuid_22_1346277574.467' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_23_1346277574.467' 
    capture_lex $P5012
    .const 'Sub' $P5013 = 'cuid_24_1346277574.467' 
    capture_lex $P5013
    .const 'Sub' $P5014 = 'cuid_25_1346277574.467' 
    capture_lex $P5014
    .const 'Sub' $P5015 = 'cuid_26_1346277574.467' 
    capture_lex $P5015
    .const 'Sub' $P5016 = 'cuid_27_1346277574.467' 
    capture_lex $P5016
    .const 'Sub' $P5017 = 'cuid_28_1346277574.467' 
    capture_lex $P5017
    .const 'Sub' $P5018 = 'cuid_29_1346277574.467' 
    capture_lex $P5018
    .const 'Sub' $P5019 = 'cuid_30_1346277574.467' 
    capture_lex $P5019
    .const 'Sub' $P5020 = 'cuid_31_1346277574.467' 
    capture_lex $P5020
    .const 'Sub' $P5021 = 'cuid_32_1346277574.467' 
    capture_lex $P5021
    .const 'Sub' $P5022 = 'cuid_33_1346277574.467' 
    capture_lex $P5022
    .return ($P5022) 
.end
.HLL "nqp"
.namespace []
.sub "archetypes" :subid("cuid_15_1346277574.467") :anon :lex :outer("cuid_34_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 191
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    find_lex $P5001, "$archetypes"
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "new" :subid("cuid_16_1346277574.467") :anon :lex :outer("cuid_34_1346277574.467")
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
.sub "BUILD" :subid("cuid_17_1346277574.467") :anon :lex :outer("cuid_34_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 206
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("name") 
    .param pmc _lex_param_2 :named("instance_of") 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    .lex "$instance_of", _lex_param_2 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 3
    repr_bind_attr_obj $P5001, $P5002, "$!name", _lex_param_1
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 3
    repr_bind_attr_obj $P5003, $P5004, "$!instance_of", _lex_param_2
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 3
    new $P5007, 'Hash'
    repr_bind_attr_obj $P5005, $P5006, "%!attributes", $P5007
    nqp_decontainerize $P5008, _lex_param_0
    nqp_get_sc_object $P5009, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 3
    new $P5010, 'Hash'
    repr_bind_attr_obj $P5008, $P5009, "%!methods", $P5010
    nqp_decontainerize $P5011, _lex_param_0
    nqp_get_sc_object $P5012, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 3
    new $P5013, 'ResizablePMCArray'
    repr_bind_attr_obj $P5011, $P5012, "@!multi_methods_to_incorporate", $P5013
    nqp_decontainerize $P5014, _lex_param_0
    nqp_get_sc_object $P5015, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 3
    new $P5016, 'ResizablePMCArray'
    repr_bind_attr_obj $P5014, $P5015, "@!collisions", $P5016
    nqp_decontainerize $P5017, _lex_param_0
    nqp_get_sc_object $P5018, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 3
    new $P5019, 'ResizablePMCArray'
    repr_bind_attr_obj $P5017, $P5018, "@!roles", $P5019
    nqp_decontainerize $P5020, _lex_param_0
    nqp_get_sc_object $P5021, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 3
    new $P5022, 'ResizablePMCArray'
    repr_bind_attr_obj $P5020, $P5021, "@!role_typecheck_list", $P5022
    nqp_decontainerize $P5023, _lex_param_0
    nqp_get_sc_object $P5024, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 3
    box $P5025, 0
    repr_bind_attr_obj $P5023, $P5024, "$!composed", $P5025
    .return ($P5025) 
.end
.HLL "nqp"
.namespace []
.sub "new_type" :subid("cuid_18_1346277574.467") :anon :lex :outer("cuid_34_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 220
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("name") :optional 
    .param int haz_param_9 :opt_flag 
    .param pmc _lex_param_2 :named("instance_of") 
    if haz_param_9, default85
    box $P5005, "<anon>"
    set _lex_param_1, $P5005
  default85:
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
.sub "add_method" :subid("cuid_19_1346277574.467") :anon :lex :outer("cuid_34_1346277574.467")
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
    nqp_get_sc_object $P5002, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 3
    repr_get_attr_obj $P5003, $P5001, $P5002, "%!methods"
    set $S5001, _lex_param_2
    exists $I5001, $P5003[$S5001]
    box $P5006, $I5001
    set $P5005, $P5006
    unless $I5001 goto if28_end87 
.annotate 'line', 226
    set $S5003, _lex_param_2
    concat $S5002, "This role already has a method named ", $S5003
    box $P5004, $S5002
    die $P5004
    set $P5005, $P5004
  if28_end87:
    nqp_decontainerize $P5007, _lex_param_0
    nqp_get_sc_object $P5008, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 3
    repr_get_attr_obj $P5009, $P5007, $P5008, "%!methods"
    set $S5004, _lex_param_2
    set $P5009[$S5004], _lex_param_3
    .return (_lex_param_3) 
.end
.HLL "nqp"
.namespace []
.sub "add_multi_method" :subid("cuid_20_1346277574.467") :anon :lex :outer("cuid_34_1346277574.467")
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
    nqp_get_sc_object $P5003, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 3
    repr_get_attr_obj $P5004, $P5002, $P5003, "@!multi_methods_to_incorporate"
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 3
    repr_get_attr_obj $P5007, $P5005, $P5006, "@!multi_methods_to_incorporate"
    set $N5001, $P5007
    set $I5001, $N5001
    set $P5004[$I5001], $P101
    .return (_lex_param_3) 
.end
.HLL "nqp"
.namespace []
.sub "add_attribute" :subid("cuid_21_1346277574.467") :anon :lex :outer("cuid_34_1346277574.467")
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
    nqp_get_sc_object $P5004, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 3
    repr_get_attr_obj $P5005, $P5003, $P5004, "%!attributes"
    set $S5001, $P101
    exists $I5001, $P5005[$S5001]
    box $P5008, $I5001
    set $P5007, $P5008
    unless $I5001 goto if29_end89 
.annotate 'line', 242
    set $S5003, $P101
    concat $S5002, "This role already has an attribute named ", $S5003
    box $P5006, $S5002
    die $P5006
    set $P5007, $P5006
  if29_end89:
    nqp_decontainerize $P5009, _lex_param_0
    nqp_get_sc_object $P5010, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 3
    repr_get_attr_obj $P5011, $P5009, $P5010, "%!attributes"
    set $S5004, $P101
    set $P5011[$S5004], _lex_param_2
    .return (_lex_param_2) 
.end
.HLL "nqp"
.namespace []
.sub "add_parent" :subid("cuid_22_1346277574.467") :anon :lex :outer("cuid_34_1346277574.467")
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
.sub "add_role" :subid("cuid_23_1346277574.467") :anon :lex :outer("cuid_34_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 252
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$role", _lex_param_2 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 3
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!roles"
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 3
    repr_get_attr_obj $P5006, $P5004, $P5005, "@!roles"
    set $N5001, $P5006
    set $I5001, $N5001
    set $P5003[$I5001], _lex_param_2
    .return (_lex_param_2) 
.end
.HLL "nqp"
.namespace []
.sub "add_collision" :subid("cuid_24_1346277574.467") :anon :lex :outer("cuid_34_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 256
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$colliding_name", _lex_param_2 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 3
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!collisions"
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 3
    repr_get_attr_obj $P5006, $P5004, $P5005, "@!collisions"
    set $N5001, $P5006
    set $I5001, $N5001
    set $P5003[$I5001], _lex_param_2
    .return (_lex_param_2) 
.end
.HLL "nqp"
.namespace []
.sub "compose" :subid("cuid_25_1346277574.467") :anon :lex :outer("cuid_34_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 261
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5022 = 'cuid_140_1346277574.467' 
    capture_lex $P5022 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 3
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!roles"
    set $P5018, $P5003
    unless $P5003 goto if30_end91 
.annotate 'line', 264
    nqp_decontainerize $P5007, _lex_param_0
    nqp_get_sc_object $P5008, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 3
    repr_get_attr_obj $P5009, $P5007, $P5008, "@!roles"
    set $P5004, $P5009
    iter $P5006, $P5009
    new $P5011, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5011, for_handlers92
    push_eh $P5011
  for_next93:
    unless $P5006, for_done95
    shift $P5012, $P5006
  for_redo94:
    .const 'Sub' $P5010 = 'cuid_140_1346277574.467' 
    capture_lex $P5010
    $P5004 = $P5010($P5012)
    goto for_next93
  for_handlers92:
    .get_results ($P5011)
    pop_upto_eh $P5011
    getattribute $P5011, $P5011, 'type'
    eq $P5011, .CONTROL_LOOP_NEXT, for_next93
    eq $P5011, .CONTROL_LOOP_REDO, for_redo94
  for_done95:
    pop_eh 
.annotate 'line', 269
    nqp_get_sc_object $P5013, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 2
    nqp_decontainerize $P5014, _lex_param_0
    nqp_get_sc_object $P5015, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 3
    repr_get_attr_obj $P5016, $P5014, $P5015, "@!roles"
    $P5017 = $P5013."apply"(_lex_param_1, $P5016)
    set $P5018, $P5017
  if30_end91:
    nqp_decontainerize $P5019, _lex_param_0
    nqp_get_sc_object $P5020, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 3
    box $P5021, 1
    repr_bind_attr_obj $P5019, $P5020, "$!composed", $P5021
    .return (_lex_param_1) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_140_1346277574.467") :anon :lex :outer("cuid_25_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 265
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    nqp_get_sc_object $P5003, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 3
    repr_get_attr_obj $P5004, $P5001, $P5003, "@!role_typecheck_list"
    find_lex $P5006, "self"
    nqp_decontainerize $P5005, $P5006
    nqp_get_sc_object $P5007, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 3
    repr_get_attr_obj $P5008, $P5005, $P5007, "@!role_typecheck_list"
    set $N5001, $P5008
    set $I5001, $N5001
    set $P5004[$I5001], _lex_param_0
    find_lex $P5010, "self"
    nqp_decontainerize $P5009, $P5010
    nqp_get_sc_object $P5011, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 3
    repr_get_attr_obj $P5012, $P5009, $P5011, "@!role_typecheck_list"
    find_lex $P5014, "self"
    nqp_decontainerize $P5013, $P5014
    nqp_get_sc_object $P5015, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 3
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
.sub "methods" :subid("cuid_26_1346277574.467") :anon :lex :outer("cuid_34_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 282
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :named("local") :optional 
    .param int haz_param_10 :opt_flag 
    .const 'Sub' $P5012 = 'cuid_141_1346277574.467' 
    capture_lex $P5012 
    if haz_param_10, default100
    null $P5011
    set _lex_param_2, $P5011
  default100:
    .lex "@meths", $P101 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$local", _lex_param_2 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 3
    repr_get_attr_obj $P5007, $P5005, $P5006, "%!methods"
    set $P5002, $P5007
    iter $P5004, $P5007
    new $P5009, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5009, for_handlers96
    push_eh $P5009
  for_next97:
    unless $P5004, for_done99
    shift $P5010, $P5004
  for_redo98:
    .const 'Sub' $P5008 = 'cuid_141_1346277574.467' 
    capture_lex $P5008
    $P5002 = $P5008($P5010)
    goto for_next97
  for_handlers96:
    .get_results ($P5009)
    pop_upto_eh $P5009
    getattribute $P5009, $P5009, 'type'
    eq $P5009, .CONTROL_LOOP_NEXT, for_next97
    eq $P5009, .CONTROL_LOOP_REDO, for_redo98
  for_done99:
    pop_eh 
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_141_1346277574.467") :anon :lex :outer("cuid_26_1346277574.467")
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
.sub "method_table" :subid("cuid_27_1346277574.467") :anon :lex :outer("cuid_34_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 290
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 3
    repr_get_attr_obj $P5003, $P5001, $P5002, "%!methods"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "collisions" :subid("cuid_28_1346277574.467") :anon :lex :outer("cuid_34_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 294
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 3
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!collisions"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "name" :subid("cuid_29_1346277574.467") :anon :lex :outer("cuid_34_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 298
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 3
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!name"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "attributes" :subid("cuid_30_1346277574.467") :anon :lex :outer("cuid_34_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 302
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :named("local") :optional 
    .param int haz_param_11 :opt_flag 
    .const 'Sub' $P5012 = 'cuid_142_1346277574.467' 
    capture_lex $P5012 
    if haz_param_11, default105
    null $P5011
    set _lex_param_2, $P5011
  default105:
    .lex "@attrs", $P101 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$local", _lex_param_2 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 3
    repr_get_attr_obj $P5007, $P5005, $P5006, "%!attributes"
    set $P5002, $P5007
    iter $P5004, $P5007
    new $P5009, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5009, for_handlers101
    push_eh $P5009
  for_next102:
    unless $P5004, for_done104
    shift $P5010, $P5004
  for_redo103:
    .const 'Sub' $P5008 = 'cuid_142_1346277574.467' 
    capture_lex $P5008
    $P5002 = $P5008($P5010)
    goto for_next102
  for_handlers101:
    .get_results ($P5009)
    pop_upto_eh $P5009
    getattribute $P5009, $P5009, 'type'
    eq $P5009, .CONTROL_LOOP_NEXT, for_next102
    eq $P5009, .CONTROL_LOOP_REDO, for_redo103
  for_done104:
    pop_eh 
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_142_1346277574.467") :anon :lex :outer("cuid_30_1346277574.467")
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
.sub "roles" :subid("cuid_31_1346277574.467") :anon :lex :outer("cuid_34_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 310
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 3
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!roles"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "role_typecheck_list" :subid("cuid_32_1346277574.467") :anon :lex :outer("cuid_34_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 314
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 3
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!role_typecheck_list"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "instance_of" :subid("cuid_33_1346277574.467") :anon :lex :outer("cuid_34_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 318
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 3
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!instance_of"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_36_1346277574.467") :anon :lex :outer("cuid_1_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 324
    .const 'Sub' $P5004 = 'cuid_143_1346277574.467' 
    capture_lex $P5004 
    .const 'Sub' $P5004 = 'cuid_145_1346277574.467' 
    capture_lex $P5004 
    .const 'Sub' $P5004 = 'cuid_35_1346277574.467' 
    capture_lex $P5004 
    .lex "&has_method", $P101 
    .lex "&has_attribute", $P102 
    .lex "$?PACKAGE", $P103 
    .lex "$?CLASS", $P104 
    .const 'Sub' $P5001 = 'cuid_143_1346277574.467' 
    capture_lex $P5001
    set $P101, $P5001
    .const 'Sub' $P5002 = 'cuid_145_1346277574.467' 
    capture_lex $P5002
    set $P102, $P5002
    .const 'Sub' $P5003 = 'cuid_35_1346277574.467' 
    capture_lex $P5003
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "has_method" :subid("cuid_143_1346277574.467") :anon :lex :outer("cuid_36_1346277574.467")
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
.sub "has_attribute" :subid("cuid_145_1346277574.467") :anon :lex :outer("cuid_36_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 331
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5012 = 'cuid_144_1346277574.467' 
    capture_lex $P5012 
    .lex "@attributes", $P101 
    .lex "$target", _lex_param_0 
    .lex "$name", _lex_param_1 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    root_new $P102, ['parrot';'Continuation']
    set_label $P102, lexotic_106
    .lex "RETURN", $P102
.annotate 'line', 332
    get_how $P5002, _lex_param_0
    $P5003 = $P5002."attributes"(_lex_param_0, 1 :named("local"))
    set $P101, $P5003
    set $P5004, $P101
    iter $P5006, $P101
    new $P5008, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5008, for_handlers110
    push_eh $P5008
  for_next111:
    unless $P5006, for_done113
    shift $P5009, $P5006
  for_redo112:
    .const 'Sub' $P5007 = 'cuid_144_1346277574.467' 
    capture_lex $P5007
    $P5004 = $P5007($P5009)
    goto for_next111
  for_handlers110:
    .get_results ($P5008)
    pop_upto_eh $P5008
    getattribute $P5008, $P5008, 'type'
    eq $P5008, .CONTROL_LOOP_NEXT, for_next111
    eq $P5008, .CONTROL_LOOP_REDO, for_redo112
  for_done113:
    pop_eh 
    find_lex $P5010, "RETURN"
    $P5011 = $P5010(0)
    goto lexotic_107
  lexotic_106:
    .get_results ($P5011)
  lexotic_107:
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_144_1346277574.467") :anon :lex :outer("cuid_145_1346277574.467")
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
    unless $I5001 goto if31_end109 
    find_lex $P5003, "RETURN"
    $P5004 = $P5003(1)
    set $P5005, $P5004
  if31_end109:
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "apply" :subid("cuid_35_1346277574.467") :anon :lex :outer("cuid_36_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 339
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .const 'Sub' $P5049 = 'cuid_146_1346277574.467' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_147_1346277574.467' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_148_1346277574.467' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_149_1346277574.467' 
    capture_lex $P5049 
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
    unless $I5001 goto if32_else114 
.annotate 'line', 344
    set $P5007, _lex_param_2[0]
    unless_null $P5007, fallback116
    null $P5008
    set $P5007, $P5008
  fallback116:
    set $P101, $P5007
    get_how $P5009, $P101
    set $P102, $P5009
    set $P5027, $P102
    goto if32_end115
  if32_else114:
.annotate 'line', 348
.annotate 'line', 349
    nqp_get_sc_object $P5010, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 3
    find_lex $P5013, "$?PACKAGE"
    get_who $P5012, $P5013
    set $P5011, $P5012["NQPMu"]
    unless_null $P5011, fallback117
    get_hll_global $P5016, "GLOBAL"
    get_who $P5015, $P5016
    set $P5014, $P5015["NQPMu"]
    unless_null $P5014, vivi_33118
    null $P5017
    set $P5014, $P5017
  vivi_33118:
    set $P5011, $P5014
  fallback117:
    $P5018 = $P5010."new_type"($P5011 :named("instance_of"))
    set $P101, $P5018
    get_how $P5019, $P101
    set $P102, $P5019
    set $P5020, _lex_param_2
    iter $P5022, _lex_param_2
    new $P5024, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5024, for_handlers119
    push_eh $P5024
  for_next120:
    unless $P5022, for_done122
    shift $P5025, $P5022
  for_redo121:
    .const 'Sub' $P5023 = 'cuid_146_1346277574.467' 
    capture_lex $P5023
    $P5020 = $P5023($P5025)
    goto for_next120
  for_handlers119:
    .get_results ($P5024)
    pop_upto_eh $P5024
    getattribute $P5024, $P5024, 'type'
    eq $P5024, .CONTROL_LOOP_NEXT, for_next120
    eq $P5024, .CONTROL_LOOP_REDO, for_redo121
  for_done122:
    pop_eh 
.annotate 'line', 354
    $P5026 = $P102."compose"($P101)
    set $P101, $P5026
    set $P5027, $P101
  if32_end115:
.annotate 'line', 358
    $P5028 = $P102."collisions"($P101)
    set $P103, $P5028
    set $P5029, $P103
    iter $P5031, $P103
    new $P5033, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5033, for_handlers125
    push_eh $P5033
  for_next126:
    unless $P5031, for_done128
    shift $P5034, $P5031
  for_redo127:
    .const 'Sub' $P5032 = 'cuid_147_1346277574.467' 
    capture_lex $P5032
    $P5029 = $P5032($P5034)
    goto for_next126
  for_handlers125:
    .get_results ($P5033)
    pop_upto_eh $P5033
    getattribute $P5033, $P5033, 'type'
    eq $P5033, .CONTROL_LOOP_NEXT, for_next126
    eq $P5033, .CONTROL_LOOP_REDO, for_redo127
  for_done128:
    pop_eh 
.annotate 'line', 367
    $P5035 = $P102."methods"($P101)
    set $P104, $P5035
    set $P5036, $P104
    iter $P5038, $P104
    new $P5040, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5040, for_handlers131
    push_eh $P5040
  for_next132:
    unless $P5038, for_done134
    shift $P5041, $P5038
  for_redo133:
    .const 'Sub' $P5039 = 'cuid_148_1346277574.467' 
    capture_lex $P5039
    $P5036 = $P5039($P5041)
    goto for_next132
  for_handlers131:
    .get_results ($P5040)
    pop_upto_eh $P5040
    getattribute $P5040, $P5040, 'type'
    eq $P5040, .CONTROL_LOOP_NEXT, for_next132
    eq $P5040, .CONTROL_LOOP_REDO, for_redo133
  for_done134:
    pop_eh 
.annotate 'line', 375
    $P5042 = $P102."attributes"($P101)
    set $P105, $P5042
    set $P5043, $P105
    iter $P5045, $P105
    new $P5047, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5047, for_handlers137
    push_eh $P5047
  for_next138:
    unless $P5045, for_done140
    shift $P5048, $P5045
  for_redo139:
    .const 'Sub' $P5046 = 'cuid_149_1346277574.467' 
    capture_lex $P5046
    $P5043 = $P5046($P5048)
    goto for_next138
  for_handlers137:
    .get_results ($P5047)
    pop_upto_eh $P5047
    getattribute $P5047, $P5047, 'type'
    eq $P5047, .CONTROL_LOOP_NEXT, for_next138
    eq $P5047, .CONTROL_LOOP_REDO, for_redo139
  for_done140:
    pop_eh 
    set $P106[0], $P101
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_146_1346277574.467") :anon :lex :outer("cuid_35_1346277574.467")
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
.sub "" :subid("cuid_147_1346277574.467") :anon :lex :outer("cuid_35_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 359
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 360
    find_lex $P5001, "$target"
    set $S5001, _lex_param_0
    $P5002 = "&has_method"($P5001, $S5001, 1)
    set $P5008, $P5002
    if $P5002 goto unless34_end124 
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
  unless34_end124:
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_148_1346277574.467") :anon :lex :outer("cuid_35_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 368
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 369
    find_lex $P5001, "$target"
    set $S5001, _lex_param_0
    $P5002 = "&has_method"($P5001, $S5001, 0)
    set $P5007, $P5002
    if $P5002 goto unless35_end130 
.annotate 'line', 370
    find_lex $P5004, "$target"
    get_how $P5003, $P5004
    find_lex $P5005, "$target"
    set $S5002, _lex_param_0
    $P5006 = $P5003."add_method"($P5005, $S5002, _lex_param_0)
    set $P5007, $P5006
  unless35_end130:
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_149_1346277574.467") :anon :lex :outer("cuid_35_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 376
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 377
    find_lex $P5001, "$target"
    $P5002 = _lex_param_0."name"()
    $P5003 = "&has_attribute"($P5001, $P5002)
    set $P5010, $P5003
    unless $P5003 goto if36_end136 
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
  if36_end136:
.annotate 'line', 381
    find_lex $P5012, "$target"
    get_how $P5011, $P5012
    find_lex $P5013, "$target"
    $P5014 = $P5011."add_attribute"($P5013, _lex_param_0)
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_55_1346277574.467") :anon :lex :outer("cuid_1_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 397
    .const 'Sub' $P5022 = 'cuid_37_1346277574.467' 
    capture_lex $P5022 
    .const 'Sub' $P5022 = 'cuid_38_1346277574.467' 
    capture_lex $P5022 
    .const 'Sub' $P5022 = 'cuid_39_1346277574.467' 
    capture_lex $P5022 
    .const 'Sub' $P5022 = 'cuid_40_1346277574.467' 
    capture_lex $P5022 
    .const 'Sub' $P5022 = 'cuid_41_1346277574.467' 
    capture_lex $P5022 
    .const 'Sub' $P5022 = 'cuid_42_1346277574.467' 
    capture_lex $P5022 
    .const 'Sub' $P5022 = 'cuid_43_1346277574.467' 
    capture_lex $P5022 
    .const 'Sub' $P5022 = 'cuid_44_1346277574.467' 
    capture_lex $P5022 
    .const 'Sub' $P5022 = 'cuid_45_1346277574.467' 
    capture_lex $P5022 
    .const 'Sub' $P5022 = 'cuid_46_1346277574.467' 
    capture_lex $P5022 
    .const 'Sub' $P5022 = 'cuid_47_1346277574.467' 
    capture_lex $P5022 
    .const 'Sub' $P5022 = 'cuid_48_1346277574.467' 
    capture_lex $P5022 
    .const 'Sub' $P5022 = 'cuid_49_1346277574.467' 
    capture_lex $P5022 
    .const 'Sub' $P5022 = 'cuid_50_1346277574.467' 
    capture_lex $P5022 
    .const 'Sub' $P5022 = 'cuid_51_1346277574.467' 
    capture_lex $P5022 
    .const 'Sub' $P5022 = 'cuid_52_1346277574.467' 
    capture_lex $P5022 
    .const 'Sub' $P5022 = 'cuid_53_1346277574.467' 
    capture_lex $P5022 
    .const 'Sub' $P5022 = 'cuid_54_1346277574.467' 
    capture_lex $P5022 
    .lex "$archetypes", $P101 
    .lex "$?PACKAGE", $P102 
    .lex "$?CLASS", $P103 
    null $P5001
    set $P101, $P5001
.annotate 'line', 421
    nqp_get_sc_object $P5002, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 1
    $P5003 = $P5002."new"(1 :named("nominal"), 1 :named("composable"), 1 :named("parametric"))
    set $P101, $P5003
    .const 'Sub' $P5004 = 'cuid_37_1346277574.467' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_38_1346277574.467' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_39_1346277574.467' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_40_1346277574.467' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_41_1346277574.467' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_42_1346277574.467' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_43_1346277574.467' 
    capture_lex $P5010
    .const 'Sub' $P5011 = 'cuid_44_1346277574.467' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_45_1346277574.467' 
    capture_lex $P5012
    .const 'Sub' $P5013 = 'cuid_46_1346277574.467' 
    capture_lex $P5013
    .const 'Sub' $P5014 = 'cuid_47_1346277574.467' 
    capture_lex $P5014
    .const 'Sub' $P5015 = 'cuid_48_1346277574.467' 
    capture_lex $P5015
    .const 'Sub' $P5016 = 'cuid_49_1346277574.467' 
    capture_lex $P5016
    .const 'Sub' $P5017 = 'cuid_50_1346277574.467' 
    capture_lex $P5017
    .const 'Sub' $P5018 = 'cuid_51_1346277574.467' 
    capture_lex $P5018
    .const 'Sub' $P5019 = 'cuid_52_1346277574.467' 
    capture_lex $P5019
    .const 'Sub' $P5020 = 'cuid_53_1346277574.467' 
    capture_lex $P5020
    .const 'Sub' $P5021 = 'cuid_54_1346277574.467' 
    capture_lex $P5021
    .return ($P5021) 
.end
.HLL "nqp"
.namespace []
.sub "archetypes" :subid("cuid_37_1346277574.467") :anon :lex :outer("cuid_55_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 422
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    find_lex $P5001, "$archetypes"
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "new" :subid("cuid_38_1346277574.467") :anon :lex :outer("cuid_55_1346277574.467")
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
.sub "BUILD" :subid("cuid_39_1346277574.467") :anon :lex :outer("cuid_55_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 437
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("name") 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 5
    repr_bind_attr_obj $P5001, $P5002, "$!name", _lex_param_1
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 5
    new $P5005, 'Hash'
    repr_bind_attr_obj $P5003, $P5004, "%!attributes", $P5005
    nqp_decontainerize $P5006, _lex_param_0
    nqp_get_sc_object $P5007, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 5
    new $P5008, 'Hash'
    repr_bind_attr_obj $P5006, $P5007, "%!methods", $P5008
    nqp_decontainerize $P5009, _lex_param_0
    nqp_get_sc_object $P5010, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 5
    new $P5011, 'ResizablePMCArray'
    repr_bind_attr_obj $P5009, $P5010, "@!multi_methods_to_incorporate", $P5011
    nqp_decontainerize $P5012, _lex_param_0
    nqp_get_sc_object $P5013, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 5
    new $P5014, 'ResizablePMCArray'
    repr_bind_attr_obj $P5012, $P5013, "@!roles", $P5014
    nqp_decontainerize $P5015, _lex_param_0
    nqp_get_sc_object $P5016, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 5
    box $P5017, 0
    repr_bind_attr_obj $P5015, $P5016, "$!composed", $P5017
    .return ($P5017) 
.end
.HLL "nqp"
.namespace []
.sub "new_type" :subid("cuid_40_1346277574.467") :anon :lex :outer("cuid_55_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 448
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("name") :optional 
    .param int haz_param_12 :opt_flag 
    if haz_param_12, default141
    box $P5006, "<anon>"
    set _lex_param_1, $P5006
  default141:
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
.sub "set_body_block" :subid("cuid_41_1346277574.467") :anon :lex :outer("cuid_55_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 453
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$body_block", _lex_param_2 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 5
    repr_bind_attr_obj $P5001, $P5002, "$!body_block", _lex_param_2
    .return (_lex_param_2) 
.end
.HLL "nqp"
.namespace []
.sub "add_method" :subid("cuid_42_1346277574.467") :anon :lex :outer("cuid_55_1346277574.467")
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
    nqp_get_sc_object $P5002, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 5
    repr_get_attr_obj $P5003, $P5001, $P5002, "%!methods"
    set $S5001, _lex_param_2
    exists $I5001, $P5003[$S5001]
    box $P5006, $I5001
    set $P5005, $P5006
    unless $I5001 goto if37_end143 
.annotate 'line', 458
    set $S5003, _lex_param_2
    concat $S5002, "This role already has a method named ", $S5003
    box $P5004, $S5002
    die $P5004
    set $P5005, $P5004
  if37_end143:
    nqp_decontainerize $P5007, _lex_param_0
    nqp_get_sc_object $P5008, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 5
    repr_get_attr_obj $P5009, $P5007, $P5008, "%!methods"
    set $S5004, _lex_param_2
    set $P5009[$S5004], _lex_param_3
    .return (_lex_param_3) 
.end
.HLL "nqp"
.namespace []
.sub "add_multi_method" :subid("cuid_43_1346277574.467") :anon :lex :outer("cuid_55_1346277574.467")
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
    nqp_get_sc_object $P5003, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 5
    repr_get_attr_obj $P5004, $P5002, $P5003, "@!multi_methods_to_incorporate"
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 5
    repr_get_attr_obj $P5007, $P5005, $P5006, "@!multi_methods_to_incorporate"
    set $N5001, $P5007
    set $I5001, $N5001
    set $P5004[$I5001], $P101
    .return (_lex_param_3) 
.end
.HLL "nqp"
.namespace []
.sub "add_attribute" :subid("cuid_44_1346277574.467") :anon :lex :outer("cuid_55_1346277574.467")
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
    nqp_get_sc_object $P5004, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 5
    repr_get_attr_obj $P5005, $P5003, $P5004, "%!attributes"
    set $S5001, $P101
    exists $I5001, $P5005[$S5001]
    box $P5008, $I5001
    set $P5007, $P5008
    unless $I5001 goto if38_end145 
.annotate 'line', 474
    set $S5003, $P101
    concat $S5002, "This role already has an attribute named ", $S5003
    box $P5006, $S5002
    die $P5006
    set $P5007, $P5006
  if38_end145:
    nqp_decontainerize $P5009, _lex_param_0
    nqp_get_sc_object $P5010, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 5
    repr_get_attr_obj $P5011, $P5009, $P5010, "%!attributes"
    set $S5004, $P101
    set $P5011[$S5004], _lex_param_2
    .return (_lex_param_2) 
.end
.HLL "nqp"
.namespace []
.sub "add_parent" :subid("cuid_45_1346277574.467") :anon :lex :outer("cuid_55_1346277574.467")
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
.sub "add_role" :subid("cuid_46_1346277574.467") :anon :lex :outer("cuid_55_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 484
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$role", _lex_param_2 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 5
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!roles"
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 5
    repr_get_attr_obj $P5006, $P5004, $P5005, "@!roles"
    set $N5001, $P5006
    set $I5001, $N5001
    set $P5003[$I5001], _lex_param_2
    .return (_lex_param_2) 
.end
.HLL "nqp"
.namespace []
.sub "compose" :subid("cuid_47_1346277574.467") :anon :lex :outer("cuid_55_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 489
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 5
    box $P5003, 1
    repr_bind_attr_obj $P5001, $P5002, "$!composed", $P5003
    .return (_lex_param_1) 
.end
.HLL "nqp"
.namespace []
.sub "parametric" :subid("cuid_48_1346277574.467") :anon :lex :outer("cuid_55_1346277574.467")
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
.sub "specialize" :subid("cuid_49_1346277574.467") :anon :lex :outer("cuid_55_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 506
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .const 'Sub' $P5051 = 'cuid_150_1346277574.467' 
    capture_lex $P5051 
    .const 'Sub' $P5051 = 'cuid_151_1346277574.467' 
    capture_lex $P5051 
    .const 'Sub' $P5051 = 'cuid_152_1346277574.467' 
    capture_lex $P5051 
    .const 'Sub' $P5051 = 'cuid_153_1346277574.467' 
    capture_lex $P5051 
    .lex "$irole", $P101 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$class_arg", _lex_param_2 
    null $P5001
    set $P101, $P5001
    root_new $P102, ['parrot';'Continuation']
    set_label $P102, lexotic_146
    .lex "RETURN", $P102
.annotate 'line', 509
    nqp_decontainerize $P5002, _lex_param_0
    nqp_get_sc_object $P5003, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 5
    repr_get_attr_obj $P5004, $P5002, $P5003, "$!body_block"
    $P5005 = $P5004(_lex_param_2)
.annotate 'line', 512
    nqp_get_sc_object $P5006, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 3
    nqp_decontainerize $P5007, _lex_param_0
    nqp_get_sc_object $P5008, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 5
    repr_get_attr_obj $P5009, $P5007, $P5008, "$!name"
    $P5010 = $P5006."new_type"($P5009 :named("name"), _lex_param_1 :named("instance_of"))
    set $P101, $P5010
    nqp_decontainerize $P5014, _lex_param_0
    nqp_get_sc_object $P5015, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 5
    repr_get_attr_obj $P5016, $P5014, $P5015, "%!attributes"
    set $P5011, $P5016
    iter $P5013, $P5016
    new $P5018, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5018, for_handlers148
    push_eh $P5018
  for_next149:
    unless $P5013, for_done151
    shift $P5019, $P5013
  for_redo150:
    .const 'Sub' $P5017 = 'cuid_150_1346277574.467' 
    capture_lex $P5017
    $P5011 = $P5017($P5019)
    goto for_next149
  for_handlers148:
    .get_results ($P5018)
    pop_upto_eh $P5018
    getattribute $P5018, $P5018, 'type'
    eq $P5018, .CONTROL_LOOP_NEXT, for_next149
    eq $P5018, .CONTROL_LOOP_REDO, for_redo150
  for_done151:
    pop_eh 
    nqp_decontainerize $P5023, _lex_param_0
    nqp_get_sc_object $P5024, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 5
    repr_get_attr_obj $P5025, $P5023, $P5024, "%!methods"
    set $P5020, $P5025
    iter $P5022, $P5025
    new $P5027, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5027, for_handlers152
    push_eh $P5027
  for_next153:
    unless $P5022, for_done155
    shift $P5028, $P5022
  for_redo154:
    .const 'Sub' $P5026 = 'cuid_151_1346277574.467' 
    capture_lex $P5026
    $P5020 = $P5026($P5028)
    goto for_next153
  for_handlers152:
    .get_results ($P5027)
    pop_upto_eh $P5027
    getattribute $P5027, $P5027, 'type'
    eq $P5027, .CONTROL_LOOP_NEXT, for_next153
    eq $P5027, .CONTROL_LOOP_REDO, for_redo154
  for_done155:
    pop_eh 
    nqp_decontainerize $P5032, _lex_param_0
    nqp_get_sc_object $P5033, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 5
    repr_get_attr_obj $P5034, $P5032, $P5033, "@!multi_methods_to_incorporate"
    set $P5029, $P5034
    iter $P5031, $P5034
    new $P5036, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5036, for_handlers158
    push_eh $P5036
  for_next159:
    unless $P5031, for_done161
    shift $P5037, $P5031
  for_redo160:
    .const 'Sub' $P5035 = 'cuid_152_1346277574.467' 
    capture_lex $P5035
    $P5029 = $P5035($P5037)
    goto for_next159
  for_handlers158:
    .get_results ($P5036)
    pop_upto_eh $P5036
    getattribute $P5036, $P5036, 'type'
    eq $P5036, .CONTROL_LOOP_NEXT, for_next159
    eq $P5036, .CONTROL_LOOP_REDO, for_redo160
  for_done161:
    pop_eh 
    nqp_decontainerize $P5041, _lex_param_0
    nqp_get_sc_object $P5042, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 5
    repr_get_attr_obj $P5043, $P5041, $P5042, "@!roles"
    set $P5038, $P5043
    iter $P5040, $P5043
    new $P5045, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5045, for_handlers162
    push_eh $P5045
  for_next163:
    unless $P5040, for_done165
    shift $P5046, $P5040
  for_redo164:
    .const 'Sub' $P5044 = 'cuid_153_1346277574.467' 
    capture_lex $P5044
    $P5038 = $P5044($P5046)
    goto for_next163
  for_handlers162:
    .get_results ($P5045)
    pop_upto_eh $P5045
    getattribute $P5045, $P5045, 'type'
    eq $P5045, .CONTROL_LOOP_NEXT, for_next163
    eq $P5045, .CONTROL_LOOP_REDO, for_redo164
  for_done165:
    pop_eh 
.annotate 'line', 535
    get_how $P5047, $P101
    $P5048 = $P5047."compose"($P101)
    find_lex $P5049, "RETURN"
    $P5050 = $P5049($P101)
    goto lexotic_147
  lexotic_146:
    .get_results ($P5050)
  lexotic_147:
    .return ($P5050) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_150_1346277574.467") :anon :lex :outer("cuid_49_1346277574.467")
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
.sub "" :subid("cuid_151_1346277574.467") :anon :lex :outer("cuid_49_1346277574.467")
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
.sub "" :subid("cuid_152_1346277574.467") :anon :lex :outer("cuid_49_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 524
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 525
    find_lex $P5002, "$irole"
    get_how $P5001, $P5002
    find_lex $P5003, "$irole"
    set $P5004, _lex_param_0["name"]
    unless_null $P5004, fallback156
    null $P5005
    set $P5004, $P5005
  fallback156:
    set $P5006, _lex_param_0["code"]
    unless_null $P5006, fallback157
    null $P5007
    set $P5006, $P5007
  fallback157:
    $P5008 = "&reify_method"($P5006)
    $P5009 = $P5001."add_multi_method"($P5003, $P5004, $P5008)
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_153_1346277574.467") :anon :lex :outer("cuid_49_1346277574.467")
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
.sub "methods" :subid("cuid_50_1346277574.467") :anon :lex :outer("cuid_55_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 543
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :named("local") :optional 
    .param int haz_param_13 :opt_flag 
    .const 'Sub' $P5012 = 'cuid_154_1346277574.467' 
    capture_lex $P5012 
    if haz_param_13, default170
    null $P5011
    set _lex_param_2, $P5011
  default170:
    .lex "@meths", $P101 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$local", _lex_param_2 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 5
    repr_get_attr_obj $P5007, $P5005, $P5006, "%!methods"
    set $P5002, $P5007
    iter $P5004, $P5007
    new $P5009, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5009, for_handlers166
    push_eh $P5009
  for_next167:
    unless $P5004, for_done169
    shift $P5010, $P5004
  for_redo168:
    .const 'Sub' $P5008 = 'cuid_154_1346277574.467' 
    capture_lex $P5008
    $P5002 = $P5008($P5010)
    goto for_next167
  for_handlers166:
    .get_results ($P5009)
    pop_upto_eh $P5009
    getattribute $P5009, $P5009, 'type'
    eq $P5009, .CONTROL_LOOP_NEXT, for_next167
    eq $P5009, .CONTROL_LOOP_REDO, for_redo168
  for_done169:
    pop_eh 
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_154_1346277574.467") :anon :lex :outer("cuid_50_1346277574.467")
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
.sub "method_table" :subid("cuid_51_1346277574.467") :anon :lex :outer("cuid_55_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 551
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 5
    repr_get_attr_obj $P5003, $P5001, $P5002, "%!methods"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "name" :subid("cuid_52_1346277574.467") :anon :lex :outer("cuid_55_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 555
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 5
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!name"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "attributes" :subid("cuid_53_1346277574.467") :anon :lex :outer("cuid_55_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 559
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :named("local") :optional 
    .param int haz_param_14 :opt_flag 
    .const 'Sub' $P5012 = 'cuid_155_1346277574.467' 
    capture_lex $P5012 
    if haz_param_14, default175
    null $P5011
    set _lex_param_2, $P5011
  default175:
    .lex "@attrs", $P101 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$local", _lex_param_2 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 5
    repr_get_attr_obj $P5007, $P5005, $P5006, "%!attributes"
    set $P5002, $P5007
    iter $P5004, $P5007
    new $P5009, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5009, for_handlers171
    push_eh $P5009
  for_next172:
    unless $P5004, for_done174
    shift $P5010, $P5004
  for_redo173:
    .const 'Sub' $P5008 = 'cuid_155_1346277574.467' 
    capture_lex $P5008
    $P5002 = $P5008($P5010)
    goto for_next172
  for_handlers171:
    .get_results ($P5009)
    pop_upto_eh $P5009
    getattribute $P5009, $P5009, 'type'
    eq $P5009, .CONTROL_LOOP_NEXT, for_next172
    eq $P5009, .CONTROL_LOOP_REDO, for_redo173
  for_done174:
    pop_eh 
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_155_1346277574.467") :anon :lex :outer("cuid_53_1346277574.467")
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
.sub "roles" :subid("cuid_54_1346277574.467") :anon :lex :outer("cuid_55_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 567
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 5
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!roles"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_98_1346277574.467") :anon :lex :outer("cuid_1_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 577
    .const 'Sub' $P5049 = 'cuid_158_1346277574.467' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_163_1346277574.467' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_56_1346277574.467' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_57_1346277574.467' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_58_1346277574.467' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_59_1346277574.467' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_60_1346277574.467' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_61_1346277574.467' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_62_1346277574.467' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_63_1346277574.467' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_64_1346277574.467' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_65_1346277574.467' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_66_1346277574.467' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_67_1346277574.467' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_68_1346277574.467' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_69_1346277574.467' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_70_1346277574.467' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_71_1346277574.467' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_72_1346277574.467' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_73_1346277574.467' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_74_1346277574.467' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_75_1346277574.467' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_76_1346277574.467' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_77_1346277574.467' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_78_1346277574.467' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_79_1346277574.467' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_80_1346277574.467' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_81_1346277574.467' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_82_1346277574.467' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_83_1346277574.467' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_84_1346277574.467' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_85_1346277574.467' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_86_1346277574.467' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_87_1346277574.467' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_88_1346277574.467' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_89_1346277574.467' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_90_1346277574.467' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_91_1346277574.467' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_92_1346277574.467' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_93_1346277574.467' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_94_1346277574.467' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_95_1346277574.467' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_96_1346277574.467' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_97_1346277574.467' 
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
    .const 'Sub' $P5003 = 'cuid_158_1346277574.467' 
    capture_lex $P5003
    set $P103, $P5003
    .const 'Sub' $P5004 = 'cuid_163_1346277574.467' 
    capture_lex $P5004
    set $P104, $P5004
.annotate 'line', 626
    nqp_get_sc_object $P5005, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 1
    $P5006 = $P5005."new"(1 :named("nominal"), 1 :named("inheritable"))
    set $P102, $P5006
    .const 'Sub' $P5007 = 'cuid_56_1346277574.467' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_57_1346277574.467' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_58_1346277574.467' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_59_1346277574.467' 
    capture_lex $P5010
    .const 'Sub' $P5011 = 'cuid_60_1346277574.467' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_61_1346277574.467' 
    capture_lex $P5012
    .const 'Sub' $P5013 = 'cuid_62_1346277574.467' 
    capture_lex $P5013
    .const 'Sub' $P5014 = 'cuid_63_1346277574.467' 
    capture_lex $P5014
    .const 'Sub' $P5015 = 'cuid_64_1346277574.467' 
    capture_lex $P5015
    .const 'Sub' $P5016 = 'cuid_65_1346277574.467' 
    capture_lex $P5016
    .const 'Sub' $P5017 = 'cuid_66_1346277574.467' 
    capture_lex $P5017
    .const 'Sub' $P5018 = 'cuid_67_1346277574.467' 
    capture_lex $P5018
    .const 'Sub' $P5019 = 'cuid_68_1346277574.467' 
    capture_lex $P5019
    .const 'Sub' $P5020 = 'cuid_69_1346277574.467' 
    capture_lex $P5020
    .const 'Sub' $P5021 = 'cuid_70_1346277574.467' 
    capture_lex $P5021
    .const 'Sub' $P5022 = 'cuid_71_1346277574.467' 
    capture_lex $P5022
    .const 'Sub' $P5023 = 'cuid_72_1346277574.467' 
    capture_lex $P5023
    .const 'Sub' $P5024 = 'cuid_73_1346277574.467' 
    capture_lex $P5024
    .const 'Sub' $P5025 = 'cuid_74_1346277574.467' 
    capture_lex $P5025
    .const 'Sub' $P5026 = 'cuid_75_1346277574.467' 
    capture_lex $P5026
    .const 'Sub' $P5027 = 'cuid_76_1346277574.467' 
    capture_lex $P5027
    .const 'Sub' $P5028 = 'cuid_77_1346277574.467' 
    capture_lex $P5028
    .const 'Sub' $P5029 = 'cuid_78_1346277574.467' 
    capture_lex $P5029
    .const 'Sub' $P5030 = 'cuid_79_1346277574.467' 
    capture_lex $P5030
    .const 'Sub' $P5031 = 'cuid_80_1346277574.467' 
    capture_lex $P5031
    .const 'Sub' $P5032 = 'cuid_81_1346277574.467' 
    capture_lex $P5032
    .const 'Sub' $P5033 = 'cuid_82_1346277574.467' 
    capture_lex $P5033
    .const 'Sub' $P5034 = 'cuid_83_1346277574.467' 
    capture_lex $P5034
    .const 'Sub' $P5035 = 'cuid_84_1346277574.467' 
    capture_lex $P5035
    .const 'Sub' $P5036 = 'cuid_85_1346277574.467' 
    capture_lex $P5036
    .const 'Sub' $P5037 = 'cuid_86_1346277574.467' 
    capture_lex $P5037
    .const 'Sub' $P5038 = 'cuid_87_1346277574.467' 
    capture_lex $P5038
    .const 'Sub' $P5039 = 'cuid_88_1346277574.467' 
    capture_lex $P5039
    .const 'Sub' $P5040 = 'cuid_89_1346277574.467' 
    capture_lex $P5040
    .const 'Sub' $P5041 = 'cuid_90_1346277574.467' 
    capture_lex $P5041
    .const 'Sub' $P5042 = 'cuid_91_1346277574.467' 
    capture_lex $P5042
    .const 'Sub' $P5043 = 'cuid_92_1346277574.467' 
    capture_lex $P5043
    .const 'Sub' $P5044 = 'cuid_93_1346277574.467' 
    capture_lex $P5044
    .const 'Sub' $P5045 = 'cuid_94_1346277574.467' 
    capture_lex $P5045
    .const 'Sub' $P5046 = 'cuid_95_1346277574.467' 
    capture_lex $P5046
    .const 'Sub' $P5047 = 'cuid_96_1346277574.467' 
    capture_lex $P5047
    .const 'Sub' $P5048 = 'cuid_97_1346277574.467' 
    capture_lex $P5048
    .return ($P5048) 
.end
.HLL "nqp"
.namespace []
.sub "compute_c3_mro" :subid("cuid_158_1346277574.467") :anon :lex :outer("cuid_98_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 878
    .param pmc _lex_param_0 
    .const 'Sub' $P5016 = 'cuid_157_1346277574.467' 
    capture_lex $P5016 
    .lex "@immediate_parents", $P101 
    .lex "@result", $P102 
    .lex "$class", _lex_param_0 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    new $P5002, 'ResizablePMCArray'
    set $P102, $P5002
    root_new $P103, ['parrot';'Continuation']
    set_label $P103, lexotic_176
    .lex "RETURN", $P103
.annotate 'line', 879
    get_how $P5003, _lex_param_0
    $P5004 = $P5003."parents"(_lex_param_0, 1 :named("local"))
    set $P101, $P5004
    set $N5001, $P101
    box $P5012, $N5001
    set $P5011, $P5012
    unless $N5001 goto if39_end179 
.annotate 'line', 883
    set $N5002, $P101
    set $N5003, 1
    iseq $I5001, $N5002, $N5003
    unless $I5001 goto if40_else180 
.annotate 'line', 884
.annotate 'line', 885
    set $P5005, $P101[0]
    unless_null $P5005, fallback182
    null $P5006
    set $P5005, $P5006
  fallback182:
    $P5007 = "&compute_c3_mro"($P5005)
    set $P102, $P5007
    set $P5010, $P102
    goto if40_end181
  if40_else180:
    .const 'Sub' $P5008 = 'cuid_157_1346277574.467' 
    capture_lex $P5008
    $P5009 = $P5008()
    set $P5010, $P5009
  if40_end181:
    set $P5011, $P5010
  if39_end179:
.annotate 'line', 899
    $P5013 = $P102."unshift"(_lex_param_0)
    find_lex $P5014, "RETURN"
    $P5015 = $P5014($P102)
    goto lexotic_177
  lexotic_176:
    .get_results ($P5015)
  lexotic_177:
    .return ($P5015) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_157_1346277574.467") :anon :lex :outer("cuid_158_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 886
    .const 'Sub' $P5012 = 'cuid_156_1346277574.467' 
    capture_lex $P5012 
    .lex "@merge_list", $P101 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    find_lex $P5005, "@immediate_parents"
    set $P5002, $P5005
    iter $P5004, $P5005
    new $P5007, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5007, for_handlers183
    push_eh $P5007
  for_next184:
    unless $P5004, for_done186
    shift $P5008, $P5004
  for_redo185:
    .const 'Sub' $P5006 = 'cuid_156_1346277574.467' 
    capture_lex $P5006
    $P5002 = $P5006($P5008)
    goto for_next184
  for_handlers183:
    .get_results ($P5007)
    pop_upto_eh $P5007
    getattribute $P5007, $P5007, 'type'
    eq $P5007, .CONTROL_LOOP_NEXT, for_next184
    eq $P5007, .CONTROL_LOOP_REDO, for_redo185
  for_done186:
    pop_eh 
.annotate 'line', 893
    find_lex $P5009, "@immediate_parents"
    $P5010 = $P101."push"($P5009)
.annotate 'line', 894
    $P5011 = "&c3_merge"($P101)
    store_lex "@result", $P5011
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_156_1346277574.467") :anon :lex :outer("cuid_157_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 890
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 891
    find_lex $P5001, "@merge_list"
    $P5002 = "&compute_c3_mro"(_lex_param_0)
    $P5003 = $P5001."push"($P5002)
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "c3_merge" :subid("cuid_163_1346277574.467") :anon :lex :outer("cuid_98_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 904
    .param pmc _lex_param_0 
    .const 'Sub' $P5030 = 'cuid_162_1346277574.467' 
    capture_lex $P5030 
    .const 'Sub' $P5030 = 'cuid_165_1346277574.467' 
    capture_lex $P5030 
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
    set_label $P106, lexotic_187
    .lex "RETURN", $P106
    box $P5006, 0
    set $P103, $P5006
    box $P5007, 0
    set $P104, $P5007
    set $P5008, _lex_param_0
    iter $P5010, _lex_param_0
    new $P5012, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5012, for_handlers208
    push_eh $P5012
  for_next209:
    unless $P5010, for_done211
    shift $P5013, $P5010
  for_redo210:
    .const 'Sub' $P5011 = 'cuid_162_1346277574.467' 
    capture_lex $P5011
    $P5008 = $P5011($P5013)
    goto for_next209
  for_handlers208:
    .get_results ($P5012)
    pop_upto_eh $P5012
    getattribute $P5012, $P5012, 'type'
    eq $P5012, .CONTROL_LOOP_NEXT, for_next209
    eq $P5012, .CONTROL_LOOP_REDO, for_redo210
  for_done211:
    pop_eh 
    set $N5001, $P104
    set $N5002, 0
    iseq $I5001, $N5001, $N5002
    box $P5017, $I5001
    set $P5016, $P5017
    unless $I5001 goto if46_end213 
.annotate 'line', 941
    find_lex $P5014, "RETURN"
    $P5015 = $P5014($P101)
    set $P5016, $P5015
  if46_end213:
    set $P5019, $P103
    if $P103 goto unless47_end215 
.annotate 'line', 946
    box $P5018, "Could not build C3 linearization: ambiguous hierarchy"
    die $P5018
    set $P5019, $P5018
  unless47_end215:
    box $P5020, 0
    set $P105, $P5020
    new $P5024, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5024, while48_handlers219
    push_eh $P5024
  while48_test216:
    set $N5003, $P105
    set $N5004, _lex_param_0
    islt $I5002, $N5003, $N5004
    box $P5025, $I5002
    set $P5023, $P5025
    unless $I5002 goto while48_done220 
  while48_redo218:
    .const 'Sub' $P5021 = 'cuid_165_1346277574.467' 
    capture_lex $P5021
    $P5022 = $P5021()
    set $P5023, $P5022
    goto while48_test216 
  while48_handlers219:
    .get_results ($P5024)
    pop_upto_eh $P5024
    getattribute $P5024, $P5024, 'type'
    eq $P5024, .CONTROL_LOOP_NEXT, while48_test216
    eq $P5024, .CONTROL_LOOP_REDO, while48_redo218
  while48_done220:
    pop_eh 
.annotate 'line', 965
    $P5026 = "&c3_merge"(_lex_param_0)
    set $P101, $P5026
.annotate 'line', 966
    $P5027 = $P101."unshift"($P102)
    find_lex $P5028, "RETURN"
    $P5029 = $P5028($P101)
    goto lexotic_188
  lexotic_187:
    .get_results ($P5029)
  lexotic_188:
    .return ($P5029) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_162_1346277574.467") :anon :lex :outer("cuid_163_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 911
    .param pmc _lex_param_0 
    .const 'Sub' $P5006 = 'cuid_161_1346277574.467' 
    capture_lex $P5006 
    .lex "@cand_list", $P101 
    .lex "$_", _lex_param_0 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    set $P101, _lex_param_0
    set $N5001, $P101
    box $P5005, $N5001
    set $P5004, $P5005
    unless $N5001 goto if41_end190 
    .const 'Sub' $P5002 = 'cuid_161_1346277574.467' 
    capture_lex $P5002
    $P5003 = $P5002()
    set $P5004, $P5003
  if41_end190:
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_161_1346277574.467") :anon :lex :outer("cuid_162_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 913
    .const 'Sub' $P5019 = 'cuid_160_1346277574.467' 
    capture_lex $P5019 
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
    unless_null $P5004, fallback191
    null $P5006
    set $P5004, $P5006
  fallback191:
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
    new $P5014, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5014, for_handlers202
    push_eh $P5014
  for_next203:
    unless $P5011, for_done205
    shift $P5015, $P5011
  for_redo204:
    .const 'Sub' $P5013 = 'cuid_160_1346277574.467' 
    capture_lex $P5013
    $P5009 = $P5013($P5015)
    goto for_next203
  for_handlers202:
    .get_results ($P5014)
    pop_upto_eh $P5014
    getattribute $P5014, $P5014, 'type'
    eq $P5014, .CONTROL_LOOP_NEXT, for_next203
    eq $P5014, .CONTROL_LOOP_REDO, for_redo204
  for_done205:
    pop_eh 
    set $P5017, $P101
    if $P101 goto unless45_end207 
.annotate 'line', 932
    store_lex "$accepted", $P102
    box $P5016, 1
    store_lex "$something_accepted", $P5016
    die 0, .CONTROL_LOOP_LAST
    box $P5018, 0
    set $P5017, $P5018
  unless45_end207:
    .return ($P5017) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_160_1346277574.467") :anon :lex :outer("cuid_161_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 917
    .param pmc _lex_param_0 
    .const 'Sub' $P5006 = 'cuid_159_1346277574.467' 
    capture_lex $P5006 
    .lex "$_", _lex_param_0 
    get_id $I5002, _lex_param_0
    find_lex $P5001, "@cand_list"
    get_id $I5003, $P5001
    iseq $I5001, $I5002, $I5003
    box $P5005, $I5001
    set $P5004, $P5005
    if $I5001 goto unless42_end193 
    .const 'Sub' $P5002 = 'cuid_159_1346277574.467' 
    capture_lex $P5002
    $P5003 = $P5002()
    set $P5004, $P5003
  unless42_end193:
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_159_1346277574.467") :anon :lex :outer("cuid_160_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 919
    .lex "$cur_pos", $P101 
    null $P5001
    set $P101, $P5001
    box $P5002, 1
    set $P101, $P5002
    new $P5013, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5013, while43_handlers197
    push_eh $P5013
  while43_test194:
    set $N5001, $P101
    find_lex $P5003, "$_"
    set $N5002, $P5003
    isle $I5001, $N5001, $N5002
    box $P5014, $I5001
    set $P5012, $P5014
    unless $I5001 goto while43_done198 
  while43_redo196:
.annotate 'line', 922
    find_lex $P5005, "$_"
    set $I5004, $P101
    set $P5004, $P5005[$I5004]
    unless_null $P5004, fallback201
    null $P5006
    set $P5004, $P5006
  fallback201:
    get_id $I5003, $P5004
    find_lex $P5007, "$cand_class"
    get_id $I5005, $P5007
    iseq $I5002, $I5003, $I5005
    box $P5010, $I5002
    set $P5009, $P5010
    unless $I5002 goto if44_end200 
.annotate 'line', 923
    box $P5008, 1
    store_lex "$rejected", $P5008
    set $P5009, $P5008
  if44_end200:
    set $N5004, $P101
    set $N5005, 1
    add $N5003, $N5004, $N5005
    box $P5011, $N5003
    set $P101, $P5011
    set $P5012, $P101
    goto while43_test194 
  while43_handlers197:
    .get_results ($P5013)
    pop_upto_eh $P5013
    getattribute $P5013, $P5013, 'type'
    eq $P5013, .CONTROL_LOOP_NEXT, while43_test194
    eq $P5013, .CONTROL_LOOP_REDO, while43_redo196
  while43_done198:
    pop_eh 
    .return ($P5012) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_165_1346277574.467") :anon :lex :outer("cuid_163_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 952
    .const 'Sub' $P5016 = 'cuid_164_1346277574.467' 
    capture_lex $P5016 
    .lex "@new_list", $P101 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    find_lex $P5006, "@merge_list"
    find_lex $P5007, "$i"
    set $I5001, $P5007
    set $P5005, $P5006[$I5001]
    unless_null $P5005, fallback221
    null $P5008
    set $P5005, $P5008
  fallback221:
    set $P5002, $P5005
    iter $P5004, $P5005
    new $P5010, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5010, for_handlers224
    push_eh $P5010
  for_next225:
    unless $P5004, for_done227
    shift $P5011, $P5004
  for_redo226:
    .const 'Sub' $P5009 = 'cuid_164_1346277574.467' 
    capture_lex $P5009
    $P5002 = $P5009($P5011)
    goto for_next225
  for_handlers224:
    .get_results ($P5010)
    pop_upto_eh $P5010
    getattribute $P5010, $P5010, 'type'
    eq $P5010, .CONTROL_LOOP_NEXT, for_next225
    eq $P5010, .CONTROL_LOOP_REDO, for_redo226
  for_done227:
    pop_eh 
    find_lex $P5012, "@merge_list"
    find_lex $P5013, "$i"
    set $I5002, $P5013
    set $P5012[$I5002], $P101
    find_lex $P5014, "$i"
    set $N5002, $P5014
    set $N5003, 1
    add $N5001, $N5002, $N5003
    box $P5015, $N5001
    store_lex "$i", $P5015
    .return ($P5015) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_164_1346277574.467") :anon :lex :outer("cuid_165_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 954
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    get_id $I5002, _lex_param_0
    find_lex $P5001, "$accepted"
    get_id $I5003, $P5001
    iseq $I5001, $I5002, $I5003
    box $P5005, $I5001
    set $P5004, $P5005
    if $I5001 goto unless49_end223 
.annotate 'line', 955
.annotate 'line', 956
    find_lex $P5002, "@new_list"
    $P5003 = $P5002."push"(_lex_param_0)
    set $P5004, $P5003
  unless49_end223:
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "archetypes" :subid("cuid_56_1346277574.467") :anon :lex :outer("cuid_98_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 627
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    find_lex $P5001, "$archetypes"
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "new" :subid("cuid_57_1346277574.467") :anon :lex :outer("cuid_98_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 636
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("name") :optional 
    .param int haz_param_15 :opt_flag 
    if haz_param_15, default228
    null $P5005
    set _lex_param_1, $P5005
  default228:
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
.sub "BUILD" :subid("cuid_58_1346277574.467") :anon :lex :outer("cuid_98_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 642
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("name") :optional 
    .param int haz_param_16 :opt_flag 
    if haz_param_16, default229
    box $P5054, "<anon>"
    set _lex_param_1, $P5054
  default229:
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 6
    repr_bind_attr_obj $P5001, $P5002, "$!name", _lex_param_1
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 6
    new $P5005, 'Hash'
    repr_bind_attr_obj $P5003, $P5004, "%!attributes", $P5005
    nqp_decontainerize $P5006, _lex_param_0
    nqp_get_sc_object $P5007, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 6
    new $P5008, 'Hash'
    repr_bind_attr_obj $P5006, $P5007, "%!methods", $P5008
    nqp_decontainerize $P5009, _lex_param_0
    nqp_get_sc_object $P5010, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 6
    new $P5011, 'ResizablePMCArray'
    repr_bind_attr_obj $P5009, $P5010, "@!method_order", $P5011
    nqp_decontainerize $P5012, _lex_param_0
    nqp_get_sc_object $P5013, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 6
    new $P5014, 'ResizablePMCArray'
    repr_bind_attr_obj $P5012, $P5013, "@!multi_methods_to_incorporate", $P5014
    nqp_decontainerize $P5015, _lex_param_0
    nqp_get_sc_object $P5016, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 6
    new $P5017, 'ResizablePMCArray'
    repr_bind_attr_obj $P5015, $P5016, "@!parents", $P5017
    nqp_decontainerize $P5018, _lex_param_0
    nqp_get_sc_object $P5019, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 6
    new $P5020, 'ResizablePMCArray'
    repr_bind_attr_obj $P5018, $P5019, "@!roles", $P5020
    nqp_decontainerize $P5021, _lex_param_0
    nqp_get_sc_object $P5022, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 6
    new $P5023, 'ResizablePMCArray'
    repr_bind_attr_obj $P5021, $P5022, "@!vtable", $P5023
    nqp_decontainerize $P5024, _lex_param_0
    nqp_get_sc_object $P5025, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 6
    new $P5026, 'Hash'
    repr_bind_attr_obj $P5024, $P5025, "%!method-vtable-slots", $P5026
    nqp_decontainerize $P5027, _lex_param_0
    nqp_get_sc_object $P5028, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 6
    new $P5029, 'ResizablePMCArray'
    repr_bind_attr_obj $P5027, $P5028, "@!mro", $P5029
    nqp_decontainerize $P5030, _lex_param_0
    nqp_get_sc_object $P5031, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 6
    new $P5032, 'ResizablePMCArray'
    repr_bind_attr_obj $P5030, $P5031, "@!done", $P5032
    nqp_decontainerize $P5033, _lex_param_0
    nqp_get_sc_object $P5034, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 6
    new $P5035, 'Hash'
    repr_bind_attr_obj $P5033, $P5034, "%!parrot_vtable_mapping", $P5035
    nqp_decontainerize $P5036, _lex_param_0
    nqp_get_sc_object $P5037, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 6
    new $P5038, 'Hash'
    repr_bind_attr_obj $P5036, $P5037, "%!parrot_vtable_handler_mapping", $P5038
    nqp_decontainerize $P5039, _lex_param_0
    nqp_get_sc_object $P5040, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 6
    new $P5041, 'ResizablePMCArray'
    repr_bind_attr_obj $P5039, $P5040, "@!BUILDALLPLAN", $P5041
    nqp_decontainerize $P5042, _lex_param_0
    nqp_get_sc_object $P5043, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 6
    new $P5044, 'ResizablePMCArray'
    repr_bind_attr_obj $P5042, $P5043, "@!BUILDPLAN", $P5044
    nqp_decontainerize $P5045, _lex_param_0
    nqp_get_sc_object $P5046, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 6
    box $P5047, 0
    repr_bind_attr_obj $P5045, $P5046, "$!trace", $P5047
    nqp_decontainerize $P5048, _lex_param_0
    nqp_get_sc_object $P5049, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 6
    box $P5050, 0
    repr_bind_attr_obj $P5048, $P5049, "$!trace_depth", $P5050
    nqp_decontainerize $P5051, _lex_param_0
    nqp_get_sc_object $P5052, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 6
    box $P5053, 0
    repr_bind_attr_obj $P5051, $P5052, "$!composed", $P5053
    .return ($P5053) 
.end
.HLL "nqp"
.namespace []
.sub "new_type" :subid("cuid_59_1346277574.467") :anon :lex :outer("cuid_98_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 665
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("name") :optional 
    .param int haz_param_17 :opt_flag 
    .param pmc _lex_param_2 :named("repr") :optional 
    .param int haz_param_18 :opt_flag 
    if haz_param_17, default230
    box $P5006, "<anon>"
    set _lex_param_1, $P5006
  default230:
    if haz_param_18, default231
    box $P5007, "P6opaque"
    set _lex_param_2, $P5007
  default231:
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
.sub "add_method" :subid("cuid_60_1346277574.467") :anon :lex :outer("cuid_98_1346277574.467")
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
    nqp_get_sc_object $P5002, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 6
    repr_get_attr_obj $P5003, $P5001, $P5002, "%!methods"
    set $S5001, _lex_param_2
    exists $I5001, $P5003[$S5001]
    box $P5006, $I5001
    set $P5005, $P5006
    unless $I5001 goto if50_end233 
.annotate 'line', 671
    set $S5003, _lex_param_2
    concat $S5002, "This class already has a method named ", $S5003
    box $P5004, $S5002
    die $P5004
    set $P5005, $P5004
  if50_end233:
    isnull $I5002, _lex_param_3
    set $I5005, $I5002
    if $I5002 goto unless52_end237 
    defined $I5004, _lex_param_3
    box $P5007, $I5004
    isfalse $I5003, $P5007
    set $I5005, $I5003
  unless52_end237:
    box $P5013, $I5005
    set $P5012, $P5013
    unless $I5005 goto if51_end235 
.annotate 'line', 674
    set $S5008, _lex_param_2
    concat $S5007, "Cannot add a null method '", $S5008
    concat $S5006, $S5007, "' to class '"
    nqp_decontainerize $P5008, _lex_param_0
    nqp_get_sc_object $P5009, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 6
    repr_get_attr_obj $P5010, $P5008, $P5009, "$!name"
    set $S5009, $P5010
    concat $S5005, $S5006, $S5009
    concat $S5004, $S5005, "'"
    box $P5011, $S5004
    die $P5011
    set $P5012, $P5011
  if51_end235:
    set_method_cache_authoritativeness _lex_param_1, 0
    find_lex $P5014, "%caches"
    nqp_decontainerize $P5015, _lex_param_0
    get_id $I5006, $P5015
    set $S5010, $I5006
    new $P5016, 'Hash'
    set $P5014[$S5010], $P5016
    nqp_decontainerize $P5017, _lex_param_0
    nqp_get_sc_object $P5018, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 6
    repr_get_attr_obj $P5019, $P5017, $P5018, "@!method_order"
    nqp_decontainerize $P5020, _lex_param_0
    nqp_get_sc_object $P5021, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 6
    repr_get_attr_obj $P5022, $P5020, $P5021, "@!method_order"
    set $N5001, $P5022
    set $I5007, $N5001
    nqp_decontainerize $P5023, _lex_param_0
    nqp_get_sc_object $P5024, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 6
    repr_get_attr_obj $P5025, $P5023, $P5024, "%!methods"
    set $S5011, _lex_param_2
    set $P5025[$S5011], _lex_param_3
    set $P5019[$I5007], _lex_param_3
    .return (_lex_param_3) 
.end
.HLL "nqp"
.namespace []
.sub "add_multi_method" :subid("cuid_61_1346277574.467") :anon :lex :outer("cuid_98_1346277574.467")
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
    nqp_get_sc_object $P5003, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 6
    repr_get_attr_obj $P5004, $P5002, $P5003, "@!multi_methods_to_incorporate"
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 6
    repr_get_attr_obj $P5007, $P5005, $P5006, "@!multi_methods_to_incorporate"
    set $N5001, $P5007
    set $I5001, $N5001
    set $P5004[$I5001], $P101
    set_method_cache_authoritativeness _lex_param_1, 0
    .return (_lex_param_3) 
.end
.HLL "nqp"
.namespace []
.sub "add_attribute" :subid("cuid_62_1346277574.467") :anon :lex :outer("cuid_98_1346277574.467")
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
    nqp_get_sc_object $P5004, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 6
    repr_get_attr_obj $P5005, $P5003, $P5004, "%!attributes"
    set $S5001, $P101
    exists $I5001, $P5005[$S5001]
    box $P5008, $I5001
    set $P5007, $P5008
    unless $I5001 goto if53_end239 
.annotate 'line', 698
    set $S5003, $P101
    concat $S5002, "This class already has an attribute named ", $S5003
    box $P5006, $S5002
    die $P5006
    set $P5007, $P5006
  if53_end239:
    nqp_decontainerize $P5009, _lex_param_0
    nqp_get_sc_object $P5010, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 6
    repr_get_attr_obj $P5011, $P5009, $P5010, "%!attributes"
    set $S5004, $P101
    set $P5011[$S5004], _lex_param_2
    .return (_lex_param_2) 
.end
.HLL "nqp"
.namespace []
.sub "add_parent" :subid("cuid_63_1346277574.467") :anon :lex :outer("cuid_98_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 704
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .const 'Sub' $P5027 = 'cuid_166_1346277574.467' 
    capture_lex $P5027 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$parent", _lex_param_2 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 6
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!composed"
    set $P5005, $P5003
    unless $P5003 goto if54_end241 
.annotate 'line', 705
    box $P5004, "NQPClassHOW does not support adding parents after being composed."
    die $P5004
    set $P5005, $P5004
  if54_end241:
    get_id $I5002, _lex_param_1
    get_id $I5003, _lex_param_2
    iseq $I5001, $I5002, $I5003
    box $P5011, $I5001
    set $P5010, $P5011
    unless $I5001 goto if55_end243 
.annotate 'line', 708
    nqp_decontainerize $P5006, _lex_param_0
    nqp_get_sc_object $P5007, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 6
    repr_get_attr_obj $P5008, $P5006, $P5007, "$!name"
    set $S5003, $P5008
    concat $S5002, "Class '", $S5003
    concat $S5001, $S5002, "' cannot inherit from itself."
    box $P5009, $S5001
    die $P5009
    set $P5010, $P5009
  if55_end243:
    nqp_decontainerize $P5015, _lex_param_0
    nqp_get_sc_object $P5016, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 6
    repr_get_attr_obj $P5017, $P5015, $P5016, "@!parents"
    set $P5012, $P5017
    iter $P5014, $P5017
    new $P5019, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5019, for_handlers246
    push_eh $P5019
  for_next247:
    unless $P5014, for_done249
    shift $P5020, $P5014
  for_redo248:
    .const 'Sub' $P5018 = 'cuid_166_1346277574.467' 
    capture_lex $P5018
    $P5012 = $P5018($P5020)
    goto for_next247
  for_handlers246:
    .get_results ($P5019)
    pop_upto_eh $P5019
    getattribute $P5019, $P5019, 'type'
    eq $P5019, .CONTROL_LOOP_NEXT, for_next247
    eq $P5019, .CONTROL_LOOP_REDO, for_redo248
  for_done249:
    pop_eh 
    nqp_decontainerize $P5021, _lex_param_0
    nqp_get_sc_object $P5022, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 6
    repr_get_attr_obj $P5023, $P5021, $P5022, "@!parents"
    nqp_decontainerize $P5024, _lex_param_0
    nqp_get_sc_object $P5025, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 6
    repr_get_attr_obj $P5026, $P5024, $P5025, "@!parents"
    set $N5001, $P5026
    set $I5004, $N5001
    set $P5023[$I5004], _lex_param_2
    .return (_lex_param_2) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_166_1346277574.467") :anon :lex :outer("cuid_63_1346277574.467")
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
    unless $I5001 goto if56_end245 
.annotate 'line', 712
    find_lex $P5002, "$parent"
    set $S5003, $P5002
    concat $S5002, "Already have ", $S5003
    concat $S5001, $S5002, " as a parent class."
    box $P5003, $S5001
    die $P5003
    set $P5004, $P5003
  if56_end245:
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "set_default_parent" :subid("cuid_64_1346277574.467") :anon :lex :outer("cuid_98_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 719
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$parent", _lex_param_2 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 6
    repr_bind_attr_obj $P5001, $P5002, "$!default_parent", _lex_param_2
    .return (_lex_param_2) 
.end
.HLL "nqp"
.namespace []
.sub "reparent" :subid("cuid_65_1346277574.467") :anon :lex :outer("cuid_98_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 725
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .const 'Sub' $P5049 = 'cuid_167_1346277574.467' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_168_1346277574.467' 
    capture_lex $P5049 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$new_parent", _lex_param_2 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 6
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!parents"
    set $N5001, $P5003
    set $N5002, 1
    isne $I5001, $N5001, $N5002
    box $P5006, $I5001
    set $P5005, $P5006
    unless $I5001 goto if57_end251 
.annotate 'line', 726
    box $P5004, "Can only re-parent a class with exactly one parent"
    die $P5004
    set $P5005, $P5004
  if57_end251:
.annotate 'line', 729
    nqp_decontainerize $P5012, _lex_param_0
    nqp_get_sc_object $P5013, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 6
    repr_get_attr_obj $P5014, $P5012, $P5013, "@!parents"
    set $P5011, $P5014[0]
    unless_null $P5011, fallback252
    null $P5015
    set $P5011, $P5015
  fallback252:
    get_how $P5010, $P5011
    nqp_decontainerize $P5017, _lex_param_0
    nqp_get_sc_object $P5018, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 6
    repr_get_attr_obj $P5019, $P5017, $P5018, "@!parents"
    set $P5016, $P5019[0]
    unless_null $P5016, fallback253
    null $P5020
    set $P5016, $P5020
  fallback253:
    $P5021 = $P5010."mro"($P5016)
    set $P5007, $P5021
    iter $P5009, $P5021
    new $P5023, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5023, for_handlers256
    push_eh $P5023
  for_next257:
    unless $P5009, for_done259
    shift $P5024, $P5009
  for_redo258:
    .const 'Sub' $P5022 = 'cuid_167_1346277574.467' 
    capture_lex $P5022
    $P5007 = $P5022($P5024)
    goto for_next257
  for_handlers256:
    .get_results ($P5023)
    pop_upto_eh $P5023
    getattribute $P5023, $P5023, 'type'
    eq $P5023, .CONTROL_LOOP_NEXT, for_next257
    eq $P5023, .CONTROL_LOOP_REDO, for_redo258
  for_done259:
    pop_eh 
.annotate 'line', 734
    get_how $P5028, _lex_param_2
    $P5029 = $P5028."mro"(_lex_param_2)
    set $P5025, $P5029
    iter $P5027, $P5029
    new $P5031, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5031, for_handlers262
    push_eh $P5031
  for_next263:
    unless $P5027, for_done265
    shift $P5032, $P5027
  for_redo264:
    .const 'Sub' $P5030 = 'cuid_168_1346277574.467' 
    capture_lex $P5030
    $P5025 = $P5030($P5032)
    goto for_next263
  for_handlers262:
    .get_results ($P5031)
    pop_upto_eh $P5031
    getattribute $P5031, $P5031, 'type'
    eq $P5031, .CONTROL_LOOP_NEXT, for_next263
    eq $P5031, .CONTROL_LOOP_REDO, for_redo264
  for_done265:
    pop_eh 
    nqp_decontainerize $P5033, _lex_param_0
    nqp_get_sc_object $P5034, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 6
    repr_get_attr_obj $P5035, $P5033, $P5034, "@!parents"
    set $P5035[0], _lex_param_2
    nqp_decontainerize $P5036, _lex_param_0
    nqp_get_sc_object $P5037, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 6
.annotate 'line', 740
    $P5038 = "&compute_c3_mro"(_lex_param_1)
    repr_bind_attr_obj $P5036, $P5037, "@!mro", $P5038
.annotate 'line', 741
    nqp_decontainerize $P5039, _lex_param_0
    $P5040 = $P5039."publish_type_cache"(_lex_param_1)
.annotate 'line', 742
    nqp_decontainerize $P5041, _lex_param_0
    $P5042 = $P5041."publish_method_cache"(_lex_param_1)
.annotate 'line', 743
    nqp_decontainerize $P5043, _lex_param_0
    $P5044 = $P5043."publish_boolification_spec"(_lex_param_1)
.annotate 'line', 744
    nqp_decontainerize $P5045, _lex_param_0
    $P5046 = $P5045."publish_parrot_vtable_mapping"(_lex_param_1)
.annotate 'line', 745
    nqp_decontainerize $P5047, _lex_param_0
    $P5048 = $P5047."publish_parrot_vtablee_handler_mapping"(_lex_param_1)
    .return (1) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_167_1346277574.467") :anon :lex :outer("cuid_65_1346277574.467")
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
    unless $N5001 goto if58_end255 
    box $P5003, "Can only re-parent a class whose parent has no attributes"
    die $P5003
    set $P5004, $P5003
  if58_end255:
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_168_1346277574.467") :anon :lex :outer("cuid_65_1346277574.467")
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
    unless $N5001 goto if59_end261 
    box $P5003, "Can only re-parent to a class with no attributes"
    die $P5003
    set $P5004, $P5003
  if59_end261:
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "add_role" :subid("cuid_66_1346277574.467") :anon :lex :outer("cuid_98_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 749
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .const 'Sub' $P5016 = 'cuid_169_1346277574.467' 
    capture_lex $P5016 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$role", _lex_param_2 
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 6
    repr_get_attr_obj $P5006, $P5004, $P5005, "@!roles"
    set $P5001, $P5006
    iter $P5003, $P5006
    new $P5008, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5008, for_handlers268
    push_eh $P5008
  for_next269:
    unless $P5003, for_done271
    shift $P5009, $P5003
  for_redo270:
    .const 'Sub' $P5007 = 'cuid_169_1346277574.467' 
    capture_lex $P5007
    $P5001 = $P5007($P5009)
    goto for_next269
  for_handlers268:
    .get_results ($P5008)
    pop_upto_eh $P5008
    getattribute $P5008, $P5008, 'type'
    eq $P5008, .CONTROL_LOOP_NEXT, for_next269
    eq $P5008, .CONTROL_LOOP_REDO, for_redo270
  for_done271:
    pop_eh 
    nqp_decontainerize $P5010, _lex_param_0
    nqp_get_sc_object $P5011, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 6
    repr_get_attr_obj $P5012, $P5010, $P5011, "@!roles"
    nqp_decontainerize $P5013, _lex_param_0
    nqp_get_sc_object $P5014, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 6
    repr_get_attr_obj $P5015, $P5013, $P5014, "@!roles"
    set $N5001, $P5015
    set $I5001, $N5001
    set $P5012[$I5001], _lex_param_2
    .return (_lex_param_2) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_169_1346277574.467") :anon :lex :outer("cuid_66_1346277574.467")
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
    unless $I5001 goto if60_end267 
.annotate 'line', 751
    find_lex $P5002, "$role"
    set $S5003, $P5002
    concat $S5002, "The role ", $S5003
    concat $S5001, $S5002, " has already been added."
    box $P5003, $S5001
    die $P5003
    set $P5004, $P5003
  if60_end267:
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "add_parrot_vtable_mapping" :subid("cuid_67_1346277574.467") :anon :lex :outer("cuid_98_1346277574.467")
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
    nqp_get_sc_object $P5003, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 6
    repr_get_attr_obj $P5004, $P5002, $P5003, "%!parrot_vtable_mapping"
    set $S5001, _lex_param_2
    set $P5001, $P5004[$S5001]
    unless_null $P5001, fallback274
    null $P5005
    set $P5001, $P5005
  fallback274:
    defined $I5001, $P5001
    box $P5011, $I5001
    set $P5010, $P5011
    unless $I5001 goto if61_end273 
.annotate 'line', 759
    nqp_decontainerize $P5006, _lex_param_0
    nqp_get_sc_object $P5007, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 6
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
  if61_end273:
    nqp_decontainerize $P5012, _lex_param_0
    nqp_get_sc_object $P5013, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 6
    repr_get_attr_obj $P5014, $P5012, $P5013, "%!parrot_vtable_mapping"
    set $S5008, _lex_param_2
    set $P5014[$S5008], _lex_param_3
    .return (_lex_param_3) 
.end
.HLL "nqp"
.namespace []
.sub "add_parrot_vtable_handler_mapping" :subid("cuid_68_1346277574.467") :anon :lex :outer("cuid_98_1346277574.467")
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
    nqp_get_sc_object $P5003, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 6
    repr_get_attr_obj $P5004, $P5002, $P5003, "%!parrot_vtable_handler_mapping"
    set $S5001, _lex_param_2
    set $P5001, $P5004[$S5001]
    unless_null $P5001, fallback277
    null $P5005
    set $P5001, $P5005
  fallback277:
    defined $I5001, $P5001
    box $P5011, $I5001
    set $P5010, $P5011
    unless $I5001 goto if62_end276 
.annotate 'line', 768
    nqp_decontainerize $P5006, _lex_param_0
    nqp_get_sc_object $P5007, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 6
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
  if62_end276:
    nqp_decontainerize $P5012, _lex_param_0
    nqp_get_sc_object $P5013, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 6
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
.sub "compose" :subid("cuid_69_1346277574.467") :anon :lex :outer("cuid_98_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 776
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5052 = 'cuid_171_1346277574.467' 
    capture_lex $P5052 
    .const 'Sub' $P5052 = 'cuid_172_1346277574.467' 
    capture_lex $P5052 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 6
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!roles"
    set $P5006, $P5003
    unless $P5003 goto if63_end279 
    .const 'Sub' $P5004 = 'cuid_171_1346277574.467' 
    capture_lex $P5004
    $P5005 = $P5004()
    set $P5006, $P5005
  if63_end279:
    nqp_decontainerize $P5007, _lex_param_0
    nqp_get_sc_object $P5008, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 6
    repr_get_attr_obj $P5009, $P5007, $P5008, "@!parents"
    set $N5001, $P5009
    set $N5002, 0
    iseq $I5001, $N5001, $N5002
    set $I5003, $I5001
    unless $I5001 goto if65_end287 
    nqp_decontainerize $P5010, _lex_param_0
    nqp_get_sc_object $P5011, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 6
    repr_get_attr_obj $P5012, $P5010, $P5011, "$!name"
    set $S5001, $P5012
    isne $I5002, $S5001, "NQPMu"
    set $I5003, $I5002
  if65_end287:
    box $P5019, $I5003
    set $P5018, $P5019
    unless $I5003 goto if64_end285 
.annotate 'line', 793
.annotate 'line', 794
    nqp_decontainerize $P5013, _lex_param_0
    nqp_decontainerize $P5014, _lex_param_0
    nqp_get_sc_object $P5015, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 6
    repr_get_attr_obj $P5016, $P5014, $P5015, "$!default_parent"
    $P5017 = $P5013."add_parent"(_lex_param_1, $P5016)
    set $P5018, $P5017
  if64_end285:
    nqp_decontainerize $P5020, _lex_param_0
    nqp_get_sc_object $P5021, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 6
    repr_get_attr_obj $P5022, $P5020, $P5021, "$!composed"
    set $P5029, $P5022
    if $P5022 goto unless66_end289 
.annotate 'line', 799
    nqp_decontainerize $P5023, _lex_param_0
    nqp_get_sc_object $P5024, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 6
.annotate 'line', 800
    $P5025 = "&compute_c3_mro"(_lex_param_1)
    repr_bind_attr_obj $P5023, $P5024, "@!mro", $P5025
    nqp_decontainerize $P5026, _lex_param_0
    nqp_get_sc_object $P5027, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 6
    box $P5028, 1
    repr_bind_attr_obj $P5026, $P5027, "$!composed", $P5028
    set $P5029, $P5028
  unless66_end289:
.annotate 'line', 805
    nqp_decontainerize $P5030, _lex_param_0
    $P5031 = $P5030."incorporate_multi_candidates"(_lex_param_1)
.annotate 'line', 808
    nqp_decontainerize $P5035, _lex_param_0
    $P5036 = $P5035."attributes"(_lex_param_1, "0" :named("local"))
    set $P5032, $P5036
    iter $P5034, $P5036
    new $P5038, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5038, for_handlers290
    push_eh $P5038
  for_next291:
    unless $P5034, for_done293
    shift $P5039, $P5034
  for_redo292:
    .const 'Sub' $P5037 = 'cuid_172_1346277574.467' 
    capture_lex $P5037
    $P5032 = $P5037($P5039)
    goto for_next291
  for_handlers290:
    .get_results ($P5038)
    pop_upto_eh $P5038
    getattribute $P5038, $P5038, 'type'
    eq $P5038, .CONTROL_LOOP_NEXT, for_next291
    eq $P5038, .CONTROL_LOOP_REDO, for_redo292
  for_done293:
    pop_eh 
.annotate 'line', 811
    nqp_decontainerize $P5040, _lex_param_0
    $P5041 = $P5040."publish_type_cache"(_lex_param_1)
.annotate 'line', 812
    nqp_decontainerize $P5042, _lex_param_0
    $P5043 = $P5042."publish_method_cache"(_lex_param_1)
.annotate 'line', 813
    nqp_decontainerize $P5044, _lex_param_0
    $P5045 = $P5044."publish_boolification_spec"(_lex_param_1)
.annotate 'line', 816
    nqp_decontainerize $P5046, _lex_param_0
    $P5047 = $P5046."publish_parrot_vtable_mapping"(_lex_param_1)
.annotate 'line', 817
    nqp_decontainerize $P5048, _lex_param_0
    $P5049 = $P5048."publish_parrot_vtablee_handler_mapping"(_lex_param_1)
.annotate 'line', 820
    nqp_decontainerize $P5050, _lex_param_0
    $P5051 = $P5050."create_BUILDPLAN"(_lex_param_1)
    .return (_lex_param_1) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_171_1346277574.467") :anon :lex :outer("cuid_69_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 780
    .const 'Sub' $P5015 = 'cuid_170_1346277574.467' 
    capture_lex $P5015 
    .lex "@specialized_roles", $P101 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    find_lex $P5006, "self"
    nqp_decontainerize $P5005, $P5006
    nqp_get_sc_object $P5007, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 6
    repr_get_attr_obj $P5008, $P5005, $P5007, "@!roles"
    set $P5002, $P5008
    iter $P5004, $P5008
    new $P5010, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5010, for_handlers280
    push_eh $P5010
  for_next281:
    unless $P5004, for_done283
    shift $P5011, $P5004
  for_redo282:
    .const 'Sub' $P5009 = 'cuid_170_1346277574.467' 
    capture_lex $P5009
    $P5002 = $P5009($P5011)
    goto for_next281
  for_handlers280:
    .get_results ($P5010)
    pop_upto_eh $P5010
    getattribute $P5010, $P5010, 'type'
    eq $P5010, .CONTROL_LOOP_NEXT, for_next281
    eq $P5010, .CONTROL_LOOP_REDO, for_redo282
  for_done283:
    pop_eh 
.annotate 'line', 788
    nqp_get_sc_object $P5012, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 4
    find_lex $P5013, "$obj"
    $P5014 = $P5012."apply"($P5013, $P101)
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_170_1346277574.467") :anon :lex :outer("cuid_171_1346277574.467")
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
    nqp_get_sc_object $P5009, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 6
    repr_get_attr_obj $P5010, $P5007, $P5009, "@!done"
    find_lex $P5012, "self"
    nqp_decontainerize $P5011, $P5012
    nqp_get_sc_object $P5013, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 6
    repr_get_attr_obj $P5014, $P5011, $P5013, "@!done"
    set $N5001, $P5014
    set $I5001, $N5001
    set $P5010[$I5001], _lex_param_0
    find_lex $P5016, "self"
    nqp_decontainerize $P5015, $P5016
    nqp_get_sc_object $P5017, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 6
    repr_get_attr_obj $P5018, $P5015, $P5017, "@!done"
    find_lex $P5020, "self"
    nqp_decontainerize $P5019, $P5020
    nqp_get_sc_object $P5021, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 6
    repr_get_attr_obj $P5022, $P5019, $P5021, "@!done"
    set $N5002, $P5022
    set $I5002, $N5002
    set $P5018[$I5002], $P101
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_172_1346277574.467") :anon :lex :outer("cuid_69_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 808
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5001, "$obj"
    $P5002 = _lex_param_0."compose"($P5001)
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "incorporate_multi_candidates" :subid("cuid_70_1346277574.467") :anon :lex :outer("cuid_98_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 825
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5013 = 'cuid_176_1346277574.467' 
    capture_lex $P5013 
    .lex "$num_todo", $P101 
    .lex "$i", $P102 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    null $P5001
    set $P101, $P5001
    null $P5002
    set $P102, $P5002
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 6
    repr_get_attr_obj $P5005, $P5003, $P5004, "@!multi_methods_to_incorporate"
    set $N5001, $P5005
    box $P5006, $N5001
    set $P101, $P5006
    box $P5007, 0
    set $P102, $P5007
    new $P5011, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5011, while67_handlers297
    push_eh $P5011
  while67_test294:
    set $N5002, $P102
    set $N5003, $P101
    isne $I5001, $N5002, $N5003
    box $P5012, $I5001
    set $P5010, $P5012
    unless $I5001 goto while67_done298 
  while67_redo296:
    .const 'Sub' $P5008 = 'cuid_176_1346277574.467' 
    capture_lex $P5008
    $P5009 = $P5008()
    set $P5010, $P5009
    goto while67_test294 
  while67_handlers297:
    .get_results ($P5011)
    pop_upto_eh $P5011
    getattribute $P5011, $P5011, 'type'
    eq $P5011, .CONTROL_LOOP_NEXT, while67_test294
    eq $P5011, .CONTROL_LOOP_REDO, while67_redo296
  while67_done298:
    pop_eh 
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_176_1346277574.467") :anon :lex :outer("cuid_70_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 828
    .const 'Sub' $P5039 = 'cuid_175_1346277574.467' 
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
    nqp_get_sc_object $P5008, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 6
    repr_get_attr_obj $P5009, $P5006, $P5008, "@!multi_methods_to_incorporate"
    find_lex $P5010, "$i"
    set $I5001, $P5010
    set $P5005, $P5009[$I5001]
    unless_null $P5005, fallback299
    null $P5011
    set $P5005, $P5011
  fallback299:
    set $P5004, $P5005["name"]
    unless_null $P5004, fallback300
    null $P5012
    set $P5004, $P5012
  fallback300:
    set $P101, $P5004
    find_lex $P5016, "self"
    nqp_decontainerize $P5015, $P5016
    nqp_get_sc_object $P5017, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 6
    repr_get_attr_obj $P5018, $P5015, $P5017, "@!multi_methods_to_incorporate"
    find_lex $P5019, "$i"
    set $I5002, $P5019
    set $P5014, $P5018[$I5002]
    unless_null $P5014, fallback301
    null $P5020
    set $P5014, $P5020
  fallback301:
    set $P5013, $P5014["code"]
    unless_null $P5013, fallback302
    null $P5021
    set $P5013, $P5021
  fallback302:
    set $P102, $P5013
    find_lex $P5024, "self"
    nqp_decontainerize $P5023, $P5024
    nqp_get_sc_object $P5025, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 6
    repr_get_attr_obj $P5026, $P5023, $P5025, "%!methods"
    set $S5001, $P101
    set $P5022, $P5026[$S5001]
    unless_null $P5022, fallback303
    null $P5027
    set $P5022, $P5027
  fallback303:
    set $P103, $P5022
    defined $I5003, $P103
    unless $I5003 goto if68_else304 
.annotate 'line', 836
    can $I5004, $P103, "is_dispatcher"
    box $P5030, $I5004
    set $P5029, $P5030
    unless $I5004 goto if70_end309 
.annotate 'line', 839
    $P5028 = $P103."is_dispatcher"()
    set $P5029, $P5028
  if70_end309:
    unless $P5029 goto if69_else306 
.annotate 'line', 840
    $P5031 = $P103."add_dispatchee"($P102)
    set $P5033, $P5031
    goto if69_end307
  if69_else306:
.annotate 'line', 842
    set $S5004, $P101
    concat $S5003, "Cannot have a multi candidate for ", $S5004
    concat $S5002, $S5003, " when an only method is also in the class"
    box $P5032, $S5002
    die $P5032
    set $P5033, $P5032
  if69_end307:
    set $P5036, $P5033
    goto if68_end305
  if68_else304:
    .const 'Sub' $P5034 = 'cuid_175_1346277574.467' 
    capture_lex $P5034
    $P5035 = $P5034()
    set $P5036, $P5035
  if68_end305:
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
.sub "" :subid("cuid_175_1346277574.467") :anon :lex :outer("cuid_176_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 846
    .const 'Sub' $P5017 = 'cuid_174_1346277574.467' 
    capture_lex $P5017 
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
    new $P5012, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5012, while71_handlers313
    push_eh $P5012
  while71_test310:
    set $N5001, $P101
    find_lex $P5006, "self"
    nqp_decontainerize $P5005, $P5006
    nqp_get_sc_object $P5007, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 6
    repr_get_attr_obj $P5008, $P5005, $P5007, "@!mro"
    set $N5002, $P5008
    isne $I5001, $N5001, $N5002
    set $I5003, $I5001
    unless $I5001 goto if72_end316 
    isfalse $I5002, $P102
    set $I5003, $I5002
  if72_end316:
    box $P5013, $I5003
    set $P5011, $P5013
    unless $I5003 goto while71_done314 
  while71_redo312:
    .const 'Sub' $P5009 = 'cuid_174_1346277574.467' 
    capture_lex $P5009
    $P5010 = $P5009()
    set $P5011, $P5010
    goto while71_test310 
  while71_handlers313:
    .get_results ($P5012)
    pop_upto_eh $P5012
    getattribute $P5012, $P5012, 'type'
    eq $P5012, .CONTROL_LOOP_NEXT, while71_test310
    eq $P5012, .CONTROL_LOOP_REDO, while71_redo312
  while71_done314:
    pop_eh 
    set $P5016, $P102
    if $P102 goto unless76_end326 
.annotate 'line', 869
    find_lex $P5014, "$name"
    set $S5003, $P5014
    concat $S5002, "Could not find a proto for multi ", $S5003
    concat $S5001, $S5002, ", and proto generation is NYI"
    box $P5015, $S5001
    die $P5015
    set $P5016, $P5015
  unless76_end326:
    .return ($P5016) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_174_1346277574.467") :anon :lex :outer("cuid_175_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 850
    .const 'Sub' $P5028 = 'cuid_173_1346277574.467' 
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
    nqp_get_sc_object $P5007, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 6
    repr_get_attr_obj $P5008, $P5005, $P5007, "@!mro"
    find_lex $P5009, "$j"
    set $I5001, $P5009
    set $P5004, $P5008[$I5001]
    unless_null $P5004, fallback317
    null $P5010
    set $P5004, $P5010
  fallback317:
    set $P101, $P5004
.annotate 'line', 852
    get_how $P5011, $P101
    $P5012 = $P5011."method_table"($P101)
    set $P102, $P5012
    find_lex $P5014, "$name"
    set $S5001, $P5014
    set $P5013, $P102[$S5001]
    unless_null $P5013, fallback318
    null $P5015
    set $P5013, $P5015
  fallback318:
    set $P103, $P5013
    defined $I5002, $P103
    box $P5025, $I5002
    set $P5024, $P5025
    unless $I5002 goto if73_end320 
.annotate 'line', 854
    can $I5003, $P103, "is_dispatcher"
    box $P5018, $I5003
    set $P5017, $P5018
    unless $I5003 goto if75_end324 
.annotate 'line', 857
    $P5016 = $P103."is_dispatcher"()
    set $P5017, $P5016
  if75_end324:
    unless $P5017 goto if74_else321 
    .const 'Sub' $P5019 = 'cuid_173_1346277574.467' 
    capture_lex $P5019
    $P5020 = $P5019()
    set $P5023, $P5020
    goto if74_end322
  if74_else321:
.annotate 'line', 863
    find_lex $P5021, "$name"
    set $S5004, $P5021
    concat $S5003, "Could not find a proto for multi ", $S5004
    concat $S5002, $S5003, " (it may exist, but an only is hiding it if so)"
    box $P5022, $S5002
    die $P5022
    set $P5023, $P5022
  if74_end322:
    set $P5024, $P5023
  if73_end320:
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
.sub "" :subid("cuid_173_1346277574.467") :anon :lex :outer("cuid_174_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 857
    .lex "$new_disp", $P101 
    null $P5001
    set $P101, $P5001
.annotate 'line', 858
    find_lex $P5002, "$dispatcher"
    $P5003 = $P5002."derive_dispatcher"()
    set $P101, $P5003
.annotate 'line', 859
    find_lex $P5004, "$code"
    $P5005 = $P101."add_dispatchee"($P5004)
    find_lex $P5007, "self"
    nqp_decontainerize $P5006, $P5007
    nqp_get_sc_object $P5008, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 6
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
.sub "publish_type_cache" :subid("cuid_71_1346277574.467") :anon :lex :outer("cuid_98_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 970
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5020 = 'cuid_177_1346277574.467' 
    capture_lex $P5020 
    .const 'Sub' $P5020 = 'cuid_178_1346277574.467' 
    capture_lex $P5020 
    .lex "@tc", $P101 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 6
    repr_get_attr_obj $P5007, $P5005, $P5006, "@!mro"
    set $P5002, $P5007
    iter $P5004, $P5007
    new $P5009, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5009, for_handlers327
    push_eh $P5009
  for_next328:
    unless $P5004, for_done330
    shift $P5010, $P5004
  for_redo329:
    .const 'Sub' $P5008 = 'cuid_177_1346277574.467' 
    capture_lex $P5008
    $P5002 = $P5008($P5010)
    goto for_next328
  for_handlers327:
    .get_results ($P5009)
    pop_upto_eh $P5009
    getattribute $P5009, $P5009, 'type'
    eq $P5009, .CONTROL_LOOP_NEXT, for_next328
    eq $P5009, .CONTROL_LOOP_REDO, for_redo329
  for_done330:
    pop_eh 
    nqp_decontainerize $P5014, _lex_param_0
    nqp_get_sc_object $P5015, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 6
    repr_get_attr_obj $P5016, $P5014, $P5015, "@!done"
    set $P5011, $P5016
    iter $P5013, $P5016
    new $P5018, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5018, for_handlers331
    push_eh $P5018
  for_next332:
    unless $P5013, for_done334
    shift $P5019, $P5013
  for_redo333:
    .const 'Sub' $P5017 = 'cuid_178_1346277574.467' 
    capture_lex $P5017
    $P5011 = $P5017($P5019)
    goto for_next332
  for_handlers331:
    .get_results ($P5018)
    pop_upto_eh $P5018
    getattribute $P5018, $P5018, 'type'
    eq $P5018, .CONTROL_LOOP_NEXT, for_next332
    eq $P5018, .CONTROL_LOOP_REDO, for_redo333
  for_done334:
    pop_eh 
    publish_type_check_cache _lex_param_1, $P101
    .return (_lex_param_1) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_177_1346277574.467") :anon :lex :outer("cuid_71_1346277574.467")
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
.sub "" :subid("cuid_178_1346277574.467") :anon :lex :outer("cuid_71_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 973
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5001, "@tc"
    $P5002 = $P5001."push"(_lex_param_0)
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "publish_method_cache" :subid("cuid_72_1346277574.467") :anon :lex :outer("cuid_98_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 977
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5014 = 'cuid_180_1346277574.467' 
    capture_lex $P5014 
    .lex "%cache", $P101 
    .lex "@mro_reversed", $P102 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    new $P5001, 'Hash'
    set $P101, $P5001
    new $P5002, 'ResizablePMCArray'
    set $P102, $P5002
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 6
    repr_get_attr_obj $P5006, $P5004, $P5005, "@!mro"
    clone $P5003, $P5006
    set $P102, $P5003
.annotate 'line', 982
    $P5007 = $P102."reverse"()
    set $P5008, $P102
    iter $P5010, $P102
    new $P5012, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5012, for_handlers339
    push_eh $P5012
  for_next340:
    unless $P5010, for_done342
    shift $P5013, $P5010
  for_redo341:
    .const 'Sub' $P5011 = 'cuid_180_1346277574.467' 
    capture_lex $P5011
    $P5008 = $P5011($P5013)
    goto for_next340
  for_handlers339:
    .get_results ($P5012)
    pop_upto_eh $P5012
    getattribute $P5012, $P5012, 'type'
    eq $P5012, .CONTROL_LOOP_NEXT, for_next340
    eq $P5012, .CONTROL_LOOP_REDO, for_redo341
  for_done342:
    pop_eh 
    publish_method_cache _lex_param_1, $P101
    set_method_cache_authoritativeness _lex_param_1, 1
    .return (_lex_param_1) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_180_1346277574.467") :anon :lex :outer("cuid_72_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 983
    .param pmc _lex_param_0 
    .const 'Sub' $P5009 = 'cuid_179_1346277574.467' 
    capture_lex $P5009 
    .lex "$_", _lex_param_0 
.annotate 'line', 984
    get_how $P5004, _lex_param_0
    $P5005 = $P5004."method_table"(_lex_param_0)
    set $P5001, $P5005
    iter $P5003, $P5005
    new $P5007, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5007, for_handlers335
    push_eh $P5007
  for_next336:
    unless $P5003, for_done338
    shift $P5008, $P5003
  for_redo337:
    .const 'Sub' $P5006 = 'cuid_179_1346277574.467' 
    capture_lex $P5006
    $P5001 = $P5006($P5008)
    goto for_next336
  for_handlers335:
    .get_results ($P5007)
    pop_upto_eh $P5007
    getattribute $P5007, $P5007, 'type'
    eq $P5007, .CONTROL_LOOP_NEXT, for_next336
    eq $P5007, .CONTROL_LOOP_REDO, for_redo337
  for_done338:
    pop_eh 
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_179_1346277574.467") :anon :lex :outer("cuid_180_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 984
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5001, "%cache"
.annotate 'line', 985
    $P5002 = _lex_param_0."key"()
    set $S5001, $P5002
    $P5003 = _lex_param_0."value"()
    set $P5001[$S5001], $P5003
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "publish_boolification_spec" :subid("cuid_73_1346277574.467") :anon :lex :outer("cuid_98_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 992
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$bool_meth", $P101 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    null $P5001
    set $P101, $P5001
.annotate 'line', 993
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."find_method"(_lex_param_1, "Bool")
    set $P101, $P5003
    defined $I5001, $P101
    unless $I5001 goto if77_else343 
.annotate 'line', 994
    set_boolification_spec _lex_param_1, 0, $P101
    set $P5005, _lex_param_1
    goto if77_end344
  if77_else343:
.annotate 'line', 997
    null $P5004
    set_boolification_spec _lex_param_1, 5, $P5004
    set $P5005, _lex_param_1
  if77_end344:
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "publish_parrot_vtable_mapping" :subid("cuid_74_1346277574.467") :anon :lex :outer("cuid_98_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1002
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5014 = 'cuid_182_1346277574.467' 
    capture_lex $P5014 
    .lex "%mapping", $P101 
    .lex "%seen_handlers", $P102 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    new $P5001, 'Hash'
    set $P101, $P5001
    new $P5002, 'Hash'
    set $P102, $P5002
    nqp_decontainerize $P5006, _lex_param_0
    nqp_get_sc_object $P5007, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 6
    repr_get_attr_obj $P5008, $P5006, $P5007, "@!mro"
    set $P5003, $P5008
    iter $P5005, $P5008
    new $P5010, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5010, for_handlers357
    push_eh $P5010
  for_next358:
    unless $P5005, for_done360
    shift $P5011, $P5005
  for_redo359:
    .const 'Sub' $P5009 = 'cuid_182_1346277574.467' 
    capture_lex $P5009
    $P5003 = $P5009($P5011)
    goto for_next358
  for_handlers357:
    .get_results ($P5010)
    pop_upto_eh $P5010
    getattribute $P5010, $P5010, 'type'
    eq $P5010, .CONTROL_LOOP_NEXT, for_next358
    eq $P5010, .CONTROL_LOOP_REDO, for_redo359
  for_done360:
    pop_eh 
    set $N5001, $P101
    box $P5013, $N5001
    set $P5012, $P5013
    unless $N5001 goto if80_end362 
.annotate 'line', 1016
    stable_publish_vtable_mapping _lex_param_1, $P101
    set $P5012, _lex_param_1
  if80_end362:
    .return ($P5012) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_182_1346277574.467") :anon :lex :outer("cuid_74_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1005
    .param pmc _lex_param_0 
    .const 'Sub' $P5017 = 'cuid_181_1346277574.467' 
    capture_lex $P5017 
    .const 'Sub' $P5017 = 'cuid_183_1346277574.467' 
    capture_lex $P5017 
    .lex "$_", _lex_param_0 
.annotate 'line', 1006
    get_how $P5004, _lex_param_0
    $P5005 = $P5004."parrot_vtable_handler_mappings"(_lex_param_0, 1 :named("local"))
    set $P5001, $P5005
    iter $P5003, $P5005
    new $P5007, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5007, for_handlers345
    push_eh $P5007
  for_next346:
    unless $P5003, for_done348
    shift $P5008, $P5003
  for_redo347:
    .const 'Sub' $P5006 = 'cuid_181_1346277574.467' 
    capture_lex $P5006
    $P5001 = $P5006($P5008)
    goto for_next346
  for_handlers345:
    .get_results ($P5007)
    pop_upto_eh $P5007
    getattribute $P5007, $P5007, 'type'
    eq $P5007, .CONTROL_LOOP_NEXT, for_next346
    eq $P5007, .CONTROL_LOOP_REDO, for_redo347
  for_done348:
    pop_eh 
.annotate 'line', 1009
    get_how $P5012, _lex_param_0
    $P5013 = $P5012."parrot_vtable_mappings"(_lex_param_0, 1 :named("local"))
    set $P5009, $P5013
    iter $P5011, $P5013
    new $P5015, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5015, for_handlers353
    push_eh $P5015
  for_next354:
    unless $P5011, for_done356
    shift $P5016, $P5011
  for_redo355:
    .const 'Sub' $P5014 = 'cuid_183_1346277574.467' 
    capture_lex $P5014
    $P5009 = $P5014($P5016)
    goto for_next354
  for_handlers353:
    .get_results ($P5015)
    pop_upto_eh $P5015
    getattribute $P5015, $P5015, 'type'
    eq $P5015, .CONTROL_LOOP_NEXT, for_next354
    eq $P5015, .CONTROL_LOOP_REDO, for_redo355
  for_done356:
    pop_eh 
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_181_1346277574.467") :anon :lex :outer("cuid_182_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1006
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5001, "%seen_handlers"
.annotate 'line', 1007
    $P5002 = _lex_param_0."key"()
    set $S5001, $P5002
    box $P5003, 1
    set $P5001[$S5001], $P5003
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_183_1346277574.467") :anon :lex :outer("cuid_182_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1009
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5001, "%mapping"
.annotate 'line', 1010
    $P5002 = _lex_param_0."key"()
    set $S5001, $P5002
    exists $I5001, $P5001[$S5001]
    set $I5003, $I5001
    if $I5001 goto unless79_end352 
    find_lex $P5003, "%seen_handlers"
.annotate 'line', 1011
    $P5004 = _lex_param_0."key"()
    set $S5002, $P5004
    exists $I5002, $P5003[$S5002]
    set $I5003, $I5002
  unless79_end352:
    box $P5009, $I5003
    set $P5008, $P5009
    if $I5003 goto unless78_end350 
    find_lex $P5005, "%mapping"
.annotate 'line', 1012
    $P5006 = _lex_param_0."key"()
    set $S5003, $P5006
    $P5007 = _lex_param_0."value"()
    set $P5005[$S5003], $P5007
    set $P5008, $P5007
  unless78_end350:
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "publish_parrot_vtablee_handler_mapping" :subid("cuid_75_1346277574.467") :anon :lex :outer("cuid_98_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1021
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5016 = 'cuid_185_1346277574.467' 
    capture_lex $P5016 
    .lex "%mapping", $P101 
    .lex "@mro_reversed", $P102 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    new $P5001, 'Hash'
    set $P101, $P5001
    new $P5002, 'ResizablePMCArray'
    set $P102, $P5002
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 6
    repr_get_attr_obj $P5006, $P5004, $P5005, "@!mro"
    clone $P5003, $P5006
    set $P102, $P5003
.annotate 'line', 1024
    $P5007 = $P102."reverse"()
    set $P5008, $P102
    iter $P5010, $P102
    new $P5012, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5012, for_handlers367
    push_eh $P5012
  for_next368:
    unless $P5010, for_done370
    shift $P5013, $P5010
  for_redo369:
    .const 'Sub' $P5011 = 'cuid_185_1346277574.467' 
    capture_lex $P5011
    $P5008 = $P5011($P5013)
    goto for_next368
  for_handlers367:
    .get_results ($P5012)
    pop_upto_eh $P5012
    getattribute $P5012, $P5012, 'type'
    eq $P5012, .CONTROL_LOOP_NEXT, for_next368
    eq $P5012, .CONTROL_LOOP_REDO, for_redo369
  for_done370:
    pop_eh 
    set $N5001, $P101
    box $P5015, $N5001
    set $P5014, $P5015
    unless $N5001 goto if81_end372 
.annotate 'line', 1030
    stable_publish_vtable_handler_mapping _lex_param_1, $P101
    set $P5014, _lex_param_1
  if81_end372:
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_185_1346277574.467") :anon :lex :outer("cuid_75_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1025
    .param pmc _lex_param_0 
    .const 'Sub' $P5009 = 'cuid_184_1346277574.467' 
    capture_lex $P5009 
    .lex "$_", _lex_param_0 
.annotate 'line', 1026
    get_how $P5004, _lex_param_0
    $P5005 = $P5004."parrot_vtable_handler_mappings"(_lex_param_0, 1 :named("local"))
    set $P5001, $P5005
    iter $P5003, $P5005
    new $P5007, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5007, for_handlers363
    push_eh $P5007
  for_next364:
    unless $P5003, for_done366
    shift $P5008, $P5003
  for_redo365:
    .const 'Sub' $P5006 = 'cuid_184_1346277574.467' 
    capture_lex $P5006
    $P5001 = $P5006($P5008)
    goto for_next364
  for_handlers363:
    .get_results ($P5007)
    pop_upto_eh $P5007
    getattribute $P5007, $P5007, 'type'
    eq $P5007, .CONTROL_LOOP_NEXT, for_next364
    eq $P5007, .CONTROL_LOOP_REDO, for_redo365
  for_done366:
    pop_eh 
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_184_1346277574.467") :anon :lex :outer("cuid_185_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1026
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5001, "%mapping"
.annotate 'line', 1027
    $P5002 = _lex_param_0."key"()
    set $S5001, $P5002
    $P5003 = _lex_param_0."value"()
    set $P5001[$S5001], $P5003
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "create_BUILDPLAN" :subid("cuid_76_1346277574.467") :anon :lex :outer("cuid_98_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1044
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5017 = 'cuid_187_1346277574.467' 
    capture_lex $P5017 
    .lex "@all_plan", $P101 
    .lex "@plan", $P102 
    .lex "@mro", $P103 
    .lex "$i", $P104 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    new $P5002, 'ResizablePMCArray'
    set $P102, $P5002
    new $P5003, 'ResizablePMCArray'
    set $P103, $P5003
    null $P5004
    set $P104, $P5004
.annotate 'line', 1048
    nqp_decontainerize $P5005, _lex_param_0
    $P5006 = $P5005."mro"(_lex_param_1)
    set $P103, $P5006
    set $N5001, $P103
    box $P5007, $N5001
    set $P104, $P5007
    new $P5011, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5011, while82_handlers376
    push_eh $P5011
  while82_test373:
    set $N5002, $P104
    set $N5003, 0
    isgt $I5001, $N5002, $N5003
    box $P5012, $I5001
    set $P5010, $P5012
    unless $I5001 goto while82_done377 
  while82_redo375:
    .const 'Sub' $P5008 = 'cuid_187_1346277574.467' 
    capture_lex $P5008
    $P5009 = $P5008()
    set $P5010, $P5009
    goto while82_test373 
  while82_handlers376:
    .get_results ($P5011)
    pop_upto_eh $P5011
    getattribute $P5011, $P5011, 'type'
    eq $P5011, .CONTROL_LOOP_NEXT, while82_test373
    eq $P5011, .CONTROL_LOOP_REDO, while82_redo375
  while82_done377:
    pop_eh 
    nqp_decontainerize $P5013, _lex_param_0
    nqp_get_sc_object $P5014, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 6
    repr_bind_attr_obj $P5013, $P5014, "@!BUILDPLAN", $P102
    nqp_decontainerize $P5015, _lex_param_0
    nqp_get_sc_object $P5016, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 6
    repr_bind_attr_obj $P5015, $P5016, "@!BUILDALLPLAN", $P101
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_187_1346277574.467") :anon :lex :outer("cuid_76_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1050
    .const 'Sub' $P5029 = 'cuid_186_1346277574.467' 
    capture_lex $P5029 
    .const 'Sub' $P5029 = 'cuid_188_1346277574.467' 
    capture_lex $P5029 
    .const 'Sub' $P5029 = 'cuid_191_1346277574.467' 
    capture_lex $P5029 
    .lex "$class", $P101 
    .lex "@attrs", $P102 
    .lex "$build", $P103 
    null $P5001
    set $P101, $P5001
    new $P5002, 'ResizablePMCArray'
    set $P102, $P5002
    null $P5003
    set $P103, $P5003
    find_lex $P5004, "$i"
    set $N5002, $P5004
    set $N5003, 1
    sub $N5001, $N5002, $N5003
    box $P5005, $N5001
    store_lex "$i", $P5005
    find_lex $P5007, "@mro"
    find_lex $P5008, "$i"
    set $I5001, $P5008
    set $P5006, $P5007[$I5001]
    unless_null $P5006, fallback378
    null $P5009
    set $P5006, $P5009
  fallback378:
    set $P101, $P5006
.annotate 'line', 1054
    get_how $P5010, $P101
    $P5011 = $P5010."attributes"($P101, 1 :named("local"))
    set $P102, $P5011
.annotate 'line', 1057
    get_how $P5012, $P101
    $P5013 = $P5012."find_method"($P101, "BUILD", 1 :named("no_fallback"))
    set $P103, $P5013
    defined $I5002, $P103
    unless $I5002 goto if83_else379 
    .const 'Sub' $P5014 = 'cuid_186_1346277574.467' 
    capture_lex $P5014
    $P5015 = $P5014()
    set $P5022, $P5015
    goto if83_end380
  if83_else379:
.annotate 'line', 1066
    set $P5016, $P102
    iter $P5018, $P102
    new $P5020, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5020, for_handlers389
    push_eh $P5020
  for_next390:
    unless $P5018, for_done392
    shift $P5021, $P5018
  for_redo391:
    .const 'Sub' $P5019 = 'cuid_188_1346277574.467' 
    capture_lex $P5019
    $P5016 = $P5019($P5021)
    goto for_next390
  for_handlers389:
    .get_results ($P5020)
    pop_upto_eh $P5020
    getattribute $P5020, $P5020, 'type'
    eq $P5020, .CONTROL_LOOP_NEXT, for_next390
    eq $P5020, .CONTROL_LOOP_REDO, for_redo391
  for_done392:
    pop_eh 
    set $P5022, $P5016
  if83_end380:
    set $P5023, $P102
    iter $P5025, $P102
    new $P5027, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5027, for_handlers399
    push_eh $P5027
  for_next400:
    unless $P5025, for_done402
    shift $P5028, $P5025
  for_redo401:
    .const 'Sub' $P5026 = 'cuid_191_1346277574.467' 
    capture_lex $P5026
    $P5023 = $P5026($P5028)
    goto for_next400
  for_handlers399:
    .get_results ($P5027)
    pop_upto_eh $P5027
    getattribute $P5027, $P5027, 'type'
    eq $P5027, .CONTROL_LOOP_NEXT, for_next400
    eq $P5027, .CONTROL_LOOP_REDO, for_redo401
  for_done402:
    pop_eh 
    .return ($P5023) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_186_1346277574.467") :anon :lex :outer("cuid_187_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1058
    .lex "$entry", $P101 
    null $P5001
    set $P101, $P5001
    new $P5002, 'ResizablePMCArray'
    box $P5003, 0
    push $P5002, $P5003
    find_lex $P5004, "$build"
    push $P5002, $P5004
    set $P101, $P5002
    find_lex $P5005, "@all_plan"
    find_lex $P5006, "@all_plan"
    set $N5001, $P5006
    set $I5001, $N5001
    set $P5005[$I5001], $P101
    find_lex $P5007, "$i"
    set $N5002, $P5007
    set $N5003, 0
    iseq $I5002, $N5002, $N5003
    box $P5011, $I5002
    set $P5010, $P5011
    unless $I5002 goto if84_end382 
.annotate 'line', 1062
    find_lex $P5008, "@plan"
    find_lex $P5009, "@plan"
    set $N5004, $P5009
    set $I5003, $N5004
    set $P5008[$I5003], $P101
    set $P5010, $P101
  if84_end382:
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_188_1346277574.467") :anon :lex :outer("cuid_187_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1070
    .param pmc _lex_param_0 
    .lex "$attr_name", $P101 
    .lex "$name", $P102 
    .lex "$sigil", $P103 
    .lex "$sigop", $P104 
    .lex "$entry", $P105 
    .lex "$_", _lex_param_0 
    null $P5001
    set $P101, $P5001
    null $P5002
    set $P102, $P5002
    null $P5003
    set $P103, $P5003
    null $P5004
    set $P104, $P5004
    null $P5005
    set $P105, $P5005
.annotate 'line', 1071
    $P5006 = _lex_param_0."name"()
    set $P101, $P5006
    set $S5002, $P101
    substr $S5001, $S5002, 2
    box $P5007, $S5001
    set $P102, $P5007
    set $S5004, $P101
    substr $S5003, $S5004, 0, 1
    box $P5008, $S5003
    set $P103, $P5008
    set $S5005, $P103
    iseq $I5001, $S5005, "@"
    unless $I5001 goto if85_else383 
    set $I5004, 2
    goto if85_end384
  if85_else383:
    set $S5006, $P103
    iseq $I5002, $S5006, "%"
    unless $I5002 goto if86_else385 
    set $I5003, 3
    goto if86_end386
  if86_else385:
    set $I5003, 1
  if86_end386:
    set $I5004, $I5003
  if85_end384:
    box $P5009, $I5004
    set $P104, $P5009
    new $P5010, 'ResizablePMCArray'
    push $P5010, $P104
    find_lex $P5011, "$class"
    push $P5010, $P5011
    push $P5010, $P102
    push $P5010, $P101
    set $P105, $P5010
    find_lex $P5012, "@all_plan"
    find_lex $P5013, "@all_plan"
    set $N5001, $P5013
    set $I5005, $N5001
    set $P5012[$I5005], $P105
    find_lex $P5014, "$i"
    set $N5002, $P5014
    set $N5003, 0
    iseq $I5006, $N5002, $N5003
    box $P5018, $I5006
    set $P5017, $P5018
    unless $I5006 goto if87_end388 
.annotate 'line', 1077
    find_lex $P5015, "@plan"
    find_lex $P5016, "@plan"
    set $N5004, $P5016
    set $I5007, $N5004
    set $P5015[$I5007], $P105
    set $P5017, $P105
  if87_end388:
    .return ($P5017) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_191_1346277574.467") :anon :lex :outer("cuid_187_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1084
    .param pmc _lex_param_0 
    .const 'Sub' $P5005 = 'cuid_190_1346277574.467' 
    capture_lex $P5005 
    .lex "$_", _lex_param_0 
    can $I5001, _lex_param_0, "build"
    box $P5004, $I5001
    set $P5003, $P5004
    unless $I5001 goto if88_end394 
    .const 'Sub' $P5001 = 'cuid_190_1346277574.467' 
    capture_lex $P5001
    $P5002 = $P5001()
    set $P5003, $P5002
  if88_end394:
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_190_1346277574.467") :anon :lex :outer("cuid_191_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1085
    .const 'Sub' $P5008 = 'cuid_189_1346277574.467' 
    capture_lex $P5008 
    .lex "$default", $P101 
    null $P5001
    set $P101, $P5001
.annotate 'line', 1086
    find_lex $P5002, "$_"
    $P5003 = $P5002."build"()
    set $P101, $P5003
    defined $I5001, $P101
    box $P5007, $I5001
    set $P5006, $P5007
    unless $I5001 goto if89_end396 
    .const 'Sub' $P5004 = 'cuid_189_1346277574.467' 
    capture_lex $P5004
    $P5005 = $P5004()
    set $P5006, $P5005
  if89_end396:
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_189_1346277574.467") :anon :lex :outer("cuid_190_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1087
    .lex "$entry", $P101 
    null $P5001
    set $P101, $P5001
    new $P5002, 'ResizablePMCArray'
    box $P5003, 4
    push $P5002, $P5003
    find_lex $P5004, "$class"
    push $P5002, $P5004
.annotate 'line', 1088
    find_lex $P5005, "$_"
    $P5006 = $P5005."name"()
    push $P5002, $P5006
    find_lex $P5007, "$default"
    push $P5002, $P5007
    set $P101, $P5002
    find_lex $P5008, "@all_plan"
    find_lex $P5009, "@all_plan"
    set $N5001, $P5009
    set $I5001, $N5001
    set $P5008[$I5001], $P101
    find_lex $P5010, "$i"
    set $N5002, $P5010
    set $N5003, 0
    iseq $I5002, $N5002, $N5003
    box $P5014, $I5002
    set $P5013, $P5014
    unless $I5002 goto if90_end398 
.annotate 'line', 1090
    find_lex $P5011, "@plan"
    find_lex $P5012, "@plan"
    set $N5004, $P5012
    set $I5003, $N5004
    set $P5011[$I5003], $P101
    set $P5013, $P101
  if90_end398:
    .return ($P5013) 
.end
.HLL "nqp"
.namespace []
.sub "BUILDPLAN" :subid("cuid_77_1346277574.467") :anon :lex :outer("cuid_98_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1101
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 6
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!BUILDPLAN"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "BUILDALLPLAN" :subid("cuid_78_1346277574.467") :anon :lex :outer("cuid_98_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1105
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 6
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!BUILDALLPLAN"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "parents" :subid("cuid_79_1346277574.467") :anon :lex :outer("cuid_98_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1113
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :named("local") :optional 
    .param int haz_param_19 :opt_flag 
    if haz_param_19, default405
    box $P5008, 0
    set _lex_param_2, $P5008
  default405:
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$local", _lex_param_2 
    unless _lex_param_2 goto if91_else403 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 6
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!parents"
    set $P5007, $P5003
    goto if91_end404
  if91_else403:
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 6
    repr_get_attr_obj $P5006, $P5004, $P5005, "@!mro"
    set $P5007, $P5006
  if91_end404:
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "mro" :subid("cuid_80_1346277574.467") :anon :lex :outer("cuid_98_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1117
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 6
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!mro"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "roles" :subid("cuid_81_1346277574.467") :anon :lex :outer("cuid_98_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1121
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :named("local") 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$local", _lex_param_2 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 6
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!roles"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "methods" :subid("cuid_82_1346277574.467") :anon :lex :outer("cuid_98_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1125
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :named("local") :optional 
    .param int haz_param_20 :opt_flag 
    .const 'Sub' $P5008 = 'cuid_194_1346277574.467' 
    capture_lex $P5008 
    if haz_param_20, default416
    box $P5007, 0
    set _lex_param_2, $P5007
  default416:
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$local", _lex_param_2 
    unless _lex_param_2 goto if92_else406 
.annotate 'line', 1126
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 6
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!method_order"
    set $P5006, $P5003
    goto if92_end407
  if92_else406:
    .const 'Sub' $P5004 = 'cuid_194_1346277574.467' 
    capture_lex $P5004
    $P5005 = $P5004()
    set $P5006, $P5005
  if92_end407:
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_194_1346277574.467") :anon :lex :outer("cuid_82_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1129
    .const 'Sub' $P5012 = 'cuid_193_1346277574.467' 
    capture_lex $P5012 
    .lex "@meths", $P101 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    find_lex $P5006, "self"
    nqp_decontainerize $P5005, $P5006
    nqp_get_sc_object $P5007, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 6
    repr_get_attr_obj $P5008, $P5005, $P5007, "@!mro"
    set $P5002, $P5008
    iter $P5004, $P5008
    new $P5010, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5010, for_handlers412
    push_eh $P5010
  for_next413:
    unless $P5004, for_done415
    shift $P5011, $P5004
  for_redo414:
    .const 'Sub' $P5009 = 'cuid_193_1346277574.467' 
    capture_lex $P5009
    $P5002 = $P5009($P5011)
    goto for_next413
  for_handlers412:
    .get_results ($P5010)
    pop_upto_eh $P5010
    getattribute $P5010, $P5010, 'type'
    eq $P5010, .CONTROL_LOOP_NEXT, for_next413
    eq $P5010, .CONTROL_LOOP_REDO, for_redo414
  for_done415:
    pop_eh 
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_193_1346277574.467") :anon :lex :outer("cuid_194_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1131
    .param pmc _lex_param_0 
    .const 'Sub' $P5009 = 'cuid_192_1346277574.467' 
    capture_lex $P5009 
    .lex "$_", _lex_param_0 
.annotate 'line', 1132
    get_how $P5004, _lex_param_0
    $P5005 = $P5004."methods"(_lex_param_0, 1 :named("local"))
    set $P5001, $P5005
    iter $P5003, $P5005
    new $P5007, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5007, for_handlers408
    push_eh $P5007
  for_next409:
    unless $P5003, for_done411
    shift $P5008, $P5003
  for_redo410:
    .const 'Sub' $P5006 = 'cuid_192_1346277574.467' 
    capture_lex $P5006
    $P5001 = $P5006($P5008)
    goto for_next409
  for_handlers408:
    .get_results ($P5007)
    pop_upto_eh $P5007
    getattribute $P5007, $P5007, 'type'
    eq $P5007, .CONTROL_LOOP_NEXT, for_next409
    eq $P5007, .CONTROL_LOOP_REDO, for_redo410
  for_done411:
    pop_eh 
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_192_1346277574.467") :anon :lex :outer("cuid_193_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1132
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 1133
    find_lex $P5001, "@meths"
    $P5002 = $P5001."push"(_lex_param_0)
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "method_table" :subid("cuid_83_1346277574.467") :anon :lex :outer("cuid_98_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1140
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 6
    repr_get_attr_obj $P5003, $P5001, $P5002, "%!methods"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "name" :subid("cuid_84_1346277574.467") :anon :lex :outer("cuid_98_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1144
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 6
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!name"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "traced" :subid("cuid_85_1346277574.467") :anon :lex :outer("cuid_98_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1148
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 6
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!trace"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "trace_depth" :subid("cuid_86_1346277574.467") :anon :lex :outer("cuid_98_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1152
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 6
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!trace_depth"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "attributes" :subid("cuid_87_1346277574.467") :anon :lex :outer("cuid_98_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1156
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :named("local") :optional 
    .param int haz_param_21 :opt_flag 
    .const 'Sub' $P5022 = 'cuid_195_1346277574.467' 
    capture_lex $P5022 
    .const 'Sub' $P5022 = 'cuid_197_1346277574.467' 
    capture_lex $P5022 
    if haz_param_21, default431
    null $P5021
    set _lex_param_2, $P5021
  default431:
    .lex "@attrs", $P101 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$local", _lex_param_2 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    unless _lex_param_2 goto if93_else417 
.annotate 'line', 1158
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 6
    repr_get_attr_obj $P5007, $P5005, $P5006, "%!attributes"
    set $P5002, $P5007
    iter $P5004, $P5007
    new $P5009, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5009, for_handlers419
    push_eh $P5009
  for_next420:
    unless $P5004, for_done422
    shift $P5010, $P5004
  for_redo421:
    .const 'Sub' $P5008 = 'cuid_195_1346277574.467' 
    capture_lex $P5008
    $P5002 = $P5008($P5010)
    goto for_next420
  for_handlers419:
    .get_results ($P5009)
    pop_upto_eh $P5009
    getattribute $P5009, $P5009, 'type'
    eq $P5009, .CONTROL_LOOP_NEXT, for_next420
    eq $P5009, .CONTROL_LOOP_REDO, for_redo421
  for_done422:
    pop_eh 
    set $P5020, $P5002
    goto if93_end418
  if93_else417:
.annotate 'line', 1163
    nqp_decontainerize $P5014, _lex_param_0
    nqp_get_sc_object $P5015, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 6
    repr_get_attr_obj $P5016, $P5014, $P5015, "@!mro"
    set $P5011, $P5016
    iter $P5013, $P5016
    new $P5018, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5018, for_handlers427
    push_eh $P5018
  for_next428:
    unless $P5013, for_done430
    shift $P5019, $P5013
  for_redo429:
    .const 'Sub' $P5017 = 'cuid_197_1346277574.467' 
    capture_lex $P5017
    $P5011 = $P5017($P5019)
    goto for_next428
  for_handlers427:
    .get_results ($P5018)
    pop_upto_eh $P5018
    getattribute $P5018, $P5018, 'type'
    eq $P5018, .CONTROL_LOOP_NEXT, for_next428
    eq $P5018, .CONTROL_LOOP_REDO, for_redo429
  for_done430:
    pop_eh 
    set $P5020, $P5011
  if93_end418:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_195_1346277574.467") :anon :lex :outer("cuid_87_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1159
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 1160
    find_lex $P5001, "@attrs"
    $P5002 = _lex_param_0."value"()
    $P5003 = $P5001."push"($P5002)
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_197_1346277574.467") :anon :lex :outer("cuid_87_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1164
    .param pmc _lex_param_0 
    .const 'Sub' $P5009 = 'cuid_196_1346277574.467' 
    capture_lex $P5009 
    .lex "$_", _lex_param_0 
.annotate 'line', 1165
    get_how $P5004, _lex_param_0
    $P5005 = $P5004."attributes"(_lex_param_0, 1 :named("local"))
    set $P5001, $P5005
    iter $P5003, $P5005
    new $P5007, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5007, for_handlers423
    push_eh $P5007
  for_next424:
    unless $P5003, for_done426
    shift $P5008, $P5003
  for_redo425:
    .const 'Sub' $P5006 = 'cuid_196_1346277574.467' 
    capture_lex $P5006
    $P5001 = $P5006($P5008)
    goto for_next424
  for_handlers423:
    .get_results ($P5007)
    pop_upto_eh $P5007
    getattribute $P5007, $P5007, 'type'
    eq $P5007, .CONTROL_LOOP_NEXT, for_next424
    eq $P5007, .CONTROL_LOOP_REDO, for_redo425
  for_done426:
    pop_eh 
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_196_1346277574.467") :anon :lex :outer("cuid_197_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1165
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 1166
    find_lex $P5001, "@attrs"
    $P5002 = $P5001."push"(_lex_param_0)
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "parrot_vtable_mappings" :subid("cuid_88_1346277574.467") :anon :lex :outer("cuid_98_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1173
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :named("local") 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$local", _lex_param_2 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 6
    repr_get_attr_obj $P5003, $P5001, $P5002, "%!parrot_vtable_mapping"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "parrot_vtable_handler_mappings" :subid("cuid_89_1346277574.467") :anon :lex :outer("cuid_98_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1177
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :named("local") 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$local", _lex_param_2 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 6
    repr_get_attr_obj $P5003, $P5001, $P5002, "%!parrot_vtable_handler_mapping"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "isa" :subid("cuid_90_1346277574.467") :anon :lex :outer("cuid_98_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1185
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
    set_label $P103, lexotic_432
    .lex "RETURN", $P103
    get_what $P5003, _lex_param_2
    set $P101, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 6
    repr_get_attr_obj $P5006, $P5004, $P5005, "@!mro"
    set $N5001, $P5006
    box $P5007, $N5001
    set $P102, $P5007
    new $P5019, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5019, while94_handlers437
    push_eh $P5019
  while94_test434:
    set $N5002, $P102
    set $N5003, 0
    isgt $I5001, $N5002, $N5003
    box $P5020, $I5001
    set $P5018, $P5020
    unless $I5001 goto while94_done438 
  while94_redo436:
.annotate 'line', 1188
    set $N5005, $P102
    set $N5006, 1
    sub $N5004, $N5005, $N5006
    box $P5008, $N5004
    set $P102, $P5008
    nqp_decontainerize $P5010, _lex_param_0
    nqp_get_sc_object $P5011, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 6
    repr_get_attr_obj $P5012, $P5010, $P5011, "@!mro"
    set $I5004, $P102
    set $P5009, $P5012[$I5004]
    unless_null $P5009, fallback441
    null $P5013
    set $P5009, $P5013
  fallback441:
    get_id $I5003, $P5009
    get_id $I5005, $P101
    iseq $I5002, $I5003, $I5005
    box $P5017, $I5002
    set $P5016, $P5017
    unless $I5002 goto if95_end440 
.annotate 'line', 1190
    find_lex $P5014, "RETURN"
    $P5015 = $P5014(1)
    set $P5016, $P5015
  if95_end440:
    set $P5018, $P5016
    goto while94_test434 
  while94_handlers437:
    .get_results ($P5019)
    pop_upto_eh $P5019
    getattribute $P5019, $P5019, 'type'
    eq $P5019, .CONTROL_LOOP_NEXT, while94_test434
    eq $P5019, .CONTROL_LOOP_REDO, while94_redo436
  while94_done438:
    pop_eh 
    find_lex $P5021, "RETURN"
    $P5022 = $P5021(0)
    goto lexotic_433
  lexotic_432:
    .get_results ($P5022)
  lexotic_433:
    .return ($P5022) 
.end
.HLL "nqp"
.namespace []
.sub "does" :subid("cuid_91_1346277574.467") :anon :lex :outer("cuid_98_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1197
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
    set_label $P102, lexotic_442
    .lex "RETURN", $P102
    nqp_decontainerize $P5002, _lex_param_0
    nqp_get_sc_object $P5003, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 6
    repr_get_attr_obj $P5004, $P5002, $P5003, "@!done"
    set $N5001, $P5004
    box $P5005, $N5001
    set $P101, $P5005
    new $P5017, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5017, while96_handlers447
    push_eh $P5017
  while96_test444:
    set $N5002, $P101
    set $N5003, 0
    isgt $I5001, $N5002, $N5003
    box $P5018, $I5001
    set $P5016, $P5018
    unless $I5001 goto while96_done448 
  while96_redo446:
.annotate 'line', 1199
    set $N5005, $P101
    set $N5006, 1
    sub $N5004, $N5005, $N5006
    box $P5006, $N5004
    set $P101, $P5006
    nqp_decontainerize $P5008, _lex_param_0
    nqp_get_sc_object $P5009, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 6
    repr_get_attr_obj $P5010, $P5008, $P5009, "@!done"
    set $I5004, $P101
    set $P5007, $P5010[$I5004]
    unless_null $P5007, fallback451
    null $P5011
    set $P5007, $P5011
  fallback451:
    get_id $I5003, $P5007
    get_id $I5005, _lex_param_2
    iseq $I5002, $I5003, $I5005
    box $P5015, $I5002
    set $P5014, $P5015
    unless $I5002 goto if97_end450 
.annotate 'line', 1201
    find_lex $P5012, "RETURN"
    $P5013 = $P5012(1)
    set $P5014, $P5013
  if97_end450:
    set $P5016, $P5014
    goto while96_test444 
  while96_handlers447:
    .get_results ($P5017)
    pop_upto_eh $P5017
    getattribute $P5017, $P5017, 'type'
    eq $P5017, .CONTROL_LOOP_NEXT, while96_test444
    eq $P5017, .CONTROL_LOOP_REDO, while96_redo446
  while96_done448:
    pop_eh 
    find_lex $P5019, "RETURN"
    $P5020 = $P5019(0)
    goto lexotic_443
  lexotic_442:
    .get_results ($P5020)
  lexotic_443:
    .return ($P5020) 
.end
.HLL "nqp"
.namespace []
.sub "can" :subid("cuid_92_1346277574.467") :anon :lex :outer("cuid_98_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1208
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .const 'Sub' $P5012 = 'cuid_198_1346277574.467' 
    capture_lex $P5012 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$name", _lex_param_2 
    root_new $P101, ['parrot';'Continuation']
    set_label $P101, lexotic_452
    .lex "RETURN", $P101
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 6
    repr_get_attr_obj $P5006, $P5004, $P5005, "@!mro"
    set $P5001, $P5006
    iter $P5003, $P5006
    new $P5008, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5008, for_handlers457
    push_eh $P5008
  for_next458:
    unless $P5003, for_done460
    shift $P5009, $P5003
  for_redo459:
    .const 'Sub' $P5007 = 'cuid_198_1346277574.467' 
    capture_lex $P5007
    $P5001 = $P5007($P5009)
    goto for_next458
  for_handlers457:
    .get_results ($P5008)
    pop_upto_eh $P5008
    getattribute $P5008, $P5008, 'type'
    eq $P5008, .CONTROL_LOOP_NEXT, for_next458
    eq $P5008, .CONTROL_LOOP_REDO, for_redo459
  for_done460:
    pop_eh 
    find_lex $P5010, "RETURN"
    $P5011 = $P5010(0)
    goto lexotic_453
  lexotic_452:
    .get_results ($P5011)
  lexotic_453:
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_198_1346277574.467") :anon :lex :outer("cuid_92_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1209
    .param pmc _lex_param_0 
    .lex "%meths", $P101 
    .lex "$can", $P102 
    .lex "$_", _lex_param_0 
    new $P5001, 'Hash'
    set $P101, $P5001
    null $P5002
    set $P102, $P5002
.annotate 'line', 1210
    get_how $P5003, _lex_param_0
    find_lex $P5004, "$obj"
    $P5005 = $P5003."method_table"($P5004)
    set $P101, $P5005
    find_lex $P5007, "$name"
    set $S5001, $P5007
    set $P5006, $P101[$S5001]
    unless_null $P5006, fallback454
    null $P5008
    set $P5006, $P5008
  fallback454:
    set $P102, $P5006
    defined $I5001, $P102
    box $P5012, $I5001
    set $P5011, $P5012
    unless $I5001 goto if98_end456 
.annotate 'line', 1212
    find_lex $P5009, "RETURN"
    $P5010 = $P5009($P102)
    set $P5011, $P5010
  if98_end456:
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "find_method" :subid("cuid_93_1346277574.467") :anon :lex :outer("cuid_98_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1222
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 :named("no_fallback") :optional 
    .param int haz_param_22 :opt_flag 
    .param pmc _lex_param_4 :named("no_trace") :optional 
    .param int haz_param_23 :opt_flag 
    .const 'Sub' $P5013 = 'cuid_201_1346277574.467' 
    capture_lex $P5013 
    if haz_param_22, default476
    box $P5011, 0
    set _lex_param_3, $P5011
  default476:
    if haz_param_23, default477
    box $P5012, 0
    set _lex_param_4, $P5012
  default477:
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$name", _lex_param_2 
    .lex "$no_fallback", _lex_param_3 
    .lex "$no_trace", _lex_param_4 
    root_new $P101, ['parrot';'Continuation']
    set_label $P101, lexotic_461
    .lex "RETURN", $P101
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 6
    repr_get_attr_obj $P5006, $P5004, $P5005, "@!mro"
    set $P5001, $P5006
    iter $P5003, $P5006
    new $P5008, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5008, for_handlers472
    push_eh $P5008
  for_next473:
    unless $P5003, for_done475
    shift $P5009, $P5003
  for_redo474:
    .const 'Sub' $P5007 = 'cuid_201_1346277574.467' 
    capture_lex $P5007
    $P5001 = $P5007($P5009)
    goto for_next473
  for_handlers472:
    .get_results ($P5008)
    pop_upto_eh $P5008
    getattribute $P5008, $P5008, 'type'
    eq $P5008, .CONTROL_LOOP_NEXT, for_next473
    eq $P5008, .CONTROL_LOOP_REDO, for_redo474
  for_done475:
    pop_eh 
    null $P5010
    goto lexotic_462
  lexotic_461:
    .get_results ($P5010)
  lexotic_462:
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_201_1346277574.467") :anon :lex :outer("cuid_93_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1223
    .param pmc _lex_param_0 
    .const 'Sub' $P5010 = 'cuid_200_1346277574.467' 
    capture_lex $P5010 
    .lex "%meths", $P101 
    .lex "$_", _lex_param_0 
    new $P5001, 'Hash'
    set $P101, $P5001
.annotate 'line', 1224
    get_how $P5002, _lex_param_0
    find_lex $P5003, "$obj"
    $P5004 = $P5002."method_table"($P5003)
    set $P101, $P5004
    find_lex $P5005, "$name"
    set $S5001, $P5005
    exists $I5001, $P101[$S5001]
    box $P5009, $I5001
    set $P5008, $P5009
    unless $I5001 goto if99_end464 
    .const 'Sub' $P5006 = 'cuid_200_1346277574.467' 
    capture_lex $P5006
    $P5007 = $P5006()
    set $P5008, $P5007
  if99_end464:
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_200_1346277574.467") :anon :lex :outer("cuid_201_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1225
    .const 'Sub' $P5021 = 'cuid_199_1346277574.467' 
    capture_lex $P5021 
    .lex "$found", $P101 
    null $P5001
    set $P101, $P5001
    find_lex $P5003, "%meths"
    find_lex $P5004, "$name"
    set $S5001, $P5004
    set $P5002, $P5003[$S5001]
    unless_null $P5002, fallback465
    null $P5005
    set $P5002, $P5005
  fallback465:
    set $P101, $P5002
    find_lex $P5008, "self"
    nqp_decontainerize $P5007, $P5008
    nqp_get_sc_object $P5009, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 6
    repr_get_attr_obj $P5010, $P5007, $P5009, "$!trace"
    set $P5012, $P5010
    unless $P5010 goto if102_end471 
    find_lex $P5011, "$no_trace"
    isfalse $I5001, $P5011
    box $P5013, $I5001
    set $P5012, $P5013
  if102_end471:
    set $P5015, $P5012
    unless $P5012 goto if101_end469 
    find_lex $P5014, "$name"
    set $S5003, $P5014
    substr $S5002, $S5003, 0, 1
    isne $I5002, $S5002, "!"
    box $P5016, $I5002
    set $P5015, $P5016
  if101_end469:
    unless $P5015 goto if100_else466 
    .const 'Sub' $P5018 = 'cuid_199_1346277574.467' 
    capture_lex $P5018
    newclosure $P5017, $P5018
    set $P5019, $P5017
    goto if100_end467
  if100_else466:
    set $P5019, $P101
  if100_end467:
    find_lex $P5006, "RETURN"
    $P5020 = $P5006($P5019)
    .return ($P5020) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_199_1346277574.467") :anon :lex :outer("cuid_200_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1228
    .param pmc _lex_param_0 :slurpy 
    .param pmc _lex_param_1 :slurpy :named 
    .lex "$result", $P101 
    .lex "@pos", _lex_param_0 
    .lex "%named", _lex_param_1 
    null $P5001
    set $P101, $P5001
.annotate 'line', 1229
    find_lex $P5003, "self"
    nqp_decontainerize $P5002, $P5003
    nqp_get_sc_object $P5004, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 6
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
    nqp_get_sc_object $P5010, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 6
    find_lex $P5012, "self"
    nqp_decontainerize $P5011, $P5012
    nqp_get_sc_object $P5013, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 6
    repr_get_attr_obj $P5014, $P5011, $P5013, "$!trace_depth"
    set $N5002, $P5014
    set $N5003, 1
    add $N5001, $N5002, $N5003
    box $P5015, $N5001
    repr_bind_attr_obj $P5008, $P5010, "$!trace_depth", $P5015
.annotate 'line', 1231
    find_lex $P5016, "$found"
    $P5017 = $P5016(_lex_param_0 :flat, _lex_param_1 :flat :named)
    set $P101, $P5017
    find_lex $P5019, "self"
    nqp_decontainerize $P5018, $P5019
    nqp_get_sc_object $P5020, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 6
    find_lex $P5022, "self"
    nqp_decontainerize $P5021, $P5022
    nqp_get_sc_object $P5023, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 6
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
.sub "cache" :subid("cuid_94_1346277574.467") :anon :lex :outer("cuid_98_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1244
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
    if $I5001 goto unless103_end479 
    find_lex $P5003, "%caches"
    nqp_decontainerize $P5004, _lex_param_0
    get_id $I5003, $P5004
    set $S5002, $I5003
    new $P5005, 'Hash'
    set $P5003[$S5002], $P5005
    set $P5006, $P5005
  unless103_end479:
    find_lex $P5009, "%caches"
    nqp_decontainerize $P5010, _lex_param_0
    get_id $I5005, $P5010
    set $S5003, $I5005
    set $P5008, $P5009[$S5003]
    unless_null $P5008, fallback482
    null $P5011
    set $P5008, $P5011
  fallback482:
    set $S5004, _lex_param_2
    exists $I5004, $P5008[$S5004]
    unless $I5004 goto if104_else480 
    find_lex $P5014, "%caches"
    nqp_decontainerize $P5015, _lex_param_0
    get_id $I5006, $P5015
    set $S5005, $I5006
    set $P5013, $P5014[$S5005]
    unless_null $P5013, fallback483
    null $P5016
    set $P5013, $P5016
  fallback483:
    set $S5006, _lex_param_2
    set $P5012, $P5013[$S5006]
    unless_null $P5012, fallback484
    null $P5017
    set $P5012, $P5017
  fallback484:
    set $P5023, $P5012
    goto if104_end481
  if104_else480:
    find_lex $P5019, "%caches"
    nqp_decontainerize $P5020, _lex_param_0
    get_id $I5007, $P5020
    set $S5007, $I5007
    set $P5018, $P5019[$S5007]
    unless_null $P5018, fallback485
    null $P5021
    set $P5018, $P5021
  fallback485:
    set $S5008, _lex_param_2
.annotate 'line', 1248
    $P5022 = _lex_param_3()
    set $P5018[$S5008], $P5022
    set $P5023, $P5022
  if104_end481:
    .return ($P5023) 
.end
.HLL "nqp"
.namespace []
.sub "mixin" :subid("cuid_95_1346277574.467") :anon :lex :outer("cuid_98_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1256
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .const 'Sub' $P5023 = 'cuid_202_1346277574.467' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_203_1346277574.467' 
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
    nqp_get_sc_object $P5005, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 6
    repr_get_attr_obj $P5006, $P5004, $P5005, "@!mixin_cache"
    isnull $I5001, $P5006
    box $P5018, $I5001
    set $P5017, $P5018
    if $I5001 goto unless105_end487 
.annotate 'line', 1260
    nqp_decontainerize $P5010, _lex_param_0
    nqp_get_sc_object $P5011, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 6
    repr_get_attr_obj $P5012, $P5010, $P5011, "@!mixin_cache"
    set $P5007, $P5012
    iter $P5009, $P5012
    new $P5014, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5014, for_handlers490
    push_eh $P5014
  for_next491:
    unless $P5009, for_done493
    shift $P5015, $P5009
    shift $P5016, $P5009
  for_redo492:
    .const 'Sub' $P5013 = 'cuid_202_1346277574.467' 
    capture_lex $P5013
    $P5007 = $P5013($P5015, $P5016)
    goto for_next491
  for_handlers490:
    .get_results ($P5014)
    pop_upto_eh $P5014
    getattribute $P5014, $P5014, 'type'
    eq $P5014, .CONTROL_LOOP_NEXT, for_next491
    eq $P5014, .CONTROL_LOOP_REDO, for_redo492
  for_done493:
    pop_eh 
    set $P5017, $P5007
  unless105_end487:
    set $P5021, $P101
    if $P101 goto unless107_end495 
    .const 'Sub' $P5019 = 'cuid_203_1346277574.467' 
    capture_lex $P5019
    $P5020 = $P5019()
    set $P5021, $P5020
  unless107_end495:
    repr_defined $I5002, _lex_param_1
    unless $I5002 goto if109_else498 
    repr_change_type _lex_param_1, $P102
    set $P5022, _lex_param_1
    goto if109_end499
  if109_else498:
    set $P5022, $P102
  if109_end499:
    .return ($P5022) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_202_1346277574.467") :anon :lex :outer("cuid_95_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1261
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$c_role", _lex_param_0 
    .lex "$c_type", _lex_param_1 
    get_id $I5002, _lex_param_0
    find_lex $P5001, "$role"
    get_id $I5003, $P5001
    iseq $I5001, $I5002, $I5003
    set $I5004, $I5001
    unless $I5001 goto if106_end489 
.annotate 'line', 1262
    store_lex "$new_type", _lex_param_1
    box $P5002, 1
    store_lex "$found", $P5002
    die 0, .CONTROL_LOOP_LAST
    set $I5004, 0
  if106_end489:
    .return ($I5004) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_203_1346277574.467") :anon :lex :outer("cuid_95_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1271
    .lex "$new_name", $P101 
    null $P5001
    set $P101, $P5001
.annotate 'line', 1273
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
.annotate 'line', 1277
    find_lex $P5012, "self"
    nqp_decontainerize $P5011, $P5012
    find_lex $P5013, "$obj"
    repr_name $S5006, $P5013
    $P5014 = $P5011."new_type"($P101 :named("name"), $S5006 :named("repr"))
    store_lex "$new_type", $P5014
.annotate 'line', 1278
    find_lex $P5016, "$new_type"
    get_how $P5015, $P5016
    find_lex $P5017, "$new_type"
    find_lex $P5019, "$obj"
    get_what $P5018, $P5019
    $P5020 = $P5015."add_parent"($P5017, $P5018)
.annotate 'line', 1279
    find_lex $P5022, "$new_type"
    get_how $P5021, $P5022
    find_lex $P5023, "$new_type"
    find_lex $P5024, "$role"
    $P5025 = $P5021."add_role"($P5023, $P5024)
.annotate 'line', 1280
    find_lex $P5027, "$new_type"
    get_how $P5026, $P5027
    find_lex $P5028, "$new_type"
    $P5029 = $P5026."compose"($P5028)
    nqp_disable_sc_write_barrier 
    find_lex $P5031, "self"
    nqp_decontainerize $P5030, $P5031
    nqp_get_sc_object $P5032, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 6
    repr_get_attr_obj $P5033, $P5030, $P5032, "@!mixin_cache"
    isnull $I5001, $P5033
    box $P5039, $I5001
    set $P5038, $P5039
    unless $I5001 goto if108_end497 
    find_lex $P5035, "self"
    nqp_decontainerize $P5034, $P5035
    nqp_get_sc_object $P5036, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 6
    new $P5037, 'ResizablePMCArray'
    repr_bind_attr_obj $P5034, $P5036, "@!mixin_cache", $P5037
    set $P5038, $P5037
  if108_end497:
    find_lex $P5041, "self"
    nqp_decontainerize $P5040, $P5041
    nqp_get_sc_object $P5042, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 6
    repr_get_attr_obj $P5043, $P5040, $P5042, "@!mixin_cache"
    find_lex $P5045, "self"
    nqp_decontainerize $P5044, $P5045
    nqp_get_sc_object $P5046, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 6
    repr_get_attr_obj $P5047, $P5044, $P5046, "@!mixin_cache"
    set $N5001, $P5047
    set $I5002, $N5001
    find_lex $P5048, "$role"
    set $P5043[$I5002], $P5048
    find_lex $P5050, "self"
    nqp_decontainerize $P5049, $P5050
    nqp_get_sc_object $P5051, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 6
    repr_get_attr_obj $P5052, $P5049, $P5051, "@!mixin_cache"
    find_lex $P5054, "self"
    nqp_decontainerize $P5053, $P5054
    nqp_get_sc_object $P5055, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 6
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
.sub "trace-on" :subid("cuid_96_1346277574.467") :anon :lex :outer("cuid_98_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1301
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :optional 
    .param int haz_param_24 :opt_flag 
    if haz_param_24, default501
    null $P5009
    set _lex_param_2, $P5009
  default501:
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$depth", _lex_param_2 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 6
    box $P5003, 1
    repr_bind_attr_obj $P5001, $P5002, "$!trace", $P5003
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 6
    set $P5006, _lex_param_2
    defined $I5001, $P5006
    if $I5001, defor500
    box $P5007, 0
    set $P5006, $P5007
  defor500:
    repr_bind_attr_obj $P5004, $P5005, "$!trace_depth", $P5006
    set_method_cache_authoritativeness _lex_param_1, 0
    new $P5008, 'Hash'
    publish_method_cache _lex_param_1, $P5008
    .return (_lex_param_1) 
.end
.HLL "nqp"
.namespace []
.sub "trace-off" :subid("cuid_97_1346277574.467") :anon :lex :outer("cuid_98_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1307
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 6
    box $P5003, 0
    repr_bind_attr_obj $P5001, $P5002, "$!trace", $P5003
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_108_1346277574.467") :anon :lex :outer("cuid_1_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1313
    .const 'Sub' $P5013 = 'cuid_99_1346277574.467' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_100_1346277574.467' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_101_1346277574.467' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_102_1346277574.467' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_103_1346277574.467' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_104_1346277574.467' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_105_1346277574.467' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_106_1346277574.467' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_107_1346277574.467' 
    capture_lex $P5013 
    .lex "$archetypes", $P101 
    .lex "$?PACKAGE", $P102 
    .lex "$?CLASS", $P103 
    null $P5001
    set $P101, $P5001
.annotate 'line', 1317
    nqp_get_sc_object $P5002, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 1
    $P5003 = $P5002."new"(1 :named("nominal"))
    set $P101, $P5003
    .const 'Sub' $P5004 = 'cuid_99_1346277574.467' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_100_1346277574.467' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_101_1346277574.467' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_102_1346277574.467' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_103_1346277574.467' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_104_1346277574.467' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_105_1346277574.467' 
    capture_lex $P5010
    .const 'Sub' $P5011 = 'cuid_106_1346277574.467' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_107_1346277574.467' 
    capture_lex $P5012
    .return ($P5012) 
.end
.HLL "nqp"
.namespace []
.sub "archetypes" :subid("cuid_99_1346277574.467") :anon :lex :outer("cuid_108_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1318
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    find_lex $P5001, "$archetypes"
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "new" :subid("cuid_100_1346277574.467") :anon :lex :outer("cuid_108_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1322
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("name") :optional 
    .param int haz_param_25 :opt_flag 
    if haz_param_25, default502
    null $P5005
    set _lex_param_1, $P5005
  default502:
    .lex "$obj", $P101 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    null $P5001
    set $P101, $P5001
    nqp_decontainerize $P5003, _lex_param_0
    repr_instance_of $P5002, $P5003
    set $P101, $P5002
.annotate 'line', 1324
    $P5004 = $P101."BUILD"(_lex_param_1 :named("name"))
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "BUILD" :subid("cuid_101_1346277574.467") :anon :lex :outer("cuid_108_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1328
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("name") :optional 
    .param int haz_param_26 :opt_flag 
    if haz_param_26, default503
    null $P5006
    set _lex_param_1, $P5006
  default503:
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 7
    repr_bind_attr_obj $P5001, $P5002, "$!name", _lex_param_1
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 7
    box $P5005, 0
    repr_bind_attr_obj $P5003, $P5004, "$!composed", $P5005
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "new_type" :subid("cuid_102_1346277574.467") :anon :lex :outer("cuid_108_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1336
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("name") :optional 
    .param int haz_param_27 :opt_flag 
    .param pmc _lex_param_2 :named("repr") 
    if haz_param_27, default504
    box $P5006, "<anon>"
    set _lex_param_1, $P5006
  default504:
    .lex "$metaclass", $P101 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    .lex "$repr", _lex_param_2 
    null $P5001
    set $P101, $P5001
.annotate 'line', 1337
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
.sub "add_method" :subid("cuid_103_1346277574.467") :anon :lex :outer("cuid_108_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1341
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
.sub "add_multi_method" :subid("cuid_104_1346277574.467") :anon :lex :outer("cuid_108_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1345
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
.sub "add_attribute" :subid("cuid_105_1346277574.467") :anon :lex :outer("cuid_108_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1349
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
.sub "compose" :subid("cuid_106_1346277574.467") :anon :lex :outer("cuid_108_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1353
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 7
    box $P5003, 1
    repr_bind_attr_obj $P5001, $P5002, "$!composed", $P5003
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "name" :subid("cuid_107_1346277574.467") :anon :lex :outer("cuid_108_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1357
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 7
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!name"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_119_1346277574.467") :anon :lex :outer("cuid_1_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1363
    .const 'Sub' $P5012 = 'cuid_205_1346277574.467' 
    capture_lex $P5012 
    .const 'Sub' $P5012 = 'cuid_109_1346277574.467' 
    capture_lex $P5012 
    .const 'Sub' $P5012 = 'cuid_110_1346277574.467' 
    capture_lex $P5012 
    .const 'Sub' $P5012 = 'cuid_111_1346277574.467' 
    capture_lex $P5012 
    .const 'Sub' $P5012 = 'cuid_112_1346277574.467' 
    capture_lex $P5012 
    .const 'Sub' $P5012 = 'cuid_113_1346277574.467' 
    capture_lex $P5012 
    .const 'Sub' $P5012 = 'cuid_114_1346277574.467' 
    capture_lex $P5012 
    .const 'Sub' $P5012 = 'cuid_115_1346277574.467' 
    capture_lex $P5012 
    .const 'Sub' $P5012 = 'cuid_116_1346277574.467' 
    capture_lex $P5012 
    .const 'Sub' $P5012 = 'cuid_117_1346277574.467' 
    capture_lex $P5012 
    .const 'Sub' $P5012 = 'cuid_118_1346277574.467' 
    capture_lex $P5012 
    .lex "&has_method", $P101 
    .lex "$?PACKAGE", $P102 
    .lex "$?CLASS", $P103 
    .const 'Sub' $P5001 = 'cuid_205_1346277574.467' 
    capture_lex $P5001
    set $P101, $P5001
    .const 'Sub' $P5002 = 'cuid_109_1346277574.467' 
    capture_lex $P5002
    .const 'Sub' $P5003 = 'cuid_110_1346277574.467' 
    capture_lex $P5003
    .const 'Sub' $P5004 = 'cuid_111_1346277574.467' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_112_1346277574.467' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_113_1346277574.467' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_114_1346277574.467' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_115_1346277574.467' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_116_1346277574.467' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_117_1346277574.467' 
    capture_lex $P5010
    .const 'Sub' $P5011 = 'cuid_118_1346277574.467' 
    capture_lex $P5011
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "has_method" :subid("cuid_205_1346277574.467") :anon :lex :outer("cuid_119_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1443
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .const 'Sub' $P5012 = 'cuid_204_1346277574.467' 
    capture_lex $P5012 
    .lex "@methods", $P101 
    .lex "$target", _lex_param_0 
    .lex "$name", _lex_param_1 
    .lex "$local", _lex_param_2 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    root_new $P102, ['parrot';'Continuation']
    set_label $P102, lexotic_505
    .lex "RETURN", $P102
.annotate 'line', 1444
    get_how $P5002, _lex_param_0
    $P5003 = $P5002."methods"(_lex_param_0, _lex_param_2 :named("local"))
    set $P101, $P5003
    set $P5004, $P101
    iter $P5006, $P101
    new $P5008, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5008, for_handlers509
    push_eh $P5008
  for_next510:
    unless $P5006, for_done512
    shift $P5009, $P5006
  for_redo511:
    .const 'Sub' $P5007 = 'cuid_204_1346277574.467' 
    capture_lex $P5007
    $P5004 = $P5007($P5009)
    goto for_next510
  for_handlers509:
    .get_results ($P5008)
    pop_upto_eh $P5008
    getattribute $P5008, $P5008, 'type'
    eq $P5008, .CONTROL_LOOP_NEXT, for_next510
    eq $P5008, .CONTROL_LOOP_REDO, for_redo511
  for_done512:
    pop_eh 
    find_lex $P5010, "RETURN"
    $P5011 = $P5010(0)
    goto lexotic_506
  lexotic_505:
    .get_results ($P5011)
  lexotic_506:
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_204_1346277574.467") :anon :lex :outer("cuid_205_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1445
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    set $S5001, _lex_param_0
    find_lex $P5001, "$name"
    set $S5002, $P5001
    iseq $I5001, $S5001, $S5002
    box $P5005, $I5001
    set $P5004, $P5005
    unless $I5001 goto if110_end508 
.annotate 'line', 1446
    find_lex $P5002, "RETURN"
    $P5003 = $P5002(1)
    set $P5004, $P5003
  if110_end508:
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "new" :subid("cuid_109_1346277574.467") :anon :lex :outer("cuid_119_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1371
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("name") 
    .param pmc _lex_param_2 :named("box_target") :optional 
    .param int haz_param_28 :opt_flag 
    .param pmc _lex_param_3 :slurpy :named 
    if haz_param_28, default513
    null $P5005
    set _lex_param_2, $P5005
  default513:
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
.annotate 'line', 1373
    exists $I5001, _lex_param_3["type"]
    exists $I5002, _lex_param_3["default"]
    $P5004 = $P101."BUILD"(_lex_param_1 :named("name"), _lex_param_3 :flat :named, _lex_param_2 :named("box_target"), $I5001 :named("has_type"), $I5002 :named("has_default"))
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "BUILD" :subid("cuid_110_1346277574.467") :anon :lex :outer("cuid_119_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1379
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
    if haz_param_29, default514
    null $P5013
    set _lex_param_1, $P5013
  default514:
    if haz_param_30, default515
    null $P5014
    set _lex_param_2, $P5014
  default515:
    if haz_param_31, default516
    null $P5015
    set _lex_param_3, $P5015
  default516:
    if haz_param_32, default517
    null $P5016
    set _lex_param_4, $P5016
  default517:
    if haz_param_33, default518
    null $P5017
    set _lex_param_5, $P5017
  default518:
    if haz_param_34, default519
    null $P5018
    set _lex_param_6, $P5018
  default519:
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    .lex "$type", _lex_param_2 
    .lex "$has_type", _lex_param_3 
    .lex "$box_target", _lex_param_4 
    .lex "$default", _lex_param_5 
    .lex "$has_default", _lex_param_6 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 8
    repr_bind_attr_obj $P5001, $P5002, "$!name", _lex_param_1
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 8
    repr_bind_attr_obj $P5003, $P5004, "$!type", _lex_param_2
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 8
    repr_bind_attr_obj $P5005, $P5006, "$!has_type", _lex_param_3
    nqp_decontainerize $P5007, _lex_param_0
    nqp_get_sc_object $P5008, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 8
    repr_bind_attr_obj $P5007, $P5008, "$!box_target", _lex_param_4
    nqp_decontainerize $P5009, _lex_param_0
    nqp_get_sc_object $P5010, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 8
    repr_bind_attr_obj $P5009, $P5010, "$!default", _lex_param_5
    nqp_decontainerize $P5011, _lex_param_0
    nqp_get_sc_object $P5012, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 8
    repr_bind_attr_obj $P5011, $P5012, "$!has_default", _lex_param_6
    .return (_lex_param_6) 
.end
.HLL "nqp"
.namespace []
.sub "name" :subid("cuid_111_1346277574.467") :anon :lex :outer("cuid_119_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1388
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 8
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!name"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "type" :subid("cuid_112_1346277574.467") :anon :lex :outer("cuid_119_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1392
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 8
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!has_type"
    unless $P5003 goto if111_else520 
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 8
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!type"
    set $P5008, $P5006
    goto if111_end521
  if111_else520:
    null $P5007
    set $P5008, $P5007
  if111_end521:
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "has_accessor" :subid("cuid_113_1346277574.467") :anon :lex :outer("cuid_119_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1396
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    .return (0) 
.end
.HLL "nqp"
.namespace []
.sub "build_closure" :subid("cuid_114_1346277574.467") :anon :lex :outer("cuid_119_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1400
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    .return (0) 
.end
.HLL "nqp"
.namespace []
.sub "box_target" :subid("cuid_115_1346277574.467") :anon :lex :outer("cuid_119_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1404
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 8
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!box_target"
    isnull $I5002, $P5003
    box $P5004, $I5002
    isfalse $I5001, $P5004
    box $P5009, $I5001
    set $P5008, $P5009
    unless $I5001 goto if113_end525 
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 8
    repr_get_attr_obj $P5007, $P5005, $P5006, "$!box_target"
    set $P5008, $P5007
  if113_end525:
    unless $P5008 goto if112_else522 
    set $I5003, 1
    goto if112_end523
  if112_else522:
    set $I5003, 0
  if112_end523:
    .return ($I5003) 
.end
.HLL "nqp"
.namespace []
.sub "auto_viv_container" :subid("cuid_116_1346277574.467") :anon :lex :outer("cuid_119_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1408
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 8
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!has_default"
    unless $P5003 goto if114_else526 
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 8
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!default"
    set $P5008, $P5006
    goto if114_end527
  if114_else526:
    null $P5007
    set $P5008, $P5007
  if114_end527:
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "compose" :subid("cuid_117_1346277574.467") :anon :lex :outer("cuid_119_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1412
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .return (_lex_param_1) 
.end
.HLL "nqp"
.namespace []
.sub "has_mutator" :subid("cuid_118_1346277574.467") :anon :lex :outer("cuid_119_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1439
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 8
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!name"
    set $S5002, $P5003
    substr $S5001, $S5002, 1, 1
    isne $I5001, $S5001, "!"
    .return ($I5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_130_1346277574.467") :anon :lex :outer("cuid_1_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1454
    .const 'Sub' $P5014 = 'cuid_120_1346277574.467' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_121_1346277574.467' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_122_1346277574.467' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_123_1346277574.467' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_124_1346277574.467' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_125_1346277574.467' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_126_1346277574.467' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_127_1346277574.467' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_128_1346277574.467' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_129_1346277574.467' 
    capture_lex $P5014 
    .lex "$archetypes", $P101 
    .lex "$?PACKAGE", $P102 
    .lex "$?CLASS", $P103 
    null $P5001
    set $P101, $P5001
.annotate 'line', 1458
    nqp_get_sc_object $P5002, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 1
    $P5003 = $P5002."new"()
    set $P101, $P5003
    .const 'Sub' $P5004 = 'cuid_120_1346277574.467' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_121_1346277574.467' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_122_1346277574.467' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_123_1346277574.467' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_124_1346277574.467' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_125_1346277574.467' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_126_1346277574.467' 
    capture_lex $P5010
    .const 'Sub' $P5011 = 'cuid_127_1346277574.467' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_128_1346277574.467' 
    capture_lex $P5012
    .const 'Sub' $P5013 = 'cuid_129_1346277574.467' 
    capture_lex $P5013
    .return ($P5013) 
.end
.HLL "nqp"
.namespace []
.sub "archetypes" :subid("cuid_120_1346277574.467") :anon :lex :outer("cuid_130_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1459
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    find_lex $P5001, "$archetypes"
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "new" :subid("cuid_121_1346277574.467") :anon :lex :outer("cuid_130_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1463
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("name") :optional 
    .param int haz_param_35 :opt_flag 
    if haz_param_35, default528
    null $P5005
    set _lex_param_1, $P5005
  default528:
    .lex "$obj", $P101 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    null $P5001
    set $P101, $P5001
    nqp_decontainerize $P5003, _lex_param_0
    repr_instance_of $P5002, $P5003
    set $P101, $P5002
.annotate 'line', 1465
    $P5004 = $P101."BUILD"(_lex_param_1 :named("name"))
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "BUILD" :subid("cuid_122_1346277574.467") :anon :lex :outer("cuid_130_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1469
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("name") :optional 
    .param int haz_param_36 :opt_flag 
    if haz_param_36, default529
    null $P5006
    set _lex_param_1, $P5006
  default529:
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 9
    repr_bind_attr_obj $P5001, $P5002, "$!name", _lex_param_1
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 9
    box $P5005, 0
    repr_bind_attr_obj $P5003, $P5004, "$!composed", $P5005
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "new_type" :subid("cuid_123_1346277574.467") :anon :lex :outer("cuid_130_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1476
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("name") :optional 
    .param int haz_param_37 :opt_flag 
    if haz_param_37, default530
    box $P5006, "<anon>"
    set _lex_param_1, $P5006
  default530:
    .lex "$metaclass", $P101 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    null $P5001
    set $P101, $P5001
.annotate 'line', 1477
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
.sub "add_method" :subid("cuid_124_1346277574.467") :anon :lex :outer("cuid_130_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1481
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
.sub "add_multi_method" :subid("cuid_125_1346277574.467") :anon :lex :outer("cuid_130_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1487
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
.sub "add_attribute" :subid("cuid_126_1346277574.467") :anon :lex :outer("cuid_130_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1491
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
.sub "compose" :subid("cuid_127_1346277574.467") :anon :lex :outer("cuid_130_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1495
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
    nqp_get_sc_object $P5003, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 9
    box $P5004, 1
    repr_bind_attr_obj $P5002, $P5003, "$!composed", $P5004
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "find_method" :subid("cuid_128_1346277574.467") :anon :lex :outer("cuid_130_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1501
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
.sub "name" :subid("cuid_129_1346277574.467") :anon :lex :outer("cuid_130_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1505
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 9
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!name"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_131_1346277574.467") :anon :lex :outer("cuid_1_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1513
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    get_who $P5001, $P101
    nqp_get_sc_object $P5002, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 9
    set $P5001["module"], $P5002
    get_who $P5003, $P101
    nqp_get_sc_object $P5004, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 6
    set $P5003["class"], $P5004
    get_who $P5005, $P101
    nqp_get_sc_object $P5006, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 8
    set $P5005["class-attr"], $P5006
    get_who $P5007, $P101
    nqp_get_sc_object $P5008, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 6
    set $P5007["grammar"], $P5008
    get_who $P5009, $P101
    nqp_get_sc_object $P5010, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 8
    set $P5009["grammar-attr"], $P5010
    get_who $P5011, $P101
    nqp_get_sc_object $P5012, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 5
    set $P5011["role"], $P5012
    get_who $P5013, $P101
    nqp_get_sc_object $P5014, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 8
    set $P5013["role-attr"], $P5014
    get_who $P5015, $P101
    nqp_get_sc_object $P5016, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 7
    set $P5015["native"], $P5016
    .return ($P5016) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_207_1346277574.467") :load :init
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
    .const 'Sub' $P5001 = 'cuid_206_1346277574.467' 
    capture_lex $P5001 
    .local pmc cur_sc 
    nqp_dynop_setup 
    nqp_bigint_setup 
    getinterp $P5001
    get_class $P5002, "LexPad"
    get_class $P5003, "NQPLexPad"
    $P5004 = $P5001."hll_map"($P5002, $P5003)
    nqp_create_sc $P5001, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503"
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
    push $P5003, "    pop_upto_eh"
    push $P5003, "longname"
    push $P5003, "$P5006, $P5007"
    push $P5003, "\"$sigop"
    push $P5003, "$P102"
    .const 'Sub' $P5004 = 'cuid_206_1346277574.467' 
    capture_lex $P5004
    $P5005 = $P5004()
    nqp_deserialize_sc "AQAAAEAAAAABAAAASAAAAAsAAACgAAAA/hIAAEwAAAC+FwAA8iEAAAAAAADyIQAAAAAAAPIhAADyIQAAAAAAAG4AAAAAAAAAAQAAAAAAAAABAAAACgEAAAEAAADkAgAAAQAAAIwDAAABAAAA+gUAAAEAAACiBgAAAQAAANYIAAABAAAAeA0AAAEAAADADgAAAQAAAG4QAAABAAAAxBEAAAAAAAALAAAAAAAAAAAAAAAKAAgAAAACAAAAAgAAAAAAAgAAAAMAAAACAAAAAAADAAAABAAAAAIAAAAAAAQAAAAFAAAAAgAAAAAABQAAAAYAAAACAAAAAAAGAAAABwAAAAIAAAAAAAcAAAAIAAAAAgAAAAAACAAAAAkAAAACAAAAAAAJAAAACgAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAAAAAAAAMAAAAAAAwAAAAAAAAAAQAAAAoAAAAAAAoACgAAAAoAAAALAAAAAAAAAAAACwAAAAsAAAAAAAEAAAAMAAAACwAAAAAAAgAAAA0AAAALAAAAAAADAAAADgAAAAsAAAAAAAQAAAAPAAAACwAAAAAABQAAABAAAAALAAAAAAAGAAAAEQAAAAsAAAAAAAcAAAASAAAACwAAAAAACAAAABMAAAALAAAAAAAJAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAAEAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAAAEAAAAKAAgAAAAUAAAABAAAAAAAAAAAABUAAAAEAAEAAAAAAAAAFgAAAAQAAgAAAAAAAAAXAAAABAADAAAAAAAAABgAAAAEAAQAAAAAAAAAGQAAAAQABQAAAAAAAAAaAAAABAAGAAAAAAAAABsAAAAEAAcAAAAAAAAAAAAAAA0AAAAAAAAAAgAAAAoAAAAAAAoAAQAAABwAAAALAAAAAAAKAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAAIAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAAAgAAAAMAAAAAAA4AAAAAAAAAAwAAAAoAAAAAAAoAEwAAAB0AAAALAAAAAAALAAAACgAAAAsAAAAAAAwAAAALAAAACwAAAAAADQAAAB4AAAALAAAAAAAOAAAAHwAAAAsAAAAAAA8AAAAgAAAACwAAAAAAEAAAACEAAAALAAAAAAARAAAAIgAAAAsAAAAAABIAAAAjAAAACwAAAAAAEwAAACQAAAALAAAAAAAUAAAAJQAAAAsAAAAAABUAAAAmAAAACwAAAAAAFgAAACcAAAALAAAAAAAXAAAAKAAAAAsAAAAAABgAAAApAAAACwAAAAAAGQAAACoAAAALAAAAAAAaAAAAKwAAAAsAAAAAABsAAAAsAAAACwAAAAAAHAAAAC0AAAALAAAAAAAdAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAAMAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAJAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAAAwAAAAoACQAAAC4AAAAEAAAAAAAAAAAALwAAAAQAAQAAAAAAAAAwAAAABAACAAAAAAAAADEAAAAEAAMAAAAAAAAAMgAAAAQABAAAAAAAAAAzAAAABAAFAAAAAAAAADQAAAAEAAYAAAAAAAAANQAAAAQABwAAAAAAAAA2AAAABAAIAAAAAAAAAAAAAAAPAAAAAAAAAAQAAAAKAAAAAAAKAAEAAAAcAAAACwAAAAAAHgAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAAAEAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAAAQAAAADAAAAAAAQAAAAAAAAAAUAAAAKAAAAAAAKABIAAAAdAAAACwAAAAAAHwAAAAoAAAALAAAAAAAgAAAACwAAAAsAAAAAACEAAAAeAAAACwAAAAAAIgAAADcAAAALAAAAAAAjAAAAHwAAAAsAAAAAACQAAAAgAAAACwAAAAAAJQAAACEAAAALAAAAAAAmAAAAIgAAAAsAAAAAACcAAAAjAAAACwAAAAAAKAAAACUAAAALAAAAAAApAAAAEwAAAAsAAAAAACoAAAA4AAAACwAAAAAAKwAAACYAAAALAAAAAAAsAAAAJwAAAAsAAAAAAC0AAAApAAAACwAAAAAALgAAACoAAAALAAAAAAAvAAAAKwAAAAsAAAAAADAAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAAABQAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAcAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAAAUAAAAKAAcAAAAuAAAABAAAAAAAAAAAADAAAAAEAAEAAAAAAAAAMQAAAAQAAgAAAAAAAAAyAAAABAADAAAAAAAAADQAAAAEAAQAAAAAAAAANgAAAAQABQAAAAAAAAA5AAAABAAGAAAAAAAAAAAAAAARAAAAAAAAAAYAAAAKAAAAAAAKACoAAAAdAAAACwAAAAAAMQAAAAoAAAALAAAAAAAyAAAACwAAAAsAAAAAADMAAAAeAAAACwAAAAAANAAAAB8AAAALAAAAAAA1AAAAIAAAAAsAAAAAADYAAAAhAAAACwAAAAAANwAAACIAAAALAAAAAAA4AAAAOgAAAAsAAAAAADkAAAA7AAAACwAAAAAAOgAAACMAAAALAAAAAAA7AAAAPAAAAAsAAAAAADwAAAA9AAAACwAAAAAAPQAAACUAAAALAAAAAAA+AAAAPgAAAAsAAAAAAD8AAAA/AAAACwAAAAAAQAAAAEAAAAALAAAAAABBAAAAQQAAAAsAAAAAAEIAAABCAAAACwAAAAAAQwAAAEMAAAALAAAAAABEAAAARAAAAAsAAAAAAEUAAABFAAAACwAAAAAARgAAAEYAAAALAAAAAABHAAAARwAAAAsAAAAAAEgAAABIAAAACwAAAAAASQAAACsAAAALAAAAAABKAAAAJgAAAAsAAAAAAEsAAAAnAAAACwAAAAAATAAAACkAAAALAAAAAABNAAAASQAAAAsAAAAAAE4AAABKAAAACwAAAAAATwAAACoAAAALAAAAAABQAAAASwAAAAsAAAAAAFEAAABMAAAACwAAAAAAUgAAAE0AAAALAAAAAABTAAAATgAAAAsAAAAAAFQAAABPAAAACwAAAAAAVQAAAFAAAAALAAAAAABWAAAAUQAAAAsAAAAAAFcAAABSAAAACwAAAAAAWAAAAFMAAAALAAAAAABZAAAAVAAAAAsAAAAAAFoAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAAABgAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAABgAAAAoAFAAAAC4AAAAEAAAAAAAAAAAAMAAAAAQAAQAAAAAAAAAxAAAABAACAAAAAAAAAFUAAAAEAAMAAAAAAAAAMgAAAAQABAAAAAAAAABWAAAABAAFAAAAAAAAADQAAAAEAAYAAAAAAAAAVwAAAAQABwAAAAAAAABYAAAABAAIAAAAAAAAAFkAAAAEAAkAAAAAAAAANgAAAAQACgAAAAAAAABaAAAABAALAAAAAAAAAFsAAAAEAAwAAAAAAAAAXAAAAAQADQAAAAAAAABdAAAABAAOAAAAAAAAAF4AAAAEAA8AAAAAAAAAXwAAAAQAEAAAAAAAAABgAAAABAARAAAAAAAAAGEAAAAEABIAAAAAAAAAYgAAAAQAEwAAAAAAAAAAAAAAEgAAAAAAAAAHAAAACgAAAAAACgAJAAAAHQAAAAsAAAAAAFsAAAAKAAAACwAAAAAAXAAAAAsAAAALAAAAAABdAAAAHgAAAAsAAAAAAF4AAAAfAAAACwAAAAAAXwAAACAAAAALAAAAAABgAAAAIQAAAAsAAAAAAGEAAAAlAAAACwAAAAAAYgAAACkAAAALAAAAAABjAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAAcAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAAAcAAAAKAAIAAAAuAAAABAAAAAAAAAAAADYAAAAEAAEAAAAAAAAAAAAAABMAAAAAAAAACAAAAAoAAAAAAAoACgAAAAoAAAALAAAAAABkAAAACwAAAAsAAAAAAGUAAAApAAAACwAAAAAAZgAAAGMAAAALAAAAAABnAAAAZAAAAAsAAAAAAGgAAABlAAAACwAAAAAAaQAAAGYAAAALAAAAAABqAAAAZwAAAAsAAAAAAGsAAAAlAAAACwAAAAAAbAAAAGgAAAALAAAAAABtAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAAgAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAACAAAAAoABgAAAC4AAAAEAAAAAAAAAAAAaQAAAAQAAQAAAAAAAABqAAAABAACAAAAAAAAAGsAAAAEAAMAAAAAAAAAbAAAAAQABAAAAAAAAABtAAAABAAFAAAAAAAAAAAAAAAUAAAAAAAAAAkAAAAKAAAAAAAKAAoAAAAdAAAACwAAAAAAbgAAAAoAAAALAAAAAABvAAAACwAAAAsAAAAAAHAAAAAeAAAACwAAAAAAcQAAAB8AAAALAAAAAAByAAAAIAAAAAsAAAAAAHMAAAAhAAAACwAAAAAAdAAAACUAAAALAAAAAAB1AAAAUAAAAAsAAAAAAHYAAAApAAAACwAAAAAAdwAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAAAJAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAQAAAAAAAAACAAAAAAAJAAAACgACAAAALgAAAAQAAAAAAAAAAAA2AAAABAABAAAAAAAAAAAAAAAVAAAAAAAAAAoAAAAKAAAAAAAKAAAAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAAACgAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAQAAAAAAAAACAAAAAAAKAAAAAwAAAAAAAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAACAAAAAAAAAAAAAAAAAAAAAwAAAAAAAAAAAAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAFAAAAAAAAAAAAAAAAAAAABgAAAAAAAAAAAAAAAAAAAAcAAAAAAAAAAAAAAAAAAAAIAAAAAAAAAAAAAAAAAAAACQAAAAAAAAAAAAAAAAAAAAoAAAAAAAAAAAAAAAEAAAAAAAAAAAAAAAEAAAABAAAAAAAAABAAAAABAAAAAQAAAAAAAAD8AAAAAQAAAAEAAAAAAAAAGgEAAAEAAAABAAAAAAAAAI4CAAABAAAAAQAAAAAAAACsAgAAAQAAAAEAAAAAAAAA/gMAAAEAAAABAAAAAAAAACIHAAABAAAAAQAAAAAAAADEBwAAAQAAAAEAAAAAAAAAnAgAAAEAAAABAAAAAAAAAEwJAAABAAAAAQAAAAIAAABcCQAAAQAAAAEAAAACAAAAYAkAAAEAAAABAAAAAgAAAGQJAAABAAAAAQAAAAIAAABoCQAAAQAAAAEAAAACAAAAbAkAAAEAAAABAAAAAgAAAHAJAAABAAAAAQAAAAIAAAB0CQAAAQAAAAEAAAACAAAAeAkAAAEAAAABAAAAAgAAAHwJAAABAAAAAQAAAAIAAACACQAAAQAAAAEAAAACAAAAhAkAAAEAAAABAAAAAgAAAIgJAAABAAAAAQAAAAIAAACMCQAAAQAAAAEAAAACAAAAkAkAAAEAAAABAAAAAgAAAJQJAAABAAAAAQAAAAIAAACYCQAAAQAAAAEAAAACAAAAnAkAAAEAAAABAAAAAgAAAKAJAAABAAAAAQAAAAIAAACkCQAAAQAAAAEAAAACAAAAqAkAAAEAAAABAAAAAgAAAKwJAAABAAAAAQAAAAIAAACwCQAAAQAAAAEAAAACAAAAtAkAAAEAAAABAAAAAgAAALgJAAABAAAAAQAAAAIAAAC8CQAAAQAAAAEAAAACAAAAwAkAAAEAAAABAAAAAgAAAMQJAAABAAAAAQAAAAIAAADICQAAAQAAAAEAAAACAAAAzAkAAAEAAAABAAAAAgAAANAJAAABAAAAAQAAAAIAAADUCQAAAQAAAAEAAAACAAAA2AkAAAEAAAABAAAAAgAAANwJAAABAAAAAQAAAAIAAADgCQAAAQAAAAEAAAACAAAA5AkAAAEAAAABAAAAAgAAAOgJAAABAAAAAQAAAAIAAADsCQAAAQAAAAEAAAACAAAA8AkAAAEAAAABAAAAAgAAAPQJAAABAAAAAQAAAAIAAAD4CQAAAQAAAAEAAAACAAAA/AkAAAEAAAABAAAAAgAAAAAKAAABAAAAAQAAAAIAAAAECgAAAQAAAAEAAAACAAAACAoAAAEAAAABAAAAAgAAAAwKAAABAAAAAQAAAAIAAAAQCgAAAQAAAAEAAAACAAAAFAoAAAEAAAABAAAAAgAAABgKAAABAAAAAQAAAAIAAAAcCgAAAQAAAAEAAAACAAAAIAoAAAEAAAABAAAAAgAAACQKAAABAAAAAQAAAAIAAAAoCgAAAQAAAAEAAAACAAAALAoAAAEAAAABAAAAAgAAADAKAAABAAAAbwAAAAcAAAAAAAoAAAAAAHAAAAAHAAgAAAACAAAAAAAWAAAAAgAAAAAAFwAAAAIAAAAAABgAAAACAAAAAAAZAAAAAgAAAAAAGgAAAAIAAAAAABsAAAACAAAAAAAcAAAAAgAAAAAAHQAAAAoACgAAAAoAAAALAAAAAAAAAAAACwAAAAsAAAAAAAEAAAAMAAAACwAAAAAAAgAAAA0AAAALAAAAAAADAAAADgAAAAsAAAAAAAQAAAAPAAAACwAAAAAABQAAABAAAAALAAAAAAAGAAAAEQAAAAsAAAAAAAcAAAASAAAACwAAAAAACAAAABMAAAALAAAAAAAJAAAAcQAAAAcAAAAAAAoAAQAAABwAAAALAAAAAAAKAAAAAwAAAAcACQAAAAIAAAAAAB4AAAACAAAAAAAfAAAAAgAAAAAAIAAAAAIAAAAAACEAAAACAAAAAAAiAAAAAgAAAAAAIwAAAAIAAAAAACQAAAACAAAAAAAlAAAAAgAAAAAAJgAAAAoAEwAAAB0AAAALAAAAAAALAAAACgAAAAsAAAAAAAwAAAALAAAACwAAAAAADQAAAB4AAAALAAAAAAAOAAAAHwAAAAsAAAAAAA8AAAAgAAAACwAAAAAAEAAAACEAAAALAAAAAAARAAAAIgAAAAsAAAAAABIAAAAjAAAACwAAAAAAEwAAACQAAAALAAAAAAAUAAAAJQAAAAsAAAAAABUAAAAmAAAACwAAAAAAFgAAACcAAAALAAAAAAAXAAAAKAAAAAsAAAAAABgAAAApAAAACwAAAAAAGQAAACoAAAALAAAAAAAaAAAAKwAAAAsAAAAAABsAAAAsAAAACwAAAAAAHAAAAC0AAAALAAAAAAAdAAAAcgAAAAcAAAAAAAoAAQAAABwAAAALAAAAAAAeAAAABQAAAAcABwAAAAIAAAAAACcAAAACAAAAAAAoAAAAAgAAAAAAKQAAAAIAAAAAACoAAAACAAAAAAArAAAAAgAAAAAALAAAAAIAAAAAAC0AAAAKABIAAAAdAAAACwAAAAAAHwAAAAoAAAALAAAAAAAgAAAACwAAAAsAAAAAACEAAAAeAAAACwAAAAAAIgAAADcAAAALAAAAAAAjAAAAHwAAAAsAAAAAACQAAAAgAAAACwAAAAAAJQAAACEAAAALAAAAAAAmAAAAIgAAAAsAAAAAACcAAAAjAAAACwAAAAAAKAAAACUAAAALAAAAAAApAAAAEwAAAAsAAAAAACoAAAA4AAAACwAAAAAAKwAAACYAAAALAAAAAAAsAAAAJwAAAAsAAAAAAC0AAAApAAAACwAAAAAALgAAACoAAAALAAAAAAAvAAAAKwAAAAsAAAAAADAAAAAGAAAABwAUAAAAAgAAAAAALgAAAAIAAAAAAC8AAAACAAAAAAAwAAAAAgAAAAAAMQAAAAIAAAAAADIAAAACAAAAAAAzAAAAAgAAAAAANAAAAAIAAAAAADUAAAACAAAAAAA2AAAAAgAAAAAANwAAAAIAAAAAADgAAAACAAAAAAA5AAAAAgAAAAAAOgAAAAIAAAAAADsAAAACAAAAAAA8AAAAAgAAAAAAPQAAAAIAAAAAAD4AAAACAAAAAAA/AAAAAgAAAAAAQAAAAAIAAAAAAEEAAAAKACoAAAAdAAAACwAAAAAAMQAAAAoAAAALAAAAAAAyAAAACwAAAAsAAAAAADMAAAAeAAAACwAAAAAANAAAAB8AAAALAAAAAAA1AAAAIAAAAAsAAAAAADYAAAAhAAAACwAAAAAANwAAACIAAAALAAAAAAA4AAAAOgAAAAsAAAAAADkAAAA7AAAACwAAAAAAOgAAACMAAAALAAAAAAA7AAAAPAAAAAsAAAAAADwAAAA9AAAACwAAAAAAPQAAACUAAAALAAAAAAA+AAAAPgAAAAsAAAAAAD8AAAA/AAAACwAAAAAAQAAAAEAAAAALAAAAAABBAAAAQQAAAAsAAAAAAEIAAABCAAAACwAAAAAAQwAAAEMAAAALAAAAAABEAAAARAAAAAsAAAAAAEUAAABFAAAACwAAAAAARgAAAEYAAAALAAAAAABHAAAARwAAAAsAAAAAAEgAAABIAAAACwAAAAAASQAAACsAAAALAAAAAABKAAAAJgAAAAsAAAAAAEsAAAAnAAAACwAAAAAATAAAACkAAAALAAAAAABNAAAASQAAAAsAAAAAAE4AAABKAAAACwAAAAAATwAAACoAAAALAAAAAABQAAAASwAAAAsAAAAAAFEAAABMAAAACwAAAAAAUgAAAE0AAAALAAAAAABTAAAATgAAAAsAAAAAAFQAAABPAAAACwAAAAAAVQAAAFAAAAALAAAAAABWAAAAUQAAAAsAAAAAAFcAAABSAAAACwAAAAAAWAAAAFMAAAALAAAAAABZAAAAVAAAAAsAAAAAAFoAAABzAAAABwACAAAAAgAAAAAAQgAAAAIAAAAAAEMAAAAKAAkAAAAdAAAACwAAAAAAWwAAAAoAAAALAAAAAABcAAAACwAAAAsAAAAAAF0AAAAeAAAACwAAAAAAXgAAAB8AAAALAAAAAABfAAAAIAAAAAsAAAAAAGAAAAAhAAAACwAAAAAAYQAAACUAAAALAAAAAABiAAAAKQAAAAsAAAAAAGMAAAAIAAAABwAGAAAAAgAAAAAARAAAAAIAAAAAAEUAAAACAAAAAABGAAAAAgAAAAAARwAAAAIAAAAAAEgAAAACAAAAAABJAAAACgAKAAAACgAAAAsAAAAAAGQAAAALAAAACwAAAAAAZQAAACkAAAALAAAAAABmAAAAYwAAAAsAAAAAAGcAAABkAAAACwAAAAAAaAAAAGUAAAALAAAAAABpAAAAZgAAAAsAAAAAAGoAAABnAAAACwAAAAAAawAAACUAAAALAAAAAABsAAAAaAAAAAsAAAAAAG0AAAAJAAAABwACAAAAAgAAAAAASgAAAAIAAAAAAEsAAAAKAAoAAAAdAAAACwAAAAAAbgAAAAoAAAALAAAAAABvAAAACwAAAAsAAAAAAHAAAAAeAAAACwAAAAAAcQAAAB8AAAALAAAAAAByAAAAIAAAAAsAAAAAAHMAAAAhAAAACwAAAAAAdAAAACUAAAALAAAAAAB1AAAAUAAAAAsAAAAAAHYAAAApAAAACwAAAAAAdwAAAHQAAAAHAAAAAAAKAAAAAAAUAAAAFQAAABYAAAAXAAAAGAAAABkAAAAaAAAAGwAAAC4AAAAvAAAAMAAAADEAAAAyAAAAMwAAADQAAAA1AAAANgAAAC4AAAAwAAAAMQAAADIAAAA0AAAANgAAADkAAAAuAAAAMAAAADEAAABVAAAAMgAAAFYAAAA0AAAAVwAAAFgAAABZAAAANgAAAFoAAABbAAAAXAAAAF0AAABeAAAAXwAAAGAAAABhAAAAYgAAAC4AAAA2AAAALgAAAGkAAABqAAAAawAAAGwAAABtAAAALgAAADYAAAA=", cur_sc, $P5003, $P5005
    .const "LexInfo" $P5001 = "cuid_1_1346277574.467"
    nqp_get_sc_object $P5002, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 0
    $P5003 = $P5001."set_static_lexpad_value"("GLOBALish", $P5002)
    .const "LexInfo" $P5004 = "cuid_1_1346277574.467"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1346277574.467"
    nqp_get_sc_object $P5002, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 0
    $P5003 = $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5004 = "cuid_1_1346277574.467"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1346277574.467"
    nqp_get_sc_object $P5002, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 1
    $P5003 = $P5001."set_static_lexpad_value"("Archetypes", $P5002)
    .const "LexInfo" $P5004 = "cuid_1_1346277574.467"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_12_1346277574.467"
    nqp_get_sc_object $P5002, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 1
    $P5003 = $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5004 = "cuid_12_1346277574.467"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_12_1346277574.467"
    nqp_get_sc_object $P5002, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 1
    $P5003 = $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5004 = "cuid_12_1346277574.467"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1346277574.467"
    nqp_get_sc_object $P5002, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 2
    $P5003 = $P5001."set_static_lexpad_value"("RoleToRoleApplier", $P5002)
    .const "LexInfo" $P5004 = "cuid_1_1346277574.467"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_14_1346277574.467"
    nqp_get_sc_object $P5002, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 2
    $P5003 = $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5004 = "cuid_14_1346277574.467"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_14_1346277574.467"
    nqp_get_sc_object $P5002, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 2
    $P5003 = $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5004 = "cuid_14_1346277574.467"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1346277574.467"
    nqp_get_sc_object $P5002, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 3
    $P5003 = $P5001."set_static_lexpad_value"("NQPConcreteRoleHOW", $P5002)
    .const "LexInfo" $P5004 = "cuid_1_1346277574.467"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_34_1346277574.467"
    nqp_get_sc_object $P5002, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 3
    $P5003 = $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5004 = "cuid_34_1346277574.467"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_34_1346277574.467"
    nqp_get_sc_object $P5002, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 3
    $P5003 = $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5004 = "cuid_34_1346277574.467"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1346277574.467"
    nqp_get_sc_object $P5002, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 4
    $P5003 = $P5001."set_static_lexpad_value"("RoleToClassApplier", $P5002)
    .const "LexInfo" $P5004 = "cuid_1_1346277574.467"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_36_1346277574.467"
    nqp_get_sc_object $P5002, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 4
    $P5003 = $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5004 = "cuid_36_1346277574.467"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_36_1346277574.467"
    nqp_get_sc_object $P5002, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 4
    $P5003 = $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5004 = "cuid_36_1346277574.467"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1346277574.467"
    nqp_get_sc_object $P5002, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 5
    $P5003 = $P5001."set_static_lexpad_value"("NQPParametricRoleHOW", $P5002)
    .const "LexInfo" $P5004 = "cuid_1_1346277574.467"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_55_1346277574.467"
    nqp_get_sc_object $P5002, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 5
    $P5003 = $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5004 = "cuid_55_1346277574.467"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_55_1346277574.467"
    nqp_get_sc_object $P5002, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 5
    $P5003 = $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5004 = "cuid_55_1346277574.467"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1346277574.467"
    nqp_get_sc_object $P5002, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 6
    $P5003 = $P5001."set_static_lexpad_value"("NQPClassHOW", $P5002)
    .const "LexInfo" $P5004 = "cuid_1_1346277574.467"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_98_1346277574.467"
    nqp_get_sc_object $P5002, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 6
    $P5003 = $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5004 = "cuid_98_1346277574.467"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_98_1346277574.467"
    nqp_get_sc_object $P5002, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 6
    $P5003 = $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5004 = "cuid_98_1346277574.467"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1346277574.467"
    nqp_get_sc_object $P5002, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 7
    $P5003 = $P5001."set_static_lexpad_value"("NQPNativeHOW", $P5002)
    .const "LexInfo" $P5004 = "cuid_1_1346277574.467"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_108_1346277574.467"
    nqp_get_sc_object $P5002, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 7
    $P5003 = $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5004 = "cuid_108_1346277574.467"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_108_1346277574.467"
    nqp_get_sc_object $P5002, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 7
    $P5003 = $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5004 = "cuid_108_1346277574.467"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1346277574.467"
    nqp_get_sc_object $P5002, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 8
    $P5003 = $P5001."set_static_lexpad_value"("NQPAttribute", $P5002)
    .const "LexInfo" $P5004 = "cuid_1_1346277574.467"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_119_1346277574.467"
    nqp_get_sc_object $P5002, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 8
    $P5003 = $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5004 = "cuid_119_1346277574.467"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_119_1346277574.467"
    nqp_get_sc_object $P5002, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 8
    $P5003 = $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5004 = "cuid_119_1346277574.467"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1346277574.467"
    nqp_get_sc_object $P5002, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 9
    $P5003 = $P5001."set_static_lexpad_value"("NQPModuleHOW", $P5002)
    .const "LexInfo" $P5004 = "cuid_1_1346277574.467"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_130_1346277574.467"
    nqp_get_sc_object $P5002, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 9
    $P5003 = $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5004 = "cuid_130_1346277574.467"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_130_1346277574.467"
    nqp_get_sc_object $P5002, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 9
    $P5003 = $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5004 = "cuid_130_1346277574.467"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1346277574.467"
    nqp_get_sc_object $P5002, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 10
    $P5003 = $P5001."set_static_lexpad_value"("EXPORTHOW", $P5002)
    .const "LexInfo" $P5004 = "cuid_1_1346277574.467"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_131_1346277574.467"
    nqp_get_sc_object $P5002, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 10
    $P5003 = $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5004 = "cuid_131_1346277574.467"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_131_1346277574.467"
    nqp_get_sc_object $P5002, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 10
    $P5003 = $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5004 = "cuid_131_1346277574.467"
    $P5005 = $P5004."finish_static_lexpad"()
    nqp_get_sc_object $P5001, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503", 0
    set_hll_global "GLOBAL", $P5001
    .return () 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_206_1346277574.467") :anon :lex :outer("cuid_207_1346277574.467")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
    new $P5001, 'ResizablePMCArray'
    .const 'Sub' $P5002 = "cuid_2_1346277574.467" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_3_1346277574.467" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_4_1346277574.467" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_5_1346277574.467" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_6_1346277574.467" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_7_1346277574.467" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_8_1346277574.467" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_9_1346277574.467" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_10_1346277574.467" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_11_1346277574.467" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_13_1346277574.467" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_15_1346277574.467" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_16_1346277574.467" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_17_1346277574.467" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_18_1346277574.467" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_19_1346277574.467" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_20_1346277574.467" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_21_1346277574.467" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_22_1346277574.467" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_23_1346277574.467" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_24_1346277574.467" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_25_1346277574.467" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_26_1346277574.467" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_27_1346277574.467" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_28_1346277574.467" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_29_1346277574.467" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_30_1346277574.467" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_31_1346277574.467" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_32_1346277574.467" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_33_1346277574.467" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_35_1346277574.467" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_37_1346277574.467" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_38_1346277574.467" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_39_1346277574.467" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_40_1346277574.467" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_41_1346277574.467" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_42_1346277574.467" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_43_1346277574.467" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_44_1346277574.467" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_45_1346277574.467" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_46_1346277574.467" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_47_1346277574.467" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_48_1346277574.467" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_49_1346277574.467" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_50_1346277574.467" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_51_1346277574.467" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_52_1346277574.467" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_53_1346277574.467" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_54_1346277574.467" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_56_1346277574.467" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_57_1346277574.467" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_58_1346277574.467" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_59_1346277574.467" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_60_1346277574.467" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_61_1346277574.467" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_62_1346277574.467" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_63_1346277574.467" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_64_1346277574.467" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_65_1346277574.467" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_66_1346277574.467" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_67_1346277574.467" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_68_1346277574.467" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_69_1346277574.467" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_70_1346277574.467" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_71_1346277574.467" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_72_1346277574.467" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_73_1346277574.467" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_74_1346277574.467" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_75_1346277574.467" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_76_1346277574.467" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_77_1346277574.467" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_78_1346277574.467" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_79_1346277574.467" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_80_1346277574.467" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_81_1346277574.467" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_82_1346277574.467" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_83_1346277574.467" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_84_1346277574.467" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_85_1346277574.467" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_86_1346277574.467" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_87_1346277574.467" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_88_1346277574.467" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_89_1346277574.467" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_90_1346277574.467" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_91_1346277574.467" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_92_1346277574.467" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_93_1346277574.467" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_94_1346277574.467" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_95_1346277574.467" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_96_1346277574.467" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_97_1346277574.467" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_99_1346277574.467" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_100_1346277574.467" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_101_1346277574.467" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_102_1346277574.467" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_103_1346277574.467" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_104_1346277574.467" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_105_1346277574.467" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_106_1346277574.467" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_107_1346277574.467" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_109_1346277574.467" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_110_1346277574.467" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_111_1346277574.467" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_112_1346277574.467" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_113_1346277574.467" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_114_1346277574.467" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_115_1346277574.467" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_116_1346277574.467" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_117_1346277574.467" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_118_1346277574.467" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_120_1346277574.467" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_121_1346277574.467" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_122_1346277574.467" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_123_1346277574.467" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_124_1346277574.467" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_125_1346277574.467" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_126_1346277574.467" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_127_1346277574.467" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_128_1346277574.467" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_129_1346277574.467" 
    push $P5001, $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_208_1346277574.467") :load
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
    .const 'Sub' $P5001 = "cuid_1_1346277574.467" 
    $P5002 = $P5001()
    .return ($P5002) 
.end