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
.sub "" :subid("cuid_125_1381281785.71956") :anon :lex
.annotate 'file', "src/stage2/QRegex.nqp"
    .param pmc _lex_param_0 :slurpy 
    .const 'Sub' $P5026 = 'cuid_126_1381281785.71956' 
    capture_lex $P5026 
    .const 'Sub' $P5026 = 'cuid_151_1381281785.71956' 
    capture_lex $P5026 
    .const 'Sub' $P5026 = 'cuid_82_1381281785.71956' 
    capture_lex $P5026 
    .const 'Sub' $P5026 = 'cuid_153_1381281785.71956' 
    capture_lex $P5026 
    .const 'Sub' $P5026 = 'cuid_165_1381281785.71956' 
    capture_lex $P5026 
    .const 'Sub' $P5026 = 'cuid_176_1381281785.71956' 
    capture_lex $P5026 
    .const 'Sub' $P5026 = 'cuid_177_1381281785.71956' 
    capture_lex $P5026 
    .lex "GLOBALish", $P101 
    .lex "$?PACKAGE", $P102 
    .lex "EXPORT", $P103 
    .lex "ParseShared", $P104 
    .lex "NQPCursorRole", $P105 
    .lex "NQPMatch", $P106 
    .lex "NQPCursor", $P107 
    .lex "NQPRegexMethod", $P108 
    .lex "NQPRegex", $P109 
    .lex "@ARGS", _lex_param_0 
    .local pmc ctxsave 
.annotate 'line', 464
.annotate 'line', 465
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 9
    nqp_get_sc_object $P5002, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 3
    $P5001."SET_NFA_TYPE"($P5002)
    find_dynamic_lex $P5003, "$*CTXSAVE"
    set ctxsave, $P5003
    isnull $I5001, ctxsave
    if $I5001 goto unless135_end292 
    can $I5002, ctxsave, "ctxsave"
    box $P5006, $I5002
    set $P5005, $P5006
    unless $I5002 goto if136_end294 
    $P5004 = ctxsave."ctxsave"()
    set $P5005, $P5004
  if136_end294:
  unless135_end292:
.annotate 'line', 1
    .const 'Sub' $P5007 = 'cuid_126_1381281785.71956' 
    capture_lex $P5007
    $P5008 = $P5007()
    .const 'Sub' $P5009 = 'cuid_151_1381281785.71956' 
    capture_lex $P5009
    $P5010 = $P5009()
    .const 'Sub' $P5011 = 'cuid_82_1381281785.71956' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_153_1381281785.71956' 
    capture_lex $P5012
    $P5013 = $P5012()
    .const 'Sub' $P5014 = 'cuid_165_1381281785.71956' 
    capture_lex $P5014
    $P5015 = $P5014()
    .const 'Sub' $P5016 = 'cuid_176_1381281785.71956' 
    capture_lex $P5016
    $P5017 = $P5016()
    nqp_get_sc_object $P5018, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 109
    nqp_get_sc_object $P5019, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 109
    null $P5020
    set_invocation_spec $P5018, $P5019, "$!code", $P5020
    .const 'Sub' $P5021 = 'cuid_177_1381281785.71956' 
    capture_lex $P5021
    $P5022 = $P5021()
    nqp_get_sc_object $P5023, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 114
    nqp_get_sc_object $P5024, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 109
    null $P5025
    set_invocation_spec $P5023, $P5024, "$!code", $P5025
    .return () 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_126_1381281785.71956") :anon :lex :outer("cuid_125_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 7
    .const 'Sub' $P5061 = 'cuid_1_1381281785.71956' 
    capture_lex $P5061 
    .const 'Sub' $P5061 = 'cuid_2_1381281785.71956' 
    capture_lex $P5061 
    .const 'Sub' $P5061 = 'cuid_3_1381281785.71956' 
    capture_lex $P5061 
    .const 'Sub' $P5061 = 'cuid_4_1381281785.71956' 
    capture_lex $P5061 
    .const 'Sub' $P5061 = 'cuid_5_1381281785.71956' 
    capture_lex $P5061 
    .const 'Sub' $P5061 = 'cuid_6_1381281785.71956' 
    capture_lex $P5061 
    .const 'Sub' $P5061 = 'cuid_7_1381281785.71956' 
    capture_lex $P5061 
    .const 'Sub' $P5061 = 'cuid_8_1381281785.71956' 
    capture_lex $P5061 
    .const 'Sub' $P5061 = 'cuid_9_1381281785.71956' 
    capture_lex $P5061 
    .const 'Sub' $P5061 = 'cuid_10_1381281785.71956' 
    capture_lex $P5061 
    .const 'Sub' $P5061 = 'cuid_11_1381281785.71956' 
    capture_lex $P5061 
    .const 'Sub' $P5061 = 'cuid_12_1381281785.71956' 
    capture_lex $P5061 
    .const 'Sub' $P5061 = 'cuid_13_1381281785.71956' 
    capture_lex $P5061 
    .const 'Sub' $P5061 = 'cuid_14_1381281785.71956' 
    capture_lex $P5061 
    .const 'Sub' $P5061 = 'cuid_15_1381281785.71956' 
    capture_lex $P5061 
    .const 'Sub' $P5061 = 'cuid_16_1381281785.71956' 
    capture_lex $P5061 
    .const 'Sub' $P5061 = 'cuid_17_1381281785.71956' 
    capture_lex $P5061 
    .const 'Sub' $P5061 = 'cuid_18_1381281785.71956' 
    capture_lex $P5061 
    .const 'Sub' $P5061 = 'cuid_19_1381281785.71956' 
    capture_lex $P5061 
    .const 'Sub' $P5061 = 'cuid_20_1381281785.71956' 
    capture_lex $P5061 
    .const 'Sub' $P5061 = 'cuid_21_1381281785.71956' 
    capture_lex $P5061 
    .const 'Sub' $P5061 = 'cuid_22_1381281785.71956' 
    capture_lex $P5061 
    .const 'Sub' $P5061 = 'cuid_146_1381281785.71956' 
    capture_lex $P5061 
    .const 'Sub' $P5061 = 'cuid_23_1381281785.71956' 
    capture_lex $P5061 
    .const 'Sub' $P5061 = 'cuid_24_1381281785.71956' 
    capture_lex $P5061 
    .const 'Sub' $P5061 = 'cuid_25_1381281785.71956' 
    capture_lex $P5061 
    .const 'Sub' $P5061 = 'cuid_26_1381281785.71956' 
    capture_lex $P5061 
    .const 'Sub' $P5061 = 'cuid_27_1381281785.71956' 
    capture_lex $P5061 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .lex "$EDGE_FATE", $P103 
    .lex "$EDGE_EPSILON", $P104 
    .lex "$EDGE_CODEPOINT", $P105 
    .lex "$EDGE_CODEPOINT_NEG", $P106 
    .lex "$EDGE_CHARCLASS", $P107 
    .lex "$EDGE_CHARCLASS_NEG", $P108 
    .lex "$EDGE_CHARLIST", $P109 
    .lex "$EDGE_CHARLIST_NEG", $P110 
    .lex "$EDGE_SUBRULE", $P111 
    .lex "$EDGE_CODEPOINT_I", $P112 
    .lex "$EDGE_CODEPOINT_I_NEG", $P113 
    .lex "$EDGE_GENERIC_VAR", $P114 
    .lex "%cclass_code", $P115 
    .lex "NFAType", $P116 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P103, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P104, $P5002
    nqp_get_sc_object $P5003, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P105, $P5003
    nqp_get_sc_object $P5004, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P106, $P5004
    nqp_get_sc_object $P5005, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P107, $P5005
    nqp_get_sc_object $P5006, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P108, $P5006
    nqp_get_sc_object $P5007, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P109, $P5007
    nqp_get_sc_object $P5008, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P110, $P5008
    nqp_get_sc_object $P5009, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P111, $P5009
    nqp_get_sc_object $P5010, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P112, $P5010
    nqp_get_sc_object $P5011, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P113, $P5011
    nqp_get_sc_object $P5012, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P114, $P5012
    new $P5013, 'Hash'
    set $P115, $P5013
.annotate 'line', 96
    box $P5014, 65535
    set $P115["."], $P5014
    box $P5015, 8
    set $P115["d"], $P5015
    box $P5016, 32
    set $P115["s"], $P5016
    box $P5017, 8192
    set $P115["w"], $P5017
    box $P5018, 4096
    set $P115["n"], $P5018
    box $P5019, 4096
    set $P115["nl"], $P5019
.annotate 'line', 7
    box $P5020, 0
    set $P103, $P5020
    box $P5021, 1
    set $P104, $P5021
    box $P5022, 2
    set $P105, $P5022
    box $P5023, 3
    set $P106, $P5023
    box $P5024, 4
    set $P107, $P5024
    box $P5025, 5
    set $P108, $P5025
    box $P5026, 6
    set $P109, $P5026
    box $P5027, 7
    set $P110, $P5027
    box $P5028, 8
    set $P111, $P5028
    box $P5029, 9
    set $P112, $P5029
    box $P5030, 10
    set $P113, $P5030
    box $P5031, 11
    set $P114, $P5031
    .const 'Sub' $P5032 = 'cuid_1_1381281785.71956' 
    capture_lex $P5032
    .const 'Sub' $P5033 = 'cuid_2_1381281785.71956' 
    capture_lex $P5033
    .const 'Sub' $P5034 = 'cuid_3_1381281785.71956' 
    capture_lex $P5034
    .const 'Sub' $P5035 = 'cuid_4_1381281785.71956' 
    capture_lex $P5035
    .const 'Sub' $P5036 = 'cuid_5_1381281785.71956' 
    capture_lex $P5036
    .const 'Sub' $P5037 = 'cuid_6_1381281785.71956' 
    capture_lex $P5037
    .const 'Sub' $P5038 = 'cuid_7_1381281785.71956' 
    capture_lex $P5038
    .const 'Sub' $P5039 = 'cuid_8_1381281785.71956' 
    capture_lex $P5039
    .const 'Sub' $P5040 = 'cuid_9_1381281785.71956' 
    capture_lex $P5040
    .const 'Sub' $P5041 = 'cuid_10_1381281785.71956' 
    capture_lex $P5041
    .const 'Sub' $P5042 = 'cuid_11_1381281785.71956' 
    capture_lex $P5042
    .const 'Sub' $P5043 = 'cuid_12_1381281785.71956' 
    capture_lex $P5043
    .const 'Sub' $P5044 = 'cuid_13_1381281785.71956' 
    capture_lex $P5044
    .const 'Sub' $P5045 = 'cuid_14_1381281785.71956' 
    capture_lex $P5045
    .const 'Sub' $P5046 = 'cuid_15_1381281785.71956' 
    capture_lex $P5046
    .const 'Sub' $P5047 = 'cuid_16_1381281785.71956' 
    capture_lex $P5047
    .const 'Sub' $P5048 = 'cuid_17_1381281785.71956' 
    capture_lex $P5048
    .const 'Sub' $P5049 = 'cuid_18_1381281785.71956' 
    capture_lex $P5049
    .const 'Sub' $P5050 = 'cuid_19_1381281785.71956' 
    capture_lex $P5050
    .const 'Sub' $P5051 = 'cuid_20_1381281785.71956' 
    capture_lex $P5051
    .const 'Sub' $P5052 = 'cuid_21_1381281785.71956' 
    capture_lex $P5052
    .const 'Sub' $P5053 = 'cuid_22_1381281785.71956' 
    capture_lex $P5053
    .const 'Sub' $P5054 = 'cuid_146_1381281785.71956' 
    capture_lex $P5054
    $P5055 = $P5054()
    .const 'Sub' $P5056 = 'cuid_23_1381281785.71956' 
    capture_lex $P5056
    .const 'Sub' $P5057 = 'cuid_24_1381281785.71956' 
    capture_lex $P5057
    .const 'Sub' $P5058 = 'cuid_25_1381281785.71956' 
    capture_lex $P5058
    .const 'Sub' $P5059 = 'cuid_26_1381281785.71956' 
    capture_lex $P5059
    .const 'Sub' $P5060 = 'cuid_27_1381281785.71956' 
    capture_lex $P5060
    .return ($P5060) 
.end
.HLL "nqp"
.namespace []
.sub "new" :subid("cuid_1_1381281785.71956") :anon :lex :outer("cuid_126_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 34
    .param pmc _lex_param_0 
    .lex "$new", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P101, $P5001
.annotate 'line', 35
    nqp_decontainerize $P5002, _lex_param_0
    new $P5003, 'ResizablePMCArray'
    $P5004 = $P5002."bless"($P5003 :named("states"), 0 :named("edges"))
    set $P101, $P5004
.annotate 'line', 36
    $P101."addstate"()
.annotate 'line', 37
    $P101."addstate"()
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "from_saved" :subid("cuid_2_1381281785.71956") :anon :lex :outer("cuid_126_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 41
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$saved", _lex_param_1 
.annotate 'line', 42
    nqp_decontainerize $P5001, _lex_param_0
    $P5002 = $P5001."bless"(_lex_param_1 :named("states"), 1 :named("edges"))
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "addstate" :subid("cuid_3_1381281785.71956") :anon :lex :outer("cuid_126_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 45
    .param pmc _lex_param_0 
    .lex "$id", $I101 
    .lex "self", _lex_param_0 
    set $I101, 0
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 3
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!states", 0
    set $N5001, $P5003
    set $I5001, $N5001
    set $I101, $I5001
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 3
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!states", 0
    new $P5007, 'ResizablePMCArray'
    set $P5006[$I101], $P5007
    .return ($I101) 
.end
.HLL "nqp"
.namespace []
.sub "addedge" :subid("cuid_4_1381281785.71956") :anon :lex :outer("cuid_126_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 51
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .param pmc _lex_param_4 
    .param pmc _lex_param_5 :named("newedge") :optional 
    .param int haz_param_9 :opt_flag 
    .lex "$st", $P101 
    .lex "self", _lex_param_0 
    .lex "$from", _lex_param_1 
    .lex "$to", _lex_param_2 
    .lex "$action", _lex_param_3 
    .lex "$value", _lex_param_4 
    .lex "$newedge", _lex_param_5 
    .local pmc fb_tmp_15 
    if haz_param_9, default304
    box $P5017, 1
    set _lex_param_5, $P5017
  default304:
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P101, $P5001
    unless _lex_param_5 goto if137_end296 
    nqp_decontainerize $P5002, _lex_param_0
    nqp_get_sc_object $P5003, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 3
    box $P5004, 1
    repr_bind_attr_obj $P5002, $P5003, "$!edges", 1, $P5004
  if137_end296:
    set $N5001, _lex_param_2
    set $N5002, 0
    islt $I5001, $N5001, $N5002
    unless $I5001 goto if138_end298 
.annotate 'line', 53
    nqp_decontainerize $P5005, _lex_param_0
    $P5006 = $P5005."addstate"()
    set _lex_param_2, $P5006
  if138_end298:
    nqp_decontainerize $P5007, _lex_param_0
    nqp_get_sc_object $P5008, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 3
    repr_get_attr_obj $P5009, $P5007, $P5008, "$!states", 0
    set fb_tmp_15, $P5009
    repr_defined $I5002, fb_tmp_15
    unless $I5002 goto if139_else299 
    set $I5003, _lex_param_1
    set $P5010, fb_tmp_15[$I5003]
    set $P5012, $P5010
    goto if139_end300
  if139_else299:
    null $P5011
    set $P5012, $P5011
  if139_end300:
    unless_null $P5012, vivi_140301
    nqp_get_sc_object $P5013, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P5012, $P5013
  vivi_140301:
    set $P101, $P5012
    push $P101, _lex_param_3
    nqp_get_sc_object $P5014, "8D7C40D4B41C0FB97C97F9FA59E4F60A345D73C3-1381281783.14924", 55
    type_check $I5004, _lex_param_4, $P5014
    unless $I5004 goto if141_else302 
.annotate 'line', 56
    $P5015 = _lex_param_4."value"()
    set $P5016, $P5015
    goto if141_end303
  if141_else302:
    set $P5016, _lex_param_4
  if141_end303:
    push $P101, $P5016
    push $P101, _lex_param_2
    .return (_lex_param_2) 
.end
.HLL "nqp"
.namespace []
.sub "states" :subid("cuid_5_1381281785.71956") :anon :lex :outer("cuid_126_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 61
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 3
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!states", 0
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "addnode" :subid("cuid_6_1381281785.71956") :anon :lex :outer("cuid_126_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 63
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :named("vars_as_generic") :optional 
    .param int haz_param_10 :opt_flag 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$*vars_as_generic", _lex_param_2 
    if haz_param_10, default305
    nqp_get_sc_object $P5003, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set _lex_param_2, $P5003
  default305:
.annotate 'line', 64
    nqp_decontainerize $P5001, _lex_param_0
    $P5001."regex_nfa"(_lex_param_1, 1, 0)
    nqp_decontainerize $P5002, _lex_param_0
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "regex_nfa" :subid("cuid_7_1381281785.71956") :anon :lex :outer("cuid_126_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 68
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .lex "$method", $P101 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$from", _lex_param_2 
    .lex "$to", _lex_param_3 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P101, $P5001
.annotate 'line', 69
    $P5003 = _lex_param_1."rxtype"()
    set $P5002, $P5003
    defined $I5001, $P5002
    if $I5001, defor306
    box $P5004, "concat"
    set $P5002, $P5004
  defor306:
    set $P101, $P5002
.annotate 'line', 70
    nqp_decontainerize $P5006, _lex_param_0
    get_how $P5005, $P5006
    nqp_decontainerize $P5007, _lex_param_0
    $P5008 = $P5005."can"($P5007, $P101)
    unless $P5008 goto if142_else307 
.annotate 'line', 71
    nqp_decontainerize $P5009, _lex_param_0
    set $S5001, $P101
    $P5010 = $P5009.$S5001(_lex_param_1, _lex_param_2, _lex_param_3)
    set $P5013, $P5010
    goto if142_end308
  if142_else307:
.annotate 'line', 72
    nqp_decontainerize $P5011, _lex_param_0
    $P5012 = $P5011."fate"(_lex_param_1, _lex_param_2, _lex_param_3)
    set $P5013, $P5012
  if142_end308:
    .return ($P5013) 
.end
.HLL "nqp"
.namespace []
.sub "fate" :subid("cuid_8_1381281785.71956") :anon :lex :outer("cuid_126_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 75
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$from", _lex_param_2 
    .lex "$to", _lex_param_3 
.annotate 'line', 76
    nqp_decontainerize $P5001, _lex_param_0
    find_lex $P5002, "$EDGE_FATE"
    $P5003 = $P5001."addedge"(_lex_param_2, 0, $P5002, 0, 0 :named("newedge"))
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "alt" :subid("cuid_9_1381281785.71956") :anon :lex :outer("cuid_126_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 79
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .const 'Sub' $P5007 = 'cuid_127_1381281785.71956' 
    capture_lex $P5007 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$from", _lex_param_2 
    .lex "$to", _lex_param_3 
.annotate 'line', 80
    $P5004 = _lex_param_1."list"()
    set $P5001, $P5004
    iter $P5003, $P5004
  for_next313:
    unless $P5003, for_done315
    shift $P5006, $P5003
  for_redo314:
    .const 'Sub' $P5005 = 'cuid_127_1381281785.71956' 
    capture_lex $P5005
    $P5001 = $P5005($P5006)
    goto for_next313
  for_done315:
    .return (_lex_param_3) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_127_1381281785.71956") :anon :lex :outer("cuid_9_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 80
    .param pmc _lex_param_0 
    .lex "$st", $I101 
    .lex "$_", _lex_param_0 
    set $I101, 0
.annotate 'line', 81
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    find_lex $P5003, "$from"
    find_lex $P5004, "$to"
    $P5005 = $P5001."regex_nfa"(_lex_param_0, $P5003, $P5004)
    set $I5001, $P5005
    set $I101, $I5001
    find_lex $P5006, "$to"
    set $N5001, $P5006
    set $N5002, 0
    islt $I5002, $N5001, $N5002
    set $I5004, $I5002
    unless $I5002 goto if144_end312 
    set $N5003, $I101
    set $N5004, 0
    isgt $I5003, $N5003, $N5004
    set $I5004, $I5003
  if144_end312:
    box $P5009, $I5004
    set $P5008, $P5009
    unless $I5004 goto if143_end310 
    box $P5007, $I101
    store_lex "$to", $P5007
    set $P5008, $P5007
  if143_end310:
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "anchor" :subid("cuid_10_1381281785.71956") :anon :lex :outer("cuid_126_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 87
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$from", _lex_param_2 
    .lex "$to", _lex_param_3 
.annotate 'line', 88
    nqp_decontainerize $P5001, _lex_param_0
    find_lex $P5002, "$EDGE_EPSILON"
    $P5003 = $P5001."addedge"(_lex_param_2, _lex_param_3, $P5002, 0)
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "dba" :subid("cuid_11_1381281785.71956") :anon :lex :outer("cuid_126_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 91
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$from", _lex_param_2 
    .lex "$to", _lex_param_3 
.annotate 'line', 92
    nqp_decontainerize $P5001, _lex_param_0
    find_lex $P5002, "$EDGE_EPSILON"
    $P5003 = $P5001."addedge"(_lex_param_2, _lex_param_3, $P5002, 0)
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "cclass" :subid("cuid_12_1381281785.71956") :anon :lex :outer("cuid_126_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 105
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$from", _lex_param_2 
    .lex "$to", _lex_param_3 
    .local pmc fb_tmp_16 
.annotate 'line', 106
    nqp_decontainerize $P5001, _lex_param_0
    find_lex $P5002, "$EDGE_CHARCLASS"
    set $N5002, $P5002
    $P5003 = _lex_param_1."negate"()
    istrue $I5001, $P5003
    set $N5003, $I5001
    add $N5001, $N5002, $N5003
    find_lex $P5004, "%cclass_code"
    set fb_tmp_16, $P5004
    repr_defined $I5002, fb_tmp_16
    unless $I5002 goto if145_else316 
.annotate 'line', 107
    $P5006 = _lex_param_1."name"()
    set $S5001, $P5006
    set $P5005, fb_tmp_16[$S5001]
    set $P5008, $P5005
    goto if145_end317
  if145_else316:
    null $P5007
    set $P5008, $P5007
  if145_end317:
    unless_null $P5008, vivi_146318
    nqp_get_sc_object $P5009, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P5008, $P5009
  vivi_146318:
    $P5010 = $P5001."addedge"(_lex_param_2, _lex_param_3, $N5001, $P5008)
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "concat" :subid("cuid_13_1381281785.71956") :anon :lex :outer("cuid_126_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 110
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .lex "$i", $I101 
    .lex "$n", $I102 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$from", _lex_param_2 
    .lex "$to", _lex_param_3 
    .local pmc fb_tmp_17 
    .local pmc fb_tmp_18 
    set $I101, 0
    set $I102, 0
    set $I101, 0
.annotate 'line', 112
    $P5001 = _lex_param_1."list"()
    set $N5002, $P5001
    set $N5003, 1
    sub $N5001, $N5002, $N5003
    set $I5001, $N5001
    set $I102, $I5001
  while147_test319:
    set $N5004, _lex_param_2
    set $N5005, 0
    isgt $I5002, $N5004, $N5005
    set $I5004, $I5002
    unless $I5002 goto if148_end325 
    set $N5006, $I101
    set $N5007, $I102
    islt $I5003, $N5006, $N5007
    set $I5004, $I5003
  if148_end325:
    set $I5007, $I5004
    unless $I5004 goto while147_done323 
  while147_redo321:
.annotate 'line', 113
.annotate 'line', 114
    nqp_decontainerize $P5002, _lex_param_0
    set fb_tmp_17, _lex_param_1
    repr_defined $I5005, fb_tmp_17
    unless $I5005 goto if149_else326 
    set $P5003, fb_tmp_17[$I101]
    set $P5005, $P5003
    goto if149_end327
  if149_else326:
    null $P5004
    set $P5005, $P5004
  if149_end327:
    unless_null $P5005, vivi_150328
    nqp_get_sc_object $P5006, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P5005, $P5006
  vivi_150328:
    $P5007 = $P5002."regex_nfa"($P5005, _lex_param_2, -1)
    set _lex_param_2, $P5007
    add $I5006, $I101, 1
    set $I101, $I5006
    set $I5007, $I101
    goto while147_test319 
  while147_done323:
    set $N5008, _lex_param_2
    set $N5009, 0
    isgt $I5008, $N5008, $N5009
    set $I5010, $I5008
    unless $I5008 goto if152_end332 
    set $N5010, $I102
    set $N5011, 0
    isge $I5009, $N5010, $N5011
    set $I5010, $I5009
  if152_end332:
    unless $I5010 goto if151_else329 
.annotate 'line', 117
    nqp_decontainerize $P5008, _lex_param_0
    set fb_tmp_18, _lex_param_1
    repr_defined $I5011, fb_tmp_18
    unless $I5011 goto if153_else333 
    set $P5009, fb_tmp_18[$I101]
    set $P5011, $P5009
    goto if153_end334
  if153_else333:
    null $P5010
    set $P5011, $P5010
  if153_end334:
    unless_null $P5011, vivi_154335
    nqp_get_sc_object $P5012, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P5011, $P5012
  vivi_154335:
    $P5013 = $P5008."regex_nfa"($P5011, _lex_param_2, _lex_param_3)
    set $P5014, $P5013
    goto if151_end330
  if151_else329:
    set $P5014, _lex_param_3
  if151_end330:
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "enumcharlist" :subid("cuid_14_1381281785.71956") :anon :lex :outer("cuid_126_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 120
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .lex "$charlist", $P101 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$from", _lex_param_2 
    .lex "$to", _lex_param_3 
    .local pmc fb_tmp_19 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P101, $P5001
    set fb_tmp_19, _lex_param_1
    repr_defined $I5001, fb_tmp_19
    unless $I5001 goto if155_else336 
    set $P5002, fb_tmp_19[0]
    set $P5004, $P5002
    goto if155_end337
  if155_else336:
    null $P5003
    set $P5004, $P5003
  if155_end337:
    unless_null $P5004, vivi_156338
    nqp_get_sc_object $P5005, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P5004, $P5005
  vivi_156338:
    set $P101, $P5004
.annotate 'line', 122
    $P5006 = _lex_param_1."subtype"()
    set $S5001, $P5006
    iseq $I5002, $S5001, "zerowidth"
    unless $I5002 goto if157_else339 
.annotate 'line', 123
    nqp_decontainerize $P5007, _lex_param_0
    find_lex $P5008, "$EDGE_CHARLIST"
    set $N5002, $P5008
    $P5009 = _lex_param_1."negate"()
    istrue $I5003, $P5009
    set $N5003, $I5003
    add $N5001, $N5002, $N5003
    $P5010 = $P5007."addedge"(_lex_param_2, -1, $N5001, $P101)
    set _lex_param_2, $P5010
.annotate 'line', 124
    nqp_decontainerize $P5011, _lex_param_0
    find_lex $P5012, "$EDGE_FATE"
    $P5013 = $P5011."addedge"(_lex_param_2, 0, $P5012, 0)
    set $P5018, $P5013
    goto if157_end340
  if157_else339:
.annotate 'line', 126
.annotate 'line', 127
    nqp_decontainerize $P5014, _lex_param_0
    find_lex $P5015, "$EDGE_CHARLIST"
    set $N5005, $P5015
    $P5016 = _lex_param_1."negate"()
    istrue $I5004, $P5016
    set $N5006, $I5004
    add $N5004, $N5005, $N5006
    $P5017 = $P5014."addedge"(_lex_param_2, _lex_param_3, $N5004, $P101)
    set $P5018, $P5017
  if157_end340:
    .return ($P5018) 
.end
.HLL "nqp"
.namespace []
.sub "literal" :subid("cuid_15_1381281785.71956") :anon :lex :outer("cuid_126_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 131
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .const 'Sub' $P5015 = 'cuid_128_1381281785.71956' 
    capture_lex $P5015 
    .const 'Sub' $P5015 = 'cuid_129_1381281785.71956' 
    capture_lex $P5015 
    .lex "$litlen", $I101 
    .lex "$i", $I102 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$from", _lex_param_2 
    .lex "$to", _lex_param_3 
    .local pmc fb_tmp_20 
    set $I101, 0
    set $I102, 0
    set fb_tmp_20, _lex_param_1
    repr_defined $I5003, fb_tmp_20
    unless $I5003 goto if158_else341 
    set $P5001, fb_tmp_20[0]
    set $P5003, $P5001
    goto if158_end342
  if158_else341:
    null $P5002
    set $P5003, $P5002
  if158_end342:
    unless_null $P5003, vivi_159343
    nqp_get_sc_object $P5004, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P5003, $P5004
  vivi_159343:
    set $S5001, $P5003
    length $I5002, $S5001
    sub $I5001, $I5002, 1
    set $I101, $I5001
    set $I102, 0
    set $N5001, $I101
    set $N5002, 0
    isge $I5004, $N5001, $N5002
    unless $I5004 goto if160_else344 
.annotate 'line', 134
.annotate 'line', 135
    $P5005 = _lex_param_1."subtype"()
    set $S5002, $P5005
    iseq $I5005, $S5002, "ignorecase"
    unless $I5005 goto if161_else346 
    .const 'Sub' $P5006 = 'cuid_128_1381281785.71956' 
    capture_lex $P5006
    $P5007 = $P5006()
    set $P5010, $P5007
    goto if161_end347
  if161_else346:
    .const 'Sub' $P5008 = 'cuid_129_1381281785.71956' 
    capture_lex $P5008
    $P5009 = $P5008()
    set $P5010, $P5009
  if161_end347:
    set $P5014, $P5010
    goto if160_end345
  if160_else344:
.annotate 'line', 155
.annotate 'line', 156
    nqp_decontainerize $P5011, _lex_param_0
    find_lex $P5012, "$EDGE_EPSILON"
    $P5013 = $P5011."addedge"(_lex_param_2, _lex_param_3, $P5012, 0)
    set $P5014, $P5013
  if160_end345:
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_128_1381281785.71956") :anon :lex :outer("cuid_15_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 135
    .lex "$litconst_lc", $S101 
    .lex "$litconst_uc", $S102 
    .local pmc fb_tmp_21 
    .local pmc fb_tmp_22 
    set $S101, ""
    set $S102, ""
    find_lex $P5001, "$node"
    set fb_tmp_21, $P5001
    repr_defined $I5001, fb_tmp_21
    unless $I5001 goto if162_else348 
    set $P5002, fb_tmp_21[0]
    set $P5004, $P5002
    goto if162_end349
  if162_else348:
    null $P5003
    set $P5004, $P5003
  if162_end349:
    unless_null $P5004, vivi_163350
    nqp_get_sc_object $P5005, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P5004, $P5005
  vivi_163350:
    set $S5002, $P5004
    downcase $S5001, $S5002
    set $S101, $S5001
    find_lex $P5006, "$node"
    set fb_tmp_22, $P5006
    repr_defined $I5002, fb_tmp_22
    unless $I5002 goto if164_else351 
    set $P5007, fb_tmp_22[0]
    set $P5009, $P5007
    goto if164_end352
  if164_else351:
    null $P5008
    set $P5009, $P5008
  if164_end352:
    unless_null $P5009, vivi_165353
    nqp_get_sc_object $P5010, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P5009, $P5010
  vivi_165353:
    set $S5004, $P5009
    upcase $S5003, $S5004
    set $S102, $S5003
  while166_test354:
    find_lex $I5004, "$i"
    set $N5001, $I5004
    find_lex $I5005, "$litlen"
    set $N5002, $I5005
    islt $I5003, $N5001, $N5002
    set $I5012, $I5003
    unless $I5003 goto while166_done358 
  while166_redo356:
.annotate 'line', 138
.annotate 'line', 139
    find_lex $P5012, "self"
    nqp_decontainerize $P5011, $P5012
    find_lex $P5013, "$from"
    find_lex $P5014, "$EDGE_CODEPOINT_I"
    new $P5015, 'ResizablePMCArray'
    find_lex $I5007, "$i"
    ord $I5006, $S101, $I5007
    box $P5016, $I5006
    push $P5015, $P5016
    find_lex $I5009, "$i"
    ord $I5008, $S102, $I5009
    box $P5017, $I5008
    push $P5015, $P5017
    $P5018 = $P5011."addedge"($P5013, -1, $P5014, $P5015)
    store_lex "$from", $P5018
    find_lex $I5011, "$i"
    add $I5010, $I5011, 1
    store_lex "$i", $I5010
    set $I5012, $I5010
    goto while166_test354 
  while166_done358:
.annotate 'line', 143
    find_lex $P5020, "self"
    nqp_decontainerize $P5019, $P5020
    find_lex $P5021, "$from"
    find_lex $P5022, "$to"
    find_lex $P5023, "$EDGE_CODEPOINT_I"
    new $P5024, 'ResizablePMCArray'
    find_lex $I5014, "$i"
    ord $I5013, $S101, $I5014
    box $P5025, $I5013
    push $P5024, $P5025
    find_lex $I5016, "$i"
    ord $I5015, $S102, $I5016
    box $P5026, $I5015
    push $P5024, $P5026
    $P5027 = $P5019."addedge"($P5021, $P5022, $P5023, $P5024)
    .return ($P5027) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_129_1381281785.71956") :anon :lex :outer("cuid_15_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 146
    .lex "$litconst", $S101 
    .local pmc fb_tmp_23 
    set $S101, ""
    find_lex $P5001, "$node"
    set fb_tmp_23, $P5001
    repr_defined $I5001, fb_tmp_23
    unless $I5001 goto if167_else359 
    set $P5002, fb_tmp_23[0]
    set $P5004, $P5002
    goto if167_end360
  if167_else359:
    null $P5003
    set $P5004, $P5003
  if167_end360:
    unless_null $P5004, vivi_168361
    nqp_get_sc_object $P5005, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P5004, $P5005
  vivi_168361:
    set $S5001, $P5004
    set $S101, $S5001
  while169_test362:
    find_lex $I5003, "$i"
    set $N5001, $I5003
    find_lex $I5004, "$litlen"
    set $N5002, $I5004
    islt $I5002, $N5001, $N5002
    set $I5009, $I5002
    unless $I5002 goto while169_done366 
  while169_redo364:
.annotate 'line', 148
.annotate 'line', 149
    find_lex $P5007, "self"
    nqp_decontainerize $P5006, $P5007
    find_lex $P5008, "$from"
    find_lex $P5009, "$EDGE_CODEPOINT"
    find_lex $I5006, "$i"
    ord $I5005, $S101, $I5006
    $P5010 = $P5006."addedge"($P5008, -1, $P5009, $I5005)
    store_lex "$from", $P5010
    find_lex $I5008, "$i"
    add $I5007, $I5008, 1
    store_lex "$i", $I5007
    set $I5009, $I5007
    goto while169_test362 
  while169_done366:
.annotate 'line', 152
    find_lex $P5012, "self"
    nqp_decontainerize $P5011, $P5012
    find_lex $P5013, "$from"
    find_lex $P5014, "$to"
    find_lex $P5015, "$EDGE_CODEPOINT"
    find_lex $I5011, "$i"
    ord $I5010, $S101, $I5011
    $P5016 = $P5011."addedge"($P5013, $P5014, $P5015, $I5010)
    .return ($P5016) 
.end
.HLL "nqp"
.namespace []
.sub "subrule" :subid("cuid_16_1381281785.71956") :anon :lex :outer("cuid_126_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 160
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .const 'Sub' $P5179 = 'cuid_130_1381281785.71956' 
    capture_lex $P5179 
    .const 'Sub' $P5179 = 'cuid_131_1381281785.71956' 
    capture_lex $P5179 
    .const 'Sub' $P5179 = 'cuid_132_1381281785.71956' 
    capture_lex $P5179 
    .lex "$subtype", $P101 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$from", _lex_param_2 
    .lex "$to", _lex_param_3 
    .local pmc fb_tmp_27 
    .local pmc fb_tmp_28 
    .local pmc fb_tmp_29 
    .local pmc fb_tmp_30 
    .local pmc fb_tmp_31 
    .local pmc fb_tmp_32 
    .local pmc fb_tmp_33 
    .local pmc fb_tmp_34 
    .local pmc fb_tmp_35 
    .local pmc fb_tmp_36 
    .local pmc fb_tmp_37 
    .local pmc fb_tmp_38 
    .local pmc fb_tmp_39 
    .local pmc fb_tmp_40 
    .local pmc fb_tmp_41 
    .local pmc fb_tmp_42 
    .local pmc fb_tmp_43 
    .local pmc fb_tmp_44 
    .local pmc fb_tmp_45 
    .local pmc fb_tmp_46 
    .local pmc fb_tmp_47 
    .local pmc fb_tmp_48 
    .local pmc fb_tmp_49 
    .local pmc fb_tmp_50 
    .local pmc fb_tmp_51 
    .local pmc fb_tmp_52 
    .local pmc fb_tmp_53 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P101, $P5001
.annotate 'line', 161
    $P5002 = _lex_param_1."subtype"()
    set $P101, $P5002
.annotate 'line', 162
    $P5003 = _lex_param_1."name"()
    set $S5001, $P5003
    iseq $I5001, $S5001, "before"
    set $I5003, $I5001
    unless $I5001 goto if171_end370 
    $P5004 = _lex_param_1."negate"()
    isfalse $I5002, $P5004
    set $I5003, $I5002
  if171_end370:
    unless $I5003 goto if170_else367 
    .const 'Sub' $P5005 = 'cuid_130_1381281785.71956' 
    capture_lex $P5005
    $P5006 = $P5005()
    set $P5178, $P5006
    goto if170_end368
  if170_else367:
    set $S5002, $P101
    isne $I5004, $S5002, "zerowidth"
    set $I5016, $I5004
    unless $I5004 goto if179_end383 
.annotate 'line', 168
    $P5007 = _lex_param_1."name"()
    set $S5003, $P5007
    iseq $I5005, $S5003, "alpha"
    set $I5015, $I5005
    if $I5005 goto unless180_end385 
    set $S5004, $P101
    iseq $I5006, $S5004, "method"
    set $I5014, $I5006
    unless $I5006 goto if181_end387 
.annotate 'line', 170
    nqp_get_sc_object $P5008, "8D7C40D4B41C0FB97C97F9FA59E4F60A345D73C3-1381281783.14924", 55
    set fb_tmp_28, _lex_param_1
    repr_defined $I5009, fb_tmp_28
    unless $I5009 goto if184_else392 
    set $P5009, fb_tmp_28[0]
    set $P5011, $P5009
    goto if184_end393
  if184_else392:
    null $P5010
    set $P5011, $P5010
  if184_end393:
    unless_null $P5011, vivi_185394
    nqp_get_sc_object $P5012, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P5011, $P5012
  vivi_185394:
    set fb_tmp_27, $P5011
    repr_defined $I5008, fb_tmp_27
    unless $I5008 goto if183_else390 
    set $P5013, fb_tmp_27[0]
    set $P5015, $P5013
    goto if183_end391
  if183_else390:
    null $P5014
    set $P5015, $P5014
  if183_end391:
    unless_null $P5015, vivi_186395
    nqp_get_sc_object $P5016, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P5015, $P5016
  vivi_186395:
    $P5017 = $P5008."ACCEPTS"($P5015)
    unless $P5017 goto if182_else388 
    set fb_tmp_30, _lex_param_1
    repr_defined $I5011, fb_tmp_30
    unless $I5011 goto if188_else398 
    set $P5018, fb_tmp_30[0]
    set $P5020, $P5018
    goto if188_end399
  if188_else398:
    null $P5019
    set $P5020, $P5019
  if188_end399:
    unless_null $P5020, vivi_189400
    nqp_get_sc_object $P5021, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P5020, $P5021
  vivi_189400:
    set fb_tmp_29, $P5020
    repr_defined $I5010, fb_tmp_29
    unless $I5010 goto if187_else396 
    set $P5022, fb_tmp_29[0]
    set $P5024, $P5022
    goto if187_end397
  if187_else396:
    null $P5023
    set $P5024, $P5023
  if187_end397:
    unless_null $P5024, vivi_190401
    nqp_get_sc_object $P5025, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P5024, $P5025
  vivi_190401:
    $P5026 = $P5024."value"()
    set $P5035, $P5026
    goto if182_end389
  if182_else388:
    set fb_tmp_32, _lex_param_1
    repr_defined $I5013, fb_tmp_32
    unless $I5013 goto if192_else404 
    set $P5027, fb_tmp_32[0]
    set $P5029, $P5027
    goto if192_end405
  if192_else404:
    null $P5028
    set $P5029, $P5028
  if192_end405:
    unless_null $P5029, vivi_193406
    nqp_get_sc_object $P5030, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P5029, $P5030
  vivi_193406:
    set fb_tmp_31, $P5029
    repr_defined $I5012, fb_tmp_31
    unless $I5012 goto if191_else402 
    set $P5031, fb_tmp_31[0]
    set $P5033, $P5031
    goto if191_end403
  if191_else402:
    null $P5032
    set $P5033, $P5032
  if191_end403:
    unless_null $P5033, vivi_194407
    nqp_get_sc_object $P5034, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P5033, $P5034
  vivi_194407:
    set $P5035, $P5033
  if182_end389:
    set $S5005, $P5035
    iseq $I5007, $S5005, "alpha"
    set $I5014, $I5007
  if181_end387:
    set $I5015, $I5014
  unless180_end385:
    set $I5016, $I5015
  if179_end383:
    unless $I5016 goto if178_else380 
.annotate 'line', 171
    nqp_decontainerize $P5036, _lex_param_0
    find_lex $P5037, "$EDGE_CHARCLASS"
    set $N5002, $P5037
    $P5038 = _lex_param_1."negate"()
    set $N5003, $P5038
    add $N5001, $N5002, $N5003
    $P5039 = $P5036."addedge"(_lex_param_2, _lex_param_3, $N5001, 4)
    set _lex_param_3, $P5039
.annotate 'line', 173
    nqp_decontainerize $P5040, _lex_param_0
    find_lex $P5041, "$EDGE_CODEPOINT"
    set $N5005, $P5041
    $P5042 = _lex_param_1."negate"()
    set $N5006, $P5042
    add $N5004, $N5005, $N5006
    $P5043 = $P5040."addedge"(_lex_param_2, _lex_param_3, $N5004, 95)
    set $P5177, $P5043
    goto if178_end381
  if178_else380:
.annotate 'line', 175
    $P5044 = _lex_param_1."negate"()
    isfalse $I5017, $P5044
    set $I5019, $I5017
    unless $I5017 goto if197_end413 
    set $S5006, $P101
    isne $I5018, $S5006, "zerowidth"
    set $I5019, $I5018
  if197_end413:
    set $I5031, $I5019
    unless $I5019 goto if196_end411 
.annotate 'line', 176
    $P5045 = _lex_param_1."name"()
    set $S5007, $P5045
    iseq $I5020, $S5007, "ident"
    set $I5030, $I5020
    if $I5020 goto unless198_end415 
    set $S5008, $P101
    iseq $I5021, $S5008, "method"
    set $I5029, $I5021
    unless $I5021 goto if199_end417 
.annotate 'line', 178
    nqp_get_sc_object $P5046, "8D7C40D4B41C0FB97C97F9FA59E4F60A345D73C3-1381281783.14924", 55
    set fb_tmp_34, _lex_param_1
    repr_defined $I5024, fb_tmp_34
    unless $I5024 goto if202_else422 
    set $P5047, fb_tmp_34[0]
    set $P5049, $P5047
    goto if202_end423
  if202_else422:
    null $P5048
    set $P5049, $P5048
  if202_end423:
    unless_null $P5049, vivi_203424
    nqp_get_sc_object $P5050, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P5049, $P5050
  vivi_203424:
    set fb_tmp_33, $P5049
    repr_defined $I5023, fb_tmp_33
    unless $I5023 goto if201_else420 
    set $P5051, fb_tmp_33[0]
    set $P5053, $P5051
    goto if201_end421
  if201_else420:
    null $P5052
    set $P5053, $P5052
  if201_end421:
    unless_null $P5053, vivi_204425
    nqp_get_sc_object $P5054, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P5053, $P5054
  vivi_204425:
    $P5055 = $P5046."ACCEPTS"($P5053)
    unless $P5055 goto if200_else418 
    set fb_tmp_36, _lex_param_1
    repr_defined $I5026, fb_tmp_36
    unless $I5026 goto if206_else428 
    set $P5056, fb_tmp_36[0]
    set $P5058, $P5056
    goto if206_end429
  if206_else428:
    null $P5057
    set $P5058, $P5057
  if206_end429:
    unless_null $P5058, vivi_207430
    nqp_get_sc_object $P5059, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P5058, $P5059
  vivi_207430:
    set fb_tmp_35, $P5058
    repr_defined $I5025, fb_tmp_35
    unless $I5025 goto if205_else426 
    set $P5060, fb_tmp_35[0]
    set $P5062, $P5060
    goto if205_end427
  if205_else426:
    null $P5061
    set $P5062, $P5061
  if205_end427:
    unless_null $P5062, vivi_208431
    nqp_get_sc_object $P5063, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P5062, $P5063
  vivi_208431:
    $P5064 = $P5062."value"()
    set $P5073, $P5064
    goto if200_end419
  if200_else418:
    set fb_tmp_38, _lex_param_1
    repr_defined $I5028, fb_tmp_38
    unless $I5028 goto if210_else434 
    set $P5065, fb_tmp_38[0]
    set $P5067, $P5065
    goto if210_end435
  if210_else434:
    null $P5066
    set $P5067, $P5066
  if210_end435:
    unless_null $P5067, vivi_211436
    nqp_get_sc_object $P5068, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P5067, $P5068
  vivi_211436:
    set fb_tmp_37, $P5067
    repr_defined $I5027, fb_tmp_37
    unless $I5027 goto if209_else432 
    set $P5069, fb_tmp_37[0]
    set $P5071, $P5069
    goto if209_end433
  if209_else432:
    null $P5070
    set $P5071, $P5070
  if209_end433:
    unless_null $P5071, vivi_212437
    nqp_get_sc_object $P5072, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P5071, $P5072
  vivi_212437:
    set $P5073, $P5071
  if200_end419:
    set $S5009, $P5073
    iseq $I5022, $S5009, "ident"
    set $I5029, $I5022
  if199_end417:
    set $I5030, $I5029
  unless198_end415:
    set $I5031, $I5030
  if196_end411:
    unless $I5031 goto if195_else408 
    .const 'Sub' $P5074 = 'cuid_131_1381281785.71956' 
    capture_lex $P5074
    $P5075 = $P5074()
    set $P5176, $P5075
    goto if195_end409
  if195_else408:
    set $S5010, $P101
    iseq $I5032, $S5010, "zerowidth"
    unless $I5032 goto if213_else438 
.annotate 'line', 193
.annotate 'line', 194
    $P5076 = _lex_param_1."negate"()
    unless $P5076 goto if214_else440 
.annotate 'line', 195
    nqp_decontainerize $P5077, _lex_param_0
    $P5078 = $P5077."fate"(_lex_param_1, _lex_param_2, _lex_param_3)
    set $P5081, $P5078
    goto if214_end441
  if214_else440:
    .const 'Sub' $P5079 = 'cuid_132_1381281785.71956' 
    capture_lex $P5079
    $P5080 = $P5079()
    set $P5081, $P5080
  if214_end441:
    set $P5175, $P5081
    goto if213_end439
  if213_else438:
    find_dynamic_lex $P5082, "$*vars_as_generic"
    unless_null $P5082, fallback454
    nqp_get_sc_object $P5084, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 0
    get_who $P5083, $P5084
    set fb_tmp_39, $P5083
    repr_defined $I5033, fb_tmp_39
    unless $I5033 goto if221_else455 
    set $P5085, fb_tmp_39["$vars_as_generic"]
    set $P5087, $P5085
    goto if221_end456
  if221_else455:
    null $P5086
    set $P5087, $P5086
  if221_end456:
    unless_null $P5087, vivi_222457
    nqp_get_sc_object $P5088, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P5087, $P5088
  vivi_222457:
    unless_null $P5087, vivi_223458
    die "Contextual $*vars_as_generic not found"
    box $P5089, "Contextual $*vars_as_generic not found"
    set $P5087, $P5089
  vivi_223458:
    set $P5082, $P5087
  fallback454:
    set $P5090, $P5082
    unless $P5082 goto if220_end453 
    set $S5011, $P101
    iseq $I5034, $S5011, "method"
    box $P5091, $I5034
    set $P5090, $P5091
  if220_end453:
    set $P5102, $P5090
    unless $P5090 goto if219_end451 
.annotate 'line', 204
    nqp_get_sc_object $P5092, "8D7C40D4B41C0FB97C97F9FA59E4F60A345D73C3-1381281783.14924", 55
    set fb_tmp_41, _lex_param_1
    repr_defined $I5036, fb_tmp_41
    unless $I5036 goto if225_else461 
    set $P5093, fb_tmp_41[0]
    set $P5095, $P5093
    goto if225_end462
  if225_else461:
    null $P5094
    set $P5095, $P5094
  if225_end462:
    unless_null $P5095, vivi_226463
    nqp_get_sc_object $P5096, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P5095, $P5096
  vivi_226463:
    set fb_tmp_40, $P5095
    repr_defined $I5035, fb_tmp_40
    unless $I5035 goto if224_else459 
    set $P5097, fb_tmp_40[0]
    set $P5099, $P5097
    goto if224_end460
  if224_else459:
    null $P5098
    set $P5099, $P5098
  if224_end460:
    unless_null $P5099, vivi_227464
    nqp_get_sc_object $P5100, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P5099, $P5100
  vivi_227464:
    $P5101 = $P5092."ACCEPTS"($P5099)
    set $P5102, $P5101
  if219_end451:
    set $P5112, $P5102
    unless $P5102 goto if218_end449 
    set fb_tmp_43, _lex_param_1
    repr_defined $I5039, fb_tmp_43
    unless $I5039 goto if229_else467 
    set $P5103, fb_tmp_43[0]
    set $P5105, $P5103
    goto if229_end468
  if229_else467:
    null $P5104
    set $P5105, $P5104
  if229_end468:
    unless_null $P5105, vivi_230469
    nqp_get_sc_object $P5106, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P5105, $P5106
  vivi_230469:
    set fb_tmp_42, $P5105
    repr_defined $I5038, fb_tmp_42
    unless $I5038 goto if228_else465 
    set $P5107, fb_tmp_42[0]
    set $P5109, $P5107
    goto if228_end466
  if228_else465:
    null $P5108
    set $P5109, $P5108
  if228_end466:
    unless_null $P5109, vivi_231470
    nqp_get_sc_object $P5110, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P5109, $P5110
  vivi_231470:
    $P5111 = $P5109."value"()
    set $S5012, $P5111
    iseq $I5037, $S5012, "!INTERPOLATE"
    box $P5113, $I5037
    set $P5112, $P5113
  if218_end449:
    set $P5124, $P5112
    unless $P5112 goto if217_end447 
.annotate 'line', 205
    nqp_get_sc_object $P5114, "8D7C40D4B41C0FB97C97F9FA59E4F60A345D73C3-1381281783.14924", 74
    set fb_tmp_45, _lex_param_1
    repr_defined $I5041, fb_tmp_45
    unless $I5041 goto if233_else473 
    set $P5115, fb_tmp_45[0]
    set $P5117, $P5115
    goto if233_end474
  if233_else473:
    null $P5116
    set $P5117, $P5116
  if233_end474:
    unless_null $P5117, vivi_234475
    nqp_get_sc_object $P5118, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P5117, $P5118
  vivi_234475:
    set fb_tmp_44, $P5117
    repr_defined $I5040, fb_tmp_44
    unless $I5040 goto if232_else471 
    set $P5119, fb_tmp_44[1]
    set $P5121, $P5119
    goto if232_end472
  if232_else471:
    null $P5120
    set $P5121, $P5120
  if232_end472:
    unless_null $P5121, vivi_235476
    nqp_get_sc_object $P5122, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P5121, $P5122
  vivi_235476:
    $P5123 = $P5114."ACCEPTS"($P5121)
    set $P5124, $P5123
  if217_end447:
    set $P5134, $P5124
    unless $P5124 goto if216_end445 
    set fb_tmp_47, _lex_param_1
    repr_defined $I5044, fb_tmp_47
    unless $I5044 goto if237_else479 
    set $P5125, fb_tmp_47[0]
    set $P5127, $P5125
    goto if237_end480
  if237_else479:
    null $P5126
    set $P5127, $P5126
  if237_end480:
    unless_null $P5127, vivi_238481
    nqp_get_sc_object $P5128, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P5127, $P5128
  vivi_238481:
    set fb_tmp_46, $P5127
    repr_defined $I5043, fb_tmp_46
    unless $I5043 goto if236_else477 
    set $P5129, fb_tmp_46[1]
    set $P5131, $P5129
    goto if236_end478
  if236_else477:
    null $P5130
    set $P5131, $P5130
  if236_end478:
    unless_null $P5131, vivi_239482
    nqp_get_sc_object $P5132, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P5131, $P5132
  vivi_239482:
    $P5133 = $P5131."scope"()
    set $S5013, $P5133
    iseq $I5042, $S5013, "lexical"
    box $P5135, $I5042
    set $P5134, $P5135
  if216_end445:
    unless $P5134 goto if215_else442 
    nqp_decontainerize $P5136, _lex_param_0
    nqp_get_sc_object $P5137, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 3
    repr_bind_attr_int $P5136, $P5137, "$!generic", 2, 1
.annotate 'line', 207
    nqp_decontainerize $P5138, _lex_param_0
    find_lex $P5139, "$EDGE_GENERIC_VAR"
    set fb_tmp_49, _lex_param_1
    repr_defined $I5046, fb_tmp_49
    unless $I5046 goto if241_else485 
    set $P5140, fb_tmp_49[0]
    set $P5142, $P5140
    goto if241_end486
  if241_else485:
    null $P5141
    set $P5142, $P5141
  if241_end486:
    unless_null $P5142, vivi_242487
    nqp_get_sc_object $P5143, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P5142, $P5143
  vivi_242487:
    set fb_tmp_48, $P5142
    repr_defined $I5045, fb_tmp_48
    unless $I5045 goto if240_else483 
    set $P5144, fb_tmp_48[1]
    set $P5146, $P5144
    goto if240_end484
  if240_else483:
    null $P5145
    set $P5146, $P5145
  if240_end484:
    unless_null $P5146, vivi_243488
    nqp_get_sc_object $P5147, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P5146, $P5147
  vivi_243488:
    $P5148 = $P5146."name"()
    $P5149 = $P5138."addedge"(_lex_param_2, _lex_param_3, $P5139, $P5148)
    set $P5174, $P5149
    goto if215_end443
  if215_else442:
.annotate 'line', 209
    set $S5014, $P101
    iseq $I5047, $S5014, "capture"
    box $P5155, $I5047
    set $P5154, $P5155
    unless $I5047 goto if245_end492 
    set fb_tmp_50, _lex_param_1
    repr_defined $I5048, fb_tmp_50
    unless $I5048 goto if246_else493 
    set $P5150, fb_tmp_50[1]
    set $P5152, $P5150
    goto if246_end494
  if246_else493:
    null $P5151
    set $P5152, $P5151
  if246_end494:
    unless_null $P5152, vivi_247495
    nqp_get_sc_object $P5153, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P5152, $P5153
  vivi_247495:
    set $P5154, $P5152
  if245_end492:
    unless $P5154 goto if244_else489 
.annotate 'line', 211
    nqp_decontainerize $P5156, _lex_param_0
    set fb_tmp_51, _lex_param_1
    repr_defined $I5049, fb_tmp_51
    unless $I5049 goto if248_else496 
    set $P5157, fb_tmp_51[1]
    set $P5159, $P5157
    goto if248_end497
  if248_else496:
    null $P5158
    set $P5159, $P5158
  if248_end497:
    unless_null $P5159, vivi_249498
    nqp_get_sc_object $P5160, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P5159, $P5160
  vivi_249498:
    $P5161 = $P5156."regex_nfa"($P5159, _lex_param_2, _lex_param_3)
    set $P5173, $P5161
    goto if244_end490
  if244_else489:
.annotate 'line', 212
    nqp_decontainerize $P5162, _lex_param_0
    find_lex $P5163, "$EDGE_SUBRULE"
    set fb_tmp_53, _lex_param_1
    repr_defined $I5051, fb_tmp_53
    unless $I5051 goto if251_else501 
    set $P5164, fb_tmp_53[0]
    set $P5166, $P5164
    goto if251_end502
  if251_else501:
    null $P5165
    set $P5166, $P5165
  if251_end502:
    unless_null $P5166, vivi_252503
    nqp_get_sc_object $P5167, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P5166, $P5167
  vivi_252503:
    set fb_tmp_52, $P5166
    repr_defined $I5050, fb_tmp_52
    unless $I5050 goto if250_else499 
    set $P5168, fb_tmp_52[0]
    set $P5170, $P5168
    goto if250_end500
  if250_else499:
    null $P5169
    set $P5170, $P5169
  if250_end500:
    unless_null $P5170, vivi_253504
    nqp_get_sc_object $P5171, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P5170, $P5171
  vivi_253504:
    $P5172 = $P5162."addedge"(_lex_param_2, _lex_param_3, $P5163, $P5170)
    set $P5173, $P5172
  if244_end490:
    set $P5174, $P5173
  if215_end443:
    set $P5175, $P5174
  if213_end439:
    set $P5176, $P5175
  if195_end409:
    set $P5177, $P5176
  if178_end381:
    set $P5178, $P5177
  if170_end368:
    .return ($P5178) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_130_1381281785.71956") :anon :lex :outer("cuid_16_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 162
    .lex "$end", $I101 
    .local pmc fb_tmp_24 
    .local pmc fb_tmp_25 
    .local pmc fb_tmp_26 
    set $I101, 0
.annotate 'line', 163
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    $P5003 = $P5001."addstate"()
    set $I5001, $P5003
    set $I101, $I5001
.annotate 'line', 164
    find_lex $P5005, "self"
    nqp_decontainerize $P5004, $P5005
    find_lex $P5006, "$node"
    set fb_tmp_26, $P5006
    repr_defined $I5004, fb_tmp_26
    unless $I5004 goto if174_else375 
    set $P5007, fb_tmp_26[0]
    set $P5009, $P5007
    goto if174_end376
  if174_else375:
    null $P5008
    set $P5009, $P5008
  if174_end376:
    unless_null $P5009, vivi_175377
    nqp_get_sc_object $P5010, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P5009, $P5010
  vivi_175377:
    set fb_tmp_25, $P5009
    repr_defined $I5003, fb_tmp_25
    unless $I5003 goto if173_else373 
    set $P5011, fb_tmp_25[1]
    set $P5013, $P5011
    goto if173_end374
  if173_else373:
    null $P5012
    set $P5013, $P5012
  if173_end374:
    unless_null $P5013, vivi_176378
    nqp_get_sc_object $P5014, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P5013, $P5014
  vivi_176378:
    set fb_tmp_24, $P5013
    repr_defined $I5002, fb_tmp_24
    unless $I5002 goto if172_else371 
    set $P5015, fb_tmp_24["orig_qast"]
    set $P5017, $P5015
    goto if172_end372
  if172_else371:
    null $P5016
    set $P5017, $P5016
  if172_end372:
    unless_null $P5017, vivi_177379
    nqp_get_sc_object $P5018, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P5017, $P5018
  vivi_177379:
    find_lex $P5019, "$from"
    $P5004."regex_nfa"($P5017, $P5019, $I101)
.annotate 'line', 165
    find_lex $P5021, "self"
    nqp_decontainerize $P5020, $P5021
    find_lex $P5022, "$node"
    find_lex $P5023, "$to"
    $P5024 = $P5020."fate"($P5022, $I101, $P5023)
    .return ($P5024) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_131_1381281785.71956") :anon :lex :outer("cuid_16_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 178
    .lex "$beginstate", $I101 
    .lex "$midstate", $I102 
    .lex "$second", $I103 
    set $I101, 0
    set $I102, 0
    set $I103, 0
.annotate 'line', 179
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    $P5003 = $P5001."addstate"()
    set $I5001, $P5003
    set $I101, $I5001
.annotate 'line', 180
    find_lex $P5005, "self"
    nqp_decontainerize $P5004, $P5005
    find_lex $P5006, "$from"
    find_lex $P5007, "$EDGE_EPSILON"
    $P5004."addedge"($P5006, $I101, $P5007, 0)
.annotate 'line', 182
    find_lex $P5009, "self"
    nqp_decontainerize $P5008, $P5009
    $P5010 = $P5008."addstate"()
    set $I5002, $P5010
    set $I102, $I5002
.annotate 'line', 183
    find_lex $P5012, "self"
    nqp_decontainerize $P5011, $P5012
    find_lex $P5013, "$EDGE_CHARCLASS"
    $P5011."addedge"($I101, $I102, $P5013, 4)
.annotate 'line', 184
    find_lex $P5015, "self"
    nqp_decontainerize $P5014, $P5015
    find_lex $P5016, "$EDGE_CODEPOINT"
    $P5014."addedge"($I101, $I102, $P5016, 95)
.annotate 'line', 186
    find_lex $P5018, "self"
    nqp_decontainerize $P5017, $P5018
    $P5019 = $P5017."addstate"()
    set $I5003, $P5019
    set $I103, $I5003
.annotate 'line', 188
    find_lex $P5021, "self"
    nqp_decontainerize $P5020, $P5021
    find_lex $P5022, "$EDGE_CHARCLASS"
    $P5020."addedge"($I102, $I103, $P5022, 8192)
.annotate 'line', 189
    find_lex $P5024, "self"
    nqp_decontainerize $P5023, $P5024
    find_lex $P5025, "$EDGE_EPSILON"
    $P5023."addedge"($I103, $I102, $P5025, 0)
.annotate 'line', 190
    find_lex $P5027, "self"
    nqp_decontainerize $P5026, $P5027
    find_lex $P5028, "$to"
    find_lex $P5029, "$EDGE_EPSILON"
    $P5030 = $P5026."addedge"($I102, $P5028, $P5029, 0)
    store_lex "$to", $P5030
    find_lex $P5031, "$to"
    .return ($P5031) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_132_1381281785.71956") :anon :lex :outer("cuid_16_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 197
    .lex "$end", $I101 
    set $I101, 0
.annotate 'line', 198
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    $P5003 = $P5001."addstate"()
    set $I5001, $P5003
    set $I101, $I5001
.annotate 'line', 199
    find_lex $P5005, "self"
    nqp_decontainerize $P5004, $P5005
    find_lex $P5006, "$from"
    find_lex $P5007, "$EDGE_SUBRULE"
    find_lex $P5008, "$node"
    $P5009 = $P5008."name"()
    $P5004."addedge"($P5006, $I101, $P5007, $P5009)
.annotate 'line', 200
    find_lex $P5011, "self"
    nqp_decontainerize $P5010, $P5011
    find_lex $P5012, "$node"
    find_lex $P5013, "$to"
    $P5014 = $P5010."fate"($P5012, $I101, $P5013)
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "quant" :subid("cuid_17_1381281785.71956") :anon :lex :outer("cuid_126_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 216
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .const 'Sub' $P5026 = 'cuid_134_1381281785.71956' 
    capture_lex $P5026 
    .const 'Sub' $P5026 = 'cuid_136_1381281785.71956' 
    capture_lex $P5026 
    .const 'Sub' $P5026 = 'cuid_137_1381281785.71956' 
    capture_lex $P5026 
    .const 'Sub' $P5026 = 'cuid_138_1381281785.71956' 
    capture_lex $P5026 
    .const 'Sub' $P5026 = 'cuid_139_1381281785.71956' 
    capture_lex $P5026 
    .lex "$min", $I101 
    .lex "$max", $I102 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$from", _lex_param_2 
    .lex "$to", _lex_param_3 
    .local pmc fb_tmp_59 
    set $I101, 0
    set $I102, 0
    root_new $P101, ['parrot';'Continuation']
    set_label $P101, lexotic_505
    .lex "RETURN", $P101
    set $N5002, 0
.annotate 'line', 217
    $P5002 = _lex_param_1."min"()
    set $P5001, $P5002
    defined $I5001, $P5001
    if $I5001, defor507
    box $P5003, 0
    set $P5001, $P5003
  defor507:
    set $N5003, $P5001
    add $N5001, $N5002, $N5003
    set $I5002, $N5001
    set $I101, $I5002
    set $N5005, 0
.annotate 'line', 218
    $P5005 = _lex_param_1."max"()
    set $P5004, $P5005
    defined $I5003, $P5004
    if $I5003, defor508
    box $P5006, -1
    set $P5004, $P5006
  defor508:
    set $N5006, $P5004
    add $N5004, $N5005, $N5006
    set $I5004, $N5004
    set $I102, $I5004
    set $N5007, $I102
    set $N5008, 1
    isgt $I5005, $N5007, $N5008
    set $I5007, $I5005
    if $I5005 goto unless255_end512 
    set $N5009, $I101
    set $N5010, 1
    isgt $I5006, $N5009, $N5010
    set $I5007, $I5006
  unless255_end512:
    unless $I5007 goto if254_end510 
    .const 'Sub' $P5007 = 'cuid_134_1381281785.71956' 
    capture_lex $P5007
    $P5008 = $P5007()
  if254_end510:
    set $N5011, $I102
    set $N5012, -1
    iseq $I5008, $N5011, $N5012
    unless $I5008 goto if277_else553 
.annotate 'line', 251
    set $N5013, $I101
    set $N5014, 0
    iseq $I5009, $N5013, $N5014
    unless $I5009 goto if278_else555 
.annotate 'line', 252
    set fb_tmp_59, _lex_param_1
    repr_defined $I5011, fb_tmp_59
    unless $I5011 goto if280_else559 
    set $P5009, fb_tmp_59[1]
    set $P5011, $P5009
    goto if280_end560
  if280_else559:
    null $P5010
    set $P5011, $P5010
  if280_end560:
    unless_null $P5011, vivi_281561
    nqp_get_sc_object $P5012, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P5011, $P5012
  vivi_281561:
    defined $I5010, $P5011
    unless $I5010 goto if279_else557 
    .const 'Sub' $P5013 = 'cuid_136_1381281785.71956' 
    capture_lex $P5013
    $P5014 = $P5013()
    set $P5017, $P5014
    goto if279_end558
  if279_else557:
    .const 'Sub' $P5015 = 'cuid_137_1381281785.71956' 
    capture_lex $P5015
    $P5016 = $P5015()
    set $P5017, $P5016
  if279_end558:
    goto if278_end556
  if278_else555:
    .const 'Sub' $P5018 = 'cuid_138_1381281785.71956' 
    capture_lex $P5018
    $P5019 = $P5018()
  if278_end556:
    set $P5025, _lex_param_3
    goto if277_end554
  if277_else553:
    set $N5015, $I101
    set $N5016, 0
    iseq $I5012, $N5015, $N5016
    set $I5014, $I5012
    unless $I5012 goto if302_end597 
    set $N5017, $I102
    set $N5018, 1
    iseq $I5013, $N5017, $N5018
    set $I5014, $I5013
  if302_end597:
    unless $I5014 goto if301_else594 
    .const 'Sub' $P5020 = 'cuid_139_1381281785.71956' 
    capture_lex $P5020
    $P5021 = $P5020()
    set $P5024, $P5021
    goto if301_end595
  if301_else594:
.annotate 'line', 289
.annotate 'line', 290
    nqp_decontainerize $P5022, _lex_param_0
    $P5023 = $P5022."fate"(_lex_param_1, _lex_param_2, _lex_param_3)
    set $P5024, $P5023
  if301_end595:
    set $P5025, $P5024
  if277_end554:
    goto lexotic_506
  lexotic_505:
    .get_results ($P5025)
  lexotic_506:
    .return ($P5025) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_134_1381281785.71956") :anon :lex :outer("cuid_17_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 220
    .const 'Sub' $P5037 = 'cuid_133_1381281785.71956' 
    capture_lex $P5037 
    .const 'Sub' $P5037 = 'cuid_135_1381281785.71956' 
    capture_lex $P5037 
    .lex "$count", $I101 
    .lex "$st", $I102 
    .lex "$has_sep", $I103 
    .local pmc fb_tmp_54 
    .local pmc fb_tmp_55 
    .local pmc fb_tmp_56 
    set $I101, 0
    set $I102, 0
    set $I103, 0
    set $I101, 0
    find_lex $P5001, "$node"
    set fb_tmp_54, $P5001
    repr_defined $I5002, fb_tmp_54
    unless $I5002 goto if256_else513 
    set $P5002, fb_tmp_54[1]
    set $P5004, $P5002
    goto if256_end514
  if256_else513:
    null $P5003
    set $P5004, $P5003
  if256_end514:
    unless_null $P5004, vivi_257515
    nqp_get_sc_object $P5005, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P5004, $P5005
  vivi_257515:
    defined $I5001, $P5004
    set $I103, $I5001
  while258_test516:
    set $N5001, $I101
    find_lex $I5004, "$max"
    set $N5002, $I5004
    islt $I5003, $N5001, $N5002
    set $I5007, $I5003
    if $I5003 goto unless259_end522 
    set $N5003, $I101
    find_lex $I5006, "$min"
    set $N5004, $I5006
    islt $I5005, $N5003, $N5004
    set $I5007, $I5005
  unless259_end522:
    set $I5015, $I5007
    unless $I5007 goto while258_done520 
  while258_redo518:
.annotate 'line', 224
    set $N5005, $I101
    find_lex $I5009, "$min"
    set $N5006, $I5009
    isge $I5008, $N5005, $N5006
    unless $I5008 goto if260_end524 
    .const 'Sub' $P5006 = 'cuid_133_1381281785.71956' 
    capture_lex $P5006
    $P5007 = $P5006()
  if260_end524:
    set $I5011, $I103
    unless $I103 goto if263_end530 
    set $N5007, $I101
    set $N5008, 0
    isgt $I5010, $N5007, $N5008
    set $I5011, $I5010
  if263_end530:
    unless $I5011 goto if262_end528 
.annotate 'line', 229
.annotate 'line', 230
    find_lex $P5009, "self"
    nqp_decontainerize $P5008, $P5009
    find_lex $P5010, "$node"
    set fb_tmp_55, $P5010
    repr_defined $I5012, fb_tmp_55
    unless $I5012 goto if264_else531 
    set $P5011, fb_tmp_55[1]
    set $P5013, $P5011
    goto if264_end532
  if264_else531:
    null $P5012
    set $P5013, $P5012
  if264_end532:
    unless_null $P5013, vivi_265533
    nqp_get_sc_object $P5014, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P5013, $P5014
  vivi_265533:
    find_lex $P5015, "$from"
    $P5016 = $P5008."regex_nfa"($P5013, $P5015, -1)
    store_lex "$from", $P5016
  if262_end528:
.annotate 'line', 232
    find_lex $P5018, "self"
    nqp_decontainerize $P5017, $P5018
    find_lex $P5019, "$node"
    set fb_tmp_56, $P5019
    repr_defined $I5013, fb_tmp_56
    unless $I5013 goto if266_else534 
    set $P5020, fb_tmp_56[0]
    set $P5022, $P5020
    goto if266_end535
  if266_else534:
    null $P5021
    set $P5022, $P5021
  if266_end535:
    unless_null $P5022, vivi_267536
    nqp_get_sc_object $P5023, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P5022, $P5023
  vivi_267536:
    find_lex $P5024, "$from"
    $P5025 = $P5017."regex_nfa"($P5022, $P5024, -1)
    store_lex "$from", $P5025
    add $I5014, $I101, 1
    set $I101, $I5014
    set $I5015, $I101
    goto while258_test516 
  while258_done520:
.annotate 'line', 235
    find_lex $P5027, "self"
    nqp_decontainerize $P5026, $P5027
    find_lex $P5028, "$from"
    find_lex $P5029, "$to"
    find_lex $P5030, "$EDGE_EPSILON"
    $P5026."addedge"($P5028, $P5029, $P5030, 0)
    find_lex $I5017, "$max"
    set $N5009, $I5017
    set $N5010, -1
    iseq $I5016, $N5009, $N5010
    unless $I5016 goto if268_end538 
    .const 'Sub' $P5031 = 'cuid_135_1381281785.71956' 
    capture_lex $P5031
    $P5032 = $P5031()
  if268_end538:
    find_lex $P5033, "$to"
    set $N5011, $P5033
    set $N5012, 0
    islt $I5018, $N5011, $N5012
    set $I5020, $I5018
    unless $I5018 goto if276_end552 
    set $N5013, $I102
    set $N5014, 0
    isgt $I5019, $N5013, $N5014
    set $I5020, $I5019
  if276_end552:
    unless $I5020 goto if275_end550 
    box $P5034, $I102
    store_lex "$to", $P5034
  if275_end550:
    find_lex $P5035, "$to"
    $P5036 = "RETURN"($P5035)
    .return ($P5036) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_133_1381281785.71956") :anon :lex :outer("cuid_134_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 225
    .lex "$f", $I101 
    set $I101, 0
.annotate 'line', 226
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    find_lex $P5003, "$from"
    find_lex $P5004, "$to"
    find_lex $P5005, "$EDGE_EPSILON"
    $P5006 = $P5001."addedge"($P5003, $P5004, $P5005, 0)
    set $I5001, $P5006
    set $I101, $I5001
    find_lex $I5002, "$st"
    set $I5003, $I5002
    if $I5002 goto unless261_end526 
    set $I5003, $I101
  unless261_end526:
    store_lex "$st", $I5003
    .return ($I5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_135_1381281785.71956") :anon :lex :outer("cuid_134_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 236
    .lex "$start", $I101 
    .lex "$looper", $P101 
    .local pmc fb_tmp_57 
    .local pmc fb_tmp_58 
    set $I101, 0
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P101, $P5001
.annotate 'line', 237
    find_lex $P5003, "self"
    nqp_decontainerize $P5002, $P5003
    $P5004 = $P5002."addstate"()
    set $I5001, $P5004
    set $I101, $I5001
.annotate 'line', 238
    find_lex $P5006, "self"
    nqp_decontainerize $P5005, $P5006
    find_lex $P5007, "$from"
    find_lex $P5008, "$EDGE_EPSILON"
    $P5005."addedge"($P5007, $I101, $P5008, 0)
    box $P5009, $I101
    store_lex "$from", $P5009
.annotate 'line', 240
    find_lex $P5011, "self"
    nqp_decontainerize $P5010, $P5011
    $P5012 = $P5010."addstate"()
    set $P101, $P5012
.annotate 'line', 241
    find_lex $P5014, "self"
    nqp_decontainerize $P5013, $P5014
    find_lex $P5015, "$to"
    find_lex $P5016, "$EDGE_EPSILON"
    $P5013."addedge"($P101, $P5015, $P5016, 0)
.annotate 'line', 242
    find_lex $P5018, "self"
    nqp_decontainerize $P5017, $P5018
    find_lex $P5019, "$from"
    find_lex $P5020, "$EDGE_EPSILON"
    $P5017."addedge"($P101, $P5019, $P5020, 0)
    find_lex $I5002, "$has_sep"
    set $I5005, $I5002
    unless $I5002 goto if270_end542 
    find_lex $I5004, "$count"
    set $N5001, $I5004
    set $N5002, 0
    isgt $I5003, $N5001, $N5002
    set $I5005, $I5003
  if270_end542:
    unless $I5005 goto if269_end540 
.annotate 'line', 243
.annotate 'line', 244
    find_lex $P5022, "self"
    nqp_decontainerize $P5021, $P5022
    find_lex $P5023, "$node"
    set fb_tmp_57, $P5023
    repr_defined $I5006, fb_tmp_57
    unless $I5006 goto if271_else543 
    set $P5024, fb_tmp_57[1]
    set $P5026, $P5024
    goto if271_end544
  if271_else543:
    null $P5025
    set $P5026, $P5025
  if271_end544:
    unless_null $P5026, vivi_272545
    nqp_get_sc_object $P5027, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P5026, $P5027
  vivi_272545:
    find_lex $P5028, "$from"
    $P5029 = $P5021."regex_nfa"($P5026, $P5028, -1)
    store_lex "$from", $P5029
  if269_end540:
.annotate 'line', 246
    find_lex $P5031, "self"
    nqp_decontainerize $P5030, $P5031
    find_lex $P5032, "$node"
    set fb_tmp_58, $P5032
    repr_defined $I5007, fb_tmp_58
    unless $I5007 goto if273_else546 
    set $P5033, fb_tmp_58[0]
    set $P5035, $P5033
    goto if273_end547
  if273_else546:
    null $P5034
    set $P5035, $P5034
  if273_end547:
    unless_null $P5035, vivi_274548
    nqp_get_sc_object $P5036, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P5035, $P5036
  vivi_274548:
    find_lex $P5037, "$from"
    $P5038 = $P5030."regex_nfa"($P5035, $P5037, $P101)
    .return ($P5038) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_136_1381281785.71956") :anon :lex :outer("cuid_17_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 253
    .lex "$start", $I101 
    .lex "$looper", $I102 
    .lex "$st", $I103 
    .local pmc fb_tmp_60 
    .local pmc fb_tmp_61 
    set $I101, 0
    set $I102, 0
    set $I103, 0
.annotate 'line', 254
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    $P5003 = $P5001."addstate"()
    set $I5001, $P5003
    set $I101, $I5001
.annotate 'line', 255
    find_lex $P5005, "self"
    nqp_decontainerize $P5004, $P5005
    find_lex $P5006, "$from"
    find_lex $P5007, "$EDGE_EPSILON"
    $P5004."addedge"($P5006, $I101, $P5007, 0)
.annotate 'line', 256
    find_lex $P5009, "self"
    nqp_decontainerize $P5008, $P5009
    $P5010 = $P5008."addstate"()
    set $I5002, $P5010
    set $I102, $I5002
.annotate 'line', 257
    find_lex $P5012, "self"
    nqp_decontainerize $P5011, $P5012
    find_lex $P5013, "$node"
    set fb_tmp_60, $P5013
    repr_defined $I5003, fb_tmp_60
    unless $I5003 goto if282_else562 
    set $P5014, fb_tmp_60[0]
    set $P5016, $P5014
    goto if282_end563
  if282_else562:
    null $P5015
    set $P5016, $P5015
  if282_end563:
    unless_null $P5016, vivi_283564
    nqp_get_sc_object $P5017, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P5016, $P5017
  vivi_283564:
    $P5018 = $P5011."regex_nfa"($P5016, $I101, $I102)
    set $I5004, $P5018
    set $I103, $I5004
.annotate 'line', 258
    find_lex $P5020, "self"
    nqp_decontainerize $P5019, $P5020
    find_lex $P5021, "$node"
    set fb_tmp_61, $P5021
    repr_defined $I5005, fb_tmp_61
    unless $I5005 goto if284_else565 
    set $P5022, fb_tmp_61[1]
    set $P5024, $P5022
    goto if284_end566
  if284_else565:
    null $P5023
    set $P5024, $P5023
  if284_end566:
    unless_null $P5024, vivi_285567
    nqp_get_sc_object $P5025, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P5024, $P5025
  vivi_285567:
    $P5019."regex_nfa"($P5024, $I102, $I101)
.annotate 'line', 259
    find_lex $P5027, "self"
    nqp_decontainerize $P5026, $P5027
    find_lex $P5028, "$to"
    find_lex $P5029, "$EDGE_EPSILON"
    $P5026."addedge"($I102, $P5028, $P5029, 0)
.annotate 'line', 260
    find_lex $P5031, "self"
    nqp_decontainerize $P5030, $P5031
    find_lex $P5032, "$from"
    find_lex $P5033, "$to"
    find_lex $P5034, "$EDGE_EPSILON"
    $P5035 = $P5030."addedge"($P5032, $P5033, $P5034, 0)
    set $I5006, $P5035
    set $I103, $I5006
    find_lex $P5036, "$to"
    set $N5001, $P5036
    set $N5002, 0
    islt $I5007, $N5001, $N5002
    set $I5009, $I5007
    unless $I5007 goto if287_end571 
    set $N5003, $I103
    set $N5004, 0
    isgt $I5008, $N5003, $N5004
    set $I5009, $I5008
  if287_end571:
    box $P5039, $I5009
    set $P5038, $P5039
    unless $I5009 goto if286_end569 
    box $P5037, $I103
    store_lex "$to", $P5037
    set $P5038, $P5037
  if286_end569:
    .return ($P5038) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_137_1381281785.71956") :anon :lex :outer("cuid_17_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 263
    .lex "$st", $I101 
    .local pmc fb_tmp_62 
    set $I101, 0
.annotate 'line', 264
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    find_lex $P5003, "$node"
    set fb_tmp_62, $P5003
    repr_defined $I5001, fb_tmp_62
    unless $I5001 goto if288_else572 
    set $P5004, fb_tmp_62[0]
    set $P5006, $P5004
    goto if288_end573
  if288_else572:
    null $P5005
    set $P5006, $P5005
  if288_end573:
    unless_null $P5006, vivi_289574
    nqp_get_sc_object $P5007, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P5006, $P5007
  vivi_289574:
    find_lex $P5008, "$from"
    find_lex $P5009, "$from"
    $P5001."regex_nfa"($P5006, $P5008, $P5009)
.annotate 'line', 265
    find_lex $P5011, "self"
    nqp_decontainerize $P5010, $P5011
    find_lex $P5012, "$from"
    find_lex $P5013, "$to"
    find_lex $P5014, "$EDGE_EPSILON"
    $P5015 = $P5010."addedge"($P5012, $P5013, $P5014, 0)
    set $I5002, $P5015
    set $I101, $I5002
    find_lex $P5016, "$to"
    set $N5001, $P5016
    set $N5002, 0
    islt $I5003, $N5001, $N5002
    set $I5005, $I5003
    unless $I5003 goto if291_end578 
    set $N5003, $I101
    set $N5004, 0
    isgt $I5004, $N5003, $N5004
    set $I5005, $I5004
  if291_end578:
    box $P5019, $I5005
    set $P5018, $P5019
    unless $I5005 goto if290_end576 
    box $P5017, $I101
    store_lex "$to", $P5017
    set $P5018, $P5017
  if290_end576:
    .return ($P5018) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_138_1381281785.71956") :anon :lex :outer("cuid_17_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 268
    .lex "$start", $I101 
    .lex "$looper", $I102 
    .lex "$st", $I103 
    .local pmc fb_tmp_63 
    .local pmc fb_tmp_64 
    .local pmc fb_tmp_65 
    set $I101, 0
    set $I102, 0
    set $I103, 0
.annotate 'line', 269
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    $P5003 = $P5001."addstate"()
    set $I5001, $P5003
    set $I101, $I5001
.annotate 'line', 270
    find_lex $P5005, "self"
    nqp_decontainerize $P5004, $P5005
    find_lex $P5006, "$from"
    find_lex $P5007, "$EDGE_EPSILON"
    $P5004."addedge"($P5006, $I101, $P5007, 0)
.annotate 'line', 271
    find_lex $P5009, "self"
    nqp_decontainerize $P5008, $P5009
    $P5010 = $P5008."addstate"()
    set $I5002, $P5010
    set $I102, $I5002
.annotate 'line', 272
    find_lex $P5012, "self"
    nqp_decontainerize $P5011, $P5012
    find_lex $P5013, "$node"
    set fb_tmp_63, $P5013
    repr_defined $I5003, fb_tmp_63
    unless $I5003 goto if292_else579 
    set $P5014, fb_tmp_63[0]
    set $P5016, $P5014
    goto if292_end580
  if292_else579:
    null $P5015
    set $P5016, $P5015
  if292_end580:
    unless_null $P5016, vivi_293581
    nqp_get_sc_object $P5017, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P5016, $P5017
  vivi_293581:
    $P5018 = $P5011."regex_nfa"($P5016, $I101, $I102)
    set $I5004, $P5018
    set $I103, $I5004
    find_lex $P5019, "$node"
    set fb_tmp_64, $P5019
    repr_defined $I5006, fb_tmp_64
    unless $I5006 goto if295_else584 
    set $P5020, fb_tmp_64[1]
    set $P5022, $P5020
    goto if295_end585
  if295_else584:
    null $P5021
    set $P5022, $P5021
  if295_end585:
    unless_null $P5022, vivi_296586
    nqp_get_sc_object $P5023, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P5022, $P5023
  vivi_296586:
    defined $I5005, $P5022
    unless $I5005 goto if294_else582 
.annotate 'line', 273
.annotate 'line', 274
    find_lex $P5025, "self"
    nqp_decontainerize $P5024, $P5025
    find_lex $P5026, "$node"
    set fb_tmp_65, $P5026
    repr_defined $I5007, fb_tmp_65
    unless $I5007 goto if297_else587 
    set $P5027, fb_tmp_65[1]
    set $P5029, $P5027
    goto if297_end588
  if297_else587:
    null $P5028
    set $P5029, $P5028
  if297_end588:
    unless_null $P5029, vivi_298589
    nqp_get_sc_object $P5030, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P5029, $P5030
  vivi_298589:
    $P5031 = $P5024."regex_nfa"($P5029, $I102, $I101)
    goto if294_end583
  if294_else582:
.annotate 'line', 276
.annotate 'line', 277
    find_lex $P5033, "self"
    nqp_decontainerize $P5032, $P5033
    find_lex $P5034, "$EDGE_EPSILON"
    $P5035 = $P5032."addedge"($I102, $I101, $P5034, 0)
  if294_end583:
.annotate 'line', 279
    find_lex $P5037, "self"
    nqp_decontainerize $P5036, $P5037
    find_lex $P5038, "$to"
    find_lex $P5039, "$EDGE_EPSILON"
    $P5036."addedge"($I102, $P5038, $P5039, 0)
    find_lex $P5040, "$to"
    set $N5001, $P5040
    set $N5002, 0
    islt $I5008, $N5001, $N5002
    set $I5010, $I5008
    unless $I5008 goto if300_end593 
    set $N5003, $I103
    set $N5004, 0
    isgt $I5009, $N5003, $N5004
    set $I5010, $I5009
  if300_end593:
    box $P5043, $I5010
    set $P5042, $P5043
    unless $I5010 goto if299_end591 
    box $P5041, $I103
    store_lex "$to", $P5041
    set $P5042, $P5041
  if299_end591:
    .return ($P5042) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_139_1381281785.71956") :anon :lex :outer("cuid_17_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 283
    .lex "$st", $I101 
    .local pmc fb_tmp_66 
    set $I101, 0
.annotate 'line', 284
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    find_lex $P5003, "$node"
    set fb_tmp_66, $P5003
    repr_defined $I5001, fb_tmp_66
    unless $I5001 goto if303_else598 
    set $P5004, fb_tmp_66[0]
    set $P5006, $P5004
    goto if303_end599
  if303_else598:
    null $P5005
    set $P5006, $P5005
  if303_end599:
    unless_null $P5006, vivi_304600
    nqp_get_sc_object $P5007, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P5006, $P5007
  vivi_304600:
    find_lex $P5008, "$from"
    find_lex $P5009, "$to"
    $P5010 = $P5001."regex_nfa"($P5006, $P5008, $P5009)
    set $I5002, $P5010
    set $I101, $I5002
    find_lex $P5011, "$to"
    set $N5001, $P5011
    set $N5002, 0
    islt $I5003, $N5001, $N5002
    set $I5005, $I5003
    unless $I5003 goto if306_end604 
    set $N5003, $I101
    set $N5004, 0
    isgt $I5004, $N5003, $N5004
    set $I5005, $I5004
  if306_end604:
    unless $I5005 goto if305_end602 
    box $P5012, $I101
    store_lex "$to", $P5012
  if305_end602:
.annotate 'line', 286
    find_lex $P5014, "self"
    nqp_decontainerize $P5013, $P5014
    find_lex $P5015, "$from"
    find_lex $P5016, "$to"
    find_lex $P5017, "$EDGE_EPSILON"
    $P5018 = $P5013."addedge"($P5015, $P5016, $P5017, 0)
    set $I5006, $P5018
    set $I101, $I5006
    find_lex $P5019, "$to"
    set $N5005, $P5019
    set $N5006, 0
    islt $I5007, $N5005, $N5006
    set $I5009, $I5007
    unless $I5007 goto if308_end608 
    set $N5007, $I101
    set $N5008, 0
    isgt $I5008, $N5007, $N5008
    set $I5009, $I5008
  if308_end608:
    unless $I5009 goto if307_end606 
    box $P5020, $I101
    store_lex "$to", $P5020
  if307_end606:
    find_lex $P5021, "$to"
    .return ($P5021) 
.end
.HLL "nqp"
.namespace []
.sub "qastnode" :subid("cuid_18_1381281785.71956") :anon :lex :outer("cuid_126_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 294
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$from", _lex_param_2 
    .lex "$to", _lex_param_3 
.annotate 'line', 295
    $P5001 = _lex_param_1."subtype"()
    set $S5001, $P5001
    iseq $I5001, $S5001, "zerowidth"
    set $I5003, $I5001
    if $I5001 goto unless310_end612 
    $P5002 = _lex_param_1."subtype"()
    set $S5002, $P5002
    iseq $I5002, $S5002, "declarative"
    set $I5003, $I5002
  unless310_end612:
    unless $I5003 goto if309_else609 
.annotate 'line', 296
    nqp_decontainerize $P5003, _lex_param_0
    find_lex $P5004, "$EDGE_EPSILON"
    $P5005 = $P5003."addedge"(_lex_param_2, _lex_param_3, $P5004, 0)
    set $P5008, $P5005
    goto if309_end610
  if309_else609:
.annotate 'line', 297
    nqp_decontainerize $P5006, _lex_param_0
    $P5007 = $P5006."fate"(_lex_param_1, _lex_param_2, _lex_param_3)
    set $P5008, $P5007
  if309_end610:
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "subcapture" :subid("cuid_19_1381281785.71956") :anon :lex :outer("cuid_126_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 300
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$from", _lex_param_2 
    .lex "$to", _lex_param_3 
    .local pmc fb_tmp_67 
.annotate 'line', 301
    nqp_decontainerize $P5001, _lex_param_0
    set fb_tmp_67, _lex_param_1
    repr_defined $I5001, fb_tmp_67
    unless $I5001 goto if311_else613 
    set $P5002, fb_tmp_67[0]
    set $P5004, $P5002
    goto if311_end614
  if311_else613:
    null $P5003
    set $P5004, $P5003
  if311_end614:
    unless_null $P5004, vivi_312615
    nqp_get_sc_object $P5005, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P5004, $P5005
  vivi_312615:
    $P5006 = $P5001."regex_nfa"($P5004, _lex_param_2, _lex_param_3)
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "save" :subid("cuid_20_1381281785.71956") :anon :lex :outer("cuid_126_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 304
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("non_empty") :optional 
    .param int haz_param_11 :opt_flag 
    .lex "self", _lex_param_0 
    .lex "$non_empty", _lex_param_1 
    if haz_param_11, default622
    nqp_get_sc_object $P5011, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set _lex_param_1, $P5011
  default622:
    root_new $P101, ['parrot';'Continuation']
    set_label $P101, lexotic_616
    .lex "RETURN", $P101
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 3
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!edges", 1
    if $P5003 goto unless313_end619 
.annotate 'line', 305
    if _lex_param_1 goto unless314_end621 
    $P5004 = "RETURN"(0)
  unless314_end621:
.annotate 'line', 307
    nqp_decontainerize $P5005, _lex_param_0
    find_lex $P5006, "$EDGE_FATE"
    $P5007 = $P5005."addedge"(1, 0, $P5006, 0, 1 :named("newedge"))
  unless313_end619:
    nqp_decontainerize $P5008, _lex_param_0
    nqp_get_sc_object $P5009, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 3
    repr_get_attr_obj $P5010, $P5008, $P5009, "$!states", 0
    goto lexotic_617
  lexotic_616:
    .get_results ($P5010)
  lexotic_617:
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "mergesubrule" :subid("cuid_21_1381281785.71956") :anon :lex :outer("cuid_126_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 312
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .param pmc _lex_param_4 
    .param string _lex_param_5 
    .param pmc _lex_param_6 :optional 
    .param int haz_param_12 :opt_flag 
    .const 'Sub' $P5014 = 'cuid_140_1381281785.71956' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_142_1381281785.71956' 
    capture_lex $P5014 
    .lex "%seen", $P101 
    .lex "@substates", $P102 
    .lex "self", _lex_param_0 
    .lex "$start", _lex_param_1 
    .lex "$to", _lex_param_2 
    .lex "$fate", _lex_param_3 
    .lex "$cursor", _lex_param_4 
    .lex "$name", _lex_param_5 
    .lex "%caller_seen", _lex_param_6 
    if haz_param_12, default645
    new $P5013, 'Hash'
    set _lex_param_6, $P5013
  default645:
    new $P5001, 'Hash'
    set $P101, $P5001
    new $P5002, 'ResizablePMCArray'
    set $P102, $P5002
    repr_clone $P5003, _lex_param_6
    set $P101, $P5003
    can $I5001, _lex_param_4, _lex_param_5
    unless $I5001 goto if315_end624 
.annotate 'line', 316
    exists $I5003, $P101[_lex_param_5]
    not $I5002, $I5003
    unless $I5002 goto if316_end626 
    .const 'Sub' $P5004 = 'cuid_140_1381281785.71956' 
    capture_lex $P5004
    $P5005 = $P5004()
  if316_end626:
    isfalse $I5004, $P102
    set $I5007, $I5004
    unless $I5004 goto if320_end634 
    exists $I5006, $P101[_lex_param_5]
    not $I5005, $I5006
    set $I5007, $I5005
  if320_end634:
    box $P5009, $I5007
    set $P5008, $P5009
    unless $I5007 goto if319_end632 
    .const 'Sub' $P5006 = 'cuid_142_1381281785.71956' 
    capture_lex $P5006
    $P5007 = $P5006()
    set $P5008, $P5007
  if319_end632:
  if315_end624:
    box $P5010, 1
    set $P101[_lex_param_5], $P5010
.annotate 'line', 338
    nqp_decontainerize $P5011, _lex_param_0
    $P5012 = $P5011."mergesubstates"(_lex_param_1, _lex_param_2, _lex_param_3, $P102, _lex_param_4, $P101)
    .return ($P5012) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_140_1381281785.71956") :anon :lex :outer("cuid_21_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 317
    .lex "$meth", $P101 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P101, $P5001
.annotate 'line', 318
    find_lex $P5003, "$cursor"
    get_how $P5002, $P5003
    find_lex $P5004, "$cursor"
    find_lex $S5001, "$name"
    $P5005 = $P5002."find_method"($P5004, $S5001, 1 :named("no_trace"))
    set $P101, $P5005
    can $I5001, $P101, "NFA"
    unless $I5001 goto if317_end628 
.annotate 'line', 319
    $P5006 = $P101."NFA"()
    store_lex "@substates", $P5006
  if317_end628:
    find_lex $P5007, "@substates"
    isnull $I5002, $P5007
    box $P5010, $I5002
    set $P5009, $P5010
    unless $I5002 goto if318_end630 
    new $P5008, 'ResizablePMCArray'
    store_lex "@substates", $P5008
    set $P5009, $P5008
  if318_end630:
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_142_1381281785.71956") :anon :lex :outer("cuid_21_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 322
    .const 'Sub' $P5023 = 'cuid_141_1381281785.71956' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_143_1381281785.71956' 
    capture_lex $P5023 
    .lex "%protorx", $P101 
    .lex "$nfa", $P102 
    .lex "$gotmatch", $I101 
    .local pmc fb_tmp_68 
    new $P5001, 'Hash'
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P102, $P5002
    set $I101, 0
.annotate 'line', 325
    find_lex $P5004, "$cursor"
    get_how $P5003, $P5004
    find_lex $P5005, "$cursor"
    .const 'Sub' $P5007 = 'cuid_141_1381281785.71956' 
    capture_lex $P5007
    newclosure $P5006, $P5007
    $P5008 = $P5003."cache"($P5005, "!protoregex_table", $P5006)
    set $P101, $P5008
.annotate 'line', 326
    nqp_get_sc_object $P5009, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 3
    $P5010 = $P5009."new"()
    set $P102, $P5010
    set $I101, 0
    find_lex $S5001, "$name"
    exists $I5001, $P101[$S5001]
    unless $I5001 goto if321_end636 
.annotate 'line', 328
    set fb_tmp_68, $P101
    repr_defined $I5002, fb_tmp_68
    unless $I5002 goto if322_else637 
    find_lex $S5002, "$name"
    set $P5014, fb_tmp_68[$S5002]
    set $P5016, $P5014
    goto if322_end638
  if322_else637:
    null $P5015
    set $P5016, $P5015
  if322_end638:
    unless_null $P5016, vivi_323639
    nqp_get_sc_object $P5017, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P5016, $P5017
  vivi_323639:
    set $P5011, $P5016
    iter $P5013, $P5016
  for_next640:
    unless $P5013, for_done642
    shift $P5019, $P5013
  for_redo641:
    .const 'Sub' $P5018 = 'cuid_143_1381281785.71956' 
    capture_lex $P5018
    $P5011 = $P5018($P5019)
    goto for_next640
  for_done642:
  if321_end636:
    box $P5022, $I101
    set $P5021, $P5022
    unless $I101 goto if324_end644 
.annotate 'line', 334
    $P5020 = $P102."states"()
    store_lex "@substates", $P5020
    set $P5021, $P5020
  if324_end644:
    .return ($P5021) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_141_1381281785.71956") :anon :lex :outer("cuid_142_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 325

    find_lex $P5001, "$cursor"
    $P5002 = $P5001."!protoregex_table"()
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_143_1381281785.71956") :anon :lex :outer("cuid_142_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 329
    .param pmc _lex_param_0 
    .lex "$rxname", _lex_param_0 
.annotate 'line', 330
    find_lex $P5001, "$nfa"
    find_lex $P5002, "$EDGE_SUBRULE"
    $P5001."addedge"(1, 0, $P5002, _lex_param_0)
    store_lex "$gotmatch", 1
    .return (1) 
.end
.HLL "nqp"
.namespace []
.sub "mergesubstates" :subid("cuid_22_1381281785.71956") :anon :lex :outer("cuid_126_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 341
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .param pmc _lex_param_4 
    .param pmc _lex_param_5 
    .param pmc _lex_param_6 :optional 
    .param int haz_param_13 :opt_flag 
    .const 'Sub' $P5008 = 'cuid_145_1381281785.71956' 
    capture_lex $P5008 
    .lex "self", _lex_param_0 
    .lex "$start", _lex_param_1 
    .lex "$to", _lex_param_2 
    .lex "$fate", _lex_param_3 
    .lex "@substates", _lex_param_4 
    .lex "$cursor", _lex_param_5 
    .lex "%seen", _lex_param_6 
    if haz_param_13, default687
    new $P5007, 'Hash'
    set _lex_param_6, $P5007
  default687:
    unless _lex_param_4 goto if325_else646 
    .const 'Sub' $P5001 = 'cuid_145_1381281785.71956' 
    capture_lex $P5001
    $P5002 = $P5001()
    set $P5006, $P5002
    goto if325_end647
  if325_else646:
.annotate 'line', 377
.annotate 'line', 378
    nqp_decontainerize $P5003, _lex_param_0
    find_lex $P5004, "$EDGE_FATE"
    $P5005 = $P5003."addedge"(_lex_param_1, 0, $P5004, _lex_param_3)
    set $P5006, $P5005
  if325_end647:
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_145_1381281785.71956") :anon :lex :outer("cuid_22_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 342
    .const 'Sub' $P5042 = 'cuid_144_1381281785.71956' 
    capture_lex $P5042 
    .lex "$substart", $I101 
    .lex "$subend", $I102 
    .lex "$i", $I103 
    set $I101, 0
    set $I102, 0
    set $I103, 0
.annotate 'line', 344
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    $P5003 = $P5001."addstate"()
    set $I5001, $P5003
    set $I101, $I5001
    find_lex $P5005, "@substates"
    repr_clone $P5004, $P5005
    store_lex "@substates", $P5004
    find_lex $P5007, "@substates"
    shift $P5006, $P5007
    new $P5017, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5017, while326_handlers651
    push_eh $P5017
  while326_test648:
    find_lex $P5008, "@substates"
    set $P5016, $P5008
    unless $P5008 goto while326_done652 
  while326_redo650:
    find_lex $P5010, "self"
    nqp_decontainerize $P5009, $P5010
    nqp_get_sc_object $P5011, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 3
    repr_get_attr_obj $P5012, $P5009, $P5011, "$!states", 0
    find_lex $P5015, "@substates"
    shift $P5014, $P5015
    repr_clone $P5013, $P5014
    push $P5012, $P5013
    set $P5016, $P5012
    goto while326_test648 
  while326_handlers651:
    .get_results ($P5017)
    pop_upto_eh $P5017
    getattribute $P5017, $P5017, 'type'
    eq $P5017, .CONTROL_LOOP_NEXT, while326_test648
    eq $P5017, .CONTROL_LOOP_REDO, while326_redo650
  while326_done652:
    pop_eh 
    find_lex $P5019, "self"
    nqp_decontainerize $P5018, $P5019
    nqp_get_sc_object $P5020, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 3
    repr_get_attr_obj $P5021, $P5018, $P5020, "$!states", 0
    elements $I5002, $P5021
    set $I102, $I5002
    set $I103, $I101
  while327_test653:
    set $N5001, $I103
    set $N5002, $I102
    islt $I5003, $N5001, $N5002
    box $P5025, $I5003
    set $P5024, $P5025
    unless $I5003 goto while327_done657 
  while327_redo655:
    .const 'Sub' $P5022 = 'cuid_144_1381281785.71956' 
    capture_lex $P5022
    $P5023 = $P5022()
    set $P5024, $P5023
    goto while327_test653 
  while327_done657:
.annotate 'line', 372
    find_lex $P5027, "self"
    nqp_decontainerize $P5026, $P5027
    find_lex $P5028, "$start"
    add $I5004, $I101, 1
    find_lex $P5029, "$EDGE_EPSILON"
    $P5026."addedge"($P5028, $I5004, $P5029, 0)
    find_lex $P5030, "$to"
    set $N5003, $P5030
    set $N5004, 0
    isgt $I5005, $N5003, $N5004
    unless $I5005 goto if343_else685 
.annotate 'line', 374
    find_lex $P5032, "self"
    nqp_decontainerize $P5031, $P5032
    find_lex $P5033, "$to"
    find_lex $P5034, "$EDGE_EPSILON"
    $P5035 = $P5031."addedge"($I101, $P5033, $P5034, 0)
    set $P5041, $P5035
    goto if343_end686
  if343_else685:
.annotate 'line', 375
    find_lex $P5037, "self"
    nqp_decontainerize $P5036, $P5037
    find_lex $P5038, "$EDGE_FATE"
    find_lex $P5039, "$fate"
    $P5040 = $P5036."addedge"($I101, 0, $P5038, $P5039)
    set $P5041, $P5040
  if343_end686:
    .return ($P5041) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_144_1381281785.71956") :anon :lex :outer("cuid_145_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 358
    .lex "$substate", $P101 
    .lex "$j", $I101 
    .lex "$k", $I102 
    .local pmc fb_tmp_69 
    .local pmc fb_tmp_70 
    .local pmc fb_tmp_71 
    .local pmc fb_tmp_72 
    .local pmc fb_tmp_73 
    .local pmc fb_tmp_74 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P101, $P5001
    set $I101, 0
    set $I102, 0
    find_lex $P5003, "self"
    nqp_decontainerize $P5002, $P5003
    nqp_get_sc_object $P5004, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 3
    repr_get_attr_obj $P5005, $P5002, $P5004, "$!states", 0
    set fb_tmp_69, $P5005
    repr_defined $I5001, fb_tmp_69
    unless $I5001 goto if328_else658 
    find_lex $I5002, "$i"
    set $P5006, fb_tmp_69[$I5002]
    set $P5008, $P5006
    goto if328_end659
  if328_else658:
    null $P5007
    set $P5008, $P5007
  if328_end659:
    unless_null $P5008, vivi_329660
    nqp_get_sc_object $P5009, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P5008, $P5009
  vivi_329660:
    set $P101, $P5008
    set $I101, 0
    elements $I5003, $P101
    set $I102, $I5003
  while330_test661:
    set $N5001, $I101
    set $N5002, $I102
    islt $I5004, $N5001, $N5002
    set $I5020, $I5004
    unless $I5004 goto while330_done665 
  while330_redo663:
.annotate 'line', 362
    add $I5005, $I101, 2
    set fb_tmp_70, $P101
    repr_defined $I5006, fb_tmp_70
    unless $I5006 goto if331_else666 
    add $I5007, $I101, 2
    set $P5010, fb_tmp_70[$I5007]
    set $P5012, $P5010
    goto if331_end667
  if331_else666:
    null $P5011
    set $P5012, $P5011
  if331_end667:
    unless_null $P5012, vivi_332668
    nqp_get_sc_object $P5013, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P5012, $P5013
  vivi_332668:
    set $N5004, $P5012
    find_lex $I5008, "$substart"
    set $N5005, $I5008
    add $N5003, $N5004, $N5005
    box $P5014, $N5003
    set $P101[$I5005], $P5014
    set fb_tmp_71, $P101
    repr_defined $I5010, fb_tmp_71
    unless $I5010 goto if334_else671 
    set $P5015, fb_tmp_71[$I101]
    set $P5017, $P5015
    goto if334_end672
  if334_else671:
    null $P5016
    set $P5017, $P5016
  if334_end672:
    unless_null $P5017, vivi_335673
    nqp_get_sc_object $P5018, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P5017, $P5018
  vivi_335673:
    set $N5006, $P5017
    find_lex $P5019, "$EDGE_FATE"
    set $N5007, $P5019
    iseq $I5009, $N5006, $N5007
    unless $I5009 goto if333_end670 
    add $I5011, $I101, 1
    find_lex $P5020, "$fate"
    set $P101[$I5011], $P5020
  if333_end670:
    set fb_tmp_72, $P101
    repr_defined $I5013, fb_tmp_72
    unless $I5013 goto if337_else676 
    set $P5021, fb_tmp_72[$I101]
    set $P5023, $P5021
    goto if337_end677
  if337_else676:
    null $P5022
    set $P5023, $P5022
  if337_end677:
    unless_null $P5023, vivi_338678
    nqp_get_sc_object $P5024, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P5023, $P5024
  vivi_338678:
    set $N5008, $P5023
    find_lex $P5025, "$EDGE_SUBRULE"
    set $N5009, $P5025
    iseq $I5012, $N5008, $N5009
    unless $I5012 goto if336_end675 
.annotate 'line', 366
    find_lex $P5027, "self"
    nqp_decontainerize $P5026, $P5027
    find_lex $I5014, "$i"
    set fb_tmp_73, $P101
    repr_defined $I5015, fb_tmp_73
    unless $I5015 goto if339_else679 
    add $I5016, $I101, 2
    set $P5028, fb_tmp_73[$I5016]
    set $P5030, $P5028
    goto if339_end680
  if339_else679:
    null $P5029
    set $P5030, $P5029
  if339_end680:
    unless_null $P5030, vivi_340681
    nqp_get_sc_object $P5031, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P5030, $P5031
  vivi_340681:
    find_lex $P5032, "$fate"
    find_lex $P5033, "$cursor"
    set fb_tmp_74, $P101
    repr_defined $I5017, fb_tmp_74
    unless $I5017 goto if341_else682 
    add $I5018, $I101, 1
    set $P5034, fb_tmp_74[$I5018]
    set $P5036, $P5034
    goto if341_end683
  if341_else682:
    null $P5035
    set $P5036, $P5035
  if341_end683:
    unless_null $P5036, vivi_342684
    nqp_get_sc_object $P5037, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P5036, $P5037
  vivi_342684:
    find_lex $P5038, "%seen"
    $P5039 = $P5026."mergesubrule"($I5014, $P5030, $P5032, $P5033, $P5036, $P5038)
  if336_end675:
    add $I5019, $I101, 3
    set $I101, $I5019
    set $I5020, $I101
    goto while330_test661 
  while330_done665:
    find_lex $I5022, "$i"
    add $I5021, $I5022, 1
    store_lex "$i", $I5021
    .return ($I5021) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_146_1381281785.71956") :anon :lex :outer("cuid_126_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 383
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "run" :subid("cuid_23_1381281785.71956") :anon :lex :outer("cuid_126_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 385
    .param pmc _lex_param_0 
    .param string _lex_param_1 
    .param int _lex_param_2 
    .lex "self", _lex_param_0 
    .lex "$target", _lex_param_1 
    .lex "$offset", _lex_param_2 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 3
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!nfa_object", 3
    repr_defined $I5001, $P5003
    if $I5001 goto unless344_end689 
.annotate 'line', 386
    nqp_disable_sc_write_barrier 
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 3
    nqp_decontainerize $P5007, _lex_param_0
    nqp_get_sc_object $P5008, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 3
    repr_get_attr_obj $P5009, $P5007, $P5008, "$!states", 0
    nqp_get_sc_object $P5010, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 26
    nqp_nfa_from_statelist $P5006, $P5009, $P5010
    repr_bind_attr_obj $P5004, $P5005, "$!nfa_object", 3, $P5006
    nqp_enable_sc_write_barrier 
  unless344_end689:
    nqp_decontainerize $P5012, _lex_param_0
    nqp_get_sc_object $P5013, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 3
    repr_get_attr_obj $P5014, $P5012, $P5013, "$!nfa_object", 3
    nqp_nfa_run_proto $P5011, $P5014, _lex_param_1, _lex_param_2
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "run_alt" :subid("cuid_24_1381281785.71956") :anon :lex :outer("cuid_126_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 394
    .param pmc _lex_param_0 
    .param string _lex_param_1 
    .param int _lex_param_2 
    .param pmc _lex_param_3 
    .param pmc _lex_param_4 
    .param pmc _lex_param_5 
    .lex "self", _lex_param_0 
    .lex "$target", _lex_param_1 
    .lex "$offset", _lex_param_2 
    .lex "$bstack", _lex_param_3 
    .lex "$cstack", _lex_param_4 
    .lex "@labels", _lex_param_5 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 3
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!nfa_object", 3
    repr_defined $I5001, $P5003
    if $I5001 goto unless345_end691 
.annotate 'line', 395
    nqp_disable_sc_write_barrier 
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 3
    nqp_decontainerize $P5007, _lex_param_0
    nqp_get_sc_object $P5008, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 3
    repr_get_attr_obj $P5009, $P5007, $P5008, "$!states", 0
    nqp_get_sc_object $P5010, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 26
    nqp_nfa_from_statelist $P5006, $P5009, $P5010
    repr_bind_attr_obj $P5004, $P5005, "$!nfa_object", 3, $P5006
    nqp_enable_sc_write_barrier 
  unless345_end691:
    nqp_decontainerize $P5011, _lex_param_0
    nqp_get_sc_object $P5012, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 3
    repr_get_attr_obj $P5013, $P5011, $P5012, "$!nfa_object", 3
    nqp_nfa_run_alt $P5013, _lex_param_1, _lex_param_2, _lex_param_3, _lex_param_4, _lex_param_5
    .return ($P5013) 
.end
.HLL "nqp"
.namespace []
.sub "generic" :subid("cuid_25_1381281785.71956") :anon :lex :outer("cuid_126_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 403
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 3
    repr_get_attr_int $I5001, $P5001, $P5002, "$!generic", 2
    .return ($I5001) 
.end
.HLL "nqp"
.namespace []
.sub "instantiate_generic" :subid("cuid_26_1381281785.71956") :anon :lex :outer("cuid_126_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 407
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5023 = 'cuid_147_1381281785.71956' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_149_1381281785.71956' 
    capture_lex $P5023 
    .lex "$copy", $P101 
    .lex "@copied_states", $P102 
    .lex "$from", $I101 
    .lex "self", _lex_param_0 
    .lex "$env", _lex_param_1 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P101, $P5001
    new $P5002, 'ResizablePMCArray'
    set $P102, $P5002
    set $I101, 0
    nqp_decontainerize $P5004, _lex_param_0
    repr_instance_of $P5003, $P5004
    set $P101, $P5003
    nqp_decontainerize $P5008, _lex_param_0
    nqp_get_sc_object $P5009, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 3
    repr_get_attr_obj $P5010, $P5008, $P5009, "$!states", 0
    set $P5005, $P5010
    iter $P5007, $P5010
  for_next692:
    unless $P5007, for_done694
    shift $P5012, $P5007
  for_redo693:
    .const 'Sub' $P5011 = 'cuid_147_1381281785.71956' 
    capture_lex $P5011
    $P5005 = $P5011($P5012)
    goto for_next692
  for_done694:
    nqp_get_sc_object $P5013, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 3
    setattribute $P101, $P5013, "$!states", $P102
    nqp_get_sc_object $P5014, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 3
    nqp_decontainerize $P5015, _lex_param_0
    nqp_get_sc_object $P5016, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 3
    repr_get_attr_obj $P5017, $P5015, $P5016, "$!edges", 1
    setattribute $P101, $P5014, "$!edges", $P5017
    set $I101, 0
    set $P5018, $P102
    iter $P5020, $P102
  for_next713:
    unless $P5020, for_done715
    shift $P5022, $P5020
  for_redo714:
    .const 'Sub' $P5021 = 'cuid_149_1381281785.71956' 
    capture_lex $P5021
    $P5018 = $P5021($P5022)
    goto for_next713
  for_done715:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_147_1381281785.71956") :anon :lex :outer("cuid_26_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 411
    .param pmc _lex_param_0 
    .lex "@values", _lex_param_0 
    find_lex $P5001, "@copied_states"
    repr_clone $P5002, _lex_param_0
    push $P5001, $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_149_1381281785.71956") :anon :lex :outer("cuid_26_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 420
    .param pmc _lex_param_0 
    .const 'Sub' $P5006 = 'cuid_148_1381281785.71956' 
    capture_lex $P5006 
    .lex "@output_values", $P101 
    .lex "$i", $I101 
    .lex "$n", $I102 
    .lex "@values", _lex_param_0 
    .local pmc tmp_4 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    set $I101, 0
    set $I102, 0
    set $I101, 0
    elements $I5001, _lex_param_0
    set $I102, $I5001
  while346_test695:
    set $N5001, $I101
    set $N5002, $I102
    islt $I5002, $N5001, $N5002
    box $P5005, $I5002
    set $P5004, $P5005
    unless $I5002 goto while346_done699 
  while346_redo697:
    .const 'Sub' $P5002 = 'cuid_148_1381281785.71956' 
    capture_lex $P5002
    $P5003 = $P5002()
    set $P5004, $P5003
    goto while346_test695 
  while346_done699:
    find_lex $I5003, "$from"
    box $P5006, $I5003
    set tmp_4, $P5006
    set $N5004, tmp_4
    set $N5005, 1
    add $N5003, $N5004, $N5005
    set $I5004, $N5003
    store_lex "$from", $I5004
    .return (tmp_4) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_148_1381281785.71956") :anon :lex :outer("cuid_149_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 424
    .lex "$act", $P101 
    .lex "$arg", $P102 
    .lex "$to", $P103 
    .local pmc fb_tmp_75 
    .local pmc fb_tmp_76 
    .local pmc fb_tmp_77 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P102, $P5002
    nqp_get_sc_object $P5003, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P103, $P5003
    find_lex $P5004, "@values"
    set fb_tmp_75, $P5004
    repr_defined $I5001, fb_tmp_75
    unless $I5001 goto if347_else700 
    find_lex $I5002, "$i"
    set $P5005, fb_tmp_75[$I5002]
    set $P5007, $P5005
    goto if347_end701
  if347_else700:
    null $P5006
    set $P5007, $P5006
  if347_end701:
    unless_null $P5007, vivi_348702
    nqp_get_sc_object $P5008, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P5007, $P5008
  vivi_348702:
    set $P101, $P5007
    find_lex $P5009, "@values"
    set fb_tmp_76, $P5009
    repr_defined $I5003, fb_tmp_76
    unless $I5003 goto if349_else703 
    find_lex $I5005, "$i"
    add $I5004, $I5005, 1
    set $P5010, fb_tmp_76[$I5004]
    set $P5012, $P5010
    goto if349_end704
  if349_else703:
    null $P5011
    set $P5012, $P5011
  if349_end704:
    unless_null $P5012, vivi_350705
    nqp_get_sc_object $P5013, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P5012, $P5013
  vivi_350705:
    set $P102, $P5012
    find_lex $P5014, "@values"
    set fb_tmp_77, $P5014
    repr_defined $I5006, fb_tmp_77
    unless $I5006 goto if351_else706 
    find_lex $I5008, "$i"
    add $I5007, $I5008, 2
    set $P5015, fb_tmp_77[$I5007]
    set $P5017, $P5015
    goto if351_end707
  if351_else706:
    null $P5016
    set $P5017, $P5016
  if351_end707:
    unless_null $P5017, vivi_352708
    nqp_get_sc_object $P5018, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P5017, $P5018
  vivi_352708:
    set $P103, $P5017
    set $N5001, $P101
    find_lex $P5019, "$EDGE_GENERIC_VAR"
    set $N5002, $P5019
    iseq $I5009, $N5001, $N5002
    unless $I5009 goto if353_end710 
.annotate 'line', 428
    find_lex $P5020, "$env"
    set $S5001, $P102
    exists $I5010, $P5020[$S5001]
    unless $I5010 goto if354_else711 
.annotate 'line', 429
.annotate 'line', 430
    find_lex $P5021, "$copy"
.annotate 'line', 431
    nqp_get_sc_object $P5022, "8D7C40D4B41C0FB97C97F9FA59E4F60A345D73C3-1381281783.14924", 34
    find_lex $P5024, "$env"
    set $S5002, $P102
    set $P5023, $P5024[$S5002]
    $P5025 = $P5022."new"($P5023, "literal" :named("rxtype"))
    find_lex $I5011, "$from"
    $P5021."literal"($P5025, $I5011, $P103)
    find_lex $P5026, "@values"
    find_lex $I5012, "$i"
    find_lex $P5027, "$EDGE_EPSILON"
    set $P5026[$I5012], $P5027
    find_lex $P5028, "@values"
    find_lex $I5014, "$i"
    add $I5013, $I5014, 1
    box $P5029, 0
    set $P5028[$I5013], $P5029
    find_lex $P5030, "@values"
    find_lex $I5016, "$i"
    add $I5015, $I5016, 2
    box $P5031, 0
    set $P5030[$I5015], $P5031
    set $P5038, $P5031
    goto if354_end712
  if354_else711:
.annotate 'line', 437
    find_lex $P5032, "@values"
    find_lex $I5017, "$i"
    find_lex $P5033, "$EDGE_FATE"
    set $P5032[$I5017], $P5033
    find_lex $P5034, "@values"
    find_lex $I5019, "$i"
    add $I5018, $I5019, 1
    box $P5035, 0
    set $P5034[$I5018], $P5035
    find_lex $P5036, "@values"
    find_lex $I5021, "$i"
    add $I5020, $I5021, 2
    box $P5037, 0
    set $P5036[$I5020], $P5037
    set $P5038, $P5037
  if354_end712:
  if353_end710:
    find_lex $I5023, "$i"
    add $I5022, $I5023, 3
    store_lex "$i", $I5022
    .return ($I5022) 
.end
.HLL "nqp"
.namespace []
.sub "__dump" :subid("cuid_27_1381281785.71956") :anon :lex :outer("cuid_126_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 451
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .const 'Sub' $P5015 = 'cuid_150_1381281785.71956' 
    capture_lex $P5015 
    .lex "$subindent", $P101 
    .lex "$st", $P102 
    .lex "self", _lex_param_0 
    .lex "$dumper", _lex_param_1 
    .lex "$label", _lex_param_2 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P102, $P5002
.annotate 'line', 452
    $P5003 = _lex_param_1."newIndent"()
    set $P101, $P5003
.annotate 'line', 453
    "&print"("[")
    box $P5004, 0
    set $P102, $P5004
    nqp_decontainerize $P5008, _lex_param_0
    nqp_get_sc_object $P5009, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 3
    repr_get_attr_obj $P5010, $P5008, $P5009, "$!states", 0
    set $P5005, $P5010
    iter $P5007, $P5010
  for_next716:
    unless $P5007, for_done718
    shift $P5012, $P5007
  for_redo717:
    .const 'Sub' $P5011 = 'cuid_150_1381281785.71956' 
    capture_lex $P5011
    $P5005 = $P5011($P5012)
    goto for_next716
  for_done718:
.annotate 'line', 459
    _lex_param_1."deleteIndent"()
.annotate 'line', 460
    $P5013 = _lex_param_1."indent"()
    $P5014 = "&print"("\n", $P5013, "]")
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_150_1381281785.71956") :anon :lex :outer("cuid_27_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 455
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 456
    find_lex $P5003, "$subindent"
    set $S5003, $P5003
    concat $S5002, "\n", $S5003
    concat $S5001, $S5002, "'%d' => [%s]"
    new $P5004, 'ResizablePMCArray'
    find_lex $P5005, "$st"
    push $P5004, $P5005
    join $S5004, ", ", _lex_param_0
    box $P5006, $S5004
    push $P5004, $P5006
    new $P5002, 'ResizableStringArray'
    push $P5002, "nqp"
    get_root_global $P5001, $P5002, "sprintf"
    $S5005 = $P5001($S5001, $P5004)
    "&print"($S5005)
    find_lex $P5007, "$st"
    set $N5002, $P5007
    set $N5003, 1
    add $N5001, $N5002, $N5003
    box $P5008, $N5001
    store_lex "$st", $P5008
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_151_1381281785.71956") :anon :lex :outer("cuid_125_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 470
    .const 'Sub' $P5005 = 'cuid_28_1381281785.71956' 
    capture_lex $P5005 
    .const 'Sub' $P5005 = 'cuid_29_1381281785.71956' 
    capture_lex $P5005 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .lex "%cursors_created", $P103 
    .lex "$cursors_total", $P104 
    new $P5001, 'Hash'
    set $P103, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P104, $P5002
    .const 'Sub' $P5003 = 'cuid_28_1381281785.71956' 
    capture_lex $P5003
    .const 'Sub' $P5004 = 'cuid_29_1381281785.71956' 
    capture_lex $P5004
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "log_cc" :subid("cuid_28_1381281785.71956") :anon :lex :outer("cuid_151_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 482
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    .local pmc tmp_5 
    .local pmc fb_tmp_78 
    .local pmc tmp_6 
    find_lex $P5001, "%cursors_created"
    set fb_tmp_78, $P5001
    repr_defined $I5001, fb_tmp_78
    unless $I5001 goto if355_else719 
    set $S5001, _lex_param_1
    set $P5002, fb_tmp_78[$S5001]
    set $P5004, $P5002
    goto if355_end720
  if355_else719:
    null $P5003
    set $P5004, $P5003
  if355_end720:
    unless_null $P5004, vivi_356721
    nqp_get_sc_object $P5005, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P5004, $P5005
  vivi_356721:
    set tmp_5, $P5004
    find_lex $P5006, "%cursors_created"
    set $S5002, _lex_param_1
    set $N5002, tmp_5
    set $N5003, 1
    add $N5001, $N5002, $N5003
    box $P5007, $N5001
    set $P5006[$S5002], $P5007
    find_lex $P5001, "$cursors_total"
    set tmp_6, $P5001
    set $N5002, tmp_6
    set $N5003, 1
    add $N5001, $N5002, $N5003
    box $P5002, $N5001
    store_lex "$cursors_total", $P5002
    .return (tmp_6) 
.end
.HLL "nqp"
.namespace []
.sub "log_dump" :subid("cuid_29_1381281785.71956") :anon :lex :outer("cuid_151_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 486
    .param pmc _lex_param_0 
    .const 'Sub' $P5009 = 'cuid_152_1381281785.71956' 
    capture_lex $P5009 
    .lex "self", _lex_param_0 
    find_lex $P5004, "%cursors_created"
    set $P5001, $P5004
    iter $P5003, $P5004
  for_next722:
    unless $P5003, for_done724
    shift $P5006, $P5003
  for_redo723:
    .const 'Sub' $P5005 = 'cuid_152_1381281785.71956' 
    capture_lex $P5005
    $P5001 = $P5005($P5006)
    goto for_next722
  for_done724:
.annotate 'line', 490
    find_lex $P5007, "$cursors_total"
    set $S5002, $P5007
    concat $S5001, "TOTAL: ", $S5002
    $P5008 = "&say"($S5001)
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_152_1381281785.71956") :anon :lex :outer("cuid_29_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 487
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 488
    $P5001 = _lex_param_0."value"()
    set $S5003, $P5001
    concat $S5002, $S5003, "\t"
    $P5002 = _lex_param_0."key"()
    set $S5004, $P5002
    concat $S5001, $S5002, $S5004
    $P5003 = "&say"($S5001)
    .return ($P5003) 
.end
.loadlib "nqp_group"
.loadlib "nqp_ops"
.loadlib "nqp_bigint_ops"
.loadlib "trans_ops"
.loadlib "io_ops"
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_82_1381281785.71956") :anon :lex :outer("cuid_125_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 494
    .param pmc _lex_param_0 
    .const 'Sub' $P5064 = 'cuid_30_1381281785.71956' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_31_1381281785.71956' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_32_1381281785.71956' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_33_1381281785.71956' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_34_1381281785.71956' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_35_1381281785.71956' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_36_1381281785.71956' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_37_1381281785.71956' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_38_1381281785.71956' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_39_1381281785.71956' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_40_1381281785.71956' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_41_1381281785.71956' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_42_1381281785.71956' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_43_1381281785.71956' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_44_1381281785.71956' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_45_1381281785.71956' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_46_1381281785.71956' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_47_1381281785.71956' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_48_1381281785.71956' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_49_1381281785.71956' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_50_1381281785.71956' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_51_1381281785.71956' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_52_1381281785.71956' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_53_1381281785.71956' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_54_1381281785.71956' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_55_1381281785.71956' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_56_1381281785.71956' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_57_1381281785.71956' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_58_1381281785.71956' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_59_1381281785.71956' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_60_1381281785.71956' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_61_1381281785.71956' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_62_1381281785.71956' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_63_1381281785.71956' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_64_1381281785.71956' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_65_1381281785.71956' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_66_1381281785.71956' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_67_1381281785.71956' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_68_1381281785.71956' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_69_1381281785.71956' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_70_1381281785.71956' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_71_1381281785.71956' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_72_1381281785.71956' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_73_1381281785.71956' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_74_1381281785.71956' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_75_1381281785.71956' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_76_1381281785.71956' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_77_1381281785.71956' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_78_1381281785.71956' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_79_1381281785.71956' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_80_1381281785.71956' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_81_1381281785.71956' 
    capture_lex $P5064 
    .lex "$?PACKAGE", $P101 
    .lex "$?ROLE", $P102 
    .lex "$NO_CAPS", $P103 
    .lex "$NO_RESTART", $P104 
    .lex "$RESTART", $P105 
    .lex "$pass_mark", $P106 
    .lex "@EMPTY", $P107 
    .lex "$?CLASS", _lex_param_0 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P103, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P104, $P5002
    nqp_get_sc_object $P5003, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P105, $P5003
    nqp_get_sc_object $P5004, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P106, $P5004
    new $P5005, 'ResizablePMCArray'
    set $P107, $P5005
    .const 'Sub' $P5006 = 'cuid_30_1381281785.71956' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_31_1381281785.71956' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_32_1381281785.71956' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_33_1381281785.71956' 
    capture_lex $P5009
    new $P5010, 'Hash'
    set $P103, $P5010
    .const 'Sub' $P5011 = 'cuid_34_1381281785.71956' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_35_1381281785.71956' 
    capture_lex $P5012
    box $P5013, 0
    set $P104, $P5013
    box $P5014, 1
    set $P105, $P5014
    .const 'Sub' $P5015 = 'cuid_36_1381281785.71956' 
    capture_lex $P5015
    .const 'Sub' $P5016 = 'cuid_37_1381281785.71956' 
    capture_lex $P5016
    .const 'Sub' $P5017 = 'cuid_38_1381281785.71956' 
    capture_lex $P5017
    .const 'Sub' $P5018 = 'cuid_39_1381281785.71956' 
    capture_lex $P5018
    .const 'Sub' $P5019 = 'cuid_40_1381281785.71956' 
    capture_lex $P5019
    .const 'Sub' $P5020 = 'cuid_41_1381281785.71956' 
    capture_lex $P5020
    box $P5021, 1
    set $P106, $P5021
    .const 'Sub' $P5022 = 'cuid_42_1381281785.71956' 
    capture_lex $P5022
    .const 'Sub' $P5023 = 'cuid_43_1381281785.71956' 
    capture_lex $P5023
    .const 'Sub' $P5024 = 'cuid_44_1381281785.71956' 
    capture_lex $P5024
    .const 'Sub' $P5025 = 'cuid_45_1381281785.71956' 
    capture_lex $P5025
    .const 'Sub' $P5026 = 'cuid_46_1381281785.71956' 
    capture_lex $P5026
    .const 'Sub' $P5027 = 'cuid_47_1381281785.71956' 
    capture_lex $P5027
    .const 'Sub' $P5028 = 'cuid_48_1381281785.71956' 
    capture_lex $P5028
    .const 'Sub' $P5029 = 'cuid_49_1381281785.71956' 
    capture_lex $P5029
    new $P5030, 'ResizablePMCArray'
    set $P107, $P5030
    .const 'Sub' $P5031 = 'cuid_50_1381281785.71956' 
    capture_lex $P5031
    .const 'Sub' $P5032 = 'cuid_51_1381281785.71956' 
    capture_lex $P5032
    .const 'Sub' $P5033 = 'cuid_52_1381281785.71956' 
    capture_lex $P5033
    .const 'Sub' $P5034 = 'cuid_53_1381281785.71956' 
    capture_lex $P5034
    .const 'Sub' $P5035 = 'cuid_54_1381281785.71956' 
    capture_lex $P5035
    .const 'Sub' $P5036 = 'cuid_55_1381281785.71956' 
    capture_lex $P5036
    .const 'Sub' $P5037 = 'cuid_56_1381281785.71956' 
    capture_lex $P5037
    .const 'Sub' $P5038 = 'cuid_57_1381281785.71956' 
    capture_lex $P5038
    .const 'Sub' $P5039 = 'cuid_58_1381281785.71956' 
    capture_lex $P5039
    .const 'Sub' $P5040 = 'cuid_59_1381281785.71956' 
    capture_lex $P5040
    .const 'Sub' $P5041 = 'cuid_60_1381281785.71956' 
    capture_lex $P5041
    .const 'Sub' $P5042 = 'cuid_61_1381281785.71956' 
    capture_lex $P5042
    .const 'Sub' $P5043 = 'cuid_62_1381281785.71956' 
    capture_lex $P5043
    .const 'Sub' $P5044 = 'cuid_63_1381281785.71956' 
    capture_lex $P5044
    .const 'Sub' $P5045 = 'cuid_64_1381281785.71956' 
    capture_lex $P5045
    .const 'Sub' $P5046 = 'cuid_65_1381281785.71956' 
    capture_lex $P5046
    .const 'Sub' $P5047 = 'cuid_66_1381281785.71956' 
    capture_lex $P5047
    .const 'Sub' $P5048 = 'cuid_67_1381281785.71956' 
    capture_lex $P5048
    .const 'Sub' $P5049 = 'cuid_68_1381281785.71956' 
    capture_lex $P5049
    .const 'Sub' $P5050 = 'cuid_69_1381281785.71956' 
    capture_lex $P5050
    .const 'Sub' $P5051 = 'cuid_70_1381281785.71956' 
    capture_lex $P5051
    .const 'Sub' $P5052 = 'cuid_71_1381281785.71956' 
    capture_lex $P5052
    .const 'Sub' $P5053 = 'cuid_72_1381281785.71956' 
    capture_lex $P5053
    .const 'Sub' $P5054 = 'cuid_73_1381281785.71956' 
    capture_lex $P5054
    .const 'Sub' $P5055 = 'cuid_74_1381281785.71956' 
    capture_lex $P5055
    .const 'Sub' $P5056 = 'cuid_75_1381281785.71956' 
    capture_lex $P5056
    .const 'Sub' $P5057 = 'cuid_76_1381281785.71956' 
    capture_lex $P5057
    .const 'Sub' $P5058 = 'cuid_77_1381281785.71956' 
    capture_lex $P5058
    .const 'Sub' $P5059 = 'cuid_78_1381281785.71956' 
    capture_lex $P5059
    .const 'Sub' $P5060 = 'cuid_79_1381281785.71956' 
    capture_lex $P5060
    .const 'Sub' $P5061 = 'cuid_80_1381281785.71956' 
    capture_lex $P5061
    .const 'Sub' $P5062 = 'cuid_81_1381281785.71956' 
    capture_lex $P5062
    getinterp $P5063
    set $P5063, $P5063['lexpad']
    .return ($P5063) 
.end
.HLL "nqp"
.namespace []
.sub "orig" :subid("cuid_30_1381281785.71956") :anon :lex :outer("cuid_82_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 505
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5002, _lex_param_0
    find_lex $P5003, "$?CLASS"
    repr_get_attr_obj $P5004, $P5002, $P5003, "$!shared"
    nqp_get_sc_object $P5005, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 32
    getattribute $P5001, $P5004, $P5005, "$!orig"
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "target" :subid("cuid_31_1381281785.71956") :anon :lex :outer("cuid_82_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 506
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    find_lex $P5002, "$?CLASS"
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!shared"
    nqp_get_sc_object $P5004, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 32
    repr_get_attr_str $S5001, $P5003, $P5004, "$!target", 1
    .return ($S5001) 
.end
.HLL "nqp"
.namespace []
.sub "from" :subid("cuid_32_1381281785.71956") :anon :lex :outer("cuid_82_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 507
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    find_lex $P5002, "$?CLASS"
    repr_get_attr_int $I5001, $P5001, $P5002, "$!from"
    .return ($I5001) 
.end
.HLL "nqp"
.namespace []
.sub "pos" :subid("cuid_33_1381281785.71956") :anon :lex :outer("cuid_82_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 508
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    find_lex $P5002, "$?CLASS"
    repr_get_attr_int $I5001, $P5001, $P5002, "$!pos"
    .return ($I5001) 
.end
.HLL "nqp"
.namespace []
.sub "CAPHASH" :subid("cuid_34_1381281785.71956") :anon :lex :outer("cuid_82_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 511
    .param pmc _lex_param_0 
    .const 'Sub' $P5069 = 'cuid_101_1381281785.71956' 
    capture_lex $P5069 
    .lex "$caps", $P101 
    .lex "%caplist", $P102 
    .lex "$iter", $P103 
    .lex "$curcap", $S101 
    .lex "$cs", $P104 
    .lex "$csi", $I101 
    .lex "$cselems", $I102 
    .lex "$subcur", $P105 
    .lex "$submatch", $P106 
    .lex "$name", $P107 
    .lex "self", _lex_param_0 
    .local pmc fb_tmp_79 
    .local pmc fb_tmp_80 
    .local pmc tmp_7 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P101, $P5001
    new $P5002, 'Hash'
    set $P102, $P5002
    nqp_get_sc_object $P5003, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P103, $P5003
    set $S101, ""
    nqp_get_sc_object $P5004, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P104, $P5004
    set $I101, 0
    set $I102, 0
    nqp_get_sc_object $P5005, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P105, $P5005
    nqp_get_sc_object $P5006, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P106, $P5006
    nqp_get_sc_object $P5007, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P107, $P5007
    new $P5008, 'Hash'
    set $P101, $P5008
    find_lex $P5009, "$NO_CAPS"
    set $P102, $P5009
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_obj $P5012, $P5010, $P5011, "$!regexsub"
    isnull $I5002, $P5012
    not $I5001, $I5002
    set $I5004, $I5001
    unless $I5001 goto if358_end728 
    nqp_decontainerize $P5013, _lex_param_0
    find_lex $P5014, "$?CLASS"
    repr_get_attr_obj $P5015, $P5013, $P5014, "$!regexsub"
    defined $I5003, $P5015
    set $I5004, $I5003
  if358_end728:
    unless $I5004 goto if357_end726 
.annotate 'line', 523
    nqp_decontainerize $P5016, _lex_param_0
    find_lex $P5017, "$?CLASS"
    repr_get_attr_obj $P5018, $P5016, $P5017, "$!regexsub"
    can $I5005, $P5018, "CAPS"
    unless $I5005 goto if359_else729 
.annotate 'line', 524
    nqp_decontainerize $P5019, _lex_param_0
    find_lex $P5020, "$?CLASS"
    repr_get_attr_obj $P5021, $P5019, $P5020, "$!regexsub"
    $P5022 = $P5021."CAPS"()
    set $P5024, $P5022
    goto if359_end730
  if359_else729:
    null $P5023
    set $P5024, $P5023
  if359_end730:
    set $P102, $P5024
    isnull $I5007, $P102
    not $I5006, $I5007
    box $P5026, $I5006
    set $P5025, $P5026
    unless $I5006 goto if361_end734 
    set $P5025, $P102
  if361_end734:
    set $P5035, $P5025
    unless $P5025 goto if360_end732 
.annotate 'line', 525
    iter $P5027, $P102
    set $P103, $P5027
  while362_test735:
    set $P5034, $P103
    unless $P103 goto while362_done739 
  while362_redo737:
.annotate 'line', 527
    shift $P5028, $P103
    $P5029 = $P5028."key"()
    set $S5001, $P5029
    set $S101, $S5001
    set $P5030, $P102[$S101]
    set $N5001, $P5030
    set $N5002, 2
    isge $I5008, $N5001, $N5002
    box $P5033, $I5008
    set $P5032, $P5033
    unless $I5008 goto if363_end741 
    new $P5031, 'ResizablePMCArray'
    set $P101[$S101], $P5031
    set $P5032, $P5031
  if363_end741:
    set $P5034, $P5032
    goto while362_test735 
  while362_done739:
    set $P5035, $P5034
  if360_end732:
  if357_end726:
    nqp_decontainerize $P5036, _lex_param_0
    find_lex $P5037, "$?CLASS"
    repr_get_attr_obj $P5038, $P5036, $P5037, "$!cstack"
    isnull $I5010, $P5038
    not $I5009, $I5010
    box $P5043, $I5009
    set $P5042, $P5043
    unless $I5009 goto if365_end745 
    nqp_decontainerize $P5039, _lex_param_0
    find_lex $P5040, "$?CLASS"
    repr_get_attr_obj $P5041, $P5039, $P5040, "$!cstack"
    set $P5042, $P5041
  if365_end745:
    unless $P5042 goto if364_end743 
.annotate 'line', 533
    nqp_decontainerize $P5044, _lex_param_0
    find_lex $P5045, "$?CLASS"
    repr_get_attr_obj $P5046, $P5044, $P5045, "$!cstack"
    set $P104, $P5046
    elements $I5011, $P104
    set $I102, $I5011
  while366_test746:
    set $N5003, $I101
    set $N5004, $I102
    islt $I5012, $N5003, $N5004
    box $P5068, $I5012
    set $P5067, $P5068
    unless $I5012 goto while366_done750 
  while366_redo748:
.annotate 'line', 536
    set $P5047, $P104[$I101]
    set $P105, $P5047
.annotate 'line', 538
    $P5048 = $P105."MATCH"()
    set $P106, $P5048
    find_lex $P5050, "$?CLASS"
    getattribute $P5049, $P105, $P5050, "$!name"
    set $P107, $P5049
    isnull $I5014, $P107
    not $I5013, $I5014
    set $I5016, $I5013
    unless $I5013 goto if368_end754 
    defined $I5015, $P107
    set $I5016, $I5015
  if368_end754:
    unless $I5016 goto if367_end752 
.annotate 'line', 540
    set $S5002, $P107
    index $I5018, $S5002, "=", 0
    set $N5005, $I5018
    set $N5006, 0
    islt $I5017, $N5005, $N5006
    unless $I5017 goto if369_else755 
.annotate 'line', 541
    set fb_tmp_79, $P102
    repr_defined $I5020, fb_tmp_79
    unless $I5020 goto if371_else759 
    set $S5003, $P107
    set $P5051, fb_tmp_79[$S5003]
    set $P5053, $P5051
    goto if371_end760
  if371_else759:
    null $P5052
    set $P5053, $P5052
  if371_end760:
    unless_null $P5053, vivi_372761
    nqp_get_sc_object $P5054, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P5053, $P5054
  vivi_372761:
    set $N5007, $P5053
    set $N5008, 2
    isge $I5019, $N5007, $N5008
    unless $I5019 goto if370_else757 
    set fb_tmp_80, $P101
    repr_defined $I5021, fb_tmp_80
    unless $I5021 goto if373_else762 
    set $S5004, $P107
    set $P5055, fb_tmp_80[$S5004]
    set $P5057, $P5055
    goto if373_end763
  if373_else762:
    null $P5056
    set $P5057, $P5056
  if373_end763:
    unless_null $P5057, vivi_374764
    nqp_get_sc_object $P5058, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P5057, $P5058
  vivi_374764:
    push $P5057, $P106
    set $P5059, $P5057
    goto if370_end758
  if370_else757:
    set $S5005, $P107
    set $P101[$S5005], $P106
    set $P5059, $P106
  if370_end758:
    set $P5066, $P5059
    goto if369_end756
  if369_else755:
.annotate 'line', 546
    set $S5006, $P107
    split $P5063, "=", $S5006
    set $P5060, $P5063
    iter $P5062, $P5063
  for_next773:
    unless $P5062, for_done775
    shift $P5065, $P5062
  for_redo774:
    .const 'Sub' $P5064 = 'cuid_101_1381281785.71956' 
    capture_lex $P5064
    $P5060 = $P5064($P5065)
    goto for_next773
  for_done775:
    set $P5066, $P5060
  if369_end756:
  if367_end752:
    box $P5067, $I101
    set tmp_7, $P5067
    set $N5010, tmp_7
    set $N5011, 1
    add $N5009, $N5010, $N5011
    set $I5022, $N5009
    set $I101, $I5022
    set $P5067, tmp_7
    goto while366_test746 
  while366_done750:
  if364_end743:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_101_1381281785.71956") :anon :lex :outer("cuid_34_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 547
    .param pmc _lex_param_0 
    .lex "$name", _lex_param_0 
    .local pmc fb_tmp_81 
    .local pmc fb_tmp_82 
    find_lex $P5001, "%caplist"
    set fb_tmp_81, $P5001
    repr_defined $I5002, fb_tmp_81
    unless $I5002 goto if376_else767 
    set $S5001, _lex_param_0
    set $P5002, fb_tmp_81[$S5001]
    set $P5004, $P5002
    goto if376_end768
  if376_else767:
    null $P5003
    set $P5004, $P5003
  if376_end768:
    unless_null $P5004, vivi_377769
    nqp_get_sc_object $P5005, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P5004, $P5005
  vivi_377769:
    set $N5001, $P5004
    set $N5002, 2
    isge $I5001, $N5001, $N5002
    unless $I5001 goto if375_else765 
    find_lex $P5006, "$caps"
    set fb_tmp_82, $P5006
    repr_defined $I5003, fb_tmp_82
    unless $I5003 goto if378_else770 
    set $S5002, _lex_param_0
    set $P5007, fb_tmp_82[$S5002]
    set $P5009, $P5007
    goto if378_end771
  if378_else770:
    null $P5008
    set $P5009, $P5008
  if378_end771:
    unless_null $P5009, vivi_379772
    nqp_get_sc_object $P5010, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P5009, $P5010
  vivi_379772:
    find_lex $P5011, "$submatch"
    push $P5009, $P5011
    set $P5014, $P5009
    goto if375_end766
  if375_else765:
    find_lex $P5012, "$caps"
    set $S5003, _lex_param_0
    find_lex $P5013, "$submatch"
    set $P5012[$S5003], $P5013
    set $P5014, $P5013
  if375_end766:
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "!cursor_init" :subid("cuid_35_1381281785.71956") :anon :lex :outer("cuid_82_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 560
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :named("p") :optional 
    .param int haz_param_14 :opt_flag 
    .param pmc _lex_param_3 :named("c") :optional 
    .param int haz_param_15 :opt_flag 
    .param pmc _lex_param_4 :named("shared") :optional 
    .param int haz_param_16 :opt_flag 
    .lex "$new", $P101 
    .lex "self", _lex_param_0 
    .lex "$orig", _lex_param_1 
    .lex "$p", _lex_param_2 
    .lex "$c", _lex_param_3 
    .lex "$shared", _lex_param_4 
    if haz_param_14, default780
    box $P5020, 0
    set _lex_param_2, $P5020
  default780:
    if haz_param_15, default781
    nqp_get_sc_object $P5021, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set _lex_param_3, $P5021
  default781:
    if haz_param_16, default782
    nqp_get_sc_object $P5022, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set _lex_param_4, $P5022
  default782:
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P101, $P5001
.annotate 'line', 561
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."CREATE"()
    set $P101, $P5003
    if _lex_param_4 goto unless380_end777 
.annotate 'line', 562
    nqp_get_sc_object $P5005, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 32
    repr_instance_of $P5004, $P5005
    set _lex_param_4, $P5004
    nqp_get_sc_object $P5006, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 32
    setattribute _lex_param_4, $P5006, "$!orig", _lex_param_1
    nqp_get_sc_object $P5007, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 32
    set $S5002, _lex_param_1
    find_encoding $I5001, "ucs4"
    trans_encoding $S5001, $S5002, $I5001
    repr_bind_attr_str _lex_param_4, $P5007, "$!target", 1, $S5001
    nqp_get_sc_object $P5008, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 32
    repr_bind_attr_int _lex_param_4, $P5008, "$!highwater", 2, 0
    nqp_get_sc_object $P5009, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 32
    new $P5010, 'ResizableStringArray'
    setattribute _lex_param_4, $P5009, "@!highexpect", $P5010
    nqp_get_sc_object $P5011, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 32
    new $P5012, 'Hash'
    setattribute _lex_param_4, $P5011, "%!marks", $P5012
  unless380_end777:
    find_lex $P5013, "$?CLASS"
    setattribute $P101, $P5013, "$!shared", _lex_param_4
    defined $I5002, _lex_param_3
    unless $I5002 goto if381_else778 
.annotate 'line', 572
    find_lex $P5014, "$?CLASS"
    repr_bind_attr_int $P101, $P5014, "$!from", -1
    find_lex $P5015, "$?CLASS"
    set $I5003, _lex_param_3
    repr_bind_attr_int $P101, $P5015, "$!pos", $I5003
    goto if381_end779
  if381_else778:
.annotate 'line', 576
    find_lex $P5016, "$?CLASS"
    set $I5004, _lex_param_2
    repr_bind_attr_int $P101, $P5016, "$!from", $I5004
    find_lex $P5017, "$?CLASS"
    set $I5005, _lex_param_2
    repr_bind_attr_int $P101, $P5017, "$!pos", $I5005
  if381_end779:
    nqp_get_sc_object $P5018, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 32
.annotate 'line', 580
    $P5019 = $P101."!cursor_start_cur"()
    setattribute _lex_param_4, $P5018, "$!fail_cursor", $P5019
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "!cursor_start_all" :subid("cuid_36_1381281785.71956") :anon :lex :outer("cuid_82_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 588
    .param pmc _lex_param_0 
    .lex "@start_result", $P101 
    .lex "$new", $P102 
    .lex "$sub", $P103 
    .lex "self", _lex_param_0 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P102, $P5002
    nqp_get_sc_object $P5003, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P103, $P5003
    nqp_decontainerize $P5005, _lex_param_0
    repr_instance_of $P5004, $P5005
    set $P102, $P5004
    getinterp $P5006
    set $P5006, $P5006['sub';1]
    set $P103, $P5006
    find_lex $P5007, "$?CLASS"
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_obj $P5010, $P5008, $P5009, "$!shared"
    setattribute $P102, $P5007, "$!shared", $P5010
    find_lex $P5011, "$?CLASS"
    get_sub_code_object $P5012, $P103
    unless_null $P5012, vivi_382783
    set $P5012, $P103
  vivi_382783:
    setattribute $P102, $P5011, "$!regexsub", $P5012
    nqp_decontainerize $P5013, _lex_param_0
    find_lex $P5014, "$?CLASS"
    repr_get_attr_obj $P5015, $P5013, $P5014, "$!restart"
    defined $I5001, $P5015
    unless $I5001 goto if383_else784 
.annotate 'line', 596
    find_lex $P5016, "$?CLASS"
    nqp_decontainerize $P5017, _lex_param_0
    find_lex $P5018, "$?CLASS"
    repr_get_attr_int $I5002, $P5017, $P5018, "$!pos"
    repr_bind_attr_int $P102, $P5016, "$!pos", $I5002
    nqp_decontainerize $P5019, _lex_param_0
    find_lex $P5020, "$?CLASS"
    repr_get_attr_obj $P5021, $P5019, $P5020, "$!cstack"
    unless $P5021 goto if384_end787 
    find_lex $P5022, "$?CLASS"
    nqp_decontainerize $P5024, _lex_param_0
    find_lex $P5025, "$?CLASS"
    repr_get_attr_obj $P5026, $P5024, $P5025, "$!cstack"
    repr_clone $P5023, $P5026
    setattribute $P102, $P5022, "$!cstack", $P5023
  if384_end787:
    set $P101[0], $P102
    nqp_decontainerize $P5027, _lex_param_0
    find_lex $P5028, "$?CLASS"
    repr_get_attr_obj $P5029, $P5027, $P5028, "$!shared"
    nqp_get_sc_object $P5030, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 32
    repr_get_attr_str $S5001, $P5029, $P5030, "$!target", 1
    box $P5031, $S5001
    set $P101[1], $P5031
    find_lex $P5032, "$?CLASS"
    nqp_decontainerize $P5033, _lex_param_0
    find_lex $P5034, "$?CLASS"
    repr_get_attr_int $I5003, $P5033, $P5034, "$!from"
    repr_bind_attr_int $P102, $P5032, "$!from", $I5003
    box $P5035, $I5003
    set $P101[2], $P5035
    find_lex $P5036, "$?CLASS"
    set $P101[3], $P5036
    find_lex $P5037, "$?CLASS"
    nqp_decontainerize $P5039, _lex_param_0
    find_lex $P5040, "$?CLASS"
    repr_get_attr_obj $P5041, $P5039, $P5040, "$!bstack"
    repr_clone $P5038, $P5041
    setattribute $P102, $P5037, "$!bstack", $P5038
    set $P101[4], $P5038
    find_lex $P5042, "$RESTART"
    set $P101[5], $P5042
    set $P5057, $P101
    goto if383_end785
  if383_else784:
.annotate 'line', 607
    find_lex $P5043, "$?CLASS"
    repr_bind_attr_int $P102, $P5043, "$!pos", -3
    set $P101[0], $P102
    nqp_decontainerize $P5044, _lex_param_0
    find_lex $P5045, "$?CLASS"
    repr_get_attr_obj $P5046, $P5044, $P5045, "$!shared"
    nqp_get_sc_object $P5047, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 32
    repr_get_attr_str $S5002, $P5046, $P5047, "$!target", 1
    box $P5048, $S5002
    set $P101[1], $P5048
    find_lex $P5049, "$?CLASS"
    nqp_decontainerize $P5050, _lex_param_0
    find_lex $P5051, "$?CLASS"
    repr_get_attr_int $I5004, $P5050, $P5051, "$!pos"
    repr_bind_attr_int $P102, $P5049, "$!from", $I5004
    box $P5052, $I5004
    set $P101[2], $P5052
    find_lex $P5053, "$?CLASS"
    set $P101[3], $P5053
    find_lex $P5054, "$?CLASS"
    new $P5055, 'ResizableIntegerArray'
    setattribute $P102, $P5054, "$!bstack", $P5055
    set $P101[4], $P5055
    find_lex $P5056, "$NO_RESTART"
    set $P101[5], $P5056
    set $P5057, $P101
  if383_end785:
    .return ($P5057) 
.end
.HLL "nqp"
.namespace []
.sub "!cursor_start_cur" :subid("cuid_37_1381281785.71956") :anon :lex :outer("cuid_82_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 620
    .param pmc _lex_param_0 
    .lex "$new", $P101 
    .lex "$sub", $P102 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P102, $P5002
    nqp_decontainerize $P5004, _lex_param_0
    repr_instance_of $P5003, $P5004
    set $P101, $P5003
    getinterp $P5005
    set $P5005, $P5005['sub';1]
    set $P102, $P5005
    find_lex $P5006, "$?CLASS"
    nqp_decontainerize $P5007, _lex_param_0
    find_lex $P5008, "$?CLASS"
    repr_get_attr_obj $P5009, $P5007, $P5008, "$!shared"
    setattribute $P101, $P5006, "$!shared", $P5009
    find_lex $P5010, "$?CLASS"
    get_sub_code_object $P5011, $P102
    unless_null $P5011, vivi_385788
    set $P5011, $P102
  vivi_385788:
    setattribute $P101, $P5010, "$!regexsub", $P5011
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_obj $P5014, $P5012, $P5013, "$!restart"
    defined $I5001, $P5014
    unless $I5001 goto if386_end790 
.annotate 'line', 627
    box $P5015, "!cursor_start_cur cannot restart a cursor"
    die $P5015
  if386_end790:
    find_lex $P5016, "$?CLASS"
    repr_bind_attr_int $P101, $P5016, "$!pos", -3
    find_lex $P5017, "$?CLASS"
    nqp_decontainerize $P5018, _lex_param_0
    find_lex $P5019, "$?CLASS"
    repr_get_attr_int $I5002, $P5018, $P5019, "$!pos"
    repr_bind_attr_int $P101, $P5017, "$!from", $I5002
    find_lex $P5020, "$?CLASS"
    new $P5021, 'ResizableIntegerArray'
    setattribute $P101, $P5020, "$!bstack", $P5021
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "!cursor_start_fail" :subid("cuid_38_1381281785.71956") :anon :lex :outer("cuid_82_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 636
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5002, _lex_param_0
    find_lex $P5003, "$?CLASS"
    repr_get_attr_obj $P5004, $P5002, $P5003, "$!shared"
    nqp_get_sc_object $P5005, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 32
    getattribute $P5001, $P5004, $P5005, "$!fail_cursor"
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "!cursor_start_subcapture" :subid("cuid_39_1381281785.71956") :anon :lex :outer("cuid_82_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 640
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$new", $P101 
    .lex "self", _lex_param_0 
    .lex "$from", _lex_param_1 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P101, $P5001
    nqp_decontainerize $P5003, _lex_param_0
    repr_instance_of $P5002, $P5003
    set $P101, $P5002
    find_lex $P5004, "$?CLASS"
    nqp_decontainerize $P5005, _lex_param_0
    find_lex $P5006, "$?CLASS"
    repr_get_attr_obj $P5007, $P5005, $P5006, "$!shared"
    setattribute $P101, $P5004, "$!shared", $P5007
    find_lex $P5008, "$?CLASS"
    set $I5001, _lex_param_1
    repr_bind_attr_int $P101, $P5008, "$!from", $I5001
    find_lex $P5009, "$?CLASS"
    repr_bind_attr_int $P101, $P5009, "$!pos", -3
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "!cursor_capture" :subid("cuid_40_1381281785.71956") :anon :lex :outer("cuid_82_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 648
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "self", _lex_param_0 
    .lex "$capture", _lex_param_1 
    .lex "$name", _lex_param_2 
    nqp_decontainerize $P5001, _lex_param_0
    find_lex $P5002, "$?CLASS"
    null $P5003
    repr_bind_attr_obj $P5001, $P5002, "$!match", $P5003
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!cstack"
    defined $I5001, $P5006
    if $I5001 goto unless387_end792 
    nqp_decontainerize $P5007, _lex_param_0
    find_lex $P5008, "$?CLASS"
    new $P5009, 'ResizablePMCArray'
    repr_bind_attr_obj $P5007, $P5008, "$!cstack", $P5009
  unless387_end792:
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_obj $P5012, $P5010, $P5011, "$!cstack"
    push $P5012, _lex_param_1
    find_lex $P5013, "$?CLASS"
    setattribute _lex_param_1, $P5013, "$!name", _lex_param_2
    nqp_decontainerize $P5014, _lex_param_0
    find_lex $P5015, "$?CLASS"
    repr_get_attr_obj $P5016, $P5014, $P5015, "$!bstack"
    push $P5016, 0
    nqp_decontainerize $P5017, _lex_param_0
    find_lex $P5018, "$?CLASS"
    repr_get_attr_obj $P5019, $P5017, $P5018, "$!bstack"
    nqp_decontainerize $P5020, _lex_param_0
    find_lex $P5021, "$?CLASS"
    repr_get_attr_int $I5002, $P5020, $P5021, "$!pos"
    push $P5019, $I5002
    nqp_decontainerize $P5022, _lex_param_0
    find_lex $P5023, "$?CLASS"
    repr_get_attr_obj $P5024, $P5022, $P5023, "$!bstack"
    push $P5024, 0
    nqp_decontainerize $P5025, _lex_param_0
    find_lex $P5026, "$?CLASS"
    repr_get_attr_obj $P5027, $P5025, $P5026, "$!bstack"
    nqp_decontainerize $P5028, _lex_param_0
    find_lex $P5029, "$?CLASS"
    repr_get_attr_obj $P5030, $P5028, $P5029, "$!cstack"
    elements $I5003, $P5030
    push $P5027, $I5003
    nqp_decontainerize $P5031, _lex_param_0
    find_lex $P5032, "$?CLASS"
    repr_get_attr_obj $P5033, $P5031, $P5032, "$!cstack"
    .return ($P5033) 
.end
.HLL "nqp"
.namespace []
.sub "!cursor_push_cstack" :subid("cuid_41_1381281785.71956") :anon :lex :outer("cuid_82_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 660
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$capture", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    find_lex $P5002, "$?CLASS"
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!cstack"
    defined $I5001, $P5003
    if $I5001 goto unless388_end794 
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    new $P5006, 'ResizablePMCArray'
    repr_bind_attr_obj $P5004, $P5005, "$!cstack", $P5006
  unless388_end794:
    nqp_decontainerize $P5007, _lex_param_0
    find_lex $P5008, "$?CLASS"
    repr_get_attr_obj $P5009, $P5007, $P5008, "$!cstack"
    push $P5009, _lex_param_1
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_obj $P5012, $P5010, $P5011, "$!cstack"
    .return ($P5012) 
.end
.HLL "nqp"
.namespace []
.sub "!cursor_pass" :subid("cuid_42_1381281785.71956") :anon :lex :outer("cuid_82_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 667
    .param pmc _lex_param_0 
    .param int _lex_param_1 
    .param pmc _lex_param_2 :optional 
    .param int haz_param_17 :opt_flag 
    .param pmc _lex_param_3 :named("backtrack") :optional 
    .param int haz_param_18 :opt_flag 
    .lex "self", _lex_param_0 
    .lex "$pos", _lex_param_1 
    .lex "$name", _lex_param_2 
    .lex "$backtrack", _lex_param_3 
    if haz_param_17, default801
    nqp_get_sc_object $P5017, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set _lex_param_2, $P5017
  default801:
    if haz_param_18, default802
    nqp_get_sc_object $P5018, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set _lex_param_3, $P5018
  default802:
    nqp_decontainerize $P5001, _lex_param_0
    find_lex $P5002, "$?CLASS"
    find_lex $P5003, "$pass_mark"
    repr_bind_attr_obj $P5001, $P5002, "$!match", $P5003
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_bind_attr_int $P5004, $P5005, "$!pos", _lex_param_1
    unless _lex_param_3 goto if389_end796 
    nqp_decontainerize $P5006, _lex_param_0
    find_lex $P5007, "$?CLASS"
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_obj $P5010, $P5008, $P5009, "$!regexsub"
    repr_bind_attr_obj $P5006, $P5007, "$!restart", $P5010
  if389_end796:
    if _lex_param_3 goto unless390_end798 
    nqp_decontainerize $P5011, _lex_param_0
    find_lex $P5012, "$?CLASS"
    null $P5013
    repr_bind_attr_obj $P5011, $P5012, "$!bstack", $P5013
  unless390_end798:
    set $P5016, _lex_param_2
    unless _lex_param_2 goto if391_end800 
.annotate 'line', 674
    nqp_decontainerize $P5014, _lex_param_0
    $P5015 = $P5014."!reduce"(_lex_param_2)
    set $P5016, $P5015
  if391_end800:
    .return ($P5016) 
.end
.HLL "nqp"
.namespace []
.sub "!cursor_fail" :subid("cuid_43_1381281785.71956") :anon :lex :outer("cuid_82_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 677
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    find_lex $P5002, "$?CLASS"
    null $P5003
    repr_bind_attr_obj $P5001, $P5002, "$!match", $P5003
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    null $P5006
    repr_bind_attr_obj $P5004, $P5005, "$!bstack", $P5006
    nqp_decontainerize $P5007, _lex_param_0
    find_lex $P5008, "$?CLASS"
    repr_bind_attr_int $P5007, $P5008, "$!pos", -3
    .return (-3) 
.end
.HLL "nqp"
.namespace []
.sub "!cursor_pos" :subid("cuid_44_1381281785.71956") :anon :lex :outer("cuid_82_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 683
    .param pmc _lex_param_0 
    .param int _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$pos", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    find_lex $P5002, "$?CLASS"
    repr_bind_attr_int $P5001, $P5002, "$!pos", _lex_param_1
    .return (_lex_param_1) 
.end
.HLL "nqp"
.namespace []
.sub "!cursor_next" :subid("cuid_45_1381281785.71956") :anon :lex :outer("cuid_82_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 687
    .param pmc _lex_param_0 
    .const 'Sub' $P5012 = 'cuid_102_1381281785.71956' 
    capture_lex $P5012 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    find_lex $P5002, "$?CLASS"
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!restart"
    defined $I5001, $P5003
    unless $I5001 goto if392_else803 
.annotate 'line', 688
.annotate 'line', 689
    nqp_decontainerize $P5007, _lex_param_0
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!restart"
    $P5008 = $P5006($P5007)
    set $P5011, $P5008
    goto if392_end804
  if392_else803:
    .const 'Sub' $P5009 = 'cuid_102_1381281785.71956' 
    capture_lex $P5009
    $P5010 = $P5009()
    set $P5011, $P5010
  if392_end804:
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_102_1381281785.71956") :anon :lex :outer("cuid_45_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 691
    .lex "$cur", $P101 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P101, $P5001
.annotate 'line', 692
    find_lex $P5003, "self"
    nqp_decontainerize $P5002, $P5003
    $P5004 = $P5002."!cursor_start_cur"()
    set $P101, $P5004
.annotate 'line', 693
    $P101."!cursor_fail"()
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "!cursor_more" :subid("cuid_46_1381281785.71956") :anon :lex :outer("cuid_82_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 698
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy :named 
    .lex "$new", $P101 
    .lex "self", _lex_param_0 
    .lex "%opts", _lex_param_1 
    .local pmc fb_tmp_83 
    .local pmc fb_tmp_84 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P101, $P5001
    root_new $P102, ['parrot';'Continuation']
    set_label $P102, lexotic_805
    .lex "RETURN", $P102
    set fb_tmp_83, _lex_param_1
    repr_defined $I5001, fb_tmp_83
    unless $I5001 goto if394_else809 
    set $P5002, fb_tmp_83["ex"]
    set $P5004, $P5002
    goto if394_end810
  if394_else809:
    null $P5003
    set $P5004, $P5003
  if394_end810:
    unless_null $P5004, vivi_395811
    nqp_get_sc_object $P5005, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P5004, $P5005
  vivi_395811:
    unless $P5004 goto if393_end808 
.annotate 'line', 699
    nqp_decontainerize $P5006, _lex_param_0
    $P5007 = $P5006."!cursor_next"()
    $P5008 = "RETURN"($P5007)
  if393_end808:
.annotate 'line', 700
    nqp_decontainerize $P5009, _lex_param_0
    $P5010 = $P5009."CREATE"()
    set $P101, $P5010
    find_lex $P5011, "$?CLASS"
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_obj $P5014, $P5012, $P5013, "$!shared"
    setattribute $P101, $P5011, "$!shared", $P5014
    find_lex $P5015, "$?CLASS"
    repr_bind_attr_int $P101, $P5015, "$!from", -1
    find_lex $P5016, "$?CLASS"
    set fb_tmp_84, _lex_param_1
    repr_defined $I5002, fb_tmp_84
    unless $I5002 goto if398_else816 
    set $P5017, fb_tmp_84["ov"]
    set $P5019, $P5017
    goto if398_end817
  if398_else816:
    null $P5018
    set $P5019, $P5018
  if398_end817:
    unless_null $P5019, vivi_399818
    nqp_get_sc_object $P5020, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P5019, $P5020
  vivi_399818:
    set $P5025, $P5019
    if $P5019 goto unless397_end815 
    nqp_decontainerize $P5021, _lex_param_0
    find_lex $P5022, "$?CLASS"
    repr_get_attr_int $I5004, $P5021, $P5022, "$!from"
    set $N5001, $I5004
    nqp_decontainerize $P5023, _lex_param_0
    find_lex $P5024, "$?CLASS"
    repr_get_attr_int $I5005, $P5023, $P5024, "$!pos"
    set $N5002, $I5005
    isge $I5003, $N5001, $N5002
    box $P5026, $I5003
    set $P5025, $P5026
  unless397_end815:
    unless $P5025 goto if396_else812 
    nqp_decontainerize $P5027, _lex_param_0
    find_lex $P5028, "$?CLASS"
    repr_get_attr_int $I5007, $P5027, $P5028, "$!from"
    add $I5006, $I5007, 1
    set $I5009, $I5006
    goto if396_end813
  if396_else812:
    nqp_decontainerize $P5029, _lex_param_0
    find_lex $P5030, "$?CLASS"
    repr_get_attr_int $I5008, $P5029, $P5030, "$!pos"
    set $I5009, $I5008
  if396_end813:
    repr_bind_attr_int $P101, $P5016, "$!pos", $I5009
.annotate 'line', 705
    nqp_decontainerize $P5031, _lex_param_0
    find_lex $P5032, "$?CLASS"
    repr_get_attr_obj $P5033, $P5031, $P5032, "$!regexsub"
    $P5034 = $P5033($P101)
    goto lexotic_806
  lexotic_805:
    .get_results ($P5034)
  lexotic_806:
    .return ($P5034) 
.end
.HLL "nqp"
.namespace []
.sub "!reduce" :subid("cuid_47_1381281785.71956") :anon :lex :outer("cuid_82_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 708
    .param pmc _lex_param_0 
    .param string _lex_param_1 
    .lex "$actions", $P101 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P101, $P5001
    find_dynamic_lex $P5002, "$*ACTIONS"
    set $P101, $P5002
    isnull $I5002, $P101
    not $I5001, $I5002
    set $I5004, $I5001
    unless $I5001 goto if401_end822 
    can $I5003, $P101, _lex_param_1
    set $I5004, $I5003
  if401_end822:
    box $P5008, $I5004
    set $P5007, $P5008
    unless $I5004 goto if400_end820 
.annotate 'line', 710
    nqp_decontainerize $P5004, _lex_param_0
    $P5005 = $P5004."MATCH"()
    find_method $P5003, $P101, _lex_param_1
    $P5006 = $P5003($P101, $P5005)
    set $P5007, $P5006
  if400_end820:
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "!reduce_with_match" :subid("cuid_48_1381281785.71956") :anon :lex :outer("cuid_82_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 714
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .lex "$actions", $P101 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    .lex "$key", _lex_param_2 
    .lex "$match", _lex_param_3 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P101, $P5001
    find_dynamic_lex $P5002, "$*ACTIONS"
    set $P101, $P5002
    isnull $I5002, $P101
    not $I5001, $I5002
    set $I5004, $I5001
    unless $I5001 goto if403_end826 
    set $S5001, _lex_param_1
    can $I5003, $P101, $S5001
    set $I5004, $I5003
  if403_end826:
    box $P5006, $I5004
    set $P5005, $P5006
    unless $I5004 goto if402_end824 
.annotate 'line', 716
    set $S5002, _lex_param_1
    find_method $P5003, $P101, $S5002
    $P5004 = $P5003($P101, _lex_param_3, _lex_param_2)
    set $P5005, $P5004
  if402_end824:
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "!shared" :subid("cuid_49_1381281785.71956") :anon :lex :outer("cuid_82_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 720
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    find_lex $P5002, "$?CLASS"
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!shared"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "!protoregex" :subid("cuid_50_1381281785.71956") :anon :lex :outer("cuid_82_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 723
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5042 = 'cuid_103_1381281785.71956' 
    capture_lex $P5042 
    .lex "$shared", $P101 
    .lex "$nfa", $P102 
    .lex "@fates", $P103 
    .lex "$highwater", $I101 
    .lex "@rxfate", $P104 
    .lex "$cur", $P105 
    .lex "$rxname", $P106 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    .local pmc fb_tmp_85 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P102, $P5002
    new $P5003, 'ResizablePMCArray'
    set $P103, $P5003
    set $I101, 0
    new $P5004, 'ResizablePMCArray'
    set $P104, $P5004
    nqp_get_sc_object $P5005, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P105, $P5005
    nqp_get_sc_object $P5006, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P106, $P5006
    nqp_decontainerize $P5007, _lex_param_0
    find_lex $P5008, "$?CLASS"
    repr_get_attr_obj $P5009, $P5007, $P5008, "$!shared"
    set $P101, $P5009
.annotate 'line', 726
    nqp_decontainerize $P5011, _lex_param_0
    get_how $P5010, $P5011
    nqp_decontainerize $P5012, _lex_param_0
    .const 'Sub' $P5014 = 'cuid_103_1381281785.71956' 
    capture_lex $P5014
    newclosure $P5013, $P5014
    $P5015 = $P5010."cache"($P5012, _lex_param_1, $P5013)
    set $P102, $P5015
.annotate 'line', 727
    nqp_get_sc_object $P5016, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 32
    repr_get_attr_str $S5001, $P101, $P5016, "$!target", 1
    nqp_decontainerize $P5017, _lex_param_0
    find_lex $P5018, "$?CLASS"
    repr_get_attr_int $I5001, $P5017, $P5018, "$!pos"
    $P5019 = $P102."run"($S5001, $I5001)
    set $P103, $P5019
    nqp_get_sc_object $P5020, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 32
    repr_get_attr_int $I5002, $P101, $P5020, "$!highwater", 2
    set $I101, $I5002
    nqp_decontainerize $P5021, _lex_param_0
    find_lex $P5022, "$?CLASS"
    repr_get_attr_int $I5004, $P5021, $P5022, "$!pos"
    set $N5001, $I5004
    set $N5002, $I101
    isgt $I5003, $N5001, $N5002
    unless $I5003 goto if404_end828 
.annotate 'line', 731
    nqp_get_sc_object $P5023, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 32
    nqp_decontainerize $P5024, _lex_param_0
    find_lex $P5025, "$?CLASS"
    repr_get_attr_int $I5005, $P5024, $P5025, "$!pos"
    repr_bind_attr_int $P101, $P5023, "$!highwater", 2, $I5005
  if404_end828:
.annotate 'line', 736
    $P5026 = $P102."states"()
    set fb_tmp_85, $P5026
    repr_defined $I5006, fb_tmp_85
    unless $I5006 goto if405_else829 
    set $P5027, fb_tmp_85[0]
    set $P5029, $P5027
    goto if405_end830
  if405_else829:
    null $P5028
    set $P5029, $P5028
  if405_end830:
    unless_null $P5029, vivi_406831
    nqp_get_sc_object $P5030, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P5029, $P5030
  vivi_406831:
    set $P104, $P5029
  while407_test832:
    set $P5038, $P103
    unless $P103 goto while407_done836 
  while407_redo834:
.annotate 'line', 739
    pop $I5007, $P103
    set $P5031, $P104[$I5007]
    set $P106, $P5031
.annotate 'line', 742
    nqp_decontainerize $P5032, _lex_param_0
    set $S5002, $P106
    $P5033 = $P5032.$S5002()
    set $P105, $P5033
    find_lex $P5034, "$?CLASS"
    repr_get_attr_int $I5009, $P105, $P5034, "$!pos"
    set $N5003, $I5009
    set $N5004, 0
    isge $I5008, $N5003, $N5004
    box $P5037, $I5008
    set $P5036, $P5037
    unless $I5008 goto if408_end838 
    find_lex $P5035, "@EMPTY"
    set $P103, $P5035
    set $P5036, $P103
  if408_end838:
    set $P5038, $P5036
    goto while407_test832 
  while407_done836:
    set $P5039, $P105
    defined $I5010, $P5039
    if $I5010, defor839
    nqp_get_sc_object $P5041, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 32
    getattribute $P5040, $P101, $P5041, "$!fail_cursor"
    set $P5039, $P5040
  defor839:
    .return ($P5039) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_103_1381281785.71956") :anon :lex :outer("cuid_50_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 726

    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    find_lex $P5003, "$name"
    $P5004 = $P5001."!protoregex_nfa"($P5003)
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "!protoregex_nfa" :subid("cuid_51_1381281785.71956") :anon :lex :outer("cuid_82_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 748
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5026 = 'cuid_104_1381281785.71956' 
    capture_lex $P5026 
    .const 'Sub' $P5026 = 'cuid_105_1381281785.71956' 
    capture_lex $P5026 
    .lex "%protorx", $P101 
    .lex "$nfa", $P102 
    .lex "@fates", $P103 
    .lex "$start", $I101 
    .lex "$fate", $I102 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    .local pmc fb_tmp_86 
    .local pmc fb_tmp_87 
    new $P5001, 'Hash'
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P102, $P5002
    new $P5003, 'ResizablePMCArray'
    set $P103, $P5003
    set $I101, 0
    set $I102, 0
.annotate 'line', 749
    nqp_decontainerize $P5005, _lex_param_0
    get_how $P5004, $P5005
    nqp_decontainerize $P5006, _lex_param_0
    .const 'Sub' $P5008 = 'cuid_104_1381281785.71956' 
    capture_lex $P5008
    newclosure $P5007, $P5008
    $P5009 = $P5004."cache"($P5006, "!protoregex_table", $P5007)
    set $P101, $P5009
.annotate 'line', 750
    nqp_get_sc_object $P5010, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 3
    $P5011 = $P5010."new"()
    set $P102, $P5011
.annotate 'line', 751
    $P5012 = $P102."states"()
    set fb_tmp_86, $P5012
    repr_defined $I5001, fb_tmp_86
    unless $I5001 goto if409_else840 
    set $P5013, fb_tmp_86[0]
    set $P5015, $P5013
    goto if409_end841
  if409_else840:
    null $P5014
    set $P5015, $P5014
  if409_end841:
    unless_null $P5015, vivi_410842
    nqp_get_sc_object $P5016, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P5015, $P5016
  vivi_410842:
    set $P103, $P5015
    set $I101, 1
    set $I102, 0
    set $S5001, _lex_param_1
    exists $I5002, $P101[$S5001]
    unless $I5002 goto if411_end844 
.annotate 'line', 754
    set fb_tmp_87, $P101
    repr_defined $I5003, fb_tmp_87
    unless $I5003 goto if412_else845 
    set $S5002, _lex_param_1
    set $P5020, fb_tmp_87[$S5002]
    set $P5022, $P5020
    goto if412_end846
  if412_else845:
    null $P5021
    set $P5022, $P5021
  if412_end846:
    unless_null $P5022, vivi_413847
    nqp_get_sc_object $P5023, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P5022, $P5023
  vivi_413847:
    set $P5017, $P5022
    iter $P5019, $P5022
  for_next848:
    unless $P5019, for_done850
    shift $P5025, $P5019
  for_redo849:
    .const 'Sub' $P5024 = 'cuid_105_1381281785.71956' 
    capture_lex $P5024
    $P5017 = $P5024($P5025)
    goto for_next848
  for_done850:
  if411_end844:
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_104_1381281785.71956") :anon :lex :outer("cuid_51_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 749

    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    $P5003 = $P5001."!protoregex_table"()
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_105_1381281785.71956") :anon :lex :outer("cuid_51_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 755
    .param pmc _lex_param_0 
    .lex "$rxname", _lex_param_0 
    find_lex $I5002, "$fate"
    add $I5001, $I5002, 1
    store_lex "$fate", $I5001
    find_lex $P5001, "@fates"
    find_lex $I5003, "$fate"
    set $P5001[$I5003], _lex_param_0
.annotate 'line', 758
    find_lex $P5002, "$nfa"
    find_lex $I5004, "$start"
    find_lex $I5005, "$fate"
    find_lex $P5004, "self"
    nqp_decontainerize $P5003, $P5004
    $P5005 = $P5002."mergesubrule"($I5004, 0, $I5005, $P5003, _lex_param_0)
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "!protoregex_table" :subid("cuid_52_1381281785.71956") :anon :lex :outer("cuid_82_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 764
    .param pmc _lex_param_0 
    .const 'Sub' $P5011 = 'cuid_107_1381281785.71956' 
    capture_lex $P5011 
    .lex "%protorx", $P101 
    .lex "self", _lex_param_0 
    new $P5001, 'Hash'
    set $P101, $P5001
.annotate 'line', 766
    nqp_decontainerize $P5006, _lex_param_0
    get_how $P5005, $P5006
    nqp_decontainerize $P5007, _lex_param_0
    $P5008 = $P5005."methods"($P5007)
    set $P5002, $P5008
    iter $P5004, $P5008
  for_next858:
    unless $P5004, for_done860
    shift $P5010, $P5004
  for_redo859:
    .const 'Sub' $P5009 = 'cuid_107_1381281785.71956' 
    capture_lex $P5009
    $P5002 = $P5009($P5010)
    goto for_next858
  for_done860:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_107_1381281785.71956") :anon :lex :outer("cuid_52_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 766
    .param pmc _lex_param_0 
    .const 'Sub' $P5006 = 'cuid_106_1381281785.71956' 
    capture_lex $P5006 
    .lex "$methname", $S101 
    .lex "$sympos", $I101 
    .lex "$meth", _lex_param_0 
    set $S101, ""
    set $I101, 0
.annotate 'line', 767
    $P5001 = _lex_param_0."name"()
    set $S5001, $P5001
    set $S101, $S5001
    index $I5001, $S101, ":sym<", 0
    set $I101, $I5001
    set $N5001, $I101
    set $N5002, 0
    isgt $I5002, $N5001, $N5002
    box $P5005, $I5002
    set $P5004, $P5005
    unless $I5002 goto if414_end852 
    .const 'Sub' $P5002 = 'cuid_106_1381281785.71956' 
    capture_lex $P5002
    $P5003 = $P5002()
    set $P5004, $P5003
  if414_end852:
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_106_1381281785.71956") :anon :lex :outer("cuid_107_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 769
    .lex "$prefix", $S101 
    .local pmc fb_tmp_88 
    set $S101, ""
    find_lex $S5002, "$methname"
    find_lex $I5001, "$sympos"
    substr $S5001, $S5002, 0, $I5001
    set $S101, $S5001
    find_lex $P5001, "%protorx"
    exists $I5002, $P5001[$S101]
    if $I5002 goto unless415_end854 
    find_lex $P5002, "%protorx"
    new $P5003, 'ResizablePMCArray'
    set $P5002[$S101], $P5003
  unless415_end854:
    find_lex $P5004, "%protorx"
    set fb_tmp_88, $P5004
    repr_defined $I5003, fb_tmp_88
    unless $I5003 goto if416_else855 
    set $P5005, fb_tmp_88[$S101]
    set $P5007, $P5005
    goto if416_end856
  if416_else855:
    null $P5006
    set $P5007, $P5006
  if416_end856:
    unless_null $P5007, vivi_417857
    nqp_get_sc_object $P5008, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P5007, $P5008
  vivi_417857:
    find_lex $S5003, "$methname"
    box $P5009, $S5003
    push $P5007, $P5009
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "!alt" :subid("cuid_53_1381281785.71956") :anon :lex :outer("cuid_82_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 778
    .param pmc _lex_param_0 
    .param int _lex_param_1 
    .param string _lex_param_2 
    .param pmc _lex_param_3 :optional 
    .param int haz_param_19 :opt_flag 
    .const 'Sub' $P5023 = 'cuid_108_1381281785.71956' 
    capture_lex $P5023 
    .lex "$shared", $P101 
    .lex "$highwater", $I101 
    .lex "$nfa", $P102 
    .lex "self", _lex_param_0 
    .lex "$pos", _lex_param_1 
    .lex "$name", _lex_param_2 
    .lex "@labels", _lex_param_3 
    if haz_param_19, default863
    new $P5022, 'ResizablePMCArray'
    set _lex_param_3, $P5022
  default863:
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P101, $P5001
    set $I101, 0
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P102, $P5002
    nqp_decontainerize $P5003, _lex_param_0
    find_lex $P5004, "$?CLASS"
    repr_get_attr_obj $P5005, $P5003, $P5004, "$!shared"
    set $P101, $P5005
    nqp_get_sc_object $P5006, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 32
    repr_get_attr_int $I5001, $P101, $P5006, "$!highwater", 2
    set $I101, $I5001
    set $N5001, _lex_param_1
    set $N5002, $I101
    isgt $I5002, $N5001, $N5002
    unless $I5002 goto if418_end862 
.annotate 'line', 782
    nqp_get_sc_object $P5007, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 32
    repr_bind_attr_int $P101, $P5007, "$!highwater", 2, _lex_param_1
  if418_end862:
.annotate 'line', 787
    nqp_decontainerize $P5009, _lex_param_0
    get_how $P5008, $P5009
    nqp_decontainerize $P5010, _lex_param_0
    .const 'Sub' $P5012 = 'cuid_108_1381281785.71956' 
    capture_lex $P5012
    newclosure $P5011, $P5012
    $P5013 = $P5008."cache"($P5010, _lex_param_2, $P5011)
    set $P102, $P5013
.annotate 'line', 788
    nqp_get_sc_object $P5014, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 32
    repr_get_attr_str $S5001, $P101, $P5014, "$!target", 1
    nqp_decontainerize $P5015, _lex_param_0
    find_lex $P5016, "$?CLASS"
    repr_get_attr_obj $P5017, $P5015, $P5016, "$!bstack"
    nqp_decontainerize $P5018, _lex_param_0
    find_lex $P5019, "$?CLASS"
    repr_get_attr_obj $P5020, $P5018, $P5019, "$!cstack"
    $P5021 = $P102."run_alt"($S5001, _lex_param_1, $P5017, $P5020, _lex_param_3)
    .return ($P5021) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_108_1381281785.71956") :anon :lex :outer("cuid_53_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 787

    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    find_lex $P5004, "self"
    nqp_decontainerize $P5003, $P5004
    find_lex $P5005, "$?CLASS"
    repr_get_attr_obj $P5006, $P5003, $P5005, "$!regexsub"
    find_lex $S5001, "$name"
    $P5007 = $P5001."!alt_nfa"($P5006, $S5001)
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "!alt_nfa" :subid("cuid_54_1381281785.71956") :anon :lex :outer("cuid_82_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 791
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param string _lex_param_2 
    .const 'Sub' $P5016 = 'cuid_109_1381281785.71956' 
    capture_lex $P5016 
    .lex "$nfa", $P101 
    .lex "@fates", $P102 
    .lex "$start", $I101 
    .lex "$fate", $I102 
    .lex "self", _lex_param_0 
    .lex "$regex", _lex_param_1 
    .lex "$name", _lex_param_2 
    .local pmc fb_tmp_89 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P101, $P5001
    new $P5002, 'ResizablePMCArray'
    set $P102, $P5002
    set $I101, 0
    set $I102, 0
.annotate 'line', 792
    nqp_get_sc_object $P5003, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 3
    $P5004 = $P5003."new"()
    set $P101, $P5004
.annotate 'line', 793
    $P5005 = $P101."states"()
    set fb_tmp_89, $P5005
    repr_defined $I5001, fb_tmp_89
    unless $I5001 goto if419_else864 
    set $P5006, fb_tmp_89[0]
    set $P5008, $P5006
    goto if419_end865
  if419_else864:
    null $P5007
    set $P5008, $P5007
  if419_end865:
    unless_null $P5008, vivi_420866
    nqp_get_sc_object $P5009, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P5008, $P5009
  vivi_420866:
    set $P102, $P5008
    set $I101, 1
    set $I102, 0
.annotate 'line', 796
    $P5013 = _lex_param_1."ALT_NFA"(_lex_param_2)
    set $P5010, $P5013
    iter $P5012, $P5013
  for_next867:
    unless $P5012, for_done869
    shift $P5015, $P5012
  for_redo868:
    .const 'Sub' $P5014 = 'cuid_109_1381281785.71956' 
    capture_lex $P5014
    $P5010 = $P5014($P5015)
    goto for_next867
  for_done869:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_109_1381281785.71956") :anon :lex :outer("cuid_54_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 796
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    .local pmc tmp_8 
    find_lex $P5001, "@fates"
    find_lex $I5001, "$fate"
    find_lex $I5002, "$fate"
    box $P5002, $I5002
    set $P5001[$I5001], $P5002
.annotate 'line', 798
    find_lex $P5003, "$nfa"
    find_lex $I5003, "$start"
    find_lex $I5004, "$fate"
    find_lex $P5005, "self"
    nqp_decontainerize $P5004, $P5005
    $P5003."mergesubstates"($I5003, 0, $I5004, _lex_param_0, $P5004)
    find_lex $I5005, "$fate"
    box $P5006, $I5005
    set tmp_8, $P5006
    set $N5002, tmp_8
    set $N5003, 1
    add $N5001, $N5002, $N5003
    set $I5006, $N5001
    store_lex "$fate", $I5006
    .return (tmp_8) 
.end
.HLL "nqp"
.namespace []
.sub "!precompute_nfas" :subid("cuid_55_1381281785.71956") :anon :lex :outer("cuid_82_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 804
    .param pmc _lex_param_0 
    .const 'Sub' $P5023 = 'cuid_112_1381281785.71956' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_113_1381281785.71956' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_115_1381281785.71956' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_117_1381281785.71956' 
    capture_lex $P5023 
    .lex "%protorx", $P101 
    .lex "&precomp_alt_nfas", $P102 
    .lex "self", _lex_param_0 
    new $P5001, 'Hash'
    set $P101, $P5001
    .const 'Sub' $P5002 = 'cuid_112_1381281785.71956' 
    capture_lex $P5002
    set $P102, $P5002
.annotate 'line', 806
    nqp_decontainerize $P5004, _lex_param_0
    get_how $P5003, $P5004
    nqp_decontainerize $P5005, _lex_param_0
    .const 'Sub' $P5007 = 'cuid_113_1381281785.71956' 
    capture_lex $P5007
    newclosure $P5006, $P5007
    $P5008 = $P5003."cache"($P5005, "!protoregex_table", $P5006)
    set $P101, $P5008
    set $P5009, $P101
    iter $P5011, $P101
  for_next875:
    unless $P5011, for_done877
    shift $P5013, $P5011
  for_redo876:
    .const 'Sub' $P5012 = 'cuid_115_1381281785.71956' 
    capture_lex $P5012
    $P5009 = $P5012($P5013)
    goto for_next875
  for_done877:
.annotate 'line', 819
    nqp_decontainerize $P5018, _lex_param_0
    get_how $P5017, $P5018
    nqp_decontainerize $P5019, _lex_param_0
    $P5020 = $P5017."methods"($P5019)
    set $P5014, $P5020
    iter $P5016, $P5020
  for_next883:
    unless $P5016, for_done885
    shift $P5022, $P5016
  for_redo884:
    .const 'Sub' $P5021 = 'cuid_117_1381281785.71956' 
    capture_lex $P5021
    $P5014 = $P5021($P5022)
    goto for_next883
  for_done885:
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "precomp_alt_nfas" :subid("cuid_112_1381281785.71956") :anon :lex :outer("cuid_55_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 812
    .param pmc _lex_param_0 
    .const 'Sub' $P5009 = 'cuid_111_1381281785.71956' 
    capture_lex $P5009 
    .lex "$meth", _lex_param_0 
    can $I5001, _lex_param_0, "ALT_NFAS"
    box $P5008, $I5001
    set $P5007, $P5008
    unless $I5001 goto if421_end871 
.annotate 'line', 813
.annotate 'line', 814
    $P5004 = _lex_param_0."ALT_NFAS"()
    set $P5001, $P5004
    iter $P5003, $P5004
  for_next872:
    unless $P5003, for_done874
    shift $P5006, $P5003
  for_redo873:
    .const 'Sub' $P5005 = 'cuid_111_1381281785.71956' 
    capture_lex $P5005
    $P5001 = $P5005($P5006)
    goto for_next872
  for_done874:
    set $P5007, $P5001
  if421_end871:
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_111_1381281785.71956") :anon :lex :outer("cuid_112_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 814
    .param pmc _lex_param_0 
    .const 'Sub' $P5009 = 'cuid_110_1381281785.71956' 
    capture_lex $P5009 
    .lex "$name", _lex_param_0 
.annotate 'line', 815
    find_lex $P5003, "self"
    nqp_decontainerize $P5002, $P5003
    get_how $P5001, $P5002
    find_lex $P5005, "self"
    nqp_decontainerize $P5004, $P5005
    .const 'Sub' $P5007 = 'cuid_110_1381281785.71956' 
    capture_lex $P5007
    newclosure $P5006, $P5007
    $P5008 = $P5001."cache"($P5004, _lex_param_0, $P5006)
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_110_1381281785.71956") :anon :lex :outer("cuid_111_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 815

    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    find_lex $P5003, "$meth"
    find_lex $P5004, "$name"
    $P5005 = $P5004."key"()
    $P5006 = $P5001."!alt_nfa"($P5003, $P5005)
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_113_1381281785.71956") :anon :lex :outer("cuid_55_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 806

    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    $P5003 = $P5001."!protoregex_table"()
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_115_1381281785.71956") :anon :lex :outer("cuid_55_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 807
    .param pmc _lex_param_0 
    .const 'Sub' $P5010 = 'cuid_114_1381281785.71956' 
    capture_lex $P5010 
    .lex "$_", _lex_param_0 
.annotate 'line', 808
    find_lex $P5003, "self"
    nqp_decontainerize $P5002, $P5003
    get_how $P5001, $P5002
    find_lex $P5005, "self"
    nqp_decontainerize $P5004, $P5005
    $P5006 = _lex_param_0."key"()
    .const 'Sub' $P5008 = 'cuid_114_1381281785.71956' 
    capture_lex $P5008
    newclosure $P5007, $P5008
    $P5009 = $P5001."cache"($P5004, $P5006, $P5007)
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_114_1381281785.71956") :anon :lex :outer("cuid_115_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 808

    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    find_lex $P5003, "$_"
    $P5004 = $P5003."key"()
    $P5005 = $P5001."!protoregex_nfa"($P5004)
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_117_1381281785.71956") :anon :lex :outer("cuid_55_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 819
    .param pmc _lex_param_0 
    .const 'Sub' $P5009 = 'cuid_116_1381281785.71956' 
    capture_lex $P5009 
    .lex "$meth", _lex_param_0 
.annotate 'line', 820
    "&precomp_alt_nfas"(_lex_param_0)
    can $I5001, _lex_param_0, "NESTED_CODES"
    box $P5008, $I5001
    set $P5007, $P5008
    unless $I5001 goto if422_end879 
.annotate 'line', 821
.annotate 'line', 822
    $P5004 = _lex_param_0."NESTED_CODES"()
    set $P5001, $P5004
    iter $P5003, $P5004
  for_next880:
    unless $P5003, for_done882
    shift $P5006, $P5003
  for_redo881:
    .const 'Sub' $P5005 = 'cuid_116_1381281785.71956' 
    capture_lex $P5005
    $P5001 = $P5005($P5006)
    goto for_next880
  for_done882:
    set $P5007, $P5001
  if422_end879:
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_116_1381281785.71956") :anon :lex :outer("cuid_117_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 822
    .param pmc _lex_param_0 
    .lex "$code", _lex_param_0 
.annotate 'line', 823
    $P5001 = "&precomp_alt_nfas"(_lex_param_0)
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "!dba" :subid("cuid_56_1381281785.71956") :anon :lex :outer("cuid_82_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 829
    .param pmc _lex_param_0 
    .param int _lex_param_1 
    .param string _lex_param_2 
    .lex "$shared", $P101 
    .lex "$highwater", $I101 
    .lex "$highexpect", $P102 
    .lex "self", _lex_param_0 
    .lex "$pos", _lex_param_1 
    .lex "$dba", _lex_param_2 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P101, $P5001
    set $I101, 0
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P102, $P5002
    nqp_decontainerize $P5003, _lex_param_0
    find_lex $P5004, "$?CLASS"
    repr_get_attr_obj $P5005, $P5003, $P5004, "$!shared"
    set $P101, $P5005
    nqp_get_sc_object $P5006, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 32
    repr_get_attr_int $I5001, $P101, $P5006, "$!highwater", 2
    set $I101, $I5001
    set $N5001, _lex_param_1
    set $N5002, $I101
    isge $I5002, $N5001, $N5002
    box $P5011, $I5002
    set $P5010, $P5011
    unless $I5002 goto if423_end887 
.annotate 'line', 833
    nqp_get_sc_object $P5008, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 32
    getattribute $P5007, $P101, $P5008, "@!highexpect"
    set $P102, $P5007
    set $N5003, _lex_param_1
    set $N5004, $I101
    isgt $I5003, $N5003, $N5004
    unless $I5003 goto if424_end889 
.annotate 'line', 835
    assign $P102, 0
    nqp_get_sc_object $P5009, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 32
    repr_bind_attr_int $P101, $P5009, "$!highwater", 2, _lex_param_1
  if424_end889:
    push $P102, _lex_param_2
    set $P5010, $P102
  if423_end887:
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "!highwater" :subid("cuid_57_1381281785.71956") :anon :lex :outer("cuid_82_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 843
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    find_lex $P5002, "$?CLASS"
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!shared"
    nqp_get_sc_object $P5004, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 32
    repr_get_attr_int $I5001, $P5003, $P5004, "$!highwater", 2
    .return ($I5001) 
.end
.HLL "nqp"
.namespace []
.sub "!highexpect" :subid("cuid_58_1381281785.71956") :anon :lex :outer("cuid_82_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 847
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5002, _lex_param_0
    find_lex $P5003, "$?CLASS"
    repr_get_attr_obj $P5004, $P5002, $P5003, "$!shared"
    nqp_get_sc_object $P5005, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 32
    getattribute $P5001, $P5004, $P5005, "@!highexpect"
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "!fresh_highexpect" :subid("cuid_59_1381281785.71956") :anon :lex :outer("cuid_82_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 851
    .param pmc _lex_param_0 
    .lex "@old", $P101 
    .lex "self", _lex_param_0 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    nqp_decontainerize $P5003, _lex_param_0
    find_lex $P5004, "$?CLASS"
    repr_get_attr_obj $P5005, $P5003, $P5004, "$!shared"
    nqp_get_sc_object $P5006, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 32
    getattribute $P5002, $P5005, $P5006, "@!highexpect"
    set $P101, $P5002
    nqp_decontainerize $P5007, _lex_param_0
    find_lex $P5008, "$?CLASS"
    repr_get_attr_obj $P5009, $P5007, $P5008, "$!shared"
    nqp_get_sc_object $P5010, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 32
    new $P5011, 'ResizableStringArray'
    setattribute $P5009, $P5010, "@!highexpect", $P5011
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "!set_highexpect" :subid("cuid_60_1381281785.71956") :anon :lex :outer("cuid_82_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 857
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "@highexpect", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    find_lex $P5002, "$?CLASS"
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!shared"
    nqp_get_sc_object $P5004, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 32
    setattribute $P5003, $P5004, "@!highexpect", _lex_param_1
    .return (_lex_param_1) 
.end
.HLL "nqp"
.namespace []
.sub "!clear_highwater" :subid("cuid_61_1381281785.71956") :anon :lex :outer("cuid_82_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 861
    .param pmc _lex_param_0 
    .lex "$highexpect", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P101, $P5001
    nqp_decontainerize $P5003, _lex_param_0
    find_lex $P5004, "$?CLASS"
    repr_get_attr_obj $P5005, $P5003, $P5004, "$!shared"
    nqp_get_sc_object $P5006, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 32
    getattribute $P5002, $P5005, $P5006, "@!highexpect"
    set $P101, $P5002
    assign $P101, 0
    nqp_decontainerize $P5007, _lex_param_0
    find_lex $P5008, "$?CLASS"
    repr_get_attr_obj $P5009, $P5007, $P5008, "$!shared"
    nqp_get_sc_object $P5010, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 32
    repr_bind_attr_int $P5009, $P5010, "$!highwater", 2, -1
    .return (2) 
.end
.HLL "nqp"
.namespace []
.sub "!BACKREF" :subid("cuid_62_1381281785.71956") :anon :lex :outer("cuid_82_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 867
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5033 = 'cuid_118_1381281785.71956' 
    capture_lex $P5033 
    .lex "$cur", $P101 
    .lex "$n", $I101 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    .local pmc fb_tmp_90 
    .local pmc fb_tmp_91 
    .local pmc tmp_9 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P101, $P5001
    set $I101, 0
.annotate 'line', 868
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start_cur"()
    set $P101, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!cstack"
    unless $P5006 goto if425_else890 
    nqp_decontainerize $P5007, _lex_param_0
    find_lex $P5008, "$?CLASS"
    repr_get_attr_obj $P5009, $P5007, $P5008, "$!cstack"
    elements $I5002, $P5009
    sub $I5001, $I5002, 1
    set $I5003, $I5001
    goto if425_end891
  if425_else890:
    set $I5003, -1
  if425_end891:
    set $I101, $I5003
    new $P5029, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5029, while426_handlers895
    push_eh $P5029
  while426_test892:
    set $N5001, $I101
    set $N5002, 0
    isge $I5004, $N5001, $N5002
    set $I5010, $I5004
    unless $I5004 goto if427_end898 
    nqp_decontainerize $P5011, _lex_param_0
    find_lex $P5012, "$?CLASS"
    repr_get_attr_obj $P5013, $P5011, $P5012, "$!cstack"
    set fb_tmp_90, $P5013
    repr_defined $I5006, fb_tmp_90
    unless $I5006 goto if429_else901 
    set $P5014, fb_tmp_90[$I101]
    set $P5016, $P5014
    goto if429_end902
  if429_else901:
    null $P5015
    set $P5016, $P5015
  if429_end902:
    unless_null $P5016, vivi_430903
    nqp_get_sc_object $P5017, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P5016, $P5017
  vivi_430903:
    find_lex $P5018, "$?CLASS"
    getattribute $P5010, $P5016, $P5018, "$!name"
    isnull $I5005, $P5010
    set $I5009, $I5005
    if $I5005 goto unless428_end900 
    nqp_decontainerize $P5020, _lex_param_0
    find_lex $P5021, "$?CLASS"
    repr_get_attr_obj $P5022, $P5020, $P5021, "$!cstack"
    set fb_tmp_91, $P5022
    repr_defined $I5008, fb_tmp_91
    unless $I5008 goto if431_else904 
    set $P5023, fb_tmp_91[$I101]
    set $P5025, $P5023
    goto if431_end905
  if431_else904:
    null $P5024
    set $P5025, $P5024
  if431_end905:
    unless_null $P5025, vivi_432906
    nqp_get_sc_object $P5026, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P5025, $P5026
  vivi_432906:
    find_lex $P5027, "$?CLASS"
    getattribute $P5019, $P5025, $P5027, "$!name"
    set $S5001, $P5019
    set $S5002, _lex_param_1
    isne $I5007, $S5001, $S5002
    set $I5009, $I5007
  unless428_end900:
    set $I5010, $I5009
  if427_end898:
    box $P5030, $I5010
    set $P5028, $P5030
    unless $I5010 goto while426_done896 
  while426_redo894:
    box $P5028, $I101
    set tmp_9, $P5028
    set $N5004, tmp_9
    set $N5005, 1
    sub $N5003, $N5004, $N5005
    set $I5011, $N5003
    set $I101, $I5011
    set $P5028, tmp_9
    goto while426_test892 
  while426_handlers895:
    .get_results ($P5029)
    pop_upto_eh $P5029
    getattribute $P5029, $P5029, 'type'
    eq $P5029, .CONTROL_LOOP_NEXT, while426_test892
    eq $P5029, .CONTROL_LOOP_REDO, while426_redo894
  while426_done896:
    pop_eh 
    set $N5003, $I101
    set $N5004, 0
    isge $I5011, $N5003, $N5004
    unless $I5011 goto if433_end908 
    .const 'Sub' $P5031 = 'cuid_118_1381281785.71956' 
    capture_lex $P5031
    $P5032 = $P5031()
  if433_end908:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_118_1381281785.71956") :anon :lex :outer("cuid_62_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 872
    .lex "$subcur", $P101 
    .lex "$litlen", $I101 
    .lex "$target", $S101 
    .local pmc fb_tmp_92 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P101, $P5001
    set $I101, 0
    set $S101, ""
    find_lex $P5003, "self"
    nqp_decontainerize $P5002, $P5003
    find_lex $P5004, "$?CLASS"
    repr_get_attr_obj $P5005, $P5002, $P5004, "$!cstack"
    set fb_tmp_92, $P5005
    repr_defined $I5001, fb_tmp_92
    unless $I5001 goto if434_else909 
    find_lex $I5002, "$n"
    set $P5006, fb_tmp_92[$I5002]
    set $P5008, $P5006
    goto if434_end910
  if434_else909:
    null $P5007
    set $P5008, $P5007
  if434_end910:
    unless_null $P5008, vivi_435911
    nqp_get_sc_object $P5009, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P5008, $P5009
  vivi_435911:
    set $P101, $P5008
.annotate 'line', 874
    $P5010 = $P101."pos"()
    set $N5002, $P5010
    $P5011 = $P101."from"()
    set $N5003, $P5011
    sub $N5001, $N5002, $N5003
    set $I5003, $N5001
    set $I101, $I5003
    find_lex $P5013, "self"
    nqp_decontainerize $P5012, $P5013
    find_lex $P5014, "$?CLASS"
    repr_get_attr_obj $P5015, $P5012, $P5014, "$!shared"
    nqp_get_sc_object $P5016, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 32
    repr_get_attr_str $S5001, $P5015, $P5016, "$!target", 1
    set $S101, $S5001
    find_lex $P5018, "self"
    nqp_decontainerize $P5017, $P5018
    find_lex $P5019, "$?CLASS"
    repr_get_attr_int $I5005, $P5017, $P5019, "$!pos"
    substr $S5002, $S101, $I5005, $I101
.annotate 'line', 878
    $P5020 = $P101."from"()
    set $I5006, $P5020
    substr $S5003, $S101, $I5006, $I101
    iseq $I5004, $S5002, $S5003
    box $P5027, $I5004
    set $P5026, $P5027
    unless $I5004 goto if436_end913 
.annotate 'line', 876
    find_lex $P5021, "$cur"
    find_lex $P5023, "self"
    nqp_decontainerize $P5022, $P5023
    find_lex $P5024, "$?CLASS"
    repr_get_attr_int $I5008, $P5022, $P5024, "$!pos"
    add $I5007, $I5008, $I101
    $P5025 = $P5021."!cursor_pass"($I5007, "")
    set $P5026, $P5025
  if436_end913:
    .return ($P5026) 
.end
.HLL "nqp"
.namespace []
.sub "!LITERAL" :subid("cuid_63_1381281785.71956") :anon :lex :outer("cuid_82_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 883
    .param pmc _lex_param_0 
    .param string _lex_param_1 
    .param int _lex_param_2 :optional 
    .param int haz_param_20 :opt_flag 
    .lex "$cur", $P101 
    .lex "$litlen", $I101 
    .lex "$target", $S101 
    .lex "self", _lex_param_0 
    .lex "$str", _lex_param_1 
    .lex "$i", _lex_param_2 
    if haz_param_20, default920
    set $I5011, 0
    set _lex_param_2, $I5011
  default920:
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P101, $P5001
    set $I101, 0
    set $S101, ""
    length $I5001, _lex_param_1
    set $I101, $I5001
    nqp_decontainerize $P5002, _lex_param_0
    find_lex $P5003, "$?CLASS"
    repr_get_attr_obj $P5004, $P5002, $P5003, "$!shared"
    nqp_get_sc_object $P5005, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 32
    repr_get_attr_str $S5001, $P5004, $P5005, "$!target", 1
    set $S101, $S5001
    set $N5001, $I101
    set $N5002, 1
    islt $I5002, $N5001, $N5002
    set $I5008, $I5002
    if $I5002 goto unless438_end917 
    unless _lex_param_2 goto if439_else918 
    nqp_decontainerize $P5006, _lex_param_0
    find_lex $P5007, "$?CLASS"
    repr_get_attr_int $I5004, $P5006, $P5007, "$!pos"
    substr $S5003, $S101, $I5004, $I101
    downcase $S5002, $S5003
    downcase $S5004, _lex_param_1
    iseq $I5003, $S5002, $S5004
    set $I5007, $I5003
    goto if439_end919
  if439_else918:
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_int $I5006, $P5008, $P5009, "$!pos"
    substr $S5005, $S101, $I5006, $I101
    iseq $I5005, $S5005, _lex_param_1
    set $I5007, $I5005
  if439_end919:
    set $I5008, $I5007
  unless438_end917:
    unless $I5008 goto if437_else914 
.annotate 'line', 889
.annotate 'line', 890
    nqp_decontainerize $P5010, _lex_param_0
    $P5011 = $P5010."!cursor_start_cur"()
    set $P101, $P5011
.annotate 'line', 891
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5010, $P5012, $P5013, "$!pos"
    add $I5009, $I5010, $I101
    $P5014 = $P101."!cursor_pass"($I5009)
    goto if437_end915
  if437_else914:
.annotate 'line', 893
    nqp_decontainerize $P5016, _lex_param_0
    find_lex $P5017, "$?CLASS"
    repr_get_attr_obj $P5018, $P5016, $P5017, "$!shared"
    nqp_get_sc_object $P5019, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 32
    getattribute $P5015, $P5018, $P5019, "$!fail_cursor"
    set $P101, $P5015
  if437_end915:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "at" :subid("cuid_64_1381281785.71956") :anon :lex :outer("cuid_82_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 899
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    .lex "$pos", _lex_param_1 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P101, $P5001
.annotate 'line', 900
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start_cur"()
    set $P101, $P5003
    set $N5001, _lex_param_1
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_int $I5002, $P5004, $P5005, "$!pos"
    set $N5002, $I5002
    iseq $I5001, $N5001, $N5002
    unless $I5001 goto if440_end922 
.annotate 'line', 901
    nqp_decontainerize $P5006, _lex_param_0
    find_lex $P5007, "$?CLASS"
    repr_get_attr_int $I5003, $P5006, $P5007, "$!pos"
    $P5008 = $P101."!cursor_pass"($I5003)
  if440_end922:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "before" :subid("cuid_65_1381281785.71956") :anon :lex :outer("cuid_82_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 905
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$orig_highwater", $I101 
    .lex "$orig_highexpect", $P101 
    .lex "$cur", $P102 
    .lex "self", _lex_param_0 
    .lex "$regex", _lex_param_1 
    set $I101, 0
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P102, $P5002
    nqp_decontainerize $P5003, _lex_param_0
    find_lex $P5004, "$?CLASS"
    repr_get_attr_obj $P5005, $P5003, $P5004, "$!shared"
    nqp_get_sc_object $P5006, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 32
    repr_get_attr_int $I5001, $P5005, $P5006, "$!highwater", 2
    set $I101, $I5001
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_obj $P5010, $P5008, $P5009, "$!shared"
    nqp_get_sc_object $P5011, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 32
    getattribute $P5007, $P5010, $P5011, "@!highexpect"
    set $P101, $P5007
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_obj $P5014, $P5012, $P5013, "$!shared"
    nqp_get_sc_object $P5015, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 32
    new $P5016, 'ResizableStringArray'
    setattribute $P5014, $P5015, "@!highexpect", $P5016
.annotate 'line', 909
    nqp_decontainerize $P5017, _lex_param_0
    $P5018 = $P5017."!cursor_start_cur"()
    set $P102, $P5018
    find_lex $P5019, "$?CLASS"
    nqp_decontainerize $P5020, _lex_param_0
    find_lex $P5021, "$?CLASS"
    repr_get_attr_int $I5002, $P5020, $P5021, "$!pos"
    repr_bind_attr_int $P102, $P5019, "$!pos", $I5002
.annotate 'line', 911
    $P5022 = _lex_param_1($P102)
    find_lex $P5023, "$?CLASS"
    repr_get_attr_int $I5004, $P5022, $P5023, "$!pos"
    set $N5001, $I5004
    set $N5002, 0
    isge $I5003, $N5001, $N5002
    unless $I5003 goto if441_else923 
.annotate 'line', 912
    nqp_decontainerize $P5024, _lex_param_0
    find_lex $P5025, "$?CLASS"
    repr_get_attr_int $I5005, $P5024, $P5025, "$!pos"
    $P5026 = $P102."!cursor_pass"($I5005, "before")
    goto if441_end924
  if441_else923:
    find_lex $P5027, "$?CLASS"
    repr_bind_attr_int $P102, $P5027, "$!pos", -3
  if441_end924:
    nqp_decontainerize $P5028, _lex_param_0
    find_lex $P5029, "$?CLASS"
    repr_get_attr_obj $P5030, $P5028, $P5029, "$!shared"
    nqp_get_sc_object $P5031, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 32
    repr_bind_attr_int $P5030, $P5031, "$!highwater", 2, $I101
    nqp_decontainerize $P5032, _lex_param_0
    find_lex $P5033, "$?CLASS"
    repr_get_attr_obj $P5034, $P5032, $P5033, "$!shared"
    nqp_get_sc_object $P5035, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 32
    setattribute $P5034, $P5035, "@!highexpect", $P101
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "after" :subid("cuid_66_1381281785.71956") :anon :lex :outer("cuid_82_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 921
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$orig_highwater", $I101 
    .lex "$orig_highexpect", $P101 
    .lex "$cur", $P102 
    .lex "$target", $S101 
    .lex "$shared", $P103 
    .lex "self", _lex_param_0 
    .lex "$regex", _lex_param_1 
    set $I101, 0
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P102, $P5002
    set $S101, ""
    nqp_get_sc_object $P5003, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P103, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!shared"
    nqp_get_sc_object $P5007, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 32
    repr_get_attr_int $I5001, $P5006, $P5007, "$!highwater", 2
    set $I101, $I5001
    nqp_decontainerize $P5009, _lex_param_0
    find_lex $P5010, "$?CLASS"
    repr_get_attr_obj $P5011, $P5009, $P5010, "$!shared"
    nqp_get_sc_object $P5012, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 32
    getattribute $P5008, $P5011, $P5012, "@!highexpect"
    set $P101, $P5008
    nqp_decontainerize $P5013, _lex_param_0
    find_lex $P5014, "$?CLASS"
    repr_get_attr_obj $P5015, $P5013, $P5014, "$!shared"
    nqp_get_sc_object $P5016, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 32
    new $P5017, 'ResizableStringArray'
    setattribute $P5015, $P5016, "@!highexpect", $P5017
.annotate 'line', 925
    nqp_decontainerize $P5018, _lex_param_0
    $P5019 = $P5018."!cursor_start_cur"()
    set $P102, $P5019
    nqp_decontainerize $P5020, _lex_param_0
    find_lex $P5021, "$?CLASS"
    repr_get_attr_obj $P5022, $P5020, $P5021, "$!shared"
    nqp_get_sc_object $P5023, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 32
    repr_get_attr_str $S5001, $P5022, $P5023, "$!target", 1
    set $S101, $S5001
    nqp_decontainerize $P5025, _lex_param_0
    find_lex $P5026, "$?CLASS"
    repr_get_attr_obj $P5027, $P5025, $P5026, "$!shared"
    repr_clone $P5024, $P5027
    set $P103, $P5024
    nqp_get_sc_object $P5028, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 32
    box $P5029, $S101
    $P5030 = $P5029."reverse"()
    set $S5002, $P5030
    repr_bind_attr_str $P103, $P5028, "$!target", 1, $S5002
    find_lex $P5031, "$?CLASS"
    setattribute $P102, $P5031, "$!shared", $P103
    find_lex $P5032, "$?CLASS"
    length $I5003, $S101
    nqp_decontainerize $P5033, _lex_param_0
    find_lex $P5034, "$?CLASS"
    repr_get_attr_int $I5004, $P5033, $P5034, "$!pos"
    sub $I5002, $I5003, $I5004
    repr_bind_attr_int $P102, $P5032, "$!from", $I5002
    find_lex $P5035, "$?CLASS"
    length $I5006, $S101
    nqp_decontainerize $P5036, _lex_param_0
    find_lex $P5037, "$?CLASS"
    repr_get_attr_int $I5007, $P5036, $P5037, "$!pos"
    sub $I5005, $I5006, $I5007
    repr_bind_attr_int $P102, $P5035, "$!pos", $I5005
.annotate 'line', 932
    $P5038 = _lex_param_1($P102)
    find_lex $P5039, "$?CLASS"
    repr_get_attr_int $I5009, $P5038, $P5039, "$!pos"
    set $N5001, $I5009
    set $N5002, 0
    isge $I5008, $N5001, $N5002
    unless $I5008 goto if442_else925 
.annotate 'line', 933
    nqp_decontainerize $P5040, _lex_param_0
    find_lex $P5041, "$?CLASS"
    repr_get_attr_int $I5010, $P5040, $P5041, "$!pos"
    $P5042 = $P102."!cursor_pass"($I5010, "after")
    goto if442_end926
  if442_else925:
    find_lex $P5043, "$?CLASS"
    repr_bind_attr_int $P102, $P5043, "$!pos", -3
  if442_end926:
    nqp_decontainerize $P5044, _lex_param_0
    find_lex $P5045, "$?CLASS"
    repr_get_attr_obj $P5046, $P5044, $P5045, "$!shared"
    nqp_get_sc_object $P5047, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 32
    repr_bind_attr_int $P5046, $P5047, "$!highwater", 2, $I101
    nqp_decontainerize $P5048, _lex_param_0
    find_lex $P5049, "$?CLASS"
    repr_get_attr_obj $P5050, $P5048, $P5049, "$!shared"
    nqp_get_sc_object $P5051, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 32
    setattribute $P5050, $P5051, "@!highexpect", $P101
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "ws" :subid("cuid_67_1381281785.71956") :anon :lex :outer("cuid_82_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 940
    .param pmc _lex_param_0 
    .lex "$target", $S101 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    set $S101, ""
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P101, $P5001
    nqp_decontainerize $P5002, _lex_param_0
    find_lex $P5003, "$?CLASS"
    repr_get_attr_obj $P5004, $P5002, $P5003, "$!shared"
    nqp_get_sc_object $P5005, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 32
    repr_get_attr_str $S5001, $P5004, $P5005, "$!target", 1
    set $S101, $S5001
.annotate 'line', 943
    nqp_decontainerize $P5006, _lex_param_0
    $P5007 = $P5006."!cursor_start_cur"()
    set $P101, $P5007
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_int $I5002, $P5008, $P5009, "$!pos"
    set $N5001, $I5002
    length $I5003, $S101
    set $N5002, $I5003
    isge $I5001, $N5001, $N5002
    unless $I5001 goto if443_else927 
.annotate 'line', 945
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5004, $P5010, $P5011, "$!pos"
    $P5012 = $P101."!cursor_pass"($I5004, "ws")
    goto if443_end928
  if443_else927:
    nqp_decontainerize $P5013, _lex_param_0
    find_lex $P5014, "$?CLASS"
    repr_get_attr_int $I5006, $P5013, $P5014, "$!pos"
    set $N5003, $I5006
    set $N5004, 1
    islt $I5005, $N5003, $N5004
    set $I5010, $I5005
    if $I5005 goto unless446_end934 
    nqp_decontainerize $P5015, _lex_param_0
    find_lex $P5016, "$?CLASS"
    repr_get_attr_int $I5009, $P5015, $P5016, "$!pos"
    is_cclass $I5008, 8192, $S101, $I5009
    not $I5007, $I5008
    set $I5010, $I5007
  unless446_end934:
    set $I5015, $I5010
    if $I5010 goto unless445_end932 
    nqp_decontainerize $P5017, _lex_param_0
    find_lex $P5018, "$?CLASS"
    repr_get_attr_int $I5014, $P5017, $P5018, "$!pos"
    sub $I5013, $I5014, 1
    is_cclass $I5012, 8192, $S101, $I5013
    not $I5011, $I5012
    set $I5015, $I5011
  unless445_end932:
    box $P5023, $I5015
    set $P5022, $P5023
    unless $I5015 goto if444_end930 
.annotate 'line', 949
    nqp_decontainerize $P5019, _lex_param_0
    find_lex $P5020, "$?CLASS"
    repr_get_attr_int $I5017, $P5019, $P5020, "$!pos"
    length $I5018, $S101
    find_not_cclass $I5016, 32, $S101, $I5017, $I5018
    $P5021 = $P101."!cursor_pass"($I5016, "ws")
    set $P5022, $P5021
  if444_end930:
  if443_end928:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "ww" :subid("cuid_68_1381281785.71956") :anon :lex :outer("cuid_82_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 956
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "$target", $S101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P101, $P5001
    set $S101, ""
    nqp_decontainerize $P5002, _lex_param_0
    find_lex $P5003, "$?CLASS"
    repr_get_attr_obj $P5004, $P5002, $P5003, "$!shared"
    nqp_get_sc_object $P5005, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 32
    repr_get_attr_str $S5001, $P5004, $P5005, "$!target", 1
    set $S101, $S5001
    nqp_decontainerize $P5006, _lex_param_0
    find_lex $P5007, "$?CLASS"
    repr_get_attr_int $I5002, $P5006, $P5007, "$!pos"
    set $N5001, $I5002
    set $N5002, 0
    isgt $I5001, $N5001, $N5002
    set $I5006, $I5001
    unless $I5001 goto if450_end942 
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_int $I5004, $P5008, $P5009, "$!pos"
    set $N5003, $I5004
    length $I5005, $S101
    set $N5004, $I5005
    isne $I5003, $N5003, $N5004
    set $I5006, $I5003
  if450_end942:
    set $I5009, $I5006
    unless $I5006 goto if449_end940 
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5008, $P5010, $P5011, "$!pos"
    is_cclass $I5007, 8192, $S101, $I5008
    set $I5009, $I5007
  if449_end940:
    set $I5013, $I5009
    unless $I5009 goto if448_end938 
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5012, $P5012, $P5013, "$!pos"
    sub $I5011, $I5012, 1
    is_cclass $I5010, 8192, $S101, $I5011
    set $I5013, $I5010
  if448_end938:
    unless $I5013 goto if447_else935 
.annotate 'line', 961
.annotate 'line', 962
    nqp_decontainerize $P5014, _lex_param_0
    $P5015 = $P5014."!cursor_start_cur"()
    set $P101, $P5015
.annotate 'line', 963
    nqp_decontainerize $P5016, _lex_param_0
    find_lex $P5017, "$?CLASS"
    repr_get_attr_int $I5014, $P5016, $P5017, "$!pos"
    $P5018 = $P101."!cursor_pass"($I5014, "ww")
    goto if447_end936
  if447_else935:
.annotate 'line', 965
    nqp_decontainerize $P5020, _lex_param_0
    find_lex $P5021, "$?CLASS"
    repr_get_attr_obj $P5022, $P5020, $P5021, "$!shared"
    nqp_get_sc_object $P5023, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 32
    getattribute $P5019, $P5022, $P5023, "$!fail_cursor"
    set $P101, $P5019
  if447_end936:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "wb" :subid("cuid_69_1381281785.71956") :anon :lex :outer("cuid_82_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 971
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "$target", $S101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P101, $P5001
    set $S101, ""
.annotate 'line', 972
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start_cur"()
    set $P101, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!shared"
    nqp_get_sc_object $P5007, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 32
    repr_get_attr_str $S5001, $P5006, $P5007, "$!target", 1
    set $S101, $S5001
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_int $I5002, $P5008, $P5009, "$!pos"
    set $N5001, $I5002
    set $N5002, 0
    iseq $I5001, $N5001, $N5002
    set $I5005, $I5001
    unless $I5001 goto if454_end950 
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5004, $P5010, $P5011, "$!pos"
    is_cclass $I5003, 8192, $S101, $I5004
    set $I5005, $I5003
  if454_end950:
    set $I5013, $I5005
    if $I5005 goto unless453_end948 
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5007, $P5012, $P5013, "$!pos"
    set $N5003, $I5007
    length $I5008, $S101
    set $N5004, $I5008
    iseq $I5006, $N5003, $N5004
    set $I5012, $I5006
    unless $I5006 goto if455_end952 
    nqp_decontainerize $P5014, _lex_param_0
    find_lex $P5015, "$?CLASS"
    repr_get_attr_int $I5011, $P5014, $P5015, "$!pos"
    sub $I5010, $I5011, 1
    is_cclass $I5009, 8192, $S101, $I5010
    set $I5012, $I5009
  if455_end952:
    set $I5013, $I5012
  unless453_end948:
    set $I5020, $I5013
    if $I5013 goto unless452_end946 
    nqp_decontainerize $P5016, _lex_param_0
    find_lex $P5017, "$?CLASS"
    repr_get_attr_int $I5017, $P5016, $P5017, "$!pos"
    sub $I5016, $I5017, 1
    is_cclass $I5015, 8192, $S101, $I5016
    set $N5005, $I5015
    nqp_decontainerize $P5018, _lex_param_0
    find_lex $P5019, "$?CLASS"
    repr_get_attr_int $I5019, $P5018, $P5019, "$!pos"
    is_cclass $I5018, 8192, $S101, $I5019
    set $N5006, $I5018
    isne $I5014, $N5005, $N5006
    set $I5020, $I5014
  unless452_end946:
    unless $I5020 goto if451_end944 
.annotate 'line', 974
    nqp_decontainerize $P5020, _lex_param_0
    find_lex $P5021, "$?CLASS"
    repr_get_attr_int $I5021, $P5020, $P5021, "$!pos"
    $P5022 = $P101."!cursor_pass"($I5021, "wb")
  if451_end944:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "ident" :subid("cuid_70_1381281785.71956") :anon :lex :outer("cuid_82_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 983
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "$target", $S101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P101, $P5001
    set $S101, ""
    nqp_decontainerize $P5002, _lex_param_0
    find_lex $P5003, "$?CLASS"
    repr_get_attr_obj $P5004, $P5002, $P5003, "$!shared"
    nqp_get_sc_object $P5005, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 32
    repr_get_attr_str $S5001, $P5004, $P5005, "$!target", 1
    set $S101, $S5001
    nqp_decontainerize $P5006, _lex_param_0
    find_lex $P5007, "$?CLASS"
    repr_get_attr_int $I5002, $P5006, $P5007, "$!pos"
    set $N5001, $I5002
    length $I5003, $S101
    set $N5002, $I5003
    islt $I5001, $N5001, $N5002
    set $I5010, $I5001
    unless $I5001 goto if457_end956 
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_int $I5006, $P5008, $P5009, "$!pos"
    ord $I5005, $S101, $I5006
    set $N5003, $I5005
    set $N5004, 95
    iseq $I5004, $N5003, $N5004
    set $I5009, $I5004
    if $I5004 goto unless458_end958 
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5008, $P5010, $P5011, "$!pos"
    is_cclass $I5007, 4, $S101, $I5008
    set $I5009, $I5007
  unless458_end958:
    set $I5010, $I5009
  if457_end956:
    unless $I5010 goto if456_else953 
.annotate 'line', 988
.annotate 'line', 989
    nqp_decontainerize $P5012, _lex_param_0
    $P5013 = $P5012."!cursor_start_cur"()
    set $P101, $P5013
.annotate 'line', 990
    nqp_decontainerize $P5014, _lex_param_0
    find_lex $P5015, "$?CLASS"
    repr_get_attr_int $I5012, $P5014, $P5015, "$!pos"
    length $I5013, $S101
    find_not_cclass $I5011, 8192, $S101, $I5012, $I5013
    $P5016 = $P101."!cursor_pass"($I5011)
    goto if456_end954
  if456_else953:
.annotate 'line', 995
    nqp_decontainerize $P5018, _lex_param_0
    find_lex $P5019, "$?CLASS"
    repr_get_attr_obj $P5020, $P5018, $P5019, "$!shared"
    nqp_get_sc_object $P5021, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 32
    getattribute $P5017, $P5020, $P5021, "$!fail_cursor"
    set $P101, $P5017
  if456_end954:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "alpha" :subid("cuid_71_1381281785.71956") :anon :lex :outer("cuid_82_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 1001
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "$target", $S101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P101, $P5001
    set $S101, ""
.annotate 'line', 1002
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start_cur"()
    set $P101, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!shared"
    nqp_get_sc_object $P5007, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 32
    repr_get_attr_str $S5001, $P5006, $P5007, "$!target", 1
    set $S101, $S5001
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_int $I5002, $P5008, $P5009, "$!pos"
    set $N5001, $I5002
    length $I5003, $S101
    set $N5002, $I5003
    islt $I5001, $N5001, $N5002
    set $I5010, $I5001
    unless $I5001 goto if460_end962 
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, 4, $S101, $I5005
    set $I5009, $I5004
    if $I5004 goto unless461_end964 
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5008, $P5012, $P5013, "$!pos"
    ord $I5007, $S101, $I5008
    set $N5003, $I5007
    set $N5004, 95
    iseq $I5006, $N5003, $N5004
    set $I5009, $I5006
  unless461_end964:
    set $I5010, $I5009
  if460_end962:
    unless $I5010 goto if459_end960 
.annotate 'line', 1004
    nqp_decontainerize $P5014, _lex_param_0
    find_lex $P5015, "$?CLASS"
    repr_get_attr_int $I5012, $P5014, $P5015, "$!pos"
    add $I5011, $I5012, 1
    $P5016 = $P101."!cursor_pass"($I5011, "alpha")
  if459_end960:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "alnum" :subid("cuid_72_1381281785.71956") :anon :lex :outer("cuid_82_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 1011
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "$target", $S101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P101, $P5001
    set $S101, ""
.annotate 'line', 1012
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start_cur"()
    set $P101, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!shared"
    nqp_get_sc_object $P5007, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 32
    repr_get_attr_str $S5001, $P5006, $P5007, "$!target", 1
    set $S101, $S5001
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_int $I5002, $P5008, $P5009, "$!pos"
    set $N5001, $I5002
    length $I5003, $S101
    set $N5002, $I5003
    islt $I5001, $N5001, $N5002
    set $I5010, $I5001
    unless $I5001 goto if463_end968 
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, 2048, $S101, $I5005
    set $I5009, $I5004
    if $I5004 goto unless464_end970 
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5008, $P5012, $P5013, "$!pos"
    ord $I5007, $S101, $I5008
    set $N5003, $I5007
    set $N5004, 95
    iseq $I5006, $N5003, $N5004
    set $I5009, $I5006
  unless464_end970:
    set $I5010, $I5009
  if463_end968:
    unless $I5010 goto if462_end966 
.annotate 'line', 1014
    nqp_decontainerize $P5014, _lex_param_0
    find_lex $P5015, "$?CLASS"
    repr_get_attr_int $I5012, $P5014, $P5015, "$!pos"
    add $I5011, $I5012, 1
    $P5016 = $P101."!cursor_pass"($I5011, "alnum")
  if462_end966:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "upper" :subid("cuid_73_1381281785.71956") :anon :lex :outer("cuid_82_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 1021
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "$target", $S101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P101, $P5001
    set $S101, ""
.annotate 'line', 1022
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start_cur"()
    set $P101, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!shared"
    nqp_get_sc_object $P5007, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 32
    repr_get_attr_str $S5001, $P5006, $P5007, "$!target", 1
    set $S101, $S5001
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_int $I5002, $P5008, $P5009, "$!pos"
    set $N5001, $I5002
    length $I5003, $S101
    set $N5002, $I5003
    islt $I5001, $N5001, $N5002
    set $I5006, $I5001
    unless $I5001 goto if466_end974 
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, 1, $S101, $I5005
    set $I5006, $I5004
  if466_end974:
    unless $I5006 goto if465_end972 
.annotate 'line', 1024
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5008, $P5012, $P5013, "$!pos"
    add $I5007, $I5008, 1
    $P5014 = $P101."!cursor_pass"($I5007, "upper")
  if465_end972:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "lower" :subid("cuid_74_1381281785.71956") :anon :lex :outer("cuid_82_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 1030
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "$target", $S101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P101, $P5001
    set $S101, ""
.annotate 'line', 1031
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start_cur"()
    set $P101, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!shared"
    nqp_get_sc_object $P5007, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 32
    repr_get_attr_str $S5001, $P5006, $P5007, "$!target", 1
    set $S101, $S5001
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_int $I5002, $P5008, $P5009, "$!pos"
    set $N5001, $I5002
    length $I5003, $S101
    set $N5002, $I5003
    islt $I5001, $N5001, $N5002
    set $I5006, $I5001
    unless $I5001 goto if468_end978 
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, 2, $S101, $I5005
    set $I5006, $I5004
  if468_end978:
    unless $I5006 goto if467_end976 
.annotate 'line', 1033
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5008, $P5012, $P5013, "$!pos"
    add $I5007, $I5008, 1
    $P5014 = $P101."!cursor_pass"($I5007, "lower")
  if467_end976:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "digit" :subid("cuid_75_1381281785.71956") :anon :lex :outer("cuid_82_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 1039
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "$target", $S101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P101, $P5001
    set $S101, ""
.annotate 'line', 1040
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start_cur"()
    set $P101, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!shared"
    nqp_get_sc_object $P5007, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 32
    repr_get_attr_str $S5001, $P5006, $P5007, "$!target", 1
    set $S101, $S5001
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_int $I5002, $P5008, $P5009, "$!pos"
    set $N5001, $I5002
    length $I5003, $S101
    set $N5002, $I5003
    islt $I5001, $N5001, $N5002
    set $I5006, $I5001
    unless $I5001 goto if470_end982 
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, 8, $S101, $I5005
    set $I5006, $I5004
  if470_end982:
    unless $I5006 goto if469_end980 
.annotate 'line', 1042
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5008, $P5012, $P5013, "$!pos"
    add $I5007, $I5008, 1
    $P5014 = $P101."!cursor_pass"($I5007, "digit")
  if469_end980:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "xdigit" :subid("cuid_76_1381281785.71956") :anon :lex :outer("cuid_82_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 1048
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "$target", $S101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P101, $P5001
    set $S101, ""
.annotate 'line', 1049
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start_cur"()
    set $P101, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!shared"
    nqp_get_sc_object $P5007, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 32
    repr_get_attr_str $S5001, $P5006, $P5007, "$!target", 1
    set $S101, $S5001
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_int $I5002, $P5008, $P5009, "$!pos"
    set $N5001, $I5002
    length $I5003, $S101
    set $N5002, $I5003
    islt $I5001, $N5001, $N5002
    set $I5006, $I5001
    unless $I5001 goto if472_end986 
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, 16, $S101, $I5005
    set $I5006, $I5004
  if472_end986:
    unless $I5006 goto if471_end984 
.annotate 'line', 1051
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5008, $P5012, $P5013, "$!pos"
    add $I5007, $I5008, 1
    $P5014 = $P101."!cursor_pass"($I5007, "xdigit")
  if471_end984:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "space" :subid("cuid_77_1381281785.71956") :anon :lex :outer("cuid_82_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 1057
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "$target", $S101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P101, $P5001
    set $S101, ""
.annotate 'line', 1058
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start_cur"()
    set $P101, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!shared"
    nqp_get_sc_object $P5007, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 32
    repr_get_attr_str $S5001, $P5006, $P5007, "$!target", 1
    set $S101, $S5001
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_int $I5002, $P5008, $P5009, "$!pos"
    set $N5001, $I5002
    length $I5003, $S101
    set $N5002, $I5003
    islt $I5001, $N5001, $N5002
    set $I5006, $I5001
    unless $I5001 goto if474_end990 
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, 32, $S101, $I5005
    set $I5006, $I5004
  if474_end990:
    unless $I5006 goto if473_end988 
.annotate 'line', 1060
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5008, $P5012, $P5013, "$!pos"
    add $I5007, $I5008, 1
    $P5014 = $P101."!cursor_pass"($I5007, "space")
  if473_end988:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "blank" :subid("cuid_78_1381281785.71956") :anon :lex :outer("cuid_82_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 1066
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "$target", $S101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P101, $P5001
    set $S101, ""
.annotate 'line', 1067
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start_cur"()
    set $P101, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!shared"
    nqp_get_sc_object $P5007, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 32
    repr_get_attr_str $S5001, $P5006, $P5007, "$!target", 1
    set $S101, $S5001
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_int $I5002, $P5008, $P5009, "$!pos"
    set $N5001, $I5002
    length $I5003, $S101
    set $N5002, $I5003
    islt $I5001, $N5001, $N5002
    set $I5006, $I5001
    unless $I5001 goto if476_end994 
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, 256, $S101, $I5005
    set $I5006, $I5004
  if476_end994:
    unless $I5006 goto if475_end992 
.annotate 'line', 1069
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5008, $P5012, $P5013, "$!pos"
    add $I5007, $I5008, 1
    $P5014 = $P101."!cursor_pass"($I5007, "blank")
  if475_end992:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "cntrl" :subid("cuid_79_1381281785.71956") :anon :lex :outer("cuid_82_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 1075
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "$target", $S101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P101, $P5001
    set $S101, ""
.annotate 'line', 1076
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start_cur"()
    set $P101, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!shared"
    nqp_get_sc_object $P5007, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 32
    repr_get_attr_str $S5001, $P5006, $P5007, "$!target", 1
    set $S101, $S5001
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_int $I5002, $P5008, $P5009, "$!pos"
    set $N5001, $I5002
    length $I5003, $S101
    set $N5002, $I5003
    islt $I5001, $N5001, $N5002
    set $I5006, $I5001
    unless $I5001 goto if478_end998 
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, 512, $S101, $I5005
    set $I5006, $I5004
  if478_end998:
    unless $I5006 goto if477_end996 
.annotate 'line', 1078
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5008, $P5012, $P5013, "$!pos"
    add $I5007, $I5008, 1
    $P5014 = $P101."!cursor_pass"($I5007, "cntrl")
  if477_end996:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "punct" :subid("cuid_80_1381281785.71956") :anon :lex :outer("cuid_82_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 1084
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "$target", $S101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P101, $P5001
    set $S101, ""
.annotate 'line', 1085
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start_cur"()
    set $P101, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!shared"
    nqp_get_sc_object $P5007, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 32
    repr_get_attr_str $S5001, $P5006, $P5007, "$!target", 1
    set $S101, $S5001
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_int $I5002, $P5008, $P5009, "$!pos"
    set $N5001, $I5002
    length $I5003, $S101
    set $N5002, $I5003
    islt $I5001, $N5001, $N5002
    set $I5006, $I5001
    unless $I5001 goto if480_end1002 
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, 1024, $S101, $I5005
    set $I5006, $I5004
  if480_end1002:
    unless $I5006 goto if479_end1000 
.annotate 'line', 1087
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5008, $P5012, $P5013, "$!pos"
    add $I5007, $I5008, 1
    $P5014 = $P101."!cursor_pass"($I5007, "punct")
  if479_end1000:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "FAILGOAL" :subid("cuid_81_1381281785.71956") :anon :lex :outer("cuid_82_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 1093
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :optional 
    .param int haz_param_21 :opt_flag 
    .lex "self", _lex_param_0 
    .lex "$goal", _lex_param_1 
    .lex "$dba", _lex_param_2 
    if haz_param_21, default1005
    nqp_get_sc_object $P5004, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set _lex_param_2, $P5004
  default1005:
    if _lex_param_2 goto unless481_end1004 
.annotate 'line', 1094
    getinterp $P5001
    set $P5001, $P5001['sub';1]
    set $S5001, $P5001
    box $P5002, $S5001
    set _lex_param_2, $P5002
  unless481_end1004:
    set $S5005, _lex_param_2
    concat $S5004, "Unable to parse expression in ", $S5005
    concat $S5003, $S5004, "; couldn't find final "
    set $S5006, _lex_param_1
    concat $S5002, $S5003, $S5006
    box $P5003, $S5002
    die $P5003
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_153_1381281785.71956") :anon :lex :outer("cuid_125_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 1102
    .const 'Sub' $P5014 = 'cuid_83_1381281785.71956' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_84_1381281785.71956' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_85_1381281785.71956' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_86_1381281785.71956' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_87_1381281785.71956' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_88_1381281785.71956' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_89_1381281785.71956' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_90_1381281785.71956' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_91_1381281785.71956' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_92_1381281785.71956' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_93_1381281785.71956' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_94_1381281785.71956' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_95_1381281785.71956' 
    capture_lex $P5014 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_83_1381281785.71956' 
    capture_lex $P5001
    .const 'Sub' $P5002 = 'cuid_84_1381281785.71956' 
    capture_lex $P5002
    .const 'Sub' $P5003 = 'cuid_85_1381281785.71956' 
    capture_lex $P5003
    .const 'Sub' $P5004 = 'cuid_86_1381281785.71956' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_87_1381281785.71956' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_88_1381281785.71956' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_89_1381281785.71956' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_90_1381281785.71956' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_91_1381281785.71956' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_92_1381281785.71956' 
    capture_lex $P5010
    .const 'Sub' $P5011 = 'cuid_93_1381281785.71956' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_94_1381281785.71956' 
    capture_lex $P5012
    .const 'Sub' $P5013 = 'cuid_95_1381281785.71956' 
    capture_lex $P5013
    .return ($P5013) 
.end
.HLL "nqp"
.namespace []
.sub "from" :subid("cuid_83_1381281785.71956") :anon :lex :outer("cuid_153_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 1109
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 89
    repr_get_attr_int $I5001, $P5001, $P5002, "$!from", 3
    .return ($I5001) 
.end
.HLL "nqp"
.namespace []
.sub "orig" :subid("cuid_84_1381281785.71956") :anon :lex :outer("cuid_153_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 1110
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 89
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!orig", 2
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "to" :subid("cuid_85_1381281785.71956") :anon :lex :outer("cuid_153_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 1111
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 89
    repr_get_attr_int $I5001, $P5001, $P5002, "$!to", 4
    .return ($I5001) 
.end
.HLL "nqp"
.namespace []
.sub "CURSOR" :subid("cuid_86_1381281785.71956") :anon :lex :outer("cuid_153_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 1112
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 89
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!cursor", 6
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "Str" :subid("cuid_87_1381281785.71956") :anon :lex :outer("cuid_153_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 1113
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 89
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!orig", 2
    set $S5002, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 89
    repr_get_attr_int $I5001, $P5004, $P5005, "$!from", 3
    nqp_decontainerize $P5006, _lex_param_0
    nqp_get_sc_object $P5007, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 89
    repr_get_attr_int $I5003, $P5006, $P5007, "$!to", 4
    nqp_decontainerize $P5008, _lex_param_0
    nqp_get_sc_object $P5009, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 89
    repr_get_attr_int $I5004, $P5008, $P5009, "$!from", 3
    sub $I5002, $I5003, $I5004
    substr $S5001, $S5002, $I5001, $I5002
    .return ($S5001) 
.end
.HLL "nqp"
.namespace []
.sub "Int" :subid("cuid_88_1381281785.71956") :anon :lex :outer("cuid_153_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 1114
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    $P5002 = $P5001."Str"()
    set $N5001, $P5002
    .return ($N5001) 
.end
.HLL "nqp"
.namespace []
.sub "Num" :subid("cuid_89_1381281785.71956") :anon :lex :outer("cuid_153_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 1115
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    $P5002 = $P5001."Str"()
    set $N5001, $P5002
    .return ($N5001) 
.end
.HLL "nqp"
.namespace []
.sub "Bool" :subid("cuid_90_1381281785.71956") :anon :lex :outer("cuid_153_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 1116
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 89
    repr_get_attr_int $I5002, $P5001, $P5002, "$!to", 4
    set $N5001, $I5002
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 89
    repr_get_attr_int $I5003, $P5003, $P5004, "$!from", 3
    set $N5002, $I5003
    isge $I5001, $N5001, $N5002
    .return ($I5001) 
.end
.HLL "nqp"
.namespace []
.sub "chars" :subid("cuid_91_1381281785.71956") :anon :lex :outer("cuid_153_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 1117
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 89
    repr_get_attr_int $I5002, $P5001, $P5002, "$!to", 4
    set $N5001, $I5002
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 89
    repr_get_attr_int $I5003, $P5003, $P5004, "$!from", 3
    set $N5002, $I5003
    isge $I5001, $N5001, $N5002
    unless $I5001 goto if482_else1006 
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 89
    repr_get_attr_int $I5005, $P5005, $P5006, "$!to", 4
    nqp_decontainerize $P5007, _lex_param_0
    nqp_get_sc_object $P5008, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 89
    repr_get_attr_int $I5006, $P5007, $P5008, "$!from", 3
    sub $I5004, $I5005, $I5006
    set $I5007, $I5004
    goto if482_end1007
  if482_else1006:
    set $I5007, 0
  if482_end1007:
    .return ($I5007) 
.end
.HLL "nqp"
.namespace []
.sub "!make" :subid("cuid_92_1381281785.71956") :anon :lex :outer("cuid_153_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 1119
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$ast", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 89
    repr_bind_attr_obj $P5001, $P5002, "$!ast", 5, _lex_param_1
    .return (_lex_param_1) 
.end
.HLL "nqp"
.namespace []
.sub "ast" :subid("cuid_93_1381281785.71956") :anon :lex :outer("cuid_153_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 1120
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 89
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!ast", 5
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "dump" :subid("cuid_94_1381281785.71956") :anon :lex :outer("cuid_153_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 1122
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :optional 
    .param int haz_param_22 :opt_flag 
    .const 'Sub' $P5009 = 'cuid_155_1381281785.71956' 
    capture_lex $P5009 
    .lex "self", _lex_param_0 
    .lex "$indent", _lex_param_1 
    if haz_param_22, default1035
    nqp_get_sc_object $P5008, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set _lex_param_1, $P5008
  default1035:
    root_new $P101, ['parrot';'Continuation']
    set_label $P101, lexotic_1008
    .lex "RETURN", $P101
    defined $I5001, _lex_param_1
    if $I5001 goto unless483_end1011 
.annotate 'line', 1123
    box $P5001, 0
    set _lex_param_1, $P5001
  unless483_end1011:
.annotate 'line', 1126
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."Bool"()
    unless $P5003 goto if484_else1012 
    .const 'Sub' $P5004 = 'cuid_155_1381281785.71956' 
    capture_lex $P5004
    $P5005 = $P5004()
    set $P5007, $P5005
    goto if484_end1013
  if484_else1012:
.annotate 'line', 1176
    set $I5002, _lex_param_1
    repeat $S5002, " ", $I5002
    concat $S5001, $S5002, "- NO MATCH\n"
    $P5006 = "RETURN"($S5001)
    set $P5007, $P5006
  if484_end1013:
    goto lexotic_1009
  lexotic_1008:
    .get_results ($P5007)
  lexotic_1009:
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_155_1381281785.71956") :anon :lex :outer("cuid_94_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 1126
    .const 'Sub' $P5022 = 'cuid_154_1381281785.71956' 
    capture_lex $P5022 
    .const 'Sub' $P5022 = 'cuid_157_1381281785.71956' 
    capture_lex $P5022 
    .const 'Sub' $P5022 = 'cuid_158_1381281785.71956' 
    capture_lex $P5022 
    .const 'Sub' $P5022 = 'cuid_159_1381281785.71956' 
    capture_lex $P5022 
    .lex "@chunks", $P101 
    .lex "&dump_match", $P102 
    .lex "&dump_match_array", $P103 
    .lex "$i", $I101 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    .const 'Sub' $P5002 = 'cuid_154_1381281785.71956' 
    capture_lex $P5002
    set $P102, $P5002
    .const 'Sub' $P5003 = 'cuid_157_1381281785.71956' 
    capture_lex $P5003
    set $P103, $P5003
    set $I101, 0
    set $I101, 0
.annotate 'line', 1159
    find_lex $P5008, "self"
    nqp_decontainerize $P5007, $P5008
    $P5009 = $P5007."list"()
    set $P5004, $P5009
    iter $P5006, $P5009
  for_next1025:
    unless $P5006, for_done1027
    shift $P5011, $P5006
  for_redo1026:
    .const 'Sub' $P5010 = 'cuid_158_1381281785.71956' 
    capture_lex $P5010
    $P5004 = $P5010($P5011)
    goto for_next1025
  for_done1027:
.annotate 'line', 1167
    find_lex $P5016, "self"
    nqp_decontainerize $P5015, $P5016
    $P5017 = $P5015."hash"()
    set $P5012, $P5017
    iter $P5014, $P5017
  for_next1032:
    unless $P5014, for_done1034
    shift $P5019, $P5014
  for_redo1033:
    .const 'Sub' $P5018 = 'cuid_159_1381281785.71956' 
    capture_lex $P5018
    $P5012 = $P5018($P5019)
    goto for_next1032
  for_done1034:
.annotate 'line', 1174
    $P5020 = "&join"("", $P101)
    $P5021 = "RETURN"($P5020)
    .return ($P5021) 
.end
.HLL "nqp"
.namespace []
.sub "dump_match" :subid("cuid_154_1381281785.71956") :anon :lex :outer("cuid_155_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 1129
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .lex "@chunks", _lex_param_0 
    .lex "$indent", _lex_param_1 
    .lex "$key", _lex_param_2 
    .lex "$value", _lex_param_3 
    set $I5001, _lex_param_1
    repeat $S5001, " ", $I5001
    box $P5001, $S5001
    push _lex_param_0, $P5001
    box $P5002, "- "
    push _lex_param_0, $P5002
    push _lex_param_0, _lex_param_2
    box $P5003, ": "
    push _lex_param_0, $P5003
    can $I5002, _lex_param_3, "Str"
    unless $I5002 goto if485_else1014 
.annotate 'line', 1134
.annotate 'line', 1135
    $P5004 = _lex_param_3."Str"()
    push _lex_param_0, $P5004
    goto if485_end1015
  if485_else1014:
.annotate 'line', 1137
    box $P5005, "<object>"
    push _lex_param_0, $P5005
  if485_end1015:
    box $P5006, "\n"
    push _lex_param_0, $P5006
    can $I5003, _lex_param_3, "dump"
    box $P5009, $I5003
    set $P5008, $P5009
    unless $I5003 goto if486_end1017 
.annotate 'line', 1141
.annotate 'line', 1142
    set $N5002, _lex_param_1
    set $N5003, 2
    add $N5001, $N5002, $N5003
    $P5007 = _lex_param_3."dump"($N5001)
    push _lex_param_0, $P5007
    set $P5008, _lex_param_0
  if486_end1017:
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "dump_match_array" :subid("cuid_157_1381281785.71956") :anon :lex :outer("cuid_155_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 1146
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .const 'Sub' $P5011 = 'cuid_156_1381281785.71956' 
    capture_lex $P5011 
    .lex "@chunks", _lex_param_0 
    .lex "$indent", _lex_param_1 
    .lex "$key", _lex_param_2 
    .lex "@matches", _lex_param_3 
    set $I5001, _lex_param_1
    repeat $S5001, " ", $I5001
    box $P5001, $S5001
    push _lex_param_0, $P5001
    box $P5002, "- "
    push _lex_param_0, $P5002
    push _lex_param_0, _lex_param_2
    box $P5003, ": "
    push _lex_param_0, $P5003
    set $N5001, _lex_param_3
    set $S5002, $N5001
    box $P5004, $S5002
    push _lex_param_0, $P5004
    box $P5005, " matches\n"
    push _lex_param_0, $P5005
    set $P5006, _lex_param_3
    iter $P5008, _lex_param_3
  for_next1018:
    unless $P5008, for_done1020
    shift $P5010, $P5008
  for_redo1019:
    .const 'Sub' $P5009 = 'cuid_156_1381281785.71956' 
    capture_lex $P5009
    $P5006 = $P5009($P5010)
    goto for_next1018
  for_done1020:
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_156_1381281785.71956") :anon :lex :outer("cuid_157_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 1153
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5001, "@chunks"
.annotate 'line', 1154
    find_lex $P5002, "$indent"
    set $N5002, $P5002
    set $N5003, 2
    add $N5001, $N5002, $N5003
    $P5003 = _lex_param_0."dump"($N5001)
    push $P5001, $P5003
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_158_1381281785.71956") :anon :lex :outer("cuid_155_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 1159
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    unless _lex_param_0 goto if487_end1022 
.annotate 'line', 1160
    nqp_islist $I5001, _lex_param_0
    unless $I5001 goto if488_else1023 
.annotate 'line', 1162
    find_lex $P5001, "@chunks"
    find_lex $P5002, "$indent"
    find_lex $I5002, "$i"
    $P5003 = "&dump_match_array"($P5001, $P5002, $I5002, _lex_param_0)
    set $P5007, $P5003
    goto if488_end1024
  if488_else1023:
.annotate 'line', 1163
    find_lex $P5004, "@chunks"
    find_lex $P5005, "$indent"
    find_lex $I5003, "$i"
    $P5006 = "&dump_match"($P5004, $P5005, $I5003, _lex_param_0)
    set $P5007, $P5006
  if488_end1024:
  if487_end1022:
    find_lex $I5005, "$i"
    add $I5004, $I5005, 1
    store_lex "$i", $I5004
    .return ($I5004) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_159_1381281785.71956") :anon :lex :outer("cuid_155_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 1167
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 1168
    $P5001 = _lex_param_0."value"()
    set $P5014, $P5001
    unless $P5001 goto if489_end1029 
.annotate 'line', 1169
    $P5002 = _lex_param_0."value"()
    nqp_islist $I5001, $P5002
    unless $I5001 goto if490_else1030 
.annotate 'line', 1170
    find_lex $P5003, "@chunks"
    find_lex $P5004, "$indent"
    $P5005 = _lex_param_0."key"()
    $P5006 = _lex_param_0."value"()
    $P5007 = "&dump_match_array"($P5003, $P5004, $P5005, $P5006)
    set $P5013, $P5007
    goto if490_end1031
  if490_else1030:
.annotate 'line', 1171
    find_lex $P5008, "@chunks"
    find_lex $P5009, "$indent"
    $P5010 = _lex_param_0."key"()
    $P5011 = _lex_param_0."value"()
    $P5012 = "&dump_match"($P5008, $P5009, $P5010, $P5011)
    set $P5013, $P5012
  if490_end1031:
    set $P5014, $P5013
  if489_end1029:
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "!dump_str" :subid("cuid_95_1381281785.71956") :anon :lex :outer("cuid_153_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 1181
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5024 = 'cuid_162_1381281785.71956' 
    capture_lex $P5024 
    .const 'Sub' $P5024 = 'cuid_163_1381281785.71956' 
    capture_lex $P5024 
    .const 'Sub' $P5024 = 'cuid_164_1381281785.71956' 
    capture_lex $P5024 
    .lex "&dump_array", $P101 
    .lex "$str", $P102 
    .lex "$n", $P103 
    .lex "self", _lex_param_0 
    .lex "$key", _lex_param_1 
    .const 'Sub' $P5001 = 'cuid_162_1381281785.71956' 
    capture_lex $P5001
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P102, $P5002
    nqp_get_sc_object $P5003, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P103, $P5003
    set $S5006, _lex_param_1
    concat $S5005, $S5006, ": "
.annotate 'line', 1194
    nqp_decontainerize $P5004, _lex_param_0
    $P5005 = $P5004."Str"()
    set $S5008, $P5005
    escape $S5007, $S5008
    concat $S5004, $S5005, $S5007
    concat $S5003, $S5004, " @ "
    nqp_decontainerize $P5006, _lex_param_0
    $P5007 = $P5006."from"()
    set $S5009, $P5007
    concat $S5002, $S5003, $S5009
    concat $S5001, $S5002, "\n"
    box $P5008, $S5001
    set $P102, $P5008
    box $P5009, 0
    set $P103, $P5009
.annotate 'line', 1196
    nqp_decontainerize $P5013, _lex_param_0
    $P5014 = $P5013."list"()
    set $P5010, $P5014
    iter $P5012, $P5014
  for_next1043:
    unless $P5012, for_done1045
    shift $P5016, $P5012
  for_redo1044:
    .const 'Sub' $P5015 = 'cuid_163_1381281785.71956' 
    capture_lex $P5015
    $P5010 = $P5015($P5016)
    goto for_next1043
  for_done1045:
.annotate 'line', 1197
    nqp_decontainerize $P5020, _lex_param_0
    $P5021 = $P5020."hash"()
    set $P5017, $P5021
    iter $P5019, $P5021
  for_next1046:
    unless $P5019, for_done1048
    shift $P5023, $P5019
  for_redo1047:
    .const 'Sub' $P5022 = 'cuid_164_1381281785.71956' 
    capture_lex $P5022
    $P5017 = $P5022($P5023)
    goto for_next1046
  for_done1048:
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "dump_array" :subid("cuid_162_1381281785.71956") :anon :lex :outer("cuid_95_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 1182
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5010 = 'cuid_161_1381281785.71956' 
    capture_lex $P5010 
    .lex "$str", $P101 
    .lex "$key", _lex_param_0 
    .lex "$item", _lex_param_1 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P101, $P5001
    box $P5002, ""
    set $P101, $P5002
    nqp_get_sc_object $P5003, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 42
    type_check $I5001, _lex_param_1, $P5003
    unless $I5001 goto if491_else1036 
.annotate 'line', 1184
    set $S5002, $P101
.annotate 'line', 1185
    $P5004 = _lex_param_1."!dump_str"(_lex_param_0)
    set $S5003, $P5004
    concat $S5001, $S5002, $S5003
    box $P5005, $S5001
    set $P101, $P5005
    goto if491_end1037
  if491_else1036:
    nqp_islist $I5002, _lex_param_1
    box $P5009, $I5002
    set $P5008, $P5009
    unless $I5002 goto if492_end1039 
    .const 'Sub' $P5006 = 'cuid_161_1381281785.71956' 
    capture_lex $P5006
    $P5007 = $P5006()
    set $P5008, $P5007
  if492_end1039:
  if491_end1037:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_161_1381281785.71956") :anon :lex :outer("cuid_162_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 1187
    .const 'Sub' $P5012 = 'cuid_160_1381281785.71956' 
    capture_lex $P5012 
    .lex "$n", $P101 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P101, $P5001
    find_lex $P5002, "$str"
    set $S5002, $P5002
    find_lex $P5003, "$key"
    set $S5004, $P5003
    concat $S5003, $S5004, ": list\n"
    concat $S5001, $S5002, $S5003
    box $P5004, $S5001
    store_lex "$str", $P5004
    box $P5005, 0
    set $P101, $P5005
    find_lex $P5009, "$item"
    set $P5006, $P5009
    iter $P5008, $P5009
  for_next1040:
    unless $P5008, for_done1042
    shift $P5011, $P5008
  for_redo1041:
    .const 'Sub' $P5010 = 'cuid_160_1381281785.71956' 
    capture_lex $P5010
    $P5006 = $P5010($P5011)
    goto for_next1040
  for_done1042:
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_160_1381281785.71956") :anon :lex :outer("cuid_161_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 1190
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    .local pmc tmp_10 
    find_lex $P5001, "$str"
    set $S5002, $P5001
    find_lex $P5002, "$key"
    set $S5004, $P5002
    find_lex $P5003, "$n"
    set $S5007, $P5003
    concat $S5006, "[", $S5007
    concat $S5005, $S5006, "]"
    concat $S5003, $S5004, $S5005
    $P5004 = "&dump_array"($S5003, _lex_param_0)
    set $S5008, $P5004
    concat $S5001, $S5002, $S5008
    box $P5005, $S5001
    store_lex "$str", $P5005
    find_lex $P5006, "$n"
    set tmp_10, $P5006
    set $N5002, tmp_10
    set $N5003, 1
    add $N5001, $N5002, $N5003
    box $P5007, $N5001
    store_lex "$n", $P5007
    .return (tmp_10) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_163_1381281785.71956") :anon :lex :outer("cuid_95_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 1196
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    .local pmc tmp_11 
    find_lex $P5001, "$str"
    set $S5002, $P5001
    find_lex $P5002, "$key"
    set $S5006, $P5002
    concat $S5005, $S5006, "["
    find_lex $P5003, "$n"
    set $S5007, $P5003
    concat $S5004, $S5005, $S5007
    concat $S5003, $S5004, "]"
    $P5004 = "&dump_array"($S5003, _lex_param_0)
    set $S5008, $P5004
    concat $S5001, $S5002, $S5008
    box $P5005, $S5001
    store_lex "$str", $P5005
    find_lex $P5006, "$n"
    set tmp_11, $P5006
    set $N5002, tmp_11
    set $N5003, 1
    add $N5001, $N5002, $N5003
    box $P5007, $N5001
    store_lex "$n", $P5007
    .return (tmp_11) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_164_1381281785.71956") :anon :lex :outer("cuid_95_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 1197
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5001, "$str"
    set $S5002, $P5001
    find_lex $P5002, "$key"
    set $S5006, $P5002
    concat $S5005, $S5006, "<"
    $P5003 = _lex_param_0."key"()
    set $S5007, $P5003
    concat $S5004, $S5005, $S5007
    concat $S5003, $S5004, ">"
    $P5004 = _lex_param_0."value"()
    $P5005 = "&dump_array"($S5003, $P5004)
    set $S5008, $P5005
    concat $S5001, $S5002, $S5008
    box $P5006, $S5001
    store_lex "$str", $P5006
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_165_1381281785.71956") :anon :lex :outer("cuid_125_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 1202
    .const 'Sub' $P5006 = 'cuid_96_1381281785.71956' 
    capture_lex $P5006 
    .const 'Sub' $P5006 = 'cuid_97_1381281785.71956' 
    capture_lex $P5006 
    .const 'Sub' $P5006 = 'cuid_98_1381281785.71956' 
    capture_lex $P5006 
    .const 'Sub' $P5006 = 'cuid_99_1381281785.71956' 
    capture_lex $P5006 
    .const 'Sub' $P5006 = 'cuid_100_1381281785.71956' 
    capture_lex $P5006 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_96_1381281785.71956' 
    capture_lex $P5001
    .const 'Sub' $P5002 = 'cuid_97_1381281785.71956' 
    capture_lex $P5002
    .const 'Sub' $P5003 = 'cuid_98_1381281785.71956' 
    capture_lex $P5003
    .const 'Sub' $P5004 = 'cuid_99_1381281785.71956' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_100_1381281785.71956' 
    capture_lex $P5005
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "MATCH" :subid("cuid_96_1381281785.71956") :anon :lex :outer("cuid_165_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 1203
    .param pmc _lex_param_0 
    .const 'Sub' $P5008 = 'cuid_166_1381281785.71956' 
    capture_lex $P5008 
    .lex "$match", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P101, $P5001
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 103
    getattribute $P5002, $P5003, $P5004, "$!match"
    set $P101, $P5002
    nqp_get_sc_object $P5005, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 89
    type_check $I5001, $P101, $P5005
    set $I5003, $I5001
    if $I5001 goto unless494_end1052 
    nqp_ishash $I5002, $P101
    set $I5003, $I5002
  unless494_end1052:
    if $I5003 goto unless493_end1050 
    .const 'Sub' $P5006 = 'cuid_166_1381281785.71956' 
    capture_lex $P5006
    $P5007 = $P5006()
  unless493_end1050:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_166_1381281785.71956") :anon :lex :outer("cuid_96_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 1205
    .lex "$list", $P101 
    .lex "$hash", $P102 
    .lex "%ch", $P103 
    .lex "$curcap", $P104 
    .lex "$key", $S101 
    .lex "$iter", $P105 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P102, $P5002
    new $P5003, 'Hash'
    set $P103, $P5003
    nqp_get_sc_object $P5004, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P104, $P5004
    set $S101, ""
    nqp_get_sc_object $P5005, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P105, $P5005
    new $P5006, 'ResizablePMCArray'
    set $P101, $P5006
    new $P5007, 'Hash'
    set $P102, $P5007
    nqp_get_sc_object $P5009, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 89
    repr_instance_of $P5008, $P5009
    store_lex "$match", $P5008
    find_lex $P5011, "self"
    nqp_decontainerize $P5010, $P5011
    nqp_get_sc_object $P5012, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 103
    find_lex $P5013, "$match"
    setattribute $P5010, $P5012, "$!match", $P5013
    find_lex $P5014, "$match"
    nqp_get_sc_object $P5015, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 89
    find_lex $P5017, "self"
    nqp_decontainerize $P5016, $P5017
    setattribute $P5014, $P5015, "$!cursor", $P5016
    find_lex $P5018, "$match"
    nqp_get_sc_object $P5019, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 89
.annotate 'line', 1211
    find_lex $P5021, "self"
    nqp_decontainerize $P5020, $P5021
    $P5022 = $P5020."orig"()
    setattribute $P5018, $P5019, "$!orig", $P5022
    find_lex $P5023, "$match"
    nqp_get_sc_object $P5024, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 89
    find_lex $P5026, "self"
    nqp_decontainerize $P5025, $P5026
    nqp_get_sc_object $P5027, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 103
    repr_get_attr_int $I5001, $P5025, $P5027, "$!from", 1
    repr_bind_attr_int $P5023, $P5024, "$!from", 3, $I5001
    find_lex $P5028, "$match"
    nqp_get_sc_object $P5029, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 89
    find_lex $P5031, "self"
    nqp_decontainerize $P5030, $P5031
    nqp_get_sc_object $P5032, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 103
    repr_get_attr_int $I5002, $P5030, $P5032, "$!pos", 2
    repr_bind_attr_int $P5028, $P5029, "$!to", 4, $I5002
.annotate 'line', 1214
    find_lex $P5034, "self"
    nqp_decontainerize $P5033, $P5034
    $P5035 = $P5033."CAPHASH"()
    set $P103, $P5035
    iter $P5036, $P103
    set $P105, $P5036
  while495_test1053:
    set $P5050, $P105
    unless $P105 goto while495_done1057 
  while495_redo1055:
.annotate 'line', 1218
    shift $P5037, $P105
    set $P104, $P5037
    $P5038 = $P104."key"()
    set $S5001, $P5038
    set $S101, $S5001
    iseq $I5003, $S101, "$!from"
    set $I5005, $I5003
    if $I5003 goto unless497_end1061 
    iseq $I5004, $S101, "$!to"
    set $I5005, $I5004
  unless497_end1061:
    unless $I5005 goto if496_else1058 
.annotate 'line', 1221
    find_lex $P5039, "$match"
    nqp_get_sc_object $P5040, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 89
.annotate 'line', 1222
    $P5041 = $P104."value"()
    $P5042 = $P5041."from"()
    set $I5006, $P5042
    repr_bind_attr_int $P5039, $P5040, $S101, $I5006
    box $P5049, $I5006
    set $P5048, $P5049
    goto if496_end1059
  if496_else1058:
    is_cclass $I5007, 8, $S101, 0
    unless $I5007 goto if498_else1062 
.annotate 'line', 1224
    if $P101 goto unless499_end1065 
    new $P5043, 'ResizablePMCArray'
    set $P101, $P5043
  unless499_end1065:
    set $I5008, $S101
    $P5044 = $P104."value"()
    set $P101[$I5008], $P5044
    set $P5047, $P5044
    goto if498_end1063
  if498_else1062:
.annotate 'line', 1228
    if $P102 goto unless500_end1067 
    new $P5045, 'Hash'
    set $P102, $P5045
  unless500_end1067:
    $P5046 = $P104."value"()
    set $P102[$S101], $P5046
    set $P5047, $P5046
  if498_end1063:
    set $P5048, $P5047
  if496_end1059:
    set $P5050, $P5048
    goto while495_test1053 
  while495_done1057:
    find_lex $P5051, "$match"
    nqp_get_sc_object $P5052, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 42
    setattribute $P5051, $P5052, "@!array", $P101
    find_lex $P5053, "$match"
    nqp_get_sc_object $P5054, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 42
    setattribute $P5053, $P5054, "%!hash", $P102
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "Bool" :subid("cuid_97_1381281785.71956") :anon :lex :outer("cuid_165_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 1239
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5002, _lex_param_0
    find_lex $P5003, "$?CLASS"
    getattribute $P5001, $P5002, $P5003, "$!match"
    isnull $I5002, $P5001
    not $I5001, $I5002
    set $I5004, $I5001
    unless $I5001 goto if501_end1069 
    nqp_decontainerize $P5005, _lex_param_0
    find_lex $P5006, "$?CLASS"
    getattribute $P5004, $P5005, $P5006, "$!match"
    istrue $I5003, $P5004
    set $I5004, $I5003
  if501_end1069:
    .return ($I5004) 
.end
.HLL "nqp"
.namespace []
.sub "parse" :subid("cuid_98_1381281785.71956") :anon :lex :outer("cuid_165_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 1244
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :named("rule") :optional 
    .param int haz_param_23 :opt_flag 
    .param pmc _lex_param_3 :named("actions") :optional 
    .param int haz_param_24 :opt_flag 
    .param pmc _lex_param_4 :slurpy :named 
    .lex "$*ACTIONS", $P101 
    .lex "$cur", $P102 
    .lex "self", _lex_param_0 
    .lex "$target", _lex_param_1 
    .lex "$rule", _lex_param_2 
    .lex "$actions", _lex_param_3 
    .lex "%options", _lex_param_4 
    if haz_param_23, default1072
    box $P5011, "TOP"
    set _lex_param_2, $P5011
  default1072:
    if haz_param_24, default1073
    nqp_get_sc_object $P5012, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set _lex_param_3, $P5012
  default1073:
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P101, $P5001
    nqp_get_sc_object $P5002, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P102, $P5002
    set $P101, _lex_param_3
.annotate 'line', 1246
    nqp_decontainerize $P5003, _lex_param_0
    $P5004 = $P5003."!cursor_init"(_lex_param_1, _lex_param_4 :flat :named)
    set $P102, $P5004
    is_invokable $I5001, _lex_param_2
    unless $I5001 goto if502_else1070 
.annotate 'line', 1248
    $P5005 = _lex_param_2($P102)
    $P5006 = $P5005."MATCH"()
    set $P5010, $P5006
    goto if502_end1071
  if502_else1070:
.annotate 'line', 1249
    set $S5001, _lex_param_2
    find_method $P5007, $P102, $S5001
    $P5008 = $P5007($P102)
    $P5009 = $P5008."MATCH"()
    set $P5010, $P5009
  if502_end1071:
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "!INTERPOLATE" :subid("cuid_99_1381281785.71956") :anon :lex :outer("cuid_165_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 1252
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :optional 
    .param int haz_param_25 :opt_flag 
    .const 'Sub' $P5007 = 'cuid_171_1381281785.71956' 
    capture_lex $P5007 
    .const 'Sub' $P5007 = 'cuid_172_1381281785.71956' 
    capture_lex $P5007 
    .lex "self", _lex_param_0 
    .lex "$var", _lex_param_1 
    .lex "$s", _lex_param_2 
    if haz_param_25, default1106
    box $P5006, 0
    set _lex_param_2, $P5006
  default1106:
    root_new $P101, ['parrot';'Continuation']
    set_label $P101, lexotic_1074
    .lex "RETURN", $P101
    nqp_islist $I5001, _lex_param_1
    unless $I5001 goto if503_else1076 
    .const 'Sub' $P5001 = 'cuid_171_1381281785.71956' 
    capture_lex $P5001
    $P5002 = $P5001()
    set $P5005, $P5002
    goto if503_end1077
  if503_else1076:
    .const 'Sub' $P5003 = 'cuid_172_1381281785.71956' 
    capture_lex $P5003
    $P5004 = $P5003()
    set $P5005, $P5004
  if503_end1077:
    goto lexotic_1075
  lexotic_1074:
    .get_results ($P5005)
  lexotic_1075:
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_171_1381281785.71956") :anon :lex :outer("cuid_99_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 1253
    .const 'Sub' $P5016 = 'cuid_169_1381281785.71956' 
    capture_lex $P5016 
    .lex "$maxlen", $I101 
    .lex "$cur", $P101 
    .lex "$pos", $I102 
    .lex "$tgt", $S101 
    .lex "$eos", $I103 
    set $I101, 0
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P101, $P5001
    set $I102, 0
    set $S101, ""
    set $I103, 0
    set $I101, -1
.annotate 'line', 1255
    find_lex $P5003, "self"
    nqp_decontainerize $P5002, $P5003
    $P5004 = $P5002."!cursor_start_cur"()
    set $P101, $P5004
    find_lex $P5005, "$?CLASS"
    repr_get_attr_int $I5001, $P101, $P5005, "$!from"
    set $I102, $I5001
.annotate 'line', 1257
    $P5006 = $P101."target"()
    set $S5001, $P5006
    set $S101, $S5001
    length $I5002, $S101
    set $I103, $I5002
    find_lex $P5010, "$var"
    set $P5007, $P5010
    iter $P5009, $P5010
    new $P5012, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5012, for_handlers1094
    push_eh $P5012
  for_next1095:
    unless $P5009, for_done1097
    shift $P5013, $P5009
  for_redo1096:
    .const 'Sub' $P5011 = 'cuid_169_1381281785.71956' 
    capture_lex $P5011
    $P5007 = $P5011($P5013)
    goto for_next1095
  for_handlers1094:
    .get_results ($P5012)
    pop_upto_eh $P5012
    getattribute $P5012, $P5012, 'type'
    eq $P5012, .CONTROL_LOOP_NEXT, for_next1095
    eq $P5012, .CONTROL_LOOP_REDO, for_redo1096
  for_done1097:
    pop_eh 
    set $N5001, $I101
    set $N5002, 0
    isge $I5003, $N5001, $N5002
    unless $I5003 goto if512_end1099 
.annotate 'line', 1275
    add $I5004, $I102, $I101
    $P5014 = $P101."!cursor_pass"($I5004, "")
  if512_end1099:
    $P5015 = "RETURN"($P101)
    .return ($P5015) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_169_1381281785.71956") :anon :lex :outer("cuid_171_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 1259
    .param pmc _lex_param_0 
    .const 'Sub' $P5010 = 'cuid_168_1381281785.71956' 
    capture_lex $P5010 
    .const 'Sub' $P5010 = 'cuid_170_1381281785.71956' 
    capture_lex $P5010 
    .lex "$_", _lex_param_0 
    is_invokable $I5001, _lex_param_0
    unless $I5001 goto if504_else1078 
    .const 'Sub' $P5001 = 'cuid_168_1381281785.71956' 
    capture_lex $P5001
    $P5002 = $P5001()
    goto if504_end1079
  if504_else1078:
    .const 'Sub' $P5003 = 'cuid_170_1381281785.71956' 
    capture_lex $P5003
    $P5004 = $P5003()
  if504_end1079:
    find_lex $P5005, "$s"
    set $P5006, $P5005
    unless $P5005 goto if511_end1093 
    find_lex $I5003, "$maxlen"
    set $N5001, $I5003
    set $N5002, -1
    isgt $I5002, $N5001, $N5002
    box $P5007, $I5002
    set $P5006, $P5007
  if511_end1093:
    set $P5008, $P5006
    unless $P5006 goto if510_end1091 
    die 0, .CONTROL_LOOP_LAST
    box $P5009, 0
    set $P5008, $P5009
  if510_end1091:
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_168_1381281785.71956") :anon :lex :outer("cuid_169_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 1260
    .const 'Sub' $P5009 = 'cuid_167_1381281785.71956' 
    capture_lex $P5009 
    .lex "$res", $P101 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P101, $P5001
.annotate 'line', 1261
    find_lex $P5004, "self"
    nqp_decontainerize $P5003, $P5004
    find_lex $P5002, "$_"
    $P5005 = $P5002($P5003)
    set $P101, $P5005
    set $P5008, $P101
    unless $P101 goto if505_end1081 
    .const 'Sub' $P5006 = 'cuid_167_1381281785.71956' 
    capture_lex $P5006
    $P5007 = $P5006()
    set $P5008, $P5007
  if505_end1081:
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_167_1381281785.71956") :anon :lex :outer("cuid_168_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 1262
    .lex "$adv", $I101 
    set $I101, 0
    find_lex $P5001, "$res"
    find_lex $P5002, "$?CLASS"
    repr_get_attr_int $I5001, $P5001, $P5002, "$!pos"
    set $I101, $I5001
    find_lex $I5003, "$pos"
    sub $I5002, $I101, $I5003
    set $I101, $I5002
    set $N5001, $I101
    find_lex $I5005, "$maxlen"
    set $N5002, $I5005
    isgt $I5004, $N5001, $N5002
    set $I5006, $I5004
    unless $I5004 goto if506_end1083 
    store_lex "$maxlen", $I101
    set $I5006, $I101
  if506_end1083:
    .return ($I5006) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_170_1381281785.71956") :anon :lex :outer("cuid_169_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 1268
    .lex "$len", $I101 
    set $I101, 0
    find_lex $P5001, "$_"
    set $S5001, $P5001
    length $I5001, $S5001
    set $I101, $I5001
    set $N5001, $I101
    find_lex $I5003, "$maxlen"
    set $N5002, $I5003
    isgt $I5002, $N5001, $N5002
    set $I5008, $I5002
    unless $I5002 goto if509_end1089 
    find_lex $I5006, "$pos"
    add $I5005, $I5006, $I101
    set $N5003, $I5005
    find_lex $I5007, "$eos"
    set $N5004, $I5007
    isle $I5004, $N5003, $N5004
    set $I5008, $I5004
  if509_end1089:
    set $I5011, $I5008
    unless $I5008 goto if508_end1087 
    find_lex $S5003, "$tgt"
    find_lex $I5010, "$pos"
    substr $S5002, $S5003, $I5010, $I101
    find_lex $P5002, "$_"
    set $S5004, $P5002
    iseq $I5009, $S5002, $S5004
    set $I5011, $I5009
  if508_end1087:
    set $I5012, $I5011
    unless $I5011 goto if507_end1085 
    store_lex "$maxlen", $I101
    set $I5012, $I101
  if507_end1085:
    .return ($I5012) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_172_1381281785.71956") :anon :lex :outer("cuid_99_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 1278
    .lex "$cur", $P101 
    .lex "$pos", $I101 
    .lex "$tgt", $S101 
    .lex "$len", $I102 
    .lex "$adv", $I103 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P101, $P5001
    set $I101, 0
    set $S101, ""
    set $I102, 0
    set $I103, 0
    find_lex $P5002, "$var"
    is_invokable $I5001, $P5002
    unless $I5001 goto if513_end1101 
.annotate 'line', 1279
    find_lex $P5005, "self"
    nqp_decontainerize $P5004, $P5005
    find_lex $P5003, "$var"
    $P5006 = $P5003($P5004)
    $P5007 = "RETURN"($P5006)
  if513_end1101:
.annotate 'line', 1280
    find_lex $P5009, "self"
    nqp_decontainerize $P5008, $P5009
    $P5010 = $P5008."!cursor_start_cur"()
    set $P101, $P5010
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5002, $P101, $P5011, "$!from"
    set $I101, $I5002
.annotate 'line', 1282
    $P5012 = $P101."target"()
    set $S5001, $P5012
    set $S101, $S5001
    find_lex $P5013, "$var"
    set $S5002, $P5013
    length $I5003, $S5002
    set $I102, $I5003
    add $I5004, $I101, $I102
    set $I103, $I5004
    set $N5001, $I103
    length $I5006, $S101
    set $N5002, $I5006
    isgt $I5005, $N5001, $N5002
    set $I5008, $I5005
    if $I5005 goto unless515_end1105 
    substr $S5003, $S101, $I101, $I102
    find_lex $P5014, "$var"
    set $S5004, $P5014
    isne $I5007, $S5003, $S5004
    set $I5008, $I5007
  unless515_end1105:
    unless $I5008 goto if514_end1103 
    $P5015 = "RETURN"($P101)
  if514_end1103:
.annotate 'line', 1287
    $P101."!cursor_pass"($I103, "")
    $P5016 = "RETURN"($P101)
    .return ($P5016) 
.end
.HLL "nqp"
.namespace []
.sub "!INTERPOLATE_REGEX" :subid("cuid_100_1381281785.71956") :anon :lex :outer("cuid_165_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 1292
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5006 = 'cuid_175_1381281785.71956' 
    capture_lex $P5006 
    .lex "self", _lex_param_0 
    .lex "$var", _lex_param_1 
    root_new $P101, ['parrot';'Continuation']
    set_label $P101, lexotic_1107
    .lex "RETURN", $P101
    is_invokable $I5001, _lex_param_1
    if $I5001 goto unless516_end1110 
    .const 'Sub' $P5001 = 'cuid_175_1381281785.71956' 
    capture_lex $P5001
    $P5002 = $P5001()
  unless516_end1110:
.annotate 'line', 1308
    nqp_decontainerize $P5003, _lex_param_0
    $P5004 = $P5003."!INTERPOLATE"(_lex_param_1)
    $P5005 = "RETURN"($P5004)
    goto lexotic_1108
  lexotic_1107:
    .get_results ($P5005)
  lexotic_1108:
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_175_1381281785.71956") :anon :lex :outer("cuid_100_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 1293
    .const 'Sub' $P5009 = 'cuid_174_1381281785.71956' 
    capture_lex $P5009 
    .lex "$rxcompiler", $P101 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P101, $P5001
    compreg $P5002, "QRegex::P6Regex"
    set $P101, $P5002
    find_lex $P5003, "$var"
    nqp_islist $I5001, $P5003
    unless $I5001 goto if517_else1111 
    .const 'Sub' $P5004 = 'cuid_174_1381281785.71956' 
    capture_lex $P5004
    $P5005 = $P5004()
    set $P5008, $P5005
    goto if517_end1112
  if517_else1111:
.annotate 'line', 1304
.annotate 'line', 1305
    find_lex $P5006, "$var"
    $P5007 = $P101."compile"($P5006)
    store_lex "$var", $P5007
    set $P5008, $P5007
  if517_end1112:
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_174_1381281785.71956") :anon :lex :outer("cuid_175_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 1295
    .const 'Sub' $P5009 = 'cuid_173_1381281785.71956' 
    capture_lex $P5009 
    .lex "$res", $P101 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P101, $P5001
    new $P5002, 'ResizablePMCArray'
    set $P101, $P5002
    find_lex $P5006, "$var"
    set $P5003, $P5006
    iter $P5005, $P5006
  for_next1115:
    unless $P5005, for_done1117
    shift $P5008, $P5005
  for_redo1116:
    .const 'Sub' $P5007 = 'cuid_173_1381281785.71956' 
    capture_lex $P5007
    $P5003 = $P5007($P5008)
    goto for_next1115
  for_done1117:
    store_lex "$var", $P101
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_173_1381281785.71956") :anon :lex :outer("cuid_174_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 1297
    .param pmc _lex_param_0 
    .lex "$elem", $P101 
    .lex "$_", _lex_param_0 
    nqp_get_sc_object $P5001, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314", 26
    set $P101, $P5001
    set $P101, _lex_param_0
    is_invokable $I5001, $P101
    if $I5001 goto unless518_end1114 
.annotate 'line', 1299
    find_lex $P5002, "$rxcompiler"
    $P5003 = $P5002."compile"($P101)
    set $P101, $P5003
  unless518_end1114:
    find_lex $P5004, "$res"
    push $P5004, $P101
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_176_1381281785.71956") :anon :lex :outer("cuid_125_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 1312
    .const 'Sub' $P5005 = 'cuid_120_1381281785.71956' 
    capture_lex $P5005 
    .const 'Sub' $P5005 = 'cuid_121_1381281785.71956' 
    capture_lex $P5005 
    .const 'Sub' $P5005 = 'cuid_122_1381281785.71956' 
    capture_lex $P5005 
    .const 'Sub' $P5005 = 'cuid_123_1381281785.71956' 
    capture_lex $P5005 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_120_1381281785.71956' 
    capture_lex $P5001
    .const 'Sub' $P5002 = 'cuid_121_1381281785.71956' 
    capture_lex $P5002
    .const 'Sub' $P5003 = 'cuid_122_1381281785.71956' 
    capture_lex $P5003
    .const 'Sub' $P5004 = 'cuid_123_1381281785.71956' 
    capture_lex $P5004
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "new" :subid("cuid_120_1381281785.71956") :anon :lex :outer("cuid_176_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 1314
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$code", _lex_param_1 
.annotate 'line', 1315
    nqp_decontainerize $P5001, _lex_param_0
    $P5002 = $P5001."bless"(_lex_param_1 :named("code"))
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "ACCEPTS" :subid("cuid_121_1381281785.71956") :anon :lex :outer("cuid_176_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 1317
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", $P101 
    .lex "$self", _lex_param_0 
    .lex "$target", _lex_param_1 
    set $P101, _lex_param_0
.annotate 'line', 1318
    nqp_get_sc_object $P5001, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 103
    nqp_decontainerize $P5002, $P101
    $P5003 = $P5001."parse"(_lex_param_1, $P5002 :named("rule"))
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "name" :subid("cuid_122_1381281785.71956") :anon :lex :outer("cuid_176_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 1320
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 109
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!code", 0
    set $S5001, $P5003
    .return ($S5001) 
.end
.HLL "nqp"
.namespace []
.sub "Str" :subid("cuid_123_1381281785.71956") :anon :lex :outer("cuid_176_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 1323
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
.annotate 'line', 1324
    nqp_decontainerize $P5001, _lex_param_0
    $P5002 = $P5001."name"()
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_177_1381281785.71956") :anon :lex :outer("cuid_125_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 1329
    .const 'Sub' $P5002 = 'cuid_124_1381281785.71956' 
    capture_lex $P5002 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_124_1381281785.71956' 
    capture_lex $P5001
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "ACCEPTS" :subid("cuid_124_1381281785.71956") :anon :lex :outer("cuid_177_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 1330
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", $P101 
    .lex "$self", _lex_param_0 
    .lex "$target", _lex_param_1 
    set $P101, _lex_param_0
.annotate 'line', 1331
    nqp_get_sc_object $P5001, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 103
    nqp_decontainerize $P5002, $P101
    $P5003 = $P5001."parse"(_lex_param_1, $P5002 :named("rule"), 0 :named("c"))
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_179_1381281785.71956") :load :init
.annotate 'file', "src/stage2/QRegex.nqp"
    .const 'Sub' $P5001 = 'cuid_178_1381281785.71956' 
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
    .const 'Sub' $P5001 = "cuid_125_1381281785.71956" 
    get_hll_global $P5002, "ModuleLoader"
    $P5003 = $P5002."load_setting"("NQPCORE")
    $P5004 = $P5001."set_outer_ctx"($P5003)
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P5001, "ModuleLoader"
    $P5001."load_module"("QASTNode")
    nqp_create_sc $P5001, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165"
    set cur_sc, $P5001
    $P5002 = cur_sc."set_description"("src/stage2/QRegex.nqp")
    new $P5003, 'ResizablePMCArray'
    set conflicts, $P5003
    new $P5004, 'ResizableStringArray'
    null $S5001
    push $P5004, $S5001
    push $P5004, "P6opaque"
    push $P5004, "QAST"
    push $P5004, "QRegex"
    push $P5004, "NQPCursorRole"
    push $P5004, "NQPMatch"
    push $P5004, "NQPCursor"
    push $P5004, "NQPRegexMethod"
    push $P5004, "NQPRegex"
    push $P5004, "DEFAULT"
    push $P5004, "ParseShared"
    push $P5004, "CREATE"
    push $P5004, "7A67D46DDEA3C60BB73DFB1CA4F76715F3D1212C-1381281780.68314"
    push $P5004, "src/stage2/NQPCORE.setting"
    push $P5004, "bless"
    push $P5004, "BUILDALL"
    push $P5004, "new"
    push $P5004, "Str"
    push $P5004, "Numeric"
    push $P5004, "Int"
    push $P5004, "defined"
    push $P5004, "ACCEPTS"
    push $P5004, "isa"
    push $P5004, "from_saved"
    push $P5004, "addstate"
    push $P5004, "addedge"
    push $P5004, "states"
    push $P5004, "addnode"
    push $P5004, "regex_nfa"
    push $P5004, "fate"
    push $P5004, "alt"
    push $P5004, "anchor"
    push $P5004, "dba"
    push $P5004, "cclass"
    push $P5004, "concat"
    push $P5004, "enumcharlist"
    push $P5004, "literal"
    push $P5004, "subrule"
    push $P5004, "quant"
    push $P5004, "qastnode"
    push $P5004, "subcapture"
    push $P5004, "save"
    push $P5004, "mergesubrule"
    push $P5004, "mergesubstates"
    push $P5004, "run"
    push $P5004, "run_alt"
    push $P5004, "generic"
    push $P5004, "instantiate_generic"
    push $P5004, "__dump"
    push $P5004, "$!states"
    push $P5004, "$!edges"
    push $P5004, "$!generic"
    push $P5004, "$!nfa_object"
    push $P5004, "NFA"
    push $P5004, "log_cc"
    push $P5004, "log_dump"
    push $P5004, "$!orig"
    push $P5004, "$!target"
    push $P5004, "$!highwater"
    push $P5004, "@!highexpect"
    push $P5004, "%!marks"
    push $P5004, "$!fail_cursor"
    push $P5004, "Uninstantiable"
    push $P5004, "BUILD"
    push $P5004, "list"
    push $P5004, "hash"
    push $P5004, "from"
    push $P5004, "orig"
    push $P5004, "to"
    push $P5004, "CURSOR"
    push $P5004, "Num"
    push $P5004, "Bool"
    push $P5004, "chars"
    push $P5004, "!make"
    push $P5004, "ast"
    push $P5004, "dump"
    push $P5004, "!dump_str"
    push $P5004, "@!array"
    push $P5004, "%!hash"
    push $P5004, "$!from"
    push $P5004, "$!to"
    push $P5004, "$!ast"
    push $P5004, "$!cursor"
    push $P5004, "MATCH"
    push $P5004, "parse"
    push $P5004, "!INTERPOLATE"
    push $P5004, "!INTERPOLATE_REGEX"
    push $P5004, "target"
    push $P5004, "pos"
    push $P5004, "CAPHASH"
    push $P5004, "!cursor_init"
    push $P5004, "!cursor_start_all"
    push $P5004, "!cursor_start_cur"
    push $P5004, "!cursor_start_fail"
    push $P5004, "!cursor_start_subcapture"
    push $P5004, "!cursor_capture"
    push $P5004, "!cursor_push_cstack"
    push $P5004, "!cursor_pass"
    push $P5004, "!cursor_fail"
    push $P5004, "!cursor_pos"
    push $P5004, "!cursor_next"
    push $P5004, "!cursor_more"
    push $P5004, "!reduce"
    push $P5004, "!reduce_with_match"
    push $P5004, "!shared"
    push $P5004, "!protoregex"
    push $P5004, "!protoregex_nfa"
    push $P5004, "!protoregex_table"
    push $P5004, "!alt"
    push $P5004, "!alt_nfa"
    push $P5004, "!precompute_nfas"
    push $P5004, "!dba"
    push $P5004, "!highwater"
    push $P5004, "!highexpect"
    push $P5004, "!fresh_highexpect"
    push $P5004, "!set_highexpect"
    push $P5004, "!clear_highwater"
    push $P5004, "!BACKREF"
    push $P5004, "!LITERAL"
    push $P5004, "at"
    push $P5004, "before"
    push $P5004, "after"
    push $P5004, "ws"
    push $P5004, "ww"
    push $P5004, "wb"
    push $P5004, "ident"
    push $P5004, "alpha"
    push $P5004, "alnum"
    push $P5004, "upper"
    push $P5004, "lower"
    push $P5004, "digit"
    push $P5004, "xdigit"
    push $P5004, "space"
    push $P5004, "blank"
    push $P5004, "cntrl"
    push $P5004, "punct"
    push $P5004, "FAILGOAL"
    push $P5004, "$!shared"
    push $P5004, "$!pos"
    push $P5004, "$!match"
    push $P5004, "$!name"
    push $P5004, "$!bstack"
    push $P5004, "$!cstack"
    push $P5004, "$!regexsub"
    push $P5004, "$!restart"
    push $P5004, "name"
    push $P5004, "$!code"
    push $P5004, "__6MODEL_CORE__"
    push $P5004, "GLOBALish"
    push $P5004, "EXPORT"
    push $P5004, "82C8134F4F1F98F3955D960634CCE916B8CF0355-1381281775.85002"
    push $P5004, "src/stage2/gen/nqp-mo.nqp"
    push $P5004, "QRegex::NFA"
    push $P5004, "edges"
    push $P5004, "nfa_object"
    push $P5004, "NFAType"
    push $P5004, "highwater"
    push $P5004, "highexpect"
    push $P5004, "marks"
    push $P5004, "fail_cursor"
    push $P5004, "get_string"
    push $P5004, "get_integer"
    push $P5004, "get_number"
    push $P5004, "cursor"
    push $P5004, "shared"
    push $P5004, "match"
    push $P5004, "bstack"
    push $P5004, "cstack"
    push $P5004, "regexsub"
    push $P5004, "restart"
    push $P5004, "code"
    push $P5004, "CompileTimeValue"
    push $P5004, "8D7C40D4B41C0FB97C97F9FA59E4F60A345D73C3-1381281783.14924"
    push $P5004, "src/stage2/QASTNode.nqp"
    push $P5004, "SpecialArg"
    push $P5004, "Node"
    push $P5004, "Regex"
    push $P5004, "IVal"
    push $P5004, "NVal"
    push $P5004, "SVal"
    push $P5004, "BVal"
    push $P5004, "WVal"
    push $P5004, "Want"
    push $P5004, "Var"
    push $P5004, "VarWithFallback"
    push $P5004, "Op"
    push $P5004, "VM"
    push $P5004, "Stmts"
    push $P5004, "Stmt"
    push $P5004, "Block"
    push $P5004, "Unquote"
    push $P5004, "CompUnit"
    push $P5004, "InlinePlaceholder"
    push $P5004, "$?PACKAGE"
    push $P5004, "$?ROLE"
    push $P5004, "$NO_CAPS"
    push $P5004, "$NO_RESTART"
    push $P5004, "$RESTART"
    push $P5004, "$pass_mark"
    push $P5004, "@EMPTY"
    push $P5004, "$?CLASS"
    .const 'Sub' $P5005 = 'cuid_178_1381281785.71956' 
    capture_lex $P5005
    $P5006 = $P5005()
    nqp_deserialize_sc "BgAAAEAAAAAEAAAAYAAAAA4AAAAIAQAAuBgAANYAAAAYJgAAyFUAADYAAADYWgAAAQAAAOhaAABYWwAAAAAAAAwAAAANAAAAkwAAAAAAAACWAAAAlwAAAKwAAACtAAAAAQAAAAAAAAC4AAAAAQAAABQBAAB4AQAAAQAAANQBAABGAgAAAQAAAKICAAAEBQAANQAAAPAFAABGBgAAAQAAAEYGAABYBwAAPgAAAHQIAADKCAAAAQAAAMoIAACWCgAAAQAAAOILAAASEAAAAQAAAJ4RAACiEgAAAQAAAC4TAAA8FAAAAQAAANQUAABCFgAAAQAAAJ4WAAACFwAAPgAAAF4XAACwFwAAAAAAAHQAAAAAAAAAAAAAAAoABwAAAAIAAAACAAAAAAB1AAAAAwAAAAIAAAAAAHYAAAAEAAAAAgAAAAAAIwAAAAUAAAACAAAAAABZAAAABgAAAAIAAAAAAGcAAAAHAAAAAgAAAAAAbQAAAAgAAAACAAAAAAByAAAACgAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAQAAAAAAAAACAAAAAAAAAAAAAwD/////////////////////AAAAAHcAAAAAAAAAAQAAAAoAAQAAAAkAAAACAAAAAAACAAAACgAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAAEAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAQAAAAAAAAACAAAAAAABAAAAAwD/////////////////////AAAAAHgAAAAAAAAAAgAAAAoAAgAAAAoAAAACAAAAAAAgAAAABAAAAAIAAAAAACMAAAAKAAAAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAAAAgAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAAAIAAAADAP////////////////////8AAAAAeQAAAAAAAAADAAAACgAAAAAACgAkAAAACwAAAAIAAQAAABsAAAAOAAAAAgABAAAAHAAAAA8AAAACAAEAAAAdAAAAEAAAAAIAAAAAAAQAAAARAAAAAgABAAAAHwAAABIAAAACAAEAAAAiAAAAEwAAAAIAAQAAACQAAAAUAAAAAgABAAAAJgAAABUAAAACAAEAAAAnAAAAFgAAAAIAAQAAACkAAAAXAAAAAgAAAAAABQAAABgAAAACAAAAAAAGAAAAGQAAAAIAAAAAAAcAAAAaAAAAAgAAAAAACAAAABsAAAACAAAAAAAJAAAAHAAAAAIAAAAAAAoAAAAdAAAAAgAAAAAACwAAAB4AAAACAAAAAAAMAAAAHwAAAAIAAAAAAA0AAAAgAAAAAgAAAAAADgAAACEAAAACAAAAAAAPAAAAIgAAAAIAAAAAABAAAAAjAAAAAgAAAAAAEQAAACQAAAACAAAAAAASAAAAJQAAAAIAAAAAABMAAAAmAAAAAgAAAAAAFAAAACcAAAACAAAAAAAVAAAAKAAAAAIAAAAAABYAAAApAAAAAgAAAAAAFwAAACoAAAACAAAAAAAYAAAAKwAAAAIAAAAAABkAAAAsAAAAAgAAAAAAGwAAAC0AAAACAAAAAAAcAAAALgAAAAIAAAAAAB0AAAAvAAAAAgAAAAAAHgAAADAAAAACAAAAAAAfAAAAAAAAAAAAAAACAAAAAAAAAAIAAAAAAAMAAAACAAEAAAAaAAAABAAAAAAAAAABAAAAAAAAAAUAAAAAAAAAAwAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAABAAAAAgAAAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAQAAABoAAAACAAEAAAAaAAAAAQACAAEAAAAaAAAA////////////////////////////////AAAAAAAAAAACAAAAAAAAAAIAAQAAABoAAAADAAIAAAAAAAMAAAAKAAQAAAAxAAAABAAAAAAAAAAAADIAAAAEAAEAAAAAAAAAMwAAAAQAAgAAAAAAAAA0AAAABAADAAAAAAAAAP////////////////////8AAAAAegAAAAAAAAAaAAAACgAAAAAACgAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAABoAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAB7AAAAAAAAACAAAAAKAAAAAAAKAAwAAAALAAAAAgABAAAAGwAAAA4AAAACAAEAAAAcAAAADwAAAAIAAQAAAB0AAAAQAAAAAgABAAAAHgAAABEAAAACAAEAAAAfAAAAEgAAAAIAAQAAACIAAAATAAAAAgABAAAAJAAAABQAAAACAAEAAAAmAAAAFQAAAAIAAQAAACcAAAAWAAAAAgABAAAAKQAAADYAAAACAAAAAAAhAAAANwAAAAIAAAAAACIAAAAAAAAAAAAAAAIAAAAAAAAAAgAAAAAAIAAAAAIAAQAAABoAAAAEAAAAAAAAAAEAAAAAAAAABQAAAAAAAAADAAAAAAAAAAAAAAAAAAAAAAAGAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAABAAAABAAAAAEAAAAAAAAAAQAAAAIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAgABAAAAGgAAAAEAAQABAAEAAgABAAAAGgAAAP///////////////////////////////wAAAAAAAAAAAgAAAAAAAAACAAEAAAAaAAAAAwACAAAAAAAgAAAACgAGAAAAOAAAAAQAAAAAAAAAAAA5AAAABAABAAAAAAAAADoAAAAEAAIAAAAAAAAAOwAAAAQAAwAAAAAAAAA8AAAABAAEAAAAAAAAAD0AAAAEAAUAAAAAAAAA/////////////////////wAAAAB8AAAAAAAAACMAAAAKAAAAAAAKAAAAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAAAIwAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAH0AAAAAAAAAWQAAAAoAAAAAAAoAGAAAAAsAAAACAAEAAAAbAAAADgAAAAIAAQAAABwAAAAPAAAAAgABAAAAHQAAABAAAAACAAEAAAArAAAAEQAAAAIAAAAAAF4AAAASAAAAAgABAAAAIgAAABMAAAACAAAAAABfAAAAFAAAAAIAAQAAACYAAAAVAAAAAgABAAAAJwAAABYAAAACAAEAAAApAAAAPwAAAAIAAQAAACwAAABAAAAAAgABAAAALQAAAEEAAAACAAEAAAAuAAAAQgAAAAIAAAAAAFoAAABDAAAAAgAAAAAAWwAAAEQAAAACAAAAAABcAAAARQAAAAIAAAAAAF0AAABGAAAAAgAAAAAAYAAAAEcAAAACAAAAAABhAAAASAAAAAIAAAAAAGIAAABJAAAAAgAAAAAAYwAAAEoAAAACAAAAAABkAAAASwAAAAIAAAAAAGUAAABMAAAAAgAAAAAAZgAAAAAAAAAAAAAAAwAAAAAAAAACAAAAAABZAAAAAgABAAAAKgAAAAIAAQAAABoAAAAEAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAACAAAAAABhAAAAAAAAAAAAAAAAAAAAAAAAAAcAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAABAAAAAgAAAAEAAAAAAAAAAQAAAAIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAEAAQACAAEAAAAaAAAAAQABAAIAAQAAABoAAAACAAEAAAAaAAAA////////////////////////////////AAAAAAAAAAADAAAAAAAAAAIAAQAAABoAAAADAAIAAQAAACoAAAAKAAIAAABNAAAABAAAAAAAAAAAAE4AAAAEAAEAAAAAAAAAAgAAAAAAWQAAAAoABQAAADgAAAAEAAIAAAAAAAAATwAAAAQAAwAAAAAAAABQAAAABAAEAAAAAAAAAFEAAAAEAAUAAAAAAAAAUgAAAAQABgAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAAAAAH4AAAAAAAAAZwAAAAoAAAAAAAoAQwAAAAsAAAACAAEAAAAbAAAADgAAAAIAAQAAABwAAAAPAAAAAgABAAAAHQAAABAAAAACAAEAAAAeAAAAEQAAAAIAAQAAAB8AAAASAAAAAgABAAAAIgAAABMAAAACAAEAAAAkAAAAFAAAAAIAAQAAACYAAAAVAAAAAgABAAAAJwAAABYAAAACAAEAAAApAAAAUwAAAAIAAAAAAGgAAABHAAAAAgAAAAAAaQAAAFQAAAACAAAAAABqAAAAVQAAAAIAAAAAAGsAAABWAAAAAgAAAAAAbAAAAEMAAAACAAAAAAB/AAAAVwAAAAIAAAAAAIAAAABCAAAAAgAAAAAAgQAAAFgAAAACAAAAAACCAAAAWQAAAAIAAAAAAIMAAABaAAAAAgAAAAAAhAAAAFsAAAACAAAAAACFAAAAXAAAAAIAAAAAAIYAAABdAAAAAgAAAAAAhwAAAF4AAAACAAAAAACIAAAAXwAAAAIAAAAAAIkAAABgAAAAAgAAAAAAigAAAGEAAAACAAAAAACLAAAAYgAAAAIAAAAAAIwAAABjAAAAAgAAAAAAjQAAAGQAAAACAAAAAACOAAAAZQAAAAIAAAAAAI8AAABmAAAAAgAAAAAAkAAAAGcAAAACAAAAAACRAAAAaAAAAAIAAAAAAJIAAABpAAAAAgAAAAAAkwAAAGoAAAACAAAAAACUAAAAawAAAAIAAAAAAJUAAABsAAAAAgAAAAAAlgAAAG0AAAACAAAAAACXAAAAbgAAAAIAAAAAAJgAAABvAAAAAgAAAAAAmQAAAHAAAAACAAAAAACaAAAAcQAAAAIAAAAAAJsAAAByAAAAAgAAAAAAnAAAAHMAAAACAAAAAACdAAAAdAAAAAIAAAAAAJ4AAAB1AAAAAgAAAAAAnwAAAHYAAAACAAAAAACgAAAAdwAAAAIAAAAAAKEAAAB4AAAAAgAAAAAAogAAAHkAAAACAAAAAACjAAAAegAAAAIAAAAAAKQAAAB7AAAAAgAAAAAApQAAAHwAAAACAAAAAACmAAAAfQAAAAIAAAAAAKcAAAB+AAAAAgAAAAAAqAAAAH8AAAACAAAAAACpAAAAgAAAAAIAAAAAAKoAAACBAAAAAgAAAAAAqwAAAIIAAAACAAAAAACsAAAAgwAAAAIAAAAAAK0AAACEAAAAAgAAAAAArgAAAIUAAAACAAAAAACvAAAAhgAAAAIAAAAAALAAAACHAAAAAgAAAAAAsQAAAIgAAAACAAAAAACyAAAAAAAAAAAAAAAEAAAAAAAAAAIAAAAAAGcAAAACAAEAAAAaAAAAAgAAAAAAIwAAAAIAAAAAALMAAAAEAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAACAAAAAABpAAAAAAAAAAAAAAAAAAAAAAAAAAkAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAEAAAACAAAAAQAAAAAAAAABAAAAAgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAEAAAAaAAAAAQABAAIAAQAAABoAAAACAAEAAAAaAAAAAgABAAAAGgAAAAIAAQAAABoAAAACAAEAAAAaAAAAAgABAAAAGgAAAP///////////////////////////////wAAAAAAAAAAAgAAAAAAAAACAAEAAAAaAAAAAwACAAAAAABnAAAACgAJAAAAiQAAAAQAAAAAAAAAAABPAAAABAABAAAAAAAAAIoAAAAEAAIAAAAAAAAAiwAAAAQAAwAAAAAAAACMAAAABAAEAAAAAAAAAI0AAAAEAAUAAAAAAAAAjgAAAAQABgAAAAAAAACPAAAABAAHAAAAAAAAAJAAAAAEAAgAAAAAAAAA/////////////////////wAAAAC0AAAAAAAAAG0AAAAKAAAAAAAKAAsAAAALAAAAAgABAAAAGwAAAA4AAAACAAEAAAAcAAAADwAAAAIAAQAAAB0AAAAQAAAAAgAAAAAAbgAAABEAAAACAAAAAABxAAAAEgAAAAIAAQAAACIAAAATAAAAAgABAAAAJAAAABQAAAACAAEAAAAmAAAAFQAAAAIAAAAAALUAAAAWAAAAAgABAAAAKQAAAJEAAAACAAAAAABwAAAAAAAAAAAAAAACAAAAAAAAAAIAAAAAAG0AAAACAAEAAAAaAAAABAAAAAAAAAABAAAAAAAAAAUAAAAAAAAAAwAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAEAAAAaAAAA////////////////////////////////AAAAAAAAAAACAAAAAAAAAAIAAQAAABoAAAADAAIAAAAAAG0AAAAKAAEAAACSAAAABAAAAAAAAAAAAP////////////////////8AAAAAtgAAAAAAAAByAAAACgAAAAAACgALAAAACwAAAAIAAQAAABsAAAAOAAAAAgABAAAAHAAAAA8AAAACAAEAAAAdAAAAEAAAAAIAAAAAAG4AAAARAAAAAgAAAAAAcQAAABIAAAACAAEAAAAiAAAAEwAAAAIAAQAAACQAAAAUAAAAAgABAAAAJgAAABUAAAACAAAAAAC3AAAAFgAAAAIAAQAAACkAAACRAAAAAgAAAAAAcAAAAAAAAAAAAAAAAwAAAAAAAAACAAAAAAByAAAAAgAAAAAAbQAAAAIAAQAAABoAAAAEAAAAAAAAAAEAAAAAAAAABQAAAAAAAAADAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAQAAABoAAAD///////////////////////////////8AAAAAAAAAAAMAAAAAAAAAAgABAAAAGgAAAAMAAgAAAAAAbQAAAAoAAQAAAJIAAAAEAAAAAAAAAAAAAgAAAAAAcgAAAAMA/////////////////////wAAAADTAAAAAAAAAHUAAAAKABQAAACrAAAAAgAEAAAAAwAAAK4AAAACAAQAAAAIAAAArwAAAAIABAAAAAwAAACwAAAAAgAEAAAAIgAAALEAAAACAAQAAAArAAAAsgAAAAIABAAAADEAAACzAAAAAgAEAAAANwAAALQAAAACAAQAAAA8AAAAtQAAAAIABAAAAEAAAAC2AAAAAgAEAAAARQAAALcAAAACAAQAAABKAAAAuAAAAAIABAAAAFQAAAC5AAAAAgAEAAAAVgAAALoAAAACAAQAAABdAAAAuwAAAAIABAAAAGIAAAC8AAAAAgAEAAAAZwAAAL0AAAACAAQAAABsAAAAvgAAAAIABAAAAHUAAAC/AAAAAgAEAAAAeAAAAMAAAAACAAQAAACCAAAACgAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAHUAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAQAAAAAAAAACAAAAAAB1AAAAAwD/////////////////////AAAAANQAAAAAAAAAdgAAAAoAAQAAADUAAAACAAAAAAADAAAACgAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAHYAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAQAAAAAAAAACAAAAAAB2AAAAAwD/////////////////////AAAAANUAAAAAAAAAswAAAAMACgAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAALMAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAIAAAAAAAAAAAAAAAAAAAADAAAAAAAAAAAAAAABAAAABQAAAAAAAAABAAAAAQAAAAUAAAAUAAAAAQAAAAEAAAAFAAAAKAAAAAEAAAABAAAABQAAADwAAAABAAAAAQAAAAUAAABQAAAAAQAAAAEAAAAFAAAAZAAAAAEAAAABAAAABQAAAHgAAAABAAAAAQAAAAUAAACMAAAAAQAAAAEAAAAFAAAAoAAAAAEAAAABAAAABQAAALQAAAABAAAAAQAAAAUAAADIAAAAAQAAAAEAAAAFAAAA3AAAAAEAAAABAAAABQAAAPAAAAABAAAAAQAAAAUAAAAEAQAAAQAAAAEAAAAFAAAAGAEAAAEAAAABAAAABQAAACwBAAABAAAAAQAAAAUAAABAAQAAAQAAAAEAAAAFAAAAVAEAAAEAAAABAAAABQAAAGgBAAABAAAAAQAAAAUAAAB8AQAAAQAAAAEAAAAFAAAAkAEAAAEAAAABAAAABQAAAKQBAAABAAAAAAAAAAQAAAC4AQAAAAAAAAEAAAAFAAAAuAEAAAEAAAABAAAABQAAAMwBAAABAAAAAQAAAAUAAADgAQAAAQAAAAEAAAAFAAAA9AEAAAEAAAABAAAABQAAAAgCAAABAAAAAAAAAAUAAAAcAgAAAAAAAAEAAAAFAAAAHAIAAAEAAAABAAAABQAAADACAAABAAAAAAAAAAYAAABEAgAAAAAAAAEAAAAFAAAARAIAAAEAAAABAAAABQAAAFgCAAABAAAAAQAAAAUAAABsAgAAAQAAAAEAAAAFAAAAgAIAAAEAAAABAAAABQAAAJQCAAABAAAAAQAAAAUAAACoAgAAAQAAAAEAAAAFAAAAvAIAAAEAAAABAAAABQAAANACAAABAAAAAQAAAAUAAADkAgAAAQAAAAEAAAAFAAAA+AIAAAEAAAABAAAABQAAAAwDAAABAAAAAQAAAAUAAAAgAwAAAQAAAAEAAAAFAAAANAMAAAEAAAABAAAABQAAAEgDAAABAAAAAQAAAAUAAABcAwAAAQAAAAEAAAAFAAAAcAMAAAEAAAABAAAABQAAAIQDAAABAAAAAQAAAAUAAACYAwAAAQAAAAEAAAAFAAAArAMAAAEAAAABAAAABQAAAMADAAABAAAAAQAAAAUAAADUAwAAAQAAAAEAAAAFAAAA6AMAAAEAAAABAAAABQAAAPwDAAABAAAAAQAAAAUAAAAQBAAAAQAAAAEAAAAFAAAAJAQAAAEAAAABAAAABQAAADgEAAABAAAAAQAAAAUAAABMBAAAAQAAAAEAAAAFAAAAYAQAAAEAAAABAAAABQAAAHQEAAABAAAAAQAAAAUAAACIBAAAAQAAAAEAAAAFAAAAnAQAAAEAAAABAAAABQAAALAEAAABAAAAAQAAAAUAAADEBAAAAQAAAAEAAAAFAAAA2AQAAAEAAAABAAAABQAAAOwEAAABAAAAAQAAAAUAAAAABQAAAQAAAAEAAAAFAAAAFAUAAAEAAAABAAAABQAAACgFAAABAAAAAQAAAAUAAAA8BQAAAQAAAAEAAAAFAAAAUAUAAAEAAAABAAAABQAAAGQFAAABAAAAAQAAAAUAAAB4BQAAAQAAAAEAAAAFAAAAjAUAAAEAAAABAAAABQAAAKAFAAABAAAAAQAAAAUAAAC0BQAAAQAAAAEAAAAFAAAAyAUAAAEAAAABAAAABQAAANwFAAABAAAAAQAAAAUAAADwBQAAAQAAAAEAAAAFAAAABAYAAAEAAAABAAAABQAAABgGAAABAAAAAQAAAAUAAAAsBgAAAQAAAAEAAAAFAAAAQAYAAAEAAAABAAAABQAAAFQGAAABAAAAAAAAAAcAAABoBgAAAAAAAAEAAAAFAAAAaAYAAAEAAAABAAAABQAAAHwGAAABAAAAAQAAAAUAAACQBgAAAQAAAAEAAAAFAAAApAYAAAEAAAABAAAABQAAALgGAAABAAAAAQAAAAUAAADMBgAAAQAAAAEAAAAFAAAA4AYAAAEAAAABAAAABQAAAPQGAAABAAAAAQAAAAUAAAAIBwAAAQAAAAEAAAAFAAAAHAcAAAEAAAABAAAABQAAADAHAAABAAAAAQAAAAUAAABEBwAAAQAAAAEAAAAFAAAAWAcAAAEAAAAAAAAACAAAAGwHAAAAAAAAAQAAAAUAAABsBwAAAQAAAAEAAAAFAAAAgAcAAAEAAAABAAAABQAAAJQHAAABAAAAAQAAAAUAAACoBwAAAQAAAAEAAAAFAAAAvAcAAAEAAAAAAAAACQAAANAHAAAAAAAAAQAAAAUAAADQBwAAAQAAAAEAAAAFAAAA5AcAAAEAAAABAAAABQAAAAAIAAABAAAAAQAAAAUAAAAUCAAAAQAAAAAAAAAKAAAAKAgAAAAAAAABAAAABQAAACgIAAABAAAAAgAAAAAAAABECAAAAQAAAAAAAAALAAAAVAgAAAAAAAAAAAAADAAAAFQIAAAAAAAAAgAAAAAAAABUCAAAAQAAAAIAAAAAAAAAZAgAAAEAAAADAAAABwAAAHQIAAABAAAAAgAAAAAAAAAEDQAAAQAAAAMAAAAHAAAAFA0AAAEAAAADAAAABgAAAPgPAAABAAAAAwAAAAcAAABcEwAAAQAAAAMAAAAHAAAAOBcAAAEAAAABAAAABQAAAGQgAAABAAAAAQAAAAUAAAB4IAAAAQAAAAEAAAAFAAAAjCAAAAEAAAABAAAABQAAAKAgAAABAAAAAQAAAAUAAAC0IAAAAQAAAAEAAAAFAAAAyCAAAAEAAAABAAAABQAAANwgAAABAAAAAQAAAAUAAADwIAAAAQAAAAEAAAAFAAAABCEAAAEAAAABAAAABQAAABghAAABAAAAAQAAAAUAAAAsIQAAAQAAAAEAAAAFAAAAQCEAAAEAAAABAAAABQAAAFQhAAABAAAAAQAAAAUAAABoIQAAAQAAAAEAAAAFAAAAfCEAAAEAAAABAAAABQAAAJAhAAABAAAAAQAAAAUAAACkIQAAAQAAAAEAAAAFAAAAuCEAAAEAAAABAAAABQAAAMwhAAABAAAAAQAAAAUAAADgIQAAAQAAAAEAAAAFAAAA9CEAAAEAAAABAAAABQAAAAgiAAABAAAAAQAAAAUAAAAcIgAAAQAAAAEAAAAFAAAAMCIAAAEAAAABAAAABQAAAEQiAAABAAAAAQAAAAUAAABYIgAAAQAAAAEAAAAFAAAAbCIAAAEAAAABAAAABQAAAIAiAAABAAAAAQAAAAUAAACUIgAAAQAAAAEAAAAFAAAAqCIAAAEAAAABAAAABQAAALwiAAABAAAAAQAAAAUAAADQIgAAAQAAAAEAAAAFAAAA5CIAAAEAAAABAAAABQAAAPgiAAABAAAAAQAAAAUAAAAMIwAAAQAAAAEAAAAFAAAAICMAAAEAAAABAAAABQAAADQjAAABAAAAAQAAAAUAAABIIwAAAQAAAAEAAAAFAAAAXCMAAAEAAAABAAAABQAAAHAjAAABAAAAAQAAAAUAAACEIwAAAQAAAAEAAAAFAAAAmCMAAAEAAAABAAAABQAAAKwjAAABAAAAAQAAAAUAAADAIwAAAQAAAAEAAAAFAAAA1CMAAAEAAAABAAAABQAAAOgjAAABAAAAAQAAAAUAAAD8IwAAAQAAAAEAAAAFAAAAECQAAAEAAAABAAAABQAAACQkAAABAAAAAQAAAAUAAAA4JAAAAQAAAAEAAAAFAAAATCQAAAEAAAABAAAABQAAAGAkAAABAAAAAAAAAA0AAAB0JAAAAAAAAAMAAAAHAAAAdCQAAAEAAAABAAAABQAAAO4lAAABAAAAAwAAAAcAAAAaJgAAAQAAAAEAAAAFAAAAHicAAAEAAAABAAAABgAAAFQnAAABAAAAAQAAAAYAAACAJwAAAQAAAAMAAAAJAAAArCcAAAEAAAADAAAACQAAANgnAAABAAAAAwAAAAkAAAAEKAAAAQAAAAMAAAAJAAAAOCgAAAEAAAADAAAACQAAAGQoAAABAAAAAwAAAAkAAACQKAAAAQAAAAMAAAAJAAAAxCgAAAEAAAADAAAACQAAAPgoAAABAAAAAwAAAAkAAAAcKQAAAQAAAAMAAAAJAAAAQCkAAAEAAAADAAAACQAAAGwpAAABAAAAAwAAAAkAAACYKQAAAQAAAAMAAAAJAAAAzCkAAAEAAAADAAAACQAAAAAqAAABAAAAAwAAAAkAAAAsKgAAAQAAAAMAAAAJAAAAWCoAAAEAAAADAAAACQAAAIQqAAABAAAAAwAAAAkAAACwKgAAAQAAAAMAAAAJAAAA3CoAAAEAAAADAAAACQAAAAgrAAABAAAAAwAAAAkAAAA0KwAAAQAAAAMAAAAJAAAAaCsAAAEAAAADAAAACQAAAJwrAAABAAAAAwAAAAkAAADIKwAAAQAAAAMAAAAJAAAA9CsAAAEAAAACAAAAAAAAACAsAAABAAAAAgAAAAAAAAAwLAAAAQAAAAMAAAADAAAAQCwAAAEAAAALAAAAAAAAAAAAAQABAAEAAQADAAsAAAAAAAEAAAABAAEAAQABAAMACwAAAAAAAgAAAAEAAQABAAEAAwALAAAAAAADAAAAAQABAAEAAQADAAsAAAAAAAQAAAABAAEAAQABAAMACwAAAAAABQAAAAEAAQABAAEAAwALAAAAAAAGAAAAAQABAAEAAQADAAsAAAAAAAcAAAABAAEAAQABAAMACwAAAAAACAAAAAEAAQABAAEAAwALAAAAAAAJAAAAAQABAAEAAQADAAsAAAAAAAoAAAABAAEAAQABAAMACwAAAAAACwAAAAEAAQABAAEAAwALAAAAAAAMAAAAAQABAAEAAQADAAsAAAAAAA0AAAABAAEAAQABAAMACwAAAAAADgAAAAEAAQABAAEAAwALAAAAAAAPAAAAAQABAAEAAQADAAsAAAAAABAAAAABAAEAAQABAAMACwAAAAAAEQAAAAEAAQABAAEAAwALAAAAAAASAAAAAQABAAEAAQADAAsAAAAAABMAAAABAAEAAQABAAMACwAAAAAAFAAAAAEAAQABAAEAAwALAAAAAAAVAAAAAQABAAEAAQADAAsAAAAAABYAAAABAAEAAQABAAMACwAAAAAAFwAAAAEAAQABAAEAAwALAAAAAAAYAAAAAQABAAEAAQADAAsAAAAAABkAAAABAAEAAQABAAMACwAAAAAAGgAAAAEAAQABAAEAAwALAAAAAAAbAAAAAQABAAEAAQADAAsAAAAAABwAAAABAAEAAQABAAMACwAAAAAAHQAAAAEAAQABAAEAAwALAAAAAAAeAAAAAQABAAEAAQADAAsAAAAAAB8AAAABAAEAAQABAAMACwAAAAAAIAAAAAEAAQABAAEAAwALAAAAAAAhAAAAAQABAAEAAQADAAsAAAAAACIAAAABAAEAAQABAAMACwAAAAAAIwAAAAEAAQABAAEAAwALAAAAAAAkAAAAAQABAAEAAQADAAsAAAAAACUAAAABAAEAAQABAAMACwAAAAAAJgAAAAEAAQABAAEAAwALAAAAAAAnAAAAAQABAAEAAQADAAsAAAAAACgAAAABAAEAAQABAAMACwAAAAAAKQAAAAEAAQABAAEAAwALAAAAAAAqAAAAAQABAAEAAQADAAsAAAAAACsAAAABAAEAAQABAAMACwAAAAAALAAAAAEAAQABAAEAAwALAAAAAAAtAAAAAQABAAEAAQADAAsAAAAAAC4AAAABAAEAAQABAAMACwAAAAAALwAAAAEAAQABAAEAAwALAAAAAAAwAAAAAQABAAEAAQADAAsAAAAAADEAAAABAAEAAQABAAMACwAAAAAAMgAAAAEAAQABAAEAAwALAAAAAAAzAAAAAQABAAEAAQADAAsAAAAAADQAAAABAAEAAQABAAMACwAAAAAANQAAAAEAAQABAAEAAwALAAAAAAA2AAAAAQABAAEAAQADAAsAAAAAADcAAAABAAEAAQABAAMACwAAAAAAOAAAAAEAAQABAAEAAwALAAAAAAA5AAAAAQABAAEAAQADAAsAAAAAADoAAAABAAEAAQABAAMACwAAAAAAOwAAAAEAAQABAAEAAwALAAAAAAA8AAAAAQABAAEAAQADAAsAAAAAAD0AAAABAAEAAQABAAMACwAAAAAAPgAAAAEAAQABAAEAAwALAAAAAAA/AAAAAQABAAEAAQADAAsAAAAAAEAAAAABAAEAAQABAAMACwAAAAAAQQAAAAEAAQABAAEAAwALAAAAAABCAAAAAQABAAEAAQADAAsAAAAAAEMAAAABAAEAAQABAAMACwAAAAAARAAAAAEAAQABAAEAAwALAAAAAABFAAAAAQABAAEAAQADAAsAAAAAAEYAAAABAAEAAQABAAMACwAAAAAARwAAAAEAAQABAAEAAwALAAAAAABIAAAAAQABAAEAAQADAAsAAAAAAEkAAAABAAEAAQABAAMACwAAAAAASgAAAAEAAQABAAEAAwALAAAAAABLAAAAAQABAAEAAQADAAsAAAAAAEwAAAABAAEAAQABAAMACwAAAAAATQAAAAEAAQABAAEAAwALAAAAAABOAAAAAQABAAEAAQADAAsAAAAAAE8AAAABAAEAAQABAAMACwAAAAAAUAAAAAEAAQABAAEAAwALAAAAAABRAAAAAQABAAEAAQADAAsAAAAAAFIAAAABAAEAAQABAAMACwAAAAAAUwAAAAEAAQABAAEAAwALAAAAAABUAAAAAQABAAEAAQADAAsAAAAAAFUAAAABAAEAAQABAAMACwAAAAAAVgAAAAEAAQABAAEAAwALAAAAAABXAAAAAQABAAEAAQADAAsAAAAAAFgAAAABAAEAAQABAAMACwAAAAAAWQAAAAEAAQABAAEAAwALAAAAAABaAAAAAQABAAEAAQADAAsAAAAAAFsAAAABAAEAAQABAAMACwAAAAAAXAAAAAEAAQABAAEAAwALAAAAAABdAAAAAQABAAEAAQADAAsAAAAAAF4AAAABAAEAAQABAAMACwAAAAAAXwAAAAEAAQABAAEAAwALAAAAAABgAAAAAQABAAEAAQADAAsAAAAAAGEAAAABAAEAAQABAAMACwAAAAAAYgAAAAEAAQABAAEAAwALAAAAAABjAAAAAQABAAEAAQADAAsAAAAAAGQAAAABAAEAAQABAAMACwAAAAAAZQAAAAIAAAAAALgAAAABAAEAAQADAAsAAAAAAGYAAAABAAEAAQABAAMACwAAAAAAZwAAAAEAAQABAAEAAwALAAAAAABoAAAAAgAAAAAAuQAAAAEAAQABAAMAlAAAAAcAAAAAAAoAAAAAAJUAAAAHAAAAAAAKAAAAAAAJAAAABwAAAAAACgAAAAAABgCYAAAABwAEAAAAAgAAAAAAugAAAAIAAAAAALsAAAACAAAAAAC8AAAAAgAAAAAAvQAAAAoAGwAAABAAAAACAAAAAAAEAAAAFwAAAAIAAAAAAAUAAAAYAAAAAgAAAAAABgAAABkAAAACAAAAAAAHAAAAGgAAAAIAAAAAAAgAAAAbAAAAAgAAAAAACQAAABwAAAACAAAAAAAKAAAAHQAAAAIAAAAAAAsAAAAeAAAAAgAAAAAADAAAAB8AAAACAAAAAAANAAAAIAAAAAIAAAAAAA4AAAAhAAAAAgAAAAAADwAAACIAAAACAAAAAAAQAAAAIwAAAAIAAAAAABEAAAAkAAAAAgAAAAAAEgAAACUAAAACAAAAAAATAAAAJgAAAAIAAAAAABQAAAAnAAAAAgAAAAAAFQAAACgAAAACAAAAAAAWAAAAKQAAAAIAAAAAABcAAAAqAAAAAgAAAAAAGAAAACsAAAACAAAAAAAZAAAALAAAAAIAAAAAABsAAAAtAAAAAgAAAAAAHAAAAC4AAAACAAAAAAAdAAAALwAAAAIAAAAAAB4AAAAwAAAAAgAAAAAAHwAAAAcAGwAAAAIAAAAAAAQAAAACAAAAAAAFAAAAAgAAAAAABgAAAAIAAAAAAAcAAAACAAAAAAAIAAAAAgAAAAAACQAAAAIAAAAAAAoAAAACAAAAAAALAAAAAgAAAAAADAAAAAIAAAAAAA0AAAACAAAAAAAOAAAAAgAAAAAADwAAAAIAAAAAABAAAAACAAAAAAARAAAAAgAAAAAAEgAAAAIAAAAAABMAAAACAAAAAAAUAAAAAgAAAAAAFQAAAAIAAAAAABYAAAACAAAAAAAXAAAAAgAAAAAAGAAAAAIAAAAAABkAAAACAAAAAAAbAAAAAgAAAAAAHAAAAAIAAAAAAB0AAAACAAAAAAAeAAAAAgAAAAAAHwAAAAcAAAAAAAcAAQAAAAIAAQAAABoAAAAHAAAAAAACAAEAAAAaAAAABwAAAAAACgAAAAAABAABAAAAAAAAAAcAAgAAAAIAAAAAAAMAAAACAAEAAAAaAAAABwAAAAAAAQAEAAAAAAAAAAAACgAAAAAACgAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAABAAcABAAAAAcABAAAAAQAAQAAAAAAAAACAAAAAAADAAAABgAaAAAABgAxAAAABwAEAAAABAABAAAAAAAAAAIAAAAAAAMAAAAGAJkAAAAGADIAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAAwAAAAYALgAAAAYAMwAAAAcABAAAAAQAAQAAAAAAAAACAAAAAAADAAAABgCaAAAABgA0AAAABwAEAAAABwAEAAAABAABAAAAAAAAAAIAAAAAAAMAAAAGABoAAAAGADEAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAAwAAAAYAmQAAAAYAMgAAAAcABAAAAAQAAQAAAAAAAAACAAAAAAADAAAABgAuAAAABgAzAAAABwAEAAAABAABAAAAAAAAAAIAAAAAAAMAAAAGAJoAAAAGADQAAAABAJsAAAAHAAAAAAAKAAAAAAAGAAoAAAAHAAYAAAACAAAAAAC+AAAAAgAAAAAAvwAAAAIAAAAAAMAAAAACAAAAAADBAAAAAgAAAAAAwgAAAAIAAAAAAMMAAAAKAAIAAAA2AAAAAgAAAAAAIQAAADcAAAACAAAAAAAiAAAABwACAAAAAgAAAAAAIQAAAAIAAAAAACIAAAAHAAAAAAAHAAEAAAACAAEAAAAaAAAABwAAAAAAAgABAAAAGgAAAAcAAAAAAAoAAAAAAAQAAQAAAAAAAAAHAAIAAAACAAAAAAAgAAAAAgABAAAAGgAAAAcAAAAAAAEABAAAAAAAAAAAAAoAAAAAAAoAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAAAQAHAAYAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAIAAAAAYAQwAAAAYAOAAAAAcABAAAAAQAAQAAAAAAAAACAAAAAAAgAAAABgBXAAAABgA5AAAABwAEAAAABAABAAAAAAAAAAIAAAAAACAAAAAGAJwAAAAGADoAAAAHAAQAAAAEAAIAAAAAAAAAAgAAAAAAIAAAAAYAnQAAAAYAOwAAAAcABAAAAAQAAwAAAAAAAAACAAAAAAAgAAAABgCeAAAABgA8AAAABwAEAAAABAABAAAAAAAAAAIAAAAAACAAAAAGAJ8AAAAGAD0AAAAHAAYAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAIAAAAAYAQwAAAAYAOAAAAAcABAAAAAQAAQAAAAAAAAACAAAAAAAgAAAABgBXAAAABgA5AAAABwAEAAAABAABAAAAAAAAAAIAAAAAACAAAAAGAJwAAAAGADoAAAAHAAQAAAAEAAIAAAAAAAAAAgAAAAAAIAAAAAYAnQAAAAYAOwAAAAcABAAAAAQAAwAAAAAAAAACAAAAAAAgAAAABgCeAAAABgA8AAAABwAEAAAABAABAAAAAAAAAAIAAAAAACAAAAAGAJ8AAAAGAD0AAAABAAYABAAAAAcACQAAAAIAAAAAAMQAAAACAAAAAADFAAAAAgAAAAAAxgAAAAIAAAAAAMcAAAACAAAAAADIAAAAAgAAAAAAyQAAAAIAAAAAAMoAAAACAAAAAADLAAAAAgAAAAAAzAAAAAoANAAAAEMAAAACAAAAAAAkAAAAVwAAAAIAAAAAACUAAABCAAAAAgAAAAAAJgAAAFgAAAACAAAAAAAnAAAAWQAAAAIAAAAAACgAAABaAAAAAgAAAAAAKQAAAFsAAAACAAAAAAAqAAAAXAAAAAIAAAAAACsAAABdAAAAAgAAAAAALAAAAF4AAAACAAAAAAAtAAAAXwAAAAIAAAAAAC4AAABgAAAAAgAAAAAALwAAAGEAAAACAAAAAAAwAAAAYgAAAAIAAAAAADEAAABjAAAAAgAAAAAAMgAAAGQAAAACAAAAAAAzAAAAZQAAAAIAAAAAADQAAABmAAAAAgAAAAAANQAAAGcAAAACAAAAAAA2AAAAaAAAAAIAAAAAADcAAABpAAAAAgAAAAAAOAAAAGoAAAACAAAAAAA5AAAAawAAAAIAAAAAADoAAABsAAAAAgAAAAAAOwAAAG0AAAACAAAAAAA8AAAAbgAAAAIAAAAAAD0AAABvAAAAAgAAAAAAPgAAAHAAAAACAAAAAAA/AAAAcQAAAAIAAAAAAEAAAAByAAAAAgAAAAAAQQAAAHMAAAACAAAAAABCAAAAdAAAAAIAAAAAAEMAAAB1AAAAAgAAAAAARAAAAHYAAAACAAAAAABFAAAAdwAAAAIAAAAAAEYAAAB4AAAAAgAAAAAARwAAAHkAAAACAAAAAABIAAAAegAAAAIAAAAAAEkAAAB7AAAAAgAAAAAASgAAAHwAAAACAAAAAABLAAAAfQAAAAIAAAAAAEwAAAB+AAAAAgAAAAAATQAAAH8AAAACAAAAAABOAAAAgAAAAAIAAAAAAE8AAACBAAAAAgAAAAAAUAAAAIIAAAACAAAAAABRAAAAgwAAAAIAAAAAAFIAAACEAAAAAgAAAAAAUwAAAIUAAAACAAAAAABUAAAAhgAAAAIAAAAAAFUAAACHAAAAAgAAAAAAVgAAAIgAAAACAAAAAABXAAAABwAAAAAABwAAAAAABAABAAAAAAAAAAIAAAAAAFgAAAAGAAUAAAAHAAUAAAACAAAAAADNAAAAAgAAAAAAzgAAAAIAAAAAAM8AAAACAAAAAADQAAAAAgAAAAAA0QAAAAoADQAAAEIAAAACAAAAAABaAAAAQwAAAAIAAAAAAFsAAABEAAAAAgAAAAAAXAAAAEUAAAACAAAAAABdAAAAEQAAAAIAAAAAAF4AAAATAAAAAgAAAAAAXwAAAEYAAAACAAAAAABgAAAARwAAAAIAAAAAAGEAAABIAAAAAgAAAAAAYgAAAEkAAAACAAAAAABjAAAASgAAAAIAAAAAAGQAAABLAAAAAgAAAAAAZQAAAEwAAAACAAAAAABmAAAABwANAAAAAgAAAAAAWgAAAAIAAAAAAFsAAAACAAAAAABcAAAAAgAAAAAAXQAAAAIAAAAAAF4AAAACAAAAAABfAAAAAgAAAAAAYAAAAAIAAAAAAGEAAAACAAAAAABiAAAAAgAAAAAAYwAAAAIAAAAAAGQAAAACAAAAAABlAAAAAgAAAAAAZgAAAAcAAAAAAAcAAQAAAAIAAQAAACoAAAAHAAAAAAABAAcAAAAAAAoAAAAAAAQAAQAAAAAAAAAHAAMAAAACAAAAAABZAAAAAgABAAAAKgAAAAIAAQAAABoAAAAHAAAAAAABAAQAAAAAAAAAAAAKAAMAAACgAAAAAgAAAAAAXgAAAKEAAAACAAAAAABfAAAAogAAAAIAAAAAAGAAAAAKAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAEABwAGAAAABwACAAAABAAAAAAAAAAAAAIAAQAAACwAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAWQAAAAYAQwAAAAYAOAAAAAcABAAAAAQAAQAAAAAAAAACAAAAAABZAAAABgBCAAAABgBPAAAABwAEAAAABAABAAAAAAAAAAIAAAAAAFkAAAAGAEQAAAAGAFAAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAWQAAAAYASgAAAAYAUQAAAAcABAAAAAQAAQAAAAAAAAACAAAAAABZAAAABgCjAAAABgBSAAAABwAFAAAABwAEAAAABAABAAAAAAAAAAIAAAAAAFkAAAAGAEMAAAAGADgAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAWQAAAAYAQgAAAAYATwAAAAcABAAAAAQAAQAAAAAAAAACAAAAAABZAAAABgBEAAAABgBQAAAABwAEAAAABAABAAAAAAAAAAIAAAAAAFkAAAAGAEoAAAAGAFEAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAWQAAAAYAowAAAAYAUgAAAAEABgAGAAAABwAJAAAAAgAAAAAAxAAAAAIAAAAAAMUAAAACAAAAAADGAAAAAgAAAAAAxwAAAAIAAAAAAMgAAAACAAAAAADJAAAAAgAAAAAAygAAAAIAAAAAAMsAAAACAAAAAADMAAAACgA5AAAAUwAAAAIAAAAAAGgAAABHAAAAAgAAAAAAaQAAAFQAAAACAAAAAABqAAAAVQAAAAIAAAAAAGsAAABWAAAAAgAAAAAAbAAAAEMAAAACAAAAAAB/AAAAVwAAAAIAAAAAAIAAAABCAAAAAgAAAAAAgQAAAFgAAAACAAAAAACCAAAAWQAAAAIAAAAAAIMAAABaAAAAAgAAAAAAhAAAAFsAAAACAAAAAACFAAAAXAAAAAIAAAAAAIYAAABdAAAAAgAAAAAAhwAAAF4AAAACAAAAAACIAAAAXwAAAAIAAAAAAIkAAABgAAAAAgAAAAAAigAAAGEAAAACAAAAAACLAAAAYgAAAAIAAAAAAIwAAABjAAAAAgAAAAAAjQAAAGQAAAACAAAAAACOAAAAZQAAAAIAAAAAAI8AAABmAAAAAgAAAAAAkAAAAGcAAAACAAAAAACRAAAAaAAAAAIAAAAAAJIAAABpAAAAAgAAAAAAkwAAAGoAAAACAAAAAACUAAAAawAAAAIAAAAAAJUAAABsAAAAAgAAAAAAlgAAAG0AAAACAAAAAACXAAAAbgAAAAIAAAAAAJgAAABvAAAAAgAAAAAAmQAAAHAAAAACAAAAAACaAAAAcQAAAAIAAAAAAJsAAAByAAAAAgAAAAAAnAAAAHMAAAACAAAAAACdAAAAdAAAAAIAAAAAAJ4AAAB1AAAAAgAAAAAAnwAAAHYAAAACAAAAAACgAAAAdwAAAAIAAAAAAKEAAAB4AAAAAgAAAAAAogAAAHkAAAACAAAAAACjAAAAegAAAAIAAAAAAKQAAAB7AAAAAgAAAAAApQAAAHwAAAACAAAAAACmAAAAfQAAAAIAAAAAAKcAAAB+AAAAAgAAAAAAqAAAAH8AAAACAAAAAACpAAAAgAAAAAIAAAAAAKoAAACBAAAAAgAAAAAAqwAAAIIAAAACAAAAAACsAAAAgwAAAAIAAAAAAK0AAACEAAAAAgAAAAAArgAAAIUAAAACAAAAAACvAAAAhgAAAAIAAAAAALAAAACHAAAAAgAAAAAAsQAAAIgAAAACAAAAAACyAAAABwA5AAAAAgAAAAAAaAAAAAIAAAAAAGkAAAACAAAAAABqAAAAAgAAAAAAawAAAAIAAAAAAGwAAAACAAAAAAB/AAAAAgAAAAAAgAAAAAIAAAAAAIEAAAACAAAAAACCAAAAAgAAAAAAgwAAAAIAAAAAAIQAAAACAAAAAACFAAAAAgAAAAAAhgAAAAIAAAAAAIcAAAACAAAAAACIAAAAAgAAAAAAiQAAAAIAAAAAAIoAAAACAAAAAACLAAAAAgAAAAAAjAAAAAIAAAAAAI0AAAACAAAAAACOAAAAAgAAAAAAjwAAAAIAAAAAAJAAAAACAAAAAACRAAAAAgAAAAAAkgAAAAIAAAAAAJMAAAACAAAAAACUAAAAAgAAAAAAlQAAAAIAAAAAAJYAAAACAAAAAACXAAAAAgAAAAAAmAAAAAIAAAAAAJkAAAACAAAAAACaAAAAAgAAAAAAmwAAAAIAAAAAAJwAAAACAAAAAACdAAAAAgAAAAAAngAAAAIAAAAAAJ8AAAACAAAAAACgAAAAAgAAAAAAoQAAAAIAAAAAAKIAAAACAAAAAACjAAAAAgAAAAAApAAAAAIAAAAAAKUAAAACAAAAAACmAAAAAgAAAAAApwAAAAIAAAAAAKgAAAACAAAAAACpAAAAAgAAAAAAqgAAAAIAAAAAAKsAAAACAAAAAACsAAAAAgAAAAAArQAAAAIAAAAAAK4AAAACAAAAAACvAAAAAgAAAAAAsAAAAAIAAAAAALEAAAACAAAAAACyAAAABwAAAAAABwABAAAAAgABAAAAGgAAAAcAAQAAAAIAAAAAACMAAAACAAEAAAAaAAAABwAAAAAACgAAAAAABAABAAAAAAAAAAcAAgAAAAIAAAAAAGcAAAACAAEAAAAaAAAABwACAAAAAgAAAAAAIwAAAAIAAAAAALMAAAABAAQAAAAAAAAAAAAKAAAAAAAKAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAEABwAJAAAABwAEAAAABAABAAAAAAAAAAIAAAAAAGcAAAAGAKQAAAAGAIkAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAZwAAAAYAQgAAAAYATwAAAAcABAAAAAQAAQAAAAAAAAACAAAAAABnAAAABgBYAAAABgCKAAAABwAEAAAABAABAAAAAAAAAAIAAAAAAGcAAAAGAKUAAAAGAIsAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAZwAAAAYAkQAAAAYAjAAAAAcABAAAAAQAAQAAAAAAAAACAAAAAABnAAAABgCmAAAABgCNAAAABwAEAAAABAABAAAAAAAAAAIAAAAAAGcAAAAGAKcAAAAGAI4AAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAZwAAAAYAqAAAAAYAjwAAAAcABAAAAAQAAQAAAAAAAAACAAAAAABnAAAABgCpAAAABgCQAAAABwAJAAAABwAEAAAABAABAAAAAAAAAAIAAAAAAGcAAAAGAKQAAAAGAIkAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAZwAAAAYAQgAAAAYATwAAAAcABAAAAAQAAQAAAAAAAAACAAAAAABnAAAABgBYAAAABgCKAAAABwAEAAAABAABAAAAAAAAAAIAAAAAAGcAAAAGAKUAAAAGAIsAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAZwAAAAYAkQAAAAYAjAAAAAcABAAAAAQAAQAAAAAAAAACAAAAAABnAAAABgCmAAAABgCNAAAABwAEAAAABAABAAAAAAAAAAIAAAAAAGcAAAAGAKcAAAAGAI4AAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAZwAAAAYAqAAAAAYAjwAAAAcABAAAAAQAAQAAAAAAAAACAAAAAABnAAAABgCpAAAABgCQAAAAAQAMAAAAAABpAAAAAQABAAEAAQADAAwAAAAAAGoAAAABAAEAAQABAAMADAAAAAAAawAAAAEAAQABAAEAAwAMAAAAAABsAAAAAQABAAEAAQADAAwAAAAAAG0AAAABAAEAAQABAAMADAAAAAAAbgAAAAEAAQABAAEAAwAMAAAAAABvAAAAAQABAAEAAQADAAwAAAAAAHAAAAABAAEAAQABAAMADAAAAAAAcQAAAAEAAQABAAEAAwAMAAAAAAByAAAAAQABAAEAAQADAAwAAAAAAHMAAAABAAEAAQABAAMADAAAAAAAdAAAAAEAAQABAAEAAwAMAAAAAAB1AAAAAQABAAEAAQADAAwAAAAAAHYAAAABAAEAAQABAAMADAAAAAAAdwAAAAEAAQABAAEAAwAMAAAAAAB4AAAAAQABAAEAAQADAAwAAAAAAHkAAAABAAEAAQABAAMADAAAAAAAegAAAAEAAQABAAEAAwAMAAAAAAB7AAAAAQABAAEAAQADAAwAAAAAAHwAAAABAAEAAQABAAMADAAAAAAAfQAAAAEAAQABAAEAAwAMAAAAAAB+AAAAAQABAAEAAQADAAwAAAAAAH8AAAABAAEAAQABAAMADAAAAAAAgAAAAAEAAQABAAEAAwAMAAAAAACBAAAAAQABAAEAAQADAAwAAAAAAIIAAAABAAEAAQABAAMADAAAAAAAgwAAAAEAAQABAAEAAwAMAAAAAACEAAAAAQABAAEAAQADAAwAAAAAAIUAAAABAAEAAQABAAMADAAAAAAAhgAAAAEAAQABAAEAAwAMAAAAAACHAAAAAQABAAEAAQADAAwAAAAAAIgAAAABAAEAAQABAAMADAAAAAAAiQAAAAEAAQABAAEAAwAMAAAAAACKAAAAAQABAAEAAQADAAwAAAAAAIsAAAABAAEAAQABAAMADAAAAAAAjAAAAAEAAQABAAEAAwAMAAAAAACNAAAAAQABAAEAAQADAAwAAAAAAI4AAAABAAEAAQABAAMADAAAAAAAjwAAAAEAAQABAAEAAwAMAAAAAACQAAAAAQABAAEAAQADAAwAAAAAAJEAAAABAAEAAQABAAMADAAAAAAAkgAAAAEAAQABAAEAAwAMAAAAAACTAAAAAQABAAEAAQADAAwAAAAAAJQAAAABAAEAAQABAAMADAAAAAAAlQAAAAEAAQABAAEAAwAMAAAAAACWAAAAAQABAAEAAQADAAwAAAAAAJcAAAABAAEAAQABAAMADAAAAAAAmAAAAAEAAQABAAEAAwAMAAAAAACZAAAAAQABAAEAAQADAAwAAAAAAJoAAAABAAEAAQABAAMADAAAAAAAmwAAAAEAAQABAAEAAwAMAAAAAACcAAAAAQABAAEAAQADAAYABwAAAAcAAQAAAAIAAAAAANIAAAAKAAQAAAAQAAAAAgAAAAAAbgAAAJEAAAACAAAAAABwAAAAEQAAAAIAAAAAAHEAAAAVAAAAAgAAAAAAtQAAAAcAAwAAAAIAAAAAAG4AAAACAAAAAABwAAAAAgAAAAAAcQAAAAcAAQAAAAoAAgAAAJEAAAAGABUAAACqAAAAAgAAAAAAbwAAAAcAAQAAAAIAAQAAABoAAAAHAAAAAAACAAEAAAAaAAAABwAAAAAACgAAAAAABAABAAAAAAAAAAcAAgAAAAIAAAAAAG0AAAACAAEAAAAaAAAABwAAAAAAAQAEAAAAAAAAAAAACgAAAAAACgAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAABAAcAAQAAAAcABAAAAAQAAQAAAAAAAAACAAAAAABtAAAABgCqAAAABgCSAAAABwABAAAABwAEAAAABAABAAAAAAAAAAIAAAAAAG0AAAAGAKoAAAAGAJIAAAABAAwAAAAAAJ0AAAABAAcAAgAAAAIAAQAAACgAAAACAAAAAABvAAAAAwADAAMABgAIAAAABwAAAAAACgABAAAAFQAAAAIAAAAAALcAAAAHAAAAAAAHAAEAAAAKAAIAAACRAAAABgAVAAAAqgAAAAIAAAAAAHMAAAAHAAEAAAACAAAAAABtAAAABwAAAAAAAQAHAAAAAAAKAAAAAAAEAAEAAAAAAAAABwADAAAAAgAAAAAAcgAAAAIAAAAAAG0AAAACAAEAAAAaAAAABwAAAAAAAQAEAAAAAAAAAAAACgAAAAAACgAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAABAAcAAQAAAAcABAAAAAQAAQAAAAAAAAACAAAAAABtAAAABgCqAAAABgCSAAAABwAAAAAAAQAMAAAAAACeAAAAAQAHAAMAAAACAAEAAAAoAAAAAgAAAAAAbwAAAAIAAAAAAHMAAAADAAMAAwAHAAIAAAACAAAAAABtAAAAAwAHAAIAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAcAAgAAAAIAAAAAAHIAAAADAAcAAgAAAAQAAQAAAAAAAAAEAAAAAAAAAAAABgAxAAAAAwAEAAAAAAAAAAAAAwACAAEAAAAaAAAABAABAAAAAAAAAAEAAQAGADIAAAADAAQAAAAAAAAAAAADAAIAAQAAABoAAAAEAAEAAAAAAAAAAQABAAYAMwAAAAIAAQAAAAIAAAAEAAEAAAAAAAAAAwACAAEAAAACAAAABAABAAAAAAAAAAEAAQAGADQAAAADAAQAAAAAAAAAAAADAAIAAQAAABoAAAAEAAEAAAAAAAAAAQABAAYAOAAAAAMABAAAAAAAAAAAAAMAAgABAAAAGgAAAAQAAQAAAAAAAAABAAEABgA5AAAAAgABAAAABAAAAAQAAQAAAAAAAAADAAIAAQAAAAQAAAAEAAEAAAAAAAAAAQABAAYAOgAAAAIAAQAAAAIAAAAEAAEAAAAAAAAAAwACAAEAAAACAAAABAABAAAAAAAAAAEAAQAGADsAAAADAAQAAAAAAAAAAAADAAMABAAAAAAAAAAAAAEAAQAGADwAAAADAAQAAAAAAAAAAAADAAMABAAAAAAAAAAAAAEAAQAGAD0AAAADAAQAAAAAAAAAAAADAAIAAQAAABoAAAAEAAEAAAAAAAAAAQABAAYAiQAAAAMABAAAAAAAAAAAAAMAAgABAAAAGgAAAAQAAQAAAAAAAAABAAEABgBPAAAAAgABAAAAAgAAAAQAAQAAAAAAAAADAAIAAQAAAAIAAAAEAAEAAAAAAAAAAQABAAYAigAAAAIAAQAAAAIAAAAEAAEAAAAAAAAAAwACAAEAAAACAAAABAABAAAAAAAAAAEAAQAGAIsAAAADAAQAAAAAAAAAAAADAAIAAQAAABoAAAAEAAEAAAAAAAAAAQABAAYAjAAAAAMABAAAAAAAAAAAAAMAAgABAAAAGgAAAAQAAQAAAAAAAAABAAEABgCNAAAAAwAEAAAAAAAAAAAAAwACAAEAAAAaAAAABAABAAAAAAAAAAEAAQAGAI4AAAADAAQAAAAAAAAAAAADAAIAAQAAABoAAAAEAAEAAAAAAAAAAQABAAYAjwAAAAMABAAAAAAAAAAAAAMAAgABAAAAGgAAAAQAAQAAAAAAAAABAAEABgCQAAAAAwAEAAAAAAAAAAAAAwACAAEAAAAaAAAABAABAAAAAAAAAAEAAQAGADgAAAADAAQAAAAAAAAAAAADAAIAAQAAABoAAAAEAAEAAAAAAAAAAQABAAYATwAAAAIAAQAAAAIAAAAEAAEAAAAAAAAAAwACAAEAAAACAAAABAABAAAAAAAAAAEAAQAGAFAAAAACAAEAAAACAAAABAABAAAAAAAAAAMAAgABAAAAAgAAAAQAAQAAAAAAAAABAAEABgBRAAAAAwAEAAAAAAAAAAAAAwACAAEAAAAaAAAABAABAAAAAAAAAAEAAQAGAFIAAAADAAQAAAAAAAAAAAADAAIAAQAAABoAAAAEAAEAAAAAAAAAAQABAAYAkgAAAAMABAAAAAAAAAAAAAMAAgABAAAAGgAAAAQAAQAAAAAAAAABAAEAAgAAAAcAAAAAAAoAAAAAAAMAAAAHAAAAAAAKAAAAAAAGAAQAAAACAAAAAAAjAAAABwAJAAAAAgAAAAAAxAAAAAIAAAAAAMUAAAACAAAAAADGAAAAAgAAAAAAxwAAAAIAAAAAAMgAAAACAAAAAADJAAAAAgAAAAAAygAAAAIAAAAAAMsAAAACAAAAAADMAAAACgA0AAAAQwAAAAIAAAAAAH8AAABXAAAAAgAAAAAAgAAAAEIAAAACAAAAAACBAAAAWAAAAAIAAAAAAIIAAABZAAAAAgAAAAAAgwAAAFoAAAACAAAAAACEAAAAWwAAAAIAAAAAAIUAAABcAAAAAgAAAAAAhgAAAF0AAAACAAAAAACHAAAAXgAAAAIAAAAAAIgAAABfAAAAAgAAAAAAiQAAAGAAAAACAAAAAACKAAAAYQAAAAIAAAAAAIsAAABiAAAAAgAAAAAAjAAAAGMAAAACAAAAAACNAAAAZAAAAAIAAAAAAI4AAABlAAAAAgAAAAAAjwAAAGYAAAACAAAAAACQAAAAZwAAAAIAAAAAAJEAAABoAAAAAgAAAAAAkgAAAGkAAAACAAAAAACTAAAAagAAAAIAAAAAAJQAAABrAAAAAgAAAAAAlQAAAGwAAAACAAAAAACWAAAAbQAAAAIAAAAAAJcAAABuAAAAAgAAAAAAmAAAAG8AAAACAAAAAACZAAAAcAAAAAIAAAAAAJoAAABxAAAAAgAAAAAAmwAAAHIAAAACAAAAAACcAAAAcwAAAAIAAAAAAJ0AAAB0AAAAAgAAAAAAngAAAHUAAAACAAAAAACfAAAAdgAAAAIAAAAAAKAAAAB3AAAAAgAAAAAAoQAAAHgAAAACAAAAAACiAAAAeQAAAAIAAAAAAKMAAAB6AAAAAgAAAAAApAAAAHsAAAACAAAAAAClAAAAfAAAAAIAAAAAAKYAAAB9AAAAAgAAAAAApwAAAH4AAAACAAAAAACoAAAAfwAAAAIAAAAAAKkAAACAAAAAAgAAAAAAqgAAAIEAAAACAAAAAACrAAAAggAAAAIAAAAAAKwAAACDAAAAAgAAAAAArQAAAIQAAAACAAAAAACuAAAAhQAAAAIAAAAAAK8AAACGAAAAAgAAAAAAsAAAAIcAAAACAAAAAACxAAAAiAAAAAIAAAAAALIAAAAHAAAAAAAHAAAAAAAHAAAAAAAHAAAAAAAEAAEAAAAAAAAAAAAAAB0AAAABAAAAAQAAAAAAAAB/AAAAAAAAAB4AAAABAAAAAQAAAAAAAACAAAAAAAAAAB8AAAABAAAAAQAAAAAAAACBAAAAAAAAACAAAAABAAAAAQAAAAAAAACCAAAAAAAAACEAAAABAAAAAQAAAAAAAACDAAAAAAAAACIAAAABAAAAAQAAAAAAAACEAAAAAAAAACMAAAABAAAAAQAAAAAAAACFAAAAAAAAACQAAAABAAAAAQAAAAAAAACGAAAAAAAAACUAAAABAAAAAQAAAAAAAACHAAAAAAAAACYAAAABAAAAAQAAAAAAAACIAAAAAAAAACcAAAABAAAAAQAAAAAAAACJAAAAAAAAACgAAAABAAAAAQAAAAAAAACKAAAAAAAAACkAAAABAAAAAQAAAAAAAACLAAAAAAAAACoAAAABAAAAAQAAAAAAAACMAAAAAAAAACsAAAABAAAAAQAAAAAAAACNAAAAAAAAACwAAAABAAAAAQAAAAAAAACOAAAAAAAAAC0AAAABAAAAAQAAAAAAAACPAAAAAAAAAC4AAAABAAAAAQAAAAAAAACQAAAAAAAAAC8AAAABAAAAAQAAAAAAAACRAAAAAAAAADAAAAABAAAAAQAAAAAAAACSAAAAAAAAADEAAAABAAAAAQAAAAAAAACTAAAAAAAAADIAAAABAAAAAQAAAAAAAACUAAAAAAAAADMAAAABAAAAAQAAAAAAAACVAAAAAAAAADQAAAABAAAAAQAAAAAAAACWAAAAAAAAADUAAAABAAAAAQAAAAAAAACXAAAAAAAAADYAAAABAAAAAQAAAAAAAACYAAAAAAAAADcAAAABAAAAAQAAAAAAAACZAAAAAAAAADgAAAABAAAAAQAAAAAAAACaAAAAAAAAADkAAAABAAAAAQAAAAAAAACbAAAAAAAAADoAAAABAAAAAQAAAAAAAACcAAAAAAAAADsAAAABAAAAAQAAAAAAAACdAAAAAAAAADwAAAABAAAAAQAAAAAAAACeAAAAAAAAAD0AAAABAAAAAQAAAAAAAACfAAAAAAAAAD4AAAABAAAAAQAAAAAAAACgAAAAAAAAAD8AAAABAAAAAQAAAAAAAAChAAAAAAAAAEAAAAABAAAAAQAAAAAAAACiAAAAAAAAAEEAAAABAAAAAQAAAAAAAACjAAAAAAAAAEIAAAABAAAAAQAAAAAAAACkAAAAAAAAAEMAAAABAAAAAQAAAAAAAAClAAAAAAAAAEQAAAABAAAAAQAAAAAAAACmAAAAAAAAAEUAAAABAAAAAQAAAAAAAACnAAAAAAAAAEYAAAABAAAAAQAAAAAAAACoAAAAAAAAAEcAAAABAAAAAQAAAAAAAACpAAAAAAAAAEgAAAABAAAAAQAAAAAAAACqAAAAAAAAAEkAAAABAAAAAQAAAAAAAACrAAAAAAAAAEoAAAABAAAAAQAAAAAAAACsAAAAAAAAAEsAAAABAAAAAQAAAAAAAACtAAAAAAAAAEwAAAABAAAAAQAAAAAAAACuAAAAAAAAAE0AAAABAAAAAQAAAAAAAACvAAAAAAAAAE4AAAABAAAAAQAAAAAAAACwAAAAAAAAAE8AAAABAAAAAQAAAAAAAACxAAAAAAAAAFAAAAABAAAAAQAAAAAAAACyAAAAAQAAACcAAAAAAAAAAQAAAAAAAAC1AAAAAQAAACcAAAAAAAAAAQAAAAAAAAC3AAAAAAAAAFEAAAAAAAAAAAAAAAgAAAAAAAAAwQAAAAIAAAAAACMAAADCAAAAAgAAAAAAIwAAAMMAAAAKAAAAAADEAAAABAAAAAAAAAAAAMUAAAAEAAEAAAAAAAAAxgAAAAQAAQAAAAAAAADHAAAABwAAAAAAyAAAAAIAAAAAAGcAAAA=", cur_sc, $P5004, $P5006, conflicts
    unless conflicts goto if519_end1119 
    die "Repossession conflicts occurred during deserialization"
  if519_end1119:
    .const 'Sub' $P5001 = "cuid_1_1381281785.71956" 
    nqp_get_sc_object $P5002, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 4
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_2_1381281785.71956" 
    nqp_get_sc_object $P5002, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 5
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_3_1381281785.71956" 
    nqp_get_sc_object $P5002, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 6
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_4_1381281785.71956" 
    nqp_get_sc_object $P5002, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 7
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_5_1381281785.71956" 
    nqp_get_sc_object $P5002, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 8
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_6_1381281785.71956" 
    nqp_get_sc_object $P5002, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 9
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_7_1381281785.71956" 
    nqp_get_sc_object $P5002, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 10
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_8_1381281785.71956" 
    nqp_get_sc_object $P5002, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 11
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_9_1381281785.71956" 
    nqp_get_sc_object $P5002, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 12
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_10_1381281785.71956" 
    nqp_get_sc_object $P5002, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 13
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_11_1381281785.71956" 
    nqp_get_sc_object $P5002, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 14
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_12_1381281785.71956" 
    nqp_get_sc_object $P5002, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 15
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_13_1381281785.71956" 
    nqp_get_sc_object $P5002, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 16
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_14_1381281785.71956" 
    nqp_get_sc_object $P5002, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 17
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_15_1381281785.71956" 
    nqp_get_sc_object $P5002, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 18
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_16_1381281785.71956" 
    nqp_get_sc_object $P5002, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 19
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_17_1381281785.71956" 
    nqp_get_sc_object $P5002, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 20
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_18_1381281785.71956" 
    nqp_get_sc_object $P5002, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 21
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_19_1381281785.71956" 
    nqp_get_sc_object $P5002, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 22
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_20_1381281785.71956" 
    nqp_get_sc_object $P5002, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 23
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_21_1381281785.71956" 
    nqp_get_sc_object $P5002, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 24
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_22_1381281785.71956" 
    nqp_get_sc_object $P5002, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 25
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_23_1381281785.71956" 
    nqp_get_sc_object $P5002, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 27
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_24_1381281785.71956" 
    nqp_get_sc_object $P5002, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 28
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_25_1381281785.71956" 
    nqp_get_sc_object $P5002, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 29
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_26_1381281785.71956" 
    nqp_get_sc_object $P5002, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 30
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_27_1381281785.71956" 
    nqp_get_sc_object $P5002, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 31
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_28_1381281785.71956" 
    nqp_get_sc_object $P5002, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 33
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_29_1381281785.71956" 
    nqp_get_sc_object $P5002, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 34
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_30_1381281785.71956" 
    nqp_get_sc_object $P5002, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 36
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_31_1381281785.71956" 
    nqp_get_sc_object $P5002, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 37
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_32_1381281785.71956" 
    nqp_get_sc_object $P5002, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 38
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_33_1381281785.71956" 
    nqp_get_sc_object $P5002, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 39
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_34_1381281785.71956" 
    nqp_get_sc_object $P5002, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 40
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_35_1381281785.71956" 
    nqp_get_sc_object $P5002, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 41
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_36_1381281785.71956" 
    nqp_get_sc_object $P5002, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 42
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_37_1381281785.71956" 
    nqp_get_sc_object $P5002, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 43
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_38_1381281785.71956" 
    nqp_get_sc_object $P5002, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 44
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_39_1381281785.71956" 
    nqp_get_sc_object $P5002, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 45
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_40_1381281785.71956" 
    nqp_get_sc_object $P5002, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 46
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_41_1381281785.71956" 
    nqp_get_sc_object $P5002, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 47
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_42_1381281785.71956" 
    nqp_get_sc_object $P5002, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 48
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_43_1381281785.71956" 
    nqp_get_sc_object $P5002, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 49
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_44_1381281785.71956" 
    nqp_get_sc_object $P5002, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 50
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_45_1381281785.71956" 
    nqp_get_sc_object $P5002, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 51
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_46_1381281785.71956" 
    nqp_get_sc_object $P5002, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 52
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_47_1381281785.71956" 
    nqp_get_sc_object $P5002, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 53
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_48_1381281785.71956" 
    nqp_get_sc_object $P5002, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 54
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_49_1381281785.71956" 
    nqp_get_sc_object $P5002, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 55
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_50_1381281785.71956" 
    nqp_get_sc_object $P5002, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 56
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_51_1381281785.71956" 
    nqp_get_sc_object $P5002, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 57
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_52_1381281785.71956" 
    nqp_get_sc_object $P5002, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 58
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_53_1381281785.71956" 
    nqp_get_sc_object $P5002, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 59
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_54_1381281785.71956" 
    nqp_get_sc_object $P5002, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 60
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_55_1381281785.71956" 
    nqp_get_sc_object $P5002, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 61
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_56_1381281785.71956" 
    nqp_get_sc_object $P5002, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 62
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_57_1381281785.71956" 
    nqp_get_sc_object $P5002, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 63
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_58_1381281785.71956" 
    nqp_get_sc_object $P5002, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 64
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_59_1381281785.71956" 
    nqp_get_sc_object $P5002, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 65
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_60_1381281785.71956" 
    nqp_get_sc_object $P5002, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 66
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_61_1381281785.71956" 
    nqp_get_sc_object $P5002, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 67
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_62_1381281785.71956" 
    nqp_get_sc_object $P5002, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 68
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_63_1381281785.71956" 
    nqp_get_sc_object $P5002, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 69
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_64_1381281785.71956" 
    nqp_get_sc_object $P5002, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 70
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_65_1381281785.71956" 
    nqp_get_sc_object $P5002, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 71
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_66_1381281785.71956" 
    nqp_get_sc_object $P5002, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 72
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_67_1381281785.71956" 
    nqp_get_sc_object $P5002, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 73
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_68_1381281785.71956" 
    nqp_get_sc_object $P5002, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 74
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_69_1381281785.71956" 
    nqp_get_sc_object $P5002, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 75
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_70_1381281785.71956" 
    nqp_get_sc_object $P5002, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 76
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_71_1381281785.71956" 
    nqp_get_sc_object $P5002, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 77
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_72_1381281785.71956" 
    nqp_get_sc_object $P5002, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 78
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_73_1381281785.71956" 
    nqp_get_sc_object $P5002, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 79
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_74_1381281785.71956" 
    nqp_get_sc_object $P5002, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 80
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_75_1381281785.71956" 
    nqp_get_sc_object $P5002, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 81
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_76_1381281785.71956" 
    nqp_get_sc_object $P5002, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 82
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_77_1381281785.71956" 
    nqp_get_sc_object $P5002, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 83
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_78_1381281785.71956" 
    nqp_get_sc_object $P5002, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 84
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_79_1381281785.71956" 
    nqp_get_sc_object $P5002, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 85
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_80_1381281785.71956" 
    nqp_get_sc_object $P5002, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 86
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_81_1381281785.71956" 
    nqp_get_sc_object $P5002, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 87
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_82_1381281785.71956" 
    nqp_get_sc_object $P5002, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 88
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_83_1381281785.71956" 
    nqp_get_sc_object $P5002, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 90
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_84_1381281785.71956" 
    nqp_get_sc_object $P5002, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 91
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_85_1381281785.71956" 
    nqp_get_sc_object $P5002, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 92
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_86_1381281785.71956" 
    nqp_get_sc_object $P5002, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 93
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_87_1381281785.71956" 
    nqp_get_sc_object $P5002, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 94
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_88_1381281785.71956" 
    nqp_get_sc_object $P5002, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 95
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_89_1381281785.71956" 
    nqp_get_sc_object $P5002, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 96
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_90_1381281785.71956" 
    nqp_get_sc_object $P5002, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 97
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_91_1381281785.71956" 
    nqp_get_sc_object $P5002, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 98
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_92_1381281785.71956" 
    nqp_get_sc_object $P5002, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 99
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_93_1381281785.71956" 
    nqp_get_sc_object $P5002, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 100
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_94_1381281785.71956" 
    nqp_get_sc_object $P5002, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 101
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_95_1381281785.71956" 
    nqp_get_sc_object $P5002, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 102
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_96_1381281785.71956" 
    nqp_get_sc_object $P5002, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 104
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_97_1381281785.71956" 
    nqp_get_sc_object $P5002, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 105
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_98_1381281785.71956" 
    nqp_get_sc_object $P5002, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 106
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_99_1381281785.71956" 
    nqp_get_sc_object $P5002, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 107
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_100_1381281785.71956" 
    nqp_get_sc_object $P5002, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 108
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_120_1381281785.71956" 
    nqp_get_sc_object $P5002, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 110
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_121_1381281785.71956" 
    nqp_get_sc_object $P5002, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 111
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_122_1381281785.71956" 
    nqp_get_sc_object $P5002, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 112
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_123_1381281785.71956" 
    nqp_get_sc_object $P5002, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 113
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_124_1381281785.71956" 
    nqp_get_sc_object $P5002, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 115
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_125_1381281785.71956"
    new $P5002, 'ResizableStringArray'
    push $P5002, "GLOBALish"
    push $P5002, "$?PACKAGE"
    push $P5002, "EXPORT"
    push $P5002, "ParseShared"
    push $P5002, "NQPCursorRole"
    push $P5002, "NQPMatch"
    push $P5002, "NQPCursor"
    push $P5002, "NQPRegexMethod"
    push $P5002, "NQPRegex"
    new $P5003, 'ResizablePMCArray'
    nqp_get_sc_object $P5004, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 0
    push $P5003, $P5004
    nqp_get_sc_object $P5005, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 0
    push $P5003, $P5005
    nqp_get_sc_object $P5006, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 1
    push $P5003, $P5006
    nqp_get_sc_object $P5007, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 32
    push $P5003, $P5007
    nqp_get_sc_object $P5008, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 35
    push $P5003, $P5008
    nqp_get_sc_object $P5009, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 89
    push $P5003, $P5009
    nqp_get_sc_object $P5010, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 103
    push $P5003, $P5010
    nqp_get_sc_object $P5011, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 109
    push $P5003, $P5011
    nqp_get_sc_object $P5012, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 114
    push $P5003, $P5012
    new $P5013, 'ResizableIntegerArray'
    push $P5013, 0
    push $P5013, 0
    push $P5013, 0
    push $P5013, 0
    push $P5013, 0
    push $P5013, 0
    push $P5013, 0
    push $P5013, 0
    push $P5013, 0
    $P5001."setup_static_lexpad"($P5002, $P5003, $P5013)
    .const "LexInfo" $P5001 = "cuid_126_1381281785.71956"
    new $P5002, 'ResizableStringArray'
    push $P5002, "$?PACKAGE"
    push $P5002, "$?CLASS"
    push $P5002, "NFAType"
    new $P5003, 'ResizablePMCArray'
    nqp_get_sc_object $P5004, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 3
    push $P5003, $P5004
    nqp_get_sc_object $P5005, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 3
    push $P5003, $P5005
    nqp_get_sc_object $P5006, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 26
    push $P5003, $P5006
    new $P5007, 'ResizableIntegerArray'
    push $P5007, 0
    push $P5007, 0
    push $P5007, 0
    $P5001."setup_static_lexpad"($P5002, $P5003, $P5007)
    .const "LexInfo" $P5001 = "cuid_146_1381281785.71956"
    new $P5002, 'ResizableStringArray'
    push $P5002, "$?PACKAGE"
    push $P5002, "$?CLASS"
    new $P5003, 'ResizablePMCArray'
    nqp_get_sc_object $P5004, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 26
    push $P5003, $P5004
    nqp_get_sc_object $P5005, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 26
    push $P5003, $P5005
    new $P5006, 'ResizableIntegerArray'
    push $P5006, 0
    push $P5006, 0
    $P5001."setup_static_lexpad"($P5002, $P5003, $P5006)
    .const "LexInfo" $P5001 = "cuid_151_1381281785.71956"
    new $P5002, 'ResizableStringArray'
    push $P5002, "$?PACKAGE"
    push $P5002, "$?CLASS"
    new $P5003, 'ResizablePMCArray'
    nqp_get_sc_object $P5004, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 32
    push $P5003, $P5004
    nqp_get_sc_object $P5005, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 32
    push $P5003, $P5005
    new $P5006, 'ResizableIntegerArray'
    push $P5006, 0
    push $P5006, 0
    $P5001."setup_static_lexpad"($P5002, $P5003, $P5006)
    .const "LexInfo" $P5001 = "cuid_82_1381281785.71956"
    new $P5002, 'ResizableStringArray'
    push $P5002, "$?PACKAGE"
    push $P5002, "$?ROLE"
    new $P5003, 'ResizablePMCArray'
    nqp_get_sc_object $P5004, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 35
    push $P5003, $P5004
    nqp_get_sc_object $P5005, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 35
    push $P5003, $P5005
    new $P5006, 'ResizableIntegerArray'
    push $P5006, 0
    push $P5006, 0
    $P5001."setup_static_lexpad"($P5002, $P5003, $P5006)
    .const "LexInfo" $P5001 = "cuid_153_1381281785.71956"
    new $P5002, 'ResizableStringArray'
    push $P5002, "$?PACKAGE"
    push $P5002, "$?CLASS"
    new $P5003, 'ResizablePMCArray'
    nqp_get_sc_object $P5004, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 89
    push $P5003, $P5004
    nqp_get_sc_object $P5005, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 89
    push $P5003, $P5005
    new $P5006, 'ResizableIntegerArray'
    push $P5006, 0
    push $P5006, 0
    $P5001."setup_static_lexpad"($P5002, $P5003, $P5006)
    .const "LexInfo" $P5001 = "cuid_165_1381281785.71956"
    new $P5002, 'ResizableStringArray'
    push $P5002, "$?PACKAGE"
    push $P5002, "$?CLASS"
    new $P5003, 'ResizablePMCArray'
    nqp_get_sc_object $P5004, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 103
    push $P5003, $P5004
    nqp_get_sc_object $P5005, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 103
    push $P5003, $P5005
    new $P5006, 'ResizableIntegerArray'
    push $P5006, 0
    push $P5006, 0
    $P5001."setup_static_lexpad"($P5002, $P5003, $P5006)
    .const "LexInfo" $P5001 = "cuid_176_1381281785.71956"
    new $P5002, 'ResizableStringArray'
    push $P5002, "$?PACKAGE"
    push $P5002, "$?CLASS"
    new $P5003, 'ResizablePMCArray'
    nqp_get_sc_object $P5004, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 109
    push $P5003, $P5004
    nqp_get_sc_object $P5005, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 109
    push $P5003, $P5005
    new $P5006, 'ResizableIntegerArray'
    push $P5006, 0
    push $P5006, 0
    $P5001."setup_static_lexpad"($P5002, $P5003, $P5006)
    .const "LexInfo" $P5001 = "cuid_177_1381281785.71956"
    new $P5002, 'ResizableStringArray'
    push $P5002, "$?PACKAGE"
    push $P5002, "$?CLASS"
    new $P5003, 'ResizablePMCArray'
    nqp_get_sc_object $P5004, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 114
    push $P5003, $P5004
    nqp_get_sc_object $P5005, "E7AD4B42F22CE3E5A839229F2FDCC4FBE891C4E3-1381281785.75165", 114
    push $P5003, $P5005
    new $P5006, 'ResizableIntegerArray'
    push $P5006, 0
    push $P5006, 0
    $P5007 = $P5001."setup_static_lexpad"($P5002, $P5003, $P5006)
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_178_1381281785.71956") :anon :lex :outer("cuid_179_1381281785.71956")
.annotate 'file', "src/stage2/QRegex.nqp"
    new $P5001, 'ResizablePMCArray'
    .const 'Sub' $P5002 = "cuid_1_1381281785.71956" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_2_1381281785.71956" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_3_1381281785.71956" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_4_1381281785.71956" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_5_1381281785.71956" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_6_1381281785.71956" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_7_1381281785.71956" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_8_1381281785.71956" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_9_1381281785.71956" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_10_1381281785.71956" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_11_1381281785.71956" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_12_1381281785.71956" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_13_1381281785.71956" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_14_1381281785.71956" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_15_1381281785.71956" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_16_1381281785.71956" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_17_1381281785.71956" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_18_1381281785.71956" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_19_1381281785.71956" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_20_1381281785.71956" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_21_1381281785.71956" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_22_1381281785.71956" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_23_1381281785.71956" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_24_1381281785.71956" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_25_1381281785.71956" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_26_1381281785.71956" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_27_1381281785.71956" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_28_1381281785.71956" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_29_1381281785.71956" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_30_1381281785.71956" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_31_1381281785.71956" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_32_1381281785.71956" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_33_1381281785.71956" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_34_1381281785.71956" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_35_1381281785.71956" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_36_1381281785.71956" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_37_1381281785.71956" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_38_1381281785.71956" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_39_1381281785.71956" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_40_1381281785.71956" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_41_1381281785.71956" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_42_1381281785.71956" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_43_1381281785.71956" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_44_1381281785.71956" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_45_1381281785.71956" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_46_1381281785.71956" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_47_1381281785.71956" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_48_1381281785.71956" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_49_1381281785.71956" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_50_1381281785.71956" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_51_1381281785.71956" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_52_1381281785.71956" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_53_1381281785.71956" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_54_1381281785.71956" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_55_1381281785.71956" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_56_1381281785.71956" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_57_1381281785.71956" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_58_1381281785.71956" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_59_1381281785.71956" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_60_1381281785.71956" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_61_1381281785.71956" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_62_1381281785.71956" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_63_1381281785.71956" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_64_1381281785.71956" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_65_1381281785.71956" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_66_1381281785.71956" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_67_1381281785.71956" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_68_1381281785.71956" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_69_1381281785.71956" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_70_1381281785.71956" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_71_1381281785.71956" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_72_1381281785.71956" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_73_1381281785.71956" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_74_1381281785.71956" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_75_1381281785.71956" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_76_1381281785.71956" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_77_1381281785.71956" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_78_1381281785.71956" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_79_1381281785.71956" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_80_1381281785.71956" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_81_1381281785.71956" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_82_1381281785.71956" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_83_1381281785.71956" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_84_1381281785.71956" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_85_1381281785.71956" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_86_1381281785.71956" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_87_1381281785.71956" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_88_1381281785.71956" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_89_1381281785.71956" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_90_1381281785.71956" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_91_1381281785.71956" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_92_1381281785.71956" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_93_1381281785.71956" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_94_1381281785.71956" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_95_1381281785.71956" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_96_1381281785.71956" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_97_1381281785.71956" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_98_1381281785.71956" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_99_1381281785.71956" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_100_1381281785.71956" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_120_1381281785.71956" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_121_1381281785.71956" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_122_1381281785.71956" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_123_1381281785.71956" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_124_1381281785.71956" 
    push $P5001, $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_180_1381281785.71956") :load
.annotate 'file', "src/stage2/QRegex.nqp"
    .const 'Sub' $P5001 = "cuid_125_1381281785.71956" 
    $P5002 = $P5001()
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_181_1381281785.71956") :main
.annotate 'file', "src/stage2/QRegex.nqp"
    .param pmc ARGS :slurpy 
    .const 'Sub' $P5001 = "cuid_125_1381281785.71956" 
    $P5002 = $P5001(ARGS :flat)
    .return ($P5002) 
.end