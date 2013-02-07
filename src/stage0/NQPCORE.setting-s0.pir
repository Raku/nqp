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
.sub "" :subid("cuid_53_1360256342.611") :anon :lex
.annotate 'file', "src\\stage2\\NQPCORE.setting"
    .param pmc _lex_param_0 :slurpy 
    .const 'Sub' $P5063 = 'cuid_52_1360256342.611' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_54_1360256342.611' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_55_1360256342.611' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_56_1360256342.611' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_58_1360256342.611' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_59_1360256342.611' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_61_1360256342.611' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_63_1360256342.611' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_65_1360256342.611' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_66_1360256342.611' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_67_1360256342.611' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_68_1360256342.611' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_69_1360256342.611' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_70_1360256342.611' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_71_1360256342.611' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_72_1360256342.611' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_73_1360256342.611' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_74_1360256342.611' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_76_1360256342.611' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_86_1360256342.611' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_87_1360256342.611' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_89_1360256342.611' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_96_1360256342.611' 
    capture_lex $P5063 
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
    .lex "&join", $P118 
    .lex "&match", $P119 
    .lex "&subst", $P120 
    .lex "&hash", $P121 
    .lex "$test_counter", $P122 
    .lex "$todo_upto_test_num", $P123 
    .lex "$todo_reason", $P124 
    .lex "&plan", $P125 
    .lex "&ok", $P126 
    .lex "&todo", $P127 
    .lex "&skip", $P128 
    .lex "@ARGS", _lex_param_0 
    .local pmc ctxsave 
    .const 'Sub' $P5001 = 'cuid_52_1360256342.611' 
    capture_lex $P5001
    set $P112, $P5001
    .const 'Sub' $P5002 = 'cuid_54_1360256342.611' 
    capture_lex $P5002
    set $P113, $P5002
    .const 'Sub' $P5003 = 'cuid_55_1360256342.611' 
    capture_lex $P5003
    set $P114, $P5003
    .const 'Sub' $P5004 = 'cuid_56_1360256342.611' 
    capture_lex $P5004
    set $P115, $P5004
    .const 'Sub' $P5005 = 'cuid_58_1360256342.611' 
    capture_lex $P5005
    set $P116, $P5005
    .const 'Sub' $P5006 = 'cuid_59_1360256342.611' 
    capture_lex $P5006
    set $P117, $P5006
    .const 'Sub' $P5007 = 'cuid_61_1360256342.611' 
    capture_lex $P5007
    set $P118, $P5007
    .const 'Sub' $P5008 = 'cuid_63_1360256342.611' 
    capture_lex $P5008
    set $P119, $P5008
    .const 'Sub' $P5009 = 'cuid_65_1360256342.611' 
    capture_lex $P5009
    set $P120, $P5009
    .const 'Sub' $P5010 = 'cuid_66_1360256342.611' 
    capture_lex $P5010
    set $P121, $P5010
    nqp_get_sc_object $P5011, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 25
    set $P122, $P5011
    nqp_get_sc_object $P5012, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 25
    set $P123, $P5012
    nqp_get_sc_object $P5013, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 25
    set $P124, $P5013
    .const 'Sub' $P5014 = 'cuid_67_1360256342.611' 
    capture_lex $P5014
    set $P125, $P5014
    .const 'Sub' $P5015 = 'cuid_68_1360256342.611' 
    capture_lex $P5015
    set $P126, $P5015
    .const 'Sub' $P5016 = 'cuid_69_1360256342.611' 
    capture_lex $P5016
    set $P127, $P5016
    .const 'Sub' $P5017 = 'cuid_70_1360256342.611' 
    capture_lex $P5017
    set $P128, $P5017
.annotate 'line', 1
    .const 'Sub' $P5018 = 'cuid_71_1360256342.611' 
    capture_lex $P5018
    $P5019 = $P5018()
    .const 'Sub' $P5020 = 'cuid_72_1360256342.611' 
    capture_lex $P5020
    $P5021 = $P5020()
    .const 'Sub' $P5022 = 'cuid_73_1360256342.611' 
    capture_lex $P5022
    $P5023 = $P5022()
    .const 'Sub' $P5024 = 'cuid_74_1360256342.611' 
    capture_lex $P5024
    $P5025 = $P5024()
    .const 'Sub' $P5026 = 'cuid_76_1360256342.611' 
    capture_lex $P5026
    $P5027 = $P5026()
    nqp_get_sc_object $P5028, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 5
    nqp_get_sc_object $P5029, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 5
    null $P5030
    set_invocation_spec $P5028, $P5029, "$!do", $P5030
    nqp_get_sc_object $P5031, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 5
    null $P5032
    set_boolification_spec $P5031, 5, $P5032
    nqp_get_sc_object $P5033, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 5
    new $P5034, 'Hash'
    new $P5035, 'ResizablePMCArray'
    nqp_get_sc_object $P5036, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 5
    push $P5035, $P5036
    box $P5037, "$!do"
    push $P5035, $P5037
    set $P5034["get_string"], $P5035
    stable_publish_vtable_handler_mapping $P5033, $P5034
    .const 'Sub' $P5038 = 'cuid_86_1360256342.611' 
    capture_lex $P5038
    $P5039 = $P5038()
    .const 'Sub' $P5040 = 'cuid_87_1360256342.611' 
    capture_lex $P5040
    $P5041 = $P5040()
    nqp_get_sc_object $P5042, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 9
    nqp_get_sc_object $P5043, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 9
    null $P5044
    set_invocation_spec $P5042, $P5043, "$!do", $P5044
    nqp_get_sc_object $P5045, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 9
    null $P5046
    set_boolification_spec $P5045, 5, $P5046
    nqp_get_sc_object $P5047, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 9
    new $P5048, 'Hash'
    new $P5049, 'ResizablePMCArray'
    nqp_get_sc_object $P5050, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 9
    push $P5049, $P5050
    box $P5051, "$!do"
    push $P5049, $P5051
    set $P5048["get_string"], $P5049
    stable_publish_vtable_handler_mapping $P5047, $P5048
    .const 'Sub' $P5052 = 'cuid_89_1360256342.611' 
    capture_lex $P5052
    $P5053 = $P5052()
    .const 'Sub' $P5054 = 'cuid_96_1360256342.611' 
    capture_lex $P5054
    $P5055 = $P5054()
    box $P5056, 0
    set $P122, $P5056
    box $P5057, 0
    set $P123, $P5057
    box $P5058, ""
    set $P124, $P5058
    find_dynamic_lex $P5059, "$*CTXSAVE"
    set ctxsave, $P5059
    isnull $I5001, ctxsave
    if $I5001 goto unless111_end343 
    can $I5002, ctxsave, "ctxsave"
    box $P5062, $I5002
    set $P5061, $P5062
    unless $I5002 goto if112_end345 
    $P5060 = ctxsave."ctxsave"()
    set $P5061, $P5060
  if112_end345:
  unless111_end343:
    .return () 
.end
.HLL "nqp"
.namespace []
.sub "open" :subid("cuid_52_1360256342.611") :anon :lex :outer("cuid_53_1360256342.611")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 670
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
    nqp_get_sc_object $P5005, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 25
    set _lex_param_1, $P5005
  default16:
    if haz_param_2, default17
    nqp_get_sc_object $P5006, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 25
    set _lex_param_2, $P5006
  default17:
    if haz_param_3, default18
    nqp_get_sc_object $P5007, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 25
    set _lex_param_3, $P5007
  default18:
    if haz_param_4, default19
    nqp_get_sc_object $P5008, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 25
    set _lex_param_4, $P5008
  default19:
    .lex "$mode", $P101 
    .lex "$handle", $P102 
    .lex "$filename", _lex_param_0 
    .lex "$r", _lex_param_1 
    .lex "$w", _lex_param_2 
    .lex "$a", _lex_param_3 
    .lex "$bin", _lex_param_4 
    nqp_get_sc_object $P5001, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 25
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
.annotate 'line', 673
    $P102."open"(_lex_param_0, $P101)
.annotate 'line', 674
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
.sub "close" :subid("cuid_54_1360256342.611") :anon :lex :outer("cuid_53_1360256342.611")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 682
    .param pmc _lex_param_0 
    .lex "$handle", _lex_param_0 
.annotate 'line', 683
    $P5001 = _lex_param_0."close"()
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "slurp" :subid("cuid_55_1360256342.611") :anon :lex :outer("cuid_53_1360256342.611")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 690
    .param pmc _lex_param_0 
    .lex "$handle", $P101 
    .lex "$contents", $P102 
    .lex "$filename", _lex_param_0 
    nqp_get_sc_object $P5001, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 25
    set $P102, $P5002
.annotate 'line', 691
    $P5003 = "&open"(_lex_param_0, 1 :named("r"))
    set $P101, $P5003
.annotate 'line', 692
    $P5004 = $P101."readall"()
    set $P102, $P5004
.annotate 'line', 693
    $P101."close"()
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "spew" :subid("cuid_56_1360256342.611") :anon :lex :outer("cuid_53_1360256342.611")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 702
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$handle", $P101 
    .lex "$filename", _lex_param_0 
    .lex "$contents", _lex_param_1 
    nqp_get_sc_object $P5001, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 25
    set $P101, $P5001
.annotate 'line', 703
    $P5002 = "&open"(_lex_param_0, 1 :named("w"))
    set $P101, $P5002
.annotate 'line', 704
    $P101."print"(_lex_param_1)
.annotate 'line', 705
    $P5003 = $P101."close"()
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "print" :subid("cuid_58_1360256342.611") :anon :lex :outer("cuid_53_1360256342.611")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 708
    .param pmc _lex_param_0 :slurpy 
    .const 'Sub' $P5006 = 'cuid_57_1360256342.611' 
    capture_lex $P5006 
    .lex "@args", _lex_param_0 
    set $P5001, _lex_param_0
    iter $P5003, _lex_param_0
  for_next20:
    unless $P5003, for_done22
    shift $P5005, $P5003
  for_redo21:
    .const 'Sub' $P5004 = 'cuid_57_1360256342.611' 
    capture_lex $P5004
    $P5001 = $P5004($P5005)
    goto for_next20
  for_done22:
    .return (1) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_57_1360256342.611") :anon :lex :outer("cuid_58_1360256342.611")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 709
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    set $S5001, _lex_param_0
    print $S5001
    .return ($S5001) 
.end
.HLL "nqp"
.namespace []
.sub "say" :subid("cuid_59_1360256342.611") :anon :lex :outer("cuid_53_1360256342.611")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 715
    .param pmc _lex_param_0 :slurpy 
    .lex "@args", _lex_param_0 
.annotate 'line', 716
    $P5001 = "&print"(_lex_param_0 :flat, "\n")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "join" :subid("cuid_61_1360256342.611") :anon :lex :outer("cuid_53_1360256342.611")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 719
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5007 = 'cuid_60_1360256342.611' 
    capture_lex $P5007 
    .lex "@strs", $P101 
    .lex "$delim", _lex_param_0 
    .lex "@things", _lex_param_1 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    set $P5002, _lex_param_1
    iter $P5004, _lex_param_1
  for_next23:
    unless $P5004, for_done25
    shift $P5006, $P5004
  for_redo24:
    .const 'Sub' $P5005 = 'cuid_60_1360256342.611' 
    capture_lex $P5005
    $P5002 = $P5005($P5006)
    goto for_next23
  for_done25:
    set $S5002, _lex_param_0
    join $S5001, $S5002, $P101
    .return ($S5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_60_1360256342.611") :anon :lex :outer("cuid_61_1360256342.611")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 721
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5001, "@strs"
    set $S5001, _lex_param_0
    box $P5002, $S5001
    push $P5001, $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "match" :subid("cuid_63_1360256342.611") :anon :lex :outer("cuid_53_1360256342.611")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 739
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :named("global") :optional 
    .param int haz_param_5 :opt_flag 
    .const 'Sub' $P5007 = 'cuid_62_1360256342.611' 
    capture_lex $P5007 
    if haz_param_5, default33
    nqp_get_sc_object $P5006, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 25
    set _lex_param_2, $P5006
  default33:
    .lex "$match", $P101 
    .lex "$text", _lex_param_0 
    .lex "$regex", _lex_param_1 
    .lex "$global", _lex_param_2 
    nqp_get_sc_object $P5001, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 25
    set $P101, $P5001
.annotate 'line', 740
    $P5002 = _lex_param_1."ACCEPTS"(_lex_param_0)
    set $P101, $P5002
    unless _lex_param_2 goto if13_else26 
    .const 'Sub' $P5003 = 'cuid_62_1360256342.611' 
    capture_lex $P5003
    $P5004 = $P5003()
    set $P5005, $P5004
    goto if13_end27
  if13_else26:
.annotate 'line', 749

    set $P5005, $P101
  if13_end27:
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_62_1360256342.611") :anon :lex :outer("cuid_63_1360256342.611")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 741
    .lex "@matches", $P101 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
  while14_test28:
    find_lex $P5002, "$match"
    set $P5011, $P5002
    unless $P5002 goto while14_done32 
  while14_redo30:
.annotate 'line', 743
.annotate 'line', 744
    find_lex $P5003, "$match"
    $P101."push"($P5003)
.annotate 'line', 745
    find_lex $P5004, "$match"
    $P5005 = $P5004."CURSOR"()
    find_lex $P5006, "$text"
    find_lex $P5007, "$regex"
    find_lex $P5008, "$match"
    $P5009 = $P5008."to"()
    $P5010 = $P5005."parse"($P5006, $P5007 :named("rule"), $P5009 :named("c"))
    store_lex "$match", $P5010
    set $P5011, $P5010
    goto while14_test28 
  while14_done32:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "subst" :subid("cuid_65_1360256342.611") :anon :lex :outer("cuid_53_1360256342.611")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 761
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 :named("global") :optional 
    .param int haz_param_6 :opt_flag 
    .const 'Sub' $P5020 = 'cuid_64_1360256342.611' 
    capture_lex $P5020 
    if haz_param_6, default47
    nqp_get_sc_object $P5019, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 25
    set _lex_param_3, $P5019
  default47:
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
    nqp_get_sc_object $P5002, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 25
    set $P102, $P5002
    nqp_get_sc_object $P5003, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 25
    set $P103, $P5003
    nqp_get_sc_object $P5004, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 25
    set $P104, $P5004
    nqp_get_sc_object $P5005, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 25
    set $P105, $P5005
    unless _lex_param_3 goto if15_else34 
.annotate 'line', 762
    $P5006 = "&match"(_lex_param_0, _lex_param_1, 1 :named("global"))
    set $P5009, $P5006
    goto if15_end35
  if15_else34:
    new $P5007, 'ResizablePMCArray'
.annotate 'line', 763
    $P5008 = _lex_param_1."ACCEPTS"(_lex_param_0)
    push $P5007, $P5008
    set $P5009, $P5007
  if15_end35:
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
  for_next42:
    unless $P5015, for_done44
    shift $P5017, $P5015
  for_redo43:
    .const 'Sub' $P5016 = 'cuid_64_1360256342.611' 
    capture_lex $P5016
    $P5013 = $P5016($P5017)
    goto for_next42
  for_done44:
    set $S5001, _lex_param_0
    length $I5002, $S5001
    box $P5018, $I5002
    set $P105, $P5018
    set $N5001, $P105
    set $N5002, $P103
    isgt $I5003, $N5001, $N5002
    unless $I5003 goto if19_end46 
    set $S5003, _lex_param_0
    set $I5004, $P103
    set $I5005, $P105
    substr $S5002, $S5003, $I5004, $I5005
    push $P104, $S5002
  if19_end46:
    set $S5004, $P104
    .return ($S5004) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_64_1360256342.611") :anon :lex :outer("cuid_65_1360256342.611")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 768
    .param pmc _lex_param_0 
    .lex "$match", _lex_param_0 
    set $P5015, _lex_param_0
    unless _lex_param_0 goto if16_end37 
.annotate 'line', 769
.annotate 'line', 771
    $P5001 = _lex_param_0."from"()
    set $N5001, $P5001
    find_lex $P5002, "$offset"
    set $N5002, $P5002
    isgt $I5001, $N5001, $N5002
    unless $I5001 goto if17_end39 
    find_lex $P5003, "$result"
    find_lex $P5004, "$text"
    set $S5002, $P5004
    find_lex $P5005, "$offset"
    set $I5002, $P5005
.annotate 'line', 770
    $P5006 = _lex_param_0."from"()
    set $N5004, $P5006
    find_lex $P5007, "$offset"
    set $N5005, $P5007
    sub $N5003, $N5004, $N5005
    set $I5003, $N5003
    substr $S5001, $S5002, $I5002, $I5003
    push $P5003, $S5001
  if17_end39:
    find_lex $P5008, "$result"
    find_lex $P5009, "$is_code"
    unless $P5009 goto if18_else40 
.annotate 'line', 772
    find_lex $P5010, "$repl"
    $P5011 = $P5010(_lex_param_0)
    set $P5013, $P5011
    goto if18_end41
  if18_else40:
    find_lex $P5012, "$repl"
    set $P5013, $P5012
  if18_end41:
    set $S5003, $P5013
    push $P5008, $S5003
.annotate 'line', 773
    $P5014 = _lex_param_0."to"()
    store_lex "$offset", $P5014
    set $P5015, $P5014
  if16_end37:
    .return ($P5015) 
.end
.HLL "nqp"
.namespace []
.sub "hash" :subid("cuid_66_1360256342.611") :anon :lex :outer("cuid_53_1360256342.611")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 787
    .param pmc _lex_param_0 :slurpy :named 
    .lex "%new", _lex_param_0 
    .return (_lex_param_0) 
.end
.HLL "nqp"
.namespace []
.sub "plan" :subid("cuid_67_1360256342.611") :anon :lex :outer("cuid_53_1360256342.611")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 796
    .param pmc _lex_param_0 
    .lex "$quantity", _lex_param_0 
.annotate 'line', 797
    set $S5002, _lex_param_0
    concat $S5001, "1..", $S5002
    $P5001 = "&say"($S5001)
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "ok" :subid("cuid_68_1360256342.611") :anon :lex :outer("cuid_53_1360256342.611")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 800
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :optional 
    .param int haz_param_7 :opt_flag 
    if haz_param_7, default56
    nqp_get_sc_object $P5010, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 25
    set _lex_param_1, $P5010
  default56:
    .lex "$condition", _lex_param_0 
    .lex "$desc", _lex_param_1 
    find_lex $P5001, "$test_counter"
    set $N5002, $P5001
    set $N5003, 1
    add $N5001, $N5002, $N5003
    box $P5002, $N5001
    store_lex "$test_counter", $P5002
    if _lex_param_0 goto unless20_end49 
.annotate 'line', 803
.annotate 'line', 804
    $P5003 = "&print"("not ")
  unless20_end49:
.annotate 'line', 806
    find_lex $P5004, "$test_counter"
    set $S5002, $P5004
    concat $S5001, "ok ", $S5002
    "&print"($S5001)
    unless _lex_param_1 goto if21_end51 
.annotate 'line', 807
.annotate 'line', 808
    set $S5004, _lex_param_1
    concat $S5003, " - ", $S5004
    $P5005 = "&print"($S5003)
  if21_end51:
    find_lex $P5006, "$test_counter"
    set $N5004, $P5006
    find_lex $P5007, "$todo_upto_test_num"
    set $N5005, $P5007
    isle $I5001, $N5004, $N5005
    unless $I5001 goto if22_end53 
.annotate 'line', 810
.annotate 'line', 811
    find_lex $P5008, "$todo_reason"
    $P5009 = "&print"($P5008)
  if22_end53:
.annotate 'line', 813
    "&print"("\n")
    unless _lex_param_0 goto if23_else54 
    set $I5002, 1
    goto if23_end55
  if23_else54:
    set $I5002, 0
  if23_end55:
    .return ($I5002) 
.end
.HLL "nqp"
.namespace []
.sub "todo" :subid("cuid_69_1360256342.611") :anon :lex :outer("cuid_53_1360256342.611")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 818
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
.sub "skip" :subid("cuid_70_1360256342.611") :anon :lex :outer("cuid_53_1360256342.611")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 823
    .param pmc _lex_param_0 
    .lex "$desc", _lex_param_0 
    find_lex $P5001, "$test_counter"
    set $N5002, $P5001
    set $N5003, 1
    add $N5001, $N5002, $N5003
    box $P5002, $N5001
    store_lex "$test_counter", $P5002
.annotate 'line', 825
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
.sub "" :subid("cuid_71_1360256342.611") :anon :lex :outer("cuid_53_1360256342.611")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 12
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    get_who $P5001, $P101
    get_who $P5003, $P101
    set $P5002, $P5003["NQPModuleHOW"]
    unless_null $P5002, fallback57
    nqp_get_sc_object $P5006, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 0
    get_who $P5005, $P5006
    set $P5004, $P5005["NQPModuleHOW"]
    unless_null $P5004, vivi_2458
    null $P5007
    set $P5004, $P5007
  vivi_2458:
    set $P5002, $P5004
  fallback57:
    set $P5001["module"], $P5002
    get_who $P5008, $P101
    get_who $P5010, $P101
    set $P5009, $P5010["NQPClassHOW"]
    unless_null $P5009, fallback59
    nqp_get_sc_object $P5013, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 0
    get_who $P5012, $P5013
    set $P5011, $P5012["NQPClassHOW"]
    unless_null $P5011, vivi_2560
    null $P5014
    set $P5011, $P5014
  vivi_2560:
    set $P5009, $P5011
  fallback59:
    set $P5008["class"], $P5009
    get_who $P5015, $P101
    get_who $P5017, $P101
    set $P5016, $P5017["NQPAttribute"]
    unless_null $P5016, fallback61
    nqp_get_sc_object $P5020, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 0
    get_who $P5019, $P5020
    set $P5018, $P5019["NQPAttribute"]
    unless_null $P5018, vivi_2662
    null $P5021
    set $P5018, $P5021
  vivi_2662:
    set $P5016, $P5018
  fallback61:
    set $P5015["class-attr"], $P5016
    get_who $P5022, $P101
    get_who $P5024, $P101
    set $P5023, $P5024["NQPClassHOW"]
    unless_null $P5023, fallback63
    nqp_get_sc_object $P5027, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 0
    get_who $P5026, $P5027
    set $P5025, $P5026["NQPClassHOW"]
    unless_null $P5025, vivi_2764
    null $P5028
    set $P5025, $P5028
  vivi_2764:
    set $P5023, $P5025
  fallback63:
    set $P5022["grammar"], $P5023
    get_who $P5029, $P101
    get_who $P5031, $P101
    set $P5030, $P5031["NQPAttribute"]
    unless_null $P5030, fallback65
    nqp_get_sc_object $P5034, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 0
    get_who $P5033, $P5034
    set $P5032, $P5033["NQPAttribute"]
    unless_null $P5032, vivi_2866
    null $P5035
    set $P5032, $P5035
  vivi_2866:
    set $P5030, $P5032
  fallback65:
    set $P5029["grammar-attr"], $P5030
    get_who $P5036, $P101
    get_who $P5038, $P101
    set $P5037, $P5038["NQPParametricRoleHOW"]
    unless_null $P5037, fallback67
    nqp_get_sc_object $P5041, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 0
    get_who $P5040, $P5041
    set $P5039, $P5040["NQPParametricRoleHOW"]
    unless_null $P5039, vivi_2968
    null $P5042
    set $P5039, $P5042
  vivi_2968:
    set $P5037, $P5039
  fallback67:
    set $P5036["role"], $P5037
    get_who $P5043, $P101
    get_who $P5045, $P101
    set $P5044, $P5045["NQPAttribute"]
    unless_null $P5044, fallback69
    nqp_get_sc_object $P5048, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 0
    get_who $P5047, $P5048
    set $P5046, $P5047["NQPAttribute"]
    unless_null $P5046, vivi_3070
    null $P5049
    set $P5046, $P5049
  vivi_3070:
    set $P5044, $P5046
  fallback69:
    set $P5043["role-attr"], $P5044
    get_who $P5050, $P101
    get_who $P5052, $P101
    set $P5051, $P5052["NQPNativeHOW"]
    unless_null $P5051, fallback71
    nqp_get_sc_object $P5055, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 0
    get_who $P5054, $P5055
    set $P5053, $P5054["NQPNativeHOW"]
    unless_null $P5053, vivi_3172
    null $P5056
    set $P5053, $P5056
  vivi_3172:
    set $P5051, $P5053
  fallback71:
    set $P5050["native"], $P5051
    .return ($P5051) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_72_1360256342.611") :anon :lex :outer("cuid_53_1360256342.611")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 23
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    null $P5001
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_73_1360256342.611") :anon :lex :outer("cuid_53_1360256342.611")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 25
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    null $P5001
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_74_1360256342.611") :anon :lex :outer("cuid_53_1360256342.611")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 27
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    null $P5001
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_76_1360256342.611") :anon :lex :outer("cuid_53_1360256342.611")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 30
    .const 'Sub' $P5023 = 'cuid_75_1360256342.611' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_1_1360256342.611' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_2_1360256342.611' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_3_1360256342.611' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_4_1360256342.611' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_5_1360256342.611' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_6_1360256342.611' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_7_1360256342.611' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_8_1360256342.611' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_9_1360256342.611' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_10_1360256342.611' 
    capture_lex $P5023 
    .lex "$NQPMu", $P101 
    .lex "&is_narrower_type", $P102 
    .lex "$SLURPY_ARITY", $P103 
    .lex "$EDGE_REMOVAL_TODO", $P104 
    .lex "$EDGE_REMOVED", $P105 
    .lex "$DEFINED_ONLY", $P106 
    .lex "$UNDEFINED_ONLY", $P107 
    .lex "$?PACKAGE", $P108 
    .lex "$?CLASS", $P109 
    null $P5001
    set $P101, $P5001
    .const 'Sub' $P5002 = 'cuid_75_1360256342.611' 
    capture_lex $P5002
    set $P102, $P5002
    null $P5003
    set $P103, $P5003
    null $P5004
    set $P104, $P5004
    null $P5005
    set $P105, $P5005
    null $P5006
    set $P106, $P5006
    null $P5007
    set $P107, $P5007
    .const 'Sub' $P5008 = 'cuid_1_1360256342.611' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_2_1360256342.611' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_3_1360256342.611' 
    capture_lex $P5010
    .const 'Sub' $P5011 = 'cuid_4_1360256342.611' 
    capture_lex $P5011
    shl $I5001, 1, 30
    box $P5012, $I5001
    set $P103, $P5012
    box $P5013, -1
    set $P104, $P5013
    box $P5014, -2
    set $P105, $P5014
    box $P5015, 1
    set $P106, $P5015
    box $P5016, 2
    set $P107, $P5016
    .const 'Sub' $P5017 = 'cuid_5_1360256342.611' 
    capture_lex $P5017
    .const 'Sub' $P5018 = 'cuid_6_1360256342.611' 
    capture_lex $P5018
    .const 'Sub' $P5019 = 'cuid_7_1360256342.611' 
    capture_lex $P5019
    .const 'Sub' $P5020 = 'cuid_8_1360256342.611' 
    capture_lex $P5020
    .const 'Sub' $P5021 = 'cuid_9_1360256342.611' 
    capture_lex $P5021
    .const 'Sub' $P5022 = 'cuid_10_1360256342.611' 
    capture_lex $P5022
    .return ($P5022) 
.end
.HLL "nqp"
.namespace []
.sub "is_narrower_type" :subid("cuid_75_1360256342.611") :anon :lex :outer("cuid_76_1360256342.611")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 74
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$a", _lex_param_0 
    .lex "$b", _lex_param_1 
    isnull $I5001, _lex_param_1
    set $I5004, $I5001
    unless $I5001 goto if33_end76 
    isnull $I5003, _lex_param_0
    not $I5002, $I5003
    set $I5004, $I5002
  if33_end76:
    unless $I5004 goto if32_else73 
.annotate 'line', 77

    set $I5016, 1
    goto if32_end74
  if32_else73:
    isnull $I5005, _lex_param_0
    set $I5009, $I5005
    unless $I5005 goto if35_end80 
    get_id $I5007, _lex_param_1
    find_lex $P5001, "$NQPMu"
    get_id $I5008, $P5001
    iseq $I5006, $I5007, $I5008
    set $I5009, $I5006
  if35_end80:
    unless $I5009 goto if34_else77 
.annotate 'line', 78

    set $I5015, 1
    goto if34_end78
  if34_else77:
    isnull $I5010, _lex_param_0
    set $I5012, $I5010
    if $I5010 goto unless37_end84 
    isnull $I5011, _lex_param_1
    set $I5012, $I5011
  unless37_end84:
    unless $I5012 goto if36_else81 
.annotate 'line', 79

    set $I5014, 0
    goto if36_end82
  if36_else81:
.annotate 'line', 80
    type_check $I5013, _lex_param_0, _lex_param_1
    set $I5014, $I5013
  if36_end82:
    set $I5015, $I5014
  if34_end78:
    set $I5016, $I5015
  if32_end74:
    .return ($I5016) 
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
.sub "add_dispatchee" :subid("cuid_1_1360256342.611") :anon :lex :outer("cuid_76_1360256342.611")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 38
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$code", _lex_param_1 
    nqp_disable_sc_write_barrier 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 5
    null $P5003
    repr_bind_attr_obj $P5001, $P5002, "$!dispatch_cache", $P5003
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 5
    null $P5006
    repr_bind_attr_obj $P5004, $P5005, "$!dispatch_order", $P5006
    nqp_decontainerize $P5007, _lex_param_0
    nqp_get_sc_object $P5008, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 5
    repr_get_attr_obj $P5009, $P5007, $P5008, "$!dispatchees"
    push $P5009, _lex_param_1
    nqp_enable_sc_write_barrier 
    .return () 
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
.sub "is_dispatcher" :subid("cuid_2_1360256342.611") :anon :lex :outer("cuid_76_1360256342.611")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 47
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 5
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!dispatchees"
    defined $I5001, $P5003
    .return ($I5001) 
.end
.HLL "nqp"
.namespace []
.sub "derive_dispatcher" :subid("cuid_3_1360256342.611") :anon :lex :outer("cuid_76_1360256342.611")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 52
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
    nqp_get_sc_object $P5006, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 5
    repr_get_attr_obj $P5007, $P5005, $P5006, "$!do"
    repr_clone $P5004, $P5007
    set $P101, $P5004
    nqp_decontainerize $P5009, _lex_param_0
    repr_clone $P5008, $P5009
    set $P102, $P5008
    nqp_get_sc_object $P5010, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 5
    setattribute $P102, $P5010, "$!do", $P101
    nqp_get_sc_object $P5011, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 5
    nqp_decontainerize $P5013, _lex_param_0
    nqp_get_sc_object $P5014, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 5
    repr_get_attr_obj $P5015, $P5013, $P5014, "$!dispatchees"
    repr_clone $P5012, $P5015
    setattribute $P102, $P5011, "$!dispatchees", $P5012
    set_sub_code_object $P101, $P102
    nqp_decontainerize $P5017, _lex_param_0
    nqp_get_sc_object $P5018, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 5
    repr_get_attr_obj $P5019, $P5017, $P5018, "$!do"
    getprop $P5016, $P5019, "CLONE_CALLBACK"
    set $P103, $P5016
    defined $I5001, $P103
    unless $I5001 goto if38_end86 
.annotate 'line', 64
.annotate 'line', 65
    nqp_decontainerize $P5020, _lex_param_0
    nqp_get_sc_object $P5021, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 5
    repr_get_attr_obj $P5022, $P5020, $P5021, "$!do"
    $P5023 = $P103($P5022, $P101, $P102)
  if38_end86:
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "SET_NQPMU" :subid("cuid_4_1360256342.611") :anon :lex :outer("cuid_76_1360256342.611")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 73
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$mu", _lex_param_1 
    store_lex "$NQPMu", _lex_param_1
    .return (_lex_param_1) 
.end
.HLL "nqp"
.namespace []
.sub "sort_dispatchees" :subid("cuid_5_1360256342.611") :anon :lex :outer("cuid_76_1360256342.611")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 90
    .param pmc _lex_param_0 
    .const 'Sub' $P5028 = 'cuid_78_1360256342.611' 
    capture_lex $P5028 
    .const 'Sub' $P5028 = 'cuid_79_1360256342.611' 
    capture_lex $P5028 
    .const 'Sub' $P5028 = 'cuid_80_1360256342.611' 
    capture_lex $P5028 
    .const 'Sub' $P5028 = 'cuid_82_1360256342.611' 
    capture_lex $P5028 
    .lex "&is_narrower", $P101 
    .lex "@graph", $P102 
    .lex "$num_candidates", $P103 
    .lex "$i", $P104 
    .lex "@result", $P105 
    .lex "$candidates_to_sort", $P106 
    .lex "self", _lex_param_0 
    .const 'Sub' $P5001 = 'cuid_78_1360256342.611' 
    capture_lex $P5001
    set $P101, $P5001
    new $P5002, 'ResizablePMCArray'
    set $P102, $P5002
    null $P5003
    set $P103, $P5003
    null $P5004
    set $P104, $P5004
    new $P5005, 'ResizablePMCArray'
    set $P105, $P5005
    null $P5006
    set $P106, $P5006
    root_new $P107, ['parrot';'Continuation']
    set_label $P107, lexotic_129
    .lex "RETURN", $P107
    nqp_decontainerize $P5007, _lex_param_0
    nqp_get_sc_object $P5008, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 5
    repr_get_attr_obj $P5009, $P5007, $P5008, "$!dispatchees"
    elements $I5001, $P5009
    box $P5010, $I5001
    set $P103, $P5010
    box $P5011, 0
    set $P104, $P5011
  while50_test131:
    set $N5001, $P104
    set $N5002, $P103
    islt $I5002, $N5001, $N5002
    box $P5015, $I5002
    set $P5014, $P5015
    unless $I5002 goto while50_done135 
  while50_redo133:
    .const 'Sub' $P5012 = 'cuid_79_1360256342.611' 
    capture_lex $P5012
    $P5013 = $P5012()
    set $P5014, $P5013
    goto while50_test131 
  while50_done135:
    box $P5016, 0
    set $P104, $P5016
  while52_test149:
    set $N5003, $P104
    set $N5004, $P103
    islt $I5003, $N5003, $N5004
    box $P5020, $I5003
    set $P5019, $P5020
    unless $I5003 goto while52_done153 
  while52_redo151:
    .const 'Sub' $P5017 = 'cuid_80_1360256342.611' 
    capture_lex $P5017
    $P5018 = $P5017()
    set $P5019, $P5018
    goto while52_test149 
  while52_done153:
    set $P106, $P103
  while56_test178:
    set $N5005, $P106
    set $N5006, 0
    isgt $I5004, $N5005, $N5006
    box $P5024, $I5004
    set $P5023, $P5024
    unless $I5004 goto while56_done182 
  while56_redo180:
    .const 'Sub' $P5021 = 'cuid_82_1360256342.611' 
    capture_lex $P5021
    $P5022 = $P5021()
    set $P5023, $P5022
    goto while56_test178 
  while56_done182:
    null $P5025
    push $P105, $P5025
    find_lex $P5026, "RETURN"
    $P5027 = $P5026($P105)
    goto lexotic_130
  lexotic_129:
    .get_results ($P5027)
  lexotic_130:
    .return ($P5027) 
.end
.HLL "nqp"
.namespace []
.sub "is_narrower" :subid("cuid_78_1360256342.611") :anon :lex :outer("cuid_5_1360256342.611")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 93
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5048 = 'cuid_77_1360256342.611' 
    capture_lex $P5048 
    .lex "$types_to_check", $P101 
    .lex "$i", $P102 
    .lex "$narrower", $P103 
    .lex "$tied", $P104 
    .lex "%a", _lex_param_0 
    .lex "%b", _lex_param_1 
    null $P5001
    set $P101, $P5001
    null $P5002
    set $P102, $P5002
    null $P5003
    set $P103, $P5003
    null $P5004
    set $P104, $P5004
    root_new $P105, ['parrot';'Continuation']
    set_label $P105, lexotic_87
    .lex "RETURN", $P105
    set $P5005, _lex_param_0["num_types"]
    unless_null $P5005, fallback91
    null $P5006
    set $P5005, $P5006
  fallback91:
    set $N5001, $P5005
    set $P5007, _lex_param_1["num_types"]
    unless_null $P5007, fallback92
    null $P5008
    set $P5007, $P5008
  fallback92:
    set $N5002, $P5007
    iseq $I5001, $N5001, $N5002
    unless $I5001 goto if39_else89 
.annotate 'line', 97
    set $P5009, _lex_param_0["num_types"]
    unless_null $P5009, fallback93
    null $P5010
    set $P5009, $P5010
  fallback93:
    set $P101, $P5009
    goto if39_end90
  if39_else89:
    set $P5011, _lex_param_0["min_arity"]
    unless_null $P5011, fallback96
    null $P5012
    set $P5011, $P5012
  fallback96:
    set $N5003, $P5011
    set $P5013, _lex_param_1["min_arity"]
    unless_null $P5013, fallback97
    null $P5014
    set $P5013, $P5014
  fallback97:
    set $N5004, $P5013
    iseq $I5002, $N5003, $N5004
    unless $I5002 goto if40_else94 
.annotate 'line', 100
    set $P5015, _lex_param_0["num_types"]
    unless_null $P5015, fallback100
    null $P5016
    set $P5015, $P5016
  fallback100:
    set $N5005, $P5015
    set $P5017, _lex_param_1["num_types"]
    unless_null $P5017, fallback101
    null $P5018
    set $P5017, $P5018
  fallback101:
    set $N5006, $P5017
    isgt $I5003, $N5005, $N5006
    unless $I5003 goto if41_else98 
    set $P5019, _lex_param_1["num_types"]
    unless_null $P5019, fallback102
    null $P5020
    set $P5019, $P5020
  fallback102:
    set $P5023, $P5019
    goto if41_end99
  if41_else98:
    set $P5021, _lex_param_0["num_types"]
    unless_null $P5021, fallback103
    null $P5022
    set $P5021, $P5022
  fallback103:
    set $P5023, $P5021
  if41_end99:
    set $P101, $P5023
    set $P5026, $P101
    goto if40_end95
  if40_else94:
.annotate 'line', 103
    find_lex $P5024, "RETURN"
    $P5025 = $P5024(0)
    set $P5026, $P5025
  if40_end95:
  if39_end90:
    box $P5027, 0
    set $P102, $P5027
    box $P5028, 0
    set $P103, $P5028
    box $P5029, 0
    set $P104, $P5029
  while42_test104:
    set $N5007, $P102
    set $N5008, $P101
    islt $I5004, $N5007, $N5008
    box $P5033, $I5004
    set $P5032, $P5033
    unless $I5004 goto while42_done108 
  while42_redo106:
    .const 'Sub' $P5030 = 'cuid_77_1360256342.611' 
    capture_lex $P5030
    $P5031 = $P5030()
    set $P5032, $P5031
    goto while42_test104 
  while42_done108:
    set $N5009, $P103
    set $N5010, 1
    isge $I5005, $N5009, $N5010
    set $I5007, $I5005
    unless $I5005 goto if47_end122 
    set $N5012, $P103
    set $N5013, $P104
    add $N5011, $N5012, $N5013
    set $N5014, $P101
    iseq $I5006, $N5011, $N5014
    set $I5007, $I5006
  if47_end122:
    unless $I5007 goto if46_else119 
.annotate 'line', 127
    find_lex $P5034, "RETURN"
    $P5035 = $P5034(1)
    goto if46_end120
  if46_else119:
    set $N5015, $P104
    set $N5016, $P101
    isne $I5008, $N5015, $N5016
    box $P5039, $I5008
    set $P5038, $P5039
    unless $I5008 goto if48_end124 
.annotate 'line', 132
    find_lex $P5036, "RETURN"
    $P5037 = $P5036(0)
    set $P5038, $P5037
  if48_end124:
  if46_end120:
    set $P5041, _lex_param_0["max_arity"]
    unless_null $P5041, fallback127
    null $P5042
    set $P5041, $P5042
  fallback127:
    set $N5017, $P5041
    find_lex $P5043, "$SLURPY_ARITY"
    set $N5018, $P5043
    isne $I5009, $N5017, $N5018
    set $I5011, $I5009
    unless $I5009 goto if49_end126 
    set $P5044, _lex_param_1["max_arity"]
    unless_null $P5044, fallback128
    null $P5045
    set $P5044, $P5045
  fallback128:
    set $N5019, $P5044
    find_lex $P5046, "$SLURPY_ARITY"
    set $N5020, $P5046
    iseq $I5010, $N5019, $N5020
    set $I5011, $I5010
  if49_end126:
    find_lex $P5040, "RETURN"
    $P5047 = $P5040($I5011)
    goto lexotic_88
  lexotic_87:
    .get_results ($P5047)
  lexotic_88:
    .return ($P5047) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_77_1360256342.611") :anon :lex :outer("cuid_78_1360256342.611")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 111
    .lex "$type_obj_a", $P101 
    .lex "$type_obj_b", $P102 
    .local pmc tmp_1 
    .local pmc tmp_2 
    .local pmc tmp_3 
    .local pmc tmp_4 
    null $P5001
    set $P101, $P5001
    null $P5002
    set $P102, $P5002
    find_lex $P5005, "%a"
    set $P5004, $P5005["types"]
    unless_null $P5004, fallback109
    null $P5006
    set $P5004, $P5006
  fallback109:
    find_lex $P5007, "$i"
    set $I5001, $P5007
    set $P5003, $P5004[$I5001]
    unless_null $P5003, fallback110
    null $P5008
    set $P5003, $P5008
  fallback110:
    set $P101, $P5003
    find_lex $P5011, "%b"
    set $P5010, $P5011["types"]
    unless_null $P5010, fallback111
    null $P5012
    set $P5010, $P5012
  fallback111:
    find_lex $P5013, "$i"
    set $I5002, $P5013
    set $P5009, $P5010[$I5002]
    unless_null $P5009, fallback112
    null $P5014
    set $P5009, $P5014
  fallback112:
    set $P102, $P5009
    get_id $I5004, $P101
    get_id $I5005, $P102
    iseq $I5003, $I5004, $I5005
    unless $I5003 goto if43_else113 
.annotate 'line', 114
    find_lex $P5015, "$tied"
    set tmp_1, $P5015
    set $N5002, tmp_1
    set $N5003, 1
    add $N5001, $N5002, $N5003
    box $P5016, $N5001
    store_lex "$tied", $P5016
    goto if43_end114
  if43_else113:
.annotate 'line', 117
    $P5015 = "&is_narrower_type"($P101, $P102)
    unless $P5015 goto if44_else115 
    find_lex $P5016, "$narrower"
    set tmp_2, $P5016
    set $N5002, tmp_2
    set $N5003, 1
    add $N5001, $N5002, $N5003
    box $P5017, $N5001
    store_lex "$narrower", $P5017
    set $P5019, tmp_2
    goto if44_end116
  if44_else115:
.annotate 'line', 120
    $P5016 = "&is_narrower_type"($P102, $P101)
    isfalse $I5006, $P5016
    box $P5018, $I5006
    set $P5017, $P5018
    unless $I5006 goto if45_end118 
    find_lex $P5017, "$tied"
    set tmp_3, $P5017
    set $N5002, tmp_3
    set $N5003, 1
    add $N5001, $N5002, $N5003
    box $P5018, $N5001
    store_lex "$tied", $P5018
    set $P5017, tmp_3
  if45_end118:
    set $P5019, $P5017
  if44_end116:
  if43_end114:
    find_lex $P5020, "$i"
    set tmp_4, $P5020
    set $N5002, tmp_4
    set $N5003, 1
    add $N5001, $N5002, $N5003
    box $P5021, $N5001
    store_lex "$i", $P5021
    .return (tmp_4) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_79_1360256342.611") :anon :lex :outer("cuid_5_1360256342.611")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 145
    .lex "$candidate", $P101 
    .lex "$multi_sig", $P102 
    .lex "@types_list", $P103 
    .lex "@definedness_list", $P104 
    .lex "$sig_elems", $P105 
    .lex "%info", $P106 
    .lex "%significant_param", $P107 
    .lex "$j", $P108 
    .local pmc tmp_5 
    .local pmc tmp_6 
    .local pmc tmp_7 
    .local pmc tmp_8 
    .local pmc tmp_9 
    null $P5001
    set $P101, $P5001
    null $P5002
    set $P102, $P5002
    new $P5003, 'ResizablePMCArray'
    set $P103, $P5003
    new $P5004, 'ResizablePMCArray'
    set $P104, $P5004
    null $P5005
    set $P105, $P5005
    new $P5006, 'Hash'
    set $P106, $P5006
    new $P5007, 'Hash'
    set $P107, $P5007
    null $P5008
    set $P108, $P5008
    find_lex $P5011, "self"
    nqp_decontainerize $P5010, $P5011
    nqp_get_sc_object $P5012, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 5
    repr_get_attr_obj $P5013, $P5010, $P5012, "$!dispatchees"
    find_lex $P5014, "$i"
    set $I5001, $P5014
    set $P5009, $P5013[$I5001]
    unless_null $P5009, fallback136
    null $P5015
    set $P5009, $P5015
  fallback136:
    set $P101, $P5009
.annotate 'line', 148
    $P5016 = $P101."signature"()
    set $P102, $P5016
.annotate 'line', 149
    $P5017 = $P102."types"()
    set $P103, $P5017
.annotate 'line', 150
    $P5018 = $P102."definednesses"()
    set $P104, $P5018
    elements $I5002, $P103
    box $P5019, $I5002
    set $P105, $P5019
    new $P5020, 'Hash'
    set $P5020["sub"], $P101
    new $P5021, 'ResizablePMCArray'
    set $P5020["types"], $P5021
    new $P5022, 'ResizablePMCArray'
    set $P5020["definednesses"], $P5022
    box $P5023, 0
    set $P5020["min_arity"], $P5023
    box $P5024, 0
    set $P5020["max_arity"], $P5024
    box $P5025, 0
    set $P5020["num_types"], $P5025
    set $P106, $P5020
    box $P5026, 0
    set $P107, $P5026
    box $P5027, 0
    set $P108, $P5027
  while51_test137:
    set $N5001, $P108
    set $N5002, $P105
    islt $I5003, $N5001, $N5002
    box $P5037, $I5003
    set $P5036, $P5037
    unless $I5003 goto while51_done141 
  while51_redo139:
.annotate 'line', 164
    set $P5028, $P106["max_arity"]
    unless_null $P5028, fallback142
    null $P5029
    set $P5028, $P5029
  fallback142:
    set tmp_5, $P5028
    set $N5004, tmp_5
    set $N5005, 1
    add $N5003, $N5004, $N5005
    box $P5030, $N5003
    set $P106["max_arity"], $P5030
    set $P5028, $P106["min_arity"]
    unless_null $P5028, fallback143
    null $P5029
    set $P5028, $P5029
  fallback143:
    set tmp_6, $P5028
    set $N5004, tmp_6
    set $N5005, 1
    add $N5003, $N5004, $N5005
    box $P5030, $N5003
    set $P106["min_arity"], $P5030
    set $P5028, $P106["types"]
    unless_null $P5028, fallback144
    null $P5029
    set $P5028, $P5029
  fallback144:
    set $I5004, $P108
    set $P5030, $P103[$I5004]
    unless_null $P5030, fallback145
    null $P5031
    set $P5030, $P5031
  fallback145:
    push $P5028, $P5030
    set $P5032, $P106["definednesses"]
    unless_null $P5032, fallback146
    null $P5033
    set $P5032, $P5033
  fallback146:
    set $I5005, $P108
    set $P5034, $P104[$I5005]
    unless_null $P5034, fallback147
    null $P5035
    set $P5034, $P5035
  fallback147:
    push $P5032, $P5034
    set $P5036, $P106["num_types"]
    unless_null $P5036, fallback148
    null $P5037
    set $P5036, $P5037
  fallback148:
    set tmp_7, $P5036
    set $N5004, tmp_7
    set $N5005, 1
    add $N5003, $N5004, $N5005
    box $P5038, $N5003
    set $P106["num_types"], $P5038
    set tmp_8, $P108
    set $N5004, tmp_8
    set $N5005, 1
    add $N5003, $N5004, $N5005
    box $P5036, $N5003
    set $P108, $P5036
    set $P5036, tmp_8
    goto while51_test137 
  while51_done141:
    find_lex $P5038, "@graph"
    new $P5039, 'Hash'
    set $P5039["info"], $P106
    new $P5040, 'ResizablePMCArray'
    set $P5039["edges"], $P5040
    box $P5041, 0
    set $P5039["edges_in"], $P5041
    box $P5042, 0
    set $P5039["edges_out"], $P5042
    push $P5038, $P5039
    find_lex $P5043, "$i"
    set tmp_9, $P5043
    set $N5004, tmp_9
    set $N5005, 1
    add $N5003, $N5004, $N5005
    box $P5044, $N5003
    store_lex "$i", $P5044
    .return (tmp_9) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_80_1360256342.611") :anon :lex :outer("cuid_5_1360256342.611")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 191
    .lex "$j", $P101 
    .local pmc tmp_10 
    .local pmc tmp_11 
    .local pmc tmp_12 
    .local pmc tmp_13 
    null $P5001
    set $P101, $P5001
    box $P5002, 0
    set $P101, $P5002
  while53_test154:
    set $N5001, $P101
    find_lex $P5003, "$num_candidates"
    set $N5002, $P5003
    islt $I5001, $N5001, $N5002
    box $P5034, $I5001
    set $P5033, $P5034
    unless $I5001 goto while53_done158 
  while53_redo156:
.annotate 'line', 193
    find_lex $P5004, "$i"
    set $N5003, $P5004
    set $N5004, $P101
    isne $I5002, $N5003, $N5004
    unless $I5002 goto if54_end160 
.annotate 'line', 194
.annotate 'line', 195
    find_lex $P5007, "@graph"
    find_lex $P5008, "$i"
    set $I5003, $P5008
    set $P5006, $P5007[$I5003]
    unless_null $P5006, fallback163
    null $P5009
    set $P5006, $P5009
  fallback163:
    set $P5005, $P5006["info"]
    unless_null $P5005, fallback164
    null $P5010
    set $P5005, $P5010
  fallback164:
    find_lex $P5013, "@graph"
    set $I5004, $P101
    set $P5012, $P5013[$I5004]
    unless_null $P5012, fallback165
    null $P5014
    set $P5012, $P5014
  fallback165:
    set $P5011, $P5012["info"]
    unless_null $P5011, fallback166
    null $P5015
    set $P5011, $P5015
  fallback166:
    $P5016 = "&is_narrower"($P5005, $P5011)
    set $P5032, $P5016
    unless $P5016 goto if55_end162 
    find_lex $P5019, "@graph"
    find_lex $P5020, "$i"
    set $I5005, $P5020
    set $P5018, $P5019[$I5005]
    unless_null $P5018, fallback167
    null $P5021
    set $P5018, $P5021
  fallback167:
    set $P5017, $P5018["edges"]
    unless_null $P5017, fallback168
    null $P5022
    set $P5017, $P5022
  fallback168:
    find_lex $P5025, "@graph"
    find_lex $P5026, "$i"
    set $I5006, $P5026
    set $P5024, $P5025[$I5006]
    unless_null $P5024, fallback169
    null $P5027
    set $P5024, $P5027
  fallback169:
    set $P5023, $P5024["edges_out"]
    unless_null $P5023, fallback170
    null $P5028
    set $P5023, $P5028
  fallback170:
    set $I5007, $P5023
    find_lex $P5030, "@graph"
    set $I5008, $P101
    set $P5029, $P5030[$I5008]
    unless_null $P5029, fallback171
    null $P5031
    set $P5029, $P5031
  fallback171:
    set $P5017[$I5007], $P5029
    find_lex $P5034, "@graph"
    find_lex $P5035, "$i"
    set $I5009, $P5035
    set $P5033, $P5034[$I5009]
    unless_null $P5033, fallback172
    null $P5036
    set $P5033, $P5036
  fallback172:
    set $P5032, $P5033["edges_out"]
    unless_null $P5032, fallback173
    null $P5037
    set $P5032, $P5037
  fallback173:
    set tmp_10, $P5032
    find_lex $P5039, "@graph"
    find_lex $P5040, "$i"
    set $I5010, $P5040
    set $P5038, $P5039[$I5010]
    unless_null $P5038, fallback174
    null $P5041
    set $P5038, $P5041
  fallback174:
    set $N5006, tmp_10
    set $N5007, 1
    add $N5005, $N5006, $N5007
    box $P5042, $N5005
    set $P5038["edges_out"], $P5042
    find_lex $P5034, "@graph"
    set $I5009, $P101
    set $P5033, $P5034[$I5009]
    unless_null $P5033, fallback175
    null $P5035
    set $P5033, $P5035
  fallback175:
    set $P5032, $P5033["edges_in"]
    unless_null $P5032, fallback176
    null $P5036
    set $P5032, $P5036
  fallback176:
    set tmp_11, $P5032
    find_lex $P5038, "@graph"
    set $I5010, $P101
    set $P5037, $P5038[$I5010]
    unless_null $P5037, fallback177
    null $P5039
    set $P5037, $P5039
  fallback177:
    set $N5006, tmp_11
    set $N5007, 1
    add $N5005, $N5006, $N5007
    box $P5040, $N5005
    set $P5037["edges_in"], $P5040
    set $P5032, tmp_11
  if55_end162:
  if54_end160:
    set tmp_12, $P101
    set $N5006, tmp_12
    set $N5007, 1
    add $N5005, $N5006, $N5007
    box $P5033, $N5005
    set $P101, $P5033
    set $P5033, tmp_12
    goto while53_test154 
  while53_done158:
    find_lex $P5035, "$i"
    set tmp_13, $P5035
    set $N5006, tmp_13
    set $N5007, 1
    add $N5005, $N5006, $N5007
    box $P5036, $N5005
    store_lex "$i", $P5036
    .return (tmp_13) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_82_1360256342.611") :anon :lex :outer("cuid_5_1360256342.611")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 209
    .const 'Sub' $P5040 = 'cuid_81_1360256342.611' 
    capture_lex $P5040 
    .lex "$rem_results", $P101 
    .lex "$i", $P102 
    .local pmc tmp_14 
    .local pmc tmp_15 
    .local pmc tmp_18 
    null $P5001
    set $P101, $P5001
    null $P5002
    set $P102, $P5002
    find_lex $P5003, "@result"
    elements $I5001, $P5003
    box $P5004, $I5001
    set $P101, $P5004
    box $P5005, 0
    set $P102, $P5005
  while57_test183:
    set $N5001, $P102
    find_lex $P5006, "$num_candidates"
    set $N5002, $P5006
    islt $I5002, $N5001, $N5002
    box $P5023, $I5002
    set $P5022, $P5023
    unless $I5002 goto while57_done187 
  while57_redo185:
.annotate 'line', 215
    find_lex $P5009, "@graph"
    set $I5004, $P102
    set $P5008, $P5009[$I5004]
    unless_null $P5008, fallback190
    null $P5010
    set $P5008, $P5010
  fallback190:
    set $P5007, $P5008["edges_in"]
    unless_null $P5007, fallback191
    null $P5011
    set $P5007, $P5011
  fallback191:
    set $N5003, $P5007
    set $N5004, 0
    iseq $I5003, $N5003, $N5004
    unless $I5003 goto if58_end189 
.annotate 'line', 216
    find_lex $P5012, "@result"
    find_lex $P5015, "@graph"
    set $I5005, $P102
    set $P5014, $P5015[$I5005]
    unless_null $P5014, fallback192
    null $P5016
    set $P5014, $P5016
  fallback192:
    set $P5013, $P5014["info"]
    unless_null $P5013, fallback193
    null $P5017
    set $P5013, $P5017
  fallback193:
    push $P5012, $P5013
    find_lex $P5018, "$candidates_to_sort"
    set tmp_14, $P5018
    set $N5006, tmp_14
    set $N5007, 1
    sub $N5005, $N5006, $N5007
    box $P5019, $N5005
    store_lex "$candidates_to_sort", $P5019
    find_lex $P5019, "@graph"
    set $I5006, $P102
    set $P5018, $P5019[$I5006]
    unless_null $P5018, fallback194
    null $P5020
    set $P5018, $P5020
  fallback194:
    find_lex $P5021, "$EDGE_REMOVAL_TODO"
    set $P5018["edges_in"], $P5021
  if58_end189:
    set tmp_15, $P102
    set $N5006, tmp_15
    set $N5007, 1
    add $N5005, $N5006, $N5007
    box $P5022, $N5005
    set $P102, $P5022
    set $P5022, tmp_15
    goto while57_test183 
  while57_done187:
    set $N5005, $P101
    find_lex $P5024, "@result"
    elements $I5008, $P5024
    set $N5006, $I5008
    iseq $I5007, $N5005, $N5006
    unless $I5007 goto if59_end196 
.annotate 'line', 224
    box $P5025, "Circularity detected in multi sub types"
    die $P5025
  if59_end196:
    box $P5026, 0
    set $P102, $P5026
  while60_test197:
    set $N5007, $P102
    find_lex $P5027, "$num_candidates"
    set $N5008, $P5027
    islt $I5009, $N5007, $N5008
    box $P5037, $I5009
    set $P5036, $P5037
    unless $I5009 goto while60_done201 
  while60_redo199:
.annotate 'line', 231
    find_lex $P5030, "@graph"
    set $I5011, $P102
    set $P5029, $P5030[$I5011]
    unless_null $P5029, fallback204
    null $P5031
    set $P5029, $P5031
  fallback204:
    set $P5028, $P5029["edges_in"]
    unless_null $P5028, fallback205
    null $P5032
    set $P5028, $P5032
  fallback205:
    set $N5009, $P5028
    find_lex $P5033, "$EDGE_REMOVAL_TODO"
    set $N5010, $P5033
    iseq $I5010, $N5009, $N5010
    unless $I5010 goto if61_end203 
    .const 'Sub' $P5034 = 'cuid_81_1360256342.611' 
    capture_lex $P5034
    $P5035 = $P5034()
  if61_end203:
    set tmp_18, $P102
    set $N5012, tmp_18
    set $N5013, 1
    add $N5011, $N5012, $N5013
    box $P5036, $N5011
    set $P102, $P5036
    set $P5036, tmp_18
    goto while60_test197 
  while60_done201:
    find_lex $P5038, "@result"
    null $P5039
    push $P5038, $P5039
    .return ($P5038) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_81_1360256342.611") :anon :lex :outer("cuid_82_1360256342.611")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 232
    .lex "$j", $P101 
    .local pmc tmp_16 
    .local pmc tmp_17 
    null $P5001
    set $P101, $P5001
    box $P5002, 0
    set $P101, $P5002
  while62_test206:
    set $N5001, $P101
    find_lex $P5005, "@graph"
    find_lex $P5006, "$i"
    set $I5002, $P5006
    set $P5004, $P5005[$I5002]
    unless_null $P5004, fallback211
    null $P5007
    set $P5004, $P5007
  fallback211:
    set $P5003, $P5004["edges_out"]
    unless_null $P5003, fallback212
    null $P5008
    set $P5003, $P5008
  fallback212:
    set $N5002, $P5003
    islt $I5001, $N5001, $N5002
    box $P5010, $I5001
    set $P5009, $P5010
    unless $I5001 goto while62_done210 
  while62_redo208:
.annotate 'line', 234
    find_lex $P5013, "@graph"
    find_lex $P5014, "$i"
    set $I5003, $P5014
    set $P5012, $P5013[$I5003]
    unless_null $P5012, fallback213
    null $P5015
    set $P5012, $P5015
  fallback213:
    set $P5011, $P5012["edges"]
    unless_null $P5011, fallback214
    null $P5016
    set $P5011, $P5016
  fallback214:
    set $I5004, $P101
    set $P5010, $P5011[$I5004]
    unless_null $P5010, fallback215
    null $P5017
    set $P5010, $P5017
  fallback215:
    set $P5009, $P5010["edges_in"]
    unless_null $P5009, fallback216
    null $P5018
    set $P5009, $P5018
  fallback216:
    set tmp_16, $P5009
    find_lex $P5022, "@graph"
    find_lex $P5023, "$i"
    set $I5005, $P5023
    set $P5021, $P5022[$I5005]
    unless_null $P5021, fallback217
    null $P5024
    set $P5021, $P5024
  fallback217:
    set $P5020, $P5021["edges"]
    unless_null $P5020, fallback218
    null $P5025
    set $P5020, $P5025
  fallback218:
    set $I5006, $P101
    set $P5019, $P5020[$I5006]
    unless_null $P5019, fallback219
    null $P5026
    set $P5019, $P5026
  fallback219:
    set $N5004, tmp_16
    set $N5005, 1
    sub $N5003, $N5004, $N5005
    box $P5027, $N5003
    set $P5019["edges_in"], $P5027
    set tmp_17, $P101
    set $N5004, tmp_17
    set $N5005, 1
    add $N5003, $N5004, $N5005
    box $P5009, $N5003
    set $P101, $P5009
    set $P5009, tmp_17
    goto while62_test206 
  while62_done210:
    find_lex $P5012, "@graph"
    find_lex $P5013, "$i"
    set $I5003, $P5013
    set $P5011, $P5012[$I5003]
    unless_null $P5011, fallback220
    null $P5014
    set $P5011, $P5014
  fallback220:
    find_lex $P5015, "$EDGE_REMOVED"
    set $P5011["edges_in"], $P5015
    .return ($P5015) 
.end
.HLL "nqp"
.namespace []
.sub "dispatch" :subid("cuid_6_1360256342.611") :anon :lex :outer("cuid_76_1360256342.611")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 253
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5053 = 'cuid_84_1360256342.611' 
    capture_lex $P5053 
    .const 'Sub' $P5053 = 'cuid_85_1360256342.611' 
    capture_lex $P5053 
    .lex "$num_args", $P101 
    .lex "@candidates", $P102 
    .lex "$num_candidates", $P103 
    .lex "@possibles", $P104 
    .lex "$type_mismatch", $P105 
    .lex "$type_check_count", $P106 
    .lex "$i", $P107 
    .lex "$cur_idx", $P108 
    .lex "$cur_candidate", $P109 
    .lex "self", _lex_param_0 
    .lex "$capture", _lex_param_1 
    .local pmc tmp_19 
    .local pmc tmp_20 
    .local pmc tmp_22 
    .local pmc tmp_23 
    null $P5001
    set $P101, $P5001
    new $P5002, 'ResizablePMCArray'
    set $P102, $P5002
    null $P5003
    set $P103, $P5003
    new $P5004, 'ResizablePMCArray'
    set $P104, $P5004
    null $P5005
    set $P105, $P5005
    null $P5006
    set $P106, $P5006
    null $P5007
    set $P107, $P5007
    null $P5008
    set $P108, $P5008
    null $P5009
    set $P109, $P5009
    elements $I5001, _lex_param_1
    box $P5010, $I5001
    set $P101, $P5010
    nqp_decontainerize $P5011, _lex_param_0
    nqp_get_sc_object $P5012, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 5
    repr_get_attr_obj $P5013, $P5011, $P5012, "$!dispatch_order"
    set $P102, $P5013
    isnull $I5002, $P102
    unless $I5002 goto if63_end222 
.annotate 'line', 259
    nqp_disable_sc_write_barrier 
    nqp_decontainerize $P5014, _lex_param_0
    nqp_get_sc_object $P5015, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 5
.annotate 'line', 261
    nqp_decontainerize $P5016, _lex_param_0
    $P5017 = $P5016."sort_dispatchees"()
    repr_bind_attr_obj $P5014, $P5015, "$!dispatch_order", $P5017
    set $P102, $P5017
    nqp_enable_sc_write_barrier 
  if63_end222:
    elements $I5003, $P102
    box $P5018, $I5003
    set $P103, $P5018
    box $P5019, 0
    set $P108, $P5019
    new $P5041, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5041, while64_handlers226
    push_eh $P5041
  while64_test223:
    box $P5042, 1
    set $P5040, $P5042
    unless 1 goto while64_done227 
  while64_redo225:
.annotate 'line', 276
    set $I5004, $P108
    set $P5020, $P102[$I5004]
    unless_null $P5020, fallback228
    null $P5021
    set $P5020, $P5021
  fallback228:
    set $P109, $P5020
    isnull $I5005, $P109
    unless $I5005 goto if65_end230 
.annotate 'line', 279
    elements $I5006, $P104
    unless $I5006 goto if66_end232 
.annotate 'line', 281
    die 0, .CONTROL_LOOP_LAST
  if66_end232:
    set tmp_19, $P108
    set $N5002, tmp_19
    set $N5003, 1
    add $N5001, $N5002, $N5003
    box $P5022, $N5001
    set $P108, $P5022
    set $I5008, $P108
    set $P5022, $P102[$I5008]
    unless_null $P5022, fallback235
    null $P5023
    set $P5022, $P5023
  fallback235:
    isnull $I5007, $P5022
    unless $I5007 goto if67_else233 
.annotate 'line', 287
    die 0, .CONTROL_LOOP_LAST
    set $I5009, 0
    goto if67_end234
  if67_else233:
.annotate 'line', 290
    die 0, .CONTROL_LOOP_NEXT
    set $I5009, 0
  if67_end234:
  if65_end230:
    set $N5001, $P101
    set $P5024, $P109["min_arity"]
    unless_null $P5024, fallback240
    null $P5025
    set $P5024, $P5025
  fallback240:
    set $N5002, $P5024
    islt $I5010, $N5001, $N5002
    set $I5012, $I5010
    if $I5010 goto unless69_end239 
    set $N5003, $P101
    set $P5026, $P109["max_arity"]
    unless_null $P5026, fallback241
    null $P5027
    set $P5026, $P5027
  fallback241:
    set $N5004, $P5026
    isgt $I5011, $N5003, $N5004
    set $I5012, $I5011
  unless69_end239:
    unless $I5012 goto if68_end237 
.annotate 'line', 296
    set tmp_20, $P108
    set $N5006, tmp_20
    set $N5007, 1
    add $N5005, $N5006, $N5007
    box $P5028, $N5005
    set $P108, $P5028
    die 0, .CONTROL_LOOP_NEXT
  if68_end237:
    set $P5028, $P109["num_types"]
    unless_null $P5028, fallback244
    null $P5029
    set $P5028, $P5029
  fallback244:
    set $N5005, $P5028
    set $N5006, $P101
    isgt $I5013, $N5005, $N5006
    unless $I5013 goto if70_else242 
    set $P5032, $P101
    goto if70_end243
  if70_else242:
    set $P5030, $P109["num_types"]
    unless_null $P5030, fallback245
    null $P5031
    set $P5030, $P5031
  fallback245:
    set $P5032, $P5030
  if70_end243:
    set $P106, $P5032
    box $P5033, 0
    set $P105, $P5033
    box $P5034, 0
    set $P107, $P5034
    new $P5038, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5038, while71_handlers249
    push_eh $P5038
  while71_test246:
    set $N5007, $P107
    set $N5008, $P106
    islt $I5014, $N5007, $N5008
    box $P5039, $I5014
    set $P5037, $P5039
    unless $I5014 goto while71_done250 
  while71_redo248:
    .const 'Sub' $P5035 = 'cuid_84_1360256342.611' 
    capture_lex $P5035
    $P5036 = $P5035()
    set $P5037, $P5036
    goto while71_test246 
  while71_handlers249:
    .get_results ($P5038)
    pop_upto_eh $P5038
    getattribute $P5038, $P5038, 'type'
    eq $P5038, .CONTROL_LOOP_NEXT, while71_test246
    eq $P5038, .CONTROL_LOOP_REDO, while71_redo248
  while71_done250:
    pop_eh 
    unless $P105 goto if80_end272 
.annotate 'line', 327
    set tmp_22, $P108
    set $N5010, tmp_22
    set $N5011, 1
    add $N5009, $N5010, $N5011
    box $P5040, $N5009
    set $P108, $P5040
    die 0, .CONTROL_LOOP_NEXT
  if80_end272:
    push $P104, $P109
    set tmp_23, $P108
    set $N5010, tmp_23
    set $N5011, 1
    add $N5009, $N5010, $N5011
    box $P5040, $N5009
    set $P108, $P5040
    set $P5040, tmp_23
    goto while64_test223 
  while64_handlers226:
    .get_results ($P5041)
    pop_upto_eh $P5041
    getattribute $P5041, $P5041, 'type'
    eq $P5041, .CONTROL_LOOP_NEXT, while64_test223
    eq $P5041, .CONTROL_LOOP_REDO, while64_redo225
  while64_done227:
    pop_eh 
    elements $I5016, $P104
    set $N5009, $I5016
    set $N5010, 1
    iseq $I5015, $N5009, $N5010
    unless $I5015 goto if81_else273 
    .const 'Sub' $P5043 = 'cuid_85_1360256342.611' 
    capture_lex $P5043
    $P5044 = $P5043()
    set $P5052, $P5044
    goto if81_end274
  if81_else273:
    elements $I5018, $P104
    set $N5011, $I5018
    set $N5012, 0
    iseq $I5017, $N5011, $N5012
    unless $I5017 goto if82_else277 
.annotate 'line', 345
.annotate 'line', 347
    nqp_decontainerize $P5045, _lex_param_0
    $P5046 = $P5045."name"()
    set $S5003, $P5046
    concat $S5002, "No applicable candidates found to dispatch to for '", $S5003
    concat $S5001, $S5002, "'."
    box $P5047, $S5001
    die $P5047
    set $P5051, $P5047
    goto if82_end278
  if82_else277:
.annotate 'line', 349
.annotate 'line', 351
    nqp_decontainerize $P5048, _lex_param_0
    $P5049 = $P5048."name"()
    set $S5006, $P5049
    concat $S5005, "Ambiguous dispatch to multi '", $S5006
    concat $S5004, $S5005, "'."
    box $P5050, $S5004
    die $P5050
    set $P5051, $P5050
  if82_end278:
    set $P5052, $P5051
  if81_end274:
    .return ($P5052) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_84_1360256342.611") :anon :lex :outer("cuid_6_1360256342.611")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 307
    .const 'Sub' $P5027 = 'cuid_83_1360256342.611' 
    capture_lex $P5027 
    .lex "$param", $P101 
    .lex "$param_type", $P102 
    .lex "$type_obj", $P103 
    .lex "$definedness", $P104 
    .local pmc tmp_21 
    null $P5001
    set $P101, $P5001
    null $P5002
    set $P102, $P5002
    null $P5003
    set $P103, $P5003
    null $P5004
    set $P104, $P5004
    find_lex $P5006, "$capture"
    find_lex $P5007, "$i"
    set $I5001, $P5007
    set $P5005, $P5006[$I5001]
    set $P101, $P5005
    what_or_null $P5008, $P101
    set $P102, $P5008
    find_lex $P5011, "$cur_candidate"
    set $P5010, $P5011["types"]
    unless_null $P5010, fallback251
    null $P5012
    set $P5010, $P5012
  fallback251:
    find_lex $P5013, "$i"
    set $I5002, $P5013
    set $P5009, $P5010[$I5002]
    unless_null $P5009, fallback252
    null $P5014
    set $P5009, $P5014
  fallback252:
    set $P103, $P5009
    find_lex $P5017, "$cur_candidate"
    set $P5016, $P5017["definednesses"]
    unless_null $P5016, fallback253
    null $P5018
    set $P5016, $P5018
  fallback253:
    find_lex $P5019, "$i"
    set $I5003, $P5019
    set $P5015, $P5016[$I5003]
    unless_null $P5015, fallback254
    null $P5020
    set $P5015, $P5020
  fallback254:
    set $P104, $P5015
    get_id $I5005, $P102
    get_id $I5006, $P103
    iseq $I5004, $I5005, $I5006
    box $P5023, $I5004
    set $P5022, $P5023
    if $I5004 goto unless73_end258 
.annotate 'line', 312
    $P5021 = "&is_narrower_type"($P102, $P103)
    set $P5022, $P5021
  unless73_end258:
    if $P5022 goto unless72_end256 
    box $P5024, 1
    store_lex "$type_mismatch", $P5024
    die 0, .CONTROL_LOOP_LAST
  unless72_end256:
    unless $P104 goto if74_end260 
    .const 'Sub' $P5025 = 'cuid_83_1360256342.611' 
    capture_lex $P5025
    $P5026 = $P5025()
  if74_end260:
    find_lex $P5027, "$i"
    set tmp_21, $P5027
    set $N5002, tmp_21
    set $N5003, 1
    add $N5001, $N5002, $N5003
    box $P5028, $N5001
    store_lex "$i", $P5028
    .return (tmp_21) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_83_1360256342.611") :anon :lex :outer("cuid_84_1360256342.611")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 316
    .lex "$defined", $P101 
    null $P5001
    set $P101, $P5001
    find_lex $P5002, "$param_type"
    isnull $I5001, $P5002
    unless $I5001 goto if75_else261 
    find_lex $P5003, "$param"
    defined $I5002, $P5003
    set $I5004, $I5002
    goto if75_end262
  if75_else261:
    find_lex $P5004, "$param"
    repr_defined $I5003, $P5004
    set $I5004, $I5003
  if75_end262:
    box $P5005, $I5004
    set $P101, $P5005
    isfalse $I5005, $P101
    set $I5007, $I5005
    unless $I5005 goto if78_end268 
    find_lex $P5006, "$definedness"
    set $N5001, $P5006
    find_lex $P5007, "$DEFINED_ONLY"
    set $N5002, $P5007
    iseq $I5006, $N5001, $N5002
    set $I5007, $I5006
  if78_end268:
    box $P5013, $I5007
    set $P5012, $P5013
    if $I5007 goto unless77_end266 
    set $P5010, $P101
    unless $P101 goto if79_end270 
    find_lex $P5008, "$definedness"
    set $N5003, $P5008
    find_lex $P5009, "$UNDEFINED_ONLY"
    set $N5004, $P5009
    iseq $I5008, $N5003, $N5004
    box $P5011, $I5008
    set $P5010, $P5011
  if79_end270:
    set $P5012, $P5010
  unless77_end266:
    set $P5015, $P5012
    unless $P5012 goto if76_end264 
.annotate 'line', 319
    box $P5014, 1
    store_lex "$type_mismatch", $P5014
    die 0, .CONTROL_LOOP_LAST
    box $P5016, 0
    set $P5015, $P5016
  if76_end264:
    .return ($P5015) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_85_1360256342.611") :anon :lex :outer("cuid_6_1360256342.611")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 338
    .lex "$result", $P101 
    null $P5001
    set $P101, $P5001
    find_lex $P5004, "@possibles"
    set $P5003, $P5004[0]
    unless_null $P5003, fallback275
    null $P5005
    set $P5003, $P5005
  fallback275:
    set $P5002, $P5003["sub"]
    unless_null $P5002, fallback276
    null $P5006
    set $P5002, $P5006
  fallback276:
    set $P101, $P5002
    nqp_disable_sc_write_barrier 
    find_lex $P5008, "self"
    nqp_decontainerize $P5007, $P5008
    nqp_get_sc_object $P5009, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 5
    find_lex $P5012, "self"
    nqp_decontainerize $P5011, $P5012
    nqp_get_sc_object $P5013, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 5
    repr_get_attr_obj $P5014, $P5011, $P5013, "$!dispatch_cache"
    find_lex $P5015, "$capture"
    multi_cache_add $P5010, $P5014, $P5015, $P101
    repr_bind_attr_obj $P5007, $P5009, "$!dispatch_cache", $P5010
    nqp_enable_sc_write_barrier 
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "clone" :subid("cuid_7_1360256342.611") :anon :lex :outer("cuid_76_1360256342.611")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 355
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
    nqp_get_sc_object $P5006, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 5
    repr_get_attr_obj $P5007, $P5005, $P5006, "$!do"
    repr_clone $P5004, $P5007
    set $P101, $P5004
    nqp_decontainerize $P5009, _lex_param_0
    repr_clone $P5008, $P5009
    set $P102, $P5008
    nqp_get_sc_object $P5010, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 5
    setattribute $P102, $P5010, "$!do", $P101
    set_sub_code_object $P101, $P102
    nqp_decontainerize $P5012, _lex_param_0
    nqp_get_sc_object $P5013, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 5
    repr_get_attr_obj $P5014, $P5012, $P5013, "$!do"
    getprop $P5011, $P5014, "CLONE_CALLBACK"
    set $P103, $P5011
    defined $I5001, $P103
    unless $I5001 goto if83_end280 
.annotate 'line', 366
.annotate 'line', 367
    nqp_decontainerize $P5015, _lex_param_0
    nqp_get_sc_object $P5016, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 5
    repr_get_attr_obj $P5017, $P5015, $P5016, "$!do"
    $P5018 = $P103($P5017, $P101, $P102)
  if83_end280:
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "!set_name" :subid("cuid_8_1360256342.611") :anon :lex :outer("cuid_76_1360256342.611")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 373
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 5
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!do"
    set $S5001, _lex_param_1
    assign $P5003, $S5001
    .return ($S5001) 
.end
.HLL "nqp"
.namespace []
.sub "name" :subid("cuid_9_1360256342.611") :anon :lex :outer("cuid_76_1360256342.611")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 377
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 5
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!do"
    set $S5001, $P5003
    .return ($S5001) 
.end
.HLL "nqp"
.namespace []
.sub "signature" :subid("cuid_10_1360256342.611") :anon :lex :outer("cuid_76_1360256342.611")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 381
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 5
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!signature"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_86_1360256342.611") :anon :lex :outer("cuid_53_1360256342.611")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 388
    .const 'Sub' $P5003 = 'cuid_11_1360256342.611' 
    capture_lex $P5003 
    .const 'Sub' $P5003 = 'cuid_12_1360256342.611' 
    capture_lex $P5003 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_11_1360256342.611' 
    capture_lex $P5001
    .const 'Sub' $P5002 = 'cuid_12_1360256342.611' 
    capture_lex $P5002
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "types" :subid("cuid_11_1360256342.611") :anon :lex :outer("cuid_86_1360256342.611")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 391
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 6
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!types"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "definednesses" :subid("cuid_12_1360256342.611") :anon :lex :outer("cuid_86_1360256342.611")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 392
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 6
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!definednesses"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_87_1360256342.611") :anon :lex :outer("cuid_53_1360256342.611")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 395
    .const 'Sub' $P5017 = 'cuid_13_1360256342.611' 
    capture_lex $P5017 
    .const 'Sub' $P5017 = 'cuid_14_1360256342.611' 
    capture_lex $P5017 
    .const 'Sub' $P5017 = 'cuid_15_1360256342.611' 
    capture_lex $P5017 
    .const 'Sub' $P5017 = 'cuid_16_1360256342.611' 
    capture_lex $P5017 
    .const 'Sub' $P5017 = 'cuid_17_1360256342.611' 
    capture_lex $P5017 
    .const 'Sub' $P5017 = 'cuid_18_1360256342.611' 
    capture_lex $P5017 
    .const 'Sub' $P5017 = 'cuid_19_1360256342.611' 
    capture_lex $P5017 
    .const 'Sub' $P5017 = 'cuid_20_1360256342.611' 
    capture_lex $P5017 
    .const 'Sub' $P5017 = 'cuid_21_1360256342.611' 
    capture_lex $P5017 
    .const 'Sub' $P5017 = 'cuid_22_1360256342.611' 
    capture_lex $P5017 
    .const 'Sub' $P5017 = 'cuid_23_1360256342.611' 
    capture_lex $P5017 
    .const 'Sub' $P5017 = 'cuid_24_1360256342.611' 
    capture_lex $P5017 
    .const 'Sub' $P5017 = 'cuid_25_1360256342.611' 
    capture_lex $P5017 
    .const 'Sub' $P5017 = 'cuid_26_1360256342.611' 
    capture_lex $P5017 
    .const 'Sub' $P5017 = 'cuid_27_1360256342.611' 
    capture_lex $P5017 
    .lex "$nfa_type", $P101 
    .lex "$?PACKAGE", $P102 
    .lex "$?CLASS", $P103 
    null $P5001
    set $P101, $P5001
    .const 'Sub' $P5002 = 'cuid_13_1360256342.611' 
    capture_lex $P5002
    .const 'Sub' $P5003 = 'cuid_14_1360256342.611' 
    capture_lex $P5003
    .const 'Sub' $P5004 = 'cuid_15_1360256342.611' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_16_1360256342.611' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_17_1360256342.611' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_18_1360256342.611' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_19_1360256342.611' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_20_1360256342.611' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_21_1360256342.611' 
    capture_lex $P5010
    .const 'Sub' $P5011 = 'cuid_22_1360256342.611' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_23_1360256342.611' 
    capture_lex $P5012
    .const 'Sub' $P5013 = 'cuid_24_1360256342.611' 
    capture_lex $P5013
    .const 'Sub' $P5014 = 'cuid_25_1360256342.611' 
    capture_lex $P5014
    .const 'Sub' $P5015 = 'cuid_26_1360256342.611' 
    capture_lex $P5015
    .const 'Sub' $P5016 = 'cuid_27_1360256342.611' 
    capture_lex $P5016
    .return ($P5016) 
.end
.HLL "nqp"
.namespace []
.sub "SET_CAPS" :subid("cuid_13_1360256342.611") :anon :lex :outer("cuid_87_1360256342.611")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 402
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$caps", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 9
    repr_bind_attr_obj $P5001, $P5002, "$!caps", _lex_param_1
    .return (_lex_param_1) 
.end
.HLL "nqp"
.namespace []
.sub "SET_NFA" :subid("cuid_14_1360256342.611") :anon :lex :outer("cuid_87_1360256342.611")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 405
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$nfa", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 9
    repr_bind_attr_obj $P5001, $P5002, "$!nfa", _lex_param_1
    .return (_lex_param_1) 
.end
.HLL "nqp"
.namespace []
.sub "SET_ALT_NFA" :subid("cuid_15_1360256342.611") :anon :lex :outer("cuid_87_1360256342.611")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 408
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    .lex "$nfa", _lex_param_2 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 9
    repr_get_attr_obj $P5003, $P5001, $P5002, "%!alt_nfas"
    unless_null $P5003, vivi_84281
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 9
    new $P5006, 'Hash'
    repr_bind_attr_obj $P5004, $P5005, "%!alt_nfas", $P5006
    set $P5003, $P5006
  vivi_84281:
    nqp_decontainerize $P5007, _lex_param_0
    nqp_get_sc_object $P5008, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 9
    repr_get_attr_obj $P5009, $P5007, $P5008, "%!alt_nfas"
    set $S5001, _lex_param_1
    set $P5009[$S5001], _lex_param_2
    .return (_lex_param_2) 
.end
.HLL "nqp"
.namespace []
.sub "SET_GENERIC_NFA" :subid("cuid_16_1360256342.611") :anon :lex :outer("cuid_87_1360256342.611")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 412
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$nfa", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 9
.annotate 'line', 413
    $P5003 = _lex_param_1."save"()
    repr_bind_attr_obj $P5001, $P5002, "$!generic_nfa", $P5003
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "ADD_NESTED_CODE" :subid("cuid_17_1360256342.611") :anon :lex :outer("cuid_87_1360256342.611")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 415
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$code", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 9
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!nested_codes"
    unless_null $P5003, vivi_85282
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 9
    new $P5006, 'ResizablePMCArray'
    repr_bind_attr_obj $P5004, $P5005, "@!nested_codes", $P5006
    set $P5003, $P5006
  vivi_85282:
    nqp_decontainerize $P5007, _lex_param_0
    nqp_get_sc_object $P5008, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 9
    repr_get_attr_obj $P5009, $P5007, $P5008, "@!nested_codes"
    push $P5009, _lex_param_1
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "CAPS" :subid("cuid_18_1360256342.611") :anon :lex :outer("cuid_87_1360256342.611")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 419
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 9
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!caps"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "NFA" :subid("cuid_19_1360256342.611") :anon :lex :outer("cuid_87_1360256342.611")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 422
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 9
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!nfa"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "ALT_NFAS" :subid("cuid_20_1360256342.611") :anon :lex :outer("cuid_87_1360256342.611")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 425
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 9
    repr_get_attr_obj $P5003, $P5001, $P5002, "%!alt_nfas"
    isnull $I5001, $P5003
    unless $I5001 goto if86_else283 
    new $P5004, 'Hash'
    set $P5008, $P5004
    goto if86_end284
  if86_else283:
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 9
    repr_get_attr_obj $P5007, $P5005, $P5006, "%!alt_nfas"
    set $P5008, $P5007
  if86_end284:
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "ALT_NFA" :subid("cuid_21_1360256342.611") :anon :lex :outer("cuid_87_1360256342.611")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 428
    .param pmc _lex_param_0 
    .param string _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 9
    repr_get_attr_obj $P5003, $P5001, $P5002, "%!alt_nfas"
    isnull $I5001, $P5003
    unless $I5001 goto if87_else285 
    null $P5004
    set $P5010, $P5004
    goto if87_end286
  if87_else285:
    nqp_decontainerize $P5006, _lex_param_0
    nqp_get_sc_object $P5007, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 9
    repr_get_attr_obj $P5008, $P5006, $P5007, "%!alt_nfas"
    set $P5005, $P5008[_lex_param_1]
    unless_null $P5005, fallback287
    null $P5009
    set $P5005, $P5009
  fallback287:
    set $P5010, $P5005
  if87_end286:
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "NESTED_CODES" :subid("cuid_22_1360256342.611") :anon :lex :outer("cuid_87_1360256342.611")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 431
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 9
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!nested_codes"
    isnull $I5001, $P5003
    unless $I5001 goto if88_else288 
    new $P5004, 'ResizablePMCArray'
    set $P5008, $P5004
    goto if88_end289
  if88_else288:
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 9
    repr_get_attr_obj $P5007, $P5005, $P5006, "@!nested_codes"
    set $P5008, $P5007
  if88_end289:
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "clone" :subid("cuid_23_1360256342.611") :anon :lex :outer("cuid_87_1360256342.611")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 434
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
    nqp_get_sc_object $P5006, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 9
    repr_get_attr_obj $P5007, $P5005, $P5006, "$!do"
    repr_clone $P5004, $P5007
    set $P101, $P5004
    nqp_decontainerize $P5009, _lex_param_0
    repr_clone $P5008, $P5009
    set $P102, $P5008
    nqp_get_sc_object $P5010, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 9
    setattribute $P102, $P5010, "$!do", $P101
    set_sub_code_object $P101, $P102
    nqp_decontainerize $P5012, _lex_param_0
    nqp_get_sc_object $P5013, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 9
    repr_get_attr_obj $P5014, $P5012, $P5013, "$!do"
    getprop $P5011, $P5014, "CLONE_CALLBACK"
    set $P103, $P5011
    defined $I5001, $P103
    unless $I5001 goto if89_end291 
.annotate 'line', 445
.annotate 'line', 446
    nqp_decontainerize $P5015, _lex_param_0
    nqp_get_sc_object $P5016, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 9
    repr_get_attr_obj $P5017, $P5015, $P5016, "$!do"
    $P5018 = $P103($P5017, $P101, $P102)
  if89_end291:
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "SET_NFA_TYPE" :subid("cuid_24_1360256342.611") :anon :lex :outer("cuid_87_1360256342.611")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 452
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$type", _lex_param_1 
    store_lex "$nfa_type", _lex_param_1
    .return (_lex_param_1) 
.end
.HLL "nqp"
.namespace []
.sub "instantiate_generic" :subid("cuid_25_1360256342.611") :anon :lex :outer("cuid_87_1360256342.611")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 455
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5008 = 'cuid_88_1360256342.611' 
    capture_lex $P5008 
    .lex "self", _lex_param_0 
    .lex "$env", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 9
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!generic_nfa"
    isnull $I5001, $P5003
    unless $I5001 goto if90_else292 
.annotate 'line', 456
    nqp_decontainerize $P5004, _lex_param_0
    set $P5007, $P5004
    goto if90_end293
  if90_else292:
    .const 'Sub' $P5005 = 'cuid_88_1360256342.611' 
    capture_lex $P5005
    $P5006 = $P5005()
    set $P5007, $P5006
  if90_end293:
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_88_1360256342.611") :anon :lex :outer("cuid_25_1360256342.611")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 459
    .lex "$ins", $P101 
    null $P5001
    set $P101, $P5001
.annotate 'line', 460
    find_lex $P5003, "self"
    nqp_decontainerize $P5002, $P5003
    $P5004 = $P5002."clone"()
    set $P101, $P5004
    nqp_get_sc_object $P5005, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 9
.annotate 'line', 462
    find_lex $P5006, "$nfa_type"
    find_lex $P5008, "self"
    nqp_decontainerize $P5007, $P5008
    nqp_get_sc_object $P5009, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 9
    repr_get_attr_obj $P5010, $P5007, $P5009, "$!generic_nfa"
    $P5011 = $P5006."from_saved"($P5010)
    find_lex $P5012, "$env"
    $P5013 = $P5011."instantiate_generic"($P5012)
    $P5014 = $P5013."save"()
    setattribute $P101, $P5005, "$!nfa", $P5014
    nqp_get_sc_object $P5015, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 9
    null $P5016
    setattribute $P101, $P5015, "$!generic_nfa", $P5016
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "name" :subid("cuid_26_1360256342.611") :anon :lex :outer("cuid_87_1360256342.611")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 467
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 9
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!do"
    set $S5001, $P5003
    .return ($S5001) 
.end
.HLL "nqp"
.namespace []
.sub "!set_name" :subid("cuid_27_1360256342.611") :anon :lex :outer("cuid_87_1360256342.611")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 470
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 9
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!do"
    set $S5001, _lex_param_1
    assign $P5003, $S5001
    .return ($S5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_89_1360256342.611") :anon :lex :outer("cuid_53_1360256342.611")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 480
    .const 'Sub' $P5021 = 'cuid_28_1360256342.611' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_29_1360256342.611' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_30_1360256342.611' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_31_1360256342.611' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_32_1360256342.611' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_33_1360256342.611' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_34_1360256342.611' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_35_1360256342.611' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_36_1360256342.611' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_37_1360256342.611' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_38_1360256342.611' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_39_1360256342.611' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_40_1360256342.611' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_41_1360256342.611' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_42_1360256342.611' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_43_1360256342.611' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_44_1360256342.611' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_45_1360256342.611' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_46_1360256342.611' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_47_1360256342.611' 
    capture_lex $P5021 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_28_1360256342.611' 
    capture_lex $P5001
    .const 'Sub' $P5002 = 'cuid_29_1360256342.611' 
    capture_lex $P5002
    .const 'Sub' $P5003 = 'cuid_30_1360256342.611' 
    capture_lex $P5003
    .const 'Sub' $P5004 = 'cuid_31_1360256342.611' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_32_1360256342.611' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_33_1360256342.611' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_34_1360256342.611' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_35_1360256342.611' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_36_1360256342.611' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_37_1360256342.611' 
    capture_lex $P5010
    .const 'Sub' $P5011 = 'cuid_38_1360256342.611' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_39_1360256342.611' 
    capture_lex $P5012
    .const 'Sub' $P5013 = 'cuid_40_1360256342.611' 
    capture_lex $P5013
    .const 'Sub' $P5014 = 'cuid_41_1360256342.611' 
    capture_lex $P5014
    .const 'Sub' $P5015 = 'cuid_42_1360256342.611' 
    capture_lex $P5015
    .const 'Sub' $P5016 = 'cuid_43_1360256342.611' 
    capture_lex $P5016
    .const 'Sub' $P5017 = 'cuid_44_1360256342.611' 
    capture_lex $P5017
    .const 'Sub' $P5018 = 'cuid_45_1360256342.611' 
    capture_lex $P5018
    .const 'Sub' $P5019 = 'cuid_46_1360256342.611' 
    capture_lex $P5019
    .const 'Sub' $P5020 = 'cuid_47_1360256342.611' 
    capture_lex $P5020
    .return ($P5020) 
.end
.HLL "nqp"
.namespace []
.sub "CREATE" :subid("cuid_28_1360256342.611") :anon :lex :outer("cuid_89_1360256342.611")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 481
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5002, _lex_param_0
    repr_instance_of $P5001, $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "bless" :subid("cuid_29_1360256342.611") :anon :lex :outer("cuid_89_1360256342.611")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 485
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy :named 
    .lex "self", $P101 
    .lex "$instance", $P102 
    .lex "$self", _lex_param_0 
    .lex "%attributes", _lex_param_1 
    set $P101, _lex_param_0
    nqp_get_sc_object $P5001, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 25
    set $P102, $P5001
.annotate 'line', 486
    nqp_decontainerize $P5002, $P101
    $P5003 = $P5002."CREATE"()
    set $P102, $P5003
.annotate 'line', 487
    $P102."BUILDALL"(_lex_param_1 :flat :named)
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "BUILDALL" :subid("cuid_30_1360256342.611") :anon :lex :outer("cuid_89_1360256342.611")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 491
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy :named 
    .const 'Sub' $P5015 = 'cuid_91_1360256342.611' 
    capture_lex $P5015 
    .lex "self", $P101 
    .lex "$build_plan", $P102 
    .lex "$count", $P103 
    .lex "$i", $P104 
    .lex "$self", _lex_param_0 
    .lex "%attrinit", _lex_param_1 
    set $P101, _lex_param_0
    nqp_get_sc_object $P5001, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 25
    set $P102, $P5001
    nqp_get_sc_object $P5002, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 25
    set $P103, $P5002
    nqp_get_sc_object $P5003, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 25
    set $P104, $P5003
.annotate 'line', 493
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
  while91_test294:
    set $N5001, $P104
    set $N5002, $P103
    islt $I5002, $N5001, $N5002
    box $P5013, $I5002
    set $P5012, $P5013
    unless $I5002 goto while91_done298 
  while91_redo296:
    .const 'Sub' $P5010 = 'cuid_91_1360256342.611' 
    capture_lex $P5010
    $P5011 = $P5010()
    set $P5012, $P5011
    goto while91_test294 
  while91_done298:
    nqp_decontainerize $P5014, $P101
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_91_1360256342.611") :anon :lex :outer("cuid_30_1360256342.611")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 496
    .const 'Sub' $P5044 = 'cuid_90_1360256342.611' 
    capture_lex $P5044 
    .const 'Sub' $P5044 = 'cuid_92_1360256342.611' 
    capture_lex $P5044 
    .const 'Sub' $P5044 = 'cuid_93_1360256342.611' 
    capture_lex $P5044 
    .lex "$task", $P101 
    .lex "$code", $I101 
    nqp_get_sc_object $P5001, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 25
    set $P101, $P5001
    set $I101, 0
    find_lex $P5003, "$build_plan"
    find_lex $P5004, "$i"
    set $I5001, $P5004
    set $P5002, $P5003[$I5001]
    set $P101, $P5002
    set $P5005, $P101[0]
    set $I5002, $P5005
    set $I101, $I5002
    find_lex $P5006, "$i"
    set $N5002, $P5006
    set $N5003, 1
    add $N5001, $N5002, $N5003
    box $P5007, $N5001
    store_lex "$i", $P5007
    iseq $I5003, $I101, 0
    unless $I5003 goto if92_else299 
.annotate 'line', 500
.annotate 'line', 502
    find_lex $P5010, "self"
    nqp_decontainerize $P5009, $P5010
    find_lex $P5011, "%attrinit"
    set $P5008, $P101[1]
    $P5012 = $P5008($P5009, $P5011 :flat :named)
    set $P5043, $P5012
    goto if92_end300
  if92_else299:
    iseq $I5004, $I101, 1
    unless $I5004 goto if93_else301 
    .const 'Sub' $P5013 = 'cuid_90_1360256342.611' 
    capture_lex $P5013
    $P5014 = $P5013()
    set $P5042, $P5014
    goto if93_end302
  if93_else301:
    iseq $I5005, $I101, 2
    unless $I5005 goto if95_else306 
    .const 'Sub' $P5015 = 'cuid_92_1360256342.611' 
    capture_lex $P5015
    $P5016 = $P5015()
    set $P5041, $P5016
    goto if95_end307
  if95_else306:
    iseq $I5006, $I101, 3
    unless $I5006 goto if97_else311 
    .const 'Sub' $P5017 = 'cuid_93_1360256342.611' 
    capture_lex $P5017
    $P5018 = $P5017()
    set $P5040, $P5018
    goto if97_end312
  if97_else311:
    iseq $I5007, $I101, 4
    unless $I5007 goto if99_else316 
.annotate 'line', 533
    find_lex $P5020, "self"
    nqp_decontainerize $P5019, $P5020
    set $P5021, $P101[1]
    set $P5022, $P101[2]
    set $S5001, $P5022
    repr_is_attr_initialized $I5008, $P5019, $P5021, $S5001
    box $P5037, $I5008
    set $P5036, $P5037
    if $I5008 goto unless100_end319 
.annotate 'line', 534
    find_lex $P5024, "self"
    nqp_decontainerize $P5023, $P5024
    set $P5025, $P101[1]
    set $P5026, $P101[2]
    set $S5002, $P5026
.annotate 'line', 536
    find_lex $P5029, "self"
    nqp_decontainerize $P5028, $P5029
    find_lex $P5032, "self"
    nqp_decontainerize $P5031, $P5032
    set $P5033, $P101[1]
    set $P5034, $P101[2]
    set $S5003, $P5034
    getattribute $P5030, $P5031, $P5033, $S5003
    set $P5027, $P101[3]
    $P5035 = $P5027($P5028, $P5030)
    setattribute $P5023, $P5025, $S5002, $P5035
    set $P5036, $P5035
  unless100_end319:
    set $P5039, $P5036
    goto if99_end317
  if99_else316:
.annotate 'line', 540
    box $P5038, "Invalid BUILDALLPLAN"
    die $P5038
    set $P5039, $P5038
  if99_end317:
    set $P5040, $P5039
  if97_end312:
    set $P5041, $P5040
  if95_end307:
    set $P5042, $P5041
  if93_end302:
    set $P5043, $P5042
  if92_end300:
    .return ($P5043) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_90_1360256342.611") :anon :lex :outer("cuid_91_1360256342.611")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 504
    .lex "$key_name", $P101 
    nqp_get_sc_object $P5001, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 25
    set $P101, $P5001
    find_lex $P5003, "$task"
    set $P5002, $P5003[2]
    set $P101, $P5002
    find_lex $P5004, "%attrinit"
    set $S5001, $P101
    exists $I5001, $P5004[$S5001]
    box $P5014, $I5001
    set $P5013, $P5014
    unless $I5001 goto if94_end304 
.annotate 'line', 507
    find_lex $P5006, "self"
    nqp_decontainerize $P5005, $P5006
    find_lex $P5008, "$task"
    set $P5007, $P5008[1]
    find_lex $P5009, "$task"
    set $S5002, $P5009[3]
    find_lex $P5011, "%attrinit"
    set $S5003, $P101
    set $P5010, $P5011[$S5003]
    unless_null $P5010, fallback305
    nqp_get_sc_object $P5012, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 25
    set $P5010, $P5012
  fallback305:
    setattribute $P5005, $P5007, $S5002, $P5010
    set $P5013, $P5010
  if94_end304:
    .return ($P5013) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_92_1360256342.611") :anon :lex :outer("cuid_91_1360256342.611")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 511
    .lex "$key_name", $P101 
    nqp_get_sc_object $P5001, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 25
    set $P101, $P5001
    find_lex $P5003, "$task"
    set $P5002, $P5003[2]
    set $P101, $P5002
    find_lex $P5004, "%attrinit"
    set $S5001, $P101
    exists $I5001, $P5004[$S5001]
    unless $I5001 goto if96_else308 
.annotate 'line', 515
    find_lex $P5006, "self"
    nqp_decontainerize $P5005, $P5006
    find_lex $P5008, "$task"
    set $P5007, $P5008[1]
    find_lex $P5009, "$task"
    set $S5002, $P5009[3]
    find_lex $P5011, "%attrinit"
    set $S5003, $P101
    set $P5010, $P5011[$S5003]
    unless_null $P5010, fallback310
    nqp_get_sc_object $P5012, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 25
    set $P5010, $P5012
  fallback310:
    setattribute $P5005, $P5007, $S5002, $P5010
    set $P5019, $P5010
    goto if96_end309
  if96_else308:
.annotate 'line', 518
    find_lex $P5014, "self"
    nqp_decontainerize $P5013, $P5014
    find_lex $P5016, "$task"
    set $P5015, $P5016[1]
    find_lex $P5017, "$task"
    set $S5004, $P5017[3]
    new $P5018, 'ResizablePMCArray'
    setattribute $P5013, $P5015, $S5004, $P5018
    set $P5019, $P5018
  if96_end309:
    .return ($P5019) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_93_1360256342.611") :anon :lex :outer("cuid_91_1360256342.611")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 522
    .lex "$key_name", $P101 
    nqp_get_sc_object $P5001, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 25
    set $P101, $P5001
    find_lex $P5003, "$task"
    set $P5002, $P5003[2]
    set $P101, $P5002
    find_lex $P5004, "%attrinit"
    set $S5001, $P101
    exists $I5001, $P5004[$S5001]
    unless $I5001 goto if98_else313 
.annotate 'line', 526
    find_lex $P5006, "self"
    nqp_decontainerize $P5005, $P5006
    find_lex $P5008, "$task"
    set $P5007, $P5008[1]
    find_lex $P5009, "$task"
    set $S5002, $P5009[3]
    find_lex $P5011, "%attrinit"
    set $S5003, $P101
    set $P5010, $P5011[$S5003]
    unless_null $P5010, fallback315
    nqp_get_sc_object $P5012, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 25
    set $P5010, $P5012
  fallback315:
    setattribute $P5005, $P5007, $S5002, $P5010
    set $P5019, $P5010
    goto if98_end314
  if98_else313:
.annotate 'line', 529
    find_lex $P5014, "self"
    nqp_decontainerize $P5013, $P5014
    find_lex $P5016, "$task"
    set $P5015, $P5016[1]
    find_lex $P5017, "$task"
    set $S5004, $P5017[3]
    new $P5018, 'Hash'
    setattribute $P5013, $P5015, $S5004, $P5018
    set $P5019, $P5018
  if98_end314:
    .return ($P5019) 
.end
.HLL "nqp"
.namespace []
.sub "new" :subid("cuid_31_1360256342.611") :anon :lex :outer("cuid_89_1360256342.611")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 547
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy :named 
    .lex "self", _lex_param_0 
    .lex "%attributes", _lex_param_1 
.annotate 'line', 548
    nqp_decontainerize $P5001, _lex_param_0
    $P5002 = $P5001."bless"(_lex_param_1 :flat :named)
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "Str" :subid("cuid_32_1360256342.611") :anon :lex :outer("cuid_89_1360256342.611")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 551
    .param pmc _lex_param_0 
    .lex "CURRENT_DISPATCH_CAPTURE", $P101 
    .lex "&*CURRENT_DISPATCHER", $P102 
    .lex "self", _lex_param_0 
    getinterp $P5001
    set $P5001, $P5001['context']
    set $P101, $P5001
    getinterp $P5003
    set $P5003, $P5003['sub']
    get_sub_code_object $P5002, $P5003
    set $P102, $P5002
    getinterp $P5007
    set $P5007, $P5007['sub']
    get_sub_code_object $P5006, $P5007
    nqp_get_sc_object $P5008, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 5
    repr_get_attr_obj $P5009, $P5006, $P5008, "$!dispatch_cache"
    getinterp $P5010
    set $P5010, $P5010['context']
    multi_cache_find $P5005, $P5009, $P5010
    unless_null $P5005, vivi_101320
    getinterp $P5012
    set $P5012, $P5012['sub']
    get_sub_code_object $P5011, $P5012
    getinterp $P5013
    set $P5013, $P5013['context']
    $P5014 = $P5011."dispatch"($P5013)
    set $P5005, $P5014
  vivi_101320:
    getinterp $P5015
    set $P5015, $P5015['context']
    invoke_with_capture $P5004, $P5005, $P5015
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "Str" :subid("cuid_33_1360256342.611") :anon :lex :outer("cuid_89_1360256342.611")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 552
    .param pmc _lex_param_0 
    .lex "self", $P101 
    .lex "$self", _lex_param_0 
    set $P101, _lex_param_0
    .return ("") 
.end
.HLL "nqp"
.namespace []
.sub "Str" :subid("cuid_34_1360256342.611") :anon :lex :outer("cuid_89_1360256342.611")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 555
    .param pmc _lex_param_0 
    .lex "self", $P101 
    .lex "$self", _lex_param_0 
    set $P101, _lex_param_0
.annotate 'line', 556
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
.sub "Numeric" :subid("cuid_35_1360256342.611") :anon :lex :outer("cuid_89_1360256342.611")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 559
    .param pmc _lex_param_0 
    .lex "CURRENT_DISPATCH_CAPTURE", $P101 
    .lex "&*CURRENT_DISPATCHER", $P102 
    .lex "self", _lex_param_0 
    getinterp $P5001
    set $P5001, $P5001['context']
    set $P101, $P5001
    getinterp $P5003
    set $P5003, $P5003['sub']
    get_sub_code_object $P5002, $P5003
    set $P102, $P5002
    getinterp $P5007
    set $P5007, $P5007['sub']
    get_sub_code_object $P5006, $P5007
    nqp_get_sc_object $P5008, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 5
    repr_get_attr_obj $P5009, $P5006, $P5008, "$!dispatch_cache"
    getinterp $P5010
    set $P5010, $P5010['context']
    multi_cache_find $P5005, $P5009, $P5010
    unless_null $P5005, vivi_102321
    getinterp $P5012
    set $P5012, $P5012['sub']
    get_sub_code_object $P5011, $P5012
    getinterp $P5013
    set $P5013, $P5013['context']
    $P5014 = $P5011."dispatch"($P5013)
    set $P5005, $P5014
  vivi_102321:
    getinterp $P5015
    set $P5015, $P5015['context']
    invoke_with_capture $P5004, $P5005, $P5015
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "Numeric" :subid("cuid_36_1360256342.611") :anon :lex :outer("cuid_89_1360256342.611")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 560
    .param pmc _lex_param_0 
    .lex "self", $P101 
    .lex "$self", _lex_param_0 
    set $P101, _lex_param_0
    .return (0.0) 
.end
.HLL "nqp"
.namespace []
.sub "Int" :subid("cuid_37_1360256342.611") :anon :lex :outer("cuid_89_1360256342.611")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 564
    .param pmc _lex_param_0 
    .lex "CURRENT_DISPATCH_CAPTURE", $P101 
    .lex "&*CURRENT_DISPATCHER", $P102 
    .lex "self", _lex_param_0 
    getinterp $P5001
    set $P5001, $P5001['context']
    set $P101, $P5001
    getinterp $P5003
    set $P5003, $P5003['sub']
    get_sub_code_object $P5002, $P5003
    set $P102, $P5002
    getinterp $P5007
    set $P5007, $P5007['sub']
    get_sub_code_object $P5006, $P5007
    nqp_get_sc_object $P5008, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 5
    repr_get_attr_obj $P5009, $P5006, $P5008, "$!dispatch_cache"
    getinterp $P5010
    set $P5010, $P5010['context']
    multi_cache_find $P5005, $P5009, $P5010
    unless_null $P5005, vivi_103322
    getinterp $P5012
    set $P5012, $P5012['sub']
    get_sub_code_object $P5011, $P5012
    getinterp $P5013
    set $P5013, $P5013['context']
    $P5014 = $P5011."dispatch"($P5013)
    set $P5005, $P5014
  vivi_103322:
    getinterp $P5015
    set $P5015, $P5015['context']
    invoke_with_capture $P5004, $P5005, $P5015
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "Int" :subid("cuid_38_1360256342.611") :anon :lex :outer("cuid_89_1360256342.611")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 565
    .param pmc _lex_param_0 
    .lex "self", $P101 
    .lex "$self", _lex_param_0 
    set $P101, _lex_param_0
    .return (0) 
.end
.HLL "nqp"
.namespace []
.sub "at_pos" :subid("cuid_39_1360256342.611") :anon :lex :outer("cuid_89_1360256342.611")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 569
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "CURRENT_DISPATCH_CAPTURE", $P101 
    .lex "&*CURRENT_DISPATCHER", $P102 
    .lex "self", _lex_param_0 
    .lex "$pos", _lex_param_1 
    getinterp $P5001
    set $P5001, $P5001['context']
    set $P101, $P5001
    getinterp $P5003
    set $P5003, $P5003['sub']
    get_sub_code_object $P5002, $P5003
    set $P102, $P5002
    getinterp $P5007
    set $P5007, $P5007['sub']
    get_sub_code_object $P5006, $P5007
    nqp_get_sc_object $P5008, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 5
    repr_get_attr_obj $P5009, $P5006, $P5008, "$!dispatch_cache"
    getinterp $P5010
    set $P5010, $P5010['context']
    multi_cache_find $P5005, $P5009, $P5010
    unless_null $P5005, vivi_104323
    getinterp $P5012
    set $P5012, $P5012['sub']
    get_sub_code_object $P5011, $P5012
    getinterp $P5013
    set $P5013, $P5013['context']
    $P5014 = $P5011."dispatch"($P5013)
    set $P5005, $P5014
  vivi_104323:
    getinterp $P5015
    set $P5015, $P5015['context']
    invoke_with_capture $P5004, $P5005, $P5015
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "at_pos" :subid("cuid_40_1360256342.611") :anon :lex :outer("cuid_89_1360256342.611")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 570
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", $P101 
    .lex "$self", _lex_param_0 
    .lex "$pos", _lex_param_1 
    set $P101, _lex_param_0
    nqp_get_sc_object $P5001, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 25
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "at_key" :subid("cuid_41_1360256342.611") :anon :lex :outer("cuid_89_1360256342.611")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 574
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "CURRENT_DISPATCH_CAPTURE", $P101 
    .lex "&*CURRENT_DISPATCHER", $P102 
    .lex "self", _lex_param_0 
    .lex "$key", _lex_param_1 
    getinterp $P5001
    set $P5001, $P5001['context']
    set $P101, $P5001
    getinterp $P5003
    set $P5003, $P5003['sub']
    get_sub_code_object $P5002, $P5003
    set $P102, $P5002
    getinterp $P5007
    set $P5007, $P5007['sub']
    get_sub_code_object $P5006, $P5007
    nqp_get_sc_object $P5008, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 5
    repr_get_attr_obj $P5009, $P5006, $P5008, "$!dispatch_cache"
    getinterp $P5010
    set $P5010, $P5010['context']
    multi_cache_find $P5005, $P5009, $P5010
    unless_null $P5005, vivi_105324
    getinterp $P5012
    set $P5012, $P5012['sub']
    get_sub_code_object $P5011, $P5012
    getinterp $P5013
    set $P5013, $P5013['context']
    $P5014 = $P5011."dispatch"($P5013)
    set $P5005, $P5014
  vivi_105324:
    getinterp $P5015
    set $P5015, $P5015['context']
    invoke_with_capture $P5004, $P5005, $P5015
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "at_key" :subid("cuid_42_1360256342.611") :anon :lex :outer("cuid_89_1360256342.611")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 575
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", $P101 
    .lex "$self", _lex_param_0 
    .lex "$key", _lex_param_1 
    set $P101, _lex_param_0
    nqp_get_sc_object $P5001, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 25
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "defined" :subid("cuid_43_1360256342.611") :anon :lex :outer("cuid_89_1360256342.611")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 579
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    repr_defined $I5001, $P5001
    .return ($I5001) 
.end
.HLL "nqp"
.namespace []
.sub "ACCEPTS" :subid("cuid_44_1360256342.611") :anon :lex :outer("cuid_89_1360256342.611")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 583
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "CURRENT_DISPATCH_CAPTURE", $P101 
    .lex "&*CURRENT_DISPATCHER", $P102 
    .lex "self", _lex_param_0 
    .lex "$topic", _lex_param_1 
    getinterp $P5001
    set $P5001, $P5001['context']
    set $P101, $P5001
    getinterp $P5003
    set $P5003, $P5003['sub']
    get_sub_code_object $P5002, $P5003
    set $P102, $P5002
    getinterp $P5007
    set $P5007, $P5007['sub']
    get_sub_code_object $P5006, $P5007
    nqp_get_sc_object $P5008, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 5
    repr_get_attr_obj $P5009, $P5006, $P5008, "$!dispatch_cache"
    getinterp $P5010
    set $P5010, $P5010['context']
    multi_cache_find $P5005, $P5009, $P5010
    unless_null $P5005, vivi_106325
    getinterp $P5012
    set $P5012, $P5012['sub']
    get_sub_code_object $P5011, $P5012
    getinterp $P5013
    set $P5013, $P5013['context']
    $P5014 = $P5011."dispatch"($P5013)
    set $P5005, $P5014
  vivi_106325:
    getinterp $P5015
    set $P5015, $P5015['context']
    invoke_with_capture $P5004, $P5005, $P5015
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "ACCEPTS" :subid("cuid_45_1360256342.611") :anon :lex :outer("cuid_89_1360256342.611")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 584
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
.sub "isa" :subid("cuid_46_1360256342.611") :anon :lex :outer("cuid_89_1360256342.611")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 588
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$type", _lex_param_1 
.annotate 'line', 589
    nqp_decontainerize $P5002, _lex_param_0
    get_how $P5001, $P5002
    nqp_decontainerize $P5003, _lex_param_0
    $P5004 = $P5001."isa"($P5003, _lex_param_1)
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "__dump" :subid("cuid_47_1360256342.611") :anon :lex :outer("cuid_89_1360256342.611")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 592
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .const 'Sub' $P5017 = 'cuid_95_1360256342.611' 
    capture_lex $P5017 
    .lex "$subindent", $P101 
    .lex "self", _lex_param_0 
    .lex "$dumper", _lex_param_1 
    .lex "$label", _lex_param_2 
    nqp_get_sc_object $P5001, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 25
    set $P101, $P5001
    root_new $P102, ['parrot';'Continuation']
    set_label $P102, lexotic_326
    .lex "RETURN", $P102
    nqp_decontainerize $P5002, _lex_param_0
    repr_defined $I5001, $P5002
    if $I5001 goto unless107_end329 
    find_lex $P5003, "RETURN"
    $P5004 = $P5003(0)
  unless107_end329:
.annotate 'line', 594
    $P5005 = _lex_param_1."newIndent"()
    set $P101, $P5005
.annotate 'line', 595
    "&print"("{")
.annotate 'line', 596
    nqp_decontainerize $P5010, _lex_param_0
    get_how $P5009, $P5010
    nqp_decontainerize $P5011, _lex_param_0
    $P5012 = $P5009."parents"($P5011)
    set $P5006, $P5012
    iter $P5008, $P5012
  for_next339:
    unless $P5008, for_done341
    shift $P5014, $P5008
  for_redo340:
    .const 'Sub' $P5013 = 'cuid_95_1360256342.611' 
    capture_lex $P5013
    $P5006 = $P5013($P5014)
    goto for_next339
  for_done341:
.annotate 'line', 615
    _lex_param_1."deleteIndent"()
.annotate 'line', 616
    $P5015 = _lex_param_1."indent"()
    $P5016 = "&print"("\n", $P5015, "}")
    goto lexotic_327
  lexotic_326:
    .get_results ($P5016)
  lexotic_327:
    .return ($P5016) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_95_1360256342.611") :anon :lex :outer("cuid_47_1360256342.611")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 596
    .param pmc _lex_param_0 
    .const 'Sub' $P5008 = 'cuid_94_1360256342.611' 
    capture_lex $P5008 
    .lex "$type", _lex_param_0 
.annotate 'line', 597
    get_how $P5004, _lex_param_0
    $P5005 = $P5004."attributes"(_lex_param_0, 1 :named("local"))
    set $P5001, $P5005
    iter $P5003, $P5005
  for_next336:
    unless $P5003, for_done338
    shift $P5007, $P5003
  for_redo337:
    .const 'Sub' $P5006 = 'cuid_94_1360256342.611' 
    capture_lex $P5006
    $P5001 = $P5006($P5007)
    goto for_next336
  for_done338:
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_94_1360256342.611") :anon :lex :outer("cuid_95_1360256342.611")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 597
    .param pmc _lex_param_0 
    .lex "$name", $P101 
    .lex "$attrtype", $P102 
    .lex "$_", _lex_param_0 
    nqp_get_sc_object $P5001, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 25
    set $P102, $P5002
.annotate 'line', 598
    $P5003 = _lex_param_0."name"()
    set $P101, $P5003
.annotate 'line', 599
    $P5004 = _lex_param_0."type"()
    set $P102, $P5004
.annotate 'line', 600
    find_lex $P5005, "$subindent"
    find_lex $P5007, "$type"
    get_how $P5006, $P5007
    find_lex $P5008, "$type"
    $P5009 = $P5006."name"($P5008)
    "&print"("\n", $P5005, $P5009, "::", $P101, " => ")
    get_id $I5002, $P102
    nqp_get_sc_object $P5010, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 2
    get_id $I5003, $P5010
    iseq $I5001, $I5002, $I5003
    unless $I5001 goto if108_else330 
.annotate 'line', 601
.annotate 'line', 602
    find_lex $P5011, "$dumper"
    find_lex $P5012, "$label"
    find_lex $P5014, "self"
    nqp_decontainerize $P5013, $P5014
    find_lex $P5015, "$type"
    set $S5001, $P101
    repr_get_attr_int $I5004, $P5013, $P5015, $S5001
    $P5016 = $P5011."dump"($P5012, $I5004)
    set $P5040, $P5016
    goto if108_end331
  if108_else330:
    get_id $I5006, $P102
    nqp_get_sc_object $P5017, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 3
    get_id $I5007, $P5017
    iseq $I5005, $I5006, $I5007
    unless $I5005 goto if109_else332 
.annotate 'line', 604
.annotate 'line', 605
    find_lex $P5018, "$dumper"
    find_lex $P5019, "$label"
    find_lex $P5021, "self"
    nqp_decontainerize $P5020, $P5021
    find_lex $P5022, "$type"
    set $S5002, $P101
    repr_get_attr_num $N5001, $P5020, $P5022, $S5002
    $P5023 = $P5018."dump"($P5019, $N5001)
    set $P5039, $P5023
    goto if109_end333
  if109_else332:
    get_id $I5009, $P102
    nqp_get_sc_object $P5024, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 4
    get_id $I5010, $P5024
    iseq $I5008, $I5009, $I5010
    unless $I5008 goto if110_else334 
.annotate 'line', 607
.annotate 'line', 608
    find_lex $P5025, "$dumper"
    find_lex $P5026, "$label"
    find_lex $P5028, "self"
    nqp_decontainerize $P5027, $P5028
    find_lex $P5029, "$type"
    set $S5004, $P101
    repr_get_attr_str $S5003, $P5027, $P5029, $S5004
    $P5030 = $P5025."dump"($P5026, $S5003)
    set $P5038, $P5030
    goto if110_end335
  if110_else334:
.annotate 'line', 610
.annotate 'line', 611
    find_lex $P5031, "$dumper"
    find_lex $P5032, "$label"
    find_lex $P5035, "self"
    nqp_decontainerize $P5034, $P5035
    find_lex $P5036, "$type"
    set $S5005, $P101
    getattribute $P5033, $P5034, $P5036, $S5005
    $P5037 = $P5031."dump"($P5032, $P5033)
    set $P5038, $P5037
  if110_end335:
    set $P5039, $P5038
  if109_end333:
    set $P5040, $P5039
  if108_end331:
    .return ($P5040) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_96_1360256342.611") :anon :lex :outer("cuid_53_1360256342.611")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 621
    .const 'Sub' $P5005 = 'cuid_48_1360256342.611' 
    capture_lex $P5005 
    .const 'Sub' $P5005 = 'cuid_49_1360256342.611' 
    capture_lex $P5005 
    .const 'Sub' $P5005 = 'cuid_50_1360256342.611' 
    capture_lex $P5005 
    .const 'Sub' $P5005 = 'cuid_51_1360256342.611' 
    capture_lex $P5005 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_48_1360256342.611' 
    capture_lex $P5001
    .const 'Sub' $P5002 = 'cuid_49_1360256342.611' 
    capture_lex $P5002
    .const 'Sub' $P5003 = 'cuid_50_1360256342.611' 
    capture_lex $P5003
    .const 'Sub' $P5004 = 'cuid_51_1360256342.611' 
    capture_lex $P5004
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "new" :subid("cuid_48_1360256342.611") :anon :lex :outer("cuid_96_1360256342.611")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 642
    .param pmc _lex_param_0 
    .lex "$n", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 25
    set $P101, $P5001
.annotate 'line', 643
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."CREATE"()
    set $P101, $P5003
.annotate 'line', 644
    $P101."BUILD"()
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "BUILD" :subid("cuid_49_1360256342.611") :anon :lex :outer("cuid_96_1360256342.611")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 648
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 46
    new $P5003, 'ResizablePMCArray'
    repr_bind_attr_obj $P5001, $P5002, "@!array", $P5003
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 46
    new $P5006, 'Hash'
    repr_bind_attr_obj $P5004, $P5005, "%!hash", $P5006
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "list" :subid("cuid_50_1360256342.611") :anon :lex :outer("cuid_96_1360256342.611")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 653
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 46
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!array"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "hash" :subid("cuid_51_1360256342.611") :anon :lex :outer("cuid_96_1360256342.611")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 655
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 46
    repr_get_attr_obj $P5003, $P5001, $P5002, "%!hash"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_98_1360256342.611") :load :init
.annotate 'file', "src\\stage2\\NQPCORE.setting"
    .const 'Sub' $P5001 = 'cuid_97_1360256342.611' 
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
    get_hll_global $P5001, "ModuleLoader"
    $P5001."load_module"("nqpmo")
    nqp_create_sc $P5001, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637"
    set cur_sc, $P5001
    $P5002 = cur_sc."set_description"("src\\stage2\\NQPCORE.setting")
    new $P5003, 'ResizablePMCArray'
    set conflicts, $P5003
    new $P5004, 'ResizableStringArray'
    null $S5001
    push $P5004, $S5001
    push $P5004, "P6opaque"
    push $P5004, "RoleToRoleApplier"
    push $P5004, "6F207129B0708369A315ED3D47DFB8B452CF56E2-1360256337.469"
    push $P5004, "src\\stage2\\gen\\nqp-mo.pm"
    push $P5004, "NQPConcreteRoleHOW"
    push $P5004, "RoleToClassApplier"
    push $P5004, "NQPCurriedRoleHOW"
    push $P5004, "NQPParametricRoleHOW"
    push $P5004, "NQPClassHOW"
    push $P5004, "NQPNativeHOW"
    push $P5004, "NQPAttribute"
    push $P5004, "NQPModuleHOW"
    push $P5004, "Uninstantiable"
    push $P5004, "P6int"
    push $P5004, "P6num"
    push $P5004, "P6str"
    push $P5004, "add_dispatchee"
    push $P5004, "is_dispatcher"
    push $P5004, "derive_dispatcher"
    push $P5004, "SET_NQPMU"
    push $P5004, "sort_dispatchees"
    push $P5004, "dispatch"
    push $P5004, "clone"
    push $P5004, "!set_name"
    push $P5004, "name"
    push $P5004, "signature"
    push $P5004, "$!do"
    push $P5004, "$!signature"
    push $P5004, "$!dispatchees"
    push $P5004, "$!dispatch_cache"
    push $P5004, "$!dispatch_order"
    push $P5004, "types"
    push $P5004, "definednesses"
    push $P5004, "$!types"
    push $P5004, "$!definednesses"
    push $P5004, "SET_CAPS"
    push $P5004, "SET_NFA"
    push $P5004, "SET_ALT_NFA"
    push $P5004, "SET_GENERIC_NFA"
    push $P5004, "ADD_NESTED_CODE"
    push $P5004, "CAPS"
    push $P5004, "NFA"
    push $P5004, "ALT_NFAS"
    push $P5004, "ALT_NFA"
    push $P5004, "NESTED_CODES"
    push $P5004, "SET_NFA_TYPE"
    push $P5004, "instantiate_generic"
    push $P5004, "$!caps"
    push $P5004, "$!nfa"
    push $P5004, "%!alt_nfas"
    push $P5004, "$!generic_nfa"
    push $P5004, "@!nested_codes"
    push $P5004, "CREATE"
    push $P5004, "bless"
    push $P5004, "BUILDALL"
    push $P5004, "new"
    push $P5004, "Str"
    push $P5004, "Numeric"
    push $P5004, "Int"
    push $P5004, "at_pos"
    push $P5004, "at_key"
    push $P5004, "defined"
    push $P5004, "ACCEPTS"
    push $P5004, "isa"
    push $P5004, "__dump"
    push $P5004, "BUILD"
    push $P5004, "list"
    push $P5004, "hash"
    push $P5004, "@!array"
    push $P5004, "%!hash"
    push $P5004, "__6MODEL_CORE__"
    push $P5004, "GLOBALish"
    push $P5004, "EXPORTHOW"
    push $P5004, "int"
    push $P5004, "num"
    push $P5004, "str"
    push $P5004, "NQPRoutine"
    push $P5004, "NQPSignature"
    push $P5004, "NQPRegex"
    push $P5004, "NQPMu"
    push $P5004, "code"
    push $P5004, "get_string"
    push $P5004, "get_number"
    push $P5004, "get_integer"
    push $P5004, "get_pmc_keyed_int"
    push $P5004, "get_pmc_keyed_str"
    push $P5004, "NQPCapture"
    push $P5004, "set_pmc_keyed_int"
    push $P5004, "exists_keyed_int"
    push $P5004, "delete_keyed_int"
    push $P5004, "unshift_pmc"
    push $P5004, "push_pmc"
    push $P5004, "get_pmc_keyed"
    push $P5004, "set_pmc_keyed_str"
    push $P5004, "set_pmc_keyed"
    push $P5004, "exists_keyed"
    push $P5004, "exists_keyed_str"
    push $P5004, "delete_keyed"
    push $P5004, "delete_keyed_str"
    .const 'Sub' $P5005 = 'cuid_97_1360256342.611' 
    capture_lex $P5005
    $P5006 = $P5005()
    nqp_deserialize_sc "AgAAAEAAAAACAAAAUAAAAAoAAACgAAAAYgoAAFMAAACSDwAArBwAAAAAAACsHAAAAAAAAKwcAACsHAAAAAAAAAMAAAAEAAAARwAAAAAAAAABAAAAAAAAAA0AAAAYAQAADgAAAFwBAAAPAAAApAEAABAAAADsAQAAAQAAACwCAAABAAAAxAMAAAEAAACqBAAAAQAAAJ4GAAABAAAA+AcAAAAAAAAzAAAAAAAAAAAAAAAKAAkAAAACAAAAAgABAAAAAgAAAAUAAAACAAEAAAADAAAABgAAAAIAAQAAAAQAAAAHAAAAAgABAAAABQAAAAgAAAACAAEAAAAGAAAACQAAAAIAAQAAAAcAAAAKAAAAAgABAAAACAAAAAsAAAACAAEAAAAJAAAADAAAAAIAAQAAAAoAAAAKAAAAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAQAAAAAAAAACAAAAAAAAAAAAAwAAAAAANAAAAAAAAAABAAAACgAAAAAACgAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA1AAAAAAAAAAIAAAAKAAAAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAAAAAAA2AAAAAAAAAAMAAAAKAAAAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAAAAAAA3AAAAAAAAAAQAAAAKAAAAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAOAAAAAAAAAAFAAAACgAAAAAACgAKAAAAEQAAAAsAAAAAAAAAAAASAAAACwAAAAAAAQAAABMAAAALAAAAAAACAAAAFAAAAAsAAAAAAAMAAAAVAAAACwAAAAAABAAAABYAAAALAAAAAAAFAAAAFwAAAAsAAAAAAAYAAAAYAAAACwAAAAAABwAAABkAAAALAAAAAAAIAAAAGgAAAAsAAAAAAAkAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAAABQAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAUAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAABQAAAAoABQAAABsAAAAEAAAAAAAAAAAAHAAAAAQAAQAAAAAAAAAdAAAABAACAAAAAAAAAB4AAAAEAAMAAAAAAAAAHwAAAAQABAAAAAAAAAAAAAAAOQAAAAAAAAAGAAAACgAAAAAACgACAAAAIAAAAAIAAAAAAAcAAAAhAAAAAgAAAAAACAAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAAAGAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAQAAAAAAAAACAAAAAAAGAAAACgACAAAAIgAAAAQAAAAAAAAAAAAjAAAABAABAAAAAAAAAAAAAAA6AAAAAAAAAAkAAAAKAAAAAAAKAA8AAAAkAAAAAgAAAAAACgAAACUAAAACAAAAAAALAAAAJgAAAAIAAAAAAAwAAAAnAAAAAgAAAAAADQAAACgAAAACAAAAAAAOAAAAKQAAAAIAAAAAAA8AAAAqAAAAAgAAAAAAEAAAACsAAAACAAAAAAARAAAALAAAAAIAAAAAABIAAAAtAAAAAgAAAAAAEwAAABcAAAACAAAAAAAUAAAALgAAAAIAAAAAABUAAAAvAAAAAgAAAAAAFgAAABkAAAACAAAAAAAXAAAAGAAAAAIAAAAAABgAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAAACQAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAQAAAAAAAAACAAAAAAAJAAAACgAGAAAAGwAAAAQAAAAAAAAAAAAwAAAABAABAAAAAAAAADEAAAAEAAIAAAAAAAAAMgAAAAQAAwAAAAAAAAAzAAAABAAEAAAAAAAAADQAAAAEAAUAAAAAAAAAAAAAADsAAAAAAAAAGQAAAAoAAAAAAAoADQAAADUAAAACAAAAAAAaAAAANgAAAAIAAAAAABsAAAA3AAAAAgAAAAAAHAAAADgAAAACAAAAAAAdAAAAOQAAAAIAAAAAAB4AAAA6AAAAAgAAAAAAIQAAADsAAAACAAAAAAAjAAAAPAAAAAIAAAAAACUAAAA9AAAAAgAAAAAAJwAAAD4AAAACAAAAAAApAAAAPwAAAAIAAAAAACoAAABAAAAAAgAAAAAALAAAAEEAAAACAAAAAAAtAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAABkAAAAEAAAAAAAAAAEAAAAAAAAABQAAAAAAAAADAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAABkAAAADAAAAAAA8AAAAAAAAAC4AAAAKAAAAAAAKABAAAAA1AAAAAgAAAAAAGgAAADYAAAACAAAAAAAbAAAANwAAAAIAAAAAABwAAAA4AAAAAgAAAAAALwAAADkAAAACAAAAAAAeAAAAOgAAAAIAAAAAACEAAAA7AAAAAgAAAAAAIwAAADwAAAACAAAAAAAlAAAAPQAAAAIAAAAAACcAAAA+AAAAAgAAAAAAKQAAAD8AAAACAAAAAAAqAAAAQAAAAAIAAAAAACwAAABBAAAAAgAAAAAALQAAAEIAAAACAAAAAAAwAAAAQwAAAAIAAAAAADEAAABEAAAAAgAAAAAAMgAAAAAAAAAAAAAAAgAAAAAAAAACAAAAAAAuAAAAAgAAAAAAGQAAAAQAAAAAAAAAAQAAAAAAAAAFAAAAAAAAAAMAAAAAAAAAAAACAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAACAAAAAAAAAAIAAAAAABkAAAADAAIAAAAAAC4AAAAKAAIAAABFAAAABAAAAAAAAAAAAEYAAAAEAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAAAAAAAAAAAAgAAAAAAAAAAAAAAAAAAAAMAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAABQAAAAAAAAAAAAAAAAAAAAYAAAAAAAAAAAAAAAAAAAAFAAAAAAAAAAEAAAAAAAAABQAAABIAAAABAAAAAAAAAAcAAAAkAAAAAAAAAAAAAAAFAAAAJAAAAAEAAAAAAAAABQAAADYAAAABAAAAAAAAAAUAAABIAAAAAQAAAAAAAAAFAAAAWgAAAAEAAAAAAAAABQAAAGwAAAABAAAAAAAAAAUAAAB+AAAAAQAAAAAAAAAFAAAAkAAAAAEAAAAAAAAABQAAAKIAAAABAAAAAAAAAAUAAAC0AAAAAQAAAAAAAAAFAAAAxgAAAAEAAAAAAAAABQAAANgAAAABAAAAAAAAAAUAAADqAAAAAQAAAAAAAAAFAAAA/AAAAAEAAAAAAAAABQAAAA4BAAABAAAAAAAAAAUAAAAgAQAAAQAAAAAAAAAIAAAAMgEAAAAAAAAAAAAABQAAADIBAAABAAAAAAAAAAUAAABEAQAAAQAAAAAAAAAFAAAAVgEAAAEAAAAAAAAABQAAAGgBAAABAAAAAAAAAAUAAAB6AQAAAQAAAAAAAAAFAAAApAEAAAEAAAAAAAAABQAAAL4BAAABAAAAAAAAAAUAAADYAQAAAQAAAAAAAAAFAAAA+AEAAAEAAAAAAAAABQAAABICAAABAAAAAAAAAAUAAAAyAgAAAQAAAAAAAAAFAAAATAIAAAEAAAAAAAAABQAAAGwCAAABAAAAAAAAAAUAAACGAgAAAQAAAAAAAAAFAAAApgIAAAEAAAAAAAAABQAAAMACAAABAAAAAAAAAAUAAADSAgAAAQAAAAAAAAAFAAAA8gIAAAEAAAAAAAAABQAAAAwDAAABAAAAAAAAAAUAAAAeAwAAAQAAAAAAAAAJAAAAMAMAAAAAAAAAAAAABQAAADADAAABAAAAAAAAAAUAAABCAwAAAQAAAAAAAAAFAAAAVAMAAAEAAAAAAAAABQAAAGYDAAABAAAAAgAAAAAAAAB4AwAAAQAAAAEAAAAKAAAAiAMAAAEAAAABAAAACAAAAJgDAAABAAAAAQAAAAgAAACoAwAAAQAAAAEAAAAIAAAAuAMAAAEAAAACAAAAAAAAAMgDAAABAAAAAgAAAAAAAACWBAAAAQAAAAIAAAAAAAAA1gQAAAEAAAABAAAABwAAAPQFAAABAAAAAQAAAAcAAADiCAAAAQAAAAAAAAAGAAAAogsAAAEAAAAAAAAABgAAAMILAAABAAAAAAAAAAYAAADiCwAAAQAAAAAAAAAGAAAAAgwAAAEAAAAAAAAABgAAACIMAAABAAAAAAAAAAYAAABODAAAAQAAAAAAAAAGAAAAegwAAAEAAAACAAAAAgAAAKYMAAABAAAAAgAAAAIAAACqDAAAAQAAAAIAAAACAAAArgwAAAEAAAACAAAAAgAAALIMAAABAAAAAgAAAAIAAAC2DAAAAQAAAAIAAAACAAAAugwAAAEAAAACAAAAAgAAAL4MAAABAAAAAgAAAAIAAADCDAAAAQAAAAIAAAACAAAAxgwAAAEAAAACAAAAAgAAAMoMAAABAAAAAgAAAAIAAADODAAAAQAAAAIAAAACAAAA0gwAAAEAAAACAAAAAgAAANYMAAABAAAAAQAAAAkAAADaDAAAAQAAAAEAAAAJAAAA+gwAAAEAAAALAAAAAAAKAAAAAQABAAEAAQALAAAAAAALAAAAAQABAAEAAQALAAAAAAAMAAAAAQABAAEAAQALAAAAAAANAAAAAQABAAEAAQALAAAAAAAOAAAAAQABAAEAAQALAAAAAAAPAAAAAQABAAEAAQALAAAAAAAQAAAAAQABAAEAAQALAAAAAAARAAAAAQABAAEAAQALAAAAAAASAAAAAQABAAEAAQALAAAAAAATAAAAAQABAAEAAQALAAAAAAAUAAAAAQABAAEAAQALAAAAAAAVAAAAAQABAAEAAQALAAAAAAAWAAAAAQABAAEAAQALAAAAAAAXAAAAAQABAAEAAQALAAAAAAAYAAAAAQABAAEAAQALAAAAAAAZAAAAAQABAAEAAQALAAAAAAAaAAAAAQABAAEAAQALAAAAAAAbAAAAAQABAAEAAQALAAAAAAAcAAAAAQABAAEAAQALAAAAAAAdAAAAAQABAAEAAQALAAAAAAAeAAAAAQABAAEAAQALAAAAAAAfAAAAAQAHAAIAAAACAAAAAAAfAAAAAgAAAAAAIAAAAAMAAwALAAAAAAAgAAAAAgAAAAAAPQAAAAEAAQABAAsAAAAAACEAAAACAAAAAAA+AAAAAQABAAEACwAAAAAAIgAAAAEABwABAAAAAgAAAAAAIgAAAAMAAwALAAAAAAAjAAAAAgAAAAAAPwAAAAEAAQABAAsAAAAAACQAAAABAAcAAQAAAAIAAAAAACQAAAADAAMACwAAAAAAJQAAAAIAAAAAAEAAAAABAAEAAQALAAAAAAAmAAAAAQAHAAEAAAACAAAAAAAmAAAAAwADAAsAAAAAACcAAAACAAAAAABBAAAAAQABAAEACwAAAAAAKAAAAAEABwABAAAAAgAAAAAAKAAAAAMAAwALAAAAAAApAAAAAgAAAAAAQgAAAAEAAQABAAsAAAAAACoAAAABAAEAAQABAAsAAAAAACsAAAABAAcAAQAAAAIAAAAAACsAAAADAAMACwAAAAAALAAAAAIAAAAAAEMAAAABAAEAAQALAAAAAAAtAAAAAQABAAEAAQALAAAAAAAuAAAAAQABAAEAAQALAAAAAAAvAAAAAQABAAEAAQALAAAAAAAwAAAAAQABAAEAAQALAAAAAAAxAAAAAQABAAEAAQALAAAAAAAyAAAAAQABAAEAAQBIAAAABwAAAAAACgAAAAAABgBJAAAABAABAAAAAAAAAAYASgAAAAQAAQAAAAAAAAAGAEsAAAAEAAEAAAAAAAAABgBMAAAABAABAAAAAAAAAE0AAAAHAAUAAAACAAAAAABEAAAAAgAAAAAARQAAAAIAAAAAAEYAAAACAAAAAABHAAAAAgAAAAAASAAAAAoACgAAABEAAAALAAAAAAAAAAAAEgAAAAsAAAAAAAEAAAATAAAACwAAAAAAAgAAABQAAAALAAAAAAADAAAAFQAAAAsAAAAAAAQAAAAWAAAACwAAAAAABQAAABcAAAALAAAAAAAGAAAAGAAAAAsAAAAAAAcAAAAZAAAACwAAAAAACAAAABoAAAALAAAAAAAJAAAATgAAAAcAAgAAAAIAAAAAAEkAAAACAAAAAABKAAAACgACAAAAIAAAAAIAAAAAAAcAAAAhAAAAAgAAAAAACAAAAE8AAAAHAAYAAAACAAAAAABLAAAAAgAAAAAATAAAAAIAAAAAAE0AAAACAAAAAABOAAAAAgAAAAAATwAAAAIAAAAAAFAAAAAKAA8AAAAkAAAAAgAAAAAACgAAACUAAAACAAAAAAALAAAAJgAAAAIAAAAAAAwAAAAnAAAAAgAAAAAADQAAACgAAAACAAAAAAAOAAAAKQAAAAIAAAAAAA8AAAAqAAAAAgAAAAAAEAAAACsAAAACAAAAAAARAAAALAAAAAIAAAAAABIAAAAtAAAAAgAAAAAAEwAAABcAAAACAAAAAAAUAAAALgAAAAIAAAAAABUAAAAvAAAAAgAAAAAAFgAAABkAAAACAAAAAAAXAAAAGAAAAAIAAAAAABgAAAAGAFAAAAAKAAAAAAAKAA0AAAA1AAAAAgAAAAAAGgAAADYAAAACAAAAAAAbAAAANwAAAAIAAAAAABwAAAA4AAAAAgAAAAAAHQAAADkAAAACAAAAAAAeAAAAOgAAAAIAAAAAACEAAAA7AAAAAgAAAAAAIwAAADwAAAACAAAAAAAlAAAAPQAAAAIAAAAAACcAAAA+AAAAAgAAAAAAKQAAAD8AAAACAAAAAAAqAAAAQAAAAAIAAAAAACwAAABBAAAAAgAAAAAALQAAAAcADQAAAAIAAAAAABoAAAACAAAAAAAbAAAAAgAAAAAAHAAAAAIAAAAAAB0AAAACAAAAAAAeAAAAAgAAAAAAIQAAAAIAAAAAACMAAAACAAAAAAAlAAAAAgAAAAAAJwAAAAIAAAAAACkAAAACAAAAAAAqAAAAAgAAAAAALAAAAAIAAAAAAC0AAAAHAAcAAAAKAAIAAAAZAAAABgA5AAAAUQAAAAIAAAAAAB8AAAAKAAIAAAAZAAAABgA5AAAAUQAAAAIAAAAAACAAAAAKAAIAAAAZAAAABgA6AAAAUQAAAAIAAAAAACIAAAAKAAIAAAAZAAAABgA7AAAAUQAAAAIAAAAAACQAAAAKAAIAAAAZAAAABgA8AAAAUQAAAAIAAAAAACYAAAAKAAIAAAAZAAAABgA9AAAAUQAAAAIAAAAAACgAAAAKAAIAAAAZAAAABgA/AAAAUQAAAAIAAAAAACsAAAAHAAAAAAAHAAAAAAACAAAAAAAZAAAABwAAAAAACgAAAAAABAABAAAAAAAAAAcAAQAAAAIAAAAAABkAAAAHAAAAAAABAAoABgAAAFIAAAACAAAAAAAeAAAAUwAAAAIAAAAAACEAAABUAAAAAgAAAAAAIwAAAFUAAAACAAAAAAAlAAAAVgAAAAIAAAAAACcAAAA+AAAAAgAAAAAAKQAAAAoAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwAAAAAABwAAAAAAAQAGAFcAAAAKAAIAAABFAAAAAgAAAAAAUQAAAEYAAAACAAAAAABSAAAACgAEAAAAOAAAAAIAAAAAAC8AAABCAAAAAgAAAAAAMAAAAEMAAAACAAAAAAAxAAAARAAAAAIAAAAAADIAAAAHAAQAAAACAAAAAAAvAAAAAgAAAAAAMAAAAAIAAAAAADEAAAACAAAAAAAyAAAABwAAAAAABwABAAAAAgAAAAAAGQAAAAcAAAAAAAIAAAAAABkAAAAHAAAAAAAKAAAAAAAEAAEAAAAAAAAABwACAAAAAgAAAAAALgAAAAIAAAAAABkAAAAHAAAAAAABAAoAAAAAAAoADgAAAFUAAAAHAAIAAAACAAAAAAAuAAAABgBFAAAAWAAAAAcAAgAAAAIAAAAAAC4AAAAGAEUAAABZAAAABwACAAAAAgAAAAAALgAAAAYARQAAAFoAAAAHAAIAAAACAAAAAAAuAAAABgBFAAAAWwAAAAcAAgAAAAIAAAAAAC4AAAAGAEUAAABcAAAABwACAAAAAgAAAAAALgAAAAYARQAAAFYAAAAHAAIAAAACAAAAAAAuAAAABgBGAAAAXQAAAAcAAgAAAAIAAAAAAC4AAAAGAEYAAABeAAAABwACAAAAAgAAAAAALgAAAAYARgAAAF8AAAAHAAIAAAACAAAAAAAuAAAABgBGAAAAYAAAAAcAAgAAAAIAAAAAAC4AAAAGAEYAAABhAAAABwACAAAAAgAAAAAALgAAAAYARgAAAGIAAAAHAAIAAAACAAAAAAAuAAAABgBGAAAAYwAAAAcAAgAAAAIAAAAAAC4AAAAGAEYAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAQAAAAcAAgAAAAQAAAAAAAAAAAACAAAAAAAwAAAABwABAAAABwACAAAABAAAAAAAAAAAAAIAAAAAADAAAAABAAcAAQAAAAIAAAAAABkAAAAHAAEAAAAEAAIAAAAAAAAABwABAAAAAgAAAAAAGQAAAAcAAQAAAAQAAQAAAAAAAAAHAAEAAAACAAAAAAAZAAAABwABAAAABAACAAAAAAAAAAcAAQAAAAIAAAAAABkAAAAHAAEAAAAEAAIAAAAAAAAABwACAAAAAgAAAAAAGQAAAAMABwACAAAABAACAAAAAAAAAAQAAAAAAAAAAAAHAAIAAAACAAAAAAAZAAAAAwAHAAIAAAAEAAIAAAAAAAAABAAAAAAAAAAAAAcAAgAAAAIAAAAAABkAAAADAAcAAgAAAAQAAgAAAAAAAAAEAAAAAAAAAAAAGwAAABwAAAAdAAAAHgAAAB8AAAAiAAAAIwAAABsAAAAwAAAAMQAAADIAAAAzAAAANAAAAAYARQAAAAMABAAAAAAAAAAAAAMAAwAEAAAAAAAAAAAABgBGAAAAAwAEAAAAAAAAAAAAAwADAAQAAAAAAAAAAAA=", cur_sc, $P5004, $P5006, conflicts
    unless conflicts goto if113_end347 
    die "Repossession conflicts occurred during deserialization"
  if113_end347:
    .const "LexInfo" $P5001 = "cuid_53_1360256342.611"
    nqp_get_sc_object $P5002, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 0
    $P5001."set_static_lexpad_value"("GLOBALish", $P5002)
    .const "LexInfo" $P5003 = "cuid_53_1360256342.611"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_53_1360256342.611"
    nqp_get_sc_object $P5002, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 0
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_53_1360256342.611"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_53_1360256342.611"
    nqp_get_sc_object $P5002, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 1
    $P5001."set_static_lexpad_value"("EXPORTHOW", $P5002)
    .const "LexInfo" $P5003 = "cuid_53_1360256342.611"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_71_1360256342.611"
    nqp_get_sc_object $P5002, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 1
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_71_1360256342.611"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_71_1360256342.611"
    nqp_get_sc_object $P5002, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 1
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_71_1360256342.611"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_53_1360256342.611"
    nqp_get_sc_object $P5002, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 2
    $P5001."set_static_lexpad_value"("int", $P5002)
    .const "LexInfo" $P5003 = "cuid_53_1360256342.611"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_72_1360256342.611"
    nqp_get_sc_object $P5002, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 2
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_72_1360256342.611"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_72_1360256342.611"
    nqp_get_sc_object $P5002, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 2
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_72_1360256342.611"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_53_1360256342.611"
    nqp_get_sc_object $P5002, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 3
    $P5001."set_static_lexpad_value"("num", $P5002)
    .const "LexInfo" $P5003 = "cuid_53_1360256342.611"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_73_1360256342.611"
    nqp_get_sc_object $P5002, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 3
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_73_1360256342.611"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_73_1360256342.611"
    nqp_get_sc_object $P5002, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 3
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_73_1360256342.611"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_53_1360256342.611"
    nqp_get_sc_object $P5002, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 4
    $P5001."set_static_lexpad_value"("str", $P5002)
    .const "LexInfo" $P5003 = "cuid_53_1360256342.611"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_74_1360256342.611"
    nqp_get_sc_object $P5002, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 4
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_74_1360256342.611"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_74_1360256342.611"
    nqp_get_sc_object $P5002, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 4
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_74_1360256342.611"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_53_1360256342.611"
    nqp_get_sc_object $P5002, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 5
    $P5001."set_static_lexpad_value"("NQPRoutine", $P5002)
    .const "LexInfo" $P5003 = "cuid_53_1360256342.611"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_76_1360256342.611"
    nqp_get_sc_object $P5002, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 5
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_76_1360256342.611"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_76_1360256342.611"
    nqp_get_sc_object $P5002, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 5
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_76_1360256342.611"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_53_1360256342.611"
    nqp_get_sc_object $P5002, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 6
    $P5001."set_static_lexpad_value"("NQPSignature", $P5002)
    .const "LexInfo" $P5003 = "cuid_53_1360256342.611"
    $P5004 = $P5003."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_11_1360256342.611" 
    nqp_get_sc_object $P5002, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 7
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_12_1360256342.611" 
    nqp_get_sc_object $P5002, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 8
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_86_1360256342.611"
    nqp_get_sc_object $P5002, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 6
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_86_1360256342.611"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_86_1360256342.611"
    nqp_get_sc_object $P5002, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 6
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_86_1360256342.611"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_53_1360256342.611"
    nqp_get_sc_object $P5002, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 9
    $P5001."set_static_lexpad_value"("NQPRegex", $P5002)
    .const "LexInfo" $P5003 = "cuid_53_1360256342.611"
    $P5004 = $P5003."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_13_1360256342.611" 
    nqp_get_sc_object $P5002, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 10
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_14_1360256342.611" 
    nqp_get_sc_object $P5002, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 11
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_15_1360256342.611" 
    nqp_get_sc_object $P5002, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 12
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_16_1360256342.611" 
    nqp_get_sc_object $P5002, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 13
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_17_1360256342.611" 
    nqp_get_sc_object $P5002, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 14
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_18_1360256342.611" 
    nqp_get_sc_object $P5002, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 15
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_19_1360256342.611" 
    nqp_get_sc_object $P5002, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 16
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_20_1360256342.611" 
    nqp_get_sc_object $P5002, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 17
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_21_1360256342.611" 
    nqp_get_sc_object $P5002, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 18
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_22_1360256342.611" 
    nqp_get_sc_object $P5002, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 19
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_23_1360256342.611" 
    nqp_get_sc_object $P5002, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 20
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_24_1360256342.611" 
    nqp_get_sc_object $P5002, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 21
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_25_1360256342.611" 
    nqp_get_sc_object $P5002, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 22
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_26_1360256342.611" 
    nqp_get_sc_object $P5002, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 23
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_27_1360256342.611" 
    nqp_get_sc_object $P5002, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 24
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_87_1360256342.611"
    nqp_get_sc_object $P5002, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 9
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_87_1360256342.611"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_87_1360256342.611"
    nqp_get_sc_object $P5002, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 9
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_87_1360256342.611"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_53_1360256342.611"
    nqp_get_sc_object $P5002, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 25
    $P5001."set_static_lexpad_value"("NQPMu", $P5002)
    .const "LexInfo" $P5003 = "cuid_53_1360256342.611"
    $P5004 = $P5003."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_28_1360256342.611" 
    nqp_get_sc_object $P5002, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 26
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_29_1360256342.611" 
    nqp_get_sc_object $P5002, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 27
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_30_1360256342.611" 
    nqp_get_sc_object $P5002, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 28
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_31_1360256342.611" 
    nqp_get_sc_object $P5002, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 29
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_32_1360256342.611" 
    nqp_get_sc_object $P5002, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 30
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_33_1360256342.611" 
    nqp_get_sc_object $P5002, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 31
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_34_1360256342.611" 
    nqp_get_sc_object $P5002, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 32
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_35_1360256342.611" 
    nqp_get_sc_object $P5002, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 33
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_36_1360256342.611" 
    nqp_get_sc_object $P5002, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 34
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_37_1360256342.611" 
    nqp_get_sc_object $P5002, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 35
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_38_1360256342.611" 
    nqp_get_sc_object $P5002, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 36
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_39_1360256342.611" 
    nqp_get_sc_object $P5002, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 37
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_40_1360256342.611" 
    nqp_get_sc_object $P5002, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 38
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_41_1360256342.611" 
    nqp_get_sc_object $P5002, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 39
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_42_1360256342.611" 
    nqp_get_sc_object $P5002, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 40
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_43_1360256342.611" 
    nqp_get_sc_object $P5002, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 41
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_44_1360256342.611" 
    nqp_get_sc_object $P5002, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 42
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_45_1360256342.611" 
    nqp_get_sc_object $P5002, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 43
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_46_1360256342.611" 
    nqp_get_sc_object $P5002, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 44
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_47_1360256342.611" 
    nqp_get_sc_object $P5002, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 45
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_89_1360256342.611"
    nqp_get_sc_object $P5002, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 25
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_89_1360256342.611"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_89_1360256342.611"
    nqp_get_sc_object $P5002, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 25
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_89_1360256342.611"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_53_1360256342.611"
    nqp_get_sc_object $P5002, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 46
    $P5001."set_static_lexpad_value"("NQPCapture", $P5002)
    .const "LexInfo" $P5003 = "cuid_53_1360256342.611"
    $P5004 = $P5003."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_48_1360256342.611" 
    nqp_get_sc_object $P5002, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 47
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_49_1360256342.611" 
    nqp_get_sc_object $P5002, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 48
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_50_1360256342.611" 
    nqp_get_sc_object $P5002, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 49
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_51_1360256342.611" 
    nqp_get_sc_object $P5002, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 50
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_96_1360256342.611"
    nqp_get_sc_object $P5002, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 46
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_96_1360256342.611"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_96_1360256342.611"
    nqp_get_sc_object $P5002, "7124EB0A4F2237DE17B284B8CB3CA81CA1BF5C73-1360256342.637", 46
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_96_1360256342.611"
    $P5004 = $P5003."finish_static_lexpad"()
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_97_1360256342.611") :anon :lex :outer("cuid_98_1360256342.611")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
    new $P5001, 'ResizablePMCArray'
    .const 'Sub' $P5002 = "cuid_1_1360256342.611" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_2_1360256342.611" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_3_1360256342.611" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_4_1360256342.611" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_5_1360256342.611" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_6_1360256342.611" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_7_1360256342.611" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_8_1360256342.611" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_9_1360256342.611" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_10_1360256342.611" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_11_1360256342.611" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_12_1360256342.611" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_13_1360256342.611" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_14_1360256342.611" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_15_1360256342.611" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_16_1360256342.611" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_17_1360256342.611" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_18_1360256342.611" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_19_1360256342.611" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_20_1360256342.611" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_21_1360256342.611" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_22_1360256342.611" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_23_1360256342.611" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_24_1360256342.611" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_25_1360256342.611" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_26_1360256342.611" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_27_1360256342.611" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_28_1360256342.611" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_29_1360256342.611" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_30_1360256342.611" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_31_1360256342.611" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_32_1360256342.611" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_33_1360256342.611" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_34_1360256342.611" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_35_1360256342.611" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_36_1360256342.611" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_37_1360256342.611" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_38_1360256342.611" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_39_1360256342.611" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_40_1360256342.611" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_41_1360256342.611" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_42_1360256342.611" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_43_1360256342.611" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_44_1360256342.611" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_45_1360256342.611" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_46_1360256342.611" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_47_1360256342.611" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_48_1360256342.611" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_49_1360256342.611" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_50_1360256342.611" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_51_1360256342.611" 
    push $P5001, $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_99_1360256342.611") :load
.annotate 'file', "src\\stage2\\NQPCORE.setting"
    .const 'Sub' $P5001 = "cuid_53_1360256342.611" 
    $P5002 = $P5001()
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_100_1360256342.611") :main
.annotate 'file', "src\\stage2\\NQPCORE.setting"
    .param pmc ARGS :slurpy 
    .const 'Sub' $P5001 = "cuid_53_1360256342.611" 
    $P5002 = $P5001(ARGS :flat)
    .return ($P5002) 
.end