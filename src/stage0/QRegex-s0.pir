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
.sub "" :subid("cuid_1_1358115315.353") :anon :lex
.annotate 'file', "src\\stage2\\QRegex.nqp"
    .param pmc _lex_param_0 :slurpy 
    .const 'Sub' $P5024 = 'cuid_29_1358115315.353' 
    capture_lex $P5024 
    .const 'Sub' $P5024 = 'cuid_30_1358115315.353' 
    capture_lex $P5024 
    .const 'Sub' $P5024 = 'cuid_81_1358115315.353' 
    capture_lex $P5024 
    .const 'Sub' $P5024 = 'cuid_94_1358115315.353' 
    capture_lex $P5024 
    .const 'Sub' $P5024 = 'cuid_100_1358115315.353' 
    capture_lex $P5024 
    .const 'Sub' $P5024 = 'cuid_122_1358115315.353' 
    capture_lex $P5024 
    .const 'Sub' $P5024 = 'cuid_124_1358115315.353' 
    capture_lex $P5024 
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
.annotate 'line', 470
.annotate 'line', 471
    nqp_get_sc_object $P5001, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 7
    nqp_get_sc_object $P5005, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 0
    nqp_get_package_through_who $P5004, $P5005, "QRegex"
    get_who $P5003, $P5004
    set $P5002, $P5003["NFA"]
    unless_null $P5002, fallback263
    nqp_get_sc_object $P5006, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5002, $P5006
  fallback263:
    $P5001."SET_NFA_TYPE"($P5002)
    find_dynamic_lex $P5007, "$*CTXSAVE"
    set ctxsave, $P5007
    isnull $I5001, ctxsave
    if $I5001 goto unless105_end265 
    can $I5002, ctxsave, "ctxsave"
    box $P5010, $I5002
    set $P5009, $P5010
    unless $I5002 goto if106_end267 
    $P5008 = ctxsave."ctxsave"()
    set $P5009, $P5008
  if106_end267:
  unless105_end265:
.annotate 'line', 1
    .const 'Sub' $P5011 = 'cuid_29_1358115315.353' 
    capture_lex $P5011
    $P5012 = $P5011()
    .const 'Sub' $P5013 = 'cuid_30_1358115315.353' 
    capture_lex $P5013
    $P5014 = $P5013()
    .const 'Sub' $P5015 = 'cuid_81_1358115315.353' 
    capture_lex $P5015
    .const 'Sub' $P5016 = 'cuid_94_1358115315.353' 
    capture_lex $P5016
    $P5017 = $P5016()
    .const 'Sub' $P5018 = 'cuid_100_1358115315.353' 
    capture_lex $P5018
    $P5019 = $P5018()
    .const 'Sub' $P5020 = 'cuid_122_1358115315.353' 
    capture_lex $P5020
    $P5021 = $P5020()
    .const 'Sub' $P5022 = 'cuid_124_1358115315.353' 
    capture_lex $P5022
    $P5023 = $P5022()
    .return () 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_29_1358115315.353") :anon :lex :outer("cuid_1_1358115315.353")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 7
    .const 'Sub' $P5059 = 'cuid_2_1358115315.353' 
    capture_lex $P5059 
    .const 'Sub' $P5059 = 'cuid_3_1358115315.353' 
    capture_lex $P5059 
    .const 'Sub' $P5059 = 'cuid_4_1358115315.353' 
    capture_lex $P5059 
    .const 'Sub' $P5059 = 'cuid_5_1358115315.353' 
    capture_lex $P5059 
    .const 'Sub' $P5059 = 'cuid_6_1358115315.353' 
    capture_lex $P5059 
    .const 'Sub' $P5059 = 'cuid_7_1358115315.353' 
    capture_lex $P5059 
    .const 'Sub' $P5059 = 'cuid_8_1358115315.353' 
    capture_lex $P5059 
    .const 'Sub' $P5059 = 'cuid_9_1358115315.353' 
    capture_lex $P5059 
    .const 'Sub' $P5059 = 'cuid_10_1358115315.353' 
    capture_lex $P5059 
    .const 'Sub' $P5059 = 'cuid_11_1358115315.353' 
    capture_lex $P5059 
    .const 'Sub' $P5059 = 'cuid_12_1358115315.353' 
    capture_lex $P5059 
    .const 'Sub' $P5059 = 'cuid_13_1358115315.353' 
    capture_lex $P5059 
    .const 'Sub' $P5059 = 'cuid_14_1358115315.353' 
    capture_lex $P5059 
    .const 'Sub' $P5059 = 'cuid_15_1358115315.353' 
    capture_lex $P5059 
    .const 'Sub' $P5059 = 'cuid_16_1358115315.353' 
    capture_lex $P5059 
    .const 'Sub' $P5059 = 'cuid_17_1358115315.353' 
    capture_lex $P5059 
    .const 'Sub' $P5059 = 'cuid_18_1358115315.353' 
    capture_lex $P5059 
    .const 'Sub' $P5059 = 'cuid_19_1358115315.353' 
    capture_lex $P5059 
    .const 'Sub' $P5059 = 'cuid_20_1358115315.353' 
    capture_lex $P5059 
    .const 'Sub' $P5059 = 'cuid_21_1358115315.353' 
    capture_lex $P5059 
    .const 'Sub' $P5059 = 'cuid_22_1358115315.353' 
    capture_lex $P5059 
    .const 'Sub' $P5059 = 'cuid_23_1358115315.353' 
    capture_lex $P5059 
    .const 'Sub' $P5059 = 'cuid_24_1358115315.353' 
    capture_lex $P5059 
    .const 'Sub' $P5059 = 'cuid_25_1358115315.353' 
    capture_lex $P5059 
    .const 'Sub' $P5059 = 'cuid_26_1358115315.353' 
    capture_lex $P5059 
    .const 'Sub' $P5059 = 'cuid_27_1358115315.353' 
    capture_lex $P5059 
    .const 'Sub' $P5059 = 'cuid_28_1358115315.353' 
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
    .const 'Sub' $P5032 = 'cuid_2_1358115315.353' 
    capture_lex $P5032
    .const 'Sub' $P5033 = 'cuid_3_1358115315.353' 
    capture_lex $P5033
    .const 'Sub' $P5034 = 'cuid_4_1358115315.353' 
    capture_lex $P5034
    .const 'Sub' $P5035 = 'cuid_5_1358115315.353' 
    capture_lex $P5035
    .const 'Sub' $P5036 = 'cuid_6_1358115315.353' 
    capture_lex $P5036
    .const 'Sub' $P5037 = 'cuid_7_1358115315.353' 
    capture_lex $P5037
    .const 'Sub' $P5038 = 'cuid_8_1358115315.353' 
    capture_lex $P5038
    .const 'Sub' $P5039 = 'cuid_9_1358115315.353' 
    capture_lex $P5039
    .const 'Sub' $P5040 = 'cuid_10_1358115315.353' 
    capture_lex $P5040
    .const 'Sub' $P5041 = 'cuid_11_1358115315.353' 
    capture_lex $P5041
    .const 'Sub' $P5042 = 'cuid_12_1358115315.353' 
    capture_lex $P5042
    .const 'Sub' $P5043 = 'cuid_13_1358115315.353' 
    capture_lex $P5043
    .const 'Sub' $P5044 = 'cuid_14_1358115315.353' 
    capture_lex $P5044
    .const 'Sub' $P5045 = 'cuid_15_1358115315.353' 
    capture_lex $P5045
    .const 'Sub' $P5046 = 'cuid_16_1358115315.353' 
    capture_lex $P5046
    .const 'Sub' $P5047 = 'cuid_17_1358115315.353' 
    capture_lex $P5047
    .const 'Sub' $P5048 = 'cuid_18_1358115315.353' 
    capture_lex $P5048
    .const 'Sub' $P5049 = 'cuid_19_1358115315.353' 
    capture_lex $P5049
    .const 'Sub' $P5050 = 'cuid_20_1358115315.353' 
    capture_lex $P5050
    .const 'Sub' $P5051 = 'cuid_21_1358115315.353' 
    capture_lex $P5051
    .const 'Sub' $P5052 = 'cuid_22_1358115315.353' 
    capture_lex $P5052
    .const 'Sub' $P5053 = 'cuid_23_1358115315.353' 
    capture_lex $P5053
    .const 'Sub' $P5054 = 'cuid_24_1358115315.353' 
    capture_lex $P5054
    .const 'Sub' $P5055 = 'cuid_25_1358115315.353' 
    capture_lex $P5055
    .const 'Sub' $P5056 = 'cuid_26_1358115315.353' 
    capture_lex $P5056
    .const 'Sub' $P5057 = 'cuid_27_1358115315.353' 
    capture_lex $P5057
    .const 'Sub' $P5058 = 'cuid_28_1358115315.353' 
    capture_lex $P5058
    .return ($P5058) 
.end
.HLL "nqp"
.namespace []
.sub "new" :subid("cuid_2_1358115315.353") :anon :lex :outer("cuid_29_1358115315.353")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 25
    .param pmc _lex_param_0 
    .lex "$new", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
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
.sub "from_saved" :subid("cuid_3_1358115315.353") :anon :lex :outer("cuid_29_1358115315.353")
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
.sub "addstate" :subid("cuid_4_1358115315.353") :anon :lex :outer("cuid_29_1358115315.353")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 36
    .param pmc _lex_param_0 
    .lex "$id", $I101 
    .lex "self", _lex_param_0 
    set $I101, 0
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 3
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!states"
    set $N5001, $P5003
    set $I5001, $N5001
    set $I101, $I5001
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 3
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!states"
    new $P5007, 'ResizablePMCArray'
    set $P5006[$I101], $P5007
    .return ($I101) 
.end
.HLL "nqp"
.namespace []
.sub "addedge" :subid("cuid_5_1358115315.353") :anon :lex :outer("cuid_29_1358115315.353")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 42
    .param pmc _lex_param_0 
    .param int _lex_param_1 
    .param int _lex_param_2 
    .param pmc _lex_param_3 
    .param pmc _lex_param_4 
    .param pmc _lex_param_5 :named("newedge") :optional 
    .param int haz_param_9 :opt_flag 
    if haz_param_9, default276
    box $P5020, 1
    set _lex_param_5, $P5020
  default276:
    .lex "$st", $P101 
    .lex "self", _lex_param_0 
    .lex "$from", _lex_param_1 
    .lex "$to", _lex_param_2 
    .lex "$action", _lex_param_3 
    .lex "$value", _lex_param_4 
    .lex "$newedge", _lex_param_5 
    nqp_get_sc_object $P5001, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P101, $P5001
    unless _lex_param_5 goto if107_end269 
    nqp_decontainerize $P5002, _lex_param_0
    nqp_get_sc_object $P5003, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 3
    box $P5004, 1
    repr_bind_attr_obj $P5002, $P5003, "$!edges", $P5004
  if107_end269:
    set $N5001, _lex_param_2
    set $N5002, 0
    islt $I5001, $N5001, $N5002
    unless $I5001 goto if108_end271 
.annotate 'line', 44
    nqp_decontainerize $P5005, _lex_param_0
    $P5006 = $P5005."addstate"()
    set $I5002, $P5006
    set _lex_param_2, $I5002
  if108_end271:
    nqp_decontainerize $P5008, _lex_param_0
    nqp_get_sc_object $P5009, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 3
    repr_get_attr_obj $P5010, $P5008, $P5009, "$!states"
    set $P5007, $P5010[_lex_param_1]
    unless_null $P5007, fallback272
    nqp_get_sc_object $P5011, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5007, $P5011
  fallback272:
    set $P101, $P5007
    push $P101, _lex_param_3
    nqp_get_sc_object $P5015, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 0
    nqp_get_package_through_who $P5014, $P5015, "QAST"
    get_who $P5013, $P5014
    set $P5012, $P5013["SVal"]
    unless_null $P5012, fallback275
    nqp_get_sc_object $P5016, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5012, $P5016
  fallback275:
    type_check $I5003, _lex_param_4, $P5012
    unless $I5003 goto if109_else273 
.annotate 'line', 47
    $P5017 = _lex_param_4."value"()
    set $P5018, $P5017
    goto if109_end274
  if109_else273:
    set $P5018, _lex_param_4
  if109_end274:
    push $P101, $P5018
    box $P5019, _lex_param_2
    push $P101, $P5019
    .return (_lex_param_2) 
.end
.HLL "nqp"
.namespace []
.sub "states" :subid("cuid_6_1358115315.353") :anon :lex :outer("cuid_29_1358115315.353")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 52
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 3
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!states"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "addnode" :subid("cuid_7_1358115315.353") :anon :lex :outer("cuid_29_1358115315.353")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 54
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :named("vars_as_generic") :optional 
    .param int haz_param_10 :opt_flag 
    if haz_param_10, default277
    nqp_get_sc_object $P5003, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set _lex_param_2, $P5003
  default277:
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$*vars_as_generic", _lex_param_2 
.annotate 'line', 55
    nqp_decontainerize $P5001, _lex_param_0
    $P5001."regex_nfa"(_lex_param_1, 1, 0)
    nqp_decontainerize $P5002, _lex_param_0
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "regex_nfa" :subid("cuid_8_1358115315.353") :anon :lex :outer("cuid_29_1358115315.353")
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
    nqp_get_sc_object $P5001, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P101, $P5001
.annotate 'line', 60
    $P5003 = _lex_param_1."rxtype"()
    set $P5002, $P5003
    defined $I5001, $P5002
    if $I5001, defor278
    box $P5004, "concat"
    set $P5002, $P5004
  defor278:
    set $P101, $P5002
.annotate 'line', 61
    nqp_decontainerize $P5006, _lex_param_0
    get_how $P5005, $P5006
    nqp_decontainerize $P5007, _lex_param_0
    $P5008 = $P5005."can"($P5007, $P101)
    unless $P5008 goto if110_else279 
.annotate 'line', 62
    nqp_decontainerize $P5009, _lex_param_0
    set $S5001, $P101
    $P5010 = $P5009.$S5001(_lex_param_1, _lex_param_2, _lex_param_3)
    set $P5013, $P5010
    goto if110_end280
  if110_else279:
.annotate 'line', 63
    nqp_decontainerize $P5011, _lex_param_0
    $P5012 = $P5011."fate"(_lex_param_1, _lex_param_2, _lex_param_3)
    set $P5013, $P5012
  if110_end280:
    .return ($P5013) 
.end
.HLL "nqp"
.namespace []
.sub "fate" :subid("cuid_9_1358115315.353") :anon :lex :outer("cuid_29_1358115315.353")
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
.annotate 'line', 67
    nqp_decontainerize $P5001, _lex_param_0
    find_lex $P5004, "$?PACKAGE"
    get_who $P5003, $P5004
    set $P5002, $P5003["$EDGE_FATE"]
    unless_null $P5002, fallback281
    nqp_get_sc_object $P5005, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5002, $P5005
  fallback281:
    $P5006 = $P5001."addedge"(_lex_param_2, 0, $P5002, 0, 0 :named("newedge"))
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "alt" :subid("cuid_10_1358115315.353") :anon :lex :outer("cuid_29_1358115315.353")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 70
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param int _lex_param_2 
    .param int _lex_param_3 
    .const 'Sub' $P5007 = 'cuid_125_1358115315.353' 
    capture_lex $P5007 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$from", _lex_param_2 
    .lex "$to", _lex_param_3 
.annotate 'line', 71
    $P5004 = _lex_param_1."list"()
    set $P5001, $P5004
    iter $P5003, $P5004
  for_next286:
    unless $P5003, for_done288
    shift $P5006, $P5003
  for_redo287:
    .const 'Sub' $P5005 = 'cuid_125_1358115315.353' 
    capture_lex $P5005
    $P5001 = $P5005($P5006)
    goto for_next286
  for_done288:
    .return (_lex_param_3) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_125_1358115315.353") :anon :lex :outer("cuid_10_1358115315.353")
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
    unless $I5004 goto if112_end285 
    set $N5003, $I101
    set $N5004, 0
    isgt $I5006, $N5003, $N5004
    set $I5007, $I5006
  if112_end285:
    set $I5008, $I5007
    unless $I5007 goto if111_end283 
    store_lex "$to", $I101
    set $I5008, $I101
  if111_end283:
    .return ($I5008) 
.end
.HLL "nqp"
.namespace []
.sub "anchor" :subid("cuid_11_1358115315.353") :anon :lex :outer("cuid_29_1358115315.353")
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
.annotate 'line', 79
    nqp_decontainerize $P5001, _lex_param_0
    find_lex $P5004, "$?PACKAGE"
    get_who $P5003, $P5004
    set $P5002, $P5003["$EDGE_EPSILON"]
    unless_null $P5002, fallback289
    nqp_get_sc_object $P5005, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5002, $P5005
  fallback289:
    $P5006 = $P5001."addedge"(_lex_param_2, _lex_param_3, $P5002, 0)
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "dba" :subid("cuid_12_1358115315.353") :anon :lex :outer("cuid_29_1358115315.353")
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
.annotate 'line', 83
    nqp_decontainerize $P5001, _lex_param_0
    find_lex $P5004, "$?PACKAGE"
    get_who $P5003, $P5004
    set $P5002, $P5003["$EDGE_EPSILON"]
    unless_null $P5002, fallback290
    nqp_get_sc_object $P5005, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5002, $P5005
  fallback290:
    $P5006 = $P5001."addedge"(_lex_param_2, _lex_param_3, $P5002, 0)
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "cclass" :subid("cuid_13_1358115315.353") :anon :lex :outer("cuid_29_1358115315.353")
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
.annotate 'line', 97
    nqp_decontainerize $P5001, _lex_param_0
    find_lex $P5004, "$?PACKAGE"
    get_who $P5003, $P5004
    set $P5002, $P5003["$EDGE_CHARCLASS"]
    unless_null $P5002, fallback291
    nqp_get_sc_object $P5005, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5002, $P5005
  fallback291:
    set $N5002, $P5002
    $P5006 = _lex_param_1."negate"()
    istrue $I5001, $P5006
    set $N5003, $I5001
    add $N5001, $N5002, $N5003
    find_lex $P5008, "%cclass_code"
.annotate 'line', 98
    $P5009 = _lex_param_1."subtype"()
    set $S5002, $P5009
    downcase $S5001, $S5002
    set $P5007, $P5008[$S5001]
    unless_null $P5007, fallback292
    nqp_get_sc_object $P5010, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5007, $P5010
  fallback292:
    $P5011 = $P5001."addedge"(_lex_param_2, _lex_param_3, $N5001, $P5007)
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "concat" :subid("cuid_14_1358115315.353") :anon :lex :outer("cuid_29_1358115315.353")
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
  while113_test293:
    set $N5004, _lex_param_2
    set $N5005, 0
    isgt $I5002, $N5004, $N5005
    set $I5004, $I5002
    unless $I5002 goto if114_end299 
    set $N5006, $I101
    set $N5007, $I102
    islt $I5003, $N5006, $N5007
    set $I5004, $I5003
  if114_end299:
    set $I5007, $I5004
    unless $I5004 goto while113_done297 
  while113_redo295:
.annotate 'line', 104
.annotate 'line', 105
    nqp_decontainerize $P5002, _lex_param_0
    set $P5003, _lex_param_1[$I101]
    unless_null $P5003, fallback300
    nqp_get_sc_object $P5004, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5003, $P5004
  fallback300:
    $P5005 = $P5002."regex_nfa"($P5003, _lex_param_2, -1)
    set $I5005, $P5005
    set _lex_param_2, $I5005
    set $N5009, $I101
    set $N5010, 1
    add $N5008, $N5009, $N5010
    set $I5006, $N5008
    set $I101, $I5006
    set $I5007, $I101
    goto while113_test293 
  while113_done297:
    set $N5011, _lex_param_2
    set $N5012, 0
    isgt $I5008, $N5011, $N5012
    set $I5010, $I5008
    unless $I5008 goto if116_end304 
    set $N5013, $I102
    set $N5014, 0
    isge $I5009, $N5013, $N5014
    set $I5010, $I5009
  if116_end304:
    unless $I5010 goto if115_else301 
.annotate 'line', 108
    nqp_decontainerize $P5006, _lex_param_0
    set $P5007, _lex_param_1[$I101]
    unless_null $P5007, fallback305
    nqp_get_sc_object $P5008, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5007, $P5008
  fallback305:
    $P5009 = $P5006."regex_nfa"($P5007, _lex_param_2, _lex_param_3)
    set $P5010, $P5009
    goto if115_end302
  if115_else301:
    box $P5011, _lex_param_3
    set $P5010, $P5011
  if115_end302:
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "enumcharlist" :subid("cuid_15_1358115315.353") :anon :lex :outer("cuid_29_1358115315.353")
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
    nqp_get_sc_object $P5001, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P101, $P5001
    set $P5002, _lex_param_1[0]
    unless_null $P5002, fallback306
    nqp_get_sc_object $P5003, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5002, $P5003
  fallback306:
    set $P101, $P5002
.annotate 'line', 113
    $P5004 = _lex_param_1."subtype"()
    set $S5001, $P5004
    iseq $I5001, $S5001, "zerowidth"
    unless $I5001 goto if117_else307 
.annotate 'line', 114
    nqp_decontainerize $P5005, _lex_param_0
    find_lex $P5008, "$?PACKAGE"
    get_who $P5007, $P5008
    set $P5006, $P5007["$EDGE_CHARLIST"]
    unless_null $P5006, fallback309
    nqp_get_sc_object $P5009, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5006, $P5009
  fallback309:
    set $N5002, $P5006
    $P5010 = _lex_param_1."negate"()
    istrue $I5002, $P5010
    set $N5003, $I5002
    add $N5001, $N5002, $N5003
    $P5011 = $P5005."addedge"(_lex_param_2, -1, $N5001, $P101)
    set $I5003, $P5011
    set _lex_param_2, $I5003
.annotate 'line', 115
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5015, "$?PACKAGE"
    get_who $P5014, $P5015
    set $P5013, $P5014["$EDGE_FATE"]
    unless_null $P5013, fallback310
    nqp_get_sc_object $P5016, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5013, $P5016
  fallback310:
    $P5017 = $P5012."addedge"(_lex_param_2, 0, $P5013, 0)
    set $P5025, $P5017
    goto if117_end308
  if117_else307:
.annotate 'line', 117
.annotate 'line', 118
    nqp_decontainerize $P5018, _lex_param_0
    find_lex $P5021, "$?PACKAGE"
    get_who $P5020, $P5021
    set $P5019, $P5020["$EDGE_CHARLIST"]
    unless_null $P5019, fallback311
    nqp_get_sc_object $P5022, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5019, $P5022
  fallback311:
    set $N5005, $P5019
    $P5023 = _lex_param_1."negate"()
    istrue $I5004, $P5023
    set $N5006, $I5004
    add $N5004, $N5005, $N5006
    $P5024 = $P5018."addedge"(_lex_param_2, _lex_param_3, $N5004, $P101)
    set $P5025, $P5024
  if117_end308:
    .return ($P5025) 
.end
.HLL "nqp"
.namespace []
.sub "literal" :subid("cuid_16_1358115315.353") :anon :lex :outer("cuid_29_1358115315.353")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 122
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param int _lex_param_2 
    .param int _lex_param_3 
    .const 'Sub' $P5016 = 'cuid_126_1358115315.353' 
    capture_lex $P5016 
    .const 'Sub' $P5016 = 'cuid_127_1358115315.353' 
    capture_lex $P5016 
    .lex "$litlen", $I101 
    .lex "$i", $I102 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$from", _lex_param_2 
    .lex "$to", _lex_param_3 
    set $I101, 0
    set $I102, 0
    set $P5001, _lex_param_1[0]
    unless_null $P5001, fallback312
    nqp_get_sc_object $P5002, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5001, $P5002
  fallback312:
    set $S5001, $P5001
    length $I5001, $S5001
    set $N5002, $I5001
    set $N5003, 1
    sub $N5001, $N5002, $N5003
    set $I5002, $N5001
    set $I101, $I5002
    set $I102, 0
    set $N5004, $I101
    set $N5005, 0
    isge $I5003, $N5004, $N5005
    unless $I5003 goto if118_else313 
.annotate 'line', 125
.annotate 'line', 126
    $P5003 = _lex_param_1."subtype"()
    set $S5002, $P5003
    iseq $I5004, $S5002, "ignorecase"
    unless $I5004 goto if119_else315 
    .const 'Sub' $P5004 = 'cuid_126_1358115315.353' 
    capture_lex $P5004
    $P5005 = $P5004()
    set $P5008, $P5005
    goto if119_end316
  if119_else315:
    .const 'Sub' $P5006 = 'cuid_127_1358115315.353' 
    capture_lex $P5006
    $P5007 = $P5006()
    set $P5008, $P5007
  if119_end316:
    set $P5015, $P5008
    goto if118_end314
  if118_else313:
.annotate 'line', 146
.annotate 'line', 147
    nqp_decontainerize $P5009, _lex_param_0
    find_lex $P5012, "$?PACKAGE"
    get_who $P5011, $P5012
    set $P5010, $P5011["$EDGE_EPSILON"]
    unless_null $P5010, fallback334
    nqp_get_sc_object $P5013, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5010, $P5013
  fallback334:
    $P5014 = $P5009."addedge"(_lex_param_2, _lex_param_3, $P5010, 0)
    set $P5015, $P5014
  if118_end314:
    .return ($P5015) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_126_1358115315.353") :anon :lex :outer("cuid_16_1358115315.353")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 126
    .lex "$litconst_lc", $S101 
    .lex "$litconst_uc", $S102 
    set $S101, ""
    set $S102, ""
    find_lex $P5002, "$node"
    set $P5001, $P5002[0]
    unless_null $P5001, fallback317
    nqp_get_sc_object $P5003, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5001, $P5003
  fallback317:
    set $S5002, $P5001
    downcase $S5001, $S5002
    set $S101, $S5001
    find_lex $P5005, "$node"
    set $P5004, $P5005[0]
    unless_null $P5004, fallback318
    nqp_get_sc_object $P5006, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5004, $P5006
  fallback318:
    set $S5004, $P5004
    upcase $S5003, $S5004
    set $S102, $S5003
  while120_test319:
    find_lex $I5002, "$i"
    set $N5001, $I5002
    find_lex $I5003, "$litlen"
    set $N5002, $I5003
    islt $I5001, $N5001, $N5002
    set $I5012, $I5001
    unless $I5001 goto while120_done323 
  while120_redo321:
.annotate 'line', 129
.annotate 'line', 130
    find_lex $P5008, "self"
    nqp_decontainerize $P5007, $P5008
    find_lex $I5004, "$from"
    find_lex $P5011, "$?PACKAGE"
    get_who $P5010, $P5011
    set $P5009, $P5010["$EDGE_CODEPOINT_I"]
    unless_null $P5009, fallback324
    nqp_get_sc_object $P5012, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5009, $P5012
  fallback324:
    new $P5013, 'ResizablePMCArray'
    find_lex $I5006, "$i"
    ord $I5005, $S101, $I5006
    box $P5014, $I5005
    push $P5013, $P5014
    find_lex $I5008, "$i"
    ord $I5007, $S102, $I5008
    box $P5015, $I5007
    push $P5013, $P5015
    $P5016 = $P5007."addedge"($I5004, -1, $P5009, $P5013)
    set $I5009, $P5016
    store_lex "$from", $I5009
    find_lex $I5010, "$i"
    set $N5004, $I5010
    set $N5005, 1
    add $N5003, $N5004, $N5005
    set $I5011, $N5003
    store_lex "$i", $I5011
    set $I5012, $I5011
    goto while120_test319 
  while120_done323:
.annotate 'line', 134
    find_lex $P5018, "self"
    nqp_decontainerize $P5017, $P5018
    find_lex $I5013, "$from"
    find_lex $I5014, "$to"
    find_lex $P5021, "$?PACKAGE"
    get_who $P5020, $P5021
    set $P5019, $P5020["$EDGE_CODEPOINT_I"]
    unless_null $P5019, fallback325
    nqp_get_sc_object $P5022, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5019, $P5022
  fallback325:
    new $P5023, 'ResizablePMCArray'
    find_lex $I5016, "$i"
    ord $I5015, $S101, $I5016
    box $P5024, $I5015
    push $P5023, $P5024
    find_lex $I5018, "$i"
    ord $I5017, $S102, $I5018
    box $P5025, $I5017
    push $P5023, $P5025
    $P5026 = $P5017."addedge"($I5013, $I5014, $P5019, $P5023)
    .return ($P5026) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_127_1358115315.353") :anon :lex :outer("cuid_16_1358115315.353")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 137
    .lex "$litconst", $S101 
    set $S101, ""
    find_lex $P5002, "$node"
    set $P5001, $P5002[0]
    unless_null $P5001, fallback326
    nqp_get_sc_object $P5003, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5001, $P5003
  fallback326:
    set $S5001, $P5001
    set $S101, $S5001
  while121_test327:
    find_lex $I5002, "$i"
    set $N5001, $I5002
    find_lex $I5003, "$litlen"
    set $N5002, $I5003
    islt $I5001, $N5001, $N5002
    set $I5010, $I5001
    unless $I5001 goto while121_done331 
  while121_redo329:
.annotate 'line', 139
.annotate 'line', 140
    find_lex $P5005, "self"
    nqp_decontainerize $P5004, $P5005
    find_lex $I5004, "$from"
    find_lex $P5008, "$?PACKAGE"
    get_who $P5007, $P5008
    set $P5006, $P5007["$EDGE_CODEPOINT"]
    unless_null $P5006, fallback332
    nqp_get_sc_object $P5009, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5006, $P5009
  fallback332:
    find_lex $I5006, "$i"
    ord $I5005, $S101, $I5006
    $P5010 = $P5004."addedge"($I5004, -1, $P5006, $I5005)
    set $I5007, $P5010
    store_lex "$from", $I5007
    find_lex $I5008, "$i"
    set $N5004, $I5008
    set $N5005, 1
    add $N5003, $N5004, $N5005
    set $I5009, $N5003
    store_lex "$i", $I5009
    set $I5010, $I5009
    goto while121_test327 
  while121_done331:
.annotate 'line', 143
    find_lex $P5012, "self"
    nqp_decontainerize $P5011, $P5012
    find_lex $I5011, "$from"
    find_lex $I5012, "$to"
    find_lex $P5015, "$?PACKAGE"
    get_who $P5014, $P5015
    set $P5013, $P5014["$EDGE_CODEPOINT"]
    unless_null $P5013, fallback333
    nqp_get_sc_object $P5016, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5013, $P5016
  fallback333:
    find_lex $I5014, "$i"
    ord $I5013, $S101, $I5014
    $P5017 = $P5011."addedge"($I5011, $I5012, $P5013, $I5013)
    .return ($P5017) 
.end
.HLL "nqp"
.namespace []
.sub "subrule" :subid("cuid_17_1358115315.353") :anon :lex :outer("cuid_29_1358115315.353")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 151
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param int _lex_param_2 
    .param int _lex_param_3 
    .const 'Sub' $P5128 = 'cuid_128_1358115315.353' 
    capture_lex $P5128 
    .const 'Sub' $P5128 = 'cuid_129_1358115315.353' 
    capture_lex $P5128 
    .lex "$subtype", $P101 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$from", _lex_param_2 
    .lex "$to", _lex_param_3 
    nqp_get_sc_object $P5001, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P101, $P5001
.annotate 'line', 152
    $P5002 = _lex_param_1."subtype"()
    set $P101, $P5002
.annotate 'line', 153
    $P5003 = _lex_param_1."name"()
    set $S5001, $P5003
    iseq $I5001, $S5001, "before"
    set $I5003, $I5001
    unless $I5001 goto if123_end338 
    $P5004 = _lex_param_1."negate"()
    isfalse $I5002, $P5004
    set $I5003, $I5002
  if123_end338:
    unless $I5003 goto if122_else335 
    .const 'Sub' $P5005 = 'cuid_128_1358115315.353' 
    capture_lex $P5005
    $P5006 = $P5005()
    set $P5127, $P5006
    goto if122_end336
  if122_else335:
    set $S5002, $P101
    isne $I5004, $S5002, "zerowidth"
    set $I5010, $I5004
    unless $I5004 goto if125_end345 
.annotate 'line', 159
    $P5007 = _lex_param_1."name"()
    set $S5003, $P5007
    iseq $I5005, $S5003, "alpha"
    set $I5009, $I5005
    if $I5005 goto unless126_end347 
    set $S5004, $P101
    iseq $I5006, $S5004, "method"
    set $I5008, $I5006
    unless $I5006 goto if127_end349 
.annotate 'line', 161
    nqp_get_sc_object $P5011, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 0
    nqp_get_package_through_who $P5010, $P5011, "QAST"
    get_who $P5009, $P5010
    set $P5008, $P5009["SVal"]
    unless_null $P5008, fallback352
    nqp_get_sc_object $P5012, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5008, $P5012
  fallback352:
    set $P5014, _lex_param_1[0]
    unless_null $P5014, fallback353
    nqp_get_sc_object $P5015, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5014, $P5015
  fallback353:
    set $P5013, $P5014[0]
    unless_null $P5013, fallback354
    nqp_get_sc_object $P5016, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5013, $P5016
  fallback354:
    $P5017 = $P5008."ACCEPTS"($P5013)
    unless $P5017 goto if128_else350 
    set $P5019, _lex_param_1[0]
    unless_null $P5019, fallback355
    nqp_get_sc_object $P5020, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5019, $P5020
  fallback355:
    set $P5018, $P5019[0]
    unless_null $P5018, fallback356
    nqp_get_sc_object $P5021, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5018, $P5021
  fallback356:
    $P5022 = $P5018."value"()
    set $P5027, $P5022
    goto if128_end351
  if128_else350:
    set $P5024, _lex_param_1[0]
    unless_null $P5024, fallback357
    nqp_get_sc_object $P5025, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5024, $P5025
  fallback357:
    set $P5023, $P5024[0]
    unless_null $P5023, fallback358
    nqp_get_sc_object $P5026, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5023, $P5026
  fallback358:
    set $P5027, $P5023
  if128_end351:
    set $S5005, $P5027
    iseq $I5007, $S5005, "alpha"
    set $I5008, $I5007
  if127_end349:
    set $I5009, $I5008
  unless126_end347:
    set $I5010, $I5009
  if125_end345:
    unless $I5010 goto if124_else342 
.annotate 'line', 162
    nqp_decontainerize $P5028, _lex_param_0
    find_lex $P5031, "$?PACKAGE"
    get_who $P5030, $P5031
    set $P5029, $P5030["$EDGE_CHARCLASS"]
    unless_null $P5029, fallback359
    nqp_get_sc_object $P5032, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5029, $P5032
  fallback359:
    set $N5002, $P5029
    $P5033 = _lex_param_1."negate"()
    set $N5003, $P5033
    add $N5001, $N5002, $N5003
    $P5034 = $P5028."addedge"(_lex_param_2, _lex_param_3, $N5001, .CCLASS_ALPHABETIC)
    set $I5011, $P5034
    set _lex_param_3, $I5011
.annotate 'line', 164
    nqp_decontainerize $P5035, _lex_param_0
    find_lex $P5038, "$?PACKAGE"
    get_who $P5037, $P5038
    set $P5036, $P5037["$EDGE_CODEPOINT"]
    unless_null $P5036, fallback360
    nqp_get_sc_object $P5039, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5036, $P5039
  fallback360:
    set $N5005, $P5036
    $P5040 = _lex_param_1."negate"()
    set $N5006, $P5040
    add $N5004, $N5005, $N5006
    $P5041 = $P5035."addedge"(_lex_param_2, _lex_param_3, $N5004, 95)
    set $P5126, $P5041
    goto if124_end343
  if124_else342:
    set $S5006, $P101
    iseq $I5012, $S5006, "zerowidth"
    unless $I5012 goto if129_else361 
.annotate 'line', 166
.annotate 'line', 167
    $P5042 = _lex_param_1."negate"()
    unless $P5042 goto if130_else363 
.annotate 'line', 168
    nqp_decontainerize $P5043, _lex_param_0
    $P5044 = $P5043."fate"(_lex_param_1, _lex_param_2, _lex_param_3)
    set $P5047, $P5044
    goto if130_end364
  if130_else363:
    .const 'Sub' $P5045 = 'cuid_129_1358115315.353' 
    capture_lex $P5045
    $P5046 = $P5045()
    set $P5047, $P5046
  if130_end364:
    set $P5125, $P5047
    goto if129_end362
  if129_else361:
    find_dynamic_lex $P5048, "$*vars_as_generic"
    unless_null $P5048, fallback378
    nqp_get_sc_object $P5051, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 0
    get_who $P5050, $P5051
    set $P5049, $P5050["$vars_as_generic"]
    unless_null $P5049, fallback379
    nqp_get_sc_object $P5052, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5049, $P5052
  fallback379:
    unless_null $P5049, vivi_137380
    die "Contextual $*vars_as_generic not found"
    box $P5053, "Contextual $*vars_as_generic not found"
    set $P5049, $P5053
  vivi_137380:
    set $P5048, $P5049
  fallback378:
    set $P5054, $P5048
    unless $P5048 goto if136_end377 
    set $S5007, $P101
    iseq $I5013, $S5007, "method"
    box $P5055, $I5013
    set $P5054, $P5055
  if136_end377:
    set $P5066, $P5054
    unless $P5054 goto if135_end375 
.annotate 'line', 177
    nqp_get_sc_object $P5059, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 0
    nqp_get_package_through_who $P5058, $P5059, "QAST"
    get_who $P5057, $P5058
    set $P5056, $P5057["SVal"]
    unless_null $P5056, fallback381
    nqp_get_sc_object $P5060, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5056, $P5060
  fallback381:
    set $P5062, _lex_param_1[0]
    unless_null $P5062, fallback382
    nqp_get_sc_object $P5063, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5062, $P5063
  fallback382:
    set $P5061, $P5062[0]
    unless_null $P5061, fallback383
    nqp_get_sc_object $P5064, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5061, $P5064
  fallback383:
    $P5065 = $P5056."ACCEPTS"($P5061)
    set $P5066, $P5065
  if135_end375:
    set $P5072, $P5066
    unless $P5066 goto if134_end373 
    set $P5068, _lex_param_1[0]
    unless_null $P5068, fallback384
    nqp_get_sc_object $P5069, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5068, $P5069
  fallback384:
    set $P5067, $P5068[0]
    unless_null $P5067, fallback385
    nqp_get_sc_object $P5070, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5067, $P5070
  fallback385:
    $P5071 = $P5067."value"()
    set $S5008, $P5071
    iseq $I5014, $S5008, "!INTERPOLATE"
    box $P5073, $I5014
    set $P5072, $P5073
  if134_end373:
    set $P5084, $P5072
    unless $P5072 goto if133_end371 
.annotate 'line', 178
    nqp_get_sc_object $P5077, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 0
    nqp_get_package_through_who $P5076, $P5077, "QAST"
    get_who $P5075, $P5076
    set $P5074, $P5075["Var"]
    unless_null $P5074, fallback386
    nqp_get_sc_object $P5078, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5074, $P5078
  fallback386:
    set $P5080, _lex_param_1[0]
    unless_null $P5080, fallback387
    nqp_get_sc_object $P5081, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5080, $P5081
  fallback387:
    set $P5079, $P5080[1]
    unless_null $P5079, fallback388
    nqp_get_sc_object $P5082, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5079, $P5082
  fallback388:
    $P5083 = $P5074."ACCEPTS"($P5079)
    set $P5084, $P5083
  if133_end371:
    set $P5090, $P5084
    unless $P5084 goto if132_end369 
    set $P5086, _lex_param_1[0]
    unless_null $P5086, fallback389
    nqp_get_sc_object $P5087, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5086, $P5087
  fallback389:
    set $P5085, $P5086[1]
    unless_null $P5085, fallback390
    nqp_get_sc_object $P5088, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5085, $P5088
  fallback390:
    $P5089 = $P5085."scope"()
    set $S5009, $P5089
    iseq $I5015, $S5009, "lexical"
    box $P5091, $I5015
    set $P5090, $P5091
  if132_end369:
    unless $P5090 goto if131_else366 
    nqp_decontainerize $P5092, _lex_param_0
    nqp_get_sc_object $P5093, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 3
    repr_bind_attr_int $P5092, $P5093, "$!generic", 1
.annotate 'line', 180
    nqp_decontainerize $P5094, _lex_param_0
    find_lex $P5097, "$?PACKAGE"
    get_who $P5096, $P5097
    set $P5095, $P5096["$EDGE_GENERIC_VAR"]
    unless_null $P5095, fallback391
    nqp_get_sc_object $P5098, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5095, $P5098
  fallback391:
    set $P5100, _lex_param_1[0]
    unless_null $P5100, fallback392
    nqp_get_sc_object $P5101, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5100, $P5101
  fallback392:
    set $P5099, $P5100[1]
    unless_null $P5099, fallback393
    nqp_get_sc_object $P5102, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5099, $P5102
  fallback393:
    $P5103 = $P5099."name"()
    $P5104 = $P5094."addedge"(_lex_param_2, _lex_param_3, $P5095, $P5103)
    set $P5124, $P5104
    goto if131_end367
  if131_else366:
.annotate 'line', 182
    set $S5010, $P101
    iseq $I5016, $S5010, "capture"
    box $P5108, $I5016
    set $P5107, $P5108
    unless $I5016 goto if139_end397 
    set $P5105, _lex_param_1[1]
    unless_null $P5105, fallback398
    nqp_get_sc_object $P5106, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5105, $P5106
  fallback398:
    set $P5107, $P5105
  if139_end397:
    unless $P5107 goto if138_else394 
.annotate 'line', 184
    nqp_decontainerize $P5109, _lex_param_0
    set $P5110, _lex_param_1[1]
    unless_null $P5110, fallback399
    nqp_get_sc_object $P5111, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5110, $P5111
  fallback399:
    $P5112 = $P5109."regex_nfa"($P5110, _lex_param_2, _lex_param_3)
    set $P5123, $P5112
    goto if138_end395
  if138_else394:
.annotate 'line', 185
    nqp_decontainerize $P5113, _lex_param_0
    find_lex $P5116, "$?PACKAGE"
    get_who $P5115, $P5116
    set $P5114, $P5115["$EDGE_SUBRULE"]
    unless_null $P5114, fallback400
    nqp_get_sc_object $P5117, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5114, $P5117
  fallback400:
    set $P5119, _lex_param_1[0]
    unless_null $P5119, fallback401
    nqp_get_sc_object $P5120, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5119, $P5120
  fallback401:
    set $P5118, $P5119[0]
    unless_null $P5118, fallback402
    nqp_get_sc_object $P5121, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5118, $P5121
  fallback402:
    $P5122 = $P5113."addedge"(_lex_param_2, _lex_param_3, $P5114, $P5118)
    set $P5123, $P5122
  if138_end395:
    set $P5124, $P5123
  if131_end367:
    set $P5125, $P5124
  if129_end362:
    set $P5126, $P5125
  if124_end343:
    set $P5127, $P5126
  if122_end336:
    .return ($P5127) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_128_1358115315.353") :anon :lex :outer("cuid_17_1358115315.353")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 153
    .lex "$end", $I101 
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
    find_lex $P5009, "$node"
    set $P5008, $P5009[0]
    unless_null $P5008, fallback339
    nqp_get_sc_object $P5010, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5008, $P5010
  fallback339:
    set $P5007, $P5008[1]
    unless_null $P5007, fallback340
    nqp_get_sc_object $P5011, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5007, $P5011
  fallback340:
    set $P5006, $P5007["orig_qast"]
    unless_null $P5006, fallback341
    nqp_get_sc_object $P5012, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5006, $P5012
  fallback341:
    find_lex $I5002, "$from"
    $P5004."regex_nfa"($P5006, $I5002, $I101)
.annotate 'line', 156
    find_lex $P5014, "self"
    nqp_decontainerize $P5013, $P5014
    find_lex $P5015, "$node"
    find_lex $I5003, "$to"
    $P5016 = $P5013."fate"($P5015, $I101, $I5003)
    .return ($P5016) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_129_1358115315.353") :anon :lex :outer("cuid_17_1358115315.353")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 170
    .lex "$end", $I101 
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
    find_lex $P5008, "$?PACKAGE"
    get_who $P5007, $P5008
    set $P5006, $P5007["$EDGE_SUBRULE"]
    unless_null $P5006, fallback365
    nqp_get_sc_object $P5009, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5006, $P5009
  fallback365:
    find_lex $P5010, "$node"
    $P5011 = $P5010."name"()
    $P5004."addedge"($I5002, $I101, $P5006, $P5011)
.annotate 'line', 173
    find_lex $P5013, "self"
    nqp_decontainerize $P5012, $P5013
    find_lex $P5014, "$node"
    find_lex $I5003, "$to"
    $P5015 = $P5012."fate"($P5014, $I101, $I5003)
    .return ($P5015) 
.end
.HLL "nqp"
.namespace []
.sub "quant" :subid("cuid_18_1358115315.353") :anon :lex :outer("cuid_29_1358115315.353")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 189
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param int _lex_param_2 
    .param int _lex_param_3 
    .const 'Sub' $P5025 = 'cuid_131_1358115315.353' 
    capture_lex $P5025 
    .const 'Sub' $P5025 = 'cuid_133_1358115315.353' 
    capture_lex $P5025 
    .const 'Sub' $P5025 = 'cuid_134_1358115315.353' 
    capture_lex $P5025 
    .const 'Sub' $P5025 = 'cuid_135_1358115315.353' 
    capture_lex $P5025 
    .const 'Sub' $P5025 = 'cuid_136_1358115315.353' 
    capture_lex $P5025 
    .lex "$min", $I101 
    .lex "$max", $I102 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$from", _lex_param_2 
    .lex "$to", _lex_param_3 
    set $I101, 0
    set $I102, 0
    root_new $P101, ['parrot';'Continuation']
    set_label $P101, lexotic_403
    .lex "RETURN", $P101
    set $N5002, 0
.annotate 'line', 190
    $P5002 = _lex_param_1."min"()
    set $P5001, $P5002
    defined $I5001, $P5001
    if $I5001, defor405
    box $P5003, 0
    set $P5001, $P5003
  defor405:
    set $N5003, $P5001
    add $N5001, $N5002, $N5003
    set $I5002, $N5001
    set $I101, $I5002
    set $N5005, 0
.annotate 'line', 191
    $P5005 = _lex_param_1."max"()
    set $P5004, $P5005
    defined $I5003, $P5004
    if $I5003, defor406
    box $P5006, -1
    set $P5004, $P5006
  defor406:
    set $N5006, $P5004
    add $N5004, $N5005, $N5006
    set $I5004, $N5004
    set $I102, $I5004
    set $N5007, $I102
    set $N5008, 1
    isgt $I5005, $N5007, $N5008
    set $I5007, $I5005
    if $I5005 goto unless141_end410 
    set $N5009, $I101
    set $N5010, 1
    isgt $I5006, $N5009, $N5010
    set $I5007, $I5006
  unless141_end410:
    unless $I5007 goto if140_end408 
    .const 'Sub' $P5007 = 'cuid_131_1358115315.353' 
    capture_lex $P5007
    $P5008 = $P5007()
  if140_end408:
    set $N5011, $I102
    set $N5012, -1
    iseq $I5008, $N5011, $N5012
    unless $I5008 goto if153_else446 
.annotate 'line', 224
    set $N5013, $I101
    set $N5014, 0
    iseq $I5009, $N5013, $N5014
    unless $I5009 goto if154_else448 
.annotate 'line', 225
    set $P5009, _lex_param_1[1]
    unless_null $P5009, fallback452
    nqp_get_sc_object $P5010, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5009, $P5010
  fallback452:
    defined $I5010, $P5009
    unless $I5010 goto if155_else450 
    .const 'Sub' $P5011 = 'cuid_133_1358115315.353' 
    capture_lex $P5011
    $P5012 = $P5011()
    set $P5015, $P5012
    goto if155_end451
  if155_else450:
    .const 'Sub' $P5013 = 'cuid_134_1358115315.353' 
    capture_lex $P5013
    $P5014 = $P5013()
    set $P5015, $P5014
  if155_end451:
    goto if154_end449
  if154_else448:
    .const 'Sub' $P5016 = 'cuid_135_1358115315.353' 
    capture_lex $P5016
    $P5017 = $P5016()
  if154_end449:
    box $P5024, _lex_param_3
    set $P5023, $P5024
    goto if153_end447
  if153_else446:
    set $N5015, $I101
    set $N5016, 0
    iseq $I5011, $N5015, $N5016
    set $I5013, $I5011
    unless $I5011 goto if164_end483 
    set $N5017, $I102
    set $N5018, 1
    iseq $I5012, $N5017, $N5018
    set $I5013, $I5012
  if164_end483:
    unless $I5013 goto if163_else480 
    .const 'Sub' $P5018 = 'cuid_136_1358115315.353' 
    capture_lex $P5018
    $P5019 = $P5018()
    set $P5022, $P5019
    goto if163_end481
  if163_else480:
.annotate 'line', 262
.annotate 'line', 263
    nqp_decontainerize $P5020, _lex_param_0
    $P5021 = $P5020."fate"(_lex_param_1, _lex_param_2, _lex_param_3)
    set $P5022, $P5021
  if163_end481:
    set $P5023, $P5022
  if153_end447:
    goto lexotic_404
  lexotic_403:
    .get_results ($P5023)
  lexotic_404:
    .return ($P5023) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_131_1358115315.353") :anon :lex :outer("cuid_18_1358115315.353")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 193
    .const 'Sub' $P5028 = 'cuid_130_1358115315.353' 
    capture_lex $P5028 
    .const 'Sub' $P5028 = 'cuid_132_1358115315.353' 
    capture_lex $P5028 
    .lex "$count", $I101 
    .lex "$st", $I102 
    .lex "$has_sep", $I103 
    set $I101, 0
    set $I102, 0
    set $I103, 0
    set $I101, 0
    find_lex $P5002, "$node"
    set $P5001, $P5002[1]
    unless_null $P5001, fallback411
    nqp_get_sc_object $P5003, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5001, $P5003
  fallback411:
    defined $I5001, $P5001
    set $I103, $I5001
  while142_test412:
    set $N5001, $I101
    find_lex $I5003, "$max"
    set $N5002, $I5003
    islt $I5002, $N5001, $N5002
    set $I5006, $I5002
    if $I5002 goto unless143_end418 
    set $N5003, $I101
    find_lex $I5005, "$min"
    set $N5004, $I5005
    islt $I5004, $N5003, $N5004
    set $I5006, $I5004
  unless143_end418:
    set $I5016, $I5006
    unless $I5006 goto while142_done416 
  while142_redo414:
.annotate 'line', 197
    set $N5005, $I101
    find_lex $I5008, "$min"
    set $N5006, $I5008
    isge $I5007, $N5005, $N5006
    unless $I5007 goto if144_end420 
    .const 'Sub' $P5004 = 'cuid_130_1358115315.353' 
    capture_lex $P5004
    $P5005 = $P5004()
  if144_end420:
    set $I5010, $I103
    unless $I103 goto if147_end427 
    set $N5007, $I101
    set $N5008, 0
    isgt $I5009, $N5007, $N5008
    set $I5010, $I5009
  if147_end427:
    unless $I5010 goto if146_end425 
.annotate 'line', 202
.annotate 'line', 203
    find_lex $P5007, "self"
    nqp_decontainerize $P5006, $P5007
    find_lex $P5009, "$node"
    set $P5008, $P5009[1]
    unless_null $P5008, fallback428
    nqp_get_sc_object $P5010, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5008, $P5010
  fallback428:
    find_lex $I5011, "$from"
    $P5011 = $P5006."regex_nfa"($P5008, $I5011, -1)
    set $I5012, $P5011
    store_lex "$from", $I5012
  if146_end425:
.annotate 'line', 205
    find_lex $P5013, "self"
    nqp_decontainerize $P5012, $P5013
    find_lex $P5015, "$node"
    set $P5014, $P5015[0]
    unless_null $P5014, fallback429
    nqp_get_sc_object $P5016, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5014, $P5016
  fallback429:
    find_lex $I5013, "$from"
    $P5017 = $P5012."regex_nfa"($P5014, $I5013, -1)
    set $I5014, $P5017
    store_lex "$from", $I5014
    set $N5010, $I101
    set $N5011, 1
    add $N5009, $N5010, $N5011
    set $I5015, $N5009
    set $I101, $I5015
    set $I5016, $I101
    goto while142_test412 
  while142_done416:
.annotate 'line', 208
    find_lex $P5019, "self"
    nqp_decontainerize $P5018, $P5019
    find_lex $I5017, "$from"
    find_lex $I5018, "$to"
    find_lex $P5022, "$?PACKAGE"
    get_who $P5021, $P5022
    set $P5020, $P5021["$EDGE_EPSILON"]
    unless_null $P5020, fallback430
    nqp_get_sc_object $P5023, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5020, $P5023
  fallback430:
    $P5018."addedge"($I5017, $I5018, $P5020, 0)
    find_lex $I5020, "$max"
    set $N5012, $I5020
    set $N5013, -1
    iseq $I5019, $N5012, $N5013
    unless $I5019 goto if148_end432 
    .const 'Sub' $P5024 = 'cuid_132_1358115315.353' 
    capture_lex $P5024
    $P5025 = $P5024()
  if148_end432:
    find_lex $I5022, "$to"
    set $N5014, $I5022
    set $N5015, 0
    islt $I5021, $N5014, $N5015
    set $I5024, $I5021
    unless $I5021 goto if152_end445 
    set $N5016, $I102
    set $N5017, 0
    isgt $I5023, $N5016, $N5017
    set $I5024, $I5023
  if152_end445:
    unless $I5024 goto if151_end443 
    store_lex "$to", $I102
  if151_end443:
    find_lex $I5025, "$to"
    find_lex $P5026, "RETURN"
    $P5027 = $P5026($I5025)
    .return ($P5027) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_130_1358115315.353") :anon :lex :outer("cuid_131_1358115315.353")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 198
    .lex "$f", $I101 
    set $I101, 0
.annotate 'line', 199
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    find_lex $I5001, "$from"
    find_lex $I5002, "$to"
    find_lex $P5005, "$?PACKAGE"
    get_who $P5004, $P5005
    set $P5003, $P5004["$EDGE_EPSILON"]
    unless_null $P5003, fallback421
    nqp_get_sc_object $P5006, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5003, $P5006
  fallback421:
    $P5007 = $P5001."addedge"($I5001, $I5002, $P5003, 0)
    set $I5003, $P5007
    set $I101, $I5003
    find_lex $I5004, "$st"
    set $I5005, $I5004
    if $I5004 goto unless145_end423 
    set $I5005, $I101
  unless145_end423:
    store_lex "$st", $I5005
    .return ($I5005) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_132_1358115315.353") :anon :lex :outer("cuid_131_1358115315.353")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 209
    .lex "$start", $I101 
    .lex "$looper", $P101 
    set $I101, 0
    nqp_get_sc_object $P5001, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
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
    find_lex $P5009, "$?PACKAGE"
    get_who $P5008, $P5009
    set $P5007, $P5008["$EDGE_EPSILON"]
    unless_null $P5007, fallback433
    nqp_get_sc_object $P5010, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5007, $P5010
  fallback433:
    $P5005."addedge"($I5002, $I101, $P5007, 0)
    store_lex "$from", $I101
.annotate 'line', 213
    find_lex $P5012, "self"
    nqp_decontainerize $P5011, $P5012
    $P5013 = $P5011."addstate"()
    set $P101, $P5013
.annotate 'line', 214
    find_lex $P5015, "self"
    nqp_decontainerize $P5014, $P5015
    find_lex $I5003, "$to"
    find_lex $P5018, "$?PACKAGE"
    get_who $P5017, $P5018
    set $P5016, $P5017["$EDGE_EPSILON"]
    unless_null $P5016, fallback434
    nqp_get_sc_object $P5019, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5016, $P5019
  fallback434:
    $P5014."addedge"($P101, $I5003, $P5016, 0)
.annotate 'line', 215
    find_lex $P5021, "self"
    nqp_decontainerize $P5020, $P5021
    find_lex $I5004, "$from"
    find_lex $P5024, "$?PACKAGE"
    get_who $P5023, $P5024
    set $P5022, $P5023["$EDGE_EPSILON"]
    unless_null $P5022, fallback435
    nqp_get_sc_object $P5025, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5022, $P5025
  fallback435:
    $P5020."addedge"($P101, $I5004, $P5022, 0)
    find_lex $I5005, "$has_sep"
    set $I5008, $I5005
    unless $I5005 goto if150_end439 
    find_lex $I5007, "$count"
    set $N5001, $I5007
    set $N5002, 0
    isgt $I5006, $N5001, $N5002
    set $I5008, $I5006
  if150_end439:
    unless $I5008 goto if149_end437 
.annotate 'line', 216
.annotate 'line', 217
    find_lex $P5027, "self"
    nqp_decontainerize $P5026, $P5027
    find_lex $P5029, "$node"
    set $P5028, $P5029[1]
    unless_null $P5028, fallback440
    nqp_get_sc_object $P5030, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5028, $P5030
  fallback440:
    find_lex $I5009, "$from"
    $P5031 = $P5026."regex_nfa"($P5028, $I5009, -1)
    set $I5010, $P5031
    store_lex "$from", $I5010
  if149_end437:
.annotate 'line', 219
    find_lex $P5033, "self"
    nqp_decontainerize $P5032, $P5033
    find_lex $P5035, "$node"
    set $P5034, $P5035[0]
    unless_null $P5034, fallback441
    nqp_get_sc_object $P5036, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5034, $P5036
  fallback441:
    find_lex $I5011, "$from"
    $P5037 = $P5032."regex_nfa"($P5034, $I5011, $P101)
    .return ($P5037) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_133_1358115315.353") :anon :lex :outer("cuid_18_1358115315.353")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 226
    .lex "$start", $I101 
    .lex "$looper", $I102 
    .lex "$st", $I103 
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
    find_lex $P5008, "$?PACKAGE"
    get_who $P5007, $P5008
    set $P5006, $P5007["$EDGE_EPSILON"]
    unless_null $P5006, fallback453
    nqp_get_sc_object $P5009, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5006, $P5009
  fallback453:
    $P5004."addedge"($I5002, $I101, $P5006, 0)
.annotate 'line', 229
    find_lex $P5011, "self"
    nqp_decontainerize $P5010, $P5011
    $P5012 = $P5010."addstate"()
    set $I5003, $P5012
    set $I102, $I5003
.annotate 'line', 230
    find_lex $P5014, "self"
    nqp_decontainerize $P5013, $P5014
    find_lex $P5016, "$node"
    set $P5015, $P5016[0]
    unless_null $P5015, fallback454
    nqp_get_sc_object $P5017, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5015, $P5017
  fallback454:
    $P5018 = $P5013."regex_nfa"($P5015, $I101, $I102)
    set $I5004, $P5018
    set $I103, $I5004
.annotate 'line', 231
    find_lex $P5020, "self"
    nqp_decontainerize $P5019, $P5020
    find_lex $P5022, "$node"
    set $P5021, $P5022[1]
    unless_null $P5021, fallback455
    nqp_get_sc_object $P5023, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5021, $P5023
  fallback455:
    $P5019."regex_nfa"($P5021, $I102, $I101)
.annotate 'line', 232
    find_lex $P5025, "self"
    nqp_decontainerize $P5024, $P5025
    find_lex $I5005, "$to"
    find_lex $P5028, "$?PACKAGE"
    get_who $P5027, $P5028
    set $P5026, $P5027["$EDGE_EPSILON"]
    unless_null $P5026, fallback456
    nqp_get_sc_object $P5029, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5026, $P5029
  fallback456:
    $P5024."addedge"($I102, $I5005, $P5026, 0)
.annotate 'line', 233
    find_lex $P5031, "self"
    nqp_decontainerize $P5030, $P5031
    find_lex $I5006, "$from"
    find_lex $I5007, "$to"
    find_lex $P5034, "$?PACKAGE"
    get_who $P5033, $P5034
    set $P5032, $P5033["$EDGE_EPSILON"]
    unless_null $P5032, fallback457
    nqp_get_sc_object $P5035, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5032, $P5035
  fallback457:
    $P5036 = $P5030."addedge"($I5006, $I5007, $P5032, 0)
    set $I5008, $P5036
    set $I103, $I5008
    find_lex $I5010, "$to"
    set $N5001, $I5010
    set $N5002, 0
    islt $I5009, $N5001, $N5002
    set $I5012, $I5009
    unless $I5009 goto if157_end461 
    set $N5003, $I103
    set $N5004, 0
    isgt $I5011, $N5003, $N5004
    set $I5012, $I5011
  if157_end461:
    set $I5013, $I5012
    unless $I5012 goto if156_end459 
    store_lex "$to", $I103
    set $I5013, $I103
  if156_end459:
    .return ($I5013) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_134_1358115315.353") :anon :lex :outer("cuid_18_1358115315.353")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 236
    .lex "$st", $I101 
    set $I101, 0
.annotate 'line', 237
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    find_lex $P5004, "$node"
    set $P5003, $P5004[0]
    unless_null $P5003, fallback462
    nqp_get_sc_object $P5005, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5003, $P5005
  fallback462:
    find_lex $I5001, "$from"
    find_lex $I5002, "$from"
    $P5001."regex_nfa"($P5003, $I5001, $I5002)
.annotate 'line', 238
    find_lex $P5007, "self"
    nqp_decontainerize $P5006, $P5007
    find_lex $I5003, "$from"
    find_lex $I5004, "$to"
    find_lex $P5010, "$?PACKAGE"
    get_who $P5009, $P5010
    set $P5008, $P5009["$EDGE_EPSILON"]
    unless_null $P5008, fallback463
    nqp_get_sc_object $P5011, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5008, $P5011
  fallback463:
    $P5012 = $P5006."addedge"($I5003, $I5004, $P5008, 0)
    set $I5005, $P5012
    set $I101, $I5005
    find_lex $I5007, "$to"
    set $N5001, $I5007
    set $N5002, 0
    islt $I5006, $N5001, $N5002
    set $I5009, $I5006
    unless $I5006 goto if159_end467 
    set $N5003, $I101
    set $N5004, 0
    isgt $I5008, $N5003, $N5004
    set $I5009, $I5008
  if159_end467:
    set $I5010, $I5009
    unless $I5009 goto if158_end465 
    store_lex "$to", $I101
    set $I5010, $I101
  if158_end465:
    .return ($I5010) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_135_1358115315.353") :anon :lex :outer("cuid_18_1358115315.353")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 241
    .lex "$start", $I101 
    .lex "$looper", $I102 
    .lex "$st", $I103 
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
    find_lex $P5008, "$?PACKAGE"
    get_who $P5007, $P5008
    set $P5006, $P5007["$EDGE_EPSILON"]
    unless_null $P5006, fallback468
    nqp_get_sc_object $P5009, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5006, $P5009
  fallback468:
    $P5004."addedge"($I5002, $I101, $P5006, 0)
.annotate 'line', 244
    find_lex $P5011, "self"
    nqp_decontainerize $P5010, $P5011
    $P5012 = $P5010."addstate"()
    set $I5003, $P5012
    set $I102, $I5003
.annotate 'line', 245
    find_lex $P5014, "self"
    nqp_decontainerize $P5013, $P5014
    find_lex $P5016, "$node"
    set $P5015, $P5016[0]
    unless_null $P5015, fallback469
    nqp_get_sc_object $P5017, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5015, $P5017
  fallback469:
    $P5018 = $P5013."regex_nfa"($P5015, $I101, $I102)
    set $I5004, $P5018
    set $I103, $I5004
    find_lex $P5020, "$node"
    set $P5019, $P5020[1]
    unless_null $P5019, fallback472
    nqp_get_sc_object $P5021, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5019, $P5021
  fallback472:
    defined $I5005, $P5019
    unless $I5005 goto if160_else470 
.annotate 'line', 246
.annotate 'line', 247
    find_lex $P5023, "self"
    nqp_decontainerize $P5022, $P5023
    find_lex $P5025, "$node"
    set $P5024, $P5025[1]
    unless_null $P5024, fallback473
    nqp_get_sc_object $P5026, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5024, $P5026
  fallback473:
    $P5027 = $P5022."regex_nfa"($P5024, $I102, $I101)
    goto if160_end471
  if160_else470:
.annotate 'line', 249
.annotate 'line', 250
    find_lex $P5029, "self"
    nqp_decontainerize $P5028, $P5029
    find_lex $P5032, "$?PACKAGE"
    get_who $P5031, $P5032
    set $P5030, $P5031["$EDGE_EPSILON"]
    unless_null $P5030, fallback474
    nqp_get_sc_object $P5033, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5030, $P5033
  fallback474:
    $P5034 = $P5028."addedge"($I102, $I101, $P5030, 0)
  if160_end471:
.annotate 'line', 252
    find_lex $P5036, "self"
    nqp_decontainerize $P5035, $P5036
    find_lex $I5006, "$to"
    find_lex $P5039, "$?PACKAGE"
    get_who $P5038, $P5039
    set $P5037, $P5038["$EDGE_EPSILON"]
    unless_null $P5037, fallback475
    nqp_get_sc_object $P5040, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5037, $P5040
  fallback475:
    $P5035."addedge"($I102, $I5006, $P5037, 0)
    find_lex $I5008, "$to"
    set $N5001, $I5008
    set $N5002, 0
    islt $I5007, $N5001, $N5002
    set $I5010, $I5007
    unless $I5007 goto if162_end479 
    set $N5003, $I103
    set $N5004, 0
    isgt $I5009, $N5003, $N5004
    set $I5010, $I5009
  if162_end479:
    set $I5011, $I5010
    unless $I5010 goto if161_end477 
    store_lex "$to", $I103
    set $I5011, $I103
  if161_end477:
    .return ($I5011) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_136_1358115315.353") :anon :lex :outer("cuid_18_1358115315.353")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 256
    .lex "$st", $I101 
    set $I101, 0
.annotate 'line', 257
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    find_lex $P5004, "$node"
    set $P5003, $P5004[0]
    unless_null $P5003, fallback484
    nqp_get_sc_object $P5005, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5003, $P5005
  fallback484:
    find_lex $I5001, "$from"
    find_lex $I5002, "$to"
    $P5006 = $P5001."regex_nfa"($P5003, $I5001, $I5002)
    set $I5003, $P5006
    set $I101, $I5003
    find_lex $I5005, "$to"
    set $N5001, $I5005
    set $N5002, 0
    islt $I5004, $N5001, $N5002
    set $I5007, $I5004
    unless $I5004 goto if166_end488 
    set $N5003, $I101
    set $N5004, 0
    isgt $I5006, $N5003, $N5004
    set $I5007, $I5006
  if166_end488:
    unless $I5007 goto if165_end486 
    store_lex "$to", $I101
  if165_end486:
.annotate 'line', 259
    find_lex $P5008, "self"
    nqp_decontainerize $P5007, $P5008
    find_lex $I5008, "$from"
    find_lex $I5009, "$to"
    find_lex $P5011, "$?PACKAGE"
    get_who $P5010, $P5011
    set $P5009, $P5010["$EDGE_EPSILON"]
    unless_null $P5009, fallback489
    nqp_get_sc_object $P5012, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5009, $P5012
  fallback489:
    $P5013 = $P5007."addedge"($I5008, $I5009, $P5009, 0)
    set $I5010, $P5013
    set $I101, $I5010
    find_lex $I5012, "$to"
    set $N5005, $I5012
    set $N5006, 0
    islt $I5011, $N5005, $N5006
    set $I5014, $I5011
    unless $I5011 goto if168_end493 
    set $N5007, $I101
    set $N5008, 0
    isgt $I5013, $N5007, $N5008
    set $I5014, $I5013
  if168_end493:
    unless $I5014 goto if167_end491 
    store_lex "$to", $I101
  if167_end491:
    find_lex $I5015, "$to"
    .return ($I5015) 
.end
.HLL "nqp"
.namespace []
.sub "qastnode" :subid("cuid_19_1358115315.353") :anon :lex :outer("cuid_29_1358115315.353")
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
.annotate 'line', 268
    $P5001 = _lex_param_1."subtype"()
    set $S5001, $P5001
    iseq $I5001, $S5001, "zerowidth"
    set $I5003, $I5001
    if $I5001 goto unless170_end497 
    $P5002 = _lex_param_1."subtype"()
    set $S5002, $P5002
    iseq $I5002, $S5002, "declarative"
    set $I5003, $I5002
  unless170_end497:
    unless $I5003 goto if169_else494 
.annotate 'line', 269
    nqp_decontainerize $P5003, _lex_param_0
    find_lex $P5006, "$?PACKAGE"
    get_who $P5005, $P5006
    set $P5004, $P5005["$EDGE_EPSILON"]
    unless_null $P5004, fallback498
    nqp_get_sc_object $P5007, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5004, $P5007
  fallback498:
    $P5008 = $P5003."addedge"(_lex_param_2, _lex_param_3, $P5004, 0)
    set $P5011, $P5008
    goto if169_end495
  if169_else494:
.annotate 'line', 270
    nqp_decontainerize $P5009, _lex_param_0
    $P5010 = $P5009."fate"(_lex_param_1, _lex_param_2, _lex_param_3)
    set $P5011, $P5010
  if169_end495:
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "subcapture" :subid("cuid_20_1358115315.353") :anon :lex :outer("cuid_29_1358115315.353")
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
.annotate 'line', 274
    nqp_decontainerize $P5001, _lex_param_0
    set $P5002, _lex_param_1[0]
    unless_null $P5002, fallback499
    nqp_get_sc_object $P5003, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5002, $P5003
  fallback499:
    $P5004 = $P5001."regex_nfa"($P5002, _lex_param_2, _lex_param_3)
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "save" :subid("cuid_21_1358115315.353") :anon :lex :outer("cuid_29_1358115315.353")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 277
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("non_empty") :optional 
    .param int haz_param_11 :opt_flag 
    if haz_param_11, default507
    nqp_get_sc_object $P5015, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set _lex_param_1, $P5015
  default507:
    .lex "self", _lex_param_0 
    .lex "$non_empty", _lex_param_1 
    root_new $P101, ['parrot';'Continuation']
    set_label $P101, lexotic_500
    .lex "RETURN", $P101
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 3
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!edges"
    if $P5003 goto unless171_end503 
.annotate 'line', 278
    if _lex_param_1 goto unless172_end505 
    find_lex $P5004, "RETURN"
    $P5005 = $P5004(0)
  unless172_end505:
.annotate 'line', 280
    nqp_decontainerize $P5006, _lex_param_0
    find_lex $P5009, "$?PACKAGE"
    get_who $P5008, $P5009
    set $P5007, $P5008["$EDGE_FATE"]
    unless_null $P5007, fallback506
    nqp_get_sc_object $P5010, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5007, $P5010
  fallback506:
    $P5011 = $P5006."addedge"(1, 0, $P5007, 0, 1 :named("newedge"))
  unless171_end503:
    nqp_decontainerize $P5012, _lex_param_0
    nqp_get_sc_object $P5013, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 3
    repr_get_attr_obj $P5014, $P5012, $P5013, "$!states"
    goto lexotic_501
  lexotic_500:
    .get_results ($P5014)
  lexotic_501:
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "mergesubrule" :subid("cuid_22_1358115315.353") :anon :lex :outer("cuid_29_1358115315.353")
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
    .const 'Sub' $P5014 = 'cuid_137_1358115315.353' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_139_1358115315.353' 
    capture_lex $P5014 
    if haz_param_12, default530
    new $P5013, 'Hash'
    set _lex_param_6, $P5013
  default530:
    .lex "%seen", $P101 
    .lex "@substates", $P102 
    .lex "self", _lex_param_0 
    .lex "$start", _lex_param_1 
    .lex "$to", _lex_param_2 
    .lex "$fate", _lex_param_3 
    .lex "$cursor", _lex_param_4 
    .lex "$name", _lex_param_5 
    .lex "%caller_seen", _lex_param_6 
    new $P5001, 'Hash'
    set $P101, $P5001
    new $P5002, 'ResizablePMCArray'
    set $P102, $P5002
    clone $P5003, _lex_param_6
    set $P101, $P5003
    can $I5001, _lex_param_4, _lex_param_5
    unless $I5001 goto if173_end509 
.annotate 'line', 289
    exists $I5003, $P101[_lex_param_5]
    not $I5002, $I5003
    unless $I5002 goto if174_end511 
    .const 'Sub' $P5004 = 'cuid_137_1358115315.353' 
    capture_lex $P5004
    $P5005 = $P5004()
  if174_end511:
    isfalse $I5004, $P102
    set $I5007, $I5004
    unless $I5004 goto if178_end519 
    exists $I5006, $P101[_lex_param_5]
    not $I5005, $I5006
    set $I5007, $I5005
  if178_end519:
    box $P5009, $I5007
    set $P5008, $P5009
    unless $I5007 goto if177_end517 
    .const 'Sub' $P5006 = 'cuid_139_1358115315.353' 
    capture_lex $P5006
    $P5007 = $P5006()
    set $P5008, $P5007
  if177_end517:
  if173_end509:
    box $P5010, 1
    set $P101[_lex_param_5], $P5010
.annotate 'line', 311
    nqp_decontainerize $P5011, _lex_param_0
    $P5012 = $P5011."mergesubstates"(_lex_param_1, _lex_param_2, _lex_param_3, $P102, _lex_param_4, $P101)
    .return ($P5012) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_137_1358115315.353") :anon :lex :outer("cuid_22_1358115315.353")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 290
    .lex "$meth", $P101 
    nqp_get_sc_object $P5001, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P101, $P5001
.annotate 'line', 291
    find_lex $P5003, "$cursor"
    get_how $P5002, $P5003
    find_lex $P5004, "$cursor"
    find_lex $S5001, "$name"
    $P5005 = $P5002."find_method"($P5004, $S5001, 1 :named("no_trace"))
    set $P101, $P5005
    can $I5001, $P101, "NFA"
    unless $I5001 goto if175_end513 
.annotate 'line', 292
    $P5006 = $P101."NFA"()
    store_lex "@substates", $P5006
  if175_end513:
    find_lex $P5007, "@substates"
    isnull $I5002, $P5007
    box $P5010, $I5002
    set $P5009, $P5010
    unless $I5002 goto if176_end515 
    new $P5008, 'ResizablePMCArray'
    store_lex "@substates", $P5008
    set $P5009, $P5008
  if176_end515:
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_139_1358115315.353") :anon :lex :outer("cuid_22_1358115315.353")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 295
    .const 'Sub' $P5025 = 'cuid_138_1358115315.353' 
    capture_lex $P5025 
    .const 'Sub' $P5025 = 'cuid_140_1358115315.353' 
    capture_lex $P5025 
    .lex "%protorx", $P101 
    .lex "$nfa", $P102 
    .lex "$gotmatch", $I101 
    new $P5001, 'Hash'
    set $P101, $P5001
    nqp_get_sc_object $P5002, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P102, $P5002
    set $I101, 0
.annotate 'line', 298
    find_lex $P5004, "$cursor"
    get_how $P5003, $P5004
    find_lex $P5005, "$cursor"
    .const 'Sub' $P5007 = 'cuid_138_1358115315.353' 
    capture_lex $P5007
    newclosure $P5006, $P5007
    $P5008 = $P5003."cache"($P5005, "!protoregex_table", $P5006)
    set $P101, $P5008
.annotate 'line', 299
    nqp_get_sc_object $P5012, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 0
    nqp_get_package_through_who $P5011, $P5012, "QRegex"
    get_who $P5010, $P5011
    set $P5009, $P5010["NFA"]
    unless_null $P5009, fallback520
    nqp_get_sc_object $P5013, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5009, $P5013
  fallback520:
    $P5014 = $P5009."new"()
    set $P102, $P5014
    set $I101, 0
    find_lex $S5001, "$name"
    exists $I5001, $P101[$S5001]
    unless $I5001 goto if179_end522 
.annotate 'line', 301
    find_lex $S5002, "$name"
    set $P5018, $P101[$S5002]
    unless_null $P5018, fallback523
    nqp_get_sc_object $P5019, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5018, $P5019
  fallback523:
    set $P5015, $P5018
    iter $P5017, $P5018
  for_next525:
    unless $P5017, for_done527
    shift $P5021, $P5017
  for_redo526:
    .const 'Sub' $P5020 = 'cuid_140_1358115315.353' 
    capture_lex $P5020
    $P5015 = $P5020($P5021)
    goto for_next525
  for_done527:
  if179_end522:
    box $P5024, $I101
    set $P5023, $P5024
    unless $I101 goto if180_end529 
.annotate 'line', 307
    $P5022 = $P102."states"()
    store_lex "@substates", $P5022
    set $P5023, $P5022
  if180_end529:
    .return ($P5023) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_138_1358115315.353") :anon :lex :outer("cuid_139_1358115315.353")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 298

    find_lex $P5001, "$cursor"
    $P5002 = $P5001."!protoregex_table"()
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_140_1358115315.353") :anon :lex :outer("cuid_139_1358115315.353")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 302
    .param pmc _lex_param_0 
    .lex "$rxname", _lex_param_0 
.annotate 'line', 303
    find_lex $P5001, "$nfa"
    find_lex $P5004, "$?PACKAGE"
    get_who $P5003, $P5004
    set $P5002, $P5003["$EDGE_SUBRULE"]
    unless_null $P5002, fallback524
    nqp_get_sc_object $P5005, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5002, $P5005
  fallback524:
    $P5001."addedge"(1, 0, $P5002, _lex_param_0)
    store_lex "$gotmatch", 1
    .return (1) 
.end
.HLL "nqp"
.namespace []
.sub "mergesubstates" :subid("cuid_23_1358115315.353") :anon :lex :outer("cuid_29_1358115315.353")
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
    .const 'Sub' $P5011 = 'cuid_142_1358115315.353' 
    capture_lex $P5011 
    if haz_param_13, default566
    new $P5010, 'Hash'
    set _lex_param_6, $P5010
  default566:
    .lex "self", _lex_param_0 
    .lex "$start", _lex_param_1 
    .lex "$to", _lex_param_2 
    .lex "$fate", _lex_param_3 
    .lex "@substates", _lex_param_4 
    .lex "$cursor", _lex_param_5 
    .lex "%seen", _lex_param_6 
    unless _lex_param_4 goto if181_else531 
    .const 'Sub' $P5001 = 'cuid_142_1358115315.353' 
    capture_lex $P5001
    $P5002 = $P5001()
    set $P5009, $P5002
    goto if181_end532
  if181_else531:
.annotate 'line', 350
.annotate 'line', 351
    nqp_decontainerize $P5003, _lex_param_0
    find_lex $P5006, "$?PACKAGE"
    get_who $P5005, $P5006
    set $P5004, $P5005["$EDGE_FATE"]
    unless_null $P5004, fallback565
    nqp_get_sc_object $P5007, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5004, $P5007
  fallback565:
    $P5008 = $P5003."addedge"(_lex_param_1, 0, $P5004, _lex_param_3)
    set $P5009, $P5008
  if181_end532:
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_142_1358115315.353") :anon :lex :outer("cuid_23_1358115315.353")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 315
    .const 'Sub' $P5051 = 'cuid_141_1358115315.353' 
    capture_lex $P5051 
    .lex "$substart", $I101 
    .lex "$subend", $I102 
    .lex "$i", $I103 
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
    clone $P5004, $P5005
    store_lex "@substates", $P5004
    find_lex $P5007, "@substates"
    shift $P5006, $P5007
    new $P5017, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5017, while182_handlers536
    push_eh $P5017
  while182_test533:
    find_lex $P5008, "@substates"
    set $P5016, $P5008
    unless $P5008 goto while182_done537 
  while182_redo535:
    find_lex $P5010, "self"
    nqp_decontainerize $P5009, $P5010
    nqp_get_sc_object $P5011, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 3
    repr_get_attr_obj $P5012, $P5009, $P5011, "$!states"
    find_lex $P5015, "@substates"
    shift $P5014, $P5015
    clone $P5013, $P5014
    push $P5012, $P5013
    set $P5016, $P5012
    goto while182_test533 
  while182_handlers536:
    .get_results ($P5017)
    pop_upto_eh $P5017
    getattribute $P5017, $P5017, 'type'
    eq $P5017, .CONTROL_LOOP_NEXT, while182_test533
    eq $P5017, .CONTROL_LOOP_REDO, while182_redo535
  while182_done537:
    pop_eh 
    find_lex $P5019, "self"
    nqp_decontainerize $P5018, $P5019
    nqp_get_sc_object $P5020, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 3
    repr_get_attr_obj $P5021, $P5018, $P5020, "$!states"
    elements $I5002, $P5021
    set $I102, $I5002
    set $I103, $I101
  while183_test538:
    set $N5001, $I103
    set $N5002, $I102
    islt $I5003, $N5001, $N5002
    box $P5025, $I5003
    set $P5024, $P5025
    unless $I5003 goto while183_done542 
  while183_redo540:
    .const 'Sub' $P5022 = 'cuid_141_1358115315.353' 
    capture_lex $P5022
    $P5023 = $P5022()
    set $P5024, $P5023
    goto while183_test538 
  while183_done542:
.annotate 'line', 345
    find_lex $P5027, "self"
    nqp_decontainerize $P5026, $P5027
    find_lex $P5028, "$start"
    set $N5004, $I101
    set $N5005, 1
    add $N5003, $N5004, $N5005
    find_lex $P5031, "$?PACKAGE"
    get_who $P5030, $P5031
    set $P5029, $P5030["$EDGE_EPSILON"]
    unless_null $P5029, fallback560
    nqp_get_sc_object $P5032, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5029, $P5032
  fallback560:
    $P5026."addedge"($P5028, $N5003, $P5029, 0)
    find_lex $P5033, "$to"
    set $N5006, $P5033
    set $N5007, 0
    isgt $I5004, $N5006, $N5007
    unless $I5004 goto if187_else561 
.annotate 'line', 347
    find_lex $P5035, "self"
    nqp_decontainerize $P5034, $P5035
    find_lex $P5036, "$to"
    find_lex $P5039, "$?PACKAGE"
    get_who $P5038, $P5039
    set $P5037, $P5038["$EDGE_EPSILON"]
    unless_null $P5037, fallback563
    nqp_get_sc_object $P5040, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5037, $P5040
  fallback563:
    $P5041 = $P5034."addedge"($I101, $P5036, $P5037, 0)
    set $P5050, $P5041
    goto if187_end562
  if187_else561:
.annotate 'line', 348
    find_lex $P5043, "self"
    nqp_decontainerize $P5042, $P5043
    find_lex $P5046, "$?PACKAGE"
    get_who $P5045, $P5046
    set $P5044, $P5045["$EDGE_FATE"]
    unless_null $P5044, fallback564
    nqp_get_sc_object $P5047, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5044, $P5047
  fallback564:
    find_lex $P5048, "$fate"
    $P5049 = $P5042."addedge"($I101, 0, $P5044, $P5048)
    set $P5050, $P5049
  if187_end562:
    .return ($P5050) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_141_1358115315.353") :anon :lex :outer("cuid_142_1358115315.353")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 331
    .lex "$substate", $P101 
    .lex "$j", $I101 
    .lex "$k", $I102 
    nqp_get_sc_object $P5001, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P101, $P5001
    set $I101, 0
    set $I102, 0
    find_lex $P5004, "self"
    nqp_decontainerize $P5003, $P5004
    nqp_get_sc_object $P5005, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 3
    repr_get_attr_obj $P5006, $P5003, $P5005, "$!states"
    find_lex $I5001, "$i"
    set $P5002, $P5006[$I5001]
    unless_null $P5002, fallback543
    nqp_get_sc_object $P5007, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5002, $P5007
  fallback543:
    set $P101, $P5002
    set $I101, 0
    elements $I5002, $P101
    set $I102, $I5002
  while184_test544:
    set $N5001, $I101
    set $N5002, $I102
    islt $I5003, $N5001, $N5002
    set $I5014, $I5003
    unless $I5003 goto while184_done548 
  while184_redo546:
.annotate 'line', 335
    set $N5004, $I101
    set $N5005, 2
    add $N5003, $N5004, $N5005
    set $I5004, $N5003
    set $N5008, $I101
    set $N5009, 2
    add $N5007, $N5008, $N5009
    set $I5005, $N5007
    set $P5008, $P101[$I5005]
    unless_null $P5008, fallback549
    nqp_get_sc_object $P5009, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5008, $P5009
  fallback549:
    set $N5010, $P5008
    find_lex $I5006, "$substart"
    set $N5011, $I5006
    add $N5006, $N5010, $N5011
    box $P5010, $N5006
    set $P101[$I5004], $P5010
    set $P5011, $P101[$I101]
    unless_null $P5011, fallback552
    nqp_get_sc_object $P5012, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5011, $P5012
  fallback552:
    set $N5012, $P5011
    find_lex $P5015, "$?PACKAGE"
    get_who $P5014, $P5015
    set $P5013, $P5014["$EDGE_FATE"]
    unless_null $P5013, fallback553
    nqp_get_sc_object $P5016, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5013, $P5016
  fallback553:
    set $N5013, $P5013
    iseq $I5007, $N5012, $N5013
    unless $I5007 goto if185_end551 
    set $N5015, $I101
    set $N5016, 1
    add $N5014, $N5015, $N5016
    set $I5008, $N5014
    find_lex $P5017, "$fate"
    set $P101[$I5008], $P5017
  if185_end551:
    set $P5018, $P101[$I101]
    unless_null $P5018, fallback556
    nqp_get_sc_object $P5019, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5018, $P5019
  fallback556:
    set $N5017, $P5018
    find_lex $P5022, "$?PACKAGE"
    get_who $P5021, $P5022
    set $P5020, $P5021["$EDGE_SUBRULE"]
    unless_null $P5020, fallback557
    nqp_get_sc_object $P5023, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5020, $P5023
  fallback557:
    set $N5018, $P5020
    iseq $I5009, $N5017, $N5018
    unless $I5009 goto if186_end555 
.annotate 'line', 339
    find_lex $P5025, "self"
    nqp_decontainerize $P5024, $P5025
    find_lex $I5010, "$i"
    set $N5020, $I101
    set $N5021, 2
    add $N5019, $N5020, $N5021
    set $I5011, $N5019
    set $P5026, $P101[$I5011]
    unless_null $P5026, fallback558
    nqp_get_sc_object $P5027, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5026, $P5027
  fallback558:
    find_lex $P5028, "$fate"
    find_lex $P5029, "$cursor"
    set $N5023, $I101
    set $N5024, 1
    add $N5022, $N5023, $N5024
    set $I5012, $N5022
    set $P5030, $P101[$I5012]
    unless_null $P5030, fallback559
    nqp_get_sc_object $P5031, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5030, $P5031
  fallback559:
    find_lex $P5032, "%seen"
    $P5033 = $P5024."mergesubrule"($I5010, $P5026, $P5028, $P5029, $P5030, $P5032)
  if186_end555:
    set $N5026, $I101
    set $N5027, 3
    add $N5025, $N5026, $N5027
    set $I5013, $N5025
    set $I101, $I5013
    set $I5014, $I101
    goto while184_test544 
  while184_done548:
    find_lex $I5015, "$i"
    set $N5029, $I5015
    set $N5030, 1
    add $N5028, $N5029, $N5030
    set $I5016, $N5028
    store_lex "$i", $I5016
    .return ($I5016) 
.end
.HLL "nqp"
.namespace []
.sub "run" :subid("cuid_24_1358115315.353") :anon :lex :outer("cuid_29_1358115315.353")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 355
    .param pmc _lex_param_0 
    .param string _lex_param_1 
    .param int _lex_param_2 
    .lex "self", _lex_param_0 
    .lex "$target", _lex_param_1 
    .lex "$offset", _lex_param_2 
    nqp_decontainerize $P5002, _lex_param_0
    nqp_get_sc_object $P5003, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 3
    repr_get_attr_obj $P5004, $P5002, $P5003, "$!states"
    set $S5001, _lex_param_1
    set $I5001, _lex_param_2
    nqp_nfa_run_protoregex $P5001, $P5004, $S5001, $I5001
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "run_alt" :subid("cuid_25_1358115315.353") :anon :lex :outer("cuid_29_1358115315.353")
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
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 3
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!states"
    set $S5001, _lex_param_1
    set $I5001, _lex_param_2
    nqp_nfa_run_alternation $P5003, $S5001, $I5001, _lex_param_3, _lex_param_4, _lex_param_5
    .return () 
.end
.HLL "nqp"
.namespace []
.sub "generic" :subid("cuid_26_1358115315.353") :anon :lex :outer("cuid_29_1358115315.353")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 409
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 3
    repr_get_attr_int $I5001, $P5001, $P5002, "$!generic"
    .return ($I5001) 
.end
.HLL "nqp"
.namespace []
.sub "instantiate_generic" :subid("cuid_27_1358115315.353") :anon :lex :outer("cuid_29_1358115315.353")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 413
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5031 = 'cuid_143_1358115315.353' 
    capture_lex $P5031 
    .const 'Sub' $P5031 = 'cuid_145_1358115315.353' 
    capture_lex $P5031 
    .lex "$copy", $P101 
    .lex "@copied_states", $P102 
    .lex "$from", $I101 
    .lex "self", _lex_param_0 
    .lex "$env", _lex_param_1 
    nqp_get_sc_object $P5001, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P101, $P5001
    new $P5002, 'ResizablePMCArray'
    set $P102, $P5002
    set $I101, 0
    nqp_decontainerize $P5004, _lex_param_0
    repr_instance_of $P5003, $P5004
    set $P101, $P5003
    nqp_decontainerize $P5008, _lex_param_0
    nqp_get_sc_object $P5009, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 3
    repr_get_attr_obj $P5010, $P5008, $P5009, "$!states"
    set $P5005, $P5010
    iter $P5007, $P5010
  for_next567:
    unless $P5007, for_done569
    shift $P5012, $P5007
  for_redo568:
    .const 'Sub' $P5011 = 'cuid_143_1358115315.353' 
    capture_lex $P5011
    $P5005 = $P5011($P5012)
    goto for_next567
  for_done569:
    nqp_get_sc_object $P5016, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 0
    nqp_get_package_through_who $P5015, $P5016, "QRegex"
    get_who $P5014, $P5015
    set $P5013, $P5014["NFA"]
    unless_null $P5013, fallback570
    nqp_get_sc_object $P5017, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5013, $P5017
  fallback570:
    setattribute $P101, $P5013, "$!states", $P102
    nqp_get_sc_object $P5021, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 0
    nqp_get_package_through_who $P5020, $P5021, "QRegex"
    get_who $P5019, $P5020
    set $P5018, $P5019["NFA"]
    unless_null $P5018, fallback571
    nqp_get_sc_object $P5022, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5018, $P5022
  fallback571:
    nqp_decontainerize $P5023, _lex_param_0
    nqp_get_sc_object $P5024, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 3
    repr_get_attr_obj $P5025, $P5023, $P5024, "$!edges"
    setattribute $P101, $P5018, "$!edges", $P5025
    set $I101, 0
    set $P5026, $P102
    iter $P5028, $P102
  for_next588:
    unless $P5028, for_done590
    shift $P5030, $P5028
  for_redo589:
    .const 'Sub' $P5029 = 'cuid_145_1358115315.353' 
    capture_lex $P5029
    $P5026 = $P5029($P5030)
    goto for_next588
  for_done590:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_143_1358115315.353") :anon :lex :outer("cuid_27_1358115315.353")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 417
    .param pmc _lex_param_0 
    .lex "@values", _lex_param_0 
    find_lex $P5001, "@copied_states"
    clone $P5002, _lex_param_0
    push $P5001, $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_145_1358115315.353") :anon :lex :outer("cuid_27_1358115315.353")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 426
    .param pmc _lex_param_0 
    .const 'Sub' $P5006 = 'cuid_144_1358115315.353' 
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
  while188_test572:
    set $N5001, $I101
    set $N5002, $I102
    islt $I5002, $N5001, $N5002
    box $P5005, $I5002
    set $P5004, $P5005
    unless $I5002 goto while188_done576 
  while188_redo574:
    .const 'Sub' $P5002 = 'cuid_144_1358115315.353' 
    capture_lex $P5002
    $P5003 = $P5002()
    set $P5004, $P5003
    goto while188_test572 
  while188_done576:
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
.sub "" :subid("cuid_144_1358115315.353") :anon :lex :outer("cuid_145_1358115315.353")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 430
    .lex "$act", $P101 
    .lex "$arg", $P102 
    .lex "$to", $P103 
    nqp_get_sc_object $P5001, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P101, $P5001
    nqp_get_sc_object $P5002, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P102, $P5002
    nqp_get_sc_object $P5003, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P103, $P5003
    find_lex $P5005, "@values"
    find_lex $I5001, "$i"
    set $P5004, $P5005[$I5001]
    unless_null $P5004, fallback577
    nqp_get_sc_object $P5006, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5004, $P5006
  fallback577:
    set $P101, $P5004
    find_lex $P5008, "@values"
    find_lex $I5002, "$i"
    set $N5002, $I5002
    set $N5003, 1
    add $N5001, $N5002, $N5003
    set $I5003, $N5001
    set $P5007, $P5008[$I5003]
    unless_null $P5007, fallback578
    nqp_get_sc_object $P5009, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5007, $P5009
  fallback578:
    set $P102, $P5007
    find_lex $P5011, "@values"
    find_lex $I5004, "$i"
    set $N5005, $I5004
    set $N5006, 2
    add $N5004, $N5005, $N5006
    set $I5005, $N5004
    set $P5010, $P5011[$I5005]
    unless_null $P5010, fallback579
    nqp_get_sc_object $P5012, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5010, $P5012
  fallback579:
    set $P103, $P5010
    set $N5007, $P101
    find_lex $P5015, "$?PACKAGE"
    get_who $P5014, $P5015
    set $P5013, $P5014["$EDGE_GENERIC_VAR"]
    unless_null $P5013, fallback582
    nqp_get_sc_object $P5016, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5013, $P5016
  fallback582:
    set $N5008, $P5013
    iseq $I5006, $N5007, $N5008
    unless $I5006 goto if189_end581 
.annotate 'line', 434
    find_lex $P5017, "$env"
    set $S5001, $P102
    exists $I5007, $P5017[$S5001]
    unless $I5007 goto if190_else583 
.annotate 'line', 435
.annotate 'line', 436
    find_lex $P5018, "$copy"
.annotate 'line', 437
    nqp_get_sc_object $P5022, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 0
    nqp_get_package_through_who $P5021, $P5022, "QAST"
    get_who $P5020, $P5021
    set $P5019, $P5020["Regex"]
    unless_null $P5019, fallback585
    nqp_get_sc_object $P5023, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5019, $P5023
  fallback585:
    find_lex $P5025, "$env"
    set $S5002, $P102
    set $P5024, $P5025[$S5002]
    $P5026 = $P5019."new"($P5024, "literal" :named("rxtype"))
    find_lex $I5008, "$from"
    $P5018."literal"($P5026, $I5008, $P103)
    find_lex $P5027, "@values"
    find_lex $I5009, "$i"
    find_lex $P5030, "$?PACKAGE"
    get_who $P5029, $P5030
    set $P5028, $P5029["$EDGE_EPSILON"]
    unless_null $P5028, fallback586
    nqp_get_sc_object $P5031, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5028, $P5031
  fallback586:
    set $P5027[$I5009], $P5028
    find_lex $P5032, "@values"
    find_lex $I5010, "$i"
    set $N5010, $I5010
    set $N5011, 1
    add $N5009, $N5010, $N5011
    set $I5011, $N5009
    box $P5033, 0
    set $P5032[$I5011], $P5033
    find_lex $P5034, "@values"
    find_lex $I5012, "$i"
    set $N5013, $I5012
    set $N5014, 2
    add $N5012, $N5013, $N5014
    set $I5013, $N5012
    box $P5035, 0
    set $P5034[$I5013], $P5035
    set $P5045, $P5035
    goto if190_end584
  if190_else583:
.annotate 'line', 443
    find_lex $P5036, "@values"
    find_lex $I5014, "$i"
    find_lex $P5039, "$?PACKAGE"
    get_who $P5038, $P5039
    set $P5037, $P5038["$EDGE_FATE"]
    unless_null $P5037, fallback587
    nqp_get_sc_object $P5040, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5037, $P5040
  fallback587:
    set $P5036[$I5014], $P5037
    find_lex $P5041, "@values"
    find_lex $I5015, "$i"
    set $N5016, $I5015
    set $N5017, 1
    add $N5015, $N5016, $N5017
    set $I5016, $N5015
    box $P5042, 0
    set $P5041[$I5016], $P5042
    find_lex $P5043, "@values"
    find_lex $I5017, "$i"
    set $N5019, $I5017
    set $N5020, 2
    add $N5018, $N5019, $N5020
    set $I5018, $N5018
    box $P5044, 0
    set $P5043[$I5018], $P5044
    set $P5045, $P5044
  if190_end584:
  if189_end581:
    find_lex $I5019, "$i"
    set $N5022, $I5019
    set $N5023, 3
    add $N5021, $N5022, $N5023
    set $I5020, $N5021
    store_lex "$i", $I5020
    .return ($I5020) 
.end
.HLL "nqp"
.namespace []
.sub "__dump" :subid("cuid_28_1358115315.353") :anon :lex :outer("cuid_29_1358115315.353")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 457
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .const 'Sub' $P5015 = 'cuid_146_1358115315.353' 
    capture_lex $P5015 
    .lex "$subindent", $P101 
    .lex "$st", $P102 
    .lex "self", _lex_param_0 
    .lex "$dumper", _lex_param_1 
    .lex "$label", _lex_param_2 
    nqp_get_sc_object $P5001, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P101, $P5001
    nqp_get_sc_object $P5002, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P102, $P5002
.annotate 'line', 458
    $P5003 = _lex_param_1."newIndent"()
    set $P101, $P5003
.annotate 'line', 459
    "&print"("[")
    box $P5004, 0
    set $P102, $P5004
    nqp_decontainerize $P5008, _lex_param_0
    nqp_get_sc_object $P5009, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 3
    repr_get_attr_obj $P5010, $P5008, $P5009, "$!states"
    set $P5005, $P5010
    iter $P5007, $P5010
  for_next591:
    unless $P5007, for_done593
    shift $P5012, $P5007
  for_redo592:
    .const 'Sub' $P5011 = 'cuid_146_1358115315.353' 
    capture_lex $P5011
    $P5005 = $P5011($P5012)
    goto for_next591
  for_done593:
.annotate 'line', 465
    _lex_param_1."deleteIndent"()
.annotate 'line', 466
    $P5013 = _lex_param_1."indent"()
    $P5014 = "&print"("\n", $P5013, "]")
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_146_1358115315.353") :anon :lex :outer("cuid_28_1358115315.353")
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
.sub "" :subid("cuid_30_1358115315.353") :anon :lex :outer("cuid_1_1358115315.353")
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
.sub "" :subid("cuid_81_1358115315.353") :anon :lex :outer("cuid_1_1358115315.353")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 483
    .param pmc _lex_param_0 
    .const 'Sub' $P5058 = 'cuid_31_1358115315.353' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_32_1358115315.353' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_33_1358115315.353' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_34_1358115315.353' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_35_1358115315.353' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_36_1358115315.353' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_37_1358115315.353' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_38_1358115315.353' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_39_1358115315.353' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_40_1358115315.353' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_41_1358115315.353' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_42_1358115315.353' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_43_1358115315.353' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_44_1358115315.353' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_45_1358115315.353' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_46_1358115315.353' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_47_1358115315.353' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_48_1358115315.353' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_49_1358115315.353' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_50_1358115315.353' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_51_1358115315.353' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_52_1358115315.353' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_53_1358115315.353' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_54_1358115315.353' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_55_1358115315.353' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_56_1358115315.353' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_57_1358115315.353' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_58_1358115315.353' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_59_1358115315.353' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_60_1358115315.353' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_61_1358115315.353' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_62_1358115315.353' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_63_1358115315.353' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_64_1358115315.353' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_65_1358115315.353' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_66_1358115315.353' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_67_1358115315.353' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_68_1358115315.353' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_69_1358115315.353' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_70_1358115315.353' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_71_1358115315.353' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_72_1358115315.353' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_73_1358115315.353' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_74_1358115315.353' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_75_1358115315.353' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_76_1358115315.353' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_77_1358115315.353' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_78_1358115315.353' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_79_1358115315.353' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_80_1358115315.353' 
    capture_lex $P5058 
    .lex "$?PACKAGE", $P101 
    .lex "$?ROLE", $P102 
    .lex "$NO_CAPS", $P103 
    .lex "$pass_mark", $P104 
    .lex "@EMPTY", $P105 
    .lex "$?CLASS", _lex_param_0 
    nqp_get_sc_object $P5001, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P103, $P5001
    nqp_get_sc_object $P5002, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P104, $P5002
    new $P5003, 'ResizablePMCArray'
    set $P105, $P5003
    .const 'Sub' $P5004 = 'cuid_31_1358115315.353' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_32_1358115315.353' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_33_1358115315.353' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_34_1358115315.353' 
    capture_lex $P5007
    new $P5008, 'Hash'
    set $P103, $P5008
    .const 'Sub' $P5009 = 'cuid_35_1358115315.353' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_36_1358115315.353' 
    capture_lex $P5010
    .const 'Sub' $P5011 = 'cuid_37_1358115315.353' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_38_1358115315.353' 
    capture_lex $P5012
    .const 'Sub' $P5013 = 'cuid_39_1358115315.353' 
    capture_lex $P5013
    .const 'Sub' $P5014 = 'cuid_40_1358115315.353' 
    capture_lex $P5014
    box $P5015, 1
    set $P104, $P5015
    .const 'Sub' $P5016 = 'cuid_41_1358115315.353' 
    capture_lex $P5016
    .const 'Sub' $P5017 = 'cuid_42_1358115315.353' 
    capture_lex $P5017
    .const 'Sub' $P5018 = 'cuid_43_1358115315.353' 
    capture_lex $P5018
    .const 'Sub' $P5019 = 'cuid_44_1358115315.353' 
    capture_lex $P5019
    .const 'Sub' $P5020 = 'cuid_45_1358115315.353' 
    capture_lex $P5020
    .const 'Sub' $P5021 = 'cuid_46_1358115315.353' 
    capture_lex $P5021
    .const 'Sub' $P5022 = 'cuid_47_1358115315.353' 
    capture_lex $P5022
    .const 'Sub' $P5023 = 'cuid_48_1358115315.353' 
    capture_lex $P5023
    new $P5024, 'ResizablePMCArray'
    set $P105, $P5024
    .const 'Sub' $P5025 = 'cuid_49_1358115315.353' 
    capture_lex $P5025
    .const 'Sub' $P5026 = 'cuid_50_1358115315.353' 
    capture_lex $P5026
    .const 'Sub' $P5027 = 'cuid_51_1358115315.353' 
    capture_lex $P5027
    .const 'Sub' $P5028 = 'cuid_52_1358115315.353' 
    capture_lex $P5028
    .const 'Sub' $P5029 = 'cuid_53_1358115315.353' 
    capture_lex $P5029
    .const 'Sub' $P5030 = 'cuid_54_1358115315.353' 
    capture_lex $P5030
    .const 'Sub' $P5031 = 'cuid_55_1358115315.353' 
    capture_lex $P5031
    .const 'Sub' $P5032 = 'cuid_56_1358115315.353' 
    capture_lex $P5032
    .const 'Sub' $P5033 = 'cuid_57_1358115315.353' 
    capture_lex $P5033
    .const 'Sub' $P5034 = 'cuid_58_1358115315.353' 
    capture_lex $P5034
    .const 'Sub' $P5035 = 'cuid_59_1358115315.353' 
    capture_lex $P5035
    .const 'Sub' $P5036 = 'cuid_60_1358115315.353' 
    capture_lex $P5036
    .const 'Sub' $P5037 = 'cuid_61_1358115315.353' 
    capture_lex $P5037
    .const 'Sub' $P5038 = 'cuid_62_1358115315.353' 
    capture_lex $P5038
    .const 'Sub' $P5039 = 'cuid_63_1358115315.353' 
    capture_lex $P5039
    .const 'Sub' $P5040 = 'cuid_64_1358115315.353' 
    capture_lex $P5040
    .const 'Sub' $P5041 = 'cuid_65_1358115315.353' 
    capture_lex $P5041
    .const 'Sub' $P5042 = 'cuid_66_1358115315.353' 
    capture_lex $P5042
    .const 'Sub' $P5043 = 'cuid_67_1358115315.353' 
    capture_lex $P5043
    .const 'Sub' $P5044 = 'cuid_68_1358115315.353' 
    capture_lex $P5044
    .const 'Sub' $P5045 = 'cuid_69_1358115315.353' 
    capture_lex $P5045
    .const 'Sub' $P5046 = 'cuid_70_1358115315.353' 
    capture_lex $P5046
    .const 'Sub' $P5047 = 'cuid_71_1358115315.353' 
    capture_lex $P5047
    .const 'Sub' $P5048 = 'cuid_72_1358115315.353' 
    capture_lex $P5048
    .const 'Sub' $P5049 = 'cuid_73_1358115315.353' 
    capture_lex $P5049
    .const 'Sub' $P5050 = 'cuid_74_1358115315.353' 
    capture_lex $P5050
    .const 'Sub' $P5051 = 'cuid_75_1358115315.353' 
    capture_lex $P5051
    .const 'Sub' $P5052 = 'cuid_76_1358115315.353' 
    capture_lex $P5052
    .const 'Sub' $P5053 = 'cuid_77_1358115315.353' 
    capture_lex $P5053
    .const 'Sub' $P5054 = 'cuid_78_1358115315.353' 
    capture_lex $P5054
    .const 'Sub' $P5055 = 'cuid_79_1358115315.353' 
    capture_lex $P5055
    .const 'Sub' $P5056 = 'cuid_80_1358115315.353' 
    capture_lex $P5056
    getinterp $P5057
    set $P5057, $P5057['lexpad']
    .return ($P5057) 
.end
.HLL "nqp"
.namespace []
.sub "orig" :subid("cuid_31_1358115315.353") :anon :lex :outer("cuid_81_1358115315.353")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 494
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5002, _lex_param_0
    find_lex $P5003, "$?CLASS"
    repr_get_attr_obj $P5004, $P5002, $P5003, "$!shared"
    nqp_get_sc_object $P5005, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 31
    getattribute $P5001, $P5004, $P5005, "$!orig"
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "target" :subid("cuid_32_1358115315.353") :anon :lex :outer("cuid_81_1358115315.353")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 495
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    find_lex $P5002, "$?CLASS"
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!shared"
    nqp_get_sc_object $P5004, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 31
    repr_get_attr_str $S5001, $P5003, $P5004, "$!target"
    .return ($S5001) 
.end
.HLL "nqp"
.namespace []
.sub "from" :subid("cuid_33_1358115315.353") :anon :lex :outer("cuid_81_1358115315.353")
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
.sub "pos" :subid("cuid_34_1358115315.353") :anon :lex :outer("cuid_81_1358115315.353")
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
.sub "CAPHASH" :subid("cuid_35_1358115315.353") :anon :lex :outer("cuid_81_1358115315.353")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 500
    .param pmc _lex_param_0 
    .const 'Sub' $P5064 = 'cuid_101_1358115315.353' 
    capture_lex $P5064 
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
    .local pmc tmp_5 
    nqp_get_sc_object $P5001, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P101, $P5001
    new $P5002, 'Hash'
    set $P102, $P5002
    nqp_get_sc_object $P5003, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P103, $P5003
    set $S101, ""
    nqp_get_sc_object $P5004, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P104, $P5004
    set $I101, 0
    set $I102, 0
    nqp_get_sc_object $P5005, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P105, $P5005
    nqp_get_sc_object $P5006, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P106, $P5006
    nqp_get_sc_object $P5007, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
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
    unless $I5001 goto if192_end597 
    nqp_decontainerize $P5013, _lex_param_0
    find_lex $P5014, "$?CLASS"
    repr_get_attr_obj $P5015, $P5013, $P5014, "$!regexsub"
    defined $I5003, $P5015
    set $I5004, $I5003
  if192_end597:
    unless $I5004 goto if191_end595 
.annotate 'line', 512
    nqp_decontainerize $P5016, _lex_param_0
    find_lex $P5017, "$?CLASS"
    repr_get_attr_obj $P5018, $P5016, $P5017, "$!regexsub"
    can $I5005, $P5018, "CAPS"
    unless $I5005 goto if193_else598 
.annotate 'line', 513
    nqp_decontainerize $P5019, _lex_param_0
    find_lex $P5020, "$?CLASS"
    repr_get_attr_obj $P5021, $P5019, $P5020, "$!regexsub"
    $P5022 = $P5021."CAPS"()
    set $P5024, $P5022
    goto if193_end599
  if193_else598:
    null $P5023
    set $P5024, $P5023
  if193_end599:
    set $P102, $P5024
    isnull $I5007, $P102
    not $I5006, $I5007
    box $P5026, $I5006
    set $P5025, $P5026
    unless $I5006 goto if195_end603 
    set $P5025, $P102
  if195_end603:
    set $P5034, $P5025
    unless $P5025 goto if194_end601 
.annotate 'line', 514
    iter $P5027, $P102
    set $P103, $P5027
  while196_test604:
    set $P5033, $P103
    unless $P103 goto while196_done608 
  while196_redo606:
.annotate 'line', 516
    shift $S5001, $P103
    set $S101, $S5001
    set $P5028, $P102[$S101]
    unless_null $P5028, fallback611
    nqp_get_sc_object $P5029, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5028, $P5029
  fallback611:
    set $N5001, $P5028
    set $N5002, 2
    isge $I5008, $N5001, $N5002
    box $P5032, $I5008
    set $P5031, $P5032
    unless $I5008 goto if197_end610 
    new $P5030, 'ResizablePMCArray'
    set $P101[$S101], $P5030
    set $P5031, $P5030
  if197_end610:
    set $P5033, $P5031
    goto while196_test604 
  while196_done608:
    set $P5034, $P5033
  if194_end601:
  if191_end595:
    nqp_decontainerize $P5035, _lex_param_0
    find_lex $P5036, "$?CLASS"
    repr_get_attr_obj $P5037, $P5035, $P5036, "$!cstack"
    isnull $I5010, $P5037
    not $I5009, $I5010
    box $P5042, $I5009
    set $P5041, $P5042
    unless $I5009 goto if199_end615 
    nqp_decontainerize $P5038, _lex_param_0
    find_lex $P5039, "$?CLASS"
    repr_get_attr_obj $P5040, $P5038, $P5039, "$!cstack"
    set $P5041, $P5040
  if199_end615:
    unless $P5041 goto if198_end613 
.annotate 'line', 522
    nqp_decontainerize $P5043, _lex_param_0
    find_lex $P5044, "$?CLASS"
    repr_get_attr_obj $P5045, $P5043, $P5044, "$!cstack"
    set $P104, $P5045
    elements $I5011, $P104
    set $I102, $I5011
  while200_test616:
    set $N5003, $I101
    set $N5004, $I102
    islt $I5012, $N5003, $N5004
    box $P5063, $I5012
    set $P5062, $P5063
    unless $I5012 goto while200_done620 
  while200_redo618:
.annotate 'line', 525
    set $P5046, $P104[$I101]
    set $P105, $P5046
.annotate 'line', 527
    $P5047 = $P105."MATCH"()
    set $P106, $P5047
    find_lex $P5049, "$?CLASS"
    getattribute $P5048, $P105, $P5049, "$!name"
    set $P107, $P5048
    isnull $I5014, $P107
    not $I5013, $I5014
    set $I5016, $I5013
    unless $I5013 goto if202_end624 
    defined $I5015, $P107
    set $I5016, $I5015
  if202_end624:
    unless $I5016 goto if201_end622 
.annotate 'line', 529
    set $S5002, $P107
    index $I5018, $S5002, "=", 0
    set $N5005, $I5018
    set $N5006, 0
    islt $I5017, $N5005, $N5006
    unless $I5017 goto if203_else625 
.annotate 'line', 530
    set $S5003, $P107
    set $P5050, $P102[$S5003]
    unless_null $P5050, fallback629
    nqp_get_sc_object $P5051, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5050, $P5051
  fallback629:
    set $N5007, $P5050
    set $N5008, 2
    isge $I5019, $N5007, $N5008
    unless $I5019 goto if204_else627 
    set $S5004, $P107
    set $P5052, $P101[$S5004]
    unless_null $P5052, fallback630
    nqp_get_sc_object $P5053, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5052, $P5053
  fallback630:
    push $P5052, $P106
    set $P5054, $P5052
    goto if204_end628
  if204_else627:
    set $S5005, $P107
    set $P101[$S5005], $P106
    set $P5054, $P106
  if204_end628:
    set $P5061, $P5054
    goto if203_end626
  if203_else625:
.annotate 'line', 535
    set $S5006, $P107
    split $P5058, "=", $S5006
    set $P5055, $P5058
    iter $P5057, $P5058
  for_next635:
    unless $P5057, for_done637
    shift $P5060, $P5057
  for_redo636:
    .const 'Sub' $P5059 = 'cuid_101_1358115315.353' 
    capture_lex $P5059
    $P5055 = $P5059($P5060)
    goto for_next635
  for_done637:
    set $P5061, $P5055
  if203_end626:
  if201_end622:
    box $P5062, $I101
    set tmp_5, $P5062
    set $N5010, tmp_5
    set $N5011, 1
    add $N5009, $N5010, $N5011
    set $I5020, $N5009
    set $I101, $I5020
    set $P5062, tmp_5
    goto while200_test616 
  while200_done620:
  if198_end613:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_101_1358115315.353") :anon :lex :outer("cuid_35_1358115315.353")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 536
    .param pmc _lex_param_0 
    .lex "$name", _lex_param_0 
    find_lex $P5002, "%caplist"
    set $S5001, _lex_param_0
    set $P5001, $P5002[$S5001]
    unless_null $P5001, fallback633
    nqp_get_sc_object $P5003, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5001, $P5003
  fallback633:
    set $N5001, $P5001
    set $N5002, 2
    isge $I5001, $N5001, $N5002
    unless $I5001 goto if205_else631 
    find_lex $P5005, "$caps"
    set $S5002, _lex_param_0
    set $P5004, $P5005[$S5002]
    unless_null $P5004, fallback634
    nqp_get_sc_object $P5006, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5004, $P5006
  fallback634:
    find_lex $P5007, "$submatch"
    push $P5004, $P5007
    set $P5010, $P5004
    goto if205_end632
  if205_else631:
    find_lex $P5008, "$caps"
    set $S5003, _lex_param_0
    find_lex $P5009, "$submatch"
    set $P5008[$S5003], $P5009
    set $P5010, $P5009
  if205_end632:
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "!cursor_init" :subid("cuid_36_1358115315.353") :anon :lex :outer("cuid_81_1358115315.353")
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
    if haz_param_14, default642
    box $P5016, 0
    set _lex_param_2, $P5016
  default642:
    if haz_param_15, default643
    nqp_get_sc_object $P5017, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set _lex_param_3, $P5017
  default643:
    if haz_param_16, default644
    nqp_get_sc_object $P5018, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set _lex_param_4, $P5018
  default644:
    .lex "$new", $P101 
    .lex "self", _lex_param_0 
    .lex "$orig", _lex_param_1 
    .lex "$p", _lex_param_2 
    .lex "$c", _lex_param_3 
    .lex "$shared", _lex_param_4 
    nqp_get_sc_object $P5001, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P101, $P5001
.annotate 'line', 550
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."CREATE"()
    set $P101, $P5003
    if _lex_param_4 goto unless206_end639 
.annotate 'line', 551
    nqp_get_sc_object $P5005, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 31
    repr_instance_of $P5004, $P5005
    set _lex_param_4, $P5004
    nqp_get_sc_object $P5006, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 31
    setattribute _lex_param_4, $P5006, "$!orig", _lex_param_1
    nqp_get_sc_object $P5007, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 31
    set $S5002, _lex_param_1
    find_encoding $I5001, "ucs4"
    trans_encoding $S5001, $S5002, $I5001
    repr_bind_attr_str _lex_param_4, $P5007, "$!target", $S5001
    nqp_get_sc_object $P5008, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 31
    repr_bind_attr_int _lex_param_4, $P5008, "$!highwater", 0
    nqp_get_sc_object $P5009, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 31
    new $P5010, 'ResizablePMCArray'
    setattribute _lex_param_4, $P5009, "@!highexpect", $P5010
  unless206_end639:
    find_lex $P5011, "$?CLASS"
    setattribute $P101, $P5011, "$!shared", _lex_param_4
    defined $I5002, _lex_param_3
    unless $I5002 goto if207_else640 
.annotate 'line', 560
    find_lex $P5012, "$?CLASS"
    repr_bind_attr_int $P101, $P5012, "$!from", -1
    find_lex $P5013, "$?CLASS"
    set $I5003, _lex_param_3
    repr_bind_attr_int $P101, $P5013, "$!pos", $I5003
    goto if207_end641
  if207_else640:
.annotate 'line', 564
    find_lex $P5014, "$?CLASS"
    set $I5004, _lex_param_2
    repr_bind_attr_int $P101, $P5014, "$!from", $I5004
    find_lex $P5015, "$?CLASS"
    set $I5005, _lex_param_2
    repr_bind_attr_int $P101, $P5015, "$!pos", $I5005
  if207_end641:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "!cursor_start" :subid("cuid_37_1358115315.353") :anon :lex :outer("cuid_81_1358115315.353")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 571
    .param pmc _lex_param_0 
    .lex "$new", $P101 
    .lex "$sub", $P102 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P101, $P5001
    nqp_get_sc_object $P5002, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
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
    unless_null $P5011, vivi_208645
    set $P5011, $P102
  vivi_208645:
    setattribute $P101, $P5010, "$!regexsub", $P5011
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_obj $P5014, $P5012, $P5013, "$!restart"
    defined $I5001, $P5014
    unless $I5001 goto if209_end647 
.annotate 'line', 576
    find_lex $P5015, "$?CLASS"
    nqp_decontainerize $P5016, _lex_param_0
    find_lex $P5017, "$?CLASS"
    repr_get_attr_int $I5002, $P5016, $P5017, "$!pos"
    repr_bind_attr_int $P101, $P5015, "$!pos", $I5002
    nqp_decontainerize $P5018, _lex_param_0
    find_lex $P5019, "$?CLASS"
    repr_get_attr_obj $P5020, $P5018, $P5019, "$!cstack"
    unless $P5020 goto if210_end649 
    find_lex $P5021, "$?CLASS"
    nqp_decontainerize $P5023, _lex_param_0
    find_lex $P5024, "$?CLASS"
    repr_get_attr_obj $P5025, $P5023, $P5024, "$!cstack"
    clone $P5022, $P5025
    setattribute $P101, $P5021, "$!cstack", $P5022
  if210_end649:
    nqp_decontainerize $P5026, _lex_param_0
    find_lex $P5027, "$?CLASS"
    repr_get_attr_obj $P5028, $P5026, $P5027, "$!shared"
    nqp_get_sc_object $P5029, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 31
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
    clone $P5035, $P5038
    setattribute $P101, $P5034, "$!bstack", $P5035
    .return ($P101, $S5001, $I5003, $P5033, $P5035, 1)
  if209_end647:
    find_lex $P5039, "$?CLASS"
    repr_bind_attr_int $P101, $P5039, "$!pos", -3
    nqp_decontainerize $P5040, _lex_param_0
    find_lex $P5041, "$?CLASS"
    repr_get_attr_obj $P5042, $P5040, $P5041, "$!shared"
    nqp_get_sc_object $P5043, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 31
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
.sub "!cursor_start_subcapture" :subid("cuid_38_1358115315.353") :anon :lex :outer("cuid_81_1358115315.353")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 598
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$new", $P101 
    .lex "self", _lex_param_0 
    .lex "$from", _lex_param_1 
    nqp_get_sc_object $P5001, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
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
.sub "!cursor_capture" :subid("cuid_39_1358115315.353") :anon :lex :outer("cuid_81_1358115315.353")
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
    if $I5001 goto unless211_end651 
    nqp_decontainerize $P5007, _lex_param_0
    find_lex $P5008, "$?CLASS"
    new $P5009, 'ResizablePMCArray'
    repr_bind_attr_obj $P5007, $P5008, "$!cstack", $P5009
  unless211_end651:
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
.sub "!cursor_push_cstack" :subid("cuid_40_1358115315.353") :anon :lex :outer("cuid_81_1358115315.353")
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
    if $I5001 goto unless212_end653 
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    new $P5006, 'ResizablePMCArray'
    repr_bind_attr_obj $P5004, $P5005, "$!cstack", $P5006
  unless212_end653:
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
.sub "!cursor_pass" :subid("cuid_41_1358115315.353") :anon :lex :outer("cuid_81_1358115315.353")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 625
    .param pmc _lex_param_0 
    .param int _lex_param_1 
    .param pmc _lex_param_2 :optional 
    .param int haz_param_17 :opt_flag 
    .param pmc _lex_param_3 :named("backtrack") :optional 
    .param int haz_param_18 :opt_flag 
    if haz_param_17, default660
    nqp_get_sc_object $P5017, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set _lex_param_2, $P5017
  default660:
    if haz_param_18, default661
    nqp_get_sc_object $P5018, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set _lex_param_3, $P5018
  default661:
    .lex "self", _lex_param_0 
    .lex "$pos", _lex_param_1 
    .lex "$name", _lex_param_2 
    .lex "$backtrack", _lex_param_3 
    nqp_decontainerize $P5001, _lex_param_0
    find_lex $P5002, "$?CLASS"
    find_lex $P5003, "$pass_mark"
    repr_bind_attr_obj $P5001, $P5002, "$!match", $P5003
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_bind_attr_int $P5004, $P5005, "$!pos", _lex_param_1
    unless _lex_param_3 goto if213_end655 
    nqp_decontainerize $P5006, _lex_param_0
    find_lex $P5007, "$?CLASS"
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_obj $P5010, $P5008, $P5009, "$!regexsub"
    repr_bind_attr_obj $P5006, $P5007, "$!restart", $P5010
  if213_end655:
    if _lex_param_3 goto unless214_end657 
    nqp_decontainerize $P5011, _lex_param_0
    find_lex $P5012, "$?CLASS"
    null $P5013
    repr_bind_attr_obj $P5011, $P5012, "$!bstack", $P5013
  unless214_end657:
    set $P5016, _lex_param_2
    unless _lex_param_2 goto if215_end659 
.annotate 'line', 632
    nqp_decontainerize $P5014, _lex_param_0
    $P5015 = $P5014."!reduce"(_lex_param_2)
    set $P5016, $P5015
  if215_end659:
    .return ($P5016) 
.end
.HLL "nqp"
.namespace []
.sub "!cursor_fail" :subid("cuid_42_1358115315.353") :anon :lex :outer("cuid_81_1358115315.353")
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
.sub "!cursor_pos" :subid("cuid_43_1358115315.353") :anon :lex :outer("cuid_81_1358115315.353")
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
.sub "!cursor_next" :subid("cuid_44_1358115315.353") :anon :lex :outer("cuid_81_1358115315.353")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 645
    .param pmc _lex_param_0 
    .const 'Sub' $P5012 = 'cuid_102_1358115315.353' 
    capture_lex $P5012 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    find_lex $P5002, "$?CLASS"
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!restart"
    defined $I5001, $P5003
    unless $I5001 goto if216_else662 
.annotate 'line', 646
.annotate 'line', 647
    nqp_decontainerize $P5007, _lex_param_0
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!restart"
    $P5008 = $P5006($P5007)
    set $P5011, $P5008
    goto if216_end663
  if216_else662:
    .const 'Sub' $P5009 = 'cuid_102_1358115315.353' 
    capture_lex $P5009
    $P5010 = $P5009()
    set $P5011, $P5010
  if216_end663:
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_102_1358115315.353") :anon :lex :outer("cuid_44_1358115315.353")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 649
    .lex "$cur", $P101 
    nqp_get_sc_object $P5001, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
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
.sub "!cursor_more" :subid("cuid_45_1358115315.353") :anon :lex :outer("cuid_81_1358115315.353")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 656
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy :named 
    .lex "$new", $P101 
    .lex "self", _lex_param_0 
    .lex "%opts", _lex_param_1 
    nqp_get_sc_object $P5001, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P101, $P5001
    root_new $P102, ['parrot';'Continuation']
    set_label $P102, lexotic_664
    .lex "RETURN", $P102
    set $P5002, _lex_param_1["ex"]
    unless_null $P5002, fallback668
    nqp_get_sc_object $P5003, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5002, $P5003
  fallback668:
    unless $P5002 goto if217_end667 
.annotate 'line', 657
    nqp_decontainerize $P5005, _lex_param_0
    $P5006 = $P5005."!cursor_next"()
    find_lex $P5004, "RETURN"
    $P5007 = $P5004($P5006)
  if217_end667:
.annotate 'line', 658
    nqp_decontainerize $P5008, _lex_param_0
    $P5009 = $P5008."CREATE"()
    set $P101, $P5009
    find_lex $P5010, "$?CLASS"
    nqp_decontainerize $P5011, _lex_param_0
    find_lex $P5012, "$?CLASS"
    repr_get_attr_obj $P5013, $P5011, $P5012, "$!shared"
    setattribute $P101, $P5010, "$!shared", $P5013
    find_lex $P5014, "$?CLASS"
    repr_bind_attr_int $P101, $P5014, "$!from", -1
    find_lex $P5015, "$?CLASS"
    set $P5016, _lex_param_1["ov"]
    unless_null $P5016, fallback673
    nqp_get_sc_object $P5017, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5016, $P5017
  fallback673:
    set $P5022, $P5016
    if $P5016 goto unless219_end672 
    nqp_decontainerize $P5018, _lex_param_0
    find_lex $P5019, "$?CLASS"
    repr_get_attr_int $I5002, $P5018, $P5019, "$!from"
    set $N5001, $I5002
    nqp_decontainerize $P5020, _lex_param_0
    find_lex $P5021, "$?CLASS"
    repr_get_attr_int $I5003, $P5020, $P5021, "$!pos"
    set $N5002, $I5003
    isge $I5001, $N5001, $N5002
    box $P5023, $I5001
    set $P5022, $P5023
  unless219_end672:
    unless $P5022 goto if218_else669 
    nqp_decontainerize $P5024, _lex_param_0
    find_lex $P5025, "$?CLASS"
    repr_get_attr_int $I5004, $P5024, $P5025, "$!from"
    set $N5004, $I5004
    set $N5005, 1
    add $N5003, $N5004, $N5005
    box $P5029, $N5003
    set $P5028, $P5029
    goto if218_end670
  if218_else669:
    nqp_decontainerize $P5026, _lex_param_0
    find_lex $P5027, "$?CLASS"
    repr_get_attr_int $I5005, $P5026, $P5027, "$!pos"
    box $P5030, $I5005
    set $P5028, $P5030
  if218_end670:
    set $I5006, $P5028
    repr_bind_attr_int $P101, $P5015, "$!pos", $I5006
.annotate 'line', 663
    nqp_decontainerize $P5031, _lex_param_0
    find_lex $P5032, "$?CLASS"
    repr_get_attr_obj $P5033, $P5031, $P5032, "$!regexsub"
    $P5034 = $P5033($P101)
    goto lexotic_665
  lexotic_664:
    .get_results ($P5034)
  lexotic_665:
    .return ($P5034) 
.end
.HLL "nqp"
.namespace []
.sub "!reduce" :subid("cuid_46_1358115315.353") :anon :lex :outer("cuid_81_1358115315.353")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 666
    .param pmc _lex_param_0 
    .param string _lex_param_1 
    .lex "$actions", $P101 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    nqp_get_sc_object $P5001, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P101, $P5001
    find_dynamic_lex $P5002, "$*ACTIONS"
    set $P101, $P5002
    isnull $I5002, $P101
    not $I5001, $I5002
    set $I5004, $I5001
    unless $I5001 goto if221_end677 
    can $I5003, $P101, _lex_param_1
    set $I5004, $I5003
  if221_end677:
    box $P5008, $I5004
    set $P5007, $P5008
    unless $I5004 goto if220_end675 
.annotate 'line', 668
    nqp_decontainerize $P5004, _lex_param_0
    $P5005 = $P5004."MATCH"()
    find_method $P5003, $P101, _lex_param_1
    $P5006 = $P5003($P101, $P5005)
    set $P5007, $P5006
  if220_end675:
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "!reduce_with_match" :subid("cuid_47_1358115315.353") :anon :lex :outer("cuid_81_1358115315.353")
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
    nqp_get_sc_object $P5001, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P101, $P5001
    find_dynamic_lex $P5002, "$*ACTIONS"
    set $P101, $P5002
    isnull $I5002, $P101
    not $I5001, $I5002
    set $I5004, $I5001
    unless $I5001 goto if223_end681 
    set $S5001, _lex_param_1
    can $I5003, $P101, $S5001
    set $I5004, $I5003
  if223_end681:
    box $P5006, $I5004
    set $P5005, $P5006
    unless $I5004 goto if222_end679 
.annotate 'line', 674
    set $S5002, _lex_param_1
    find_method $P5003, $P101, $S5002
    $P5004 = $P5003($P101, _lex_param_3, _lex_param_2)
    set $P5005, $P5004
  if222_end679:
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "!shared" :subid("cuid_48_1358115315.353") :anon :lex :outer("cuid_81_1358115315.353")
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
.sub "!protoregex" :subid("cuid_49_1358115315.353") :anon :lex :outer("cuid_81_1358115315.353")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 681
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5040 = 'cuid_103_1358115315.353' 
    capture_lex $P5040 
    .lex "$shared", $P101 
    .lex "$nfa", $P102 
    .lex "@fates", $P103 
    .lex "$highwater", $I101 
    .lex "@rxfate", $P104 
    .lex "$cur", $P105 
    .lex "$rxname", $P106 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    nqp_get_sc_object $P5001, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P101, $P5001
    nqp_get_sc_object $P5002, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P102, $P5002
    new $P5003, 'ResizablePMCArray'
    set $P103, $P5003
    set $I101, 0
    new $P5004, 'ResizablePMCArray'
    set $P104, $P5004
    nqp_get_sc_object $P5005, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P105, $P5005
    nqp_get_sc_object $P5006, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P106, $P5006
    nqp_decontainerize $P5007, _lex_param_0
    find_lex $P5008, "$?CLASS"
    repr_get_attr_obj $P5009, $P5007, $P5008, "$!shared"
    set $P101, $P5009
.annotate 'line', 684
    nqp_decontainerize $P5011, _lex_param_0
    get_how $P5010, $P5011
    nqp_decontainerize $P5012, _lex_param_0
    .const 'Sub' $P5014 = 'cuid_103_1358115315.353' 
    capture_lex $P5014
    newclosure $P5013, $P5014
    $P5015 = $P5010."cache"($P5012, _lex_param_1, $P5013)
    set $P102, $P5015
.annotate 'line', 685
    nqp_get_sc_object $P5016, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 31
    repr_get_attr_str $S5001, $P101, $P5016, "$!target"
    nqp_decontainerize $P5017, _lex_param_0
    find_lex $P5018, "$?CLASS"
    repr_get_attr_int $I5001, $P5017, $P5018, "$!pos"
    $P5019 = $P102."run"($S5001, $I5001)
    set $P103, $P5019
    nqp_get_sc_object $P5020, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 31
    repr_get_attr_int $I5002, $P101, $P5020, "$!highwater"
    set $I101, $I5002
    nqp_decontainerize $P5021, _lex_param_0
    find_lex $P5022, "$?CLASS"
    repr_get_attr_int $I5004, $P5021, $P5022, "$!pos"
    set $N5001, $I5004
    set $N5002, $I101
    isgt $I5003, $N5001, $N5002
    unless $I5003 goto if224_end683 
.annotate 'line', 689
    nqp_get_sc_object $P5023, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 31
    nqp_decontainerize $P5024, _lex_param_0
    find_lex $P5025, "$?CLASS"
    repr_get_attr_int $I5005, $P5024, $P5025, "$!pos"
    repr_bind_attr_int $P101, $P5023, "$!highwater", $I5005
  if224_end683:
.annotate 'line', 694
    $P5027 = $P102."states"()
    set $P5026, $P5027[0]
    unless_null $P5026, fallback684
    nqp_get_sc_object $P5028, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5026, $P5028
  fallback684:
    set $P104, $P5026
  while225_test685:
    set $P5036, $P103
    unless $P103 goto while225_done689 
  while225_redo687:
.annotate 'line', 697
    pop $I5006, $P103
    set $P5029, $P104[$I5006]
    set $P106, $P5029
.annotate 'line', 700
    nqp_decontainerize $P5030, _lex_param_0
    set $S5002, $P106
    $P5031 = $P5030.$S5002()
    set $P105, $P5031
    find_lex $P5032, "$?CLASS"
    repr_get_attr_int $I5008, $P105, $P5032, "$!pos"
    set $N5003, $I5008
    set $N5004, 0
    isge $I5007, $N5003, $N5004
    box $P5035, $I5007
    set $P5034, $P5035
    unless $I5007 goto if226_end691 
    find_lex $P5033, "@EMPTY"
    set $P103, $P5033
    set $P5034, $P103
  if226_end691:
    set $P5036, $P5034
    goto while225_test685 
  while225_done689:
    set $P5037, $P105
    defined $I5009, $P5037
    if $I5009, defor692
.annotate 'line', 703
    nqp_decontainerize $P5038, _lex_param_0
    $P5039 = $P5038."!cursor_start"()
    set $P5037, $P5039
  defor692:
    .return ($P5037) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_103_1358115315.353") :anon :lex :outer("cuid_49_1358115315.353")
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
.sub "!protoregex_nfa" :subid("cuid_50_1358115315.353") :anon :lex :outer("cuid_81_1358115315.353")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 706
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5026 = 'cuid_104_1358115315.353' 
    capture_lex $P5026 
    .const 'Sub' $P5026 = 'cuid_105_1358115315.353' 
    capture_lex $P5026 
    .lex "%protorx", $P101 
    .lex "$nfa", $P102 
    .lex "@fates", $P103 
    .lex "$start", $I101 
    .lex "$fate", $I102 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    new $P5001, 'Hash'
    set $P101, $P5001
    nqp_get_sc_object $P5002, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P102, $P5002
    new $P5003, 'ResizablePMCArray'
    set $P103, $P5003
    set $I101, 0
    set $I102, 0
.annotate 'line', 707
    nqp_decontainerize $P5005, _lex_param_0
    get_how $P5004, $P5005
    nqp_decontainerize $P5006, _lex_param_0
    .const 'Sub' $P5008 = 'cuid_104_1358115315.353' 
    capture_lex $P5008
    newclosure $P5007, $P5008
    $P5009 = $P5004."cache"($P5006, "!protoregex_table", $P5007)
    set $P101, $P5009
.annotate 'line', 708
    nqp_get_sc_object $P5013, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 0
    nqp_get_package_through_who $P5012, $P5013, "QRegex"
    get_who $P5011, $P5012
    set $P5010, $P5011["NFA"]
    unless_null $P5010, fallback693
    nqp_get_sc_object $P5014, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5010, $P5014
  fallback693:
    $P5015 = $P5010."new"()
    set $P102, $P5015
.annotate 'line', 709
    $P5017 = $P102."states"()
    set $P5016, $P5017[0]
    unless_null $P5016, fallback694
    nqp_get_sc_object $P5018, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5016, $P5018
  fallback694:
    set $P103, $P5016
    set $I101, 1
    set $I102, 0
    set $S5001, _lex_param_1
    exists $I5001, $P101[$S5001]
    unless $I5001 goto if227_end696 
.annotate 'line', 712
    set $S5002, _lex_param_1
    set $P5022, $P101[$S5002]
    unless_null $P5022, fallback697
    nqp_get_sc_object $P5023, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5022, $P5023
  fallback697:
    set $P5019, $P5022
    iter $P5021, $P5022
  for_next698:
    unless $P5021, for_done700
    shift $P5025, $P5021
  for_redo699:
    .const 'Sub' $P5024 = 'cuid_105_1358115315.353' 
    capture_lex $P5024
    $P5019 = $P5024($P5025)
    goto for_next698
  for_done700:
  if227_end696:
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_104_1358115315.353") :anon :lex :outer("cuid_50_1358115315.353")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 707

    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    $P5003 = $P5001."!protoregex_table"()
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_105_1358115315.353") :anon :lex :outer("cuid_50_1358115315.353")
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
.sub "!protoregex_table" :subid("cuid_51_1358115315.353") :anon :lex :outer("cuid_81_1358115315.353")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 722
    .param pmc _lex_param_0 
    .const 'Sub' $P5011 = 'cuid_107_1358115315.353' 
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
  for_next706:
    unless $P5004, for_done708
    shift $P5010, $P5004
  for_redo707:
    .const 'Sub' $P5009 = 'cuid_107_1358115315.353' 
    capture_lex $P5009
    $P5002 = $P5009($P5010)
    goto for_next706
  for_done708:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_107_1358115315.353") :anon :lex :outer("cuid_51_1358115315.353")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 724
    .param pmc _lex_param_0 
    .const 'Sub' $P5005 = 'cuid_106_1358115315.353' 
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
    unless $I5002 goto if228_end702 
    .const 'Sub' $P5001 = 'cuid_106_1358115315.353' 
    capture_lex $P5001
    $P5002 = $P5001()
    set $P5003, $P5002
  if228_end702:
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_106_1358115315.353") :anon :lex :outer("cuid_107_1358115315.353")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 727
    .lex "$prefix", $S101 
    set $S101, ""
    find_lex $S5002, "$methname"
    find_lex $I5001, "$sympos"
    substr $S5001, $S5002, 0, $I5001
    set $S101, $S5001
    find_lex $P5001, "%protorx"
    exists $I5002, $P5001[$S101]
    if $I5002 goto unless229_end704 
    find_lex $P5002, "%protorx"
    new $P5003, 'ResizablePMCArray'
    set $P5002[$S101], $P5003
  unless229_end704:
    find_lex $P5005, "%protorx"
    set $P5004, $P5005[$S101]
    unless_null $P5004, fallback705
    nqp_get_sc_object $P5006, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5004, $P5006
  fallback705:
    find_lex $S5003, "$methname"
    box $P5007, $S5003
    push $P5004, $P5007
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "!alt" :subid("cuid_52_1358115315.353") :anon :lex :outer("cuid_81_1358115315.353")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 736
    .param pmc _lex_param_0 
    .param int _lex_param_1 
    .param string _lex_param_2 
    .param pmc _lex_param_3 :optional 
    .param int haz_param_19 :opt_flag 
    .const 'Sub' $P5023 = 'cuid_108_1358115315.353' 
    capture_lex $P5023 
    if haz_param_19, default711
    new $P5022, 'ResizablePMCArray'
    set _lex_param_3, $P5022
  default711:
    .lex "$shared", $P101 
    .lex "$highwater", $I101 
    .lex "$nfa", $P102 
    .lex "self", _lex_param_0 
    .lex "$pos", _lex_param_1 
    .lex "$name", _lex_param_2 
    .lex "@labels", _lex_param_3 
    nqp_get_sc_object $P5001, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P101, $P5001
    set $I101, 0
    nqp_get_sc_object $P5002, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P102, $P5002
    nqp_decontainerize $P5003, _lex_param_0
    find_lex $P5004, "$?CLASS"
    repr_get_attr_obj $P5005, $P5003, $P5004, "$!shared"
    set $P101, $P5005
    nqp_get_sc_object $P5006, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 31
    repr_get_attr_int $I5001, $P101, $P5006, "$!highwater"
    set $I101, $I5001
    set $N5001, _lex_param_1
    set $N5002, $I101
    isgt $I5002, $N5001, $N5002
    unless $I5002 goto if230_end710 
.annotate 'line', 740
    nqp_get_sc_object $P5007, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 31
    repr_bind_attr_int $P101, $P5007, "$!highwater", _lex_param_1
  if230_end710:
.annotate 'line', 745
    nqp_decontainerize $P5009, _lex_param_0
    get_how $P5008, $P5009
    nqp_decontainerize $P5010, _lex_param_0
    .const 'Sub' $P5012 = 'cuid_108_1358115315.353' 
    capture_lex $P5012
    newclosure $P5011, $P5012
    $P5013 = $P5008."cache"($P5010, _lex_param_2, $P5011)
    set $P102, $P5013
.annotate 'line', 746
    nqp_get_sc_object $P5014, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 31
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
.sub "" :subid("cuid_108_1358115315.353") :anon :lex :outer("cuid_52_1358115315.353")
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
.sub "!alt_nfa" :subid("cuid_53_1358115315.353") :anon :lex :outer("cuid_81_1358115315.353")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 749
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param string _lex_param_2 
    .const 'Sub' $P5018 = 'cuid_109_1358115315.353' 
    capture_lex $P5018 
    .lex "$nfa", $P101 
    .lex "@fates", $P102 
    .lex "$start", $I101 
    .lex "$fate", $I102 
    .lex "self", _lex_param_0 
    .lex "$regex", _lex_param_1 
    .lex "$name", _lex_param_2 
    nqp_get_sc_object $P5001, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P101, $P5001
    new $P5002, 'ResizablePMCArray'
    set $P102, $P5002
    set $I101, 0
    set $I102, 0
.annotate 'line', 750
    nqp_get_sc_object $P5006, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 0
    nqp_get_package_through_who $P5005, $P5006, "QRegex"
    get_who $P5004, $P5005
    set $P5003, $P5004["NFA"]
    unless_null $P5003, fallback712
    nqp_get_sc_object $P5007, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5003, $P5007
  fallback712:
    $P5008 = $P5003."new"()
    set $P101, $P5008
.annotate 'line', 751
    $P5010 = $P101."states"()
    set $P5009, $P5010[0]
    unless_null $P5009, fallback713
    nqp_get_sc_object $P5011, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5009, $P5011
  fallback713:
    set $P102, $P5009
    set $I101, 1
    set $I102, 0
.annotate 'line', 754
    $P5015 = _lex_param_1."ALT_NFA"(_lex_param_2)
    set $P5012, $P5015
    iter $P5014, $P5015
  for_next714:
    unless $P5014, for_done716
    shift $P5017, $P5014
  for_redo715:
    .const 'Sub' $P5016 = 'cuid_109_1358115315.353' 
    capture_lex $P5016
    $P5012 = $P5016($P5017)
    goto for_next714
  for_done716:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_109_1358115315.353") :anon :lex :outer("cuid_53_1358115315.353")
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
.sub "!precompute_nfas" :subid("cuid_54_1358115315.353") :anon :lex :outer("cuid_81_1358115315.353")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 762
    .param pmc _lex_param_0 
    .const 'Sub' $P5023 = 'cuid_112_1358115315.353' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_113_1358115315.353' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_115_1358115315.353' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_117_1358115315.353' 
    capture_lex $P5023 
    .lex "%protorx", $P101 
    .lex "&precomp_alt_nfas", $P102 
    .lex "self", _lex_param_0 
    new $P5001, 'Hash'
    set $P101, $P5001
    .const 'Sub' $P5002 = 'cuid_112_1358115315.353' 
    capture_lex $P5002
    set $P102, $P5002
.annotate 'line', 764
    nqp_decontainerize $P5004, _lex_param_0
    get_how $P5003, $P5004
    nqp_decontainerize $P5005, _lex_param_0
    .const 'Sub' $P5007 = 'cuid_113_1358115315.353' 
    capture_lex $P5007
    newclosure $P5006, $P5007
    $P5008 = $P5003."cache"($P5005, "!protoregex_table", $P5006)
    set $P101, $P5008
    set $P5009, $P101
    iter $P5011, $P101
  for_next722:
    unless $P5011, for_done724
    shift $P5013, $P5011
  for_redo723:
    .const 'Sub' $P5012 = 'cuid_115_1358115315.353' 
    capture_lex $P5012
    $P5009 = $P5012($P5013)
    goto for_next722
  for_done724:
.annotate 'line', 777
    nqp_decontainerize $P5018, _lex_param_0
    get_how $P5017, $P5018
    nqp_decontainerize $P5019, _lex_param_0
    $P5020 = $P5017."methods"($P5019)
    set $P5014, $P5020
    iter $P5016, $P5020
  for_next730:
    unless $P5016, for_done732
    shift $P5022, $P5016
  for_redo731:
    .const 'Sub' $P5021 = 'cuid_117_1358115315.353' 
    capture_lex $P5021
    $P5014 = $P5021($P5022)
    goto for_next730
  for_done732:
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "precomp_alt_nfas" :subid("cuid_112_1358115315.353") :anon :lex :outer("cuid_54_1358115315.353")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 770
    .param pmc _lex_param_0 
    .const 'Sub' $P5009 = 'cuid_111_1358115315.353' 
    capture_lex $P5009 
    .lex "$meth", _lex_param_0 
    can $I5001, _lex_param_0, "ALT_NFAS"
    box $P5008, $I5001
    set $P5007, $P5008
    unless $I5001 goto if231_end718 
.annotate 'line', 771
.annotate 'line', 772
    $P5004 = _lex_param_0."ALT_NFAS"()
    set $P5001, $P5004
    iter $P5003, $P5004
  for_next719:
    unless $P5003, for_done721
    shift $P5006, $P5003
  for_redo720:
    .const 'Sub' $P5005 = 'cuid_111_1358115315.353' 
    capture_lex $P5005
    $P5001 = $P5005($P5006)
    goto for_next719
  for_done721:
    set $P5007, $P5001
  if231_end718:
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_111_1358115315.353") :anon :lex :outer("cuid_112_1358115315.353")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 772
    .param pmc _lex_param_0 
    .const 'Sub' $P5009 = 'cuid_110_1358115315.353' 
    capture_lex $P5009 
    .lex "$name", _lex_param_0 
.annotate 'line', 773
    find_lex $P5003, "self"
    nqp_decontainerize $P5002, $P5003
    get_how $P5001, $P5002
    find_lex $P5005, "self"
    nqp_decontainerize $P5004, $P5005
    .const 'Sub' $P5007 = 'cuid_110_1358115315.353' 
    capture_lex $P5007
    newclosure $P5006, $P5007
    $P5008 = $P5001."cache"($P5004, _lex_param_0, $P5006)
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_110_1358115315.353") :anon :lex :outer("cuid_111_1358115315.353")
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
.sub "" :subid("cuid_113_1358115315.353") :anon :lex :outer("cuid_54_1358115315.353")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 764

    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    $P5003 = $P5001."!protoregex_table"()
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_115_1358115315.353") :anon :lex :outer("cuid_54_1358115315.353")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 765
    .param pmc _lex_param_0 
    .const 'Sub' $P5010 = 'cuid_114_1358115315.353' 
    capture_lex $P5010 
    .lex "$_", _lex_param_0 
.annotate 'line', 766
    find_lex $P5003, "self"
    nqp_decontainerize $P5002, $P5003
    get_how $P5001, $P5002
    find_lex $P5005, "self"
    nqp_decontainerize $P5004, $P5005
    $P5006 = _lex_param_0."key"()
    .const 'Sub' $P5008 = 'cuid_114_1358115315.353' 
    capture_lex $P5008
    newclosure $P5007, $P5008
    $P5009 = $P5001."cache"($P5004, $P5006, $P5007)
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_114_1358115315.353") :anon :lex :outer("cuid_115_1358115315.353")
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
.sub "" :subid("cuid_117_1358115315.353") :anon :lex :outer("cuid_54_1358115315.353")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 777
    .param pmc _lex_param_0 
    .const 'Sub' $P5009 = 'cuid_116_1358115315.353' 
    capture_lex $P5009 
    .lex "$meth", _lex_param_0 
.annotate 'line', 778
    "&precomp_alt_nfas"(_lex_param_0)
    can $I5001, _lex_param_0, "NESTED_CODES"
    box $P5008, $I5001
    set $P5007, $P5008
    unless $I5001 goto if232_end726 
.annotate 'line', 779
.annotate 'line', 780
    $P5004 = _lex_param_0."NESTED_CODES"()
    set $P5001, $P5004
    iter $P5003, $P5004
  for_next727:
    unless $P5003, for_done729
    shift $P5006, $P5003
  for_redo728:
    .const 'Sub' $P5005 = 'cuid_116_1358115315.353' 
    capture_lex $P5005
    $P5001 = $P5005($P5006)
    goto for_next727
  for_done729:
    set $P5007, $P5001
  if232_end726:
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_116_1358115315.353") :anon :lex :outer("cuid_117_1358115315.353")
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
.sub "!dba" :subid("cuid_55_1358115315.353") :anon :lex :outer("cuid_81_1358115315.353")
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
    nqp_get_sc_object $P5001, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P101, $P5001
    set $I101, 0
    nqp_get_sc_object $P5002, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P102, $P5002
    nqp_decontainerize $P5003, _lex_param_0
    find_lex $P5004, "$?CLASS"
    repr_get_attr_obj $P5005, $P5003, $P5004, "$!shared"
    set $P101, $P5005
    nqp_get_sc_object $P5006, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 31
    repr_get_attr_int $I5001, $P101, $P5006, "$!highwater"
    set $I101, $I5001
    set $N5001, _lex_param_1
    set $N5002, $I101
    isge $I5002, $N5001, $N5002
    box $P5011, $I5002
    set $P5010, $P5011
    unless $I5002 goto if233_end734 
.annotate 'line', 791
    nqp_get_sc_object $P5008, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 31
    getattribute $P5007, $P101, $P5008, "@!highexpect"
    set $P102, $P5007
    set $N5003, _lex_param_1
    set $N5004, $I101
    isgt $I5003, $N5003, $N5004
    unless $I5003 goto if234_end736 
.annotate 'line', 793
    assign $P102, 0
    nqp_get_sc_object $P5009, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 31
    repr_bind_attr_int $P101, $P5009, "$!highwater", _lex_param_1
  if234_end736:
    push $P102, _lex_param_2
    set $P5010, $P102
  if233_end734:
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "!highwater" :subid("cuid_56_1358115315.353") :anon :lex :outer("cuid_81_1358115315.353")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 801
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    find_lex $P5002, "$?CLASS"
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!shared"
    nqp_get_sc_object $P5004, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 31
    repr_get_attr_int $I5001, $P5003, $P5004, "$!highwater"
    .return ($I5001) 
.end
.HLL "nqp"
.namespace []
.sub "!highexpect" :subid("cuid_57_1358115315.353") :anon :lex :outer("cuid_81_1358115315.353")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 805
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5002, _lex_param_0
    find_lex $P5003, "$?CLASS"
    repr_get_attr_obj $P5004, $P5002, $P5003, "$!shared"
    nqp_get_sc_object $P5005, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 31
    getattribute $P5001, $P5004, $P5005, "@!highexpect"
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "!fresh_highexpect" :subid("cuid_58_1358115315.353") :anon :lex :outer("cuid_81_1358115315.353")
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
    nqp_get_sc_object $P5006, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 31
    getattribute $P5002, $P5005, $P5006, "@!highexpect"
    set $P101, $P5002
    nqp_decontainerize $P5007, _lex_param_0
    find_lex $P5008, "$?CLASS"
    repr_get_attr_obj $P5009, $P5007, $P5008, "$!shared"
    nqp_get_sc_object $P5010, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 31
    new $P5011, 'ResizablePMCArray'
    setattribute $P5009, $P5010, "@!highexpect", $P5011
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "!set_highexpect" :subid("cuid_59_1358115315.353") :anon :lex :outer("cuid_81_1358115315.353")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 815
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "@highexpect", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    find_lex $P5002, "$?CLASS"
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!shared"
    nqp_get_sc_object $P5004, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 31
    setattribute $P5003, $P5004, "@!highexpect", _lex_param_1
    .return (_lex_param_1) 
.end
.HLL "nqp"
.namespace []
.sub "!clear_highwater" :subid("cuid_60_1358115315.353") :anon :lex :outer("cuid_81_1358115315.353")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 819
    .param pmc _lex_param_0 
    .lex "$highexpect", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P101, $P5001
    nqp_decontainerize $P5003, _lex_param_0
    find_lex $P5004, "$?CLASS"
    repr_get_attr_obj $P5005, $P5003, $P5004, "$!shared"
    nqp_get_sc_object $P5006, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 31
    getattribute $P5002, $P5005, $P5006, "@!highexpect"
    set $P101, $P5002
    assign $P101, 0
    nqp_decontainerize $P5007, _lex_param_0
    find_lex $P5008, "$?CLASS"
    repr_get_attr_obj $P5009, $P5007, $P5008, "$!shared"
    nqp_get_sc_object $P5010, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 31
    repr_bind_attr_int $P5009, $P5010, "$!highwater", -1
    .return (-1) 
.end
.HLL "nqp"
.namespace []
.sub "!BACKREF" :subid("cuid_61_1358115315.353") :anon :lex :outer("cuid_81_1358115315.353")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 825
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5032 = 'cuid_118_1358115315.353' 
    capture_lex $P5032 
    .lex "$cur", $P101 
    .lex "$n", $I101 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    .local pmc tmp_7 
    nqp_get_sc_object $P5001, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P101, $P5001
    set $I101, 0
.annotate 'line', 826
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start"()
    set $P101, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!cstack"
    unless $P5006 goto if235_else737 
    nqp_decontainerize $P5007, _lex_param_0
    find_lex $P5008, "$?CLASS"
    repr_get_attr_obj $P5009, $P5007, $P5008, "$!cstack"
    elements $I5001, $P5009
    set $N5002, $I5001
    set $N5003, 1
    sub $N5001, $N5002, $N5003
    box $P5011, $N5001
    set $P5010, $P5011
    goto if235_end738
  if235_else737:
    box $P5012, -1
    set $P5010, $P5012
  if235_end738:
    set $I5002, $P5010
    set $I101, $I5002
    new $P5028, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5028, while236_handlers742
    push_eh $P5028
  while236_test739:
    set $N5004, $I101
    set $N5005, 0
    isge $I5003, $N5004, $N5005
    set $I5007, $I5003
    unless $I5003 goto if237_end745 
    nqp_decontainerize $P5015, _lex_param_0
    find_lex $P5016, "$?CLASS"
    repr_get_attr_obj $P5017, $P5015, $P5016, "$!cstack"
    set $P5014, $P5017[$I101]
    unless_null $P5014, fallback748
    nqp_get_sc_object $P5018, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5014, $P5018
  fallback748:
    find_lex $P5019, "$?CLASS"
    getattribute $P5013, $P5014, $P5019, "$!name"
    isnull $I5004, $P5013
    set $I5006, $I5004
    if $I5004 goto unless238_end747 
    nqp_decontainerize $P5022, _lex_param_0
    find_lex $P5023, "$?CLASS"
    repr_get_attr_obj $P5024, $P5022, $P5023, "$!cstack"
    set $P5021, $P5024[$I101]
    unless_null $P5021, fallback749
    nqp_get_sc_object $P5025, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5021, $P5025
  fallback749:
    find_lex $P5026, "$?CLASS"
    getattribute $P5020, $P5021, $P5026, "$!name"
    set $S5001, $P5020
    set $S5002, _lex_param_1
    isne $I5005, $S5001, $S5002
    set $I5006, $I5005
  unless238_end747:
    set $I5007, $I5006
  if237_end745:
    box $P5029, $I5007
    set $P5027, $P5029
    unless $I5007 goto while236_done743 
  while236_redo741:
    box $P5027, $I101
    set tmp_7, $P5027
    set $N5007, tmp_7
    set $N5008, 1
    sub $N5006, $N5007, $N5008
    set $I5008, $N5006
    set $I101, $I5008
    set $P5027, tmp_7
    goto while236_test739 
  while236_handlers742:
    .get_results ($P5028)
    pop_upto_eh $P5028
    getattribute $P5028, $P5028, 'type'
    eq $P5028, .CONTROL_LOOP_NEXT, while236_test739
    eq $P5028, .CONTROL_LOOP_REDO, while236_redo741
  while236_done743:
    pop_eh 
    set $N5006, $I101
    set $N5007, 0
    isge $I5008, $N5006, $N5007
    unless $I5008 goto if239_end751 
    .const 'Sub' $P5030 = 'cuid_118_1358115315.353' 
    capture_lex $P5030
    $P5031 = $P5030()
  if239_end751:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_118_1358115315.353") :anon :lex :outer("cuid_61_1358115315.353")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 830
    .lex "$subcur", $P101 
    .lex "$litlen", $I101 
    .lex "$target", $S101 
    nqp_get_sc_object $P5001, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P101, $P5001
    set $I101, 0
    set $S101, ""
    find_lex $P5004, "self"
    nqp_decontainerize $P5003, $P5004
    find_lex $P5005, "$?CLASS"
    repr_get_attr_obj $P5006, $P5003, $P5005, "$!cstack"
    find_lex $I5001, "$n"
    set $P5002, $P5006[$I5001]
    unless_null $P5002, fallback752
    nqp_get_sc_object $P5007, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5002, $P5007
  fallback752:
    set $P101, $P5002
.annotate 'line', 832
    $P5008 = $P101."pos"()
    set $N5002, $P5008
    $P5009 = $P101."from"()
    set $N5003, $P5009
    sub $N5001, $N5002, $N5003
    set $I5002, $N5001
    set $I101, $I5002
    find_lex $P5011, "self"
    nqp_decontainerize $P5010, $P5011
    find_lex $P5012, "$?CLASS"
    repr_get_attr_obj $P5013, $P5010, $P5012, "$!shared"
    nqp_get_sc_object $P5014, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 31
    repr_get_attr_str $S5001, $P5013, $P5014, "$!target"
    set $S101, $S5001
    find_lex $P5016, "self"
    nqp_decontainerize $P5015, $P5016
    find_lex $P5017, "$?CLASS"
    repr_get_attr_int $I5004, $P5015, $P5017, "$!pos"
    substr $S5002, $S101, $I5004, $I101
.annotate 'line', 836
    $P5018 = $P101."from"()
    set $I5005, $P5018
    substr $S5003, $S101, $I5005, $I101
    iseq $I5003, $S5002, $S5003
    box $P5025, $I5003
    set $P5024, $P5025
    unless $I5003 goto if240_end754 
.annotate 'line', 834
    find_lex $P5019, "$cur"
    find_lex $P5021, "self"
    nqp_decontainerize $P5020, $P5021
    find_lex $P5022, "$?CLASS"
    repr_get_attr_int $I5006, $P5020, $P5022, "$!pos"
    set $N5005, $I5006
    set $N5006, $I101
    add $N5004, $N5005, $N5006
    $P5023 = $P5019."!cursor_pass"($N5004, "")
    set $P5024, $P5023
  if240_end754:
    .return ($P5024) 
.end
.HLL "nqp"
.namespace []
.sub "!LITERAL" :subid("cuid_62_1358115315.353") :anon :lex :outer("cuid_81_1358115315.353")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 841
    .param pmc _lex_param_0 
    .param string _lex_param_1 
    .param int _lex_param_2 :optional 
    .param int haz_param_20 :opt_flag 
    if haz_param_20, default761
    set $I5010, 0
    set _lex_param_2, $I5010
  default761:
    .lex "$cur", $P101 
    .lex "$litlen", $I101 
    .lex "$target", $S101 
    .lex "self", _lex_param_0 
    .lex "$str", _lex_param_1 
    .lex "$i", _lex_param_2 
    nqp_get_sc_object $P5001, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
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
    nqp_get_sc_object $P5007, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 31
    repr_get_attr_str $S5001, $P5006, $P5007, "$!target"
    set $S101, $S5001
    set $N5001, $I101
    set $N5002, 1
    islt $I5002, $N5001, $N5002
    set $I5008, $I5002
    if $I5002 goto unless242_end758 
    unless _lex_param_2 goto if243_else759 
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_int $I5004, $P5008, $P5009, "$!pos"
    substr $S5003, $S101, $I5004, $I101
    downcase $S5002, $S5003
    downcase $S5004, _lex_param_1
    iseq $I5003, $S5002, $S5004
    set $I5007, $I5003
    goto if243_end760
  if243_else759:
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5006, $P5010, $P5011, "$!pos"
    substr $S5005, $S101, $I5006, $I101
    iseq $I5005, $S5005, _lex_param_1
    set $I5007, $I5005
  if243_end760:
    set $I5008, $I5007
  unless242_end758:
    unless $I5008 goto if241_end756 
.annotate 'line', 845
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5009, $P5012, $P5013, "$!pos"
    set $N5004, $I5009
    set $N5005, $I101
    add $N5003, $N5004, $N5005
    $P5014 = $P101."!cursor_pass"($N5003)
  if241_end756:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "at" :subid("cuid_63_1358115315.353") :anon :lex :outer("cuid_81_1358115315.353")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 852
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    .lex "$pos", _lex_param_1 
    nqp_get_sc_object $P5001, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
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
    unless $I5001 goto if244_end763 
.annotate 'line', 854
    nqp_decontainerize $P5006, _lex_param_0
    find_lex $P5007, "$?CLASS"
    repr_get_attr_int $I5003, $P5006, $P5007, "$!pos"
    $P5008 = $P101."!cursor_pass"($I5003)
  if244_end763:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "before" :subid("cuid_64_1358115315.353") :anon :lex :outer("cuid_81_1358115315.353")
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
    nqp_get_sc_object $P5001, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P101, $P5001
    nqp_get_sc_object $P5002, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P102, $P5002
    nqp_decontainerize $P5003, _lex_param_0
    find_lex $P5004, "$?CLASS"
    repr_get_attr_obj $P5005, $P5003, $P5004, "$!shared"
    nqp_get_sc_object $P5006, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 31
    repr_get_attr_int $I5001, $P5005, $P5006, "$!highwater"
    set $I101, $I5001
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_obj $P5010, $P5008, $P5009, "$!shared"
    nqp_get_sc_object $P5011, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 31
    getattribute $P5007, $P5010, $P5011, "@!highexpect"
    set $P101, $P5007
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_obj $P5014, $P5012, $P5013, "$!shared"
    nqp_get_sc_object $P5015, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 31
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
    unless $I5003 goto if245_else764 
.annotate 'line', 865
    nqp_decontainerize $P5024, _lex_param_0
    find_lex $P5025, "$?CLASS"
    repr_get_attr_int $I5005, $P5024, $P5025, "$!pos"
    $P5026 = $P102."!cursor_pass"($I5005, "before")
    goto if245_end765
  if245_else764:
    find_lex $P5027, "$?CLASS"
    repr_bind_attr_int $P102, $P5027, "$!pos", -3
  if245_end765:
    nqp_decontainerize $P5028, _lex_param_0
    find_lex $P5029, "$?CLASS"
    repr_get_attr_obj $P5030, $P5028, $P5029, "$!shared"
    nqp_get_sc_object $P5031, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 31
    repr_bind_attr_int $P5030, $P5031, "$!highwater", $I101
    nqp_decontainerize $P5032, _lex_param_0
    find_lex $P5033, "$?CLASS"
    repr_get_attr_obj $P5034, $P5032, $P5033, "$!shared"
    nqp_get_sc_object $P5035, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 31
    setattribute $P5034, $P5035, "@!highexpect", $P101
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "after" :subid("cuid_65_1358115315.353") :anon :lex :outer("cuid_81_1358115315.353")
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
    nqp_get_sc_object $P5001, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P101, $P5001
    nqp_get_sc_object $P5002, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P102, $P5002
    set $S101, ""
    nqp_get_sc_object $P5003, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P103, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!shared"
    nqp_get_sc_object $P5007, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 31
    repr_get_attr_int $I5001, $P5006, $P5007, "$!highwater"
    set $I101, $I5001
    nqp_decontainerize $P5009, _lex_param_0
    find_lex $P5010, "$?CLASS"
    repr_get_attr_obj $P5011, $P5009, $P5010, "$!shared"
    nqp_get_sc_object $P5012, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 31
    getattribute $P5008, $P5011, $P5012, "@!highexpect"
    set $P101, $P5008
    nqp_decontainerize $P5013, _lex_param_0
    find_lex $P5014, "$?CLASS"
    repr_get_attr_obj $P5015, $P5013, $P5014, "$!shared"
    nqp_get_sc_object $P5016, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 31
    new $P5017, 'ResizablePMCArray'
    setattribute $P5015, $P5016, "@!highexpect", $P5017
.annotate 'line', 878
    nqp_decontainerize $P5018, _lex_param_0
    $P5019 = $P5018."!cursor_start"()
    set $P102, $P5019
    nqp_decontainerize $P5020, _lex_param_0
    find_lex $P5021, "$?CLASS"
    repr_get_attr_obj $P5022, $P5020, $P5021, "$!shared"
    nqp_get_sc_object $P5023, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 31
    repr_get_attr_str $S5001, $P5022, $P5023, "$!target"
    set $S101, $S5001
    nqp_decontainerize $P5025, _lex_param_0
    find_lex $P5026, "$?CLASS"
    repr_get_attr_obj $P5027, $P5025, $P5026, "$!shared"
    repr_clone $P5024, $P5027
    set $P103, $P5024
    nqp_get_sc_object $P5028, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 31
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
    unless $I5008 goto if246_else766 
.annotate 'line', 886
    nqp_decontainerize $P5040, _lex_param_0
    find_lex $P5041, "$?CLASS"
    repr_get_attr_int $I5010, $P5040, $P5041, "$!pos"
    $P5042 = $P102."!cursor_pass"($I5010, "after")
    goto if246_end767
  if246_else766:
    find_lex $P5043, "$?CLASS"
    repr_bind_attr_int $P102, $P5043, "$!pos", -3
  if246_end767:
    nqp_decontainerize $P5044, _lex_param_0
    find_lex $P5045, "$?CLASS"
    repr_get_attr_obj $P5046, $P5044, $P5045, "$!shared"
    nqp_get_sc_object $P5047, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 31
    repr_bind_attr_int $P5046, $P5047, "$!highwater", $I101
    nqp_decontainerize $P5048, _lex_param_0
    find_lex $P5049, "$?CLASS"
    repr_get_attr_obj $P5050, $P5048, $P5049, "$!shared"
    nqp_get_sc_object $P5051, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 31
    setattribute $P5050, $P5051, "@!highexpect", $P101
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "ws" :subid("cuid_66_1358115315.353") :anon :lex :outer("cuid_81_1358115315.353")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 893
    .param pmc _lex_param_0 
    .lex "$target", $S101 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    set $S101, ""
    nqp_get_sc_object $P5001, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P101, $P5001
    nqp_decontainerize $P5002, _lex_param_0
    find_lex $P5003, "$?CLASS"
    repr_get_attr_obj $P5004, $P5002, $P5003, "$!shared"
    nqp_get_sc_object $P5005, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 31
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
    unless $I5001 goto if247_else768 
.annotate 'line', 898
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5004, $P5010, $P5011, "$!pos"
    $P5012 = $P101."!cursor_pass"($I5004, "ws")
    goto if247_end769
  if247_else768:
    nqp_decontainerize $P5013, _lex_param_0
    find_lex $P5014, "$?CLASS"
    repr_get_attr_int $I5006, $P5013, $P5014, "$!pos"
    set $N5003, $I5006
    set $N5004, 1
    islt $I5005, $N5003, $N5004
    set $I5010, $I5005
    if $I5005 goto unless250_end775 
    nqp_decontainerize $P5015, _lex_param_0
    find_lex $P5016, "$?CLASS"
    repr_get_attr_int $I5009, $P5015, $P5016, "$!pos"
    is_cclass $I5008, .CCLASS_WORD, $S101, $I5009
    not $I5007, $I5008
    set $I5010, $I5007
  unless250_end775:
    set $I5015, $I5010
    if $I5010 goto unless249_end773 
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
  unless249_end773:
    box $P5023, $I5015
    set $P5022, $P5023
    unless $I5015 goto if248_end771 
.annotate 'line', 902
    nqp_decontainerize $P5019, _lex_param_0
    find_lex $P5020, "$?CLASS"
    repr_get_attr_int $I5017, $P5019, $P5020, "$!pos"
    length $I5018, $S101
    find_not_cclass $I5016, .CCLASS_WHITESPACE, $S101, $I5017, $I5018
    $P5021 = $P101."!cursor_pass"($I5016, "ws")
    set $P5022, $P5021
  if248_end771:
  if247_end769:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "ww" :subid("cuid_67_1358115315.353") :anon :lex :outer("cuid_81_1358115315.353")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 909
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "$target", $S101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P101, $P5001
    set $S101, ""
.annotate 'line', 910
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start"()
    set $P101, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!shared"
    nqp_get_sc_object $P5007, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 31
    repr_get_attr_str $S5001, $P5006, $P5007, "$!target"
    set $S101, $S5001
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_int $I5002, $P5008, $P5009, "$!pos"
    set $N5001, $I5002
    set $N5002, 0
    isgt $I5001, $N5001, $N5002
    set $I5006, $I5001
    unless $I5001 goto if254_end783 
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5004, $P5010, $P5011, "$!pos"
    set $N5003, $I5004
    length $I5005, $S101
    set $N5004, $I5005
    isne $I5003, $N5003, $N5004
    set $I5006, $I5003
  if254_end783:
    set $I5009, $I5006
    unless $I5006 goto if253_end781 
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5008, $P5012, $P5013, "$!pos"
    is_cclass $I5007, .CCLASS_WORD, $S101, $I5008
    set $I5009, $I5007
  if253_end781:
    set $I5013, $I5009
    unless $I5009 goto if252_end779 
    nqp_decontainerize $P5014, _lex_param_0
    find_lex $P5015, "$?CLASS"
    repr_get_attr_int $I5011, $P5014, $P5015, "$!pos"
    set $N5006, $I5011
    set $N5007, 1
    sub $N5005, $N5006, $N5007
    set $I5012, $N5005
    is_cclass $I5010, .CCLASS_WORD, $S101, $I5012
    set $I5013, $I5010
  if252_end779:
    unless $I5013 goto if251_end777 
.annotate 'line', 912
    nqp_decontainerize $P5016, _lex_param_0
    find_lex $P5017, "$?CLASS"
    repr_get_attr_int $I5014, $P5016, $P5017, "$!pos"
    $P5018 = $P101."!cursor_pass"($I5014, "ww")
  if251_end777:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "wb" :subid("cuid_68_1358115315.353") :anon :lex :outer("cuid_81_1358115315.353")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 920
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "$target", $S101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P101, $P5001
    set $S101, ""
.annotate 'line', 921
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start"()
    set $P101, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!shared"
    nqp_get_sc_object $P5007, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 31
    repr_get_attr_str $S5001, $P5006, $P5007, "$!target"
    set $S101, $S5001
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_int $I5002, $P5008, $P5009, "$!pos"
    set $N5001, $I5002
    set $N5002, 0
    iseq $I5001, $N5001, $N5002
    set $I5005, $I5001
    unless $I5001 goto if258_end791 
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5004, $P5010, $P5011, "$!pos"
    is_cclass $I5003, .CCLASS_WORD, $S101, $I5004
    set $I5005, $I5003
  if258_end791:
    set $I5013, $I5005
    if $I5005 goto unless257_end789 
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5007, $P5012, $P5013, "$!pos"
    set $N5003, $I5007
    length $I5008, $S101
    set $N5004, $I5008
    iseq $I5006, $N5003, $N5004
    set $I5012, $I5006
    unless $I5006 goto if259_end793 
    nqp_decontainerize $P5014, _lex_param_0
    find_lex $P5015, "$?CLASS"
    repr_get_attr_int $I5010, $P5014, $P5015, "$!pos"
    set $N5006, $I5010
    set $N5007, 1
    sub $N5005, $N5006, $N5007
    set $I5011, $N5005
    is_cclass $I5009, .CCLASS_WORD, $S101, $I5011
    set $I5012, $I5009
  if259_end793:
    set $I5013, $I5012
  unless257_end789:
    set $I5020, $I5013
    if $I5013 goto unless256_end787 
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
  unless256_end787:
    unless $I5020 goto if255_end785 
.annotate 'line', 923
    nqp_decontainerize $P5020, _lex_param_0
    find_lex $P5021, "$?CLASS"
    repr_get_attr_int $I5021, $P5020, $P5021, "$!pos"
    $P5022 = $P101."!cursor_pass"($I5021, "wb")
  if255_end785:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "ident" :subid("cuid_69_1358115315.353") :anon :lex :outer("cuid_81_1358115315.353")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 932
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "$target", $S101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P101, $P5001
    set $S101, ""
.annotate 'line', 933
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start"()
    set $P101, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!shared"
    nqp_get_sc_object $P5007, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 31
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
    unless $I5001 goto if261_end797 
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5006, $P5010, $P5011, "$!pos"
    ord $I5005, $S101, $I5006
    set $N5003, $I5005
    set $N5004, 95
    iseq $I5004, $N5003, $N5004
    set $I5009, $I5004
    if $I5004 goto unless262_end799 
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5008, $P5012, $P5013, "$!pos"
    is_cclass $I5007, .CCLASS_ALPHABETIC, $S101, $I5008
    set $I5009, $I5007
  unless262_end799:
    set $I5010, $I5009
  if261_end797:
    unless $I5010 goto if260_end795 
.annotate 'line', 935
    nqp_decontainerize $P5014, _lex_param_0
    find_lex $P5015, "$?CLASS"
    repr_get_attr_int $I5012, $P5014, $P5015, "$!pos"
    length $I5013, $S101
    find_not_cclass $I5011, .CCLASS_WORD, $S101, $I5012, $I5013
    $P5016 = $P101."!cursor_pass"($I5011)
  if260_end795:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "alpha" :subid("cuid_70_1358115315.353") :anon :lex :outer("cuid_81_1358115315.353")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 945
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "$target", $S101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P101, $P5001
    set $S101, ""
.annotate 'line', 946
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start"()
    set $P101, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!shared"
    nqp_get_sc_object $P5007, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 31
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
    unless $I5001 goto if264_end803 
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, .CCLASS_ALPHABETIC, $S101, $I5005
    set $I5009, $I5004
    if $I5004 goto unless265_end805 
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5008, $P5012, $P5013, "$!pos"
    ord $I5007, $S101, $I5008
    set $N5003, $I5007
    set $N5004, 95
    iseq $I5006, $N5003, $N5004
    set $I5009, $I5006
  unless265_end805:
    set $I5010, $I5009
  if264_end803:
    unless $I5010 goto if263_end801 
.annotate 'line', 948
    nqp_decontainerize $P5014, _lex_param_0
    find_lex $P5015, "$?CLASS"
    repr_get_attr_int $I5011, $P5014, $P5015, "$!pos"
    set $N5006, $I5011
    set $N5007, 1
    add $N5005, $N5006, $N5007
    $P5016 = $P101."!cursor_pass"($N5005, "alpha")
  if263_end801:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "alnum" :subid("cuid_71_1358115315.353") :anon :lex :outer("cuid_81_1358115315.353")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 955
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "$target", $S101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P101, $P5001
    set $S101, ""
.annotate 'line', 956
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start"()
    set $P101, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!shared"
    nqp_get_sc_object $P5007, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 31
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
    unless $I5001 goto if267_end809 
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, .CCLASS_ALPHANUMERIC, $S101, $I5005
    set $I5009, $I5004
    if $I5004 goto unless268_end811 
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5008, $P5012, $P5013, "$!pos"
    ord $I5007, $S101, $I5008
    set $N5003, $I5007
    set $N5004, 95
    iseq $I5006, $N5003, $N5004
    set $I5009, $I5006
  unless268_end811:
    set $I5010, $I5009
  if267_end809:
    unless $I5010 goto if266_end807 
.annotate 'line', 958
    nqp_decontainerize $P5014, _lex_param_0
    find_lex $P5015, "$?CLASS"
    repr_get_attr_int $I5011, $P5014, $P5015, "$!pos"
    set $N5006, $I5011
    set $N5007, 1
    add $N5005, $N5006, $N5007
    $P5016 = $P101."!cursor_pass"($N5005, "alnum")
  if266_end807:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "upper" :subid("cuid_72_1358115315.353") :anon :lex :outer("cuid_81_1358115315.353")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 965
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "$target", $S101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P101, $P5001
    set $S101, ""
.annotate 'line', 966
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start"()
    set $P101, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!shared"
    nqp_get_sc_object $P5007, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 31
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
    unless $I5001 goto if270_end815 
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, .CCLASS_UPPERCASE, $S101, $I5005
    set $I5006, $I5004
  if270_end815:
    unless $I5006 goto if269_end813 
.annotate 'line', 968
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5007, $P5012, $P5013, "$!pos"
    set $N5004, $I5007
    set $N5005, 1
    add $N5003, $N5004, $N5005
    $P5014 = $P101."!cursor_pass"($N5003, "upper")
  if269_end813:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "lower" :subid("cuid_73_1358115315.353") :anon :lex :outer("cuid_81_1358115315.353")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 974
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "$target", $S101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P101, $P5001
    set $S101, ""
.annotate 'line', 975
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start"()
    set $P101, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!shared"
    nqp_get_sc_object $P5007, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 31
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
    unless $I5001 goto if272_end819 
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, .CCLASS_LOWERCASE, $S101, $I5005
    set $I5006, $I5004
  if272_end819:
    unless $I5006 goto if271_end817 
.annotate 'line', 977
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5007, $P5012, $P5013, "$!pos"
    set $N5004, $I5007
    set $N5005, 1
    add $N5003, $N5004, $N5005
    $P5014 = $P101."!cursor_pass"($N5003, "lower")
  if271_end817:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "digit" :subid("cuid_74_1358115315.353") :anon :lex :outer("cuid_81_1358115315.353")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 983
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "$target", $S101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P101, $P5001
    set $S101, ""
.annotate 'line', 984
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start"()
    set $P101, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!shared"
    nqp_get_sc_object $P5007, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 31
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
    unless $I5001 goto if274_end823 
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, .CCLASS_NUMERIC, $S101, $I5005
    set $I5006, $I5004
  if274_end823:
    unless $I5006 goto if273_end821 
.annotate 'line', 986
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5007, $P5012, $P5013, "$!pos"
    set $N5004, $I5007
    set $N5005, 1
    add $N5003, $N5004, $N5005
    $P5014 = $P101."!cursor_pass"($N5003, "digit")
  if273_end821:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "xdigit" :subid("cuid_75_1358115315.353") :anon :lex :outer("cuid_81_1358115315.353")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 992
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "$target", $S101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P101, $P5001
    set $S101, ""
.annotate 'line', 993
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start"()
    set $P101, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!shared"
    nqp_get_sc_object $P5007, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 31
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
    unless $I5001 goto if276_end827 
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, .CCLASS_HEXADECIMAL, $S101, $I5005
    set $I5006, $I5004
  if276_end827:
    unless $I5006 goto if275_end825 
.annotate 'line', 995
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5007, $P5012, $P5013, "$!pos"
    set $N5004, $I5007
    set $N5005, 1
    add $N5003, $N5004, $N5005
    $P5014 = $P101."!cursor_pass"($N5003, "xdigit")
  if275_end825:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "space" :subid("cuid_76_1358115315.353") :anon :lex :outer("cuid_81_1358115315.353")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1001
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "$target", $S101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P101, $P5001
    set $S101, ""
.annotate 'line', 1002
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start"()
    set $P101, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!shared"
    nqp_get_sc_object $P5007, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 31
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
    unless $I5001 goto if278_end831 
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, .CCLASS_WHITESPACE, $S101, $I5005
    set $I5006, $I5004
  if278_end831:
    unless $I5006 goto if277_end829 
.annotate 'line', 1004
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5007, $P5012, $P5013, "$!pos"
    set $N5004, $I5007
    set $N5005, 1
    add $N5003, $N5004, $N5005
    $P5014 = $P101."!cursor_pass"($N5003, "space")
  if277_end829:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "blank" :subid("cuid_77_1358115315.353") :anon :lex :outer("cuid_81_1358115315.353")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1010
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "$target", $S101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P101, $P5001
    set $S101, ""
.annotate 'line', 1011
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start"()
    set $P101, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!shared"
    nqp_get_sc_object $P5007, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 31
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
    unless $I5001 goto if280_end835 
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, .CCLASS_BLANK, $S101, $I5005
    set $I5006, $I5004
  if280_end835:
    unless $I5006 goto if279_end833 
.annotate 'line', 1013
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5007, $P5012, $P5013, "$!pos"
    set $N5004, $I5007
    set $N5005, 1
    add $N5003, $N5004, $N5005
    $P5014 = $P101."!cursor_pass"($N5003, "blank")
  if279_end833:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "cntrl" :subid("cuid_78_1358115315.353") :anon :lex :outer("cuid_81_1358115315.353")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1019
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "$target", $S101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P101, $P5001
    set $S101, ""
.annotate 'line', 1020
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start"()
    set $P101, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!shared"
    nqp_get_sc_object $P5007, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 31
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
    unless $I5001 goto if282_end839 
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, .CCLASS_CONTROL, $S101, $I5005
    set $I5006, $I5004
  if282_end839:
    unless $I5006 goto if281_end837 
.annotate 'line', 1022
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5007, $P5012, $P5013, "$!pos"
    set $N5004, $I5007
    set $N5005, 1
    add $N5003, $N5004, $N5005
    $P5014 = $P101."!cursor_pass"($N5003, "cntrl")
  if281_end837:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "punct" :subid("cuid_79_1358115315.353") :anon :lex :outer("cuid_81_1358115315.353")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1028
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "$target", $S101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P101, $P5001
    set $S101, ""
.annotate 'line', 1029
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start"()
    set $P101, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!shared"
    nqp_get_sc_object $P5007, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 31
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
    unless $I5001 goto if284_end843 
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, .CCLASS_PUNCTUATION, $S101, $I5005
    set $I5006, $I5004
  if284_end843:
    unless $I5006 goto if283_end841 
.annotate 'line', 1031
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5007, $P5012, $P5013, "$!pos"
    set $N5004, $I5007
    set $N5005, 1
    add $N5003, $N5004, $N5005
    $P5014 = $P101."!cursor_pass"($N5003, "punct")
  if283_end841:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "FAILGOAL" :subid("cuid_80_1358115315.353") :anon :lex :outer("cuid_81_1358115315.353")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1037
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :optional 
    .param int haz_param_21 :opt_flag 
    if haz_param_21, default846
    nqp_get_sc_object $P5004, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set _lex_param_2, $P5004
  default846:
    .lex "self", _lex_param_0 
    .lex "$goal", _lex_param_1 
    .lex "$dba", _lex_param_2 
    if _lex_param_2 goto unless285_end845 
.annotate 'line', 1038
    getinterp $P5001
    set $P5001, $P5001['sub';1]
    set $S5001, $P5001
    box $P5002, $S5001
    set _lex_param_2, $P5002
  unless285_end845:
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
.sub "" :subid("cuid_94_1358115315.353") :anon :lex :outer("cuid_1_1358115315.353")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1046
    .const 'Sub' $P5013 = 'cuid_82_1358115315.353' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_83_1358115315.353' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_84_1358115315.353' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_85_1358115315.353' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_86_1358115315.353' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_87_1358115315.353' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_88_1358115315.353' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_89_1358115315.353' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_90_1358115315.353' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_91_1358115315.353' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_92_1358115315.353' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_93_1358115315.353' 
    capture_lex $P5013 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_82_1358115315.353' 
    capture_lex $P5001
    .const 'Sub' $P5002 = 'cuid_83_1358115315.353' 
    capture_lex $P5002
    .const 'Sub' $P5003 = 'cuid_84_1358115315.353' 
    capture_lex $P5003
    .const 'Sub' $P5004 = 'cuid_85_1358115315.353' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_86_1358115315.353' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_87_1358115315.353' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_88_1358115315.353' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_89_1358115315.353' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_90_1358115315.353' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_91_1358115315.353' 
    capture_lex $P5010
    .const 'Sub' $P5011 = 'cuid_92_1358115315.353' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_93_1358115315.353' 
    capture_lex $P5012
    .return ($P5012) 
.end
.HLL "nqp"
.namespace []
.sub "from" :subid("cuid_82_1358115315.353") :anon :lex :outer("cuid_94_1358115315.353")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1053
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 84
    repr_get_attr_int $I5001, $P5001, $P5002, "$!from"
    .return ($I5001) 
.end
.HLL "nqp"
.namespace []
.sub "orig" :subid("cuid_83_1358115315.353") :anon :lex :outer("cuid_94_1358115315.353")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1054
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 84
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!orig"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "to" :subid("cuid_84_1358115315.353") :anon :lex :outer("cuid_94_1358115315.353")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1055
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 84
    repr_get_attr_int $I5001, $P5001, $P5002, "$!to"
    .return ($I5001) 
.end
.HLL "nqp"
.namespace []
.sub "CURSOR" :subid("cuid_85_1358115315.353") :anon :lex :outer("cuid_94_1358115315.353")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1056
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 84
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!cursor"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "Str" :subid("cuid_86_1358115315.353") :anon :lex :outer("cuid_94_1358115315.353")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1057
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 84
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!orig"
    set $S5002, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 84
    repr_get_attr_int $I5001, $P5004, $P5005, "$!from"
    nqp_decontainerize $P5006, _lex_param_0
    nqp_get_sc_object $P5007, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 84
    repr_get_attr_int $I5002, $P5006, $P5007, "$!to"
    set $N5002, $I5002
    nqp_decontainerize $P5008, _lex_param_0
    nqp_get_sc_object $P5009, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 84
    repr_get_attr_int $I5003, $P5008, $P5009, "$!from"
    set $N5003, $I5003
    sub $N5001, $N5002, $N5003
    set $I5004, $N5001
    substr $S5001, $S5002, $I5001, $I5004
    .return ($S5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_87_1358115315.353") :anon :lex :outer("cuid_94_1358115315.353")
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
.sub "" :subid("cuid_88_1358115315.353") :anon :lex :outer("cuid_94_1358115315.353")
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
.sub "Bool" :subid("cuid_89_1358115315.353") :anon :lex :outer("cuid_94_1358115315.353")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1060
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 84
    repr_get_attr_int $I5002, $P5001, $P5002, "$!to"
    set $N5001, $I5002
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 84
    repr_get_attr_int $I5003, $P5003, $P5004, "$!from"
    set $N5002, $I5003
    isge $I5001, $N5001, $N5002
    .return ($I5001) 
.end
.HLL "nqp"
.namespace []
.sub "chars" :subid("cuid_90_1358115315.353") :anon :lex :outer("cuid_94_1358115315.353")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1061
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 84
    repr_get_attr_int $I5002, $P5001, $P5002, "$!to"
    set $N5001, $I5002
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 84
    repr_get_attr_int $I5003, $P5003, $P5004, "$!from"
    set $N5002, $I5003
    isge $I5001, $N5001, $N5002
    unless $I5001 goto if286_else847 
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 84
    repr_get_attr_int $I5004, $P5005, $P5006, "$!to"
    set $N5004, $I5004
    nqp_decontainerize $P5007, _lex_param_0
    nqp_get_sc_object $P5008, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 84
    repr_get_attr_int $I5005, $P5007, $P5008, "$!from"
    set $N5005, $I5005
    sub $N5003, $N5004, $N5005
    box $P5010, $N5003
    set $P5009, $P5010
    goto if286_end848
  if286_else847:
    box $P5011, 0
    set $P5009, $P5011
  if286_end848:
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "!make" :subid("cuid_91_1358115315.353") :anon :lex :outer("cuid_94_1358115315.353")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1063
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$ast", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 84
    repr_bind_attr_obj $P5001, $P5002, "$!ast", _lex_param_1
    .return (_lex_param_1) 
.end
.HLL "nqp"
.namespace []
.sub "ast" :subid("cuid_92_1358115315.353") :anon :lex :outer("cuid_94_1358115315.353")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1064
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 84
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!ast"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "!dump_str" :subid("cuid_93_1358115315.353") :anon :lex :outer("cuid_94_1358115315.353")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1066
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5019 = 'cuid_149_1358115315.353' 
    capture_lex $P5019 
    .const 'Sub' $P5019 = 'cuid_150_1358115315.353' 
    capture_lex $P5019 
    .lex "&dump_array", $P101 
    .lex "$str", $P102 
    .lex "self", _lex_param_0 
    .lex "$key", _lex_param_1 
    .const 'Sub' $P5001 = 'cuid_149_1358115315.353' 
    capture_lex $P5001
    set $P101, $P5001
    nqp_get_sc_object $P5002, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
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
  for_next856:
    unless $P5014, for_done858
    shift $P5018, $P5014
  for_redo857:
    .const 'Sub' $P5017 = 'cuid_150_1358115315.353' 
    capture_lex $P5017
    $P5012 = $P5017($P5018)
    goto for_next856
  for_done858:
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "dump_array" :subid("cuid_149_1358115315.353") :anon :lex :outer("cuid_93_1358115315.353")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1067
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5011 = 'cuid_148_1358115315.353' 
    capture_lex $P5011 
    .lex "$str", $P101 
    .lex "$key", _lex_param_0 
    .lex "$item", _lex_param_1 
    nqp_get_sc_object $P5001, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P101, $P5001
    box $P5002, ""
    set $P101, $P5002
.annotate 'line', 1069
    nqp_get_sc_object $P5003, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 43
    $P5004 = $P5003."ACCEPTS"(_lex_param_1)
    unless $P5004 goto if287_else849 
    set $S5002, $P101
.annotate 'line', 1070
    $P5005 = _lex_param_1."!dump_str"(_lex_param_0)
    set $S5003, $P5005
    concat $S5001, $S5002, $S5003
    box $P5006, $S5001
    set $P101, $P5006
    goto if287_end850
  if287_else849:
    isnull $I5002, _lex_param_1
    not $I5001, $I5002
    box $P5010, $I5001
    set $P5009, $P5010
    unless $I5001 goto if288_end852 
    .const 'Sub' $P5007 = 'cuid_148_1358115315.353' 
    capture_lex $P5007
    $P5008 = $P5007()
    set $P5009, $P5008
  if288_end852:
  if287_end850:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_148_1358115315.353") :anon :lex :outer("cuid_149_1358115315.353")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1072
    .const 'Sub' $P5009 = 'cuid_147_1358115315.353' 
    capture_lex $P5009 
    .lex "$n", $P101 
    nqp_get_sc_object $P5001, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P101, $P5001
    box $P5002, 0
    set $P101, $P5002
    find_lex $P5006, "$item"
    set $P5003, $P5006
    iter $P5005, $P5006
  for_next853:
    unless $P5005, for_done855
    shift $P5008, $P5005
  for_redo854:
    .const 'Sub' $P5007 = 'cuid_147_1358115315.353' 
    capture_lex $P5007
    $P5003 = $P5007($P5008)
    goto for_next853
  for_done855:
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_147_1358115315.353") :anon :lex :outer("cuid_148_1358115315.353")
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
.sub "" :subid("cuid_150_1358115315.353") :anon :lex :outer("cuid_93_1358115315.353")
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
.sub "" :subid("cuid_100_1358115315.353") :anon :lex :outer("cuid_1_1358115315.353")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1085
    .const 'Sub' $P5010 = 'cuid_95_1358115315.353' 
    capture_lex $P5010 
    .const 'Sub' $P5010 = 'cuid_96_1358115315.353' 
    capture_lex $P5010 
    .const 'Sub' $P5010 = 'cuid_97_1358115315.353' 
    capture_lex $P5010 
    .const 'Sub' $P5010 = 'cuid_98_1358115315.353' 
    capture_lex $P5010 
    .const 'Sub' $P5010 = 'cuid_99_1358115315.353' 
    capture_lex $P5010 
    .lex "$EMPTY_MATCH_LIST", $P101 
    .lex "$EMPTY_MATCH_HASH", $P102 
    .lex "$?PACKAGE", $P103 
    .lex "$?CLASS", $P104 
    nqp_get_sc_object $P5001, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P101, $P5001
    nqp_get_sc_object $P5002, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P102, $P5002
    new $P5003, 'ResizablePMCArray'
    set $P101, $P5003
    new $P5004, 'Hash'
    set $P102, $P5004
    .const 'Sub' $P5005 = 'cuid_95_1358115315.353' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_96_1358115315.353' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_97_1358115315.353' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_98_1358115315.353' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_99_1358115315.353' 
    capture_lex $P5009
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "MATCH" :subid("cuid_95_1358115315.353") :anon :lex :outer("cuid_100_1358115315.353")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1088
    .param pmc _lex_param_0 
    .const 'Sub' $P5008 = 'cuid_151_1358115315.353' 
    capture_lex $P5008 
    .lex "$match", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P101, $P5001
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 97
    getattribute $P5002, $P5003, $P5004, "$!match"
    set $P101, $P5002
    nqp_get_sc_object $P5005, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 84
    type_check $I5001, $P101, $P5005
    set $I5003, $I5001
    if $I5001 goto unless290_end862 
    nqp_ishash $I5002, $P101
    set $I5003, $I5002
  unless290_end862:
    if $I5003 goto unless289_end860 
    .const 'Sub' $P5006 = 'cuid_151_1358115315.353' 
    capture_lex $P5006
    $P5007 = $P5006()
  unless289_end860:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_151_1358115315.353") :anon :lex :outer("cuid_95_1358115315.353")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1090
    .lex "$list", $P101 
    .lex "$hash", $P102 
    .lex "%ch", $P103 
    .lex "$key", $S101 
    .lex "$iter", $P104 
    nqp_get_sc_object $P5001, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P101, $P5001
    nqp_get_sc_object $P5002, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P102, $P5002
    new $P5003, 'Hash'
    set $P103, $P5003
    set $S101, ""
    nqp_get_sc_object $P5004, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P104, $P5004
    find_lex $P5005, "$EMPTY_MATCH_LIST"
    set $P101, $P5005
    find_lex $P5006, "$EMPTY_MATCH_HASH"
    set $P102, $P5006
    nqp_get_sc_object $P5008, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 84
    repr_instance_of $P5007, $P5008
    store_lex "$match", $P5007
    find_lex $P5010, "self"
    nqp_decontainerize $P5009, $P5010
    nqp_get_sc_object $P5011, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 97
    find_lex $P5012, "$match"
    setattribute $P5009, $P5011, "$!match", $P5012
    find_lex $P5013, "$match"
    nqp_get_sc_object $P5014, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 84
    find_lex $P5016, "self"
    nqp_decontainerize $P5015, $P5016
    setattribute $P5013, $P5014, "$!cursor", $P5015
    find_lex $P5017, "$match"
    nqp_get_sc_object $P5018, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 84
.annotate 'line', 1096
    find_lex $P5020, "self"
    nqp_decontainerize $P5019, $P5020
    $P5021 = $P5019."orig"()
    setattribute $P5017, $P5018, "$!orig", $P5021
    find_lex $P5022, "$match"
    nqp_get_sc_object $P5023, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 84
    find_lex $P5025, "self"
    nqp_decontainerize $P5024, $P5025
    nqp_get_sc_object $P5026, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 97
    repr_get_attr_int $I5001, $P5024, $P5026, "$!from"
    repr_bind_attr_int $P5022, $P5023, "$!from", $I5001
    find_lex $P5027, "$match"
    nqp_get_sc_object $P5028, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 84
    find_lex $P5030, "self"
    nqp_decontainerize $P5029, $P5030
    nqp_get_sc_object $P5031, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 97
    repr_get_attr_int $I5002, $P5029, $P5031, "$!pos"
    repr_bind_attr_int $P5027, $P5028, "$!to", $I5002
.annotate 'line', 1099
    find_lex $P5033, "self"
    nqp_decontainerize $P5032, $P5033
    $P5034 = $P5032."CAPHASH"()
    set $P103, $P5034
    iter $P5035, $P103
    set $P104, $P5035
  while291_test863:
    set $P5051, $P104
    unless $P104 goto while291_done867 
  while291_redo865:
.annotate 'line', 1102
    shift $P5036, $P104
    set $S5001, $P5036
    set $S101, $S5001
    iseq $I5003, $S101, "$!from"
    set $I5005, $I5003
    if $I5003 goto unless293_end871 
    iseq $I5004, $S101, "$!to"
    set $I5005, $I5004
  unless293_end871:
    unless $I5005 goto if292_else868 
.annotate 'line', 1104
    find_lex $P5037, "$match"
    nqp_get_sc_object $P5038, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 84
.annotate 'line', 1105
    set $P5039, $P103[$S101]
    unless_null $P5039, fallback872
    nqp_get_sc_object $P5040, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5039, $P5040
  fallback872:
    $P5041 = $P5039."from"()
    set $I5006, $P5041
    repr_bind_attr_int $P5037, $P5038, $S101, $I5006
    box $P5050, $I5006
    set $P5049, $P5050
    goto if292_end869
  if292_else868:
    is_cclass $I5007, .CCLASS_NUMERIC, $S101, 0
    unless $I5007 goto if294_else873 
.annotate 'line', 1107
    if $P101 goto unless295_end876 
    new $P5042, 'ResizablePMCArray'
    set $P101, $P5042
  unless295_end876:
    set $I5008, $S101
    set $P5043, $P103[$S101]
    unless_null $P5043, fallback877
    nqp_get_sc_object $P5044, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5043, $P5044
  fallback877:
    set $P101[$I5008], $P5043
    set $P5048, $P5043
    goto if294_end874
  if294_else873:
.annotate 'line', 1111
    if $P102 goto unless296_end879 
    new $P5045, 'Hash'
    set $P102, $P5045
  unless296_end879:
    set $P5046, $P103[$S101]
    unless_null $P5046, fallback880
    nqp_get_sc_object $P5047, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P5046, $P5047
  fallback880:
    set $P102[$S101], $P5046
    set $P5048, $P5046
  if294_end874:
    set $P5049, $P5048
  if292_end869:
    set $P5051, $P5049
    goto while291_test863 
  while291_done867:
    find_lex $P5052, "$match"
    nqp_get_sc_object $P5053, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 43
    setattribute $P5052, $P5053, "@!array", $P101
    find_lex $P5054, "$match"
    nqp_get_sc_object $P5055, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 43
    setattribute $P5054, $P5055, "%!hash", $P102
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "Bool" :subid("cuid_96_1358115315.353") :anon :lex :outer("cuid_100_1358115315.353")
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
    unless $I5001 goto if297_end882 
    nqp_decontainerize $P5005, _lex_param_0
    find_lex $P5006, "$?CLASS"
    getattribute $P5004, $P5005, $P5006, "$!match"
    istrue $I5003, $P5004
    set $I5004, $I5003
  if297_end882:
    .return ($I5004) 
.end
.HLL "nqp"
.namespace []
.sub "parse" :subid("cuid_97_1358115315.353") :anon :lex :outer("cuid_100_1358115315.353")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1127
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :named("rule") :optional 
    .param int haz_param_22 :opt_flag 
    .param pmc _lex_param_3 :named("actions") :optional 
    .param int haz_param_23 :opt_flag 
    .param pmc _lex_param_4 :slurpy :named 
    if haz_param_22, default885
    box $P5011, "TOP"
    set _lex_param_2, $P5011
  default885:
    if haz_param_23, default886
    nqp_get_sc_object $P5012, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set _lex_param_3, $P5012
  default886:
    .lex "$*ACTIONS", $P101 
    .lex "$cur", $P102 
    .lex "self", _lex_param_0 
    .lex "$target", _lex_param_1 
    .lex "$rule", _lex_param_2 
    .lex "$actions", _lex_param_3 
    .lex "%options", _lex_param_4 
    nqp_get_sc_object $P5001, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P101, $P5001
    nqp_get_sc_object $P5002, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P102, $P5002
    set $P101, _lex_param_3
.annotate 'line', 1129
    nqp_decontainerize $P5003, _lex_param_0
    $P5004 = $P5003."!cursor_init"(_lex_param_1, _lex_param_4 :flat :named)
    set $P102, $P5004
    is_invokable $I5001, _lex_param_2
    unless $I5001 goto if298_else883 
.annotate 'line', 1131
    $P5005 = _lex_param_2($P102)
    $P5006 = $P5005."MATCH"()
    set $P5010, $P5006
    goto if298_end884
  if298_else883:
.annotate 'line', 1132
    set $S5001, _lex_param_2
    find_method $P5007, $P102, $S5001
    $P5008 = $P5007($P102)
    $P5009 = $P5008."MATCH"()
    set $P5010, $P5009
  if298_end884:
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "!INTERPOLATE" :subid("cuid_98_1358115315.353") :anon :lex :outer("cuid_100_1358115315.353")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1135
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5006 = 'cuid_156_1358115315.353' 
    capture_lex $P5006 
    .const 'Sub' $P5006 = 'cuid_157_1358115315.353' 
    capture_lex $P5006 
    .lex "self", _lex_param_0 
    .lex "$var", _lex_param_1 
    root_new $P101, ['parrot';'Continuation']
    set_label $P101, lexotic_887
    .lex "RETURN", $P101
    nqp_islist $I5001, _lex_param_1
    unless $I5001 goto if299_else889 
    .const 'Sub' $P5001 = 'cuid_156_1358115315.353' 
    capture_lex $P5001
    $P5002 = $P5001()
    set $P5005, $P5002
    goto if299_end890
  if299_else889:
    .const 'Sub' $P5003 = 'cuid_157_1358115315.353' 
    capture_lex $P5003
    $P5004 = $P5003()
    set $P5005, $P5004
  if299_end890:
    goto lexotic_888
  lexotic_887:
    .get_results ($P5005)
  lexotic_888:
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_156_1358115315.353") :anon :lex :outer("cuid_98_1358115315.353")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1136
    .const 'Sub' $P5016 = 'cuid_154_1358115315.353' 
    capture_lex $P5016 
    .lex "$maxlen", $I101 
    .lex "$cur", $P101 
    .lex "$pos", $I102 
    .lex "$tgt", $S101 
    .lex "$eos", $I103 
    set $I101, 0
    nqp_get_sc_object $P5001, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
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
  for_next903:
    unless $P5009, for_done905
    shift $P5012, $P5009
  for_redo904:
    .const 'Sub' $P5011 = 'cuid_154_1358115315.353' 
    capture_lex $P5011
    $P5007 = $P5011($P5012)
    goto for_next903
  for_done905:
    set $N5001, $I101
    set $N5002, 0
    isge $I5003, $N5001, $N5002
    unless $I5003 goto if306_end907 
.annotate 'line', 1157
    set $N5004, $I102
    set $N5005, $I101
    add $N5003, $N5004, $N5005
    $P5013 = $P101."!cursor_pass"($N5003, "")
  if306_end907:
    find_lex $P5014, "RETURN"
    $P5015 = $P5014($P101)
    .return ($P5015) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_154_1358115315.353") :anon :lex :outer("cuid_156_1358115315.353")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1142
    .param pmc _lex_param_0 
    .const 'Sub' $P5006 = 'cuid_153_1358115315.353' 
    capture_lex $P5006 
    .const 'Sub' $P5006 = 'cuid_155_1358115315.353' 
    capture_lex $P5006 
    .lex "$_", _lex_param_0 
    is_invokable $I5001, _lex_param_0
    unless $I5001 goto if300_else891 
    .const 'Sub' $P5001 = 'cuid_153_1358115315.353' 
    capture_lex $P5001
    $P5002 = $P5001()
    set $P5005, $P5002
    goto if300_end892
  if300_else891:
    .const 'Sub' $P5003 = 'cuid_155_1358115315.353' 
    capture_lex $P5003
    $P5004 = $P5003()
    set $P5005, $P5004
  if300_end892:
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_153_1358115315.353") :anon :lex :outer("cuid_154_1358115315.353")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1143
    .const 'Sub' $P5009 = 'cuid_152_1358115315.353' 
    capture_lex $P5009 
    .lex "$res", $P101 
    nqp_get_sc_object $P5001, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P101, $P5001
.annotate 'line', 1144
    find_lex $P5004, "self"
    nqp_decontainerize $P5003, $P5004
    find_lex $P5002, "$_"
    $P5005 = $P5002($P5003)
    set $P101, $P5005
    set $P5008, $P101
    unless $P101 goto if301_end894 
    .const 'Sub' $P5006 = 'cuid_152_1358115315.353' 
    capture_lex $P5006
    $P5007 = $P5006()
    set $P5008, $P5007
  if301_end894:
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_152_1358115315.353") :anon :lex :outer("cuid_153_1358115315.353")
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
    unless $I5004 goto if302_end896 
    store_lex "$maxlen", $I101
    set $I5006, $I101
  if302_end896:
    .return ($I5006) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_155_1358115315.353") :anon :lex :outer("cuid_154_1358115315.353")
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
    unless $I5002 goto if305_end902 
    find_lex $I5005, "$pos"
    set $N5004, $I5005
    set $N5005, $I101
    add $N5003, $N5004, $N5005
    find_lex $I5006, "$eos"
    set $N5006, $I5006
    isle $I5004, $N5003, $N5006
    set $I5007, $I5004
  if305_end902:
    set $I5010, $I5007
    unless $I5007 goto if304_end900 
    find_lex $S5003, "$tgt"
    find_lex $I5009, "$pos"
    substr $S5002, $S5003, $I5009, $I101
    find_lex $P5002, "$_"
    set $S5004, $P5002
    iseq $I5008, $S5002, $S5004
    set $I5010, $I5008
  if304_end900:
    set $I5011, $I5010
    unless $I5010 goto if303_end898 
    store_lex "$maxlen", $I101
    set $I5011, $I101
  if303_end898:
    .return ($I5011) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_157_1358115315.353") :anon :lex :outer("cuid_98_1358115315.353")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1160
    .lex "$cur", $P101 
    .lex "$pos", $I101 
    .lex "$tgt", $S101 
    .lex "$len", $I102 
    .lex "$adv", $I103 
    nqp_get_sc_object $P5001, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P101, $P5001
    set $I101, 0
    set $S101, ""
    set $I102, 0
    set $I103, 0
    find_lex $P5002, "$var"
    is_invokable $I5001, $P5002
    unless $I5001 goto if307_end909 
.annotate 'line', 1161
    find_lex $P5006, "self"
    nqp_decontainerize $P5005, $P5006
    find_lex $P5004, "$var"
    $P5007 = $P5004($P5005)
    find_lex $P5003, "RETURN"
    $P5008 = $P5003($P5007)
  if307_end909:
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
    if $I5005 goto unless309_end913 
    substr $S5003, $S101, $I101, $I102
    find_lex $P5015, "$var"
    set $S5004, $P5015
    isne $I5007, $S5003, $S5004
    set $I5008, $I5007
  unless309_end913:
    unless $I5008 goto if308_end911 
    find_lex $P5016, "RETURN"
    $P5017 = $P5016($P101)
  if308_end911:
.annotate 'line', 1169
    $P101."!cursor_pass"($I103, "")
    find_lex $P5018, "RETURN"
    $P5019 = $P5018($P101)
    .return ($P5019) 
.end
.HLL "nqp"
.namespace []
.sub "!INTERPOLATE_REGEX" :subid("cuid_99_1358115315.353") :anon :lex :outer("cuid_100_1358115315.353")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1174
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5007 = 'cuid_160_1358115315.353' 
    capture_lex $P5007 
    .lex "self", _lex_param_0 
    .lex "$var", _lex_param_1 
    root_new $P101, ['parrot';'Continuation']
    set_label $P101, lexotic_914
    .lex "RETURN", $P101
    is_invokable $I5001, _lex_param_1
    if $I5001 goto unless310_end917 
    .const 'Sub' $P5001 = 'cuid_160_1358115315.353' 
    capture_lex $P5001
    $P5002 = $P5001()
  unless310_end917:
.annotate 'line', 1190
    nqp_decontainerize $P5004, _lex_param_0
    $P5005 = $P5004."!INTERPOLATE"(_lex_param_1)
    find_lex $P5003, "RETURN"
    $P5006 = $P5003($P5005)
    goto lexotic_915
  lexotic_914:
    .get_results ($P5006)
  lexotic_915:
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_160_1358115315.353") :anon :lex :outer("cuid_99_1358115315.353")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1175
    .const 'Sub' $P5009 = 'cuid_159_1358115315.353' 
    capture_lex $P5009 
    .lex "$rxcompiler", $P101 
    nqp_get_sc_object $P5001, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P101, $P5001
    compreg $P5002, "QRegex::P6Regex"
    set $P101, $P5002
    find_lex $P5003, "$var"
    nqp_islist $I5001, $P5003
    unless $I5001 goto if311_else918 
    .const 'Sub' $P5004 = 'cuid_159_1358115315.353' 
    capture_lex $P5004
    $P5005 = $P5004()
    set $P5008, $P5005
    goto if311_end919
  if311_else918:
.annotate 'line', 1186
.annotate 'line', 1187
    find_lex $P5006, "$var"
    $P5007 = $P101."compile"($P5006)
    store_lex "$var", $P5007
    set $P5008, $P5007
  if311_end919:
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_159_1358115315.353") :anon :lex :outer("cuid_160_1358115315.353")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1177
    .const 'Sub' $P5009 = 'cuid_158_1358115315.353' 
    capture_lex $P5009 
    .lex "$res", $P101 
    nqp_get_sc_object $P5001, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P101, $P5001
    new $P5002, 'ResizablePMCArray'
    set $P101, $P5002
    find_lex $P5006, "$var"
    set $P5003, $P5006
    iter $P5005, $P5006
  for_next922:
    unless $P5005, for_done924
    shift $P5008, $P5005
  for_redo923:
    .const 'Sub' $P5007 = 'cuid_158_1358115315.353' 
    capture_lex $P5007
    $P5003 = $P5007($P5008)
    goto for_next922
  for_done924:
    store_lex "$var", $P101
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_158_1358115315.353") :anon :lex :outer("cuid_159_1358115315.353")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1179
    .param pmc _lex_param_0 
    .lex "$elem", $P101 
    .lex "$_", _lex_param_0 
    nqp_get_sc_object $P5001, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495", 22
    set $P101, $P5001
    set $P101, _lex_param_0
    is_invokable $I5001, $P101
    if $I5001 goto unless312_end921 
.annotate 'line', 1181
    find_lex $P5002, "$rxcompiler"
    $P5003 = $P5002."compile"($P101)
    set $P101, $P5003
  unless312_end921:
    find_lex $P5004, "$res"
    push $P5004, $P101
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_122_1358115315.353") :anon :lex :outer("cuid_1_1358115315.353")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1194
    .const 'Sub' $P5004 = 'cuid_119_1358115315.353' 
    capture_lex $P5004 
    .const 'Sub' $P5004 = 'cuid_120_1358115315.353' 
    capture_lex $P5004 
    .const 'Sub' $P5004 = 'cuid_121_1358115315.353' 
    capture_lex $P5004 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_119_1358115315.353' 
    capture_lex $P5001
    .const 'Sub' $P5002 = 'cuid_120_1358115315.353' 
    capture_lex $P5002
    .const 'Sub' $P5003 = 'cuid_121_1358115315.353' 
    capture_lex $P5003
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "new" :subid("cuid_119_1358115315.353") :anon :lex :outer("cuid_122_1358115315.353")
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
.sub "ACCEPTS" :subid("cuid_120_1358115315.353") :anon :lex :outer("cuid_122_1358115315.353")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1199
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$target", _lex_param_1 
.annotate 'line', 1200
    nqp_get_sc_object $P5001, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 97
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5001."parse"(_lex_param_1, $P5002 :named("rule"))
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "Str" :subid("cuid_121_1358115315.353") :anon :lex :outer("cuid_122_1358115315.353")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1202
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 103
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!code"
    set $S5001, $P5003
    .return ($S5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_124_1358115315.353") :anon :lex :outer("cuid_1_1358115315.353")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1207
    .const 'Sub' $P5002 = 'cuid_123_1358115315.353' 
    capture_lex $P5002 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_123_1358115315.353' 
    capture_lex $P5001
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "ACCEPTS" :subid("cuid_123_1358115315.353") :anon :lex :outer("cuid_124_1358115315.353")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1208
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$target", _lex_param_1 
.annotate 'line', 1209
    nqp_get_sc_object $P5001, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 97
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5001."parse"(_lex_param_1, $P5002 :named("rule"), 0 :named("c"))
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_162_1358115315.353") :load :init
.annotate 'file', "src\\stage2\\QRegex.nqp"
    .const 'Sub' $P5001 = 'cuid_161_1358115315.353' 
    capture_lex $P5001 
    .local pmc cur_sc 
    .local pmc conflicts 
    nqp_dynop_setup 
    nqp_bigint_setup 
    getinterp $P5001
    get_class $P5002, "LexPad"
    get_class $P5003, "NQPLexPad"
    $P5001."hll_map"($P5002, $P5003)
    load_bytecode "ModuleLoader.pbc"
    .const 'Sub' $P5001 = "cuid_1_1358115315.353" 
    get_hll_global $P5002, "ModuleLoader"
    $P5003 = $P5002."load_setting"("NQPCORE")
    $P5001."set_outer_ctx"($P5003)
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P5001, "ModuleLoader"
    $P5001."load_module"("QASTNode")
    nqp_create_sc $P5001, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378"
    set cur_sc, $P5001
    cur_sc."set_description"("src\\stage2\\QRegex.nqp")
    new $P5002, 'ResizablePMCArray'
    set conflicts, $P5002
    new $P5003, 'ResizableStringArray'
    null $S5001
    push $P5003, $S5001
    push $P5003, "P6opaque"
    push $P5003, "QAST"
    push $P5003, "QRegex"
    push $P5003, "NQPCursorRole"
    push $P5003, "NQPMatch"
    push $P5003, "NQPCursor"
    push $P5003, "NQPRegexMethod"
    push $P5003, "NQPRegex"
    push $P5003, "DEFAULT"
    push $P5003, "CREATE"
    push $P5003, "FF84D8D5C672E15F92950426E881346AC75F35B1-1358115312.495"
    push $P5003, "src\\stage2\\NQPCORE.setting"
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
    push $P5003, "from_saved"
    push $P5003, "addstate"
    push $P5003, "addedge"
    push $P5003, "states"
    push $P5003, "addnode"
    push $P5003, "regex_nfa"
    push $P5003, "fate"
    push $P5003, "alt"
    push $P5003, "anchor"
    push $P5003, "dba"
    push $P5003, "cclass"
    push $P5003, "concat"
    push $P5003, "enumcharlist"
    push $P5003, "literal"
    push $P5003, "subrule"
    push $P5003, "quant"
    push $P5003, "qastnode"
    push $P5003, "subcapture"
    push $P5003, "save"
    push $P5003, "mergesubrule"
    push $P5003, "mergesubstates"
    push $P5003, "run"
    push $P5003, "run_alt"
    push $P5003, "generic"
    push $P5003, "instantiate_generic"
    push $P5003, "$!states"
    push $P5003, "$!edges"
    push $P5003, "$!generic"
    push $P5003, "$!orig"
    push $P5003, "$!target"
    push $P5003, "$!highwater"
    push $P5003, "@!highexpect"
    push $P5003, "Uninstantiable"
    push $P5003, "BUILD"
    push $P5003, "list"
    push $P5003, "hash"
    push $P5003, "from"
    push $P5003, "orig"
    push $P5003, "to"
    push $P5003, "CURSOR"
    push $P5003, "Bool"
    push $P5003, "chars"
    push $P5003, "!make"
    push $P5003, "ast"
    push $P5003, "!dump_str"
    push $P5003, "@!array"
    push $P5003, "%!hash"
    push $P5003, "$!from"
    push $P5003, "$!to"
    push $P5003, "$!ast"
    push $P5003, "$!cursor"
    push $P5003, "MATCH"
    push $P5003, "parse"
    push $P5003, "!INTERPOLATE"
    push $P5003, "!INTERPOLATE_REGEX"
    push $P5003, "target"
    push $P5003, "pos"
    push $P5003, "CAPHASH"
    push $P5003, "!cursor_init"
    push $P5003, "!cursor_start"
    push $P5003, "!cursor_start_subcapture"
    push $P5003, "!cursor_capture"
    push $P5003, "!cursor_push_cstack"
    push $P5003, "!cursor_pass"
    push $P5003, "!cursor_fail"
    push $P5003, "!cursor_pos"
    push $P5003, "!cursor_next"
    push $P5003, "!cursor_more"
    push $P5003, "!reduce"
    push $P5003, "!reduce_with_match"
    push $P5003, "!shared"
    push $P5003, "!protoregex"
    push $P5003, "!protoregex_nfa"
    push $P5003, "!protoregex_table"
    push $P5003, "!alt"
    push $P5003, "!alt_nfa"
    push $P5003, "!precompute_nfas"
    push $P5003, "!dba"
    push $P5003, "!highwater"
    push $P5003, "!highexpect"
    push $P5003, "!fresh_highexpect"
    push $P5003, "!set_highexpect"
    push $P5003, "!clear_highwater"
    push $P5003, "!BACKREF"
    push $P5003, "!LITERAL"
    push $P5003, "at"
    push $P5003, "before"
    push $P5003, "after"
    push $P5003, "ws"
    push $P5003, "ww"
    push $P5003, "wb"
    push $P5003, "ident"
    push $P5003, "alpha"
    push $P5003, "alnum"
    push $P5003, "upper"
    push $P5003, "lower"
    push $P5003, "digit"
    push $P5003, "xdigit"
    push $P5003, "space"
    push $P5003, "blank"
    push $P5003, "cntrl"
    push $P5003, "punct"
    push $P5003, "FAILGOAL"
    push $P5003, "$!shared"
    push $P5003, "$!pos"
    push $P5003, "$!match"
    push $P5003, "$!name"
    push $P5003, "$!bstack"
    push $P5003, "$!cstack"
    push $P5003, "$!regexsub"
    push $P5003, "$!restart"
    push $P5003, "$!code"
    push $P5003, "__6MODEL_CORE__"
    push $P5003, "GLOBALish"
    push $P5003, "EXPORT"
    push $P5003, "E60633096CF77B7390FCE5E36C3EEE91D71E477F-1358115309.233"
    push $P5003, "src\\stage2\\gen\\nqp-mo.pm"
    push $P5003, "QRegex::NFA"
    push $P5003, "edges"
    push $P5003, "ParseShared"
    push $P5003, "highwater"
    push $P5003, "highexpect"
    push $P5003, "get_string"
    push $P5003, "get_integer"
    push $P5003, "get_number"
    push $P5003, "shared"
    push $P5003, "match"
    push $P5003, "name"
    push $P5003, "bstack"
    push $P5003, "cstack"
    push $P5003, "regexsub"
    push $P5003, "restart"
    push $P5003, "invoke"
    push $P5003, "code"
    push $P5003, "CompileTimeValue"
    push $P5003, "2A5BD8D2F017911EBF2A5D1B91B7A8E3733D2938-1358115313.755"
    push $P5003, "src\\stage2\\QASTNode.nqp"
    push $P5003, "SpecialArg"
    push $P5003, "Node"
    push $P5003, "Regex"
    push $P5003, "IVal"
    push $P5003, "NVal"
    push $P5003, "SVal"
    push $P5003, "BVal"
    push $P5003, "WVal"
    push $P5003, "Want"
    push $P5003, "Var"
    push $P5003, "VarWithFallback"
    push $P5003, "Op"
    push $P5003, "VM"
    push $P5003, "Stmts"
    push $P5003, "Stmt"
    push $P5003, "Block"
    push $P5003, "Unquote"
    push $P5003, "CompUnit"
    push $P5003, "InlinePlaceholder"
    push $P5003, "NFA"
    push $P5003, "$?PACKAGE"
    push $P5003, "$?ROLE"
    push $P5003, "$NO_CAPS"
    push $P5003, "$pass_mark"
    push $P5003, "@EMPTY"
    push $P5003, "$?CLASS"
    .const 'Sub' $P5004 = 'cuid_161_1358115315.353' 
    capture_lex $P5004
    $P5005 = $P5004()
    nqp_deserialize_sc "AQAAAEAAAAAEAAAAYAAAAA0AAADIAAAA+BYAAMUAAABIIwAAbEsAADIAAAAcUAAAAQAAACxQAABwUAAAAAAAAAsAAAAMAAAAiQAAAAAAAACMAAAAjQAAAKAAAAChAAAAAQAAAAAAAAABAAAA/AAAAAEAAACkAQAAAQAAAEwCAAABAAAAfgUAADkAAABqBwAAAQAAAKoHAAABAAAAuAoAAAEAAABqEAAAAQAAAP4RAAABAAAAqBMAAAEAAABaFQAAOQAAAPQVAAAAAAAAbQAAAAAAAAAAAAAACgAHAAAAAgAAAAIAAAAAAG4AAAADAAAAAgAAAAAAbwAAAAQAAAACAAAAAAAgAAAABQAAAAIAAAAAAFQAAAAGAAAAAgAAAAAAYQAAAAcAAAACAAAAAABnAAAACAAAAAIAAAAAAGsAAAAKAAAAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAQAAAAAAAAACAAAAAAAAAAAAAwAAAAAAcAAAAAAAAAABAAAACgABAAAACQAAAAIAAAAAAAIAAAAKAAAAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAAAAQAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAQAAAAAAAAACAAAAAAABAAAAAwAAAAAAcQAAAAAAAAACAAAACgABAAAABAAAAAIAAAAAACAAAAAKAAAAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAAAAgAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAQAAAAAAAAACAAAAAAACAAAAAwAAAAAAcgAAAAAAAAADAAAACgAAAAAACgAmAAAACgAAAAIAAQAAABcAAAANAAAAAgABAAAAGAAAAA4AAAACAAEAAAAZAAAADwAAAAIAAAAAAAQAAAAQAAAAAgABAAAAGwAAABEAAAACAAEAAAAeAAAA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EQAAAAIAAQAAAB4AAAASAAAAAgABAAAAIAAAABMAAAACAAEAAAAiAAAAFAAAAAIAAQAAACQAAAAVAAAAAgABAAAAJgAAABYAAAACAAAAAABpAAAAFwAAAAIAAQAAACkAAAAYAAAAAgABAAAAKgAAAAAAAAAAAAAAAgAAAAAAAAACAAAAAABnAAAAAgABAAAAFgAAAAQAAAAAAAAAAQAAAAAAAAAFAAAAAAAAAAMAAAAAAAAAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAQAAABYAAAD///////////////////////////////8AAAAAAAAAAAIAAAAAAAAAAgABAAAAFgAAAAMAAgAAAAAAZwAAAAoAAQAAAIgAAAAEAAAAAAAAAAAAAAAAAKsAAAAAAAAAawAAAAoAAAAAAAoADQAAAAoAAAACAAEAAAAXAAAADQAAAAIAAQAAABgAAAAOAAAAAgABAAAAGQAAAA8AAAACAAAAAABoAAAAEAAAAAIAAAAAAGoAAAARAAAAAgABAAAAHgAAABIAAAACAAEAAAAgAAAAEwAAAAIAAQAAACIAAAAUAAAAAgABAAAAJAAAABUAAAACAAEAAAAmAAAAFgAAAAIAAAAAAGwAAAAXAAAAAgABAAAAKQAAABgAAAACAAEAAAAqAAAAAAAAAAAAAAADAAAAAAAAAAIAAAAAAGsAAAACAAAAAABnAAAAAgABAAAAFgAAAAQAAAAAAAAAAQAAAAAAAAAFAAAAAAAAAAMAAAAAAAAAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAQAAABYAAAD///////////////////////////////8AAAAAAAAAAAMAAAAAAAAAAgABAAAAFgAAAAMAAgAAAAAAZwAAAAoAAQAAAIgAAAAEAAAAAAAAAAAAAgAAAAAAawAAAAMAAAAAAMIAAAAAAAAAbgAAAAoAFAAAAJ8AAAACAAQAAAADAAAAogAAAAIABAAAAAgAAACjAAAAAgAEAAAADAAAAKQAAAACAAQAAAAqAAAApQAAAAIABAAAADIAAACmAAAAAgAEAAAANwAAAKcAAAACAAQAAAA8AAAAqAAAAAIABAAAAEEAAACpAAAAAgAEAAAARQAAAKoAAAACAAQAAABKAAAAqwAAAAIABAAAAE8AAACsAAAAAgAEAAAAWAAAAK0AAAACAAQAAABaAAAArgAAAAIABAAAAGEAAACvAAAAAgAEAAAAZQAAALAAAAACAAQAAABpAAAAsQAAAAIABAAAAG0AAACyAAAAAgAEAAAAdQAAALMAAAACAAQAAAB4AAAAtAAAAAIABAAAAIIAAAAKAAAAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAAAbgAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAQAAAAAAAAACAAAAAABuAAAAAwAAAAAAwwAAAAAAAABvAAAACgABAAAAtQAAAAIAAAAAAAMAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAAbwAAAAMAAAAAAMQAAAAAAAAAqQAAAAMAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAAAAAAAAAAAAgAAAAAAAAAAAAAAAAAAAAMAAAAAAAAAAAAAAAEAAAAFAAAAAAAAAAEAAAABAAAABQAAABAAAAABAAAAAQAAAAUAAAAgAAAAAQAAAAEAAAAFAAAAMAAAAAEAAAABAAAABQAAAEAAAAABAAAAAQAAAAUAAABQAAAAAQAAAAEAAAAFAAAAYAAAAAEAAAABAAAABQAAAHAAAAABAAAAAQAAAAUAAACAAAAAAQAAAAEAAAAFAAAAkAAAAAEAAAABAAAABQAAAKAAAAABAAAAAQAAAAUAAACwAAAAAQAAAAEAAAAFAAAAwAAAAAEAAAABAAAABQAAANAAAAABAAAAAQAAAAUAAADgAAAAAQAAAAEAAAAFAAAA8AAAAAEAAAABAAAABQAAAAABAAABAAAAAQAAAAUAAAAQAQAAAQAAAAEAAAAFAAAAIAEAAAEAAAABAAAABQAAADABAAABAAAAAQAAAAUAAABAAQAAAQAAAAEAAAAFAAAAUAEAAAEAAAABAAAABQAAAGABAAABAAAAAQAAAAUAAABwAQAAAQAAAAEAAAAFAAAAgAEAAAEAAAABAAAABQAAAJABAAABAAAAAQAAAAUAAACgAQAAAQAAAAAAAAAEAAAAsAEAAAAAAAAAAAAABQAAALABAAAAAAAAAQAAAAUAAACwAQAAAQAAAAEAAAAFAAAAwAEAAAEAAAABAAAABQAAANABAAABAAAAAQAAAAUAAADgAQAAAQAAAAEAAAAFAAAA8AEAAAEAAAABAAAABQAAAAACAAABAAAAAQAAAAUAAAAQAgAAAQAAAAEAAAAFAAAAIAIAAAEAAAABAAAABQAAADACAAABAAAAAQAAAAUAAABAAgAAAQAAAAEAAAAFAAAAUAIAAAEAAAABAAAABQAAAGACAAABAAAAAQAAAAUAAABwAgAAAQAAAAEAAAAFAAAAgAIAAAEAAAABAAAABQAAAJACAAABAAAAAQAAAAUAAACgAgAAAQAAAAEAAAAFAAAAsAIAAAEAAAABAAAABQAAAMACAAABAAAAAQAAAAUAAADQAgAAAQAAAAEAAAAFAAAA4AIAAAEAAAABAAAABQAAAPACAAABAAAAAQAAAAUAAAAAAwAAAQAAAAEAAAAFAAAAEAMAAAEAAAABAAAABQAAACADAAABAAAAAQAAAAUAAAAwAwAAAQAAAAEAAAAFAAAAQAMAAAEAAAABAAAABQAAAFADAAABAAAAAQAAAAUAAABgAwAAAQAAAAEAAAAFAAAAcAMAAAEAAAABAAAABQAAAIADAAABAAAAAQAAAAUAAACQAwAAAQAAAAEAAAAFAAAAoAMAAAEAAAABAAAABQAAALADAAABAAAAAQAAAAUAAADAAwAAAQAAAAEAAAAFAAAA0AMAAAEAAAABAAAABQAAAOADAAABAAAAAQAAAAUAAADwAwAAAQAAAAEAAAAFAAAAAAQAAAEAAAABAAAABQAAABAEAAABAAAAAQAAAAUAAAAgBAAAAQAAAAEAAAAFAAAAMAQAAAEAAAABAAAABQAAAEAEAAABAAAAAQAAAAUAAABQBAAAAQAAAAEAAAAFAAAAYAQAAAEAAAABAAAABQAAAHAEAAABAAAAAQAAAAUAAACABAAAAQAAAAEAAAAFAAAAkAQAAAEAAAABAAAABQAAAKAEAAABAAAAAQAAAAUAAACwBAAAAQAAAAEAAAAFAAAAwAQAAAEAAAABAAAABQAAANAEAAABAAAAAAAAAAYAAADgBAAAAAAAAAEAAAAFAAAA4AQAAAEAAAABAAAABQAAAPAEAAABAAAAAQAAAAUAAAAABQAAAQAAAAEAAAAFAAAAEAUAAAEAAAABAAAABQAAACAFAAABAAAAAQAAAAUAAAAwBQAAAQAAAAEAAAAFAAAAQAUAAAEAAAABAAAABQAAAFAFAAABAAAAAQAAAAUAAABgBQAAAQAAAAEAAAAFAAAAcAUAAAEAAAABAAAABQAAAIAFAAABAAAAAQAAAAUAAACQBQAAAQAAAAAAAAAHAAAAoAUAAAAAAAABAAAABQAAAKAFAAABAAAAAQAAAAUAAACwBQAAAQAAAAEAAAAFAAAAwAUAAAEAAAABAAAABQAAANAFAAABAAAAAQAAAAUAAADgBQAAAQAAAAAAAAAIAAAA8AUAAAAAAAABAAAABQAAAPAFAAABAAAAAQAAAAUAAAAABgAAAQAAAAEAAAAFAAAAEAYAAAEAAAAAAAAACQAAACAGAAAAAAAAAQAAAAUAAAAgBgAAAQAAAAIAAAAAAAAAMAYAAAEAAAAAAAAACgAAAEAGAAAAAAAAAAAAAAsAAABABgAAAAAAAAIAAAAAAAAAQAYAAAEAAAACAAAAAAAAAFAGAAABAAAAAwAAAAcAAABgBgAAAQAAAAMAAAAHAAAAmgoAAAEAAAADAAAABgAAAKYMAAABAAAAAwAAAAcAAAASEAAAAQAAAAMAAAAHAAAAZhIAAAEAAAABAAAABQAAAHobAAABAAAAAQAAAAUAAACKGwAAAQAAAAEAAAAFAAAAmhsAAAEAAAABAAAABQAAAKobAAABAAAAAQAAAAUAAAC6GwAAAQAAAAEAAAAFAAAAyhsAAAEAAAABAAAABQAAANobAAABAAAAAQAAAAUAAADqGwAAAQAAAAEAAAAFAAAA+hsAAAEAAAABAAAABQAAAAocAAABAAAAAQAAAAUAAAAaHAAAAQAAAAEAAAAFAAAAKhwAAAEAAAABAAAABQAAADocAAABAAAAAQAAAAUAAABKHAAAAQAAAAEAAAAFAAAAWhwAAAEAAAABAAAABQAAAGocAAABAAAAAQAAAAUAAAB6HAAAAQAAAAEAAAAFAAAAihwAAAEAAAABAAAABQAAAJocAAABAAAAAQAAAAUAAACqHAAAAQAAAAEAAAAFAAAAuhwAAAEAAAABAAAABQAAAMocAAABAAAAAQAAAAUAAADaHAAAAQAAAAEAAAAFAAAA6hwAAAEAAAABAAAABQAAAPocAAABAAAAAQAAAAUAAAAKHQAAAQAAAAEAAAAFAAAAGh0AAAEAAAABAAAABQAAACodAAABAAAAAQAAAAUAAAA6HQAAAQAAAAEAAAAFAAAASh0AAAEAAAABAAAABQAAAFodAAABAAAAAQAAAAUAAABqHQAAAQAAAAEAAAAFAAAAeh0AAAEAAAABAAAABQAAAIodAAABAAAAAQAAAAUAAACaHQAAAQAAAAEAAAAFAAAAqh0AAAEAAAABAAAABQAAALodAAABAAAAAQAAAAUAAADKHQAAAQAAAAEAAAAFAAAA2h0AAAEAAAABAAAABQAAAOodAAABAAAAAQAAAAUAAAD6HQAAAQAAAAEAAAAFAAAACh4AAAEAAAABAAAABQAAABoeAAABAAAAAQAAAAUAAAAqHgAAAQAAAAEAAAAFAAAAOh4AAAEAAAABAAAABQAAAEoeAAABAAAAAQAAAAUAAABaHgAAAQAAAAEAAAAFAAAAah4AAAEAAAABAAAABQAAAHoeAAABAAAAAQAAAAUAAACKHgAAAQAAAAAAAAAMAAAAmh4AAAAAAAADAAAABwAAAJoeAAABAAAAAwAAAAcAAAAIIAAAAQAAAAMAAAAJAAAA7CAAAAEAAAADAAAACQAAABQhAAABAAAAAwAAAAkAAAA8IQAAAQAAAAMAAAAJAAAAbCEAAAEAAAADAAAACQAAAJQhAAABAAAAAwAAAAkAAADEIQAAAQAAAAMAAAAJAAAA9CEAAAEAAAADAAAACQAAABQiAAABAAAAAwAAAAkAAAA8IgAAAQAAAAMAAAAJAAAAbCIAAAEAAAADAAAACQAAAJwiAAABAAAAAwAAAAkAAADEIgAAAQAAAAMAAAAJAAAA7CIAAAEAAAADAAAACQAAABQjAAABAAAAAwAAAAkAAAA8IwAAAQAAAAMAAAAJAAAAZCMAAAEAAAADAAAACQAAAIwjAAABAAAAAwAAAAkAAAC0IwAAAQAAAAMAAAAJAAAA5CMAAAEAAAADAAAACQAAABQkAAABAAAAAwAAAAkAAAA8JAAAAQAAAAMAAAAJAAAAZCQAAAEAAAACAAAAAAAAAIwkAAABAAAAAgAAAAAAAACcJAAAAQAAAAMAAAADAAAArCQAAAEAAAALAAAAAAAAAAAAAQABAAEACwAAAAAAAQAAAAEAAQABAAsAAAAAAAIAAAABAAEAAQALAAAAAAADAAAAAQABAAEACwAAAAAABAAAAAEAAQABAAsAAAAAAAUAAAABAAEAAQALAAAAAAAGAAAAAQABAAEACwAAAAAABwAAAAEAAQABAAsAAAAAAAgAAAABAAEAAQALAAAAAAAJAAAAAQABAAEACwAAAAAACgAAAAEAAQABAAsAAAAAAAsAAAABAAEAAQALAAAAAAAMAAAAAQABAAEACwAAAAAADQAAAAEAAQABAAsAAAAAAA4AAAABAAEAAQALAAAAAAAPAAAAAQABAAEACwAAAAAAEAAAAAEAAQABAAsAAAAAABEAAAABAAEAAQALAAAAAAASAAAAAQABAAEACwAAAAAAEwAAAAEAAQABAAsAAAAAABQAAAABAAEAAQALAAAAAAAVAAAAAQABAAEACwAAAAAAFgAAAAEAAQABAAsAAAAAABcAAAABAAEAAQALAAAAAAAYAAAAAQABAAEACwAAAAAAGQAAAAEAAQABAAsAAAAAABoAAAABAAEAAQALAAAAAAAbAAAAAQABAAEACwAAAAAAHAAAAAEAAQABAAsAAAAAAB0AAAABAAEAAQALAAAAAAAeAAAAAQABAAEACwAAAAAAHwAAAAEAAQABAAsAAAAAACAAAAABAAEAAQALAAAAAAAhAAAAAQABAAEACwAAAAAAIgAAAAEAAQABAAsAAAAAACMAAAABAAEAAQALAAAAAAAkAAAAAQABAAEACwAAAAAAJQAAAAEAAQABAAsAAAAAACYAAAABAAEAAQALAAAAAAAnAAAAAQABAAEACwAAAAAAKAAAAAEAAQABAAsAAAAAACkAAAABAAEAAQALAAAAAAAqAAAAAQABAAEACwAAAAAAKwAAAAEAAQABAAsAAAAAACwAAAABAAEAAQALAAAAAAAtAAAAAQABAAEACwAAAAAALgAAAAEAAQABAAsAAAAAAC8AAAABAAEAAQALAAAAAAAwAAAAAQABAAEACwAAAAAAMQAAAAEAAQABAAsAAAAAADIAAAABAAEAAQALAAAAAAAzAAAAAQABAAEACwAAAAAANAAAAAEAAQABAAsAAAAAADUAAAABAAEAAQALAAAA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AQAAABYAAAAHAAIAAAACAAAAAAAgAAAAAgAAAAAAqQAAAAEACgAAAAAACgAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAkAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAYQAAAAYAlgAAAAYAgAAAAAcABAAAAAQAAQAAAAAAAAACAAAAAABhAAAABgA9AAAABgBIAAAABwAEAAAABAABAAAAAAAAAAIAAAAAAGEAAAAGAFEAAAAGAIEAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAYQAAAAYAlwAAAAYAggAAAAcABAAAAAQAAQAAAAAAAAACAAAAAABhAAAABgCYAAAABgCDAAAABwAEAAAABAABAAAAAAAAAAIAAAAAAGEAAAAGAJkAAAAGAIQAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAYQAAAAYAmgAAAAYAhQAAAAcABAAAAAQAAQAAAAAAAAACAAAAAABhAAAABgCbAAAABgCGAAAABwAEAAAABAABAAAAAAAAAAIAAAAAAGEAAAAGAJwAAAAGAIcAAAAHAAkAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAYQAAAAYAlgAAAAYAgAAAAAcABAAAAAQAAQAAAAAAAAACAAAAAABhAAAABgA9AAAABgBIAAAABwAEAAAABAABAAAAAAAAAAIAAAAAAGEAAAAGAFEAAAAGAIEAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAYQAAAAYAlwAAAAYAggAAAAcABAAAAAQAAQAAAAAAAAACAAAAAABhAAAABgCYAAAABgCDAAAABwAEAAAABAABAAAAAAAAAAIAAAAAAGEAAAAGAJkAAAAGAIQAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAYQAAAAYAmgAAAAYAhQAAAAcABAAAAAQAAQAAAAAAAAACAAAAAABhAAAABgCbAAAABgCGAAAABwAEAAAABAABAAAAAAAAAAIAAAAAAGEAAAAGAJwAAAAGAIcAAAABAAwAAAAAAGMAAAABAAEAAQAMAAAAAABkAAAAAQABAAEADAAAAAAAZQAAAAEAAQABAAwAAAAAAGYAAAABAAEAAQAMAAAAAABnAAAAAQABAAEADAAAAAAAaAAAAAEAAQABAAwAAAAAAGkAAAABAAEAAQAMAAAAAABqAAAAAQABAAEADAAAAAAAawAAAAEAAQABAAwAAAAAAGwAAAABAAEAAQAMAAAAAABtAAAAAQABAAEADAAAAAAAbgAAAAEAAQABAAwAAAAAAG8AAAABAAEAAQAMAAAAAABwAAAAAQABAAEADAAAAAAAcQAAAAEAAQABAAwAAAAAAHIAAAABAAEAAQAMAAAAAABzAAAAAQABAAEADAAAAAAAdAAAAAEAAQABAAwAAAAAAHUAAAABAAEAAQAMAAAAAAB2AAAAAQABAAEADAAAAAAAdwAAAAEAAQABAAwAAAAAAHgAAAABAAEAAQAMAAAAAAB5AAAAAQABAAEADAAAAAAAegAAAAEAAQABAAwAAAAAAHsAAAABAAEAAQAMAAAAAAB8AAAAAQABAAEADAAAAAAAfQAAAAEAAQABAAwAAAAAAH4AAAABAAEAAQAMAAAAAAB/AAAAAQABAAEADAAAAAAAgAAAAAEAAQABAAwAAAAAAIEAAAABAAEAAQAMAAAAAACCAAAAAQABAAEADAAAAAAAgwAAAAEAAQABAAwAAAAAAIQAAAABAAEAAQAMAAAAAACFAAAAAQABAAEADAAAAAAAhgAAAAEAAQABAAwAAAAAAIcAAAABAAEAAQAMAAAAAACIAAAAAQABAAEADAAAAAAAiQAAAAEAAQABAAwAAAAAAIoAAAABAAEAAQAMAAAAAACLAAAAAQABAAEADAAAAAAAjAAAAAEAAQABAAwAAAAAAI0AAAABAAEAAQAMAAAAAACOAAAAAQABAAEADAAAAAAAjwAAAAEAAQABAAwAAAAAAJAAAAABAAEAAQAMAAAAAACRAAAAAQABAAEADAAAAAAAkgAAAAEAAQABAAwAAAAAAJMAAAABAAEAAQAMAAAAAACUAAAAAQABAAEABgAHAAAACgABAAAAiAAAAAIAAAAAAMEAAAAKAAMAAAAPAAAAAgAAAAAAaAAAABYAAAACAAAAAABpAAAAEAAAAAIAAAAAAGoAAAAHAAMAAAACAAAAAABoAAAAAgAAAAAAaQAAAAIAAAAAAGoAAAAHAAAAAAAHAAEAAAACAAEAAAAWAAAABwAAAAAAAgABAAAAFgAAAAcAAAAAAAoAAAAAAAQAAQAAAAAAAAAHAAIAAAACAAAAAABnAAAAAgABAAAAFgAAAAcAAAAAAAEACgABAAAAkwAAAAIAAAAAAGoAAAAKAAEAAACdAAAABwACAAAAAgAAAAAAZwAAAAYAiAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwABAAAABwAEAAAABAABAAAAAAAAAAIAAAAAAGcAAAAGAJ4AAAAGAIgAAAAHAAEAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAZwAAAAYAngAAAAYAiAAAAAEABgAIAAAACgAAAAAACgABAAAAFgAAAAIAAAAAAGwAAAAHAAEAAAACAAAAAABsAAAABwAAAAAABwABAAAAAgAAAAAAZwAAAAcAAAAAAAEABwAAAAAACgAAAAAABAABAAAAAAAAAAcAAwAAAAIAAAAAAGsAAAACAAAAAABnAAAAAgABAAAAFgAAAAcAAAAAAAEACgAAAAAACgAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAEAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAZwAAAAYAngAAAAYAiAAAAAcAAAAAAAEABgAyAAAAAwAEAAAAAAAAAAAAAwACAAEAAAAWAAAABAABAAAAAAAAAAYAMwAAAAMABAAAAAAAAAAAAAMAAgABAAAAFgAAAAQAAQAAAAAAAAAGADQAAAACAAEAAAACAAAABAABAAAAAAAAAAMAAgABAAAAAgAAAAQAAQAAAAAAAAAGADUAAAADAAQAAAAAAAAAAAADAAIAAQAAABYAAAAEAAEAAAAAAAAABgA2AAAAAgABAAAABAAAAAQAAQAAAAAAAAADAAIAAQAAAAQAAAAEAAEAAAAAAAAABgA3AAAAAgABAAAAAgAAAAQAAQAAAAAAAAADAAIAAQAAAAIAAAAEAAEAAAAAAAAABgA4AAAAAwAEAAAAAAAAAAAAAwADAAQAAAAAAAAAAAAGAIAAAAADAAQAAAAAAAAAAAADAAIAAQAAABYAAAAEAAEAAAAAAAAABgBIAAAAAgABAAAAAgAAAAQAAQAAAAAAAAADAAIAAQAAAAIAAAAEAAEAAAAAAAAABgCBAAAAAgABAAAAAgAAAAQAAQAAAAAAAAADAAIAAQAAAAIAAAAEAAEAAAAAAAAABgCCAAAAAwAEAAAAAAAAAAAAAwACAAEAAAAWAAAABAABAAAAAAAAAAYAgwAAAAMABAAAAAAAAAAAAAMAAgABAAAAFgAAAAQAAQAAAAAAAAAGAIQAAAADAAQAAAAAAAAAAAADAAIAAQAAABYA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", cur_sc, $P5003, $P5005, conflicts
    unless conflicts goto if313_end926 
    die "Repossession conflicts occurred during deserialization"
  if313_end926:
    .const "LexInfo" $P5001 = "cuid_1_1358115315.353"
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 0
    $P5001."set_static_lexpad_value"("GLOBALish", $P5002)
    .const "LexInfo" $P5003 = "cuid_1_1358115315.353"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1358115315.353"
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 0
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_1_1358115315.353"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1358115315.353"
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 1
    $P5001."set_static_lexpad_value"("EXPORT", $P5002)
    .const "LexInfo" $P5003 = "cuid_1_1358115315.353"
    $P5003."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_2_1358115315.353" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 4
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_3_1358115315.353" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 5
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_4_1358115315.353" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 6
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_5_1358115315.353" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 7
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_6_1358115315.353" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 8
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_7_1358115315.353" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 9
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_8_1358115315.353" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 10
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_9_1358115315.353" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 11
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_10_1358115315.353" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 12
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_11_1358115315.353" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 13
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_12_1358115315.353" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 14
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_13_1358115315.353" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 15
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_14_1358115315.353" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 16
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_15_1358115315.353" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 17
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_16_1358115315.353" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 18
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_17_1358115315.353" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 19
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_18_1358115315.353" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 20
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_19_1358115315.353" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 21
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_20_1358115315.353" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 22
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_21_1358115315.353" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 23
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_22_1358115315.353" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 24
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_23_1358115315.353" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 25
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_24_1358115315.353" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 26
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_25_1358115315.353" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 27
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_26_1358115315.353" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 28
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_27_1358115315.353" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 29
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_28_1358115315.353" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 30
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_29_1358115315.353"
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 3
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_29_1358115315.353"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_29_1358115315.353"
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 3
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_29_1358115315.353"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1358115315.353"
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 31
    $P5001."set_static_lexpad_value"("ParseShared", $P5002)
    .const "LexInfo" $P5003 = "cuid_1_1358115315.353"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_30_1358115315.353"
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 31
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_30_1358115315.353"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_30_1358115315.353"
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 31
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_30_1358115315.353"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1358115315.353"
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 32
    $P5001."set_static_lexpad_value"("NQPCursorRole", $P5002)
    .const "LexInfo" $P5003 = "cuid_1_1358115315.353"
    $P5003."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_31_1358115315.353" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 33
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_32_1358115315.353" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 34
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_33_1358115315.353" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 35
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_34_1358115315.353" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 36
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_35_1358115315.353" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 37
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_36_1358115315.353" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 38
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_37_1358115315.353" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 39
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_38_1358115315.353" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 40
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_39_1358115315.353" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 41
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_40_1358115315.353" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 42
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_41_1358115315.353" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 43
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_42_1358115315.353" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 44
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_43_1358115315.353" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 45
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_44_1358115315.353" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 46
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_45_1358115315.353" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 47
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_46_1358115315.353" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 48
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_47_1358115315.353" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 49
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_48_1358115315.353" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 50
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_49_1358115315.353" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 51
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_50_1358115315.353" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 52
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_51_1358115315.353" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 53
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_52_1358115315.353" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 54
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_53_1358115315.353" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 55
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_54_1358115315.353" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 56
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_55_1358115315.353" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 57
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_56_1358115315.353" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 58
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_57_1358115315.353" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 59
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_58_1358115315.353" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 60
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_59_1358115315.353" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 61
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_60_1358115315.353" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 62
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_61_1358115315.353" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 63
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_62_1358115315.353" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 64
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_63_1358115315.353" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 65
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_64_1358115315.353" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 66
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_65_1358115315.353" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 67
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_66_1358115315.353" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 68
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_67_1358115315.353" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 69
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_68_1358115315.353" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 70
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_69_1358115315.353" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 71
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_70_1358115315.353" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 72
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_71_1358115315.353" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 73
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_72_1358115315.353" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 74
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_73_1358115315.353" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 75
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_74_1358115315.353" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 76
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_75_1358115315.353" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 77
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_76_1358115315.353" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 78
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_77_1358115315.353" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 79
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_78_1358115315.353" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 80
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_79_1358115315.353" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 81
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_80_1358115315.353" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 82
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_81_1358115315.353" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 83
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_81_1358115315.353"
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 32
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_81_1358115315.353"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_81_1358115315.353"
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 32
    $P5001."set_static_lexpad_value"("$?ROLE", $P5002)
    .const "LexInfo" $P5003 = "cuid_81_1358115315.353"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1358115315.353"
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 84
    $P5001."set_static_lexpad_value"("NQPMatch", $P5002)
    .const "LexInfo" $P5003 = "cuid_1_1358115315.353"
    $P5003."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_82_1358115315.353" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 85
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_83_1358115315.353" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 86
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_84_1358115315.353" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 87
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_85_1358115315.353" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 88
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_86_1358115315.353" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 89
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_87_1358115315.353" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 90
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_88_1358115315.353" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 91
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_89_1358115315.353" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 92
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_90_1358115315.353" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 93
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_91_1358115315.353" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 94
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_92_1358115315.353" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 95
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_93_1358115315.353" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 96
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_94_1358115315.353"
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 84
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_94_1358115315.353"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_94_1358115315.353"
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 84
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_94_1358115315.353"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1358115315.353"
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 97
    $P5001."set_static_lexpad_value"("NQPCursor", $P5002)
    .const "LexInfo" $P5003 = "cuid_1_1358115315.353"
    $P5003."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_95_1358115315.353" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 98
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_96_1358115315.353" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 99
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_97_1358115315.353" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 100
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_98_1358115315.353" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 101
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_99_1358115315.353" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 102
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_100_1358115315.353"
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 97
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_100_1358115315.353"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_100_1358115315.353"
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 97
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_100_1358115315.353"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1358115315.353"
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 103
    $P5001."set_static_lexpad_value"("NQPRegexMethod", $P5002)
    .const "LexInfo" $P5003 = "cuid_1_1358115315.353"
    $P5003."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_119_1358115315.353" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 104
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_120_1358115315.353" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 105
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_121_1358115315.353" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 106
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_122_1358115315.353"
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 103
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_122_1358115315.353"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_122_1358115315.353"
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 103
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_122_1358115315.353"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1358115315.353"
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 107
    $P5001."set_static_lexpad_value"("NQPRegex", $P5002)
    .const "LexInfo" $P5003 = "cuid_1_1358115315.353"
    $P5003."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_123_1358115315.353" 
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 108
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_124_1358115315.353"
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 107
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_124_1358115315.353"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_124_1358115315.353"
    nqp_get_sc_object $P5002, "5AB04DFAFFF209D71179F6DD66C39F5290FAF9C0-1358115315.378", 107
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_124_1358115315.353"
    $P5004 = $P5003."finish_static_lexpad"()
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_161_1358115315.353") :anon :lex :outer("cuid_162_1358115315.353")
.annotate 'file', "src\\stage2\\QRegex.nqp"
    new $P5001, 'ResizablePMCArray'
    .const 'Sub' $P5002 = "cuid_2_1358115315.353" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_3_1358115315.353" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_4_1358115315.353" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_5_1358115315.353" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_6_1358115315.353" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_7_1358115315.353" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_8_1358115315.353" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_9_1358115315.353" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_10_1358115315.353" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_11_1358115315.353" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_12_1358115315.353" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_13_1358115315.353" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_14_1358115315.353" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_15_1358115315.353" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_16_1358115315.353" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_17_1358115315.353" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_18_1358115315.353" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_19_1358115315.353" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_20_1358115315.353" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_21_1358115315.353" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_22_1358115315.353" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_23_1358115315.353" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_24_1358115315.353" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_25_1358115315.353" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_26_1358115315.353" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_27_1358115315.353" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_28_1358115315.353" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_31_1358115315.353" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_32_1358115315.353" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_33_1358115315.353" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_34_1358115315.353" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_35_1358115315.353" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_36_1358115315.353" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_37_1358115315.353" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_38_1358115315.353" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_39_1358115315.353" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_40_1358115315.353" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_41_1358115315.353" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_42_1358115315.353" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_43_1358115315.353" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_44_1358115315.353" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_45_1358115315.353" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_46_1358115315.353" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_47_1358115315.353" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_48_1358115315.353" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_49_1358115315.353" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_50_1358115315.353" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_51_1358115315.353" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_52_1358115315.353" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_53_1358115315.353" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_54_1358115315.353" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_55_1358115315.353" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_56_1358115315.353" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_57_1358115315.353" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_58_1358115315.353" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_59_1358115315.353" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_60_1358115315.353" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_61_1358115315.353" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_62_1358115315.353" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_63_1358115315.353" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_64_1358115315.353" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_65_1358115315.353" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_66_1358115315.353" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_67_1358115315.353" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_68_1358115315.353" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_69_1358115315.353" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_70_1358115315.353" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_71_1358115315.353" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_72_1358115315.353" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_73_1358115315.353" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_74_1358115315.353" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_75_1358115315.353" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_76_1358115315.353" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_77_1358115315.353" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_78_1358115315.353" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_79_1358115315.353" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_80_1358115315.353" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_81_1358115315.353" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_82_1358115315.353" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_83_1358115315.353" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_84_1358115315.353" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_85_1358115315.353" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_86_1358115315.353" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_87_1358115315.353" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_88_1358115315.353" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_89_1358115315.353" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_90_1358115315.353" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_91_1358115315.353" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_92_1358115315.353" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_93_1358115315.353" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_95_1358115315.353" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_96_1358115315.353" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_97_1358115315.353" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_98_1358115315.353" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_99_1358115315.353" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_119_1358115315.353" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_120_1358115315.353" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_121_1358115315.353" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_123_1358115315.353" 
    push $P5001, $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_163_1358115315.353") :load
.annotate 'file', "src\\stage2\\QRegex.nqp"
    .const 'Sub' $P5001 = "cuid_1_1358115315.353" 
    $P5002 = $P5001()
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_164_1358115315.353") :main
.annotate 'file', "src\\stage2\\QRegex.nqp"
    .param pmc ARGS :slurpy 
    .const 'Sub' $P5001 = "cuid_1_1358115315.353" 
    $P5002 = $P5001(ARGS :flat)
    .return ($P5002) 
.end