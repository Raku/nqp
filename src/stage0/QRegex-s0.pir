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
.sub "" :subid("cuid_144_1360623830.553") :anon :lex
.annotate 'file', "src\\stage2\\QRegex.nqp"
    .param pmc _lex_param_0 :slurpy 
    .const 'Sub' $P5026 = 'cuid_120_1360623830.553' 
    capture_lex $P5026 
    .const 'Sub' $P5026 = 'cuid_145_1360623830.553' 
    capture_lex $P5026 
    .const 'Sub' $P5026 = 'cuid_80_1360623830.553' 
    capture_lex $P5026 
    .const 'Sub' $P5026 = 'cuid_146_1360623830.553' 
    capture_lex $P5026 
    .const 'Sub' $P5026 = 'cuid_152_1360623830.553' 
    capture_lex $P5026 
    .const 'Sub' $P5026 = 'cuid_162_1360623830.553' 
    capture_lex $P5026 
    .const 'Sub' $P5026 = 'cuid_163_1360623830.553' 
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
    .local pmc fb_tmp_18 
    .local pmc ctxsave 
.annotate 'line', 494
.annotate 'line', 495
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 9
    nqp_get_sc_object $P5004, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 0
    nqp_get_package_through_who $P5003, $P5004, "QRegex"
    get_who $P5002, $P5003
    set fb_tmp_18, $P5002
    repr_defined $I5001, fb_tmp_18
    unless $I5001 goto if144_else305 
    set $P5005, fb_tmp_18["NFA"]
    set $P5007, $P5005
    goto if144_end306
  if144_else305:
    null $P5006
    set $P5007, $P5006
  if144_end306:
    unless_null $P5007, vivi_145307
    nqp_get_sc_object $P5008, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5007, $P5008
  vivi_145307:
    $P5001."SET_NFA_TYPE"($P5007)
    find_dynamic_lex $P5009, "$*CTXSAVE"
    set ctxsave, $P5009
    isnull $I5002, ctxsave
    if $I5002 goto unless146_end309 
    can $I5003, ctxsave, "ctxsave"
    box $P5012, $I5003
    set $P5011, $P5012
    unless $I5003 goto if147_end311 
    $P5010 = ctxsave."ctxsave"()
    set $P5011, $P5010
  if147_end311:
  unless146_end309:
.annotate 'line', 1
    .const 'Sub' $P5013 = 'cuid_120_1360623830.553' 
    capture_lex $P5013
    $P5014 = $P5013()
    .const 'Sub' $P5015 = 'cuid_145_1360623830.553' 
    capture_lex $P5015
    $P5016 = $P5015()
    .const 'Sub' $P5017 = 'cuid_80_1360623830.553' 
    capture_lex $P5017
    .const 'Sub' $P5018 = 'cuid_146_1360623830.553' 
    capture_lex $P5018
    $P5019 = $P5018()
    .const 'Sub' $P5020 = 'cuid_152_1360623830.553' 
    capture_lex $P5020
    $P5021 = $P5020()
    .const 'Sub' $P5022 = 'cuid_162_1360623830.553' 
    capture_lex $P5022
    $P5023 = $P5022()
    .const 'Sub' $P5024 = 'cuid_163_1360623830.553' 
    capture_lex $P5024
    $P5025 = $P5024()
    .return () 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_120_1360623830.553") :anon :lex :outer("cuid_144_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 7
    .const 'Sub' $P5061 = 'cuid_1_1360623830.553' 
    capture_lex $P5061 
    .const 'Sub' $P5061 = 'cuid_2_1360623830.553' 
    capture_lex $P5061 
    .const 'Sub' $P5061 = 'cuid_3_1360623830.553' 
    capture_lex $P5061 
    .const 'Sub' $P5061 = 'cuid_4_1360623830.553' 
    capture_lex $P5061 
    .const 'Sub' $P5061 = 'cuid_5_1360623830.553' 
    capture_lex $P5061 
    .const 'Sub' $P5061 = 'cuid_6_1360623830.553' 
    capture_lex $P5061 
    .const 'Sub' $P5061 = 'cuid_7_1360623830.553' 
    capture_lex $P5061 
    .const 'Sub' $P5061 = 'cuid_8_1360623830.553' 
    capture_lex $P5061 
    .const 'Sub' $P5061 = 'cuid_9_1360623830.553' 
    capture_lex $P5061 
    .const 'Sub' $P5061 = 'cuid_10_1360623830.553' 
    capture_lex $P5061 
    .const 'Sub' $P5061 = 'cuid_11_1360623830.553' 
    capture_lex $P5061 
    .const 'Sub' $P5061 = 'cuid_12_1360623830.553' 
    capture_lex $P5061 
    .const 'Sub' $P5061 = 'cuid_13_1360623830.553' 
    capture_lex $P5061 
    .const 'Sub' $P5061 = 'cuid_14_1360623830.553' 
    capture_lex $P5061 
    .const 'Sub' $P5061 = 'cuid_15_1360623830.553' 
    capture_lex $P5061 
    .const 'Sub' $P5061 = 'cuid_16_1360623830.553' 
    capture_lex $P5061 
    .const 'Sub' $P5061 = 'cuid_17_1360623830.553' 
    capture_lex $P5061 
    .const 'Sub' $P5061 = 'cuid_18_1360623830.553' 
    capture_lex $P5061 
    .const 'Sub' $P5061 = 'cuid_19_1360623830.553' 
    capture_lex $P5061 
    .const 'Sub' $P5061 = 'cuid_20_1360623830.553' 
    capture_lex $P5061 
    .const 'Sub' $P5061 = 'cuid_21_1360623830.553' 
    capture_lex $P5061 
    .const 'Sub' $P5061 = 'cuid_22_1360623830.553' 
    capture_lex $P5061 
    .const 'Sub' $P5061 = 'cuid_139_1360623830.553' 
    capture_lex $P5061 
    .const 'Sub' $P5061 = 'cuid_23_1360623830.553' 
    capture_lex $P5061 
    .const 'Sub' $P5061 = 'cuid_24_1360623830.553' 
    capture_lex $P5061 
    .const 'Sub' $P5061 = 'cuid_25_1360623830.553' 
    capture_lex $P5061 
    .const 'Sub' $P5061 = 'cuid_26_1360623830.553' 
    capture_lex $P5061 
    .const 'Sub' $P5061 = 'cuid_27_1360623830.553' 
    capture_lex $P5061 
    .lex "%cclass_code", $P101 
    .lex "NFAType", $P102 
    .lex "$?PACKAGE", $P103 
    .lex "$?CLASS", $P104 
    new $P5001, 'Hash'
    set $P101, $P5001
.annotate 'line', 96
    box $P5002, 65535
    set $P101["."], $P5002
    box $P5003, 8
    set $P101["d"], $P5003
    box $P5004, 32
    set $P101["s"], $P5004
    box $P5005, 8192
    set $P101["w"], $P5005
    box $P5006, 4096
    set $P101["n"], $P5006
    box $P5007, 4096
    set $P101["nl"], $P5007
.annotate 'line', 7
    get_who $P5008, $P103
    box $P5009, 0
    set $P5008["$EDGE_FATE"], $P5009
    get_who $P5010, $P103
    box $P5011, 1
    set $P5010["$EDGE_EPSILON"], $P5011
    get_who $P5012, $P103
    box $P5013, 2
    set $P5012["$EDGE_CODEPOINT"], $P5013
    get_who $P5014, $P103
    box $P5015, 3
    set $P5014["$EDGE_CODEPOINT_NEG"], $P5015
    get_who $P5016, $P103
    box $P5017, 4
    set $P5016["$EDGE_CHARCLASS"], $P5017
    get_who $P5018, $P103
    box $P5019, 5
    set $P5018["$EDGE_CHARCLASS_NEG"], $P5019
    get_who $P5020, $P103
    box $P5021, 6
    set $P5020["$EDGE_CHARLIST"], $P5021
    get_who $P5022, $P103
    box $P5023, 7
    set $P5022["$EDGE_CHARLIST_NEG"], $P5023
    get_who $P5024, $P103
    box $P5025, 8
    set $P5024["$EDGE_SUBRULE"], $P5025
    get_who $P5026, $P103
    box $P5027, 9
    set $P5026["$EDGE_CODEPOINT_I"], $P5027
    get_who $P5028, $P103
    box $P5029, 10
    set $P5028["$EDGE_CODEPOINT_I_NEG"], $P5029
    get_who $P5030, $P103
    box $P5031, 11
    set $P5030["$EDGE_GENERIC_VAR"], $P5031
    .const 'Sub' $P5032 = 'cuid_1_1360623830.553' 
    capture_lex $P5032
    .const 'Sub' $P5033 = 'cuid_2_1360623830.553' 
    capture_lex $P5033
    .const 'Sub' $P5034 = 'cuid_3_1360623830.553' 
    capture_lex $P5034
    .const 'Sub' $P5035 = 'cuid_4_1360623830.553' 
    capture_lex $P5035
    .const 'Sub' $P5036 = 'cuid_5_1360623830.553' 
    capture_lex $P5036
    .const 'Sub' $P5037 = 'cuid_6_1360623830.553' 
    capture_lex $P5037
    .const 'Sub' $P5038 = 'cuid_7_1360623830.553' 
    capture_lex $P5038
    .const 'Sub' $P5039 = 'cuid_8_1360623830.553' 
    capture_lex $P5039
    .const 'Sub' $P5040 = 'cuid_9_1360623830.553' 
    capture_lex $P5040
    .const 'Sub' $P5041 = 'cuid_10_1360623830.553' 
    capture_lex $P5041
    .const 'Sub' $P5042 = 'cuid_11_1360623830.553' 
    capture_lex $P5042
    .const 'Sub' $P5043 = 'cuid_12_1360623830.553' 
    capture_lex $P5043
    .const 'Sub' $P5044 = 'cuid_13_1360623830.553' 
    capture_lex $P5044
    .const 'Sub' $P5045 = 'cuid_14_1360623830.553' 
    capture_lex $P5045
    .const 'Sub' $P5046 = 'cuid_15_1360623830.553' 
    capture_lex $P5046
    .const 'Sub' $P5047 = 'cuid_16_1360623830.553' 
    capture_lex $P5047
    .const 'Sub' $P5048 = 'cuid_17_1360623830.553' 
    capture_lex $P5048
    .const 'Sub' $P5049 = 'cuid_18_1360623830.553' 
    capture_lex $P5049
    .const 'Sub' $P5050 = 'cuid_19_1360623830.553' 
    capture_lex $P5050
    .const 'Sub' $P5051 = 'cuid_20_1360623830.553' 
    capture_lex $P5051
    .const 'Sub' $P5052 = 'cuid_21_1360623830.553' 
    capture_lex $P5052
    .const 'Sub' $P5053 = 'cuid_22_1360623830.553' 
    capture_lex $P5053
    .const 'Sub' $P5054 = 'cuid_139_1360623830.553' 
    capture_lex $P5054
    $P5055 = $P5054()
    .const 'Sub' $P5056 = 'cuid_23_1360623830.553' 
    capture_lex $P5056
    .const 'Sub' $P5057 = 'cuid_24_1360623830.553' 
    capture_lex $P5057
    .const 'Sub' $P5058 = 'cuid_25_1360623830.553' 
    capture_lex $P5058
    .const 'Sub' $P5059 = 'cuid_26_1360623830.553' 
    capture_lex $P5059
    .const 'Sub' $P5060 = 'cuid_27_1360623830.553' 
    capture_lex $P5060
    .return ($P5060) 
.end
.HLL "nqp"
.namespace []
.sub "new" :subid("cuid_1_1360623830.553") :anon :lex :outer("cuid_120_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 34
    .param pmc _lex_param_0 
    .lex "$new", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
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
.sub "from_saved" :subid("cuid_2_1360623830.553") :anon :lex :outer("cuid_120_1360623830.553")
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
.sub "addstate" :subid("cuid_3_1360623830.553") :anon :lex :outer("cuid_120_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 45
    .param pmc _lex_param_0 
    .lex "$id", $I101 
    .lex "self", _lex_param_0 
    set $I101, 0
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 3
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!states"
    set $N5001, $P5003
    set $I5001, $N5001
    set $I101, $I5001
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 3
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!states"
    new $P5007, 'ResizablePMCArray'
    set $P5006[$I101], $P5007
    .return ($I101) 
.end
.HLL "nqp"
.namespace []
.sub "addedge" :subid("cuid_4_1360623830.553") :anon :lex :outer("cuid_120_1360623830.553")
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
    .local pmc fb_tmp_19 
    .local pmc fb_tmp_20 
    if haz_param_9, default324
    box $P5024, 1
    set _lex_param_5, $P5024
  default324:
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P101, $P5001
    unless _lex_param_5 goto if148_end313 
    nqp_decontainerize $P5002, _lex_param_0
    nqp_get_sc_object $P5003, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 3
    box $P5004, 1
    repr_bind_attr_obj $P5002, $P5003, "$!edges", $P5004
  if148_end313:
    set $N5001, _lex_param_2
    set $N5002, 0
    islt $I5001, $N5001, $N5002
    unless $I5001 goto if149_end315 
.annotate 'line', 53
    nqp_decontainerize $P5005, _lex_param_0
    $P5006 = $P5005."addstate"()
    set $I5002, $P5006
    set _lex_param_2, $I5002
  if149_end315:
    nqp_decontainerize $P5007, _lex_param_0
    nqp_get_sc_object $P5008, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 3
    repr_get_attr_obj $P5009, $P5007, $P5008, "$!states"
    set fb_tmp_19, $P5009
    repr_defined $I5003, fb_tmp_19
    unless $I5003 goto if150_else316 
    set $P5010, fb_tmp_19[_lex_param_1]
    set $P5012, $P5010
    goto if150_end317
  if150_else316:
    null $P5011
    set $P5012, $P5011
  if150_end317:
    unless_null $P5012, vivi_151318
    nqp_get_sc_object $P5013, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5012, $P5013
  vivi_151318:
    set $P101, $P5012
    push $P101, _lex_param_3
    nqp_get_sc_object $P5016, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 0
    nqp_get_package_through_who $P5015, $P5016, "QAST"
    get_who $P5014, $P5015
    set fb_tmp_20, $P5014
    repr_defined $I5005, fb_tmp_20
    unless $I5005 goto if153_else321 
    set $P5017, fb_tmp_20["SVal"]
    set $P5019, $P5017
    goto if153_end322
  if153_else321:
    null $P5018
    set $P5019, $P5018
  if153_end322:
    unless_null $P5019, vivi_154323
    nqp_get_sc_object $P5020, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5019, $P5020
  vivi_154323:
    type_check $I5004, _lex_param_4, $P5019
    unless $I5004 goto if152_else319 
.annotate 'line', 56
    $P5021 = _lex_param_4."value"()
    set $P5022, $P5021
    goto if152_end320
  if152_else319:
    set $P5022, _lex_param_4
  if152_end320:
    push $P101, $P5022
    box $P5023, _lex_param_2
    push $P101, $P5023
    .return (_lex_param_2) 
.end
.HLL "nqp"
.namespace []
.sub "states" :subid("cuid_5_1360623830.553") :anon :lex :outer("cuid_120_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 61
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 3
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!states"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "addnode" :subid("cuid_6_1360623830.553") :anon :lex :outer("cuid_120_1360623830.553")
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
    nqp_get_sc_object $P5003, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
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
.sub "regex_nfa" :subid("cuid_7_1360623830.553") :anon :lex :outer("cuid_120_1360623830.553")
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
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
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
    unless $P5008 goto if155_else327 
.annotate 'line', 71
    nqp_decontainerize $P5009, _lex_param_0
    set $S5001, $P101
    $P5010 = $P5009.$S5001(_lex_param_1, _lex_param_2, _lex_param_3)
    set $P5013, $P5010
    goto if155_end328
  if155_else327:
.annotate 'line', 72
    nqp_decontainerize $P5011, _lex_param_0
    $P5012 = $P5011."fate"(_lex_param_1, _lex_param_2, _lex_param_3)
    set $P5013, $P5012
  if155_end328:
    .return ($P5013) 
.end
.HLL "nqp"
.namespace []
.sub "fate" :subid("cuid_8_1360623830.553") :anon :lex :outer("cuid_120_1360623830.553")
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
    .local pmc fb_tmp_21 
.annotate 'line', 76
    nqp_decontainerize $P5001, _lex_param_0
    find_lex $P5003, "$?PACKAGE"
    get_who $P5002, $P5003
    set fb_tmp_21, $P5002
    repr_defined $I5001, fb_tmp_21
    unless $I5001 goto if156_else329 
    set $P5004, fb_tmp_21["$EDGE_FATE"]
    set $P5006, $P5004
    goto if156_end330
  if156_else329:
    null $P5005
    set $P5006, $P5005
  if156_end330:
    unless_null $P5006, vivi_157331
    nqp_get_sc_object $P5007, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5006, $P5007
  vivi_157331:
    $P5008 = $P5001."addedge"(_lex_param_2, 0, $P5006, 0, 0 :named("newedge"))
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "alt" :subid("cuid_9_1360623830.553") :anon :lex :outer("cuid_120_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 79
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param int _lex_param_2 
    .param int _lex_param_3 
    .const 'Sub' $P5007 = 'cuid_121_1360623830.553' 
    capture_lex $P5007 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$from", _lex_param_2 
    .lex "$to", _lex_param_3 
.annotate 'line', 80
    $P5004 = _lex_param_1."list"()
    set $P5001, $P5004
    iter $P5003, $P5004
  for_next336:
    unless $P5003, for_done338
    shift $P5006, $P5003
  for_redo337:
    .const 'Sub' $P5005 = 'cuid_121_1360623830.553' 
    capture_lex $P5005
    $P5001 = $P5005($P5006)
    goto for_next336
  for_done338:
    .return (_lex_param_3) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_121_1360623830.553") :anon :lex :outer("cuid_9_1360623830.553")
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
    unless $I5004 goto if159_end335 
    set $N5003, $I101
    set $N5004, 0
    isgt $I5006, $N5003, $N5004
    set $I5007, $I5006
  if159_end335:
    set $I5008, $I5007
    unless $I5007 goto if158_end333 
    store_lex "$to", $I101
    set $I5008, $I101
  if158_end333:
    .return ($I5008) 
.end
.HLL "nqp"
.namespace []
.sub "anchor" :subid("cuid_10_1360623830.553") :anon :lex :outer("cuid_120_1360623830.553")
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
    .local pmc fb_tmp_22 
.annotate 'line', 88
    nqp_decontainerize $P5001, _lex_param_0
    find_lex $P5003, "$?PACKAGE"
    get_who $P5002, $P5003
    set fb_tmp_22, $P5002
    repr_defined $I5001, fb_tmp_22
    unless $I5001 goto if160_else339 
    set $P5004, fb_tmp_22["$EDGE_EPSILON"]
    set $P5006, $P5004
    goto if160_end340
  if160_else339:
    null $P5005
    set $P5006, $P5005
  if160_end340:
    unless_null $P5006, vivi_161341
    nqp_get_sc_object $P5007, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5006, $P5007
  vivi_161341:
    $P5008 = $P5001."addedge"(_lex_param_2, _lex_param_3, $P5006, 0)
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "dba" :subid("cuid_11_1360623830.553") :anon :lex :outer("cuid_120_1360623830.553")
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
    .local pmc fb_tmp_23 
.annotate 'line', 92
    nqp_decontainerize $P5001, _lex_param_0
    find_lex $P5003, "$?PACKAGE"
    get_who $P5002, $P5003
    set fb_tmp_23, $P5002
    repr_defined $I5001, fb_tmp_23
    unless $I5001 goto if162_else342 
    set $P5004, fb_tmp_23["$EDGE_EPSILON"]
    set $P5006, $P5004
    goto if162_end343
  if162_else342:
    null $P5005
    set $P5006, $P5005
  if162_end343:
    unless_null $P5006, vivi_163344
    nqp_get_sc_object $P5007, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5006, $P5007
  vivi_163344:
    $P5008 = $P5001."addedge"(_lex_param_2, _lex_param_3, $P5006, 0)
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "cclass" :subid("cuid_12_1360623830.553") :anon :lex :outer("cuid_120_1360623830.553")
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
    .local pmc fb_tmp_24 
    .local pmc fb_tmp_25 
.annotate 'line', 106
    nqp_decontainerize $P5001, _lex_param_0
    find_lex $P5003, "$?PACKAGE"
    get_who $P5002, $P5003
    set fb_tmp_24, $P5002
    repr_defined $I5001, fb_tmp_24
    unless $I5001 goto if164_else345 
    set $P5004, fb_tmp_24["$EDGE_CHARCLASS"]
    set $P5006, $P5004
    goto if164_end346
  if164_else345:
    null $P5005
    set $P5006, $P5005
  if164_end346:
    unless_null $P5006, vivi_165347
    nqp_get_sc_object $P5007, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5006, $P5007
  vivi_165347:
    set $N5002, $P5006
    $P5008 = _lex_param_1."negate"()
    istrue $I5002, $P5008
    set $N5003, $I5002
    add $N5001, $N5002, $N5003
    find_lex $P5009, "%cclass_code"
    set fb_tmp_25, $P5009
    repr_defined $I5003, fb_tmp_25
    unless $I5003 goto if166_else348 
.annotate 'line', 107
    $P5011 = _lex_param_1."subtype"()
    set $S5002, $P5011
    downcase $S5001, $S5002
    set $P5010, fb_tmp_25[$S5001]
    set $P5013, $P5010
    goto if166_end349
  if166_else348:
    null $P5012
    set $P5013, $P5012
  if166_end349:
    unless_null $P5013, vivi_167350
    nqp_get_sc_object $P5014, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5013, $P5014
  vivi_167350:
    $P5015 = $P5001."addedge"(_lex_param_2, _lex_param_3, $N5001, $P5013)
    .return ($P5015) 
.end
.HLL "nqp"
.namespace []
.sub "concat" :subid("cuid_13_1360623830.553") :anon :lex :outer("cuid_120_1360623830.553")
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
    .local pmc fb_tmp_26 
    .local pmc fb_tmp_27 
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
  while168_test351:
    set $N5004, _lex_param_2
    set $N5005, 0
    isgt $I5002, $N5004, $N5005
    set $I5004, $I5002
    unless $I5002 goto if169_end357 
    set $N5006, $I101
    set $N5007, $I102
    islt $I5003, $N5006, $N5007
    set $I5004, $I5003
  if169_end357:
    set $I5008, $I5004
    unless $I5004 goto while168_done355 
  while168_redo353:
.annotate 'line', 113
.annotate 'line', 114
    nqp_decontainerize $P5002, _lex_param_0
    set fb_tmp_26, _lex_param_1
    repr_defined $I5005, fb_tmp_26
    unless $I5005 goto if170_else358 
    set $P5003, fb_tmp_26[$I101]
    set $P5005, $P5003
    goto if170_end359
  if170_else358:
    null $P5004
    set $P5005, $P5004
  if170_end359:
    unless_null $P5005, vivi_171360
    nqp_get_sc_object $P5006, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5005, $P5006
  vivi_171360:
    $P5007 = $P5002."regex_nfa"($P5005, _lex_param_2, -1)
    set $I5006, $P5007
    set _lex_param_2, $I5006
    set $N5009, $I101
    set $N5010, 1
    add $N5008, $N5009, $N5010
    set $I5007, $N5008
    set $I101, $I5007
    set $I5008, $I101
    goto while168_test351 
  while168_done355:
    set $N5011, _lex_param_2
    set $N5012, 0
    isgt $I5009, $N5011, $N5012
    set $I5011, $I5009
    unless $I5009 goto if173_end364 
    set $N5013, $I102
    set $N5014, 0
    isge $I5010, $N5013, $N5014
    set $I5011, $I5010
  if173_end364:
    unless $I5011 goto if172_else361 
.annotate 'line', 117
    nqp_decontainerize $P5008, _lex_param_0
    set fb_tmp_27, _lex_param_1
    repr_defined $I5012, fb_tmp_27
    unless $I5012 goto if174_else365 
    set $P5009, fb_tmp_27[$I101]
    set $P5011, $P5009
    goto if174_end366
  if174_else365:
    null $P5010
    set $P5011, $P5010
  if174_end366:
    unless_null $P5011, vivi_175367
    nqp_get_sc_object $P5012, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5011, $P5012
  vivi_175367:
    $P5013 = $P5008."regex_nfa"($P5011, _lex_param_2, _lex_param_3)
    set $P5014, $P5013
    goto if172_end362
  if172_else361:
    box $P5015, _lex_param_3
    set $P5014, $P5015
  if172_end362:
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "enumcharlist" :subid("cuid_14_1360623830.553") :anon :lex :outer("cuid_120_1360623830.553")
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
    .local pmc fb_tmp_28 
    .local pmc fb_tmp_29 
    .local pmc fb_tmp_30 
    .local pmc fb_tmp_31 
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P101, $P5001
    set fb_tmp_28, _lex_param_1
    repr_defined $I5001, fb_tmp_28
    unless $I5001 goto if176_else368 
    set $P5002, fb_tmp_28[0]
    set $P5004, $P5002
    goto if176_end369
  if176_else368:
    null $P5003
    set $P5004, $P5003
  if176_end369:
    unless_null $P5004, vivi_177370
    nqp_get_sc_object $P5005, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5004, $P5005
  vivi_177370:
    set $P101, $P5004
.annotate 'line', 122
    $P5006 = _lex_param_1."subtype"()
    set $S5001, $P5006
    iseq $I5002, $S5001, "zerowidth"
    unless $I5002 goto if178_else371 
.annotate 'line', 123
    nqp_decontainerize $P5007, _lex_param_0
    find_lex $P5009, "$?PACKAGE"
    get_who $P5008, $P5009
    set fb_tmp_29, $P5008
    repr_defined $I5003, fb_tmp_29
    unless $I5003 goto if179_else373 
    set $P5010, fb_tmp_29["$EDGE_CHARLIST"]
    set $P5012, $P5010
    goto if179_end374
  if179_else373:
    null $P5011
    set $P5012, $P5011
  if179_end374:
    unless_null $P5012, vivi_180375
    nqp_get_sc_object $P5013, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5012, $P5013
  vivi_180375:
    set $N5002, $P5012
    $P5014 = _lex_param_1."negate"()
    istrue $I5004, $P5014
    set $N5003, $I5004
    add $N5001, $N5002, $N5003
    $P5015 = $P5007."addedge"(_lex_param_2, -1, $N5001, $P101)
    set $I5005, $P5015
    set _lex_param_2, $I5005
.annotate 'line', 124
    nqp_decontainerize $P5016, _lex_param_0
    find_lex $P5018, "$?PACKAGE"
    get_who $P5017, $P5018
    set fb_tmp_30, $P5017
    repr_defined $I5006, fb_tmp_30
    unless $I5006 goto if181_else376 
    set $P5019, fb_tmp_30["$EDGE_FATE"]
    set $P5021, $P5019
    goto if181_end377
  if181_else376:
    null $P5020
    set $P5021, $P5020
  if181_end377:
    unless_null $P5021, vivi_182378
    nqp_get_sc_object $P5022, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5021, $P5022
  vivi_182378:
    $P5023 = $P5016."addedge"(_lex_param_2, 0, $P5021, 0)
    set $P5033, $P5023
    goto if178_end372
  if178_else371:
.annotate 'line', 126
.annotate 'line', 127
    nqp_decontainerize $P5024, _lex_param_0
    find_lex $P5026, "$?PACKAGE"
    get_who $P5025, $P5026
    set fb_tmp_31, $P5025
    repr_defined $I5007, fb_tmp_31
    unless $I5007 goto if183_else379 
    set $P5027, fb_tmp_31["$EDGE_CHARLIST"]
    set $P5029, $P5027
    goto if183_end380
  if183_else379:
    null $P5028
    set $P5029, $P5028
  if183_end380:
    unless_null $P5029, vivi_184381
    nqp_get_sc_object $P5030, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5029, $P5030
  vivi_184381:
    set $N5005, $P5029
    $P5031 = _lex_param_1."negate"()
    istrue $I5008, $P5031
    set $N5006, $I5008
    add $N5004, $N5005, $N5006
    $P5032 = $P5024."addedge"(_lex_param_2, _lex_param_3, $N5004, $P101)
    set $P5033, $P5032
  if178_end372:
    .return ($P5033) 
.end
.HLL "nqp"
.namespace []
.sub "literal" :subid("cuid_15_1360623830.553") :anon :lex :outer("cuid_120_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 131
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param int _lex_param_2 
    .param int _lex_param_3 
    .const 'Sub' $P5020 = 'cuid_122_1360623830.553' 
    capture_lex $P5020 
    .const 'Sub' $P5020 = 'cuid_123_1360623830.553' 
    capture_lex $P5020 
    .lex "$litlen", $I101 
    .lex "$i", $I102 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$from", _lex_param_2 
    .lex "$to", _lex_param_3 
    .local pmc fb_tmp_32 
    .local pmc fb_tmp_40 
    set $I101, 0
    set $I102, 0
    set fb_tmp_32, _lex_param_1
    repr_defined $I5002, fb_tmp_32
    unless $I5002 goto if185_else382 
    set $P5001, fb_tmp_32[0]
    set $P5003, $P5001
    goto if185_end383
  if185_else382:
    null $P5002
    set $P5003, $P5002
  if185_end383:
    unless_null $P5003, vivi_186384
    nqp_get_sc_object $P5004, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5003, $P5004
  vivi_186384:
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
    unless $I5004 goto if187_else385 
.annotate 'line', 134
.annotate 'line', 135
    $P5005 = _lex_param_1."subtype"()
    set $S5002, $P5005
    iseq $I5005, $S5002, "ignorecase"
    unless $I5005 goto if188_else387 
    .const 'Sub' $P5006 = 'cuid_122_1360623830.553' 
    capture_lex $P5006
    $P5007 = $P5006()
    set $P5010, $P5007
    goto if188_end388
  if188_else387:
    .const 'Sub' $P5008 = 'cuid_123_1360623830.553' 
    capture_lex $P5008
    $P5009 = $P5008()
    set $P5010, $P5009
  if188_end388:
    set $P5019, $P5010
    goto if187_end386
  if187_else385:
.annotate 'line', 155
.annotate 'line', 156
    nqp_decontainerize $P5011, _lex_param_0
    find_lex $P5013, "$?PACKAGE"
    get_who $P5012, $P5013
    set fb_tmp_40, $P5012
    repr_defined $I5006, fb_tmp_40
    unless $I5006 goto if205_else420 
    set $P5014, fb_tmp_40["$EDGE_EPSILON"]
    set $P5016, $P5014
    goto if205_end421
  if205_else420:
    null $P5015
    set $P5016, $P5015
  if205_end421:
    unless_null $P5016, vivi_206422
    nqp_get_sc_object $P5017, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5016, $P5017
  vivi_206422:
    $P5018 = $P5011."addedge"(_lex_param_2, _lex_param_3, $P5016, 0)
    set $P5019, $P5018
  if187_end386:
    .return ($P5019) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_122_1360623830.553") :anon :lex :outer("cuid_15_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 135
    .lex "$litconst_lc", $S101 
    .lex "$litconst_uc", $S102 
    .local pmc fb_tmp_33 
    .local pmc fb_tmp_34 
    .local pmc fb_tmp_35 
    .local pmc fb_tmp_36 
    set $S101, ""
    set $S102, ""
    find_lex $P5001, "$node"
    set fb_tmp_33, $P5001
    repr_defined $I5001, fb_tmp_33
    unless $I5001 goto if189_else389 
    set $P5002, fb_tmp_33[0]
    set $P5004, $P5002
    goto if189_end390
  if189_else389:
    null $P5003
    set $P5004, $P5003
  if189_end390:
    unless_null $P5004, vivi_190391
    nqp_get_sc_object $P5005, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5004, $P5005
  vivi_190391:
    set $S5002, $P5004
    downcase $S5001, $S5002
    set $S101, $S5001
    find_lex $P5006, "$node"
    set fb_tmp_34, $P5006
    repr_defined $I5002, fb_tmp_34
    unless $I5002 goto if191_else392 
    set $P5007, fb_tmp_34[0]
    set $P5009, $P5007
    goto if191_end393
  if191_else392:
    null $P5008
    set $P5009, $P5008
  if191_end393:
    unless_null $P5009, vivi_192394
    nqp_get_sc_object $P5010, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5009, $P5010
  vivi_192394:
    set $S5004, $P5009
    upcase $S5003, $S5004
    set $S102, $S5003
  while193_test395:
    find_lex $I5004, "$i"
    set $N5001, $I5004
    find_lex $I5005, "$litlen"
    set $N5002, $I5005
    islt $I5003, $N5001, $N5002
    set $I5015, $I5003
    unless $I5003 goto while193_done399 
  while193_redo397:
.annotate 'line', 138
.annotate 'line', 139
    find_lex $P5012, "self"
    nqp_decontainerize $P5011, $P5012
    find_lex $I5006, "$from"
    find_lex $P5014, "$?PACKAGE"
    get_who $P5013, $P5014
    set fb_tmp_35, $P5013
    repr_defined $I5007, fb_tmp_35
    unless $I5007 goto if194_else400 
    set $P5015, fb_tmp_35["$EDGE_CODEPOINT_I"]
    set $P5017, $P5015
    goto if194_end401
  if194_else400:
    null $P5016
    set $P5017, $P5016
  if194_end401:
    unless_null $P5017, vivi_195402
    nqp_get_sc_object $P5018, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5017, $P5018
  vivi_195402:
    new $P5019, 'ResizablePMCArray'
    find_lex $I5009, "$i"
    ord $I5008, $S101, $I5009
    box $P5020, $I5008
    push $P5019, $P5020
    find_lex $I5011, "$i"
    ord $I5010, $S102, $I5011
    box $P5021, $I5010
    push $P5019, $P5021
    $P5022 = $P5011."addedge"($I5006, -1, $P5017, $P5019)
    set $I5012, $P5022
    store_lex "$from", $I5012
    find_lex $I5013, "$i"
    set $N5004, $I5013
    set $N5005, 1
    add $N5003, $N5004, $N5005
    set $I5014, $N5003
    store_lex "$i", $I5014
    set $I5015, $I5014
    goto while193_test395 
  while193_done399:
.annotate 'line', 143
    find_lex $P5024, "self"
    nqp_decontainerize $P5023, $P5024
    find_lex $I5016, "$from"
    find_lex $I5017, "$to"
    find_lex $P5026, "$?PACKAGE"
    get_who $P5025, $P5026
    set fb_tmp_36, $P5025
    repr_defined $I5018, fb_tmp_36
    unless $I5018 goto if196_else403 
    set $P5027, fb_tmp_36["$EDGE_CODEPOINT_I"]
    set $P5029, $P5027
    goto if196_end404
  if196_else403:
    null $P5028
    set $P5029, $P5028
  if196_end404:
    unless_null $P5029, vivi_197405
    nqp_get_sc_object $P5030, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5029, $P5030
  vivi_197405:
    new $P5031, 'ResizablePMCArray'
    find_lex $I5020, "$i"
    ord $I5019, $S101, $I5020
    box $P5032, $I5019
    push $P5031, $P5032
    find_lex $I5022, "$i"
    ord $I5021, $S102, $I5022
    box $P5033, $I5021
    push $P5031, $P5033
    $P5034 = $P5023."addedge"($I5016, $I5017, $P5029, $P5031)
    .return ($P5034) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_123_1360623830.553") :anon :lex :outer("cuid_15_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 146
    .lex "$litconst", $S101 
    .local pmc fb_tmp_37 
    .local pmc fb_tmp_38 
    .local pmc fb_tmp_39 
    set $S101, ""
    find_lex $P5001, "$node"
    set fb_tmp_37, $P5001
    repr_defined $I5001, fb_tmp_37
    unless $I5001 goto if198_else406 
    set $P5002, fb_tmp_37[0]
    set $P5004, $P5002
    goto if198_end407
  if198_else406:
    null $P5003
    set $P5004, $P5003
  if198_end407:
    unless_null $P5004, vivi_199408
    nqp_get_sc_object $P5005, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5004, $P5005
  vivi_199408:
    set $S5001, $P5004
    set $S101, $S5001
  while200_test409:
    find_lex $I5003, "$i"
    set $N5001, $I5003
    find_lex $I5004, "$litlen"
    set $N5002, $I5004
    islt $I5002, $N5001, $N5002
    set $I5012, $I5002
    unless $I5002 goto while200_done413 
  while200_redo411:
.annotate 'line', 148
.annotate 'line', 149
    find_lex $P5007, "self"
    nqp_decontainerize $P5006, $P5007
    find_lex $I5005, "$from"
    find_lex $P5009, "$?PACKAGE"
    get_who $P5008, $P5009
    set fb_tmp_38, $P5008
    repr_defined $I5006, fb_tmp_38
    unless $I5006 goto if201_else414 
    set $P5010, fb_tmp_38["$EDGE_CODEPOINT"]
    set $P5012, $P5010
    goto if201_end415
  if201_else414:
    null $P5011
    set $P5012, $P5011
  if201_end415:
    unless_null $P5012, vivi_202416
    nqp_get_sc_object $P5013, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5012, $P5013
  vivi_202416:
    find_lex $I5008, "$i"
    ord $I5007, $S101, $I5008
    $P5014 = $P5006."addedge"($I5005, -1, $P5012, $I5007)
    set $I5009, $P5014
    store_lex "$from", $I5009
    find_lex $I5010, "$i"
    set $N5004, $I5010
    set $N5005, 1
    add $N5003, $N5004, $N5005
    set $I5011, $N5003
    store_lex "$i", $I5011
    set $I5012, $I5011
    goto while200_test409 
  while200_done413:
.annotate 'line', 152
    find_lex $P5016, "self"
    nqp_decontainerize $P5015, $P5016
    find_lex $I5013, "$from"
    find_lex $I5014, "$to"
    find_lex $P5018, "$?PACKAGE"
    get_who $P5017, $P5018
    set fb_tmp_39, $P5017
    repr_defined $I5015, fb_tmp_39
    unless $I5015 goto if203_else417 
    set $P5019, fb_tmp_39["$EDGE_CODEPOINT"]
    set $P5021, $P5019
    goto if203_end418
  if203_else417:
    null $P5020
    set $P5021, $P5020
  if203_end418:
    unless_null $P5021, vivi_204419
    nqp_get_sc_object $P5022, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5021, $P5022
  vivi_204419:
    find_lex $I5017, "$i"
    ord $I5016, $S101, $I5017
    $P5023 = $P5015."addedge"($I5013, $I5014, $P5021, $I5016)
    .return ($P5023) 
.end
.HLL "nqp"
.namespace []
.sub "subrule" :subid("cuid_16_1360623830.553") :anon :lex :outer("cuid_120_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 160
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param int _lex_param_2 
    .param int _lex_param_3 
    .const 'Sub' $P5184 = 'cuid_124_1360623830.553' 
    capture_lex $P5184 
    .const 'Sub' $P5184 = 'cuid_125_1360623830.553' 
    capture_lex $P5184 
    .lex "$subtype", $P101 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$from", _lex_param_2 
    .lex "$to", _lex_param_3 
    .local pmc fb_tmp_44 
    .local pmc fb_tmp_45 
    .local pmc fb_tmp_46 
    .local pmc fb_tmp_47 
    .local pmc fb_tmp_48 
    .local pmc fb_tmp_49 
    .local pmc fb_tmp_50 
    .local pmc fb_tmp_51 
    .local pmc fb_tmp_52 
    .local pmc fb_tmp_54 
    .local pmc fb_tmp_55 
    .local pmc fb_tmp_56 
    .local pmc fb_tmp_57 
    .local pmc fb_tmp_58 
    .local pmc fb_tmp_59 
    .local pmc fb_tmp_60 
    .local pmc fb_tmp_61 
    .local pmc fb_tmp_62 
    .local pmc fb_tmp_63 
    .local pmc fb_tmp_64 
    .local pmc fb_tmp_65 
    .local pmc fb_tmp_66 
    .local pmc fb_tmp_67 
    .local pmc fb_tmp_68 
    .local pmc fb_tmp_69 
    .local pmc fb_tmp_70 
    .local pmc fb_tmp_71 
    .local pmc fb_tmp_72 
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P101, $P5001
.annotate 'line', 161
    $P5002 = _lex_param_1."subtype"()
    set $P101, $P5002
.annotate 'line', 162
    $P5003 = _lex_param_1."name"()
    set $S5001, $P5003
    iseq $I5001, $S5001, "before"
    set $I5003, $I5001
    unless $I5001 goto if208_end426 
    $P5004 = _lex_param_1."negate"()
    isfalse $I5002, $P5004
    set $I5003, $I5002
  if208_end426:
    unless $I5003 goto if207_else423 
    .const 'Sub' $P5005 = 'cuid_124_1360623830.553' 
    capture_lex $P5005
    $P5006 = $P5005()
    set $P5183, $P5006
    goto if207_end424
  if207_else423:
    set $S5002, $P101
    isne $I5004, $S5002, "zerowidth"
    set $I5017, $I5004
    unless $I5004 goto if216_end439 
.annotate 'line', 168
    $P5007 = _lex_param_1."name"()
    set $S5003, $P5007
    iseq $I5005, $S5003, "alpha"
    set $I5016, $I5005
    if $I5005 goto unless217_end441 
    set $S5004, $P101
    iseq $I5006, $S5004, "method"
    set $I5015, $I5006
    unless $I5006 goto if218_end443 
.annotate 'line', 170
    nqp_get_sc_object $P5010, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 0
    nqp_get_package_through_who $P5009, $P5010, "QAST"
    get_who $P5008, $P5009
    set fb_tmp_44, $P5008
    repr_defined $I5008, fb_tmp_44
    unless $I5008 goto if220_else446 
    set $P5011, fb_tmp_44["SVal"]
    set $P5013, $P5011
    goto if220_end447
  if220_else446:
    null $P5012
    set $P5013, $P5012
  if220_end447:
    unless_null $P5013, vivi_221448
    nqp_get_sc_object $P5014, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5013, $P5014
  vivi_221448:
    set fb_tmp_46, _lex_param_1
    repr_defined $I5010, fb_tmp_46
    unless $I5010 goto if223_else451 
    set $P5015, fb_tmp_46[0]
    set $P5017, $P5015
    goto if223_end452
  if223_else451:
    null $P5016
    set $P5017, $P5016
  if223_end452:
    unless_null $P5017, vivi_224453
    nqp_get_sc_object $P5018, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5017, $P5018
  vivi_224453:
    set fb_tmp_45, $P5017
    repr_defined $I5009, fb_tmp_45
    unless $I5009 goto if222_else449 
    set $P5019, fb_tmp_45[0]
    set $P5021, $P5019
    goto if222_end450
  if222_else449:
    null $P5020
    set $P5021, $P5020
  if222_end450:
    unless_null $P5021, vivi_225454
    nqp_get_sc_object $P5022, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5021, $P5022
  vivi_225454:
    $P5023 = $P5013."ACCEPTS"($P5021)
    unless $P5023 goto if219_else444 
    set fb_tmp_48, _lex_param_1
    repr_defined $I5012, fb_tmp_48
    unless $I5012 goto if227_else457 
    set $P5024, fb_tmp_48[0]
    set $P5026, $P5024
    goto if227_end458
  if227_else457:
    null $P5025
    set $P5026, $P5025
  if227_end458:
    unless_null $P5026, vivi_228459
    nqp_get_sc_object $P5027, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5026, $P5027
  vivi_228459:
    set fb_tmp_47, $P5026
    repr_defined $I5011, fb_tmp_47
    unless $I5011 goto if226_else455 
    set $P5028, fb_tmp_47[0]
    set $P5030, $P5028
    goto if226_end456
  if226_else455:
    null $P5029
    set $P5030, $P5029
  if226_end456:
    unless_null $P5030, vivi_229460
    nqp_get_sc_object $P5031, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5030, $P5031
  vivi_229460:
    $P5032 = $P5030."value"()
    set $P5041, $P5032
    goto if219_end445
  if219_else444:
    set fb_tmp_50, _lex_param_1
    repr_defined $I5014, fb_tmp_50
    unless $I5014 goto if231_else463 
    set $P5033, fb_tmp_50[0]
    set $P5035, $P5033
    goto if231_end464
  if231_else463:
    null $P5034
    set $P5035, $P5034
  if231_end464:
    unless_null $P5035, vivi_232465
    nqp_get_sc_object $P5036, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5035, $P5036
  vivi_232465:
    set fb_tmp_49, $P5035
    repr_defined $I5013, fb_tmp_49
    unless $I5013 goto if230_else461 
    set $P5037, fb_tmp_49[0]
    set $P5039, $P5037
    goto if230_end462
  if230_else461:
    null $P5038
    set $P5039, $P5038
  if230_end462:
    unless_null $P5039, vivi_233466
    nqp_get_sc_object $P5040, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5039, $P5040
  vivi_233466:
    set $P5041, $P5039
  if219_end445:
    set $S5005, $P5041
    iseq $I5007, $S5005, "alpha"
    set $I5015, $I5007
  if218_end443:
    set $I5016, $I5015
  unless217_end441:
    set $I5017, $I5016
  if216_end439:
    unless $I5017 goto if215_else436 
.annotate 'line', 171
    nqp_decontainerize $P5042, _lex_param_0
    find_lex $P5044, "$?PACKAGE"
    get_who $P5043, $P5044
    set fb_tmp_51, $P5043
    repr_defined $I5018, fb_tmp_51
    unless $I5018 goto if234_else467 
    set $P5045, fb_tmp_51["$EDGE_CHARCLASS"]
    set $P5047, $P5045
    goto if234_end468
  if234_else467:
    null $P5046
    set $P5047, $P5046
  if234_end468:
    unless_null $P5047, vivi_235469
    nqp_get_sc_object $P5048, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5047, $P5048
  vivi_235469:
    set $N5002, $P5047
    $P5049 = _lex_param_1."negate"()
    set $N5003, $P5049
    add $N5001, $N5002, $N5003
    $P5050 = $P5042."addedge"(_lex_param_2, _lex_param_3, $N5001, 4)
    set $I5019, $P5050
    set _lex_param_3, $I5019
.annotate 'line', 173
    nqp_decontainerize $P5051, _lex_param_0
    find_lex $P5053, "$?PACKAGE"
    get_who $P5052, $P5053
    set fb_tmp_52, $P5052
    repr_defined $I5020, fb_tmp_52
    unless $I5020 goto if236_else470 
    set $P5054, fb_tmp_52["$EDGE_CODEPOINT"]
    set $P5056, $P5054
    goto if236_end471
  if236_else470:
    null $P5055
    set $P5056, $P5055
  if236_end471:
    unless_null $P5056, vivi_237472
    nqp_get_sc_object $P5057, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5056, $P5057
  vivi_237472:
    set $N5005, $P5056
    $P5058 = _lex_param_1."negate"()
    set $N5006, $P5058
    add $N5004, $N5005, $N5006
    $P5059 = $P5051."addedge"(_lex_param_2, _lex_param_3, $N5004, 95)
    set $P5182, $P5059
    goto if215_end437
  if215_else436:
    set $S5006, $P101
    iseq $I5021, $S5006, "zerowidth"
    unless $I5021 goto if238_else473 
.annotate 'line', 175
.annotate 'line', 176
    $P5060 = _lex_param_1."negate"()
    unless $P5060 goto if239_else475 
.annotate 'line', 177
    nqp_decontainerize $P5061, _lex_param_0
    $P5062 = $P5061."fate"(_lex_param_1, _lex_param_2, _lex_param_3)
    set $P5065, $P5062
    goto if239_end476
  if239_else475:
    .const 'Sub' $P5063 = 'cuid_125_1360623830.553' 
    capture_lex $P5063
    $P5064 = $P5063()
    set $P5065, $P5064
  if239_end476:
    set $P5181, $P5065
    goto if238_end474
  if238_else473:
    find_dynamic_lex $P5066, "$*vars_as_generic"
    unless_null $P5066, fallback492
    nqp_get_sc_object $P5068, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 0
    get_who $P5067, $P5068
    set fb_tmp_54, $P5067
    repr_defined $I5022, fb_tmp_54
    unless $I5022 goto if248_else493 
    set $P5069, fb_tmp_54["$vars_as_generic"]
    set $P5071, $P5069
    goto if248_end494
  if248_else493:
    null $P5070
    set $P5071, $P5070
  if248_end494:
    unless_null $P5071, vivi_249495
    nqp_get_sc_object $P5072, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5071, $P5072
  vivi_249495:
    unless_null $P5071, vivi_250496
    die "Contextual $*vars_as_generic not found"
    box $P5073, "Contextual $*vars_as_generic not found"
    set $P5071, $P5073
  vivi_250496:
    set $P5066, $P5071
  fallback492:
    set $P5074, $P5066
    unless $P5066 goto if247_end491 
    set $S5007, $P101
    iseq $I5023, $S5007, "method"
    box $P5075, $I5023
    set $P5074, $P5075
  if247_end491:
    set $P5092, $P5074
    unless $P5074 goto if246_end489 
.annotate 'line', 186
    nqp_get_sc_object $P5078, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 0
    nqp_get_package_through_who $P5077, $P5078, "QAST"
    get_who $P5076, $P5077
    set fb_tmp_55, $P5076
    repr_defined $I5024, fb_tmp_55
    unless $I5024 goto if251_else497 
    set $P5079, fb_tmp_55["SVal"]
    set $P5081, $P5079
    goto if251_end498
  if251_else497:
    null $P5080
    set $P5081, $P5080
  if251_end498:
    unless_null $P5081, vivi_252499
    nqp_get_sc_object $P5082, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5081, $P5082
  vivi_252499:
    set fb_tmp_57, _lex_param_1
    repr_defined $I5026, fb_tmp_57
    unless $I5026 goto if254_else502 
    set $P5083, fb_tmp_57[0]
    set $P5085, $P5083
    goto if254_end503
  if254_else502:
    null $P5084
    set $P5085, $P5084
  if254_end503:
    unless_null $P5085, vivi_255504
    nqp_get_sc_object $P5086, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5085, $P5086
  vivi_255504:
    set fb_tmp_56, $P5085
    repr_defined $I5025, fb_tmp_56
    unless $I5025 goto if253_else500 
    set $P5087, fb_tmp_56[0]
    set $P5089, $P5087
    goto if253_end501
  if253_else500:
    null $P5088
    set $P5089, $P5088
  if253_end501:
    unless_null $P5089, vivi_256505
    nqp_get_sc_object $P5090, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5089, $P5090
  vivi_256505:
    $P5091 = $P5081."ACCEPTS"($P5089)
    set $P5092, $P5091
  if246_end489:
    set $P5102, $P5092
    unless $P5092 goto if245_end487 
    set fb_tmp_59, _lex_param_1
    repr_defined $I5029, fb_tmp_59
    unless $I5029 goto if258_else508 
    set $P5093, fb_tmp_59[0]
    set $P5095, $P5093
    goto if258_end509
  if258_else508:
    null $P5094
    set $P5095, $P5094
  if258_end509:
    unless_null $P5095, vivi_259510
    nqp_get_sc_object $P5096, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5095, $P5096
  vivi_259510:
    set fb_tmp_58, $P5095
    repr_defined $I5028, fb_tmp_58
    unless $I5028 goto if257_else506 
    set $P5097, fb_tmp_58[0]
    set $P5099, $P5097
    goto if257_end507
  if257_else506:
    null $P5098
    set $P5099, $P5098
  if257_end507:
    unless_null $P5099, vivi_260511
    nqp_get_sc_object $P5100, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5099, $P5100
  vivi_260511:
    $P5101 = $P5099."value"()
    set $S5008, $P5101
    iseq $I5027, $S5008, "!INTERPOLATE"
    box $P5103, $I5027
    set $P5102, $P5103
  if245_end487:
    set $P5120, $P5102
    unless $P5102 goto if244_end485 
.annotate 'line', 187
    nqp_get_sc_object $P5106, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 0
    nqp_get_package_through_who $P5105, $P5106, "QAST"
    get_who $P5104, $P5105
    set fb_tmp_60, $P5104
    repr_defined $I5030, fb_tmp_60
    unless $I5030 goto if261_else512 
    set $P5107, fb_tmp_60["Var"]
    set $P5109, $P5107
    goto if261_end513
  if261_else512:
    null $P5108
    set $P5109, $P5108
  if261_end513:
    unless_null $P5109, vivi_262514
    nqp_get_sc_object $P5110, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5109, $P5110
  vivi_262514:
    set fb_tmp_62, _lex_param_1
    repr_defined $I5032, fb_tmp_62
    unless $I5032 goto if264_else517 
    set $P5111, fb_tmp_62[0]
    set $P5113, $P5111
    goto if264_end518
  if264_else517:
    null $P5112
    set $P5113, $P5112
  if264_end518:
    unless_null $P5113, vivi_265519
    nqp_get_sc_object $P5114, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5113, $P5114
  vivi_265519:
    set fb_tmp_61, $P5113
    repr_defined $I5031, fb_tmp_61
    unless $I5031 goto if263_else515 
    set $P5115, fb_tmp_61[1]
    set $P5117, $P5115
    goto if263_end516
  if263_else515:
    null $P5116
    set $P5117, $P5116
  if263_end516:
    unless_null $P5117, vivi_266520
    nqp_get_sc_object $P5118, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5117, $P5118
  vivi_266520:
    $P5119 = $P5109."ACCEPTS"($P5117)
    set $P5120, $P5119
  if244_end485:
    set $P5130, $P5120
    unless $P5120 goto if243_end483 
    set fb_tmp_64, _lex_param_1
    repr_defined $I5035, fb_tmp_64
    unless $I5035 goto if268_else523 
    set $P5121, fb_tmp_64[0]
    set $P5123, $P5121
    goto if268_end524
  if268_else523:
    null $P5122
    set $P5123, $P5122
  if268_end524:
    unless_null $P5123, vivi_269525
    nqp_get_sc_object $P5124, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5123, $P5124
  vivi_269525:
    set fb_tmp_63, $P5123
    repr_defined $I5034, fb_tmp_63
    unless $I5034 goto if267_else521 
    set $P5125, fb_tmp_63[1]
    set $P5127, $P5125
    goto if267_end522
  if267_else521:
    null $P5126
    set $P5127, $P5126
  if267_end522:
    unless_null $P5127, vivi_270526
    nqp_get_sc_object $P5128, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5127, $P5128
  vivi_270526:
    $P5129 = $P5127."scope"()
    set $S5009, $P5129
    iseq $I5033, $S5009, "lexical"
    box $P5131, $I5033
    set $P5130, $P5131
  if243_end483:
    unless $P5130 goto if242_else480 
    nqp_decontainerize $P5132, _lex_param_0
    nqp_get_sc_object $P5133, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 3
    repr_bind_attr_int $P5132, $P5133, "$!generic", 1
.annotate 'line', 189
    nqp_decontainerize $P5134, _lex_param_0
    find_lex $P5136, "$?PACKAGE"
    get_who $P5135, $P5136
    set fb_tmp_65, $P5135
    repr_defined $I5036, fb_tmp_65
    unless $I5036 goto if271_else527 
    set $P5137, fb_tmp_65["$EDGE_GENERIC_VAR"]
    set $P5139, $P5137
    goto if271_end528
  if271_else527:
    null $P5138
    set $P5139, $P5138
  if271_end528:
    unless_null $P5139, vivi_272529
    nqp_get_sc_object $P5140, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5139, $P5140
  vivi_272529:
    set fb_tmp_67, _lex_param_1
    repr_defined $I5038, fb_tmp_67
    unless $I5038 goto if274_else532 
    set $P5141, fb_tmp_67[0]
    set $P5143, $P5141
    goto if274_end533
  if274_else532:
    null $P5142
    set $P5143, $P5142
  if274_end533:
    unless_null $P5143, vivi_275534
    nqp_get_sc_object $P5144, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5143, $P5144
  vivi_275534:
    set fb_tmp_66, $P5143
    repr_defined $I5037, fb_tmp_66
    unless $I5037 goto if273_else530 
    set $P5145, fb_tmp_66[1]
    set $P5147, $P5145
    goto if273_end531
  if273_else530:
    null $P5146
    set $P5147, $P5146
  if273_end531:
    unless_null $P5147, vivi_276535
    nqp_get_sc_object $P5148, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5147, $P5148
  vivi_276535:
    $P5149 = $P5147."name"()
    $P5150 = $P5134."addedge"(_lex_param_2, _lex_param_3, $P5139, $P5149)
    set $P5180, $P5150
    goto if242_end481
  if242_else480:
.annotate 'line', 191
    set $S5010, $P101
    iseq $I5039, $S5010, "capture"
    box $P5156, $I5039
    set $P5155, $P5156
    unless $I5039 goto if278_end539 
    set fb_tmp_68, _lex_param_1
    repr_defined $I5040, fb_tmp_68
    unless $I5040 goto if279_else540 
    set $P5151, fb_tmp_68[1]
    set $P5153, $P5151
    goto if279_end541
  if279_else540:
    null $P5152
    set $P5153, $P5152
  if279_end541:
    unless_null $P5153, vivi_280542
    nqp_get_sc_object $P5154, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5153, $P5154
  vivi_280542:
    set $P5155, $P5153
  if278_end539:
    unless $P5155 goto if277_else536 
.annotate 'line', 193
    nqp_decontainerize $P5157, _lex_param_0
    set fb_tmp_69, _lex_param_1
    repr_defined $I5041, fb_tmp_69
    unless $I5041 goto if281_else543 
    set $P5158, fb_tmp_69[1]
    set $P5160, $P5158
    goto if281_end544
  if281_else543:
    null $P5159
    set $P5160, $P5159
  if281_end544:
    unless_null $P5160, vivi_282545
    nqp_get_sc_object $P5161, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5160, $P5161
  vivi_282545:
    $P5162 = $P5157."regex_nfa"($P5160, _lex_param_2, _lex_param_3)
    set $P5179, $P5162
    goto if277_end537
  if277_else536:
.annotate 'line', 194
    nqp_decontainerize $P5163, _lex_param_0
    find_lex $P5165, "$?PACKAGE"
    get_who $P5164, $P5165
    set fb_tmp_70, $P5164
    repr_defined $I5042, fb_tmp_70
    unless $I5042 goto if283_else546 
    set $P5166, fb_tmp_70["$EDGE_SUBRULE"]
    set $P5168, $P5166
    goto if283_end547
  if283_else546:
    null $P5167
    set $P5168, $P5167
  if283_end547:
    unless_null $P5168, vivi_284548
    nqp_get_sc_object $P5169, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5168, $P5169
  vivi_284548:
    set fb_tmp_72, _lex_param_1
    repr_defined $I5044, fb_tmp_72
    unless $I5044 goto if286_else551 
    set $P5170, fb_tmp_72[0]
    set $P5172, $P5170
    goto if286_end552
  if286_else551:
    null $P5171
    set $P5172, $P5171
  if286_end552:
    unless_null $P5172, vivi_287553
    nqp_get_sc_object $P5173, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5172, $P5173
  vivi_287553:
    set fb_tmp_71, $P5172
    repr_defined $I5043, fb_tmp_71
    unless $I5043 goto if285_else549 
    set $P5174, fb_tmp_71[0]
    set $P5176, $P5174
    goto if285_end550
  if285_else549:
    null $P5175
    set $P5176, $P5175
  if285_end550:
    unless_null $P5176, vivi_288554
    nqp_get_sc_object $P5177, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5176, $P5177
  vivi_288554:
    $P5178 = $P5163."addedge"(_lex_param_2, _lex_param_3, $P5168, $P5176)
    set $P5179, $P5178
  if277_end537:
    set $P5180, $P5179
  if242_end481:
    set $P5181, $P5180
  if238_end474:
    set $P5182, $P5181
  if215_end437:
    set $P5183, $P5182
  if207_end424:
    .return ($P5183) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_124_1360623830.553") :anon :lex :outer("cuid_16_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 162
    .lex "$end", $I101 
    .local pmc fb_tmp_41 
    .local pmc fb_tmp_42 
    .local pmc fb_tmp_43 
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
    set fb_tmp_43, $P5006
    repr_defined $I5004, fb_tmp_43
    unless $I5004 goto if211_else431 
    set $P5007, fb_tmp_43[0]
    set $P5009, $P5007
    goto if211_end432
  if211_else431:
    null $P5008
    set $P5009, $P5008
  if211_end432:
    unless_null $P5009, vivi_212433
    nqp_get_sc_object $P5010, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5009, $P5010
  vivi_212433:
    set fb_tmp_42, $P5009
    repr_defined $I5003, fb_tmp_42
    unless $I5003 goto if210_else429 
    set $P5011, fb_tmp_42[1]
    set $P5013, $P5011
    goto if210_end430
  if210_else429:
    null $P5012
    set $P5013, $P5012
  if210_end430:
    unless_null $P5013, vivi_213434
    nqp_get_sc_object $P5014, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5013, $P5014
  vivi_213434:
    set fb_tmp_41, $P5013
    repr_defined $I5002, fb_tmp_41
    unless $I5002 goto if209_else427 
    set $P5015, fb_tmp_41["orig_qast"]
    set $P5017, $P5015
    goto if209_end428
  if209_else427:
    null $P5016
    set $P5017, $P5016
  if209_end428:
    unless_null $P5017, vivi_214435
    nqp_get_sc_object $P5018, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5017, $P5018
  vivi_214435:
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
.sub "" :subid("cuid_125_1360623830.553") :anon :lex :outer("cuid_16_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 179
    .lex "$end", $I101 
    .local pmc fb_tmp_53 
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
    find_lex $P5007, "$?PACKAGE"
    get_who $P5006, $P5007
    set fb_tmp_53, $P5006
    repr_defined $I5003, fb_tmp_53
    unless $I5003 goto if240_else477 
    set $P5008, fb_tmp_53["$EDGE_SUBRULE"]
    set $P5010, $P5008
    goto if240_end478
  if240_else477:
    null $P5009
    set $P5010, $P5009
  if240_end478:
    unless_null $P5010, vivi_241479
    nqp_get_sc_object $P5011, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5010, $P5011
  vivi_241479:
    find_lex $P5012, "$node"
    $P5013 = $P5012."name"()
    $P5004."addedge"($I5002, $I101, $P5010, $P5013)
.annotate 'line', 182
    find_lex $P5015, "self"
    nqp_decontainerize $P5014, $P5015
    find_lex $P5016, "$node"
    find_lex $I5004, "$to"
    $P5017 = $P5014."fate"($P5016, $I101, $I5004)
    .return ($P5017) 
.end
.HLL "nqp"
.namespace []
.sub "quant" :subid("cuid_17_1360623830.553") :anon :lex :outer("cuid_120_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 198
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param int _lex_param_2 
    .param int _lex_param_3 
    .const 'Sub' $P5027 = 'cuid_127_1360623830.553' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_129_1360623830.553' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_130_1360623830.553' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_131_1360623830.553' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_132_1360623830.553' 
    capture_lex $P5027 
    .lex "$min", $I101 
    .lex "$max", $I102 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$from", _lex_param_2 
    .lex "$to", _lex_param_3 
    .local pmc fb_tmp_83 
    set $I101, 0
    set $I102, 0
    root_new $P101, ['parrot';'Continuation']
    set_label $P101, lexotic_555
    .lex "RETURN", $P101
    set $N5002, 0
.annotate 'line', 199
    $P5002 = _lex_param_1."min"()
    set $P5001, $P5002
    defined $I5001, $P5001
    if $I5001, defor557
    box $P5003, 0
    set $P5001, $P5003
  defor557:
    set $N5003, $P5001
    add $N5001, $N5002, $N5003
    set $I5002, $N5001
    set $I101, $I5002
    set $N5005, 0
.annotate 'line', 200
    $P5005 = _lex_param_1."max"()
    set $P5004, $P5005
    defined $I5003, $P5004
    if $I5003, defor558
    box $P5006, -1
    set $P5004, $P5006
  defor558:
    set $N5006, $P5004
    add $N5004, $N5005, $N5006
    set $I5004, $N5004
    set $I102, $I5004
    set $N5007, $I102
    set $N5008, 1
    isgt $I5005, $N5007, $N5008
    set $I5007, $I5005
    if $I5005 goto unless290_end562 
    set $N5009, $I101
    set $N5010, 1
    isgt $I5006, $N5009, $N5010
    set $I5007, $I5006
  unless290_end562:
    unless $I5007 goto if289_end560 
    .const 'Sub' $P5007 = 'cuid_127_1360623830.553' 
    capture_lex $P5007
    $P5008 = $P5007()
  if289_end560:
    set $N5011, $I102
    set $N5012, -1
    iseq $I5008, $N5011, $N5012
    unless $I5008 goto if322_else618 
.annotate 'line', 233
    set $N5013, $I101
    set $N5014, 0
    iseq $I5009, $N5013, $N5014
    unless $I5009 goto if323_else620 
.annotate 'line', 234
    set fb_tmp_83, _lex_param_1
    repr_defined $I5011, fb_tmp_83
    unless $I5011 goto if325_else624 
    set $P5009, fb_tmp_83[1]
    set $P5011, $P5009
    goto if325_end625
  if325_else624:
    null $P5010
    set $P5011, $P5010
  if325_end625:
    unless_null $P5011, vivi_326626
    nqp_get_sc_object $P5012, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5011, $P5012
  vivi_326626:
    defined $I5010, $P5011
    unless $I5010 goto if324_else622 
    .const 'Sub' $P5013 = 'cuid_129_1360623830.553' 
    capture_lex $P5013
    $P5014 = $P5013()
    set $P5017, $P5014
    goto if324_end623
  if324_else622:
    .const 'Sub' $P5015 = 'cuid_130_1360623830.553' 
    capture_lex $P5015
    $P5016 = $P5015()
    set $P5017, $P5016
  if324_end623:
    goto if323_end621
  if323_else620:
    .const 'Sub' $P5018 = 'cuid_131_1360623830.553' 
    capture_lex $P5018
    $P5019 = $P5018()
  if323_end621:
    box $P5026, _lex_param_3
    set $P5025, $P5026
    goto if322_end619
  if322_else618:
    set $N5015, $I101
    set $N5016, 0
    iseq $I5012, $N5015, $N5016
    set $I5014, $I5012
    unless $I5012 goto if361_end683 
    set $N5017, $I102
    set $N5018, 1
    iseq $I5013, $N5017, $N5018
    set $I5014, $I5013
  if361_end683:
    unless $I5014 goto if360_else680 
    .const 'Sub' $P5020 = 'cuid_132_1360623830.553' 
    capture_lex $P5020
    $P5021 = $P5020()
    set $P5024, $P5021
    goto if360_end681
  if360_else680:
.annotate 'line', 271
.annotate 'line', 272
    nqp_decontainerize $P5022, _lex_param_0
    $P5023 = $P5022."fate"(_lex_param_1, _lex_param_2, _lex_param_3)
    set $P5024, $P5023
  if360_end681:
    set $P5025, $P5024
  if322_end619:
    goto lexotic_556
  lexotic_555:
    .get_results ($P5025)
  lexotic_556:
    .return ($P5025) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_127_1360623830.553") :anon :lex :outer("cuid_17_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 202
    .const 'Sub' $P5036 = 'cuid_126_1360623830.553' 
    capture_lex $P5036 
    .const 'Sub' $P5036 = 'cuid_128_1360623830.553' 
    capture_lex $P5036 
    .lex "$count", $I101 
    .lex "$st", $I102 
    .lex "$has_sep", $I103 
    .local pmc fb_tmp_73 
    .local pmc fb_tmp_75 
    .local pmc fb_tmp_76 
    .local pmc fb_tmp_77 
    set $I101, 0
    set $I102, 0
    set $I103, 0
    set $I101, 0
    find_lex $P5001, "$node"
    set fb_tmp_73, $P5001
    repr_defined $I5002, fb_tmp_73
    unless $I5002 goto if291_else563 
    set $P5002, fb_tmp_73[1]
    set $P5004, $P5002
    goto if291_end564
  if291_else563:
    null $P5003
    set $P5004, $P5003
  if291_end564:
    unless_null $P5004, vivi_292565
    nqp_get_sc_object $P5005, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5004, $P5005
  vivi_292565:
    defined $I5001, $P5004
    set $I103, $I5001
  while293_test566:
    set $N5001, $I101
    find_lex $I5004, "$max"
    set $N5002, $I5004
    islt $I5003, $N5001, $N5002
    set $I5007, $I5003
    if $I5003 goto unless294_end572 
    set $N5003, $I101
    find_lex $I5006, "$min"
    set $N5004, $I5006
    islt $I5005, $N5003, $N5004
    set $I5007, $I5005
  unless294_end572:
    set $I5019, $I5007
    unless $I5007 goto while293_done570 
  while293_redo568:
.annotate 'line', 206
    set $N5005, $I101
    find_lex $I5009, "$min"
    set $N5006, $I5009
    isge $I5008, $N5005, $N5006
    unless $I5008 goto if295_end574 
    .const 'Sub' $P5006 = 'cuid_126_1360623830.553' 
    capture_lex $P5006
    $P5007 = $P5006()
  if295_end574:
    set $I5011, $I103
    unless $I103 goto if300_end583 
    set $N5007, $I101
    set $N5008, 0
    isgt $I5010, $N5007, $N5008
    set $I5011, $I5010
  if300_end583:
    unless $I5011 goto if299_end581 
.annotate 'line', 211
.annotate 'line', 212
    find_lex $P5009, "self"
    nqp_decontainerize $P5008, $P5009
    find_lex $P5010, "$node"
    set fb_tmp_75, $P5010
    repr_defined $I5012, fb_tmp_75
    unless $I5012 goto if301_else584 
    set $P5011, fb_tmp_75[1]
    set $P5013, $P5011
    goto if301_end585
  if301_else584:
    null $P5012
    set $P5013, $P5012
  if301_end585:
    unless_null $P5013, vivi_302586
    nqp_get_sc_object $P5014, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5013, $P5014
  vivi_302586:
    find_lex $I5013, "$from"
    $P5015 = $P5008."regex_nfa"($P5013, $I5013, -1)
    set $I5014, $P5015
    store_lex "$from", $I5014
  if299_end581:
.annotate 'line', 214
    find_lex $P5017, "self"
    nqp_decontainerize $P5016, $P5017
    find_lex $P5018, "$node"
    set fb_tmp_76, $P5018
    repr_defined $I5015, fb_tmp_76
    unless $I5015 goto if303_else587 
    set $P5019, fb_tmp_76[0]
    set $P5021, $P5019
    goto if303_end588
  if303_else587:
    null $P5020
    set $P5021, $P5020
  if303_end588:
    unless_null $P5021, vivi_304589
    nqp_get_sc_object $P5022, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5021, $P5022
  vivi_304589:
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
    goto while293_test566 
  while293_done570:
.annotate 'line', 217
    find_lex $P5025, "self"
    nqp_decontainerize $P5024, $P5025
    find_lex $I5020, "$from"
    find_lex $I5021, "$to"
    find_lex $P5027, "$?PACKAGE"
    get_who $P5026, $P5027
    set fb_tmp_77, $P5026
    repr_defined $I5022, fb_tmp_77
    unless $I5022 goto if305_else590 
    set $P5028, fb_tmp_77["$EDGE_EPSILON"]
    set $P5030, $P5028
    goto if305_end591
  if305_else590:
    null $P5029
    set $P5030, $P5029
  if305_end591:
    unless_null $P5030, vivi_306592
    nqp_get_sc_object $P5031, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5030, $P5031
  vivi_306592:
    $P5024."addedge"($I5020, $I5021, $P5030, 0)
    find_lex $I5024, "$max"
    set $N5012, $I5024
    set $N5013, -1
    iseq $I5023, $N5012, $N5013
    unless $I5023 goto if307_end594 
    .const 'Sub' $P5032 = 'cuid_128_1360623830.553' 
    capture_lex $P5032
    $P5033 = $P5032()
  if307_end594:
    find_lex $I5026, "$to"
    set $N5014, $I5026
    set $N5015, 0
    islt $I5025, $N5014, $N5015
    set $I5028, $I5025
    unless $I5025 goto if321_end617 
    set $N5016, $I102
    set $N5017, 0
    isgt $I5027, $N5016, $N5017
    set $I5028, $I5027
  if321_end617:
    unless $I5028 goto if320_end615 
    store_lex "$to", $I102
  if320_end615:
    find_lex $I5029, "$to"
    find_lex $P5034, "RETURN"
    $P5035 = $P5034($I5029)
    .return ($P5035) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_126_1360623830.553") :anon :lex :outer("cuid_127_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 207
    .lex "$f", $I101 
    .local pmc fb_tmp_74 
    set $I101, 0
.annotate 'line', 208
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    find_lex $I5001, "$from"
    find_lex $I5002, "$to"
    find_lex $P5004, "$?PACKAGE"
    get_who $P5003, $P5004
    set fb_tmp_74, $P5003
    repr_defined $I5003, fb_tmp_74
    unless $I5003 goto if296_else575 
    set $P5005, fb_tmp_74["$EDGE_EPSILON"]
    set $P5007, $P5005
    goto if296_end576
  if296_else575:
    null $P5006
    set $P5007, $P5006
  if296_end576:
    unless_null $P5007, vivi_297577
    nqp_get_sc_object $P5008, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5007, $P5008
  vivi_297577:
    $P5009 = $P5001."addedge"($I5001, $I5002, $P5007, 0)
    set $I5004, $P5009
    set $I101, $I5004
    find_lex $I5005, "$st"
    set $I5006, $I5005
    if $I5005 goto unless298_end579 
    set $I5006, $I101
  unless298_end579:
    store_lex "$st", $I5006
    .return ($I5006) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_128_1360623830.553") :anon :lex :outer("cuid_127_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 218
    .lex "$start", $I101 
    .lex "$looper", $P101 
    .local pmc fb_tmp_78 
    .local pmc fb_tmp_79 
    .local pmc fb_tmp_80 
    .local pmc fb_tmp_81 
    .local pmc fb_tmp_82 
    set $I101, 0
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
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
    find_lex $P5008, "$?PACKAGE"
    get_who $P5007, $P5008
    set fb_tmp_78, $P5007
    repr_defined $I5003, fb_tmp_78
    unless $I5003 goto if308_else595 
    set $P5009, fb_tmp_78["$EDGE_EPSILON"]
    set $P5011, $P5009
    goto if308_end596
  if308_else595:
    null $P5010
    set $P5011, $P5010
  if308_end596:
    unless_null $P5011, vivi_309597
    nqp_get_sc_object $P5012, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5011, $P5012
  vivi_309597:
    $P5005."addedge"($I5002, $I101, $P5011, 0)
    store_lex "$from", $I101
.annotate 'line', 222
    find_lex $P5014, "self"
    nqp_decontainerize $P5013, $P5014
    $P5015 = $P5013."addstate"()
    set $P101, $P5015
.annotate 'line', 223
    find_lex $P5017, "self"
    nqp_decontainerize $P5016, $P5017
    find_lex $I5004, "$to"
    find_lex $P5019, "$?PACKAGE"
    get_who $P5018, $P5019
    set fb_tmp_79, $P5018
    repr_defined $I5005, fb_tmp_79
    unless $I5005 goto if310_else598 
    set $P5020, fb_tmp_79["$EDGE_EPSILON"]
    set $P5022, $P5020
    goto if310_end599
  if310_else598:
    null $P5021
    set $P5022, $P5021
  if310_end599:
    unless_null $P5022, vivi_311600
    nqp_get_sc_object $P5023, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5022, $P5023
  vivi_311600:
    $P5016."addedge"($P101, $I5004, $P5022, 0)
.annotate 'line', 224
    find_lex $P5025, "self"
    nqp_decontainerize $P5024, $P5025
    find_lex $I5006, "$from"
    find_lex $P5027, "$?PACKAGE"
    get_who $P5026, $P5027
    set fb_tmp_80, $P5026
    repr_defined $I5007, fb_tmp_80
    unless $I5007 goto if312_else601 
    set $P5028, fb_tmp_80["$EDGE_EPSILON"]
    set $P5030, $P5028
    goto if312_end602
  if312_else601:
    null $P5029
    set $P5030, $P5029
  if312_end602:
    unless_null $P5030, vivi_313603
    nqp_get_sc_object $P5031, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5030, $P5031
  vivi_313603:
    $P5024."addedge"($P101, $I5006, $P5030, 0)
    find_lex $I5008, "$has_sep"
    set $I5011, $I5008
    unless $I5008 goto if315_end607 
    find_lex $I5010, "$count"
    set $N5001, $I5010
    set $N5002, 0
    isgt $I5009, $N5001, $N5002
    set $I5011, $I5009
  if315_end607:
    unless $I5011 goto if314_end605 
.annotate 'line', 225
.annotate 'line', 226
    find_lex $P5033, "self"
    nqp_decontainerize $P5032, $P5033
    find_lex $P5034, "$node"
    set fb_tmp_81, $P5034
    repr_defined $I5012, fb_tmp_81
    unless $I5012 goto if316_else608 
    set $P5035, fb_tmp_81[1]
    set $P5037, $P5035
    goto if316_end609
  if316_else608:
    null $P5036
    set $P5037, $P5036
  if316_end609:
    unless_null $P5037, vivi_317610
    nqp_get_sc_object $P5038, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5037, $P5038
  vivi_317610:
    find_lex $I5013, "$from"
    $P5039 = $P5032."regex_nfa"($P5037, $I5013, -1)
    set $I5014, $P5039
    store_lex "$from", $I5014
  if314_end605:
.annotate 'line', 228
    find_lex $P5041, "self"
    nqp_decontainerize $P5040, $P5041
    find_lex $P5042, "$node"
    set fb_tmp_82, $P5042
    repr_defined $I5015, fb_tmp_82
    unless $I5015 goto if318_else611 
    set $P5043, fb_tmp_82[0]
    set $P5045, $P5043
    goto if318_end612
  if318_else611:
    null $P5044
    set $P5045, $P5044
  if318_end612:
    unless_null $P5045, vivi_319613
    nqp_get_sc_object $P5046, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5045, $P5046
  vivi_319613:
    find_lex $I5016, "$from"
    $P5047 = $P5040."regex_nfa"($P5045, $I5016, $P101)
    .return ($P5047) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_129_1360623830.553") :anon :lex :outer("cuid_17_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 235
    .lex "$start", $I101 
    .lex "$looper", $I102 
    .lex "$st", $I103 
    .local pmc fb_tmp_84 
    .local pmc fb_tmp_85 
    .local pmc fb_tmp_86 
    .local pmc fb_tmp_87 
    .local pmc fb_tmp_88 
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
    find_lex $P5007, "$?PACKAGE"
    get_who $P5006, $P5007
    set fb_tmp_84, $P5006
    repr_defined $I5003, fb_tmp_84
    unless $I5003 goto if327_else627 
    set $P5008, fb_tmp_84["$EDGE_EPSILON"]
    set $P5010, $P5008
    goto if327_end628
  if327_else627:
    null $P5009
    set $P5010, $P5009
  if327_end628:
    unless_null $P5010, vivi_328629
    nqp_get_sc_object $P5011, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5010, $P5011
  vivi_328629:
    $P5004."addedge"($I5002, $I101, $P5010, 0)
.annotate 'line', 238
    find_lex $P5013, "self"
    nqp_decontainerize $P5012, $P5013
    $P5014 = $P5012."addstate"()
    set $I5004, $P5014
    set $I102, $I5004
.annotate 'line', 239
    find_lex $P5016, "self"
    nqp_decontainerize $P5015, $P5016
    find_lex $P5017, "$node"
    set fb_tmp_85, $P5017
    repr_defined $I5005, fb_tmp_85
    unless $I5005 goto if329_else630 
    set $P5018, fb_tmp_85[0]
    set $P5020, $P5018
    goto if329_end631
  if329_else630:
    null $P5019
    set $P5020, $P5019
  if329_end631:
    unless_null $P5020, vivi_330632
    nqp_get_sc_object $P5021, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5020, $P5021
  vivi_330632:
    $P5022 = $P5015."regex_nfa"($P5020, $I101, $I102)
    set $I5006, $P5022
    set $I103, $I5006
.annotate 'line', 240
    find_lex $P5024, "self"
    nqp_decontainerize $P5023, $P5024
    find_lex $P5025, "$node"
    set fb_tmp_86, $P5025
    repr_defined $I5007, fb_tmp_86
    unless $I5007 goto if331_else633 
    set $P5026, fb_tmp_86[1]
    set $P5028, $P5026
    goto if331_end634
  if331_else633:
    null $P5027
    set $P5028, $P5027
  if331_end634:
    unless_null $P5028, vivi_332635
    nqp_get_sc_object $P5029, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5028, $P5029
  vivi_332635:
    $P5023."regex_nfa"($P5028, $I102, $I101)
.annotate 'line', 241
    find_lex $P5031, "self"
    nqp_decontainerize $P5030, $P5031
    find_lex $I5008, "$to"
    find_lex $P5033, "$?PACKAGE"
    get_who $P5032, $P5033
    set fb_tmp_87, $P5032
    repr_defined $I5009, fb_tmp_87
    unless $I5009 goto if333_else636 
    set $P5034, fb_tmp_87["$EDGE_EPSILON"]
    set $P5036, $P5034
    goto if333_end637
  if333_else636:
    null $P5035
    set $P5036, $P5035
  if333_end637:
    unless_null $P5036, vivi_334638
    nqp_get_sc_object $P5037, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5036, $P5037
  vivi_334638:
    $P5030."addedge"($I102, $I5008, $P5036, 0)
.annotate 'line', 242
    find_lex $P5039, "self"
    nqp_decontainerize $P5038, $P5039
    find_lex $I5010, "$from"
    find_lex $I5011, "$to"
    find_lex $P5041, "$?PACKAGE"
    get_who $P5040, $P5041
    set fb_tmp_88, $P5040
    repr_defined $I5012, fb_tmp_88
    unless $I5012 goto if335_else639 
    set $P5042, fb_tmp_88["$EDGE_EPSILON"]
    set $P5044, $P5042
    goto if335_end640
  if335_else639:
    null $P5043
    set $P5044, $P5043
  if335_end640:
    unless_null $P5044, vivi_336641
    nqp_get_sc_object $P5045, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5044, $P5045
  vivi_336641:
    $P5046 = $P5038."addedge"($I5010, $I5011, $P5044, 0)
    set $I5013, $P5046
    set $I103, $I5013
    find_lex $I5015, "$to"
    set $N5001, $I5015
    set $N5002, 0
    islt $I5014, $N5001, $N5002
    set $I5017, $I5014
    unless $I5014 goto if338_end645 
    set $N5003, $I103
    set $N5004, 0
    isgt $I5016, $N5003, $N5004
    set $I5017, $I5016
  if338_end645:
    set $I5018, $I5017
    unless $I5017 goto if337_end643 
    store_lex "$to", $I103
    set $I5018, $I103
  if337_end643:
    .return ($I5018) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_130_1360623830.553") :anon :lex :outer("cuid_17_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 245
    .lex "$st", $I101 
    .local pmc fb_tmp_89 
    .local pmc fb_tmp_90 
    set $I101, 0
.annotate 'line', 246
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    find_lex $P5003, "$node"
    set fb_tmp_89, $P5003
    repr_defined $I5001, fb_tmp_89
    unless $I5001 goto if339_else646 
    set $P5004, fb_tmp_89[0]
    set $P5006, $P5004
    goto if339_end647
  if339_else646:
    null $P5005
    set $P5006, $P5005
  if339_end647:
    unless_null $P5006, vivi_340648
    nqp_get_sc_object $P5007, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5006, $P5007
  vivi_340648:
    find_lex $I5002, "$from"
    find_lex $I5003, "$from"
    $P5001."regex_nfa"($P5006, $I5002, $I5003)
.annotate 'line', 247
    find_lex $P5009, "self"
    nqp_decontainerize $P5008, $P5009
    find_lex $I5004, "$from"
    find_lex $I5005, "$to"
    find_lex $P5011, "$?PACKAGE"
    get_who $P5010, $P5011
    set fb_tmp_90, $P5010
    repr_defined $I5006, fb_tmp_90
    unless $I5006 goto if341_else649 
    set $P5012, fb_tmp_90["$EDGE_EPSILON"]
    set $P5014, $P5012
    goto if341_end650
  if341_else649:
    null $P5013
    set $P5014, $P5013
  if341_end650:
    unless_null $P5014, vivi_342651
    nqp_get_sc_object $P5015, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5014, $P5015
  vivi_342651:
    $P5016 = $P5008."addedge"($I5004, $I5005, $P5014, 0)
    set $I5007, $P5016
    set $I101, $I5007
    find_lex $I5009, "$to"
    set $N5001, $I5009
    set $N5002, 0
    islt $I5008, $N5001, $N5002
    set $I5011, $I5008
    unless $I5008 goto if344_end655 
    set $N5003, $I101
    set $N5004, 0
    isgt $I5010, $N5003, $N5004
    set $I5011, $I5010
  if344_end655:
    set $I5012, $I5011
    unless $I5011 goto if343_end653 
    store_lex "$to", $I101
    set $I5012, $I101
  if343_end653:
    .return ($I5012) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_131_1360623830.553") :anon :lex :outer("cuid_17_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 250
    .lex "$start", $I101 
    .lex "$looper", $I102 
    .lex "$st", $I103 
    .local pmc fb_tmp_91 
    .local pmc fb_tmp_92 
    .local pmc fb_tmp_93 
    .local pmc fb_tmp_94 
    .local pmc fb_tmp_95 
    .local pmc fb_tmp_96 
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
    find_lex $P5007, "$?PACKAGE"
    get_who $P5006, $P5007
    set fb_tmp_91, $P5006
    repr_defined $I5003, fb_tmp_91
    unless $I5003 goto if345_else656 
    set $P5008, fb_tmp_91["$EDGE_EPSILON"]
    set $P5010, $P5008
    goto if345_end657
  if345_else656:
    null $P5009
    set $P5010, $P5009
  if345_end657:
    unless_null $P5010, vivi_346658
    nqp_get_sc_object $P5011, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5010, $P5011
  vivi_346658:
    $P5004."addedge"($I5002, $I101, $P5010, 0)
.annotate 'line', 253
    find_lex $P5013, "self"
    nqp_decontainerize $P5012, $P5013
    $P5014 = $P5012."addstate"()
    set $I5004, $P5014
    set $I102, $I5004
.annotate 'line', 254
    find_lex $P5016, "self"
    nqp_decontainerize $P5015, $P5016
    find_lex $P5017, "$node"
    set fb_tmp_92, $P5017
    repr_defined $I5005, fb_tmp_92
    unless $I5005 goto if347_else659 
    set $P5018, fb_tmp_92[0]
    set $P5020, $P5018
    goto if347_end660
  if347_else659:
    null $P5019
    set $P5020, $P5019
  if347_end660:
    unless_null $P5020, vivi_348661
    nqp_get_sc_object $P5021, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5020, $P5021
  vivi_348661:
    $P5022 = $P5015."regex_nfa"($P5020, $I101, $I102)
    set $I5006, $P5022
    set $I103, $I5006
    find_lex $P5023, "$node"
    set fb_tmp_93, $P5023
    repr_defined $I5008, fb_tmp_93
    unless $I5008 goto if350_else664 
    set $P5024, fb_tmp_93[1]
    set $P5026, $P5024
    goto if350_end665
  if350_else664:
    null $P5025
    set $P5026, $P5025
  if350_end665:
    unless_null $P5026, vivi_351666
    nqp_get_sc_object $P5027, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5026, $P5027
  vivi_351666:
    defined $I5007, $P5026
    unless $I5007 goto if349_else662 
.annotate 'line', 255
.annotate 'line', 256
    find_lex $P5029, "self"
    nqp_decontainerize $P5028, $P5029
    find_lex $P5030, "$node"
    set fb_tmp_94, $P5030
    repr_defined $I5009, fb_tmp_94
    unless $I5009 goto if352_else667 
    set $P5031, fb_tmp_94[1]
    set $P5033, $P5031
    goto if352_end668
  if352_else667:
    null $P5032
    set $P5033, $P5032
  if352_end668:
    unless_null $P5033, vivi_353669
    nqp_get_sc_object $P5034, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5033, $P5034
  vivi_353669:
    $P5035 = $P5028."regex_nfa"($P5033, $I102, $I101)
    goto if349_end663
  if349_else662:
.annotate 'line', 258
.annotate 'line', 259
    find_lex $P5037, "self"
    nqp_decontainerize $P5036, $P5037
    find_lex $P5039, "$?PACKAGE"
    get_who $P5038, $P5039
    set fb_tmp_95, $P5038
    repr_defined $I5010, fb_tmp_95
    unless $I5010 goto if354_else670 
    set $P5040, fb_tmp_95["$EDGE_EPSILON"]
    set $P5042, $P5040
    goto if354_end671
  if354_else670:
    null $P5041
    set $P5042, $P5041
  if354_end671:
    unless_null $P5042, vivi_355672
    nqp_get_sc_object $P5043, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5042, $P5043
  vivi_355672:
    $P5044 = $P5036."addedge"($I102, $I101, $P5042, 0)
  if349_end663:
.annotate 'line', 261
    find_lex $P5046, "self"
    nqp_decontainerize $P5045, $P5046
    find_lex $I5011, "$to"
    find_lex $P5048, "$?PACKAGE"
    get_who $P5047, $P5048
    set fb_tmp_96, $P5047
    repr_defined $I5012, fb_tmp_96
    unless $I5012 goto if356_else673 
    set $P5049, fb_tmp_96["$EDGE_EPSILON"]
    set $P5051, $P5049
    goto if356_end674
  if356_else673:
    null $P5050
    set $P5051, $P5050
  if356_end674:
    unless_null $P5051, vivi_357675
    nqp_get_sc_object $P5052, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5051, $P5052
  vivi_357675:
    $P5045."addedge"($I102, $I5011, $P5051, 0)
    find_lex $I5014, "$to"
    set $N5001, $I5014
    set $N5002, 0
    islt $I5013, $N5001, $N5002
    set $I5016, $I5013
    unless $I5013 goto if359_end679 
    set $N5003, $I103
    set $N5004, 0
    isgt $I5015, $N5003, $N5004
    set $I5016, $I5015
  if359_end679:
    set $I5017, $I5016
    unless $I5016 goto if358_end677 
    store_lex "$to", $I103
    set $I5017, $I103
  if358_end677:
    .return ($I5017) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_132_1360623830.553") :anon :lex :outer("cuid_17_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 265
    .lex "$st", $I101 
    .local pmc fb_tmp_97 
    .local pmc fb_tmp_98 
    set $I101, 0
.annotate 'line', 266
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    find_lex $P5003, "$node"
    set fb_tmp_97, $P5003
    repr_defined $I5001, fb_tmp_97
    unless $I5001 goto if362_else684 
    set $P5004, fb_tmp_97[0]
    set $P5006, $P5004
    goto if362_end685
  if362_else684:
    null $P5005
    set $P5006, $P5005
  if362_end685:
    unless_null $P5006, vivi_363686
    nqp_get_sc_object $P5007, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5006, $P5007
  vivi_363686:
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
    unless $I5005 goto if365_end690 
    set $N5003, $I101
    set $N5004, 0
    isgt $I5007, $N5003, $N5004
    set $I5008, $I5007
  if365_end690:
    unless $I5008 goto if364_end688 
    store_lex "$to", $I101
  if364_end688:
.annotate 'line', 268
    find_lex $P5010, "self"
    nqp_decontainerize $P5009, $P5010
    find_lex $I5009, "$from"
    find_lex $I5010, "$to"
    find_lex $P5012, "$?PACKAGE"
    get_who $P5011, $P5012
    set fb_tmp_98, $P5011
    repr_defined $I5011, fb_tmp_98
    unless $I5011 goto if366_else691 
    set $P5013, fb_tmp_98["$EDGE_EPSILON"]
    set $P5015, $P5013
    goto if366_end692
  if366_else691:
    null $P5014
    set $P5015, $P5014
  if366_end692:
    unless_null $P5015, vivi_367693
    nqp_get_sc_object $P5016, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5015, $P5016
  vivi_367693:
    $P5017 = $P5009."addedge"($I5009, $I5010, $P5015, 0)
    set $I5012, $P5017
    set $I101, $I5012
    find_lex $I5014, "$to"
    set $N5005, $I5014
    set $N5006, 0
    islt $I5013, $N5005, $N5006
    set $I5016, $I5013
    unless $I5013 goto if369_end697 
    set $N5007, $I101
    set $N5008, 0
    isgt $I5015, $N5007, $N5008
    set $I5016, $I5015
  if369_end697:
    unless $I5016 goto if368_end695 
    store_lex "$to", $I101
  if368_end695:
    find_lex $I5017, "$to"
    .return ($I5017) 
.end
.HLL "nqp"
.namespace []
.sub "qastnode" :subid("cuid_18_1360623830.553") :anon :lex :outer("cuid_120_1360623830.553")
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
    .local pmc fb_tmp_99 
.annotate 'line', 277
    $P5001 = _lex_param_1."subtype"()
    set $S5001, $P5001
    iseq $I5001, $S5001, "zerowidth"
    set $I5003, $I5001
    if $I5001 goto unless371_end701 
    $P5002 = _lex_param_1."subtype"()
    set $S5002, $P5002
    iseq $I5002, $S5002, "declarative"
    set $I5003, $I5002
  unless371_end701:
    unless $I5003 goto if370_else698 
.annotate 'line', 278
    nqp_decontainerize $P5003, _lex_param_0
    find_lex $P5005, "$?PACKAGE"
    get_who $P5004, $P5005
    set fb_tmp_99, $P5004
    repr_defined $I5004, fb_tmp_99
    unless $I5004 goto if372_else702 
    set $P5006, fb_tmp_99["$EDGE_EPSILON"]
    set $P5008, $P5006
    goto if372_end703
  if372_else702:
    null $P5007
    set $P5008, $P5007
  if372_end703:
    unless_null $P5008, vivi_373704
    nqp_get_sc_object $P5009, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5008, $P5009
  vivi_373704:
    $P5010 = $P5003."addedge"(_lex_param_2, _lex_param_3, $P5008, 0)
    set $P5013, $P5010
    goto if370_end699
  if370_else698:
.annotate 'line', 279
    nqp_decontainerize $P5011, _lex_param_0
    $P5012 = $P5011."fate"(_lex_param_1, _lex_param_2, _lex_param_3)
    set $P5013, $P5012
  if370_end699:
    .return ($P5013) 
.end
.HLL "nqp"
.namespace []
.sub "subcapture" :subid("cuid_19_1360623830.553") :anon :lex :outer("cuid_120_1360623830.553")
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
    .local pmc fb_tmp_100 
.annotate 'line', 283
    nqp_decontainerize $P5001, _lex_param_0
    set fb_tmp_100, _lex_param_1
    repr_defined $I5001, fb_tmp_100
    unless $I5001 goto if374_else705 
    set $P5002, fb_tmp_100[0]
    set $P5004, $P5002
    goto if374_end706
  if374_else705:
    null $P5003
    set $P5004, $P5003
  if374_end706:
    unless_null $P5004, vivi_375707
    nqp_get_sc_object $P5005, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5004, $P5005
  vivi_375707:
    $P5006 = $P5001."regex_nfa"($P5004, _lex_param_2, _lex_param_3)
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "save" :subid("cuid_20_1360623830.553") :anon :lex :outer("cuid_120_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 286
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("non_empty") :optional 
    .param int haz_param_11 :opt_flag 
    .lex "self", _lex_param_0 
    .lex "$non_empty", _lex_param_1 
    .local pmc fb_tmp_101 
    if haz_param_11, default717
    nqp_get_sc_object $P5017, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set _lex_param_1, $P5017
  default717:
    root_new $P101, ['parrot';'Continuation']
    set_label $P101, lexotic_708
    .lex "RETURN", $P101
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 3
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!edges"
    if $P5003 goto unless376_end711 
.annotate 'line', 287
    if _lex_param_1 goto unless377_end713 
    find_lex $P5004, "RETURN"
    $P5005 = $P5004(0)
  unless377_end713:
.annotate 'line', 289
    nqp_decontainerize $P5006, _lex_param_0
    find_lex $P5008, "$?PACKAGE"
    get_who $P5007, $P5008
    set fb_tmp_101, $P5007
    repr_defined $I5001, fb_tmp_101
    unless $I5001 goto if378_else714 
    set $P5009, fb_tmp_101["$EDGE_FATE"]
    set $P5011, $P5009
    goto if378_end715
  if378_else714:
    null $P5010
    set $P5011, $P5010
  if378_end715:
    unless_null $P5011, vivi_379716
    nqp_get_sc_object $P5012, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5011, $P5012
  vivi_379716:
    $P5013 = $P5006."addedge"(1, 0, $P5011, 0, 1 :named("newedge"))
  unless376_end711:
    nqp_decontainerize $P5014, _lex_param_0
    nqp_get_sc_object $P5015, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 3
    repr_get_attr_obj $P5016, $P5014, $P5015, "$!states"
    goto lexotic_709
  lexotic_708:
    .get_results ($P5016)
  lexotic_709:
    .return ($P5016) 
.end
.HLL "nqp"
.namespace []
.sub "mergesubrule" :subid("cuid_21_1360623830.553") :anon :lex :outer("cuid_120_1360623830.553")
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
    .const 'Sub' $P5014 = 'cuid_133_1360623830.553' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_135_1360623830.553' 
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
    if haz_param_12, default746
    new $P5013, 'Hash'
    set _lex_param_6, $P5013
  default746:
    new $P5001, 'Hash'
    set $P101, $P5001
    new $P5002, 'ResizablePMCArray'
    set $P102, $P5002
    repr_clone $P5003, _lex_param_6
    set $P101, $P5003
    can $I5001, _lex_param_4, _lex_param_5
    unless $I5001 goto if380_end719 
.annotate 'line', 298
    exists $I5003, $P101[_lex_param_5]
    not $I5002, $I5003
    unless $I5002 goto if381_end721 
    .const 'Sub' $P5004 = 'cuid_133_1360623830.553' 
    capture_lex $P5004
    $P5005 = $P5004()
  if381_end721:
    isfalse $I5004, $P102
    set $I5007, $I5004
    unless $I5004 goto if385_end729 
    exists $I5006, $P101[_lex_param_5]
    not $I5005, $I5006
    set $I5007, $I5005
  if385_end729:
    box $P5009, $I5007
    set $P5008, $P5009
    unless $I5007 goto if384_end727 
    .const 'Sub' $P5006 = 'cuid_135_1360623830.553' 
    capture_lex $P5006
    $P5007 = $P5006()
    set $P5008, $P5007
  if384_end727:
  if380_end719:
    box $P5010, 1
    set $P101[_lex_param_5], $P5010
.annotate 'line', 320
    nqp_decontainerize $P5011, _lex_param_0
    $P5012 = $P5011."mergesubstates"(_lex_param_1, _lex_param_2, _lex_param_3, $P102, _lex_param_4, $P101)
    .return ($P5012) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_133_1360623830.553") :anon :lex :outer("cuid_21_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 299
    .lex "$meth", $P101 
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P101, $P5001
.annotate 'line', 300
    find_lex $P5003, "$cursor"
    get_how $P5002, $P5003
    find_lex $P5004, "$cursor"
    find_lex $S5001, "$name"
    $P5005 = $P5002."find_method"($P5004, $S5001, 1 :named("no_trace"))
    set $P101, $P5005
    can $I5001, $P101, "NFA"
    unless $I5001 goto if382_end723 
.annotate 'line', 301
    $P5006 = $P101."NFA"()
    store_lex "@substates", $P5006
  if382_end723:
    find_lex $P5007, "@substates"
    isnull $I5002, $P5007
    box $P5010, $I5002
    set $P5009, $P5010
    unless $I5002 goto if383_end725 
    new $P5008, 'ResizablePMCArray'
    store_lex "@substates", $P5008
    set $P5009, $P5008
  if383_end725:
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_135_1360623830.553") :anon :lex :outer("cuid_21_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 304
    .const 'Sub' $P5029 = 'cuid_134_1360623830.553' 
    capture_lex $P5029 
    .const 'Sub' $P5029 = 'cuid_136_1360623830.553' 
    capture_lex $P5029 
    .lex "%protorx", $P101 
    .lex "$nfa", $P102 
    .lex "$gotmatch", $I101 
    .local pmc fb_tmp_102 
    .local pmc fb_tmp_103 
    new $P5001, 'Hash'
    set $P101, $P5001
    nqp_get_sc_object $P5002, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P102, $P5002
    set $I101, 0
.annotate 'line', 307
    find_lex $P5004, "$cursor"
    get_how $P5003, $P5004
    find_lex $P5005, "$cursor"
    .const 'Sub' $P5007 = 'cuid_134_1360623830.553' 
    capture_lex $P5007
    newclosure $P5006, $P5007
    $P5008 = $P5003."cache"($P5005, "!protoregex_table", $P5006)
    set $P101, $P5008
.annotate 'line', 308
    nqp_get_sc_object $P5011, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 0
    nqp_get_package_through_who $P5010, $P5011, "QRegex"
    get_who $P5009, $P5010
    set fb_tmp_102, $P5009
    repr_defined $I5001, fb_tmp_102
    unless $I5001 goto if386_else730 
    set $P5012, fb_tmp_102["NFA"]
    set $P5014, $P5012
    goto if386_end731
  if386_else730:
    null $P5013
    set $P5014, $P5013
  if386_end731:
    unless_null $P5014, vivi_387732
    nqp_get_sc_object $P5015, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5014, $P5015
  vivi_387732:
    $P5016 = $P5014."new"()
    set $P102, $P5016
    set $I101, 0
    find_lex $S5001, "$name"
    exists $I5002, $P101[$S5001]
    unless $I5002 goto if388_end734 
.annotate 'line', 310
    set fb_tmp_103, $P101
    repr_defined $I5003, fb_tmp_103
    unless $I5003 goto if389_else735 
    find_lex $S5002, "$name"
    set $P5020, fb_tmp_103[$S5002]
    set $P5022, $P5020
    goto if389_end736
  if389_else735:
    null $P5021
    set $P5022, $P5021
  if389_end736:
    unless_null $P5022, vivi_390737
    nqp_get_sc_object $P5023, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5022, $P5023
  vivi_390737:
    set $P5017, $P5022
    iter $P5019, $P5022
  for_next741:
    unless $P5019, for_done743
    shift $P5025, $P5019
  for_redo742:
    .const 'Sub' $P5024 = 'cuid_136_1360623830.553' 
    capture_lex $P5024
    $P5017 = $P5024($P5025)
    goto for_next741
  for_done743:
  if388_end734:
    box $P5028, $I101
    set $P5027, $P5028
    unless $I101 goto if393_end745 
.annotate 'line', 316
    $P5026 = $P102."states"()
    store_lex "@substates", $P5026
    set $P5027, $P5026
  if393_end745:
    .return ($P5027) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_134_1360623830.553") :anon :lex :outer("cuid_135_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 307

    find_lex $P5001, "$cursor"
    $P5002 = $P5001."!protoregex_table"()
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_136_1360623830.553") :anon :lex :outer("cuid_135_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 311
    .param pmc _lex_param_0 
    .lex "$rxname", _lex_param_0 
    .local pmc fb_tmp_104 
.annotate 'line', 312
    find_lex $P5001, "$nfa"
    find_lex $P5003, "$?PACKAGE"
    get_who $P5002, $P5003
    set fb_tmp_104, $P5002
    repr_defined $I5001, fb_tmp_104
    unless $I5001 goto if391_else738 
    set $P5004, fb_tmp_104["$EDGE_SUBRULE"]
    set $P5006, $P5004
    goto if391_end739
  if391_else738:
    null $P5005
    set $P5006, $P5005
  if391_end739:
    unless_null $P5006, vivi_392740
    nqp_get_sc_object $P5007, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5006, $P5007
  vivi_392740:
    $P5001."addedge"(1, 0, $P5006, _lex_param_0)
    store_lex "$gotmatch", 1
    .return (1) 
.end
.HLL "nqp"
.namespace []
.sub "mergesubstates" :subid("cuid_22_1360623830.553") :anon :lex :outer("cuid_120_1360623830.553")
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
    .const 'Sub' $P5013 = 'cuid_138_1360623830.553' 
    capture_lex $P5013 
    .lex "self", _lex_param_0 
    .lex "$start", _lex_param_1 
    .lex "$to", _lex_param_2 
    .lex "$fate", _lex_param_3 
    .lex "@substates", _lex_param_4 
    .lex "$cursor", _lex_param_5 
    .lex "%seen", _lex_param_6 
    .local pmc fb_tmp_116 
    if haz_param_13, default806
    new $P5012, 'Hash'
    set _lex_param_6, $P5012
  default806:
    unless _lex_param_4 goto if394_else747 
    .const 'Sub' $P5001 = 'cuid_138_1360623830.553' 
    capture_lex $P5001
    $P5002 = $P5001()
    set $P5011, $P5002
    goto if394_end748
  if394_else747:
.annotate 'line', 359
.annotate 'line', 360
    nqp_decontainerize $P5003, _lex_param_0
    find_lex $P5005, "$?PACKAGE"
    get_who $P5004, $P5005
    set fb_tmp_116, $P5004
    repr_defined $I5001, fb_tmp_116
    unless $I5001 goto if423_else803 
    set $P5006, fb_tmp_116["$EDGE_FATE"]
    set $P5008, $P5006
    goto if423_end804
  if423_else803:
    null $P5007
    set $P5008, $P5007
  if423_end804:
    unless_null $P5008, vivi_424805
    nqp_get_sc_object $P5009, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5008, $P5009
  vivi_424805:
    $P5010 = $P5003."addedge"(_lex_param_1, 0, $P5008, _lex_param_3)
    set $P5011, $P5010
  if394_end748:
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_138_1360623830.553") :anon :lex :outer("cuid_22_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 324
    .const 'Sub' $P5057 = 'cuid_137_1360623830.553' 
    capture_lex $P5057 
    .lex "$substart", $I101 
    .lex "$subend", $I102 
    .lex "$i", $I103 
    .local pmc fb_tmp_113 
    .local pmc fb_tmp_114 
    .local pmc fb_tmp_115 
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
    set_label $P5017, while395_handlers752
    push_eh $P5017
  while395_test749:
    find_lex $P5008, "@substates"
    set $P5016, $P5008
    unless $P5008 goto while395_done753 
  while395_redo751:
    find_lex $P5010, "self"
    nqp_decontainerize $P5009, $P5010
    nqp_get_sc_object $P5011, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 3
    repr_get_attr_obj $P5012, $P5009, $P5011, "$!states"
    find_lex $P5015, "@substates"
    shift $P5014, $P5015
    repr_clone $P5013, $P5014
    push $P5012, $P5013
    set $P5016, $P5012
    goto while395_test749 
  while395_handlers752:
    .get_results ($P5017)
    pop_upto_eh $P5017
    getattribute $P5017, $P5017, 'type'
    eq $P5017, .CONTROL_LOOP_NEXT, while395_test749
    eq $P5017, .CONTROL_LOOP_REDO, while395_redo751
  while395_done753:
    pop_eh 
    find_lex $P5019, "self"
    nqp_decontainerize $P5018, $P5019
    nqp_get_sc_object $P5020, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 3
    repr_get_attr_obj $P5021, $P5018, $P5020, "$!states"
    elements $I5002, $P5021
    set $I102, $I5002
    set $I103, $I101
  while396_test754:
    set $N5001, $I103
    set $N5002, $I102
    islt $I5003, $N5001, $N5002
    box $P5025, $I5003
    set $P5024, $P5025
    unless $I5003 goto while396_done758 
  while396_redo756:
    .const 'Sub' $P5022 = 'cuid_137_1360623830.553' 
    capture_lex $P5022
    $P5023 = $P5022()
    set $P5024, $P5023
    goto while396_test754 
  while396_done758:
.annotate 'line', 354
    find_lex $P5027, "self"
    nqp_decontainerize $P5026, $P5027
    find_lex $P5028, "$start"
    set $N5004, $I101
    set $N5005, 1
    add $N5003, $N5004, $N5005
    find_lex $P5030, "$?PACKAGE"
    get_who $P5029, $P5030
    set fb_tmp_113, $P5029
    repr_defined $I5004, fb_tmp_113
    unless $I5004 goto if416_else792 
    set $P5031, fb_tmp_113["$EDGE_EPSILON"]
    set $P5033, $P5031
    goto if416_end793
  if416_else792:
    null $P5032
    set $P5033, $P5032
  if416_end793:
    unless_null $P5033, vivi_417794
    nqp_get_sc_object $P5034, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5033, $P5034
  vivi_417794:
    $P5026."addedge"($P5028, $N5003, $P5033, 0)
    find_lex $P5035, "$to"
    set $N5006, $P5035
    set $N5007, 0
    isgt $I5005, $N5006, $N5007
    unless $I5005 goto if418_else795 
.annotate 'line', 356
    find_lex $P5037, "self"
    nqp_decontainerize $P5036, $P5037
    find_lex $P5038, "$to"
    find_lex $P5040, "$?PACKAGE"
    get_who $P5039, $P5040
    set fb_tmp_114, $P5039
    repr_defined $I5006, fb_tmp_114
    unless $I5006 goto if419_else797 
    set $P5041, fb_tmp_114["$EDGE_EPSILON"]
    set $P5043, $P5041
    goto if419_end798
  if419_else797:
    null $P5042
    set $P5043, $P5042
  if419_end798:
    unless_null $P5043, vivi_420799
    nqp_get_sc_object $P5044, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5043, $P5044
  vivi_420799:
    $P5045 = $P5036."addedge"($I101, $P5038, $P5043, 0)
    set $P5056, $P5045
    goto if418_end796
  if418_else795:
.annotate 'line', 357
    find_lex $P5047, "self"
    nqp_decontainerize $P5046, $P5047
    find_lex $P5049, "$?PACKAGE"
    get_who $P5048, $P5049
    set fb_tmp_115, $P5048
    repr_defined $I5007, fb_tmp_115
    unless $I5007 goto if421_else800 
    set $P5050, fb_tmp_115["$EDGE_FATE"]
    set $P5052, $P5050
    goto if421_end801
  if421_else800:
    null $P5051
    set $P5052, $P5051
  if421_end801:
    unless_null $P5052, vivi_422802
    nqp_get_sc_object $P5053, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5052, $P5053
  vivi_422802:
    find_lex $P5054, "$fate"
    $P5055 = $P5046."addedge"($I101, 0, $P5052, $P5054)
    set $P5056, $P5055
  if418_end796:
    .return ($P5056) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_137_1360623830.553") :anon :lex :outer("cuid_138_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 340
    .lex "$substate", $P101 
    .lex "$j", $I101 
    .lex "$k", $I102 
    .local pmc fb_tmp_105 
    .local pmc fb_tmp_106 
    .local pmc fb_tmp_107 
    .local pmc fb_tmp_108 
    .local pmc fb_tmp_109 
    .local pmc fb_tmp_110 
    .local pmc fb_tmp_111 
    .local pmc fb_tmp_112 
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P101, $P5001
    set $I101, 0
    set $I102, 0
    find_lex $P5003, "self"
    nqp_decontainerize $P5002, $P5003
    nqp_get_sc_object $P5004, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 3
    repr_get_attr_obj $P5005, $P5002, $P5004, "$!states"
    set fb_tmp_105, $P5005
    repr_defined $I5001, fb_tmp_105
    unless $I5001 goto if397_else759 
    find_lex $I5002, "$i"
    set $P5006, fb_tmp_105[$I5002]
    set $P5008, $P5006
    goto if397_end760
  if397_else759:
    null $P5007
    set $P5008, $P5007
  if397_end760:
    unless_null $P5008, vivi_398761
    nqp_get_sc_object $P5009, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5008, $P5009
  vivi_398761:
    set $P101, $P5008
    set $I101, 0
    elements $I5003, $P101
    set $I102, $I5003
  while399_test762:
    set $N5001, $I101
    set $N5002, $I102
    islt $I5004, $N5001, $N5002
    set $I5022, $I5004
    unless $I5004 goto while399_done766 
  while399_redo764:
.annotate 'line', 344
    set $N5004, $I101
    set $N5005, 2
    add $N5003, $N5004, $N5005
    set $I5005, $N5003
    set fb_tmp_106, $P101
    repr_defined $I5006, fb_tmp_106
    unless $I5006 goto if400_else767 
    set $N5008, $I101
    set $N5009, 2
    add $N5007, $N5008, $N5009
    set $I5007, $N5007
    set $P5010, fb_tmp_106[$I5007]
    set $P5012, $P5010
    goto if400_end768
  if400_else767:
    null $P5011
    set $P5012, $P5011
  if400_end768:
    unless_null $P5012, vivi_401769
    nqp_get_sc_object $P5013, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5012, $P5013
  vivi_401769:
    set $N5010, $P5012
    find_lex $I5008, "$substart"
    set $N5011, $I5008
    add $N5006, $N5010, $N5011
    box $P5014, $N5006
    set $P101[$I5005], $P5014
    set fb_tmp_107, $P101
    repr_defined $I5010, fb_tmp_107
    unless $I5010 goto if403_else772 
    set $P5015, fb_tmp_107[$I101]
    set $P5017, $P5015
    goto if403_end773
  if403_else772:
    null $P5016
    set $P5017, $P5016
  if403_end773:
    unless_null $P5017, vivi_404774
    nqp_get_sc_object $P5018, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5017, $P5018
  vivi_404774:
    set $N5012, $P5017
    find_lex $P5020, "$?PACKAGE"
    get_who $P5019, $P5020
    set fb_tmp_108, $P5019
    repr_defined $I5011, fb_tmp_108
    unless $I5011 goto if405_else775 
    set $P5021, fb_tmp_108["$EDGE_FATE"]
    set $P5023, $P5021
    goto if405_end776
  if405_else775:
    null $P5022
    set $P5023, $P5022
  if405_end776:
    unless_null $P5023, vivi_406777
    nqp_get_sc_object $P5024, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5023, $P5024
  vivi_406777:
    set $N5013, $P5023
    iseq $I5009, $N5012, $N5013
    unless $I5009 goto if402_end771 
    set $N5015, $I101
    set $N5016, 1
    add $N5014, $N5015, $N5016
    set $I5012, $N5014
    find_lex $P5025, "$fate"
    set $P101[$I5012], $P5025
  if402_end771:
    set fb_tmp_109, $P101
    repr_defined $I5014, fb_tmp_109
    unless $I5014 goto if408_else780 
    set $P5026, fb_tmp_109[$I101]
    set $P5028, $P5026
    goto if408_end781
  if408_else780:
    null $P5027
    set $P5028, $P5027
  if408_end781:
    unless_null $P5028, vivi_409782
    nqp_get_sc_object $P5029, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5028, $P5029
  vivi_409782:
    set $N5017, $P5028
    find_lex $P5031, "$?PACKAGE"
    get_who $P5030, $P5031
    set fb_tmp_110, $P5030
    repr_defined $I5015, fb_tmp_110
    unless $I5015 goto if410_else783 
    set $P5032, fb_tmp_110["$EDGE_SUBRULE"]
    set $P5034, $P5032
    goto if410_end784
  if410_else783:
    null $P5033
    set $P5034, $P5033
  if410_end784:
    unless_null $P5034, vivi_411785
    nqp_get_sc_object $P5035, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5034, $P5035
  vivi_411785:
    set $N5018, $P5034
    iseq $I5013, $N5017, $N5018
    unless $I5013 goto if407_end779 
.annotate 'line', 348
    find_lex $P5037, "self"
    nqp_decontainerize $P5036, $P5037
    find_lex $I5016, "$i"
    set fb_tmp_111, $P101
    repr_defined $I5017, fb_tmp_111
    unless $I5017 goto if412_else786 
    set $N5020, $I101
    set $N5021, 2
    add $N5019, $N5020, $N5021
    set $I5018, $N5019
    set $P5038, fb_tmp_111[$I5018]
    set $P5040, $P5038
    goto if412_end787
  if412_else786:
    null $P5039
    set $P5040, $P5039
  if412_end787:
    unless_null $P5040, vivi_413788
    nqp_get_sc_object $P5041, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5040, $P5041
  vivi_413788:
    find_lex $P5042, "$fate"
    find_lex $P5043, "$cursor"
    set fb_tmp_112, $P101
    repr_defined $I5019, fb_tmp_112
    unless $I5019 goto if414_else789 
    set $N5023, $I101
    set $N5024, 1
    add $N5022, $N5023, $N5024
    set $I5020, $N5022
    set $P5044, fb_tmp_112[$I5020]
    set $P5046, $P5044
    goto if414_end790
  if414_else789:
    null $P5045
    set $P5046, $P5045
  if414_end790:
    unless_null $P5046, vivi_415791
    nqp_get_sc_object $P5047, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5046, $P5047
  vivi_415791:
    find_lex $P5048, "%seen"
    $P5049 = $P5036."mergesubrule"($I5016, $P5040, $P5042, $P5043, $P5046, $P5048)
  if407_end779:
    set $N5026, $I101
    set $N5027, 3
    add $N5025, $N5026, $N5027
    set $I5021, $N5025
    set $I101, $I5021
    set $I5022, $I101
    goto while399_test762 
  while399_done766:
    find_lex $I5023, "$i"
    set $N5029, $I5023
    set $N5030, 1
    add $N5028, $N5029, $N5030
    set $I5024, $N5028
    store_lex "$i", $I5024
    .return ($I5024) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_139_1360623830.553") :anon :lex :outer("cuid_120_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 365
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "run" :subid("cuid_23_1360623830.553") :anon :lex :outer("cuid_120_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 367
    .param pmc _lex_param_0 
    .param string _lex_param_1 
    .param int _lex_param_2 
    .lex "self", _lex_param_0 
    .lex "$target", _lex_param_1 
    .lex "$offset", _lex_param_2 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 3
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!nfa_object"
    repr_defined $I5001, $P5003
    if $I5001 goto unless425_end808 
.annotate 'line', 414
    nqp_disable_sc_write_barrier 
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 3
    nqp_decontainerize $P5007, _lex_param_0
    nqp_get_sc_object $P5008, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 3
    repr_get_attr_obj $P5009, $P5007, $P5008, "$!states"
    nqp_get_sc_object $P5010, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 26
    nqp_nfa_from_statelist $P5006, $P5009, $P5010
    repr_bind_attr_obj $P5004, $P5005, "$!nfa_object", $P5006
    nqp_enable_sc_write_barrier 
  unless425_end808:
    nqp_decontainerize $P5012, _lex_param_0
    nqp_get_sc_object $P5013, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 3
    repr_get_attr_obj $P5014, $P5012, $P5013, "$!nfa_object"
    nqp_nfa_run_proto $P5011, $P5014, _lex_param_1, _lex_param_2
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "run_alt" :subid("cuid_24_1360623830.553") :anon :lex :outer("cuid_120_1360623830.553")
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
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 3
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!nfa_object"
    repr_defined $I5001, $P5003
    if $I5001 goto unless426_end810 
.annotate 'line', 424
    nqp_disable_sc_write_barrier 
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 3
    nqp_decontainerize $P5007, _lex_param_0
    nqp_get_sc_object $P5008, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 3
    repr_get_attr_obj $P5009, $P5007, $P5008, "$!states"
    nqp_get_sc_object $P5010, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 26
    nqp_nfa_from_statelist $P5006, $P5009, $P5010
    repr_bind_attr_obj $P5004, $P5005, "$!nfa_object", $P5006
    nqp_enable_sc_write_barrier 
  unless426_end810:
    nqp_decontainerize $P5011, _lex_param_0
    nqp_get_sc_object $P5012, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 3
    repr_get_attr_obj $P5013, $P5011, $P5012, "$!nfa_object"
    nqp_nfa_run_alt $P5013, _lex_param_1, _lex_param_2, _lex_param_3, _lex_param_4, _lex_param_5
    .return ($P5013) 
.end
.HLL "nqp"
.namespace []
.sub "generic" :subid("cuid_25_1360623830.553") :anon :lex :outer("cuid_120_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 433
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 3
    repr_get_attr_int $I5001, $P5001, $P5002, "$!generic"
    .return ($I5001) 
.end
.HLL "nqp"
.namespace []
.sub "instantiate_generic" :subid("cuid_26_1360623830.553") :anon :lex :outer("cuid_120_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 437
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5035 = 'cuid_140_1360623830.553' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_142_1360623830.553' 
    capture_lex $P5035 
    .lex "$copy", $P101 
    .lex "@copied_states", $P102 
    .lex "$from", $I101 
    .lex "self", _lex_param_0 
    .lex "$env", _lex_param_1 
    .local pmc fb_tmp_117 
    .local pmc fb_tmp_118 
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P101, $P5001
    new $P5002, 'ResizablePMCArray'
    set $P102, $P5002
    set $I101, 0
    nqp_decontainerize $P5004, _lex_param_0
    repr_instance_of $P5003, $P5004
    set $P101, $P5003
    nqp_decontainerize $P5008, _lex_param_0
    nqp_get_sc_object $P5009, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 3
    repr_get_attr_obj $P5010, $P5008, $P5009, "$!states"
    set $P5005, $P5010
    iter $P5007, $P5010
  for_next811:
    unless $P5007, for_done813
    shift $P5012, $P5007
  for_redo812:
    .const 'Sub' $P5011 = 'cuid_140_1360623830.553' 
    capture_lex $P5011
    $P5005 = $P5011($P5012)
    goto for_next811
  for_done813:
    nqp_get_sc_object $P5015, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 0
    nqp_get_package_through_who $P5014, $P5015, "QRegex"
    get_who $P5013, $P5014
    set fb_tmp_117, $P5013
    repr_defined $I5001, fb_tmp_117
    unless $I5001 goto if427_else814 
    set $P5016, fb_tmp_117["NFA"]
    set $P5018, $P5016
    goto if427_end815
  if427_else814:
    null $P5017
    set $P5018, $P5017
  if427_end815:
    unless_null $P5018, vivi_428816
    nqp_get_sc_object $P5019, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5018, $P5019
  vivi_428816:
    setattribute $P101, $P5018, "$!states", $P102
    nqp_get_sc_object $P5022, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 0
    nqp_get_package_through_who $P5021, $P5022, "QRegex"
    get_who $P5020, $P5021
    set fb_tmp_118, $P5020
    repr_defined $I5002, fb_tmp_118
    unless $I5002 goto if429_else817 
    set $P5023, fb_tmp_118["NFA"]
    set $P5025, $P5023
    goto if429_end818
  if429_else817:
    null $P5024
    set $P5025, $P5024
  if429_end818:
    unless_null $P5025, vivi_430819
    nqp_get_sc_object $P5026, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5025, $P5026
  vivi_430819:
    nqp_decontainerize $P5027, _lex_param_0
    nqp_get_sc_object $P5028, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 3
    repr_get_attr_obj $P5029, $P5027, $P5028, "$!edges"
    setattribute $P101, $P5025, "$!edges", $P5029
    set $I101, 0
    set $P5030, $P102
    iter $P5032, $P102
  for_next850:
    unless $P5032, for_done852
    shift $P5034, $P5032
  for_redo851:
    .const 'Sub' $P5033 = 'cuid_142_1360623830.553' 
    capture_lex $P5033
    $P5030 = $P5033($P5034)
    goto for_next850
  for_done852:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_140_1360623830.553") :anon :lex :outer("cuid_26_1360623830.553")
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
.sub "" :subid("cuid_142_1360623830.553") :anon :lex :outer("cuid_26_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 450
    .param pmc _lex_param_0 
    .const 'Sub' $P5006 = 'cuid_141_1360623830.553' 
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
  while431_test820:
    set $N5001, $I101
    set $N5002, $I102
    islt $I5002, $N5001, $N5002
    box $P5005, $I5002
    set $P5004, $P5005
    unless $I5002 goto while431_done824 
  while431_redo822:
    .const 'Sub' $P5002 = 'cuid_141_1360623830.553' 
    capture_lex $P5002
    $P5003 = $P5002()
    set $P5004, $P5003
    goto while431_test820 
  while431_done824:
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
.sub "" :subid("cuid_141_1360623830.553") :anon :lex :outer("cuid_142_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 454
    .lex "$act", $P101 
    .lex "$arg", $P102 
    .lex "$to", $P103 
    .local pmc fb_tmp_119 
    .local pmc fb_tmp_120 
    .local pmc fb_tmp_121 
    .local pmc fb_tmp_122 
    .local pmc fb_tmp_123 
    .local pmc fb_tmp_124 
    .local pmc fb_tmp_125 
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P102, $P5002
    nqp_get_sc_object $P5003, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P103, $P5003
    find_lex $P5004, "@values"
    set fb_tmp_119, $P5004
    repr_defined $I5001, fb_tmp_119
    unless $I5001 goto if432_else825 
    find_lex $I5002, "$i"
    set $P5005, fb_tmp_119[$I5002]
    set $P5007, $P5005
    goto if432_end826
  if432_else825:
    null $P5006
    set $P5007, $P5006
  if432_end826:
    unless_null $P5007, vivi_433827
    nqp_get_sc_object $P5008, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5007, $P5008
  vivi_433827:
    set $P101, $P5007
    find_lex $P5009, "@values"
    set fb_tmp_120, $P5009
    repr_defined $I5003, fb_tmp_120
    unless $I5003 goto if434_else828 
    find_lex $I5004, "$i"
    set $N5002, $I5004
    set $N5003, 1
    add $N5001, $N5002, $N5003
    set $I5005, $N5001
    set $P5010, fb_tmp_120[$I5005]
    set $P5012, $P5010
    goto if434_end829
  if434_else828:
    null $P5011
    set $P5012, $P5011
  if434_end829:
    unless_null $P5012, vivi_435830
    nqp_get_sc_object $P5013, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5012, $P5013
  vivi_435830:
    set $P102, $P5012
    find_lex $P5014, "@values"
    set fb_tmp_121, $P5014
    repr_defined $I5006, fb_tmp_121
    unless $I5006 goto if436_else831 
    find_lex $I5007, "$i"
    set $N5005, $I5007
    set $N5006, 2
    add $N5004, $N5005, $N5006
    set $I5008, $N5004
    set $P5015, fb_tmp_121[$I5008]
    set $P5017, $P5015
    goto if436_end832
  if436_else831:
    null $P5016
    set $P5017, $P5016
  if436_end832:
    unless_null $P5017, vivi_437833
    nqp_get_sc_object $P5018, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5017, $P5018
  vivi_437833:
    set $P103, $P5017
    set $N5007, $P101
    find_lex $P5020, "$?PACKAGE"
    get_who $P5019, $P5020
    set fb_tmp_122, $P5019
    repr_defined $I5010, fb_tmp_122
    unless $I5010 goto if439_else836 
    set $P5021, fb_tmp_122["$EDGE_GENERIC_VAR"]
    set $P5023, $P5021
    goto if439_end837
  if439_else836:
    null $P5022
    set $P5023, $P5022
  if439_end837:
    unless_null $P5023, vivi_440838
    nqp_get_sc_object $P5024, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5023, $P5024
  vivi_440838:
    set $N5008, $P5023
    iseq $I5009, $N5007, $N5008
    unless $I5009 goto if438_end835 
.annotate 'line', 458
    find_lex $P5025, "$env"
    set $S5001, $P102
    exists $I5011, $P5025[$S5001]
    unless $I5011 goto if441_else839 
.annotate 'line', 459
.annotate 'line', 460
    find_lex $P5026, "$copy"
.annotate 'line', 461
    nqp_get_sc_object $P5029, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 0
    nqp_get_package_through_who $P5028, $P5029, "QAST"
    get_who $P5027, $P5028
    set fb_tmp_123, $P5027
    repr_defined $I5012, fb_tmp_123
    unless $I5012 goto if442_else841 
    set $P5030, fb_tmp_123["Regex"]
    set $P5032, $P5030
    goto if442_end842
  if442_else841:
    null $P5031
    set $P5032, $P5031
  if442_end842:
    unless_null $P5032, vivi_443843
    nqp_get_sc_object $P5033, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5032, $P5033
  vivi_443843:
    find_lex $P5035, "$env"
    set $S5002, $P102
    set $P5034, $P5035[$S5002]
    $P5036 = $P5032."new"($P5034, "literal" :named("rxtype"))
    find_lex $I5013, "$from"
    $P5026."literal"($P5036, $I5013, $P103)
    find_lex $P5037, "@values"
    find_lex $I5014, "$i"
    find_lex $P5039, "$?PACKAGE"
    get_who $P5038, $P5039
    set fb_tmp_124, $P5038
    repr_defined $I5015, fb_tmp_124
    unless $I5015 goto if444_else844 
    set $P5040, fb_tmp_124["$EDGE_EPSILON"]
    set $P5042, $P5040
    goto if444_end845
  if444_else844:
    null $P5041
    set $P5042, $P5041
  if444_end845:
    unless_null $P5042, vivi_445846
    nqp_get_sc_object $P5043, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5042, $P5043
  vivi_445846:
    set $P5037[$I5014], $P5042
    find_lex $P5044, "@values"
    find_lex $I5016, "$i"
    set $N5010, $I5016
    set $N5011, 1
    add $N5009, $N5010, $N5011
    set $I5017, $N5009
    box $P5045, 0
    set $P5044[$I5017], $P5045
    find_lex $P5046, "@values"
    find_lex $I5018, "$i"
    set $N5013, $I5018
    set $N5014, 2
    add $N5012, $N5013, $N5014
    set $I5019, $N5012
    box $P5047, 0
    set $P5046[$I5019], $P5047
    set $P5059, $P5047
    goto if441_end840
  if441_else839:
.annotate 'line', 467
    find_lex $P5048, "@values"
    find_lex $I5020, "$i"
    find_lex $P5050, "$?PACKAGE"
    get_who $P5049, $P5050
    set fb_tmp_125, $P5049
    repr_defined $I5021, fb_tmp_125
    unless $I5021 goto if446_else847 
    set $P5051, fb_tmp_125["$EDGE_FATE"]
    set $P5053, $P5051
    goto if446_end848
  if446_else847:
    null $P5052
    set $P5053, $P5052
  if446_end848:
    unless_null $P5053, vivi_447849
    nqp_get_sc_object $P5054, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5053, $P5054
  vivi_447849:
    set $P5048[$I5020], $P5053
    find_lex $P5055, "@values"
    find_lex $I5022, "$i"
    set $N5016, $I5022
    set $N5017, 1
    add $N5015, $N5016, $N5017
    set $I5023, $N5015
    box $P5056, 0
    set $P5055[$I5023], $P5056
    find_lex $P5057, "@values"
    find_lex $I5024, "$i"
    set $N5019, $I5024
    set $N5020, 2
    add $N5018, $N5019, $N5020
    set $I5025, $N5018
    box $P5058, 0
    set $P5057[$I5025], $P5058
    set $P5059, $P5058
  if441_end840:
  if438_end835:
    find_lex $I5026, "$i"
    set $N5022, $I5026
    set $N5023, 3
    add $N5021, $N5022, $N5023
    set $I5027, $N5021
    store_lex "$i", $I5027
    .return ($I5027) 
.end
.HLL "nqp"
.namespace []
.sub "__dump" :subid("cuid_27_1360623830.553") :anon :lex :outer("cuid_120_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 481
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .const 'Sub' $P5015 = 'cuid_143_1360623830.553' 
    capture_lex $P5015 
    .lex "$subindent", $P101 
    .lex "$st", $P102 
    .lex "self", _lex_param_0 
    .lex "$dumper", _lex_param_1 
    .lex "$label", _lex_param_2 
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P102, $P5002
.annotate 'line', 482
    $P5003 = _lex_param_1."newIndent"()
    set $P101, $P5003
.annotate 'line', 483
    "&print"("[")
    box $P5004, 0
    set $P102, $P5004
    nqp_decontainerize $P5008, _lex_param_0
    nqp_get_sc_object $P5009, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 3
    repr_get_attr_obj $P5010, $P5008, $P5009, "$!states"
    set $P5005, $P5010
    iter $P5007, $P5010
  for_next853:
    unless $P5007, for_done855
    shift $P5012, $P5007
  for_redo854:
    .const 'Sub' $P5011 = 'cuid_143_1360623830.553' 
    capture_lex $P5011
    $P5005 = $P5011($P5012)
    goto for_next853
  for_done855:
.annotate 'line', 489
    _lex_param_1."deleteIndent"()
.annotate 'line', 490
    $P5013 = _lex_param_1."indent"()
    $P5014 = "&print"("\n", $P5013, "]")
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_143_1360623830.553") :anon :lex :outer("cuid_27_1360623830.553")
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
.sub "" :subid("cuid_145_1360623830.553") :anon :lex :outer("cuid_144_1360623830.553")
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
.sub "" :subid("cuid_80_1360623830.553") :anon :lex :outer("cuid_144_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 507
    .param pmc _lex_param_0 
    .const 'Sub' $P5065 = 'cuid_28_1360623830.553' 
    capture_lex $P5065 
    .const 'Sub' $P5065 = 'cuid_29_1360623830.553' 
    capture_lex $P5065 
    .const 'Sub' $P5065 = 'cuid_30_1360623830.553' 
    capture_lex $P5065 
    .const 'Sub' $P5065 = 'cuid_31_1360623830.553' 
    capture_lex $P5065 
    .const 'Sub' $P5065 = 'cuid_32_1360623830.553' 
    capture_lex $P5065 
    .const 'Sub' $P5065 = 'cuid_33_1360623830.553' 
    capture_lex $P5065 
    .const 'Sub' $P5065 = 'cuid_34_1360623830.553' 
    capture_lex $P5065 
    .const 'Sub' $P5065 = 'cuid_35_1360623830.553' 
    capture_lex $P5065 
    .const 'Sub' $P5065 = 'cuid_36_1360623830.553' 
    capture_lex $P5065 
    .const 'Sub' $P5065 = 'cuid_37_1360623830.553' 
    capture_lex $P5065 
    .const 'Sub' $P5065 = 'cuid_38_1360623830.553' 
    capture_lex $P5065 
    .const 'Sub' $P5065 = 'cuid_39_1360623830.553' 
    capture_lex $P5065 
    .const 'Sub' $P5065 = 'cuid_40_1360623830.553' 
    capture_lex $P5065 
    .const 'Sub' $P5065 = 'cuid_41_1360623830.553' 
    capture_lex $P5065 
    .const 'Sub' $P5065 = 'cuid_42_1360623830.553' 
    capture_lex $P5065 
    .const 'Sub' $P5065 = 'cuid_43_1360623830.553' 
    capture_lex $P5065 
    .const 'Sub' $P5065 = 'cuid_44_1360623830.553' 
    capture_lex $P5065 
    .const 'Sub' $P5065 = 'cuid_45_1360623830.553' 
    capture_lex $P5065 
    .const 'Sub' $P5065 = 'cuid_46_1360623830.553' 
    capture_lex $P5065 
    .const 'Sub' $P5065 = 'cuid_47_1360623830.553' 
    capture_lex $P5065 
    .const 'Sub' $P5065 = 'cuid_48_1360623830.553' 
    capture_lex $P5065 
    .const 'Sub' $P5065 = 'cuid_49_1360623830.553' 
    capture_lex $P5065 
    .const 'Sub' $P5065 = 'cuid_50_1360623830.553' 
    capture_lex $P5065 
    .const 'Sub' $P5065 = 'cuid_51_1360623830.553' 
    capture_lex $P5065 
    .const 'Sub' $P5065 = 'cuid_52_1360623830.553' 
    capture_lex $P5065 
    .const 'Sub' $P5065 = 'cuid_53_1360623830.553' 
    capture_lex $P5065 
    .const 'Sub' $P5065 = 'cuid_54_1360623830.553' 
    capture_lex $P5065 
    .const 'Sub' $P5065 = 'cuid_55_1360623830.553' 
    capture_lex $P5065 
    .const 'Sub' $P5065 = 'cuid_56_1360623830.553' 
    capture_lex $P5065 
    .const 'Sub' $P5065 = 'cuid_57_1360623830.553' 
    capture_lex $P5065 
    .const 'Sub' $P5065 = 'cuid_58_1360623830.553' 
    capture_lex $P5065 
    .const 'Sub' $P5065 = 'cuid_59_1360623830.553' 
    capture_lex $P5065 
    .const 'Sub' $P5065 = 'cuid_60_1360623830.553' 
    capture_lex $P5065 
    .const 'Sub' $P5065 = 'cuid_61_1360623830.553' 
    capture_lex $P5065 
    .const 'Sub' $P5065 = 'cuid_62_1360623830.553' 
    capture_lex $P5065 
    .const 'Sub' $P5065 = 'cuid_63_1360623830.553' 
    capture_lex $P5065 
    .const 'Sub' $P5065 = 'cuid_64_1360623830.553' 
    capture_lex $P5065 
    .const 'Sub' $P5065 = 'cuid_65_1360623830.553' 
    capture_lex $P5065 
    .const 'Sub' $P5065 = 'cuid_66_1360623830.553' 
    capture_lex $P5065 
    .const 'Sub' $P5065 = 'cuid_67_1360623830.553' 
    capture_lex $P5065 
    .const 'Sub' $P5065 = 'cuid_68_1360623830.553' 
    capture_lex $P5065 
    .const 'Sub' $P5065 = 'cuid_69_1360623830.553' 
    capture_lex $P5065 
    .const 'Sub' $P5065 = 'cuid_70_1360623830.553' 
    capture_lex $P5065 
    .const 'Sub' $P5065 = 'cuid_71_1360623830.553' 
    capture_lex $P5065 
    .const 'Sub' $P5065 = 'cuid_72_1360623830.553' 
    capture_lex $P5065 
    .const 'Sub' $P5065 = 'cuid_73_1360623830.553' 
    capture_lex $P5065 
    .const 'Sub' $P5065 = 'cuid_74_1360623830.553' 
    capture_lex $P5065 
    .const 'Sub' $P5065 = 'cuid_75_1360623830.553' 
    capture_lex $P5065 
    .const 'Sub' $P5065 = 'cuid_76_1360623830.553' 
    capture_lex $P5065 
    .const 'Sub' $P5065 = 'cuid_77_1360623830.553' 
    capture_lex $P5065 
    .const 'Sub' $P5065 = 'cuid_78_1360623830.553' 
    capture_lex $P5065 
    .const 'Sub' $P5065 = 'cuid_79_1360623830.553' 
    capture_lex $P5065 
    .lex "$?PACKAGE", $P101 
    .lex "$?ROLE", $P102 
    .lex "$NO_CAPS", $P103 
    .lex "$NO_RESTART", $P104 
    .lex "$RESTART", $P105 
    .lex "@start_result", $P106 
    .lex "$pass_mark", $P107 
    .lex "@EMPTY", $P108 
    .lex "$?CLASS", _lex_param_0 
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P103, $P5001
    nqp_get_sc_object $P5002, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P104, $P5002
    nqp_get_sc_object $P5003, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P105, $P5003
    new $P5004, 'ResizablePMCArray'
    set $P106, $P5004
    nqp_get_sc_object $P5005, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P107, $P5005
    new $P5006, 'ResizablePMCArray'
    set $P108, $P5006
    .const 'Sub' $P5007 = 'cuid_28_1360623830.553' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_29_1360623830.553' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_30_1360623830.553' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_31_1360623830.553' 
    capture_lex $P5010
    new $P5011, 'Hash'
    set $P103, $P5011
    .const 'Sub' $P5012 = 'cuid_32_1360623830.553' 
    capture_lex $P5012
    .const 'Sub' $P5013 = 'cuid_33_1360623830.553' 
    capture_lex $P5013
    .const 'Sub' $P5014 = 'cuid_34_1360623830.553' 
    capture_lex $P5014
    box $P5015, 0
    set $P104, $P5015
    box $P5016, 1
    set $P105, $P5016
    .const 'Sub' $P5017 = 'cuid_35_1360623830.553' 
    capture_lex $P5017
    .const 'Sub' $P5018 = 'cuid_36_1360623830.553' 
    capture_lex $P5018
    .const 'Sub' $P5019 = 'cuid_37_1360623830.553' 
    capture_lex $P5019
    .const 'Sub' $P5020 = 'cuid_38_1360623830.553' 
    capture_lex $P5020
    .const 'Sub' $P5021 = 'cuid_39_1360623830.553' 
    capture_lex $P5021
    box $P5022, 1
    set $P107, $P5022
    .const 'Sub' $P5023 = 'cuid_40_1360623830.553' 
    capture_lex $P5023
    .const 'Sub' $P5024 = 'cuid_41_1360623830.553' 
    capture_lex $P5024
    .const 'Sub' $P5025 = 'cuid_42_1360623830.553' 
    capture_lex $P5025
    .const 'Sub' $P5026 = 'cuid_43_1360623830.553' 
    capture_lex $P5026
    .const 'Sub' $P5027 = 'cuid_44_1360623830.553' 
    capture_lex $P5027
    .const 'Sub' $P5028 = 'cuid_45_1360623830.553' 
    capture_lex $P5028
    .const 'Sub' $P5029 = 'cuid_46_1360623830.553' 
    capture_lex $P5029
    .const 'Sub' $P5030 = 'cuid_47_1360623830.553' 
    capture_lex $P5030
    new $P5031, 'ResizablePMCArray'
    set $P108, $P5031
    .const 'Sub' $P5032 = 'cuid_48_1360623830.553' 
    capture_lex $P5032
    .const 'Sub' $P5033 = 'cuid_49_1360623830.553' 
    capture_lex $P5033
    .const 'Sub' $P5034 = 'cuid_50_1360623830.553' 
    capture_lex $P5034
    .const 'Sub' $P5035 = 'cuid_51_1360623830.553' 
    capture_lex $P5035
    .const 'Sub' $P5036 = 'cuid_52_1360623830.553' 
    capture_lex $P5036
    .const 'Sub' $P5037 = 'cuid_53_1360623830.553' 
    capture_lex $P5037
    .const 'Sub' $P5038 = 'cuid_54_1360623830.553' 
    capture_lex $P5038
    .const 'Sub' $P5039 = 'cuid_55_1360623830.553' 
    capture_lex $P5039
    .const 'Sub' $P5040 = 'cuid_56_1360623830.553' 
    capture_lex $P5040
    .const 'Sub' $P5041 = 'cuid_57_1360623830.553' 
    capture_lex $P5041
    .const 'Sub' $P5042 = 'cuid_58_1360623830.553' 
    capture_lex $P5042
    .const 'Sub' $P5043 = 'cuid_59_1360623830.553' 
    capture_lex $P5043
    .const 'Sub' $P5044 = 'cuid_60_1360623830.553' 
    capture_lex $P5044
    .const 'Sub' $P5045 = 'cuid_61_1360623830.553' 
    capture_lex $P5045
    .const 'Sub' $P5046 = 'cuid_62_1360623830.553' 
    capture_lex $P5046
    .const 'Sub' $P5047 = 'cuid_63_1360623830.553' 
    capture_lex $P5047
    .const 'Sub' $P5048 = 'cuid_64_1360623830.553' 
    capture_lex $P5048
    .const 'Sub' $P5049 = 'cuid_65_1360623830.553' 
    capture_lex $P5049
    .const 'Sub' $P5050 = 'cuid_66_1360623830.553' 
    capture_lex $P5050
    .const 'Sub' $P5051 = 'cuid_67_1360623830.553' 
    capture_lex $P5051
    .const 'Sub' $P5052 = 'cuid_68_1360623830.553' 
    capture_lex $P5052
    .const 'Sub' $P5053 = 'cuid_69_1360623830.553' 
    capture_lex $P5053
    .const 'Sub' $P5054 = 'cuid_70_1360623830.553' 
    capture_lex $P5054
    .const 'Sub' $P5055 = 'cuid_71_1360623830.553' 
    capture_lex $P5055
    .const 'Sub' $P5056 = 'cuid_72_1360623830.553' 
    capture_lex $P5056
    .const 'Sub' $P5057 = 'cuid_73_1360623830.553' 
    capture_lex $P5057
    .const 'Sub' $P5058 = 'cuid_74_1360623830.553' 
    capture_lex $P5058
    .const 'Sub' $P5059 = 'cuid_75_1360623830.553' 
    capture_lex $P5059
    .const 'Sub' $P5060 = 'cuid_76_1360623830.553' 
    capture_lex $P5060
    .const 'Sub' $P5061 = 'cuid_77_1360623830.553' 
    capture_lex $P5061
    .const 'Sub' $P5062 = 'cuid_78_1360623830.553' 
    capture_lex $P5062
    .const 'Sub' $P5063 = 'cuid_79_1360623830.553' 
    capture_lex $P5063
    getinterp $P5064
    set $P5064, $P5064['lexpad']
    .return ($P5064) 
.end
.HLL "nqp"
.namespace []
.sub "orig" :subid("cuid_28_1360623830.553") :anon :lex :outer("cuid_80_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 518
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5002, _lex_param_0
    find_lex $P5003, "$?CLASS"
    repr_get_attr_obj $P5004, $P5002, $P5003, "$!shared"
    nqp_get_sc_object $P5005, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 32
    getattribute $P5001, $P5004, $P5005, "$!orig"
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "target" :subid("cuid_29_1360623830.553") :anon :lex :outer("cuid_80_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 519
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    find_lex $P5002, "$?CLASS"
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!shared"
    nqp_get_sc_object $P5004, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 32
    repr_get_attr_str $S5001, $P5003, $P5004, "$!target"
    .return ($S5001) 
.end
.HLL "nqp"
.namespace []
.sub "from" :subid("cuid_30_1360623830.553") :anon :lex :outer("cuid_80_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 520
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    find_lex $P5002, "$?CLASS"
    repr_get_attr_int $I5001, $P5001, $P5002, "$!from"
    .return ($I5001) 
.end
.HLL "nqp"
.namespace []
.sub "pos" :subid("cuid_31_1360623830.553") :anon :lex :outer("cuid_80_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 521
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    find_lex $P5002, "$?CLASS"
    repr_get_attr_int $I5001, $P5001, $P5002, "$!pos"
    .return ($I5001) 
.end
.HLL "nqp"
.namespace []
.sub "CAPHASH" :subid("cuid_32_1360623830.553") :anon :lex :outer("cuid_80_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 524
    .param pmc _lex_param_0 
    .const 'Sub' $P5070 = 'cuid_98_1360623830.553' 
    capture_lex $P5070 
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
    .local pmc fb_tmp_126 
    .local pmc fb_tmp_127 
    .local pmc fb_tmp_128 
    .local pmc tmp_5 
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P101, $P5001
    new $P5002, 'Hash'
    set $P102, $P5002
    nqp_get_sc_object $P5003, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P103, $P5003
    set $S101, ""
    nqp_get_sc_object $P5004, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P104, $P5004
    set $I101, 0
    set $I102, 0
    nqp_get_sc_object $P5005, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P105, $P5005
    nqp_get_sc_object $P5006, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P106, $P5006
    nqp_get_sc_object $P5007, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
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
    unless $I5001 goto if449_end859 
    nqp_decontainerize $P5013, _lex_param_0
    find_lex $P5014, "$?CLASS"
    repr_get_attr_obj $P5015, $P5013, $P5014, "$!regexsub"
    defined $I5003, $P5015
    set $I5004, $I5003
  if449_end859:
    unless $I5004 goto if448_end857 
.annotate 'line', 536
    nqp_decontainerize $P5016, _lex_param_0
    find_lex $P5017, "$?CLASS"
    repr_get_attr_obj $P5018, $P5016, $P5017, "$!regexsub"
    can $I5005, $P5018, "CAPS"
    unless $I5005 goto if450_else860 
.annotate 'line', 537
    nqp_decontainerize $P5019, _lex_param_0
    find_lex $P5020, "$?CLASS"
    repr_get_attr_obj $P5021, $P5019, $P5020, "$!regexsub"
    $P5022 = $P5021."CAPS"()
    set $P5024, $P5022
    goto if450_end861
  if450_else860:
    null $P5023
    set $P5024, $P5023
  if450_end861:
    set $P102, $P5024
    isnull $I5007, $P102
    not $I5006, $I5007
    box $P5026, $I5006
    set $P5025, $P5026
    unless $I5006 goto if452_end865 
    set $P5025, $P102
  if452_end865:
    set $P5036, $P5025
    unless $P5025 goto if451_end863 
.annotate 'line', 538
    iter $P5027, $P102
    set $P103, $P5027
  while453_test866:
    set $P5035, $P103
    unless $P103 goto while453_done870 
  while453_redo868:
.annotate 'line', 540
    shift $S5001, $P103
    set $S101, $S5001
    set fb_tmp_126, $P102
    repr_defined $I5009, fb_tmp_126
    unless $I5009 goto if455_else873 
    set $P5028, fb_tmp_126[$S101]
    set $P5030, $P5028
    goto if455_end874
  if455_else873:
    null $P5029
    set $P5030, $P5029
  if455_end874:
    unless_null $P5030, vivi_456875
    nqp_get_sc_object $P5031, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5030, $P5031
  vivi_456875:
    set $N5001, $P5030
    set $N5002, 2
    isge $I5008, $N5001, $N5002
    box $P5034, $I5008
    set $P5033, $P5034
    unless $I5008 goto if454_end872 
    new $P5032, 'ResizablePMCArray'
    set $P101[$S101], $P5032
    set $P5033, $P5032
  if454_end872:
    set $P5035, $P5033
    goto while453_test866 
  while453_done870:
    set $P5036, $P5035
  if451_end863:
  if448_end857:
    nqp_decontainerize $P5037, _lex_param_0
    find_lex $P5038, "$?CLASS"
    repr_get_attr_obj $P5039, $P5037, $P5038, "$!cstack"
    isnull $I5011, $P5039
    not $I5010, $I5011
    box $P5044, $I5010
    set $P5043, $P5044
    unless $I5010 goto if458_end879 
    nqp_decontainerize $P5040, _lex_param_0
    find_lex $P5041, "$?CLASS"
    repr_get_attr_obj $P5042, $P5040, $P5041, "$!cstack"
    set $P5043, $P5042
  if458_end879:
    unless $P5043 goto if457_end877 
.annotate 'line', 546
    nqp_decontainerize $P5045, _lex_param_0
    find_lex $P5046, "$?CLASS"
    repr_get_attr_obj $P5047, $P5045, $P5046, "$!cstack"
    set $P104, $P5047
    elements $I5012, $P104
    set $I102, $I5012
  while459_test880:
    set $N5003, $I101
    set $N5004, $I102
    islt $I5013, $N5003, $N5004
    box $P5069, $I5013
    set $P5068, $P5069
    unless $I5013 goto while459_done884 
  while459_redo882:
.annotate 'line', 549
    set $P5048, $P104[$I101]
    set $P105, $P5048
.annotate 'line', 551
    $P5049 = $P105."MATCH"()
    set $P106, $P5049
    find_lex $P5051, "$?CLASS"
    getattribute $P5050, $P105, $P5051, "$!name"
    set $P107, $P5050
    isnull $I5015, $P107
    not $I5014, $I5015
    set $I5017, $I5014
    unless $I5014 goto if461_end888 
    defined $I5016, $P107
    set $I5017, $I5016
  if461_end888:
    unless $I5017 goto if460_end886 
.annotate 'line', 553
    set $S5002, $P107
    index $I5019, $S5002, "=", 0
    set $N5005, $I5019
    set $N5006, 0
    islt $I5018, $N5005, $N5006
    unless $I5018 goto if462_else889 
.annotate 'line', 554
    set fb_tmp_127, $P102
    repr_defined $I5021, fb_tmp_127
    unless $I5021 goto if464_else893 
    set $S5003, $P107
    set $P5052, fb_tmp_127[$S5003]
    set $P5054, $P5052
    goto if464_end894
  if464_else893:
    null $P5053
    set $P5054, $P5053
  if464_end894:
    unless_null $P5054, vivi_465895
    nqp_get_sc_object $P5055, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5054, $P5055
  vivi_465895:
    set $N5007, $P5054
    set $N5008, 2
    isge $I5020, $N5007, $N5008
    unless $I5020 goto if463_else891 
    set fb_tmp_128, $P101
    repr_defined $I5022, fb_tmp_128
    unless $I5022 goto if466_else896 
    set $S5004, $P107
    set $P5056, fb_tmp_128[$S5004]
    set $P5058, $P5056
    goto if466_end897
  if466_else896:
    null $P5057
    set $P5058, $P5057
  if466_end897:
    unless_null $P5058, vivi_467898
    nqp_get_sc_object $P5059, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5058, $P5059
  vivi_467898:
    push $P5058, $P106
    set $P5060, $P5058
    goto if463_end892
  if463_else891:
    set $S5005, $P107
    set $P101[$S5005], $P106
    set $P5060, $P106
  if463_end892:
    set $P5067, $P5060
    goto if462_end890
  if462_else889:
.annotate 'line', 559
    set $S5006, $P107
    split $P5064, "=", $S5006
    set $P5061, $P5064
    iter $P5063, $P5064
  for_next907:
    unless $P5063, for_done909
    shift $P5066, $P5063
  for_redo908:
    .const 'Sub' $P5065 = 'cuid_98_1360623830.553' 
    capture_lex $P5065
    $P5061 = $P5065($P5066)
    goto for_next907
  for_done909:
    set $P5067, $P5061
  if462_end890:
  if460_end886:
    box $P5068, $I101
    set tmp_5, $P5068
    set $N5010, tmp_5
    set $N5011, 1
    add $N5009, $N5010, $N5011
    set $I5023, $N5009
    set $I101, $I5023
    set $P5068, tmp_5
    goto while459_test880 
  while459_done884:
  if457_end877:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_98_1360623830.553") :anon :lex :outer("cuid_32_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 560
    .param pmc _lex_param_0 
    .lex "$name", _lex_param_0 
    .local pmc fb_tmp_129 
    .local pmc fb_tmp_130 
    find_lex $P5001, "%caplist"
    set fb_tmp_129, $P5001
    repr_defined $I5002, fb_tmp_129
    unless $I5002 goto if469_else901 
    set $S5001, _lex_param_0
    set $P5002, fb_tmp_129[$S5001]
    set $P5004, $P5002
    goto if469_end902
  if469_else901:
    null $P5003
    set $P5004, $P5003
  if469_end902:
    unless_null $P5004, vivi_470903
    nqp_get_sc_object $P5005, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5004, $P5005
  vivi_470903:
    set $N5001, $P5004
    set $N5002, 2
    isge $I5001, $N5001, $N5002
    unless $I5001 goto if468_else899 
    find_lex $P5006, "$caps"
    set fb_tmp_130, $P5006
    repr_defined $I5003, fb_tmp_130
    unless $I5003 goto if471_else904 
    set $S5002, _lex_param_0
    set $P5007, fb_tmp_130[$S5002]
    set $P5009, $P5007
    goto if471_end905
  if471_else904:
    null $P5008
    set $P5009, $P5008
  if471_end905:
    unless_null $P5009, vivi_472906
    nqp_get_sc_object $P5010, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5009, $P5010
  vivi_472906:
    find_lex $P5011, "$submatch"
    push $P5009, $P5011
    set $P5014, $P5009
    goto if468_end900
  if468_else899:
    find_lex $P5012, "$caps"
    set $S5003, _lex_param_0
    find_lex $P5013, "$submatch"
    set $P5012[$S5003], $P5013
    set $P5014, $P5013
  if468_end900:
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "!cursor_init" :subid("cuid_33_1360623830.553") :anon :lex :outer("cuid_80_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 573
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
    if haz_param_14, default914
    box $P5016, 0
    set _lex_param_2, $P5016
  default914:
    if haz_param_15, default915
    nqp_get_sc_object $P5017, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set _lex_param_3, $P5017
  default915:
    if haz_param_16, default916
    nqp_get_sc_object $P5018, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set _lex_param_4, $P5018
  default916:
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P101, $P5001
.annotate 'line', 574
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."CREATE"()
    set $P101, $P5003
    if _lex_param_4 goto unless473_end911 
.annotate 'line', 575
    nqp_get_sc_object $P5005, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 32
    repr_instance_of $P5004, $P5005
    set _lex_param_4, $P5004
    nqp_get_sc_object $P5006, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 32
    setattribute _lex_param_4, $P5006, "$!orig", _lex_param_1
    nqp_get_sc_object $P5007, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 32
    set $S5002, _lex_param_1
    find_encoding $I5001, "ucs4"
    trans_encoding $S5001, $S5002, $I5001
    repr_bind_attr_str _lex_param_4, $P5007, "$!target", $S5001
    nqp_get_sc_object $P5008, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 32
    repr_bind_attr_int _lex_param_4, $P5008, "$!highwater", 0
    nqp_get_sc_object $P5009, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 32
    new $P5010, 'ResizablePMCArray'
    setattribute _lex_param_4, $P5009, "@!highexpect", $P5010
  unless473_end911:
    find_lex $P5011, "$?CLASS"
    setattribute $P101, $P5011, "$!shared", _lex_param_4
    defined $I5002, _lex_param_3
    unless $I5002 goto if474_else912 
.annotate 'line', 584
    find_lex $P5012, "$?CLASS"
    repr_bind_attr_int $P101, $P5012, "$!from", -1
    find_lex $P5013, "$?CLASS"
    set $I5003, _lex_param_3
    repr_bind_attr_int $P101, $P5013, "$!pos", $I5003
    goto if474_end913
  if474_else912:
.annotate 'line', 588
    find_lex $P5014, "$?CLASS"
    set $I5004, _lex_param_2
    repr_bind_attr_int $P101, $P5014, "$!from", $I5004
    find_lex $P5015, "$?CLASS"
    set $I5005, _lex_param_2
    repr_bind_attr_int $P101, $P5015, "$!pos", $I5005
  if474_end913:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "!cursor_start" :subid("cuid_34_1360623830.553") :anon :lex :outer("cuid_80_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 595
    .param pmc _lex_param_0 
    .lex "$new", $P101 
    .lex "$sub", $P102 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
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
    unless_null $P5011, vivi_475917
    set $P5011, $P102
  vivi_475917:
    setattribute $P101, $P5010, "$!regexsub", $P5011
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_obj $P5014, $P5012, $P5013, "$!restart"
    defined $I5001, $P5014
    unless $I5001 goto if476_end919 
.annotate 'line', 600
    find_lex $P5015, "$?CLASS"
    nqp_decontainerize $P5016, _lex_param_0
    find_lex $P5017, "$?CLASS"
    repr_get_attr_int $I5002, $P5016, $P5017, "$!pos"
    repr_bind_attr_int $P101, $P5015, "$!pos", $I5002
    nqp_decontainerize $P5018, _lex_param_0
    find_lex $P5019, "$?CLASS"
    repr_get_attr_obj $P5020, $P5018, $P5019, "$!cstack"
    unless $P5020 goto if477_end921 
    find_lex $P5021, "$?CLASS"
    nqp_decontainerize $P5023, _lex_param_0
    find_lex $P5024, "$?CLASS"
    repr_get_attr_obj $P5025, $P5023, $P5024, "$!cstack"
    repr_clone $P5022, $P5025
    setattribute $P101, $P5021, "$!cstack", $P5022
  if477_end921:
    nqp_decontainerize $P5026, _lex_param_0
    find_lex $P5027, "$?CLASS"
    repr_get_attr_obj $P5028, $P5026, $P5027, "$!shared"
    nqp_get_sc_object $P5029, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 32
    repr_get_attr_str $S5001, $P5028, $P5029, "$!target"
    find_lex $P5030, "$?CLASS"
    nqp_decontainerize $P5031, _lex_param_0
    find_lex $P5032, "$?CLASS"
    repr_get_attr_int $I5003, $P5031, $P5032, "$!from"
    repr_bind_attr_int $P101, $P5030, "$!from", $I5003
    find_lex $P5033, "$?CLASS"
    find_lex $P5034, "$?CLASS"
    nqp_decontainerize $P5036, _lex_param_0
    find_lex $P5037, "$?CLASS"
    repr_get_attr_obj $P5038, $P5036, $P5037, "$!bstack"
    repr_clone $P5035, $P5038
    setattribute $P101, $P5034, "$!bstack", $P5035
    .return ($P101, $S5001, $I5003, $P5033, $P5035, 1)
  if476_end919:
    find_lex $P5039, "$?CLASS"
    repr_bind_attr_int $P101, $P5039, "$!pos", -3
    nqp_decontainerize $P5040, _lex_param_0
    find_lex $P5041, "$?CLASS"
    repr_get_attr_obj $P5042, $P5040, $P5041, "$!shared"
    nqp_get_sc_object $P5043, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 32
    repr_get_attr_str $S5002, $P5042, $P5043, "$!target"
    find_lex $P5044, "$?CLASS"
    nqp_decontainerize $P5045, _lex_param_0
    find_lex $P5046, "$?CLASS"
    repr_get_attr_int $I5004, $P5045, $P5046, "$!pos"
    repr_bind_attr_int $P101, $P5044, "$!from", $I5004
    find_lex $P5047, "$?CLASS"
    find_lex $P5048, "$?CLASS"
    new $P5049, 'ResizableIntegerArray'
    setattribute $P101, $P5048, "$!bstack", $P5049
    .return ($P101, $S5002, $I5004, $P5047, $P5049, 0)
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "!cursor_start_all" :subid("cuid_35_1360623830.553") :anon :lex :outer("cuid_80_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 627
    .param pmc _lex_param_0 
    .lex "$new", $P101 
    .lex "$sub", $P102 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
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
    unless_null $P5011, vivi_478922
    set $P5011, $P102
  vivi_478922:
    setattribute $P101, $P5010, "$!regexsub", $P5011
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_obj $P5014, $P5012, $P5013, "$!restart"
    defined $I5001, $P5014
    unless $I5001 goto if479_else923 
.annotate 'line', 632
    find_lex $P5015, "$?CLASS"
    nqp_decontainerize $P5016, _lex_param_0
    find_lex $P5017, "$?CLASS"
    repr_get_attr_int $I5002, $P5016, $P5017, "$!pos"
    repr_bind_attr_int $P101, $P5015, "$!pos", $I5002
    nqp_decontainerize $P5018, _lex_param_0
    find_lex $P5019, "$?CLASS"
    repr_get_attr_obj $P5020, $P5018, $P5019, "$!cstack"
    unless $P5020 goto if480_end926 
    find_lex $P5021, "$?CLASS"
    nqp_decontainerize $P5023, _lex_param_0
    find_lex $P5024, "$?CLASS"
    repr_get_attr_obj $P5025, $P5023, $P5024, "$!cstack"
    repr_clone $P5022, $P5025
    setattribute $P101, $P5021, "$!cstack", $P5022
  if480_end926:
    find_lex $P5026, "@start_result"
    set $P5026[0], $P101
    find_lex $P5027, "@start_result"
    nqp_decontainerize $P5028, _lex_param_0
    find_lex $P5029, "$?CLASS"
    repr_get_attr_obj $P5030, $P5028, $P5029, "$!shared"
    nqp_get_sc_object $P5031, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 32
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
    goto if479_end924
  if479_else923:
.annotate 'line', 643
    find_lex $P5049, "$?CLASS"
    repr_bind_attr_int $P101, $P5049, "$!pos", -3
    find_lex $P5050, "@start_result"
    set $P5050[0], $P101
    find_lex $P5051, "@start_result"
    nqp_decontainerize $P5052, _lex_param_0
    find_lex $P5053, "$?CLASS"
    repr_get_attr_obj $P5054, $P5052, $P5053, "$!shared"
    nqp_get_sc_object $P5055, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 32
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
  if479_end924:
    .return ($P5070) 
.end
.HLL "nqp"
.namespace []
.sub "!cursor_start_cur" :subid("cuid_36_1360623830.553") :anon :lex :outer("cuid_80_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 656
    .param pmc _lex_param_0 
    .lex "$new", $P101 
    .lex "$sub", $P102 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
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
    unless_null $P5011, vivi_481927
    set $P5011, $P102
  vivi_481927:
    setattribute $P101, $P5010, "$!regexsub", $P5011
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_obj $P5014, $P5012, $P5013, "$!restart"
    defined $I5001, $P5014
    unless $I5001 goto if482_end929 
.annotate 'line', 661
    box $P5015, "!cursor_start_cur cannot restart a cursor"
    die $P5015
  if482_end929:
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
.sub "!cursor_start_subcapture" :subid("cuid_37_1360623830.553") :anon :lex :outer("cuid_80_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 670
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$new", $P101 
    .lex "self", _lex_param_0 
    .lex "$from", _lex_param_1 
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
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
.sub "!cursor_capture" :subid("cuid_38_1360623830.553") :anon :lex :outer("cuid_80_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 678
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
    if $I5001 goto unless483_end931 
    nqp_decontainerize $P5007, _lex_param_0
    find_lex $P5008, "$?CLASS"
    new $P5009, 'ResizablePMCArray'
    repr_bind_attr_obj $P5007, $P5008, "$!cstack", $P5009
  unless483_end931:
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
.sub "!cursor_push_cstack" :subid("cuid_39_1360623830.553") :anon :lex :outer("cuid_80_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 690
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$capture", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    find_lex $P5002, "$?CLASS"
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!cstack"
    defined $I5001, $P5003
    if $I5001 goto unless484_end933 
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    new $P5006, 'ResizablePMCArray'
    repr_bind_attr_obj $P5004, $P5005, "$!cstack", $P5006
  unless484_end933:
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
.sub "!cursor_pass" :subid("cuid_40_1360623830.553") :anon :lex :outer("cuid_80_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 697
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
    if haz_param_17, default940
    nqp_get_sc_object $P5017, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set _lex_param_2, $P5017
  default940:
    if haz_param_18, default941
    nqp_get_sc_object $P5018, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set _lex_param_3, $P5018
  default941:
    nqp_decontainerize $P5001, _lex_param_0
    find_lex $P5002, "$?CLASS"
    find_lex $P5003, "$pass_mark"
    repr_bind_attr_obj $P5001, $P5002, "$!match", $P5003
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_bind_attr_int $P5004, $P5005, "$!pos", _lex_param_1
    unless _lex_param_3 goto if485_end935 
    nqp_decontainerize $P5006, _lex_param_0
    find_lex $P5007, "$?CLASS"
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_obj $P5010, $P5008, $P5009, "$!regexsub"
    repr_bind_attr_obj $P5006, $P5007, "$!restart", $P5010
  if485_end935:
    if _lex_param_3 goto unless486_end937 
    nqp_decontainerize $P5011, _lex_param_0
    find_lex $P5012, "$?CLASS"
    null $P5013
    repr_bind_attr_obj $P5011, $P5012, "$!bstack", $P5013
  unless486_end937:
    set $P5016, _lex_param_2
    unless _lex_param_2 goto if487_end939 
.annotate 'line', 704
    nqp_decontainerize $P5014, _lex_param_0
    $P5015 = $P5014."!reduce"(_lex_param_2)
    set $P5016, $P5015
  if487_end939:
    .return ($P5016) 
.end
.HLL "nqp"
.namespace []
.sub "!cursor_fail" :subid("cuid_41_1360623830.553") :anon :lex :outer("cuid_80_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 707
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
.sub "!cursor_pos" :subid("cuid_42_1360623830.553") :anon :lex :outer("cuid_80_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 713
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
.sub "!cursor_next" :subid("cuid_43_1360623830.553") :anon :lex :outer("cuid_80_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 717
    .param pmc _lex_param_0 
    .const 'Sub' $P5012 = 'cuid_99_1360623830.553' 
    capture_lex $P5012 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    find_lex $P5002, "$?CLASS"
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!restart"
    defined $I5001, $P5003
    unless $I5001 goto if488_else942 
.annotate 'line', 718
.annotate 'line', 719
    nqp_decontainerize $P5007, _lex_param_0
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!restart"
    $P5008 = $P5006($P5007)
    set $P5011, $P5008
    goto if488_end943
  if488_else942:
    .const 'Sub' $P5009 = 'cuid_99_1360623830.553' 
    capture_lex $P5009
    $P5010 = $P5009()
    set $P5011, $P5010
  if488_end943:
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_99_1360623830.553") :anon :lex :outer("cuid_43_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 721
    .lex "$cur", $P101 
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P101, $P5001
.annotate 'line', 722
    find_lex $P5003, "self"
    nqp_decontainerize $P5002, $P5003
    $P5004 = $P5002."!cursor_start_cur"()
    set $P101, $P5004
.annotate 'line', 723
    $P101."!cursor_fail"()
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "!cursor_more" :subid("cuid_44_1360623830.553") :anon :lex :outer("cuid_80_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 728
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy :named 
    .lex "$new", $P101 
    .lex "self", _lex_param_0 
    .lex "%opts", _lex_param_1 
    .local pmc fb_tmp_131 
    .local pmc fb_tmp_132 
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P101, $P5001
    root_new $P102, ['parrot';'Continuation']
    set_label $P102, lexotic_944
    .lex "RETURN", $P102
    set fb_tmp_131, _lex_param_1
    repr_defined $I5001, fb_tmp_131
    unless $I5001 goto if490_else948 
    set $P5002, fb_tmp_131["ex"]
    set $P5004, $P5002
    goto if490_end949
  if490_else948:
    null $P5003
    set $P5004, $P5003
  if490_end949:
    unless_null $P5004, vivi_491950
    nqp_get_sc_object $P5005, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5004, $P5005
  vivi_491950:
    unless $P5004 goto if489_end947 
.annotate 'line', 729
    nqp_decontainerize $P5007, _lex_param_0
    $P5008 = $P5007."!cursor_next"()
    find_lex $P5006, "RETURN"
    $P5009 = $P5006($P5008)
  if489_end947:
.annotate 'line', 730
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
    set fb_tmp_132, _lex_param_1
    repr_defined $I5002, fb_tmp_132
    unless $I5002 goto if494_else955 
    set $P5018, fb_tmp_132["ov"]
    set $P5020, $P5018
    goto if494_end956
  if494_else955:
    null $P5019
    set $P5020, $P5019
  if494_end956:
    unless_null $P5020, vivi_495957
    nqp_get_sc_object $P5021, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5020, $P5021
  vivi_495957:
    set $P5026, $P5020
    if $P5020 goto unless493_end954 
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
  unless493_end954:
    unless $P5026 goto if492_else951 
    nqp_decontainerize $P5028, _lex_param_0
    find_lex $P5029, "$?CLASS"
    repr_get_attr_int $I5006, $P5028, $P5029, "$!from"
    set $N5004, $I5006
    set $N5005, 1
    add $N5003, $N5004, $N5005
    box $P5033, $N5003
    set $P5032, $P5033
    goto if492_end952
  if492_else951:
    nqp_decontainerize $P5030, _lex_param_0
    find_lex $P5031, "$?CLASS"
    repr_get_attr_int $I5007, $P5030, $P5031, "$!pos"
    box $P5034, $I5007
    set $P5032, $P5034
  if492_end952:
    set $I5008, $P5032
    repr_bind_attr_int $P101, $P5017, "$!pos", $I5008
.annotate 'line', 735
    nqp_decontainerize $P5035, _lex_param_0
    find_lex $P5036, "$?CLASS"
    repr_get_attr_obj $P5037, $P5035, $P5036, "$!regexsub"
    $P5038 = $P5037($P101)
    goto lexotic_945
  lexotic_944:
    .get_results ($P5038)
  lexotic_945:
    .return ($P5038) 
.end
.HLL "nqp"
.namespace []
.sub "!reduce" :subid("cuid_45_1360623830.553") :anon :lex :outer("cuid_80_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 738
    .param pmc _lex_param_0 
    .param string _lex_param_1 
    .lex "$actions", $P101 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P101, $P5001
    find_dynamic_lex $P5002, "$*ACTIONS"
    set $P101, $P5002
    isnull $I5002, $P101
    not $I5001, $I5002
    set $I5004, $I5001
    unless $I5001 goto if497_end961 
    can $I5003, $P101, _lex_param_1
    set $I5004, $I5003
  if497_end961:
    box $P5008, $I5004
    set $P5007, $P5008
    unless $I5004 goto if496_end959 
.annotate 'line', 740
    nqp_decontainerize $P5004, _lex_param_0
    $P5005 = $P5004."MATCH"()
    find_method $P5003, $P101, _lex_param_1
    $P5006 = $P5003($P101, $P5005)
    set $P5007, $P5006
  if496_end959:
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "!reduce_with_match" :subid("cuid_46_1360623830.553") :anon :lex :outer("cuid_80_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 744
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .lex "$actions", $P101 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    .lex "$key", _lex_param_2 
    .lex "$match", _lex_param_3 
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P101, $P5001
    find_dynamic_lex $P5002, "$*ACTIONS"
    set $P101, $P5002
    isnull $I5002, $P101
    not $I5001, $I5002
    set $I5004, $I5001
    unless $I5001 goto if499_end965 
    set $S5001, _lex_param_1
    can $I5003, $P101, $S5001
    set $I5004, $I5003
  if499_end965:
    box $P5006, $I5004
    set $P5005, $P5006
    unless $I5004 goto if498_end963 
.annotate 'line', 746
    set $S5002, _lex_param_1
    find_method $P5003, $P101, $S5002
    $P5004 = $P5003($P101, _lex_param_3, _lex_param_2)
    set $P5005, $P5004
  if498_end963:
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "!shared" :subid("cuid_47_1360623830.553") :anon :lex :outer("cuid_80_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 750
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    find_lex $P5002, "$?CLASS"
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!shared"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "!protoregex" :subid("cuid_48_1360623830.553") :anon :lex :outer("cuid_80_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 753
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5042 = 'cuid_100_1360623830.553' 
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
    .local pmc fb_tmp_133 
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P102, $P5002
    new $P5003, 'ResizablePMCArray'
    set $P103, $P5003
    set $I101, 0
    new $P5004, 'ResizablePMCArray'
    set $P104, $P5004
    nqp_get_sc_object $P5005, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P105, $P5005
    nqp_get_sc_object $P5006, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P106, $P5006
    nqp_decontainerize $P5007, _lex_param_0
    find_lex $P5008, "$?CLASS"
    repr_get_attr_obj $P5009, $P5007, $P5008, "$!shared"
    set $P101, $P5009
.annotate 'line', 756
    nqp_decontainerize $P5011, _lex_param_0
    get_how $P5010, $P5011
    nqp_decontainerize $P5012, _lex_param_0
    .const 'Sub' $P5014 = 'cuid_100_1360623830.553' 
    capture_lex $P5014
    newclosure $P5013, $P5014
    $P5015 = $P5010."cache"($P5012, _lex_param_1, $P5013)
    set $P102, $P5015
.annotate 'line', 757
    nqp_get_sc_object $P5016, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 32
    repr_get_attr_str $S5001, $P101, $P5016, "$!target"
    nqp_decontainerize $P5017, _lex_param_0
    find_lex $P5018, "$?CLASS"
    repr_get_attr_int $I5001, $P5017, $P5018, "$!pos"
    $P5019 = $P102."run"($S5001, $I5001)
    set $P103, $P5019
    nqp_get_sc_object $P5020, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 32
    repr_get_attr_int $I5002, $P101, $P5020, "$!highwater"
    set $I101, $I5002
    nqp_decontainerize $P5021, _lex_param_0
    find_lex $P5022, "$?CLASS"
    repr_get_attr_int $I5004, $P5021, $P5022, "$!pos"
    set $N5001, $I5004
    set $N5002, $I101
    isgt $I5003, $N5001, $N5002
    unless $I5003 goto if500_end967 
.annotate 'line', 761
    nqp_get_sc_object $P5023, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 32
    nqp_decontainerize $P5024, _lex_param_0
    find_lex $P5025, "$?CLASS"
    repr_get_attr_int $I5005, $P5024, $P5025, "$!pos"
    repr_bind_attr_int $P101, $P5023, "$!highwater", $I5005
  if500_end967:
.annotate 'line', 766
    $P5026 = $P102."states"()
    set fb_tmp_133, $P5026
    repr_defined $I5006, fb_tmp_133
    unless $I5006 goto if501_else968 
    set $P5027, fb_tmp_133[0]
    set $P5029, $P5027
    goto if501_end969
  if501_else968:
    null $P5028
    set $P5029, $P5028
  if501_end969:
    unless_null $P5029, vivi_502970
    nqp_get_sc_object $P5030, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5029, $P5030
  vivi_502970:
    set $P104, $P5029
  while503_test971:
    set $P5038, $P103
    unless $P103 goto while503_done975 
  while503_redo973:
.annotate 'line', 769
    pop $I5007, $P103
    set $P5031, $P104[$I5007]
    set $P106, $P5031
.annotate 'line', 772
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
    unless $I5008 goto if504_end977 
    find_lex $P5035, "@EMPTY"
    set $P103, $P5035
    set $P5036, $P103
  if504_end977:
    set $P5038, $P5036
    goto while503_test971 
  while503_done975:
    set $P5039, $P105
    defined $I5010, $P5039
    if $I5010, defor978
.annotate 'line', 775
    nqp_decontainerize $P5040, _lex_param_0
    $P5041 = $P5040."!cursor_start_cur"()
    set $P5039, $P5041
  defor978:
    .return ($P5039) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_100_1360623830.553") :anon :lex :outer("cuid_48_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 756

    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    find_lex $P5003, "$name"
    $P5004 = $P5001."!protoregex_nfa"($P5003)
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "!protoregex_nfa" :subid("cuid_49_1360623830.553") :anon :lex :outer("cuid_80_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 778
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5032 = 'cuid_101_1360623830.553' 
    capture_lex $P5032 
    .const 'Sub' $P5032 = 'cuid_102_1360623830.553' 
    capture_lex $P5032 
    .lex "%protorx", $P101 
    .lex "$nfa", $P102 
    .lex "@fates", $P103 
    .lex "$start", $I101 
    .lex "$fate", $I102 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    .local pmc fb_tmp_134 
    .local pmc fb_tmp_135 
    .local pmc fb_tmp_136 
    new $P5001, 'Hash'
    set $P101, $P5001
    nqp_get_sc_object $P5002, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P102, $P5002
    new $P5003, 'ResizablePMCArray'
    set $P103, $P5003
    set $I101, 0
    set $I102, 0
.annotate 'line', 779
    nqp_decontainerize $P5005, _lex_param_0
    get_how $P5004, $P5005
    nqp_decontainerize $P5006, _lex_param_0
    .const 'Sub' $P5008 = 'cuid_101_1360623830.553' 
    capture_lex $P5008
    newclosure $P5007, $P5008
    $P5009 = $P5004."cache"($P5006, "!protoregex_table", $P5007)
    set $P101, $P5009
.annotate 'line', 780
    nqp_get_sc_object $P5012, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 0
    nqp_get_package_through_who $P5011, $P5012, "QRegex"
    get_who $P5010, $P5011
    set fb_tmp_134, $P5010
    repr_defined $I5001, fb_tmp_134
    unless $I5001 goto if505_else979 
    set $P5013, fb_tmp_134["NFA"]
    set $P5015, $P5013
    goto if505_end980
  if505_else979:
    null $P5014
    set $P5015, $P5014
  if505_end980:
    unless_null $P5015, vivi_506981
    nqp_get_sc_object $P5016, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5015, $P5016
  vivi_506981:
    $P5017 = $P5015."new"()
    set $P102, $P5017
.annotate 'line', 781
    $P5018 = $P102."states"()
    set fb_tmp_135, $P5018
    repr_defined $I5002, fb_tmp_135
    unless $I5002 goto if507_else982 
    set $P5019, fb_tmp_135[0]
    set $P5021, $P5019
    goto if507_end983
  if507_else982:
    null $P5020
    set $P5021, $P5020
  if507_end983:
    unless_null $P5021, vivi_508984
    nqp_get_sc_object $P5022, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5021, $P5022
  vivi_508984:
    set $P103, $P5021
    set $I101, 1
    set $I102, 0
    set $S5001, _lex_param_1
    exists $I5003, $P101[$S5001]
    unless $I5003 goto if509_end986 
.annotate 'line', 784
    set fb_tmp_136, $P101
    repr_defined $I5004, fb_tmp_136
    unless $I5004 goto if510_else987 
    set $S5002, _lex_param_1
    set $P5026, fb_tmp_136[$S5002]
    set $P5028, $P5026
    goto if510_end988
  if510_else987:
    null $P5027
    set $P5028, $P5027
  if510_end988:
    unless_null $P5028, vivi_511989
    nqp_get_sc_object $P5029, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5028, $P5029
  vivi_511989:
    set $P5023, $P5028
    iter $P5025, $P5028
  for_next990:
    unless $P5025, for_done992
    shift $P5031, $P5025
  for_redo991:
    .const 'Sub' $P5030 = 'cuid_102_1360623830.553' 
    capture_lex $P5030
    $P5023 = $P5030($P5031)
    goto for_next990
  for_done992:
  if509_end986:
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_101_1360623830.553") :anon :lex :outer("cuid_49_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 779

    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    $P5003 = $P5001."!protoregex_table"()
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_102_1360623830.553") :anon :lex :outer("cuid_49_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 785
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
.annotate 'line', 788
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
.sub "!protoregex_table" :subid("cuid_50_1360623830.553") :anon :lex :outer("cuid_80_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 794
    .param pmc _lex_param_0 
    .const 'Sub' $P5011 = 'cuid_104_1360623830.553' 
    capture_lex $P5011 
    .lex "%protorx", $P101 
    .lex "self", _lex_param_0 
    new $P5001, 'Hash'
    set $P101, $P5001
.annotate 'line', 796
    nqp_decontainerize $P5006, _lex_param_0
    get_how $P5005, $P5006
    nqp_decontainerize $P5007, _lex_param_0
    $P5008 = $P5005."methods"($P5007)
    set $P5002, $P5008
    iter $P5004, $P5008
  for_next1000:
    unless $P5004, for_done1002
    shift $P5010, $P5004
  for_redo1001:
    .const 'Sub' $P5009 = 'cuid_104_1360623830.553' 
    capture_lex $P5009
    $P5002 = $P5009($P5010)
    goto for_next1000
  for_done1002:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_104_1360623830.553") :anon :lex :outer("cuid_50_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 796
    .param pmc _lex_param_0 
    .const 'Sub' $P5005 = 'cuid_103_1360623830.553' 
    capture_lex $P5005 
    .lex "$methname", $S101 
    .lex "$sympos", $I101 
    .lex "$meth", _lex_param_0 
    set $S101, ""
    set $I101, 0
    set $S5001, _lex_param_0
    set $S101, $S5001
    index $I5001, $S101, ":sym<", 0
    set $I101, $I5001
    set $N5001, $I101
    set $N5002, 0
    isgt $I5002, $N5001, $N5002
    box $P5004, $I5002
    set $P5003, $P5004
    unless $I5002 goto if512_end994 
    .const 'Sub' $P5001 = 'cuid_103_1360623830.553' 
    capture_lex $P5001
    $P5002 = $P5001()
    set $P5003, $P5002
  if512_end994:
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_103_1360623830.553") :anon :lex :outer("cuid_104_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 799
    .lex "$prefix", $S101 
    .local pmc fb_tmp_137 
    set $S101, ""
    find_lex $S5002, "$methname"
    find_lex $I5001, "$sympos"
    substr $S5001, $S5002, 0, $I5001
    set $S101, $S5001
    find_lex $P5001, "%protorx"
    exists $I5002, $P5001[$S101]
    if $I5002 goto unless513_end996 
    find_lex $P5002, "%protorx"
    new $P5003, 'ResizablePMCArray'
    set $P5002[$S101], $P5003
  unless513_end996:
    find_lex $P5004, "%protorx"
    set fb_tmp_137, $P5004
    repr_defined $I5003, fb_tmp_137
    unless $I5003 goto if514_else997 
    set $P5005, fb_tmp_137[$S101]
    set $P5007, $P5005
    goto if514_end998
  if514_else997:
    null $P5006
    set $P5007, $P5006
  if514_end998:
    unless_null $P5007, vivi_515999
    nqp_get_sc_object $P5008, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5007, $P5008
  vivi_515999:
    find_lex $S5003, "$methname"
    box $P5009, $S5003
    push $P5007, $P5009
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "!alt" :subid("cuid_51_1360623830.553") :anon :lex :outer("cuid_80_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 808
    .param pmc _lex_param_0 
    .param int _lex_param_1 
    .param string _lex_param_2 
    .param pmc _lex_param_3 :optional 
    .param int haz_param_19 :opt_flag 
    .const 'Sub' $P5023 = 'cuid_105_1360623830.553' 
    capture_lex $P5023 
    .lex "$shared", $P101 
    .lex "$highwater", $I101 
    .lex "$nfa", $P102 
    .lex "self", _lex_param_0 
    .lex "$pos", _lex_param_1 
    .lex "$name", _lex_param_2 
    .lex "@labels", _lex_param_3 
    if haz_param_19, default1005
    new $P5022, 'ResizablePMCArray'
    set _lex_param_3, $P5022
  default1005:
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P101, $P5001
    set $I101, 0
    nqp_get_sc_object $P5002, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P102, $P5002
    nqp_decontainerize $P5003, _lex_param_0
    find_lex $P5004, "$?CLASS"
    repr_get_attr_obj $P5005, $P5003, $P5004, "$!shared"
    set $P101, $P5005
    nqp_get_sc_object $P5006, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 32
    repr_get_attr_int $I5001, $P101, $P5006, "$!highwater"
    set $I101, $I5001
    set $N5001, _lex_param_1
    set $N5002, $I101
    isgt $I5002, $N5001, $N5002
    unless $I5002 goto if516_end1004 
.annotate 'line', 812
    nqp_get_sc_object $P5007, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 32
    repr_bind_attr_int $P101, $P5007, "$!highwater", _lex_param_1
  if516_end1004:
.annotate 'line', 817
    nqp_decontainerize $P5009, _lex_param_0
    get_how $P5008, $P5009
    nqp_decontainerize $P5010, _lex_param_0
    .const 'Sub' $P5012 = 'cuid_105_1360623830.553' 
    capture_lex $P5012
    newclosure $P5011, $P5012
    $P5013 = $P5008."cache"($P5010, _lex_param_2, $P5011)
    set $P102, $P5013
.annotate 'line', 818
    nqp_get_sc_object $P5014, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 32
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
.sub "" :subid("cuid_105_1360623830.553") :anon :lex :outer("cuid_51_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 817

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
.sub "!alt_nfa" :subid("cuid_52_1360623830.553") :anon :lex :outer("cuid_80_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 821
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param string _lex_param_2 
    .const 'Sub' $P5022 = 'cuid_106_1360623830.553' 
    capture_lex $P5022 
    .lex "$nfa", $P101 
    .lex "@fates", $P102 
    .lex "$start", $I101 
    .lex "$fate", $I102 
    .lex "self", _lex_param_0 
    .lex "$regex", _lex_param_1 
    .lex "$name", _lex_param_2 
    .local pmc fb_tmp_138 
    .local pmc fb_tmp_139 
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P101, $P5001
    new $P5002, 'ResizablePMCArray'
    set $P102, $P5002
    set $I101, 0
    set $I102, 0
.annotate 'line', 822
    nqp_get_sc_object $P5005, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 0
    nqp_get_package_through_who $P5004, $P5005, "QRegex"
    get_who $P5003, $P5004
    set fb_tmp_138, $P5003
    repr_defined $I5001, fb_tmp_138
    unless $I5001 goto if517_else1006 
    set $P5006, fb_tmp_138["NFA"]
    set $P5008, $P5006
    goto if517_end1007
  if517_else1006:
    null $P5007
    set $P5008, $P5007
  if517_end1007:
    unless_null $P5008, vivi_5181008
    nqp_get_sc_object $P5009, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5008, $P5009
  vivi_5181008:
    $P5010 = $P5008."new"()
    set $P101, $P5010
.annotate 'line', 823
    $P5011 = $P101."states"()
    set fb_tmp_139, $P5011
    repr_defined $I5002, fb_tmp_139
    unless $I5002 goto if519_else1009 
    set $P5012, fb_tmp_139[0]
    set $P5014, $P5012
    goto if519_end1010
  if519_else1009:
    null $P5013
    set $P5014, $P5013
  if519_end1010:
    unless_null $P5014, vivi_5201011
    nqp_get_sc_object $P5015, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5014, $P5015
  vivi_5201011:
    set $P102, $P5014
    set $I101, 1
    set $I102, 0
.annotate 'line', 826
    $P5019 = _lex_param_1."ALT_NFA"(_lex_param_2)
    set $P5016, $P5019
    iter $P5018, $P5019
  for_next1012:
    unless $P5018, for_done1014
    shift $P5021, $P5018
  for_redo1013:
    .const 'Sub' $P5020 = 'cuid_106_1360623830.553' 
    capture_lex $P5020
    $P5016 = $P5020($P5021)
    goto for_next1012
  for_done1014:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_106_1360623830.553") :anon :lex :outer("cuid_52_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 826
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    .local pmc tmp_6 
    find_lex $P5001, "@fates"
    find_lex $I5001, "$fate"
    find_lex $I5002, "$fate"
    box $P5002, $I5002
    set $P5001[$I5001], $P5002
.annotate 'line', 828
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
.sub "!precompute_nfas" :subid("cuid_53_1360623830.553") :anon :lex :outer("cuid_80_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 834
    .param pmc _lex_param_0 
    .const 'Sub' $P5023 = 'cuid_109_1360623830.553' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_110_1360623830.553' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_112_1360623830.553' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_114_1360623830.553' 
    capture_lex $P5023 
    .lex "%protorx", $P101 
    .lex "&precomp_alt_nfas", $P102 
    .lex "self", _lex_param_0 
    new $P5001, 'Hash'
    set $P101, $P5001
    .const 'Sub' $P5002 = 'cuid_109_1360623830.553' 
    capture_lex $P5002
    set $P102, $P5002
.annotate 'line', 836
    nqp_decontainerize $P5004, _lex_param_0
    get_how $P5003, $P5004
    nqp_decontainerize $P5005, _lex_param_0
    .const 'Sub' $P5007 = 'cuid_110_1360623830.553' 
    capture_lex $P5007
    newclosure $P5006, $P5007
    $P5008 = $P5003."cache"($P5005, "!protoregex_table", $P5006)
    set $P101, $P5008
    set $P5009, $P101
    iter $P5011, $P101
  for_next1020:
    unless $P5011, for_done1022
    shift $P5013, $P5011
  for_redo1021:
    .const 'Sub' $P5012 = 'cuid_112_1360623830.553' 
    capture_lex $P5012
    $P5009 = $P5012($P5013)
    goto for_next1020
  for_done1022:
.annotate 'line', 849
    nqp_decontainerize $P5018, _lex_param_0
    get_how $P5017, $P5018
    nqp_decontainerize $P5019, _lex_param_0
    $P5020 = $P5017."methods"($P5019)
    set $P5014, $P5020
    iter $P5016, $P5020
  for_next1028:
    unless $P5016, for_done1030
    shift $P5022, $P5016
  for_redo1029:
    .const 'Sub' $P5021 = 'cuid_114_1360623830.553' 
    capture_lex $P5021
    $P5014 = $P5021($P5022)
    goto for_next1028
  for_done1030:
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "precomp_alt_nfas" :subid("cuid_109_1360623830.553") :anon :lex :outer("cuid_53_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 842
    .param pmc _lex_param_0 
    .const 'Sub' $P5009 = 'cuid_108_1360623830.553' 
    capture_lex $P5009 
    .lex "$meth", _lex_param_0 
    can $I5001, _lex_param_0, "ALT_NFAS"
    box $P5008, $I5001
    set $P5007, $P5008
    unless $I5001 goto if521_end1016 
.annotate 'line', 843
.annotate 'line', 844
    $P5004 = _lex_param_0."ALT_NFAS"()
    set $P5001, $P5004
    iter $P5003, $P5004
  for_next1017:
    unless $P5003, for_done1019
    shift $P5006, $P5003
  for_redo1018:
    .const 'Sub' $P5005 = 'cuid_108_1360623830.553' 
    capture_lex $P5005
    $P5001 = $P5005($P5006)
    goto for_next1017
  for_done1019:
    set $P5007, $P5001
  if521_end1016:
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_108_1360623830.553") :anon :lex :outer("cuid_109_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 844
    .param pmc _lex_param_0 
    .const 'Sub' $P5009 = 'cuid_107_1360623830.553' 
    capture_lex $P5009 
    .lex "$name", _lex_param_0 
.annotate 'line', 845
    find_lex $P5003, "self"
    nqp_decontainerize $P5002, $P5003
    get_how $P5001, $P5002
    find_lex $P5005, "self"
    nqp_decontainerize $P5004, $P5005
    .const 'Sub' $P5007 = 'cuid_107_1360623830.553' 
    capture_lex $P5007
    newclosure $P5006, $P5007
    $P5008 = $P5001."cache"($P5004, _lex_param_0, $P5006)
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_107_1360623830.553") :anon :lex :outer("cuid_108_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 845

    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    find_lex $P5003, "$meth"
    find_lex $P5004, "$name"
    $P5005 = $P5001."!alt_nfa"($P5003, $P5004)
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_110_1360623830.553") :anon :lex :outer("cuid_53_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 836

    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    $P5003 = $P5001."!protoregex_table"()
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_112_1360623830.553") :anon :lex :outer("cuid_53_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 837
    .param pmc _lex_param_0 
    .const 'Sub' $P5010 = 'cuid_111_1360623830.553' 
    capture_lex $P5010 
    .lex "$_", _lex_param_0 
.annotate 'line', 838
    find_lex $P5003, "self"
    nqp_decontainerize $P5002, $P5003
    get_how $P5001, $P5002
    find_lex $P5005, "self"
    nqp_decontainerize $P5004, $P5005
    $P5006 = _lex_param_0."key"()
    .const 'Sub' $P5008 = 'cuid_111_1360623830.553' 
    capture_lex $P5008
    newclosure $P5007, $P5008
    $P5009 = $P5001."cache"($P5004, $P5006, $P5007)
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_111_1360623830.553") :anon :lex :outer("cuid_112_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 838

    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    find_lex $P5003, "$_"
    $P5004 = $P5003."key"()
    $P5005 = $P5001."!protoregex_nfa"($P5004)
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_114_1360623830.553") :anon :lex :outer("cuid_53_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 849
    .param pmc _lex_param_0 
    .const 'Sub' $P5009 = 'cuid_113_1360623830.553' 
    capture_lex $P5009 
    .lex "$meth", _lex_param_0 
.annotate 'line', 850
    "&precomp_alt_nfas"(_lex_param_0)
    can $I5001, _lex_param_0, "NESTED_CODES"
    box $P5008, $I5001
    set $P5007, $P5008
    unless $I5001 goto if522_end1024 
.annotate 'line', 851
.annotate 'line', 852
    $P5004 = _lex_param_0."NESTED_CODES"()
    set $P5001, $P5004
    iter $P5003, $P5004
  for_next1025:
    unless $P5003, for_done1027
    shift $P5006, $P5003
  for_redo1026:
    .const 'Sub' $P5005 = 'cuid_113_1360623830.553' 
    capture_lex $P5005
    $P5001 = $P5005($P5006)
    goto for_next1025
  for_done1027:
    set $P5007, $P5001
  if522_end1024:
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_113_1360623830.553") :anon :lex :outer("cuid_114_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 852
    .param pmc _lex_param_0 
    .lex "$code", _lex_param_0 
.annotate 'line', 853
    $P5001 = "&precomp_alt_nfas"(_lex_param_0)
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "!dba" :subid("cuid_54_1360623830.553") :anon :lex :outer("cuid_80_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 859
    .param pmc _lex_param_0 
    .param int _lex_param_1 
    .param string _lex_param_2 
    .lex "$shared", $P101 
    .lex "$highwater", $I101 
    .lex "$highexpect", $P102 
    .lex "self", _lex_param_0 
    .lex "$pos", _lex_param_1 
    .lex "$dba", _lex_param_2 
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P101, $P5001
    set $I101, 0
    nqp_get_sc_object $P5002, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P102, $P5002
    nqp_decontainerize $P5003, _lex_param_0
    find_lex $P5004, "$?CLASS"
    repr_get_attr_obj $P5005, $P5003, $P5004, "$!shared"
    set $P101, $P5005
    nqp_get_sc_object $P5006, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 32
    repr_get_attr_int $I5001, $P101, $P5006, "$!highwater"
    set $I101, $I5001
    set $N5001, _lex_param_1
    set $N5002, $I101
    isge $I5002, $N5001, $N5002
    box $P5011, $I5002
    set $P5010, $P5011
    unless $I5002 goto if523_end1032 
.annotate 'line', 863
    nqp_get_sc_object $P5008, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 32
    getattribute $P5007, $P101, $P5008, "@!highexpect"
    set $P102, $P5007
    set $N5003, _lex_param_1
    set $N5004, $I101
    isgt $I5003, $N5003, $N5004
    unless $I5003 goto if524_end1034 
.annotate 'line', 865
    assign $P102, 0
    nqp_get_sc_object $P5009, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 32
    repr_bind_attr_int $P101, $P5009, "$!highwater", _lex_param_1
  if524_end1034:
    push $P102, _lex_param_2
    set $P5010, $P102
  if523_end1032:
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "!highwater" :subid("cuid_55_1360623830.553") :anon :lex :outer("cuid_80_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 873
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    find_lex $P5002, "$?CLASS"
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!shared"
    nqp_get_sc_object $P5004, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 32
    repr_get_attr_int $I5001, $P5003, $P5004, "$!highwater"
    .return ($I5001) 
.end
.HLL "nqp"
.namespace []
.sub "!highexpect" :subid("cuid_56_1360623830.553") :anon :lex :outer("cuid_80_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 877
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5002, _lex_param_0
    find_lex $P5003, "$?CLASS"
    repr_get_attr_obj $P5004, $P5002, $P5003, "$!shared"
    nqp_get_sc_object $P5005, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 32
    getattribute $P5001, $P5004, $P5005, "@!highexpect"
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "!fresh_highexpect" :subid("cuid_57_1360623830.553") :anon :lex :outer("cuid_80_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 881
    .param pmc _lex_param_0 
    .lex "@old", $P101 
    .lex "self", _lex_param_0 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    nqp_decontainerize $P5003, _lex_param_0
    find_lex $P5004, "$?CLASS"
    repr_get_attr_obj $P5005, $P5003, $P5004, "$!shared"
    nqp_get_sc_object $P5006, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 32
    getattribute $P5002, $P5005, $P5006, "@!highexpect"
    set $P101, $P5002
    nqp_decontainerize $P5007, _lex_param_0
    find_lex $P5008, "$?CLASS"
    repr_get_attr_obj $P5009, $P5007, $P5008, "$!shared"
    nqp_get_sc_object $P5010, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 32
    new $P5011, 'ResizablePMCArray'
    setattribute $P5009, $P5010, "@!highexpect", $P5011
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "!set_highexpect" :subid("cuid_58_1360623830.553") :anon :lex :outer("cuid_80_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 887
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "@highexpect", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    find_lex $P5002, "$?CLASS"
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!shared"
    nqp_get_sc_object $P5004, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 32
    setattribute $P5003, $P5004, "@!highexpect", _lex_param_1
    .return (_lex_param_1) 
.end
.HLL "nqp"
.namespace []
.sub "!clear_highwater" :subid("cuid_59_1360623830.553") :anon :lex :outer("cuid_80_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 891
    .param pmc _lex_param_0 
    .lex "$highexpect", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P101, $P5001
    nqp_decontainerize $P5003, _lex_param_0
    find_lex $P5004, "$?CLASS"
    repr_get_attr_obj $P5005, $P5003, $P5004, "$!shared"
    nqp_get_sc_object $P5006, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 32
    getattribute $P5002, $P5005, $P5006, "@!highexpect"
    set $P101, $P5002
    assign $P101, 0
    nqp_decontainerize $P5007, _lex_param_0
    find_lex $P5008, "$?CLASS"
    repr_get_attr_obj $P5009, $P5007, $P5008, "$!shared"
    nqp_get_sc_object $P5010, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 32
    repr_bind_attr_int $P5009, $P5010, "$!highwater", -1
    .return (-1) 
.end
.HLL "nqp"
.namespace []
.sub "!BACKREF" :subid("cuid_60_1360623830.553") :anon :lex :outer("cuid_80_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 897
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5036 = 'cuid_115_1360623830.553' 
    capture_lex $P5036 
    .lex "$cur", $P101 
    .lex "$n", $I101 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    .local pmc fb_tmp_140 
    .local pmc fb_tmp_141 
    .local pmc tmp_7 
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P101, $P5001
    set $I101, 0
.annotate 'line', 898
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start_cur"()
    set $P101, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!cstack"
    unless $P5006 goto if525_else1035 
    nqp_decontainerize $P5007, _lex_param_0
    find_lex $P5008, "$?CLASS"
    repr_get_attr_obj $P5009, $P5007, $P5008, "$!cstack"
    elements $I5001, $P5009
    set $N5002, $I5001
    set $N5003, 1
    sub $N5001, $N5002, $N5003
    box $P5011, $N5001
    set $P5010, $P5011
    goto if525_end1036
  if525_else1035:
    box $P5012, -1
    set $P5010, $P5012
  if525_end1036:
    set $I5002, $P5010
    set $I101, $I5002
    new $P5032, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5032, while526_handlers1040
    push_eh $P5032
  while526_test1037:
    set $N5004, $I101
    set $N5005, 0
    isge $I5003, $N5004, $N5005
    set $I5009, $I5003
    unless $I5003 goto if527_end1043 
    nqp_decontainerize $P5014, _lex_param_0
    find_lex $P5015, "$?CLASS"
    repr_get_attr_obj $P5016, $P5014, $P5015, "$!cstack"
    set fb_tmp_140, $P5016
    repr_defined $I5005, fb_tmp_140
    unless $I5005 goto if529_else1046 
    set $P5017, fb_tmp_140[$I101]
    set $P5019, $P5017
    goto if529_end1047
  if529_else1046:
    null $P5018
    set $P5019, $P5018
  if529_end1047:
    unless_null $P5019, vivi_5301048
    nqp_get_sc_object $P5020, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5019, $P5020
  vivi_5301048:
    find_lex $P5021, "$?CLASS"
    getattribute $P5013, $P5019, $P5021, "$!name"
    isnull $I5004, $P5013
    set $I5008, $I5004
    if $I5004 goto unless528_end1045 
    nqp_decontainerize $P5023, _lex_param_0
    find_lex $P5024, "$?CLASS"
    repr_get_attr_obj $P5025, $P5023, $P5024, "$!cstack"
    set fb_tmp_141, $P5025
    repr_defined $I5007, fb_tmp_141
    unless $I5007 goto if531_else1049 
    set $P5026, fb_tmp_141[$I101]
    set $P5028, $P5026
    goto if531_end1050
  if531_else1049:
    null $P5027
    set $P5028, $P5027
  if531_end1050:
    unless_null $P5028, vivi_5321051
    nqp_get_sc_object $P5029, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5028, $P5029
  vivi_5321051:
    find_lex $P5030, "$?CLASS"
    getattribute $P5022, $P5028, $P5030, "$!name"
    set $S5001, $P5022
    set $S5002, _lex_param_1
    isne $I5006, $S5001, $S5002
    set $I5008, $I5006
  unless528_end1045:
    set $I5009, $I5008
  if527_end1043:
    box $P5033, $I5009
    set $P5031, $P5033
    unless $I5009 goto while526_done1041 
  while526_redo1039:
    box $P5031, $I101
    set tmp_7, $P5031
    set $N5007, tmp_7
    set $N5008, 1
    sub $N5006, $N5007, $N5008
    set $I5010, $N5006
    set $I101, $I5010
    set $P5031, tmp_7
    goto while526_test1037 
  while526_handlers1040:
    .get_results ($P5032)
    pop_upto_eh $P5032
    getattribute $P5032, $P5032, 'type'
    eq $P5032, .CONTROL_LOOP_NEXT, while526_test1037
    eq $P5032, .CONTROL_LOOP_REDO, while526_redo1039
  while526_done1041:
    pop_eh 
    set $N5006, $I101
    set $N5007, 0
    isge $I5010, $N5006, $N5007
    unless $I5010 goto if533_end1053 
    .const 'Sub' $P5034 = 'cuid_115_1360623830.553' 
    capture_lex $P5034
    $P5035 = $P5034()
  if533_end1053:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_115_1360623830.553") :anon :lex :outer("cuid_60_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 902
    .lex "$subcur", $P101 
    .lex "$litlen", $I101 
    .lex "$target", $S101 
    .local pmc fb_tmp_142 
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P101, $P5001
    set $I101, 0
    set $S101, ""
    find_lex $P5003, "self"
    nqp_decontainerize $P5002, $P5003
    find_lex $P5004, "$?CLASS"
    repr_get_attr_obj $P5005, $P5002, $P5004, "$!cstack"
    set fb_tmp_142, $P5005
    repr_defined $I5001, fb_tmp_142
    unless $I5001 goto if534_else1054 
    find_lex $I5002, "$n"
    set $P5006, fb_tmp_142[$I5002]
    set $P5008, $P5006
    goto if534_end1055
  if534_else1054:
    null $P5007
    set $P5008, $P5007
  if534_end1055:
    unless_null $P5008, vivi_5351056
    nqp_get_sc_object $P5009, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5008, $P5009
  vivi_5351056:
    set $P101, $P5008
.annotate 'line', 904
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
    nqp_get_sc_object $P5016, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 32
    repr_get_attr_str $S5001, $P5015, $P5016, "$!target"
    set $S101, $S5001
    find_lex $P5018, "self"
    nqp_decontainerize $P5017, $P5018
    find_lex $P5019, "$?CLASS"
    repr_get_attr_int $I5005, $P5017, $P5019, "$!pos"
    substr $S5002, $S101, $I5005, $I101
.annotate 'line', 908
    $P5020 = $P101."from"()
    set $I5006, $P5020
    substr $S5003, $S101, $I5006, $I101
    iseq $I5004, $S5002, $S5003
    box $P5027, $I5004
    set $P5026, $P5027
    unless $I5004 goto if536_end1058 
.annotate 'line', 906
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
  if536_end1058:
    .return ($P5026) 
.end
.HLL "nqp"
.namespace []
.sub "!LITERAL" :subid("cuid_61_1360623830.553") :anon :lex :outer("cuid_80_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 913
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
    if haz_param_20, default1065
    set $I5010, 0
    set _lex_param_2, $I5010
  default1065:
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P101, $P5001
    set $I101, 0
    set $S101, ""
.annotate 'line', 914
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start_cur"()
    set $P101, $P5003
    length $I5001, _lex_param_1
    set $I101, $I5001
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!shared"
    nqp_get_sc_object $P5007, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 32
    repr_get_attr_str $S5001, $P5006, $P5007, "$!target"
    set $S101, $S5001
    set $N5001, $I101
    set $N5002, 1
    islt $I5002, $N5001, $N5002
    set $I5008, $I5002
    if $I5002 goto unless538_end1062 
    unless _lex_param_2 goto if539_else1063 
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_int $I5004, $P5008, $P5009, "$!pos"
    substr $S5003, $S101, $I5004, $I101
    downcase $S5002, $S5003
    downcase $S5004, _lex_param_1
    iseq $I5003, $S5002, $S5004
    set $I5007, $I5003
    goto if539_end1064
  if539_else1063:
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5006, $P5010, $P5011, "$!pos"
    substr $S5005, $S101, $I5006, $I101
    iseq $I5005, $S5005, _lex_param_1
    set $I5007, $I5005
  if539_end1064:
    set $I5008, $I5007
  unless538_end1062:
    unless $I5008 goto if537_end1060 
.annotate 'line', 917
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5009, $P5012, $P5013, "$!pos"
    set $N5004, $I5009
    set $N5005, $I101
    add $N5003, $N5004, $N5005
    $P5014 = $P101."!cursor_pass"($N5003)
  if537_end1060:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "at" :subid("cuid_62_1360623830.553") :anon :lex :outer("cuid_80_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 924
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    .lex "$pos", _lex_param_1 
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P101, $P5001
.annotate 'line', 925
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start_cur"()
    set $P101, $P5003
    set $N5001, _lex_param_1
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_int $I5002, $P5004, $P5005, "$!pos"
    set $N5002, $I5002
    iseq $I5001, $N5001, $N5002
    unless $I5001 goto if540_end1067 
.annotate 'line', 926
    nqp_decontainerize $P5006, _lex_param_0
    find_lex $P5007, "$?CLASS"
    repr_get_attr_int $I5003, $P5006, $P5007, "$!pos"
    $P5008 = $P101."!cursor_pass"($I5003)
  if540_end1067:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "before" :subid("cuid_63_1360623830.553") :anon :lex :outer("cuid_80_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 930
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$orig_highwater", $I101 
    .lex "$orig_highexpect", $P101 
    .lex "$cur", $P102 
    .lex "self", _lex_param_0 
    .lex "$regex", _lex_param_1 
    set $I101, 0
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P102, $P5002
    nqp_decontainerize $P5003, _lex_param_0
    find_lex $P5004, "$?CLASS"
    repr_get_attr_obj $P5005, $P5003, $P5004, "$!shared"
    nqp_get_sc_object $P5006, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 32
    repr_get_attr_int $I5001, $P5005, $P5006, "$!highwater"
    set $I101, $I5001
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_obj $P5010, $P5008, $P5009, "$!shared"
    nqp_get_sc_object $P5011, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 32
    getattribute $P5007, $P5010, $P5011, "@!highexpect"
    set $P101, $P5007
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_obj $P5014, $P5012, $P5013, "$!shared"
    nqp_get_sc_object $P5015, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 32
    new $P5016, 'ResizablePMCArray'
    setattribute $P5014, $P5015, "@!highexpect", $P5016
.annotate 'line', 934
    nqp_decontainerize $P5017, _lex_param_0
    $P5018 = $P5017."!cursor_start_cur"()
    set $P102, $P5018
    find_lex $P5019, "$?CLASS"
    nqp_decontainerize $P5020, _lex_param_0
    find_lex $P5021, "$?CLASS"
    repr_get_attr_int $I5002, $P5020, $P5021, "$!pos"
    repr_bind_attr_int $P102, $P5019, "$!pos", $I5002
.annotate 'line', 936
    $P5022 = _lex_param_1($P102)
    find_lex $P5023, "$?CLASS"
    repr_get_attr_int $I5004, $P5022, $P5023, "$!pos"
    set $N5001, $I5004
    set $N5002, 0
    isge $I5003, $N5001, $N5002
    unless $I5003 goto if541_else1068 
.annotate 'line', 937
    nqp_decontainerize $P5024, _lex_param_0
    find_lex $P5025, "$?CLASS"
    repr_get_attr_int $I5005, $P5024, $P5025, "$!pos"
    $P5026 = $P102."!cursor_pass"($I5005, "before")
    goto if541_end1069
  if541_else1068:
    find_lex $P5027, "$?CLASS"
    repr_bind_attr_int $P102, $P5027, "$!pos", -3
  if541_end1069:
    nqp_decontainerize $P5028, _lex_param_0
    find_lex $P5029, "$?CLASS"
    repr_get_attr_obj $P5030, $P5028, $P5029, "$!shared"
    nqp_get_sc_object $P5031, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 32
    repr_bind_attr_int $P5030, $P5031, "$!highwater", $I101
    nqp_decontainerize $P5032, _lex_param_0
    find_lex $P5033, "$?CLASS"
    repr_get_attr_obj $P5034, $P5032, $P5033, "$!shared"
    nqp_get_sc_object $P5035, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 32
    setattribute $P5034, $P5035, "@!highexpect", $P101
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "after" :subid("cuid_64_1360623830.553") :anon :lex :outer("cuid_80_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 946
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
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P102, $P5002
    set $S101, ""
    nqp_get_sc_object $P5003, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P103, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!shared"
    nqp_get_sc_object $P5007, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 32
    repr_get_attr_int $I5001, $P5006, $P5007, "$!highwater"
    set $I101, $I5001
    nqp_decontainerize $P5009, _lex_param_0
    find_lex $P5010, "$?CLASS"
    repr_get_attr_obj $P5011, $P5009, $P5010, "$!shared"
    nqp_get_sc_object $P5012, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 32
    getattribute $P5008, $P5011, $P5012, "@!highexpect"
    set $P101, $P5008
    nqp_decontainerize $P5013, _lex_param_0
    find_lex $P5014, "$?CLASS"
    repr_get_attr_obj $P5015, $P5013, $P5014, "$!shared"
    nqp_get_sc_object $P5016, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 32
    new $P5017, 'ResizablePMCArray'
    setattribute $P5015, $P5016, "@!highexpect", $P5017
.annotate 'line', 950
    nqp_decontainerize $P5018, _lex_param_0
    $P5019 = $P5018."!cursor_start_cur"()
    set $P102, $P5019
    nqp_decontainerize $P5020, _lex_param_0
    find_lex $P5021, "$?CLASS"
    repr_get_attr_obj $P5022, $P5020, $P5021, "$!shared"
    nqp_get_sc_object $P5023, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 32
    repr_get_attr_str $S5001, $P5022, $P5023, "$!target"
    set $S101, $S5001
    nqp_decontainerize $P5025, _lex_param_0
    find_lex $P5026, "$?CLASS"
    repr_get_attr_obj $P5027, $P5025, $P5026, "$!shared"
    repr_clone $P5024, $P5027
    set $P103, $P5024
    nqp_get_sc_object $P5028, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 32
.annotate 'line', 953
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
.annotate 'line', 957
    $P5038 = _lex_param_1($P102)
    find_lex $P5039, "$?CLASS"
    repr_get_attr_int $I5009, $P5038, $P5039, "$!pos"
    set $N5007, $I5009
    set $N5008, 0
    isge $I5008, $N5007, $N5008
    unless $I5008 goto if542_else1070 
.annotate 'line', 958
    nqp_decontainerize $P5040, _lex_param_0
    find_lex $P5041, "$?CLASS"
    repr_get_attr_int $I5010, $P5040, $P5041, "$!pos"
    $P5042 = $P102."!cursor_pass"($I5010, "after")
    goto if542_end1071
  if542_else1070:
    find_lex $P5043, "$?CLASS"
    repr_bind_attr_int $P102, $P5043, "$!pos", -3
  if542_end1071:
    nqp_decontainerize $P5044, _lex_param_0
    find_lex $P5045, "$?CLASS"
    repr_get_attr_obj $P5046, $P5044, $P5045, "$!shared"
    nqp_get_sc_object $P5047, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 32
    repr_bind_attr_int $P5046, $P5047, "$!highwater", $I101
    nqp_decontainerize $P5048, _lex_param_0
    find_lex $P5049, "$?CLASS"
    repr_get_attr_obj $P5050, $P5048, $P5049, "$!shared"
    nqp_get_sc_object $P5051, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 32
    setattribute $P5050, $P5051, "@!highexpect", $P101
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "ws" :subid("cuid_65_1360623830.553") :anon :lex :outer("cuid_80_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 965
    .param pmc _lex_param_0 
    .lex "$target", $S101 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    set $S101, ""
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P101, $P5001
    nqp_decontainerize $P5002, _lex_param_0
    find_lex $P5003, "$?CLASS"
    repr_get_attr_obj $P5004, $P5002, $P5003, "$!shared"
    nqp_get_sc_object $P5005, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 32
    repr_get_attr_str $S5001, $P5004, $P5005, "$!target"
    set $S101, $S5001
.annotate 'line', 968
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
    unless $I5001 goto if543_else1072 
.annotate 'line', 970
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5004, $P5010, $P5011, "$!pos"
    $P5012 = $P101."!cursor_pass"($I5004, "ws")
    goto if543_end1073
  if543_else1072:
    nqp_decontainerize $P5013, _lex_param_0
    find_lex $P5014, "$?CLASS"
    repr_get_attr_int $I5006, $P5013, $P5014, "$!pos"
    set $N5003, $I5006
    set $N5004, 1
    islt $I5005, $N5003, $N5004
    set $I5010, $I5005
    if $I5005 goto unless546_end1079 
    nqp_decontainerize $P5015, _lex_param_0
    find_lex $P5016, "$?CLASS"
    repr_get_attr_int $I5009, $P5015, $P5016, "$!pos"
    is_cclass $I5008, 8192, $S101, $I5009
    not $I5007, $I5008
    set $I5010, $I5007
  unless546_end1079:
    set $I5015, $I5010
    if $I5010 goto unless545_end1077 
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
  unless545_end1077:
    box $P5023, $I5015
    set $P5022, $P5023
    unless $I5015 goto if544_end1075 
.annotate 'line', 974
    nqp_decontainerize $P5019, _lex_param_0
    find_lex $P5020, "$?CLASS"
    repr_get_attr_int $I5017, $P5019, $P5020, "$!pos"
    length $I5018, $S101
    find_not_cclass $I5016, 32, $S101, $I5017, $I5018
    $P5021 = $P101."!cursor_pass"($I5016, "ws")
    set $P5022, $P5021
  if544_end1075:
  if543_end1073:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "ww" :subid("cuid_66_1360623830.553") :anon :lex :outer("cuid_80_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 981
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "$target", $S101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P101, $P5001
    set $S101, ""
.annotate 'line', 982
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start_cur"()
    set $P101, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!shared"
    nqp_get_sc_object $P5007, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 32
    repr_get_attr_str $S5001, $P5006, $P5007, "$!target"
    set $S101, $S5001
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_int $I5002, $P5008, $P5009, "$!pos"
    set $N5001, $I5002
    set $N5002, 0
    isgt $I5001, $N5001, $N5002
    set $I5006, $I5001
    unless $I5001 goto if550_end1087 
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5004, $P5010, $P5011, "$!pos"
    set $N5003, $I5004
    length $I5005, $S101
    set $N5004, $I5005
    isne $I5003, $N5003, $N5004
    set $I5006, $I5003
  if550_end1087:
    set $I5009, $I5006
    unless $I5006 goto if549_end1085 
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5008, $P5012, $P5013, "$!pos"
    is_cclass $I5007, 8192, $S101, $I5008
    set $I5009, $I5007
  if549_end1085:
    set $I5013, $I5009
    unless $I5009 goto if548_end1083 
    nqp_decontainerize $P5014, _lex_param_0
    find_lex $P5015, "$?CLASS"
    repr_get_attr_int $I5011, $P5014, $P5015, "$!pos"
    set $N5006, $I5011
    set $N5007, 1
    sub $N5005, $N5006, $N5007
    set $I5012, $N5005
    is_cclass $I5010, 8192, $S101, $I5012
    set $I5013, $I5010
  if548_end1083:
    unless $I5013 goto if547_end1081 
.annotate 'line', 984
    nqp_decontainerize $P5016, _lex_param_0
    find_lex $P5017, "$?CLASS"
    repr_get_attr_int $I5014, $P5016, $P5017, "$!pos"
    $P5018 = $P101."!cursor_pass"($I5014, "ww")
  if547_end1081:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "wb" :subid("cuid_67_1360623830.553") :anon :lex :outer("cuid_80_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 992
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "$target", $S101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P101, $P5001
    set $S101, ""
.annotate 'line', 993
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start_cur"()
    set $P101, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!shared"
    nqp_get_sc_object $P5007, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 32
    repr_get_attr_str $S5001, $P5006, $P5007, "$!target"
    set $S101, $S5001
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_int $I5002, $P5008, $P5009, "$!pos"
    set $N5001, $I5002
    set $N5002, 0
    iseq $I5001, $N5001, $N5002
    set $I5005, $I5001
    unless $I5001 goto if554_end1095 
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5004, $P5010, $P5011, "$!pos"
    is_cclass $I5003, 8192, $S101, $I5004
    set $I5005, $I5003
  if554_end1095:
    set $I5013, $I5005
    if $I5005 goto unless553_end1093 
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5007, $P5012, $P5013, "$!pos"
    set $N5003, $I5007
    length $I5008, $S101
    set $N5004, $I5008
    iseq $I5006, $N5003, $N5004
    set $I5012, $I5006
    unless $I5006 goto if555_end1097 
    nqp_decontainerize $P5014, _lex_param_0
    find_lex $P5015, "$?CLASS"
    repr_get_attr_int $I5010, $P5014, $P5015, "$!pos"
    set $N5006, $I5010
    set $N5007, 1
    sub $N5005, $N5006, $N5007
    set $I5011, $N5005
    is_cclass $I5009, 8192, $S101, $I5011
    set $I5012, $I5009
  if555_end1097:
    set $I5013, $I5012
  unless553_end1093:
    set $I5020, $I5013
    if $I5013 goto unless552_end1091 
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
  unless552_end1091:
    unless $I5020 goto if551_end1089 
.annotate 'line', 995
    nqp_decontainerize $P5020, _lex_param_0
    find_lex $P5021, "$?CLASS"
    repr_get_attr_int $I5021, $P5020, $P5021, "$!pos"
    $P5022 = $P101."!cursor_pass"($I5021, "wb")
  if551_end1089:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "ident" :subid("cuid_68_1360623830.553") :anon :lex :outer("cuid_80_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1004
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "$target", $S101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P101, $P5001
    set $S101, ""
.annotate 'line', 1005
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start_cur"()
    set $P101, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!shared"
    nqp_get_sc_object $P5007, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 32
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
    unless $I5001 goto if557_end1101 
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5006, $P5010, $P5011, "$!pos"
    ord $I5005, $S101, $I5006
    set $N5003, $I5005
    set $N5004, 95
    iseq $I5004, $N5003, $N5004
    set $I5009, $I5004
    if $I5004 goto unless558_end1103 
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5008, $P5012, $P5013, "$!pos"
    is_cclass $I5007, 4, $S101, $I5008
    set $I5009, $I5007
  unless558_end1103:
    set $I5010, $I5009
  if557_end1101:
    unless $I5010 goto if556_end1099 
.annotate 'line', 1007
    nqp_decontainerize $P5014, _lex_param_0
    find_lex $P5015, "$?CLASS"
    repr_get_attr_int $I5012, $P5014, $P5015, "$!pos"
    length $I5013, $S101
    find_not_cclass $I5011, 8192, $S101, $I5012, $I5013
    $P5016 = $P101."!cursor_pass"($I5011)
  if556_end1099:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "alpha" :subid("cuid_69_1360623830.553") :anon :lex :outer("cuid_80_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1017
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "$target", $S101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P101, $P5001
    set $S101, ""
.annotate 'line', 1018
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start_cur"()
    set $P101, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!shared"
    nqp_get_sc_object $P5007, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 32
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
    unless $I5001 goto if560_end1107 
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, 4, $S101, $I5005
    set $I5009, $I5004
    if $I5004 goto unless561_end1109 
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5008, $P5012, $P5013, "$!pos"
    ord $I5007, $S101, $I5008
    set $N5003, $I5007
    set $N5004, 95
    iseq $I5006, $N5003, $N5004
    set $I5009, $I5006
  unless561_end1109:
    set $I5010, $I5009
  if560_end1107:
    unless $I5010 goto if559_end1105 
.annotate 'line', 1020
    nqp_decontainerize $P5014, _lex_param_0
    find_lex $P5015, "$?CLASS"
    repr_get_attr_int $I5011, $P5014, $P5015, "$!pos"
    set $N5006, $I5011
    set $N5007, 1
    add $N5005, $N5006, $N5007
    $P5016 = $P101."!cursor_pass"($N5005, "alpha")
  if559_end1105:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "alnum" :subid("cuid_70_1360623830.553") :anon :lex :outer("cuid_80_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1027
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "$target", $S101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P101, $P5001
    set $S101, ""
.annotate 'line', 1028
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start_cur"()
    set $P101, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!shared"
    nqp_get_sc_object $P5007, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 32
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
    unless $I5001 goto if563_end1113 
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, 2048, $S101, $I5005
    set $I5009, $I5004
    if $I5004 goto unless564_end1115 
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5008, $P5012, $P5013, "$!pos"
    ord $I5007, $S101, $I5008
    set $N5003, $I5007
    set $N5004, 95
    iseq $I5006, $N5003, $N5004
    set $I5009, $I5006
  unless564_end1115:
    set $I5010, $I5009
  if563_end1113:
    unless $I5010 goto if562_end1111 
.annotate 'line', 1030
    nqp_decontainerize $P5014, _lex_param_0
    find_lex $P5015, "$?CLASS"
    repr_get_attr_int $I5011, $P5014, $P5015, "$!pos"
    set $N5006, $I5011
    set $N5007, 1
    add $N5005, $N5006, $N5007
    $P5016 = $P101."!cursor_pass"($N5005, "alnum")
  if562_end1111:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "upper" :subid("cuid_71_1360623830.553") :anon :lex :outer("cuid_80_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1037
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "$target", $S101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P101, $P5001
    set $S101, ""
.annotate 'line', 1038
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start_cur"()
    set $P101, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!shared"
    nqp_get_sc_object $P5007, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 32
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
    unless $I5001 goto if566_end1119 
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, 1, $S101, $I5005
    set $I5006, $I5004
  if566_end1119:
    unless $I5006 goto if565_end1117 
.annotate 'line', 1040
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5007, $P5012, $P5013, "$!pos"
    set $N5004, $I5007
    set $N5005, 1
    add $N5003, $N5004, $N5005
    $P5014 = $P101."!cursor_pass"($N5003, "upper")
  if565_end1117:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "lower" :subid("cuid_72_1360623830.553") :anon :lex :outer("cuid_80_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1046
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "$target", $S101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P101, $P5001
    set $S101, ""
.annotate 'line', 1047
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start_cur"()
    set $P101, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!shared"
    nqp_get_sc_object $P5007, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 32
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
    unless $I5001 goto if568_end1123 
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, 2, $S101, $I5005
    set $I5006, $I5004
  if568_end1123:
    unless $I5006 goto if567_end1121 
.annotate 'line', 1049
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5007, $P5012, $P5013, "$!pos"
    set $N5004, $I5007
    set $N5005, 1
    add $N5003, $N5004, $N5005
    $P5014 = $P101."!cursor_pass"($N5003, "lower")
  if567_end1121:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "digit" :subid("cuid_73_1360623830.553") :anon :lex :outer("cuid_80_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1055
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "$target", $S101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P101, $P5001
    set $S101, ""
.annotate 'line', 1056
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start_cur"()
    set $P101, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!shared"
    nqp_get_sc_object $P5007, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 32
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
    unless $I5001 goto if570_end1127 
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, 8, $S101, $I5005
    set $I5006, $I5004
  if570_end1127:
    unless $I5006 goto if569_end1125 
.annotate 'line', 1058
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5007, $P5012, $P5013, "$!pos"
    set $N5004, $I5007
    set $N5005, 1
    add $N5003, $N5004, $N5005
    $P5014 = $P101."!cursor_pass"($N5003, "digit")
  if569_end1125:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "xdigit" :subid("cuid_74_1360623830.553") :anon :lex :outer("cuid_80_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1064
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "$target", $S101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P101, $P5001
    set $S101, ""
.annotate 'line', 1065
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start_cur"()
    set $P101, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!shared"
    nqp_get_sc_object $P5007, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 32
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
    unless $I5001 goto if572_end1131 
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, 16, $S101, $I5005
    set $I5006, $I5004
  if572_end1131:
    unless $I5006 goto if571_end1129 
.annotate 'line', 1067
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5007, $P5012, $P5013, "$!pos"
    set $N5004, $I5007
    set $N5005, 1
    add $N5003, $N5004, $N5005
    $P5014 = $P101."!cursor_pass"($N5003, "xdigit")
  if571_end1129:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "space" :subid("cuid_75_1360623830.553") :anon :lex :outer("cuid_80_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1073
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "$target", $S101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P101, $P5001
    set $S101, ""
.annotate 'line', 1074
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start_cur"()
    set $P101, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!shared"
    nqp_get_sc_object $P5007, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 32
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
    unless $I5001 goto if574_end1135 
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, 32, $S101, $I5005
    set $I5006, $I5004
  if574_end1135:
    unless $I5006 goto if573_end1133 
.annotate 'line', 1076
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5007, $P5012, $P5013, "$!pos"
    set $N5004, $I5007
    set $N5005, 1
    add $N5003, $N5004, $N5005
    $P5014 = $P101."!cursor_pass"($N5003, "space")
  if573_end1133:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "blank" :subid("cuid_76_1360623830.553") :anon :lex :outer("cuid_80_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1082
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "$target", $S101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P101, $P5001
    set $S101, ""
.annotate 'line', 1083
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start_cur"()
    set $P101, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!shared"
    nqp_get_sc_object $P5007, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 32
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
    unless $I5001 goto if576_end1139 
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, 256, $S101, $I5005
    set $I5006, $I5004
  if576_end1139:
    unless $I5006 goto if575_end1137 
.annotate 'line', 1085
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5007, $P5012, $P5013, "$!pos"
    set $N5004, $I5007
    set $N5005, 1
    add $N5003, $N5004, $N5005
    $P5014 = $P101."!cursor_pass"($N5003, "blank")
  if575_end1137:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "cntrl" :subid("cuid_77_1360623830.553") :anon :lex :outer("cuid_80_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1091
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "$target", $S101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P101, $P5001
    set $S101, ""
.annotate 'line', 1092
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start_cur"()
    set $P101, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!shared"
    nqp_get_sc_object $P5007, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 32
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
    unless $I5001 goto if578_end1143 
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, 512, $S101, $I5005
    set $I5006, $I5004
  if578_end1143:
    unless $I5006 goto if577_end1141 
.annotate 'line', 1094
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5007, $P5012, $P5013, "$!pos"
    set $N5004, $I5007
    set $N5005, 1
    add $N5003, $N5004, $N5005
    $P5014 = $P101."!cursor_pass"($N5003, "cntrl")
  if577_end1141:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "punct" :subid("cuid_78_1360623830.553") :anon :lex :outer("cuid_80_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1100
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "$target", $S101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P101, $P5001
    set $S101, ""
.annotate 'line', 1101
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start_cur"()
    set $P101, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!shared"
    nqp_get_sc_object $P5007, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 32
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
    unless $I5001 goto if580_end1147 
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, 1024, $S101, $I5005
    set $I5006, $I5004
  if580_end1147:
    unless $I5006 goto if579_end1145 
.annotate 'line', 1103
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5007, $P5012, $P5013, "$!pos"
    set $N5004, $I5007
    set $N5005, 1
    add $N5003, $N5004, $N5005
    $P5014 = $P101."!cursor_pass"($N5003, "punct")
  if579_end1145:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "FAILGOAL" :subid("cuid_79_1360623830.553") :anon :lex :outer("cuid_80_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1109
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :optional 
    .param int haz_param_21 :opt_flag 
    .lex "self", _lex_param_0 
    .lex "$goal", _lex_param_1 
    .lex "$dba", _lex_param_2 
    if haz_param_21, default1150
    nqp_get_sc_object $P5004, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set _lex_param_2, $P5004
  default1150:
    if _lex_param_2 goto unless581_end1149 
.annotate 'line', 1110
    getinterp $P5001
    set $P5001, $P5001['sub';1]
    set $S5001, $P5001
    box $P5002, $S5001
    set _lex_param_2, $P5002
  unless581_end1149:
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
.sub "" :subid("cuid_146_1360623830.553") :anon :lex :outer("cuid_144_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1118
    .const 'Sub' $P5013 = 'cuid_81_1360623830.553' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_82_1360623830.553' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_83_1360623830.553' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_84_1360623830.553' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_85_1360623830.553' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_86_1360623830.553' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_87_1360623830.553' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_88_1360623830.553' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_89_1360623830.553' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_90_1360623830.553' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_91_1360623830.553' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_92_1360623830.553' 
    capture_lex $P5013 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_81_1360623830.553' 
    capture_lex $P5001
    .const 'Sub' $P5002 = 'cuid_82_1360623830.553' 
    capture_lex $P5002
    .const 'Sub' $P5003 = 'cuid_83_1360623830.553' 
    capture_lex $P5003
    .const 'Sub' $P5004 = 'cuid_84_1360623830.553' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_85_1360623830.553' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_86_1360623830.553' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_87_1360623830.553' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_88_1360623830.553' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_89_1360623830.553' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_90_1360623830.553' 
    capture_lex $P5010
    .const 'Sub' $P5011 = 'cuid_91_1360623830.553' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_92_1360623830.553' 
    capture_lex $P5012
    .return ($P5012) 
.end
.HLL "nqp"
.namespace []
.sub "from" :subid("cuid_81_1360623830.553") :anon :lex :outer("cuid_146_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1125
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 87
    repr_get_attr_int $I5001, $P5001, $P5002, "$!from"
    .return ($I5001) 
.end
.HLL "nqp"
.namespace []
.sub "orig" :subid("cuid_82_1360623830.553") :anon :lex :outer("cuid_146_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1126
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 87
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!orig"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "to" :subid("cuid_83_1360623830.553") :anon :lex :outer("cuid_146_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1127
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 87
    repr_get_attr_int $I5001, $P5001, $P5002, "$!to"
    .return ($I5001) 
.end
.HLL "nqp"
.namespace []
.sub "CURSOR" :subid("cuid_84_1360623830.553") :anon :lex :outer("cuid_146_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1128
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 87
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!cursor"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "Str" :subid("cuid_85_1360623830.553") :anon :lex :outer("cuid_146_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1129
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 87
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!orig"
    set $S5002, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 87
    repr_get_attr_int $I5001, $P5004, $P5005, "$!from"
    nqp_decontainerize $P5006, _lex_param_0
    nqp_get_sc_object $P5007, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 87
    repr_get_attr_int $I5002, $P5006, $P5007, "$!to"
    set $N5002, $I5002
    nqp_decontainerize $P5008, _lex_param_0
    nqp_get_sc_object $P5009, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 87
    repr_get_attr_int $I5003, $P5008, $P5009, "$!from"
    set $N5003, $I5003
    sub $N5001, $N5002, $N5003
    set $I5004, $N5001
    substr $S5001, $S5002, $I5001, $I5004
    .return ($S5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_86_1360623830.553") :anon :lex :outer("cuid_146_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1130
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    $P5002 = $P5001."Str"()
    set $N5001, $P5002
    .return ($N5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_87_1360623830.553") :anon :lex :outer("cuid_146_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1131
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    $P5002 = $P5001."Str"()
    set $N5001, $P5002
    .return ($N5001) 
.end
.HLL "nqp"
.namespace []
.sub "Bool" :subid("cuid_88_1360623830.553") :anon :lex :outer("cuid_146_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1132
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 87
    repr_get_attr_int $I5002, $P5001, $P5002, "$!to"
    set $N5001, $I5002
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 87
    repr_get_attr_int $I5003, $P5003, $P5004, "$!from"
    set $N5002, $I5003
    isge $I5001, $N5001, $N5002
    .return ($I5001) 
.end
.HLL "nqp"
.namespace []
.sub "chars" :subid("cuid_89_1360623830.553") :anon :lex :outer("cuid_146_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1133
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 87
    repr_get_attr_int $I5002, $P5001, $P5002, "$!to"
    set $N5001, $I5002
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 87
    repr_get_attr_int $I5003, $P5003, $P5004, "$!from"
    set $N5002, $I5003
    isge $I5001, $N5001, $N5002
    unless $I5001 goto if582_else1151 
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 87
    repr_get_attr_int $I5004, $P5005, $P5006, "$!to"
    set $N5004, $I5004
    nqp_decontainerize $P5007, _lex_param_0
    nqp_get_sc_object $P5008, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 87
    repr_get_attr_int $I5005, $P5007, $P5008, "$!from"
    set $N5005, $I5005
    sub $N5003, $N5004, $N5005
    box $P5010, $N5003
    set $P5009, $P5010
    goto if582_end1152
  if582_else1151:
    box $P5011, 0
    set $P5009, $P5011
  if582_end1152:
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "!make" :subid("cuid_90_1360623830.553") :anon :lex :outer("cuid_146_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1135
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$ast", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 87
    repr_bind_attr_obj $P5001, $P5002, "$!ast", _lex_param_1
    .return (_lex_param_1) 
.end
.HLL "nqp"
.namespace []
.sub "ast" :subid("cuid_91_1360623830.553") :anon :lex :outer("cuid_146_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1136
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 87
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!ast"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "!dump_str" :subid("cuid_92_1360623830.553") :anon :lex :outer("cuid_146_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1138
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5019 = 'cuid_149_1360623830.553' 
    capture_lex $P5019 
    .const 'Sub' $P5019 = 'cuid_150_1360623830.553' 
    capture_lex $P5019 
    .lex "&dump_array", $P101 
    .lex "$str", $P102 
    .lex "self", _lex_param_0 
    .lex "$key", _lex_param_1 
    .const 'Sub' $P5001 = 'cuid_149_1360623830.553' 
    capture_lex $P5001
    set $P101, $P5001
    nqp_get_sc_object $P5002, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P102, $P5002
    set $S5006, _lex_param_1
    concat $S5005, $S5006, ": "
.annotate 'line', 1150
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
.annotate 'line', 1151
    nqp_decontainerize $P5008, _lex_param_0
    $P5009 = $P5008."list"()
    $P5010 = "&dump_array"(_lex_param_1, $P5009)
    set $S5012, $P5010
    concat $S5010, $S5011, $S5012
    box $P5011, $S5010
    set $P102, $P5011
.annotate 'line', 1152
    nqp_decontainerize $P5015, _lex_param_0
    $P5016 = $P5015."hash"()
    set $P5012, $P5016
    iter $P5014, $P5016
  for_next1160:
    unless $P5014, for_done1162
    shift $P5018, $P5014
  for_redo1161:
    .const 'Sub' $P5017 = 'cuid_150_1360623830.553' 
    capture_lex $P5017
    $P5012 = $P5017($P5018)
    goto for_next1160
  for_done1162:
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "dump_array" :subid("cuid_149_1360623830.553") :anon :lex :outer("cuid_92_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1139
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5011 = 'cuid_148_1360623830.553' 
    capture_lex $P5011 
    .lex "$str", $P101 
    .lex "$key", _lex_param_0 
    .lex "$item", _lex_param_1 
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P101, $P5001
    box $P5002, ""
    set $P101, $P5002
.annotate 'line', 1141
    nqp_get_sc_object $P5003, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 42
    $P5004 = $P5003."ACCEPTS"(_lex_param_1)
    unless $P5004 goto if583_else1153 
    set $S5002, $P101
.annotate 'line', 1142
    $P5005 = _lex_param_1."!dump_str"(_lex_param_0)
    set $S5003, $P5005
    concat $S5001, $S5002, $S5003
    box $P5006, $S5001
    set $P101, $P5006
    goto if583_end1154
  if583_else1153:
    isnull $I5002, _lex_param_1
    not $I5001, $I5002
    box $P5010, $I5001
    set $P5009, $P5010
    unless $I5001 goto if584_end1156 
    .const 'Sub' $P5007 = 'cuid_148_1360623830.553' 
    capture_lex $P5007
    $P5008 = $P5007()
    set $P5009, $P5008
  if584_end1156:
  if583_end1154:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_148_1360623830.553") :anon :lex :outer("cuid_149_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1144
    .const 'Sub' $P5009 = 'cuid_147_1360623830.553' 
    capture_lex $P5009 
    .lex "$n", $P101 
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P101, $P5001
    box $P5002, 0
    set $P101, $P5002
    find_lex $P5006, "$item"
    set $P5003, $P5006
    iter $P5005, $P5006
  for_next1157:
    unless $P5005, for_done1159
    shift $P5008, $P5005
  for_redo1158:
    .const 'Sub' $P5007 = 'cuid_147_1360623830.553' 
    capture_lex $P5007
    $P5003 = $P5007($P5008)
    goto for_next1157
  for_done1159:
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_147_1360623830.553") :anon :lex :outer("cuid_148_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1146
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
.sub "" :subid("cuid_150_1360623830.553") :anon :lex :outer("cuid_92_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1152
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
.sub "" :subid("cuid_152_1360623830.553") :anon :lex :outer("cuid_144_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1157
    .const 'Sub' $P5010 = 'cuid_93_1360623830.553' 
    capture_lex $P5010 
    .const 'Sub' $P5010 = 'cuid_94_1360623830.553' 
    capture_lex $P5010 
    .const 'Sub' $P5010 = 'cuid_95_1360623830.553' 
    capture_lex $P5010 
    .const 'Sub' $P5010 = 'cuid_96_1360623830.553' 
    capture_lex $P5010 
    .const 'Sub' $P5010 = 'cuid_97_1360623830.553' 
    capture_lex $P5010 
    .lex "$EMPTY_MATCH_LIST", $P101 
    .lex "$EMPTY_MATCH_HASH", $P102 
    .lex "$?PACKAGE", $P103 
    .lex "$?CLASS", $P104 
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P102, $P5002
    new $P5003, 'ResizablePMCArray'
    set $P101, $P5003
    new $P5004, 'Hash'
    set $P102, $P5004
    .const 'Sub' $P5005 = 'cuid_93_1360623830.553' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_94_1360623830.553' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_95_1360623830.553' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_96_1360623830.553' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_97_1360623830.553' 
    capture_lex $P5009
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "MATCH" :subid("cuid_93_1360623830.553") :anon :lex :outer("cuid_152_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1160
    .param pmc _lex_param_0 
    .const 'Sub' $P5008 = 'cuid_151_1360623830.553' 
    capture_lex $P5008 
    .lex "$match", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P101, $P5001
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 100
    getattribute $P5002, $P5003, $P5004, "$!match"
    set $P101, $P5002
    nqp_get_sc_object $P5005, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 87
    type_check $I5001, $P101, $P5005
    set $I5003, $I5001
    if $I5001 goto unless586_end1166 
    nqp_ishash $I5002, $P101
    set $I5003, $I5002
  unless586_end1166:
    if $I5003 goto unless585_end1164 
    .const 'Sub' $P5006 = 'cuid_151_1360623830.553' 
    capture_lex $P5006
    $P5007 = $P5006()
  unless585_end1164:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_151_1360623830.553") :anon :lex :outer("cuid_93_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1162
    .lex "$list", $P101 
    .lex "$hash", $P102 
    .lex "%ch", $P103 
    .lex "$key", $S101 
    .lex "$iter", $P104 
    .local pmc fb_tmp_143 
    .local pmc fb_tmp_144 
    .local pmc fb_tmp_145 
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P102, $P5002
    new $P5003, 'Hash'
    set $P103, $P5003
    set $S101, ""
    nqp_get_sc_object $P5004, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P104, $P5004
    find_lex $P5005, "$EMPTY_MATCH_LIST"
    set $P101, $P5005
    find_lex $P5006, "$EMPTY_MATCH_HASH"
    set $P102, $P5006
    nqp_get_sc_object $P5008, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 87
    repr_instance_of $P5007, $P5008
    store_lex "$match", $P5007
    find_lex $P5010, "self"
    nqp_decontainerize $P5009, $P5010
    nqp_get_sc_object $P5011, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 100
    find_lex $P5012, "$match"
    setattribute $P5009, $P5011, "$!match", $P5012
    find_lex $P5013, "$match"
    nqp_get_sc_object $P5014, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 87
    find_lex $P5016, "self"
    nqp_decontainerize $P5015, $P5016
    setattribute $P5013, $P5014, "$!cursor", $P5015
    find_lex $P5017, "$match"
    nqp_get_sc_object $P5018, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 87
.annotate 'line', 1168
    find_lex $P5020, "self"
    nqp_decontainerize $P5019, $P5020
    $P5021 = $P5019."orig"()
    setattribute $P5017, $P5018, "$!orig", $P5021
    find_lex $P5022, "$match"
    nqp_get_sc_object $P5023, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 87
    find_lex $P5025, "self"
    nqp_decontainerize $P5024, $P5025
    nqp_get_sc_object $P5026, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 100
    repr_get_attr_int $I5001, $P5024, $P5026, "$!from"
    repr_bind_attr_int $P5022, $P5023, "$!from", $I5001
    find_lex $P5027, "$match"
    nqp_get_sc_object $P5028, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 87
    find_lex $P5030, "self"
    nqp_decontainerize $P5029, $P5030
    nqp_get_sc_object $P5031, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 100
    repr_get_attr_int $I5002, $P5029, $P5031, "$!pos"
    repr_bind_attr_int $P5027, $P5028, "$!to", $I5002
.annotate 'line', 1171
    find_lex $P5033, "self"
    nqp_decontainerize $P5032, $P5033
    $P5034 = $P5032."CAPHASH"()
    set $P103, $P5034
    iter $P5035, $P103
    set $P104, $P5035
  while587_test1167:
    set $P5057, $P104
    unless $P104 goto while587_done1171 
  while587_redo1169:
.annotate 'line', 1174
    shift $P5036, $P104
    set $S5001, $P5036
    set $S101, $S5001
    iseq $I5003, $S101, "$!from"
    set $I5005, $I5003
    if $I5003 goto unless589_end1175 
    iseq $I5004, $S101, "$!to"
    set $I5005, $I5004
  unless589_end1175:
    unless $I5005 goto if588_else1172 
.annotate 'line', 1176
    find_lex $P5037, "$match"
    nqp_get_sc_object $P5038, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 87
.annotate 'line', 1177
    set fb_tmp_143, $P103
    repr_defined $I5006, fb_tmp_143
    unless $I5006 goto if590_else1176 
    set $P5039, fb_tmp_143[$S101]
    set $P5041, $P5039
    goto if590_end1177
  if590_else1176:
    null $P5040
    set $P5041, $P5040
  if590_end1177:
    unless_null $P5041, vivi_5911178
    nqp_get_sc_object $P5042, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5041, $P5042
  vivi_5911178:
    $P5043 = $P5041."from"()
    set $I5007, $P5043
    repr_bind_attr_int $P5037, $P5038, $S101, $I5007
    box $P5056, $I5007
    set $P5055, $P5056
    goto if588_end1173
  if588_else1172:
    is_cclass $I5008, 8, $S101, 0
    unless $I5008 goto if592_else1179 
.annotate 'line', 1179
    if $P101 goto unless593_end1182 
    new $P5044, 'ResizablePMCArray'
    set $P101, $P5044
  unless593_end1182:
    set $I5009, $S101
    set fb_tmp_144, $P103
    repr_defined $I5010, fb_tmp_144
    unless $I5010 goto if594_else1183 
    set $P5045, fb_tmp_144[$S101]
    set $P5047, $P5045
    goto if594_end1184
  if594_else1183:
    null $P5046
    set $P5047, $P5046
  if594_end1184:
    unless_null $P5047, vivi_5951185
    nqp_get_sc_object $P5048, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5047, $P5048
  vivi_5951185:
    set $P101[$I5009], $P5047
    set $P5054, $P5047
    goto if592_end1180
  if592_else1179:
.annotate 'line', 1183
    if $P102 goto unless596_end1187 
    new $P5049, 'Hash'
    set $P102, $P5049
  unless596_end1187:
    set fb_tmp_145, $P103
    repr_defined $I5011, fb_tmp_145
    unless $I5011 goto if597_else1188 
    set $P5050, fb_tmp_145[$S101]
    set $P5052, $P5050
    goto if597_end1189
  if597_else1188:
    null $P5051
    set $P5052, $P5051
  if597_end1189:
    unless_null $P5052, vivi_5981190
    nqp_get_sc_object $P5053, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P5052, $P5053
  vivi_5981190:
    set $P102[$S101], $P5052
    set $P5054, $P5052
  if592_end1180:
    set $P5055, $P5054
  if588_end1173:
    set $P5057, $P5055
    goto while587_test1167 
  while587_done1171:
    find_lex $P5058, "$match"
    nqp_get_sc_object $P5059, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 42
    setattribute $P5058, $P5059, "@!array", $P101
    find_lex $P5060, "$match"
    nqp_get_sc_object $P5061, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 42
    setattribute $P5060, $P5061, "%!hash", $P102
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "Bool" :subid("cuid_94_1360623830.553") :anon :lex :outer("cuid_152_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1194
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5002, _lex_param_0
    find_lex $P5003, "$?CLASS"
    getattribute $P5001, $P5002, $P5003, "$!match"
    isnull $I5002, $P5001
    not $I5001, $I5002
    set $I5004, $I5001
    unless $I5001 goto if599_end1192 
    nqp_decontainerize $P5005, _lex_param_0
    find_lex $P5006, "$?CLASS"
    getattribute $P5004, $P5005, $P5006, "$!match"
    istrue $I5003, $P5004
    set $I5004, $I5003
  if599_end1192:
    .return ($I5004) 
.end
.HLL "nqp"
.namespace []
.sub "parse" :subid("cuid_95_1360623830.553") :anon :lex :outer("cuid_152_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1199
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
    if haz_param_22, default1195
    box $P5011, "TOP"
    set _lex_param_2, $P5011
  default1195:
    if haz_param_23, default1196
    nqp_get_sc_object $P5012, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set _lex_param_3, $P5012
  default1196:
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P102, $P5002
    set $P101, _lex_param_3
.annotate 'line', 1201
    nqp_decontainerize $P5003, _lex_param_0
    $P5004 = $P5003."!cursor_init"(_lex_param_1, _lex_param_4 :flat :named)
    set $P102, $P5004
    is_invokable $I5001, _lex_param_2
    unless $I5001 goto if600_else1193 
.annotate 'line', 1203
    $P5005 = _lex_param_2($P102)
    $P5006 = $P5005."MATCH"()
    set $P5010, $P5006
    goto if600_end1194
  if600_else1193:
.annotate 'line', 1204
    set $S5001, _lex_param_2
    find_method $P5007, $P102, $S5001
    $P5008 = $P5007($P102)
    $P5009 = $P5008."MATCH"()
    set $P5010, $P5009
  if600_end1194:
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "!INTERPOLATE" :subid("cuid_96_1360623830.553") :anon :lex :outer("cuid_152_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1207
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5006 = 'cuid_157_1360623830.553' 
    capture_lex $P5006 
    .const 'Sub' $P5006 = 'cuid_158_1360623830.553' 
    capture_lex $P5006 
    .lex "self", _lex_param_0 
    .lex "$var", _lex_param_1 
    root_new $P101, ['parrot';'Continuation']
    set_label $P101, lexotic_1197
    .lex "RETURN", $P101
    nqp_islist $I5001, _lex_param_1
    unless $I5001 goto if601_else1199 
    .const 'Sub' $P5001 = 'cuid_157_1360623830.553' 
    capture_lex $P5001
    $P5002 = $P5001()
    set $P5005, $P5002
    goto if601_end1200
  if601_else1199:
    .const 'Sub' $P5003 = 'cuid_158_1360623830.553' 
    capture_lex $P5003
    $P5004 = $P5003()
    set $P5005, $P5004
  if601_end1200:
    goto lexotic_1198
  lexotic_1197:
    .get_results ($P5005)
  lexotic_1198:
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_157_1360623830.553") :anon :lex :outer("cuid_96_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1208
    .const 'Sub' $P5016 = 'cuid_155_1360623830.553' 
    capture_lex $P5016 
    .lex "$maxlen", $I101 
    .lex "$cur", $P101 
    .lex "$pos", $I102 
    .lex "$tgt", $S101 
    .lex "$eos", $I103 
    set $I101, 0
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P101, $P5001
    set $I102, 0
    set $S101, ""
    set $I103, 0
    set $I101, -1
.annotate 'line', 1210
    find_lex $P5003, "self"
    nqp_decontainerize $P5002, $P5003
    $P5004 = $P5002."!cursor_start_cur"()
    set $P101, $P5004
    find_lex $P5005, "$?CLASS"
    repr_get_attr_int $I5001, $P101, $P5005, "$!from"
    set $I102, $I5001
.annotate 'line', 1212
    $P5006 = $P101."target"()
    set $S5001, $P5006
    set $S101, $S5001
    length $I5002, $S101
    set $I103, $I5002
    find_lex $P5010, "$var"
    set $P5007, $P5010
    iter $P5009, $P5010
  for_next1213:
    unless $P5009, for_done1215
    shift $P5012, $P5009
  for_redo1214:
    .const 'Sub' $P5011 = 'cuid_155_1360623830.553' 
    capture_lex $P5011
    $P5007 = $P5011($P5012)
    goto for_next1213
  for_done1215:
    set $N5001, $I101
    set $N5002, 0
    isge $I5003, $N5001, $N5002
    unless $I5003 goto if608_end1217 
.annotate 'line', 1229
    set $N5004, $I102
    set $N5005, $I101
    add $N5003, $N5004, $N5005
    $P5013 = $P101."!cursor_pass"($N5003, "")
  if608_end1217:
    find_lex $P5014, "RETURN"
    $P5015 = $P5014($P101)
    .return ($P5015) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_155_1360623830.553") :anon :lex :outer("cuid_157_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1214
    .param pmc _lex_param_0 
    .const 'Sub' $P5006 = 'cuid_154_1360623830.553' 
    capture_lex $P5006 
    .const 'Sub' $P5006 = 'cuid_156_1360623830.553' 
    capture_lex $P5006 
    .lex "$_", _lex_param_0 
    is_invokable $I5001, _lex_param_0
    unless $I5001 goto if602_else1201 
    .const 'Sub' $P5001 = 'cuid_154_1360623830.553' 
    capture_lex $P5001
    $P5002 = $P5001()
    set $P5005, $P5002
    goto if602_end1202
  if602_else1201:
    .const 'Sub' $P5003 = 'cuid_156_1360623830.553' 
    capture_lex $P5003
    $P5004 = $P5003()
    set $P5005, $P5004
  if602_end1202:
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_154_1360623830.553") :anon :lex :outer("cuid_155_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1215
    .const 'Sub' $P5009 = 'cuid_153_1360623830.553' 
    capture_lex $P5009 
    .lex "$res", $P101 
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P101, $P5001
.annotate 'line', 1216
    find_lex $P5004, "self"
    nqp_decontainerize $P5003, $P5004
    find_lex $P5002, "$_"
    $P5005 = $P5002($P5003)
    set $P101, $P5005
    set $P5008, $P101
    unless $P101 goto if603_end1204 
    .const 'Sub' $P5006 = 'cuid_153_1360623830.553' 
    capture_lex $P5006
    $P5007 = $P5006()
    set $P5008, $P5007
  if603_end1204:
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_153_1360623830.553") :anon :lex :outer("cuid_154_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1217
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
    unless $I5004 goto if604_end1206 
    store_lex "$maxlen", $I101
    set $I5006, $I101
  if604_end1206:
    .return ($I5006) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_156_1360623830.553") :anon :lex :outer("cuid_155_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1223
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
    unless $I5002 goto if607_end1212 
    find_lex $I5005, "$pos"
    set $N5004, $I5005
    set $N5005, $I101
    add $N5003, $N5004, $N5005
    find_lex $I5006, "$eos"
    set $N5006, $I5006
    isle $I5004, $N5003, $N5006
    set $I5007, $I5004
  if607_end1212:
    set $I5010, $I5007
    unless $I5007 goto if606_end1210 
    find_lex $S5003, "$tgt"
    find_lex $I5009, "$pos"
    substr $S5002, $S5003, $I5009, $I101
    find_lex $P5002, "$_"
    set $S5004, $P5002
    iseq $I5008, $S5002, $S5004
    set $I5010, $I5008
  if606_end1210:
    set $I5011, $I5010
    unless $I5010 goto if605_end1208 
    store_lex "$maxlen", $I101
    set $I5011, $I101
  if605_end1208:
    .return ($I5011) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_158_1360623830.553") :anon :lex :outer("cuid_96_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1232
    .lex "$cur", $P101 
    .lex "$pos", $I101 
    .lex "$tgt", $S101 
    .lex "$len", $I102 
    .lex "$adv", $I103 
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P101, $P5001
    set $I101, 0
    set $S101, ""
    set $I102, 0
    set $I103, 0
    find_lex $P5002, "$var"
    is_invokable $I5001, $P5002
    unless $I5001 goto if609_end1219 
.annotate 'line', 1233
    find_lex $P5006, "self"
    nqp_decontainerize $P5005, $P5006
    find_lex $P5004, "$var"
    $P5007 = $P5004($P5005)
    find_lex $P5003, "RETURN"
    $P5008 = $P5003($P5007)
  if609_end1219:
.annotate 'line', 1234
    find_lex $P5010, "self"
    nqp_decontainerize $P5009, $P5010
    $P5011 = $P5009."!cursor_start_cur"()
    set $P101, $P5011
    find_lex $P5012, "$?CLASS"
    repr_get_attr_int $I5002, $P101, $P5012, "$!from"
    set $I101, $I5002
.annotate 'line', 1236
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
    if $I5005 goto unless611_end1223 
    substr $S5003, $S101, $I101, $I102
    find_lex $P5015, "$var"
    set $S5004, $P5015
    isne $I5007, $S5003, $S5004
    set $I5008, $I5007
  unless611_end1223:
    unless $I5008 goto if610_end1221 
    find_lex $P5016, "RETURN"
    $P5017 = $P5016($P101)
  if610_end1221:
.annotate 'line', 1241
    $P101."!cursor_pass"($I103, "")
    find_lex $P5018, "RETURN"
    $P5019 = $P5018($P101)
    .return ($P5019) 
.end
.HLL "nqp"
.namespace []
.sub "!INTERPOLATE_REGEX" :subid("cuid_97_1360623830.553") :anon :lex :outer("cuid_152_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1246
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5007 = 'cuid_161_1360623830.553' 
    capture_lex $P5007 
    .lex "self", _lex_param_0 
    .lex "$var", _lex_param_1 
    root_new $P101, ['parrot';'Continuation']
    set_label $P101, lexotic_1224
    .lex "RETURN", $P101
    is_invokable $I5001, _lex_param_1
    if $I5001 goto unless612_end1227 
    .const 'Sub' $P5001 = 'cuid_161_1360623830.553' 
    capture_lex $P5001
    $P5002 = $P5001()
  unless612_end1227:
.annotate 'line', 1262
    nqp_decontainerize $P5004, _lex_param_0
    $P5005 = $P5004."!INTERPOLATE"(_lex_param_1)
    find_lex $P5003, "RETURN"
    $P5006 = $P5003($P5005)
    goto lexotic_1225
  lexotic_1224:
    .get_results ($P5006)
  lexotic_1225:
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_161_1360623830.553") :anon :lex :outer("cuid_97_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1247
    .const 'Sub' $P5009 = 'cuid_160_1360623830.553' 
    capture_lex $P5009 
    .lex "$rxcompiler", $P101 
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P101, $P5001
    compreg $P5002, "QRegex::P6Regex"
    set $P101, $P5002
    find_lex $P5003, "$var"
    nqp_islist $I5001, $P5003
    unless $I5001 goto if613_else1228 
    .const 'Sub' $P5004 = 'cuid_160_1360623830.553' 
    capture_lex $P5004
    $P5005 = $P5004()
    set $P5008, $P5005
    goto if613_end1229
  if613_else1228:
.annotate 'line', 1258
.annotate 'line', 1259
    find_lex $P5006, "$var"
    $P5007 = $P101."compile"($P5006)
    store_lex "$var", $P5007
    set $P5008, $P5007
  if613_end1229:
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_160_1360623830.553") :anon :lex :outer("cuid_161_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1249
    .const 'Sub' $P5009 = 'cuid_159_1360623830.553' 
    capture_lex $P5009 
    .lex "$res", $P101 
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P101, $P5001
    new $P5002, 'ResizablePMCArray'
    set $P101, $P5002
    find_lex $P5006, "$var"
    set $P5003, $P5006
    iter $P5005, $P5006
  for_next1232:
    unless $P5005, for_done1234
    shift $P5008, $P5005
  for_redo1233:
    .const 'Sub' $P5007 = 'cuid_159_1360623830.553' 
    capture_lex $P5007
    $P5003 = $P5007($P5008)
    goto for_next1232
  for_done1234:
    store_lex "$var", $P101
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_159_1360623830.553") :anon :lex :outer("cuid_160_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1251
    .param pmc _lex_param_0 
    .lex "$elem", $P101 
    .lex "$_", _lex_param_0 
    nqp_get_sc_object $P5001, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213", 25
    set $P101, $P5001
    set $P101, _lex_param_0
    is_invokable $I5001, $P101
    if $I5001 goto unless614_end1231 
.annotate 'line', 1253
    find_lex $P5002, "$rxcompiler"
    $P5003 = $P5002."compile"($P101)
    set $P101, $P5003
  unless614_end1231:
    find_lex $P5004, "$res"
    push $P5004, $P101
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_162_1360623830.553") :anon :lex :outer("cuid_144_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1266
    .const 'Sub' $P5004 = 'cuid_116_1360623830.553' 
    capture_lex $P5004 
    .const 'Sub' $P5004 = 'cuid_117_1360623830.553' 
    capture_lex $P5004 
    .const 'Sub' $P5004 = 'cuid_118_1360623830.553' 
    capture_lex $P5004 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_116_1360623830.553' 
    capture_lex $P5001
    .const 'Sub' $P5002 = 'cuid_117_1360623830.553' 
    capture_lex $P5002
    .const 'Sub' $P5003 = 'cuid_118_1360623830.553' 
    capture_lex $P5003
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "new" :subid("cuid_116_1360623830.553") :anon :lex :outer("cuid_162_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1268
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$code", _lex_param_1 
.annotate 'line', 1269
    nqp_decontainerize $P5001, _lex_param_0
    $P5002 = $P5001."bless"(_lex_param_1 :named("code"))
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "ACCEPTS" :subid("cuid_117_1360623830.553") :anon :lex :outer("cuid_162_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1271
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$target", _lex_param_1 
.annotate 'line', 1272
    nqp_get_sc_object $P5001, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 100
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5001."parse"(_lex_param_1, $P5002 :named("rule"))
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "Str" :subid("cuid_118_1360623830.553") :anon :lex :outer("cuid_162_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1274
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 106
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!code"
    set $S5001, $P5003
    .return ($S5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_163_1360623830.553") :anon :lex :outer("cuid_144_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1279
    .const 'Sub' $P5002 = 'cuid_119_1360623830.553' 
    capture_lex $P5002 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_119_1360623830.553' 
    capture_lex $P5001
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "ACCEPTS" :subid("cuid_119_1360623830.553") :anon :lex :outer("cuid_163_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1280
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$target", _lex_param_1 
.annotate 'line', 1281
    nqp_get_sc_object $P5001, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 100
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5001."parse"(_lex_param_1, $P5002 :named("rule"), 0 :named("c"))
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_165_1360623830.553") :load :init
.annotate 'file', "src\\stage2\\QRegex.nqp"
    .const 'Sub' $P5001 = 'cuid_164_1360623830.553' 
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
    .const 'Sub' $P5001 = "cuid_144_1360623830.553" 
    get_hll_global $P5002, "ModuleLoader"
    $P5003 = $P5002."load_setting"("NQPCORE")
    $P5004 = $P5001."set_outer_ctx"($P5003)
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P5001, "ModuleLoader"
    $P5001."load_module"("QASTNode")
    nqp_create_sc $P5001, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578"
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
    push $P5004, "CREATE"
    push $P5004, "87903807ADF71CDA74CDCE8869B95A330377DD41-1360623827.213"
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
    push $P5004, "Uninstantiable"
    push $P5004, "BUILD"
    push $P5004, "list"
    push $P5004, "hash"
    push $P5004, "from"
    push $P5004, "orig"
    push $P5004, "to"
    push $P5004, "CURSOR"
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
    push $P5004, "!cursor_start"
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
    push $P5004, "46A27B8E73DBD8EFB3FE1AA531DA4577B21729DD-1360623823.905"
    push $P5004, "src\\stage2\\gen\\nqp-mo.pm"
    push $P5004, "QRegex::NFA"
    push $P5004, "edges"
    push $P5004, "nfa_object"
    push $P5004, "NFAType"
    push $P5004, "ParseShared"
    push $P5004, "highwater"
    push $P5004, "highexpect"
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
    push $P5004, "invoke"
    push $P5004, "code"
    push $P5004, "CompileTimeValue"
    push $P5004, "6A529C03C57FF1539F71263163E1D04547746F2E-1360623828.987"
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
    .const 'Sub' $P5005 = 'cuid_164_1360623830.553' 
    capture_lex $P5005
    $P5006 = $P5005()
    nqp_deserialize_sc "AwAAAEAAAAAEAAAAYAAAAA4AAADQAAAAvBcAAMwAAAB8JAAAmlAAADQAAAB6VQAAAQAAAIpVAAD0VQAAAAAAAAsAAAAMAAAAiwAAAAAAAACOAAAAjwAAAKQAAAClAAAAAQAAAAAAAAABAAAADAEAAAEAAADEAQAAAQAAAHwCAAA0AAAAwgUAAAEAAAAQBgAAOQAAAPAHAAABAAAAPggAAAEAAABACwAAAQAAAAIRAAABAAAAihIAAAEAAAAoFAAAAQAAAOoVAAA5AAAAohYAAAAAAABwAAAAAAAAAAAAAAAKAAcAAAACAAAAAgAAAAAAcQAAAAMAAAACAAAAAAByAAAABAAAAAIAAAAAACEAAAAFAAAAAgAAAAAAVwAAAAYAAAACAAAAAABkAAAABwAAAAIAAAAAAGoAAAAIAAAAAgAAAAAAbgAAAAoAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAAAAAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAAAAAAAADAP////////////////////8AAAAAcwAAAAAAAAABAAAACgABAAAACQAAAAIAAAAAAAIAAAAKAAAAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAAAAQAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAQAAAAAAAAACAAAAAAABAAAAAwD/////////////////////AAAAAHQAAAAAAAAAAgAAAAoAAQAAAAQAAAACAAAAAAAhAAAACgAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAAIAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAAAgAAAAMA/////////////////////wAAAAB1AAAAAAAAAAMAAAAKAAAAAAAKACQAAAAKAAAAAgABAAAAGgAAAA0AAAACAAEAAAAbAAAADgAAAAIAAQAAABwAAAAPAAAAAgAAAAAABAAAABAAAAACAAEAAAAeAAAAEQAAAAIAAQAAACEAAAASAAAAAgABAAAAIwAAABMAAAACAAEAAAAlAAAAFAAAAAIAAQAAACYAAAAVAAAAAgABAAAAKAAAABYAAAACAAAAAAAfAAAAFwAAAAIAAAAAAAUAAAAYAAAAAgAAAAAABgAAABkAAAACAAAAAAAHAAAAGgAAAAIAAAAAAAgAAAAbAAAAAgAAAAAACQAAABwAAAACAAAAAAAKAAAAHQAAAAIAAAAAAAsAAAAeAAAAAgAAAAAADAAAAB8AAAACAAAAAAANAAAAIAAAAAIAAAAAAA4AAAAhAAAAAgAAAAAADwAAACIAAAACAAAAAAAQAAAAIwAAAAIAAAAAABEAAAAkAAAAAgAAAAAAEgAAACUAAAACAAAAAAATAAAAJgAAAAIAAAAAABQAAAAnAAAAAgAAAAAAFQAAACgAAAACAAAAAAAWAAAAKQAAAAIAAAAAABcAAAAqAAAAAgAAAAAAGAAAACsAAAACAAAAAAAZAAAALAAAAAIAAAAAABsAAAAtAAAAAgAAAAAAHAAAAC4AAAACAAAAAAAdAAAALwAAAAIAAAAAAB4AAAAAAAAAAAAAAAIAAAAAAAAAAgAAAAAAAwAAAAIAAQAAABkAAAAEAAAAAAAAAAEAAAAAAAAABQAAAAAAAAADAAAAAAAAAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAABAAAAAgAAAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAQAAABkAAAACAAEAAAAZAAAAAQACAAEAAAAZAAAA////////////////////////////////AAAAAAAAAAACAAAAAAAAAAIAAQAAABkAAAADAAIAAAAAAAMAAAAKAAQAAAAwAAAABAAAAAAAAAAAADEAAAAEAAEAAAAAAAAAMgAAAAQAAgAAAAAAAAAzAAAABAADAAAAAAAAAP////////////////////8AAAAAdgAAAAAAAAAaAAAACgAAAAAACgAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAABoAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAdwAAAAAAAAAgAAAACgAAAAAACgALAAAACgAAAAIAAQAAABoAAAANAAAAAgABAAAAGwAAAA4AAAACAAEAAAAcAAAADwAAAAIAAQAAAB0AAAAQAAAAAgABAAAAHgAAABEAAAACAAEAAAAhAAAAEgAAAAIAAQAAACMAAAATAAAAAgABAAAAJQAAABQAAAACAAEAAAAmAAAAFQAAAAIAAQAAACgAAAAWAAAAAgABAAAAKQAAAAAAAAAAAAAAAgAAAAAAAAACAAAAAAAgAAAAAgABAAAAGQAAAAQAAAAAAAAAAQAAAAAAAAAFAAAAAAAAAAMAAAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAABAAAABAAAAAEAAAAAAAAAAQAAAAIAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAEAAAAZAAAAAQABAAEA////////////////////////////////AAAAAAAAAAACAAAAAAAAAAIAAQAAABkAAAADAAIAAAAAACAAAAAKAAQAAAA1AAAABAAAAAAAAAAAADYAAAAEAAEAAAAAAAAANwAAAAQAAgAAAAAAAAA4AAAABAADAAAAAAAAAP////////////////////8AAAAAeAAAAAAAAAAhAAAACgAAAAAACgAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAACEAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAeQAAAAAAAABXAAAACgAAAAAACgAXAAAACgAAAAIAAQAAABoAAAANAAAAAgABAAAAGwAAAA4AAAACAAEAAAAcAAAADwAAAAIAAQAAACsAAAAQAAAAAgAAAAAAXAAAABEAAAACAAEAAAAhAAAAEgAAAAIAAQAAACMAAAATAAAAAgABAAAAJQAAABQAAAACAAEAAAAmAAAAFQAAAAIAAQAAACgAAAAWAAAAAgABAAAAKQAAADoAAAACAAEAAAAsAAAAOwAAAAIAAQAAAC0AAAA8AAAAAgABAAAALgAAAD0AAAACAAAAAABYAAAAPgAAAAIAAAAAAFkAAAA/AAAAAgAAAAAAWgAAAEAAAAACAAAAAABbAAAAQQAAAAIAAAAAAF8AAABCAAAAAgAAAAAAYAAAAEMAAAACAAAAAABhAAAARAAAAAIAAAAAAGIAAABFAAAAAgAAAAAAYwAAAAAAAAAAAAAAAwAAAAAAAAACAAAAAABXAAAAAgABAAAA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AAAAAIcAAAAEAAYAAAAAAAAAiAAAAAQABwAAAAAAAACJAAAABAAIAAAAAAAAAP////////////////////8AAAAAsAAAAAAAAABqAAAACgAAAAAACgALAAAACgAAAAIAAQAAABoAAAANAAAAAgABAAAAGwAAAA4AAAACAAEAAAAcAAAADwAAAAIAAAAAAGsAAAAQAAAAAgAAAAAAbQAAABEAAAACAAEAAAAhAAAAEgAAAAIAAQAAACMAAAATAAAAAgABAAAAJQAAABQAAAACAAAAAABsAAAAFQAAAAIAAQAAACgAAAAWAAAAAgABAAAAKQAAAAAAAAAAAAAAAgAAAAAAAAACAAAAAABqAAAAAgABAAAAGQAAAAQAAAAAAAAAAQAAAAAAAAAFAAAAAAAAAAMAAAAAAAAAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAQAAABkAAAD///////////////////////////////8AAAAAAAAAAAIAAAAAAAAAAgABAAAAGQAAAAMAAgAAAAAAagAAAAoAAQAAAIoAAAAEAAAAAAAAAAAA/////////////////////wAAAACxAAAAAAAAAG4AAAAKAAAAAAAKAAsAAAAKAAAAAgABAAAAGgAAAA0AAAACAAEAAAAbAAAADgAAAAIAAQAAABwAAAAPAAAAAgAAAAAAawAAABAAAAACAAAAAABtAAAAEQAAAAIAAQAAACEAAAASAAAAAgABAAAAIwAAABMAAAACAAEAAAAlAAAAFAAAAAIAAAAAAG8AAAAVAAAAAgABAAAAKAAAABYAAAACAAEAAAApAAAAAAAAAAAAAAADAAAAAAAAAAIAAAAAAG4AAAACAAAAAABqAAAAAgABAAAAGQAAAAQAAAAAAAAAAQAAAAAAAAAFAAAAAAAAAAMAAAAAAAAAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAQAAABkAAAD///////////////////////////////8AAAAAAAAAAAMAAAAAAAAAAgABAAAAGQAAAAMAAgAAAAAAagAAAAoAAQAAAIoAAAAEAAAAAAAAAAAAAgAAAAAAbgAAAAMA/////////////////////wAAAADJAAAAAAAAAHEAAAAKABQAAACjAAAAAgAEAAAAAwAAAKYAAAACAAQAAAAIAAAApwAAAAIABAAAAAwAAACoAAAAAgAEAAAAIgAAAKkAAAACAAQAAAAqAAAAqgAAAAIABAAAAC8AAACrAAAAAgAEAAAANAAAAKwAAAACAAQAAAA5AAAArQAAAAIABAAAAD0AAACuAAAAAgAEAAAAQgAAAK8AAAACAAQAAABHAAAAsAAAAAIABAAAAFAAAACxAAAAAgAEAAAAUgAAALIAAAACAAQAAABZAAAAswAAAAIABAAAAF0AAAC0AAAAAgAEAAAAYQAAALUAAAACAAQAAABlAAAAtgAAAAIABAAAAG0AAAC3AAAAAgAEAAAAcAAAALgAAAACAAQAAAB6AAAACgAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAHEAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAAcQAAAAMA/////////////////////wAAAADKAAAAAAAAAHIAAAAKAAEAAAA0AAAAAgAAAAAAAwAAAAoAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAAByAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAAHIAAAADAP////////////////////8AAAAAywAAAAAAAACvAAAAAwAKAAAAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAAArwAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAIAAAAAAAAAAAAAAAAAAAADAAAAAAAAAAAAAAABAAAABQAAAAAAAAABAAAAAQAAAAUAAAAUAAAAAQAAAAEAAAAFAAAAKAAAAAEAAAABAAAABQAAADwAAAABAAAAAQAAAAUAAABQAAAAAQAAAAEAAAAFAAAAZAAAAAEAAAABAAAABQAAAHgAAAABAAAAAQAAAAUAAACMAAAAAQAAAAEAAAAFAAAAoAAAAAEAAAABAAAABQAAALQAAAABAAAAAQAAAAUAAADIAAAAAQAAAAEAAAAFAAAA3AAAAAEAAAABAAAABQAAAPAAAAABAAAAAQAAAAUAAAAEAQAAAQAAAAEAAAAFAAAAGAEAAAEAAAABAAAABQAAACwBAAABAAAAAQAAAAUAAABAAQAAAQAAAAEAAAAFAAAAVAEAAAEAAAABAAAABQAAAGgBAAABAAAAAQAAAAUAAAB8AQAAAQAAAAEAAAAFAAAAkAEAAAEAAAABAAAABQAAAKQBAAABAAAAAAAAAAQAAAC4AQAAAAAAAAEAAAAFAAAAuAEAAAEAAAABAAAABQAAAMwBAAABAAAAAQAAAAUAAADgAQAAAQAAAAEAAAAFAAAA9AEAAAEAAAABAAAABQAAAAgCAAABAAAAAAAAAAUAAAAcAgAAAAAAAAAAAAAGAAAAHAIAAAAAAAABAAAABQAAABwCAAABAAAAAQAAAAUAAAAwAgAAAQAAAAEAAAAFAAAARAIAAAEAAAABAAAABQAAAFgCAAABAAAAAQAAAAUAAABsAgAAAQAAAAEAAAAFAAAAgAIAAAEAAAABAAAABQAAAJQCAAABAAAAAQAAAAUAAACoAgAAAQAAAAEAAAAFAAAAvAIAAAEAAAABAAAABQAAANACAAABAAAAAQAAAAUAAADkAgAAAQAAAAEAAAAFAAAA+AIAAAEAAAABAAAABQAAAAwDAAABAAAAAQAAAAUAAAAgAwAAAQAAAAEAAAAFAAAANAMAAAEAAAABAAAABQAAAEgDAAABAAAAAQAAAAUAAABcAwAAAQAAAAEAAAAFAAAAcAMAAAEAAAABAAAABQAAAIQDAAABAAAAAQAAAAUAAACYAwAAAQAAAAEAAAAFAAAArAMAAAEAAAABAAAABQAAAMADAAABAAAAAQAAAAUAAADUAwAAAQAAAAEAAAAFAAAA6AMAAAEAAAABAAAABQAAAPwDAAABAAAAAQAAAAUAAAAQBAAAAQAAAAEAAAAFAAAAJAQAAAEAAAABAAAABQAAADgEAAABAAAAAQAAAAUAAABMBAAAAQAAAAEAAAAFAAAAYAQAAAEAAAABAAAABQAAAHQEAAABAAAAAQAAAAUAAACIBAAAAQAAAAEAAAAFAAAAnAQAAAEAAAABAAAABQAAALAEAAABAAAAAQAAAAUAAADEBAAAAQAAAAEAAAAFAAAA2AQAAAEAAAABAAAABQAAAOwEAAABAAAAAQAAAAUAAAAABQAAAQAAAAEAAAAFAAAAFAUAAAEAAAABAAAABQAAACgFAAABAAAAAQAAAAUAAAA8BQAAAQAAAAEAAAAFAAAAUAUAAAEAAAABAAAABQAAAGQFAAABAAAAAQAAAAUAAAB4BQAAAQAAAAEAAAAFAAAAjAUAAAEAAAABAAAABQAAAKAFAAABAAAAAQAAAAUAAAC0BQAAAQAAAAEAAAAFAAAAyAUAAAEAAAABAAAABQAAANwFAAABAAAAAQAAAAUAAADwBQAAAQAAAAEAAAAFAAAABAYAAAEAAAABAAAABQAAABgGAAABAAAAAQAAAAUAAAAsBgAAAQAAAAAAAAAHAAAAQAYAAAAAAAABAAAABQAAAEAGAAABAAAAAQAAAAUAAABUBgAAAQAAAAEAAAAFAAAAaAYAAAEAAAABAAAABQAAAHwGAAABAAAAAQAAAAUAAACQBgAAAQAAAAEAAAAFAAAApAYAAAEAAAABAAAABQAAALgGAAABAAAAAQAAAAUAAADMBgAAAQAAAAEAAAAFAAAA4AYAAAEAAAABAAAABQAAAPQGAAABAAAAAQAAAAUAAAAIBwAAAQAAAAEAAAAFAAAAHAcAAAEAAAAAAAAACAAAADAHAAAAAAAAAQAAAAUAAAAwBwAAAQAAAAEAAAAFAAAARAcAAAEAAAABAAAABQAAAFgHAAABAAAAAQAAAAUAAABsBwAAAQAAAAEAAAAFAAAAgAcAAAEAAAAAAAAACQAAAJQHAAAAAAAAAQAAAAUAAACUBwAAAQAAAAEAAAAFAAAAqAcAAAEAAAABAAAABQAAALwHAAABAAAAAAAAAAoAAADQBwAAAAAAAAEAAAAFAAAA0AcAAAEAAAACAAAAAAAAAOQHAAABAAAAAAAAAAsAAAD0BwAAAAAAAAAAAAAMAAAA9AcAAAAAAAACAAAAAAAAAPQHAAABAAAAAgAAAAAAAAAECAAAAQAAAAMAAAAHAAAAFAgAAAEAAAACAAAAAAAAAKgMAAABAAAAAwAAAAcAAAC4DAAAAQAAAAMAAAAGAAAAxA4AAAEAAAADAAAABwAAAEwSAAABAAAAAwAAAAcAAACgFAAAAQAAAAEAAAAFAAAA5B0AAAEAAAABAAAABQAAAPgdAAABAAAAAQAAAAUAAAAMHgAAAQAAAAEAAAAFAAAA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CwAAAAAAHAAAAAEAAQABAAEAAwALAAAAAAAdAAAAAQABAAEAAQADAAsAAAAAAB4AAAABAAEAAQABAAMACwAAAAAAHwAAAAEAAQABAAEAAwALAAAAAAAgAAAAAQABAAEAAQADAAsAAAAAACEAAAABAAEAAQABAAMACwAAAAAAIgAAAAEAAQABAAEAAwALAAAAAAAjAAAAAQABAAEAAQADAAsAAAAAACQAAAABAAEAAQABAAMACwAAAAAAJQAAAAEAAQABAAEAAwALAAAAAAAmAAAAAQABAAEAAQADAAsAAAAAACcAAAABAAEAAQABAAMACwAAAAAAKAAAAAEAAQABAAEAAwALAAAAAAApAAAAAQABAAEAAQADAAsAAAAAACoAAAABAAEAAQABAAMACwAAAAAAKwAAAAEAAQABAAEAAwALAAAAAAAsAAAAAQABAAEAAQADAAsAAAAAAC0AAAABAAEAAQABAAMACwAAAAAALgAAAAEAAQABAAEAAwALAAAAAAAvAAAAAQABAAEAAQADAAsAAAAAADAAAAABAAEAAQABAAMACwAAAAAAMQAAAAEAAQABAAEAAwALAAAAAAAyAAAAAQABAAEAAQADAAsAAAAAADMAAAABAAEAAQABAAMACwAAAAAANAAAAAEAAQABAAEAAwALAAAAAAA1AAAAAQABAAEAAQADAAsAAAAAADYAAAABAAEAAQABAAMACwAAAAAANwAAAAEAAQABAAEAAwALAAAAAAA4AAAAAQABAAEAAQADAAsAAAAAADkAAAABAAEAAQABAAMACwAAAAAAOgAAAAEAAQABAAEAAwALAAAAAAA7AAAAAQABAAEAAQADAAsAAAAAADwAAAABAAEAAQABAAMACwAAAAAAPQAAAAEAAQABAAEAAwALAAAAAAA+AAAAAQABAAEAAQADAAsAAAAAAD8AAAABAAEAAQABAAMACwAAAAAAQAAAAAEAAQABAAEAAwALAAAAAABBAAAAAQABAAEAAQADAAsAAAAAAEIAAAABAAEAAQABAAMACwAAAAAAQwAAAAEAAQABAAEAAwALAAAAAABEAAAAAQABAAEAAQADAAsAAAAAAEUAAAABAAEAAQABAAMACwAAAAAARgAAAAEAAQABAAEAAwALAAAAAABHAAAAAQABAAEAAQADAAsAAAAAAEgAAAABAAEAAQABAAMA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AQAAAAAAAAAHAAIAAAACAAAAAABkAAAAAgABAAAAGQAAAAcAAgAAAAIAAAAAACEAAAACAAAAAACvAAAAAQAKAAAAAAAKAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcACQAAAAcABAAAAAQAAQAAAAAAAAACAAAAAABkAAAABgCaAAAABgCCAAAABwAEAAAABAABAAAAAAAAAAIAAAAAAGQAAAAGAD0AAAAGAEgAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAZAAAAAYAUQAAAAYAgwAAAAcABAAAAAQAAQAAAAAAAAACAAAAAABkAAAABgCbAAAABgCEAAAABwAEAAAABAABAAAAAAAAAAIAAAAAAGQAAAAGAJwAAAAGAIUAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAZAAAAAYAnQAAAAYAhgAAAAcABAAAAAQAAQAAAAAAAAACAAAAAABkAAAABgCeAAAABgCHAAAABwAEAAAABAABAAAAAAAAAAIAAAAAAGQAAAAGAJ8AAAAGAIgAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAZAAAAAYAoAAAAAYAiQAAAAcACQAAAAcABAAAAAQAAQAAAAAAAAACAAAAAABkAAAABgCaAAAABgCCAAAABwAEAAAABAABAAAAAAAAAAIAAAAAAGQAAAAGAD0AAAAGAEgAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAZAAAAAYAUQAAAAYAgwAAAAcABAAAAAQAAQAAAAAAAAACAAAAAABkAAAABgCbAAAABgCEAAAABwAEAAAABAABAAAAAAAAAAIAAAAAAGQAAAAGAJwAAAAGAIUAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAZAAAAAYAnQAAAAYAhgAAAAcABAAAAAQAAQAAAAAAAAACAAAAAABkAAAABgCeAAAABgCHAAAABwAEAAAABAABAAAAAAAAAAIAAAAAAGQAAAAGAJ8AAAAGAIgAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAZAAAAAYAoAAAAAYAiQAAAAEADAAAAAAAZQAAAAEAAQABAAEAAwAMAAAAAABmAAAAAQABAAEAAQADAAwAAAAAAGcAAAABAAEAAQABAAMADAAAAAAAaAAAAAEAAQABAAEAAwAMAAAAAABpAAAAAQABAAEAAQADAAwAAAAAAGoAAAABAAEAAQABAAMADAAAAAAAawAAAAEAAQABAAEAAwAMAAAAAABsAAAAAQABAAEAAQADAAwAAAAAAG0AAAABAAEAAQABAAMADAAAAAAAbgAAAAEAAQABAAEAAwAMAAAAAABvAAAAAQABAAEAAQADAAwAAAAAAHAAAAABAAEAAQABAAMADAAAAAAAcQAAAAEAAQABAAEAAwAMAAAAAAByAAAAAQABAAEAAQADAAwAAAAAAHMAAAABAAEAAQABAAMADAAAAAAAdAAAAAEAAQABAAEAAwAMAAAAAAB1AAAAAQABAAEAAQADAAwAAAAAAHYAAAABAAEAAQABAAMADAAAAAAAdwAAAAEAAQABAAEAAwAMAAAAAAB4AAAAAQABAAEAAQADAAwAAAAAAHkAAAABAAEAAQABAAMADAAAAAAAegAAAAEAAQABAAEAAwAMAAAAAAB7AAAAAQABAAEAAQADAAwAAAAAAHwAAAABAAEAAQABAAMADAAAAAAAfQAAAAEAAQABAAEAAwAMAAAAAAB+AAAAAQABAAEAAQADAAwAAAAAAH8AAAABAAEAAQABAAMADAAAAAAAgAAAAAEAAQABAAEAAwAMAAAAAACBAAAAAQABAAEAAQADAAwAAAAAAIIAAAABAAEAAQABAAMADAAAAAAAgwAAAAEAAQABAAEAAwAMAAAAAACEAAAAAQABAAEAAQADAAwAAAAAAIUAAAABAAEAAQABAAMADAAAAAAAhgAAAAEAAQABAAEAAwAMAAAAAACHAAAAAQABAAEAAQADAAwAAAAAAIgAAAABAAEAAQABAAMADAAAAAAAiQAAAAEAAQABAAEAAwAMAAAAAACKAAAAAQABAAEAAQADAAwAAAAAAIsAAAABAAEAAQABAAMADAAAAAAAjAAAAAEAAQABAAEAAwAMAAAAAACNAAAAAQABAAEAAQADAAwAAAAAAI4AAAABAAEAAQABAAMADAAAAAAAjwAAAAEAAQABAAEAAwAMAAAAAACQAAAAAQABAAEAAQADAAwAAAAAAJEAAAABAAEAAQABAAMADAAAAAAAkgAAAAEAAQABAAEAAwAMAAAAAACTAAAAAQABAAEAAQADAAwAAAAAAJQAAAABAAEAAQABAAMADAAAAAAAlQAAAAEAAQABAAEAAwAMAAAAAACWAAAAAQABAAEAAQADAAwAAAAAAJcAAAABAAEAAQABAAMADAAAAAAAmAAAAAEAAQABAAEAAwAGAAcAAAAKAAEAAACKAAAAAgAAAAAAyAAAAAoAAwAAAA8AAAACAAAAAABrAAAAFAAAAAIAAAAAAGwAAAAQAAAAAgAAAAAAbQAAAAcAAwAAAAIAAAAAAGsAAAACAAAAAABsAAAAAgAAAAAAbQAAAAcAAAAAAAcAAQAAAAIAAQAAABkAAAAHAAAAAAACAAEAAAAZAAAABwAAAAAACgAAAAAABAABAAAAAAAAAAcAAgAAAAIAAAAAAGoAAAACAAEAAAAZAAAABwAAAAAAAQAKAAEAAACXAAAAAgAAAAAAbQAAAAoAAQAAAKEAAAAHAAIAAAACAAAAAABqAAAABgCKAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAEAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAagAAAAYAogAAAAYAigAAAAcAAQAAAAcABAAAAAQAAQAAAAAAAAACAAAAAABqAAAABgCiAAAABgCKAAAAAQAGAAgAAAAKAAAAAAAKAAEAAAAUAAAAAgAAAAAAbwAAAAcAAQAAAAIAAAAAAG8AAAAHAAAAAAAHAAEAAAACAAAAAABqAAAABwAAAAAAAQAHAAAAAAAKAAAAAAAEAAEAAAAAAAAABwADAAAAAgAAAAAAbgAAAAIAAAAAAGoAAAACAAEAAAAZAAAABwAAAAAAAQAKAAAAAAAKAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAQAAAAcABAAAAAQAAQAAAAAAAAACAAAAAABqAAAABgCiAAAABgCKAAAABwAAAAAAAQAGADAAAAADAAQAAAAAAAAAAAADAAIAAQAAABkAAAAEAAEAAAAAAAAAAQABAAYAMQAAAAMABAAAAAAAAAAAAAMAAgABAAAAGQAAAAQAAQAAAAAAAAABAAEABgAyAAAAAgABAAAAAgAAAAQAAQAAAAAAAAADAAIAAQAAAAIAAAAEAAEAAAAAAAAAAQABAAYAMwAAAAMABAAAAAAAAAAAAAMAAgABAAAAGQAAAAQAAQAAAAAAAAABAAEABgA1AAAAAwAEAAAAAAAAAAAAAwACAAEAAAAZAAAABAABAAAAAAAAAAEAAQAGADYAAAACAAEAAAAEAAAABAABAAAAAAAAAAMAAgABAAAABAAAAAQAAQAAAAAAAAABAAEABgA3AAAAAgABAAAAAgAAAAQAAQAAAAAAAAADAAIAAQAAAAIAAAAEAAEAAAAAAAAAAQABAAYAOAAAAAMABAAAAAAAAAAAAAMAAwAEAAAAAAAAAAAAAQABAAYAggAAAAMABAAAAAAAAAAAAAMAAgABAAAAGQAAAAQAAQAAAAAAAAABAAEABgBIAAAAAgABAAAAAgAAAAQAAQAAAAAAAAADAAIAAQAAAAIAAAAEAAEAAAAAAAAAAQABAAYAgwAAAAIAAQAAAAIAAAAEAAEAAAAAAAAAAwACAAEAAAACAAAABAABAAAAAAAAAAEAAQAGAIQAAAADAAQAAAAAAAAAAAADAAIAAQAAABkAAAAEAAEAAAAAAAAAAQABAAYAhQAAAAMABAAAAAAAAAAAAAMAAgABAAAAGQAAAAQAAQAAAAAAAAABAAEABgCGAAAAAwAEAAAAAAAAAAAAAwACAAEAAAAZAAAABAABAAAAAAAAAAEAAQAGAIcAAAADAAQAAAAAAAAAAAADAAIAAQAAABkAAAAEAAEAAAAAAAAAAQABAAYAiAAAAAMABAAAAAAAAAAAAAMAAgABAAAAGQAAAAQAAQAAAAAAAAABAAEABgCJAAAAAwAEAAAAAAAAAAAAAwACAAEAAAAZAAAABAABAAAAAAAAAAEAAQAGADUAAAADAAQAAAAAAAAAAAADAAIAAQAAABkAAAAEAAEAAAAAAAAAAQABAAYASAAAAAIAAQAAAAIAAAAEAAEAAAAAAAAAAwACAAEAAAACAAAABAABAAAAAAAAAAEAAQAGAEkAAAACAAEAAAACAAAABAABAAAAAAAAAAMAAgABAAAAAgAAAAQAAQAAAAAAAAABAAEABgBKAAAAAwAEAAAAAAAAAAAAAwACAAEAAAAZAAAABAABAAAAAAAAAAEAAQAGAEsAAAADAAQAAAAAAAAAAAADAAIAAQAAABkAAAAEAAEAAAAAAAAAAQABAAYAigAAAAMABAAAAAAAAAAAAAMAAgABAAAAGQAAAAQAAQAAAAAAAAABAAEAAgAAAAcAAAAAAAoAAAAAAAMAAAAHAAAAAAAKAAAAAAAGAAQAAAACAAAAAAAhAAAACgAJAAAAggAAAAIAAAAAALoAAABIAAAAAgAAAAAAuwAAAIMAAAACAAAAAAC8AAAAhAAAAAIAAAAAAL0AAACFAAAAAgAAAAAAvgAAAIYAAAACAAAAAAC/AAAAhwAAAAIAAAAAAMAAAACIAAAAAgAAAAAAwQAAAIkAAAACAAAAAADCAAAACgA0AAAAPgAAAAIAAAAAAHsAAABQAAAAAgAAAAAAfAAAAD0AAAACAAAAAAB9AAAAUQAAAAIAAAAAAH4AAABSAAAAAgAAAAAAfwAAAFMAAAACAAAAAACAAAAAVAAAAAIAAAAAAIEAAABVAAAAAgAAAAAAggAAAFYAAAACAAAAAACDAAAAVwAAAAIAAAAAAIQAAABYAAAAAgAAAAAAhQAAAFkAAAACAAAAAACGAAAAWgAAAAIAAAAAAIcAAABbAAAAAgAAAAAAiAAAAFwAAAACAAAAAACJAAAAXQAAAAIAAAAAAIoAAABeAAAAAgAAAAAAiwAAAF8AAAACAAAAAACMAAAAYAAAAAIAAAAAAI0AAABhAAAAAgAAAAAAjgAAAGIAAAACAAAAAACPAAAAYwAAAAIAAAAAAJAAAABkAAAAAgAAAAAAkQAAAGUAAAACAAAAAACSAAAAZgAAAAIAAAAAAJMAAABnAAAAAgAAAAAAlAAAAGgAAAACAAAAAACVAAAAaQAAAAIAAAAAAJYAAABqAAAAAgAAAAAAlwAAAGsAAAACAAAAAACYAAAAbAAAAAIAAAAAAJkAAABtAAAAAgAAAAAAmgAAAG4AAAACAAAAAACbAAAAbwAAAAIAAAAAAJwAAABwAAAAAgAAAAAAnQAAAHEAAAACAAAAAACeAAAAcgAAAAIAAAAAAJ8AAABzAAAAAgAAAAAAoAAAAHQAAAACAAAAAAChAAAAdQAAAAIAAAAAAKIAAAB2AAAAAgAAAAAAowAAAHcAAAACAAAAAACkAAAAeAAAAAIAAAAAAKUAAAB5AAAAAgAAAAAApgAAAHoAAAACAAAAAACnAAAAewAAAAIAAAAAAKgAAAB8AAAAAgAAAAAAqQAAAH0AAAACAAAAAACqAAAAfgAAAAIAAAAAAKsAAAB/AAAAAgAAAAAArAAAAIAAAAACAAAAAACtAAAAgQAAAAIAAAAAAK4AAAAHAAAAAAAHAAAAAAAHAAAAAAAHAAAAAAAEAAEAAAAAAAAAAAAAABsAAAABAAAAAQAAAAAAAAB7AAAAAAAAABwAAAABAAAAAQAAAAAAAAB8AAAAAAAAAB0AAAABAAAAAQAAAAAAAAB9AAAAAAAAAB4AAAABAAAAAQAAAAAAAAB+AAAAAAAAAB8AAAABAAAAAQAAAAAAAAB/AAAAAAAAACAAAAABAAAAAQAAAAAAAACAAAAAAAAAACEAAAABAAAAAQAAAAAAAACBAAAAAAAAACIAAAABAAAAAQAAAAAAAACCAAAAAAAAACMAAAABAAAAAQAAAAAAAACDAAAAAAAAACQAAAABAAAAAQAAAAAAAACEAAAAAAAAACUAAAABAAAAAQAAAAAAAACFAAAAAAAAACYAAAABAAAAAQAAAAAAAACGAAAAAAAAACcAAAABAAAAAQAAAAAAAACHAAAAAAAAACgAAAABAAAAAQAAAAAAAACIAAAAAAAAACkAAAABAAAAAQAAAAAAAACJAAAAAAAAACoAAAABAAAAAQAAAAAAAACKAAAAAAAAACsAAAABAAAAAQAAAAAAAACLAAAAAAAAACwAAAABAAAAAQAAAAAAAACMAAAAAAAAAC0AAAABAAAAAQAAAAAAAACNAAAAAAAAAC4AAAABAAAAAQAAAAAAAACOAAAAAAAAAC8AAAABAAAAAQAAAAAAAACPAAAAAAAAADAAAAABAAAAAQAAAAAAAACQAAAAAAAAADEAAAABAAAAAQAAAAAAAACRAAAAAAAAADIAAAABAAAAAQAAAAAAAACSAAAAAAAAADMAAAABAAAAAQAAAAAAAACTAAAAAAAAADQAAAABAAAAAQAAAAAAAACUAAAAAAAAADUAAAABAAAAAQAAAAAAAACVAAAAAAAAADYAAAABAAAAAQAAAAAAAACWAAAAAAAAADcAAAABAAAAAQAAAAAAAACXAAAAAAAAADgAAAABAAAAAQAAAAAAAACYAAAAAAAAADkAAAABAAAAAQAAAAAAAACZAAAAAAAAADoAAAABAAAAAQAAAAAAAACaAAAAAAAAADsAAAABAAAAAQAAAAAAAACbAAAAAAAAADwAAAABAAAAAQAAAAAAAACcAAAAAAAAAD0AAAABAAAAAQAAAAAAAACdAAAAAAAAAD4AAAABAAAAAQAAAAAAAACeAAAAAAAAAD8AAAABAAAAAQAAAAAAAACfAAAAAAAAAEAAAAABAAAAAQAAAAAAAACgAAAAAAAAAEEAAAABAAAAAQAAAAAAAAChAAAAAAAAAEIAAAABAAAAAQAAAAAAAACiAAAAAAAAAEMAAAABAAAAAQAAAAAAAACjAAAAAAAAAEQAAAABAAAAAQAAAAAAAACkAAAAAAAAAEUAAAABAAAAAQAAAAAAAAClAAAAAAAAAEYAAAABAAAAAQAAAAAAAACmAAAAAAAAAEcAAAABAAAAAQAAAAAAAACnAAAAAAAAAEgAAAABAAAAAQAAAAAAAACoAAAAAAAAAEkAAAABAAAAAQAAAAAAAACpAAAAAAAAAEoAAAABAAAAAQAAAAAAAACqAAAAAAAAAEsAAAABAAAAAQAAAAAAAACrAAAAAAAAAEwAAAABAAAAAQAAAAAAAACsAAAAAAAAAE0AAAABAAAAAQAAAAAAAACtAAAAAAAAAE4AAAABAAAAAQAAAAAAAACuAAAAAAAAAE8AAAAAAAAAAAAAAAkAAAAAAAAAuQAAAAMAugAAAAMAuwAAAAoAAAAAALwAAAAEAAAAAAAAAAAAvQAAAAQAAQAAAAAAAAC+AAAABwAAAAAAvwAAAAQAAQAAAAAAAADAAAAABwAAAAAAwQAAAAIAAAAAAGQAAAA=", cur_sc, $P5004, $P5006, conflicts
    unless conflicts goto if615_end1236 
    die "Repossession conflicts occurred during deserialization"
  if615_end1236:
    .const "LexInfo" $P5001 = "cuid_144_1360623830.553"
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 0
    $P5001."set_static_lexpad_value"("GLOBALish", $P5002)
    .const "LexInfo" $P5003 = "cuid_144_1360623830.553"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_144_1360623830.553"
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 0
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_144_1360623830.553"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_144_1360623830.553"
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 1
    $P5001."set_static_lexpad_value"("EXPORT", $P5002)
    .const "LexInfo" $P5003 = "cuid_144_1360623830.553"
    $P5004 = $P5003."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_1_1360623830.553" 
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 4
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_2_1360623830.553" 
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 5
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_3_1360623830.553" 
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 6
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_4_1360623830.553" 
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 7
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_5_1360623830.553" 
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 8
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_6_1360623830.553" 
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 9
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_7_1360623830.553" 
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 10
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_8_1360623830.553" 
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 11
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_9_1360623830.553" 
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 12
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_10_1360623830.553" 
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 13
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_11_1360623830.553" 
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 14
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_12_1360623830.553" 
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 15
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_13_1360623830.553" 
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 16
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_14_1360623830.553" 
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 17
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_15_1360623830.553" 
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 18
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_16_1360623830.553" 
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 19
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_17_1360623830.553" 
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 20
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_18_1360623830.553" 
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 21
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_19_1360623830.553" 
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 22
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_20_1360623830.553" 
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 23
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_21_1360623830.553" 
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 24
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_22_1360623830.553" 
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 25
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_120_1360623830.553"
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 26
    $P5001."set_static_lexpad_value"("NFAType", $P5002)
    .const "LexInfo" $P5003 = "cuid_120_1360623830.553"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_139_1360623830.553"
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 26
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_139_1360623830.553"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_139_1360623830.553"
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 26
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_139_1360623830.553"
    $P5004 = $P5003."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_23_1360623830.553" 
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 27
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_24_1360623830.553" 
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 28
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_25_1360623830.553" 
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 29
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_26_1360623830.553" 
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 30
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_27_1360623830.553" 
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 31
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_120_1360623830.553"
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 3
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_120_1360623830.553"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_120_1360623830.553"
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 3
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_120_1360623830.553"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_144_1360623830.553"
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 32
    $P5001."set_static_lexpad_value"("ParseShared", $P5002)
    .const "LexInfo" $P5003 = "cuid_144_1360623830.553"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_145_1360623830.553"
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 32
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_145_1360623830.553"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_145_1360623830.553"
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 32
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_145_1360623830.553"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_144_1360623830.553"
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 33
    $P5001."set_static_lexpad_value"("NQPCursorRole", $P5002)
    .const "LexInfo" $P5003 = "cuid_144_1360623830.553"
    $P5004 = $P5003."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_28_1360623830.553" 
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 34
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_29_1360623830.553" 
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 35
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_30_1360623830.553" 
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 36
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_31_1360623830.553" 
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 37
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_32_1360623830.553" 
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 38
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_33_1360623830.553" 
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 39
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_34_1360623830.553" 
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 40
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_35_1360623830.553" 
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 41
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_36_1360623830.553" 
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 42
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_37_1360623830.553" 
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 43
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_38_1360623830.553" 
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 44
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_39_1360623830.553" 
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 45
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_40_1360623830.553" 
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 46
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_41_1360623830.553" 
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 47
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_42_1360623830.553" 
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 48
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_43_1360623830.553" 
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 49
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_44_1360623830.553" 
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 50
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_45_1360623830.553" 
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 51
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_46_1360623830.553" 
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 52
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_47_1360623830.553" 
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 53
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_48_1360623830.553" 
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 54
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_49_1360623830.553" 
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 55
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_50_1360623830.553" 
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 56
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_51_1360623830.553" 
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 57
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_52_1360623830.553" 
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 58
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_53_1360623830.553" 
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 59
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_54_1360623830.553" 
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 60
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_55_1360623830.553" 
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 61
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_56_1360623830.553" 
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 62
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_57_1360623830.553" 
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 63
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_58_1360623830.553" 
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 64
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_59_1360623830.553" 
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 65
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_60_1360623830.553" 
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 66
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_61_1360623830.553" 
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 67
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_62_1360623830.553" 
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 68
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_63_1360623830.553" 
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 69
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_64_1360623830.553" 
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 70
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_65_1360623830.553" 
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 71
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_66_1360623830.553" 
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 72
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_67_1360623830.553" 
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 73
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_68_1360623830.553" 
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 74
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_69_1360623830.553" 
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 75
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_70_1360623830.553" 
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 76
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_71_1360623830.553" 
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 77
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_72_1360623830.553" 
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 78
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_73_1360623830.553" 
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 79
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_74_1360623830.553" 
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 80
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_75_1360623830.553" 
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 81
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_76_1360623830.553" 
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 82
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_77_1360623830.553" 
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 83
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_78_1360623830.553" 
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 84
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_79_1360623830.553" 
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 85
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_80_1360623830.553" 
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 86
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_80_1360623830.553"
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 33
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_80_1360623830.553"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_80_1360623830.553"
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 33
    $P5001."set_static_lexpad_value"("$?ROLE", $P5002)
    .const "LexInfo" $P5003 = "cuid_80_1360623830.553"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_144_1360623830.553"
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 87
    $P5001."set_static_lexpad_value"("NQPMatch", $P5002)
    .const "LexInfo" $P5003 = "cuid_144_1360623830.553"
    $P5004 = $P5003."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_81_1360623830.553" 
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 88
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_82_1360623830.553" 
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 89
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_83_1360623830.553" 
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 90
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_84_1360623830.553" 
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 91
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_85_1360623830.553" 
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 92
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_86_1360623830.553" 
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 93
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_87_1360623830.553" 
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 94
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_88_1360623830.553" 
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 95
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_89_1360623830.553" 
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 96
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_90_1360623830.553" 
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 97
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_91_1360623830.553" 
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 98
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_92_1360623830.553" 
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 99
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_146_1360623830.553"
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 87
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_146_1360623830.553"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_146_1360623830.553"
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 87
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_146_1360623830.553"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_144_1360623830.553"
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 100
    $P5001."set_static_lexpad_value"("NQPCursor", $P5002)
    .const "LexInfo" $P5003 = "cuid_144_1360623830.553"
    $P5004 = $P5003."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_93_1360623830.553" 
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 101
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_94_1360623830.553" 
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 102
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_95_1360623830.553" 
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 103
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_96_1360623830.553" 
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 104
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_97_1360623830.553" 
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 105
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_152_1360623830.553"
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 100
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_152_1360623830.553"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_152_1360623830.553"
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 100
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_152_1360623830.553"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_144_1360623830.553"
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 106
    $P5001."set_static_lexpad_value"("NQPRegexMethod", $P5002)
    .const "LexInfo" $P5003 = "cuid_144_1360623830.553"
    $P5004 = $P5003."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_116_1360623830.553" 
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 107
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_117_1360623830.553" 
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 108
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_118_1360623830.553" 
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 109
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_162_1360623830.553"
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 106
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_162_1360623830.553"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_162_1360623830.553"
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 106
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_162_1360623830.553"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_144_1360623830.553"
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 110
    $P5001."set_static_lexpad_value"("NQPRegex", $P5002)
    .const "LexInfo" $P5003 = "cuid_144_1360623830.553"
    $P5004 = $P5003."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_119_1360623830.553" 
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 111
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_163_1360623830.553"
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 110
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_163_1360623830.553"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_163_1360623830.553"
    nqp_get_sc_object $P5002, "665045AF806B9CD2501FCBA6F06D94BEA1925B5C-1360623830.578", 110
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_163_1360623830.553"
    $P5004 = $P5003."finish_static_lexpad"()
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_164_1360623830.553") :anon :lex :outer("cuid_165_1360623830.553")
.annotate 'file', "src\\stage2\\QRegex.nqp"
    new $P5001, 'ResizablePMCArray'
    .const 'Sub' $P5002 = "cuid_1_1360623830.553" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_2_1360623830.553" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_3_1360623830.553" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_4_1360623830.553" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_5_1360623830.553" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_6_1360623830.553" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_7_1360623830.553" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_8_1360623830.553" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_9_1360623830.553" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_10_1360623830.553" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_11_1360623830.553" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_12_1360623830.553" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_13_1360623830.553" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_14_1360623830.553" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_15_1360623830.553" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_16_1360623830.553" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_17_1360623830.553" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_18_1360623830.553" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_19_1360623830.553" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_20_1360623830.553" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_21_1360623830.553" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_22_1360623830.553" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_23_1360623830.553" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_24_1360623830.553" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_25_1360623830.553" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_26_1360623830.553" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_27_1360623830.553" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_28_1360623830.553" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_29_1360623830.553" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_30_1360623830.553" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_31_1360623830.553" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_32_1360623830.553" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_33_1360623830.553" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_34_1360623830.553" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_35_1360623830.553" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_36_1360623830.553" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_37_1360623830.553" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_38_1360623830.553" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_39_1360623830.553" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_40_1360623830.553" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_41_1360623830.553" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_42_1360623830.553" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_43_1360623830.553" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_44_1360623830.553" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_45_1360623830.553" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_46_1360623830.553" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_47_1360623830.553" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_48_1360623830.553" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_49_1360623830.553" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_50_1360623830.553" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_51_1360623830.553" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_52_1360623830.553" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_53_1360623830.553" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_54_1360623830.553" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_55_1360623830.553" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_56_1360623830.553" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_57_1360623830.553" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_58_1360623830.553" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_59_1360623830.553" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_60_1360623830.553" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_61_1360623830.553" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_62_1360623830.553" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_63_1360623830.553" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_64_1360623830.553" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_65_1360623830.553" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_66_1360623830.553" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_67_1360623830.553" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_68_1360623830.553" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_69_1360623830.553" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_70_1360623830.553" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_71_1360623830.553" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_72_1360623830.553" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_73_1360623830.553" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_74_1360623830.553" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_75_1360623830.553" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_76_1360623830.553" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_77_1360623830.553" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_78_1360623830.553" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_79_1360623830.553" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_80_1360623830.553" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_81_1360623830.553" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_82_1360623830.553" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_83_1360623830.553" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_84_1360623830.553" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_85_1360623830.553" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_86_1360623830.553" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_87_1360623830.553" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_88_1360623830.553" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_89_1360623830.553" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_90_1360623830.553" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_91_1360623830.553" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_92_1360623830.553" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_93_1360623830.553" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_94_1360623830.553" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_95_1360623830.553" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_96_1360623830.553" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_97_1360623830.553" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_116_1360623830.553" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_117_1360623830.553" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_118_1360623830.553" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_119_1360623830.553" 
    push $P5001, $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_166_1360623830.553") :load
.annotate 'file', "src\\stage2\\QRegex.nqp"
    .const 'Sub' $P5001 = "cuid_144_1360623830.553" 
    $P5002 = $P5001()
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_167_1360623830.553") :main
.annotate 'file', "src\\stage2\\QRegex.nqp"
    .param pmc ARGS :slurpy 
    .const 'Sub' $P5001 = "cuid_144_1360623830.553" 
    $P5002 = $P5001(ARGS :flat)
    .return ($P5002) 
.end