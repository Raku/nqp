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
.sub "" :subid("cuid_1_1350818086.186") :anon :lex
.annotate 'file', "src\\stage2\\NQPCORE.setting"
    .param pmc _lex_param_0 :slurpy 
    .const 'Sub' $P5066 = 'cuid_48_1350818086.186' 
    capture_lex $P5066 
    .const 'Sub' $P5066 = 'cuid_49_1350818086.186' 
    capture_lex $P5066 
    .const 'Sub' $P5066 = 'cuid_50_1350818086.186' 
    capture_lex $P5066 
    .const 'Sub' $P5066 = 'cuid_51_1350818086.186' 
    capture_lex $P5066 
    .const 'Sub' $P5066 = 'cuid_53_1350818086.186' 
    capture_lex $P5066 
    .const 'Sub' $P5066 = 'cuid_54_1350818086.186' 
    capture_lex $P5066 
    .const 'Sub' $P5066 = 'cuid_56_1350818086.186' 
    capture_lex $P5066 
    .const 'Sub' $P5066 = 'cuid_58_1350818086.186' 
    capture_lex $P5066 
    .const 'Sub' $P5066 = 'cuid_60_1350818086.186' 
    capture_lex $P5066 
    .const 'Sub' $P5066 = 'cuid_61_1350818086.186' 
    capture_lex $P5066 
    .const 'Sub' $P5066 = 'cuid_62_1350818086.186' 
    capture_lex $P5066 
    .const 'Sub' $P5066 = 'cuid_63_1350818086.186' 
    capture_lex $P5066 
    .const 'Sub' $P5066 = 'cuid_64_1350818086.186' 
    capture_lex $P5066 
    .const 'Sub' $P5066 = 'cuid_2_1350818086.186' 
    capture_lex $P5066 
    .const 'Sub' $P5066 = 'cuid_3_1350818086.186' 
    capture_lex $P5066 
    .const 'Sub' $P5066 = 'cuid_4_1350818086.186' 
    capture_lex $P5066 
    .const 'Sub' $P5066 = 'cuid_5_1350818086.186' 
    capture_lex $P5066 
    .const 'Sub' $P5066 = 'cuid_12_1350818086.186' 
    capture_lex $P5066 
    .const 'Sub' $P5066 = 'cuid_13_1350818086.186' 
    capture_lex $P5066 
    .const 'Sub' $P5066 = 'cuid_21_1350818086.186' 
    capture_lex $P5066 
    .const 'Sub' $P5066 = 'cuid_42_1350818086.186' 
    capture_lex $P5066 
    .const 'Sub' $P5066 = 'cuid_47_1350818086.186' 
    capture_lex $P5066 
    .lex "GLOBALish", $P101 
    .lex "$?PACKAGE", $P102 
    .lex "EXPORTHOW", $P103 
    .lex "int", $P104 
    .lex "num", $P105 
    .lex "str", $P106 
    .lex "NQPRoutine", $P107 
    .lex "NQPSignature", $P108 
    .lex "NQPRegex", $P109 
    .lex "NQPMu", $P110 
    .lex "NQPCapture", $P111 
    .lex "&open", $P112 
    .lex "&close", $P113 
    .lex "&slurp", $P114 
    .lex "&spew", $P115 
    .lex "&print", $P116 
    .lex "&say", $P117 
    .lex "&match", $P118 
    .lex "&subst", $P119 
    .lex "&hash", $P120 
    .lex "$test_counter", $P121 
    .lex "$todo_upto_test_num", $P122 
    .lex "$todo_reason", $P123 
    .lex "&plan", $P124 
    .lex "&ok", $P125 
    .lex "&todo", $P126 
    .lex "&skip", $P127 
    .lex "@ARGS", _lex_param_0 
    .local pmc ctxsave 
    .const 'Sub' $P5001 = 'cuid_48_1350818086.186' 
    capture_lex $P5001
    set $P112, $P5001
    .const 'Sub' $P5002 = 'cuid_49_1350818086.186' 
    capture_lex $P5002
    set $P113, $P5002
    .const 'Sub' $P5003 = 'cuid_50_1350818086.186' 
    capture_lex $P5003
    set $P114, $P5003
    .const 'Sub' $P5004 = 'cuid_51_1350818086.186' 
    capture_lex $P5004
    set $P115, $P5004
    .const 'Sub' $P5005 = 'cuid_53_1350818086.186' 
    capture_lex $P5005
    set $P116, $P5005
    .const 'Sub' $P5006 = 'cuid_54_1350818086.186' 
    capture_lex $P5006
    set $P117, $P5006
    .const 'Sub' $P5007 = 'cuid_56_1350818086.186' 
    capture_lex $P5007
    set $P118, $P5007
    .const 'Sub' $P5008 = 'cuid_58_1350818086.186' 
    capture_lex $P5008
    set $P119, $P5008
    .const 'Sub' $P5009 = 'cuid_60_1350818086.186' 
    capture_lex $P5009
    set $P120, $P5009
    nqp_get_sc_object $P5010, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P121, $P5010
    nqp_get_sc_object $P5011, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P122, $P5011
    nqp_get_sc_object $P5012, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P123, $P5012
    .const 'Sub' $P5013 = 'cuid_61_1350818086.186' 
    capture_lex $P5013
    set $P124, $P5013
    .const 'Sub' $P5014 = 'cuid_62_1350818086.186' 
    capture_lex $P5014
    set $P125, $P5014
    .const 'Sub' $P5015 = 'cuid_63_1350818086.186' 
    capture_lex $P5015
    set $P126, $P5015
    .const 'Sub' $P5016 = 'cuid_64_1350818086.186' 
    capture_lex $P5016
    set $P127, $P5016
.annotate 'line', 1
    .const 'Sub' $P5017 = 'cuid_2_1350818086.186' 
    capture_lex $P5017
    $P5018 = $P5017()
    .const 'Sub' $P5019 = 'cuid_3_1350818086.186' 
    capture_lex $P5019
    $P5020 = $P5019()
    .const 'Sub' $P5021 = 'cuid_4_1350818086.186' 
    capture_lex $P5021
    $P5022 = $P5021()
    .const 'Sub' $P5023 = 'cuid_5_1350818086.186' 
    capture_lex $P5023
    $P5024 = $P5023()
    .const 'Sub' $P5025 = 'cuid_12_1350818086.186' 
    capture_lex $P5025
    $P5026 = $P5025()
    nqp_get_sc_object $P5027, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 5
    new $P5028, 'Hash'
    new $P5029, 'ResizablePMCArray'
    nqp_get_sc_object $P5030, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 5
    push $P5029, $P5030
    box $P5031, "$!do"
    push $P5029, $P5031
    set $P5028["invoke"], $P5029
    new $P5032, 'ResizablePMCArray'
    nqp_get_sc_object $P5033, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 5
    push $P5032, $P5033
    box $P5034, "$!do"
    push $P5032, $P5034
    set $P5028["get_string"], $P5032
    stable_publish_vtable_handler_mapping $P5027, $P5028
    nqp_get_sc_object $P5035, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 5
    null $P5036
    set_boolification_spec $P5035, 5, $P5036
    .const 'Sub' $P5037 = 'cuid_13_1350818086.186' 
    capture_lex $P5037
    $P5038 = $P5037()
    .const 'Sub' $P5039 = 'cuid_21_1350818086.186' 
    capture_lex $P5039
    $P5040 = $P5039()
    nqp_get_sc_object $P5041, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 7
    new $P5042, 'Hash'
    new $P5043, 'ResizablePMCArray'
    nqp_get_sc_object $P5044, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 7
    push $P5043, $P5044
    box $P5045, "$!do"
    push $P5043, $P5045
    set $P5042["invoke"], $P5043
    new $P5046, 'ResizablePMCArray'
    nqp_get_sc_object $P5047, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 7
    push $P5046, $P5047
    box $P5048, "$!do"
    push $P5046, $P5048
    set $P5042["get_string"], $P5046
    stable_publish_vtable_handler_mapping $P5041, $P5042
    nqp_get_sc_object $P5049, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 7
    null $P5050
    set_boolification_spec $P5049, 5, $P5050
    .const 'Sub' $P5051 = 'cuid_42_1350818086.186' 
    capture_lex $P5051
    $P5052 = $P5051()
    .const 'Sub' $P5053 = 'cuid_47_1350818086.186' 
    capture_lex $P5053
    $P5054 = $P5053()
    box $P5055, 0
    set $P121, $P5055
    box $P5056, 0
    set $P122, $P5056
    box $P5057, ""
    set $P123, $P5057
    find_dynamic_lex $P5058, "$*CTXSAVE"
    set ctxsave, $P5058
    isnull $I5001, ctxsave
    if $I5001 goto unless48_end121 
    can $I5002, ctxsave, "ctxsave"
    box $P5061, $I5002
    set $P5060, $P5061
    unless $I5002 goto if49_end123 
    $P5059 = ctxsave."ctxsave"()
    set $P5060, $P5059
  if49_end123:
  unless48_end121:
    unless _lex_param_0 goto if50_end125 
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P5062, "ModuleLoader"
    getinterp $P5064
    set $P5063, $P5064["context"]
    $P5065 = $P5062."set_mainline_module"($P5063)
  if50_end125:
    .return () 
.end
.HLL "nqp"
.namespace []
.sub "open" :subid("cuid_48_1350818086.186") :anon :lex :outer("cuid_1_1350818086.186")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 319
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
    nqp_get_sc_object $P5005, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set _lex_param_1, $P5005
  default16:
    if haz_param_2, default17
    nqp_get_sc_object $P5006, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set _lex_param_2, $P5006
  default17:
    if haz_param_3, default18
    nqp_get_sc_object $P5007, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set _lex_param_3, $P5007
  default18:
    if haz_param_4, default19
    nqp_get_sc_object $P5008, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set _lex_param_4, $P5008
  default19:
    .lex "$mode", $P101 
    .lex "$handle", $P102 
    .lex "$filename", _lex_param_0 
    .lex "$r", _lex_param_1 
    .lex "$w", _lex_param_2 
    .lex "$a", _lex_param_3 
    .lex "$bin", _lex_param_4 
    nqp_get_sc_object $P5001, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P101, $P5001
    nqp_get_sc_object $P5002, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
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
.annotate 'line', 322
    $P102."open"(_lex_param_0, $P101)
.annotate 'line', 323
    unless _lex_param_4 goto if12_else14 
    set $S5003, "binary"
    goto if12_end15
  if12_else14:
    set $S5003, "utf8"
  if12_end15:
    $P102."encoding"($S5003)
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "close" :subid("cuid_49_1350818086.186") :anon :lex :outer("cuid_1_1350818086.186")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 331
    .param pmc _lex_param_0 
    .lex "$handle", _lex_param_0 
.annotate 'line', 332
    $P5001 = _lex_param_0."close"()
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "slurp" :subid("cuid_50_1350818086.186") :anon :lex :outer("cuid_1_1350818086.186")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 339
    .param pmc _lex_param_0 
    .lex "$handle", $P101 
    .lex "$contents", $P102 
    .lex "$filename", _lex_param_0 
    nqp_get_sc_object $P5001, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P101, $P5001
    nqp_get_sc_object $P5002, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P102, $P5002
.annotate 'line', 340
    $P5003 = "&open"(_lex_param_0, 1 :named("r"))
    set $P101, $P5003
.annotate 'line', 341
    $P5004 = $P101."readall"()
    set $P102, $P5004
.annotate 'line', 342
    $P101."close"()
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "spew" :subid("cuid_51_1350818086.186") :anon :lex :outer("cuid_1_1350818086.186")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 351
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$handle", $P101 
    .lex "$filename", _lex_param_0 
    .lex "$contents", _lex_param_1 
    nqp_get_sc_object $P5001, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P101, $P5001
.annotate 'line', 352
    $P5002 = "&open"(_lex_param_0, 1 :named("w"))
    set $P101, $P5002
.annotate 'line', 353
    $P101."print"(_lex_param_1)
.annotate 'line', 354
    $P5003 = $P101."close"()
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "print" :subid("cuid_53_1350818086.186") :anon :lex :outer("cuid_1_1350818086.186")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 357
    .param pmc _lex_param_0 :slurpy 
    .const 'Sub' $P5006 = 'cuid_52_1350818086.186' 
    capture_lex $P5006 
    .lex "@args", _lex_param_0 
    set $P5001, _lex_param_0
    iter $P5003, _lex_param_0
  for_next20:
    unless $P5003, for_done22
    shift $P5005, $P5003
  for_redo21:
    .const 'Sub' $P5004 = 'cuid_52_1350818086.186' 
    capture_lex $P5004
    $P5001 = $P5004($P5005)
    goto for_next20
  for_done22:
    .return (1) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_52_1350818086.186") :anon :lex :outer("cuid_53_1350818086.186")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 358
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    set $S5001, _lex_param_0
    print $S5001
    .return ($S5001) 
.end
.HLL "nqp"
.namespace []
.sub "say" :subid("cuid_54_1350818086.186") :anon :lex :outer("cuid_1_1350818086.186")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 364
    .param pmc _lex_param_0 :slurpy 
    .lex "@args", _lex_param_0 
.annotate 'line', 365
    $P5001 = "&print"(_lex_param_0 :flat, "\n")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "match" :subid("cuid_56_1350818086.186") :anon :lex :outer("cuid_1_1350818086.186")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 382
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :named("global") :optional 
    .param int haz_param_5 :opt_flag 
    .const 'Sub' $P5007 = 'cuid_55_1350818086.186' 
    capture_lex $P5007 
    if haz_param_5, default30
    nqp_get_sc_object $P5006, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set _lex_param_2, $P5006
  default30:
    .lex "$match", $P101 
    .lex "$text", _lex_param_0 
    .lex "$regex", _lex_param_1 
    .lex "$global", _lex_param_2 
    nqp_get_sc_object $P5001, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P101, $P5001
.annotate 'line', 383
    $P5002 = _lex_param_1."ACCEPTS"(_lex_param_0)
    set $P101, $P5002
    unless _lex_param_2 goto if13_else23 
    .const 'Sub' $P5003 = 'cuid_55_1350818086.186' 
    capture_lex $P5003
    $P5004 = $P5003()
    set $P5005, $P5004
    goto if13_end24
  if13_else23:
.annotate 'line', 392

    set $P5005, $P101
  if13_end24:
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_55_1350818086.186") :anon :lex :outer("cuid_56_1350818086.186")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 384
    .lex "@matches", $P101 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
  while14_test25:
    find_lex $P5002, "$match"
    set $P5011, $P5002
    unless $P5002 goto while14_done29 
  while14_redo27:
.annotate 'line', 386
.annotate 'line', 387
    find_lex $P5003, "$match"
    $P101."push"($P5003)
.annotate 'line', 388
    find_lex $P5004, "$match"
    $P5005 = $P5004."CURSOR"()
    find_lex $P5006, "$text"
    find_lex $P5007, "$regex"
    find_lex $P5008, "$match"
    $P5009 = $P5008."to"()
    $P5010 = $P5005."parse"($P5006, $P5007 :named("rule"), $P5009 :named("c"))
    store_lex "$match", $P5010
    set $P5011, $P5010
    goto while14_test25 
  while14_done29:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "subst" :subid("cuid_58_1350818086.186") :anon :lex :outer("cuid_1_1350818086.186")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 404
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 :named("global") :optional 
    .param int haz_param_6 :opt_flag 
    .const 'Sub' $P5020 = 'cuid_57_1350818086.186' 
    capture_lex $P5020 
    if haz_param_6, default44
    nqp_get_sc_object $P5019, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set _lex_param_3, $P5019
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
    nqp_get_sc_object $P5002, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P102, $P5002
    nqp_get_sc_object $P5003, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P103, $P5003
    nqp_get_sc_object $P5004, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P104, $P5004
    nqp_get_sc_object $P5005, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P105, $P5005
    unless _lex_param_3 goto if15_else31 
.annotate 'line', 405
    $P5006 = "&match"(_lex_param_0, _lex_param_1, 1 :named("global"))
    set $P5009, $P5006
    goto if15_end32
  if15_else31:
    new $P5007, 'ResizablePMCArray'
.annotate 'line', 406
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
    .const 'Sub' $P5016 = 'cuid_57_1350818086.186' 
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
    unless $I5003 goto if19_end43 
    set $S5003, _lex_param_0
    set $I5004, $P103
    set $I5005, $P105
    substr $S5002, $S5003, $I5004, $I5005
    push $P104, $S5002
  if19_end43:
    set $S5004, $P104
    .return ($S5004) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_57_1350818086.186") :anon :lex :outer("cuid_58_1350818086.186")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 411
    .param pmc _lex_param_0 
    .lex "$match", _lex_param_0 
    set $P5015, _lex_param_0
    unless _lex_param_0 goto if16_end34 
.annotate 'line', 412
.annotate 'line', 414
    $P5001 = _lex_param_0."from"()
    set $N5001, $P5001
    find_lex $P5002, "$offset"
    set $N5002, $P5002
    isgt $I5001, $N5001, $N5002
    unless $I5001 goto if17_end36 
    find_lex $P5003, "$result"
    find_lex $P5004, "$text"
    set $S5002, $P5004
    find_lex $P5005, "$offset"
    set $I5002, $P5005
.annotate 'line', 413
    $P5006 = _lex_param_0."from"()
    set $N5004, $P5006
    find_lex $P5007, "$offset"
    set $N5005, $P5007
    sub $N5003, $N5004, $N5005
    set $I5003, $N5003
    substr $S5001, $S5002, $I5002, $I5003
    push $P5003, $S5001
  if17_end36:
    find_lex $P5008, "$result"
    find_lex $P5009, "$is_code"
    unless $P5009 goto if18_else37 
.annotate 'line', 415
    find_lex $P5010, "$repl"
    $P5011 = $P5010(_lex_param_0)
    set $P5013, $P5011
    goto if18_end38
  if18_else37:
    find_lex $P5012, "$repl"
    set $P5013, $P5012
  if18_end38:
    set $S5003, $P5013
    push $P5008, $S5003
.annotate 'line', 416
    $P5014 = _lex_param_0."to"()
    store_lex "$offset", $P5014
    set $P5015, $P5014
  if16_end34:
    .return ($P5015) 
.end
.HLL "nqp"
.namespace []
.sub "hash" :subid("cuid_60_1350818086.186") :anon :lex :outer("cuid_1_1350818086.186")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 430
    .param pmc _lex_param_0 :slurpy :named 
    .const 'Sub' $P5007 = 'cuid_59_1350818086.186' 
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
    .const 'Sub' $P5005 = 'cuid_59_1350818086.186' 
    capture_lex $P5005
    $P5002 = $P5005($P5006)
    goto for_next46
  for_done48:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_59_1350818086.186") :anon :lex :outer("cuid_60_1350818086.186")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 432
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5001, "%h"
    set $S5001, _lex_param_0
    find_lex $P5003, "%new"
    set $S5002, _lex_param_0
    set $P5002, $P5003[$S5002]
    unless_null $P5002, fallback45
    nqp_get_sc_object $P5004, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P5002, $P5004
  fallback45:
    set $P5001[$S5001], $P5002
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "plan" :subid("cuid_61_1350818086.186") :anon :lex :outer("cuid_1_1350818086.186")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 443
    .param pmc _lex_param_0 
    .lex "$quantity", _lex_param_0 
.annotate 'line', 444
    set $S5002, _lex_param_0
    concat $S5001, "1..", $S5002
    $P5001 = "&say"($S5001)
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "ok" :subid("cuid_62_1350818086.186") :anon :lex :outer("cuid_1_1350818086.186")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 447
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :optional 
    .param int haz_param_7 :opt_flag 
    if haz_param_7, default57
    nqp_get_sc_object $P5010, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set _lex_param_1, $P5010
  default57:
    .lex "$condition", _lex_param_0 
    .lex "$desc", _lex_param_1 
    find_lex $P5001, "$test_counter"
    set $N5002, $P5001
    set $N5003, 1
    add $N5001, $N5002, $N5003
    box $P5002, $N5001
    store_lex "$test_counter", $P5002
    if _lex_param_0 goto unless20_end50 
.annotate 'line', 450
.annotate 'line', 451
    $P5003 = "&print"("not ")
  unless20_end50:
.annotate 'line', 453
    find_lex $P5004, "$test_counter"
    set $S5002, $P5004
    concat $S5001, "ok ", $S5002
    "&print"($S5001)
    unless _lex_param_1 goto if21_end52 
.annotate 'line', 454
.annotate 'line', 455
    set $S5004, _lex_param_1
    concat $S5003, " - ", $S5004
    $P5005 = "&print"($S5003)
  if21_end52:
    find_lex $P5006, "$test_counter"
    set $N5004, $P5006
    find_lex $P5007, "$todo_upto_test_num"
    set $N5005, $P5007
    isle $I5001, $N5004, $N5005
    unless $I5001 goto if22_end54 
.annotate 'line', 457
.annotate 'line', 458
    find_lex $P5008, "$todo_reason"
    $P5009 = "&print"($P5008)
  if22_end54:
.annotate 'line', 460
    "&print"("\n")
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
.sub "todo" :subid("cuid_63_1350818086.186") :anon :lex :outer("cuid_1_1350818086.186")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 465
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
.sub "skip" :subid("cuid_64_1350818086.186") :anon :lex :outer("cuid_1_1350818086.186")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 470
    .param pmc _lex_param_0 
    .lex "$desc", _lex_param_0 
    find_lex $P5001, "$test_counter"
    set $N5002, $P5001
    set $N5003, 1
    add $N5001, $N5002, $N5003
    box $P5002, $N5001
    store_lex "$test_counter", $P5002
.annotate 'line', 472
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
.sub "" :subid("cuid_2_1350818086.186") :anon :lex :outer("cuid_1_1350818086.186")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 12
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    get_who $P5001, $P101
    get_who $P5003, $P101
    set $P5002, $P5003["NQPModuleHOW"]
    unless_null $P5002, fallback58
    nqp_get_sc_object $P5006, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 0
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
    nqp_get_sc_object $P5013, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 0
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
    nqp_get_sc_object $P5020, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 0
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
    nqp_get_sc_object $P5027, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 0
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
    nqp_get_sc_object $P5034, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 0
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
    nqp_get_sc_object $P5041, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 0
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
    nqp_get_sc_object $P5048, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 0
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
    nqp_get_sc_object $P5055, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 0
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
.sub "" :subid("cuid_3_1350818086.186") :anon :lex :outer("cuid_1_1350818086.186")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 23
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    null $P5001
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_4_1350818086.186") :anon :lex :outer("cuid_1_1350818086.186")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 25
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    null $P5001
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_5_1350818086.186") :anon :lex :outer("cuid_1_1350818086.186")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 27
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    null $P5001
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_12_1350818086.186") :anon :lex :outer("cuid_1_1350818086.186")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 30
    .const 'Sub' $P5007 = 'cuid_6_1350818086.186' 
    capture_lex $P5007 
    .const 'Sub' $P5007 = 'cuid_7_1350818086.186' 
    capture_lex $P5007 
    .const 'Sub' $P5007 = 'cuid_8_1350818086.186' 
    capture_lex $P5007 
    .const 'Sub' $P5007 = 'cuid_9_1350818086.186' 
    capture_lex $P5007 
    .const 'Sub' $P5007 = 'cuid_10_1350818086.186' 
    capture_lex $P5007 
    .const 'Sub' $P5007 = 'cuid_11_1350818086.186' 
    capture_lex $P5007 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_6_1350818086.186' 
    capture_lex $P5001
    .const 'Sub' $P5002 = 'cuid_7_1350818086.186' 
    capture_lex $P5002
    .const 'Sub' $P5003 = 'cuid_8_1350818086.186' 
    capture_lex $P5003
    .const 'Sub' $P5004 = 'cuid_9_1350818086.186' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_10_1350818086.186' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_11_1350818086.186' 
    capture_lex $P5006
    .return ($P5006) 
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
.sub "add_dispatchee" :subid("cuid_6_1350818086.186") :anon :lex :outer("cuid_12_1350818086.186")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 35
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$code", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 5
    null $P5003
    repr_bind_attr_obj $P5001, $P5002, "$!dispatch_cache", $P5003
.annotate 'line', 37
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 5
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
.sub "is_dispatcher" :subid("cuid_7_1350818086.186") :anon :lex :outer("cuid_12_1350818086.186")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 39
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 5
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!dispatchees"
    defined $I5001, $P5003
    .return ($I5001) 
.end
.HLL "nqp"
.namespace []
.sub "derive_dispatcher" :subid("cuid_8_1350818086.186") :anon :lex :outer("cuid_12_1350818086.186")
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
    nqp_get_sc_object $P5006, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 5
    repr_get_attr_obj $P5007, $P5005, $P5006, "$!do"
    clone $P5004, $P5007
    set $P101, $P5004
    nqp_decontainerize $P5009, _lex_param_0
    repr_clone $P5008, $P5009
    set $P102, $P5008
    nqp_get_sc_object $P5010, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 5
    setattribute $P102, $P5010, "$!do", $P101
    nqp_get_sc_object $P5011, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 5
    nqp_decontainerize $P5013, _lex_param_0
    nqp_get_sc_object $P5014, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 5
    repr_get_attr_obj $P5015, $P5013, $P5014, "$!dispatchees"
    clone $P5012, $P5015
    setattribute $P102, $P5011, "$!dispatchees", $P5012
    set_sub_code_object $P101, $P102
    nqp_decontainerize $P5017, _lex_param_0
    nqp_get_sc_object $P5018, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 5
    repr_get_attr_obj $P5019, $P5017, $P5018, "$!do"
    getprop $P5016, $P5019, "CLONE_CALLBACK"
    set $P103, $P5016
    defined $I5001, $P103
    unless $I5001 goto if32_end75 
.annotate 'line', 54
.annotate 'line', 55
    nqp_decontainerize $P5020, _lex_param_0
    nqp_get_sc_object $P5021, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 5
    repr_get_attr_obj $P5022, $P5020, $P5021, "$!do"
    $P5023 = $P103($P5022, $P101, $P102)
  if32_end75:
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "clone" :subid("cuid_9_1350818086.186") :anon :lex :outer("cuid_12_1350818086.186")
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
    nqp_get_sc_object $P5006, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 5
    repr_get_attr_obj $P5007, $P5005, $P5006, "$!do"
    clone $P5004, $P5007
    set $P101, $P5004
    nqp_decontainerize $P5009, _lex_param_0
    repr_clone $P5008, $P5009
    set $P102, $P5008
    nqp_get_sc_object $P5010, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 5
    setattribute $P102, $P5010, "$!do", $P101
    set_sub_code_object $P101, $P102
    nqp_decontainerize $P5012, _lex_param_0
    nqp_get_sc_object $P5013, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 5
    repr_get_attr_obj $P5014, $P5012, $P5013, "$!do"
    getprop $P5011, $P5014, "CLONE_CALLBACK"
    set $P103, $P5011
    defined $I5001, $P103
    unless $I5001 goto if33_end77 
.annotate 'line', 71
.annotate 'line', 72
    nqp_decontainerize $P5015, _lex_param_0
    nqp_get_sc_object $P5016, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 5
    repr_get_attr_obj $P5017, $P5015, $P5016, "$!do"
    $P5018 = $P103($P5017, $P101, $P102)
  if33_end77:
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "nqpattr" :subid("cuid_10_1350818086.186") :anon :lex :outer("cuid_12_1350818086.186")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 77
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$key", _lex_param_1 
.annotate 'line', 78
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 5
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!do"
    $P5004 = $P5003."nqpattr"(_lex_param_1)
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "!set_name" :subid("cuid_11_1350818086.186") :anon :lex :outer("cuid_12_1350818086.186")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 80
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 5
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!do"
    set $S5001, _lex_param_1
    assign $P5003, $S5001
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_13_1350818086.186") :anon :lex :outer("cuid_1_1350818086.186")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 90
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .return () 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_21_1350818086.186") :anon :lex :outer("cuid_1_1350818086.186")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 95
    .const 'Sub' $P5008 = 'cuid_14_1350818086.186' 
    capture_lex $P5008 
    .const 'Sub' $P5008 = 'cuid_15_1350818086.186' 
    capture_lex $P5008 
    .const 'Sub' $P5008 = 'cuid_16_1350818086.186' 
    capture_lex $P5008 
    .const 'Sub' $P5008 = 'cuid_17_1350818086.186' 
    capture_lex $P5008 
    .const 'Sub' $P5008 = 'cuid_18_1350818086.186' 
    capture_lex $P5008 
    .const 'Sub' $P5008 = 'cuid_19_1350818086.186' 
    capture_lex $P5008 
    .const 'Sub' $P5008 = 'cuid_20_1350818086.186' 
    capture_lex $P5008 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_14_1350818086.186' 
    capture_lex $P5001
    .const 'Sub' $P5002 = 'cuid_15_1350818086.186' 
    capture_lex $P5002
    .const 'Sub' $P5003 = 'cuid_16_1350818086.186' 
    capture_lex $P5003
    .const 'Sub' $P5004 = 'cuid_17_1350818086.186' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_18_1350818086.186' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_19_1350818086.186' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_20_1350818086.186' 
    capture_lex $P5007
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "nqpattr" :subid("cuid_14_1350818086.186") :anon :lex :outer("cuid_21_1350818086.186")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 100
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$key", _lex_param_1 
.annotate 'line', 101
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 7
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!do"
    $P5004 = $P5003."nqpattr"(_lex_param_1)
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "SET_CAPS" :subid("cuid_15_1350818086.186") :anon :lex :outer("cuid_21_1350818086.186")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 103
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$caps", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 7
    repr_bind_attr_obj $P5001, $P5002, "$!caps", _lex_param_1
    .return (_lex_param_1) 
.end
.HLL "nqp"
.namespace []
.sub "SET_NFA" :subid("cuid_16_1350818086.186") :anon :lex :outer("cuid_21_1350818086.186")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 106
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$nfa", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 7
    repr_bind_attr_obj $P5001, $P5002, "$!nfa", _lex_param_1
    .return (_lex_param_1) 
.end
.HLL "nqp"
.namespace []
.sub "SET_ALT_NFA" :subid("cuid_17_1350818086.186") :anon :lex :outer("cuid_21_1350818086.186")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 109
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    .lex "$nfa", _lex_param_2 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 7
    repr_get_attr_obj $P5003, $P5001, $P5002, "%!alt_nfas"
    unless_null $P5003, vivi_3478
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 7
    new $P5006, 'Hash'
    repr_bind_attr_obj $P5004, $P5005, "%!alt_nfas", $P5006
    set $P5003, $P5006
  vivi_3478:
    nqp_decontainerize $P5007, _lex_param_0
    nqp_get_sc_object $P5008, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 7
    repr_get_attr_obj $P5009, $P5007, $P5008, "%!alt_nfas"
    set $S5001, _lex_param_1
    set $P5009[$S5001], _lex_param_2
    .return (_lex_param_2) 
.end
.HLL "nqp"
.namespace []
.sub "CAPS" :subid("cuid_18_1350818086.186") :anon :lex :outer("cuid_21_1350818086.186")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 113
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 7
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!caps"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "NFA" :subid("cuid_19_1350818086.186") :anon :lex :outer("cuid_21_1350818086.186")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 116
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 7
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!nfa"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "ALT_NFA" :subid("cuid_20_1350818086.186") :anon :lex :outer("cuid_21_1350818086.186")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 119
    .param pmc _lex_param_0 
    .param string _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 7
    repr_get_attr_obj $P5003, $P5001, $P5002, "%!alt_nfas"
    isnull $I5001, $P5003
    unless $I5001 goto if35_else79 
    null $P5004
    set $P5010, $P5004
    goto if35_end80
  if35_else79:
    nqp_decontainerize $P5006, _lex_param_0
    nqp_get_sc_object $P5007, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 7
    repr_get_attr_obj $P5008, $P5006, $P5007, "%!alt_nfas"
    set $P5005, $P5008[_lex_param_1]
    unless_null $P5005, fallback81
    null $P5009
    set $P5005, $P5009
  fallback81:
    set $P5010, $P5005
  if35_end80:
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_42_1350818086.186") :anon :lex :outer("cuid_1_1350818086.186")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 130
    .const 'Sub' $P5021 = 'cuid_22_1350818086.186' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_23_1350818086.186' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_24_1350818086.186' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_25_1350818086.186' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_26_1350818086.186' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_27_1350818086.186' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_28_1350818086.186' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_29_1350818086.186' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_30_1350818086.186' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_31_1350818086.186' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_32_1350818086.186' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_33_1350818086.186' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_34_1350818086.186' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_35_1350818086.186' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_36_1350818086.186' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_37_1350818086.186' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_38_1350818086.186' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_39_1350818086.186' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_40_1350818086.186' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_41_1350818086.186' 
    capture_lex $P5021 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_22_1350818086.186' 
    capture_lex $P5001
    .const 'Sub' $P5002 = 'cuid_23_1350818086.186' 
    capture_lex $P5002
    .const 'Sub' $P5003 = 'cuid_24_1350818086.186' 
    capture_lex $P5003
    .const 'Sub' $P5004 = 'cuid_25_1350818086.186' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_26_1350818086.186' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_27_1350818086.186' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_28_1350818086.186' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_29_1350818086.186' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_30_1350818086.186' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_31_1350818086.186' 
    capture_lex $P5010
    .const 'Sub' $P5011 = 'cuid_32_1350818086.186' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_33_1350818086.186' 
    capture_lex $P5012
    .const 'Sub' $P5013 = 'cuid_34_1350818086.186' 
    capture_lex $P5013
    .const 'Sub' $P5014 = 'cuid_35_1350818086.186' 
    capture_lex $P5014
    .const 'Sub' $P5015 = 'cuid_36_1350818086.186' 
    capture_lex $P5015
    .const 'Sub' $P5016 = 'cuid_37_1350818086.186' 
    capture_lex $P5016
    .const 'Sub' $P5017 = 'cuid_38_1350818086.186' 
    capture_lex $P5017
    .const 'Sub' $P5018 = 'cuid_39_1350818086.186' 
    capture_lex $P5018
    .const 'Sub' $P5019 = 'cuid_40_1350818086.186' 
    capture_lex $P5019
    .const 'Sub' $P5020 = 'cuid_41_1350818086.186' 
    capture_lex $P5020
    .return ($P5020) 
.end
.HLL "nqp"
.namespace []
.sub "CREATE" :subid("cuid_22_1350818086.186") :anon :lex :outer("cuid_42_1350818086.186")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 131
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5002, _lex_param_0
    repr_instance_of $P5001, $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "bless" :subid("cuid_23_1350818086.186") :anon :lex :outer("cuid_42_1350818086.186")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 135
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy :named 
    .lex "self", $P101 
    .lex "$instance", $P102 
    .lex "$self", _lex_param_0 
    .lex "%attributes", _lex_param_1 
    set $P101, _lex_param_0
    nqp_get_sc_object $P5001, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P102, $P5001
.annotate 'line', 136
    nqp_decontainerize $P5002, $P101
    $P5003 = $P5002."CREATE"()
    set $P102, $P5003
.annotate 'line', 137
    $P102."BUILDALL"(_lex_param_1 :flat :named)
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "BUILDALL" :subid("cuid_24_1350818086.186") :anon :lex :outer("cuid_42_1350818086.186")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 141
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy :named 
    .const 'Sub' $P5015 = 'cuid_66_1350818086.186' 
    capture_lex $P5015 
    .lex "self", $P101 
    .lex "$build_plan", $P102 
    .lex "$count", $P103 
    .lex "$i", $P104 
    .lex "$self", _lex_param_0 
    .lex "%attrinit", _lex_param_1 
    set $P101, _lex_param_0
    nqp_get_sc_object $P5001, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P102, $P5001
    nqp_get_sc_object $P5002, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P103, $P5002
    nqp_get_sc_object $P5003, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P104, $P5003
.annotate 'line', 143
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
  while36_test82:
    set $N5001, $P104
    set $N5002, $P103
    islt $I5002, $N5001, $N5002
    box $P5013, $I5002
    set $P5012, $P5013
    unless $I5002 goto while36_done86 
  while36_redo84:
    .const 'Sub' $P5010 = 'cuid_66_1350818086.186' 
    capture_lex $P5010
    $P5011 = $P5010()
    set $P5012, $P5011
    goto while36_test82 
  while36_done86:
    nqp_decontainerize $P5014, $P101
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_66_1350818086.186") :anon :lex :outer("cuid_24_1350818086.186")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 146
    .const 'Sub' $P5027 = 'cuid_65_1350818086.186' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_67_1350818086.186' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_68_1350818086.186' 
    capture_lex $P5027 
    .lex "$task", $P101 
    nqp_get_sc_object $P5001, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
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
    unless $I5002 goto if37_else87 
.annotate 'line', 149
.annotate 'line', 151
    find_lex $P5010, "self"
    nqp_decontainerize $P5009, $P5010
    find_lex $P5011, "%attrinit"
    set $P5008, $P101[1]
    $P5012 = $P5008($P5009, $P5011 :flat :named)
    set $P5026, $P5012
    goto if37_end88
  if37_else87:
    set $P5013, $P101[0]
    set $I5005, $P5013
    iseq $I5004, $I5005, 1
    unless $I5004 goto if38_else89 
    .const 'Sub' $P5014 = 'cuid_65_1350818086.186' 
    capture_lex $P5014
    $P5015 = $P5014()
    set $P5025, $P5015
    goto if38_end90
  if38_else89:
    set $P5016, $P101[0]
    set $I5007, $P5016
    iseq $I5006, $I5007, 2
    unless $I5006 goto if40_else94 
    .const 'Sub' $P5017 = 'cuid_67_1350818086.186' 
    capture_lex $P5017
    $P5018 = $P5017()
    set $P5024, $P5018
    goto if40_end95
  if40_else94:
    set $P5019, $P101[0]
    set $I5009, $P5019
    iseq $I5008, $I5009, 3
    unless $I5008 goto if42_else99 
    .const 'Sub' $P5020 = 'cuid_68_1350818086.186' 
    capture_lex $P5020
    $P5021 = $P5020()
    set $P5023, $P5021
    goto if42_end100
  if42_else99:
.annotate 'line', 189
    box $P5022, "Invalid BUILDALLPLAN"
    die $P5022
    set $P5023, $P5022
  if42_end100:
    set $P5024, $P5023
  if40_end95:
    set $P5025, $P5024
  if38_end90:
    set $P5026, $P5025
  if37_end88:
    .return ($P5026) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_65_1350818086.186") :anon :lex :outer("cuid_66_1350818086.186")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 153
    .lex "$key_name", $P101 
    nqp_get_sc_object $P5001, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P101, $P5001
    find_lex $P5003, "$task"
    set $P5002, $P5003[2]
    set $P101, $P5002
    find_lex $P5004, "%attrinit"
    set $S5001, $P101
    exists $I5001, $P5004[$S5001]
    box $P5014, $I5001
    set $P5013, $P5014
    unless $I5001 goto if39_end92 
.annotate 'line', 156
    find_lex $P5006, "self"
    nqp_decontainerize $P5005, $P5006
    find_lex $P5008, "$task"
    set $P5007, $P5008[1]
    find_lex $P5009, "$task"
    set $S5002, $P5009[3]
    find_lex $P5011, "%attrinit"
    set $S5003, $P101
    set $P5010, $P5011[$S5003]
    unless_null $P5010, fallback93
    nqp_get_sc_object $P5012, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P5010, $P5012
  fallback93:
    setattribute $P5005, $P5007, $S5002, $P5010
    set $P5013, $P5010
  if39_end92:
    .return ($P5013) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_67_1350818086.186") :anon :lex :outer("cuid_66_1350818086.186")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 160
    .lex "$key_name", $P101 
    nqp_get_sc_object $P5001, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P101, $P5001
    find_lex $P5003, "$task"
    set $P5002, $P5003[2]
    set $P101, $P5002
    find_lex $P5004, "%attrinit"
    set $S5001, $P101
    exists $I5001, $P5004[$S5001]
    unless $I5001 goto if41_else96 
.annotate 'line', 164
    find_lex $P5006, "self"
    nqp_decontainerize $P5005, $P5006
    find_lex $P5008, "$task"
    set $P5007, $P5008[1]
    find_lex $P5009, "$task"
    set $S5002, $P5009[3]
    find_lex $P5011, "%attrinit"
    set $S5003, $P101
    set $P5010, $P5011[$S5003]
    unless_null $P5010, fallback98
    nqp_get_sc_object $P5012, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P5010, $P5012
  fallback98:
    setattribute $P5005, $P5007, $S5002, $P5010
    set $P5019, $P5010
    goto if41_end97
  if41_else96:
.annotate 'line', 167
    find_lex $P5014, "self"
    nqp_decontainerize $P5013, $P5014
    find_lex $P5016, "$task"
    set $P5015, $P5016[1]
    find_lex $P5017, "$task"
    set $S5004, $P5017[3]
    new $P5018, 'ResizablePMCArray'
    setattribute $P5013, $P5015, $S5004, $P5018
    set $P5019, $P5018
  if41_end97:
    .return ($P5019) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_68_1350818086.186") :anon :lex :outer("cuid_66_1350818086.186")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 171
    .lex "$key_name", $P101 
    nqp_get_sc_object $P5001, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P101, $P5001
    find_lex $P5003, "$task"
    set $P5002, $P5003[2]
    set $P101, $P5002
    find_lex $P5004, "%attrinit"
    set $S5001, $P101
    exists $I5001, $P5004[$S5001]
    unless $I5001 goto if43_else101 
.annotate 'line', 175
    find_lex $P5006, "self"
    nqp_decontainerize $P5005, $P5006
    find_lex $P5008, "$task"
    set $P5007, $P5008[1]
    find_lex $P5009, "$task"
    set $S5002, $P5009[3]
    find_lex $P5011, "%attrinit"
    set $S5003, $P101
    set $P5010, $P5011[$S5003]
    unless_null $P5010, fallback103
    nqp_get_sc_object $P5012, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P5010, $P5012
  fallback103:
    setattribute $P5005, $P5007, $S5002, $P5010
    set $P5019, $P5010
    goto if43_end102
  if43_else101:
.annotate 'line', 178
    find_lex $P5014, "self"
    nqp_decontainerize $P5013, $P5014
    find_lex $P5016, "$task"
    set $P5015, $P5016[1]
    find_lex $P5017, "$task"
    set $S5004, $P5017[3]
    new $P5018, 'Hash'
    setattribute $P5013, $P5015, $S5004, $P5018
    set $P5019, $P5018
  if43_end102:
    .return ($P5019) 
.end
.HLL "nqp"
.namespace []
.sub "new" :subid("cuid_25_1350818086.186") :anon :lex :outer("cuid_42_1350818086.186")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 196
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy :named 
    .lex "self", _lex_param_0 
    .lex "%attributes", _lex_param_1 
.annotate 'line', 197
    nqp_decontainerize $P5001, _lex_param_0
    $P5002 = $P5001."bless"(_lex_param_1 :flat :named)
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "Str" :subid("cuid_26_1350818086.186") :anon :lex :outer("cuid_42_1350818086.186")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 200
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    multi_dispatch_over_lexical_candidates $P5001
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "Str" :subid("cuid_27_1350818086.186") :anon :lex :outer("cuid_42_1350818086.186")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 201
    .param pmc _lex_param_0 
    .lex "self", $P101 
    .lex "$self", _lex_param_0 
    set $P101, _lex_param_0
    .return ("") 
.end
.HLL "nqp"
.namespace []
.sub "Str" :subid("cuid_28_1350818086.186") :anon :lex :outer("cuid_42_1350818086.186")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 204
    .param pmc _lex_param_0 
    .lex "self", $P101 
    .lex "$self", _lex_param_0 
    set $P101, _lex_param_0
.annotate 'line', 205
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
.sub "Numeric" :subid("cuid_29_1350818086.186") :anon :lex :outer("cuid_42_1350818086.186")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 208
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    multi_dispatch_over_lexical_candidates $P5001
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "Numeric" :subid("cuid_30_1350818086.186") :anon :lex :outer("cuid_42_1350818086.186")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 209
    .param pmc _lex_param_0 
    .lex "self", $P101 
    .lex "$self", _lex_param_0 
    set $P101, _lex_param_0
    .return (0.0) 
.end
.HLL "nqp"
.namespace []
.sub "Int" :subid("cuid_31_1350818086.186") :anon :lex :outer("cuid_42_1350818086.186")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 213
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    multi_dispatch_over_lexical_candidates $P5001
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "Int" :subid("cuid_32_1350818086.186") :anon :lex :outer("cuid_42_1350818086.186")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 214
    .param pmc _lex_param_0 
    .lex "self", $P101 
    .lex "$self", _lex_param_0 
    set $P101, _lex_param_0
    .return (0) 
.end
.HLL "nqp"
.namespace []
.sub "at_pos" :subid("cuid_33_1350818086.186") :anon :lex :outer("cuid_42_1350818086.186")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 218
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$pos", _lex_param_1 
    multi_dispatch_over_lexical_candidates $P5001
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "at_pos" :subid("cuid_34_1350818086.186") :anon :lex :outer("cuid_42_1350818086.186")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 219
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", $P101 
    .lex "$self", _lex_param_0 
    .lex "$pos", _lex_param_1 
    set $P101, _lex_param_0
    nqp_get_sc_object $P5001, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "at_key" :subid("cuid_35_1350818086.186") :anon :lex :outer("cuid_42_1350818086.186")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 223
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$key", _lex_param_1 
    multi_dispatch_over_lexical_candidates $P5001
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "at_key" :subid("cuid_36_1350818086.186") :anon :lex :outer("cuid_42_1350818086.186")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 224
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", $P101 
    .lex "$self", _lex_param_0 
    .lex "$key", _lex_param_1 
    set $P101, _lex_param_0
    nqp_get_sc_object $P5001, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "defined" :subid("cuid_37_1350818086.186") :anon :lex :outer("cuid_42_1350818086.186")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 228
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    repr_defined $I5001, $P5001
    .return ($I5001) 
.end
.HLL "nqp"
.namespace []
.sub "ACCEPTS" :subid("cuid_38_1350818086.186") :anon :lex :outer("cuid_42_1350818086.186")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 232
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$topic", _lex_param_1 
    multi_dispatch_over_lexical_candidates $P5001
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "ACCEPTS" :subid("cuid_39_1350818086.186") :anon :lex :outer("cuid_42_1350818086.186")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 233
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
.sub "isa" :subid("cuid_40_1350818086.186") :anon :lex :outer("cuid_42_1350818086.186")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 237
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$type", _lex_param_1 
.annotate 'line', 238
    nqp_decontainerize $P5002, _lex_param_0
    get_how $P5001, $P5002
    nqp_decontainerize $P5003, _lex_param_0
    $P5004 = $P5001."isa"($P5003, _lex_param_1)
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "__dump" :subid("cuid_41_1350818086.186") :anon :lex :outer("cuid_42_1350818086.186")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 241
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .const 'Sub' $P5017 = 'cuid_70_1350818086.186' 
    capture_lex $P5017 
    .lex "$subindent", $P101 
    .lex "self", _lex_param_0 
    .lex "$dumper", _lex_param_1 
    .lex "$label", _lex_param_2 
    nqp_get_sc_object $P5001, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P101, $P5001
    root_new $P102, ['parrot';'Continuation']
    set_label $P102, lexotic_104
    .lex "RETURN", $P102
    nqp_decontainerize $P5002, _lex_param_0
    repr_defined $I5001, $P5002
    if $I5001 goto unless44_end107 
    find_lex $P5003, "RETURN"
    $P5004 = $P5003(0)
  unless44_end107:
.annotate 'line', 243
    $P5005 = _lex_param_1."newIndent"()
    set $P101, $P5005
.annotate 'line', 244
    "&print"("{")
.annotate 'line', 245
    nqp_decontainerize $P5010, _lex_param_0
    get_how $P5009, $P5010
    nqp_decontainerize $P5011, _lex_param_0
    $P5012 = $P5009."parents"($P5011)
    set $P5006, $P5012
    iter $P5008, $P5012
  for_next117:
    unless $P5008, for_done119
    shift $P5014, $P5008
  for_redo118:
    .const 'Sub' $P5013 = 'cuid_70_1350818086.186' 
    capture_lex $P5013
    $P5006 = $P5013($P5014)
    goto for_next117
  for_done119:
.annotate 'line', 264
    _lex_param_1."deleteIndent"()
.annotate 'line', 265
    $P5015 = _lex_param_1."indent"()
    $P5016 = "&print"("\n", $P5015, "}")
    goto lexotic_105
  lexotic_104:
    .get_results ($P5016)
  lexotic_105:
    .return ($P5016) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_70_1350818086.186") :anon :lex :outer("cuid_41_1350818086.186")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 245
    .param pmc _lex_param_0 
    .const 'Sub' $P5008 = 'cuid_69_1350818086.186' 
    capture_lex $P5008 
    .lex "$type", _lex_param_0 
.annotate 'line', 246
    get_how $P5004, _lex_param_0
    $P5005 = $P5004."attributes"(_lex_param_0, 1 :named("local"))
    set $P5001, $P5005
    iter $P5003, $P5005
  for_next114:
    unless $P5003, for_done116
    shift $P5007, $P5003
  for_redo115:
    .const 'Sub' $P5006 = 'cuid_69_1350818086.186' 
    capture_lex $P5006
    $P5001 = $P5006($P5007)
    goto for_next114
  for_done116:
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_69_1350818086.186") :anon :lex :outer("cuid_70_1350818086.186")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 246
    .param pmc _lex_param_0 
    .lex "$name", $P101 
    .lex "$attrtype", $P102 
    .lex "$_", _lex_param_0 
    nqp_get_sc_object $P5001, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P101, $P5001
    nqp_get_sc_object $P5002, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P102, $P5002
.annotate 'line', 247
    $P5003 = _lex_param_0."name"()
    set $P101, $P5003
.annotate 'line', 248
    $P5004 = _lex_param_0."type"()
    set $P102, $P5004
.annotate 'line', 249
    find_lex $P5005, "$subindent"
    find_lex $P5007, "$type"
    get_how $P5006, $P5007
    find_lex $P5008, "$type"
    $P5009 = $P5006."name"($P5008)
    "&print"("\n", $P5005, $P5009, "::", $P101, " => ")
    get_id $I5002, $P102
    nqp_get_sc_object $P5010, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 2
    get_id $I5003, $P5010
    iseq $I5001, $I5002, $I5003
    unless $I5001 goto if45_else108 
.annotate 'line', 250
.annotate 'line', 251
    find_lex $P5011, "$dumper"
    find_lex $P5012, "$label"
    find_lex $P5014, "self"
    nqp_decontainerize $P5013, $P5014
    find_lex $P5015, "$type"
    set $S5001, $P101
    repr_get_attr_int $I5004, $P5013, $P5015, $S5001
    $P5016 = $P5011."dump"($P5012, $I5004)
    set $P5040, $P5016
    goto if45_end109
  if45_else108:
    get_id $I5006, $P102
    nqp_get_sc_object $P5017, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 3
    get_id $I5007, $P5017
    iseq $I5005, $I5006, $I5007
    unless $I5005 goto if46_else110 
.annotate 'line', 253
.annotate 'line', 254
    find_lex $P5018, "$dumper"
    find_lex $P5019, "$label"
    find_lex $P5021, "self"
    nqp_decontainerize $P5020, $P5021
    find_lex $P5022, "$type"
    set $S5002, $P101
    repr_get_attr_num $N5001, $P5020, $P5022, $S5002
    $P5023 = $P5018."dump"($P5019, $N5001)
    set $P5039, $P5023
    goto if46_end111
  if46_else110:
    get_id $I5009, $P102
    nqp_get_sc_object $P5024, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 4
    get_id $I5010, $P5024
    iseq $I5008, $I5009, $I5010
    unless $I5008 goto if47_else112 
.annotate 'line', 256
.annotate 'line', 257
    find_lex $P5025, "$dumper"
    find_lex $P5026, "$label"
    find_lex $P5028, "self"
    nqp_decontainerize $P5027, $P5028
    find_lex $P5029, "$type"
    set $S5004, $P101
    repr_get_attr_str $S5003, $P5027, $P5029, $S5004
    $P5030 = $P5025."dump"($P5026, $S5003)
    set $P5038, $P5030
    goto if47_end113
  if47_else112:
.annotate 'line', 259
.annotate 'line', 260
    find_lex $P5031, "$dumper"
    find_lex $P5032, "$label"
    find_lex $P5035, "self"
    nqp_decontainerize $P5034, $P5035
    find_lex $P5036, "$type"
    set $S5005, $P101
    getattribute $P5033, $P5034, $P5036, $S5005
    $P5037 = $P5031."dump"($P5032, $P5033)
    set $P5038, $P5037
  if47_end113:
    set $P5039, $P5038
  if46_end111:
    set $P5040, $P5039
  if45_end109:
    .return ($P5040) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_47_1350818086.186") :anon :lex :outer("cuid_1_1350818086.186")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 270
    .const 'Sub' $P5005 = 'cuid_43_1350818086.186' 
    capture_lex $P5005 
    .const 'Sub' $P5005 = 'cuid_44_1350818086.186' 
    capture_lex $P5005 
    .const 'Sub' $P5005 = 'cuid_45_1350818086.186' 
    capture_lex $P5005 
    .const 'Sub' $P5005 = 'cuid_46_1350818086.186' 
    capture_lex $P5005 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_43_1350818086.186' 
    capture_lex $P5001
    .const 'Sub' $P5002 = 'cuid_44_1350818086.186' 
    capture_lex $P5002
    .const 'Sub' $P5003 = 'cuid_45_1350818086.186' 
    capture_lex $P5003
    .const 'Sub' $P5004 = 'cuid_46_1350818086.186' 
    capture_lex $P5004
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "new" :subid("cuid_43_1350818086.186") :anon :lex :outer("cuid_47_1350818086.186")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 291
    .param pmc _lex_param_0 
    .lex "$n", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P101, $P5001
.annotate 'line', 292
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."CREATE"()
    set $P101, $P5003
.annotate 'line', 293
    $P101."BUILD"()
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "BUILD" :subid("cuid_44_1350818086.186") :anon :lex :outer("cuid_47_1350818086.186")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 297
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 36
    new $P5003, 'ResizablePMCArray'
    repr_bind_attr_obj $P5001, $P5002, "@!array", $P5003
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 36
    new $P5006, 'Hash'
    repr_bind_attr_obj $P5004, $P5005, "%!hash", $P5006
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "list" :subid("cuid_45_1350818086.186") :anon :lex :outer("cuid_47_1350818086.186")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 302
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 36
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!array"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "hash" :subid("cuid_46_1350818086.186") :anon :lex :outer("cuid_47_1350818086.186")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 304
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 36
    repr_get_attr_obj $P5003, $P5001, $P5002, "%!hash"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_72_1350818086.186") :load :init
.annotate 'file', "src\\stage2\\NQPCORE.setting"
    .const 'Sub' $P5001 = 'cuid_71_1350818086.186' 
    capture_lex $P5001 
    .local pmc cur_sc 
    nqp_dynop_setup 
    nqp_bigint_setup 
    getinterp $P5001
    get_class $P5002, "LexPad"
    get_class $P5003, "NQPLexPad"
    $P5001."hll_map"($P5002, $P5003)
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P5001, "ModuleLoader"
    $P5001."load_module"("nqpmo")
    nqp_create_sc $P5001, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2"
    set cur_sc, $P5001
    cur_sc."set_description"("src\\stage2\\NQPCORE.setting")
    new $P5002, 'ResizableStringArray'
    null $S5001
    push $P5002, $S5001
    push $P5002, "P6opaque"
    push $P5002, "RoleToRoleApplier"
    push $P5002, "BE58E51235EED3306B26CFF0B8705FAD5A9CA65C-1350818082.792"
    push $P5002, "src\\stage2\\gen\\nqp-mo.pm"
    push $P5002, "NQPConcreteRoleHOW"
    push $P5002, "RoleToClassApplier"
    push $P5002, "NQPCurriedRoleHOW"
    push $P5002, "NQPParametricRoleHOW"
    push $P5002, "NQPClassHOW"
    push $P5002, "NQPNativeHOW"
    push $P5002, "NQPAttribute"
    push $P5002, "NQPModuleHOW"
    push $P5002, "Uninstantiable"
    push $P5002, "P6int"
    push $P5002, "P6num"
    push $P5002, "P6str"
    push $P5002, "add_dispatchee"
    push $P5002, "is_dispatcher"
    push $P5002, "derive_dispatcher"
    push $P5002, "clone"
    push $P5002, "nqpattr"
    push $P5002, "!set_name"
    push $P5002, "$!do"
    push $P5002, "$!signature"
    push $P5002, "$!dispatchees"
    push $P5002, "$!dispatch_cache"
    push $P5002, "$!types"
    push $P5002, "$!definednesses"
    push $P5002, "SET_CAPS"
    push $P5002, "SET_NFA"
    push $P5002, "SET_ALT_NFA"
    push $P5002, "CAPS"
    push $P5002, "NFA"
    push $P5002, "ALT_NFA"
    push $P5002, "$!caps"
    push $P5002, "$!nfa"
    push $P5002, "%!alt_nfas"
    push $P5002, "CREATE"
    push $P5002, "bless"
    push $P5002, "BUILDALL"
    push $P5002, "new"
    push $P5002, "Str"
    push $P5002, "Numeric"
    push $P5002, "Int"
    push $P5002, "at_pos"
    push $P5002, "at_key"
    push $P5002, "defined"
    push $P5002, "ACCEPTS"
    push $P5002, "isa"
    push $P5002, "__dump"
    push $P5002, "BUILD"
    push $P5002, "list"
    push $P5002, "hash"
    push $P5002, "@!array"
    push $P5002, "%!hash"
    push $P5002, "__6MODEL_CORE__"
    push $P5002, "GLOBALish"
    push $P5002, "EXPORTHOW"
    push $P5002, "int"
    push $P5002, "num"
    push $P5002, "str"
    push $P5002, "NQPRoutine"
    push $P5002, "NQPSignature"
    push $P5002, "NQPRegex"
    push $P5002, "NQPMu"
    push $P5002, "name"
    push $P5002, "code"
    push $P5002, "get_string"
    push $P5002, "get_number"
    push $P5002, "get_integer"
    push $P5002, "get_pmc_keyed_int"
    push $P5002, "get_pmc_keyed_str"
    push $P5002, "NQPCapture"
    push $P5002, "set_pmc_keyed_int"
    push $P5002, "exists_keyed_int"
    push $P5002, "delete_keyed_int"
    push $P5002, "unshift_pmc"
    push $P5002, "push_pmc"
    push $P5002, "get_pmc_keyed"
    push $P5002, "set_pmc_keyed_str"
    push $P5002, "set_pmc_keyed"
    push $P5002, "exists_keyed"
    push $P5002, "exists_keyed_str"
    push $P5002, "delete_keyed"
    push $P5002, "delete_keyed_str"
    .const 'Sub' $P5003 = 'cuid_71_1350818086.186' 
    capture_lex $P5003
    $P5004 = $P5003()
    nqp_deserialize_sc "AQAAAEAAAAACAAAAUAAAAAoAAACgAAAATAkAAEYAAACsDQAA4hgAAAAAAADiGAAAAAAAAOIYAADiGAAAAAAAAAMAAAAEAAAAOAAAAAAAAAABAAAAAAAAAA0AAAAYAQAADgAAAFwBAAAPAAAAnAEAABAAAADcAQAAAQAAABwCAAABAAAAZgMAAAEAAAAwBAAAAQAAAIgFAAABAAAA4gYAAAAAAAApAAAAAAAAAAAAAAAKAAkAAAACAAAAAgABAAAAAgAAAAUAAAACAAEAAAADAAAABgAAAAIAAQAAAAQAAAAHAAAAAgABAAAABQAAAAgAAAACAAEAAAAGAAAACQAAAAIAAQAAAAcAAAAKAAAAAgABAAAACAAAAAsAAAACAAEAAAAJAAAADAAAAAIAAQAAAAoAAAAKAAAAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAQAAAAAAAAACAAAAAAAAAAAAAwAAAAAAKgAAAAAAAAABAAAACgAAAAAACgAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAArAAAAAAAAAAIAAAAKAAAAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALAAAAAAAAAADAAAACgAAAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAC0AAAAAAAAABAAAAAoAAAAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAuAAAAAAAAAAUAAAAKAAAAAAAKAAYAAAARAAAACwAAAAAAAAAAABIAAAALAAAAAAABAAAAEwAAAAsAAAAAAAIAAAAUAAAACwAAAAAAAwAAABUAAAALAAAAAAAEAAAAFgAAAAsAAAAAAAUAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAAABQAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAAAUAAAAKAAQAAAAXAAAABAAAAAAAAAAAABgAAAAEAAEAAAAAAAAAGQAAAAQAAgAAAAAAAAAaAAAABAADAAAAAAAAAAAAAAAvAAAAAAAAAAYAAAAKAAAAAAAKAAAAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAAABgAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAABgAAAAoAAgAAABsAAAAEAAAAAAAAAAAAHAAAAAQAAQAAAAAAAAAAAAAAMAAAAAAAAAAHAAAACgAAAAAACgAHAAAAFQAAAAIAAAAAAAgAAAAdAAAAAgAAAAAACQAAAB4AAAACAAAAAAAKAAAAHwAAAAIAAAAAAAsAAAAgAAAAAgAAAAAADAAAACEAAAACAAAAAAANAAAAIgAAAAIAAAAAAA4AAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAAABwAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAAAcAAAAKAAQAAAAXAAAABAAAAAAAAAAAACMAAAAEAAEAAAAAAAAAJAAAAAQAAgAAAAAAAAAlAAAABAADAAAAAAAAAAAAAAAxAAAAAAAAAA8AAAAKAAAAAAAKAA0AAAAmAAAAAgAAAAAAEAAAACcAAAACAAAAAAARAAAAKAAAAAIAAAAAABIAAAApAAAAAgAAAAAAEwAAACoAAAACAAAAAAAUAAAAKwAAAAIAAAAAABcAAAAsAAAAAgAAAAAAGQAAAC0AAAACAAAAAAAbAAAALgAAAAIAAAAAAB0AAAAvAAAAAgAAAAAAHwAAADAAAAACAAAAAAAgAAAAMQAAAAIAAAAAACIAAAAyAAAAAgAAAAAAIwAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAAAPAAAABAAAAAAAAAABAAAAAAAAAAUAAAAAAAAAAwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAQAAAAAAAAACAAAAAAAPAAAAAwAAAAAAMgAAAAAAAAAkAAAACgAAAAAACgAQAAAAJgAAAAIAAAAAABAAAAAnAAAAAgAAAAAAEQAAACgAAAACAAAAAAASAAAAKQAAAAIAAAAAACUAAAAqAAAAAgAAAAAAFAAAACsAAAACAAAAAAAXAAAALAAAAAIAAAAAABkAAAAtAAAAAgAAAAAAGwAAAC4AAAACAAAAAAAdAAAALwAAAAIAAAAAAB8AAAAwAAAAAgAAAAAAIAAAADEAAAACAAAAAAAiAAAAMgAAAAIAAAAAACMAAAAzAAAAAgAAAAAAJgAAADQAAAACAAAAAAAnAAAANQAAAAIAAAAAACgAAAAAAAAAAAAAAAIAAAAAAAAAAgAAAAAAJAAAAAIAAAAAAA8AAAAEAAAAAAAAAAEAAAAAAAAABQAAAAAAAAADAAAAAAAAAAAAAgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAgAAAAAAAAACAAAAAAAPAAAAAwACAAAAAAAkAAAACgACAAAANgAAAAQAAAAAAAAAAAA3AAAABAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAIAAAAAAAAAAAAAAAAAAAADAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAAAAAAAAAAAAUAAAAAAAAAAAAAAAAAAAAGAAAAAAAAAAAAAAAAAAAABwAAAAAAAAAAAAAAAAAAAAUAAAAAAAAAAQAAAAAAAAAFAAAAEAAAAAEAAAAAAAAABQAAACAAAAABAAAAAAAAAAUAAAAwAAAAAQAAAAAAAAAFAAAAQAAAAAEAAAAAAAAABQAAAFAAAAABAAAAAAAAAAUAAABgAAAAAQAAAAAAAAAIAAAAcAAAAAAAAAAAAAAABQAAAHAAAAABAAAAAAAAAAUAAACAAAAAAQAAAAAAAAAFAAAAkAAAAAEAAAAAAAAABQAAAKAAAAABAAAAAAAAAAUAAACwAAAAAQAAAAAAAAAFAAAA2AAAAAEAAAAAAAAABQAAAPAAAAABAAAAAAAAAAUAAAAIAQAAAQAAAAAAAAAFAAAAJgEAAAEAAAAAAAAABQAAAD4BAAABAAAAAAAAAAUAAABcAQAAAQAAAAAAAAAFAAAAdAEAAAEAAAAAAAAABQAAAJIBAAABAAAAAAAAAAUAAACqAQAAAQAAAAAAAAAFAAAAyAEAAAEAAAAAAAAABQAAAOABAAABAAAAAAAAAAUAAADwAQAAAQAAAAAAAAAFAAAADgIAAAEAAAAAAAAABQAAACYCAAABAAAAAAAAAAUAAAA2AgAAAQAAAAAAAAAJAAAARgIAAAAAAAAAAAAABQAAAEYCAAABAAAAAAAAAAUAAABWAgAAAQAAAAAAAAAFAAAAZgIAAAEAAAAAAAAABQAAAHYCAAABAAAAAgAAAAAAAACGAgAAAQAAAAEAAAAKAAAAlgIAAAEAAAABAAAACAAAAKYCAAABAAAAAQAAAAgAAAC2AgAAAQAAAAEAAAAIAAAAxgIAAAEAAAACAAAAAAAAANYCAAABAAAAAgAAAAAAAABiAwAAAQAAAAIAAAAAAAAAhgMAAAEAAAABAAAABwAAACAEAAABAAAAAQAAAAcAAAAMBwAAAQAAAAAAAAAGAAAAygkAAAEAAAAAAAAABgAAAOoJAAABAAAAAAAAAAYAAAAKCgAAAQAAAAAAAAAGAAAAKgoAAAEAAAAAAAAABgAAAEoKAAABAAAAAAAAAAYAAAB2CgAAAQAAAAAAAAAGAAAAogoAAAEAAAACAAAAAgAAAM4KAAABAAAAAgAAAAIAAADSCgAAAQAAAAIAAAACAAAA1goAAAEAAAACAAAAAgAAANoKAAABAAAAAgAAAAIAAADeCgAAAQAAAAIAAAACAAAA4goAAAEAAAACAAAAAgAAAOYKAAABAAAAAgAAAAIAAADqCgAAAQAAAAIAAAACAAAA7goAAAEAAAACAAAAAgAAAPIKAAABAAAAAQAAAAkAAAD2CgAAAQAAAAEAAAAJAAAAFgsAAAEAAAALAAAAAAAGAAAAAQABAAEACwAAAAAABwAAAAEAAQABAAsAAAAAAAgAAAABAAEAAQALAAAAAAAJAAAAAQABAAEACwAAAAAACgAAAAEAAQABAAsAAAAAAAsAAAABAAEAAQALAAAAAAAMAAAAAQABAAEACwAAAAAADQAAAAEAAQABAAsAAAAAAA4AAAABAAEAAQALAAAAAAAPAAAAAQABAAEACwAAAAAAEAAAAAEAAQABAAsAAAAAABEAAAABAAcAAgAAAAIAAAAAABUAAAACAAAAAAAWAAAAAwALAAAAAAASAAAAAgAAAAAAMwAAAAEAAQALAAAAAAATAAAAAgAAAAAANAAAAAEAAQALAAAAAAAUAAAAAQAHAAEAAAACAAAAAAAYAAAAAwALAAAAAAAVAAAAAgAAAAAANQAAAAEAAQALAAAAAAAWAAAAAQAHAAEAAAACAAAAAAAaAAAAAwALAAAAAAAXAAAAAgAAAAAANgAAAAEAAQALAAAAAAAYAAAAAQAHAAEAAAACAAAAAAAcAAAAAwALAAAAAAAZAAAAAgAAAAAANwAAAAEAAQALAAAAAAAaAAAAAQAHAAEAAAACAAAAAAAeAAAAAwALAAAAAAAbAAAAAgAAAAAAOAAAAAEAAQALAAAAAAAcAAAAAQABAAEACwAAAAAAHQAAAAEABwABAAAAAgAAAAAAIQAAAAMACwAAAAAAHgAAAAIAAAAAADkAAAABAAEACwAAAAAAHwAAAAEAAQABAAsAAAAAACAAAAABAAEAAQALAAAAAAAhAAAAAQABAAEACwAAAAAAIgAAAAEAAQABAAsAAAAAACMAAAABAAEAAQALAAAAAAAkAAAAAQABAAEAOQAAAAcAAAAAAAoAAAAAAAYAOgAAAAQAAQAAAAAAAAAGADsAAAAEAAEAAAAAAAAABgA8AAAABAABAAAAAAAAAAYAPQAAAAQAAQAAAAAAAAA+AAAABwAEAAAAAgAAAAAAOgAAAAIAAAAAADsAAAACAAAAAAA8AAAAAgAAAAAAPQAAAAoABgAAABEAAAALAAAAAAAAAAAAEgAAAAsAAAAAAAEAAAATAAAACwAAAAAAAgAAABQAAAALAAAAAAADAAAAFQAAAAsAAAAAAAQAAAAWAAAACwAAAAAABQAAAD8AAAAHAAIAAAACAAAAAAA+AAAAAgAAAAAAPwAAAAoAAAAAAEAAAAAHAAQAAAACAAAAAABAAAAAAgAAAAAAQQAAAAIAAAAAAEIAAAACAAAAAABDAAAACgAHAAAAFQAAAAIAAAAAAAgAAAAdAAAAAgAAAAAACQAAAB4AAAACAAAAAAAKAAAAHwAAAAIAAAAAAAsAAAAgAAAAAgAAAAAADAAAACEAAAACAAAAAAANAAAAIgAAAAIAAAAAAA4AAAAGAEEAAAAKAAAAAAAKAA0AAAAmAAAAAgAAAAAAEAAAACcAAAACAAAAAAARAAAAKAAAAAIAAAAAABIAAAApAAAAAgAAAAAAEwAAACoAAAACAAAAAAAUAAAAKwAAAAIAAAAAABcAAAAsAAAAAgAAAAAAGQAAAC0AAAACAAAAAAAbAAAALgAAAAIAAAAAAB0AAAAvAAAAAgAAAAAAHwAAADAAAAACAAAAAAAgAAAAMQAAAAIAAAAAACIAAAAyAAAAAgAAAAAAIwAAAAcADQAAAAIAAAAAABAAAAACAAAAAAARAAAAAgAAAAAAEgAAAAIAAAAAABMAAAACAAAAAAAUAAAAAgAAAAAAFwAAAAIAAAAAABkAAAACAAAAAAAbAAAAAgAAAAAAHQAAAAIAAAAAAB8AAAACAAAAAAAgAAAAAgAAAAAAIgAAAAIAAAAAACMAAAAHAAcAAAAKAAIAAABCAAAABgAqAAAAQwAAAAIAAAAAABUAAAAKAAIAAABCAAAABgAqAAAAQwAAAAIAAAAAABYAAAAKAAIAAABCAAAABgArAAAAQwAAAAIAAAAAABgAAAAKAAIAAABCAAAABgAsAAAAQwAAAAIAAAAAABoAAAAKAAIAAABCAAAABgAtAAAAQwAAAAIAAAAAABwAAAAKAAIAAABCAAAABgAuAAAAQwAAAAIAAAAAAB4AAAAKAAIAAABCAAAABgAwAAAAQwAAAAIAAAAAACEAAAAHAAAAAAAHAAAAAAACAAAAAAAPAAAABwAAAAAACgAAAAAABAABAAAAAAAAAAcAAQAAAAIAAAAAAA8AAAAHAAAAAAAKAAYAAABEAAAAAgAAAAAAFAAAAEUAAAACAAAAAAAXAAAARgAAAAIAAAAAABkAAABHAAAAAgAAAAAAGwAAAEgAAAACAAAAAAAdAAAALwAAAAIAAAAAAB8AAAAKAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAAAAAAcAAAAAAAEABgBJAAAACgACAAAANgAAAAIAAAAAAEQAAAA3AAAAAgAAAAAARQAAAAoABAAAACkAAAACAAAAAAAlAAAAMwAAAAIAAAAAACYAAAA0AAAAAgAAAAAAJwAAADUAAAACAAAAAAAoAAAABwAEAAAAAgAAAAAAJQAAAAIAAAAAACYAAAACAAAAAAAnAAAAAgAAAAAAKAAAAAcAAAAAAAcAAQAAAAIAAAAAAA8AAAAHAAAAAAACAAAAAAAPAAAABwAAAAAACgAAAAAABAABAAAAAAAAAAcAAgAAAAIAAAAAACQAAAACAAAAAAAPAAAABwAAAAAACgAAAAAACgAOAAAARwAAAAcAAgAAAAIAAAAAACQAAAAGADYAAABKAAAABwACAAAAAgAAAAAAJAAAAAYANgAAAEsAAAAHAAIAAAACAAAAAAAkAAAABgA2AAAATAAAAAcAAgAAAAIAAAAAACQAAAAGADYAAABNAAAABwACAAAAAgAAAAAAJAAAAAYANgAAAE4AAAAHAAIAAAACAAAAAAAkAAAABgA2AAAASAAAAAcAAgAAAAIAAAAAACQAAAAGADcAAABPAAAABwACAAAAAgAAAAAAJAAAAAYANwAAAFAAAAAHAAIAAAACAAAAAAAkAAAABgA3AAAAUQAAAAcAAgAAAAIAAAAAACQAAAAGADcAAABSAAAABwACAAAAAgAAAAAAJAAAAAYANwAAAFMAAAAHAAIAAAACAAAAAAAkAAAABgA3AAAAVAAAAAcAAgAAAAIAAAAAACQAAAAGADcAAABVAAAABwACAAAAAgAAAAAAJAAAAAYANwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwABAAAABwACAAAABAAAAAAAAAAAAAIAAAAAACYAAAAHAAEAAAAHAAIAAAAEAAAAAAAAAAAAAgAAAAAAJgAAAAEABwABAAAAAgAAAAAADwAAAAcAAQAAAAQAAgAAAAAAAAAHAAEAAAACAAAAAAAPAAAABwABAAAABAABAAAAAAAAAAcAAQAAAAIAAAAAAA8AAAAHAAEAAAAEAAIAAAAAAAAABwABAAAAAgAAAAAADwAAAAcAAQAAAAQAAgAAAAAAAAAHAAIAAAACAAAAAAAPAAAAAwAHAAIAAAAEAAIAAAAAAAAABAAAAAAAAAAAAAcAAgAAAAIAAAAAAA8AAAADAAcAAgAAAAQAAgAAAAAAAAAEAAAAAAAAAAAABwACAAAAAgAAAAAADwAAAAMABwACAAAABAACAAAAAAAAAAQAAAAAAAAAAAAXAAAAGAAAABkAAAAaAAAAGwAAABwAAAAXAAAAIwAAACQAAAAlAAAABgA2AAAAAwAEAAAAAAAAAAAAAwADAAQAAAAAAAAAAAAGADcAAAADAAQAAAAAAAAAAAADAAMABAAAAAAAAAAAAA==", cur_sc, $P5002, $P5004
    .const "LexInfo" $P5001 = "cuid_1_1350818086.186"
    nqp_get_sc_object $P5002, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 0
    $P5001."set_static_lexpad_value"("GLOBALish", $P5002)
    .const "LexInfo" $P5003 = "cuid_1_1350818086.186"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1350818086.186"
    nqp_get_sc_object $P5002, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 0
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_1_1350818086.186"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1350818086.186"
    nqp_get_sc_object $P5002, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 1
    $P5001."set_static_lexpad_value"("EXPORTHOW", $P5002)
    .const "LexInfo" $P5003 = "cuid_1_1350818086.186"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_2_1350818086.186"
    nqp_get_sc_object $P5002, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 1
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_2_1350818086.186"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_2_1350818086.186"
    nqp_get_sc_object $P5002, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 1
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_2_1350818086.186"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1350818086.186"
    nqp_get_sc_object $P5002, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 2
    $P5001."set_static_lexpad_value"("int", $P5002)
    .const "LexInfo" $P5003 = "cuid_1_1350818086.186"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_3_1350818086.186"
    nqp_get_sc_object $P5002, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 2
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_3_1350818086.186"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_3_1350818086.186"
    nqp_get_sc_object $P5002, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 2
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_3_1350818086.186"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1350818086.186"
    nqp_get_sc_object $P5002, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 3
    $P5001."set_static_lexpad_value"("num", $P5002)
    .const "LexInfo" $P5003 = "cuid_1_1350818086.186"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_4_1350818086.186"
    nqp_get_sc_object $P5002, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 3
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_4_1350818086.186"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_4_1350818086.186"
    nqp_get_sc_object $P5002, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 3
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_4_1350818086.186"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1350818086.186"
    nqp_get_sc_object $P5002, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 4
    $P5001."set_static_lexpad_value"("str", $P5002)
    .const "LexInfo" $P5003 = "cuid_1_1350818086.186"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_5_1350818086.186"
    nqp_get_sc_object $P5002, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 4
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_5_1350818086.186"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_5_1350818086.186"
    nqp_get_sc_object $P5002, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 4
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_5_1350818086.186"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1350818086.186"
    nqp_get_sc_object $P5002, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 5
    $P5001."set_static_lexpad_value"("NQPRoutine", $P5002)
    .const "LexInfo" $P5003 = "cuid_1_1350818086.186"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_12_1350818086.186"
    nqp_get_sc_object $P5002, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 5
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_12_1350818086.186"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_12_1350818086.186"
    nqp_get_sc_object $P5002, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 5
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_12_1350818086.186"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1350818086.186"
    nqp_get_sc_object $P5002, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 6
    $P5001."set_static_lexpad_value"("NQPSignature", $P5002)
    .const "LexInfo" $P5003 = "cuid_1_1350818086.186"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_13_1350818086.186"
    nqp_get_sc_object $P5002, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 6
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_13_1350818086.186"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_13_1350818086.186"
    nqp_get_sc_object $P5002, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 6
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_13_1350818086.186"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1350818086.186"
    nqp_get_sc_object $P5002, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 7
    $P5001."set_static_lexpad_value"("NQPRegex", $P5002)
    .const "LexInfo" $P5003 = "cuid_1_1350818086.186"
    $P5003."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_14_1350818086.186" 
    nqp_get_sc_object $P5002, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 8
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_15_1350818086.186" 
    nqp_get_sc_object $P5002, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 9
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_16_1350818086.186" 
    nqp_get_sc_object $P5002, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 10
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_17_1350818086.186" 
    nqp_get_sc_object $P5002, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 11
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_18_1350818086.186" 
    nqp_get_sc_object $P5002, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 12
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_19_1350818086.186" 
    nqp_get_sc_object $P5002, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 13
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_20_1350818086.186" 
    nqp_get_sc_object $P5002, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 14
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_21_1350818086.186"
    nqp_get_sc_object $P5002, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 7
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_21_1350818086.186"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_21_1350818086.186"
    nqp_get_sc_object $P5002, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 7
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_21_1350818086.186"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1350818086.186"
    nqp_get_sc_object $P5002, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    $P5001."set_static_lexpad_value"("NQPMu", $P5002)
    .const "LexInfo" $P5003 = "cuid_1_1350818086.186"
    $P5003."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_22_1350818086.186" 
    nqp_get_sc_object $P5002, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 16
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_23_1350818086.186" 
    nqp_get_sc_object $P5002, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 17
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_24_1350818086.186" 
    nqp_get_sc_object $P5002, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 18
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_25_1350818086.186" 
    nqp_get_sc_object $P5002, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 19
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_26_1350818086.186" 
    nqp_get_sc_object $P5002, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 20
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_27_1350818086.186" 
    nqp_get_sc_object $P5002, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 21
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_28_1350818086.186" 
    nqp_get_sc_object $P5002, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 22
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_29_1350818086.186" 
    nqp_get_sc_object $P5002, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 23
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_30_1350818086.186" 
    nqp_get_sc_object $P5002, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 24
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_31_1350818086.186" 
    nqp_get_sc_object $P5002, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 25
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_32_1350818086.186" 
    nqp_get_sc_object $P5002, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 26
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_33_1350818086.186" 
    nqp_get_sc_object $P5002, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 27
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_34_1350818086.186" 
    nqp_get_sc_object $P5002, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 28
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_35_1350818086.186" 
    nqp_get_sc_object $P5002, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 29
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_36_1350818086.186" 
    nqp_get_sc_object $P5002, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 30
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_37_1350818086.186" 
    nqp_get_sc_object $P5002, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 31
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_38_1350818086.186" 
    nqp_get_sc_object $P5002, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 32
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_39_1350818086.186" 
    nqp_get_sc_object $P5002, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 33
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_40_1350818086.186" 
    nqp_get_sc_object $P5002, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 34
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_41_1350818086.186" 
    nqp_get_sc_object $P5002, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 35
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_42_1350818086.186"
    nqp_get_sc_object $P5002, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_42_1350818086.186"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_42_1350818086.186"
    nqp_get_sc_object $P5002, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_42_1350818086.186"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1350818086.186"
    nqp_get_sc_object $P5002, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 36
    $P5001."set_static_lexpad_value"("NQPCapture", $P5002)
    .const "LexInfo" $P5003 = "cuid_1_1350818086.186"
    $P5003."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_43_1350818086.186" 
    nqp_get_sc_object $P5002, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 37
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_44_1350818086.186" 
    nqp_get_sc_object $P5002, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 38
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_45_1350818086.186" 
    nqp_get_sc_object $P5002, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 39
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_46_1350818086.186" 
    nqp_get_sc_object $P5002, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 40
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_47_1350818086.186"
    nqp_get_sc_object $P5002, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 36
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_47_1350818086.186"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_47_1350818086.186"
    nqp_get_sc_object $P5002, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 36
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_47_1350818086.186"
    $P5004 = $P5003."finish_static_lexpad"()
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_71_1350818086.186") :anon :lex :outer("cuid_72_1350818086.186")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
    new $P5001, 'ResizablePMCArray'
    .const 'Sub' $P5002 = "cuid_6_1350818086.186" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_7_1350818086.186" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_8_1350818086.186" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_9_1350818086.186" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_10_1350818086.186" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_11_1350818086.186" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_14_1350818086.186" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_15_1350818086.186" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_16_1350818086.186" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_17_1350818086.186" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_18_1350818086.186" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_19_1350818086.186" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_20_1350818086.186" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_22_1350818086.186" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_23_1350818086.186" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_24_1350818086.186" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_25_1350818086.186" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_26_1350818086.186" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_27_1350818086.186" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_28_1350818086.186" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_29_1350818086.186" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_30_1350818086.186" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_31_1350818086.186" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_32_1350818086.186" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_33_1350818086.186" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_34_1350818086.186" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_35_1350818086.186" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_36_1350818086.186" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_37_1350818086.186" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_38_1350818086.186" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_39_1350818086.186" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_40_1350818086.186" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_41_1350818086.186" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_43_1350818086.186" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_44_1350818086.186" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_45_1350818086.186" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_46_1350818086.186" 
    push $P5001, $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_73_1350818086.186") :load
.annotate 'file', "src\\stage2\\NQPCORE.setting"
    .const 'Sub' $P5001 = "cuid_1_1350818086.186" 
    $P5002 = $P5001()
    .return ($P5002) 
.end