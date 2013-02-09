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
.sub "" :subid("cuid_48_1360432430.278") :anon :lex
.annotate 'file', "src\\stage2\\NQPCORE.setting"
    .param pmc _lex_param_0 :slurpy 
    .const 'Sub' $P5063 = 'cuid_47_1360432430.278' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_49_1360432430.278' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_50_1360432430.278' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_51_1360432430.278' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_53_1360432430.278' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_54_1360432430.278' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_56_1360432430.278' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_58_1360432430.278' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_60_1360432430.278' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_61_1360432430.278' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_62_1360432430.278' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_63_1360432430.278' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_64_1360432430.278' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_65_1360432430.278' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_66_1360432430.278' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_67_1360432430.278' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_68_1360432430.278' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_69_1360432430.278' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_71_1360432430.278' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_81_1360432430.278' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_82_1360432430.278' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_84_1360432430.278' 
    capture_lex $P5063 
    .const 'Sub' $P5063 = 'cuid_91_1360432430.278' 
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
    .const 'Sub' $P5001 = 'cuid_47_1360432430.278' 
    capture_lex $P5001
    set $P112, $P5001
    .const 'Sub' $P5002 = 'cuid_49_1360432430.278' 
    capture_lex $P5002
    set $P113, $P5002
    .const 'Sub' $P5003 = 'cuid_50_1360432430.278' 
    capture_lex $P5003
    set $P114, $P5003
    .const 'Sub' $P5004 = 'cuid_51_1360432430.278' 
    capture_lex $P5004
    set $P115, $P5004
    .const 'Sub' $P5005 = 'cuid_53_1360432430.278' 
    capture_lex $P5005
    set $P116, $P5005
    .const 'Sub' $P5006 = 'cuid_54_1360432430.278' 
    capture_lex $P5006
    set $P117, $P5006
    .const 'Sub' $P5007 = 'cuid_56_1360432430.278' 
    capture_lex $P5007
    set $P118, $P5007
    .const 'Sub' $P5008 = 'cuid_58_1360432430.278' 
    capture_lex $P5008
    set $P119, $P5008
    .const 'Sub' $P5009 = 'cuid_60_1360432430.278' 
    capture_lex $P5009
    set $P120, $P5009
    .const 'Sub' $P5010 = 'cuid_61_1360432430.278' 
    capture_lex $P5010
    set $P121, $P5010
    nqp_get_sc_object $P5011, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P122, $P5011
    nqp_get_sc_object $P5012, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P123, $P5012
    nqp_get_sc_object $P5013, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P124, $P5013
    .const 'Sub' $P5014 = 'cuid_62_1360432430.278' 
    capture_lex $P5014
    set $P125, $P5014
    .const 'Sub' $P5015 = 'cuid_63_1360432430.278' 
    capture_lex $P5015
    set $P126, $P5015
    .const 'Sub' $P5016 = 'cuid_64_1360432430.278' 
    capture_lex $P5016
    set $P127, $P5016
    .const 'Sub' $P5017 = 'cuid_65_1360432430.278' 
    capture_lex $P5017
    set $P128, $P5017
.annotate 'line', 1
    .const 'Sub' $P5018 = 'cuid_66_1360432430.278' 
    capture_lex $P5018
    $P5019 = $P5018()
    .const 'Sub' $P5020 = 'cuid_67_1360432430.278' 
    capture_lex $P5020
    $P5021 = $P5020()
    .const 'Sub' $P5022 = 'cuid_68_1360432430.278' 
    capture_lex $P5022
    $P5023 = $P5022()
    .const 'Sub' $P5024 = 'cuid_69_1360432430.278' 
    capture_lex $P5024
    $P5025 = $P5024()
    .const 'Sub' $P5026 = 'cuid_71_1360432430.278' 
    capture_lex $P5026
    $P5027 = $P5026()
    nqp_get_sc_object $P5028, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 5
    nqp_get_sc_object $P5029, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 5
    null $P5030
    set_invocation_spec $P5028, $P5029, "$!do", $P5030
    nqp_get_sc_object $P5031, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 5
    null $P5032
    set_boolification_spec $P5031, 5, $P5032
    nqp_get_sc_object $P5033, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 5
    new $P5034, 'Hash'
    new $P5035, 'ResizablePMCArray'
    nqp_get_sc_object $P5036, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 5
    push $P5035, $P5036
    box $P5037, "$!do"
    push $P5035, $P5037
    set $P5034["get_string"], $P5035
    stable_publish_vtable_handler_mapping $P5033, $P5034
    .const 'Sub' $P5038 = 'cuid_81_1360432430.278' 
    capture_lex $P5038
    $P5039 = $P5038()
    .const 'Sub' $P5040 = 'cuid_82_1360432430.278' 
    capture_lex $P5040
    $P5041 = $P5040()
    nqp_get_sc_object $P5042, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 9
    nqp_get_sc_object $P5043, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 9
    null $P5044
    set_invocation_spec $P5042, $P5043, "$!do", $P5044
    nqp_get_sc_object $P5045, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 9
    null $P5046
    set_boolification_spec $P5045, 5, $P5046
    nqp_get_sc_object $P5047, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 9
    new $P5048, 'Hash'
    new $P5049, 'ResizablePMCArray'
    nqp_get_sc_object $P5050, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 9
    push $P5049, $P5050
    box $P5051, "$!do"
    push $P5049, $P5051
    set $P5048["get_string"], $P5049
    stable_publish_vtable_handler_mapping $P5047, $P5048
    .const 'Sub' $P5052 = 'cuid_84_1360432430.278' 
    capture_lex $P5052
    $P5053 = $P5052()
    .const 'Sub' $P5054 = 'cuid_91_1360432430.278' 
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
    if $I5001 goto unless268_end501 
    can $I5002, ctxsave, "ctxsave"
    box $P5062, $I5002
    set $P5061, $P5062
    unless $I5002 goto if269_end503 
    $P5060 = ctxsave."ctxsave"()
    set $P5061, $P5060
  if269_end503:
  unless268_end501:
    .return () 
.end
.HLL "nqp"
.namespace []
.sub "open" :subid("cuid_47_1360432430.278") :anon :lex :outer("cuid_48_1360432430.278")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 661
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("r") :optional 
    .param int haz_param_1 :opt_flag 
    .param pmc _lex_param_2 :named("w") :optional 
    .param int haz_param_2 :opt_flag 
    .param pmc _lex_param_3 :named("a") :optional 
    .param int haz_param_3 :opt_flag 
    .param pmc _lex_param_4 :named("bin") :optional 
    .param int haz_param_4 :opt_flag 
    .lex "$mode", $P101 
    .lex "$handle", $P102 
    .lex "$filename", _lex_param_0 
    .lex "$r", _lex_param_1 
    .lex "$w", _lex_param_2 
    .lex "$a", _lex_param_3 
    .lex "$bin", _lex_param_4 
    if haz_param_1, default16
    nqp_get_sc_object $P5005, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set _lex_param_1, $P5005
  default16:
    if haz_param_2, default17
    nqp_get_sc_object $P5006, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set _lex_param_2, $P5006
  default17:
    if haz_param_3, default18
    nqp_get_sc_object $P5007, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set _lex_param_3, $P5007
  default18:
    if haz_param_4, default19
    nqp_get_sc_object $P5008, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set _lex_param_4, $P5008
  default19:
    nqp_get_sc_object $P5001, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
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
.annotate 'line', 664
    $P102."open"(_lex_param_0, $P101)
.annotate 'line', 665
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
.sub "close" :subid("cuid_49_1360432430.278") :anon :lex :outer("cuid_48_1360432430.278")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 673
    .param pmc _lex_param_0 
    .lex "$handle", _lex_param_0 
.annotate 'line', 674
    $P5001 = _lex_param_0."close"()
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "slurp" :subid("cuid_50_1360432430.278") :anon :lex :outer("cuid_48_1360432430.278")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 681
    .param pmc _lex_param_0 
    .lex "$handle", $P101 
    .lex "$contents", $P102 
    .lex "$filename", _lex_param_0 
    nqp_get_sc_object $P5001, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P102, $P5002
.annotate 'line', 682
    $P5003 = "&open"(_lex_param_0, 1 :named("r"))
    set $P101, $P5003
.annotate 'line', 683
    $P5004 = $P101."readall"()
    set $P102, $P5004
.annotate 'line', 684
    $P101."close"()
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "spew" :subid("cuid_51_1360432430.278") :anon :lex :outer("cuid_48_1360432430.278")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 693
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$handle", $P101 
    .lex "$filename", _lex_param_0 
    .lex "$contents", _lex_param_1 
    nqp_get_sc_object $P5001, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P101, $P5001
.annotate 'line', 694
    $P5002 = "&open"(_lex_param_0, 1 :named("w"))
    set $P101, $P5002
.annotate 'line', 695
    $P101."print"(_lex_param_1)
.annotate 'line', 696
    $P5003 = $P101."close"()
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "print" :subid("cuid_53_1360432430.278") :anon :lex :outer("cuid_48_1360432430.278")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 699
    .param pmc _lex_param_0 :slurpy 
    .const 'Sub' $P5006 = 'cuid_52_1360432430.278' 
    capture_lex $P5006 
    .lex "@args", _lex_param_0 
    set $P5001, _lex_param_0
    iter $P5003, _lex_param_0
  for_next20:
    unless $P5003, for_done22
    shift $P5005, $P5003
  for_redo21:
    .const 'Sub' $P5004 = 'cuid_52_1360432430.278' 
    capture_lex $P5004
    $P5001 = $P5004($P5005)
    goto for_next20
  for_done22:
    .return (1) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_52_1360432430.278") :anon :lex :outer("cuid_53_1360432430.278")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 700
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    set $S5001, _lex_param_0
    print $S5001
    .return ($S5001) 
.end
.HLL "nqp"
.namespace []
.sub "say" :subid("cuid_54_1360432430.278") :anon :lex :outer("cuid_48_1360432430.278")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 706
    .param pmc _lex_param_0 :slurpy 
    .lex "@args", _lex_param_0 
.annotate 'line', 707
    $P5001 = "&print"(_lex_param_0 :flat, "\n")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "join" :subid("cuid_56_1360432430.278") :anon :lex :outer("cuid_48_1360432430.278")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 710
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5007 = 'cuid_55_1360432430.278' 
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
    .const 'Sub' $P5005 = 'cuid_55_1360432430.278' 
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
.sub "" :subid("cuid_55_1360432430.278") :anon :lex :outer("cuid_56_1360432430.278")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 712
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
.sub "match" :subid("cuid_58_1360432430.278") :anon :lex :outer("cuid_48_1360432430.278")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 730
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :named("global") :optional 
    .param int haz_param_5 :opt_flag 
    .const 'Sub' $P5007 = 'cuid_57_1360432430.278' 
    capture_lex $P5007 
    .lex "$match", $P101 
    .lex "$text", _lex_param_0 
    .lex "$regex", _lex_param_1 
    .lex "$global", _lex_param_2 
    if haz_param_5, default33
    nqp_get_sc_object $P5006, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set _lex_param_2, $P5006
  default33:
    nqp_get_sc_object $P5001, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P101, $P5001
.annotate 'line', 731
    $P5002 = _lex_param_1."ACCEPTS"(_lex_param_0)
    set $P101, $P5002
    unless _lex_param_2 goto if13_else26 
    .const 'Sub' $P5003 = 'cuid_57_1360432430.278' 
    capture_lex $P5003
    $P5004 = $P5003()
    set $P5005, $P5004
    goto if13_end27
  if13_else26:
.annotate 'line', 740

    set $P5005, $P101
  if13_end27:
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_57_1360432430.278") :anon :lex :outer("cuid_58_1360432430.278")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 732
    .lex "@matches", $P101 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
  while14_test28:
    find_lex $P5002, "$match"
    set $P5011, $P5002
    unless $P5002 goto while14_done32 
  while14_redo30:
.annotate 'line', 734
.annotate 'line', 735
    find_lex $P5003, "$match"
    $P101."push"($P5003)
.annotate 'line', 736
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
.sub "subst" :subid("cuid_60_1360432430.278") :anon :lex :outer("cuid_48_1360432430.278")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 752
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 :named("global") :optional 
    .param int haz_param_6 :opt_flag 
    .const 'Sub' $P5020 = 'cuid_59_1360432430.278' 
    capture_lex $P5020 
    .lex "@matches", $P101 
    .lex "$is_code", $P102 
    .lex "$offset", $P103 
    .lex "$result", $P104 
    .lex "$chars", $P105 
    .lex "$text", _lex_param_0 
    .lex "$regex", _lex_param_1 
    .lex "$repl", _lex_param_2 
    .lex "$global", _lex_param_3 
    if haz_param_6, default47
    nqp_get_sc_object $P5019, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set _lex_param_3, $P5019
  default47:
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    nqp_get_sc_object $P5002, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P102, $P5002
    nqp_get_sc_object $P5003, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P103, $P5003
    nqp_get_sc_object $P5004, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P104, $P5004
    nqp_get_sc_object $P5005, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P105, $P5005
    unless _lex_param_3 goto if15_else34 
.annotate 'line', 753
    $P5006 = "&match"(_lex_param_0, _lex_param_1, 1 :named("global"))
    set $P5009, $P5006
    goto if15_end35
  if15_else34:
    new $P5007, 'ResizablePMCArray'
.annotate 'line', 754
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
    .const 'Sub' $P5016 = 'cuid_59_1360432430.278' 
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
.sub "" :subid("cuid_59_1360432430.278") :anon :lex :outer("cuid_60_1360432430.278")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 759
    .param pmc _lex_param_0 
    .lex "$match", _lex_param_0 
    set $P5015, _lex_param_0
    unless _lex_param_0 goto if16_end37 
.annotate 'line', 760
.annotate 'line', 762
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
.annotate 'line', 761
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
.annotate 'line', 763
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
.annotate 'line', 764
    $P5014 = _lex_param_0."to"()
    store_lex "$offset", $P5014
    set $P5015, $P5014
  if16_end37:
    .return ($P5015) 
.end
.HLL "nqp"
.namespace []
.sub "hash" :subid("cuid_61_1360432430.278") :anon :lex :outer("cuid_48_1360432430.278")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 778
    .param pmc _lex_param_0 :slurpy :named 
    .lex "%new", _lex_param_0 
    .return (_lex_param_0) 
.end
.HLL "nqp"
.namespace []
.sub "plan" :subid("cuid_62_1360432430.278") :anon :lex :outer("cuid_48_1360432430.278")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 787
    .param pmc _lex_param_0 
    .lex "$quantity", _lex_param_0 
.annotate 'line', 788
    set $S5002, _lex_param_0
    concat $S5001, "1..", $S5002
    $P5001 = "&say"($S5001)
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "ok" :subid("cuid_63_1360432430.278") :anon :lex :outer("cuid_48_1360432430.278")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 791
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :optional 
    .param int haz_param_7 :opt_flag 
    .lex "$condition", _lex_param_0 
    .lex "$desc", _lex_param_1 
    if haz_param_7, default56
    nqp_get_sc_object $P5010, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set _lex_param_1, $P5010
  default56:
    find_lex $P5001, "$test_counter"
    set $N5002, $P5001
    set $N5003, 1
    add $N5001, $N5002, $N5003
    box $P5002, $N5001
    store_lex "$test_counter", $P5002
    if _lex_param_0 goto unless20_end49 
.annotate 'line', 794
.annotate 'line', 795
    $P5003 = "&print"("not ")
  unless20_end49:
.annotate 'line', 797
    find_lex $P5004, "$test_counter"
    set $S5002, $P5004
    concat $S5001, "ok ", $S5002
    "&print"($S5001)
    unless _lex_param_1 goto if21_end51 
.annotate 'line', 798
.annotate 'line', 799
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
.annotate 'line', 801
.annotate 'line', 802
    find_lex $P5008, "$todo_reason"
    $P5009 = "&print"($P5008)
  if22_end53:
.annotate 'line', 804
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
.sub "todo" :subid("cuid_64_1360432430.278") :anon :lex :outer("cuid_48_1360432430.278")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 809
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
.sub "skip" :subid("cuid_65_1360432430.278") :anon :lex :outer("cuid_48_1360432430.278")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 814
    .param pmc _lex_param_0 
    .lex "$desc", _lex_param_0 
    find_lex $P5001, "$test_counter"
    set $N5002, $P5001
    set $N5003, 1
    add $N5001, $N5002, $N5003
    box $P5002, $N5001
    store_lex "$test_counter", $P5002
.annotate 'line', 816
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
.sub "" :subid("cuid_66_1360432430.278") :anon :lex :outer("cuid_48_1360432430.278")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 12
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .local pmc fb_tmp_1 
    .local pmc fb_tmp_2 
    .local pmc fb_tmp_3 
    .local pmc fb_tmp_4 
    .local pmc fb_tmp_5 
    .local pmc fb_tmp_6 
    .local pmc fb_tmp_7 
    .local pmc fb_tmp_8 
    get_who $P5001, $P101
    get_who $P5002, $P101
    set fb_tmp_1, $P5002
    repr_defined $I5001, fb_tmp_1
    unless $I5001 goto if24_else57 
    set $P5003, fb_tmp_1["NQPModuleHOW"]
    set $P5005, $P5003
    goto if24_end58
  if24_else57:
    null $P5004
    set $P5005, $P5004
  if24_end58:
    unless_null $P5005, vivi_2660
    nqp_get_sc_object $P5008, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 0
    get_who $P5007, $P5008
    set $P5006, $P5007["NQPModuleHOW"]
    unless_null $P5006, vivi_2559
    null $P5009
    set $P5006, $P5009
  vivi_2559:
    set $P5005, $P5006
  vivi_2660:
    set $P5001["module"], $P5005
    get_who $P5010, $P101
    get_who $P5011, $P101
    set fb_tmp_2, $P5011
    repr_defined $I5002, fb_tmp_2
    unless $I5002 goto if27_else61 
    set $P5012, fb_tmp_2["NQPClassHOW"]
    set $P5014, $P5012
    goto if27_end62
  if27_else61:
    null $P5013
    set $P5014, $P5013
  if27_end62:
    unless_null $P5014, vivi_2964
    nqp_get_sc_object $P5017, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 0
    get_who $P5016, $P5017
    set $P5015, $P5016["NQPClassHOW"]
    unless_null $P5015, vivi_2863
    null $P5018
    set $P5015, $P5018
  vivi_2863:
    set $P5014, $P5015
  vivi_2964:
    set $P5010["class"], $P5014
    get_who $P5019, $P101
    get_who $P5020, $P101
    set fb_tmp_3, $P5020
    repr_defined $I5003, fb_tmp_3
    unless $I5003 goto if30_else65 
    set $P5021, fb_tmp_3["NQPAttribute"]
    set $P5023, $P5021
    goto if30_end66
  if30_else65:
    null $P5022
    set $P5023, $P5022
  if30_end66:
    unless_null $P5023, vivi_3268
    nqp_get_sc_object $P5026, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 0
    get_who $P5025, $P5026
    set $P5024, $P5025["NQPAttribute"]
    unless_null $P5024, vivi_3167
    null $P5027
    set $P5024, $P5027
  vivi_3167:
    set $P5023, $P5024
  vivi_3268:
    set $P5019["class-attr"], $P5023
    get_who $P5028, $P101
    get_who $P5029, $P101
    set fb_tmp_4, $P5029
    repr_defined $I5004, fb_tmp_4
    unless $I5004 goto if33_else69 
    set $P5030, fb_tmp_4["NQPClassHOW"]
    set $P5032, $P5030
    goto if33_end70
  if33_else69:
    null $P5031
    set $P5032, $P5031
  if33_end70:
    unless_null $P5032, vivi_3572
    nqp_get_sc_object $P5035, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 0
    get_who $P5034, $P5035
    set $P5033, $P5034["NQPClassHOW"]
    unless_null $P5033, vivi_3471
    null $P5036
    set $P5033, $P5036
  vivi_3471:
    set $P5032, $P5033
  vivi_3572:
    set $P5028["grammar"], $P5032
    get_who $P5037, $P101
    get_who $P5038, $P101
    set fb_tmp_5, $P5038
    repr_defined $I5005, fb_tmp_5
    unless $I5005 goto if36_else73 
    set $P5039, fb_tmp_5["NQPAttribute"]
    set $P5041, $P5039
    goto if36_end74
  if36_else73:
    null $P5040
    set $P5041, $P5040
  if36_end74:
    unless_null $P5041, vivi_3876
    nqp_get_sc_object $P5044, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 0
    get_who $P5043, $P5044
    set $P5042, $P5043["NQPAttribute"]
    unless_null $P5042, vivi_3775
    null $P5045
    set $P5042, $P5045
  vivi_3775:
    set $P5041, $P5042
  vivi_3876:
    set $P5037["grammar-attr"], $P5041
    get_who $P5046, $P101
    get_who $P5047, $P101
    set fb_tmp_6, $P5047
    repr_defined $I5006, fb_tmp_6
    unless $I5006 goto if39_else77 
    set $P5048, fb_tmp_6["NQPParametricRoleHOW"]
    set $P5050, $P5048
    goto if39_end78
  if39_else77:
    null $P5049
    set $P5050, $P5049
  if39_end78:
    unless_null $P5050, vivi_4180
    nqp_get_sc_object $P5053, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 0
    get_who $P5052, $P5053
    set $P5051, $P5052["NQPParametricRoleHOW"]
    unless_null $P5051, vivi_4079
    null $P5054
    set $P5051, $P5054
  vivi_4079:
    set $P5050, $P5051
  vivi_4180:
    set $P5046["role"], $P5050
    get_who $P5055, $P101
    get_who $P5056, $P101
    set fb_tmp_7, $P5056
    repr_defined $I5007, fb_tmp_7
    unless $I5007 goto if42_else81 
    set $P5057, fb_tmp_7["NQPAttribute"]
    set $P5059, $P5057
    goto if42_end82
  if42_else81:
    null $P5058
    set $P5059, $P5058
  if42_end82:
    unless_null $P5059, vivi_4484
    nqp_get_sc_object $P5062, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 0
    get_who $P5061, $P5062
    set $P5060, $P5061["NQPAttribute"]
    unless_null $P5060, vivi_4383
    null $P5063
    set $P5060, $P5063
  vivi_4383:
    set $P5059, $P5060
  vivi_4484:
    set $P5055["role-attr"], $P5059
    get_who $P5064, $P101
    get_who $P5065, $P101
    set fb_tmp_8, $P5065
    repr_defined $I5008, fb_tmp_8
    unless $I5008 goto if45_else85 
    set $P5066, fb_tmp_8["NQPNativeHOW"]
    set $P5068, $P5066
    goto if45_end86
  if45_else85:
    null $P5067
    set $P5068, $P5067
  if45_end86:
    unless_null $P5068, vivi_4788
    nqp_get_sc_object $P5071, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 0
    get_who $P5070, $P5071
    set $P5069, $P5070["NQPNativeHOW"]
    unless_null $P5069, vivi_4687
    null $P5072
    set $P5069, $P5072
  vivi_4687:
    set $P5068, $P5069
  vivi_4788:
    set $P5064["native"], $P5068
    .return ($P5068) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_67_1360432430.278") :anon :lex :outer("cuid_48_1360432430.278")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 23
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    null $P5001
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_68_1360432430.278") :anon :lex :outer("cuid_48_1360432430.278")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 25
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    null $P5001
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_69_1360432430.278") :anon :lex :outer("cuid_48_1360432430.278")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 27
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    null $P5001
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_71_1360432430.278") :anon :lex :outer("cuid_48_1360432430.278")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 30
    .const 'Sub' $P5021 = 'cuid_70_1360432430.278' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_1_1360432430.278' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_2_1360432430.278' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_3_1360432430.278' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_4_1360432430.278' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_5_1360432430.278' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_6_1360432430.278' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_7_1360432430.278' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_8_1360432430.278' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_9_1360432430.278' 
    capture_lex $P5021 
    .lex "&is_narrower_type", $P101 
    .lex "$SLURPY_ARITY", $P102 
    .lex "$EDGE_REMOVAL_TODO", $P103 
    .lex "$EDGE_REMOVED", $P104 
    .lex "$DEFINED_ONLY", $P105 
    .lex "$UNDEFINED_ONLY", $P106 
    .lex "$?PACKAGE", $P107 
    .lex "$?CLASS", $P108 
    .const 'Sub' $P5001 = 'cuid_70_1360432430.278' 
    capture_lex $P5001
    set $P101, $P5001
    null $P5002
    set $P102, $P5002
    null $P5003
    set $P103, $P5003
    null $P5004
    set $P104, $P5004
    null $P5005
    set $P105, $P5005
    null $P5006
    set $P106, $P5006
    .const 'Sub' $P5007 = 'cuid_1_1360432430.278' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_2_1360432430.278' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_3_1360432430.278' 
    capture_lex $P5009
    shl $I5001, 1, 30
    box $P5010, $I5001
    set $P102, $P5010
    box $P5011, -1
    set $P103, $P5011
    box $P5012, -2
    set $P104, $P5012
    box $P5013, 1
    set $P105, $P5013
    box $P5014, 2
    set $P106, $P5014
    .const 'Sub' $P5015 = 'cuid_4_1360432430.278' 
    capture_lex $P5015
    .const 'Sub' $P5016 = 'cuid_5_1360432430.278' 
    capture_lex $P5016
    .const 'Sub' $P5017 = 'cuid_6_1360432430.278' 
    capture_lex $P5017
    .const 'Sub' $P5018 = 'cuid_7_1360432430.278' 
    capture_lex $P5018
    .const 'Sub' $P5019 = 'cuid_8_1360432430.278' 
    capture_lex $P5019
    .const 'Sub' $P5020 = 'cuid_9_1360432430.278' 
    capture_lex $P5020
    .return ($P5020) 
.end
.HLL "nqp"
.namespace []
.sub "is_narrower_type" :subid("cuid_70_1360432430.278") :anon :lex :outer("cuid_71_1360432430.278")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 76
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$a", _lex_param_0 
    .lex "$b", _lex_param_1 
    isnull $I5001, _lex_param_1
    set $I5004, $I5001
    unless $I5001 goto if49_end92 
    isnull $I5003, _lex_param_0
    not $I5002, $I5003
    set $I5004, $I5002
  if49_end92:
    unless $I5004 goto if48_else89 
.annotate 'line', 79

    set $I5010, 1
    goto if48_end90
  if48_else89:
    isnull $I5005, _lex_param_0
    set $I5007, $I5005
    if $I5005 goto unless51_end96 
    isnull $I5006, _lex_param_1
    set $I5007, $I5006
  unless51_end96:
    unless $I5007 goto if50_else93 
.annotate 'line', 80

    set $I5009, 0
    goto if50_end94
  if50_else93:
.annotate 'line', 81
    type_check $I5008, _lex_param_0, _lex_param_1
    set $I5009, $I5008
  if50_end94:
    set $I5010, $I5009
  if48_end90:
    .return ($I5010) 
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
.HLL "nqp"
.namespace []
.sub "add_dispatchee" :subid("cuid_1_1360432430.278") :anon :lex :outer("cuid_71_1360432430.278")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 39
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$code", _lex_param_1 
    nqp_disable_sc_write_barrier 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 5
    null $P5003
    repr_bind_attr_obj $P5001, $P5002, "$!dispatch_cache", $P5003
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 5
    null $P5006
    repr_bind_attr_obj $P5004, $P5005, "$!dispatch_order", $P5006
    nqp_decontainerize $P5007, _lex_param_0
    nqp_get_sc_object $P5008, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 5
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
.HLL "nqp"
.namespace []
.sub "is_dispatcher" :subid("cuid_2_1360432430.278") :anon :lex :outer("cuid_71_1360432430.278")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 48
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 5
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!dispatchees"
    defined $I5001, $P5003
    .return ($I5001) 
.end
.HLL "nqp"
.namespace []
.sub "derive_dispatcher" :subid("cuid_3_1360432430.278") :anon :lex :outer("cuid_71_1360432430.278")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 53
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
    nqp_get_sc_object $P5006, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 5
    repr_get_attr_obj $P5007, $P5005, $P5006, "$!do"
    repr_clone $P5004, $P5007
    set $P101, $P5004
    nqp_decontainerize $P5009, _lex_param_0
    repr_clone $P5008, $P5009
    set $P102, $P5008
    nqp_get_sc_object $P5010, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 5
    setattribute $P102, $P5010, "$!do", $P101
    nqp_get_sc_object $P5011, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 5
    nqp_decontainerize $P5013, _lex_param_0
    nqp_get_sc_object $P5014, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 5
    repr_get_attr_obj $P5015, $P5013, $P5014, "$!dispatchees"
    repr_clone $P5012, $P5015
    setattribute $P102, $P5011, "$!dispatchees", $P5012
    set_sub_code_object $P101, $P102
    nqp_decontainerize $P5017, _lex_param_0
    nqp_get_sc_object $P5018, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 5
    repr_get_attr_obj $P5019, $P5017, $P5018, "$!do"
    getprop $P5016, $P5019, "CLONE_CALLBACK"
    set $P103, $P5016
    defined $I5001, $P103
    unless $I5001 goto if52_end98 
.annotate 'line', 65
.annotate 'line', 66
    nqp_decontainerize $P5020, _lex_param_0
    nqp_get_sc_object $P5021, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 5
    repr_get_attr_obj $P5022, $P5020, $P5021, "$!do"
    $P5023 = $P103($P5022, $P101, $P102)
  if52_end98:
    nqp_decontainerize $P5024, _lex_param_0
    nqp_get_sc_object $P5025, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 5
    repr_get_attr_obj $P5026, $P5024, $P5025, "$!clone_callback"
    isnull $I5002, $P5026
    if $I5002 goto unless53_end100 
.annotate 'line', 68
.annotate 'line', 69
    nqp_decontainerize $P5030, _lex_param_0
    nqp_get_sc_object $P5031, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 5
    repr_get_attr_obj $P5032, $P5030, $P5031, "$!do"
    nqp_decontainerize $P5027, _lex_param_0
    nqp_get_sc_object $P5028, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 5
    repr_get_attr_obj $P5029, $P5027, $P5028, "$!clone_callback"
    $P5033 = $P5029($P5032, $P101, $P102)
  unless53_end100:
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "sort_dispatchees" :subid("cuid_4_1360432430.278") :anon :lex :outer("cuid_71_1360432430.278")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 91
    .param pmc _lex_param_0 
    .const 'Sub' $P5028 = 'cuid_73_1360432430.278' 
    capture_lex $P5028 
    .const 'Sub' $P5028 = 'cuid_74_1360432430.278' 
    capture_lex $P5028 
    .const 'Sub' $P5028 = 'cuid_75_1360432430.278' 
    capture_lex $P5028 
    .const 'Sub' $P5028 = 'cuid_77_1360432430.278' 
    capture_lex $P5028 
    .lex "&is_narrower", $P101 
    .lex "@graph", $P102 
    .lex "$num_candidates", $P103 
    .lex "$i", $P104 
    .lex "@result", $P105 
    .lex "$candidates_to_sort", $P106 
    .lex "self", _lex_param_0 
    .const 'Sub' $P5001 = 'cuid_73_1360432430.278' 
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
    set_label $P107, lexotic_173
    .lex "RETURN", $P107
    nqp_decontainerize $P5007, _lex_param_0
    nqp_get_sc_object $P5008, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 5
    repr_get_attr_obj $P5009, $P5007, $P5008, "$!dispatchees"
    elements $I5001, $P5009
    box $P5010, $I5001
    set $P103, $P5010
    box $P5011, 0
    set $P104, $P5011
  while95_test175:
    set $N5001, $P104
    set $N5002, $P103
    islt $I5002, $N5001, $N5002
    box $P5015, $I5002
    set $P5014, $P5015
    unless $I5002 goto while95_done179 
  while95_redo177:
    .const 'Sub' $P5012 = 'cuid_74_1360432430.278' 
    capture_lex $P5012
    $P5013 = $P5012()
    set $P5014, $P5013
    goto while95_test175 
  while95_done179:
    box $P5016, 0
    set $P104, $P5016
  while113_test209:
    set $N5003, $P104
    set $N5004, $P103
    islt $I5003, $N5003, $N5004
    box $P5020, $I5003
    set $P5019, $P5020
    unless $I5003 goto while113_done213 
  while113_redo211:
    .const 'Sub' $P5017 = 'cuid_75_1360432430.278' 
    capture_lex $P5017
    $P5018 = $P5017()
    set $P5019, $P5018
    goto while113_test209 
  while113_done213:
    set $P106, $P103
  while147_test268:
    set $N5005, $P106
    set $N5006, 0
    isgt $I5004, $N5005, $N5006
    box $P5024, $I5004
    set $P5023, $P5024
    unless $I5004 goto while147_done272 
  while147_redo270:
    .const 'Sub' $P5021 = 'cuid_77_1360432430.278' 
    capture_lex $P5021
    $P5022 = $P5021()
    set $P5023, $P5022
    goto while147_test268 
  while147_done272:
    null $P5025
    push $P105, $P5025
    find_lex $P5026, "RETURN"
    $P5027 = $P5026($P105)
    goto lexotic_174
  lexotic_173:
    .get_results ($P5027)
  lexotic_174:
    .return ($P5027) 
.end
.HLL "nqp"
.namespace []
.sub "is_narrower" :subid("cuid_73_1360432430.278") :anon :lex :outer("cuid_4_1360432430.278")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 94
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5070 = 'cuid_72_1360432430.278' 
    capture_lex $P5070 
    .lex "$types_to_check", $P101 
    .lex "$i", $P102 
    .lex "$narrower", $P103 
    .lex "$tied", $P104 
    .lex "%a", _lex_param_0 
    .lex "%b", _lex_param_1 
    .local pmc fb_tmp_9 
    .local pmc fb_tmp_10 
    .local pmc fb_tmp_11 
    .local pmc fb_tmp_12 
    .local pmc fb_tmp_13 
    .local pmc fb_tmp_14 
    .local pmc fb_tmp_15 
    .local pmc fb_tmp_16 
    .local pmc fb_tmp_17 
    .local pmc fb_tmp_22 
    .local pmc fb_tmp_23 
    null $P5001
    set $P101, $P5001
    null $P5002
    set $P102, $P5002
    null $P5003
    set $P103, $P5003
    null $P5004
    set $P104, $P5004
    root_new $P105, ['parrot';'Continuation']
    set_label $P105, lexotic_101
    .lex "RETURN", $P105
    set fb_tmp_9, _lex_param_0
    repr_defined $I5002, fb_tmp_9
    unless $I5002 goto if55_else105 
    set $P5005, fb_tmp_9["num_types"]
    set $P5007, $P5005
    goto if55_end106
  if55_else105:
    null $P5006
    set $P5007, $P5006
  if55_end106:
    unless_null $P5007, vivi_56107
    null $P5008
    set $P5007, $P5008
  vivi_56107:
    set $N5001, $P5007
    set fb_tmp_10, _lex_param_1
    repr_defined $I5003, fb_tmp_10
    unless $I5003 goto if57_else108 
    set $P5009, fb_tmp_10["num_types"]
    set $P5011, $P5009
    goto if57_end109
  if57_else108:
    null $P5010
    set $P5011, $P5010
  if57_end109:
    unless_null $P5011, vivi_58110
    null $P5012
    set $P5011, $P5012
  vivi_58110:
    set $N5002, $P5011
    iseq $I5001, $N5001, $N5002
    unless $I5001 goto if54_else103 
.annotate 'line', 98
    set fb_tmp_11, _lex_param_0
    repr_defined $I5004, fb_tmp_11
    unless $I5004 goto if59_else111 
    set $P5013, fb_tmp_11["num_types"]
    set $P5015, $P5013
    goto if59_end112
  if59_else111:
    null $P5014
    set $P5015, $P5014
  if59_end112:
    unless_null $P5015, vivi_60113
    null $P5016
    set $P5015, $P5016
  vivi_60113:
    set $P101, $P5015
    goto if54_end104
  if54_else103:
    set fb_tmp_12, _lex_param_0
    repr_defined $I5006, fb_tmp_12
    unless $I5006 goto if62_else116 
    set $P5017, fb_tmp_12["min_arity"]
    set $P5019, $P5017
    goto if62_end117
  if62_else116:
    null $P5018
    set $P5019, $P5018
  if62_end117:
    unless_null $P5019, vivi_63118
    null $P5020
    set $P5019, $P5020
  vivi_63118:
    set $N5003, $P5019
    set fb_tmp_13, _lex_param_1
    repr_defined $I5007, fb_tmp_13
    unless $I5007 goto if64_else119 
    set $P5021, fb_tmp_13["min_arity"]
    set $P5023, $P5021
    goto if64_end120
  if64_else119:
    null $P5022
    set $P5023, $P5022
  if64_end120:
    unless_null $P5023, vivi_65121
    null $P5024
    set $P5023, $P5024
  vivi_65121:
    set $N5004, $P5023
    iseq $I5005, $N5003, $N5004
    unless $I5005 goto if61_else114 
.annotate 'line', 101
    set fb_tmp_14, _lex_param_0
    repr_defined $I5009, fb_tmp_14
    unless $I5009 goto if67_else124 
    set $P5025, fb_tmp_14["num_types"]
    set $P5027, $P5025
    goto if67_end125
  if67_else124:
    null $P5026
    set $P5027, $P5026
  if67_end125:
    unless_null $P5027, vivi_68126
    null $P5028
    set $P5027, $P5028
  vivi_68126:
    set $N5005, $P5027
    set fb_tmp_15, _lex_param_1
    repr_defined $I5010, fb_tmp_15
    unless $I5010 goto if69_else127 
    set $P5029, fb_tmp_15["num_types"]
    set $P5031, $P5029
    goto if69_end128
  if69_else127:
    null $P5030
    set $P5031, $P5030
  if69_end128:
    unless_null $P5031, vivi_70129
    null $P5032
    set $P5031, $P5032
  vivi_70129:
    set $N5006, $P5031
    isgt $I5008, $N5005, $N5006
    unless $I5008 goto if66_else122 
    set fb_tmp_16, _lex_param_1
    repr_defined $I5011, fb_tmp_16
    unless $I5011 goto if71_else130 
    set $P5033, fb_tmp_16["num_types"]
    set $P5035, $P5033
    goto if71_end131
  if71_else130:
    null $P5034
    set $P5035, $P5034
  if71_end131:
    unless_null $P5035, vivi_72132
    null $P5036
    set $P5035, $P5036
  vivi_72132:
    set $P5041, $P5035
    goto if66_end123
  if66_else122:
    set fb_tmp_17, _lex_param_0
    repr_defined $I5012, fb_tmp_17
    unless $I5012 goto if73_else133 
    set $P5037, fb_tmp_17["num_types"]
    set $P5039, $P5037
    goto if73_end134
  if73_else133:
    null $P5038
    set $P5039, $P5038
  if73_end134:
    unless_null $P5039, vivi_74135
    null $P5040
    set $P5039, $P5040
  vivi_74135:
    set $P5041, $P5039
  if66_end123:
    set $P101, $P5041
    set $P5044, $P101
    goto if61_end115
  if61_else114:
.annotate 'line', 104
    find_lex $P5042, "RETURN"
    $P5043 = $P5042(0)
    set $P5044, $P5043
  if61_end115:
  if54_end104:
    box $P5045, 0
    set $P102, $P5045
    box $P5046, 0
    set $P103, $P5046
    box $P5047, 0
    set $P104, $P5047
  while75_test136:
    set $N5007, $P102
    set $N5008, $P101
    islt $I5013, $N5007, $N5008
    box $P5051, $I5013
    set $P5050, $P5051
    unless $I5013 goto while75_done140 
  while75_redo138:
    .const 'Sub' $P5048 = 'cuid_72_1360432430.278' 
    capture_lex $P5048
    $P5049 = $P5048()
    set $P5050, $P5049
    goto while75_test136 
  while75_done140:
    set $N5009, $P103
    set $N5010, 1
    isge $I5014, $N5009, $N5010
    set $I5016, $I5014
    unless $I5014 goto if88_end162 
    set $N5012, $P103
    set $N5013, $P104
    add $N5011, $N5012, $N5013
    set $N5014, $P101
    iseq $I5015, $N5011, $N5014
    set $I5016, $I5015
  if88_end162:
    unless $I5016 goto if87_else159 
.annotate 'line', 128
    find_lex $P5052, "RETURN"
    $P5053 = $P5052(1)
    goto if87_end160
  if87_else159:
    set $N5015, $P104
    set $N5016, $P101
    isne $I5017, $N5015, $N5016
    box $P5057, $I5017
    set $P5056, $P5057
    unless $I5017 goto if89_end164 
.annotate 'line', 133
    find_lex $P5054, "RETURN"
    $P5055 = $P5054(0)
    set $P5056, $P5055
  if89_end164:
  if87_end160:
    set fb_tmp_22, _lex_param_0
    repr_defined $I5019, fb_tmp_22
    unless $I5019 goto if91_else167 
    set $P5059, fb_tmp_22["max_arity"]
    set $P5061, $P5059
    goto if91_end168
  if91_else167:
    null $P5060
    set $P5061, $P5060
  if91_end168:
    unless_null $P5061, vivi_92169
    null $P5062
    set $P5061, $P5062
  vivi_92169:
    set $N5017, $P5061
    find_lex $P5063, "$SLURPY_ARITY"
    set $N5018, $P5063
    isne $I5018, $N5017, $N5018
    set $I5022, $I5018
    unless $I5018 goto if90_end166 
    set fb_tmp_23, _lex_param_1
    repr_defined $I5021, fb_tmp_23
    unless $I5021 goto if93_else170 
    set $P5064, fb_tmp_23["max_arity"]
    set $P5066, $P5064
    goto if93_end171
  if93_else170:
    null $P5065
    set $P5066, $P5065
  if93_end171:
    unless_null $P5066, vivi_94172
    null $P5067
    set $P5066, $P5067
  vivi_94172:
    set $N5019, $P5066
    find_lex $P5068, "$SLURPY_ARITY"
    set $N5020, $P5068
    iseq $I5020, $N5019, $N5020
    set $I5022, $I5020
  if90_end166:
    find_lex $P5058, "RETURN"
    $P5069 = $P5058($I5022)
    goto lexotic_102
  lexotic_101:
    .get_results ($P5069)
  lexotic_102:
    .return ($P5069) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_72_1360432430.278") :anon :lex :outer("cuid_73_1360432430.278")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 112
    .lex "$type_obj_a", $P101 
    .lex "$type_obj_b", $P102 
    .local pmc fb_tmp_18 
    .local pmc fb_tmp_19 
    .local pmc fb_tmp_20 
    .local pmc fb_tmp_21 
    .local pmc tmp_1 
    .local pmc tmp_2 
    .local pmc tmp_3 
    .local pmc tmp_4 
    null $P5001
    set $P101, $P5001
    null $P5002
    set $P102, $P5002
    find_lex $P5003, "%a"
    set fb_tmp_19, $P5003
    repr_defined $I5002, fb_tmp_19
    unless $I5002 goto if77_else143 
    set $P5004, fb_tmp_19["types"]
    set $P5006, $P5004
    goto if77_end144
  if77_else143:
    null $P5005
    set $P5006, $P5005
  if77_end144:
    unless_null $P5006, vivi_78145
    null $P5007
    set $P5006, $P5007
  vivi_78145:
    set fb_tmp_18, $P5006
    repr_defined $I5001, fb_tmp_18
    unless $I5001 goto if76_else141 
    find_lex $P5009, "$i"
    set $I5003, $P5009
    set $P5008, fb_tmp_18[$I5003]
    set $P5011, $P5008
    goto if76_end142
  if76_else141:
    null $P5010
    set $P5011, $P5010
  if76_end142:
    unless_null $P5011, vivi_79146
    null $P5012
    set $P5011, $P5012
  vivi_79146:
    set $P101, $P5011
    find_lex $P5013, "%b"
    set fb_tmp_21, $P5013
    repr_defined $I5005, fb_tmp_21
    unless $I5005 goto if81_else149 
    set $P5014, fb_tmp_21["types"]
    set $P5016, $P5014
    goto if81_end150
  if81_else149:
    null $P5015
    set $P5016, $P5015
  if81_end150:
    unless_null $P5016, vivi_82151
    null $P5017
    set $P5016, $P5017
  vivi_82151:
    set fb_tmp_20, $P5016
    repr_defined $I5004, fb_tmp_20
    unless $I5004 goto if80_else147 
    find_lex $P5019, "$i"
    set $I5006, $P5019
    set $P5018, fb_tmp_20[$I5006]
    set $P5021, $P5018
    goto if80_end148
  if80_else147:
    null $P5020
    set $P5021, $P5020
  if80_end148:
    unless_null $P5021, vivi_83152
    null $P5022
    set $P5021, $P5022
  vivi_83152:
    set $P102, $P5021
    get_id $I5008, $P101
    get_id $I5009, $P102
    iseq $I5007, $I5008, $I5009
    unless $I5007 goto if84_else153 
.annotate 'line', 115
    find_lex $P5023, "$tied"
    set tmp_1, $P5023
    set $N5002, tmp_1
    set $N5003, 1
    add $N5001, $N5002, $N5003
    box $P5024, $N5001
    store_lex "$tied", $P5024
    goto if84_end154
  if84_else153:
.annotate 'line', 118
    $P5023 = "&is_narrower_type"($P101, $P102)
    unless $P5023 goto if85_else155 
    find_lex $P5024, "$narrower"
    set tmp_2, $P5024
    set $N5002, tmp_2
    set $N5003, 1
    add $N5001, $N5002, $N5003
    box $P5025, $N5001
    store_lex "$narrower", $P5025
    set $P5027, tmp_2
    goto if85_end156
  if85_else155:
.annotate 'line', 121
    $P5024 = "&is_narrower_type"($P102, $P101)
    isfalse $I5010, $P5024
    box $P5026, $I5010
    set $P5025, $P5026
    unless $I5010 goto if86_end158 
    find_lex $P5025, "$tied"
    set tmp_3, $P5025
    set $N5002, tmp_3
    set $N5003, 1
    add $N5001, $N5002, $N5003
    box $P5026, $N5001
    store_lex "$tied", $P5026
    set $P5025, tmp_3
  if86_end158:
    set $P5027, $P5025
  if85_end156:
  if84_end154:
    find_lex $P5028, "$i"
    set tmp_4, $P5028
    set $N5002, tmp_4
    set $N5003, 1
    add $N5001, $N5002, $N5003
    box $P5029, $N5001
    store_lex "$i", $P5029
    .return (tmp_4) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_74_1360432430.278") :anon :lex :outer("cuid_4_1360432430.278")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 146
    .lex "$candidate", $P101 
    .lex "$multi_sig", $P102 
    .lex "@types_list", $P103 
    .lex "@definedness_list", $P104 
    .lex "$sig_elems", $P105 
    .lex "%info", $P106 
    .lex "%significant_param", $P107 
    .lex "$j", $P108 
    .local pmc fb_tmp_24 
    .local pmc tmp_5 
    .local pmc fb_tmp_25 
    .local pmc tmp_6 
    .local pmc fb_tmp_26 
    .local pmc fb_tmp_27 
    .local pmc fb_tmp_28 
    .local pmc fb_tmp_29 
    .local pmc fb_tmp_30 
    .local pmc tmp_7 
    .local pmc fb_tmp_31 
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
    find_lex $P5010, "self"
    nqp_decontainerize $P5009, $P5010
    nqp_get_sc_object $P5011, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 5
    repr_get_attr_obj $P5012, $P5009, $P5011, "$!dispatchees"
    set fb_tmp_24, $P5012
    repr_defined $I5001, fb_tmp_24
    unless $I5001 goto if96_else180 
    find_lex $P5014, "$i"
    set $I5002, $P5014
    set $P5013, fb_tmp_24[$I5002]
    set $P5016, $P5013
    goto if96_end181
  if96_else180:
    null $P5015
    set $P5016, $P5015
  if96_end181:
    unless_null $P5016, vivi_97182
    null $P5017
    set $P5016, $P5017
  vivi_97182:
    set $P101, $P5016
.annotate 'line', 149
    $P5018 = $P101."signature"()
    set $P102, $P5018
.annotate 'line', 150
    $P5019 = $P102."types"()
    set $P103, $P5019
.annotate 'line', 151
    $P5020 = $P102."definednesses"()
    set $P104, $P5020
    elements $I5003, $P103
    box $P5021, $I5003
    set $P105, $P5021
    new $P5022, 'Hash'
    set $P5022["sub"], $P101
    new $P5023, 'ResizablePMCArray'
    set $P5022["types"], $P5023
    new $P5024, 'ResizablePMCArray'
    set $P5022["definednesses"], $P5024
    box $P5025, 0
    set $P5022["min_arity"], $P5025
    box $P5026, 0
    set $P5022["max_arity"], $P5026
    box $P5027, 0
    set $P5022["num_types"], $P5027
    set $P106, $P5022
    box $P5028, 0
    set $P107, $P5028
    box $P5029, 0
    set $P108, $P5029
  while98_test183:
    set $N5001, $P108
    set $N5002, $P105
    islt $I5004, $N5001, $N5002
    box $P5047, $I5004
    set $P5046, $P5047
    unless $I5004 goto while98_done187 
  while98_redo185:
.annotate 'line', 165
    set fb_tmp_25, $P106
    repr_defined $I5005, fb_tmp_25
    unless $I5005 goto if99_else188 
    set $P5030, fb_tmp_25["max_arity"]
    set $P5032, $P5030
    goto if99_end189
  if99_else188:
    null $P5031
    set $P5032, $P5031
  if99_end189:
    unless_null $P5032, vivi_100190
    null $P5033
    set $P5032, $P5033
  vivi_100190:
    set tmp_5, $P5032
    set $N5004, tmp_5
    set $N5005, 1
    add $N5003, $N5004, $N5005
    box $P5034, $N5003
    set $P106["max_arity"], $P5034
    set fb_tmp_26, $P106
    repr_defined $I5005, fb_tmp_26
    unless $I5005 goto if101_else191 
    set $P5030, fb_tmp_26["min_arity"]
    set $P5032, $P5030
    goto if101_end192
  if101_else191:
    null $P5031
    set $P5032, $P5031
  if101_end192:
    unless_null $P5032, vivi_102193
    null $P5033
    set $P5032, $P5033
  vivi_102193:
    set tmp_6, $P5032
    set $N5004, tmp_6
    set $N5005, 1
    add $N5003, $N5004, $N5005
    box $P5034, $N5003
    set $P106["min_arity"], $P5034
    set fb_tmp_27, $P106
    repr_defined $I5005, fb_tmp_27
    unless $I5005 goto if103_else194 
    set $P5030, fb_tmp_27["types"]
    set $P5032, $P5030
    goto if103_end195
  if103_else194:
    null $P5031
    set $P5032, $P5031
  if103_end195:
    unless_null $P5032, vivi_104196
    null $P5033
    set $P5032, $P5033
  vivi_104196:
    set fb_tmp_28, $P103
    repr_defined $I5006, fb_tmp_28
    unless $I5006 goto if105_else197 
    set $I5007, $P108
    set $P5034, fb_tmp_28[$I5007]
    set $P5036, $P5034
    goto if105_end198
  if105_else197:
    null $P5035
    set $P5036, $P5035
  if105_end198:
    unless_null $P5036, vivi_106199
    null $P5037
    set $P5036, $P5037
  vivi_106199:
    push $P5032, $P5036
    set fb_tmp_29, $P106
    repr_defined $I5008, fb_tmp_29
    unless $I5008 goto if107_else200 
    set $P5038, fb_tmp_29["definednesses"]
    set $P5040, $P5038
    goto if107_end201
  if107_else200:
    null $P5039
    set $P5040, $P5039
  if107_end201:
    unless_null $P5040, vivi_108202
    null $P5041
    set $P5040, $P5041
  vivi_108202:
    set fb_tmp_30, $P104
    repr_defined $I5009, fb_tmp_30
    unless $I5009 goto if109_else203 
    set $I5010, $P108
    set $P5042, fb_tmp_30[$I5010]
    set $P5044, $P5042
    goto if109_end204
  if109_else203:
    null $P5043
    set $P5044, $P5043
  if109_end204:
    unless_null $P5044, vivi_110205
    null $P5045
    set $P5044, $P5045
  vivi_110205:
    push $P5040, $P5044
    set fb_tmp_31, $P106
    repr_defined $I5011, fb_tmp_31
    unless $I5011 goto if111_else206 
    set $P5046, fb_tmp_31["num_types"]
    set $P5048, $P5046
    goto if111_end207
  if111_else206:
    null $P5047
    set $P5048, $P5047
  if111_end207:
    unless_null $P5048, vivi_112208
    null $P5049
    set $P5048, $P5049
  vivi_112208:
    set tmp_7, $P5048
    set $N5004, tmp_7
    set $N5005, 1
    add $N5003, $N5004, $N5005
    box $P5050, $N5003
    set $P106["num_types"], $P5050
    set tmp_8, $P108
    set $N5004, tmp_8
    set $N5005, 1
    add $N5003, $N5004, $N5005
    box $P5046, $N5003
    set $P108, $P5046
    set $P5046, tmp_8
    goto while98_test183 
  while98_done187:
    find_lex $P5048, "@graph"
    new $P5049, 'Hash'
    set $P5049["info"], $P106
    new $P5050, 'ResizablePMCArray'
    set $P5049["edges"], $P5050
    box $P5051, 0
    set $P5049["edges_in"], $P5051
    box $P5052, 0
    set $P5049["edges_out"], $P5052
    push $P5048, $P5049
    find_lex $P5053, "$i"
    set tmp_9, $P5053
    set $N5004, tmp_9
    set $N5005, 1
    add $N5003, $N5004, $N5005
    box $P5054, $N5003
    store_lex "$i", $P5054
    .return (tmp_9) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_75_1360432430.278") :anon :lex :outer("cuid_4_1360432430.278")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 192
    .lex "$j", $P101 
    .local pmc fb_tmp_32 
    .local pmc fb_tmp_33 
    .local pmc fb_tmp_34 
    .local pmc fb_tmp_35 
    .local pmc fb_tmp_36 
    .local pmc fb_tmp_37 
    .local pmc fb_tmp_38 
    .local pmc fb_tmp_39 
    .local pmc fb_tmp_40 
    .local pmc tmp_10 
    .local pmc fb_tmp_41 
    .local pmc fb_tmp_42 
    .local pmc fb_tmp_43 
    .local pmc tmp_11 
    .local pmc fb_tmp_44 
    .local pmc fb_tmp_45 
    .local pmc fb_tmp_46 
    .local pmc tmp_12 
    .local pmc tmp_13 
    null $P5001
    set $P101, $P5001
    box $P5002, 0
    set $P101, $P5002
  while114_test214:
    set $N5001, $P101
    find_lex $P5003, "$num_candidates"
    set $N5002, $P5003
    islt $I5001, $N5001, $N5002
    box $P5052, $I5001
    set $P5051, $P5052
    unless $I5001 goto while114_done218 
  while114_redo216:
.annotate 'line', 194
    find_lex $P5004, "$i"
    set $N5003, $P5004
    set $N5004, $P101
    isne $I5002, $N5003, $N5004
    unless $I5002 goto if115_end220 
.annotate 'line', 195
.annotate 'line', 196
    find_lex $P5005, "@graph"
    set fb_tmp_33, $P5005
    repr_defined $I5004, fb_tmp_33
    unless $I5004 goto if118_else225 
    find_lex $P5007, "$i"
    set $I5005, $P5007
    set $P5006, fb_tmp_33[$I5005]
    set $P5009, $P5006
    goto if118_end226
  if118_else225:
    null $P5008
    set $P5009, $P5008
  if118_end226:
    unless_null $P5009, vivi_119227
    null $P5010
    set $P5009, $P5010
  vivi_119227:
    set fb_tmp_32, $P5009
    repr_defined $I5003, fb_tmp_32
    unless $I5003 goto if117_else223 
    set $P5011, fb_tmp_32["info"]
    set $P5013, $P5011
    goto if117_end224
  if117_else223:
    null $P5012
    set $P5013, $P5012
  if117_end224:
    unless_null $P5013, vivi_120228
    null $P5014
    set $P5013, $P5014
  vivi_120228:
    find_lex $P5015, "@graph"
    set fb_tmp_35, $P5015
    repr_defined $I5007, fb_tmp_35
    unless $I5007 goto if122_else231 
    set $I5008, $P101
    set $P5016, fb_tmp_35[$I5008]
    set $P5018, $P5016
    goto if122_end232
  if122_else231:
    null $P5017
    set $P5018, $P5017
  if122_end232:
    unless_null $P5018, vivi_123233
    null $P5019
    set $P5018, $P5019
  vivi_123233:
    set fb_tmp_34, $P5018
    repr_defined $I5006, fb_tmp_34
    unless $I5006 goto if121_else229 
    set $P5020, fb_tmp_34["info"]
    set $P5022, $P5020
    goto if121_end230
  if121_else229:
    null $P5021
    set $P5022, $P5021
  if121_end230:
    unless_null $P5022, vivi_124234
    null $P5023
    set $P5022, $P5023
  vivi_124234:
    $P5024 = "&is_narrower"($P5013, $P5022)
    set $P5050, $P5024
    unless $P5024 goto if116_end222 
    find_lex $P5025, "@graph"
    set fb_tmp_37, $P5025
    repr_defined $I5010, fb_tmp_37
    unless $I5010 goto if126_else237 
    find_lex $P5027, "$i"
    set $I5011, $P5027
    set $P5026, fb_tmp_37[$I5011]
    set $P5029, $P5026
    goto if126_end238
  if126_else237:
    null $P5028
    set $P5029, $P5028
  if126_end238:
    unless_null $P5029, vivi_127239
    null $P5030
    set $P5029, $P5030
  vivi_127239:
    set fb_tmp_36, $P5029
    repr_defined $I5009, fb_tmp_36
    unless $I5009 goto if125_else235 
    set $P5031, fb_tmp_36["edges"]
    set $P5033, $P5031
    goto if125_end236
  if125_else235:
    null $P5032
    set $P5033, $P5032
  if125_end236:
    unless_null $P5033, vivi_128240
    null $P5034
    set $P5033, $P5034
  vivi_128240:
    find_lex $P5035, "@graph"
    set fb_tmp_39, $P5035
    repr_defined $I5013, fb_tmp_39
    unless $I5013 goto if130_else243 
    find_lex $P5037, "$i"
    set $I5014, $P5037
    set $P5036, fb_tmp_39[$I5014]
    set $P5039, $P5036
    goto if130_end244
  if130_else243:
    null $P5038
    set $P5039, $P5038
  if130_end244:
    unless_null $P5039, vivi_131245
    null $P5040
    set $P5039, $P5040
  vivi_131245:
    set fb_tmp_38, $P5039
    repr_defined $I5012, fb_tmp_38
    unless $I5012 goto if129_else241 
    set $P5041, fb_tmp_38["edges_out"]
    set $P5043, $P5041
    goto if129_end242
  if129_else241:
    null $P5042
    set $P5043, $P5042
  if129_end242:
    unless_null $P5043, vivi_132246
    null $P5044
    set $P5043, $P5044
  vivi_132246:
    set $I5015, $P5043
    find_lex $P5045, "@graph"
    set fb_tmp_40, $P5045
    repr_defined $I5016, fb_tmp_40
    unless $I5016 goto if133_else247 
    set $I5017, $P101
    set $P5046, fb_tmp_40[$I5017]
    set $P5048, $P5046
    goto if133_end248
  if133_else247:
    null $P5047
    set $P5048, $P5047
  if133_end248:
    unless_null $P5048, vivi_134249
    null $P5049
    set $P5048, $P5049
  vivi_134249:
    set $P5033[$I5015], $P5048
    find_lex $P5050, "@graph"
    set fb_tmp_42, $P5050
    repr_defined $I5019, fb_tmp_42
    unless $I5019 goto if136_else252 
    find_lex $P5052, "$i"
    set $I5020, $P5052
    set $P5051, fb_tmp_42[$I5020]
    set $P5054, $P5051
    goto if136_end253
  if136_else252:
    null $P5053
    set $P5054, $P5053
  if136_end253:
    unless_null $P5054, vivi_137254
    null $P5055
    set $P5054, $P5055
  vivi_137254:
    set fb_tmp_41, $P5054
    repr_defined $I5018, fb_tmp_41
    unless $I5018 goto if135_else250 
    set $P5056, fb_tmp_41["edges_out"]
    set $P5058, $P5056
    goto if135_end251
  if135_else250:
    null $P5057
    set $P5058, $P5057
  if135_end251:
    unless_null $P5058, vivi_138255
    null $P5059
    set $P5058, $P5059
  vivi_138255:
    set tmp_10, $P5058
    find_lex $P5060, "@graph"
    set fb_tmp_43, $P5060
    repr_defined $I5021, fb_tmp_43
    unless $I5021 goto if139_else256 
    find_lex $P5062, "$i"
    set $I5022, $P5062
    set $P5061, fb_tmp_43[$I5022]
    set $P5064, $P5061
    goto if139_end257
  if139_else256:
    null $P5063
    set $P5064, $P5063
  if139_end257:
    unless_null $P5064, vivi_140258
    null $P5065
    set $P5064, $P5065
  vivi_140258:
    set $N5006, tmp_10
    set $N5007, 1
    add $N5005, $N5006, $N5007
    box $P5066, $N5005
    set $P5064["edges_out"], $P5066
    find_lex $P5050, "@graph"
    set fb_tmp_45, $P5050
    repr_defined $I5019, fb_tmp_45
    unless $I5019 goto if142_else261 
    set $I5020, $P101
    set $P5051, fb_tmp_45[$I5020]
    set $P5053, $P5051
    goto if142_end262
  if142_else261:
    null $P5052
    set $P5053, $P5052
  if142_end262:
    unless_null $P5053, vivi_143263
    null $P5054
    set $P5053, $P5054
  vivi_143263:
    set fb_tmp_44, $P5053
    repr_defined $I5018, fb_tmp_44
    unless $I5018 goto if141_else259 
    set $P5055, fb_tmp_44["edges_in"]
    set $P5057, $P5055
    goto if141_end260
  if141_else259:
    null $P5056
    set $P5057, $P5056
  if141_end260:
    unless_null $P5057, vivi_144264
    null $P5058
    set $P5057, $P5058
  vivi_144264:
    set tmp_11, $P5057
    find_lex $P5059, "@graph"
    set fb_tmp_46, $P5059
    repr_defined $I5021, fb_tmp_46
    unless $I5021 goto if145_else265 
    set $I5022, $P101
    set $P5060, fb_tmp_46[$I5022]
    set $P5062, $P5060
    goto if145_end266
  if145_else265:
    null $P5061
    set $P5062, $P5061
  if145_end266:
    unless_null $P5062, vivi_146267
    null $P5063
    set $P5062, $P5063
  vivi_146267:
    set $N5006, tmp_11
    set $N5007, 1
    add $N5005, $N5006, $N5007
    box $P5064, $N5005
    set $P5062["edges_in"], $P5064
    set $P5050, tmp_11
  if116_end222:
  if115_end220:
    set tmp_12, $P101
    set $N5006, tmp_12
    set $N5007, 1
    add $N5005, $N5006, $N5007
    box $P5051, $N5005
    set $P101, $P5051
    set $P5051, tmp_12
    goto while114_test214 
  while114_done218:
    find_lex $P5053, "$i"
    set tmp_13, $P5053
    set $N5006, tmp_13
    set $N5007, 1
    add $N5005, $N5006, $N5007
    box $P5054, $N5005
    store_lex "$i", $P5054
    .return (tmp_13) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_77_1360432430.278") :anon :lex :outer("cuid_4_1360432430.278")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 210
    .const 'Sub' $P5054 = 'cuid_76_1360432430.278' 
    capture_lex $P5054 
    .lex "$rem_results", $P101 
    .lex "$i", $P102 
    .local pmc fb_tmp_47 
    .local pmc fb_tmp_48 
    .local pmc fb_tmp_49 
    .local pmc fb_tmp_50 
    .local pmc tmp_14 
    .local pmc fb_tmp_51 
    .local pmc tmp_15 
    .local pmc fb_tmp_52 
    .local pmc fb_tmp_53 
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
  while148_test273:
    set $N5001, $P102
    find_lex $P5006, "$num_candidates"
    set $N5002, $P5006
    islt $I5002, $N5001, $N5002
    box $P5033, $I5002
    set $P5032, $P5033
    unless $I5002 goto while148_done277 
  while148_redo275:
.annotate 'line', 216
    find_lex $P5007, "@graph"
    set fb_tmp_48, $P5007
    repr_defined $I5005, fb_tmp_48
    unless $I5005 goto if151_else282 
    set $I5006, $P102
    set $P5008, fb_tmp_48[$I5006]
    set $P5010, $P5008
    goto if151_end283
  if151_else282:
    null $P5009
    set $P5010, $P5009
  if151_end283:
    unless_null $P5010, vivi_152284
    null $P5011
    set $P5010, $P5011
  vivi_152284:
    set fb_tmp_47, $P5010
    repr_defined $I5004, fb_tmp_47
    unless $I5004 goto if150_else280 
    set $P5012, fb_tmp_47["edges_in"]
    set $P5014, $P5012
    goto if150_end281
  if150_else280:
    null $P5013
    set $P5014, $P5013
  if150_end281:
    unless_null $P5014, vivi_153285
    null $P5015
    set $P5014, $P5015
  vivi_153285:
    set $N5003, $P5014
    set $N5004, 0
    iseq $I5003, $N5003, $N5004
    unless $I5003 goto if149_end279 
.annotate 'line', 217
    find_lex $P5016, "@result"
    find_lex $P5017, "@graph"
    set fb_tmp_50, $P5017
    repr_defined $I5008, fb_tmp_50
    unless $I5008 goto if155_else288 
    set $I5009, $P102
    set $P5018, fb_tmp_50[$I5009]
    set $P5020, $P5018
    goto if155_end289
  if155_else288:
    null $P5019
    set $P5020, $P5019
  if155_end289:
    unless_null $P5020, vivi_156290
    null $P5021
    set $P5020, $P5021
  vivi_156290:
    set fb_tmp_49, $P5020
    repr_defined $I5007, fb_tmp_49
    unless $I5007 goto if154_else286 
    set $P5022, fb_tmp_49["info"]
    set $P5024, $P5022
    goto if154_end287
  if154_else286:
    null $P5023
    set $P5024, $P5023
  if154_end287:
    unless_null $P5024, vivi_157291
    null $P5025
    set $P5024, $P5025
  vivi_157291:
    push $P5016, $P5024
    find_lex $P5026, "$candidates_to_sort"
    set tmp_14, $P5026
    set $N5006, tmp_14
    set $N5007, 1
    sub $N5005, $N5006, $N5007
    box $P5027, $N5005
    store_lex "$candidates_to_sort", $P5027
    find_lex $P5026, "@graph"
    set fb_tmp_51, $P5026
    repr_defined $I5010, fb_tmp_51
    unless $I5010 goto if158_else292 
    set $I5011, $P102
    set $P5027, fb_tmp_51[$I5011]
    set $P5029, $P5027
    goto if158_end293
  if158_else292:
    null $P5028
    set $P5029, $P5028
  if158_end293:
    unless_null $P5029, vivi_159294
    null $P5030
    set $P5029, $P5030
  vivi_159294:
    find_lex $P5031, "$EDGE_REMOVAL_TODO"
    set $P5029["edges_in"], $P5031
  if149_end279:
    set tmp_15, $P102
    set $N5006, tmp_15
    set $N5007, 1
    add $N5005, $N5006, $N5007
    box $P5032, $N5005
    set $P102, $P5032
    set $P5032, tmp_15
    goto while148_test273 
  while148_done277:
    set $N5005, $P101
    find_lex $P5034, "@result"
    elements $I5013, $P5034
    set $N5006, $I5013
    iseq $I5012, $N5005, $N5006
    unless $I5012 goto if160_end296 
.annotate 'line', 225
    box $P5035, "Circularity detected in multi sub types"
    die $P5035
  if160_end296:
    box $P5036, 0
    set $P102, $P5036
  while161_test297:
    set $N5007, $P102
    find_lex $P5037, "$num_candidates"
    set $N5008, $P5037
    islt $I5014, $N5007, $N5008
    box $P5051, $I5014
    set $P5050, $P5051
    unless $I5014 goto while161_done301 
  while161_redo299:
.annotate 'line', 232
    find_lex $P5038, "@graph"
    set fb_tmp_53, $P5038
    repr_defined $I5017, fb_tmp_53
    unless $I5017 goto if164_else306 
    set $I5018, $P102
    set $P5039, fb_tmp_53[$I5018]
    set $P5041, $P5039
    goto if164_end307
  if164_else306:
    null $P5040
    set $P5041, $P5040
  if164_end307:
    unless_null $P5041, vivi_165308
    null $P5042
    set $P5041, $P5042
  vivi_165308:
    set fb_tmp_52, $P5041
    repr_defined $I5016, fb_tmp_52
    unless $I5016 goto if163_else304 
    set $P5043, fb_tmp_52["edges_in"]
    set $P5045, $P5043
    goto if163_end305
  if163_else304:
    null $P5044
    set $P5045, $P5044
  if163_end305:
    unless_null $P5045, vivi_166309
    null $P5046
    set $P5045, $P5046
  vivi_166309:
    set $N5009, $P5045
    find_lex $P5047, "$EDGE_REMOVAL_TODO"
    set $N5010, $P5047
    iseq $I5015, $N5009, $N5010
    unless $I5015 goto if162_end303 
    .const 'Sub' $P5048 = 'cuid_76_1360432430.278' 
    capture_lex $P5048
    $P5049 = $P5048()
  if162_end303:
    set tmp_18, $P102
    set $N5012, tmp_18
    set $N5013, 1
    add $N5011, $N5012, $N5013
    box $P5050, $N5011
    set $P102, $P5050
    set $P5050, tmp_18
    goto while161_test297 
  while161_done301:
    find_lex $P5052, "@result"
    null $P5053
    push $P5052, $P5053
    .return ($P5052) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_76_1360432430.278") :anon :lex :outer("cuid_77_1360432430.278")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 233
    .lex "$j", $P101 
    .local pmc fb_tmp_54 
    .local pmc fb_tmp_55 
    .local pmc tmp_16 
    .local pmc fb_tmp_56 
    .local pmc fb_tmp_57 
    .local pmc fb_tmp_58 
    .local pmc fb_tmp_59 
    .local pmc fb_tmp_60 
    .local pmc fb_tmp_61 
    .local pmc fb_tmp_62 
    .local pmc tmp_17 
    .local pmc fb_tmp_63 
    null $P5001
    set $P101, $P5001
    box $P5002, 0
    set $P101, $P5002
  while167_test310:
    set $N5001, $P101
    find_lex $P5003, "@graph"
    set fb_tmp_55, $P5003
    repr_defined $I5003, fb_tmp_55
    unless $I5003 goto if169_else317 
    find_lex $P5005, "$i"
    set $I5004, $P5005
    set $P5004, fb_tmp_55[$I5004]
    set $P5007, $P5004
    goto if169_end318
  if169_else317:
    null $P5006
    set $P5007, $P5006
  if169_end318:
    unless_null $P5007, vivi_170319
    null $P5008
    set $P5007, $P5008
  vivi_170319:
    set fb_tmp_54, $P5007
    repr_defined $I5002, fb_tmp_54
    unless $I5002 goto if168_else315 
    set $P5009, fb_tmp_54["edges_out"]
    set $P5011, $P5009
    goto if168_end316
  if168_else315:
    null $P5010
    set $P5011, $P5010
  if168_end316:
    unless_null $P5011, vivi_171320
    null $P5012
    set $P5011, $P5012
  vivi_171320:
    set $N5002, $P5011
    islt $I5001, $N5001, $N5002
    box $P5014, $I5001
    set $P5013, $P5014
    unless $I5001 goto while167_done314 
  while167_redo312:
.annotate 'line', 235
    find_lex $P5013, "@graph"
    set fb_tmp_59, $P5013
    repr_defined $I5008, fb_tmp_59
    unless $I5008 goto if175_else327 
    find_lex $P5015, "$i"
    set $I5009, $P5015
    set $P5014, fb_tmp_59[$I5009]
    set $P5017, $P5014
    goto if175_end328
  if175_else327:
    null $P5016
    set $P5017, $P5016
  if175_end328:
    unless_null $P5017, vivi_176329
    null $P5018
    set $P5017, $P5018
  vivi_176329:
    set fb_tmp_58, $P5017
    repr_defined $I5007, fb_tmp_58
    unless $I5007 goto if174_else325 
    set $P5019, fb_tmp_58["edges"]
    set $P5021, $P5019
    goto if174_end326
  if174_else325:
    null $P5020
    set $P5021, $P5020
  if174_end326:
    unless_null $P5021, vivi_177330
    null $P5022
    set $P5021, $P5022
  vivi_177330:
    set fb_tmp_57, $P5021
    repr_defined $I5006, fb_tmp_57
    unless $I5006 goto if173_else323 
    set $I5010, $P101
    set $P5023, fb_tmp_57[$I5010]
    set $P5025, $P5023
    goto if173_end324
  if173_else323:
    null $P5024
    set $P5025, $P5024
  if173_end324:
    unless_null $P5025, vivi_178331
    null $P5026
    set $P5025, $P5026
  vivi_178331:
    set fb_tmp_56, $P5025
    repr_defined $I5005, fb_tmp_56
    unless $I5005 goto if172_else321 
    set $P5027, fb_tmp_56["edges_in"]
    set $P5029, $P5027
    goto if172_end322
  if172_else321:
    null $P5028
    set $P5029, $P5028
  if172_end322:
    unless_null $P5029, vivi_179332
    null $P5030
    set $P5029, $P5030
  vivi_179332:
    set tmp_16, $P5029
    find_lex $P5031, "@graph"
    set fb_tmp_62, $P5031
    repr_defined $I5013, fb_tmp_62
    unless $I5013 goto if182_else337 
    find_lex $P5033, "$i"
    set $I5014, $P5033
    set $P5032, fb_tmp_62[$I5014]
    set $P5035, $P5032
    goto if182_end338
  if182_else337:
    null $P5034
    set $P5035, $P5034
  if182_end338:
    unless_null $P5035, vivi_183339
    null $P5036
    set $P5035, $P5036
  vivi_183339:
    set fb_tmp_61, $P5035
    repr_defined $I5012, fb_tmp_61
    unless $I5012 goto if181_else335 
    set $P5037, fb_tmp_61["edges"]
    set $P5039, $P5037
    goto if181_end336
  if181_else335:
    null $P5038
    set $P5039, $P5038
  if181_end336:
    unless_null $P5039, vivi_184340
    null $P5040
    set $P5039, $P5040
  vivi_184340:
    set fb_tmp_60, $P5039
    repr_defined $I5011, fb_tmp_60
    unless $I5011 goto if180_else333 
    set $I5015, $P101
    set $P5041, fb_tmp_60[$I5015]
    set $P5043, $P5041
    goto if180_end334
  if180_else333:
    null $P5042
    set $P5043, $P5042
  if180_end334:
    unless_null $P5043, vivi_185341
    null $P5044
    set $P5043, $P5044
  vivi_185341:
    set $N5004, tmp_16
    set $N5005, 1
    sub $N5003, $N5004, $N5005
    box $P5045, $N5003
    set $P5043["edges_in"], $P5045
    set tmp_17, $P101
    set $N5004, tmp_17
    set $N5005, 1
    add $N5003, $N5004, $N5005
    box $P5013, $N5003
    set $P101, $P5013
    set $P5013, tmp_17
    goto while167_test310 
  while167_done314:
    find_lex $P5015, "@graph"
    set fb_tmp_63, $P5015
    repr_defined $I5005, fb_tmp_63
    unless $I5005 goto if186_else342 
    find_lex $P5017, "$i"
    set $I5006, $P5017
    set $P5016, fb_tmp_63[$I5006]
    set $P5019, $P5016
    goto if186_end343
  if186_else342:
    null $P5018
    set $P5019, $P5018
  if186_end343:
    unless_null $P5019, vivi_187344
    null $P5020
    set $P5019, $P5020
  vivi_187344:
    find_lex $P5021, "$EDGE_REMOVED"
    set $P5019["edges_in"], $P5021
    .return ($P5021) 
.end
.HLL "nqp"
.namespace []
.sub "dispatch" :subid("cuid_5_1360432430.278") :anon :lex :outer("cuid_71_1360432430.278")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 254
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5065 = 'cuid_79_1360432430.278' 
    capture_lex $P5065 
    .const 'Sub' $P5065 = 'cuid_80_1360432430.278' 
    capture_lex $P5065 
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
    .local pmc fb_tmp_64 
    .local pmc tmp_19 
    .local pmc fb_tmp_65 
    .local pmc fb_tmp_66 
    .local pmc fb_tmp_67 
    .local pmc tmp_20 
    .local pmc fb_tmp_68 
    .local pmc fb_tmp_69 
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
    nqp_get_sc_object $P5012, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 5
    repr_get_attr_obj $P5013, $P5011, $P5012, "$!dispatch_order"
    set $P102, $P5013
    isnull $I5002, $P102
    unless $I5002 goto if188_end346 
.annotate 'line', 260
    nqp_disable_sc_write_barrier 
    nqp_decontainerize $P5014, _lex_param_0
    nqp_get_sc_object $P5015, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 5
.annotate 'line', 262
    nqp_decontainerize $P5016, _lex_param_0
    $P5017 = $P5016."sort_dispatchees"()
    repr_bind_attr_obj $P5014, $P5015, "$!dispatch_order", $P5017
    set $P102, $P5017
    nqp_enable_sc_write_barrier 
  if188_end346:
    elements $I5003, $P102
    box $P5018, $I5003
    set $P103, $P5018
    box $P5019, 0
    set $P108, $P5019
    new $P5053, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5053, while189_handlers350
    push_eh $P5053
  while189_test347:
    box $P5054, 1
    set $P5052, $P5054
    unless 1 goto while189_done351 
  while189_redo349:
.annotate 'line', 277
    set fb_tmp_64, $P102
    repr_defined $I5004, fb_tmp_64
    unless $I5004 goto if190_else352 
    set $I5005, $P108
    set $P5020, fb_tmp_64[$I5005]
    set $P5022, $P5020
    goto if190_end353
  if190_else352:
    null $P5021
    set $P5022, $P5021
  if190_end353:
    unless_null $P5022, vivi_191354
    null $P5023
    set $P5022, $P5023
  vivi_191354:
    set $P109, $P5022
    isnull $I5006, $P109
    unless $I5006 goto if192_end356 
.annotate 'line', 280
    elements $I5007, $P104
    unless $I5007 goto if193_end358 
.annotate 'line', 282
    die 0, .CONTROL_LOOP_LAST
  if193_end358:
    set tmp_19, $P108
    set $N5002, tmp_19
    set $N5003, 1
    add $N5001, $N5002, $N5003
    box $P5024, $N5001
    set $P108, $P5024
    set fb_tmp_65, $P102
    repr_defined $I5009, fb_tmp_65
    unless $I5009 goto if195_else361 
    set $I5010, $P108
    set $P5024, fb_tmp_65[$I5010]
    set $P5026, $P5024
    goto if195_end362
  if195_else361:
    null $P5025
    set $P5026, $P5025
  if195_end362:
    unless_null $P5026, vivi_196363
    null $P5027
    set $P5026, $P5027
  vivi_196363:
    isnull $I5008, $P5026
    unless $I5008 goto if194_else359 
.annotate 'line', 288
    die 0, .CONTROL_LOOP_LAST
    set $I5011, 0
    goto if194_end360
  if194_else359:
.annotate 'line', 291
    die 0, .CONTROL_LOOP_NEXT
    set $I5011, 0
  if194_end360:
  if192_end356:
    set $N5001, $P101
    set fb_tmp_66, $P109
    repr_defined $I5013, fb_tmp_66
    unless $I5013 goto if199_else368 
    set $P5028, fb_tmp_66["min_arity"]
    set $P5030, $P5028
    goto if199_end369
  if199_else368:
    null $P5029
    set $P5030, $P5029
  if199_end369:
    unless_null $P5030, vivi_200370
    null $P5031
    set $P5030, $P5031
  vivi_200370:
    set $N5002, $P5030
    islt $I5012, $N5001, $N5002
    set $I5016, $I5012
    if $I5012 goto unless198_end367 
    set $N5003, $P101
    set fb_tmp_67, $P109
    repr_defined $I5015, fb_tmp_67
    unless $I5015 goto if201_else371 
    set $P5032, fb_tmp_67["max_arity"]
    set $P5034, $P5032
    goto if201_end372
  if201_else371:
    null $P5033
    set $P5034, $P5033
  if201_end372:
    unless_null $P5034, vivi_202373
    null $P5035
    set $P5034, $P5035
  vivi_202373:
    set $N5004, $P5034
    isgt $I5014, $N5003, $N5004
    set $I5016, $I5014
  unless198_end367:
    unless $I5016 goto if197_end365 
.annotate 'line', 297
    set tmp_20, $P108
    set $N5006, tmp_20
    set $N5007, 1
    add $N5005, $N5006, $N5007
    box $P5036, $N5005
    set $P108, $P5036
    die 0, .CONTROL_LOOP_NEXT
  if197_end365:
    set fb_tmp_68, $P109
    repr_defined $I5018, fb_tmp_68
    unless $I5018 goto if204_else376 
    set $P5036, fb_tmp_68["num_types"]
    set $P5038, $P5036
    goto if204_end377
  if204_else376:
    null $P5037
    set $P5038, $P5037
  if204_end377:
    unless_null $P5038, vivi_205378
    null $P5039
    set $P5038, $P5039
  vivi_205378:
    set $N5005, $P5038
    set $N5006, $P101
    isgt $I5017, $N5005, $N5006
    unless $I5017 goto if203_else374 
    set $P5044, $P101
    goto if203_end375
  if203_else374:
    set fb_tmp_69, $P109
    repr_defined $I5019, fb_tmp_69
    unless $I5019 goto if206_else379 
    set $P5040, fb_tmp_69["num_types"]
    set $P5042, $P5040
    goto if206_end380
  if206_else379:
    null $P5041
    set $P5042, $P5041
  if206_end380:
    unless_null $P5042, vivi_207381
    null $P5043
    set $P5042, $P5043
  vivi_207381:
    set $P5044, $P5042
  if203_end375:
    set $P106, $P5044
    box $P5045, 0
    set $P105, $P5045
    box $P5046, 0
    set $P107, $P5046
    new $P5050, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5050, while208_handlers385
    push_eh $P5050
  while208_test382:
    set $N5007, $P107
    set $N5008, $P106
    islt $I5020, $N5007, $N5008
    box $P5051, $I5020
    set $P5049, $P5051
    unless $I5020 goto while208_done386 
  while208_redo384:
    .const 'Sub' $P5047 = 'cuid_79_1360432430.278' 
    capture_lex $P5047
    $P5048 = $P5047()
    set $P5049, $P5048
    goto while208_test382 
  while208_handlers385:
    .get_results ($P5050)
    pop_upto_eh $P5050
    getattribute $P5050, $P5050, 'type'
    eq $P5050, .CONTROL_LOOP_NEXT, while208_test382
    eq $P5050, .CONTROL_LOOP_REDO, while208_redo384
  while208_done386:
    pop_eh 
    unless $P105 goto if225_end416 
.annotate 'line', 328
    set tmp_22, $P108
    set $N5010, tmp_22
    set $N5011, 1
    add $N5009, $N5010, $N5011
    box $P5052, $N5009
    set $P108, $P5052
    die 0, .CONTROL_LOOP_NEXT
  if225_end416:
    push $P104, $P109
    set tmp_23, $P108
    set $N5010, tmp_23
    set $N5011, 1
    add $N5009, $N5010, $N5011
    box $P5052, $N5009
    set $P108, $P5052
    set $P5052, tmp_23
    goto while189_test347 
  while189_handlers350:
    .get_results ($P5053)
    pop_upto_eh $P5053
    getattribute $P5053, $P5053, 'type'
    eq $P5053, .CONTROL_LOOP_NEXT, while189_test347
    eq $P5053, .CONTROL_LOOP_REDO, while189_redo349
  while189_done351:
    pop_eh 
    elements $I5022, $P104
    set $N5009, $I5022
    set $N5010, 1
    iseq $I5021, $N5009, $N5010
    unless $I5021 goto if226_else417 
    .const 'Sub' $P5055 = 'cuid_80_1360432430.278' 
    capture_lex $P5055
    $P5056 = $P5055()
    set $P5064, $P5056
    goto if226_end418
  if226_else417:
    elements $I5024, $P104
    set $N5011, $I5024
    set $N5012, 0
    iseq $I5023, $N5011, $N5012
    unless $I5023 goto if231_else425 
.annotate 'line', 346
.annotate 'line', 348
    nqp_decontainerize $P5057, _lex_param_0
    $P5058 = $P5057."name"()
    set $S5003, $P5058
    concat $S5002, "No applicable candidates found to dispatch to for '", $S5003
    concat $S5001, $S5002, "'."
    box $P5059, $S5001
    die $P5059
    set $P5063, $P5059
    goto if231_end426
  if231_else425:
.annotate 'line', 350
.annotate 'line', 352
    nqp_decontainerize $P5060, _lex_param_0
    $P5061 = $P5060."name"()
    set $S5006, $P5061
    concat $S5005, "Ambiguous dispatch to multi '", $S5006
    concat $S5004, $S5005, "'."
    box $P5062, $S5004
    die $P5062
    set $P5063, $P5062
  if231_end426:
    set $P5064, $P5063
  if226_end418:
    .return ($P5064) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_79_1360432430.278") :anon :lex :outer("cuid_5_1360432430.278")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 308
    .const 'Sub' $P5035 = 'cuid_78_1360432430.278' 
    capture_lex $P5035 
    .lex "$param", $P101 
    .lex "$param_type", $P102 
    .lex "$type_obj", $P103 
    .lex "$definedness", $P104 
    .local pmc fb_tmp_70 
    .local pmc fb_tmp_71 
    .local pmc fb_tmp_72 
    .local pmc fb_tmp_73 
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
    find_lex $P5009, "$cur_candidate"
    set fb_tmp_71, $P5009
    repr_defined $I5003, fb_tmp_71
    unless $I5003 goto if210_else389 
    set $P5010, fb_tmp_71["types"]
    set $P5012, $P5010
    goto if210_end390
  if210_else389:
    null $P5011
    set $P5012, $P5011
  if210_end390:
    unless_null $P5012, vivi_211391
    null $P5013
    set $P5012, $P5013
  vivi_211391:
    set fb_tmp_70, $P5012
    repr_defined $I5002, fb_tmp_70
    unless $I5002 goto if209_else387 
    find_lex $P5015, "$i"
    set $I5004, $P5015
    set $P5014, fb_tmp_70[$I5004]
    set $P5017, $P5014
    goto if209_end388
  if209_else387:
    null $P5016
    set $P5017, $P5016
  if209_end388:
    unless_null $P5017, vivi_212392
    null $P5018
    set $P5017, $P5018
  vivi_212392:
    set $P103, $P5017
    find_lex $P5019, "$cur_candidate"
    set fb_tmp_73, $P5019
    repr_defined $I5006, fb_tmp_73
    unless $I5006 goto if214_else395 
    set $P5020, fb_tmp_73["definednesses"]
    set $P5022, $P5020
    goto if214_end396
  if214_else395:
    null $P5021
    set $P5022, $P5021
  if214_end396:
    unless_null $P5022, vivi_215397
    null $P5023
    set $P5022, $P5023
  vivi_215397:
    set fb_tmp_72, $P5022
    repr_defined $I5005, fb_tmp_72
    unless $I5005 goto if213_else393 
    find_lex $P5025, "$i"
    set $I5007, $P5025
    set $P5024, fb_tmp_72[$I5007]
    set $P5027, $P5024
    goto if213_end394
  if213_else393:
    null $P5026
    set $P5027, $P5026
  if213_end394:
    unless_null $P5027, vivi_216398
    null $P5028
    set $P5027, $P5028
  vivi_216398:
    set $P104, $P5027
    get_id $I5009, $P102
    get_id $I5010, $P103
    iseq $I5008, $I5009, $I5010
    box $P5031, $I5008
    set $P5030, $P5031
    if $I5008 goto unless218_end402 
.annotate 'line', 313
    $P5029 = "&is_narrower_type"($P102, $P103)
    set $P5030, $P5029
  unless218_end402:
    if $P5030 goto unless217_end400 
    box $P5032, 1
    store_lex "$type_mismatch", $P5032
    die 0, .CONTROL_LOOP_LAST
  unless217_end400:
    unless $P104 goto if219_end404 
    .const 'Sub' $P5033 = 'cuid_78_1360432430.278' 
    capture_lex $P5033
    $P5034 = $P5033()
  if219_end404:
    find_lex $P5035, "$i"
    set tmp_21, $P5035
    set $N5002, tmp_21
    set $N5003, 1
    add $N5001, $N5002, $N5003
    box $P5036, $N5001
    store_lex "$i", $P5036
    .return (tmp_21) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_78_1360432430.278") :anon :lex :outer("cuid_79_1360432430.278")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 317
    .lex "$defined", $P101 
    null $P5001
    set $P101, $P5001
    find_lex $P5002, "$param_type"
    isnull $I5001, $P5002
    unless $I5001 goto if220_else405 
    find_lex $P5003, "$param"
    defined $I5002, $P5003
    set $I5004, $I5002
    goto if220_end406
  if220_else405:
    find_lex $P5004, "$param"
    repr_defined $I5003, $P5004
    set $I5004, $I5003
  if220_end406:
    box $P5005, $I5004
    set $P101, $P5005
    isfalse $I5005, $P101
    set $I5007, $I5005
    unless $I5005 goto if223_end412 
    find_lex $P5006, "$definedness"
    set $N5001, $P5006
    find_lex $P5007, "$DEFINED_ONLY"
    set $N5002, $P5007
    iseq $I5006, $N5001, $N5002
    set $I5007, $I5006
  if223_end412:
    box $P5013, $I5007
    set $P5012, $P5013
    if $I5007 goto unless222_end410 
    set $P5010, $P101
    unless $P101 goto if224_end414 
    find_lex $P5008, "$definedness"
    set $N5003, $P5008
    find_lex $P5009, "$UNDEFINED_ONLY"
    set $N5004, $P5009
    iseq $I5008, $N5003, $N5004
    box $P5011, $I5008
    set $P5010, $P5011
  if224_end414:
    set $P5012, $P5010
  unless222_end410:
    set $P5015, $P5012
    unless $P5012 goto if221_end408 
.annotate 'line', 320
    box $P5014, 1
    store_lex "$type_mismatch", $P5014
    die 0, .CONTROL_LOOP_LAST
    box $P5016, 0
    set $P5015, $P5016
  if221_end408:
    .return ($P5015) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_80_1360432430.278") :anon :lex :outer("cuid_5_1360432430.278")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 339
    .lex "$result", $P101 
    .local pmc fb_tmp_74 
    .local pmc fb_tmp_75 
    null $P5001
    set $P101, $P5001
    find_lex $P5002, "@possibles"
    set fb_tmp_75, $P5002
    repr_defined $I5002, fb_tmp_75
    unless $I5002 goto if228_else421 
    set $P5003, fb_tmp_75[0]
    set $P5005, $P5003
    goto if228_end422
  if228_else421:
    null $P5004
    set $P5005, $P5004
  if228_end422:
    unless_null $P5005, vivi_229423
    null $P5006
    set $P5005, $P5006
  vivi_229423:
    set fb_tmp_74, $P5005
    repr_defined $I5001, fb_tmp_74
    unless $I5001 goto if227_else419 
    set $P5007, fb_tmp_74["sub"]
    set $P5009, $P5007
    goto if227_end420
  if227_else419:
    null $P5008
    set $P5009, $P5008
  if227_end420:
    unless_null $P5009, vivi_230424
    null $P5010
    set $P5009, $P5010
  vivi_230424:
    set $P101, $P5009
    nqp_disable_sc_write_barrier 
    find_lex $P5012, "self"
    nqp_decontainerize $P5011, $P5012
    nqp_get_sc_object $P5013, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 5
    find_lex $P5016, "self"
    nqp_decontainerize $P5015, $P5016
    nqp_get_sc_object $P5017, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 5
    repr_get_attr_obj $P5018, $P5015, $P5017, "$!dispatch_cache"
    find_lex $P5019, "$capture"
    multi_cache_add $P5014, $P5018, $P5019, $P101
    repr_bind_attr_obj $P5011, $P5013, "$!dispatch_cache", $P5014
    nqp_enable_sc_write_barrier 
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "clone" :subid("cuid_6_1360432430.278") :anon :lex :outer("cuid_71_1360432430.278")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 356
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
    nqp_get_sc_object $P5006, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 5
    repr_get_attr_obj $P5007, $P5005, $P5006, "$!do"
    repr_clone $P5004, $P5007
    set $P101, $P5004
    nqp_decontainerize $P5009, _lex_param_0
    repr_clone $P5008, $P5009
    set $P102, $P5008
    nqp_get_sc_object $P5010, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 5
    setattribute $P102, $P5010, "$!do", $P101
    set_sub_code_object $P101, $P102
    nqp_decontainerize $P5012, _lex_param_0
    nqp_get_sc_object $P5013, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 5
    repr_get_attr_obj $P5014, $P5012, $P5013, "$!do"
    getprop $P5011, $P5014, "CLONE_CALLBACK"
    set $P103, $P5011
    defined $I5001, $P103
    unless $I5001 goto if232_end428 
.annotate 'line', 367
.annotate 'line', 368
    nqp_decontainerize $P5015, _lex_param_0
    nqp_get_sc_object $P5016, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 5
    repr_get_attr_obj $P5017, $P5015, $P5016, "$!do"
    $P5018 = $P103($P5017, $P101, $P102)
  if232_end428:
    nqp_decontainerize $P5019, _lex_param_0
    nqp_get_sc_object $P5020, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 5
    repr_get_attr_obj $P5021, $P5019, $P5020, "$!clone_callback"
    isnull $I5002, $P5021
    if $I5002 goto unless233_end430 
.annotate 'line', 370
.annotate 'line', 371
    nqp_decontainerize $P5025, _lex_param_0
    nqp_get_sc_object $P5026, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 5
    repr_get_attr_obj $P5027, $P5025, $P5026, "$!do"
    nqp_decontainerize $P5022, _lex_param_0
    nqp_get_sc_object $P5023, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 5
    repr_get_attr_obj $P5024, $P5022, $P5023, "$!clone_callback"
    $P5028 = $P5024($P5027, $P101, $P102)
  unless233_end430:
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "!set_name" :subid("cuid_7_1360432430.278") :anon :lex :outer("cuid_71_1360432430.278")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 377
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 5
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!do"
    set $S5001, _lex_param_1
    assign $P5003, $S5001
    .return ($S5001) 
.end
.HLL "nqp"
.namespace []
.sub "name" :subid("cuid_8_1360432430.278") :anon :lex :outer("cuid_71_1360432430.278")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 381
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 5
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!do"
    set $S5001, $P5003
    .return ($S5001) 
.end
.HLL "nqp"
.namespace []
.sub "signature" :subid("cuid_9_1360432430.278") :anon :lex :outer("cuid_71_1360432430.278")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 385
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 5
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!signature"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_81_1360432430.278") :anon :lex :outer("cuid_48_1360432430.278")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 392
    .const 'Sub' $P5003 = 'cuid_10_1360432430.278' 
    capture_lex $P5003 
    .const 'Sub' $P5003 = 'cuid_11_1360432430.278' 
    capture_lex $P5003 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_10_1360432430.278' 
    capture_lex $P5001
    .const 'Sub' $P5002 = 'cuid_11_1360432430.278' 
    capture_lex $P5002
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "types" :subid("cuid_10_1360432430.278") :anon :lex :outer("cuid_81_1360432430.278")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 395
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 6
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!types"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "definednesses" :subid("cuid_11_1360432430.278") :anon :lex :outer("cuid_81_1360432430.278")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 396
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 6
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!definednesses"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_82_1360432430.278") :anon :lex :outer("cuid_48_1360432430.278")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 399
    .const 'Sub' $P5017 = 'cuid_12_1360432430.278' 
    capture_lex $P5017 
    .const 'Sub' $P5017 = 'cuid_13_1360432430.278' 
    capture_lex $P5017 
    .const 'Sub' $P5017 = 'cuid_14_1360432430.278' 
    capture_lex $P5017 
    .const 'Sub' $P5017 = 'cuid_15_1360432430.278' 
    capture_lex $P5017 
    .const 'Sub' $P5017 = 'cuid_16_1360432430.278' 
    capture_lex $P5017 
    .const 'Sub' $P5017 = 'cuid_17_1360432430.278' 
    capture_lex $P5017 
    .const 'Sub' $P5017 = 'cuid_18_1360432430.278' 
    capture_lex $P5017 
    .const 'Sub' $P5017 = 'cuid_19_1360432430.278' 
    capture_lex $P5017 
    .const 'Sub' $P5017 = 'cuid_20_1360432430.278' 
    capture_lex $P5017 
    .const 'Sub' $P5017 = 'cuid_21_1360432430.278' 
    capture_lex $P5017 
    .const 'Sub' $P5017 = 'cuid_22_1360432430.278' 
    capture_lex $P5017 
    .const 'Sub' $P5017 = 'cuid_23_1360432430.278' 
    capture_lex $P5017 
    .const 'Sub' $P5017 = 'cuid_24_1360432430.278' 
    capture_lex $P5017 
    .const 'Sub' $P5017 = 'cuid_25_1360432430.278' 
    capture_lex $P5017 
    .const 'Sub' $P5017 = 'cuid_26_1360432430.278' 
    capture_lex $P5017 
    .lex "$nfa_type", $P101 
    .lex "$?PACKAGE", $P102 
    .lex "$?CLASS", $P103 
    null $P5001
    set $P101, $P5001
    .const 'Sub' $P5002 = 'cuid_12_1360432430.278' 
    capture_lex $P5002
    .const 'Sub' $P5003 = 'cuid_13_1360432430.278' 
    capture_lex $P5003
    .const 'Sub' $P5004 = 'cuid_14_1360432430.278' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_15_1360432430.278' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_16_1360432430.278' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_17_1360432430.278' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_18_1360432430.278' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_19_1360432430.278' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_20_1360432430.278' 
    capture_lex $P5010
    .const 'Sub' $P5011 = 'cuid_21_1360432430.278' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_22_1360432430.278' 
    capture_lex $P5012
    .const 'Sub' $P5013 = 'cuid_23_1360432430.278' 
    capture_lex $P5013
    .const 'Sub' $P5014 = 'cuid_24_1360432430.278' 
    capture_lex $P5014
    .const 'Sub' $P5015 = 'cuid_25_1360432430.278' 
    capture_lex $P5015
    .const 'Sub' $P5016 = 'cuid_26_1360432430.278' 
    capture_lex $P5016
    .return ($P5016) 
.end
.HLL "nqp"
.namespace []
.sub "SET_CAPS" :subid("cuid_12_1360432430.278") :anon :lex :outer("cuid_82_1360432430.278")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 407
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$caps", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 9
    repr_bind_attr_obj $P5001, $P5002, "$!caps", _lex_param_1
    .return (_lex_param_1) 
.end
.HLL "nqp"
.namespace []
.sub "SET_NFA" :subid("cuid_13_1360432430.278") :anon :lex :outer("cuid_82_1360432430.278")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 410
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$nfa", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 9
    repr_bind_attr_obj $P5001, $P5002, "$!nfa", _lex_param_1
    .return (_lex_param_1) 
.end
.HLL "nqp"
.namespace []
.sub "SET_ALT_NFA" :subid("cuid_14_1360432430.278") :anon :lex :outer("cuid_82_1360432430.278")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 413
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    .lex "$nfa", _lex_param_2 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 9
    repr_get_attr_obj $P5003, $P5001, $P5002, "%!alt_nfas"
    unless_null $P5003, vivi_234431
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 9
    new $P5006, 'Hash'
    repr_bind_attr_obj $P5004, $P5005, "%!alt_nfas", $P5006
    set $P5003, $P5006
  vivi_234431:
    nqp_decontainerize $P5007, _lex_param_0
    nqp_get_sc_object $P5008, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 9
    repr_get_attr_obj $P5009, $P5007, $P5008, "%!alt_nfas"
    set $S5001, _lex_param_1
    set $P5009[$S5001], _lex_param_2
    .return (_lex_param_2) 
.end
.HLL "nqp"
.namespace []
.sub "SET_GENERIC_NFA" :subid("cuid_15_1360432430.278") :anon :lex :outer("cuid_82_1360432430.278")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 417
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$nfa", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 9
.annotate 'line', 418
    $P5003 = _lex_param_1."save"()
    repr_bind_attr_obj $P5001, $P5002, "$!generic_nfa", $P5003
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "ADD_NESTED_CODE" :subid("cuid_16_1360432430.278") :anon :lex :outer("cuid_82_1360432430.278")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 420
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$code", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 9
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!nested_codes"
    unless_null $P5003, vivi_235432
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 9
    new $P5006, 'ResizablePMCArray'
    repr_bind_attr_obj $P5004, $P5005, "@!nested_codes", $P5006
    set $P5003, $P5006
  vivi_235432:
    nqp_decontainerize $P5007, _lex_param_0
    nqp_get_sc_object $P5008, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 9
    repr_get_attr_obj $P5009, $P5007, $P5008, "@!nested_codes"
    push $P5009, _lex_param_1
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "CAPS" :subid("cuid_17_1360432430.278") :anon :lex :outer("cuid_82_1360432430.278")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 424
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 9
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!caps"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "NFA" :subid("cuid_18_1360432430.278") :anon :lex :outer("cuid_82_1360432430.278")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 427
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 9
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!nfa"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "ALT_NFAS" :subid("cuid_19_1360432430.278") :anon :lex :outer("cuid_82_1360432430.278")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 430
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 9
    repr_get_attr_obj $P5003, $P5001, $P5002, "%!alt_nfas"
    isnull $I5001, $P5003
    unless $I5001 goto if236_else433 
    new $P5004, 'Hash'
    set $P5008, $P5004
    goto if236_end434
  if236_else433:
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 9
    repr_get_attr_obj $P5007, $P5005, $P5006, "%!alt_nfas"
    set $P5008, $P5007
  if236_end434:
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "ALT_NFA" :subid("cuid_20_1360432430.278") :anon :lex :outer("cuid_82_1360432430.278")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 433
    .param pmc _lex_param_0 
    .param string _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    .local pmc fb_tmp_76 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 9
    repr_get_attr_obj $P5003, $P5001, $P5002, "%!alt_nfas"
    isnull $I5001, $P5003
    unless $I5001 goto if237_else435 
    null $P5004
    set $P5012, $P5004
    goto if237_end436
  if237_else435:
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 9
    repr_get_attr_obj $P5007, $P5005, $P5006, "%!alt_nfas"
    set fb_tmp_76, $P5007
    repr_defined $I5002, fb_tmp_76
    unless $I5002 goto if238_else437 
    set $P5008, fb_tmp_76[_lex_param_1]
    set $P5010, $P5008
    goto if238_end438
  if238_else437:
    null $P5009
    set $P5010, $P5009
  if238_end438:
    unless_null $P5010, vivi_239439
    null $P5011
    set $P5010, $P5011
  vivi_239439:
    set $P5012, $P5010
  if237_end436:
    .return ($P5012) 
.end
.HLL "nqp"
.namespace []
.sub "NESTED_CODES" :subid("cuid_21_1360432430.278") :anon :lex :outer("cuid_82_1360432430.278")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 436
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 9
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!nested_codes"
    isnull $I5001, $P5003
    unless $I5001 goto if240_else440 
    new $P5004, 'ResizablePMCArray'
    set $P5008, $P5004
    goto if240_end441
  if240_else440:
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 9
    repr_get_attr_obj $P5007, $P5005, $P5006, "@!nested_codes"
    set $P5008, $P5007
  if240_end441:
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "clone" :subid("cuid_22_1360432430.278") :anon :lex :outer("cuid_82_1360432430.278")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 439
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
    nqp_get_sc_object $P5006, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 9
    repr_get_attr_obj $P5007, $P5005, $P5006, "$!do"
    repr_clone $P5004, $P5007
    set $P101, $P5004
    nqp_decontainerize $P5009, _lex_param_0
    repr_clone $P5008, $P5009
    set $P102, $P5008
    nqp_get_sc_object $P5010, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 9
    setattribute $P102, $P5010, "$!do", $P101
    set_sub_code_object $P101, $P102
    nqp_decontainerize $P5012, _lex_param_0
    nqp_get_sc_object $P5013, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 9
    repr_get_attr_obj $P5014, $P5012, $P5013, "$!do"
    getprop $P5011, $P5014, "CLONE_CALLBACK"
    set $P103, $P5011
    defined $I5001, $P103
    unless $I5001 goto if241_end443 
.annotate 'line', 450
.annotate 'line', 451
    nqp_decontainerize $P5015, _lex_param_0
    nqp_get_sc_object $P5016, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 9
    repr_get_attr_obj $P5017, $P5015, $P5016, "$!do"
    $P5018 = $P103($P5017, $P101, $P102)
  if241_end443:
    nqp_decontainerize $P5019, _lex_param_0
    nqp_get_sc_object $P5020, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 9
    repr_get_attr_obj $P5021, $P5019, $P5020, "$!clone_callback"
    isnull $I5002, $P5021
    if $I5002 goto unless242_end445 
.annotate 'line', 453
.annotate 'line', 454
    nqp_decontainerize $P5025, _lex_param_0
    nqp_get_sc_object $P5026, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 9
    repr_get_attr_obj $P5027, $P5025, $P5026, "$!do"
    nqp_decontainerize $P5022, _lex_param_0
    nqp_get_sc_object $P5023, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 9
    repr_get_attr_obj $P5024, $P5022, $P5023, "$!clone_callback"
    $P5028 = $P5024($P5027, $P101, $P102)
  unless242_end445:
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "SET_NFA_TYPE" :subid("cuid_23_1360432430.278") :anon :lex :outer("cuid_82_1360432430.278")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 460
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$type", _lex_param_1 
    store_lex "$nfa_type", _lex_param_1
    .return (_lex_param_1) 
.end
.HLL "nqp"
.namespace []
.sub "instantiate_generic" :subid("cuid_24_1360432430.278") :anon :lex :outer("cuid_82_1360432430.278")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 463
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5008 = 'cuid_83_1360432430.278' 
    capture_lex $P5008 
    .lex "self", _lex_param_0 
    .lex "$env", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 9
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!generic_nfa"
    isnull $I5001, $P5003
    unless $I5001 goto if243_else446 
.annotate 'line', 464
    nqp_decontainerize $P5004, _lex_param_0
    set $P5007, $P5004
    goto if243_end447
  if243_else446:
    .const 'Sub' $P5005 = 'cuid_83_1360432430.278' 
    capture_lex $P5005
    $P5006 = $P5005()
    set $P5007, $P5006
  if243_end447:
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_83_1360432430.278") :anon :lex :outer("cuid_24_1360432430.278")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 467
    .lex "$ins", $P101 
    null $P5001
    set $P101, $P5001
.annotate 'line', 468
    find_lex $P5003, "self"
    nqp_decontainerize $P5002, $P5003
    $P5004 = $P5002."clone"()
    set $P101, $P5004
    nqp_get_sc_object $P5005, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 9
.annotate 'line', 470
    find_lex $P5006, "$nfa_type"
    find_lex $P5008, "self"
    nqp_decontainerize $P5007, $P5008
    nqp_get_sc_object $P5009, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 9
    repr_get_attr_obj $P5010, $P5007, $P5009, "$!generic_nfa"
    $P5011 = $P5006."from_saved"($P5010)
    find_lex $P5012, "$env"
    $P5013 = $P5011."instantiate_generic"($P5012)
    $P5014 = $P5013."save"()
    setattribute $P101, $P5005, "$!nfa", $P5014
    nqp_get_sc_object $P5015, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 9
    null $P5016
    setattribute $P101, $P5015, "$!generic_nfa", $P5016
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "name" :subid("cuid_25_1360432430.278") :anon :lex :outer("cuid_82_1360432430.278")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 475
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 9
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!do"
    set $S5001, $P5003
    .return ($S5001) 
.end
.HLL "nqp"
.namespace []
.sub "!set_name" :subid("cuid_26_1360432430.278") :anon :lex :outer("cuid_82_1360432430.278")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 478
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 9
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!do"
    set $S5001, _lex_param_1
    assign $P5003, $S5001
    .return ($S5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_84_1360432430.278") :anon :lex :outer("cuid_48_1360432430.278")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 488
    .const 'Sub' $P5017 = 'cuid_27_1360432430.278' 
    capture_lex $P5017 
    .const 'Sub' $P5017 = 'cuid_28_1360432430.278' 
    capture_lex $P5017 
    .const 'Sub' $P5017 = 'cuid_29_1360432430.278' 
    capture_lex $P5017 
    .const 'Sub' $P5017 = 'cuid_30_1360432430.278' 
    capture_lex $P5017 
    .const 'Sub' $P5017 = 'cuid_31_1360432430.278' 
    capture_lex $P5017 
    .const 'Sub' $P5017 = 'cuid_32_1360432430.278' 
    capture_lex $P5017 
    .const 'Sub' $P5017 = 'cuid_33_1360432430.278' 
    capture_lex $P5017 
    .const 'Sub' $P5017 = 'cuid_34_1360432430.278' 
    capture_lex $P5017 
    .const 'Sub' $P5017 = 'cuid_35_1360432430.278' 
    capture_lex $P5017 
    .const 'Sub' $P5017 = 'cuid_36_1360432430.278' 
    capture_lex $P5017 
    .const 'Sub' $P5017 = 'cuid_37_1360432430.278' 
    capture_lex $P5017 
    .const 'Sub' $P5017 = 'cuid_38_1360432430.278' 
    capture_lex $P5017 
    .const 'Sub' $P5017 = 'cuid_39_1360432430.278' 
    capture_lex $P5017 
    .const 'Sub' $P5017 = 'cuid_40_1360432430.278' 
    capture_lex $P5017 
    .const 'Sub' $P5017 = 'cuid_41_1360432430.278' 
    capture_lex $P5017 
    .const 'Sub' $P5017 = 'cuid_42_1360432430.278' 
    capture_lex $P5017 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_27_1360432430.278' 
    capture_lex $P5001
    .const 'Sub' $P5002 = 'cuid_28_1360432430.278' 
    capture_lex $P5002
    .const 'Sub' $P5003 = 'cuid_29_1360432430.278' 
    capture_lex $P5003
    .const 'Sub' $P5004 = 'cuid_30_1360432430.278' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_31_1360432430.278' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_32_1360432430.278' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_33_1360432430.278' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_34_1360432430.278' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_35_1360432430.278' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_36_1360432430.278' 
    capture_lex $P5010
    .const 'Sub' $P5011 = 'cuid_37_1360432430.278' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_38_1360432430.278' 
    capture_lex $P5012
    .const 'Sub' $P5013 = 'cuid_39_1360432430.278' 
    capture_lex $P5013
    .const 'Sub' $P5014 = 'cuid_40_1360432430.278' 
    capture_lex $P5014
    .const 'Sub' $P5015 = 'cuid_41_1360432430.278' 
    capture_lex $P5015
    .const 'Sub' $P5016 = 'cuid_42_1360432430.278' 
    capture_lex $P5016
    .return ($P5016) 
.end
.HLL "nqp"
.namespace []
.sub "CREATE" :subid("cuid_27_1360432430.278") :anon :lex :outer("cuid_84_1360432430.278")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 489
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5002, _lex_param_0
    repr_instance_of $P5001, $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "bless" :subid("cuid_28_1360432430.278") :anon :lex :outer("cuid_84_1360432430.278")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 493
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy :named 
    .lex "self", $P101 
    .lex "$instance", $P102 
    .lex "$self", _lex_param_0 
    .lex "%attributes", _lex_param_1 
    set $P101, _lex_param_0
    nqp_get_sc_object $P5001, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P102, $P5001
.annotate 'line', 494
    nqp_decontainerize $P5002, $P101
    $P5003 = $P5002."CREATE"()
    set $P102, $P5003
.annotate 'line', 495
    $P102."BUILDALL"(_lex_param_1 :flat :named)
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "BUILDALL" :subid("cuid_29_1360432430.278") :anon :lex :outer("cuid_84_1360432430.278")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 499
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy :named 
    .const 'Sub' $P5015 = 'cuid_86_1360432430.278' 
    capture_lex $P5015 
    .lex "self", $P101 
    .lex "$build_plan", $P102 
    .lex "$count", $P103 
    .lex "$i", $P104 
    .lex "$self", _lex_param_0 
    .lex "%attrinit", _lex_param_1 
    set $P101, _lex_param_0
    nqp_get_sc_object $P5001, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P102, $P5001
    nqp_get_sc_object $P5002, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P103, $P5002
    nqp_get_sc_object $P5003, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P104, $P5003
.annotate 'line', 501
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
  while244_test448:
    set $N5001, $P104
    set $N5002, $P103
    islt $I5002, $N5001, $N5002
    box $P5013, $I5002
    set $P5012, $P5013
    unless $I5002 goto while244_done452 
  while244_redo450:
    .const 'Sub' $P5010 = 'cuid_86_1360432430.278' 
    capture_lex $P5010
    $P5011 = $P5010()
    set $P5012, $P5011
    goto while244_test448 
  while244_done452:
    nqp_decontainerize $P5014, $P101
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_86_1360432430.278") :anon :lex :outer("cuid_29_1360432430.278")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 504
    .const 'Sub' $P5044 = 'cuid_85_1360432430.278' 
    capture_lex $P5044 
    .const 'Sub' $P5044 = 'cuid_87_1360432430.278' 
    capture_lex $P5044 
    .const 'Sub' $P5044 = 'cuid_88_1360432430.278' 
    capture_lex $P5044 
    .lex "$task", $P101 
    .lex "$code", $I101 
    nqp_get_sc_object $P5001, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
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
    unless $I5003 goto if245_else453 
.annotate 'line', 508
.annotate 'line', 510
    find_lex $P5010, "self"
    nqp_decontainerize $P5009, $P5010
    find_lex $P5011, "%attrinit"
    set $P5008, $P101[1]
    $P5012 = $P5008($P5009, $P5011 :flat :named)
    set $P5043, $P5012
    goto if245_end454
  if245_else453:
    iseq $I5004, $I101, 1
    unless $I5004 goto if246_else455 
    .const 'Sub' $P5013 = 'cuid_85_1360432430.278' 
    capture_lex $P5013
    $P5014 = $P5013()
    set $P5042, $P5014
    goto if246_end456
  if246_else455:
    iseq $I5005, $I101, 2
    unless $I5005 goto if250_else462 
    .const 'Sub' $P5015 = 'cuid_87_1360432430.278' 
    capture_lex $P5015
    $P5016 = $P5015()
    set $P5041, $P5016
    goto if250_end463
  if250_else462:
    iseq $I5006, $I101, 3
    unless $I5006 goto if254_else469 
    .const 'Sub' $P5017 = 'cuid_88_1360432430.278' 
    capture_lex $P5017
    $P5018 = $P5017()
    set $P5040, $P5018
    goto if254_end470
  if254_else469:
    iseq $I5007, $I101, 4
    unless $I5007 goto if258_else476 
.annotate 'line', 541
    find_lex $P5020, "self"
    nqp_decontainerize $P5019, $P5020
    set $P5021, $P101[1]
    set $P5022, $P101[2]
    set $S5001, $P5022
    repr_is_attr_initialized $I5008, $P5019, $P5021, $S5001
    box $P5037, $I5008
    set $P5036, $P5037
    if $I5008 goto unless259_end479 
.annotate 'line', 542
    find_lex $P5024, "self"
    nqp_decontainerize $P5023, $P5024
    set $P5025, $P101[1]
    set $P5026, $P101[2]
    set $S5002, $P5026
.annotate 'line', 544
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
  unless259_end479:
    set $P5039, $P5036
    goto if258_end477
  if258_else476:
.annotate 'line', 548
    box $P5038, "Invalid BUILDALLPLAN"
    die $P5038
    set $P5039, $P5038
  if258_end477:
    set $P5040, $P5039
  if254_end470:
    set $P5041, $P5040
  if250_end463:
    set $P5042, $P5041
  if246_end456:
    set $P5043, $P5042
  if245_end454:
    .return ($P5043) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_85_1360432430.278") :anon :lex :outer("cuid_86_1360432430.278")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 512
    .lex "$key_name", $P101 
    .local pmc fb_tmp_77 
    nqp_get_sc_object $P5001, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P101, $P5001
    find_lex $P5003, "$task"
    set $P5002, $P5003[2]
    set $P101, $P5002
    find_lex $P5004, "%attrinit"
    set $S5001, $P101
    exists $I5001, $P5004[$S5001]
    box $P5016, $I5001
    set $P5015, $P5016
    unless $I5001 goto if247_end458 
.annotate 'line', 515
    find_lex $P5006, "self"
    nqp_decontainerize $P5005, $P5006
    find_lex $P5008, "$task"
    set $P5007, $P5008[1]
    find_lex $P5009, "$task"
    set $S5002, $P5009[3]
    find_lex $P5010, "%attrinit"
    set fb_tmp_77, $P5010
    repr_defined $I5002, fb_tmp_77
    unless $I5002 goto if248_else459 
    set $S5003, $P101
    set $P5011, fb_tmp_77[$S5003]
    set $P5013, $P5011
    goto if248_end460
  if248_else459:
    null $P5012
    set $P5013, $P5012
  if248_end460:
    unless_null $P5013, vivi_249461
    nqp_get_sc_object $P5014, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5013, $P5014
  vivi_249461:
    setattribute $P5005, $P5007, $S5002, $P5013
    set $P5015, $P5013
  if247_end458:
    .return ($P5015) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_87_1360432430.278") :anon :lex :outer("cuid_86_1360432430.278")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 519
    .lex "$key_name", $P101 
    .local pmc fb_tmp_78 
    nqp_get_sc_object $P5001, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P101, $P5001
    find_lex $P5003, "$task"
    set $P5002, $P5003[2]
    set $P101, $P5002
    find_lex $P5004, "%attrinit"
    set $S5001, $P101
    exists $I5001, $P5004[$S5001]
    unless $I5001 goto if251_else464 
.annotate 'line', 523
    find_lex $P5006, "self"
    nqp_decontainerize $P5005, $P5006
    find_lex $P5008, "$task"
    set $P5007, $P5008[1]
    find_lex $P5009, "$task"
    set $S5002, $P5009[3]
    find_lex $P5010, "%attrinit"
    set fb_tmp_78, $P5010
    repr_defined $I5002, fb_tmp_78
    unless $I5002 goto if252_else466 
    set $S5003, $P101
    set $P5011, fb_tmp_78[$S5003]
    set $P5013, $P5011
    goto if252_end467
  if252_else466:
    null $P5012
    set $P5013, $P5012
  if252_end467:
    unless_null $P5013, vivi_253468
    nqp_get_sc_object $P5014, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5013, $P5014
  vivi_253468:
    setattribute $P5005, $P5007, $S5002, $P5013
    set $P5021, $P5013
    goto if251_end465
  if251_else464:
.annotate 'line', 526
    find_lex $P5016, "self"
    nqp_decontainerize $P5015, $P5016
    find_lex $P5018, "$task"
    set $P5017, $P5018[1]
    find_lex $P5019, "$task"
    set $S5004, $P5019[3]
    new $P5020, 'ResizablePMCArray'
    setattribute $P5015, $P5017, $S5004, $P5020
    set $P5021, $P5020
  if251_end465:
    .return ($P5021) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_88_1360432430.278") :anon :lex :outer("cuid_86_1360432430.278")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 530
    .lex "$key_name", $P101 
    .local pmc fb_tmp_79 
    nqp_get_sc_object $P5001, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P101, $P5001
    find_lex $P5003, "$task"
    set $P5002, $P5003[2]
    set $P101, $P5002
    find_lex $P5004, "%attrinit"
    set $S5001, $P101
    exists $I5001, $P5004[$S5001]
    unless $I5001 goto if255_else471 
.annotate 'line', 534
    find_lex $P5006, "self"
    nqp_decontainerize $P5005, $P5006
    find_lex $P5008, "$task"
    set $P5007, $P5008[1]
    find_lex $P5009, "$task"
    set $S5002, $P5009[3]
    find_lex $P5010, "%attrinit"
    set fb_tmp_79, $P5010
    repr_defined $I5002, fb_tmp_79
    unless $I5002 goto if256_else473 
    set $S5003, $P101
    set $P5011, fb_tmp_79[$S5003]
    set $P5013, $P5011
    goto if256_end474
  if256_else473:
    null $P5012
    set $P5013, $P5012
  if256_end474:
    unless_null $P5013, vivi_257475
    nqp_get_sc_object $P5014, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5013, $P5014
  vivi_257475:
    setattribute $P5005, $P5007, $S5002, $P5013
    set $P5021, $P5013
    goto if255_end472
  if255_else471:
.annotate 'line', 537
    find_lex $P5016, "self"
    nqp_decontainerize $P5015, $P5016
    find_lex $P5018, "$task"
    set $P5017, $P5018[1]
    find_lex $P5019, "$task"
    set $S5004, $P5019[3]
    new $P5020, 'Hash'
    setattribute $P5015, $P5017, $S5004, $P5020
    set $P5021, $P5020
  if255_end472:
    .return ($P5021) 
.end
.HLL "nqp"
.namespace []
.sub "new" :subid("cuid_30_1360432430.278") :anon :lex :outer("cuid_84_1360432430.278")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 555
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy :named 
    .lex "self", _lex_param_0 
    .lex "%attributes", _lex_param_1 
.annotate 'line', 556
    nqp_decontainerize $P5001, _lex_param_0
    $P5002 = $P5001."bless"(_lex_param_1 :flat :named)
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "Str" :subid("cuid_31_1360432430.278") :anon :lex :outer("cuid_84_1360432430.278")
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
    nqp_get_sc_object $P5008, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 5
    repr_get_attr_obj $P5009, $P5006, $P5008, "$!dispatch_cache"
    getinterp $P5010
    set $P5010, $P5010['context']
    multi_cache_find $P5005, $P5009, $P5010
    unless_null $P5005, vivi_260480
    getinterp $P5012
    set $P5012, $P5012['sub']
    get_sub_code_object $P5011, $P5012
    getinterp $P5013
    set $P5013, $P5013['context']
    $P5014 = $P5011."dispatch"($P5013)
    set $P5005, $P5014
  vivi_260480:
    getinterp $P5015
    set $P5015, $P5015['context']
    invoke_with_capture $P5004, $P5005, $P5015
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "Str" :subid("cuid_32_1360432430.278") :anon :lex :outer("cuid_84_1360432430.278")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 560
    .param pmc _lex_param_0 
    .lex "self", $P101 
    .lex "$self", _lex_param_0 
    set $P101, _lex_param_0
    .return ("") 
.end
.HLL "nqp"
.namespace []
.sub "Str" :subid("cuid_33_1360432430.278") :anon :lex :outer("cuid_84_1360432430.278")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 563
    .param pmc _lex_param_0 
    .lex "self", $P101 
    .lex "$self", _lex_param_0 
    set $P101, _lex_param_0
.annotate 'line', 564
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
.sub "Numeric" :subid("cuid_34_1360432430.278") :anon :lex :outer("cuid_84_1360432430.278")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 567
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
    nqp_get_sc_object $P5008, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 5
    repr_get_attr_obj $P5009, $P5006, $P5008, "$!dispatch_cache"
    getinterp $P5010
    set $P5010, $P5010['context']
    multi_cache_find $P5005, $P5009, $P5010
    unless_null $P5005, vivi_261481
    getinterp $P5012
    set $P5012, $P5012['sub']
    get_sub_code_object $P5011, $P5012
    getinterp $P5013
    set $P5013, $P5013['context']
    $P5014 = $P5011."dispatch"($P5013)
    set $P5005, $P5014
  vivi_261481:
    getinterp $P5015
    set $P5015, $P5015['context']
    invoke_with_capture $P5004, $P5005, $P5015
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "Numeric" :subid("cuid_35_1360432430.278") :anon :lex :outer("cuid_84_1360432430.278")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 568
    .param pmc _lex_param_0 
    .lex "self", $P101 
    .lex "$self", _lex_param_0 
    set $P101, _lex_param_0
    .return (0.0) 
.end
.HLL "nqp"
.namespace []
.sub "Int" :subid("cuid_36_1360432430.278") :anon :lex :outer("cuid_84_1360432430.278")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 572
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
    nqp_get_sc_object $P5008, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 5
    repr_get_attr_obj $P5009, $P5006, $P5008, "$!dispatch_cache"
    getinterp $P5010
    set $P5010, $P5010['context']
    multi_cache_find $P5005, $P5009, $P5010
    unless_null $P5005, vivi_262482
    getinterp $P5012
    set $P5012, $P5012['sub']
    get_sub_code_object $P5011, $P5012
    getinterp $P5013
    set $P5013, $P5013['context']
    $P5014 = $P5011."dispatch"($P5013)
    set $P5005, $P5014
  vivi_262482:
    getinterp $P5015
    set $P5015, $P5015['context']
    invoke_with_capture $P5004, $P5005, $P5015
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "Int" :subid("cuid_37_1360432430.278") :anon :lex :outer("cuid_84_1360432430.278")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 573
    .param pmc _lex_param_0 
    .lex "self", $P101 
    .lex "$self", _lex_param_0 
    set $P101, _lex_param_0
    .return (0) 
.end
.HLL "nqp"
.namespace []
.sub "defined" :subid("cuid_38_1360432430.278") :anon :lex :outer("cuid_84_1360432430.278")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 577
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    repr_defined $I5001, $P5001
    .return ($I5001) 
.end
.HLL "nqp"
.namespace []
.sub "ACCEPTS" :subid("cuid_39_1360432430.278") :anon :lex :outer("cuid_84_1360432430.278")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 581
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
    nqp_get_sc_object $P5008, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 5
    repr_get_attr_obj $P5009, $P5006, $P5008, "$!dispatch_cache"
    getinterp $P5010
    set $P5010, $P5010['context']
    multi_cache_find $P5005, $P5009, $P5010
    unless_null $P5005, vivi_263483
    getinterp $P5012
    set $P5012, $P5012['sub']
    get_sub_code_object $P5011, $P5012
    getinterp $P5013
    set $P5013, $P5013['context']
    $P5014 = $P5011."dispatch"($P5013)
    set $P5005, $P5014
  vivi_263483:
    getinterp $P5015
    set $P5015, $P5015['context']
    invoke_with_capture $P5004, $P5005, $P5015
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "ACCEPTS" :subid("cuid_40_1360432430.278") :anon :lex :outer("cuid_84_1360432430.278")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 582
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
.sub "isa" :subid("cuid_41_1360432430.278") :anon :lex :outer("cuid_84_1360432430.278")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 586
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$type", _lex_param_1 
.annotate 'line', 587
    nqp_decontainerize $P5002, _lex_param_0
    get_how $P5001, $P5002
    nqp_decontainerize $P5003, _lex_param_0
    $P5004 = $P5001."isa"($P5003, _lex_param_1)
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "__dump" :subid("cuid_42_1360432430.278") :anon :lex :outer("cuid_84_1360432430.278")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 590
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .const 'Sub' $P5017 = 'cuid_90_1360432430.278' 
    capture_lex $P5017 
    .lex "$subindent", $P101 
    .lex "self", _lex_param_0 
    .lex "$dumper", _lex_param_1 
    .lex "$label", _lex_param_2 
    nqp_get_sc_object $P5001, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P101, $P5001
    root_new $P102, ['parrot';'Continuation']
    set_label $P102, lexotic_484
    .lex "RETURN", $P102
    nqp_decontainerize $P5002, _lex_param_0
    repr_defined $I5001, $P5002
    if $I5001 goto unless264_end487 
    find_lex $P5003, "RETURN"
    $P5004 = $P5003(0)
  unless264_end487:
.annotate 'line', 592
    $P5005 = _lex_param_1."newIndent"()
    set $P101, $P5005
.annotate 'line', 593
    "&print"("{")
.annotate 'line', 594
    nqp_decontainerize $P5010, _lex_param_0
    get_how $P5009, $P5010
    nqp_decontainerize $P5011, _lex_param_0
    $P5012 = $P5009."parents"($P5011)
    set $P5006, $P5012
    iter $P5008, $P5012
  for_next497:
    unless $P5008, for_done499
    shift $P5014, $P5008
  for_redo498:
    .const 'Sub' $P5013 = 'cuid_90_1360432430.278' 
    capture_lex $P5013
    $P5006 = $P5013($P5014)
    goto for_next497
  for_done499:
.annotate 'line', 613
    _lex_param_1."deleteIndent"()
.annotate 'line', 614
    $P5015 = _lex_param_1."indent"()
    $P5016 = "&print"("\n", $P5015, "}")
    goto lexotic_485
  lexotic_484:
    .get_results ($P5016)
  lexotic_485:
    .return ($P5016) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_90_1360432430.278") :anon :lex :outer("cuid_42_1360432430.278")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 594
    .param pmc _lex_param_0 
    .const 'Sub' $P5008 = 'cuid_89_1360432430.278' 
    capture_lex $P5008 
    .lex "$type", _lex_param_0 
.annotate 'line', 595
    get_how $P5004, _lex_param_0
    $P5005 = $P5004."attributes"(_lex_param_0, 1 :named("local"))
    set $P5001, $P5005
    iter $P5003, $P5005
  for_next494:
    unless $P5003, for_done496
    shift $P5007, $P5003
  for_redo495:
    .const 'Sub' $P5006 = 'cuid_89_1360432430.278' 
    capture_lex $P5006
    $P5001 = $P5006($P5007)
    goto for_next494
  for_done496:
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_89_1360432430.278") :anon :lex :outer("cuid_90_1360432430.278")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 595
    .param pmc _lex_param_0 
    .lex "$name", $P101 
    .lex "$attrtype", $P102 
    .lex "$_", _lex_param_0 
    nqp_get_sc_object $P5001, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P102, $P5002
.annotate 'line', 596
    $P5003 = _lex_param_0."name"()
    set $P101, $P5003
.annotate 'line', 597
    $P5004 = _lex_param_0."type"()
    set $P102, $P5004
.annotate 'line', 598
    find_lex $P5005, "$subindent"
    find_lex $P5007, "$type"
    get_how $P5006, $P5007
    find_lex $P5008, "$type"
    $P5009 = $P5006."name"($P5008)
    "&print"("\n", $P5005, $P5009, "::", $P101, " => ")
    get_id $I5002, $P102
    nqp_get_sc_object $P5010, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 2
    get_id $I5003, $P5010
    iseq $I5001, $I5002, $I5003
    unless $I5001 goto if265_else488 
.annotate 'line', 599
.annotate 'line', 600
    find_lex $P5011, "$dumper"
    find_lex $P5012, "$label"
    find_lex $P5014, "self"
    nqp_decontainerize $P5013, $P5014
    find_lex $P5015, "$type"
    set $S5001, $P101
    repr_get_attr_int $I5004, $P5013, $P5015, $S5001
    $P5016 = $P5011."dump"($P5012, $I5004)
    set $P5040, $P5016
    goto if265_end489
  if265_else488:
    get_id $I5006, $P102
    nqp_get_sc_object $P5017, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 3
    get_id $I5007, $P5017
    iseq $I5005, $I5006, $I5007
    unless $I5005 goto if266_else490 
.annotate 'line', 602
.annotate 'line', 603
    find_lex $P5018, "$dumper"
    find_lex $P5019, "$label"
    find_lex $P5021, "self"
    nqp_decontainerize $P5020, $P5021
    find_lex $P5022, "$type"
    set $S5002, $P101
    repr_get_attr_num $N5001, $P5020, $P5022, $S5002
    $P5023 = $P5018."dump"($P5019, $N5001)
    set $P5039, $P5023
    goto if266_end491
  if266_else490:
    get_id $I5009, $P102
    nqp_get_sc_object $P5024, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 4
    get_id $I5010, $P5024
    iseq $I5008, $I5009, $I5010
    unless $I5008 goto if267_else492 
.annotate 'line', 605
.annotate 'line', 606
    find_lex $P5025, "$dumper"
    find_lex $P5026, "$label"
    find_lex $P5028, "self"
    nqp_decontainerize $P5027, $P5028
    find_lex $P5029, "$type"
    set $S5004, $P101
    repr_get_attr_str $S5003, $P5027, $P5029, $S5004
    $P5030 = $P5025."dump"($P5026, $S5003)
    set $P5038, $P5030
    goto if267_end493
  if267_else492:
.annotate 'line', 608
.annotate 'line', 609
    find_lex $P5031, "$dumper"
    find_lex $P5032, "$label"
    find_lex $P5035, "self"
    nqp_decontainerize $P5034, $P5035
    find_lex $P5036, "$type"
    set $S5005, $P101
    getattribute $P5033, $P5034, $P5036, $S5005
    $P5037 = $P5031."dump"($P5032, $P5033)
    set $P5038, $P5037
  if267_end493:
    set $P5039, $P5038
  if266_end491:
    set $P5040, $P5039
  if265_end489:
    .return ($P5040) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_91_1360432430.278") :anon :lex :outer("cuid_48_1360432430.278")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 619
    .const 'Sub' $P5005 = 'cuid_43_1360432430.278' 
    capture_lex $P5005 
    .const 'Sub' $P5005 = 'cuid_44_1360432430.278' 
    capture_lex $P5005 
    .const 'Sub' $P5005 = 'cuid_45_1360432430.278' 
    capture_lex $P5005 
    .const 'Sub' $P5005 = 'cuid_46_1360432430.278' 
    capture_lex $P5005 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_43_1360432430.278' 
    capture_lex $P5001
    .const 'Sub' $P5002 = 'cuid_44_1360432430.278' 
    capture_lex $P5002
    .const 'Sub' $P5003 = 'cuid_45_1360432430.278' 
    capture_lex $P5003
    .const 'Sub' $P5004 = 'cuid_46_1360432430.278' 
    capture_lex $P5004
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "new" :subid("cuid_43_1360432430.278") :anon :lex :outer("cuid_91_1360432430.278")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 633
    .param pmc _lex_param_0 
    .lex "$n", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P101, $P5001
.annotate 'line', 634
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."CREATE"()
    set $P101, $P5003
.annotate 'line', 635
    $P101."BUILD"()
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "BUILD" :subid("cuid_44_1360432430.278") :anon :lex :outer("cuid_91_1360432430.278")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 639
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 42
    new $P5003, 'ResizablePMCArray'
    repr_bind_attr_obj $P5001, $P5002, "@!array", $P5003
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 42
    new $P5006, 'Hash'
    repr_bind_attr_obj $P5004, $P5005, "%!hash", $P5006
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "list" :subid("cuid_45_1360432430.278") :anon :lex :outer("cuid_91_1360432430.278")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 644
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 42
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!array"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "hash" :subid("cuid_46_1360432430.278") :anon :lex :outer("cuid_91_1360432430.278")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
.annotate 'line', 646
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 42
    repr_get_attr_obj $P5003, $P5001, $P5002, "%!hash"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_93_1360432430.278") :load :init
.annotate 'file', "src\\stage2\\NQPCORE.setting"
    .const 'Sub' $P5001 = 'cuid_92_1360432430.278' 
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
    nqp_create_sc $P5001, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303"
    set cur_sc, $P5001
    $P5002 = cur_sc."set_description"("src\\stage2\\NQPCORE.setting")
    new $P5003, 'ResizablePMCArray'
    set conflicts, $P5003
    new $P5004, 'ResizableStringArray'
    null $S5001
    push $P5004, $S5001
    push $P5004, "P6opaque"
    push $P5004, "RoleToRoleApplier"
    push $P5004, "46A27B8E73DBD8EFB3FE1AA531DA4577B21729DD-1360432426.959"
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
    push $P5004, "$!clone_callback"
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
    push $P5004, "NQPCapture"
    push $P5004, "get_pmc_keyed_str"
    push $P5004, "get_pmc_keyed"
    push $P5004, "set_pmc_keyed_str"
    push $P5004, "set_pmc_keyed"
    push $P5004, "exists_keyed"
    push $P5004, "exists_keyed_str"
    push $P5004, "delete_keyed"
    push $P5004, "delete_keyed_str"
    .const 'Sub' $P5005 = 'cuid_92_1360432430.278' 
    capture_lex $P5005
    $P5006 = $P5005()
    nqp_deserialize_sc "AwAAAEAAAAACAAAAUAAAAAoAAACgAAAAqAoAAE8AAACYDwAAKhsAAAAAAAAqGwAAAAAAACobAAAqGwAAAAAAAAMAAAAEAAAARQAAAAAAAAABAAAAAAAAAA0AAAAoAQAADgAAAGwBAAAPAAAAtAEAABAAAAD8AQAAAQAAADwCAAABAAAA7AMAAAEAAADiBAAAAQAAAPwGAAABAAAASggAAAAAAAAvAAAAAAAAAAAAAAAKAAkAAAACAAAAAgABAAAAAgAAAAUAAAACAAEAAAADAAAABgAAAAIAAQAAAAQAAAAHAAAAAgABAAAABQAAAAgAAAACAAEAAAAGAAAACQAAAAIAAQAAAAcAAAAKAAAAAgABAAAACAAAAAsAAAACAAEAAAAJAAAADAAAAAIAAQAAAAoAAAAKAAAAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAQAAAAAAAAACAAAAAAAAAAAAAwD/////////////////////AAAAADAAAAAAAAAAAQAAAAoAAAAAAAoAAAAAAAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAMQAAAAAAAAACAAAACgAAAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAAAAAAAAMgAAAAAAAAADAAAACgAAAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAAAAAAAAMwAAAAAAAAAEAAAACgAAAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADQAAAAAAAAABQAAAAoAAAAAAAoACQAAABEAAAALAAAAAAAAAAAAEgAAAAsAAAAAAAEAAAATAAAACwAAAAAAAgAAABQAAAALAAAAAAADAAAAFQAAAAsAAAAAAAQAAAAWAAAACwAAAAAABQAAABcAAAALAAAAAAAGAAAAGAAAAAsAAAAAAAcAAAAZAAAACwAAAAAACAAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAAAFAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAAAUAAAAKAAYAAAAaAAAABAAAAAAAAAAAABsAAAAEAAEAAAAAAAAAHAAAAAQAAgAAAAAAAAAdAAAABAADAAAAAAAAAB4AAAAEAAQAAAAAAAAAHwAAAAQABQAAAAAAAAD/////////////////////AAAAADUAAAAAAAAABgAAAAoAAAAAAAoAAgAAACAAAAACAAAAAAAHAAAAIQAAAAIAAAAAAAgAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAAABgAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAABgAAAAoAAgAAACIAAAAEAAAAAAAAAAAAIwAAAAQAAQAAAAAAAAD/////////////////////AAAAADYAAAAAAAAACQAAAAoAAAAAAAoADwAAACQAAAACAAAAAAAKAAAAJQAAAAIAAAAAAAsAAAAmAAAAAgAAAAAADAAAACcAAAACAAAAAAANAAAAKAAAAAIAAAAAAA4AAAApAAAAAgAAAAAADwAAACoAAAACAAAAAAAQAAAAKwAAAAIAAAAAABEAAAAsAAAAAgAAAAAAEgAAAC0AAAACAAAAAAATAAAAFgAAAAIAAAAAABQAAAAuAAAAAgAAAAAAFQAAAC8AAAACAAAAAAAWAAAAGAAAAAIAAAAAABcAAAAXAAAAAgAAAAAAGAAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAAAJAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAACQAAAAoABwAAABoAAAAEAAAAAAAAAAAAMAAAAAQAAQAAAAAAAAAxAAAABAACAAAAAAAAADIAAAAEAAMAAAAAAAAAMwAAAAQABAAAAAAAAAA0AAAABAAFAAAAAAAAAB8AAAAEAAYAAAAAAAAA/////////////////////wAAAAA3AAAAAAAAABkAAAAKAAAAAAAKAAsAAAA1AAAAAgAAAAAAGgAAADYAAAACAAAAAAAbAAAANwAAAAIAAAAAABwAAAA4AAAAAgAAAAAAHQAAADkAAAACAAAAAAAeAAAAOgAAAAIAAAAAACEAAAA7AAAAAgAAAAAAIwAAADwAAAACAAAAAAAlAAAAPQAAAAIAAAAAACYAAAA+AAAAAgAAAAAAKAAAAD8AAAACAAAAAAApAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAABkAAAAEAAAAAAAAAAEAAAAAAAAABQAAAAAAAAADAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAABkAAAADAP////////////////////8AAAAAOAAAAAAAAAAqAAAACgAAAAAACgAOAAAANQAAAAIAAAAAABoAAAA2AAAAAgAAAAAAGwAAADcAAAACAAAAAAAcAAAAOAAAAAIAAAAAACsAAAA5AAAAAgAAAAAAHgAAADoAAAACAAAAAAAhAAAAOwAAAAIAAAAAACMAAAA8AAAAAgAAAAAAJQAAAD0AAAACAAAAAAAmAAAAPgAAAAIAAAAAACgAAAA/AAAAAgAAAAAAKQAAAEAAAAACAAAAAAAsAAAAQQAAAAIAAAAAAC0AAABCAAAAAgAAAAAALgAAAAAAAAAAAAAAAgAAAAAAAAACAAAAAAAqAAAAAgAAAAAAGQAAAAQAAAAAAAAAAQAAAAAAAAAFAAAAAAAAAAMAAAAAAAAAAAACAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAACAAAAAAAAAAIAAAAAABkAAAADAAIAAAAAACoAAAAKAAIAAABDAAAABAAAAAAAAAAAAEQAAAAEAAEAAAAAAAAAAAAAAAAAAAD//////////wAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAIAAAAAAAAAAAAAAAAAAAADAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAAAAAAAAAAAAUAAAAAAAAAAAAAAAAAAAAGAAAAAAAAAAAAAAAAAAAABQAAAAAAAAABAAAAAAAAAAUAAAAUAAAAAQAAAAAAAAAHAAAAKAAAAAAAAAAAAAAABQAAACgAAAABAAAAAAAAAAUAAAA8AAAAAQAAAAAAAAAFAAAAUAAAAAEAAAAAAAAABQAAAGQAAAABAAAAAAAAAAUAAAB4AAAAAQAAAAAAAAAFAAAAjAAAAAEAAAAAAAAABQAAAKAAAAABAAAAAAAAAAUAAAC0AAAAAQAAAAAAAAAFAAAAyAAAAAEAAAAAAAAABQAAANwAAAABAAAAAAAAAAUAAADwAAAAAQAAAAAAAAAFAAAABAEAAAEAAAAAAAAABQAAABgBAAABAAAAAAAAAAUAAAAsAQAAAQAAAAAAAAAFAAAAQAEAAAEAAAAAAAAACAAAAFQBAAAAAAAAAAAAAAUAAABUAQAAAQAAAAAAAAAFAAAAaAEAAAEAAAAAAAAABQAAAHwBAAABAAAAAAAAAAUAAACQAQAAAQAAAAAAAAAFAAAApAEAAAEAAAAAAAAABQAAANABAAABAAAAAAAAAAUAAADsAQAAAQAAAAAAAAAFAAAACAIAAAEAAAAAAAAABQAAACoCAAABAAAAAAAAAAUAAABGAgAAAQAAAAAAAAAFAAAAaAIAAAEAAAAAAAAABQAAAIQCAAABAAAAAAAAAAUAAACYAgAAAQAAAAAAAAAFAAAAugIAAAEAAAAAAAAABQAAANYCAAABAAAAAAAAAAUAAADqAgAAAQAAAAAAAAAJAAAA/gIAAAAAAAAAAAAABQAAAP4CAAABAAAAAAAAAAUAAAASAwAAAQAAAAAAAAAFAAAAJgMAAAEAAAAAAAAABQAAADoDAAABAAAAAgAAAAAAAABOAwAAAQAAAAEAAAAKAAAAXgMAAAEAAAABAAAACAAAAG4DAAABAAAAAQAAAAgAAAB+AwAAAQAAAAEAAAAIAAAAjgMAAAEAAAACAAAAAAAAAJ4DAAABAAAAAgAAAAAAAABoBAAAAQAAAAIAAAAAAAAAqAQAAAEAAAABAAAABwAAANAFAAABAAAAAQAAAAcAAAA2CAAAAQAAAAAAAAAGAAAAWgoAAAEAAAAAAAAABgAAAHoKAAABAAAAAAAAAAYAAACaCgAAAQAAAAAAAAAGAAAAugoAAAEAAAAAAAAABgAAANoKAAABAAAAAgAAAAIAAAAGCwAAAQAAAAIAAAACAAAACgsAAAEAAAACAAAAAgAAAA4LAAABAAAAAgAAAAIAAAASCwAAAQAAAAIAAAACAAAAFgsAAAEAAAACAAAAAgAAABoLAAABAAAAAgAAAAIAAAAeCwAAAQAAAAIAAAACAAAAIgsAAAEAAAACAAAAAgAAACYLAAABAAAAAgAAAAIAAAAqCwAAAQAAAAIAAAACAAAALgsAAAEAAAACAAAAAgAAADILAAABAAAAAgAAAAIAAAA2CwAAAQAAAAIAAAACAAAAOgsAAAEAAAACAAAAAgAAAD4LAAABAAAAAQAAAAkAAABCCwAAAQAAAAEAAAAJAAAAbgsAAAEAAAALAAAAAAAJAAAAAQABAAEAAQADAAsAAAAAAAoAAAABAAEAAQABAAMACwAAAAAACwAAAAEAAQABAAEAAwALAAAAAAAMAAAAAQABAAEAAQADAAsAAAAAAA0AAAABAAEAAQABAAMACwAAAAAADgAAAAEAAQABAAEAAwALAAAAAAAPAAAAAQABAAEAAQADAAsAAAAAABAAAAABAAEAAQABAAMACwAAAAAAEQAAAAEAAQABAAEAAwALAAAAAAASAAAAAQABAAEAAQADAAsAAAAAABMAAAABAAEAAQABAAMACwAAAAAAFAAAAAEAAQABAAEAAwALAAAAAAAVAAAAAQABAAEAAQADAAsAAAAAABYAAAABAAEAAQABAAMACwAAAAAAFwAAAAEAAQABAAEAAwALAAAAAAAYAAAAAQABAAEAAQADAAsAAAAAABkAAAABAAEAAQABAAMACwAAAAAAGgAAAAEAAQABAAEAAwALAAAAAAAbAAAAAQABAAEAAQADAAsAAAAAABwAAAABAAEAAQABAAMACwAAAAAAHQAAAAEAAQABAAEAAwALAAAAAAAeAAAAAQAHAAIAAAACAAAAAAAfAAAAAgAAAAAAIAAAAAMAAwADAAsAAAAAAB8AAAACAAAAAAA5AAAAAQABAAEAAwALAAAAAAAgAAAAAgAAAAAAOgAAAAEAAQABAAMACwAAAAAAIQAAAAEABwABAAAAAgAAAAAAIgAAAAMAAwADAAsAAAAAACIAAAACAAAAAAA7AAAAAQABAAEAAwALAAAAAAAjAAAAAQAHAAEAAAACAAAAAAAkAAAAAwADAAMACwAAAAAAJAAAAAIAAAAAADwAAAABAAEAAQADAAsAAAAAACUAAAABAAEAAQABAAMACwAAAAAAJgAAAAEABwABAAAAAgAAAAAAJwAAAAMAAwADAAsAAAAAACcAAAACAAAAAAA9AAAAAQABAAEAAwALAAAAAAAoAAAAAQABAAEAAQADAAsAAAAAACkAAAABAAEAAQABAAMACwAAAAAAKgAAAAEAAQABAAEAAwALAAAAAAArAAAAAQABAAEAAQADAAsAAAAAACwAAAABAAEAAQABAAMACwAAAAAALQAAAAEAAQABAAEAAwBGAAAABwAAAAAACgAAAAAABgBHAAAABAABAAAAAAAAAAYASAAAAAQAAQAAAAAAAAAGAEkAAAAEAAEAAAAAAAAABgBKAAAABAABAAAAAAAAAEsAAAAHAAYAAAACAAAAAAA+AAAAAgAAAAAAPwAAAAIAAAAAAEAAAAACAAAAAABBAAAAAgAAAAAAQgAAAAIAAAAAAEMAAAAKAAkAAAARAAAACwAAAAAAAAAAABIAAAALAAAAAAABAAAAEwAAAAsAAAAAAAIAAAAUAAAACwAAAAAAAwAAABUAAAALAAAAAAAEAAAAFgAAAAsAAAAAAAUAAAAXAAAACwAAAAAABgAAABgAAAALAAAAAAAHAAAAGQAAAAsAAAAAAAgAAABMAAAABwACAAAAAgAAAAAARAAAAAIAAAAAAEUAAAAKAAIAAAAgAAAAAgAAAAAABwAAACEAAAACAAAAAAAIAAAATQAAAAcABwAAAAIAAAAAAEYAAAACAAAAAABHAAAAAgAAAAAASAAAAAIAAAAAAEkAAAACAAAAAABKAAAAAgAAAAAASwAAAAIAAAAAAEwAAAAKAA8AAAAkAAAAAgAAAAAACgAAACUAAAACAAAAAAALAAAAJgAAAAIAAAAAAAwAAAAnAAAAAgAAAAAADQAAACgAAAACAAAAAAAOAAAAKQAAAAIAAAAAAA8AAAAqAAAAAgAAAAAAEAAAACsAAAACAAAAAAARAAAALAAAAAIAAAAAABIAAAAtAAAAAgAAAAAAEwAAABYAAAACAAAAAAAUAAAALgAAAAIAAAAAABUAAAAvAAAAAgAAAAAAFgAAABgAAAACAAAAAAAXAAAAFwAAAAIAAAAAABgAAAAGAE4AAAAKAAAAAAAKAAsAAAA1AAAAAgAAAAAAGgAAADYAAAACAAAAAAAbAAAANwAAAAIAAAAAABwAAAA4AAAAAgAAAAAAHQAAADkAAAACAAAAAAAeAAAAOgAAAAIAAAAAACEAAAA7AAAAAgAAAAAAIwAAADwAAAACAAAAAAAlAAAAPQAAAAIAAAAAACYAAAA+AAAAAgAAAAAAKAAAAD8AAAACAAAAAAApAAAABwALAAAAAgAAAAAAGgAAAAIAAAAAABsAAAACAAAAAAAcAAAAAgAAAAAAHQAAAAIAAAAAAB4AAAACAAAAAAAhAAAAAgAAAAAAIwAAAAIAAAAAACUAAAACAAAAAAAmAAAAAgAAAAAAKAAAAAIAAAAAACkAAAAHAAUAAAAKAAIAAAAYAAAABgA5AAAATwAAAAIAAAAAAB8AAAAKAAIAAAAYAAAABgA5AAAATwAAAAIAAAAAACAAAAAKAAIAAAAYAAAABgA6AAAATwAAAAIAAAAAACIAAAAKAAIAAAAYAAAABgA7AAAATwAAAAIAAAAAACQAAAAKAAIAAAAYAAAABgA9AAAATwAAAAIAAAAAACcAAAAHAAAAAAAHAAAAAAACAAAAAAAZAAAABwAAAAAACgAAAAAABAABAAAAAAAAAAcAAQAAAAIAAAAAABkAAAAHAAAAAAABAAoABAAAAFAAAAACAAAAAAAeAAAAUQAAAAIAAAAAACEAAABSAAAAAgAAAAAAIwAAADwAAAACAAAAAAAlAAAACgAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAAAAAAHAAAAAAABAAYAUwAAAAoAAgAAAEMAAAACAAAAAABNAAAARAAAAAIAAAAAAE4AAAAKAAQAAAA4AAAAAgAAAAAAKwAAAEAAAAACAAAAAAAsAAAAQQAAAAIAAAAAAC0AAABCAAAAAgAAAAAALgAAAAcABAAAAAIAAAAAACsAAAACAAAAAAAsAAAAAgAAAAAALQAAAAIAAAAAAC4AAAAHAAAAAAAHAAEAAAACAAAAAAAZAAAABwAAAAAAAgAAAAAAGQAAAAcAAAAAAAoAAAAAAAQAAQAAAAAAAAAHAAIAAAACAAAAAAAqAAAAAgAAAAAAGQAAAAcAAAAAAAEACgAAAAAACgAIAAAAVAAAAAcAAgAAAAIAAAAAACoAAAAGAEQAAABVAAAABwACAAAAAgAAAAAAKgAAAAYARAAAAFYAAAAHAAIAAAACAAAAAAAqAAAABgBEAAAAVwAAAAcAAgAAAAIAAAAAACoAAAAGAEQAAABYAAAABwACAAAAAgAAAAAAKgAAAAYARAAAAFkAAAAHAAIAAAACAAAAAAAqAAAABgBEAAAAWgAAAAcAAgAAAAIAAAAAACoAAAAGAEQAAABbAAAABwACAAAAAgAAAAAAKgAAAAYARAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwABAAAABwACAAAABAAAAAAAAAAAAAIAAAAAACwAAAAHAAEAAAAHAAIAAAAEAAAAAAAAAAAAAgAAAAAALAAAAAEABwABAAAAAgAAAAAAGQAAAAcAAQAAAAQAAgAAAAAAAAAHAAEAAAACAAAAAAAZAAAABwABAAAABAABAAAAAAAAAAcAAQAAAAIAAAAAABkAAAAHAAEAAAAEAAIAAAAAAAAABwABAAAAAgAAAAAAGQAAAAcAAQAAAAQAAgAAAAAAAAAHAAIAAAACAAAAAAAZAAAAAwAHAAIAAAAEAAIAAAAAAAAABAAAAAAAAAAAABoAAAAbAAAAHAAAAB0AAAAeAAAAHwAAACIAAAAjAAAAGgAAADAAAAAxAAAAMgAAADMAAAA0AAAAHwAAAAYAQwAAAAMABAAAAAAAAAAAAAMAAwAEAAAAAAAAAAAABAABAAAAAAAAAAEABgBEAAAAAwAEAAAAAAAAAAAAAwADAAQAAAAAAAAAAAABAAEA", cur_sc, $P5004, $P5006, conflicts
    unless conflicts goto if270_end505 
    die "Repossession conflicts occurred during deserialization"
  if270_end505:
    .const "LexInfo" $P5001 = "cuid_48_1360432430.278"
    nqp_get_sc_object $P5002, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 0
    $P5001."set_static_lexpad_value"("GLOBALish", $P5002)
    .const "LexInfo" $P5003 = "cuid_48_1360432430.278"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_48_1360432430.278"
    nqp_get_sc_object $P5002, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 0
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_48_1360432430.278"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_48_1360432430.278"
    nqp_get_sc_object $P5002, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 1
    $P5001."set_static_lexpad_value"("EXPORTHOW", $P5002)
    .const "LexInfo" $P5003 = "cuid_48_1360432430.278"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_66_1360432430.278"
    nqp_get_sc_object $P5002, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 1
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_66_1360432430.278"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_66_1360432430.278"
    nqp_get_sc_object $P5002, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 1
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_66_1360432430.278"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_48_1360432430.278"
    nqp_get_sc_object $P5002, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 2
    $P5001."set_static_lexpad_value"("int", $P5002)
    .const "LexInfo" $P5003 = "cuid_48_1360432430.278"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_67_1360432430.278"
    nqp_get_sc_object $P5002, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 2
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_67_1360432430.278"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_67_1360432430.278"
    nqp_get_sc_object $P5002, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 2
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_67_1360432430.278"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_48_1360432430.278"
    nqp_get_sc_object $P5002, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 3
    $P5001."set_static_lexpad_value"("num", $P5002)
    .const "LexInfo" $P5003 = "cuid_48_1360432430.278"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_68_1360432430.278"
    nqp_get_sc_object $P5002, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 3
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_68_1360432430.278"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_68_1360432430.278"
    nqp_get_sc_object $P5002, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 3
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_68_1360432430.278"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_48_1360432430.278"
    nqp_get_sc_object $P5002, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 4
    $P5001."set_static_lexpad_value"("str", $P5002)
    .const "LexInfo" $P5003 = "cuid_48_1360432430.278"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_69_1360432430.278"
    nqp_get_sc_object $P5002, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 4
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_69_1360432430.278"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_69_1360432430.278"
    nqp_get_sc_object $P5002, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 4
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_69_1360432430.278"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_48_1360432430.278"
    nqp_get_sc_object $P5002, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 5
    $P5001."set_static_lexpad_value"("NQPRoutine", $P5002)
    .const "LexInfo" $P5003 = "cuid_48_1360432430.278"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_71_1360432430.278"
    nqp_get_sc_object $P5002, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 5
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_71_1360432430.278"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_71_1360432430.278"
    nqp_get_sc_object $P5002, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 5
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_71_1360432430.278"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_48_1360432430.278"
    nqp_get_sc_object $P5002, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 6
    $P5001."set_static_lexpad_value"("NQPSignature", $P5002)
    .const "LexInfo" $P5003 = "cuid_48_1360432430.278"
    $P5004 = $P5003."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_10_1360432430.278" 
    nqp_get_sc_object $P5002, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 7
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_11_1360432430.278" 
    nqp_get_sc_object $P5002, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 8
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_81_1360432430.278"
    nqp_get_sc_object $P5002, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 6
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_81_1360432430.278"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_81_1360432430.278"
    nqp_get_sc_object $P5002, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 6
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_81_1360432430.278"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_48_1360432430.278"
    nqp_get_sc_object $P5002, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 9
    $P5001."set_static_lexpad_value"("NQPRegex", $P5002)
    .const "LexInfo" $P5003 = "cuid_48_1360432430.278"
    $P5004 = $P5003."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_12_1360432430.278" 
    nqp_get_sc_object $P5002, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 10
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_13_1360432430.278" 
    nqp_get_sc_object $P5002, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 11
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_14_1360432430.278" 
    nqp_get_sc_object $P5002, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 12
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_15_1360432430.278" 
    nqp_get_sc_object $P5002, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 13
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_16_1360432430.278" 
    nqp_get_sc_object $P5002, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 14
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_17_1360432430.278" 
    nqp_get_sc_object $P5002, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 15
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_18_1360432430.278" 
    nqp_get_sc_object $P5002, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 16
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_19_1360432430.278" 
    nqp_get_sc_object $P5002, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 17
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_20_1360432430.278" 
    nqp_get_sc_object $P5002, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 18
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_21_1360432430.278" 
    nqp_get_sc_object $P5002, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 19
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_22_1360432430.278" 
    nqp_get_sc_object $P5002, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 20
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_23_1360432430.278" 
    nqp_get_sc_object $P5002, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 21
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_24_1360432430.278" 
    nqp_get_sc_object $P5002, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 22
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_25_1360432430.278" 
    nqp_get_sc_object $P5002, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 23
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_26_1360432430.278" 
    nqp_get_sc_object $P5002, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 24
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_82_1360432430.278"
    nqp_get_sc_object $P5002, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 9
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_82_1360432430.278"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_82_1360432430.278"
    nqp_get_sc_object $P5002, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 9
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_82_1360432430.278"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_48_1360432430.278"
    nqp_get_sc_object $P5002, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    $P5001."set_static_lexpad_value"("NQPMu", $P5002)
    .const "LexInfo" $P5003 = "cuid_48_1360432430.278"
    $P5004 = $P5003."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_27_1360432430.278" 
    nqp_get_sc_object $P5002, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 26
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_28_1360432430.278" 
    nqp_get_sc_object $P5002, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 27
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_29_1360432430.278" 
    nqp_get_sc_object $P5002, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 28
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_30_1360432430.278" 
    nqp_get_sc_object $P5002, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 29
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_31_1360432430.278" 
    nqp_get_sc_object $P5002, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 30
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_32_1360432430.278" 
    nqp_get_sc_object $P5002, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 31
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_33_1360432430.278" 
    nqp_get_sc_object $P5002, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 32
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_34_1360432430.278" 
    nqp_get_sc_object $P5002, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 33
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_35_1360432430.278" 
    nqp_get_sc_object $P5002, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 34
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_36_1360432430.278" 
    nqp_get_sc_object $P5002, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 35
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_37_1360432430.278" 
    nqp_get_sc_object $P5002, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 36
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_38_1360432430.278" 
    nqp_get_sc_object $P5002, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 37
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_39_1360432430.278" 
    nqp_get_sc_object $P5002, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 38
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_40_1360432430.278" 
    nqp_get_sc_object $P5002, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 39
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_41_1360432430.278" 
    nqp_get_sc_object $P5002, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 40
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_42_1360432430.278" 
    nqp_get_sc_object $P5002, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 41
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_84_1360432430.278"
    nqp_get_sc_object $P5002, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_84_1360432430.278"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_84_1360432430.278"
    nqp_get_sc_object $P5002, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_84_1360432430.278"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_48_1360432430.278"
    nqp_get_sc_object $P5002, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 42
    $P5001."set_static_lexpad_value"("NQPCapture", $P5002)
    .const "LexInfo" $P5003 = "cuid_48_1360432430.278"
    $P5004 = $P5003."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_43_1360432430.278" 
    nqp_get_sc_object $P5002, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 43
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_44_1360432430.278" 
    nqp_get_sc_object $P5002, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 44
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_45_1360432430.278" 
    nqp_get_sc_object $P5002, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 45
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_46_1360432430.278" 
    nqp_get_sc_object $P5002, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 46
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_91_1360432430.278"
    nqp_get_sc_object $P5002, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 42
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_91_1360432430.278"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_91_1360432430.278"
    nqp_get_sc_object $P5002, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 42
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_91_1360432430.278"
    $P5004 = $P5003."finish_static_lexpad"()
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_92_1360432430.278") :anon :lex :outer("cuid_93_1360432430.278")
.annotate 'file', "src\\stage2\\NQPCORE.setting"
    new $P5001, 'ResizablePMCArray'
    .const 'Sub' $P5002 = "cuid_1_1360432430.278" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_2_1360432430.278" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_3_1360432430.278" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_4_1360432430.278" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_5_1360432430.278" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_6_1360432430.278" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_7_1360432430.278" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_8_1360432430.278" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_9_1360432430.278" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_10_1360432430.278" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_11_1360432430.278" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_12_1360432430.278" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_13_1360432430.278" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_14_1360432430.278" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_15_1360432430.278" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_16_1360432430.278" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_17_1360432430.278" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_18_1360432430.278" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_19_1360432430.278" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_20_1360432430.278" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_21_1360432430.278" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_22_1360432430.278" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_23_1360432430.278" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_24_1360432430.278" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_25_1360432430.278" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_26_1360432430.278" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_27_1360432430.278" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_28_1360432430.278" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_29_1360432430.278" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_30_1360432430.278" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_31_1360432430.278" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_32_1360432430.278" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_33_1360432430.278" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_34_1360432430.278" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_35_1360432430.278" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_36_1360432430.278" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_37_1360432430.278" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_38_1360432430.278" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_39_1360432430.278" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_40_1360432430.278" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_41_1360432430.278" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_42_1360432430.278" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_43_1360432430.278" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_44_1360432430.278" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_45_1360432430.278" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_46_1360432430.278" 
    push $P5001, $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_94_1360432430.278") :load
.annotate 'file', "src\\stage2\\NQPCORE.setting"
    .const 'Sub' $P5001 = "cuid_48_1360432430.278" 
    $P5002 = $P5001()
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_95_1360432430.278") :main
.annotate 'file', "src\\stage2\\NQPCORE.setting"
    .param pmc ARGS :slurpy 
    .const 'Sub' $P5001 = "cuid_48_1360432430.278" 
    $P5002 = $P5001(ARGS :flat)
    .return ($P5002) 
.end