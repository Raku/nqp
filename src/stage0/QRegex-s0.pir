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
.sub "" :subid("cuid_141_1360432433.757") :anon :lex
.annotate 'file', "src\\stage2\\QRegex.nqp"
    .param pmc _lex_param_0 :slurpy 
    .const 'Sub' $P5026 = 'cuid_118_1360432433.757' 
    capture_lex $P5026 
    .const 'Sub' $P5026 = 'cuid_142_1360432433.757' 
    capture_lex $P5026 
    .const 'Sub' $P5026 = 'cuid_78_1360432433.757' 
    capture_lex $P5026 
    .const 'Sub' $P5026 = 'cuid_143_1360432433.757' 
    capture_lex $P5026 
    .const 'Sub' $P5026 = 'cuid_149_1360432433.757' 
    capture_lex $P5026 
    .const 'Sub' $P5026 = 'cuid_159_1360432433.757' 
    capture_lex $P5026 
    .const 'Sub' $P5026 = 'cuid_160_1360432433.757' 
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
.annotate 'line', 470
.annotate 'line', 471
    nqp_get_sc_object $P5001, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 9
    nqp_get_sc_object $P5004, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 0
    nqp_get_package_through_who $P5003, $P5004, "QRegex"
    get_who $P5002, $P5003
    set fb_tmp_18, $P5002
    repr_defined $I5001, fb_tmp_18
    unless $I5001 goto if139_else297 
    set $P5005, fb_tmp_18["NFA"]
    set $P5007, $P5005
    goto if139_end298
  if139_else297:
    null $P5006
    set $P5007, $P5006
  if139_end298:
    unless_null $P5007, vivi_140299
    nqp_get_sc_object $P5008, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5007, $P5008
  vivi_140299:
    $P5001."SET_NFA_TYPE"($P5007)
    find_dynamic_lex $P5009, "$*CTXSAVE"
    set ctxsave, $P5009
    isnull $I5002, ctxsave
    if $I5002 goto unless141_end301 
    can $I5003, ctxsave, "ctxsave"
    box $P5012, $I5003
    set $P5011, $P5012
    unless $I5003 goto if142_end303 
    $P5010 = ctxsave."ctxsave"()
    set $P5011, $P5010
  if142_end303:
  unless141_end301:
.annotate 'line', 1
    .const 'Sub' $P5013 = 'cuid_118_1360432433.757' 
    capture_lex $P5013
    $P5014 = $P5013()
    .const 'Sub' $P5015 = 'cuid_142_1360432433.757' 
    capture_lex $P5015
    $P5016 = $P5015()
    .const 'Sub' $P5017 = 'cuid_78_1360432433.757' 
    capture_lex $P5017
    .const 'Sub' $P5018 = 'cuid_143_1360432433.757' 
    capture_lex $P5018
    $P5019 = $P5018()
    .const 'Sub' $P5020 = 'cuid_149_1360432433.757' 
    capture_lex $P5020
    $P5021 = $P5020()
    .const 'Sub' $P5022 = 'cuid_159_1360432433.757' 
    capture_lex $P5022
    $P5023 = $P5022()
    .const 'Sub' $P5024 = 'cuid_160_1360432433.757' 
    capture_lex $P5024
    $P5025 = $P5024()
    .return () 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_118_1360432433.757") :anon :lex :outer("cuid_141_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 7
    .const 'Sub' $P5059 = 'cuid_1_1360432433.757' 
    capture_lex $P5059 
    .const 'Sub' $P5059 = 'cuid_2_1360432433.757' 
    capture_lex $P5059 
    .const 'Sub' $P5059 = 'cuid_3_1360432433.757' 
    capture_lex $P5059 
    .const 'Sub' $P5059 = 'cuid_4_1360432433.757' 
    capture_lex $P5059 
    .const 'Sub' $P5059 = 'cuid_5_1360432433.757' 
    capture_lex $P5059 
    .const 'Sub' $P5059 = 'cuid_6_1360432433.757' 
    capture_lex $P5059 
    .const 'Sub' $P5059 = 'cuid_7_1360432433.757' 
    capture_lex $P5059 
    .const 'Sub' $P5059 = 'cuid_8_1360432433.757' 
    capture_lex $P5059 
    .const 'Sub' $P5059 = 'cuid_9_1360432433.757' 
    capture_lex $P5059 
    .const 'Sub' $P5059 = 'cuid_10_1360432433.757' 
    capture_lex $P5059 
    .const 'Sub' $P5059 = 'cuid_11_1360432433.757' 
    capture_lex $P5059 
    .const 'Sub' $P5059 = 'cuid_12_1360432433.757' 
    capture_lex $P5059 
    .const 'Sub' $P5059 = 'cuid_13_1360432433.757' 
    capture_lex $P5059 
    .const 'Sub' $P5059 = 'cuid_14_1360432433.757' 
    capture_lex $P5059 
    .const 'Sub' $P5059 = 'cuid_15_1360432433.757' 
    capture_lex $P5059 
    .const 'Sub' $P5059 = 'cuid_16_1360432433.757' 
    capture_lex $P5059 
    .const 'Sub' $P5059 = 'cuid_17_1360432433.757' 
    capture_lex $P5059 
    .const 'Sub' $P5059 = 'cuid_18_1360432433.757' 
    capture_lex $P5059 
    .const 'Sub' $P5059 = 'cuid_19_1360432433.757' 
    capture_lex $P5059 
    .const 'Sub' $P5059 = 'cuid_20_1360432433.757' 
    capture_lex $P5059 
    .const 'Sub' $P5059 = 'cuid_21_1360432433.757' 
    capture_lex $P5059 
    .const 'Sub' $P5059 = 'cuid_22_1360432433.757' 
    capture_lex $P5059 
    .const 'Sub' $P5059 = 'cuid_23_1360432433.757' 
    capture_lex $P5059 
    .const 'Sub' $P5059 = 'cuid_24_1360432433.757' 
    capture_lex $P5059 
    .const 'Sub' $P5059 = 'cuid_25_1360432433.757' 
    capture_lex $P5059 
    .const 'Sub' $P5059 = 'cuid_26_1360432433.757' 
    capture_lex $P5059 
    .const 'Sub' $P5059 = 'cuid_27_1360432433.757' 
    capture_lex $P5059 
    .lex "%cclass_code", $P101 
    .lex "$?PACKAGE", $P102 
    .lex "$?CLASS", $P103 
    new $P5001, 'Hash'
    set $P101, $P5001
.annotate 'line', 87
    box $P5002, .CCLASS_ANY
    set $P101["."], $P5002
    box $P5003, .CCLASS_NUMERIC
    set $P101["d"], $P5003
    box $P5004, .CCLASS_WHITESPACE
    set $P101["s"], $P5004
    box $P5005, .CCLASS_WORD
    set $P101["w"], $P5005
    box $P5006, .CCLASS_NEWLINE
    set $P101["n"], $P5006
    box $P5007, .CCLASS_NEWLINE
    set $P101["nl"], $P5007
.annotate 'line', 7
    get_who $P5008, $P102
    box $P5009, 0
    set $P5008["$EDGE_FATE"], $P5009
    get_who $P5010, $P102
    box $P5011, 1
    set $P5010["$EDGE_EPSILON"], $P5011
    get_who $P5012, $P102
    box $P5013, 2
    set $P5012["$EDGE_CODEPOINT"], $P5013
    get_who $P5014, $P102
    box $P5015, 3
    set $P5014["$EDGE_CODEPOINT_NEG"], $P5015
    get_who $P5016, $P102
    box $P5017, 4
    set $P5016["$EDGE_CHARCLASS"], $P5017
    get_who $P5018, $P102
    box $P5019, 5
    set $P5018["$EDGE_CHARCLASS_NEG"], $P5019
    get_who $P5020, $P102
    box $P5021, 6
    set $P5020["$EDGE_CHARLIST"], $P5021
    get_who $P5022, $P102
    box $P5023, 7
    set $P5022["$EDGE_CHARLIST_NEG"], $P5023
    get_who $P5024, $P102
    box $P5025, 8
    set $P5024["$EDGE_SUBRULE"], $P5025
    get_who $P5026, $P102
    box $P5027, 9
    set $P5026["$EDGE_CODEPOINT_I"], $P5027
    get_who $P5028, $P102
    box $P5029, 10
    set $P5028["$EDGE_CODEPOINT_I_NEG"], $P5029
    get_who $P5030, $P102
    box $P5031, 11
    set $P5030["$EDGE_GENERIC_VAR"], $P5031
    .const 'Sub' $P5032 = 'cuid_1_1360432433.757' 
    capture_lex $P5032
    .const 'Sub' $P5033 = 'cuid_2_1360432433.757' 
    capture_lex $P5033
    .const 'Sub' $P5034 = 'cuid_3_1360432433.757' 
    capture_lex $P5034
    .const 'Sub' $P5035 = 'cuid_4_1360432433.757' 
    capture_lex $P5035
    .const 'Sub' $P5036 = 'cuid_5_1360432433.757' 
    capture_lex $P5036
    .const 'Sub' $P5037 = 'cuid_6_1360432433.757' 
    capture_lex $P5037
    .const 'Sub' $P5038 = 'cuid_7_1360432433.757' 
    capture_lex $P5038
    .const 'Sub' $P5039 = 'cuid_8_1360432433.757' 
    capture_lex $P5039
    .const 'Sub' $P5040 = 'cuid_9_1360432433.757' 
    capture_lex $P5040
    .const 'Sub' $P5041 = 'cuid_10_1360432433.757' 
    capture_lex $P5041
    .const 'Sub' $P5042 = 'cuid_11_1360432433.757' 
    capture_lex $P5042
    .const 'Sub' $P5043 = 'cuid_12_1360432433.757' 
    capture_lex $P5043
    .const 'Sub' $P5044 = 'cuid_13_1360432433.757' 
    capture_lex $P5044
    .const 'Sub' $P5045 = 'cuid_14_1360432433.757' 
    capture_lex $P5045
    .const 'Sub' $P5046 = 'cuid_15_1360432433.757' 
    capture_lex $P5046
    .const 'Sub' $P5047 = 'cuid_16_1360432433.757' 
    capture_lex $P5047
    .const 'Sub' $P5048 = 'cuid_17_1360432433.757' 
    capture_lex $P5048
    .const 'Sub' $P5049 = 'cuid_18_1360432433.757' 
    capture_lex $P5049
    .const 'Sub' $P5050 = 'cuid_19_1360432433.757' 
    capture_lex $P5050
    .const 'Sub' $P5051 = 'cuid_20_1360432433.757' 
    capture_lex $P5051
    .const 'Sub' $P5052 = 'cuid_21_1360432433.757' 
    capture_lex $P5052
    .const 'Sub' $P5053 = 'cuid_22_1360432433.757' 
    capture_lex $P5053
    .const 'Sub' $P5054 = 'cuid_23_1360432433.757' 
    capture_lex $P5054
    .const 'Sub' $P5055 = 'cuid_24_1360432433.757' 
    capture_lex $P5055
    .const 'Sub' $P5056 = 'cuid_25_1360432433.757' 
    capture_lex $P5056
    .const 'Sub' $P5057 = 'cuid_26_1360432433.757' 
    capture_lex $P5057
    .const 'Sub' $P5058 = 'cuid_27_1360432433.757' 
    capture_lex $P5058
    .return ($P5058) 
.end
.HLL "nqp"
.namespace []
.sub "new" :subid("cuid_1_1360432433.757") :anon :lex :outer("cuid_118_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 25
    .param pmc _lex_param_0 
    .lex "$new", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P101, $P5001
.annotate 'line', 26
    nqp_decontainerize $P5002, _lex_param_0
    new $P5003, 'ResizablePMCArray'
    $P5004 = $P5002."bless"($P5003 :named("states"), 0 :named("edges"))
    set $P101, $P5004
.annotate 'line', 27
    $P101."addstate"()
.annotate 'line', 28
    $P101."addstate"()
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "from_saved" :subid("cuid_2_1360432433.757") :anon :lex :outer("cuid_118_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 32
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$saved", _lex_param_1 
.annotate 'line', 33
    nqp_decontainerize $P5001, _lex_param_0
    $P5002 = $P5001."bless"(_lex_param_1 :named("states"), 1 :named("edges"))
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "addstate" :subid("cuid_3_1360432433.757") :anon :lex :outer("cuid_118_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 36
    .param pmc _lex_param_0 
    .lex "$id", $I101 
    .lex "self", _lex_param_0 
    set $I101, 0
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 3
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!states"
    set $N5001, $P5003
    set $I5001, $N5001
    set $I101, $I5001
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 3
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!states"
    new $P5007, 'ResizablePMCArray'
    set $P5006[$I101], $P5007
    .return ($I101) 
.end
.HLL "nqp"
.namespace []
.sub "addedge" :subid("cuid_4_1360432433.757") :anon :lex :outer("cuid_118_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 42
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
    if haz_param_9, default316
    box $P5024, 1
    set _lex_param_5, $P5024
  default316:
    nqp_get_sc_object $P5001, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P101, $P5001
    unless _lex_param_5 goto if143_end305 
    nqp_decontainerize $P5002, _lex_param_0
    nqp_get_sc_object $P5003, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 3
    box $P5004, 1
    repr_bind_attr_obj $P5002, $P5003, "$!edges", $P5004
  if143_end305:
    set $N5001, _lex_param_2
    set $N5002, 0
    islt $I5001, $N5001, $N5002
    unless $I5001 goto if144_end307 
.annotate 'line', 44
    nqp_decontainerize $P5005, _lex_param_0
    $P5006 = $P5005."addstate"()
    set $I5002, $P5006
    set _lex_param_2, $I5002
  if144_end307:
    nqp_decontainerize $P5007, _lex_param_0
    nqp_get_sc_object $P5008, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 3
    repr_get_attr_obj $P5009, $P5007, $P5008, "$!states"
    set fb_tmp_19, $P5009
    repr_defined $I5003, fb_tmp_19
    unless $I5003 goto if145_else308 
    set $P5010, fb_tmp_19[_lex_param_1]
    set $P5012, $P5010
    goto if145_end309
  if145_else308:
    null $P5011
    set $P5012, $P5011
  if145_end309:
    unless_null $P5012, vivi_146310
    nqp_get_sc_object $P5013, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5012, $P5013
  vivi_146310:
    set $P101, $P5012
    push $P101, _lex_param_3
    nqp_get_sc_object $P5016, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 0
    nqp_get_package_through_who $P5015, $P5016, "QAST"
    get_who $P5014, $P5015
    set fb_tmp_20, $P5014
    repr_defined $I5005, fb_tmp_20
    unless $I5005 goto if148_else313 
    set $P5017, fb_tmp_20["SVal"]
    set $P5019, $P5017
    goto if148_end314
  if148_else313:
    null $P5018
    set $P5019, $P5018
  if148_end314:
    unless_null $P5019, vivi_149315
    nqp_get_sc_object $P5020, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5019, $P5020
  vivi_149315:
    type_check $I5004, _lex_param_4, $P5019
    unless $I5004 goto if147_else311 
.annotate 'line', 47
    $P5021 = _lex_param_4."value"()
    set $P5022, $P5021
    goto if147_end312
  if147_else311:
    set $P5022, _lex_param_4
  if147_end312:
    push $P101, $P5022
    box $P5023, _lex_param_2
    push $P101, $P5023
    .return (_lex_param_2) 
.end
.HLL "nqp"
.namespace []
.sub "states" :subid("cuid_5_1360432433.757") :anon :lex :outer("cuid_118_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 52
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 3
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!states"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "addnode" :subid("cuid_6_1360432433.757") :anon :lex :outer("cuid_118_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 54
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :named("vars_as_generic") :optional 
    .param int haz_param_10 :opt_flag 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$*vars_as_generic", _lex_param_2 
    if haz_param_10, default317
    nqp_get_sc_object $P5003, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set _lex_param_2, $P5003
  default317:
.annotate 'line', 55
    nqp_decontainerize $P5001, _lex_param_0
    $P5001."regex_nfa"(_lex_param_1, 1, 0)
    nqp_decontainerize $P5002, _lex_param_0
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "regex_nfa" :subid("cuid_7_1360432433.757") :anon :lex :outer("cuid_118_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 59
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param int _lex_param_2 
    .param int _lex_param_3 
    .lex "$method", $P101 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$from", _lex_param_2 
    .lex "$to", _lex_param_3 
    nqp_get_sc_object $P5001, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P101, $P5001
.annotate 'line', 60
    $P5003 = _lex_param_1."rxtype"()
    set $P5002, $P5003
    defined $I5001, $P5002
    if $I5001, defor318
    box $P5004, "concat"
    set $P5002, $P5004
  defor318:
    set $P101, $P5002
.annotate 'line', 61
    nqp_decontainerize $P5006, _lex_param_0
    get_how $P5005, $P5006
    nqp_decontainerize $P5007, _lex_param_0
    $P5008 = $P5005."can"($P5007, $P101)
    unless $P5008 goto if150_else319 
.annotate 'line', 62
    nqp_decontainerize $P5009, _lex_param_0
    set $S5001, $P101
    $P5010 = $P5009.$S5001(_lex_param_1, _lex_param_2, _lex_param_3)
    set $P5013, $P5010
    goto if150_end320
  if150_else319:
.annotate 'line', 63
    nqp_decontainerize $P5011, _lex_param_0
    $P5012 = $P5011."fate"(_lex_param_1, _lex_param_2, _lex_param_3)
    set $P5013, $P5012
  if150_end320:
    .return ($P5013) 
.end
.HLL "nqp"
.namespace []
.sub "fate" :subid("cuid_8_1360432433.757") :anon :lex :outer("cuid_118_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 66
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param int _lex_param_2 
    .param int _lex_param_3 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$from", _lex_param_2 
    .lex "$to", _lex_param_3 
    .local pmc fb_tmp_21 
.annotate 'line', 67
    nqp_decontainerize $P5001, _lex_param_0
    find_lex $P5003, "$?PACKAGE"
    get_who $P5002, $P5003
    set fb_tmp_21, $P5002
    repr_defined $I5001, fb_tmp_21
    unless $I5001 goto if151_else321 
    set $P5004, fb_tmp_21["$EDGE_FATE"]
    set $P5006, $P5004
    goto if151_end322
  if151_else321:
    null $P5005
    set $P5006, $P5005
  if151_end322:
    unless_null $P5006, vivi_152323
    nqp_get_sc_object $P5007, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5006, $P5007
  vivi_152323:
    $P5008 = $P5001."addedge"(_lex_param_2, 0, $P5006, 0, 0 :named("newedge"))
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "alt" :subid("cuid_9_1360432433.757") :anon :lex :outer("cuid_118_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 70
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param int _lex_param_2 
    .param int _lex_param_3 
    .const 'Sub' $P5007 = 'cuid_119_1360432433.757' 
    capture_lex $P5007 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$from", _lex_param_2 
    .lex "$to", _lex_param_3 
.annotate 'line', 71
    $P5004 = _lex_param_1."list"()
    set $P5001, $P5004
    iter $P5003, $P5004
  for_next328:
    unless $P5003, for_done330
    shift $P5006, $P5003
  for_redo329:
    .const 'Sub' $P5005 = 'cuid_119_1360432433.757' 
    capture_lex $P5005
    $P5001 = $P5005($P5006)
    goto for_next328
  for_done330:
    .return (_lex_param_3) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_119_1360432433.757") :anon :lex :outer("cuid_9_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 71
    .param pmc _lex_param_0 
    .lex "$st", $I101 
    .lex "$_", _lex_param_0 
    set $I101, 0
.annotate 'line', 72
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
    unless $I5004 goto if154_end327 
    set $N5003, $I101
    set $N5004, 0
    isgt $I5006, $N5003, $N5004
    set $I5007, $I5006
  if154_end327:
    set $I5008, $I5007
    unless $I5007 goto if153_end325 
    store_lex "$to", $I101
    set $I5008, $I101
  if153_end325:
    .return ($I5008) 
.end
.HLL "nqp"
.namespace []
.sub "anchor" :subid("cuid_10_1360432433.757") :anon :lex :outer("cuid_118_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 78
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param int _lex_param_2 
    .param int _lex_param_3 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$from", _lex_param_2 
    .lex "$to", _lex_param_3 
    .local pmc fb_tmp_22 
.annotate 'line', 79
    nqp_decontainerize $P5001, _lex_param_0
    find_lex $P5003, "$?PACKAGE"
    get_who $P5002, $P5003
    set fb_tmp_22, $P5002
    repr_defined $I5001, fb_tmp_22
    unless $I5001 goto if155_else331 
    set $P5004, fb_tmp_22["$EDGE_EPSILON"]
    set $P5006, $P5004
    goto if155_end332
  if155_else331:
    null $P5005
    set $P5006, $P5005
  if155_end332:
    unless_null $P5006, vivi_156333
    nqp_get_sc_object $P5007, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5006, $P5007
  vivi_156333:
    $P5008 = $P5001."addedge"(_lex_param_2, _lex_param_3, $P5006, 0)
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "dba" :subid("cuid_11_1360432433.757") :anon :lex :outer("cuid_118_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 82
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param int _lex_param_2 
    .param int _lex_param_3 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$from", _lex_param_2 
    .lex "$to", _lex_param_3 
    .local pmc fb_tmp_23 
.annotate 'line', 83
    nqp_decontainerize $P5001, _lex_param_0
    find_lex $P5003, "$?PACKAGE"
    get_who $P5002, $P5003
    set fb_tmp_23, $P5002
    repr_defined $I5001, fb_tmp_23
    unless $I5001 goto if157_else334 
    set $P5004, fb_tmp_23["$EDGE_EPSILON"]
    set $P5006, $P5004
    goto if157_end335
  if157_else334:
    null $P5005
    set $P5006, $P5005
  if157_end335:
    unless_null $P5006, vivi_158336
    nqp_get_sc_object $P5007, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5006, $P5007
  vivi_158336:
    $P5008 = $P5001."addedge"(_lex_param_2, _lex_param_3, $P5006, 0)
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "cclass" :subid("cuid_12_1360432433.757") :anon :lex :outer("cuid_118_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 96
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
.annotate 'line', 97
    nqp_decontainerize $P5001, _lex_param_0
    find_lex $P5003, "$?PACKAGE"
    get_who $P5002, $P5003
    set fb_tmp_24, $P5002
    repr_defined $I5001, fb_tmp_24
    unless $I5001 goto if159_else337 
    set $P5004, fb_tmp_24["$EDGE_CHARCLASS"]
    set $P5006, $P5004
    goto if159_end338
  if159_else337:
    null $P5005
    set $P5006, $P5005
  if159_end338:
    unless_null $P5006, vivi_160339
    nqp_get_sc_object $P5007, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5006, $P5007
  vivi_160339:
    set $N5002, $P5006
    $P5008 = _lex_param_1."negate"()
    istrue $I5002, $P5008
    set $N5003, $I5002
    add $N5001, $N5002, $N5003
    find_lex $P5009, "%cclass_code"
    set fb_tmp_25, $P5009
    repr_defined $I5003, fb_tmp_25
    unless $I5003 goto if161_else340 
.annotate 'line', 98
    $P5011 = _lex_param_1."subtype"()
    set $S5002, $P5011
    downcase $S5001, $S5002
    set $P5010, fb_tmp_25[$S5001]
    set $P5013, $P5010
    goto if161_end341
  if161_else340:
    null $P5012
    set $P5013, $P5012
  if161_end341:
    unless_null $P5013, vivi_162342
    nqp_get_sc_object $P5014, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5013, $P5014
  vivi_162342:
    $P5015 = $P5001."addedge"(_lex_param_2, _lex_param_3, $N5001, $P5013)
    .return ($P5015) 
.end
.HLL "nqp"
.namespace []
.sub "concat" :subid("cuid_13_1360432433.757") :anon :lex :outer("cuid_118_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 101
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
.annotate 'line', 103
    $P5001 = _lex_param_1."list"()
    set $N5002, $P5001
    set $N5003, 1
    sub $N5001, $N5002, $N5003
    set $I5001, $N5001
    set $I102, $I5001
  while163_test343:
    set $N5004, _lex_param_2
    set $N5005, 0
    isgt $I5002, $N5004, $N5005
    set $I5004, $I5002
    unless $I5002 goto if164_end349 
    set $N5006, $I101
    set $N5007, $I102
    islt $I5003, $N5006, $N5007
    set $I5004, $I5003
  if164_end349:
    set $I5008, $I5004
    unless $I5004 goto while163_done347 
  while163_redo345:
.annotate 'line', 104
.annotate 'line', 105
    nqp_decontainerize $P5002, _lex_param_0
    set fb_tmp_26, _lex_param_1
    repr_defined $I5005, fb_tmp_26
    unless $I5005 goto if165_else350 
    set $P5003, fb_tmp_26[$I101]
    set $P5005, $P5003
    goto if165_end351
  if165_else350:
    null $P5004
    set $P5005, $P5004
  if165_end351:
    unless_null $P5005, vivi_166352
    nqp_get_sc_object $P5006, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5005, $P5006
  vivi_166352:
    $P5007 = $P5002."regex_nfa"($P5005, _lex_param_2, -1)
    set $I5006, $P5007
    set _lex_param_2, $I5006
    set $N5009, $I101
    set $N5010, 1
    add $N5008, $N5009, $N5010
    set $I5007, $N5008
    set $I101, $I5007
    set $I5008, $I101
    goto while163_test343 
  while163_done347:
    set $N5011, _lex_param_2
    set $N5012, 0
    isgt $I5009, $N5011, $N5012
    set $I5011, $I5009
    unless $I5009 goto if168_end356 
    set $N5013, $I102
    set $N5014, 0
    isge $I5010, $N5013, $N5014
    set $I5011, $I5010
  if168_end356:
    unless $I5011 goto if167_else353 
.annotate 'line', 108
    nqp_decontainerize $P5008, _lex_param_0
    set fb_tmp_27, _lex_param_1
    repr_defined $I5012, fb_tmp_27
    unless $I5012 goto if169_else357 
    set $P5009, fb_tmp_27[$I101]
    set $P5011, $P5009
    goto if169_end358
  if169_else357:
    null $P5010
    set $P5011, $P5010
  if169_end358:
    unless_null $P5011, vivi_170359
    nqp_get_sc_object $P5012, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5011, $P5012
  vivi_170359:
    $P5013 = $P5008."regex_nfa"($P5011, _lex_param_2, _lex_param_3)
    set $P5014, $P5013
    goto if167_end354
  if167_else353:
    box $P5015, _lex_param_3
    set $P5014, $P5015
  if167_end354:
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "enumcharlist" :subid("cuid_14_1360432433.757") :anon :lex :outer("cuid_118_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 111
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
    nqp_get_sc_object $P5001, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P101, $P5001
    set fb_tmp_28, _lex_param_1
    repr_defined $I5001, fb_tmp_28
    unless $I5001 goto if171_else360 
    set $P5002, fb_tmp_28[0]
    set $P5004, $P5002
    goto if171_end361
  if171_else360:
    null $P5003
    set $P5004, $P5003
  if171_end361:
    unless_null $P5004, vivi_172362
    nqp_get_sc_object $P5005, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5004, $P5005
  vivi_172362:
    set $P101, $P5004
.annotate 'line', 113
    $P5006 = _lex_param_1."subtype"()
    set $S5001, $P5006
    iseq $I5002, $S5001, "zerowidth"
    unless $I5002 goto if173_else363 
.annotate 'line', 114
    nqp_decontainerize $P5007, _lex_param_0
    find_lex $P5009, "$?PACKAGE"
    get_who $P5008, $P5009
    set fb_tmp_29, $P5008
    repr_defined $I5003, fb_tmp_29
    unless $I5003 goto if174_else365 
    set $P5010, fb_tmp_29["$EDGE_CHARLIST"]
    set $P5012, $P5010
    goto if174_end366
  if174_else365:
    null $P5011
    set $P5012, $P5011
  if174_end366:
    unless_null $P5012, vivi_175367
    nqp_get_sc_object $P5013, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5012, $P5013
  vivi_175367:
    set $N5002, $P5012
    $P5014 = _lex_param_1."negate"()
    istrue $I5004, $P5014
    set $N5003, $I5004
    add $N5001, $N5002, $N5003
    $P5015 = $P5007."addedge"(_lex_param_2, -1, $N5001, $P101)
    set $I5005, $P5015
    set _lex_param_2, $I5005
.annotate 'line', 115
    nqp_decontainerize $P5016, _lex_param_0
    find_lex $P5018, "$?PACKAGE"
    get_who $P5017, $P5018
    set fb_tmp_30, $P5017
    repr_defined $I5006, fb_tmp_30
    unless $I5006 goto if176_else368 
    set $P5019, fb_tmp_30["$EDGE_FATE"]
    set $P5021, $P5019
    goto if176_end369
  if176_else368:
    null $P5020
    set $P5021, $P5020
  if176_end369:
    unless_null $P5021, vivi_177370
    nqp_get_sc_object $P5022, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5021, $P5022
  vivi_177370:
    $P5023 = $P5016."addedge"(_lex_param_2, 0, $P5021, 0)
    set $P5033, $P5023
    goto if173_end364
  if173_else363:
.annotate 'line', 117
.annotate 'line', 118
    nqp_decontainerize $P5024, _lex_param_0
    find_lex $P5026, "$?PACKAGE"
    get_who $P5025, $P5026
    set fb_tmp_31, $P5025
    repr_defined $I5007, fb_tmp_31
    unless $I5007 goto if178_else371 
    set $P5027, fb_tmp_31["$EDGE_CHARLIST"]
    set $P5029, $P5027
    goto if178_end372
  if178_else371:
    null $P5028
    set $P5029, $P5028
  if178_end372:
    unless_null $P5029, vivi_179373
    nqp_get_sc_object $P5030, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5029, $P5030
  vivi_179373:
    set $N5005, $P5029
    $P5031 = _lex_param_1."negate"()
    istrue $I5008, $P5031
    set $N5006, $I5008
    add $N5004, $N5005, $N5006
    $P5032 = $P5024."addedge"(_lex_param_2, _lex_param_3, $N5004, $P101)
    set $P5033, $P5032
  if173_end364:
    .return ($P5033) 
.end
.HLL "nqp"
.namespace []
.sub "literal" :subid("cuid_15_1360432433.757") :anon :lex :outer("cuid_118_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 122
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param int _lex_param_2 
    .param int _lex_param_3 
    .const 'Sub' $P5020 = 'cuid_120_1360432433.757' 
    capture_lex $P5020 
    .const 'Sub' $P5020 = 'cuid_121_1360432433.757' 
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
    unless $I5002 goto if180_else374 
    set $P5001, fb_tmp_32[0]
    set $P5003, $P5001
    goto if180_end375
  if180_else374:
    null $P5002
    set $P5003, $P5002
  if180_end375:
    unless_null $P5003, vivi_181376
    nqp_get_sc_object $P5004, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5003, $P5004
  vivi_181376:
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
    unless $I5004 goto if182_else377 
.annotate 'line', 125
.annotate 'line', 126
    $P5005 = _lex_param_1."subtype"()
    set $S5002, $P5005
    iseq $I5005, $S5002, "ignorecase"
    unless $I5005 goto if183_else379 
    .const 'Sub' $P5006 = 'cuid_120_1360432433.757' 
    capture_lex $P5006
    $P5007 = $P5006()
    set $P5010, $P5007
    goto if183_end380
  if183_else379:
    .const 'Sub' $P5008 = 'cuid_121_1360432433.757' 
    capture_lex $P5008
    $P5009 = $P5008()
    set $P5010, $P5009
  if183_end380:
    set $P5019, $P5010
    goto if182_end378
  if182_else377:
.annotate 'line', 146
.annotate 'line', 147
    nqp_decontainerize $P5011, _lex_param_0
    find_lex $P5013, "$?PACKAGE"
    get_who $P5012, $P5013
    set fb_tmp_40, $P5012
    repr_defined $I5006, fb_tmp_40
    unless $I5006 goto if200_else412 
    set $P5014, fb_tmp_40["$EDGE_EPSILON"]
    set $P5016, $P5014
    goto if200_end413
  if200_else412:
    null $P5015
    set $P5016, $P5015
  if200_end413:
    unless_null $P5016, vivi_201414
    nqp_get_sc_object $P5017, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5016, $P5017
  vivi_201414:
    $P5018 = $P5011."addedge"(_lex_param_2, _lex_param_3, $P5016, 0)
    set $P5019, $P5018
  if182_end378:
    .return ($P5019) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_120_1360432433.757") :anon :lex :outer("cuid_15_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 126
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
    unless $I5001 goto if184_else381 
    set $P5002, fb_tmp_33[0]
    set $P5004, $P5002
    goto if184_end382
  if184_else381:
    null $P5003
    set $P5004, $P5003
  if184_end382:
    unless_null $P5004, vivi_185383
    nqp_get_sc_object $P5005, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5004, $P5005
  vivi_185383:
    set $S5002, $P5004
    downcase $S5001, $S5002
    set $S101, $S5001
    find_lex $P5006, "$node"
    set fb_tmp_34, $P5006
    repr_defined $I5002, fb_tmp_34
    unless $I5002 goto if186_else384 
    set $P5007, fb_tmp_34[0]
    set $P5009, $P5007
    goto if186_end385
  if186_else384:
    null $P5008
    set $P5009, $P5008
  if186_end385:
    unless_null $P5009, vivi_187386
    nqp_get_sc_object $P5010, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5009, $P5010
  vivi_187386:
    set $S5004, $P5009
    upcase $S5003, $S5004
    set $S102, $S5003
  while188_test387:
    find_lex $I5004, "$i"
    set $N5001, $I5004
    find_lex $I5005, "$litlen"
    set $N5002, $I5005
    islt $I5003, $N5001, $N5002
    set $I5015, $I5003
    unless $I5003 goto while188_done391 
  while188_redo389:
.annotate 'line', 129
.annotate 'line', 130
    find_lex $P5012, "self"
    nqp_decontainerize $P5011, $P5012
    find_lex $I5006, "$from"
    find_lex $P5014, "$?PACKAGE"
    get_who $P5013, $P5014
    set fb_tmp_35, $P5013
    repr_defined $I5007, fb_tmp_35
    unless $I5007 goto if189_else392 
    set $P5015, fb_tmp_35["$EDGE_CODEPOINT_I"]
    set $P5017, $P5015
    goto if189_end393
  if189_else392:
    null $P5016
    set $P5017, $P5016
  if189_end393:
    unless_null $P5017, vivi_190394
    nqp_get_sc_object $P5018, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5017, $P5018
  vivi_190394:
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
    goto while188_test387 
  while188_done391:
.annotate 'line', 134
    find_lex $P5024, "self"
    nqp_decontainerize $P5023, $P5024
    find_lex $I5016, "$from"
    find_lex $I5017, "$to"
    find_lex $P5026, "$?PACKAGE"
    get_who $P5025, $P5026
    set fb_tmp_36, $P5025
    repr_defined $I5018, fb_tmp_36
    unless $I5018 goto if191_else395 
    set $P5027, fb_tmp_36["$EDGE_CODEPOINT_I"]
    set $P5029, $P5027
    goto if191_end396
  if191_else395:
    null $P5028
    set $P5029, $P5028
  if191_end396:
    unless_null $P5029, vivi_192397
    nqp_get_sc_object $P5030, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5029, $P5030
  vivi_192397:
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
.sub "" :subid("cuid_121_1360432433.757") :anon :lex :outer("cuid_15_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 137
    .lex "$litconst", $S101 
    .local pmc fb_tmp_37 
    .local pmc fb_tmp_38 
    .local pmc fb_tmp_39 
    set $S101, ""
    find_lex $P5001, "$node"
    set fb_tmp_37, $P5001
    repr_defined $I5001, fb_tmp_37
    unless $I5001 goto if193_else398 
    set $P5002, fb_tmp_37[0]
    set $P5004, $P5002
    goto if193_end399
  if193_else398:
    null $P5003
    set $P5004, $P5003
  if193_end399:
    unless_null $P5004, vivi_194400
    nqp_get_sc_object $P5005, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5004, $P5005
  vivi_194400:
    set $S5001, $P5004
    set $S101, $S5001
  while195_test401:
    find_lex $I5003, "$i"
    set $N5001, $I5003
    find_lex $I5004, "$litlen"
    set $N5002, $I5004
    islt $I5002, $N5001, $N5002
    set $I5012, $I5002
    unless $I5002 goto while195_done405 
  while195_redo403:
.annotate 'line', 139
.annotate 'line', 140
    find_lex $P5007, "self"
    nqp_decontainerize $P5006, $P5007
    find_lex $I5005, "$from"
    find_lex $P5009, "$?PACKAGE"
    get_who $P5008, $P5009
    set fb_tmp_38, $P5008
    repr_defined $I5006, fb_tmp_38
    unless $I5006 goto if196_else406 
    set $P5010, fb_tmp_38["$EDGE_CODEPOINT"]
    set $P5012, $P5010
    goto if196_end407
  if196_else406:
    null $P5011
    set $P5012, $P5011
  if196_end407:
    unless_null $P5012, vivi_197408
    nqp_get_sc_object $P5013, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5012, $P5013
  vivi_197408:
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
    goto while195_test401 
  while195_done405:
.annotate 'line', 143
    find_lex $P5016, "self"
    nqp_decontainerize $P5015, $P5016
    find_lex $I5013, "$from"
    find_lex $I5014, "$to"
    find_lex $P5018, "$?PACKAGE"
    get_who $P5017, $P5018
    set fb_tmp_39, $P5017
    repr_defined $I5015, fb_tmp_39
    unless $I5015 goto if198_else409 
    set $P5019, fb_tmp_39["$EDGE_CODEPOINT"]
    set $P5021, $P5019
    goto if198_end410
  if198_else409:
    null $P5020
    set $P5021, $P5020
  if198_end410:
    unless_null $P5021, vivi_199411
    nqp_get_sc_object $P5022, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5021, $P5022
  vivi_199411:
    find_lex $I5017, "$i"
    ord $I5016, $S101, $I5017
    $P5023 = $P5015."addedge"($I5013, $I5014, $P5021, $I5016)
    .return ($P5023) 
.end
.HLL "nqp"
.namespace []
.sub "subrule" :subid("cuid_16_1360432433.757") :anon :lex :outer("cuid_118_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 151
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param int _lex_param_2 
    .param int _lex_param_3 
    .const 'Sub' $P5184 = 'cuid_122_1360432433.757' 
    capture_lex $P5184 
    .const 'Sub' $P5184 = 'cuid_123_1360432433.757' 
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
    nqp_get_sc_object $P5001, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P101, $P5001
.annotate 'line', 152
    $P5002 = _lex_param_1."subtype"()
    set $P101, $P5002
.annotate 'line', 153
    $P5003 = _lex_param_1."name"()
    set $S5001, $P5003
    iseq $I5001, $S5001, "before"
    set $I5003, $I5001
    unless $I5001 goto if203_end418 
    $P5004 = _lex_param_1."negate"()
    isfalse $I5002, $P5004
    set $I5003, $I5002
  if203_end418:
    unless $I5003 goto if202_else415 
    .const 'Sub' $P5005 = 'cuid_122_1360432433.757' 
    capture_lex $P5005
    $P5006 = $P5005()
    set $P5183, $P5006
    goto if202_end416
  if202_else415:
    set $S5002, $P101
    isne $I5004, $S5002, "zerowidth"
    set $I5017, $I5004
    unless $I5004 goto if211_end431 
.annotate 'line', 159
    $P5007 = _lex_param_1."name"()
    set $S5003, $P5007
    iseq $I5005, $S5003, "alpha"
    set $I5016, $I5005
    if $I5005 goto unless212_end433 
    set $S5004, $P101
    iseq $I5006, $S5004, "method"
    set $I5015, $I5006
    unless $I5006 goto if213_end435 
.annotate 'line', 161
    nqp_get_sc_object $P5010, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 0
    nqp_get_package_through_who $P5009, $P5010, "QAST"
    get_who $P5008, $P5009
    set fb_tmp_44, $P5008
    repr_defined $I5008, fb_tmp_44
    unless $I5008 goto if215_else438 
    set $P5011, fb_tmp_44["SVal"]
    set $P5013, $P5011
    goto if215_end439
  if215_else438:
    null $P5012
    set $P5013, $P5012
  if215_end439:
    unless_null $P5013, vivi_216440
    nqp_get_sc_object $P5014, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5013, $P5014
  vivi_216440:
    set fb_tmp_46, _lex_param_1
    repr_defined $I5010, fb_tmp_46
    unless $I5010 goto if218_else443 
    set $P5015, fb_tmp_46[0]
    set $P5017, $P5015
    goto if218_end444
  if218_else443:
    null $P5016
    set $P5017, $P5016
  if218_end444:
    unless_null $P5017, vivi_219445
    nqp_get_sc_object $P5018, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5017, $P5018
  vivi_219445:
    set fb_tmp_45, $P5017
    repr_defined $I5009, fb_tmp_45
    unless $I5009 goto if217_else441 
    set $P5019, fb_tmp_45[0]
    set $P5021, $P5019
    goto if217_end442
  if217_else441:
    null $P5020
    set $P5021, $P5020
  if217_end442:
    unless_null $P5021, vivi_220446
    nqp_get_sc_object $P5022, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5021, $P5022
  vivi_220446:
    $P5023 = $P5013."ACCEPTS"($P5021)
    unless $P5023 goto if214_else436 
    set fb_tmp_48, _lex_param_1
    repr_defined $I5012, fb_tmp_48
    unless $I5012 goto if222_else449 
    set $P5024, fb_tmp_48[0]
    set $P5026, $P5024
    goto if222_end450
  if222_else449:
    null $P5025
    set $P5026, $P5025
  if222_end450:
    unless_null $P5026, vivi_223451
    nqp_get_sc_object $P5027, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5026, $P5027
  vivi_223451:
    set fb_tmp_47, $P5026
    repr_defined $I5011, fb_tmp_47
    unless $I5011 goto if221_else447 
    set $P5028, fb_tmp_47[0]
    set $P5030, $P5028
    goto if221_end448
  if221_else447:
    null $P5029
    set $P5030, $P5029
  if221_end448:
    unless_null $P5030, vivi_224452
    nqp_get_sc_object $P5031, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5030, $P5031
  vivi_224452:
    $P5032 = $P5030."value"()
    set $P5041, $P5032
    goto if214_end437
  if214_else436:
    set fb_tmp_50, _lex_param_1
    repr_defined $I5014, fb_tmp_50
    unless $I5014 goto if226_else455 
    set $P5033, fb_tmp_50[0]
    set $P5035, $P5033
    goto if226_end456
  if226_else455:
    null $P5034
    set $P5035, $P5034
  if226_end456:
    unless_null $P5035, vivi_227457
    nqp_get_sc_object $P5036, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5035, $P5036
  vivi_227457:
    set fb_tmp_49, $P5035
    repr_defined $I5013, fb_tmp_49
    unless $I5013 goto if225_else453 
    set $P5037, fb_tmp_49[0]
    set $P5039, $P5037
    goto if225_end454
  if225_else453:
    null $P5038
    set $P5039, $P5038
  if225_end454:
    unless_null $P5039, vivi_228458
    nqp_get_sc_object $P5040, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5039, $P5040
  vivi_228458:
    set $P5041, $P5039
  if214_end437:
    set $S5005, $P5041
    iseq $I5007, $S5005, "alpha"
    set $I5015, $I5007
  if213_end435:
    set $I5016, $I5015
  unless212_end433:
    set $I5017, $I5016
  if211_end431:
    unless $I5017 goto if210_else428 
.annotate 'line', 162
    nqp_decontainerize $P5042, _lex_param_0
    find_lex $P5044, "$?PACKAGE"
    get_who $P5043, $P5044
    set fb_tmp_51, $P5043
    repr_defined $I5018, fb_tmp_51
    unless $I5018 goto if229_else459 
    set $P5045, fb_tmp_51["$EDGE_CHARCLASS"]
    set $P5047, $P5045
    goto if229_end460
  if229_else459:
    null $P5046
    set $P5047, $P5046
  if229_end460:
    unless_null $P5047, vivi_230461
    nqp_get_sc_object $P5048, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5047, $P5048
  vivi_230461:
    set $N5002, $P5047
    $P5049 = _lex_param_1."negate"()
    set $N5003, $P5049
    add $N5001, $N5002, $N5003
    $P5050 = $P5042."addedge"(_lex_param_2, _lex_param_3, $N5001, .CCLASS_ALPHABETIC)
    set $I5019, $P5050
    set _lex_param_3, $I5019
.annotate 'line', 164
    nqp_decontainerize $P5051, _lex_param_0
    find_lex $P5053, "$?PACKAGE"
    get_who $P5052, $P5053
    set fb_tmp_52, $P5052
    repr_defined $I5020, fb_tmp_52
    unless $I5020 goto if231_else462 
    set $P5054, fb_tmp_52["$EDGE_CODEPOINT"]
    set $P5056, $P5054
    goto if231_end463
  if231_else462:
    null $P5055
    set $P5056, $P5055
  if231_end463:
    unless_null $P5056, vivi_232464
    nqp_get_sc_object $P5057, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5056, $P5057
  vivi_232464:
    set $N5005, $P5056
    $P5058 = _lex_param_1."negate"()
    set $N5006, $P5058
    add $N5004, $N5005, $N5006
    $P5059 = $P5051."addedge"(_lex_param_2, _lex_param_3, $N5004, 95)
    set $P5182, $P5059
    goto if210_end429
  if210_else428:
    set $S5006, $P101
    iseq $I5021, $S5006, "zerowidth"
    unless $I5021 goto if233_else465 
.annotate 'line', 166
.annotate 'line', 167
    $P5060 = _lex_param_1."negate"()
    unless $P5060 goto if234_else467 
.annotate 'line', 168
    nqp_decontainerize $P5061, _lex_param_0
    $P5062 = $P5061."fate"(_lex_param_1, _lex_param_2, _lex_param_3)
    set $P5065, $P5062
    goto if234_end468
  if234_else467:
    .const 'Sub' $P5063 = 'cuid_123_1360432433.757' 
    capture_lex $P5063
    $P5064 = $P5063()
    set $P5065, $P5064
  if234_end468:
    set $P5181, $P5065
    goto if233_end466
  if233_else465:
    find_dynamic_lex $P5066, "$*vars_as_generic"
    unless_null $P5066, fallback484
    nqp_get_sc_object $P5068, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 0
    get_who $P5067, $P5068
    set fb_tmp_54, $P5067
    repr_defined $I5022, fb_tmp_54
    unless $I5022 goto if243_else485 
    set $P5069, fb_tmp_54["$vars_as_generic"]
    set $P5071, $P5069
    goto if243_end486
  if243_else485:
    null $P5070
    set $P5071, $P5070
  if243_end486:
    unless_null $P5071, vivi_244487
    nqp_get_sc_object $P5072, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5071, $P5072
  vivi_244487:
    unless_null $P5071, vivi_245488
    die "Contextual $*vars_as_generic not found"
    box $P5073, "Contextual $*vars_as_generic not found"
    set $P5071, $P5073
  vivi_245488:
    set $P5066, $P5071
  fallback484:
    set $P5074, $P5066
    unless $P5066 goto if242_end483 
    set $S5007, $P101
    iseq $I5023, $S5007, "method"
    box $P5075, $I5023
    set $P5074, $P5075
  if242_end483:
    set $P5092, $P5074
    unless $P5074 goto if241_end481 
.annotate 'line', 177
    nqp_get_sc_object $P5078, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 0
    nqp_get_package_through_who $P5077, $P5078, "QAST"
    get_who $P5076, $P5077
    set fb_tmp_55, $P5076
    repr_defined $I5024, fb_tmp_55
    unless $I5024 goto if246_else489 
    set $P5079, fb_tmp_55["SVal"]
    set $P5081, $P5079
    goto if246_end490
  if246_else489:
    null $P5080
    set $P5081, $P5080
  if246_end490:
    unless_null $P5081, vivi_247491
    nqp_get_sc_object $P5082, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5081, $P5082
  vivi_247491:
    set fb_tmp_57, _lex_param_1
    repr_defined $I5026, fb_tmp_57
    unless $I5026 goto if249_else494 
    set $P5083, fb_tmp_57[0]
    set $P5085, $P5083
    goto if249_end495
  if249_else494:
    null $P5084
    set $P5085, $P5084
  if249_end495:
    unless_null $P5085, vivi_250496
    nqp_get_sc_object $P5086, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5085, $P5086
  vivi_250496:
    set fb_tmp_56, $P5085
    repr_defined $I5025, fb_tmp_56
    unless $I5025 goto if248_else492 
    set $P5087, fb_tmp_56[0]
    set $P5089, $P5087
    goto if248_end493
  if248_else492:
    null $P5088
    set $P5089, $P5088
  if248_end493:
    unless_null $P5089, vivi_251497
    nqp_get_sc_object $P5090, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5089, $P5090
  vivi_251497:
    $P5091 = $P5081."ACCEPTS"($P5089)
    set $P5092, $P5091
  if241_end481:
    set $P5102, $P5092
    unless $P5092 goto if240_end479 
    set fb_tmp_59, _lex_param_1
    repr_defined $I5029, fb_tmp_59
    unless $I5029 goto if253_else500 
    set $P5093, fb_tmp_59[0]
    set $P5095, $P5093
    goto if253_end501
  if253_else500:
    null $P5094
    set $P5095, $P5094
  if253_end501:
    unless_null $P5095, vivi_254502
    nqp_get_sc_object $P5096, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5095, $P5096
  vivi_254502:
    set fb_tmp_58, $P5095
    repr_defined $I5028, fb_tmp_58
    unless $I5028 goto if252_else498 
    set $P5097, fb_tmp_58[0]
    set $P5099, $P5097
    goto if252_end499
  if252_else498:
    null $P5098
    set $P5099, $P5098
  if252_end499:
    unless_null $P5099, vivi_255503
    nqp_get_sc_object $P5100, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5099, $P5100
  vivi_255503:
    $P5101 = $P5099."value"()
    set $S5008, $P5101
    iseq $I5027, $S5008, "!INTERPOLATE"
    box $P5103, $I5027
    set $P5102, $P5103
  if240_end479:
    set $P5120, $P5102
    unless $P5102 goto if239_end477 
.annotate 'line', 178
    nqp_get_sc_object $P5106, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 0
    nqp_get_package_through_who $P5105, $P5106, "QAST"
    get_who $P5104, $P5105
    set fb_tmp_60, $P5104
    repr_defined $I5030, fb_tmp_60
    unless $I5030 goto if256_else504 
    set $P5107, fb_tmp_60["Var"]
    set $P5109, $P5107
    goto if256_end505
  if256_else504:
    null $P5108
    set $P5109, $P5108
  if256_end505:
    unless_null $P5109, vivi_257506
    nqp_get_sc_object $P5110, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5109, $P5110
  vivi_257506:
    set fb_tmp_62, _lex_param_1
    repr_defined $I5032, fb_tmp_62
    unless $I5032 goto if259_else509 
    set $P5111, fb_tmp_62[0]
    set $P5113, $P5111
    goto if259_end510
  if259_else509:
    null $P5112
    set $P5113, $P5112
  if259_end510:
    unless_null $P5113, vivi_260511
    nqp_get_sc_object $P5114, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5113, $P5114
  vivi_260511:
    set fb_tmp_61, $P5113
    repr_defined $I5031, fb_tmp_61
    unless $I5031 goto if258_else507 
    set $P5115, fb_tmp_61[1]
    set $P5117, $P5115
    goto if258_end508
  if258_else507:
    null $P5116
    set $P5117, $P5116
  if258_end508:
    unless_null $P5117, vivi_261512
    nqp_get_sc_object $P5118, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5117, $P5118
  vivi_261512:
    $P5119 = $P5109."ACCEPTS"($P5117)
    set $P5120, $P5119
  if239_end477:
    set $P5130, $P5120
    unless $P5120 goto if238_end475 
    set fb_tmp_64, _lex_param_1
    repr_defined $I5035, fb_tmp_64
    unless $I5035 goto if263_else515 
    set $P5121, fb_tmp_64[0]
    set $P5123, $P5121
    goto if263_end516
  if263_else515:
    null $P5122
    set $P5123, $P5122
  if263_end516:
    unless_null $P5123, vivi_264517
    nqp_get_sc_object $P5124, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5123, $P5124
  vivi_264517:
    set fb_tmp_63, $P5123
    repr_defined $I5034, fb_tmp_63
    unless $I5034 goto if262_else513 
    set $P5125, fb_tmp_63[1]
    set $P5127, $P5125
    goto if262_end514
  if262_else513:
    null $P5126
    set $P5127, $P5126
  if262_end514:
    unless_null $P5127, vivi_265518
    nqp_get_sc_object $P5128, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5127, $P5128
  vivi_265518:
    $P5129 = $P5127."scope"()
    set $S5009, $P5129
    iseq $I5033, $S5009, "lexical"
    box $P5131, $I5033
    set $P5130, $P5131
  if238_end475:
    unless $P5130 goto if237_else472 
    nqp_decontainerize $P5132, _lex_param_0
    nqp_get_sc_object $P5133, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 3
    repr_bind_attr_int $P5132, $P5133, "$!generic", 1
.annotate 'line', 180
    nqp_decontainerize $P5134, _lex_param_0
    find_lex $P5136, "$?PACKAGE"
    get_who $P5135, $P5136
    set fb_tmp_65, $P5135
    repr_defined $I5036, fb_tmp_65
    unless $I5036 goto if266_else519 
    set $P5137, fb_tmp_65["$EDGE_GENERIC_VAR"]
    set $P5139, $P5137
    goto if266_end520
  if266_else519:
    null $P5138
    set $P5139, $P5138
  if266_end520:
    unless_null $P5139, vivi_267521
    nqp_get_sc_object $P5140, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5139, $P5140
  vivi_267521:
    set fb_tmp_67, _lex_param_1
    repr_defined $I5038, fb_tmp_67
    unless $I5038 goto if269_else524 
    set $P5141, fb_tmp_67[0]
    set $P5143, $P5141
    goto if269_end525
  if269_else524:
    null $P5142
    set $P5143, $P5142
  if269_end525:
    unless_null $P5143, vivi_270526
    nqp_get_sc_object $P5144, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5143, $P5144
  vivi_270526:
    set fb_tmp_66, $P5143
    repr_defined $I5037, fb_tmp_66
    unless $I5037 goto if268_else522 
    set $P5145, fb_tmp_66[1]
    set $P5147, $P5145
    goto if268_end523
  if268_else522:
    null $P5146
    set $P5147, $P5146
  if268_end523:
    unless_null $P5147, vivi_271527
    nqp_get_sc_object $P5148, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5147, $P5148
  vivi_271527:
    $P5149 = $P5147."name"()
    $P5150 = $P5134."addedge"(_lex_param_2, _lex_param_3, $P5139, $P5149)
    set $P5180, $P5150
    goto if237_end473
  if237_else472:
.annotate 'line', 182
    set $S5010, $P101
    iseq $I5039, $S5010, "capture"
    box $P5156, $I5039
    set $P5155, $P5156
    unless $I5039 goto if273_end531 
    set fb_tmp_68, _lex_param_1
    repr_defined $I5040, fb_tmp_68
    unless $I5040 goto if274_else532 
    set $P5151, fb_tmp_68[1]
    set $P5153, $P5151
    goto if274_end533
  if274_else532:
    null $P5152
    set $P5153, $P5152
  if274_end533:
    unless_null $P5153, vivi_275534
    nqp_get_sc_object $P5154, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5153, $P5154
  vivi_275534:
    set $P5155, $P5153
  if273_end531:
    unless $P5155 goto if272_else528 
.annotate 'line', 184
    nqp_decontainerize $P5157, _lex_param_0
    set fb_tmp_69, _lex_param_1
    repr_defined $I5041, fb_tmp_69
    unless $I5041 goto if276_else535 
    set $P5158, fb_tmp_69[1]
    set $P5160, $P5158
    goto if276_end536
  if276_else535:
    null $P5159
    set $P5160, $P5159
  if276_end536:
    unless_null $P5160, vivi_277537
    nqp_get_sc_object $P5161, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5160, $P5161
  vivi_277537:
    $P5162 = $P5157."regex_nfa"($P5160, _lex_param_2, _lex_param_3)
    set $P5179, $P5162
    goto if272_end529
  if272_else528:
.annotate 'line', 185
    nqp_decontainerize $P5163, _lex_param_0
    find_lex $P5165, "$?PACKAGE"
    get_who $P5164, $P5165
    set fb_tmp_70, $P5164
    repr_defined $I5042, fb_tmp_70
    unless $I5042 goto if278_else538 
    set $P5166, fb_tmp_70["$EDGE_SUBRULE"]
    set $P5168, $P5166
    goto if278_end539
  if278_else538:
    null $P5167
    set $P5168, $P5167
  if278_end539:
    unless_null $P5168, vivi_279540
    nqp_get_sc_object $P5169, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5168, $P5169
  vivi_279540:
    set fb_tmp_72, _lex_param_1
    repr_defined $I5044, fb_tmp_72
    unless $I5044 goto if281_else543 
    set $P5170, fb_tmp_72[0]
    set $P5172, $P5170
    goto if281_end544
  if281_else543:
    null $P5171
    set $P5172, $P5171
  if281_end544:
    unless_null $P5172, vivi_282545
    nqp_get_sc_object $P5173, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5172, $P5173
  vivi_282545:
    set fb_tmp_71, $P5172
    repr_defined $I5043, fb_tmp_71
    unless $I5043 goto if280_else541 
    set $P5174, fb_tmp_71[0]
    set $P5176, $P5174
    goto if280_end542
  if280_else541:
    null $P5175
    set $P5176, $P5175
  if280_end542:
    unless_null $P5176, vivi_283546
    nqp_get_sc_object $P5177, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5176, $P5177
  vivi_283546:
    $P5178 = $P5163."addedge"(_lex_param_2, _lex_param_3, $P5168, $P5176)
    set $P5179, $P5178
  if272_end529:
    set $P5180, $P5179
  if237_end473:
    set $P5181, $P5180
  if233_end466:
    set $P5182, $P5181
  if210_end429:
    set $P5183, $P5182
  if202_end416:
    .return ($P5183) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_122_1360432433.757") :anon :lex :outer("cuid_16_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 153
    .lex "$end", $I101 
    .local pmc fb_tmp_41 
    .local pmc fb_tmp_42 
    .local pmc fb_tmp_43 
    set $I101, 0
.annotate 'line', 154
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    $P5003 = $P5001."addstate"()
    set $I5001, $P5003
    set $I101, $I5001
.annotate 'line', 155
    find_lex $P5005, "self"
    nqp_decontainerize $P5004, $P5005
    find_lex $P5006, "$node"
    set fb_tmp_43, $P5006
    repr_defined $I5004, fb_tmp_43
    unless $I5004 goto if206_else423 
    set $P5007, fb_tmp_43[0]
    set $P5009, $P5007
    goto if206_end424
  if206_else423:
    null $P5008
    set $P5009, $P5008
  if206_end424:
    unless_null $P5009, vivi_207425
    nqp_get_sc_object $P5010, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5009, $P5010
  vivi_207425:
    set fb_tmp_42, $P5009
    repr_defined $I5003, fb_tmp_42
    unless $I5003 goto if205_else421 
    set $P5011, fb_tmp_42[1]
    set $P5013, $P5011
    goto if205_end422
  if205_else421:
    null $P5012
    set $P5013, $P5012
  if205_end422:
    unless_null $P5013, vivi_208426
    nqp_get_sc_object $P5014, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5013, $P5014
  vivi_208426:
    set fb_tmp_41, $P5013
    repr_defined $I5002, fb_tmp_41
    unless $I5002 goto if204_else419 
    set $P5015, fb_tmp_41["orig_qast"]
    set $P5017, $P5015
    goto if204_end420
  if204_else419:
    null $P5016
    set $P5017, $P5016
  if204_end420:
    unless_null $P5017, vivi_209427
    nqp_get_sc_object $P5018, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5017, $P5018
  vivi_209427:
    find_lex $I5005, "$from"
    $P5004."regex_nfa"($P5017, $I5005, $I101)
.annotate 'line', 156
    find_lex $P5020, "self"
    nqp_decontainerize $P5019, $P5020
    find_lex $P5021, "$node"
    find_lex $I5006, "$to"
    $P5022 = $P5019."fate"($P5021, $I101, $I5006)
    .return ($P5022) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_123_1360432433.757") :anon :lex :outer("cuid_16_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 170
    .lex "$end", $I101 
    .local pmc fb_tmp_53 
    set $I101, 0
.annotate 'line', 171
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    $P5003 = $P5001."addstate"()
    set $I5001, $P5003
    set $I101, $I5001
.annotate 'line', 172
    find_lex $P5005, "self"
    nqp_decontainerize $P5004, $P5005
    find_lex $I5002, "$from"
    find_lex $P5007, "$?PACKAGE"
    get_who $P5006, $P5007
    set fb_tmp_53, $P5006
    repr_defined $I5003, fb_tmp_53
    unless $I5003 goto if235_else469 
    set $P5008, fb_tmp_53["$EDGE_SUBRULE"]
    set $P5010, $P5008
    goto if235_end470
  if235_else469:
    null $P5009
    set $P5010, $P5009
  if235_end470:
    unless_null $P5010, vivi_236471
    nqp_get_sc_object $P5011, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5010, $P5011
  vivi_236471:
    find_lex $P5012, "$node"
    $P5013 = $P5012."name"()
    $P5004."addedge"($I5002, $I101, $P5010, $P5013)
.annotate 'line', 173
    find_lex $P5015, "self"
    nqp_decontainerize $P5014, $P5015
    find_lex $P5016, "$node"
    find_lex $I5004, "$to"
    $P5017 = $P5014."fate"($P5016, $I101, $I5004)
    .return ($P5017) 
.end
.HLL "nqp"
.namespace []
.sub "quant" :subid("cuid_17_1360432433.757") :anon :lex :outer("cuid_118_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 189
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param int _lex_param_2 
    .param int _lex_param_3 
    .const 'Sub' $P5027 = 'cuid_125_1360432433.757' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_127_1360432433.757' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_128_1360432433.757' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_129_1360432433.757' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_130_1360432433.757' 
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
    set_label $P101, lexotic_547
    .lex "RETURN", $P101
    set $N5002, 0
.annotate 'line', 190
    $P5002 = _lex_param_1."min"()
    set $P5001, $P5002
    defined $I5001, $P5001
    if $I5001, defor549
    box $P5003, 0
    set $P5001, $P5003
  defor549:
    set $N5003, $P5001
    add $N5001, $N5002, $N5003
    set $I5002, $N5001
    set $I101, $I5002
    set $N5005, 0
.annotate 'line', 191
    $P5005 = _lex_param_1."max"()
    set $P5004, $P5005
    defined $I5003, $P5004
    if $I5003, defor550
    box $P5006, -1
    set $P5004, $P5006
  defor550:
    set $N5006, $P5004
    add $N5004, $N5005, $N5006
    set $I5004, $N5004
    set $I102, $I5004
    set $N5007, $I102
    set $N5008, 1
    isgt $I5005, $N5007, $N5008
    set $I5007, $I5005
    if $I5005 goto unless285_end554 
    set $N5009, $I101
    set $N5010, 1
    isgt $I5006, $N5009, $N5010
    set $I5007, $I5006
  unless285_end554:
    unless $I5007 goto if284_end552 
    .const 'Sub' $P5007 = 'cuid_125_1360432433.757' 
    capture_lex $P5007
    $P5008 = $P5007()
  if284_end552:
    set $N5011, $I102
    set $N5012, -1
    iseq $I5008, $N5011, $N5012
    unless $I5008 goto if317_else610 
.annotate 'line', 224
    set $N5013, $I101
    set $N5014, 0
    iseq $I5009, $N5013, $N5014
    unless $I5009 goto if318_else612 
.annotate 'line', 225
    set fb_tmp_83, _lex_param_1
    repr_defined $I5011, fb_tmp_83
    unless $I5011 goto if320_else616 
    set $P5009, fb_tmp_83[1]
    set $P5011, $P5009
    goto if320_end617
  if320_else616:
    null $P5010
    set $P5011, $P5010
  if320_end617:
    unless_null $P5011, vivi_321618
    nqp_get_sc_object $P5012, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5011, $P5012
  vivi_321618:
    defined $I5010, $P5011
    unless $I5010 goto if319_else614 
    .const 'Sub' $P5013 = 'cuid_127_1360432433.757' 
    capture_lex $P5013
    $P5014 = $P5013()
    set $P5017, $P5014
    goto if319_end615
  if319_else614:
    .const 'Sub' $P5015 = 'cuid_128_1360432433.757' 
    capture_lex $P5015
    $P5016 = $P5015()
    set $P5017, $P5016
  if319_end615:
    goto if318_end613
  if318_else612:
    .const 'Sub' $P5018 = 'cuid_129_1360432433.757' 
    capture_lex $P5018
    $P5019 = $P5018()
  if318_end613:
    box $P5026, _lex_param_3
    set $P5025, $P5026
    goto if317_end611
  if317_else610:
    set $N5015, $I101
    set $N5016, 0
    iseq $I5012, $N5015, $N5016
    set $I5014, $I5012
    unless $I5012 goto if356_end675 
    set $N5017, $I102
    set $N5018, 1
    iseq $I5013, $N5017, $N5018
    set $I5014, $I5013
  if356_end675:
    unless $I5014 goto if355_else672 
    .const 'Sub' $P5020 = 'cuid_130_1360432433.757' 
    capture_lex $P5020
    $P5021 = $P5020()
    set $P5024, $P5021
    goto if355_end673
  if355_else672:
.annotate 'line', 262
.annotate 'line', 263
    nqp_decontainerize $P5022, _lex_param_0
    $P5023 = $P5022."fate"(_lex_param_1, _lex_param_2, _lex_param_3)
    set $P5024, $P5023
  if355_end673:
    set $P5025, $P5024
  if317_end611:
    goto lexotic_548
  lexotic_547:
    .get_results ($P5025)
  lexotic_548:
    .return ($P5025) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_125_1360432433.757") :anon :lex :outer("cuid_17_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 193
    .const 'Sub' $P5036 = 'cuid_124_1360432433.757' 
    capture_lex $P5036 
    .const 'Sub' $P5036 = 'cuid_126_1360432433.757' 
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
    unless $I5002 goto if286_else555 
    set $P5002, fb_tmp_73[1]
    set $P5004, $P5002
    goto if286_end556
  if286_else555:
    null $P5003
    set $P5004, $P5003
  if286_end556:
    unless_null $P5004, vivi_287557
    nqp_get_sc_object $P5005, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5004, $P5005
  vivi_287557:
    defined $I5001, $P5004
    set $I103, $I5001
  while288_test558:
    set $N5001, $I101
    find_lex $I5004, "$max"
    set $N5002, $I5004
    islt $I5003, $N5001, $N5002
    set $I5007, $I5003
    if $I5003 goto unless289_end564 
    set $N5003, $I101
    find_lex $I5006, "$min"
    set $N5004, $I5006
    islt $I5005, $N5003, $N5004
    set $I5007, $I5005
  unless289_end564:
    set $I5019, $I5007
    unless $I5007 goto while288_done562 
  while288_redo560:
.annotate 'line', 197
    set $N5005, $I101
    find_lex $I5009, "$min"
    set $N5006, $I5009
    isge $I5008, $N5005, $N5006
    unless $I5008 goto if290_end566 
    .const 'Sub' $P5006 = 'cuid_124_1360432433.757' 
    capture_lex $P5006
    $P5007 = $P5006()
  if290_end566:
    set $I5011, $I103
    unless $I103 goto if295_end575 
    set $N5007, $I101
    set $N5008, 0
    isgt $I5010, $N5007, $N5008
    set $I5011, $I5010
  if295_end575:
    unless $I5011 goto if294_end573 
.annotate 'line', 202
.annotate 'line', 203
    find_lex $P5009, "self"
    nqp_decontainerize $P5008, $P5009
    find_lex $P5010, "$node"
    set fb_tmp_75, $P5010
    repr_defined $I5012, fb_tmp_75
    unless $I5012 goto if296_else576 
    set $P5011, fb_tmp_75[1]
    set $P5013, $P5011
    goto if296_end577
  if296_else576:
    null $P5012
    set $P5013, $P5012
  if296_end577:
    unless_null $P5013, vivi_297578
    nqp_get_sc_object $P5014, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5013, $P5014
  vivi_297578:
    find_lex $I5013, "$from"
    $P5015 = $P5008."regex_nfa"($P5013, $I5013, -1)
    set $I5014, $P5015
    store_lex "$from", $I5014
  if294_end573:
.annotate 'line', 205
    find_lex $P5017, "self"
    nqp_decontainerize $P5016, $P5017
    find_lex $P5018, "$node"
    set fb_tmp_76, $P5018
    repr_defined $I5015, fb_tmp_76
    unless $I5015 goto if298_else579 
    set $P5019, fb_tmp_76[0]
    set $P5021, $P5019
    goto if298_end580
  if298_else579:
    null $P5020
    set $P5021, $P5020
  if298_end580:
    unless_null $P5021, vivi_299581
    nqp_get_sc_object $P5022, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5021, $P5022
  vivi_299581:
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
    goto while288_test558 
  while288_done562:
.annotate 'line', 208
    find_lex $P5025, "self"
    nqp_decontainerize $P5024, $P5025
    find_lex $I5020, "$from"
    find_lex $I5021, "$to"
    find_lex $P5027, "$?PACKAGE"
    get_who $P5026, $P5027
    set fb_tmp_77, $P5026
    repr_defined $I5022, fb_tmp_77
    unless $I5022 goto if300_else582 
    set $P5028, fb_tmp_77["$EDGE_EPSILON"]
    set $P5030, $P5028
    goto if300_end583
  if300_else582:
    null $P5029
    set $P5030, $P5029
  if300_end583:
    unless_null $P5030, vivi_301584
    nqp_get_sc_object $P5031, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5030, $P5031
  vivi_301584:
    $P5024."addedge"($I5020, $I5021, $P5030, 0)
    find_lex $I5024, "$max"
    set $N5012, $I5024
    set $N5013, -1
    iseq $I5023, $N5012, $N5013
    unless $I5023 goto if302_end586 
    .const 'Sub' $P5032 = 'cuid_126_1360432433.757' 
    capture_lex $P5032
    $P5033 = $P5032()
  if302_end586:
    find_lex $I5026, "$to"
    set $N5014, $I5026
    set $N5015, 0
    islt $I5025, $N5014, $N5015
    set $I5028, $I5025
    unless $I5025 goto if316_end609 
    set $N5016, $I102
    set $N5017, 0
    isgt $I5027, $N5016, $N5017
    set $I5028, $I5027
  if316_end609:
    unless $I5028 goto if315_end607 
    store_lex "$to", $I102
  if315_end607:
    find_lex $I5029, "$to"
    find_lex $P5034, "RETURN"
    $P5035 = $P5034($I5029)
    .return ($P5035) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_124_1360432433.757") :anon :lex :outer("cuid_125_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 198
    .lex "$f", $I101 
    .local pmc fb_tmp_74 
    set $I101, 0
.annotate 'line', 199
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    find_lex $I5001, "$from"
    find_lex $I5002, "$to"
    find_lex $P5004, "$?PACKAGE"
    get_who $P5003, $P5004
    set fb_tmp_74, $P5003
    repr_defined $I5003, fb_tmp_74
    unless $I5003 goto if291_else567 
    set $P5005, fb_tmp_74["$EDGE_EPSILON"]
    set $P5007, $P5005
    goto if291_end568
  if291_else567:
    null $P5006
    set $P5007, $P5006
  if291_end568:
    unless_null $P5007, vivi_292569
    nqp_get_sc_object $P5008, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5007, $P5008
  vivi_292569:
    $P5009 = $P5001."addedge"($I5001, $I5002, $P5007, 0)
    set $I5004, $P5009
    set $I101, $I5004
    find_lex $I5005, "$st"
    set $I5006, $I5005
    if $I5005 goto unless293_end571 
    set $I5006, $I101
  unless293_end571:
    store_lex "$st", $I5006
    .return ($I5006) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_126_1360432433.757") :anon :lex :outer("cuid_125_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 209
    .lex "$start", $I101 
    .lex "$looper", $P101 
    .local pmc fb_tmp_78 
    .local pmc fb_tmp_79 
    .local pmc fb_tmp_80 
    .local pmc fb_tmp_81 
    .local pmc fb_tmp_82 
    set $I101, 0
    nqp_get_sc_object $P5001, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P101, $P5001
.annotate 'line', 210
    find_lex $P5003, "self"
    nqp_decontainerize $P5002, $P5003
    $P5004 = $P5002."addstate"()
    set $I5001, $P5004
    set $I101, $I5001
.annotate 'line', 211
    find_lex $P5006, "self"
    nqp_decontainerize $P5005, $P5006
    find_lex $I5002, "$from"
    find_lex $P5008, "$?PACKAGE"
    get_who $P5007, $P5008
    set fb_tmp_78, $P5007
    repr_defined $I5003, fb_tmp_78
    unless $I5003 goto if303_else587 
    set $P5009, fb_tmp_78["$EDGE_EPSILON"]
    set $P5011, $P5009
    goto if303_end588
  if303_else587:
    null $P5010
    set $P5011, $P5010
  if303_end588:
    unless_null $P5011, vivi_304589
    nqp_get_sc_object $P5012, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5011, $P5012
  vivi_304589:
    $P5005."addedge"($I5002, $I101, $P5011, 0)
    store_lex "$from", $I101
.annotate 'line', 213
    find_lex $P5014, "self"
    nqp_decontainerize $P5013, $P5014
    $P5015 = $P5013."addstate"()
    set $P101, $P5015
.annotate 'line', 214
    find_lex $P5017, "self"
    nqp_decontainerize $P5016, $P5017
    find_lex $I5004, "$to"
    find_lex $P5019, "$?PACKAGE"
    get_who $P5018, $P5019
    set fb_tmp_79, $P5018
    repr_defined $I5005, fb_tmp_79
    unless $I5005 goto if305_else590 
    set $P5020, fb_tmp_79["$EDGE_EPSILON"]
    set $P5022, $P5020
    goto if305_end591
  if305_else590:
    null $P5021
    set $P5022, $P5021
  if305_end591:
    unless_null $P5022, vivi_306592
    nqp_get_sc_object $P5023, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5022, $P5023
  vivi_306592:
    $P5016."addedge"($P101, $I5004, $P5022, 0)
.annotate 'line', 215
    find_lex $P5025, "self"
    nqp_decontainerize $P5024, $P5025
    find_lex $I5006, "$from"
    find_lex $P5027, "$?PACKAGE"
    get_who $P5026, $P5027
    set fb_tmp_80, $P5026
    repr_defined $I5007, fb_tmp_80
    unless $I5007 goto if307_else593 
    set $P5028, fb_tmp_80["$EDGE_EPSILON"]
    set $P5030, $P5028
    goto if307_end594
  if307_else593:
    null $P5029
    set $P5030, $P5029
  if307_end594:
    unless_null $P5030, vivi_308595
    nqp_get_sc_object $P5031, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5030, $P5031
  vivi_308595:
    $P5024."addedge"($P101, $I5006, $P5030, 0)
    find_lex $I5008, "$has_sep"
    set $I5011, $I5008
    unless $I5008 goto if310_end599 
    find_lex $I5010, "$count"
    set $N5001, $I5010
    set $N5002, 0
    isgt $I5009, $N5001, $N5002
    set $I5011, $I5009
  if310_end599:
    unless $I5011 goto if309_end597 
.annotate 'line', 216
.annotate 'line', 217
    find_lex $P5033, "self"
    nqp_decontainerize $P5032, $P5033
    find_lex $P5034, "$node"
    set fb_tmp_81, $P5034
    repr_defined $I5012, fb_tmp_81
    unless $I5012 goto if311_else600 
    set $P5035, fb_tmp_81[1]
    set $P5037, $P5035
    goto if311_end601
  if311_else600:
    null $P5036
    set $P5037, $P5036
  if311_end601:
    unless_null $P5037, vivi_312602
    nqp_get_sc_object $P5038, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5037, $P5038
  vivi_312602:
    find_lex $I5013, "$from"
    $P5039 = $P5032."regex_nfa"($P5037, $I5013, -1)
    set $I5014, $P5039
    store_lex "$from", $I5014
  if309_end597:
.annotate 'line', 219
    find_lex $P5041, "self"
    nqp_decontainerize $P5040, $P5041
    find_lex $P5042, "$node"
    set fb_tmp_82, $P5042
    repr_defined $I5015, fb_tmp_82
    unless $I5015 goto if313_else603 
    set $P5043, fb_tmp_82[0]
    set $P5045, $P5043
    goto if313_end604
  if313_else603:
    null $P5044
    set $P5045, $P5044
  if313_end604:
    unless_null $P5045, vivi_314605
    nqp_get_sc_object $P5046, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5045, $P5046
  vivi_314605:
    find_lex $I5016, "$from"
    $P5047 = $P5040."regex_nfa"($P5045, $I5016, $P101)
    .return ($P5047) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_127_1360432433.757") :anon :lex :outer("cuid_17_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 226
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
.annotate 'line', 227
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    $P5003 = $P5001."addstate"()
    set $I5001, $P5003
    set $I101, $I5001
.annotate 'line', 228
    find_lex $P5005, "self"
    nqp_decontainerize $P5004, $P5005
    find_lex $I5002, "$from"
    find_lex $P5007, "$?PACKAGE"
    get_who $P5006, $P5007
    set fb_tmp_84, $P5006
    repr_defined $I5003, fb_tmp_84
    unless $I5003 goto if322_else619 
    set $P5008, fb_tmp_84["$EDGE_EPSILON"]
    set $P5010, $P5008
    goto if322_end620
  if322_else619:
    null $P5009
    set $P5010, $P5009
  if322_end620:
    unless_null $P5010, vivi_323621
    nqp_get_sc_object $P5011, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5010, $P5011
  vivi_323621:
    $P5004."addedge"($I5002, $I101, $P5010, 0)
.annotate 'line', 229
    find_lex $P5013, "self"
    nqp_decontainerize $P5012, $P5013
    $P5014 = $P5012."addstate"()
    set $I5004, $P5014
    set $I102, $I5004
.annotate 'line', 230
    find_lex $P5016, "self"
    nqp_decontainerize $P5015, $P5016
    find_lex $P5017, "$node"
    set fb_tmp_85, $P5017
    repr_defined $I5005, fb_tmp_85
    unless $I5005 goto if324_else622 
    set $P5018, fb_tmp_85[0]
    set $P5020, $P5018
    goto if324_end623
  if324_else622:
    null $P5019
    set $P5020, $P5019
  if324_end623:
    unless_null $P5020, vivi_325624
    nqp_get_sc_object $P5021, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5020, $P5021
  vivi_325624:
    $P5022 = $P5015."regex_nfa"($P5020, $I101, $I102)
    set $I5006, $P5022
    set $I103, $I5006
.annotate 'line', 231
    find_lex $P5024, "self"
    nqp_decontainerize $P5023, $P5024
    find_lex $P5025, "$node"
    set fb_tmp_86, $P5025
    repr_defined $I5007, fb_tmp_86
    unless $I5007 goto if326_else625 
    set $P5026, fb_tmp_86[1]
    set $P5028, $P5026
    goto if326_end626
  if326_else625:
    null $P5027
    set $P5028, $P5027
  if326_end626:
    unless_null $P5028, vivi_327627
    nqp_get_sc_object $P5029, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5028, $P5029
  vivi_327627:
    $P5023."regex_nfa"($P5028, $I102, $I101)
.annotate 'line', 232
    find_lex $P5031, "self"
    nqp_decontainerize $P5030, $P5031
    find_lex $I5008, "$to"
    find_lex $P5033, "$?PACKAGE"
    get_who $P5032, $P5033
    set fb_tmp_87, $P5032
    repr_defined $I5009, fb_tmp_87
    unless $I5009 goto if328_else628 
    set $P5034, fb_tmp_87["$EDGE_EPSILON"]
    set $P5036, $P5034
    goto if328_end629
  if328_else628:
    null $P5035
    set $P5036, $P5035
  if328_end629:
    unless_null $P5036, vivi_329630
    nqp_get_sc_object $P5037, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5036, $P5037
  vivi_329630:
    $P5030."addedge"($I102, $I5008, $P5036, 0)
.annotate 'line', 233
    find_lex $P5039, "self"
    nqp_decontainerize $P5038, $P5039
    find_lex $I5010, "$from"
    find_lex $I5011, "$to"
    find_lex $P5041, "$?PACKAGE"
    get_who $P5040, $P5041
    set fb_tmp_88, $P5040
    repr_defined $I5012, fb_tmp_88
    unless $I5012 goto if330_else631 
    set $P5042, fb_tmp_88["$EDGE_EPSILON"]
    set $P5044, $P5042
    goto if330_end632
  if330_else631:
    null $P5043
    set $P5044, $P5043
  if330_end632:
    unless_null $P5044, vivi_331633
    nqp_get_sc_object $P5045, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5044, $P5045
  vivi_331633:
    $P5046 = $P5038."addedge"($I5010, $I5011, $P5044, 0)
    set $I5013, $P5046
    set $I103, $I5013
    find_lex $I5015, "$to"
    set $N5001, $I5015
    set $N5002, 0
    islt $I5014, $N5001, $N5002
    set $I5017, $I5014
    unless $I5014 goto if333_end637 
    set $N5003, $I103
    set $N5004, 0
    isgt $I5016, $N5003, $N5004
    set $I5017, $I5016
  if333_end637:
    set $I5018, $I5017
    unless $I5017 goto if332_end635 
    store_lex "$to", $I103
    set $I5018, $I103
  if332_end635:
    .return ($I5018) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_128_1360432433.757") :anon :lex :outer("cuid_17_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 236
    .lex "$st", $I101 
    .local pmc fb_tmp_89 
    .local pmc fb_tmp_90 
    set $I101, 0
.annotate 'line', 237
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    find_lex $P5003, "$node"
    set fb_tmp_89, $P5003
    repr_defined $I5001, fb_tmp_89
    unless $I5001 goto if334_else638 
    set $P5004, fb_tmp_89[0]
    set $P5006, $P5004
    goto if334_end639
  if334_else638:
    null $P5005
    set $P5006, $P5005
  if334_end639:
    unless_null $P5006, vivi_335640
    nqp_get_sc_object $P5007, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5006, $P5007
  vivi_335640:
    find_lex $I5002, "$from"
    find_lex $I5003, "$from"
    $P5001."regex_nfa"($P5006, $I5002, $I5003)
.annotate 'line', 238
    find_lex $P5009, "self"
    nqp_decontainerize $P5008, $P5009
    find_lex $I5004, "$from"
    find_lex $I5005, "$to"
    find_lex $P5011, "$?PACKAGE"
    get_who $P5010, $P5011
    set fb_tmp_90, $P5010
    repr_defined $I5006, fb_tmp_90
    unless $I5006 goto if336_else641 
    set $P5012, fb_tmp_90["$EDGE_EPSILON"]
    set $P5014, $P5012
    goto if336_end642
  if336_else641:
    null $P5013
    set $P5014, $P5013
  if336_end642:
    unless_null $P5014, vivi_337643
    nqp_get_sc_object $P5015, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5014, $P5015
  vivi_337643:
    $P5016 = $P5008."addedge"($I5004, $I5005, $P5014, 0)
    set $I5007, $P5016
    set $I101, $I5007
    find_lex $I5009, "$to"
    set $N5001, $I5009
    set $N5002, 0
    islt $I5008, $N5001, $N5002
    set $I5011, $I5008
    unless $I5008 goto if339_end647 
    set $N5003, $I101
    set $N5004, 0
    isgt $I5010, $N5003, $N5004
    set $I5011, $I5010
  if339_end647:
    set $I5012, $I5011
    unless $I5011 goto if338_end645 
    store_lex "$to", $I101
    set $I5012, $I101
  if338_end645:
    .return ($I5012) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_129_1360432433.757") :anon :lex :outer("cuid_17_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 241
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
.annotate 'line', 242
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    $P5003 = $P5001."addstate"()
    set $I5001, $P5003
    set $I101, $I5001
.annotate 'line', 243
    find_lex $P5005, "self"
    nqp_decontainerize $P5004, $P5005
    find_lex $I5002, "$from"
    find_lex $P5007, "$?PACKAGE"
    get_who $P5006, $P5007
    set fb_tmp_91, $P5006
    repr_defined $I5003, fb_tmp_91
    unless $I5003 goto if340_else648 
    set $P5008, fb_tmp_91["$EDGE_EPSILON"]
    set $P5010, $P5008
    goto if340_end649
  if340_else648:
    null $P5009
    set $P5010, $P5009
  if340_end649:
    unless_null $P5010, vivi_341650
    nqp_get_sc_object $P5011, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5010, $P5011
  vivi_341650:
    $P5004."addedge"($I5002, $I101, $P5010, 0)
.annotate 'line', 244
    find_lex $P5013, "self"
    nqp_decontainerize $P5012, $P5013
    $P5014 = $P5012."addstate"()
    set $I5004, $P5014
    set $I102, $I5004
.annotate 'line', 245
    find_lex $P5016, "self"
    nqp_decontainerize $P5015, $P5016
    find_lex $P5017, "$node"
    set fb_tmp_92, $P5017
    repr_defined $I5005, fb_tmp_92
    unless $I5005 goto if342_else651 
    set $P5018, fb_tmp_92[0]
    set $P5020, $P5018
    goto if342_end652
  if342_else651:
    null $P5019
    set $P5020, $P5019
  if342_end652:
    unless_null $P5020, vivi_343653
    nqp_get_sc_object $P5021, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5020, $P5021
  vivi_343653:
    $P5022 = $P5015."regex_nfa"($P5020, $I101, $I102)
    set $I5006, $P5022
    set $I103, $I5006
    find_lex $P5023, "$node"
    set fb_tmp_93, $P5023
    repr_defined $I5008, fb_tmp_93
    unless $I5008 goto if345_else656 
    set $P5024, fb_tmp_93[1]
    set $P5026, $P5024
    goto if345_end657
  if345_else656:
    null $P5025
    set $P5026, $P5025
  if345_end657:
    unless_null $P5026, vivi_346658
    nqp_get_sc_object $P5027, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5026, $P5027
  vivi_346658:
    defined $I5007, $P5026
    unless $I5007 goto if344_else654 
.annotate 'line', 246
.annotate 'line', 247
    find_lex $P5029, "self"
    nqp_decontainerize $P5028, $P5029
    find_lex $P5030, "$node"
    set fb_tmp_94, $P5030
    repr_defined $I5009, fb_tmp_94
    unless $I5009 goto if347_else659 
    set $P5031, fb_tmp_94[1]
    set $P5033, $P5031
    goto if347_end660
  if347_else659:
    null $P5032
    set $P5033, $P5032
  if347_end660:
    unless_null $P5033, vivi_348661
    nqp_get_sc_object $P5034, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5033, $P5034
  vivi_348661:
    $P5035 = $P5028."regex_nfa"($P5033, $I102, $I101)
    goto if344_end655
  if344_else654:
.annotate 'line', 249
.annotate 'line', 250
    find_lex $P5037, "self"
    nqp_decontainerize $P5036, $P5037
    find_lex $P5039, "$?PACKAGE"
    get_who $P5038, $P5039
    set fb_tmp_95, $P5038
    repr_defined $I5010, fb_tmp_95
    unless $I5010 goto if349_else662 
    set $P5040, fb_tmp_95["$EDGE_EPSILON"]
    set $P5042, $P5040
    goto if349_end663
  if349_else662:
    null $P5041
    set $P5042, $P5041
  if349_end663:
    unless_null $P5042, vivi_350664
    nqp_get_sc_object $P5043, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5042, $P5043
  vivi_350664:
    $P5044 = $P5036."addedge"($I102, $I101, $P5042, 0)
  if344_end655:
.annotate 'line', 252
    find_lex $P5046, "self"
    nqp_decontainerize $P5045, $P5046
    find_lex $I5011, "$to"
    find_lex $P5048, "$?PACKAGE"
    get_who $P5047, $P5048
    set fb_tmp_96, $P5047
    repr_defined $I5012, fb_tmp_96
    unless $I5012 goto if351_else665 
    set $P5049, fb_tmp_96["$EDGE_EPSILON"]
    set $P5051, $P5049
    goto if351_end666
  if351_else665:
    null $P5050
    set $P5051, $P5050
  if351_end666:
    unless_null $P5051, vivi_352667
    nqp_get_sc_object $P5052, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5051, $P5052
  vivi_352667:
    $P5045."addedge"($I102, $I5011, $P5051, 0)
    find_lex $I5014, "$to"
    set $N5001, $I5014
    set $N5002, 0
    islt $I5013, $N5001, $N5002
    set $I5016, $I5013
    unless $I5013 goto if354_end671 
    set $N5003, $I103
    set $N5004, 0
    isgt $I5015, $N5003, $N5004
    set $I5016, $I5015
  if354_end671:
    set $I5017, $I5016
    unless $I5016 goto if353_end669 
    store_lex "$to", $I103
    set $I5017, $I103
  if353_end669:
    .return ($I5017) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_130_1360432433.757") :anon :lex :outer("cuid_17_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 256
    .lex "$st", $I101 
    .local pmc fb_tmp_97 
    .local pmc fb_tmp_98 
    set $I101, 0
.annotate 'line', 257
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    find_lex $P5003, "$node"
    set fb_tmp_97, $P5003
    repr_defined $I5001, fb_tmp_97
    unless $I5001 goto if357_else676 
    set $P5004, fb_tmp_97[0]
    set $P5006, $P5004
    goto if357_end677
  if357_else676:
    null $P5005
    set $P5006, $P5005
  if357_end677:
    unless_null $P5006, vivi_358678
    nqp_get_sc_object $P5007, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5006, $P5007
  vivi_358678:
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
    unless $I5005 goto if360_end682 
    set $N5003, $I101
    set $N5004, 0
    isgt $I5007, $N5003, $N5004
    set $I5008, $I5007
  if360_end682:
    unless $I5008 goto if359_end680 
    store_lex "$to", $I101
  if359_end680:
.annotate 'line', 259
    find_lex $P5010, "self"
    nqp_decontainerize $P5009, $P5010
    find_lex $I5009, "$from"
    find_lex $I5010, "$to"
    find_lex $P5012, "$?PACKAGE"
    get_who $P5011, $P5012
    set fb_tmp_98, $P5011
    repr_defined $I5011, fb_tmp_98
    unless $I5011 goto if361_else683 
    set $P5013, fb_tmp_98["$EDGE_EPSILON"]
    set $P5015, $P5013
    goto if361_end684
  if361_else683:
    null $P5014
    set $P5015, $P5014
  if361_end684:
    unless_null $P5015, vivi_362685
    nqp_get_sc_object $P5016, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5015, $P5016
  vivi_362685:
    $P5017 = $P5009."addedge"($I5009, $I5010, $P5015, 0)
    set $I5012, $P5017
    set $I101, $I5012
    find_lex $I5014, "$to"
    set $N5005, $I5014
    set $N5006, 0
    islt $I5013, $N5005, $N5006
    set $I5016, $I5013
    unless $I5013 goto if364_end689 
    set $N5007, $I101
    set $N5008, 0
    isgt $I5015, $N5007, $N5008
    set $I5016, $I5015
  if364_end689:
    unless $I5016 goto if363_end687 
    store_lex "$to", $I101
  if363_end687:
    find_lex $I5017, "$to"
    .return ($I5017) 
.end
.HLL "nqp"
.namespace []
.sub "qastnode" :subid("cuid_18_1360432433.757") :anon :lex :outer("cuid_118_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 267
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param int _lex_param_2 
    .param int _lex_param_3 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$from", _lex_param_2 
    .lex "$to", _lex_param_3 
    .local pmc fb_tmp_99 
.annotate 'line', 268
    $P5001 = _lex_param_1."subtype"()
    set $S5001, $P5001
    iseq $I5001, $S5001, "zerowidth"
    set $I5003, $I5001
    if $I5001 goto unless366_end693 
    $P5002 = _lex_param_1."subtype"()
    set $S5002, $P5002
    iseq $I5002, $S5002, "declarative"
    set $I5003, $I5002
  unless366_end693:
    unless $I5003 goto if365_else690 
.annotate 'line', 269
    nqp_decontainerize $P5003, _lex_param_0
    find_lex $P5005, "$?PACKAGE"
    get_who $P5004, $P5005
    set fb_tmp_99, $P5004
    repr_defined $I5004, fb_tmp_99
    unless $I5004 goto if367_else694 
    set $P5006, fb_tmp_99["$EDGE_EPSILON"]
    set $P5008, $P5006
    goto if367_end695
  if367_else694:
    null $P5007
    set $P5008, $P5007
  if367_end695:
    unless_null $P5008, vivi_368696
    nqp_get_sc_object $P5009, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5008, $P5009
  vivi_368696:
    $P5010 = $P5003."addedge"(_lex_param_2, _lex_param_3, $P5008, 0)
    set $P5013, $P5010
    goto if365_end691
  if365_else690:
.annotate 'line', 270
    nqp_decontainerize $P5011, _lex_param_0
    $P5012 = $P5011."fate"(_lex_param_1, _lex_param_2, _lex_param_3)
    set $P5013, $P5012
  if365_end691:
    .return ($P5013) 
.end
.HLL "nqp"
.namespace []
.sub "subcapture" :subid("cuid_19_1360432433.757") :anon :lex :outer("cuid_118_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 273
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param int _lex_param_2 
    .param int _lex_param_3 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$from", _lex_param_2 
    .lex "$to", _lex_param_3 
    .local pmc fb_tmp_100 
.annotate 'line', 274
    nqp_decontainerize $P5001, _lex_param_0
    set fb_tmp_100, _lex_param_1
    repr_defined $I5001, fb_tmp_100
    unless $I5001 goto if369_else697 
    set $P5002, fb_tmp_100[0]
    set $P5004, $P5002
    goto if369_end698
  if369_else697:
    null $P5003
    set $P5004, $P5003
  if369_end698:
    unless_null $P5004, vivi_370699
    nqp_get_sc_object $P5005, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5004, $P5005
  vivi_370699:
    $P5006 = $P5001."regex_nfa"($P5004, _lex_param_2, _lex_param_3)
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "save" :subid("cuid_20_1360432433.757") :anon :lex :outer("cuid_118_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 277
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("non_empty") :optional 
    .param int haz_param_11 :opt_flag 
    .lex "self", _lex_param_0 
    .lex "$non_empty", _lex_param_1 
    .local pmc fb_tmp_101 
    if haz_param_11, default709
    nqp_get_sc_object $P5017, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set _lex_param_1, $P5017
  default709:
    root_new $P101, ['parrot';'Continuation']
    set_label $P101, lexotic_700
    .lex "RETURN", $P101
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 3
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!edges"
    if $P5003 goto unless371_end703 
.annotate 'line', 278
    if _lex_param_1 goto unless372_end705 
    find_lex $P5004, "RETURN"
    $P5005 = $P5004(0)
  unless372_end705:
.annotate 'line', 280
    nqp_decontainerize $P5006, _lex_param_0
    find_lex $P5008, "$?PACKAGE"
    get_who $P5007, $P5008
    set fb_tmp_101, $P5007
    repr_defined $I5001, fb_tmp_101
    unless $I5001 goto if373_else706 
    set $P5009, fb_tmp_101["$EDGE_FATE"]
    set $P5011, $P5009
    goto if373_end707
  if373_else706:
    null $P5010
    set $P5011, $P5010
  if373_end707:
    unless_null $P5011, vivi_374708
    nqp_get_sc_object $P5012, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5011, $P5012
  vivi_374708:
    $P5013 = $P5006."addedge"(1, 0, $P5011, 0, 1 :named("newedge"))
  unless371_end703:
    nqp_decontainerize $P5014, _lex_param_0
    nqp_get_sc_object $P5015, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 3
    repr_get_attr_obj $P5016, $P5014, $P5015, "$!states"
    goto lexotic_701
  lexotic_700:
    .get_results ($P5016)
  lexotic_701:
    .return ($P5016) 
.end
.HLL "nqp"
.namespace []
.sub "mergesubrule" :subid("cuid_21_1360432433.757") :anon :lex :outer("cuid_118_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 285
    .param pmc _lex_param_0 
    .param int _lex_param_1 
    .param int _lex_param_2 
    .param pmc _lex_param_3 
    .param pmc _lex_param_4 
    .param string _lex_param_5 
    .param pmc _lex_param_6 :optional 
    .param int haz_param_12 :opt_flag 
    .const 'Sub' $P5014 = 'cuid_131_1360432433.757' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_133_1360432433.757' 
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
    if haz_param_12, default738
    new $P5013, 'Hash'
    set _lex_param_6, $P5013
  default738:
    new $P5001, 'Hash'
    set $P101, $P5001
    new $P5002, 'ResizablePMCArray'
    set $P102, $P5002
    repr_clone $P5003, _lex_param_6
    set $P101, $P5003
    can $I5001, _lex_param_4, _lex_param_5
    unless $I5001 goto if375_end711 
.annotate 'line', 289
    exists $I5003, $P101[_lex_param_5]
    not $I5002, $I5003
    unless $I5002 goto if376_end713 
    .const 'Sub' $P5004 = 'cuid_131_1360432433.757' 
    capture_lex $P5004
    $P5005 = $P5004()
  if376_end713:
    isfalse $I5004, $P102
    set $I5007, $I5004
    unless $I5004 goto if380_end721 
    exists $I5006, $P101[_lex_param_5]
    not $I5005, $I5006
    set $I5007, $I5005
  if380_end721:
    box $P5009, $I5007
    set $P5008, $P5009
    unless $I5007 goto if379_end719 
    .const 'Sub' $P5006 = 'cuid_133_1360432433.757' 
    capture_lex $P5006
    $P5007 = $P5006()
    set $P5008, $P5007
  if379_end719:
  if375_end711:
    box $P5010, 1
    set $P101[_lex_param_5], $P5010
.annotate 'line', 311
    nqp_decontainerize $P5011, _lex_param_0
    $P5012 = $P5011."mergesubstates"(_lex_param_1, _lex_param_2, _lex_param_3, $P102, _lex_param_4, $P101)
    .return ($P5012) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_131_1360432433.757") :anon :lex :outer("cuid_21_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 290
    .lex "$meth", $P101 
    nqp_get_sc_object $P5001, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P101, $P5001
.annotate 'line', 291
    find_lex $P5003, "$cursor"
    get_how $P5002, $P5003
    find_lex $P5004, "$cursor"
    find_lex $S5001, "$name"
    $P5005 = $P5002."find_method"($P5004, $S5001, 1 :named("no_trace"))
    set $P101, $P5005
    can $I5001, $P101, "NFA"
    unless $I5001 goto if377_end715 
.annotate 'line', 292
    $P5006 = $P101."NFA"()
    store_lex "@substates", $P5006
  if377_end715:
    find_lex $P5007, "@substates"
    isnull $I5002, $P5007
    box $P5010, $I5002
    set $P5009, $P5010
    unless $I5002 goto if378_end717 
    new $P5008, 'ResizablePMCArray'
    store_lex "@substates", $P5008
    set $P5009, $P5008
  if378_end717:
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_133_1360432433.757") :anon :lex :outer("cuid_21_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 295
    .const 'Sub' $P5029 = 'cuid_132_1360432433.757' 
    capture_lex $P5029 
    .const 'Sub' $P5029 = 'cuid_134_1360432433.757' 
    capture_lex $P5029 
    .lex "%protorx", $P101 
    .lex "$nfa", $P102 
    .lex "$gotmatch", $I101 
    .local pmc fb_tmp_102 
    .local pmc fb_tmp_103 
    new $P5001, 'Hash'
    set $P101, $P5001
    nqp_get_sc_object $P5002, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P102, $P5002
    set $I101, 0
.annotate 'line', 298
    find_lex $P5004, "$cursor"
    get_how $P5003, $P5004
    find_lex $P5005, "$cursor"
    .const 'Sub' $P5007 = 'cuid_132_1360432433.757' 
    capture_lex $P5007
    newclosure $P5006, $P5007
    $P5008 = $P5003."cache"($P5005, "!protoregex_table", $P5006)
    set $P101, $P5008
.annotate 'line', 299
    nqp_get_sc_object $P5011, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 0
    nqp_get_package_through_who $P5010, $P5011, "QRegex"
    get_who $P5009, $P5010
    set fb_tmp_102, $P5009
    repr_defined $I5001, fb_tmp_102
    unless $I5001 goto if381_else722 
    set $P5012, fb_tmp_102["NFA"]
    set $P5014, $P5012
    goto if381_end723
  if381_else722:
    null $P5013
    set $P5014, $P5013
  if381_end723:
    unless_null $P5014, vivi_382724
    nqp_get_sc_object $P5015, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5014, $P5015
  vivi_382724:
    $P5016 = $P5014."new"()
    set $P102, $P5016
    set $I101, 0
    find_lex $S5001, "$name"
    exists $I5002, $P101[$S5001]
    unless $I5002 goto if383_end726 
.annotate 'line', 301
    set fb_tmp_103, $P101
    repr_defined $I5003, fb_tmp_103
    unless $I5003 goto if384_else727 
    find_lex $S5002, "$name"
    set $P5020, fb_tmp_103[$S5002]
    set $P5022, $P5020
    goto if384_end728
  if384_else727:
    null $P5021
    set $P5022, $P5021
  if384_end728:
    unless_null $P5022, vivi_385729
    nqp_get_sc_object $P5023, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5022, $P5023
  vivi_385729:
    set $P5017, $P5022
    iter $P5019, $P5022
  for_next733:
    unless $P5019, for_done735
    shift $P5025, $P5019
  for_redo734:
    .const 'Sub' $P5024 = 'cuid_134_1360432433.757' 
    capture_lex $P5024
    $P5017 = $P5024($P5025)
    goto for_next733
  for_done735:
  if383_end726:
    box $P5028, $I101
    set $P5027, $P5028
    unless $I101 goto if388_end737 
.annotate 'line', 307
    $P5026 = $P102."states"()
    store_lex "@substates", $P5026
    set $P5027, $P5026
  if388_end737:
    .return ($P5027) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_132_1360432433.757") :anon :lex :outer("cuid_133_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 298

    find_lex $P5001, "$cursor"
    $P5002 = $P5001."!protoregex_table"()
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_134_1360432433.757") :anon :lex :outer("cuid_133_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 302
    .param pmc _lex_param_0 
    .lex "$rxname", _lex_param_0 
    .local pmc fb_tmp_104 
.annotate 'line', 303
    find_lex $P5001, "$nfa"
    find_lex $P5003, "$?PACKAGE"
    get_who $P5002, $P5003
    set fb_tmp_104, $P5002
    repr_defined $I5001, fb_tmp_104
    unless $I5001 goto if386_else730 
    set $P5004, fb_tmp_104["$EDGE_SUBRULE"]
    set $P5006, $P5004
    goto if386_end731
  if386_else730:
    null $P5005
    set $P5006, $P5005
  if386_end731:
    unless_null $P5006, vivi_387732
    nqp_get_sc_object $P5007, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5006, $P5007
  vivi_387732:
    $P5001."addedge"(1, 0, $P5006, _lex_param_0)
    store_lex "$gotmatch", 1
    .return (1) 
.end
.HLL "nqp"
.namespace []
.sub "mergesubstates" :subid("cuid_22_1360432433.757") :anon :lex :outer("cuid_118_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 314
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .param pmc _lex_param_4 
    .param pmc _lex_param_5 
    .param pmc _lex_param_6 :optional 
    .param int haz_param_13 :opt_flag 
    .const 'Sub' $P5013 = 'cuid_136_1360432433.757' 
    capture_lex $P5013 
    .lex "self", _lex_param_0 
    .lex "$start", _lex_param_1 
    .lex "$to", _lex_param_2 
    .lex "$fate", _lex_param_3 
    .lex "@substates", _lex_param_4 
    .lex "$cursor", _lex_param_5 
    .lex "%seen", _lex_param_6 
    .local pmc fb_tmp_116 
    if haz_param_13, default798
    new $P5012, 'Hash'
    set _lex_param_6, $P5012
  default798:
    unless _lex_param_4 goto if389_else739 
    .const 'Sub' $P5001 = 'cuid_136_1360432433.757' 
    capture_lex $P5001
    $P5002 = $P5001()
    set $P5011, $P5002
    goto if389_end740
  if389_else739:
.annotate 'line', 350
.annotate 'line', 351
    nqp_decontainerize $P5003, _lex_param_0
    find_lex $P5005, "$?PACKAGE"
    get_who $P5004, $P5005
    set fb_tmp_116, $P5004
    repr_defined $I5001, fb_tmp_116
    unless $I5001 goto if418_else795 
    set $P5006, fb_tmp_116["$EDGE_FATE"]
    set $P5008, $P5006
    goto if418_end796
  if418_else795:
    null $P5007
    set $P5008, $P5007
  if418_end796:
    unless_null $P5008, vivi_419797
    nqp_get_sc_object $P5009, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5008, $P5009
  vivi_419797:
    $P5010 = $P5003."addedge"(_lex_param_1, 0, $P5008, _lex_param_3)
    set $P5011, $P5010
  if389_end740:
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_136_1360432433.757") :anon :lex :outer("cuid_22_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 315
    .const 'Sub' $P5057 = 'cuid_135_1360432433.757' 
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
.annotate 'line', 317
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
    set_label $P5017, while390_handlers744
    push_eh $P5017
  while390_test741:
    find_lex $P5008, "@substates"
    set $P5016, $P5008
    unless $P5008 goto while390_done745 
  while390_redo743:
    find_lex $P5010, "self"
    nqp_decontainerize $P5009, $P5010
    nqp_get_sc_object $P5011, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 3
    repr_get_attr_obj $P5012, $P5009, $P5011, "$!states"
    find_lex $P5015, "@substates"
    shift $P5014, $P5015
    repr_clone $P5013, $P5014
    push $P5012, $P5013
    set $P5016, $P5012
    goto while390_test741 
  while390_handlers744:
    .get_results ($P5017)
    pop_upto_eh $P5017
    getattribute $P5017, $P5017, 'type'
    eq $P5017, .CONTROL_LOOP_NEXT, while390_test741
    eq $P5017, .CONTROL_LOOP_REDO, while390_redo743
  while390_done745:
    pop_eh 
    find_lex $P5019, "self"
    nqp_decontainerize $P5018, $P5019
    nqp_get_sc_object $P5020, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 3
    repr_get_attr_obj $P5021, $P5018, $P5020, "$!states"
    elements $I5002, $P5021
    set $I102, $I5002
    set $I103, $I101
  while391_test746:
    set $N5001, $I103
    set $N5002, $I102
    islt $I5003, $N5001, $N5002
    box $P5025, $I5003
    set $P5024, $P5025
    unless $I5003 goto while391_done750 
  while391_redo748:
    .const 'Sub' $P5022 = 'cuid_135_1360432433.757' 
    capture_lex $P5022
    $P5023 = $P5022()
    set $P5024, $P5023
    goto while391_test746 
  while391_done750:
.annotate 'line', 345
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
    unless $I5004 goto if411_else784 
    set $P5031, fb_tmp_113["$EDGE_EPSILON"]
    set $P5033, $P5031
    goto if411_end785
  if411_else784:
    null $P5032
    set $P5033, $P5032
  if411_end785:
    unless_null $P5033, vivi_412786
    nqp_get_sc_object $P5034, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5033, $P5034
  vivi_412786:
    $P5026."addedge"($P5028, $N5003, $P5033, 0)
    find_lex $P5035, "$to"
    set $N5006, $P5035
    set $N5007, 0
    isgt $I5005, $N5006, $N5007
    unless $I5005 goto if413_else787 
.annotate 'line', 347
    find_lex $P5037, "self"
    nqp_decontainerize $P5036, $P5037
    find_lex $P5038, "$to"
    find_lex $P5040, "$?PACKAGE"
    get_who $P5039, $P5040
    set fb_tmp_114, $P5039
    repr_defined $I5006, fb_tmp_114
    unless $I5006 goto if414_else789 
    set $P5041, fb_tmp_114["$EDGE_EPSILON"]
    set $P5043, $P5041
    goto if414_end790
  if414_else789:
    null $P5042
    set $P5043, $P5042
  if414_end790:
    unless_null $P5043, vivi_415791
    nqp_get_sc_object $P5044, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5043, $P5044
  vivi_415791:
    $P5045 = $P5036."addedge"($I101, $P5038, $P5043, 0)
    set $P5056, $P5045
    goto if413_end788
  if413_else787:
.annotate 'line', 348
    find_lex $P5047, "self"
    nqp_decontainerize $P5046, $P5047
    find_lex $P5049, "$?PACKAGE"
    get_who $P5048, $P5049
    set fb_tmp_115, $P5048
    repr_defined $I5007, fb_tmp_115
    unless $I5007 goto if416_else792 
    set $P5050, fb_tmp_115["$EDGE_FATE"]
    set $P5052, $P5050
    goto if416_end793
  if416_else792:
    null $P5051
    set $P5052, $P5051
  if416_end793:
    unless_null $P5052, vivi_417794
    nqp_get_sc_object $P5053, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5052, $P5053
  vivi_417794:
    find_lex $P5054, "$fate"
    $P5055 = $P5046."addedge"($I101, 0, $P5052, $P5054)
    set $P5056, $P5055
  if413_end788:
    .return ($P5056) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_135_1360432433.757") :anon :lex :outer("cuid_136_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 331
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
    nqp_get_sc_object $P5001, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P101, $P5001
    set $I101, 0
    set $I102, 0
    find_lex $P5003, "self"
    nqp_decontainerize $P5002, $P5003
    nqp_get_sc_object $P5004, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 3
    repr_get_attr_obj $P5005, $P5002, $P5004, "$!states"
    set fb_tmp_105, $P5005
    repr_defined $I5001, fb_tmp_105
    unless $I5001 goto if392_else751 
    find_lex $I5002, "$i"
    set $P5006, fb_tmp_105[$I5002]
    set $P5008, $P5006
    goto if392_end752
  if392_else751:
    null $P5007
    set $P5008, $P5007
  if392_end752:
    unless_null $P5008, vivi_393753
    nqp_get_sc_object $P5009, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5008, $P5009
  vivi_393753:
    set $P101, $P5008
    set $I101, 0
    elements $I5003, $P101
    set $I102, $I5003
  while394_test754:
    set $N5001, $I101
    set $N5002, $I102
    islt $I5004, $N5001, $N5002
    set $I5022, $I5004
    unless $I5004 goto while394_done758 
  while394_redo756:
.annotate 'line', 335
    set $N5004, $I101
    set $N5005, 2
    add $N5003, $N5004, $N5005
    set $I5005, $N5003
    set fb_tmp_106, $P101
    repr_defined $I5006, fb_tmp_106
    unless $I5006 goto if395_else759 
    set $N5008, $I101
    set $N5009, 2
    add $N5007, $N5008, $N5009
    set $I5007, $N5007
    set $P5010, fb_tmp_106[$I5007]
    set $P5012, $P5010
    goto if395_end760
  if395_else759:
    null $P5011
    set $P5012, $P5011
  if395_end760:
    unless_null $P5012, vivi_396761
    nqp_get_sc_object $P5013, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5012, $P5013
  vivi_396761:
    set $N5010, $P5012
    find_lex $I5008, "$substart"
    set $N5011, $I5008
    add $N5006, $N5010, $N5011
    box $P5014, $N5006
    set $P101[$I5005], $P5014
    set fb_tmp_107, $P101
    repr_defined $I5010, fb_tmp_107
    unless $I5010 goto if398_else764 
    set $P5015, fb_tmp_107[$I101]
    set $P5017, $P5015
    goto if398_end765
  if398_else764:
    null $P5016
    set $P5017, $P5016
  if398_end765:
    unless_null $P5017, vivi_399766
    nqp_get_sc_object $P5018, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5017, $P5018
  vivi_399766:
    set $N5012, $P5017
    find_lex $P5020, "$?PACKAGE"
    get_who $P5019, $P5020
    set fb_tmp_108, $P5019
    repr_defined $I5011, fb_tmp_108
    unless $I5011 goto if400_else767 
    set $P5021, fb_tmp_108["$EDGE_FATE"]
    set $P5023, $P5021
    goto if400_end768
  if400_else767:
    null $P5022
    set $P5023, $P5022
  if400_end768:
    unless_null $P5023, vivi_401769
    nqp_get_sc_object $P5024, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5023, $P5024
  vivi_401769:
    set $N5013, $P5023
    iseq $I5009, $N5012, $N5013
    unless $I5009 goto if397_end763 
    set $N5015, $I101
    set $N5016, 1
    add $N5014, $N5015, $N5016
    set $I5012, $N5014
    find_lex $P5025, "$fate"
    set $P101[$I5012], $P5025
  if397_end763:
    set fb_tmp_109, $P101
    repr_defined $I5014, fb_tmp_109
    unless $I5014 goto if403_else772 
    set $P5026, fb_tmp_109[$I101]
    set $P5028, $P5026
    goto if403_end773
  if403_else772:
    null $P5027
    set $P5028, $P5027
  if403_end773:
    unless_null $P5028, vivi_404774
    nqp_get_sc_object $P5029, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5028, $P5029
  vivi_404774:
    set $N5017, $P5028
    find_lex $P5031, "$?PACKAGE"
    get_who $P5030, $P5031
    set fb_tmp_110, $P5030
    repr_defined $I5015, fb_tmp_110
    unless $I5015 goto if405_else775 
    set $P5032, fb_tmp_110["$EDGE_SUBRULE"]
    set $P5034, $P5032
    goto if405_end776
  if405_else775:
    null $P5033
    set $P5034, $P5033
  if405_end776:
    unless_null $P5034, vivi_406777
    nqp_get_sc_object $P5035, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5034, $P5035
  vivi_406777:
    set $N5018, $P5034
    iseq $I5013, $N5017, $N5018
    unless $I5013 goto if402_end771 
.annotate 'line', 339
    find_lex $P5037, "self"
    nqp_decontainerize $P5036, $P5037
    find_lex $I5016, "$i"
    set fb_tmp_111, $P101
    repr_defined $I5017, fb_tmp_111
    unless $I5017 goto if407_else778 
    set $N5020, $I101
    set $N5021, 2
    add $N5019, $N5020, $N5021
    set $I5018, $N5019
    set $P5038, fb_tmp_111[$I5018]
    set $P5040, $P5038
    goto if407_end779
  if407_else778:
    null $P5039
    set $P5040, $P5039
  if407_end779:
    unless_null $P5040, vivi_408780
    nqp_get_sc_object $P5041, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5040, $P5041
  vivi_408780:
    find_lex $P5042, "$fate"
    find_lex $P5043, "$cursor"
    set fb_tmp_112, $P101
    repr_defined $I5019, fb_tmp_112
    unless $I5019 goto if409_else781 
    set $N5023, $I101
    set $N5024, 1
    add $N5022, $N5023, $N5024
    set $I5020, $N5022
    set $P5044, fb_tmp_112[$I5020]
    set $P5046, $P5044
    goto if409_end782
  if409_else781:
    null $P5045
    set $P5046, $P5045
  if409_end782:
    unless_null $P5046, vivi_410783
    nqp_get_sc_object $P5047, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5046, $P5047
  vivi_410783:
    find_lex $P5048, "%seen"
    $P5049 = $P5036."mergesubrule"($I5016, $P5040, $P5042, $P5043, $P5046, $P5048)
  if402_end771:
    set $N5026, $I101
    set $N5027, 3
    add $N5025, $N5026, $N5027
    set $I5021, $N5025
    set $I101, $I5021
    set $I5022, $I101
    goto while394_test754 
  while394_done758:
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
.sub "run" :subid("cuid_23_1360432433.757") :anon :lex :outer("cuid_118_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 355
    .param pmc _lex_param_0 
    .param string _lex_param_1 
    .param int _lex_param_2 
    .lex "self", _lex_param_0 
    .lex "$target", _lex_param_1 
    .lex "$offset", _lex_param_2 
    nqp_decontainerize $P5002, _lex_param_0
    nqp_get_sc_object $P5003, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 3
    repr_get_attr_obj $P5004, $P5002, $P5003, "$!states"
    set $S5001, _lex_param_1
    set $I5001, _lex_param_2
    nqp_nfa_run_protoregex $P5001, $P5004, $S5001, $I5001
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "run_alt" :subid("cuid_24_1360432433.757") :anon :lex :outer("cuid_118_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 405
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
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 3
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!states"
    set $S5001, _lex_param_1
    set $I5001, _lex_param_2
    nqp_nfa_run_alternation $P5003, $S5001, $I5001, _lex_param_3, _lex_param_4, _lex_param_5
    .return () 
.end
.HLL "nqp"
.namespace []
.sub "generic" :subid("cuid_25_1360432433.757") :anon :lex :outer("cuid_118_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 409
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 3
    repr_get_attr_int $I5001, $P5001, $P5002, "$!generic"
    .return ($I5001) 
.end
.HLL "nqp"
.namespace []
.sub "instantiate_generic" :subid("cuid_26_1360432433.757") :anon :lex :outer("cuid_118_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 413
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5035 = 'cuid_137_1360432433.757' 
    capture_lex $P5035 
    .const 'Sub' $P5035 = 'cuid_139_1360432433.757' 
    capture_lex $P5035 
    .lex "$copy", $P101 
    .lex "@copied_states", $P102 
    .lex "$from", $I101 
    .lex "self", _lex_param_0 
    .lex "$env", _lex_param_1 
    .local pmc fb_tmp_117 
    .local pmc fb_tmp_118 
    nqp_get_sc_object $P5001, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P101, $P5001
    new $P5002, 'ResizablePMCArray'
    set $P102, $P5002
    set $I101, 0
    nqp_decontainerize $P5004, _lex_param_0
    repr_instance_of $P5003, $P5004
    set $P101, $P5003
    nqp_decontainerize $P5008, _lex_param_0
    nqp_get_sc_object $P5009, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 3
    repr_get_attr_obj $P5010, $P5008, $P5009, "$!states"
    set $P5005, $P5010
    iter $P5007, $P5010
  for_next799:
    unless $P5007, for_done801
    shift $P5012, $P5007
  for_redo800:
    .const 'Sub' $P5011 = 'cuid_137_1360432433.757' 
    capture_lex $P5011
    $P5005 = $P5011($P5012)
    goto for_next799
  for_done801:
    nqp_get_sc_object $P5015, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 0
    nqp_get_package_through_who $P5014, $P5015, "QRegex"
    get_who $P5013, $P5014
    set fb_tmp_117, $P5013
    repr_defined $I5001, fb_tmp_117
    unless $I5001 goto if420_else802 
    set $P5016, fb_tmp_117["NFA"]
    set $P5018, $P5016
    goto if420_end803
  if420_else802:
    null $P5017
    set $P5018, $P5017
  if420_end803:
    unless_null $P5018, vivi_421804
    nqp_get_sc_object $P5019, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5018, $P5019
  vivi_421804:
    setattribute $P101, $P5018, "$!states", $P102
    nqp_get_sc_object $P5022, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 0
    nqp_get_package_through_who $P5021, $P5022, "QRegex"
    get_who $P5020, $P5021
    set fb_tmp_118, $P5020
    repr_defined $I5002, fb_tmp_118
    unless $I5002 goto if422_else805 
    set $P5023, fb_tmp_118["NFA"]
    set $P5025, $P5023
    goto if422_end806
  if422_else805:
    null $P5024
    set $P5025, $P5024
  if422_end806:
    unless_null $P5025, vivi_423807
    nqp_get_sc_object $P5026, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5025, $P5026
  vivi_423807:
    nqp_decontainerize $P5027, _lex_param_0
    nqp_get_sc_object $P5028, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 3
    repr_get_attr_obj $P5029, $P5027, $P5028, "$!edges"
    setattribute $P101, $P5025, "$!edges", $P5029
    set $I101, 0
    set $P5030, $P102
    iter $P5032, $P102
  for_next838:
    unless $P5032, for_done840
    shift $P5034, $P5032
  for_redo839:
    .const 'Sub' $P5033 = 'cuid_139_1360432433.757' 
    capture_lex $P5033
    $P5030 = $P5033($P5034)
    goto for_next838
  for_done840:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_137_1360432433.757") :anon :lex :outer("cuid_26_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 417
    .param pmc _lex_param_0 
    .lex "@values", _lex_param_0 
    find_lex $P5001, "@copied_states"
    repr_clone $P5002, _lex_param_0
    push $P5001, $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_139_1360432433.757") :anon :lex :outer("cuid_26_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 426
    .param pmc _lex_param_0 
    .const 'Sub' $P5006 = 'cuid_138_1360432433.757' 
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
  while424_test808:
    set $N5001, $I101
    set $N5002, $I102
    islt $I5002, $N5001, $N5002
    box $P5005, $I5002
    set $P5004, $P5005
    unless $I5002 goto while424_done812 
  while424_redo810:
    .const 'Sub' $P5002 = 'cuid_138_1360432433.757' 
    capture_lex $P5002
    $P5003 = $P5002()
    set $P5004, $P5003
    goto while424_test808 
  while424_done812:
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
.sub "" :subid("cuid_138_1360432433.757") :anon :lex :outer("cuid_139_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 430
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
    nqp_get_sc_object $P5001, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P102, $P5002
    nqp_get_sc_object $P5003, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P103, $P5003
    find_lex $P5004, "@values"
    set fb_tmp_119, $P5004
    repr_defined $I5001, fb_tmp_119
    unless $I5001 goto if425_else813 
    find_lex $I5002, "$i"
    set $P5005, fb_tmp_119[$I5002]
    set $P5007, $P5005
    goto if425_end814
  if425_else813:
    null $P5006
    set $P5007, $P5006
  if425_end814:
    unless_null $P5007, vivi_426815
    nqp_get_sc_object $P5008, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5007, $P5008
  vivi_426815:
    set $P101, $P5007
    find_lex $P5009, "@values"
    set fb_tmp_120, $P5009
    repr_defined $I5003, fb_tmp_120
    unless $I5003 goto if427_else816 
    find_lex $I5004, "$i"
    set $N5002, $I5004
    set $N5003, 1
    add $N5001, $N5002, $N5003
    set $I5005, $N5001
    set $P5010, fb_tmp_120[$I5005]
    set $P5012, $P5010
    goto if427_end817
  if427_else816:
    null $P5011
    set $P5012, $P5011
  if427_end817:
    unless_null $P5012, vivi_428818
    nqp_get_sc_object $P5013, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5012, $P5013
  vivi_428818:
    set $P102, $P5012
    find_lex $P5014, "@values"
    set fb_tmp_121, $P5014
    repr_defined $I5006, fb_tmp_121
    unless $I5006 goto if429_else819 
    find_lex $I5007, "$i"
    set $N5005, $I5007
    set $N5006, 2
    add $N5004, $N5005, $N5006
    set $I5008, $N5004
    set $P5015, fb_tmp_121[$I5008]
    set $P5017, $P5015
    goto if429_end820
  if429_else819:
    null $P5016
    set $P5017, $P5016
  if429_end820:
    unless_null $P5017, vivi_430821
    nqp_get_sc_object $P5018, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5017, $P5018
  vivi_430821:
    set $P103, $P5017
    set $N5007, $P101
    find_lex $P5020, "$?PACKAGE"
    get_who $P5019, $P5020
    set fb_tmp_122, $P5019
    repr_defined $I5010, fb_tmp_122
    unless $I5010 goto if432_else824 
    set $P5021, fb_tmp_122["$EDGE_GENERIC_VAR"]
    set $P5023, $P5021
    goto if432_end825
  if432_else824:
    null $P5022
    set $P5023, $P5022
  if432_end825:
    unless_null $P5023, vivi_433826
    nqp_get_sc_object $P5024, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5023, $P5024
  vivi_433826:
    set $N5008, $P5023
    iseq $I5009, $N5007, $N5008
    unless $I5009 goto if431_end823 
.annotate 'line', 434
    find_lex $P5025, "$env"
    set $S5001, $P102
    exists $I5011, $P5025[$S5001]
    unless $I5011 goto if434_else827 
.annotate 'line', 435
.annotate 'line', 436
    find_lex $P5026, "$copy"
.annotate 'line', 437
    nqp_get_sc_object $P5029, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 0
    nqp_get_package_through_who $P5028, $P5029, "QAST"
    get_who $P5027, $P5028
    set fb_tmp_123, $P5027
    repr_defined $I5012, fb_tmp_123
    unless $I5012 goto if435_else829 
    set $P5030, fb_tmp_123["Regex"]
    set $P5032, $P5030
    goto if435_end830
  if435_else829:
    null $P5031
    set $P5032, $P5031
  if435_end830:
    unless_null $P5032, vivi_436831
    nqp_get_sc_object $P5033, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5032, $P5033
  vivi_436831:
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
    unless $I5015 goto if437_else832 
    set $P5040, fb_tmp_124["$EDGE_EPSILON"]
    set $P5042, $P5040
    goto if437_end833
  if437_else832:
    null $P5041
    set $P5042, $P5041
  if437_end833:
    unless_null $P5042, vivi_438834
    nqp_get_sc_object $P5043, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5042, $P5043
  vivi_438834:
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
    goto if434_end828
  if434_else827:
.annotate 'line', 443
    find_lex $P5048, "@values"
    find_lex $I5020, "$i"
    find_lex $P5050, "$?PACKAGE"
    get_who $P5049, $P5050
    set fb_tmp_125, $P5049
    repr_defined $I5021, fb_tmp_125
    unless $I5021 goto if439_else835 
    set $P5051, fb_tmp_125["$EDGE_FATE"]
    set $P5053, $P5051
    goto if439_end836
  if439_else835:
    null $P5052
    set $P5053, $P5052
  if439_end836:
    unless_null $P5053, vivi_440837
    nqp_get_sc_object $P5054, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5053, $P5054
  vivi_440837:
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
  if434_end828:
  if431_end823:
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
.sub "__dump" :subid("cuid_27_1360432433.757") :anon :lex :outer("cuid_118_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 457
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .const 'Sub' $P5015 = 'cuid_140_1360432433.757' 
    capture_lex $P5015 
    .lex "$subindent", $P101 
    .lex "$st", $P102 
    .lex "self", _lex_param_0 
    .lex "$dumper", _lex_param_1 
    .lex "$label", _lex_param_2 
    nqp_get_sc_object $P5001, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P102, $P5002
.annotate 'line', 458
    $P5003 = _lex_param_1."newIndent"()
    set $P101, $P5003
.annotate 'line', 459
    "&print"("[")
    box $P5004, 0
    set $P102, $P5004
    nqp_decontainerize $P5008, _lex_param_0
    nqp_get_sc_object $P5009, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 3
    repr_get_attr_obj $P5010, $P5008, $P5009, "$!states"
    set $P5005, $P5010
    iter $P5007, $P5010
  for_next841:
    unless $P5007, for_done843
    shift $P5012, $P5007
  for_redo842:
    .const 'Sub' $P5011 = 'cuid_140_1360432433.757' 
    capture_lex $P5011
    $P5005 = $P5011($P5012)
    goto for_next841
  for_done843:
.annotate 'line', 465
    _lex_param_1."deleteIndent"()
.annotate 'line', 466
    $P5013 = _lex_param_1."indent"()
    $P5014 = "&print"("\n", $P5013, "]")
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_140_1360432433.757") :anon :lex :outer("cuid_27_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 461
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 462
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
.sub "" :subid("cuid_142_1360432433.757") :anon :lex :outer("cuid_141_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 476
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
.sub "" :subid("cuid_78_1360432433.757") :anon :lex :outer("cuid_141_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 483
    .param pmc _lex_param_0 
    .const 'Sub' $P5058 = 'cuid_28_1360432433.757' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_29_1360432433.757' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_30_1360432433.757' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_31_1360432433.757' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_32_1360432433.757' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_33_1360432433.757' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_34_1360432433.757' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_35_1360432433.757' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_36_1360432433.757' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_37_1360432433.757' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_38_1360432433.757' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_39_1360432433.757' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_40_1360432433.757' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_41_1360432433.757' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_42_1360432433.757' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_43_1360432433.757' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_44_1360432433.757' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_45_1360432433.757' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_46_1360432433.757' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_47_1360432433.757' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_48_1360432433.757' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_49_1360432433.757' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_50_1360432433.757' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_51_1360432433.757' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_52_1360432433.757' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_53_1360432433.757' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_54_1360432433.757' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_55_1360432433.757' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_56_1360432433.757' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_57_1360432433.757' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_58_1360432433.757' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_59_1360432433.757' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_60_1360432433.757' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_61_1360432433.757' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_62_1360432433.757' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_63_1360432433.757' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_64_1360432433.757' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_65_1360432433.757' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_66_1360432433.757' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_67_1360432433.757' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_68_1360432433.757' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_69_1360432433.757' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_70_1360432433.757' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_71_1360432433.757' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_72_1360432433.757' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_73_1360432433.757' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_74_1360432433.757' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_75_1360432433.757' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_76_1360432433.757' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_77_1360432433.757' 
    capture_lex $P5058 
    .lex "$?PACKAGE", $P101 
    .lex "$?ROLE", $P102 
    .lex "$NO_CAPS", $P103 
    .lex "$pass_mark", $P104 
    .lex "@EMPTY", $P105 
    .lex "$?CLASS", _lex_param_0 
    nqp_get_sc_object $P5001, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P103, $P5001
    nqp_get_sc_object $P5002, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P104, $P5002
    new $P5003, 'ResizablePMCArray'
    set $P105, $P5003
    .const 'Sub' $P5004 = 'cuid_28_1360432433.757' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_29_1360432433.757' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_30_1360432433.757' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_31_1360432433.757' 
    capture_lex $P5007
    new $P5008, 'Hash'
    set $P103, $P5008
    .const 'Sub' $P5009 = 'cuid_32_1360432433.757' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_33_1360432433.757' 
    capture_lex $P5010
    .const 'Sub' $P5011 = 'cuid_34_1360432433.757' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_35_1360432433.757' 
    capture_lex $P5012
    .const 'Sub' $P5013 = 'cuid_36_1360432433.757' 
    capture_lex $P5013
    .const 'Sub' $P5014 = 'cuid_37_1360432433.757' 
    capture_lex $P5014
    box $P5015, 1
    set $P104, $P5015
    .const 'Sub' $P5016 = 'cuid_38_1360432433.757' 
    capture_lex $P5016
    .const 'Sub' $P5017 = 'cuid_39_1360432433.757' 
    capture_lex $P5017
    .const 'Sub' $P5018 = 'cuid_40_1360432433.757' 
    capture_lex $P5018
    .const 'Sub' $P5019 = 'cuid_41_1360432433.757' 
    capture_lex $P5019
    .const 'Sub' $P5020 = 'cuid_42_1360432433.757' 
    capture_lex $P5020
    .const 'Sub' $P5021 = 'cuid_43_1360432433.757' 
    capture_lex $P5021
    .const 'Sub' $P5022 = 'cuid_44_1360432433.757' 
    capture_lex $P5022
    .const 'Sub' $P5023 = 'cuid_45_1360432433.757' 
    capture_lex $P5023
    new $P5024, 'ResizablePMCArray'
    set $P105, $P5024
    .const 'Sub' $P5025 = 'cuid_46_1360432433.757' 
    capture_lex $P5025
    .const 'Sub' $P5026 = 'cuid_47_1360432433.757' 
    capture_lex $P5026
    .const 'Sub' $P5027 = 'cuid_48_1360432433.757' 
    capture_lex $P5027
    .const 'Sub' $P5028 = 'cuid_49_1360432433.757' 
    capture_lex $P5028
    .const 'Sub' $P5029 = 'cuid_50_1360432433.757' 
    capture_lex $P5029
    .const 'Sub' $P5030 = 'cuid_51_1360432433.757' 
    capture_lex $P5030
    .const 'Sub' $P5031 = 'cuid_52_1360432433.757' 
    capture_lex $P5031
    .const 'Sub' $P5032 = 'cuid_53_1360432433.757' 
    capture_lex $P5032
    .const 'Sub' $P5033 = 'cuid_54_1360432433.757' 
    capture_lex $P5033
    .const 'Sub' $P5034 = 'cuid_55_1360432433.757' 
    capture_lex $P5034
    .const 'Sub' $P5035 = 'cuid_56_1360432433.757' 
    capture_lex $P5035
    .const 'Sub' $P5036 = 'cuid_57_1360432433.757' 
    capture_lex $P5036
    .const 'Sub' $P5037 = 'cuid_58_1360432433.757' 
    capture_lex $P5037
    .const 'Sub' $P5038 = 'cuid_59_1360432433.757' 
    capture_lex $P5038
    .const 'Sub' $P5039 = 'cuid_60_1360432433.757' 
    capture_lex $P5039
    .const 'Sub' $P5040 = 'cuid_61_1360432433.757' 
    capture_lex $P5040
    .const 'Sub' $P5041 = 'cuid_62_1360432433.757' 
    capture_lex $P5041
    .const 'Sub' $P5042 = 'cuid_63_1360432433.757' 
    capture_lex $P5042
    .const 'Sub' $P5043 = 'cuid_64_1360432433.757' 
    capture_lex $P5043
    .const 'Sub' $P5044 = 'cuid_65_1360432433.757' 
    capture_lex $P5044
    .const 'Sub' $P5045 = 'cuid_66_1360432433.757' 
    capture_lex $P5045
    .const 'Sub' $P5046 = 'cuid_67_1360432433.757' 
    capture_lex $P5046
    .const 'Sub' $P5047 = 'cuid_68_1360432433.757' 
    capture_lex $P5047
    .const 'Sub' $P5048 = 'cuid_69_1360432433.757' 
    capture_lex $P5048
    .const 'Sub' $P5049 = 'cuid_70_1360432433.757' 
    capture_lex $P5049
    .const 'Sub' $P5050 = 'cuid_71_1360432433.757' 
    capture_lex $P5050
    .const 'Sub' $P5051 = 'cuid_72_1360432433.757' 
    capture_lex $P5051
    .const 'Sub' $P5052 = 'cuid_73_1360432433.757' 
    capture_lex $P5052
    .const 'Sub' $P5053 = 'cuid_74_1360432433.757' 
    capture_lex $P5053
    .const 'Sub' $P5054 = 'cuid_75_1360432433.757' 
    capture_lex $P5054
    .const 'Sub' $P5055 = 'cuid_76_1360432433.757' 
    capture_lex $P5055
    .const 'Sub' $P5056 = 'cuid_77_1360432433.757' 
    capture_lex $P5056
    getinterp $P5057
    set $P5057, $P5057['lexpad']
    .return ($P5057) 
.end
.HLL "nqp"
.namespace []
.sub "orig" :subid("cuid_28_1360432433.757") :anon :lex :outer("cuid_78_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 494
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5002, _lex_param_0
    find_lex $P5003, "$?CLASS"
    repr_get_attr_obj $P5004, $P5002, $P5003, "$!shared"
    nqp_get_sc_object $P5005, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 31
    getattribute $P5001, $P5004, $P5005, "$!orig"
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "target" :subid("cuid_29_1360432433.757") :anon :lex :outer("cuid_78_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 495
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    find_lex $P5002, "$?CLASS"
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!shared"
    nqp_get_sc_object $P5004, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 31
    repr_get_attr_str $S5001, $P5003, $P5004, "$!target"
    .return ($S5001) 
.end
.HLL "nqp"
.namespace []
.sub "from" :subid("cuid_30_1360432433.757") :anon :lex :outer("cuid_78_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 496
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    find_lex $P5002, "$?CLASS"
    repr_get_attr_int $I5001, $P5001, $P5002, "$!from"
    .return ($I5001) 
.end
.HLL "nqp"
.namespace []
.sub "pos" :subid("cuid_31_1360432433.757") :anon :lex :outer("cuid_78_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 497
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    find_lex $P5002, "$?CLASS"
    repr_get_attr_int $I5001, $P5001, $P5002, "$!pos"
    .return ($I5001) 
.end
.HLL "nqp"
.namespace []
.sub "CAPHASH" :subid("cuid_32_1360432433.757") :anon :lex :outer("cuid_78_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 500
    .param pmc _lex_param_0 
    .const 'Sub' $P5070 = 'cuid_96_1360432433.757' 
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
    nqp_get_sc_object $P5001, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P101, $P5001
    new $P5002, 'Hash'
    set $P102, $P5002
    nqp_get_sc_object $P5003, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P103, $P5003
    set $S101, ""
    nqp_get_sc_object $P5004, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P104, $P5004
    set $I101, 0
    set $I102, 0
    nqp_get_sc_object $P5005, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P105, $P5005
    nqp_get_sc_object $P5006, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P106, $P5006
    nqp_get_sc_object $P5007, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
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
    unless $I5001 goto if442_end847 
    nqp_decontainerize $P5013, _lex_param_0
    find_lex $P5014, "$?CLASS"
    repr_get_attr_obj $P5015, $P5013, $P5014, "$!regexsub"
    defined $I5003, $P5015
    set $I5004, $I5003
  if442_end847:
    unless $I5004 goto if441_end845 
.annotate 'line', 512
    nqp_decontainerize $P5016, _lex_param_0
    find_lex $P5017, "$?CLASS"
    repr_get_attr_obj $P5018, $P5016, $P5017, "$!regexsub"
    can $I5005, $P5018, "CAPS"
    unless $I5005 goto if443_else848 
.annotate 'line', 513
    nqp_decontainerize $P5019, _lex_param_0
    find_lex $P5020, "$?CLASS"
    repr_get_attr_obj $P5021, $P5019, $P5020, "$!regexsub"
    $P5022 = $P5021."CAPS"()
    set $P5024, $P5022
    goto if443_end849
  if443_else848:
    null $P5023
    set $P5024, $P5023
  if443_end849:
    set $P102, $P5024
    isnull $I5007, $P102
    not $I5006, $I5007
    box $P5026, $I5006
    set $P5025, $P5026
    unless $I5006 goto if445_end853 
    set $P5025, $P102
  if445_end853:
    set $P5036, $P5025
    unless $P5025 goto if444_end851 
.annotate 'line', 514
    iter $P5027, $P102
    set $P103, $P5027
  while446_test854:
    set $P5035, $P103
    unless $P103 goto while446_done858 
  while446_redo856:
.annotate 'line', 516
    shift $S5001, $P103
    set $S101, $S5001
    set fb_tmp_126, $P102
    repr_defined $I5009, fb_tmp_126
    unless $I5009 goto if448_else861 
    set $P5028, fb_tmp_126[$S101]
    set $P5030, $P5028
    goto if448_end862
  if448_else861:
    null $P5029
    set $P5030, $P5029
  if448_end862:
    unless_null $P5030, vivi_449863
    nqp_get_sc_object $P5031, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5030, $P5031
  vivi_449863:
    set $N5001, $P5030
    set $N5002, 2
    isge $I5008, $N5001, $N5002
    box $P5034, $I5008
    set $P5033, $P5034
    unless $I5008 goto if447_end860 
    new $P5032, 'ResizablePMCArray'
    set $P101[$S101], $P5032
    set $P5033, $P5032
  if447_end860:
    set $P5035, $P5033
    goto while446_test854 
  while446_done858:
    set $P5036, $P5035
  if444_end851:
  if441_end845:
    nqp_decontainerize $P5037, _lex_param_0
    find_lex $P5038, "$?CLASS"
    repr_get_attr_obj $P5039, $P5037, $P5038, "$!cstack"
    isnull $I5011, $P5039
    not $I5010, $I5011
    box $P5044, $I5010
    set $P5043, $P5044
    unless $I5010 goto if451_end867 
    nqp_decontainerize $P5040, _lex_param_0
    find_lex $P5041, "$?CLASS"
    repr_get_attr_obj $P5042, $P5040, $P5041, "$!cstack"
    set $P5043, $P5042
  if451_end867:
    unless $P5043 goto if450_end865 
.annotate 'line', 522
    nqp_decontainerize $P5045, _lex_param_0
    find_lex $P5046, "$?CLASS"
    repr_get_attr_obj $P5047, $P5045, $P5046, "$!cstack"
    set $P104, $P5047
    elements $I5012, $P104
    set $I102, $I5012
  while452_test868:
    set $N5003, $I101
    set $N5004, $I102
    islt $I5013, $N5003, $N5004
    box $P5069, $I5013
    set $P5068, $P5069
    unless $I5013 goto while452_done872 
  while452_redo870:
.annotate 'line', 525
    set $P5048, $P104[$I101]
    set $P105, $P5048
.annotate 'line', 527
    $P5049 = $P105."MATCH"()
    set $P106, $P5049
    find_lex $P5051, "$?CLASS"
    getattribute $P5050, $P105, $P5051, "$!name"
    set $P107, $P5050
    isnull $I5015, $P107
    not $I5014, $I5015
    set $I5017, $I5014
    unless $I5014 goto if454_end876 
    defined $I5016, $P107
    set $I5017, $I5016
  if454_end876:
    unless $I5017 goto if453_end874 
.annotate 'line', 529
    set $S5002, $P107
    index $I5019, $S5002, "=", 0
    set $N5005, $I5019
    set $N5006, 0
    islt $I5018, $N5005, $N5006
    unless $I5018 goto if455_else877 
.annotate 'line', 530
    set fb_tmp_127, $P102
    repr_defined $I5021, fb_tmp_127
    unless $I5021 goto if457_else881 
    set $S5003, $P107
    set $P5052, fb_tmp_127[$S5003]
    set $P5054, $P5052
    goto if457_end882
  if457_else881:
    null $P5053
    set $P5054, $P5053
  if457_end882:
    unless_null $P5054, vivi_458883
    nqp_get_sc_object $P5055, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5054, $P5055
  vivi_458883:
    set $N5007, $P5054
    set $N5008, 2
    isge $I5020, $N5007, $N5008
    unless $I5020 goto if456_else879 
    set fb_tmp_128, $P101
    repr_defined $I5022, fb_tmp_128
    unless $I5022 goto if459_else884 
    set $S5004, $P107
    set $P5056, fb_tmp_128[$S5004]
    set $P5058, $P5056
    goto if459_end885
  if459_else884:
    null $P5057
    set $P5058, $P5057
  if459_end885:
    unless_null $P5058, vivi_460886
    nqp_get_sc_object $P5059, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5058, $P5059
  vivi_460886:
    push $P5058, $P106
    set $P5060, $P5058
    goto if456_end880
  if456_else879:
    set $S5005, $P107
    set $P101[$S5005], $P106
    set $P5060, $P106
  if456_end880:
    set $P5067, $P5060
    goto if455_end878
  if455_else877:
.annotate 'line', 535
    set $S5006, $P107
    split $P5064, "=", $S5006
    set $P5061, $P5064
    iter $P5063, $P5064
  for_next895:
    unless $P5063, for_done897
    shift $P5066, $P5063
  for_redo896:
    .const 'Sub' $P5065 = 'cuid_96_1360432433.757' 
    capture_lex $P5065
    $P5061 = $P5065($P5066)
    goto for_next895
  for_done897:
    set $P5067, $P5061
  if455_end878:
  if453_end874:
    box $P5068, $I101
    set tmp_5, $P5068
    set $N5010, tmp_5
    set $N5011, 1
    add $N5009, $N5010, $N5011
    set $I5023, $N5009
    set $I101, $I5023
    set $P5068, tmp_5
    goto while452_test868 
  while452_done872:
  if450_end865:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_96_1360432433.757") :anon :lex :outer("cuid_32_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 536
    .param pmc _lex_param_0 
    .lex "$name", _lex_param_0 
    .local pmc fb_tmp_129 
    .local pmc fb_tmp_130 
    find_lex $P5001, "%caplist"
    set fb_tmp_129, $P5001
    repr_defined $I5002, fb_tmp_129
    unless $I5002 goto if462_else889 
    set $S5001, _lex_param_0
    set $P5002, fb_tmp_129[$S5001]
    set $P5004, $P5002
    goto if462_end890
  if462_else889:
    null $P5003
    set $P5004, $P5003
  if462_end890:
    unless_null $P5004, vivi_463891
    nqp_get_sc_object $P5005, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5004, $P5005
  vivi_463891:
    set $N5001, $P5004
    set $N5002, 2
    isge $I5001, $N5001, $N5002
    unless $I5001 goto if461_else887 
    find_lex $P5006, "$caps"
    set fb_tmp_130, $P5006
    repr_defined $I5003, fb_tmp_130
    unless $I5003 goto if464_else892 
    set $S5002, _lex_param_0
    set $P5007, fb_tmp_130[$S5002]
    set $P5009, $P5007
    goto if464_end893
  if464_else892:
    null $P5008
    set $P5009, $P5008
  if464_end893:
    unless_null $P5009, vivi_465894
    nqp_get_sc_object $P5010, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5009, $P5010
  vivi_465894:
    find_lex $P5011, "$submatch"
    push $P5009, $P5011
    set $P5014, $P5009
    goto if461_end888
  if461_else887:
    find_lex $P5012, "$caps"
    set $S5003, _lex_param_0
    find_lex $P5013, "$submatch"
    set $P5012[$S5003], $P5013
    set $P5014, $P5013
  if461_end888:
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "!cursor_init" :subid("cuid_33_1360432433.757") :anon :lex :outer("cuid_78_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 549
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
    if haz_param_14, default902
    box $P5016, 0
    set _lex_param_2, $P5016
  default902:
    if haz_param_15, default903
    nqp_get_sc_object $P5017, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set _lex_param_3, $P5017
  default903:
    if haz_param_16, default904
    nqp_get_sc_object $P5018, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set _lex_param_4, $P5018
  default904:
    nqp_get_sc_object $P5001, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P101, $P5001
.annotate 'line', 550
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."CREATE"()
    set $P101, $P5003
    if _lex_param_4 goto unless466_end899 
.annotate 'line', 551
    nqp_get_sc_object $P5005, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 31
    repr_instance_of $P5004, $P5005
    set _lex_param_4, $P5004
    nqp_get_sc_object $P5006, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 31
    setattribute _lex_param_4, $P5006, "$!orig", _lex_param_1
    nqp_get_sc_object $P5007, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 31
    set $S5002, _lex_param_1
    find_encoding $I5001, "ucs4"
    trans_encoding $S5001, $S5002, $I5001
    repr_bind_attr_str _lex_param_4, $P5007, "$!target", $S5001
    nqp_get_sc_object $P5008, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 31
    repr_bind_attr_int _lex_param_4, $P5008, "$!highwater", 0
    nqp_get_sc_object $P5009, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 31
    new $P5010, 'ResizablePMCArray'
    setattribute _lex_param_4, $P5009, "@!highexpect", $P5010
  unless466_end899:
    find_lex $P5011, "$?CLASS"
    setattribute $P101, $P5011, "$!shared", _lex_param_4
    defined $I5002, _lex_param_3
    unless $I5002 goto if467_else900 
.annotate 'line', 560
    find_lex $P5012, "$?CLASS"
    repr_bind_attr_int $P101, $P5012, "$!from", -1
    find_lex $P5013, "$?CLASS"
    set $I5003, _lex_param_3
    repr_bind_attr_int $P101, $P5013, "$!pos", $I5003
    goto if467_end901
  if467_else900:
.annotate 'line', 564
    find_lex $P5014, "$?CLASS"
    set $I5004, _lex_param_2
    repr_bind_attr_int $P101, $P5014, "$!from", $I5004
    find_lex $P5015, "$?CLASS"
    set $I5005, _lex_param_2
    repr_bind_attr_int $P101, $P5015, "$!pos", $I5005
  if467_end901:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "!cursor_start" :subid("cuid_34_1360432433.757") :anon :lex :outer("cuid_78_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 571
    .param pmc _lex_param_0 
    .lex "$new", $P101 
    .lex "$sub", $P102 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
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
    unless_null $P5011, vivi_468905
    set $P5011, $P102
  vivi_468905:
    setattribute $P101, $P5010, "$!regexsub", $P5011
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_obj $P5014, $P5012, $P5013, "$!restart"
    defined $I5001, $P5014
    unless $I5001 goto if469_end907 
.annotate 'line', 576
    find_lex $P5015, "$?CLASS"
    nqp_decontainerize $P5016, _lex_param_0
    find_lex $P5017, "$?CLASS"
    repr_get_attr_int $I5002, $P5016, $P5017, "$!pos"
    repr_bind_attr_int $P101, $P5015, "$!pos", $I5002
    nqp_decontainerize $P5018, _lex_param_0
    find_lex $P5019, "$?CLASS"
    repr_get_attr_obj $P5020, $P5018, $P5019, "$!cstack"
    unless $P5020 goto if470_end909 
    find_lex $P5021, "$?CLASS"
    nqp_decontainerize $P5023, _lex_param_0
    find_lex $P5024, "$?CLASS"
    repr_get_attr_obj $P5025, $P5023, $P5024, "$!cstack"
    repr_clone $P5022, $P5025
    setattribute $P101, $P5021, "$!cstack", $P5022
  if470_end909:
    nqp_decontainerize $P5026, _lex_param_0
    find_lex $P5027, "$?CLASS"
    repr_get_attr_obj $P5028, $P5026, $P5027, "$!shared"
    nqp_get_sc_object $P5029, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 31
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
  if469_end907:
    find_lex $P5039, "$?CLASS"
    repr_bind_attr_int $P101, $P5039, "$!pos", -3
    nqp_decontainerize $P5040, _lex_param_0
    find_lex $P5041, "$?CLASS"
    repr_get_attr_obj $P5042, $P5040, $P5041, "$!shared"
    nqp_get_sc_object $P5043, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 31
    repr_get_attr_str $S5002, $P5042, $P5043, "$!target"
    find_lex $P5044, "$?CLASS"
    nqp_decontainerize $P5045, _lex_param_0
    find_lex $P5046, "$?CLASS"
    repr_get_attr_int $I5004, $P5045, $P5046, "$!pos"
    repr_bind_attr_int $P101, $P5044, "$!from", $I5004
    find_lex $P5047, "$?CLASS"
    find_lex $P5048, "$?CLASS"
    new $P5049, "ResizableIntegerArray"
    setattribute $P101, $P5048, "$!bstack", $P5049
    .return ($P101, $S5002, $I5004, $P5047, $P5049, 0)
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "!cursor_start_subcapture" :subid("cuid_35_1360432433.757") :anon :lex :outer("cuid_78_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 598
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$new", $P101 
    .lex "self", _lex_param_0 
    .lex "$from", _lex_param_1 
    nqp_get_sc_object $P5001, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
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
.sub "!cursor_capture" :subid("cuid_36_1360432433.757") :anon :lex :outer("cuid_78_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 606
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
    if $I5001 goto unless471_end911 
    nqp_decontainerize $P5007, _lex_param_0
    find_lex $P5008, "$?CLASS"
    new $P5009, 'ResizablePMCArray'
    repr_bind_attr_obj $P5007, $P5008, "$!cstack", $P5009
  unless471_end911:
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
.sub "!cursor_push_cstack" :subid("cuid_37_1360432433.757") :anon :lex :outer("cuid_78_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 618
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$capture", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    find_lex $P5002, "$?CLASS"
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!cstack"
    defined $I5001, $P5003
    if $I5001 goto unless472_end913 
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    new $P5006, 'ResizablePMCArray'
    repr_bind_attr_obj $P5004, $P5005, "$!cstack", $P5006
  unless472_end913:
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
.sub "!cursor_pass" :subid("cuid_38_1360432433.757") :anon :lex :outer("cuid_78_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 625
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
    if haz_param_17, default920
    nqp_get_sc_object $P5017, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set _lex_param_2, $P5017
  default920:
    if haz_param_18, default921
    nqp_get_sc_object $P5018, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set _lex_param_3, $P5018
  default921:
    nqp_decontainerize $P5001, _lex_param_0
    find_lex $P5002, "$?CLASS"
    find_lex $P5003, "$pass_mark"
    repr_bind_attr_obj $P5001, $P5002, "$!match", $P5003
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_bind_attr_int $P5004, $P5005, "$!pos", _lex_param_1
    unless _lex_param_3 goto if473_end915 
    nqp_decontainerize $P5006, _lex_param_0
    find_lex $P5007, "$?CLASS"
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_obj $P5010, $P5008, $P5009, "$!regexsub"
    repr_bind_attr_obj $P5006, $P5007, "$!restart", $P5010
  if473_end915:
    if _lex_param_3 goto unless474_end917 
    nqp_decontainerize $P5011, _lex_param_0
    find_lex $P5012, "$?CLASS"
    null $P5013
    repr_bind_attr_obj $P5011, $P5012, "$!bstack", $P5013
  unless474_end917:
    set $P5016, _lex_param_2
    unless _lex_param_2 goto if475_end919 
.annotate 'line', 632
    nqp_decontainerize $P5014, _lex_param_0
    $P5015 = $P5014."!reduce"(_lex_param_2)
    set $P5016, $P5015
  if475_end919:
    .return ($P5016) 
.end
.HLL "nqp"
.namespace []
.sub "!cursor_fail" :subid("cuid_39_1360432433.757") :anon :lex :outer("cuid_78_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 635
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
.sub "!cursor_pos" :subid("cuid_40_1360432433.757") :anon :lex :outer("cuid_78_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 641
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
.sub "!cursor_next" :subid("cuid_41_1360432433.757") :anon :lex :outer("cuid_78_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 645
    .param pmc _lex_param_0 
    .const 'Sub' $P5012 = 'cuid_97_1360432433.757' 
    capture_lex $P5012 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    find_lex $P5002, "$?CLASS"
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!restart"
    defined $I5001, $P5003
    unless $I5001 goto if476_else922 
.annotate 'line', 646
.annotate 'line', 647
    nqp_decontainerize $P5007, _lex_param_0
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!restart"
    $P5008 = $P5006($P5007)
    set $P5011, $P5008
    goto if476_end923
  if476_else922:
    .const 'Sub' $P5009 = 'cuid_97_1360432433.757' 
    capture_lex $P5009
    $P5010 = $P5009()
    set $P5011, $P5010
  if476_end923:
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_97_1360432433.757") :anon :lex :outer("cuid_41_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 649
    .lex "$cur", $P101 
    nqp_get_sc_object $P5001, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P101, $P5001
.annotate 'line', 650
    find_lex $P5003, "self"
    nqp_decontainerize $P5002, $P5003
    $P5004 = $P5002."!cursor_start"()
    set $P101, $P5004
.annotate 'line', 651
    $P101."!cursor_fail"()
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "!cursor_more" :subid("cuid_42_1360432433.757") :anon :lex :outer("cuid_78_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 656
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy :named 
    .lex "$new", $P101 
    .lex "self", _lex_param_0 
    .lex "%opts", _lex_param_1 
    .local pmc fb_tmp_131 
    .local pmc fb_tmp_132 
    nqp_get_sc_object $P5001, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P101, $P5001
    root_new $P102, ['parrot';'Continuation']
    set_label $P102, lexotic_924
    .lex "RETURN", $P102
    set fb_tmp_131, _lex_param_1
    repr_defined $I5001, fb_tmp_131
    unless $I5001 goto if478_else928 
    set $P5002, fb_tmp_131["ex"]
    set $P5004, $P5002
    goto if478_end929
  if478_else928:
    null $P5003
    set $P5004, $P5003
  if478_end929:
    unless_null $P5004, vivi_479930
    nqp_get_sc_object $P5005, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5004, $P5005
  vivi_479930:
    unless $P5004 goto if477_end927 
.annotate 'line', 657
    nqp_decontainerize $P5007, _lex_param_0
    $P5008 = $P5007."!cursor_next"()
    find_lex $P5006, "RETURN"
    $P5009 = $P5006($P5008)
  if477_end927:
.annotate 'line', 658
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
    unless $I5002 goto if482_else935 
    set $P5018, fb_tmp_132["ov"]
    set $P5020, $P5018
    goto if482_end936
  if482_else935:
    null $P5019
    set $P5020, $P5019
  if482_end936:
    unless_null $P5020, vivi_483937
    nqp_get_sc_object $P5021, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5020, $P5021
  vivi_483937:
    set $P5026, $P5020
    if $P5020 goto unless481_end934 
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
  unless481_end934:
    unless $P5026 goto if480_else931 
    nqp_decontainerize $P5028, _lex_param_0
    find_lex $P5029, "$?CLASS"
    repr_get_attr_int $I5006, $P5028, $P5029, "$!from"
    set $N5004, $I5006
    set $N5005, 1
    add $N5003, $N5004, $N5005
    box $P5033, $N5003
    set $P5032, $P5033
    goto if480_end932
  if480_else931:
    nqp_decontainerize $P5030, _lex_param_0
    find_lex $P5031, "$?CLASS"
    repr_get_attr_int $I5007, $P5030, $P5031, "$!pos"
    box $P5034, $I5007
    set $P5032, $P5034
  if480_end932:
    set $I5008, $P5032
    repr_bind_attr_int $P101, $P5017, "$!pos", $I5008
.annotate 'line', 663
    nqp_decontainerize $P5035, _lex_param_0
    find_lex $P5036, "$?CLASS"
    repr_get_attr_obj $P5037, $P5035, $P5036, "$!regexsub"
    $P5038 = $P5037($P101)
    goto lexotic_925
  lexotic_924:
    .get_results ($P5038)
  lexotic_925:
    .return ($P5038) 
.end
.HLL "nqp"
.namespace []
.sub "!reduce" :subid("cuid_43_1360432433.757") :anon :lex :outer("cuid_78_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 666
    .param pmc _lex_param_0 
    .param string _lex_param_1 
    .lex "$actions", $P101 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    nqp_get_sc_object $P5001, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P101, $P5001
    find_dynamic_lex $P5002, "$*ACTIONS"
    set $P101, $P5002
    isnull $I5002, $P101
    not $I5001, $I5002
    set $I5004, $I5001
    unless $I5001 goto if485_end941 
    can $I5003, $P101, _lex_param_1
    set $I5004, $I5003
  if485_end941:
    box $P5008, $I5004
    set $P5007, $P5008
    unless $I5004 goto if484_end939 
.annotate 'line', 668
    nqp_decontainerize $P5004, _lex_param_0
    $P5005 = $P5004."MATCH"()
    find_method $P5003, $P101, _lex_param_1
    $P5006 = $P5003($P101, $P5005)
    set $P5007, $P5006
  if484_end939:
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "!reduce_with_match" :subid("cuid_44_1360432433.757") :anon :lex :outer("cuid_78_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 672
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .lex "$actions", $P101 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    .lex "$key", _lex_param_2 
    .lex "$match", _lex_param_3 
    nqp_get_sc_object $P5001, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P101, $P5001
    find_dynamic_lex $P5002, "$*ACTIONS"
    set $P101, $P5002
    isnull $I5002, $P101
    not $I5001, $I5002
    set $I5004, $I5001
    unless $I5001 goto if487_end945 
    set $S5001, _lex_param_1
    can $I5003, $P101, $S5001
    set $I5004, $I5003
  if487_end945:
    box $P5006, $I5004
    set $P5005, $P5006
    unless $I5004 goto if486_end943 
.annotate 'line', 674
    set $S5002, _lex_param_1
    find_method $P5003, $P101, $S5002
    $P5004 = $P5003($P101, _lex_param_3, _lex_param_2)
    set $P5005, $P5004
  if486_end943:
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "!shared" :subid("cuid_45_1360432433.757") :anon :lex :outer("cuid_78_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 678
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    find_lex $P5002, "$?CLASS"
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!shared"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "!protoregex" :subid("cuid_46_1360432433.757") :anon :lex :outer("cuid_78_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 681
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5042 = 'cuid_98_1360432433.757' 
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
    nqp_get_sc_object $P5001, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P102, $P5002
    new $P5003, 'ResizablePMCArray'
    set $P103, $P5003
    set $I101, 0
    new $P5004, 'ResizablePMCArray'
    set $P104, $P5004
    nqp_get_sc_object $P5005, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P105, $P5005
    nqp_get_sc_object $P5006, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P106, $P5006
    nqp_decontainerize $P5007, _lex_param_0
    find_lex $P5008, "$?CLASS"
    repr_get_attr_obj $P5009, $P5007, $P5008, "$!shared"
    set $P101, $P5009
.annotate 'line', 684
    nqp_decontainerize $P5011, _lex_param_0
    get_how $P5010, $P5011
    nqp_decontainerize $P5012, _lex_param_0
    .const 'Sub' $P5014 = 'cuid_98_1360432433.757' 
    capture_lex $P5014
    newclosure $P5013, $P5014
    $P5015 = $P5010."cache"($P5012, _lex_param_1, $P5013)
    set $P102, $P5015
.annotate 'line', 685
    nqp_get_sc_object $P5016, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 31
    repr_get_attr_str $S5001, $P101, $P5016, "$!target"
    nqp_decontainerize $P5017, _lex_param_0
    find_lex $P5018, "$?CLASS"
    repr_get_attr_int $I5001, $P5017, $P5018, "$!pos"
    $P5019 = $P102."run"($S5001, $I5001)
    set $P103, $P5019
    nqp_get_sc_object $P5020, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 31
    repr_get_attr_int $I5002, $P101, $P5020, "$!highwater"
    set $I101, $I5002
    nqp_decontainerize $P5021, _lex_param_0
    find_lex $P5022, "$?CLASS"
    repr_get_attr_int $I5004, $P5021, $P5022, "$!pos"
    set $N5001, $I5004
    set $N5002, $I101
    isgt $I5003, $N5001, $N5002
    unless $I5003 goto if488_end947 
.annotate 'line', 689
    nqp_get_sc_object $P5023, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 31
    nqp_decontainerize $P5024, _lex_param_0
    find_lex $P5025, "$?CLASS"
    repr_get_attr_int $I5005, $P5024, $P5025, "$!pos"
    repr_bind_attr_int $P101, $P5023, "$!highwater", $I5005
  if488_end947:
.annotate 'line', 694
    $P5026 = $P102."states"()
    set fb_tmp_133, $P5026
    repr_defined $I5006, fb_tmp_133
    unless $I5006 goto if489_else948 
    set $P5027, fb_tmp_133[0]
    set $P5029, $P5027
    goto if489_end949
  if489_else948:
    null $P5028
    set $P5029, $P5028
  if489_end949:
    unless_null $P5029, vivi_490950
    nqp_get_sc_object $P5030, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5029, $P5030
  vivi_490950:
    set $P104, $P5029
  while491_test951:
    set $P5038, $P103
    unless $P103 goto while491_done955 
  while491_redo953:
.annotate 'line', 697
    pop $I5007, $P103
    set $P5031, $P104[$I5007]
    set $P106, $P5031
.annotate 'line', 700
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
    unless $I5008 goto if492_end957 
    find_lex $P5035, "@EMPTY"
    set $P103, $P5035
    set $P5036, $P103
  if492_end957:
    set $P5038, $P5036
    goto while491_test951 
  while491_done955:
    set $P5039, $P105
    defined $I5010, $P5039
    if $I5010, defor958
.annotate 'line', 703
    nqp_decontainerize $P5040, _lex_param_0
    $P5041 = $P5040."!cursor_start"()
    set $P5039, $P5041
  defor958:
    .return ($P5039) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_98_1360432433.757") :anon :lex :outer("cuid_46_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 684

    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    find_lex $P5003, "$name"
    $P5004 = $P5001."!protoregex_nfa"($P5003)
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "!protoregex_nfa" :subid("cuid_47_1360432433.757") :anon :lex :outer("cuid_78_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 706
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5032 = 'cuid_99_1360432433.757' 
    capture_lex $P5032 
    .const 'Sub' $P5032 = 'cuid_100_1360432433.757' 
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
    nqp_get_sc_object $P5002, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P102, $P5002
    new $P5003, 'ResizablePMCArray'
    set $P103, $P5003
    set $I101, 0
    set $I102, 0
.annotate 'line', 707
    nqp_decontainerize $P5005, _lex_param_0
    get_how $P5004, $P5005
    nqp_decontainerize $P5006, _lex_param_0
    .const 'Sub' $P5008 = 'cuid_99_1360432433.757' 
    capture_lex $P5008
    newclosure $P5007, $P5008
    $P5009 = $P5004."cache"($P5006, "!protoregex_table", $P5007)
    set $P101, $P5009
.annotate 'line', 708
    nqp_get_sc_object $P5012, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 0
    nqp_get_package_through_who $P5011, $P5012, "QRegex"
    get_who $P5010, $P5011
    set fb_tmp_134, $P5010
    repr_defined $I5001, fb_tmp_134
    unless $I5001 goto if493_else959 
    set $P5013, fb_tmp_134["NFA"]
    set $P5015, $P5013
    goto if493_end960
  if493_else959:
    null $P5014
    set $P5015, $P5014
  if493_end960:
    unless_null $P5015, vivi_494961
    nqp_get_sc_object $P5016, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5015, $P5016
  vivi_494961:
    $P5017 = $P5015."new"()
    set $P102, $P5017
.annotate 'line', 709
    $P5018 = $P102."states"()
    set fb_tmp_135, $P5018
    repr_defined $I5002, fb_tmp_135
    unless $I5002 goto if495_else962 
    set $P5019, fb_tmp_135[0]
    set $P5021, $P5019
    goto if495_end963
  if495_else962:
    null $P5020
    set $P5021, $P5020
  if495_end963:
    unless_null $P5021, vivi_496964
    nqp_get_sc_object $P5022, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5021, $P5022
  vivi_496964:
    set $P103, $P5021
    set $I101, 1
    set $I102, 0
    set $S5001, _lex_param_1
    exists $I5003, $P101[$S5001]
    unless $I5003 goto if497_end966 
.annotate 'line', 712
    set fb_tmp_136, $P101
    repr_defined $I5004, fb_tmp_136
    unless $I5004 goto if498_else967 
    set $S5002, _lex_param_1
    set $P5026, fb_tmp_136[$S5002]
    set $P5028, $P5026
    goto if498_end968
  if498_else967:
    null $P5027
    set $P5028, $P5027
  if498_end968:
    unless_null $P5028, vivi_499969
    nqp_get_sc_object $P5029, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5028, $P5029
  vivi_499969:
    set $P5023, $P5028
    iter $P5025, $P5028
  for_next970:
    unless $P5025, for_done972
    shift $P5031, $P5025
  for_redo971:
    .const 'Sub' $P5030 = 'cuid_100_1360432433.757' 
    capture_lex $P5030
    $P5023 = $P5030($P5031)
    goto for_next970
  for_done972:
  if497_end966:
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_99_1360432433.757") :anon :lex :outer("cuid_47_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 707

    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    $P5003 = $P5001."!protoregex_table"()
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_100_1360432433.757") :anon :lex :outer("cuid_47_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 713
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
.annotate 'line', 716
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
.sub "!protoregex_table" :subid("cuid_48_1360432433.757") :anon :lex :outer("cuid_78_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 722
    .param pmc _lex_param_0 
    .const 'Sub' $P5011 = 'cuid_102_1360432433.757' 
    capture_lex $P5011 
    .lex "%protorx", $P101 
    .lex "self", _lex_param_0 
    new $P5001, 'Hash'
    set $P101, $P5001
.annotate 'line', 724
    nqp_decontainerize $P5006, _lex_param_0
    get_how $P5005, $P5006
    nqp_decontainerize $P5007, _lex_param_0
    $P5008 = $P5005."methods"($P5007)
    set $P5002, $P5008
    iter $P5004, $P5008
  for_next980:
    unless $P5004, for_done982
    shift $P5010, $P5004
  for_redo981:
    .const 'Sub' $P5009 = 'cuid_102_1360432433.757' 
    capture_lex $P5009
    $P5002 = $P5009($P5010)
    goto for_next980
  for_done982:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_102_1360432433.757") :anon :lex :outer("cuid_48_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 724
    .param pmc _lex_param_0 
    .const 'Sub' $P5005 = 'cuid_101_1360432433.757' 
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
    unless $I5002 goto if500_end974 
    .const 'Sub' $P5001 = 'cuid_101_1360432433.757' 
    capture_lex $P5001
    $P5002 = $P5001()
    set $P5003, $P5002
  if500_end974:
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_101_1360432433.757") :anon :lex :outer("cuid_102_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 727
    .lex "$prefix", $S101 
    .local pmc fb_tmp_137 
    set $S101, ""
    find_lex $S5002, "$methname"
    find_lex $I5001, "$sympos"
    substr $S5001, $S5002, 0, $I5001
    set $S101, $S5001
    find_lex $P5001, "%protorx"
    exists $I5002, $P5001[$S101]
    if $I5002 goto unless501_end976 
    find_lex $P5002, "%protorx"
    new $P5003, 'ResizablePMCArray'
    set $P5002[$S101], $P5003
  unless501_end976:
    find_lex $P5004, "%protorx"
    set fb_tmp_137, $P5004
    repr_defined $I5003, fb_tmp_137
    unless $I5003 goto if502_else977 
    set $P5005, fb_tmp_137[$S101]
    set $P5007, $P5005
    goto if502_end978
  if502_else977:
    null $P5006
    set $P5007, $P5006
  if502_end978:
    unless_null $P5007, vivi_503979
    nqp_get_sc_object $P5008, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5007, $P5008
  vivi_503979:
    find_lex $S5003, "$methname"
    box $P5009, $S5003
    push $P5007, $P5009
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "!alt" :subid("cuid_49_1360432433.757") :anon :lex :outer("cuid_78_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 736
    .param pmc _lex_param_0 
    .param int _lex_param_1 
    .param string _lex_param_2 
    .param pmc _lex_param_3 :optional 
    .param int haz_param_19 :opt_flag 
    .const 'Sub' $P5023 = 'cuid_103_1360432433.757' 
    capture_lex $P5023 
    .lex "$shared", $P101 
    .lex "$highwater", $I101 
    .lex "$nfa", $P102 
    .lex "self", _lex_param_0 
    .lex "$pos", _lex_param_1 
    .lex "$name", _lex_param_2 
    .lex "@labels", _lex_param_3 
    if haz_param_19, default985
    new $P5022, 'ResizablePMCArray'
    set _lex_param_3, $P5022
  default985:
    nqp_get_sc_object $P5001, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P101, $P5001
    set $I101, 0
    nqp_get_sc_object $P5002, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P102, $P5002
    nqp_decontainerize $P5003, _lex_param_0
    find_lex $P5004, "$?CLASS"
    repr_get_attr_obj $P5005, $P5003, $P5004, "$!shared"
    set $P101, $P5005
    nqp_get_sc_object $P5006, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 31
    repr_get_attr_int $I5001, $P101, $P5006, "$!highwater"
    set $I101, $I5001
    set $N5001, _lex_param_1
    set $N5002, $I101
    isgt $I5002, $N5001, $N5002
    unless $I5002 goto if504_end984 
.annotate 'line', 740
    nqp_get_sc_object $P5007, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 31
    repr_bind_attr_int $P101, $P5007, "$!highwater", _lex_param_1
  if504_end984:
.annotate 'line', 745
    nqp_decontainerize $P5009, _lex_param_0
    get_how $P5008, $P5009
    nqp_decontainerize $P5010, _lex_param_0
    .const 'Sub' $P5012 = 'cuid_103_1360432433.757' 
    capture_lex $P5012
    newclosure $P5011, $P5012
    $P5013 = $P5008."cache"($P5010, _lex_param_2, $P5011)
    set $P102, $P5013
.annotate 'line', 746
    nqp_get_sc_object $P5014, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 31
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
.sub "" :subid("cuid_103_1360432433.757") :anon :lex :outer("cuid_49_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 745

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
.sub "!alt_nfa" :subid("cuid_50_1360432433.757") :anon :lex :outer("cuid_78_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 749
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param string _lex_param_2 
    .const 'Sub' $P5022 = 'cuid_104_1360432433.757' 
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
    nqp_get_sc_object $P5001, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P101, $P5001
    new $P5002, 'ResizablePMCArray'
    set $P102, $P5002
    set $I101, 0
    set $I102, 0
.annotate 'line', 750
    nqp_get_sc_object $P5005, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 0
    nqp_get_package_through_who $P5004, $P5005, "QRegex"
    get_who $P5003, $P5004
    set fb_tmp_138, $P5003
    repr_defined $I5001, fb_tmp_138
    unless $I5001 goto if505_else986 
    set $P5006, fb_tmp_138["NFA"]
    set $P5008, $P5006
    goto if505_end987
  if505_else986:
    null $P5007
    set $P5008, $P5007
  if505_end987:
    unless_null $P5008, vivi_506988
    nqp_get_sc_object $P5009, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5008, $P5009
  vivi_506988:
    $P5010 = $P5008."new"()
    set $P101, $P5010
.annotate 'line', 751
    $P5011 = $P101."states"()
    set fb_tmp_139, $P5011
    repr_defined $I5002, fb_tmp_139
    unless $I5002 goto if507_else989 
    set $P5012, fb_tmp_139[0]
    set $P5014, $P5012
    goto if507_end990
  if507_else989:
    null $P5013
    set $P5014, $P5013
  if507_end990:
    unless_null $P5014, vivi_508991
    nqp_get_sc_object $P5015, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5014, $P5015
  vivi_508991:
    set $P102, $P5014
    set $I101, 1
    set $I102, 0
.annotate 'line', 754
    $P5019 = _lex_param_1."ALT_NFA"(_lex_param_2)
    set $P5016, $P5019
    iter $P5018, $P5019
  for_next992:
    unless $P5018, for_done994
    shift $P5021, $P5018
  for_redo993:
    .const 'Sub' $P5020 = 'cuid_104_1360432433.757' 
    capture_lex $P5020
    $P5016 = $P5020($P5021)
    goto for_next992
  for_done994:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_104_1360432433.757") :anon :lex :outer("cuid_50_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 754
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    .local pmc tmp_6 
    find_lex $P5001, "@fates"
    find_lex $I5001, "$fate"
    find_lex $I5002, "$fate"
    box $P5002, $I5002
    set $P5001[$I5001], $P5002
.annotate 'line', 756
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
.sub "!precompute_nfas" :subid("cuid_51_1360432433.757") :anon :lex :outer("cuid_78_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 762
    .param pmc _lex_param_0 
    .const 'Sub' $P5023 = 'cuid_107_1360432433.757' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_108_1360432433.757' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_110_1360432433.757' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_112_1360432433.757' 
    capture_lex $P5023 
    .lex "%protorx", $P101 
    .lex "&precomp_alt_nfas", $P102 
    .lex "self", _lex_param_0 
    new $P5001, 'Hash'
    set $P101, $P5001
    .const 'Sub' $P5002 = 'cuid_107_1360432433.757' 
    capture_lex $P5002
    set $P102, $P5002
.annotate 'line', 764
    nqp_decontainerize $P5004, _lex_param_0
    get_how $P5003, $P5004
    nqp_decontainerize $P5005, _lex_param_0
    .const 'Sub' $P5007 = 'cuid_108_1360432433.757' 
    capture_lex $P5007
    newclosure $P5006, $P5007
    $P5008 = $P5003."cache"($P5005, "!protoregex_table", $P5006)
    set $P101, $P5008
    set $P5009, $P101
    iter $P5011, $P101
  for_next1000:
    unless $P5011, for_done1002
    shift $P5013, $P5011
  for_redo1001:
    .const 'Sub' $P5012 = 'cuid_110_1360432433.757' 
    capture_lex $P5012
    $P5009 = $P5012($P5013)
    goto for_next1000
  for_done1002:
.annotate 'line', 777
    nqp_decontainerize $P5018, _lex_param_0
    get_how $P5017, $P5018
    nqp_decontainerize $P5019, _lex_param_0
    $P5020 = $P5017."methods"($P5019)
    set $P5014, $P5020
    iter $P5016, $P5020
  for_next1008:
    unless $P5016, for_done1010
    shift $P5022, $P5016
  for_redo1009:
    .const 'Sub' $P5021 = 'cuid_112_1360432433.757' 
    capture_lex $P5021
    $P5014 = $P5021($P5022)
    goto for_next1008
  for_done1010:
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "precomp_alt_nfas" :subid("cuid_107_1360432433.757") :anon :lex :outer("cuid_51_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 770
    .param pmc _lex_param_0 
    .const 'Sub' $P5009 = 'cuid_106_1360432433.757' 
    capture_lex $P5009 
    .lex "$meth", _lex_param_0 
    can $I5001, _lex_param_0, "ALT_NFAS"
    box $P5008, $I5001
    set $P5007, $P5008
    unless $I5001 goto if509_end996 
.annotate 'line', 771
.annotate 'line', 772
    $P5004 = _lex_param_0."ALT_NFAS"()
    set $P5001, $P5004
    iter $P5003, $P5004
  for_next997:
    unless $P5003, for_done999
    shift $P5006, $P5003
  for_redo998:
    .const 'Sub' $P5005 = 'cuid_106_1360432433.757' 
    capture_lex $P5005
    $P5001 = $P5005($P5006)
    goto for_next997
  for_done999:
    set $P5007, $P5001
  if509_end996:
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_106_1360432433.757") :anon :lex :outer("cuid_107_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 772
    .param pmc _lex_param_0 
    .const 'Sub' $P5009 = 'cuid_105_1360432433.757' 
    capture_lex $P5009 
    .lex "$name", _lex_param_0 
.annotate 'line', 773
    find_lex $P5003, "self"
    nqp_decontainerize $P5002, $P5003
    get_how $P5001, $P5002
    find_lex $P5005, "self"
    nqp_decontainerize $P5004, $P5005
    .const 'Sub' $P5007 = 'cuid_105_1360432433.757' 
    capture_lex $P5007
    newclosure $P5006, $P5007
    $P5008 = $P5001."cache"($P5004, _lex_param_0, $P5006)
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_105_1360432433.757") :anon :lex :outer("cuid_106_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 773

    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    find_lex $P5003, "$meth"
    find_lex $P5004, "$name"
    $P5005 = $P5001."!alt_nfa"($P5003, $P5004)
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_108_1360432433.757") :anon :lex :outer("cuid_51_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 764

    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    $P5003 = $P5001."!protoregex_table"()
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_110_1360432433.757") :anon :lex :outer("cuid_51_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 765
    .param pmc _lex_param_0 
    .const 'Sub' $P5010 = 'cuid_109_1360432433.757' 
    capture_lex $P5010 
    .lex "$_", _lex_param_0 
.annotate 'line', 766
    find_lex $P5003, "self"
    nqp_decontainerize $P5002, $P5003
    get_how $P5001, $P5002
    find_lex $P5005, "self"
    nqp_decontainerize $P5004, $P5005
    $P5006 = _lex_param_0."key"()
    .const 'Sub' $P5008 = 'cuid_109_1360432433.757' 
    capture_lex $P5008
    newclosure $P5007, $P5008
    $P5009 = $P5001."cache"($P5004, $P5006, $P5007)
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_109_1360432433.757") :anon :lex :outer("cuid_110_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 766

    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    find_lex $P5003, "$_"
    $P5004 = $P5003."key"()
    $P5005 = $P5001."!protoregex_nfa"($P5004)
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_112_1360432433.757") :anon :lex :outer("cuid_51_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 777
    .param pmc _lex_param_0 
    .const 'Sub' $P5009 = 'cuid_111_1360432433.757' 
    capture_lex $P5009 
    .lex "$meth", _lex_param_0 
.annotate 'line', 778
    "&precomp_alt_nfas"(_lex_param_0)
    can $I5001, _lex_param_0, "NESTED_CODES"
    box $P5008, $I5001
    set $P5007, $P5008
    unless $I5001 goto if510_end1004 
.annotate 'line', 779
.annotate 'line', 780
    $P5004 = _lex_param_0."NESTED_CODES"()
    set $P5001, $P5004
    iter $P5003, $P5004
  for_next1005:
    unless $P5003, for_done1007
    shift $P5006, $P5003
  for_redo1006:
    .const 'Sub' $P5005 = 'cuid_111_1360432433.757' 
    capture_lex $P5005
    $P5001 = $P5005($P5006)
    goto for_next1005
  for_done1007:
    set $P5007, $P5001
  if510_end1004:
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_111_1360432433.757") :anon :lex :outer("cuid_112_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 780
    .param pmc _lex_param_0 
    .lex "$code", _lex_param_0 
.annotate 'line', 781
    $P5001 = "&precomp_alt_nfas"(_lex_param_0)
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "!dba" :subid("cuid_52_1360432433.757") :anon :lex :outer("cuid_78_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 787
    .param pmc _lex_param_0 
    .param int _lex_param_1 
    .param string _lex_param_2 
    .lex "$shared", $P101 
    .lex "$highwater", $I101 
    .lex "$highexpect", $P102 
    .lex "self", _lex_param_0 
    .lex "$pos", _lex_param_1 
    .lex "$dba", _lex_param_2 
    nqp_get_sc_object $P5001, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P101, $P5001
    set $I101, 0
    nqp_get_sc_object $P5002, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P102, $P5002
    nqp_decontainerize $P5003, _lex_param_0
    find_lex $P5004, "$?CLASS"
    repr_get_attr_obj $P5005, $P5003, $P5004, "$!shared"
    set $P101, $P5005
    nqp_get_sc_object $P5006, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 31
    repr_get_attr_int $I5001, $P101, $P5006, "$!highwater"
    set $I101, $I5001
    set $N5001, _lex_param_1
    set $N5002, $I101
    isge $I5002, $N5001, $N5002
    box $P5011, $I5002
    set $P5010, $P5011
    unless $I5002 goto if511_end1012 
.annotate 'line', 791
    nqp_get_sc_object $P5008, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 31
    getattribute $P5007, $P101, $P5008, "@!highexpect"
    set $P102, $P5007
    set $N5003, _lex_param_1
    set $N5004, $I101
    isgt $I5003, $N5003, $N5004
    unless $I5003 goto if512_end1014 
.annotate 'line', 793
    assign $P102, 0
    nqp_get_sc_object $P5009, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 31
    repr_bind_attr_int $P101, $P5009, "$!highwater", _lex_param_1
  if512_end1014:
    push $P102, _lex_param_2
    set $P5010, $P102
  if511_end1012:
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "!highwater" :subid("cuid_53_1360432433.757") :anon :lex :outer("cuid_78_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 801
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    find_lex $P5002, "$?CLASS"
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!shared"
    nqp_get_sc_object $P5004, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 31
    repr_get_attr_int $I5001, $P5003, $P5004, "$!highwater"
    .return ($I5001) 
.end
.HLL "nqp"
.namespace []
.sub "!highexpect" :subid("cuid_54_1360432433.757") :anon :lex :outer("cuid_78_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 805
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5002, _lex_param_0
    find_lex $P5003, "$?CLASS"
    repr_get_attr_obj $P5004, $P5002, $P5003, "$!shared"
    nqp_get_sc_object $P5005, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 31
    getattribute $P5001, $P5004, $P5005, "@!highexpect"
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "!fresh_highexpect" :subid("cuid_55_1360432433.757") :anon :lex :outer("cuid_78_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 809
    .param pmc _lex_param_0 
    .lex "@old", $P101 
    .lex "self", _lex_param_0 
    new $P5001, 'ResizablePMCArray'
    set $P101, $P5001
    nqp_decontainerize $P5003, _lex_param_0
    find_lex $P5004, "$?CLASS"
    repr_get_attr_obj $P5005, $P5003, $P5004, "$!shared"
    nqp_get_sc_object $P5006, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 31
    getattribute $P5002, $P5005, $P5006, "@!highexpect"
    set $P101, $P5002
    nqp_decontainerize $P5007, _lex_param_0
    find_lex $P5008, "$?CLASS"
    repr_get_attr_obj $P5009, $P5007, $P5008, "$!shared"
    nqp_get_sc_object $P5010, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 31
    new $P5011, 'ResizablePMCArray'
    setattribute $P5009, $P5010, "@!highexpect", $P5011
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "!set_highexpect" :subid("cuid_56_1360432433.757") :anon :lex :outer("cuid_78_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 815
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "@highexpect", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    find_lex $P5002, "$?CLASS"
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!shared"
    nqp_get_sc_object $P5004, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 31
    setattribute $P5003, $P5004, "@!highexpect", _lex_param_1
    .return (_lex_param_1) 
.end
.HLL "nqp"
.namespace []
.sub "!clear_highwater" :subid("cuid_57_1360432433.757") :anon :lex :outer("cuid_78_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 819
    .param pmc _lex_param_0 
    .lex "$highexpect", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P101, $P5001
    nqp_decontainerize $P5003, _lex_param_0
    find_lex $P5004, "$?CLASS"
    repr_get_attr_obj $P5005, $P5003, $P5004, "$!shared"
    nqp_get_sc_object $P5006, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 31
    getattribute $P5002, $P5005, $P5006, "@!highexpect"
    set $P101, $P5002
    assign $P101, 0
    nqp_decontainerize $P5007, _lex_param_0
    find_lex $P5008, "$?CLASS"
    repr_get_attr_obj $P5009, $P5007, $P5008, "$!shared"
    nqp_get_sc_object $P5010, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 31
    repr_bind_attr_int $P5009, $P5010, "$!highwater", -1
    .return (-1) 
.end
.HLL "nqp"
.namespace []
.sub "!BACKREF" :subid("cuid_58_1360432433.757") :anon :lex :outer("cuid_78_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 825
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5036 = 'cuid_113_1360432433.757' 
    capture_lex $P5036 
    .lex "$cur", $P101 
    .lex "$n", $I101 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    .local pmc fb_tmp_140 
    .local pmc fb_tmp_141 
    .local pmc tmp_7 
    nqp_get_sc_object $P5001, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P101, $P5001
    set $I101, 0
.annotate 'line', 826
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start"()
    set $P101, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!cstack"
    unless $P5006 goto if513_else1015 
    nqp_decontainerize $P5007, _lex_param_0
    find_lex $P5008, "$?CLASS"
    repr_get_attr_obj $P5009, $P5007, $P5008, "$!cstack"
    elements $I5001, $P5009
    set $N5002, $I5001
    set $N5003, 1
    sub $N5001, $N5002, $N5003
    box $P5011, $N5001
    set $P5010, $P5011
    goto if513_end1016
  if513_else1015:
    box $P5012, -1
    set $P5010, $P5012
  if513_end1016:
    set $I5002, $P5010
    set $I101, $I5002
    new $P5032, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5032, while514_handlers1020
    push_eh $P5032
  while514_test1017:
    set $N5004, $I101
    set $N5005, 0
    isge $I5003, $N5004, $N5005
    set $I5009, $I5003
    unless $I5003 goto if515_end1023 
    nqp_decontainerize $P5014, _lex_param_0
    find_lex $P5015, "$?CLASS"
    repr_get_attr_obj $P5016, $P5014, $P5015, "$!cstack"
    set fb_tmp_140, $P5016
    repr_defined $I5005, fb_tmp_140
    unless $I5005 goto if517_else1026 
    set $P5017, fb_tmp_140[$I101]
    set $P5019, $P5017
    goto if517_end1027
  if517_else1026:
    null $P5018
    set $P5019, $P5018
  if517_end1027:
    unless_null $P5019, vivi_5181028
    nqp_get_sc_object $P5020, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5019, $P5020
  vivi_5181028:
    find_lex $P5021, "$?CLASS"
    getattribute $P5013, $P5019, $P5021, "$!name"
    isnull $I5004, $P5013
    set $I5008, $I5004
    if $I5004 goto unless516_end1025 
    nqp_decontainerize $P5023, _lex_param_0
    find_lex $P5024, "$?CLASS"
    repr_get_attr_obj $P5025, $P5023, $P5024, "$!cstack"
    set fb_tmp_141, $P5025
    repr_defined $I5007, fb_tmp_141
    unless $I5007 goto if519_else1029 
    set $P5026, fb_tmp_141[$I101]
    set $P5028, $P5026
    goto if519_end1030
  if519_else1029:
    null $P5027
    set $P5028, $P5027
  if519_end1030:
    unless_null $P5028, vivi_5201031
    nqp_get_sc_object $P5029, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5028, $P5029
  vivi_5201031:
    find_lex $P5030, "$?CLASS"
    getattribute $P5022, $P5028, $P5030, "$!name"
    set $S5001, $P5022
    set $S5002, _lex_param_1
    isne $I5006, $S5001, $S5002
    set $I5008, $I5006
  unless516_end1025:
    set $I5009, $I5008
  if515_end1023:
    box $P5033, $I5009
    set $P5031, $P5033
    unless $I5009 goto while514_done1021 
  while514_redo1019:
    box $P5031, $I101
    set tmp_7, $P5031
    set $N5007, tmp_7
    set $N5008, 1
    sub $N5006, $N5007, $N5008
    set $I5010, $N5006
    set $I101, $I5010
    set $P5031, tmp_7
    goto while514_test1017 
  while514_handlers1020:
    .get_results ($P5032)
    pop_upto_eh $P5032
    getattribute $P5032, $P5032, 'type'
    eq $P5032, .CONTROL_LOOP_NEXT, while514_test1017
    eq $P5032, .CONTROL_LOOP_REDO, while514_redo1019
  while514_done1021:
    pop_eh 
    set $N5006, $I101
    set $N5007, 0
    isge $I5010, $N5006, $N5007
    unless $I5010 goto if521_end1033 
    .const 'Sub' $P5034 = 'cuid_113_1360432433.757' 
    capture_lex $P5034
    $P5035 = $P5034()
  if521_end1033:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_113_1360432433.757") :anon :lex :outer("cuid_58_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 830
    .lex "$subcur", $P101 
    .lex "$litlen", $I101 
    .lex "$target", $S101 
    .local pmc fb_tmp_142 
    nqp_get_sc_object $P5001, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P101, $P5001
    set $I101, 0
    set $S101, ""
    find_lex $P5003, "self"
    nqp_decontainerize $P5002, $P5003
    find_lex $P5004, "$?CLASS"
    repr_get_attr_obj $P5005, $P5002, $P5004, "$!cstack"
    set fb_tmp_142, $P5005
    repr_defined $I5001, fb_tmp_142
    unless $I5001 goto if522_else1034 
    find_lex $I5002, "$n"
    set $P5006, fb_tmp_142[$I5002]
    set $P5008, $P5006
    goto if522_end1035
  if522_else1034:
    null $P5007
    set $P5008, $P5007
  if522_end1035:
    unless_null $P5008, vivi_5231036
    nqp_get_sc_object $P5009, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5008, $P5009
  vivi_5231036:
    set $P101, $P5008
.annotate 'line', 832
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
    nqp_get_sc_object $P5016, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 31
    repr_get_attr_str $S5001, $P5015, $P5016, "$!target"
    set $S101, $S5001
    find_lex $P5018, "self"
    nqp_decontainerize $P5017, $P5018
    find_lex $P5019, "$?CLASS"
    repr_get_attr_int $I5005, $P5017, $P5019, "$!pos"
    substr $S5002, $S101, $I5005, $I101
.annotate 'line', 836
    $P5020 = $P101."from"()
    set $I5006, $P5020
    substr $S5003, $S101, $I5006, $I101
    iseq $I5004, $S5002, $S5003
    box $P5027, $I5004
    set $P5026, $P5027
    unless $I5004 goto if524_end1038 
.annotate 'line', 834
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
  if524_end1038:
    .return ($P5026) 
.end
.HLL "nqp"
.namespace []
.sub "!LITERAL" :subid("cuid_59_1360432433.757") :anon :lex :outer("cuid_78_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 841
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
    if haz_param_20, default1045
    set $I5010, 0
    set _lex_param_2, $I5010
  default1045:
    nqp_get_sc_object $P5001, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P101, $P5001
    set $I101, 0
    set $S101, ""
.annotate 'line', 842
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start"()
    set $P101, $P5003
    length $I5001, _lex_param_1
    set $I101, $I5001
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!shared"
    nqp_get_sc_object $P5007, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 31
    repr_get_attr_str $S5001, $P5006, $P5007, "$!target"
    set $S101, $S5001
    set $N5001, $I101
    set $N5002, 1
    islt $I5002, $N5001, $N5002
    set $I5008, $I5002
    if $I5002 goto unless526_end1042 
    unless _lex_param_2 goto if527_else1043 
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_int $I5004, $P5008, $P5009, "$!pos"
    substr $S5003, $S101, $I5004, $I101
    downcase $S5002, $S5003
    downcase $S5004, _lex_param_1
    iseq $I5003, $S5002, $S5004
    set $I5007, $I5003
    goto if527_end1044
  if527_else1043:
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5006, $P5010, $P5011, "$!pos"
    substr $S5005, $S101, $I5006, $I101
    iseq $I5005, $S5005, _lex_param_1
    set $I5007, $I5005
  if527_end1044:
    set $I5008, $I5007
  unless526_end1042:
    unless $I5008 goto if525_end1040 
.annotate 'line', 845
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5009, $P5012, $P5013, "$!pos"
    set $N5004, $I5009
    set $N5005, $I101
    add $N5003, $N5004, $N5005
    $P5014 = $P101."!cursor_pass"($N5003)
  if525_end1040:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "at" :subid("cuid_60_1360432433.757") :anon :lex :outer("cuid_78_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 852
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    .lex "$pos", _lex_param_1 
    nqp_get_sc_object $P5001, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P101, $P5001
.annotate 'line', 853
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start"()
    set $P101, $P5003
    set $N5001, _lex_param_1
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_int $I5002, $P5004, $P5005, "$!pos"
    set $N5002, $I5002
    iseq $I5001, $N5001, $N5002
    unless $I5001 goto if528_end1047 
.annotate 'line', 854
    nqp_decontainerize $P5006, _lex_param_0
    find_lex $P5007, "$?CLASS"
    repr_get_attr_int $I5003, $P5006, $P5007, "$!pos"
    $P5008 = $P101."!cursor_pass"($I5003)
  if528_end1047:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "before" :subid("cuid_61_1360432433.757") :anon :lex :outer("cuid_78_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 858
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$orig_highwater", $I101 
    .lex "$orig_highexpect", $P101 
    .lex "$cur", $P102 
    .lex "self", _lex_param_0 
    .lex "$regex", _lex_param_1 
    set $I101, 0
    nqp_get_sc_object $P5001, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P102, $P5002
    nqp_decontainerize $P5003, _lex_param_0
    find_lex $P5004, "$?CLASS"
    repr_get_attr_obj $P5005, $P5003, $P5004, "$!shared"
    nqp_get_sc_object $P5006, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 31
    repr_get_attr_int $I5001, $P5005, $P5006, "$!highwater"
    set $I101, $I5001
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_obj $P5010, $P5008, $P5009, "$!shared"
    nqp_get_sc_object $P5011, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 31
    getattribute $P5007, $P5010, $P5011, "@!highexpect"
    set $P101, $P5007
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_obj $P5014, $P5012, $P5013, "$!shared"
    nqp_get_sc_object $P5015, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 31
    new $P5016, 'ResizablePMCArray'
    setattribute $P5014, $P5015, "@!highexpect", $P5016
.annotate 'line', 862
    nqp_decontainerize $P5017, _lex_param_0
    $P5018 = $P5017."!cursor_start"()
    set $P102, $P5018
    find_lex $P5019, "$?CLASS"
    nqp_decontainerize $P5020, _lex_param_0
    find_lex $P5021, "$?CLASS"
    repr_get_attr_int $I5002, $P5020, $P5021, "$!pos"
    repr_bind_attr_int $P102, $P5019, "$!pos", $I5002
.annotate 'line', 864
    $P5022 = _lex_param_1($P102)
    find_lex $P5023, "$?CLASS"
    repr_get_attr_int $I5004, $P5022, $P5023, "$!pos"
    set $N5001, $I5004
    set $N5002, 0
    isge $I5003, $N5001, $N5002
    unless $I5003 goto if529_else1048 
.annotate 'line', 865
    nqp_decontainerize $P5024, _lex_param_0
    find_lex $P5025, "$?CLASS"
    repr_get_attr_int $I5005, $P5024, $P5025, "$!pos"
    $P5026 = $P102."!cursor_pass"($I5005, "before")
    goto if529_end1049
  if529_else1048:
    find_lex $P5027, "$?CLASS"
    repr_bind_attr_int $P102, $P5027, "$!pos", -3
  if529_end1049:
    nqp_decontainerize $P5028, _lex_param_0
    find_lex $P5029, "$?CLASS"
    repr_get_attr_obj $P5030, $P5028, $P5029, "$!shared"
    nqp_get_sc_object $P5031, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 31
    repr_bind_attr_int $P5030, $P5031, "$!highwater", $I101
    nqp_decontainerize $P5032, _lex_param_0
    find_lex $P5033, "$?CLASS"
    repr_get_attr_obj $P5034, $P5032, $P5033, "$!shared"
    nqp_get_sc_object $P5035, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 31
    setattribute $P5034, $P5035, "@!highexpect", $P101
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "after" :subid("cuid_62_1360432433.757") :anon :lex :outer("cuid_78_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 874
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
    nqp_get_sc_object $P5001, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P102, $P5002
    set $S101, ""
    nqp_get_sc_object $P5003, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P103, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!shared"
    nqp_get_sc_object $P5007, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 31
    repr_get_attr_int $I5001, $P5006, $P5007, "$!highwater"
    set $I101, $I5001
    nqp_decontainerize $P5009, _lex_param_0
    find_lex $P5010, "$?CLASS"
    repr_get_attr_obj $P5011, $P5009, $P5010, "$!shared"
    nqp_get_sc_object $P5012, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 31
    getattribute $P5008, $P5011, $P5012, "@!highexpect"
    set $P101, $P5008
    nqp_decontainerize $P5013, _lex_param_0
    find_lex $P5014, "$?CLASS"
    repr_get_attr_obj $P5015, $P5013, $P5014, "$!shared"
    nqp_get_sc_object $P5016, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 31
    new $P5017, 'ResizablePMCArray'
    setattribute $P5015, $P5016, "@!highexpect", $P5017
.annotate 'line', 878
    nqp_decontainerize $P5018, _lex_param_0
    $P5019 = $P5018."!cursor_start"()
    set $P102, $P5019
    nqp_decontainerize $P5020, _lex_param_0
    find_lex $P5021, "$?CLASS"
    repr_get_attr_obj $P5022, $P5020, $P5021, "$!shared"
    nqp_get_sc_object $P5023, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 31
    repr_get_attr_str $S5001, $P5022, $P5023, "$!target"
    set $S101, $S5001
    nqp_decontainerize $P5025, _lex_param_0
    find_lex $P5026, "$?CLASS"
    repr_get_attr_obj $P5027, $P5025, $P5026, "$!shared"
    repr_clone $P5024, $P5027
    set $P103, $P5024
    nqp_get_sc_object $P5028, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 31
.annotate 'line', 881
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
.annotate 'line', 885
    $P5038 = _lex_param_1($P102)
    find_lex $P5039, "$?CLASS"
    repr_get_attr_int $I5009, $P5038, $P5039, "$!pos"
    set $N5007, $I5009
    set $N5008, 0
    isge $I5008, $N5007, $N5008
    unless $I5008 goto if530_else1050 
.annotate 'line', 886
    nqp_decontainerize $P5040, _lex_param_0
    find_lex $P5041, "$?CLASS"
    repr_get_attr_int $I5010, $P5040, $P5041, "$!pos"
    $P5042 = $P102."!cursor_pass"($I5010, "after")
    goto if530_end1051
  if530_else1050:
    find_lex $P5043, "$?CLASS"
    repr_bind_attr_int $P102, $P5043, "$!pos", -3
  if530_end1051:
    nqp_decontainerize $P5044, _lex_param_0
    find_lex $P5045, "$?CLASS"
    repr_get_attr_obj $P5046, $P5044, $P5045, "$!shared"
    nqp_get_sc_object $P5047, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 31
    repr_bind_attr_int $P5046, $P5047, "$!highwater", $I101
    nqp_decontainerize $P5048, _lex_param_0
    find_lex $P5049, "$?CLASS"
    repr_get_attr_obj $P5050, $P5048, $P5049, "$!shared"
    nqp_get_sc_object $P5051, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 31
    setattribute $P5050, $P5051, "@!highexpect", $P101
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "ws" :subid("cuid_63_1360432433.757") :anon :lex :outer("cuid_78_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 893
    .param pmc _lex_param_0 
    .lex "$target", $S101 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    set $S101, ""
    nqp_get_sc_object $P5001, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P101, $P5001
    nqp_decontainerize $P5002, _lex_param_0
    find_lex $P5003, "$?CLASS"
    repr_get_attr_obj $P5004, $P5002, $P5003, "$!shared"
    nqp_get_sc_object $P5005, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 31
    repr_get_attr_str $S5001, $P5004, $P5005, "$!target"
    set $S101, $S5001
.annotate 'line', 896
    nqp_decontainerize $P5006, _lex_param_0
    $P5007 = $P5006."!cursor_start"()
    set $P101, $P5007
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_int $I5002, $P5008, $P5009, "$!pos"
    set $N5001, $I5002
    length $I5003, $S101
    set $N5002, $I5003
    isge $I5001, $N5001, $N5002
    unless $I5001 goto if531_else1052 
.annotate 'line', 898
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5004, $P5010, $P5011, "$!pos"
    $P5012 = $P101."!cursor_pass"($I5004, "ws")
    goto if531_end1053
  if531_else1052:
    nqp_decontainerize $P5013, _lex_param_0
    find_lex $P5014, "$?CLASS"
    repr_get_attr_int $I5006, $P5013, $P5014, "$!pos"
    set $N5003, $I5006
    set $N5004, 1
    islt $I5005, $N5003, $N5004
    set $I5010, $I5005
    if $I5005 goto unless534_end1059 
    nqp_decontainerize $P5015, _lex_param_0
    find_lex $P5016, "$?CLASS"
    repr_get_attr_int $I5009, $P5015, $P5016, "$!pos"
    is_cclass $I5008, .CCLASS_WORD, $S101, $I5009
    not $I5007, $I5008
    set $I5010, $I5007
  unless534_end1059:
    set $I5015, $I5010
    if $I5010 goto unless533_end1057 
    nqp_decontainerize $P5017, _lex_param_0
    find_lex $P5018, "$?CLASS"
    repr_get_attr_int $I5013, $P5017, $P5018, "$!pos"
    set $N5006, $I5013
    set $N5007, 1
    sub $N5005, $N5006, $N5007
    set $I5014, $N5005
    is_cclass $I5012, .CCLASS_WORD, $S101, $I5014
    not $I5011, $I5012
    set $I5015, $I5011
  unless533_end1057:
    box $P5023, $I5015
    set $P5022, $P5023
    unless $I5015 goto if532_end1055 
.annotate 'line', 902
    nqp_decontainerize $P5019, _lex_param_0
    find_lex $P5020, "$?CLASS"
    repr_get_attr_int $I5017, $P5019, $P5020, "$!pos"
    length $I5018, $S101
    find_not_cclass $I5016, .CCLASS_WHITESPACE, $S101, $I5017, $I5018
    $P5021 = $P101."!cursor_pass"($I5016, "ws")
    set $P5022, $P5021
  if532_end1055:
  if531_end1053:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "ww" :subid("cuid_64_1360432433.757") :anon :lex :outer("cuid_78_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 909
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "$target", $S101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P101, $P5001
    set $S101, ""
.annotate 'line', 910
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start"()
    set $P101, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!shared"
    nqp_get_sc_object $P5007, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 31
    repr_get_attr_str $S5001, $P5006, $P5007, "$!target"
    set $S101, $S5001
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_int $I5002, $P5008, $P5009, "$!pos"
    set $N5001, $I5002
    set $N5002, 0
    isgt $I5001, $N5001, $N5002
    set $I5006, $I5001
    unless $I5001 goto if538_end1067 
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5004, $P5010, $P5011, "$!pos"
    set $N5003, $I5004
    length $I5005, $S101
    set $N5004, $I5005
    isne $I5003, $N5003, $N5004
    set $I5006, $I5003
  if538_end1067:
    set $I5009, $I5006
    unless $I5006 goto if537_end1065 
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5008, $P5012, $P5013, "$!pos"
    is_cclass $I5007, .CCLASS_WORD, $S101, $I5008
    set $I5009, $I5007
  if537_end1065:
    set $I5013, $I5009
    unless $I5009 goto if536_end1063 
    nqp_decontainerize $P5014, _lex_param_0
    find_lex $P5015, "$?CLASS"
    repr_get_attr_int $I5011, $P5014, $P5015, "$!pos"
    set $N5006, $I5011
    set $N5007, 1
    sub $N5005, $N5006, $N5007
    set $I5012, $N5005
    is_cclass $I5010, .CCLASS_WORD, $S101, $I5012
    set $I5013, $I5010
  if536_end1063:
    unless $I5013 goto if535_end1061 
.annotate 'line', 912
    nqp_decontainerize $P5016, _lex_param_0
    find_lex $P5017, "$?CLASS"
    repr_get_attr_int $I5014, $P5016, $P5017, "$!pos"
    $P5018 = $P101."!cursor_pass"($I5014, "ww")
  if535_end1061:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "wb" :subid("cuid_65_1360432433.757") :anon :lex :outer("cuid_78_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 920
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "$target", $S101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P101, $P5001
    set $S101, ""
.annotate 'line', 921
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start"()
    set $P101, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!shared"
    nqp_get_sc_object $P5007, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 31
    repr_get_attr_str $S5001, $P5006, $P5007, "$!target"
    set $S101, $S5001
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_int $I5002, $P5008, $P5009, "$!pos"
    set $N5001, $I5002
    set $N5002, 0
    iseq $I5001, $N5001, $N5002
    set $I5005, $I5001
    unless $I5001 goto if542_end1075 
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5004, $P5010, $P5011, "$!pos"
    is_cclass $I5003, .CCLASS_WORD, $S101, $I5004
    set $I5005, $I5003
  if542_end1075:
    set $I5013, $I5005
    if $I5005 goto unless541_end1073 
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5007, $P5012, $P5013, "$!pos"
    set $N5003, $I5007
    length $I5008, $S101
    set $N5004, $I5008
    iseq $I5006, $N5003, $N5004
    set $I5012, $I5006
    unless $I5006 goto if543_end1077 
    nqp_decontainerize $P5014, _lex_param_0
    find_lex $P5015, "$?CLASS"
    repr_get_attr_int $I5010, $P5014, $P5015, "$!pos"
    set $N5006, $I5010
    set $N5007, 1
    sub $N5005, $N5006, $N5007
    set $I5011, $N5005
    is_cclass $I5009, .CCLASS_WORD, $S101, $I5011
    set $I5012, $I5009
  if543_end1077:
    set $I5013, $I5012
  unless541_end1073:
    set $I5020, $I5013
    if $I5013 goto unless540_end1071 
    nqp_decontainerize $P5016, _lex_param_0
    find_lex $P5017, "$?CLASS"
    repr_get_attr_int $I5016, $P5016, $P5017, "$!pos"
    set $N5009, $I5016
    set $N5010, 1
    sub $N5008, $N5009, $N5010
    set $I5017, $N5008
    is_cclass $I5015, .CCLASS_WORD, $S101, $I5017
    set $N5011, $I5015
    nqp_decontainerize $P5018, _lex_param_0
    find_lex $P5019, "$?CLASS"
    repr_get_attr_int $I5019, $P5018, $P5019, "$!pos"
    is_cclass $I5018, .CCLASS_WORD, $S101, $I5019
    set $N5012, $I5018
    isne $I5014, $N5011, $N5012
    set $I5020, $I5014
  unless540_end1071:
    unless $I5020 goto if539_end1069 
.annotate 'line', 923
    nqp_decontainerize $P5020, _lex_param_0
    find_lex $P5021, "$?CLASS"
    repr_get_attr_int $I5021, $P5020, $P5021, "$!pos"
    $P5022 = $P101."!cursor_pass"($I5021, "wb")
  if539_end1069:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "ident" :subid("cuid_66_1360432433.757") :anon :lex :outer("cuid_78_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 932
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "$target", $S101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P101, $P5001
    set $S101, ""
.annotate 'line', 933
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start"()
    set $P101, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!shared"
    nqp_get_sc_object $P5007, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 31
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
    unless $I5001 goto if545_end1081 
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5006, $P5010, $P5011, "$!pos"
    ord $I5005, $S101, $I5006
    set $N5003, $I5005
    set $N5004, 95
    iseq $I5004, $N5003, $N5004
    set $I5009, $I5004
    if $I5004 goto unless546_end1083 
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5008, $P5012, $P5013, "$!pos"
    is_cclass $I5007, .CCLASS_ALPHABETIC, $S101, $I5008
    set $I5009, $I5007
  unless546_end1083:
    set $I5010, $I5009
  if545_end1081:
    unless $I5010 goto if544_end1079 
.annotate 'line', 935
    nqp_decontainerize $P5014, _lex_param_0
    find_lex $P5015, "$?CLASS"
    repr_get_attr_int $I5012, $P5014, $P5015, "$!pos"
    length $I5013, $S101
    find_not_cclass $I5011, .CCLASS_WORD, $S101, $I5012, $I5013
    $P5016 = $P101."!cursor_pass"($I5011)
  if544_end1079:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "alpha" :subid("cuid_67_1360432433.757") :anon :lex :outer("cuid_78_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 945
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "$target", $S101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P101, $P5001
    set $S101, ""
.annotate 'line', 946
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start"()
    set $P101, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!shared"
    nqp_get_sc_object $P5007, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 31
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
    unless $I5001 goto if548_end1087 
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, .CCLASS_ALPHABETIC, $S101, $I5005
    set $I5009, $I5004
    if $I5004 goto unless549_end1089 
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5008, $P5012, $P5013, "$!pos"
    ord $I5007, $S101, $I5008
    set $N5003, $I5007
    set $N5004, 95
    iseq $I5006, $N5003, $N5004
    set $I5009, $I5006
  unless549_end1089:
    set $I5010, $I5009
  if548_end1087:
    unless $I5010 goto if547_end1085 
.annotate 'line', 948
    nqp_decontainerize $P5014, _lex_param_0
    find_lex $P5015, "$?CLASS"
    repr_get_attr_int $I5011, $P5014, $P5015, "$!pos"
    set $N5006, $I5011
    set $N5007, 1
    add $N5005, $N5006, $N5007
    $P5016 = $P101."!cursor_pass"($N5005, "alpha")
  if547_end1085:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "alnum" :subid("cuid_68_1360432433.757") :anon :lex :outer("cuid_78_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 955
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "$target", $S101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P101, $P5001
    set $S101, ""
.annotate 'line', 956
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start"()
    set $P101, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!shared"
    nqp_get_sc_object $P5007, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 31
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
    unless $I5001 goto if551_end1093 
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, .CCLASS_ALPHANUMERIC, $S101, $I5005
    set $I5009, $I5004
    if $I5004 goto unless552_end1095 
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5008, $P5012, $P5013, "$!pos"
    ord $I5007, $S101, $I5008
    set $N5003, $I5007
    set $N5004, 95
    iseq $I5006, $N5003, $N5004
    set $I5009, $I5006
  unless552_end1095:
    set $I5010, $I5009
  if551_end1093:
    unless $I5010 goto if550_end1091 
.annotate 'line', 958
    nqp_decontainerize $P5014, _lex_param_0
    find_lex $P5015, "$?CLASS"
    repr_get_attr_int $I5011, $P5014, $P5015, "$!pos"
    set $N5006, $I5011
    set $N5007, 1
    add $N5005, $N5006, $N5007
    $P5016 = $P101."!cursor_pass"($N5005, "alnum")
  if550_end1091:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "upper" :subid("cuid_69_1360432433.757") :anon :lex :outer("cuid_78_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 965
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "$target", $S101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P101, $P5001
    set $S101, ""
.annotate 'line', 966
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start"()
    set $P101, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!shared"
    nqp_get_sc_object $P5007, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 31
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
    unless $I5001 goto if554_end1099 
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, .CCLASS_UPPERCASE, $S101, $I5005
    set $I5006, $I5004
  if554_end1099:
    unless $I5006 goto if553_end1097 
.annotate 'line', 968
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5007, $P5012, $P5013, "$!pos"
    set $N5004, $I5007
    set $N5005, 1
    add $N5003, $N5004, $N5005
    $P5014 = $P101."!cursor_pass"($N5003, "upper")
  if553_end1097:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "lower" :subid("cuid_70_1360432433.757") :anon :lex :outer("cuid_78_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 974
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "$target", $S101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P101, $P5001
    set $S101, ""
.annotate 'line', 975
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start"()
    set $P101, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!shared"
    nqp_get_sc_object $P5007, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 31
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
    unless $I5001 goto if556_end1103 
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, .CCLASS_LOWERCASE, $S101, $I5005
    set $I5006, $I5004
  if556_end1103:
    unless $I5006 goto if555_end1101 
.annotate 'line', 977
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5007, $P5012, $P5013, "$!pos"
    set $N5004, $I5007
    set $N5005, 1
    add $N5003, $N5004, $N5005
    $P5014 = $P101."!cursor_pass"($N5003, "lower")
  if555_end1101:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "digit" :subid("cuid_71_1360432433.757") :anon :lex :outer("cuid_78_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 983
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "$target", $S101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P101, $P5001
    set $S101, ""
.annotate 'line', 984
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start"()
    set $P101, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!shared"
    nqp_get_sc_object $P5007, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 31
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
    unless $I5001 goto if558_end1107 
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, .CCLASS_NUMERIC, $S101, $I5005
    set $I5006, $I5004
  if558_end1107:
    unless $I5006 goto if557_end1105 
.annotate 'line', 986
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5007, $P5012, $P5013, "$!pos"
    set $N5004, $I5007
    set $N5005, 1
    add $N5003, $N5004, $N5005
    $P5014 = $P101."!cursor_pass"($N5003, "digit")
  if557_end1105:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "xdigit" :subid("cuid_72_1360432433.757") :anon :lex :outer("cuid_78_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 992
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "$target", $S101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P101, $P5001
    set $S101, ""
.annotate 'line', 993
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start"()
    set $P101, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!shared"
    nqp_get_sc_object $P5007, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 31
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
    unless $I5001 goto if560_end1111 
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, .CCLASS_HEXADECIMAL, $S101, $I5005
    set $I5006, $I5004
  if560_end1111:
    unless $I5006 goto if559_end1109 
.annotate 'line', 995
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5007, $P5012, $P5013, "$!pos"
    set $N5004, $I5007
    set $N5005, 1
    add $N5003, $N5004, $N5005
    $P5014 = $P101."!cursor_pass"($N5003, "xdigit")
  if559_end1109:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "space" :subid("cuid_73_1360432433.757") :anon :lex :outer("cuid_78_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1001
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "$target", $S101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P101, $P5001
    set $S101, ""
.annotate 'line', 1002
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start"()
    set $P101, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!shared"
    nqp_get_sc_object $P5007, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 31
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
    unless $I5001 goto if562_end1115 
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, .CCLASS_WHITESPACE, $S101, $I5005
    set $I5006, $I5004
  if562_end1115:
    unless $I5006 goto if561_end1113 
.annotate 'line', 1004
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5007, $P5012, $P5013, "$!pos"
    set $N5004, $I5007
    set $N5005, 1
    add $N5003, $N5004, $N5005
    $P5014 = $P101."!cursor_pass"($N5003, "space")
  if561_end1113:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "blank" :subid("cuid_74_1360432433.757") :anon :lex :outer("cuid_78_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1010
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "$target", $S101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P101, $P5001
    set $S101, ""
.annotate 'line', 1011
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start"()
    set $P101, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!shared"
    nqp_get_sc_object $P5007, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 31
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
    unless $I5001 goto if564_end1119 
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, .CCLASS_BLANK, $S101, $I5005
    set $I5006, $I5004
  if564_end1119:
    unless $I5006 goto if563_end1117 
.annotate 'line', 1013
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5007, $P5012, $P5013, "$!pos"
    set $N5004, $I5007
    set $N5005, 1
    add $N5003, $N5004, $N5005
    $P5014 = $P101."!cursor_pass"($N5003, "blank")
  if563_end1117:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "cntrl" :subid("cuid_75_1360432433.757") :anon :lex :outer("cuid_78_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1019
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "$target", $S101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P101, $P5001
    set $S101, ""
.annotate 'line', 1020
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start"()
    set $P101, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!shared"
    nqp_get_sc_object $P5007, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 31
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
    unless $I5001 goto if566_end1123 
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, .CCLASS_CONTROL, $S101, $I5005
    set $I5006, $I5004
  if566_end1123:
    unless $I5006 goto if565_end1121 
.annotate 'line', 1022
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5007, $P5012, $P5013, "$!pos"
    set $N5004, $I5007
    set $N5005, 1
    add $N5003, $N5004, $N5005
    $P5014 = $P101."!cursor_pass"($N5003, "cntrl")
  if565_end1121:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "punct" :subid("cuid_76_1360432433.757") :anon :lex :outer("cuid_78_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1028
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "$target", $S101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P101, $P5001
    set $S101, ""
.annotate 'line', 1029
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start"()
    set $P101, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!shared"
    nqp_get_sc_object $P5007, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 31
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
    unless $I5001 goto if568_end1127 
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, .CCLASS_PUNCTUATION, $S101, $I5005
    set $I5006, $I5004
  if568_end1127:
    unless $I5006 goto if567_end1125 
.annotate 'line', 1031
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5007, $P5012, $P5013, "$!pos"
    set $N5004, $I5007
    set $N5005, 1
    add $N5003, $N5004, $N5005
    $P5014 = $P101."!cursor_pass"($N5003, "punct")
  if567_end1125:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "FAILGOAL" :subid("cuid_77_1360432433.757") :anon :lex :outer("cuid_78_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1037
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :optional 
    .param int haz_param_21 :opt_flag 
    .lex "self", _lex_param_0 
    .lex "$goal", _lex_param_1 
    .lex "$dba", _lex_param_2 
    if haz_param_21, default1130
    nqp_get_sc_object $P5004, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set _lex_param_2, $P5004
  default1130:
    if _lex_param_2 goto unless569_end1129 
.annotate 'line', 1038
    getinterp $P5001
    set $P5001, $P5001['sub';1]
    set $S5001, $P5001
    box $P5002, $S5001
    set _lex_param_2, $P5002
  unless569_end1129:
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
.sub "" :subid("cuid_143_1360432433.757") :anon :lex :outer("cuid_141_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1046
    .const 'Sub' $P5013 = 'cuid_79_1360432433.757' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_80_1360432433.757' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_81_1360432433.757' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_82_1360432433.757' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_83_1360432433.757' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_84_1360432433.757' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_85_1360432433.757' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_86_1360432433.757' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_87_1360432433.757' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_88_1360432433.757' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_89_1360432433.757' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_90_1360432433.757' 
    capture_lex $P5013 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_79_1360432433.757' 
    capture_lex $P5001
    .const 'Sub' $P5002 = 'cuid_80_1360432433.757' 
    capture_lex $P5002
    .const 'Sub' $P5003 = 'cuid_81_1360432433.757' 
    capture_lex $P5003
    .const 'Sub' $P5004 = 'cuid_82_1360432433.757' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_83_1360432433.757' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_84_1360432433.757' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_85_1360432433.757' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_86_1360432433.757' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_87_1360432433.757' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_88_1360432433.757' 
    capture_lex $P5010
    .const 'Sub' $P5011 = 'cuid_89_1360432433.757' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_90_1360432433.757' 
    capture_lex $P5012
    .return ($P5012) 
.end
.HLL "nqp"
.namespace []
.sub "from" :subid("cuid_79_1360432433.757") :anon :lex :outer("cuid_143_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1053
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 84
    repr_get_attr_int $I5001, $P5001, $P5002, "$!from"
    .return ($I5001) 
.end
.HLL "nqp"
.namespace []
.sub "orig" :subid("cuid_80_1360432433.757") :anon :lex :outer("cuid_143_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1054
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 84
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!orig"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "to" :subid("cuid_81_1360432433.757") :anon :lex :outer("cuid_143_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1055
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 84
    repr_get_attr_int $I5001, $P5001, $P5002, "$!to"
    .return ($I5001) 
.end
.HLL "nqp"
.namespace []
.sub "CURSOR" :subid("cuid_82_1360432433.757") :anon :lex :outer("cuid_143_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1056
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 84
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!cursor"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "Str" :subid("cuid_83_1360432433.757") :anon :lex :outer("cuid_143_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1057
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 84
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!orig"
    set $S5002, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 84
    repr_get_attr_int $I5001, $P5004, $P5005, "$!from"
    nqp_decontainerize $P5006, _lex_param_0
    nqp_get_sc_object $P5007, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 84
    repr_get_attr_int $I5002, $P5006, $P5007, "$!to"
    set $N5002, $I5002
    nqp_decontainerize $P5008, _lex_param_0
    nqp_get_sc_object $P5009, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 84
    repr_get_attr_int $I5003, $P5008, $P5009, "$!from"
    set $N5003, $I5003
    sub $N5001, $N5002, $N5003
    set $I5004, $N5001
    substr $S5001, $S5002, $I5001, $I5004
    .return ($S5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_84_1360432433.757") :anon :lex :outer("cuid_143_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1058
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    $P5002 = $P5001."Str"()
    set $N5001, $P5002
    .return ($N5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_85_1360432433.757") :anon :lex :outer("cuid_143_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1059
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    $P5002 = $P5001."Str"()
    set $N5001, $P5002
    .return ($N5001) 
.end
.HLL "nqp"
.namespace []
.sub "Bool" :subid("cuid_86_1360432433.757") :anon :lex :outer("cuid_143_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1060
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 84
    repr_get_attr_int $I5002, $P5001, $P5002, "$!to"
    set $N5001, $I5002
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 84
    repr_get_attr_int $I5003, $P5003, $P5004, "$!from"
    set $N5002, $I5003
    isge $I5001, $N5001, $N5002
    .return ($I5001) 
.end
.HLL "nqp"
.namespace []
.sub "chars" :subid("cuid_87_1360432433.757") :anon :lex :outer("cuid_143_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1061
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 84
    repr_get_attr_int $I5002, $P5001, $P5002, "$!to"
    set $N5001, $I5002
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 84
    repr_get_attr_int $I5003, $P5003, $P5004, "$!from"
    set $N5002, $I5003
    isge $I5001, $N5001, $N5002
    unless $I5001 goto if570_else1131 
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 84
    repr_get_attr_int $I5004, $P5005, $P5006, "$!to"
    set $N5004, $I5004
    nqp_decontainerize $P5007, _lex_param_0
    nqp_get_sc_object $P5008, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 84
    repr_get_attr_int $I5005, $P5007, $P5008, "$!from"
    set $N5005, $I5005
    sub $N5003, $N5004, $N5005
    box $P5010, $N5003
    set $P5009, $P5010
    goto if570_end1132
  if570_else1131:
    box $P5011, 0
    set $P5009, $P5011
  if570_end1132:
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "!make" :subid("cuid_88_1360432433.757") :anon :lex :outer("cuid_143_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1063
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$ast", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 84
    repr_bind_attr_obj $P5001, $P5002, "$!ast", _lex_param_1
    .return (_lex_param_1) 
.end
.HLL "nqp"
.namespace []
.sub "ast" :subid("cuid_89_1360432433.757") :anon :lex :outer("cuid_143_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1064
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 84
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!ast"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "!dump_str" :subid("cuid_90_1360432433.757") :anon :lex :outer("cuid_143_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1066
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5019 = 'cuid_146_1360432433.757' 
    capture_lex $P5019 
    .const 'Sub' $P5019 = 'cuid_147_1360432433.757' 
    capture_lex $P5019 
    .lex "&dump_array", $P101 
    .lex "$str", $P102 
    .lex "self", _lex_param_0 
    .lex "$key", _lex_param_1 
    .const 'Sub' $P5001 = 'cuid_146_1360432433.757' 
    capture_lex $P5001
    set $P101, $P5001
    nqp_get_sc_object $P5002, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P102, $P5002
    set $S5006, _lex_param_1
    concat $S5005, $S5006, ": "
.annotate 'line', 1078
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
.annotate 'line', 1079
    nqp_decontainerize $P5008, _lex_param_0
    $P5009 = $P5008."list"()
    $P5010 = "&dump_array"(_lex_param_1, $P5009)
    set $S5012, $P5010
    concat $S5010, $S5011, $S5012
    box $P5011, $S5010
    set $P102, $P5011
.annotate 'line', 1080
    nqp_decontainerize $P5015, _lex_param_0
    $P5016 = $P5015."hash"()
    set $P5012, $P5016
    iter $P5014, $P5016
  for_next1140:
    unless $P5014, for_done1142
    shift $P5018, $P5014
  for_redo1141:
    .const 'Sub' $P5017 = 'cuid_147_1360432433.757' 
    capture_lex $P5017
    $P5012 = $P5017($P5018)
    goto for_next1140
  for_done1142:
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "dump_array" :subid("cuid_146_1360432433.757") :anon :lex :outer("cuid_90_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1067
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5011 = 'cuid_145_1360432433.757' 
    capture_lex $P5011 
    .lex "$str", $P101 
    .lex "$key", _lex_param_0 
    .lex "$item", _lex_param_1 
    nqp_get_sc_object $P5001, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P101, $P5001
    box $P5002, ""
    set $P101, $P5002
.annotate 'line', 1069
    nqp_get_sc_object $P5003, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 42
    $P5004 = $P5003."ACCEPTS"(_lex_param_1)
    unless $P5004 goto if571_else1133 
    set $S5002, $P101
.annotate 'line', 1070
    $P5005 = _lex_param_1."!dump_str"(_lex_param_0)
    set $S5003, $P5005
    concat $S5001, $S5002, $S5003
    box $P5006, $S5001
    set $P101, $P5006
    goto if571_end1134
  if571_else1133:
    isnull $I5002, _lex_param_1
    not $I5001, $I5002
    box $P5010, $I5001
    set $P5009, $P5010
    unless $I5001 goto if572_end1136 
    .const 'Sub' $P5007 = 'cuid_145_1360432433.757' 
    capture_lex $P5007
    $P5008 = $P5007()
    set $P5009, $P5008
  if572_end1136:
  if571_end1134:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_145_1360432433.757") :anon :lex :outer("cuid_146_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1072
    .const 'Sub' $P5009 = 'cuid_144_1360432433.757' 
    capture_lex $P5009 
    .lex "$n", $P101 
    nqp_get_sc_object $P5001, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P101, $P5001
    box $P5002, 0
    set $P101, $P5002
    find_lex $P5006, "$item"
    set $P5003, $P5006
    iter $P5005, $P5006
  for_next1137:
    unless $P5005, for_done1139
    shift $P5008, $P5005
  for_redo1138:
    .const 'Sub' $P5007 = 'cuid_144_1360432433.757' 
    capture_lex $P5007
    $P5003 = $P5007($P5008)
    goto for_next1137
  for_done1139:
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_144_1360432433.757") :anon :lex :outer("cuid_145_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1074
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
.sub "" :subid("cuid_147_1360432433.757") :anon :lex :outer("cuid_90_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1080
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
.sub "" :subid("cuid_149_1360432433.757") :anon :lex :outer("cuid_141_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1085
    .const 'Sub' $P5010 = 'cuid_91_1360432433.757' 
    capture_lex $P5010 
    .const 'Sub' $P5010 = 'cuid_92_1360432433.757' 
    capture_lex $P5010 
    .const 'Sub' $P5010 = 'cuid_93_1360432433.757' 
    capture_lex $P5010 
    .const 'Sub' $P5010 = 'cuid_94_1360432433.757' 
    capture_lex $P5010 
    .const 'Sub' $P5010 = 'cuid_95_1360432433.757' 
    capture_lex $P5010 
    .lex "$EMPTY_MATCH_LIST", $P101 
    .lex "$EMPTY_MATCH_HASH", $P102 
    .lex "$?PACKAGE", $P103 
    .lex "$?CLASS", $P104 
    nqp_get_sc_object $P5001, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P102, $P5002
    new $P5003, 'ResizablePMCArray'
    set $P101, $P5003
    new $P5004, 'Hash'
    set $P102, $P5004
    .const 'Sub' $P5005 = 'cuid_91_1360432433.757' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_92_1360432433.757' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_93_1360432433.757' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_94_1360432433.757' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_95_1360432433.757' 
    capture_lex $P5009
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "MATCH" :subid("cuid_91_1360432433.757") :anon :lex :outer("cuid_149_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1088
    .param pmc _lex_param_0 
    .const 'Sub' $P5008 = 'cuid_148_1360432433.757' 
    capture_lex $P5008 
    .lex "$match", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P101, $P5001
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 97
    getattribute $P5002, $P5003, $P5004, "$!match"
    set $P101, $P5002
    nqp_get_sc_object $P5005, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 84
    type_check $I5001, $P101, $P5005
    set $I5003, $I5001
    if $I5001 goto unless574_end1146 
    nqp_ishash $I5002, $P101
    set $I5003, $I5002
  unless574_end1146:
    if $I5003 goto unless573_end1144 
    .const 'Sub' $P5006 = 'cuid_148_1360432433.757' 
    capture_lex $P5006
    $P5007 = $P5006()
  unless573_end1144:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_148_1360432433.757") :anon :lex :outer("cuid_91_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1090
    .lex "$list", $P101 
    .lex "$hash", $P102 
    .lex "%ch", $P103 
    .lex "$key", $S101 
    .lex "$iter", $P104 
    .local pmc fb_tmp_143 
    .local pmc fb_tmp_144 
    .local pmc fb_tmp_145 
    nqp_get_sc_object $P5001, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P102, $P5002
    new $P5003, 'Hash'
    set $P103, $P5003
    set $S101, ""
    nqp_get_sc_object $P5004, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P104, $P5004
    find_lex $P5005, "$EMPTY_MATCH_LIST"
    set $P101, $P5005
    find_lex $P5006, "$EMPTY_MATCH_HASH"
    set $P102, $P5006
    nqp_get_sc_object $P5008, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 84
    repr_instance_of $P5007, $P5008
    store_lex "$match", $P5007
    find_lex $P5010, "self"
    nqp_decontainerize $P5009, $P5010
    nqp_get_sc_object $P5011, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 97
    find_lex $P5012, "$match"
    setattribute $P5009, $P5011, "$!match", $P5012
    find_lex $P5013, "$match"
    nqp_get_sc_object $P5014, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 84
    find_lex $P5016, "self"
    nqp_decontainerize $P5015, $P5016
    setattribute $P5013, $P5014, "$!cursor", $P5015
    find_lex $P5017, "$match"
    nqp_get_sc_object $P5018, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 84
.annotate 'line', 1096
    find_lex $P5020, "self"
    nqp_decontainerize $P5019, $P5020
    $P5021 = $P5019."orig"()
    setattribute $P5017, $P5018, "$!orig", $P5021
    find_lex $P5022, "$match"
    nqp_get_sc_object $P5023, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 84
    find_lex $P5025, "self"
    nqp_decontainerize $P5024, $P5025
    nqp_get_sc_object $P5026, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 97
    repr_get_attr_int $I5001, $P5024, $P5026, "$!from"
    repr_bind_attr_int $P5022, $P5023, "$!from", $I5001
    find_lex $P5027, "$match"
    nqp_get_sc_object $P5028, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 84
    find_lex $P5030, "self"
    nqp_decontainerize $P5029, $P5030
    nqp_get_sc_object $P5031, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 97
    repr_get_attr_int $I5002, $P5029, $P5031, "$!pos"
    repr_bind_attr_int $P5027, $P5028, "$!to", $I5002
.annotate 'line', 1099
    find_lex $P5033, "self"
    nqp_decontainerize $P5032, $P5033
    $P5034 = $P5032."CAPHASH"()
    set $P103, $P5034
    iter $P5035, $P103
    set $P104, $P5035
  while575_test1147:
    set $P5057, $P104
    unless $P104 goto while575_done1151 
  while575_redo1149:
.annotate 'line', 1102
    shift $P5036, $P104
    set $S5001, $P5036
    set $S101, $S5001
    iseq $I5003, $S101, "$!from"
    set $I5005, $I5003
    if $I5003 goto unless577_end1155 
    iseq $I5004, $S101, "$!to"
    set $I5005, $I5004
  unless577_end1155:
    unless $I5005 goto if576_else1152 
.annotate 'line', 1104
    find_lex $P5037, "$match"
    nqp_get_sc_object $P5038, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 84
.annotate 'line', 1105
    set fb_tmp_143, $P103
    repr_defined $I5006, fb_tmp_143
    unless $I5006 goto if578_else1156 
    set $P5039, fb_tmp_143[$S101]
    set $P5041, $P5039
    goto if578_end1157
  if578_else1156:
    null $P5040
    set $P5041, $P5040
  if578_end1157:
    unless_null $P5041, vivi_5791158
    nqp_get_sc_object $P5042, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5041, $P5042
  vivi_5791158:
    $P5043 = $P5041."from"()
    set $I5007, $P5043
    repr_bind_attr_int $P5037, $P5038, $S101, $I5007
    box $P5056, $I5007
    set $P5055, $P5056
    goto if576_end1153
  if576_else1152:
    is_cclass $I5008, .CCLASS_NUMERIC, $S101, 0
    unless $I5008 goto if580_else1159 
.annotate 'line', 1107
    if $P101 goto unless581_end1162 
    new $P5044, 'ResizablePMCArray'
    set $P101, $P5044
  unless581_end1162:
    set $I5009, $S101
    set fb_tmp_144, $P103
    repr_defined $I5010, fb_tmp_144
    unless $I5010 goto if582_else1163 
    set $P5045, fb_tmp_144[$S101]
    set $P5047, $P5045
    goto if582_end1164
  if582_else1163:
    null $P5046
    set $P5047, $P5046
  if582_end1164:
    unless_null $P5047, vivi_5831165
    nqp_get_sc_object $P5048, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5047, $P5048
  vivi_5831165:
    set $P101[$I5009], $P5047
    set $P5054, $P5047
    goto if580_end1160
  if580_else1159:
.annotate 'line', 1111
    if $P102 goto unless584_end1167 
    new $P5049, 'Hash'
    set $P102, $P5049
  unless584_end1167:
    set fb_tmp_145, $P103
    repr_defined $I5011, fb_tmp_145
    unless $I5011 goto if585_else1168 
    set $P5050, fb_tmp_145[$S101]
    set $P5052, $P5050
    goto if585_end1169
  if585_else1168:
    null $P5051
    set $P5052, $P5051
  if585_end1169:
    unless_null $P5052, vivi_5861170
    nqp_get_sc_object $P5053, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P5052, $P5053
  vivi_5861170:
    set $P102[$S101], $P5052
    set $P5054, $P5052
  if580_end1160:
    set $P5055, $P5054
  if576_end1153:
    set $P5057, $P5055
    goto while575_test1147 
  while575_done1151:
    find_lex $P5058, "$match"
    nqp_get_sc_object $P5059, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 42
    setattribute $P5058, $P5059, "@!array", $P101
    find_lex $P5060, "$match"
    nqp_get_sc_object $P5061, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 42
    setattribute $P5060, $P5061, "%!hash", $P102
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "Bool" :subid("cuid_92_1360432433.757") :anon :lex :outer("cuid_149_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1122
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5002, _lex_param_0
    find_lex $P5003, "$?CLASS"
    getattribute $P5001, $P5002, $P5003, "$!match"
    isnull $I5002, $P5001
    not $I5001, $I5002
    set $I5004, $I5001
    unless $I5001 goto if587_end1172 
    nqp_decontainerize $P5005, _lex_param_0
    find_lex $P5006, "$?CLASS"
    getattribute $P5004, $P5005, $P5006, "$!match"
    istrue $I5003, $P5004
    set $I5004, $I5003
  if587_end1172:
    .return ($I5004) 
.end
.HLL "nqp"
.namespace []
.sub "parse" :subid("cuid_93_1360432433.757") :anon :lex :outer("cuid_149_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1127
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
    if haz_param_22, default1175
    box $P5011, "TOP"
    set _lex_param_2, $P5011
  default1175:
    if haz_param_23, default1176
    nqp_get_sc_object $P5012, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set _lex_param_3, $P5012
  default1176:
    nqp_get_sc_object $P5001, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P102, $P5002
    set $P101, _lex_param_3
.annotate 'line', 1129
    nqp_decontainerize $P5003, _lex_param_0
    $P5004 = $P5003."!cursor_init"(_lex_param_1, _lex_param_4 :flat :named)
    set $P102, $P5004
    is_invokable $I5001, _lex_param_2
    unless $I5001 goto if588_else1173 
.annotate 'line', 1131
    $P5005 = _lex_param_2($P102)
    $P5006 = $P5005."MATCH"()
    set $P5010, $P5006
    goto if588_end1174
  if588_else1173:
.annotate 'line', 1132
    set $S5001, _lex_param_2
    find_method $P5007, $P102, $S5001
    $P5008 = $P5007($P102)
    $P5009 = $P5008."MATCH"()
    set $P5010, $P5009
  if588_end1174:
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "!INTERPOLATE" :subid("cuid_94_1360432433.757") :anon :lex :outer("cuid_149_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1135
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5006 = 'cuid_154_1360432433.757' 
    capture_lex $P5006 
    .const 'Sub' $P5006 = 'cuid_155_1360432433.757' 
    capture_lex $P5006 
    .lex "self", _lex_param_0 
    .lex "$var", _lex_param_1 
    root_new $P101, ['parrot';'Continuation']
    set_label $P101, lexotic_1177
    .lex "RETURN", $P101
    nqp_islist $I5001, _lex_param_1
    unless $I5001 goto if589_else1179 
    .const 'Sub' $P5001 = 'cuid_154_1360432433.757' 
    capture_lex $P5001
    $P5002 = $P5001()
    set $P5005, $P5002
    goto if589_end1180
  if589_else1179:
    .const 'Sub' $P5003 = 'cuid_155_1360432433.757' 
    capture_lex $P5003
    $P5004 = $P5003()
    set $P5005, $P5004
  if589_end1180:
    goto lexotic_1178
  lexotic_1177:
    .get_results ($P5005)
  lexotic_1178:
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_154_1360432433.757") :anon :lex :outer("cuid_94_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1136
    .const 'Sub' $P5016 = 'cuid_152_1360432433.757' 
    capture_lex $P5016 
    .lex "$maxlen", $I101 
    .lex "$cur", $P101 
    .lex "$pos", $I102 
    .lex "$tgt", $S101 
    .lex "$eos", $I103 
    set $I101, 0
    nqp_get_sc_object $P5001, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P101, $P5001
    set $I102, 0
    set $S101, ""
    set $I103, 0
    set $I101, -1
.annotate 'line', 1138
    find_lex $P5003, "self"
    nqp_decontainerize $P5002, $P5003
    $P5004 = $P5002."!cursor_start"()
    set $P101, $P5004
    find_lex $P5005, "$?CLASS"
    repr_get_attr_int $I5001, $P101, $P5005, "$!from"
    set $I102, $I5001
.annotate 'line', 1140
    $P5006 = $P101."target"()
    set $S5001, $P5006
    set $S101, $S5001
    length $I5002, $S101
    set $I103, $I5002
    find_lex $P5010, "$var"
    set $P5007, $P5010
    iter $P5009, $P5010
  for_next1193:
    unless $P5009, for_done1195
    shift $P5012, $P5009
  for_redo1194:
    .const 'Sub' $P5011 = 'cuid_152_1360432433.757' 
    capture_lex $P5011
    $P5007 = $P5011($P5012)
    goto for_next1193
  for_done1195:
    set $N5001, $I101
    set $N5002, 0
    isge $I5003, $N5001, $N5002
    unless $I5003 goto if596_end1197 
.annotate 'line', 1157
    set $N5004, $I102
    set $N5005, $I101
    add $N5003, $N5004, $N5005
    $P5013 = $P101."!cursor_pass"($N5003, "")
  if596_end1197:
    find_lex $P5014, "RETURN"
    $P5015 = $P5014($P101)
    .return ($P5015) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_152_1360432433.757") :anon :lex :outer("cuid_154_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1142
    .param pmc _lex_param_0 
    .const 'Sub' $P5006 = 'cuid_151_1360432433.757' 
    capture_lex $P5006 
    .const 'Sub' $P5006 = 'cuid_153_1360432433.757' 
    capture_lex $P5006 
    .lex "$_", _lex_param_0 
    is_invokable $I5001, _lex_param_0
    unless $I5001 goto if590_else1181 
    .const 'Sub' $P5001 = 'cuid_151_1360432433.757' 
    capture_lex $P5001
    $P5002 = $P5001()
    set $P5005, $P5002
    goto if590_end1182
  if590_else1181:
    .const 'Sub' $P5003 = 'cuid_153_1360432433.757' 
    capture_lex $P5003
    $P5004 = $P5003()
    set $P5005, $P5004
  if590_end1182:
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_151_1360432433.757") :anon :lex :outer("cuid_152_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1143
    .const 'Sub' $P5009 = 'cuid_150_1360432433.757' 
    capture_lex $P5009 
    .lex "$res", $P101 
    nqp_get_sc_object $P5001, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P101, $P5001
.annotate 'line', 1144
    find_lex $P5004, "self"
    nqp_decontainerize $P5003, $P5004
    find_lex $P5002, "$_"
    $P5005 = $P5002($P5003)
    set $P101, $P5005
    set $P5008, $P101
    unless $P101 goto if591_end1184 
    .const 'Sub' $P5006 = 'cuid_150_1360432433.757' 
    capture_lex $P5006
    $P5007 = $P5006()
    set $P5008, $P5007
  if591_end1184:
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_150_1360432433.757") :anon :lex :outer("cuid_151_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1145
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
    unless $I5004 goto if592_end1186 
    store_lex "$maxlen", $I101
    set $I5006, $I101
  if592_end1186:
    .return ($I5006) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_153_1360432433.757") :anon :lex :outer("cuid_152_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1151
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
    unless $I5002 goto if595_end1192 
    find_lex $I5005, "$pos"
    set $N5004, $I5005
    set $N5005, $I101
    add $N5003, $N5004, $N5005
    find_lex $I5006, "$eos"
    set $N5006, $I5006
    isle $I5004, $N5003, $N5006
    set $I5007, $I5004
  if595_end1192:
    set $I5010, $I5007
    unless $I5007 goto if594_end1190 
    find_lex $S5003, "$tgt"
    find_lex $I5009, "$pos"
    substr $S5002, $S5003, $I5009, $I101
    find_lex $P5002, "$_"
    set $S5004, $P5002
    iseq $I5008, $S5002, $S5004
    set $I5010, $I5008
  if594_end1190:
    set $I5011, $I5010
    unless $I5010 goto if593_end1188 
    store_lex "$maxlen", $I101
    set $I5011, $I101
  if593_end1188:
    .return ($I5011) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_155_1360432433.757") :anon :lex :outer("cuid_94_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1160
    .lex "$cur", $P101 
    .lex "$pos", $I101 
    .lex "$tgt", $S101 
    .lex "$len", $I102 
    .lex "$adv", $I103 
    nqp_get_sc_object $P5001, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P101, $P5001
    set $I101, 0
    set $S101, ""
    set $I102, 0
    set $I103, 0
    find_lex $P5002, "$var"
    is_invokable $I5001, $P5002
    unless $I5001 goto if597_end1199 
.annotate 'line', 1161
    find_lex $P5006, "self"
    nqp_decontainerize $P5005, $P5006
    find_lex $P5004, "$var"
    $P5007 = $P5004($P5005)
    find_lex $P5003, "RETURN"
    $P5008 = $P5003($P5007)
  if597_end1199:
.annotate 'line', 1162
    find_lex $P5010, "self"
    nqp_decontainerize $P5009, $P5010
    $P5011 = $P5009."!cursor_start"()
    set $P101, $P5011
    find_lex $P5012, "$?CLASS"
    repr_get_attr_int $I5002, $P101, $P5012, "$!from"
    set $I101, $I5002
.annotate 'line', 1164
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
    if $I5005 goto unless599_end1203 
    substr $S5003, $S101, $I101, $I102
    find_lex $P5015, "$var"
    set $S5004, $P5015
    isne $I5007, $S5003, $S5004
    set $I5008, $I5007
  unless599_end1203:
    unless $I5008 goto if598_end1201 
    find_lex $P5016, "RETURN"
    $P5017 = $P5016($P101)
  if598_end1201:
.annotate 'line', 1169
    $P101."!cursor_pass"($I103, "")
    find_lex $P5018, "RETURN"
    $P5019 = $P5018($P101)
    .return ($P5019) 
.end
.HLL "nqp"
.namespace []
.sub "!INTERPOLATE_REGEX" :subid("cuid_95_1360432433.757") :anon :lex :outer("cuid_149_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1174
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5007 = 'cuid_158_1360432433.757' 
    capture_lex $P5007 
    .lex "self", _lex_param_0 
    .lex "$var", _lex_param_1 
    root_new $P101, ['parrot';'Continuation']
    set_label $P101, lexotic_1204
    .lex "RETURN", $P101
    is_invokable $I5001, _lex_param_1
    if $I5001 goto unless600_end1207 
    .const 'Sub' $P5001 = 'cuid_158_1360432433.757' 
    capture_lex $P5001
    $P5002 = $P5001()
  unless600_end1207:
.annotate 'line', 1190
    nqp_decontainerize $P5004, _lex_param_0
    $P5005 = $P5004."!INTERPOLATE"(_lex_param_1)
    find_lex $P5003, "RETURN"
    $P5006 = $P5003($P5005)
    goto lexotic_1205
  lexotic_1204:
    .get_results ($P5006)
  lexotic_1205:
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_158_1360432433.757") :anon :lex :outer("cuid_95_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1175
    .const 'Sub' $P5009 = 'cuid_157_1360432433.757' 
    capture_lex $P5009 
    .lex "$rxcompiler", $P101 
    nqp_get_sc_object $P5001, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P101, $P5001
    compreg $P5002, "QRegex::P6Regex"
    set $P101, $P5002
    find_lex $P5003, "$var"
    nqp_islist $I5001, $P5003
    unless $I5001 goto if601_else1208 
    .const 'Sub' $P5004 = 'cuid_157_1360432433.757' 
    capture_lex $P5004
    $P5005 = $P5004()
    set $P5008, $P5005
    goto if601_end1209
  if601_else1208:
.annotate 'line', 1186
.annotate 'line', 1187
    find_lex $P5006, "$var"
    $P5007 = $P101."compile"($P5006)
    store_lex "$var", $P5007
    set $P5008, $P5007
  if601_end1209:
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_157_1360432433.757") :anon :lex :outer("cuid_158_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1177
    .const 'Sub' $P5009 = 'cuid_156_1360432433.757' 
    capture_lex $P5009 
    .lex "$res", $P101 
    nqp_get_sc_object $P5001, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P101, $P5001
    new $P5002, 'ResizablePMCArray'
    set $P101, $P5002
    find_lex $P5006, "$var"
    set $P5003, $P5006
    iter $P5005, $P5006
  for_next1212:
    unless $P5005, for_done1214
    shift $P5008, $P5005
  for_redo1213:
    .const 'Sub' $P5007 = 'cuid_156_1360432433.757' 
    capture_lex $P5007
    $P5003 = $P5007($P5008)
    goto for_next1212
  for_done1214:
    store_lex "$var", $P101
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_156_1360432433.757") :anon :lex :outer("cuid_157_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1179
    .param pmc _lex_param_0 
    .lex "$elem", $P101 
    .lex "$_", _lex_param_0 
    nqp_get_sc_object $P5001, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303", 25
    set $P101, $P5001
    set $P101, _lex_param_0
    is_invokable $I5001, $P101
    if $I5001 goto unless602_end1211 
.annotate 'line', 1181
    find_lex $P5002, "$rxcompiler"
    $P5003 = $P5002."compile"($P101)
    set $P101, $P5003
  unless602_end1211:
    find_lex $P5004, "$res"
    push $P5004, $P101
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_159_1360432433.757") :anon :lex :outer("cuid_141_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1194
    .const 'Sub' $P5004 = 'cuid_114_1360432433.757' 
    capture_lex $P5004 
    .const 'Sub' $P5004 = 'cuid_115_1360432433.757' 
    capture_lex $P5004 
    .const 'Sub' $P5004 = 'cuid_116_1360432433.757' 
    capture_lex $P5004 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_114_1360432433.757' 
    capture_lex $P5001
    .const 'Sub' $P5002 = 'cuid_115_1360432433.757' 
    capture_lex $P5002
    .const 'Sub' $P5003 = 'cuid_116_1360432433.757' 
    capture_lex $P5003
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "new" :subid("cuid_114_1360432433.757") :anon :lex :outer("cuid_159_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1196
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$code", _lex_param_1 
.annotate 'line', 1197
    nqp_decontainerize $P5001, _lex_param_0
    $P5002 = $P5001."bless"(_lex_param_1 :named("code"))
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "ACCEPTS" :subid("cuid_115_1360432433.757") :anon :lex :outer("cuid_159_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1199
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$target", _lex_param_1 
.annotate 'line', 1200
    nqp_get_sc_object $P5001, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 97
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5001."parse"(_lex_param_1, $P5002 :named("rule"))
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "Str" :subid("cuid_116_1360432433.757") :anon :lex :outer("cuid_159_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1202
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 103
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!code"
    set $S5001, $P5003
    .return ($S5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_160_1360432433.757") :anon :lex :outer("cuid_141_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1207
    .const 'Sub' $P5002 = 'cuid_117_1360432433.757' 
    capture_lex $P5002 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_117_1360432433.757' 
    capture_lex $P5001
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "ACCEPTS" :subid("cuid_117_1360432433.757") :anon :lex :outer("cuid_160_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1208
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$target", _lex_param_1 
.annotate 'line', 1209
    nqp_get_sc_object $P5001, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 97
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5001."parse"(_lex_param_1, $P5002 :named("rule"), 0 :named("c"))
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_162_1360432433.757") :load :init
.annotate 'file', "src\\stage2\\QRegex.nqp"
    .const 'Sub' $P5001 = 'cuid_161_1360432433.757' 
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
    .const 'Sub' $P5001 = "cuid_141_1360432433.757" 
    get_hll_global $P5002, "ModuleLoader"
    $P5003 = $P5002."load_setting"("NQPCORE")
    $P5004 = $P5001."set_outer_ctx"($P5003)
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P5001, "ModuleLoader"
    $P5001."load_module"("QASTNode")
    nqp_create_sc $P5001, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782"
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
    push $P5004, "ABD9389C4F7313CCF2B91182E52EDD293B1B2122-1360432430.303"
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
    push $P5004, "46A27B8E73DBD8EFB3FE1AA531DA4577B21729DD-1360432426.959"
    push $P5004, "src\\stage2\\gen\\nqp-mo.pm"
    push $P5004, "QRegex::NFA"
    push $P5004, "edges"
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
    push $P5004, "0F0DF90FED7150920ABEE8E1CF7EE9465CABED20-1360432432.128"
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
    push $P5004, "NFA"
    push $P5004, "$?PACKAGE"
    push $P5004, "$?ROLE"
    push $P5004, "$NO_CAPS"
    push $P5004, "$pass_mark"
    push $P5004, "@EMPTY"
    push $P5004, "$?CLASS"
    .const 'Sub' $P5005 = 'cuid_161_1360432433.757' 
    capture_lex $P5005
    $P5006 = $P5005()
    nqp_deserialize_sc "AwAAAEAAAAAEAAAAYAAAAA0AAADIAAAAKhcAAMUAAAB6IwAASk4AADIAAAD6UgAAAQAAAApTAABOUwAAAAAAAAsAAAAMAAAAhwAAAAAAAACKAAAAiwAAAJ4AAACfAAAAAQAAAAAAAAABAAAADAEAAAEAAADEAQAAAQAAAHwCAAABAAAAogUAADcAAACCBwAAAQAAANAHAAABAAAA0goAAAEAAAB4EAAAAQAAAAASAAABAAAAnhMAAAEAAABgFQAANwAAABgWAAAAAAAAbQAAAAAAAAAAAAAACgAHAAAAAgAAAAIAAAAAAG4AAAADAAAAAgAAAAAAbwAAAAQAAAACAAAAAAAgAAAABQAAAAIAAAAAAFQAAAAGAAAAAgAAAAAAYQAAAAcAAAACAAAAAABnAAAACAAAAAIAAAAAAGsAAAAKAAAAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAQAAAAAAAAACAAAAAAAAAAAAAwD/////////////////////AAAAAHAAAAAAAAAAAQAAAAoAAQAAAAkAAAACAAAAAAACAAAACgAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAAEAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAAAQAAAAMA/////////////////////wAAAABxAAAAAAAAAAIAAAAKAAEAAAAEAAAAAgAAAAAAIAAAAAoAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAAACAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAAAIAAAADAP////////////////////8AAAAAcgAAAAAAAAADAAAACgAAAAAACgAkAAAACgAAAAIAAQAAABoAAAANAAAAAgABAAAAGwAAAA4AAAACAAEAAAAcAAAADwAAAAIAAAAAAAQAAAAQAAAAAgABAAAAHgAAABEAAAACAAEAAAAhAAAAEgAAAAIAAQAAACMAAAATAAAAAgABAAAAJQAAABQAAAACAAEAAAAmAAAAFQAAAAIAAQAAACgAAAAWAAAAAgAAAAAAHgAAABcAAAACAAAAAAAFAAAAGAAAAAIAAAAAAAYAAAAZAAAAAgAAAAAABwAAABoAAAACAAAAAAAIAAAAGwAAAAIAAAAAAAkAAAAcAAAAAgAAAAAACgAAAB0AAAACAAAAAAALAAAAHgAAAAIAAAAAAAwAAAAfAAAAAgAAAAAADQAAACAAAAACAAAAAAAOAAAAIQAAAAIAAAAAAA8AAAAiAAAAAgAAAAAAEAAAACMAAAACAAAAAAARAAAAJAAAAAIAAAAAABIAAAAlAAAAAgAAAAAAEwAAACYAAAACAAAAAAAUAAAAJwAAAAIAAAAAABUAAAAoAAAAAgAAAAAAFgAAACkAAAACAAAAAAAXAAAAKgAAAAIAAAAAABgAAAArAAAAAgAAAAAAGQAAACwAAAACAAAAAAAaAAAALQAAAAIAAAAAABsAAAAuAAAAAgAAAAAAHAAAAC8AAAACAAAAAAAdAAAAAAAAAAAAAAACAAAAAAAAAAIAAAAAAAMAAAACAAEAAAAZAAAABAAAAAAAAAABAAAAAAAAAAUAAAAAAAAAAwAAAAAAAAAAAAMAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAQAAAAIAAAAAAAAAAAAAAAEAAAAAAAAAAgABAAAAGQAAAAIAAQAAABkAAAABAP///////////////////////////////wAAAAAAAAAAAgAAAAAAAAACAAEAAAAZAAAAAwACAAAAAAADAAAACgADAAAAMAAAAAQAAAAAAAAAAAAxAAAABAABAAAAAAAAADIAAAAEAAIAAAAAAAAA/////////////////////wAAAABzAAAAAAAAAB8AAAAKAAAAAAAKAAsAAAAKAAAAAgABAAAAGgAAAA0AAAACAAEAAAAbAAAADgAAAAIAAQAAABwAAAAPAAAAAgABAAAAHQAAABAAAAACAAEAAAAeAAAAEQAAAAIAAQAAACEAAAASAAAAAgABAAAAIwAAABMAAAACAAEAAAAlAAAAFAAAAAIAAQAAACYAAAAVAAAAAgABAAAAKAAAABYAAAACAAEAAAApAAAAAAAAAAAAAAACAAAAAAAAAAIAAAAAAB8AAAACAAEAAAAZAAAABAAAAAAAAAABAAAAAAAAAAUAAAAAAAAAAwAAAAAAAAAAAAQAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAEAAAAEAAAAAQAAAAAAAAABAAAAAgAAAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAQAAABkAAAABAAEAAQD///////////////////////////////8AAAAAAAAAAAIAAAAAAAAAAgABAAAAGQAAAAMAAgAAAAAAHwAAAAoABAAAADMAAAAEAAAAAAAAAAAANAAAAAQAAQAAAAAAAAA1AAAABAACAAAAAAAAADYAAAAEAAMAAAAAAAAA/////////////////////wAAAAB0AAAAAAAAACAAAAAKAAAAAAAKAAAAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAAAIAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAB1AAAAAAAAAFQAAAAKAAAAAAAKABcAAAAKAAAAAgABAAAAGgAAAA0AAAACAAEAAAAbAAAADgAAAAIAAQAAABwAAAAPAAAAAgABAAAAKwAAABAAAAACAAAAAABZAAAAEQAAAAIAAQAAACEAAAASAAAAAgABAAAAIwAAABMAAAACAAEAAAAlAAAAFAAAAAIAAQAAACYAAAAVAAAAAgABAAAAKAAAABYAAAACAAEAAAApAAAAOAAAAAIAAQAAACwAAAA5AAAAAgABAAAALQAAADoAAAACAAEAAAAuAAAAOwAAAAIAAAAAAFUAAAA8AAAAAgAAAAAAVgAAAD0AAAACAAAAAABXAAAAPgAAAAIAAAAAAFgAAAA/AAAAAgAAAAAAXAAAAEAAAAACAAAAAABdAAAAQQAAAAIAAAAAAF4AAABCAAAAAgAAAAAAXwAAAEMAAAACAAAAAABgAAAAAAAAAAAAAAADAAAAAAAAAAIAAAAAAFQAAAACAAEAAAAqAAAAAgABAAAAGQAAAAQAAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAIAAAAAAFwAAAAAAAAAAAAAAAcAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAABAAAAAgAAAAEAAAAAAAAAAQAAAAIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAEAAQACAAEAAAAZAAAAAQABAAIAAQAAABkAAAACAAEAAAAZAAAA////////////////////////////////AAAAAAAAAAADAAAAAAAAAAIAAQAAABkAAAADAAIAAQAAACoAAAAKAAIAAABEAAAABAAAAAAAAAAAAEUAAAAEAAEAAAAAAAAAAgAAAAAAVAAAAAoABQAAADMAAAAEAAIAAAAAAAAARgAAAAQAAwAAAAAAAABHAAAABAAEAAAAAAAAAEgAAAAEAAUAAAAAAAAASQAAAAQABgAAAAAAAAAAAAAAAAAAAP//////////AAAAAHYAAAAAAAAAYQAAAAoAAAAAAAoAQgAAAAoAAAACAAEAAAAaAAAADQAAAAIAAQAAABsAAAAOAAAAAgABAAAAHAAAAA8AAAACAAEAAAAdAAAAEAAAAAIAAQAAAB4AAAARAAAAAgABAAAAIQAAABIAAAACAAEAAAAjAAAAEwAAAAIAAQAAACUAAAAUAAAAAgABAAAAJgAAABUAAAACAAEAAAAoAAAAFgAAAAIAAQAAACkAAABKAAAAAgAAAAAAYgAAAD8AAAACAAAAAABjAAAASwAAAAIAAAAAAGQAAABMAAAAAgAAAAAAZQAAAE0AAAACAAAAAABmAAAAPAAAAAIAAAAAAHcAAABOAAAAAgAAAAAAeAAAADsAAAACAAAAAAB5AAAATwAAAAIAAAAAAHoAAABQAAAAAgAAAAAAewAAAFEAAAACAAAAAAB8AAAAUgAAAAIAAAAAAH0AAABTAAAAAgAAAAAAfgAAAFQAAAACAAAAAAB/AAAAVQAAAAIAAAAAAIAAAABWAAAAAgAAAAAAgQAAAFcAAAACAAAAAACCAAAAWAAAAAIAAAAAAIMAAABZAAAAAgAAAAAAhAAAAFoAAAACAAAAAACFAAAAWwAAAAIAAAAAAIYAAABcAAAAAgAAAAAAhwAAAF0AAAACAAAAAACIAAAAXgAAAAIAAAAAAIkAAABfAAAAAgAAAAAAigAAAGAAAAACAAAAAACLAAAAYQAAAAIAAAAAAIwAAABiAAAAAgAAAAAAjQAAAGMAAAACAAAAAACOAAAAZAAAAAIAAAAAAI8AAABlAAAAAgAAAAAAkAAAAGYAAAACAAAAAACRAAAAZwAAAAIAAAAAAJIAAABoAAAAAgAAAAAAkwAAAGkAAAACAAAAAACUAAAAagAAAAIAAAAAAJUAAABrAAAAAgAAAAAAlgAAAGwAAAACAAAAAACXAAAAbQAAAAIAAAAAAJgAAABuAAAAAgAAAAAAmQAAAG8AAAACAAAAAACaAAAAcAAAAAIAAAAAAJsAAABxAAAAAgAAAAAAnAAAAHIAAAACAAAAAACdAAAAcwAAAAIAAAAAAJ4AAAB0AAAAAgAAAAAAnwAAAHUAAAACAAAAAACgAAAAdgAAAAIAAAAAAKEAAAB3AAAAAgAAAAAAogAAAHgAAAACAAAAAACjAAAAeQAAAAIAAAAAAKQAAAB6AAAAAgAAAAAApQAAAHsAAAACAAAAAACmAAAAfAAAAAIAAAAAAKcAAAB9AAAAAgAAAAAAqAAAAAAAAAAAAAAABAAAAAAAAAACAAAAAABhAAAAAgABAAAAGQAAAAIAAAAAACAAAAACAAAAAACpAAAABAAAAAAAAAABAAAAAAAAAAAAAAAAAAAAAgAAAAAAYwAAAAAAAAAAAAAACQAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAQAAAAIAAAABAAAAAAAAAAEAAAACAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAQAAABkAAAABAAEAAgABAAAAGQAAAAIAAQAAABkAAAACAAEAAAAZAAAAAgABAAAAGQAAAAIAAQAAABkAAAACAAEAAAAZAAAA////////////////////////////////AAAAAAAAAAACAAAAAAAAAAIAAQAAABkAAAADAAIAAAAAAGEAAAAKAAkAAAB+AAAABAAAAAAAAAAAAEYAAAAEAAEAAAAAAAAAfwAAAAQAAgAAAAAAAACAAAAABAADAAAAAAAAAIEAAAAEAAQAAAAAAAAAggAAAAQABQAAAAAAAACDAAAABAAGAAAAAAAAAIQAAAAEAAcAAAAAAAAAhQAAAAQACAAAAAAAAAD/////////////////////AAAAAKoAAAAAAAAAZwAAAAoAAAAAAAoACwAAAAoAAAACAAEAAAAaAAAADQAAAAIAAQAAABsAAAAOAAAAAgABAAAAHAAAAA8AAAACAAAAAABoAAAAEAAAAAIAAAAAAGoAAAARAAAAAgABAAAAIQAAABIAAAACAAEAAAAjAAAAEwAAAAIAAQAAACUAAAAUAAAAAgAAAAAAaQAAABUAAAACAAEAAAAoAAAAFgAAAAIAAQAAACkAAAAAAAAAAAAAAAIAAAAAAAAAAgAAAAAAZwAAAAIAAQAAABkAAAAEAAAAAAAAAAEAAAAAAAAABQAAAAAAAAADAAAAAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAEAAAAZAAAA////////////////////////////////AAAAAAAAAAACAAAAAAAAAAIAAQAAABkAAAADAAIAAAAAAGcAAAAKAAEAAACGAAAABAAAAAAAAAAAAP////////////////////8AAAAAqwAAAAAAAABrAAAACgAAAAAACgALAAAACgAAAAIAAQAAABoAAAANAAAAAgABAAAAGwAAAA4AAAACAAEAAAAcAAAADwAAAAIAAAAAAGgAAAAQAAAAAgAAAAAAagAAABEAAAACAAEAAAAhAAAAEgAAAAIAAQAAACMAAAATAAAAAgABAAAAJQAAABQAAAACAAAAAABsAAAAFQAAAAIAAQAAACgAAAAWAAAAAgABAAAAKQAAAAAAAAAAAAAAAwAAAAAAAAACAAAAAABrAAAAAgAAAAAAZwAAAAIAAQAAABkAAAAEAAAAAAAAAAEAAAAAAAAABQAAAAAAAAADAAAAAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAEAAAAZAAAA////////////////////////////////AAAAAAAAAAADAAAAAAAAAAIAAQAAABkAAAADAAIAAAAAAGcAAAAKAAEAAACGAAAABAAAAAAAAAAAAAIAAAAAAGsAAAADAP////////////////////8AAAAAwgAAAAAAAABuAAAACgAUAAAAnQAAAAIABAAAAAMAAACgAAAAAgAEAAAACAAAAKEAAAACAAQAAAAMAAAAogAAAAIABAAAACoAAACjAAAAAgAEAAAAMgAAAKQAAAACAAQAAAA3AAAApQAAAAIABAAAADwAAACmAAAAAgAEAAAAQQAAAKcAAAACAAQAAABFAAAAqAAAAAIABAAAAEoAAACpAAAAAgAEAAAATwAAAKoAAAACAAQAAABYAAAAqwAAAAIABAAAAFoAAACsAAAAAgAEAAAAYQAAAK0AAAACAAQAAABlAAAArgAAAAIABAAAAGkAAACvAAAAAgAEAAAAbQAAALAAAAACAAQAAAB1AAAAsQAAAAIABAAAAHgAAACyAAAAAgAEAAAAggAAAAoAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAABuAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAAG4AAAADAP////////////////////8AAAAAwwAAAAAAAABvAAAACgABAAAAswAAAAIAAAAAAAMAAAAKAAAAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAAAbwAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAQAAAAAAAAACAAAAAABvAAAAAwD/////////////////////AAAAAMQAAAAAAAAAqQAAAAMACgAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAKkAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAACAAAAAAAAAAAAAAAAAAAAAwAAAAAAAAAAAAAAAQAAAAUAAAAAAAAAAQAAAAEAAAAFAAAAFAAAAAEAAAABAAAABQAAACgAAAABAAAAAQAAAAUAAAA8AAAAAQAAAAEAAAAFAAAAUAAAAAEAAAABAAAABQAAAGQAAAABAAAAAQAAAAUAAAB4AAAAAQAAAAEAAAAFAAAAjAAAAAEAAAABAAAABQAAAKAAAAABAAAAAQAAAAUAAAC0AAAAAQAAAAEAAAAFAAAAyAAAAAEAAAABAAAABQAAANwAAAABAAAAAQAAAAUAAADwAAAAAQAAAAEAAAAFAAAABAEAAAEAAAABAAAABQAAABgBAAABAAAAAQAAAAUAAAAsAQAAAQAAAAEAAAAFAAAAQAEAAAEAAAABAAAABQAAAFQBAAABAAAAAQAAAAUAAABoAQAAAQAAAAEAAAAFAAAAfAEAAAEAAAABAAAABQAAAJABAAABAAAAAQAAAAUAAACkAQAAAQAAAAEAAAAFAAAAuAEAAAEAAAABAAAABQAAAMwBAAABAAAAAQAAAAUAAADgAQAAAQAAAAEAAAAFAAAA9AEAAAEAAAABAAAABQAAAAgCAAABAAAAAAAAAAQAAAAcAgAAAAAAAAAAAAAFAAAAHAIAAAAAAAABAAAABQAAABwCAAABAAAAAQAAAAUAAAAwAgAAAQAAAAEAAAAFAAAARAIAAAEAAAABAAAABQAAAFgCAAABAAAAAQAAAAUAAABsAgAAAQAAAAEAAAAFAAAAgAIAAAEAAAABAAAABQAAAJQCAAABAAAAAQAAAAUAAACoAgAAAQAAAAEAAAAFAAAAvAIAAAEAAAABAAAABQAAANACAAABAAAAAQAAAAUAAADkAgAAAQAAAAEAAAAFAAAA+AIAAAEAAAABAAAABQAAAAwDAAABAAAAAQAAAAUAAAAgAwAAAQAAAAEAAAAFAAAANAMAAAEAAAABAAAABQAAAEgDAAABAAAAAQAAAAUAAABcAwAAAQAAAAEAAAAFAAAAcAMAAAEAAAABAAAABQAAAIQDAAABAAAAAQAAAAUAAACYAwAAAQAAAAEAAAAFAAAArAMAAAEAAAABAAAABQAAAMADAAABAAAAAQAAAAUAAADUAwAAAQAAAAEAAAAFAAAA6AMAAAEAAAABAAAABQAAAPwDAAABAAAAAQAAAAUAAAAQBAAAAQAAAAEAAAAFAAAAJAQAAAEAAAABAAAABQAAADgEAAABAAAAAQAAAAUAAABMBAAAAQAAAAEAAAAFAAAAYAQAAAEAAAABAAAABQAAAHQEAAABAAAAAQAAAAUAAACIBAAAAQAAAAEAAAAFAAAAnAQAAAEAAAABAAAABQAAALAEAAABAAAAAQAAAAUAAADEBAAAAQAAAAEAAAAFAAAA2AQAAAEAAAABAAAABQAAAOwEAAABAAAAAQAAAAUAAAAABQAAAQAAAAEAAAAFAAAAFAUAAAEAAAABAAAABQAAACgFAAABAAAAAQAAAAUAAAA8BQAAAQAAAAEAAAAFAAAAUAUAAAEAAAABAAAABQAAAGQFAAABAAAAAQAAAAUAAAB4BQAAAQAAAAEAAAAFAAAAjAUAAAEAAAABAAAABQAAAKAFAAABAAAAAQAAAAUAAAC0BQAAAQAAAAEAAAAFAAAAyAUAAAEAAAABAAAABQAAANwFAAABAAAAAQAAAAUAAADwBQAAAQAAAAEAAAAFAAAABAYAAAEAAAAAAAAABgAAABgGAAAAAAAAAQAAAAUAAAAYBgAAAQAAAAEAAAAFAAAALAYAAAEAAAABAAAABQAAAEAGAAABAAAAAQAAAAUAAABUBgAAAQAAAAEAAAAFAAAAaAYAAAEAAAABAAAABQAAAHwGAAABAAAAAQAAAAUAAACQBgAAAQAAAAEAAAAFAAAApAYAAAEAAAABAAAABQAAALgGAAABAAAAAQAAAAUAAADMBgAAAQAAAAEAAAAFAAAA4AYAAAEAAAABAAAABQAAAPQGAAABAAAAAAAAAAcAAAAIBwAAAAAAAAEAAAAFAAAACAcAAAEAAAABAAAABQAAABwHAAABAAAAAQAAAAUAAAAwBwAAAQAAAAEAAAAFAAAARAcAAAEAAAABAAAABQAAAFgHAAABAAAAAAAAAAgAAABsBwAAAAAAAAEAAAAFAAAAbAcAAAEAAAABAAAABQAAAIAHAAABAAAAAQAAAAUAAACUBwAAAQAAAAAAAAAJAAAAqAcAAAAAAAABAAAABQAAAKgHAAABAAAAAgAAAAAAAAC8BwAAAQAAAAAAAAAKAAAAzAcAAAAAAAAAAAAACwAAAMwHAAAAAAAAAgAAAAAAAADMBwAAAQAAAAIAAAAAAAAA3AcAAAEAAAADAAAABwAAAOwHAAABAAAAAwAAAAcAAAAmDAAAAQAAAAMAAAAGAAAAMg4AAAEAAAADAAAABwAAAJ4RAAABAAAAAwAAAAcAAADyEwAAAQAAAAEAAAAFAAAABh0AAAEAAAABAAAABQAAABodAAABAAAAAQAAAAUAAAAuHQAAAQAAAAEAAAAFAAAAQh0AAAEAAAABAAAABQAAAFYdAAABAAAAAQAAAAUAAABqHQAAAQAAAAEAAAAFAAAAfh0AAAEAAAABAAAABQAAAJIdAAABAAAAAQAAAAUAAACmHQAAAQAAAAEAAAAFAAAAuh0AAAEAAAABAAAABQAAAM4dAAABAAAAAQAAAAUAAADiHQAAAQAAAAEAAAAFAAAA9h0AAAEAAAABAAAABQAAAAoeAAABAAAAAQAAAAUAAAAeHgAAAQAAAAEAAAAFAAAAMh4AAAEAAAABAAAABQAAAEYeAAABAAAAAQAAAAUAAABaHgAAAQAAAAEAAAAFAAAAbh4AAAEAAAABAAAABQAAAIIeAAABAAAAAQAAAAUAAACWHgAAAQAAAAEAAAAFAAAAqh4AAAEAAAABAAAABQAAAL4eAAABAAAAAQAAAAUAAADSHgAAAQAAAAEAAAAFAAAA5h4AAAEAAAABAAAABQAAAPoeAAABAAAAAQAAAAUAAAAOHwAAAQAAAAEAAAAFAAAAIh8AAAEAAAABAAAABQAAADYfAAABAAAAAQAAAAUAAABKHwAAAQAAAAEAAAAFAAAAXh8AAAEAAAABAAAABQAAAHIfAAABAAAAAQAAAAUAAACGHwAAAQAAAAEAAAAFAAAAmh8AAAEAAAABAAAABQAAAK4fAAABAAAAAQAAAAUAAADCHwAAAQAAAAEAAAAFAAAA1h8AAAEAAAABAAAABQAAAOofAAABAAAAAQAAAAUAAAD+HwAAAQAAAAEAAAAFAAAAEiAAAAEAAAABAAAABQAAACYgAAABAAAAAQAAAAUAAAA6IAAAAQAAAAEAAAAFAAAATiAAAAEAAAABAAAABQAAAGIgAAABAAAAAQAAAAUAAAB2IAAAAQAAAAEAAAAFAAAAiiAAAAEAAAABAAAABQAAAJ4gAAABAAAAAQAAAAUAAACyIAAAAQAAAAEAAAAFAAAAxiAAAAEAAAABAAAABQAAANogAAABAAAAAAAAAAwAAADuIAAAAAAAAAMAAAAHAAAA7iAAAAEAAAADAAAABwAAAFwiAAABAAAAAwAAAAkAAABAIwAAAQAAAAMAAAAJAAAAbCMAAAEAAAADAAAACQAAAJgjAAABAAAAAwAAAAkAAADMIwAAAQAAAAMAAAAJAAAA+CMAAAEAAAADAAAACQAAACwkAAABAAAAAwAAAAkAAABgJAAAAQAAAAMAAAAJAAAAhCQAAAEAAAADAAAACQAAALAkAAABAAAAAwAAAAkAAADkJAAAAQAAAAMAAAAJAAAAGCUAAAEAAAADAAAACQAAAEQlAAABAAAAAwAAAAkAAABwJQAAAQAAAAMAAAAJAAAAnCUAAAEAAAADAAAACQAAAMglAAABAAAAAwAAAAkAAAD0JQAAAQAAAAMAAAAJAAAAICYAAAEAAAADAAAACQAAAEwmAAABAAAAAwAAAAkAAACAJgAAAQAAAAMAAAAJAAAAtCYAAAEAAAADAAAACQAAAOAmAAABAAAAAwAAAAkAAAAMJwAAAQAAAAIAAAAAAAAAOCcAAAEAAAACAAAAAAAAAEgnAAABAAAAAwAAAAMAAABYJwAAAQAAAAsAAAAAAAAAAAABAAEAAQABAAMACwAAAAAAAQAAAAEAAQABAAEAAwALAAAAAAACAAAAAQABAAEAAQADAAsAAAAAAAMAAAABAAEAAQABAAMACwAAAAAABAAAAAEAAQABAAEAAwALAAAAAAAFAAAAAQABAAEAAQADAAsAAAAAAAYAAAABAAEAAQABAAMACwAAAAAABwAAAAEAAQABAAEAAwALAAAAAAAIAAAAAQABAAEAAQADAAsAAAAAAAkAAAABAAEAAQABAAMACwAAAAAACgAAAAEAAQABAAEAAwALAAAAAAALAAAAAQABAAEAAQADAAsAAAAAAAwAAAABAAEAAQABAAMACwAAAAAADQAAAAEAAQABAAEAAwALAAAAAAAOAAAAAQABAAEAAQADAAsAAAAAAA8AAAABAAEAAQABAAMACwAAAAAAEAAAAAEAAQABAAEAAwALAAAAAAARAAAAAQABAAEAAQADAAsAAAAAABIAAAABAAEAAQABAAMACwAAAAAAEwAAAAEAAQABAAEAAwALAAAAAAAUAAAAAQABAAEAAQADAAsAAAAAABUAAAABAAEAAQABAAMACwAAAAAAFgAAAAEAAQABAAEAAwALAAAAAAAXAAAAAQABAAEAAQADAAsAAAAAABgAAAABAAEAAQABAAMACwAAAAAAGQAAAAEAAQABAAEAAwALAAAAAAAaAAAAAQABAAEAAQADAAsAAAAAABsAAAABAAEAAQABAAMACwAAAAAAHAAAAAEAAQABAAEAAwALAAAAAAAdAAAAAQABAAEAAQADAAsAAAAAAB4AAAABAAEAAQABAAMACwAAAAAAHwAAAAEAAQABAAEAAwALAAAAAAAgAAAAAQABAAEAAQADAAsAAAAAACEAAAABAAEAAQABAAMACwAAAAAAIgAAAAEAAQABAAEAAwALAAAAAAAjAAAAAQABAAEAAQADAAsAAAAAACQAAAABAAEAAQABAAMACwAAAAAAJQAAAAEAAQABAAEAAwALAAAAAAAmAAAAAQABAAEAAQADAAsAAAAAACcAAAABAAEAAQABAAMACwAAAAAAKAAAAAEAAQABAAEAAwALAAAAAAApAAAAAQABAAEAAQADAAsAAAAAACoAAAABAAEAAQABAAMACwAAAAAAKwAAAAEAAQABAAEAAwALAAAAAAAsAAAAAQABAAEAAQADAAsAAAAAAC0AAAABAAEAAQABAAMACwAAAAAALgAAAAEAAQABAAEAAwALAAAAAAAvAAAAAQABAAEAAQADAAsAAAAAADAAAAABAAEAAQABAAMACwAAAAAAMQAAAAEAAQABAAEAAwALAAAAAAAyAAAAAQABAAEAAQADAAsAAAAAADMAAAABAAEAAQABAAMACwAAAAAANAAAAAEAAQABAAEAAwALAAAAAAA1AAAAAQABAAEAAQADAAsAAAAAADYAAAABAAEAAQABAAMACwAAAAAANwAAAAEAAQABAAEAAwALAAAAAAA4AAAAAQABAAEAAQADAAsAAAAAADkAAAABAAEAAQABAAMACwAAAAAAOgAAAAEAAQABAAEAAwALAAAAAAA7AAAAAQABAAEAAQADAAsAAAAAADwAAAABAAEAAQABAAMACwAAAAAAPQAAAAEAAQABAAEAAwALAAAAAAA+AAAAAQABAAEAAQADAAsAAAAAAD8AAAABAAEAAQABAAMACwAAAAAAQAAAAAEAAQABAAEAAwALAAAAAABBAAAAAQABAAEAAQADAAsAAAAAAEIAAAABAAEAAQABAAMACwAAAAAAQwAAAAEAAQABAAEAAwALAAAAAABEAAAAAQABAAEAAQADAAsAAAAAAEUAAAABAAEAAQABAAMACwAAAAAARgAAAAEAAQABAAEAAwALAAAAAABHAAAAAQABAAEAAQADAAsAAAAAAEgAAAABAAEAAQABAAMACwAAAAAASQAAAAEAAQABAAEAAwALAAAAAABKAAAAAQABAAEAAQADAAsAAAAAAEsAAAABAAEAAQABAAMACwAAAAAATAAAAAEAAQABAAEAAwALAAAAAABNAAAAAQABAAEAAQADAAsAAAAAAE4AAAABAAEAAQABAAMACwAAAAAATwAAAAEAAQABAAEAAwALAAAAAABQAAAAAQABAAEAAQADAAsAAAAAAFEAAAABAAEAAQABAAMACwAAAAAAUgAAAAEAAQABAAEAAwALAAAAAABTAAAAAQABAAEAAQADAAsAAAAAAFQAAAABAAEAAQABAAMACwAAAAAAVQAAAAEAAQABAAEAAwALAAAAAABWAAAAAQABAAEAAQADAAsAAAAAAFcAAAABAAEAAQABAAMACwAAAAAAWAAAAAEAAQABAAEAAwALAAAAAABZAAAAAQABAAEAAQADAAsAAAAAAFoAAAABAAEAAQABAAMACwAAAAAAWwAAAAEAAQABAAEAAwALAAAAAABcAAAAAQABAAEAAQADAAsAAAAAAF0AAAABAAEAAQABAAMACwAAAAAAXgAAAAEAAQABAAEAAwALAAAAAABfAAAAAQABAAEAAQADAAsAAAAAAGAAAAABAAEAAQABAAMACwAAAAAAYQAAAAEAAQABAAEAAwALAAAAAABiAAAAAQABAAEAAQADAIgAAAAHAAAAAAAKAAAAAACJAAAABwAAAAAACgAAAAAACQAAAAcAAAAAAAoAAAAAAAYAjAAAAAoAAwAAADAAAAACAAAAAACsAAAAMQAAAAIAAAAAAK0AAAAyAAAAAgAAAAAArgAAAAoAGwAAAA8AAAACAAAAAAAEAAAAFwAAAAIAAAAAAAUAAAAYAAAAAgAAAAAABgAAABkAAAACAAAAAAAHAAAAGgAAAAIAAAAAAAgAAAAbAAAAAgAAAAAACQAAABwAAAACAAAAAAAKAAAAHQAAAAIAAAAAAAsAAAAeAAAAAgAAAAAADAAAAB8AAAACAAAAAAANAAAAIAAAAAIAAAAAAA4AAAAhAAAAAgAAAAAADwAAACIAAAACAAAAAAAQAAAAIwAAAAIAAAAAABEAAAAkAAAAAgAAAAAAEgAAACUAAAACAAAAAAATAAAAJgAAAAIAAAAAABQAAAAnAAAAAgAAAAAAFQAAACgAAAACAAAAAAAWAAAAKQAAAAIAAAAAABcAAAAqAAAAAgAAAAAAGAAAACsAAAACAAAAAAAZAAAALAAAAAIAAAAAABoAAAAtAAAAAgAAAAAAGwAAAC4AAAACAAAAAAAcAAAALwAAAAIAAAAAAB0AAAAWAAAAAgAAAAAAHgAAAAcAGwAAAAIAAAAAAAQAAAACAAAAAAAFAAAAAgAAAAAABgAAAAIAAAAAAAcAAAACAAAAAAAIAAAAAgAAAAAACQAAAAIAAAAAAAoAAAACAAAAAAALAAAAAgAAAAAADAAAAAIAAAAAAA0AAAACAAAAAAAOAAAAAgAAAAAADwAAAAIAAAAAABAAAAACAAAAAAARAAAAAgAAAAAAEgAAAAIAAAAAABMAAAACAAAAAAAUAAAAAgAAAAAAFQAAAAIAAAAAABYAAAACAAAAAAAXAAAAAgAAAAAAGAAAAAIAAAAAABkAAAACAAAAAAAaAAAAAgAAAAAAGwAAAAIAAAAAABwAAAACAAAAAAAdAAAAAgAAAAAAHgAAAAcAAAAAAAcAAQAAAAIAAQAAABkAAAAHAAAAAAACAAEAAAAZAAAABwAAAAAACgAAAAAABAABAAAAAAAAAAcAAgAAAAIAAAAAAAMAAAACAAEAAAAZAAAABwAAAAAAAQAKAAAAAAAKAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAwAAAAcABAAAAAQAAQAAAAAAAAACAAAAAAADAAAABgAaAAAABgAwAAAABwAEAAAABAABAAAAAAAAAAIAAAAAAAMAAAAGAI0AAAAGADEAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAAwAAAAYALgAAAAYAMgAAAAcAAwAAAAcABAAAAAQAAQAAAAAAAAACAAAAAAADAAAABgAaAAAABgAwAAAABwAEAAAABAABAAAAAAAAAAIAAAAAAAMAAAAGAI0AAAAGADEAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAAwAAAAYALgAAAAYAMgAAAAEABgCOAAAACgAEAAAAMwAAAAIAAAAAAK8AAAA0AAAAAgAAAAAAsAAAADUAAAACAAAAAACxAAAANgAAAAIAAAAAALIAAAAKAAAAAAAHAAAAAAAHAAAAAAAHAAEAAAACAAEAAAAZAAAABwAAAAAAAgABAAAAGQAAAAcAAAAAAAoAAAAAAAQAAQAAAAAAAAAHAAIAAAACAAAAAAAfAAAAAgABAAAAGQAAAAcAAAAAAAEACgAAAAAACgAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAQAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAHwAAAAYAPAAAAAYAMwAAAAcABAAAAAQAAQAAAAAAAAACAAAAAAAfAAAABgBOAAAABgA0AAAABwAEAAAABAABAAAAAAAAAAIAAAAAAB8AAAAGAI8AAAAGADUAAAAHAAQAAAAEAAIAAAAAAAAAAgAAAAAAHwAAAAYAkAAAAAYANgAAAAcABAAAAAcABAAAAAQAAQAAAAAAAAACAAAAAAAfAAAABgA8AAAABgAzAAAABwAEAAAABAABAAAAAAAAAAIAAAAAAB8AAAAGAE4AAAAGADQAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAHwAAAAYAjwAAAAYANQAAAAcABAAAAAQAAgAAAAAAAAACAAAAAAAfAAAABgCQAAAABgA2AAAAAQAGAAQAAAAKAAkAAAB+AAAAAgAAAAAAswAAAEYAAAACAAAAAAC0AAAAfwAAAAIAAAAAALUAAACAAAAAAgAAAAAAtgAAAIEAAAACAAAAAAC3AAAAggAAAAIAAAAAALgAAACDAAAAAgAAAAAAuQAAAIQAAAACAAAAAAC6AAAAhQAAAAIAAAAAALsAAAAKADIAAAA8AAAAAgAAAAAAIQAAAE4AAAACAAAAAAAiAAAAOwAAAAIAAAAAACMAAABPAAAAAgAAAAAAJAAAAFAAAAACAAAAAAAlAAAAUQAAAAIAAAAAACYAAABSAAAAAgAAAAAAJwAAAFMAAAACAAAAAAAoAAAAVAAAAAIAAAAAACkAAABVAAAAAgAAAAAAKgAAAFYAAAACAAAAAAArAAAAVwAAAAIAAAAAACwAAABYAAAAAgAAAAAALQAAAFkAAAACAAAAAAAuAAAAWgAAAAIAAAAAAC8AAABbAAAAAgAAAAAAMAAAAFwAAAACAAAAAAAxAAAAXQAAAAIAAAAAADIAAABeAAAAAgAAAAAAMwAAAF8AAAACAAAAAAA0AAAAYAAAAAIAAAAAADUAAABhAAAAAgAAAAAANgAAAGIAAAACAAAAAAA3AAAAYwAAAAIAAAAAADgAAABkAAAAAgAAAAAAOQAAAGUAAAACAAAAAAA6AAAAZgAAAAIAAAAAADsAAABnAAAAAgAAAAAAPAAAAGgAAAACAAAAAAA9AAAAaQAAAAIAAAAAAD4AAABqAAAAAgAAAAAAPwAAAGsAAAACAAAAAABAAAAAbAAAAAIAAAAAAEEAAABtAAAAAgAAAAAAQgAAAG4AAAACAAAAAABDAAAAbwAAAAIAAAAAAEQAAABwAAAAAgAAAAAARQAAAHEAAAACAAAAAABGAAAAcgAAAAIAAAAAAEcAAABzAAAAAgAAAAAASAAAAHQAAAACAAAAAABJAAAAdQAAAAIAAAAAAEoAAAB2AAAAAgAAAAAASwAAAHcAAAACAAAAAABMAAAAeAAAAAIAAAAAAE0AAAB5AAAAAgAAAAAATgAAAHoAAAACAAAAAABPAAAAewAAAAIAAAAAAFAAAAB8AAAAAgAAAAAAUQAAAH0AAAACAAAAAABSAAAABwAAAAAABwAAAAAABAABAAAAAAAAAAIAAAAAAFMAAAAGAAUAAAAKAAUAAAAzAAAAAgAAAAAAvAAAAEYAAAACAAAAAAC9AAAARwAAAAIAAAAAAL4AAABIAAAAAgAAAAAAvwAAAEkAAAACAAAAAADAAAAACgAKAAAAOwAAAAIAAAAAAFUAAAA8AAAAAgAAAAAAVgAAAD0AAAACAAAAAABXAAAAPgAAAAIAAAAAAFgAAAAQAAAAAgAAAAAAWQAAAD8AAAACAAAAAABcAAAAQAAAAAIAAAAAAF0AAABBAAAAAgAAAAAAXgAAAEIAAAACAAAAAABfAAAAQwAAAAIAAAAAAGAAAAAHAAoAAAACAAAAAABVAAAAAgAAAAAAVgAAAAIAAAAAAFcAAAACAAAAAABYAAAAAgAAAAAAWQAAAAIAAAAAAFwAAAACAAAAAABdAAAAAgAAAAAAXgAAAAIAAAAAAF8AAAACAAAAAABgAAAABwAAAAAABwABAAAAAgABAAAAKgAAAAcAAAAAAAEABwAAAAAACgAAAAAABAABAAAAAAAAAAcAAwAAAAIAAAAAAFQAAAACAAEAAAAqAAAAAgABAAAAGQAAAAcAAAAAAAEACgADAAAAkQAAAAIAAAAAAFkAAACSAAAAAgAAAAAAWgAAAJMAAAACAAAAAABbAAAACgAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAIAAAAHAAIAAAAEAAAAAAAAAAAAAgABAAAALAAAAAcAAgAAAAQAAAAAAAAAAAACAAEAAAAsAAAABwABAAAABwACAAAABAAAAAAAAAAAAAIAAQAAACwAAAABAAYABgAAAAoACQAAAH4AAAACAAAAAACzAAAARgAAAAIAAAAAALQAAAB/AAAAAgAAAAAAtQAAAIAAAAACAAAAAAC2AAAAgQAAAAIAAAAAALcAAACCAAAAAgAAAAAAuAAAAIMAAAACAAAAAAC5AAAAhAAAAAIAAAAAALoAAACFAAAAAgAAAAAAuwAAAAoANwAAAEoAAAACAAAAAABiAAAAPwAAAAIAAAAAAGMAAABLAAAAAgAAAAAAZAAAAEwAAAACAAAAAABlAAAATQAAAAIAAAAAAGYAAAA8AAAAAgAAAAAAdwAAAE4AAAACAAAAAAB4AAAAOwAAAAIAAAAAAHkAAABPAAAAAgAAAAAAegAAAFAAAAACAAAAAAB7AAAAUQAAAAIAAAAAAHwAAABSAAAAAgAAAAAAfQAAAFMAAAACAAAAAAB+AAAAVAAAAAIAAAAAAH8AAABVAAAAAgAAAAAAgAAAAFYAAAACAAAAAACBAAAAVwAAAAIAAAAAAIIAAABYAAAAAgAAAAAAgwAAAFkAAAACAAAAAACEAAAAWgAAAAIAAAAAAIUAAABbAAAAAgAAAAAAhgAAAFwAAAACAAAAAACHAAAAXQAAAAIAAAAAAIgAAABeAAAAAgAAAAAAiQAAAF8AAAACAAAAAACKAAAAYAAAAAIAAAAAAIsAAABhAAAAAgAAAAAAjAAAAGIAAAACAAAAAACNAAAAYwAAAAIAAAAAAI4AAABkAAAAAgAAAAAAjwAAAGUAAAACAAAAAACQAAAAZgAAAAIAAAAAAJEAAABnAAAAAgAAAAAAkgAAAGgAAAACAAAAAACTAAAAaQAAAAIAAAAAAJQAAABqAAAAAgAAAAAAlQAAAGsAAAACAAAAAACWAAAAbAAAAAIAAAAAAJcAAABtAAAAAgAAAAAAmAAAAG4AAAACAAAAAACZAAAAbwAAAAIAAAAAAJoAAABwAAAAAgAAAAAAmwAAAHEAAAACAAAAAACcAAAAcgAAAAIAAAAAAJ0AAABzAAAAAgAAAAAAngAAAHQAAAACAAAAAACfAAAAdQAAAAIAAAAAAKAAAAB2AAAAAgAAAAAAoQAAAHcAAAACAAAAAACiAAAAeAAAAAIAAAAAAKMAAAB5AAAAAgAAAAAApAAAAHoAAAACAAAAAAClAAAAewAAAAIAAAAAAKYAAAB8AAAAAgAAAAAApwAAAH0AAAACAAAAAACoAAAABwA3AAAAAgAAAAAAYgAAAAIAAAAAAGMAAAACAAAAAABkAAAAAgAAAAAAZQAAAAIAAAAAAGYAAAACAAAAAAB3AAAAAgAAAAAAeAAAAAIAAAAAAHkAAAACAAAAAAB6AAAAAgAAAAAAewAAAAIAAAAAAHwAAAACAAAAAAB9AAAAAgAAAAAAfgAAAAIAAAAAAH8AAAACAAAAAACAAAAAAgAAAAAAgQAAAAIAAAAAAIIAAAACAAAAAACDAAAAAgAAAAAAhAAAAAIAAAAAAIUAAAACAAAAAACGAAAAAgAAAAAAhwAAAAIAAAAAAIgAAAACAAAAAACJAAAAAgAAAAAAigAAAAIAAAAAAIsAAAACAAAAAACMAAAAAgAAAAAAjQAAAAIAAAAAAI4AAAACAAAAAACPAAAAAgAAAAAAkAAAAAIAAAAAAJEAAAACAAAAAACSAAAAAgAAAAAAkwAAAAIAAAAAAJQAAAACAAAAAACVAAAAAgAAAAAAlgAAAAIAAAAAAJcAAAACAAAAAACYAAAAAgAAAAAAmQAAAAIAAAAAAJoAAAACAAAAAACbAAAAAgAAAAAAnAAAAAIAAAAAAJ0AAAACAAAAAACeAAAAAgAAAAAAnwAAAAIAAAAAAKAAAAACAAAAAAChAAAAAgAAAAAAogAAAAIAAAAAAKMAAAACAAAAAACkAAAAAgAAAAAApQAAAAIAAAAAAKYAAAACAAAAAACnAAAAAgAAAAAAqAAAAAcAAAAAAAcAAQAAAAIAAQAAABkAAAAHAAEAAAACAAAAAAAgAAAAAgABAAAAGQAAAAcAAAAAAAoAAAAAAAQAAQAAAAAAAAAHAAIAAAACAAAAAABhAAAAAgABAAAAGQAAAAcAAgAAAAIAAAAAACAAAAACAAAAAACpAAAAAQAKAAAAAAAKAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcACQAAAAcABAAAAAQAAQAAAAAAAAACAAAAAABhAAAABgCUAAAABgB+AAAABwAEAAAABAABAAAAAAAAAAIAAAAAAGEAAAAGADsAAAAGAEYAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAYQAAAAYATwAAAAYAfwAAAAcABAAAAAQAAQAAAAAAAAACAAAAAABhAAAABgCVAAAABgCAAAAABwAEAAAABAABAAAAAAAAAAIAAAAAAGEAAAAGAJYAAAAGAIEAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAYQAAAAYAlwAAAAYAggAAAAcABAAAAAQAAQAAAAAAAAACAAAAAABhAAAABgCYAAAABgCDAAAABwAEAAAABAABAAAAAAAAAAIAAAAAAGEAAAAGAJkAAAAGAIQAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAYQAAAAYAmgAAAAYAhQAAAAcACQAAAAcABAAAAAQAAQAAAAAAAAACAAAAAABhAAAABgCUAAAABgB+AAAABwAEAAAABAABAAAAAAAAAAIAAAAAAGEAAAAGADsAAAAGAEYAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAYQAAAAYATwAAAAYAfwAAAAcABAAAAAQAAQAAAAAAAAACAAAAAABhAAAABgCVAAAABgCAAAAABwAEAAAABAABAAAAAAAAAAIAAAAAAGEAAAAGAJYAAAAGAIEAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAYQAAAAYAlwAAAAYAggAAAAcABAAAAAQAAQAAAAAAAAACAAAAAABhAAAABgCYAAAABgCDAAAABwAEAAAABAABAAAAAAAAAAIAAAAAAGEAAAAGAJkAAAAGAIQAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAYQAAAAYAmgAAAAYAhQAAAAEADAAAAAAAYwAAAAEAAQABAAEAAwAMAAAAAABkAAAAAQABAAEAAQADAAwAAAAAAGUAAAABAAEAAQABAAMADAAAAAAAZgAAAAEAAQABAAEAAwAMAAAAAABnAAAAAQABAAEAAQADAAwAAAAAAGgAAAABAAEAAQABAAMADAAAAAAAaQAAAAEAAQABAAEAAwAMAAAAAABqAAAAAQABAAEAAQADAAwAAAAAAGsAAAABAAEAAQABAAMADAAAAAAAbAAAAAEAAQABAAEAAwAMAAAAAABtAAAAAQABAAEAAQADAAwAAAAAAG4AAAABAAEAAQABAAMADAAAAAAAbwAAAAEAAQABAAEAAwAMAAAAAABwAAAAAQABAAEAAQADAAwAAAAAAHEAAAABAAEAAQABAAMADAAAAAAAcgAAAAEAAQABAAEAAwAMAAAAAABzAAAAAQABAAEAAQADAAwAAAAAAHQAAAABAAEAAQABAAMADAAAAAAAdQAAAAEAAQABAAEAAwAMAAAAAAB2AAAAAQABAAEAAQADAAwAAAAAAHcAAAABAAEAAQABAAMADAAAAAAAeAAAAAEAAQABAAEAAwAMAAAAAAB5AAAAAQABAAEAAQADAAwAAAAAAHoAAAABAAEAAQABAAMADAAAAAAAewAAAAEAAQABAAEAAwAMAAAAAAB8AAAAAQABAAEAAQADAAwAAAAAAH0AAAABAAEAAQABAAMADAAAAAAAfgAAAAEAAQABAAEAAwAMAAAAAAB/AAAAAQABAAEAAQADAAwAAAAAAIAAAAABAAEAAQABAAMADAAAAAAAgQAAAAEAAQABAAEAAwAMAAAAAACCAAAAAQABAAEAAQADAAwAAAAAAIMAAAABAAEAAQABAAMADAAAAAAAhAAAAAEAAQABAAEAAwAMAAAAAACFAAAAAQABAAEAAQADAAwAAAAAAIYAAAABAAEAAQABAAMADAAAAAAAhwAAAAEAAQABAAEAAwAMAAAAAACIAAAAAQABAAEAAQADAAwAAAAAAIkAAAABAAEAAQABAAMADAAAAAAAigAAAAEAAQABAAEAAwAMAAAAAACLAAAAAQABAAEAAQADAAwAAAAAAIwAAAABAAEAAQABAAMADAAAAAAAjQAAAAEAAQABAAEAAwAMAAAAAACOAAAAAQABAAEAAQADAAwAAAAAAI8AAAABAAEAAQABAAMADAAAAAAAkAAAAAEAAQABAAEAAwAMAAAAAACRAAAAAQABAAEAAQADAAwAAAAAAJIAAAABAAEAAQABAAMADAAAAAAAkwAAAAEAAQABAAEAAwAMAAAAAACUAAAAAQABAAEAAQADAAYABwAAAAoAAQAAAIYAAAACAAAAAADBAAAACgADAAAADwAAAAIAAAAAAGgAAAAUAAAAAgAAAAAAaQAAABAAAAACAAAAAABqAAAABwADAAAAAgAAAAAAaAAAAAIAAAAAAGkAAAACAAAAAABqAAAABwAAAAAABwABAAAAAgABAAAAGQAAAAcAAAAAAAIAAQAAABkAAAAHAAAAAAAKAAAAAAAEAAEAAAAAAAAABwACAAAAAgAAAAAAZwAAAAIAAQAAABkAAAAHAAAAAAABAAoAAQAAAJEAAAACAAAAAABqAAAACgABAAAAmwAAAAcAAgAAAAIAAAAAAGcAAAAGAIYAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAQAAAAcABAAAAAQAAQAAAAAAAAACAAAAAABnAAAABgCcAAAABgCGAAAABwABAAAABwAEAAAABAABAAAAAAAAAAIAAAAAAGcAAAAGAJwAAAAGAIYAAAABAAYACAAAAAoAAAAAAAoAAQAAABQAAAACAAAAAABsAAAABwABAAAAAgAAAAAAbAAAAAcAAAAAAAcAAQAAAAIAAAAAAGcAAAAHAAAAAAABAAcAAAAAAAoAAAAAAAQAAQAAAAAAAAAHAAMAAAACAAAAAABrAAAAAgAAAAAAZwAAAAIAAQAAABkAAAAHAAAAAAABAAoAAAAAAAoAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwABAAAABwAEAAAABAABAAAAAAAAAAIAAAAAAGcAAAAGAJwAAAAGAIYAAAAHAAAAAAABAAYAMAAAAAMABAAAAAAAAAAAAAMAAgABAAAAGQAAAAQAAQAAAAAAAAABAAEABgAxAAAAAwAEAAAAAAAAAAAAAwACAAEAAAAZAAAABAABAAAAAAAAAAEAAQAGADIAAAACAAEAAAACAAAABAABAAAAAAAAAAMAAgABAAAAAgAAAAQAAQAAAAAAAAABAAEABgAzAAAAAwAEAAAAAAAAAAAAAwACAAEAAAAZAAAABAABAAAAAAAAAAEAAQAGADQAAAACAAEAAAAEAAAABAABAAAAAAAAAAMAAgABAAAABAAAAAQAAQAAAAAAAAABAAEABgA1AAAAAgABAAAAAgAAAAQAAQAAAAAAAAADAAIAAQAAAAIAAAAEAAEAAAAAAAAAAQABAAYANgAAAAMABAAAAAAAAAAAAAMAAwAEAAAAAAAAAAAAAQABAAYAfgAAAAMABAAAAAAAAAAAAAMAAgABAAAAGQAAAAQAAQAAAAAAAAABAAEABgBGAAAAAgABAAAAAgAAAAQAAQAAAAAAAAADAAIAAQAAAAIAAAAEAAEAAAAAAAAAAQABAAYAfwAAAAIAAQAAAAIAAAAEAAEAAAAAAAAAAwACAAEAAAACAAAABAABAAAAAAAAAAEAAQAGAIAAAAADAAQAAAAAAAAAAAADAAIAAQAAABkAAAAEAAEAAAAAAAAAAQABAAYAgQAAAAMABAAAAAAAAAAAAAMAAgABAAAAGQAAAAQAAQAAAAAAAAABAAEABgCCAAAAAwAEAAAAAAAAAAAAAwACAAEAAAAZAAAABAABAAAAAAAAAAEAAQAGAIMAAAADAAQAAAAAAAAAAAADAAIAAQAAABkAAAAEAAEAAAAAAAAAAQABAAYAhAAAAAMABAAAAAAAAAAAAAMAAgABAAAAGQAAAAQAAQAAAAAAAAABAAEABgCFAAAAAwAEAAAAAAAAAAAAAwACAAEAAAAZAAAABAABAAAAAAAAAAEAAQAGADMAAAADAAQAAAAAAAAAAAADAAIAAQAAABkAAAAEAAEAAAAAAAAAAQABAAYARgAAAAIAAQAAAAIAAAAEAAEAAAAAAAAAAwACAAEAAAACAAAABAABAAAAAAAAAAEAAQAGAEcAAAACAAEAAAACAAAABAABAAAAAAAAAAMAAgABAAAAAgAAAAQAAQAAAAAAAAABAAEABgBIAAAAAwAEAAAAAAAAAAAAAwACAAEAAAAZAAAABAABAAAAAAAAAAEAAQAGAEkAAAADAAQAAAAAAAAAAAADAAIAAQAAABkAAAAEAAEAAAAAAAAAAQABAAYAhgAAAAMABAAAAAAAAAAAAAMAAgABAAAAGQAAAAQAAQAAAAAAAAABAAEAAgAAAAcAAAAAAAoAAAAAAAMAAAAHAAAAAAAKAAAAAAAGAAQAAAACAAAAAAAgAAAACgAJAAAAfgAAAAIAAAAAALMAAABGAAAAAgAAAAAAtAAAAH8AAAACAAAAAAC1AAAAgAAAAAIAAAAAALYAAACBAAAAAgAAAAAAtwAAAIIAAAACAAAAAAC4AAAAgwAAAAIAAAAAALkAAACEAAAAAgAAAAAAugAAAIUAAAACAAAAAAC7AAAACgAyAAAAPAAAAAIAAAAAAHcAAABOAAAAAgAAAAAAeAAAADsAAAACAAAAAAB5AAAATwAAAAIAAAAAAHoAAABQAAAAAgAAAAAAewAAAFEAAAACAAAAAAB8AAAAUgAAAAIAAAAAAH0AAABTAAAAAgAAAAAAfgAAAFQAAAACAAAAAAB/AAAAVQAAAAIAAAAAAIAAAABWAAAAAgAAAAAAgQAAAFcAAAACAAAAAACCAAAAWAAAAAIAAAAAAIMAAABZAAAAAgAAAAAAhAAAAFoAAAACAAAAAACFAAAAWwAAAAIAAAAAAIYAAABcAAAAAgAAAAAAhwAAAF0AAAACAAAAAACIAAAAXgAAAAIAAAAAAIkAAABfAAAAAgAAAAAAigAAAGAAAAACAAAAAACLAAAAYQAAAAIAAAAAAIwAAABiAAAAAgAAAAAAjQAAAGMAAAACAAAAAACOAAAAZAAAAAIAAAAAAI8AAABlAAAAAgAAAAAAkAAAAGYAAAACAAAAAACRAAAAZwAAAAIAAAAAAJIAAABoAAAAAgAAAAAAkwAAAGkAAAACAAAAAACUAAAAagAAAAIAAAAAAJUAAABrAAAAAgAAAAAAlgAAAGwAAAACAAAAAACXAAAAbQAAAAIAAAAAAJgAAABuAAAAAgAAAAAAmQAAAG8AAAACAAAAAACaAAAAcAAAAAIAAAAAAJsAAABxAAAAAgAAAAAAnAAAAHIAAAACAAAAAACdAAAAcwAAAAIAAAAAAJ4AAAB0AAAAAgAAAAAAnwAAAHUAAAACAAAAAACgAAAAdgAAAAIAAAAAAKEAAAB3AAAAAgAAAAAAogAAAHgAAAACAAAAAACjAAAAeQAAAAIAAAAAAKQAAAB6AAAAAgAAAAAApQAAAHsAAAACAAAAAACmAAAAfAAAAAIAAAAAAKcAAAB9AAAAAgAAAAAAqAAAAAcAAAAAAAcAAAAAAAcAAAAAAAcAAAAAAAQAAQAAAAAAAAAAAAAAGwAAAAEAAAABAAAAAAAAAHcAAAAAAAAAHAAAAAEAAAABAAAAAAAAAHgAAAAAAAAAHQAAAAEAAAABAAAAAAAAAHkAAAAAAAAAHgAAAAEAAAABAAAAAAAAAHoAAAAAAAAAHwAAAAEAAAABAAAAAAAAAHsAAAAAAAAAIAAAAAEAAAABAAAAAAAAAHwAAAAAAAAAIQAAAAEAAAABAAAAAAAAAH0AAAAAAAAAIgAAAAEAAAABAAAAAAAAAH4AAAAAAAAAIwAAAAEAAAABAAAAAAAAAH8AAAAAAAAAJAAAAAEAAAABAAAAAAAAAIAAAAAAAAAAJQAAAAEAAAABAAAAAAAAAIEAAAAAAAAAJgAAAAEAAAABAAAAAAAAAIIAAAAAAAAAJwAAAAEAAAABAAAAAAAAAIMAAAAAAAAAKAAAAAEAAAABAAAAAAAAAIQAAAAAAAAAKQAAAAEAAAABAAAAAAAAAIUAAAAAAAAAKgAAAAEAAAABAAAAAAAAAIYAAAAAAAAAKwAAAAEAAAABAAAAAAAAAIcAAAAAAAAALAAAAAEAAAABAAAAAAAAAIgAAAAAAAAALQAAAAEAAAABAAAAAAAAAIkAAAAAAAAALgAAAAEAAAABAAAAAAAAAIoAAAAAAAAALwAAAAEAAAABAAAAAAAAAIsAAAAAAAAAMAAAAAEAAAABAAAAAAAAAIwAAAAAAAAAMQAAAAEAAAABAAAAAAAAAI0AAAAAAAAAMgAAAAEAAAABAAAAAAAAAI4AAAAAAAAAMwAAAAEAAAABAAAAAAAAAI8AAAAAAAAANAAAAAEAAAABAAAAAAAAAJAAAAAAAAAANQAAAAEAAAABAAAAAAAAAJEAAAAAAAAANgAAAAEAAAABAAAAAAAAAJIAAAAAAAAANwAAAAEAAAABAAAAAAAAAJMAAAAAAAAAOAAAAAEAAAABAAAAAAAAAJQAAAAAAAAAOQAAAAEAAAABAAAAAAAAAJUAAAAAAAAAOgAAAAEAAAABAAAAAAAAAJYAAAAAAAAAOwAAAAEAAAABAAAAAAAAAJcAAAAAAAAAPAAAAAEAAAABAAAAAAAAAJgAAAAAAAAAPQAAAAEAAAABAAAAAAAAAJkAAAAAAAAAPgAAAAEAAAABAAAAAAAAAJoAAAAAAAAAPwAAAAEAAAABAAAAAAAAAJsAAAAAAAAAQAAAAAEAAAABAAAAAAAAAJwAAAAAAAAAQQAAAAEAAAABAAAAAAAAAJ0AAAAAAAAAQgAAAAEAAAABAAAAAAAAAJ4AAAAAAAAAQwAAAAEAAAABAAAAAAAAAJ8AAAAAAAAARAAAAAEAAAABAAAAAAAAAKAAAAAAAAAARQAAAAEAAAABAAAAAAAAAKEAAAAAAAAARgAAAAEAAAABAAAAAAAAAKIAAAAAAAAARwAAAAEAAAABAAAAAAAAAKMAAAAAAAAASAAAAAEAAAABAAAAAAAAAKQAAAAAAAAASQAAAAEAAAABAAAAAAAAAKUAAAAAAAAASgAAAAEAAAABAAAAAAAAAKYAAAAAAAAASwAAAAEAAAABAAAAAAAAAKcAAAAAAAAATAAAAAEAAAABAAAAAAAAAKgAAAAAAAAATQAAAAAAAAAAAAAABgAAAAAAAAC0AAAAAwC1AAAAAwC2AAAACgAAAAAAtwAAAAQAAQAAAAAAAAC4AAAABwAAAAAAuQAAAAIAAAAAAGEAAAA=", cur_sc, $P5004, $P5006, conflicts
    unless conflicts goto if603_end1216 
    die "Repossession conflicts occurred during deserialization"
  if603_end1216:
    .const "LexInfo" $P5001 = "cuid_141_1360432433.757"
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 0
    $P5001."set_static_lexpad_value"("GLOBALish", $P5002)
    .const "LexInfo" $P5003 = "cuid_141_1360432433.757"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_141_1360432433.757"
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 0
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_141_1360432433.757"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_141_1360432433.757"
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 1
    $P5001."set_static_lexpad_value"("EXPORT", $P5002)
    .const "LexInfo" $P5003 = "cuid_141_1360432433.757"
    $P5004 = $P5003."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_1_1360432433.757" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 4
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_2_1360432433.757" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 5
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_3_1360432433.757" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 6
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_4_1360432433.757" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 7
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_5_1360432433.757" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 8
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_6_1360432433.757" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 9
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_7_1360432433.757" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 10
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_8_1360432433.757" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 11
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_9_1360432433.757" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 12
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_10_1360432433.757" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 13
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_11_1360432433.757" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 14
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_12_1360432433.757" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 15
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_13_1360432433.757" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 16
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_14_1360432433.757" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 17
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_15_1360432433.757" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 18
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_16_1360432433.757" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 19
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_17_1360432433.757" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 20
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_18_1360432433.757" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 21
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_19_1360432433.757" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 22
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_20_1360432433.757" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 23
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_21_1360432433.757" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 24
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_22_1360432433.757" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 25
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_23_1360432433.757" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 26
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_24_1360432433.757" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 27
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_25_1360432433.757" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 28
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_26_1360432433.757" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 29
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_27_1360432433.757" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 30
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_118_1360432433.757"
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 3
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_118_1360432433.757"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_118_1360432433.757"
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 3
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_118_1360432433.757"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_141_1360432433.757"
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 31
    $P5001."set_static_lexpad_value"("ParseShared", $P5002)
    .const "LexInfo" $P5003 = "cuid_141_1360432433.757"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_142_1360432433.757"
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 31
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_142_1360432433.757"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_142_1360432433.757"
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 31
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_142_1360432433.757"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_141_1360432433.757"
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 32
    $P5001."set_static_lexpad_value"("NQPCursorRole", $P5002)
    .const "LexInfo" $P5003 = "cuid_141_1360432433.757"
    $P5004 = $P5003."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_28_1360432433.757" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 33
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_29_1360432433.757" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 34
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_30_1360432433.757" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 35
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_31_1360432433.757" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 36
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_32_1360432433.757" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 37
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_33_1360432433.757" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 38
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_34_1360432433.757" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 39
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_35_1360432433.757" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 40
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_36_1360432433.757" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 41
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_37_1360432433.757" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 42
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_38_1360432433.757" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 43
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_39_1360432433.757" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 44
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_40_1360432433.757" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 45
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_41_1360432433.757" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 46
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_42_1360432433.757" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 47
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_43_1360432433.757" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 48
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_44_1360432433.757" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 49
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_45_1360432433.757" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 50
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_46_1360432433.757" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 51
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_47_1360432433.757" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 52
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_48_1360432433.757" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 53
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_49_1360432433.757" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 54
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_50_1360432433.757" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 55
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_51_1360432433.757" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 56
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_52_1360432433.757" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 57
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_53_1360432433.757" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 58
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_54_1360432433.757" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 59
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_55_1360432433.757" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 60
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_56_1360432433.757" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 61
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_57_1360432433.757" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 62
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_58_1360432433.757" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 63
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_59_1360432433.757" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 64
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_60_1360432433.757" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 65
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_61_1360432433.757" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 66
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_62_1360432433.757" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 67
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_63_1360432433.757" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 68
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_64_1360432433.757" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 69
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_65_1360432433.757" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 70
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_66_1360432433.757" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 71
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_67_1360432433.757" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 72
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_68_1360432433.757" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 73
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_69_1360432433.757" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 74
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_70_1360432433.757" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 75
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_71_1360432433.757" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 76
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_72_1360432433.757" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 77
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_73_1360432433.757" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 78
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_74_1360432433.757" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 79
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_75_1360432433.757" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 80
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_76_1360432433.757" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 81
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_77_1360432433.757" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 82
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_78_1360432433.757" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 83
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_78_1360432433.757"
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 32
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_78_1360432433.757"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_78_1360432433.757"
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 32
    $P5001."set_static_lexpad_value"("$?ROLE", $P5002)
    .const "LexInfo" $P5003 = "cuid_78_1360432433.757"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_141_1360432433.757"
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 84
    $P5001."set_static_lexpad_value"("NQPMatch", $P5002)
    .const "LexInfo" $P5003 = "cuid_141_1360432433.757"
    $P5004 = $P5003."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_79_1360432433.757" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 85
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_80_1360432433.757" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 86
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_81_1360432433.757" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 87
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_82_1360432433.757" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 88
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_83_1360432433.757" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 89
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_84_1360432433.757" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 90
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_85_1360432433.757" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 91
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_86_1360432433.757" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 92
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_87_1360432433.757" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 93
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_88_1360432433.757" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 94
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_89_1360432433.757" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 95
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_90_1360432433.757" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 96
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_143_1360432433.757"
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 84
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_143_1360432433.757"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_143_1360432433.757"
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 84
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_143_1360432433.757"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_141_1360432433.757"
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 97
    $P5001."set_static_lexpad_value"("NQPCursor", $P5002)
    .const "LexInfo" $P5003 = "cuid_141_1360432433.757"
    $P5004 = $P5003."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_91_1360432433.757" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 98
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_92_1360432433.757" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 99
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_93_1360432433.757" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 100
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_94_1360432433.757" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 101
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_95_1360432433.757" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 102
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_149_1360432433.757"
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 97
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_149_1360432433.757"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_149_1360432433.757"
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 97
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_149_1360432433.757"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_141_1360432433.757"
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 103
    $P5001."set_static_lexpad_value"("NQPRegexMethod", $P5002)
    .const "LexInfo" $P5003 = "cuid_141_1360432433.757"
    $P5004 = $P5003."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_114_1360432433.757" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 104
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_115_1360432433.757" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 105
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_116_1360432433.757" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 106
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_159_1360432433.757"
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 103
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_159_1360432433.757"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_159_1360432433.757"
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 103
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_159_1360432433.757"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_141_1360432433.757"
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 107
    $P5001."set_static_lexpad_value"("NQPRegex", $P5002)
    .const "LexInfo" $P5003 = "cuid_141_1360432433.757"
    $P5004 = $P5003."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_117_1360432433.757" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 108
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_160_1360432433.757"
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 107
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_160_1360432433.757"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_160_1360432433.757"
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1360432433.782", 107
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_160_1360432433.757"
    $P5004 = $P5003."finish_static_lexpad"()
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_161_1360432433.757") :anon :lex :outer("cuid_162_1360432433.757")
.annotate 'file', "src\\stage2\\QRegex.nqp"
    new $P5001, 'ResizablePMCArray'
    .const 'Sub' $P5002 = "cuid_1_1360432433.757" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_2_1360432433.757" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_3_1360432433.757" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_4_1360432433.757" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_5_1360432433.757" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_6_1360432433.757" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_7_1360432433.757" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_8_1360432433.757" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_9_1360432433.757" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_10_1360432433.757" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_11_1360432433.757" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_12_1360432433.757" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_13_1360432433.757" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_14_1360432433.757" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_15_1360432433.757" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_16_1360432433.757" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_17_1360432433.757" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_18_1360432433.757" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_19_1360432433.757" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_20_1360432433.757" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_21_1360432433.757" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_22_1360432433.757" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_23_1360432433.757" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_24_1360432433.757" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_25_1360432433.757" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_26_1360432433.757" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_27_1360432433.757" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_28_1360432433.757" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_29_1360432433.757" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_30_1360432433.757" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_31_1360432433.757" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_32_1360432433.757" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_33_1360432433.757" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_34_1360432433.757" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_35_1360432433.757" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_36_1360432433.757" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_37_1360432433.757" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_38_1360432433.757" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_39_1360432433.757" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_40_1360432433.757" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_41_1360432433.757" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_42_1360432433.757" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_43_1360432433.757" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_44_1360432433.757" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_45_1360432433.757" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_46_1360432433.757" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_47_1360432433.757" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_48_1360432433.757" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_49_1360432433.757" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_50_1360432433.757" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_51_1360432433.757" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_52_1360432433.757" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_53_1360432433.757" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_54_1360432433.757" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_55_1360432433.757" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_56_1360432433.757" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_57_1360432433.757" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_58_1360432433.757" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_59_1360432433.757" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_60_1360432433.757" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_61_1360432433.757" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_62_1360432433.757" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_63_1360432433.757" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_64_1360432433.757" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_65_1360432433.757" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_66_1360432433.757" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_67_1360432433.757" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_68_1360432433.757" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_69_1360432433.757" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_70_1360432433.757" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_71_1360432433.757" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_72_1360432433.757" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_73_1360432433.757" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_74_1360432433.757" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_75_1360432433.757" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_76_1360432433.757" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_77_1360432433.757" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_78_1360432433.757" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_79_1360432433.757" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_80_1360432433.757" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_81_1360432433.757" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_82_1360432433.757" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_83_1360432433.757" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_84_1360432433.757" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_85_1360432433.757" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_86_1360432433.757" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_87_1360432433.757" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_88_1360432433.757" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_89_1360432433.757" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_90_1360432433.757" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_91_1360432433.757" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_92_1360432433.757" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_93_1360432433.757" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_94_1360432433.757" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_95_1360432433.757" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_114_1360432433.757" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_115_1360432433.757" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_116_1360432433.757" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_117_1360432433.757" 
    push $P5001, $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_163_1360432433.757") :load
.annotate 'file', "src\\stage2\\QRegex.nqp"
    .const 'Sub' $P5001 = "cuid_141_1360432433.757" 
    $P5002 = $P5001()
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_164_1360432433.757") :main
.annotate 'file', "src\\stage2\\QRegex.nqp"
    .param pmc ARGS :slurpy 
    .const 'Sub' $P5001 = "cuid_141_1360432433.757" 
    $P5002 = $P5001(ARGS :flat)
    .return ($P5002) 
.end