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
.sub "" :subid("cuid_1_1347719896.673") :anon :lex
.annotate 'file', "src\\stage2\\NQPCORE.setting"
    .param pmc _lex_param_0 :slurpy 
    .const 'Sub' $P5057 = 'cuid_39_1347719896.673' 
    capture_lex $P5057 
    .const 'Sub' $P5057 = 'cuid_40_1347719896.673' 
    capture_lex $P5057 
    .const 'Sub' $P5057 = 'cuid_41_1347719896.673' 
    capture_lex $P5057 
    .const 'Sub' $P5057 = 'cuid_42_1347719896.673' 
    capture_lex $P5057 
    .const 'Sub' $P5057 = 'cuid_44_1347719896.673' 
    capture_lex $P5057 
    .const 'Sub' $P5057 = 'cuid_45_1347719896.673' 
    capture_lex $P5057 
    .const 'Sub' $P5057 = 'cuid_47_1347719896.673' 
    capture_lex $P5057 
    .const 'Sub' $P5057 = 'cuid_49_1347719896.673' 
    capture_lex $P5057 
    .const 'Sub' $P5057 = 'cuid_51_1347719896.673' 
    capture_lex $P5057 
    .const 'Sub' $P5057 = 'cuid_52_1347719896.673' 
    capture_lex $P5057 
    .const 'Sub' $P5057 = 'cuid_53_1347719896.673' 
    capture_lex $P5057 
    .const 'Sub' $P5057 = 'cuid_54_1347719896.673' 
    capture_lex $P5057 
    .const 'Sub' $P5057 = 'cuid_55_1347719896.673' 
    capture_lex $P5057 
    .const 'Sub' $P5057 = 'cuid_2_1347719896.673' 
    capture_lex $P5057 
    .const 'Sub' $P5057 = 'cuid_3_1347719896.673' 
    capture_lex $P5057 
    .const 'Sub' $P5057 = 'cuid_4_1347719896.673' 
    capture_lex $P5057 
    .const 'Sub' $P5057 = 'cuid_5_1347719896.673' 
    capture_lex $P5057 
    .const 'Sub' $P5057 = 'cuid_11_1347719896.673' 
    capture_lex $P5057 
    .const 'Sub' $P5057 = 'cuid_12_1347719896.673' 
    capture_lex $P5057 
    .const 'Sub' $P5057 = 'cuid_33_1347719896.673' 
    capture_lex $P5057 
    .const 'Sub' $P5057 = 'cuid_38_1347719896.673' 
    capture_lex $P5057 
    .lex "GLOBALish", $P101 
    .lex "$?PACKAGE", $P102 
    .lex "EXPORTHOW", $P103 
    .lex "int", $P104 
    .lex "num", $P105 
    .lex "str", $P106 
    .lex "NQPRoutine", $P107 
    .lex "NQPSignature", $P108 
    .lex "NQPMu", $P109 
    .lex "NQPCapture", $P110 
    .lex "&open", $P111 
    .lex "&close", $P112 
    .lex "&slurp", $P113 
    .lex "&spew", $P114 
    .lex "&print", $P115 
    .lex "&say", $P116 
    .lex "&match", $P117 
    .lex "&subst", $P118 
    .lex "&hash", $P119 
    .lex "$test_counter", $P120 
    .lex "$todo_upto_test_num", $P121 
    .lex "$todo_reason", $P122 
    .lex "&plan", $P123 
    .lex "&ok", $P124 
    .lex "&todo", $P125 
    .lex "&skip", $P126 
    .lex "@ARGS", _lex_param_0 
    .local pmc ctxsave 
    .const 'Sub' $P5001 = 'cuid_39_1347719896.673' 
    capture_lex $P5001
    set $P111, $P5001
    .const 'Sub' $P5002 = 'cuid_40_1347719896.673' 
    capture_lex $P5002
    set $P112, $P5002
    .const 'Sub' $P5003 = 'cuid_41_1347719896.673' 
    capture_lex $P5003
    set $P113, $P5003
    .const 'Sub' $P5004 = 'cuid_42_1347719896.673' 
    capture_lex $P5004
    set $P114, $P5004
    .const 'Sub' $P5005 = 'cuid_44_1347719896.673' 
    capture_lex $P5005
    set $P115, $P5005
    .const 'Sub' $P5006 = 'cuid_45_1347719896.673' 
    capture_lex $P5006
    set $P116, $P5006
    .const 'Sub' $P5007 = 'cuid_47_1347719896.673' 
    capture_lex $P5007
    set $P117, $P5007
    .const 'Sub' $P5008 = 'cuid_49_1347719896.673' 
    capture_lex $P5008
    set $P118, $P5008
    .const 'Sub' $P5009 = 'cuid_51_1347719896.673' 
    capture_lex $P5009
    set $P119, $P5009
    nqp_get_sc_object $P5010, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347719896.687", 7
    set $P120, $P5010
    nqp_get_sc_object $P5011, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347719896.687", 7
    set $P121, $P5011
    nqp_get_sc_object $P5012, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347719896.687", 7
    set $P122, $P5012
    .const 'Sub' $P5013 = 'cuid_52_1347719896.673' 
    capture_lex $P5013
    set $P123, $P5013
    .const 'Sub' $P5014 = 'cuid_53_1347719896.673' 
    capture_lex $P5014
    set $P124, $P5014
    .const 'Sub' $P5015 = 'cuid_54_1347719896.673' 
    capture_lex $P5015
    set $P125, $P5015
    .const 'Sub' $P5016 = 'cuid_55_1347719896.673' 
    capture_lex $P5016
    set $P126, $P5016
.annotate 'line', 1
    .const 'Sub' $P5017 = 'cuid_2_1347719896.673' 
    capture_lex $P5017
    $P5018 = $P5017()
    .const 'Sub' $P5019 = 'cuid_3_1347719896.673' 
    capture_lex $P5019
    $P5020 = $P5019()
    .const 'Sub' $P5021 = 'cuid_4_1347719896.673' 
    capture_lex $P5021
    $P5022 = $P5021()
    .const 'Sub' $P5023 = 'cuid_5_1347719896.673' 
    capture_lex $P5023
    $P5024 = $P5023()
    .const 'Sub' $P5025 = 'cuid_11_1347719896.673' 
    capture_lex $P5025
    $P5026 = $P5025()
    nqp_get_sc_object $P5027, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347719896.687", 5
    new $P5028, 'Hash'
    new $P5029, 'ResizablePMCArray'
    nqp_get_sc_object $P5030, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347719896.687", 5
    push $P5029, $P5030
    box $P5031, "$!do"
    push $P5029, $P5031
    set $P5028["invoke"], $P5029
    new $P5032, 'ResizablePMCArray'
    nqp_get_sc_object $P5033, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347719896.687", 5
    push $P5032, $P5033
    box $P5034, "$!do"
    push $P5032, $P5034
    set $P5028["get_string"], $P5032
    stable_publish_vtable_handler_mapping $P5027, $P5028
    nqp_get_sc_object $P5035, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347719896.687", 5
    null $P5036
    set_boolification_spec $P5035, 5, $P5036
    .const 'Sub' $P5037 = 'cuid_12_1347719896.673' 
    capture_lex $P5037
    $P5038 = $P5037()
    .const 'Sub' $P5039 = 'cuid_33_1347719896.673' 
    capture_lex $P5039
    $P5040 = $P5039()
    .const 'Sub' $P5041 = 'cuid_38_1347719896.673' 
    capture_lex $P5041
    $P5042 = $P5041()
    box $P5043, 0
    set $P120, $P5043
    box $P5044, 0
    set $P121, $P5044
    box $P5045, ""
    set $P122, $P5045
    find_dynamic_lex $P5046, "$*CTXSAVE"
    set ctxsave, $P5046
    isnull $I5001, ctxsave
    box $P5051, $I5001
    set $P5050, $P5051
    if $I5001 goto unless46_end117 
    can $I5002, ctxsave, "ctxsave"
    box $P5049, $I5002
    set $P5048, $P5049
    unless $I5002 goto if47_end119 
    $P5047 = ctxsave."ctxsave"()
    set $P5048, $P5047
  if47_end119:
    set $P5050, $P5048
  unless46_end117:
    set $P5056, _lex_param_0
    unless _lex_param_0 goto if48_end121 
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P5052, "ModuleLoader"
    getinterp $P5054
    set $P5053, $P5054["context"]
    $P5055 = $P5052."set_mainline_module"($P5053)
    set $P5056, $P5055
  if48_end121:
    .return () 
.end
.HLL "nqp"
.namespace []
.sub "open" :subid("cuid_39_1347719896.673") :anon :lex :outer("cuid_1_1347719896.673")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 282
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("r") :optional 
    .param int haz_param_1 :opt_flag 
    .param pmc _lex_param_2 :named("w") :optional 
    .param int haz_param_2 :opt_flag 
    .param pmc _lex_param_3 :named("a") :optional 
    .param int haz_param_3 :opt_flag 
    .param pmc _lex_param_4 :named("bin") :optional 
    .param int haz_param_4 :opt_flag 
    if haz_param_1, default16
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347719896.687", 7
    set _lex_param_1, $P5007
  default16:
    if haz_param_2, default17
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347719896.687", 7
    set _lex_param_2, $P5008
  default17:
    if haz_param_3, default18
    nqp_get_sc_object $P5009, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347719896.687", 7
    set _lex_param_3, $P5009
  default18:
    if haz_param_4, default19
    nqp_get_sc_object $P5010, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347719896.687", 7
    set _lex_param_4, $P5010
  default19:
    .lex "$mode", $P101 
    .lex "$handle", $P102 
    .lex "$filename", _lex_param_0 
    .lex "$r", _lex_param_1 
    .lex "$w", _lex_param_2 
    .lex "$a", _lex_param_3 
    .lex "$bin", _lex_param_4 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347719896.687", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347719896.687", 7
    set $P102, $P5002
    unless _lex_param_2 goto if10_else10 
    set $S5002, "w"
    goto if10_end11
  if10_else10:
    unless _lex_param_3 goto if11_else12 
    set $S5001, "wa"
    goto if11_end13
  if11_else12:
    set $S5001, "r"
  if11_end13:
    set $S5002, $S5001
  if10_end11:
    box $P5003, $S5002
    set $P101, $P5003
    new $P5004, "FileHandle"
    set $P102, $P5004
.annotate 'line', 285
    $P5005 = $P102."open"(_lex_param_0, $P101)
.annotate 'line', 286
    unless _lex_param_4 goto if12_else14 
    set $S5003, "binary"
    goto if12_end15
  if12_else14:
    set $S5003, "utf8"
  if12_end15:
    $P5006 = $P102."encoding"($S5003)
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "close" :subid("cuid_40_1347719896.673") :anon :lex :outer("cuid_1_1347719896.673")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 294
    .param pmc _lex_param_0 
    .lex "$handle", _lex_param_0 
.annotate 'line', 295
    $P5001 = _lex_param_0."close"()
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "slurp" :subid("cuid_41_1347719896.673") :anon :lex :outer("cuid_1_1347719896.673")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 302
    .param pmc _lex_param_0 
    .lex "$handle", $P101 
    .lex "$contents", $P102 
    .lex "$filename", _lex_param_0 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347719896.687", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347719896.687", 7
    set $P102, $P5002
.annotate 'line', 303
    $P5003 = "&open"(_lex_param_0, 1 :named("r"))
    set $P101, $P5003
.annotate 'line', 304
    $P5004 = $P101."readall"()
    set $P102, $P5004
.annotate 'line', 305
    $P5005 = $P101."close"()
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "spew" :subid("cuid_42_1347719896.673") :anon :lex :outer("cuid_1_1347719896.673")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 314
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$handle", $P101 
    .lex "$filename", _lex_param_0 
    .lex "$contents", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347719896.687", 7
    set $P101, $P5001
.annotate 'line', 315
    $P5002 = "&open"(_lex_param_0, 1 :named("w"))
    set $P101, $P5002
.annotate 'line', 316
    $P5003 = $P101."print"(_lex_param_1)
.annotate 'line', 317
    $P5004 = $P101."close"()
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "print" :subid("cuid_44_1347719896.673") :anon :lex :outer("cuid_1_1347719896.673")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 320
    .param pmc _lex_param_0 :slurpy 
    .const 'Sub' $P5006 = 'cuid_43_1347719896.673' 
    capture_lex $P5006 
    .lex "@args", _lex_param_0 
    set $P5001, _lex_param_0
    iter $P5003, _lex_param_0
  for_next20:
    unless $P5003, for_done22
    shift $P5005, $P5003
  for_redo21:
    .const 'Sub' $P5004 = 'cuid_43_1347719896.673' 
    capture_lex $P5004
    $P5001 = $P5004($P5005)
    goto for_next20
  for_done22:
    .return (1) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_43_1347719896.673") :anon :lex :outer("cuid_44_1347719896.673")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 321
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    set $S5001, _lex_param_0
    print $S5001
    .return ($S5001) 
.end
.HLL "nqp"
.namespace []
.sub "say" :subid("cuid_45_1347719896.673") :anon :lex :outer("cuid_1_1347719896.673")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 327
    .param pmc _lex_param_0 :slurpy 
    .lex "@args", _lex_param_0 
.annotate 'line', 328
    $P5001 = "&print"(_lex_param_0 :flat, "\n")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "match" :subid("cuid_47_1347719896.673") :anon :lex :outer("cuid_1_1347719896.673")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 345
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :named("global") :optional 
    .param int haz_param_5 :opt_flag 
    .const 'Sub' $P5007 = 'cuid_46_1347719896.673' 
    capture_lex $P5007 
    if haz_param_5, default30
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347719896.687", 7
    set _lex_param_2, $P5006
  default30:
    .lex "$match", $P101 
    .lex "$text", _lex_param_0 
    .lex "$regex", _lex_param_1 
    .lex "$global", _lex_param_2 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347719896.687", 7
    set $P101, $P5001
.annotate 'line', 346
    $P5002 = _lex_param_1."ACCEPTS"(_lex_param_0)
    set $P101, $P5002
    unless _lex_param_2 goto if13_else23 
    .const 'Sub' $P5003 = 'cuid_46_1347719896.673' 
    capture_lex $P5003
    $P5004 = $P5003()
    set $P5005, $P5004
    goto if13_end24
  if13_else23:
.annotate 'line', 355

    set $P5005, $P101
  if13_end24:
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_46_1347719896.673") :anon :lex :outer("cuid_47_1347719896.673")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 347
    .lex "@matches", $P101 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
  while14_test25:
    find_lex $P5002, "$match"
    set $P5012, $P5002
    unless $P5002 goto while14_done29 
  while14_redo27:
.annotate 'line', 349
.annotate 'line', 350
    find_lex $P5003, "$match"
    $P5004 = $P101."push"($P5003)
.annotate 'line', 351
    find_lex $P5005, "$match"
    $P5006 = $P5005."CURSOR"()
    find_lex $P5007, "$text"
    find_lex $P5008, "$regex"
    find_lex $P5009, "$match"
    $P5010 = $P5009."to"()
    $P5011 = $P5006."parse"($P5007, $P5008 :named("rule"), $P5010 :named("c"))
    store_lex "$match", $P5011
    set $P5012, $P5011
    goto while14_test25 
  while14_done29:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "subst" :subid("cuid_49_1347719896.673") :anon :lex :outer("cuid_1_1347719896.673")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 367
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 :named("global") :optional 
    .param int haz_param_6 :opt_flag 
    .const 'Sub' $P5022 = 'cuid_48_1347719896.673' 
    capture_lex $P5022 
    if haz_param_6, default44
    nqp_get_sc_object $P5021, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347719896.687", 7
    set _lex_param_3, $P5021
  default44:
    .lex "@matches", $P101 
    .lex "$is_code", $P102 
    .lex "$offset", $P103 
    .lex "$result", $P104 
    .lex "$chars", $P105 
    .lex "$text", _lex_param_0 
    .lex "$regex", _lex_param_1 
    .lex "$repl", _lex_param_2 
    .lex "$global", _lex_param_3 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347719896.687", 7
    set $P102, $P5002
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347719896.687", 7
    set $P103, $P5003
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347719896.687", 7
    set $P104, $P5004
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347719896.687", 7
    set $P105, $P5005
    unless _lex_param_3 goto if15_else31 
.annotate 'line', 368
    $P5006 = "&match"(_lex_param_0, _lex_param_1, 1 :named("global"))
    set $P5009, $P5006
    goto if15_end32
  if15_else31:
    new $P5007, 'ResizablePMCArray'
.annotate 'line', 369
    $P5008 = _lex_param_1."ACCEPTS"(_lex_param_0)
    push $P5007, $P5008
    set $P5009, $P5007
  if15_end32:
    set $P101, $P5009
    isa $I5001, _lex_param_2, "Sub"
    box $P5010, $I5001
    set $P102, $P5010
    box $P5011, 0
    set $P103, $P5011
    new $P5012, "StringBuilder"
    set $P104, $P5012
    set $P5013, $P101
    iter $P5015, $P101
  for_next39:
    unless $P5015, for_done41
    shift $P5017, $P5015
  for_redo40:
    .const 'Sub' $P5016 = 'cuid_48_1347719896.673' 
    capture_lex $P5016
    $P5013 = $P5016($P5017)
    goto for_next39
  for_done41:
    set $S5001, _lex_param_0
    length $I5002, $S5001
    box $P5018, $I5002
    set $P105, $P5018
    set $N5001, $P105
    set $N5002, $P103
    isgt $I5003, $N5001, $N5002
    box $P5020, $I5003
    set $P5019, $P5020
    unless $I5003 goto if19_end43 
    set $S5003, _lex_param_0
    set $I5004, $P103
    set $I5005, $P105
    substr $S5002, $S5003, $I5004, $I5005
    push $P104, $S5002
    set $P5019, $P104
  if19_end43:
    set $S5004, $P104
    .return ($S5004) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_48_1347719896.673") :anon :lex :outer("cuid_49_1347719896.673")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 374
    .param pmc _lex_param_0 
    .lex "$match", _lex_param_0 
    set $P5017, _lex_param_0
    unless _lex_param_0 goto if16_end34 
.annotate 'line', 375
.annotate 'line', 377
    $P5001 = _lex_param_0."from"()
    set $N5001, $P5001
    find_lex $P5002, "$offset"
    set $N5002, $P5002
    isgt $I5001, $N5001, $N5002
    box $P5009, $I5001
    set $P5008, $P5009
    unless $I5001 goto if17_end36 
    find_lex $P5003, "$result"
    find_lex $P5004, "$text"
    set $S5002, $P5004
    find_lex $P5005, "$offset"
    set $I5002, $P5005
.annotate 'line', 376
    $P5006 = _lex_param_0."from"()
    set $N5004, $P5006
    find_lex $P5007, "$offset"
    set $N5005, $P5007
    sub $N5003, $N5004, $N5005
    set $I5003, $N5003
    substr $S5001, $S5002, $I5002, $I5003
    push $P5003, $S5001
    set $P5008, $P5003
  if17_end36:
    find_lex $P5010, "$result"
    find_lex $P5011, "$is_code"
    unless $P5011 goto if18_else37 
.annotate 'line', 378
    find_lex $P5012, "$repl"
    $P5013 = $P5012(_lex_param_0)
    set $P5015, $P5013
    goto if18_end38
  if18_else37:
    find_lex $P5014, "$repl"
    set $P5015, $P5014
  if18_end38:
    set $S5003, $P5015
    push $P5010, $S5003
.annotate 'line', 379
    $P5016 = _lex_param_0."to"()
    store_lex "$offset", $P5016
    set $P5017, $P5016
  if16_end34:
    .return ($P5017) 
.end
.HLL "nqp"
.namespace []
.sub "hash" :subid("cuid_51_1347719896.673") :anon :lex :outer("cuid_1_1347719896.673")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 393
    .param pmc _lex_param_0 :slurpy :named 
    .const 'Sub' $P5007 = 'cuid_50_1347719896.673' 
    capture_lex $P5007 
    .lex "%h", $P101 
    .lex "%new", _lex_param_0 
    new $P5001, 'Hash'
    set $P101, $P5001
    set $P5002, _lex_param_0
    iter $P5004, _lex_param_0
  for_next46:
    unless $P5004, for_done48
    shift $P5006, $P5004
  for_redo47:
    .const 'Sub' $P5005 = 'cuid_50_1347719896.673' 
    capture_lex $P5005
    $P5002 = $P5005($P5006)
    goto for_next46
  for_done48:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_50_1347719896.673") :anon :lex :outer("cuid_51_1347719896.673")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 395
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5001, "%h"
    set $S5001, _lex_param_0
    find_lex $P5003, "%new"
    set $S5002, _lex_param_0
    set $P5002, $P5003[$S5002]
    unless_null $P5002, fallback45
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347719896.687", 7
    set $P5002, $P5004
  fallback45:
    set $P5001[$S5001], $P5002
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "plan" :subid("cuid_52_1347719896.673") :anon :lex :outer("cuid_1_1347719896.673")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 406
    .param pmc _lex_param_0 
    .lex "$quantity", _lex_param_0 
.annotate 'line', 407
    set $S5002, _lex_param_0
    concat $S5001, "1..", $S5002
    $P5001 = "&say"($S5001)
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "ok" :subid("cuid_53_1347719896.673") :anon :lex :outer("cuid_1_1347719896.673")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 410
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :optional 
    .param int haz_param_7 :opt_flag 
    if haz_param_7, default57
    nqp_get_sc_object $P5016, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347719896.687", 7
    set _lex_param_1, $P5016
  default57:
    .lex "$condition", _lex_param_0 
    .lex "$desc", _lex_param_1 
    find_lex $P5001, "$test_counter"
    set $N5002, $P5001
    set $N5003, 1
    add $N5001, $N5002, $N5003
    box $P5002, $N5001
    store_lex "$test_counter", $P5002
    set $P5004, _lex_param_0
    if _lex_param_0 goto unless20_end50 
.annotate 'line', 413
.annotate 'line', 414
    $P5003 = "&print"("not ")
    set $P5004, $P5003
  unless20_end50:
.annotate 'line', 416
    find_lex $P5005, "$test_counter"
    set $S5002, $P5005
    concat $S5001, "ok ", $S5002
    $P5006 = "&print"($S5001)
    set $P5008, _lex_param_1
    unless _lex_param_1 goto if21_end52 
.annotate 'line', 417
.annotate 'line', 418
    set $S5004, _lex_param_1
    concat $S5003, " - ", $S5004
    $P5007 = "&print"($S5003)
    set $P5008, $P5007
  if21_end52:
    find_lex $P5009, "$test_counter"
    set $N5004, $P5009
    find_lex $P5010, "$todo_upto_test_num"
    set $N5005, $P5010
    isle $I5001, $N5004, $N5005
    box $P5014, $I5001
    set $P5013, $P5014
    unless $I5001 goto if22_end54 
.annotate 'line', 420
.annotate 'line', 421
    find_lex $P5011, "$todo_reason"
    $P5012 = "&print"($P5011)
    set $P5013, $P5012
  if22_end54:
.annotate 'line', 423
    $P5015 = "&print"("\n")
    unless _lex_param_0 goto if23_else55 
    set $I5002, 1
    goto if23_end56
  if23_else55:
    set $I5002, 0
  if23_end56:
    .return ($I5002) 
.end
.HLL "nqp"
.namespace []
.sub "todo" :subid("cuid_54_1347719896.673") :anon :lex :outer("cuid_1_1347719896.673")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 428
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$reason", _lex_param_0 
    .lex "$count", _lex_param_1 
    find_lex $P5001, "$test_counter"
    set $N5002, $P5001
    set $N5003, _lex_param_1
    add $N5001, $N5002, $N5003
    box $P5002, $N5001
    store_lex "$todo_upto_test_num", $P5002
    set $S5002, _lex_param_0
    concat $S5001, "# TODO ", $S5002
    box $P5003, $S5001
    store_lex "$todo_reason", $P5003
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "skip" :subid("cuid_55_1347719896.673") :anon :lex :outer("cuid_1_1347719896.673")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 433
    .param pmc _lex_param_0 
    .lex "$desc", _lex_param_0 
    find_lex $P5001, "$test_counter"
    set $N5002, $P5001
    set $N5003, 1
    add $N5001, $N5002, $N5003
    box $P5002, $N5001
    store_lex "$test_counter", $P5002
.annotate 'line', 435
    find_lex $P5003, "$test_counter"
    set $S5005, $P5003
    concat $S5004, "ok ", $S5005
    concat $S5003, $S5004, " # SKIP "
    set $S5006, _lex_param_0
    concat $S5002, $S5003, $S5006
    concat $S5001, $S5002, "\n"
    $P5004 = "&say"($S5001)
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_2_1347719896.673") :anon :lex :outer("cuid_1_1347719896.673")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 12
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    get_who $P5001, $P101
    get_who $P5003, $P101
    set $P5002, $P5003["NQPModuleHOW"]
    unless_null $P5002, fallback58
    get_hll_global $P5006, "GLOBAL"
    get_who $P5005, $P5006
    set $P5004, $P5005["NQPModuleHOW"]
    unless_null $P5004, vivi_2459
    null $P5007
    set $P5004, $P5007
  vivi_2459:
    set $P5002, $P5004
  fallback58:
    set $P5001["module"], $P5002
    get_who $P5008, $P101
    get_who $P5010, $P101
    set $P5009, $P5010["NQPClassHOW"]
    unless_null $P5009, fallback60
    get_hll_global $P5013, "GLOBAL"
    get_who $P5012, $P5013
    set $P5011, $P5012["NQPClassHOW"]
    unless_null $P5011, vivi_2561
    null $P5014
    set $P5011, $P5014
  vivi_2561:
    set $P5009, $P5011
  fallback60:
    set $P5008["class"], $P5009
    get_who $P5015, $P101
    get_who $P5017, $P101
    set $P5016, $P5017["NQPAttribute"]
    unless_null $P5016, fallback62
    get_hll_global $P5020, "GLOBAL"
    get_who $P5019, $P5020
    set $P5018, $P5019["NQPAttribute"]
    unless_null $P5018, vivi_2663
    null $P5021
    set $P5018, $P5021
  vivi_2663:
    set $P5016, $P5018
  fallback62:
    set $P5015["class-attr"], $P5016
    get_who $P5022, $P101
    get_who $P5024, $P101
    set $P5023, $P5024["NQPClassHOW"]
    unless_null $P5023, fallback64
    get_hll_global $P5027, "GLOBAL"
    get_who $P5026, $P5027
    set $P5025, $P5026["NQPClassHOW"]
    unless_null $P5025, vivi_2765
    null $P5028
    set $P5025, $P5028
  vivi_2765:
    set $P5023, $P5025
  fallback64:
    set $P5022["grammar"], $P5023
    get_who $P5029, $P101
    get_who $P5031, $P101
    set $P5030, $P5031["NQPAttribute"]
    unless_null $P5030, fallback66
    get_hll_global $P5034, "GLOBAL"
    get_who $P5033, $P5034
    set $P5032, $P5033["NQPAttribute"]
    unless_null $P5032, vivi_2867
    null $P5035
    set $P5032, $P5035
  vivi_2867:
    set $P5030, $P5032
  fallback66:
    set $P5029["grammar-attr"], $P5030
    get_who $P5036, $P101
    get_who $P5038, $P101
    set $P5037, $P5038["NQPParametricRoleHOW"]
    unless_null $P5037, fallback68
    get_hll_global $P5041, "GLOBAL"
    get_who $P5040, $P5041
    set $P5039, $P5040["NQPParametricRoleHOW"]
    unless_null $P5039, vivi_2969
    null $P5042
    set $P5039, $P5042
  vivi_2969:
    set $P5037, $P5039
  fallback68:
    set $P5036["role"], $P5037
    get_who $P5043, $P101
    get_who $P5045, $P101
    set $P5044, $P5045["NQPAttribute"]
    unless_null $P5044, fallback70
    get_hll_global $P5048, "GLOBAL"
    get_who $P5047, $P5048
    set $P5046, $P5047["NQPAttribute"]
    unless_null $P5046, vivi_3071
    null $P5049
    set $P5046, $P5049
  vivi_3071:
    set $P5044, $P5046
  fallback70:
    set $P5043["role-attr"], $P5044
    get_who $P5050, $P101
    get_who $P5052, $P101
    set $P5051, $P5052["NQPNativeHOW"]
    unless_null $P5051, fallback72
    get_hll_global $P5055, "GLOBAL"
    get_who $P5054, $P5055
    set $P5053, $P5054["NQPNativeHOW"]
    unless_null $P5053, vivi_3173
    null $P5056
    set $P5053, $P5056
  vivi_3173:
    set $P5051, $P5053
  fallback72:
    set $P5050["native"], $P5051
    .return ($P5051) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_3_1347719896.673") :anon :lex :outer("cuid_1_1347719896.673")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 23
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    null $P5001
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_4_1347719896.673") :anon :lex :outer("cuid_1_1347719896.673")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 25
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    null $P5001
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_5_1347719896.673") :anon :lex :outer("cuid_1_1347719896.673")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 27
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    null $P5001
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_11_1347719896.673") :anon :lex :outer("cuid_1_1347719896.673")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 30
    .const 'Sub' $P5006 = 'cuid_6_1347719896.673' 
    capture_lex $P5006 
    .const 'Sub' $P5006 = 'cuid_7_1347719896.673' 
    capture_lex $P5006 
    .const 'Sub' $P5006 = 'cuid_8_1347719896.673' 
    capture_lex $P5006 
    .const 'Sub' $P5006 = 'cuid_9_1347719896.673' 
    capture_lex $P5006 
    .const 'Sub' $P5006 = 'cuid_10_1347719896.673' 
    capture_lex $P5006 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_6_1347719896.673' 
    capture_lex $P5001
    .const 'Sub' $P5002 = 'cuid_7_1347719896.673' 
    capture_lex $P5002
    .const 'Sub' $P5003 = 'cuid_8_1347719896.673' 
    capture_lex $P5003
    .const 'Sub' $P5004 = 'cuid_9_1347719896.673' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_10_1347719896.673' 
    capture_lex $P5005
    .return ($P5005) 
.end
.loadlib "nqp_group"
.loadlib "nqp_ops"
.loadlib "nqp_bigint_ops"
.loadlib "trans_ops"
.loadlib "io_ops"
.loadlib "nqp_group"
.loadlib "nqp_ops"
.loadlib "nqp_bigint_ops"
.loadlib "trans_ops"
.loadlib "io_ops"
.loadlib "nqp_group"
.loadlib "nqp_ops"
.loadlib "nqp_bigint_ops"
.loadlib "trans_ops"
.loadlib "io_ops"
.loadlib "nqp_group"
.loadlib "nqp_ops"
.loadlib "nqp_bigint_ops"
.loadlib "trans_ops"
.loadlib "io_ops"
.loadlib "nqp_group"
.loadlib "nqp_ops"
.loadlib "nqp_bigint_ops"
.loadlib "trans_ops"
.loadlib "io_ops"
.loadlib "nqp_group"
.loadlib "nqp_ops"
.loadlib "nqp_bigint_ops"
.loadlib "trans_ops"
.loadlib "io_ops"
.loadlib "nqp_group"
.loadlib "nqp_ops"
.loadlib "nqp_bigint_ops"
.loadlib "trans_ops"
.loadlib "io_ops"
.HLL "nqp"
.namespace []
.sub "add_dispatchee" :subid("cuid_6_1347719896.673") :anon :lex :outer("cuid_11_1347719896.673")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 35
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$code", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347719896.687", 5
    null $P5003
    repr_bind_attr_obj $P5001, $P5002, "$!dispatch_cache", $P5003
.annotate 'line', 37
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347719896.687", 5
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!dispatchees"
    $P5007 = $P5006."push"(_lex_param_1)
    .return ($P5007) 
.end
.loadlib "nqp_group"
.loadlib "nqp_ops"
.loadlib "nqp_bigint_ops"
.loadlib "trans_ops"
.loadlib "io_ops"
.loadlib "nqp_group"
.loadlib "nqp_ops"
.loadlib "nqp_bigint_ops"
.loadlib "trans_ops"
.loadlib "io_ops"
.loadlib "nqp_group"
.loadlib "nqp_ops"
.loadlib "nqp_bigint_ops"
.loadlib "trans_ops"
.loadlib "io_ops"
.loadlib "nqp_group"
.loadlib "nqp_ops"
.loadlib "nqp_bigint_ops"
.loadlib "trans_ops"
.loadlib "io_ops"
.loadlib "nqp_group"
.loadlib "nqp_ops"
.loadlib "nqp_bigint_ops"
.loadlib "trans_ops"
.loadlib "io_ops"
.loadlib "nqp_group"
.loadlib "nqp_ops"
.loadlib "nqp_bigint_ops"
.loadlib "trans_ops"
.loadlib "io_ops"
.loadlib "nqp_group"
.loadlib "nqp_ops"
.loadlib "nqp_bigint_ops"
.loadlib "trans_ops"
.loadlib "io_ops"
.HLL "nqp"
.namespace []
.sub "is_dispatcher" :subid("cuid_7_1347719896.673") :anon :lex :outer("cuid_11_1347719896.673")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 39
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347719896.687", 5
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!dispatchees"
    defined $I5001, $P5003
    .return ($I5001) 
.end
.HLL "nqp"
.namespace []
.sub "derive_dispatcher" :subid("cuid_8_1347719896.673") :anon :lex :outer("cuid_11_1347719896.673")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 42
    .param pmc _lex_param_0 
    .lex "$do", $P101 
    .lex "$der", $P102 
    .lex "$clone_callback", $P103 
    .lex "self", _lex_param_0 
    null $P5001
    set $P101, $P5001
    null $P5002
    set $P102, $P5002
    null $P5003
    set $P103, $P5003
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347719896.687", 5
    repr_get_attr_obj $P5007, $P5005, $P5006, "$!do"
    clone $P5004, $P5007
    set $P101, $P5004
    nqp_decontainerize $P5009, _lex_param_0
    repr_clone $P5008, $P5009
    set $P102, $P5008
    nqp_get_sc_object $P5010, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347719896.687", 5
    setattribute $P102, $P5010, "$!do", $P101
    nqp_get_sc_object $P5011, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347719896.687", 5
    nqp_decontainerize $P5013, _lex_param_0
    nqp_get_sc_object $P5014, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347719896.687", 5
    repr_get_attr_obj $P5015, $P5013, $P5014, "$!dispatchees"
    clone $P5012, $P5015
    setattribute $P102, $P5011, "$!dispatchees", $P5012
    set_sub_code_object $P101, $P102
    nqp_decontainerize $P5017, _lex_param_0
    nqp_get_sc_object $P5018, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347719896.687", 5
    repr_get_attr_obj $P5019, $P5017, $P5018, "$!do"
    getprop $P5016, $P5019, "CLONE_CALLBACK"
    set $P103, $P5016
    defined $I5001, $P103
    box $P5025, $I5001
    set $P5024, $P5025
    unless $I5001 goto if32_end75 
.annotate 'line', 54
.annotate 'line', 55
    nqp_decontainerize $P5020, _lex_param_0
    nqp_get_sc_object $P5021, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347719896.687", 5
    repr_get_attr_obj $P5022, $P5020, $P5021, "$!do"
    $P5023 = $P103($P5022, $P101, $P102)
    set $P5024, $P5023
  if32_end75:
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "clone" :subid("cuid_9_1347719896.673") :anon :lex :outer("cuid_11_1347719896.673")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 60
    .param pmc _lex_param_0 
    .lex "$do", $P101 
    .lex "$der", $P102 
    .lex "$clone_callback", $P103 
    .lex "self", _lex_param_0 
    null $P5001
    set $P101, $P5001
    null $P5002
    set $P102, $P5002
    null $P5003
    set $P103, $P5003
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347719896.687", 5
    repr_get_attr_obj $P5007, $P5005, $P5006, "$!do"
    clone $P5004, $P5007
    set $P101, $P5004
    nqp_decontainerize $P5009, _lex_param_0
    repr_clone $P5008, $P5009
    set $P102, $P5008
    nqp_get_sc_object $P5010, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347719896.687", 5
    setattribute $P102, $P5010, "$!do", $P101
    set_sub_code_object $P101, $P102
    nqp_decontainerize $P5012, _lex_param_0
    nqp_get_sc_object $P5013, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347719896.687", 5
    repr_get_attr_obj $P5014, $P5012, $P5013, "$!do"
    getprop $P5011, $P5014, "CLONE_CALLBACK"
    set $P103, $P5011
    defined $I5001, $P103
    box $P5020, $I5001
    set $P5019, $P5020
    unless $I5001 goto if33_end77 
.annotate 'line', 71
.annotate 'line', 72
    nqp_decontainerize $P5015, _lex_param_0
    nqp_get_sc_object $P5016, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347719896.687", 5
    repr_get_attr_obj $P5017, $P5015, $P5016, "$!do"
    $P5018 = $P103($P5017, $P101, $P102)
    set $P5019, $P5018
  if33_end77:
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "nqpattr" :subid("cuid_10_1347719896.673") :anon :lex :outer("cuid_11_1347719896.673")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 77
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$key", _lex_param_1 
.annotate 'line', 78
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347719896.687", 5
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!do"
    $P5004 = $P5003."nqpattr"(_lex_param_1)
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_12_1347719896.673") :anon :lex :outer("cuid_1_1347719896.673")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 87
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .return () 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_33_1347719896.673") :anon :lex :outer("cuid_1_1347719896.673")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 93
    .const 'Sub' $P5021 = 'cuid_13_1347719896.673' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_14_1347719896.673' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_15_1347719896.673' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_16_1347719896.673' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_17_1347719896.673' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_18_1347719896.673' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_19_1347719896.673' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_20_1347719896.673' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_21_1347719896.673' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_22_1347719896.673' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_23_1347719896.673' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_24_1347719896.673' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_25_1347719896.673' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_26_1347719896.673' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_27_1347719896.673' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_28_1347719896.673' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_29_1347719896.673' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_30_1347719896.673' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_31_1347719896.673' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_32_1347719896.673' 
    capture_lex $P5021 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_13_1347719896.673' 
    capture_lex $P5001
    .const 'Sub' $P5002 = 'cuid_14_1347719896.673' 
    capture_lex $P5002
    .const 'Sub' $P5003 = 'cuid_15_1347719896.673' 
    capture_lex $P5003
    .const 'Sub' $P5004 = 'cuid_16_1347719896.673' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_17_1347719896.673' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_18_1347719896.673' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_19_1347719896.673' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_20_1347719896.673' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_21_1347719896.673' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_22_1347719896.673' 
    capture_lex $P5010
    .const 'Sub' $P5011 = 'cuid_23_1347719896.673' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_24_1347719896.673' 
    capture_lex $P5012
    .const 'Sub' $P5013 = 'cuid_25_1347719896.673' 
    capture_lex $P5013
    .const 'Sub' $P5014 = 'cuid_26_1347719896.673' 
    capture_lex $P5014
    .const 'Sub' $P5015 = 'cuid_27_1347719896.673' 
    capture_lex $P5015
    .const 'Sub' $P5016 = 'cuid_28_1347719896.673' 
    capture_lex $P5016
    .const 'Sub' $P5017 = 'cuid_29_1347719896.673' 
    capture_lex $P5017
    .const 'Sub' $P5018 = 'cuid_30_1347719896.673' 
    capture_lex $P5018
    .const 'Sub' $P5019 = 'cuid_31_1347719896.673' 
    capture_lex $P5019
    .const 'Sub' $P5020 = 'cuid_32_1347719896.673' 
    capture_lex $P5020
    .return ($P5020) 
.end
.HLL "nqp"
.namespace []
.sub "CREATE" :subid("cuid_13_1347719896.673") :anon :lex :outer("cuid_33_1347719896.673")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 94
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5002, _lex_param_0
    repr_instance_of $P5001, $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "bless" :subid("cuid_14_1347719896.673") :anon :lex :outer("cuid_33_1347719896.673")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 98
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy :named 
    .lex "self", $P101 
    .lex "$instance", $P102 
    .lex "$self", _lex_param_0 
    .lex "%attributes", _lex_param_1 
    set $P101, _lex_param_0
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347719896.687", 7
    set $P102, $P5001
.annotate 'line', 99
    nqp_decontainerize $P5002, $P101
    $P5003 = $P5002."CREATE"()
    set $P102, $P5003
.annotate 'line', 100
    $P5004 = $P102."BUILDALL"(_lex_param_1 :flat :named)
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "BUILDALL" :subid("cuid_15_1347719896.673") :anon :lex :outer("cuid_33_1347719896.673")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 104
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy :named 
    .const 'Sub' $P5015 = 'cuid_57_1347719896.673' 
    capture_lex $P5015 
    .lex "self", $P101 
    .lex "$build_plan", $P102 
    .lex "$count", $P103 
    .lex "$i", $P104 
    .lex "$self", _lex_param_0 
    .lex "%attrinit", _lex_param_1 
    set $P101, _lex_param_0
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347719896.687", 7
    set $P102, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347719896.687", 7
    set $P103, $P5002
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347719896.687", 7
    set $P104, $P5003
.annotate 'line', 106
    nqp_decontainerize $P5005, $P101
    get_how $P5004, $P5005
    nqp_decontainerize $P5006, $P101
    $P5007 = $P5004."BUILDALLPLAN"($P5006)
    set $P102, $P5007
    elements $I5001, $P102
    box $P5008, $I5001
    set $P103, $P5008
    box $P5009, 0
    set $P104, $P5009
  while34_test78:
    set $N5001, $P104
    set $N5002, $P103
    islt $I5002, $N5001, $N5002
    box $P5013, $I5002
    set $P5012, $P5013
    unless $I5002 goto while34_done82 
  while34_redo80:
    .const 'Sub' $P5010 = 'cuid_57_1347719896.673' 
    capture_lex $P5010
    $P5011 = $P5010()
    set $P5012, $P5011
    goto while34_test78 
  while34_done82:
    nqp_decontainerize $P5014, $P101
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_57_1347719896.673") :anon :lex :outer("cuid_15_1347719896.673")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 109
    .const 'Sub' $P5027 = 'cuid_56_1347719896.673' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_58_1347719896.673' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_59_1347719896.673' 
    capture_lex $P5027 
    .lex "$task", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347719896.687", 7
    set $P101, $P5001
    find_lex $P5003, "$build_plan"
    find_lex $P5004, "$i"
    set $I5001, $P5004
    set $P5002, $P5003[$I5001]
    set $P101, $P5002
    find_lex $P5005, "$i"
    set $N5002, $P5005
    set $N5003, 1
    add $N5001, $N5002, $N5003
    box $P5006, $N5001
    store_lex "$i", $P5006
    set $P5007, $P101[0]
    set $I5003, $P5007
    iseq $I5002, $I5003, 0
    unless $I5002 goto if35_else83 
.annotate 'line', 112
.annotate 'line', 114
    find_lex $P5010, "self"
    nqp_decontainerize $P5009, $P5010
    find_lex $P5011, "%attrinit"
    set $P5008, $P101[1]
    $P5012 = $P5008($P5009, $P5011 :flat :named)
    set $P5026, $P5012
    goto if35_end84
  if35_else83:
    set $P5013, $P101[0]
    set $I5005, $P5013
    iseq $I5004, $I5005, 1
    unless $I5004 goto if36_else85 
    .const 'Sub' $P5014 = 'cuid_56_1347719896.673' 
    capture_lex $P5014
    $P5015 = $P5014()
    set $P5025, $P5015
    goto if36_end86
  if36_else85:
    set $P5016, $P101[0]
    set $I5007, $P5016
    iseq $I5006, $I5007, 2
    unless $I5006 goto if38_else90 
    .const 'Sub' $P5017 = 'cuid_58_1347719896.673' 
    capture_lex $P5017
    $P5018 = $P5017()
    set $P5024, $P5018
    goto if38_end91
  if38_else90:
    set $P5019, $P101[0]
    set $I5009, $P5019
    iseq $I5008, $I5009, 3
    unless $I5008 goto if40_else95 
    .const 'Sub' $P5020 = 'cuid_59_1347719896.673' 
    capture_lex $P5020
    $P5021 = $P5020()
    set $P5023, $P5021
    goto if40_end96
  if40_else95:
.annotate 'line', 152
    box $P5022, "Invalid BUILDALLPLAN"
    die $P5022
    set $P5023, $P5022
  if40_end96:
    set $P5024, $P5023
  if38_end91:
    set $P5025, $P5024
  if36_end86:
    set $P5026, $P5025
  if35_end84:
    .return ($P5026) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_56_1347719896.673") :anon :lex :outer("cuid_57_1347719896.673")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 116
    .lex "$key_name", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347719896.687", 7
    set $P101, $P5001
    find_lex $P5003, "$task"
    set $P5002, $P5003[2]
    set $P101, $P5002
    find_lex $P5004, "%attrinit"
    set $S5001, $P101
    exists $I5001, $P5004[$S5001]
    box $P5014, $I5001
    set $P5013, $P5014
    unless $I5001 goto if37_end88 
.annotate 'line', 119
    find_lex $P5006, "self"
    nqp_decontainerize $P5005, $P5006
    find_lex $P5008, "$task"
    set $P5007, $P5008[1]
    find_lex $P5009, "$task"
    set $S5002, $P5009[3]
    find_lex $P5011, "%attrinit"
    set $S5003, $P101
    set $P5010, $P5011[$S5003]
    unless_null $P5010, fallback89
    nqp_get_sc_object $P5012, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347719896.687", 7
    set $P5010, $P5012
  fallback89:
    setattribute $P5005, $P5007, $S5002, $P5010
    set $P5013, $P5010
  if37_end88:
    .return ($P5013) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_58_1347719896.673") :anon :lex :outer("cuid_57_1347719896.673")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 123
    .lex "$key_name", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347719896.687", 7
    set $P101, $P5001
    find_lex $P5003, "$task"
    set $P5002, $P5003[2]
    set $P101, $P5002
    find_lex $P5004, "%attrinit"
    set $S5001, $P101
    exists $I5001, $P5004[$S5001]
    unless $I5001 goto if39_else92 
.annotate 'line', 127
    find_lex $P5006, "self"
    nqp_decontainerize $P5005, $P5006
    find_lex $P5008, "$task"
    set $P5007, $P5008[1]
    find_lex $P5009, "$task"
    set $S5002, $P5009[3]
    find_lex $P5011, "%attrinit"
    set $S5003, $P101
    set $P5010, $P5011[$S5003]
    unless_null $P5010, fallback94
    nqp_get_sc_object $P5012, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347719896.687", 7
    set $P5010, $P5012
  fallback94:
    setattribute $P5005, $P5007, $S5002, $P5010
    set $P5019, $P5010
    goto if39_end93
  if39_else92:
.annotate 'line', 130
    find_lex $P5014, "self"
    nqp_decontainerize $P5013, $P5014
    find_lex $P5016, "$task"
    set $P5015, $P5016[1]
    find_lex $P5017, "$task"
    set $S5004, $P5017[3]
    new $P5018, 'ResizablePMCArray'
    setattribute $P5013, $P5015, $S5004, $P5018
    set $P5019, $P5018
  if39_end93:
    .return ($P5019) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_59_1347719896.673") :anon :lex :outer("cuid_57_1347719896.673")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 134
    .lex "$key_name", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347719896.687", 7
    set $P101, $P5001
    find_lex $P5003, "$task"
    set $P5002, $P5003[2]
    set $P101, $P5002
    find_lex $P5004, "%attrinit"
    set $S5001, $P101
    exists $I5001, $P5004[$S5001]
    unless $I5001 goto if41_else97 
.annotate 'line', 138
    find_lex $P5006, "self"
    nqp_decontainerize $P5005, $P5006
    find_lex $P5008, "$task"
    set $P5007, $P5008[1]
    find_lex $P5009, "$task"
    set $S5002, $P5009[3]
    find_lex $P5011, "%attrinit"
    set $S5003, $P101
    set $P5010, $P5011[$S5003]
    unless_null $P5010, fallback99
    nqp_get_sc_object $P5012, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347719896.687", 7
    set $P5010, $P5012
  fallback99:
    setattribute $P5005, $P5007, $S5002, $P5010
    set $P5019, $P5010
    goto if41_end98
  if41_else97:
.annotate 'line', 141
    find_lex $P5014, "self"
    nqp_decontainerize $P5013, $P5014
    find_lex $P5016, "$task"
    set $P5015, $P5016[1]
    find_lex $P5017, "$task"
    set $S5004, $P5017[3]
    new $P5018, 'Hash'
    setattribute $P5013, $P5015, $S5004, $P5018
    set $P5019, $P5018
  if41_end98:
    .return ($P5019) 
.end
.HLL "nqp"
.namespace []
.sub "new" :subid("cuid_16_1347719896.673") :anon :lex :outer("cuid_33_1347719896.673")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 159
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy :named 
    .lex "self", _lex_param_0 
    .lex "%attributes", _lex_param_1 
.annotate 'line', 160
    nqp_decontainerize $P5001, _lex_param_0
    $P5002 = $P5001."bless"(_lex_param_1 :flat :named)
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "Str" :subid("cuid_17_1347719896.673") :anon :lex :outer("cuid_33_1347719896.673")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 163
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    multi_dispatch_over_lexical_candidates $P5001
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "Str" :subid("cuid_18_1347719896.673") :anon :lex :outer("cuid_33_1347719896.673")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 164
    .param pmc _lex_param_0 
    .lex "self", $P101 
    .lex "$self", _lex_param_0 
    set $P101, _lex_param_0
    .return ("") 
.end
.HLL "nqp"
.namespace []
.sub "Str" :subid("cuid_19_1347719896.673") :anon :lex :outer("cuid_33_1347719896.673")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 167
    .param pmc _lex_param_0 
    .lex "self", $P101 
    .lex "$self", _lex_param_0 
    set $P101, _lex_param_0
.annotate 'line', 168
    nqp_decontainerize $P5002, $P101
    get_how $P5001, $P5002
    nqp_decontainerize $P5003, $P101
    $P5004 = $P5001."name"($P5003)
    set $S5004, $P5004
    concat $S5003, $S5004, "<"
    nqp_decontainerize $P5005, $P101
    get_id $I5001, $P5005
    set $S5005, $I5001
    concat $S5002, $S5003, $S5005
    concat $S5001, $S5002, ">"
    .return ($S5001) 
.end
.HLL "nqp"
.namespace []
.sub "Numeric" :subid("cuid_20_1347719896.673") :anon :lex :outer("cuid_33_1347719896.673")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 171
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    multi_dispatch_over_lexical_candidates $P5001
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "Numeric" :subid("cuid_21_1347719896.673") :anon :lex :outer("cuid_33_1347719896.673")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 172
    .param pmc _lex_param_0 
    .lex "self", $P101 
    .lex "$self", _lex_param_0 
    set $P101, _lex_param_0
    .return (0.0) 
.end
.HLL "nqp"
.namespace []
.sub "Int" :subid("cuid_22_1347719896.673") :anon :lex :outer("cuid_33_1347719896.673")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 176
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    multi_dispatch_over_lexical_candidates $P5001
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "Int" :subid("cuid_23_1347719896.673") :anon :lex :outer("cuid_33_1347719896.673")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 177
    .param pmc _lex_param_0 
    .lex "self", $P101 
    .lex "$self", _lex_param_0 
    set $P101, _lex_param_0
    .return (0) 
.end
.HLL "nqp"
.namespace []
.sub "at_pos" :subid("cuid_24_1347719896.673") :anon :lex :outer("cuid_33_1347719896.673")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 181
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$pos", _lex_param_1 
    multi_dispatch_over_lexical_candidates $P5001
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "at_pos" :subid("cuid_25_1347719896.673") :anon :lex :outer("cuid_33_1347719896.673")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 182
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", $P101 
    .lex "$self", _lex_param_0 
    .lex "$pos", _lex_param_1 
    set $P101, _lex_param_0
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347719896.687", 7
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "at_key" :subid("cuid_26_1347719896.673") :anon :lex :outer("cuid_33_1347719896.673")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 186
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$key", _lex_param_1 
    multi_dispatch_over_lexical_candidates $P5001
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "at_key" :subid("cuid_27_1347719896.673") :anon :lex :outer("cuid_33_1347719896.673")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 187
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", $P101 
    .lex "$self", _lex_param_0 
    .lex "$key", _lex_param_1 
    set $P101, _lex_param_0
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347719896.687", 7
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "defined" :subid("cuid_28_1347719896.673") :anon :lex :outer("cuid_33_1347719896.673")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 191
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    repr_defined $I5001, $P5001
    .return ($I5001) 
.end
.HLL "nqp"
.namespace []
.sub "ACCEPTS" :subid("cuid_29_1347719896.673") :anon :lex :outer("cuid_33_1347719896.673")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 195
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$topic", _lex_param_1 
    multi_dispatch_over_lexical_candidates $P5001
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "ACCEPTS" :subid("cuid_30_1347719896.673") :anon :lex :outer("cuid_33_1347719896.673")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 196
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", $P101 
    .lex "$self", _lex_param_0 
    .lex "$topic", _lex_param_1 
    set $P101, _lex_param_0
    nqp_decontainerize $P5002, $P101
    get_what $P5001, $P5002
    type_check $I5001, _lex_param_1, $P5001
    .return ($I5001) 
.end
.HLL "nqp"
.namespace []
.sub "isa" :subid("cuid_31_1347719896.673") :anon :lex :outer("cuid_33_1347719896.673")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 200
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$type", _lex_param_1 
.annotate 'line', 201
    nqp_decontainerize $P5002, _lex_param_0
    get_how $P5001, $P5002
    nqp_decontainerize $P5003, _lex_param_0
    $P5004 = $P5001."isa"($P5003, _lex_param_1)
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "__dump" :subid("cuid_32_1347719896.673") :anon :lex :outer("cuid_33_1347719896.673")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 204
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .const 'Sub' $P5021 = 'cuid_61_1347719896.673' 
    capture_lex $P5021 
    .lex "$subindent", $P101 
    .lex "self", _lex_param_0 
    .lex "$dumper", _lex_param_1 
    .lex "$label", _lex_param_2 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347719896.687", 7
    set $P101, $P5001
    root_new $P102, ['parrot';'Continuation']
    set_label $P102, lexotic_100
    .lex "RETURN", $P102
    nqp_decontainerize $P5002, _lex_param_0
    repr_defined $I5001, $P5002
    box $P5006, $I5001
    set $P5005, $P5006
    if $I5001 goto unless42_end103 
    find_lex $P5003, "RETURN"
    $P5004 = $P5003(0)
    set $P5005, $P5004
  unless42_end103:
.annotate 'line', 206
    $P5007 = _lex_param_1."newIndent"()
    set $P101, $P5007
.annotate 'line', 207
    $P5008 = "&print"("{")
.annotate 'line', 208
    nqp_decontainerize $P5013, _lex_param_0
    get_how $P5012, $P5013
    nqp_decontainerize $P5014, _lex_param_0
    $P5015 = $P5012."parents"($P5014)
    set $P5009, $P5015
    iter $P5011, $P5015
  for_next113:
    unless $P5011, for_done115
    shift $P5017, $P5011
  for_redo114:
    .const 'Sub' $P5016 = 'cuid_61_1347719896.673' 
    capture_lex $P5016
    $P5009 = $P5016($P5017)
    goto for_next113
  for_done115:
.annotate 'line', 227
    $P5018 = _lex_param_1."deleteIndent"()
.annotate 'line', 228
    $P5019 = _lex_param_1."indent"()
    $P5020 = "&print"("\n", $P5019, "}")
    goto lexotic_101
  lexotic_100:
    .get_results ($P5020)
  lexotic_101:
    .return ($P5020) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_61_1347719896.673") :anon :lex :outer("cuid_32_1347719896.673")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 208
    .param pmc _lex_param_0 
    .const 'Sub' $P5008 = 'cuid_60_1347719896.673' 
    capture_lex $P5008 
    .lex "$type", _lex_param_0 
.annotate 'line', 209
    get_how $P5004, _lex_param_0
    $P5005 = $P5004."attributes"(_lex_param_0, 1 :named("local"))
    set $P5001, $P5005
    iter $P5003, $P5005
  for_next110:
    unless $P5003, for_done112
    shift $P5007, $P5003
  for_redo111:
    .const 'Sub' $P5006 = 'cuid_60_1347719896.673' 
    capture_lex $P5006
    $P5001 = $P5006($P5007)
    goto for_next110
  for_done112:
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_60_1347719896.673") :anon :lex :outer("cuid_61_1347719896.673")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 209
    .param pmc _lex_param_0 
    .lex "$name", $P101 
    .lex "$attrtype", $P102 
    .lex "$_", _lex_param_0 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347719896.687", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347719896.687", 7
    set $P102, $P5002
.annotate 'line', 210
    $P5003 = _lex_param_0."name"()
    set $P101, $P5003
.annotate 'line', 211
    $P5004 = _lex_param_0."type"()
    set $P102, $P5004
.annotate 'line', 212
    find_lex $P5005, "$subindent"
    find_lex $P5007, "$type"
    get_how $P5006, $P5007
    find_lex $P5008, "$type"
    $P5009 = $P5006."name"($P5008)
    $P5010 = "&print"("\n", $P5005, $P5009, "::", $P101, " => ")
    get_id $I5002, $P102
    nqp_get_sc_object $P5011, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347719896.687", 2
    get_id $I5003, $P5011
    iseq $I5001, $I5002, $I5003
    unless $I5001 goto if43_else104 
.annotate 'line', 213
.annotate 'line', 214
    find_lex $P5012, "$dumper"
    find_lex $P5013, "$label"
    find_lex $P5015, "self"
    nqp_decontainerize $P5014, $P5015
    find_lex $P5016, "$type"
    set $S5001, $P101
    repr_get_attr_int $I5004, $P5014, $P5016, $S5001
    $P5017 = $P5012."dump"($P5013, $I5004)
    set $P5041, $P5017
    goto if43_end105
  if43_else104:
    get_id $I5006, $P102
    nqp_get_sc_object $P5018, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347719896.687", 3
    get_id $I5007, $P5018
    iseq $I5005, $I5006, $I5007
    unless $I5005 goto if44_else106 
.annotate 'line', 216
.annotate 'line', 217
    find_lex $P5019, "$dumper"
    find_lex $P5020, "$label"
    find_lex $P5022, "self"
    nqp_decontainerize $P5021, $P5022
    find_lex $P5023, "$type"
    set $S5002, $P101
    repr_get_attr_num $N5001, $P5021, $P5023, $S5002
    $P5024 = $P5019."dump"($P5020, $N5001)
    set $P5040, $P5024
    goto if44_end107
  if44_else106:
    get_id $I5009, $P102
    nqp_get_sc_object $P5025, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347719896.687", 4
    get_id $I5010, $P5025
    iseq $I5008, $I5009, $I5010
    unless $I5008 goto if45_else108 
.annotate 'line', 219
.annotate 'line', 220
    find_lex $P5026, "$dumper"
    find_lex $P5027, "$label"
    find_lex $P5029, "self"
    nqp_decontainerize $P5028, $P5029
    find_lex $P5030, "$type"
    set $S5004, $P101
    repr_get_attr_str $S5003, $P5028, $P5030, $S5004
    $P5031 = $P5026."dump"($P5027, $S5003)
    set $P5039, $P5031
    goto if45_end109
  if45_else108:
.annotate 'line', 222
.annotate 'line', 223
    find_lex $P5032, "$dumper"
    find_lex $P5033, "$label"
    find_lex $P5036, "self"
    nqp_decontainerize $P5035, $P5036
    find_lex $P5037, "$type"
    set $S5005, $P101
    getattribute $P5034, $P5035, $P5037, $S5005
    $P5038 = $P5032."dump"($P5033, $P5034)
    set $P5039, $P5038
  if45_end109:
    set $P5040, $P5039
  if44_end107:
    set $P5041, $P5040
  if43_end105:
    .return ($P5041) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_38_1347719896.673") :anon :lex :outer("cuid_1_1347719896.673")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 233
    .const 'Sub' $P5005 = 'cuid_34_1347719896.673' 
    capture_lex $P5005 
    .const 'Sub' $P5005 = 'cuid_35_1347719896.673' 
    capture_lex $P5005 
    .const 'Sub' $P5005 = 'cuid_36_1347719896.673' 
    capture_lex $P5005 
    .const 'Sub' $P5005 = 'cuid_37_1347719896.673' 
    capture_lex $P5005 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_34_1347719896.673' 
    capture_lex $P5001
    .const 'Sub' $P5002 = 'cuid_35_1347719896.673' 
    capture_lex $P5002
    .const 'Sub' $P5003 = 'cuid_36_1347719896.673' 
    capture_lex $P5003
    .const 'Sub' $P5004 = 'cuid_37_1347719896.673' 
    capture_lex $P5004
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "new" :subid("cuid_34_1347719896.673") :anon :lex :outer("cuid_38_1347719896.673")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 254
    .param pmc _lex_param_0 
    .lex "$n", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347719896.687", 7
    set $P101, $P5001
.annotate 'line', 255
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."CREATE"()
    set $P101, $P5003
.annotate 'line', 256
    $P5004 = $P101."BUILD"()
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "BUILD" :subid("cuid_35_1347719896.673") :anon :lex :outer("cuid_38_1347719896.673")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 260
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347719896.687", 28
    new $P5003, 'ResizablePMCArray'
    repr_bind_attr_obj $P5001, $P5002, "@!array", $P5003
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347719896.687", 28
    new $P5006, 'Hash'
    repr_bind_attr_obj $P5004, $P5005, "%!hash", $P5006
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "list" :subid("cuid_36_1347719896.673") :anon :lex :outer("cuid_38_1347719896.673")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 265
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347719896.687", 28
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!array"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "hash" :subid("cuid_37_1347719896.673") :anon :lex :outer("cuid_38_1347719896.673")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 267
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347719896.687", 28
    repr_get_attr_obj $P5003, $P5001, $P5002, "%!hash"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_63_1347719896.673") :load :init
.annotate 'file', "src\\stage2\\NQPCORE.setting"
    .const 'Sub' $P5001 = 'cuid_62_1347719896.673' 
    capture_lex $P5001 
    .local pmc cur_sc 
    nqp_dynop_setup 
    nqp_bigint_setup 
    getinterp $P5001
    get_class $P5002, "LexPad"
    get_class $P5003, "NQPLexPad"
    $P5004 = $P5001."hll_map"($P5002, $P5003)
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P5001, "ModuleLoader"
    $P5002 = $P5001."load_module"("nqpmo")
    nqp_create_sc $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347719896.687"
    set cur_sc, $P5001
    $P5002 = cur_sc."set_description"("src\\stage2\\NQPCORE.setting")
    new $P5003, 'ResizableStringArray'
    null $S5001
    push $P5003, $S5001
    push $P5003, "P6opaque"
    push $P5003, "RoleToRoleApplier"
    push $P5003, "569A1B419F724EEF275BC7729D702142D988A435-1347719893.539"
    push $P5003, "src\\stage2\\gen\\nqp-mo.pm"
    push $P5003, "NQPConcreteRoleHOW"
    push $P5003, "RoleToClassApplier"
    push $P5003, "NQPParametricRoleHOW"
    push $P5003, "NQPClassHOW"
    push $P5003, "NQPNativeHOW"
    push $P5003, "NQPAttribute"
    push $P5003, "NQPModuleHOW"
    push $P5003, "Uninstantiable"
    push $P5003, "P6int"
    push $P5003, "P6num"
    push $P5003, "P6str"
    push $P5003, "add_dispatchee"
    push $P5003, "is_dispatcher"
    push $P5003, "derive_dispatcher"
    push $P5003, "clone"
    push $P5003, "nqpattr"
    push $P5003, "$!do"
    push $P5003, "$!signature"
    push $P5003, "$!dispatchees"
    push $P5003, "$!dispatch_cache"
    push $P5003, "$!types"
    push $P5003, "$!definednesses"
    push $P5003, "CREATE"
    push $P5003, "bless"
    push $P5003, "BUILDALL"
    push $P5003, "new"
    push $P5003, "Str"
    push $P5003, "Numeric"
    push $P5003, "Int"
    push $P5003, "at_pos"
    push $P5003, "at_key"
    push $P5003, "defined"
    push $P5003, "ACCEPTS"
    push $P5003, "isa"
    push $P5003, "__dump"
    push $P5003, "BUILD"
    push $P5003, "list"
    push $P5003, "hash"
    push $P5003, "@!array"
    push $P5003, "%!hash"
    push $P5003, "__6MODEL_CORE__"
    push $P5003, "GLOBALish"
    push $P5003, "EXPORTHOW"
    push $P5003, "int"
    push $P5003, "num"
    push $P5003, "str"
    push $P5003, "NQPRoutine"
    push $P5003, "NQPSignature"
    push $P5003, "NQPMu"
    push $P5003, "name"
    push $P5003, "code"
    push $P5003, "get_string"
    push $P5003, "get_number"
    push $P5003, "get_integer"
    push $P5003, "get_pmc_keyed_int"
    push $P5003, "get_pmc_keyed_str"
    push $P5003, "NQPCapture"
    push $P5003, "set_pmc_keyed_int"
    push $P5003, "exists_keyed_int"
    push $P5003, "delete_keyed_int"
    push $P5003, "unshift_pmc"
    push $P5003, "push_pmc"
    push $P5003, "get_pmc_keyed"
    push $P5003, "set_pmc_keyed_str"
    push $P5003, "set_pmc_keyed"
    push $P5003, "exists_keyed"
    push $P5003, "exists_keyed_str"
    push $P5003, "delete_keyed"
    push $P5003, "delete_keyed_str"
    .const 'Sub' $P5004 = 'cuid_62_1347719896.673' 
    capture_lex $P5004
    $P5005 = $P5004()
    nqp_deserialize_sc "AQAAAEAAAAACAAAAUAAAAAkAAACYAAAA0AcAADkAAABgCwAAbhUAAAAAAABuFQAAAAAAAG4VAABuFQAAAAAAAAMAAAAEAAAALQAAAAAAAAABAAAAAAAAAAwAAAAKAQAADQAAAE4BAAAOAAAAjgEAAA8AAADOAQAAAQAAAA4CAAABAAAASgMAAAEAAAAUBAAAAQAAAG4FAAAAAAAAIQAAAAAAAAAAAAAACgAIAAAAAgAAAAIAAQAAAAIAAAAFAAAAAgABAAAAAwAAAAYAAAACAAEAAAAEAAAABwAAAAIAAQAAAAUAAAAIAAAAAgABAAAABgAAAAkAAAACAAEAAAAHAAAACgAAAAIAAQAAAAgAAAALAAAAAgABAAAACQAAAAoAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAAAAAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAAAAAAAADAAAAAAAiAAAAAAAAAAEAAAAKAAAAAAAKAAAAAAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACMAAAAAAAAAAgAAAAoAAAAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAkAAAAAAAAAAMAAAAKAAAAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAJQAAAAAAAAAEAAAACgAAAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACYAAAAAAAAABQAAAAoAAAAAAAoABQAAABAAAAALAAAAAAAAAAAAEQAAAAsAAAAAAAEAAAASAAAACwAAAAAAAgAAABMAAAALAAAAAAADAAAAFAAAAAsAAAAAAAQAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAAABQAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAAAUAAAAKAAQAAAAVAAAABAAAAAAAAAAAABYAAAAEAAEAAAAAAAAAFwAAAAQAAgAAAAAAAAAYAAAABAADAAAAAAAAAAAAAAAnAAAAAAAAAAYAAAAKAAAAAAAKAAAAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAAABgAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAABgAAAAoAAgAAABkAAAAEAAAAAAAAAAAAGgAAAAQAAQAAAAAAAAAAAAAAKAAAAAAAAAAHAAAACgAAAAAACgANAAAAGwAAAAIAAAAAAAgAAAAcAAAAAgAAAAAACQAAAB0AAAACAAAAAAAKAAAAHgAAAAIAAAAAAAsAAAAfAAAAAgAAAAAADAAAACAAAAACAAAAAAAPAAAAIQAAAAIAAAAAABEAAAAiAAAAAgAAAAAAEwAAACMAAAACAAAAAAAVAAAAJAAAAAIAAAAAABcAAAAlAAAAAgAAAAAAGAAAACYAAAACAAAAAAAaAAAAJwAAAAIAAAAAABsAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAAABwAAAAQAAAAAAAAAAQAAAAAAAAAFAAAAAAAAAAMAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAABwAAAAMAAAAAACkAAAAAAAAAHAAAAAoAAAAAAAoAEAAAABsAAAACAAAAAAAIAAAAHAAAAAIAAAAAAAkAAAAdAAAAAgAAAAAACgAAAB4AAAACAAAAAAAdAAAAHwAAAAIAAAAAAAwAAAAgAAAAAgAAAAAADwAAACEAAAACAAAAAAARAAAAIgAAAAIAAAAAABMAAAAjAAAAAgAAAAAAFQAAACQAAAACAAAAAAAXAAAAJQAAAAIAAAAAABgAAAAmAAAAAgAAAAAAGgAAACcAAAACAAAAAAAbAAAAKAAAAAIAAAAAAB4AAAApAAAAAgAAAAAAHwAAACoAAAACAAAAAAAgAAAAAAAAAAAAAAACAAAAAAAAAAIAAAAAABwAAAACAAAAAAAHAAAABAAAAAAAAAABAAAAAAAAAAUAAAAAAAAAAwAAAAAAAAAAAAIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAIAAAAAAAAAAgAAAAAABwAAAAMAAgAAAAAAHAAAAAoAAgAAACsAAAAEAAAAAAAAAAAALAAAAAQAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAACAAAAAAAAAAAAAAAAAAAAAwAAAAAAAAAAAAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAFAAAAAAAAAAAAAAAAAAAABgAAAAAAAAAAAAAAAAAAAAcAAAAAAAAAAAAAAAAAAAAFAAAAAAAAAAEAAAAAAAAABQAAABAAAAABAAAAAAAAAAUAAAAgAAAAAQAAAAAAAAAFAAAAMAAAAAEAAAAAAAAABQAAAEAAAAABAAAAAAAAAAUAAABoAAAAAQAAAAAAAAAFAAAAgAAAAAEAAAAAAAAABQAAAJgAAAABAAAAAAAAAAUAAAC2AAAAAQAAAAAAAAAFAAAAzgAAAAEAAAAAAAAABQAAAOwAAAABAAAAAAAAAAUAAAAEAQAAAQAAAAAAAAAFAAAAIgEAAAEAAAAAAAAABQAAADoBAAABAAAAAAAAAAUAAABYAQAAAQAAAAAAAAAFAAAAcAEAAAEAAAAAAAAABQAAAIABAAABAAAAAAAAAAUAAACeAQAAAQAAAAAAAAAFAAAAtgEAAAEAAAAAAAAABQAAAMYBAAABAAAAAAAAAAgAAADWAQAAAAAAAAAAAAAFAAAA1gEAAAEAAAAAAAAABQAAAOYBAAABAAAAAAAAAAUAAAD2AQAAAQAAAAAAAAAFAAAABgIAAAEAAAACAAAAAAAAABYCAAABAAAAAQAAAAkAAAAmAgAAAQAAAAEAAAAHAAAANgIAAAEAAAABAAAABwAAAEYCAAABAAAAAQAAAAcAAABWAgAAAQAAAAIAAAAAAAAAZgIAAAEAAAACAAAAAAAAAOQCAAABAAAAAQAAAAYAAAAIAwAAAQAAAAEAAAAGAAAA9AUAAAEAAAAAAAAABgAAALIIAAABAAAAAAAAAAYAAADSCAAAAQAAAAAAAAAGAAAA8ggAAAEAAAAAAAAABgAAABIJAAABAAAAAAAAAAYAAAAyCQAAAQAAAAAAAAAGAAAAXgkAAAEAAAAAAAAABgAAAIoJAAABAAAAAgAAAAIAAAC2CQAAAQAAAAIAAAACAAAAugkAAAEAAAACAAAAAgAAAL4JAAABAAAAAgAAAAIAAADCCQAAAQAAAAIAAAACAAAAxgkAAAEAAAACAAAAAgAAAMoJAAABAAAAAQAAAAgAAADOCQAAAQAAAAEAAAAIAAAA7gkAAAEAAAALAAAAAAAFAAAAAQABAAEACwAAAAAABgAAAAEAAQABAAsAAAAAAAcAAAABAAEAAQALAAAAAAAIAAAAAQABAAEACwAAAAAACQAAAAEABwACAAAAAgAAAAAADQAAAAIAAAAAAA4AAAADAAsAAAAAAAoAAAACAAAAAAAqAAAAAQABAAsAAAAAAAsAAAACAAAAAAArAAAAAQABAAsAAAAAAAwAAAABAAcAAQAAAAIAAAAAABAAAAADAAsAAAAAAA0AAAACAAAAAAAsAAAAAQABAAsAAAAAAA4AAAABAAcAAQAAAAIAAAAAABIAAAADAAsAAAAAAA8AAAACAAAAAAAtAAAAAQABAAsAAAAAABAAAAABAAcAAQAAAAIAAAAAABQAAAADAAsAAAAAABEAAAACAAAAAAAuAAAAAQABAAsAAAAAABIAAAABAAcAAQAAAAIAAAAAABYAAAADAAsAAAAAABMAAAACAAAAAAAvAAAAAQABAAsAAAAAABQAAAABAAEAAQALAAAAAAAVAAAAAQAHAAEAAAACAAAAAAAZAAAAAwALAAAAAAAWAAAAAgAAAAAAMAAAAAEAAQALAAAAAAAXAAAAAQABAAEACwAAAAAAGAAAAAEAAQABAAsAAAAAABkAAAABAAEAAQALAAAAAAAaAAAAAQABAAEACwAAAAAAGwAAAAEAAQABAAsAAAAAABwAAAABAAEAAQAuAAAABwAAAAAACgAAAAAABgAvAAAABAABAAAAAAAAAAYAMAAAAAQAAQAAAAAAAAAGADEAAAAEAAEAAAAAAAAABgAyAAAABAABAAAAAAAAADMAAAAHAAQAAAACAAAAAAAxAAAAAgAAAAAAMgAAAAIAAAAAADMAAAACAAAAAAA0AAAACgAFAAAAEAAAAAsAAAAAAAAAAAARAAAACwAAAAAAAQAAABIAAAALAAAAAAACAAAAEwAAAAsAAAAAAAMAAAAUAAAACwAAAAAABAAAADQAAAAHAAIAAAACAAAAAAA1AAAAAgAAAAAANgAAAAoAAAAAAAYANQAAAAoAAAAAAAoADQAAABsAAAACAAAAAAAIAAAAHAAAAAIAAAAAAAkAAAAdAAAAAgAAAAAACgAAAB4AAAACAAAAAAALAAAAHwAAAAIAAAAAAAwAAAAgAAAAAgAAAAAADwAAACEAAAACAAAAAAARAAAAIgAAAAIAAAAAABMAAAAjAAAAAgAAAAAAFQAAACQAAAACAAAAAAAXAAAAJQAAAAIAAAAAABgAAAAmAAAAAgAAAAAAGgAAACcAAAACAAAAAAAbAAAABwANAAAAAgAAAAAACAAAAAIAAAAAAAkAAAACAAAAAAAKAAAAAgAAAAAACwAAAAIAAAAAAAwAAAACAAAAAAAPAAAAAgAAAAAAEQAAAAIAAAAAABMAAAACAAAAAAAVAAAAAgAAAAAAFwAAAAIAAAAAABgAAAACAAAAAAAaAAAAAgAAAAAAGwAAAAcABwAAAAoAAgAAADYAAAAGAB8AAAA3AAAAAgAAAAAADQAAAAoAAgAAADYAAAAGAB8AAAA3AAAAAgAAAAAADgAAAAoAAgAAADYAAAAGACAAAAA3AAAAAgAAAAAAEAAAAAoAAgAAADYAAAAGACEAAAA3AAAAAgAAAAAAEgAAAAoAAgAAADYAAAAGACIAAAA3AAAAAgAAAAAAFAAAAAoAAgAAADYAAAAGACMAAAA3AAAAAgAAAAAAFgAAAAoAAgAAADYAAAAGACUAAAA3AAAAAgAAAAAAGQAAAAcAAAAAAAcAAAAAAAIAAAAAAAcAAAAHAAAAAAAKAAAAAAAEAAEAAAAAAAAABwABAAAAAgAAAAAABwAAAAcAAAAAAAoABgAAADgAAAACAAAAAAAMAAAAOQAAAAIAAAAAAA8AAAA6AAAAAgAAAAAAEQAAADsAAAACAAAAAAATAAAAPAAAAAIAAAAAABUAAAAkAAAAAgAAAAAAFwAAAAoAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwAAAAAABwAAAAAAAQAGAD0AAAAKAAIAAAArAAAAAgAAAAAANwAAACwAAAACAAAAAAA4AAAACgAEAAAAHgAAAAIAAAAAAB0AAAAoAAAAAgAAAAAAHgAAACkAAAACAAAAAAAfAAAAKgAAAAIAAAAAACAAAAAHAAQAAAACAAAAAAAdAAAAAgAAAAAAHgAAAAIAAAAAAB8AAAACAAAAAAAgAAAABwAAAAAABwABAAAAAgAAAAAABwAAAAcAAAAAAAIAAAAAAAcAAAAHAAAAAAAKAAAAAAAEAAEAAAAAAAAABwACAAAAAgAAAAAAHAAAAAIAAAAAAAcAAAAHAAAAAAAKAAAAAAAKAA4AAAA7AAAABwACAAAAAgAAAAAAHAAAAAYAKwAAAD4AAAAHAAIAAAACAAAAAAAcAAAABgArAAAAPwAAAAcAAgAAAAIAAAAAABwAAAAGACsAAABAAAAABwACAAAAAgAAAAAAHAAAAAYAKwAAAEEAAAAHAAIAAAACAAAAAAAcAAAABgArAAAAQgAAAAcAAgAAAAIAAAAAABwAAAAGACsAAAA8AAAABwACAAAAAgAAAAAAHAAAAAYALAAAAEMAAAAHAAIAAAACAAAAAAAcAAAABgAsAAAARAAAAAcAAgAAAAIAAAAAABwAAAAGACwAAABFAAAABwACAAAAAgAAAAAAHAAAAAYALAAAAEYAAAAHAAIAAAACAAAAAAAcAAAABgAsAAAARwAAAAcAAgAAAAIAAAAAABwAAAAGACwAAABIAAAABwACAAAAAgAAAAAAHAAAAAYALAAAAEkAAAAHAAIAAAACAAAAAAAcAAAABgAsAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAEAAAAHAAIAAAAEAAAAAAAAAAAAAgAAAAAAHgAAAAcAAQAAAAcAAgAAAAQAAAAAAAAAAAACAAAAAAAeAAAAAQAHAAEAAAACAAAAAAAHAAAABwABAAAABAACAAAAAAAAAAcAAQAAAAIAAAAAAAcAAAAHAAEAAAAEAAEAAAAAAAAABwABAAAAAgAAAAAABwAAAAcAAQAAAAQAAgAAAAAAAAAHAAEAAAACAAAAAAAHAAAABwABAAAABAACAAAAAAAAAAcAAgAAAAIAAAAAAAcAAAADAAcAAgAAAAQAAgAAAAAAAAAEAAAAAAAAAAAABwACAAAAAgAAAAAABwAAAAMABwACAAAABAACAAAAAAAAAAQAAAAAAAAAAAAHAAIAAAACAAAAAAAHAAAAAwAHAAIAAAAEAAIAAAAAAAAABAAAAAAAAAAAABUAAAAWAAAAFwAAABgAAAAZAAAAGgAAAAYAKwAAAAMABAAAAAAAAAAAAAMAAwAEAAAAAAAAAAAABgAsAAAAAwAEAAAAAAAAAAAAAwADAAQAAAAAAAAAAAA=", cur_sc, $P5003, $P5005
    .const "LexInfo" $P5001 = "cuid_1_1347719896.673"
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347719896.687", 0
    $P5003 = $P5001."set_static_lexpad_value"("GLOBALish", $P5002)
    .const "LexInfo" $P5004 = "cuid_1_1347719896.673"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1347719896.673"
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347719896.687", 0
    $P5003 = $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5004 = "cuid_1_1347719896.673"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1347719896.673"
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347719896.687", 1
    $P5003 = $P5001."set_static_lexpad_value"("EXPORTHOW", $P5002)
    .const "LexInfo" $P5004 = "cuid_1_1347719896.673"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_2_1347719896.673"
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347719896.687", 1
    $P5003 = $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5004 = "cuid_2_1347719896.673"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_2_1347719896.673"
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347719896.687", 1
    $P5003 = $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5004 = "cuid_2_1347719896.673"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1347719896.673"
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347719896.687", 2
    $P5003 = $P5001."set_static_lexpad_value"("int", $P5002)
    .const "LexInfo" $P5004 = "cuid_1_1347719896.673"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_3_1347719896.673"
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347719896.687", 2
    $P5003 = $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5004 = "cuid_3_1347719896.673"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_3_1347719896.673"
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347719896.687", 2
    $P5003 = $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5004 = "cuid_3_1347719896.673"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1347719896.673"
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347719896.687", 3
    $P5003 = $P5001."set_static_lexpad_value"("num", $P5002)
    .const "LexInfo" $P5004 = "cuid_1_1347719896.673"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_4_1347719896.673"
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347719896.687", 3
    $P5003 = $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5004 = "cuid_4_1347719896.673"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_4_1347719896.673"
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347719896.687", 3
    $P5003 = $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5004 = "cuid_4_1347719896.673"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1347719896.673"
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347719896.687", 4
    $P5003 = $P5001."set_static_lexpad_value"("str", $P5002)
    .const "LexInfo" $P5004 = "cuid_1_1347719896.673"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_5_1347719896.673"
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347719896.687", 4
    $P5003 = $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5004 = "cuid_5_1347719896.673"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_5_1347719896.673"
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347719896.687", 4
    $P5003 = $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5004 = "cuid_5_1347719896.673"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1347719896.673"
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347719896.687", 5
    $P5003 = $P5001."set_static_lexpad_value"("NQPRoutine", $P5002)
    .const "LexInfo" $P5004 = "cuid_1_1347719896.673"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_11_1347719896.673"
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347719896.687", 5
    $P5003 = $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5004 = "cuid_11_1347719896.673"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_11_1347719896.673"
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347719896.687", 5
    $P5003 = $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5004 = "cuid_11_1347719896.673"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1347719896.673"
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347719896.687", 6
    $P5003 = $P5001."set_static_lexpad_value"("NQPSignature", $P5002)
    .const "LexInfo" $P5004 = "cuid_1_1347719896.673"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_12_1347719896.673"
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347719896.687", 6
    $P5003 = $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5004 = "cuid_12_1347719896.673"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_12_1347719896.673"
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347719896.687", 6
    $P5003 = $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5004 = "cuid_12_1347719896.673"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1347719896.673"
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347719896.687", 7
    $P5003 = $P5001."set_static_lexpad_value"("NQPMu", $P5002)
    .const "LexInfo" $P5004 = "cuid_1_1347719896.673"
    $P5005 = $P5004."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_13_1347719896.673" 
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347719896.687", 8
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_14_1347719896.673" 
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347719896.687", 9
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_15_1347719896.673" 
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347719896.687", 10
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_16_1347719896.673" 
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347719896.687", 11
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_17_1347719896.673" 
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347719896.687", 12
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_18_1347719896.673" 
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347719896.687", 13
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_19_1347719896.673" 
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347719896.687", 14
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_20_1347719896.673" 
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347719896.687", 15
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_21_1347719896.673" 
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347719896.687", 16
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_22_1347719896.673" 
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347719896.687", 17
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_23_1347719896.673" 
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347719896.687", 18
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_24_1347719896.673" 
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347719896.687", 19
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_25_1347719896.673" 
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347719896.687", 20
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_26_1347719896.673" 
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347719896.687", 21
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_27_1347719896.673" 
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347719896.687", 22
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_28_1347719896.673" 
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347719896.687", 23
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_29_1347719896.673" 
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347719896.687", 24
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_30_1347719896.673" 
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347719896.687", 25
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_31_1347719896.673" 
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347719896.687", 26
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_32_1347719896.673" 
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347719896.687", 27
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_33_1347719896.673"
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347719896.687", 7
    $P5003 = $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5004 = "cuid_33_1347719896.673"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_33_1347719896.673"
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347719896.687", 7
    $P5003 = $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5004 = "cuid_33_1347719896.673"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1347719896.673"
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347719896.687", 28
    $P5003 = $P5001."set_static_lexpad_value"("NQPCapture", $P5002)
    .const "LexInfo" $P5004 = "cuid_1_1347719896.673"
    $P5005 = $P5004."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_34_1347719896.673" 
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347719896.687", 29
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_35_1347719896.673" 
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347719896.687", 30
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_36_1347719896.673" 
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347719896.687", 31
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_37_1347719896.673" 
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347719896.687", 32
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_38_1347719896.673"
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347719896.687", 28
    $P5003 = $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5004 = "cuid_38_1347719896.673"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_38_1347719896.673"
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347719896.687", 28
    $P5003 = $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5004 = "cuid_38_1347719896.673"
    $P5005 = $P5004."finish_static_lexpad"()
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347719896.687", 0
    set_hll_global "GLOBAL", $P5001
    .return () 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_62_1347719896.673") :anon :lex :outer("cuid_63_1347719896.673")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
    new $P5001, 'ResizablePMCArray'
    .const 'Sub' $P5002 = "cuid_6_1347719896.673" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_7_1347719896.673" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_8_1347719896.673" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_9_1347719896.673" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_10_1347719896.673" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_13_1347719896.673" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_14_1347719896.673" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_15_1347719896.673" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_16_1347719896.673" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_17_1347719896.673" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_18_1347719896.673" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_19_1347719896.673" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_20_1347719896.673" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_21_1347719896.673" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_22_1347719896.673" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_23_1347719896.673" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_24_1347719896.673" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_25_1347719896.673" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_26_1347719896.673" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_27_1347719896.673" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_28_1347719896.673" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_29_1347719896.673" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_30_1347719896.673" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_31_1347719896.673" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_32_1347719896.673" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_34_1347719896.673" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_35_1347719896.673" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_36_1347719896.673" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_37_1347719896.673" 
    push $P5001, $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_64_1347719896.673") :load
.annotate 'file', "src\\stage2\\NQPCORE.setting"
    .const 'Sub' $P5001 = "cuid_1_1347719896.673" 
    $P5002 = $P5001()
    .return ($P5002) 
.end