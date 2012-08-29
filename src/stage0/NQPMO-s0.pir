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
.sub "" :subid("cuid_1_1346233419.189") :anon :lex
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
    .param pmc _lex_param_0 :slurpy 
    .const 'Sub' $P532 = 'cuid_12_1346233419.189' 
    capture_lex $P532 
    .const 'Sub' $P532 = 'cuid_14_1346233419.189' 
    capture_lex $P532 
    .const 'Sub' $P532 = 'cuid_34_1346233419.189' 
    capture_lex $P532 
    .const 'Sub' $P532 = 'cuid_36_1346233419.189' 
    capture_lex $P532 
    .const 'Sub' $P532 = 'cuid_55_1346233419.189' 
    capture_lex $P532 
    .const 'Sub' $P532 = 'cuid_98_1346233419.189' 
    capture_lex $P532 
    .const 'Sub' $P532 = 'cuid_108_1346233419.189' 
    capture_lex $P532 
    .const 'Sub' $P532 = 'cuid_119_1346233419.189' 
    capture_lex $P532 
    .const 'Sub' $P532 = 'cuid_130_1346233419.189' 
    capture_lex $P532 
    .const 'Sub' $P532 = 'cuid_131_1346233419.189' 
    capture_lex $P532 
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
    .const 'Sub' $P507 = 'cuid_12_1346233419.189' 
    capture_lex $P507
    $P508 = $P507()
    .const 'Sub' $P509 = 'cuid_14_1346233419.189' 
    capture_lex $P509
    $P510 = $P509()
    .const 'Sub' $P511 = 'cuid_34_1346233419.189' 
    capture_lex $P511
    $P512 = $P511()
    .const 'Sub' $P513 = 'cuid_36_1346233419.189' 
    capture_lex $P513
    $P514 = $P513()
    .const 'Sub' $P515 = 'cuid_55_1346233419.189' 
    capture_lex $P515
    $P516 = $P515()
    .const 'Sub' $P517 = 'cuid_98_1346233419.189' 
    capture_lex $P517
    $P518 = $P517()
    .const 'Sub' $P519 = 'cuid_108_1346233419.189' 
    capture_lex $P519
    $P520 = $P519()
    .const 'Sub' $P521 = 'cuid_119_1346233419.189' 
    capture_lex $P521
    $P522 = $P521()
    .const 'Sub' $P523 = 'cuid_130_1346233419.189' 
    capture_lex $P523
    $P524 = $P523()
    .const 'Sub' $P525 = 'cuid_131_1346233419.189' 
    capture_lex $P525
    $P526 = $P525()
    set $P531, _lex_param_0
    unless _lex_param_0 goto if110_end530 
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P527, "ModuleLoader"
    getinterp $P529
    set $P528, $P529["context"]
    $P530 = $P527."set_mainline_module"($P528)
    set $P531, $P530
  if110_end530:
    .return () 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_12_1346233419.189") :anon :lex :outer("cuid_1_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 9
    .const 'Sub' $P511 = 'cuid_2_1346233419.189' 
    capture_lex $P511 
    .const 'Sub' $P511 = 'cuid_3_1346233419.189' 
    capture_lex $P511 
    .const 'Sub' $P511 = 'cuid_4_1346233419.189' 
    capture_lex $P511 
    .const 'Sub' $P511 = 'cuid_5_1346233419.189' 
    capture_lex $P511 
    .const 'Sub' $P511 = 'cuid_6_1346233419.189' 
    capture_lex $P511 
    .const 'Sub' $P511 = 'cuid_7_1346233419.189' 
    capture_lex $P511 
    .const 'Sub' $P511 = 'cuid_8_1346233419.189' 
    capture_lex $P511 
    .const 'Sub' $P511 = 'cuid_9_1346233419.189' 
    capture_lex $P511 
    .const 'Sub' $P511 = 'cuid_10_1346233419.189' 
    capture_lex $P511 
    .const 'Sub' $P511 = 'cuid_11_1346233419.189' 
    capture_lex $P511 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P501 = 'cuid_2_1346233419.189' 
    capture_lex $P501
    .const 'Sub' $P502 = 'cuid_3_1346233419.189' 
    capture_lex $P502
    .const 'Sub' $P503 = 'cuid_4_1346233419.189' 
    capture_lex $P503
    .const 'Sub' $P504 = 'cuid_5_1346233419.189' 
    capture_lex $P504
    .const 'Sub' $P505 = 'cuid_6_1346233419.189' 
    capture_lex $P505
    .const 'Sub' $P506 = 'cuid_7_1346233419.189' 
    capture_lex $P506
    .const 'Sub' $P507 = 'cuid_8_1346233419.189' 
    capture_lex $P507
    .const 'Sub' $P508 = 'cuid_9_1346233419.189' 
    capture_lex $P508
    .const 'Sub' $P509 = 'cuid_10_1346233419.189' 
    capture_lex $P509
    .const 'Sub' $P510 = 'cuid_11_1346233419.189' 
    capture_lex $P510
    .return ($P510) 
.end
.HLL "nqp"
.namespace []
.sub "new" :subid("cuid_2_1346233419.189") :anon :lex :outer("cuid_12_1346233419.189")
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
    null $P505
    set _lex_param_1, $P505
  default14:
    if haz_param_2, default15
    null $P506
    set _lex_param_2, $P506
  default15:
    if haz_param_3, default16
    null $P507
    set _lex_param_3, $P507
  default16:
    if haz_param_4, default17
    null $P508
    set _lex_param_4, $P508
  default17:
    .lex "$arch", $P101 
    .lex "self", _lex_param_0 
    .lex "$nominal", _lex_param_1 
    .lex "$inheritable", _lex_param_2 
    .lex "$composable", _lex_param_3 
    .lex "$parametric", _lex_param_4 
    null $P501
    set $P101, $P501
    nqp_decontainerize $P503, _lex_param_0
    repr_instance_of $P502, $P503
    set $P101, $P502
.annotate 'line', 49
    $P504 = $P101."BUILD"(_lex_param_1 :named("nominal"), _lex_param_2 :named("inheritable"), _lex_param_3 :named("composable"), _lex_param_4 :named("parametric"))
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "BUILD" :subid("cuid_3_1346233419.189") :anon :lex :outer("cuid_12_1346233419.189")
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
    null $P509
    set _lex_param_1, $P509
  default18:
    if haz_param_6, default19
    null $P510
    set _lex_param_2, $P510
  default19:
    if haz_param_7, default20
    null $P511
    set _lex_param_3, $P511
  default20:
    if haz_param_8, default21
    null $P512
    set _lex_param_4, $P512
  default21:
    .lex "self", _lex_param_0 
    .lex "$nominal", _lex_param_1 
    .lex "$inheritable", _lex_param_2 
    .lex "$composable", _lex_param_3 
    .lex "$parametric", _lex_param_4 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 1
    repr_bind_attr_obj $P501, $P502, "$!nominal", _lex_param_1
    nqp_decontainerize $P503, _lex_param_0
    nqp_get_sc_object $P504, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 1
    repr_bind_attr_obj $P503, $P504, "$!inheritable", _lex_param_2
    nqp_decontainerize $P505, _lex_param_0
    nqp_get_sc_object $P506, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 1
    repr_bind_attr_obj $P505, $P506, "$!composable", _lex_param_3
    nqp_decontainerize $P507, _lex_param_0
    nqp_get_sc_object $P508, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 1
    repr_bind_attr_obj $P507, $P508, "$!parametric", _lex_param_4
    .return (_lex_param_4) 
.end
.HLL "nqp"
.namespace []
.sub "nominal" :subid("cuid_4_1346233419.189") :anon :lex :outer("cuid_12_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 61
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 1
    repr_get_attr_obj $P503, $P501, $P502, "$!nominal"
    .return ($P503) 
.end
.HLL "nqp"
.namespace []
.sub "nominalizable" :subid("cuid_5_1346233419.189") :anon :lex :outer("cuid_12_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 62
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 1
    repr_get_attr_obj $P503, $P501, $P502, "$!nominalizable"
    .return ($P503) 
.end
.HLL "nqp"
.namespace []
.sub "inheritable" :subid("cuid_6_1346233419.189") :anon :lex :outer("cuid_12_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 63
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 1
    repr_get_attr_obj $P503, $P501, $P502, "$!inheritable"
    .return ($P503) 
.end
.HLL "nqp"
.namespace []
.sub "inheritalizable" :subid("cuid_7_1346233419.189") :anon :lex :outer("cuid_12_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 64
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 1
    repr_get_attr_obj $P503, $P501, $P502, "$!inheritalizable"
    .return ($P503) 
.end
.HLL "nqp"
.namespace []
.sub "composable" :subid("cuid_8_1346233419.189") :anon :lex :outer("cuid_12_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 65
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 1
    repr_get_attr_obj $P503, $P501, $P502, "$!composable"
    .return ($P503) 
.end
.HLL "nqp"
.namespace []
.sub "composalizable" :subid("cuid_9_1346233419.189") :anon :lex :outer("cuid_12_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 66
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 1
    repr_get_attr_obj $P503, $P501, $P502, "$!composalizable"
    .return ($P503) 
.end
.HLL "nqp"
.namespace []
.sub "generic" :subid("cuid_10_1346233419.189") :anon :lex :outer("cuid_12_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 67
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 1
    repr_get_attr_obj $P503, $P501, $P502, "$!generic"
    .return ($P503) 
.end
.HLL "nqp"
.namespace []
.sub "parametric" :subid("cuid_11_1346233419.189") :anon :lex :outer("cuid_12_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 68
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 1
    repr_get_attr_obj $P503, $P501, $P502, "$!parametric"
    .return ($P503) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_14_1346233419.189") :anon :lex :outer("cuid_1_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 72
    .const 'Sub' $P502 = 'cuid_13_1346233419.189' 
    capture_lex $P502 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P501 = 'cuid_13_1346233419.189' 
    capture_lex $P501
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "apply" :subid("cuid_13_1346233419.189") :anon :lex :outer("cuid_14_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 73
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .const 'Sub' $P533 = 'cuid_134_1346233419.189' 
    capture_lex $P533 
    .const 'Sub' $P533 = 'cuid_135_1346233419.189' 
    capture_lex $P533 
    .const 'Sub' $P533 = 'cuid_136_1346233419.189' 
    capture_lex $P533 
    .const 'Sub' $P533 = 'cuid_139_1346233419.189' 
    capture_lex $P533 
    .lex "%meth_info", $P101 
    .lex "%target_meth_info", $P102 
    .lex "@target_meths", $P103 
    .lex "@all_roles", $P104 
    .lex "self", _lex_param_0 
    .lex "$target", _lex_param_1 
    .lex "@roles", _lex_param_2 
    new $P501, 'Hash'
    set $P101, $P501
    new $P502, 'Hash'
    set $P102, $P502
    new $P503, 'ResizablePMCArray'
    set $P103, $P503
    new $P504, 'ResizablePMCArray'
    set $P104, $P504
    root_new $P105, ['parrot';'Continuation']
    set_label $P105, lexotic_22
    .lex "RETURN", $P105
    set $P505, _lex_param_2
    iter $P507, _lex_param_2
    new $P509, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P509, for_handlers40
    push_eh $P509
  for_next41:
    unless $P507, for_done43
    shift $P510, $P507
  for_redo42:
    .const 'Sub' $P508 = 'cuid_134_1346233419.189' 
    capture_lex $P508
    $P505 = $P508($P510)
    goto for_next41
  for_handlers40:
    .get_results ($P509)
    pop_upto_eh $P509
    getattribute $P509, $P509, 'type'
    eq $P509, .CONTROL_LOOP_NEXT, for_next41
    eq $P509, .CONTROL_LOOP_REDO, for_redo42
  for_done43:
    pop_eh 
.annotate 'line', 102
    get_how $P511, _lex_param_1
    $P512 = $P511."methods"(_lex_param_1)
    set $P103, $P512
    set $P513, $P103
    iter $P515, $P103
    new $P517, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P517, for_handlers44
    push_eh $P517
  for_next45:
    unless $P515, for_done47
    shift $P518, $P515
  for_redo46:
    .const 'Sub' $P516 = 'cuid_135_1346233419.189' 
    capture_lex $P516
    $P513 = $P516($P518)
    goto for_next45
  for_handlers44:
    .get_results ($P517)
    pop_upto_eh $P517
    getattribute $P517, $P517, 'type'
    eq $P517, .CONTROL_LOOP_NEXT, for_next45
    eq $P517, .CONTROL_LOOP_REDO, for_redo46
  for_done47:
    pop_eh 
    set $P519, $P101
    iter $P521, $P101
    new $P523, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P523, for_handlers55
    push_eh $P523
  for_next56:
    unless $P521, for_done58
    shift $P524, $P521
  for_redo57:
    .const 'Sub' $P522 = 'cuid_136_1346233419.189' 
    capture_lex $P522
    $P519 = $P522($P524)
    goto for_next56
  for_handlers55:
    .get_results ($P523)
    pop_upto_eh $P523
    getattribute $P523, $P523, 'type'
    eq $P523, .CONTROL_LOOP_NEXT, for_next56
    eq $P523, .CONTROL_LOOP_REDO, for_redo57
  for_done58:
    pop_eh 
    set $P525, _lex_param_2
    iter $P527, _lex_param_2
    new $P529, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P529, for_handlers73
    push_eh $P529
  for_next74:
    unless $P527, for_done76
    shift $P530, $P527
  for_redo75:
    .const 'Sub' $P528 = 'cuid_139_1346233419.189' 
    capture_lex $P528
    $P525 = $P528($P530)
    goto for_next74
  for_handlers73:
    .get_results ($P529)
    pop_upto_eh $P529
    getattribute $P529, $P529, 'type'
    eq $P529, .CONTROL_LOOP_NEXT, for_next74
    eq $P529, .CONTROL_LOOP_REDO, for_redo75
  for_done76:
    pop_eh 
    find_lex $P531, "RETURN"
    $P532 = $P531($P104)
    goto lexotic_23
  lexotic_22:
    .get_results ($P532)
  lexotic_23:
    .return ($P532) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_134_1346233419.189") :anon :lex :outer("cuid_13_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 76
    .param pmc _lex_param_0 
    .const 'Sub' $P510 = 'cuid_133_1346233419.189' 
    capture_lex $P510 
    .lex "@methods", $P101 
    .lex "$_", _lex_param_0 
    new $P501, 'ResizablePMCArray'
    set $P101, $P501
.annotate 'line', 77
    get_how $P502, _lex_param_0
    $P503 = $P502."methods"(_lex_param_0)
    set $P101, $P503
    set $P504, $P101
    iter $P506, $P101
    new $P508, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P508, for_handlers36
    push_eh $P508
  for_next37:
    unless $P506, for_done39
    shift $P509, $P506
  for_redo38:
    .const 'Sub' $P507 = 'cuid_133_1346233419.189' 
    capture_lex $P507
    $P504 = $P507($P509)
    goto for_next37
  for_handlers36:
    .get_results ($P508)
    pop_upto_eh $P508
    getattribute $P508, $P508, 'type'
    eq $P508, .CONTROL_LOOP_NEXT, for_next37
    eq $P508, .CONTROL_LOOP_REDO, for_redo38
  for_done39:
    pop_eh 
    .return ($P504) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_133_1346233419.189") :anon :lex :outer("cuid_134_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 78
    .param pmc _lex_param_0 
    .const 'Sub' $P523 = 'cuid_132_1346233419.189' 
    capture_lex $P523 
    .lex "$name", $P101 
    .lex "$meth", $P102 
    .lex "@meth_list", $P103 
    .lex "$found", $P104 
    .lex "$_", _lex_param_0 
    null $P501
    set $P101, $P501
    null $P502
    set $P102, $P502
    new $P503, 'ResizablePMCArray'
    set $P103, $P503
    null $P504
    set $P104, $P504
    set $S501, _lex_param_0
    box $P505, $S501
    set $P101, $P505
    set $P102, _lex_param_0
    find_lex $P507, "%meth_info"
    set $S502, $P101
    set $P506, $P507[$S502]
    unless_null $P506, fallback26
    null $P508
    set $P506, $P508
  fallback26:
    defined $I501, $P506
    unless $I501 goto if12_else24 
.annotate 'line', 82
    find_lex $P510, "%meth_info"
    set $S503, $P101
    set $P509, $P510[$S503]
    unless_null $P509, fallback27
    null $P511
    set $P509, $P511
  fallback27:
    set $P103, $P509
    set $P513, $P103
    goto if12_end25
  if12_else24:
.annotate 'line', 85
    find_lex $P512, "%meth_info"
    set $S504, $P101
    set $P512[$S504], $P103
    set $P513, $P103
  if12_end25:
    box $P514, 0
    set $P104, $P514
    set $P515, $P103
    iter $P517, $P103
    new $P519, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P519, for_handlers30
    push_eh $P519
  for_next31:
    unless $P517, for_done33
    shift $P520, $P517
  for_redo32:
    .const 'Sub' $P518 = 'cuid_132_1346233419.189' 
    capture_lex $P518
    $P515 = $P518($P520)
    goto for_next31
  for_handlers30:
    .get_results ($P519)
    pop_upto_eh $P519
    getattribute $P519, $P519, 'type'
    eq $P519, .CONTROL_LOOP_NEXT, for_next31
    eq $P519, .CONTROL_LOOP_REDO, for_redo32
  for_done33:
    pop_eh 
    set $P522, $P104
    if $P104 goto unless14_end35 
.annotate 'line', 94
.annotate 'line', 95
    $P521 = $P103."push"($P102)
    set $P522, $P521
  unless14_end35:
    .return ($P522) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_132_1346233419.189") :anon :lex :outer("cuid_133_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 89
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P501, "$meth"
    get_id $I502, $P501
    get_id $I503, _lex_param_0
    iseq $I501, $I502, $I503
    box $P504, $I501
    set $P503, $P504
    unless $I501 goto if13_end29 
.annotate 'line', 90
    box $P502, 1
    store_lex "$found", $P502
    set $P503, $P502
  if13_end29:
    .return ($P503) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_135_1346233419.189") :anon :lex :outer("cuid_13_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 103
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P501, "%target_meth_info"
    set $S501, _lex_param_0
    set $P501[$S501], _lex_param_0
    .return (_lex_param_0) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_136_1346233419.189") :anon :lex :outer("cuid_13_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 108
    .param pmc _lex_param_0 
    .lex "$name", $P101 
    .lex "@add_meths", $P102 
    .lex "$_", _lex_param_0 
    null $P501
    set $P101, $P501
    new $P502, 'ResizablePMCArray'
    set $P102, $P502
    set $S501, _lex_param_0
    box $P503, $S501
    set $P101, $P503
    find_lex $P505, "%meth_info"
    set $S502, $P101
    set $P504, $P505[$S502]
    unless_null $P504, fallback48
    null $P506
    set $P504, $P506
  fallback48:
    set $P102, $P504
    find_lex $P508, "%target_meth_info"
    set $S503, $P101
    set $P507, $P508[$S503]
    unless_null $P507, fallback51
    null $P509
    set $P507, $P509
  fallback51:
    defined $I501, $P507
    box $P522, $I501
    set $P521, $P522
    if $I501 goto unless15_end50 
.annotate 'line', 114
    set $N501, $P102
    set $N502, 1
    iseq $I502, $N501, $N502
    unless $I502 goto if16_else52 
.annotate 'line', 116
.annotate 'line', 117
    find_lex $P511, "$target"
    get_how $P510, $P511
    find_lex $P512, "$target"
    set $P513, $P102[0]
    unless_null $P513, fallback54
    null $P514
    set $P513, $P514
  fallback54:
    $P515 = $P510."add_method"($P512, $P101, $P513)
    set $P520, $P515
    goto if16_end53
  if16_else52:
.annotate 'line', 119
.annotate 'line', 121
    find_lex $P517, "$target"
    get_how $P516, $P517
    find_lex $P518, "$target"
    $P519 = $P516."add_collision"($P518, $P101)
    set $P520, $P519
  if16_end53:
    set $P521, $P520
  unless15_end50:
    .return ($P521) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_139_1346233419.189") :anon :lex :outer("cuid_13_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 128
    .param pmc _lex_param_0 
    .const 'Sub' $P513 = 'cuid_138_1346233419.189' 
    capture_lex $P513 
    .lex "$how", $P101 
    .lex "@attributes", $P102 
    .lex "$_", _lex_param_0 
    null $P501
    set $P101, $P501
    new $P502, 'ResizablePMCArray'
    set $P102, $P502
    get_how $P503, _lex_param_0
    set $P101, $P503
.annotate 'line', 132
    $P504 = $P101."attributes"(_lex_param_0)
    set $P102, $P504
    set $P505, $P102
    iter $P507, $P102
    new $P509, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P509, for_handlers69
    push_eh $P509
  for_next70:
    unless $P507, for_done72
    shift $P510, $P507
  for_redo71:
    .const 'Sub' $P508 = 'cuid_138_1346233419.189' 
    capture_lex $P508
    $P505 = $P508($P510)
    goto for_next70
  for_handlers69:
    .get_results ($P509)
    pop_upto_eh $P509
    getattribute $P509, $P509, 'type'
    eq $P509, .CONTROL_LOOP_NEXT, for_next70
    eq $P509, .CONTROL_LOOP_REDO, for_redo71
  for_done72:
    pop_eh 
.annotate 'line', 154
    find_lex $P511, "@all_roles"
    $P512 = $P511."push"(_lex_param_0)
    .return ($P512) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_138_1346233419.189") :anon :lex :outer("cuid_139_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 133
    .param pmc _lex_param_0 
    .const 'Sub' $P520 = 'cuid_137_1346233419.189' 
    capture_lex $P520 
    .lex "$add_attr", $P101 
    .lex "$skip", $P102 
    .lex "@cur_attrs", $P103 
    .lex "$_", _lex_param_0 
    null $P501
    set $P101, $P501
    null $P502
    set $P102, $P502
    new $P503, 'ResizablePMCArray'
    set $P103, $P503
    set $P101, _lex_param_0
    box $P504, 0
    set $P102, $P504
.annotate 'line', 136
    find_lex $P506, "$target"
    get_how $P505, $P506
    find_lex $P507, "$target"
    $P508 = $P505."attributes"($P507)
    set $P103, $P508
    set $P509, $P103
    iter $P511, $P103
    new $P513, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P513, for_handlers63
    push_eh $P513
  for_next64:
    unless $P511, for_done66
    shift $P514, $P511
  for_redo65:
    .const 'Sub' $P512 = 'cuid_137_1346233419.189' 
    capture_lex $P512
    $P509 = $P512($P514)
    goto for_next64
  for_handlers63:
    .get_results ($P513)
    pop_upto_eh $P513
    getattribute $P513, $P513, 'type'
    eq $P513, .CONTROL_LOOP_NEXT, for_next64
    eq $P513, .CONTROL_LOOP_REDO, for_redo65
  for_done66:
    pop_eh 
    set $P519, $P102
    if $P102 goto unless19_end68 
.annotate 'line', 147
.annotate 'line', 148
    find_lex $P516, "$target"
    get_how $P515, $P516
    find_lex $P517, "$target"
    $P518 = $P515."add_attribute"($P517, $P101)
    set $P519, $P518
  unless19_end68:
    .return ($P519) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_137_1346233419.189") :anon :lex :outer("cuid_138_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 137
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    get_id $I502, _lex_param_0
    find_lex $P501, "$add_attr"
    get_id $I503, $P501
    iseq $I501, $I502, $I503
    unless $I501 goto if17_else59 
.annotate 'line', 138
    box $P502, 1
    store_lex "$skip", $P502
    set $P510, $P502
    goto if17_end60
  if17_else59:
.annotate 'line', 141
.annotate 'line', 142
    $P503 = _lex_param_0."name"()
    set $S501, $P503
    find_lex $P504, "$add_attr"
    $P505 = $P504."name"()
    set $S502, $P505
    iseq $I504, $S501, $S502
    box $P509, $I504
    set $P508, $P509
    unless $I504 goto if18_end62 
.annotate 'line', 143
    $P506 = _lex_param_0."name"()
    set $S505, $P506
    concat $S504, "Attribute '", $S505
    concat $S503, $S504, "' conflicts in role composition"
    box $P507, $S503
    die $P507
    set $P508, $P507
  if18_end62:
    set $P510, $P508
  if17_end60:
    .return ($P510) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_34_1346233419.189") :anon :lex :outer("cuid_1_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 164
    .const 'Sub' $P523 = 'cuid_15_1346233419.189' 
    capture_lex $P523 
    .const 'Sub' $P523 = 'cuid_16_1346233419.189' 
    capture_lex $P523 
    .const 'Sub' $P523 = 'cuid_17_1346233419.189' 
    capture_lex $P523 
    .const 'Sub' $P523 = 'cuid_18_1346233419.189' 
    capture_lex $P523 
    .const 'Sub' $P523 = 'cuid_19_1346233419.189' 
    capture_lex $P523 
    .const 'Sub' $P523 = 'cuid_20_1346233419.189' 
    capture_lex $P523 
    .const 'Sub' $P523 = 'cuid_21_1346233419.189' 
    capture_lex $P523 
    .const 'Sub' $P523 = 'cuid_22_1346233419.189' 
    capture_lex $P523 
    .const 'Sub' $P523 = 'cuid_23_1346233419.189' 
    capture_lex $P523 
    .const 'Sub' $P523 = 'cuid_24_1346233419.189' 
    capture_lex $P523 
    .const 'Sub' $P523 = 'cuid_25_1346233419.189' 
    capture_lex $P523 
    .const 'Sub' $P523 = 'cuid_26_1346233419.189' 
    capture_lex $P523 
    .const 'Sub' $P523 = 'cuid_27_1346233419.189' 
    capture_lex $P523 
    .const 'Sub' $P523 = 'cuid_28_1346233419.189' 
    capture_lex $P523 
    .const 'Sub' $P523 = 'cuid_29_1346233419.189' 
    capture_lex $P523 
    .const 'Sub' $P523 = 'cuid_30_1346233419.189' 
    capture_lex $P523 
    .const 'Sub' $P523 = 'cuid_31_1346233419.189' 
    capture_lex $P523 
    .const 'Sub' $P523 = 'cuid_32_1346233419.189' 
    capture_lex $P523 
    .const 'Sub' $P523 = 'cuid_33_1346233419.189' 
    capture_lex $P523 
    .lex "$archetypes", $P101 
    .lex "$?PACKAGE", $P102 
    .lex "$?CLASS", $P103 
    null $P501
    set $P101, $P501
.annotate 'line', 190
    find_lex $P502, "Archetypes"
    $P503 = $P502."new"(1 :named("nominal"), 1 :named("composable"))
    set $P101, $P503
    .const 'Sub' $P504 = 'cuid_15_1346233419.189' 
    capture_lex $P504
    .const 'Sub' $P505 = 'cuid_16_1346233419.189' 
    capture_lex $P505
    .const 'Sub' $P506 = 'cuid_17_1346233419.189' 
    capture_lex $P506
    .const 'Sub' $P507 = 'cuid_18_1346233419.189' 
    capture_lex $P507
    .const 'Sub' $P508 = 'cuid_19_1346233419.189' 
    capture_lex $P508
    .const 'Sub' $P509 = 'cuid_20_1346233419.189' 
    capture_lex $P509
    .const 'Sub' $P510 = 'cuid_21_1346233419.189' 
    capture_lex $P510
    .const 'Sub' $P511 = 'cuid_22_1346233419.189' 
    capture_lex $P511
    .const 'Sub' $P512 = 'cuid_23_1346233419.189' 
    capture_lex $P512
    .const 'Sub' $P513 = 'cuid_24_1346233419.189' 
    capture_lex $P513
    .const 'Sub' $P514 = 'cuid_25_1346233419.189' 
    capture_lex $P514
    .const 'Sub' $P515 = 'cuid_26_1346233419.189' 
    capture_lex $P515
    .const 'Sub' $P516 = 'cuid_27_1346233419.189' 
    capture_lex $P516
    .const 'Sub' $P517 = 'cuid_28_1346233419.189' 
    capture_lex $P517
    .const 'Sub' $P518 = 'cuid_29_1346233419.189' 
    capture_lex $P518
    .const 'Sub' $P519 = 'cuid_30_1346233419.189' 
    capture_lex $P519
    .const 'Sub' $P520 = 'cuid_31_1346233419.189' 
    capture_lex $P520
    .const 'Sub' $P521 = 'cuid_32_1346233419.189' 
    capture_lex $P521
    .const 'Sub' $P522 = 'cuid_33_1346233419.189' 
    capture_lex $P522
    .return ($P522) 
.end
.HLL "nqp"
.namespace []
.sub "archetypes" :subid("cuid_15_1346233419.189") :anon :lex :outer("cuid_34_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 191
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    find_lex $P501, "$archetypes"
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "new" :subid("cuid_16_1346233419.189") :anon :lex :outer("cuid_34_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 200
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("name") 
    .param pmc _lex_param_2 :named("instance_of") 
    .lex "$obj", $P101 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    .lex "$instance_of", _lex_param_2 
    null $P501
    set $P101, $P501
    nqp_decontainerize $P503, _lex_param_0
    repr_instance_of $P502, $P503
    set $P101, $P502
.annotate 'line', 202
    $P504 = $P101."BUILD"(_lex_param_1 :named("name"), _lex_param_2 :named("instance_of"))
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "BUILD" :subid("cuid_17_1346233419.189") :anon :lex :outer("cuid_34_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 206
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("name") 
    .param pmc _lex_param_2 :named("instance_of") 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    .lex "$instance_of", _lex_param_2 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 3
    repr_bind_attr_obj $P501, $P502, "$!name", _lex_param_1
    nqp_decontainerize $P503, _lex_param_0
    nqp_get_sc_object $P504, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 3
    repr_bind_attr_obj $P503, $P504, "$!instance_of", _lex_param_2
    nqp_decontainerize $P505, _lex_param_0
    nqp_get_sc_object $P506, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 3
    new $P507, 'Hash'
    repr_bind_attr_obj $P505, $P506, "%!attributes", $P507
    nqp_decontainerize $P508, _lex_param_0
    nqp_get_sc_object $P509, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 3
    new $P510, 'Hash'
    repr_bind_attr_obj $P508, $P509, "%!methods", $P510
    nqp_decontainerize $P511, _lex_param_0
    nqp_get_sc_object $P512, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 3
    new $P513, 'ResizablePMCArray'
    repr_bind_attr_obj $P511, $P512, "@!multi_methods_to_incorporate", $P513
    nqp_decontainerize $P514, _lex_param_0
    nqp_get_sc_object $P515, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 3
    new $P516, 'ResizablePMCArray'
    repr_bind_attr_obj $P514, $P515, "@!collisions", $P516
    nqp_decontainerize $P517, _lex_param_0
    nqp_get_sc_object $P518, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 3
    new $P519, 'ResizablePMCArray'
    repr_bind_attr_obj $P517, $P518, "@!roles", $P519
    nqp_decontainerize $P520, _lex_param_0
    nqp_get_sc_object $P521, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 3
    new $P522, 'ResizablePMCArray'
    repr_bind_attr_obj $P520, $P521, "@!role_typecheck_list", $P522
    nqp_decontainerize $P523, _lex_param_0
    nqp_get_sc_object $P524, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 3
    box $P525, 0
    repr_bind_attr_obj $P523, $P524, "$!composed", $P525
    .return ($P525) 
.end
.HLL "nqp"
.namespace []
.sub "new_type" :subid("cuid_18_1346233419.189") :anon :lex :outer("cuid_34_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 220
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("name") :optional 
    .param int haz_param_9 :opt_flag 
    .param pmc _lex_param_2 :named("instance_of") 
    if haz_param_9, default77
    box $P505, "<anon>"
    set _lex_param_1, $P505
  default77:
    .lex "$metarole", $P101 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    .lex "$instance_of", _lex_param_2 
    null $P501
    set $P101, $P501
.annotate 'line', 221
    nqp_decontainerize $P502, _lex_param_0
    $P503 = $P502."new"(_lex_param_1 :named("name"), _lex_param_2 :named("instance_of"))
    set $P101, $P503
    repr_type_object_for $P504, $P101, "Uninstantiable"
    .return ($P504) 
.end
.HLL "nqp"
.namespace []
.sub "add_method" :subid("cuid_19_1346233419.189") :anon :lex :outer("cuid_34_1346233419.189")
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
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 3
    repr_get_attr_obj $P503, $P501, $P502, "%!methods"
    set $S501, _lex_param_2
    exists $I501, $P503[$S501]
    box $P506, $I501
    set $P505, $P506
    unless $I501 goto if20_end79 
.annotate 'line', 226
    set $S503, _lex_param_2
    concat $S502, "This role already has a method named ", $S503
    box $P504, $S502
    die $P504
    set $P505, $P504
  if20_end79:
    nqp_decontainerize $P507, _lex_param_0
    nqp_get_sc_object $P508, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 3
    repr_get_attr_obj $P509, $P507, $P508, "%!methods"
    set $S504, _lex_param_2
    set $P509[$S504], _lex_param_3
    .return (_lex_param_3) 
.end
.HLL "nqp"
.namespace []
.sub "add_multi_method" :subid("cuid_20_1346233419.189") :anon :lex :outer("cuid_34_1346233419.189")
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
    new $P501, 'Hash'
    set $P101, $P501
    set $P101["name"], _lex_param_2
    set $P101["code"], _lex_param_3
    nqp_decontainerize $P502, _lex_param_0
    nqp_get_sc_object $P503, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 3
    repr_get_attr_obj $P504, $P502, $P503, "@!multi_methods_to_incorporate"
    nqp_decontainerize $P505, _lex_param_0
    nqp_get_sc_object $P506, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 3
    repr_get_attr_obj $P507, $P505, $P506, "@!multi_methods_to_incorporate"
    set $N501, $P507
    set $I501, $N501
    set $P504[$I501], $P101
    .return (_lex_param_3) 
.end
.HLL "nqp"
.namespace []
.sub "add_attribute" :subid("cuid_21_1346233419.189") :anon :lex :outer("cuid_34_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 240
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "$name", $P101 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$meta_attr", _lex_param_2 
    null $P501
    set $P101, $P501
.annotate 'line', 241
    $P502 = _lex_param_2."name"()
    set $P101, $P502
    nqp_decontainerize $P503, _lex_param_0
    nqp_get_sc_object $P504, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 3
    repr_get_attr_obj $P505, $P503, $P504, "%!attributes"
    set $S501, $P101
    exists $I501, $P505[$S501]
    box $P508, $I501
    set $P507, $P508
    unless $I501 goto if21_end81 
.annotate 'line', 242
    set $S503, $P101
    concat $S502, "This role already has an attribute named ", $S503
    box $P506, $S502
    die $P506
    set $P507, $P506
  if21_end81:
    nqp_decontainerize $P509, _lex_param_0
    nqp_get_sc_object $P510, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 3
    repr_get_attr_obj $P511, $P509, $P510, "%!attributes"
    set $S504, $P101
    set $P511[$S504], _lex_param_2
    .return (_lex_param_2) 
.end
.HLL "nqp"
.namespace []
.sub "add_parent" :subid("cuid_22_1346233419.189") :anon :lex :outer("cuid_34_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 248
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$parent", _lex_param_2 
    box $P501, "A role cannot inherit from a class in NQP"
    die $P501
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "add_role" :subid("cuid_23_1346233419.189") :anon :lex :outer("cuid_34_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 252
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$role", _lex_param_2 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 3
    repr_get_attr_obj $P503, $P501, $P502, "@!roles"
    nqp_decontainerize $P504, _lex_param_0
    nqp_get_sc_object $P505, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 3
    repr_get_attr_obj $P506, $P504, $P505, "@!roles"
    set $N501, $P506
    set $I501, $N501
    set $P503[$I501], _lex_param_2
    .return (_lex_param_2) 
.end
.HLL "nqp"
.namespace []
.sub "add_collision" :subid("cuid_24_1346233419.189") :anon :lex :outer("cuid_34_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 256
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$colliding_name", _lex_param_2 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 3
    repr_get_attr_obj $P503, $P501, $P502, "@!collisions"
    nqp_decontainerize $P504, _lex_param_0
    nqp_get_sc_object $P505, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 3
    repr_get_attr_obj $P506, $P504, $P505, "@!collisions"
    set $N501, $P506
    set $I501, $N501
    set $P503[$I501], _lex_param_2
    .return (_lex_param_2) 
.end
.HLL "nqp"
.namespace []
.sub "compose" :subid("cuid_25_1346233419.189") :anon :lex :outer("cuid_34_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 261
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P522 = 'cuid_140_1346233419.189' 
    capture_lex $P522 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 3
    repr_get_attr_obj $P503, $P501, $P502, "@!roles"
    set $P518, $P503
    unless $P503 goto if22_end83 
.annotate 'line', 264
    nqp_decontainerize $P507, _lex_param_0
    nqp_get_sc_object $P508, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 3
    repr_get_attr_obj $P509, $P507, $P508, "@!roles"
    set $P504, $P509
    iter $P506, $P509
    new $P511, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P511, for_handlers84
    push_eh $P511
  for_next85:
    unless $P506, for_done87
    shift $P512, $P506
  for_redo86:
    .const 'Sub' $P510 = 'cuid_140_1346233419.189' 
    capture_lex $P510
    $P504 = $P510($P512)
    goto for_next85
  for_handlers84:
    .get_results ($P511)
    pop_upto_eh $P511
    getattribute $P511, $P511, 'type'
    eq $P511, .CONTROL_LOOP_NEXT, for_next85
    eq $P511, .CONTROL_LOOP_REDO, for_redo86
  for_done87:
    pop_eh 
.annotate 'line', 269
    find_lex $P513, "RoleToRoleApplier"
    nqp_decontainerize $P514, _lex_param_0
    nqp_get_sc_object $P515, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 3
    repr_get_attr_obj $P516, $P514, $P515, "@!roles"
    $P517 = $P513."apply"(_lex_param_1, $P516)
    set $P518, $P517
  if22_end83:
    nqp_decontainerize $P519, _lex_param_0
    nqp_get_sc_object $P520, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 3
    box $P521, 1
    repr_bind_attr_obj $P519, $P520, "$!composed", $P521
    .return (_lex_param_1) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_140_1346233419.189") :anon :lex :outer("cuid_25_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 265
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P502, "self"
    nqp_decontainerize $P501, $P502
    nqp_get_sc_object $P503, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 3
    repr_get_attr_obj $P504, $P501, $P503, "@!role_typecheck_list"
    find_lex $P506, "self"
    nqp_decontainerize $P505, $P506
    nqp_get_sc_object $P507, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 3
    repr_get_attr_obj $P508, $P505, $P507, "@!role_typecheck_list"
    set $N501, $P508
    set $I501, $N501
    set $P504[$I501], _lex_param_0
    find_lex $P510, "self"
    nqp_decontainerize $P509, $P510
    nqp_get_sc_object $P511, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 3
    repr_get_attr_obj $P512, $P509, $P511, "@!role_typecheck_list"
    find_lex $P514, "self"
    nqp_decontainerize $P513, $P514
    nqp_get_sc_object $P515, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 3
    repr_get_attr_obj $P516, $P513, $P515, "@!role_typecheck_list"
    set $N502, $P516
    set $I502, $N502
.annotate 'line', 267
    get_how $P517, _lex_param_0
    $P518 = $P517."instance_of"(_lex_param_0)
    set $P512[$I502], $P518
    .return ($P518) 
.end
.HLL "nqp"
.namespace []
.sub "methods" :subid("cuid_26_1346233419.189") :anon :lex :outer("cuid_34_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 282
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :named("local") :optional 
    .param int haz_param_10 :opt_flag 
    .const 'Sub' $P512 = 'cuid_141_1346233419.189' 
    capture_lex $P512 
    if haz_param_10, default92
    null $P511
    set _lex_param_2, $P511
  default92:
    .lex "@meths", $P101 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$local", _lex_param_2 
    new $P501, 'ResizablePMCArray'
    set $P101, $P501
    nqp_decontainerize $P505, _lex_param_0
    nqp_get_sc_object $P506, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 3
    repr_get_attr_obj $P507, $P505, $P506, "%!methods"
    set $P502, $P507
    iter $P504, $P507
    new $P509, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P509, for_handlers88
    push_eh $P509
  for_next89:
    unless $P504, for_done91
    shift $P510, $P504
  for_redo90:
    .const 'Sub' $P508 = 'cuid_141_1346233419.189' 
    capture_lex $P508
    $P502 = $P508($P510)
    goto for_next89
  for_handlers88:
    .get_results ($P509)
    pop_upto_eh $P509
    getattribute $P509, $P509, 'type'
    eq $P509, .CONTROL_LOOP_NEXT, for_next89
    eq $P509, .CONTROL_LOOP_REDO, for_redo90
  for_done91:
    pop_eh 
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_141_1346233419.189") :anon :lex :outer("cuid_26_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 284
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 285
    find_lex $P501, "@meths"
    $P502 = _lex_param_0."value"()
    $P503 = $P501."push"($P502)
    .return ($P503) 
.end
.HLL "nqp"
.namespace []
.sub "method_table" :subid("cuid_27_1346233419.189") :anon :lex :outer("cuid_34_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 290
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 3
    repr_get_attr_obj $P503, $P501, $P502, "%!methods"
    .return ($P503) 
.end
.HLL "nqp"
.namespace []
.sub "collisions" :subid("cuid_28_1346233419.189") :anon :lex :outer("cuid_34_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 294
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 3
    repr_get_attr_obj $P503, $P501, $P502, "@!collisions"
    .return ($P503) 
.end
.HLL "nqp"
.namespace []
.sub "name" :subid("cuid_29_1346233419.189") :anon :lex :outer("cuid_34_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 298
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 3
    repr_get_attr_obj $P503, $P501, $P502, "$!name"
    .return ($P503) 
.end
.HLL "nqp"
.namespace []
.sub "attributes" :subid("cuid_30_1346233419.189") :anon :lex :outer("cuid_34_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 302
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :named("local") :optional 
    .param int haz_param_11 :opt_flag 
    .const 'Sub' $P512 = 'cuid_142_1346233419.189' 
    capture_lex $P512 
    if haz_param_11, default97
    null $P511
    set _lex_param_2, $P511
  default97:
    .lex "@attrs", $P101 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$local", _lex_param_2 
    new $P501, 'ResizablePMCArray'
    set $P101, $P501
    nqp_decontainerize $P505, _lex_param_0
    nqp_get_sc_object $P506, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 3
    repr_get_attr_obj $P507, $P505, $P506, "%!attributes"
    set $P502, $P507
    iter $P504, $P507
    new $P509, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P509, for_handlers93
    push_eh $P509
  for_next94:
    unless $P504, for_done96
    shift $P510, $P504
  for_redo95:
    .const 'Sub' $P508 = 'cuid_142_1346233419.189' 
    capture_lex $P508
    $P502 = $P508($P510)
    goto for_next94
  for_handlers93:
    .get_results ($P509)
    pop_upto_eh $P509
    getattribute $P509, $P509, 'type'
    eq $P509, .CONTROL_LOOP_NEXT, for_next94
    eq $P509, .CONTROL_LOOP_REDO, for_redo95
  for_done96:
    pop_eh 
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_142_1346233419.189") :anon :lex :outer("cuid_30_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 304
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 305
    find_lex $P501, "@attrs"
    $P502 = _lex_param_0."value"()
    $P503 = $P501."push"($P502)
    .return ($P503) 
.end
.HLL "nqp"
.namespace []
.sub "roles" :subid("cuid_31_1346233419.189") :anon :lex :outer("cuid_34_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 310
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 3
    repr_get_attr_obj $P503, $P501, $P502, "@!roles"
    .return ($P503) 
.end
.HLL "nqp"
.namespace []
.sub "role_typecheck_list" :subid("cuid_32_1346233419.189") :anon :lex :outer("cuid_34_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 314
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 3
    repr_get_attr_obj $P503, $P501, $P502, "@!role_typecheck_list"
    .return ($P503) 
.end
.HLL "nqp"
.namespace []
.sub "instance_of" :subid("cuid_33_1346233419.189") :anon :lex :outer("cuid_34_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 318
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 3
    repr_get_attr_obj $P503, $P501, $P502, "$!instance_of"
    .return ($P503) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_36_1346233419.189") :anon :lex :outer("cuid_1_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 324
    .const 'Sub' $P504 = 'cuid_143_1346233419.189' 
    capture_lex $P504 
    .const 'Sub' $P504 = 'cuid_145_1346233419.189' 
    capture_lex $P504 
    .const 'Sub' $P504 = 'cuid_35_1346233419.189' 
    capture_lex $P504 
    .lex "&has_method", $P101 
    .lex "&has_attribute", $P102 
    .lex "$?PACKAGE", $P103 
    .lex "$?CLASS", $P104 
    .const 'Sub' $P501 = 'cuid_143_1346233419.189' 
    capture_lex $P501
    set $P101, $P501
    .const 'Sub' $P502 = 'cuid_145_1346233419.189' 
    capture_lex $P502
    set $P102, $P502
    .const 'Sub' $P503 = 'cuid_35_1346233419.189' 
    capture_lex $P503
    .return ($P503) 
.end
.HLL "nqp"
.namespace []
.sub "has_method" :subid("cuid_143_1346233419.189") :anon :lex :outer("cuid_36_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 326
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "%mt", $P101 
    .lex "$target", _lex_param_0 
    .lex "$name", _lex_param_1 
    .lex "$local", _lex_param_2 
    new $P501, 'Hash'
    set $P101, $P501
.annotate 'line', 327
    get_how $P502, _lex_param_0
    $P503 = $P502."method_table"(_lex_param_0)
    set $P101, $P503
    set $S501, _lex_param_1
    exists $I501, $P101[$S501]
    .return ($I501) 
.end
.HLL "nqp"
.namespace []
.sub "has_attribute" :subid("cuid_145_1346233419.189") :anon :lex :outer("cuid_36_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 331
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P512 = 'cuid_144_1346233419.189' 
    capture_lex $P512 
    .lex "@attributes", $P101 
    .lex "$target", _lex_param_0 
    .lex "$name", _lex_param_1 
    new $P501, 'ResizablePMCArray'
    set $P101, $P501
    root_new $P102, ['parrot';'Continuation']
    set_label $P102, lexotic_98
    .lex "RETURN", $P102
.annotate 'line', 332
    get_how $P502, _lex_param_0
    $P503 = $P502."attributes"(_lex_param_0, 1 :named("local"))
    set $P101, $P503
    set $P504, $P101
    iter $P506, $P101
    new $P508, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P508, for_handlers102
    push_eh $P508
  for_next103:
    unless $P506, for_done105
    shift $P509, $P506
  for_redo104:
    .const 'Sub' $P507 = 'cuid_144_1346233419.189' 
    capture_lex $P507
    $P504 = $P507($P509)
    goto for_next103
  for_handlers102:
    .get_results ($P508)
    pop_upto_eh $P508
    getattribute $P508, $P508, 'type'
    eq $P508, .CONTROL_LOOP_NEXT, for_next103
    eq $P508, .CONTROL_LOOP_REDO, for_redo104
  for_done105:
    pop_eh 
    find_lex $P510, "RETURN"
    $P511 = $P510(0)
    goto lexotic_99
  lexotic_98:
    .get_results ($P511)
  lexotic_99:
    .return ($P511) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_144_1346233419.189") :anon :lex :outer("cuid_145_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 333
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 334
    $P501 = _lex_param_0."name"()
    set $S501, $P501
    find_lex $P502, "$name"
    set $S502, $P502
    iseq $I501, $S501, $S502
    box $P506, $I501
    set $P505, $P506
    unless $I501 goto if23_end101 
    find_lex $P503, "RETURN"
    $P504 = $P503(1)
    set $P505, $P504
  if23_end101:
    .return ($P505) 
.end
.HLL "nqp"
.namespace []
.sub "apply" :subid("cuid_35_1346233419.189") :anon :lex :outer("cuid_36_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 339
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .const 'Sub' $P549 = 'cuid_146_1346233419.189' 
    capture_lex $P549 
    .const 'Sub' $P549 = 'cuid_147_1346233419.189' 
    capture_lex $P549 
    .const 'Sub' $P549 = 'cuid_148_1346233419.189' 
    capture_lex $P549 
    .const 'Sub' $P549 = 'cuid_149_1346233419.189' 
    capture_lex $P549 
    .lex "$to_compose", $P101 
    .lex "$to_compose_meta", $P102 
    .lex "@collisions", $P103 
    .lex "@methods", $P104 
    .lex "@attributes", $P105 
    .lex "@done", $P106 
    .lex "self", _lex_param_0 
    .lex "$target", _lex_param_1 
    .lex "@roles", _lex_param_2 
    null $P501
    set $P101, $P501
    null $P502
    set $P102, $P502
    new $P503, 'ResizablePMCArray'
    set $P103, $P503
    new $P504, 'ResizablePMCArray'
    set $P104, $P504
    new $P505, 'ResizablePMCArray'
    set $P105, $P505
    new $P506, 'ResizablePMCArray'
    set $P106, $P506
    set $N501, _lex_param_2
    set $N502, 1
    iseq $I501, $N501, $N502
    unless $I501 goto if24_else106 
.annotate 'line', 344
    set $P507, _lex_param_2[0]
    unless_null $P507, fallback108
    null $P508
    set $P507, $P508
  fallback108:
    set $P101, $P507
    get_how $P509, $P101
    set $P102, $P509
    set $P527, $P102
    goto if24_end107
  if24_else106:
.annotate 'line', 348
.annotate 'line', 349
    find_lex $P510, "NQPConcreteRoleHOW"
    find_lex $P513, "$?PACKAGE"
    get_who $P512, $P513
    set $P511, $P512["NQPMu"]
    unless_null $P511, fallback109
    get_hll_global $P516, "GLOBAL"
    get_who $P515, $P516
    set $P514, $P515["NQPMu"]
    unless_null $P514, vivi_25110
    null $P517
    set $P514, $P517
  vivi_25110:
    set $P511, $P514
  fallback109:
    $P518 = $P510."new_type"($P511 :named("instance_of"))
    set $P101, $P518
    get_how $P519, $P101
    set $P102, $P519
    set $P520, _lex_param_2
    iter $P522, _lex_param_2
    new $P524, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P524, for_handlers111
    push_eh $P524
  for_next112:
    unless $P522, for_done114
    shift $P525, $P522
  for_redo113:
    .const 'Sub' $P523 = 'cuid_146_1346233419.189' 
    capture_lex $P523
    $P520 = $P523($P525)
    goto for_next112
  for_handlers111:
    .get_results ($P524)
    pop_upto_eh $P524
    getattribute $P524, $P524, 'type'
    eq $P524, .CONTROL_LOOP_NEXT, for_next112
    eq $P524, .CONTROL_LOOP_REDO, for_redo113
  for_done114:
    pop_eh 
.annotate 'line', 354
    $P526 = $P102."compose"($P101)
    set $P101, $P526
    set $P527, $P101
  if24_end107:
.annotate 'line', 358
    $P528 = $P102."collisions"($P101)
    set $P103, $P528
    set $P529, $P103
    iter $P531, $P103
    new $P533, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P533, for_handlers117
    push_eh $P533
  for_next118:
    unless $P531, for_done120
    shift $P534, $P531
  for_redo119:
    .const 'Sub' $P532 = 'cuid_147_1346233419.189' 
    capture_lex $P532
    $P529 = $P532($P534)
    goto for_next118
  for_handlers117:
    .get_results ($P533)
    pop_upto_eh $P533
    getattribute $P533, $P533, 'type'
    eq $P533, .CONTROL_LOOP_NEXT, for_next118
    eq $P533, .CONTROL_LOOP_REDO, for_redo119
  for_done120:
    pop_eh 
.annotate 'line', 367
    $P535 = $P102."methods"($P101)
    set $P104, $P535
    set $P536, $P104
    iter $P538, $P104
    new $P540, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P540, for_handlers123
    push_eh $P540
  for_next124:
    unless $P538, for_done126
    shift $P541, $P538
  for_redo125:
    .const 'Sub' $P539 = 'cuid_148_1346233419.189' 
    capture_lex $P539
    $P536 = $P539($P541)
    goto for_next124
  for_handlers123:
    .get_results ($P540)
    pop_upto_eh $P540
    getattribute $P540, $P540, 'type'
    eq $P540, .CONTROL_LOOP_NEXT, for_next124
    eq $P540, .CONTROL_LOOP_REDO, for_redo125
  for_done126:
    pop_eh 
.annotate 'line', 375
    $P542 = $P102."attributes"($P101)
    set $P105, $P542
    set $P543, $P105
    iter $P545, $P105
    new $P547, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P547, for_handlers129
    push_eh $P547
  for_next130:
    unless $P545, for_done132
    shift $P548, $P545
  for_redo131:
    .const 'Sub' $P546 = 'cuid_149_1346233419.189' 
    capture_lex $P546
    $P543 = $P546($P548)
    goto for_next130
  for_handlers129:
    .get_results ($P547)
    pop_upto_eh $P547
    getattribute $P547, $P547, 'type'
    eq $P547, .CONTROL_LOOP_NEXT, for_next130
    eq $P547, .CONTROL_LOOP_REDO, for_redo131
  for_done132:
    pop_eh 
    set $P106[0], $P101
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_146_1346233419.189") :anon :lex :outer("cuid_35_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 351
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 352
    find_lex $P501, "$to_compose_meta"
    find_lex $P502, "$to_compose"
    $P503 = $P501."add_role"($P502, _lex_param_0)
    .return ($P503) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_147_1346233419.189") :anon :lex :outer("cuid_35_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 359
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 360
    find_lex $P501, "$target"
    set $S501, _lex_param_0
    $P502 = "&has_method"($P501, $S501, 1)
    set $P508, $P502
    if $P502 goto unless26_end116 
    set $S506, _lex_param_0
    concat $S505, "Method '", $S506
    concat $S504, $S505, "' collides and a resolution must be provided by the class '"
.annotate 'line', 362
    find_lex $P504, "$target"
    get_how $P503, $P504
    find_lex $P505, "$target"
    $P506 = $P503."name"($P505)
    set $S507, $P506
    concat $S503, $S504, $S507
    concat $S502, $S503, "'"
    box $P507, $S502
    die $P507
    set $P508, $P507
  unless26_end116:
    .return ($P508) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_148_1346233419.189") :anon :lex :outer("cuid_35_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 368
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 369
    find_lex $P501, "$target"
    set $S501, _lex_param_0
    $P502 = "&has_method"($P501, $S501, 0)
    set $P507, $P502
    if $P502 goto unless27_end122 
.annotate 'line', 370
    find_lex $P504, "$target"
    get_how $P503, $P504
    find_lex $P505, "$target"
    set $S502, _lex_param_0
    $P506 = $P503."add_method"($P505, $S502, _lex_param_0)
    set $P507, $P506
  unless27_end122:
    .return ($P507) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_149_1346233419.189") :anon :lex :outer("cuid_35_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 376
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 377
    find_lex $P501, "$target"
    $P502 = _lex_param_0."name"()
    $P503 = "&has_attribute"($P501, $P502)
    set $P510, $P503
    unless $P503 goto if28_end128 
.annotate 'line', 378
    $P504 = _lex_param_0."name"()
    set $S505, $P504
    concat $S504, "Attribute '", $S505
    concat $S503, $S504, "' already exists in the class '"
.annotate 'line', 379
    find_lex $P506, "$target"
    get_how $P505, $P506
    find_lex $P507, "$target"
    $P508 = $P505."name"($P507)
    set $S506, $P508
    concat $S502, $S503, $S506
    concat $S501, $S502, "', but a role also wishes to compose it"
    box $P509, $S501
    die $P509
    set $P510, $P509
  if28_end128:
.annotate 'line', 381
    find_lex $P512, "$target"
    get_how $P511, $P512
    find_lex $P513, "$target"
    $P514 = $P511."add_attribute"($P513, _lex_param_0)
    .return ($P514) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_55_1346233419.189") :anon :lex :outer("cuid_1_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 397
    .const 'Sub' $P522 = 'cuid_37_1346233419.189' 
    capture_lex $P522 
    .const 'Sub' $P522 = 'cuid_38_1346233419.189' 
    capture_lex $P522 
    .const 'Sub' $P522 = 'cuid_39_1346233419.189' 
    capture_lex $P522 
    .const 'Sub' $P522 = 'cuid_40_1346233419.189' 
    capture_lex $P522 
    .const 'Sub' $P522 = 'cuid_41_1346233419.189' 
    capture_lex $P522 
    .const 'Sub' $P522 = 'cuid_42_1346233419.189' 
    capture_lex $P522 
    .const 'Sub' $P522 = 'cuid_43_1346233419.189' 
    capture_lex $P522 
    .const 'Sub' $P522 = 'cuid_44_1346233419.189' 
    capture_lex $P522 
    .const 'Sub' $P522 = 'cuid_45_1346233419.189' 
    capture_lex $P522 
    .const 'Sub' $P522 = 'cuid_46_1346233419.189' 
    capture_lex $P522 
    .const 'Sub' $P522 = 'cuid_47_1346233419.189' 
    capture_lex $P522 
    .const 'Sub' $P522 = 'cuid_48_1346233419.189' 
    capture_lex $P522 
    .const 'Sub' $P522 = 'cuid_49_1346233419.189' 
    capture_lex $P522 
    .const 'Sub' $P522 = 'cuid_50_1346233419.189' 
    capture_lex $P522 
    .const 'Sub' $P522 = 'cuid_51_1346233419.189' 
    capture_lex $P522 
    .const 'Sub' $P522 = 'cuid_52_1346233419.189' 
    capture_lex $P522 
    .const 'Sub' $P522 = 'cuid_53_1346233419.189' 
    capture_lex $P522 
    .const 'Sub' $P522 = 'cuid_54_1346233419.189' 
    capture_lex $P522 
    .lex "$archetypes", $P101 
    .lex "$?PACKAGE", $P102 
    .lex "$?CLASS", $P103 
    null $P501
    set $P101, $P501
.annotate 'line', 421
    find_lex $P502, "Archetypes"
    $P503 = $P502."new"(1 :named("nominal"), 1 :named("composable"), 1 :named("parametric"))
    set $P101, $P503
    .const 'Sub' $P504 = 'cuid_37_1346233419.189' 
    capture_lex $P504
    .const 'Sub' $P505 = 'cuid_38_1346233419.189' 
    capture_lex $P505
    .const 'Sub' $P506 = 'cuid_39_1346233419.189' 
    capture_lex $P506
    .const 'Sub' $P507 = 'cuid_40_1346233419.189' 
    capture_lex $P507
    .const 'Sub' $P508 = 'cuid_41_1346233419.189' 
    capture_lex $P508
    .const 'Sub' $P509 = 'cuid_42_1346233419.189' 
    capture_lex $P509
    .const 'Sub' $P510 = 'cuid_43_1346233419.189' 
    capture_lex $P510
    .const 'Sub' $P511 = 'cuid_44_1346233419.189' 
    capture_lex $P511
    .const 'Sub' $P512 = 'cuid_45_1346233419.189' 
    capture_lex $P512
    .const 'Sub' $P513 = 'cuid_46_1346233419.189' 
    capture_lex $P513
    .const 'Sub' $P514 = 'cuid_47_1346233419.189' 
    capture_lex $P514
    .const 'Sub' $P515 = 'cuid_48_1346233419.189' 
    capture_lex $P515
    .const 'Sub' $P516 = 'cuid_49_1346233419.189' 
    capture_lex $P516
    .const 'Sub' $P517 = 'cuid_50_1346233419.189' 
    capture_lex $P517
    .const 'Sub' $P518 = 'cuid_51_1346233419.189' 
    capture_lex $P518
    .const 'Sub' $P519 = 'cuid_52_1346233419.189' 
    capture_lex $P519
    .const 'Sub' $P520 = 'cuid_53_1346233419.189' 
    capture_lex $P520
    .const 'Sub' $P521 = 'cuid_54_1346233419.189' 
    capture_lex $P521
    .return ($P521) 
.end
.HLL "nqp"
.namespace []
.sub "archetypes" :subid("cuid_37_1346233419.189") :anon :lex :outer("cuid_55_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 422
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    find_lex $P501, "$archetypes"
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "new" :subid("cuid_38_1346233419.189") :anon :lex :outer("cuid_55_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 431
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("name") 
    .lex "$obj", $P101 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    null $P501
    set $P101, $P501
    nqp_decontainerize $P503, _lex_param_0
    repr_instance_of $P502, $P503
    set $P101, $P502
.annotate 'line', 433
    $P504 = $P101."BUILD"(_lex_param_1 :named("name"))
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "BUILD" :subid("cuid_39_1346233419.189") :anon :lex :outer("cuid_55_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 437
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("name") 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 5
    repr_bind_attr_obj $P501, $P502, "$!name", _lex_param_1
    nqp_decontainerize $P503, _lex_param_0
    nqp_get_sc_object $P504, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 5
    new $P505, 'Hash'
    repr_bind_attr_obj $P503, $P504, "%!attributes", $P505
    nqp_decontainerize $P506, _lex_param_0
    nqp_get_sc_object $P507, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 5
    new $P508, 'Hash'
    repr_bind_attr_obj $P506, $P507, "%!methods", $P508
    nqp_decontainerize $P509, _lex_param_0
    nqp_get_sc_object $P510, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 5
    new $P511, 'ResizablePMCArray'
    repr_bind_attr_obj $P509, $P510, "@!multi_methods_to_incorporate", $P511
    nqp_decontainerize $P512, _lex_param_0
    nqp_get_sc_object $P513, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 5
    new $P514, 'ResizablePMCArray'
    repr_bind_attr_obj $P512, $P513, "@!roles", $P514
    nqp_decontainerize $P515, _lex_param_0
    nqp_get_sc_object $P516, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 5
    box $P517, 0
    repr_bind_attr_obj $P515, $P516, "$!composed", $P517
    .return ($P517) 
.end
.HLL "nqp"
.namespace []
.sub "new_type" :subid("cuid_40_1346233419.189") :anon :lex :outer("cuid_55_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 448
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("name") :optional 
    .param int haz_param_12 :opt_flag 
    if haz_param_12, default133
    box $P506, "<anon>"
    set _lex_param_1, $P506
  default133:
    .lex "$metarole", $P101 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    null $P501
    set $P101, $P501
.annotate 'line', 449
    nqp_decontainerize $P502, _lex_param_0
    $P503 = $P502."new"(_lex_param_1 :named("name"))
    set $P101, $P503
    repr_type_object_for $P504, $P101, "Uninstantiable"
    new $P505, 'Hash'
    set_who $P504, $P505
    .return ($P504) 
.end
.HLL "nqp"
.namespace []
.sub "set_body_block" :subid("cuid_41_1346233419.189") :anon :lex :outer("cuid_55_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 453
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$body_block", _lex_param_2 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 5
    repr_bind_attr_obj $P501, $P502, "$!body_block", _lex_param_2
    .return (_lex_param_2) 
.end
.HLL "nqp"
.namespace []
.sub "add_method" :subid("cuid_42_1346233419.189") :anon :lex :outer("cuid_55_1346233419.189")
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
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 5
    repr_get_attr_obj $P503, $P501, $P502, "%!methods"
    set $S501, _lex_param_2
    exists $I501, $P503[$S501]
    box $P506, $I501
    set $P505, $P506
    unless $I501 goto if29_end135 
.annotate 'line', 458
    set $S503, _lex_param_2
    concat $S502, "This role already has a method named ", $S503
    box $P504, $S502
    die $P504
    set $P505, $P504
  if29_end135:
    nqp_decontainerize $P507, _lex_param_0
    nqp_get_sc_object $P508, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 5
    repr_get_attr_obj $P509, $P507, $P508, "%!methods"
    set $S504, _lex_param_2
    set $P509[$S504], _lex_param_3
    .return (_lex_param_3) 
.end
.HLL "nqp"
.namespace []
.sub "add_multi_method" :subid("cuid_43_1346233419.189") :anon :lex :outer("cuid_55_1346233419.189")
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
    new $P501, 'Hash'
    set $P101, $P501
    set $P101["name"], _lex_param_2
    set $P101["code"], _lex_param_3
    nqp_decontainerize $P502, _lex_param_0
    nqp_get_sc_object $P503, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 5
    repr_get_attr_obj $P504, $P502, $P503, "@!multi_methods_to_incorporate"
    nqp_decontainerize $P505, _lex_param_0
    nqp_get_sc_object $P506, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 5
    repr_get_attr_obj $P507, $P505, $P506, "@!multi_methods_to_incorporate"
    set $N501, $P507
    set $I501, $N501
    set $P504[$I501], $P101
    .return (_lex_param_3) 
.end
.HLL "nqp"
.namespace []
.sub "add_attribute" :subid("cuid_44_1346233419.189") :anon :lex :outer("cuid_55_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 472
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "$name", $P101 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$meta_attr", _lex_param_2 
    null $P501
    set $P101, $P501
.annotate 'line', 473
    $P502 = _lex_param_2."name"()
    set $P101, $P502
    nqp_decontainerize $P503, _lex_param_0
    nqp_get_sc_object $P504, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 5
    repr_get_attr_obj $P505, $P503, $P504, "%!attributes"
    set $S501, $P101
    exists $I501, $P505[$S501]
    box $P508, $I501
    set $P507, $P508
    unless $I501 goto if30_end137 
.annotate 'line', 474
    set $S503, $P101
    concat $S502, "This role already has an attribute named ", $S503
    box $P506, $S502
    die $P506
    set $P507, $P506
  if30_end137:
    nqp_decontainerize $P509, _lex_param_0
    nqp_get_sc_object $P510, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 5
    repr_get_attr_obj $P511, $P509, $P510, "%!attributes"
    set $S504, $P101
    set $P511[$S504], _lex_param_2
    .return (_lex_param_2) 
.end
.HLL "nqp"
.namespace []
.sub "add_parent" :subid("cuid_45_1346233419.189") :anon :lex :outer("cuid_55_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 480
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$parent", _lex_param_2 
    box $P501, "A role cannot inherit from a class"
    die $P501
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "add_role" :subid("cuid_46_1346233419.189") :anon :lex :outer("cuid_55_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 484
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$role", _lex_param_2 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 5
    repr_get_attr_obj $P503, $P501, $P502, "@!roles"
    nqp_decontainerize $P504, _lex_param_0
    nqp_get_sc_object $P505, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 5
    repr_get_attr_obj $P506, $P504, $P505, "@!roles"
    set $N501, $P506
    set $I501, $N501
    set $P503[$I501], _lex_param_2
    .return (_lex_param_2) 
.end
.HLL "nqp"
.namespace []
.sub "compose" :subid("cuid_47_1346233419.189") :anon :lex :outer("cuid_55_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 489
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 5
    box $P503, 1
    repr_bind_attr_obj $P501, $P502, "$!composed", $P503
    .return (_lex_param_1) 
.end
.HLL "nqp"
.namespace []
.sub "parametric" :subid("cuid_48_1346233419.189") :anon :lex :outer("cuid_55_1346233419.189")
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
.sub "specialize" :subid("cuid_49_1346233419.189") :anon :lex :outer("cuid_55_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 506
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .const 'Sub' $P551 = 'cuid_150_1346233419.189' 
    capture_lex $P551 
    .const 'Sub' $P551 = 'cuid_151_1346233419.189' 
    capture_lex $P551 
    .const 'Sub' $P551 = 'cuid_152_1346233419.189' 
    capture_lex $P551 
    .const 'Sub' $P551 = 'cuid_153_1346233419.189' 
    capture_lex $P551 
    .lex "$irole", $P101 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$class_arg", _lex_param_2 
    null $P501
    set $P101, $P501
    root_new $P102, ['parrot';'Continuation']
    set_label $P102, lexotic_138
    .lex "RETURN", $P102
.annotate 'line', 509
    nqp_decontainerize $P502, _lex_param_0
    nqp_get_sc_object $P503, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 5
    repr_get_attr_obj $P504, $P502, $P503, "$!body_block"
    $P505 = $P504(_lex_param_2)
.annotate 'line', 512
    find_lex $P506, "NQPConcreteRoleHOW"
    nqp_decontainerize $P507, _lex_param_0
    nqp_get_sc_object $P508, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 5
    repr_get_attr_obj $P509, $P507, $P508, "$!name"
    $P510 = $P506."new_type"($P509 :named("name"), _lex_param_1 :named("instance_of"))
    set $P101, $P510
    nqp_decontainerize $P514, _lex_param_0
    nqp_get_sc_object $P515, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 5
    repr_get_attr_obj $P516, $P514, $P515, "%!attributes"
    set $P511, $P516
    iter $P513, $P516
    new $P518, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P518, for_handlers140
    push_eh $P518
  for_next141:
    unless $P513, for_done143
    shift $P519, $P513
  for_redo142:
    .const 'Sub' $P517 = 'cuid_150_1346233419.189' 
    capture_lex $P517
    $P511 = $P517($P519)
    goto for_next141
  for_handlers140:
    .get_results ($P518)
    pop_upto_eh $P518
    getattribute $P518, $P518, 'type'
    eq $P518, .CONTROL_LOOP_NEXT, for_next141
    eq $P518, .CONTROL_LOOP_REDO, for_redo142
  for_done143:
    pop_eh 
    nqp_decontainerize $P523, _lex_param_0
    nqp_get_sc_object $P524, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 5
    repr_get_attr_obj $P525, $P523, $P524, "%!methods"
    set $P520, $P525
    iter $P522, $P525
    new $P527, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P527, for_handlers144
    push_eh $P527
  for_next145:
    unless $P522, for_done147
    shift $P528, $P522
  for_redo146:
    .const 'Sub' $P526 = 'cuid_151_1346233419.189' 
    capture_lex $P526
    $P520 = $P526($P528)
    goto for_next145
  for_handlers144:
    .get_results ($P527)
    pop_upto_eh $P527
    getattribute $P527, $P527, 'type'
    eq $P527, .CONTROL_LOOP_NEXT, for_next145
    eq $P527, .CONTROL_LOOP_REDO, for_redo146
  for_done147:
    pop_eh 
    nqp_decontainerize $P532, _lex_param_0
    nqp_get_sc_object $P533, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 5
    repr_get_attr_obj $P534, $P532, $P533, "@!multi_methods_to_incorporate"
    set $P529, $P534
    iter $P531, $P534
    new $P536, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P536, for_handlers150
    push_eh $P536
  for_next151:
    unless $P531, for_done153
    shift $P537, $P531
  for_redo152:
    .const 'Sub' $P535 = 'cuid_152_1346233419.189' 
    capture_lex $P535
    $P529 = $P535($P537)
    goto for_next151
  for_handlers150:
    .get_results ($P536)
    pop_upto_eh $P536
    getattribute $P536, $P536, 'type'
    eq $P536, .CONTROL_LOOP_NEXT, for_next151
    eq $P536, .CONTROL_LOOP_REDO, for_redo152
  for_done153:
    pop_eh 
    nqp_decontainerize $P541, _lex_param_0
    nqp_get_sc_object $P542, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 5
    repr_get_attr_obj $P543, $P541, $P542, "@!roles"
    set $P538, $P543
    iter $P540, $P543
    new $P545, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P545, for_handlers154
    push_eh $P545
  for_next155:
    unless $P540, for_done157
    shift $P546, $P540
  for_redo156:
    .const 'Sub' $P544 = 'cuid_153_1346233419.189' 
    capture_lex $P544
    $P538 = $P544($P546)
    goto for_next155
  for_handlers154:
    .get_results ($P545)
    pop_upto_eh $P545
    getattribute $P545, $P545, 'type'
    eq $P545, .CONTROL_LOOP_NEXT, for_next155
    eq $P545, .CONTROL_LOOP_REDO, for_redo156
  for_done157:
    pop_eh 
.annotate 'line', 535
    get_how $P547, $P101
    $P548 = $P547."compose"($P101)
    find_lex $P549, "RETURN"
    $P550 = $P549($P101)
    goto lexotic_139
  lexotic_138:
    .get_results ($P550)
  lexotic_139:
    .return ($P550) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_150_1346233419.189") :anon :lex :outer("cuid_49_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 516
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 517
    find_lex $P502, "$irole"
    get_how $P501, $P502
    find_lex $P503, "$irole"
    $P504 = _lex_param_0."value"()
    $P505 = $P501."add_attribute"($P503, $P504)
    .return ($P505) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_151_1346233419.189") :anon :lex :outer("cuid_49_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 521
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 522
    find_lex $P502, "$irole"
    get_how $P501, $P502
    find_lex $P503, "$irole"
    $P504 = _lex_param_0."key"()
    $P505 = _lex_param_0."value"()
    $P506 = $P505."clone"()
    $P507 = $P501."add_method"($P503, $P504, $P506)
    .return ($P507) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_152_1346233419.189") :anon :lex :outer("cuid_49_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 524
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 525
    find_lex $P502, "$irole"
    get_how $P501, $P502
    find_lex $P503, "$irole"
    set $P504, _lex_param_0["name"]
    unless_null $P504, fallback148
    null $P505
    set $P504, $P505
  fallback148:
    set $P506, _lex_param_0["code"]
    unless_null $P506, fallback149
    null $P507
    set $P506, $P507
  fallback149:
    $P508 = "&reify_method"($P506)
    $P509 = $P501."add_multi_method"($P503, $P504, $P508)
    .return ($P509) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_153_1346233419.189") :anon :lex :outer("cuid_49_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 529
    .param pmc _lex_param_0 
    .lex "$specialized", $P101 
    .lex "$_", _lex_param_0 
    null $P501
    set $P101, $P501
.annotate 'line', 530
    find_lex $P503, "$irole"
    get_how $P502, $P503
    find_lex $P504, "$irole"
    find_lex $P505, "$class_arg"
    $P506 = $P502."specialize"($P504, $P505)
    set $P101, $P506
.annotate 'line', 531
    find_lex $P508, "$irole"
    get_how $P507, $P508
    find_lex $P509, "$irole"
    $P510 = $P507."add_role"($P509, $P101)
    .return ($P510) 
.end
.HLL "nqp"
.namespace []
.sub "methods" :subid("cuid_50_1346233419.189") :anon :lex :outer("cuid_55_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 543
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :named("local") :optional 
    .param int haz_param_13 :opt_flag 
    .const 'Sub' $P512 = 'cuid_154_1346233419.189' 
    capture_lex $P512 
    if haz_param_13, default162
    null $P511
    set _lex_param_2, $P511
  default162:
    .lex "@meths", $P101 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$local", _lex_param_2 
    new $P501, 'ResizablePMCArray'
    set $P101, $P501
    nqp_decontainerize $P505, _lex_param_0
    nqp_get_sc_object $P506, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 5
    repr_get_attr_obj $P507, $P505, $P506, "%!methods"
    set $P502, $P507
    iter $P504, $P507
    new $P509, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P509, for_handlers158
    push_eh $P509
  for_next159:
    unless $P504, for_done161
    shift $P510, $P504
  for_redo160:
    .const 'Sub' $P508 = 'cuid_154_1346233419.189' 
    capture_lex $P508
    $P502 = $P508($P510)
    goto for_next159
  for_handlers158:
    .get_results ($P509)
    pop_upto_eh $P509
    getattribute $P509, $P509, 'type'
    eq $P509, .CONTROL_LOOP_NEXT, for_next159
    eq $P509, .CONTROL_LOOP_REDO, for_redo160
  for_done161:
    pop_eh 
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_154_1346233419.189") :anon :lex :outer("cuid_50_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 545
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 546
    find_lex $P501, "@meths"
    $P502 = _lex_param_0."value"()
    $P503 = $P501."push"($P502)
    .return ($P503) 
.end
.HLL "nqp"
.namespace []
.sub "method_table" :subid("cuid_51_1346233419.189") :anon :lex :outer("cuid_55_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 551
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 5
    repr_get_attr_obj $P503, $P501, $P502, "%!methods"
    .return ($P503) 
.end
.HLL "nqp"
.namespace []
.sub "name" :subid("cuid_52_1346233419.189") :anon :lex :outer("cuid_55_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 555
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 5
    repr_get_attr_obj $P503, $P501, $P502, "$!name"
    .return ($P503) 
.end
.HLL "nqp"
.namespace []
.sub "attributes" :subid("cuid_53_1346233419.189") :anon :lex :outer("cuid_55_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 559
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :named("local") :optional 
    .param int haz_param_14 :opt_flag 
    .const 'Sub' $P512 = 'cuid_155_1346233419.189' 
    capture_lex $P512 
    if haz_param_14, default167
    null $P511
    set _lex_param_2, $P511
  default167:
    .lex "@attrs", $P101 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$local", _lex_param_2 
    new $P501, 'ResizablePMCArray'
    set $P101, $P501
    nqp_decontainerize $P505, _lex_param_0
    nqp_get_sc_object $P506, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 5
    repr_get_attr_obj $P507, $P505, $P506, "%!attributes"
    set $P502, $P507
    iter $P504, $P507
    new $P509, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P509, for_handlers163
    push_eh $P509
  for_next164:
    unless $P504, for_done166
    shift $P510, $P504
  for_redo165:
    .const 'Sub' $P508 = 'cuid_155_1346233419.189' 
    capture_lex $P508
    $P502 = $P508($P510)
    goto for_next164
  for_handlers163:
    .get_results ($P509)
    pop_upto_eh $P509
    getattribute $P509, $P509, 'type'
    eq $P509, .CONTROL_LOOP_NEXT, for_next164
    eq $P509, .CONTROL_LOOP_REDO, for_redo165
  for_done166:
    pop_eh 
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_155_1346233419.189") :anon :lex :outer("cuid_53_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 561
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 562
    find_lex $P501, "@attrs"
    $P502 = _lex_param_0."value"()
    $P503 = $P501."push"($P502)
    .return ($P503) 
.end
.HLL "nqp"
.namespace []
.sub "roles" :subid("cuid_54_1346233419.189") :anon :lex :outer("cuid_55_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 567
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 5
    repr_get_attr_obj $P503, $P501, $P502, "@!roles"
    .return ($P503) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_98_1346233419.189") :anon :lex :outer("cuid_1_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 577
    .const 'Sub' $P549 = 'cuid_158_1346233419.189' 
    capture_lex $P549 
    .const 'Sub' $P549 = 'cuid_163_1346233419.189' 
    capture_lex $P549 
    .const 'Sub' $P549 = 'cuid_56_1346233419.189' 
    capture_lex $P549 
    .const 'Sub' $P549 = 'cuid_57_1346233419.189' 
    capture_lex $P549 
    .const 'Sub' $P549 = 'cuid_58_1346233419.189' 
    capture_lex $P549 
    .const 'Sub' $P549 = 'cuid_59_1346233419.189' 
    capture_lex $P549 
    .const 'Sub' $P549 = 'cuid_60_1346233419.189' 
    capture_lex $P549 
    .const 'Sub' $P549 = 'cuid_61_1346233419.189' 
    capture_lex $P549 
    .const 'Sub' $P549 = 'cuid_62_1346233419.189' 
    capture_lex $P549 
    .const 'Sub' $P549 = 'cuid_63_1346233419.189' 
    capture_lex $P549 
    .const 'Sub' $P549 = 'cuid_64_1346233419.189' 
    capture_lex $P549 
    .const 'Sub' $P549 = 'cuid_65_1346233419.189' 
    capture_lex $P549 
    .const 'Sub' $P549 = 'cuid_66_1346233419.189' 
    capture_lex $P549 
    .const 'Sub' $P549 = 'cuid_67_1346233419.189' 
    capture_lex $P549 
    .const 'Sub' $P549 = 'cuid_68_1346233419.189' 
    capture_lex $P549 
    .const 'Sub' $P549 = 'cuid_69_1346233419.189' 
    capture_lex $P549 
    .const 'Sub' $P549 = 'cuid_70_1346233419.189' 
    capture_lex $P549 
    .const 'Sub' $P549 = 'cuid_71_1346233419.189' 
    capture_lex $P549 
    .const 'Sub' $P549 = 'cuid_72_1346233419.189' 
    capture_lex $P549 
    .const 'Sub' $P549 = 'cuid_73_1346233419.189' 
    capture_lex $P549 
    .const 'Sub' $P549 = 'cuid_74_1346233419.189' 
    capture_lex $P549 
    .const 'Sub' $P549 = 'cuid_75_1346233419.189' 
    capture_lex $P549 
    .const 'Sub' $P549 = 'cuid_76_1346233419.189' 
    capture_lex $P549 
    .const 'Sub' $P549 = 'cuid_77_1346233419.189' 
    capture_lex $P549 
    .const 'Sub' $P549 = 'cuid_78_1346233419.189' 
    capture_lex $P549 
    .const 'Sub' $P549 = 'cuid_79_1346233419.189' 
    capture_lex $P549 
    .const 'Sub' $P549 = 'cuid_80_1346233419.189' 
    capture_lex $P549 
    .const 'Sub' $P549 = 'cuid_81_1346233419.189' 
    capture_lex $P549 
    .const 'Sub' $P549 = 'cuid_82_1346233419.189' 
    capture_lex $P549 
    .const 'Sub' $P549 = 'cuid_83_1346233419.189' 
    capture_lex $P549 
    .const 'Sub' $P549 = 'cuid_84_1346233419.189' 
    capture_lex $P549 
    .const 'Sub' $P549 = 'cuid_85_1346233419.189' 
    capture_lex $P549 
    .const 'Sub' $P549 = 'cuid_86_1346233419.189' 
    capture_lex $P549 
    .const 'Sub' $P549 = 'cuid_87_1346233419.189' 
    capture_lex $P549 
    .const 'Sub' $P549 = 'cuid_88_1346233419.189' 
    capture_lex $P549 
    .const 'Sub' $P549 = 'cuid_89_1346233419.189' 
    capture_lex $P549 
    .const 'Sub' $P549 = 'cuid_90_1346233419.189' 
    capture_lex $P549 
    .const 'Sub' $P549 = 'cuid_91_1346233419.189' 
    capture_lex $P549 
    .const 'Sub' $P549 = 'cuid_92_1346233419.189' 
    capture_lex $P549 
    .const 'Sub' $P549 = 'cuid_93_1346233419.189' 
    capture_lex $P549 
    .const 'Sub' $P549 = 'cuid_94_1346233419.189' 
    capture_lex $P549 
    .const 'Sub' $P549 = 'cuid_95_1346233419.189' 
    capture_lex $P549 
    .const 'Sub' $P549 = 'cuid_96_1346233419.189' 
    capture_lex $P549 
    .const 'Sub' $P549 = 'cuid_97_1346233419.189' 
    capture_lex $P549 
    .lex "%caches", $P101 
    .lex "$archetypes", $P102 
    .lex "&compute_c3_mro", $P103 
    .lex "&c3_merge", $P104 
    .lex "$?PACKAGE", $P105 
    .lex "$?CLASS", $P106 
    new $P501, 'Hash'
    set $P101, $P501
    null $P502
    set $P102, $P502
    .const 'Sub' $P503 = 'cuid_158_1346233419.189' 
    capture_lex $P503
    set $P103, $P503
    .const 'Sub' $P504 = 'cuid_163_1346233419.189' 
    capture_lex $P504
    set $P104, $P504
.annotate 'line', 626
    find_lex $P505, "Archetypes"
    $P506 = $P505."new"(1 :named("nominal"), 1 :named("inheritable"))
    set $P102, $P506
    .const 'Sub' $P507 = 'cuid_56_1346233419.189' 
    capture_lex $P507
    .const 'Sub' $P508 = 'cuid_57_1346233419.189' 
    capture_lex $P508
    .const 'Sub' $P509 = 'cuid_58_1346233419.189' 
    capture_lex $P509
    .const 'Sub' $P510 = 'cuid_59_1346233419.189' 
    capture_lex $P510
    .const 'Sub' $P511 = 'cuid_60_1346233419.189' 
    capture_lex $P511
    .const 'Sub' $P512 = 'cuid_61_1346233419.189' 
    capture_lex $P512
    .const 'Sub' $P513 = 'cuid_62_1346233419.189' 
    capture_lex $P513
    .const 'Sub' $P514 = 'cuid_63_1346233419.189' 
    capture_lex $P514
    .const 'Sub' $P515 = 'cuid_64_1346233419.189' 
    capture_lex $P515
    .const 'Sub' $P516 = 'cuid_65_1346233419.189' 
    capture_lex $P516
    .const 'Sub' $P517 = 'cuid_66_1346233419.189' 
    capture_lex $P517
    .const 'Sub' $P518 = 'cuid_67_1346233419.189' 
    capture_lex $P518
    .const 'Sub' $P519 = 'cuid_68_1346233419.189' 
    capture_lex $P519
    .const 'Sub' $P520 = 'cuid_69_1346233419.189' 
    capture_lex $P520
    .const 'Sub' $P521 = 'cuid_70_1346233419.189' 
    capture_lex $P521
    .const 'Sub' $P522 = 'cuid_71_1346233419.189' 
    capture_lex $P522
    .const 'Sub' $P523 = 'cuid_72_1346233419.189' 
    capture_lex $P523
    .const 'Sub' $P524 = 'cuid_73_1346233419.189' 
    capture_lex $P524
    .const 'Sub' $P525 = 'cuid_74_1346233419.189' 
    capture_lex $P525
    .const 'Sub' $P526 = 'cuid_75_1346233419.189' 
    capture_lex $P526
    .const 'Sub' $P527 = 'cuid_76_1346233419.189' 
    capture_lex $P527
    .const 'Sub' $P528 = 'cuid_77_1346233419.189' 
    capture_lex $P528
    .const 'Sub' $P529 = 'cuid_78_1346233419.189' 
    capture_lex $P529
    .const 'Sub' $P530 = 'cuid_79_1346233419.189' 
    capture_lex $P530
    .const 'Sub' $P531 = 'cuid_80_1346233419.189' 
    capture_lex $P531
    .const 'Sub' $P532 = 'cuid_81_1346233419.189' 
    capture_lex $P532
    .const 'Sub' $P533 = 'cuid_82_1346233419.189' 
    capture_lex $P533
    .const 'Sub' $P534 = 'cuid_83_1346233419.189' 
    capture_lex $P534
    .const 'Sub' $P535 = 'cuid_84_1346233419.189' 
    capture_lex $P535
    .const 'Sub' $P536 = 'cuid_85_1346233419.189' 
    capture_lex $P536
    .const 'Sub' $P537 = 'cuid_86_1346233419.189' 
    capture_lex $P537
    .const 'Sub' $P538 = 'cuid_87_1346233419.189' 
    capture_lex $P538
    .const 'Sub' $P539 = 'cuid_88_1346233419.189' 
    capture_lex $P539
    .const 'Sub' $P540 = 'cuid_89_1346233419.189' 
    capture_lex $P540
    .const 'Sub' $P541 = 'cuid_90_1346233419.189' 
    capture_lex $P541
    .const 'Sub' $P542 = 'cuid_91_1346233419.189' 
    capture_lex $P542
    .const 'Sub' $P543 = 'cuid_92_1346233419.189' 
    capture_lex $P543
    .const 'Sub' $P544 = 'cuid_93_1346233419.189' 
    capture_lex $P544
    .const 'Sub' $P545 = 'cuid_94_1346233419.189' 
    capture_lex $P545
    .const 'Sub' $P546 = 'cuid_95_1346233419.189' 
    capture_lex $P546
    .const 'Sub' $P547 = 'cuid_96_1346233419.189' 
    capture_lex $P547
    .const 'Sub' $P548 = 'cuid_97_1346233419.189' 
    capture_lex $P548
    .return ($P548) 
.end
.HLL "nqp"
.namespace []
.sub "compute_c3_mro" :subid("cuid_158_1346233419.189") :anon :lex :outer("cuid_98_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 893
    .param pmc _lex_param_0 
    .const 'Sub' $P516 = 'cuid_157_1346233419.189' 
    capture_lex $P516 
    .lex "@immediate_parents", $P101 
    .lex "@result", $P102 
    .lex "$class", _lex_param_0 
    new $P501, 'ResizablePMCArray'
    set $P101, $P501
    new $P502, 'ResizablePMCArray'
    set $P102, $P502
    root_new $P103, ['parrot';'Continuation']
    set_label $P103, lexotic_168
    .lex "RETURN", $P103
.annotate 'line', 894
    get_how $P503, _lex_param_0
    $P504 = $P503."parents"(_lex_param_0, 1 :named("local"))
    set $P101, $P504
    set $N501, $P101
    box $P512, $N501
    set $P511, $P512
    unless $N501 goto if31_end171 
.annotate 'line', 898
    set $N502, $P101
    set $N503, 1
    iseq $I501, $N502, $N503
    unless $I501 goto if32_else172 
.annotate 'line', 899
.annotate 'line', 900
    set $P505, $P101[0]
    unless_null $P505, fallback174
    null $P506
    set $P505, $P506
  fallback174:
    $P507 = "&compute_c3_mro"($P505)
    set $P102, $P507
    set $P510, $P102
    goto if32_end173
  if32_else172:
    .const 'Sub' $P508 = 'cuid_157_1346233419.189' 
    capture_lex $P508
    $P509 = $P508()
    set $P510, $P509
  if32_end173:
    set $P511, $P510
  if31_end171:
.annotate 'line', 914
    $P513 = $P102."unshift"(_lex_param_0)
    find_lex $P514, "RETURN"
    $P515 = $P514($P102)
    goto lexotic_169
  lexotic_168:
    .get_results ($P515)
  lexotic_169:
    .return ($P515) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_157_1346233419.189") :anon :lex :outer("cuid_158_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 901
    .const 'Sub' $P512 = 'cuid_156_1346233419.189' 
    capture_lex $P512 
    .lex "@merge_list", $P101 
    new $P501, 'ResizablePMCArray'
    set $P101, $P501
    find_lex $P505, "@immediate_parents"
    set $P502, $P505
    iter $P504, $P505
    new $P507, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P507, for_handlers175
    push_eh $P507
  for_next176:
    unless $P504, for_done178
    shift $P508, $P504
  for_redo177:
    .const 'Sub' $P506 = 'cuid_156_1346233419.189' 
    capture_lex $P506
    $P502 = $P506($P508)
    goto for_next176
  for_handlers175:
    .get_results ($P507)
    pop_upto_eh $P507
    getattribute $P507, $P507, 'type'
    eq $P507, .CONTROL_LOOP_NEXT, for_next176
    eq $P507, .CONTROL_LOOP_REDO, for_redo177
  for_done178:
    pop_eh 
.annotate 'line', 908
    find_lex $P509, "@immediate_parents"
    $P510 = $P101."push"($P509)
.annotate 'line', 909
    $P511 = "&c3_merge"($P101)
    store_lex "@result", $P511
    .return ($P511) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_156_1346233419.189") :anon :lex :outer("cuid_157_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 905
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 906
    find_lex $P501, "@merge_list"
    $P502 = "&compute_c3_mro"(_lex_param_0)
    $P503 = $P501."push"($P502)
    .return ($P503) 
.end
.HLL "nqp"
.namespace []
.sub "c3_merge" :subid("cuid_163_1346233419.189") :anon :lex :outer("cuid_98_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 919
    .param pmc _lex_param_0 
    .const 'Sub' $P530 = 'cuid_162_1346233419.189' 
    capture_lex $P530 
    .const 'Sub' $P530 = 'cuid_165_1346233419.189' 
    capture_lex $P530 
    .lex "@result", $P101 
    .lex "$accepted", $P102 
    .lex "$something_accepted", $P103 
    .lex "$cand_count", $P104 
    .lex "$i", $P105 
    .lex "@merge_list", _lex_param_0 
    new $P501, 'ResizablePMCArray'
    set $P101, $P501
    null $P502
    set $P102, $P502
    null $P503
    set $P103, $P503
    null $P504
    set $P104, $P504
    null $P505
    set $P105, $P505
    root_new $P106, ['parrot';'Continuation']
    set_label $P106, lexotic_179
    .lex "RETURN", $P106
    box $P506, 0
    set $P103, $P506
    box $P507, 0
    set $P104, $P507
    set $P508, _lex_param_0
    iter $P510, _lex_param_0
    new $P512, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P512, for_handlers200
    push_eh $P512
  for_next201:
    unless $P510, for_done203
    shift $P513, $P510
  for_redo202:
    .const 'Sub' $P511 = 'cuid_162_1346233419.189' 
    capture_lex $P511
    $P508 = $P511($P513)
    goto for_next201
  for_handlers200:
    .get_results ($P512)
    pop_upto_eh $P512
    getattribute $P512, $P512, 'type'
    eq $P512, .CONTROL_LOOP_NEXT, for_next201
    eq $P512, .CONTROL_LOOP_REDO, for_redo202
  for_done203:
    pop_eh 
    set $N501, $P104
    set $N502, 0
    iseq $I501, $N501, $N502
    box $P517, $I501
    set $P516, $P517
    unless $I501 goto if38_end205 
.annotate 'line', 956
    find_lex $P514, "RETURN"
    $P515 = $P514($P101)
    set $P516, $P515
  if38_end205:
    set $P519, $P103
    if $P103 goto unless39_end207 
.annotate 'line', 961
    box $P518, "Could not build C3 linearization: ambiguous hierarchy"
    die $P518
    set $P519, $P518
  unless39_end207:
    box $P520, 0
    set $P105, $P520
    new $P524, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P524, while40_handlers211
    push_eh $P524
  while40_test208:
    set $N503, $P105
    set $N504, _lex_param_0
    islt $I502, $N503, $N504
    box $P525, $I502
    set $P523, $P525
    unless $I502 goto while40_done212 
  while40_redo210:
    .const 'Sub' $P521 = 'cuid_165_1346233419.189' 
    capture_lex $P521
    $P522 = $P521()
    set $P523, $P522
    goto while40_test208 
  while40_handlers211:
    .get_results ($P524)
    pop_upto_eh $P524
    getattribute $P524, $P524, 'type'
    eq $P524, .CONTROL_LOOP_NEXT, while40_test208
    eq $P524, .CONTROL_LOOP_REDO, while40_redo210
  while40_done212:
    pop_eh 
.annotate 'line', 980
    $P526 = "&c3_merge"(_lex_param_0)
    set $P101, $P526
.annotate 'line', 981
    $P527 = $P101."unshift"($P102)
    find_lex $P528, "RETURN"
    $P529 = $P528($P101)
    goto lexotic_180
  lexotic_179:
    .get_results ($P529)
  lexotic_180:
    .return ($P529) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_162_1346233419.189") :anon :lex :outer("cuid_163_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 926
    .param pmc _lex_param_0 
    .const 'Sub' $P506 = 'cuid_161_1346233419.189' 
    capture_lex $P506 
    .lex "@cand_list", $P101 
    .lex "$_", _lex_param_0 
    new $P501, 'ResizablePMCArray'
    set $P101, $P501
    set $P101, _lex_param_0
    set $N501, $P101
    box $P505, $N501
    set $P504, $P505
    unless $N501 goto if33_end182 
    .const 'Sub' $P502 = 'cuid_161_1346233419.189' 
    capture_lex $P502
    $P503 = $P502()
    set $P504, $P503
  if33_end182:
    .return ($P504) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_161_1346233419.189") :anon :lex :outer("cuid_162_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 928
    .const 'Sub' $P519 = 'cuid_160_1346233419.189' 
    capture_lex $P519 
    .lex "$rejected", $P101 
    .lex "$cand_class", $P102 
    null $P501
    set $P101, $P501
    null $P502
    set $P102, $P502
    box $P503, 0
    set $P101, $P503
    find_lex $P505, "@cand_list"
    set $P504, $P505[0]
    unless_null $P504, fallback183
    null $P506
    set $P504, $P506
  fallback183:
    set $P102, $P504
    find_lex $P507, "$cand_count"
    set $N502, $P507
    set $N503, 1
    add $N501, $N502, $N503
    box $P508, $N501
    store_lex "$cand_count", $P508
    find_lex $P512, "@merge_list"
    set $P509, $P512
    iter $P511, $P512
    new $P514, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P514, for_handlers194
    push_eh $P514
  for_next195:
    unless $P511, for_done197
    shift $P515, $P511
  for_redo196:
    .const 'Sub' $P513 = 'cuid_160_1346233419.189' 
    capture_lex $P513
    $P509 = $P513($P515)
    goto for_next195
  for_handlers194:
    .get_results ($P514)
    pop_upto_eh $P514
    getattribute $P514, $P514, 'type'
    eq $P514, .CONTROL_LOOP_NEXT, for_next195
    eq $P514, .CONTROL_LOOP_REDO, for_redo196
  for_done197:
    pop_eh 
    set $P517, $P101
    if $P101 goto unless37_end199 
.annotate 'line', 947
    store_lex "$accepted", $P102
    box $P516, 1
    store_lex "$something_accepted", $P516
    die 0, .CONTROL_LOOP_LAST
    box $P518, 0
    set $P517, $P518
  unless37_end199:
    .return ($P517) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_160_1346233419.189") :anon :lex :outer("cuid_161_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 932
    .param pmc _lex_param_0 
    .const 'Sub' $P506 = 'cuid_159_1346233419.189' 
    capture_lex $P506 
    .lex "$_", _lex_param_0 
    get_id $I502, _lex_param_0
    find_lex $P501, "@cand_list"
    get_id $I503, $P501
    iseq $I501, $I502, $I503
    box $P505, $I501
    set $P504, $P505
    if $I501 goto unless34_end185 
    .const 'Sub' $P502 = 'cuid_159_1346233419.189' 
    capture_lex $P502
    $P503 = $P502()
    set $P504, $P503
  unless34_end185:
    .return ($P504) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_159_1346233419.189") :anon :lex :outer("cuid_160_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 934
    .lex "$cur_pos", $P101 
    null $P501
    set $P101, $P501
    box $P502, 1
    set $P101, $P502
    new $P513, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P513, while35_handlers189
    push_eh $P513
  while35_test186:
    set $N501, $P101
    find_lex $P503, "$_"
    set $N502, $P503
    isle $I501, $N501, $N502
    box $P514, $I501
    set $P512, $P514
    unless $I501 goto while35_done190 
  while35_redo188:
.annotate 'line', 937
    find_lex $P505, "$_"
    set $I504, $P101
    set $P504, $P505[$I504]
    unless_null $P504, fallback193
    null $P506
    set $P504, $P506
  fallback193:
    get_id $I503, $P504
    find_lex $P507, "$cand_class"
    get_id $I505, $P507
    iseq $I502, $I503, $I505
    box $P510, $I502
    set $P509, $P510
    unless $I502 goto if36_end192 
.annotate 'line', 938
    box $P508, 1
    store_lex "$rejected", $P508
    set $P509, $P508
  if36_end192:
    set $N504, $P101
    set $N505, 1
    add $N503, $N504, $N505
    box $P511, $N503
    set $P101, $P511
    set $P512, $P101
    goto while35_test186 
  while35_handlers189:
    .get_results ($P513)
    pop_upto_eh $P513
    getattribute $P513, $P513, 'type'
    eq $P513, .CONTROL_LOOP_NEXT, while35_test186
    eq $P513, .CONTROL_LOOP_REDO, while35_redo188
  while35_done190:
    pop_eh 
    .return ($P512) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_165_1346233419.189") :anon :lex :outer("cuid_163_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 967
    .const 'Sub' $P516 = 'cuid_164_1346233419.189' 
    capture_lex $P516 
    .lex "@new_list", $P101 
    new $P501, 'ResizablePMCArray'
    set $P101, $P501
    find_lex $P506, "@merge_list"
    find_lex $P507, "$i"
    set $I501, $P507
    set $P505, $P506[$I501]
    unless_null $P505, fallback213
    null $P508
    set $P505, $P508
  fallback213:
    set $P502, $P505
    iter $P504, $P505
    new $P510, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P510, for_handlers216
    push_eh $P510
  for_next217:
    unless $P504, for_done219
    shift $P511, $P504
  for_redo218:
    .const 'Sub' $P509 = 'cuid_164_1346233419.189' 
    capture_lex $P509
    $P502 = $P509($P511)
    goto for_next217
  for_handlers216:
    .get_results ($P510)
    pop_upto_eh $P510
    getattribute $P510, $P510, 'type'
    eq $P510, .CONTROL_LOOP_NEXT, for_next217
    eq $P510, .CONTROL_LOOP_REDO, for_redo218
  for_done219:
    pop_eh 
    find_lex $P512, "@merge_list"
    find_lex $P513, "$i"
    set $I502, $P513
    set $P512[$I502], $P101
    find_lex $P514, "$i"
    set $N502, $P514
    set $N503, 1
    add $N501, $N502, $N503
    box $P515, $N501
    store_lex "$i", $P515
    .return ($P515) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_164_1346233419.189") :anon :lex :outer("cuid_165_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 969
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    get_id $I502, _lex_param_0
    find_lex $P501, "$accepted"
    get_id $I503, $P501
    iseq $I501, $I502, $I503
    box $P505, $I501
    set $P504, $P505
    if $I501 goto unless41_end215 
.annotate 'line', 970
.annotate 'line', 971
    find_lex $P502, "@new_list"
    $P503 = $P502."push"(_lex_param_0)
    set $P504, $P503
  unless41_end215:
    .return ($P504) 
.end
.HLL "nqp"
.namespace []
.sub "archetypes" :subid("cuid_56_1346233419.189") :anon :lex :outer("cuid_98_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 627
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    find_lex $P501, "$archetypes"
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "new" :subid("cuid_57_1346233419.189") :anon :lex :outer("cuid_98_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 636
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("name") :optional 
    .param int haz_param_15 :opt_flag 
    if haz_param_15, default220
    null $P505
    set _lex_param_1, $P505
  default220:
    .lex "$obj", $P101 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    null $P501
    set $P101, $P501
    nqp_decontainerize $P503, _lex_param_0
    repr_instance_of $P502, $P503
    set $P101, $P502
.annotate 'line', 638
    $P504 = $P101."BUILD"(_lex_param_1 :named("name"))
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "BUILD" :subid("cuid_58_1346233419.189") :anon :lex :outer("cuid_98_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 642
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("name") :optional 
    .param int haz_param_16 :opt_flag 
    if haz_param_16, default221
    box $P554, "<anon>"
    set _lex_param_1, $P554
  default221:
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 6
    repr_bind_attr_obj $P501, $P502, "$!name", _lex_param_1
    nqp_decontainerize $P503, _lex_param_0
    nqp_get_sc_object $P504, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 6
    new $P505, 'Hash'
    repr_bind_attr_obj $P503, $P504, "%!attributes", $P505
    nqp_decontainerize $P506, _lex_param_0
    nqp_get_sc_object $P507, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 6
    new $P508, 'Hash'
    repr_bind_attr_obj $P506, $P507, "%!methods", $P508
    nqp_decontainerize $P509, _lex_param_0
    nqp_get_sc_object $P510, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 6
    new $P511, 'ResizablePMCArray'
    repr_bind_attr_obj $P509, $P510, "@!method_order", $P511
    nqp_decontainerize $P512, _lex_param_0
    nqp_get_sc_object $P513, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 6
    new $P514, 'ResizablePMCArray'
    repr_bind_attr_obj $P512, $P513, "@!multi_methods_to_incorporate", $P514
    nqp_decontainerize $P515, _lex_param_0
    nqp_get_sc_object $P516, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 6
    new $P517, 'ResizablePMCArray'
    repr_bind_attr_obj $P515, $P516, "@!parents", $P517
    nqp_decontainerize $P518, _lex_param_0
    nqp_get_sc_object $P519, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 6
    new $P520, 'ResizablePMCArray'
    repr_bind_attr_obj $P518, $P519, "@!roles", $P520
    nqp_decontainerize $P521, _lex_param_0
    nqp_get_sc_object $P522, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 6
    new $P523, 'ResizablePMCArray'
    repr_bind_attr_obj $P521, $P522, "@!vtable", $P523
    nqp_decontainerize $P524, _lex_param_0
    nqp_get_sc_object $P525, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 6
    new $P526, 'Hash'
    repr_bind_attr_obj $P524, $P525, "%!method-vtable-slots", $P526
    nqp_decontainerize $P527, _lex_param_0
    nqp_get_sc_object $P528, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 6
    new $P529, 'ResizablePMCArray'
    repr_bind_attr_obj $P527, $P528, "@!mro", $P529
    nqp_decontainerize $P530, _lex_param_0
    nqp_get_sc_object $P531, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 6
    new $P532, 'ResizablePMCArray'
    repr_bind_attr_obj $P530, $P531, "@!done", $P532
    nqp_decontainerize $P533, _lex_param_0
    nqp_get_sc_object $P534, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 6
    new $P535, 'Hash'
    repr_bind_attr_obj $P533, $P534, "%!parrot_vtable_mapping", $P535
    nqp_decontainerize $P536, _lex_param_0
    nqp_get_sc_object $P537, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 6
    new $P538, 'Hash'
    repr_bind_attr_obj $P536, $P537, "%!parrot_vtable_handler_mapping", $P538
    nqp_decontainerize $P539, _lex_param_0
    nqp_get_sc_object $P540, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 6
    new $P541, 'ResizablePMCArray'
    repr_bind_attr_obj $P539, $P540, "@!BUILDALLPLAN", $P541
    nqp_decontainerize $P542, _lex_param_0
    nqp_get_sc_object $P543, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 6
    new $P544, 'ResizablePMCArray'
    repr_bind_attr_obj $P542, $P543, "@!BUILDPLAN", $P544
    nqp_decontainerize $P545, _lex_param_0
    nqp_get_sc_object $P546, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 6
    box $P547, 0
    repr_bind_attr_obj $P545, $P546, "$!trace", $P547
    nqp_decontainerize $P548, _lex_param_0
    nqp_get_sc_object $P549, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 6
    box $P550, 0
    repr_bind_attr_obj $P548, $P549, "$!trace_depth", $P550
    nqp_decontainerize $P551, _lex_param_0
    nqp_get_sc_object $P552, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 6
    box $P553, 0
    repr_bind_attr_obj $P551, $P552, "$!composed", $P553
    .return ($P553) 
.end
.HLL "nqp"
.namespace []
.sub "new_type" :subid("cuid_59_1346233419.189") :anon :lex :outer("cuid_98_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 665
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("name") :optional 
    .param int haz_param_17 :opt_flag 
    .param pmc _lex_param_2 :named("repr") :optional 
    .param int haz_param_18 :opt_flag 
    if haz_param_17, default222
    box $P506, "<anon>"
    set _lex_param_1, $P506
  default222:
    if haz_param_18, default223
    box $P507, "P6opaque"
    set _lex_param_2, $P507
  default223:
    .lex "$metaclass", $P101 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    .lex "$repr", _lex_param_2 
    null $P501
    set $P101, $P501
.annotate 'line', 666
    nqp_decontainerize $P502, _lex_param_0
    $P503 = $P502."new"(_lex_param_1 :named("name"))
    set $P101, $P503
    set $S501, _lex_param_2
    repr_type_object_for $P504, $P101, $S501
    new $P505, 'Hash'
    set_who $P504, $P505
    .return ($P504) 
.end
.HLL "nqp"
.namespace []
.sub "add_method" :subid("cuid_60_1346233419.189") :anon :lex :outer("cuid_98_1346233419.189")
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
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 6
    repr_get_attr_obj $P503, $P501, $P502, "%!methods"
    set $S501, _lex_param_2
    exists $I501, $P503[$S501]
    box $P506, $I501
    set $P505, $P506
    unless $I501 goto if42_end225 
.annotate 'line', 671
    set $S503, _lex_param_2
    concat $S502, "This class already has a method named ", $S503
    box $P504, $S502
    die $P504
    set $P505, $P504
  if42_end225:
    isnull $I502, _lex_param_3
    set $I505, $I502
    if $I502 goto unless44_end229 
    defined $I504, _lex_param_3
    box $P507, $I504
    isfalse $I503, $P507
    set $I505, $I503
  unless44_end229:
    box $P513, $I505
    set $P512, $P513
    unless $I505 goto if43_end227 
.annotate 'line', 674
    set $S508, _lex_param_2
    concat $S507, "Cannot add a null method '", $S508
    concat $S506, $S507, "' to class '"
    nqp_decontainerize $P508, _lex_param_0
    nqp_get_sc_object $P509, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 6
    repr_get_attr_obj $P510, $P508, $P509, "$!name"
    set $S509, $P510
    concat $S505, $S506, $S509
    concat $S504, $S505, "'"
    box $P511, $S504
    die $P511
    set $P512, $P511
  if43_end227:
    set_method_cache_authoritativeness _lex_param_1, 0
    find_lex $P514, "%caches"
    nqp_decontainerize $P515, _lex_param_0
    get_id $I506, $P515
    set $S510, $I506
    new $P516, 'Hash'
    set $P514[$S510], $P516
    nqp_decontainerize $P517, _lex_param_0
    nqp_get_sc_object $P518, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 6
    repr_get_attr_obj $P519, $P517, $P518, "@!method_order"
    nqp_decontainerize $P520, _lex_param_0
    nqp_get_sc_object $P521, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 6
    repr_get_attr_obj $P522, $P520, $P521, "@!method_order"
    set $N501, $P522
    set $I507, $N501
    nqp_decontainerize $P523, _lex_param_0
    nqp_get_sc_object $P524, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 6
    repr_get_attr_obj $P525, $P523, $P524, "%!methods"
    set $S511, _lex_param_2
    set $P525[$S511], _lex_param_3
    set $P519[$I507], _lex_param_3
    .return (_lex_param_3) 
.end
.HLL "nqp"
.namespace []
.sub "add_multi_method" :subid("cuid_61_1346233419.189") :anon :lex :outer("cuid_98_1346233419.189")
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
    new $P501, 'Hash'
    set $P101, $P501
    set $P101["name"], _lex_param_2
    set $P101["code"], _lex_param_3
    nqp_decontainerize $P502, _lex_param_0
    nqp_get_sc_object $P503, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 6
    repr_get_attr_obj $P504, $P502, $P503, "@!multi_methods_to_incorporate"
    nqp_decontainerize $P505, _lex_param_0
    nqp_get_sc_object $P506, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 6
    repr_get_attr_obj $P507, $P505, $P506, "@!multi_methods_to_incorporate"
    set $N501, $P507
    set $I501, $N501
    set $P504[$I501], $P101
    set_method_cache_authoritativeness _lex_param_1, 0
    .return (_lex_param_3) 
.end
.HLL "nqp"
.namespace []
.sub "add_attribute" :subid("cuid_62_1346233419.189") :anon :lex :outer("cuid_98_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 696
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "$name", $P101 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$meta_attr", _lex_param_2 
    null $P501
    set $P101, $P501
.annotate 'line', 697
    $P502 = _lex_param_2."name"()
    set $P101, $P502
    nqp_decontainerize $P503, _lex_param_0
    nqp_get_sc_object $P504, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 6
    repr_get_attr_obj $P505, $P503, $P504, "%!attributes"
    set $S501, $P101
    exists $I501, $P505[$S501]
    box $P508, $I501
    set $P507, $P508
    unless $I501 goto if45_end231 
.annotate 'line', 698
    set $S503, $P101
    concat $S502, "This class already has an attribute named ", $S503
    box $P506, $S502
    die $P506
    set $P507, $P506
  if45_end231:
    nqp_decontainerize $P509, _lex_param_0
    nqp_get_sc_object $P510, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 6
    repr_get_attr_obj $P511, $P509, $P510, "%!attributes"
    set $S504, $P101
    set $P511[$S504], _lex_param_2
    .return (_lex_param_2) 
.end
.HLL "nqp"
.namespace []
.sub "add_parent" :subid("cuid_63_1346233419.189") :anon :lex :outer("cuid_98_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 704
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .const 'Sub' $P527 = 'cuid_166_1346233419.189' 
    capture_lex $P527 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$parent", _lex_param_2 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 6
    repr_get_attr_obj $P503, $P501, $P502, "$!composed"
    set $P505, $P503
    unless $P503 goto if46_end233 
.annotate 'line', 705
    box $P504, "NQPClassHOW does not support adding parents after being composed."
    die $P504
    set $P505, $P504
  if46_end233:
    get_id $I502, _lex_param_1
    get_id $I503, _lex_param_2
    iseq $I501, $I502, $I503
    box $P511, $I501
    set $P510, $P511
    unless $I501 goto if47_end235 
.annotate 'line', 708
    nqp_decontainerize $P506, _lex_param_0
    nqp_get_sc_object $P507, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 6
    repr_get_attr_obj $P508, $P506, $P507, "$!name"
    set $S503, $P508
    concat $S502, "Class '", $S503
    concat $S501, $S502, "' cannot inherit from itself."
    box $P509, $S501
    die $P509
    set $P510, $P509
  if47_end235:
    nqp_decontainerize $P515, _lex_param_0
    nqp_get_sc_object $P516, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 6
    repr_get_attr_obj $P517, $P515, $P516, "@!parents"
    set $P512, $P517
    iter $P514, $P517
    new $P519, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P519, for_handlers238
    push_eh $P519
  for_next239:
    unless $P514, for_done241
    shift $P520, $P514
  for_redo240:
    .const 'Sub' $P518 = 'cuid_166_1346233419.189' 
    capture_lex $P518
    $P512 = $P518($P520)
    goto for_next239
  for_handlers238:
    .get_results ($P519)
    pop_upto_eh $P519
    getattribute $P519, $P519, 'type'
    eq $P519, .CONTROL_LOOP_NEXT, for_next239
    eq $P519, .CONTROL_LOOP_REDO, for_redo240
  for_done241:
    pop_eh 
    nqp_decontainerize $P521, _lex_param_0
    nqp_get_sc_object $P522, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 6
    repr_get_attr_obj $P523, $P521, $P522, "@!parents"
    nqp_decontainerize $P524, _lex_param_0
    nqp_get_sc_object $P525, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 6
    repr_get_attr_obj $P526, $P524, $P525, "@!parents"
    set $N501, $P526
    set $I504, $N501
    set $P523[$I504], _lex_param_2
    .return (_lex_param_2) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_166_1346233419.189") :anon :lex :outer("cuid_63_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 711
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    get_id $I502, _lex_param_0
    find_lex $P501, "$parent"
    get_id $I503, $P501
    iseq $I501, $I502, $I503
    box $P505, $I501
    set $P504, $P505
    unless $I501 goto if48_end237 
.annotate 'line', 712
    find_lex $P502, "$parent"
    set $S503, $P502
    concat $S502, "Already have ", $S503
    concat $S501, $S502, " as a parent class."
    box $P503, $S501
    die $P503
    set $P504, $P503
  if48_end237:
    .return ($P504) 
.end
.HLL "nqp"
.namespace []
.sub "set_default_parent" :subid("cuid_64_1346233419.189") :anon :lex :outer("cuid_98_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 719
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$parent", _lex_param_2 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 6
    repr_bind_attr_obj $P501, $P502, "$!default_parent", _lex_param_2
    .return (_lex_param_2) 
.end
.HLL "nqp"
.namespace []
.sub "reparent" :subid("cuid_65_1346233419.189") :anon :lex :outer("cuid_98_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 725
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .const 'Sub' $P549 = 'cuid_167_1346233419.189' 
    capture_lex $P549 
    .const 'Sub' $P549 = 'cuid_168_1346233419.189' 
    capture_lex $P549 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$new_parent", _lex_param_2 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 6
    repr_get_attr_obj $P503, $P501, $P502, "@!parents"
    set $N501, $P503
    set $N502, 1
    isne $I501, $N501, $N502
    box $P506, $I501
    set $P505, $P506
    unless $I501 goto if49_end243 
.annotate 'line', 726
    box $P504, "Can only re-parent a class with exactly one parent"
    die $P504
    set $P505, $P504
  if49_end243:
.annotate 'line', 729
    nqp_decontainerize $P512, _lex_param_0
    nqp_get_sc_object $P513, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 6
    repr_get_attr_obj $P514, $P512, $P513, "@!parents"
    set $P511, $P514[0]
    unless_null $P511, fallback244
    null $P515
    set $P511, $P515
  fallback244:
    get_how $P510, $P511
    nqp_decontainerize $P517, _lex_param_0
    nqp_get_sc_object $P518, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 6
    repr_get_attr_obj $P519, $P517, $P518, "@!parents"
    set $P516, $P519[0]
    unless_null $P516, fallback245
    null $P520
    set $P516, $P520
  fallback245:
    $P521 = $P510."mro"($P516)
    set $P507, $P521
    iter $P509, $P521
    new $P523, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P523, for_handlers248
    push_eh $P523
  for_next249:
    unless $P509, for_done251
    shift $P524, $P509
  for_redo250:
    .const 'Sub' $P522 = 'cuid_167_1346233419.189' 
    capture_lex $P522
    $P507 = $P522($P524)
    goto for_next249
  for_handlers248:
    .get_results ($P523)
    pop_upto_eh $P523
    getattribute $P523, $P523, 'type'
    eq $P523, .CONTROL_LOOP_NEXT, for_next249
    eq $P523, .CONTROL_LOOP_REDO, for_redo250
  for_done251:
    pop_eh 
.annotate 'line', 734
    get_how $P528, _lex_param_2
    $P529 = $P528."mro"(_lex_param_2)
    set $P525, $P529
    iter $P527, $P529
    new $P531, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P531, for_handlers254
    push_eh $P531
  for_next255:
    unless $P527, for_done257
    shift $P532, $P527
  for_redo256:
    .const 'Sub' $P530 = 'cuid_168_1346233419.189' 
    capture_lex $P530
    $P525 = $P530($P532)
    goto for_next255
  for_handlers254:
    .get_results ($P531)
    pop_upto_eh $P531
    getattribute $P531, $P531, 'type'
    eq $P531, .CONTROL_LOOP_NEXT, for_next255
    eq $P531, .CONTROL_LOOP_REDO, for_redo256
  for_done257:
    pop_eh 
    nqp_decontainerize $P533, _lex_param_0
    nqp_get_sc_object $P534, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 6
    repr_get_attr_obj $P535, $P533, $P534, "@!parents"
    set $P535[0], _lex_param_2
    nqp_decontainerize $P536, _lex_param_0
    nqp_get_sc_object $P537, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 6
.annotate 'line', 740
    $P538 = "&compute_c3_mro"(_lex_param_1)
    repr_bind_attr_obj $P536, $P537, "@!mro", $P538
.annotate 'line', 741
    nqp_decontainerize $P539, _lex_param_0
    $P540 = $P539."publish_type_cache"(_lex_param_1)
.annotate 'line', 742
    nqp_decontainerize $P541, _lex_param_0
    $P542 = $P541."publish_method_cache"(_lex_param_1)
.annotate 'line', 743
    nqp_decontainerize $P543, _lex_param_0
    $P544 = $P543."publish_boolification_spec"(_lex_param_1)
.annotate 'line', 744
    nqp_decontainerize $P545, _lex_param_0
    $P546 = $P545."publish_parrot_vtable_mapping"(_lex_param_1)
.annotate 'line', 745
    nqp_decontainerize $P547, _lex_param_0
    $P548 = $P547."publish_parrot_vtablee_handler_mapping"(_lex_param_1)
    .return (1) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_167_1346233419.189") :anon :lex :outer("cuid_65_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 729
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 730
    get_how $P501, _lex_param_0
    $P502 = $P501."attributes"(_lex_param_0, 1 :named("local"))
    set $N501, $P502
    box $P505, $N501
    set $P504, $P505
    unless $N501 goto if50_end247 
    box $P503, "Can only re-parent a class whose parent has no attributes"
    die $P503
    set $P504, $P503
  if50_end247:
    .return ($P504) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_168_1346233419.189") :anon :lex :outer("cuid_65_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 734
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 735
    get_how $P501, _lex_param_0
    $P502 = $P501."attributes"(_lex_param_0, 1 :named("local"))
    set $N501, $P502
    box $P505, $N501
    set $P504, $P505
    unless $N501 goto if51_end253 
    box $P503, "Can only re-parent to a class with no attributes"
    die $P503
    set $P504, $P503
  if51_end253:
    .return ($P504) 
.end
.HLL "nqp"
.namespace []
.sub "add_role" :subid("cuid_66_1346233419.189") :anon :lex :outer("cuid_98_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 749
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .const 'Sub' $P516 = 'cuid_169_1346233419.189' 
    capture_lex $P516 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$role", _lex_param_2 
    nqp_decontainerize $P504, _lex_param_0
    nqp_get_sc_object $P505, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 6
    repr_get_attr_obj $P506, $P504, $P505, "@!roles"
    set $P501, $P506
    iter $P503, $P506
    new $P508, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P508, for_handlers260
    push_eh $P508
  for_next261:
    unless $P503, for_done263
    shift $P509, $P503
  for_redo262:
    .const 'Sub' $P507 = 'cuid_169_1346233419.189' 
    capture_lex $P507
    $P501 = $P507($P509)
    goto for_next261
  for_handlers260:
    .get_results ($P508)
    pop_upto_eh $P508
    getattribute $P508, $P508, 'type'
    eq $P508, .CONTROL_LOOP_NEXT, for_next261
    eq $P508, .CONTROL_LOOP_REDO, for_redo262
  for_done263:
    pop_eh 
    nqp_decontainerize $P510, _lex_param_0
    nqp_get_sc_object $P511, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 6
    repr_get_attr_obj $P512, $P510, $P511, "@!roles"
    nqp_decontainerize $P513, _lex_param_0
    nqp_get_sc_object $P514, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 6
    repr_get_attr_obj $P515, $P513, $P514, "@!roles"
    set $N501, $P515
    set $I501, $N501
    set $P512[$I501], _lex_param_2
    .return (_lex_param_2) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_169_1346233419.189") :anon :lex :outer("cuid_66_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 750
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    get_id $I502, _lex_param_0
    find_lex $P501, "$role"
    get_id $I503, $P501
    iseq $I501, $I502, $I503
    box $P505, $I501
    set $P504, $P505
    unless $I501 goto if52_end259 
.annotate 'line', 751
    find_lex $P502, "$role"
    set $S503, $P502
    concat $S502, "The role ", $S503
    concat $S501, $S502, " has already been added."
    box $P503, $S501
    die $P503
    set $P504, $P503
  if52_end259:
    .return ($P504) 
.end
.HLL "nqp"
.namespace []
.sub "add_parrot_vtable_mapping" :subid("cuid_67_1346233419.189") :anon :lex :outer("cuid_98_1346233419.189")
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
    nqp_decontainerize $P502, _lex_param_0
    nqp_get_sc_object $P503, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 6
    repr_get_attr_obj $P504, $P502, $P503, "%!parrot_vtable_mapping"
    set $S501, _lex_param_2
    set $P501, $P504[$S501]
    unless_null $P501, fallback266
    null $P505
    set $P501, $P505
  fallback266:
    defined $I501, $P501
    box $P511, $I501
    set $P510, $P511
    unless $I501 goto if53_end265 
.annotate 'line', 759
    nqp_decontainerize $P506, _lex_param_0
    nqp_get_sc_object $P507, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 6
    repr_get_attr_obj $P508, $P506, $P507, "$!name"
    set $S506, $P508
    concat $S505, "Class '", $S506
    concat $S504, $S505, "' already has a Parrot v-table override for '"
    set $S507, _lex_param_2
    concat $S503, $S504, $S507
    concat $S502, $S503, "'"
    box $P509, $S502
    die $P509
    set $P510, $P509
  if53_end265:
    nqp_decontainerize $P512, _lex_param_0
    nqp_get_sc_object $P513, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 6
    repr_get_attr_obj $P514, $P512, $P513, "%!parrot_vtable_mapping"
    set $S508, _lex_param_2
    set $P514[$S508], _lex_param_3
    .return (_lex_param_3) 
.end
.HLL "nqp"
.namespace []
.sub "add_parrot_vtable_handler_mapping" :subid("cuid_68_1346233419.189") :anon :lex :outer("cuid_98_1346233419.189")
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
    nqp_decontainerize $P502, _lex_param_0
    nqp_get_sc_object $P503, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 6
    repr_get_attr_obj $P504, $P502, $P503, "%!parrot_vtable_handler_mapping"
    set $S501, _lex_param_2
    set $P501, $P504[$S501]
    unless_null $P501, fallback269
    null $P505
    set $P501, $P505
  fallback269:
    defined $I501, $P501
    box $P511, $I501
    set $P510, $P511
    unless $I501 goto if54_end268 
.annotate 'line', 768
    nqp_decontainerize $P506, _lex_param_0
    nqp_get_sc_object $P507, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 6
    repr_get_attr_obj $P508, $P506, $P507, "$!name"
    set $S506, $P508
    concat $S505, "Class '", $S506
    concat $S504, $S505, "' already has a Parrot v-table handler for '"
    set $S507, _lex_param_2
    concat $S503, $S504, $S507
    concat $S502, $S503, "'"
    box $P509, $S502
    die $P509
    set $P510, $P509
  if54_end268:
    nqp_decontainerize $P512, _lex_param_0
    nqp_get_sc_object $P513, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 6
    repr_get_attr_obj $P514, $P512, $P513, "%!parrot_vtable_handler_mapping"
    set $S508, _lex_param_2
    new $P515, 'ResizablePMCArray'
    push $P515, _lex_param_1
    push $P515, _lex_param_3
    set $P514[$S508], $P515
    .return ($P515) 
.end
.HLL "nqp"
.namespace []
.sub "compose" :subid("cuid_69_1346233419.189") :anon :lex :outer("cuid_98_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 776
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P552 = 'cuid_171_1346233419.189' 
    capture_lex $P552 
    .const 'Sub' $P552 = 'cuid_172_1346233419.189' 
    capture_lex $P552 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 6
    repr_get_attr_obj $P503, $P501, $P502, "@!roles"
    set $P506, $P503
    unless $P503 goto if55_end271 
    .const 'Sub' $P504 = 'cuid_171_1346233419.189' 
    capture_lex $P504
    $P505 = $P504()
    set $P506, $P505
  if55_end271:
    nqp_decontainerize $P507, _lex_param_0
    nqp_get_sc_object $P508, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 6
    repr_get_attr_obj $P509, $P507, $P508, "@!parents"
    set $N501, $P509
    set $N502, 0
    iseq $I501, $N501, $N502
    set $I503, $I501
    unless $I501 goto if57_end279 
    nqp_decontainerize $P510, _lex_param_0
    nqp_get_sc_object $P511, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 6
    repr_get_attr_obj $P512, $P510, $P511, "$!name"
    set $S501, $P512
    isne $I502, $S501, "NQPMu"
    set $I503, $I502
  if57_end279:
    box $P519, $I503
    set $P518, $P519
    unless $I503 goto if56_end277 
.annotate 'line', 793
.annotate 'line', 794
    nqp_decontainerize $P513, _lex_param_0
    nqp_decontainerize $P514, _lex_param_0
    nqp_get_sc_object $P515, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 6
    repr_get_attr_obj $P516, $P514, $P515, "$!default_parent"
    $P517 = $P513."add_parent"(_lex_param_1, $P516)
    set $P518, $P517
  if56_end277:
    nqp_decontainerize $P520, _lex_param_0
    nqp_get_sc_object $P521, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 6
    repr_get_attr_obj $P522, $P520, $P521, "$!composed"
    set $P529, $P522
    if $P522 goto unless58_end281 
.annotate 'line', 799
    nqp_decontainerize $P523, _lex_param_0
    nqp_get_sc_object $P524, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 6
.annotate 'line', 800
    $P525 = "&compute_c3_mro"(_lex_param_1)
    repr_bind_attr_obj $P523, $P524, "@!mro", $P525
    nqp_decontainerize $P526, _lex_param_0
    nqp_get_sc_object $P527, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 6
    box $P528, 1
    repr_bind_attr_obj $P526, $P527, "$!composed", $P528
    set $P529, $P528
  unless58_end281:
.annotate 'line', 805
    nqp_decontainerize $P530, _lex_param_0
    $P531 = $P530."incorporate_multi_candidates"(_lex_param_1)
.annotate 'line', 808
    nqp_decontainerize $P535, _lex_param_0
    $P536 = $P535."attributes"(_lex_param_1, "0" :named("local"))
    set $P532, $P536
    iter $P534, $P536
    new $P538, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P538, for_handlers282
    push_eh $P538
  for_next283:
    unless $P534, for_done285
    shift $P539, $P534
  for_redo284:
    .const 'Sub' $P537 = 'cuid_172_1346233419.189' 
    capture_lex $P537
    $P532 = $P537($P539)
    goto for_next283
  for_handlers282:
    .get_results ($P538)
    pop_upto_eh $P538
    getattribute $P538, $P538, 'type'
    eq $P538, .CONTROL_LOOP_NEXT, for_next283
    eq $P538, .CONTROL_LOOP_REDO, for_redo284
  for_done285:
    pop_eh 
.annotate 'line', 811
    nqp_decontainerize $P540, _lex_param_0
    $P541 = $P540."publish_type_cache"(_lex_param_1)
.annotate 'line', 812
    nqp_decontainerize $P542, _lex_param_0
    $P543 = $P542."publish_method_cache"(_lex_param_1)
.annotate 'line', 813
    nqp_decontainerize $P544, _lex_param_0
    $P545 = $P544."publish_boolification_spec"(_lex_param_1)
.annotate 'line', 816
    nqp_decontainerize $P546, _lex_param_0
    $P547 = $P546."publish_parrot_vtable_mapping"(_lex_param_1)
.annotate 'line', 817
    nqp_decontainerize $P548, _lex_param_0
    $P549 = $P548."publish_parrot_vtablee_handler_mapping"(_lex_param_1)
.annotate 'line', 820
    nqp_decontainerize $P550, _lex_param_0
    $P551 = $P550."create_BUILDPLAN"(_lex_param_1)
    .return (_lex_param_1) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_171_1346233419.189") :anon :lex :outer("cuid_69_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 780
    .const 'Sub' $P515 = 'cuid_170_1346233419.189' 
    capture_lex $P515 
    .lex "@specialized_roles", $P101 
    new $P501, 'ResizablePMCArray'
    set $P101, $P501
    find_lex $P506, "self"
    nqp_decontainerize $P505, $P506
    nqp_get_sc_object $P507, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 6
    repr_get_attr_obj $P508, $P505, $P507, "@!roles"
    set $P502, $P508
    iter $P504, $P508
    new $P510, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P510, for_handlers272
    push_eh $P510
  for_next273:
    unless $P504, for_done275
    shift $P511, $P504
  for_redo274:
    .const 'Sub' $P509 = 'cuid_170_1346233419.189' 
    capture_lex $P509
    $P502 = $P509($P511)
    goto for_next273
  for_handlers272:
    .get_results ($P510)
    pop_upto_eh $P510
    getattribute $P510, $P510, 'type'
    eq $P510, .CONTROL_LOOP_NEXT, for_next273
    eq $P510, .CONTROL_LOOP_REDO, for_redo274
  for_done275:
    pop_eh 
.annotate 'line', 788
    find_lex $P512, "RoleToClassApplier"
    find_lex $P513, "$obj"
    $P514 = $P512."apply"($P513, $P101)
    .return ($P514) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_170_1346233419.189") :anon :lex :outer("cuid_171_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 782
    .param pmc _lex_param_0 
    .lex "$ins", $P101 
    .lex "$_", _lex_param_0 
    null $P501
    set $P101, $P501
.annotate 'line', 783
    get_how $P502, _lex_param_0
    find_lex $P503, "$obj"
    $P504 = $P502."specialize"(_lex_param_0, $P503)
    set $P101, $P504
.annotate 'line', 784
    find_lex $P505, "@specialized_roles"
    $P506 = $P505."push"($P101)
    find_lex $P508, "self"
    nqp_decontainerize $P507, $P508
    nqp_get_sc_object $P509, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 6
    repr_get_attr_obj $P510, $P507, $P509, "@!done"
    find_lex $P512, "self"
    nqp_decontainerize $P511, $P512
    nqp_get_sc_object $P513, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 6
    repr_get_attr_obj $P514, $P511, $P513, "@!done"
    set $N501, $P514
    set $I501, $N501
    set $P510[$I501], _lex_param_0
    find_lex $P516, "self"
    nqp_decontainerize $P515, $P516
    nqp_get_sc_object $P517, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 6
    repr_get_attr_obj $P518, $P515, $P517, "@!done"
    find_lex $P520, "self"
    nqp_decontainerize $P519, $P520
    nqp_get_sc_object $P521, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 6
    repr_get_attr_obj $P522, $P519, $P521, "@!done"
    set $N502, $P522
    set $I502, $N502
    set $P518[$I502], $P101
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_172_1346233419.189") :anon :lex :outer("cuid_69_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 808
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P501, "$obj"
    $P502 = _lex_param_0."compose"($P501)
    .return ($P502) 
.end
.HLL "nqp"
.namespace []
.sub "incorporate_multi_candidates" :subid("cuid_70_1346233419.189") :anon :lex :outer("cuid_98_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 825
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P513 = 'cuid_177_1346233419.189' 
    capture_lex $P513 
    .lex "$num_todo", $P101 
    .lex "$i", $P102 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    null $P501
    set $P101, $P501
    null $P502
    set $P102, $P502
    nqp_decontainerize $P503, _lex_param_0
    nqp_get_sc_object $P504, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 6
    repr_get_attr_obj $P505, $P503, $P504, "@!multi_methods_to_incorporate"
    set $N501, $P505
    box $P506, $N501
    set $P101, $P506
    box $P507, 0
    set $P102, $P507
    new $P511, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P511, while59_handlers289
    push_eh $P511
  while59_test286:
    set $N502, $P102
    set $N503, $P101
    isne $I501, $N502, $N503
    box $P512, $I501
    set $P510, $P512
    unless $I501 goto while59_done290 
  while59_redo288:
    .const 'Sub' $P508 = 'cuid_177_1346233419.189' 
    capture_lex $P508
    $P509 = $P508()
    set $P510, $P509
    goto while59_test286 
  while59_handlers289:
    .get_results ($P511)
    pop_upto_eh $P511
    getattribute $P511, $P511, 'type'
    eq $P511, .CONTROL_LOOP_NEXT, while59_test286
    eq $P511, .CONTROL_LOOP_REDO, while59_redo288
  while59_done290:
    pop_eh 
    .return ($P510) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_177_1346233419.189") :anon :lex :outer("cuid_70_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 828
    .const 'Sub' $P540 = 'cuid_176_1346233419.189' 
    capture_lex $P540 
    .lex "$name", $P101 
    .lex "$code", $P102 
    .lex "$dispatcher", $P103 
    null $P501
    set $P101, $P501
    null $P502
    set $P102, $P502
    null $P503
    set $P103, $P503
    find_lex $P507, "self"
    nqp_decontainerize $P506, $P507
    nqp_get_sc_object $P508, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 6
    repr_get_attr_obj $P509, $P506, $P508, "@!multi_methods_to_incorporate"
    find_lex $P510, "$i"
    set $I501, $P510
    set $P505, $P509[$I501]
    unless_null $P505, fallback291
    null $P511
    set $P505, $P511
  fallback291:
    set $P504, $P505["name"]
    unless_null $P504, fallback292
    null $P512
    set $P504, $P512
  fallback292:
    set $P101, $P504
    find_lex $P516, "self"
    nqp_decontainerize $P515, $P516
    nqp_get_sc_object $P517, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 6
    repr_get_attr_obj $P518, $P515, $P517, "@!multi_methods_to_incorporate"
    find_lex $P519, "$i"
    set $I502, $P519
    set $P514, $P518[$I502]
    unless_null $P514, fallback293
    null $P520
    set $P514, $P520
  fallback293:
    set $P513, $P514["code"]
    unless_null $P513, fallback294
    null $P521
    set $P513, $P521
  fallback294:
    set $P102, $P513
    find_lex $P524, "self"
    nqp_decontainerize $P523, $P524
    nqp_get_sc_object $P525, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 6
    repr_get_attr_obj $P526, $P523, $P525, "%!methods"
    set $S501, $P101
    set $P522, $P526[$S501]
    unless_null $P522, fallback295
    null $P527
    set $P522, $P527
  fallback295:
    set $P103, $P522
    defined $I503, $P103
    unless $I503 goto if60_else296 
.annotate 'line', 836
    is_dispatcher $I504, $P103
    unless $I504 goto if61_else298 
.annotate 'line', 839
    push_dispatchee $P103, $P102
    set $P534, $P103
    goto if61_end299
  if61_else298:
    can $I505, $P103, "is_dispatcher"
    box $P530, $I505
    set $P529, $P530
    unless $I505 goto if63_end303 
.annotate 'line', 842
    $P528 = $P103."is_dispatcher"()
    set $P529, $P528
  if63_end303:
    unless $P529 goto if62_else300 
.annotate 'line', 843
    $P531 = $P103."add_dispatchee"($P102)
    set $P533, $P531
    goto if62_end301
  if62_else300:
.annotate 'line', 845
    set $S504, $P101
    concat $S503, "Cannot have a multi candidate for ", $S504
    concat $S502, $S503, " when an only method is also in the class"
    box $P532, $S502
    die $P532
    set $P533, $P532
  if62_end301:
    set $P534, $P533
  if61_end299:
    set $P537, $P534
    goto if60_end297
  if60_else296:
    .const 'Sub' $P535 = 'cuid_176_1346233419.189' 
    capture_lex $P535
    $P536 = $P535()
    set $P537, $P536
  if60_end297:
    find_lex $P538, "$i"
    set $N502, $P538
    set $N503, 1
    add $N501, $N502, $N503
    box $P539, $N501
    store_lex "$i", $P539
    .return ($P539) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_176_1346233419.189") :anon :lex :outer("cuid_177_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 849
    .const 'Sub' $P517 = 'cuid_174_1346233419.189' 
    capture_lex $P517 
    .lex "$j", $P101 
    .lex "$found", $P102 
    null $P501
    set $P101, $P501
    null $P502
    set $P102, $P502
    box $P503, 1
    set $P101, $P503
    box $P504, 0
    set $P102, $P504
    new $P512, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P512, while64_handlers307
    push_eh $P512
  while64_test304:
    set $N501, $P101
    find_lex $P506, "self"
    nqp_decontainerize $P505, $P506
    nqp_get_sc_object $P507, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 6
    repr_get_attr_obj $P508, $P505, $P507, "@!mro"
    set $N502, $P508
    isne $I501, $N501, $N502
    set $I503, $I501
    unless $I501 goto if65_end310 
    isfalse $I502, $P102
    set $I503, $I502
  if65_end310:
    box $P513, $I503
    set $P511, $P513
    unless $I503 goto while64_done308 
  while64_redo306:
    .const 'Sub' $P509 = 'cuid_174_1346233419.189' 
    capture_lex $P509
    $P510 = $P509()
    set $P511, $P510
    goto while64_test304 
  while64_handlers307:
    .get_results ($P512)
    pop_upto_eh $P512
    getattribute $P512, $P512, 'type'
    eq $P512, .CONTROL_LOOP_NEXT, while64_test304
    eq $P512, .CONTROL_LOOP_REDO, while64_redo306
  while64_done308:
    pop_eh 
    set $P516, $P102
    if $P102 goto unless71_end324 
.annotate 'line', 884
    find_lex $P514, "$name"
    set $S503, $P514
    concat $S502, "Could not find a proto for multi ", $S503
    concat $S501, $S502, ", and proto generation is NYI"
    box $P515, $S501
    die $P515
    set $P516, $P515
  unless71_end324:
    .return ($P516) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_174_1346233419.189") :anon :lex :outer("cuid_176_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 853
    .const 'Sub' $P531 = 'cuid_173_1346233419.189' 
    capture_lex $P531 
    .const 'Sub' $P531 = 'cuid_175_1346233419.189' 
    capture_lex $P531 
    .lex "$parent", $P101 
    .lex "%meths", $P102 
    .lex "$dispatcher", $P103 
    null $P501
    set $P101, $P501
    new $P502, 'Hash'
    set $P102, $P502
    null $P503
    set $P103, $P503
    find_lex $P506, "self"
    nqp_decontainerize $P505, $P506
    nqp_get_sc_object $P507, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 6
    repr_get_attr_obj $P508, $P505, $P507, "@!mro"
    find_lex $P509, "$j"
    set $I501, $P509
    set $P504, $P508[$I501]
    unless_null $P504, fallback311
    null $P510
    set $P504, $P510
  fallback311:
    set $P101, $P504
.annotate 'line', 855
    get_how $P511, $P101
    $P512 = $P511."method_table"($P101)
    set $P102, $P512
    find_lex $P514, "$name"
    set $S501, $P514
    set $P513, $P102[$S501]
    unless_null $P513, fallback312
    null $P515
    set $P513, $P515
  fallback312:
    set $P103, $P513
    defined $I502, $P103
    box $P528, $I502
    set $P527, $P528
    unless $I502 goto if66_end314 
.annotate 'line', 857
    is_dispatcher $I503, $P103
    unless $I503 goto if67_else315 
    .const 'Sub' $P516 = 'cuid_173_1346233419.189' 
    capture_lex $P516
    $P517 = $P516()
    set $P526, $P517
    goto if67_end316
  if67_else315:
    can $I504, $P103, "is_dispatcher"
    box $P520, $I504
    set $P519, $P520
    unless $I504 goto if70_end322 
.annotate 'line', 872
    $P518 = $P103."is_dispatcher"()
    set $P519, $P518
  if70_end322:
    unless $P519 goto if69_else319 
    .const 'Sub' $P521 = 'cuid_175_1346233419.189' 
    capture_lex $P521
    $P522 = $P521()
    set $P525, $P522
    goto if69_end320
  if69_else319:
.annotate 'line', 878
    find_lex $P523, "$name"
    set $S504, $P523
    concat $S503, "Could not find a proto for multi ", $S504
    concat $S502, $S503, " (it may exist, but an only is hiding it if so)"
    box $P524, $S502
    die $P524
    set $P525, $P524
  if69_end320:
    set $P526, $P525
  if67_end316:
    set $P527, $P526
  if66_end314:
    find_lex $P529, "$j"
    set $N502, $P529
    set $N503, 1
    add $N501, $N502, $N503
    box $P530, $N501
    store_lex "$j", $P530
    .return ($P530) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_173_1346233419.189") :anon :lex :outer("cuid_174_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 860
    .lex "@new_dispatchees", $P101 
    .lex "$new_disp", $P102 
    .lex "$clone_callback", $P103 
    new $P501, 'ResizablePMCArray'
    set $P101, $P501
    null $P502
    set $P102, $P502
    null $P503
    set $P103, $P503
    find_lex $P504, "$code"
    set $P101[0], $P504
    find_lex $P506, "$dispatcher"
    create_dispatch_and_add_candidates $P505, $P506, $P101
    set $P102, $P505
    find_lex $P508, "$dispatcher"
    getprop $P507, $P508, "CLONE_CALLBACK"
    set $P103, $P507
    defined $I501, $P103
    box $P512, $I501
    set $P511, $P512
    unless $I501 goto if68_end318 
.annotate 'line', 866
.annotate 'line', 867
    find_lex $P509, "$dispatcher"
    $P510 = $P103($P509, $P102)
    set $P511, $P510
  if68_end318:
    find_lex $P514, "self"
    nqp_decontainerize $P513, $P514
    nqp_get_sc_object $P515, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 6
    repr_get_attr_obj $P516, $P513, $P515, "%!methods"
    find_lex $P517, "$name"
    set $S501, $P517
    set $P516[$S501], $P102
    box $P518, 1
    store_lex "$found", $P518
    .return ($P518) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_175_1346233419.189") :anon :lex :outer("cuid_174_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 872
    .lex "$new_disp", $P101 
    null $P501
    set $P101, $P501
.annotate 'line', 873
    find_lex $P502, "$dispatcher"
    $P503 = $P502."derive_dispatcher"()
    set $P101, $P503
.annotate 'line', 874
    find_lex $P504, "$code"
    $P505 = $P101."add_dispatchee"($P504)
    find_lex $P507, "self"
    nqp_decontainerize $P506, $P507
    nqp_get_sc_object $P508, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 6
    repr_get_attr_obj $P509, $P506, $P508, "%!methods"
    find_lex $P510, "$name"
    set $S501, $P510
    set $P509[$S501], $P101
    box $P511, 1
    store_lex "$found", $P511
    .return ($P511) 
.end
.HLL "nqp"
.namespace []
.sub "publish_type_cache" :subid("cuid_71_1346233419.189") :anon :lex :outer("cuid_98_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 985
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P520 = 'cuid_178_1346233419.189' 
    capture_lex $P520 
    .const 'Sub' $P520 = 'cuid_179_1346233419.189' 
    capture_lex $P520 
    .lex "@tc", $P101 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    new $P501, 'ResizablePMCArray'
    set $P101, $P501
    nqp_decontainerize $P505, _lex_param_0
    nqp_get_sc_object $P506, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 6
    repr_get_attr_obj $P507, $P505, $P506, "@!mro"
    set $P502, $P507
    iter $P504, $P507
    new $P509, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P509, for_handlers325
    push_eh $P509
  for_next326:
    unless $P504, for_done328
    shift $P510, $P504
  for_redo327:
    .const 'Sub' $P508 = 'cuid_178_1346233419.189' 
    capture_lex $P508
    $P502 = $P508($P510)
    goto for_next326
  for_handlers325:
    .get_results ($P509)
    pop_upto_eh $P509
    getattribute $P509, $P509, 'type'
    eq $P509, .CONTROL_LOOP_NEXT, for_next326
    eq $P509, .CONTROL_LOOP_REDO, for_redo327
  for_done328:
    pop_eh 
    nqp_decontainerize $P514, _lex_param_0
    nqp_get_sc_object $P515, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 6
    repr_get_attr_obj $P516, $P514, $P515, "@!done"
    set $P511, $P516
    iter $P513, $P516
    new $P518, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P518, for_handlers329
    push_eh $P518
  for_next330:
    unless $P513, for_done332
    shift $P519, $P513
  for_redo331:
    .const 'Sub' $P517 = 'cuid_179_1346233419.189' 
    capture_lex $P517
    $P511 = $P517($P519)
    goto for_next330
  for_handlers329:
    .get_results ($P518)
    pop_upto_eh $P518
    getattribute $P518, $P518, 'type'
    eq $P518, .CONTROL_LOOP_NEXT, for_next330
    eq $P518, .CONTROL_LOOP_REDO, for_redo331
  for_done332:
    pop_eh 
    publish_type_check_cache _lex_param_1, $P101
    .return (_lex_param_1) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_178_1346233419.189") :anon :lex :outer("cuid_71_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 987
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P501, "@tc"
    $P502 = $P501."push"(_lex_param_0)
    .return ($P502) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_179_1346233419.189") :anon :lex :outer("cuid_71_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 988
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P501, "@tc"
    $P502 = $P501."push"(_lex_param_0)
    .return ($P502) 
.end
.HLL "nqp"
.namespace []
.sub "publish_method_cache" :subid("cuid_72_1346233419.189") :anon :lex :outer("cuid_98_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 992
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P514 = 'cuid_181_1346233419.189' 
    capture_lex $P514 
    .lex "%cache", $P101 
    .lex "@mro_reversed", $P102 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    new $P501, 'Hash'
    set $P101, $P501
    new $P502, 'ResizablePMCArray'
    set $P102, $P502
    nqp_decontainerize $P504, _lex_param_0
    nqp_get_sc_object $P505, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 6
    repr_get_attr_obj $P506, $P504, $P505, "@!mro"
    clone $P503, $P506
    set $P102, $P503
.annotate 'line', 997
    $P507 = $P102."reverse"()
    set $P508, $P102
    iter $P510, $P102
    new $P512, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P512, for_handlers337
    push_eh $P512
  for_next338:
    unless $P510, for_done340
    shift $P513, $P510
  for_redo339:
    .const 'Sub' $P511 = 'cuid_181_1346233419.189' 
    capture_lex $P511
    $P508 = $P511($P513)
    goto for_next338
  for_handlers337:
    .get_results ($P512)
    pop_upto_eh $P512
    getattribute $P512, $P512, 'type'
    eq $P512, .CONTROL_LOOP_NEXT, for_next338
    eq $P512, .CONTROL_LOOP_REDO, for_redo339
  for_done340:
    pop_eh 
    publish_method_cache _lex_param_1, $P101
    set_method_cache_authoritativeness _lex_param_1, 1
    .return (_lex_param_1) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_181_1346233419.189") :anon :lex :outer("cuid_72_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 998
    .param pmc _lex_param_0 
    .const 'Sub' $P509 = 'cuid_180_1346233419.189' 
    capture_lex $P509 
    .lex "$_", _lex_param_0 
.annotate 'line', 999
    get_how $P504, _lex_param_0
    $P505 = $P504."method_table"(_lex_param_0)
    set $P501, $P505
    iter $P503, $P505
    new $P507, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P507, for_handlers333
    push_eh $P507
  for_next334:
    unless $P503, for_done336
    shift $P508, $P503
  for_redo335:
    .const 'Sub' $P506 = 'cuid_180_1346233419.189' 
    capture_lex $P506
    $P501 = $P506($P508)
    goto for_next334
  for_handlers333:
    .get_results ($P507)
    pop_upto_eh $P507
    getattribute $P507, $P507, 'type'
    eq $P507, .CONTROL_LOOP_NEXT, for_next334
    eq $P507, .CONTROL_LOOP_REDO, for_redo335
  for_done336:
    pop_eh 
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_180_1346233419.189") :anon :lex :outer("cuid_181_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 999
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P501, "%cache"
.annotate 'line', 1000
    $P502 = _lex_param_0."key"()
    set $S501, $P502
    $P503 = _lex_param_0."value"()
    set $P501[$S501], $P503
    .return ($P503) 
.end
.HLL "nqp"
.namespace []
.sub "publish_boolification_spec" :subid("cuid_73_1346233419.189") :anon :lex :outer("cuid_98_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1007
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$bool_meth", $P101 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    null $P501
    set $P101, $P501
.annotate 'line', 1008
    nqp_decontainerize $P502, _lex_param_0
    $P503 = $P502."find_method"(_lex_param_1, "Bool")
    set $P101, $P503
    defined $I501, $P101
    unless $I501 goto if72_else341 
.annotate 'line', 1009
    set_boolification_spec _lex_param_1, 0, $P101
    set $P505, _lex_param_1
    goto if72_end342
  if72_else341:
.annotate 'line', 1012
    null $P504
    set_boolification_spec _lex_param_1, 5, $P504
    set $P505, _lex_param_1
  if72_end342:
    .return ($P505) 
.end
.HLL "nqp"
.namespace []
.sub "publish_parrot_vtable_mapping" :subid("cuid_74_1346233419.189") :anon :lex :outer("cuid_98_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1017
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P514 = 'cuid_183_1346233419.189' 
    capture_lex $P514 
    .lex "%mapping", $P101 
    .lex "%seen_handlers", $P102 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    new $P501, 'Hash'
    set $P101, $P501
    new $P502, 'Hash'
    set $P102, $P502
    nqp_decontainerize $P506, _lex_param_0
    nqp_get_sc_object $P507, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 6
    repr_get_attr_obj $P508, $P506, $P507, "@!mro"
    set $P503, $P508
    iter $P505, $P508
    new $P510, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P510, for_handlers355
    push_eh $P510
  for_next356:
    unless $P505, for_done358
    shift $P511, $P505
  for_redo357:
    .const 'Sub' $P509 = 'cuid_183_1346233419.189' 
    capture_lex $P509
    $P503 = $P509($P511)
    goto for_next356
  for_handlers355:
    .get_results ($P510)
    pop_upto_eh $P510
    getattribute $P510, $P510, 'type'
    eq $P510, .CONTROL_LOOP_NEXT, for_next356
    eq $P510, .CONTROL_LOOP_REDO, for_redo357
  for_done358:
    pop_eh 
    set $N501, $P101
    box $P513, $N501
    set $P512, $P513
    unless $N501 goto if75_end360 
.annotate 'line', 1031
    stable_publish_vtable_mapping _lex_param_1, $P101
    set $P512, _lex_param_1
  if75_end360:
    .return ($P512) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_183_1346233419.189") :anon :lex :outer("cuid_74_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1020
    .param pmc _lex_param_0 
    .const 'Sub' $P517 = 'cuid_182_1346233419.189' 
    capture_lex $P517 
    .const 'Sub' $P517 = 'cuid_184_1346233419.189' 
    capture_lex $P517 
    .lex "$_", _lex_param_0 
.annotate 'line', 1021
    get_how $P504, _lex_param_0
    $P505 = $P504."parrot_vtable_handler_mappings"(_lex_param_0, 1 :named("local"))
    set $P501, $P505
    iter $P503, $P505
    new $P507, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P507, for_handlers343
    push_eh $P507
  for_next344:
    unless $P503, for_done346
    shift $P508, $P503
  for_redo345:
    .const 'Sub' $P506 = 'cuid_182_1346233419.189' 
    capture_lex $P506
    $P501 = $P506($P508)
    goto for_next344
  for_handlers343:
    .get_results ($P507)
    pop_upto_eh $P507
    getattribute $P507, $P507, 'type'
    eq $P507, .CONTROL_LOOP_NEXT, for_next344
    eq $P507, .CONTROL_LOOP_REDO, for_redo345
  for_done346:
    pop_eh 
.annotate 'line', 1024
    get_how $P512, _lex_param_0
    $P513 = $P512."parrot_vtable_mappings"(_lex_param_0, 1 :named("local"))
    set $P509, $P513
    iter $P511, $P513
    new $P515, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P515, for_handlers351
    push_eh $P515
  for_next352:
    unless $P511, for_done354
    shift $P516, $P511
  for_redo353:
    .const 'Sub' $P514 = 'cuid_184_1346233419.189' 
    capture_lex $P514
    $P509 = $P514($P516)
    goto for_next352
  for_handlers351:
    .get_results ($P515)
    pop_upto_eh $P515
    getattribute $P515, $P515, 'type'
    eq $P515, .CONTROL_LOOP_NEXT, for_next352
    eq $P515, .CONTROL_LOOP_REDO, for_redo353
  for_done354:
    pop_eh 
    .return ($P509) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_182_1346233419.189") :anon :lex :outer("cuid_183_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1021
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P501, "%seen_handlers"
.annotate 'line', 1022
    $P502 = _lex_param_0."key"()
    set $S501, $P502
    box $P503, 1
    set $P501[$S501], $P503
    .return ($P503) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_184_1346233419.189") :anon :lex :outer("cuid_183_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1024
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P501, "%mapping"
.annotate 'line', 1025
    $P502 = _lex_param_0."key"()
    set $S501, $P502
    exists $I501, $P501[$S501]
    set $I503, $I501
    if $I501 goto unless74_end350 
    find_lex $P503, "%seen_handlers"
.annotate 'line', 1026
    $P504 = _lex_param_0."key"()
    set $S502, $P504
    exists $I502, $P503[$S502]
    set $I503, $I502
  unless74_end350:
    box $P509, $I503
    set $P508, $P509
    if $I503 goto unless73_end348 
    find_lex $P505, "%mapping"
.annotate 'line', 1027
    $P506 = _lex_param_0."key"()
    set $S503, $P506
    $P507 = _lex_param_0."value"()
    set $P505[$S503], $P507
    set $P508, $P507
  unless73_end348:
    .return ($P508) 
.end
.HLL "nqp"
.namespace []
.sub "publish_parrot_vtablee_handler_mapping" :subid("cuid_75_1346233419.189") :anon :lex :outer("cuid_98_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1036
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P516 = 'cuid_186_1346233419.189' 
    capture_lex $P516 
    .lex "%mapping", $P101 
    .lex "@mro_reversed", $P102 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    new $P501, 'Hash'
    set $P101, $P501
    new $P502, 'ResizablePMCArray'
    set $P102, $P502
    nqp_decontainerize $P504, _lex_param_0
    nqp_get_sc_object $P505, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 6
    repr_get_attr_obj $P506, $P504, $P505, "@!mro"
    clone $P503, $P506
    set $P102, $P503
.annotate 'line', 1039
    $P507 = $P102."reverse"()
    set $P508, $P102
    iter $P510, $P102
    new $P512, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P512, for_handlers365
    push_eh $P512
  for_next366:
    unless $P510, for_done368
    shift $P513, $P510
  for_redo367:
    .const 'Sub' $P511 = 'cuid_186_1346233419.189' 
    capture_lex $P511
    $P508 = $P511($P513)
    goto for_next366
  for_handlers365:
    .get_results ($P512)
    pop_upto_eh $P512
    getattribute $P512, $P512, 'type'
    eq $P512, .CONTROL_LOOP_NEXT, for_next366
    eq $P512, .CONTROL_LOOP_REDO, for_redo367
  for_done368:
    pop_eh 
    set $N501, $P101
    box $P515, $N501
    set $P514, $P515
    unless $N501 goto if76_end370 
.annotate 'line', 1045
    stable_publish_vtable_handler_mapping _lex_param_1, $P101
    set $P514, _lex_param_1
  if76_end370:
    .return ($P514) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_186_1346233419.189") :anon :lex :outer("cuid_75_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1040
    .param pmc _lex_param_0 
    .const 'Sub' $P509 = 'cuid_185_1346233419.189' 
    capture_lex $P509 
    .lex "$_", _lex_param_0 
.annotate 'line', 1041
    get_how $P504, _lex_param_0
    $P505 = $P504."parrot_vtable_handler_mappings"(_lex_param_0, 1 :named("local"))
    set $P501, $P505
    iter $P503, $P505
    new $P507, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P507, for_handlers361
    push_eh $P507
  for_next362:
    unless $P503, for_done364
    shift $P508, $P503
  for_redo363:
    .const 'Sub' $P506 = 'cuid_185_1346233419.189' 
    capture_lex $P506
    $P501 = $P506($P508)
    goto for_next362
  for_handlers361:
    .get_results ($P507)
    pop_upto_eh $P507
    getattribute $P507, $P507, 'type'
    eq $P507, .CONTROL_LOOP_NEXT, for_next362
    eq $P507, .CONTROL_LOOP_REDO, for_redo363
  for_done364:
    pop_eh 
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_185_1346233419.189") :anon :lex :outer("cuid_186_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1041
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P501, "%mapping"
.annotate 'line', 1042
    $P502 = _lex_param_0."key"()
    set $S501, $P502
    $P503 = _lex_param_0."value"()
    set $P501[$S501], $P503
    .return ($P503) 
.end
.HLL "nqp"
.namespace []
.sub "create_BUILDPLAN" :subid("cuid_76_1346233419.189") :anon :lex :outer("cuid_98_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1059
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P517 = 'cuid_188_1346233419.189' 
    capture_lex $P517 
    .lex "@all_plan", $P101 
    .lex "@plan", $P102 
    .lex "@mro", $P103 
    .lex "$i", $P104 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    new $P501, 'ResizablePMCArray'
    set $P101, $P501
    new $P502, 'ResizablePMCArray'
    set $P102, $P502
    new $P503, 'ResizablePMCArray'
    set $P103, $P503
    null $P504
    set $P104, $P504
.annotate 'line', 1063
    nqp_decontainerize $P505, _lex_param_0
    $P506 = $P505."mro"(_lex_param_1)
    set $P103, $P506
    set $N501, $P103
    box $P507, $N501
    set $P104, $P507
    new $P511, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P511, while77_handlers374
    push_eh $P511
  while77_test371:
    set $N502, $P104
    set $N503, 0
    isgt $I501, $N502, $N503
    box $P512, $I501
    set $P510, $P512
    unless $I501 goto while77_done375 
  while77_redo373:
    .const 'Sub' $P508 = 'cuid_188_1346233419.189' 
    capture_lex $P508
    $P509 = $P508()
    set $P510, $P509
    goto while77_test371 
  while77_handlers374:
    .get_results ($P511)
    pop_upto_eh $P511
    getattribute $P511, $P511, 'type'
    eq $P511, .CONTROL_LOOP_NEXT, while77_test371
    eq $P511, .CONTROL_LOOP_REDO, while77_redo373
  while77_done375:
    pop_eh 
    nqp_decontainerize $P513, _lex_param_0
    nqp_get_sc_object $P514, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 6
    repr_bind_attr_obj $P513, $P514, "@!BUILDPLAN", $P102
    nqp_decontainerize $P515, _lex_param_0
    nqp_get_sc_object $P516, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 6
    repr_bind_attr_obj $P515, $P516, "@!BUILDALLPLAN", $P101
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_188_1346233419.189") :anon :lex :outer("cuid_76_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1065
    .const 'Sub' $P529 = 'cuid_187_1346233419.189' 
    capture_lex $P529 
    .const 'Sub' $P529 = 'cuid_189_1346233419.189' 
    capture_lex $P529 
    .const 'Sub' $P529 = 'cuid_192_1346233419.189' 
    capture_lex $P529 
    .lex "$class", $P101 
    .lex "@attrs", $P102 
    .lex "$build", $P103 
    null $P501
    set $P101, $P501
    new $P502, 'ResizablePMCArray'
    set $P102, $P502
    null $P503
    set $P103, $P503
    find_lex $P504, "$i"
    set $N502, $P504
    set $N503, 1
    sub $N501, $N502, $N503
    box $P505, $N501
    store_lex "$i", $P505
    find_lex $P507, "@mro"
    find_lex $P508, "$i"
    set $I501, $P508
    set $P506, $P507[$I501]
    unless_null $P506, fallback376
    null $P509
    set $P506, $P509
  fallback376:
    set $P101, $P506
.annotate 'line', 1069
    get_how $P510, $P101
    $P511 = $P510."attributes"($P101, 1 :named("local"))
    set $P102, $P511
.annotate 'line', 1072
    get_how $P512, $P101
    $P513 = $P512."find_method"($P101, "BUILD", 1 :named("no_fallback"))
    set $P103, $P513
    defined $I502, $P103
    unless $I502 goto if78_else377 
    .const 'Sub' $P514 = 'cuid_187_1346233419.189' 
    capture_lex $P514
    $P515 = $P514()
    set $P522, $P515
    goto if78_end378
  if78_else377:
.annotate 'line', 1081
    set $P516, $P102
    iter $P518, $P102
    new $P520, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P520, for_handlers387
    push_eh $P520
  for_next388:
    unless $P518, for_done390
    shift $P521, $P518
  for_redo389:
    .const 'Sub' $P519 = 'cuid_189_1346233419.189' 
    capture_lex $P519
    $P516 = $P519($P521)
    goto for_next388
  for_handlers387:
    .get_results ($P520)
    pop_upto_eh $P520
    getattribute $P520, $P520, 'type'
    eq $P520, .CONTROL_LOOP_NEXT, for_next388
    eq $P520, .CONTROL_LOOP_REDO, for_redo389
  for_done390:
    pop_eh 
    set $P522, $P516
  if78_end378:
    set $P523, $P102
    iter $P525, $P102
    new $P527, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P527, for_handlers397
    push_eh $P527
  for_next398:
    unless $P525, for_done400
    shift $P528, $P525
  for_redo399:
    .const 'Sub' $P526 = 'cuid_192_1346233419.189' 
    capture_lex $P526
    $P523 = $P526($P528)
    goto for_next398
  for_handlers397:
    .get_results ($P527)
    pop_upto_eh $P527
    getattribute $P527, $P527, 'type'
    eq $P527, .CONTROL_LOOP_NEXT, for_next398
    eq $P527, .CONTROL_LOOP_REDO, for_redo399
  for_done400:
    pop_eh 
    .return ($P523) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_187_1346233419.189") :anon :lex :outer("cuid_188_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1073
    .lex "$entry", $P101 
    null $P501
    set $P101, $P501
    new $P502, 'ResizablePMCArray'
    box $P503, 0
    push $P502, $P503
    find_lex $P504, "$build"
    push $P502, $P504
    set $P101, $P502
    find_lex $P505, "@all_plan"
    find_lex $P506, "@all_plan"
    set $N501, $P506
    set $I501, $N501
    set $P505[$I501], $P101
    find_lex $P507, "$i"
    set $N502, $P507
    set $N503, 0
    iseq $I502, $N502, $N503
    box $P511, $I502
    set $P510, $P511
    unless $I502 goto if79_end380 
.annotate 'line', 1077
    find_lex $P508, "@plan"
    find_lex $P509, "@plan"
    set $N504, $P509
    set $I503, $N504
    set $P508[$I503], $P101
    set $P510, $P101
  if79_end380:
    .return ($P510) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_189_1346233419.189") :anon :lex :outer("cuid_188_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1085
    .param pmc _lex_param_0 
    .lex "$attr_name", $P101 
    .lex "$name", $P102 
    .lex "$sigil", $P103 
    .lex "$sigop", $P104 
    .lex "$entry", $P105 
    .lex "$_", _lex_param_0 
    null $P501
    set $P101, $P501
    null $P502
    set $P102, $P502
    null $P503
    set $P103, $P503
    null $P504
    set $P104, $P504
    null $P505
    set $P105, $P505
.annotate 'line', 1086
    $P506 = _lex_param_0."name"()
    set $P101, $P506
    set $S502, $P101
    substr $S501, $S502, 2
    box $P507, $S501
    set $P102, $P507
    set $S504, $P101
    substr $S503, $S504, 0, 1
    box $P508, $S503
    set $P103, $P508
    set $S505, $P103
    iseq $I501, $S505, "@"
    unless $I501 goto if80_else381 
    set $I504, 2
    goto if80_end382
  if80_else381:
    set $S506, $P103
    iseq $I502, $S506, "%"
    unless $I502 goto if81_else383 
    set $I503, 3
    goto if81_end384
  if81_else383:
    set $I503, 1
  if81_end384:
    set $I504, $I503
  if80_end382:
    box $P509, $I504
    set $P104, $P509
    new $P510, 'ResizablePMCArray'
    box $P511, 1
    push $P510, $P511
    find_lex $P512, "$class"
    push $P510, $P512
    push $P510, $P102
    push $P510, $P101
    set $P105, $P510
    find_lex $P513, "@all_plan"
    find_lex $P514, "@all_plan"
    set $N501, $P514
    set $I505, $N501
    set $P513[$I505], $P105
    find_lex $P515, "$i"
    set $N502, $P515
    set $N503, 0
    iseq $I506, $N502, $N503
    box $P519, $I506
    set $P518, $P519
    unless $I506 goto if82_end386 
.annotate 'line', 1092
    find_lex $P516, "@plan"
    find_lex $P517, "@plan"
    set $N504, $P517
    set $I507, $N504
    set $P516[$I507], $P105
    set $P518, $P105
  if82_end386:
    .return ($P518) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_192_1346233419.189") :anon :lex :outer("cuid_188_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1099
    .param pmc _lex_param_0 
    .const 'Sub' $P505 = 'cuid_191_1346233419.189' 
    capture_lex $P505 
    .lex "$_", _lex_param_0 
    can $I501, _lex_param_0, "build"
    box $P504, $I501
    set $P503, $P504
    unless $I501 goto if83_end392 
    .const 'Sub' $P501 = 'cuid_191_1346233419.189' 
    capture_lex $P501
    $P502 = $P501()
    set $P503, $P502
  if83_end392:
    .return ($P503) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_191_1346233419.189") :anon :lex :outer("cuid_192_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1100
    .const 'Sub' $P508 = 'cuid_190_1346233419.189' 
    capture_lex $P508 
    .lex "$default", $P101 
    null $P501
    set $P101, $P501
.annotate 'line', 1101
    find_lex $P502, "$_"
    $P503 = $P502."build"()
    set $P101, $P503
    defined $I501, $P101
    box $P507, $I501
    set $P506, $P507
    unless $I501 goto if84_end394 
    .const 'Sub' $P504 = 'cuid_190_1346233419.189' 
    capture_lex $P504
    $P505 = $P504()
    set $P506, $P505
  if84_end394:
    .return ($P506) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_190_1346233419.189") :anon :lex :outer("cuid_191_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1102
    .lex "$entry", $P101 
    null $P501
    set $P101, $P501
    new $P502, 'ResizablePMCArray'
    box $P503, 4
    push $P502, $P503
    find_lex $P504, "$class"
    push $P502, $P504
.annotate 'line', 1103
    find_lex $P505, "$_"
    $P506 = $P505."name"()
    push $P502, $P506
    find_lex $P507, "$default"
    push $P502, $P507
    set $P101, $P502
    find_lex $P508, "@all_plan"
    find_lex $P509, "@all_plan"
    set $N501, $P509
    set $I501, $N501
    set $P508[$I501], $P101
    find_lex $P510, "$i"
    set $N502, $P510
    set $N503, 0
    iseq $I502, $N502, $N503
    box $P514, $I502
    set $P513, $P514
    unless $I502 goto if85_end396 
.annotate 'line', 1105
    find_lex $P511, "@plan"
    find_lex $P512, "@plan"
    set $N504, $P512
    set $I503, $N504
    set $P511[$I503], $P101
    set $P513, $P101
  if85_end396:
    .return ($P513) 
.end
.HLL "nqp"
.namespace []
.sub "BUILDPLAN" :subid("cuid_77_1346233419.189") :anon :lex :outer("cuid_98_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1116
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 6
    repr_get_attr_obj $P503, $P501, $P502, "@!BUILDPLAN"
    .return ($P503) 
.end
.HLL "nqp"
.namespace []
.sub "BUILDALLPLAN" :subid("cuid_78_1346233419.189") :anon :lex :outer("cuid_98_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1120
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 6
    repr_get_attr_obj $P503, $P501, $P502, "@!BUILDALLPLAN"
    .return ($P503) 
.end
.HLL "nqp"
.namespace []
.sub "parents" :subid("cuid_79_1346233419.189") :anon :lex :outer("cuid_98_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1128
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :named("local") :optional 
    .param int haz_param_19 :opt_flag 
    if haz_param_19, default403
    box $P508, 0
    set _lex_param_2, $P508
  default403:
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$local", _lex_param_2 
    unless _lex_param_2 goto if86_else401 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 6
    repr_get_attr_obj $P503, $P501, $P502, "@!parents"
    set $P507, $P503
    goto if86_end402
  if86_else401:
    nqp_decontainerize $P504, _lex_param_0
    nqp_get_sc_object $P505, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 6
    repr_get_attr_obj $P506, $P504, $P505, "@!mro"
    set $P507, $P506
  if86_end402:
    .return ($P507) 
.end
.HLL "nqp"
.namespace []
.sub "mro" :subid("cuid_80_1346233419.189") :anon :lex :outer("cuid_98_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1132
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 6
    repr_get_attr_obj $P503, $P501, $P502, "@!mro"
    .return ($P503) 
.end
.HLL "nqp"
.namespace []
.sub "roles" :subid("cuid_81_1346233419.189") :anon :lex :outer("cuid_98_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1136
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :named("local") 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$local", _lex_param_2 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 6
    repr_get_attr_obj $P503, $P501, $P502, "@!roles"
    .return ($P503) 
.end
.HLL "nqp"
.namespace []
.sub "methods" :subid("cuid_82_1346233419.189") :anon :lex :outer("cuid_98_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1140
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :named("local") :optional 
    .param int haz_param_20 :opt_flag 
    .const 'Sub' $P508 = 'cuid_195_1346233419.189' 
    capture_lex $P508 
    if haz_param_20, default414
    box $P507, 0
    set _lex_param_2, $P507
  default414:
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$local", _lex_param_2 
    unless _lex_param_2 goto if87_else404 
.annotate 'line', 1141
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 6
    repr_get_attr_obj $P503, $P501, $P502, "@!method_order"
    set $P506, $P503
    goto if87_end405
  if87_else404:
    .const 'Sub' $P504 = 'cuid_195_1346233419.189' 
    capture_lex $P504
    $P505 = $P504()
    set $P506, $P505
  if87_end405:
    .return ($P506) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_195_1346233419.189") :anon :lex :outer("cuid_82_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1144
    .const 'Sub' $P512 = 'cuid_194_1346233419.189' 
    capture_lex $P512 
    .lex "@meths", $P101 
    new $P501, 'ResizablePMCArray'
    set $P101, $P501
    find_lex $P506, "self"
    nqp_decontainerize $P505, $P506
    nqp_get_sc_object $P507, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 6
    repr_get_attr_obj $P508, $P505, $P507, "@!mro"
    set $P502, $P508
    iter $P504, $P508
    new $P510, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P510, for_handlers410
    push_eh $P510
  for_next411:
    unless $P504, for_done413
    shift $P511, $P504
  for_redo412:
    .const 'Sub' $P509 = 'cuid_194_1346233419.189' 
    capture_lex $P509
    $P502 = $P509($P511)
    goto for_next411
  for_handlers410:
    .get_results ($P510)
    pop_upto_eh $P510
    getattribute $P510, $P510, 'type'
    eq $P510, .CONTROL_LOOP_NEXT, for_next411
    eq $P510, .CONTROL_LOOP_REDO, for_redo412
  for_done413:
    pop_eh 
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_194_1346233419.189") :anon :lex :outer("cuid_195_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1146
    .param pmc _lex_param_0 
    .const 'Sub' $P509 = 'cuid_193_1346233419.189' 
    capture_lex $P509 
    .lex "$_", _lex_param_0 
.annotate 'line', 1147
    get_how $P504, _lex_param_0
    $P505 = $P504."methods"(_lex_param_0, 1 :named("local"))
    set $P501, $P505
    iter $P503, $P505
    new $P507, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P507, for_handlers406
    push_eh $P507
  for_next407:
    unless $P503, for_done409
    shift $P508, $P503
  for_redo408:
    .const 'Sub' $P506 = 'cuid_193_1346233419.189' 
    capture_lex $P506
    $P501 = $P506($P508)
    goto for_next407
  for_handlers406:
    .get_results ($P507)
    pop_upto_eh $P507
    getattribute $P507, $P507, 'type'
    eq $P507, .CONTROL_LOOP_NEXT, for_next407
    eq $P507, .CONTROL_LOOP_REDO, for_redo408
  for_done409:
    pop_eh 
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_193_1346233419.189") :anon :lex :outer("cuid_194_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1147
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 1148
    find_lex $P501, "@meths"
    $P502 = $P501."push"(_lex_param_0)
    .return ($P502) 
.end
.HLL "nqp"
.namespace []
.sub "method_table" :subid("cuid_83_1346233419.189") :anon :lex :outer("cuid_98_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1155
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 6
    repr_get_attr_obj $P503, $P501, $P502, "%!methods"
    .return ($P503) 
.end
.HLL "nqp"
.namespace []
.sub "name" :subid("cuid_84_1346233419.189") :anon :lex :outer("cuid_98_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1159
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 6
    repr_get_attr_obj $P503, $P501, $P502, "$!name"
    .return ($P503) 
.end
.HLL "nqp"
.namespace []
.sub "traced" :subid("cuid_85_1346233419.189") :anon :lex :outer("cuid_98_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1163
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 6
    repr_get_attr_obj $P503, $P501, $P502, "$!trace"
    .return ($P503) 
.end
.HLL "nqp"
.namespace []
.sub "trace_depth" :subid("cuid_86_1346233419.189") :anon :lex :outer("cuid_98_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1167
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 6
    repr_get_attr_obj $P503, $P501, $P502, "$!trace_depth"
    .return ($P503) 
.end
.HLL "nqp"
.namespace []
.sub "attributes" :subid("cuid_87_1346233419.189") :anon :lex :outer("cuid_98_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1171
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :named("local") :optional 
    .param int haz_param_21 :opt_flag 
    .const 'Sub' $P522 = 'cuid_196_1346233419.189' 
    capture_lex $P522 
    .const 'Sub' $P522 = 'cuid_198_1346233419.189' 
    capture_lex $P522 
    if haz_param_21, default429
    null $P521
    set _lex_param_2, $P521
  default429:
    .lex "@attrs", $P101 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$local", _lex_param_2 
    new $P501, 'ResizablePMCArray'
    set $P101, $P501
    unless _lex_param_2 goto if88_else415 
.annotate 'line', 1173
    nqp_decontainerize $P505, _lex_param_0
    nqp_get_sc_object $P506, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 6
    repr_get_attr_obj $P507, $P505, $P506, "%!attributes"
    set $P502, $P507
    iter $P504, $P507
    new $P509, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P509, for_handlers417
    push_eh $P509
  for_next418:
    unless $P504, for_done420
    shift $P510, $P504
  for_redo419:
    .const 'Sub' $P508 = 'cuid_196_1346233419.189' 
    capture_lex $P508
    $P502 = $P508($P510)
    goto for_next418
  for_handlers417:
    .get_results ($P509)
    pop_upto_eh $P509
    getattribute $P509, $P509, 'type'
    eq $P509, .CONTROL_LOOP_NEXT, for_next418
    eq $P509, .CONTROL_LOOP_REDO, for_redo419
  for_done420:
    pop_eh 
    set $P520, $P502
    goto if88_end416
  if88_else415:
.annotate 'line', 1178
    nqp_decontainerize $P514, _lex_param_0
    nqp_get_sc_object $P515, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 6
    repr_get_attr_obj $P516, $P514, $P515, "@!mro"
    set $P511, $P516
    iter $P513, $P516
    new $P518, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P518, for_handlers425
    push_eh $P518
  for_next426:
    unless $P513, for_done428
    shift $P519, $P513
  for_redo427:
    .const 'Sub' $P517 = 'cuid_198_1346233419.189' 
    capture_lex $P517
    $P511 = $P517($P519)
    goto for_next426
  for_handlers425:
    .get_results ($P518)
    pop_upto_eh $P518
    getattribute $P518, $P518, 'type'
    eq $P518, .CONTROL_LOOP_NEXT, for_next426
    eq $P518, .CONTROL_LOOP_REDO, for_redo427
  for_done428:
    pop_eh 
    set $P520, $P511
  if88_end416:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_196_1346233419.189") :anon :lex :outer("cuid_87_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1174
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 1175
    find_lex $P501, "@attrs"
    $P502 = _lex_param_0."value"()
    $P503 = $P501."push"($P502)
    .return ($P503) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_198_1346233419.189") :anon :lex :outer("cuid_87_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1179
    .param pmc _lex_param_0 
    .const 'Sub' $P509 = 'cuid_197_1346233419.189' 
    capture_lex $P509 
    .lex "$_", _lex_param_0 
.annotate 'line', 1180
    get_how $P504, _lex_param_0
    $P505 = $P504."attributes"(_lex_param_0, 1 :named("local"))
    set $P501, $P505
    iter $P503, $P505
    new $P507, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P507, for_handlers421
    push_eh $P507
  for_next422:
    unless $P503, for_done424
    shift $P508, $P503
  for_redo423:
    .const 'Sub' $P506 = 'cuid_197_1346233419.189' 
    capture_lex $P506
    $P501 = $P506($P508)
    goto for_next422
  for_handlers421:
    .get_results ($P507)
    pop_upto_eh $P507
    getattribute $P507, $P507, 'type'
    eq $P507, .CONTROL_LOOP_NEXT, for_next422
    eq $P507, .CONTROL_LOOP_REDO, for_redo423
  for_done424:
    pop_eh 
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_197_1346233419.189") :anon :lex :outer("cuid_198_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1180
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 1181
    find_lex $P501, "@attrs"
    $P502 = $P501."push"(_lex_param_0)
    .return ($P502) 
.end
.HLL "nqp"
.namespace []
.sub "parrot_vtable_mappings" :subid("cuid_88_1346233419.189") :anon :lex :outer("cuid_98_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1188
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :named("local") 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$local", _lex_param_2 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 6
    repr_get_attr_obj $P503, $P501, $P502, "%!parrot_vtable_mapping"
    .return ($P503) 
.end
.HLL "nqp"
.namespace []
.sub "parrot_vtable_handler_mappings" :subid("cuid_89_1346233419.189") :anon :lex :outer("cuid_98_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1192
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :named("local") 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$local", _lex_param_2 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 6
    repr_get_attr_obj $P503, $P501, $P502, "%!parrot_vtable_handler_mapping"
    .return ($P503) 
.end
.HLL "nqp"
.namespace []
.sub "isa" :subid("cuid_90_1346233419.189") :anon :lex :outer("cuid_98_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1200
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "$check-class", $P101 
    .lex "$i", $P102 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$check", _lex_param_2 
    null $P501
    set $P101, $P501
    null $P502
    set $P102, $P502
    root_new $P103, ['parrot';'Continuation']
    set_label $P103, lexotic_430
    .lex "RETURN", $P103
    get_what $P503, _lex_param_2
    set $P101, $P503
    nqp_decontainerize $P504, _lex_param_0
    nqp_get_sc_object $P505, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 6
    repr_get_attr_obj $P506, $P504, $P505, "@!mro"
    set $N501, $P506
    box $P507, $N501
    set $P102, $P507
    new $P519, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P519, while89_handlers435
    push_eh $P519
  while89_test432:
    set $N502, $P102
    set $N503, 0
    isgt $I501, $N502, $N503
    box $P520, $I501
    set $P518, $P520
    unless $I501 goto while89_done436 
  while89_redo434:
.annotate 'line', 1203
    set $N505, $P102
    set $N506, 1
    sub $N504, $N505, $N506
    box $P508, $N504
    set $P102, $P508
    nqp_decontainerize $P510, _lex_param_0
    nqp_get_sc_object $P511, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 6
    repr_get_attr_obj $P512, $P510, $P511, "@!mro"
    set $I504, $P102
    set $P509, $P512[$I504]
    unless_null $P509, fallback439
    null $P513
    set $P509, $P513
  fallback439:
    get_id $I503, $P509
    get_id $I505, $P101
    iseq $I502, $I503, $I505
    box $P517, $I502
    set $P516, $P517
    unless $I502 goto if90_end438 
.annotate 'line', 1205
    find_lex $P514, "RETURN"
    $P515 = $P514(1)
    set $P516, $P515
  if90_end438:
    set $P518, $P516
    goto while89_test432 
  while89_handlers435:
    .get_results ($P519)
    pop_upto_eh $P519
    getattribute $P519, $P519, 'type'
    eq $P519, .CONTROL_LOOP_NEXT, while89_test432
    eq $P519, .CONTROL_LOOP_REDO, while89_redo434
  while89_done436:
    pop_eh 
    find_lex $P521, "RETURN"
    $P522 = $P521(0)
    goto lexotic_431
  lexotic_430:
    .get_results ($P522)
  lexotic_431:
    .return ($P522) 
.end
.HLL "nqp"
.namespace []
.sub "does" :subid("cuid_91_1346233419.189") :anon :lex :outer("cuid_98_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1212
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "$i", $P101 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$check", _lex_param_2 
    null $P501
    set $P101, $P501
    root_new $P102, ['parrot';'Continuation']
    set_label $P102, lexotic_440
    .lex "RETURN", $P102
    nqp_decontainerize $P502, _lex_param_0
    nqp_get_sc_object $P503, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 6
    repr_get_attr_obj $P504, $P502, $P503, "@!done"
    set $N501, $P504
    box $P505, $N501
    set $P101, $P505
    new $P517, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P517, while91_handlers445
    push_eh $P517
  while91_test442:
    set $N502, $P101
    set $N503, 0
    isgt $I501, $N502, $N503
    box $P518, $I501
    set $P516, $P518
    unless $I501 goto while91_done446 
  while91_redo444:
.annotate 'line', 1214
    set $N505, $P101
    set $N506, 1
    sub $N504, $N505, $N506
    box $P506, $N504
    set $P101, $P506
    nqp_decontainerize $P508, _lex_param_0
    nqp_get_sc_object $P509, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 6
    repr_get_attr_obj $P510, $P508, $P509, "@!done"
    set $I504, $P101
    set $P507, $P510[$I504]
    unless_null $P507, fallback449
    null $P511
    set $P507, $P511
  fallback449:
    get_id $I503, $P507
    get_id $I505, _lex_param_2
    iseq $I502, $I503, $I505
    box $P515, $I502
    set $P514, $P515
    unless $I502 goto if92_end448 
.annotate 'line', 1216
    find_lex $P512, "RETURN"
    $P513 = $P512(1)
    set $P514, $P513
  if92_end448:
    set $P516, $P514
    goto while91_test442 
  while91_handlers445:
    .get_results ($P517)
    pop_upto_eh $P517
    getattribute $P517, $P517, 'type'
    eq $P517, .CONTROL_LOOP_NEXT, while91_test442
    eq $P517, .CONTROL_LOOP_REDO, while91_redo444
  while91_done446:
    pop_eh 
    find_lex $P519, "RETURN"
    $P520 = $P519(0)
    goto lexotic_441
  lexotic_440:
    .get_results ($P520)
  lexotic_441:
    .return ($P520) 
.end
.HLL "nqp"
.namespace []
.sub "can" :subid("cuid_92_1346233419.189") :anon :lex :outer("cuid_98_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1223
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .const 'Sub' $P512 = 'cuid_199_1346233419.189' 
    capture_lex $P512 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$name", _lex_param_2 
    root_new $P101, ['parrot';'Continuation']
    set_label $P101, lexotic_450
    .lex "RETURN", $P101
    nqp_decontainerize $P504, _lex_param_0
    nqp_get_sc_object $P505, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 6
    repr_get_attr_obj $P506, $P504, $P505, "@!mro"
    set $P501, $P506
    iter $P503, $P506
    new $P508, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P508, for_handlers455
    push_eh $P508
  for_next456:
    unless $P503, for_done458
    shift $P509, $P503
  for_redo457:
    .const 'Sub' $P507 = 'cuid_199_1346233419.189' 
    capture_lex $P507
    $P501 = $P507($P509)
    goto for_next456
  for_handlers455:
    .get_results ($P508)
    pop_upto_eh $P508
    getattribute $P508, $P508, 'type'
    eq $P508, .CONTROL_LOOP_NEXT, for_next456
    eq $P508, .CONTROL_LOOP_REDO, for_redo457
  for_done458:
    pop_eh 
    find_lex $P510, "RETURN"
    $P511 = $P510(0)
    goto lexotic_451
  lexotic_450:
    .get_results ($P511)
  lexotic_451:
    .return ($P511) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_199_1346233419.189") :anon :lex :outer("cuid_92_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1224
    .param pmc _lex_param_0 
    .lex "%meths", $P101 
    .lex "$can", $P102 
    .lex "$_", _lex_param_0 
    new $P501, 'Hash'
    set $P101, $P501
    null $P502
    set $P102, $P502
.annotate 'line', 1225
    get_how $P503, _lex_param_0
    find_lex $P504, "$obj"
    $P505 = $P503."method_table"($P504)
    set $P101, $P505
    find_lex $P507, "$name"
    set $S501, $P507
    set $P506, $P101[$S501]
    unless_null $P506, fallback452
    null $P508
    set $P506, $P508
  fallback452:
    set $P102, $P506
    defined $I501, $P102
    box $P512, $I501
    set $P511, $P512
    unless $I501 goto if93_end454 
.annotate 'line', 1227
    find_lex $P509, "RETURN"
    $P510 = $P509($P102)
    set $P511, $P510
  if93_end454:
    .return ($P511) 
.end
.HLL "nqp"
.namespace []
.sub "find_method" :subid("cuid_93_1346233419.189") :anon :lex :outer("cuid_98_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1237
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 :named("no_fallback") :optional 
    .param int haz_param_22 :opt_flag 
    .param pmc _lex_param_4 :named("no_trace") :optional 
    .param int haz_param_23 :opt_flag 
    .const 'Sub' $P513 = 'cuid_202_1346233419.189' 
    capture_lex $P513 
    if haz_param_22, default474
    box $P511, 0
    set _lex_param_3, $P511
  default474:
    if haz_param_23, default475
    box $P512, 0
    set _lex_param_4, $P512
  default475:
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$name", _lex_param_2 
    .lex "$no_fallback", _lex_param_3 
    .lex "$no_trace", _lex_param_4 
    root_new $P101, ['parrot';'Continuation']
    set_label $P101, lexotic_459
    .lex "RETURN", $P101
    nqp_decontainerize $P504, _lex_param_0
    nqp_get_sc_object $P505, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 6
    repr_get_attr_obj $P506, $P504, $P505, "@!mro"
    set $P501, $P506
    iter $P503, $P506
    new $P508, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P508, for_handlers470
    push_eh $P508
  for_next471:
    unless $P503, for_done473
    shift $P509, $P503
  for_redo472:
    .const 'Sub' $P507 = 'cuid_202_1346233419.189' 
    capture_lex $P507
    $P501 = $P507($P509)
    goto for_next471
  for_handlers470:
    .get_results ($P508)
    pop_upto_eh $P508
    getattribute $P508, $P508, 'type'
    eq $P508, .CONTROL_LOOP_NEXT, for_next471
    eq $P508, .CONTROL_LOOP_REDO, for_redo472
  for_done473:
    pop_eh 
    null $P510
    goto lexotic_460
  lexotic_459:
    .get_results ($P510)
  lexotic_460:
    .return ($P510) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_202_1346233419.189") :anon :lex :outer("cuid_93_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1238
    .param pmc _lex_param_0 
    .const 'Sub' $P510 = 'cuid_201_1346233419.189' 
    capture_lex $P510 
    .lex "%meths", $P101 
    .lex "$_", _lex_param_0 
    new $P501, 'Hash'
    set $P101, $P501
.annotate 'line', 1239
    get_how $P502, _lex_param_0
    find_lex $P503, "$obj"
    $P504 = $P502."method_table"($P503)
    set $P101, $P504
    find_lex $P505, "$name"
    set $S501, $P505
    exists $I501, $P101[$S501]
    box $P509, $I501
    set $P508, $P509
    unless $I501 goto if94_end462 
    .const 'Sub' $P506 = 'cuid_201_1346233419.189' 
    capture_lex $P506
    $P507 = $P506()
    set $P508, $P507
  if94_end462:
    .return ($P508) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_201_1346233419.189") :anon :lex :outer("cuid_202_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1240
    .const 'Sub' $P521 = 'cuid_200_1346233419.189' 
    capture_lex $P521 
    .lex "$found", $P101 
    null $P501
    set $P101, $P501
    find_lex $P503, "%meths"
    find_lex $P504, "$name"
    set $S501, $P504
    set $P502, $P503[$S501]
    unless_null $P502, fallback463
    null $P505
    set $P502, $P505
  fallback463:
    set $P101, $P502
    find_lex $P508, "self"
    nqp_decontainerize $P507, $P508
    nqp_get_sc_object $P509, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 6
    repr_get_attr_obj $P510, $P507, $P509, "$!trace"
    set $P512, $P510
    unless $P510 goto if97_end469 
    find_lex $P511, "$no_trace"
    isfalse $I501, $P511
    box $P513, $I501
    set $P512, $P513
  if97_end469:
    set $P515, $P512
    unless $P512 goto if96_end467 
    find_lex $P514, "$name"
    set $S503, $P514
    substr $S502, $S503, 0, 1
    isne $I502, $S502, "!"
    box $P516, $I502
    set $P515, $P516
  if96_end467:
    unless $P515 goto if95_else464 
    .const 'Sub' $P518 = 'cuid_200_1346233419.189' 
    capture_lex $P518
    newclosure $P517, $P518
    set $P519, $P517
    goto if95_end465
  if95_else464:
    set $P519, $P101
  if95_end465:
    find_lex $P506, "RETURN"
    $P520 = $P506($P519)
    .return ($P520) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_200_1346233419.189") :anon :lex :outer("cuid_201_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1243
    .param pmc _lex_param_0 :slurpy 
    .param pmc _lex_param_1 :slurpy :named 
    .lex "$result", $P101 
    .lex "@pos", _lex_param_0 
    .lex "%named", _lex_param_1 
    null $P501
    set $P101, $P501
.annotate 'line', 1244
    find_lex $P503, "self"
    nqp_decontainerize $P502, $P503
    nqp_get_sc_object $P504, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 6
    repr_get_attr_obj $P505, $P502, $P504, "$!trace_depth"
    set $I501, $P505
    repeat $S502, "  ", $I501
    find_lex $P506, "$name"
    set $S504, $P506
    concat $S503, "Calling ", $S504
    concat $S501, $S502, $S503
    $P507 = "&say"($S501)
    find_lex $P509, "self"
    nqp_decontainerize $P508, $P509
    nqp_get_sc_object $P510, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 6
    find_lex $P512, "self"
    nqp_decontainerize $P511, $P512
    nqp_get_sc_object $P513, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 6
    repr_get_attr_obj $P514, $P511, $P513, "$!trace_depth"
    set $N502, $P514
    set $N503, 1
    add $N501, $N502, $N503
    box $P515, $N501
    repr_bind_attr_obj $P508, $P510, "$!trace_depth", $P515
.annotate 'line', 1246
    find_lex $P516, "$found"
    $P517 = $P516(_lex_param_0 :flat, _lex_param_1 :flat :named)
    set $P101, $P517
    find_lex $P519, "self"
    nqp_decontainerize $P518, $P519
    nqp_get_sc_object $P520, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 6
    find_lex $P522, "self"
    nqp_decontainerize $P521, $P522
    nqp_get_sc_object $P523, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 6
    repr_get_attr_obj $P524, $P521, $P523, "$!trace_depth"
    set $N505, $P524
    set $N506, 1
    sub $N504, $N505, $N506
    box $P525, $N504
    repr_bind_attr_obj $P518, $P520, "$!trace_depth", $P525
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "cache" :subid("cuid_94_1346233419.189") :anon :lex :outer("cuid_98_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1259
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$key", _lex_param_2 
    .lex "$value_generator", _lex_param_3 
    find_lex $P501, "%caches"
    nqp_decontainerize $P502, _lex_param_0
    get_id $I502, $P502
    set $S501, $I502
    exists $I501, $P501[$S501]
    box $P507, $I501
    set $P506, $P507
    if $I501 goto unless98_end477 
    find_lex $P503, "%caches"
    nqp_decontainerize $P504, _lex_param_0
    get_id $I503, $P504
    set $S502, $I503
    new $P505, 'Hash'
    set $P503[$S502], $P505
    set $P506, $P505
  unless98_end477:
    find_lex $P509, "%caches"
    nqp_decontainerize $P510, _lex_param_0
    get_id $I505, $P510
    set $S503, $I505
    set $P508, $P509[$S503]
    unless_null $P508, fallback480
    null $P511
    set $P508, $P511
  fallback480:
    set $S504, _lex_param_2
    exists $I504, $P508[$S504]
    unless $I504 goto if99_else478 
    find_lex $P514, "%caches"
    nqp_decontainerize $P515, _lex_param_0
    get_id $I506, $P515
    set $S505, $I506
    set $P513, $P514[$S505]
    unless_null $P513, fallback481
    null $P516
    set $P513, $P516
  fallback481:
    set $S506, _lex_param_2
    set $P512, $P513[$S506]
    unless_null $P512, fallback482
    null $P517
    set $P512, $P517
  fallback482:
    set $P523, $P512
    goto if99_end479
  if99_else478:
    find_lex $P519, "%caches"
    nqp_decontainerize $P520, _lex_param_0
    get_id $I507, $P520
    set $S507, $I507
    set $P518, $P519[$S507]
    unless_null $P518, fallback483
    null $P521
    set $P518, $P521
  fallback483:
    set $S508, _lex_param_2
.annotate 'line', 1263
    $P522 = _lex_param_3()
    set $P518[$S508], $P522
    set $P523, $P522
  if99_end479:
    .return ($P523) 
.end
.HLL "nqp"
.namespace []
.sub "mixin" :subid("cuid_95_1346233419.189") :anon :lex :outer("cuid_98_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1271
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .const 'Sub' $P523 = 'cuid_203_1346233419.189' 
    capture_lex $P523 
    .const 'Sub' $P523 = 'cuid_204_1346233419.189' 
    capture_lex $P523 
    .lex "$found", $P101 
    .lex "$new_type", $P102 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$role", _lex_param_2 
    null $P501
    set $P101, $P501
    null $P502
    set $P102, $P502
    box $P503, 0
    set $P101, $P503
    nqp_decontainerize $P504, _lex_param_0
    nqp_get_sc_object $P505, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 6
    repr_get_attr_obj $P506, $P504, $P505, "@!mixin_cache"
    isnull $I501, $P506
    box $P518, $I501
    set $P517, $P518
    if $I501 goto unless100_end485 
.annotate 'line', 1275
    nqp_decontainerize $P510, _lex_param_0
    nqp_get_sc_object $P511, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 6
    repr_get_attr_obj $P512, $P510, $P511, "@!mixin_cache"
    set $P507, $P512
    iter $P509, $P512
    new $P514, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P514, for_handlers488
    push_eh $P514
  for_next489:
    unless $P509, for_done491
    shift $P515, $P509
    shift $P516, $P509
  for_redo490:
    .const 'Sub' $P513 = 'cuid_203_1346233419.189' 
    capture_lex $P513
    $P507 = $P513($P515, $P516)
    goto for_next489
  for_handlers488:
    .get_results ($P514)
    pop_upto_eh $P514
    getattribute $P514, $P514, 'type'
    eq $P514, .CONTROL_LOOP_NEXT, for_next489
    eq $P514, .CONTROL_LOOP_REDO, for_redo490
  for_done491:
    pop_eh 
    set $P517, $P507
  unless100_end485:
    set $P521, $P101
    if $P101 goto unless102_end493 
    .const 'Sub' $P519 = 'cuid_204_1346233419.189' 
    capture_lex $P519
    $P520 = $P519()
    set $P521, $P520
  unless102_end493:
    repr_defined $I502, _lex_param_1
    unless $I502 goto if104_else496 
    repr_change_type _lex_param_1, $P102
    set $P522, _lex_param_1
    goto if104_end497
  if104_else496:
    set $P522, $P102
  if104_end497:
    .return ($P522) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_203_1346233419.189") :anon :lex :outer("cuid_95_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1276
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$c_role", _lex_param_0 
    .lex "$c_type", _lex_param_1 
    get_id $I502, _lex_param_0
    find_lex $P501, "$role"
    get_id $I503, $P501
    iseq $I501, $I502, $I503
    set $I504, $I501
    unless $I501 goto if101_end487 
.annotate 'line', 1277
    store_lex "$new_type", _lex_param_1
    box $P502, 1
    store_lex "$found", $P502
    die 0, .CONTROL_LOOP_LAST
    set $I504, 0
  if101_end487:
    .return ($I504) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_204_1346233419.189") :anon :lex :outer("cuid_95_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1286
    .lex "$new_name", $P101 
    null $P501
    set $P101, $P501
.annotate 'line', 1288
    find_lex $P503, "self"
    nqp_decontainerize $P502, $P503
    find_lex $P504, "$obj"
    $P505 = $P502."name"($P504)
    set $S504, $P505
    concat $S503, $S504, "+{"
    find_lex $P507, "$role"
    get_how $P506, $P507
    find_lex $P508, "$role"
    $P509 = $P506."name"($P508)
    set $S505, $P509
    concat $S502, $S503, $S505
    concat $S501, $S502, "}"
    box $P510, $S501
    set $P101, $P510
.annotate 'line', 1292
    find_lex $P512, "self"
    nqp_decontainerize $P511, $P512
    find_lex $P513, "$obj"
    repr_name $S506, $P513
    $P514 = $P511."new_type"($P101 :named("name"), $S506 :named("repr"))
    store_lex "$new_type", $P514
.annotate 'line', 1293
    find_lex $P516, "$new_type"
    get_how $P515, $P516
    find_lex $P517, "$new_type"
    find_lex $P519, "$obj"
    get_what $P518, $P519
    $P520 = $P515."add_parent"($P517, $P518)
.annotate 'line', 1294
    find_lex $P522, "$new_type"
    get_how $P521, $P522
    find_lex $P523, "$new_type"
    find_lex $P524, "$role"
    $P525 = $P521."add_role"($P523, $P524)
.annotate 'line', 1295
    find_lex $P527, "$new_type"
    get_how $P526, $P527
    find_lex $P528, "$new_type"
    $P529 = $P526."compose"($P528)
    nqp_disable_sc_write_barrier 
    find_lex $P531, "self"
    nqp_decontainerize $P530, $P531
    nqp_get_sc_object $P532, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 6
    repr_get_attr_obj $P533, $P530, $P532, "@!mixin_cache"
    isnull $I501, $P533
    box $P539, $I501
    set $P538, $P539
    unless $I501 goto if103_end495 
    find_lex $P535, "self"
    nqp_decontainerize $P534, $P535
    nqp_get_sc_object $P536, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 6
    new $P537, 'ResizablePMCArray'
    repr_bind_attr_obj $P534, $P536, "@!mixin_cache", $P537
    set $P538, $P537
  if103_end495:
    find_lex $P541, "self"
    nqp_decontainerize $P540, $P541
    nqp_get_sc_object $P542, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 6
    repr_get_attr_obj $P543, $P540, $P542, "@!mixin_cache"
    find_lex $P545, "self"
    nqp_decontainerize $P544, $P545
    nqp_get_sc_object $P546, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 6
    repr_get_attr_obj $P547, $P544, $P546, "@!mixin_cache"
    set $N501, $P547
    set $I502, $N501
    find_lex $P548, "$role"
    set $P543[$I502], $P548
    find_lex $P550, "self"
    nqp_decontainerize $P549, $P550
    nqp_get_sc_object $P551, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 6
    repr_get_attr_obj $P552, $P549, $P551, "@!mixin_cache"
    find_lex $P554, "self"
    nqp_decontainerize $P553, $P554
    nqp_get_sc_object $P555, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 6
    repr_get_attr_obj $P556, $P553, $P555, "@!mixin_cache"
    set $N502, $P556
    set $I503, $N502
    find_lex $P557, "$new_type"
    set $P552[$I503], $P557
    nqp_enable_sc_write_barrier 
    .return (1) 
.end
.HLL "nqp"
.namespace []
.sub "trace-on" :subid("cuid_96_1346233419.189") :anon :lex :outer("cuid_98_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1316
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :optional 
    .param int haz_param_24 :opt_flag 
    if haz_param_24, default499
    null $P509
    set _lex_param_2, $P509
  default499:
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$depth", _lex_param_2 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 6
    box $P503, 1
    repr_bind_attr_obj $P501, $P502, "$!trace", $P503
    nqp_decontainerize $P504, _lex_param_0
    nqp_get_sc_object $P505, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 6
    set $P506, _lex_param_2
    defined $I501, $P506
    if $I501, defor498
    box $P507, 0
    set $P506, $P507
  defor498:
    repr_bind_attr_obj $P504, $P505, "$!trace_depth", $P506
    set_method_cache_authoritativeness _lex_param_1, 0
    new $P508, 'Hash'
    publish_method_cache _lex_param_1, $P508
    .return (_lex_param_1) 
.end
.HLL "nqp"
.namespace []
.sub "trace-off" :subid("cuid_97_1346233419.189") :anon :lex :outer("cuid_98_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1322
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 6
    box $P503, 0
    repr_bind_attr_obj $P501, $P502, "$!trace", $P503
    .return ($P503) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_108_1346233419.189") :anon :lex :outer("cuid_1_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1328
    .const 'Sub' $P513 = 'cuid_99_1346233419.189' 
    capture_lex $P513 
    .const 'Sub' $P513 = 'cuid_100_1346233419.189' 
    capture_lex $P513 
    .const 'Sub' $P513 = 'cuid_101_1346233419.189' 
    capture_lex $P513 
    .const 'Sub' $P513 = 'cuid_102_1346233419.189' 
    capture_lex $P513 
    .const 'Sub' $P513 = 'cuid_103_1346233419.189' 
    capture_lex $P513 
    .const 'Sub' $P513 = 'cuid_104_1346233419.189' 
    capture_lex $P513 
    .const 'Sub' $P513 = 'cuid_105_1346233419.189' 
    capture_lex $P513 
    .const 'Sub' $P513 = 'cuid_106_1346233419.189' 
    capture_lex $P513 
    .const 'Sub' $P513 = 'cuid_107_1346233419.189' 
    capture_lex $P513 
    .lex "$archetypes", $P101 
    .lex "$?PACKAGE", $P102 
    .lex "$?CLASS", $P103 
    null $P501
    set $P101, $P501
.annotate 'line', 1332
    find_lex $P502, "Archetypes"
    $P503 = $P502."new"(1 :named("nominal"))
    set $P101, $P503
    .const 'Sub' $P504 = 'cuid_99_1346233419.189' 
    capture_lex $P504
    .const 'Sub' $P505 = 'cuid_100_1346233419.189' 
    capture_lex $P505
    .const 'Sub' $P506 = 'cuid_101_1346233419.189' 
    capture_lex $P506
    .const 'Sub' $P507 = 'cuid_102_1346233419.189' 
    capture_lex $P507
    .const 'Sub' $P508 = 'cuid_103_1346233419.189' 
    capture_lex $P508
    .const 'Sub' $P509 = 'cuid_104_1346233419.189' 
    capture_lex $P509
    .const 'Sub' $P510 = 'cuid_105_1346233419.189' 
    capture_lex $P510
    .const 'Sub' $P511 = 'cuid_106_1346233419.189' 
    capture_lex $P511
    .const 'Sub' $P512 = 'cuid_107_1346233419.189' 
    capture_lex $P512
    .return ($P512) 
.end
.HLL "nqp"
.namespace []
.sub "archetypes" :subid("cuid_99_1346233419.189") :anon :lex :outer("cuid_108_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1333
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    find_lex $P501, "$archetypes"
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "new" :subid("cuid_100_1346233419.189") :anon :lex :outer("cuid_108_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1337
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("name") :optional 
    .param int haz_param_25 :opt_flag 
    if haz_param_25, default500
    null $P505
    set _lex_param_1, $P505
  default500:
    .lex "$obj", $P101 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    null $P501
    set $P101, $P501
    nqp_decontainerize $P503, _lex_param_0
    repr_instance_of $P502, $P503
    set $P101, $P502
.annotate 'line', 1339
    $P504 = $P101."BUILD"(_lex_param_1 :named("name"))
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "BUILD" :subid("cuid_101_1346233419.189") :anon :lex :outer("cuid_108_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1343
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("name") :optional 
    .param int haz_param_26 :opt_flag 
    if haz_param_26, default501
    null $P506
    set _lex_param_1, $P506
  default501:
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 7
    repr_bind_attr_obj $P501, $P502, "$!name", _lex_param_1
    nqp_decontainerize $P503, _lex_param_0
    nqp_get_sc_object $P504, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 7
    box $P505, 0
    repr_bind_attr_obj $P503, $P504, "$!composed", $P505
    .return ($P505) 
.end
.HLL "nqp"
.namespace []
.sub "new_type" :subid("cuid_102_1346233419.189") :anon :lex :outer("cuid_108_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1351
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("name") :optional 
    .param int haz_param_27 :opt_flag 
    .param pmc _lex_param_2 :named("repr") 
    if haz_param_27, default502
    box $P506, "<anon>"
    set _lex_param_1, $P506
  default502:
    .lex "$metaclass", $P101 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    .lex "$repr", _lex_param_2 
    null $P501
    set $P101, $P501
.annotate 'line', 1352
    nqp_decontainerize $P502, _lex_param_0
    $P503 = $P502."new"(_lex_param_1 :named("name"))
    set $P101, $P503
    set $S501, _lex_param_2
    repr_type_object_for $P504, $P101, $S501
    new $P505, 'Hash'
    set_who $P504, $P505
    .return ($P504) 
.end
.HLL "nqp"
.namespace []
.sub "add_method" :subid("cuid_103_1346233419.189") :anon :lex :outer("cuid_108_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1356
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$name", _lex_param_2 
    .lex "$code_obj", _lex_param_3 
    box $P501, "Native types may not have methods (must be boxed to call method)"
    die $P501
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "add_multi_method" :subid("cuid_104_1346233419.189") :anon :lex :outer("cuid_108_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1360
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$name", _lex_param_2 
    .lex "$code_obj", _lex_param_3 
    box $P501, "Native types may not have methods (must be boxed to call method)"
    die $P501
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "add_attribute" :subid("cuid_105_1346233419.189") :anon :lex :outer("cuid_108_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1364
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$meta_attr", _lex_param_2 
    box $P501, "Native types may not have attributes"
    die $P501
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "compose" :subid("cuid_106_1346233419.189") :anon :lex :outer("cuid_108_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1368
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 7
    box $P503, 1
    repr_bind_attr_obj $P501, $P502, "$!composed", $P503
    .return ($P503) 
.end
.HLL "nqp"
.namespace []
.sub "name" :subid("cuid_107_1346233419.189") :anon :lex :outer("cuid_108_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1372
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 7
    repr_get_attr_obj $P503, $P501, $P502, "$!name"
    .return ($P503) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_119_1346233419.189") :anon :lex :outer("cuid_1_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1378
    .const 'Sub' $P512 = 'cuid_206_1346233419.189' 
    capture_lex $P512 
    .const 'Sub' $P512 = 'cuid_109_1346233419.189' 
    capture_lex $P512 
    .const 'Sub' $P512 = 'cuid_110_1346233419.189' 
    capture_lex $P512 
    .const 'Sub' $P512 = 'cuid_111_1346233419.189' 
    capture_lex $P512 
    .const 'Sub' $P512 = 'cuid_112_1346233419.189' 
    capture_lex $P512 
    .const 'Sub' $P512 = 'cuid_113_1346233419.189' 
    capture_lex $P512 
    .const 'Sub' $P512 = 'cuid_114_1346233419.189' 
    capture_lex $P512 
    .const 'Sub' $P512 = 'cuid_115_1346233419.189' 
    capture_lex $P512 
    .const 'Sub' $P512 = 'cuid_116_1346233419.189' 
    capture_lex $P512 
    .const 'Sub' $P512 = 'cuid_117_1346233419.189' 
    capture_lex $P512 
    .const 'Sub' $P512 = 'cuid_118_1346233419.189' 
    capture_lex $P512 
    .lex "&has_method", $P101 
    .lex "$?PACKAGE", $P102 
    .lex "$?CLASS", $P103 
    .const 'Sub' $P501 = 'cuid_206_1346233419.189' 
    capture_lex $P501
    set $P101, $P501
    .const 'Sub' $P502 = 'cuid_109_1346233419.189' 
    capture_lex $P502
    .const 'Sub' $P503 = 'cuid_110_1346233419.189' 
    capture_lex $P503
    .const 'Sub' $P504 = 'cuid_111_1346233419.189' 
    capture_lex $P504
    .const 'Sub' $P505 = 'cuid_112_1346233419.189' 
    capture_lex $P505
    .const 'Sub' $P506 = 'cuid_113_1346233419.189' 
    capture_lex $P506
    .const 'Sub' $P507 = 'cuid_114_1346233419.189' 
    capture_lex $P507
    .const 'Sub' $P508 = 'cuid_115_1346233419.189' 
    capture_lex $P508
    .const 'Sub' $P509 = 'cuid_116_1346233419.189' 
    capture_lex $P509
    .const 'Sub' $P510 = 'cuid_117_1346233419.189' 
    capture_lex $P510
    .const 'Sub' $P511 = 'cuid_118_1346233419.189' 
    capture_lex $P511
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "has_method" :subid("cuid_206_1346233419.189") :anon :lex :outer("cuid_119_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1458
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .const 'Sub' $P512 = 'cuid_205_1346233419.189' 
    capture_lex $P512 
    .lex "@methods", $P101 
    .lex "$target", _lex_param_0 
    .lex "$name", _lex_param_1 
    .lex "$local", _lex_param_2 
    new $P501, 'ResizablePMCArray'
    set $P101, $P501
    root_new $P102, ['parrot';'Continuation']
    set_label $P102, lexotic_503
    .lex "RETURN", $P102
.annotate 'line', 1459
    get_how $P502, _lex_param_0
    $P503 = $P502."methods"(_lex_param_0, _lex_param_2 :named("local"))
    set $P101, $P503
    set $P504, $P101
    iter $P506, $P101
    new $P508, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P508, for_handlers507
    push_eh $P508
  for_next508:
    unless $P506, for_done510
    shift $P509, $P506
  for_redo509:
    .const 'Sub' $P507 = 'cuid_205_1346233419.189' 
    capture_lex $P507
    $P504 = $P507($P509)
    goto for_next508
  for_handlers507:
    .get_results ($P508)
    pop_upto_eh $P508
    getattribute $P508, $P508, 'type'
    eq $P508, .CONTROL_LOOP_NEXT, for_next508
    eq $P508, .CONTROL_LOOP_REDO, for_redo509
  for_done510:
    pop_eh 
    find_lex $P510, "RETURN"
    $P511 = $P510(0)
    goto lexotic_504
  lexotic_503:
    .get_results ($P511)
  lexotic_504:
    .return ($P511) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_205_1346233419.189") :anon :lex :outer("cuid_206_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1460
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    set $S501, _lex_param_0
    find_lex $P501, "$name"
    set $S502, $P501
    iseq $I501, $S501, $S502
    box $P505, $I501
    set $P504, $P505
    unless $I501 goto if105_end506 
.annotate 'line', 1461
    find_lex $P502, "RETURN"
    $P503 = $P502(1)
    set $P504, $P503
  if105_end506:
    .return ($P504) 
.end
.HLL "nqp"
.namespace []
.sub "new" :subid("cuid_109_1346233419.189") :anon :lex :outer("cuid_119_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1386
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("name") 
    .param pmc _lex_param_2 :named("box_target") :optional 
    .param int haz_param_28 :opt_flag 
    .param pmc _lex_param_3 :slurpy :named 
    if haz_param_28, default511
    null $P505
    set _lex_param_2, $P505
  default511:
    .lex "$attr", $P101 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    .lex "$box_target", _lex_param_2 
    .lex "%extra", _lex_param_3 
    null $P501
    set $P101, $P501
    nqp_decontainerize $P503, _lex_param_0
    repr_instance_of $P502, $P503
    set $P101, $P502
.annotate 'line', 1388
    exists $I501, _lex_param_3["type"]
    exists $I502, _lex_param_3["default"]
    $P504 = $P101."BUILD"(_lex_param_1 :named("name"), _lex_param_3 :flat :named, _lex_param_2 :named("box_target"), $I501 :named("has_type"), $I502 :named("has_default"))
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "BUILD" :subid("cuid_110_1346233419.189") :anon :lex :outer("cuid_119_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1394
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
    if haz_param_29, default512
    null $P513
    set _lex_param_1, $P513
  default512:
    if haz_param_30, default513
    null $P514
    set _lex_param_2, $P514
  default513:
    if haz_param_31, default514
    null $P515
    set _lex_param_3, $P515
  default514:
    if haz_param_32, default515
    null $P516
    set _lex_param_4, $P516
  default515:
    if haz_param_33, default516
    null $P517
    set _lex_param_5, $P517
  default516:
    if haz_param_34, default517
    null $P518
    set _lex_param_6, $P518
  default517:
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    .lex "$type", _lex_param_2 
    .lex "$has_type", _lex_param_3 
    .lex "$box_target", _lex_param_4 
    .lex "$default", _lex_param_5 
    .lex "$has_default", _lex_param_6 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 8
    repr_bind_attr_obj $P501, $P502, "$!name", _lex_param_1
    nqp_decontainerize $P503, _lex_param_0
    nqp_get_sc_object $P504, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 8
    repr_bind_attr_obj $P503, $P504, "$!type", _lex_param_2
    nqp_decontainerize $P505, _lex_param_0
    nqp_get_sc_object $P506, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 8
    repr_bind_attr_obj $P505, $P506, "$!has_type", _lex_param_3
    nqp_decontainerize $P507, _lex_param_0
    nqp_get_sc_object $P508, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 8
    repr_bind_attr_obj $P507, $P508, "$!box_target", _lex_param_4
    nqp_decontainerize $P509, _lex_param_0
    nqp_get_sc_object $P510, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 8
    repr_bind_attr_obj $P509, $P510, "$!default", _lex_param_5
    nqp_decontainerize $P511, _lex_param_0
    nqp_get_sc_object $P512, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 8
    repr_bind_attr_obj $P511, $P512, "$!has_default", _lex_param_6
    .return (_lex_param_6) 
.end
.HLL "nqp"
.namespace []
.sub "name" :subid("cuid_111_1346233419.189") :anon :lex :outer("cuid_119_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1403
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 8
    repr_get_attr_obj $P503, $P501, $P502, "$!name"
    .return ($P503) 
.end
.HLL "nqp"
.namespace []
.sub "type" :subid("cuid_112_1346233419.189") :anon :lex :outer("cuid_119_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1407
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 8
    repr_get_attr_obj $P503, $P501, $P502, "$!has_type"
    unless $P503 goto if106_else518 
    nqp_decontainerize $P504, _lex_param_0
    nqp_get_sc_object $P505, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 8
    repr_get_attr_obj $P506, $P504, $P505, "$!type"
    set $P508, $P506
    goto if106_end519
  if106_else518:
    null $P507
    set $P508, $P507
  if106_end519:
    .return ($P508) 
.end
.HLL "nqp"
.namespace []
.sub "has_accessor" :subid("cuid_113_1346233419.189") :anon :lex :outer("cuid_119_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1411
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    .return (0) 
.end
.HLL "nqp"
.namespace []
.sub "build_closure" :subid("cuid_114_1346233419.189") :anon :lex :outer("cuid_119_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1415
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    .return (0) 
.end
.HLL "nqp"
.namespace []
.sub "box_target" :subid("cuid_115_1346233419.189") :anon :lex :outer("cuid_119_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1419
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 8
    repr_get_attr_obj $P503, $P501, $P502, "$!box_target"
    isnull $I502, $P503
    box $P504, $I502
    isfalse $I501, $P504
    box $P509, $I501
    set $P508, $P509
    unless $I501 goto if108_end523 
    nqp_decontainerize $P505, _lex_param_0
    nqp_get_sc_object $P506, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 8
    repr_get_attr_obj $P507, $P505, $P506, "$!box_target"
    set $P508, $P507
  if108_end523:
    unless $P508 goto if107_else520 
    set $I503, 1
    goto if107_end521
  if107_else520:
    set $I503, 0
  if107_end521:
    .return ($I503) 
.end
.HLL "nqp"
.namespace []
.sub "auto_viv_container" :subid("cuid_116_1346233419.189") :anon :lex :outer("cuid_119_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1423
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 8
    repr_get_attr_obj $P503, $P501, $P502, "$!has_default"
    unless $P503 goto if109_else524 
    nqp_decontainerize $P504, _lex_param_0
    nqp_get_sc_object $P505, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 8
    repr_get_attr_obj $P506, $P504, $P505, "$!default"
    set $P508, $P506
    goto if109_end525
  if109_else524:
    null $P507
    set $P508, $P507
  if109_end525:
    .return ($P508) 
.end
.HLL "nqp"
.namespace []
.sub "compose" :subid("cuid_117_1346233419.189") :anon :lex :outer("cuid_119_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1427
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .return (_lex_param_1) 
.end
.HLL "nqp"
.namespace []
.sub "has_mutator" :subid("cuid_118_1346233419.189") :anon :lex :outer("cuid_119_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1454
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 8
    repr_get_attr_obj $P503, $P501, $P502, "$!name"
    set $S502, $P503
    substr $S501, $S502, 1, 1
    isne $I501, $S501, "!"
    .return ($I501) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_130_1346233419.189") :anon :lex :outer("cuid_1_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1469
    .const 'Sub' $P514 = 'cuid_120_1346233419.189' 
    capture_lex $P514 
    .const 'Sub' $P514 = 'cuid_121_1346233419.189' 
    capture_lex $P514 
    .const 'Sub' $P514 = 'cuid_122_1346233419.189' 
    capture_lex $P514 
    .const 'Sub' $P514 = 'cuid_123_1346233419.189' 
    capture_lex $P514 
    .const 'Sub' $P514 = 'cuid_124_1346233419.189' 
    capture_lex $P514 
    .const 'Sub' $P514 = 'cuid_125_1346233419.189' 
    capture_lex $P514 
    .const 'Sub' $P514 = 'cuid_126_1346233419.189' 
    capture_lex $P514 
    .const 'Sub' $P514 = 'cuid_127_1346233419.189' 
    capture_lex $P514 
    .const 'Sub' $P514 = 'cuid_128_1346233419.189' 
    capture_lex $P514 
    .const 'Sub' $P514 = 'cuid_129_1346233419.189' 
    capture_lex $P514 
    .lex "$archetypes", $P101 
    .lex "$?PACKAGE", $P102 
    .lex "$?CLASS", $P103 
    null $P501
    set $P101, $P501
.annotate 'line', 1473
    find_lex $P502, "Archetypes"
    $P503 = $P502."new"()
    set $P101, $P503
    .const 'Sub' $P504 = 'cuid_120_1346233419.189' 
    capture_lex $P504
    .const 'Sub' $P505 = 'cuid_121_1346233419.189' 
    capture_lex $P505
    .const 'Sub' $P506 = 'cuid_122_1346233419.189' 
    capture_lex $P506
    .const 'Sub' $P507 = 'cuid_123_1346233419.189' 
    capture_lex $P507
    .const 'Sub' $P508 = 'cuid_124_1346233419.189' 
    capture_lex $P508
    .const 'Sub' $P509 = 'cuid_125_1346233419.189' 
    capture_lex $P509
    .const 'Sub' $P510 = 'cuid_126_1346233419.189' 
    capture_lex $P510
    .const 'Sub' $P511 = 'cuid_127_1346233419.189' 
    capture_lex $P511
    .const 'Sub' $P512 = 'cuid_128_1346233419.189' 
    capture_lex $P512
    .const 'Sub' $P513 = 'cuid_129_1346233419.189' 
    capture_lex $P513
    .return ($P513) 
.end
.HLL "nqp"
.namespace []
.sub "archetypes" :subid("cuid_120_1346233419.189") :anon :lex :outer("cuid_130_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1474
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    find_lex $P501, "$archetypes"
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "new" :subid("cuid_121_1346233419.189") :anon :lex :outer("cuid_130_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1478
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("name") :optional 
    .param int haz_param_35 :opt_flag 
    if haz_param_35, default526
    null $P505
    set _lex_param_1, $P505
  default526:
    .lex "$obj", $P101 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    null $P501
    set $P101, $P501
    nqp_decontainerize $P503, _lex_param_0
    repr_instance_of $P502, $P503
    set $P101, $P502
.annotate 'line', 1480
    $P504 = $P101."BUILD"(_lex_param_1 :named("name"))
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "BUILD" :subid("cuid_122_1346233419.189") :anon :lex :outer("cuid_130_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1484
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("name") :optional 
    .param int haz_param_36 :opt_flag 
    if haz_param_36, default527
    null $P506
    set _lex_param_1, $P506
  default527:
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 9
    repr_bind_attr_obj $P501, $P502, "$!name", _lex_param_1
    nqp_decontainerize $P503, _lex_param_0
    nqp_get_sc_object $P504, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 9
    box $P505, 0
    repr_bind_attr_obj $P503, $P504, "$!composed", $P505
    .return ($P505) 
.end
.HLL "nqp"
.namespace []
.sub "new_type" :subid("cuid_123_1346233419.189") :anon :lex :outer("cuid_130_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1491
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("name") :optional 
    .param int haz_param_37 :opt_flag 
    if haz_param_37, default528
    box $P506, "<anon>"
    set _lex_param_1, $P506
  default528:
    .lex "$metaclass", $P101 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    null $P501
    set $P101, $P501
.annotate 'line', 1492
    nqp_decontainerize $P502, _lex_param_0
    $P503 = $P502."new"(_lex_param_1 :named("name"))
    set $P101, $P503
    repr_type_object_for $P504, $P101, "Uninstantiable"
    new $P505, 'Hash'
    set_who $P504, $P505
    .return ($P504) 
.end
.HLL "nqp"
.namespace []
.sub "add_method" :subid("cuid_124_1346233419.189") :anon :lex :outer("cuid_130_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1496
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$name", _lex_param_2 
    .lex "$code_obj", _lex_param_3 
    null $P501
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "add_multi_method" :subid("cuid_125_1346233419.189") :anon :lex :outer("cuid_130_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1502
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$name", _lex_param_2 
    .lex "$code_obj", _lex_param_3 
    box $P501, "Modules may not have methods"
    die $P501
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "add_attribute" :subid("cuid_126_1346233419.189") :anon :lex :outer("cuid_130_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1506
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$meta_attr", _lex_param_2 
    box $P501, "Modules may not have attributes"
    die $P501
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "compose" :subid("cuid_127_1346233419.189") :anon :lex :outer("cuid_130_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1510
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "%empty", $P101 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    new $P501, 'Hash'
    set $P101, $P501
    publish_method_cache _lex_param_1, $P101
    set_method_cache_authoritativeness _lex_param_1, 1
    nqp_decontainerize $P502, _lex_param_0
    nqp_get_sc_object $P503, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 9
    box $P504, 1
    repr_bind_attr_obj $P502, $P503, "$!composed", $P504
    .return ($P504) 
.end
.HLL "nqp"
.namespace []
.sub "find_method" :subid("cuid_128_1346233419.189") :anon :lex :outer("cuid_130_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1516
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 :slurpy :named 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    .lex "$name", _lex_param_2 
    .lex "%opts", _lex_param_3 
    null $P501
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "name" :subid("cuid_129_1346233419.189") :anon :lex :outer("cuid_130_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1520
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$obj", _lex_param_1 
    nqp_decontainerize $P501, _lex_param_0
    nqp_get_sc_object $P502, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 9
    repr_get_attr_obj $P503, $P501, $P502, "$!name"
    .return ($P503) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_131_1346233419.189") :anon :lex :outer("cuid_1_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
.annotate 'line', 1528
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    get_who $P501, $P101
    find_lex $P502, "NQPModuleHOW"
    set $P501["module"], $P502
    get_who $P503, $P101
    find_lex $P504, "NQPClassHOW"
    set $P503["class"], $P504
    get_who $P505, $P101
    find_lex $P506, "NQPAttribute"
    set $P505["class-attr"], $P506
    get_who $P507, $P101
    find_lex $P508, "NQPClassHOW"
    set $P507["grammar"], $P508
    get_who $P509, $P101
    find_lex $P510, "NQPAttribute"
    set $P509["grammar-attr"], $P510
    get_who $P511, $P101
    find_lex $P512, "NQPParametricRoleHOW"
    set $P511["role"], $P512
    get_who $P513, $P101
    find_lex $P514, "NQPAttribute"
    set $P513["role-attr"], $P514
    get_who $P515, $P101
    find_lex $P516, "NQPNativeHOW"
    set $P515["native"], $P516
    .return ($P516) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_208_1346233419.189") :load :init
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
    .const 'Sub' $P501 = 'cuid_207_1346233419.189' 
    capture_lex $P501 
    .local pmc cur_sc 
    nqp_dynop_setup 
    nqp_bigint_setup 
    getinterp $P501
    get_class $P502, "LexPad"
    get_class $P503, "NQPLexPad"
    $P504 = $P501."hll_map"($P502, $P503)
    nqp_create_sc $P501, "9445C5406A048972164361D402A20067808C4578-1346233419.227"
    set cur_sc, $P501
    $P502 = cur_sc."set_description"("src\\stage2\\gen\\nqp-mo.pm")
    new $P503, 'ResizableStringArray'
    null $S501
    push $P503, $S501
    push $P503, "P6opaque"
    push $P503, "RoleToRoleApplier"
    push $P503, "NQPConcreteRoleHOW"
    push $P503, "RoleToClassApplier"
    push $P503, "NQPParametricRoleHOW"
    push $P503, "NQPClassHOW"
    push $P503, "NQPNativeHOW"
    push $P503, "NQPAttribute"
    push $P503, "NQPModuleHOW"
    push $P503, "new"
    push $P503, "BUILD"
    push $P503, "nominal"
    push $P503, "nominalizable"
    push $P503, "inheritable"
    push $P503, "inheritalizable"
    push $P503, "composable"
    push $P503, "composalizable"
    push $P503, "generic"
    push $P503, "parametric"
    push $P503, "$!nominal"
    push $P503, "$!nominalizable"
    push $P503, "$!inheritable"
    push $P503, "$!inheritalizable"
    push $P503, "$!composable"
    push $P503, "$!composalizable"
    push $P503, "$!generic"
    push $P503, "$!parametric"
    push $P503, "apply"
    push $P503, "archetypes"
    push $P503, "new_type"
    push $P503, "add_method"
    push $P503, "add_multi_method"
    push $P503, "add_attribute"
    push $P503, "add_parent"
    push $P503, "add_role"
    push $P503, "add_collision"
    push $P503, "compose"
    push $P503, "methods"
    push $P503, "method_table"
    push $P503, "collisions"
    push $P503, "name"
    push $P503, "attributes"
    push $P503, "roles"
    push $P503, "role_typecheck_list"
    push $P503, "instance_of"
    push $P503, "$!name"
    push $P503, "$!instance_of"
    push $P503, "%!attributes"
    push $P503, "%!methods"
    push $P503, "@!multi_methods_to_incorporate"
    push $P503, "@!collisions"
    push $P503, "@!roles"
    push $P503, "@!role_typecheck_list"
    push $P503, "$!composed"
    push $P503, "set_body_block"
    push $P503, "specialize"
    push $P503, "$!body_block"
    push $P503, "set_default_parent"
    push $P503, "reparent"
    push $P503, "add_parrot_vtable_mapping"
    push $P503, "add_parrot_vtable_handler_mapping"
    push $P503, "incorporate_multi_candidates"
    push $P503, "publish_type_cache"
    push $P503, "publish_method_cache"
    push $P503, "publish_boolification_spec"
    push $P503, "publish_parrot_vtable_mapping"
    push $P503, "publish_parrot_vtablee_handler_mapping"
    push $P503, "create_BUILDPLAN"
    push $P503, "BUILDPLAN"
    push $P503, "BUILDALLPLAN"
    push $P503, "parents"
    push $P503, "mro"
    push $P503, "traced"
    push $P503, "trace_depth"
    push $P503, "parrot_vtable_mappings"
    push $P503, "parrot_vtable_handler_mappings"
    push $P503, "isa"
    push $P503, "does"
    push $P503, "can"
    push $P503, "find_method"
    push $P503, "cache"
    push $P503, "mixin"
    push $P503, "trace-on"
    push $P503, "trace-off"
    push $P503, "@!method_order"
    push $P503, "@!parents"
    push $P503, "$!default_parent"
    push $P503, "@!vtable"
    push $P503, "%!method-vtable-slots"
    push $P503, "@!mro"
    push $P503, "@!done"
    push $P503, "%!parrot_vtable_mapping"
    push $P503, "%!parrot_vtable_handler_mapping"
    push $P503, "$!trace"
    push $P503, "$!trace_depth"
    push $P503, "@!BUILDALLPLAN"
    push $P503, "@!BUILDPLAN"
    push $P503, "@!mixin_cache"
    push $P503, "type"
    push $P503, "has_accessor"
    push $P503, "build_closure"
    push $P503, "box_target"
    push $P503, "auto_viv_container"
    push $P503, "has_mutator"
    push $P503, "$!type"
    push $P503, "$!has_type"
    push $P503, "$!box_target"
    push $P503, "$!default"
    push $P503, "$!has_default"
    push $P503, "__6MODEL_CORE__"
    push $P503, "GLOBALish"
    push $P503, "\"@!roles\""
    push $P503, "fresh_lex_p"
    push $P503, ".sub \"\""
    push $P503, "    nqp_decontainerize $P501, _lex_param_0\n    nqp_get_sc_object $P502, \"9445C5406A048972164361D402A20067808C4578-1346233419.227\", 6\n    repr_get_attr_obj $P503, $P501, $P502, \"%!parrot_vtable_handler_mapping\""
    push $P503, "$P518"
    push $P503, "$P511, $P513"
    .const 'Sub' $P504 = 'cuid_207_1346233419.189' 
    capture_lex $P504
    $P505 = $P504()
    nqp_deserialize_sc "AQAAAEAAAAABAAAASAAAAAsAAACgAAAA/hIAAEwAAAC+FwAA8iEAAAAAAADyIQAAAAAAAPIhAADyIQAAAAAAAG4AAAAAAAAAAQAAAAAAAAABAAAACgEAAAEAAADkAgAAAQAAAIwDAAABAAAA+gUAAAEAAACiBgAAAQAAANYIAAABAAAAeA0AAAEAAADADgAAAQAAAG4QAAABAAAAxBEAAAAAAAALAAAAAAAAAAAAAAAKAAgAAAACAAAAAgAAAAAAAgAAAAMAAAACAAAAAAADAAAABAAAAAIAAAAAAAQAAAAFAAAAAgAAAAAABQAAAAYAAAACAAAAAAAGAAAABwAAAAIAAAAAAAcAAAAIAAAAAgAAAAAACAAAAAkAAAACAAAAAAAJAAAACgAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAAAAAAAAMAAAAAAAwAAAAAAAAAAQAAAAoAAAAAAAoACgAAAAoAAAALAAAAAAAAAAAACwAAAAsAAAAAAAEAAAAMAAAACwAAAAAAAgAAAA0AAAALAAAAAAADAAAADgAAAAsAAAAAAAQAAAAPAAAACwAAAAAABQAAABAAAAALAAAAAAAGAAAAEQAAAAsAAAAAAAcAAAASAAAACwAAAAAACAAAABMAAAALAAAAAAAJAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAAEAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAAAEAAAAKAAgAAAAUAAAABAAAAAAAAAAAABUAAAAEAAEAAAAAAAAAFgAAAAQAAgAAAAAAAAAXAAAABAADAAAAAAAAABgAAAAEAAQAAAAAAAAAGQAAAAQABQAAAAAAAAAaAAAABAAGAAAAAAAAABsAAAAEAAcAAAAAAAAAAAAAAA0AAAAAAAAAAgAAAAoAAAAAAAoAAQAAABwAAAALAAAAAAAKAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAAIAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAAAgAAAAMAAAAAAA4AAAAAAAAAAwAAAAoAAAAAAAoAEwAAAB0AAAALAAAAAAALAAAACgAAAAsAAAAAAAwAAAALAAAACwAAAAAADQAAAB4AAAALAAAAAAAOAAAAHwAAAAsAAAAAAA8AAAAgAAAACwAAAAAAEAAAACEAAAALAAAAAAARAAAAIgAAAAsAAAAAABIAAAAjAAAACwAAAAAAEwAAACQAAAALAAAAAAAUAAAAJQAAAAsAAAAAABUAAAAmAAAACwAAAAAAFgAAACcAAAALAAAAAAAXAAAAKAAAAAsAAAAAABgAAAApAAAACwAAAAAAGQAAACoAAAALAAAAAAAaAAAAKwAAAAsAAAAAABsAAAAsAAAACwAAAAAAHAAAAC0AAAALAAAAAAAdAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAAMAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAJAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAAAwAAAAoACQAAAC4AAAAEAAAAAAAAAAAALwAAAAQAAQAAAAAAAAAwAAAABAACAAAAAAAAADEAAAAEAAMAAAAAAAAAMgAAAAQABAAAAAAAAAAzAAAABAAFAAAAAAAAADQAAAAEAAYAAAAAAAAANQAAAAQABwAAAAAAAAA2AAAABAAIAAAAAAAAAAAAAAAPAAAAAAAAAAQAAAAKAAAAAAAKAAEAAAAcAAAACwAAAAAAHgAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAAAEAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAAAQAAAADAAAAAAAQAAAAAAAAAAUAAAAKAAAAAAAKABIAAAAdAAAACwAAAAAAHwAAAAoAAAALAAAAAAAgAAAACwAAAAsAAAAAACEAAAAeAAAACwAAAAAAIgAAADcAAAALAAAAAAAjAAAAHwAAAAsAAAAAACQAAAAgAAAACwAAAAAAJQAAACEAAAALAAAAAAAmAAAAIgAAAAsAAAAAACcAAAAjAAAACwAAAAAAKAAAACUAAAALAAAAAAApAAAAEwAAAAsAAAAAACoAAAA4AAAACwAAAAAAKwAAACYAAAALAAAAAAAsAAAAJwAAAAsAAAAAAC0AAAApAAAACwAAAAAALgAAACoAAAALAAAAAAAvAAAAKwAAAAsAAAAAADAAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAAABQAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAcAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAAAUAAAAKAAcAAAAuAAAABAAAAAAAAAAAADAAAAAEAAEAAAAAAAAAMQAAAAQAAgAAAAAAAAAyAAAABAADAAAAAAAAADQAAAAEAAQAAAAAAAAANgAAAAQABQAAAAAAAAA5AAAABAAGAAAAAAAAAAAAAAARAAAAAAAAAAYAAAAKAAAAAAAKACoAAAAdAAAACwAAAAAAMQAAAAoAAAALAAAAAAAyAAAACwAAAAsAAAAAADMAAAAeAAAACwAAAAAANAAAAB8AAAALAAAAAAA1AAAAIAAAAAsAAAAAADYAAAAhAAAACwAAAAAANwAAACIAAAALAAAAAAA4AAAAOgAAAAsAAAAAADkAAAA7AAAACwAAAAAAOgAAACMAAAALAAAAAAA7AAAAPAAAAAsAAAAAADwAAAA9AAAACwAAAAAAPQAAACUAAAALAAAAAAA+AAAAPgAAAAsAAAAAAD8AAAA/AAAACwAAAAAAQAAAAEAAAAALAAAAAABBAAAAQQAAAAsAAAAAAEIAAABCAAAACwAAAAAAQwAAAEMAAAALAAAAAABEAAAARAAAAAsAAAAAAEUAAABFAAAACwAAAAAARgAAAEYAAAALAAAAAABHAAAARwAAAAsAAAAAAEgAAABIAAAACwAAAAAASQAAACsAAAALAAAAAABKAAAAJgAAAAsAAAAAAEsAAAAnAAAACwAAAAAATAAAACkAAAALAAAAAABNAAAASQAAAAsAAAAAAE4AAABKAAAACwAAAAAATwAAACoAAAALAAAAAABQAAAASwAAAAsAAAAAAFEAAABMAAAACwAAAAAAUgAAAE0AAAALAAAAAABTAAAATgAAAAsAAAAAAFQAAABPAAAACwAAAAAAVQAAAFAAAAALAAAAAABWAAAAUQAAAAsAAAAAAFcAAABSAAAACwAAAAAAWAAAAFMAAAALAAAAAABZAAAAVAAAAAsAAAAAAFoAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAAABgAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAABgAAAAoAFAAAAC4AAAAEAAAAAAAAAAAAMAAAAAQAAQAAAAAAAAAxAAAABAACAAAAAAAAAFUAAAAEAAMAAAAAAAAAMgAAAAQABAAAAAAAAABWAAAABAAFAAAAAAAAADQAAAAEAAYAAAAAAAAAVwAAAAQABwAAAAAAAABYAAAABAAIAAAAAAAAAFkAAAAEAAkAAAAAAAAANgAAAAQACgAAAAAAAABaAAAABAALAAAAAAAAAFsAAAAEAAwAAAAAAAAAXAAAAAQADQAAAAAAAABdAAAABAAOAAAAAAAAAF4AAAAEAA8AAAAAAAAAXwAAAAQAEAAAAAAAAABgAAAABAARAAAAAAAAAGEAAAAEABIAAAAAAAAAYgAAAAQAEwAAAAAAAAAAAAAAEgAAAAAAAAAHAAAACgAAAAAACgAJAAAAHQAAAAsAAAAAAFsAAAAKAAAACwAAAAAAXAAAAAsAAAALAAAAAABdAAAAHgAAAAsAAAAAAF4AAAAfAAAACwAAAAAAXwAAACAAAAALAAAAAABgAAAAIQAAAAsAAAAAAGEAAAAlAAAACwAAAAAAYgAAACkAAAALAAAAAABjAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAAcAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAAAcAAAAKAAIAAAAuAAAABAAAAAAAAAAAADYAAAAEAAEAAAAAAAAAAAAAABMAAAAAAAAACAAAAAoAAAAAAAoACgAAAAoAAAALAAAAAABkAAAACwAAAAsAAAAAAGUAAAApAAAACwAAAAAAZgAAAGMAAAALAAAAAABnAAAAZAAAAAsAAAAAAGgAAABlAAAACwAAAAAAaQAAAGYAAAALAAAAAABqAAAAZwAAAAsAAAAAAGsAAAAlAAAACwAAAAAAbAAAAGgAAAALAAAAAABtAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAAgAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAACAAAAAoABgAAAC4AAAAEAAAAAAAAAAAAaQAAAAQAAQAAAAAAAABqAAAABAACAAAAAAAAAGsAAAAEAAMAAAAAAAAAbAAAAAQABAAAAAAAAABtAAAABAAFAAAAAAAAAAAAAAAUAAAAAAAAAAkAAAAKAAAAAAAKAAoAAAAdAAAACwAAAAAAbgAAAAoAAAALAAAAAABvAAAACwAAAAsAAAAAAHAAAAAeAAAACwAAAAAAcQAAAB8AAAALAAAAAAByAAAAIAAAAAsAAAAAAHMAAAAhAAAACwAAAAAAdAAAACUAAAALAAAAAAB1AAAAUAAAAAsAAAAAAHYAAAApAAAACwAAAAAAdwAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAAAJAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAQAAAAAAAAACAAAAAAAJAAAACgACAAAALgAAAAQAAAAAAAAAAAA2AAAABAABAAAAAAAAAAAAAAAVAAAAAAAAAAoAAAAKAAAAAAAKAAAAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAAACgAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAQAAAAAAAAACAAAAAAAKAAAAAwAAAAAAAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAACAAAAAAAAAAAAAAAAAAAAAwAAAAAAAAAAAAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAFAAAAAAAAAAAAAAAAAAAABgAAAAAAAAAAAAAAAAAAAAcAAAAAAAAAAAAAAAAAAAAIAAAAAAAAAAAAAAAAAAAACQAAAAAAAAAAAAAAAAAAAAoAAAAAAAAAAAAAAAEAAAAAAAAAAAAAAAEAAAABAAAAAAAAABAAAAABAAAAAQAAAAAAAAD8AAAAAQAAAAEAAAAAAAAAGgEAAAEAAAABAAAAAAAAAI4CAAABAAAAAQAAAAAAAACsAgAAAQAAAAEAAAAAAAAA/gMAAAEAAAABAAAAAAAAACIHAAABAAAAAQAAAAAAAADEBwAAAQAAAAEAAAAAAAAAnAgAAAEAAAABAAAAAAAAAEwJAAABAAAAAQAAAAIAAABcCQAAAQAAAAEAAAACAAAAYAkAAAEAAAABAAAAAgAAAGQJAAABAAAAAQAAAAIAAABoCQAAAQAAAAEAAAACAAAAbAkAAAEAAAABAAAAAgAAAHAJAAABAAAAAQAAAAIAAAB0CQAAAQAAAAEAAAACAAAAeAkAAAEAAAABAAAAAgAAAHwJAAABAAAAAQAAAAIAAACACQAAAQAAAAEAAAACAAAAhAkAAAEAAAABAAAAAgAAAIgJAAABAAAAAQAAAAIAAACMCQAAAQAAAAEAAAACAAAAkAkAAAEAAAABAAAAAgAAAJQJAAABAAAAAQAAAAIAAACYCQAAAQAAAAEAAAACAAAAnAkAAAEAAAABAAAAAgAAAKAJAAABAAAAAQAAAAIAAACkCQAAAQAAAAEAAAACAAAAqAkAAAEAAAABAAAAAgAAAKwJAAABAAAAAQAAAAIAAACwCQAAAQAAAAEAAAACAAAAtAkAAAEAAAABAAAAAgAAALgJAAABAAAAAQAAAAIAAAC8CQAAAQAAAAEAAAACAAAAwAkAAAEAAAABAAAAAgAAAMQJAAABAAAAAQAAAAIAAADICQAAAQAAAAEAAAACAAAAzAkAAAEAAAABAAAAAgAAANAJAAABAAAAAQAAAAIAAADUCQAAAQAAAAEAAAACAAAA2AkAAAEAAAABAAAAAgAAANwJAAABAAAAAQAAAAIAAADgCQAAAQAAAAEAAAACAAAA5AkAAAEAAAABAAAAAgAAAOgJAAABAAAAAQAAAAIAAADsCQAAAQAAAAEAAAACAAAA8AkAAAEAAAABAAAAAgAAAPQJAAABAAAAAQAAAAIAAAD4CQAAAQAAAAEAAAACAAAA/AkAAAEAAAABAAAAAgAAAAAKAAABAAAAAQAAAAIAAAAECgAAAQAAAAEAAAACAAAACAoAAAEAAAABAAAAAgAAAAwKAAABAAAAAQAAAAIAAAAQCgAAAQAAAAEAAAACAAAAFAoAAAEAAAABAAAAAgAAABgKAAABAAAAAQAAAAIAAAAcCgAAAQAAAAEAAAACAAAAIAoAAAEAAAABAAAAAgAAACQKAAABAAAAAQAAAAIAAAAoCgAAAQAAAAEAAAACAAAALAoAAAEAAAABAAAAAgAAADAKAAABAAAAbwAAAAcAAAAAAAoAAAAAAHAAAAAHAAgAAAACAAAAAAAWAAAAAgAAAAAAFwAAAAIAAAAAABgAAAACAAAAAAAZAAAAAgAAAAAAGgAAAAIAAAAAABsAAAACAAAAAAAcAAAAAgAAAAAAHQAAAAoACgAAAAoAAAALAAAAAAAAAAAACwAAAAsAAAAAAAEAAAAMAAAACwAAAAAAAgAAAA0AAAALAAAAAAADAAAADgAAAAsAAAAAAAQAAAAPAAAACwAAAAAABQAAABAAAAALAAAAAAAGAAAAEQAAAAsAAAAAAAcAAAASAAAACwAAAAAACAAAABMAAAALAAAAAAAJAAAAcQAAAAcAAAAAAAoAAQAAABwAAAALAAAAAAAKAAAAAwAAAAcACQAAAAIAAAAAAB4AAAACAAAAAAAfAAAAAgAAAAAAIAAAAAIAAAAAACEAAAACAAAAAAAiAAAAAgAAAAAAIwAAAAIAAAAAACQAAAACAAAAAAAlAAAAAgAAAAAAJgAAAAoAEwAAAB0AAAALAAAAAAALAAAACgAAAAsAAAAAAAwAAAALAAAACwAAAAAADQAAAB4AAAALAAAAAAAOAAAAHwAAAAsAAAAAAA8AAAAgAAAACwAAAAAAEAAAACEAAAALAAAAAAARAAAAIgAAAAsAAAAAABIAAAAjAAAACwAAAAAAEwAAACQAAAALAAAAAAAUAAAAJQAAAAsAAAAAABUAAAAmAAAACwAAAAAAFgAAACcAAAALAAAAAAAXAAAAKAAAAAsAAAAAABgAAAApAAAACwAAAAAAGQAAACoAAAALAAAAAAAaAAAAKwAAAAsAAAAAABsAAAAsAAAACwAAAAAAHAAAAC0AAAALAAAAAAAdAAAAcgAAAAcAAAAAAAoAAQAAABwAAAALAAAAAAAeAAAABQAAAAcABwAAAAIAAAAAACcAAAACAAAAAAAoAAAAAgAAAAAAKQAAAAIAAAAAACoAAAACAAAAAAArAAAAAgAAAAAALAAAAAIAAAAAAC0AAAAKABIAAAAdAAAACwAAAAAAHwAAAAoAAAALAAAAAAAgAAAACwAAAAsAAAAAACEAAAAeAAAACwAAAAAAIgAAADcAAAALAAAAAAAjAAAAHwAAAAsAAAAAACQAAAAgAAAACwAAAAAAJQAAACEAAAALAAAAAAAmAAAAIgAAAAsAAAAAACcAAAAjAAAACwAAAAAAKAAAACUAAAALAAAAAAApAAAAEwAAAAsAAAAAACoAAAA4AAAACwAAAAAAKwAAACYAAAALAAAAAAAsAAAAJwAAAAsAAAAAAC0AAAApAAAACwAAAAAALgAAACoAAAALAAAAAAAvAAAAKwAAAAsAAAAAADAAAAAGAAAABwAUAAAAAgAAAAAALgAAAAIAAAAAAC8AAAACAAAAAAAwAAAAAgAAAAAAMQAAAAIAAAAAADIAAAACAAAAAAAzAAAAAgAAAAAANAAAAAIAAAAAADUAAAACAAAAAAA2AAAAAgAAAAAANwAAAAIAAAAAADgAAAACAAAAAAA5AAAAAgAAAAAAOgAAAAIAAAAAADsAAAACAAAAAAA8AAAAAgAAAAAAPQAAAAIAAAAAAD4AAAACAAAAAAA/AAAAAgAAAAAAQAAAAAIAAAAAAEEAAAAKACoAAAAdAAAACwAAAAAAMQAAAAoAAAALAAAAAAAyAAAACwAAAAsAAAAAADMAAAAeAAAACwAAAAAANAAAAB8AAAALAAAAAAA1AAAAIAAAAAsAAAAAADYAAAAhAAAACwAAAAAANwAAACIAAAALAAAAAAA4AAAAOgAAAAsAAAAAADkAAAA7AAAACwAAAAAAOgAAACMAAAALAAAAAAA7AAAAPAAAAAsAAAAAADwAAAA9AAAACwAAAAAAPQAAACUAAAALAAAAAAA+AAAAPgAAAAsAAAAAAD8AAAA/AAAACwAAAAAAQAAAAEAAAAALAAAAAABBAAAAQQAAAAsAAAAAAEIAAABCAAAACwAAAAAAQwAAAEMAAAALAAAAAABEAAAARAAAAAsAAAAAAEUAAABFAAAACwAAAAAARgAAAEYAAAALAAAAAABHAAAARwAAAAsAAAAAAEgAAABIAAAACwAAAAAASQAAACsAAAALAAAAAABKAAAAJgAAAAsAAAAAAEsAAAAnAAAACwAAAAAATAAAACkAAAALAAAAAABNAAAASQAAAAsAAAAAAE4AAABKAAAACwAAAAAATwAAACoAAAALAAAAAABQAAAASwAAAAsAAAAAAFEAAABMAAAACwAAAAAAUgAAAE0AAAALAAAAAABTAAAATgAAAAsAAAAAAFQAAABPAAAACwAAAAAAVQAAAFAAAAALAAAAAABWAAAAUQAAAAsAAAAAAFcAAABSAAAACwAAAAAAWAAAAFMAAAALAAAAAABZAAAAVAAAAAsAAAAAAFoAAABzAAAABwACAAAAAgAAAAAAQgAAAAIAAAAAAEMAAAAKAAkAAAAdAAAACwAAAAAAWwAAAAoAAAALAAAAAABcAAAACwAAAAsAAAAAAF0AAAAeAAAACwAAAAAAXgAAAB8AAAALAAAAAABfAAAAIAAAAAsAAAAAAGAAAAAhAAAACwAAAAAAYQAAACUAAAALAAAAAABiAAAAKQAAAAsAAAAAAGMAAAB0AAAABwAGAAAAAgAAAAAARAAAAAIAAAAAAEUAAAACAAAAAABGAAAAAgAAAAAARwAAAAIAAAAAAEgAAAACAAAAAABJAAAACgAKAAAACgAAAAsAAAAAAGQAAAALAAAACwAAAAAAZQAAACkAAAALAAAAAABmAAAAYwAAAAsAAAAAAGcAAABkAAAACwAAAAAAaAAAAGUAAAALAAAAAABpAAAAZgAAAAsAAAAAAGoAAABnAAAACwAAAAAAawAAACUAAAALAAAAAABsAAAAaAAAAAsAAAAAAG0AAAAJAAAABwACAAAAAgAAAAAASgAAAAIAAAAAAEsAAAAKAAoAAAAdAAAACwAAAAAAbgAAAAoAAAALAAAAAABvAAAACwAAAAsAAAAAAHAAAAAeAAAACwAAAAAAcQAAAB8AAAALAAAAAAByAAAAIAAAAAsAAAAAAHMAAAAhAAAACwAAAAAAdAAAACUAAAALAAAAAAB1AAAAUAAAAAsAAAAAAHYAAAApAAAACwAAAAAAdwAAAHUAAAAHAAAAAAAKAAAAAAAUAAAAFQAAABYAAAAXAAAAGAAAABkAAAAaAAAAGwAAAC4AAAAvAAAAMAAAADEAAAAyAAAAMwAAADQAAAA1AAAANgAAAC4AAAAwAAAAMQAAADIAAAA0AAAANgAAADkAAAAuAAAAMAAAADEAAABVAAAAMgAAAFYAAAA0AAAAVwAAAFgAAABZAAAANgAAAFoAAABbAAAAXAAAAF0AAABeAAAAXwAAAGAAAABhAAAAYgAAAC4AAAA2AAAALgAAAGkAAABqAAAAawAAAGwAAABtAAAALgAAADYAAAA=", cur_sc, $P503, $P505
    .const "LexInfo" $P501 = "cuid_1_1346233419.189"
    nqp_get_sc_object $P502, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 0
    $P503 = $P501."set_static_lexpad_value"("GLOBALish", $P502)
    .const "LexInfo" $P504 = "cuid_1_1346233419.189"
    $P505 = $P504."finish_static_lexpad"()
    .const "LexInfo" $P501 = "cuid_1_1346233419.189"
    nqp_get_sc_object $P502, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 0
    $P503 = $P501."set_static_lexpad_value"("$?PACKAGE", $P502)
    .const "LexInfo" $P504 = "cuid_1_1346233419.189"
    $P505 = $P504."finish_static_lexpad"()
    .const "LexInfo" $P501 = "cuid_1_1346233419.189"
    nqp_get_sc_object $P502, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 1
    $P503 = $P501."set_static_lexpad_value"("Archetypes", $P502)
    .const "LexInfo" $P504 = "cuid_1_1346233419.189"
    $P505 = $P504."finish_static_lexpad"()
    .const "LexInfo" $P501 = "cuid_12_1346233419.189"
    nqp_get_sc_object $P502, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 1
    $P503 = $P501."set_static_lexpad_value"("$?PACKAGE", $P502)
    .const "LexInfo" $P504 = "cuid_12_1346233419.189"
    $P505 = $P504."finish_static_lexpad"()
    .const "LexInfo" $P501 = "cuid_12_1346233419.189"
    nqp_get_sc_object $P502, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 1
    $P503 = $P501."set_static_lexpad_value"("$?CLASS", $P502)
    .const "LexInfo" $P504 = "cuid_12_1346233419.189"
    $P505 = $P504."finish_static_lexpad"()
    .const "LexInfo" $P501 = "cuid_1_1346233419.189"
    nqp_get_sc_object $P502, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 2
    $P503 = $P501."set_static_lexpad_value"("RoleToRoleApplier", $P502)
    .const "LexInfo" $P504 = "cuid_1_1346233419.189"
    $P505 = $P504."finish_static_lexpad"()
    .const "LexInfo" $P501 = "cuid_14_1346233419.189"
    nqp_get_sc_object $P502, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 2
    $P503 = $P501."set_static_lexpad_value"("$?PACKAGE", $P502)
    .const "LexInfo" $P504 = "cuid_14_1346233419.189"
    $P505 = $P504."finish_static_lexpad"()
    .const "LexInfo" $P501 = "cuid_14_1346233419.189"
    nqp_get_sc_object $P502, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 2
    $P503 = $P501."set_static_lexpad_value"("$?CLASS", $P502)
    .const "LexInfo" $P504 = "cuid_14_1346233419.189"
    $P505 = $P504."finish_static_lexpad"()
    .const "LexInfo" $P501 = "cuid_1_1346233419.189"
    nqp_get_sc_object $P502, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 3
    $P503 = $P501."set_static_lexpad_value"("NQPConcreteRoleHOW", $P502)
    .const "LexInfo" $P504 = "cuid_1_1346233419.189"
    $P505 = $P504."finish_static_lexpad"()
    .const "LexInfo" $P501 = "cuid_34_1346233419.189"
    nqp_get_sc_object $P502, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 3
    $P503 = $P501."set_static_lexpad_value"("$?PACKAGE", $P502)
    .const "LexInfo" $P504 = "cuid_34_1346233419.189"
    $P505 = $P504."finish_static_lexpad"()
    .const "LexInfo" $P501 = "cuid_34_1346233419.189"
    nqp_get_sc_object $P502, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 3
    $P503 = $P501."set_static_lexpad_value"("$?CLASS", $P502)
    .const "LexInfo" $P504 = "cuid_34_1346233419.189"
    $P505 = $P504."finish_static_lexpad"()
    .const "LexInfo" $P501 = "cuid_1_1346233419.189"
    nqp_get_sc_object $P502, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 4
    $P503 = $P501."set_static_lexpad_value"("RoleToClassApplier", $P502)
    .const "LexInfo" $P504 = "cuid_1_1346233419.189"
    $P505 = $P504."finish_static_lexpad"()
    .const "LexInfo" $P501 = "cuid_36_1346233419.189"
    nqp_get_sc_object $P502, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 4
    $P503 = $P501."set_static_lexpad_value"("$?PACKAGE", $P502)
    .const "LexInfo" $P504 = "cuid_36_1346233419.189"
    $P505 = $P504."finish_static_lexpad"()
    .const "LexInfo" $P501 = "cuid_36_1346233419.189"
    nqp_get_sc_object $P502, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 4
    $P503 = $P501."set_static_lexpad_value"("$?CLASS", $P502)
    .const "LexInfo" $P504 = "cuid_36_1346233419.189"
    $P505 = $P504."finish_static_lexpad"()
    .const "LexInfo" $P501 = "cuid_1_1346233419.189"
    nqp_get_sc_object $P502, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 5
    $P503 = $P501."set_static_lexpad_value"("NQPParametricRoleHOW", $P502)
    .const "LexInfo" $P504 = "cuid_1_1346233419.189"
    $P505 = $P504."finish_static_lexpad"()
    .const "LexInfo" $P501 = "cuid_55_1346233419.189"
    nqp_get_sc_object $P502, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 5
    $P503 = $P501."set_static_lexpad_value"("$?PACKAGE", $P502)
    .const "LexInfo" $P504 = "cuid_55_1346233419.189"
    $P505 = $P504."finish_static_lexpad"()
    .const "LexInfo" $P501 = "cuid_55_1346233419.189"
    nqp_get_sc_object $P502, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 5
    $P503 = $P501."set_static_lexpad_value"("$?CLASS", $P502)
    .const "LexInfo" $P504 = "cuid_55_1346233419.189"
    $P505 = $P504."finish_static_lexpad"()
    .const "LexInfo" $P501 = "cuid_1_1346233419.189"
    nqp_get_sc_object $P502, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 6
    $P503 = $P501."set_static_lexpad_value"("NQPClassHOW", $P502)
    .const "LexInfo" $P504 = "cuid_1_1346233419.189"
    $P505 = $P504."finish_static_lexpad"()
    .const "LexInfo" $P501 = "cuid_98_1346233419.189"
    nqp_get_sc_object $P502, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 6
    $P503 = $P501."set_static_lexpad_value"("$?PACKAGE", $P502)
    .const "LexInfo" $P504 = "cuid_98_1346233419.189"
    $P505 = $P504."finish_static_lexpad"()
    .const "LexInfo" $P501 = "cuid_98_1346233419.189"
    nqp_get_sc_object $P502, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 6
    $P503 = $P501."set_static_lexpad_value"("$?CLASS", $P502)
    .const "LexInfo" $P504 = "cuid_98_1346233419.189"
    $P505 = $P504."finish_static_lexpad"()
    .const "LexInfo" $P501 = "cuid_1_1346233419.189"
    nqp_get_sc_object $P502, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 7
    $P503 = $P501."set_static_lexpad_value"("NQPNativeHOW", $P502)
    .const "LexInfo" $P504 = "cuid_1_1346233419.189"
    $P505 = $P504."finish_static_lexpad"()
    .const "LexInfo" $P501 = "cuid_108_1346233419.189"
    nqp_get_sc_object $P502, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 7
    $P503 = $P501."set_static_lexpad_value"("$?PACKAGE", $P502)
    .const "LexInfo" $P504 = "cuid_108_1346233419.189"
    $P505 = $P504."finish_static_lexpad"()
    .const "LexInfo" $P501 = "cuid_108_1346233419.189"
    nqp_get_sc_object $P502, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 7
    $P503 = $P501."set_static_lexpad_value"("$?CLASS", $P502)
    .const "LexInfo" $P504 = "cuid_108_1346233419.189"
    $P505 = $P504."finish_static_lexpad"()
    .const "LexInfo" $P501 = "cuid_1_1346233419.189"
    nqp_get_sc_object $P502, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 8
    $P503 = $P501."set_static_lexpad_value"("NQPAttribute", $P502)
    .const "LexInfo" $P504 = "cuid_1_1346233419.189"
    $P505 = $P504."finish_static_lexpad"()
    .const "LexInfo" $P501 = "cuid_119_1346233419.189"
    nqp_get_sc_object $P502, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 8
    $P503 = $P501."set_static_lexpad_value"("$?PACKAGE", $P502)
    .const "LexInfo" $P504 = "cuid_119_1346233419.189"
    $P505 = $P504."finish_static_lexpad"()
    .const "LexInfo" $P501 = "cuid_119_1346233419.189"
    nqp_get_sc_object $P502, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 8
    $P503 = $P501."set_static_lexpad_value"("$?CLASS", $P502)
    .const "LexInfo" $P504 = "cuid_119_1346233419.189"
    $P505 = $P504."finish_static_lexpad"()
    .const "LexInfo" $P501 = "cuid_1_1346233419.189"
    nqp_get_sc_object $P502, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 9
    $P503 = $P501."set_static_lexpad_value"("NQPModuleHOW", $P502)
    .const "LexInfo" $P504 = "cuid_1_1346233419.189"
    $P505 = $P504."finish_static_lexpad"()
    .const "LexInfo" $P501 = "cuid_130_1346233419.189"
    nqp_get_sc_object $P502, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 9
    $P503 = $P501."set_static_lexpad_value"("$?PACKAGE", $P502)
    .const "LexInfo" $P504 = "cuid_130_1346233419.189"
    $P505 = $P504."finish_static_lexpad"()
    .const "LexInfo" $P501 = "cuid_130_1346233419.189"
    nqp_get_sc_object $P502, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 9
    $P503 = $P501."set_static_lexpad_value"("$?CLASS", $P502)
    .const "LexInfo" $P504 = "cuid_130_1346233419.189"
    $P505 = $P504."finish_static_lexpad"()
    .const "LexInfo" $P501 = "cuid_1_1346233419.189"
    nqp_get_sc_object $P502, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 10
    $P503 = $P501."set_static_lexpad_value"("EXPORTHOW", $P502)
    .const "LexInfo" $P504 = "cuid_1_1346233419.189"
    $P505 = $P504."finish_static_lexpad"()
    .const "LexInfo" $P501 = "cuid_131_1346233419.189"
    nqp_get_sc_object $P502, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 10
    $P503 = $P501."set_static_lexpad_value"("$?PACKAGE", $P502)
    .const "LexInfo" $P504 = "cuid_131_1346233419.189"
    $P505 = $P504."finish_static_lexpad"()
    .const "LexInfo" $P501 = "cuid_131_1346233419.189"
    nqp_get_sc_object $P502, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 10
    $P503 = $P501."set_static_lexpad_value"("$?CLASS", $P502)
    .const "LexInfo" $P504 = "cuid_131_1346233419.189"
    $P505 = $P504."finish_static_lexpad"()
    nqp_get_sc_object $P501, "9445C5406A048972164361D402A20067808C4578-1346233419.227", 0
    set_hll_global "GLOBAL", $P501
    .return () 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_207_1346233419.189") :anon :lex :outer("cuid_208_1346233419.189")
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
    new $P501, 'ResizablePMCArray'
    .const 'Sub' $P502 = "cuid_2_1346233419.189" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_3_1346233419.189" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_4_1346233419.189" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_5_1346233419.189" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_6_1346233419.189" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_7_1346233419.189" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_8_1346233419.189" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_9_1346233419.189" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_10_1346233419.189" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_11_1346233419.189" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_13_1346233419.189" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_15_1346233419.189" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_16_1346233419.189" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_17_1346233419.189" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_18_1346233419.189" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_19_1346233419.189" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_20_1346233419.189" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_21_1346233419.189" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_22_1346233419.189" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_23_1346233419.189" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_24_1346233419.189" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_25_1346233419.189" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_26_1346233419.189" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_27_1346233419.189" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_28_1346233419.189" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_29_1346233419.189" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_30_1346233419.189" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_31_1346233419.189" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_32_1346233419.189" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_33_1346233419.189" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_35_1346233419.189" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_37_1346233419.189" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_38_1346233419.189" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_39_1346233419.189" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_40_1346233419.189" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_41_1346233419.189" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_42_1346233419.189" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_43_1346233419.189" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_44_1346233419.189" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_45_1346233419.189" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_46_1346233419.189" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_47_1346233419.189" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_48_1346233419.189" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_49_1346233419.189" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_50_1346233419.189" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_51_1346233419.189" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_52_1346233419.189" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_53_1346233419.189" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_54_1346233419.189" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_56_1346233419.189" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_57_1346233419.189" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_58_1346233419.189" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_59_1346233419.189" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_60_1346233419.189" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_61_1346233419.189" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_62_1346233419.189" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_63_1346233419.189" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_64_1346233419.189" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_65_1346233419.189" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_66_1346233419.189" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_67_1346233419.189" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_68_1346233419.189" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_69_1346233419.189" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_70_1346233419.189" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_71_1346233419.189" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_72_1346233419.189" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_73_1346233419.189" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_74_1346233419.189" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_75_1346233419.189" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_76_1346233419.189" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_77_1346233419.189" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_78_1346233419.189" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_79_1346233419.189" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_80_1346233419.189" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_81_1346233419.189" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_82_1346233419.189" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_83_1346233419.189" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_84_1346233419.189" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_85_1346233419.189" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_86_1346233419.189" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_87_1346233419.189" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_88_1346233419.189" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_89_1346233419.189" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_90_1346233419.189" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_91_1346233419.189" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_92_1346233419.189" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_93_1346233419.189" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_94_1346233419.189" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_95_1346233419.189" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_96_1346233419.189" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_97_1346233419.189" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_99_1346233419.189" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_100_1346233419.189" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_101_1346233419.189" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_102_1346233419.189" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_103_1346233419.189" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_104_1346233419.189" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_105_1346233419.189" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_106_1346233419.189" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_107_1346233419.189" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_109_1346233419.189" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_110_1346233419.189" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_111_1346233419.189" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_112_1346233419.189" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_113_1346233419.189" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_114_1346233419.189" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_115_1346233419.189" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_116_1346233419.189" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_117_1346233419.189" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_118_1346233419.189" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_120_1346233419.189" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_121_1346233419.189" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_122_1346233419.189" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_123_1346233419.189" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_124_1346233419.189" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_125_1346233419.189" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_126_1346233419.189" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_127_1346233419.189" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_128_1346233419.189" 
    push $P501, $P502
    .const 'Sub' $P502 = "cuid_129_1346233419.189" 
    push $P501, $P502
    .return ($P501) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_209_1346233419.189") :load
.annotate 'file', "src\\stage2\\gen\\nqp-mo.pm"
    .const 'Sub' $P501 = "cuid_1_1346233419.189" 
    $P502 = $P501()
    .return ($P502) 
.end