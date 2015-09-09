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
.sub "<mainline>" :subid("cuid_140_1431289877.42775") :anon :lex
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
    .param pmc __lowered_lex_537 :slurpy 
    .const 'Sub' $P5027 = 'cuid_141_1431289877.42775' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_142_1431289877.42775' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_143_1431289877.42775' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_144_1431289877.42775' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_147_1431289877.42775' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_148_1431289877.42775' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_149_1431289877.42775' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_155_1431289877.42775' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_156_1431289877.42775' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_157_1431289877.42775' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_158_1431289877.42775' 
    capture_lex $P5027 
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
    .const 'Sub' $P5005 = 'cuid_141_1431289877.42775' 
    capture_lex $P5005
    $P5006 = $P5005()
    .const 'Sub' $P5007 = 'cuid_142_1431289877.42775' 
    capture_lex $P5007
    $P5008 = $P5007()
    .const 'Sub' $P5009 = 'cuid_143_1431289877.42775' 
    capture_lex $P5009
    $P5010 = $P5009()
    .const 'Sub' $P5011 = 'cuid_144_1431289877.42775' 
    capture_lex $P5011
    $P5012 = $P5011()
    .const 'Sub' $P5013 = 'cuid_147_1431289877.42775' 
    capture_lex $P5013
    $P5014 = $P5013()
    .const 'Sub' $P5015 = 'cuid_148_1431289877.42775' 
    capture_lex $P5015
    $P5016 = $P5015()
    .const 'Sub' $P5017 = 'cuid_149_1431289877.42775' 
    capture_lex $P5017
    $P5018 = $P5017()
    .const 'Sub' $P5019 = 'cuid_155_1431289877.42775' 
    capture_lex $P5019
    $P5020 = $P5019()
    .const 'Sub' $P5021 = 'cuid_156_1431289877.42775' 
    capture_lex $P5021
    $P5022 = $P5021()
    .const 'Sub' $P5023 = 'cuid_157_1431289877.42775' 
    capture_lex $P5023
    $P5024 = $P5023()
    .const 'Sub' $P5025 = 'cuid_158_1431289877.42775' 
    capture_lex $P5025
    $P5026 = $P5025()
    .return () 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_141_1431289877.42775") :anon :lex :outer("cuid_140_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 9
    .const 'Sub' $P5011 = 'cuid_1_1431289877.42775' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_2_1431289877.42775' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_3_1431289877.42775' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_4_1431289877.42775' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_5_1431289877.42775' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_6_1431289877.42775' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_7_1431289877.42775' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_8_1431289877.42775' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_9_1431289877.42775' 
    capture_lex $P5011 
    .const 'Sub' $P5011 = 'cuid_10_1431289877.42775' 
    capture_lex $P5011 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_1_1431289877.42775' 
    capture_lex $P5001
    .const 'Sub' $P5002 = 'cuid_2_1431289877.42775' 
    capture_lex $P5002
    .const 'Sub' $P5003 = 'cuid_3_1431289877.42775' 
    capture_lex $P5003
    .const 'Sub' $P5004 = 'cuid_4_1431289877.42775' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_5_1431289877.42775' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_6_1431289877.42775' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_7_1431289877.42775' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_8_1431289877.42775' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_9_1431289877.42775' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_10_1431289877.42775' 
    capture_lex $P5010
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "new" :subid("cuid_1_1431289877.42775") :anon :lex :outer("cuid_141_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 47
    .param pmc __lowered_lex_1 
    .param pmc __lowered_lex_2 :named("nominal") :optional 
    .param int haz_param_1 :opt_flag 
    .param pmc __lowered_lex_3 :named("inheritable") :optional 
    .param int haz_param_2 :opt_flag 
    .param pmc __lowered_lex_4 :named("composable") :optional 
    .param int haz_param_3 :opt_flag 
    .param pmc __lowered_lex_5 :named("parametric") :optional 
    .param int haz_param_4 :opt_flag 
    .local pmc __lowered_lex_6 
    if haz_param_1, default14
    null $P5003
    set __lowered_lex_2, $P5003
  default14:
    if haz_param_2, default15
    null $P5004
    set __lowered_lex_3, $P5004
  default15:
    if haz_param_3, default16
    null $P5005
    set __lowered_lex_4, $P5005
  default16:
    if haz_param_4, default17
    null $P5006
    set __lowered_lex_5, $P5006
  default17:
    nqp_decontainerize $P5002, __lowered_lex_1
    repr_instance_of $P5001, $P5002
    set __lowered_lex_6, $P5001
.annotate 'line', 49
    __lowered_lex_6."BUILD"(__lowered_lex_2 :named("nominal"), __lowered_lex_3 :named("inheritable"), __lowered_lex_4 :named("composable"), __lowered_lex_5 :named("parametric"))
    .return (__lowered_lex_6) 
.end
.HLL "nqp"
.namespace []
.sub "BUILD" :subid("cuid_2_1431289877.42775") :anon :lex :outer("cuid_141_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 54
    .param pmc __lowered_lex_7 
    .param pmc __lowered_lex_8 :named("nominal") :optional 
    .param int haz_param_5 :opt_flag 
    .param pmc __lowered_lex_9 :named("inheritable") :optional 
    .param int haz_param_6 :opt_flag 
    .param pmc __lowered_lex_10 :named("composable") :optional 
    .param int haz_param_7 :opt_flag 
    .param pmc __lowered_lex_11 :named("parametric") :optional 
    .param int haz_param_8 :opt_flag 
    if haz_param_5, default18
    null $P5009
    set __lowered_lex_8, $P5009
  default18:
    if haz_param_6, default19
    null $P5010
    set __lowered_lex_9, $P5010
  default19:
    if haz_param_7, default20
    null $P5011
    set __lowered_lex_10, $P5011
  default20:
    if haz_param_8, default21
    null $P5012
    set __lowered_lex_11, $P5012
  default21:
    nqp_decontainerize $P5001, __lowered_lex_7
    nqp_get_sc_object $P5002, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 1
    repr_bind_attr_obj $P5001, $P5002, "$!nominal", 0, __lowered_lex_8
    nqp_decontainerize $P5003, __lowered_lex_7
    nqp_get_sc_object $P5004, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 1
    repr_bind_attr_obj $P5003, $P5004, "$!inheritable", 2, __lowered_lex_9
    nqp_decontainerize $P5005, __lowered_lex_7
    nqp_get_sc_object $P5006, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 1
    repr_bind_attr_obj $P5005, $P5006, "$!composable", 4, __lowered_lex_10
    nqp_decontainerize $P5007, __lowered_lex_7
    nqp_get_sc_object $P5008, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 1
    repr_bind_attr_obj $P5007, $P5008, "$!parametric", 7, __lowered_lex_11
    .return (__lowered_lex_11) 
.end
.HLL "nqp"
.namespace []
.sub "nominal" :subid("cuid_3_1431289877.42775") :anon :lex :outer("cuid_141_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 61
    .param pmc __lowered_lex_12 
    nqp_decontainerize $P5001, __lowered_lex_12
    nqp_get_sc_object $P5002, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 1
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!nominal", 0
    unless_null $P5003, vivi_1222
    box $P5004, 0
    set $P5003, $P5004
  vivi_1222:
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "nominalizable" :subid("cuid_4_1431289877.42775") :anon :lex :outer("cuid_141_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 62
    .param pmc __lowered_lex_13 
    nqp_decontainerize $P5001, __lowered_lex_13
    nqp_get_sc_object $P5002, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 1
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!nominalizable", 1
    unless_null $P5003, vivi_1323
    box $P5004, 0
    set $P5003, $P5004
  vivi_1323:
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "inheritable" :subid("cuid_5_1431289877.42775") :anon :lex :outer("cuid_141_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 63
    .param pmc __lowered_lex_14 
    nqp_decontainerize $P5001, __lowered_lex_14
    nqp_get_sc_object $P5002, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 1
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!inheritable", 2
    unless_null $P5003, vivi_1424
    box $P5004, 0
    set $P5003, $P5004
  vivi_1424:
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "inheritalizable" :subid("cuid_6_1431289877.42775") :anon :lex :outer("cuid_141_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 64
    .param pmc __lowered_lex_15 
    nqp_decontainerize $P5001, __lowered_lex_15
    nqp_get_sc_object $P5002, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 1
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!inheritalizable", 3
    unless_null $P5003, vivi_1525
    box $P5004, 0
    set $P5003, $P5004
  vivi_1525:
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "composable" :subid("cuid_7_1431289877.42775") :anon :lex :outer("cuid_141_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 65
    .param pmc __lowered_lex_16 
    nqp_decontainerize $P5001, __lowered_lex_16
    nqp_get_sc_object $P5002, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 1
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!composable", 4
    unless_null $P5003, vivi_1626
    box $P5004, 0
    set $P5003, $P5004
  vivi_1626:
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "composalizable" :subid("cuid_8_1431289877.42775") :anon :lex :outer("cuid_141_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 66
    .param pmc __lowered_lex_17 
    nqp_decontainerize $P5001, __lowered_lex_17
    nqp_get_sc_object $P5002, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 1
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!composalizable", 5
    unless_null $P5003, vivi_1727
    box $P5004, 0
    set $P5003, $P5004
  vivi_1727:
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "generic" :subid("cuid_9_1431289877.42775") :anon :lex :outer("cuid_141_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 67
    .param pmc __lowered_lex_18 
    nqp_decontainerize $P5001, __lowered_lex_18
    nqp_get_sc_object $P5002, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 1
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!generic", 6
    unless_null $P5003, vivi_1828
    box $P5004, 0
    set $P5003, $P5004
  vivi_1828:
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "parametric" :subid("cuid_10_1431289877.42775") :anon :lex :outer("cuid_141_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 68
    .param pmc __lowered_lex_19 
    nqp_decontainerize $P5001, __lowered_lex_19
    nqp_get_sc_object $P5002, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 1
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!parametric", 7
    unless_null $P5003, vivi_1929
    box $P5004, 0
    set $P5003, $P5004
  vivi_1929:
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_142_1431289877.42775") :anon :lex :outer("cuid_140_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 72
    .const 'Sub' $P5002 = 'cuid_11_1431289877.42775' 
    capture_lex $P5002 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_11_1431289877.42775' 
    capture_lex $P5001
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "apply" :subid("cuid_11_1431289877.42775") :anon :lex :outer("cuid_142_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 73
    .param pmc __lowered_lex_41 
    .param pmc __lowered_lex_42 
    .param pmc __lowered_lex_43 
    .local pmc __lowered_lex_44 
    .local pmc __lowered_lex_45 
    .local pmc __lowered_lex_46 
    .local pmc __lowered_lex_47 
    .local pmc lowered_for_it__3 
    .local pmc __lowered_lex_27 
    .local pmc __lowered_lex_26 
    .local pmc lowered_for_it__2 
    .local pmc __lowered_lex_25 
    .local pmc __lowered_lex_21 
    .local pmc __lowered_lex_22 
    .local pmc __lowered_lex_23 
    .local pmc __lowered_lex_24 
    .local pmc fb_tmp_1 
    .local pmc fb_tmp_2 
    .local pmc lowered_for_it__1 
    .local pmc __lowered_lex_20 
    .local pmc lowered_for_it__4 
    .local pmc __lowered_lex_29 
    .local pmc __lowered_lex_28 
    .local pmc lowered_for_it__5 
    .local pmc __lowered_lex_32 
    .local pmc __lowered_lex_30 
    .local pmc __lowered_lex_31 
    .local pmc fb_tmp_3 
    .local pmc fb_tmp_4 
    .local pmc fb_tmp_5 
    .local pmc lowered_for_it__8 
    .local pmc __lowered_lex_40 
    .local pmc __lowered_lex_38 
    .local pmc __lowered_lex_39 
    .local pmc lowered_for_it__7 
    .local pmc __lowered_lex_37 
    .local pmc __lowered_lex_34 
    .local pmc __lowered_lex_35 
    .local pmc __lowered_lex_36 
    .local pmc lowered_for_it__6 
    .local pmc __lowered_lex_33 
    new $P5001, 'Hash'
    set __lowered_lex_44, $P5001
    new $P5002, 'Hash'
    set __lowered_lex_45, $P5002
    new $P5003, 'QRPA'
    set __lowered_lex_47, $P5003
    root_new $P101, ['parrot';'Continuation']
    set_label $P101, lexotic_30
    .lex "RETURN", $P101
    iter $P5004, __lowered_lex_43
    set lowered_for_it__3, $P5004
    new $P5036, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5036, while20_handlers35
    push_eh $P5036
  while20_test32:
    set $P5035, lowered_for_it__3
    unless lowered_for_it__3 goto while20_done36 
  while20_redo34:
    shift $P5005, lowered_for_it__3
    set __lowered_lex_27, $P5005
.annotate 'line', 76
.annotate 'line', 77
    get_how $P5006, __lowered_lex_27
    $P5007 = $P5006."methods"(__lowered_lex_27)
    set __lowered_lex_26, $P5007
    iter $P5008, __lowered_lex_26
    set lowered_for_it__2, $P5008
    new $P5033, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5033, while21_handlers40
    push_eh $P5033
  while21_test37:
    set $P5032, lowered_for_it__2
    unless lowered_for_it__2 goto while21_done41 
  while21_redo39:
    shift $P5009, lowered_for_it__2
    set __lowered_lex_25, $P5009
    new $P5010, 'QRPA'
    set __lowered_lex_23, $P5010
.annotate 'line', 78
    can $I5001, __lowered_lex_25, "name"
    unless $I5001 goto if22_else42 
.annotate 'line', 79
    $P5011 = __lowered_lex_25."name"()
    set $P5012, $P5011
    goto if22_end43
  if22_else42:
    set $S5001, __lowered_lex_25
    box $P5013, $S5001
    set $P5012, $P5013
  if22_end43:
    set __lowered_lex_21, $P5012
    set __lowered_lex_22, __lowered_lex_25
    set fb_tmp_1, __lowered_lex_44
    repr_defined $I5003, fb_tmp_1
    unless $I5003 goto if24_else46 
    set $S5002, __lowered_lex_21
    set $P5014, fb_tmp_1[$S5002]
    set $P5016, $P5014
    goto if24_end47
  if24_else46:
    null $P5015
    set $P5016, $P5015
  if24_end47:
    unless_null $P5016, vivi_2548
    null $P5017
    set $P5016, $P5017
  vivi_2548:
    defined $I5002, $P5016
    unless $I5002 goto if23_else44 
.annotate 'line', 82
    set fb_tmp_2, __lowered_lex_44
    repr_defined $I5004, fb_tmp_2
    unless $I5004 goto if26_else49 
    set $S5003, __lowered_lex_21
    set $P5018, fb_tmp_2[$S5003]
    set $P5020, $P5018
    goto if26_end50
  if26_else49:
    null $P5019
    set $P5020, $P5019
  if26_end50:
    unless_null $P5020, vivi_2751
    null $P5021
    set $P5020, $P5021
  vivi_2751:
    set __lowered_lex_23, $P5020
    goto if23_end45
  if23_else44:
.annotate 'line', 85
    set $S5004, __lowered_lex_21
    set __lowered_lex_44[$S5004], __lowered_lex_23
  if23_end45:
    box $P5022, 0
    set __lowered_lex_24, $P5022
    iter $P5023, __lowered_lex_23
    set lowered_for_it__1, $P5023
    new $P5029, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5029, while28_handlers55
    push_eh $P5029
  while28_test52:
    set $P5028, lowered_for_it__1
    unless lowered_for_it__1 goto while28_done56 
  while28_redo54:
    shift $P5024, lowered_for_it__1
    set __lowered_lex_20, $P5024
.annotate 'line', 89
    get_id $I5006, __lowered_lex_22
    get_id $I5007, __lowered_lex_20
    iseq $I5005, $I5006, $I5007
    box $P5027, $I5005
    set $P5026, $P5027
    unless $I5005 goto if29_end58 
.annotate 'line', 90
    box $P5025, 1
    set __lowered_lex_24, $P5025
    set $P5026, __lowered_lex_24
  if29_end58:
    set $P5028, $P5026
    goto while28_test52 
  while28_handlers55:
    .get_results ($P5029)
    pop_upto_eh $P5029
    getattribute $P5030, $P5029, 'type'
    eq $P5030, .CONTROL_LOOP_NEXT, while28_test52
    eq $P5030, .CONTROL_LOOP_REDO, while28_redo54
  while28_done56:
    pop_eh 
    set $P5031, __lowered_lex_24
    if __lowered_lex_24 goto unless30_end60 
.annotate 'line', 94
    push __lowered_lex_23, __lowered_lex_22
    set $P5031, __lowered_lex_23
  unless30_end60:
    set $P5032, $P5031
    goto while21_test37 
  while21_handlers40:
    .get_results ($P5033)
    pop_upto_eh $P5033
    getattribute $P5034, $P5033, 'type'
    eq $P5034, .CONTROL_LOOP_NEXT, while21_test37
    eq $P5034, .CONTROL_LOOP_REDO, while21_redo39
  while21_done41:
    pop_eh 
    set $P5035, $P5032
    goto while20_test32 
  while20_handlers35:
    .get_results ($P5036)
    pop_upto_eh $P5036
    getattribute $P5037, $P5036, 'type'
    eq $P5037, .CONTROL_LOOP_NEXT, while20_test32
    eq $P5037, .CONTROL_LOOP_REDO, while20_redo34
  while20_done36:
    pop_eh 
.annotate 'line', 102
    get_how $P5038, __lowered_lex_42
    $P5039 = $P5038."methods"(__lowered_lex_42)
    set __lowered_lex_46, $P5039
    iter $P5040, __lowered_lex_46
    set lowered_for_it__4, $P5040
    new $P5046, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5046, while31_handlers64
    push_eh $P5046
  while31_test61:
    set $P5045, lowered_for_it__4
    unless lowered_for_it__4 goto while31_done65 
  while31_redo63:
    shift $P5041, lowered_for_it__4
    set __lowered_lex_29, $P5041
.annotate 'line', 103
    can $I5008, __lowered_lex_29, "name"
    unless $I5008 goto if32_else66 
.annotate 'line', 104
    $P5042 = __lowered_lex_29."name"()
    set $P5043, $P5042
    goto if32_end67
  if32_else66:
    set $S5005, __lowered_lex_29
    box $P5044, $S5005
    set $P5043, $P5044
  if32_end67:
    set __lowered_lex_28, $P5043
    set $S5006, __lowered_lex_28
    set __lowered_lex_45[$S5006], __lowered_lex_29
    set $P5045, __lowered_lex_29
    goto while31_test61 
  while31_handlers64:
    .get_results ($P5046)
    pop_upto_eh $P5046
    getattribute $P5047, $P5046, 'type'
    eq $P5047, .CONTROL_LOOP_NEXT, while31_test61
    eq $P5047, .CONTROL_LOOP_REDO, while31_redo63
  while31_done65:
    pop_eh 
    iter $P5048, __lowered_lex_44
    set lowered_for_it__5, $P5048
    new $P5071, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5071, while33_handlers71
    push_eh $P5071
  while33_test68:
    set $P5070, lowered_for_it__5
    unless lowered_for_it__5 goto while33_done72 
  while33_redo70:
    shift $P5049, lowered_for_it__5
    set __lowered_lex_32, $P5049
.annotate 'line', 109
    $P5050 = __lowered_lex_32."key"()
    set __lowered_lex_30, $P5050
    set fb_tmp_3, __lowered_lex_44
    repr_defined $I5009, fb_tmp_3
    unless $I5009 goto if34_else73 
    set $S5007, __lowered_lex_30
    set $P5051, fb_tmp_3[$S5007]
    set $P5053, $P5051
    goto if34_end74
  if34_else73:
    null $P5052
    set $P5053, $P5052
  if34_end74:
    unless_null $P5053, vivi_3575
    null $P5054
    set $P5053, $P5054
  vivi_3575:
    set __lowered_lex_31, $P5053
    set fb_tmp_4, __lowered_lex_45
    repr_defined $I5011, fb_tmp_4
    unless $I5011 goto if37_else78 
    set $S5008, __lowered_lex_30
    set $P5055, fb_tmp_4[$S5008]
    set $P5057, $P5055
    goto if37_end79
  if37_else78:
    null $P5056
    set $P5057, $P5056
  if37_end79:
    unless_null $P5057, vivi_3880
    null $P5058
    set $P5057, $P5058
  vivi_3880:
    defined $I5010, $P5057
    box $P5069, $I5010
    set $P5068, $P5069
    if $I5010 goto unless36_end77 
.annotate 'line', 115
    elements $I5013, __lowered_lex_31
    iseq $I5012, $I5013, 1
    unless $I5012 goto if39_else81 
.annotate 'line', 117
.annotate 'line', 118
    get_how $P5059, __lowered_lex_42
    set fb_tmp_5, __lowered_lex_31
    repr_defined $I5014, fb_tmp_5
    unless $I5014 goto if40_else83 
    set $P5060, fb_tmp_5[0]
    set $P5062, $P5060
    goto if40_end84
  if40_else83:
    null $P5061
    set $P5062, $P5061
  if40_end84:
    unless_null $P5062, vivi_4185
    null $P5063
    set $P5062, $P5063
  vivi_4185:
    $P5064 = $P5059."add_method"(__lowered_lex_42, __lowered_lex_30, $P5062)
    set $P5067, $P5064
    goto if39_end82
  if39_else81:
.annotate 'line', 120
.annotate 'line', 122
    get_how $P5065, __lowered_lex_42
    $P5066 = $P5065."add_collision"(__lowered_lex_42, __lowered_lex_30)
    set $P5067, $P5066
  if39_end82:
    set $P5068, $P5067
  unless36_end77:
    set $P5070, $P5068
    goto while33_test68 
  while33_handlers71:
    .get_results ($P5071)
    pop_upto_eh $P5071
    getattribute $P5072, $P5071, 'type'
    eq $P5072, .CONTROL_LOOP_NEXT, while33_test68
    eq $P5072, .CONTROL_LOOP_REDO, while33_redo70
  while33_done72:
    pop_eh 
    iter $P5073, __lowered_lex_43
    set lowered_for_it__8, $P5073
    new $P5102, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5102, while42_handlers89
    push_eh $P5102
  while42_test86:
    set $P5101, lowered_for_it__8
    unless lowered_for_it__8 goto while42_done90 
  while42_redo88:
    shift $P5074, lowered_for_it__8
    set __lowered_lex_40, $P5074
.annotate 'line', 129
    get_how $P5075, __lowered_lex_40
    set __lowered_lex_38, $P5075
.annotate 'line', 133
    $P5076 = __lowered_lex_38."attributes"(__lowered_lex_40)
    set __lowered_lex_39, $P5076
    iter $P5077, __lowered_lex_39
    set lowered_for_it__7, $P5077
    new $P5099, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5099, while43_handlers94
    push_eh $P5099
  while43_test91:
    set $P5098, lowered_for_it__7
    unless lowered_for_it__7 goto while43_done95 
  while43_redo93:
    shift $P5078, lowered_for_it__7
    set __lowered_lex_37, $P5078
.annotate 'line', 134
    set __lowered_lex_34, __lowered_lex_37
    box $P5079, 0
    set __lowered_lex_35, $P5079
.annotate 'line', 137
    get_how $P5080, __lowered_lex_42
    $P5081 = $P5080."attributes"(__lowered_lex_42)
    set __lowered_lex_36, $P5081
    iter $P5082, __lowered_lex_36
    set lowered_for_it__6, $P5082
    new $P5093, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5093, while44_handlers99
    push_eh $P5093
  while44_test96:
    set $P5092, lowered_for_it__6
    unless lowered_for_it__6 goto while44_done100 
  while44_redo98:
    shift $P5083, lowered_for_it__6
    set __lowered_lex_33, $P5083
.annotate 'line', 138
    get_id $I5016, __lowered_lex_33
    get_id $I5017, __lowered_lex_34
    iseq $I5015, $I5016, $I5017
    unless $I5015 goto if45_else101 
.annotate 'line', 139
    box $P5084, 1
    set __lowered_lex_35, $P5084
    set $P5091, __lowered_lex_35
    goto if45_end102
  if45_else101:
.annotate 'line', 142
.annotate 'line', 143
    $P5085 = __lowered_lex_33."name"()
    set $S5009, $P5085
    $P5086 = __lowered_lex_34."name"()
    set $S5010, $P5086
    iseq $I5018, $S5009, $S5010
    box $P5090, $I5018
    set $P5089, $P5090
    unless $I5018 goto if46_end104 
.annotate 'line', 144
    $P5087 = __lowered_lex_33."name"()
    set $S5013, $P5087
    concat $S5012, "Attribute '", $S5013
    concat $S5011, $S5012, "' conflicts in role composition"
    box $P5088, $S5011
    die $P5088
    set $P5089, $P5088
  if46_end104:
    set $P5091, $P5089
  if45_end102:
    set $P5092, $P5091
    goto while44_test96 
  while44_handlers99:
    .get_results ($P5093)
    pop_upto_eh $P5093
    getattribute $P5094, $P5093, 'type'
    eq $P5094, .CONTROL_LOOP_NEXT, while44_test96
    eq $P5094, .CONTROL_LOOP_REDO, while44_redo98
  while44_done100:
    pop_eh 
    set $P5097, __lowered_lex_35
    if __lowered_lex_35 goto unless47_end106 
.annotate 'line', 148
.annotate 'line', 149
    get_how $P5095, __lowered_lex_42
    $P5096 = $P5095."add_attribute"(__lowered_lex_42, __lowered_lex_34)
    set $P5097, $P5096
  unless47_end106:
    set $P5098, $P5097
    goto while43_test91 
  while43_handlers94:
    .get_results ($P5099)
    pop_upto_eh $P5099
    getattribute $P5100, $P5099, 'type'
    eq $P5100, .CONTROL_LOOP_NEXT, while43_test91
    eq $P5100, .CONTROL_LOOP_REDO, while43_redo93
  while43_done95:
    pop_eh 
    push __lowered_lex_47, __lowered_lex_40
    set $P5101, __lowered_lex_47
    goto while42_test86 
  while42_handlers89:
    .get_results ($P5102)
    pop_upto_eh $P5102
    getattribute $P5103, $P5102, 'type'
    eq $P5103, .CONTROL_LOOP_NEXT, while42_test86
    eq $P5103, .CONTROL_LOOP_REDO, while42_redo88
  while42_done90:
    pop_eh 
    $P5104 = "RETURN"(__lowered_lex_47)
    goto lexotic_31
  lexotic_30:
    .get_results ($P5104)
  lexotic_31:
    .return ($P5104) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_143_1431289877.42775") :anon :lex :outer("cuid_140_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 165
    .const 'Sub' $P5022 = 'cuid_12_1431289877.42775' 
    capture_lex $P5022 
    .const 'Sub' $P5022 = 'cuid_13_1431289877.42775' 
    capture_lex $P5022 
    .const 'Sub' $P5022 = 'cuid_14_1431289877.42775' 
    capture_lex $P5022 
    .const 'Sub' $P5022 = 'cuid_15_1431289877.42775' 
    capture_lex $P5022 
    .const 'Sub' $P5022 = 'cuid_16_1431289877.42775' 
    capture_lex $P5022 
    .const 'Sub' $P5022 = 'cuid_17_1431289877.42775' 
    capture_lex $P5022 
    .const 'Sub' $P5022 = 'cuid_18_1431289877.42775' 
    capture_lex $P5022 
    .const 'Sub' $P5022 = 'cuid_19_1431289877.42775' 
    capture_lex $P5022 
    .const 'Sub' $P5022 = 'cuid_20_1431289877.42775' 
    capture_lex $P5022 
    .const 'Sub' $P5022 = 'cuid_21_1431289877.42775' 
    capture_lex $P5022 
    .const 'Sub' $P5022 = 'cuid_22_1431289877.42775' 
    capture_lex $P5022 
    .const 'Sub' $P5022 = 'cuid_23_1431289877.42775' 
    capture_lex $P5022 
    .const 'Sub' $P5022 = 'cuid_24_1431289877.42775' 
    capture_lex $P5022 
    .const 'Sub' $P5022 = 'cuid_25_1431289877.42775' 
    capture_lex $P5022 
    .const 'Sub' $P5022 = 'cuid_26_1431289877.42775' 
    capture_lex $P5022 
    .const 'Sub' $P5022 = 'cuid_27_1431289877.42775' 
    capture_lex $P5022 
    .const 'Sub' $P5022 = 'cuid_28_1431289877.42775' 
    capture_lex $P5022 
    .const 'Sub' $P5022 = 'cuid_29_1431289877.42775' 
    capture_lex $P5022 
    .const 'Sub' $P5022 = 'cuid_30_1431289877.42775' 
    capture_lex $P5022 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .lex "$archetypes", $P103 
.annotate 'line', 191
    nqp_get_sc_object $P5001, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 1
    $P5002 = $P5001."new"(1 :named("nominal"), 1 :named("composable"))
    set $P103, $P5002
    .const 'Sub' $P5003 = 'cuid_12_1431289877.42775' 
    capture_lex $P5003
    .const 'Sub' $P5004 = 'cuid_13_1431289877.42775' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_14_1431289877.42775' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_15_1431289877.42775' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_16_1431289877.42775' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_17_1431289877.42775' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_18_1431289877.42775' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_19_1431289877.42775' 
    capture_lex $P5010
    .const 'Sub' $P5011 = 'cuid_20_1431289877.42775' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_21_1431289877.42775' 
    capture_lex $P5012
    .const 'Sub' $P5013 = 'cuid_22_1431289877.42775' 
    capture_lex $P5013
    .const 'Sub' $P5014 = 'cuid_23_1431289877.42775' 
    capture_lex $P5014
    .const 'Sub' $P5015 = 'cuid_24_1431289877.42775' 
    capture_lex $P5015
    .const 'Sub' $P5016 = 'cuid_25_1431289877.42775' 
    capture_lex $P5016
    .const 'Sub' $P5017 = 'cuid_26_1431289877.42775' 
    capture_lex $P5017
    .const 'Sub' $P5018 = 'cuid_27_1431289877.42775' 
    capture_lex $P5018
    .const 'Sub' $P5019 = 'cuid_28_1431289877.42775' 
    capture_lex $P5019
    .const 'Sub' $P5020 = 'cuid_29_1431289877.42775' 
    capture_lex $P5020
    .const 'Sub' $P5021 = 'cuid_30_1431289877.42775' 
    capture_lex $P5021
    .return ($P5021) 
.end
.HLL "nqp"
.namespace []
.sub "archetypes" :subid("cuid_12_1431289877.42775") :anon :lex :outer("cuid_143_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 192
    .param pmc __lowered_lex_48 
    find_lex $P5001, "$archetypes"
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "new" :subid("cuid_13_1431289877.42775") :anon :lex :outer("cuid_143_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 201
    .param pmc __lowered_lex_49 
    .param pmc __lowered_lex_50 :named("name") 
    .param pmc __lowered_lex_51 :named("instance_of") 
    .local pmc __lowered_lex_52 
    nqp_decontainerize $P5002, __lowered_lex_49
    repr_instance_of $P5001, $P5002
    set __lowered_lex_52, $P5001
.annotate 'line', 203
    __lowered_lex_52."BUILD"(__lowered_lex_50 :named("name"), __lowered_lex_51 :named("instance_of"))
    .return (__lowered_lex_52) 
.end
.HLL "nqp"
.namespace []
.sub "BUILD" :subid("cuid_14_1431289877.42775") :anon :lex :outer("cuid_143_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 207
    .param pmc __lowered_lex_53 
    .param pmc __lowered_lex_54 :named("name") 
    .param pmc __lowered_lex_55 :named("instance_of") 
    nqp_decontainerize $P5001, __lowered_lex_53
    nqp_get_sc_object $P5002, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 3
    repr_bind_attr_obj $P5001, $P5002, "$!name", 0, __lowered_lex_54
    nqp_decontainerize $P5003, __lowered_lex_53
    nqp_get_sc_object $P5004, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 3
    repr_bind_attr_obj $P5003, $P5004, "$!instance_of", 1, __lowered_lex_55
    nqp_decontainerize $P5005, __lowered_lex_53
    nqp_get_sc_object $P5006, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 3
    new $P5007, 'QRPA'
    repr_bind_attr_obj $P5005, $P5006, "@!attributes", 2, $P5007
    nqp_decontainerize $P5008, __lowered_lex_53
    nqp_get_sc_object $P5009, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 3
    new $P5010, 'Hash'
    repr_bind_attr_obj $P5008, $P5009, "%!methods", 3, $P5010
    nqp_decontainerize $P5011, __lowered_lex_53
    nqp_get_sc_object $P5012, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 3
    new $P5013, 'QRPA'
    repr_bind_attr_obj $P5011, $P5012, "@!multi_methods_to_incorporate", 4, $P5013
    nqp_decontainerize $P5014, __lowered_lex_53
    nqp_get_sc_object $P5015, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 3
    new $P5016, 'QRPA'
    repr_bind_attr_obj $P5014, $P5015, "@!collisions", 5, $P5016
    nqp_decontainerize $P5017, __lowered_lex_53
    nqp_get_sc_object $P5018, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 3
    new $P5019, 'QRPA'
    repr_bind_attr_obj $P5017, $P5018, "@!roles", 6, $P5019
    nqp_decontainerize $P5020, __lowered_lex_53
    nqp_get_sc_object $P5021, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 3
    new $P5022, 'QRPA'
    repr_bind_attr_obj $P5020, $P5021, "@!role_typecheck_list", 7, $P5022
    nqp_decontainerize $P5023, __lowered_lex_53
    nqp_get_sc_object $P5024, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 3
    box $P5025, 0
    repr_bind_attr_obj $P5023, $P5024, "$!composed", 8, $P5025
    .return ($P5025) 
.end
.HLL "nqp"
.namespace []
.sub "new_type" :subid("cuid_15_1431289877.42775") :anon :lex :outer("cuid_143_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 221
    .param pmc __lowered_lex_56 
    .param pmc __lowered_lex_57 :named("name") :optional 
    .param int haz_param_9 :opt_flag 
    .param pmc __lowered_lex_58 :named("instance_of") 
    .local pmc __lowered_lex_59 
    if haz_param_9, default107
    box $P5004, "<anon>"
    set __lowered_lex_57, $P5004
  default107:
.annotate 'line', 222
    nqp_decontainerize $P5001, __lowered_lex_56
    $P5002 = $P5001."new"(__lowered_lex_57 :named("name"), __lowered_lex_58 :named("instance_of"))
    set __lowered_lex_59, $P5002
    repr_type_object_for $P5003, __lowered_lex_59, "Uninstantiable"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "add_method" :subid("cuid_16_1431289877.42775") :anon :lex :outer("cuid_143_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 226
    .param pmc __lowered_lex_60 
    .param pmc __lowered_lex_61 
    .param pmc __lowered_lex_62 
    .param pmc __lowered_lex_63 
    nqp_decontainerize $P5001, __lowered_lex_60
    nqp_get_sc_object $P5002, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 3
    repr_get_attr_obj $P5003, $P5001, $P5002, "%!methods", 3
    set $S5001, __lowered_lex_62
    exists $I5001, $P5003[$S5001]
    unless $I5001 goto if48_end109 
.annotate 'line', 227
    set $S5003, __lowered_lex_62
    concat $S5002, "This role already has a method named ", $S5003
    box $P5004, $S5002
    die $P5004
  if48_end109:
    nqp_decontainerize $P5005, __lowered_lex_60
    nqp_get_sc_object $P5006, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 3
    repr_get_attr_obj $P5007, $P5005, $P5006, "%!methods", 3
    set $S5004, __lowered_lex_62
    set $P5007[$S5004], __lowered_lex_63
    .return (__lowered_lex_63) 
.end
.HLL "nqp"
.namespace []
.sub "add_multi_method" :subid("cuid_17_1431289877.42775") :anon :lex :outer("cuid_143_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 233
    .param pmc __lowered_lex_64 
    .param pmc __lowered_lex_65 
    .param pmc __lowered_lex_66 
    .param pmc __lowered_lex_67 
    .local pmc __lowered_lex_68 
    new $P5001, 'Hash'
    set __lowered_lex_68, $P5001
    set __lowered_lex_68["name"], __lowered_lex_66
    set __lowered_lex_68["code"], __lowered_lex_67
    nqp_decontainerize $P5002, __lowered_lex_64
    nqp_get_sc_object $P5003, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 3
    repr_get_attr_obj $P5004, $P5002, $P5003, "@!multi_methods_to_incorporate", 4
    push $P5004, __lowered_lex_68
    .return (__lowered_lex_67) 
.end
.HLL "nqp"
.namespace []
.sub "add_attribute" :subid("cuid_18_1431289877.42775") :anon :lex :outer("cuid_143_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 241
    .param pmc __lowered_lex_70 
    .param pmc __lowered_lex_71 
    .param pmc __lowered_lex_72 
    .local pmc __lowered_lex_73 
    .local pmc lowered_for_it__9 
    .local pmc __lowered_lex_69 
.annotate 'line', 242
    $P5001 = __lowered_lex_72."name"()
    set __lowered_lex_73, $P5001
    nqp_decontainerize $P5003, __lowered_lex_70
    nqp_get_sc_object $P5004, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 3
    repr_get_attr_obj $P5005, $P5003, $P5004, "@!attributes", 2
    iter $P5002, $P5005
    set lowered_for_it__9, $P5002
    new $P5012, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5012, while49_handlers113
    push_eh $P5012
  while49_test110:
    set $P5011, lowered_for_it__9
    unless lowered_for_it__9 goto while49_done114 
  while49_redo112:
    shift $P5006, lowered_for_it__9
    set __lowered_lex_69, $P5006
.annotate 'line', 243
.annotate 'line', 244
    $P5007 = __lowered_lex_69."name"()
    set $S5001, $P5007
    set $S5002, __lowered_lex_73
    iseq $I5001, $S5001, $S5002
    box $P5010, $I5001
    set $P5009, $P5010
    unless $I5001 goto if50_end116 
    set $S5004, __lowered_lex_73
    concat $S5003, "This role already has an attribute named ", $S5004
    box $P5008, $S5003
    die $P5008
    set $P5009, $P5008
  if50_end116:
    set $P5011, $P5009
    goto while49_test110 
  while49_handlers113:
    .get_results ($P5012)
    pop_upto_eh $P5012
    getattribute $P5013, $P5012, 'type'
    eq $P5013, .CONTROL_LOOP_NEXT, while49_test110
    eq $P5013, .CONTROL_LOOP_REDO, while49_redo112
  while49_done114:
    pop_eh 
    nqp_decontainerize $P5014, __lowered_lex_70
    nqp_get_sc_object $P5015, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 3
    repr_get_attr_obj $P5016, $P5014, $P5015, "@!attributes", 2
    push $P5016, __lowered_lex_72
    .return ($P5016) 
.end
.HLL "nqp"
.namespace []
.sub "add_parent" :subid("cuid_19_1431289877.42775") :anon :lex :outer("cuid_143_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 251
    .param pmc __lowered_lex_74 
    .param pmc __lowered_lex_75 
    .param pmc __lowered_lex_76 
    box $P5001, "A role cannot inherit from a class in NQP"
    die $P5001
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "add_role" :subid("cuid_20_1431289877.42775") :anon :lex :outer("cuid_143_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 255
    .param pmc __lowered_lex_77 
    .param pmc __lowered_lex_78 
    .param pmc __lowered_lex_79 
    nqp_decontainerize $P5001, __lowered_lex_77
    nqp_get_sc_object $P5002, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 3
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!roles", 6
    push $P5003, __lowered_lex_79
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "add_collision" :subid("cuid_21_1431289877.42775") :anon :lex :outer("cuid_143_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 259
    .param pmc __lowered_lex_80 
    .param pmc __lowered_lex_81 
    .param pmc __lowered_lex_82 
    nqp_decontainerize $P5001, __lowered_lex_80
    nqp_get_sc_object $P5002, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 3
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!collisions", 5
    push $P5003, __lowered_lex_82
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "compose" :subid("cuid_22_1431289877.42775") :anon :lex :outer("cuid_143_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 264
    .param pmc __lowered_lex_84 
    .param pmc __lowered_lex_85 
    .local pmc lowered_for_it__10 
    .local pmc __lowered_lex_83 
    nqp_decontainerize $P5001, __lowered_lex_84
    nqp_get_sc_object $P5002, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 3
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!roles", 6
    unless $P5003 goto if51_end118 
.annotate 'line', 267
    nqp_decontainerize $P5005, __lowered_lex_84
    nqp_get_sc_object $P5006, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 3
    repr_get_attr_obj $P5007, $P5005, $P5006, "@!roles", 6
    iter $P5004, $P5007
    set lowered_for_it__10, $P5004
    new $P5018, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5018, while52_handlers122
    push_eh $P5018
  while52_test119:
    set $P5017, lowered_for_it__10
    unless lowered_for_it__10 goto while52_done123 
  while52_redo121:
    shift $P5008, lowered_for_it__10
    set __lowered_lex_83, $P5008
.annotate 'line', 268
    nqp_decontainerize $P5009, __lowered_lex_84
    nqp_get_sc_object $P5010, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 3
    repr_get_attr_obj $P5011, $P5009, $P5010, "@!role_typecheck_list", 7
    push $P5011, __lowered_lex_83
    nqp_decontainerize $P5012, __lowered_lex_84
    nqp_get_sc_object $P5013, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 3
    repr_get_attr_obj $P5014, $P5012, $P5013, "@!role_typecheck_list", 7
.annotate 'line', 270
    get_how $P5015, __lowered_lex_83
    $P5016 = $P5015."instance_of"(__lowered_lex_83)
    push $P5014, $P5016
    set $P5017, $P5014
    goto while52_test119 
  while52_handlers122:
    .get_results ($P5018)
    pop_upto_eh $P5018
    getattribute $P5019, $P5018, 'type'
    eq $P5019, .CONTROL_LOOP_NEXT, while52_test119
    eq $P5019, .CONTROL_LOOP_REDO, while52_redo121
  while52_done123:
    pop_eh 
.annotate 'line', 272
    nqp_get_sc_object $P5020, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 2
    nqp_decontainerize $P5021, __lowered_lex_84
    nqp_get_sc_object $P5022, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 3
    repr_get_attr_obj $P5023, $P5021, $P5022, "@!roles", 6
    $P5024 = $P5020."apply"(__lowered_lex_85, $P5023)
  if51_end118:
    nqp_decontainerize $P5025, __lowered_lex_84
    nqp_get_sc_object $P5026, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 3
    box $P5027, 1
    repr_bind_attr_obj $P5025, $P5026, "$!composed", 8, $P5027
    new $P5028, 'QRPA'
    get_what $P5029, __lowered_lex_85
    push $P5028, $P5029
    publish_type_check_cache __lowered_lex_85, $P5028
    new $P5030, 'Hash'
    publish_method_cache __lowered_lex_85, $P5030
    set_method_cache_authoritativeness __lowered_lex_85, 1
    .return (__lowered_lex_85) 
.end
.HLL "nqp"
.namespace []
.sub "methods" :subid("cuid_23_1431289877.42775") :anon :lex :outer("cuid_143_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 288
    .param pmc __lowered_lex_87 
    .param pmc __lowered_lex_88 
    .param pmc __lowered_lex_89 :named("local") :optional 
    .param int haz_param_10 :opt_flag 
    .local pmc __lowered_lex_90 
    .local pmc lowered_for_it__11 
    .local pmc __lowered_lex_86 
    if haz_param_10, default129
    null $P5011
    set __lowered_lex_89, $P5011
  default129:
    new $P5001, 'QRPA'
    set __lowered_lex_90, $P5001
    nqp_decontainerize $P5003, __lowered_lex_87
    nqp_get_sc_object $P5004, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 3
    repr_get_attr_obj $P5005, $P5003, $P5004, "%!methods", 3
    iter $P5002, $P5005
    set lowered_for_it__11, $P5002
    new $P5009, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5009, while53_handlers127
    push_eh $P5009
  while53_test124:
    set $P5008, lowered_for_it__11
    unless lowered_for_it__11 goto while53_done128 
  while53_redo126:
    shift $P5006, lowered_for_it__11
    set __lowered_lex_86, $P5006
.annotate 'line', 290
    $P5007 = __lowered_lex_86."value"()
    push __lowered_lex_90, $P5007
    set $P5008, __lowered_lex_90
    goto while53_test124 
  while53_handlers127:
    .get_results ($P5009)
    pop_upto_eh $P5009
    getattribute $P5010, $P5009, 'type'
    eq $P5010, .CONTROL_LOOP_NEXT, while53_test124
    eq $P5010, .CONTROL_LOOP_REDO, while53_redo126
  while53_done128:
    pop_eh 
    .return (__lowered_lex_90) 
.end
.HLL "nqp"
.namespace []
.sub "method_table" :subid("cuid_24_1431289877.42775") :anon :lex :outer("cuid_143_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 296
    .param pmc __lowered_lex_91 
    .param pmc __lowered_lex_92 
    nqp_decontainerize $P5001, __lowered_lex_91
    nqp_get_sc_object $P5002, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 3
    repr_get_attr_obj $P5003, $P5001, $P5002, "%!methods", 3
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "collisions" :subid("cuid_25_1431289877.42775") :anon :lex :outer("cuid_143_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 300
    .param pmc __lowered_lex_93 
    .param pmc __lowered_lex_94 
    nqp_decontainerize $P5001, __lowered_lex_93
    nqp_get_sc_object $P5002, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 3
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!collisions", 5
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "name" :subid("cuid_26_1431289877.42775") :anon :lex :outer("cuid_143_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 304
    .param pmc __lowered_lex_95 
    .param pmc __lowered_lex_96 
    nqp_decontainerize $P5001, __lowered_lex_95
    nqp_get_sc_object $P5002, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 3
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!name", 0
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "attributes" :subid("cuid_27_1431289877.42775") :anon :lex :outer("cuid_143_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 308
    .param pmc __lowered_lex_98 
    .param pmc __lowered_lex_99 
    .param pmc __lowered_lex_100 :named("local") :optional 
    .param int haz_param_11 :opt_flag 
    .local pmc __lowered_lex_101 
    .local pmc lowered_for_it__12 
    .local pmc __lowered_lex_97 
    if haz_param_11, default135
    null $P5010
    set __lowered_lex_100, $P5010
  default135:
    new $P5001, 'QRPA'
    set __lowered_lex_101, $P5001
    nqp_decontainerize $P5003, __lowered_lex_98
    nqp_get_sc_object $P5004, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 3
    repr_get_attr_obj $P5005, $P5003, $P5004, "@!attributes", 2
    iter $P5002, $P5005
    set lowered_for_it__12, $P5002
    new $P5008, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5008, while54_handlers133
    push_eh $P5008
  while54_test130:
    set $P5007, lowered_for_it__12
    unless lowered_for_it__12 goto while54_done134 
  while54_redo132:
    shift $P5006, lowered_for_it__12
    set __lowered_lex_97, $P5006
.annotate 'line', 310
    push __lowered_lex_101, __lowered_lex_97
    set $P5007, __lowered_lex_101
    goto while54_test130 
  while54_handlers133:
    .get_results ($P5008)
    pop_upto_eh $P5008
    getattribute $P5009, $P5008, 'type'
    eq $P5009, .CONTROL_LOOP_NEXT, while54_test130
    eq $P5009, .CONTROL_LOOP_REDO, while54_redo132
  while54_done134:
    pop_eh 
    .return (__lowered_lex_101) 
.end
.HLL "nqp"
.namespace []
.sub "roles" :subid("cuid_28_1431289877.42775") :anon :lex :outer("cuid_143_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 316
    .param pmc __lowered_lex_102 
    .param pmc __lowered_lex_103 
    nqp_decontainerize $P5001, __lowered_lex_102
    nqp_get_sc_object $P5002, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 3
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!roles", 6
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "role_typecheck_list" :subid("cuid_29_1431289877.42775") :anon :lex :outer("cuid_143_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 320
    .param pmc __lowered_lex_104 
    .param pmc __lowered_lex_105 
    nqp_decontainerize $P5001, __lowered_lex_104
    nqp_get_sc_object $P5002, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 3
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!role_typecheck_list", 7
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "instance_of" :subid("cuid_30_1431289877.42775") :anon :lex :outer("cuid_143_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 324
    .param pmc __lowered_lex_106 
    .param pmc __lowered_lex_107 
    nqp_decontainerize $P5001, __lowered_lex_106
    nqp_get_sc_object $P5002, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 3
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!instance_of", 1
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_144_1431289877.42775") :anon :lex :outer("cuid_140_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 330
    .const 'Sub' $P5004 = 'cuid_145_1431289877.42775' 
    capture_lex $P5004 
    .const 'Sub' $P5004 = 'cuid_146_1431289877.42775' 
    capture_lex $P5004 
    .const 'Sub' $P5004 = 'cuid_31_1431289877.42775' 
    capture_lex $P5004 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .lex "&has_method", $P103 
    .lex "&has_attribute", $P104 
    .const 'Sub' $P5001 = 'cuid_145_1431289877.42775' 
    capture_lex $P5001
    set $P103, $P5001
    .const 'Sub' $P5002 = 'cuid_146_1431289877.42775' 
    capture_lex $P5002
    set $P104, $P5002
    .const 'Sub' $P5003 = 'cuid_31_1431289877.42775' 
    capture_lex $P5003
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "has_method" :subid("cuid_145_1431289877.42775") :anon :lex :outer("cuid_144_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 332
    .param pmc __lowered_lex_108 
    .param pmc __lowered_lex_109 
    .param pmc __lowered_lex_110 
    .local pmc __lowered_lex_111 
.annotate 'line', 333
    get_how $P5001, __lowered_lex_108
    $P5002 = $P5001."method_table"(__lowered_lex_108)
    set __lowered_lex_111, $P5002
    set $S5001, __lowered_lex_109
    exists $I5001, __lowered_lex_111[$S5001]
    .return ($I5001) 
.end
.HLL "nqp"
.namespace []
.sub "has_attribute" :subid("cuid_146_1431289877.42775") :anon :lex :outer("cuid_144_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 337
    .param pmc __lowered_lex_113 
    .param pmc __lowered_lex_114 
    .local pmc __lowered_lex_115 
    .local pmc lowered_for_it__13 
    .local pmc __lowered_lex_112 
    root_new $P101, ['parrot';'Continuation']
    set_label $P101, lexotic_136
    .lex "RETURN", $P101
.annotate 'line', 338
    get_how $P5001, __lowered_lex_113
    $P5002 = $P5001."attributes"(__lowered_lex_113, 1 :named("local"))
    set __lowered_lex_115, $P5002
    iter $P5003, __lowered_lex_115
    set lowered_for_it__13, $P5003
    new $P5010, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5010, while55_handlers141
    push_eh $P5010
  while55_test138:
    set $P5009, lowered_for_it__13
    unless lowered_for_it__13 goto while55_done142 
  while55_redo140:
    shift $P5004, lowered_for_it__13
    set __lowered_lex_112, $P5004
.annotate 'line', 339
.annotate 'line', 340
    $P5005 = __lowered_lex_112."name"()
    set $S5001, $P5005
    set $S5002, __lowered_lex_114
    iseq $I5001, $S5001, $S5002
    box $P5008, $I5001
    set $P5007, $P5008
    unless $I5001 goto if56_end144 
    $P5006 = "RETURN"(1)
    set $P5007, $P5006
  if56_end144:
    set $P5009, $P5007
    goto while55_test138 
  while55_handlers141:
    .get_results ($P5010)
    pop_upto_eh $P5010
    getattribute $P5011, $P5010, 'type'
    eq $P5011, .CONTROL_LOOP_NEXT, while55_test138
    eq $P5011, .CONTROL_LOOP_REDO, while55_redo140
  while55_done142:
    pop_eh 
    $P5012 = "RETURN"(0)
    goto lexotic_137
  lexotic_136:
    .get_results ($P5012)
  lexotic_137:
    .return ($P5012) 
.end
.HLL "nqp"
.namespace []
.sub "apply" :subid("cuid_31_1431289877.42775") :anon :lex :outer("cuid_144_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 345
    .param pmc __lowered_lex_121 
    .param pmc __lowered_lex_122 
    .param pmc __lowered_lex_123 
    .local pmc __lowered_lex_124 
    .local pmc __lowered_lex_125 
    .local pmc __lowered_lex_126 
    .local pmc __lowered_lex_127 
    .local pmc __lowered_lex_128 
    .local pmc __lowered_lex_129 
    .local pmc fb_tmp_6 
    .local pmc fb_tmp_7 
    .local pmc lowered_for_it__14 
    .local pmc __lowered_lex_116 
    .local pmc lowered_for_it__15 
    .local pmc __lowered_lex_117 
    .local pmc lowered_for_it__16 
    .local pmc __lowered_lex_119 
    .local pmc __lowered_lex_118 
    .local pmc lowered_for_it__17 
    .local pmc __lowered_lex_120 
    null $P5001
    set __lowered_lex_124, $P5001
    null $P5002
    set __lowered_lex_125, $P5002
    new $P5003, 'QRPA'
    set __lowered_lex_129, $P5003
    elements $I5002, __lowered_lex_123
    iseq $I5001, $I5002, 1
    unless $I5001 goto if57_else145 
.annotate 'line', 350
    set fb_tmp_6, __lowered_lex_123
    repr_defined $I5003, fb_tmp_6
    unless $I5003 goto if58_else147 
    set $P5004, fb_tmp_6[0]
    set $P5006, $P5004
    goto if58_end148
  if58_else147:
    null $P5005
    set $P5006, $P5005
  if58_end148:
    unless_null $P5006, vivi_59149
    null $P5007
    set $P5006, $P5007
  vivi_59149:
    set __lowered_lex_124, $P5006
    get_how $P5008, __lowered_lex_124
    set __lowered_lex_125, $P5008
    goto if57_end146
  if57_else145:
.annotate 'line', 354
.annotate 'line', 355
    nqp_get_sc_object $P5009, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 3
    find_lex $P5011, "$?PACKAGE"
    get_who $P5010, $P5011
    set fb_tmp_7, $P5010
    repr_defined $I5004, fb_tmp_7
    unless $I5004 goto if60_else150 
    set $P5012, fb_tmp_7["NQPMu"]
    set $P5014, $P5012
    goto if60_end151
  if60_else150:
    null $P5013
    set $P5014, $P5013
  if60_end151:
    unless_null $P5014, vivi_62153
    nqp_get_sc_object $P5017, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 0
    get_who $P5016, $P5017
    set $P5015, $P5016["NQPMu"]
    unless_null $P5015, vivi_61152
    null $P5018
    set $P5015, $P5018
  vivi_61152:
    set $P5014, $P5015
  vivi_62153:
    $P5019 = $P5009."new_type"($P5014 :named("instance_of"))
    set __lowered_lex_124, $P5019
    get_how $P5020, __lowered_lex_124
    set __lowered_lex_125, $P5020
    iter $P5021, __lowered_lex_123
    set lowered_for_it__14, $P5021
    new $P5025, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5025, while63_handlers157
    push_eh $P5025
  while63_test154:
    set $P5024, lowered_for_it__14
    unless lowered_for_it__14 goto while63_done158 
  while63_redo156:
    shift $P5022, lowered_for_it__14
    set __lowered_lex_116, $P5022
.annotate 'line', 357
.annotate 'line', 358
    $P5023 = __lowered_lex_125."add_role"(__lowered_lex_124, __lowered_lex_116)
    set $P5024, $P5023
    goto while63_test154 
  while63_handlers157:
    .get_results ($P5025)
    pop_upto_eh $P5025
    getattribute $P5026, $P5025, 'type'
    eq $P5026, .CONTROL_LOOP_NEXT, while63_test154
    eq $P5026, .CONTROL_LOOP_REDO, while63_redo156
  while63_done158:
    pop_eh 
.annotate 'line', 360
    $P5027 = __lowered_lex_125."compose"(__lowered_lex_124)
    set __lowered_lex_124, $P5027
  if57_end146:
.annotate 'line', 364
    $P5028 = __lowered_lex_125."collisions"(__lowered_lex_124)
    set __lowered_lex_126, $P5028
    iter $P5029, __lowered_lex_126
    set lowered_for_it__15, $P5029
    new $P5037, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5037, while64_handlers162
    push_eh $P5037
  while64_test159:
    set $P5036, lowered_for_it__15
    unless lowered_for_it__15 goto while64_done163 
  while64_redo161:
.annotate 'line', 365
    shift $P5030, lowered_for_it__15
    set __lowered_lex_117, $P5030
.annotate 'line', 366
    $P5031 = "&has_method"(__lowered_lex_122, __lowered_lex_117, 1)
    set $P5035, $P5031
    if $P5031 goto unless65_end165 
    set $S5005, __lowered_lex_117
    concat $S5004, "Method '", $S5005
    concat $S5003, $S5004, "' collides and a resolution must be provided by the class '"
.annotate 'line', 368
    get_how $P5032, __lowered_lex_122
    $P5033 = $P5032."name"(__lowered_lex_122)
    set $S5006, $P5033
    concat $S5002, $S5003, $S5006
    concat $S5001, $S5002, "'"
    box $P5034, $S5001
    die $P5034
    set $P5035, $P5034
  unless65_end165:
    set $P5036, $P5035
    goto while64_test159 
  while64_handlers162:
    .get_results ($P5037)
    pop_upto_eh $P5037
    getattribute $P5038, $P5037, 'type'
    eq $P5038, .CONTROL_LOOP_NEXT, while64_test159
    eq $P5038, .CONTROL_LOOP_REDO, while64_redo161
  while64_done163:
    pop_eh 
.annotate 'line', 373
    $P5039 = __lowered_lex_125."methods"(__lowered_lex_124)
    set __lowered_lex_127, $P5039
    iter $P5040, __lowered_lex_127
    set lowered_for_it__16, $P5040
    new $P5050, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5050, while66_handlers169
    push_eh $P5050
  while66_test166:
    set $P5049, lowered_for_it__16
    unless lowered_for_it__16 goto while66_done170 
  while66_redo168:
    shift $P5041, lowered_for_it__16
    set __lowered_lex_119, $P5041
.annotate 'line', 374
    can $I5005, __lowered_lex_119, "name"
    unless $I5005 goto if67_else171 
.annotate 'line', 375
    $P5042 = __lowered_lex_119."name"()
    set $P5043, $P5042
    goto if67_end172
  if67_else171:
    set $S5007, __lowered_lex_119
    box $P5044, $S5007
    set $P5043, $P5044
  if67_end172:
    set __lowered_lex_118, $P5043
.annotate 'line', 376
    $P5045 = "&has_method"(__lowered_lex_122, __lowered_lex_118, 0)
    set $P5048, $P5045
    if $P5045 goto unless68_end174 
.annotate 'line', 377
    get_how $P5046, __lowered_lex_122
    $P5047 = $P5046."add_method"(__lowered_lex_122, __lowered_lex_118, __lowered_lex_119)
    set $P5048, $P5047
  unless68_end174:
    set $P5049, $P5048
    goto while66_test166 
  while66_handlers169:
    .get_results ($P5050)
    pop_upto_eh $P5050
    getattribute $P5051, $P5050, 'type'
    eq $P5051, .CONTROL_LOOP_NEXT, while66_test166
    eq $P5051, .CONTROL_LOOP_REDO, while66_redo168
  while66_done170:
    pop_eh 
.annotate 'line', 382
    $P5052 = __lowered_lex_125."attributes"(__lowered_lex_124)
    set __lowered_lex_128, $P5052
    iter $P5053, __lowered_lex_128
    set lowered_for_it__17, $P5053
    new $P5064, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5064, while69_handlers178
    push_eh $P5064
  while69_test175:
    set $P5063, lowered_for_it__17
    unless lowered_for_it__17 goto while69_done179 
  while69_redo177:
    shift $P5054, lowered_for_it__17
    set __lowered_lex_120, $P5054
.annotate 'line', 383
.annotate 'line', 384
    $P5055 = __lowered_lex_120."name"()
    $P5056 = "&has_attribute"(__lowered_lex_122, $P5055)
    unless $P5056 goto if70_end181 
.annotate 'line', 385
    $P5057 = __lowered_lex_120."name"()
    set $S5012, $P5057
    concat $S5011, "Attribute '", $S5012
    concat $S5010, $S5011, "' already exists in the class '"
.annotate 'line', 386
    get_how $P5058, __lowered_lex_122
    $P5059 = $P5058."name"(__lowered_lex_122)
    set $S5013, $P5059
    concat $S5009, $S5010, $S5013
    concat $S5008, $S5009, "', but a role also wishes to compose it"
    box $P5060, $S5008
    die $P5060
  if70_end181:
.annotate 'line', 388
    get_how $P5061, __lowered_lex_122
    $P5062 = $P5061."add_attribute"(__lowered_lex_122, __lowered_lex_120)
    set $P5063, $P5062
    goto while69_test175 
  while69_handlers178:
    .get_results ($P5064)
    pop_upto_eh $P5064
    getattribute $P5065, $P5064, 'type'
    eq $P5065, .CONTROL_LOOP_NEXT, while69_test175
    eq $P5065, .CONTROL_LOOP_REDO, while69_redo177
  while69_done179:
    pop_eh 
    set __lowered_lex_129[0], __lowered_lex_124
    .return (__lowered_lex_124) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_147_1431289877.42775") :anon :lex :outer("cuid_140_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 400
    .const 'Sub' $P5010 = 'cuid_32_1431289877.42775' 
    capture_lex $P5010 
    .const 'Sub' $P5010 = 'cuid_33_1431289877.42775' 
    capture_lex $P5010 
    .const 'Sub' $P5010 = 'cuid_34_1431289877.42775' 
    capture_lex $P5010 
    .const 'Sub' $P5010 = 'cuid_35_1431289877.42775' 
    capture_lex $P5010 
    .const 'Sub' $P5010 = 'cuid_36_1431289877.42775' 
    capture_lex $P5010 
    .const 'Sub' $P5010 = 'cuid_37_1431289877.42775' 
    capture_lex $P5010 
    .const 'Sub' $P5010 = 'cuid_38_1431289877.42775' 
    capture_lex $P5010 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .lex "$archetypes", $P103 
.annotate 'line', 404
    nqp_get_sc_object $P5001, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 1
    $P5002 = $P5001."new"(1 :named("nominal"), 1 :named("composable"), 1 :named("parametric"))
    set $P103, $P5002
    .const 'Sub' $P5003 = 'cuid_32_1431289877.42775' 
    capture_lex $P5003
    .const 'Sub' $P5004 = 'cuid_33_1431289877.42775' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_34_1431289877.42775' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_35_1431289877.42775' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_36_1431289877.42775' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_37_1431289877.42775' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_38_1431289877.42775' 
    capture_lex $P5009
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "archetypes" :subid("cuid_32_1431289877.42775") :anon :lex :outer("cuid_147_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 405
    .param pmc __lowered_lex_130 
    find_lex $P5001, "$archetypes"
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "new" :subid("cuid_33_1431289877.42775") :anon :lex :outer("cuid_147_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 409
    .param pmc __lowered_lex_131 
    .param pmc __lowered_lex_132 :named("curried_role") 
    .param pmc __lowered_lex_133 :named("pos_args") 
    .local pmc __lowered_lex_134 
    nqp_decontainerize $P5002, __lowered_lex_131
    repr_instance_of $P5001, $P5002
    set __lowered_lex_134, $P5001
.annotate 'line', 411
    __lowered_lex_134."BUILD"(__lowered_lex_132 :named("curried_role"), __lowered_lex_133 :named("pos_args"))
    .return (__lowered_lex_134) 
.end
.HLL "nqp"
.namespace []
.sub "BUILD" :subid("cuid_34_1431289877.42775") :anon :lex :outer("cuid_147_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 415
    .param pmc __lowered_lex_135 
    .param pmc __lowered_lex_136 :named("curried_role") 
    .param pmc __lowered_lex_137 :named("pos_args") 
    nqp_decontainerize $P5001, __lowered_lex_135
    nqp_get_sc_object $P5002, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 5
    repr_bind_attr_obj $P5001, $P5002, "$!curried_role", 0, __lowered_lex_136
    nqp_decontainerize $P5003, __lowered_lex_135
    nqp_get_sc_object $P5004, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 5
    repr_bind_attr_obj $P5003, $P5004, "@!pos_args", 1, __lowered_lex_137
    .return (__lowered_lex_137) 
.end
.HLL "nqp"
.namespace []
.sub "new_type" :subid("cuid_35_1431289877.42775") :anon :lex :outer("cuid_147_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 420
    .param pmc __lowered_lex_138 
    .param pmc __lowered_lex_139 
    .param pmc __lowered_lex_140 :slurpy 
    .local pmc __lowered_lex_141 
.annotate 'line', 421
    nqp_decontainerize $P5001, __lowered_lex_138
    $P5002 = $P5001."new"(__lowered_lex_139 :named("curried_role"), __lowered_lex_140 :named("pos_args"))
    set __lowered_lex_141, $P5002
    repr_type_object_for $P5003, __lowered_lex_141, "Uninstantiable"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "specialize" :subid("cuid_36_1431289877.42775") :anon :lex :outer("cuid_147_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 425
    .param pmc __lowered_lex_142 
    .param pmc __lowered_lex_143 
    .param pmc __lowered_lex_144 
.annotate 'line', 426
    nqp_decontainerize $P5002, __lowered_lex_142
    nqp_get_sc_object $P5003, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 5
    repr_get_attr_obj $P5004, $P5002, $P5003, "$!curried_role", 0
    get_how $P5001, $P5004
    nqp_decontainerize $P5005, __lowered_lex_142
    nqp_get_sc_object $P5006, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 5
    repr_get_attr_obj $P5007, $P5005, $P5006, "$!curried_role", 0
    nqp_decontainerize $P5008, __lowered_lex_142
    nqp_get_sc_object $P5009, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 5
    repr_get_attr_obj $P5010, $P5008, $P5009, "@!pos_args", 1
    $P5011 = $P5001."specialize"($P5007, __lowered_lex_144, $P5010 :flat)
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "name" :subid("cuid_37_1431289877.42775") :anon :lex :outer("cuid_147_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 429
    .param pmc __lowered_lex_145 
    .param pmc __lowered_lex_146 
.annotate 'line', 430
    nqp_decontainerize $P5002, __lowered_lex_145
    nqp_get_sc_object $P5003, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 5
    repr_get_attr_obj $P5004, $P5002, $P5003, "$!curried_role", 0
    get_how $P5001, $P5004
    nqp_decontainerize $P5005, __lowered_lex_145
    nqp_get_sc_object $P5006, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 5
    repr_get_attr_obj $P5007, $P5005, $P5006, "$!curried_role", 0
    $P5008 = $P5001."name"($P5007)
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "curried_role" :subid("cuid_38_1431289877.42775") :anon :lex :outer("cuid_147_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 433
    .param pmc __lowered_lex_147 
    .param pmc __lowered_lex_148 
    nqp_decontainerize $P5001, __lowered_lex_147
    nqp_get_sc_object $P5002, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 5
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!curried_role", 0
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_148_1431289877.42775") :anon :lex :outer("cuid_140_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 443
    .const 'Sub' $P5022 = 'cuid_39_1431289877.42775' 
    capture_lex $P5022 
    .const 'Sub' $P5022 = 'cuid_40_1431289877.42775' 
    capture_lex $P5022 
    .const 'Sub' $P5022 = 'cuid_41_1431289877.42775' 
    capture_lex $P5022 
    .const 'Sub' $P5022 = 'cuid_42_1431289877.42775' 
    capture_lex $P5022 
    .const 'Sub' $P5022 = 'cuid_43_1431289877.42775' 
    capture_lex $P5022 
    .const 'Sub' $P5022 = 'cuid_44_1431289877.42775' 
    capture_lex $P5022 
    .const 'Sub' $P5022 = 'cuid_45_1431289877.42775' 
    capture_lex $P5022 
    .const 'Sub' $P5022 = 'cuid_46_1431289877.42775' 
    capture_lex $P5022 
    .const 'Sub' $P5022 = 'cuid_47_1431289877.42775' 
    capture_lex $P5022 
    .const 'Sub' $P5022 = 'cuid_48_1431289877.42775' 
    capture_lex $P5022 
    .const 'Sub' $P5022 = 'cuid_49_1431289877.42775' 
    capture_lex $P5022 
    .const 'Sub' $P5022 = 'cuid_50_1431289877.42775' 
    capture_lex $P5022 
    .const 'Sub' $P5022 = 'cuid_51_1431289877.42775' 
    capture_lex $P5022 
    .const 'Sub' $P5022 = 'cuid_52_1431289877.42775' 
    capture_lex $P5022 
    .const 'Sub' $P5022 = 'cuid_53_1431289877.42775' 
    capture_lex $P5022 
    .const 'Sub' $P5022 = 'cuid_54_1431289877.42775' 
    capture_lex $P5022 
    .const 'Sub' $P5022 = 'cuid_55_1431289877.42775' 
    capture_lex $P5022 
    .const 'Sub' $P5022 = 'cuid_56_1431289877.42775' 
    capture_lex $P5022 
    .const 'Sub' $P5022 = 'cuid_57_1431289877.42775' 
    capture_lex $P5022 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .lex "$archetypes", $P103 
.annotate 'line', 467
    nqp_get_sc_object $P5001, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 1
    $P5002 = $P5001."new"(1 :named("nominal"), 1 :named("composable"), 1 :named("parametric"))
    set $P103, $P5002
    .const 'Sub' $P5003 = 'cuid_39_1431289877.42775' 
    capture_lex $P5003
    .const 'Sub' $P5004 = 'cuid_40_1431289877.42775' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_41_1431289877.42775' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_42_1431289877.42775' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_43_1431289877.42775' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_44_1431289877.42775' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_45_1431289877.42775' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_46_1431289877.42775' 
    capture_lex $P5010
    .const 'Sub' $P5011 = 'cuid_47_1431289877.42775' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_48_1431289877.42775' 
    capture_lex $P5012
    .const 'Sub' $P5013 = 'cuid_49_1431289877.42775' 
    capture_lex $P5013
    .const 'Sub' $P5014 = 'cuid_50_1431289877.42775' 
    capture_lex $P5014
    .const 'Sub' $P5015 = 'cuid_51_1431289877.42775' 
    capture_lex $P5015
    .const 'Sub' $P5016 = 'cuid_52_1431289877.42775' 
    capture_lex $P5016
    .const 'Sub' $P5017 = 'cuid_53_1431289877.42775' 
    capture_lex $P5017
    .const 'Sub' $P5018 = 'cuid_54_1431289877.42775' 
    capture_lex $P5018
    .const 'Sub' $P5019 = 'cuid_55_1431289877.42775' 
    capture_lex $P5019
    .const 'Sub' $P5020 = 'cuid_56_1431289877.42775' 
    capture_lex $P5020
    .const 'Sub' $P5021 = 'cuid_57_1431289877.42775' 
    capture_lex $P5021
    .return ($P5021) 
.end
.HLL "nqp"
.namespace []
.sub "archetypes" :subid("cuid_39_1431289877.42775") :anon :lex :outer("cuid_148_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 468
    .param pmc __lowered_lex_149 
    find_lex $P5001, "$archetypes"
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "new" :subid("cuid_40_1431289877.42775") :anon :lex :outer("cuid_148_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 477
    .param pmc __lowered_lex_150 
    .param pmc __lowered_lex_151 :named("name") 
    .local pmc __lowered_lex_152 
    nqp_decontainerize $P5002, __lowered_lex_150
    repr_instance_of $P5001, $P5002
    set __lowered_lex_152, $P5001
.annotate 'line', 479
    __lowered_lex_152."BUILD"(__lowered_lex_151 :named("name"))
    .return (__lowered_lex_152) 
.end
.HLL "nqp"
.namespace []
.sub "BUILD" :subid("cuid_41_1431289877.42775") :anon :lex :outer("cuid_148_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 483
    .param pmc __lowered_lex_153 
    .param pmc __lowered_lex_154 :named("name") 
    nqp_decontainerize $P5001, __lowered_lex_153
    nqp_get_sc_object $P5002, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 6
    repr_bind_attr_obj $P5001, $P5002, "$!name", 0, __lowered_lex_154
    nqp_decontainerize $P5003, __lowered_lex_153
    nqp_get_sc_object $P5004, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 6
    new $P5005, 'QRPA'
    repr_bind_attr_obj $P5003, $P5004, "@!attributes", 1, $P5005
    nqp_decontainerize $P5006, __lowered_lex_153
    nqp_get_sc_object $P5007, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 6
    new $P5008, 'Hash'
    repr_bind_attr_obj $P5006, $P5007, "%!methods", 2, $P5008
    nqp_decontainerize $P5009, __lowered_lex_153
    nqp_get_sc_object $P5010, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 6
    new $P5011, 'QRPA'
    repr_bind_attr_obj $P5009, $P5010, "@!multi_methods_to_incorporate", 3, $P5011
    nqp_decontainerize $P5012, __lowered_lex_153
    nqp_get_sc_object $P5013, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 6
    new $P5014, 'QRPA'
    repr_bind_attr_obj $P5012, $P5013, "@!roles", 4, $P5014
    nqp_decontainerize $P5015, __lowered_lex_153
    nqp_get_sc_object $P5016, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 6
    box $P5017, 0
    repr_bind_attr_obj $P5015, $P5016, "$!composed", 5, $P5017
    .return ($P5017) 
.end
.HLL "nqp"
.namespace []
.sub "new_type" :subid("cuid_42_1431289877.42775") :anon :lex :outer("cuid_148_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 494
    .param pmc __lowered_lex_155 
    .param pmc __lowered_lex_156 :named("name") :optional 
    .param int haz_param_12 :opt_flag 
    .local pmc __lowered_lex_157 
    if haz_param_12, default182
    box $P5005, "<anon>"
    set __lowered_lex_156, $P5005
  default182:
.annotate 'line', 495
    nqp_decontainerize $P5001, __lowered_lex_155
    $P5002 = $P5001."new"(__lowered_lex_156 :named("name"))
    set __lowered_lex_157, $P5002
    repr_type_object_for $P5003, __lowered_lex_157, "Uninstantiable"
    new $P5004, 'Hash'
    set_who $P5003, $P5004
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "set_body_block" :subid("cuid_43_1431289877.42775") :anon :lex :outer("cuid_148_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 499
    .param pmc __lowered_lex_158 
    .param pmc __lowered_lex_159 
    .param pmc __lowered_lex_160 
    nqp_decontainerize $P5001, __lowered_lex_158
    nqp_get_sc_object $P5002, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 6
    repr_bind_attr_obj $P5001, $P5002, "$!body_block", 6, __lowered_lex_160
    .return (__lowered_lex_160) 
.end
.HLL "nqp"
.namespace []
.sub "add_method" :subid("cuid_44_1431289877.42775") :anon :lex :outer("cuid_148_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 503
    .param pmc __lowered_lex_161 
    .param pmc __lowered_lex_162 
    .param pmc __lowered_lex_163 
    .param pmc __lowered_lex_164 
    nqp_decontainerize $P5001, __lowered_lex_161
    nqp_get_sc_object $P5002, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 6
    repr_get_attr_obj $P5003, $P5001, $P5002, "%!methods", 2
    set $S5001, __lowered_lex_163
    exists $I5001, $P5003[$S5001]
    unless $I5001 goto if71_end184 
.annotate 'line', 504
    set $S5003, __lowered_lex_163
    concat $S5002, "This role already has a method named ", $S5003
    box $P5004, $S5002
    die $P5004
  if71_end184:
    nqp_decontainerize $P5005, __lowered_lex_161
    nqp_get_sc_object $P5006, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 6
    repr_get_attr_obj $P5007, $P5005, $P5006, "%!methods", 2
    set $S5004, __lowered_lex_163
    set $P5007[$S5004], __lowered_lex_164
    .return (__lowered_lex_164) 
.end
.HLL "nqp"
.namespace []
.sub "add_multi_method" :subid("cuid_45_1431289877.42775") :anon :lex :outer("cuid_148_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 510
    .param pmc __lowered_lex_165 
    .param pmc __lowered_lex_166 
    .param pmc __lowered_lex_167 
    .param pmc __lowered_lex_168 
    .local pmc __lowered_lex_169 
    new $P5001, 'Hash'
    set __lowered_lex_169, $P5001
    set __lowered_lex_169["name"], __lowered_lex_167
    set __lowered_lex_169["code"], __lowered_lex_168
    nqp_decontainerize $P5002, __lowered_lex_165
    nqp_get_sc_object $P5003, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 6
    repr_get_attr_obj $P5004, $P5002, $P5003, "@!multi_methods_to_incorporate", 3
    push $P5004, __lowered_lex_169
    .return (__lowered_lex_168) 
.end
.HLL "nqp"
.namespace []
.sub "add_attribute" :subid("cuid_46_1431289877.42775") :anon :lex :outer("cuid_148_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 518
    .param pmc __lowered_lex_171 
    .param pmc __lowered_lex_172 
    .param pmc __lowered_lex_173 
    .local pmc __lowered_lex_174 
    .local pmc lowered_for_it__18 
    .local pmc __lowered_lex_170 
.annotate 'line', 519
    $P5001 = __lowered_lex_173."name"()
    set __lowered_lex_174, $P5001
    nqp_decontainerize $P5003, __lowered_lex_171
    nqp_get_sc_object $P5004, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 6
    repr_get_attr_obj $P5005, $P5003, $P5004, "@!attributes", 1
    iter $P5002, $P5005
    set lowered_for_it__18, $P5002
    new $P5012, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5012, while72_handlers188
    push_eh $P5012
  while72_test185:
    set $P5011, lowered_for_it__18
    unless lowered_for_it__18 goto while72_done189 
  while72_redo187:
    shift $P5006, lowered_for_it__18
    set __lowered_lex_170, $P5006
.annotate 'line', 520
.annotate 'line', 521
    $P5007 = __lowered_lex_170."name"()
    set $S5001, $P5007
    set $S5002, __lowered_lex_174
    iseq $I5001, $S5001, $S5002
    box $P5010, $I5001
    set $P5009, $P5010
    unless $I5001 goto if73_end191 
    set $S5004, __lowered_lex_174
    concat $S5003, "This role already has an attribute named ", $S5004
    box $P5008, $S5003
    die $P5008
    set $P5009, $P5008
  if73_end191:
    set $P5011, $P5009
    goto while72_test185 
  while72_handlers188:
    .get_results ($P5012)
    pop_upto_eh $P5012
    getattribute $P5013, $P5012, 'type'
    eq $P5013, .CONTROL_LOOP_NEXT, while72_test185
    eq $P5013, .CONTROL_LOOP_REDO, while72_redo187
  while72_done189:
    pop_eh 
    nqp_decontainerize $P5014, __lowered_lex_171
    nqp_get_sc_object $P5015, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 6
    repr_get_attr_obj $P5016, $P5014, $P5015, "@!attributes", 1
    push $P5016, __lowered_lex_173
    .return ($P5016) 
.end
.HLL "nqp"
.namespace []
.sub "add_parent" :subid("cuid_47_1431289877.42775") :anon :lex :outer("cuid_148_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 528
    .param pmc __lowered_lex_175 
    .param pmc __lowered_lex_176 
    .param pmc __lowered_lex_177 
    box $P5001, "A role cannot inherit from a class"
    die $P5001
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "add_role" :subid("cuid_48_1431289877.42775") :anon :lex :outer("cuid_148_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 532
    .param pmc __lowered_lex_178 
    .param pmc __lowered_lex_179 
    .param pmc __lowered_lex_180 
    nqp_decontainerize $P5001, __lowered_lex_178
    nqp_get_sc_object $P5002, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 6
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!roles", 4
    push $P5003, __lowered_lex_180
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "compose" :subid("cuid_49_1431289877.42775") :anon :lex :outer("cuid_148_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 537
    .param pmc __lowered_lex_181 
    .param pmc __lowered_lex_182 
    nqp_decontainerize $P5001, __lowered_lex_181
    nqp_get_sc_object $P5002, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 6
    box $P5003, 1
    repr_bind_attr_obj $P5001, $P5002, "$!composed", 5, $P5003
    new $P5004, 'QRPA'
    get_what $P5005, __lowered_lex_182
    push $P5004, $P5005
    publish_type_check_cache __lowered_lex_182, $P5004
    new $P5006, 'Hash'
    publish_method_cache __lowered_lex_182, $P5006
    set_method_cache_authoritativeness __lowered_lex_182, 1
    .return (__lowered_lex_182) 
.end
.HLL "nqp"
.namespace []
.sub "parametric" :subid("cuid_50_1431289877.42775") :anon :lex :outer("cuid_148_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 551
    .param pmc __lowered_lex_183 
    .param pmc __lowered_lex_184 
    .return (1) 
.end
.HLL "nqp"
.namespace []
.sub "curry" :subid("cuid_51_1431289877.42775") :anon :lex :outer("cuid_148_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 556
    .param pmc __lowered_lex_185 
    .param pmc __lowered_lex_186 
    .param pmc __lowered_lex_187 :slurpy 
.annotate 'line', 557
    nqp_get_sc_object $P5001, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 5
    $P5002 = $P5001."new_type"(__lowered_lex_186, __lowered_lex_187 :flat)
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "specialize" :subid("cuid_52_1431289877.42775") :anon :lex :outer("cuid_148_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 562
    .param pmc __lowered_lex_195 
    .param pmc __lowered_lex_196 
    .param pmc __lowered_lex_197 
    .param pmc __lowered_lex_198 :slurpy 
    .local pmc __lowered_lex_199 
    .local pmc __lowered_lex_200 
    .local pmc lowered_for_it__19 
    .local pmc __lowered_lex_188 
    .local pmc lowered_for_it__20 
    .local pmc __lowered_lex_191 
    .local pmc __lowered_lex_189 
    .local pmc __lowered_lex_190 
    .local pmc lowered_for_it__21 
    .local pmc __lowered_lex_192 
    .local pmc fb_tmp_8 
    .local pmc fb_tmp_9 
    .local pmc lowered_for_it__22 
    .local pmc __lowered_lex_194 
    .local pmc __lowered_lex_193 
    root_new $P101, ['parrot';'Continuation']
    set_label $P101, lexotic_192
    .lex "RETURN", $P101
.annotate 'line', 565
    nqp_decontainerize $P5001, __lowered_lex_195
    nqp_get_sc_object $P5002, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 6
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!body_block", 6
    $P5004 = $P5003(__lowered_lex_197, __lowered_lex_198 :flat)
    set __lowered_lex_199, $P5004
.annotate 'line', 568
    nqp_get_sc_object $P5005, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 3
    nqp_decontainerize $P5006, __lowered_lex_195
    nqp_get_sc_object $P5007, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 6
    repr_get_attr_obj $P5008, $P5006, $P5007, "$!name", 0
    $P5009 = $P5005."new_type"($P5008 :named("name"), __lowered_lex_196 :named("instance_of"))
    set __lowered_lex_200, $P5009
    nqp_decontainerize $P5011, __lowered_lex_195
    nqp_get_sc_object $P5012, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 6
    repr_get_attr_obj $P5013, $P5011, $P5012, "@!attributes", 1
    iter $P5010, $P5013
    set lowered_for_it__19, $P5010
    new $P5018, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5018, while74_handlers197
    push_eh $P5018
  while74_test194:
    set $P5017, lowered_for_it__19
    unless lowered_for_it__19 goto while74_done198 
  while74_redo196:
    shift $P5014, lowered_for_it__19
    set __lowered_lex_188, $P5014
.annotate 'line', 572
.annotate 'line', 573
    get_how $P5015, __lowered_lex_200
    $P5016 = $P5015."add_attribute"(__lowered_lex_200, __lowered_lex_188)
    set $P5017, $P5016
    goto while74_test194 
  while74_handlers197:
    .get_results ($P5018)
    pop_upto_eh $P5018
    getattribute $P5019, $P5018, 'type'
    eq $P5019, .CONTROL_LOOP_NEXT, while74_test194
    eq $P5019, .CONTROL_LOOP_REDO, while74_redo196
  while74_done198:
    pop_eh 
    nqp_decontainerize $P5021, __lowered_lex_195
    nqp_get_sc_object $P5022, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 6
    repr_get_attr_obj $P5023, $P5021, $P5022, "%!methods", 2
    iter $P5020, $P5023
    set lowered_for_it__20, $P5020
    new $P5037, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5037, while75_handlers202
    push_eh $P5037
  while75_test199:
    set $P5036, lowered_for_it__20
    unless lowered_for_it__20 goto while75_done203 
  while75_redo201:
    shift $P5024, lowered_for_it__20
    set __lowered_lex_191, $P5024
.annotate 'line', 577
    $P5025 = __lowered_lex_191."key"()
    set __lowered_lex_189, $P5025
    $P5026 = __lowered_lex_191."value"()
    can $I5001, $P5026, "instantiate_generic"
    unless $I5001 goto if76_else204 
.annotate 'line', 580
    $P5027 = __lowered_lex_191."value"()
    $P5028 = $P5027."instantiate_generic"(__lowered_lex_199)
    set $P5031, $P5028
    goto if76_end205
  if76_else204:
.annotate 'line', 581
    $P5029 = __lowered_lex_191."value"()
    $P5030 = $P5029."clone"()
    set $P5031, $P5030
  if76_end205:
    set __lowered_lex_190, $P5031
    set $S5002, __lowered_lex_189
    substr $S5001, $S5002, 0, 12
    iseq $I5002, $S5001, "!!LATENAME!!"
    unless $I5002 goto if77_end207 
.annotate 'line', 582
    set $S5004, __lowered_lex_189
    substr $S5003, $S5004, 12
    set $P5032, __lowered_lex_199[$S5003]
    set __lowered_lex_189, $P5032
.annotate 'line', 584
    $P5033 = __lowered_lex_190."!set_name"(__lowered_lex_189)
  if77_end207:
.annotate 'line', 586
    get_how $P5034, __lowered_lex_200
    $P5035 = $P5034."add_method"(__lowered_lex_200, __lowered_lex_189, __lowered_lex_190)
    set $P5036, $P5035
    goto while75_test199 
  while75_handlers202:
    .get_results ($P5037)
    pop_upto_eh $P5037
    getattribute $P5038, $P5037, 'type'
    eq $P5038, .CONTROL_LOOP_NEXT, while75_test199
    eq $P5038, .CONTROL_LOOP_REDO, while75_redo201
  while75_done203:
    pop_eh 
    nqp_decontainerize $P5040, __lowered_lex_195
    nqp_get_sc_object $P5041, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 6
    repr_get_attr_obj $P5042, $P5040, $P5041, "@!multi_methods_to_incorporate", 3
    iter $P5039, $P5042
    set lowered_for_it__21, $P5039
    new $P5056, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5056, while78_handlers211
    push_eh $P5056
  while78_test208:
    set $P5055, lowered_for_it__21
    unless lowered_for_it__21 goto while78_done212 
  while78_redo210:
    shift $P5043, lowered_for_it__21
    set __lowered_lex_192, $P5043
.annotate 'line', 588
.annotate 'line', 589
    get_how $P5044, __lowered_lex_200
    set fb_tmp_8, __lowered_lex_192
    repr_defined $I5003, fb_tmp_8
    unless $I5003 goto if79_else213 
    set $P5045, fb_tmp_8["name"]
    set $P5047, $P5045
    goto if79_end214
  if79_else213:
    null $P5046
    set $P5047, $P5046
  if79_end214:
    unless_null $P5047, vivi_80215
    null $P5048
    set $P5047, $P5048
  vivi_80215:
    set fb_tmp_9, __lowered_lex_192
    repr_defined $I5004, fb_tmp_9
    unless $I5004 goto if81_else216 
    set $P5049, fb_tmp_9["code"]
    set $P5051, $P5049
    goto if81_end217
  if81_else216:
    null $P5050
    set $P5051, $P5050
  if81_end217:
    unless_null $P5051, vivi_82218
    null $P5052
    set $P5051, $P5052
  vivi_82218:
    $P5053 = $P5051."clone"()
    $P5054 = $P5044."add_multi_method"(__lowered_lex_200, $P5047, $P5053)
    set $P5055, $P5054
    goto while78_test208 
  while78_handlers211:
    .get_results ($P5056)
    pop_upto_eh $P5056
    getattribute $P5057, $P5056, 'type'
    eq $P5057, .CONTROL_LOOP_NEXT, while78_test208
    eq $P5057, .CONTROL_LOOP_REDO, while78_redo210
  while78_done212:
    pop_eh 
    nqp_decontainerize $P5059, __lowered_lex_195
    nqp_get_sc_object $P5060, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 6
    repr_get_attr_obj $P5061, $P5059, $P5060, "@!roles", 4
    iter $P5058, $P5061
    set lowered_for_it__22, $P5058
    new $P5068, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5068, while83_handlers222
    push_eh $P5068
  while83_test219:
    set $P5067, lowered_for_it__22
    unless lowered_for_it__22 goto while83_done223 
  while83_redo221:
    shift $P5062, lowered_for_it__22
    set __lowered_lex_194, $P5062
.annotate 'line', 593
.annotate 'line', 594
    get_how $P5063, __lowered_lex_194
    $P5064 = $P5063."specialize"(__lowered_lex_194, __lowered_lex_197)
    set __lowered_lex_193, $P5064
.annotate 'line', 595
    get_how $P5065, __lowered_lex_200
    $P5066 = $P5065."add_role"(__lowered_lex_200, __lowered_lex_193)
    set $P5067, $P5066
    goto while83_test219 
  while83_handlers222:
    .get_results ($P5068)
    pop_upto_eh $P5068
    getattribute $P5069, $P5068, 'type'
    eq $P5069, .CONTROL_LOOP_NEXT, while83_test219
    eq $P5069, .CONTROL_LOOP_REDO, while83_redo221
  while83_done223:
    pop_eh 
.annotate 'line', 599
    get_how $P5070, __lowered_lex_200
    $P5070."compose"(__lowered_lex_200)
    $P5071 = "RETURN"(__lowered_lex_200)
    goto lexotic_193
  lexotic_192:
    .get_results ($P5071)
  lexotic_193:
    .return ($P5071) 
.end
.HLL "nqp"
.namespace []
.sub "methods" :subid("cuid_53_1431289877.42775") :anon :lex :outer("cuid_148_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 607
    .param pmc __lowered_lex_202 
    .param pmc __lowered_lex_203 
    .param pmc __lowered_lex_204 :named("local") :optional 
    .param int haz_param_13 :opt_flag 
    .local pmc __lowered_lex_205 
    .local pmc lowered_for_it__23 
    .local pmc __lowered_lex_201 
    if haz_param_13, default229
    null $P5011
    set __lowered_lex_204, $P5011
  default229:
    new $P5001, 'QRPA'
    set __lowered_lex_205, $P5001
    nqp_decontainerize $P5003, __lowered_lex_202
    nqp_get_sc_object $P5004, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 6
    repr_get_attr_obj $P5005, $P5003, $P5004, "%!methods", 2
    iter $P5002, $P5005
    set lowered_for_it__23, $P5002
    new $P5009, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5009, while84_handlers227
    push_eh $P5009
  while84_test224:
    set $P5008, lowered_for_it__23
    unless lowered_for_it__23 goto while84_done228 
  while84_redo226:
    shift $P5006, lowered_for_it__23
    set __lowered_lex_201, $P5006
.annotate 'line', 609
    $P5007 = __lowered_lex_201."value"()
    push __lowered_lex_205, $P5007
    set $P5008, __lowered_lex_205
    goto while84_test224 
  while84_handlers227:
    .get_results ($P5009)
    pop_upto_eh $P5009
    getattribute $P5010, $P5009, 'type'
    eq $P5010, .CONTROL_LOOP_NEXT, while84_test224
    eq $P5010, .CONTROL_LOOP_REDO, while84_redo226
  while84_done228:
    pop_eh 
    .return (__lowered_lex_205) 
.end
.HLL "nqp"
.namespace []
.sub "method_table" :subid("cuid_54_1431289877.42775") :anon :lex :outer("cuid_148_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 615
    .param pmc __lowered_lex_206 
    .param pmc __lowered_lex_207 
    nqp_decontainerize $P5001, __lowered_lex_206
    nqp_get_sc_object $P5002, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 6
    repr_get_attr_obj $P5003, $P5001, $P5002, "%!methods", 2
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "name" :subid("cuid_55_1431289877.42775") :anon :lex :outer("cuid_148_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 619
    .param pmc __lowered_lex_208 
    .param pmc __lowered_lex_209 
    nqp_decontainerize $P5001, __lowered_lex_208
    nqp_get_sc_object $P5002, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 6
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!name", 0
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "attributes" :subid("cuid_56_1431289877.42775") :anon :lex :outer("cuid_148_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 623
    .param pmc __lowered_lex_211 
    .param pmc __lowered_lex_212 
    .param pmc __lowered_lex_213 :named("local") :optional 
    .param int haz_param_14 :opt_flag 
    .local pmc __lowered_lex_214 
    .local pmc lowered_for_it__24 
    .local pmc __lowered_lex_210 
    if haz_param_14, default235
    null $P5010
    set __lowered_lex_213, $P5010
  default235:
    new $P5001, 'QRPA'
    set __lowered_lex_214, $P5001
    nqp_decontainerize $P5003, __lowered_lex_211
    nqp_get_sc_object $P5004, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 6
    repr_get_attr_obj $P5005, $P5003, $P5004, "@!attributes", 1
    iter $P5002, $P5005
    set lowered_for_it__24, $P5002
    new $P5008, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5008, while85_handlers233
    push_eh $P5008
  while85_test230:
    set $P5007, lowered_for_it__24
    unless lowered_for_it__24 goto while85_done234 
  while85_redo232:
    shift $P5006, lowered_for_it__24
    set __lowered_lex_210, $P5006
.annotate 'line', 625
    push __lowered_lex_214, __lowered_lex_210
    set $P5007, __lowered_lex_214
    goto while85_test230 
  while85_handlers233:
    .get_results ($P5008)
    pop_upto_eh $P5008
    getattribute $P5009, $P5008, 'type'
    eq $P5009, .CONTROL_LOOP_NEXT, while85_test230
    eq $P5009, .CONTROL_LOOP_REDO, while85_redo232
  while85_done234:
    pop_eh 
    .return (__lowered_lex_214) 
.end
.HLL "nqp"
.namespace []
.sub "roles" :subid("cuid_57_1431289877.42775") :anon :lex :outer("cuid_148_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 631
    .param pmc __lowered_lex_215 
    .param pmc __lowered_lex_216 
    nqp_decontainerize $P5001, __lowered_lex_215
    nqp_get_sc_object $P5002, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 6
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!roles", 4
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_149_1431289877.42775") :anon :lex :outer("cuid_140_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 641
    .const 'Sub' $P5056 = 'cuid_150_1431289877.42775' 
    capture_lex $P5056 
    .const 'Sub' $P5056 = 'cuid_151_1431289877.42775' 
    capture_lex $P5056 
    .const 'Sub' $P5056 = 'cuid_152_1431289877.42775' 
    capture_lex $P5056 
    .const 'Sub' $P5056 = 'cuid_58_1431289877.42775' 
    capture_lex $P5056 
    .const 'Sub' $P5056 = 'cuid_59_1431289877.42775' 
    capture_lex $P5056 
    .const 'Sub' $P5056 = 'cuid_60_1431289877.42775' 
    capture_lex $P5056 
    .const 'Sub' $P5056 = 'cuid_61_1431289877.42775' 
    capture_lex $P5056 
    .const 'Sub' $P5056 = 'cuid_62_1431289877.42775' 
    capture_lex $P5056 
    .const 'Sub' $P5056 = 'cuid_63_1431289877.42775' 
    capture_lex $P5056 
    .const 'Sub' $P5056 = 'cuid_64_1431289877.42775' 
    capture_lex $P5056 
    .const 'Sub' $P5056 = 'cuid_65_1431289877.42775' 
    capture_lex $P5056 
    .const 'Sub' $P5056 = 'cuid_66_1431289877.42775' 
    capture_lex $P5056 
    .const 'Sub' $P5056 = 'cuid_67_1431289877.42775' 
    capture_lex $P5056 
    .const 'Sub' $P5056 = 'cuid_68_1431289877.42775' 
    capture_lex $P5056 
    .const 'Sub' $P5056 = 'cuid_69_1431289877.42775' 
    capture_lex $P5056 
    .const 'Sub' $P5056 = 'cuid_70_1431289877.42775' 
    capture_lex $P5056 
    .const 'Sub' $P5056 = 'cuid_71_1431289877.42775' 
    capture_lex $P5056 
    .const 'Sub' $P5056 = 'cuid_72_1431289877.42775' 
    capture_lex $P5056 
    .const 'Sub' $P5056 = 'cuid_73_1431289877.42775' 
    capture_lex $P5056 
    .const 'Sub' $P5056 = 'cuid_74_1431289877.42775' 
    capture_lex $P5056 
    .const 'Sub' $P5056 = 'cuid_75_1431289877.42775' 
    capture_lex $P5056 
    .const 'Sub' $P5056 = 'cuid_76_1431289877.42775' 
    capture_lex $P5056 
    .const 'Sub' $P5056 = 'cuid_77_1431289877.42775' 
    capture_lex $P5056 
    .const 'Sub' $P5056 = 'cuid_78_1431289877.42775' 
    capture_lex $P5056 
    .const 'Sub' $P5056 = 'cuid_79_1431289877.42775' 
    capture_lex $P5056 
    .const 'Sub' $P5056 = 'cuid_80_1431289877.42775' 
    capture_lex $P5056 
    .const 'Sub' $P5056 = 'cuid_81_1431289877.42775' 
    capture_lex $P5056 
    .const 'Sub' $P5056 = 'cuid_82_1431289877.42775' 
    capture_lex $P5056 
    .const 'Sub' $P5056 = 'cuid_83_1431289877.42775' 
    capture_lex $P5056 
    .const 'Sub' $P5056 = 'cuid_84_1431289877.42775' 
    capture_lex $P5056 
    .const 'Sub' $P5056 = 'cuid_85_1431289877.42775' 
    capture_lex $P5056 
    .const 'Sub' $P5056 = 'cuid_86_1431289877.42775' 
    capture_lex $P5056 
    .const 'Sub' $P5056 = 'cuid_87_1431289877.42775' 
    capture_lex $P5056 
    .const 'Sub' $P5056 = 'cuid_88_1431289877.42775' 
    capture_lex $P5056 
    .const 'Sub' $P5056 = 'cuid_89_1431289877.42775' 
    capture_lex $P5056 
    .const 'Sub' $P5056 = 'cuid_90_1431289877.42775' 
    capture_lex $P5056 
    .const 'Sub' $P5056 = 'cuid_91_1431289877.42775' 
    capture_lex $P5056 
    .const 'Sub' $P5056 = 'cuid_92_1431289877.42775' 
    capture_lex $P5056 
    .const 'Sub' $P5056 = 'cuid_93_1431289877.42775' 
    capture_lex $P5056 
    .const 'Sub' $P5056 = 'cuid_94_1431289877.42775' 
    capture_lex $P5056 
    .const 'Sub' $P5056 = 'cuid_95_1431289877.42775' 
    capture_lex $P5056 
    .const 'Sub' $P5056 = 'cuid_96_1431289877.42775' 
    capture_lex $P5056 
    .const 'Sub' $P5056 = 'cuid_97_1431289877.42775' 
    capture_lex $P5056 
    .const 'Sub' $P5056 = 'cuid_98_1431289877.42775' 
    capture_lex $P5056 
    .const 'Sub' $P5056 = 'cuid_99_1431289877.42775' 
    capture_lex $P5056 
    .const 'Sub' $P5056 = 'cuid_100_1431289877.42775' 
    capture_lex $P5056 
    .const 'Sub' $P5056 = 'cuid_101_1431289877.42775' 
    capture_lex $P5056 
    .const 'Sub' $P5056 = 'cuid_102_1431289877.42775' 
    capture_lex $P5056 
    .const 'Sub' $P5056 = 'cuid_103_1431289877.42775' 
    capture_lex $P5056 
    .const 'Sub' $P5056 = 'cuid_104_1431289877.42775' 
    capture_lex $P5056 
    .const 'Sub' $P5056 = 'cuid_105_1431289877.42775' 
    capture_lex $P5056 
    .const 'Sub' $P5056 = 'cuid_106_1431289877.42775' 
    capture_lex $P5056 
    .const 'Sub' $P5056 = 'cuid_107_1431289877.42775' 
    capture_lex $P5056 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .lex "$archetypes", $P103 
    .lex "&compute_c3_mro", $P104 
    .lex "&c3_merge", $P105 
    .lex "&reverse", $P106 
    .const 'Sub' $P5001 = 'cuid_150_1431289877.42775' 
    capture_lex $P5001
    set $P104, $P5001
    .const 'Sub' $P5002 = 'cuid_151_1431289877.42775' 
    capture_lex $P5002
    set $P105, $P5002
    .const 'Sub' $P5003 = 'cuid_152_1431289877.42775' 
    capture_lex $P5003
    set $P106, $P5003
.annotate 'line', 688
    nqp_get_sc_object $P5004, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 1
    $P5005 = $P5004."new"(1 :named("nominal"), 1 :named("inheritable"))
    set $P103, $P5005
    .const 'Sub' $P5006 = 'cuid_58_1431289877.42775' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_59_1431289877.42775' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_60_1431289877.42775' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_61_1431289877.42775' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_62_1431289877.42775' 
    capture_lex $P5010
    .const 'Sub' $P5011 = 'cuid_63_1431289877.42775' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_64_1431289877.42775' 
    capture_lex $P5012
    .const 'Sub' $P5013 = 'cuid_65_1431289877.42775' 
    capture_lex $P5013
    .const 'Sub' $P5014 = 'cuid_66_1431289877.42775' 
    capture_lex $P5014
    .const 'Sub' $P5015 = 'cuid_67_1431289877.42775' 
    capture_lex $P5015
    .const 'Sub' $P5016 = 'cuid_68_1431289877.42775' 
    capture_lex $P5016
    .const 'Sub' $P5017 = 'cuid_69_1431289877.42775' 
    capture_lex $P5017
    .const 'Sub' $P5018 = 'cuid_70_1431289877.42775' 
    capture_lex $P5018
    .const 'Sub' $P5019 = 'cuid_71_1431289877.42775' 
    capture_lex $P5019
    .const 'Sub' $P5020 = 'cuid_72_1431289877.42775' 
    capture_lex $P5020
    .const 'Sub' $P5021 = 'cuid_73_1431289877.42775' 
    capture_lex $P5021
    .const 'Sub' $P5022 = 'cuid_74_1431289877.42775' 
    capture_lex $P5022
    .const 'Sub' $P5023 = 'cuid_75_1431289877.42775' 
    capture_lex $P5023
    .const 'Sub' $P5024 = 'cuid_76_1431289877.42775' 
    capture_lex $P5024
    .const 'Sub' $P5025 = 'cuid_77_1431289877.42775' 
    capture_lex $P5025
    .const 'Sub' $P5026 = 'cuid_78_1431289877.42775' 
    capture_lex $P5026
    .const 'Sub' $P5027 = 'cuid_79_1431289877.42775' 
    capture_lex $P5027
    .const 'Sub' $P5028 = 'cuid_80_1431289877.42775' 
    capture_lex $P5028
    .const 'Sub' $P5029 = 'cuid_81_1431289877.42775' 
    capture_lex $P5029
    .const 'Sub' $P5030 = 'cuid_82_1431289877.42775' 
    capture_lex $P5030
    .const 'Sub' $P5031 = 'cuid_83_1431289877.42775' 
    capture_lex $P5031
    .const 'Sub' $P5032 = 'cuid_84_1431289877.42775' 
    capture_lex $P5032
    .const 'Sub' $P5033 = 'cuid_85_1431289877.42775' 
    capture_lex $P5033
    .const 'Sub' $P5034 = 'cuid_86_1431289877.42775' 
    capture_lex $P5034
    .const 'Sub' $P5035 = 'cuid_87_1431289877.42775' 
    capture_lex $P5035
    .const 'Sub' $P5036 = 'cuid_88_1431289877.42775' 
    capture_lex $P5036
    .const 'Sub' $P5037 = 'cuid_89_1431289877.42775' 
    capture_lex $P5037
    .const 'Sub' $P5038 = 'cuid_90_1431289877.42775' 
    capture_lex $P5038
    .const 'Sub' $P5039 = 'cuid_91_1431289877.42775' 
    capture_lex $P5039
    .const 'Sub' $P5040 = 'cuid_92_1431289877.42775' 
    capture_lex $P5040
    .const 'Sub' $P5041 = 'cuid_93_1431289877.42775' 
    capture_lex $P5041
    .const 'Sub' $P5042 = 'cuid_94_1431289877.42775' 
    capture_lex $P5042
    .const 'Sub' $P5043 = 'cuid_95_1431289877.42775' 
    capture_lex $P5043
    .const 'Sub' $P5044 = 'cuid_96_1431289877.42775' 
    capture_lex $P5044
    .const 'Sub' $P5045 = 'cuid_97_1431289877.42775' 
    capture_lex $P5045
    .const 'Sub' $P5046 = 'cuid_98_1431289877.42775' 
    capture_lex $P5046
    .const 'Sub' $P5047 = 'cuid_99_1431289877.42775' 
    capture_lex $P5047
    .const 'Sub' $P5048 = 'cuid_100_1431289877.42775' 
    capture_lex $P5048
    .const 'Sub' $P5049 = 'cuid_101_1431289877.42775' 
    capture_lex $P5049
    .const 'Sub' $P5050 = 'cuid_102_1431289877.42775' 
    capture_lex $P5050
    .const 'Sub' $P5051 = 'cuid_103_1431289877.42775' 
    capture_lex $P5051
    .const 'Sub' $P5052 = 'cuid_104_1431289877.42775' 
    capture_lex $P5052
    .const 'Sub' $P5053 = 'cuid_105_1431289877.42775' 
    capture_lex $P5053
    .const 'Sub' $P5054 = 'cuid_106_1431289877.42775' 
    capture_lex $P5054
    .const 'Sub' $P5055 = 'cuid_107_1431289877.42775' 
    capture_lex $P5055
    .return ($P5055) 
.end
.HLL "nqp"
.namespace []
.sub "compute_c3_mro" :subid("cuid_150_1431289877.42775") :anon :lex :outer("cuid_149_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 993
    .param pmc __lowered_lex_219 
    .local pmc __lowered_lex_220 
    .local pmc __lowered_lex_221 
    .local pmc fb_tmp_10 
    .local pmc __lowered_lex_218 
    .local pmc lowered_for_it__25 
    .local pmc __lowered_lex_217 
    new $P5001, 'QRPA'
    set __lowered_lex_221, $P5001
    root_new $P101, ['parrot';'Continuation']
    set_label $P101, lexotic_236
    .lex "RETURN", $P101
.annotate 'line', 994
    get_how $P5002, __lowered_lex_219
    $P5003 = $P5002."parents"(__lowered_lex_219, 1 :named("local"))
    set __lowered_lex_220, $P5003
    elements $I5001, __lowered_lex_220
    unless $I5001 goto if86_end239 
.annotate 'line', 998
    elements $I5003, __lowered_lex_220
    iseq $I5002, $I5003, 1
    unless $I5002 goto if87_else240 
.annotate 'line', 999
.annotate 'line', 1000
    set fb_tmp_10, __lowered_lex_220
    repr_defined $I5004, fb_tmp_10
    unless $I5004 goto if88_else242 
    set $P5004, fb_tmp_10[0]
    set $P5006, $P5004
    goto if88_end243
  if88_else242:
    null $P5005
    set $P5006, $P5005
  if88_end243:
    unless_null $P5006, vivi_89244
    null $P5007
    set $P5006, $P5007
  vivi_89244:
    $P5008 = "&compute_c3_mro"($P5006)
    set __lowered_lex_221, $P5008
    set $P5017, __lowered_lex_221
    goto if87_end241
  if87_else240:
    new $P5009, 'QRPA'
    set __lowered_lex_218, $P5009
.annotate 'line', 1001
    iter $P5010, __lowered_lex_220
    set lowered_for_it__25, $P5010
    new $P5014, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5014, while90_handlers248
    push_eh $P5014
  while90_test245:
    set $P5013, lowered_for_it__25
    unless lowered_for_it__25 goto while90_done249 
  while90_redo247:
    shift $P5011, lowered_for_it__25
    set __lowered_lex_217, $P5011
.annotate 'line', 1005
.annotate 'line', 1006
    $P5012 = "&compute_c3_mro"(__lowered_lex_217)
    push __lowered_lex_218, $P5012
    set $P5013, __lowered_lex_218
    goto while90_test245 
  while90_handlers248:
    .get_results ($P5014)
    pop_upto_eh $P5014
    getattribute $P5015, $P5014, 'type'
    eq $P5015, .CONTROL_LOOP_NEXT, while90_test245
    eq $P5015, .CONTROL_LOOP_REDO, while90_redo247
  while90_done249:
    pop_eh 
    push __lowered_lex_218, __lowered_lex_220
.annotate 'line', 1009
    $P5016 = "&c3_merge"(__lowered_lex_218)
    set __lowered_lex_221, $P5016
    set $P5017, __lowered_lex_221
  if87_end241:
  if86_end239:
    unshift __lowered_lex_221, __lowered_lex_219
    $P5018 = "RETURN"(__lowered_lex_221)
    goto lexotic_237
  lexotic_236:
    .get_results ($P5018)
  lexotic_237:
    .return ($P5018) 
.end
.HLL "nqp"
.namespace []
.sub "c3_merge" :subid("cuid_151_1431289877.42775") :anon :lex :outer("cuid_149_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 1019
    .param pmc __lowered_lex_230 
    .local pmc __lowered_lex_231 
    .local pmc __lowered_lex_232 
    .local pmc __lowered_lex_233 
    .local pmc __lowered_lex_234 
    .local pmc __lowered_lex_235 
    .local pmc lowered_for_it__27 
    .local pmc __lowered_lex_227 
    .local pmc __lowered_lex_226 
    .local pmc __lowered_lex_224 
    .local pmc __lowered_lex_225 
    .local pmc fb_tmp_11 
    .local pmc lowered_for_it__26 
    .local pmc __lowered_lex_223 
    .local pmc __lowered_lex_222 
    .local pmc fb_tmp_12 
    .local pmc __lowered_lex_229 
    .local pmc lowered_for_it__28 
    .local pmc fb_tmp_13 
    .local pmc __lowered_lex_228 
    new $P5001, 'QRPA'
    set __lowered_lex_231, $P5001
    null $P5002
    set __lowered_lex_232, $P5002
    root_new $P101, ['parrot';'Continuation']
    set_label $P101, lexotic_250
    .lex "RETURN", $P101
    box $P5003, 0
    set __lowered_lex_233, $P5003
    box $P5004, 0
    set __lowered_lex_234, $P5004
    iter $P5005, __lowered_lex_230
    set lowered_for_it__27, $P5005
    new $P5034, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5034, while91_handlers255
    push_eh $P5034
  while91_test252:
    set $P5033, lowered_for_it__27
    unless lowered_for_it__27 goto while91_done256 
  while91_redo254:
    shift $P5006, lowered_for_it__27
    set __lowered_lex_227, $P5006
.annotate 'line', 1026
    set __lowered_lex_226, __lowered_lex_227
    set $P5032, __lowered_lex_226
    unless __lowered_lex_226 goto if92_end258 
.annotate 'line', 1028
    box $P5007, 0
    set __lowered_lex_224, $P5007
    set fb_tmp_11, __lowered_lex_226
    repr_defined $I5001, fb_tmp_11
    unless $I5001 goto if93_else259 
    set $P5008, fb_tmp_11[0]
    set $P5010, $P5008
    goto if93_end260
  if93_else259:
    null $P5009
    set $P5010, $P5009
  if93_end260:
    unless_null $P5010, vivi_94261
    null $P5011
    set $P5010, $P5011
  vivi_94261:
    set __lowered_lex_225, $P5010
    set $N5002, __lowered_lex_234
    set $N5003, 1
    add $N5001, $N5002, $N5003
    box $P5012, $N5001
    set __lowered_lex_234, $P5012
    iter $P5013, __lowered_lex_230
    set lowered_for_it__26, $P5013
    new $P5027, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5027, while95_handlers265
    push_eh $P5027
  while95_test262:
    set $P5026, lowered_for_it__26
    unless lowered_for_it__26 goto while95_done266 
  while95_redo264:
    shift $P5014, lowered_for_it__26
    set __lowered_lex_223, $P5014
.annotate 'line', 1032
    get_id $I5003, __lowered_lex_223
    get_id $I5004, __lowered_lex_226
    iseq $I5002, $I5003, $I5004
    box $P5025, $I5002
    set $P5024, $P5025
    if $I5002 goto unless96_end268 
.annotate 'line', 1034
    box $P5015, 1
    set __lowered_lex_222, $P5015
  while97_test269:
    set $N5004, __lowered_lex_222
    elements $I5006, __lowered_lex_223
    set $N5005, $I5006
    isle $I5005, $N5004, $N5005
    box $P5023, $I5005
    set $P5022, $P5023
    unless $I5005 goto while97_done273 
  while97_redo271:
.annotate 'line', 1037
    set fb_tmp_12, __lowered_lex_223
    repr_defined $I5009, fb_tmp_12
    unless $I5009 goto if99_else276 
    set $I5010, __lowered_lex_222
    set $P5016, fb_tmp_12[$I5010]
    set $P5018, $P5016
    goto if99_end277
  if99_else276:
    null $P5017
    set $P5018, $P5017
  if99_end277:
    unless_null $P5018, vivi_100278
    null $P5019
    set $P5018, $P5019
  vivi_100278:
    get_id $I5008, $P5018
    get_id $I5011, __lowered_lex_225
    iseq $I5007, $I5008, $I5011
    unless $I5007 goto if98_end275 
.annotate 'line', 1038
    box $P5020, 1
    set __lowered_lex_224, $P5020
  if98_end275:
    set $N5007, __lowered_lex_222
    set $N5008, 1
    add $N5006, $N5007, $N5008
    box $P5021, $N5006
    set __lowered_lex_222, $P5021
    set $P5022, __lowered_lex_222
    goto while97_test269 
  while97_done273:
    set $P5024, $P5022
  unless96_end268:
    set $P5026, $P5024
    goto while95_test262 
  while95_handlers265:
    .get_results ($P5027)
    pop_upto_eh $P5027
    getattribute $P5028, $P5027, 'type'
    eq $P5028, .CONTROL_LOOP_NEXT, while95_test262
    eq $P5028, .CONTROL_LOOP_REDO, while95_redo264
  while95_done266:
    pop_eh 
    set $P5030, __lowered_lex_224
    if __lowered_lex_224 goto unless101_end280 
.annotate 'line', 1047
    set __lowered_lex_232, __lowered_lex_225
    box $P5029, 1
    set __lowered_lex_233, $P5029
    die 0, .CONTROL_LOOP_LAST
    box $P5031, 0
    set $P5030, $P5031
  unless101_end280:
    set $P5032, $P5030
  if92_end258:
    set $P5033, $P5032
    goto while91_test252 
  while91_handlers255:
    .get_results ($P5034)
    pop_upto_eh $P5034
    getattribute $P5035, $P5034, 'type'
    eq $P5035, .CONTROL_LOOP_NEXT, while91_test252
    eq $P5035, .CONTROL_LOOP_REDO, while91_redo254
  while91_done256:
    pop_eh 
    set $N5009, __lowered_lex_234
    set $N5010, 0
    iseq $I5012, $N5009, $N5010
    unless $I5012 goto if102_end282 
.annotate 'line', 1056
    $P5036 = "RETURN"(__lowered_lex_231)
  if102_end282:
    if __lowered_lex_233 goto unless103_end284 
.annotate 'line', 1061
    box $P5037, "Could not build C3 linearization: ambiguous hierarchy"
    die $P5037
  unless103_end284:
    box $P5038, 0
    set __lowered_lex_235, $P5038
  while104_test285:
    set $N5011, __lowered_lex_235
    elements $I5014, __lowered_lex_230
    set $N5012, $I5014
    islt $I5013, $N5011, $N5012
    box $P5053, $I5013
    set $P5052, $P5053
    unless $I5013 goto while104_done289 
  while104_redo287:
    new $P5039, 'QRPA'
    set __lowered_lex_229, $P5039
.annotate 'line', 1067
    set fb_tmp_13, __lowered_lex_230
    repr_defined $I5015, fb_tmp_13
    unless $I5015 goto if105_else290 
    set $I5016, __lowered_lex_235
    set $P5041, fb_tmp_13[$I5016]
    set $P5043, $P5041
    goto if105_end291
  if105_else290:
    null $P5042
    set $P5043, $P5042
  if105_end291:
    unless_null $P5043, vivi_106292
    null $P5044
    set $P5043, $P5044
  vivi_106292:
    iter $P5040, $P5043
    set lowered_for_it__28, $P5040
    new $P5049, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5049, while107_handlers296
    push_eh $P5049
  while107_test293:
    set $P5048, lowered_for_it__28
    unless lowered_for_it__28 goto while107_done297 
  while107_redo295:
    shift $P5045, lowered_for_it__28
    set __lowered_lex_228, $P5045
.annotate 'line', 1069
    get_id $I5018, __lowered_lex_228
    get_id $I5019, __lowered_lex_232
    iseq $I5017, $I5018, $I5019
    box $P5047, $I5017
    set $P5046, $P5047
    if $I5017 goto unless108_end299 
.annotate 'line', 1070
    push __lowered_lex_229, __lowered_lex_228
    set $P5046, __lowered_lex_229
  unless108_end299:
    set $P5048, $P5046
    goto while107_test293 
  while107_handlers296:
    .get_results ($P5049)
    pop_upto_eh $P5049
    getattribute $P5050, $P5049, 'type'
    eq $P5050, .CONTROL_LOOP_NEXT, while107_test293
    eq $P5050, .CONTROL_LOOP_REDO, while107_redo295
  while107_done297:
    pop_eh 
    set $I5020, __lowered_lex_235
    set __lowered_lex_230[$I5020], __lowered_lex_229
    set $N5014, __lowered_lex_235
    set $N5015, 1
    add $N5013, $N5014, $N5015
    box $P5051, $N5013
    set __lowered_lex_235, $P5051
    set $P5052, __lowered_lex_235
    goto while104_test285 
  while104_done289:
.annotate 'line', 1080
    $P5054 = "&c3_merge"(__lowered_lex_230)
    set __lowered_lex_231, $P5054
    unshift __lowered_lex_231, __lowered_lex_232
    $P5055 = "RETURN"(__lowered_lex_231)
    goto lexotic_251
  lexotic_250:
    .get_results ($P5055)
  lexotic_251:
    .return ($P5055) 
.end
.HLL "nqp"
.namespace []
.sub "reverse" :subid("cuid_152_1431289877.42775") :anon :lex :outer("cuid_149_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 1092
    .param pmc __lowered_lex_237 
    .local pmc __lowered_lex_238 
    .local pmc lowered_for_it__29 
    .local pmc __lowered_lex_236 
    new $P5001, 'QRPA'
    set __lowered_lex_238, $P5001
    iter $P5002, __lowered_lex_237
    set lowered_for_it__29, $P5002
    new $P5005, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5005, while109_handlers303
    push_eh $P5005
  while109_test300:
    set $P5004, lowered_for_it__29
    unless lowered_for_it__29 goto while109_done304 
  while109_redo302:
    shift $P5003, lowered_for_it__29
    set __lowered_lex_236, $P5003
.annotate 'line', 1094
    unshift __lowered_lex_238, __lowered_lex_236
    set $P5004, __lowered_lex_238
    goto while109_test300 
  while109_handlers303:
    .get_results ($P5005)
    pop_upto_eh $P5005
    getattribute $P5006, $P5005, 'type'
    eq $P5006, .CONTROL_LOOP_NEXT, while109_test300
    eq $P5006, .CONTROL_LOOP_REDO, while109_redo302
  while109_done304:
    pop_eh 
    .return (__lowered_lex_238) 
.end
.HLL "nqp"
.namespace []
.sub "archetypes" :subid("cuid_58_1431289877.42775") :anon :lex :outer("cuid_149_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 689
    .param pmc __lowered_lex_239 
    find_lex $P5001, "$archetypes"
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "new" :subid("cuid_59_1431289877.42775") :anon :lex :outer("cuid_149_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 698
    .param pmc __lowered_lex_240 
    .param pmc __lowered_lex_241 :named("name") :optional 
    .param int haz_param_15 :opt_flag 
    .local pmc __lowered_lex_242 
    if haz_param_15, default305
    box $P5003, "<anon>"
    set __lowered_lex_241, $P5003
  default305:
    nqp_decontainerize $P5002, __lowered_lex_240
    repr_instance_of $P5001, $P5002
    set __lowered_lex_242, $P5001
.annotate 'line', 700
    __lowered_lex_242."BUILD"(__lowered_lex_241 :named("name"))
    .return (__lowered_lex_242) 
.end
.HLL "nqp"
.namespace []
.sub "BUILD" :subid("cuid_60_1431289877.42775") :anon :lex :outer("cuid_149_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 704
    .param pmc __lowered_lex_243 
    .param pmc __lowered_lex_244 :named("name") :optional 
    .param int haz_param_16 :opt_flag 
    if haz_param_16, default306
    box $P5057, "<anon>"
    set __lowered_lex_244, $P5057
  default306:
    nqp_decontainerize $P5001, __lowered_lex_243
    nqp_get_sc_object $P5002, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    repr_bind_attr_obj $P5001, $P5002, "$!name", 0, __lowered_lex_244
    nqp_decontainerize $P5003, __lowered_lex_243
    nqp_get_sc_object $P5004, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    new $P5005, 'QRPA'
    repr_bind_attr_obj $P5003, $P5004, "@!attributes", 1, $P5005
    nqp_decontainerize $P5006, __lowered_lex_243
    nqp_get_sc_object $P5007, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    new $P5008, 'Hash'
    repr_bind_attr_obj $P5006, $P5007, "%!methods", 2, $P5008
    nqp_decontainerize $P5009, __lowered_lex_243
    nqp_get_sc_object $P5010, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    new $P5011, 'QRPA'
    repr_bind_attr_obj $P5009, $P5010, "@!method_order", 3, $P5011
    nqp_decontainerize $P5012, __lowered_lex_243
    nqp_get_sc_object $P5013, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    new $P5014, 'QRPA'
    repr_bind_attr_obj $P5012, $P5013, "@!multi_methods_to_incorporate", 4, $P5014
    nqp_decontainerize $P5015, __lowered_lex_243
    nqp_get_sc_object $P5016, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    new $P5017, 'QRPA'
    repr_bind_attr_obj $P5015, $P5016, "@!parents", 5, $P5017
    nqp_decontainerize $P5018, __lowered_lex_243
    nqp_get_sc_object $P5019, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    new $P5020, 'QRPA'
    repr_bind_attr_obj $P5018, $P5019, "@!roles", 6, $P5020
    nqp_decontainerize $P5021, __lowered_lex_243
    nqp_get_sc_object $P5022, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    new $P5023, 'QRPA'
    repr_bind_attr_obj $P5021, $P5022, "@!vtable", 8, $P5023
    nqp_decontainerize $P5024, __lowered_lex_243
    nqp_get_sc_object $P5025, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    new $P5026, 'Hash'
    repr_bind_attr_obj $P5024, $P5025, "%!method-vtable-slots", 9, $P5026
    nqp_decontainerize $P5027, __lowered_lex_243
    nqp_get_sc_object $P5028, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    new $P5029, 'QRPA'
    repr_bind_attr_obj $P5027, $P5028, "@!mro", 11, $P5029
    nqp_decontainerize $P5030, __lowered_lex_243
    nqp_get_sc_object $P5031, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    new $P5032, 'QRPA'
    repr_bind_attr_obj $P5030, $P5031, "@!done", 12, $P5032
    nqp_decontainerize $P5033, __lowered_lex_243
    nqp_get_sc_object $P5034, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    new $P5035, 'Hash'
    repr_bind_attr_obj $P5033, $P5034, "%!parrot_vtable_mapping", 15, $P5035
    nqp_decontainerize $P5036, __lowered_lex_243
    nqp_get_sc_object $P5037, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    new $P5038, 'Hash'
    repr_bind_attr_obj $P5036, $P5037, "%!parrot_vtable_handler_mapping", 16, $P5038
    nqp_decontainerize $P5039, __lowered_lex_243
    nqp_get_sc_object $P5040, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    new $P5041, 'QRPA'
    repr_bind_attr_obj $P5039, $P5040, "@!BUILDALLPLAN", 20, $P5041
    nqp_decontainerize $P5042, __lowered_lex_243
    nqp_get_sc_object $P5043, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    new $P5044, 'QRPA'
    repr_bind_attr_obj $P5042, $P5043, "@!BUILDPLAN", 21, $P5044
    nqp_decontainerize $P5045, __lowered_lex_243
    nqp_get_sc_object $P5046, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    box $P5047, 0
    repr_bind_attr_obj $P5045, $P5046, "$!is_mixin", 14, $P5047
    nqp_decontainerize $P5048, __lowered_lex_243
    nqp_get_sc_object $P5049, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    box $P5050, 0
    repr_bind_attr_obj $P5048, $P5049, "$!trace", 17, $P5050
    nqp_decontainerize $P5051, __lowered_lex_243
    nqp_get_sc_object $P5052, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    box $P5053, 0
    repr_bind_attr_obj $P5051, $P5052, "$!trace_depth", 18, $P5053
    nqp_decontainerize $P5054, __lowered_lex_243
    nqp_get_sc_object $P5055, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    box $P5056, 0
    repr_bind_attr_obj $P5054, $P5055, "$!composed", 10, $P5056
    .return ($P5056) 
.end
.HLL "nqp"
.namespace []
.sub "new_type" :subid("cuid_61_1431289877.42775") :anon :lex :outer("cuid_149_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 728
    .param pmc __lowered_lex_245 
    .param pmc __lowered_lex_246 :named("name") :optional 
    .param int haz_param_17 :opt_flag 
    .param pmc __lowered_lex_247 :named("repr") :optional 
    .param int haz_param_18 :opt_flag 
    .local pmc __lowered_lex_248 
    if haz_param_17, default307
    box $P5005, "<anon>"
    set __lowered_lex_246, $P5005
  default307:
    if haz_param_18, default308
    box $P5006, "P6opaque"
    set __lowered_lex_247, $P5006
  default308:
.annotate 'line', 729
    nqp_decontainerize $P5001, __lowered_lex_245
    $P5002 = $P5001."new"(__lowered_lex_246 :named("name"))
    set __lowered_lex_248, $P5002
    set $S5001, __lowered_lex_247
    repr_type_object_for $P5003, __lowered_lex_248, $S5001
    new $P5004, 'Hash'
    set_who $P5003, $P5004
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "add_method" :subid("cuid_62_1431289877.42775") :anon :lex :outer("cuid_149_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 733
    .param pmc __lowered_lex_249 
    .param pmc __lowered_lex_250 
    .param pmc __lowered_lex_251 
    .param pmc __lowered_lex_252 
    nqp_decontainerize $P5001, __lowered_lex_249
    nqp_get_sc_object $P5002, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    repr_get_attr_obj $P5003, $P5001, $P5002, "%!methods", 2
    set $S5001, __lowered_lex_251
    exists $I5001, $P5003[$S5001]
    unless $I5001 goto if110_end310 
.annotate 'line', 734
    set $S5003, __lowered_lex_251
    concat $S5002, "This class already has a method named ", $S5003
    box $P5004, $S5002
    die $P5004
  if110_end310:
    isnull $I5002, __lowered_lex_252
    set $I5005, $I5002
    if $I5002 goto unless112_end314 
    defined $I5004, __lowered_lex_252
    not $I5003, $I5004
    set $I5005, $I5003
  unless112_end314:
    unless $I5005 goto if111_end312 
.annotate 'line', 737
    set $S5008, __lowered_lex_251
    concat $S5007, "Cannot add a null method '", $S5008
    concat $S5006, $S5007, "' to class '"
    nqp_decontainerize $P5005, __lowered_lex_249
    nqp_get_sc_object $P5006, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    repr_get_attr_obj $P5007, $P5005, $P5006, "$!name", 0
    set $S5009, $P5007
    concat $S5005, $S5006, $S5009
    concat $S5004, $S5005, "'"
    box $P5008, $S5004
    die $P5008
  if111_end312:
    set_method_cache_authoritativeness __lowered_lex_250, 0
    nqp_decontainerize $P5009, __lowered_lex_249
    nqp_get_sc_object $P5010, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    repr_get_attr_obj $P5011, $P5009, $P5010, "%!caches", 13
    isnull $I5006, $P5011
    if $I5006 goto unless113_end316 
    nqp_decontainerize $P5012, __lowered_lex_249
    nqp_get_sc_object $P5013, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    repr_get_attr_obj $P5014, $P5012, $P5013, "%!caches", 13
    nqp_decontainerize $P5015, __lowered_lex_249
    get_id $I5007, $P5015
    set $S5010, $I5007
    new $P5016, 'Hash'
    set $P5014[$S5010], $P5016
  unless113_end316:
    nqp_decontainerize $P5017, __lowered_lex_249
    nqp_get_sc_object $P5018, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    repr_get_attr_obj $P5019, $P5017, $P5018, "@!method_order", 3
    nqp_decontainerize $P5020, __lowered_lex_249
    nqp_get_sc_object $P5021, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    repr_get_attr_obj $P5022, $P5020, $P5021, "%!methods", 2
    set $S5011, __lowered_lex_251
    set $P5022[$S5011], __lowered_lex_252
    push $P5019, __lowered_lex_252
    .return ($P5019) 
.end
.HLL "nqp"
.namespace []
.sub "add_multi_method" :subid("cuid_63_1431289877.42775") :anon :lex :outer("cuid_149_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 745
    .param pmc __lowered_lex_253 
    .param pmc __lowered_lex_254 
    .param pmc __lowered_lex_255 
    .param pmc __lowered_lex_256 
    .local pmc __lowered_lex_257 
    new $P5001, 'Hash'
    set __lowered_lex_257, $P5001
    set __lowered_lex_257["name"], __lowered_lex_255
    set __lowered_lex_257["code"], __lowered_lex_256
    nqp_decontainerize $P5002, __lowered_lex_253
    nqp_get_sc_object $P5003, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    repr_get_attr_obj $P5004, $P5002, $P5003, "@!multi_methods_to_incorporate", 4
    push $P5004, __lowered_lex_257
    set_method_cache_authoritativeness __lowered_lex_254, 0
    .return (__lowered_lex_256) 
.end
.HLL "nqp"
.namespace []
.sub "add_attribute" :subid("cuid_64_1431289877.42775") :anon :lex :outer("cuid_149_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 759
    .param pmc __lowered_lex_259 
    .param pmc __lowered_lex_260 
    .param pmc __lowered_lex_261 
    .local pmc __lowered_lex_262 
    .local pmc lowered_for_it__30 
    .local pmc __lowered_lex_258 
.annotate 'line', 760
    $P5001 = __lowered_lex_261."name"()
    set __lowered_lex_262, $P5001
    nqp_decontainerize $P5003, __lowered_lex_259
    nqp_get_sc_object $P5004, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    repr_get_attr_obj $P5005, $P5003, $P5004, "@!attributes", 1
    iter $P5002, $P5005
    set lowered_for_it__30, $P5002
    new $P5012, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5012, while114_handlers320
    push_eh $P5012
  while114_test317:
    set $P5011, lowered_for_it__30
    unless lowered_for_it__30 goto while114_done321 
  while114_redo319:
    shift $P5006, lowered_for_it__30
    set __lowered_lex_258, $P5006
.annotate 'line', 761
.annotate 'line', 762
    $P5007 = __lowered_lex_258."name"()
    set $S5001, $P5007
    set $S5002, __lowered_lex_262
    iseq $I5001, $S5001, $S5002
    box $P5010, $I5001
    set $P5009, $P5010
    unless $I5001 goto if115_end323 
    set $S5004, __lowered_lex_262
    concat $S5003, "This class already has an attribute named ", $S5004
    box $P5008, $S5003
    die $P5008
    set $P5009, $P5008
  if115_end323:
    set $P5011, $P5009
    goto while114_test317 
  while114_handlers320:
    .get_results ($P5012)
    pop_upto_eh $P5012
    getattribute $P5013, $P5012, 'type'
    eq $P5013, .CONTROL_LOOP_NEXT, while114_test317
    eq $P5013, .CONTROL_LOOP_REDO, while114_redo319
  while114_done321:
    pop_eh 
    nqp_decontainerize $P5014, __lowered_lex_259
    nqp_get_sc_object $P5015, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    repr_get_attr_obj $P5016, $P5014, $P5015, "@!attributes", 1
    push $P5016, __lowered_lex_261
    .return ($P5016) 
.end
.HLL "nqp"
.namespace []
.sub "add_parent" :subid("cuid_65_1431289877.42775") :anon :lex :outer("cuid_149_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 769
    .param pmc __lowered_lex_264 
    .param pmc __lowered_lex_265 
    .param pmc __lowered_lex_266 
    .local pmc lowered_for_it__31 
    .local pmc __lowered_lex_263 
    nqp_decontainerize $P5001, __lowered_lex_264
    nqp_get_sc_object $P5002, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!composed", 10
    unless $P5003 goto if116_end325 
.annotate 'line', 770
    box $P5004, "NQPClassHOW does not support adding parents after being composed."
    die $P5004
  if116_end325:
    get_id $I5002, __lowered_lex_265
    get_id $I5003, __lowered_lex_266
    iseq $I5001, $I5002, $I5003
    unless $I5001 goto if117_end327 
.annotate 'line', 773
    nqp_decontainerize $P5005, __lowered_lex_264
    nqp_get_sc_object $P5006, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    repr_get_attr_obj $P5007, $P5005, $P5006, "$!name", 0
    set $S5003, $P5007
    concat $S5002, "Class '", $S5003
    concat $S5001, $S5002, "' cannot inherit from itself."
    box $P5008, $S5001
    die $P5008
  if117_end327:
    nqp_decontainerize $P5010, __lowered_lex_264
    nqp_get_sc_object $P5011, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    repr_get_attr_obj $P5012, $P5010, $P5011, "@!parents", 5
    iter $P5009, $P5012
    set lowered_for_it__31, $P5009
    new $P5018, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5018, while118_handlers331
    push_eh $P5018
  while118_test328:
    set $P5017, lowered_for_it__31
    unless lowered_for_it__31 goto while118_done332 
  while118_redo330:
    shift $P5013, lowered_for_it__31
    set __lowered_lex_263, $P5013
.annotate 'line', 776
    get_id $I5005, __lowered_lex_263
    get_id $I5006, __lowered_lex_266
    iseq $I5004, $I5005, $I5006
    box $P5016, $I5004
    set $P5015, $P5016
    unless $I5004 goto if119_end334 
.annotate 'line', 777
    set $S5006, __lowered_lex_266
    concat $S5005, "Already have ", $S5006
    concat $S5004, $S5005, " as a parent class."
    box $P5014, $S5004
    die $P5014
    set $P5015, $P5014
  if119_end334:
    set $P5017, $P5015
    goto while118_test328 
  while118_handlers331:
    .get_results ($P5018)
    pop_upto_eh $P5018
    getattribute $P5019, $P5018, 'type'
    eq $P5019, .CONTROL_LOOP_NEXT, while118_test328
    eq $P5019, .CONTROL_LOOP_REDO, while118_redo330
  while118_done332:
    pop_eh 
    nqp_decontainerize $P5020, __lowered_lex_264
    nqp_get_sc_object $P5021, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    repr_get_attr_obj $P5022, $P5020, $P5021, "@!parents", 5
    push $P5022, __lowered_lex_266
    .return ($P5022) 
.end
.HLL "nqp"
.namespace []
.sub "set_default_parent" :subid("cuid_66_1431289877.42775") :anon :lex :outer("cuid_149_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 784
    .param pmc __lowered_lex_267 
    .param pmc __lowered_lex_268 
    .param pmc __lowered_lex_269 
    nqp_decontainerize $P5001, __lowered_lex_267
    nqp_get_sc_object $P5002, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    repr_bind_attr_obj $P5001, $P5002, "$!default_parent", 7, __lowered_lex_269
    .return (__lowered_lex_269) 
.end
.HLL "nqp"
.namespace []
.sub "reparent" :subid("cuid_67_1431289877.42775") :anon :lex :outer("cuid_149_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 790
    .param pmc __lowered_lex_272 
    .param pmc __lowered_lex_273 
    .param pmc __lowered_lex_274 
    .local pmc lowered_for_it__32 
    .local pmc fb_tmp_14 
    .local pmc fb_tmp_15 
    .local pmc __lowered_lex_270 
    .local pmc lowered_for_it__33 
    .local pmc __lowered_lex_271 
    nqp_decontainerize $P5001, __lowered_lex_272
    nqp_get_sc_object $P5002, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!parents", 5
    elements $I5002, $P5003
    isne $I5001, $I5002, 1
    unless $I5001 goto if120_end336 
.annotate 'line', 791
    box $P5004, "Can only re-parent a class with exactly one parent"
    die $P5004
  if120_end336:
.annotate 'line', 794
    nqp_decontainerize $P5007, __lowered_lex_272
    nqp_get_sc_object $P5008, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    repr_get_attr_obj $P5009, $P5007, $P5008, "@!parents", 5
    set fb_tmp_14, $P5009
    repr_defined $I5003, fb_tmp_14
    unless $I5003 goto if121_else337 
    set $P5010, fb_tmp_14[0]
    set $P5012, $P5010
    goto if121_end338
  if121_else337:
    null $P5011
    set $P5012, $P5011
  if121_end338:
    unless_null $P5012, vivi_122339
    null $P5013
    set $P5012, $P5013
  vivi_122339:
    get_how $P5006, $P5012
    nqp_decontainerize $P5014, __lowered_lex_272
    nqp_get_sc_object $P5015, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    repr_get_attr_obj $P5016, $P5014, $P5015, "@!parents", 5
    set fb_tmp_15, $P5016
    repr_defined $I5004, fb_tmp_15
    unless $I5004 goto if123_else340 
    set $P5017, fb_tmp_15[0]
    set $P5019, $P5017
    goto if123_end341
  if123_else340:
    null $P5018
    set $P5019, $P5018
  if123_end341:
    unless_null $P5019, vivi_124342
    null $P5020
    set $P5019, $P5020
  vivi_124342:
    $P5021 = $P5006."mro"($P5019)
    iter $P5005, $P5021
    set lowered_for_it__32, $P5005
    new $P5029, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5029, while125_handlers346
    push_eh $P5029
  while125_test343:
    set $P5028, lowered_for_it__32
    unless lowered_for_it__32 goto while125_done347 
  while125_redo345:
    shift $P5022, lowered_for_it__32
    set __lowered_lex_270, $P5022
.annotate 'line', 795
    get_how $P5023, __lowered_lex_270
    $P5024 = $P5023."attributes"(__lowered_lex_270, 1 :named("local"))
    elements $I5005, $P5024
    box $P5027, $I5005
    set $P5026, $P5027
    unless $I5005 goto if126_end349 
    box $P5025, "Can only re-parent a class whose parent has no attributes"
    die $P5025
    set $P5026, $P5025
  if126_end349:
    set $P5028, $P5026
    goto while125_test343 
  while125_handlers346:
    .get_results ($P5029)
    pop_upto_eh $P5029
    getattribute $P5030, $P5029, 'type'
    eq $P5030, .CONTROL_LOOP_NEXT, while125_test343
    eq $P5030, .CONTROL_LOOP_REDO, while125_redo345
  while125_done347:
    pop_eh 
.annotate 'line', 799
    get_how $P5032, __lowered_lex_274
    $P5033 = $P5032."mro"(__lowered_lex_274)
    iter $P5031, $P5033
    set lowered_for_it__33, $P5031
    new $P5041, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5041, while127_handlers353
    push_eh $P5041
  while127_test350:
    set $P5040, lowered_for_it__33
    unless lowered_for_it__33 goto while127_done354 
  while127_redo352:
    shift $P5034, lowered_for_it__33
    set __lowered_lex_271, $P5034
.annotate 'line', 800
    get_how $P5035, __lowered_lex_271
    $P5036 = $P5035."attributes"(__lowered_lex_271, 1 :named("local"))
    elements $I5006, $P5036
    box $P5039, $I5006
    set $P5038, $P5039
    unless $I5006 goto if128_end356 
    box $P5037, "Can only re-parent to a class with no attributes"
    die $P5037
    set $P5038, $P5037
  if128_end356:
    set $P5040, $P5038
    goto while127_test350 
  while127_handlers353:
    .get_results ($P5041)
    pop_upto_eh $P5041
    getattribute $P5042, $P5041, 'type'
    eq $P5042, .CONTROL_LOOP_NEXT, while127_test350
    eq $P5042, .CONTROL_LOOP_REDO, while127_redo352
  while127_done354:
    pop_eh 
    nqp_decontainerize $P5043, __lowered_lex_272
    nqp_get_sc_object $P5044, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    repr_get_attr_obj $P5045, $P5043, $P5044, "@!parents", 5
    set $P5045[0], __lowered_lex_274
    nqp_decontainerize $P5046, __lowered_lex_272
    nqp_get_sc_object $P5047, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
.annotate 'line', 805
    $P5048 = "&compute_c3_mro"(__lowered_lex_273)
    repr_bind_attr_obj $P5046, $P5047, "@!mro", 11, $P5048
.annotate 'line', 806
    nqp_decontainerize $P5049, __lowered_lex_272
    $P5049."publish_type_cache"(__lowered_lex_273)
.annotate 'line', 807
    nqp_decontainerize $P5050, __lowered_lex_272
    $P5050."publish_method_cache"(__lowered_lex_273)
.annotate 'line', 808
    nqp_decontainerize $P5051, __lowered_lex_272
    $P5051."publish_boolification_spec"(__lowered_lex_273)
.annotate 'line', 809
    nqp_decontainerize $P5052, __lowered_lex_272
    $P5052."publish_parrot_vtable_mapping"(__lowered_lex_273)
.annotate 'line', 810
    nqp_decontainerize $P5053, __lowered_lex_272
    $P5053."publish_parrot_vtablee_handler_mapping"(__lowered_lex_273)
    .return (1) 
.end
.HLL "nqp"
.namespace []
.sub "add_role" :subid("cuid_68_1431289877.42775") :anon :lex :outer("cuid_149_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 814
    .param pmc __lowered_lex_276 
    .param pmc __lowered_lex_277 
    .param pmc __lowered_lex_278 
    .local pmc lowered_for_it__34 
    .local pmc __lowered_lex_275 
    nqp_decontainerize $P5002, __lowered_lex_276
    nqp_get_sc_object $P5003, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    repr_get_attr_obj $P5004, $P5002, $P5003, "@!roles", 6
    iter $P5001, $P5004
    set lowered_for_it__34, $P5001
    new $P5010, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5010, while129_handlers360
    push_eh $P5010
  while129_test357:
    set $P5009, lowered_for_it__34
    unless lowered_for_it__34 goto while129_done361 
  while129_redo359:
    shift $P5005, lowered_for_it__34
    set __lowered_lex_275, $P5005
.annotate 'line', 815
    get_id $I5002, __lowered_lex_275
    get_id $I5003, __lowered_lex_278
    iseq $I5001, $I5002, $I5003
    box $P5008, $I5001
    set $P5007, $P5008
    unless $I5001 goto if130_end363 
.annotate 'line', 816
    set $S5003, __lowered_lex_278
    concat $S5002, "The role ", $S5003
    concat $S5001, $S5002, " has already been added."
    box $P5006, $S5001
    die $P5006
    set $P5007, $P5006
  if130_end363:
    set $P5009, $P5007
    goto while129_test357 
  while129_handlers360:
    .get_results ($P5010)
    pop_upto_eh $P5010
    getattribute $P5011, $P5010, 'type'
    eq $P5011, .CONTROL_LOOP_NEXT, while129_test357
    eq $P5011, .CONTROL_LOOP_REDO, while129_redo359
  while129_done361:
    pop_eh 
    nqp_decontainerize $P5012, __lowered_lex_276
    nqp_get_sc_object $P5013, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    repr_get_attr_obj $P5014, $P5012, $P5013, "@!roles", 6
    push $P5014, __lowered_lex_278
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "add_parrot_vtable_mapping" :subid("cuid_69_1431289877.42775") :anon :lex :outer("cuid_149_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 823
    .param pmc __lowered_lex_279 
    .param pmc __lowered_lex_280 
    .param pmc __lowered_lex_281 
    .param pmc __lowered_lex_282 
    .local pmc fb_tmp_16 
    nqp_decontainerize $P5001, __lowered_lex_279
    nqp_get_sc_object $P5002, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    repr_get_attr_obj $P5003, $P5001, $P5002, "%!parrot_vtable_mapping", 15
    set fb_tmp_16, $P5003
    repr_defined $I5002, fb_tmp_16
    unless $I5002 goto if132_else366 
    set $S5001, __lowered_lex_281
    set $P5004, fb_tmp_16[$S5001]
    set $P5006, $P5004
    goto if132_end367
  if132_else366:
    null $P5005
    set $P5006, $P5005
  if132_end367:
    unless_null $P5006, vivi_133368
    null $P5007
    set $P5006, $P5007
  vivi_133368:
    defined $I5001, $P5006
    unless $I5001 goto if131_end365 
.annotate 'line', 824
    nqp_decontainerize $P5008, __lowered_lex_279
    nqp_get_sc_object $P5009, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    repr_get_attr_obj $P5010, $P5008, $P5009, "$!name", 0
    set $S5006, $P5010
    concat $S5005, "Class '", $S5006
    concat $S5004, $S5005, "' already has a Parrot v-table override for '"
    set $S5007, __lowered_lex_281
    concat $S5003, $S5004, $S5007
    concat $S5002, $S5003, "'"
    box $P5011, $S5002
    die $P5011
  if131_end365:
    nqp_decontainerize $P5012, __lowered_lex_279
    nqp_get_sc_object $P5013, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    repr_get_attr_obj $P5014, $P5012, $P5013, "%!parrot_vtable_mapping", 15
    set $S5008, __lowered_lex_281
    set $P5014[$S5008], __lowered_lex_282
    .return (__lowered_lex_282) 
.end
.HLL "nqp"
.namespace []
.sub "add_parrot_vtable_handler_mapping" :subid("cuid_70_1431289877.42775") :anon :lex :outer("cuid_149_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 832
    .param pmc __lowered_lex_283 
    .param pmc __lowered_lex_284 
    .param pmc __lowered_lex_285 
    .param pmc __lowered_lex_286 
    .local pmc fb_tmp_17 
    nqp_decontainerize $P5001, __lowered_lex_283
    nqp_get_sc_object $P5002, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    repr_get_attr_obj $P5003, $P5001, $P5002, "%!parrot_vtable_handler_mapping", 16
    set fb_tmp_17, $P5003
    repr_defined $I5002, fb_tmp_17
    unless $I5002 goto if135_else371 
    set $S5001, __lowered_lex_285
    set $P5004, fb_tmp_17[$S5001]
    set $P5006, $P5004
    goto if135_end372
  if135_else371:
    null $P5005
    set $P5006, $P5005
  if135_end372:
    unless_null $P5006, vivi_136373
    null $P5007
    set $P5006, $P5007
  vivi_136373:
    defined $I5001, $P5006
    unless $I5001 goto if134_end370 
.annotate 'line', 833
    nqp_decontainerize $P5008, __lowered_lex_283
    nqp_get_sc_object $P5009, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    repr_get_attr_obj $P5010, $P5008, $P5009, "$!name", 0
    set $S5006, $P5010
    concat $S5005, "Class '", $S5006
    concat $S5004, $S5005, "' already has a Parrot v-table handler for '"
    set $S5007, __lowered_lex_285
    concat $S5003, $S5004, $S5007
    concat $S5002, $S5003, "'"
    box $P5011, $S5002
    die $P5011
  if134_end370:
    nqp_decontainerize $P5012, __lowered_lex_283
    nqp_get_sc_object $P5013, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    repr_get_attr_obj $P5014, $P5012, $P5013, "%!parrot_vtable_handler_mapping", 16
    set $S5008, __lowered_lex_285
    new $P5015, 'QRPA'
    assign $P5015, 2
    assign $P5015, 0
    push $P5015, __lowered_lex_284
    push $P5015, __lowered_lex_286
    set $P5014[$S5008], $P5015
    .return ($P5015) 
.end
.HLL "nqp"
.namespace []
.sub "compose" :subid("cuid_71_1431289877.42775") :anon :lex :outer("cuid_149_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 841
    .param pmc __lowered_lex_291 
    .param pmc __lowered_lex_292 
    .local pmc __lowered_lex_289 
    .local pmc lowered_for_it__35 
    .local pmc __lowered_lex_288 
    .local pmc __lowered_lex_287 
    .local pmc lowered_for_it__36 
    .local pmc __lowered_lex_290 
    nqp_decontainerize $P5001, __lowered_lex_291
    nqp_get_sc_object $P5002, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!roles", 6
    unless $P5003 goto if137_end375 
    new $P5004, 'QRPA'
    set __lowered_lex_289, $P5004
.annotate 'line', 845
    nqp_decontainerize $P5006, __lowered_lex_291
    nqp_get_sc_object $P5007, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    repr_get_attr_obj $P5008, $P5006, $P5007, "@!roles", 6
    iter $P5005, $P5008
    set lowered_for_it__35, $P5005
    new $P5019, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5019, while138_handlers379
    push_eh $P5019
  while138_test376:
    set $P5018, lowered_for_it__35
    unless lowered_for_it__35 goto while138_done380 
  while138_redo378:
    shift $P5009, lowered_for_it__35
    set __lowered_lex_288, $P5009
.annotate 'line', 847
.annotate 'line', 848
    get_how $P5010, __lowered_lex_288
    $P5011 = $P5010."specialize"(__lowered_lex_288, __lowered_lex_292)
    set __lowered_lex_287, $P5011
    push __lowered_lex_289, __lowered_lex_287
    nqp_decontainerize $P5012, __lowered_lex_291
    nqp_get_sc_object $P5013, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    repr_get_attr_obj $P5014, $P5012, $P5013, "@!done", 12
    push $P5014, __lowered_lex_288
    nqp_decontainerize $P5015, __lowered_lex_291
    nqp_get_sc_object $P5016, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    repr_get_attr_obj $P5017, $P5015, $P5016, "@!done", 12
    push $P5017, __lowered_lex_287
    set $P5018, $P5017
    goto while138_test376 
  while138_handlers379:
    .get_results ($P5019)
    pop_upto_eh $P5019
    getattribute $P5020, $P5019, 'type'
    eq $P5020, .CONTROL_LOOP_NEXT, while138_test376
    eq $P5020, .CONTROL_LOOP_REDO, while138_redo378
  while138_done380:
    pop_eh 
.annotate 'line', 853
    nqp_get_sc_object $P5021, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 4
    $P5022 = $P5021."apply"(__lowered_lex_292, __lowered_lex_289)
  if137_end375:
    nqp_decontainerize $P5023, __lowered_lex_291
    nqp_get_sc_object $P5024, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    repr_get_attr_obj $P5025, $P5023, $P5024, "@!parents", 5
    elements $I5002, $P5025
    iseq $I5001, $I5002, 0
    set $I5004, $I5001
    unless $I5001 goto if140_end384 
    nqp_decontainerize $P5026, __lowered_lex_291
    nqp_get_sc_object $P5027, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    repr_get_attr_obj $P5028, $P5026, $P5027, "$!name", 0
    set $S5001, $P5028
    isne $I5003, $S5001, "NQPMu"
    set $I5004, $I5003
  if140_end384:
    unless $I5004 goto if139_end382 
.annotate 'line', 858
.annotate 'line', 859
    nqp_decontainerize $P5029, __lowered_lex_291
    nqp_decontainerize $P5030, __lowered_lex_291
    nqp_get_sc_object $P5031, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    repr_get_attr_obj $P5032, $P5030, $P5031, "$!default_parent", 7
    $P5033 = $P5029."add_parent"(__lowered_lex_292, $P5032)
  if139_end382:
    nqp_decontainerize $P5034, __lowered_lex_291
    nqp_get_sc_object $P5035, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
.annotate 'line', 863
    $P5036 = "&compute_c3_mro"(__lowered_lex_292)
    repr_bind_attr_obj $P5034, $P5035, "@!mro", 11, $P5036
.annotate 'line', 866
    nqp_decontainerize $P5037, __lowered_lex_291
    $P5037."incorporate_multi_candidates"(__lowered_lex_292)
.annotate 'line', 869
    nqp_decontainerize $P5039, __lowered_lex_291
    $P5040 = $P5039."attributes"(__lowered_lex_292, 0 :named("local"))
    iter $P5038, $P5040
    set lowered_for_it__36, $P5038
    new $P5044, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5044, while141_handlers388
    push_eh $P5044
  while141_test385:
    set $P5043, lowered_for_it__36
    unless lowered_for_it__36 goto while141_done389 
  while141_redo387:
    shift $P5041, lowered_for_it__36
    set __lowered_lex_290, $P5041
    $P5042 = __lowered_lex_290."compose"(__lowered_lex_292)
    set $P5043, $P5042
    goto while141_test385 
  while141_handlers388:
    .get_results ($P5044)
    pop_upto_eh $P5044
    getattribute $P5045, $P5044, 'type'
    eq $P5045, .CONTROL_LOOP_NEXT, while141_test385
    eq $P5045, .CONTROL_LOOP_REDO, while141_redo387
  while141_done389:
    pop_eh 
.annotate 'line', 872
    nqp_decontainerize $P5046, __lowered_lex_291
    $P5046."publish_type_cache"(__lowered_lex_292)
.annotate 'line', 873
    nqp_decontainerize $P5047, __lowered_lex_291
    $P5047."publish_method_cache"(__lowered_lex_292)
.annotate 'line', 874
    nqp_decontainerize $P5048, __lowered_lex_291
    $P5048."publish_boolification_spec"(__lowered_lex_292)
.annotate 'line', 877
    nqp_decontainerize $P5049, __lowered_lex_291
    $P5049."publish_parrot_vtable_mapping"(__lowered_lex_292)
.annotate 'line', 878
    nqp_decontainerize $P5050, __lowered_lex_291
    $P5050."publish_parrot_vtablee_handler_mapping"(__lowered_lex_292)
.annotate 'line', 881
    nqp_decontainerize $P5051, __lowered_lex_291
    $P5051."create_BUILDPLAN"(__lowered_lex_292)
    nqp_decontainerize $P5052, __lowered_lex_291
    nqp_get_sc_object $P5053, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    repr_get_attr_obj $P5054, $P5052, $P5053, "$!composed", 10
    if $P5054 goto unless142_end391 
.annotate 'line', 884
.annotate 'line', 885
    nqp_decontainerize $P5055, __lowered_lex_291
    $P5056 = $P5055."compose_repr"(__lowered_lex_292)
  unless142_end391:
    nqp_decontainerize $P5057, __lowered_lex_291
    nqp_get_sc_object $P5058, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    box $P5059, 1
    repr_bind_attr_obj $P5057, $P5058, "$!composed", 10, $P5059
    .return (__lowered_lex_292) 
.end
.HLL "nqp"
.namespace []
.sub "compose_repr" :subid("cuid_72_1431289877.42775") :anon :lex :outer("cuid_149_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 894
    .param pmc __lowered_lex_298 
    .param pmc __lowered_lex_299 
    .local pmc __lowered_lex_300 
    .local pmc __lowered_lex_301 
    .local pmc lowered_for_it__38 
    .local pmc __lowered_lex_295 
    .local pmc __lowered_lex_296 
    .local pmc __lowered_lex_297 
    .local pmc lowered_for_it__37 
    .local pmc __lowered_lex_293 
    .local pmc __lowered_lex_294 
    new $P5001, 'QRPA'
    set __lowered_lex_300, $P5001
    nqp_decontainerize $P5003, __lowered_lex_298
    nqp_get_sc_object $P5004, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    repr_get_attr_obj $P5005, $P5003, $P5004, "@!mro", 11
    iter $P5002, $P5005
    set lowered_for_it__38, $P5002
    new $P5029, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5029, while143_handlers395
    push_eh $P5029
  while143_test392:
    set $P5028, lowered_for_it__38
    unless lowered_for_it__38 goto while143_done396 
  while143_redo394:
.annotate 'line', 900
    shift $P5006, lowered_for_it__38
    set __lowered_lex_295, $P5006
    new $P5007, 'QRPA'
    set __lowered_lex_296, $P5007
    new $P5008, 'QRPA'
    set __lowered_lex_297, $P5008
    push __lowered_lex_300, __lowered_lex_296
    push __lowered_lex_296, __lowered_lex_295
    push __lowered_lex_296, __lowered_lex_297
.annotate 'line', 910
    get_how $P5010, __lowered_lex_295
    $P5011 = $P5010."attributes"(__lowered_lex_295, 1 :named("local"))
    iter $P5009, $P5011
    set lowered_for_it__37, $P5009
    new $P5024, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5024, while144_handlers400
    push_eh $P5024
  while144_test397:
    set $P5023, lowered_for_it__37
    unless lowered_for_it__37 goto while144_done401 
  while144_redo399:
    shift $P5012, lowered_for_it__37
    set __lowered_lex_293, $P5012
    new $P5013, 'Hash'
    set __lowered_lex_294, $P5013
.annotate 'line', 912
    $P5014 = __lowered_lex_293."name"()
    set __lowered_lex_294["name"], $P5014
.annotate 'line', 913
    $P5015 = __lowered_lex_293."type"()
    set __lowered_lex_294["type"], $P5015
.annotate 'line', 914
    $P5016 = __lowered_lex_293."box_target"()
    unless $P5016 goto if145_end403 
    box $P5017, 1
    set __lowered_lex_294["box_target"], $P5017
  if145_end403:
    can $I5001, __lowered_lex_293, "auto_viv_container"
    unless $I5001 goto if146_end405 
.annotate 'line', 918
.annotate 'line', 919
    $P5018 = __lowered_lex_293."auto_viv_container"()
    set __lowered_lex_294["auto_viv_container"], $P5018
  if146_end405:
.annotate 'line', 921
    $P5019 = __lowered_lex_293."positional_delegate"()
    unless $P5019 goto if147_end407 
    box $P5020, 1
    set __lowered_lex_294["positional_delegate"], $P5020
  if147_end407:
.annotate 'line', 924
    $P5021 = __lowered_lex_293."associative_delegate"()
    unless $P5021 goto if148_end409 
    box $P5022, 1
    set __lowered_lex_294["associative_delegate"], $P5022
  if148_end409:
    push __lowered_lex_297, __lowered_lex_294
    set $P5023, __lowered_lex_297
    goto while144_test397 
  while144_handlers400:
    .get_results ($P5024)
    pop_upto_eh $P5024
    getattribute $P5025, $P5024, 'type'
    eq $P5025, .CONTROL_LOOP_NEXT, while144_test397
    eq $P5025, .CONTROL_LOOP_REDO, while144_redo399
  while144_done401:
    pop_eh 
.annotate 'line', 931
    get_how $P5026, __lowered_lex_295
    $P5027 = $P5026."parents"(__lowered_lex_295, 1 :named("local"))
    push __lowered_lex_296, $P5027
    set $P5028, __lowered_lex_296
    goto while143_test392 
  while143_handlers395:
    .get_results ($P5029)
    pop_upto_eh $P5029
    getattribute $P5030, $P5029, 'type'
    eq $P5030, .CONTROL_LOOP_NEXT, while143_test392
    eq $P5030, .CONTROL_LOOP_REDO, while143_redo394
  while143_done396:
    pop_eh 
    new $P5031, 'Hash'
    set __lowered_lex_301, $P5031
    set __lowered_lex_301["attribute"], __lowered_lex_300
    repr_compose __lowered_lex_299, __lowered_lex_301
    .return (__lowered_lex_299) 
.end
.HLL "nqp"
.namespace []
.sub "incorporate_multi_candidates" :subid("cuid_73_1431289877.42775") :anon :lex :outer("cuid_149_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 940
    .param pmc __lowered_lex_311 
    .param pmc __lowered_lex_312 
    .local pmc __lowered_lex_313 
    .local pmc __lowered_lex_314 
    .local pmc __lowered_lex_308 
    .local pmc __lowered_lex_309 
    .local pmc __lowered_lex_310 
    .local pmc fb_tmp_18 
    .local pmc fb_tmp_19 
    .local pmc fb_tmp_20 
    .local pmc fb_tmp_21 
    .local pmc fb_tmp_22 
    .local pmc __lowered_lex_306 
    .local pmc __lowered_lex_307 
    .local pmc __lowered_lex_303 
    .local pmc __lowered_lex_304 
    .local pmc __lowered_lex_305 
    .local pmc fb_tmp_23 
    .local pmc fb_tmp_24 
    .local pmc __lowered_lex_302 
    nqp_decontainerize $P5001, __lowered_lex_311
    nqp_get_sc_object $P5002, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!multi_methods_to_incorporate", 4
    elements $I5001, $P5003
    box $P5004, $I5001
    set __lowered_lex_313, $P5004
    box $P5005, 0
    set __lowered_lex_314, $P5005
  while149_test410:
    set $N5001, __lowered_lex_314
    set $N5002, __lowered_lex_313
    isne $I5002, $N5001, $N5002
    box $P5076, $I5002
    set $P5075, $P5076
    unless $I5002 goto while149_done414 
  while149_redo412:
.annotate 'line', 943
    nqp_decontainerize $P5006, __lowered_lex_311
    nqp_get_sc_object $P5007, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    repr_get_attr_obj $P5008, $P5006, $P5007, "@!multi_methods_to_incorporate", 4
    set fb_tmp_19, $P5008
    repr_defined $I5004, fb_tmp_19
    unless $I5004 goto if151_else417 
    set $I5005, __lowered_lex_314
    set $P5009, fb_tmp_19[$I5005]
    set $P5011, $P5009
    goto if151_end418
  if151_else417:
    null $P5010
    set $P5011, $P5010
  if151_end418:
    unless_null $P5011, vivi_152419
    null $P5012
    set $P5011, $P5012
  vivi_152419:
    set fb_tmp_18, $P5011
    repr_defined $I5003, fb_tmp_18
    unless $I5003 goto if150_else415 
    set $P5013, fb_tmp_18["name"]
    set $P5015, $P5013
    goto if150_end416
  if150_else415:
    null $P5014
    set $P5015, $P5014
  if150_end416:
    unless_null $P5015, vivi_153420
    null $P5016
    set $P5015, $P5016
  vivi_153420:
    set __lowered_lex_308, $P5015
    nqp_decontainerize $P5017, __lowered_lex_311
    nqp_get_sc_object $P5018, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    repr_get_attr_obj $P5019, $P5017, $P5018, "@!multi_methods_to_incorporate", 4
    set fb_tmp_21, $P5019
    repr_defined $I5007, fb_tmp_21
    unless $I5007 goto if155_else423 
    set $I5008, __lowered_lex_314
    set $P5020, fb_tmp_21[$I5008]
    set $P5022, $P5020
    goto if155_end424
  if155_else423:
    null $P5021
    set $P5022, $P5021
  if155_end424:
    unless_null $P5022, vivi_156425
    null $P5023
    set $P5022, $P5023
  vivi_156425:
    set fb_tmp_20, $P5022
    repr_defined $I5006, fb_tmp_20
    unless $I5006 goto if154_else421 
    set $P5024, fb_tmp_20["code"]
    set $P5026, $P5024
    goto if154_end422
  if154_else421:
    null $P5025
    set $P5026, $P5025
  if154_end422:
    unless_null $P5026, vivi_157426
    null $P5027
    set $P5026, $P5027
  vivi_157426:
    set __lowered_lex_309, $P5026
    nqp_decontainerize $P5028, __lowered_lex_311
    nqp_get_sc_object $P5029, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    repr_get_attr_obj $P5030, $P5028, $P5029, "%!methods", 2
    set fb_tmp_22, $P5030
    repr_defined $I5009, fb_tmp_22
    unless $I5009 goto if158_else427 
    set $S5001, __lowered_lex_308
    set $P5031, fb_tmp_22[$S5001]
    set $P5033, $P5031
    goto if158_end428
  if158_else427:
    null $P5032
    set $P5033, $P5032
  if158_end428:
    unless_null $P5033, vivi_159429
    null $P5034
    set $P5033, $P5034
  vivi_159429:
    set __lowered_lex_310, $P5033
    defined $I5010, __lowered_lex_310
    unless $I5010 goto if160_else430 
.annotate 'line', 951
    can $I5011, __lowered_lex_310, "is_dispatcher"
    box $P5037, $I5011
    set $P5036, $P5037
    unless $I5011 goto if162_end435 
.annotate 'line', 954
    $P5035 = __lowered_lex_310."is_dispatcher"()
    set $P5036, $P5035
  if162_end435:
    unless $P5036 goto if161_else432 
.annotate 'line', 955
    $P5038 = __lowered_lex_310."add_dispatchee"(__lowered_lex_309)
    set $P5040, $P5038
    goto if161_end433
  if161_else432:
.annotate 'line', 957
    set $S5004, __lowered_lex_308
    concat $S5003, "Cannot have a multi candidate for ", $S5004
    concat $S5002, $S5003, " when an only method is also in the class"
    box $P5039, $S5002
    die $P5039
    set $P5040, $P5039
  if161_end433:
    goto if160_end431
  if160_else430:
.annotate 'line', 961
    box $P5041, 1
    set __lowered_lex_306, $P5041
    box $P5042, 0
    set __lowered_lex_307, $P5042
  while163_test436:
    set $N5003, __lowered_lex_306
    nqp_decontainerize $P5043, __lowered_lex_311
    nqp_get_sc_object $P5044, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    repr_get_attr_obj $P5045, $P5043, $P5044, "@!mro", 11
    elements $I5013, $P5045
    set $N5004, $I5013
    isne $I5012, $N5003, $N5004
    set $I5015, $I5012
    unless $I5012 goto if164_end442 
    isfalse $I5014, __lowered_lex_307
    set $I5015, $I5014
  if164_end442:
    box $P5071, $I5015
    set $P5070, $P5071
    unless $I5015 goto while163_done440 
  while163_redo438:
.annotate 'line', 965
    nqp_decontainerize $P5046, __lowered_lex_311
    nqp_get_sc_object $P5047, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    repr_get_attr_obj $P5048, $P5046, $P5047, "@!mro", 11
    set fb_tmp_23, $P5048
    repr_defined $I5016, fb_tmp_23
    unless $I5016 goto if165_else443 
    set $I5017, __lowered_lex_306
    set $P5049, fb_tmp_23[$I5017]
    set $P5051, $P5049
    goto if165_end444
  if165_else443:
    null $P5050
    set $P5051, $P5050
  if165_end444:
    unless_null $P5051, vivi_166445
    null $P5052
    set $P5051, $P5052
  vivi_166445:
    set __lowered_lex_303, $P5051
.annotate 'line', 967
    get_how $P5053, __lowered_lex_303
    $P5054 = $P5053."method_table"(__lowered_lex_303)
    set __lowered_lex_304, $P5054
    set fb_tmp_24, __lowered_lex_304
    repr_defined $I5018, fb_tmp_24
    unless $I5018 goto if167_else446 
    set $S5005, __lowered_lex_308
    set $P5055, fb_tmp_24[$S5005]
    set $P5057, $P5055
    goto if167_end447
  if167_else446:
    null $P5056
    set $P5057, $P5056
  if167_end447:
    unless_null $P5057, vivi_168448
    null $P5058
    set $P5057, $P5058
  vivi_168448:
    set __lowered_lex_305, $P5057
    defined $I5019, __lowered_lex_305
    unless $I5019 goto if169_end450 
.annotate 'line', 969
    can $I5020, __lowered_lex_305, "is_dispatcher"
    box $P5061, $I5020
    set $P5060, $P5061
    unless $I5020 goto if171_end454 
.annotate 'line', 972
    $P5059 = __lowered_lex_305."is_dispatcher"()
    set $P5060, $P5059
  if171_end454:
    unless $P5060 goto if170_else451 
.annotate 'line', 973
    $P5062 = __lowered_lex_305."derive_dispatcher"()
    set __lowered_lex_302, $P5062
.annotate 'line', 974
    __lowered_lex_302."add_dispatchee"(__lowered_lex_309)
    nqp_decontainerize $P5063, __lowered_lex_311
    nqp_get_sc_object $P5064, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    repr_get_attr_obj $P5065, $P5063, $P5064, "%!methods", 2
    set $S5006, __lowered_lex_308
    set $P5065[$S5006], __lowered_lex_302
    box $P5066, 1
    set __lowered_lex_307, $P5066
    set $P5068, __lowered_lex_307
    goto if170_end452
  if170_else451:
.annotate 'line', 978
    set $S5009, __lowered_lex_308
    concat $S5008, "Could not find a proto for multi ", $S5009
    concat $S5007, $S5008, " (it may exist, but an only is hiding it if so)"
    box $P5067, $S5007
    die $P5067
    set $P5068, $P5067
  if170_end452:
  if169_end450:
    set $N5006, __lowered_lex_306
    set $N5007, 1
    add $N5005, $N5006, $N5007
    box $P5069, $N5005
    set __lowered_lex_306, $P5069
    set $P5070, __lowered_lex_306
    goto while163_test436 
  while163_done440:
    set $P5073, __lowered_lex_307
    if __lowered_lex_307 goto unless172_end456 
.annotate 'line', 984
    set $S5012, __lowered_lex_308
    concat $S5011, "Could not find a proto for multi ", $S5012
    concat $S5010, $S5011, ", and proto generation is NYI"
    box $P5072, $S5010
    die $P5072
    set $P5073, $P5072
  unless172_end456:
  if160_end431:
    set $N5009, __lowered_lex_314
    set $N5010, 1
    add $N5008, $N5009, $N5010
    box $P5074, $N5008
    set __lowered_lex_314, $P5074
    set $P5075, __lowered_lex_314
    goto while149_test410 
  while149_done414:
    .return ($P5075) 
.end
.HLL "nqp"
.namespace []
.sub "publish_type_cache" :subid("cuid_74_1431289877.42775") :anon :lex :outer("cuid_149_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 1085
    .param pmc __lowered_lex_317 
    .param pmc __lowered_lex_318 
    .local pmc __lowered_lex_319 
    .local pmc lowered_for_it__39 
    .local pmc __lowered_lex_315 
    .local pmc lowered_for_it__40 
    .local pmc __lowered_lex_316 
    new $P5001, 'QRPA'
    set __lowered_lex_319, $P5001
    nqp_decontainerize $P5003, __lowered_lex_317
    nqp_get_sc_object $P5004, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    repr_get_attr_obj $P5005, $P5003, $P5004, "@!mro", 11
    iter $P5002, $P5005
    set lowered_for_it__39, $P5002
    new $P5008, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5008, while173_handlers460
    push_eh $P5008
  while173_test457:
    set $P5007, lowered_for_it__39
    unless lowered_for_it__39 goto while173_done461 
  while173_redo459:
    shift $P5006, lowered_for_it__39
    set __lowered_lex_315, $P5006
.annotate 'line', 1087
    push __lowered_lex_319, __lowered_lex_315
    set $P5007, __lowered_lex_319
    goto while173_test457 
  while173_handlers460:
    .get_results ($P5008)
    pop_upto_eh $P5008
    getattribute $P5009, $P5008, 'type'
    eq $P5009, .CONTROL_LOOP_NEXT, while173_test457
    eq $P5009, .CONTROL_LOOP_REDO, while173_redo459
  while173_done461:
    pop_eh 
    nqp_decontainerize $P5011, __lowered_lex_317
    nqp_get_sc_object $P5012, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    repr_get_attr_obj $P5013, $P5011, $P5012, "@!done", 12
    iter $P5010, $P5013
    set lowered_for_it__40, $P5010
    new $P5016, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5016, while174_handlers465
    push_eh $P5016
  while174_test462:
    set $P5015, lowered_for_it__40
    unless lowered_for_it__40 goto while174_done466 
  while174_redo464:
    shift $P5014, lowered_for_it__40
    set __lowered_lex_316, $P5014
.annotate 'line', 1088
    push __lowered_lex_319, __lowered_lex_316
    set $P5015, __lowered_lex_319
    goto while174_test462 
  while174_handlers465:
    .get_results ($P5016)
    pop_upto_eh $P5016
    getattribute $P5017, $P5016, 'type'
    eq $P5017, .CONTROL_LOOP_NEXT, while174_test462
    eq $P5017, .CONTROL_LOOP_REDO, while174_redo464
  while174_done466:
    pop_eh 
    publish_type_check_cache __lowered_lex_318, __lowered_lex_319
    .return (__lowered_lex_318) 
.end
.HLL "nqp"
.namespace []
.sub "publish_method_cache" :subid("cuid_75_1431289877.42775") :anon :lex :outer("cuid_149_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 1098
    .param pmc __lowered_lex_322 
    .param pmc __lowered_lex_323 
    .local pmc __lowered_lex_324 
    .local pmc __lowered_lex_325 
    .local pmc lowered_for_it__42 
    .local pmc __lowered_lex_321 
    .local pmc lowered_for_it__41 
    .local pmc __lowered_lex_320 
    new $P5001, 'Hash'
    set __lowered_lex_324, $P5001
.annotate 'line', 1102
    nqp_decontainerize $P5002, __lowered_lex_322
    nqp_get_sc_object $P5003, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    repr_get_attr_obj $P5004, $P5002, $P5003, "@!mro", 11
    $P5005 = "&reverse"($P5004)
    set __lowered_lex_325, $P5005
    iter $P5006, __lowered_lex_325
    set lowered_for_it__42, $P5006
    new $P5018, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5018, while175_handlers470
    push_eh $P5018
  while175_test467:
    set $P5017, lowered_for_it__42
    unless lowered_for_it__42 goto while175_done471 
  while175_redo469:
    shift $P5007, lowered_for_it__42
    set __lowered_lex_321, $P5007
.annotate 'line', 1103
.annotate 'line', 1104
    get_how $P5009, __lowered_lex_321
    $P5010 = $P5009."method_table"(__lowered_lex_321)
    iter $P5008, $P5010
    set lowered_for_it__41, $P5008
    new $P5015, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5015, while176_handlers475
    push_eh $P5015
  while176_test472:
    set $P5014, lowered_for_it__41
    unless lowered_for_it__41 goto while176_done476 
  while176_redo474:
    shift $P5011, lowered_for_it__41
    set __lowered_lex_320, $P5011
    $P5012 = __lowered_lex_320."key"()
    set $S5001, $P5012
    $P5013 = __lowered_lex_320."value"()
    set __lowered_lex_324[$S5001], $P5013
    set $P5014, $P5013
    goto while176_test472 
  while176_handlers475:
    .get_results ($P5015)
    pop_upto_eh $P5015
    getattribute $P5016, $P5015, 'type'
    eq $P5016, .CONTROL_LOOP_NEXT, while176_test472
    eq $P5016, .CONTROL_LOOP_REDO, while176_redo474
  while176_done476:
    pop_eh 
    set $P5017, $P5014
    goto while175_test467 
  while175_handlers470:
    .get_results ($P5018)
    pop_upto_eh $P5018
    getattribute $P5019, $P5018, 'type'
    eq $P5019, .CONTROL_LOOP_NEXT, while175_test467
    eq $P5019, .CONTROL_LOOP_REDO, while175_redo469
  while175_done471:
    pop_eh 
    publish_method_cache __lowered_lex_323, __lowered_lex_324
    set_method_cache_authoritativeness __lowered_lex_323, 1
    .return (__lowered_lex_323) 
.end
.HLL "nqp"
.namespace []
.sub "publish_boolification_spec" :subid("cuid_76_1431289877.42775") :anon :lex :outer("cuid_149_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 1112
    .param pmc __lowered_lex_326 
    .param pmc __lowered_lex_327 
    .local pmc __lowered_lex_328 
.annotate 'line', 1113
    nqp_decontainerize $P5001, __lowered_lex_326
    $P5002 = $P5001."find_method"(__lowered_lex_327, "Bool")
    set __lowered_lex_328, $P5002
    defined $I5001, __lowered_lex_328
    unless $I5001 goto if177_else477 
.annotate 'line', 1114
    set_boolification_spec __lowered_lex_327, 0, __lowered_lex_328
    set $P5004, __lowered_lex_327
    goto if177_end478
  if177_else477:
.annotate 'line', 1117
    null $P5003
    set_boolification_spec __lowered_lex_327, 5, $P5003
    set $P5004, __lowered_lex_327
  if177_end478:
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "publish_parrot_vtable_mapping" :subid("cuid_77_1431289877.42775") :anon :lex :outer("cuid_149_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 1122
    .param pmc __lowered_lex_332 
    .param pmc __lowered_lex_333 
    .local pmc __lowered_lex_334 
    .local pmc __lowered_lex_335 
    .local pmc lowered_for_it__45 
    .local pmc __lowered_lex_331 
    .local pmc lowered_for_it__43 
    .local pmc __lowered_lex_329 
    .local pmc lowered_for_it__44 
    .local pmc __lowered_lex_330 
    new $P5001, 'Hash'
    set __lowered_lex_334, $P5001
    new $P5002, 'Hash'
    set __lowered_lex_335, $P5002
    nqp_decontainerize $P5004, __lowered_lex_332
    nqp_get_sc_object $P5005, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    repr_get_attr_obj $P5006, $P5004, $P5005, "@!mro", 11
    iter $P5003, $P5006
    set lowered_for_it__45, $P5003
    new $P5031, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5031, while178_handlers482
    push_eh $P5031
  while178_test479:
    set $P5030, lowered_for_it__45
    unless lowered_for_it__45 goto while178_done483 
  while178_redo481:
    shift $P5007, lowered_for_it__45
    set __lowered_lex_331, $P5007
.annotate 'line', 1125
.annotate 'line', 1126
    get_how $P5009, __lowered_lex_331
    $P5010 = $P5009."parrot_vtable_handler_mappings"(__lowered_lex_331, 1 :named("local"))
    iter $P5008, $P5010
    set lowered_for_it__43, $P5008
    new $P5015, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5015, while179_handlers487
    push_eh $P5015
  while179_test484:
    set $P5014, lowered_for_it__43
    unless lowered_for_it__43 goto while179_done488 
  while179_redo486:
    shift $P5011, lowered_for_it__43
    set __lowered_lex_329, $P5011
.annotate 'line', 1127
    $P5012 = __lowered_lex_329."key"()
    set $S5001, $P5012
    box $P5013, 1
    set __lowered_lex_335[$S5001], $P5013
    set $P5014, $P5013
    goto while179_test484 
  while179_handlers487:
    .get_results ($P5015)
    pop_upto_eh $P5015
    getattribute $P5016, $P5015, 'type'
    eq $P5016, .CONTROL_LOOP_NEXT, while179_test484
    eq $P5016, .CONTROL_LOOP_REDO, while179_redo486
  while179_done488:
    pop_eh 
.annotate 'line', 1129
    get_how $P5018, __lowered_lex_331
    $P5019 = $P5018."parrot_vtable_mappings"(__lowered_lex_331, 1 :named("local"))
    iter $P5017, $P5019
    set lowered_for_it__44, $P5017
    new $P5028, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5028, while180_handlers492
    push_eh $P5028
  while180_test489:
    set $P5027, lowered_for_it__44
    unless lowered_for_it__44 goto while180_done493 
  while180_redo491:
    shift $P5020, lowered_for_it__44
    set __lowered_lex_330, $P5020
.annotate 'line', 1130
    $P5021 = __lowered_lex_330."key"()
    set $S5002, $P5021
    exists $I5001, __lowered_lex_334[$S5002]
    set $I5003, $I5001
    if $I5001 goto unless182_end497 
.annotate 'line', 1131
    $P5022 = __lowered_lex_330."key"()
    set $S5003, $P5022
    exists $I5002, __lowered_lex_335[$S5003]
    set $I5003, $I5002
  unless182_end497:
    box $P5026, $I5003
    set $P5025, $P5026
    if $I5003 goto unless181_end495 
.annotate 'line', 1132
    $P5023 = __lowered_lex_330."key"()
    set $S5004, $P5023
    $P5024 = __lowered_lex_330."value"()
    set __lowered_lex_334[$S5004], $P5024
    set $P5025, $P5024
  unless181_end495:
    set $P5027, $P5025
    goto while180_test489 
  while180_handlers492:
    .get_results ($P5028)
    pop_upto_eh $P5028
    getattribute $P5029, $P5028, 'type'
    eq $P5029, .CONTROL_LOOP_NEXT, while180_test489
    eq $P5029, .CONTROL_LOOP_REDO, while180_redo491
  while180_done493:
    pop_eh 
    set $P5030, $P5027
    goto while178_test479 
  while178_handlers482:
    .get_results ($P5031)
    pop_upto_eh $P5031
    getattribute $P5032, $P5031, 'type'
    eq $P5032, .CONTROL_LOOP_NEXT, while178_test479
    eq $P5032, .CONTROL_LOOP_REDO, while178_redo481
  while178_done483:
    pop_eh 
    set $N5001, __lowered_lex_334
    box $P5034, $N5001
    set $P5033, $P5034
    unless $N5001 goto if183_end499 
.annotate 'line', 1136
    stable_publish_vtable_mapping __lowered_lex_333, __lowered_lex_334
    set $P5033, __lowered_lex_333
  if183_end499:
    .return ($P5033) 
.end
.HLL "nqp"
.namespace []
.sub "publish_parrot_vtablee_handler_mapping" :subid("cuid_78_1431289877.42775") :anon :lex :outer("cuid_149_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 1141
    .param pmc __lowered_lex_338 
    .param pmc __lowered_lex_339 
    .local pmc __lowered_lex_340 
    .local pmc __lowered_lex_341 
    .local pmc lowered_for_it__47 
    .local pmc __lowered_lex_337 
    .local pmc lowered_for_it__46 
    .local pmc __lowered_lex_336 
    new $P5001, 'Hash'
    set __lowered_lex_340, $P5001
.annotate 'line', 1143
    nqp_decontainerize $P5002, __lowered_lex_338
    nqp_get_sc_object $P5003, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    repr_get_attr_obj $P5004, $P5002, $P5003, "@!mro", 11
    $P5005 = "&reverse"($P5004)
    set __lowered_lex_341, $P5005
    iter $P5006, __lowered_lex_341
    set lowered_for_it__47, $P5006
    new $P5018, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5018, while184_handlers503
    push_eh $P5018
  while184_test500:
    set $P5017, lowered_for_it__47
    unless lowered_for_it__47 goto while184_done504 
  while184_redo502:
    shift $P5007, lowered_for_it__47
    set __lowered_lex_337, $P5007
.annotate 'line', 1144
.annotate 'line', 1145
    get_how $P5009, __lowered_lex_337
    $P5010 = $P5009."parrot_vtable_handler_mappings"(__lowered_lex_337, 1 :named("local"))
    iter $P5008, $P5010
    set lowered_for_it__46, $P5008
    new $P5015, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5015, while185_handlers508
    push_eh $P5015
  while185_test505:
    set $P5014, lowered_for_it__46
    unless lowered_for_it__46 goto while185_done509 
  while185_redo507:
    shift $P5011, lowered_for_it__46
    set __lowered_lex_336, $P5011
.annotate 'line', 1146
    $P5012 = __lowered_lex_336."key"()
    set $S5001, $P5012
    $P5013 = __lowered_lex_336."value"()
    set __lowered_lex_340[$S5001], $P5013
    set $P5014, $P5013
    goto while185_test505 
  while185_handlers508:
    .get_results ($P5015)
    pop_upto_eh $P5015
    getattribute $P5016, $P5015, 'type'
    eq $P5016, .CONTROL_LOOP_NEXT, while185_test505
    eq $P5016, .CONTROL_LOOP_REDO, while185_redo507
  while185_done509:
    pop_eh 
    set $P5017, $P5014
    goto while184_test500 
  while184_handlers503:
    .get_results ($P5018)
    pop_upto_eh $P5018
    getattribute $P5019, $P5018, 'type'
    eq $P5019, .CONTROL_LOOP_NEXT, while184_test500
    eq $P5019, .CONTROL_LOOP_REDO, while184_redo502
  while184_done504:
    pop_eh 
    set $N5001, __lowered_lex_340
    box $P5021, $N5001
    set $P5020, $P5021
    unless $N5001 goto if186_end511 
.annotate 'line', 1149
    stable_publish_vtable_handler_mapping __lowered_lex_339, __lowered_lex_340
    set $P5020, __lowered_lex_339
  if186_end511:
    .return ($P5020) 
.end
.HLL "nqp"
.namespace []
.sub "create_BUILDPLAN" :subid("cuid_79_1431289877.42775") :anon :lex :outer("cuid_149_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 1164
    .param pmc __lowered_lex_351 
    .param pmc __lowered_lex_352 
    .local pmc __lowered_lex_353 
    .local pmc __lowered_lex_354 
    .local pmc __lowered_lex_355 
    .local pmc __lowered_lex_356 
    .local pmc __lowered_lex_357 
    .local pmc __lowered_lex_358 
    .local pmc fb_tmp_25 
    .local pmc lowered_for_it__48 
    .local pmc __lowered_lex_346 
    .local pmc __lowered_lex_342 
    .local pmc __lowered_lex_343 
    .local pmc __lowered_lex_344 
    .local pmc __lowered_lex_345 
    .local pmc lowered_for_it__49 
    .local pmc __lowered_lex_348 
    .local pmc __lowered_lex_347 
    .local pmc __lowered_lex_350 
    .local pmc fb_tmp_26 
    .local pmc lowered_for_it__50 
    .local pmc __lowered_lex_349 
    new $P5001, 'QRPA'
    set __lowered_lex_353, $P5001
    new $P5002, 'QRPA'
    set __lowered_lex_356, $P5002
.annotate 'line', 1167
    get_how $P5003, __lowered_lex_352
    $P5004 = $P5003."attributes"(__lowered_lex_352, 1 :named("local"))
    set __lowered_lex_354, $P5004
.annotate 'line', 1170
    get_how $P5005, __lowered_lex_352
    $P5006 = $P5005."method_table"(__lowered_lex_352)
    set fb_tmp_25, $P5006
    repr_defined $I5001, fb_tmp_25
    unless $I5001 goto if187_else512 
    set $P5007, fb_tmp_25["BUILD"]
    set $P5009, $P5007
    goto if187_end513
  if187_else512:
    null $P5008
    set $P5009, $P5008
  if187_end513:
    unless_null $P5009, vivi_188514
    null $P5010
    set $P5009, $P5010
  vivi_188514:
    set __lowered_lex_355, $P5009
    defined $I5002, __lowered_lex_355
    unless $I5002 goto if189_else515 
.annotate 'line', 1171
    new $P5011, 'QRPA'
    assign $P5011, 2
    assign $P5011, 0
    box $P5012, 0
    push $P5011, $P5012
    push $P5011, __lowered_lex_355
    push __lowered_lex_353, $P5011
    goto if189_end516
  if189_else515:
.annotate 'line', 1175
    iter $P5013, __lowered_lex_354
    set lowered_for_it__48, $P5013
    new $P5021, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5021, while190_handlers520
    push_eh $P5021
  while190_test517:
    set $P5020, lowered_for_it__48
    unless lowered_for_it__48 goto while190_done521 
  while190_redo519:
    shift $P5014, lowered_for_it__48
    set __lowered_lex_346, $P5014
.annotate 'line', 1179
.annotate 'line', 1180
    $P5015 = __lowered_lex_346."name"()
    set __lowered_lex_342, $P5015
    set $S5002, __lowered_lex_342
    substr $S5001, $S5002, 2
    box $P5016, $S5001
    set __lowered_lex_343, $P5016
    set $S5004, __lowered_lex_342
    substr $S5003, $S5004, 0, 1
    box $P5017, $S5003
    set __lowered_lex_344, $P5017
    set $S5005, __lowered_lex_344
    iseq $I5003, $S5005, "@"
    unless $I5003 goto if191_else522 
    set $I5006, 2
    goto if191_end523
  if191_else522:
    set $S5006, __lowered_lex_344
    iseq $I5004, $S5006, "%"
    unless $I5004 goto if192_else524 
    set $I5005, 3
    goto if192_end525
  if192_else524:
    set $I5005, 1
  if192_end525:
    set $I5006, $I5005
  if191_end523:
    box $P5018, $I5006
    set __lowered_lex_345, $P5018
    new $P5019, 'QRPA'
    assign $P5019, 4
    assign $P5019, 0
    push $P5019, __lowered_lex_345
    push $P5019, __lowered_lex_352
    push $P5019, __lowered_lex_343
    push $P5019, __lowered_lex_342
    push __lowered_lex_353, $P5019
    set $P5020, __lowered_lex_353
    goto while190_test517 
  while190_handlers520:
    .get_results ($P5021)
    pop_upto_eh $P5021
    getattribute $P5022, $P5021, 'type'
    eq $P5022, .CONTROL_LOOP_NEXT, while190_test517
    eq $P5022, .CONTROL_LOOP_REDO, while190_redo519
  while190_done521:
    pop_eh 
  if189_end516:
    iter $P5023, __lowered_lex_354
    set lowered_for_it__49, $P5023
    new $P5034, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5034, while193_handlers529
    push_eh $P5034
  while193_test526:
    set $P5033, lowered_for_it__49
    unless lowered_for_it__49 goto while193_done530 
  while193_redo528:
    shift $P5024, lowered_for_it__49
    set __lowered_lex_348, $P5024
.annotate 'line', 1189
    can $I5007, __lowered_lex_348, "build"
    box $P5032, $I5007
    set $P5031, $P5032
    unless $I5007 goto if194_end532 
.annotate 'line', 1190
.annotate 'line', 1191
    $P5025 = __lowered_lex_348."build"()
    set __lowered_lex_347, $P5025
    defined $I5008, __lowered_lex_347
    box $P5030, $I5008
    set $P5029, $P5030
    unless $I5008 goto if195_end534 
.annotate 'line', 1192
    new $P5026, 'QRPA'
    assign $P5026, 4
    assign $P5026, 0
    box $P5027, 4
    push $P5026, $P5027
    push $P5026, __lowered_lex_352
.annotate 'line', 1193
    $P5028 = __lowered_lex_348."name"()
    push $P5026, $P5028
    push $P5026, __lowered_lex_347
    push __lowered_lex_353, $P5026
    set $P5029, __lowered_lex_353
  if195_end534:
    set $P5031, $P5029
  if194_end532:
    set $P5033, $P5031
    goto while193_test526 
  while193_handlers529:
    .get_results ($P5034)
    pop_upto_eh $P5034
    getattribute $P5035, $P5034, 'type'
    eq $P5035, .CONTROL_LOOP_NEXT, while193_test526
    eq $P5035, .CONTROL_LOOP_REDO, while193_redo528
  while193_done530:
    pop_eh 
    nqp_decontainerize $P5036, __lowered_lex_351
    nqp_get_sc_object $P5037, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    repr_bind_attr_obj $P5036, $P5037, "@!BUILDPLAN", 21, __lowered_lex_353
.annotate 'line', 1204
    nqp_decontainerize $P5038, __lowered_lex_351
    $P5039 = $P5038."mro"(__lowered_lex_352)
    set __lowered_lex_357, $P5039
    elements $I5009, __lowered_lex_357
    box $P5040, $I5009
    set __lowered_lex_358, $P5040
  while196_test535:
    set $N5001, __lowered_lex_358
    set $N5002, 0
    isgt $I5010, $N5001, $N5002
    box $P5054, $I5010
    set $P5053, $P5054
    unless $I5010 goto while196_done539 
  while196_redo537:
.annotate 'line', 1206
    set $N5004, __lowered_lex_358
    set $N5005, 1
    sub $N5003, $N5004, $N5005
    box $P5041, $N5003
    set __lowered_lex_358, $P5041
    set fb_tmp_26, __lowered_lex_357
    repr_defined $I5011, fb_tmp_26
    unless $I5011 goto if197_else540 
    set $I5012, __lowered_lex_358
    set $P5042, fb_tmp_26[$I5012]
    set $P5044, $P5042
    goto if197_end541
  if197_else540:
    null $P5043
    set $P5044, $P5043
  if197_end541:
    unless_null $P5044, vivi_198542
    null $P5045
    set $P5044, $P5045
  vivi_198542:
    set __lowered_lex_350, $P5044
.annotate 'line', 1209
    get_how $P5047, __lowered_lex_350
    $P5048 = $P5047."BUILDPLAN"(__lowered_lex_350)
    iter $P5046, $P5048
    set lowered_for_it__50, $P5046
    new $P5051, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5051, while199_handlers546
    push_eh $P5051
  while199_test543:
    set $P5050, lowered_for_it__50
    unless lowered_for_it__50 goto while199_done547 
  while199_redo545:
    shift $P5049, lowered_for_it__50
    set __lowered_lex_349, $P5049
    push __lowered_lex_356, __lowered_lex_349
    set $P5050, __lowered_lex_356
    goto while199_test543 
  while199_handlers546:
    .get_results ($P5051)
    pop_upto_eh $P5051
    getattribute $P5052, $P5051, 'type'
    eq $P5052, .CONTROL_LOOP_NEXT, while199_test543
    eq $P5052, .CONTROL_LOOP_REDO, while199_redo545
  while199_done547:
    pop_eh 
    set $P5053, $P5050
    goto while196_test535 
  while196_done539:
    nqp_decontainerize $P5055, __lowered_lex_351
    nqp_get_sc_object $P5056, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    repr_bind_attr_obj $P5055, $P5056, "@!BUILDALLPLAN", 20, __lowered_lex_356
    .return (__lowered_lex_356) 
.end
.HLL "nqp"
.namespace []
.sub "BUILDPLAN" :subid("cuid_80_1431289877.42775") :anon :lex :outer("cuid_149_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 1216
    .param pmc __lowered_lex_359 
    .param pmc __lowered_lex_360 
    nqp_decontainerize $P5001, __lowered_lex_359
    nqp_get_sc_object $P5002, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!BUILDPLAN", 21
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "BUILDALLPLAN" :subid("cuid_81_1431289877.42775") :anon :lex :outer("cuid_149_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 1220
    .param pmc __lowered_lex_361 
    .param pmc __lowered_lex_362 
    nqp_decontainerize $P5001, __lowered_lex_361
    nqp_get_sc_object $P5002, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!BUILDALLPLAN", 20
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "parents" :subid("cuid_82_1431289877.42775") :anon :lex :outer("cuid_149_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 1228
    .param pmc __lowered_lex_363 
    .param pmc __lowered_lex_364 
    .param pmc __lowered_lex_365 :named("local") :optional 
    .param int haz_param_19 :opt_flag 
    if haz_param_19, default550
    box $P5008, 0
    set __lowered_lex_365, $P5008
  default550:
    unless __lowered_lex_365 goto if200_else548 
    nqp_decontainerize $P5001, __lowered_lex_363
    nqp_get_sc_object $P5002, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!parents", 5
    set $P5007, $P5003
    goto if200_end549
  if200_else548:
    nqp_decontainerize $P5004, __lowered_lex_363
    nqp_get_sc_object $P5005, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    repr_get_attr_obj $P5006, $P5004, $P5005, "@!mro", 11
    set $P5007, $P5006
  if200_end549:
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "mro" :subid("cuid_83_1431289877.42775") :anon :lex :outer("cuid_149_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 1232
    .param pmc __lowered_lex_366 
    .param pmc __lowered_lex_367 
    nqp_decontainerize $P5001, __lowered_lex_366
    nqp_get_sc_object $P5002, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!mro", 11
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "roles" :subid("cuid_84_1431289877.42775") :anon :lex :outer("cuid_149_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 1236
    .param pmc __lowered_lex_368 
    .param pmc __lowered_lex_369 
    .param pmc __lowered_lex_370 :named("local") 
    nqp_decontainerize $P5001, __lowered_lex_368
    nqp_get_sc_object $P5002, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!roles", 6
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "methods" :subid("cuid_85_1431289877.42775") :anon :lex :outer("cuid_149_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 1240
    .param pmc __lowered_lex_374 
    .param pmc __lowered_lex_375 
    .param pmc __lowered_lex_376 :named("local") :optional 
    .param int haz_param_20 :opt_flag 
    .local pmc __lowered_lex_373 
    .local pmc lowered_for_it__52 
    .local pmc __lowered_lex_372 
    .local pmc lowered_for_it__51 
    .local pmc __lowered_lex_371 
    if haz_param_20, default563
    box $P5021, 0
    set __lowered_lex_376, $P5021
  default563:
    unless __lowered_lex_376 goto if201_else551 
.annotate 'line', 1241
    nqp_decontainerize $P5001, __lowered_lex_374
    nqp_get_sc_object $P5002, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!method_order", 3
    set $P5020, $P5003
    goto if201_end552
  if201_else551:
    new $P5004, 'QRPA'
    set __lowered_lex_373, $P5004
.annotate 'line', 1244
    nqp_decontainerize $P5006, __lowered_lex_374
    nqp_get_sc_object $P5007, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    repr_get_attr_obj $P5008, $P5006, $P5007, "@!mro", 11
    iter $P5005, $P5008
    set lowered_for_it__52, $P5005
    new $P5018, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5018, while202_handlers556
    push_eh $P5018
  while202_test553:
    set $P5017, lowered_for_it__52
    unless lowered_for_it__52 goto while202_done557 
  while202_redo555:
    shift $P5009, lowered_for_it__52
    set __lowered_lex_372, $P5009
.annotate 'line', 1246
.annotate 'line', 1247
    get_how $P5011, __lowered_lex_372
    $P5012 = $P5011."methods"(__lowered_lex_372, 1 :named("local"))
    iter $P5010, $P5012
    set lowered_for_it__51, $P5010
    new $P5015, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5015, while203_handlers561
    push_eh $P5015
  while203_test558:
    set $P5014, lowered_for_it__51
    unless lowered_for_it__51 goto while203_done562 
  while203_redo560:
    shift $P5013, lowered_for_it__51
    set __lowered_lex_371, $P5013
    push __lowered_lex_373, __lowered_lex_371
    set $P5014, __lowered_lex_373
    goto while203_test558 
  while203_handlers561:
    .get_results ($P5015)
    pop_upto_eh $P5015
    getattribute $P5016, $P5015, 'type'
    eq $P5016, .CONTROL_LOOP_NEXT, while203_test558
    eq $P5016, .CONTROL_LOOP_REDO, while203_redo560
  while203_done562:
    pop_eh 
    set $P5017, $P5014
    goto while202_test553 
  while202_handlers556:
    .get_results ($P5018)
    pop_upto_eh $P5018
    getattribute $P5019, $P5018, 'type'
    eq $P5019, .CONTROL_LOOP_NEXT, while202_test553
    eq $P5019, .CONTROL_LOOP_REDO, while202_redo555
  while202_done557:
    pop_eh 
    set $P5020, __lowered_lex_373
  if201_end552:
    .return ($P5020) 
.end
.HLL "nqp"
.namespace []
.sub "method_table" :subid("cuid_86_1431289877.42775") :anon :lex :outer("cuid_149_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 1255
    .param pmc __lowered_lex_377 
    .param pmc __lowered_lex_378 
    nqp_decontainerize $P5001, __lowered_lex_377
    nqp_get_sc_object $P5002, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    repr_get_attr_obj $P5003, $P5001, $P5002, "%!methods", 2
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "name" :subid("cuid_87_1431289877.42775") :anon :lex :outer("cuid_149_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 1259
    .param pmc __lowered_lex_379 
    .param pmc __lowered_lex_380 
    nqp_decontainerize $P5001, __lowered_lex_379
    nqp_get_sc_object $P5002, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!name", 0
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "traced" :subid("cuid_88_1431289877.42775") :anon :lex :outer("cuid_149_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 1263
    .param pmc __lowered_lex_381 
    .param pmc __lowered_lex_382 
    nqp_decontainerize $P5001, __lowered_lex_381
    nqp_get_sc_object $P5002, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!trace", 17
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "trace_depth" :subid("cuid_89_1431289877.42775") :anon :lex :outer("cuid_149_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 1267
    .param pmc __lowered_lex_383 
    .param pmc __lowered_lex_384 
    nqp_decontainerize $P5001, __lowered_lex_383
    nqp_get_sc_object $P5002, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!trace_depth", 18
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "attributes" :subid("cuid_90_1431289877.42775") :anon :lex :outer("cuid_149_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 1271
    .param pmc __lowered_lex_388 
    .param pmc __lowered_lex_389 
    .param pmc __lowered_lex_390 :named("local") :optional 
    .param int haz_param_21 :opt_flag 
    .local pmc __lowered_lex_391 
    .local pmc lowered_for_it__53 
    .local pmc __lowered_lex_385 
    .local pmc lowered_for_it__55 
    .local pmc __lowered_lex_387 
    .local pmc lowered_for_it__54 
    .local pmc __lowered_lex_386 
    if haz_param_21, default581
    box $P5025, 0
    set __lowered_lex_390, $P5025
  default581:
    new $P5001, 'QRPA'
    set __lowered_lex_391, $P5001
    unless __lowered_lex_390 goto if204_else564 
.annotate 'line', 1273
    nqp_decontainerize $P5003, __lowered_lex_388
    nqp_get_sc_object $P5004, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    repr_get_attr_obj $P5005, $P5003, $P5004, "@!attributes", 1
    iter $P5002, $P5005
    set lowered_for_it__53, $P5002
    new $P5008, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5008, while205_handlers569
    push_eh $P5008
  while205_test566:
    set $P5007, lowered_for_it__53
    unless lowered_for_it__53 goto while205_done570 
  while205_redo568:
    shift $P5006, lowered_for_it__53
    set __lowered_lex_385, $P5006
.annotate 'line', 1274
    push __lowered_lex_391, __lowered_lex_385
    set $P5007, __lowered_lex_391
    goto while205_test566 
  while205_handlers569:
    .get_results ($P5008)
    pop_upto_eh $P5008
    getattribute $P5009, $P5008, 'type'
    eq $P5009, .CONTROL_LOOP_NEXT, while205_test566
    eq $P5009, .CONTROL_LOOP_REDO, while205_redo568
  while205_done570:
    pop_eh 
    goto if204_end565
  if204_else564:
.annotate 'line', 1278
    nqp_decontainerize $P5011, __lowered_lex_388
    nqp_get_sc_object $P5012, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    repr_get_attr_obj $P5013, $P5011, $P5012, "@!mro", 11
    iter $P5010, $P5013
    set lowered_for_it__55, $P5010
    new $P5023, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5023, while206_handlers574
    push_eh $P5023
  while206_test571:
    set $P5022, lowered_for_it__55
    unless lowered_for_it__55 goto while206_done575 
  while206_redo573:
    shift $P5014, lowered_for_it__55
    set __lowered_lex_387, $P5014
.annotate 'line', 1279
.annotate 'line', 1280
    get_how $P5016, __lowered_lex_387
    $P5017 = $P5016."attributes"(__lowered_lex_387, 1 :named("local"))
    iter $P5015, $P5017
    set lowered_for_it__54, $P5015
    new $P5020, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5020, while207_handlers579
    push_eh $P5020
  while207_test576:
    set $P5019, lowered_for_it__54
    unless lowered_for_it__54 goto while207_done580 
  while207_redo578:
    shift $P5018, lowered_for_it__54
    set __lowered_lex_386, $P5018
    push __lowered_lex_391, __lowered_lex_386
    set $P5019, __lowered_lex_391
    goto while207_test576 
  while207_handlers579:
    .get_results ($P5020)
    pop_upto_eh $P5020
    getattribute $P5021, $P5020, 'type'
    eq $P5021, .CONTROL_LOOP_NEXT, while207_test576
    eq $P5021, .CONTROL_LOOP_REDO, while207_redo578
  while207_done580:
    pop_eh 
    set $P5022, $P5019
    goto while206_test571 
  while206_handlers574:
    .get_results ($P5023)
    pop_upto_eh $P5023
    getattribute $P5024, $P5023, 'type'
    eq $P5024, .CONTROL_LOOP_NEXT, while206_test571
    eq $P5024, .CONTROL_LOOP_REDO, while206_redo573
  while206_done575:
    pop_eh 
  if204_end565:
    .return (__lowered_lex_391) 
.end
.HLL "nqp"
.namespace []
.sub "parrot_vtable_mappings" :subid("cuid_91_1431289877.42775") :anon :lex :outer("cuid_149_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 1288
    .param pmc __lowered_lex_392 
    .param pmc __lowered_lex_393 
    .param pmc __lowered_lex_394 :named("local") 
    nqp_decontainerize $P5001, __lowered_lex_392
    nqp_get_sc_object $P5002, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    repr_get_attr_obj $P5003, $P5001, $P5002, "%!parrot_vtable_mapping", 15
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "parrot_vtable_handler_mappings" :subid("cuid_92_1431289877.42775") :anon :lex :outer("cuid_149_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 1292
    .param pmc __lowered_lex_395 
    .param pmc __lowered_lex_396 
    .param pmc __lowered_lex_397 :named("local") 
    nqp_decontainerize $P5001, __lowered_lex_395
    nqp_get_sc_object $P5002, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    repr_get_attr_obj $P5003, $P5001, $P5002, "%!parrot_vtable_handler_mapping", 16
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "isa" :subid("cuid_93_1431289877.42775") :anon :lex :outer("cuid_149_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 1300
    .param pmc __lowered_lex_398 
    .param pmc __lowered_lex_399 
    .param pmc __lowered_lex_400 
    .local pmc __lowered_lex_401 
    .local pmc __lowered_lex_402 
    .local pmc fb_tmp_27 
    root_new $P101, ['parrot';'Continuation']
    set_label $P101, lexotic_582
    .lex "RETURN", $P101
    get_what $P5001, __lowered_lex_400
    set __lowered_lex_401, $P5001
    nqp_decontainerize $P5002, __lowered_lex_398
    nqp_get_sc_object $P5003, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    repr_get_attr_obj $P5004, $P5002, $P5003, "@!mro", 11
    elements $I5001, $P5004
    box $P5005, $I5001
    set __lowered_lex_402, $P5005
  while208_test584:
    set $N5001, __lowered_lex_402
    set $N5002, 0
    isgt $I5002, $N5001, $N5002
    box $P5018, $I5002
    set $P5017, $P5018
    unless $I5002 goto while208_done588 
  while208_redo586:
.annotate 'line', 1303
    set $N5004, __lowered_lex_402
    set $N5005, 1
    sub $N5003, $N5004, $N5005
    box $P5006, $N5003
    set __lowered_lex_402, $P5006
    nqp_decontainerize $P5007, __lowered_lex_398
    nqp_get_sc_object $P5008, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    repr_get_attr_obj $P5009, $P5007, $P5008, "@!mro", 11
    set fb_tmp_27, $P5009
    repr_defined $I5005, fb_tmp_27
    unless $I5005 goto if210_else591 
    set $I5006, __lowered_lex_402
    set $P5010, fb_tmp_27[$I5006]
    set $P5012, $P5010
    goto if210_end592
  if210_else591:
    null $P5011
    set $P5012, $P5011
  if210_end592:
    unless_null $P5012, vivi_211593
    null $P5013
    set $P5012, $P5013
  vivi_211593:
    get_id $I5004, $P5012
    get_id $I5007, __lowered_lex_401
    iseq $I5003, $I5004, $I5007
    box $P5016, $I5003
    set $P5015, $P5016
    unless $I5003 goto if209_end590 
.annotate 'line', 1305
    $P5014 = "RETURN"(1)
    set $P5015, $P5014
  if209_end590:
    set $P5017, $P5015
    goto while208_test584 
  while208_done588:
    $P5019 = "RETURN"(0)
    goto lexotic_583
  lexotic_582:
    .get_results ($P5019)
  lexotic_583:
    .return ($P5019) 
.end
.HLL "nqp"
.namespace []
.sub "does" :subid("cuid_94_1431289877.42775") :anon :lex :outer("cuid_149_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 1312
    .param pmc __lowered_lex_403 
    .param pmc __lowered_lex_404 
    .param pmc __lowered_lex_405 
    .local pmc __lowered_lex_406 
    .local pmc fb_tmp_28 
    root_new $P101, ['parrot';'Continuation']
    set_label $P101, lexotic_594
    .lex "RETURN", $P101
    nqp_decontainerize $P5001, __lowered_lex_403
    nqp_get_sc_object $P5002, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!done", 12
    elements $I5001, $P5003
    box $P5004, $I5001
    set __lowered_lex_406, $P5004
  while212_test596:
    set $N5001, __lowered_lex_406
    set $N5002, 0
    isgt $I5002, $N5001, $N5002
    box $P5017, $I5002
    set $P5016, $P5017
    unless $I5002 goto while212_done600 
  while212_redo598:
.annotate 'line', 1314
    set $N5004, __lowered_lex_406
    set $N5005, 1
    sub $N5003, $N5004, $N5005
    box $P5005, $N5003
    set __lowered_lex_406, $P5005
    nqp_decontainerize $P5006, __lowered_lex_403
    nqp_get_sc_object $P5007, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    repr_get_attr_obj $P5008, $P5006, $P5007, "@!done", 12
    set fb_tmp_28, $P5008
    repr_defined $I5005, fb_tmp_28
    unless $I5005 goto if214_else603 
    set $I5006, __lowered_lex_406
    set $P5009, fb_tmp_28[$I5006]
    set $P5011, $P5009
    goto if214_end604
  if214_else603:
    null $P5010
    set $P5011, $P5010
  if214_end604:
    unless_null $P5011, vivi_215605
    null $P5012
    set $P5011, $P5012
  vivi_215605:
    get_id $I5004, $P5011
    get_id $I5007, __lowered_lex_405
    iseq $I5003, $I5004, $I5007
    box $P5015, $I5003
    set $P5014, $P5015
    unless $I5003 goto if213_end602 
.annotate 'line', 1316
    $P5013 = "RETURN"(1)
    set $P5014, $P5013
  if213_end602:
    set $P5016, $P5014
    goto while212_test596 
  while212_done600:
    $P5018 = "RETURN"(0)
    goto lexotic_595
  lexotic_594:
    .get_results ($P5018)
  lexotic_595:
    .return ($P5018) 
.end
.HLL "nqp"
.namespace []
.sub "can" :subid("cuid_95_1431289877.42775") :anon :lex :outer("cuid_149_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 1323
    .param pmc __lowered_lex_410 
    .param pmc __lowered_lex_411 
    .param pmc __lowered_lex_412 
    .local pmc lowered_for_it__56 
    .local pmc __lowered_lex_409 
    .local pmc __lowered_lex_407 
    .local pmc __lowered_lex_408 
    .local pmc fb_tmp_29 
    root_new $P101, ['parrot';'Continuation']
    set_label $P101, lexotic_606
    .lex "RETURN", $P101
    nqp_decontainerize $P5002, __lowered_lex_410
    nqp_get_sc_object $P5003, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    repr_get_attr_obj $P5004, $P5002, $P5003, "@!mro", 11
    iter $P5001, $P5004
    set lowered_for_it__56, $P5001
    new $P5016, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5016, while216_handlers611
    push_eh $P5016
  while216_test608:
    set $P5015, lowered_for_it__56
    unless lowered_for_it__56 goto while216_done612 
  while216_redo610:
    shift $P5005, lowered_for_it__56
    set __lowered_lex_409, $P5005
.annotate 'line', 1324
.annotate 'line', 1325
    get_how $P5006, __lowered_lex_409
    $P5007 = $P5006."method_table"(__lowered_lex_411)
    set __lowered_lex_407, $P5007
    set fb_tmp_29, __lowered_lex_407
    repr_defined $I5001, fb_tmp_29
    unless $I5001 goto if217_else613 
    set $S5001, __lowered_lex_412
    set $P5008, fb_tmp_29[$S5001]
    set $P5010, $P5008
    goto if217_end614
  if217_else613:
    null $P5009
    set $P5010, $P5009
  if217_end614:
    unless_null $P5010, vivi_218615
    null $P5011
    set $P5010, $P5011
  vivi_218615:
    set __lowered_lex_408, $P5010
    defined $I5002, __lowered_lex_408
    box $P5014, $I5002
    set $P5013, $P5014
    unless $I5002 goto if219_end617 
.annotate 'line', 1327
    $P5012 = "RETURN"(__lowered_lex_408)
    set $P5013, $P5012
  if219_end617:
    set $P5015, $P5013
    goto while216_test608 
  while216_handlers611:
    .get_results ($P5016)
    pop_upto_eh $P5016
    getattribute $P5017, $P5016, 'type'
    eq $P5017, .CONTROL_LOOP_NEXT, while216_test608
    eq $P5017, .CONTROL_LOOP_REDO, while216_redo610
  while216_done612:
    pop_eh 
    $P5018 = "RETURN"(0)
    goto lexotic_607
  lexotic_606:
    .get_results ($P5018)
  lexotic_607:
    .return ($P5018) 
.end
.HLL "nqp"
.namespace []
.sub "find_method" :subid("cuid_96_1431289877.42775") :anon :lex :outer("cuid_149_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 1337
    .param pmc __lowered_lex_416 
    .param pmc __lowered_lex_417 
    .param pmc __lowered_lex_418 
    .param pmc __lowered_lex_419 :named("no_fallback") :optional 
    .param int haz_param_22 :opt_flag 
    .param pmc __lowered_lex_420 :named("no_trace") :optional 
    .param int haz_param_23 :opt_flag 
    .local pmc lowered_for_it__57 
    .local pmc __lowered_lex_415 
    .local pmc __lowered_lex_414 
    .local pmc __lowered_lex_413 
    .local pmc fb_tmp_30 
    if haz_param_22, default636
    box $P5030, 0
    set __lowered_lex_419, $P5030
  default636:
    if haz_param_23, default637
    box $P5031, 0
    set __lowered_lex_420, $P5031
  default637:
    root_new $P101, ['parrot';'Continuation']
    set_label $P101, lexotic_618
    .lex "RETURN", $P101
    nqp_decontainerize $P5002, __lowered_lex_416
    nqp_get_sc_object $P5003, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    repr_get_attr_obj $P5004, $P5002, $P5003, "@!mro", 11
    iter $P5001, $P5004
    set lowered_for_it__57, $P5001
    new $P5027, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5027, while220_handlers623
    push_eh $P5027
  while220_test620:
    set $P5026, lowered_for_it__57
    unless lowered_for_it__57 goto while220_done624 
  while220_redo622:
    shift $P5005, lowered_for_it__57
    set __lowered_lex_415, $P5005
.annotate 'line', 1338
.annotate 'line', 1339
    get_how $P5006, __lowered_lex_415
    $P5007 = $P5006."method_table"(__lowered_lex_417)
    set __lowered_lex_414, $P5007
    set $S5001, __lowered_lex_418
    exists $I5001, __lowered_lex_414[$S5001]
    box $P5025, $I5001
    set $P5024, $P5025
    unless $I5001 goto if221_end626 
.annotate 'line', 1340
    set fb_tmp_30, __lowered_lex_414
    repr_defined $I5002, fb_tmp_30
    unless $I5002 goto if222_else627 
    set $S5002, __lowered_lex_418
    set $P5008, fb_tmp_30[$S5002]
    set $P5010, $P5008
    goto if222_end628
  if222_else627:
    null $P5009
    set $P5010, $P5009
  if222_end628:
    unless_null $P5010, vivi_223629
    null $P5011
    set $P5010, $P5011
  vivi_223629:
    set __lowered_lex_413, $P5010
    nqp_decontainerize $P5012, __lowered_lex_416
    nqp_get_sc_object $P5013, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    repr_get_attr_obj $P5014, $P5012, $P5013, "$!trace", 17
    set $P5015, $P5014
    unless $P5014 goto if226_end635 
    isfalse $I5003, __lowered_lex_420
    box $P5016, $I5003
    set $P5015, $P5016
  if226_end635:
    set $P5019, $P5015
    unless $P5015 goto if225_end633 
.annotate 'line', 1342
    nqp_decontainerize $P5017, __lowered_lex_416
    $P5018 = $P5017."should_trace"(__lowered_lex_417, __lowered_lex_418)
    set $P5019, $P5018
  if225_end633:
    unless $P5019 goto if224_else630 
.annotate 'line', 1343
    nqp_decontainerize $P5020, __lowered_lex_416
    $P5021 = $P5020."make_tracer"(__lowered_lex_418, __lowered_lex_413)
    set $P5022, $P5021
    goto if224_end631
  if224_else630:
    set $P5022, __lowered_lex_413
  if224_end631:
    $P5023 = "RETURN"($P5022)
    set $P5024, $P5023
  if221_end626:
    set $P5026, $P5024
    goto while220_test620 
  while220_handlers623:
    .get_results ($P5027)
    pop_upto_eh $P5027
    getattribute $P5028, $P5027, 'type'
    eq $P5028, .CONTROL_LOOP_NEXT, while220_test620
    eq $P5028, .CONTROL_LOOP_REDO, while220_redo622
  while220_done624:
    pop_eh 
    null $P5029
    goto lexotic_619
  lexotic_618:
    .get_results ($P5029)
  lexotic_619:
    .return ($P5029) 
.end
.HLL "nqp"
.namespace []
.sub "make_tracer" :subid("cuid_97_1431289877.42775") :anon :lex :outer("cuid_149_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 1350
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .const 'Sub' $P5003 = 'cuid_153_1431289877.42775' 
    capture_lex $P5003 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    .lex "$found", _lex_param_2 
    .const 'Sub' $P5002 = 'cuid_153_1431289877.42775' 
    capture_lex $P5002
    newclosure $P5001, $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_153_1431289877.42775") :anon :lex :outer("cuid_97_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 1351
    .param pmc __lowered_lex_421 :slurpy 
    .param pmc __lowered_lex_422 :slurpy :named 
    .local pmc __lowered_lex_423 
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    nqp_get_sc_object $P5003, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    repr_get_attr_obj $P5004, $P5001, $P5003, "$!trace_depth", 18
    set $I5001, $P5004
    repeat $S5002, "  ", $I5001
    find_lex $P5005, "$name"
    set $S5004, $P5005
    concat $S5003, "Calling ", $S5004
    concat $S5001, $S5002, $S5003
    say $S5001
    find_lex $P5007, "self"
    nqp_decontainerize $P5006, $P5007
    nqp_get_sc_object $P5008, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    find_lex $P5010, "self"
    nqp_decontainerize $P5009, $P5010
    nqp_get_sc_object $P5011, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    repr_get_attr_obj $P5012, $P5009, $P5011, "$!trace_depth", 18
    set $N5002, $P5012
    set $N5003, 1
    add $N5001, $N5002, $N5003
    box $P5013, $N5001
    repr_bind_attr_obj $P5006, $P5008, "$!trace_depth", 18, $P5013
.annotate 'line', 1354
    find_lex $P5014, "$found"
    $P5015 = $P5014(__lowered_lex_421 :flat, __lowered_lex_422 :flat :named)
    set __lowered_lex_423, $P5015
    find_lex $P5017, "self"
    nqp_decontainerize $P5016, $P5017
    nqp_get_sc_object $P5018, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    find_lex $P5020, "self"
    nqp_decontainerize $P5019, $P5020
    nqp_get_sc_object $P5021, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    repr_get_attr_obj $P5022, $P5019, $P5021, "$!trace_depth", 18
    set $N5005, $P5022
    set $N5006, 1
    sub $N5004, $N5005, $N5006
    box $P5023, $N5004
    repr_bind_attr_obj $P5016, $P5018, "$!trace_depth", 18, $P5023
    .return (__lowered_lex_423) 
.end
.HLL "nqp"
.namespace []
.sub "cache" :subid("cuid_98_1431289877.42775") :anon :lex :outer("cuid_149_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 1364
    .param pmc __lowered_lex_424 
    .param pmc __lowered_lex_425 
    .param pmc __lowered_lex_426 
    .param pmc __lowered_lex_427 
    .local pmc fb_tmp_31 
    nqp_decontainerize $P5001, __lowered_lex_424
    nqp_get_sc_object $P5002, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    repr_get_attr_obj $P5003, $P5001, $P5002, "%!caches", 13
    nqp_ishash $I5001, $P5003
    if $I5001 goto unless227_end639 
    nqp_decontainerize $P5004, __lowered_lex_424
    nqp_get_sc_object $P5005, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    new $P5006, 'Hash'
    repr_bind_attr_obj $P5004, $P5005, "%!caches", 13, $P5006
  unless227_end639:
    nqp_decontainerize $P5007, __lowered_lex_424
    nqp_get_sc_object $P5008, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    repr_get_attr_obj $P5009, $P5007, $P5008, "%!caches", 13
    set $S5001, __lowered_lex_426
    exists $I5002, $P5009[$S5001]
    unless $I5002 goto if228_else640 
    nqp_decontainerize $P5010, __lowered_lex_424
    nqp_get_sc_object $P5011, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    repr_get_attr_obj $P5012, $P5010, $P5011, "%!caches", 13
    set fb_tmp_31, $P5012
    repr_defined $I5003, fb_tmp_31
    unless $I5003 goto if229_else642 
    set $S5002, __lowered_lex_426
    set $P5013, fb_tmp_31[$S5002]
    set $P5015, $P5013
    goto if229_end643
  if229_else642:
    null $P5014
    set $P5015, $P5014
  if229_end643:
    unless_null $P5015, vivi_230644
    null $P5016
    set $P5015, $P5016
  vivi_230644:
    set $P5021, $P5015
    goto if228_end641
  if228_else640:
    nqp_decontainerize $P5017, __lowered_lex_424
    nqp_get_sc_object $P5018, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    repr_get_attr_obj $P5019, $P5017, $P5018, "%!caches", 13
    set $S5003, __lowered_lex_426
.annotate 'line', 1368
    $P5020 = __lowered_lex_427()
    set $P5019[$S5003], $P5020
    set $P5021, $P5020
  if228_end641:
    .return ($P5021) 
.end
.HLL "nqp"
.namespace []
.sub "flush_cache" :subid("cuid_99_1431289877.42775") :anon :lex :outer("cuid_149_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 1371
    .param pmc __lowered_lex_428 
    .param pmc __lowered_lex_429 
    nqp_disable_sc_write_barrier 
    nqp_decontainerize $P5001, __lowered_lex_428
    nqp_get_sc_object $P5002, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    repr_get_attr_obj $P5003, $P5001, $P5002, "%!caches", 13
    isnull $I5001, $P5003
    if $I5001 goto unless231_end646 
    nqp_decontainerize $P5004, __lowered_lex_428
    nqp_get_sc_object $P5005, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    new $P5006, 'Hash'
    repr_bind_attr_obj $P5004, $P5005, "%!caches", 13, $P5006
  unless231_end646:
    nqp_enable_sc_write_barrier 
    .return (0) 
.end
.HLL "nqp"
.namespace []
.sub "cache_get" :subid("cuid_100_1431289877.42775") :anon :lex :outer("cuid_149_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 1377
    .param pmc __lowered_lex_430 
    .param pmc __lowered_lex_431 
    .param pmc __lowered_lex_432 
    .local pmc __lowered_lex_433 
    nqp_decontainerize $P5001, __lowered_lex_430
    nqp_get_sc_object $P5002, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    repr_get_attr_obj $P5003, $P5001, $P5002, "%!caches", 13
    set __lowered_lex_433, $P5003
    nqp_ishash $I5001, __lowered_lex_433
    unless $I5001 goto if232_else647 
    set $S5001, __lowered_lex_432
    set $P5004, __lowered_lex_433[$S5001]
    set $P5006, $P5004
    goto if232_end648
  if232_else647:
    null $P5005
    set $P5006, $P5005
  if232_end648:
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "cache_add" :subid("cuid_101_1431289877.42775") :anon :lex :outer("cuid_149_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 1382
    .param pmc __lowered_lex_434 
    .param pmc __lowered_lex_435 
    .param pmc __lowered_lex_436 
    .param pmc __lowered_lex_437 
    nqp_decontainerize $P5001, __lowered_lex_434
    nqp_get_sc_object $P5002, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    repr_get_attr_obj $P5003, $P5001, $P5002, "%!caches", 13
    nqp_ishash $I5001, $P5003
    if $I5001 goto unless233_end650 
    nqp_decontainerize $P5004, __lowered_lex_434
    nqp_get_sc_object $P5005, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    new $P5006, 'Hash'
    repr_bind_attr_obj $P5004, $P5005, "%!caches", 13, $P5006
  unless233_end650:
    nqp_decontainerize $P5007, __lowered_lex_434
    nqp_get_sc_object $P5008, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    repr_get_attr_obj $P5009, $P5007, $P5008, "%!caches", 13
    set $S5001, __lowered_lex_436
    set $P5009[$S5001], __lowered_lex_437
    .return (__lowered_lex_437) 
.end
.HLL "nqp"
.namespace []
.sub "set_is_mixin" :subid("cuid_102_1431289877.42775") :anon :lex :outer("cuid_149_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 1391
    .param pmc __lowered_lex_438 
    .param pmc __lowered_lex_439 
    nqp_decontainerize $P5001, __lowered_lex_438
    nqp_get_sc_object $P5002, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    box $P5003, 1
    repr_bind_attr_obj $P5001, $P5002, "$!is_mixin", 14, $P5003
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "is_mixin" :subid("cuid_103_1431289877.42775") :anon :lex :outer("cuid_149_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 1392
    .param pmc __lowered_lex_440 
    .param pmc __lowered_lex_441 
    nqp_decontainerize $P5001, __lowered_lex_440
    nqp_get_sc_object $P5002, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!is_mixin", 14
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "mixin" :subid("cuid_104_1431289877.42775") :anon :lex :outer("cuid_149_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 1394
    .param pmc __lowered_lex_445 
    .param pmc __lowered_lex_446 
    .param pmc _lex_param_0 
    .const 'Sub' $P5048 = 'cuid_154_1431289877.42775' 
    capture_lex $P5048 
    .lex "$found", $P101 
    .lex "$new_type", $P102 
    .lex "$role", _lex_param_0 
    .local pmc __lowered_lex_444 
    null $P5001
    set $P102, $P5001
    box $P5002, 0
    set $P101, $P5002
    nqp_decontainerize $P5003, __lowered_lex_445
    nqp_get_sc_object $P5004, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    repr_get_attr_obj $P5005, $P5003, $P5004, "@!mixin_cache", 22
    isnull $I5001, $P5005
    if $I5001 goto unless234_end652 
.annotate 'line', 1398
    nqp_decontainerize $P5009, __lowered_lex_445
    nqp_get_sc_object $P5010, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    repr_get_attr_obj $P5011, $P5009, $P5010, "@!mixin_cache", 22
    set $P5006, $P5011
    iter $P5008, $P5011
    new $P5013, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5013, for_handlers655
    push_eh $P5013
  for_next656:
    unless $P5008, for_done658
    shift $P5014, $P5008
    shift $P5015, $P5008
  for_redo657:
    .const 'Sub' $P5012 = 'cuid_154_1431289877.42775' 
    capture_lex $P5012
    $P5006 = $P5012($P5014, $P5015)
    goto for_next656
  for_handlers655:
    .get_results ($P5013)
    pop_upto_eh $P5013
    getattribute $P5016, $P5013, 'type'
    eq $P5016, .CONTROL_LOOP_NEXT, for_next656
    eq $P5016, .CONTROL_LOOP_REDO, for_redo657
  for_done658:
    pop_eh 
  unless234_end652:
    if $P101 goto unless236_end660 
.annotate 'line', 1409
    isnull $I5003, __lowered_lex_446
    not $I5002, $I5003
    box $P5020, $I5002
    set $P5019, $P5020
    if $I5002 goto unless238_end664 
.annotate 'line', 1411
    nqp_decontainerize $P5017, __lowered_lex_445
    $P5018 = $P5017."is_mixin"(__lowered_lex_446)
    set $P5019, $P5018
  unless238_end664:
    unless $P5019 goto if237_end662 
    nqp_decontainerize $P5021, __lowered_lex_445
    $P5022 = $P5021."flush_cache"(__lowered_lex_446)
  if237_end662:
.annotate 'line', 1413
    nqp_decontainerize $P5023, __lowered_lex_445
    $P5024 = $P5023."name"(__lowered_lex_446)
    set $S5004, $P5024
    concat $S5003, $S5004, "+{"
    get_how $P5025, _lex_param_0
    $P5026 = $P5025."name"(_lex_param_0)
    set $S5005, $P5026
    concat $S5002, $S5003, $S5005
    concat $S5001, $S5002, "}"
    box $P5027, $S5001
    set __lowered_lex_444, $P5027
.annotate 'line', 1417
    nqp_decontainerize $P5028, __lowered_lex_445
    repr_name $S5006, __lowered_lex_446
    $P5029 = $P5028."new_type"(__lowered_lex_444 :named("name"), $S5006 :named("repr"))
    set $P102, $P5029
.annotate 'line', 1418
    get_how $P5030, $P102
    $P5030."set_is_mixin"($P102)
.annotate 'line', 1419
    get_how $P5031, $P102
    get_what $P5032, __lowered_lex_446
    $P5031."add_parent"($P102, $P5032)
.annotate 'line', 1420
    get_how $P5033, $P102
    $P5033."add_role"($P102, _lex_param_0)
.annotate 'line', 1421
    get_how $P5034, $P102
    $P5034."compose"($P102)
    nqp_disable_sc_write_barrier 
    nqp_decontainerize $P5035, __lowered_lex_445
    nqp_get_sc_object $P5036, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    repr_get_attr_obj $P5037, $P5035, $P5036, "@!mixin_cache", 22
    isnull $I5004, $P5037
    unless $I5004 goto if239_end666 
    nqp_decontainerize $P5038, __lowered_lex_445
    nqp_get_sc_object $P5039, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    new $P5040, 'QRPA'
    repr_bind_attr_obj $P5038, $P5039, "@!mixin_cache", 22, $P5040
  if239_end666:
    nqp_decontainerize $P5041, __lowered_lex_445
    nqp_get_sc_object $P5042, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    repr_get_attr_obj $P5043, $P5041, $P5042, "@!mixin_cache", 22
    push $P5043, _lex_param_0
    nqp_decontainerize $P5044, __lowered_lex_445
    nqp_get_sc_object $P5045, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    repr_get_attr_obj $P5046, $P5044, $P5045, "@!mixin_cache", 22
    push $P5046, $P102
    nqp_enable_sc_write_barrier 
  unless236_end660:
    repr_defined $I5005, __lowered_lex_446
    unless $I5005 goto if240_else667 
    repr_change_type __lowered_lex_446, $P102
    set $P5047, __lowered_lex_446
    goto if240_end668
  if240_else667:
    set $P5047, $P102
  if240_end668:
    .return ($P5047) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_154_1431289877.42775") :anon :lex :outer("cuid_104_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 1399
    .param pmc __lowered_lex_442 
    .param pmc __lowered_lex_443 
    get_id $I5002, __lowered_lex_442
    find_lex $P5001, "$role"
    get_id $I5003, $P5001
    iseq $I5001, $I5002, $I5003
    set $I5004, $I5001
    unless $I5001 goto if235_end654 
.annotate 'line', 1400
    store_lex "$new_type", __lowered_lex_443
    box $P5002, 1
    store_lex "$found", $P5002
    die 0, .CONTROL_LOOP_LAST
    set $I5004, 0
  if235_end654:
    .return ($I5004) 
.end
.HLL "nqp"
.namespace []
.sub "trace-on" :subid("cuid_105_1431289877.42775") :anon :lex :outer("cuid_149_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 1442
    .param pmc __lowered_lex_447 
    .param pmc __lowered_lex_448 
    .param pmc __lowered_lex_449 :optional 
    .param int haz_param_24 :opt_flag 
    .param pmc __lowered_lex_450 :named("exclude") :optional 
    .param int haz_param_25 :opt_flag 
    if haz_param_24, default670
    null $P5011
    set __lowered_lex_449, $P5011
  default670:
    if haz_param_25, default671
    new $P5012, 'QRPA'
    assign $P5012, 5
    assign $P5012, 0
    box $P5013, "MATCH"
    push $P5012, $P5013
    box $P5014, "CAPHASH"
    push $P5012, $P5014
    box $P5015, "CREATE"
    push $P5012, $P5015
    box $P5016, "orig"
    push $P5012, $P5016
    box $P5017, "pos"
    push $P5012, $P5017
    set __lowered_lex_450, $P5012
  default671:
    nqp_decontainerize $P5001, __lowered_lex_447
    nqp_get_sc_object $P5002, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    box $P5003, 1
    repr_bind_attr_obj $P5001, $P5002, "$!trace", 17, $P5003
    nqp_decontainerize $P5004, __lowered_lex_447
    nqp_get_sc_object $P5005, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    set $P5006, __lowered_lex_449
    defined $I5001, $P5006
    if $I5001, defor669
    box $P5007, 0
    set $P5006, $P5007
  defor669:
    repr_bind_attr_obj $P5004, $P5005, "$!trace_depth", 18, $P5006
    nqp_decontainerize $P5008, __lowered_lex_447
    nqp_get_sc_object $P5009, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    repr_bind_attr_obj $P5008, $P5009, "@!trace_exclude", 19, __lowered_lex_450
    set_method_cache_authoritativeness __lowered_lex_448, 0
    new $P5010, 'Hash'
    publish_method_cache __lowered_lex_448, $P5010
    .return (__lowered_lex_448) 
.end
.HLL "nqp"
.namespace []
.sub "trace-off" :subid("cuid_106_1431289877.42775") :anon :lex :outer("cuid_149_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 1449
    .param pmc __lowered_lex_451 
    .param pmc __lowered_lex_452 
    nqp_decontainerize $P5001, __lowered_lex_451
    nqp_get_sc_object $P5002, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    box $P5003, 0
    repr_bind_attr_obj $P5001, $P5002, "$!trace", 17, $P5003
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "should_trace" :subid("cuid_107_1431289877.42775") :anon :lex :outer("cuid_149_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 1452
    .param pmc __lowered_lex_454 
    .param pmc __lowered_lex_455 
    .param pmc __lowered_lex_456 
    .local pmc lowered_for_it__58 
    .local pmc __lowered_lex_453 
    root_new $P101, ['parrot';'Continuation']
    set_label $P101, lexotic_672
    .lex "RETURN", $P101
    set $S5002, __lowered_lex_456
    substr $S5001, $S5002, 0, 1
    iseq $I5001, $S5001, "!"
    unless $I5001 goto if241_end675 
    $P5001 = "RETURN"(0)
  if241_end675:
    nqp_decontainerize $P5003, __lowered_lex_454
    nqp_get_sc_object $P5004, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    repr_get_attr_obj $P5005, $P5003, $P5004, "@!trace_exclude", 19
    iter $P5002, $P5005
    set lowered_for_it__58, $P5002
    new $P5011, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5011, while242_handlers679
    push_eh $P5011
  while242_test676:
    set $P5010, lowered_for_it__58
    unless lowered_for_it__58 goto while242_done680 
  while242_redo678:
    shift $P5006, lowered_for_it__58
    set __lowered_lex_453, $P5006
.annotate 'line', 1454
    set $S5003, __lowered_lex_456
    set $S5004, __lowered_lex_453
    iseq $I5002, $S5003, $S5004
    box $P5009, $I5002
    set $P5008, $P5009
    unless $I5002 goto if243_end682 
    $P5007 = "RETURN"(0)
    set $P5008, $P5007
  if243_end682:
    set $P5010, $P5008
    goto while242_test676 
  while242_handlers679:
    .get_results ($P5011)
    pop_upto_eh $P5011
    getattribute $P5012, $P5011, 'type'
    eq $P5012, .CONTROL_LOOP_NEXT, while242_test676
    eq $P5012, .CONTROL_LOOP_REDO, while242_redo678
  while242_done680:
    pop_eh 
    box $P5013, 1
    goto lexotic_673
  lexotic_672:
    .get_results ($P5013)
  lexotic_673:
    .return ($P5013) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_155_1431289877.42775") :anon :lex :outer("cuid_140_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 1462
    .const 'Sub' $P5012 = 'cuid_108_1431289877.42775' 
    capture_lex $P5012 
    .const 'Sub' $P5012 = 'cuid_109_1431289877.42775' 
    capture_lex $P5012 
    .const 'Sub' $P5012 = 'cuid_110_1431289877.42775' 
    capture_lex $P5012 
    .const 'Sub' $P5012 = 'cuid_111_1431289877.42775' 
    capture_lex $P5012 
    .const 'Sub' $P5012 = 'cuid_112_1431289877.42775' 
    capture_lex $P5012 
    .const 'Sub' $P5012 = 'cuid_113_1431289877.42775' 
    capture_lex $P5012 
    .const 'Sub' $P5012 = 'cuid_114_1431289877.42775' 
    capture_lex $P5012 
    .const 'Sub' $P5012 = 'cuid_115_1431289877.42775' 
    capture_lex $P5012 
    .const 'Sub' $P5012 = 'cuid_116_1431289877.42775' 
    capture_lex $P5012 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .lex "$archetypes", $P103 
.annotate 'line', 1466
    nqp_get_sc_object $P5001, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 1
    $P5002 = $P5001."new"(1 :named("nominal"))
    set $P103, $P5002
    .const 'Sub' $P5003 = 'cuid_108_1431289877.42775' 
    capture_lex $P5003
    .const 'Sub' $P5004 = 'cuid_109_1431289877.42775' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_110_1431289877.42775' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_111_1431289877.42775' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_112_1431289877.42775' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_113_1431289877.42775' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_114_1431289877.42775' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_115_1431289877.42775' 
    capture_lex $P5010
    .const 'Sub' $P5011 = 'cuid_116_1431289877.42775' 
    capture_lex $P5011
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "archetypes" :subid("cuid_108_1431289877.42775") :anon :lex :outer("cuid_155_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 1467
    .param pmc __lowered_lex_457 
    find_lex $P5001, "$archetypes"
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "new" :subid("cuid_109_1431289877.42775") :anon :lex :outer("cuid_155_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 1471
    .param pmc __lowered_lex_458 
    .param pmc __lowered_lex_459 :named("name") :optional 
    .param int haz_param_26 :opt_flag 
    .local pmc __lowered_lex_460 
    if haz_param_26, default683
    null $P5003
    set __lowered_lex_459, $P5003
  default683:
    nqp_decontainerize $P5002, __lowered_lex_458
    repr_instance_of $P5001, $P5002
    set __lowered_lex_460, $P5001
.annotate 'line', 1473
    __lowered_lex_460."BUILD"(__lowered_lex_459 :named("name"))
    .return (__lowered_lex_460) 
.end
.HLL "nqp"
.namespace []
.sub "BUILD" :subid("cuid_110_1431289877.42775") :anon :lex :outer("cuid_155_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 1477
    .param pmc __lowered_lex_461 
    .param pmc __lowered_lex_462 :named("name") :optional 
    .param int haz_param_27 :opt_flag 
    if haz_param_27, default684
    null $P5006
    set __lowered_lex_462, $P5006
  default684:
    nqp_decontainerize $P5001, __lowered_lex_461
    nqp_get_sc_object $P5002, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 8
    repr_bind_attr_obj $P5001, $P5002, "$!name", 0, __lowered_lex_462
    nqp_decontainerize $P5003, __lowered_lex_461
    nqp_get_sc_object $P5004, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 8
    box $P5005, 0
    repr_bind_attr_obj $P5003, $P5004, "$!composed", 1, $P5005
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "new_type" :subid("cuid_111_1431289877.42775") :anon :lex :outer("cuid_155_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 1485
    .param pmc __lowered_lex_463 
    .param pmc __lowered_lex_464 :named("name") :optional 
    .param int haz_param_28 :opt_flag 
    .param pmc __lowered_lex_465 :named("repr") 
    .local pmc __lowered_lex_466 
    if haz_param_28, default685
    box $P5005, "<anon>"
    set __lowered_lex_464, $P5005
  default685:
.annotate 'line', 1486
    nqp_decontainerize $P5001, __lowered_lex_463
    $P5002 = $P5001."new"(__lowered_lex_464 :named("name"))
    set __lowered_lex_466, $P5002
    set $S5001, __lowered_lex_465
    repr_type_object_for $P5003, __lowered_lex_466, $S5001
    new $P5004, 'Hash'
    set_who $P5003, $P5004
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "add_method" :subid("cuid_112_1431289877.42775") :anon :lex :outer("cuid_155_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 1490
    .param pmc __lowered_lex_467 
    .param pmc __lowered_lex_468 
    .param pmc __lowered_lex_469 
    .param pmc __lowered_lex_470 
    box $P5001, "Native types may not have methods (must be boxed to call method)"
    die $P5001
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "add_multi_method" :subid("cuid_113_1431289877.42775") :anon :lex :outer("cuid_155_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 1494
    .param pmc __lowered_lex_471 
    .param pmc __lowered_lex_472 
    .param pmc __lowered_lex_473 
    .param pmc __lowered_lex_474 
    box $P5001, "Native types may not have methods (must be boxed to call method)"
    die $P5001
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "add_attribute" :subid("cuid_114_1431289877.42775") :anon :lex :outer("cuid_155_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 1498
    .param pmc __lowered_lex_475 
    .param pmc __lowered_lex_476 
    .param pmc __lowered_lex_477 
    box $P5001, "Native types may not have attributes"
    die $P5001
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "compose" :subid("cuid_115_1431289877.42775") :anon :lex :outer("cuid_155_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 1502
    .param pmc __lowered_lex_478 
    .param pmc __lowered_lex_479 
    nqp_decontainerize $P5001, __lowered_lex_478
    nqp_get_sc_object $P5002, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 8
    box $P5003, 1
    repr_bind_attr_obj $P5001, $P5002, "$!composed", 1, $P5003
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "name" :subid("cuid_116_1431289877.42775") :anon :lex :outer("cuid_155_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 1506
    .param pmc __lowered_lex_480 
    .param pmc __lowered_lex_481 
    nqp_decontainerize $P5001, __lowered_lex_480
    nqp_get_sc_object $P5002, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 8
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!name", 0
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_156_1431289877.42775") :anon :lex :outer("cuid_140_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 1512
    .const 'Sub' $P5014 = 'cuid_117_1431289877.42775' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_118_1431289877.42775' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_119_1431289877.42775' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_120_1431289877.42775' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_121_1431289877.42775' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_122_1431289877.42775' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_123_1431289877.42775' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_124_1431289877.42775' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_125_1431289877.42775' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_126_1431289877.42775' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_127_1431289877.42775' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_128_1431289877.42775' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_129_1431289877.42775' 
    capture_lex $P5014 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_117_1431289877.42775' 
    capture_lex $P5001
    .const 'Sub' $P5002 = 'cuid_118_1431289877.42775' 
    capture_lex $P5002
    .const 'Sub' $P5003 = 'cuid_119_1431289877.42775' 
    capture_lex $P5003
    .const 'Sub' $P5004 = 'cuid_120_1431289877.42775' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_121_1431289877.42775' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_122_1431289877.42775' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_123_1431289877.42775' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_124_1431289877.42775' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_125_1431289877.42775' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_126_1431289877.42775' 
    capture_lex $P5010
    .const 'Sub' $P5011 = 'cuid_127_1431289877.42775' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_128_1431289877.42775' 
    capture_lex $P5012
    .const 'Sub' $P5013 = 'cuid_129_1431289877.42775' 
    capture_lex $P5013
    .return ($P5013) 
.end
.HLL "nqp"
.namespace []
.sub "new" :subid("cuid_117_1431289877.42775") :anon :lex :outer("cuid_156_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 1522
    .param pmc __lowered_lex_482 
    .param pmc __lowered_lex_483 :named("name") 
    .param pmc __lowered_lex_484 :named("box_target") :optional 
    .param int haz_param_29 :opt_flag 
    .param pmc __lowered_lex_485 :slurpy :named 
    .local pmc __lowered_lex_486 
    if haz_param_29, default686
    null $P5003
    set __lowered_lex_484, $P5003
  default686:
    nqp_decontainerize $P5002, __lowered_lex_482
    repr_instance_of $P5001, $P5002
    set __lowered_lex_486, $P5001
.annotate 'line', 1524
    exists $I5001, __lowered_lex_485["type"]
    exists $I5002, __lowered_lex_485["default"]
    __lowered_lex_486."BUILD"(__lowered_lex_483 :named("name"), __lowered_lex_485 :flat :named, __lowered_lex_484 :named("box_target"), $I5001 :named("has_type"), $I5002 :named("has_default"))
    .return (__lowered_lex_486) 
.end
.HLL "nqp"
.namespace []
.sub "BUILD" :subid("cuid_118_1431289877.42775") :anon :lex :outer("cuid_156_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 1530
    .param pmc __lowered_lex_487 
    .param pmc __lowered_lex_488 :named("name") :optional 
    .param int haz_param_30 :opt_flag 
    .param pmc __lowered_lex_489 :named("type") :optional 
    .param int haz_param_31 :opt_flag 
    .param pmc __lowered_lex_490 :named("has_type") :optional 
    .param int haz_param_32 :opt_flag 
    .param pmc __lowered_lex_491 :named("box_target") :optional 
    .param int haz_param_33 :opt_flag 
    .param pmc __lowered_lex_492 :named("default") :optional 
    .param int haz_param_34 :opt_flag 
    .param pmc __lowered_lex_493 :named("has_default") :optional 
    .param int haz_param_35 :opt_flag 
    if haz_param_30, default687
    null $P5013
    set __lowered_lex_488, $P5013
  default687:
    if haz_param_31, default688
    null $P5014
    set __lowered_lex_489, $P5014
  default688:
    if haz_param_32, default689
    null $P5015
    set __lowered_lex_490, $P5015
  default689:
    if haz_param_33, default690
    null $P5016
    set __lowered_lex_491, $P5016
  default690:
    if haz_param_34, default691
    null $P5017
    set __lowered_lex_492, $P5017
  default691:
    if haz_param_35, default692
    null $P5018
    set __lowered_lex_493, $P5018
  default692:
    nqp_decontainerize $P5001, __lowered_lex_487
    nqp_get_sc_object $P5002, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 9
    repr_bind_attr_obj $P5001, $P5002, "$!name", 0, __lowered_lex_488
    nqp_decontainerize $P5003, __lowered_lex_487
    nqp_get_sc_object $P5004, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 9
    repr_bind_attr_obj $P5003, $P5004, "$!type", 1, __lowered_lex_489
    nqp_decontainerize $P5005, __lowered_lex_487
    nqp_get_sc_object $P5006, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 9
    repr_bind_attr_obj $P5005, $P5006, "$!has_type", 2, __lowered_lex_490
    nqp_decontainerize $P5007, __lowered_lex_487
    nqp_get_sc_object $P5008, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 9
    repr_bind_attr_obj $P5007, $P5008, "$!box_target", 3, __lowered_lex_491
    nqp_decontainerize $P5009, __lowered_lex_487
    nqp_get_sc_object $P5010, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 9
    repr_bind_attr_obj $P5009, $P5010, "$!default", 4, __lowered_lex_492
    nqp_decontainerize $P5011, __lowered_lex_487
    nqp_get_sc_object $P5012, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 9
    repr_bind_attr_obj $P5011, $P5012, "$!has_default", 5, __lowered_lex_493
    .return (__lowered_lex_493) 
.end
.HLL "nqp"
.namespace []
.sub "name" :subid("cuid_119_1431289877.42775") :anon :lex :outer("cuid_156_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 1539
    .param pmc __lowered_lex_494 
    nqp_decontainerize $P5001, __lowered_lex_494
    nqp_get_sc_object $P5002, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 9
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!name", 0
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "type" :subid("cuid_120_1431289877.42775") :anon :lex :outer("cuid_156_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 1543
    .param pmc __lowered_lex_495 
    nqp_decontainerize $P5001, __lowered_lex_495
    nqp_get_sc_object $P5002, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 9
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!has_type", 2
    unless $P5003 goto if244_else693 
    nqp_decontainerize $P5004, __lowered_lex_495
    nqp_get_sc_object $P5005, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 9
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!type", 1
    set $P5008, $P5006
    goto if244_end694
  if244_else693:
    null $P5007
    set $P5008, $P5007
  if244_end694:
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "has_accessor" :subid("cuid_121_1431289877.42775") :anon :lex :outer("cuid_156_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 1547
    .param pmc __lowered_lex_496 
    .return (0) 
.end
.HLL "nqp"
.namespace []
.sub "build_closure" :subid("cuid_122_1431289877.42775") :anon :lex :outer("cuid_156_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 1551
    .param pmc __lowered_lex_497 
    .return (0) 
.end
.HLL "nqp"
.namespace []
.sub "box_target" :subid("cuid_123_1431289877.42775") :anon :lex :outer("cuid_156_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 1555
    .param pmc __lowered_lex_498 
    nqp_decontainerize $P5001, __lowered_lex_498
    nqp_get_sc_object $P5002, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 9
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!box_target", 3
    isnull $I5002, $P5003
    not $I5001, $I5002
    box $P5008, $I5001
    set $P5007, $P5008
    unless $I5001 goto if246_end698 
    nqp_decontainerize $P5004, __lowered_lex_498
    nqp_get_sc_object $P5005, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 9
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!box_target", 3
    set $P5007, $P5006
  if246_end698:
    unless $P5007 goto if245_else695 
    set $I5003, 1
    goto if245_end696
  if245_else695:
    set $I5003, 0
  if245_end696:
    .return ($I5003) 
.end
.HLL "nqp"
.namespace []
.sub "auto_viv_container" :subid("cuid_124_1431289877.42775") :anon :lex :outer("cuid_156_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 1559
    .param pmc __lowered_lex_499 
    nqp_decontainerize $P5001, __lowered_lex_499
    nqp_get_sc_object $P5002, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 9
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!has_default", 5
    unless $P5003 goto if247_else699 
    nqp_decontainerize $P5004, __lowered_lex_499
    nqp_get_sc_object $P5005, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 9
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!default", 4
    set $P5008, $P5006
    goto if247_end700
  if247_else699:
    null $P5007
    set $P5008, $P5007
  if247_end700:
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "set_positional_delegate" :subid("cuid_125_1431289877.42775") :anon :lex :outer("cuid_156_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 1563
    .param pmc __lowered_lex_500 
    .param pmc __lowered_lex_501 
    nqp_decontainerize $P5001, __lowered_lex_500
    nqp_get_sc_object $P5002, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 9
    repr_bind_attr_obj $P5001, $P5002, "$!positional_delegate", 6, __lowered_lex_501
    .return (__lowered_lex_501) 
.end
.HLL "nqp"
.namespace []
.sub "set_associative_delegate" :subid("cuid_126_1431289877.42775") :anon :lex :outer("cuid_156_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 1567
    .param pmc __lowered_lex_502 
    .param pmc __lowered_lex_503 
    nqp_decontainerize $P5001, __lowered_lex_502
    nqp_get_sc_object $P5002, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 9
    repr_bind_attr_obj $P5001, $P5002, "$!associative_delegate", 7, __lowered_lex_503
    .return (__lowered_lex_503) 
.end
.HLL "nqp"
.namespace []
.sub "positional_delegate" :subid("cuid_127_1431289877.42775") :anon :lex :outer("cuid_156_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 1571
    .param pmc __lowered_lex_504 
    nqp_decontainerize $P5001, __lowered_lex_504
    nqp_get_sc_object $P5002, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 9
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!positional_delegate", 6
    isnull $I5002, $P5003
    not $I5001, $I5002
    box $P5008, $I5001
    set $P5007, $P5008
    unless $I5001 goto if249_end704 
    nqp_decontainerize $P5004, __lowered_lex_504
    nqp_get_sc_object $P5005, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 9
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!positional_delegate", 6
    set $P5007, $P5006
  if249_end704:
    unless $P5007 goto if248_else701 
    set $I5003, 1
    goto if248_end702
  if248_else701:
    set $I5003, 0
  if248_end702:
    .return ($I5003) 
.end
.HLL "nqp"
.namespace []
.sub "associative_delegate" :subid("cuid_128_1431289877.42775") :anon :lex :outer("cuid_156_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 1575
    .param pmc __lowered_lex_505 
    nqp_decontainerize $P5001, __lowered_lex_505
    nqp_get_sc_object $P5002, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 9
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!associative_delegate", 7
    isnull $I5002, $P5003
    not $I5001, $I5002
    box $P5008, $I5001
    set $P5007, $P5008
    unless $I5001 goto if251_end708 
    nqp_decontainerize $P5004, __lowered_lex_505
    nqp_get_sc_object $P5005, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 9
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!associative_delegate", 7
    set $P5007, $P5006
  if251_end708:
    unless $P5007 goto if250_else705 
    set $I5003, 1
    goto if250_end706
  if250_else705:
    set $I5003, 0
  if250_end706:
    .return ($I5003) 
.end
.HLL "nqp"
.namespace []
.sub "compose" :subid("cuid_129_1431289877.42775") :anon :lex :outer("cuid_156_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 1579
    .param pmc __lowered_lex_506 
    .param pmc __lowered_lex_507 
    .return (__lowered_lex_507) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_157_1431289877.42775") :anon :lex :outer("cuid_140_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 1585
    .const 'Sub' $P5013 = 'cuid_130_1431289877.42775' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_131_1431289877.42775' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_132_1431289877.42775' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_133_1431289877.42775' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_134_1431289877.42775' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_135_1431289877.42775' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_136_1431289877.42775' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_137_1431289877.42775' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_138_1431289877.42775' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_139_1431289877.42775' 
    capture_lex $P5013 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .lex "$archetypes", $P103 
.annotate 'line', 1589
    nqp_get_sc_object $P5001, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 1
    $P5002 = $P5001."new"()
    set $P103, $P5002
    .const 'Sub' $P5003 = 'cuid_130_1431289877.42775' 
    capture_lex $P5003
    .const 'Sub' $P5004 = 'cuid_131_1431289877.42775' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_132_1431289877.42775' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_133_1431289877.42775' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_134_1431289877.42775' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_135_1431289877.42775' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_136_1431289877.42775' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_137_1431289877.42775' 
    capture_lex $P5010
    .const 'Sub' $P5011 = 'cuid_138_1431289877.42775' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_139_1431289877.42775' 
    capture_lex $P5012
    .return ($P5012) 
.end
.HLL "nqp"
.namespace []
.sub "archetypes" :subid("cuid_130_1431289877.42775") :anon :lex :outer("cuid_157_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 1590
    .param pmc __lowered_lex_508 
    find_lex $P5001, "$archetypes"
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "new" :subid("cuid_131_1431289877.42775") :anon :lex :outer("cuid_157_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 1594
    .param pmc __lowered_lex_509 
    .param pmc __lowered_lex_510 :named("name") :optional 
    .param int haz_param_36 :opt_flag 
    .local pmc __lowered_lex_511 
    if haz_param_36, default709
    null $P5003
    set __lowered_lex_510, $P5003
  default709:
    nqp_decontainerize $P5002, __lowered_lex_509
    repr_instance_of $P5001, $P5002
    set __lowered_lex_511, $P5001
.annotate 'line', 1596
    __lowered_lex_511."BUILD"(__lowered_lex_510 :named("name"))
    .return (__lowered_lex_511) 
.end
.HLL "nqp"
.namespace []
.sub "BUILD" :subid("cuid_132_1431289877.42775") :anon :lex :outer("cuid_157_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 1600
    .param pmc __lowered_lex_512 
    .param pmc __lowered_lex_513 :named("name") :optional 
    .param int haz_param_37 :opt_flag 
    if haz_param_37, default710
    null $P5006
    set __lowered_lex_513, $P5006
  default710:
    nqp_decontainerize $P5001, __lowered_lex_512
    nqp_get_sc_object $P5002, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 10
    repr_bind_attr_obj $P5001, $P5002, "$!name", 0, __lowered_lex_513
    nqp_decontainerize $P5003, __lowered_lex_512
    nqp_get_sc_object $P5004, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 10
    box $P5005, 0
    repr_bind_attr_obj $P5003, $P5004, "$!composed", 1, $P5005
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "new_type" :subid("cuid_133_1431289877.42775") :anon :lex :outer("cuid_157_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 1607
    .param pmc __lowered_lex_514 
    .param pmc __lowered_lex_515 :named("name") :optional 
    .param int haz_param_38 :opt_flag 
    .local pmc __lowered_lex_516 
    if haz_param_38, default711
    box $P5005, "<anon>"
    set __lowered_lex_515, $P5005
  default711:
.annotate 'line', 1608
    nqp_decontainerize $P5001, __lowered_lex_514
    $P5002 = $P5001."new"(__lowered_lex_515 :named("name"))
    set __lowered_lex_516, $P5002
    repr_type_object_for $P5003, __lowered_lex_516, "Uninstantiable"
    new $P5004, 'Hash'
    set_who $P5003, $P5004
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "add_method" :subid("cuid_134_1431289877.42775") :anon :lex :outer("cuid_157_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 1612
    .param pmc __lowered_lex_517 
    .param pmc __lowered_lex_518 
    .param pmc __lowered_lex_519 
    .param pmc __lowered_lex_520 
    box $P5001, "Modules may not have methods"
    die $P5001
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "add_multi_method" :subid("cuid_135_1431289877.42775") :anon :lex :outer("cuid_157_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 1616
    .param pmc __lowered_lex_521 
    .param pmc __lowered_lex_522 
    .param pmc __lowered_lex_523 
    .param pmc __lowered_lex_524 
    box $P5001, "Modules may not have methods"
    die $P5001
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "add_attribute" :subid("cuid_136_1431289877.42775") :anon :lex :outer("cuid_157_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 1620
    .param pmc __lowered_lex_525 
    .param pmc __lowered_lex_526 
    .param pmc __lowered_lex_527 
    box $P5001, "Modules may not have attributes"
    die $P5001
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "compose" :subid("cuid_137_1431289877.42775") :anon :lex :outer("cuid_157_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 1624
    .param pmc __lowered_lex_528 
    .param pmc __lowered_lex_529 
    .local pmc __lowered_lex_530 
    new $P5001, 'Hash'
    set __lowered_lex_530, $P5001
    publish_method_cache __lowered_lex_529, __lowered_lex_530
    set_method_cache_authoritativeness __lowered_lex_529, 1
    nqp_decontainerize $P5002, __lowered_lex_528
    nqp_get_sc_object $P5003, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 10
    box $P5004, 1
    repr_bind_attr_obj $P5002, $P5003, "$!composed", 1, $P5004
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "find_method" :subid("cuid_138_1431289877.42775") :anon :lex :outer("cuid_157_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 1630
    .param pmc __lowered_lex_531 
    .param pmc __lowered_lex_532 
    .param pmc __lowered_lex_533 
    .param pmc __lowered_lex_534 :slurpy :named 
    null $P5001
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "name" :subid("cuid_139_1431289877.42775") :anon :lex :outer("cuid_157_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 1634
    .param pmc __lowered_lex_535 
    .param pmc __lowered_lex_536 
    nqp_decontainerize $P5001, __lowered_lex_535
    nqp_get_sc_object $P5002, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 10
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!name", 0
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_158_1431289877.42775") :anon :lex :outer("cuid_140_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
.annotate 'line', 1642
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    nqp_disable_sc_write_barrier 
    get_who $P5001, $P101
    nqp_get_sc_object $P5002, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 10
    set $P5001["module"], $P5002
    get_who $P5003, $P101
    nqp_get_sc_object $P5004, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    set $P5003["class"], $P5004
    get_who $P5005, $P101
    nqp_get_sc_object $P5006, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 9
    set $P5005["class-attr"], $P5006
    get_who $P5007, $P101
    nqp_get_sc_object $P5008, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    set $P5007["grammar"], $P5008
    get_who $P5009, $P101
    nqp_get_sc_object $P5010, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 9
    set $P5009["grammar-attr"], $P5010
    get_who $P5011, $P101
    nqp_get_sc_object $P5012, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 6
    set $P5011["role"], $P5012
    get_who $P5013, $P101
    nqp_get_sc_object $P5014, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 9
    set $P5013["role-attr"], $P5014
    get_who $P5015, $P101
    nqp_get_sc_object $P5016, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 8
    set $P5015["native"], $P5016
    nqp_enable_sc_write_barrier 
    .return (0) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_160_1431289877.42775") :load :init
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
    .const 'Sub' $P5001 = 'cuid_159_1431289877.42775' 
    capture_lex $P5001 
    .local pmc cur_sc 
    .local pmc conflicts 
    nqp_dynop_setup 
    nqp_bigint_setup 
    getinterp $P5001
    get_class $P5002, "LexPad"
    get_class $P5003, "NQPLexPad"
    $P5004 = $P5001."hll_map"($P5002, $P5003)
    nqp_create_sc $P5001, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024"
    set cur_sc, $P5001
    $P5002 = cur_sc."set_description"("gen/parrot/stage2/nqpmo.nqp")
    new $P5003, 'QRPA'
    set conflicts, $P5003
    new $P5004, 'ResizableStringArray'
    assign $P5004, 135
    assign $P5004, 0
    null $S5001
    push $P5004, $S5001
    push $P5004, "P6opaque"
    push $P5004, "RoleToRoleApplier"
    push $P5004, "NQPConcreteRoleHOW"
    push $P5004, "RoleToClassApplier"
    push $P5004, "NQPCurriedRoleHOW"
    push $P5004, "NQPParametricRoleHOW"
    push $P5004, "NQPClassHOW"
    push $P5004, "NQPNativeHOW"
    push $P5004, "NQPAttribute"
    push $P5004, "NQPModuleHOW"
    push $P5004, "new"
    push $P5004, "BUILD"
    push $P5004, "nominal"
    push $P5004, "nominalizable"
    push $P5004, "inheritable"
    push $P5004, "inheritalizable"
    push $P5004, "composable"
    push $P5004, "composalizable"
    push $P5004, "generic"
    push $P5004, "parametric"
    push $P5004, "$!nominal"
    push $P5004, "$!nominalizable"
    push $P5004, "$!inheritable"
    push $P5004, "$!inheritalizable"
    push $P5004, "$!composable"
    push $P5004, "$!composalizable"
    push $P5004, "$!generic"
    push $P5004, "$!parametric"
    push $P5004, "apply"
    push $P5004, "archetypes"
    push $P5004, "new_type"
    push $P5004, "add_method"
    push $P5004, "add_multi_method"
    push $P5004, "add_attribute"
    push $P5004, "add_parent"
    push $P5004, "add_role"
    push $P5004, "add_collision"
    push $P5004, "compose"
    push $P5004, "methods"
    push $P5004, "method_table"
    push $P5004, "collisions"
    push $P5004, "name"
    push $P5004, "attributes"
    push $P5004, "roles"
    push $P5004, "role_typecheck_list"
    push $P5004, "instance_of"
    push $P5004, "$!name"
    push $P5004, "$!instance_of"
    push $P5004, "@!attributes"
    push $P5004, "%!methods"
    push $P5004, "@!multi_methods_to_incorporate"
    push $P5004, "@!collisions"
    push $P5004, "@!roles"
    push $P5004, "@!role_typecheck_list"
    push $P5004, "$!composed"
    push $P5004, "specialize"
    push $P5004, "curried_role"
    push $P5004, "$!curried_role"
    push $P5004, "@!pos_args"
    push $P5004, "set_body_block"
    push $P5004, "curry"
    push $P5004, "$!body_block"
    push $P5004, "set_default_parent"
    push $P5004, "reparent"
    push $P5004, "add_parrot_vtable_mapping"
    push $P5004, "add_parrot_vtable_handler_mapping"
    push $P5004, "compose_repr"
    push $P5004, "incorporate_multi_candidates"
    push $P5004, "publish_type_cache"
    push $P5004, "publish_method_cache"
    push $P5004, "publish_boolification_spec"
    push $P5004, "publish_parrot_vtable_mapping"
    push $P5004, "publish_parrot_vtablee_handler_mapping"
    push $P5004, "create_BUILDPLAN"
    push $P5004, "BUILDPLAN"
    push $P5004, "BUILDALLPLAN"
    push $P5004, "parents"
    push $P5004, "mro"
    push $P5004, "traced"
    push $P5004, "trace_depth"
    push $P5004, "parrot_vtable_mappings"
    push $P5004, "parrot_vtable_handler_mappings"
    push $P5004, "isa"
    push $P5004, "does"
    push $P5004, "can"
    push $P5004, "find_method"
    push $P5004, "make_tracer"
    push $P5004, "cache"
    push $P5004, "flush_cache"
    push $P5004, "cache_get"
    push $P5004, "cache_add"
    push $P5004, "set_is_mixin"
    push $P5004, "is_mixin"
    push $P5004, "mixin"
    push $P5004, "trace-on"
    push $P5004, "trace-off"
    push $P5004, "should_trace"
    push $P5004, "@!method_order"
    push $P5004, "@!parents"
    push $P5004, "$!default_parent"
    push $P5004, "@!vtable"
    push $P5004, "%!method-vtable-slots"
    push $P5004, "@!mro"
    push $P5004, "@!done"
    push $P5004, "%!caches"
    push $P5004, "$!is_mixin"
    push $P5004, "%!parrot_vtable_mapping"
    push $P5004, "%!parrot_vtable_handler_mapping"
    push $P5004, "$!trace"
    push $P5004, "$!trace_depth"
    push $P5004, "@!trace_exclude"
    push $P5004, "@!BUILDALLPLAN"
    push $P5004, "@!BUILDPLAN"
    push $P5004, "@!mixin_cache"
    push $P5004, "type"
    push $P5004, "has_accessor"
    push $P5004, "build_closure"
    push $P5004, "box_target"
    push $P5004, "auto_viv_container"
    push $P5004, "set_positional_delegate"
    push $P5004, "set_associative_delegate"
    push $P5004, "positional_delegate"
    push $P5004, "associative_delegate"
    push $P5004, "$!type"
    push $P5004, "$!has_type"
    push $P5004, "$!box_target"
    push $P5004, "$!default"
    push $P5004, "$!has_default"
    push $P5004, "$!positional_delegate"
    push $P5004, "$!associative_delegate"
    push $P5004, "__6MODEL_CORE__"
    push $P5004, "GLOBALish"
    push $P5004, "Archetypes"
    push $P5004, "EXPORTHOW"
    .const 'Sub' $P5005 = 'cuid_159_1431289877.42775' 
    capture_lex $P5005
    $P5006 = $P5005()
    nqp_deserialize_sc "BwAAAEAAAAABAAAASAAAAAwAAADYAAAAphYAAFUAAAD2GwAApicAAAAAAACmJwAAAAAAAKYnAACmJwAAAAAAAIMAAAAAAAAAAQAAAAAAAADUAAAAAQAAADABAAASAgAAAQAAACIDAACGAwAAAQAAAOIDAABCBQAAAQAAAGgGAADMBgAAAQAAACgHAADgBwAAAQAAAGwIAADMCQAAAQAAAMYKAADYDQAAAQAAADIQAAAGEQAAAQAAAJIRAACeEgAAAQAAAK4TAACQFAAAAQAAABwVAAByFQAAAAAAAAwAAAAAAAAAAAAAAAoACQAAAAIAAAACAAAAAAACAAAAAwAAAAIAAAAAAAMAAAAEAAAAAgAAAAAABAAAAAUAAAACAAAAAAAFAAAABgAAAAIAAAAAAAYAAAAHAAAAAgAAAAAABwAAAAgAAAACAAAAAAAIAAAACQAAAAIAAAAAAAkAAAAKAAAAAgAAAAAACgAAAAoAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAAAAAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAAAAAAAAMA/////////////////////wAAAAANAAAAAAAAAAEAAAAKAAAAAAAKAAoAAAALAAAACwAAAAAAAAAAAAwAAAALAAAAAAABAAAADQAAAAsAAAAAAAIAAAAOAAAACwAAAAAAAwAAAA8AAAALAAAAAAAEAAAAEAAAAAsAAAAAAAUAAAARAAAACwAAAAAABgAAABIAAAALAAAAAAAHAAAAEwAAAAsAAAAAAAgAAAAUAAAACwAAAAAACQAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAAABAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAAAEAAAAKAAgAAAAVAAAABAAAAAAAAAAAABYAAAAEAAEAAAAAAAAAFwAAAAQAAgAAAAAAAAAYAAAABAADAAAAAAAAABkAAAAEAAQAAAAAAAAAGgAAAAQABQAAAAAAAAAbAAAABAAGAAAAAAAAABwAAAAEAAcAAAAAAAAA/////////////////////wAAAAAOAAAAAAAAAAIAAAAKAAAAAAAKAAEAAAAdAAAACwAAAAAACgAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAAACAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAAAgAAAAMA/////////////////////wAAAAAPAAAAAAAAAAMAAAAKAAAAAAAKABMAAAAeAAAACwAAAAAACwAAAAsAAAALAAAAAAAMAAAADAAAAAsAAAAAAA0AAAAfAAAACwAAAAAADgAAACAAAAALAAAAAAAPAAAAIQAAAAsAAAAAABAAAAAiAAAACwAAAAAAEQAAACMAAAALAAAAAAASAAAAJAAAAAsAAAAAABMAAAAlAAAACwAAAAAAFAAAACYAAAALAAAAAAAVAAAAJwAAAAsAAAAAABYAAAAoAAAACwAAAAAAFwAAACkAAAALAAAAAAAYAAAAKgAAAAsAAAAAABkAAAArAAAACwAAAAAAGgAAACwAAAALAAAAAAAbAAAALQAAAAsAAAAAABwAAAAuAAAACwAAAAAAHQAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAAADAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAJAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAAAwAAAAoACQAAAC8AAAAEAAAAAAAAAAAAMAAAAAQAAQAAAAAAAAAxAAAABAACAAAAAAAAADIAAAAEAAMAAAAAAAAAMwAAAAQABAAAAAAAAAA0AAAABAAFAAAAAAAAADUAAAAEAAYAAAAAAAAANgAAAAQABwAAAAAAAAA3AAAABAAIAAAAAAAAAP////////////////////8AAAAAEAAAAAAAAAAEAAAACgAAAAAACgABAAAAHQAAAAsAAAAAAB4AAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAAABAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAAAQAAAADAP////////////////////8AAAAAEQAAAAAAAAAFAAAACgAAAAAACgAHAAAAHgAAAAsAAAAAAB8AAAALAAAACwAAAAAAIAAAAAwAAAALAAAAAAAhAAAAHwAAAAsAAAAAACIAAAA4AAAACwAAAAAAIwAAACoAAAALAAAAAAAkAAAAOQAAAAsAAAAAACUAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAAABQAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAQAAAAAAAAACAAAAAAAFAAAACgACAAAAOgAAAAQAAAAAAAAAAAA7AAAABAABAAAAAAAAAP////////////////////8AAAAAEgAAAAAAAAAGAAAACgAAAAAACgATAAAAHgAAAAsAAAAAACYAAAALAAAACwAAAAAAJwAAAAwAAAALAAAAAAAoAAAAHwAAAAsAAAAAACkAAAA8AAAACwAAAAAAKgAAACAAAAALAAAAAAArAAAAIQAAAAsAAAAAACwAAAAiAAAACwAAAAAALQAAACMAAAALAAAAAAAuAAAAJAAAAAsAAAAAAC8AAAAmAAAACwAAAAAAMAAAABQAAAALAAAAAAAxAAAAPQAAAAsAAAAAADIAAAA4AAAACwAAAAAAMwAAACcAAAALAAAAAAA0AAAAKAAAAAsAAAAAADUAAAAqAAAACwAAAAAANgAAACsAAAALAAAAAAA3AAAALAAAAAsAAAAAADgAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAAABgAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAABgAAAAoABwAAAC8AAAAEAAAAAAAAAAAAMQAAAAQAAQAAAAAAAAAyAAAABAACAAAAAAAAADMAAAAEAAMAAAAAAAAANQAAAAQABAAAAAAAAAA3AAAABAAFAAAAAAAAAD4AAAAEAAYAAAAAAAAA/////////////////////wAAAAATAAAAAAAAAAcAAAAKAAAAAAAKADIAAAAeAAAACwAAAAAAOQAAAAsAAAALAAAAAAA6AAAADAAAAAsAAAAAADsAAAAfAAAACwAAAAAAPAAAACAAAAALAAAAAAA9AAAAIQAAAAsAAAAAAD4AAAAiAAAACwAAAAAAPwAAACMAAAALAAAAAABAAAAAPwAAAAsAAAAAAEEAAABAAAAACwAAAAAAQgAAACQAAAALAAAAAABDAAAAQQAAAAsAAAAAAEQAAABCAAAACwAAAAAARQAAACYAAAALAAAAAABGAAAAQwAAAAsAAAAAAEcAAABEAAAACwAAAAAASAAAAEUAAAALAAAAAABJAAAARgAAAAsAAAAAAEoAAABHAAAACwAAAAAASwAAAEgAAAALAAAAAABMAAAASQAAAAsAAAAAAE0AAABKAAAACwAAAAAATgAAAEsAAAALAAAAAABPAAAATAAAAAsAAAAAAFAAAABNAAAACwAAAAAAUQAAAE4AAAALAAAAAABSAAAALAAAAAsAAAAAAFMAAAAnAAAACwAAAAAAVAAAACgAAAALAAAAAABVAAAAKgAAAAsAAAAAAFYAAABPAAAACwAAAAAAVwAAAFAAAAALAAAAAABYAAAAKwAAAAsAAAAAAFkAAABRAAAACwAAAAAAWgAAAFIAAAALAAAAAABbAAAAUwAAAAsAAAAAAFwAAABUAAAACwAAAAAAXQAAAFUAAAALAAAAAABeAAAAVgAAAAsAAAAAAF8AAABXAAAACwAAAAAAYAAAAFgAAAALAAAAAABhAAAAWQAAAAsAAAAAAGIAAABaAAAACwAAAAAAYwAAAFsAAAALAAAAAABkAAAAXAAAAAsAAAAAAGUAAABdAAAACwAAAAAAZgAAAF4AAAALAAAAAABnAAAAXwAAAAsAAAAAAGgAAABgAAAACwAAAAAAaQAAAGEAAAALAAAAAABqAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAAcAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABcAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAABwAAAAoAFwAAAC8AAAAEAAAAAAAAAAAAMQAAAAQAAQAAAAAAAAAyAAAABAACAAAAAAAAAGIAAAAEAAMAAAAAAAAAMwAAAAQABAAAAAAAAABjAAAABAAFAAAAAAAAADUAAAAEAAYAAAAAAAAAZAAAAAQABwAAAAAAAABlAAAABAAIAAAAAAAAAGYAAAAEAAkAAAAAAAAANwAAAAQACgAAAAAAAABnAAAABAALAAAAAAAAAGgAAAAEAAwAAAAAAAAAaQAAAAQADQAAAAAAAABqAAAABAAOAAAAAAAAAGsAAAAEAA8AAAAAAAAAbAAAAAQAEAAAAAAAAABtAAAABAARAAAAAAAAAG4AAAAEABIAAAAAAAAAbwAAAAQAEwAAAAAAAABwAAAABAAUAAAAAAAAAHEAAAAEABUAAAAAAAAAcgAAAAQAFgAAAAAAAAD/////////////////////AAAAABQAAAAAAAAACAAAAAoAAAAAAAoACQAAAB4AAAALAAAAAABrAAAACwAAAAsAAAAAAGwAAAAMAAAACwAAAAAAbQAAAB8AAAALAAAAAABuAAAAIAAAAAsAAAAAAG8AAAAhAAAACwAAAAAAcAAAACIAAAALAAAAAABxAAAAJgAAAAsAAAAAAHIAAAAqAAAACwAAAAAAcwAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAAAIAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAAAgAAAAKAAIAAAAvAAAABAAAAAAAAAAAADcAAAAEAAEAAAAAAAAA/////////////////////wAAAAAVAAAAAAAAAAkAAAAKAAAAAAAKAA0AAAALAAAACwAAAAAAdAAAAAwAAAALAAAAAAB1AAAAKgAAAAsAAAAAAHYAAABzAAAACwAAAAAAdwAAAHQAAAALAAAAAAB4AAAAdQAAAAsAAAAAAHkAAAB2AAAACwAAAAAAegAAAHcAAAALAAAAAAB7AAAAeAAAAAsAAAAAAHwAAAB5AAAACwAAAAAAfQAAAHoAAAALAAAAAAB+AAAAewAAAAsAAAAAAH8AAAAmAAAACwAAAAAAgAAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAAAJAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAAAkAAAAKAAgAAAAvAAAABAAAAAAAAAAAAHwAAAAEAAEAAAAAAAAAfQAAAAQAAgAAAAAAAAB+AAAABAADAAAAAAAAAH8AAAAEAAQAAAAAAAAAgAAAAAQABQAAAAAAAACBAAAABAAGAAAAAAAAAIIAAAAEAAcAAAAAAAAA/////////////////////wAAAAAWAAAAAAAAAAoAAAAKAAAAAAAKAAoAAAAeAAAACwAAAAAAgQAAAAsAAAALAAAAAACCAAAADAAAAAsAAAAAAIMAAAAfAAAACwAAAAAAhAAAACAAAAALAAAAAACFAAAAIQAAAAsAAAAAAIYAAAAiAAAACwAAAAAAhwAAACYAAAALAAAAAACIAAAAVgAAAAsAAAAAAIkAAAAqAAAACwAAAAAAigAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAAAKAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAAAoAAAAKAAIAAAAvAAAABAAAAAAAAAAAADcAAAAEAAEAAAAAAAAA/////////////////////wAAAAAXAAAAAAAAAAsAAAAKAAAAAAAKAAAAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAAACwAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAAAsAAAADAP////////////////////8AAAAAAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAACAAAAAAAAAAAAAAAAAAAAAwAAAAAAAAAAAAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAFAAAAAAAAAAAAAAAAAAAABgAAAAAAAAAAAAAAAAAAAAcAAAAAAAAAAAAAAAAAAAAIAAAAAAAAAAAAAAAAAAAACQAAAAAAAAAAAAAAAAAAAAoAAAAAAAAAAAAAAAAAAAALAAAAAAAAAAAAAAABAAAAAAAAAAAAAAABAAAAAQAAAAAAAAAQAAAAAQAAAAEAAAAAAAAA/AAAAAEAAAABAAAAAAAAABoBAAABAAAAAQAAAAAAAACOAgAAAQAAAAEAAAAAAAAArAIAAAEAAAABAAAAAAAAADIDAAABAAAAAQAAAAAAAACSBAAAAQAAAAEAAAAAAAAARAgAAAEAAAABAAAAAAAAAOYIAAABAAAAAQAAAAAAAAD8CQAAAQAAAAEAAAAAAAAArAoAAAEAAAABAAAAAgAAALwKAAABAAAAAQAAAAIAAADACgAAAQAAAAEAAAACAAAAxAoAAAEAAAABAAAAAgAAAMgKAAABAAAAAQAAAAIAAADMCgAAAQAAAAEAAAACAAAA0AoAAAEAAAABAAAAAgAAANQKAAABAAAAAQAAAAIAAADYCgAAAQAAAAEAAAACAAAA3AoAAAEAAAABAAAAAgAAAOAKAAABAAAAAQAAAAIAAADkCgAAAQAAAAEAAAACAAAA6AoAAAEAAAABAAAAAgAAAOwKAAABAAAAAQAAAAIAAADwCgAAAQAAAAEAAAACAAAA9AoAAAEAAAABAAAAAgAAAPgKAAABAAAAAQAAAAIAAAD8CgAAAQAAAAEAAAACAAAAAAsAAAEAAAABAAAAAgAAAAQLAAABAAAAAQAAAAIAAAAICwAAAQAAAAEAAAACAAAADAsAAAEAAAABAAAAAgAAABALAAABAAAAAQAAAAIAAAAUCwAAAQAAAAEAAAACAAAAGAsAAAEAAAABAAAAAgAAABwLAAABAAAAAQAAAAIAAAAgCwAAAQAAAAEAAAACAAAAJAsAAAEAAAABAAAAAgAAACgLAAABAAAAAQAAAAIAAAAsCwAAAQAAAAEAAAACAAAAMAsAAAEAAAABAAAAAgAAADQLAAABAAAAAQAAAAIAAAA4CwAAAQAAAAEAAAACAAAAPAsAAAEAAAABAAAAAgAAAEALAAABAAAAAQAAAAIAAABECwAAAQAAAAEAAAACAAAASAsAAAEAAAABAAAAAgAAAEwLAAABAAAAAQAAAAIAAABQCwAAAQAAAAEAAAACAAAAVAsAAAEAAAABAAAAAgAAAFgLAAABAAAAAQAAAAIAAABcCwAAAQAAAAEAAAACAAAAYAsAAAEAAAABAAAAAgAAAGQLAAABAAAAAQAAAAIAAABoCwAAAQAAAAEAAAACAAAAbAsAAAEAAAABAAAAAgAAAHALAAABAAAAAQAAAAIAAAB0CwAAAQAAAAEAAAACAAAAeAsAAAEAAAABAAAAAgAAAHwLAAABAAAAAQAAAAIAAACACwAAAQAAAAEAAAACAAAAhAsAAAEAAAABAAAAAgAAAIgLAAABAAAAAQAAAAIAAACMCwAAAQAAAAEAAAACAAAAkAsAAAEAAAABAAAAAgAAAJQLAAABAAAAAQAAAAIAAACYCwAAAQAAAAEAAAACAAAAnAsAAAEAAAABAAAAAgAAAKALAAABAAAAAQAAAAIAAACkCwAAAQAAAAEAAAACAAAAqAsAAAEAAAABAAAAAgAAAKwLAAABAAAAhAAAAAcAAAAAAAoAAAAAAIUAAAAHAAgAAAACAAAAAAAYAAAAAgAAAAAAGQAAAAIAAAAAABoAAAACAAAAAAAbAAAAAgAAAAAAHAAAAAIAAAAAAB0AAAACAAAAAAAeAAAAAgAAAAAAHwAAAAoACgAAAAsAAAALAAAAAAAAAAAADAAAAAsAAAAAAAEAAAANAAAACwAAAAAAAgAAAA4AAAALAAAAAAADAAAADwAAAAsAAAAAAAQAAAAQAAAACwAAAAAABQAAABEAAAALAAAAAAAGAAAAEgAAAAsAAAAAAAcAAAATAAAACwAAAAAACAAAABQAAAALAAAAAAAJAAAAAgAAAAcAAAAAAAoAAQAAAB0AAAALAAAAAAAKAAAAAwAAAAcACQAAAAIAAAAAACAAAAACAAAAAAAhAAAAAgAAAAAAIgAAAAIAAAAAACMAAAACAAAAAAAkAAAAAgAAAAAAJQAAAAIAAAAAACYAAAACAAAAAAAnAAAAAgAAAAAAKAAAAAoAEwAAAB4AAAALAAAAAAALAAAACwAAAAsAAAAAAAwAAAAMAAAACwAAAAAADQAAAB8AAAALAAAAAAAOAAAAIAAAAAsAAAAAAA8AAAAhAAAACwAAAAAAEAAAACIAAAALAAAAAAARAAAAIwAAAAsAAAAAABIAAAAkAAAACwAAAAAAEwAAACUAAAALAAAAAAAUAAAAJgAAAAsAAAAAABUAAAAnAAAACwAAAAAAFgAAACgAAAALAAAAAAAXAAAAKQAAAAsAAAAAABgAAAAqAAAACwAAAAAAGQAAACsAAAALAAAAAAAaAAAALAAAAAsAAAAAABsAAAAtAAAACwAAAAAAHAAAAC4AAAALAAAAAAAdAAAABAAAAAcAAAAAAAoAAQAAAB0AAAALAAAAAAAeAAAABQAAAAcAAgAAAAIAAAAAACkAAAACAAAAAAAqAAAACgAHAAAAHgAAAAsAAAAAAB8AAAALAAAACwAAAAAAIAAAAAwAAAALAAAAAAAhAAAAHwAAAAsAAAAAACIAAAA4AAAACwAAAAAAIwAAACoAAAALAAAAAAAkAAAAOQAAAAsAAAAAACUAAAAGAAAABwAHAAAAAgAAAAAAKwAAAAIAAAAAACwAAAACAAAAAAAtAAAAAgAAAAAALgAAAAIAAAAAAC8AAAACAAAAAAAwAAAAAgAAAAAAMQAAAAoAEwAAAB4AAAALAAAAAAAmAAAACwAAAAsAAAAAACcAAAAMAAAACwAAAAAAKAAAAB8AAAALAAAAAAApAAAAPAAAAAsAAAAAACoAAAAgAAAACwAAAAAAKwAAACEAAAALAAAAAAAsAAAAIgAAAAsAAAAAAC0AAAAjAAAACwAAAAAALgAAACQAAAALAAAAAAAvAAAAJgAAAAsAAAAAADAAAAAUAAAACwAAAAAAMQAAAD0AAAALAAAAAAAyAAAAOAAAAAsAAAAAADMAAAAnAAAACwAAAAAANAAAACgAAAALAAAAAAA1AAAAKgAAAAsAAAAAADYAAAArAAAACwAAAAAANwAAACwAAAALAAAAAAA4AAAABwAAAAcAFwAAAAIAAAAAADIAAAACAAAAAAAzAAAAAgAAAAAANAAAAAIAAAAAADUAAAACAAAAAAA2AAAAAgAAAAAANwAAAAIAAAAAADgAAAACAAAAAAA5AAAAAgAAAAAAOgAAAAIAAAAAADsAAAACAAAAAAA8AAAAAgAAAAAAPQAAAAIAAAAAAD4AAAACAAAAAAA/AAAAAgAAAAAAQAAAAAIAAAAAAEEAAAACAAAAAABCAAAAAgAAAAAAQwAAAAIAAAAAAEQAAAACAAAAAABFAAAAAgAAAAAARgAAAAIAAAAAAEcAAAACAAAAAABIAAAACgAyAAAAHgAAAAsAAAAAADkAAAALAAAACwAAAAAAOgAAAAwAAAALAAAAAAA7AAAAHwAAAAsAAAAAADwAAAAgAAAACwAAAAAAPQAAACEAAAALAAAAAAA+AAAAIgAAAAsAAAAAAD8AAAAjAAAACwAAAAAAQAAAAD8AAAALAAAAAABBAAAAQAAAAAsAAAAAAEIAAAAkAAAACwAAAAAAQwAAAEEAAAALAAAAAABEAAAAQgAAAAsAAAAAAEUAAAAmAAAACwAAAAAARgAAAEMAAAALAAAAAABHAAAARAAAAAsAAAAAAEgAAABFAAAACwAAAAAASQAAAEYAAAALAAAAAABKAAAARwAAAAsAAAAAAEsAAABIAAAACwAAAAAATAAAAEkAAAALAAAAAABNAAAASgAAAAsAAAAAAE4AAABLAAAACwAAAAAATwAAAEwAAAALAAAAAABQAAAATQAAAAsAAAAAAFEAAABOAAAACwAAAAAAUgAAACwAAAALAAAAAABTAAAAJwAAAAsAAAAAAFQAAAAoAAAACwAAAAAAVQAAACoAAAALAAAAAABWAAAATwAAAAsAAAAAAFcAAABQAAAACwAAAAAAWAAAACsAAAALAAAAAABZAAAAUQAAAAsAAAAAAFoAAABSAAAACwAAAAAAWwAAAFMAAAALAAAAAABcAAAAVAAAAAsAAAAAAF0AAABVAAAACwAAAAAAXgAAAFYAAAALAAAAAABfAAAAVwAAAAsAAAAAAGAAAABYAAAACwAAAAAAYQAAAFkAAAALAAAAAABiAAAAWgAAAAsAAAAAAGMAAABbAAAACwAAAAAAZAAAAFwAAAALAAAAAABlAAAAXQAAAAsAAAAAAGYAAABeAAAACwAAAAAAZwAAAF8AAAALAAAAAABoAAAAYAAAAAsAAAAAAGkAAABhAAAACwAAAAAAagAAAAgAAAAHAAIAAAACAAAAAABJAAAAAgAAAAAASgAAAAoACQAAAB4AAAALAAAAAABrAAAACwAAAAsAAAAAAGwAAAAMAAAACwAAAAAAbQAAAB8AAAALAAAAAABuAAAAIAAAAAsAAAAAAG8AAAAhAAAACwAAAAAAcAAAACIAAAALAAAAAABxAAAAJgAAAAsAAAAAAHIAAAAqAAAACwAAAAAAcwAAAAkAAAAHAAgAAAACAAAAAABLAAAAAgAAAAAATAAAAAIAAAAAAE0AAAACAAAAAABOAAAAAgAAAAAATwAAAAIAAAAAAFAAAAACAAAAAABRAAAAAgAAAAAAUgAAAAoADQAAAAsAAAALAAAAAAB0AAAADAAAAAsAAAAAAHUAAAAqAAAACwAAAAAAdgAAAHMAAAALAAAAAAB3AAAAdAAAAAsAAAAAAHgAAAB1AAAACwAAAAAAeQAAAHYAAAALAAAAAAB6AAAAdwAAAAsAAAAAAHsAAAB4AAAACwAAAAAAfAAAAHkAAAALAAAAAAB9AAAAegAAAAsAAAAAAH4AAAB7AAAACwAAAAAAfwAAACYAAAALAAAAAACAAAAACgAAAAcAAgAAAAIAAAAAAFMAAAACAAAAAABUAAAACgAKAAAAHgAAAAsAAAAAAIEAAAALAAAACwAAAAAAggAAAAwAAAALAAAAAACDAAAAHwAAAAsAAAAAAIQAAAAgAAAACwAAAAAAhQAAACEAAAALAAAAAACGAAAAIgAAAAsAAAAAAIcAAAAmAAAACwAAAAAAiAAAAFYAAAALAAAAAACJAAAAKgAAAAsAAAAAAIoAAACGAAAABwAAAAAACgAAAAAAFQAAABYAAAAXAAAAGAAAABkAAAAaAAAAGwAAABwAAAAvAAAAMAAAADEAAAAyAAAAMwAAADQAAAA1AAAANgAAADcAAAA6AAAAOwAAAC8AAAAxAAAAMgAAADMAAAA1AAAANwAAAD4AAAAvAAAAMQAAADIAAABiAAAAMwAAAGMAAAA1AAAAZAAAAGUAAABmAAAANwAAAGcAAABoAAAAaQAAAGoAAABrAAAAbAAAAG0AAABuAAAAbwAAAHAAAABxAAAAcgAAAC8AAAA3AAAALwAAAHwAAAB9AAAAfgAAAH8AAACAAAAAgQAAAIIAAAAvAAAANwAAAA==", cur_sc, $P5004, $P5006, conflicts
    unless conflicts goto if252_end713 
    die "Repossession conflicts occurred during deserialization"
  if252_end713:
    .const "LexInfo" $P5001 = "cuid_140_1431289877.42775"
    new $P5002, 'ResizableStringArray'
    assign $P5002, 13
    assign $P5002, 0
    push $P5002, "GLOBALish"
    push $P5002, "$?PACKAGE"
    push $P5002, "Archetypes"
    push $P5002, "RoleToRoleApplier"
    push $P5002, "NQPConcreteRoleHOW"
    push $P5002, "RoleToClassApplier"
    push $P5002, "NQPCurriedRoleHOW"
    push $P5002, "NQPParametricRoleHOW"
    push $P5002, "NQPClassHOW"
    push $P5002, "NQPNativeHOW"
    push $P5002, "NQPAttribute"
    push $P5002, "NQPModuleHOW"
    push $P5002, "EXPORTHOW"
    new $P5003, 'QRPA'
    assign $P5003, 13
    assign $P5003, 0
    nqp_get_sc_object $P5004, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 0
    push $P5003, $P5004
    nqp_get_sc_object $P5005, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 0
    push $P5003, $P5005
    nqp_get_sc_object $P5006, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 1
    push $P5003, $P5006
    nqp_get_sc_object $P5007, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 2
    push $P5003, $P5007
    nqp_get_sc_object $P5008, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 3
    push $P5003, $P5008
    nqp_get_sc_object $P5009, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 4
    push $P5003, $P5009
    nqp_get_sc_object $P5010, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 5
    push $P5003, $P5010
    nqp_get_sc_object $P5011, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 6
    push $P5003, $P5011
    nqp_get_sc_object $P5012, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    push $P5003, $P5012
    nqp_get_sc_object $P5013, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 8
    push $P5003, $P5013
    nqp_get_sc_object $P5014, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 9
    push $P5003, $P5014
    nqp_get_sc_object $P5015, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 10
    push $P5003, $P5015
    nqp_get_sc_object $P5016, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 11
    push $P5003, $P5016
    new $P5017, 'ResizableIntegerArray'
    assign $P5017, 13
    $P5001."setup_static_lexpad"($P5002, $P5003, $P5017)
    .const "LexInfo" $P5001 = "cuid_141_1431289877.42775"
    new $P5002, 'ResizableStringArray'
    assign $P5002, 2
    assign $P5002, 0
    push $P5002, "$?PACKAGE"
    push $P5002, "$?CLASS"
    new $P5003, 'QRPA'
    assign $P5003, 2
    assign $P5003, 0
    nqp_get_sc_object $P5004, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 1
    push $P5003, $P5004
    nqp_get_sc_object $P5005, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 1
    push $P5003, $P5005
    new $P5006, 'ResizableIntegerArray'
    assign $P5006, 2
    $P5001."setup_static_lexpad"($P5002, $P5003, $P5006)
    .const "LexInfo" $P5001 = "cuid_142_1431289877.42775"
    new $P5002, 'ResizableStringArray'
    assign $P5002, 2
    assign $P5002, 0
    push $P5002, "$?PACKAGE"
    push $P5002, "$?CLASS"
    new $P5003, 'QRPA'
    assign $P5003, 2
    assign $P5003, 0
    nqp_get_sc_object $P5004, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 2
    push $P5003, $P5004
    nqp_get_sc_object $P5005, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 2
    push $P5003, $P5005
    new $P5006, 'ResizableIntegerArray'
    assign $P5006, 2
    $P5001."setup_static_lexpad"($P5002, $P5003, $P5006)
    .const "LexInfo" $P5001 = "cuid_143_1431289877.42775"
    new $P5002, 'ResizableStringArray'
    assign $P5002, 2
    assign $P5002, 0
    push $P5002, "$?PACKAGE"
    push $P5002, "$?CLASS"
    new $P5003, 'QRPA'
    assign $P5003, 2
    assign $P5003, 0
    nqp_get_sc_object $P5004, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 3
    push $P5003, $P5004
    nqp_get_sc_object $P5005, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 3
    push $P5003, $P5005
    new $P5006, 'ResizableIntegerArray'
    assign $P5006, 2
    $P5001."setup_static_lexpad"($P5002, $P5003, $P5006)
    .const "LexInfo" $P5001 = "cuid_144_1431289877.42775"
    new $P5002, 'ResizableStringArray'
    assign $P5002, 2
    assign $P5002, 0
    push $P5002, "$?PACKAGE"
    push $P5002, "$?CLASS"
    new $P5003, 'QRPA'
    assign $P5003, 2
    assign $P5003, 0
    nqp_get_sc_object $P5004, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 4
    push $P5003, $P5004
    nqp_get_sc_object $P5005, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 4
    push $P5003, $P5005
    new $P5006, 'ResizableIntegerArray'
    assign $P5006, 2
    $P5001."setup_static_lexpad"($P5002, $P5003, $P5006)
    .const "LexInfo" $P5001 = "cuid_147_1431289877.42775"
    new $P5002, 'ResizableStringArray'
    assign $P5002, 2
    assign $P5002, 0
    push $P5002, "$?PACKAGE"
    push $P5002, "$?CLASS"
    new $P5003, 'QRPA'
    assign $P5003, 2
    assign $P5003, 0
    nqp_get_sc_object $P5004, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 5
    push $P5003, $P5004
    nqp_get_sc_object $P5005, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 5
    push $P5003, $P5005
    new $P5006, 'ResizableIntegerArray'
    assign $P5006, 2
    $P5001."setup_static_lexpad"($P5002, $P5003, $P5006)
    .const "LexInfo" $P5001 = "cuid_148_1431289877.42775"
    new $P5002, 'ResizableStringArray'
    assign $P5002, 2
    assign $P5002, 0
    push $P5002, "$?PACKAGE"
    push $P5002, "$?CLASS"
    new $P5003, 'QRPA'
    assign $P5003, 2
    assign $P5003, 0
    nqp_get_sc_object $P5004, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 6
    push $P5003, $P5004
    nqp_get_sc_object $P5005, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 6
    push $P5003, $P5005
    new $P5006, 'ResizableIntegerArray'
    assign $P5006, 2
    $P5001."setup_static_lexpad"($P5002, $P5003, $P5006)
    .const "LexInfo" $P5001 = "cuid_149_1431289877.42775"
    new $P5002, 'ResizableStringArray'
    assign $P5002, 2
    assign $P5002, 0
    push $P5002, "$?PACKAGE"
    push $P5002, "$?CLASS"
    new $P5003, 'QRPA'
    assign $P5003, 2
    assign $P5003, 0
    nqp_get_sc_object $P5004, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    push $P5003, $P5004
    nqp_get_sc_object $P5005, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 7
    push $P5003, $P5005
    new $P5006, 'ResizableIntegerArray'
    assign $P5006, 2
    $P5001."setup_static_lexpad"($P5002, $P5003, $P5006)
    .const "LexInfo" $P5001 = "cuid_155_1431289877.42775"
    new $P5002, 'ResizableStringArray'
    assign $P5002, 2
    assign $P5002, 0
    push $P5002, "$?PACKAGE"
    push $P5002, "$?CLASS"
    new $P5003, 'QRPA'
    assign $P5003, 2
    assign $P5003, 0
    nqp_get_sc_object $P5004, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 8
    push $P5003, $P5004
    nqp_get_sc_object $P5005, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 8
    push $P5003, $P5005
    new $P5006, 'ResizableIntegerArray'
    assign $P5006, 2
    $P5001."setup_static_lexpad"($P5002, $P5003, $P5006)
    .const "LexInfo" $P5001 = "cuid_156_1431289877.42775"
    new $P5002, 'ResizableStringArray'
    assign $P5002, 2
    assign $P5002, 0
    push $P5002, "$?PACKAGE"
    push $P5002, "$?CLASS"
    new $P5003, 'QRPA'
    assign $P5003, 2
    assign $P5003, 0
    nqp_get_sc_object $P5004, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 9
    push $P5003, $P5004
    nqp_get_sc_object $P5005, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 9
    push $P5003, $P5005
    new $P5006, 'ResizableIntegerArray'
    assign $P5006, 2
    $P5001."setup_static_lexpad"($P5002, $P5003, $P5006)
    .const "LexInfo" $P5001 = "cuid_157_1431289877.42775"
    new $P5002, 'ResizableStringArray'
    assign $P5002, 2
    assign $P5002, 0
    push $P5002, "$?PACKAGE"
    push $P5002, "$?CLASS"
    new $P5003, 'QRPA'
    assign $P5003, 2
    assign $P5003, 0
    nqp_get_sc_object $P5004, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 10
    push $P5003, $P5004
    nqp_get_sc_object $P5005, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 10
    push $P5003, $P5005
    new $P5006, 'ResizableIntegerArray'
    assign $P5006, 2
    $P5001."setup_static_lexpad"($P5002, $P5003, $P5006)
    .const "LexInfo" $P5001 = "cuid_158_1431289877.42775"
    new $P5002, 'ResizableStringArray'
    assign $P5002, 2
    assign $P5002, 0
    push $P5002, "$?PACKAGE"
    push $P5002, "$?CLASS"
    new $P5003, 'QRPA'
    assign $P5003, 2
    assign $P5003, 0
    nqp_get_sc_object $P5004, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 11
    push $P5003, $P5004
    nqp_get_sc_object $P5005, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024", 11
    push $P5003, $P5005
    new $P5006, 'ResizableIntegerArray'
    assign $P5006, 2
    $P5007 = $P5001."setup_static_lexpad"($P5002, $P5003, $P5006)
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_159_1431289877.42775") :anon :lex :outer("cuid_160_1431289877.42775")
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
    new $P5001, 'ResizablePMCArray'
    assign $P5001, 139
    assign $P5001, 0
    .const 'Sub' $P5002 = "cuid_1_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_2_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_3_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_4_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_5_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_6_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_7_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_8_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_9_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_10_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_11_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_12_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_13_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_14_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_15_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_16_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_17_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_18_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_19_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_20_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_21_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_22_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_23_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_24_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_25_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_26_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_27_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_28_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_29_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_30_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_31_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_32_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_33_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_34_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_35_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_36_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_37_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_38_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_39_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_40_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_41_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_42_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_43_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_44_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_45_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_46_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_47_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_48_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_49_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_50_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_51_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_52_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_53_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_54_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_55_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_56_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_57_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_58_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_59_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_60_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_61_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_62_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_63_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_64_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_65_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_66_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_67_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_68_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_69_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_70_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_71_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_72_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_73_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_74_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_75_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_76_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_77_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_78_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_79_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_80_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_81_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_82_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_83_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_84_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_85_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_86_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_87_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_88_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_89_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_90_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_91_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_92_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_93_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_94_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_95_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_96_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_97_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_98_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_99_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_100_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_101_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_102_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_103_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_104_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_105_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_106_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_107_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_108_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_109_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_110_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_111_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_112_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_113_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_114_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_115_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_116_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_117_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_118_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_119_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_120_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_121_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_122_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_123_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_124_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_125_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_126_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_127_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_128_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_129_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_130_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_131_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_132_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_133_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_134_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_135_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_136_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_137_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_138_1431289877.42775" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_139_1431289877.42775" 
    push $P5001, $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_161_1431289877.42775") :load
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
    .const 'Sub' $P5001 = "cuid_140_1431289877.42775" 
    $P5002 = $P5001()
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_162_1431289877.42775") :main
.annotate 'file', "gen/parrot/stage2/nqpmo.nqp"
    .param pmc ARGS :slurpy 
    .const 'Sub' $P5001 = "cuid_140_1431289877.42775" 
    $P5002 = $P5001(ARGS :flat)
    .return ($P5002) 
.end