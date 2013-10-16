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
.sub "" :subid("cuid_47_1381944239.86639") :anon :lex
.annotate 'file', "src/stage2/NQPCORE.setting"
    .param pmc _lex_param_0 :slurpy 
    .const 'Sub' $P5053 = 'cuid_48_1381944239.86639' 
    capture_lex $P5053 
    .const 'Sub' $P5053 = 'cuid_49_1381944239.86639' 
    capture_lex $P5053 
    .const 'Sub' $P5053 = 'cuid_50_1381944239.86639' 
    capture_lex $P5053 
    .const 'Sub' $P5053 = 'cuid_51_1381944239.86639' 
    capture_lex $P5053 
    .const 'Sub' $P5053 = 'cuid_53_1381944239.86639' 
    capture_lex $P5053 
    .const 'Sub' $P5053 = 'cuid_54_1381944239.86639' 
    capture_lex $P5053 
    .const 'Sub' $P5053 = 'cuid_56_1381944239.86639' 
    capture_lex $P5053 
    .const 'Sub' $P5053 = 'cuid_58_1381944239.86639' 
    capture_lex $P5053 
    .const 'Sub' $P5053 = 'cuid_60_1381944239.86639' 
    capture_lex $P5053 
    .const 'Sub' $P5053 = 'cuid_61_1381944239.86639' 
    capture_lex $P5053 
    .const 'Sub' $P5053 = 'cuid_62_1381944239.86639' 
    capture_lex $P5053 
    .const 'Sub' $P5053 = 'cuid_63_1381944239.86639' 
    capture_lex $P5053 
    .const 'Sub' $P5053 = 'cuid_64_1381944239.86639' 
    capture_lex $P5053 
    .const 'Sub' $P5053 = 'cuid_65_1381944239.86639' 
    capture_lex $P5053 
    .const 'Sub' $P5053 = 'cuid_66_1381944239.86639' 
    capture_lex $P5053 
    .const 'Sub' $P5053 = 'cuid_67_1381944239.86639' 
    capture_lex $P5053 
    .const 'Sub' $P5053 = 'cuid_68_1381944239.86639' 
    capture_lex $P5053 
    .const 'Sub' $P5053 = 'cuid_69_1381944239.86639' 
    capture_lex $P5053 
    .const 'Sub' $P5053 = 'cuid_70_1381944239.86639' 
    capture_lex $P5053 
    .const 'Sub' $P5053 = 'cuid_81_1381944239.86639' 
    capture_lex $P5053 
    .const 'Sub' $P5053 = 'cuid_82_1381944239.86639' 
    capture_lex $P5053 
    .const 'Sub' $P5053 = 'cuid_88_1381944239.86639' 
    capture_lex $P5053 
    .const 'Sub' $P5053 = 'cuid_93_1381944239.86639' 
    capture_lex $P5053 
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
    .const 'Sub' $P5001 = 'cuid_48_1381944239.86639' 
    capture_lex $P5001
    set $P112, $P5001
    .const 'Sub' $P5002 = 'cuid_49_1381944239.86639' 
    capture_lex $P5002
    set $P113, $P5002
    .const 'Sub' $P5003 = 'cuid_50_1381944239.86639' 
    capture_lex $P5003
    set $P114, $P5003
    .const 'Sub' $P5004 = 'cuid_51_1381944239.86639' 
    capture_lex $P5004
    set $P115, $P5004
    .const 'Sub' $P5005 = 'cuid_53_1381944239.86639' 
    capture_lex $P5005
    set $P116, $P5005
    .const 'Sub' $P5006 = 'cuid_54_1381944239.86639' 
    capture_lex $P5006
    set $P117, $P5006
    .const 'Sub' $P5007 = 'cuid_56_1381944239.86639' 
    capture_lex $P5007
    set $P118, $P5007
    .const 'Sub' $P5008 = 'cuid_58_1381944239.86639' 
    capture_lex $P5008
    set $P119, $P5008
    .const 'Sub' $P5009 = 'cuid_60_1381944239.86639' 
    capture_lex $P5009
    set $P120, $P5009
    .const 'Sub' $P5010 = 'cuid_61_1381944239.86639' 
    capture_lex $P5010
    set $P121, $P5010
    nqp_get_sc_object $P5011, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 26
    set $P122, $P5011
    nqp_get_sc_object $P5012, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 26
    set $P123, $P5012
    nqp_get_sc_object $P5013, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 26
    set $P124, $P5013
    .const 'Sub' $P5014 = 'cuid_62_1381944239.86639' 
    capture_lex $P5014
    set $P125, $P5014
    .const 'Sub' $P5015 = 'cuid_63_1381944239.86639' 
    capture_lex $P5015
    set $P126, $P5015
    .const 'Sub' $P5016 = 'cuid_64_1381944239.86639' 
    capture_lex $P5016
    set $P127, $P5016
    .const 'Sub' $P5017 = 'cuid_65_1381944239.86639' 
    capture_lex $P5017
    set $P128, $P5017
.annotate 'line', 1
    .const 'Sub' $P5018 = 'cuid_66_1381944239.86639' 
    capture_lex $P5018
    $P5019 = $P5018()
    .const 'Sub' $P5020 = 'cuid_67_1381944239.86639' 
    capture_lex $P5020
    $P5021 = $P5020()
    .const 'Sub' $P5022 = 'cuid_68_1381944239.86639' 
    capture_lex $P5022
    $P5023 = $P5022()
    .const 'Sub' $P5024 = 'cuid_69_1381944239.86639' 
    capture_lex $P5024
    $P5025 = $P5024()
    .const 'Sub' $P5026 = 'cuid_70_1381944239.86639' 
    capture_lex $P5026
    $P5027 = $P5026()
    nqp_get_sc_object $P5028, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 5
    nqp_get_sc_object $P5029, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 5
    null $P5030
    set_invocation_spec $P5028, $P5029, "$!do", $P5030
    nqp_get_sc_object $P5031, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 5
    null $P5032
    set_boolification_spec $P5031, 5, $P5032
    .const 'Sub' $P5033 = 'cuid_81_1381944239.86639' 
    capture_lex $P5033
    $P5034 = $P5033()
    .const 'Sub' $P5035 = 'cuid_82_1381944239.86639' 
    capture_lex $P5035
    $P5036 = $P5035()
    nqp_get_sc_object $P5037, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 9
    nqp_get_sc_object $P5038, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 9
    null $P5039
    set_invocation_spec $P5037, $P5038, "$!do", $P5039
    nqp_get_sc_object $P5040, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 9
    null $P5041
    set_boolification_spec $P5040, 5, $P5041
    .const 'Sub' $P5042 = 'cuid_88_1381944239.86639' 
    capture_lex $P5042
    $P5043 = $P5042()
    .const 'Sub' $P5044 = 'cuid_93_1381944239.86639' 
    capture_lex $P5044
    $P5045 = $P5044()
    box $P5046, 0
    set $P122, $P5046
    box $P5047, 0
    set $P123, $P5047
    box $P5048, ""
    set $P124, $P5048
    find_dynamic_lex $P5049, "$*CTXSAVE"
    set ctxsave, $P5049
    isnull $I5001, ctxsave
    if $I5001 goto unless239_end457 
    can $I5002, ctxsave, "ctxsave"
    box $P5052, $I5002
    set $P5051, $P5052
    unless $I5002 goto if240_end459 
    $P5050 = ctxsave."ctxsave"()
    set $P5051, $P5050
  if240_end459:
  unless239_end457:
    .return () 
.end
.HLL "nqp"
.namespace []
.sub "open" :subid("cuid_48_1381944239.86639") :anon :lex :outer("cuid_47_1381944239.86639")
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 627
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
    nqp_get_sc_object $P5006, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 26
    set _lex_param_1, $P5006
  default16:
    if haz_param_2, default17
    nqp_get_sc_object $P5007, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 26
    set _lex_param_2, $P5007
  default17:
    if haz_param_3, default18
    nqp_get_sc_object $P5008, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 26
    set _lex_param_3, $P5008
  default18:
    if haz_param_4, default19
    nqp_get_sc_object $P5009, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 26
    set _lex_param_4, $P5009
  default19:
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 26
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 26
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
    set $S5003, _lex_param_0
    set $S5004, $P101
    open $P5004, $S5003, $S5004
    set $P102, $P5004
    unless _lex_param_4 goto if12_else14 
    set $S5005, "binary"
    goto if12_end15
  if12_else14:
    set $S5005, "utf8"
  if12_end15:
    $P5005 = $P102."encoding"($S5005)
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "close" :subid("cuid_49_1381944239.86639") :anon :lex :outer("cuid_47_1381944239.86639")
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 638
    .param pmc _lex_param_0 
    .lex "$handle", _lex_param_0 
    $P5001 = _lex_param_0."close"()
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "slurp" :subid("cuid_50_1381944239.86639") :anon :lex :outer("cuid_47_1381944239.86639")
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 646
    .param pmc _lex_param_0 
    .lex "$handle", $P101 
    .lex "$contents", $P102 
    .lex "$filename", _lex_param_0 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 26
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 26
    set $P102, $P5002
.annotate 'line', 647
    $P5003 = "&open"(_lex_param_0, 1 :named("r"))
    set $P101, $P5003
    $P5004 = $P101."readall"()
    set $P102, $P5004
    $P5005 = $P101."close"()
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "spew" :subid("cuid_51_1381944239.86639") :anon :lex :outer("cuid_47_1381944239.86639")
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 658
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$handle", $P101 
    .lex "$filename", _lex_param_0 
    .lex "$contents", _lex_param_1 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 26
    set $P101, $P5001
.annotate 'line', 659
    $P5002 = "&open"(_lex_param_0, 1 :named("w"))
    set $P101, $P5002
    $P5003 = $P101."print"(_lex_param_1)
    $P5004 = $P101."close"()
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "print" :subid("cuid_53_1381944239.86639") :anon :lex :outer("cuid_47_1381944239.86639")
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 664
    .param pmc _lex_param_0 :slurpy 
    .const 'Sub' $P5006 = 'cuid_52_1381944239.86639' 
    capture_lex $P5006 
    .lex "@args", _lex_param_0 
    set $P5001, _lex_param_0
    iter $P5003, _lex_param_0
  for_next20:
    unless $P5003, for_done22
    shift $P5005, $P5003
  for_redo21:
    .const 'Sub' $P5004 = 'cuid_52_1381944239.86639' 
    capture_lex $P5004
    $P5001 = $P5004($P5005)
    goto for_next20
  for_done22:
    .return (1) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_52_1381944239.86639") :anon :lex :outer("cuid_53_1381944239.86639")
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 665
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    set $S5001, _lex_param_0
    print $S5001
    .return ($S5001) 
.end
.HLL "nqp"
.namespace []
.sub "say" :subid("cuid_54_1381944239.86639") :anon :lex :outer("cuid_47_1381944239.86639")
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 671
    .param pmc _lex_param_0 :slurpy 
    .lex "@args", _lex_param_0 
.annotate 'line', 672
    $P5001 = "&print"(_lex_param_0 :flat, "\n")
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "join" :subid("cuid_56_1381944239.86639") :anon :lex :outer("cuid_47_1381944239.86639")
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 675
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5007 = 'cuid_55_1381944239.86639' 
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
    .const 'Sub' $P5005 = 'cuid_55_1381944239.86639' 
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
.sub "" :subid("cuid_55_1381944239.86639") :anon :lex :outer("cuid_56_1381944239.86639")
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 677
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
.sub "match" :subid("cuid_58_1381944239.86639") :anon :lex :outer("cuid_47_1381944239.86639")
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 695
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :named("global") :optional 
    .param int haz_param_5 :opt_flag 
    .const 'Sub' $P5007 = 'cuid_57_1381944239.86639' 
    capture_lex $P5007 
    .lex "$match", $P101 
    .lex "$text", _lex_param_0 
    .lex "$regex", _lex_param_1 
    .lex "$global", _lex_param_2 
    if haz_param_5, default33
    nqp_get_sc_object $P5006, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 26
    set _lex_param_2, $P5006
  default33:
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 26
    set $P101, $P5001
.annotate 'line', 696
    $P5002 = _lex_param_1."ACCEPTS"(_lex_param_0)
    set $P101, $P5002
    unless _lex_param_2 goto if13_else26 
    .const 'Sub' $P5003 = 'cuid_57_1381944239.86639' 
    capture_lex $P5003
    $P5004 = $P5003()
    set $P5005, $P5004
    goto if13_end27
  if13_else26:
.annotate 'line', 705

    set $P5005, $P101
  if13_end27:
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_57_1381944239.86639") :anon :lex :outer("cuid_58_1381944239.86639")
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 697
    .lex "@matches", $P101 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
  while14_test28:
    find_lex $P5002, "$match"
    set $P5011, $P5002
    unless $P5002 goto while14_done32 
  while14_redo30:
.annotate 'line', 699
    find_lex $P5003, "$match"
    push $P101, $P5003
.annotate 'line', 701
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
.sub "subst" :subid("cuid_60_1381944239.86639") :anon :lex :outer("cuid_47_1381944239.86639")
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 717
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 :named("global") :optional 
    .param int haz_param_6 :opt_flag 
    .const 'Sub' $P5020 = 'cuid_59_1381944239.86639' 
    capture_lex $P5020 
    .lex "@matches", $P101 
    .lex "$is_code", $P102 
    .lex "$offset", $P103 
    .lex "@result", $P104 
    .lex "$chars", $P105 
    .lex "$text", _lex_param_0 
    .lex "$regex", _lex_param_1 
    .lex "$repl", _lex_param_2 
    .lex "$global", _lex_param_3 
    if haz_param_6, default47
    nqp_get_sc_object $P5019, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 26
    set _lex_param_3, $P5019
  default47:
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 26
    set $P102, $P5002
    nqp_get_sc_object $P5003, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 26
    set $P103, $P5003
    new $P5004, 'ResizablePMCArray'
    set $P104, $P5004
    nqp_get_sc_object $P5005, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 26
    set $P105, $P5005
    unless _lex_param_3 goto if15_else34 
.annotate 'line', 718
    $P5006 = "&match"(_lex_param_0, _lex_param_1, 1 :named("global"))
    set $P5009, $P5006
    goto if15_end35
  if15_else34:
    new $P5007, 'ResizablePMCArray'
.annotate 'line', 719
    $P5008 = _lex_param_1."ACCEPTS"(_lex_param_0)
    push $P5007, $P5008
    set $P5009, $P5007
  if15_end35:
    set $P101, $P5009
    is_invokable $I5001, _lex_param_2
    box $P5010, $I5001
    set $P102, $P5010
    box $P5011, 0
    set $P103, $P5011
    set $P5012, $P101
    iter $P5014, $P101
  for_next42:
    unless $P5014, for_done44
    shift $P5016, $P5014
  for_redo43:
    .const 'Sub' $P5015 = 'cuid_59_1381944239.86639' 
    capture_lex $P5015
    $P5012 = $P5015($P5016)
    goto for_next42
  for_done44:
    set $S5001, _lex_param_0
    length $I5002, $S5001
    box $P5017, $I5002
    set $P105, $P5017
    set $N5001, $P105
    set $N5002, $P103
    isgt $I5003, $N5001, $N5002
    unless $I5003 goto if19_end46 
    set $S5003, _lex_param_0
    set $I5004, $P103
    set $I5005, $P105
    substr $S5002, $S5003, $I5004, $I5005
    box $P5018, $S5002
    push $P104, $P5018
  if19_end46:
    join $S5004, "", $P104
    .return ($S5004) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_59_1381944239.86639") :anon :lex :outer("cuid_60_1381944239.86639")
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 724
    .param pmc _lex_param_0 
    .lex "$match", _lex_param_0 
    set $P5016, _lex_param_0
    unless _lex_param_0 goto if16_end37 
.annotate 'line', 725
.annotate 'line', 727
    $P5001 = _lex_param_0."from"()
    set $N5001, $P5001
    find_lex $P5002, "$offset"
    set $N5002, $P5002
    isgt $I5001, $N5001, $N5002
    unless $I5001 goto if17_end39 
    find_lex $P5003, "@result"
    find_lex $P5004, "$text"
    set $S5002, $P5004
    find_lex $P5005, "$offset"
    set $I5002, $P5005
.annotate 'line', 726
    $P5006 = _lex_param_0."from"()
    set $N5004, $P5006
    find_lex $P5007, "$offset"
    set $N5005, $P5007
    sub $N5003, $N5004, $N5005
    set $I5003, $N5003
    substr $S5001, $S5002, $I5002, $I5003
    box $P5008, $S5001
    push $P5003, $P5008
  if17_end39:
    find_lex $P5009, "@result"
    find_lex $P5010, "$is_code"
    unless $P5010 goto if18_else40 
.annotate 'line', 728
    find_lex $P5011, "$repl"
    $P5012 = $P5011(_lex_param_0)
    set $S5003, $P5012
    set $S5005, $S5003
    goto if18_end41
  if18_else40:
    find_lex $P5013, "$repl"
    set $S5004, $P5013
    set $S5005, $S5004
  if18_end41:
    box $P5014, $S5005
    push $P5009, $P5014
.annotate 'line', 729
    $P5015 = _lex_param_0."to"()
    store_lex "$offset", $P5015
    set $P5016, $P5015
  if16_end37:
    .return ($P5016) 
.end
.HLL "nqp"
.namespace []
.sub "hash" :subid("cuid_61_1381944239.86639") :anon :lex :outer("cuid_47_1381944239.86639")
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 743
    .param pmc _lex_param_0 :slurpy :named 
    .lex "%new", _lex_param_0 
    .return (_lex_param_0) 
.end
.HLL "nqp"
.namespace []
.sub "plan" :subid("cuid_62_1381944239.86639") :anon :lex :outer("cuid_47_1381944239.86639")
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 752
    .param pmc _lex_param_0 
    .lex "$quantity", _lex_param_0 
.annotate 'line', 753
    set $S5002, _lex_param_0
    concat $S5001, "1..", $S5002
    $P5001 = "&say"($S5001)
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "ok" :subid("cuid_63_1381944239.86639") :anon :lex :outer("cuid_47_1381944239.86639")
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 756
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :optional 
    .param int haz_param_7 :opt_flag 
    .lex "$condition", _lex_param_0 
    .lex "$desc", _lex_param_1 
    if haz_param_7, default56
    nqp_get_sc_object $P5010, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 26
    set _lex_param_1, $P5010
  default56:
    find_lex $P5001, "$test_counter"
    set $N5002, $P5001
    set $N5003, 1
    add $N5001, $N5002, $N5003
    box $P5002, $N5001
    store_lex "$test_counter", $P5002
    if _lex_param_0 goto unless20_end49 
.annotate 'line', 759
.annotate 'line', 760
    $P5003 = "&print"("not ")
  unless20_end49:
.annotate 'line', 762
    find_lex $P5004, "$test_counter"
    set $S5002, $P5004
    concat $S5001, "ok ", $S5002
    "&print"($S5001)
    unless _lex_param_1 goto if21_end51 
.annotate 'line', 763
.annotate 'line', 764
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
.annotate 'line', 766
.annotate 'line', 767
    find_lex $P5008, "$todo_reason"
    $P5009 = "&print"($P5008)
  if22_end53:
.annotate 'line', 769
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
.sub "todo" :subid("cuid_64_1381944239.86639") :anon :lex :outer("cuid_47_1381944239.86639")
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 774
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
.sub "skip" :subid("cuid_65_1381944239.86639") :anon :lex :outer("cuid_47_1381944239.86639")
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 779
    .param pmc _lex_param_0 
    .lex "$desc", _lex_param_0 
    find_lex $P5001, "$test_counter"
    set $N5002, $P5001
    set $N5003, 1
    add $N5001, $N5002, $N5003
    box $P5002, $N5001
    store_lex "$test_counter", $P5002
.annotate 'line', 781
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
.sub "" :subid("cuid_66_1381944239.86639") :anon :lex :outer("cuid_47_1381944239.86639")
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 12
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    get_who $P5001, $P101
    nqp_get_sc_object $P5002, "82C8134F4F1F98F3955D960634CCE916B8CF0355-1381944235.00084", 10
    set $P5001["module"], $P5002
    get_who $P5003, $P101
    nqp_get_sc_object $P5004, "82C8134F4F1F98F3955D960634CCE916B8CF0355-1381944235.00084", 7
    set $P5003["class"], $P5004
    get_who $P5005, $P101
    nqp_get_sc_object $P5006, "82C8134F4F1F98F3955D960634CCE916B8CF0355-1381944235.00084", 9
    set $P5005["class-attr"], $P5006
    get_who $P5007, $P101
    nqp_get_sc_object $P5008, "82C8134F4F1F98F3955D960634CCE916B8CF0355-1381944235.00084", 7
    set $P5007["grammar"], $P5008
    get_who $P5009, $P101
    nqp_get_sc_object $P5010, "82C8134F4F1F98F3955D960634CCE916B8CF0355-1381944235.00084", 9
    set $P5009["grammar-attr"], $P5010
    get_who $P5011, $P101
    nqp_get_sc_object $P5012, "82C8134F4F1F98F3955D960634CCE916B8CF0355-1381944235.00084", 6
    set $P5011["role"], $P5012
    get_who $P5013, $P101
    nqp_get_sc_object $P5014, "82C8134F4F1F98F3955D960634CCE916B8CF0355-1381944235.00084", 9
    set $P5013["role-attr"], $P5014
    get_who $P5015, $P101
    nqp_get_sc_object $P5016, "82C8134F4F1F98F3955D960634CCE916B8CF0355-1381944235.00084", 8
    set $P5015["native"], $P5016
    .return ($P5016) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_67_1381944239.86639") :anon :lex :outer("cuid_47_1381944239.86639")
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 23
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    null $P5001
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_68_1381944239.86639") :anon :lex :outer("cuid_47_1381944239.86639")
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 25
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    null $P5001
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_69_1381944239.86639") :anon :lex :outer("cuid_47_1381944239.86639")
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 27
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    null $P5001
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_70_1381944239.86639") :anon :lex :outer("cuid_47_1381944239.86639")
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 30
    .const 'Sub' $P5021 = 'cuid_71_1381944239.86639' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_1_1381944239.86639' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_2_1381944239.86639' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_3_1381944239.86639' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_4_1381944239.86639' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_5_1381944239.86639' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_6_1381944239.86639' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_7_1381944239.86639' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_8_1381944239.86639' 
    capture_lex $P5021 
    .const 'Sub' $P5021 = 'cuid_9_1381944239.86639' 
    capture_lex $P5021 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .lex "&is_narrower_type", $P103 
    .lex "$SLURPY_ARITY", $P104 
    .lex "$EDGE_REMOVAL_TODO", $P105 
    .lex "$EDGE_REMOVED", $P106 
    .lex "$DEFINED_ONLY", $P107 
    .lex "$UNDEFINED_ONLY", $P108 
    .const 'Sub' $P5001 = 'cuid_71_1381944239.86639' 
    capture_lex $P5001
    set $P103, $P5001
    null $P5002
    set $P104, $P5002
    null $P5003
    set $P105, $P5003
    null $P5004
    set $P106, $P5004
    null $P5005
    set $P107, $P5005
    null $P5006
    set $P108, $P5006
    .const 'Sub' $P5007 = 'cuid_1_1381944239.86639' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_2_1381944239.86639' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_3_1381944239.86639' 
    capture_lex $P5009
    shl $I5001, 1, 30
    box $P5010, $I5001
    set $P104, $P5010
    box $P5011, -1
    set $P105, $P5011
    box $P5012, -2
    set $P106, $P5012
    box $P5013, 1
    set $P107, $P5013
    box $P5014, 2
    set $P108, $P5014
    .const 'Sub' $P5015 = 'cuid_4_1381944239.86639' 
    capture_lex $P5015
    .const 'Sub' $P5016 = 'cuid_5_1381944239.86639' 
    capture_lex $P5016
    .const 'Sub' $P5017 = 'cuid_6_1381944239.86639' 
    capture_lex $P5017
    .const 'Sub' $P5018 = 'cuid_7_1381944239.86639' 
    capture_lex $P5018
    .const 'Sub' $P5019 = 'cuid_8_1381944239.86639' 
    capture_lex $P5019
    .const 'Sub' $P5020 = 'cuid_9_1381944239.86639' 
    capture_lex $P5020
    .return ($P5020) 
.end
.HLL "nqp"
.namespace []
.sub "is_narrower_type" :subid("cuid_71_1381944239.86639") :anon :lex :outer("cuid_70_1381944239.86639")
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 72
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$a", _lex_param_0 
    .lex "$b", _lex_param_1 
    isnull $I5001, _lex_param_1
    set $I5004, $I5001
    unless $I5001 goto if25_end60 
    isnull $I5003, _lex_param_0
    not $I5002, $I5003
    set $I5004, $I5002
  if25_end60:
    unless $I5004 goto if24_else57 
.annotate 'line', 75

    set $I5010, 1
    goto if24_end58
  if24_else57:
    isnull $I5005, _lex_param_0
    set $I5007, $I5005
    if $I5005 goto unless27_end64 
    isnull $I5006, _lex_param_1
    set $I5007, $I5006
  unless27_end64:
    unless $I5007 goto if26_else61 
.annotate 'line', 76

    set $I5009, 0
    goto if26_end62
  if26_else61:
.annotate 'line', 77
    type_check $I5008, _lex_param_0, _lex_param_1
    set $I5009, $I5008
  if26_end62:
    set $I5010, $I5009
  if24_end58:
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
.sub "add_dispatchee" :subid("cuid_1_1381944239.86639") :anon :lex :outer("cuid_70_1381944239.86639")
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 39
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$code", _lex_param_1 
    nqp_disable_sc_write_barrier 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 5
    null $P5003
    repr_bind_attr_obj $P5001, $P5002, "$!dispatch_cache", 3, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 5
    null $P5006
    repr_bind_attr_obj $P5004, $P5005, "$!dispatch_order", 4, $P5006
    nqp_decontainerize $P5007, _lex_param_0
    nqp_get_sc_object $P5008, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 5
    repr_get_attr_obj $P5009, $P5007, $P5008, "$!dispatchees", 2
    push $P5009, _lex_param_1
    nqp_enable_sc_write_barrier 
    .return (0) 
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
.sub "is_dispatcher" :subid("cuid_2_1381944239.86639") :anon :lex :outer("cuid_70_1381944239.86639")
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 48
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 5
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!dispatchees", 2
    defined $I5001, $P5003
    .return ($I5001) 
.end
.HLL "nqp"
.namespace []
.sub "derive_dispatcher" :subid("cuid_3_1381944239.86639") :anon :lex :outer("cuid_70_1381944239.86639")
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 53
    .param pmc _lex_param_0 
    .lex "$do", $P101 
    .lex "$der", $P102 
    .lex "self", _lex_param_0 
    null $P5001
    set $P101, $P5001
    null $P5002
    set $P102, $P5002
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 5
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!do", 0
    repr_clone $P5003, $P5006
    set $P101, $P5003
    nqp_decontainerize $P5008, _lex_param_0
    repr_clone $P5007, $P5008
    set $P102, $P5007
    nqp_get_sc_object $P5009, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 5
    setattribute $P102, $P5009, "$!do", $P101
    nqp_get_sc_object $P5010, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 5
    nqp_decontainerize $P5012, _lex_param_0
    nqp_get_sc_object $P5013, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 5
    repr_get_attr_obj $P5014, $P5012, $P5013, "$!dispatchees", 2
    repr_clone $P5011, $P5014
    setattribute $P102, $P5010, "$!dispatchees", $P5011
    set_sub_code_object $P101, $P102
    nqp_decontainerize $P5015, _lex_param_0
    nqp_get_sc_object $P5016, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 5
    repr_get_attr_obj $P5017, $P5015, $P5016, "$!clone_callback", 5
    isnull $I5001, $P5017
    if $I5001 goto unless28_end66 
.annotate 'line', 64
.annotate 'line', 65
    nqp_decontainerize $P5021, _lex_param_0
    nqp_get_sc_object $P5022, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 5
    repr_get_attr_obj $P5023, $P5021, $P5022, "$!do", 0
    nqp_decontainerize $P5018, _lex_param_0
    nqp_get_sc_object $P5019, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 5
    repr_get_attr_obj $P5020, $P5018, $P5019, "$!clone_callback", 5
    $P5024 = $P5020($P5023, $P101, $P102)
  unless28_end66:
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "sort_dispatchees" :subid("cuid_4_1381944239.86639") :anon :lex :outer("cuid_70_1381944239.86639")
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 87
    .param pmc _lex_param_0 
    .const 'Sub' $P5027 = 'cuid_73_1381944239.86639' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_74_1381944239.86639' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_75_1381944239.86639' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_77_1381944239.86639' 
    capture_lex $P5027 
    .lex "&is_narrower", $P101 
    .lex "@graph", $P102 
    .lex "$num_candidates", $P103 
    .lex "$i", $P104 
    .lex "@result", $P105 
    .lex "$candidates_to_sort", $P106 
    .lex "self", _lex_param_0 
    .const 'Sub' $P5001 = 'cuid_73_1381944239.86639' 
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
    set_label $P107, lexotic_139
    .lex "RETURN", $P107
    nqp_decontainerize $P5007, _lex_param_0
    nqp_get_sc_object $P5008, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 5
    repr_get_attr_obj $P5009, $P5007, $P5008, "$!dispatchees", 2
    elements $I5001, $P5009
    box $P5010, $I5001
    set $P103, $P5010
    box $P5011, 0
    set $P104, $P5011
  while70_test141:
    set $N5001, $P104
    set $N5002, $P103
    islt $I5002, $N5001, $N5002
    box $P5015, $I5002
    set $P5014, $P5015
    unless $I5002 goto while70_done145 
  while70_redo143:
    .const 'Sub' $P5012 = 'cuid_74_1381944239.86639' 
    capture_lex $P5012
    $P5013 = $P5012()
    set $P5014, $P5013
    goto while70_test141 
  while70_done145:
    box $P5016, 0
    set $P104, $P5016
  while88_test175:
    set $N5003, $P104
    set $N5004, $P103
    islt $I5003, $N5003, $N5004
    box $P5020, $I5003
    set $P5019, $P5020
    unless $I5003 goto while88_done179 
  while88_redo177:
    .const 'Sub' $P5017 = 'cuid_75_1381944239.86639' 
    capture_lex $P5017
    $P5018 = $P5017()
    set $P5019, $P5018
    goto while88_test175 
  while88_done179:
    set $P106, $P103
  while122_test234:
    set $N5005, $P106
    set $N5006, 0
    isgt $I5004, $N5005, $N5006
    box $P5024, $I5004
    set $P5023, $P5024
    unless $I5004 goto while122_done238 
  while122_redo236:
    .const 'Sub' $P5021 = 'cuid_77_1381944239.86639' 
    capture_lex $P5021
    $P5022 = $P5021()
    set $P5023, $P5022
    goto while122_test234 
  while122_done238:
    null $P5025
    push $P105, $P5025
    $P5026 = "RETURN"($P105)
    goto lexotic_140
  lexotic_139:
    .get_results ($P5026)
  lexotic_140:
    .return ($P5026) 
.end
.HLL "nqp"
.namespace []
.sub "is_narrower" :subid("cuid_73_1381944239.86639") :anon :lex :outer("cuid_4_1381944239.86639")
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 90
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5066 = 'cuid_72_1381944239.86639' 
    capture_lex $P5066 
    .lex "$types_to_check", $P101 
    .lex "$i", $P102 
    .lex "$narrower", $P103 
    .lex "$tied", $P104 
    .lex "%a", _lex_param_0 
    .lex "%b", _lex_param_1 
    .local pmc fb_tmp_1 
    .local pmc fb_tmp_2 
    .local pmc fb_tmp_3 
    .local pmc fb_tmp_4 
    .local pmc fb_tmp_5 
    .local pmc fb_tmp_6 
    .local pmc fb_tmp_7 
    .local pmc fb_tmp_8 
    .local pmc fb_tmp_9 
    .local pmc fb_tmp_14 
    .local pmc fb_tmp_15 
    null $P5001
    set $P101, $P5001
    null $P5002
    set $P102, $P5002
    null $P5003
    set $P103, $P5003
    null $P5004
    set $P104, $P5004
    root_new $P105, ['parrot';'Continuation']
    set_label $P105, lexotic_67
    .lex "RETURN", $P105
    set fb_tmp_1, _lex_param_0
    repr_defined $I5002, fb_tmp_1
    unless $I5002 goto if30_else71 
    set $P5005, fb_tmp_1["num_types"]
    set $P5007, $P5005
    goto if30_end72
  if30_else71:
    null $P5006
    set $P5007, $P5006
  if30_end72:
    unless_null $P5007, vivi_3173
    null $P5008
    set $P5007, $P5008
  vivi_3173:
    set $N5001, $P5007
    set fb_tmp_2, _lex_param_1
    repr_defined $I5003, fb_tmp_2
    unless $I5003 goto if32_else74 
    set $P5009, fb_tmp_2["num_types"]
    set $P5011, $P5009
    goto if32_end75
  if32_else74:
    null $P5010
    set $P5011, $P5010
  if32_end75:
    unless_null $P5011, vivi_3376
    null $P5012
    set $P5011, $P5012
  vivi_3376:
    set $N5002, $P5011
    iseq $I5001, $N5001, $N5002
    unless $I5001 goto if29_else69 
.annotate 'line', 94
    set fb_tmp_3, _lex_param_0
    repr_defined $I5004, fb_tmp_3
    unless $I5004 goto if34_else77 
    set $P5013, fb_tmp_3["num_types"]
    set $P5015, $P5013
    goto if34_end78
  if34_else77:
    null $P5014
    set $P5015, $P5014
  if34_end78:
    unless_null $P5015, vivi_3579
    null $P5016
    set $P5015, $P5016
  vivi_3579:
    set $P101, $P5015
    goto if29_end70
  if29_else69:
    set fb_tmp_4, _lex_param_0
    repr_defined $I5006, fb_tmp_4
    unless $I5006 goto if37_else82 
    set $P5017, fb_tmp_4["min_arity"]
    set $P5019, $P5017
    goto if37_end83
  if37_else82:
    null $P5018
    set $P5019, $P5018
  if37_end83:
    unless_null $P5019, vivi_3884
    null $P5020
    set $P5019, $P5020
  vivi_3884:
    set $N5003, $P5019
    set fb_tmp_5, _lex_param_1
    repr_defined $I5007, fb_tmp_5
    unless $I5007 goto if39_else85 
    set $P5021, fb_tmp_5["min_arity"]
    set $P5023, $P5021
    goto if39_end86
  if39_else85:
    null $P5022
    set $P5023, $P5022
  if39_end86:
    unless_null $P5023, vivi_4087
    null $P5024
    set $P5023, $P5024
  vivi_4087:
    set $N5004, $P5023
    iseq $I5005, $N5003, $N5004
    unless $I5005 goto if36_else80 
.annotate 'line', 97
    set fb_tmp_6, _lex_param_0
    repr_defined $I5009, fb_tmp_6
    unless $I5009 goto if42_else90 
    set $P5025, fb_tmp_6["num_types"]
    set $P5027, $P5025
    goto if42_end91
  if42_else90:
    null $P5026
    set $P5027, $P5026
  if42_end91:
    unless_null $P5027, vivi_4392
    null $P5028
    set $P5027, $P5028
  vivi_4392:
    set $N5005, $P5027
    set fb_tmp_7, _lex_param_1
    repr_defined $I5010, fb_tmp_7
    unless $I5010 goto if44_else93 
    set $P5029, fb_tmp_7["num_types"]
    set $P5031, $P5029
    goto if44_end94
  if44_else93:
    null $P5030
    set $P5031, $P5030
  if44_end94:
    unless_null $P5031, vivi_4595
    null $P5032
    set $P5031, $P5032
  vivi_4595:
    set $N5006, $P5031
    isgt $I5008, $N5005, $N5006
    unless $I5008 goto if41_else88 
    set fb_tmp_8, _lex_param_1
    repr_defined $I5011, fb_tmp_8
    unless $I5011 goto if46_else96 
    set $P5033, fb_tmp_8["num_types"]
    set $P5035, $P5033
    goto if46_end97
  if46_else96:
    null $P5034
    set $P5035, $P5034
  if46_end97:
    unless_null $P5035, vivi_4798
    null $P5036
    set $P5035, $P5036
  vivi_4798:
    set $P5041, $P5035
    goto if41_end89
  if41_else88:
    set fb_tmp_9, _lex_param_0
    repr_defined $I5012, fb_tmp_9
    unless $I5012 goto if48_else99 
    set $P5037, fb_tmp_9["num_types"]
    set $P5039, $P5037
    goto if48_end100
  if48_else99:
    null $P5038
    set $P5039, $P5038
  if48_end100:
    unless_null $P5039, vivi_49101
    null $P5040
    set $P5039, $P5040
  vivi_49101:
    set $P5041, $P5039
  if41_end89:
    set $P101, $P5041
    set $P5043, $P101
    goto if36_end81
  if36_else80:
.annotate 'line', 100
    $P5042 = "RETURN"(0)
    set $P5043, $P5042
  if36_end81:
  if29_end70:
    box $P5044, 0
    set $P102, $P5044
    box $P5045, 0
    set $P103, $P5045
    box $P5046, 0
    set $P104, $P5046
  while50_test102:
    set $N5007, $P102
    set $N5008, $P101
    islt $I5013, $N5007, $N5008
    box $P5050, $I5013
    set $P5049, $P5050
    unless $I5013 goto while50_done106 
  while50_redo104:
    .const 'Sub' $P5047 = 'cuid_72_1381944239.86639' 
    capture_lex $P5047
    $P5048 = $P5047()
    set $P5049, $P5048
    goto while50_test102 
  while50_done106:
    set $N5009, $P103
    set $N5010, 1
    isge $I5014, $N5009, $N5010
    set $I5016, $I5014
    unless $I5014 goto if63_end128 
    set $N5012, $P103
    set $N5013, $P104
    add $N5011, $N5012, $N5013
    set $N5014, $P101
    iseq $I5015, $N5011, $N5014
    set $I5016, $I5015
  if63_end128:
    unless $I5016 goto if62_else125 
.annotate 'line', 124
    $P5051 = "RETURN"(1)
    goto if62_end126
  if62_else125:
    set $N5015, $P104
    set $N5016, $P101
    isne $I5017, $N5015, $N5016
    box $P5054, $I5017
    set $P5053, $P5054
    unless $I5017 goto if64_end130 
.annotate 'line', 129
    $P5052 = "RETURN"(0)
    set $P5053, $P5052
  if64_end130:
  if62_end126:
    set fb_tmp_14, _lex_param_0
    repr_defined $I5019, fb_tmp_14
    unless $I5019 goto if66_else133 
    set $P5055, fb_tmp_14["max_arity"]
    set $P5057, $P5055
    goto if66_end134
  if66_else133:
    null $P5056
    set $P5057, $P5056
  if66_end134:
    unless_null $P5057, vivi_67135
    null $P5058
    set $P5057, $P5058
  vivi_67135:
    set $N5017, $P5057
    find_lex $P5059, "$SLURPY_ARITY"
    set $N5018, $P5059
    isne $I5018, $N5017, $N5018
    set $I5022, $I5018
    unless $I5018 goto if65_end132 
    set fb_tmp_15, _lex_param_1
    repr_defined $I5021, fb_tmp_15
    unless $I5021 goto if68_else136 
    set $P5060, fb_tmp_15["max_arity"]
    set $P5062, $P5060
    goto if68_end137
  if68_else136:
    null $P5061
    set $P5062, $P5061
  if68_end137:
    unless_null $P5062, vivi_69138
    null $P5063
    set $P5062, $P5063
  vivi_69138:
    set $N5019, $P5062
    find_lex $P5064, "$SLURPY_ARITY"
    set $N5020, $P5064
    iseq $I5020, $N5019, $N5020
    set $I5022, $I5020
  if65_end132:
    $P5065 = "RETURN"($I5022)
    goto lexotic_68
  lexotic_67:
    .get_results ($P5065)
  lexotic_68:
    .return ($P5065) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_72_1381944239.86639") :anon :lex :outer("cuid_73_1381944239.86639")
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 108
    .lex "$type_obj_a", $P101 
    .lex "$type_obj_b", $P102 
    .local pmc fb_tmp_10 
    .local pmc fb_tmp_11 
    .local pmc fb_tmp_12 
    .local pmc fb_tmp_13 
    .local pmc tmp_1 
    .local pmc tmp_2 
    .local pmc tmp_3 
    .local pmc tmp_4 
    null $P5001
    set $P101, $P5001
    null $P5002
    set $P102, $P5002
    find_lex $P5003, "%a"
    set fb_tmp_11, $P5003
    repr_defined $I5002, fb_tmp_11
    unless $I5002 goto if52_else109 
    set $P5004, fb_tmp_11["types"]
    set $P5006, $P5004
    goto if52_end110
  if52_else109:
    null $P5005
    set $P5006, $P5005
  if52_end110:
    unless_null $P5006, vivi_53111
    null $P5007
    set $P5006, $P5007
  vivi_53111:
    set fb_tmp_10, $P5006
    repr_defined $I5001, fb_tmp_10
    unless $I5001 goto if51_else107 
    find_lex $P5009, "$i"
    set $I5003, $P5009
    set $P5008, fb_tmp_10[$I5003]
    set $P5011, $P5008
    goto if51_end108
  if51_else107:
    null $P5010
    set $P5011, $P5010
  if51_end108:
    unless_null $P5011, vivi_54112
    null $P5012
    set $P5011, $P5012
  vivi_54112:
    set $P101, $P5011
    find_lex $P5013, "%b"
    set fb_tmp_13, $P5013
    repr_defined $I5005, fb_tmp_13
    unless $I5005 goto if56_else115 
    set $P5014, fb_tmp_13["types"]
    set $P5016, $P5014
    goto if56_end116
  if56_else115:
    null $P5015
    set $P5016, $P5015
  if56_end116:
    unless_null $P5016, vivi_57117
    null $P5017
    set $P5016, $P5017
  vivi_57117:
    set fb_tmp_12, $P5016
    repr_defined $I5004, fb_tmp_12
    unless $I5004 goto if55_else113 
    find_lex $P5019, "$i"
    set $I5006, $P5019
    set $P5018, fb_tmp_12[$I5006]
    set $P5021, $P5018
    goto if55_end114
  if55_else113:
    null $P5020
    set $P5021, $P5020
  if55_end114:
    unless_null $P5021, vivi_58118
    null $P5022
    set $P5021, $P5022
  vivi_58118:
    set $P102, $P5021
    get_id $I5008, $P101
    get_id $I5009, $P102
    iseq $I5007, $I5008, $I5009
    unless $I5007 goto if59_else119 
.annotate 'line', 111
    find_lex $P5023, "$tied"
    set tmp_1, $P5023
    set $N5002, tmp_1
    set $N5003, 1
    add $N5001, $N5002, $N5003
    box $P5024, $N5001
    store_lex "$tied", $P5024
    goto if59_end120
  if59_else119:
.annotate 'line', 114
    $P5023 = "&is_narrower_type"($P101, $P102)
    unless $P5023 goto if60_else121 
    find_lex $P5024, "$narrower"
    set tmp_2, $P5024
    set $N5002, tmp_2
    set $N5003, 1
    add $N5001, $N5002, $N5003
    box $P5025, $N5001
    store_lex "$narrower", $P5025
    set $P5027, tmp_2
    goto if60_end122
  if60_else121:
.annotate 'line', 117
    $P5024 = "&is_narrower_type"($P102, $P101)
    isfalse $I5010, $P5024
    box $P5026, $I5010
    set $P5025, $P5026
    unless $I5010 goto if61_end124 
    find_lex $P5025, "$tied"
    set tmp_3, $P5025
    set $N5002, tmp_3
    set $N5003, 1
    add $N5001, $N5002, $N5003
    box $P5026, $N5001
    store_lex "$tied", $P5026
    set $P5025, tmp_3
  if61_end124:
    set $P5027, $P5025
  if60_end122:
  if59_end120:
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
.sub "" :subid("cuid_74_1381944239.86639") :anon :lex :outer("cuid_4_1381944239.86639")
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 142
    .lex "$candidate", $P101 
    .lex "$multi_sig", $P102 
    .lex "@types_list", $P103 
    .lex "@definedness_list", $P104 
    .lex "$sig_elems", $P105 
    .lex "%info", $P106 
    .lex "%significant_param", $P107 
    .lex "$j", $P108 
    .local pmc fb_tmp_16 
    .local pmc tmp_5 
    .local pmc fb_tmp_17 
    .local pmc tmp_6 
    .local pmc fb_tmp_18 
    .local pmc fb_tmp_19 
    .local pmc fb_tmp_20 
    .local pmc fb_tmp_21 
    .local pmc fb_tmp_22 
    .local pmc tmp_7 
    .local pmc fb_tmp_23 
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
    nqp_get_sc_object $P5011, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 5
    repr_get_attr_obj $P5012, $P5009, $P5011, "$!dispatchees", 2
    set fb_tmp_16, $P5012
    repr_defined $I5001, fb_tmp_16
    unless $I5001 goto if71_else146 
    find_lex $P5014, "$i"
    set $I5002, $P5014
    set $P5013, fb_tmp_16[$I5002]
    set $P5016, $P5013
    goto if71_end147
  if71_else146:
    null $P5015
    set $P5016, $P5015
  if71_end147:
    unless_null $P5016, vivi_72148
    null $P5017
    set $P5016, $P5017
  vivi_72148:
    set $P101, $P5016
.annotate 'line', 145
    $P5018 = $P101."signature"()
    set $P102, $P5018
.annotate 'line', 146
    $P5019 = $P102."types"()
    set $P103, $P5019
.annotate 'line', 147
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
  while73_test149:
    set $N5001, $P108
    set $N5002, $P105
    islt $I5004, $N5001, $N5002
    box $P5047, $I5004
    set $P5046, $P5047
    unless $I5004 goto while73_done153 
  while73_redo151:
.annotate 'line', 161
    set fb_tmp_17, $P106
    repr_defined $I5005, fb_tmp_17
    unless $I5005 goto if74_else154 
    set $P5030, fb_tmp_17["max_arity"]
    set $P5032, $P5030
    goto if74_end155
  if74_else154:
    null $P5031
    set $P5032, $P5031
  if74_end155:
    unless_null $P5032, vivi_75156
    null $P5033
    set $P5032, $P5033
  vivi_75156:
    set tmp_5, $P5032
    set $N5004, tmp_5
    set $N5005, 1
    add $N5003, $N5004, $N5005
    box $P5034, $N5003
    set $P106["max_arity"], $P5034
    set fb_tmp_18, $P106
    repr_defined $I5005, fb_tmp_18
    unless $I5005 goto if76_else157 
    set $P5030, fb_tmp_18["min_arity"]
    set $P5032, $P5030
    goto if76_end158
  if76_else157:
    null $P5031
    set $P5032, $P5031
  if76_end158:
    unless_null $P5032, vivi_77159
    null $P5033
    set $P5032, $P5033
  vivi_77159:
    set tmp_6, $P5032
    set $N5004, tmp_6
    set $N5005, 1
    add $N5003, $N5004, $N5005
    box $P5034, $N5003
    set $P106["min_arity"], $P5034
    set fb_tmp_19, $P106
    repr_defined $I5005, fb_tmp_19
    unless $I5005 goto if78_else160 
    set $P5030, fb_tmp_19["types"]
    set $P5032, $P5030
    goto if78_end161
  if78_else160:
    null $P5031
    set $P5032, $P5031
  if78_end161:
    unless_null $P5032, vivi_79162
    null $P5033
    set $P5032, $P5033
  vivi_79162:
    set fb_tmp_20, $P103
    repr_defined $I5006, fb_tmp_20
    unless $I5006 goto if80_else163 
    set $I5007, $P108
    set $P5034, fb_tmp_20[$I5007]
    set $P5036, $P5034
    goto if80_end164
  if80_else163:
    null $P5035
    set $P5036, $P5035
  if80_end164:
    unless_null $P5036, vivi_81165
    null $P5037
    set $P5036, $P5037
  vivi_81165:
    push $P5032, $P5036
    set fb_tmp_21, $P106
    repr_defined $I5008, fb_tmp_21
    unless $I5008 goto if82_else166 
    set $P5038, fb_tmp_21["definednesses"]
    set $P5040, $P5038
    goto if82_end167
  if82_else166:
    null $P5039
    set $P5040, $P5039
  if82_end167:
    unless_null $P5040, vivi_83168
    null $P5041
    set $P5040, $P5041
  vivi_83168:
    set fb_tmp_22, $P104
    repr_defined $I5009, fb_tmp_22
    unless $I5009 goto if84_else169 
    set $I5010, $P108
    set $P5042, fb_tmp_22[$I5010]
    set $P5044, $P5042
    goto if84_end170
  if84_else169:
    null $P5043
    set $P5044, $P5043
  if84_end170:
    unless_null $P5044, vivi_85171
    null $P5045
    set $P5044, $P5045
  vivi_85171:
    push $P5040, $P5044
    set fb_tmp_23, $P106
    repr_defined $I5011, fb_tmp_23
    unless $I5011 goto if86_else172 
    set $P5046, fb_tmp_23["num_types"]
    set $P5048, $P5046
    goto if86_end173
  if86_else172:
    null $P5047
    set $P5048, $P5047
  if86_end173:
    unless_null $P5048, vivi_87174
    null $P5049
    set $P5048, $P5049
  vivi_87174:
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
    goto while73_test149 
  while73_done153:
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
.sub "" :subid("cuid_75_1381944239.86639") :anon :lex :outer("cuid_4_1381944239.86639")
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 188
    .lex "$j", $P101 
    .local pmc fb_tmp_24 
    .local pmc fb_tmp_25 
    .local pmc fb_tmp_26 
    .local pmc fb_tmp_27 
    .local pmc fb_tmp_28 
    .local pmc fb_tmp_29 
    .local pmc fb_tmp_30 
    .local pmc fb_tmp_31 
    .local pmc fb_tmp_32 
    .local pmc tmp_10 
    .local pmc fb_tmp_33 
    .local pmc fb_tmp_34 
    .local pmc fb_tmp_35 
    .local pmc tmp_11 
    .local pmc fb_tmp_36 
    .local pmc fb_tmp_37 
    .local pmc fb_tmp_38 
    .local pmc tmp_12 
    .local pmc tmp_13 
    null $P5001
    set $P101, $P5001
    box $P5002, 0
    set $P101, $P5002
  while89_test180:
    set $N5001, $P101
    find_lex $P5003, "$num_candidates"
    set $N5002, $P5003
    islt $I5001, $N5001, $N5002
    box $P5052, $I5001
    set $P5051, $P5052
    unless $I5001 goto while89_done184 
  while89_redo182:
.annotate 'line', 190
    find_lex $P5004, "$i"
    set $N5003, $P5004
    set $N5004, $P101
    isne $I5002, $N5003, $N5004
    unless $I5002 goto if90_end186 
.annotate 'line', 191
.annotate 'line', 192
    find_lex $P5005, "@graph"
    set fb_tmp_25, $P5005
    repr_defined $I5004, fb_tmp_25
    unless $I5004 goto if93_else191 
    find_lex $P5007, "$i"
    set $I5005, $P5007
    set $P5006, fb_tmp_25[$I5005]
    set $P5009, $P5006
    goto if93_end192
  if93_else191:
    null $P5008
    set $P5009, $P5008
  if93_end192:
    unless_null $P5009, vivi_94193
    null $P5010
    set $P5009, $P5010
  vivi_94193:
    set fb_tmp_24, $P5009
    repr_defined $I5003, fb_tmp_24
    unless $I5003 goto if92_else189 
    set $P5011, fb_tmp_24["info"]
    set $P5013, $P5011
    goto if92_end190
  if92_else189:
    null $P5012
    set $P5013, $P5012
  if92_end190:
    unless_null $P5013, vivi_95194
    null $P5014
    set $P5013, $P5014
  vivi_95194:
    find_lex $P5015, "@graph"
    set fb_tmp_27, $P5015
    repr_defined $I5007, fb_tmp_27
    unless $I5007 goto if97_else197 
    set $I5008, $P101
    set $P5016, fb_tmp_27[$I5008]
    set $P5018, $P5016
    goto if97_end198
  if97_else197:
    null $P5017
    set $P5018, $P5017
  if97_end198:
    unless_null $P5018, vivi_98199
    null $P5019
    set $P5018, $P5019
  vivi_98199:
    set fb_tmp_26, $P5018
    repr_defined $I5006, fb_tmp_26
    unless $I5006 goto if96_else195 
    set $P5020, fb_tmp_26["info"]
    set $P5022, $P5020
    goto if96_end196
  if96_else195:
    null $P5021
    set $P5022, $P5021
  if96_end196:
    unless_null $P5022, vivi_99200
    null $P5023
    set $P5022, $P5023
  vivi_99200:
    $P5024 = "&is_narrower"($P5013, $P5022)
    set $P5050, $P5024
    unless $P5024 goto if91_end188 
    find_lex $P5025, "@graph"
    set fb_tmp_29, $P5025
    repr_defined $I5010, fb_tmp_29
    unless $I5010 goto if101_else203 
    find_lex $P5027, "$i"
    set $I5011, $P5027
    set $P5026, fb_tmp_29[$I5011]
    set $P5029, $P5026
    goto if101_end204
  if101_else203:
    null $P5028
    set $P5029, $P5028
  if101_end204:
    unless_null $P5029, vivi_102205
    null $P5030
    set $P5029, $P5030
  vivi_102205:
    set fb_tmp_28, $P5029
    repr_defined $I5009, fb_tmp_28
    unless $I5009 goto if100_else201 
    set $P5031, fb_tmp_28["edges"]
    set $P5033, $P5031
    goto if100_end202
  if100_else201:
    null $P5032
    set $P5033, $P5032
  if100_end202:
    unless_null $P5033, vivi_103206
    null $P5034
    set $P5033, $P5034
  vivi_103206:
    find_lex $P5035, "@graph"
    set fb_tmp_31, $P5035
    repr_defined $I5013, fb_tmp_31
    unless $I5013 goto if105_else209 
    find_lex $P5037, "$i"
    set $I5014, $P5037
    set $P5036, fb_tmp_31[$I5014]
    set $P5039, $P5036
    goto if105_end210
  if105_else209:
    null $P5038
    set $P5039, $P5038
  if105_end210:
    unless_null $P5039, vivi_106211
    null $P5040
    set $P5039, $P5040
  vivi_106211:
    set fb_tmp_30, $P5039
    repr_defined $I5012, fb_tmp_30
    unless $I5012 goto if104_else207 
    set $P5041, fb_tmp_30["edges_out"]
    set $P5043, $P5041
    goto if104_end208
  if104_else207:
    null $P5042
    set $P5043, $P5042
  if104_end208:
    unless_null $P5043, vivi_107212
    null $P5044
    set $P5043, $P5044
  vivi_107212:
    set $I5015, $P5043
    find_lex $P5045, "@graph"
    set fb_tmp_32, $P5045
    repr_defined $I5016, fb_tmp_32
    unless $I5016 goto if108_else213 
    set $I5017, $P101
    set $P5046, fb_tmp_32[$I5017]
    set $P5048, $P5046
    goto if108_end214
  if108_else213:
    null $P5047
    set $P5048, $P5047
  if108_end214:
    unless_null $P5048, vivi_109215
    null $P5049
    set $P5048, $P5049
  vivi_109215:
    set $P5033[$I5015], $P5048
    find_lex $P5050, "@graph"
    set fb_tmp_34, $P5050
    repr_defined $I5019, fb_tmp_34
    unless $I5019 goto if111_else218 
    find_lex $P5052, "$i"
    set $I5020, $P5052
    set $P5051, fb_tmp_34[$I5020]
    set $P5054, $P5051
    goto if111_end219
  if111_else218:
    null $P5053
    set $P5054, $P5053
  if111_end219:
    unless_null $P5054, vivi_112220
    null $P5055
    set $P5054, $P5055
  vivi_112220:
    set fb_tmp_33, $P5054
    repr_defined $I5018, fb_tmp_33
    unless $I5018 goto if110_else216 
    set $P5056, fb_tmp_33["edges_out"]
    set $P5058, $P5056
    goto if110_end217
  if110_else216:
    null $P5057
    set $P5058, $P5057
  if110_end217:
    unless_null $P5058, vivi_113221
    null $P5059
    set $P5058, $P5059
  vivi_113221:
    set tmp_10, $P5058
    find_lex $P5060, "@graph"
    set fb_tmp_35, $P5060
    repr_defined $I5021, fb_tmp_35
    unless $I5021 goto if114_else222 
    find_lex $P5062, "$i"
    set $I5022, $P5062
    set $P5061, fb_tmp_35[$I5022]
    set $P5064, $P5061
    goto if114_end223
  if114_else222:
    null $P5063
    set $P5064, $P5063
  if114_end223:
    unless_null $P5064, vivi_115224
    null $P5065
    set $P5064, $P5065
  vivi_115224:
    set $N5006, tmp_10
    set $N5007, 1
    add $N5005, $N5006, $N5007
    box $P5066, $N5005
    set $P5064["edges_out"], $P5066
    find_lex $P5050, "@graph"
    set fb_tmp_37, $P5050
    repr_defined $I5019, fb_tmp_37
    unless $I5019 goto if117_else227 
    set $I5020, $P101
    set $P5051, fb_tmp_37[$I5020]
    set $P5053, $P5051
    goto if117_end228
  if117_else227:
    null $P5052
    set $P5053, $P5052
  if117_end228:
    unless_null $P5053, vivi_118229
    null $P5054
    set $P5053, $P5054
  vivi_118229:
    set fb_tmp_36, $P5053
    repr_defined $I5018, fb_tmp_36
    unless $I5018 goto if116_else225 
    set $P5055, fb_tmp_36["edges_in"]
    set $P5057, $P5055
    goto if116_end226
  if116_else225:
    null $P5056
    set $P5057, $P5056
  if116_end226:
    unless_null $P5057, vivi_119230
    null $P5058
    set $P5057, $P5058
  vivi_119230:
    set tmp_11, $P5057
    find_lex $P5059, "@graph"
    set fb_tmp_38, $P5059
    repr_defined $I5021, fb_tmp_38
    unless $I5021 goto if120_else231 
    set $I5022, $P101
    set $P5060, fb_tmp_38[$I5022]
    set $P5062, $P5060
    goto if120_end232
  if120_else231:
    null $P5061
    set $P5062, $P5061
  if120_end232:
    unless_null $P5062, vivi_121233
    null $P5063
    set $P5062, $P5063
  vivi_121233:
    set $N5006, tmp_11
    set $N5007, 1
    add $N5005, $N5006, $N5007
    box $P5064, $N5005
    set $P5062["edges_in"], $P5064
    set $P5050, tmp_11
  if91_end188:
  if90_end186:
    set tmp_12, $P101
    set $N5006, tmp_12
    set $N5007, 1
    add $N5005, $N5006, $N5007
    box $P5051, $N5005
    set $P101, $P5051
    set $P5051, tmp_12
    goto while89_test180 
  while89_done184:
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
.sub "" :subid("cuid_77_1381944239.86639") :anon :lex :outer("cuid_4_1381944239.86639")
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 206
    .const 'Sub' $P5054 = 'cuid_76_1381944239.86639' 
    capture_lex $P5054 
    .lex "$rem_results", $P101 
    .lex "$i", $P102 
    .local pmc fb_tmp_39 
    .local pmc fb_tmp_40 
    .local pmc fb_tmp_41 
    .local pmc fb_tmp_42 
    .local pmc tmp_14 
    .local pmc fb_tmp_43 
    .local pmc tmp_15 
    .local pmc fb_tmp_44 
    .local pmc fb_tmp_45 
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
  while123_test239:
    set $N5001, $P102
    find_lex $P5006, "$num_candidates"
    set $N5002, $P5006
    islt $I5002, $N5001, $N5002
    box $P5033, $I5002
    set $P5032, $P5033
    unless $I5002 goto while123_done243 
  while123_redo241:
.annotate 'line', 212
    find_lex $P5007, "@graph"
    set fb_tmp_40, $P5007
    repr_defined $I5005, fb_tmp_40
    unless $I5005 goto if126_else248 
    set $I5006, $P102
    set $P5008, fb_tmp_40[$I5006]
    set $P5010, $P5008
    goto if126_end249
  if126_else248:
    null $P5009
    set $P5010, $P5009
  if126_end249:
    unless_null $P5010, vivi_127250
    null $P5011
    set $P5010, $P5011
  vivi_127250:
    set fb_tmp_39, $P5010
    repr_defined $I5004, fb_tmp_39
    unless $I5004 goto if125_else246 
    set $P5012, fb_tmp_39["edges_in"]
    set $P5014, $P5012
    goto if125_end247
  if125_else246:
    null $P5013
    set $P5014, $P5013
  if125_end247:
    unless_null $P5014, vivi_128251
    null $P5015
    set $P5014, $P5015
  vivi_128251:
    set $N5003, $P5014
    set $N5004, 0
    iseq $I5003, $N5003, $N5004
    unless $I5003 goto if124_end245 
.annotate 'line', 213
    find_lex $P5016, "@result"
    find_lex $P5017, "@graph"
    set fb_tmp_42, $P5017
    repr_defined $I5008, fb_tmp_42
    unless $I5008 goto if130_else254 
    set $I5009, $P102
    set $P5018, fb_tmp_42[$I5009]
    set $P5020, $P5018
    goto if130_end255
  if130_else254:
    null $P5019
    set $P5020, $P5019
  if130_end255:
    unless_null $P5020, vivi_131256
    null $P5021
    set $P5020, $P5021
  vivi_131256:
    set fb_tmp_41, $P5020
    repr_defined $I5007, fb_tmp_41
    unless $I5007 goto if129_else252 
    set $P5022, fb_tmp_41["info"]
    set $P5024, $P5022
    goto if129_end253
  if129_else252:
    null $P5023
    set $P5024, $P5023
  if129_end253:
    unless_null $P5024, vivi_132257
    null $P5025
    set $P5024, $P5025
  vivi_132257:
    push $P5016, $P5024
    find_lex $P5026, "$candidates_to_sort"
    set tmp_14, $P5026
    set $N5006, tmp_14
    set $N5007, 1
    sub $N5005, $N5006, $N5007
    box $P5027, $N5005
    store_lex "$candidates_to_sort", $P5027
    find_lex $P5026, "@graph"
    set fb_tmp_43, $P5026
    repr_defined $I5010, fb_tmp_43
    unless $I5010 goto if133_else258 
    set $I5011, $P102
    set $P5027, fb_tmp_43[$I5011]
    set $P5029, $P5027
    goto if133_end259
  if133_else258:
    null $P5028
    set $P5029, $P5028
  if133_end259:
    unless_null $P5029, vivi_134260
    null $P5030
    set $P5029, $P5030
  vivi_134260:
    find_lex $P5031, "$EDGE_REMOVAL_TODO"
    set $P5029["edges_in"], $P5031
  if124_end245:
    set tmp_15, $P102
    set $N5006, tmp_15
    set $N5007, 1
    add $N5005, $N5006, $N5007
    box $P5032, $N5005
    set $P102, $P5032
    set $P5032, tmp_15
    goto while123_test239 
  while123_done243:
    set $N5005, $P101
    find_lex $P5034, "@result"
    elements $I5013, $P5034
    set $N5006, $I5013
    iseq $I5012, $N5005, $N5006
    unless $I5012 goto if135_end262 
.annotate 'line', 221
    box $P5035, "Circularity detected in multi sub types"
    die $P5035
  if135_end262:
    box $P5036, 0
    set $P102, $P5036
  while136_test263:
    set $N5007, $P102
    find_lex $P5037, "$num_candidates"
    set $N5008, $P5037
    islt $I5014, $N5007, $N5008
    box $P5051, $I5014
    set $P5050, $P5051
    unless $I5014 goto while136_done267 
  while136_redo265:
.annotate 'line', 228
    find_lex $P5038, "@graph"
    set fb_tmp_45, $P5038
    repr_defined $I5017, fb_tmp_45
    unless $I5017 goto if139_else272 
    set $I5018, $P102
    set $P5039, fb_tmp_45[$I5018]
    set $P5041, $P5039
    goto if139_end273
  if139_else272:
    null $P5040
    set $P5041, $P5040
  if139_end273:
    unless_null $P5041, vivi_140274
    null $P5042
    set $P5041, $P5042
  vivi_140274:
    set fb_tmp_44, $P5041
    repr_defined $I5016, fb_tmp_44
    unless $I5016 goto if138_else270 
    set $P5043, fb_tmp_44["edges_in"]
    set $P5045, $P5043
    goto if138_end271
  if138_else270:
    null $P5044
    set $P5045, $P5044
  if138_end271:
    unless_null $P5045, vivi_141275
    null $P5046
    set $P5045, $P5046
  vivi_141275:
    set $N5009, $P5045
    find_lex $P5047, "$EDGE_REMOVAL_TODO"
    set $N5010, $P5047
    iseq $I5015, $N5009, $N5010
    unless $I5015 goto if137_end269 
    .const 'Sub' $P5048 = 'cuid_76_1381944239.86639' 
    capture_lex $P5048
    $P5049 = $P5048()
  if137_end269:
    set tmp_18, $P102
    set $N5012, tmp_18
    set $N5013, 1
    add $N5011, $N5012, $N5013
    box $P5050, $N5011
    set $P102, $P5050
    set $P5050, tmp_18
    goto while136_test263 
  while136_done267:
    find_lex $P5052, "@result"
    null $P5053
    push $P5052, $P5053
    .return ($P5052) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_76_1381944239.86639") :anon :lex :outer("cuid_77_1381944239.86639")
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 229
    .lex "$j", $P101 
    .local pmc fb_tmp_46 
    .local pmc fb_tmp_47 
    .local pmc tmp_16 
    .local pmc fb_tmp_48 
    .local pmc fb_tmp_49 
    .local pmc fb_tmp_50 
    .local pmc fb_tmp_51 
    .local pmc fb_tmp_52 
    .local pmc fb_tmp_53 
    .local pmc fb_tmp_54 
    .local pmc tmp_17 
    .local pmc fb_tmp_55 
    null $P5001
    set $P101, $P5001
    box $P5002, 0
    set $P101, $P5002
  while142_test276:
    set $N5001, $P101
    find_lex $P5003, "@graph"
    set fb_tmp_47, $P5003
    repr_defined $I5003, fb_tmp_47
    unless $I5003 goto if144_else283 
    find_lex $P5005, "$i"
    set $I5004, $P5005
    set $P5004, fb_tmp_47[$I5004]
    set $P5007, $P5004
    goto if144_end284
  if144_else283:
    null $P5006
    set $P5007, $P5006
  if144_end284:
    unless_null $P5007, vivi_145285
    null $P5008
    set $P5007, $P5008
  vivi_145285:
    set fb_tmp_46, $P5007
    repr_defined $I5002, fb_tmp_46
    unless $I5002 goto if143_else281 
    set $P5009, fb_tmp_46["edges_out"]
    set $P5011, $P5009
    goto if143_end282
  if143_else281:
    null $P5010
    set $P5011, $P5010
  if143_end282:
    unless_null $P5011, vivi_146286
    null $P5012
    set $P5011, $P5012
  vivi_146286:
    set $N5002, $P5011
    islt $I5001, $N5001, $N5002
    box $P5014, $I5001
    set $P5013, $P5014
    unless $I5001 goto while142_done280 
  while142_redo278:
.annotate 'line', 231
    find_lex $P5013, "@graph"
    set fb_tmp_51, $P5013
    repr_defined $I5008, fb_tmp_51
    unless $I5008 goto if150_else293 
    find_lex $P5015, "$i"
    set $I5009, $P5015
    set $P5014, fb_tmp_51[$I5009]
    set $P5017, $P5014
    goto if150_end294
  if150_else293:
    null $P5016
    set $P5017, $P5016
  if150_end294:
    unless_null $P5017, vivi_151295
    null $P5018
    set $P5017, $P5018
  vivi_151295:
    set fb_tmp_50, $P5017
    repr_defined $I5007, fb_tmp_50
    unless $I5007 goto if149_else291 
    set $P5019, fb_tmp_50["edges"]
    set $P5021, $P5019
    goto if149_end292
  if149_else291:
    null $P5020
    set $P5021, $P5020
  if149_end292:
    unless_null $P5021, vivi_152296
    null $P5022
    set $P5021, $P5022
  vivi_152296:
    set fb_tmp_49, $P5021
    repr_defined $I5006, fb_tmp_49
    unless $I5006 goto if148_else289 
    set $I5010, $P101
    set $P5023, fb_tmp_49[$I5010]
    set $P5025, $P5023
    goto if148_end290
  if148_else289:
    null $P5024
    set $P5025, $P5024
  if148_end290:
    unless_null $P5025, vivi_153297
    null $P5026
    set $P5025, $P5026
  vivi_153297:
    set fb_tmp_48, $P5025
    repr_defined $I5005, fb_tmp_48
    unless $I5005 goto if147_else287 
    set $P5027, fb_tmp_48["edges_in"]
    set $P5029, $P5027
    goto if147_end288
  if147_else287:
    null $P5028
    set $P5029, $P5028
  if147_end288:
    unless_null $P5029, vivi_154298
    null $P5030
    set $P5029, $P5030
  vivi_154298:
    set tmp_16, $P5029
    find_lex $P5031, "@graph"
    set fb_tmp_54, $P5031
    repr_defined $I5013, fb_tmp_54
    unless $I5013 goto if157_else303 
    find_lex $P5033, "$i"
    set $I5014, $P5033
    set $P5032, fb_tmp_54[$I5014]
    set $P5035, $P5032
    goto if157_end304
  if157_else303:
    null $P5034
    set $P5035, $P5034
  if157_end304:
    unless_null $P5035, vivi_158305
    null $P5036
    set $P5035, $P5036
  vivi_158305:
    set fb_tmp_53, $P5035
    repr_defined $I5012, fb_tmp_53
    unless $I5012 goto if156_else301 
    set $P5037, fb_tmp_53["edges"]
    set $P5039, $P5037
    goto if156_end302
  if156_else301:
    null $P5038
    set $P5039, $P5038
  if156_end302:
    unless_null $P5039, vivi_159306
    null $P5040
    set $P5039, $P5040
  vivi_159306:
    set fb_tmp_52, $P5039
    repr_defined $I5011, fb_tmp_52
    unless $I5011 goto if155_else299 
    set $I5015, $P101
    set $P5041, fb_tmp_52[$I5015]
    set $P5043, $P5041
    goto if155_end300
  if155_else299:
    null $P5042
    set $P5043, $P5042
  if155_end300:
    unless_null $P5043, vivi_160307
    null $P5044
    set $P5043, $P5044
  vivi_160307:
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
    goto while142_test276 
  while142_done280:
    find_lex $P5015, "@graph"
    set fb_tmp_55, $P5015
    repr_defined $I5005, fb_tmp_55
    unless $I5005 goto if161_else308 
    find_lex $P5017, "$i"
    set $I5006, $P5017
    set $P5016, fb_tmp_55[$I5006]
    set $P5019, $P5016
    goto if161_end309
  if161_else308:
    null $P5018
    set $P5019, $P5018
  if161_end309:
    unless_null $P5019, vivi_162310
    null $P5020
    set $P5019, $P5020
  vivi_162310:
    find_lex $P5021, "$EDGE_REMOVED"
    set $P5019["edges_in"], $P5021
    .return ($P5021) 
.end
.HLL "nqp"
.namespace []
.sub "dispatch" :subid("cuid_5_1381944239.86639") :anon :lex :outer("cuid_70_1381944239.86639")
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 250
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5065 = 'cuid_79_1381944239.86639' 
    capture_lex $P5065 
    .const 'Sub' $P5065 = 'cuid_80_1381944239.86639' 
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
    .local pmc fb_tmp_56 
    .local pmc tmp_19 
    .local pmc fb_tmp_57 
    .local pmc fb_tmp_58 
    .local pmc fb_tmp_59 
    .local pmc tmp_20 
    .local pmc fb_tmp_60 
    .local pmc fb_tmp_61 
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
    nqp_get_sc_object $P5012, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 5
    repr_get_attr_obj $P5013, $P5011, $P5012, "$!dispatch_order", 4
    set $P102, $P5013
    isnull $I5002, $P102
    unless $I5002 goto if163_end312 
.annotate 'line', 256
    nqp_disable_sc_write_barrier 
    nqp_decontainerize $P5014, _lex_param_0
    nqp_get_sc_object $P5015, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 5
.annotate 'line', 258
    nqp_decontainerize $P5016, _lex_param_0
    $P5017 = $P5016."sort_dispatchees"()
    repr_bind_attr_obj $P5014, $P5015, "$!dispatch_order", 4, $P5017
    set $P102, $P5017
    nqp_enable_sc_write_barrier 
  if163_end312:
    elements $I5003, $P102
    box $P5018, $I5003
    set $P103, $P5018
    box $P5019, 0
    set $P108, $P5019
    new $P5053, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5053, while164_handlers316
    push_eh $P5053
  while164_test313:
    box $P5054, 1
    set $P5052, $P5054
    unless 1 goto while164_done317 
  while164_redo315:
.annotate 'line', 272
    set fb_tmp_56, $P102
    repr_defined $I5004, fb_tmp_56
    unless $I5004 goto if165_else318 
    set $I5005, $P108
    set $P5020, fb_tmp_56[$I5005]
    set $P5022, $P5020
    goto if165_end319
  if165_else318:
    null $P5021
    set $P5022, $P5021
  if165_end319:
    unless_null $P5022, vivi_166320
    null $P5023
    set $P5022, $P5023
  vivi_166320:
    set $P109, $P5022
    isnull $I5006, $P109
    unless $I5006 goto if167_end322 
.annotate 'line', 275
    elements $I5007, $P104
    unless $I5007 goto if168_end324 
.annotate 'line', 277
    die 0, .CONTROL_LOOP_LAST
  if168_end324:
    set tmp_19, $P108
    set $N5002, tmp_19
    set $N5003, 1
    add $N5001, $N5002, $N5003
    box $P5024, $N5001
    set $P108, $P5024
    set fb_tmp_57, $P102
    repr_defined $I5009, fb_tmp_57
    unless $I5009 goto if170_else327 
    set $I5010, $P108
    set $P5024, fb_tmp_57[$I5010]
    set $P5026, $P5024
    goto if170_end328
  if170_else327:
    null $P5025
    set $P5026, $P5025
  if170_end328:
    unless_null $P5026, vivi_171329
    null $P5027
    set $P5026, $P5027
  vivi_171329:
    isnull $I5008, $P5026
    unless $I5008 goto if169_else325 
.annotate 'line', 283
    die 0, .CONTROL_LOOP_LAST
    set $I5011, 0
    goto if169_end326
  if169_else325:
.annotate 'line', 286
    die 0, .CONTROL_LOOP_NEXT
    set $I5011, 0
  if169_end326:
  if167_end322:
    set $N5001, $P101
    set fb_tmp_58, $P109
    repr_defined $I5013, fb_tmp_58
    unless $I5013 goto if174_else334 
    set $P5028, fb_tmp_58["min_arity"]
    set $P5030, $P5028
    goto if174_end335
  if174_else334:
    null $P5029
    set $P5030, $P5029
  if174_end335:
    unless_null $P5030, vivi_175336
    null $P5031
    set $P5030, $P5031
  vivi_175336:
    set $N5002, $P5030
    islt $I5012, $N5001, $N5002
    set $I5016, $I5012
    if $I5012 goto unless173_end333 
    set $N5003, $P101
    set fb_tmp_59, $P109
    repr_defined $I5015, fb_tmp_59
    unless $I5015 goto if176_else337 
    set $P5032, fb_tmp_59["max_arity"]
    set $P5034, $P5032
    goto if176_end338
  if176_else337:
    null $P5033
    set $P5034, $P5033
  if176_end338:
    unless_null $P5034, vivi_177339
    null $P5035
    set $P5034, $P5035
  vivi_177339:
    set $N5004, $P5034
    isgt $I5014, $N5003, $N5004
    set $I5016, $I5014
  unless173_end333:
    unless $I5016 goto if172_end331 
.annotate 'line', 292
    set tmp_20, $P108
    set $N5006, tmp_20
    set $N5007, 1
    add $N5005, $N5006, $N5007
    box $P5036, $N5005
    set $P108, $P5036
    die 0, .CONTROL_LOOP_NEXT
  if172_end331:
    set fb_tmp_60, $P109
    repr_defined $I5018, fb_tmp_60
    unless $I5018 goto if179_else342 
    set $P5036, fb_tmp_60["num_types"]
    set $P5038, $P5036
    goto if179_end343
  if179_else342:
    null $P5037
    set $P5038, $P5037
  if179_end343:
    unless_null $P5038, vivi_180344
    null $P5039
    set $P5038, $P5039
  vivi_180344:
    set $N5005, $P5038
    set $N5006, $P101
    isgt $I5017, $N5005, $N5006
    unless $I5017 goto if178_else340 
    set $P5044, $P101
    goto if178_end341
  if178_else340:
    set fb_tmp_61, $P109
    repr_defined $I5019, fb_tmp_61
    unless $I5019 goto if181_else345 
    set $P5040, fb_tmp_61["num_types"]
    set $P5042, $P5040
    goto if181_end346
  if181_else345:
    null $P5041
    set $P5042, $P5041
  if181_end346:
    unless_null $P5042, vivi_182347
    null $P5043
    set $P5042, $P5043
  vivi_182347:
    set $P5044, $P5042
  if178_end341:
    set $P106, $P5044
    box $P5045, 0
    set $P105, $P5045
    box $P5046, 0
    set $P107, $P5046
    new $P5050, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5050, while183_handlers351
    push_eh $P5050
  while183_test348:
    set $N5007, $P107
    set $N5008, $P106
    islt $I5020, $N5007, $N5008
    box $P5051, $I5020
    set $P5049, $P5051
    unless $I5020 goto while183_done352 
  while183_redo350:
    .const 'Sub' $P5047 = 'cuid_79_1381944239.86639' 
    capture_lex $P5047
    $P5048 = $P5047()
    set $P5049, $P5048
    goto while183_test348 
  while183_handlers351:
    .get_results ($P5050)
    pop_upto_eh $P5050
    getattribute $P5050, $P5050, 'type'
    eq $P5050, .CONTROL_LOOP_NEXT, while183_test348
    eq $P5050, .CONTROL_LOOP_REDO, while183_redo350
  while183_done352:
    pop_eh 
    unless $P105 goto if201_end384 
.annotate 'line', 323
    set tmp_22, $P108
    set $N5010, tmp_22
    set $N5011, 1
    add $N5009, $N5010, $N5011
    box $P5052, $N5009
    set $P108, $P5052
    die 0, .CONTROL_LOOP_NEXT
  if201_end384:
    push $P104, $P109
    set tmp_23, $P108
    set $N5010, tmp_23
    set $N5011, 1
    add $N5009, $N5010, $N5011
    box $P5052, $N5009
    set $P108, $P5052
    set $P5052, tmp_23
    goto while164_test313 
  while164_handlers316:
    .get_results ($P5053)
    pop_upto_eh $P5053
    getattribute $P5053, $P5053, 'type'
    eq $P5053, .CONTROL_LOOP_NEXT, while164_test313
    eq $P5053, .CONTROL_LOOP_REDO, while164_redo315
  while164_done317:
    pop_eh 
    elements $I5022, $P104
    set $N5009, $I5022
    set $N5010, 1
    iseq $I5021, $N5009, $N5010
    unless $I5021 goto if202_else385 
    .const 'Sub' $P5055 = 'cuid_80_1381944239.86639' 
    capture_lex $P5055
    $P5056 = $P5055()
    set $P5064, $P5056
    goto if202_end386
  if202_else385:
    elements $I5024, $P104
    set $N5011, $I5024
    set $N5012, 0
    iseq $I5023, $N5011, $N5012
    unless $I5023 goto if207_else393 
.annotate 'line', 341
.annotate 'line', 343
    nqp_decontainerize $P5057, _lex_param_0
    $P5058 = $P5057."name"()
    set $S5003, $P5058
    concat $S5002, "No applicable candidates found to dispatch to for '", $S5003
    concat $S5001, $S5002, "'."
    box $P5059, $S5001
    die $P5059
    set $P5063, $P5059
    goto if207_end394
  if207_else393:
.annotate 'line', 345
.annotate 'line', 347
    nqp_decontainerize $P5060, _lex_param_0
    $P5061 = $P5060."name"()
    set $S5006, $P5061
    concat $S5005, "Ambiguous dispatch to multi '", $S5006
    concat $S5004, $S5005, "'."
    box $P5062, $S5004
    die $P5062
    set $P5063, $P5062
  if207_end394:
    set $P5064, $P5063
  if202_end386:
    .return ($P5064) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_79_1381944239.86639") :anon :lex :outer("cuid_5_1381944239.86639")
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 303
    .const 'Sub' $P5035 = 'cuid_78_1381944239.86639' 
    capture_lex $P5035 
    .lex "$param", $P101 
    .lex "$param_type", $P102 
    .lex "$type_obj", $P103 
    .lex "$definedness", $P104 
    .local pmc fb_tmp_62 
    .local pmc fb_tmp_63 
    .local pmc fb_tmp_64 
    .local pmc fb_tmp_65 
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
    set fb_tmp_63, $P5009
    repr_defined $I5003, fb_tmp_63
    unless $I5003 goto if185_else355 
    set $P5010, fb_tmp_63["types"]
    set $P5012, $P5010
    goto if185_end356
  if185_else355:
    null $P5011
    set $P5012, $P5011
  if185_end356:
    unless_null $P5012, vivi_186357
    null $P5013
    set $P5012, $P5013
  vivi_186357:
    set fb_tmp_62, $P5012
    repr_defined $I5002, fb_tmp_62
    unless $I5002 goto if184_else353 
    find_lex $P5015, "$i"
    set $I5004, $P5015
    set $P5014, fb_tmp_62[$I5004]
    set $P5017, $P5014
    goto if184_end354
  if184_else353:
    null $P5016
    set $P5017, $P5016
  if184_end354:
    unless_null $P5017, vivi_187358
    null $P5018
    set $P5017, $P5018
  vivi_187358:
    set $P103, $P5017
    find_lex $P5019, "$cur_candidate"
    set fb_tmp_65, $P5019
    repr_defined $I5006, fb_tmp_65
    unless $I5006 goto if189_else361 
    set $P5020, fb_tmp_65["definednesses"]
    set $P5022, $P5020
    goto if189_end362
  if189_else361:
    null $P5021
    set $P5022, $P5021
  if189_end362:
    unless_null $P5022, vivi_190363
    null $P5023
    set $P5022, $P5023
  vivi_190363:
    set fb_tmp_64, $P5022
    repr_defined $I5005, fb_tmp_64
    unless $I5005 goto if188_else359 
    find_lex $P5025, "$i"
    set $I5007, $P5025
    set $P5024, fb_tmp_64[$I5007]
    set $P5027, $P5024
    goto if188_end360
  if188_else359:
    null $P5026
    set $P5027, $P5026
  if188_end360:
    unless_null $P5027, vivi_191364
    null $P5028
    set $P5027, $P5028
  vivi_191364:
    set $P104, $P5027
    get_id $I5009, $P102
    get_id $I5010, $P103
    iseq $I5008, $I5009, $I5010
    set $I5012, $I5008
    if $I5008 goto unless194_end370 
    isnull $I5011, $P103
    set $I5012, $I5011
  unless194_end370:
    box $P5031, $I5012
    set $P5030, $P5031
    if $I5012 goto unless193_end368 
.annotate 'line', 308
    $P5029 = "&is_narrower_type"($P102, $P103)
    set $P5030, $P5029
  unless193_end368:
    if $P5030 goto unless192_end366 
    box $P5032, 1
    store_lex "$type_mismatch", $P5032
    die 0, .CONTROL_LOOP_LAST
  unless192_end366:
    unless $P104 goto if195_end372 
    .const 'Sub' $P5033 = 'cuid_78_1381944239.86639' 
    capture_lex $P5033
    $P5034 = $P5033()
  if195_end372:
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
.sub "" :subid("cuid_78_1381944239.86639") :anon :lex :outer("cuid_79_1381944239.86639")
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 312
    .lex "$defined", $P101 
    null $P5001
    set $P101, $P5001
    find_lex $P5002, "$param_type"
    isnull $I5001, $P5002
    unless $I5001 goto if196_else373 
    find_lex $P5003, "$param"
    defined $I5002, $P5003
    set $I5004, $I5002
    goto if196_end374
  if196_else373:
    find_lex $P5004, "$param"
    repr_defined $I5003, $P5004
    set $I5004, $I5003
  if196_end374:
    box $P5005, $I5004
    set $P101, $P5005
    isfalse $I5005, $P101
    set $I5007, $I5005
    unless $I5005 goto if199_end380 
    find_lex $P5006, "$definedness"
    set $N5001, $P5006
    find_lex $P5007, "$DEFINED_ONLY"
    set $N5002, $P5007
    iseq $I5006, $N5001, $N5002
    set $I5007, $I5006
  if199_end380:
    box $P5013, $I5007
    set $P5012, $P5013
    if $I5007 goto unless198_end378 
    set $P5010, $P101
    unless $P101 goto if200_end382 
    find_lex $P5008, "$definedness"
    set $N5003, $P5008
    find_lex $P5009, "$UNDEFINED_ONLY"
    set $N5004, $P5009
    iseq $I5008, $N5003, $N5004
    box $P5011, $I5008
    set $P5010, $P5011
  if200_end382:
    set $P5012, $P5010
  unless198_end378:
    set $P5015, $P5012
    unless $P5012 goto if197_end376 
.annotate 'line', 315
    box $P5014, 1
    store_lex "$type_mismatch", $P5014
    die 0, .CONTROL_LOOP_LAST
    box $P5016, 0
    set $P5015, $P5016
  if197_end376:
    .return ($P5015) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_80_1381944239.86639") :anon :lex :outer("cuid_5_1381944239.86639")
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 334
    .lex "$result", $P101 
    .local pmc fb_tmp_66 
    .local pmc fb_tmp_67 
    null $P5001
    set $P101, $P5001
    find_lex $P5002, "@possibles"
    set fb_tmp_67, $P5002
    repr_defined $I5002, fb_tmp_67
    unless $I5002 goto if204_else389 
    set $P5003, fb_tmp_67[0]
    set $P5005, $P5003
    goto if204_end390
  if204_else389:
    null $P5004
    set $P5005, $P5004
  if204_end390:
    unless_null $P5005, vivi_205391
    null $P5006
    set $P5005, $P5006
  vivi_205391:
    set fb_tmp_66, $P5005
    repr_defined $I5001, fb_tmp_66
    unless $I5001 goto if203_else387 
    set $P5007, fb_tmp_66["sub"]
    set $P5009, $P5007
    goto if203_end388
  if203_else387:
    null $P5008
    set $P5009, $P5008
  if203_end388:
    unless_null $P5009, vivi_206392
    null $P5010
    set $P5009, $P5010
  vivi_206392:
    set $P101, $P5009
    nqp_disable_sc_write_barrier 
    find_lex $P5012, "self"
    nqp_decontainerize $P5011, $P5012
    nqp_get_sc_object $P5013, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 5
    find_lex $P5016, "self"
    nqp_decontainerize $P5015, $P5016
    nqp_get_sc_object $P5017, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 5
    repr_get_attr_obj $P5018, $P5015, $P5017, "$!dispatch_cache", 3
    find_lex $P5019, "$capture"
    multi_cache_add $P5014, $P5018, $P5019, $P101
    repr_bind_attr_obj $P5011, $P5013, "$!dispatch_cache", 3, $P5014
    nqp_enable_sc_write_barrier 
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "clone" :subid("cuid_6_1381944239.86639") :anon :lex :outer("cuid_70_1381944239.86639")
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 351
    .param pmc _lex_param_0 
    .lex "$do", $P101 
    .lex "$der", $P102 
    .lex "self", _lex_param_0 
    null $P5001
    set $P101, $P5001
    null $P5002
    set $P102, $P5002
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 5
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!do", 0
    repr_clone $P5003, $P5006
    set $P101, $P5003
    nqp_decontainerize $P5008, _lex_param_0
    repr_clone $P5007, $P5008
    set $P102, $P5007
    nqp_get_sc_object $P5009, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 5
    setattribute $P102, $P5009, "$!do", $P101
    set_sub_code_object $P101, $P102
    nqp_decontainerize $P5010, _lex_param_0
    nqp_get_sc_object $P5011, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 5
    repr_get_attr_obj $P5012, $P5010, $P5011, "$!clone_callback", 5
    isnull $I5001, $P5012
    if $I5001 goto unless208_end396 
.annotate 'line', 361
.annotate 'line', 362
    nqp_decontainerize $P5016, _lex_param_0
    nqp_get_sc_object $P5017, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 5
    repr_get_attr_obj $P5018, $P5016, $P5017, "$!do", 0
    nqp_decontainerize $P5013, _lex_param_0
    nqp_get_sc_object $P5014, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 5
    repr_get_attr_obj $P5015, $P5013, $P5014, "$!clone_callback", 5
    $P5019 = $P5015($P5018, $P101, $P102)
  unless208_end396:
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "!set_name" :subid("cuid_7_1381944239.86639") :anon :lex :outer("cuid_70_1381944239.86639")
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 368
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 5
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!do", 0
    set $S5001, _lex_param_1
    assign $P5003, $S5001
    .return ($S5001) 
.end
.HLL "nqp"
.namespace []
.sub "name" :subid("cuid_8_1381944239.86639") :anon :lex :outer("cuid_70_1381944239.86639")
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 372
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 5
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!do", 0
    set $S5001, $P5003
    .return ($S5001) 
.end
.HLL "nqp"
.namespace []
.sub "signature" :subid("cuid_9_1381944239.86639") :anon :lex :outer("cuid_70_1381944239.86639")
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 376
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 5
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!signature", 1
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_81_1381944239.86639") :anon :lex :outer("cuid_47_1381944239.86639")
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 381
    .const 'Sub' $P5003 = 'cuid_10_1381944239.86639' 
    capture_lex $P5003 
    .const 'Sub' $P5003 = 'cuid_11_1381944239.86639' 
    capture_lex $P5003 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_10_1381944239.86639' 
    capture_lex $P5001
    .const 'Sub' $P5002 = 'cuid_11_1381944239.86639' 
    capture_lex $P5002
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "types" :subid("cuid_10_1381944239.86639") :anon :lex :outer("cuid_81_1381944239.86639")
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 384
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 6
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!types", 0
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "definednesses" :subid("cuid_11_1381944239.86639") :anon :lex :outer("cuid_81_1381944239.86639")
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 385
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 6
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!definednesses", 1
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_82_1381944239.86639") :anon :lex :outer("cuid_47_1381944239.86639")
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 388
    .const 'Sub' $P5018 = 'cuid_12_1381944239.86639' 
    capture_lex $P5018 
    .const 'Sub' $P5018 = 'cuid_13_1381944239.86639' 
    capture_lex $P5018 
    .const 'Sub' $P5018 = 'cuid_14_1381944239.86639' 
    capture_lex $P5018 
    .const 'Sub' $P5018 = 'cuid_15_1381944239.86639' 
    capture_lex $P5018 
    .const 'Sub' $P5018 = 'cuid_16_1381944239.86639' 
    capture_lex $P5018 
    .const 'Sub' $P5018 = 'cuid_17_1381944239.86639' 
    capture_lex $P5018 
    .const 'Sub' $P5018 = 'cuid_18_1381944239.86639' 
    capture_lex $P5018 
    .const 'Sub' $P5018 = 'cuid_19_1381944239.86639' 
    capture_lex $P5018 
    .const 'Sub' $P5018 = 'cuid_20_1381944239.86639' 
    capture_lex $P5018 
    .const 'Sub' $P5018 = 'cuid_21_1381944239.86639' 
    capture_lex $P5018 
    .const 'Sub' $P5018 = 'cuid_22_1381944239.86639' 
    capture_lex $P5018 
    .const 'Sub' $P5018 = 'cuid_23_1381944239.86639' 
    capture_lex $P5018 
    .const 'Sub' $P5018 = 'cuid_24_1381944239.86639' 
    capture_lex $P5018 
    .const 'Sub' $P5018 = 'cuid_25_1381944239.86639' 
    capture_lex $P5018 
    .const 'Sub' $P5018 = 'cuid_26_1381944239.86639' 
    capture_lex $P5018 
    .const 'Sub' $P5018 = 'cuid_27_1381944239.86639' 
    capture_lex $P5018 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .lex "$nfa_type", $P103 
    null $P5001
    set $P103, $P5001
    .const 'Sub' $P5002 = 'cuid_12_1381944239.86639' 
    capture_lex $P5002
    .const 'Sub' $P5003 = 'cuid_13_1381944239.86639' 
    capture_lex $P5003
    .const 'Sub' $P5004 = 'cuid_14_1381944239.86639' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_15_1381944239.86639' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_16_1381944239.86639' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_17_1381944239.86639' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_18_1381944239.86639' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_19_1381944239.86639' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_20_1381944239.86639' 
    capture_lex $P5010
    .const 'Sub' $P5011 = 'cuid_21_1381944239.86639' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_22_1381944239.86639' 
    capture_lex $P5012
    .const 'Sub' $P5013 = 'cuid_23_1381944239.86639' 
    capture_lex $P5013
    .const 'Sub' $P5014 = 'cuid_24_1381944239.86639' 
    capture_lex $P5014
    .const 'Sub' $P5015 = 'cuid_25_1381944239.86639' 
    capture_lex $P5015
    .const 'Sub' $P5016 = 'cuid_26_1381944239.86639' 
    capture_lex $P5016
    .const 'Sub' $P5017 = 'cuid_27_1381944239.86639' 
    capture_lex $P5017
    .return ($P5017) 
.end
.HLL "nqp"
.namespace []
.sub "SET_CAPS" :subid("cuid_12_1381944239.86639") :anon :lex :outer("cuid_82_1381944239.86639")
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 396
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5009 = 'cuid_83_1381944239.86639' 
    capture_lex $P5009 
    .lex "%h_caps", $P101 
    .lex "self", _lex_param_0 
    .lex "$caps", _lex_param_1 
    new $P5001, 'Hash'
    set $P101, $P5001
    set $P5002, _lex_param_1
    iter $P5004, _lex_param_1
  for_next397:
    unless $P5004, for_done399
    shift $P5006, $P5004
  for_redo398:
    .const 'Sub' $P5005 = 'cuid_83_1381944239.86639' 
    capture_lex $P5005
    $P5002 = $P5005($P5006)
    goto for_next397
  for_done399:
    nqp_decontainerize $P5007, _lex_param_0
    nqp_get_sc_object $P5008, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 9
    repr_bind_attr_obj $P5007, $P5008, "$!caps", 1, $P101
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_83_1381944239.86639") :anon :lex :outer("cuid_12_1381944239.86639")
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 398
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5001, "%h_caps"
.annotate 'line', 399
    $P5002 = _lex_param_0."key"()
    set $S5001, $P5002
    $P5003 = _lex_param_0."value"()
    set $P5001[$S5001], $P5003
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "SET_NFA" :subid("cuid_13_1381944239.86639") :anon :lex :outer("cuid_82_1381944239.86639")
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 403
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$nfa", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 9
.annotate 'line', 404
    nqp_decontainerize $P5003, _lex_param_0
    $P5004 = $P5003."!hllize_nfa"(_lex_param_1)
    repr_bind_attr_obj $P5001, $P5002, "$!nfa", 2, $P5004
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "SET_ALT_NFA" :subid("cuid_14_1381944239.86639") :anon :lex :outer("cuid_82_1381944239.86639")
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 406
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    .lex "$nfa", _lex_param_2 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 9
    repr_get_attr_obj $P5003, $P5001, $P5002, "%!alt_nfas", 3
    unless_null $P5003, vivi_209400
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 9
    new $P5006, 'Hash'
    repr_bind_attr_obj $P5004, $P5005, "%!alt_nfas", 3, $P5006
    set $P5003, $P5006
  vivi_209400:
    nqp_decontainerize $P5007, _lex_param_0
    nqp_get_sc_object $P5008, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 9
    repr_get_attr_obj $P5009, $P5007, $P5008, "%!alt_nfas", 3
    set $S5001, _lex_param_1
.annotate 'line', 408
    nqp_decontainerize $P5010, _lex_param_0
    $P5011 = $P5010."!hllize_nfa"(_lex_param_2)
    set $P5009[$S5001], $P5011
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "SET_GENERIC_NFA" :subid("cuid_15_1381944239.86639") :anon :lex :outer("cuid_82_1381944239.86639")
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 410
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$nfa", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 9
.annotate 'line', 411
    nqp_decontainerize $P5003, _lex_param_0
    $P5004 = _lex_param_1."save"()
    $P5005 = $P5003."!hllize_nfa"($P5004)
    repr_bind_attr_obj $P5001, $P5002, "$!generic_nfa", 4, $P5005
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "!hllize_nfa" :subid("cuid_16_1381944239.86639") :anon :lex :outer("cuid_82_1381944239.86639")
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 413
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5003 = 'cuid_86_1381944239.86639' 
    capture_lex $P5003 
    .lex "&hll_list", $P101 
    .lex "self", _lex_param_0 
    .lex "$nfa", _lex_param_1 
    .const 'Sub' $P5001 = 'cuid_86_1381944239.86639' 
    capture_lex $P5001
    set $P101, $P5001
.annotate 'line', 426
    $P5002 = "&hll_list"(_lex_param_1)
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "hll_list" :subid("cuid_86_1381944239.86639") :anon :lex :outer("cuid_16_1381944239.86639")
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 414
    .param pmc _lex_param_0 
    .const 'Sub' $P5004 = 'cuid_85_1381944239.86639' 
    capture_lex $P5004 
    .lex "$l", _lex_param_0 
    nqp_islist $I5001, _lex_param_0
    unless $I5001 goto if210_else401 
    .const 'Sub' $P5001 = 'cuid_85_1381944239.86639' 
    capture_lex $P5001
    $P5002 = $P5001()
    set $P5003, $P5002
    goto if210_end402
  if210_else401:
.annotate 'line', 422

    set $P5003, _lex_param_0
  if210_end402:
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_85_1381944239.86639") :anon :lex :outer("cuid_86_1381944239.86639")
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 415
    .const 'Sub' $P5009 = 'cuid_84_1381944239.86639' 
    capture_lex $P5009 
    .lex "@h_l", $P101 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    new $P5002, 'ResizablePMCArray'
    set $P101, $P5002
    find_lex $P5006, "$l"
    set $P5003, $P5006
    iter $P5005, $P5006
  for_next403:
    unless $P5005, for_done405
    shift $P5008, $P5005
  for_redo404:
    .const 'Sub' $P5007 = 'cuid_84_1381944239.86639' 
    capture_lex $P5007
    $P5003 = $P5007($P5008)
    goto for_next403
  for_done405:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_84_1381944239.86639") :anon :lex :outer("cuid_85_1381944239.86639")
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 417
    .param pmc _lex_param_0 
    .lex "$elem", _lex_param_0 
    find_lex $P5001, "@h_l"
.annotate 'line', 418
    $P5002 = "&hll_list"(_lex_param_0)
    push $P5001, $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "ADD_NESTED_CODE" :subid("cuid_17_1381944239.86639") :anon :lex :outer("cuid_82_1381944239.86639")
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 428
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$code", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 9
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!nested_codes", 5
    unless_null $P5003, vivi_211406
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 9
    new $P5006, 'ResizablePMCArray'
    repr_bind_attr_obj $P5004, $P5005, "@!nested_codes", 5, $P5006
    set $P5003, $P5006
  vivi_211406:
    nqp_decontainerize $P5007, _lex_param_0
    nqp_get_sc_object $P5008, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 9
    repr_get_attr_obj $P5009, $P5007, $P5008, "@!nested_codes", 5
    push $P5009, _lex_param_1
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "CAPS" :subid("cuid_18_1381944239.86639") :anon :lex :outer("cuid_82_1381944239.86639")
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 432
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 9
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!caps", 1
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "NFA" :subid("cuid_19_1381944239.86639") :anon :lex :outer("cuid_82_1381944239.86639")
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 435
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 9
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!nfa", 2
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "ALT_NFAS" :subid("cuid_20_1381944239.86639") :anon :lex :outer("cuid_82_1381944239.86639")
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 438
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 9
    repr_get_attr_obj $P5003, $P5001, $P5002, "%!alt_nfas", 3
    isnull $I5001, $P5003
    unless $I5001 goto if212_else407 
    new $P5004, 'Hash'
    set $P5008, $P5004
    goto if212_end408
  if212_else407:
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 9
    repr_get_attr_obj $P5007, $P5005, $P5006, "%!alt_nfas", 3
    set $P5008, $P5007
  if212_end408:
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "ALT_NFA" :subid("cuid_21_1381944239.86639") :anon :lex :outer("cuid_82_1381944239.86639")
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 441
    .param pmc _lex_param_0 
    .param string _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    .local pmc fb_tmp_68 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 9
    repr_get_attr_obj $P5003, $P5001, $P5002, "%!alt_nfas", 3
    isnull $I5001, $P5003
    unless $I5001 goto if213_else409 
    null $P5004
    set $P5012, $P5004
    goto if213_end410
  if213_else409:
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 9
    repr_get_attr_obj $P5007, $P5005, $P5006, "%!alt_nfas", 3
    set fb_tmp_68, $P5007
    repr_defined $I5002, fb_tmp_68
    unless $I5002 goto if214_else411 
    set $P5008, fb_tmp_68[_lex_param_1]
    set $P5010, $P5008
    goto if214_end412
  if214_else411:
    null $P5009
    set $P5010, $P5009
  if214_end412:
    unless_null $P5010, vivi_215413
    null $P5011
    set $P5010, $P5011
  vivi_215413:
    set $P5012, $P5010
  if213_end410:
    .return ($P5012) 
.end
.HLL "nqp"
.namespace []
.sub "NESTED_CODES" :subid("cuid_22_1381944239.86639") :anon :lex :outer("cuid_82_1381944239.86639")
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 444
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 9
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!nested_codes", 5
    isnull $I5001, $P5003
    unless $I5001 goto if216_else414 
    new $P5004, 'ResizablePMCArray'
    set $P5008, $P5004
    goto if216_end415
  if216_else414:
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 9
    repr_get_attr_obj $P5007, $P5005, $P5006, "@!nested_codes", 5
    set $P5008, $P5007
  if216_end415:
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "clone" :subid("cuid_23_1381944239.86639") :anon :lex :outer("cuid_82_1381944239.86639")
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 447
    .param pmc _lex_param_0 
    .lex "$do", $P101 
    .lex "$der", $P102 
    .lex "self", _lex_param_0 
    null $P5001
    set $P101, $P5001
    null $P5002
    set $P102, $P5002
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 9
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!do", 0
    repr_clone $P5003, $P5006
    set $P101, $P5003
    nqp_decontainerize $P5008, _lex_param_0
    repr_clone $P5007, $P5008
    set $P102, $P5007
    nqp_get_sc_object $P5009, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 9
    setattribute $P102, $P5009, "$!do", $P101
    set_sub_code_object $P101, $P102
    nqp_decontainerize $P5010, _lex_param_0
    nqp_get_sc_object $P5011, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 9
    repr_get_attr_obj $P5012, $P5010, $P5011, "$!clone_callback", 6
    isnull $I5001, $P5012
    if $I5001 goto unless217_end417 
.annotate 'line', 457
.annotate 'line', 458
    nqp_decontainerize $P5016, _lex_param_0
    nqp_get_sc_object $P5017, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 9
    repr_get_attr_obj $P5018, $P5016, $P5017, "$!do", 0
    nqp_decontainerize $P5013, _lex_param_0
    nqp_get_sc_object $P5014, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 9
    repr_get_attr_obj $P5015, $P5013, $P5014, "$!clone_callback", 6
    $P5019 = $P5015($P5018, $P101, $P102)
  unless217_end417:
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "SET_NFA_TYPE" :subid("cuid_24_1381944239.86639") :anon :lex :outer("cuid_82_1381944239.86639")
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 464
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$type", _lex_param_1 
    store_lex "$nfa_type", _lex_param_1
    .return (_lex_param_1) 
.end
.HLL "nqp"
.namespace []
.sub "instantiate_generic" :subid("cuid_25_1381944239.86639") :anon :lex :outer("cuid_82_1381944239.86639")
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 467
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5009 = 'cuid_87_1381944239.86639' 
    capture_lex $P5009 
    .lex "self", _lex_param_0 
    .lex "$env", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 9
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!generic_nfa", 4
    isnull $I5001, $P5003
    unless $I5001 goto if218_else418 
.annotate 'line', 468
.annotate 'line', 469
    nqp_decontainerize $P5004, _lex_param_0
    $P5005 = $P5004."clone"()
    set $P5008, $P5005
    goto if218_end419
  if218_else418:
    .const 'Sub' $P5006 = 'cuid_87_1381944239.86639' 
    capture_lex $P5006
    $P5007 = $P5006()
    set $P5008, $P5007
  if218_end419:
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_87_1381944239.86639") :anon :lex :outer("cuid_25_1381944239.86639")
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 471
    .lex "$ins", $P101 
    null $P5001
    set $P101, $P5001
.annotate 'line', 472
    find_lex $P5003, "self"
    nqp_decontainerize $P5002, $P5003
    $P5004 = $P5002."clone"()
    set $P101, $P5004
    nqp_get_sc_object $P5005, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 9
.annotate 'line', 474
    find_lex $P5006, "$nfa_type"
    find_lex $P5008, "self"
    nqp_decontainerize $P5007, $P5008
    nqp_get_sc_object $P5009, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 9
    repr_get_attr_obj $P5010, $P5007, $P5009, "$!generic_nfa", 4
    $P5011 = $P5006."from_saved"($P5010)
    find_lex $P5012, "$env"
    $P5013 = $P5011."instantiate_generic"($P5012)
    $P5014 = $P5013."save"()
    setattribute $P101, $P5005, "$!nfa", $P5014
    nqp_get_sc_object $P5015, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 9
    null $P5016
    setattribute $P101, $P5015, "$!generic_nfa", $P5016
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "name" :subid("cuid_26_1381944239.86639") :anon :lex :outer("cuid_82_1381944239.86639")
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 479
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 9
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!do", 0
    set $S5001, $P5003
    .return ($S5001) 
.end
.HLL "nqp"
.namespace []
.sub "!set_name" :subid("cuid_27_1381944239.86639") :anon :lex :outer("cuid_82_1381944239.86639")
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 482
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 9
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!do", 0
    set $S5001, _lex_param_1
    assign $P5003, $S5001
    .return ($S5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_88_1381944239.86639") :anon :lex :outer("cuid_47_1381944239.86639")
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 490
    .const 'Sub' $P5016 = 'cuid_28_1381944239.86639' 
    capture_lex $P5016 
    .const 'Sub' $P5016 = 'cuid_29_1381944239.86639' 
    capture_lex $P5016 
    .const 'Sub' $P5016 = 'cuid_30_1381944239.86639' 
    capture_lex $P5016 
    .const 'Sub' $P5016 = 'cuid_31_1381944239.86639' 
    capture_lex $P5016 
    .const 'Sub' $P5016 = 'cuid_32_1381944239.86639' 
    capture_lex $P5016 
    .const 'Sub' $P5016 = 'cuid_33_1381944239.86639' 
    capture_lex $P5016 
    .const 'Sub' $P5016 = 'cuid_34_1381944239.86639' 
    capture_lex $P5016 
    .const 'Sub' $P5016 = 'cuid_35_1381944239.86639' 
    capture_lex $P5016 
    .const 'Sub' $P5016 = 'cuid_36_1381944239.86639' 
    capture_lex $P5016 
    .const 'Sub' $P5016 = 'cuid_37_1381944239.86639' 
    capture_lex $P5016 
    .const 'Sub' $P5016 = 'cuid_38_1381944239.86639' 
    capture_lex $P5016 
    .const 'Sub' $P5016 = 'cuid_39_1381944239.86639' 
    capture_lex $P5016 
    .const 'Sub' $P5016 = 'cuid_40_1381944239.86639' 
    capture_lex $P5016 
    .const 'Sub' $P5016 = 'cuid_41_1381944239.86639' 
    capture_lex $P5016 
    .const 'Sub' $P5016 = 'cuid_42_1381944239.86639' 
    capture_lex $P5016 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_28_1381944239.86639' 
    capture_lex $P5001
    .const 'Sub' $P5002 = 'cuid_29_1381944239.86639' 
    capture_lex $P5002
    .const 'Sub' $P5003 = 'cuid_30_1381944239.86639' 
    capture_lex $P5003
    .const 'Sub' $P5004 = 'cuid_31_1381944239.86639' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_32_1381944239.86639' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_33_1381944239.86639' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_34_1381944239.86639' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_35_1381944239.86639' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_36_1381944239.86639' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_37_1381944239.86639' 
    capture_lex $P5010
    .const 'Sub' $P5011 = 'cuid_38_1381944239.86639' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_39_1381944239.86639' 
    capture_lex $P5012
    .const 'Sub' $P5013 = 'cuid_40_1381944239.86639' 
    capture_lex $P5013
    .const 'Sub' $P5014 = 'cuid_41_1381944239.86639' 
    capture_lex $P5014
    .const 'Sub' $P5015 = 'cuid_42_1381944239.86639' 
    capture_lex $P5015
    .return ($P5015) 
.end
.HLL "nqp"
.namespace []
.sub "CREATE" :subid("cuid_28_1381944239.86639") :anon :lex :outer("cuid_88_1381944239.86639")
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 491
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5002, _lex_param_0
    repr_instance_of $P5001, $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "bless" :subid("cuid_29_1381944239.86639") :anon :lex :outer("cuid_88_1381944239.86639")
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 495
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy :named 
    .lex "self", $P101 
    .lex "$instance", $P102 
    .lex "$self", _lex_param_0 
    .lex "%attributes", _lex_param_1 
    set $P101, _lex_param_0
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 26
    set $P102, $P5001
.annotate 'line', 496
    nqp_decontainerize $P5002, $P101
    $P5003 = $P5002."CREATE"()
    set $P102, $P5003
.annotate 'line', 497
    $P102."BUILDALL"(_lex_param_1 :flat :named)
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "BUILDALL" :subid("cuid_30_1381944239.86639") :anon :lex :outer("cuid_88_1381944239.86639")
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 501
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy :named 
    .const 'Sub' $P5015 = 'cuid_90_1381944239.86639' 
    capture_lex $P5015 
    .lex "self", $P101 
    .lex "$build_plan", $P102 
    .lex "$count", $P103 
    .lex "$i", $P104 
    .lex "$self", _lex_param_0 
    .lex "%attrinit", _lex_param_1 
    set $P101, _lex_param_0
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 26
    set $P102, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 26
    set $P103, $P5002
    nqp_get_sc_object $P5003, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 26
    set $P104, $P5003
.annotate 'line', 503
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
  while219_test420:
    set $N5001, $P104
    set $N5002, $P103
    islt $I5002, $N5001, $N5002
    box $P5013, $I5002
    set $P5012, $P5013
    unless $I5002 goto while219_done424 
  while219_redo422:
    .const 'Sub' $P5010 = 'cuid_90_1381944239.86639' 
    capture_lex $P5010
    $P5011 = $P5010()
    set $P5012, $P5011
    goto while219_test420 
  while219_done424:
    nqp_decontainerize $P5014, $P101
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_90_1381944239.86639") :anon :lex :outer("cuid_30_1381944239.86639")
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 506
    .const 'Sub' $P5044 = 'cuid_89_1381944239.86639' 
    capture_lex $P5044 
    .const 'Sub' $P5044 = 'cuid_91_1381944239.86639' 
    capture_lex $P5044 
    .const 'Sub' $P5044 = 'cuid_92_1381944239.86639' 
    capture_lex $P5044 
    .lex "$task", $P101 
    .lex "$code", $I101 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 26
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
    unless $I5003 goto if220_else425 
.annotate 'line', 510
.annotate 'line', 512
    find_lex $P5010, "self"
    nqp_decontainerize $P5009, $P5010
    find_lex $P5011, "%attrinit"
    set $P5008, $P101[1]
    $P5012 = $P5008($P5009, $P5011 :flat :named)
    set $P5043, $P5012
    goto if220_end426
  if220_else425:
    iseq $I5004, $I101, 1
    unless $I5004 goto if221_else427 
    .const 'Sub' $P5013 = 'cuid_89_1381944239.86639' 
    capture_lex $P5013
    $P5014 = $P5013()
    set $P5042, $P5014
    goto if221_end428
  if221_else427:
    iseq $I5005, $I101, 2
    unless $I5005 goto if225_else434 
    .const 'Sub' $P5015 = 'cuid_91_1381944239.86639' 
    capture_lex $P5015
    $P5016 = $P5015()
    set $P5041, $P5016
    goto if225_end435
  if225_else434:
    iseq $I5006, $I101, 3
    unless $I5006 goto if229_else441 
    .const 'Sub' $P5017 = 'cuid_92_1381944239.86639' 
    capture_lex $P5017
    $P5018 = $P5017()
    set $P5040, $P5018
    goto if229_end442
  if229_else441:
    iseq $I5007, $I101, 4
    unless $I5007 goto if233_else448 
.annotate 'line', 543
    find_lex $P5020, "self"
    nqp_decontainerize $P5019, $P5020
    set $P5021, $P101[1]
    set $P5022, $P101[2]
    set $S5001, $P5022
    repr_is_attr_initialized $I5008, $P5019, $P5021, $S5001
    box $P5037, $I5008
    set $P5036, $P5037
    if $I5008 goto unless234_end451 
.annotate 'line', 544
    find_lex $P5024, "self"
    nqp_decontainerize $P5023, $P5024
    set $P5025, $P101[1]
    set $P5026, $P101[2]
    set $S5002, $P5026
.annotate 'line', 546
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
  unless234_end451:
    set $P5039, $P5036
    goto if233_end449
  if233_else448:
.annotate 'line', 550
    box $P5038, "Invalid BUILDALLPLAN"
    die $P5038
    set $P5039, $P5038
  if233_end449:
    set $P5040, $P5039
  if229_end442:
    set $P5041, $P5040
  if225_end435:
    set $P5042, $P5041
  if221_end428:
    set $P5043, $P5042
  if220_end426:
    .return ($P5043) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_89_1381944239.86639") :anon :lex :outer("cuid_90_1381944239.86639")
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 514
    .lex "$key_name", $P101 
    .local pmc fb_tmp_69 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 26
    set $P101, $P5001
    find_lex $P5003, "$task"
    set $P5002, $P5003[2]
    set $P101, $P5002
    find_lex $P5004, "%attrinit"
    set $S5001, $P101
    exists $I5001, $P5004[$S5001]
    box $P5017, $I5001
    set $P5016, $P5017
    unless $I5001 goto if222_end430 
.annotate 'line', 517
    find_lex $P5006, "self"
    nqp_decontainerize $P5005, $P5006
    find_lex $P5008, "$task"
    set $P5007, $P5008[1]
    find_lex $P5010, "$task"
    set $P5009, $P5010[3]
    set $S5002, $P5009
    find_lex $P5011, "%attrinit"
    set fb_tmp_69, $P5011
    repr_defined $I5002, fb_tmp_69
    unless $I5002 goto if223_else431 
    set $S5003, $P101
    set $P5012, fb_tmp_69[$S5003]
    set $P5014, $P5012
    goto if223_end432
  if223_else431:
    null $P5013
    set $P5014, $P5013
  if223_end432:
    unless_null $P5014, vivi_224433
    nqp_get_sc_object $P5015, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 26
    set $P5014, $P5015
  vivi_224433:
    setattribute $P5005, $P5007, $S5002, $P5014
    set $P5016, $P5014
  if222_end430:
    .return ($P5016) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_91_1381944239.86639") :anon :lex :outer("cuid_90_1381944239.86639")
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 521
    .lex "$key_name", $P101 
    .local pmc fb_tmp_70 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 26
    set $P101, $P5001
    find_lex $P5003, "$task"
    set $P5002, $P5003[2]
    set $P101, $P5002
    find_lex $P5004, "%attrinit"
    set $S5001, $P101
    exists $I5001, $P5004[$S5001]
    unless $I5001 goto if226_else436 
.annotate 'line', 525
    find_lex $P5006, "self"
    nqp_decontainerize $P5005, $P5006
    find_lex $P5008, "$task"
    set $P5007, $P5008[1]
    find_lex $P5010, "$task"
    set $P5009, $P5010[3]
    set $S5002, $P5009
    find_lex $P5011, "%attrinit"
    set fb_tmp_70, $P5011
    repr_defined $I5002, fb_tmp_70
    unless $I5002 goto if227_else438 
    set $S5003, $P101
    set $P5012, fb_tmp_70[$S5003]
    set $P5014, $P5012
    goto if227_end439
  if227_else438:
    null $P5013
    set $P5014, $P5013
  if227_end439:
    unless_null $P5014, vivi_228440
    nqp_get_sc_object $P5015, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 26
    set $P5014, $P5015
  vivi_228440:
    setattribute $P5005, $P5007, $S5002, $P5014
    set $P5023, $P5014
    goto if226_end437
  if226_else436:
.annotate 'line', 528
    find_lex $P5017, "self"
    nqp_decontainerize $P5016, $P5017
    find_lex $P5019, "$task"
    set $P5018, $P5019[1]
    find_lex $P5021, "$task"
    set $P5020, $P5021[3]
    set $S5004, $P5020
    new $P5022, 'ResizablePMCArray'
    setattribute $P5016, $P5018, $S5004, $P5022
    set $P5023, $P5022
  if226_end437:
    .return ($P5023) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_92_1381944239.86639") :anon :lex :outer("cuid_90_1381944239.86639")
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 532
    .lex "$key_name", $P101 
    .local pmc fb_tmp_71 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 26
    set $P101, $P5001
    find_lex $P5003, "$task"
    set $P5002, $P5003[2]
    set $P101, $P5002
    find_lex $P5004, "%attrinit"
    set $S5001, $P101
    exists $I5001, $P5004[$S5001]
    unless $I5001 goto if230_else443 
.annotate 'line', 536
    find_lex $P5006, "self"
    nqp_decontainerize $P5005, $P5006
    find_lex $P5008, "$task"
    set $P5007, $P5008[1]
    find_lex $P5010, "$task"
    set $P5009, $P5010[3]
    set $S5002, $P5009
    find_lex $P5011, "%attrinit"
    set fb_tmp_71, $P5011
    repr_defined $I5002, fb_tmp_71
    unless $I5002 goto if231_else445 
    set $S5003, $P101
    set $P5012, fb_tmp_71[$S5003]
    set $P5014, $P5012
    goto if231_end446
  if231_else445:
    null $P5013
    set $P5014, $P5013
  if231_end446:
    unless_null $P5014, vivi_232447
    nqp_get_sc_object $P5015, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 26
    set $P5014, $P5015
  vivi_232447:
    setattribute $P5005, $P5007, $S5002, $P5014
    set $P5023, $P5014
    goto if230_end444
  if230_else443:
.annotate 'line', 539
    find_lex $P5017, "self"
    nqp_decontainerize $P5016, $P5017
    find_lex $P5019, "$task"
    set $P5018, $P5019[1]
    find_lex $P5021, "$task"
    set $P5020, $P5021[3]
    set $S5004, $P5020
    new $P5022, 'Hash'
    setattribute $P5016, $P5018, $S5004, $P5022
    set $P5023, $P5022
  if230_end444:
    .return ($P5023) 
.end
.HLL "nqp"
.namespace []
.sub "new" :subid("cuid_31_1381944239.86639") :anon :lex :outer("cuid_88_1381944239.86639")
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 557
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy :named 
    .lex "self", _lex_param_0 
    .lex "%attributes", _lex_param_1 
.annotate 'line', 558
    nqp_decontainerize $P5001, _lex_param_0
    $P5002 = $P5001."bless"(_lex_param_1 :flat :named)
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "Str" :subid("cuid_32_1381944239.86639") :anon :lex :outer("cuid_88_1381944239.86639")
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 561
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
    getinterp $P5009
    set $P5009, $P5009['sub']
    get_sub_code_object $P5008, $P5009
    nqp_get_sc_object $P5010, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 5
    repr_get_attr_obj $P5011, $P5008, $P5010, "$!dispatch_cache", 3
    getinterp $P5012
    set $P5012, $P5012['context']
    multi_cache_find $P5007, $P5011, $P5012
    unless_null $P5007, vivi_235452
    getinterp $P5014
    set $P5014, $P5014['sub']
    get_sub_code_object $P5013, $P5014
    getinterp $P5015
    set $P5015, $P5015['context']
    $P5016 = $P5013."dispatch"($P5015)
    set $P5007, $P5016
  vivi_235452:
    getinterp $P5017
    set $P5017, $P5017['context']
    deconstruct_capture $P5017, $P5004, $P5005
    $P5006 = $P5007($P5004 :flat, $P5005 :flat :named)
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "Str" :subid("cuid_33_1381944239.86639") :anon :lex :outer("cuid_88_1381944239.86639")
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 562
    .param pmc _lex_param_0 
    .lex "self", $P101 
    .lex "$self", _lex_param_0 
    set $P101, _lex_param_0
    .return ("") 
.end
.HLL "nqp"
.namespace []
.sub "Str" :subid("cuid_34_1381944239.86639") :anon :lex :outer("cuid_88_1381944239.86639")
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 565
    .param pmc _lex_param_0 
    .lex "self", $P101 
    .lex "$self", _lex_param_0 
    set $P101, _lex_param_0
.annotate 'line', 566
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
.sub "Numeric" :subid("cuid_35_1381944239.86639") :anon :lex :outer("cuid_88_1381944239.86639")
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 569
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
    getinterp $P5009
    set $P5009, $P5009['sub']
    get_sub_code_object $P5008, $P5009
    nqp_get_sc_object $P5010, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 5
    repr_get_attr_obj $P5011, $P5008, $P5010, "$!dispatch_cache", 3
    getinterp $P5012
    set $P5012, $P5012['context']
    multi_cache_find $P5007, $P5011, $P5012
    unless_null $P5007, vivi_236453
    getinterp $P5014
    set $P5014, $P5014['sub']
    get_sub_code_object $P5013, $P5014
    getinterp $P5015
    set $P5015, $P5015['context']
    $P5016 = $P5013."dispatch"($P5015)
    set $P5007, $P5016
  vivi_236453:
    getinterp $P5017
    set $P5017, $P5017['context']
    deconstruct_capture $P5017, $P5004, $P5005
    $P5006 = $P5007($P5004 :flat, $P5005 :flat :named)
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "Numeric" :subid("cuid_36_1381944239.86639") :anon :lex :outer("cuid_88_1381944239.86639")
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 570
    .param pmc _lex_param_0 
    .lex "self", $P101 
    .lex "$self", _lex_param_0 
    set $P101, _lex_param_0
    .return (0.0) 
.end
.HLL "nqp"
.namespace []
.sub "Int" :subid("cuid_37_1381944239.86639") :anon :lex :outer("cuid_88_1381944239.86639")
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 574
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
    getinterp $P5009
    set $P5009, $P5009['sub']
    get_sub_code_object $P5008, $P5009
    nqp_get_sc_object $P5010, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 5
    repr_get_attr_obj $P5011, $P5008, $P5010, "$!dispatch_cache", 3
    getinterp $P5012
    set $P5012, $P5012['context']
    multi_cache_find $P5007, $P5011, $P5012
    unless_null $P5007, vivi_237454
    getinterp $P5014
    set $P5014, $P5014['sub']
    get_sub_code_object $P5013, $P5014
    getinterp $P5015
    set $P5015, $P5015['context']
    $P5016 = $P5013."dispatch"($P5015)
    set $P5007, $P5016
  vivi_237454:
    getinterp $P5017
    set $P5017, $P5017['context']
    deconstruct_capture $P5017, $P5004, $P5005
    $P5006 = $P5007($P5004 :flat, $P5005 :flat :named)
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "Int" :subid("cuid_38_1381944239.86639") :anon :lex :outer("cuid_88_1381944239.86639")
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 575
    .param pmc _lex_param_0 
    .lex "self", $P101 
    .lex "$self", _lex_param_0 
    set $P101, _lex_param_0
    .return (0) 
.end
.HLL "nqp"
.namespace []
.sub "defined" :subid("cuid_39_1381944239.86639") :anon :lex :outer("cuid_88_1381944239.86639")
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 579
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    repr_defined $I5001, $P5001
    .return ($I5001) 
.end
.HLL "nqp"
.namespace []
.sub "ACCEPTS" :subid("cuid_40_1381944239.86639") :anon :lex :outer("cuid_88_1381944239.86639")
.annotate 'file', "src/stage2/NQPCORE.setting"
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
    getinterp $P5009
    set $P5009, $P5009['sub']
    get_sub_code_object $P5008, $P5009
    nqp_get_sc_object $P5010, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 5
    repr_get_attr_obj $P5011, $P5008, $P5010, "$!dispatch_cache", 3
    getinterp $P5012
    set $P5012, $P5012['context']
    multi_cache_find $P5007, $P5011, $P5012
    unless_null $P5007, vivi_238455
    getinterp $P5014
    set $P5014, $P5014['sub']
    get_sub_code_object $P5013, $P5014
    getinterp $P5015
    set $P5015, $P5015['context']
    $P5016 = $P5013."dispatch"($P5015)
    set $P5007, $P5016
  vivi_238455:
    getinterp $P5017
    set $P5017, $P5017['context']
    deconstruct_capture $P5017, $P5004, $P5005
    $P5006 = $P5007($P5004 :flat, $P5005 :flat :named)
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "ACCEPTS" :subid("cuid_41_1381944239.86639") :anon :lex :outer("cuid_88_1381944239.86639")
.annotate 'file', "src/stage2/NQPCORE.setting"
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
.sub "isa" :subid("cuid_42_1381944239.86639") :anon :lex :outer("cuid_88_1381944239.86639")
.annotate 'file', "src/stage2/NQPCORE.setting"
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
.sub "" :subid("cuid_93_1381944239.86639") :anon :lex :outer("cuid_47_1381944239.86639")
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 595
    .const 'Sub' $P5005 = 'cuid_43_1381944239.86639' 
    capture_lex $P5005 
    .const 'Sub' $P5005 = 'cuid_44_1381944239.86639' 
    capture_lex $P5005 
    .const 'Sub' $P5005 = 'cuid_45_1381944239.86639' 
    capture_lex $P5005 
    .const 'Sub' $P5005 = 'cuid_46_1381944239.86639' 
    capture_lex $P5005 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_43_1381944239.86639' 
    capture_lex $P5001
    .const 'Sub' $P5002 = 'cuid_44_1381944239.86639' 
    capture_lex $P5002
    .const 'Sub' $P5003 = 'cuid_45_1381944239.86639' 
    capture_lex $P5003
    .const 'Sub' $P5004 = 'cuid_46_1381944239.86639' 
    capture_lex $P5004
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "new" :subid("cuid_43_1381944239.86639") :anon :lex :outer("cuid_93_1381944239.86639")
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 599
    .param pmc _lex_param_0 
    .lex "$n", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 26
    set $P101, $P5001
.annotate 'line', 600
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."CREATE"()
    set $P101, $P5003
.annotate 'line', 601
    $P101."BUILD"()
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "BUILD" :subid("cuid_44_1381944239.86639") :anon :lex :outer("cuid_93_1381944239.86639")
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 605
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 42
    new $P5003, 'ResizablePMCArray'
    repr_bind_attr_obj $P5001, $P5002, "@!array", 0, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 42
    new $P5006, 'Hash'
    repr_bind_attr_obj $P5004, $P5005, "%!hash", 1, $P5006
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "list" :subid("cuid_45_1381944239.86639") :anon :lex :outer("cuid_93_1381944239.86639")
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 610
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 42
    repr_get_attr_obj $P5003, $P5001, $P5002, "@!array", 0
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "hash" :subid("cuid_46_1381944239.86639") :anon :lex :outer("cuid_93_1381944239.86639")
.annotate 'file', "src/stage2/NQPCORE.setting"
.annotate 'line', 612
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 42
    repr_get_attr_obj $P5003, $P5001, $P5002, "%!hash", 1
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_95_1381944239.86639") :load :init
.annotate 'file', "src/stage2/NQPCORE.setting"
    .const 'Sub' $P5001 = 'cuid_94_1381944239.86639' 
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
    nqp_create_sc $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771"
    set cur_sc, $P5001
    $P5002 = cur_sc."set_description"("src/stage2/NQPCORE.setting")
    new $P5003, 'ResizablePMCArray'
    set conflicts, $P5003
    new $P5004, 'ResizableStringArray'
    null $S5001
    push $P5004, $S5001
    push $P5004, "P6opaque"
    push $P5004, "RoleToRoleApplier"
    push $P5004, "82C8134F4F1F98F3955D960634CCE916B8CF0355-1381944235.00084"
    push $P5004, "src/stage2/gen/nqp-mo.nqp"
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
    push $P5004, "!hllize_nfa"
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
    .const 'Sub' $P5005 = 'cuid_94_1381944239.86639' 
    capture_lex $P5005
    $P5006 = $P5005()
    nqp_deserialize_sc "BgAAAEAAAAACAAAAUAAAAAoAAADIAAAAGgsAAE8AAAAKEAAA2hoAAAAAAADaGgAAAAAAANoaAADaGgAAAAAAAAMAAAAEAAAARQAAAAAAAAABAAAAAAAAANQAAAANAAAAMAEAAHwBAAAOAAAAfAEAAMQBAAAPAAAA1AEAABwCAAAQAAAAJAIAAGwCAAABAAAAbAIAAEADAAABAAAAJAQAAJYEAAABAAAAIgUAAFgGAAABAAAAUgcAAD4IAAABAAAAmggAALoJAAAAAAAALwAAAAAAAAAAAAAACgAJAAAAAgAAAAIAAQAAAAIAAAAFAAAAAgABAAAAAwAAAAYAAAACAAEAAAAEAAAABwAAAAIAAQAAAAUAAAAIAAAAAgABAAAABgAAAAkAAAACAAEAAAAHAAAACgAAAAIAAQAAAAgAAAALAAAAAgABAAAACQAAAAwAAAACAAEAAAAKAAAACgAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAQAAAAAAAAACAAAAAAAAAAAAAwD/////////////////////AAAAADAAAAAAAAAAAQAAAAoAAAAAAAoAAAAAAAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAxAAAAAAAAAAIAAAAKAAAAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAMgAAAAAAAAADAAAACgAAAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAAAAAAAzAAAAAAAAAAQAAAAKAAAAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA0AAAAAAAAAAUAAAAKAAAAAAAKAAkAAAARAAAACwAAAAAAAAAAABIAAAALAAAAAAABAAAAEwAAAAsAAAAAAAIAAAAUAAAACwAAAAAAAwAAABUAAAALAAAAAAAEAAAAFgAAAAsAAAAAAAUAAAAXAAAACwAAAAAABgAAABgAAAALAAAAAAAHAAAAGQAAAAsAAAAAAAgAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAAABQAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAAAUAAAAKAAYAAAAaAAAABAAAAAAAAAAAABsAAAAEAAEAAAAAAAAAHAAAAAQAAgAAAAAAAAAdAAAABAADAAAAAAAAAB4AAAAEAAQAAAAAAAAAHwAAAAQABQAAAAAAAAD/////////////////////AAAAADUAAAAAAAAABgAAAAoAAAAAAAoAAgAAACAAAAACAAAAAAAHAAAAIQAAAAIAAAAAAAgAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAAABgAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAQAAAAAAAAACAAAAAAAGAAAACgACAAAAIgAAAAQAAAAAAAAAAAAjAAAABAABAAAAAAAAAP////////////////////8AAAAANgAAAAAAAAAJAAAACgAAAAAACgAQAAAAJAAAAAIAAAAAAAoAAAAlAAAAAgAAAAAACwAAACYAAAACAAAAAAAMAAAAJwAAAAIAAAAAAA0AAAAoAAAAAgAAAAAADgAAACkAAAACAAAAAAAPAAAAKgAAAAIAAAAAABAAAAArAAAAAgAAAAAAEQAAACwAAAACAAAAAAASAAAALQAAAAIAAAAAABMAAAAuAAAAAgAAAAAAFAAAABYAAAACAAAAAAAVAAAALwAAAAIAAAAAABYAAAAwAAAAAgAAAAAAFwAAABgAAAACAAAAAAAYAAAAFwAAAAIAAAAAABkAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAAACQAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAACQAAAAoABwAAABoAAAAEAAAAAAAAAAAAMQAAAAQAAQAAAAAAAAAyAAAABAACAAAAAAAAADMAAAAEAAMAAAAAAAAANAAAAAQABAAAAAAAAAA1AAAABAAFAAAAAAAAAB8AAAAEAAYAAAAAAAAA/////////////////////wAAAAA3AAAAAAAAABoAAAAKAAAAAAAKAAoAAAA2AAAAAgAAAAAAGwAAADcAAAACAAAAAAAcAAAAOAAAAAIAAAAAAB0AAAA5AAAAAgAAAAAAHgAAADoAAAACAAAAAAAfAAAAOwAAAAIAAAAAACIAAAA8AAAAAgAAAAAAJAAAAD0AAAACAAAAAAAmAAAAPgAAAAIAAAAAACcAAAA/AAAAAgAAAAAAKQAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAAAaAAAABAAAAAAAAAABAAAAAAAAAAUAAAAAAAAAAwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAABoAAAADAP////////////////////8AAAAAOAAAAAAAAAAqAAAACgAAAAAACgANAAAANgAAAAIAAAAAABsAAAA3AAAAAgAAAAAAHAAAADgAAAACAAAAAAAdAAAAOQAAAAIAAAAAACsAAAA6AAAAAgAAAAAAHwAAADsAAAACAAAAAAAiAAAAPAAAAAIAAAAAACQAAAA9AAAAAgAAAAAAJgAAAD4AAAACAAAAAAAnAAAAPwAAAAIAAAAAACkAAABAAAAAAgAAAAAALAAAAEEAAAACAAAAAAAtAAAAQgAAAAIAAAAAAC4AAAAAAAAAAAAAAAIAAAAAAAAAAgAAAAAAKgAAAAIAAAAAABoAAAAEAAAAAAAAAAEAAAAAAAAABQAAAAAAAAADAAAAAAAAAAAAAAAAAAAAAAACAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAACAAAAAAAAAAIAAAAAABoAAAADAAIAAAAAACoAAAAKAAIAAABDAAAABAAAAAAAAAAAAEQAAAAEAAEAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAIAAAAAAAAAAAAAAAAAAAADAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAAAAAAAAAAAAUAAAAAAAAAAAAAAAAAAAAGAAAAAAAAAAAAAAAAAAAABQAAAAAAAAABAAAAAAAAAAUAAAAUAAAAAQAAAAAAAAAHAAAAKAAAAAAAAAAAAAAABQAAACgAAAABAAAAAAAAAAUAAAA8AAAAAQAAAAAAAAAFAAAAUAAAAAEAAAAAAAAABQAAAGQAAAABAAAAAAAAAAUAAAB4AAAAAQAAAAAAAAAFAAAAjAAAAAEAAAAAAAAABQAAAKAAAAABAAAAAAAAAAUAAAC0AAAAAQAAAAAAAAAFAAAAyAAAAAEAAAAAAAAABQAAANwAAAABAAAAAAAAAAUAAADwAAAAAQAAAAAAAAAFAAAABAEAAAEAAAAAAAAABQAAABgBAAABAAAAAAAAAAUAAAAsAQAAAQAAAAAAAAAFAAAAQAEAAAEAAAAAAAAABQAAAFQBAAABAAAAAAAAAAgAAABoAQAAAAAAAAAAAAAFAAAAaAEAAAEAAAAAAAAABQAAAHwBAAABAAAAAAAAAAUAAACQAQAAAQAAAAAAAAAFAAAApAEAAAEAAAAAAAAABQAAALgBAAABAAAAAAAAAAUAAADkAQAAAQAAAAAAAAAFAAAAAAIAAAEAAAAAAAAABQAAABwCAAABAAAAAAAAAAUAAAA+AgAAAQAAAAAAAAAFAAAAWgIAAAEAAAAAAAAABQAAAHwCAAABAAAAAAAAAAUAAACYAgAAAQAAAAAAAAAFAAAArAIAAAEAAAAAAAAABQAAAM4CAAABAAAAAAAAAAUAAADqAgAAAQAAAAAAAAAJAAAA/gIAAAAAAAAAAAAABQAAAP4CAAABAAAAAAAAAAUAAAASAwAAAQAAAAAAAAAFAAAAJgMAAAEAAAAAAAAABQAAADoDAAABAAAAAgAAAAAAAABOAwAAAQAAAAEAAAAKAAAAXgMAAAEAAAABAAAACAAAAG4DAAABAAAAAQAAAAgAAAB+AwAAAQAAAAEAAAAIAAAAjgMAAAEAAAACAAAAAAAAAJ4DAAABAAAAAgAAAAAAAABoBAAAAQAAAAIAAAAAAAAAqAQAAAEAAAABAAAABwAAAN4FAAABAAAAAQAAAAcAAAA4CAAAAQAAAAAAAAAGAAAAkAkAAAEAAAAAAAAABgAAALAJAAABAAAAAAAAAAYAAADQCQAAAQAAAAAAAAAGAAAA8AkAAAEAAAAAAAAABgAAABAKAAABAAAAAgAAAAIAAAA8CgAAAQAAAAIAAAACAAAAQAoAAAEAAAACAAAAAgAAAEQKAAABAAAAAgAAAAIAAABICgAAAQAAAAIAAAACAAAATAoAAAEAAAACAAAAAgAAAFAKAAABAAAAAgAAAAIAAABUCgAAAQAAAAIAAAACAAAAWAoAAAEAAAACAAAAAgAAAFwKAAABAAAAAgAAAAIAAABgCgAAAQAAAAIAAAACAAAAZAoAAAEAAAACAAAAAgAAAGgKAAABAAAAAgAAAAIAAABsCgAAAQAAAAIAAAACAAAAcAoAAAEAAAACAAAAAgAAAHQKAAABAAAAAQAAAAkAAAB4CgAAAQAAAAEAAAAJAAAApAoAAAEAAAALAAAAAAAJAAAAAQABAAEAAQADAAsAAAAAAAoAAAABAAEAAQABAAMACwAAAAAACwAAAAEAAQABAAEAAwALAAAAAAAMAAAAAQABAAEAAQADAAsAAAAAAA0AAAABAAEAAQABAAMACwAAAAAADgAAAAEAAQABAAEAAwALAAAAAAAPAAAAAQABAAEAAQADAAsAAAAAABAAAAABAAEAAQABAAMACwAAAAAAEQAAAAEAAQABAAEAAwALAAAAAAASAAAAAQABAAEAAQADAAsAAAAAABMAAAABAAEAAQABAAMACwAAAAAAFAAAAAEAAQABAAEAAwALAAAAAAAVAAAAAQABAAEAAQADAAsAAAAAABYAAAABAAEAAQABAAMACwAAAAAAFwAAAAEAAQABAAEAAwALAAAAAAAYAAAAAQABAAEAAQADAAsAAAAAABkAAAABAAEAAQABAAMACwAAAAAAGgAAAAEAAQABAAEAAwALAAAAAAAbAAAAAQABAAEAAQADAAsAAAAAABwAAAABAAEAAQABAAMACwAAAAAAHQAAAAEAAQABAAEAAwALAAAAAAAeAAAAAQABAAEAAQADAAsAAAAAAB8AAAABAAcAAgAAAAIAAAAAACAAAAACAAAAAAAhAAAAAwADAAMACwAAAAAAIAAAAAIAAAAAADkAAAABAAEAAQADAAsAAAAAACEAAAACAAAAAAA6AAAAAQABAAEAAwALAAAAAAAiAAAAAQAHAAEAAAACAAAAAAAjAAAAAwADAAMACwAAAAAAIwAAAAIAAAAAADsAAAABAAEAAQADAAsAAAAAACQAAAABAAcAAQAAAAIAAAAAACUAAAADAAMAAwALAAAAAAAlAAAAAgAAAAAAPAAAAAEAAQABAAMACwAAAAAAJgAAAAEAAQABAAEAAwALAAAAAAAnAAAAAQAHAAEAAAACAAAAAAAoAAAAAwADAAMACwAAAAAAKAAAAAIAAAAAAD0AAAABAAEAAQADAAsAAAAAACkAAAABAAEAAQABAAMACwAAAAAAKgAAAAEAAQABAAEAAwALAAAAAAArAAAAAQABAAEAAQADAAsAAAAAACwAAAABAAEAAQABAAMACwAAAAAALQAAAAEAAQABAAEAAwBGAAAABwAAAAAACgAAAAAABgBHAAAABAABAAAAAAAAAAYASAAAAAQAAQAAAAAAAAAGAEkAAAAEAAEAAAAAAAAABgBKAAAABAABAAAAAAAAAEsAAAAHAAYAAAACAAAAAAA+AAAAAgAAAAAAPwAAAAIAAAAAAEAAAAACAAAAAABBAAAAAgAAAAAAQgAAAAIAAAAAAEMAAAAKAAkAAAARAAAACwAAAAAAAAAAABIAAAALAAAAAAABAAAAEwAAAAsAAAAAAAIAAAAUAAAACwAAAAAAAwAAABUAAAALAAAAAAAEAAAAFgAAAAsAAAAAAAUAAAAXAAAACwAAAAAABgAAABgAAAALAAAAAAAHAAAAGQAAAAsAAAAAAAgAAABMAAAABwACAAAAAgAAAAAARAAAAAIAAAAAAEUAAAAKAAIAAAAgAAAAAgAAAAAABwAAACEAAAACAAAAAAAIAAAATQAAAAcABwAAAAIAAAAAAEYAAAACAAAAAABHAAAAAgAAAAAASAAAAAIAAAAAAEkAAAACAAAAAABKAAAAAgAAAAAASwAAAAIAAAAAAEwAAAAKABAAAAAkAAAAAgAAAAAACgAAACUAAAACAAAAAAALAAAAJgAAAAIAAAAAAAwAAAAnAAAAAgAAAAAADQAAACgAAAACAAAAAAAOAAAAKQAAAAIAAAAAAA8AAAAqAAAAAgAAAAAAEAAAACsAAAACAAAAAAARAAAALAAAAAIAAAAAABIAAAAtAAAAAgAAAAAAEwAAAC4AAAACAAAAAAAUAAAAFgAAAAIAAAAAABUAAAAvAAAAAgAAAAAAFgAAADAAAAACAAAAAAAXAAAAGAAAAAIAAAAAABgAAAAXAAAAAgAAAAAAGQAAAAYATgAAAAcAAAAAAAoACgAAADYAAAACAAAAAAAbAAAANwAAAAIAAAAAABwAAAA4AAAAAgAAAAAAHQAAADkAAAACAAAAAAAeAAAAOgAAAAIAAAAAAB8AAAA7AAAAAgAAAAAAIgAAADwAAAACAAAAAAAkAAAAPQAAAAIAAAAAACYAAAA+AAAAAgAAAAAAJwAAAD8AAAACAAAAAAApAAAABwAKAAAAAgAAAAAAGwAAAAIAAAAAABwAAAACAAAAAAAdAAAAAgAAAAAAHgAAAAIAAAAAAB8AAAACAAAAAAAiAAAAAgAAAAAAJAAAAAIAAAAAACYAAAACAAAAAAAnAAAAAgAAAAAAKQAAAAcABQAAAAoAAgAAABgAAAAGADoAAABPAAAAAgAAAAAAIAAAAAoAAgAAABgAAAAGADoAAABPAAAAAgAAAAAAIQAAAAoAAgAAABgAAAAGADsAAABPAAAAAgAAAAAAIwAAAAoAAgAAABgAAAAGADwAAABPAAAAAgAAAAAAJQAAAAoAAgAAABgAAAAGAD4AAABPAAAAAgAAAAAAKAAAAAcAAAAAAAcAAAAAAAIAAAAAABoAAAAHAAAAAAAKAAAAAAAEAAEAAAAAAAAABwABAAAAAgAAAAAAGgAAAAcAAAAAAAEABAAAAAAAAAAAAAoABAAAAFAAAAACAAAAAAAfAAAAUQAAAAIAAAAAACIAAABSAAAAAgAAAAAAJAAAAD0AAAACAAAAAAAmAAAACgAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAABAAcAAAAAAAcAAAAAAAEABgBTAAAABwACAAAAAgAAAAAATQAAAAIAAAAAAE4AAAAKAAQAAAA5AAAAAgAAAAAAKwAAAEAAAAACAAAAAAAsAAAAQQAAAAIAAAAAAC0AAABCAAAAAgAAAAAALgAAAAcABAAAAAIAAAAAACsAAAACAAAAAAAsAAAAAgAAAAAALQAAAAIAAAAAAC4AAAAHAAAAAAAHAAEAAAACAAAAAAAaAAAABwAAAAAAAgAAAAAAGgAAAAcAAAAAAAoAAAAAAAQAAQAAAAAAAAAHAAIAAAACAAAAAAAqAAAAAgAAAAAAGgAAAAcAAAAAAAEABAAAAAAAAAAAAAoAAAAAAAoAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAAAQAHAAEAAAAHAAIAAAAEAAAAAAAAAAAAAgAAAAAALAAAAAcAAQAAAAcAAgAAAAQAAAAAAAAAAAACAAAAAAAsAAAAAQAHAAEAAAACAAAAAAAaAAAABwABAAAABAACAAAAAAAAAAcAAQAAAAIAAAAAABoAAAAHAAEAAAAEAAEAAAAAAAAABwABAAAAAgAAAAAAGgAAAAcAAQAAAAQAAgAAAAAAAAAHAAEAAAACAAAAAAAaAAAABwABAAAABAACAAAAAAAAAAcAAgAAAAIAAAAAABoAAAADAAcAAgAAAAQAAgAAAAAAAAAEAAAAAAAAAAAAGgAAABsAAAAcAAAAHQAAAB4AAAAfAAAAIgAAACMAAAAaAAAAMQAAADIAAAAzAAAANAAAADUAAAAfAAAABgBDAAAAAwAEAAAAAAAAAAAAAwADAAQAAAAAAAAAAAAEAAEAAAAAAAAAAQAGAEQAAAADAAQAAAAAAAAAAAADAAMABAAAAAAAAAAAAAEABAABAAAAAAAAAA==", cur_sc, $P5004, $P5006, conflicts
    unless conflicts goto if241_end461 
    die "Repossession conflicts occurred during deserialization"
  if241_end461:
    .const 'Sub' $P5001 = "cuid_10_1381944239.86639" 
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 7
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_11_1381944239.86639" 
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 8
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_12_1381944239.86639" 
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 10
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_13_1381944239.86639" 
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 11
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_14_1381944239.86639" 
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 12
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_15_1381944239.86639" 
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 13
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_16_1381944239.86639" 
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 14
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_17_1381944239.86639" 
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 15
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_18_1381944239.86639" 
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 16
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_19_1381944239.86639" 
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 17
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_20_1381944239.86639" 
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 18
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_21_1381944239.86639" 
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 19
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_22_1381944239.86639" 
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 20
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_23_1381944239.86639" 
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 21
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_24_1381944239.86639" 
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 22
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_25_1381944239.86639" 
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 23
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_26_1381944239.86639" 
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 24
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_27_1381944239.86639" 
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 25
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_28_1381944239.86639" 
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 27
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_29_1381944239.86639" 
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 28
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_30_1381944239.86639" 
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 29
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_31_1381944239.86639" 
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 30
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_32_1381944239.86639" 
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 31
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_33_1381944239.86639" 
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 32
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_34_1381944239.86639" 
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 33
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_35_1381944239.86639" 
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 34
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_36_1381944239.86639" 
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 35
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_37_1381944239.86639" 
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 36
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_38_1381944239.86639" 
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 37
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_39_1381944239.86639" 
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 38
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_40_1381944239.86639" 
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 39
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_41_1381944239.86639" 
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 40
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_42_1381944239.86639" 
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 41
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_43_1381944239.86639" 
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 43
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_44_1381944239.86639" 
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 44
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_45_1381944239.86639" 
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 45
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_46_1381944239.86639" 
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 46
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_47_1381944239.86639"
    new $P5002, 'ResizableStringArray'
    push $P5002, "GLOBALish"
    push $P5002, "$?PACKAGE"
    push $P5002, "EXPORTHOW"
    push $P5002, "int"
    push $P5002, "num"
    push $P5002, "str"
    push $P5002, "NQPRoutine"
    push $P5002, "NQPSignature"
    push $P5002, "NQPRegex"
    push $P5002, "NQPMu"
    push $P5002, "NQPCapture"
    new $P5003, 'ResizablePMCArray'
    nqp_get_sc_object $P5004, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 0
    push $P5003, $P5004
    nqp_get_sc_object $P5005, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 0
    push $P5003, $P5005
    nqp_get_sc_object $P5006, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 1
    push $P5003, $P5006
    nqp_get_sc_object $P5007, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 2
    push $P5003, $P5007
    nqp_get_sc_object $P5008, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 3
    push $P5003, $P5008
    nqp_get_sc_object $P5009, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 4
    push $P5003, $P5009
    nqp_get_sc_object $P5010, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 5
    push $P5003, $P5010
    nqp_get_sc_object $P5011, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 6
    push $P5003, $P5011
    nqp_get_sc_object $P5012, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 9
    push $P5003, $P5012
    nqp_get_sc_object $P5013, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 26
    push $P5003, $P5013
    nqp_get_sc_object $P5014, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 42
    push $P5003, $P5014
    new $P5015, 'ResizableIntegerArray'
    push $P5015, 0
    push $P5015, 0
    push $P5015, 0
    push $P5015, 0
    push $P5015, 0
    push $P5015, 0
    push $P5015, 0
    push $P5015, 0
    push $P5015, 0
    push $P5015, 0
    push $P5015, 0
    $P5001."setup_static_lexpad"($P5002, $P5003, $P5015)
    .const "LexInfo" $P5001 = "cuid_66_1381944239.86639"
    new $P5002, 'ResizableStringArray'
    push $P5002, "$?PACKAGE"
    push $P5002, "$?CLASS"
    new $P5003, 'ResizablePMCArray'
    nqp_get_sc_object $P5004, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 1
    push $P5003, $P5004
    nqp_get_sc_object $P5005, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 1
    push $P5003, $P5005
    new $P5006, 'ResizableIntegerArray'
    push $P5006, 0
    push $P5006, 0
    $P5001."setup_static_lexpad"($P5002, $P5003, $P5006)
    .const "LexInfo" $P5001 = "cuid_67_1381944239.86639"
    new $P5002, 'ResizableStringArray'
    push $P5002, "$?PACKAGE"
    push $P5002, "$?CLASS"
    new $P5003, 'ResizablePMCArray'
    nqp_get_sc_object $P5004, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 2
    push $P5003, $P5004
    nqp_get_sc_object $P5005, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 2
    push $P5003, $P5005
    new $P5006, 'ResizableIntegerArray'
    push $P5006, 0
    push $P5006, 0
    $P5001."setup_static_lexpad"($P5002, $P5003, $P5006)
    .const "LexInfo" $P5001 = "cuid_68_1381944239.86639"
    new $P5002, 'ResizableStringArray'
    push $P5002, "$?PACKAGE"
    push $P5002, "$?CLASS"
    new $P5003, 'ResizablePMCArray'
    nqp_get_sc_object $P5004, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 3
    push $P5003, $P5004
    nqp_get_sc_object $P5005, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 3
    push $P5003, $P5005
    new $P5006, 'ResizableIntegerArray'
    push $P5006, 0
    push $P5006, 0
    $P5001."setup_static_lexpad"($P5002, $P5003, $P5006)
    .const "LexInfo" $P5001 = "cuid_69_1381944239.86639"
    new $P5002, 'ResizableStringArray'
    push $P5002, "$?PACKAGE"
    push $P5002, "$?CLASS"
    new $P5003, 'ResizablePMCArray'
    nqp_get_sc_object $P5004, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 4
    push $P5003, $P5004
    nqp_get_sc_object $P5005, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 4
    push $P5003, $P5005
    new $P5006, 'ResizableIntegerArray'
    push $P5006, 0
    push $P5006, 0
    $P5001."setup_static_lexpad"($P5002, $P5003, $P5006)
    .const "LexInfo" $P5001 = "cuid_70_1381944239.86639"
    new $P5002, 'ResizableStringArray'
    push $P5002, "$?PACKAGE"
    push $P5002, "$?CLASS"
    new $P5003, 'ResizablePMCArray'
    nqp_get_sc_object $P5004, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 5
    push $P5003, $P5004
    nqp_get_sc_object $P5005, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 5
    push $P5003, $P5005
    new $P5006, 'ResizableIntegerArray'
    push $P5006, 0
    push $P5006, 0
    $P5001."setup_static_lexpad"($P5002, $P5003, $P5006)
    .const "LexInfo" $P5001 = "cuid_81_1381944239.86639"
    new $P5002, 'ResizableStringArray'
    push $P5002, "$?PACKAGE"
    push $P5002, "$?CLASS"
    new $P5003, 'ResizablePMCArray'
    nqp_get_sc_object $P5004, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 6
    push $P5003, $P5004
    nqp_get_sc_object $P5005, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 6
    push $P5003, $P5005
    new $P5006, 'ResizableIntegerArray'
    push $P5006, 0
    push $P5006, 0
    $P5001."setup_static_lexpad"($P5002, $P5003, $P5006)
    .const "LexInfo" $P5001 = "cuid_82_1381944239.86639"
    new $P5002, 'ResizableStringArray'
    push $P5002, "$?PACKAGE"
    push $P5002, "$?CLASS"
    new $P5003, 'ResizablePMCArray'
    nqp_get_sc_object $P5004, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 9
    push $P5003, $P5004
    nqp_get_sc_object $P5005, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 9
    push $P5003, $P5005
    new $P5006, 'ResizableIntegerArray'
    push $P5006, 0
    push $P5006, 0
    $P5001."setup_static_lexpad"($P5002, $P5003, $P5006)
    .const "LexInfo" $P5001 = "cuid_88_1381944239.86639"
    new $P5002, 'ResizableStringArray'
    push $P5002, "$?PACKAGE"
    push $P5002, "$?CLASS"
    new $P5003, 'ResizablePMCArray'
    nqp_get_sc_object $P5004, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 26
    push $P5003, $P5004
    nqp_get_sc_object $P5005, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 26
    push $P5003, $P5005
    new $P5006, 'ResizableIntegerArray'
    push $P5006, 0
    push $P5006, 0
    $P5001."setup_static_lexpad"($P5002, $P5003, $P5006)
    .const "LexInfo" $P5001 = "cuid_93_1381944239.86639"
    new $P5002, 'ResizableStringArray'
    push $P5002, "$?PACKAGE"
    push $P5002, "$?CLASS"
    new $P5003, 'ResizablePMCArray'
    nqp_get_sc_object $P5004, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 42
    push $P5003, $P5004
    nqp_get_sc_object $P5005, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381944239.89771", 42
    push $P5003, $P5005
    new $P5006, 'ResizableIntegerArray'
    push $P5006, 0
    push $P5006, 0
    $P5007 = $P5001."setup_static_lexpad"($P5002, $P5003, $P5006)
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_94_1381944239.86639") :anon :lex :outer("cuid_95_1381944239.86639")
.annotate 'file', "src/stage2/NQPCORE.setting"
    new $P5001, 'ResizablePMCArray'
    .const 'Sub' $P5002 = "cuid_1_1381944239.86639" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_2_1381944239.86639" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_3_1381944239.86639" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_4_1381944239.86639" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_5_1381944239.86639" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_6_1381944239.86639" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_7_1381944239.86639" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_8_1381944239.86639" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_9_1381944239.86639" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_10_1381944239.86639" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_11_1381944239.86639" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_12_1381944239.86639" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_13_1381944239.86639" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_14_1381944239.86639" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_15_1381944239.86639" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_16_1381944239.86639" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_17_1381944239.86639" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_18_1381944239.86639" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_19_1381944239.86639" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_20_1381944239.86639" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_21_1381944239.86639" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_22_1381944239.86639" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_23_1381944239.86639" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_24_1381944239.86639" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_25_1381944239.86639" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_26_1381944239.86639" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_27_1381944239.86639" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_28_1381944239.86639" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_29_1381944239.86639" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_30_1381944239.86639" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_31_1381944239.86639" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_32_1381944239.86639" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_33_1381944239.86639" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_34_1381944239.86639" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_35_1381944239.86639" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_36_1381944239.86639" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_37_1381944239.86639" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_38_1381944239.86639" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_39_1381944239.86639" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_40_1381944239.86639" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_41_1381944239.86639" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_42_1381944239.86639" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_43_1381944239.86639" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_44_1381944239.86639" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_45_1381944239.86639" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_46_1381944239.86639" 
    push $P5001, $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_96_1381944239.86639") :load
.annotate 'file', "src/stage2/NQPCORE.setting"
    .const 'Sub' $P5001 = "cuid_47_1381944239.86639" 
    $P5002 = $P5001()
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_97_1381944239.86639") :main
.annotate 'file', "src/stage2/NQPCORE.setting"
    .param pmc ARGS :slurpy 
    .const 'Sub' $P5001 = "cuid_47_1381944239.86639" 
    $P5002 = $P5001(ARGS :flat)
    .return ($P5002) 
.end