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
.sub "" :subid("cuid_143_1361633907.987") :anon :lex
.annotate 'file', "src\\stage2\\QRegex.nqp"
    .param pmc _lex_param_0 :slurpy 
    .const 'Sub' $P5036 = 'cuid_119_1361633907.987' 
    capture_lex $P5036 
    .const 'Sub' $P5036 = 'cuid_144_1361633907.987' 
    capture_lex $P5036 
    .const 'Sub' $P5036 = 'cuid_79_1361633907.987' 
    capture_lex $P5036 
    .const 'Sub' $P5036 = 'cuid_145_1361633907.987' 
    capture_lex $P5036 
    .const 'Sub' $P5036 = 'cuid_151_1361633907.987' 
    capture_lex $P5036 
    .const 'Sub' $P5036 = 'cuid_161_1361633907.987' 
    capture_lex $P5036 
    .const 'Sub' $P5036 = 'cuid_162_1361633907.987' 
    capture_lex $P5036 
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
    .local pmc fb_tmp_17 
    .local pmc pkg_lookup_tmp_9 
    .local pmc ctxsave 
.annotate 'line', 494
.annotate 'line', 495
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 9
    nqp_get_sc_object $P5003, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 0
    set pkg_lookup_tmp_9, $P5003
    get_who $P5004, pkg_lookup_tmp_9
    exists $I5002, $P5004["QRegex"]
    unless $I5002 goto if142_else303 
    get_who $P5006, pkg_lookup_tmp_9
    set $P5005, $P5006["QRegex"]
    set $P5008, $P5005
    goto if142_end304
  if142_else303:
    nqp_get_sc_object $P5007, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5008, $P5007
  if142_end304:
    get_who $P5002, $P5008
    set fb_tmp_17, $P5002
    repr_defined $I5001, fb_tmp_17
    unless $I5001 goto if141_else301 
    set $P5009, fb_tmp_17["NFA"]
    set $P5011, $P5009
    goto if141_end302
  if141_else301:
    null $P5010
    set $P5011, $P5010
  if141_end302:
    unless_null $P5011, vivi_143305
    nqp_get_sc_object $P5012, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5011, $P5012
  vivi_143305:
    $P5001."SET_NFA_TYPE"($P5011)
    find_dynamic_lex $P5013, "$*CTXSAVE"
    set ctxsave, $P5013
    isnull $I5003, ctxsave
    if $I5003 goto unless144_end307 
    can $I5004, ctxsave, "ctxsave"
    box $P5016, $I5004
    set $P5015, $P5016
    unless $I5004 goto if145_end309 
    $P5014 = ctxsave."ctxsave"()
    set $P5015, $P5014
  if145_end309:
  unless144_end307:
.annotate 'line', 1
    .const 'Sub' $P5017 = 'cuid_119_1361633907.987' 
    capture_lex $P5017
    $P5018 = $P5017()
    .const 'Sub' $P5019 = 'cuid_144_1361633907.987' 
    capture_lex $P5019
    $P5020 = $P5019()
    .const 'Sub' $P5021 = 'cuid_79_1361633907.987' 
    capture_lex $P5021
    .const 'Sub' $P5022 = 'cuid_145_1361633907.987' 
    capture_lex $P5022
    $P5023 = $P5022()
    .const 'Sub' $P5024 = 'cuid_151_1361633907.987' 
    capture_lex $P5024
    $P5025 = $P5024()
    .const 'Sub' $P5026 = 'cuid_161_1361633907.987' 
    capture_lex $P5026
    $P5027 = $P5026()
    nqp_get_sc_object $P5028, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 105
    nqp_get_sc_object $P5029, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 105
    null $P5030
    set_invocation_spec $P5028, $P5029, "$!code", $P5030
    .const 'Sub' $P5031 = 'cuid_162_1361633907.987' 
    capture_lex $P5031
    $P5032 = $P5031()
    nqp_get_sc_object $P5033, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 109
    nqp_get_sc_object $P5034, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 105
    null $P5035
    set_invocation_spec $P5033, $P5034, "$!code", $P5035
    .return () 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_119_1361633907.987") :anon :lex :outer("cuid_143_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 7
    .const 'Sub' $P5061 = 'cuid_1_1361633907.987' 
    capture_lex $P5061 
    .const 'Sub' $P5061 = 'cuid_2_1361633907.987' 
    capture_lex $P5061 
    .const 'Sub' $P5061 = 'cuid_3_1361633907.987' 
    capture_lex $P5061 
    .const 'Sub' $P5061 = 'cuid_4_1361633907.987' 
    capture_lex $P5061 
    .const 'Sub' $P5061 = 'cuid_5_1361633907.987' 
    capture_lex $P5061 
    .const 'Sub' $P5061 = 'cuid_6_1361633907.987' 
    capture_lex $P5061 
    .const 'Sub' $P5061 = 'cuid_7_1361633907.987' 
    capture_lex $P5061 
    .const 'Sub' $P5061 = 'cuid_8_1361633907.987' 
    capture_lex $P5061 
    .const 'Sub' $P5061 = 'cuid_9_1361633907.987' 
    capture_lex $P5061 
    .const 'Sub' $P5061 = 'cuid_10_1361633907.987' 
    capture_lex $P5061 
    .const 'Sub' $P5061 = 'cuid_11_1361633907.987' 
    capture_lex $P5061 
    .const 'Sub' $P5061 = 'cuid_12_1361633907.987' 
    capture_lex $P5061 
    .const 'Sub' $P5061 = 'cuid_13_1361633907.987' 
    capture_lex $P5061 
    .const 'Sub' $P5061 = 'cuid_14_1361633907.987' 
    capture_lex $P5061 
    .const 'Sub' $P5061 = 'cuid_15_1361633907.987' 
    capture_lex $P5061 
    .const 'Sub' $P5061 = 'cuid_16_1361633907.987' 
    capture_lex $P5061 
    .const 'Sub' $P5061 = 'cuid_17_1361633907.987' 
    capture_lex $P5061 
    .const 'Sub' $P5061 = 'cuid_18_1361633907.987' 
    capture_lex $P5061 
    .const 'Sub' $P5061 = 'cuid_19_1361633907.987' 
    capture_lex $P5061 
    .const 'Sub' $P5061 = 'cuid_20_1361633907.987' 
    capture_lex $P5061 
    .const 'Sub' $P5061 = 'cuid_21_1361633907.987' 
    capture_lex $P5061 
    .const 'Sub' $P5061 = 'cuid_22_1361633907.987' 
    capture_lex $P5061 
    .const 'Sub' $P5061 = 'cuid_138_1361633907.987' 
    capture_lex $P5061 
    .const 'Sub' $P5061 = 'cuid_23_1361633907.987' 
    capture_lex $P5061 
    .const 'Sub' $P5061 = 'cuid_24_1361633907.987' 
    capture_lex $P5061 
    .const 'Sub' $P5061 = 'cuid_25_1361633907.987' 
    capture_lex $P5061 
    .const 'Sub' $P5061 = 'cuid_26_1361633907.987' 
    capture_lex $P5061 
    .const 'Sub' $P5061 = 'cuid_27_1361633907.987' 
    capture_lex $P5061 
    .lex "$EDGE_FATE", $P101 
    .lex "$EDGE_EPSILON", $P102 
    .lex "$EDGE_CODEPOINT", $P103 
    .lex "$EDGE_CODEPOINT_NEG", $P104 
    .lex "$EDGE_CHARCLASS", $P105 
    .lex "$EDGE_CHARCLASS_NEG", $P106 
    .lex "$EDGE_CHARLIST", $P107 
    .lex "$EDGE_CHARLIST_NEG", $P108 
    .lex "$EDGE_SUBRULE", $P109 
    .lex "$EDGE_CODEPOINT_I", $P110 
    .lex "$EDGE_CODEPOINT_I_NEG", $P111 
    .lex "$EDGE_GENERIC_VAR", $P112 
    .lex "%cclass_code", $P113 
    .lex "NFAType", $P114 
    .lex "$?PACKAGE", $P115 
    .lex "$?CLASS", $P116 
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P102, $P5002
    nqp_get_sc_object $P5003, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P103, $P5003
    nqp_get_sc_object $P5004, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P104, $P5004
    nqp_get_sc_object $P5005, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P105, $P5005
    nqp_get_sc_object $P5006, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P106, $P5006
    nqp_get_sc_object $P5007, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P107, $P5007
    nqp_get_sc_object $P5008, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P108, $P5008
    nqp_get_sc_object $P5009, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P109, $P5009
    nqp_get_sc_object $P5010, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P110, $P5010
    nqp_get_sc_object $P5011, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P111, $P5011
    nqp_get_sc_object $P5012, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P112, $P5012
    new $P5013, 'Hash'
    set $P113, $P5013
.annotate 'line', 96
    box $P5014, 65535
    set $P113["."], $P5014
    box $P5015, 8
    set $P113["d"], $P5015
    box $P5016, 32
    set $P113["s"], $P5016
    box $P5017, 8192
    set $P113["w"], $P5017
    box $P5018, 4096
    set $P113["n"], $P5018
    box $P5019, 4096
    set $P113["nl"], $P5019
.annotate 'line', 7
    box $P5020, 0
    set $P101, $P5020
    box $P5021, 1
    set $P102, $P5021
    box $P5022, 2
    set $P103, $P5022
    box $P5023, 3
    set $P104, $P5023
    box $P5024, 4
    set $P105, $P5024
    box $P5025, 5
    set $P106, $P5025
    box $P5026, 6
    set $P107, $P5026
    box $P5027, 7
    set $P108, $P5027
    box $P5028, 8
    set $P109, $P5028
    box $P5029, 9
    set $P110, $P5029
    box $P5030, 10
    set $P111, $P5030
    box $P5031, 11
    set $P112, $P5031
    .const 'Sub' $P5032 = 'cuid_1_1361633907.987' 
    capture_lex $P5032
    .const 'Sub' $P5033 = 'cuid_2_1361633907.987' 
    capture_lex $P5033
    .const 'Sub' $P5034 = 'cuid_3_1361633907.987' 
    capture_lex $P5034
    .const 'Sub' $P5035 = 'cuid_4_1361633907.987' 
    capture_lex $P5035
    .const 'Sub' $P5036 = 'cuid_5_1361633907.987' 
    capture_lex $P5036
    .const 'Sub' $P5037 = 'cuid_6_1361633907.987' 
    capture_lex $P5037
    .const 'Sub' $P5038 = 'cuid_7_1361633907.987' 
    capture_lex $P5038
    .const 'Sub' $P5039 = 'cuid_8_1361633907.987' 
    capture_lex $P5039
    .const 'Sub' $P5040 = 'cuid_9_1361633907.987' 
    capture_lex $P5040
    .const 'Sub' $P5041 = 'cuid_10_1361633907.987' 
    capture_lex $P5041
    .const 'Sub' $P5042 = 'cuid_11_1361633907.987' 
    capture_lex $P5042
    .const 'Sub' $P5043 = 'cuid_12_1361633907.987' 
    capture_lex $P5043
    .const 'Sub' $P5044 = 'cuid_13_1361633907.987' 
    capture_lex $P5044
    .const 'Sub' $P5045 = 'cuid_14_1361633907.987' 
    capture_lex $P5045
    .const 'Sub' $P5046 = 'cuid_15_1361633907.987' 
    capture_lex $P5046
    .const 'Sub' $P5047 = 'cuid_16_1361633907.987' 
    capture_lex $P5047
    .const 'Sub' $P5048 = 'cuid_17_1361633907.987' 
    capture_lex $P5048
    .const 'Sub' $P5049 = 'cuid_18_1361633907.987' 
    capture_lex $P5049
    .const 'Sub' $P5050 = 'cuid_19_1361633907.987' 
    capture_lex $P5050
    .const 'Sub' $P5051 = 'cuid_20_1361633907.987' 
    capture_lex $P5051
    .const 'Sub' $P5052 = 'cuid_21_1361633907.987' 
    capture_lex $P5052
    .const 'Sub' $P5053 = 'cuid_22_1361633907.987' 
    capture_lex $P5053
    .const 'Sub' $P5054 = 'cuid_138_1361633907.987' 
    capture_lex $P5054
    $P5055 = $P5054()
    .const 'Sub' $P5056 = 'cuid_23_1361633907.987' 
    capture_lex $P5056
    .const 'Sub' $P5057 = 'cuid_24_1361633907.987' 
    capture_lex $P5057
    .const 'Sub' $P5058 = 'cuid_25_1361633907.987' 
    capture_lex $P5058
    .const 'Sub' $P5059 = 'cuid_26_1361633907.987' 
    capture_lex $P5059
    .const 'Sub' $P5060 = 'cuid_27_1361633907.987' 
    capture_lex $P5060
    .return ($P5060) 
.end
.HLL "nqp"
.namespace []
.sub "new" :subid("cuid_1_1361633907.987") :anon :lex :outer("cuid_119_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 34
    .param pmc _lex_param_0 
    .lex "$new", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
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
.sub "from_saved" :subid("cuid_2_1361633907.987") :anon :lex :outer("cuid_119_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
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
.sub "addstate" :subid("cuid_3_1361633907.987") :anon :lex :outer("cuid_119_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 45
    .param pmc _lex_param_0 
    .lex "$id", $I101 
    .lex "self", _lex_param_0 
    set $I101, 0
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 3
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!states"
    set $N5001, $P5003
    set $I5001, $N5001
    set $I101, $I5001
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 3
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!states"
    new $P5007, 'ResizablePMCArray'
    set $P5006[$I101], $P5007
    .return ($I101) 
.end
.HLL "nqp"
.namespace []
.sub "addedge" :subid("cuid_4_1361633907.987") :anon :lex :outer("cuid_119_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 51
    .param pmc _lex_param_0 
    .param int _lex_param_1 
    .param int _lex_param_2 
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
    .local pmc fb_tmp_18 
    .local pmc fb_tmp_19 
    .local pmc pkg_lookup_tmp_1 
    if haz_param_9, default324
    box $P5028, 1
    set _lex_param_5, $P5028
  default324:
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P101, $P5001
    unless _lex_param_5 goto if146_end311 
    nqp_decontainerize $P5002, _lex_param_0
    nqp_get_sc_object $P5003, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 3
    box $P5004, 1
    repr_bind_attr_obj $P5002, $P5003, "$!edges", $P5004
  if146_end311:
    set $N5001, _lex_param_2
    set $N5002, 0
    islt $I5001, $N5001, $N5002
    unless $I5001 goto if147_end313 
.annotate 'line', 53
    nqp_decontainerize $P5005, _lex_param_0
    $P5006 = $P5005."addstate"()
    set $I5002, $P5006
    set _lex_param_2, $I5002
  if147_end313:
    nqp_decontainerize $P5007, _lex_param_0
    nqp_get_sc_object $P5008, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 3
    repr_get_attr_obj $P5009, $P5007, $P5008, "$!states"
    set fb_tmp_18, $P5009
    repr_defined $I5003, fb_tmp_18
    unless $I5003 goto if148_else314 
    set $P5010, fb_tmp_18[_lex_param_1]
    set $P5012, $P5010
    goto if148_end315
  if148_else314:
    null $P5011
    set $P5012, $P5011
  if148_end315:
    unless_null $P5012, vivi_149316
    nqp_get_sc_object $P5013, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5012, $P5013
  vivi_149316:
    set $P101, $P5012
    push $P101, _lex_param_3
    nqp_get_sc_object $P5015, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 0
    set pkg_lookup_tmp_1, $P5015
    get_who $P5016, pkg_lookup_tmp_1
    exists $I5006, $P5016["QAST"]
    unless $I5006 goto if152_else321 
    get_who $P5018, pkg_lookup_tmp_1
    set $P5017, $P5018["QAST"]
    set $P5020, $P5017
    goto if152_end322
  if152_else321:
    nqp_get_sc_object $P5019, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5020, $P5019
  if152_end322:
    get_who $P5014, $P5020
    set fb_tmp_19, $P5014
    repr_defined $I5005, fb_tmp_19
    unless $I5005 goto if151_else319 
    set $P5021, fb_tmp_19["SVal"]
    set $P5023, $P5021
    goto if151_end320
  if151_else319:
    null $P5022
    set $P5023, $P5022
  if151_end320:
    unless_null $P5023, vivi_153323
    nqp_get_sc_object $P5024, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5023, $P5024
  vivi_153323:
    type_check $I5004, _lex_param_4, $P5023
    unless $I5004 goto if150_else317 
.annotate 'line', 56
    $P5025 = _lex_param_4."value"()
    set $P5026, $P5025
    goto if150_end318
  if150_else317:
    set $P5026, _lex_param_4
  if150_end318:
    push $P101, $P5026
    box $P5027, _lex_param_2
    push $P101, $P5027
    .return (_lex_param_2) 
.end
.HLL "nqp"
.namespace []
.sub "states" :subid("cuid_5_1361633907.987") :anon :lex :outer("cuid_119_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 61
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 3
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!states"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "addnode" :subid("cuid_6_1361633907.987") :anon :lex :outer("cuid_119_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 63
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :named("vars_as_generic") :optional 
    .param int haz_param_10 :opt_flag 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$*vars_as_generic", _lex_param_2 
    if haz_param_10, default325
    nqp_get_sc_object $P5003, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set _lex_param_2, $P5003
  default325:
.annotate 'line', 64
    nqp_decontainerize $P5001, _lex_param_0
    $P5001."regex_nfa"(_lex_param_1, 1, 0)
    nqp_decontainerize $P5002, _lex_param_0
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "regex_nfa" :subid("cuid_7_1361633907.987") :anon :lex :outer("cuid_119_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 68
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param int _lex_param_2 
    .param int _lex_param_3 
    .lex "$method", $P101 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$from", _lex_param_2 
    .lex "$to", _lex_param_3 
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P101, $P5001
.annotate 'line', 69
    $P5003 = _lex_param_1."rxtype"()
    set $P5002, $P5003
    defined $I5001, $P5002
    if $I5001, defor326
    box $P5004, "concat"
    set $P5002, $P5004
  defor326:
    set $P101, $P5002
.annotate 'line', 70
    nqp_decontainerize $P5006, _lex_param_0
    get_how $P5005, $P5006
    nqp_decontainerize $P5007, _lex_param_0
    $P5008 = $P5005."can"($P5007, $P101)
    unless $P5008 goto if154_else327 
.annotate 'line', 71
    nqp_decontainerize $P5009, _lex_param_0
    set $S5001, $P101
    $P5010 = $P5009.$S5001(_lex_param_1, _lex_param_2, _lex_param_3)
    set $P5013, $P5010
    goto if154_end328
  if154_else327:
.annotate 'line', 72
    nqp_decontainerize $P5011, _lex_param_0
    $P5012 = $P5011."fate"(_lex_param_1, _lex_param_2, _lex_param_3)
    set $P5013, $P5012
  if154_end328:
    .return ($P5013) 
.end
.HLL "nqp"
.namespace []
.sub "fate" :subid("cuid_8_1361633907.987") :anon :lex :outer("cuid_119_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 75
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param int _lex_param_2 
    .param int _lex_param_3 
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
.sub "alt" :subid("cuid_9_1361633907.987") :anon :lex :outer("cuid_119_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 79
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param int _lex_param_2 
    .param int _lex_param_3 
    .const 'Sub' $P5007 = 'cuid_120_1361633907.987' 
    capture_lex $P5007 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$from", _lex_param_2 
    .lex "$to", _lex_param_3 
.annotate 'line', 80
    $P5004 = _lex_param_1."list"()
    set $P5001, $P5004
    iter $P5003, $P5004
  for_next333:
    unless $P5003, for_done335
    shift $P5006, $P5003
  for_redo334:
    .const 'Sub' $P5005 = 'cuid_120_1361633907.987' 
    capture_lex $P5005
    $P5001 = $P5005($P5006)
    goto for_next333
  for_done335:
    .return (_lex_param_3) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_120_1361633907.987") :anon :lex :outer("cuid_9_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 80
    .param pmc _lex_param_0 
    .lex "$st", $I101 
    .lex "$_", _lex_param_0 
    set $I101, 0
.annotate 'line', 81
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    find_lex $I5001, "$from"
    find_lex $I5002, "$to"
    $P5003 = $P5001."regex_nfa"(_lex_param_0, $I5001, $I5002)
    set $I5003, $P5003
    set $I101, $I5003
    find_lex $I5005, "$to"
    set $N5001, $I5005
    set $N5002, 0
    islt $I5004, $N5001, $N5002
    set $I5007, $I5004
    unless $I5004 goto if156_end332 
    set $N5003, $I101
    set $N5004, 0
    isgt $I5006, $N5003, $N5004
    set $I5007, $I5006
  if156_end332:
    set $I5008, $I5007
    unless $I5007 goto if155_end330 
    store_lex "$to", $I101
    set $I5008, $I101
  if155_end330:
    .return ($I5008) 
.end
.HLL "nqp"
.namespace []
.sub "anchor" :subid("cuid_10_1361633907.987") :anon :lex :outer("cuid_119_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 87
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param int _lex_param_2 
    .param int _lex_param_3 
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
.sub "dba" :subid("cuid_11_1361633907.987") :anon :lex :outer("cuid_119_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 91
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param int _lex_param_2 
    .param int _lex_param_3 
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
.sub "cclass" :subid("cuid_12_1361633907.987") :anon :lex :outer("cuid_119_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 105
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param int _lex_param_2 
    .param int _lex_param_3 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$from", _lex_param_2 
    .lex "$to", _lex_param_3 
    .local pmc fb_tmp_20 
.annotate 'line', 106
    nqp_decontainerize $P5001, _lex_param_0
    find_lex $P5002, "$EDGE_CHARCLASS"
    set $N5002, $P5002
    $P5003 = _lex_param_1."negate"()
    istrue $I5001, $P5003
    set $N5003, $I5001
    add $N5001, $N5002, $N5003
    find_lex $P5004, "%cclass_code"
    set fb_tmp_20, $P5004
    repr_defined $I5002, fb_tmp_20
    unless $I5002 goto if157_else336 
.annotate 'line', 107
    $P5006 = _lex_param_1."subtype"()
    set $S5002, $P5006
    downcase $S5001, $S5002
    set $P5005, fb_tmp_20[$S5001]
    set $P5008, $P5005
    goto if157_end337
  if157_else336:
    null $P5007
    set $P5008, $P5007
  if157_end337:
    unless_null $P5008, vivi_158338
    nqp_get_sc_object $P5009, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5008, $P5009
  vivi_158338:
    $P5010 = $P5001."addedge"(_lex_param_2, _lex_param_3, $N5001, $P5008)
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "concat" :subid("cuid_13_1361633907.987") :anon :lex :outer("cuid_119_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 110
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param int _lex_param_2 
    .param int _lex_param_3 
    .lex "$i", $I101 
    .lex "$n", $I102 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$from", _lex_param_2 
    .lex "$to", _lex_param_3 
    .local pmc fb_tmp_21 
    .local pmc fb_tmp_22 
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
  while159_test339:
    set $N5004, _lex_param_2
    set $N5005, 0
    isgt $I5002, $N5004, $N5005
    set $I5004, $I5002
    unless $I5002 goto if160_end345 
    set $N5006, $I101
    set $N5007, $I102
    islt $I5003, $N5006, $N5007
    set $I5004, $I5003
  if160_end345:
    set $I5008, $I5004
    unless $I5004 goto while159_done343 
  while159_redo341:
.annotate 'line', 113
.annotate 'line', 114
    nqp_decontainerize $P5002, _lex_param_0
    set fb_tmp_21, _lex_param_1
    repr_defined $I5005, fb_tmp_21
    unless $I5005 goto if161_else346 
    set $P5003, fb_tmp_21[$I101]
    set $P5005, $P5003
    goto if161_end347
  if161_else346:
    null $P5004
    set $P5005, $P5004
  if161_end347:
    unless_null $P5005, vivi_162348
    nqp_get_sc_object $P5006, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5005, $P5006
  vivi_162348:
    $P5007 = $P5002."regex_nfa"($P5005, _lex_param_2, -1)
    set $I5006, $P5007
    set _lex_param_2, $I5006
    set $N5009, $I101
    set $N5010, 1
    add $N5008, $N5009, $N5010
    set $I5007, $N5008
    set $I101, $I5007
    set $I5008, $I101
    goto while159_test339 
  while159_done343:
    set $N5011, _lex_param_2
    set $N5012, 0
    isgt $I5009, $N5011, $N5012
    set $I5011, $I5009
    unless $I5009 goto if164_end352 
    set $N5013, $I102
    set $N5014, 0
    isge $I5010, $N5013, $N5014
    set $I5011, $I5010
  if164_end352:
    unless $I5011 goto if163_else349 
.annotate 'line', 117
    nqp_decontainerize $P5008, _lex_param_0
    set fb_tmp_22, _lex_param_1
    repr_defined $I5012, fb_tmp_22
    unless $I5012 goto if165_else353 
    set $P5009, fb_tmp_22[$I101]
    set $P5011, $P5009
    goto if165_end354
  if165_else353:
    null $P5010
    set $P5011, $P5010
  if165_end354:
    unless_null $P5011, vivi_166355
    nqp_get_sc_object $P5012, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5011, $P5012
  vivi_166355:
    $P5013 = $P5008."regex_nfa"($P5011, _lex_param_2, _lex_param_3)
    set $P5014, $P5013
    goto if163_end350
  if163_else349:
    box $P5015, _lex_param_3
    set $P5014, $P5015
  if163_end350:
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "enumcharlist" :subid("cuid_14_1361633907.987") :anon :lex :outer("cuid_119_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 120
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param int _lex_param_2 
    .param int _lex_param_3 
    .lex "$charlist", $P101 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$from", _lex_param_2 
    .lex "$to", _lex_param_3 
    .local pmc fb_tmp_23 
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P101, $P5001
    set fb_tmp_23, _lex_param_1
    repr_defined $I5001, fb_tmp_23
    unless $I5001 goto if167_else356 
    set $P5002, fb_tmp_23[0]
    set $P5004, $P5002
    goto if167_end357
  if167_else356:
    null $P5003
    set $P5004, $P5003
  if167_end357:
    unless_null $P5004, vivi_168358
    nqp_get_sc_object $P5005, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5004, $P5005
  vivi_168358:
    set $P101, $P5004
.annotate 'line', 122
    $P5006 = _lex_param_1."subtype"()
    set $S5001, $P5006
    iseq $I5002, $S5001, "zerowidth"
    unless $I5002 goto if169_else359 
.annotate 'line', 123
    nqp_decontainerize $P5007, _lex_param_0
    find_lex $P5008, "$EDGE_CHARLIST"
    set $N5002, $P5008
    $P5009 = _lex_param_1."negate"()
    istrue $I5003, $P5009
    set $N5003, $I5003
    add $N5001, $N5002, $N5003
    $P5010 = $P5007."addedge"(_lex_param_2, -1, $N5001, $P101)
    set $I5004, $P5010
    set _lex_param_2, $I5004
.annotate 'line', 124
    nqp_decontainerize $P5011, _lex_param_0
    find_lex $P5012, "$EDGE_FATE"
    $P5013 = $P5011."addedge"(_lex_param_2, 0, $P5012, 0)
    set $P5018, $P5013
    goto if169_end360
  if169_else359:
.annotate 'line', 126
.annotate 'line', 127
    nqp_decontainerize $P5014, _lex_param_0
    find_lex $P5015, "$EDGE_CHARLIST"
    set $N5005, $P5015
    $P5016 = _lex_param_1."negate"()
    istrue $I5005, $P5016
    set $N5006, $I5005
    add $N5004, $N5005, $N5006
    $P5017 = $P5014."addedge"(_lex_param_2, _lex_param_3, $N5004, $P101)
    set $P5018, $P5017
  if169_end360:
    .return ($P5018) 
.end
.HLL "nqp"
.namespace []
.sub "literal" :subid("cuid_15_1361633907.987") :anon :lex :outer("cuid_119_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 131
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param int _lex_param_2 
    .param int _lex_param_3 
    .const 'Sub' $P5015 = 'cuid_121_1361633907.987' 
    capture_lex $P5015 
    .const 'Sub' $P5015 = 'cuid_122_1361633907.987' 
    capture_lex $P5015 
    .lex "$litlen", $I101 
    .lex "$i", $I102 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$from", _lex_param_2 
    .lex "$to", _lex_param_3 
    .local pmc fb_tmp_24 
    set $I101, 0
    set $I102, 0
    set fb_tmp_24, _lex_param_1
    repr_defined $I5002, fb_tmp_24
    unless $I5002 goto if170_else361 
    set $P5001, fb_tmp_24[0]
    set $P5003, $P5001
    goto if170_end362
  if170_else361:
    null $P5002
    set $P5003, $P5002
  if170_end362:
    unless_null $P5003, vivi_171363
    nqp_get_sc_object $P5004, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5003, $P5004
  vivi_171363:
    set $S5001, $P5003
    length $I5001, $S5001
    set $N5002, $I5001
    set $N5003, 1
    sub $N5001, $N5002, $N5003
    set $I5003, $N5001
    set $I101, $I5003
    set $I102, 0
    set $N5004, $I101
    set $N5005, 0
    isge $I5004, $N5004, $N5005
    unless $I5004 goto if172_else364 
.annotate 'line', 134
.annotate 'line', 135
    $P5005 = _lex_param_1."subtype"()
    set $S5002, $P5005
    iseq $I5005, $S5002, "ignorecase"
    unless $I5005 goto if173_else366 
    .const 'Sub' $P5006 = 'cuid_121_1361633907.987' 
    capture_lex $P5006
    $P5007 = $P5006()
    set $P5010, $P5007
    goto if173_end367
  if173_else366:
    .const 'Sub' $P5008 = 'cuid_122_1361633907.987' 
    capture_lex $P5008
    $P5009 = $P5008()
    set $P5010, $P5009
  if173_end367:
    set $P5014, $P5010
    goto if172_end365
  if172_else364:
.annotate 'line', 155
.annotate 'line', 156
    nqp_decontainerize $P5011, _lex_param_0
    find_lex $P5012, "$EDGE_EPSILON"
    $P5013 = $P5011."addedge"(_lex_param_2, _lex_param_3, $P5012, 0)
    set $P5014, $P5013
  if172_end365:
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_121_1361633907.987") :anon :lex :outer("cuid_15_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 135
    .lex "$litconst_lc", $S101 
    .lex "$litconst_uc", $S102 
    .local pmc fb_tmp_25 
    .local pmc fb_tmp_26 
    set $S101, ""
    set $S102, ""
    find_lex $P5001, "$node"
    set fb_tmp_25, $P5001
    repr_defined $I5001, fb_tmp_25
    unless $I5001 goto if174_else368 
    set $P5002, fb_tmp_25[0]
    set $P5004, $P5002
    goto if174_end369
  if174_else368:
    null $P5003
    set $P5004, $P5003
  if174_end369:
    unless_null $P5004, vivi_175370
    nqp_get_sc_object $P5005, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5004, $P5005
  vivi_175370:
    set $S5002, $P5004
    downcase $S5001, $S5002
    set $S101, $S5001
    find_lex $P5006, "$node"
    set fb_tmp_26, $P5006
    repr_defined $I5002, fb_tmp_26
    unless $I5002 goto if176_else371 
    set $P5007, fb_tmp_26[0]
    set $P5009, $P5007
    goto if176_end372
  if176_else371:
    null $P5008
    set $P5009, $P5008
  if176_end372:
    unless_null $P5009, vivi_177373
    nqp_get_sc_object $P5010, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5009, $P5010
  vivi_177373:
    set $S5004, $P5009
    upcase $S5003, $S5004
    set $S102, $S5003
  while178_test374:
    find_lex $I5004, "$i"
    set $N5001, $I5004
    find_lex $I5005, "$litlen"
    set $N5002, $I5005
    islt $I5003, $N5001, $N5002
    set $I5014, $I5003
    unless $I5003 goto while178_done378 
  while178_redo376:
.annotate 'line', 138
.annotate 'line', 139
    find_lex $P5012, "self"
    nqp_decontainerize $P5011, $P5012
    find_lex $I5006, "$from"
    find_lex $P5013, "$EDGE_CODEPOINT_I"
    new $P5014, 'ResizablePMCArray'
    find_lex $I5008, "$i"
    ord $I5007, $S101, $I5008
    box $P5015, $I5007
    push $P5014, $P5015
    find_lex $I5010, "$i"
    ord $I5009, $S102, $I5010
    box $P5016, $I5009
    push $P5014, $P5016
    $P5017 = $P5011."addedge"($I5006, -1, $P5013, $P5014)
    set $I5011, $P5017
    store_lex "$from", $I5011
    find_lex $I5012, "$i"
    set $N5004, $I5012
    set $N5005, 1
    add $N5003, $N5004, $N5005
    set $I5013, $N5003
    store_lex "$i", $I5013
    set $I5014, $I5013
    goto while178_test374 
  while178_done378:
.annotate 'line', 143
    find_lex $P5019, "self"
    nqp_decontainerize $P5018, $P5019
    find_lex $I5015, "$from"
    find_lex $I5016, "$to"
    find_lex $P5020, "$EDGE_CODEPOINT_I"
    new $P5021, 'ResizablePMCArray'
    find_lex $I5018, "$i"
    ord $I5017, $S101, $I5018
    box $P5022, $I5017
    push $P5021, $P5022
    find_lex $I5020, "$i"
    ord $I5019, $S102, $I5020
    box $P5023, $I5019
    push $P5021, $P5023
    $P5024 = $P5018."addedge"($I5015, $I5016, $P5020, $P5021)
    .return ($P5024) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_122_1361633907.987") :anon :lex :outer("cuid_15_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 146
    .lex "$litconst", $S101 
    .local pmc fb_tmp_27 
    set $S101, ""
    find_lex $P5001, "$node"
    set fb_tmp_27, $P5001
    repr_defined $I5001, fb_tmp_27
    unless $I5001 goto if179_else379 
    set $P5002, fb_tmp_27[0]
    set $P5004, $P5002
    goto if179_end380
  if179_else379:
    null $P5003
    set $P5004, $P5003
  if179_end380:
    unless_null $P5004, vivi_180381
    nqp_get_sc_object $P5005, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5004, $P5005
  vivi_180381:
    set $S5001, $P5004
    set $S101, $S5001
  while181_test382:
    find_lex $I5003, "$i"
    set $N5001, $I5003
    find_lex $I5004, "$litlen"
    set $N5002, $I5004
    islt $I5002, $N5001, $N5002
    set $I5011, $I5002
    unless $I5002 goto while181_done386 
  while181_redo384:
.annotate 'line', 148
.annotate 'line', 149
    find_lex $P5007, "self"
    nqp_decontainerize $P5006, $P5007
    find_lex $I5005, "$from"
    find_lex $P5008, "$EDGE_CODEPOINT"
    find_lex $I5007, "$i"
    ord $I5006, $S101, $I5007
    $P5009 = $P5006."addedge"($I5005, -1, $P5008, $I5006)
    set $I5008, $P5009
    store_lex "$from", $I5008
    find_lex $I5009, "$i"
    set $N5004, $I5009
    set $N5005, 1
    add $N5003, $N5004, $N5005
    set $I5010, $N5003
    store_lex "$i", $I5010
    set $I5011, $I5010
    goto while181_test382 
  while181_done386:
.annotate 'line', 152
    find_lex $P5011, "self"
    nqp_decontainerize $P5010, $P5011
    find_lex $I5012, "$from"
    find_lex $I5013, "$to"
    find_lex $P5012, "$EDGE_CODEPOINT"
    find_lex $I5015, "$i"
    ord $I5014, $S101, $I5015
    $P5013 = $P5010."addedge"($I5012, $I5013, $P5012, $I5014)
    .return ($P5013) 
.end
.HLL "nqp"
.namespace []
.sub "subrule" :subid("cuid_16_1361633907.987") :anon :lex :outer("cuid_119_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 160
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param int _lex_param_2 
    .param int _lex_param_3 
    .const 'Sub' $P5176 = 'cuid_123_1361633907.987' 
    capture_lex $P5176 
    .const 'Sub' $P5176 = 'cuid_124_1361633907.987' 
    capture_lex $P5176 
    .lex "$subtype", $P101 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$from", _lex_param_2 
    .lex "$to", _lex_param_3 
    .local pmc fb_tmp_31 
    .local pmc pkg_lookup_tmp_2 
    .local pmc fb_tmp_32 
    .local pmc fb_tmp_33 
    .local pmc fb_tmp_34 
    .local pmc fb_tmp_35 
    .local pmc fb_tmp_36 
    .local pmc fb_tmp_37 
    .local pmc fb_tmp_38 
    .local pmc fb_tmp_39 
    .local pmc pkg_lookup_tmp_3 
    .local pmc fb_tmp_40 
    .local pmc fb_tmp_41 
    .local pmc fb_tmp_42 
    .local pmc fb_tmp_43 
    .local pmc fb_tmp_44 
    .local pmc pkg_lookup_tmp_4 
    .local pmc fb_tmp_45 
    .local pmc fb_tmp_46 
    .local pmc fb_tmp_47 
    .local pmc fb_tmp_48 
    .local pmc fb_tmp_49 
    .local pmc fb_tmp_50 
    .local pmc fb_tmp_51 
    .local pmc fb_tmp_52 
    .local pmc fb_tmp_53 
    .local pmc fb_tmp_54 
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P101, $P5001
.annotate 'line', 161
    $P5002 = _lex_param_1."subtype"()
    set $P101, $P5002
.annotate 'line', 162
    $P5003 = _lex_param_1."name"()
    set $S5001, $P5003
    iseq $I5001, $S5001, "before"
    set $I5003, $I5001
    unless $I5001 goto if183_end390 
    $P5004 = _lex_param_1."negate"()
    isfalse $I5002, $P5004
    set $I5003, $I5002
  if183_end390:
    unless $I5003 goto if182_else387 
    .const 'Sub' $P5005 = 'cuid_123_1361633907.987' 
    capture_lex $P5005
    $P5006 = $P5005()
    set $P5175, $P5006
    goto if182_end388
  if182_else387:
    set $S5002, $P101
    isne $I5004, $S5002, "zerowidth"
    set $I5018, $I5004
    unless $I5004 goto if191_end403 
.annotate 'line', 168
    $P5007 = _lex_param_1."name"()
    set $S5003, $P5007
    iseq $I5005, $S5003, "alpha"
    set $I5017, $I5005
    if $I5005 goto unless192_end405 
    set $S5004, $P101
    iseq $I5006, $S5004, "method"
    set $I5016, $I5006
    unless $I5006 goto if193_end407 
.annotate 'line', 170
    nqp_get_sc_object $P5009, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 0
    set pkg_lookup_tmp_2, $P5009
    get_who $P5010, pkg_lookup_tmp_2
    exists $I5009, $P5010["QAST"]
    unless $I5009 goto if196_else412 
    get_who $P5012, pkg_lookup_tmp_2
    set $P5011, $P5012["QAST"]
    set $P5014, $P5011
    goto if196_end413
  if196_else412:
    nqp_get_sc_object $P5013, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5014, $P5013
  if196_end413:
    get_who $P5008, $P5014
    set fb_tmp_31, $P5008
    repr_defined $I5008, fb_tmp_31
    unless $I5008 goto if195_else410 
    set $P5015, fb_tmp_31["SVal"]
    set $P5017, $P5015
    goto if195_end411
  if195_else410:
    null $P5016
    set $P5017, $P5016
  if195_end411:
    unless_null $P5017, vivi_197414
    nqp_get_sc_object $P5018, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5017, $P5018
  vivi_197414:
    set fb_tmp_33, _lex_param_1
    repr_defined $I5011, fb_tmp_33
    unless $I5011 goto if199_else417 
    set $P5019, fb_tmp_33[0]
    set $P5021, $P5019
    goto if199_end418
  if199_else417:
    null $P5020
    set $P5021, $P5020
  if199_end418:
    unless_null $P5021, vivi_200419
    nqp_get_sc_object $P5022, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5021, $P5022
  vivi_200419:
    set fb_tmp_32, $P5021
    repr_defined $I5010, fb_tmp_32
    unless $I5010 goto if198_else415 
    set $P5023, fb_tmp_32[0]
    set $P5025, $P5023
    goto if198_end416
  if198_else415:
    null $P5024
    set $P5025, $P5024
  if198_end416:
    unless_null $P5025, vivi_201420
    nqp_get_sc_object $P5026, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5025, $P5026
  vivi_201420:
    $P5027 = $P5017."ACCEPTS"($P5025)
    unless $P5027 goto if194_else408 
    set fb_tmp_35, _lex_param_1
    repr_defined $I5013, fb_tmp_35
    unless $I5013 goto if203_else423 
    set $P5028, fb_tmp_35[0]
    set $P5030, $P5028
    goto if203_end424
  if203_else423:
    null $P5029
    set $P5030, $P5029
  if203_end424:
    unless_null $P5030, vivi_204425
    nqp_get_sc_object $P5031, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5030, $P5031
  vivi_204425:
    set fb_tmp_34, $P5030
    repr_defined $I5012, fb_tmp_34
    unless $I5012 goto if202_else421 
    set $P5032, fb_tmp_34[0]
    set $P5034, $P5032
    goto if202_end422
  if202_else421:
    null $P5033
    set $P5034, $P5033
  if202_end422:
    unless_null $P5034, vivi_205426
    nqp_get_sc_object $P5035, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5034, $P5035
  vivi_205426:
    $P5036 = $P5034."value"()
    set $P5045, $P5036
    goto if194_end409
  if194_else408:
    set fb_tmp_37, _lex_param_1
    repr_defined $I5015, fb_tmp_37
    unless $I5015 goto if207_else429 
    set $P5037, fb_tmp_37[0]
    set $P5039, $P5037
    goto if207_end430
  if207_else429:
    null $P5038
    set $P5039, $P5038
  if207_end430:
    unless_null $P5039, vivi_208431
    nqp_get_sc_object $P5040, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5039, $P5040
  vivi_208431:
    set fb_tmp_36, $P5039
    repr_defined $I5014, fb_tmp_36
    unless $I5014 goto if206_else427 
    set $P5041, fb_tmp_36[0]
    set $P5043, $P5041
    goto if206_end428
  if206_else427:
    null $P5042
    set $P5043, $P5042
  if206_end428:
    unless_null $P5043, vivi_209432
    nqp_get_sc_object $P5044, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5043, $P5044
  vivi_209432:
    set $P5045, $P5043
  if194_end409:
    set $S5005, $P5045
    iseq $I5007, $S5005, "alpha"
    set $I5016, $I5007
  if193_end407:
    set $I5017, $I5016
  unless192_end405:
    set $I5018, $I5017
  if191_end403:
    unless $I5018 goto if190_else400 
.annotate 'line', 171
    nqp_decontainerize $P5046, _lex_param_0
    find_lex $P5047, "$EDGE_CHARCLASS"
    set $N5002, $P5047
    $P5048 = _lex_param_1."negate"()
    set $N5003, $P5048
    add $N5001, $N5002, $N5003
    $P5049 = $P5046."addedge"(_lex_param_2, _lex_param_3, $N5001, 4)
    set $I5019, $P5049
    set _lex_param_3, $I5019
.annotate 'line', 173
    nqp_decontainerize $P5050, _lex_param_0
    find_lex $P5051, "$EDGE_CODEPOINT"
    set $N5005, $P5051
    $P5052 = _lex_param_1."negate"()
    set $N5006, $P5052
    add $N5004, $N5005, $N5006
    $P5053 = $P5050."addedge"(_lex_param_2, _lex_param_3, $N5004, 95)
    set $P5174, $P5053
    goto if190_end401
  if190_else400:
    set $S5006, $P101
    iseq $I5020, $S5006, "zerowidth"
    unless $I5020 goto if210_else433 
.annotate 'line', 175
.annotate 'line', 176
    $P5054 = _lex_param_1."negate"()
    unless $P5054 goto if211_else435 
.annotate 'line', 177
    nqp_decontainerize $P5055, _lex_param_0
    $P5056 = $P5055."fate"(_lex_param_1, _lex_param_2, _lex_param_3)
    set $P5059, $P5056
    goto if211_end436
  if211_else435:
    .const 'Sub' $P5057 = 'cuid_124_1361633907.987' 
    capture_lex $P5057
    $P5058 = $P5057()
    set $P5059, $P5058
  if211_end436:
    set $P5173, $P5059
    goto if210_end434
  if210_else433:
    find_dynamic_lex $P5060, "$*vars_as_generic"
    unless_null $P5060, fallback449
    nqp_get_sc_object $P5062, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 0
    get_who $P5061, $P5062
    set fb_tmp_38, $P5061
    repr_defined $I5021, fb_tmp_38
    unless $I5021 goto if218_else450 
    set $P5063, fb_tmp_38["$vars_as_generic"]
    set $P5065, $P5063
    goto if218_end451
  if218_else450:
    null $P5064
    set $P5065, $P5064
  if218_end451:
    unless_null $P5065, vivi_219452
    nqp_get_sc_object $P5066, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5065, $P5066
  vivi_219452:
    unless_null $P5065, vivi_220453
    die "Contextual $*vars_as_generic not found"
    box $P5067, "Contextual $*vars_as_generic not found"
    set $P5065, $P5067
  vivi_220453:
    set $P5060, $P5065
  fallback449:
    set $P5068, $P5060
    unless $P5060 goto if217_end448 
    set $S5007, $P101
    iseq $I5022, $S5007, "method"
    box $P5069, $I5022
    set $P5068, $P5069
  if217_end448:
    set $P5090, $P5068
    unless $P5068 goto if216_end446 
.annotate 'line', 186
    nqp_get_sc_object $P5071, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 0
    set pkg_lookup_tmp_3, $P5071
    get_who $P5072, pkg_lookup_tmp_3
    exists $I5024, $P5072["QAST"]
    unless $I5024 goto if222_else456 
    get_who $P5074, pkg_lookup_tmp_3
    set $P5073, $P5074["QAST"]
    set $P5076, $P5073
    goto if222_end457
  if222_else456:
    nqp_get_sc_object $P5075, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5076, $P5075
  if222_end457:
    get_who $P5070, $P5076
    set fb_tmp_39, $P5070
    repr_defined $I5023, fb_tmp_39
    unless $I5023 goto if221_else454 
    set $P5077, fb_tmp_39["SVal"]
    set $P5079, $P5077
    goto if221_end455
  if221_else454:
    null $P5078
    set $P5079, $P5078
  if221_end455:
    unless_null $P5079, vivi_223458
    nqp_get_sc_object $P5080, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5079, $P5080
  vivi_223458:
    set fb_tmp_41, _lex_param_1
    repr_defined $I5026, fb_tmp_41
    unless $I5026 goto if225_else461 
    set $P5081, fb_tmp_41[0]
    set $P5083, $P5081
    goto if225_end462
  if225_else461:
    null $P5082
    set $P5083, $P5082
  if225_end462:
    unless_null $P5083, vivi_226463
    nqp_get_sc_object $P5084, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5083, $P5084
  vivi_226463:
    set fb_tmp_40, $P5083
    repr_defined $I5025, fb_tmp_40
    unless $I5025 goto if224_else459 
    set $P5085, fb_tmp_40[0]
    set $P5087, $P5085
    goto if224_end460
  if224_else459:
    null $P5086
    set $P5087, $P5086
  if224_end460:
    unless_null $P5087, vivi_227464
    nqp_get_sc_object $P5088, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5087, $P5088
  vivi_227464:
    $P5089 = $P5079."ACCEPTS"($P5087)
    set $P5090, $P5089
  if216_end446:
    set $P5100, $P5090
    unless $P5090 goto if215_end444 
    set fb_tmp_43, _lex_param_1
    repr_defined $I5029, fb_tmp_43
    unless $I5029 goto if229_else467 
    set $P5091, fb_tmp_43[0]
    set $P5093, $P5091
    goto if229_end468
  if229_else467:
    null $P5092
    set $P5093, $P5092
  if229_end468:
    unless_null $P5093, vivi_230469
    nqp_get_sc_object $P5094, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5093, $P5094
  vivi_230469:
    set fb_tmp_42, $P5093
    repr_defined $I5028, fb_tmp_42
    unless $I5028 goto if228_else465 
    set $P5095, fb_tmp_42[0]
    set $P5097, $P5095
    goto if228_end466
  if228_else465:
    null $P5096
    set $P5097, $P5096
  if228_end466:
    unless_null $P5097, vivi_231470
    nqp_get_sc_object $P5098, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5097, $P5098
  vivi_231470:
    $P5099 = $P5097."value"()
    set $S5008, $P5099
    iseq $I5027, $S5008, "!INTERPOLATE"
    box $P5101, $I5027
    set $P5100, $P5101
  if215_end444:
    set $P5122, $P5100
    unless $P5100 goto if214_end442 
.annotate 'line', 187
    nqp_get_sc_object $P5103, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 0
    set pkg_lookup_tmp_4, $P5103
    get_who $P5104, pkg_lookup_tmp_4
    exists $I5031, $P5104["QAST"]
    unless $I5031 goto if233_else473 
    get_who $P5106, pkg_lookup_tmp_4
    set $P5105, $P5106["QAST"]
    set $P5108, $P5105
    goto if233_end474
  if233_else473:
    nqp_get_sc_object $P5107, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5108, $P5107
  if233_end474:
    get_who $P5102, $P5108
    set fb_tmp_44, $P5102
    repr_defined $I5030, fb_tmp_44
    unless $I5030 goto if232_else471 
    set $P5109, fb_tmp_44["Var"]
    set $P5111, $P5109
    goto if232_end472
  if232_else471:
    null $P5110
    set $P5111, $P5110
  if232_end472:
    unless_null $P5111, vivi_234475
    nqp_get_sc_object $P5112, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5111, $P5112
  vivi_234475:
    set fb_tmp_46, _lex_param_1
    repr_defined $I5033, fb_tmp_46
    unless $I5033 goto if236_else478 
    set $P5113, fb_tmp_46[0]
    set $P5115, $P5113
    goto if236_end479
  if236_else478:
    null $P5114
    set $P5115, $P5114
  if236_end479:
    unless_null $P5115, vivi_237480
    nqp_get_sc_object $P5116, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5115, $P5116
  vivi_237480:
    set fb_tmp_45, $P5115
    repr_defined $I5032, fb_tmp_45
    unless $I5032 goto if235_else476 
    set $P5117, fb_tmp_45[1]
    set $P5119, $P5117
    goto if235_end477
  if235_else476:
    null $P5118
    set $P5119, $P5118
  if235_end477:
    unless_null $P5119, vivi_238481
    nqp_get_sc_object $P5120, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5119, $P5120
  vivi_238481:
    $P5121 = $P5111."ACCEPTS"($P5119)
    set $P5122, $P5121
  if214_end442:
    set $P5132, $P5122
    unless $P5122 goto if213_end440 
    set fb_tmp_48, _lex_param_1
    repr_defined $I5036, fb_tmp_48
    unless $I5036 goto if240_else484 
    set $P5123, fb_tmp_48[0]
    set $P5125, $P5123
    goto if240_end485
  if240_else484:
    null $P5124
    set $P5125, $P5124
  if240_end485:
    unless_null $P5125, vivi_241486
    nqp_get_sc_object $P5126, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5125, $P5126
  vivi_241486:
    set fb_tmp_47, $P5125
    repr_defined $I5035, fb_tmp_47
    unless $I5035 goto if239_else482 
    set $P5127, fb_tmp_47[1]
    set $P5129, $P5127
    goto if239_end483
  if239_else482:
    null $P5128
    set $P5129, $P5128
  if239_end483:
    unless_null $P5129, vivi_242487
    nqp_get_sc_object $P5130, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5129, $P5130
  vivi_242487:
    $P5131 = $P5129."scope"()
    set $S5009, $P5131
    iseq $I5034, $S5009, "lexical"
    box $P5133, $I5034
    set $P5132, $P5133
  if213_end440:
    unless $P5132 goto if212_else437 
    nqp_decontainerize $P5134, _lex_param_0
    nqp_get_sc_object $P5135, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 3
    repr_bind_attr_int $P5134, $P5135, "$!generic", 1
.annotate 'line', 189
    nqp_decontainerize $P5136, _lex_param_0
    find_lex $P5137, "$EDGE_GENERIC_VAR"
    set fb_tmp_50, _lex_param_1
    repr_defined $I5038, fb_tmp_50
    unless $I5038 goto if244_else490 
    set $P5138, fb_tmp_50[0]
    set $P5140, $P5138
    goto if244_end491
  if244_else490:
    null $P5139
    set $P5140, $P5139
  if244_end491:
    unless_null $P5140, vivi_245492
    nqp_get_sc_object $P5141, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5140, $P5141
  vivi_245492:
    set fb_tmp_49, $P5140
    repr_defined $I5037, fb_tmp_49
    unless $I5037 goto if243_else488 
    set $P5142, fb_tmp_49[1]
    set $P5144, $P5142
    goto if243_end489
  if243_else488:
    null $P5143
    set $P5144, $P5143
  if243_end489:
    unless_null $P5144, vivi_246493
    nqp_get_sc_object $P5145, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5144, $P5145
  vivi_246493:
    $P5146 = $P5144."name"()
    $P5147 = $P5136."addedge"(_lex_param_2, _lex_param_3, $P5137, $P5146)
    set $P5172, $P5147
    goto if212_end438
  if212_else437:
.annotate 'line', 191
    set $S5010, $P101
    iseq $I5039, $S5010, "capture"
    box $P5153, $I5039
    set $P5152, $P5153
    unless $I5039 goto if248_end497 
    set fb_tmp_51, _lex_param_1
    repr_defined $I5040, fb_tmp_51
    unless $I5040 goto if249_else498 
    set $P5148, fb_tmp_51[1]
    set $P5150, $P5148
    goto if249_end499
  if249_else498:
    null $P5149
    set $P5150, $P5149
  if249_end499:
    unless_null $P5150, vivi_250500
    nqp_get_sc_object $P5151, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5150, $P5151
  vivi_250500:
    set $P5152, $P5150
  if248_end497:
    unless $P5152 goto if247_else494 
.annotate 'line', 193
    nqp_decontainerize $P5154, _lex_param_0
    set fb_tmp_52, _lex_param_1
    repr_defined $I5041, fb_tmp_52
    unless $I5041 goto if251_else501 
    set $P5155, fb_tmp_52[1]
    set $P5157, $P5155
    goto if251_end502
  if251_else501:
    null $P5156
    set $P5157, $P5156
  if251_end502:
    unless_null $P5157, vivi_252503
    nqp_get_sc_object $P5158, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5157, $P5158
  vivi_252503:
    $P5159 = $P5154."regex_nfa"($P5157, _lex_param_2, _lex_param_3)
    set $P5171, $P5159
    goto if247_end495
  if247_else494:
.annotate 'line', 194
    nqp_decontainerize $P5160, _lex_param_0
    find_lex $P5161, "$EDGE_SUBRULE"
    set fb_tmp_54, _lex_param_1
    repr_defined $I5043, fb_tmp_54
    unless $I5043 goto if254_else506 
    set $P5162, fb_tmp_54[0]
    set $P5164, $P5162
    goto if254_end507
  if254_else506:
    null $P5163
    set $P5164, $P5163
  if254_end507:
    unless_null $P5164, vivi_255508
    nqp_get_sc_object $P5165, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5164, $P5165
  vivi_255508:
    set fb_tmp_53, $P5164
    repr_defined $I5042, fb_tmp_53
    unless $I5042 goto if253_else504 
    set $P5166, fb_tmp_53[0]
    set $P5168, $P5166
    goto if253_end505
  if253_else504:
    null $P5167
    set $P5168, $P5167
  if253_end505:
    unless_null $P5168, vivi_256509
    nqp_get_sc_object $P5169, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5168, $P5169
  vivi_256509:
    $P5170 = $P5160."addedge"(_lex_param_2, _lex_param_3, $P5161, $P5168)
    set $P5171, $P5170
  if247_end495:
    set $P5172, $P5171
  if212_end438:
    set $P5173, $P5172
  if210_end434:
    set $P5174, $P5173
  if190_end401:
    set $P5175, $P5174
  if182_end388:
    .return ($P5175) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_123_1361633907.987") :anon :lex :outer("cuid_16_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 162
    .lex "$end", $I101 
    .local pmc fb_tmp_28 
    .local pmc fb_tmp_29 
    .local pmc fb_tmp_30 
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
    set fb_tmp_30, $P5006
    repr_defined $I5004, fb_tmp_30
    unless $I5004 goto if186_else395 
    set $P5007, fb_tmp_30[0]
    set $P5009, $P5007
    goto if186_end396
  if186_else395:
    null $P5008
    set $P5009, $P5008
  if186_end396:
    unless_null $P5009, vivi_187397
    nqp_get_sc_object $P5010, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5009, $P5010
  vivi_187397:
    set fb_tmp_29, $P5009
    repr_defined $I5003, fb_tmp_29
    unless $I5003 goto if185_else393 
    set $P5011, fb_tmp_29[1]
    set $P5013, $P5011
    goto if185_end394
  if185_else393:
    null $P5012
    set $P5013, $P5012
  if185_end394:
    unless_null $P5013, vivi_188398
    nqp_get_sc_object $P5014, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5013, $P5014
  vivi_188398:
    set fb_tmp_28, $P5013
    repr_defined $I5002, fb_tmp_28
    unless $I5002 goto if184_else391 
    set $P5015, fb_tmp_28["orig_qast"]
    set $P5017, $P5015
    goto if184_end392
  if184_else391:
    null $P5016
    set $P5017, $P5016
  if184_end392:
    unless_null $P5017, vivi_189399
    nqp_get_sc_object $P5018, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5017, $P5018
  vivi_189399:
    find_lex $I5005, "$from"
    $P5004."regex_nfa"($P5017, $I5005, $I101)
.annotate 'line', 165
    find_lex $P5020, "self"
    nqp_decontainerize $P5019, $P5020
    find_lex $P5021, "$node"
    find_lex $I5006, "$to"
    $P5022 = $P5019."fate"($P5021, $I101, $I5006)
    .return ($P5022) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_124_1361633907.987") :anon :lex :outer("cuid_16_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 179
    .lex "$end", $I101 
    set $I101, 0
.annotate 'line', 180
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    $P5003 = $P5001."addstate"()
    set $I5001, $P5003
    set $I101, $I5001
.annotate 'line', 181
    find_lex $P5005, "self"
    nqp_decontainerize $P5004, $P5005
    find_lex $I5002, "$from"
    find_lex $P5006, "$EDGE_SUBRULE"
    find_lex $P5007, "$node"
    $P5008 = $P5007."name"()
    $P5004."addedge"($I5002, $I101, $P5006, $P5008)
.annotate 'line', 182
    find_lex $P5010, "self"
    nqp_decontainerize $P5009, $P5010
    find_lex $P5011, "$node"
    find_lex $I5003, "$to"
    $P5012 = $P5009."fate"($P5011, $I101, $I5003)
    .return ($P5012) 
.end
.HLL "nqp"
.namespace []
.sub "quant" :subid("cuid_17_1361633907.987") :anon :lex :outer("cuid_119_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 198
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param int _lex_param_2 
    .param int _lex_param_3 
    .const 'Sub' $P5027 = 'cuid_126_1361633907.987' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_128_1361633907.987' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_129_1361633907.987' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_130_1361633907.987' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_131_1361633907.987' 
    capture_lex $P5027 
    .lex "$min", $I101 
    .lex "$max", $I102 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$from", _lex_param_2 
    .lex "$to", _lex_param_3 
    .local pmc fb_tmp_60 
    set $I101, 0
    set $I102, 0
    root_new $P101, ['parrot';'Continuation']
    set_label $P101, lexotic_510
    .lex "RETURN", $P101
    set $N5002, 0
.annotate 'line', 199
    $P5002 = _lex_param_1."min"()
    set $P5001, $P5002
    defined $I5001, $P5001
    if $I5001, defor512
    box $P5003, 0
    set $P5001, $P5003
  defor512:
    set $N5003, $P5001
    add $N5001, $N5002, $N5003
    set $I5002, $N5001
    set $I101, $I5002
    set $N5005, 0
.annotate 'line', 200
    $P5005 = _lex_param_1."max"()
    set $P5004, $P5005
    defined $I5003, $P5004
    if $I5003, defor513
    box $P5006, -1
    set $P5004, $P5006
  defor513:
    set $N5006, $P5004
    add $N5004, $N5005, $N5006
    set $I5004, $N5004
    set $I102, $I5004
    set $N5007, $I102
    set $N5008, 1
    isgt $I5005, $N5007, $N5008
    set $I5007, $I5005
    if $I5005 goto unless258_end517 
    set $N5009, $I101
    set $N5010, 1
    isgt $I5006, $N5009, $N5010
    set $I5007, $I5006
  unless258_end517:
    unless $I5007 goto if257_end515 
    .const 'Sub' $P5007 = 'cuid_126_1361633907.987' 
    capture_lex $P5007
    $P5008 = $P5007()
  if257_end515:
    set $N5011, $I102
    set $N5012, -1
    iseq $I5008, $N5011, $N5012
    unless $I5008 goto if280_else558 
.annotate 'line', 233
    set $N5013, $I101
    set $N5014, 0
    iseq $I5009, $N5013, $N5014
    unless $I5009 goto if281_else560 
.annotate 'line', 234
    set fb_tmp_60, _lex_param_1
    repr_defined $I5011, fb_tmp_60
    unless $I5011 goto if283_else564 
    set $P5009, fb_tmp_60[1]
    set $P5011, $P5009
    goto if283_end565
  if283_else564:
    null $P5010
    set $P5011, $P5010
  if283_end565:
    unless_null $P5011, vivi_284566
    nqp_get_sc_object $P5012, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5011, $P5012
  vivi_284566:
    defined $I5010, $P5011
    unless $I5010 goto if282_else562 
    .const 'Sub' $P5013 = 'cuid_128_1361633907.987' 
    capture_lex $P5013
    $P5014 = $P5013()
    set $P5017, $P5014
    goto if282_end563
  if282_else562:
    .const 'Sub' $P5015 = 'cuid_129_1361633907.987' 
    capture_lex $P5015
    $P5016 = $P5015()
    set $P5017, $P5016
  if282_end563:
    goto if281_end561
  if281_else560:
    .const 'Sub' $P5018 = 'cuid_130_1361633907.987' 
    capture_lex $P5018
    $P5019 = $P5018()
  if281_end561:
    box $P5026, _lex_param_3
    set $P5025, $P5026
    goto if280_end559
  if280_else558:
    set $N5015, $I101
    set $N5016, 0
    iseq $I5012, $N5015, $N5016
    set $I5014, $I5012
    unless $I5012 goto if305_end602 
    set $N5017, $I102
    set $N5018, 1
    iseq $I5013, $N5017, $N5018
    set $I5014, $I5013
  if305_end602:
    unless $I5014 goto if304_else599 
    .const 'Sub' $P5020 = 'cuid_131_1361633907.987' 
    capture_lex $P5020
    $P5021 = $P5020()
    set $P5024, $P5021
    goto if304_end600
  if304_else599:
.annotate 'line', 271
.annotate 'line', 272
    nqp_decontainerize $P5022, _lex_param_0
    $P5023 = $P5022."fate"(_lex_param_1, _lex_param_2, _lex_param_3)
    set $P5024, $P5023
  if304_end600:
    set $P5025, $P5024
  if280_end559:
    goto lexotic_511
  lexotic_510:
    .get_results ($P5025)
  lexotic_511:
    .return ($P5025) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_126_1361633907.987") :anon :lex :outer("cuid_17_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 202
    .const 'Sub' $P5031 = 'cuid_125_1361633907.987' 
    capture_lex $P5031 
    .const 'Sub' $P5031 = 'cuid_127_1361633907.987' 
    capture_lex $P5031 
    .lex "$count", $I101 
    .lex "$st", $I102 
    .lex "$has_sep", $I103 
    .local pmc fb_tmp_55 
    .local pmc fb_tmp_56 
    .local pmc fb_tmp_57 
    set $I101, 0
    set $I102, 0
    set $I103, 0
    set $I101, 0
    find_lex $P5001, "$node"
    set fb_tmp_55, $P5001
    repr_defined $I5002, fb_tmp_55
    unless $I5002 goto if259_else518 
    set $P5002, fb_tmp_55[1]
    set $P5004, $P5002
    goto if259_end519
  if259_else518:
    null $P5003
    set $P5004, $P5003
  if259_end519:
    unless_null $P5004, vivi_260520
    nqp_get_sc_object $P5005, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5004, $P5005
  vivi_260520:
    defined $I5001, $P5004
    set $I103, $I5001
  while261_test521:
    set $N5001, $I101
    find_lex $I5004, "$max"
    set $N5002, $I5004
    islt $I5003, $N5001, $N5002
    set $I5007, $I5003
    if $I5003 goto unless262_end527 
    set $N5003, $I101
    find_lex $I5006, "$min"
    set $N5004, $I5006
    islt $I5005, $N5003, $N5004
    set $I5007, $I5005
  unless262_end527:
    set $I5019, $I5007
    unless $I5007 goto while261_done525 
  while261_redo523:
.annotate 'line', 206
    set $N5005, $I101
    find_lex $I5009, "$min"
    set $N5006, $I5009
    isge $I5008, $N5005, $N5006
    unless $I5008 goto if263_end529 
    .const 'Sub' $P5006 = 'cuid_125_1361633907.987' 
    capture_lex $P5006
    $P5007 = $P5006()
  if263_end529:
    set $I5011, $I103
    unless $I103 goto if266_end535 
    set $N5007, $I101
    set $N5008, 0
    isgt $I5010, $N5007, $N5008
    set $I5011, $I5010
  if266_end535:
    unless $I5011 goto if265_end533 
.annotate 'line', 211
.annotate 'line', 212
    find_lex $P5009, "self"
    nqp_decontainerize $P5008, $P5009
    find_lex $P5010, "$node"
    set fb_tmp_56, $P5010
    repr_defined $I5012, fb_tmp_56
    unless $I5012 goto if267_else536 
    set $P5011, fb_tmp_56[1]
    set $P5013, $P5011
    goto if267_end537
  if267_else536:
    null $P5012
    set $P5013, $P5012
  if267_end537:
    unless_null $P5013, vivi_268538
    nqp_get_sc_object $P5014, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5013, $P5014
  vivi_268538:
    find_lex $I5013, "$from"
    $P5015 = $P5008."regex_nfa"($P5013, $I5013, -1)
    set $I5014, $P5015
    store_lex "$from", $I5014
  if265_end533:
.annotate 'line', 214
    find_lex $P5017, "self"
    nqp_decontainerize $P5016, $P5017
    find_lex $P5018, "$node"
    set fb_tmp_57, $P5018
    repr_defined $I5015, fb_tmp_57
    unless $I5015 goto if269_else539 
    set $P5019, fb_tmp_57[0]
    set $P5021, $P5019
    goto if269_end540
  if269_else539:
    null $P5020
    set $P5021, $P5020
  if269_end540:
    unless_null $P5021, vivi_270541
    nqp_get_sc_object $P5022, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5021, $P5022
  vivi_270541:
    find_lex $I5016, "$from"
    $P5023 = $P5016."regex_nfa"($P5021, $I5016, -1)
    set $I5017, $P5023
    store_lex "$from", $I5017
    set $N5010, $I101
    set $N5011, 1
    add $N5009, $N5010, $N5011
    set $I5018, $N5009
    set $I101, $I5018
    set $I5019, $I101
    goto while261_test521 
  while261_done525:
.annotate 'line', 217
    find_lex $P5025, "self"
    nqp_decontainerize $P5024, $P5025
    find_lex $I5020, "$from"
    find_lex $I5021, "$to"
    find_lex $P5026, "$EDGE_EPSILON"
    $P5024."addedge"($I5020, $I5021, $P5026, 0)
    find_lex $I5023, "$max"
    set $N5012, $I5023
    set $N5013, -1
    iseq $I5022, $N5012, $N5013
    unless $I5022 goto if271_end543 
    .const 'Sub' $P5027 = 'cuid_127_1361633907.987' 
    capture_lex $P5027
    $P5028 = $P5027()
  if271_end543:
    find_lex $I5025, "$to"
    set $N5014, $I5025
    set $N5015, 0
    islt $I5024, $N5014, $N5015
    set $I5027, $I5024
    unless $I5024 goto if279_end557 
    set $N5016, $I102
    set $N5017, 0
    isgt $I5026, $N5016, $N5017
    set $I5027, $I5026
  if279_end557:
    unless $I5027 goto if278_end555 
    store_lex "$to", $I102
  if278_end555:
    find_lex $I5028, "$to"
    find_lex $P5029, "RETURN"
    $P5030 = $P5029($I5028)
    .return ($P5030) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_125_1361633907.987") :anon :lex :outer("cuid_126_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 207
    .lex "$f", $I101 
    set $I101, 0
.annotate 'line', 208
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    find_lex $I5001, "$from"
    find_lex $I5002, "$to"
    find_lex $P5003, "$EDGE_EPSILON"
    $P5004 = $P5001."addedge"($I5001, $I5002, $P5003, 0)
    set $I5003, $P5004
    set $I101, $I5003
    find_lex $I5004, "$st"
    set $I5005, $I5004
    if $I5004 goto unless264_end531 
    set $I5005, $I101
  unless264_end531:
    store_lex "$st", $I5005
    .return ($I5005) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_127_1361633907.987") :anon :lex :outer("cuid_126_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 218
    .lex "$start", $I101 
    .lex "$looper", $P101 
    .local pmc fb_tmp_58 
    .local pmc fb_tmp_59 
    set $I101, 0
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P101, $P5001
.annotate 'line', 219
    find_lex $P5003, "self"
    nqp_decontainerize $P5002, $P5003
    $P5004 = $P5002."addstate"()
    set $I5001, $P5004
    set $I101, $I5001
.annotate 'line', 220
    find_lex $P5006, "self"
    nqp_decontainerize $P5005, $P5006
    find_lex $I5002, "$from"
    find_lex $P5007, "$EDGE_EPSILON"
    $P5005."addedge"($I5002, $I101, $P5007, 0)
    store_lex "$from", $I101
.annotate 'line', 222
    find_lex $P5009, "self"
    nqp_decontainerize $P5008, $P5009
    $P5010 = $P5008."addstate"()
    set $P101, $P5010
.annotate 'line', 223
    find_lex $P5012, "self"
    nqp_decontainerize $P5011, $P5012
    find_lex $I5003, "$to"
    find_lex $P5013, "$EDGE_EPSILON"
    $P5011."addedge"($P101, $I5003, $P5013, 0)
.annotate 'line', 224
    find_lex $P5015, "self"
    nqp_decontainerize $P5014, $P5015
    find_lex $I5004, "$from"
    find_lex $P5016, "$EDGE_EPSILON"
    $P5014."addedge"($P101, $I5004, $P5016, 0)
    find_lex $I5005, "$has_sep"
    set $I5008, $I5005
    unless $I5005 goto if273_end547 
    find_lex $I5007, "$count"
    set $N5001, $I5007
    set $N5002, 0
    isgt $I5006, $N5001, $N5002
    set $I5008, $I5006
  if273_end547:
    unless $I5008 goto if272_end545 
.annotate 'line', 225
.annotate 'line', 226
    find_lex $P5018, "self"
    nqp_decontainerize $P5017, $P5018
    find_lex $P5019, "$node"
    set fb_tmp_58, $P5019
    repr_defined $I5009, fb_tmp_58
    unless $I5009 goto if274_else548 
    set $P5020, fb_tmp_58[1]
    set $P5022, $P5020
    goto if274_end549
  if274_else548:
    null $P5021
    set $P5022, $P5021
  if274_end549:
    unless_null $P5022, vivi_275550
    nqp_get_sc_object $P5023, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5022, $P5023
  vivi_275550:
    find_lex $I5010, "$from"
    $P5024 = $P5017."regex_nfa"($P5022, $I5010, -1)
    set $I5011, $P5024
    store_lex "$from", $I5011
  if272_end545:
.annotate 'line', 228
    find_lex $P5026, "self"
    nqp_decontainerize $P5025, $P5026
    find_lex $P5027, "$node"
    set fb_tmp_59, $P5027
    repr_defined $I5012, fb_tmp_59
    unless $I5012 goto if276_else551 
    set $P5028, fb_tmp_59[0]
    set $P5030, $P5028
    goto if276_end552
  if276_else551:
    null $P5029
    set $P5030, $P5029
  if276_end552:
    unless_null $P5030, vivi_277553
    nqp_get_sc_object $P5031, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5030, $P5031
  vivi_277553:
    find_lex $I5013, "$from"
    $P5032 = $P5025."regex_nfa"($P5030, $I5013, $P101)
    .return ($P5032) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_128_1361633907.987") :anon :lex :outer("cuid_17_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 235
    .lex "$start", $I101 
    .lex "$looper", $I102 
    .lex "$st", $I103 
    .local pmc fb_tmp_61 
    .local pmc fb_tmp_62 
    set $I101, 0
    set $I102, 0
    set $I103, 0
.annotate 'line', 236
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    $P5003 = $P5001."addstate"()
    set $I5001, $P5003
    set $I101, $I5001
.annotate 'line', 237
    find_lex $P5005, "self"
    nqp_decontainerize $P5004, $P5005
    find_lex $I5002, "$from"
    find_lex $P5006, "$EDGE_EPSILON"
    $P5004."addedge"($I5002, $I101, $P5006, 0)
.annotate 'line', 238
    find_lex $P5008, "self"
    nqp_decontainerize $P5007, $P5008
    $P5009 = $P5007."addstate"()
    set $I5003, $P5009
    set $I102, $I5003
.annotate 'line', 239
    find_lex $P5011, "self"
    nqp_decontainerize $P5010, $P5011
    find_lex $P5012, "$node"
    set fb_tmp_61, $P5012
    repr_defined $I5004, fb_tmp_61
    unless $I5004 goto if285_else567 
    set $P5013, fb_tmp_61[0]
    set $P5015, $P5013
    goto if285_end568
  if285_else567:
    null $P5014
    set $P5015, $P5014
  if285_end568:
    unless_null $P5015, vivi_286569
    nqp_get_sc_object $P5016, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5015, $P5016
  vivi_286569:
    $P5017 = $P5010."regex_nfa"($P5015, $I101, $I102)
    set $I5005, $P5017
    set $I103, $I5005
.annotate 'line', 240
    find_lex $P5019, "self"
    nqp_decontainerize $P5018, $P5019
    find_lex $P5020, "$node"
    set fb_tmp_62, $P5020
    repr_defined $I5006, fb_tmp_62
    unless $I5006 goto if287_else570 
    set $P5021, fb_tmp_62[1]
    set $P5023, $P5021
    goto if287_end571
  if287_else570:
    null $P5022
    set $P5023, $P5022
  if287_end571:
    unless_null $P5023, vivi_288572
    nqp_get_sc_object $P5024, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5023, $P5024
  vivi_288572:
    $P5018."regex_nfa"($P5023, $I102, $I101)
.annotate 'line', 241
    find_lex $P5026, "self"
    nqp_decontainerize $P5025, $P5026
    find_lex $I5007, "$to"
    find_lex $P5027, "$EDGE_EPSILON"
    $P5025."addedge"($I102, $I5007, $P5027, 0)
.annotate 'line', 242
    find_lex $P5029, "self"
    nqp_decontainerize $P5028, $P5029
    find_lex $I5008, "$from"
    find_lex $I5009, "$to"
    find_lex $P5030, "$EDGE_EPSILON"
    $P5031 = $P5028."addedge"($I5008, $I5009, $P5030, 0)
    set $I5010, $P5031
    set $I103, $I5010
    find_lex $I5012, "$to"
    set $N5001, $I5012
    set $N5002, 0
    islt $I5011, $N5001, $N5002
    set $I5014, $I5011
    unless $I5011 goto if290_end576 
    set $N5003, $I103
    set $N5004, 0
    isgt $I5013, $N5003, $N5004
    set $I5014, $I5013
  if290_end576:
    set $I5015, $I5014
    unless $I5014 goto if289_end574 
    store_lex "$to", $I103
    set $I5015, $I103
  if289_end574:
    .return ($I5015) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_129_1361633907.987") :anon :lex :outer("cuid_17_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 245
    .lex "$st", $I101 
    .local pmc fb_tmp_63 
    set $I101, 0
.annotate 'line', 246
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    find_lex $P5003, "$node"
    set fb_tmp_63, $P5003
    repr_defined $I5001, fb_tmp_63
    unless $I5001 goto if291_else577 
    set $P5004, fb_tmp_63[0]
    set $P5006, $P5004
    goto if291_end578
  if291_else577:
    null $P5005
    set $P5006, $P5005
  if291_end578:
    unless_null $P5006, vivi_292579
    nqp_get_sc_object $P5007, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5006, $P5007
  vivi_292579:
    find_lex $I5002, "$from"
    find_lex $I5003, "$from"
    $P5001."regex_nfa"($P5006, $I5002, $I5003)
.annotate 'line', 247
    find_lex $P5009, "self"
    nqp_decontainerize $P5008, $P5009
    find_lex $I5004, "$from"
    find_lex $I5005, "$to"
    find_lex $P5010, "$EDGE_EPSILON"
    $P5011 = $P5008."addedge"($I5004, $I5005, $P5010, 0)
    set $I5006, $P5011
    set $I101, $I5006
    find_lex $I5008, "$to"
    set $N5001, $I5008
    set $N5002, 0
    islt $I5007, $N5001, $N5002
    set $I5010, $I5007
    unless $I5007 goto if294_end583 
    set $N5003, $I101
    set $N5004, 0
    isgt $I5009, $N5003, $N5004
    set $I5010, $I5009
  if294_end583:
    set $I5011, $I5010
    unless $I5010 goto if293_end581 
    store_lex "$to", $I101
    set $I5011, $I101
  if293_end581:
    .return ($I5011) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_130_1361633907.987") :anon :lex :outer("cuid_17_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 250
    .lex "$start", $I101 
    .lex "$looper", $I102 
    .lex "$st", $I103 
    .local pmc fb_tmp_64 
    .local pmc fb_tmp_65 
    .local pmc fb_tmp_66 
    set $I101, 0
    set $I102, 0
    set $I103, 0
.annotate 'line', 251
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    $P5003 = $P5001."addstate"()
    set $I5001, $P5003
    set $I101, $I5001
.annotate 'line', 252
    find_lex $P5005, "self"
    nqp_decontainerize $P5004, $P5005
    find_lex $I5002, "$from"
    find_lex $P5006, "$EDGE_EPSILON"
    $P5004."addedge"($I5002, $I101, $P5006, 0)
.annotate 'line', 253
    find_lex $P5008, "self"
    nqp_decontainerize $P5007, $P5008
    $P5009 = $P5007."addstate"()
    set $I5003, $P5009
    set $I102, $I5003
.annotate 'line', 254
    find_lex $P5011, "self"
    nqp_decontainerize $P5010, $P5011
    find_lex $P5012, "$node"
    set fb_tmp_64, $P5012
    repr_defined $I5004, fb_tmp_64
    unless $I5004 goto if295_else584 
    set $P5013, fb_tmp_64[0]
    set $P5015, $P5013
    goto if295_end585
  if295_else584:
    null $P5014
    set $P5015, $P5014
  if295_end585:
    unless_null $P5015, vivi_296586
    nqp_get_sc_object $P5016, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5015, $P5016
  vivi_296586:
    $P5017 = $P5010."regex_nfa"($P5015, $I101, $I102)
    set $I5005, $P5017
    set $I103, $I5005
    find_lex $P5018, "$node"
    set fb_tmp_65, $P5018
    repr_defined $I5007, fb_tmp_65
    unless $I5007 goto if298_else589 
    set $P5019, fb_tmp_65[1]
    set $P5021, $P5019
    goto if298_end590
  if298_else589:
    null $P5020
    set $P5021, $P5020
  if298_end590:
    unless_null $P5021, vivi_299591
    nqp_get_sc_object $P5022, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5021, $P5022
  vivi_299591:
    defined $I5006, $P5021
    unless $I5006 goto if297_else587 
.annotate 'line', 255
.annotate 'line', 256
    find_lex $P5024, "self"
    nqp_decontainerize $P5023, $P5024
    find_lex $P5025, "$node"
    set fb_tmp_66, $P5025
    repr_defined $I5008, fb_tmp_66
    unless $I5008 goto if300_else592 
    set $P5026, fb_tmp_66[1]
    set $P5028, $P5026
    goto if300_end593
  if300_else592:
    null $P5027
    set $P5028, $P5027
  if300_end593:
    unless_null $P5028, vivi_301594
    nqp_get_sc_object $P5029, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5028, $P5029
  vivi_301594:
    $P5030 = $P5023."regex_nfa"($P5028, $I102, $I101)
    goto if297_end588
  if297_else587:
.annotate 'line', 258
.annotate 'line', 259
    find_lex $P5032, "self"
    nqp_decontainerize $P5031, $P5032
    find_lex $P5033, "$EDGE_EPSILON"
    $P5034 = $P5031."addedge"($I102, $I101, $P5033, 0)
  if297_end588:
.annotate 'line', 261
    find_lex $P5036, "self"
    nqp_decontainerize $P5035, $P5036
    find_lex $I5009, "$to"
    find_lex $P5037, "$EDGE_EPSILON"
    $P5035."addedge"($I102, $I5009, $P5037, 0)
    find_lex $I5011, "$to"
    set $N5001, $I5011
    set $N5002, 0
    islt $I5010, $N5001, $N5002
    set $I5013, $I5010
    unless $I5010 goto if303_end598 
    set $N5003, $I103
    set $N5004, 0
    isgt $I5012, $N5003, $N5004
    set $I5013, $I5012
  if303_end598:
    set $I5014, $I5013
    unless $I5013 goto if302_end596 
    store_lex "$to", $I103
    set $I5014, $I103
  if302_end596:
    .return ($I5014) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_131_1361633907.987") :anon :lex :outer("cuid_17_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 265
    .lex "$st", $I101 
    .local pmc fb_tmp_67 
    set $I101, 0
.annotate 'line', 266
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    find_lex $P5003, "$node"
    set fb_tmp_67, $P5003
    repr_defined $I5001, fb_tmp_67
    unless $I5001 goto if306_else603 
    set $P5004, fb_tmp_67[0]
    set $P5006, $P5004
    goto if306_end604
  if306_else603:
    null $P5005
    set $P5006, $P5005
  if306_end604:
    unless_null $P5006, vivi_307605
    nqp_get_sc_object $P5007, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5006, $P5007
  vivi_307605:
    find_lex $I5002, "$from"
    find_lex $I5003, "$to"
    $P5008 = $P5001."regex_nfa"($P5006, $I5002, $I5003)
    set $I5004, $P5008
    set $I101, $I5004
    find_lex $I5006, "$to"
    set $N5001, $I5006
    set $N5002, 0
    islt $I5005, $N5001, $N5002
    set $I5008, $I5005
    unless $I5005 goto if309_end609 
    set $N5003, $I101
    set $N5004, 0
    isgt $I5007, $N5003, $N5004
    set $I5008, $I5007
  if309_end609:
    unless $I5008 goto if308_end607 
    store_lex "$to", $I101
  if308_end607:
.annotate 'line', 268
    find_lex $P5010, "self"
    nqp_decontainerize $P5009, $P5010
    find_lex $I5009, "$from"
    find_lex $I5010, "$to"
    find_lex $P5011, "$EDGE_EPSILON"
    $P5012 = $P5009."addedge"($I5009, $I5010, $P5011, 0)
    set $I5011, $P5012
    set $I101, $I5011
    find_lex $I5013, "$to"
    set $N5005, $I5013
    set $N5006, 0
    islt $I5012, $N5005, $N5006
    set $I5015, $I5012
    unless $I5012 goto if311_end613 
    set $N5007, $I101
    set $N5008, 0
    isgt $I5014, $N5007, $N5008
    set $I5015, $I5014
  if311_end613:
    unless $I5015 goto if310_end611 
    store_lex "$to", $I101
  if310_end611:
    find_lex $I5016, "$to"
    .return ($I5016) 
.end
.HLL "nqp"
.namespace []
.sub "qastnode" :subid("cuid_18_1361633907.987") :anon :lex :outer("cuid_119_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 276
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param int _lex_param_2 
    .param int _lex_param_3 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$from", _lex_param_2 
    .lex "$to", _lex_param_3 
.annotate 'line', 277
    $P5001 = _lex_param_1."subtype"()
    set $S5001, $P5001
    iseq $I5001, $S5001, "zerowidth"
    set $I5003, $I5001
    if $I5001 goto unless313_end617 
    $P5002 = _lex_param_1."subtype"()
    set $S5002, $P5002
    iseq $I5002, $S5002, "declarative"
    set $I5003, $I5002
  unless313_end617:
    unless $I5003 goto if312_else614 
.annotate 'line', 278
    nqp_decontainerize $P5003, _lex_param_0
    find_lex $P5004, "$EDGE_EPSILON"
    $P5005 = $P5003."addedge"(_lex_param_2, _lex_param_3, $P5004, 0)
    set $P5008, $P5005
    goto if312_end615
  if312_else614:
.annotate 'line', 279
    nqp_decontainerize $P5006, _lex_param_0
    $P5007 = $P5006."fate"(_lex_param_1, _lex_param_2, _lex_param_3)
    set $P5008, $P5007
  if312_end615:
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "subcapture" :subid("cuid_19_1361633907.987") :anon :lex :outer("cuid_119_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 282
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param int _lex_param_2 
    .param int _lex_param_3 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$from", _lex_param_2 
    .lex "$to", _lex_param_3 
    .local pmc fb_tmp_68 
.annotate 'line', 283
    nqp_decontainerize $P5001, _lex_param_0
    set fb_tmp_68, _lex_param_1
    repr_defined $I5001, fb_tmp_68
    unless $I5001 goto if314_else618 
    set $P5002, fb_tmp_68[0]
    set $P5004, $P5002
    goto if314_end619
  if314_else618:
    null $P5003
    set $P5004, $P5003
  if314_end619:
    unless_null $P5004, vivi_315620
    nqp_get_sc_object $P5005, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5004, $P5005
  vivi_315620:
    $P5006 = $P5001."regex_nfa"($P5004, _lex_param_2, _lex_param_3)
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "save" :subid("cuid_20_1361633907.987") :anon :lex :outer("cuid_119_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 286
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("non_empty") :optional 
    .param int haz_param_11 :opt_flag 
    .lex "self", _lex_param_0 
    .lex "$non_empty", _lex_param_1 
    if haz_param_11, default627
    nqp_get_sc_object $P5012, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set _lex_param_1, $P5012
  default627:
    root_new $P101, ['parrot';'Continuation']
    set_label $P101, lexotic_621
    .lex "RETURN", $P101
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 3
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!edges"
    if $P5003 goto unless316_end624 
.annotate 'line', 287
    if _lex_param_1 goto unless317_end626 
    find_lex $P5004, "RETURN"
    $P5005 = $P5004(0)
  unless317_end626:
.annotate 'line', 289
    nqp_decontainerize $P5006, _lex_param_0
    find_lex $P5007, "$EDGE_FATE"
    $P5008 = $P5006."addedge"(1, 0, $P5007, 0, 1 :named("newedge"))
  unless316_end624:
    nqp_decontainerize $P5009, _lex_param_0
    nqp_get_sc_object $P5010, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 3
    repr_get_attr_obj $P5011, $P5009, $P5010, "$!states"
    goto lexotic_622
  lexotic_621:
    .get_results ($P5011)
  lexotic_622:
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "mergesubrule" :subid("cuid_21_1361633907.987") :anon :lex :outer("cuid_119_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 294
    .param pmc _lex_param_0 
    .param int _lex_param_1 
    .param int _lex_param_2 
    .param pmc _lex_param_3 
    .param pmc _lex_param_4 
    .param string _lex_param_5 
    .param pmc _lex_param_6 :optional 
    .param int haz_param_12 :opt_flag 
    .const 'Sub' $P5014 = 'cuid_132_1361633907.987' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_134_1361633907.987' 
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
    if haz_param_12, default655
    new $P5013, 'Hash'
    set _lex_param_6, $P5013
  default655:
    new $P5001, 'Hash'
    set $P101, $P5001
    new $P5002, 'ResizablePMCArray'
    set $P102, $P5002
    repr_clone $P5003, _lex_param_6
    set $P101, $P5003
    can $I5001, _lex_param_4, _lex_param_5
    unless $I5001 goto if318_end629 
.annotate 'line', 298
    exists $I5003, $P101[_lex_param_5]
    not $I5002, $I5003
    unless $I5002 goto if319_end631 
    .const 'Sub' $P5004 = 'cuid_132_1361633907.987' 
    capture_lex $P5004
    $P5005 = $P5004()
  if319_end631:
    isfalse $I5004, $P102
    set $I5007, $I5004
    unless $I5004 goto if323_end639 
    exists $I5006, $P101[_lex_param_5]
    not $I5005, $I5006
    set $I5007, $I5005
  if323_end639:
    box $P5009, $I5007
    set $P5008, $P5009
    unless $I5007 goto if322_end637 
    .const 'Sub' $P5006 = 'cuid_134_1361633907.987' 
    capture_lex $P5006
    $P5007 = $P5006()
    set $P5008, $P5007
  if322_end637:
  if318_end629:
    box $P5010, 1
    set $P101[_lex_param_5], $P5010
.annotate 'line', 320
    nqp_decontainerize $P5011, _lex_param_0
    $P5012 = $P5011."mergesubstates"(_lex_param_1, _lex_param_2, _lex_param_3, $P102, _lex_param_4, $P101)
    .return ($P5012) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_132_1361633907.987") :anon :lex :outer("cuid_21_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 299
    .lex "$meth", $P101 
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P101, $P5001
.annotate 'line', 300
    find_lex $P5003, "$cursor"
    get_how $P5002, $P5003
    find_lex $P5004, "$cursor"
    find_lex $S5001, "$name"
    $P5005 = $P5002."find_method"($P5004, $S5001, 1 :named("no_trace"))
    set $P101, $P5005
    can $I5001, $P101, "NFA"
    unless $I5001 goto if320_end633 
.annotate 'line', 301
    $P5006 = $P101."NFA"()
    store_lex "@substates", $P5006
  if320_end633:
    find_lex $P5007, "@substates"
    isnull $I5002, $P5007
    box $P5010, $I5002
    set $P5009, $P5010
    unless $I5002 goto if321_end635 
    new $P5008, 'ResizablePMCArray'
    store_lex "@substates", $P5008
    set $P5009, $P5008
  if321_end635:
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_134_1361633907.987") :anon :lex :outer("cuid_21_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 304
    .const 'Sub' $P5033 = 'cuid_133_1361633907.987' 
    capture_lex $P5033 
    .const 'Sub' $P5033 = 'cuid_135_1361633907.987' 
    capture_lex $P5033 
    .lex "%protorx", $P101 
    .lex "$nfa", $P102 
    .lex "$gotmatch", $I101 
    .local pmc fb_tmp_69 
    .local pmc pkg_lookup_tmp_5 
    .local pmc fb_tmp_70 
    new $P5001, 'Hash'
    set $P101, $P5001
    nqp_get_sc_object $P5002, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P102, $P5002
    set $I101, 0
.annotate 'line', 307
    find_lex $P5004, "$cursor"
    get_how $P5003, $P5004
    find_lex $P5005, "$cursor"
    .const 'Sub' $P5007 = 'cuid_133_1361633907.987' 
    capture_lex $P5007
    newclosure $P5006, $P5007
    $P5008 = $P5003."cache"($P5005, "!protoregex_table", $P5006)
    set $P101, $P5008
.annotate 'line', 308
    nqp_get_sc_object $P5010, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 0
    set pkg_lookup_tmp_5, $P5010
    get_who $P5011, pkg_lookup_tmp_5
    exists $I5002, $P5011["QRegex"]
    unless $I5002 goto if325_else642 
    get_who $P5013, pkg_lookup_tmp_5
    set $P5012, $P5013["QRegex"]
    set $P5015, $P5012
    goto if325_end643
  if325_else642:
    nqp_get_sc_object $P5014, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5015, $P5014
  if325_end643:
    get_who $P5009, $P5015
    set fb_tmp_69, $P5009
    repr_defined $I5001, fb_tmp_69
    unless $I5001 goto if324_else640 
    set $P5016, fb_tmp_69["NFA"]
    set $P5018, $P5016
    goto if324_end641
  if324_else640:
    null $P5017
    set $P5018, $P5017
  if324_end641:
    unless_null $P5018, vivi_326644
    nqp_get_sc_object $P5019, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5018, $P5019
  vivi_326644:
    $P5020 = $P5018."new"()
    set $P102, $P5020
    set $I101, 0
    find_lex $S5001, "$name"
    exists $I5003, $P101[$S5001]
    unless $I5003 goto if327_end646 
.annotate 'line', 310
    set fb_tmp_70, $P101
    repr_defined $I5004, fb_tmp_70
    unless $I5004 goto if328_else647 
    find_lex $S5002, "$name"
    set $P5024, fb_tmp_70[$S5002]
    set $P5026, $P5024
    goto if328_end648
  if328_else647:
    null $P5025
    set $P5026, $P5025
  if328_end648:
    unless_null $P5026, vivi_329649
    nqp_get_sc_object $P5027, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5026, $P5027
  vivi_329649:
    set $P5021, $P5026
    iter $P5023, $P5026
  for_next650:
    unless $P5023, for_done652
    shift $P5029, $P5023
  for_redo651:
    .const 'Sub' $P5028 = 'cuid_135_1361633907.987' 
    capture_lex $P5028
    $P5021 = $P5028($P5029)
    goto for_next650
  for_done652:
  if327_end646:
    box $P5032, $I101
    set $P5031, $P5032
    unless $I101 goto if330_end654 
.annotate 'line', 316
    $P5030 = $P102."states"()
    store_lex "@substates", $P5030
    set $P5031, $P5030
  if330_end654:
    .return ($P5031) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_133_1361633907.987") :anon :lex :outer("cuid_134_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 307

    find_lex $P5001, "$cursor"
    $P5002 = $P5001."!protoregex_table"()
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_135_1361633907.987") :anon :lex :outer("cuid_134_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 311
    .param pmc _lex_param_0 
    .lex "$rxname", _lex_param_0 
.annotate 'line', 312
    find_lex $P5001, "$nfa"
    find_lex $P5002, "$EDGE_SUBRULE"
    $P5001."addedge"(1, 0, $P5002, _lex_param_0)
    store_lex "$gotmatch", 1
    .return (1) 
.end
.HLL "nqp"
.namespace []
.sub "mergesubstates" :subid("cuid_22_1361633907.987") :anon :lex :outer("cuid_119_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 323
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .param pmc _lex_param_4 
    .param pmc _lex_param_5 
    .param pmc _lex_param_6 :optional 
    .param int haz_param_13 :opt_flag 
    .const 'Sub' $P5008 = 'cuid_137_1361633907.987' 
    capture_lex $P5008 
    .lex "self", _lex_param_0 
    .lex "$start", _lex_param_1 
    .lex "$to", _lex_param_2 
    .lex "$fate", _lex_param_3 
    .lex "@substates", _lex_param_4 
    .lex "$cursor", _lex_param_5 
    .lex "%seen", _lex_param_6 
    if haz_param_13, default697
    new $P5007, 'Hash'
    set _lex_param_6, $P5007
  default697:
    unless _lex_param_4 goto if331_else656 
    .const 'Sub' $P5001 = 'cuid_137_1361633907.987' 
    capture_lex $P5001
    $P5002 = $P5001()
    set $P5006, $P5002
    goto if331_end657
  if331_else656:
.annotate 'line', 359
.annotate 'line', 360
    nqp_decontainerize $P5003, _lex_param_0
    find_lex $P5004, "$EDGE_FATE"
    $P5005 = $P5003."addedge"(_lex_param_1, 0, $P5004, _lex_param_3)
    set $P5006, $P5005
  if331_end657:
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_137_1361633907.987") :anon :lex :outer("cuid_22_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 324
    .const 'Sub' $P5042 = 'cuid_136_1361633907.987' 
    capture_lex $P5042 
    .lex "$substart", $I101 
    .lex "$subend", $I102 
    .lex "$i", $I103 
    set $I101, 0
    set $I102, 0
    set $I103, 0
.annotate 'line', 326
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
    set_label $P5017, while332_handlers661
    push_eh $P5017
  while332_test658:
    find_lex $P5008, "@substates"
    set $P5016, $P5008
    unless $P5008 goto while332_done662 
  while332_redo660:
    find_lex $P5010, "self"
    nqp_decontainerize $P5009, $P5010
    nqp_get_sc_object $P5011, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 3
    repr_get_attr_obj $P5012, $P5009, $P5011, "$!states"
    find_lex $P5015, "@substates"
    shift $P5014, $P5015
    repr_clone $P5013, $P5014
    push $P5012, $P5013
    set $P5016, $P5012
    goto while332_test658 
  while332_handlers661:
    .get_results ($P5017)
    pop_upto_eh $P5017
    getattribute $P5017, $P5017, 'type'
    eq $P5017, .CONTROL_LOOP_NEXT, while332_test658
    eq $P5017, .CONTROL_LOOP_REDO, while332_redo660
  while332_done662:
    pop_eh 
    find_lex $P5019, "self"
    nqp_decontainerize $P5018, $P5019
    nqp_get_sc_object $P5020, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 3
    repr_get_attr_obj $P5021, $P5018, $P5020, "$!states"
    elements $I5002, $P5021
    set $I102, $I5002
    set $I103, $I101
  while333_test663:
    set $N5001, $I103
    set $N5002, $I102
    islt $I5003, $N5001, $N5002
    box $P5025, $I5003
    set $P5024, $P5025
    unless $I5003 goto while333_done667 
  while333_redo665:
    .const 'Sub' $P5022 = 'cuid_136_1361633907.987' 
    capture_lex $P5022
    $P5023 = $P5022()
    set $P5024, $P5023
    goto while333_test663 
  while333_done667:
.annotate 'line', 354
    find_lex $P5027, "self"
    nqp_decontainerize $P5026, $P5027
    find_lex $P5028, "$start"
    set $N5004, $I101
    set $N5005, 1
    add $N5003, $N5004, $N5005
    find_lex $P5029, "$EDGE_EPSILON"
    $P5026."addedge"($P5028, $N5003, $P5029, 0)
    find_lex $P5030, "$to"
    set $N5006, $P5030
    set $N5007, 0
    isgt $I5004, $N5006, $N5007
    unless $I5004 goto if349_else695 
.annotate 'line', 356
    find_lex $P5032, "self"
    nqp_decontainerize $P5031, $P5032
    find_lex $P5033, "$to"
    find_lex $P5034, "$EDGE_EPSILON"
    $P5035 = $P5031."addedge"($I101, $P5033, $P5034, 0)
    set $P5041, $P5035
    goto if349_end696
  if349_else695:
.annotate 'line', 357
    find_lex $P5037, "self"
    nqp_decontainerize $P5036, $P5037
    find_lex $P5038, "$EDGE_FATE"
    find_lex $P5039, "$fate"
    $P5040 = $P5036."addedge"($I101, 0, $P5038, $P5039)
    set $P5041, $P5040
  if349_end696:
    .return ($P5041) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_136_1361633907.987") :anon :lex :outer("cuid_137_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 340
    .lex "$substate", $P101 
    .lex "$j", $I101 
    .lex "$k", $I102 
    .local pmc fb_tmp_71 
    .local pmc fb_tmp_72 
    .local pmc fb_tmp_73 
    .local pmc fb_tmp_74 
    .local pmc fb_tmp_75 
    .local pmc fb_tmp_76 
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P101, $P5001
    set $I101, 0
    set $I102, 0
    find_lex $P5003, "self"
    nqp_decontainerize $P5002, $P5003
    nqp_get_sc_object $P5004, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 3
    repr_get_attr_obj $P5005, $P5002, $P5004, "$!states"
    set fb_tmp_71, $P5005
    repr_defined $I5001, fb_tmp_71
    unless $I5001 goto if334_else668 
    find_lex $I5002, "$i"
    set $P5006, fb_tmp_71[$I5002]
    set $P5008, $P5006
    goto if334_end669
  if334_else668:
    null $P5007
    set $P5008, $P5007
  if334_end669:
    unless_null $P5008, vivi_335670
    nqp_get_sc_object $P5009, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5008, $P5009
  vivi_335670:
    set $P101, $P5008
    set $I101, 0
    elements $I5003, $P101
    set $I102, $I5003
  while336_test671:
    set $N5001, $I101
    set $N5002, $I102
    islt $I5004, $N5001, $N5002
    set $I5020, $I5004
    unless $I5004 goto while336_done675 
  while336_redo673:
.annotate 'line', 344
    set $N5004, $I101
    set $N5005, 2
    add $N5003, $N5004, $N5005
    set $I5005, $N5003
    set fb_tmp_72, $P101
    repr_defined $I5006, fb_tmp_72
    unless $I5006 goto if337_else676 
    set $N5008, $I101
    set $N5009, 2
    add $N5007, $N5008, $N5009
    set $I5007, $N5007
    set $P5010, fb_tmp_72[$I5007]
    set $P5012, $P5010
    goto if337_end677
  if337_else676:
    null $P5011
    set $P5012, $P5011
  if337_end677:
    unless_null $P5012, vivi_338678
    nqp_get_sc_object $P5013, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5012, $P5013
  vivi_338678:
    set $N5010, $P5012
    find_lex $I5008, "$substart"
    set $N5011, $I5008
    add $N5006, $N5010, $N5011
    box $P5014, $N5006
    set $P101[$I5005], $P5014
    set fb_tmp_73, $P101
    repr_defined $I5010, fb_tmp_73
    unless $I5010 goto if340_else681 
    set $P5015, fb_tmp_73[$I101]
    set $P5017, $P5015
    goto if340_end682
  if340_else681:
    null $P5016
    set $P5017, $P5016
  if340_end682:
    unless_null $P5017, vivi_341683
    nqp_get_sc_object $P5018, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5017, $P5018
  vivi_341683:
    set $N5012, $P5017
    find_lex $P5019, "$EDGE_FATE"
    set $N5013, $P5019
    iseq $I5009, $N5012, $N5013
    unless $I5009 goto if339_end680 
    set $N5015, $I101
    set $N5016, 1
    add $N5014, $N5015, $N5016
    set $I5011, $N5014
    find_lex $P5020, "$fate"
    set $P101[$I5011], $P5020
  if339_end680:
    set fb_tmp_74, $P101
    repr_defined $I5013, fb_tmp_74
    unless $I5013 goto if343_else686 
    set $P5021, fb_tmp_74[$I101]
    set $P5023, $P5021
    goto if343_end687
  if343_else686:
    null $P5022
    set $P5023, $P5022
  if343_end687:
    unless_null $P5023, vivi_344688
    nqp_get_sc_object $P5024, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5023, $P5024
  vivi_344688:
    set $N5017, $P5023
    find_lex $P5025, "$EDGE_SUBRULE"
    set $N5018, $P5025
    iseq $I5012, $N5017, $N5018
    unless $I5012 goto if342_end685 
.annotate 'line', 348
    find_lex $P5027, "self"
    nqp_decontainerize $P5026, $P5027
    find_lex $I5014, "$i"
    set fb_tmp_75, $P101
    repr_defined $I5015, fb_tmp_75
    unless $I5015 goto if345_else689 
    set $N5020, $I101
    set $N5021, 2
    add $N5019, $N5020, $N5021
    set $I5016, $N5019
    set $P5028, fb_tmp_75[$I5016]
    set $P5030, $P5028
    goto if345_end690
  if345_else689:
    null $P5029
    set $P5030, $P5029
  if345_end690:
    unless_null $P5030, vivi_346691
    nqp_get_sc_object $P5031, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5030, $P5031
  vivi_346691:
    find_lex $P5032, "$fate"
    find_lex $P5033, "$cursor"
    set fb_tmp_76, $P101
    repr_defined $I5017, fb_tmp_76
    unless $I5017 goto if347_else692 
    set $N5023, $I101
    set $N5024, 1
    add $N5022, $N5023, $N5024
    set $I5018, $N5022
    set $P5034, fb_tmp_76[$I5018]
    set $P5036, $P5034
    goto if347_end693
  if347_else692:
    null $P5035
    set $P5036, $P5035
  if347_end693:
    unless_null $P5036, vivi_348694
    nqp_get_sc_object $P5037, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5036, $P5037
  vivi_348694:
    find_lex $P5038, "%seen"
    $P5039 = $P5026."mergesubrule"($I5014, $P5030, $P5032, $P5033, $P5036, $P5038)
  if342_end685:
    set $N5026, $I101
    set $N5027, 3
    add $N5025, $N5026, $N5027
    set $I5019, $N5025
    set $I101, $I5019
    set $I5020, $I101
    goto while336_test671 
  while336_done675:
    find_lex $I5021, "$i"
    set $N5029, $I5021
    set $N5030, 1
    add $N5028, $N5029, $N5030
    set $I5022, $N5028
    store_lex "$i", $I5022
    .return ($I5022) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_138_1361633907.987") :anon :lex :outer("cuid_119_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 365
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "run" :subid("cuid_23_1361633907.987") :anon :lex :outer("cuid_119_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 367
    .param pmc _lex_param_0 
    .param string _lex_param_1 
    .param int _lex_param_2 
    .lex "self", _lex_param_0 
    .lex "$target", _lex_param_1 
    .lex "$offset", _lex_param_2 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 3
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!nfa_object"
    repr_defined $I5001, $P5003
    if $I5001 goto unless350_end699 
.annotate 'line', 414
    nqp_disable_sc_write_barrier 
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 3
    nqp_decontainerize $P5007, _lex_param_0
    nqp_get_sc_object $P5008, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 3
    repr_get_attr_obj $P5009, $P5007, $P5008, "$!states"
    nqp_get_sc_object $P5010, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 26
    nqp_nfa_from_statelist $P5006, $P5009, $P5010
    repr_bind_attr_obj $P5004, $P5005, "$!nfa_object", $P5006
    nqp_enable_sc_write_barrier 
  unless350_end699:
    nqp_decontainerize $P5012, _lex_param_0
    nqp_get_sc_object $P5013, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 3
    repr_get_attr_obj $P5014, $P5012, $P5013, "$!nfa_object"
    nqp_nfa_run_proto $P5011, $P5014, _lex_param_1, _lex_param_2
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "run_alt" :subid("cuid_24_1361633907.987") :anon :lex :outer("cuid_119_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 423
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
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 3
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!nfa_object"
    repr_defined $I5001, $P5003
    if $I5001 goto unless351_end701 
.annotate 'line', 424
    nqp_disable_sc_write_barrier 
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 3
    nqp_decontainerize $P5007, _lex_param_0
    nqp_get_sc_object $P5008, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 3
    repr_get_attr_obj $P5009, $P5007, $P5008, "$!states"
    nqp_get_sc_object $P5010, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 26
    nqp_nfa_from_statelist $P5006, $P5009, $P5010
    repr_bind_attr_obj $P5004, $P5005, "$!nfa_object", $P5006
    nqp_enable_sc_write_barrier 
  unless351_end701:
    nqp_decontainerize $P5011, _lex_param_0
    nqp_get_sc_object $P5012, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 3
    repr_get_attr_obj $P5013, $P5011, $P5012, "$!nfa_object"
    nqp_nfa_run_alt $P5013, _lex_param_1, _lex_param_2, _lex_param_3, _lex_param_4, _lex_param_5
    .return ($P5013) 
.end
.HLL "nqp"
.namespace []
.sub "generic" :subid("cuid_25_1361633907.987") :anon :lex :outer("cuid_119_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 433
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 3
    repr_get_attr_int $I5001, $P5001, $P5002, "$!generic"
    .return ($I5001) 
.end
.HLL "nqp"
.namespace []
.sub "instantiate_generic" :subid("cuid_26_1361633907.987") :anon :lex :outer("cuid_119_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 437
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5043 = 'cuid_139_1361633907.987' 
    capture_lex $P5043 
    .const 'Sub' $P5043 = 'cuid_141_1361633907.987' 
    capture_lex $P5043 
    .lex "$copy", $P101 
    .lex "@copied_states", $P102 
    .lex "$from", $I101 
    .lex "self", _lex_param_0 
    .lex "$env", _lex_param_1 
    .local pmc fb_tmp_77 
    .local pmc pkg_lookup_tmp_6 
    .local pmc fb_tmp_78 
    .local pmc pkg_lookup_tmp_7 
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P101, $P5001
    new $P5002, 'ResizablePMCArray'
    set $P102, $P5002
    set $I101, 0
    nqp_decontainerize $P5004, _lex_param_0
    repr_instance_of $P5003, $P5004
    set $P101, $P5003
    nqp_decontainerize $P5008, _lex_param_0
    nqp_get_sc_object $P5009, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 3
    repr_get_attr_obj $P5010, $P5008, $P5009, "$!states"
    set $P5005, $P5010
    iter $P5007, $P5010
  for_next702:
    unless $P5007, for_done704
    shift $P5012, $P5007
  for_redo703:
    .const 'Sub' $P5011 = 'cuid_139_1361633907.987' 
    capture_lex $P5011
    $P5005 = $P5011($P5012)
    goto for_next702
  for_done704:
    nqp_get_sc_object $P5014, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 0
    set pkg_lookup_tmp_6, $P5014
    get_who $P5015, pkg_lookup_tmp_6
    exists $I5002, $P5015["QRegex"]
    unless $I5002 goto if353_else707 
    get_who $P5017, pkg_lookup_tmp_6
    set $P5016, $P5017["QRegex"]
    set $P5019, $P5016
    goto if353_end708
  if353_else707:
    nqp_get_sc_object $P5018, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5019, $P5018
  if353_end708:
    get_who $P5013, $P5019
    set fb_tmp_77, $P5013
    repr_defined $I5001, fb_tmp_77
    unless $I5001 goto if352_else705 
    set $P5020, fb_tmp_77["NFA"]
    set $P5022, $P5020
    goto if352_end706
  if352_else705:
    null $P5021
    set $P5022, $P5021
  if352_end706:
    unless_null $P5022, vivi_354709
    nqp_get_sc_object $P5023, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5022, $P5023
  vivi_354709:
    setattribute $P101, $P5022, "$!states", $P102
    nqp_get_sc_object $P5025, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 0
    set pkg_lookup_tmp_7, $P5025
    get_who $P5026, pkg_lookup_tmp_7
    exists $I5004, $P5026["QRegex"]
    unless $I5004 goto if356_else712 
    get_who $P5028, pkg_lookup_tmp_7
    set $P5027, $P5028["QRegex"]
    set $P5030, $P5027
    goto if356_end713
  if356_else712:
    nqp_get_sc_object $P5029, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5030, $P5029
  if356_end713:
    get_who $P5024, $P5030
    set fb_tmp_78, $P5024
    repr_defined $I5003, fb_tmp_78
    unless $I5003 goto if355_else710 
    set $P5031, fb_tmp_78["NFA"]
    set $P5033, $P5031
    goto if355_end711
  if355_else710:
    null $P5032
    set $P5033, $P5032
  if355_end711:
    unless_null $P5033, vivi_357714
    nqp_get_sc_object $P5034, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5033, $P5034
  vivi_357714:
    nqp_decontainerize $P5035, _lex_param_0
    nqp_get_sc_object $P5036, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 3
    repr_get_attr_obj $P5037, $P5035, $P5036, "$!edges"
    setattribute $P101, $P5033, "$!edges", $P5037
    set $I101, 0
    set $P5038, $P102
    iter $P5040, $P102
  for_next738:
    unless $P5040, for_done740
    shift $P5042, $P5040
  for_redo739:
    .const 'Sub' $P5041 = 'cuid_141_1361633907.987' 
    capture_lex $P5041
    $P5038 = $P5041($P5042)
    goto for_next738
  for_done740:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_139_1361633907.987") :anon :lex :outer("cuid_26_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 441
    .param pmc _lex_param_0 
    .lex "@values", _lex_param_0 
    find_lex $P5001, "@copied_states"
    repr_clone $P5002, _lex_param_0
    push $P5001, $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_141_1361633907.987") :anon :lex :outer("cuid_26_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 450
    .param pmc _lex_param_0 
    .const 'Sub' $P5006 = 'cuid_140_1361633907.987' 
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
  while358_test715:
    set $N5001, $I101
    set $N5002, $I102
    islt $I5002, $N5001, $N5002
    box $P5005, $I5002
    set $P5004, $P5005
    unless $I5002 goto while358_done719 
  while358_redo717:
    .const 'Sub' $P5002 = 'cuid_140_1361633907.987' 
    capture_lex $P5002
    $P5003 = $P5002()
    set $P5004, $P5003
    goto while358_test715 
  while358_done719:
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
.sub "" :subid("cuid_140_1361633907.987") :anon :lex :outer("cuid_141_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 454
    .lex "$act", $P101 
    .lex "$arg", $P102 
    .lex "$to", $P103 
    .local pmc fb_tmp_79 
    .local pmc fb_tmp_80 
    .local pmc fb_tmp_81 
    .local pmc fb_tmp_82 
    .local pmc pkg_lookup_tmp_8 
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P102, $P5002
    nqp_get_sc_object $P5003, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P103, $P5003
    find_lex $P5004, "@values"
    set fb_tmp_79, $P5004
    repr_defined $I5001, fb_tmp_79
    unless $I5001 goto if359_else720 
    find_lex $I5002, "$i"
    set $P5005, fb_tmp_79[$I5002]
    set $P5007, $P5005
    goto if359_end721
  if359_else720:
    null $P5006
    set $P5007, $P5006
  if359_end721:
    unless_null $P5007, vivi_360722
    nqp_get_sc_object $P5008, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5007, $P5008
  vivi_360722:
    set $P101, $P5007
    find_lex $P5009, "@values"
    set fb_tmp_80, $P5009
    repr_defined $I5003, fb_tmp_80
    unless $I5003 goto if361_else723 
    find_lex $I5004, "$i"
    set $N5002, $I5004
    set $N5003, 1
    add $N5001, $N5002, $N5003
    set $I5005, $N5001
    set $P5010, fb_tmp_80[$I5005]
    set $P5012, $P5010
    goto if361_end724
  if361_else723:
    null $P5011
    set $P5012, $P5011
  if361_end724:
    unless_null $P5012, vivi_362725
    nqp_get_sc_object $P5013, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5012, $P5013
  vivi_362725:
    set $P102, $P5012
    find_lex $P5014, "@values"
    set fb_tmp_81, $P5014
    repr_defined $I5006, fb_tmp_81
    unless $I5006 goto if363_else726 
    find_lex $I5007, "$i"
    set $N5005, $I5007
    set $N5006, 2
    add $N5004, $N5005, $N5006
    set $I5008, $N5004
    set $P5015, fb_tmp_81[$I5008]
    set $P5017, $P5015
    goto if363_end727
  if363_else726:
    null $P5016
    set $P5017, $P5016
  if363_end727:
    unless_null $P5017, vivi_364728
    nqp_get_sc_object $P5018, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5017, $P5018
  vivi_364728:
    set $P103, $P5017
    set $N5007, $P101
    find_lex $P5019, "$EDGE_GENERIC_VAR"
    set $N5008, $P5019
    iseq $I5009, $N5007, $N5008
    unless $I5009 goto if365_end730 
.annotate 'line', 458
    find_lex $P5020, "$env"
    set $S5001, $P102
    exists $I5010, $P5020[$S5001]
    unless $I5010 goto if366_else731 
.annotate 'line', 459
.annotate 'line', 460
    find_lex $P5021, "$copy"
.annotate 'line', 461
    nqp_get_sc_object $P5023, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 0
    set pkg_lookup_tmp_8, $P5023
    get_who $P5024, pkg_lookup_tmp_8
    exists $I5012, $P5024["QAST"]
    unless $I5012 goto if368_else735 
    get_who $P5026, pkg_lookup_tmp_8
    set $P5025, $P5026["QAST"]
    set $P5028, $P5025
    goto if368_end736
  if368_else735:
    nqp_get_sc_object $P5027, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5028, $P5027
  if368_end736:
    get_who $P5022, $P5028
    set fb_tmp_82, $P5022
    repr_defined $I5011, fb_tmp_82
    unless $I5011 goto if367_else733 
    set $P5029, fb_tmp_82["Regex"]
    set $P5031, $P5029
    goto if367_end734
  if367_else733:
    null $P5030
    set $P5031, $P5030
  if367_end734:
    unless_null $P5031, vivi_369737
    nqp_get_sc_object $P5032, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5031, $P5032
  vivi_369737:
    find_lex $P5034, "$env"
    set $S5002, $P102
    set $P5033, $P5034[$S5002]
    $P5035 = $P5031."new"($P5033, "literal" :named("rxtype"))
    find_lex $I5013, "$from"
    $P5021."literal"($P5035, $I5013, $P103)
    find_lex $P5036, "@values"
    find_lex $I5014, "$i"
    find_lex $P5037, "$EDGE_EPSILON"
    set $P5036[$I5014], $P5037
    find_lex $P5038, "@values"
    find_lex $I5015, "$i"
    set $N5010, $I5015
    set $N5011, 1
    add $N5009, $N5010, $N5011
    set $I5016, $N5009
    box $P5039, 0
    set $P5038[$I5016], $P5039
    find_lex $P5040, "@values"
    find_lex $I5017, "$i"
    set $N5013, $I5017
    set $N5014, 2
    add $N5012, $N5013, $N5014
    set $I5018, $N5012
    box $P5041, 0
    set $P5040[$I5018], $P5041
    set $P5048, $P5041
    goto if366_end732
  if366_else731:
.annotate 'line', 467
    find_lex $P5042, "@values"
    find_lex $I5019, "$i"
    find_lex $P5043, "$EDGE_FATE"
    set $P5042[$I5019], $P5043
    find_lex $P5044, "@values"
    find_lex $I5020, "$i"
    set $N5016, $I5020
    set $N5017, 1
    add $N5015, $N5016, $N5017
    set $I5021, $N5015
    box $P5045, 0
    set $P5044[$I5021], $P5045
    find_lex $P5046, "@values"
    find_lex $I5022, "$i"
    set $N5019, $I5022
    set $N5020, 2
    add $N5018, $N5019, $N5020
    set $I5023, $N5018
    box $P5047, 0
    set $P5046[$I5023], $P5047
    set $P5048, $P5047
  if366_end732:
  if365_end730:
    find_lex $I5024, "$i"
    set $N5022, $I5024
    set $N5023, 3
    add $N5021, $N5022, $N5023
    set $I5025, $N5021
    store_lex "$i", $I5025
    .return ($I5025) 
.end
.HLL "nqp"
.namespace []
.sub "__dump" :subid("cuid_27_1361633907.987") :anon :lex :outer("cuid_119_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 481
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .const 'Sub' $P5015 = 'cuid_142_1361633907.987' 
    capture_lex $P5015 
    .lex "$subindent", $P101 
    .lex "$st", $P102 
    .lex "self", _lex_param_0 
    .lex "$dumper", _lex_param_1 
    .lex "$label", _lex_param_2 
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P102, $P5002
.annotate 'line', 482
    $P5003 = _lex_param_1."newIndent"()
    set $P101, $P5003
.annotate 'line', 483
    "&print"("[")
    box $P5004, 0
    set $P102, $P5004
    nqp_decontainerize $P5008, _lex_param_0
    nqp_get_sc_object $P5009, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 3
    repr_get_attr_obj $P5010, $P5008, $P5009, "$!states"
    set $P5005, $P5010
    iter $P5007, $P5010
  for_next741:
    unless $P5007, for_done743
    shift $P5012, $P5007
  for_redo742:
    .const 'Sub' $P5011 = 'cuid_142_1361633907.987' 
    capture_lex $P5011
    $P5005 = $P5011($P5012)
    goto for_next741
  for_done743:
.annotate 'line', 489
    _lex_param_1."deleteIndent"()
.annotate 'line', 490
    $P5013 = _lex_param_1."indent"()
    $P5014 = "&print"("\n", $P5013, "]")
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_142_1361633907.987") :anon :lex :outer("cuid_27_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 485
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 486
    find_lex $P5001, "$subindent"
    set $S5004, $P5001
    concat $S5003, "\n", $S5004
    concat $S5002, $S5003, "'%d' => [%s]"
    new $P5002, 'ResizablePMCArray'
    find_lex $P5003, "$st"
    push $P5002, $P5003
    join $S5005, ", ", _lex_param_0
    box $P5004, $S5005
    push $P5002, $P5004
    sprintf $S5001, $S5002, $P5002
    "&print"($S5001)
    find_lex $P5005, "$st"
    set $N5002, $P5005
    set $N5003, 1
    add $N5001, $N5002, $N5003
    box $P5006, $N5001
    store_lex "$st", $P5006
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_144_1361633907.987") :anon :lex :outer("cuid_143_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 500
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .return () 
.end
.loadlib "nqp_group"
.loadlib "nqp_ops"
.loadlib "nqp_bigint_ops"
.loadlib "trans_ops"
.loadlib "io_ops"
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_79_1361633907.987") :anon :lex :outer("cuid_143_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 508
    .param pmc _lex_param_0 
    .const 'Sub' $P5064 = 'cuid_28_1361633907.987' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_29_1361633907.987' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_30_1361633907.987' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_31_1361633907.987' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_32_1361633907.987' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_33_1361633907.987' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_34_1361633907.987' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_35_1361633907.987' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_36_1361633907.987' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_37_1361633907.987' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_38_1361633907.987' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_39_1361633907.987' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_40_1361633907.987' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_41_1361633907.987' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_42_1361633907.987' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_43_1361633907.987' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_44_1361633907.987' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_45_1361633907.987' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_46_1361633907.987' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_47_1361633907.987' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_48_1361633907.987' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_49_1361633907.987' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_50_1361633907.987' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_51_1361633907.987' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_52_1361633907.987' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_53_1361633907.987' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_54_1361633907.987' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_55_1361633907.987' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_56_1361633907.987' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_57_1361633907.987' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_58_1361633907.987' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_59_1361633907.987' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_60_1361633907.987' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_61_1361633907.987' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_62_1361633907.987' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_63_1361633907.987' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_64_1361633907.987' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_65_1361633907.987' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_66_1361633907.987' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_67_1361633907.987' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_68_1361633907.987' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_69_1361633907.987' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_70_1361633907.987' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_71_1361633907.987' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_72_1361633907.987' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_73_1361633907.987' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_74_1361633907.987' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_75_1361633907.987' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_76_1361633907.987' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_77_1361633907.987' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_78_1361633907.987' 
    capture_lex $P5064 
    .lex "$?PACKAGE", $P101 
    .lex "$?ROLE", $P102 
    .lex "$NO_CAPS", $P103 
    .lex "$NO_RESTART", $P104 
    .lex "$RESTART", $P105 
    .lex "@start_result", $P106 
    .lex "$pass_mark", $P107 
    .lex "@EMPTY", $P108 
    .lex "$?CLASS", _lex_param_0 
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P103, $P5001
    nqp_get_sc_object $P5002, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P104, $P5002
    nqp_get_sc_object $P5003, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P105, $P5003
    new $P5004, 'ResizablePMCArray'
    set $P106, $P5004
    nqp_get_sc_object $P5005, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P107, $P5005
    new $P5006, 'ResizablePMCArray'
    set $P108, $P5006
    .const 'Sub' $P5007 = 'cuid_28_1361633907.987' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_29_1361633907.987' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_30_1361633907.987' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_31_1361633907.987' 
    capture_lex $P5010
    new $P5011, 'Hash'
    set $P103, $P5011
    .const 'Sub' $P5012 = 'cuid_32_1361633907.987' 
    capture_lex $P5012
    .const 'Sub' $P5013 = 'cuid_33_1361633907.987' 
    capture_lex $P5013
    box $P5014, 0
    set $P104, $P5014
    box $P5015, 1
    set $P105, $P5015
    .const 'Sub' $P5016 = 'cuid_34_1361633907.987' 
    capture_lex $P5016
    .const 'Sub' $P5017 = 'cuid_35_1361633907.987' 
    capture_lex $P5017
    .const 'Sub' $P5018 = 'cuid_36_1361633907.987' 
    capture_lex $P5018
    .const 'Sub' $P5019 = 'cuid_37_1361633907.987' 
    capture_lex $P5019
    .const 'Sub' $P5020 = 'cuid_38_1361633907.987' 
    capture_lex $P5020
    box $P5021, 1
    set $P107, $P5021
    .const 'Sub' $P5022 = 'cuid_39_1361633907.987' 
    capture_lex $P5022
    .const 'Sub' $P5023 = 'cuid_40_1361633907.987' 
    capture_lex $P5023
    .const 'Sub' $P5024 = 'cuid_41_1361633907.987' 
    capture_lex $P5024
    .const 'Sub' $P5025 = 'cuid_42_1361633907.987' 
    capture_lex $P5025
    .const 'Sub' $P5026 = 'cuid_43_1361633907.987' 
    capture_lex $P5026
    .const 'Sub' $P5027 = 'cuid_44_1361633907.987' 
    capture_lex $P5027
    .const 'Sub' $P5028 = 'cuid_45_1361633907.987' 
    capture_lex $P5028
    .const 'Sub' $P5029 = 'cuid_46_1361633907.987' 
    capture_lex $P5029
    new $P5030, 'ResizablePMCArray'
    set $P108, $P5030
    .const 'Sub' $P5031 = 'cuid_47_1361633907.987' 
    capture_lex $P5031
    .const 'Sub' $P5032 = 'cuid_48_1361633907.987' 
    capture_lex $P5032
    .const 'Sub' $P5033 = 'cuid_49_1361633907.987' 
    capture_lex $P5033
    .const 'Sub' $P5034 = 'cuid_50_1361633907.987' 
    capture_lex $P5034
    .const 'Sub' $P5035 = 'cuid_51_1361633907.987' 
    capture_lex $P5035
    .const 'Sub' $P5036 = 'cuid_52_1361633907.987' 
    capture_lex $P5036
    .const 'Sub' $P5037 = 'cuid_53_1361633907.987' 
    capture_lex $P5037
    .const 'Sub' $P5038 = 'cuid_54_1361633907.987' 
    capture_lex $P5038
    .const 'Sub' $P5039 = 'cuid_55_1361633907.987' 
    capture_lex $P5039
    .const 'Sub' $P5040 = 'cuid_56_1361633907.987' 
    capture_lex $P5040
    .const 'Sub' $P5041 = 'cuid_57_1361633907.987' 
    capture_lex $P5041
    .const 'Sub' $P5042 = 'cuid_58_1361633907.987' 
    capture_lex $P5042
    .const 'Sub' $P5043 = 'cuid_59_1361633907.987' 
    capture_lex $P5043
    .const 'Sub' $P5044 = 'cuid_60_1361633907.987' 
    capture_lex $P5044
    .const 'Sub' $P5045 = 'cuid_61_1361633907.987' 
    capture_lex $P5045
    .const 'Sub' $P5046 = 'cuid_62_1361633907.987' 
    capture_lex $P5046
    .const 'Sub' $P5047 = 'cuid_63_1361633907.987' 
    capture_lex $P5047
    .const 'Sub' $P5048 = 'cuid_64_1361633907.987' 
    capture_lex $P5048
    .const 'Sub' $P5049 = 'cuid_65_1361633907.987' 
    capture_lex $P5049
    .const 'Sub' $P5050 = 'cuid_66_1361633907.987' 
    capture_lex $P5050
    .const 'Sub' $P5051 = 'cuid_67_1361633907.987' 
    capture_lex $P5051
    .const 'Sub' $P5052 = 'cuid_68_1361633907.987' 
    capture_lex $P5052
    .const 'Sub' $P5053 = 'cuid_69_1361633907.987' 
    capture_lex $P5053
    .const 'Sub' $P5054 = 'cuid_70_1361633907.987' 
    capture_lex $P5054
    .const 'Sub' $P5055 = 'cuid_71_1361633907.987' 
    capture_lex $P5055
    .const 'Sub' $P5056 = 'cuid_72_1361633907.987' 
    capture_lex $P5056
    .const 'Sub' $P5057 = 'cuid_73_1361633907.987' 
    capture_lex $P5057
    .const 'Sub' $P5058 = 'cuid_74_1361633907.987' 
    capture_lex $P5058
    .const 'Sub' $P5059 = 'cuid_75_1361633907.987' 
    capture_lex $P5059
    .const 'Sub' $P5060 = 'cuid_76_1361633907.987' 
    capture_lex $P5060
    .const 'Sub' $P5061 = 'cuid_77_1361633907.987' 
    capture_lex $P5061
    .const 'Sub' $P5062 = 'cuid_78_1361633907.987' 
    capture_lex $P5062
    getinterp $P5063
    set $P5063, $P5063['lexpad']
    .return ($P5063) 
.end
.HLL "nqp"
.namespace []
.sub "orig" :subid("cuid_28_1361633907.987") :anon :lex :outer("cuid_79_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 519
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5002, _lex_param_0
    find_lex $P5003, "$?CLASS"
    repr_get_attr_obj $P5004, $P5002, $P5003, "$!shared"
    nqp_get_sc_object $P5005, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 32
    getattribute $P5001, $P5004, $P5005, "$!orig"
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "target" :subid("cuid_29_1361633907.987") :anon :lex :outer("cuid_79_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 520
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    find_lex $P5002, "$?CLASS"
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!shared"
    nqp_get_sc_object $P5004, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 32
    repr_get_attr_str $S5001, $P5003, $P5004, "$!target"
    .return ($S5001) 
.end
.HLL "nqp"
.namespace []
.sub "from" :subid("cuid_30_1361633907.987") :anon :lex :outer("cuid_79_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 521
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    find_lex $P5002, "$?CLASS"
    repr_get_attr_int $I5001, $P5001, $P5002, "$!from"
    .return ($I5001) 
.end
.HLL "nqp"
.namespace []
.sub "pos" :subid("cuid_31_1361633907.987") :anon :lex :outer("cuid_79_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 522
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    find_lex $P5002, "$?CLASS"
    repr_get_attr_int $I5001, $P5001, $P5002, "$!pos"
    .return ($I5001) 
.end
.HLL "nqp"
.namespace []
.sub "CAPHASH" :subid("cuid_32_1361633907.987") :anon :lex :outer("cuid_79_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 525
    .param pmc _lex_param_0 
    .const 'Sub' $P5069 = 'cuid_97_1361633907.987' 
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
    .local pmc fb_tmp_83 
    .local pmc fb_tmp_84 
    .local pmc tmp_5 
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P101, $P5001
    new $P5002, 'Hash'
    set $P102, $P5002
    nqp_get_sc_object $P5003, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P103, $P5003
    set $S101, ""
    nqp_get_sc_object $P5004, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P104, $P5004
    set $I101, 0
    set $I102, 0
    nqp_get_sc_object $P5005, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P105, $P5005
    nqp_get_sc_object $P5006, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P106, $P5006
    nqp_get_sc_object $P5007, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
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
    unless $I5001 goto if371_end747 
    nqp_decontainerize $P5013, _lex_param_0
    find_lex $P5014, "$?CLASS"
    repr_get_attr_obj $P5015, $P5013, $P5014, "$!regexsub"
    defined $I5003, $P5015
    set $I5004, $I5003
  if371_end747:
    unless $I5004 goto if370_end745 
.annotate 'line', 537
    nqp_decontainerize $P5016, _lex_param_0
    find_lex $P5017, "$?CLASS"
    repr_get_attr_obj $P5018, $P5016, $P5017, "$!regexsub"
    can $I5005, $P5018, "CAPS"
    unless $I5005 goto if372_else748 
.annotate 'line', 538
    nqp_decontainerize $P5019, _lex_param_0
    find_lex $P5020, "$?CLASS"
    repr_get_attr_obj $P5021, $P5019, $P5020, "$!regexsub"
    $P5022 = $P5021."CAPS"()
    set $P5024, $P5022
    goto if372_end749
  if372_else748:
    null $P5023
    set $P5024, $P5023
  if372_end749:
    set $P102, $P5024
    isnull $I5007, $P102
    not $I5006, $I5007
    box $P5026, $I5006
    set $P5025, $P5026
    unless $I5006 goto if374_end753 
    set $P5025, $P102
  if374_end753:
    set $P5035, $P5025
    unless $P5025 goto if373_end751 
.annotate 'line', 539
    iter $P5027, $P102
    set $P103, $P5027
  while375_test754:
    set $P5034, $P103
    unless $P103 goto while375_done758 
  while375_redo756:
.annotate 'line', 541
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
    unless $I5008 goto if376_end760 
    new $P5031, 'ResizablePMCArray'
    set $P101[$S101], $P5031
    set $P5032, $P5031
  if376_end760:
    set $P5034, $P5032
    goto while375_test754 
  while375_done758:
    set $P5035, $P5034
  if373_end751:
  if370_end745:
    nqp_decontainerize $P5036, _lex_param_0
    find_lex $P5037, "$?CLASS"
    repr_get_attr_obj $P5038, $P5036, $P5037, "$!cstack"
    isnull $I5010, $P5038
    not $I5009, $I5010
    box $P5043, $I5009
    set $P5042, $P5043
    unless $I5009 goto if378_end764 
    nqp_decontainerize $P5039, _lex_param_0
    find_lex $P5040, "$?CLASS"
    repr_get_attr_obj $P5041, $P5039, $P5040, "$!cstack"
    set $P5042, $P5041
  if378_end764:
    unless $P5042 goto if377_end762 
.annotate 'line', 547
    nqp_decontainerize $P5044, _lex_param_0
    find_lex $P5045, "$?CLASS"
    repr_get_attr_obj $P5046, $P5044, $P5045, "$!cstack"
    set $P104, $P5046
    elements $I5011, $P104
    set $I102, $I5011
  while379_test765:
    set $N5003, $I101
    set $N5004, $I102
    islt $I5012, $N5003, $N5004
    box $P5068, $I5012
    set $P5067, $P5068
    unless $I5012 goto while379_done769 
  while379_redo767:
.annotate 'line', 550
    set $P5047, $P104[$I101]
    set $P105, $P5047
.annotate 'line', 552
    $P5048 = $P105."MATCH"()
    set $P106, $P5048
    find_lex $P5050, "$?CLASS"
    getattribute $P5049, $P105, $P5050, "$!name"
    set $P107, $P5049
    isnull $I5014, $P107
    not $I5013, $I5014
    set $I5016, $I5013
    unless $I5013 goto if381_end773 
    defined $I5015, $P107
    set $I5016, $I5015
  if381_end773:
    unless $I5016 goto if380_end771 
.annotate 'line', 554
    set $S5002, $P107
    index $I5018, $S5002, "=", 0
    set $N5005, $I5018
    set $N5006, 0
    islt $I5017, $N5005, $N5006
    unless $I5017 goto if382_else774 
.annotate 'line', 555
    set fb_tmp_83, $P102
    repr_defined $I5020, fb_tmp_83
    unless $I5020 goto if384_else778 
    set $S5003, $P107
    set $P5051, fb_tmp_83[$S5003]
    set $P5053, $P5051
    goto if384_end779
  if384_else778:
    null $P5052
    set $P5053, $P5052
  if384_end779:
    unless_null $P5053, vivi_385780
    nqp_get_sc_object $P5054, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5053, $P5054
  vivi_385780:
    set $N5007, $P5053
    set $N5008, 2
    isge $I5019, $N5007, $N5008
    unless $I5019 goto if383_else776 
    set fb_tmp_84, $P101
    repr_defined $I5021, fb_tmp_84
    unless $I5021 goto if386_else781 
    set $S5004, $P107
    set $P5055, fb_tmp_84[$S5004]
    set $P5057, $P5055
    goto if386_end782
  if386_else781:
    null $P5056
    set $P5057, $P5056
  if386_end782:
    unless_null $P5057, vivi_387783
    nqp_get_sc_object $P5058, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5057, $P5058
  vivi_387783:
    push $P5057, $P106
    set $P5059, $P5057
    goto if383_end777
  if383_else776:
    set $S5005, $P107
    set $P101[$S5005], $P106
    set $P5059, $P106
  if383_end777:
    set $P5066, $P5059
    goto if382_end775
  if382_else774:
.annotate 'line', 560
    set $S5006, $P107
    split $P5063, "=", $S5006
    set $P5060, $P5063
    iter $P5062, $P5063
  for_next792:
    unless $P5062, for_done794
    shift $P5065, $P5062
  for_redo793:
    .const 'Sub' $P5064 = 'cuid_97_1361633907.987' 
    capture_lex $P5064
    $P5060 = $P5064($P5065)
    goto for_next792
  for_done794:
    set $P5066, $P5060
  if382_end775:
  if380_end771:
    box $P5067, $I101
    set tmp_5, $P5067
    set $N5010, tmp_5
    set $N5011, 1
    add $N5009, $N5010, $N5011
    set $I5022, $N5009
    set $I101, $I5022
    set $P5067, tmp_5
    goto while379_test765 
  while379_done769:
  if377_end762:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_97_1361633907.987") :anon :lex :outer("cuid_32_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 561
    .param pmc _lex_param_0 
    .lex "$name", _lex_param_0 
    .local pmc fb_tmp_85 
    .local pmc fb_tmp_86 
    find_lex $P5001, "%caplist"
    set fb_tmp_85, $P5001
    repr_defined $I5002, fb_tmp_85
    unless $I5002 goto if389_else786 
    set $S5001, _lex_param_0
    set $P5002, fb_tmp_85[$S5001]
    set $P5004, $P5002
    goto if389_end787
  if389_else786:
    null $P5003
    set $P5004, $P5003
  if389_end787:
    unless_null $P5004, vivi_390788
    nqp_get_sc_object $P5005, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5004, $P5005
  vivi_390788:
    set $N5001, $P5004
    set $N5002, 2
    isge $I5001, $N5001, $N5002
    unless $I5001 goto if388_else784 
    find_lex $P5006, "$caps"
    set fb_tmp_86, $P5006
    repr_defined $I5003, fb_tmp_86
    unless $I5003 goto if391_else789 
    set $S5002, _lex_param_0
    set $P5007, fb_tmp_86[$S5002]
    set $P5009, $P5007
    goto if391_end790
  if391_else789:
    null $P5008
    set $P5009, $P5008
  if391_end790:
    unless_null $P5009, vivi_392791
    nqp_get_sc_object $P5010, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5009, $P5010
  vivi_392791:
    find_lex $P5011, "$submatch"
    push $P5009, $P5011
    set $P5014, $P5009
    goto if388_end785
  if388_else784:
    find_lex $P5012, "$caps"
    set $S5003, _lex_param_0
    find_lex $P5013, "$submatch"
    set $P5012[$S5003], $P5013
    set $P5014, $P5013
  if388_end785:
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "!cursor_init" :subid("cuid_33_1361633907.987") :anon :lex :outer("cuid_79_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 574
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
    if haz_param_14, default799
    box $P5018, 0
    set _lex_param_2, $P5018
  default799:
    if haz_param_15, default800
    nqp_get_sc_object $P5019, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set _lex_param_3, $P5019
  default800:
    if haz_param_16, default801
    nqp_get_sc_object $P5020, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set _lex_param_4, $P5020
  default801:
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P101, $P5001
.annotate 'line', 575
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."CREATE"()
    set $P101, $P5003
    if _lex_param_4 goto unless393_end796 
.annotate 'line', 576
    nqp_get_sc_object $P5005, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 32
    repr_instance_of $P5004, $P5005
    set _lex_param_4, $P5004
    nqp_get_sc_object $P5006, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 32
    setattribute _lex_param_4, $P5006, "$!orig", _lex_param_1
    nqp_get_sc_object $P5007, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 32
    set $S5002, _lex_param_1
    find_encoding $I5001, "ucs4"
    trans_encoding $S5001, $S5002, $I5001
    repr_bind_attr_str _lex_param_4, $P5007, "$!target", $S5001
    nqp_get_sc_object $P5008, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 32
    repr_bind_attr_int _lex_param_4, $P5008, "$!highwater", 0
    nqp_get_sc_object $P5009, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 32
    new $P5010, 'ResizablePMCArray'
    setattribute _lex_param_4, $P5009, "@!highexpect", $P5010
    nqp_get_sc_object $P5011, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 32
    new $P5012, 'Hash'
    setattribute _lex_param_4, $P5011, "%!marks", $P5012
  unless393_end796:
    find_lex $P5013, "$?CLASS"
    setattribute $P101, $P5013, "$!shared", _lex_param_4
    defined $I5002, _lex_param_3
    unless $I5002 goto if394_else797 
.annotate 'line', 586
    find_lex $P5014, "$?CLASS"
    repr_bind_attr_int $P101, $P5014, "$!from", -1
    find_lex $P5015, "$?CLASS"
    set $I5003, _lex_param_3
    repr_bind_attr_int $P101, $P5015, "$!pos", $I5003
    goto if394_end798
  if394_else797:
.annotate 'line', 590
    find_lex $P5016, "$?CLASS"
    set $I5004, _lex_param_2
    repr_bind_attr_int $P101, $P5016, "$!from", $I5004
    find_lex $P5017, "$?CLASS"
    set $I5005, _lex_param_2
    repr_bind_attr_int $P101, $P5017, "$!pos", $I5005
  if394_end798:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "!cursor_start_all" :subid("cuid_34_1361633907.987") :anon :lex :outer("cuid_79_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 602
    .param pmc _lex_param_0 
    .lex "$new", $P101 
    .lex "$sub", $P102 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
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
    unless_null $P5011, vivi_395802
    set $P5011, $P102
  vivi_395802:
    setattribute $P101, $P5010, "$!regexsub", $P5011
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_obj $P5014, $P5012, $P5013, "$!restart"
    defined $I5001, $P5014
    unless $I5001 goto if396_else803 
.annotate 'line', 607
    find_lex $P5015, "$?CLASS"
    nqp_decontainerize $P5016, _lex_param_0
    find_lex $P5017, "$?CLASS"
    repr_get_attr_int $I5002, $P5016, $P5017, "$!pos"
    repr_bind_attr_int $P101, $P5015, "$!pos", $I5002
    nqp_decontainerize $P5018, _lex_param_0
    find_lex $P5019, "$?CLASS"
    repr_get_attr_obj $P5020, $P5018, $P5019, "$!cstack"
    unless $P5020 goto if397_end806 
    find_lex $P5021, "$?CLASS"
    nqp_decontainerize $P5023, _lex_param_0
    find_lex $P5024, "$?CLASS"
    repr_get_attr_obj $P5025, $P5023, $P5024, "$!cstack"
    repr_clone $P5022, $P5025
    setattribute $P101, $P5021, "$!cstack", $P5022
  if397_end806:
    find_lex $P5026, "@start_result"
    set $P5026[0], $P101
    find_lex $P5027, "@start_result"
    nqp_decontainerize $P5028, _lex_param_0
    find_lex $P5029, "$?CLASS"
    repr_get_attr_obj $P5030, $P5028, $P5029, "$!shared"
    nqp_get_sc_object $P5031, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 32
    repr_get_attr_str $S5001, $P5030, $P5031, "$!target"
    box $P5032, $S5001
    set $P5027[1], $P5032
    find_lex $P5033, "@start_result"
    find_lex $P5034, "$?CLASS"
    nqp_decontainerize $P5035, _lex_param_0
    find_lex $P5036, "$?CLASS"
    repr_get_attr_int $I5003, $P5035, $P5036, "$!from"
    repr_bind_attr_int $P101, $P5034, "$!from", $I5003
    box $P5037, $I5003
    set $P5033[2], $P5037
    find_lex $P5038, "@start_result"
    find_lex $P5039, "$?CLASS"
    set $P5038[3], $P5039
    find_lex $P5040, "@start_result"
    find_lex $P5041, "$?CLASS"
    nqp_decontainerize $P5043, _lex_param_0
    find_lex $P5044, "$?CLASS"
    repr_get_attr_obj $P5045, $P5043, $P5044, "$!bstack"
    repr_clone $P5042, $P5045
    setattribute $P101, $P5041, "$!bstack", $P5042
    set $P5040[4], $P5042
    find_lex $P5046, "@start_result"
    find_lex $P5047, "$RESTART"
    set $P5046[5], $P5047
    find_lex $P5048, "@start_result"
    set $P5070, $P5048
    goto if396_end804
  if396_else803:
.annotate 'line', 618
    find_lex $P5049, "$?CLASS"
    repr_bind_attr_int $P101, $P5049, "$!pos", -3
    find_lex $P5050, "@start_result"
    set $P5050[0], $P101
    find_lex $P5051, "@start_result"
    nqp_decontainerize $P5052, _lex_param_0
    find_lex $P5053, "$?CLASS"
    repr_get_attr_obj $P5054, $P5052, $P5053, "$!shared"
    nqp_get_sc_object $P5055, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 32
    repr_get_attr_str $S5002, $P5054, $P5055, "$!target"
    box $P5056, $S5002
    set $P5051[1], $P5056
    find_lex $P5057, "@start_result"
    find_lex $P5058, "$?CLASS"
    nqp_decontainerize $P5059, _lex_param_0
    find_lex $P5060, "$?CLASS"
    repr_get_attr_int $I5004, $P5059, $P5060, "$!pos"
    repr_bind_attr_int $P101, $P5058, "$!from", $I5004
    box $P5061, $I5004
    set $P5057[2], $P5061
    find_lex $P5062, "@start_result"
    find_lex $P5063, "$?CLASS"
    set $P5062[3], $P5063
    find_lex $P5064, "@start_result"
    find_lex $P5065, "$?CLASS"
    new $P5066, 'ResizableIntegerArray'
    setattribute $P101, $P5065, "$!bstack", $P5066
    set $P5064[4], $P5066
    find_lex $P5067, "@start_result"
    find_lex $P5068, "$NO_RESTART"
    set $P5067[5], $P5068
    find_lex $P5069, "@start_result"
    set $P5070, $P5069
  if396_end804:
    .return ($P5070) 
.end
.HLL "nqp"
.namespace []
.sub "!cursor_start_cur" :subid("cuid_35_1361633907.987") :anon :lex :outer("cuid_79_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 631
    .param pmc _lex_param_0 
    .lex "$new", $P101 
    .lex "$sub", $P102 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
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
    unless_null $P5011, vivi_398807
    set $P5011, $P102
  vivi_398807:
    setattribute $P101, $P5010, "$!regexsub", $P5011
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_obj $P5014, $P5012, $P5013, "$!restart"
    defined $I5001, $P5014
    unless $I5001 goto if399_end809 
.annotate 'line', 636
    box $P5015, "!cursor_start_cur cannot restart a cursor"
    die $P5015
  if399_end809:
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
.sub "!cursor_start_subcapture" :subid("cuid_36_1361633907.987") :anon :lex :outer("cuid_79_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 645
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$new", $P101 
    .lex "self", _lex_param_0 
    .lex "$from", _lex_param_1 
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
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
.sub "!cursor_capture" :subid("cuid_37_1361633907.987") :anon :lex :outer("cuid_79_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 653
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
    if $I5001 goto unless400_end811 
    nqp_decontainerize $P5007, _lex_param_0
    find_lex $P5008, "$?CLASS"
    new $P5009, 'ResizablePMCArray'
    repr_bind_attr_obj $P5007, $P5008, "$!cstack", $P5009
  unless400_end811:
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
.sub "!cursor_push_cstack" :subid("cuid_38_1361633907.987") :anon :lex :outer("cuid_79_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 665
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$capture", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    find_lex $P5002, "$?CLASS"
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!cstack"
    defined $I5001, $P5003
    if $I5001 goto unless401_end813 
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    new $P5006, 'ResizablePMCArray'
    repr_bind_attr_obj $P5004, $P5005, "$!cstack", $P5006
  unless401_end813:
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
.sub "!cursor_pass" :subid("cuid_39_1361633907.987") :anon :lex :outer("cuid_79_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 672
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
    if haz_param_17, default820
    nqp_get_sc_object $P5017, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set _lex_param_2, $P5017
  default820:
    if haz_param_18, default821
    nqp_get_sc_object $P5018, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set _lex_param_3, $P5018
  default821:
    nqp_decontainerize $P5001, _lex_param_0
    find_lex $P5002, "$?CLASS"
    find_lex $P5003, "$pass_mark"
    repr_bind_attr_obj $P5001, $P5002, "$!match", $P5003
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_bind_attr_int $P5004, $P5005, "$!pos", _lex_param_1
    unless _lex_param_3 goto if402_end815 
    nqp_decontainerize $P5006, _lex_param_0
    find_lex $P5007, "$?CLASS"
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_obj $P5010, $P5008, $P5009, "$!regexsub"
    repr_bind_attr_obj $P5006, $P5007, "$!restart", $P5010
  if402_end815:
    if _lex_param_3 goto unless403_end817 
    nqp_decontainerize $P5011, _lex_param_0
    find_lex $P5012, "$?CLASS"
    null $P5013
    repr_bind_attr_obj $P5011, $P5012, "$!bstack", $P5013
  unless403_end817:
    set $P5016, _lex_param_2
    unless _lex_param_2 goto if404_end819 
.annotate 'line', 679
    nqp_decontainerize $P5014, _lex_param_0
    $P5015 = $P5014."!reduce"(_lex_param_2)
    set $P5016, $P5015
  if404_end819:
    .return ($P5016) 
.end
.HLL "nqp"
.namespace []
.sub "!cursor_fail" :subid("cuid_40_1361633907.987") :anon :lex :outer("cuid_79_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 682
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
.sub "!cursor_pos" :subid("cuid_41_1361633907.987") :anon :lex :outer("cuid_79_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 688
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
.sub "!cursor_next" :subid("cuid_42_1361633907.987") :anon :lex :outer("cuid_79_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 692
    .param pmc _lex_param_0 
    .const 'Sub' $P5012 = 'cuid_98_1361633907.987' 
    capture_lex $P5012 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    find_lex $P5002, "$?CLASS"
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!restart"
    defined $I5001, $P5003
    unless $I5001 goto if405_else822 
.annotate 'line', 693
.annotate 'line', 694
    nqp_decontainerize $P5007, _lex_param_0
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!restart"
    $P5008 = $P5006($P5007)
    set $P5011, $P5008
    goto if405_end823
  if405_else822:
    .const 'Sub' $P5009 = 'cuid_98_1361633907.987' 
    capture_lex $P5009
    $P5010 = $P5009()
    set $P5011, $P5010
  if405_end823:
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_98_1361633907.987") :anon :lex :outer("cuid_42_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 696
    .lex "$cur", $P101 
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P101, $P5001
.annotate 'line', 697
    find_lex $P5003, "self"
    nqp_decontainerize $P5002, $P5003
    $P5004 = $P5002."!cursor_start_cur"()
    set $P101, $P5004
.annotate 'line', 698
    $P101."!cursor_fail"()
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "!cursor_more" :subid("cuid_43_1361633907.987") :anon :lex :outer("cuid_79_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 703
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy :named 
    .lex "$new", $P101 
    .lex "self", _lex_param_0 
    .lex "%opts", _lex_param_1 
    .local pmc fb_tmp_87 
    .local pmc fb_tmp_88 
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P101, $P5001
    root_new $P102, ['parrot';'Continuation']
    set_label $P102, lexotic_824
    .lex "RETURN", $P102
    set fb_tmp_87, _lex_param_1
    repr_defined $I5001, fb_tmp_87
    unless $I5001 goto if407_else828 
    set $P5002, fb_tmp_87["ex"]
    set $P5004, $P5002
    goto if407_end829
  if407_else828:
    null $P5003
    set $P5004, $P5003
  if407_end829:
    unless_null $P5004, vivi_408830
    nqp_get_sc_object $P5005, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5004, $P5005
  vivi_408830:
    unless $P5004 goto if406_end827 
.annotate 'line', 704
    nqp_decontainerize $P5007, _lex_param_0
    $P5008 = $P5007."!cursor_next"()
    find_lex $P5006, "RETURN"
    $P5009 = $P5006($P5008)
  if406_end827:
.annotate 'line', 705
    nqp_decontainerize $P5010, _lex_param_0
    $P5011 = $P5010."CREATE"()
    set $P101, $P5011
    find_lex $P5012, "$?CLASS"
    nqp_decontainerize $P5013, _lex_param_0
    find_lex $P5014, "$?CLASS"
    repr_get_attr_obj $P5015, $P5013, $P5014, "$!shared"
    setattribute $P101, $P5012, "$!shared", $P5015
    find_lex $P5016, "$?CLASS"
    repr_bind_attr_int $P101, $P5016, "$!from", -1
    find_lex $P5017, "$?CLASS"
    set fb_tmp_88, _lex_param_1
    repr_defined $I5002, fb_tmp_88
    unless $I5002 goto if411_else835 
    set $P5018, fb_tmp_88["ov"]
    set $P5020, $P5018
    goto if411_end836
  if411_else835:
    null $P5019
    set $P5020, $P5019
  if411_end836:
    unless_null $P5020, vivi_412837
    nqp_get_sc_object $P5021, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5020, $P5021
  vivi_412837:
    set $P5026, $P5020
    if $P5020 goto unless410_end834 
    nqp_decontainerize $P5022, _lex_param_0
    find_lex $P5023, "$?CLASS"
    repr_get_attr_int $I5004, $P5022, $P5023, "$!from"
    set $N5001, $I5004
    nqp_decontainerize $P5024, _lex_param_0
    find_lex $P5025, "$?CLASS"
    repr_get_attr_int $I5005, $P5024, $P5025, "$!pos"
    set $N5002, $I5005
    isge $I5003, $N5001, $N5002
    box $P5027, $I5003
    set $P5026, $P5027
  unless410_end834:
    unless $P5026 goto if409_else831 
    nqp_decontainerize $P5028, _lex_param_0
    find_lex $P5029, "$?CLASS"
    repr_get_attr_int $I5006, $P5028, $P5029, "$!from"
    set $N5004, $I5006
    set $N5005, 1
    add $N5003, $N5004, $N5005
    box $P5033, $N5003
    set $P5032, $P5033
    goto if409_end832
  if409_else831:
    nqp_decontainerize $P5030, _lex_param_0
    find_lex $P5031, "$?CLASS"
    repr_get_attr_int $I5007, $P5030, $P5031, "$!pos"
    box $P5034, $I5007
    set $P5032, $P5034
  if409_end832:
    set $I5008, $P5032
    repr_bind_attr_int $P101, $P5017, "$!pos", $I5008
.annotate 'line', 710
    nqp_decontainerize $P5035, _lex_param_0
    find_lex $P5036, "$?CLASS"
    repr_get_attr_obj $P5037, $P5035, $P5036, "$!regexsub"
    $P5038 = $P5037($P101)
    goto lexotic_825
  lexotic_824:
    .get_results ($P5038)
  lexotic_825:
    .return ($P5038) 
.end
.HLL "nqp"
.namespace []
.sub "!reduce" :subid("cuid_44_1361633907.987") :anon :lex :outer("cuid_79_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 713
    .param pmc _lex_param_0 
    .param string _lex_param_1 
    .lex "$actions", $P101 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P101, $P5001
    find_dynamic_lex $P5002, "$*ACTIONS"
    set $P101, $P5002
    isnull $I5002, $P101
    not $I5001, $I5002
    set $I5004, $I5001
    unless $I5001 goto if414_end841 
    can $I5003, $P101, _lex_param_1
    set $I5004, $I5003
  if414_end841:
    box $P5008, $I5004
    set $P5007, $P5008
    unless $I5004 goto if413_end839 
.annotate 'line', 715
    nqp_decontainerize $P5004, _lex_param_0
    $P5005 = $P5004."MATCH"()
    find_method $P5003, $P101, _lex_param_1
    $P5006 = $P5003($P101, $P5005)
    set $P5007, $P5006
  if413_end839:
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "!reduce_with_match" :subid("cuid_45_1361633907.987") :anon :lex :outer("cuid_79_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 719
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .lex "$actions", $P101 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    .lex "$key", _lex_param_2 
    .lex "$match", _lex_param_3 
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P101, $P5001
    find_dynamic_lex $P5002, "$*ACTIONS"
    set $P101, $P5002
    isnull $I5002, $P101
    not $I5001, $I5002
    set $I5004, $I5001
    unless $I5001 goto if416_end845 
    set $S5001, _lex_param_1
    can $I5003, $P101, $S5001
    set $I5004, $I5003
  if416_end845:
    box $P5006, $I5004
    set $P5005, $P5006
    unless $I5004 goto if415_end843 
.annotate 'line', 721
    set $S5002, _lex_param_1
    find_method $P5003, $P101, $S5002
    $P5004 = $P5003($P101, _lex_param_3, _lex_param_2)
    set $P5005, $P5004
  if415_end843:
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "!shared" :subid("cuid_46_1361633907.987") :anon :lex :outer("cuid_79_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 725
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    find_lex $P5002, "$?CLASS"
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!shared"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "!protoregex" :subid("cuid_47_1361633907.987") :anon :lex :outer("cuid_79_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 728
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5042 = 'cuid_99_1361633907.987' 
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
    .local pmc fb_tmp_89 
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P102, $P5002
    new $P5003, 'ResizablePMCArray'
    set $P103, $P5003
    set $I101, 0
    new $P5004, 'ResizablePMCArray'
    set $P104, $P5004
    nqp_get_sc_object $P5005, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P105, $P5005
    nqp_get_sc_object $P5006, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P106, $P5006
    nqp_decontainerize $P5007, _lex_param_0
    find_lex $P5008, "$?CLASS"
    repr_get_attr_obj $P5009, $P5007, $P5008, "$!shared"
    set $P101, $P5009
.annotate 'line', 731
    nqp_decontainerize $P5011, _lex_param_0
    get_how $P5010, $P5011
    nqp_decontainerize $P5012, _lex_param_0
    .const 'Sub' $P5014 = 'cuid_99_1361633907.987' 
    capture_lex $P5014
    newclosure $P5013, $P5014
    $P5015 = $P5010."cache"($P5012, _lex_param_1, $P5013)
    set $P102, $P5015
.annotate 'line', 732
    nqp_get_sc_object $P5016, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 32
    repr_get_attr_str $S5001, $P101, $P5016, "$!target"
    nqp_decontainerize $P5017, _lex_param_0
    find_lex $P5018, "$?CLASS"
    repr_get_attr_int $I5001, $P5017, $P5018, "$!pos"
    $P5019 = $P102."run"($S5001, $I5001)
    set $P103, $P5019
    nqp_get_sc_object $P5020, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 32
    repr_get_attr_int $I5002, $P101, $P5020, "$!highwater"
    set $I101, $I5002
    nqp_decontainerize $P5021, _lex_param_0
    find_lex $P5022, "$?CLASS"
    repr_get_attr_int $I5004, $P5021, $P5022, "$!pos"
    set $N5001, $I5004
    set $N5002, $I101
    isgt $I5003, $N5001, $N5002
    unless $I5003 goto if417_end847 
.annotate 'line', 736
    nqp_get_sc_object $P5023, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 32
    nqp_decontainerize $P5024, _lex_param_0
    find_lex $P5025, "$?CLASS"
    repr_get_attr_int $I5005, $P5024, $P5025, "$!pos"
    repr_bind_attr_int $P101, $P5023, "$!highwater", $I5005
  if417_end847:
.annotate 'line', 741
    $P5026 = $P102."states"()
    set fb_tmp_89, $P5026
    repr_defined $I5006, fb_tmp_89
    unless $I5006 goto if418_else848 
    set $P5027, fb_tmp_89[0]
    set $P5029, $P5027
    goto if418_end849
  if418_else848:
    null $P5028
    set $P5029, $P5028
  if418_end849:
    unless_null $P5029, vivi_419850
    nqp_get_sc_object $P5030, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5029, $P5030
  vivi_419850:
    set $P104, $P5029
  while420_test851:
    set $P5038, $P103
    unless $P103 goto while420_done855 
  while420_redo853:
.annotate 'line', 744
    pop $I5007, $P103
    set $P5031, $P104[$I5007]
    set $P106, $P5031
.annotate 'line', 747
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
    unless $I5008 goto if421_end857 
    find_lex $P5035, "@EMPTY"
    set $P103, $P5035
    set $P5036, $P103
  if421_end857:
    set $P5038, $P5036
    goto while420_test851 
  while420_done855:
    set $P5039, $P105
    defined $I5010, $P5039
    if $I5010, defor858
.annotate 'line', 750
    nqp_decontainerize $P5040, _lex_param_0
    $P5041 = $P5040."!cursor_start_cur"()
    set $P5039, $P5041
  defor858:
    .return ($P5039) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_99_1361633907.987") :anon :lex :outer("cuid_47_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 731

    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    find_lex $P5003, "$name"
    $P5004 = $P5001."!protoregex_nfa"($P5003)
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "!protoregex_nfa" :subid("cuid_48_1361633907.987") :anon :lex :outer("cuid_79_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 753
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5036 = 'cuid_100_1361633907.987' 
    capture_lex $P5036 
    .const 'Sub' $P5036 = 'cuid_101_1361633907.987' 
    capture_lex $P5036 
    .lex "%protorx", $P101 
    .lex "$nfa", $P102 
    .lex "@fates", $P103 
    .lex "$start", $I101 
    .lex "$fate", $I102 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    .local pmc fb_tmp_90 
    .local pmc pkg_lookup_tmp_10 
    .local pmc fb_tmp_91 
    .local pmc fb_tmp_92 
    new $P5001, 'Hash'
    set $P101, $P5001
    nqp_get_sc_object $P5002, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P102, $P5002
    new $P5003, 'ResizablePMCArray'
    set $P103, $P5003
    set $I101, 0
    set $I102, 0
.annotate 'line', 754
    nqp_decontainerize $P5005, _lex_param_0
    get_how $P5004, $P5005
    nqp_decontainerize $P5006, _lex_param_0
    .const 'Sub' $P5008 = 'cuid_100_1361633907.987' 
    capture_lex $P5008
    newclosure $P5007, $P5008
    $P5009 = $P5004."cache"($P5006, "!protoregex_table", $P5007)
    set $P101, $P5009
.annotate 'line', 755
    nqp_get_sc_object $P5011, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 0
    set pkg_lookup_tmp_10, $P5011
    get_who $P5012, pkg_lookup_tmp_10
    exists $I5002, $P5012["QRegex"]
    unless $I5002 goto if423_else861 
    get_who $P5014, pkg_lookup_tmp_10
    set $P5013, $P5014["QRegex"]
    set $P5016, $P5013
    goto if423_end862
  if423_else861:
    nqp_get_sc_object $P5015, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5016, $P5015
  if423_end862:
    get_who $P5010, $P5016
    set fb_tmp_90, $P5010
    repr_defined $I5001, fb_tmp_90
    unless $I5001 goto if422_else859 
    set $P5017, fb_tmp_90["NFA"]
    set $P5019, $P5017
    goto if422_end860
  if422_else859:
    null $P5018
    set $P5019, $P5018
  if422_end860:
    unless_null $P5019, vivi_424863
    nqp_get_sc_object $P5020, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5019, $P5020
  vivi_424863:
    $P5021 = $P5019."new"()
    set $P102, $P5021
.annotate 'line', 756
    $P5022 = $P102."states"()
    set fb_tmp_91, $P5022
    repr_defined $I5003, fb_tmp_91
    unless $I5003 goto if425_else864 
    set $P5023, fb_tmp_91[0]
    set $P5025, $P5023
    goto if425_end865
  if425_else864:
    null $P5024
    set $P5025, $P5024
  if425_end865:
    unless_null $P5025, vivi_426866
    nqp_get_sc_object $P5026, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5025, $P5026
  vivi_426866:
    set $P103, $P5025
    set $I101, 1
    set $I102, 0
    set $S5001, _lex_param_1
    exists $I5004, $P101[$S5001]
    unless $I5004 goto if427_end868 
.annotate 'line', 759
    set fb_tmp_92, $P101
    repr_defined $I5005, fb_tmp_92
    unless $I5005 goto if428_else869 
    set $S5002, _lex_param_1
    set $P5030, fb_tmp_92[$S5002]
    set $P5032, $P5030
    goto if428_end870
  if428_else869:
    null $P5031
    set $P5032, $P5031
  if428_end870:
    unless_null $P5032, vivi_429871
    nqp_get_sc_object $P5033, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5032, $P5033
  vivi_429871:
    set $P5027, $P5032
    iter $P5029, $P5032
  for_next872:
    unless $P5029, for_done874
    shift $P5035, $P5029
  for_redo873:
    .const 'Sub' $P5034 = 'cuid_101_1361633907.987' 
    capture_lex $P5034
    $P5027 = $P5034($P5035)
    goto for_next872
  for_done874:
  if427_end868:
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_100_1361633907.987") :anon :lex :outer("cuid_48_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 754

    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    $P5003 = $P5001."!protoregex_table"()
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_101_1361633907.987") :anon :lex :outer("cuid_48_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 760
    .param pmc _lex_param_0 
    .lex "$rxname", _lex_param_0 
    find_lex $I5001, "$fate"
    set $N5002, $I5001
    set $N5003, 1
    add $N5001, $N5002, $N5003
    set $I5002, $N5001
    store_lex "$fate", $I5002
    find_lex $P5001, "@fates"
    find_lex $I5003, "$fate"
    set $P5001[$I5003], _lex_param_0
.annotate 'line', 763
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
.sub "!protoregex_table" :subid("cuid_49_1361633907.987") :anon :lex :outer("cuid_79_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 769
    .param pmc _lex_param_0 
    .const 'Sub' $P5011 = 'cuid_103_1361633907.987' 
    capture_lex $P5011 
    .lex "%protorx", $P101 
    .lex "self", _lex_param_0 
    new $P5001, 'Hash'
    set $P101, $P5001
.annotate 'line', 771
    nqp_decontainerize $P5006, _lex_param_0
    get_how $P5005, $P5006
    nqp_decontainerize $P5007, _lex_param_0
    $P5008 = $P5005."methods"($P5007)
    set $P5002, $P5008
    iter $P5004, $P5008
  for_next882:
    unless $P5004, for_done884
    shift $P5010, $P5004
  for_redo883:
    .const 'Sub' $P5009 = 'cuid_103_1361633907.987' 
    capture_lex $P5009
    $P5002 = $P5009($P5010)
    goto for_next882
  for_done884:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_103_1361633907.987") :anon :lex :outer("cuid_49_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 771
    .param pmc _lex_param_0 
    .const 'Sub' $P5006 = 'cuid_102_1361633907.987' 
    capture_lex $P5006 
    .lex "$methname", $S101 
    .lex "$sympos", $I101 
    .lex "$meth", _lex_param_0 
    set $S101, ""
    set $I101, 0
.annotate 'line', 772
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
    unless $I5002 goto if430_end876 
    .const 'Sub' $P5002 = 'cuid_102_1361633907.987' 
    capture_lex $P5002
    $P5003 = $P5002()
    set $P5004, $P5003
  if430_end876:
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_102_1361633907.987") :anon :lex :outer("cuid_103_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 774
    .lex "$prefix", $S101 
    .local pmc fb_tmp_93 
    set $S101, ""
    find_lex $S5002, "$methname"
    find_lex $I5001, "$sympos"
    substr $S5001, $S5002, 0, $I5001
    set $S101, $S5001
    find_lex $P5001, "%protorx"
    exists $I5002, $P5001[$S101]
    if $I5002 goto unless431_end878 
    find_lex $P5002, "%protorx"
    new $P5003, 'ResizablePMCArray'
    set $P5002[$S101], $P5003
  unless431_end878:
    find_lex $P5004, "%protorx"
    set fb_tmp_93, $P5004
    repr_defined $I5003, fb_tmp_93
    unless $I5003 goto if432_else879 
    set $P5005, fb_tmp_93[$S101]
    set $P5007, $P5005
    goto if432_end880
  if432_else879:
    null $P5006
    set $P5007, $P5006
  if432_end880:
    unless_null $P5007, vivi_433881
    nqp_get_sc_object $P5008, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5007, $P5008
  vivi_433881:
    find_lex $S5003, "$methname"
    box $P5009, $S5003
    push $P5007, $P5009
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "!alt" :subid("cuid_50_1361633907.987") :anon :lex :outer("cuid_79_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 783
    .param pmc _lex_param_0 
    .param int _lex_param_1 
    .param string _lex_param_2 
    .param pmc _lex_param_3 :optional 
    .param int haz_param_19 :opt_flag 
    .const 'Sub' $P5023 = 'cuid_104_1361633907.987' 
    capture_lex $P5023 
    .lex "$shared", $P101 
    .lex "$highwater", $I101 
    .lex "$nfa", $P102 
    .lex "self", _lex_param_0 
    .lex "$pos", _lex_param_1 
    .lex "$name", _lex_param_2 
    .lex "@labels", _lex_param_3 
    if haz_param_19, default887
    new $P5022, 'ResizablePMCArray'
    set _lex_param_3, $P5022
  default887:
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P101, $P5001
    set $I101, 0
    nqp_get_sc_object $P5002, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P102, $P5002
    nqp_decontainerize $P5003, _lex_param_0
    find_lex $P5004, "$?CLASS"
    repr_get_attr_obj $P5005, $P5003, $P5004, "$!shared"
    set $P101, $P5005
    nqp_get_sc_object $P5006, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 32
    repr_get_attr_int $I5001, $P101, $P5006, "$!highwater"
    set $I101, $I5001
    set $N5001, _lex_param_1
    set $N5002, $I101
    isgt $I5002, $N5001, $N5002
    unless $I5002 goto if434_end886 
.annotate 'line', 787
    nqp_get_sc_object $P5007, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 32
    repr_bind_attr_int $P101, $P5007, "$!highwater", _lex_param_1
  if434_end886:
.annotate 'line', 792
    nqp_decontainerize $P5009, _lex_param_0
    get_how $P5008, $P5009
    nqp_decontainerize $P5010, _lex_param_0
    .const 'Sub' $P5012 = 'cuid_104_1361633907.987' 
    capture_lex $P5012
    newclosure $P5011, $P5012
    $P5013 = $P5008."cache"($P5010, _lex_param_2, $P5011)
    set $P102, $P5013
.annotate 'line', 793
    nqp_get_sc_object $P5014, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 32
    repr_get_attr_str $S5001, $P101, $P5014, "$!target"
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
.sub "" :subid("cuid_104_1361633907.987") :anon :lex :outer("cuid_50_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 792

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
.sub "!alt_nfa" :subid("cuid_51_1361633907.987") :anon :lex :outer("cuid_79_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 796
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param string _lex_param_2 
    .const 'Sub' $P5026 = 'cuid_105_1361633907.987' 
    capture_lex $P5026 
    .lex "$nfa", $P101 
    .lex "@fates", $P102 
    .lex "$start", $I101 
    .lex "$fate", $I102 
    .lex "self", _lex_param_0 
    .lex "$regex", _lex_param_1 
    .lex "$name", _lex_param_2 
    .local pmc fb_tmp_94 
    .local pmc pkg_lookup_tmp_11 
    .local pmc fb_tmp_95 
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P101, $P5001
    new $P5002, 'ResizablePMCArray'
    set $P102, $P5002
    set $I101, 0
    set $I102, 0
.annotate 'line', 797
    nqp_get_sc_object $P5004, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 0
    set pkg_lookup_tmp_11, $P5004
    get_who $P5005, pkg_lookup_tmp_11
    exists $I5002, $P5005["QRegex"]
    unless $I5002 goto if436_else890 
    get_who $P5007, pkg_lookup_tmp_11
    set $P5006, $P5007["QRegex"]
    set $P5009, $P5006
    goto if436_end891
  if436_else890:
    nqp_get_sc_object $P5008, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5009, $P5008
  if436_end891:
    get_who $P5003, $P5009
    set fb_tmp_94, $P5003
    repr_defined $I5001, fb_tmp_94
    unless $I5001 goto if435_else888 
    set $P5010, fb_tmp_94["NFA"]
    set $P5012, $P5010
    goto if435_end889
  if435_else888:
    null $P5011
    set $P5012, $P5011
  if435_end889:
    unless_null $P5012, vivi_437892
    nqp_get_sc_object $P5013, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5012, $P5013
  vivi_437892:
    $P5014 = $P5012."new"()
    set $P101, $P5014
.annotate 'line', 798
    $P5015 = $P101."states"()
    set fb_tmp_95, $P5015
    repr_defined $I5003, fb_tmp_95
    unless $I5003 goto if438_else893 
    set $P5016, fb_tmp_95[0]
    set $P5018, $P5016
    goto if438_end894
  if438_else893:
    null $P5017
    set $P5018, $P5017
  if438_end894:
    unless_null $P5018, vivi_439895
    nqp_get_sc_object $P5019, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5018, $P5019
  vivi_439895:
    set $P102, $P5018
    set $I101, 1
    set $I102, 0
.annotate 'line', 801
    $P5023 = _lex_param_1."ALT_NFA"(_lex_param_2)
    set $P5020, $P5023
    iter $P5022, $P5023
  for_next896:
    unless $P5022, for_done898
    shift $P5025, $P5022
  for_redo897:
    .const 'Sub' $P5024 = 'cuid_105_1361633907.987' 
    capture_lex $P5024
    $P5020 = $P5024($P5025)
    goto for_next896
  for_done898:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_105_1361633907.987") :anon :lex :outer("cuid_51_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 801
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    .local pmc tmp_6 
    find_lex $P5001, "@fates"
    find_lex $I5001, "$fate"
    find_lex $I5002, "$fate"
    box $P5002, $I5002
    set $P5001[$I5001], $P5002
.annotate 'line', 803
    find_lex $P5003, "$nfa"
    find_lex $I5003, "$start"
    find_lex $I5004, "$fate"
    find_lex $P5005, "self"
    nqp_decontainerize $P5004, $P5005
    $P5003."mergesubstates"($I5003, 0, $I5004, _lex_param_0, $P5004)
    find_lex $I5005, "$fate"
    box $P5006, $I5005
    set tmp_6, $P5006
    set $N5002, tmp_6
    set $N5003, 1
    add $N5001, $N5002, $N5003
    set $I5006, $N5001
    store_lex "$fate", $I5006
    .return (tmp_6) 
.end
.HLL "nqp"
.namespace []
.sub "!precompute_nfas" :subid("cuid_52_1361633907.987") :anon :lex :outer("cuid_79_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 809
    .param pmc _lex_param_0 
    .const 'Sub' $P5023 = 'cuid_108_1361633907.987' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_109_1361633907.987' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_111_1361633907.987' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_113_1361633907.987' 
    capture_lex $P5023 
    .lex "%protorx", $P101 
    .lex "&precomp_alt_nfas", $P102 
    .lex "self", _lex_param_0 
    new $P5001, 'Hash'
    set $P101, $P5001
    .const 'Sub' $P5002 = 'cuid_108_1361633907.987' 
    capture_lex $P5002
    set $P102, $P5002
.annotate 'line', 811
    nqp_decontainerize $P5004, _lex_param_0
    get_how $P5003, $P5004
    nqp_decontainerize $P5005, _lex_param_0
    .const 'Sub' $P5007 = 'cuid_109_1361633907.987' 
    capture_lex $P5007
    newclosure $P5006, $P5007
    $P5008 = $P5003."cache"($P5005, "!protoregex_table", $P5006)
    set $P101, $P5008
    set $P5009, $P101
    iter $P5011, $P101
  for_next904:
    unless $P5011, for_done906
    shift $P5013, $P5011
  for_redo905:
    .const 'Sub' $P5012 = 'cuid_111_1361633907.987' 
    capture_lex $P5012
    $P5009 = $P5012($P5013)
    goto for_next904
  for_done906:
.annotate 'line', 824
    nqp_decontainerize $P5018, _lex_param_0
    get_how $P5017, $P5018
    nqp_decontainerize $P5019, _lex_param_0
    $P5020 = $P5017."methods"($P5019)
    set $P5014, $P5020
    iter $P5016, $P5020
  for_next912:
    unless $P5016, for_done914
    shift $P5022, $P5016
  for_redo913:
    .const 'Sub' $P5021 = 'cuid_113_1361633907.987' 
    capture_lex $P5021
    $P5014 = $P5021($P5022)
    goto for_next912
  for_done914:
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "precomp_alt_nfas" :subid("cuid_108_1361633907.987") :anon :lex :outer("cuid_52_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 817
    .param pmc _lex_param_0 
    .const 'Sub' $P5009 = 'cuid_107_1361633907.987' 
    capture_lex $P5009 
    .lex "$meth", _lex_param_0 
    can $I5001, _lex_param_0, "ALT_NFAS"
    box $P5008, $I5001
    set $P5007, $P5008
    unless $I5001 goto if440_end900 
.annotate 'line', 818
.annotate 'line', 819
    $P5004 = _lex_param_0."ALT_NFAS"()
    set $P5001, $P5004
    iter $P5003, $P5004
  for_next901:
    unless $P5003, for_done903
    shift $P5006, $P5003
  for_redo902:
    .const 'Sub' $P5005 = 'cuid_107_1361633907.987' 
    capture_lex $P5005
    $P5001 = $P5005($P5006)
    goto for_next901
  for_done903:
    set $P5007, $P5001
  if440_end900:
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_107_1361633907.987") :anon :lex :outer("cuid_108_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 819
    .param pmc _lex_param_0 
    .const 'Sub' $P5009 = 'cuid_106_1361633907.987' 
    capture_lex $P5009 
    .lex "$name", _lex_param_0 
.annotate 'line', 820
    find_lex $P5003, "self"
    nqp_decontainerize $P5002, $P5003
    get_how $P5001, $P5002
    find_lex $P5005, "self"
    nqp_decontainerize $P5004, $P5005
    .const 'Sub' $P5007 = 'cuid_106_1361633907.987' 
    capture_lex $P5007
    newclosure $P5006, $P5007
    $P5008 = $P5001."cache"($P5004, _lex_param_0, $P5006)
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_106_1361633907.987") :anon :lex :outer("cuid_107_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 820

    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    find_lex $P5003, "$meth"
    find_lex $P5004, "$name"
    $P5005 = $P5001."!alt_nfa"($P5003, $P5004)
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_109_1361633907.987") :anon :lex :outer("cuid_52_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 811

    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    $P5003 = $P5001."!protoregex_table"()
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_111_1361633907.987") :anon :lex :outer("cuid_52_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 812
    .param pmc _lex_param_0 
    .const 'Sub' $P5010 = 'cuid_110_1361633907.987' 
    capture_lex $P5010 
    .lex "$_", _lex_param_0 
.annotate 'line', 813
    find_lex $P5003, "self"
    nqp_decontainerize $P5002, $P5003
    get_how $P5001, $P5002
    find_lex $P5005, "self"
    nqp_decontainerize $P5004, $P5005
    $P5006 = _lex_param_0."key"()
    .const 'Sub' $P5008 = 'cuid_110_1361633907.987' 
    capture_lex $P5008
    newclosure $P5007, $P5008
    $P5009 = $P5001."cache"($P5004, $P5006, $P5007)
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_110_1361633907.987") :anon :lex :outer("cuid_111_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 813

    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    find_lex $P5003, "$_"
    $P5004 = $P5003."key"()
    $P5005 = $P5001."!protoregex_nfa"($P5004)
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_113_1361633907.987") :anon :lex :outer("cuid_52_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 824
    .param pmc _lex_param_0 
    .const 'Sub' $P5009 = 'cuid_112_1361633907.987' 
    capture_lex $P5009 
    .lex "$meth", _lex_param_0 
.annotate 'line', 825
    "&precomp_alt_nfas"(_lex_param_0)
    can $I5001, _lex_param_0, "NESTED_CODES"
    box $P5008, $I5001
    set $P5007, $P5008
    unless $I5001 goto if441_end908 
.annotate 'line', 826
.annotate 'line', 827
    $P5004 = _lex_param_0."NESTED_CODES"()
    set $P5001, $P5004
    iter $P5003, $P5004
  for_next909:
    unless $P5003, for_done911
    shift $P5006, $P5003
  for_redo910:
    .const 'Sub' $P5005 = 'cuid_112_1361633907.987' 
    capture_lex $P5005
    $P5001 = $P5005($P5006)
    goto for_next909
  for_done911:
    set $P5007, $P5001
  if441_end908:
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_112_1361633907.987") :anon :lex :outer("cuid_113_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 827
    .param pmc _lex_param_0 
    .lex "$code", _lex_param_0 
.annotate 'line', 828
    $P5001 = "&precomp_alt_nfas"(_lex_param_0)
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "!dba" :subid("cuid_53_1361633907.987") :anon :lex :outer("cuid_79_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 834
    .param pmc _lex_param_0 
    .param int _lex_param_1 
    .param string _lex_param_2 
    .lex "$shared", $P101 
    .lex "$highwater", $I101 
    .lex "$highexpect", $P102 
    .lex "self", _lex_param_0 
    .lex "$pos", _lex_param_1 
    .lex "$dba", _lex_param_2 
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P101, $P5001
    set $I101, 0
    nqp_get_sc_object $P5002, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P102, $P5002
    nqp_decontainerize $P5003, _lex_param_0
    find_lex $P5004, "$?CLASS"
    repr_get_attr_obj $P5005, $P5003, $P5004, "$!shared"
    set $P101, $P5005
    nqp_get_sc_object $P5006, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 32
    repr_get_attr_int $I5001, $P101, $P5006, "$!highwater"
    set $I101, $I5001
    set $N5001, _lex_param_1
    set $N5002, $I101
    isge $I5002, $N5001, $N5002
    box $P5011, $I5002
    set $P5010, $P5011
    unless $I5002 goto if442_end916 
.annotate 'line', 838
    nqp_get_sc_object $P5008, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 32
    getattribute $P5007, $P101, $P5008, "@!highexpect"
    set $P102, $P5007
    set $N5003, _lex_param_1
    set $N5004, $I101
    isgt $I5003, $N5003, $N5004
    unless $I5003 goto if443_end918 
.annotate 'line', 840
    assign $P102, 0
    nqp_get_sc_object $P5009, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 32
    repr_bind_attr_int $P101, $P5009, "$!highwater", _lex_param_1
  if443_end918:
    push $P102, _lex_param_2
    set $P5010, $P102
  if442_end916:
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "!highwater" :subid("cuid_54_1361633907.987") :anon :lex :outer("cuid_79_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 848
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    find_lex $P5002, "$?CLASS"
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!shared"
    nqp_get_sc_object $P5004, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 32
    repr_get_attr_int $I5001, $P5003, $P5004, "$!highwater"
    .return ($I5001) 
.end
.HLL "nqp"
.namespace []
.sub "!highexpect" :subid("cuid_55_1361633907.987") :anon :lex :outer("cuid_79_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 852
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5002, _lex_param_0
    find_lex $P5003, "$?CLASS"
    repr_get_attr_obj $P5004, $P5002, $P5003, "$!shared"
    nqp_get_sc_object $P5005, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 32
    getattribute $P5001, $P5004, $P5005, "@!highexpect"
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "!fresh_highexpect" :subid("cuid_56_1361633907.987") :anon :lex :outer("cuid_79_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 856
    .param pmc _lex_param_0 
    .lex "@old", $P101 
    .lex "self", _lex_param_0 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    nqp_decontainerize $P5003, _lex_param_0
    find_lex $P5004, "$?CLASS"
    repr_get_attr_obj $P5005, $P5003, $P5004, "$!shared"
    nqp_get_sc_object $P5006, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 32
    getattribute $P5002, $P5005, $P5006, "@!highexpect"
    set $P101, $P5002
    nqp_decontainerize $P5007, _lex_param_0
    find_lex $P5008, "$?CLASS"
    repr_get_attr_obj $P5009, $P5007, $P5008, "$!shared"
    nqp_get_sc_object $P5010, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 32
    new $P5011, 'ResizablePMCArray'
    setattribute $P5009, $P5010, "@!highexpect", $P5011
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "!set_highexpect" :subid("cuid_57_1361633907.987") :anon :lex :outer("cuid_79_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 862
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "@highexpect", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    find_lex $P5002, "$?CLASS"
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!shared"
    nqp_get_sc_object $P5004, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 32
    setattribute $P5003, $P5004, "@!highexpect", _lex_param_1
    .return (_lex_param_1) 
.end
.HLL "nqp"
.namespace []
.sub "!clear_highwater" :subid("cuid_58_1361633907.987") :anon :lex :outer("cuid_79_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 866
    .param pmc _lex_param_0 
    .lex "$highexpect", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P101, $P5001
    nqp_decontainerize $P5003, _lex_param_0
    find_lex $P5004, "$?CLASS"
    repr_get_attr_obj $P5005, $P5003, $P5004, "$!shared"
    nqp_get_sc_object $P5006, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 32
    getattribute $P5002, $P5005, $P5006, "@!highexpect"
    set $P101, $P5002
    assign $P101, 0
    nqp_decontainerize $P5007, _lex_param_0
    find_lex $P5008, "$?CLASS"
    repr_get_attr_obj $P5009, $P5007, $P5008, "$!shared"
    nqp_get_sc_object $P5010, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 32
    repr_bind_attr_int $P5009, $P5010, "$!highwater", -1
    .return (-1) 
.end
.HLL "nqp"
.namespace []
.sub "!BACKREF" :subid("cuid_59_1361633907.987") :anon :lex :outer("cuid_79_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 872
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5036 = 'cuid_114_1361633907.987' 
    capture_lex $P5036 
    .lex "$cur", $P101 
    .lex "$n", $I101 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    .local pmc fb_tmp_96 
    .local pmc fb_tmp_97 
    .local pmc tmp_7 
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P101, $P5001
    set $I101, 0
.annotate 'line', 873
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start_cur"()
    set $P101, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!cstack"
    unless $P5006 goto if444_else919 
    nqp_decontainerize $P5007, _lex_param_0
    find_lex $P5008, "$?CLASS"
    repr_get_attr_obj $P5009, $P5007, $P5008, "$!cstack"
    elements $I5001, $P5009
    set $N5002, $I5001
    set $N5003, 1
    sub $N5001, $N5002, $N5003
    box $P5011, $N5001
    set $P5010, $P5011
    goto if444_end920
  if444_else919:
    box $P5012, -1
    set $P5010, $P5012
  if444_end920:
    set $I5002, $P5010
    set $I101, $I5002
    new $P5032, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5032, while445_handlers924
    push_eh $P5032
  while445_test921:
    set $N5004, $I101
    set $N5005, 0
    isge $I5003, $N5004, $N5005
    set $I5009, $I5003
    unless $I5003 goto if446_end927 
    nqp_decontainerize $P5014, _lex_param_0
    find_lex $P5015, "$?CLASS"
    repr_get_attr_obj $P5016, $P5014, $P5015, "$!cstack"
    set fb_tmp_96, $P5016
    repr_defined $I5005, fb_tmp_96
    unless $I5005 goto if448_else930 
    set $P5017, fb_tmp_96[$I101]
    set $P5019, $P5017
    goto if448_end931
  if448_else930:
    null $P5018
    set $P5019, $P5018
  if448_end931:
    unless_null $P5019, vivi_449932
    nqp_get_sc_object $P5020, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5019, $P5020
  vivi_449932:
    find_lex $P5021, "$?CLASS"
    getattribute $P5013, $P5019, $P5021, "$!name"
    isnull $I5004, $P5013
    set $I5008, $I5004
    if $I5004 goto unless447_end929 
    nqp_decontainerize $P5023, _lex_param_0
    find_lex $P5024, "$?CLASS"
    repr_get_attr_obj $P5025, $P5023, $P5024, "$!cstack"
    set fb_tmp_97, $P5025
    repr_defined $I5007, fb_tmp_97
    unless $I5007 goto if450_else933 
    set $P5026, fb_tmp_97[$I101]
    set $P5028, $P5026
    goto if450_end934
  if450_else933:
    null $P5027
    set $P5028, $P5027
  if450_end934:
    unless_null $P5028, vivi_451935
    nqp_get_sc_object $P5029, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5028, $P5029
  vivi_451935:
    find_lex $P5030, "$?CLASS"
    getattribute $P5022, $P5028, $P5030, "$!name"
    set $S5001, $P5022
    set $S5002, _lex_param_1
    isne $I5006, $S5001, $S5002
    set $I5008, $I5006
  unless447_end929:
    set $I5009, $I5008
  if446_end927:
    box $P5033, $I5009
    set $P5031, $P5033
    unless $I5009 goto while445_done925 
  while445_redo923:
    box $P5031, $I101
    set tmp_7, $P5031
    set $N5007, tmp_7
    set $N5008, 1
    sub $N5006, $N5007, $N5008
    set $I5010, $N5006
    set $I101, $I5010
    set $P5031, tmp_7
    goto while445_test921 
  while445_handlers924:
    .get_results ($P5032)
    pop_upto_eh $P5032
    getattribute $P5032, $P5032, 'type'
    eq $P5032, .CONTROL_LOOP_NEXT, while445_test921
    eq $P5032, .CONTROL_LOOP_REDO, while445_redo923
  while445_done925:
    pop_eh 
    set $N5006, $I101
    set $N5007, 0
    isge $I5010, $N5006, $N5007
    unless $I5010 goto if452_end937 
    .const 'Sub' $P5034 = 'cuid_114_1361633907.987' 
    capture_lex $P5034
    $P5035 = $P5034()
  if452_end937:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_114_1361633907.987") :anon :lex :outer("cuid_59_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 877
    .lex "$subcur", $P101 
    .lex "$litlen", $I101 
    .lex "$target", $S101 
    .local pmc fb_tmp_98 
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P101, $P5001
    set $I101, 0
    set $S101, ""
    find_lex $P5003, "self"
    nqp_decontainerize $P5002, $P5003
    find_lex $P5004, "$?CLASS"
    repr_get_attr_obj $P5005, $P5002, $P5004, "$!cstack"
    set fb_tmp_98, $P5005
    repr_defined $I5001, fb_tmp_98
    unless $I5001 goto if453_else938 
    find_lex $I5002, "$n"
    set $P5006, fb_tmp_98[$I5002]
    set $P5008, $P5006
    goto if453_end939
  if453_else938:
    null $P5007
    set $P5008, $P5007
  if453_end939:
    unless_null $P5008, vivi_454940
    nqp_get_sc_object $P5009, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P5008, $P5009
  vivi_454940:
    set $P101, $P5008
.annotate 'line', 879
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
    nqp_get_sc_object $P5016, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 32
    repr_get_attr_str $S5001, $P5015, $P5016, "$!target"
    set $S101, $S5001
    find_lex $P5018, "self"
    nqp_decontainerize $P5017, $P5018
    find_lex $P5019, "$?CLASS"
    repr_get_attr_int $I5005, $P5017, $P5019, "$!pos"
    substr $S5002, $S101, $I5005, $I101
.annotate 'line', 883
    $P5020 = $P101."from"()
    set $I5006, $P5020
    substr $S5003, $S101, $I5006, $I101
    iseq $I5004, $S5002, $S5003
    box $P5027, $I5004
    set $P5026, $P5027
    unless $I5004 goto if455_end942 
.annotate 'line', 881
    find_lex $P5021, "$cur"
    find_lex $P5023, "self"
    nqp_decontainerize $P5022, $P5023
    find_lex $P5024, "$?CLASS"
    repr_get_attr_int $I5007, $P5022, $P5024, "$!pos"
    set $N5005, $I5007
    set $N5006, $I101
    add $N5004, $N5005, $N5006
    $P5025 = $P5021."!cursor_pass"($N5004, "")
    set $P5026, $P5025
  if455_end942:
    .return ($P5026) 
.end
.HLL "nqp"
.namespace []
.sub "!LITERAL" :subid("cuid_60_1361633907.987") :anon :lex :outer("cuid_79_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 888
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
    if haz_param_20, default949
    set $I5010, 0
    set _lex_param_2, $I5010
  default949:
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P101, $P5001
    set $I101, 0
    set $S101, ""
.annotate 'line', 889
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start_cur"()
    set $P101, $P5003
    length $I5001, _lex_param_1
    set $I101, $I5001
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!shared"
    nqp_get_sc_object $P5007, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 32
    repr_get_attr_str $S5001, $P5006, $P5007, "$!target"
    set $S101, $S5001
    set $N5001, $I101
    set $N5002, 1
    islt $I5002, $N5001, $N5002
    set $I5008, $I5002
    if $I5002 goto unless457_end946 
    unless _lex_param_2 goto if458_else947 
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_int $I5004, $P5008, $P5009, "$!pos"
    substr $S5003, $S101, $I5004, $I101
    downcase $S5002, $S5003
    downcase $S5004, _lex_param_1
    iseq $I5003, $S5002, $S5004
    set $I5007, $I5003
    goto if458_end948
  if458_else947:
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5006, $P5010, $P5011, "$!pos"
    substr $S5005, $S101, $I5006, $I101
    iseq $I5005, $S5005, _lex_param_1
    set $I5007, $I5005
  if458_end948:
    set $I5008, $I5007
  unless457_end946:
    unless $I5008 goto if456_end944 
.annotate 'line', 892
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5009, $P5012, $P5013, "$!pos"
    set $N5004, $I5009
    set $N5005, $I101
    add $N5003, $N5004, $N5005
    $P5014 = $P101."!cursor_pass"($N5003)
  if456_end944:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "at" :subid("cuid_61_1361633907.987") :anon :lex :outer("cuid_79_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 899
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    .lex "$pos", _lex_param_1 
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
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
    unless $I5001 goto if459_end951 
.annotate 'line', 901
    nqp_decontainerize $P5006, _lex_param_0
    find_lex $P5007, "$?CLASS"
    repr_get_attr_int $I5003, $P5006, $P5007, "$!pos"
    $P5008 = $P101."!cursor_pass"($I5003)
  if459_end951:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "before" :subid("cuid_62_1361633907.987") :anon :lex :outer("cuid_79_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 905
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$orig_highwater", $I101 
    .lex "$orig_highexpect", $P101 
    .lex "$cur", $P102 
    .lex "self", _lex_param_0 
    .lex "$regex", _lex_param_1 
    set $I101, 0
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P102, $P5002
    nqp_decontainerize $P5003, _lex_param_0
    find_lex $P5004, "$?CLASS"
    repr_get_attr_obj $P5005, $P5003, $P5004, "$!shared"
    nqp_get_sc_object $P5006, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 32
    repr_get_attr_int $I5001, $P5005, $P5006, "$!highwater"
    set $I101, $I5001
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_obj $P5010, $P5008, $P5009, "$!shared"
    nqp_get_sc_object $P5011, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 32
    getattribute $P5007, $P5010, $P5011, "@!highexpect"
    set $P101, $P5007
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_obj $P5014, $P5012, $P5013, "$!shared"
    nqp_get_sc_object $P5015, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 32
    new $P5016, 'ResizablePMCArray'
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
    unless $I5003 goto if460_else952 
.annotate 'line', 912
    nqp_decontainerize $P5024, _lex_param_0
    find_lex $P5025, "$?CLASS"
    repr_get_attr_int $I5005, $P5024, $P5025, "$!pos"
    $P5026 = $P102."!cursor_pass"($I5005, "before")
    goto if460_end953
  if460_else952:
    find_lex $P5027, "$?CLASS"
    repr_bind_attr_int $P102, $P5027, "$!pos", -3
  if460_end953:
    nqp_decontainerize $P5028, _lex_param_0
    find_lex $P5029, "$?CLASS"
    repr_get_attr_obj $P5030, $P5028, $P5029, "$!shared"
    nqp_get_sc_object $P5031, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 32
    repr_bind_attr_int $P5030, $P5031, "$!highwater", $I101
    nqp_decontainerize $P5032, _lex_param_0
    find_lex $P5033, "$?CLASS"
    repr_get_attr_obj $P5034, $P5032, $P5033, "$!shared"
    nqp_get_sc_object $P5035, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 32
    setattribute $P5034, $P5035, "@!highexpect", $P101
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "after" :subid("cuid_63_1361633907.987") :anon :lex :outer("cuid_79_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
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
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P102, $P5002
    set $S101, ""
    nqp_get_sc_object $P5003, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P103, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!shared"
    nqp_get_sc_object $P5007, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 32
    repr_get_attr_int $I5001, $P5006, $P5007, "$!highwater"
    set $I101, $I5001
    nqp_decontainerize $P5009, _lex_param_0
    find_lex $P5010, "$?CLASS"
    repr_get_attr_obj $P5011, $P5009, $P5010, "$!shared"
    nqp_get_sc_object $P5012, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 32
    getattribute $P5008, $P5011, $P5012, "@!highexpect"
    set $P101, $P5008
    nqp_decontainerize $P5013, _lex_param_0
    find_lex $P5014, "$?CLASS"
    repr_get_attr_obj $P5015, $P5013, $P5014, "$!shared"
    nqp_get_sc_object $P5016, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 32
    new $P5017, 'ResizablePMCArray'
    setattribute $P5015, $P5016, "@!highexpect", $P5017
.annotate 'line', 925
    nqp_decontainerize $P5018, _lex_param_0
    $P5019 = $P5018."!cursor_start_cur"()
    set $P102, $P5019
    nqp_decontainerize $P5020, _lex_param_0
    find_lex $P5021, "$?CLASS"
    repr_get_attr_obj $P5022, $P5020, $P5021, "$!shared"
    nqp_get_sc_object $P5023, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 32
    repr_get_attr_str $S5001, $P5022, $P5023, "$!target"
    set $S101, $S5001
    nqp_decontainerize $P5025, _lex_param_0
    find_lex $P5026, "$?CLASS"
    repr_get_attr_obj $P5027, $P5025, $P5026, "$!shared"
    repr_clone $P5024, $P5027
    set $P103, $P5024
    nqp_get_sc_object $P5028, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 32
.annotate 'line', 928
    box $P5029, $S101
    $P5030 = $P5029."reverse"()
    set $S5002, $P5030
    repr_bind_attr_str $P103, $P5028, "$!target", $S5002
    find_lex $P5031, "$?CLASS"
    setattribute $P102, $P5031, "$!shared", $P103
    find_lex $P5032, "$?CLASS"
    length $I5002, $S101
    set $N5002, $I5002
    nqp_decontainerize $P5033, _lex_param_0
    find_lex $P5034, "$?CLASS"
    repr_get_attr_int $I5003, $P5033, $P5034, "$!pos"
    set $N5003, $I5003
    sub $N5001, $N5002, $N5003
    set $I5004, $N5001
    repr_bind_attr_int $P102, $P5032, "$!from", $I5004
    find_lex $P5035, "$?CLASS"
    length $I5005, $S101
    set $N5005, $I5005
    nqp_decontainerize $P5036, _lex_param_0
    find_lex $P5037, "$?CLASS"
    repr_get_attr_int $I5006, $P5036, $P5037, "$!pos"
    set $N5006, $I5006
    sub $N5004, $N5005, $N5006
    set $I5007, $N5004
    repr_bind_attr_int $P102, $P5035, "$!pos", $I5007
.annotate 'line', 932
    $P5038 = _lex_param_1($P102)
    find_lex $P5039, "$?CLASS"
    repr_get_attr_int $I5009, $P5038, $P5039, "$!pos"
    set $N5007, $I5009
    set $N5008, 0
    isge $I5008, $N5007, $N5008
    unless $I5008 goto if461_else954 
.annotate 'line', 933
    nqp_decontainerize $P5040, _lex_param_0
    find_lex $P5041, "$?CLASS"
    repr_get_attr_int $I5010, $P5040, $P5041, "$!pos"
    $P5042 = $P102."!cursor_pass"($I5010, "after")
    goto if461_end955
  if461_else954:
    find_lex $P5043, "$?CLASS"
    repr_bind_attr_int $P102, $P5043, "$!pos", -3
  if461_end955:
    nqp_decontainerize $P5044, _lex_param_0
    find_lex $P5045, "$?CLASS"
    repr_get_attr_obj $P5046, $P5044, $P5045, "$!shared"
    nqp_get_sc_object $P5047, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 32
    repr_bind_attr_int $P5046, $P5047, "$!highwater", $I101
    nqp_decontainerize $P5048, _lex_param_0
    find_lex $P5049, "$?CLASS"
    repr_get_attr_obj $P5050, $P5048, $P5049, "$!shared"
    nqp_get_sc_object $P5051, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 32
    setattribute $P5050, $P5051, "@!highexpect", $P101
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "ws" :subid("cuid_64_1361633907.987") :anon :lex :outer("cuid_79_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 940
    .param pmc _lex_param_0 
    .lex "$target", $S101 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    set $S101, ""
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P101, $P5001
    nqp_decontainerize $P5002, _lex_param_0
    find_lex $P5003, "$?CLASS"
    repr_get_attr_obj $P5004, $P5002, $P5003, "$!shared"
    nqp_get_sc_object $P5005, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 32
    repr_get_attr_str $S5001, $P5004, $P5005, "$!target"
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
    unless $I5001 goto if462_else956 
.annotate 'line', 945
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5004, $P5010, $P5011, "$!pos"
    $P5012 = $P101."!cursor_pass"($I5004, "ws")
    goto if462_end957
  if462_else956:
    nqp_decontainerize $P5013, _lex_param_0
    find_lex $P5014, "$?CLASS"
    repr_get_attr_int $I5006, $P5013, $P5014, "$!pos"
    set $N5003, $I5006
    set $N5004, 1
    islt $I5005, $N5003, $N5004
    set $I5010, $I5005
    if $I5005 goto unless465_end963 
    nqp_decontainerize $P5015, _lex_param_0
    find_lex $P5016, "$?CLASS"
    repr_get_attr_int $I5009, $P5015, $P5016, "$!pos"
    is_cclass $I5008, 8192, $S101, $I5009
    not $I5007, $I5008
    set $I5010, $I5007
  unless465_end963:
    set $I5015, $I5010
    if $I5010 goto unless464_end961 
    nqp_decontainerize $P5017, _lex_param_0
    find_lex $P5018, "$?CLASS"
    repr_get_attr_int $I5013, $P5017, $P5018, "$!pos"
    set $N5006, $I5013
    set $N5007, 1
    sub $N5005, $N5006, $N5007
    set $I5014, $N5005
    is_cclass $I5012, 8192, $S101, $I5014
    not $I5011, $I5012
    set $I5015, $I5011
  unless464_end961:
    box $P5023, $I5015
    set $P5022, $P5023
    unless $I5015 goto if463_end959 
.annotate 'line', 949
    nqp_decontainerize $P5019, _lex_param_0
    find_lex $P5020, "$?CLASS"
    repr_get_attr_int $I5017, $P5019, $P5020, "$!pos"
    length $I5018, $S101
    find_not_cclass $I5016, 32, $S101, $I5017, $I5018
    $P5021 = $P101."!cursor_pass"($I5016, "ws")
    set $P5022, $P5021
  if463_end959:
  if462_end957:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "ww" :subid("cuid_65_1361633907.987") :anon :lex :outer("cuid_79_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 956
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "$target", $S101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P101, $P5001
    set $S101, ""
.annotate 'line', 957
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start_cur"()
    set $P101, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!shared"
    nqp_get_sc_object $P5007, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 32
    repr_get_attr_str $S5001, $P5006, $P5007, "$!target"
    set $S101, $S5001
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_int $I5002, $P5008, $P5009, "$!pos"
    set $N5001, $I5002
    set $N5002, 0
    isgt $I5001, $N5001, $N5002
    set $I5006, $I5001
    unless $I5001 goto if469_end971 
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5004, $P5010, $P5011, "$!pos"
    set $N5003, $I5004
    length $I5005, $S101
    set $N5004, $I5005
    isne $I5003, $N5003, $N5004
    set $I5006, $I5003
  if469_end971:
    set $I5009, $I5006
    unless $I5006 goto if468_end969 
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5008, $P5012, $P5013, "$!pos"
    is_cclass $I5007, 8192, $S101, $I5008
    set $I5009, $I5007
  if468_end969:
    set $I5013, $I5009
    unless $I5009 goto if467_end967 
    nqp_decontainerize $P5014, _lex_param_0
    find_lex $P5015, "$?CLASS"
    repr_get_attr_int $I5011, $P5014, $P5015, "$!pos"
    set $N5006, $I5011
    set $N5007, 1
    sub $N5005, $N5006, $N5007
    set $I5012, $N5005
    is_cclass $I5010, 8192, $S101, $I5012
    set $I5013, $I5010
  if467_end967:
    unless $I5013 goto if466_end965 
.annotate 'line', 959
    nqp_decontainerize $P5016, _lex_param_0
    find_lex $P5017, "$?CLASS"
    repr_get_attr_int $I5014, $P5016, $P5017, "$!pos"
    $P5018 = $P101."!cursor_pass"($I5014, "ww")
  if466_end965:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "wb" :subid("cuid_66_1361633907.987") :anon :lex :outer("cuid_79_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 967
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "$target", $S101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P101, $P5001
    set $S101, ""
.annotate 'line', 968
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start_cur"()
    set $P101, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!shared"
    nqp_get_sc_object $P5007, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 32
    repr_get_attr_str $S5001, $P5006, $P5007, "$!target"
    set $S101, $S5001
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_int $I5002, $P5008, $P5009, "$!pos"
    set $N5001, $I5002
    set $N5002, 0
    iseq $I5001, $N5001, $N5002
    set $I5005, $I5001
    unless $I5001 goto if473_end979 
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5004, $P5010, $P5011, "$!pos"
    is_cclass $I5003, 8192, $S101, $I5004
    set $I5005, $I5003
  if473_end979:
    set $I5013, $I5005
    if $I5005 goto unless472_end977 
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5007, $P5012, $P5013, "$!pos"
    set $N5003, $I5007
    length $I5008, $S101
    set $N5004, $I5008
    iseq $I5006, $N5003, $N5004
    set $I5012, $I5006
    unless $I5006 goto if474_end981 
    nqp_decontainerize $P5014, _lex_param_0
    find_lex $P5015, "$?CLASS"
    repr_get_attr_int $I5010, $P5014, $P5015, "$!pos"
    set $N5006, $I5010
    set $N5007, 1
    sub $N5005, $N5006, $N5007
    set $I5011, $N5005
    is_cclass $I5009, 8192, $S101, $I5011
    set $I5012, $I5009
  if474_end981:
    set $I5013, $I5012
  unless472_end977:
    set $I5020, $I5013
    if $I5013 goto unless471_end975 
    nqp_decontainerize $P5016, _lex_param_0
    find_lex $P5017, "$?CLASS"
    repr_get_attr_int $I5016, $P5016, $P5017, "$!pos"
    set $N5009, $I5016
    set $N5010, 1
    sub $N5008, $N5009, $N5010
    set $I5017, $N5008
    is_cclass $I5015, 8192, $S101, $I5017
    set $N5011, $I5015
    nqp_decontainerize $P5018, _lex_param_0
    find_lex $P5019, "$?CLASS"
    repr_get_attr_int $I5019, $P5018, $P5019, "$!pos"
    is_cclass $I5018, 8192, $S101, $I5019
    set $N5012, $I5018
    isne $I5014, $N5011, $N5012
    set $I5020, $I5014
  unless471_end975:
    unless $I5020 goto if470_end973 
.annotate 'line', 970
    nqp_decontainerize $P5020, _lex_param_0
    find_lex $P5021, "$?CLASS"
    repr_get_attr_int $I5021, $P5020, $P5021, "$!pos"
    $P5022 = $P101."!cursor_pass"($I5021, "wb")
  if470_end973:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "ident" :subid("cuid_67_1361633907.987") :anon :lex :outer("cuid_79_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 979
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "$target", $S101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P101, $P5001
    set $S101, ""
.annotate 'line', 980
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start_cur"()
    set $P101, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!shared"
    nqp_get_sc_object $P5007, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 32
    repr_get_attr_str $S5001, $P5006, $P5007, "$!target"
    set $S101, $S5001
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_int $I5002, $P5008, $P5009, "$!pos"
    set $N5001, $I5002
    length $I5003, $S101
    set $N5002, $I5003
    islt $I5001, $N5001, $N5002
    set $I5010, $I5001
    unless $I5001 goto if476_end985 
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5006, $P5010, $P5011, "$!pos"
    ord $I5005, $S101, $I5006
    set $N5003, $I5005
    set $N5004, 95
    iseq $I5004, $N5003, $N5004
    set $I5009, $I5004
    if $I5004 goto unless477_end987 
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5008, $P5012, $P5013, "$!pos"
    is_cclass $I5007, 4, $S101, $I5008
    set $I5009, $I5007
  unless477_end987:
    set $I5010, $I5009
  if476_end985:
    unless $I5010 goto if475_end983 
.annotate 'line', 982
    nqp_decontainerize $P5014, _lex_param_0
    find_lex $P5015, "$?CLASS"
    repr_get_attr_int $I5012, $P5014, $P5015, "$!pos"
    length $I5013, $S101
    find_not_cclass $I5011, 8192, $S101, $I5012, $I5013
    $P5016 = $P101."!cursor_pass"($I5011)
  if475_end983:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "alpha" :subid("cuid_68_1361633907.987") :anon :lex :outer("cuid_79_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 992
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "$target", $S101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P101, $P5001
    set $S101, ""
.annotate 'line', 993
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start_cur"()
    set $P101, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!shared"
    nqp_get_sc_object $P5007, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 32
    repr_get_attr_str $S5001, $P5006, $P5007, "$!target"
    set $S101, $S5001
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_int $I5002, $P5008, $P5009, "$!pos"
    set $N5001, $I5002
    length $I5003, $S101
    set $N5002, $I5003
    islt $I5001, $N5001, $N5002
    set $I5010, $I5001
    unless $I5001 goto if479_end991 
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, 4, $S101, $I5005
    set $I5009, $I5004
    if $I5004 goto unless480_end993 
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5008, $P5012, $P5013, "$!pos"
    ord $I5007, $S101, $I5008
    set $N5003, $I5007
    set $N5004, 95
    iseq $I5006, $N5003, $N5004
    set $I5009, $I5006
  unless480_end993:
    set $I5010, $I5009
  if479_end991:
    unless $I5010 goto if478_end989 
.annotate 'line', 995
    nqp_decontainerize $P5014, _lex_param_0
    find_lex $P5015, "$?CLASS"
    repr_get_attr_int $I5011, $P5014, $P5015, "$!pos"
    set $N5006, $I5011
    set $N5007, 1
    add $N5005, $N5006, $N5007
    $P5016 = $P101."!cursor_pass"($N5005, "alpha")
  if478_end989:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "alnum" :subid("cuid_69_1361633907.987") :anon :lex :outer("cuid_79_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1002
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "$target", $S101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P101, $P5001
    set $S101, ""
.annotate 'line', 1003
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start_cur"()
    set $P101, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!shared"
    nqp_get_sc_object $P5007, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 32
    repr_get_attr_str $S5001, $P5006, $P5007, "$!target"
    set $S101, $S5001
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_int $I5002, $P5008, $P5009, "$!pos"
    set $N5001, $I5002
    length $I5003, $S101
    set $N5002, $I5003
    islt $I5001, $N5001, $N5002
    set $I5010, $I5001
    unless $I5001 goto if482_end997 
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, 2048, $S101, $I5005
    set $I5009, $I5004
    if $I5004 goto unless483_end999 
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5008, $P5012, $P5013, "$!pos"
    ord $I5007, $S101, $I5008
    set $N5003, $I5007
    set $N5004, 95
    iseq $I5006, $N5003, $N5004
    set $I5009, $I5006
  unless483_end999:
    set $I5010, $I5009
  if482_end997:
    unless $I5010 goto if481_end995 
.annotate 'line', 1005
    nqp_decontainerize $P5014, _lex_param_0
    find_lex $P5015, "$?CLASS"
    repr_get_attr_int $I5011, $P5014, $P5015, "$!pos"
    set $N5006, $I5011
    set $N5007, 1
    add $N5005, $N5006, $N5007
    $P5016 = $P101."!cursor_pass"($N5005, "alnum")
  if481_end995:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "upper" :subid("cuid_70_1361633907.987") :anon :lex :outer("cuid_79_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1012
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "$target", $S101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P101, $P5001
    set $S101, ""
.annotate 'line', 1013
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start_cur"()
    set $P101, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!shared"
    nqp_get_sc_object $P5007, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 32
    repr_get_attr_str $S5001, $P5006, $P5007, "$!target"
    set $S101, $S5001
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_int $I5002, $P5008, $P5009, "$!pos"
    set $N5001, $I5002
    length $I5003, $S101
    set $N5002, $I5003
    islt $I5001, $N5001, $N5002
    set $I5006, $I5001
    unless $I5001 goto if485_end1003 
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, 1, $S101, $I5005
    set $I5006, $I5004
  if485_end1003:
    unless $I5006 goto if484_end1001 
.annotate 'line', 1015
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5007, $P5012, $P5013, "$!pos"
    set $N5004, $I5007
    set $N5005, 1
    add $N5003, $N5004, $N5005
    $P5014 = $P101."!cursor_pass"($N5003, "upper")
  if484_end1001:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "lower" :subid("cuid_71_1361633907.987") :anon :lex :outer("cuid_79_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1021
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "$target", $S101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P101, $P5001
    set $S101, ""
.annotate 'line', 1022
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start_cur"()
    set $P101, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!shared"
    nqp_get_sc_object $P5007, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 32
    repr_get_attr_str $S5001, $P5006, $P5007, "$!target"
    set $S101, $S5001
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_int $I5002, $P5008, $P5009, "$!pos"
    set $N5001, $I5002
    length $I5003, $S101
    set $N5002, $I5003
    islt $I5001, $N5001, $N5002
    set $I5006, $I5001
    unless $I5001 goto if487_end1007 
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, 2, $S101, $I5005
    set $I5006, $I5004
  if487_end1007:
    unless $I5006 goto if486_end1005 
.annotate 'line', 1024
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5007, $P5012, $P5013, "$!pos"
    set $N5004, $I5007
    set $N5005, 1
    add $N5003, $N5004, $N5005
    $P5014 = $P101."!cursor_pass"($N5003, "lower")
  if486_end1005:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "digit" :subid("cuid_72_1361633907.987") :anon :lex :outer("cuid_79_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1030
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "$target", $S101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P101, $P5001
    set $S101, ""
.annotate 'line', 1031
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start_cur"()
    set $P101, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!shared"
    nqp_get_sc_object $P5007, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 32
    repr_get_attr_str $S5001, $P5006, $P5007, "$!target"
    set $S101, $S5001
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_int $I5002, $P5008, $P5009, "$!pos"
    set $N5001, $I5002
    length $I5003, $S101
    set $N5002, $I5003
    islt $I5001, $N5001, $N5002
    set $I5006, $I5001
    unless $I5001 goto if489_end1011 
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, 8, $S101, $I5005
    set $I5006, $I5004
  if489_end1011:
    unless $I5006 goto if488_end1009 
.annotate 'line', 1033
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5007, $P5012, $P5013, "$!pos"
    set $N5004, $I5007
    set $N5005, 1
    add $N5003, $N5004, $N5005
    $P5014 = $P101."!cursor_pass"($N5003, "digit")
  if488_end1009:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "xdigit" :subid("cuid_73_1361633907.987") :anon :lex :outer("cuid_79_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1039
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "$target", $S101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P101, $P5001
    set $S101, ""
.annotate 'line', 1040
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start_cur"()
    set $P101, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!shared"
    nqp_get_sc_object $P5007, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 32
    repr_get_attr_str $S5001, $P5006, $P5007, "$!target"
    set $S101, $S5001
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_int $I5002, $P5008, $P5009, "$!pos"
    set $N5001, $I5002
    length $I5003, $S101
    set $N5002, $I5003
    islt $I5001, $N5001, $N5002
    set $I5006, $I5001
    unless $I5001 goto if491_end1015 
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, 16, $S101, $I5005
    set $I5006, $I5004
  if491_end1015:
    unless $I5006 goto if490_end1013 
.annotate 'line', 1042
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5007, $P5012, $P5013, "$!pos"
    set $N5004, $I5007
    set $N5005, 1
    add $N5003, $N5004, $N5005
    $P5014 = $P101."!cursor_pass"($N5003, "xdigit")
  if490_end1013:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "space" :subid("cuid_74_1361633907.987") :anon :lex :outer("cuid_79_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1048
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "$target", $S101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P101, $P5001
    set $S101, ""
.annotate 'line', 1049
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start_cur"()
    set $P101, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!shared"
    nqp_get_sc_object $P5007, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 32
    repr_get_attr_str $S5001, $P5006, $P5007, "$!target"
    set $S101, $S5001
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_int $I5002, $P5008, $P5009, "$!pos"
    set $N5001, $I5002
    length $I5003, $S101
    set $N5002, $I5003
    islt $I5001, $N5001, $N5002
    set $I5006, $I5001
    unless $I5001 goto if493_end1019 
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, 32, $S101, $I5005
    set $I5006, $I5004
  if493_end1019:
    unless $I5006 goto if492_end1017 
.annotate 'line', 1051
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5007, $P5012, $P5013, "$!pos"
    set $N5004, $I5007
    set $N5005, 1
    add $N5003, $N5004, $N5005
    $P5014 = $P101."!cursor_pass"($N5003, "space")
  if492_end1017:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "blank" :subid("cuid_75_1361633907.987") :anon :lex :outer("cuid_79_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1057
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "$target", $S101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P101, $P5001
    set $S101, ""
.annotate 'line', 1058
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start_cur"()
    set $P101, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!shared"
    nqp_get_sc_object $P5007, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 32
    repr_get_attr_str $S5001, $P5006, $P5007, "$!target"
    set $S101, $S5001
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_int $I5002, $P5008, $P5009, "$!pos"
    set $N5001, $I5002
    length $I5003, $S101
    set $N5002, $I5003
    islt $I5001, $N5001, $N5002
    set $I5006, $I5001
    unless $I5001 goto if495_end1023 
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, 256, $S101, $I5005
    set $I5006, $I5004
  if495_end1023:
    unless $I5006 goto if494_end1021 
.annotate 'line', 1060
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5007, $P5012, $P5013, "$!pos"
    set $N5004, $I5007
    set $N5005, 1
    add $N5003, $N5004, $N5005
    $P5014 = $P101."!cursor_pass"($N5003, "blank")
  if494_end1021:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "cntrl" :subid("cuid_76_1361633907.987") :anon :lex :outer("cuid_79_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1066
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "$target", $S101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P101, $P5001
    set $S101, ""
.annotate 'line', 1067
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start_cur"()
    set $P101, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!shared"
    nqp_get_sc_object $P5007, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 32
    repr_get_attr_str $S5001, $P5006, $P5007, "$!target"
    set $S101, $S5001
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_int $I5002, $P5008, $P5009, "$!pos"
    set $N5001, $I5002
    length $I5003, $S101
    set $N5002, $I5003
    islt $I5001, $N5001, $N5002
    set $I5006, $I5001
    unless $I5001 goto if497_end1027 
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, 512, $S101, $I5005
    set $I5006, $I5004
  if497_end1027:
    unless $I5006 goto if496_end1025 
.annotate 'line', 1069
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5007, $P5012, $P5013, "$!pos"
    set $N5004, $I5007
    set $N5005, 1
    add $N5003, $N5004, $N5005
    $P5014 = $P101."!cursor_pass"($N5003, "cntrl")
  if496_end1025:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "punct" :subid("cuid_77_1361633907.987") :anon :lex :outer("cuid_79_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1075
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "$target", $S101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P101, $P5001
    set $S101, ""
.annotate 'line', 1076
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start_cur"()
    set $P101, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!shared"
    nqp_get_sc_object $P5007, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 32
    repr_get_attr_str $S5001, $P5006, $P5007, "$!target"
    set $S101, $S5001
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_int $I5002, $P5008, $P5009, "$!pos"
    set $N5001, $I5002
    length $I5003, $S101
    set $N5002, $I5003
    islt $I5001, $N5001, $N5002
    set $I5006, $I5001
    unless $I5001 goto if499_end1031 
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, 1024, $S101, $I5005
    set $I5006, $I5004
  if499_end1031:
    unless $I5006 goto if498_end1029 
.annotate 'line', 1078
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5007, $P5012, $P5013, "$!pos"
    set $N5004, $I5007
    set $N5005, 1
    add $N5003, $N5004, $N5005
    $P5014 = $P101."!cursor_pass"($N5003, "punct")
  if498_end1029:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "FAILGOAL" :subid("cuid_78_1361633907.987") :anon :lex :outer("cuid_79_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1084
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :optional 
    .param int haz_param_21 :opt_flag 
    .lex "self", _lex_param_0 
    .lex "$goal", _lex_param_1 
    .lex "$dba", _lex_param_2 
    if haz_param_21, default1034
    nqp_get_sc_object $P5004, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set _lex_param_2, $P5004
  default1034:
    if _lex_param_2 goto unless500_end1033 
.annotate 'line', 1085
    getinterp $P5001
    set $P5001, $P5001['sub';1]
    set $S5001, $P5001
    box $P5002, $S5001
    set _lex_param_2, $P5002
  unless500_end1033:
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
.sub "" :subid("cuid_145_1361633907.987") :anon :lex :outer("cuid_143_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1093
    .const 'Sub' $P5013 = 'cuid_80_1361633907.987' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_81_1361633907.987' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_82_1361633907.987' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_83_1361633907.987' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_84_1361633907.987' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_85_1361633907.987' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_86_1361633907.987' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_87_1361633907.987' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_88_1361633907.987' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_89_1361633907.987' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_90_1361633907.987' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_91_1361633907.987' 
    capture_lex $P5013 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_80_1361633907.987' 
    capture_lex $P5001
    .const 'Sub' $P5002 = 'cuid_81_1361633907.987' 
    capture_lex $P5002
    .const 'Sub' $P5003 = 'cuid_82_1361633907.987' 
    capture_lex $P5003
    .const 'Sub' $P5004 = 'cuid_83_1361633907.987' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_84_1361633907.987' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_85_1361633907.987' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_86_1361633907.987' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_87_1361633907.987' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_88_1361633907.987' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_89_1361633907.987' 
    capture_lex $P5010
    .const 'Sub' $P5011 = 'cuid_90_1361633907.987' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_91_1361633907.987' 
    capture_lex $P5012
    .return ($P5012) 
.end
.HLL "nqp"
.namespace []
.sub "from" :subid("cuid_80_1361633907.987") :anon :lex :outer("cuid_145_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1100
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 86
    repr_get_attr_int $I5001, $P5001, $P5002, "$!from"
    .return ($I5001) 
.end
.HLL "nqp"
.namespace []
.sub "orig" :subid("cuid_81_1361633907.987") :anon :lex :outer("cuid_145_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1101
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 86
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!orig"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "to" :subid("cuid_82_1361633907.987") :anon :lex :outer("cuid_145_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1102
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 86
    repr_get_attr_int $I5001, $P5001, $P5002, "$!to"
    .return ($I5001) 
.end
.HLL "nqp"
.namespace []
.sub "CURSOR" :subid("cuid_83_1361633907.987") :anon :lex :outer("cuid_145_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1103
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 86
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!cursor"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "Str" :subid("cuid_84_1361633907.987") :anon :lex :outer("cuid_145_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1104
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 86
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!orig"
    set $S5002, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 86
    repr_get_attr_int $I5001, $P5004, $P5005, "$!from"
    nqp_decontainerize $P5006, _lex_param_0
    nqp_get_sc_object $P5007, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 86
    repr_get_attr_int $I5002, $P5006, $P5007, "$!to"
    set $N5002, $I5002
    nqp_decontainerize $P5008, _lex_param_0
    nqp_get_sc_object $P5009, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 86
    repr_get_attr_int $I5003, $P5008, $P5009, "$!from"
    set $N5003, $I5003
    sub $N5001, $N5002, $N5003
    set $I5004, $N5001
    substr $S5001, $S5002, $I5001, $I5004
    .return ($S5001) 
.end
.HLL "nqp"
.namespace []
.sub "Int" :subid("cuid_85_1361633907.987") :anon :lex :outer("cuid_145_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1105
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    $P5002 = $P5001."Str"()
    set $N5001, $P5002
    .return ($N5001) 
.end
.HLL "nqp"
.namespace []
.sub "Num" :subid("cuid_86_1361633907.987") :anon :lex :outer("cuid_145_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1106
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    $P5002 = $P5001."Str"()
    set $N5001, $P5002
    .return ($N5001) 
.end
.HLL "nqp"
.namespace []
.sub "Bool" :subid("cuid_87_1361633907.987") :anon :lex :outer("cuid_145_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1107
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 86
    repr_get_attr_int $I5002, $P5001, $P5002, "$!to"
    set $N5001, $I5002
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 86
    repr_get_attr_int $I5003, $P5003, $P5004, "$!from"
    set $N5002, $I5003
    isge $I5001, $N5001, $N5002
    .return ($I5001) 
.end
.HLL "nqp"
.namespace []
.sub "chars" :subid("cuid_88_1361633907.987") :anon :lex :outer("cuid_145_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1108
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 86
    repr_get_attr_int $I5002, $P5001, $P5002, "$!to"
    set $N5001, $I5002
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 86
    repr_get_attr_int $I5003, $P5003, $P5004, "$!from"
    set $N5002, $I5003
    isge $I5001, $N5001, $N5002
    unless $I5001 goto if501_else1035 
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 86
    repr_get_attr_int $I5004, $P5005, $P5006, "$!to"
    set $N5004, $I5004
    nqp_decontainerize $P5007, _lex_param_0
    nqp_get_sc_object $P5008, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 86
    repr_get_attr_int $I5005, $P5007, $P5008, "$!from"
    set $N5005, $I5005
    sub $N5003, $N5004, $N5005
    box $P5010, $N5003
    set $P5009, $P5010
    goto if501_end1036
  if501_else1035:
    box $P5011, 0
    set $P5009, $P5011
  if501_end1036:
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "!make" :subid("cuid_89_1361633907.987") :anon :lex :outer("cuid_145_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1110
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$ast", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 86
    repr_bind_attr_obj $P5001, $P5002, "$!ast", _lex_param_1
    .return (_lex_param_1) 
.end
.HLL "nqp"
.namespace []
.sub "ast" :subid("cuid_90_1361633907.987") :anon :lex :outer("cuid_145_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1111
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 86
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!ast"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "!dump_str" :subid("cuid_91_1361633907.987") :anon :lex :outer("cuid_145_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1113
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5019 = 'cuid_148_1361633907.987' 
    capture_lex $P5019 
    .const 'Sub' $P5019 = 'cuid_149_1361633907.987' 
    capture_lex $P5019 
    .lex "&dump_array", $P101 
    .lex "$str", $P102 
    .lex "self", _lex_param_0 
    .lex "$key", _lex_param_1 
    .const 'Sub' $P5001 = 'cuid_148_1361633907.987' 
    capture_lex $P5001
    set $P101, $P5001
    nqp_get_sc_object $P5002, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P102, $P5002
    set $S5006, _lex_param_1
    concat $S5005, $S5006, ": "
.annotate 'line', 1125
    nqp_decontainerize $P5003, _lex_param_0
    $P5004 = $P5003."Str"()
    set $S5008, $P5004
    escape $S5007, $S5008
    concat $S5004, $S5005, $S5007
    concat $S5003, $S5004, " @ "
    nqp_decontainerize $P5005, _lex_param_0
    $P5006 = $P5005."from"()
    set $S5009, $P5006
    concat $S5002, $S5003, $S5009
    concat $S5001, $S5002, "\n"
    box $P5007, $S5001
    set $P102, $P5007
    set $S5011, $P102
.annotate 'line', 1126
    nqp_decontainerize $P5008, _lex_param_0
    $P5009 = $P5008."list"()
    $P5010 = "&dump_array"(_lex_param_1, $P5009)
    set $S5012, $P5010
    concat $S5010, $S5011, $S5012
    box $P5011, $S5010
    set $P102, $P5011
.annotate 'line', 1127
    nqp_decontainerize $P5015, _lex_param_0
    $P5016 = $P5015."hash"()
    set $P5012, $P5016
    iter $P5014, $P5016
  for_next1044:
    unless $P5014, for_done1046
    shift $P5018, $P5014
  for_redo1045:
    .const 'Sub' $P5017 = 'cuid_149_1361633907.987' 
    capture_lex $P5017
    $P5012 = $P5017($P5018)
    goto for_next1044
  for_done1046:
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "dump_array" :subid("cuid_148_1361633907.987") :anon :lex :outer("cuid_91_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1114
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5011 = 'cuid_147_1361633907.987' 
    capture_lex $P5011 
    .lex "$str", $P101 
    .lex "$key", _lex_param_0 
    .lex "$item", _lex_param_1 
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P101, $P5001
    box $P5002, ""
    set $P101, $P5002
.annotate 'line', 1116
    nqp_get_sc_object $P5003, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 42
    $P5004 = $P5003."ACCEPTS"(_lex_param_1)
    unless $P5004 goto if502_else1037 
    set $S5002, $P101
.annotate 'line', 1117
    $P5005 = _lex_param_1."!dump_str"(_lex_param_0)
    set $S5003, $P5005
    concat $S5001, $S5002, $S5003
    box $P5006, $S5001
    set $P101, $P5006
    goto if502_end1038
  if502_else1037:
    isnull $I5002, _lex_param_1
    not $I5001, $I5002
    box $P5010, $I5001
    set $P5009, $P5010
    unless $I5001 goto if503_end1040 
    .const 'Sub' $P5007 = 'cuid_147_1361633907.987' 
    capture_lex $P5007
    $P5008 = $P5007()
    set $P5009, $P5008
  if503_end1040:
  if502_end1038:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_147_1361633907.987") :anon :lex :outer("cuid_148_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1119
    .const 'Sub' $P5009 = 'cuid_146_1361633907.987' 
    capture_lex $P5009 
    .lex "$n", $P101 
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P101, $P5001
    box $P5002, 0
    set $P101, $P5002
    find_lex $P5006, "$item"
    set $P5003, $P5006
    iter $P5005, $P5006
  for_next1041:
    unless $P5005, for_done1043
    shift $P5008, $P5005
  for_redo1042:
    .const 'Sub' $P5007 = 'cuid_146_1361633907.987' 
    capture_lex $P5007
    $P5003 = $P5007($P5008)
    goto for_next1041
  for_done1043:
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_146_1361633907.987") :anon :lex :outer("cuid_147_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1121
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    .local pmc tmp_8 
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
    set tmp_8, $P5006
    set $N5002, tmp_8
    set $N5003, 1
    add $N5001, $N5002, $N5003
    box $P5007, $N5001
    store_lex "$n", $P5007
    .return (tmp_8) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_149_1361633907.987") :anon :lex :outer("cuid_91_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1127
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
.sub "" :subid("cuid_151_1361633907.987") :anon :lex :outer("cuid_143_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1132
    .const 'Sub' $P5010 = 'cuid_92_1361633907.987' 
    capture_lex $P5010 
    .const 'Sub' $P5010 = 'cuid_93_1361633907.987' 
    capture_lex $P5010 
    .const 'Sub' $P5010 = 'cuid_94_1361633907.987' 
    capture_lex $P5010 
    .const 'Sub' $P5010 = 'cuid_95_1361633907.987' 
    capture_lex $P5010 
    .const 'Sub' $P5010 = 'cuid_96_1361633907.987' 
    capture_lex $P5010 
    .lex "$EMPTY_MATCH_LIST", $P101 
    .lex "$EMPTY_MATCH_HASH", $P102 
    .lex "$?PACKAGE", $P103 
    .lex "$?CLASS", $P104 
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P102, $P5002
    new $P5003, 'ResizablePMCArray'
    set $P101, $P5003
    new $P5004, 'Hash'
    set $P102, $P5004
    .const 'Sub' $P5005 = 'cuid_92_1361633907.987' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_93_1361633907.987' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_94_1361633907.987' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_95_1361633907.987' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_96_1361633907.987' 
    capture_lex $P5009
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "MATCH" :subid("cuid_92_1361633907.987") :anon :lex :outer("cuid_151_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1135
    .param pmc _lex_param_0 
    .const 'Sub' $P5008 = 'cuid_150_1361633907.987' 
    capture_lex $P5008 
    .lex "$match", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P101, $P5001
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 99
    getattribute $P5002, $P5003, $P5004, "$!match"
    set $P101, $P5002
    nqp_get_sc_object $P5005, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 86
    type_check $I5001, $P101, $P5005
    set $I5003, $I5001
    if $I5001 goto unless505_end1050 
    nqp_ishash $I5002, $P101
    set $I5003, $I5002
  unless505_end1050:
    if $I5003 goto unless504_end1048 
    .const 'Sub' $P5006 = 'cuid_150_1361633907.987' 
    capture_lex $P5006
    $P5007 = $P5006()
  unless504_end1048:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_150_1361633907.987") :anon :lex :outer("cuid_92_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1137
    .lex "$list", $P101 
    .lex "$hash", $P102 
    .lex "%ch", $P103 
    .lex "$curcap", $P104 
    .lex "$key", $S101 
    .lex "$iter", $P105 
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P102, $P5002
    new $P5003, 'Hash'
    set $P103, $P5003
    nqp_get_sc_object $P5004, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P104, $P5004
    set $S101, ""
    nqp_get_sc_object $P5005, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P105, $P5005
    find_lex $P5006, "$EMPTY_MATCH_LIST"
    set $P101, $P5006
    find_lex $P5007, "$EMPTY_MATCH_HASH"
    set $P102, $P5007
    nqp_get_sc_object $P5009, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 86
    repr_instance_of $P5008, $P5009
    store_lex "$match", $P5008
    find_lex $P5011, "self"
    nqp_decontainerize $P5010, $P5011
    nqp_get_sc_object $P5012, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 99
    find_lex $P5013, "$match"
    setattribute $P5010, $P5012, "$!match", $P5013
    find_lex $P5014, "$match"
    nqp_get_sc_object $P5015, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 86
    find_lex $P5017, "self"
    nqp_decontainerize $P5016, $P5017
    setattribute $P5014, $P5015, "$!cursor", $P5016
    find_lex $P5018, "$match"
    nqp_get_sc_object $P5019, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 86
.annotate 'line', 1143
    find_lex $P5021, "self"
    nqp_decontainerize $P5020, $P5021
    $P5022 = $P5020."orig"()
    setattribute $P5018, $P5019, "$!orig", $P5022
    find_lex $P5023, "$match"
    nqp_get_sc_object $P5024, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 86
    find_lex $P5026, "self"
    nqp_decontainerize $P5025, $P5026
    nqp_get_sc_object $P5027, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 99
    repr_get_attr_int $I5001, $P5025, $P5027, "$!from"
    repr_bind_attr_int $P5023, $P5024, "$!from", $I5001
    find_lex $P5028, "$match"
    nqp_get_sc_object $P5029, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 86
    find_lex $P5031, "self"
    nqp_decontainerize $P5030, $P5031
    nqp_get_sc_object $P5032, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 99
    repr_get_attr_int $I5002, $P5030, $P5032, "$!pos"
    repr_bind_attr_int $P5028, $P5029, "$!to", $I5002
.annotate 'line', 1146
    find_lex $P5034, "self"
    nqp_decontainerize $P5033, $P5034
    $P5035 = $P5033."CAPHASH"()
    set $P103, $P5035
    iter $P5036, $P103
    set $P105, $P5036
  while506_test1051:
    set $P5050, $P105
    unless $P105 goto while506_done1055 
  while506_redo1053:
.annotate 'line', 1150
    shift $P5037, $P105
    set $P104, $P5037
    $P5038 = $P104."key"()
    set $S5001, $P5038
    set $S101, $S5001
    iseq $I5003, $S101, "$!from"
    set $I5005, $I5003
    if $I5003 goto unless508_end1059 
    iseq $I5004, $S101, "$!to"
    set $I5005, $I5004
  unless508_end1059:
    unless $I5005 goto if507_else1056 
.annotate 'line', 1153
    find_lex $P5039, "$match"
    nqp_get_sc_object $P5040, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 86
.annotate 'line', 1154
    $P5041 = $P104."value"()
    $P5042 = $P5041."from"()
    set $I5006, $P5042
    repr_bind_attr_int $P5039, $P5040, $S101, $I5006
    box $P5049, $I5006
    set $P5048, $P5049
    goto if507_end1057
  if507_else1056:
    is_cclass $I5007, 8, $S101, 0
    unless $I5007 goto if509_else1060 
.annotate 'line', 1156
    if $P101 goto unless510_end1063 
    new $P5043, 'ResizablePMCArray'
    set $P101, $P5043
  unless510_end1063:
    set $I5008, $S101
    $P5044 = $P104."value"()
    set $P101[$I5008], $P5044
    set $P5047, $P5044
    goto if509_end1061
  if509_else1060:
.annotate 'line', 1160
    if $P102 goto unless511_end1065 
    new $P5045, 'Hash'
    set $P102, $P5045
  unless511_end1065:
    $P5046 = $P104."value"()
    set $P102[$S101], $P5046
    set $P5047, $P5046
  if509_end1061:
    set $P5048, $P5047
  if507_end1057:
    set $P5050, $P5048
    goto while506_test1051 
  while506_done1055:
    find_lex $P5051, "$match"
    nqp_get_sc_object $P5052, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 42
    setattribute $P5051, $P5052, "@!array", $P101
    find_lex $P5053, "$match"
    nqp_get_sc_object $P5054, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 42
    setattribute $P5053, $P5054, "%!hash", $P102
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "Bool" :subid("cuid_93_1361633907.987") :anon :lex :outer("cuid_151_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1171
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5002, _lex_param_0
    find_lex $P5003, "$?CLASS"
    getattribute $P5001, $P5002, $P5003, "$!match"
    isnull $I5002, $P5001
    not $I5001, $I5002
    set $I5004, $I5001
    unless $I5001 goto if512_end1067 
    nqp_decontainerize $P5005, _lex_param_0
    find_lex $P5006, "$?CLASS"
    getattribute $P5004, $P5005, $P5006, "$!match"
    istrue $I5003, $P5004
    set $I5004, $I5003
  if512_end1067:
    .return ($I5004) 
.end
.HLL "nqp"
.namespace []
.sub "parse" :subid("cuid_94_1361633907.987") :anon :lex :outer("cuid_151_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1176
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :named("rule") :optional 
    .param int haz_param_22 :opt_flag 
    .param pmc _lex_param_3 :named("actions") :optional 
    .param int haz_param_23 :opt_flag 
    .param pmc _lex_param_4 :slurpy :named 
    .lex "$*ACTIONS", $P101 
    .lex "$cur", $P102 
    .lex "self", _lex_param_0 
    .lex "$target", _lex_param_1 
    .lex "$rule", _lex_param_2 
    .lex "$actions", _lex_param_3 
    .lex "%options", _lex_param_4 
    if haz_param_22, default1070
    box $P5011, "TOP"
    set _lex_param_2, $P5011
  default1070:
    if haz_param_23, default1071
    nqp_get_sc_object $P5012, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set _lex_param_3, $P5012
  default1071:
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P102, $P5002
    set $P101, _lex_param_3
.annotate 'line', 1178
    nqp_decontainerize $P5003, _lex_param_0
    $P5004 = $P5003."!cursor_init"(_lex_param_1, _lex_param_4 :flat :named)
    set $P102, $P5004
    is_invokable $I5001, _lex_param_2
    unless $I5001 goto if513_else1068 
.annotate 'line', 1180
    $P5005 = _lex_param_2($P102)
    $P5006 = $P5005."MATCH"()
    set $P5010, $P5006
    goto if513_end1069
  if513_else1068:
.annotate 'line', 1181
    set $S5001, _lex_param_2
    find_method $P5007, $P102, $S5001
    $P5008 = $P5007($P102)
    $P5009 = $P5008."MATCH"()
    set $P5010, $P5009
  if513_end1069:
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "!INTERPOLATE" :subid("cuid_95_1361633907.987") :anon :lex :outer("cuid_151_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1184
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :optional 
    .param int haz_param_24 :opt_flag 
    .const 'Sub' $P5007 = 'cuid_156_1361633907.987' 
    capture_lex $P5007 
    .const 'Sub' $P5007 = 'cuid_157_1361633907.987' 
    capture_lex $P5007 
    .lex "self", _lex_param_0 
    .lex "$var", _lex_param_1 
    .lex "$s", _lex_param_2 
    if haz_param_24, default1104
    box $P5006, 0
    set _lex_param_2, $P5006
  default1104:
    root_new $P101, ['parrot';'Continuation']
    set_label $P101, lexotic_1072
    .lex "RETURN", $P101
    nqp_islist $I5001, _lex_param_1
    unless $I5001 goto if514_else1074 
    .const 'Sub' $P5001 = 'cuid_156_1361633907.987' 
    capture_lex $P5001
    $P5002 = $P5001()
    set $P5005, $P5002
    goto if514_end1075
  if514_else1074:
    .const 'Sub' $P5003 = 'cuid_157_1361633907.987' 
    capture_lex $P5003
    $P5004 = $P5003()
    set $P5005, $P5004
  if514_end1075:
    goto lexotic_1073
  lexotic_1072:
    .get_results ($P5005)
  lexotic_1073:
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_156_1361633907.987") :anon :lex :outer("cuid_95_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1185
    .const 'Sub' $P5017 = 'cuid_154_1361633907.987' 
    capture_lex $P5017 
    .lex "$maxlen", $I101 
    .lex "$cur", $P101 
    .lex "$pos", $I102 
    .lex "$tgt", $S101 
    .lex "$eos", $I103 
    set $I101, 0
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P101, $P5001
    set $I102, 0
    set $S101, ""
    set $I103, 0
    set $I101, -1
.annotate 'line', 1187
    find_lex $P5003, "self"
    nqp_decontainerize $P5002, $P5003
    $P5004 = $P5002."!cursor_start_cur"()
    set $P101, $P5004
    find_lex $P5005, "$?CLASS"
    repr_get_attr_int $I5001, $P101, $P5005, "$!from"
    set $I102, $I5001
.annotate 'line', 1189
    $P5006 = $P101."target"()
    set $S5001, $P5006
    set $S101, $S5001
    length $I5002, $S101
    set $I103, $I5002
    find_lex $P5010, "$var"
    set $P5007, $P5010
    iter $P5009, $P5010
    new $P5012, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5012, for_handlers1092
    push_eh $P5012
  for_next1093:
    unless $P5009, for_done1095
    shift $P5013, $P5009
  for_redo1094:
    .const 'Sub' $P5011 = 'cuid_154_1361633907.987' 
    capture_lex $P5011
    $P5007 = $P5011($P5013)
    goto for_next1093
  for_handlers1092:
    .get_results ($P5012)
    pop_upto_eh $P5012
    getattribute $P5012, $P5012, 'type'
    eq $P5012, .CONTROL_LOOP_NEXT, for_next1093
    eq $P5012, .CONTROL_LOOP_REDO, for_redo1094
  for_done1095:
    pop_eh 
    set $N5001, $I101
    set $N5002, 0
    isge $I5003, $N5001, $N5002
    unless $I5003 goto if523_end1097 
.annotate 'line', 1207
    set $N5004, $I102
    set $N5005, $I101
    add $N5003, $N5004, $N5005
    $P5014 = $P101."!cursor_pass"($N5003, "")
  if523_end1097:
    find_lex $P5015, "RETURN"
    $P5016 = $P5015($P101)
    .return ($P5016) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_154_1361633907.987") :anon :lex :outer("cuid_156_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1191
    .param pmc _lex_param_0 
    .const 'Sub' $P5010 = 'cuid_153_1361633907.987' 
    capture_lex $P5010 
    .const 'Sub' $P5010 = 'cuid_155_1361633907.987' 
    capture_lex $P5010 
    .lex "$_", _lex_param_0 
    is_invokable $I5001, _lex_param_0
    unless $I5001 goto if515_else1076 
    .const 'Sub' $P5001 = 'cuid_153_1361633907.987' 
    capture_lex $P5001
    $P5002 = $P5001()
    goto if515_end1077
  if515_else1076:
    .const 'Sub' $P5003 = 'cuid_155_1361633907.987' 
    capture_lex $P5003
    $P5004 = $P5003()
  if515_end1077:
    find_lex $P5005, "$s"
    set $P5006, $P5005
    unless $P5005 goto if522_end1091 
    find_lex $I5003, "$maxlen"
    set $N5001, $I5003
    set $N5002, -1
    isgt $I5002, $N5001, $N5002
    box $P5007, $I5002
    set $P5006, $P5007
  if522_end1091:
    set $P5008, $P5006
    unless $P5006 goto if521_end1089 
    die 0, .CONTROL_LOOP_LAST
    box $P5009, 0
    set $P5008, $P5009
  if521_end1089:
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_153_1361633907.987") :anon :lex :outer("cuid_154_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1192
    .const 'Sub' $P5009 = 'cuid_152_1361633907.987' 
    capture_lex $P5009 
    .lex "$res", $P101 
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P101, $P5001
.annotate 'line', 1193
    find_lex $P5004, "self"
    nqp_decontainerize $P5003, $P5004
    find_lex $P5002, "$_"
    $P5005 = $P5002($P5003)
    set $P101, $P5005
    set $P5008, $P101
    unless $P101 goto if516_end1079 
    .const 'Sub' $P5006 = 'cuid_152_1361633907.987' 
    capture_lex $P5006
    $P5007 = $P5006()
    set $P5008, $P5007
  if516_end1079:
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_152_1361633907.987") :anon :lex :outer("cuid_153_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1194
    .lex "$adv", $I101 
    set $I101, 0
    find_lex $P5001, "$res"
    find_lex $P5002, "$?CLASS"
    repr_get_attr_int $I5001, $P5001, $P5002, "$!pos"
    set $I101, $I5001
    set $N5002, $I101
    find_lex $I5002, "$pos"
    set $N5003, $I5002
    sub $N5001, $N5002, $N5003
    set $I5003, $N5001
    set $I101, $I5003
    set $N5004, $I101
    find_lex $I5005, "$maxlen"
    set $N5005, $I5005
    isgt $I5004, $N5004, $N5005
    set $I5006, $I5004
    unless $I5004 goto if517_end1081 
    store_lex "$maxlen", $I101
    set $I5006, $I101
  if517_end1081:
    .return ($I5006) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_155_1361633907.987") :anon :lex :outer("cuid_154_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1200
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
    set $I5007, $I5002
    unless $I5002 goto if520_end1087 
    find_lex $I5005, "$pos"
    set $N5004, $I5005
    set $N5005, $I101
    add $N5003, $N5004, $N5005
    find_lex $I5006, "$eos"
    set $N5006, $I5006
    isle $I5004, $N5003, $N5006
    set $I5007, $I5004
  if520_end1087:
    set $I5010, $I5007
    unless $I5007 goto if519_end1085 
    find_lex $S5003, "$tgt"
    find_lex $I5009, "$pos"
    substr $S5002, $S5003, $I5009, $I101
    find_lex $P5002, "$_"
    set $S5004, $P5002
    iseq $I5008, $S5002, $S5004
    set $I5010, $I5008
  if519_end1085:
    set $I5011, $I5010
    unless $I5010 goto if518_end1083 
    store_lex "$maxlen", $I101
    set $I5011, $I101
  if518_end1083:
    .return ($I5011) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_157_1361633907.987") :anon :lex :outer("cuid_95_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1210
    .lex "$cur", $P101 
    .lex "$pos", $I101 
    .lex "$tgt", $S101 
    .lex "$len", $I102 
    .lex "$adv", $I103 
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P101, $P5001
    set $I101, 0
    set $S101, ""
    set $I102, 0
    set $I103, 0
    find_lex $P5002, "$var"
    is_invokable $I5001, $P5002
    unless $I5001 goto if524_end1099 
.annotate 'line', 1211
    find_lex $P5006, "self"
    nqp_decontainerize $P5005, $P5006
    find_lex $P5004, "$var"
    $P5007 = $P5004($P5005)
    find_lex $P5003, "RETURN"
    $P5008 = $P5003($P5007)
  if524_end1099:
.annotate 'line', 1212
    find_lex $P5010, "self"
    nqp_decontainerize $P5009, $P5010
    $P5011 = $P5009."!cursor_start_cur"()
    set $P101, $P5011
    find_lex $P5012, "$?CLASS"
    repr_get_attr_int $I5002, $P101, $P5012, "$!from"
    set $I101, $I5002
.annotate 'line', 1214
    $P5013 = $P101."target"()
    set $S5001, $P5013
    set $S101, $S5001
    find_lex $P5014, "$var"
    set $S5002, $P5014
    length $I5003, $S5002
    set $I102, $I5003
    set $N5002, $I101
    set $N5003, $I102
    add $N5001, $N5002, $N5003
    set $I5004, $N5001
    set $I103, $I5004
    set $N5004, $I103
    length $I5006, $S101
    set $N5005, $I5006
    isgt $I5005, $N5004, $N5005
    set $I5008, $I5005
    if $I5005 goto unless526_end1103 
    substr $S5003, $S101, $I101, $I102
    find_lex $P5015, "$var"
    set $S5004, $P5015
    isne $I5007, $S5003, $S5004
    set $I5008, $I5007
  unless526_end1103:
    unless $I5008 goto if525_end1101 
    find_lex $P5016, "RETURN"
    $P5017 = $P5016($P101)
  if525_end1101:
.annotate 'line', 1219
    $P101."!cursor_pass"($I103, "")
    find_lex $P5018, "RETURN"
    $P5019 = $P5018($P101)
    .return ($P5019) 
.end
.HLL "nqp"
.namespace []
.sub "!INTERPOLATE_REGEX" :subid("cuid_96_1361633907.987") :anon :lex :outer("cuid_151_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1224
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5007 = 'cuid_160_1361633907.987' 
    capture_lex $P5007 
    .lex "self", _lex_param_0 
    .lex "$var", _lex_param_1 
    root_new $P101, ['parrot';'Continuation']
    set_label $P101, lexotic_1105
    .lex "RETURN", $P101
    is_invokable $I5001, _lex_param_1
    if $I5001 goto unless527_end1108 
    .const 'Sub' $P5001 = 'cuid_160_1361633907.987' 
    capture_lex $P5001
    $P5002 = $P5001()
  unless527_end1108:
.annotate 'line', 1240
    nqp_decontainerize $P5004, _lex_param_0
    $P5005 = $P5004."!INTERPOLATE"(_lex_param_1)
    find_lex $P5003, "RETURN"
    $P5006 = $P5003($P5005)
    goto lexotic_1106
  lexotic_1105:
    .get_results ($P5006)
  lexotic_1106:
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_160_1361633907.987") :anon :lex :outer("cuid_96_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1225
    .const 'Sub' $P5009 = 'cuid_159_1361633907.987' 
    capture_lex $P5009 
    .lex "$rxcompiler", $P101 
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P101, $P5001
    compreg $P5002, "QRegex::P6Regex"
    set $P101, $P5002
    find_lex $P5003, "$var"
    nqp_islist $I5001, $P5003
    unless $I5001 goto if528_else1109 
    .const 'Sub' $P5004 = 'cuid_159_1361633907.987' 
    capture_lex $P5004
    $P5005 = $P5004()
    set $P5008, $P5005
    goto if528_end1110
  if528_else1109:
.annotate 'line', 1236
.annotate 'line', 1237
    find_lex $P5006, "$var"
    $P5007 = $P101."compile"($P5006)
    store_lex "$var", $P5007
    set $P5008, $P5007
  if528_end1110:
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_159_1361633907.987") :anon :lex :outer("cuid_160_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1227
    .const 'Sub' $P5009 = 'cuid_158_1361633907.987' 
    capture_lex $P5009 
    .lex "$res", $P101 
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P101, $P5001
    new $P5002, 'ResizablePMCArray'
    set $P101, $P5002
    find_lex $P5006, "$var"
    set $P5003, $P5006
    iter $P5005, $P5006
  for_next1113:
    unless $P5005, for_done1115
    shift $P5008, $P5005
  for_redo1114:
    .const 'Sub' $P5007 = 'cuid_158_1361633907.987' 
    capture_lex $P5007
    $P5003 = $P5007($P5008)
    goto for_next1113
  for_done1115:
    store_lex "$var", $P101
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_158_1361633907.987") :anon :lex :outer("cuid_159_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1229
    .param pmc _lex_param_0 
    .lex "$elem", $P101 
    .lex "$_", _lex_param_0 
    nqp_get_sc_object $P5001, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421", 25
    set $P101, $P5001
    set $P101, _lex_param_0
    is_invokable $I5001, $P101
    if $I5001 goto unless529_end1112 
.annotate 'line', 1231
    find_lex $P5002, "$rxcompiler"
    $P5003 = $P5002."compile"($P101)
    set $P101, $P5003
  unless529_end1112:
    find_lex $P5004, "$res"
    push $P5004, $P101
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_161_1361633907.987") :anon :lex :outer("cuid_143_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1244
    .const 'Sub' $P5004 = 'cuid_115_1361633907.987' 
    capture_lex $P5004 
    .const 'Sub' $P5004 = 'cuid_116_1361633907.987' 
    capture_lex $P5004 
    .const 'Sub' $P5004 = 'cuid_117_1361633907.987' 
    capture_lex $P5004 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_115_1361633907.987' 
    capture_lex $P5001
    .const 'Sub' $P5002 = 'cuid_116_1361633907.987' 
    capture_lex $P5002
    .const 'Sub' $P5003 = 'cuid_117_1361633907.987' 
    capture_lex $P5003
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "new" :subid("cuid_115_1361633907.987") :anon :lex :outer("cuid_161_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1246
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$code", _lex_param_1 
.annotate 'line', 1247
    nqp_decontainerize $P5001, _lex_param_0
    $P5002 = $P5001."bless"(_lex_param_1 :named("code"))
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "ACCEPTS" :subid("cuid_116_1361633907.987") :anon :lex :outer("cuid_161_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1249
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$target", _lex_param_1 
.annotate 'line', 1250
    nqp_get_sc_object $P5001, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 99
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5001."parse"(_lex_param_1, $P5002 :named("rule"))
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "Str" :subid("cuid_117_1361633907.987") :anon :lex :outer("cuid_161_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1252
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 105
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!code"
    set $S5001, $P5003
    .return ($S5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_162_1361633907.987") :anon :lex :outer("cuid_143_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1258
    .const 'Sub' $P5002 = 'cuid_118_1361633907.987' 
    capture_lex $P5002 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_118_1361633907.987' 
    capture_lex $P5001
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "ACCEPTS" :subid("cuid_118_1361633907.987") :anon :lex :outer("cuid_162_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1259
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$target", _lex_param_1 
.annotate 'line', 1260
    nqp_get_sc_object $P5001, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 99
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5001."parse"(_lex_param_1, $P5002 :named("rule"), 0 :named("c"))
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_164_1361633907.987") :load :init
.annotate 'file', "src\\stage2\\QRegex.nqp"
    .const 'Sub' $P5001 = 'cuid_163_1361633907.987' 
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
    .const 'Sub' $P5001 = "cuid_143_1361633907.987" 
    get_hll_global $P5002, "ModuleLoader"
    $P5003 = $P5002."load_setting"("NQPCORE")
    $P5004 = $P5001."set_outer_ctx"($P5003)
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P5001, "ModuleLoader"
    $P5001."load_module"("QASTNode")
    nqp_create_sc $P5001, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012"
    set cur_sc, $P5001
    $P5002 = cur_sc."set_description"("src\\stage2\\QRegex.nqp")
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
    push $P5004, "2A8A7D40F1209E89DEA83FB0626929DC3AB02EC5-1361633904.421"
    push $P5004, "src\\stage2\\NQPCORE.setting"
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
    push $P5004, "$!states"
    push $P5004, "$!edges"
    push $P5004, "$!generic"
    push $P5004, "$!nfa_object"
    push $P5004, "NFA"
    push $P5004, "$!orig"
    push $P5004, "$!target"
    push $P5004, "$!highwater"
    push $P5004, "@!highexpect"
    push $P5004, "%!marks"
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
    push $P5004, "$!code"
    push $P5004, "__6MODEL_CORE__"
    push $P5004, "GLOBALish"
    push $P5004, "EXPORT"
    push $P5004, "46A27B8E73DBD8EFB3FE1AA531DA4577B21729DD-1361633900.785"
    push $P5004, "src\\stage2\\gen\\nqp-mo.pm"
    push $P5004, "QRegex::NFA"
    push $P5004, "edges"
    push $P5004, "nfa_object"
    push $P5004, "NFAType"
    push $P5004, "highwater"
    push $P5004, "highexpect"
    push $P5004, "marks"
    push $P5004, "get_string"
    push $P5004, "get_integer"
    push $P5004, "get_number"
    push $P5004, "shared"
    push $P5004, "match"
    push $P5004, "name"
    push $P5004, "bstack"
    push $P5004, "cstack"
    push $P5004, "regexsub"
    push $P5004, "restart"
    push $P5004, "code"
    push $P5004, "CompileTimeValue"
    push $P5004, "8690B5CE9C56656BB436D83B9433E5C60A9D8366-1361633906.303"
    push $P5004, "src\\stage2\\QASTNode.nqp"
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
    push $P5004, "@start_result"
    push $P5004, "$pass_mark"
    push $P5004, "@EMPTY"
    push $P5004, "$?CLASS"
    .const 'Sub' $P5005 = 'cuid_163_1361633907.987' 
    capture_lex $P5005
    $P5006 = $P5005()
    nqp_deserialize_sc "AwAAAEAAAAAEAAAAYAAAAA4AAADQAAAA4hcAAMsAAACSJAAA6FAAADMAAACwVQAAAQAAAMBVAAAqVgAAAAAAAAwAAAANAAAAjQAAAAAAAACQAAAAkQAAAKUAAACmAAAAAQAAAAAAAAABAAAADAEAAAEAAADEAQAAAQAAAIoCAAA1AAAA0AUAAAEAAAAeBgAAOwAAABYIAAABAAAAZAgAAAEAAAB0CwAAAQAAACgRAAABAAAAsBIAAAEAAABOFAAAAQAAABAWAAA7AAAAyBYAAAAAAABvAAAAAAAAAAAAAAAKAAcAAAACAAAAAgAAAAAAcAAAAAMAAAACAAAAAABxAAAABAAAAAIAAAAAACEAAAAFAAAAAgAAAAAAVgAAAAYAAAACAAAAAABjAAAABwAAAAIAAAAAAGkAAAAIAAAAAgAAAAAAbQAAAAoAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAAAAAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAAAAAAAADAP////////////////////8AAAAAcgAAAAAAAAABAAAACgABAAAACQAAAAIAAAAAAAIAAAAKAAAAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAAAAQAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAQAAAAAAAAACAAAAAAABAAAAAwD/////////////////////AAAAAHMAAAAAAAAAAgAAAAoAAgAAAAoAAAACAAAAAAAgAAAABAAAAAIAAAAAACEAAAAKAAAAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAAAAgAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAQAAAAAAAAACAAAAAAACAAAAAwD/////////////////////AAAAAHQAAAAAAAAAAwAAAAoAAAAAAAoAJAAAAAsAAAACAAEAAAAaAAAADgAAAAIAAQAAABsAAAAPAAAAAgABAAAAHAAAABAAAAACAAAAAAAEAAAAEQAAAAIAAQAAAB4AAAASAAAAAgABAAAAIQAAABMAAAACAAEAAAAjAAAAFAAAAAIAAQAAACUAAAAVAAAAAgABAAAAJgAAABYAAAACAAEAAAAoAAAAFwAAAAIAAAAAAB8AAAAYAAAAAgAAAAAABQAAABkAAAACAAAAAAAGAAAAGgAAAAIAAAAAAAcAAAAbAAAAAgAAAAAACAAAABwAAAACAAAAAAAJAAAAHQAAAAIAAAAAAAoAAAAeAAAAAgAAAAAACwAAAB8AAAACAAAAAAAMAAAAIAAAAAIAAAAAAA0AAAAhAAAAAgAAAAAADgAAACIAAAACAAAAAAAPAAAAIwAAAAIAAAAAABAAAAAkAAAAAgAAAAAAEQAAACUAAAACAAAAAAASAAAAJgAAAAIAAAAAABMAAAAnAAAAAgAAAAAAFAAAACgAAAACAAAAAAAVAAAAKQAAAAIAAAAAABYAAAAqAAAAAgAAAAAAFwAAACsAAAACAAAAAAAYAAAALAAAAAIAAAAAABkAAAAtAAAAAgAAAAAAGwAAAC4AAAACAAAAAAAcAAAALwAAAAIAAAAAAB0AAAAwAAAAAgAAAAAAHgAAAAAAAAAAAAAAAgAAAAAAAAACAAAAAAADAAAAAgABAAAAGQAAAAQAAAAAAAAAAQAAAAAAAAAFAAAAAAAAAAMAAAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAEAAAACAAAAAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAgABAAAAGQAAAAIAAQAAABkAAAABAAIAAQAAABkAAAD///////////////////////////////8AAAAAAAAAAAIAAAAAAAAAAgABAAAAGQAAAAMAAgAAAAAAAwAAAAoABAAAADEAAAAEAAAAAAAAAAAAMgAAAAQAAQAAAAAAAAAzAAAABAACAAAAAAAAADQAAAAEAAMAAAAAAAAA/////////////////////wAAAAB1AAAAAAAAABoAAAAKAAAAAAAKAAAAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAAAGgAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAB2AAAAAAAAACAAAAAKAAAAAAAKAAsAAAALAAAAAgABAAAAGgAAAA4AAAACAAEAAAAbAAAADwAAAAIAAQAAABwAAAAQAAAAAgABAAAAHQAAABEAAAACAAEAAAAeAAAAEgAAAAIAAQAAACEAAAATAAAAAgABAAAAIwAAABQAAAACAAEAAAAlAAAAFQAAAAIAAQAAACYAAAAWAAAAAgABAAAAKAAAABcAAAACAAEAAAApAAAAAAAAAAAAAAACAAAAAAAAAAIAAAAAACAAAAACAAEAAAAZAAAABAAAAAAAAAABAAAAAAAAAAUAAAAAAAAAAwAAAAAAAAAAAAUAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAEAAAAEAAAAAQAAAAAAAAABAAAAAgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAgABAAAAGQAAAAEAAQABAAEA////////////////////////////////AAAAAAAAAAACAAAAAAAAAAIAAQAAABkAAAADAAIAAAAAACAAAAAKAAUAAAA2AAAABAAAAAAAAAAAADcAAAAEAAEAAAAAAAAAOAAAAAQAAgAAAAAAAAA5AAAABAADAAAAAAAAADoAAAAEAAQAAAAAAAAA/////////////////////wAAAAB3AAAAAAAAACEAAAAKAAAAAAAKAAAAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAAAIQAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAB4AAAAAAAAAFYAAAAKAAAAAAAKABgAAAALAAAAAgABAAAAGgAAAA4AAAACAAEAAAAbAAAADwAAAAIAAQAAABwAAAAQAAAAAgABAAAAKwAAABEAAAACAAAAAABbAAAAEgAAAAIAAQAAACEAAAATAAAAAgAAAAAAXAAAABQAAAACAAEAAAAlAAAAFQAAAAIAAQAAACYAAAAWAAAAAgABAAAAKAAAABcAAAACAAEAAAApAAAAPAAAAAIAAQAAACwAAAA9AAAAAgABAAAALQAAAD4AAAACAAEAAAAuAAAAPwAAAAIAAAAAAFcAAABAAAAAAgAAAAAAWAAAAEEAAAACAAAAAABZAAAAQgAAAAIAAAAAAFoAAABDAAAAAgAAAAAAXQAAAEQAAAACAAAAAABeAAAARQAAAAIAAAAAAF8AAABGAAAAAgAAAAAAYAAAAEcAAAACAAAAAABhAAAASAAAAAIAAAAAAGIAAAAAAAAAAAAAAAMAAAAAAAAAAgAAAAAAVgAAAAIAAQAAACoAAAACAAEAAAAZAAAABAAAAAAAAAABAAAAAAAAAAAAAAAAAAAAAgAAAAAAXgAAAAAAAAAAAAAABwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAEAAAACAAAAAQAAAAAAAAABAAAAAgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAQABAAIAAQAAABkAAAABAAEAAgABAAAAGQAAAAIAAQAAABkAAAD///////////////////////////////8AAAAAAAAAAAMAAAAAAAAAAgABAAAAGQAAAAMAAgABAAAAKgAAAAoAAgAAAEkAAAAEAAAAAAAAAAAASgAAAAQAAQAAAAAAAAACAAAAAABWAAAACgAFAAAANgAAAAQAAgAAAAAAAABLAAAABAADAAAAAAAAAEwAAAAEAAQAAAAAAAAATQAAAAQABQAAAAAAAABOAAAABAAGAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAAAAAAAeQAAAAAAAABjAAAACgAAAAAACgBDAAAACwAAAAIAAQAAABoAAAAOAAAAAgABAAAAGwAAAA8AAAACAAEAAAAcAAAAEAAAAAIAAQAAAB0AAAARAAAAAgABAAAAHgAAABIAAAACAAEAAAAhAAAAEwAAAAIAAQAAACMAAAAUAAAAAgABAAAAJQAAABUAAAACAAEAAAAmAAAAFgAAAAIAAQAAACgAAAAXAAAAAgABAAAAKQAAAE8AAAACAAAAAABkAAAARAAAAAIAAAAAAGUAAABQAAAAAgAAAAAAZgAAAFEAAAACAAAAAABnAAAAUgAAAAIAAAAAAGgAAABAAAAAAgAAAAAAegAAAFMAAAACAAAAAAB7AAAAPwAAAAIAAAAAAHwAAABUAAAAAgAAAAAAfQAAAFUAAAACAAAAAAB+AAAAVgAAAAIAAAAAAH8AAABXAAAAAgAAAAAAgAAAAFgAAAACAAAAAACBAAAAWQAAAAIAAAAAAIIAAABaAAAAAgAAAAAAgwAAAFsAAAACAAAAAACEAAAAXAAAAAIAAAAAAIUAAABdAAAAAgAAAAAAhgAAAF4AAAACAAAAAACHAAAAXwAAAAIAAAAAAIgAAABgAAAAAgAAAAAAiQAAAGEAAAACAAAAAACKAAAAYgAAAAIAAAAAAIsAAABjAAAAAgAAAAAAjAAAAGQAAAACAAAAAACNAAAAZQAAAAIAAAAAAI4AAABmAAAAAgAAAAAAjwAAAGcAAAACAAAAAACQAAAAaAAAAAIAAAAAAJEAAABpAAAAAgAAAAAAkgAAAGoAAAACAAAAAACTAAAAawAAAAIAAAAAAJQAAABsAAAAAgAAAAAAlQAAAG0AAAACAAAAAACWAAAAbgAAAAIAAAAAAJcAAABvAAAAAgAAAAAAmAAAAHAAAAACAAAAAACZAAAAcQAAAAIAAAAAAJoAAAByAAAAAgAAAAAAmwAAAHMAAAACAAAAAACcAAAAdAAAAAIAAAAAAJ0AAAB1AAAAAgAAAAAAngAAAHYAAAACAAAAAACfAAAAdwAAAAIAAAAAAKAAAAB4AAAAAgAAAAAAoQAAAHkAAAACAAAAAACiAAAAegAAAAIAAAAAAKMAAAB7AAAAAgAAAAAApAAAAHwAAAACAAAAAAClAAAAfQAAAAIAAAAAAKYAAAB+AAAAAgAAAAAApwAAAH8AAAACAAAAAACoAAAAgAAAAAIAAAAAAKkAAACBAAAAAgAAAAAAqgAAAIIAAAACAAAAAACrAAAAgwAAAAIAAAAAAKwAAAAAAAAAAAAAAAQAAAAAAAAAAgAAAAAAYwAAAAIAAQAAABkAAAACAAAAAAAhAAAAAgAAAAAArQAAAAQAAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAIAAAAAAGUAAAAAAAAAAAAAAAkAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAEAAAACAAAAAQAAAAAAAAABAAAAAgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAEAAAAZAAAAAQABAAIAAQAAABkAAAACAAEAAAAZAAAAAgABAAAAGQAAAAIAAQAAABkAAAACAAEAAAAZAAAAAgABAAAAGQAAAP///////////////////////////////wAAAAAAAAAAAgAAAAAAAAACAAEAAAAZAAAAAwACAAAAAABjAAAACgAJAAAAhAAAAAQAAAAAAAAAAABLAAAABAABAAAAAAAAAIUAAAAEAAIAAAAAAAAAhgAAAAQAAwAAAAAAAACHAAAABAAEAAAAAAAAAIgAAAAEAAUAAAAAAAAAiQAAAAQABgAAAAAAAACKAAAABAAHAAAAAAAAAIsAAAAEAAgAAAAAAAAA/////////////////////wAAAACuAAAAAAAAAGkAAAAKAAAAAAAKAAsAAAALAAAAAgABAAAAGgAAAA4AAAACAAEAAAAbAAAADwAAAAIAAQAAABwAAAAQAAAAAgAAAAAAagAAABEAAAACAAAAAABsAAAAEgAAAAIAAQAAACEAAAATAAAAAgABAAAAIwAAABQAAAACAAEAAAAlAAAAFQAAAAIAAAAAAGsAAAAWAAAAAgABAAAAKAAAABcAAAACAAEAAAApAAAAAAAAAAAAAAACAAAAAAAAAAIAAAAAAGkAAAACAAEAAAAZAAAABAAAAAAAAAABAAAAAAAAAAUAAAAAAAAAAwAAAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAgABAAAAGQAAAP///////////////////////////////wAAAAAAAAAAAgAAAAAAAAACAAEAAAAZAAAAAwACAAAAAABpAAAACgABAAAAjAAAAAQAAAAAAAAAAAD/////////////////////AAAAAK8AAAAAAAAAbQAAAAoAAAAAAAoACwAAAAsAAAACAAEAAAAaAAAADgAAAAIAAQAAABsAAAAPAAAAAgABAAAAHAAAABAAAAACAAAAAABqAAAAEQAAAAIAAAAAAGwAAAASAAAAAgABAAAAIQAAABMAAAACAAEAAAAjAAAAFAAAAAIAAQAAACUAAAAVAAAAAgAAAAAAbgAAABYAAAACAAEAAAAoAAAAFwAAAAIAAQAAACkAAAAAAAAAAAAAAAMAAAAAAAAAAgAAAAAAbQAAAAIAAAAAAGkAAAACAAEAAAAZAAAABAAAAAAAAAABAAAAAAAAAAUAAAAAAAAAAwAAAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAgABAAAAGQAAAP///////////////////////////////wAAAAAAAAAAAwAAAAAAAAACAAEAAAAZAAAAAwACAAAAAABpAAAACgABAAAAjAAAAAQAAAAAAAAAAAACAAAAAABtAAAAAwD/////////////////////AAAAAMgAAAAAAAAAcAAAAAoAFAAAAKQAAAACAAQAAAADAAAApwAAAAIABAAAAAgAAACoAAAAAgAEAAAADAAAAKkAAAACAAQAAAAiAAAAqgAAAAIABAAAACoAAACrAAAAAgAEAAAALwAAAKwAAAACAAQAAAA0AAAArQAAAAIABAAAADkAAACuAAAAAgAEAAAAPQAAAK8AAAACAAQAAABCAAAAsAAAAAIABAAAAEcAAACxAAAAAgAEAAAAUAAAALIAAAACAAQAAABSAAAAswAAAAIABAAAAFkAAAC0AAAAAgAEAAAAXQAAALUAAAACAAQAAABiAAAAtgAAAAIABAAAAGcAAAC3AAAAAgAEAAAAbwAAALgAAAACAAQAAAByAAAAuQAAAAIABAAAAHwAAAAKAAAAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAAAcAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAQAAAAAAAAACAAAAAABwAAAAAwD/////////////////////AAAAAMkAAAAAAAAAcQAAAAoAAQAAADUAAAACAAAAAAADAAAACgAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAHEAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAAcQAAAAMA/////////////////////wAAAADKAAAAAAAAAK0AAAADAAoAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAACtAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAAAAAAAAAAAAgAAAAAAAAAAAAAAAAAAAAMAAAAAAAAAAAAAAAEAAAAFAAAAAAAAAAEAAAABAAAABQAAABQAAAABAAAAAQAAAAUAAAAoAAAAAQAAAAEAAAAFAAAAPAAAAAEAAAABAAAABQAAAFAAAAABAAAAAQAAAAUAAABkAAAAAQAAAAEAAAAFAAAAeAAAAAEAAAABAAAABQAAAIwAAAABAAAAAQAAAAUAAACgAAAAAQAAAAEAAAAFAAAAtAAAAAEAAAABAAAABQAAAMgAAAABAAAAAQAAAAUAAADcAAAAAQAAAAEAAAAFAAAA8AAAAAEAAAABAAAABQAAAAQBAAABAAAAAQAAAAUAAAAYAQAAAQAAAAEAAAAFAAAALAEAAAEAAAABAAAABQAAAEABAAABAAAAAQAAAAUAAABUAQAAAQAAAAEAAAAFAAAAaAEAAAEAAAABAAAABQAAAHwBAAABAAAAAQAAAAUAAACQAQAAAQAAAAEAAAAFAAAApAEAAAEAAAAAAAAABAAAALgBAAAAAAAAAQAAAAUAAAC4AQAAAQAAAAEAAAAFAAAAzAEAAAEAAAABAAAABQAAAOABAAABAAAAAQAAAAUAAAD0AQAAAQAAAAEAAAAFAAAACAIAAAEAAAAAAAAABQAAABwCAAAAAAAAAAAAAAYAAAAcAgAAAAAAAAEAAAAFAAAAHAIAAAEAAAABAAAABQAAADACAAABAAAAAQAAAAUAAABEAgAAAQAAAAEAAAAFAAAAWAIAAAEAAAABAAAABQAAAGwCAAABAAAAAQAAAAUAAACAAgAAAQAAAAEAAAAFAAAAlAIAAAEAAAABAAAABQAAAKgCAAABAAAAAQAAAAUAAAC8AgAAAQAAAAEAAAAFAAAA0AIAAAEAAAABAAAABQAAAOQCAAABAAAAAQAAAAUAAAD4AgAAAQAAAAEAAAAFAAAADAMAAAEAAAABAAAABQAAACADAAABAAAAAQAAAAUAAAA0AwAAAQAAAAEAAAAFAAAASAMAAAEAAAABAAAABQAAAFwDAAABAAAAAQAAAAUAAABwAwAAAQAAAAEAAAAFAAAAhAMAAAEAAAABAAAABQAAAJgDAAABAAAAAQAAAAUAAACsAwAAAQAAAAEAAAAFAAAAwAMAAAEAAAABAAAABQAAANQDAAABAAAAAQAAAAUAAADoAwAAAQAAAAEAAAAFAAAA/AMAAAEAAAABAAAABQAAABAEAAABAAAAAQAAAAUAAAAkBAAAAQAAAAEAAAAFAAAAOAQAAAEAAAABAAAABQAAAEwEAAABAAAAAQAAAAUAAABgBAAAAQAAAAEAAAAFAAAAdAQAAAEAAAABAAAABQAAAIgEAAABAAAAAQAAAAUAAACcBAAAAQAAAAEAAAAFAAAAsAQAAAEAAAABAAAABQAAAMQEAAABAAAAAQAAAAUAAADYBAAAAQAAAAEAAAAFAAAA7AQAAAEAAAABAAAABQAAAAAFAAABAAAAAQAAAAUAAAAUBQAAAQAAAAEAAAAFAAAAKAUAAAEAAAABAAAABQAAADwFAAABAAAAAQAAAAUAAABQBQAAAQAAAAEAAAAFAAAAZAUAAAEAAAABAAAABQAAAHgFAAABAAAAAQAAAAUAAACMBQAAAQAAAAEAAAAFAAAAoAUAAAEAAAABAAAABQAAALQFAAABAAAAAQAAAAUAAADIBQAAAQAAAAEAAAAFAAAA3AUAAAEAAAABAAAABQAAAPAFAAABAAAAAQAAAAUAAAAEBgAAAQAAAAEAAAAFAAAAGAYAAAEAAAAAAAAABwAAACwGAAAAAAAAAQAAAAUAAAAsBgAAAQAAAAEAAAAFAAAAQAYAAAEAAAABAAAABQAAAFQGAAABAAAAAQAAAAUAAABoBgAAAQAAAAEAAAAFAAAAfAYAAAEAAAABAAAABQAAAJAGAAABAAAAAQAAAAUAAACkBgAAAQAAAAEAAAAFAAAAuAYAAAEAAAABAAAABQAAAMwGAAABAAAAAQAAAAUAAADgBgAAAQAAAAEAAAAFAAAA9AYAAAEAAAABAAAABQAAAAgHAAABAAAAAAAAAAgAAAAcBwAAAAAAAAEAAAAFAAAAHAcAAAEAAAABAAAABQAAADAHAAABAAAAAQAAAAUAAABEBwAAAQAAAAEAAAAFAAAAWAcAAAEAAAABAAAABQAAAGwHAAABAAAAAAAAAAkAAACABwAAAAAAAAEAAAAFAAAAgAcAAAEAAAABAAAABQAAAJQHAAABAAAAAQAAAAUAAACoBwAAAQAAAAAAAAAKAAAAvAcAAAAAAAABAAAABQAAALwHAAABAAAAAgAAAAAAAADQBwAAAQAAAAAAAAALAAAA4AcAAAAAAAAAAAAADAAAAOAHAAAAAAAAAgAAAAAAAADgBwAAAQAAAAIAAAAAAAAA8AcAAAEAAAADAAAABwAAAAAIAAABAAAAAgAAAAAAAACUDAAAAQAAAAMAAAAHAAAApAwAAAEAAAADAAAABgAAAAoPAAABAAAAAwAAAAcAAACEEgAAAQAAAAMAAAAHAAAACBUAAAEAAAABAAAABQAAADQeAAABAAAAAQAAAAUAAABIHgAAAQAAAAEAAAAFAAAAXB4AAAEAAAABAAAABQAAAHAeAAABAAAAAQAAAAUAAACEHgAAAQAAAAEAAAAFAAAAmB4AAAEAAAABAAAABQAAAKweAAABAAAAAQAAAAUAAADAHgAAAQAAAAEAAAAFAAAA1B4AAAEAAAABAAAABQAAAOgeAAABAAAAAQAAAAUAAAD8HgAAAQAAAAEAAAAFAAAAEB8AAAEAAAABAAAABQAAACQfAAABAAAAAQAAAAUAAAA4HwAAAQAAAAEAAAAFAAAATB8AAAEAAAABAAAABQAAAGAfAAABAAAAAQAAAAUAAAB0HwAAAQAAAAEAAAAFAAAAiB8AAAEAAAABAAAABQAAAJwfAAABAAAAAQAAAAUAAACwHwAAAQAAAAEAAAAFAAAAxB8AAAEAAAABAAAABQAAANgfAAABAAAAAQAAAAUAAADsHwAAAQAAAAEAAAAFAAAAACAAAAEAAAABAAAABQAAABQgAAABAAAAAQAAAAUAAAAoIAAAAQAAAAEAAAAFAAAAPCAAAAEAAAABAAAABQAAAFAgAAABAAAAAQAAAAUAAABkIAAAAQAAAAEAAAAFAAAAeCAAAAEAAAABAAAABQAAAIwgAAABAAAAAQAAAAUAAACgIAAAAQAAAAEAAAAFAAAAtCAAAAEAAAABAAAABQAAAMggAAABAAAAAQAAAAUAAADcIAAAAQAAAAEAAAAFAAAA8CAAAAEAAAABAAAABQAAAAQhAAABAAAAAQAAAAUAAAAYIQAAAQAAAAEAAAAFAAAALCEAAAEAAAABAAAABQAAAEAhAAABAAAAAQAAAAUAAABUIQAAAQAAAAEAAAAFAAAAaCEAAAEAAAABAAAABQAAAHwhAAABAAAAAQAAAAUAAACQIQAAAQAAAAEAAAAFAAAApCEAAAEAAAABAAAABQAAALghAAABAAAAAQAAAAUAAADMIQAAAQAAAAEAAAAFAAAA4CEAAAEAAAABAAAABQAAAPQhAAABAAAAAQAAAAUAAAAIIgAAAQAAAAEAAAAFAAAAHCIAAAEAAAAAAAAADQAAADAiAAAAAAAAAwAAAAcAAAAwIgAAAQAAAAMAAAAHAAAAhCMAAAEAAAADAAAACQAAAGgkAAABAAAAAwAAAAkAAACUJAAAAQAAAAMAAAAJAAAAwCQAAAEAAAADAAAACQAAAPQkAAABAAAAAwAAAAkAAAAgJQAAAQAAAAMAAAAJAAAATCUAAAEAAAADAAAACQAAAIAlAAABAAAAAwAAAAkAAAC0JQAAAQAAAAMAAAAJAAAA2CUAAAEAAAADAAAACQAAAPwlAAABAAAAAwAAAAkAAAAoJgAAAQAAAAMAAAAJAAAAXCYAAAEAAAADAAAACQAAAJAmAAABAAAAAwAAAAkAAAC8JgAAAQAAAAMAAAAJAAAA6CYAAAEAAAADAAAACQAAABQnAAABAAAAAwAAAAkAAABAJwAAAQAAAAMAAAAJAAAAbCcAAAEAAAADAAAACQAAAJgnAAABAAAAAwAAAAkAAADEJwAAAQAAAAMAAAAJAAAA+CcAAAEAAAADAAAACQAAACwoAAABAAAAAwAAAAkAAABYKAAAAQAAAAMAAAAJAAAAhCgAAAEAAAACAAAAAAAAALAoAAABAAAAAgAAAAAAAADAKAAAAQAAAAMAAAADAAAA0CgAAAEAAAALAAAAAAAAAAAAAQABAAEAAQADAAsAAAAAAAEAAAABAAEAAQABAAMACwAAAAAAAgAAAAEAAQABAAEAAwALAAAAAAADAAAAAQABAAEAAQADAAsAAAAAAAQAAAABAAEAAQABAAMACwAAAAAABQAAAAEAAQABAAEAAwALAAAAAAAGAAAAAQABAAEAAQADAAsAAAAAAAcAAAABAAEAAQABAAMACwAAAAAACAAAAAEAAQABAAEAAwALAAAAAAAJAAAAAQABAAEAAQADAAsAAAAAAAoAAAABAAEAAQABAAMACwAAAAAACwAAAAEAAQABAAEAAwALAAAAAAAMAAAAAQABAAEAAQADAAsAAAAAAA0AAAABAAEAAQABAAMACwAAAAAADgAAAAEAAQABAAEAAwALAAAAAAAPAAAAAQABAAEAAQADAAsAAAAAABAAAAABAAEAAQABAAMACwAAAAAAEQAAAAEAAQABAAEAAwALAAAAAAASAAAAAQABAAEAAQADAAsAAAAAABMAAAABAAEAAQABAAMACwAAAAAAFAAAAAEAAQABAAEAAwALAAAAAAAVAAAAAQABAAEAAQADAAsAAAAAABYAAAABAAEAAQABAAMACwAAAAAAFwAAAAEAAQABAAEAAwALAAAAAAAYAAAAAQABAAEAAQADAAsAAAAAABkAAAABAAEAAQABAAMACwAAAAAAGgAAAAEAAQABAAEAAwALAAAAAAAbAAAAAQABAAEAAQADAAsAAAAAABwAAAABAAEAAQABAAMACwAAAAAAHQAAAAEAAQABAAEAAwALAAAAAAAeAAAAAQABAAEAAQADAAsAAAAAAB8AAAABAAEAAQABAAMACwAAAAAAIAAAAAEAAQABAAEAAwALAAAAAAAhAAAAAQABAAEAAQADAAsAAAAAACIAAAABAAEAAQABAAMACwAAAAAAIwAAAAEAAQABAAEAAwALAAAAAAAkAAAAAQABAAEAAQADAAsAAAAAACUAAAABAAEAAQABAAMACwAAAAAAJgAAAAEAAQABAAEAAwALAAAAAAAnAAAAAQABAAEAAQADAAsAAAAAACgAAAABAAEAAQABAAMACwAAAAAAKQAAAAEAAQABAAEAAwALAAAAAAAqAAAAAQABAAEAAQADAAsAAAAAACsAAAABAAEAAQABAAMACwAAAAAALAAAAAEAAQABAAEAAwALAAAAAAAtAAAAAQABAAEAAQADAAsAAAAAAC4AAAABAAEAAQABAAMACwAAAAAALwAAAAEAAQABAAEAAwALAAAAAAAwAAAAAQABAAEAAQADAAsAAAAAADEAAAABAAEAAQABAAMACwAAAAAAMgAAAAEAAQABAAEAAwALAAAAAAAzAAAAAQABAAEAAQADAAsAAAAAADQAAAABAAEAAQABAAMACwAAAAAANQAAAAEAAQABAAEAAwALAAAAAAA2AAAAAQABAAEAAQADAAsAAAAAADcAAAABAAEAAQABAAMACwAAAAAAOAAAAAEAAQABAAEAAwALAAAAAAA5AAAAAQABAAEAAQADAAsAAAAAADoAAAABAAEAAQABAAMACwAAAAAAOwAAAAEAAQABAAEAAwALAAAAAAA8AAAAAQABAAEAAQADAAsAAAAAAD0AAAABAAEAAQABAAMACwAAAAAAPgAAAAEAAQABAAEAAwALAAAAAAA/AAAAAQABAAEAAQADAAsAAAAAAEAAAAABAAEAAQABAAMACwAAAAAAQQAAAAEAAQABAAEAAwALAAAAAABCAAAAAQABAAEAAQADAAsAAAAAAEMAAAABAAEAAQABAAMACwAAAAAARAAAAAEAAQABAAEAAwALAAAAAABFAAAAAQABAAEAAQADAAsAAAAAAEYAAAABAAEAAQABAAMACwAAAAAARwAAAAEAAQABAAEAAwALAAAAAABIAAAAAQABAAEAAQADAAsAAAAAAEkAAAABAAEAAQABAAMACwAAAAAASgAAAAEAAQABAAEAAwALAAAAAABLAAAAAQABAAEAAQADAAsAAAAAAEwAAAABAAEAAQABAAMACwAAAAAATQAAAAEAAQABAAEAAwALAAAAAABOAAAAAQABAAEAAQADAAsAAAAAAE8AAAABAAEAAQABAAMACwAAAAAAUAAAAAEAAQABAAEAAwALAAAAAABRAAAAAQABAAEAAQADAAsAAAAAAFIAAAABAAEAAQABAAMACwAAAAAAUwAAAAEAAQABAAEAAwALAAAAAABUAAAAAQABAAEAAQADAAsAAAAAAFUAAAABAAEAAQABAAMACwAAAAAAVgAAAAEAAQABAAEAAwALAAAAAABXAAAAAQABAAEAAQADAAsAAAAAAFgAAAABAAEAAQABAAMACwAAAAAAWQAAAAEAAQABAAEAAwALAAAAAABaAAAAAQABAAEAAQADAAsAAAAAAFsAAAABAAEAAQABAAMACwAAAAAAXAAAAAEAAQABAAEAAwALAAAAAABdAAAAAQABAAEAAQADAAsAAAAAAF4AAAABAAEAAQABAAMACwAAAAAAXwAAAAEAAQABAAEAAwALAAAAAABgAAAAAQABAAEAAQADAAsAAAAAAGEAAAABAAEAAQABAAMACwAAAAAAYgAAAAEAAQABAAEAAwALAAAAAABjAAAAAQABAAEAAQADAI4AAAAHAAAAAAAKAAAAAACPAAAABwAAAAAACgAAAAAACQAAAAcAAAAAAAoAAAAAAAYAkgAAAAoABAAAADEAAAACAAAAAACwAAAAMgAAAAIAAAAAALEAAAAzAAAAAgAAAAAAsgAAADQAAAACAAAAAACzAAAACgAbAAAAEAAAAAIAAAAAAAQAAAAYAAAAAgAAAAAABQAAABkAAAACAAAAAAAGAAAAGgAAAAIAAAAAAAcAAAAbAAAAAgAAAAAACAAAABwAAAACAAAAAAAJAAAAHQAAAAIAAAAAAAoAAAAeAAAAAgAAAAAACwAAAB8AAAACAAAAAAAMAAAAIAAAAAIAAAAAAA0AAAAhAAAAAgAAAAAADgAAACIAAAACAAAAAAAPAAAAIwAAAAIAAAAAABAAAAAkAAAAAgAAAAAAEQAAACUAAAACAAAAAAASAAAAJgAAAAIAAAAAABMAAAAnAAAAAgAAAAAAFAAAACgAAAACAAAAAAAVAAAAKQAAAAIAAAAAABYAAAAqAAAAAgAAAAAAFwAAACsAAAACAAAAAAAYAAAALAAAAAIAAAAAABkAAAAtAAAAAgAAAAAAGwAAAC4AAAACAAAAAAAcAAAALwAAAAIAAAAAAB0AAAAwAAAAAgAAAAAAHgAAABcAAAACAAAAAAAfAAAABwAbAAAAAgAAAAAABAAAAAIAAAAAAAUAAAACAAAAAAAGAAAAAgAAAAAABwAAAAIAAAAAAAgAAAACAAAAAAAJAAAAAgAAAAAACgAAAAIAAAAAAAsAAAACAAAAAAAMAAAAAgAAAAAADQAAAAIAAAAAAA4AAAACAAAAAAAPAAAAAgAAAAAAEAAAAAIAAAAAABEAAAACAAAAAAASAAAAAgAAAAAAEwAAAAIAAAAAABQAAAACAAAAAAAVAAAAAgAAAAAAFgAAAAIAAAAAABcAAAACAAAAAAAYAAAAAgAAAAAAGQAAAAIAAAAAABsAAAACAAAAAAAcAAAAAgAAAAAAHQAAAAIAAAAAAB4AAAACAAAAAAAfAAAABwAAAAAABwABAAAAAgABAAAAGQAAAAcAAAAAAAIAAQAAABkAAAAHAAAAAAAKAAAAAAAEAAEAAAAAAAAABwACAAAAAgAAAAAAAwAAAAIAAQAAABkAAAAHAAAAAAABAAoAAAAAAAoAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwAEAAAABwAEAAAABAABAAAAAAAAAAIAAAAAAAMAAAAGABsAAAAGADEAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAAwAAAAYAkwAAAAYAMgAAAAcABAAAAAQAAQAAAAAAAAACAAAAAAADAAAABgAvAAAABgAzAAAABwAEAAAABAABAAAAAAAAAAIAAAAAAAMAAAAGAJQAAAAGADQAAAAHAAQAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAAwAAAAYAGwAAAAYAMQAAAAcABAAAAAQAAQAAAAAAAAACAAAAAAADAAAABgCTAAAABgAyAAAABwAEAAAABAABAAAAAAAAAAIAAAAAAAMAAAAGAC8AAAAGADMAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAAwAAAAYAlAAAAAYANAAAAAEAlQAAAAcAAAAAAAoAAAAAAAYACgAAAAoABQAAADYAAAACAAAAAAC0AAAANwAAAAIAAAAAALUAAAA4AAAAAgAAAAAAtgAAADkAAAACAAAAAAC3AAAAOgAAAAIAAAAAALgAAAAKAAAAAAAHAAAAAAAHAAAAAAAHAAEAAAACAAEAAAAZAAAABwAAAAAAAgABAAAAGQAAAAcAAAAAAAoAAAAAAAQAAQAAAAAAAAAHAAIAAAACAAAAAAAgAAAAAgABAAAAGQAAAAcAAAAAAAEACgAAAAAACgAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAUAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAIAAAAAYAQAAAAAYANgAAAAcABAAAAAQAAQAAAAAAAAACAAAAAAAgAAAABgBTAAAABgA3AAAABwAEAAAABAABAAAAAAAAAAIAAAAAACAAAAAGAJYAAAAGADgAAAAHAAQAAAAEAAIAAAAAAAAAAgAAAAAAIAAAAAYAlwAAAAYAOQAAAAcABAAAAAQAAwAAAAAAAAACAAAAAAAgAAAABgCYAAAABgA6AAAABwAFAAAABwAEAAAABAABAAAAAAAAAAIAAAAAACAAAAAGAEAAAAAGADYAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAIAAAAAYAUwAAAAYANwAAAAcABAAAAAQAAQAAAAAAAAACAAAAAAAgAAAABgCWAAAABgA4AAAABwAEAAAABAACAAAAAAAAAAIAAAAAACAAAAAGAJcAAAAGADkAAAAHAAQAAAAEAAMAAAAAAAAAAgAAAAAAIAAAAAYAmAAAAAYAOgAAAAEABgAEAAAACgAJAAAAhAAAAAIAAAAAALkAAABLAAAAAgAAAAAAugAAAIUAAAACAAAAAAC7AAAAhgAAAAIAAAAAALwAAACHAAAAAgAAAAAAvQAAAIgAAAACAAAAAAC+AAAAiQAAAAIAAAAAAL8AAACKAAAAAgAAAAAAwAAAAIsAAAACAAAAAADBAAAACgAzAAAAQAAAAAIAAAAAACIAAABTAAAAAgAAAAAAIwAAAD8AAAACAAAAAAAkAAAAVAAAAAIAAAAAACUAAABVAAAAAgAAAAAAJgAAAFYAAAACAAAAAAAnAAAAVwAAAAIAAAAAACgAAABYAAAAAgAAAAAAKQAAAFkAAAACAAAAAAAqAAAAWgAAAAIAAAAAACsAAABbAAAAAgAAAAAALAAAAFwAAAACAAAAAAAtAAAAXQAAAAIAAAAAAC4AAABeAAAAAgAAAAAALwAAAF8AAAACAAAAAAAwAAAAYAAAAAIAAAAAADEAAABhAAAAAgAAAAAAMgAAAGIAAAACAAAAAAAzAAAAYwAAAAIAAAAAADQAAABkAAAAAgAAAAAANQAAAGUAAAACAAAAAAA2AAAAZgAAAAIAAAAAADcAAABnAAAAAgAAAAAAOAAAAGgAAAACAAAAAAA5AAAAaQAAAAIAAAAAADoAAABqAAAAAgAAAAAAOwAAAGsAAAACAAAAAAA8AAAAbAAAAAIAAAAAAD0AAABtAAAAAgAAAAAAPgAAAG4AAAACAAAAAAA/AAAAbwAAAAIAAAAAAEAAAABwAAAAAgAAAAAAQQAAAHEAAAACAAAAAABCAAAAcgAAAAIAAAAAAEMAAABzAAAAAgAAAAAARAAAAHQAAAACAAAAAABFAAAAdQAAAAIAAAAAAEYAAAB2AAAAAgAAAAAARwAAAHcAAAACAAAAAABIAAAAeAAAAAIAAAAAAEkAAAB5AAAAAgAAAAAASgAAAHoAAAACAAAAAABLAAAAewAAAAIAAAAAAEwAAAB8AAAAAgAAAAAATQAAAH0AAAACAAAAAABOAAAAfgAAAAIAAAAAAE8AAAB/AAAAAgAAAAAAUAAAAIAAAAACAAAAAABRAAAAgQAAAAIAAAAAAFIAAACCAAAAAgAAAAAAUwAAAIMAAAACAAAAAABUAAAABwAAAAAABwAAAAAABAABAAAAAAAAAAIAAAAAAFUAAAAGAAUAAAAKAAUAAAA2AAAAAgAAAAAAwgAAAEsAAAACAAAAAADDAAAATAAAAAIAAAAAAMQAAABNAAAAAgAAAAAAxQAAAE4AAAACAAAAAADGAAAACgAMAAAAPwAAAAIAAAAAAFcAAABAAAAAAgAAAAAAWAAAAEEAAAACAAAAAABZAAAAQgAAAAIAAAAAAFoAAAARAAAAAgAAAAAAWwAAABMAAAACAAAAAABcAAAAQwAAAAIAAAAAAF0AAABEAAAAAgAAAAAAXgAAAEUAAAACAAAAAABfAAAARgAAAAIAAAAAAGAAAABHAAAAAgAAAAAAYQAAAEgAAAACAAAAAABiAAAABwAMAAAAAgAAAAAAVwAAAAIAAAAAAFgAAAACAAAAAABZAAAAAgAAAAAAWgAAAAIAAAAAAFsAAAACAAAAAABcAAAAAgAAAAAAXQAAAAIAAAAAAF4AAAACAAAAAABfAAAAAgAAAAAAYAAAAAIAAAAAAGEAAAACAAAAAABiAAAABwAAAAAABwABAAAAAgABAAAAKgAAAAcAAAAAAAEABwAAAAAACgAAAAAABAABAAAAAAAAAAcAAwAAAAIAAAAAAFYAAAACAAEAAAAqAAAAAgABAAAAGQAAAAcAAAAAAAEACgADAAAAmQAAAAIAAAAAAFsAAACaAAAAAgAAAAAAXAAAAJsAAAACAAAAAABdAAAACgAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAIAAAAHAAIAAAAEAAAAAAAAAAAAAgABAAAALAAAAAcAAgAAAAQAAAAAAAAAAAACAAEAAAAsAAAABwABAAAABwACAAAABAAAAAAAAAAAAAIAAQAAACwAAAABAAYABgAAAAoACQAAAIQAAAACAAAAAAC5AAAASwAAAAIAAAAAALoAAACFAAAAAgAAAAAAuwAAAIYAAAACAAAAAAC8AAAAhwAAAAIAAAAAAL0AAACIAAAAAgAAAAAAvgAAAIkAAAACAAAAAAC/AAAAigAAAAIAAAAAAMAAAACLAAAAAgAAAAAAwQAAAAoAOAAAAE8AAAACAAAAAABkAAAARAAAAAIAAAAAAGUAAABQAAAAAgAAAAAAZgAAAFEAAAACAAAAAABnAAAAUgAAAAIAAAAAAGgAAABAAAAAAgAAAAAAegAAAFMAAAACAAAAAAB7AAAAPwAAAAIAAAAAAHwAAABUAAAAAgAAAAAAfQAAAFUAAAACAAAAAAB+AAAAVgAAAAIAAAAAAH8AAABXAAAAAgAAAAAAgAAAAFgAAAACAAAAAACBAAAAWQAAAAIAAAAAAIIAAABaAAAAAgAAAAAAgwAAAFsAAAACAAAAAACEAAAAXAAAAAIAAAAAAIUAAABdAAAAAgAAAAAAhgAAAF4AAAACAAAAAACHAAAAXwAAAAIAAAAAAIgAAABgAAAAAgAAAAAAiQAAAGEAAAACAAAAAACKAAAAYgAAAAIAAAAAAIsAAABjAAAAAgAAAAAAjAAAAGQAAAACAAAAAACNAAAAZQAAAAIAAAAAAI4AAABmAAAAAgAAAAAAjwAAAGcAAAACAAAAAACQAAAAaAAAAAIAAAAAAJEAAABpAAAAAgAAAAAAkgAAAGoAAAACAAAAAACTAAAAawAAAAIAAAAAAJQAAABsAAAAAgAAAAAAlQAAAG0AAAACAAAAAACWAAAAbgAAAAIAAAAAAJcAAABvAAAAAgAAAAAAmAAAAHAAAAACAAAAAACZAAAAcQAAAAIAAAAAAJoAAAByAAAAAgAAAAAAmwAAAHMAAAACAAAAAACcAAAAdAAAAAIAAAAAAJ0AAAB1AAAAAgAAAAAAngAAAHYAAAACAAAAAACfAAAAdwAAAAIAAAAAAKAAAAB4AAAAAgAAAAAAoQAAAHkAAAACAAAAAACiAAAAegAAAAIAAAAAAKMAAAB7AAAAAgAAAAAApAAAAHwAAAACAAAAAAClAAAAfQAAAAIAAAAAAKYAAAB+AAAAAgAAAAAApwAAAH8AAAACAAAAAACoAAAAgAAAAAIAAAAAAKkAAACBAAAAAgAAAAAAqgAAAIIAAAACAAAAAACrAAAAgwAAAAIAAAAAAKwAAAAHADgAAAACAAAAAABkAAAAAgAAAAAAZQAAAAIAAAAAAGYAAAACAAAAAABnAAAAAgAAAAAAaAAAAAIAAAAAAHoAAAACAAAAAAB7AAAAAgAAAAAAfAAAAAIAAAAAAH0AAAACAAAAAAB+AAAAAgAAAAAAfwAAAAIAAAAAAIAAAAACAAAAAACBAAAAAgAAAAAAggAAAAIAAAAAAIMAAAACAAAAAACEAAAAAgAAAAAAhQAAAAIAAAAAAIYAAAACAAAAAACHAAAAAgAAAAAAiAAAAAIAAAAAAIkAAAACAAAAAACKAAAAAgAAAAAAiwAAAAIAAAAAAIwAAAACAAAAAACNAAAAAgAAAAAAjgAAAAIAAAAAAI8AAAACAAAAAACQAAAAAgAAAAAAkQAAAAIAAAAAAJIAAAACAAAAAACTAAAAAgAAAAAAlAAAAAIAAAAAAJUAAAACAAAAAACWAAAAAgAAAAAAlwAAAAIAAAAAAJgAAAACAAAAAACZAAAAAgAAAAAAmgAAAAIAAAAAAJsAAAACAAAAAACcAAAAAgAAAAAAnQAAAAIAAAAAAJ4AAAACAAAAAACfAAAAAgAAAAAAoAAAAAIAAAAAAKEAAAACAAAAAACiAAAAAgAAAAAAowAAAAIAAAAAAKQAAAACAAAAAAClAAAAAgAAAAAApgAAAAIAAAAAAKcAAAACAAAAAACoAAAAAgAAAAAAqQAAAAIAAAAAAKoAAAACAAAAAACrAAAAAgAAAAAArAAAAAcAAAAAAAcAAQAAAAIAAQAAABkAAAAHAAEAAAACAAAAAAAhAAAAAgABAAAAGQAAAAcAAAAAAAoAAAAAAAQAAQAAAAAAAAAHAAIAAAACAAAAAABjAAAAAgABAAAAGQAAAAcAAgAAAAIAAAAAACEAAAACAAAAAACtAAAAAQAKAAAAAAAKAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcACQAAAAcABAAAAAQAAQAAAAAAAAACAAAAAABjAAAABgCcAAAABgCEAAAABwAEAAAABAABAAAAAAAAAAIAAAAAAGMAAAAGAD8AAAAGAEsAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAYwAAAAYAVAAAAAYAhQAAAAcABAAAAAQAAQAAAAAAAAACAAAAAABjAAAABgCdAAAABgCGAAAABwAEAAAABAABAAAAAAAAAAIAAAAAAGMAAAAGAJ4AAAAGAIcAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAYwAAAAYAnwAAAAYAiAAAAAcABAAAAAQAAQAAAAAAAAACAAAAAABjAAAABgCgAAAABgCJAAAABwAEAAAABAABAAAAAAAAAAIAAAAAAGMAAAAGAKEAAAAGAIoAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAYwAAAAYAogAAAAYAiwAAAAcACQAAAAcABAAAAAQAAQAAAAAAAAACAAAAAABjAAAABgCcAAAABgCEAAAABwAEAAAABAABAAAAAAAAAAIAAAAAAGMAAAAGAD8AAAAGAEsAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAYwAAAAYAVAAAAAYAhQAAAAcABAAAAAQAAQAAAAAAAAACAAAAAABjAAAABgCdAAAABgCGAAAABwAEAAAABAABAAAAAAAAAAIAAAAAAGMAAAAGAJ4AAAAGAIcAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAYwAAAAYAnwAAAAYAiAAAAAcABAAAAAQAAQAAAAAAAAACAAAAAABjAAAABgCgAAAABgCJAAAABwAEAAAABAABAAAAAAAAAAIAAAAAAGMAAAAGAKEAAAAGAIoAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAYwAAAAYAogAAAAYAiwAAAAEADAAAAAAAZAAAAAEAAQABAAEAAwAMAAAAAABlAAAAAQABAAEAAQADAAwAAAAAAGYAAAABAAEAAQABAAMADAAAAAAAZwAAAAEAAQABAAEAAwAMAAAAAABoAAAAAQABAAEAAQADAAwAAAAAAGkAAAABAAEAAQABAAMADAAAAAAAagAAAAEAAQABAAEAAwAMAAAAAABrAAAAAQABAAEAAQADAAwAAAAAAGwAAAABAAEAAQABAAMADAAAAAAAbQAAAAEAAQABAAEAAwAMAAAAAABuAAAAAQABAAEAAQADAAwAAAAAAG8AAAABAAEAAQABAAMADAAAAAAAcAAAAAEAAQABAAEAAwAMAAAAAABxAAAAAQABAAEAAQADAAwAAAAAAHIAAAABAAEAAQABAAMADAAAAAAAcwAAAAEAAQABAAEAAwAMAAAAAAB0AAAAAQABAAEAAQADAAwAAAAAAHUAAAABAAEAAQABAAMADAAAAAAAdgAAAAEAAQABAAEAAwAMAAAAAAB3AAAAAQABAAEAAQADAAwAAAAAAHgAAAABAAEAAQABAAMADAAAAAAAeQAAAAEAAQABAAEAAwAMAAAAAAB6AAAAAQABAAEAAQADAAwAAAAAAHsAAAABAAEAAQABAAMADAAAAAAAfAAAAAEAAQABAAEAAwAMAAAAAAB9AAAAAQABAAEAAQADAAwAAAAAAH4AAAABAAEAAQABAAMADAAAAAAAfwAAAAEAAQABAAEAAwAMAAAAAACAAAAAAQABAAEAAQADAAwAAAAAAIEAAAABAAEAAQABAAMADAAAAAAAggAAAAEAAQABAAEAAwAMAAAAAACDAAAAAQABAAEAAQADAAwAAAAAAIQAAAABAAEAAQABAAMADAAAAAAAhQAAAAEAAQABAAEAAwAMAAAAAACGAAAAAQABAAEAAQADAAwAAAAAAIcAAAABAAEAAQABAAMADAAAAAAAiAAAAAEAAQABAAEAAwAMAAAAAACJAAAAAQABAAEAAQADAAwAAAAAAIoAAAABAAEAAQABAAMADAAAAAAAiwAAAAEAAQABAAEAAwAMAAAAAACMAAAAAQABAAEAAQADAAwAAAAAAI0AAAABAAEAAQABAAMADAAAAAAAjgAAAAEAAQABAAEAAwAMAAAAAACPAAAAAQABAAEAAQADAAwAAAAAAJAAAAABAAEAAQABAAMADAAAAAAAkQAAAAEAAQABAAEAAwAMAAAAAACSAAAAAQABAAEAAQADAAwAAAAAAJMAAAABAAEAAQABAAMADAAAAAAAlAAAAAEAAQABAAEAAwAMAAAAAACVAAAAAQABAAEAAQADAAwAAAAAAJYAAAABAAEAAQABAAMABgAHAAAACgABAAAAjAAAAAIAAAAAAMcAAAAKAAMAAAAQAAAAAgAAAAAAagAAABUAAAACAAAAAABrAAAAEQAAAAIAAAAAAGwAAAAHAAMAAAACAAAAAABqAAAAAgAAAAAAawAAAAIAAAAAAGwAAAAHAAAAAAAHAAEAAAACAAEAAAAZAAAABwAAAAAAAgABAAAAGQAAAAcAAAAAAAoAAAAAAAQAAQAAAAAAAAAHAAIAAAACAAAAAABpAAAAAgABAAAAGQAAAAcAAAAAAAEACgABAAAAmQAAAAIAAAAAAGwAAAAKAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAQAAAAcABAAAAAQAAQAAAAAAAAACAAAAAABpAAAABgCjAAAABgCMAAAABwABAAAABwAEAAAABAABAAAAAAAAAAIAAAAAAGkAAAAGAKMAAAAGAIwAAAABAAYACAAAAAoAAAAAAAoAAQAAABUAAAACAAAAAABuAAAABwABAAAAAgAAAAAAbgAAAAcAAAAAAAcAAQAAAAIAAAAAAGkAAAAHAAAAAAABAAcAAAAAAAoAAAAAAAQAAQAAAAAAAAAHAAMAAAACAAAAAABtAAAAAgAAAAAAaQAAAAIAAQAAABkAAAAHAAAAAAABAAoAAAAAAAoAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwABAAAABwAEAAAABAABAAAAAAAAAAIAAAAAAGkAAAAGAKMAAAAGAIwAAAAHAAAAAAABAAYAMQAAAAMABAAAAAAAAAAAAAMAAgABAAAAGQAAAAQAAQAAAAAAAAABAAEABgAyAAAAAwAEAAAAAAAAAAAAAwACAAEAAAAZAAAABAABAAAAAAAAAAEAAQAGADMAAAACAAEAAAACAAAABAABAAAAAAAAAAMAAgABAAAAAgAAAAQAAQAAAAAAAAABAAEABgA0AAAAAwAEAAAAAAAAAAAAAwACAAEAAAAZAAAABAABAAAAAAAAAAEAAQAGADYAAAADAAQAAAAAAAAAAAADAAIAAQAAABkAAAAEAAEAAAAAAAAAAQABAAYANwAAAAIAAQAAAAQAAAAEAAEAAAAAAAAAAwACAAEAAAAEAAAABAABAAAAAAAAAAEAAQAGADgAAAACAAEAAAACAAAABAABAAAAAAAAAAMAAgABAAAAAgAAAAQAAQAAAAAAAAABAAEABgA5AAAAAwAEAAAAAAAAAAAAAwADAAQAAAAAAAAAAAABAAEABgA6AAAAAwAEAAAAAAAAAAAAAwADAAQAAAAAAAAAAAABAAEABgCEAAAAAwAEAAAAAAAAAAAAAwACAAEAAAAZAAAABAABAAAAAAAAAAEAAQAGAEsAAAACAAEAAAACAAAABAABAAAAAAAAAAMAAgABAAAAAgAAAAQAAQAAAAAAAAABAAEABgCFAAAAAgABAAAAAgAAAAQAAQAAAAAAAAADAAIAAQAAAAIAAAAEAAEAAAAAAAAAAQABAAYAhgAAAAMABAAAAAAAAAAAAAMAAgABAAAAGQAAAAQAAQAAAAAAAAABAAEABgCHAAAAAwAEAAAAAAAAAAAAAwACAAEAAAAZAAAABAABAAAAAAAAAAEAAQAGAIgAAAADAAQAAAAAAAAAAAADAAIAAQAAABkAAAAEAAEAAAAAAAAAAQABAAYAiQAAAAMABAAAAAAAAAAAAAMAAgABAAAAGQAAAAQAAQAAAAAAAAABAAEABgCKAAAAAwAEAAAAAAAAAAAAAwACAAEAAAAZAAAABAABAAAAAAAAAAEAAQAGAIsAAAADAAQAAAAAAAAAAAADAAIAAQAAABkAAAAEAAEAAAAAAAAAAQABAAYANgAAAAMABAAAAAAAAAAAAAMAAgABAAAAGQAAAAQAAQAAAAAAAAABAAEABgBLAAAAAgABAAAAAgAAAAQAAQAAAAAAAAADAAIAAQAAAAIAAAAEAAEAAAAAAAAAAQABAAYATAAAAAIAAQAAAAIAAAAEAAEAAAAAAAAAAwACAAEAAAACAAAABAABAAAAAAAAAAEAAQAGAE0AAAADAAQAAAAAAAAAAAADAAIAAQAAABkAAAAEAAEAAAAAAAAAAQABAAYATgAAAAMABAAAAAAAAAAAAAMAAgABAAAAGQAAAAQAAQAAAAAAAAABAAEABgCMAAAAAwAEAAAAAAAAAAAAAwACAAEAAAAZAAAABAABAAAAAAAAAAEAAQACAAAABwAAAAAACgAAAAAAAwAAAAcAAAAAAAoAAAAAAAYABAAAAAIAAAAAACEAAAAKAAkAAACEAAAAAgAAAAAAuQAAAEsAAAACAAAAAAC6AAAAhQAAAAIAAAAAALsAAACGAAAAAgAAAAAAvAAAAIcAAAACAAAAAAC9AAAAiAAAAAIAAAAAAL4AAACJAAAAAgAAAAAAvwAAAIoAAAACAAAAAADAAAAAiwAAAAIAAAAAAMEAAAAKADMAAABAAAAAAgAAAAAAegAAAFMAAAACAAAAAAB7AAAAPwAAAAIAAAAAAHwAAABUAAAAAgAAAAAAfQAAAFUAAAACAAAAAAB+AAAAVgAAAAIAAAAAAH8AAABXAAAAAgAAAAAAgAAAAFgAAAACAAAAAACBAAAAWQAAAAIAAAAAAIIAAABaAAAAAgAAAAAAgwAAAFsAAAACAAAAAACEAAAAXAAAAAIAAAAAAIUAAABdAAAAAgAAAAAAhgAAAF4AAAACAAAAAACHAAAAXwAAAAIAAAAAAIgAAABgAAAAAgAAAAAAiQAAAGEAAAACAAAAAACKAAAAYgAAAAIAAAAAAIsAAABjAAAAAgAAAAAAjAAAAGQAAAACAAAAAACNAAAAZQAAAAIAAAAAAI4AAABmAAAAAgAAAAAAjwAAAGcAAAACAAAAAACQAAAAaAAAAAIAAAAAAJEAAABpAAAAAgAAAAAAkgAAAGoAAAACAAAAAACTAAAAawAAAAIAAAAAAJQAAABsAAAAAgAAAAAAlQAAAG0AAAACAAAAAACWAAAAbgAAAAIAAAAAAJcAAABvAAAAAgAAAAAAmAAAAHAAAAACAAAAAACZAAAAcQAAAAIAAAAAAJoAAAByAAAAAgAAAAAAmwAAAHMAAAACAAAAAACcAAAAdAAAAAIAAAAAAJ0AAAB1AAAAAgAAAAAAngAAAHYAAAACAAAAAACfAAAAdwAAAAIAAAAAAKAAAAB4AAAAAgAAAAAAoQAAAHkAAAACAAAAAACiAAAAegAAAAIAAAAAAKMAAAB7AAAAAgAAAAAApAAAAHwAAAACAAAAAAClAAAAfQAAAAIAAAAAAKYAAAB+AAAAAgAAAAAApwAAAH8AAAACAAAAAACoAAAAgAAAAAIAAAAAAKkAAACBAAAAAgAAAAAAqgAAAIIAAAACAAAAAACrAAAAgwAAAAIAAAAAAKwAAAAHAAAAAAAHAAAAAAAHAAAAAAAHAAAAAAAEAAEAAAAAAAAAAAAAABsAAAABAAAAAQAAAAAAAAB6AAAAAAAAABwAAAABAAAAAQAAAAAAAAB7AAAAAAAAAB0AAAABAAAAAQAAAAAAAAB8AAAAAAAAAB4AAAABAAAAAQAAAAAAAAB9AAAAAAAAAB8AAAABAAAAAQAAAAAAAAB+AAAAAAAAACAAAAABAAAAAQAAAAAAAAB/AAAAAAAAACEAAAABAAAAAQAAAAAAAACAAAAAAAAAACIAAAABAAAAAQAAAAAAAACBAAAAAAAAACMAAAABAAAAAQAAAAAAAACCAAAAAAAAACQAAAABAAAAAQAAAAAAAACDAAAAAAAAACUAAAABAAAAAQAAAAAAAACEAAAAAAAAACYAAAABAAAAAQAAAAAAAACFAAAAAAAAACcAAAABAAAAAQAAAAAAAACGAAAAAAAAACgAAAABAAAAAQAAAAAAAACHAAAAAAAAACkAAAABAAAAAQAAAAAAAACIAAAAAAAAACoAAAABAAAAAQAAAAAAAACJAAAAAAAAACsAAAABAAAAAQAAAAAAAACKAAAAAAAAACwAAAABAAAAAQAAAAAAAACLAAAAAAAAAC0AAAABAAAAAQAAAAAAAACMAAAAAAAAAC4AAAABAAAAAQAAAAAAAACNAAAAAAAAAC8AAAABAAAAAQAAAAAAAACOAAAAAAAAADAAAAABAAAAAQAAAAAAAACPAAAAAAAAADEAAAABAAAAAQAAAAAAAACQAAAAAAAAADIAAAABAAAAAQAAAAAAAACRAAAAAAAAADMAAAABAAAAAQAAAAAAAACSAAAAAAAAADQAAAABAAAAAQAAAAAAAACTAAAAAAAAADUAAAABAAAAAQAAAAAAAACUAAAAAAAAADYAAAABAAAAAQAAAAAAAACVAAAAAAAAADcAAAABAAAAAQAAAAAAAACWAAAAAAAAADgAAAABAAAAAQAAAAAAAACXAAAAAAAAADkAAAABAAAAAQAAAAAAAACYAAAAAAAAADoAAAABAAAAAQAAAAAAAACZAAAAAAAAADsAAAABAAAAAQAAAAAAAACaAAAAAAAAADwAAAABAAAAAQAAAAAAAACbAAAAAAAAAD0AAAABAAAAAQAAAAAAAACcAAAAAAAAAD4AAAABAAAAAQAAAAAAAACdAAAAAAAAAD8AAAABAAAAAQAAAAAAAACeAAAAAAAAAEAAAAABAAAAAQAAAAAAAACfAAAAAAAAAEEAAAABAAAAAQAAAAAAAACgAAAAAAAAAEIAAAABAAAAAQAAAAAAAAChAAAAAAAAAEMAAAABAAAAAQAAAAAAAACiAAAAAAAAAEQAAAABAAAAAQAAAAAAAACjAAAAAAAAAEUAAAABAAAAAQAAAAAAAACkAAAAAAAAAEYAAAABAAAAAQAAAAAAAAClAAAAAAAAAEcAAAABAAAAAQAAAAAAAACmAAAAAAAAAEgAAAABAAAAAQAAAAAAAACnAAAAAAAAAEkAAAABAAAAAQAAAAAAAACoAAAAAAAAAEoAAAABAAAAAQAAAAAAAACpAAAAAAAAAEsAAAABAAAAAQAAAAAAAACqAAAAAAAAAEwAAAABAAAAAQAAAAAAAACrAAAAAAAAAE0AAAABAAAAAQAAAAAAAACsAAAAAAAAAE4AAAAAAAAAAAAAAAkAAAAAAAAAugAAAAMAuwAAAAMAvAAAAAoAAAAAAL0AAAAEAAAAAAAAAAAAvgAAAAQAAQAAAAAAAAC/AAAABwAAAAAAwAAAAAQAAQAAAAAAAADBAAAABwAAAAAAwgAAAAIAAAAAAGMAAAA=", cur_sc, $P5004, $P5006, conflicts
    unless conflicts goto if530_end1117 
    die "Repossession conflicts occurred during deserialization"
  if530_end1117:
    .const "LexInfo" $P5001 = "cuid_143_1361633907.987"
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 0
    $P5001."set_static_lexpad_value"("GLOBALish", $P5002)
    .const "LexInfo" $P5003 = "cuid_143_1361633907.987"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_143_1361633907.987"
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 0
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_143_1361633907.987"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_143_1361633907.987"
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 1
    $P5001."set_static_lexpad_value"("EXPORT", $P5002)
    .const "LexInfo" $P5003 = "cuid_143_1361633907.987"
    $P5004 = $P5003."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_1_1361633907.987" 
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 4
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_2_1361633907.987" 
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 5
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_3_1361633907.987" 
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 6
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_4_1361633907.987" 
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 7
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_5_1361633907.987" 
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 8
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_6_1361633907.987" 
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 9
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_7_1361633907.987" 
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 10
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_8_1361633907.987" 
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 11
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_9_1361633907.987" 
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 12
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_10_1361633907.987" 
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 13
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_11_1361633907.987" 
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 14
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_12_1361633907.987" 
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 15
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_13_1361633907.987" 
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 16
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_14_1361633907.987" 
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 17
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_15_1361633907.987" 
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 18
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_16_1361633907.987" 
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 19
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_17_1361633907.987" 
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 20
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_18_1361633907.987" 
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 21
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_19_1361633907.987" 
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 22
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_20_1361633907.987" 
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 23
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_21_1361633907.987" 
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 24
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_22_1361633907.987" 
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 25
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_119_1361633907.987"
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 26
    $P5001."set_static_lexpad_value"("NFAType", $P5002)
    .const "LexInfo" $P5003 = "cuid_119_1361633907.987"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_138_1361633907.987"
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 26
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_138_1361633907.987"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_138_1361633907.987"
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 26
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_138_1361633907.987"
    $P5004 = $P5003."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_23_1361633907.987" 
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 27
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_24_1361633907.987" 
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 28
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_25_1361633907.987" 
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 29
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_26_1361633907.987" 
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 30
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_27_1361633907.987" 
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 31
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_119_1361633907.987"
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 3
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_119_1361633907.987"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_119_1361633907.987"
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 3
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_119_1361633907.987"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_143_1361633907.987"
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 32
    $P5001."set_static_lexpad_value"("ParseShared", $P5002)
    .const "LexInfo" $P5003 = "cuid_143_1361633907.987"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_144_1361633907.987"
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 32
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_144_1361633907.987"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_144_1361633907.987"
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 32
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_144_1361633907.987"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_143_1361633907.987"
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 33
    $P5001."set_static_lexpad_value"("NQPCursorRole", $P5002)
    .const "LexInfo" $P5003 = "cuid_143_1361633907.987"
    $P5004 = $P5003."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_28_1361633907.987" 
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 34
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_29_1361633907.987" 
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 35
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_30_1361633907.987" 
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 36
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_31_1361633907.987" 
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 37
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_32_1361633907.987" 
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 38
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_33_1361633907.987" 
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 39
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_34_1361633907.987" 
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 40
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_35_1361633907.987" 
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 41
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_36_1361633907.987" 
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 42
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_37_1361633907.987" 
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 43
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_38_1361633907.987" 
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 44
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_39_1361633907.987" 
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 45
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_40_1361633907.987" 
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 46
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_41_1361633907.987" 
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 47
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_42_1361633907.987" 
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 48
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_43_1361633907.987" 
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 49
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_44_1361633907.987" 
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 50
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_45_1361633907.987" 
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 51
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_46_1361633907.987" 
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 52
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_47_1361633907.987" 
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 53
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_48_1361633907.987" 
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 54
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_49_1361633907.987" 
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 55
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_50_1361633907.987" 
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 56
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_51_1361633907.987" 
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 57
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_52_1361633907.987" 
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 58
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_53_1361633907.987" 
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 59
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_54_1361633907.987" 
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 60
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_55_1361633907.987" 
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 61
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_56_1361633907.987" 
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 62
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_57_1361633907.987" 
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 63
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_58_1361633907.987" 
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 64
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_59_1361633907.987" 
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 65
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_60_1361633907.987" 
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 66
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_61_1361633907.987" 
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 67
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_62_1361633907.987" 
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 68
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_63_1361633907.987" 
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 69
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_64_1361633907.987" 
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 70
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_65_1361633907.987" 
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 71
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_66_1361633907.987" 
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 72
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_67_1361633907.987" 
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 73
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_68_1361633907.987" 
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 74
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_69_1361633907.987" 
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 75
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_70_1361633907.987" 
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 76
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_71_1361633907.987" 
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 77
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_72_1361633907.987" 
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 78
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_73_1361633907.987" 
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 79
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_74_1361633907.987" 
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 80
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_75_1361633907.987" 
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 81
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_76_1361633907.987" 
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 82
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_77_1361633907.987" 
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 83
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_78_1361633907.987" 
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 84
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_79_1361633907.987" 
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 85
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_79_1361633907.987"
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 33
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_79_1361633907.987"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_79_1361633907.987"
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 33
    $P5001."set_static_lexpad_value"("$?ROLE", $P5002)
    .const "LexInfo" $P5003 = "cuid_79_1361633907.987"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_143_1361633907.987"
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 86
    $P5001."set_static_lexpad_value"("NQPMatch", $P5002)
    .const "LexInfo" $P5003 = "cuid_143_1361633907.987"
    $P5004 = $P5003."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_80_1361633907.987" 
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 87
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_81_1361633907.987" 
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 88
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_82_1361633907.987" 
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 89
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_83_1361633907.987" 
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 90
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_84_1361633907.987" 
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 91
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_85_1361633907.987" 
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 92
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_86_1361633907.987" 
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 93
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_87_1361633907.987" 
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 94
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_88_1361633907.987" 
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 95
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_89_1361633907.987" 
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 96
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_90_1361633907.987" 
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 97
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_91_1361633907.987" 
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 98
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_145_1361633907.987"
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 86
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_145_1361633907.987"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_145_1361633907.987"
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 86
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_145_1361633907.987"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_143_1361633907.987"
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 99
    $P5001."set_static_lexpad_value"("NQPCursor", $P5002)
    .const "LexInfo" $P5003 = "cuid_143_1361633907.987"
    $P5004 = $P5003."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_92_1361633907.987" 
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 100
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_93_1361633907.987" 
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 101
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_94_1361633907.987" 
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 102
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_95_1361633907.987" 
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 103
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_96_1361633907.987" 
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 104
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_151_1361633907.987"
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 99
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_151_1361633907.987"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_151_1361633907.987"
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 99
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_151_1361633907.987"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_143_1361633907.987"
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 105
    $P5001."set_static_lexpad_value"("NQPRegexMethod", $P5002)
    .const "LexInfo" $P5003 = "cuid_143_1361633907.987"
    $P5004 = $P5003."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_115_1361633907.987" 
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 106
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_116_1361633907.987" 
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 107
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_117_1361633907.987" 
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 108
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_161_1361633907.987"
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 105
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_161_1361633907.987"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_161_1361633907.987"
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 105
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_161_1361633907.987"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_143_1361633907.987"
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 109
    $P5001."set_static_lexpad_value"("NQPRegex", $P5002)
    .const "LexInfo" $P5003 = "cuid_143_1361633907.987"
    $P5004 = $P5003."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_118_1361633907.987" 
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 110
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_162_1361633907.987"
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 109
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_162_1361633907.987"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_162_1361633907.987"
    nqp_get_sc_object $P5002, "83136044E255DF08818594D357E9CBBFAA0C576F-1361633908.012", 109
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_162_1361633907.987"
    $P5004 = $P5003."finish_static_lexpad"()
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_163_1361633907.987") :anon :lex :outer("cuid_164_1361633907.987")
.annotate 'file', "src\\stage2\\QRegex.nqp"
    new $P5001, 'ResizablePMCArray'
    .const 'Sub' $P5002 = "cuid_1_1361633907.987" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_2_1361633907.987" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_3_1361633907.987" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_4_1361633907.987" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_5_1361633907.987" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_6_1361633907.987" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_7_1361633907.987" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_8_1361633907.987" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_9_1361633907.987" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_10_1361633907.987" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_11_1361633907.987" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_12_1361633907.987" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_13_1361633907.987" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_14_1361633907.987" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_15_1361633907.987" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_16_1361633907.987" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_17_1361633907.987" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_18_1361633907.987" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_19_1361633907.987" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_20_1361633907.987" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_21_1361633907.987" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_22_1361633907.987" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_23_1361633907.987" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_24_1361633907.987" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_25_1361633907.987" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_26_1361633907.987" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_27_1361633907.987" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_28_1361633907.987" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_29_1361633907.987" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_30_1361633907.987" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_31_1361633907.987" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_32_1361633907.987" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_33_1361633907.987" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_34_1361633907.987" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_35_1361633907.987" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_36_1361633907.987" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_37_1361633907.987" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_38_1361633907.987" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_39_1361633907.987" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_40_1361633907.987" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_41_1361633907.987" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_42_1361633907.987" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_43_1361633907.987" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_44_1361633907.987" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_45_1361633907.987" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_46_1361633907.987" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_47_1361633907.987" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_48_1361633907.987" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_49_1361633907.987" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_50_1361633907.987" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_51_1361633907.987" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_52_1361633907.987" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_53_1361633907.987" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_54_1361633907.987" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_55_1361633907.987" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_56_1361633907.987" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_57_1361633907.987" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_58_1361633907.987" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_59_1361633907.987" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_60_1361633907.987" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_61_1361633907.987" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_62_1361633907.987" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_63_1361633907.987" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_64_1361633907.987" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_65_1361633907.987" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_66_1361633907.987" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_67_1361633907.987" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_68_1361633907.987" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_69_1361633907.987" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_70_1361633907.987" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_71_1361633907.987" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_72_1361633907.987" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_73_1361633907.987" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_74_1361633907.987" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_75_1361633907.987" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_76_1361633907.987" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_77_1361633907.987" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_78_1361633907.987" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_79_1361633907.987" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_80_1361633907.987" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_81_1361633907.987" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_82_1361633907.987" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_83_1361633907.987" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_84_1361633907.987" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_85_1361633907.987" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_86_1361633907.987" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_87_1361633907.987" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_88_1361633907.987" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_89_1361633907.987" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_90_1361633907.987" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_91_1361633907.987" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_92_1361633907.987" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_93_1361633907.987" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_94_1361633907.987" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_95_1361633907.987" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_96_1361633907.987" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_115_1361633907.987" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_116_1361633907.987" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_117_1361633907.987" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_118_1361633907.987" 
    push $P5001, $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_165_1361633907.987") :load
.annotate 'file', "src\\stage2\\QRegex.nqp"
    .const 'Sub' $P5001 = "cuid_143_1361633907.987" 
    $P5002 = $P5001()
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_166_1361633907.987") :main
.annotate 'file', "src\\stage2\\QRegex.nqp"
    .param pmc ARGS :slurpy 
    .const 'Sub' $P5001 = "cuid_143_1361633907.987" 
    $P5002 = $P5001(ARGS :flat)
    .return ($P5002) 
.end