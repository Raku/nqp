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
.sub "" :subid("cuid_1_1350818088.873") :anon :lex
.annotate 'file', "src\\stage2\\QRegex.nqp"
    .param pmc _lex_param_0 :slurpy 
    .const 'Sub' $P5020 = 'cuid_26_1350818088.873' 
    capture_lex $P5020 
    .const 'Sub' $P5020 = 'cuid_67_1350818088.873' 
    capture_lex $P5020 
    .const 'Sub' $P5020 = 'cuid_80_1350818088.873' 
    capture_lex $P5020 
    .const 'Sub' $P5020 = 'cuid_86_1350818088.873' 
    capture_lex $P5020 
    .const 'Sub' $P5020 = 'cuid_100_1350818088.873' 
    capture_lex $P5020 
    .const 'Sub' $P5020 = 'cuid_102_1350818088.873' 
    capture_lex $P5020 
    .lex "GLOBALish", $P101 
    .lex "$?PACKAGE", $P102 
    .lex "EXPORT", $P103 
    .lex "NQPCursorRole", $P104 
    .lex "NQPMatch", $P105 
    .lex "NQPCursor", $P106 
    .lex "NQPRegexMethod", $P107 
    .lex "NQPRegex", $P108 
    .lex "@ARGS", _lex_param_0 
    .local pmc ctxsave 
    find_dynamic_lex $P5001, "$*CTXSAVE"
    set ctxsave, $P5001
    isnull $I5001, ctxsave
    if $I5001 goto unless101_end242 
    can $I5002, ctxsave, "ctxsave"
    box $P5004, $I5002
    set $P5003, $P5004
    unless $I5002 goto if102_end244 
    $P5002 = ctxsave."ctxsave"()
    set $P5003, $P5002
  if102_end244:
  unless101_end242:
.annotate 'line', 1
    .const 'Sub' $P5005 = 'cuid_26_1350818088.873' 
    capture_lex $P5005
    $P5006 = $P5005()
    .const 'Sub' $P5007 = 'cuid_67_1350818088.873' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_80_1350818088.873' 
    capture_lex $P5008
    $P5009 = $P5008()
    .const 'Sub' $P5010 = 'cuid_86_1350818088.873' 
    capture_lex $P5010
    $P5011 = $P5010()
    .const 'Sub' $P5012 = 'cuid_100_1350818088.873' 
    capture_lex $P5012
    $P5013 = $P5012()
    .const 'Sub' $P5014 = 'cuid_102_1350818088.873' 
    capture_lex $P5014
    $P5015 = $P5014()
    unless _lex_param_0 goto if299_end854 
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P5016, "ModuleLoader"
    getinterp $P5018
    set $P5017, $P5018["context"]
    $P5019 = $P5016."set_mainline_module"($P5017)
  if299_end854:
    .return () 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_26_1350818088.873") :anon :lex :outer("cuid_1_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 7
    .const 'Sub' $P5054 = 'cuid_2_1350818088.873' 
    capture_lex $P5054 
    .const 'Sub' $P5054 = 'cuid_3_1350818088.873' 
    capture_lex $P5054 
    .const 'Sub' $P5054 = 'cuid_4_1350818088.873' 
    capture_lex $P5054 
    .const 'Sub' $P5054 = 'cuid_5_1350818088.873' 
    capture_lex $P5054 
    .const 'Sub' $P5054 = 'cuid_6_1350818088.873' 
    capture_lex $P5054 
    .const 'Sub' $P5054 = 'cuid_7_1350818088.873' 
    capture_lex $P5054 
    .const 'Sub' $P5054 = 'cuid_8_1350818088.873' 
    capture_lex $P5054 
    .const 'Sub' $P5054 = 'cuid_9_1350818088.873' 
    capture_lex $P5054 
    .const 'Sub' $P5054 = 'cuid_10_1350818088.873' 
    capture_lex $P5054 
    .const 'Sub' $P5054 = 'cuid_11_1350818088.873' 
    capture_lex $P5054 
    .const 'Sub' $P5054 = 'cuid_12_1350818088.873' 
    capture_lex $P5054 
    .const 'Sub' $P5054 = 'cuid_13_1350818088.873' 
    capture_lex $P5054 
    .const 'Sub' $P5054 = 'cuid_14_1350818088.873' 
    capture_lex $P5054 
    .const 'Sub' $P5054 = 'cuid_15_1350818088.873' 
    capture_lex $P5054 
    .const 'Sub' $P5054 = 'cuid_16_1350818088.873' 
    capture_lex $P5054 
    .const 'Sub' $P5054 = 'cuid_17_1350818088.873' 
    capture_lex $P5054 
    .const 'Sub' $P5054 = 'cuid_18_1350818088.873' 
    capture_lex $P5054 
    .const 'Sub' $P5054 = 'cuid_19_1350818088.873' 
    capture_lex $P5054 
    .const 'Sub' $P5054 = 'cuid_20_1350818088.873' 
    capture_lex $P5054 
    .const 'Sub' $P5054 = 'cuid_21_1350818088.873' 
    capture_lex $P5054 
    .const 'Sub' $P5054 = 'cuid_22_1350818088.873' 
    capture_lex $P5054 
    .const 'Sub' $P5054 = 'cuid_23_1350818088.873' 
    capture_lex $P5054 
    .const 'Sub' $P5054 = 'cuid_24_1350818088.873' 
    capture_lex $P5054 
    .const 'Sub' $P5054 = 'cuid_25_1350818088.873' 
    capture_lex $P5054 
    .lex "%cclass_code", $P101 
    .lex "$?PACKAGE", $P102 
    .lex "$?CLASS", $P103 
    new $P5001, 'Hash'
    set $P101, $P5001
.annotate 'line', 77
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
    .const 'Sub' $P5030 = 'cuid_2_1350818088.873' 
    capture_lex $P5030
    .const 'Sub' $P5031 = 'cuid_3_1350818088.873' 
    capture_lex $P5031
    .const 'Sub' $P5032 = 'cuid_4_1350818088.873' 
    capture_lex $P5032
    .const 'Sub' $P5033 = 'cuid_5_1350818088.873' 
    capture_lex $P5033
    .const 'Sub' $P5034 = 'cuid_6_1350818088.873' 
    capture_lex $P5034
    .const 'Sub' $P5035 = 'cuid_7_1350818088.873' 
    capture_lex $P5035
    .const 'Sub' $P5036 = 'cuid_8_1350818088.873' 
    capture_lex $P5036
    .const 'Sub' $P5037 = 'cuid_9_1350818088.873' 
    capture_lex $P5037
    .const 'Sub' $P5038 = 'cuid_10_1350818088.873' 
    capture_lex $P5038
    .const 'Sub' $P5039 = 'cuid_11_1350818088.873' 
    capture_lex $P5039
    .const 'Sub' $P5040 = 'cuid_12_1350818088.873' 
    capture_lex $P5040
    .const 'Sub' $P5041 = 'cuid_13_1350818088.873' 
    capture_lex $P5041
    .const 'Sub' $P5042 = 'cuid_14_1350818088.873' 
    capture_lex $P5042
    .const 'Sub' $P5043 = 'cuid_15_1350818088.873' 
    capture_lex $P5043
    .const 'Sub' $P5044 = 'cuid_16_1350818088.873' 
    capture_lex $P5044
    .const 'Sub' $P5045 = 'cuid_17_1350818088.873' 
    capture_lex $P5045
    .const 'Sub' $P5046 = 'cuid_18_1350818088.873' 
    capture_lex $P5046
    .const 'Sub' $P5047 = 'cuid_19_1350818088.873' 
    capture_lex $P5047
    .const 'Sub' $P5048 = 'cuid_20_1350818088.873' 
    capture_lex $P5048
    .const 'Sub' $P5049 = 'cuid_21_1350818088.873' 
    capture_lex $P5049
    .const 'Sub' $P5050 = 'cuid_22_1350818088.873' 
    capture_lex $P5050
    .const 'Sub' $P5051 = 'cuid_23_1350818088.873' 
    capture_lex $P5051
    .const 'Sub' $P5052 = 'cuid_24_1350818088.873' 
    capture_lex $P5052
    .const 'Sub' $P5053 = 'cuid_25_1350818088.873' 
    capture_lex $P5053
    .return ($P5053) 
.end
.HLL "nqp"
.namespace []
.sub "new" :subid("cuid_2_1350818088.873") :anon :lex :outer("cuid_26_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 23
    .param pmc _lex_param_0 
    .lex "$new", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P101, $P5001
.annotate 'line', 24
    nqp_decontainerize $P5002, _lex_param_0
    new $P5003, 'ResizablePMCArray'
    new $P5004, 'ResizablePMCArray'
    $P5005 = $P5002."bless"($P5003 :named("states"), $P5004 :named("edges"))
    set $P101, $P5005
.annotate 'line', 25
    $P101."addstate"()
.annotate 'line', 26
    $P101."addstate"()
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "addstate" :subid("cuid_3_1350818088.873") :anon :lex :outer("cuid_26_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 30
    .param pmc _lex_param_0 
    .lex "$id", $I101 
    .lex "self", _lex_param_0 
    set $I101, 0
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 3
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!states"
    set $N5001, $P5003
    set $I5001, $N5001
    set $I101, $I5001
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 3
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!states"
    new $P5007, 'ResizablePMCArray'
    set $P5006[$I101], $P5007
    .return ($I101) 
.end
.HLL "nqp"
.namespace []
.sub "addedge" :subid("cuid_4_1350818088.873") :anon :lex :outer("cuid_26_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 36
    .param pmc _lex_param_0 
    .param int _lex_param_1 
    .param int _lex_param_2 
    .param pmc _lex_param_3 
    .param pmc _lex_param_4 
    .param pmc _lex_param_5 :named("newedge") :optional 
    .param int haz_param_8 :opt_flag 
    if haz_param_8, default253
    box $P5020, 1
    set _lex_param_5, $P5020
  default253:
    .lex "$st", $P101 
    .lex "self", _lex_param_0 
    .lex "$from", _lex_param_1 
    .lex "$to", _lex_param_2 
    .lex "$action", _lex_param_3 
    .lex "$value", _lex_param_4 
    .lex "$newedge", _lex_param_5 
    nqp_get_sc_object $P5001, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P101, $P5001
    unless _lex_param_5 goto if103_end246 
    nqp_decontainerize $P5002, _lex_param_0
    nqp_get_sc_object $P5003, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 3
    box $P5004, 1
    repr_bind_attr_obj $P5002, $P5003, "$!edges", $P5004
  if103_end246:
    set $N5001, _lex_param_2
    set $N5002, 0
    islt $I5001, $N5001, $N5002
    unless $I5001 goto if104_end248 
.annotate 'line', 38
    nqp_decontainerize $P5005, _lex_param_0
    $P5006 = $P5005."addstate"()
    set $I5002, $P5006
    set _lex_param_2, $I5002
  if104_end248:
    nqp_decontainerize $P5008, _lex_param_0
    nqp_get_sc_object $P5009, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 3
    repr_get_attr_obj $P5010, $P5008, $P5009, "$!states"
    set $P5007, $P5010[_lex_param_1]
    unless_null $P5007, fallback249
    nqp_get_sc_object $P5011, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P5007, $P5011
  fallback249:
    set $P101, $P5007
    push $P101, _lex_param_3
    nqp_get_sc_object $P5015, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 0
    nqp_get_package_through_who $P5014, $P5015, "QAST"
    get_who $P5013, $P5014
    set $P5012, $P5013["SVal"]
    unless_null $P5012, fallback252
    nqp_get_sc_object $P5016, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P5012, $P5016
  fallback252:
    type_check $I5003, _lex_param_4, $P5012
    unless $I5003 goto if105_else250 
.annotate 'line', 41
    $P5017 = _lex_param_4."value"()
    set $P5018, $P5017
    goto if105_end251
  if105_else250:
    set $P5018, _lex_param_4
  if105_end251:
    push $P101, $P5018
    box $P5019, _lex_param_2
    push $P101, $P5019
    .return (_lex_param_2) 
.end
.HLL "nqp"
.namespace []
.sub "states" :subid("cuid_5_1350818088.873") :anon :lex :outer("cuid_26_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 46
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 3
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!states"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "addnode" :subid("cuid_6_1350818088.873") :anon :lex :outer("cuid_26_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 48
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
.annotate 'line', 49
    nqp_decontainerize $P5001, _lex_param_0
    $P5001."regex_nfa"(_lex_param_1, 1, 0)
    nqp_decontainerize $P5002, _lex_param_0
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "regex_nfa" :subid("cuid_7_1350818088.873") :anon :lex :outer("cuid_26_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 53
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param int _lex_param_2 
    .param int _lex_param_3 
    .lex "$method", $P101 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$from", _lex_param_2 
    .lex "$to", _lex_param_3 
    nqp_get_sc_object $P5001, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P101, $P5001
.annotate 'line', 54
    $P5003 = _lex_param_1."rxtype"()
    set $P5002, $P5003
    defined $I5001, $P5002
    if $I5001, defor254
    box $P5004, "concat"
    set $P5002, $P5004
  defor254:
    set $P101, $P5002
.annotate 'line', 55
    nqp_decontainerize $P5006, _lex_param_0
    get_how $P5005, $P5006
    nqp_decontainerize $P5007, _lex_param_0
    $P5008 = $P5005."can"($P5007, $P101)
    unless $P5008 goto if106_else255 
.annotate 'line', 56
    nqp_decontainerize $P5009, _lex_param_0
    set $S5001, $P101
    $P5010 = $P5009.$S5001(_lex_param_1, _lex_param_2, _lex_param_3)
    set $P5013, $P5010
    goto if106_end256
  if106_else255:
.annotate 'line', 57
    nqp_decontainerize $P5011, _lex_param_0
    $P5012 = $P5011."fate"(_lex_param_1, _lex_param_2, _lex_param_3)
    set $P5013, $P5012
  if106_end256:
    .return ($P5013) 
.end
.HLL "nqp"
.namespace []
.sub "fate" :subid("cuid_8_1350818088.873") :anon :lex :outer("cuid_26_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 60
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param int _lex_param_2 
    .param int _lex_param_3 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$from", _lex_param_2 
    .lex "$to", _lex_param_3 
.annotate 'line', 61
    nqp_decontainerize $P5001, _lex_param_0
    find_lex $P5004, "$?PACKAGE"
    get_who $P5003, $P5004
    set $P5002, $P5003["$EDGE_FATE"]
    unless_null $P5002, fallback257
    nqp_get_sc_object $P5005, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P5002, $P5005
  fallback257:
    $P5006 = $P5001."addedge"(_lex_param_2, 0, $P5002, 0, 0 :named("newedge"))
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "alt" :subid("cuid_9_1350818088.873") :anon :lex :outer("cuid_26_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 64
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param int _lex_param_2 
    .param int _lex_param_3 
    .const 'Sub' $P5007 = 'cuid_103_1350818088.873' 
    capture_lex $P5007 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$from", _lex_param_2 
    .lex "$to", _lex_param_3 
.annotate 'line', 65
    $P5004 = _lex_param_1."list"()
    set $P5001, $P5004
    iter $P5003, $P5004
  for_next262:
    unless $P5003, for_done264
    shift $P5006, $P5003
  for_redo263:
    .const 'Sub' $P5005 = 'cuid_103_1350818088.873' 
    capture_lex $P5005
    $P5001 = $P5005($P5006)
    goto for_next262
  for_done264:
    .return (_lex_param_3) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_103_1350818088.873") :anon :lex :outer("cuid_9_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 65
    .param pmc _lex_param_0 
    .lex "$st", $I101 
    .lex "$_", _lex_param_0 
    set $I101, 0
.annotate 'line', 66
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
    unless $I5004 goto if108_end261 
    set $N5003, $I101
    set $N5004, 0
    isgt $I5006, $N5003, $N5004
    set $I5007, $I5006
  if108_end261:
    set $I5008, $I5007
    unless $I5007 goto if107_end259 
    store_lex "$to", $I101
    set $I5008, $I101
  if107_end259:
    .return ($I5008) 
.end
.HLL "nqp"
.namespace []
.sub "anchor" :subid("cuid_10_1350818088.873") :anon :lex :outer("cuid_26_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 72
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param int _lex_param_2 
    .param int _lex_param_3 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$from", _lex_param_2 
    .lex "$to", _lex_param_3 
.annotate 'line', 73
    nqp_decontainerize $P5001, _lex_param_0
    find_lex $P5004, "$?PACKAGE"
    get_who $P5003, $P5004
    set $P5002, $P5003["$EDGE_EPSILON"]
    unless_null $P5002, fallback265
    nqp_get_sc_object $P5005, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P5002, $P5005
  fallback265:
    $P5006 = $P5001."addedge"(_lex_param_2, _lex_param_3, $P5002, 0)
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "cclass" :subid("cuid_11_1350818088.873") :anon :lex :outer("cuid_26_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 86
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param int _lex_param_2 
    .param int _lex_param_3 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$from", _lex_param_2 
    .lex "$to", _lex_param_3 
.annotate 'line', 87
    nqp_decontainerize $P5001, _lex_param_0
    find_lex $P5004, "$?PACKAGE"
    get_who $P5003, $P5004
    set $P5002, $P5003["$EDGE_CHARCLASS"]
    unless_null $P5002, fallback266
    nqp_get_sc_object $P5005, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P5002, $P5005
  fallback266:
    set $N5002, $P5002
    $P5006 = _lex_param_1."negate"()
    istrue $I5001, $P5006
    set $N5003, $I5001
    add $N5001, $N5002, $N5003
    find_lex $P5008, "%cclass_code"
.annotate 'line', 88
    $P5009 = _lex_param_1."subtype"()
    set $S5002, $P5009
    downcase $S5001, $S5002
    set $P5007, $P5008[$S5001]
    unless_null $P5007, fallback267
    nqp_get_sc_object $P5010, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P5007, $P5010
  fallback267:
    $P5011 = $P5001."addedge"(_lex_param_2, _lex_param_3, $N5001, $P5007)
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "concat" :subid("cuid_12_1350818088.873") :anon :lex :outer("cuid_26_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 91
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
.annotate 'line', 93
    $P5001 = _lex_param_1."list"()
    set $N5002, $P5001
    set $N5003, 1
    sub $N5001, $N5002, $N5003
    set $I5001, $N5001
    set $I102, $I5001
  while109_test268:
    set $N5004, _lex_param_2
    set $N5005, 0
    isgt $I5002, $N5004, $N5005
    set $I5004, $I5002
    unless $I5002 goto if110_end274 
    set $N5006, $I101
    set $N5007, $I102
    islt $I5003, $N5006, $N5007
    set $I5004, $I5003
  if110_end274:
    set $I5007, $I5004
    unless $I5004 goto while109_done272 
  while109_redo270:
.annotate 'line', 94
.annotate 'line', 95
    nqp_decontainerize $P5002, _lex_param_0
    set $P5003, _lex_param_1[$I101]
    unless_null $P5003, fallback275
    nqp_get_sc_object $P5004, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P5003, $P5004
  fallback275:
    $P5005 = $P5002."regex_nfa"($P5003, _lex_param_2, -1)
    set $I5005, $P5005
    set _lex_param_2, $I5005
    set $N5009, $I101
    set $N5010, 1
    add $N5008, $N5009, $N5010
    set $I5006, $N5008
    set $I101, $I5006
    set $I5007, $I101
    goto while109_test268 
  while109_done272:
    set $N5011, _lex_param_2
    set $N5012, 0
    isgt $I5008, $N5011, $N5012
    set $I5010, $I5008
    unless $I5008 goto if112_end279 
    set $N5013, $I102
    set $N5014, 0
    isge $I5009, $N5013, $N5014
    set $I5010, $I5009
  if112_end279:
    unless $I5010 goto if111_else276 
.annotate 'line', 98
    nqp_decontainerize $P5006, _lex_param_0
    set $P5007, _lex_param_1[$I101]
    unless_null $P5007, fallback280
    nqp_get_sc_object $P5008, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P5007, $P5008
  fallback280:
    $P5009 = $P5006."regex_nfa"($P5007, _lex_param_2, _lex_param_3)
    set $P5010, $P5009
    goto if111_end277
  if111_else276:
    box $P5011, _lex_param_3
    set $P5010, $P5011
  if111_end277:
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "enumcharlist" :subid("cuid_13_1350818088.873") :anon :lex :outer("cuid_26_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 101
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param int _lex_param_2 
    .param int _lex_param_3 
    .lex "$charlist", $P101 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$from", _lex_param_2 
    .lex "$to", _lex_param_3 
    nqp_get_sc_object $P5001, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P101, $P5001
    set $P5002, _lex_param_1[0]
    unless_null $P5002, fallback281
    nqp_get_sc_object $P5003, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P5002, $P5003
  fallback281:
    set $P101, $P5002
.annotate 'line', 103
    $P5004 = _lex_param_1."subtype"()
    set $S5001, $P5004
    iseq $I5001, $S5001, "zerowidth"
    unless $I5001 goto if113_else282 
.annotate 'line', 104
    nqp_decontainerize $P5005, _lex_param_0
    find_lex $P5008, "$?PACKAGE"
    get_who $P5007, $P5008
    set $P5006, $P5007["$EDGE_CHARLIST"]
    unless_null $P5006, fallback284
    nqp_get_sc_object $P5009, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P5006, $P5009
  fallback284:
    set $N5002, $P5006
    $P5010 = _lex_param_1."negate"()
    istrue $I5002, $P5010
    set $N5003, $I5002
    add $N5001, $N5002, $N5003
    $P5011 = $P5005."addedge"(_lex_param_2, -1, $N5001, $P101)
    set $I5003, $P5011
    set _lex_param_2, $I5003
.annotate 'line', 105
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5015, "$?PACKAGE"
    get_who $P5014, $P5015
    set $P5013, $P5014["$EDGE_FATE"]
    unless_null $P5013, fallback285
    nqp_get_sc_object $P5016, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P5013, $P5016
  fallback285:
    $P5017 = $P5012."addedge"(_lex_param_2, 0, $P5013, 0)
    set $P5025, $P5017
    goto if113_end283
  if113_else282:
.annotate 'line', 107
.annotate 'line', 108
    nqp_decontainerize $P5018, _lex_param_0
    find_lex $P5021, "$?PACKAGE"
    get_who $P5020, $P5021
    set $P5019, $P5020["$EDGE_CHARLIST"]
    unless_null $P5019, fallback286
    nqp_get_sc_object $P5022, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P5019, $P5022
  fallback286:
    set $N5005, $P5019
    $P5023 = _lex_param_1."negate"()
    istrue $I5004, $P5023
    set $N5006, $I5004
    add $N5004, $N5005, $N5006
    $P5024 = $P5018."addedge"(_lex_param_2, _lex_param_3, $N5004, $P101)
    set $P5025, $P5024
  if113_end283:
    .return ($P5025) 
.end
.HLL "nqp"
.namespace []
.sub "literal" :subid("cuid_14_1350818088.873") :anon :lex :outer("cuid_26_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 112
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param int _lex_param_2 
    .param int _lex_param_3 
    .const 'Sub' $P5016 = 'cuid_104_1350818088.873' 
    capture_lex $P5016 
    .const 'Sub' $P5016 = 'cuid_105_1350818088.873' 
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
    unless_null $P5001, fallback287
    nqp_get_sc_object $P5002, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P5001, $P5002
  fallback287:
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
    unless $I5003 goto if114_else288 
.annotate 'line', 115
.annotate 'line', 116
    $P5003 = _lex_param_1."subtype"()
    set $S5002, $P5003
    iseq $I5004, $S5002, "ignorecase"
    unless $I5004 goto if115_else290 
    .const 'Sub' $P5004 = 'cuid_104_1350818088.873' 
    capture_lex $P5004
    $P5005 = $P5004()
    set $P5008, $P5005
    goto if115_end291
  if115_else290:
    .const 'Sub' $P5006 = 'cuid_105_1350818088.873' 
    capture_lex $P5006
    $P5007 = $P5006()
    set $P5008, $P5007
  if115_end291:
    set $P5015, $P5008
    goto if114_end289
  if114_else288:
.annotate 'line', 136
.annotate 'line', 137
    nqp_decontainerize $P5009, _lex_param_0
    find_lex $P5012, "$?PACKAGE"
    get_who $P5011, $P5012
    set $P5010, $P5011["$EDGE_EPSILON"]
    unless_null $P5010, fallback309
    nqp_get_sc_object $P5013, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P5010, $P5013
  fallback309:
    $P5014 = $P5009."addedge"(_lex_param_2, _lex_param_3, $P5010, 0)
    set $P5015, $P5014
  if114_end289:
    .return ($P5015) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_104_1350818088.873") :anon :lex :outer("cuid_14_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 116
    .lex "$litconst_lc", $S101 
    .lex "$litconst_uc", $S102 
    set $S101, ""
    set $S102, ""
    find_lex $P5002, "$node"
    set $P5001, $P5002[0]
    unless_null $P5001, fallback292
    nqp_get_sc_object $P5003, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P5001, $P5003
  fallback292:
    set $S5002, $P5001
    downcase $S5001, $S5002
    set $S101, $S5001
    find_lex $P5005, "$node"
    set $P5004, $P5005[0]
    unless_null $P5004, fallback293
    nqp_get_sc_object $P5006, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P5004, $P5006
  fallback293:
    set $S5004, $P5004
    upcase $S5003, $S5004
    set $S102, $S5003
  while116_test294:
    find_lex $I5002, "$i"
    set $N5001, $I5002
    find_lex $I5003, "$litlen"
    set $N5002, $I5003
    islt $I5001, $N5001, $N5002
    set $I5012, $I5001
    unless $I5001 goto while116_done298 
  while116_redo296:
.annotate 'line', 119
.annotate 'line', 120
    find_lex $P5008, "self"
    nqp_decontainerize $P5007, $P5008
    find_lex $I5004, "$from"
    find_lex $P5011, "$?PACKAGE"
    get_who $P5010, $P5011
    set $P5009, $P5010["$EDGE_CODEPOINT_I"]
    unless_null $P5009, fallback299
    nqp_get_sc_object $P5012, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P5009, $P5012
  fallback299:
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
    goto while116_test294 
  while116_done298:
.annotate 'line', 124
    find_lex $P5018, "self"
    nqp_decontainerize $P5017, $P5018
    find_lex $I5013, "$from"
    find_lex $I5014, "$to"
    find_lex $P5021, "$?PACKAGE"
    get_who $P5020, $P5021
    set $P5019, $P5020["$EDGE_CODEPOINT_I"]
    unless_null $P5019, fallback300
    nqp_get_sc_object $P5022, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P5019, $P5022
  fallback300:
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
.sub "" :subid("cuid_105_1350818088.873") :anon :lex :outer("cuid_14_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 127
    .lex "$litconst", $S101 
    set $S101, ""
    find_lex $P5002, "$node"
    set $P5001, $P5002[0]
    unless_null $P5001, fallback301
    nqp_get_sc_object $P5003, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P5001, $P5003
  fallback301:
    set $S5001, $P5001
    set $S101, $S5001
  while117_test302:
    find_lex $I5002, "$i"
    set $N5001, $I5002
    find_lex $I5003, "$litlen"
    set $N5002, $I5003
    islt $I5001, $N5001, $N5002
    set $I5010, $I5001
    unless $I5001 goto while117_done306 
  while117_redo304:
.annotate 'line', 129
.annotate 'line', 130
    find_lex $P5005, "self"
    nqp_decontainerize $P5004, $P5005
    find_lex $I5004, "$from"
    find_lex $P5008, "$?PACKAGE"
    get_who $P5007, $P5008
    set $P5006, $P5007["$EDGE_CODEPOINT"]
    unless_null $P5006, fallback307
    nqp_get_sc_object $P5009, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P5006, $P5009
  fallback307:
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
    goto while117_test302 
  while117_done306:
.annotate 'line', 133
    find_lex $P5012, "self"
    nqp_decontainerize $P5011, $P5012
    find_lex $I5011, "$from"
    find_lex $I5012, "$to"
    find_lex $P5015, "$?PACKAGE"
    get_who $P5014, $P5015
    set $P5013, $P5014["$EDGE_CODEPOINT"]
    unless_null $P5013, fallback308
    nqp_get_sc_object $P5016, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P5013, $P5016
  fallback308:
    find_lex $I5014, "$i"
    ord $I5013, $S101, $I5014
    $P5017 = $P5011."addedge"($I5011, $I5012, $P5013, $I5013)
    .return ($P5017) 
.end
.HLL "nqp"
.namespace []
.sub "subrule" :subid("cuid_15_1350818088.873") :anon :lex :outer("cuid_26_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 141
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param int _lex_param_2 
    .param int _lex_param_3 
    .const 'Sub' $P5070 = 'cuid_106_1350818088.873' 
    capture_lex $P5070 
    .const 'Sub' $P5070 = 'cuid_107_1350818088.873' 
    capture_lex $P5070 
    .lex "$subtype", $P101 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$from", _lex_param_2 
    .lex "$to", _lex_param_3 
    nqp_get_sc_object $P5001, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P101, $P5001
.annotate 'line', 142
    $P5002 = _lex_param_1."subtype"()
    set $P101, $P5002
.annotate 'line', 143
    $P5003 = _lex_param_1."name"()
    set $S5001, $P5003
    iseq $I5001, $S5001, "before"
    set $I5003, $I5001
    unless $I5001 goto if119_end313 
    $P5004 = _lex_param_1."negate"()
    isfalse $I5002, $P5004
    set $I5003, $I5002
  if119_end313:
    unless $I5003 goto if118_else310 
    .const 'Sub' $P5005 = 'cuid_106_1350818088.873' 
    capture_lex $P5005
    $P5006 = $P5005()
    set $P5069, $P5006
    goto if118_end311
  if118_else310:
    set $S5002, $P101
    isne $I5004, $S5002, "zerowidth"
    set $I5010, $I5004
    unless $I5004 goto if121_end320 
.annotate 'line', 149
    $P5007 = _lex_param_1."name"()
    set $S5003, $P5007
    iseq $I5005, $S5003, "alpha"
    set $I5009, $I5005
    if $I5005 goto unless122_end322 
    set $S5004, $P101
    iseq $I5006, $S5004, "method"
    set $I5008, $I5006
    unless $I5006 goto if123_end324 
.annotate 'line', 151
    nqp_get_sc_object $P5011, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 0
    nqp_get_package_through_who $P5010, $P5011, "QAST"
    get_who $P5009, $P5010
    set $P5008, $P5009["SVal"]
    unless_null $P5008, fallback327
    nqp_get_sc_object $P5012, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P5008, $P5012
  fallback327:
    set $P5014, _lex_param_1[0]
    unless_null $P5014, fallback328
    nqp_get_sc_object $P5015, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P5014, $P5015
  fallback328:
    set $P5013, $P5014[0]
    unless_null $P5013, fallback329
    nqp_get_sc_object $P5016, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P5013, $P5016
  fallback329:
    $P5017 = $P5008."ACCEPTS"($P5013)
    unless $P5017 goto if124_else325 
    set $P5019, _lex_param_1[0]
    unless_null $P5019, fallback330
    nqp_get_sc_object $P5020, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P5019, $P5020
  fallback330:
    set $P5018, $P5019[0]
    unless_null $P5018, fallback331
    nqp_get_sc_object $P5021, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P5018, $P5021
  fallback331:
    $P5022 = $P5018."value"()
    set $P5027, $P5022
    goto if124_end326
  if124_else325:
    set $P5024, _lex_param_1[0]
    unless_null $P5024, fallback332
    nqp_get_sc_object $P5025, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P5024, $P5025
  fallback332:
    set $P5023, $P5024[0]
    unless_null $P5023, fallback333
    nqp_get_sc_object $P5026, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P5023, $P5026
  fallback333:
    set $P5027, $P5023
  if124_end326:
    set $S5005, $P5027
    iseq $I5007, $S5005, "alpha"
    set $I5008, $I5007
  if123_end324:
    set $I5009, $I5008
  unless122_end322:
    set $I5010, $I5009
  if121_end320:
    unless $I5010 goto if120_else317 
.annotate 'line', 152
    nqp_decontainerize $P5028, _lex_param_0
    find_lex $P5031, "$?PACKAGE"
    get_who $P5030, $P5031
    set $P5029, $P5030["$EDGE_CHARCLASS"]
    unless_null $P5029, fallback334
    nqp_get_sc_object $P5032, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P5029, $P5032
  fallback334:
    set $N5002, $P5029
    $P5033 = _lex_param_1."negate"()
    set $N5003, $P5033
    add $N5001, $N5002, $N5003
    $P5034 = $P5028."addedge"(_lex_param_2, _lex_param_3, $N5001, .CCLASS_ALPHABETIC)
    set $I5011, $P5034
    set _lex_param_3, $I5011
.annotate 'line', 154
    nqp_decontainerize $P5035, _lex_param_0
    find_lex $P5038, "$?PACKAGE"
    get_who $P5037, $P5038
    set $P5036, $P5037["$EDGE_CODEPOINT"]
    unless_null $P5036, fallback335
    nqp_get_sc_object $P5039, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P5036, $P5039
  fallback335:
    set $N5005, $P5036
    $P5040 = _lex_param_1."negate"()
    set $N5006, $P5040
    add $N5004, $N5005, $N5006
    $P5041 = $P5035."addedge"(_lex_param_2, _lex_param_3, $N5004, 95)
    set $P5068, $P5041
    goto if120_end318
  if120_else317:
    set $S5006, $P101
    iseq $I5012, $S5006, "zerowidth"
    unless $I5012 goto if125_else336 
.annotate 'line', 156
.annotate 'line', 157
    $P5042 = _lex_param_1."negate"()
    unless $P5042 goto if126_else338 
.annotate 'line', 158
    nqp_decontainerize $P5043, _lex_param_0
    $P5044 = $P5043."fate"(_lex_param_1, _lex_param_2, _lex_param_3)
    set $P5047, $P5044
    goto if126_end339
  if126_else338:
    .const 'Sub' $P5045 = 'cuid_107_1350818088.873' 
    capture_lex $P5045
    $P5046 = $P5045()
    set $P5047, $P5046
  if126_end339:
    set $P5067, $P5047
    goto if125_end337
  if125_else336:
.annotate 'line', 166
    set $S5007, $P101
    iseq $I5013, $S5007, "capture"
    box $P5051, $I5013
    set $P5050, $P5051
    unless $I5013 goto if128_end344 
    set $P5048, _lex_param_1[1]
    unless_null $P5048, fallback345
    nqp_get_sc_object $P5049, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P5048, $P5049
  fallback345:
    set $P5050, $P5048
  if128_end344:
    unless $P5050 goto if127_else341 
.annotate 'line', 168
    nqp_decontainerize $P5052, _lex_param_0
    set $P5053, _lex_param_1[1]
    unless_null $P5053, fallback346
    nqp_get_sc_object $P5054, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P5053, $P5054
  fallback346:
    $P5055 = $P5052."regex_nfa"($P5053, _lex_param_2, _lex_param_3)
    set $P5066, $P5055
    goto if127_end342
  if127_else341:
.annotate 'line', 169
    nqp_decontainerize $P5056, _lex_param_0
    find_lex $P5059, "$?PACKAGE"
    get_who $P5058, $P5059
    set $P5057, $P5058["$EDGE_SUBRULE"]
    unless_null $P5057, fallback347
    nqp_get_sc_object $P5060, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P5057, $P5060
  fallback347:
    set $P5062, _lex_param_1[0]
    unless_null $P5062, fallback348
    nqp_get_sc_object $P5063, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P5062, $P5063
  fallback348:
    set $P5061, $P5062[0]
    unless_null $P5061, fallback349
    nqp_get_sc_object $P5064, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P5061, $P5064
  fallback349:
    $P5065 = $P5056."addedge"(_lex_param_2, _lex_param_3, $P5057, $P5061)
    set $P5066, $P5065
  if127_end342:
    set $P5067, $P5066
  if125_end337:
    set $P5068, $P5067
  if120_end318:
    set $P5069, $P5068
  if118_end311:
    .return ($P5069) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_106_1350818088.873") :anon :lex :outer("cuid_15_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 143
    .lex "$end", $I101 
    set $I101, 0
.annotate 'line', 144
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    $P5003 = $P5001."addstate"()
    set $I5001, $P5003
    set $I101, $I5001
.annotate 'line', 145
    find_lex $P5005, "self"
    nqp_decontainerize $P5004, $P5005
    find_lex $P5009, "$node"
    set $P5008, $P5009[0]
    unless_null $P5008, fallback314
    nqp_get_sc_object $P5010, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P5008, $P5010
  fallback314:
    set $P5007, $P5008[1]
    unless_null $P5007, fallback315
    nqp_get_sc_object $P5011, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P5007, $P5011
  fallback315:
    set $P5006, $P5007["orig_qast"]
    unless_null $P5006, fallback316
    nqp_get_sc_object $P5012, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P5006, $P5012
  fallback316:
    find_lex $I5002, "$from"
    $P5004."regex_nfa"($P5006, $I5002, $I101)
.annotate 'line', 146
    find_lex $P5014, "self"
    nqp_decontainerize $P5013, $P5014
    find_lex $P5015, "$node"
    find_lex $I5003, "$to"
    $P5016 = $P5013."fate"($P5015, $I101, $I5003)
    .return ($P5016) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_107_1350818088.873") :anon :lex :outer("cuid_15_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 160
    .lex "$end", $I101 
    set $I101, 0
.annotate 'line', 161
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    $P5003 = $P5001."addstate"()
    set $I5001, $P5003
    set $I101, $I5001
.annotate 'line', 162
    find_lex $P5005, "self"
    nqp_decontainerize $P5004, $P5005
    find_lex $I5002, "$from"
    find_lex $P5008, "$?PACKAGE"
    get_who $P5007, $P5008
    set $P5006, $P5007["$EDGE_SUBRULE"]
    unless_null $P5006, fallback340
    nqp_get_sc_object $P5009, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P5006, $P5009
  fallback340:
    find_lex $P5010, "$node"
    $P5011 = $P5010."name"()
    $P5004."addedge"($I5002, $I101, $P5006, $P5011)
.annotate 'line', 163
    find_lex $P5013, "self"
    nqp_decontainerize $P5012, $P5013
    find_lex $P5014, "$node"
    find_lex $I5003, "$to"
    $P5015 = $P5012."fate"($P5014, $I101, $I5003)
    .return ($P5015) 
.end
.HLL "nqp"
.namespace []
.sub "quant" :subid("cuid_16_1350818088.873") :anon :lex :outer("cuid_26_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 173
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param int _lex_param_2 
    .param int _lex_param_3 
    .const 'Sub' $P5025 = 'cuid_109_1350818088.873' 
    capture_lex $P5025 
    .const 'Sub' $P5025 = 'cuid_111_1350818088.873' 
    capture_lex $P5025 
    .const 'Sub' $P5025 = 'cuid_112_1350818088.873' 
    capture_lex $P5025 
    .const 'Sub' $P5025 = 'cuid_113_1350818088.873' 
    capture_lex $P5025 
    .const 'Sub' $P5025 = 'cuid_114_1350818088.873' 
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
    set_label $P101, lexotic_350
    .lex "RETURN", $P101
    set $N5002, 0
.annotate 'line', 174
    $P5002 = _lex_param_1."min"()
    set $P5001, $P5002
    defined $I5001, $P5001
    if $I5001, defor352
    box $P5003, 0
    set $P5001, $P5003
  defor352:
    set $N5003, $P5001
    add $N5001, $N5002, $N5003
    set $I5002, $N5001
    set $I101, $I5002
    set $N5005, 0
.annotate 'line', 175
    $P5005 = _lex_param_1."max"()
    set $P5004, $P5005
    defined $I5003, $P5004
    if $I5003, defor353
    box $P5006, -1
    set $P5004, $P5006
  defor353:
    set $N5006, $P5004
    add $N5004, $N5005, $N5006
    set $I5004, $N5004
    set $I102, $I5004
    set $N5007, $I102
    set $N5008, 1
    isgt $I5005, $N5007, $N5008
    set $I5007, $I5005
    if $I5005 goto unless130_end357 
    set $N5009, $I101
    set $N5010, 1
    isgt $I5006, $N5009, $N5010
    set $I5007, $I5006
  unless130_end357:
    unless $I5007 goto if129_end355 
    .const 'Sub' $P5007 = 'cuid_109_1350818088.873' 
    capture_lex $P5007
    $P5008 = $P5007()
  if129_end355:
    set $N5011, $I102
    set $N5012, -1
    iseq $I5008, $N5011, $N5012
    unless $I5008 goto if142_else393 
.annotate 'line', 208
    set $N5013, $I101
    set $N5014, 0
    iseq $I5009, $N5013, $N5014
    unless $I5009 goto if143_else395 
.annotate 'line', 209
    set $P5009, _lex_param_1[1]
    unless_null $P5009, fallback399
    nqp_get_sc_object $P5010, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P5009, $P5010
  fallback399:
    defined $I5010, $P5009
    unless $I5010 goto if144_else397 
    .const 'Sub' $P5011 = 'cuid_111_1350818088.873' 
    capture_lex $P5011
    $P5012 = $P5011()
    set $P5015, $P5012
    goto if144_end398
  if144_else397:
    .const 'Sub' $P5013 = 'cuid_112_1350818088.873' 
    capture_lex $P5013
    $P5014 = $P5013()
    set $P5015, $P5014
  if144_end398:
    goto if143_end396
  if143_else395:
    .const 'Sub' $P5016 = 'cuid_113_1350818088.873' 
    capture_lex $P5016
    $P5017 = $P5016()
  if143_end396:
    box $P5024, _lex_param_3
    set $P5023, $P5024
    goto if142_end394
  if142_else393:
    set $N5015, $I101
    set $N5016, 0
    iseq $I5011, $N5015, $N5016
    set $I5013, $I5011
    unless $I5011 goto if153_end430 
    set $N5017, $I102
    set $N5018, 1
    iseq $I5012, $N5017, $N5018
    set $I5013, $I5012
  if153_end430:
    unless $I5013 goto if152_else427 
    .const 'Sub' $P5018 = 'cuid_114_1350818088.873' 
    capture_lex $P5018
    $P5019 = $P5018()
    set $P5022, $P5019
    goto if152_end428
  if152_else427:
.annotate 'line', 246
.annotate 'line', 247
    nqp_decontainerize $P5020, _lex_param_0
    $P5021 = $P5020."fate"(_lex_param_1, _lex_param_2, _lex_param_3)
    set $P5022, $P5021
  if152_end428:
    set $P5023, $P5022
  if142_end394:
    goto lexotic_351
  lexotic_350:
    .get_results ($P5023)
  lexotic_351:
    .return ($P5023) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_109_1350818088.873") :anon :lex :outer("cuid_16_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 177
    .const 'Sub' $P5028 = 'cuid_108_1350818088.873' 
    capture_lex $P5028 
    .const 'Sub' $P5028 = 'cuid_110_1350818088.873' 
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
    unless_null $P5001, fallback358
    nqp_get_sc_object $P5003, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P5001, $P5003
  fallback358:
    defined $I5001, $P5001
    set $I103, $I5001
  while131_test359:
    set $N5001, $I101
    find_lex $I5003, "$max"
    set $N5002, $I5003
    islt $I5002, $N5001, $N5002
    set $I5006, $I5002
    if $I5002 goto unless132_end365 
    set $N5003, $I101
    find_lex $I5005, "$min"
    set $N5004, $I5005
    islt $I5004, $N5003, $N5004
    set $I5006, $I5004
  unless132_end365:
    set $I5016, $I5006
    unless $I5006 goto while131_done363 
  while131_redo361:
.annotate 'line', 181
    set $N5005, $I101
    find_lex $I5008, "$min"
    set $N5006, $I5008
    isge $I5007, $N5005, $N5006
    unless $I5007 goto if133_end367 
    .const 'Sub' $P5004 = 'cuid_108_1350818088.873' 
    capture_lex $P5004
    $P5005 = $P5004()
  if133_end367:
    set $I5010, $I103
    unless $I103 goto if136_end374 
    set $N5007, $I101
    set $N5008, 0
    isgt $I5009, $N5007, $N5008
    set $I5010, $I5009
  if136_end374:
    unless $I5010 goto if135_end372 
.annotate 'line', 186
.annotate 'line', 187
    find_lex $P5007, "self"
    nqp_decontainerize $P5006, $P5007
    find_lex $P5009, "$node"
    set $P5008, $P5009[1]
    unless_null $P5008, fallback375
    nqp_get_sc_object $P5010, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P5008, $P5010
  fallback375:
    find_lex $I5011, "$from"
    $P5011 = $P5006."regex_nfa"($P5008, $I5011, -1)
    set $I5012, $P5011
    store_lex "$from", $I5012
  if135_end372:
.annotate 'line', 189
    find_lex $P5013, "self"
    nqp_decontainerize $P5012, $P5013
    find_lex $P5015, "$node"
    set $P5014, $P5015[0]
    unless_null $P5014, fallback376
    nqp_get_sc_object $P5016, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P5014, $P5016
  fallback376:
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
    goto while131_test359 
  while131_done363:
.annotate 'line', 192
    find_lex $P5019, "self"
    nqp_decontainerize $P5018, $P5019
    find_lex $I5017, "$from"
    find_lex $I5018, "$to"
    find_lex $P5022, "$?PACKAGE"
    get_who $P5021, $P5022
    set $P5020, $P5021["$EDGE_EPSILON"]
    unless_null $P5020, fallback377
    nqp_get_sc_object $P5023, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P5020, $P5023
  fallback377:
    $P5018."addedge"($I5017, $I5018, $P5020, 0)
    find_lex $I5020, "$max"
    set $N5012, $I5020
    set $N5013, -1
    iseq $I5019, $N5012, $N5013
    unless $I5019 goto if137_end379 
    .const 'Sub' $P5024 = 'cuid_110_1350818088.873' 
    capture_lex $P5024
    $P5025 = $P5024()
  if137_end379:
    find_lex $I5022, "$to"
    set $N5014, $I5022
    set $N5015, 0
    islt $I5021, $N5014, $N5015
    set $I5024, $I5021
    unless $I5021 goto if141_end392 
    set $N5016, $I102
    set $N5017, 0
    isgt $I5023, $N5016, $N5017
    set $I5024, $I5023
  if141_end392:
    unless $I5024 goto if140_end390 
    store_lex "$to", $I102
  if140_end390:
    find_lex $I5025, "$to"
    find_lex $P5026, "RETURN"
    $P5027 = $P5026($I5025)
    .return ($P5027) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_108_1350818088.873") :anon :lex :outer("cuid_109_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 182
    .lex "$f", $I101 
    set $I101, 0
.annotate 'line', 183
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    find_lex $I5001, "$from"
    find_lex $I5002, "$to"
    find_lex $P5005, "$?PACKAGE"
    get_who $P5004, $P5005
    set $P5003, $P5004["$EDGE_EPSILON"]
    unless_null $P5003, fallback368
    nqp_get_sc_object $P5006, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P5003, $P5006
  fallback368:
    $P5007 = $P5001."addedge"($I5001, $I5002, $P5003, 0)
    set $I5003, $P5007
    set $I101, $I5003
    find_lex $I5004, "$st"
    set $I5005, $I5004
    if $I5004 goto unless134_end370 
    set $I5005, $I101
  unless134_end370:
    store_lex "$st", $I5005
    .return ($I5005) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_110_1350818088.873") :anon :lex :outer("cuid_109_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 193
    .lex "$start", $I101 
    .lex "$looper", $P101 
    set $I101, 0
    nqp_get_sc_object $P5001, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P101, $P5001
.annotate 'line', 194
    find_lex $P5003, "self"
    nqp_decontainerize $P5002, $P5003
    $P5004 = $P5002."addstate"()
    set $I5001, $P5004
    set $I101, $I5001
.annotate 'line', 195
    find_lex $P5006, "self"
    nqp_decontainerize $P5005, $P5006
    find_lex $I5002, "$from"
    find_lex $P5009, "$?PACKAGE"
    get_who $P5008, $P5009
    set $P5007, $P5008["$EDGE_EPSILON"]
    unless_null $P5007, fallback380
    nqp_get_sc_object $P5010, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P5007, $P5010
  fallback380:
    $P5005."addedge"($I5002, $I101, $P5007, 0)
    store_lex "$from", $I101
.annotate 'line', 197
    find_lex $P5012, "self"
    nqp_decontainerize $P5011, $P5012
    $P5013 = $P5011."addstate"()
    set $P101, $P5013
.annotate 'line', 198
    find_lex $P5015, "self"
    nqp_decontainerize $P5014, $P5015
    find_lex $I5003, "$to"
    find_lex $P5018, "$?PACKAGE"
    get_who $P5017, $P5018
    set $P5016, $P5017["$EDGE_EPSILON"]
    unless_null $P5016, fallback381
    nqp_get_sc_object $P5019, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P5016, $P5019
  fallback381:
    $P5014."addedge"($P101, $I5003, $P5016, 0)
.annotate 'line', 199
    find_lex $P5021, "self"
    nqp_decontainerize $P5020, $P5021
    find_lex $I5004, "$from"
    find_lex $P5024, "$?PACKAGE"
    get_who $P5023, $P5024
    set $P5022, $P5023["$EDGE_EPSILON"]
    unless_null $P5022, fallback382
    nqp_get_sc_object $P5025, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P5022, $P5025
  fallback382:
    $P5020."addedge"($P101, $I5004, $P5022, 0)
    find_lex $I5005, "$has_sep"
    set $I5008, $I5005
    unless $I5005 goto if139_end386 
    find_lex $I5007, "$count"
    set $N5001, $I5007
    set $N5002, 0
    isgt $I5006, $N5001, $N5002
    set $I5008, $I5006
  if139_end386:
    unless $I5008 goto if138_end384 
.annotate 'line', 200
.annotate 'line', 201
    find_lex $P5027, "self"
    nqp_decontainerize $P5026, $P5027
    find_lex $P5029, "$node"
    set $P5028, $P5029[1]
    unless_null $P5028, fallback387
    nqp_get_sc_object $P5030, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P5028, $P5030
  fallback387:
    find_lex $I5009, "$from"
    $P5031 = $P5026."regex_nfa"($P5028, $I5009, -1)
    set $I5010, $P5031
    store_lex "$from", $I5010
  if138_end384:
.annotate 'line', 203
    find_lex $P5033, "self"
    nqp_decontainerize $P5032, $P5033
    find_lex $P5035, "$node"
    set $P5034, $P5035[0]
    unless_null $P5034, fallback388
    nqp_get_sc_object $P5036, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P5034, $P5036
  fallback388:
    find_lex $I5011, "$from"
    $P5037 = $P5032."regex_nfa"($P5034, $I5011, $P101)
    .return ($P5037) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_111_1350818088.873") :anon :lex :outer("cuid_16_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 210
    .lex "$start", $I101 
    .lex "$looper", $I102 
    .lex "$st", $I103 
    set $I101, 0
    set $I102, 0
    set $I103, 0
.annotate 'line', 211
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    $P5003 = $P5001."addstate"()
    set $I5001, $P5003
    set $I101, $I5001
.annotate 'line', 212
    find_lex $P5005, "self"
    nqp_decontainerize $P5004, $P5005
    find_lex $I5002, "$from"
    find_lex $P5008, "$?PACKAGE"
    get_who $P5007, $P5008
    set $P5006, $P5007["$EDGE_EPSILON"]
    unless_null $P5006, fallback400
    nqp_get_sc_object $P5009, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P5006, $P5009
  fallback400:
    $P5004."addedge"($I5002, $I101, $P5006, 0)
.annotate 'line', 213
    find_lex $P5011, "self"
    nqp_decontainerize $P5010, $P5011
    $P5012 = $P5010."addstate"()
    set $I5003, $P5012
    set $I102, $I5003
.annotate 'line', 214
    find_lex $P5014, "self"
    nqp_decontainerize $P5013, $P5014
    find_lex $P5016, "$node"
    set $P5015, $P5016[0]
    unless_null $P5015, fallback401
    nqp_get_sc_object $P5017, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P5015, $P5017
  fallback401:
    $P5018 = $P5013."regex_nfa"($P5015, $I101, $I102)
    set $I5004, $P5018
    set $I103, $I5004
.annotate 'line', 215
    find_lex $P5020, "self"
    nqp_decontainerize $P5019, $P5020
    find_lex $P5022, "$node"
    set $P5021, $P5022[1]
    unless_null $P5021, fallback402
    nqp_get_sc_object $P5023, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P5021, $P5023
  fallback402:
    $P5019."regex_nfa"($P5021, $I102, $I101)
.annotate 'line', 216
    find_lex $P5025, "self"
    nqp_decontainerize $P5024, $P5025
    find_lex $I5005, "$to"
    find_lex $P5028, "$?PACKAGE"
    get_who $P5027, $P5028
    set $P5026, $P5027["$EDGE_EPSILON"]
    unless_null $P5026, fallback403
    nqp_get_sc_object $P5029, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P5026, $P5029
  fallback403:
    $P5024."addedge"($I102, $I5005, $P5026, 0)
.annotate 'line', 217
    find_lex $P5031, "self"
    nqp_decontainerize $P5030, $P5031
    find_lex $I5006, "$from"
    find_lex $I5007, "$to"
    find_lex $P5034, "$?PACKAGE"
    get_who $P5033, $P5034
    set $P5032, $P5033["$EDGE_EPSILON"]
    unless_null $P5032, fallback404
    nqp_get_sc_object $P5035, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P5032, $P5035
  fallback404:
    $P5036 = $P5030."addedge"($I5006, $I5007, $P5032, 0)
    set $I5008, $P5036
    set $I103, $I5008
    find_lex $I5010, "$to"
    set $N5001, $I5010
    set $N5002, 0
    islt $I5009, $N5001, $N5002
    set $I5012, $I5009
    unless $I5009 goto if146_end408 
    set $N5003, $I103
    set $N5004, 0
    isgt $I5011, $N5003, $N5004
    set $I5012, $I5011
  if146_end408:
    set $I5013, $I5012
    unless $I5012 goto if145_end406 
    store_lex "$to", $I103
    set $I5013, $I103
  if145_end406:
    .return ($I5013) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_112_1350818088.873") :anon :lex :outer("cuid_16_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 220
    .lex "$st", $I101 
    set $I101, 0
.annotate 'line', 221
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    find_lex $P5004, "$node"
    set $P5003, $P5004[0]
    unless_null $P5003, fallback409
    nqp_get_sc_object $P5005, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P5003, $P5005
  fallback409:
    find_lex $I5001, "$from"
    find_lex $I5002, "$from"
    $P5001."regex_nfa"($P5003, $I5001, $I5002)
.annotate 'line', 222
    find_lex $P5007, "self"
    nqp_decontainerize $P5006, $P5007
    find_lex $I5003, "$from"
    find_lex $I5004, "$to"
    find_lex $P5010, "$?PACKAGE"
    get_who $P5009, $P5010
    set $P5008, $P5009["$EDGE_EPSILON"]
    unless_null $P5008, fallback410
    nqp_get_sc_object $P5011, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P5008, $P5011
  fallback410:
    $P5012 = $P5006."addedge"($I5003, $I5004, $P5008, 0)
    set $I5005, $P5012
    set $I101, $I5005
    find_lex $I5007, "$to"
    set $N5001, $I5007
    set $N5002, 0
    islt $I5006, $N5001, $N5002
    set $I5009, $I5006
    unless $I5006 goto if148_end414 
    set $N5003, $I101
    set $N5004, 0
    isgt $I5008, $N5003, $N5004
    set $I5009, $I5008
  if148_end414:
    set $I5010, $I5009
    unless $I5009 goto if147_end412 
    store_lex "$to", $I101
    set $I5010, $I101
  if147_end412:
    .return ($I5010) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_113_1350818088.873") :anon :lex :outer("cuid_16_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 225
    .lex "$start", $I101 
    .lex "$looper", $I102 
    .lex "$st", $I103 
    set $I101, 0
    set $I102, 0
    set $I103, 0
.annotate 'line', 226
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    $P5003 = $P5001."addstate"()
    set $I5001, $P5003
    set $I101, $I5001
.annotate 'line', 227
    find_lex $P5005, "self"
    nqp_decontainerize $P5004, $P5005
    find_lex $I5002, "$from"
    find_lex $P5008, "$?PACKAGE"
    get_who $P5007, $P5008
    set $P5006, $P5007["$EDGE_EPSILON"]
    unless_null $P5006, fallback415
    nqp_get_sc_object $P5009, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P5006, $P5009
  fallback415:
    $P5004."addedge"($I5002, $I101, $P5006, 0)
.annotate 'line', 228
    find_lex $P5011, "self"
    nqp_decontainerize $P5010, $P5011
    $P5012 = $P5010."addstate"()
    set $I5003, $P5012
    set $I102, $I5003
.annotate 'line', 229
    find_lex $P5014, "self"
    nqp_decontainerize $P5013, $P5014
    find_lex $P5016, "$node"
    set $P5015, $P5016[0]
    unless_null $P5015, fallback416
    nqp_get_sc_object $P5017, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P5015, $P5017
  fallback416:
    $P5018 = $P5013."regex_nfa"($P5015, $I101, $I102)
    set $I5004, $P5018
    set $I103, $I5004
    find_lex $P5020, "$node"
    set $P5019, $P5020[1]
    unless_null $P5019, fallback419
    nqp_get_sc_object $P5021, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P5019, $P5021
  fallback419:
    defined $I5005, $P5019
    unless $I5005 goto if149_else417 
.annotate 'line', 230
.annotate 'line', 231
    find_lex $P5023, "self"
    nqp_decontainerize $P5022, $P5023
    find_lex $P5025, "$node"
    set $P5024, $P5025[1]
    unless_null $P5024, fallback420
    nqp_get_sc_object $P5026, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P5024, $P5026
  fallback420:
    $P5027 = $P5022."regex_nfa"($P5024, $I102, $I101)
    goto if149_end418
  if149_else417:
.annotate 'line', 233
.annotate 'line', 234
    find_lex $P5029, "self"
    nqp_decontainerize $P5028, $P5029
    find_lex $P5032, "$?PACKAGE"
    get_who $P5031, $P5032
    set $P5030, $P5031["$EDGE_EPSILON"]
    unless_null $P5030, fallback421
    nqp_get_sc_object $P5033, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P5030, $P5033
  fallback421:
    $P5034 = $P5028."addedge"($I102, $I101, $P5030, 0)
  if149_end418:
.annotate 'line', 236
    find_lex $P5036, "self"
    nqp_decontainerize $P5035, $P5036
    find_lex $I5006, "$to"
    find_lex $P5039, "$?PACKAGE"
    get_who $P5038, $P5039
    set $P5037, $P5038["$EDGE_EPSILON"]
    unless_null $P5037, fallback422
    nqp_get_sc_object $P5040, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P5037, $P5040
  fallback422:
    $P5035."addedge"($I102, $I5006, $P5037, 0)
    find_lex $I5008, "$to"
    set $N5001, $I5008
    set $N5002, 0
    islt $I5007, $N5001, $N5002
    set $I5010, $I5007
    unless $I5007 goto if151_end426 
    set $N5003, $I103
    set $N5004, 0
    isgt $I5009, $N5003, $N5004
    set $I5010, $I5009
  if151_end426:
    set $I5011, $I5010
    unless $I5010 goto if150_end424 
    store_lex "$to", $I103
    set $I5011, $I103
  if150_end424:
    .return ($I5011) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_114_1350818088.873") :anon :lex :outer("cuid_16_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 240
    .lex "$st", $I101 
    set $I101, 0
.annotate 'line', 241
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    find_lex $P5004, "$node"
    set $P5003, $P5004[0]
    unless_null $P5003, fallback431
    nqp_get_sc_object $P5005, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P5003, $P5005
  fallback431:
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
    unless $I5004 goto if155_end435 
    set $N5003, $I101
    set $N5004, 0
    isgt $I5006, $N5003, $N5004
    set $I5007, $I5006
  if155_end435:
    unless $I5007 goto if154_end433 
    store_lex "$to", $I101
  if154_end433:
.annotate 'line', 243
    find_lex $P5008, "self"
    nqp_decontainerize $P5007, $P5008
    find_lex $I5008, "$from"
    find_lex $I5009, "$to"
    find_lex $P5011, "$?PACKAGE"
    get_who $P5010, $P5011
    set $P5009, $P5010["$EDGE_EPSILON"]
    unless_null $P5009, fallback436
    nqp_get_sc_object $P5012, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P5009, $P5012
  fallback436:
    $P5013 = $P5007."addedge"($I5008, $I5009, $P5009, 0)
    set $I5010, $P5013
    set $I101, $I5010
    find_lex $I5012, "$to"
    set $N5005, $I5012
    set $N5006, 0
    islt $I5011, $N5005, $N5006
    set $I5014, $I5011
    unless $I5011 goto if157_end440 
    set $N5007, $I101
    set $N5008, 0
    isgt $I5013, $N5007, $N5008
    set $I5014, $I5013
  if157_end440:
    unless $I5014 goto if156_end438 
    store_lex "$to", $I101
  if156_end438:
    find_lex $I5015, "$to"
    .return ($I5015) 
.end
.HLL "nqp"
.namespace []
.sub "qastnode" :subid("cuid_17_1350818088.873") :anon :lex :outer("cuid_26_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 251
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param int _lex_param_2 
    .param int _lex_param_3 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$from", _lex_param_2 
    .lex "$to", _lex_param_3 
.annotate 'line', 252
    $P5001 = _lex_param_1."subtype"()
    set $S5001, $P5001
    iseq $I5001, $S5001, "zerowidth"
    set $I5003, $I5001
    if $I5001 goto unless159_end444 
    $P5002 = _lex_param_1."subtype"()
    set $S5002, $P5002
    iseq $I5002, $S5002, "declarative"
    set $I5003, $I5002
  unless159_end444:
    unless $I5003 goto if158_else441 
.annotate 'line', 253
    nqp_decontainerize $P5003, _lex_param_0
    find_lex $P5006, "$?PACKAGE"
    get_who $P5005, $P5006
    set $P5004, $P5005["$EDGE_EPSILON"]
    unless_null $P5004, fallback445
    nqp_get_sc_object $P5007, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P5004, $P5007
  fallback445:
    $P5008 = $P5003."addedge"(_lex_param_2, _lex_param_3, $P5004, 0)
    set $P5011, $P5008
    goto if158_end442
  if158_else441:
.annotate 'line', 254
    nqp_decontainerize $P5009, _lex_param_0
    $P5010 = $P5009."fate"(_lex_param_1, _lex_param_2, _lex_param_3)
    set $P5011, $P5010
  if158_end442:
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "subcapture" :subid("cuid_18_1350818088.873") :anon :lex :outer("cuid_26_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 257
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param int _lex_param_2 
    .param int _lex_param_3 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$from", _lex_param_2 
    .lex "$to", _lex_param_3 
.annotate 'line', 258
    nqp_decontainerize $P5001, _lex_param_0
    set $P5002, _lex_param_1[0]
    unless_null $P5002, fallback446
    nqp_get_sc_object $P5003, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P5002, $P5003
  fallback446:
    $P5004 = $P5001."regex_nfa"($P5002, _lex_param_2, _lex_param_3)
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "save" :subid("cuid_19_1350818088.873") :anon :lex :outer("cuid_26_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 261
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("non_empty") :optional 
    .param int haz_param_9 :opt_flag 
    if haz_param_9, default454
    nqp_get_sc_object $P5015, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set _lex_param_1, $P5015
  default454:
    .lex "self", _lex_param_0 
    .lex "$non_empty", _lex_param_1 
    root_new $P101, ['parrot';'Continuation']
    set_label $P101, lexotic_447
    .lex "RETURN", $P101
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 3
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!edges"
    if $P5003 goto unless160_end450 
.annotate 'line', 262
    if _lex_param_1 goto unless161_end452 
    find_lex $P5004, "RETURN"
    $P5005 = $P5004(0)
  unless161_end452:
.annotate 'line', 264
    nqp_decontainerize $P5006, _lex_param_0
    find_lex $P5009, "$?PACKAGE"
    get_who $P5008, $P5009
    set $P5007, $P5008["$EDGE_FATE"]
    unless_null $P5007, fallback453
    nqp_get_sc_object $P5010, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P5007, $P5010
  fallback453:
    $P5011 = $P5006."addedge"(1, 0, $P5007, 0, 1 :named("newedge"))
  unless160_end450:
    nqp_decontainerize $P5012, _lex_param_0
    nqp_get_sc_object $P5013, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 3
    repr_get_attr_obj $P5014, $P5012, $P5013, "$!states"
    goto lexotic_448
  lexotic_447:
    .get_results ($P5014)
  lexotic_448:
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "qast" :subid("cuid_20_1350818088.873") :anon :lex :outer("cuid_26_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 269
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("non_empty") :optional 
    .param int haz_param_10 :opt_flag 
    .const 'Sub' $P5028 = 'cuid_118_1350818088.873' 
    capture_lex $P5028 
    if haz_param_10, default481
    nqp_get_sc_object $P5027, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set _lex_param_1, $P5027
  default481:
    .lex "$past", $P101 
    .lex "self", _lex_param_0 
    .lex "$non_empty", _lex_param_1 
    nqp_get_sc_object $P5001, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P101, $P5001
    root_new $P102, ['parrot';'Continuation']
    set_label $P102, lexotic_455
    .lex "RETURN", $P102
    nqp_decontainerize $P5002, _lex_param_0
    nqp_get_sc_object $P5003, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 3
    repr_get_attr_obj $P5004, $P5002, $P5003, "$!edges"
    if $P5004 goto unless162_end458 
.annotate 'line', 270
    if _lex_param_1 goto unless163_end460 
    find_lex $P5005, "RETURN"
    $P5006 = $P5005(0)
  unless163_end460:
.annotate 'line', 272
    nqp_decontainerize $P5007, _lex_param_0
    find_lex $P5010, "$?PACKAGE"
    get_who $P5009, $P5010
    set $P5008, $P5009["$EDGE_FATE"]
    unless_null $P5008, fallback461
    nqp_get_sc_object $P5011, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P5008, $P5011
  fallback461:
    $P5012 = $P5007."addedge"(1, 0, $P5008, 0, 1 :named("newedge"))
  unless162_end458:
.annotate 'line', 274
    nqp_get_sc_object $P5016, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 0
    nqp_get_package_through_who $P5015, $P5016, "QAST"
    get_who $P5014, $P5015
    set $P5013, $P5014["Op"]
    unless_null $P5013, fallback462
    nqp_get_sc_object $P5017, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P5013, $P5017
  fallback462:
    $P5018 = $P5013."new"("list" :named("op"))
    set $P101, $P5018
    nqp_decontainerize $P5022, _lex_param_0
    nqp_get_sc_object $P5023, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 3
    repr_get_attr_obj $P5024, $P5022, $P5023, "$!states"
    set $P5019, $P5024
    iter $P5021, $P5024
  for_next478:
    unless $P5021, for_done480
    shift $P5026, $P5021
  for_redo479:
    .const 'Sub' $P5025 = 'cuid_118_1350818088.873' 
    capture_lex $P5025
    $P5019 = $P5025($P5026)
    goto for_next478
  for_done480:
    goto lexotic_456
  lexotic_455:
    .get_results ($P101)
  lexotic_456:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_118_1350818088.873") :anon :lex :outer("cuid_20_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 275
    .param pmc _lex_param_0 
    .const 'Sub' $P5015 = 'cuid_117_1350818088.873' 
    capture_lex $P5015 
    .lex "$list", $P101 
    .lex "@values", _lex_param_0 
    nqp_get_sc_object $P5001, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P101, $P5001
.annotate 'line', 276
    nqp_get_sc_object $P5005, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 0
    nqp_get_package_through_who $P5004, $P5005, "QAST"
    get_who $P5003, $P5004
    set $P5002, $P5003["Op"]
    unless_null $P5002, fallback463
    nqp_get_sc_object $P5006, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P5002, $P5006
  fallback463:
    $P5007 = $P5002."new"("list" :named("op"))
    set $P101, $P5007
    set $P5008, _lex_param_0
    iter $P5010, _lex_param_0
  for_next475:
    unless $P5010, for_done477
    shift $P5012, $P5010
  for_redo476:
    .const 'Sub' $P5011 = 'cuid_117_1350818088.873' 
    capture_lex $P5011
    $P5008 = $P5011($P5012)
    goto for_next475
  for_done477:
.annotate 'line', 292
    find_lex $P5013, "$past"
    $P5014 = $P5013."push"($P101)
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_117_1350818088.873") :anon :lex :outer("cuid_118_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 277
    .param pmc _lex_param_0 
    .const 'Sub' $P5021 = 'cuid_116_1350818088.873' 
    capture_lex $P5021 
    .lex "$_", _lex_param_0 
    nqp_islist $I5001, _lex_param_0
    unless $I5001 goto if164_else464 
    .const 'Sub' $P5001 = 'cuid_116_1350818088.873' 
    capture_lex $P5001
    $P5002 = $P5001()
    set $P5020, $P5002
    goto if164_end465
  if164_else464:
    set $N5001, _lex_param_0
    set $S5001, $N5001
    set $S5002, _lex_param_0
    iseq $I5002, $S5001, $S5002
    unless $I5002 goto if165_else471 
.annotate 'line', 285
.annotate 'line', 286
    find_lex $P5003, "$list"
    nqp_get_sc_object $P5007, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 0
    nqp_get_package_through_who $P5006, $P5007, "QAST"
    get_who $P5005, $P5006
    set $P5004, $P5005["IVal"]
    unless_null $P5004, fallback473
    nqp_get_sc_object $P5008, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P5004, $P5008
  fallback473:
    $P5009 = $P5004."new"(_lex_param_0 :named("value"))
    $P5010 = $P5003."push"($P5009)
    set $P5019, $P5010
    goto if165_end472
  if165_else471:
.annotate 'line', 288
.annotate 'line', 289
    find_lex $P5011, "$list"
    nqp_get_sc_object $P5015, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 0
    nqp_get_package_through_who $P5014, $P5015, "QAST"
    get_who $P5013, $P5014
    set $P5012, $P5013["SVal"]
    unless_null $P5012, fallback474
    nqp_get_sc_object $P5016, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P5012, $P5016
  fallback474:
    $P5017 = $P5012."new"(_lex_param_0 :named("value"))
    $P5018 = $P5011."push"($P5017)
    set $P5019, $P5018
  if165_end472:
    set $P5020, $P5019
  if164_end465:
    .return ($P5020) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_116_1350818088.873") :anon :lex :outer("cuid_117_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 278
    .const 'Sub' $P5016 = 'cuid_115_1350818088.873' 
    capture_lex $P5016 
    .lex "$arglist", $P101 
    nqp_get_sc_object $P5001, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P101, $P5001
.annotate 'line', 279
    nqp_get_sc_object $P5005, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 0
    nqp_get_package_through_who $P5004, $P5005, "QAST"
    get_who $P5003, $P5004
    set $P5002, $P5003["Op"]
    unless_null $P5002, fallback466
    nqp_get_sc_object $P5006, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P5002, $P5006
  fallback466:
    $P5007 = $P5002."new"("list_i" :named("op"))
    set $P101, $P5007
    find_lex $P5011, "$_"
    set $P5008, $P5011
    iter $P5010, $P5011
  for_next468:
    unless $P5010, for_done470
    shift $P5013, $P5010
  for_redo469:
    .const 'Sub' $P5012 = 'cuid_115_1350818088.873' 
    capture_lex $P5012
    $P5008 = $P5012($P5013)
    goto for_next468
  for_done470:
.annotate 'line', 283
    find_lex $P5014, "$list"
    $P5015 = $P5014."push"($P101)
    .return ($P5015) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_115_1350818088.873") :anon :lex :outer("cuid_116_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 280
    .param pmc _lex_param_0 
    .lex "$i", _lex_param_0 
.annotate 'line', 281
    find_lex $P5001, "$arglist"
    nqp_get_sc_object $P5005, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 0
    nqp_get_package_through_who $P5004, $P5005, "QAST"
    get_who $P5003, $P5004
    set $P5002, $P5003["IVal"]
    unless_null $P5002, fallback467
    nqp_get_sc_object $P5006, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P5002, $P5006
  fallback467:
    $P5007 = $P5002."new"(_lex_param_0 :named("value"))
    $P5008 = $P5001."push"($P5007)
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "mergesubrule" :subid("cuid_21_1350818088.873") :anon :lex :outer("cuid_26_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 297
    .param pmc _lex_param_0 
    .param int _lex_param_1 
    .param int _lex_param_2 
    .param pmc _lex_param_3 
    .param pmc _lex_param_4 
    .param string _lex_param_5 
    .param pmc _lex_param_6 :optional 
    .param int haz_param_11 :opt_flag 
    .const 'Sub' $P5014 = 'cuid_119_1350818088.873' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_121_1350818088.873' 
    capture_lex $P5014 
    if haz_param_11, default504
    new $P5013, 'Hash'
    set _lex_param_6, $P5013
  default504:
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
    unless $I5001 goto if166_end483 
.annotate 'line', 301
    exists $I5003, $P101[_lex_param_5]
    not $I5002, $I5003
    unless $I5002 goto if167_end485 
    .const 'Sub' $P5004 = 'cuid_119_1350818088.873' 
    capture_lex $P5004
    $P5005 = $P5004()
  if167_end485:
    isfalse $I5004, $P102
    set $I5007, $I5004
    unless $I5004 goto if171_end493 
    exists $I5006, $P101[_lex_param_5]
    not $I5005, $I5006
    set $I5007, $I5005
  if171_end493:
    box $P5009, $I5007
    set $P5008, $P5009
    unless $I5007 goto if170_end491 
    .const 'Sub' $P5006 = 'cuid_121_1350818088.873' 
    capture_lex $P5006
    $P5007 = $P5006()
    set $P5008, $P5007
  if170_end491:
  if166_end483:
    box $P5010, 1
    set $P101[_lex_param_5], $P5010
.annotate 'line', 323
    nqp_decontainerize $P5011, _lex_param_0
    $P5012 = $P5011."mergesubstates"(_lex_param_1, _lex_param_2, _lex_param_3, $P102, _lex_param_4, $P101)
    .return ($P5012) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_119_1350818088.873") :anon :lex :outer("cuid_21_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 302
    .lex "$meth", $P101 
    nqp_get_sc_object $P5001, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P101, $P5001
.annotate 'line', 303
    find_lex $P5003, "$cursor"
    get_how $P5002, $P5003
    find_lex $P5004, "$cursor"
    find_lex $S5001, "$name"
    $P5005 = $P5002."find_method"($P5004, $S5001, 1 :named("no_trace"))
    set $P101, $P5005
    can $I5001, $P101, "NFA"
    unless $I5001 goto if168_end487 
.annotate 'line', 304
    $P5006 = $P101."NFA"()
    store_lex "@substates", $P5006
  if168_end487:
    find_lex $P5007, "@substates"
    isnull $I5002, $P5007
    box $P5010, $I5002
    set $P5009, $P5010
    unless $I5002 goto if169_end489 
    new $P5008, 'ResizablePMCArray'
    store_lex "@substates", $P5008
    set $P5009, $P5008
  if169_end489:
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_121_1350818088.873") :anon :lex :outer("cuid_21_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 307
    .const 'Sub' $P5025 = 'cuid_120_1350818088.873' 
    capture_lex $P5025 
    .const 'Sub' $P5025 = 'cuid_122_1350818088.873' 
    capture_lex $P5025 
    .lex "%protorx", $P101 
    .lex "$nfa", $P102 
    .lex "$gotmatch", $I101 
    new $P5001, 'Hash'
    set $P101, $P5001
    nqp_get_sc_object $P5002, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P102, $P5002
    set $I101, 0
.annotate 'line', 310
    find_lex $P5004, "$cursor"
    get_how $P5003, $P5004
    find_lex $P5005, "$cursor"
    .const 'Sub' $P5007 = 'cuid_120_1350818088.873' 
    capture_lex $P5007
    newclosure $P5006, $P5007
    $P5008 = $P5003."cache"($P5005, "!protoregex_table", $P5006)
    set $P101, $P5008
.annotate 'line', 311
    nqp_get_sc_object $P5012, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 0
    nqp_get_package_through_who $P5011, $P5012, "QRegex"
    get_who $P5010, $P5011
    set $P5009, $P5010["NFA"]
    unless_null $P5009, fallback494
    nqp_get_sc_object $P5013, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P5009, $P5013
  fallback494:
    $P5014 = $P5009."new"()
    set $P102, $P5014
    set $I101, 0
    find_lex $S5001, "$name"
    exists $I5001, $P101[$S5001]
    unless $I5001 goto if172_end496 
.annotate 'line', 313
    find_lex $S5002, "$name"
    set $P5018, $P101[$S5002]
    unless_null $P5018, fallback497
    nqp_get_sc_object $P5019, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P5018, $P5019
  fallback497:
    set $P5015, $P5018
    iter $P5017, $P5018
  for_next499:
    unless $P5017, for_done501
    shift $P5021, $P5017
  for_redo500:
    .const 'Sub' $P5020 = 'cuid_122_1350818088.873' 
    capture_lex $P5020
    $P5015 = $P5020($P5021)
    goto for_next499
  for_done501:
  if172_end496:
    box $P5024, $I101
    set $P5023, $P5024
    unless $I101 goto if173_end503 
.annotate 'line', 319
    $P5022 = $P102."states"()
    store_lex "@substates", $P5022
    set $P5023, $P5022
  if173_end503:
    .return ($P5023) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_120_1350818088.873") :anon :lex :outer("cuid_121_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 310

    find_lex $P5001, "$cursor"
    $P5002 = $P5001."!protoregex_table"()
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_122_1350818088.873") :anon :lex :outer("cuid_121_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 314
    .param pmc _lex_param_0 
    .lex "$rxname", _lex_param_0 
.annotate 'line', 315
    find_lex $P5001, "$nfa"
    find_lex $P5004, "$?PACKAGE"
    get_who $P5003, $P5004
    set $P5002, $P5003["$EDGE_SUBRULE"]
    unless_null $P5002, fallback498
    nqp_get_sc_object $P5005, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P5002, $P5005
  fallback498:
    $P5001."addedge"(1, 0, $P5002, _lex_param_0)
    store_lex "$gotmatch", 1
    .return (1) 
.end
.HLL "nqp"
.namespace []
.sub "mergesubstates" :subid("cuid_22_1350818088.873") :anon :lex :outer("cuid_26_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 326
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .param pmc _lex_param_4 
    .param pmc _lex_param_5 
    .param pmc _lex_param_6 :optional 
    .param int haz_param_12 :opt_flag 
    .const 'Sub' $P5011 = 'cuid_124_1350818088.873' 
    capture_lex $P5011 
    if haz_param_12, default540
    new $P5010, 'Hash'
    set _lex_param_6, $P5010
  default540:
    .lex "self", _lex_param_0 
    .lex "$start", _lex_param_1 
    .lex "$to", _lex_param_2 
    .lex "$fate", _lex_param_3 
    .lex "@substates", _lex_param_4 
    .lex "$cursor", _lex_param_5 
    .lex "%seen", _lex_param_6 
    unless _lex_param_4 goto if174_else505 
    .const 'Sub' $P5001 = 'cuid_124_1350818088.873' 
    capture_lex $P5001
    $P5002 = $P5001()
    set $P5009, $P5002
    goto if174_end506
  if174_else505:
.annotate 'line', 362
.annotate 'line', 363
    nqp_decontainerize $P5003, _lex_param_0
    find_lex $P5006, "$?PACKAGE"
    get_who $P5005, $P5006
    set $P5004, $P5005["$EDGE_FATE"]
    unless_null $P5004, fallback539
    nqp_get_sc_object $P5007, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P5004, $P5007
  fallback539:
    $P5008 = $P5003."addedge"(_lex_param_1, 0, $P5004, _lex_param_3)
    set $P5009, $P5008
  if174_end506:
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_124_1350818088.873") :anon :lex :outer("cuid_22_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 327
    .const 'Sub' $P5051 = 'cuid_123_1350818088.873' 
    capture_lex $P5051 
    .lex "$substart", $I101 
    .lex "$subend", $I102 
    .lex "$i", $I103 
    set $I101, 0
    set $I102, 0
    set $I103, 0
.annotate 'line', 329
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
    set_label $P5017, while175_handlers510
    push_eh $P5017
  while175_test507:
    find_lex $P5008, "@substates"
    set $P5016, $P5008
    unless $P5008 goto while175_done511 
  while175_redo509:
    find_lex $P5010, "self"
    nqp_decontainerize $P5009, $P5010
    nqp_get_sc_object $P5011, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 3
    repr_get_attr_obj $P5012, $P5009, $P5011, "$!states"
    find_lex $P5015, "@substates"
    shift $P5014, $P5015
    clone $P5013, $P5014
    push $P5012, $P5013
    set $P5016, $P5012
    goto while175_test507 
  while175_handlers510:
    .get_results ($P5017)
    pop_upto_eh $P5017
    getattribute $P5017, $P5017, 'type'
    eq $P5017, .CONTROL_LOOP_NEXT, while175_test507
    eq $P5017, .CONTROL_LOOP_REDO, while175_redo509
  while175_done511:
    pop_eh 
    find_lex $P5019, "self"
    nqp_decontainerize $P5018, $P5019
    nqp_get_sc_object $P5020, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 3
    repr_get_attr_obj $P5021, $P5018, $P5020, "$!states"
    elements $I5002, $P5021
    set $I102, $I5002
    set $I103, $I101
  while176_test512:
    set $N5001, $I103
    set $N5002, $I102
    islt $I5003, $N5001, $N5002
    box $P5025, $I5003
    set $P5024, $P5025
    unless $I5003 goto while176_done516 
  while176_redo514:
    .const 'Sub' $P5022 = 'cuid_123_1350818088.873' 
    capture_lex $P5022
    $P5023 = $P5022()
    set $P5024, $P5023
    goto while176_test512 
  while176_done516:
.annotate 'line', 357
    find_lex $P5027, "self"
    nqp_decontainerize $P5026, $P5027
    find_lex $P5028, "$start"
    set $N5004, $I101
    set $N5005, 1
    add $N5003, $N5004, $N5005
    find_lex $P5031, "$?PACKAGE"
    get_who $P5030, $P5031
    set $P5029, $P5030["$EDGE_EPSILON"]
    unless_null $P5029, fallback534
    nqp_get_sc_object $P5032, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P5029, $P5032
  fallback534:
    $P5026."addedge"($P5028, $N5003, $P5029, 0)
    find_lex $P5033, "$to"
    set $N5006, $P5033
    set $N5007, 0
    isgt $I5004, $N5006, $N5007
    unless $I5004 goto if180_else535 
.annotate 'line', 359
    find_lex $P5035, "self"
    nqp_decontainerize $P5034, $P5035
    find_lex $P5036, "$to"
    find_lex $P5039, "$?PACKAGE"
    get_who $P5038, $P5039
    set $P5037, $P5038["$EDGE_EPSILON"]
    unless_null $P5037, fallback537
    nqp_get_sc_object $P5040, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P5037, $P5040
  fallback537:
    $P5041 = $P5034."addedge"($I101, $P5036, $P5037, 0)
    set $P5050, $P5041
    goto if180_end536
  if180_else535:
.annotate 'line', 360
    find_lex $P5043, "self"
    nqp_decontainerize $P5042, $P5043
    find_lex $P5046, "$?PACKAGE"
    get_who $P5045, $P5046
    set $P5044, $P5045["$EDGE_FATE"]
    unless_null $P5044, fallback538
    nqp_get_sc_object $P5047, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P5044, $P5047
  fallback538:
    find_lex $P5048, "$fate"
    $P5049 = $P5042."addedge"($I101, 0, $P5044, $P5048)
    set $P5050, $P5049
  if180_end536:
    .return ($P5050) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_123_1350818088.873") :anon :lex :outer("cuid_124_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 343
    .lex "$substate", $P101 
    .lex "$j", $I101 
    .lex "$k", $I102 
    nqp_get_sc_object $P5001, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P101, $P5001
    set $I101, 0
    set $I102, 0
    find_lex $P5004, "self"
    nqp_decontainerize $P5003, $P5004
    nqp_get_sc_object $P5005, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 3
    repr_get_attr_obj $P5006, $P5003, $P5005, "$!states"
    find_lex $I5001, "$i"
    set $P5002, $P5006[$I5001]
    unless_null $P5002, fallback517
    nqp_get_sc_object $P5007, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P5002, $P5007
  fallback517:
    set $P101, $P5002
    set $I101, 0
    elements $I5002, $P101
    set $I102, $I5002
  while177_test518:
    set $N5001, $I101
    set $N5002, $I102
    islt $I5003, $N5001, $N5002
    set $I5014, $I5003
    unless $I5003 goto while177_done522 
  while177_redo520:
.annotate 'line', 347
    set $N5004, $I101
    set $N5005, 2
    add $N5003, $N5004, $N5005
    set $I5004, $N5003
    set $N5008, $I101
    set $N5009, 2
    add $N5007, $N5008, $N5009
    set $I5005, $N5007
    set $P5008, $P101[$I5005]
    unless_null $P5008, fallback523
    nqp_get_sc_object $P5009, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P5008, $P5009
  fallback523:
    set $N5010, $P5008
    find_lex $I5006, "$substart"
    set $N5011, $I5006
    add $N5006, $N5010, $N5011
    box $P5010, $N5006
    set $P101[$I5004], $P5010
    set $P5011, $P101[$I101]
    unless_null $P5011, fallback526
    nqp_get_sc_object $P5012, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P5011, $P5012
  fallback526:
    set $N5012, $P5011
    find_lex $P5015, "$?PACKAGE"
    get_who $P5014, $P5015
    set $P5013, $P5014["$EDGE_FATE"]
    unless_null $P5013, fallback527
    nqp_get_sc_object $P5016, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P5013, $P5016
  fallback527:
    set $N5013, $P5013
    iseq $I5007, $N5012, $N5013
    unless $I5007 goto if178_end525 
    set $N5015, $I101
    set $N5016, 1
    add $N5014, $N5015, $N5016
    set $I5008, $N5014
    find_lex $P5017, "$fate"
    set $P101[$I5008], $P5017
  if178_end525:
    set $P5018, $P101[$I101]
    unless_null $P5018, fallback530
    nqp_get_sc_object $P5019, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P5018, $P5019
  fallback530:
    set $N5017, $P5018
    find_lex $P5022, "$?PACKAGE"
    get_who $P5021, $P5022
    set $P5020, $P5021["$EDGE_SUBRULE"]
    unless_null $P5020, fallback531
    nqp_get_sc_object $P5023, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P5020, $P5023
  fallback531:
    set $N5018, $P5020
    iseq $I5009, $N5017, $N5018
    unless $I5009 goto if179_end529 
.annotate 'line', 351
    find_lex $P5025, "self"
    nqp_decontainerize $P5024, $P5025
    find_lex $I5010, "$i"
    set $N5020, $I101
    set $N5021, 2
    add $N5019, $N5020, $N5021
    set $I5011, $N5019
    set $P5026, $P101[$I5011]
    unless_null $P5026, fallback532
    nqp_get_sc_object $P5027, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P5026, $P5027
  fallback532:
    find_lex $P5028, "$fate"
    find_lex $P5029, "$cursor"
    set $N5023, $I101
    set $N5024, 1
    add $N5022, $N5023, $N5024
    set $I5012, $N5022
    set $P5030, $P101[$I5012]
    unless_null $P5030, fallback533
    nqp_get_sc_object $P5031, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P5030, $P5031
  fallback533:
    find_lex $P5032, "%seen"
    $P5033 = $P5024."mergesubrule"($I5010, $P5026, $P5028, $P5029, $P5030, $P5032)
  if179_end529:
    set $N5026, $I101
    set $N5027, 3
    add $N5025, $N5026, $N5027
    set $I5013, $N5025
    set $I101, $I5013
    set $I5014, $I101
    goto while177_test518 
  while177_done522:
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
.sub "run" :subid("cuid_23_1350818088.873") :anon :lex :outer("cuid_26_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 367
    .param pmc _lex_param_0 
    .param string _lex_param_1 
    .param int _lex_param_2 
    .lex "self", _lex_param_0 
    .lex "$target", _lex_param_1 
    .lex "$offset", _lex_param_2 
    nqp_decontainerize $P5002, _lex_param_0
    nqp_get_sc_object $P5003, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 3
    repr_get_attr_obj $P5004, $P5002, $P5003, "$!states"
    set $S5001, _lex_param_1
    set $I5001, _lex_param_2
    nqp_nfa_run_protoregex $P5001, $P5004, $S5001, $I5001
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "run_alt" :subid("cuid_24_1350818088.873") :anon :lex :outer("cuid_26_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 417
    .param pmc _lex_param_0 
    .param string _lex_param_1 
    .param int _lex_param_2 
    .param pmc _lex_param_3 
    .param pmc _lex_param_4 
    .lex "self", _lex_param_0 
    .lex "$target", _lex_param_1 
    .lex "$offset", _lex_param_2 
    .lex "$bstack", _lex_param_3 
    .lex "$cstack", _lex_param_4 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 3
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!states"
    set $S5001, _lex_param_1
    set $I5001, _lex_param_2
    nqp_nfa_run_alternation $P5003, $S5001, $I5001, _lex_param_3, _lex_param_4
    .return () 
.end
.HLL "nqp"
.namespace []
.sub "__dump" :subid("cuid_25_1350818088.873") :anon :lex :outer("cuid_26_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 421
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .const 'Sub' $P5015 = 'cuid_125_1350818088.873' 
    capture_lex $P5015 
    .lex "$subindent", $P101 
    .lex "$st", $P102 
    .lex "self", _lex_param_0 
    .lex "$dumper", _lex_param_1 
    .lex "$label", _lex_param_2 
    nqp_get_sc_object $P5001, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P101, $P5001
    nqp_get_sc_object $P5002, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P102, $P5002
.annotate 'line', 422
    $P5003 = _lex_param_1."newIndent"()
    set $P101, $P5003
.annotate 'line', 423
    "&print"("[")
    box $P5004, 0
    set $P102, $P5004
    nqp_decontainerize $P5008, _lex_param_0
    nqp_get_sc_object $P5009, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 3
    repr_get_attr_obj $P5010, $P5008, $P5009, "$!states"
    set $P5005, $P5010
    iter $P5007, $P5010
  for_next541:
    unless $P5007, for_done543
    shift $P5012, $P5007
  for_redo542:
    .const 'Sub' $P5011 = 'cuid_125_1350818088.873' 
    capture_lex $P5011
    $P5005 = $P5011($P5012)
    goto for_next541
  for_done543:
.annotate 'line', 429
    _lex_param_1."deleteIndent"()
.annotate 'line', 430
    $P5013 = _lex_param_1."indent"()
    $P5014 = "&print"("\n", $P5013, "]")
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_125_1350818088.873") :anon :lex :outer("cuid_25_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 425
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 426
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
.loadlib "nqp_group"
.loadlib "nqp_ops"
.loadlib "nqp_bigint_ops"
.loadlib "trans_ops"
.loadlib "io_ops"
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_67_1350818088.873") :anon :lex :outer("cuid_1_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 435
    .param pmc _lex_param_0 
    .const 'Sub' $P5048 = 'cuid_27_1350818088.873' 
    capture_lex $P5048 
    .const 'Sub' $P5048 = 'cuid_28_1350818088.873' 
    capture_lex $P5048 
    .const 'Sub' $P5048 = 'cuid_29_1350818088.873' 
    capture_lex $P5048 
    .const 'Sub' $P5048 = 'cuid_30_1350818088.873' 
    capture_lex $P5048 
    .const 'Sub' $P5048 = 'cuid_31_1350818088.873' 
    capture_lex $P5048 
    .const 'Sub' $P5048 = 'cuid_32_1350818088.873' 
    capture_lex $P5048 
    .const 'Sub' $P5048 = 'cuid_33_1350818088.873' 
    capture_lex $P5048 
    .const 'Sub' $P5048 = 'cuid_34_1350818088.873' 
    capture_lex $P5048 
    .const 'Sub' $P5048 = 'cuid_35_1350818088.873' 
    capture_lex $P5048 
    .const 'Sub' $P5048 = 'cuid_36_1350818088.873' 
    capture_lex $P5048 
    .const 'Sub' $P5048 = 'cuid_37_1350818088.873' 
    capture_lex $P5048 
    .const 'Sub' $P5048 = 'cuid_38_1350818088.873' 
    capture_lex $P5048 
    .const 'Sub' $P5048 = 'cuid_39_1350818088.873' 
    capture_lex $P5048 
    .const 'Sub' $P5048 = 'cuid_40_1350818088.873' 
    capture_lex $P5048 
    .const 'Sub' $P5048 = 'cuid_41_1350818088.873' 
    capture_lex $P5048 
    .const 'Sub' $P5048 = 'cuid_42_1350818088.873' 
    capture_lex $P5048 
    .const 'Sub' $P5048 = 'cuid_43_1350818088.873' 
    capture_lex $P5048 
    .const 'Sub' $P5048 = 'cuid_44_1350818088.873' 
    capture_lex $P5048 
    .const 'Sub' $P5048 = 'cuid_45_1350818088.873' 
    capture_lex $P5048 
    .const 'Sub' $P5048 = 'cuid_46_1350818088.873' 
    capture_lex $P5048 
    .const 'Sub' $P5048 = 'cuid_47_1350818088.873' 
    capture_lex $P5048 
    .const 'Sub' $P5048 = 'cuid_48_1350818088.873' 
    capture_lex $P5048 
    .const 'Sub' $P5048 = 'cuid_49_1350818088.873' 
    capture_lex $P5048 
    .const 'Sub' $P5048 = 'cuid_50_1350818088.873' 
    capture_lex $P5048 
    .const 'Sub' $P5048 = 'cuid_51_1350818088.873' 
    capture_lex $P5048 
    .const 'Sub' $P5048 = 'cuid_52_1350818088.873' 
    capture_lex $P5048 
    .const 'Sub' $P5048 = 'cuid_53_1350818088.873' 
    capture_lex $P5048 
    .const 'Sub' $P5048 = 'cuid_54_1350818088.873' 
    capture_lex $P5048 
    .const 'Sub' $P5048 = 'cuid_55_1350818088.873' 
    capture_lex $P5048 
    .const 'Sub' $P5048 = 'cuid_56_1350818088.873' 
    capture_lex $P5048 
    .const 'Sub' $P5048 = 'cuid_57_1350818088.873' 
    capture_lex $P5048 
    .const 'Sub' $P5048 = 'cuid_58_1350818088.873' 
    capture_lex $P5048 
    .const 'Sub' $P5048 = 'cuid_59_1350818088.873' 
    capture_lex $P5048 
    .const 'Sub' $P5048 = 'cuid_60_1350818088.873' 
    capture_lex $P5048 
    .const 'Sub' $P5048 = 'cuid_61_1350818088.873' 
    capture_lex $P5048 
    .const 'Sub' $P5048 = 'cuid_62_1350818088.873' 
    capture_lex $P5048 
    .const 'Sub' $P5048 = 'cuid_63_1350818088.873' 
    capture_lex $P5048 
    .const 'Sub' $P5048 = 'cuid_64_1350818088.873' 
    capture_lex $P5048 
    .const 'Sub' $P5048 = 'cuid_65_1350818088.873' 
    capture_lex $P5048 
    .const 'Sub' $P5048 = 'cuid_66_1350818088.873' 
    capture_lex $P5048 
    .lex "$?PACKAGE", $P101 
    .lex "$?ROLE", $P102 
    .lex "$NO_CAPS", $P103 
    .lex "$pass_mark", $P104 
    .lex "@EMPTY", $P105 
    .lex "$?CLASS", _lex_param_0 
    nqp_get_sc_object $P5001, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P103, $P5001
    nqp_get_sc_object $P5002, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P104, $P5002
    new $P5003, 'ResizablePMCArray'
    set $P105, $P5003
    .const 'Sub' $P5004 = 'cuid_27_1350818088.873' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_28_1350818088.873' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_29_1350818088.873' 
    capture_lex $P5006
    new $P5007, 'Hash'
    set $P103, $P5007
    .const 'Sub' $P5008 = 'cuid_30_1350818088.873' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_31_1350818088.873' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_32_1350818088.873' 
    capture_lex $P5010
    .const 'Sub' $P5011 = 'cuid_33_1350818088.873' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_34_1350818088.873' 
    capture_lex $P5012
    .const 'Sub' $P5013 = 'cuid_35_1350818088.873' 
    capture_lex $P5013
    box $P5014, 1
    set $P104, $P5014
    .const 'Sub' $P5015 = 'cuid_36_1350818088.873' 
    capture_lex $P5015
    .const 'Sub' $P5016 = 'cuid_37_1350818088.873' 
    capture_lex $P5016
    .const 'Sub' $P5017 = 'cuid_38_1350818088.873' 
    capture_lex $P5017
    .const 'Sub' $P5018 = 'cuid_39_1350818088.873' 
    capture_lex $P5018
    .const 'Sub' $P5019 = 'cuid_40_1350818088.873' 
    capture_lex $P5019
    .const 'Sub' $P5020 = 'cuid_41_1350818088.873' 
    capture_lex $P5020
    new $P5021, 'ResizablePMCArray'
    set $P105, $P5021
    .const 'Sub' $P5022 = 'cuid_42_1350818088.873' 
    capture_lex $P5022
    .const 'Sub' $P5023 = 'cuid_43_1350818088.873' 
    capture_lex $P5023
    .const 'Sub' $P5024 = 'cuid_44_1350818088.873' 
    capture_lex $P5024
    .const 'Sub' $P5025 = 'cuid_45_1350818088.873' 
    capture_lex $P5025
    .const 'Sub' $P5026 = 'cuid_46_1350818088.873' 
    capture_lex $P5026
    .const 'Sub' $P5027 = 'cuid_47_1350818088.873' 
    capture_lex $P5027
    .const 'Sub' $P5028 = 'cuid_48_1350818088.873' 
    capture_lex $P5028
    .const 'Sub' $P5029 = 'cuid_49_1350818088.873' 
    capture_lex $P5029
    .const 'Sub' $P5030 = 'cuid_50_1350818088.873' 
    capture_lex $P5030
    .const 'Sub' $P5031 = 'cuid_51_1350818088.873' 
    capture_lex $P5031
    .const 'Sub' $P5032 = 'cuid_52_1350818088.873' 
    capture_lex $P5032
    .const 'Sub' $P5033 = 'cuid_53_1350818088.873' 
    capture_lex $P5033
    .const 'Sub' $P5034 = 'cuid_54_1350818088.873' 
    capture_lex $P5034
    .const 'Sub' $P5035 = 'cuid_55_1350818088.873' 
    capture_lex $P5035
    .const 'Sub' $P5036 = 'cuid_56_1350818088.873' 
    capture_lex $P5036
    .const 'Sub' $P5037 = 'cuid_57_1350818088.873' 
    capture_lex $P5037
    .const 'Sub' $P5038 = 'cuid_58_1350818088.873' 
    capture_lex $P5038
    .const 'Sub' $P5039 = 'cuid_59_1350818088.873' 
    capture_lex $P5039
    .const 'Sub' $P5040 = 'cuid_60_1350818088.873' 
    capture_lex $P5040
    .const 'Sub' $P5041 = 'cuid_61_1350818088.873' 
    capture_lex $P5041
    .const 'Sub' $P5042 = 'cuid_62_1350818088.873' 
    capture_lex $P5042
    .const 'Sub' $P5043 = 'cuid_63_1350818088.873' 
    capture_lex $P5043
    .const 'Sub' $P5044 = 'cuid_64_1350818088.873' 
    capture_lex $P5044
    .const 'Sub' $P5045 = 'cuid_65_1350818088.873' 
    capture_lex $P5045
    .const 'Sub' $P5046 = 'cuid_66_1350818088.873' 
    capture_lex $P5046
    getinterp $P5047
    set $P5047, $P5047['lexpad']
    .return ($P5047) 
.end
.HLL "nqp"
.namespace []
.sub "target" :subid("cuid_27_1350818088.873") :anon :lex :outer("cuid_67_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 447
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    find_lex $P5002, "$?CLASS"
    repr_get_attr_str $S5001, $P5001, $P5002, "$!target"
    .return ($S5001) 
.end
.HLL "nqp"
.namespace []
.sub "from" :subid("cuid_28_1350818088.873") :anon :lex :outer("cuid_67_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 448
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    find_lex $P5002, "$?CLASS"
    repr_get_attr_int $I5001, $P5001, $P5002, "$!from"
    .return ($I5001) 
.end
.HLL "nqp"
.namespace []
.sub "pos" :subid("cuid_29_1350818088.873") :anon :lex :outer("cuid_67_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 449
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    find_lex $P5002, "$?CLASS"
    repr_get_attr_int $I5001, $P5001, $P5002, "$!pos"
    .return ($I5001) 
.end
.HLL "nqp"
.namespace []
.sub "CAPHASH" :subid("cuid_30_1350818088.873") :anon :lex :outer("cuid_67_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 452
    .param pmc _lex_param_0 
    .const 'Sub' $P5070 = 'cuid_87_1350818088.873' 
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
    .local pmc tmp_3 
    nqp_get_sc_object $P5001, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P101, $P5001
    new $P5002, 'Hash'
    set $P102, $P5002
    nqp_get_sc_object $P5003, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P103, $P5003
    set $S101, ""
    nqp_get_sc_object $P5004, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P104, $P5004
    set $I101, 0
    set $I102, 0
    nqp_get_sc_object $P5005, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P105, $P5005
    nqp_get_sc_object $P5006, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P106, $P5006
    nqp_get_sc_object $P5007, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
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
    box $P5017, $I5001
    set $P5016, $P5017
    unless $I5001 goto if182_end547 
    nqp_decontainerize $P5013, _lex_param_0
    find_lex $P5014, "$?CLASS"
    repr_get_attr_obj $P5015, $P5013, $P5014, "$!regexsub"
    set $P5016, $P5015
  if182_end547:
    unless $P5016 goto if181_end545 
.annotate 'line', 464
    nqp_decontainerize $P5018, _lex_param_0
    find_lex $P5019, "$?CLASS"
    repr_get_attr_obj $P5020, $P5018, $P5019, "$!regexsub"
    can $I5003, $P5020, "CAPS"
    unless $I5003 goto if183_else548 
.annotate 'line', 466
    nqp_decontainerize $P5021, _lex_param_0
    find_lex $P5022, "$?CLASS"
    repr_get_attr_obj $P5023, $P5021, $P5022, "$!regexsub"
    $P5024 = $P5023."CAPS"()
    set $P5026, $P5024
    goto if183_end549
  if183_else548:
    null $P5025
    set $P5026, $P5025
  if183_end549:
    unless_null $P5026, vivi_184550
.annotate 'line', 467
    nqp_decontainerize $P5027, _lex_param_0
    find_lex $P5028, "$?CLASS"
    repr_get_attr_obj $P5029, $P5027, $P5028, "$!regexsub"
    $P5030 = $P5029."nqpattr"("caps")
    set $P5026, $P5030
  vivi_184550:
    set $P102, $P5026
    isnull $I5005, $P102
    not $I5004, $I5005
    box $P5032, $I5004
    set $P5031, $P5032
    unless $I5004 goto if186_end554 
    set $P5031, $P102
  if186_end554:
    set $P5040, $P5031
    unless $P5031 goto if185_end552 
.annotate 'line', 468
    iter $P5033, $P102
    set $P103, $P5033
  while187_test555:
    set $P5039, $P103
    unless $P103 goto while187_done559 
  while187_redo557:
.annotate 'line', 470
    shift $S5001, $P103
    set $S101, $S5001
    set $P5034, $P102[$S101]
    unless_null $P5034, fallback562
    nqp_get_sc_object $P5035, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P5034, $P5035
  fallback562:
    set $N5001, $P5034
    set $N5002, 2
    isge $I5006, $N5001, $N5002
    box $P5038, $I5006
    set $P5037, $P5038
    unless $I5006 goto if188_end561 
    new $P5036, 'ResizablePMCArray'
    set $P101[$S101], $P5036
    set $P5037, $P5036
  if188_end561:
    set $P5039, $P5037
    goto while187_test555 
  while187_done559:
    set $P5040, $P5039
  if185_end552:
  if181_end545:
    nqp_decontainerize $P5041, _lex_param_0
    find_lex $P5042, "$?CLASS"
    repr_get_attr_obj $P5043, $P5041, $P5042, "$!cstack"
    isnull $I5008, $P5043
    not $I5007, $I5008
    box $P5048, $I5007
    set $P5047, $P5048
    unless $I5007 goto if190_end566 
    nqp_decontainerize $P5044, _lex_param_0
    find_lex $P5045, "$?CLASS"
    repr_get_attr_obj $P5046, $P5044, $P5045, "$!cstack"
    set $P5047, $P5046
  if190_end566:
    unless $P5047 goto if189_end564 
.annotate 'line', 476
    nqp_decontainerize $P5049, _lex_param_0
    find_lex $P5050, "$?CLASS"
    repr_get_attr_obj $P5051, $P5049, $P5050, "$!cstack"
    set $P104, $P5051
    elements $I5009, $P104
    set $I102, $I5009
  while191_test567:
    set $N5003, $I101
    set $N5004, $I102
    islt $I5010, $N5003, $N5004
    box $P5069, $I5010
    set $P5068, $P5069
    unless $I5010 goto while191_done571 
  while191_redo569:
.annotate 'line', 479
    set $P5052, $P104[$I101]
    set $P105, $P5052
.annotate 'line', 481
    $P5053 = $P105."MATCH"()
    set $P106, $P5053
    find_lex $P5055, "$?CLASS"
    getattribute $P5054, $P105, $P5055, "$!name"
    set $P107, $P5054
    isnull $I5012, $P107
    not $I5011, $I5012
    set $I5014, $I5011
    unless $I5011 goto if193_end575 
    defined $I5013, $P107
    set $I5014, $I5013
  if193_end575:
    unless $I5014 goto if192_end573 
.annotate 'line', 483
    set $S5002, $P107
    index $I5016, $S5002, "=", 0
    set $N5005, $I5016
    set $N5006, 0
    islt $I5015, $N5005, $N5006
    unless $I5015 goto if194_else576 
.annotate 'line', 484
    set $S5003, $P107
    set $P5056, $P102[$S5003]
    unless_null $P5056, fallback580
    nqp_get_sc_object $P5057, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P5056, $P5057
  fallback580:
    set $N5007, $P5056
    set $N5008, 2
    isge $I5017, $N5007, $N5008
    unless $I5017 goto if195_else578 
    set $S5004, $P107
    set $P5058, $P101[$S5004]
    unless_null $P5058, fallback581
    nqp_get_sc_object $P5059, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P5058, $P5059
  fallback581:
    push $P5058, $P106
    set $P5060, $P5058
    goto if195_end579
  if195_else578:
    set $S5005, $P107
    set $P101[$S5005], $P106
    set $P5060, $P106
  if195_end579:
    set $P5067, $P5060
    goto if194_end577
  if194_else576:
.annotate 'line', 489
    set $S5006, $P107
    split $P5064, "=", $S5006
    set $P5061, $P5064
    iter $P5063, $P5064
  for_next586:
    unless $P5063, for_done588
    shift $P5066, $P5063
  for_redo587:
    .const 'Sub' $P5065 = 'cuid_87_1350818088.873' 
    capture_lex $P5065
    $P5061 = $P5065($P5066)
    goto for_next586
  for_done588:
    set $P5067, $P5061
  if194_end577:
  if192_end573:
    box $P5068, $I101
    set tmp_3, $P5068
    set $N5010, tmp_3
    set $N5011, 1
    add $N5009, $N5010, $N5011
    set $I5018, $N5009
    set $I101, $I5018
    set $P5068, tmp_3
    goto while191_test567 
  while191_done571:
  if189_end564:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_87_1350818088.873") :anon :lex :outer("cuid_30_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 490
    .param pmc _lex_param_0 
    .lex "$name", _lex_param_0 
    find_lex $P5002, "%caplist"
    set $S5001, _lex_param_0
    set $P5001, $P5002[$S5001]
    unless_null $P5001, fallback584
    nqp_get_sc_object $P5003, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P5001, $P5003
  fallback584:
    set $N5001, $P5001
    set $N5002, 2
    isge $I5001, $N5001, $N5002
    unless $I5001 goto if196_else582 
    find_lex $P5005, "$caps"
    set $S5002, _lex_param_0
    set $P5004, $P5005[$S5002]
    unless_null $P5004, fallback585
    nqp_get_sc_object $P5006, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P5004, $P5006
  fallback585:
    find_lex $P5007, "$submatch"
    push $P5004, $P5007
    set $P5010, $P5004
    goto if196_end583
  if196_else582:
    find_lex $P5008, "$caps"
    set $S5003, _lex_param_0
    find_lex $P5009, "$submatch"
    set $P5008[$S5003], $P5009
    set $P5010, $P5009
  if196_end583:
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "!cursor_init" :subid("cuid_31_1350818088.873") :anon :lex :outer("cuid_67_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 503
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :named("p") :optional 
    .param int haz_param_13 :opt_flag 
    .param pmc _lex_param_3 :named("c") :optional 
    .param int haz_param_14 :opt_flag 
    if haz_param_13, default591
    box $P5011, 0
    set _lex_param_2, $P5011
  default591:
    if haz_param_14, default592
    nqp_get_sc_object $P5012, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set _lex_param_3, $P5012
  default592:
    .lex "$new", $P101 
    .lex "self", _lex_param_0 
    .lex "$target", _lex_param_1 
    .lex "$p", _lex_param_2 
    .lex "$c", _lex_param_3 
    nqp_get_sc_object $P5001, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P101, $P5001
.annotate 'line', 504
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."CREATE"()
    set $P101, $P5003
    find_lex $P5004, "$?CLASS"
    setattribute $P101, $P5004, "$!orig", _lex_param_1
    set $S5002, _lex_param_1
    find_encoding $I5001, "ucs4"
    trans_encoding $S5001, $S5002, $I5001
    box $P5005, $S5001
    set _lex_param_1, $P5005
    find_lex $P5006, "$?CLASS"
    set $S5003, _lex_param_1
    repr_bind_attr_str $P101, $P5006, "$!target", $S5003
    defined $I5002, _lex_param_3
    unless $I5002 goto if197_else589 
.annotate 'line', 508
    find_lex $P5007, "$?CLASS"
    repr_bind_attr_int $P101, $P5007, "$!from", -1
    find_lex $P5008, "$?CLASS"
    set $I5003, _lex_param_3
    repr_bind_attr_int $P101, $P5008, "$!pos", $I5003
    goto if197_end590
  if197_else589:
.annotate 'line', 512
    find_lex $P5009, "$?CLASS"
    set $I5004, _lex_param_2
    repr_bind_attr_int $P101, $P5009, "$!from", $I5004
    find_lex $P5010, "$?CLASS"
    set $I5005, _lex_param_2
    repr_bind_attr_int $P101, $P5010, "$!pos", $I5005
  if197_end590:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "!cursor_start" :subid("cuid_32_1350818088.873") :anon :lex :outer("cuid_67_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 519
    .param pmc _lex_param_0 
    .lex "$new", $P101 
    .lex "$sub", $P102 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P101, $P5001
    nqp_get_sc_object $P5002, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P102, $P5002
    nqp_decontainerize $P5004, _lex_param_0
    repr_instance_of $P5003, $P5004
    set $P101, $P5003

            $P0 = getinterp
            $P5005 = $P0['sub';1]
        
    set $P102, $P5005
    find_lex $P5006, "$?CLASS"
    nqp_decontainerize $P5007, _lex_param_0
    find_lex $P5008, "$?CLASS"
    repr_get_attr_obj $P5009, $P5007, $P5008, "$!orig"
    setattribute $P101, $P5006, "$!orig", $P5009
    find_lex $P5010, "$?CLASS"
    get_sub_code_object $P5011, $P102
    unless_null $P5011, vivi_198593
    set $P5011, $P102
  vivi_198593:
    setattribute $P101, $P5010, "$!regexsub", $P5011
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_obj $P5014, $P5012, $P5013, "$!restart"
    unless $P5014 goto if199_end595 
.annotate 'line', 527
    find_lex $P5015, "$?CLASS"
    nqp_decontainerize $P5016, _lex_param_0
    find_lex $P5017, "$?CLASS"
    repr_get_attr_int $I5001, $P5016, $P5017, "$!pos"
    repr_bind_attr_int $P101, $P5015, "$!pos", $I5001
    nqp_decontainerize $P5018, _lex_param_0
    find_lex $P5019, "$?CLASS"
    repr_get_attr_obj $P5020, $P5018, $P5019, "$!cstack"
    unless $P5020 goto if200_end597 
    find_lex $P5021, "$?CLASS"
    nqp_decontainerize $P5023, _lex_param_0
    find_lex $P5024, "$?CLASS"
    repr_get_attr_obj $P5025, $P5023, $P5024, "$!cstack"
    clone $P5022, $P5025
    setattribute $P101, $P5021, "$!cstack", $P5022
  if200_end597:
    find_lex $P5026, "$?CLASS"
    nqp_decontainerize $P5027, _lex_param_0
    find_lex $P5028, "$?CLASS"
    repr_get_attr_str $S5001, $P5027, $P5028, "$!target"
    repr_bind_attr_str $P101, $P5026, "$!target", $S5001
    find_lex $P5029, "$?CLASS"
    nqp_decontainerize $P5030, _lex_param_0
    find_lex $P5031, "$?CLASS"
    repr_get_attr_int $I5002, $P5030, $P5031, "$!from"
    repr_bind_attr_int $P101, $P5029, "$!from", $I5002
    find_lex $P5032, "$?CLASS"
    find_lex $P5033, "$?CLASS"
    nqp_decontainerize $P5035, _lex_param_0
    find_lex $P5036, "$?CLASS"
    repr_get_attr_obj $P5037, $P5035, $P5036, "$!bstack"
    clone $P5034, $P5037
    setattribute $P101, $P5033, "$!bstack", $P5034
    .return ($P101, $S5001, $I5002, $P5032, $P5034, 1)
  if199_end595:
    find_lex $P5038, "$?CLASS"
    repr_bind_attr_int $P101, $P5038, "$!pos", -3
    find_lex $P5039, "$?CLASS"
    nqp_decontainerize $P5040, _lex_param_0
    find_lex $P5041, "$?CLASS"
    repr_get_attr_str $S5002, $P5040, $P5041, "$!target"
    repr_bind_attr_str $P101, $P5039, "$!target", $S5002
    find_lex $P5042, "$?CLASS"
    nqp_decontainerize $P5043, _lex_param_0
    find_lex $P5044, "$?CLASS"
    repr_get_attr_int $I5003, $P5043, $P5044, "$!pos"
    repr_bind_attr_int $P101, $P5042, "$!from", $I5003
    find_lex $P5045, "$?CLASS"
    find_lex $P5046, "$?CLASS"
    new $P5047, "ResizableIntegerArray"
    setattribute $P101, $P5046, "$!bstack", $P5047
    .return ($P101, $S5002, $I5003, $P5045, $P5047, 0)
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "!cursor_start_subcapture" :subid("cuid_33_1350818088.873") :anon :lex :outer("cuid_67_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 549
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$new", $P101 
    .lex "self", _lex_param_0 
    .lex "$from", _lex_param_1 
    nqp_get_sc_object $P5001, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P101, $P5001
    nqp_decontainerize $P5003, _lex_param_0
    repr_instance_of $P5002, $P5003
    set $P101, $P5002
    find_lex $P5004, "$?CLASS"
    nqp_decontainerize $P5005, _lex_param_0
    find_lex $P5006, "$?CLASS"
    repr_get_attr_obj $P5007, $P5005, $P5006, "$!orig"
    setattribute $P101, $P5004, "$!orig", $P5007
    find_lex $P5008, "$?CLASS"
    nqp_decontainerize $P5009, _lex_param_0
    find_lex $P5010, "$?CLASS"
    repr_get_attr_str $S5001, $P5009, $P5010, "$!target"
    repr_bind_attr_str $P101, $P5008, "$!target", $S5001
    find_lex $P5011, "$?CLASS"
    set $I5001, _lex_param_1
    repr_bind_attr_int $P101, $P5011, "$!from", $I5001
    find_lex $P5012, "$?CLASS"
    repr_bind_attr_int $P101, $P5012, "$!pos", -3
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "!cursor_capture" :subid("cuid_34_1350818088.873") :anon :lex :outer("cuid_67_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 558
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
    if $I5001 goto unless201_end599 
    nqp_decontainerize $P5007, _lex_param_0
    find_lex $P5008, "$?CLASS"
    new $P5009, 'ResizablePMCArray'
    repr_bind_attr_obj $P5007, $P5008, "$!cstack", $P5009
  unless201_end599:
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
.sub "!cursor_push_cstack" :subid("cuid_35_1350818088.873") :anon :lex :outer("cuid_67_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 570
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$capture", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    find_lex $P5002, "$?CLASS"
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!cstack"
    defined $I5001, $P5003
    if $I5001 goto unless202_end601 
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    new $P5006, 'ResizablePMCArray'
    repr_bind_attr_obj $P5004, $P5005, "$!cstack", $P5006
  unless202_end601:
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
.sub "!cursor_pass" :subid("cuid_36_1350818088.873") :anon :lex :outer("cuid_67_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 577
    .param pmc _lex_param_0 
    .param int _lex_param_1 
    .param pmc _lex_param_2 :optional 
    .param int haz_param_15 :opt_flag 
    .param pmc _lex_param_3 :named("backtrack") :optional 
    .param int haz_param_16 :opt_flag 
    if haz_param_15, default608
    nqp_get_sc_object $P5017, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set _lex_param_2, $P5017
  default608:
    if haz_param_16, default609
    nqp_get_sc_object $P5018, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set _lex_param_3, $P5018
  default609:
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
    unless _lex_param_3 goto if203_end603 
    nqp_decontainerize $P5006, _lex_param_0
    find_lex $P5007, "$?CLASS"
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_obj $P5010, $P5008, $P5009, "$!regexsub"
    repr_bind_attr_obj $P5006, $P5007, "$!restart", $P5010
  if203_end603:
    if _lex_param_3 goto unless204_end605 
    nqp_decontainerize $P5011, _lex_param_0
    find_lex $P5012, "$?CLASS"
    null $P5013
    repr_bind_attr_obj $P5011, $P5012, "$!bstack", $P5013
  unless204_end605:
    set $P5016, _lex_param_2
    unless _lex_param_2 goto if205_end607 
.annotate 'line', 584
    nqp_decontainerize $P5014, _lex_param_0
    $P5015 = $P5014."!reduce"(_lex_param_2)
    set $P5016, $P5015
  if205_end607:
    .return ($P5016) 
.end
.HLL "nqp"
.namespace []
.sub "!cursor_fail" :subid("cuid_37_1350818088.873") :anon :lex :outer("cuid_67_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 587
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
.sub "!cursor_next" :subid("cuid_38_1350818088.873") :anon :lex :outer("cuid_67_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 593
    .param pmc _lex_param_0 
    .const 'Sub' $P5012 = 'cuid_88_1350818088.873' 
    capture_lex $P5012 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    find_lex $P5002, "$?CLASS"
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!restart"
    unless $P5003 goto if206_else610 
.annotate 'line', 594
.annotate 'line', 595
    nqp_decontainerize $P5007, _lex_param_0
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!restart"
    $P5008 = $P5006($P5007)
    set $P5011, $P5008
    goto if206_end611
  if206_else610:
    .const 'Sub' $P5009 = 'cuid_88_1350818088.873' 
    capture_lex $P5009
    $P5010 = $P5009()
    set $P5011, $P5010
  if206_end611:
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_88_1350818088.873") :anon :lex :outer("cuid_38_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 597
    .lex "$cur", $P101 
    nqp_get_sc_object $P5001, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P101, $P5001
.annotate 'line', 598
    find_lex $P5003, "self"
    nqp_decontainerize $P5002, $P5003
    $P5004 = $P5002."!cursor_start"()
    set $P101, $P5004
.annotate 'line', 599
    $P101."!cursor_fail"()
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "!cursor_more" :subid("cuid_39_1350818088.873") :anon :lex :outer("cuid_67_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 604
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy :named 
    .lex "$new", $P101 
    .lex "self", _lex_param_0 
    .lex "%opts", _lex_param_1 
    nqp_get_sc_object $P5001, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P101, $P5001
    root_new $P102, ['parrot';'Continuation']
    set_label $P102, lexotic_612
    .lex "RETURN", $P102
    set $P5002, _lex_param_1["ex"]
    unless_null $P5002, fallback616
    nqp_get_sc_object $P5003, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P5002, $P5003
  fallback616:
    unless $P5002 goto if207_end615 
.annotate 'line', 605
    nqp_decontainerize $P5005, _lex_param_0
    $P5006 = $P5005."!cursor_next"()
    find_lex $P5004, "RETURN"
    $P5007 = $P5004($P5006)
  if207_end615:
.annotate 'line', 606
    nqp_decontainerize $P5008, _lex_param_0
    $P5009 = $P5008."CREATE"()
    set $P101, $P5009
    find_lex $P5010, "$?CLASS"
    nqp_decontainerize $P5011, _lex_param_0
    find_lex $P5012, "$?CLASS"
    repr_get_attr_obj $P5013, $P5011, $P5012, "$!orig"
    setattribute $P101, $P5010, "$!orig", $P5013
    find_lex $P5014, "$?CLASS"
    nqp_decontainerize $P5015, _lex_param_0
    find_lex $P5016, "$?CLASS"
    repr_get_attr_str $S5001, $P5015, $P5016, "$!target"
    repr_bind_attr_str $P101, $P5014, "$!target", $S5001
    find_lex $P5017, "$?CLASS"
    repr_bind_attr_int $P101, $P5017, "$!from", -1
    find_lex $P5018, "$?CLASS"
    set $P5019, _lex_param_1["ov"]
    unless_null $P5019, fallback621
    nqp_get_sc_object $P5020, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P5019, $P5020
  fallback621:
    set $P5025, $P5019
    if $P5019 goto unless209_end620 
    nqp_decontainerize $P5021, _lex_param_0
    find_lex $P5022, "$?CLASS"
    repr_get_attr_int $I5002, $P5021, $P5022, "$!from"
    set $N5001, $I5002
    nqp_decontainerize $P5023, _lex_param_0
    find_lex $P5024, "$?CLASS"
    repr_get_attr_int $I5003, $P5023, $P5024, "$!pos"
    set $N5002, $I5003
    isge $I5001, $N5001, $N5002
    box $P5026, $I5001
    set $P5025, $P5026
  unless209_end620:
    unless $P5025 goto if208_else617 
    nqp_decontainerize $P5027, _lex_param_0
    find_lex $P5028, "$?CLASS"
    repr_get_attr_int $I5004, $P5027, $P5028, "$!from"
    set $N5004, $I5004
    set $N5005, 1
    add $N5003, $N5004, $N5005
    box $P5032, $N5003
    set $P5031, $P5032
    goto if208_end618
  if208_else617:
    nqp_decontainerize $P5029, _lex_param_0
    find_lex $P5030, "$?CLASS"
    repr_get_attr_int $I5005, $P5029, $P5030, "$!pos"
    box $P5033, $I5005
    set $P5031, $P5033
  if208_end618:
    set $I5006, $P5031
    repr_bind_attr_int $P101, $P5018, "$!pos", $I5006
.annotate 'line', 612
    nqp_decontainerize $P5034, _lex_param_0
    find_lex $P5035, "$?CLASS"
    repr_get_attr_obj $P5036, $P5034, $P5035, "$!regexsub"
    $P5037 = $P5036($P101)
    goto lexotic_613
  lexotic_612:
    .get_results ($P5037)
  lexotic_613:
    .return ($P5037) 
.end
.HLL "nqp"
.namespace []
.sub "!reduce" :subid("cuid_40_1350818088.873") :anon :lex :outer("cuid_67_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 615
    .param pmc _lex_param_0 
    .param string _lex_param_1 
    .lex "$actions", $P101 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    nqp_get_sc_object $P5001, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P101, $P5001
    find_dynamic_lex $P5002, "$*ACTIONS"
    set $P101, $P5002
    isnull $I5002, $P101
    not $I5001, $I5002
    set $I5004, $I5001
    unless $I5001 goto if211_end625 
    can $I5003, $P101, _lex_param_1
    set $I5004, $I5003
  if211_end625:
    box $P5008, $I5004
    set $P5007, $P5008
    unless $I5004 goto if210_end623 
.annotate 'line', 617
    nqp_decontainerize $P5004, _lex_param_0
    $P5005 = $P5004."MATCH"()
    find_method $P5003, $P101, _lex_param_1
    $P5006 = $P5003($P101, $P5005)
    set $P5007, $P5006
  if210_end623:
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "!reduce_with_match" :subid("cuid_41_1350818088.873") :anon :lex :outer("cuid_67_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 621
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .lex "$actions", $P101 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    .lex "$key", _lex_param_2 
    .lex "$match", _lex_param_3 
    nqp_get_sc_object $P5001, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P101, $P5001
    find_dynamic_lex $P5002, "$*ACTIONS"
    set $P101, $P5002
    isnull $I5002, $P101
    not $I5001, $I5002
    set $I5004, $I5001
    unless $I5001 goto if213_end629 
    set $S5001, _lex_param_1
    can $I5003, $P101, $S5001
    set $I5004, $I5003
  if213_end629:
    box $P5006, $I5004
    set $P5005, $P5006
    unless $I5004 goto if212_end627 
.annotate 'line', 623
    set $S5002, _lex_param_1
    find_method $P5003, $P101, $S5002
    $P5004 = $P5003($P101, _lex_param_3, _lex_param_2)
    set $P5005, $P5004
  if212_end627:
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "!protoregex" :subid("cuid_42_1350818088.873") :anon :lex :outer("cuid_67_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 628
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5031 = 'cuid_89_1350818088.873' 
    capture_lex $P5031 
    .lex "$nfa", $P101 
    .lex "@fates", $P102 
    .lex "@rxfate", $P103 
    .lex "$cur", $P104 
    .lex "$rxname", $P105 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    nqp_get_sc_object $P5001, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P101, $P5001
    new $P5002, 'ResizablePMCArray'
    set $P102, $P5002
    new $P5003, 'ResizablePMCArray'
    set $P103, $P5003
    nqp_get_sc_object $P5004, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P104, $P5004
    nqp_get_sc_object $P5005, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P105, $P5005
.annotate 'line', 630
    nqp_decontainerize $P5007, _lex_param_0
    get_how $P5006, $P5007
    nqp_decontainerize $P5008, _lex_param_0
    .const 'Sub' $P5010 = 'cuid_89_1350818088.873' 
    capture_lex $P5010
    newclosure $P5009, $P5010
    $P5011 = $P5006."cache"($P5008, _lex_param_1, $P5009)
    set $P101, $P5011
.annotate 'line', 631
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_str $S5001, $P5012, $P5013, "$!target"
    nqp_decontainerize $P5014, _lex_param_0
    find_lex $P5015, "$?CLASS"
    repr_get_attr_int $I5001, $P5014, $P5015, "$!pos"
    $P5016 = $P101."run"($S5001, $I5001)
    set $P102, $P5016
.annotate 'line', 634
    $P5018 = $P101."states"()
    set $P5017, $P5018[0]
    unless_null $P5017, fallback630
    nqp_get_sc_object $P5019, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P5017, $P5019
  fallback630:
    set $P103, $P5017
  while214_test631:
    set $P5027, $P102
    unless $P102 goto while214_done635 
  while214_redo633:
.annotate 'line', 637
    pop $I5002, $P102
    set $P5020, $P103[$I5002]
    set $P105, $P5020
.annotate 'line', 640
    nqp_decontainerize $P5021, _lex_param_0
    set $S5002, $P105
    $P5022 = $P5021.$S5002()
    set $P104, $P5022
    find_lex $P5023, "$?CLASS"
    repr_get_attr_int $I5004, $P104, $P5023, "$!pos"
    set $N5001, $I5004
    set $N5002, 0
    isge $I5003, $N5001, $N5002
    box $P5026, $I5003
    set $P5025, $P5026
    unless $I5003 goto if215_end637 
    find_lex $P5024, "@EMPTY"
    set $P102, $P5024
    set $P5025, $P102
  if215_end637:
    set $P5027, $P5025
    goto while214_test631 
  while214_done635:
    set $P5028, $P104
    defined $I5005, $P5028
    if $I5005, defor638
.annotate 'line', 643
    nqp_decontainerize $P5029, _lex_param_0
    $P5030 = $P5029."!cursor_start"()
    set $P5028, $P5030
  defor638:
    .return ($P5028) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_89_1350818088.873") :anon :lex :outer("cuid_42_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 630

    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    find_lex $P5003, "$name"
    $P5004 = $P5001."!protoregex_nfa"($P5003)
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "!protoregex_nfa" :subid("cuid_43_1350818088.873") :anon :lex :outer("cuid_67_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 646
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5026 = 'cuid_90_1350818088.873' 
    capture_lex $P5026 
    .const 'Sub' $P5026 = 'cuid_91_1350818088.873' 
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
    nqp_get_sc_object $P5002, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P102, $P5002
    new $P5003, 'ResizablePMCArray'
    set $P103, $P5003
    set $I101, 0
    set $I102, 0
.annotate 'line', 647
    nqp_decontainerize $P5005, _lex_param_0
    get_how $P5004, $P5005
    nqp_decontainerize $P5006, _lex_param_0
    .const 'Sub' $P5008 = 'cuid_90_1350818088.873' 
    capture_lex $P5008
    newclosure $P5007, $P5008
    $P5009 = $P5004."cache"($P5006, "!protoregex_table", $P5007)
    set $P101, $P5009
.annotate 'line', 648
    nqp_get_sc_object $P5013, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 0
    nqp_get_package_through_who $P5012, $P5013, "QRegex"
    get_who $P5011, $P5012
    set $P5010, $P5011["NFA"]
    unless_null $P5010, fallback639
    nqp_get_sc_object $P5014, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P5010, $P5014
  fallback639:
    $P5015 = $P5010."new"()
    set $P102, $P5015
.annotate 'line', 649
    $P5017 = $P102."states"()
    set $P5016, $P5017[0]
    unless_null $P5016, fallback640
    nqp_get_sc_object $P5018, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P5016, $P5018
  fallback640:
    set $P103, $P5016
    set $I101, 1
    set $I102, 0
    set $S5001, _lex_param_1
    exists $I5001, $P101[$S5001]
    unless $I5001 goto if216_end642 
.annotate 'line', 652
    set $S5002, _lex_param_1
    set $P5022, $P101[$S5002]
    unless_null $P5022, fallback643
    nqp_get_sc_object $P5023, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P5022, $P5023
  fallback643:
    set $P5019, $P5022
    iter $P5021, $P5022
  for_next644:
    unless $P5021, for_done646
    shift $P5025, $P5021
  for_redo645:
    .const 'Sub' $P5024 = 'cuid_91_1350818088.873' 
    capture_lex $P5024
    $P5019 = $P5024($P5025)
    goto for_next644
  for_done646:
  if216_end642:
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_90_1350818088.873") :anon :lex :outer("cuid_43_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 647

    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    $P5003 = $P5001."!protoregex_table"()
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_91_1350818088.873") :anon :lex :outer("cuid_43_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 653
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
.annotate 'line', 656
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
.sub "!protoregex_table" :subid("cuid_44_1350818088.873") :anon :lex :outer("cuid_67_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 662
    .param pmc _lex_param_0 
    .const 'Sub' $P5011 = 'cuid_93_1350818088.873' 
    capture_lex $P5011 
    .lex "%protorx", $P101 
    .lex "self", _lex_param_0 
    new $P5001, 'Hash'
    set $P101, $P5001
.annotate 'line', 664
    nqp_decontainerize $P5006, _lex_param_0
    get_how $P5005, $P5006
    nqp_decontainerize $P5007, _lex_param_0
    $P5008 = $P5005."methods"($P5007)
    set $P5002, $P5008
    iter $P5004, $P5008
  for_next652:
    unless $P5004, for_done654
    shift $P5010, $P5004
  for_redo653:
    .const 'Sub' $P5009 = 'cuid_93_1350818088.873' 
    capture_lex $P5009
    $P5002 = $P5009($P5010)
    goto for_next652
  for_done654:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_93_1350818088.873") :anon :lex :outer("cuid_44_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 664
    .param pmc _lex_param_0 
    .const 'Sub' $P5005 = 'cuid_92_1350818088.873' 
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
    unless $I5002 goto if217_end648 
    .const 'Sub' $P5001 = 'cuid_92_1350818088.873' 
    capture_lex $P5001
    $P5002 = $P5001()
    set $P5003, $P5002
  if217_end648:
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_92_1350818088.873") :anon :lex :outer("cuid_93_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 667
    .lex "$prefix", $S101 
    set $S101, ""
    find_lex $S5002, "$methname"
    find_lex $I5001, "$sympos"
    substr $S5001, $S5002, 0, $I5001
    set $S101, $S5001
    find_lex $P5001, "%protorx"
    exists $I5002, $P5001[$S101]
    if $I5002 goto unless218_end650 
    find_lex $P5002, "%protorx"
    new $P5003, 'ResizablePMCArray'
    set $P5002[$S101], $P5003
  unless218_end650:
    find_lex $P5005, "%protorx"
    set $P5004, $P5005[$S101]
    unless_null $P5004, fallback651
    nqp_get_sc_object $P5006, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P5004, $P5006
  fallback651:
    find_lex $S5003, "$methname"
    box $P5007, $S5003
    push $P5004, $P5007
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "!alt" :subid("cuid_45_1350818088.873") :anon :lex :outer("cuid_67_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 676
    .param pmc _lex_param_0 
    .param int _lex_param_1 
    .param string _lex_param_2 
    .param pmc _lex_param_3 :optional 
    .param int haz_param_17 :opt_flag 
    .const 'Sub' $P5018 = 'cuid_94_1350818088.873' 
    capture_lex $P5018 
    if haz_param_17, default655
    new $P5017, 'ResizablePMCArray'
    set _lex_param_3, $P5017
  default655:
    .lex "$nfa", $P101 
    .lex "self", _lex_param_0 
    .lex "$pos", _lex_param_1 
    .lex "$name", _lex_param_2 
    .lex "@labels", _lex_param_3 
    nqp_get_sc_object $P5001, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P101, $P5001
.annotate 'line', 677
    nqp_decontainerize $P5003, _lex_param_0
    get_how $P5002, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    .const 'Sub' $P5006 = 'cuid_94_1350818088.873' 
    capture_lex $P5006
    newclosure $P5005, $P5006
    $P5007 = $P5002."cache"($P5004, _lex_param_2, $P5005)
    set $P101, $P5007
.annotate 'line', 678
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_str $S5001, $P5008, $P5009, "$!target"
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_obj $P5012, $P5010, $P5011, "$!bstack"
    nqp_decontainerize $P5013, _lex_param_0
    find_lex $P5014, "$?CLASS"
    repr_get_attr_obj $P5015, $P5013, $P5014, "$!cstack"
    $P5016 = $P101."run_alt"($S5001, _lex_param_1, $P5012, $P5015)
    .return ($P5016) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_94_1350818088.873") :anon :lex :outer("cuid_45_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 677

    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    find_lex $S5001, "$name"
    find_lex $P5003, "@labels"
    $P5004 = $P5001."!alt_nfa"($S5001, $P5003)
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "!alt_nfa" :subid("cuid_46_1350818088.873") :anon :lex :outer("cuid_67_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 681
    .param pmc _lex_param_0 
    .param string _lex_param_1 
    .param pmc _lex_param_2 
    .const 'Sub' $P5030 = 'cuid_95_1350818088.873' 
    capture_lex $P5030 
    .lex "$nfa", $P101 
    .lex "@fates", $P102 
    .lex "$start", $I101 
    .lex "$fate", $I102 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    .lex "@labels", _lex_param_2 
    nqp_get_sc_object $P5001, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P101, $P5001
    new $P5002, 'ResizablePMCArray'
    set $P102, $P5002
    set $I101, 0
    set $I102, 0
.annotate 'line', 682
    nqp_get_sc_object $P5006, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 0
    nqp_get_package_through_who $P5005, $P5006, "QRegex"
    get_who $P5004, $P5005
    set $P5003, $P5004["NFA"]
    unless_null $P5003, fallback656
    nqp_get_sc_object $P5007, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P5003, $P5007
  fallback656:
    $P5008 = $P5003."new"()
    set $P101, $P5008
.annotate 'line', 683
    $P5010 = $P101."states"()
    set $P5009, $P5010[0]
    unless_null $P5009, fallback657
    nqp_get_sc_object $P5011, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P5009, $P5011
  fallback657:
    set $P102, $P5009
    set $I101, 1
    set $I102, 0
    nqp_decontainerize $P5015, _lex_param_0
    find_lex $P5016, "$?CLASS"
    repr_get_attr_obj $P5017, $P5015, $P5016, "$!regexsub"
    can $I5001, $P5017, "ALT_NFA"
    unless $I5001 goto if219_else658 
.annotate 'line', 687
    nqp_decontainerize $P5018, _lex_param_0
    find_lex $P5019, "$?CLASS"
    repr_get_attr_obj $P5020, $P5018, $P5019, "$!regexsub"
    $P5021 = $P5020."ALT_NFA"(_lex_param_1)
    set $P5023, $P5021
    goto if219_end659
  if219_else658:
    null $P5022
    set $P5023, $P5022
  if219_end659:
    unless_null $P5023, vivi_220660
.annotate 'line', 688
    nqp_decontainerize $P5024, _lex_param_0
    find_lex $P5025, "$?CLASS"
    repr_get_attr_obj $P5026, $P5024, $P5025, "$!regexsub"
    $P5027 = $P5026."nqpattr"(_lex_param_1)
    set $P5023, $P5027
  vivi_220660:
    set $P5012, $P5023
    iter $P5014, $P5023
  for_next662:
    unless $P5014, for_done664
    shift $P5029, $P5014
  for_redo663:
    .const 'Sub' $P5028 = 'cuid_95_1350818088.873' 
    capture_lex $P5028
    $P5012 = $P5028($P5029)
    goto for_next662
  for_done664:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_95_1350818088.873") :anon :lex :outer("cuid_46_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 688
    .param pmc _lex_param_0 
    .lex "$label", $P101 
    .lex "$_", _lex_param_0 
    nqp_get_sc_object $P5001, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P101, $P5001
    find_lex $P5003, "@labels"
    find_lex $I5001, "$fate"
    set $P5002, $P5003[$I5001]
    unless_null $P5002, fallback661
    nqp_get_sc_object $P5004, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P5002, $P5004
  fallback661:
    set $P101, $P5002
    find_lex $I5002, "$fate"
    set $N5002, $I5002
    set $N5003, 1
    add $N5001, $N5002, $N5003
    set $I5003, $N5001
    store_lex "$fate", $I5003
    find_lex $P5005, "@fates"
    find_lex $I5004, "$fate"
    set $P5005[$I5004], $P101
.annotate 'line', 692
    find_lex $P5006, "$nfa"
    find_lex $I5005, "$start"
    find_lex $I5006, "$fate"
    find_lex $P5008, "self"
    nqp_decontainerize $P5007, $P5008
    $P5009 = $P5006."mergesubstates"($I5005, 0, $I5006, _lex_param_0, $P5007)
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "!BACKREF" :subid("cuid_47_1350818088.873") :anon :lex :outer("cuid_67_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 697
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5032 = 'cuid_96_1350818088.873' 
    capture_lex $P5032 
    .lex "$cur", $P101 
    .lex "$n", $I101 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    .local pmc tmp_4 
    nqp_get_sc_object $P5001, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P101, $P5001
    set $I101, 0
.annotate 'line', 698
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start"()
    set $P101, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!cstack"
    unless $P5006 goto if221_else665 
    nqp_decontainerize $P5007, _lex_param_0
    find_lex $P5008, "$?CLASS"
    repr_get_attr_obj $P5009, $P5007, $P5008, "$!cstack"
    elements $I5001, $P5009
    set $N5002, $I5001
    set $N5003, 1
    sub $N5001, $N5002, $N5003
    box $P5011, $N5001
    set $P5010, $P5011
    goto if221_end666
  if221_else665:
    box $P5012, -1
    set $P5010, $P5012
  if221_end666:
    set $I5002, $P5010
    set $I101, $I5002
    new $P5028, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5028, while222_handlers670
    push_eh $P5028
  while222_test667:
    set $N5004, $I101
    set $N5005, 0
    isge $I5003, $N5004, $N5005
    set $I5007, $I5003
    unless $I5003 goto if223_end673 
    nqp_decontainerize $P5015, _lex_param_0
    find_lex $P5016, "$?CLASS"
    repr_get_attr_obj $P5017, $P5015, $P5016, "$!cstack"
    set $P5014, $P5017[$I101]
    unless_null $P5014, fallback676
    nqp_get_sc_object $P5018, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P5014, $P5018
  fallback676:
    find_lex $P5019, "$?CLASS"
    getattribute $P5013, $P5014, $P5019, "$!name"
    isnull $I5004, $P5013
    set $I5006, $I5004
    if $I5004 goto unless224_end675 
    nqp_decontainerize $P5022, _lex_param_0
    find_lex $P5023, "$?CLASS"
    repr_get_attr_obj $P5024, $P5022, $P5023, "$!cstack"
    set $P5021, $P5024[$I101]
    unless_null $P5021, fallback677
    nqp_get_sc_object $P5025, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P5021, $P5025
  fallback677:
    find_lex $P5026, "$?CLASS"
    getattribute $P5020, $P5021, $P5026, "$!name"
    set $S5001, $P5020
    set $S5002, _lex_param_1
    isne $I5005, $S5001, $S5002
    set $I5006, $I5005
  unless224_end675:
    set $I5007, $I5006
  if223_end673:
    box $P5029, $I5007
    set $P5027, $P5029
    unless $I5007 goto while222_done671 
  while222_redo669:
    box $P5027, $I101
    set tmp_4, $P5027
    set $N5007, tmp_4
    set $N5008, 1
    sub $N5006, $N5007, $N5008
    set $I5008, $N5006
    set $I101, $I5008
    set $P5027, tmp_4
    goto while222_test667 
  while222_handlers670:
    .get_results ($P5028)
    pop_upto_eh $P5028
    getattribute $P5028, $P5028, 'type'
    eq $P5028, .CONTROL_LOOP_NEXT, while222_test667
    eq $P5028, .CONTROL_LOOP_REDO, while222_redo669
  while222_done671:
    pop_eh 
    set $N5006, $I101
    set $N5007, 0
    isge $I5008, $N5006, $N5007
    unless $I5008 goto if225_end679 
    .const 'Sub' $P5030 = 'cuid_96_1350818088.873' 
    capture_lex $P5030
    $P5031 = $P5030()
  if225_end679:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_96_1350818088.873") :anon :lex :outer("cuid_47_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 702
    .lex "$subcur", $P101 
    .lex "$litlen", $I101 
    nqp_get_sc_object $P5001, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P101, $P5001
    set $I101, 0
    find_lex $P5004, "self"
    nqp_decontainerize $P5003, $P5004
    find_lex $P5005, "$?CLASS"
    repr_get_attr_obj $P5006, $P5003, $P5005, "$!cstack"
    find_lex $I5001, "$n"
    set $P5002, $P5006[$I5001]
    unless_null $P5002, fallback680
    nqp_get_sc_object $P5007, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P5002, $P5007
  fallback680:
    set $P101, $P5002
.annotate 'line', 704
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
    repr_get_attr_str $S5002, $P5010, $P5012, "$!target"
    find_lex $P5014, "self"
    nqp_decontainerize $P5013, $P5014
    find_lex $P5015, "$?CLASS"
    repr_get_attr_int $I5004, $P5013, $P5015, "$!pos"
    substr $S5001, $S5002, $I5004, $I101
    find_lex $P5017, "self"
    nqp_decontainerize $P5016, $P5017
    find_lex $P5018, "$?CLASS"
    repr_get_attr_str $S5004, $P5016, $P5018, "$!target"
.annotate 'line', 707
    $P5019 = $P101."from"()
    set $I5005, $P5019
    substr $S5003, $S5004, $I5005, $I101
    iseq $I5003, $S5001, $S5003
    box $P5026, $I5003
    set $P5025, $P5026
    unless $I5003 goto if226_end682 
.annotate 'line', 705
    find_lex $P5020, "$cur"
    find_lex $P5022, "self"
    nqp_decontainerize $P5021, $P5022
    find_lex $P5023, "$?CLASS"
    repr_get_attr_int $I5006, $P5021, $P5023, "$!pos"
    set $N5005, $I5006
    set $N5006, $I101
    add $N5004, $N5005, $N5006
    $P5024 = $P5020."!cursor_pass"($N5004, "")
    set $P5025, $P5024
  if226_end682:
    .return ($P5025) 
.end
.HLL "nqp"
.namespace []
.sub "!LITERAL" :subid("cuid_48_1350818088.873") :anon :lex :outer("cuid_67_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 712
    .param pmc _lex_param_0 
    .param string _lex_param_1 
    .param int _lex_param_2 :optional 
    .param int haz_param_18 :opt_flag 
    if haz_param_18, default689
    set $I5010, 0
    set _lex_param_2, $I5010
  default689:
    .lex "$cur", $P101 
    .lex "$litlen", $I101 
    .lex "self", _lex_param_0 
    .lex "$str", _lex_param_1 
    .lex "$i", _lex_param_2 
    nqp_get_sc_object $P5001, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P101, $P5001
    set $I101, 0
.annotate 'line', 713
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start"()
    set $P101, $P5003
    length $I5001, _lex_param_1
    set $I101, $I5001
    set $N5001, $I101
    set $N5002, 1
    islt $I5002, $N5001, $N5002
    set $I5008, $I5002
    if $I5002 goto unless228_end686 
    unless _lex_param_2 goto if229_else687 
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_str $S5003, $P5004, $P5005, "$!target"
    nqp_decontainerize $P5006, _lex_param_0
    find_lex $P5007, "$?CLASS"
    repr_get_attr_int $I5004, $P5006, $P5007, "$!pos"
    substr $S5002, $S5003, $I5004, $I101
    downcase $S5001, $S5002
    downcase $S5004, _lex_param_1
    iseq $I5003, $S5001, $S5004
    set $I5007, $I5003
    goto if229_end688
  if229_else687:
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_str $S5006, $P5008, $P5009, "$!target"
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5006, $P5010, $P5011, "$!pos"
    substr $S5005, $S5006, $I5006, $I101
    iseq $I5005, $S5005, _lex_param_1
    set $I5007, $I5005
  if229_end688:
    set $I5008, $I5007
  unless228_end686:
    unless $I5008 goto if227_end684 
.annotate 'line', 715
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5009, $P5012, $P5013, "$!pos"
    set $N5004, $I5009
    set $N5005, $I101
    add $N5003, $N5004, $N5005
    $P5014 = $P101."!cursor_pass"($N5003)
  if227_end684:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "at" :subid("cuid_49_1350818088.873") :anon :lex :outer("cuid_67_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 722
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    .lex "$pos", _lex_param_1 
    nqp_get_sc_object $P5001, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P101, $P5001
.annotate 'line', 723
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start"()
    set $P101, $P5003
    set $N5001, _lex_param_1
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_int $I5002, $P5004, $P5005, "$!pos"
    set $N5002, $I5002
    iseq $I5001, $N5001, $N5002
    unless $I5001 goto if230_end691 
.annotate 'line', 724
    nqp_decontainerize $P5006, _lex_param_0
    find_lex $P5007, "$?CLASS"
    repr_get_attr_int $I5003, $P5006, $P5007, "$!pos"
    $P5008 = $P101."!cursor_pass"($I5003)
  if230_end691:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "before" :subid("cuid_50_1350818088.873") :anon :lex :outer("cuid_67_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 728
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    .lex "$regex", _lex_param_1 
    nqp_get_sc_object $P5001, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P101, $P5001
.annotate 'line', 729
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start"()
    set $P101, $P5003
    find_lex $P5004, "$?CLASS"
    nqp_decontainerize $P5005, _lex_param_0
    find_lex $P5006, "$?CLASS"
    repr_get_attr_int $I5001, $P5005, $P5006, "$!pos"
    repr_bind_attr_int $P101, $P5004, "$!pos", $I5001
.annotate 'line', 731
    $P5007 = _lex_param_1($P101)
    find_lex $P5008, "$?CLASS"
    repr_get_attr_int $I5003, $P5007, $P5008, "$!pos"
    set $N5001, $I5003
    set $N5002, 0
    isge $I5002, $N5001, $N5002
    unless $I5002 goto if231_else692 
.annotate 'line', 732
    nqp_decontainerize $P5009, _lex_param_0
    find_lex $P5010, "$?CLASS"
    repr_get_attr_int $I5004, $P5009, $P5010, "$!pos"
    $P5011 = $P101."!cursor_pass"($I5004, "before")
    goto if231_end693
  if231_else692:
    find_lex $P5012, "$?CLASS"
    repr_bind_attr_int $P101, $P5012, "$!pos", -3
  if231_end693:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "after" :subid("cuid_51_1350818088.873") :anon :lex :outer("cuid_67_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 739
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    .lex "$regex", _lex_param_1 
    nqp_get_sc_object $P5001, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P101, $P5001
.annotate 'line', 740
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start"()
    set $P101, $P5003
    find_lex $P5004, "$?CLASS"
.annotate 'line', 741
    nqp_decontainerize $P5005, _lex_param_0
    find_lex $P5006, "$?CLASS"
    repr_get_attr_str $S5001, $P5005, $P5006, "$!target"
    box $P5007, $S5001
    $P5008 = $P5007."reverse"()
    set $S5002, $P5008
    repr_bind_attr_str $P101, $P5004, "$!target", $S5002
    find_lex $P5009, "$?CLASS"
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_str $S5003, $P5010, $P5011, "$!target"
    length $I5001, $S5003
    set $N5002, $I5001
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5002, $P5012, $P5013, "$!pos"
    set $N5003, $I5002
    sub $N5001, $N5002, $N5003
    set $I5003, $N5001
    repr_bind_attr_int $P101, $P5009, "$!from", $I5003
    find_lex $P5014, "$?CLASS"
    nqp_decontainerize $P5015, _lex_param_0
    find_lex $P5016, "$?CLASS"
    repr_get_attr_str $S5004, $P5015, $P5016, "$!target"
    length $I5004, $S5004
    set $N5005, $I5004
    nqp_decontainerize $P5017, _lex_param_0
    find_lex $P5018, "$?CLASS"
    repr_get_attr_int $I5005, $P5017, $P5018, "$!pos"
    set $N5006, $I5005
    sub $N5004, $N5005, $N5006
    set $I5006, $N5004
    repr_bind_attr_int $P101, $P5014, "$!pos", $I5006
.annotate 'line', 744
    $P5019 = _lex_param_1($P101)
    find_lex $P5020, "$?CLASS"
    repr_get_attr_int $I5008, $P5019, $P5020, "$!pos"
    set $N5007, $I5008
    set $N5008, 0
    isge $I5007, $N5007, $N5008
    unless $I5007 goto if232_else694 
.annotate 'line', 745
    nqp_decontainerize $P5021, _lex_param_0
    find_lex $P5022, "$?CLASS"
    repr_get_attr_int $I5009, $P5021, $P5022, "$!pos"
    $P5023 = $P101."!cursor_pass"($I5009, "after")
    goto if232_end695
  if232_else694:
    find_lex $P5024, "$?CLASS"
    repr_bind_attr_int $P101, $P5024, "$!pos", -3
  if232_end695:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "ws" :subid("cuid_52_1350818088.873") :anon :lex :outer("cuid_67_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 750
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P101, $P5001
.annotate 'line', 752
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start"()
    set $P101, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_int $I5002, $P5004, $P5005, "$!pos"
    set $N5001, $I5002
    nqp_decontainerize $P5006, _lex_param_0
    find_lex $P5007, "$?CLASS"
    repr_get_attr_str $S5001, $P5006, $P5007, "$!target"
    length $I5003, $S5001
    set $N5002, $I5003
    isge $I5001, $N5001, $N5002
    unless $I5001 goto if233_else696 
.annotate 'line', 754
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_int $I5004, $P5008, $P5009, "$!pos"
    $P5010 = $P101."!cursor_pass"($I5004, "ws")
    goto if233_end697
  if233_else696:
    nqp_decontainerize $P5011, _lex_param_0
    find_lex $P5012, "$?CLASS"
    repr_get_attr_int $I5006, $P5011, $P5012, "$!pos"
    set $N5003, $I5006
    set $N5004, 1
    islt $I5005, $N5003, $N5004
    set $I5010, $I5005
    if $I5005 goto unless236_end703 
    nqp_decontainerize $P5013, _lex_param_0
    find_lex $P5014, "$?CLASS"
    repr_get_attr_str $S5002, $P5013, $P5014, "$!target"
    nqp_decontainerize $P5015, _lex_param_0
    find_lex $P5016, "$?CLASS"
    repr_get_attr_int $I5009, $P5015, $P5016, "$!pos"
    is_cclass $I5008, .CCLASS_WORD, $S5002, $I5009
    not $I5007, $I5008
    set $I5010, $I5007
  unless236_end703:
    set $I5015, $I5010
    if $I5010 goto unless235_end701 
    nqp_decontainerize $P5017, _lex_param_0
    find_lex $P5018, "$?CLASS"
    repr_get_attr_str $S5003, $P5017, $P5018, "$!target"
    nqp_decontainerize $P5019, _lex_param_0
    find_lex $P5020, "$?CLASS"
    repr_get_attr_int $I5013, $P5019, $P5020, "$!pos"
    set $N5006, $I5013
    set $N5007, 1
    sub $N5005, $N5006, $N5007
    set $I5014, $N5005
    is_cclass $I5012, .CCLASS_WORD, $S5003, $I5014
    not $I5011, $I5012
    set $I5015, $I5011
  unless235_end701:
    box $P5029, $I5015
    set $P5028, $P5029
    unless $I5015 goto if234_end699 
.annotate 'line', 758
    nqp_decontainerize $P5021, _lex_param_0
    find_lex $P5022, "$?CLASS"
    repr_get_attr_str $S5004, $P5021, $P5022, "$!target"
    nqp_decontainerize $P5023, _lex_param_0
    find_lex $P5024, "$?CLASS"
    repr_get_attr_int $I5017, $P5023, $P5024, "$!pos"
    nqp_decontainerize $P5025, _lex_param_0
    find_lex $P5026, "$?CLASS"
    repr_get_attr_str $S5005, $P5025, $P5026, "$!target"
    length $I5018, $S5005
    find_not_cclass $I5016, .CCLASS_WHITESPACE, $S5004, $I5017, $I5018
    $P5027 = $P101."!cursor_pass"($I5016, "ws")
    set $P5028, $P5027
  if234_end699:
  if233_end697:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "ww" :subid("cuid_53_1350818088.873") :anon :lex :outer("cuid_67_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 765
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P101, $P5001
.annotate 'line', 766
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start"()
    set $P101, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_int $I5002, $P5004, $P5005, "$!pos"
    set $N5001, $I5002
    set $N5002, 0
    isgt $I5001, $N5001, $N5002
    set $I5006, $I5001
    unless $I5001 goto if240_end711 
    nqp_decontainerize $P5006, _lex_param_0
    find_lex $P5007, "$?CLASS"
    repr_get_attr_int $I5004, $P5006, $P5007, "$!pos"
    set $N5003, $I5004
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_str $S5001, $P5008, $P5009, "$!target"
    length $I5005, $S5001
    set $N5004, $I5005
    isne $I5003, $N5003, $N5004
    set $I5006, $I5003
  if240_end711:
    set $I5009, $I5006
    unless $I5006 goto if239_end709 
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_str $S5002, $P5010, $P5011, "$!target"
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5008, $P5012, $P5013, "$!pos"
    is_cclass $I5007, .CCLASS_WORD, $S5002, $I5008
    set $I5009, $I5007
  if239_end709:
    set $I5013, $I5009
    unless $I5009 goto if238_end707 
    nqp_decontainerize $P5014, _lex_param_0
    find_lex $P5015, "$?CLASS"
    repr_get_attr_str $S5003, $P5014, $P5015, "$!target"
    nqp_decontainerize $P5016, _lex_param_0
    find_lex $P5017, "$?CLASS"
    repr_get_attr_int $I5011, $P5016, $P5017, "$!pos"
    set $N5006, $I5011
    set $N5007, 1
    sub $N5005, $N5006, $N5007
    set $I5012, $N5005
    is_cclass $I5010, .CCLASS_WORD, $S5003, $I5012
    set $I5013, $I5010
  if238_end707:
    unless $I5013 goto if237_end705 
.annotate 'line', 767
    nqp_decontainerize $P5018, _lex_param_0
    find_lex $P5019, "$?CLASS"
    repr_get_attr_int $I5014, $P5018, $P5019, "$!pos"
    $P5020 = $P101."!cursor_pass"($I5014, "ww")
  if237_end705:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "wb" :subid("cuid_54_1350818088.873") :anon :lex :outer("cuid_67_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 775
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P101, $P5001
.annotate 'line', 776
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start"()
    set $P101, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_int $I5002, $P5004, $P5005, "$!pos"
    set $N5001, $I5002
    set $N5002, 0
    iseq $I5001, $N5001, $N5002
    set $I5005, $I5001
    unless $I5001 goto if244_end719 
    nqp_decontainerize $P5006, _lex_param_0
    find_lex $P5007, "$?CLASS"
    repr_get_attr_str $S5001, $P5006, $P5007, "$!target"
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_int $I5004, $P5008, $P5009, "$!pos"
    is_cclass $I5003, .CCLASS_WORD, $S5001, $I5004
    set $I5005, $I5003
  if244_end719:
    set $I5013, $I5005
    if $I5005 goto unless243_end717 
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5007, $P5010, $P5011, "$!pos"
    set $N5003, $I5007
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_str $S5002, $P5012, $P5013, "$!target"
    length $I5008, $S5002
    set $N5004, $I5008
    iseq $I5006, $N5003, $N5004
    set $I5012, $I5006
    unless $I5006 goto if245_end721 
    nqp_decontainerize $P5014, _lex_param_0
    find_lex $P5015, "$?CLASS"
    repr_get_attr_str $S5003, $P5014, $P5015, "$!target"
    nqp_decontainerize $P5016, _lex_param_0
    find_lex $P5017, "$?CLASS"
    repr_get_attr_int $I5010, $P5016, $P5017, "$!pos"
    set $N5006, $I5010
    set $N5007, 1
    sub $N5005, $N5006, $N5007
    set $I5011, $N5005
    is_cclass $I5009, .CCLASS_WORD, $S5003, $I5011
    set $I5012, $I5009
  if245_end721:
    set $I5013, $I5012
  unless243_end717:
    set $I5020, $I5013
    if $I5013 goto unless242_end715 
    nqp_decontainerize $P5018, _lex_param_0
    find_lex $P5019, "$?CLASS"
    repr_get_attr_str $S5004, $P5018, $P5019, "$!target"
    nqp_decontainerize $P5020, _lex_param_0
    find_lex $P5021, "$?CLASS"
    repr_get_attr_int $I5016, $P5020, $P5021, "$!pos"
    set $N5009, $I5016
    set $N5010, 1
    sub $N5008, $N5009, $N5010
    set $I5017, $N5008
    is_cclass $I5015, .CCLASS_WORD, $S5004, $I5017
    set $N5011, $I5015
    nqp_decontainerize $P5022, _lex_param_0
    find_lex $P5023, "$?CLASS"
    repr_get_attr_str $S5005, $P5022, $P5023, "$!target"
    nqp_decontainerize $P5024, _lex_param_0
    find_lex $P5025, "$?CLASS"
    repr_get_attr_int $I5019, $P5024, $P5025, "$!pos"
    is_cclass $I5018, .CCLASS_WORD, $S5005, $I5019
    set $N5012, $I5018
    isne $I5014, $N5011, $N5012
    set $I5020, $I5014
  unless242_end715:
    unless $I5020 goto if241_end713 
.annotate 'line', 777
    nqp_decontainerize $P5026, _lex_param_0
    find_lex $P5027, "$?CLASS"
    repr_get_attr_int $I5021, $P5026, $P5027, "$!pos"
    $P5028 = $P101."!cursor_pass"($I5021, "wb")
  if241_end713:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "ident" :subid("cuid_55_1350818088.873") :anon :lex :outer("cuid_67_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 786
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P101, $P5001
.annotate 'line', 787
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start"()
    set $P101, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_int $I5002, $P5004, $P5005, "$!pos"
    set $N5001, $I5002
    nqp_decontainerize $P5006, _lex_param_0
    find_lex $P5007, "$?CLASS"
    repr_get_attr_str $S5001, $P5006, $P5007, "$!target"
    length $I5003, $S5001
    set $N5002, $I5003
    islt $I5001, $N5001, $N5002
    set $I5010, $I5001
    unless $I5001 goto if247_end725 
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_str $S5002, $P5008, $P5009, "$!target"
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5006, $P5010, $P5011, "$!pos"
    ord $I5005, $S5002, $I5006
    set $N5003, $I5005
    set $N5004, 95
    iseq $I5004, $N5003, $N5004
    set $I5009, $I5004
    if $I5004 goto unless248_end727 
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_str $S5003, $P5012, $P5013, "$!target"
    nqp_decontainerize $P5014, _lex_param_0
    find_lex $P5015, "$?CLASS"
    repr_get_attr_int $I5008, $P5014, $P5015, "$!pos"
    is_cclass $I5007, .CCLASS_ALPHABETIC, $S5003, $I5008
    set $I5009, $I5007
  unless248_end727:
    set $I5010, $I5009
  if247_end725:
    unless $I5010 goto if246_end723 
.annotate 'line', 788
    nqp_decontainerize $P5016, _lex_param_0
    find_lex $P5017, "$?CLASS"
    repr_get_attr_str $S5004, $P5016, $P5017, "$!target"
    nqp_decontainerize $P5018, _lex_param_0
    find_lex $P5019, "$?CLASS"
    repr_get_attr_int $I5012, $P5018, $P5019, "$!pos"
    nqp_decontainerize $P5020, _lex_param_0
    find_lex $P5021, "$?CLASS"
    repr_get_attr_str $S5005, $P5020, $P5021, "$!target"
    length $I5013, $S5005
    find_not_cclass $I5011, .CCLASS_WORD, $S5004, $I5012, $I5013
    $P5022 = $P101."!cursor_pass"($I5011)
  if246_end723:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "alpha" :subid("cuid_56_1350818088.873") :anon :lex :outer("cuid_67_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 798
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P101, $P5001
.annotate 'line', 799
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start"()
    set $P101, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_int $I5002, $P5004, $P5005, "$!pos"
    set $N5001, $I5002
    nqp_decontainerize $P5006, _lex_param_0
    find_lex $P5007, "$?CLASS"
    repr_get_attr_str $S5001, $P5006, $P5007, "$!target"
    length $I5003, $S5001
    set $N5002, $I5003
    islt $I5001, $N5001, $N5002
    set $I5010, $I5001
    unless $I5001 goto if250_end731 
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_str $S5002, $P5008, $P5009, "$!target"
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, .CCLASS_ALPHABETIC, $S5002, $I5005
    set $I5009, $I5004
    if $I5004 goto unless251_end733 
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_str $S5003, $P5012, $P5013, "$!target"
    nqp_decontainerize $P5014, _lex_param_0
    find_lex $P5015, "$?CLASS"
    repr_get_attr_int $I5008, $P5014, $P5015, "$!pos"
    ord $I5007, $S5003, $I5008
    set $N5003, $I5007
    set $N5004, 95
    iseq $I5006, $N5003, $N5004
    set $I5009, $I5006
  unless251_end733:
    set $I5010, $I5009
  if250_end731:
    unless $I5010 goto if249_end729 
.annotate 'line', 800
    nqp_decontainerize $P5016, _lex_param_0
    find_lex $P5017, "$?CLASS"
    repr_get_attr_int $I5011, $P5016, $P5017, "$!pos"
    set $N5006, $I5011
    set $N5007, 1
    add $N5005, $N5006, $N5007
    $P5018 = $P101."!cursor_pass"($N5005, "alpha")
  if249_end729:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "alnum" :subid("cuid_57_1350818088.873") :anon :lex :outer("cuid_67_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 807
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P101, $P5001
.annotate 'line', 808
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start"()
    set $P101, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_int $I5002, $P5004, $P5005, "$!pos"
    set $N5001, $I5002
    nqp_decontainerize $P5006, _lex_param_0
    find_lex $P5007, "$?CLASS"
    repr_get_attr_str $S5001, $P5006, $P5007, "$!target"
    length $I5003, $S5001
    set $N5002, $I5003
    islt $I5001, $N5001, $N5002
    set $I5010, $I5001
    unless $I5001 goto if253_end737 
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_str $S5002, $P5008, $P5009, "$!target"
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, .CCLASS_ALPHANUMERIC, $S5002, $I5005
    set $I5009, $I5004
    if $I5004 goto unless254_end739 
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_str $S5003, $P5012, $P5013, "$!target"
    nqp_decontainerize $P5014, _lex_param_0
    find_lex $P5015, "$?CLASS"
    repr_get_attr_int $I5008, $P5014, $P5015, "$!pos"
    ord $I5007, $S5003, $I5008
    set $N5003, $I5007
    set $N5004, 95
    iseq $I5006, $N5003, $N5004
    set $I5009, $I5006
  unless254_end739:
    set $I5010, $I5009
  if253_end737:
    unless $I5010 goto if252_end735 
.annotate 'line', 809
    nqp_decontainerize $P5016, _lex_param_0
    find_lex $P5017, "$?CLASS"
    repr_get_attr_int $I5011, $P5016, $P5017, "$!pos"
    set $N5006, $I5011
    set $N5007, 1
    add $N5005, $N5006, $N5007
    $P5018 = $P101."!cursor_pass"($N5005, "alnum")
  if252_end735:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "upper" :subid("cuid_58_1350818088.873") :anon :lex :outer("cuid_67_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 816
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P101, $P5001
.annotate 'line', 817
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start"()
    set $P101, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_int $I5002, $P5004, $P5005, "$!pos"
    set $N5001, $I5002
    nqp_decontainerize $P5006, _lex_param_0
    find_lex $P5007, "$?CLASS"
    repr_get_attr_str $S5001, $P5006, $P5007, "$!target"
    length $I5003, $S5001
    set $N5002, $I5003
    islt $I5001, $N5001, $N5002
    set $I5006, $I5001
    unless $I5001 goto if256_end743 
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_str $S5002, $P5008, $P5009, "$!target"
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, .CCLASS_UPPERCASE, $S5002, $I5005
    set $I5006, $I5004
  if256_end743:
    unless $I5006 goto if255_end741 
.annotate 'line', 818
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5007, $P5012, $P5013, "$!pos"
    set $N5004, $I5007
    set $N5005, 1
    add $N5003, $N5004, $N5005
    $P5014 = $P101."!cursor_pass"($N5003, "upper")
  if255_end741:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "lower" :subid("cuid_59_1350818088.873") :anon :lex :outer("cuid_67_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 824
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P101, $P5001
.annotate 'line', 825
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start"()
    set $P101, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_int $I5002, $P5004, $P5005, "$!pos"
    set $N5001, $I5002
    nqp_decontainerize $P5006, _lex_param_0
    find_lex $P5007, "$?CLASS"
    repr_get_attr_str $S5001, $P5006, $P5007, "$!target"
    length $I5003, $S5001
    set $N5002, $I5003
    islt $I5001, $N5001, $N5002
    set $I5006, $I5001
    unless $I5001 goto if258_end747 
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_str $S5002, $P5008, $P5009, "$!target"
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, .CCLASS_LOWERCASE, $S5002, $I5005
    set $I5006, $I5004
  if258_end747:
    unless $I5006 goto if257_end745 
.annotate 'line', 826
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5007, $P5012, $P5013, "$!pos"
    set $N5004, $I5007
    set $N5005, 1
    add $N5003, $N5004, $N5005
    $P5014 = $P101."!cursor_pass"($N5003, "lower")
  if257_end745:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "digit" :subid("cuid_60_1350818088.873") :anon :lex :outer("cuid_67_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 832
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P101, $P5001
.annotate 'line', 833
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start"()
    set $P101, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_int $I5002, $P5004, $P5005, "$!pos"
    set $N5001, $I5002
    nqp_decontainerize $P5006, _lex_param_0
    find_lex $P5007, "$?CLASS"
    repr_get_attr_str $S5001, $P5006, $P5007, "$!target"
    length $I5003, $S5001
    set $N5002, $I5003
    islt $I5001, $N5001, $N5002
    set $I5006, $I5001
    unless $I5001 goto if260_end751 
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_str $S5002, $P5008, $P5009, "$!target"
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, .CCLASS_NUMERIC, $S5002, $I5005
    set $I5006, $I5004
  if260_end751:
    unless $I5006 goto if259_end749 
.annotate 'line', 834
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5007, $P5012, $P5013, "$!pos"
    set $N5004, $I5007
    set $N5005, 1
    add $N5003, $N5004, $N5005
    $P5014 = $P101."!cursor_pass"($N5003, "digit")
  if259_end749:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "xdigit" :subid("cuid_61_1350818088.873") :anon :lex :outer("cuid_67_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 840
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P101, $P5001
.annotate 'line', 841
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start"()
    set $P101, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_int $I5002, $P5004, $P5005, "$!pos"
    set $N5001, $I5002
    nqp_decontainerize $P5006, _lex_param_0
    find_lex $P5007, "$?CLASS"
    repr_get_attr_str $S5001, $P5006, $P5007, "$!target"
    length $I5003, $S5001
    set $N5002, $I5003
    islt $I5001, $N5001, $N5002
    set $I5006, $I5001
    unless $I5001 goto if262_end755 
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_str $S5002, $P5008, $P5009, "$!target"
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, .CCLASS_HEXADECIMAL, $S5002, $I5005
    set $I5006, $I5004
  if262_end755:
    unless $I5006 goto if261_end753 
.annotate 'line', 842
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5007, $P5012, $P5013, "$!pos"
    set $N5004, $I5007
    set $N5005, 1
    add $N5003, $N5004, $N5005
    $P5014 = $P101."!cursor_pass"($N5003, "xdigit")
  if261_end753:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "space" :subid("cuid_62_1350818088.873") :anon :lex :outer("cuid_67_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 848
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P101, $P5001
.annotate 'line', 849
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start"()
    set $P101, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_int $I5002, $P5004, $P5005, "$!pos"
    set $N5001, $I5002
    nqp_decontainerize $P5006, _lex_param_0
    find_lex $P5007, "$?CLASS"
    repr_get_attr_str $S5001, $P5006, $P5007, "$!target"
    length $I5003, $S5001
    set $N5002, $I5003
    islt $I5001, $N5001, $N5002
    set $I5006, $I5001
    unless $I5001 goto if264_end759 
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_str $S5002, $P5008, $P5009, "$!target"
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, .CCLASS_WHITESPACE, $S5002, $I5005
    set $I5006, $I5004
  if264_end759:
    unless $I5006 goto if263_end757 
.annotate 'line', 850
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5007, $P5012, $P5013, "$!pos"
    set $N5004, $I5007
    set $N5005, 1
    add $N5003, $N5004, $N5005
    $P5014 = $P101."!cursor_pass"($N5003, "space")
  if263_end757:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "blank" :subid("cuid_63_1350818088.873") :anon :lex :outer("cuid_67_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 856
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P101, $P5001
.annotate 'line', 857
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start"()
    set $P101, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_int $I5002, $P5004, $P5005, "$!pos"
    set $N5001, $I5002
    nqp_decontainerize $P5006, _lex_param_0
    find_lex $P5007, "$?CLASS"
    repr_get_attr_str $S5001, $P5006, $P5007, "$!target"
    length $I5003, $S5001
    set $N5002, $I5003
    islt $I5001, $N5001, $N5002
    set $I5006, $I5001
    unless $I5001 goto if266_end763 
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_str $S5002, $P5008, $P5009, "$!target"
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, .CCLASS_BLANK, $S5002, $I5005
    set $I5006, $I5004
  if266_end763:
    unless $I5006 goto if265_end761 
.annotate 'line', 858
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5007, $P5012, $P5013, "$!pos"
    set $N5004, $I5007
    set $N5005, 1
    add $N5003, $N5004, $N5005
    $P5014 = $P101."!cursor_pass"($N5003, "blank")
  if265_end761:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "cntrl" :subid("cuid_64_1350818088.873") :anon :lex :outer("cuid_67_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 864
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P101, $P5001
.annotate 'line', 865
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start"()
    set $P101, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_int $I5002, $P5004, $P5005, "$!pos"
    set $N5001, $I5002
    nqp_decontainerize $P5006, _lex_param_0
    find_lex $P5007, "$?CLASS"
    repr_get_attr_str $S5001, $P5006, $P5007, "$!target"
    length $I5003, $S5001
    set $N5002, $I5003
    islt $I5001, $N5001, $N5002
    set $I5006, $I5001
    unless $I5001 goto if268_end767 
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_str $S5002, $P5008, $P5009, "$!target"
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, .CCLASS_CONTROL, $S5002, $I5005
    set $I5006, $I5004
  if268_end767:
    unless $I5006 goto if267_end765 
.annotate 'line', 866
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5007, $P5012, $P5013, "$!pos"
    set $N5004, $I5007
    set $N5005, 1
    add $N5003, $N5004, $N5005
    $P5014 = $P101."!cursor_pass"($N5003, "cntrl")
  if267_end765:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "punct" :subid("cuid_65_1350818088.873") :anon :lex :outer("cuid_67_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 872
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P101, $P5001
.annotate 'line', 873
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start"()
    set $P101, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_int $I5002, $P5004, $P5005, "$!pos"
    set $N5001, $I5002
    nqp_decontainerize $P5006, _lex_param_0
    find_lex $P5007, "$?CLASS"
    repr_get_attr_str $S5001, $P5006, $P5007, "$!target"
    length $I5003, $S5001
    set $N5002, $I5003
    islt $I5001, $N5001, $N5002
    set $I5006, $I5001
    unless $I5001 goto if270_end771 
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_str $S5002, $P5008, $P5009, "$!target"
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, .CCLASS_PUNCTUATION, $S5002, $I5005
    set $I5006, $I5004
  if270_end771:
    unless $I5006 goto if269_end769 
.annotate 'line', 874
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5007, $P5012, $P5013, "$!pos"
    set $N5004, $I5007
    set $N5005, 1
    add $N5003, $N5004, $N5005
    $P5014 = $P101."!cursor_pass"($N5003, "punct")
  if269_end769:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "FAILGOAL" :subid("cuid_66_1350818088.873") :anon :lex :outer("cuid_67_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 880
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :optional 
    .param int haz_param_19 :opt_flag 
    if haz_param_19, default774
    nqp_get_sc_object $P5004, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set _lex_param_2, $P5004
  default774:
    .lex "self", _lex_param_0 
    .lex "$goal", _lex_param_1 
    .lex "$dba", _lex_param_2 
    if _lex_param_2 goto unless271_end773 
.annotate 'line', 881

                $P5001 = getinterp
                $P5001 = $P5001['sub';1]
            
    set $S5001, $P5001
    box $P5002, $S5001
    set _lex_param_2, $P5002
  unless271_end773:
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
.sub "" :subid("cuid_80_1350818088.873") :anon :lex :outer("cuid_1_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 892
    .const 'Sub' $P5013 = 'cuid_68_1350818088.873' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_69_1350818088.873' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_70_1350818088.873' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_71_1350818088.873' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_72_1350818088.873' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_73_1350818088.873' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_74_1350818088.873' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_75_1350818088.873' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_76_1350818088.873' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_77_1350818088.873' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_78_1350818088.873' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_79_1350818088.873' 
    capture_lex $P5013 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_68_1350818088.873' 
    capture_lex $P5001
    .const 'Sub' $P5002 = 'cuid_69_1350818088.873' 
    capture_lex $P5002
    .const 'Sub' $P5003 = 'cuid_70_1350818088.873' 
    capture_lex $P5003
    .const 'Sub' $P5004 = 'cuid_71_1350818088.873' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_72_1350818088.873' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_73_1350818088.873' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_74_1350818088.873' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_75_1350818088.873' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_76_1350818088.873' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_77_1350818088.873' 
    capture_lex $P5010
    .const 'Sub' $P5011 = 'cuid_78_1350818088.873' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_79_1350818088.873' 
    capture_lex $P5012
    .return ($P5012) 
.end
.HLL "nqp"
.namespace []
.sub "from" :subid("cuid_68_1350818088.873") :anon :lex :outer("cuid_80_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 899
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 70
    repr_get_attr_int $I5001, $P5001, $P5002, "$!from"
    .return ($I5001) 
.end
.HLL "nqp"
.namespace []
.sub "orig" :subid("cuid_69_1350818088.873") :anon :lex :outer("cuid_80_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 900
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 70
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!orig"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "to" :subid("cuid_70_1350818088.873") :anon :lex :outer("cuid_80_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 901
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 70
    repr_get_attr_int $I5001, $P5001, $P5002, "$!to"
    .return ($I5001) 
.end
.HLL "nqp"
.namespace []
.sub "CURSOR" :subid("cuid_71_1350818088.873") :anon :lex :outer("cuid_80_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 902
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 70
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!cursor"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "Str" :subid("cuid_72_1350818088.873") :anon :lex :outer("cuid_80_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 903
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 70
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!orig"
    set $S5002, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 70
    repr_get_attr_int $I5001, $P5004, $P5005, "$!from"
    nqp_decontainerize $P5006, _lex_param_0
    nqp_get_sc_object $P5007, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 70
    repr_get_attr_int $I5002, $P5006, $P5007, "$!to"
    set $N5002, $I5002
    nqp_decontainerize $P5008, _lex_param_0
    nqp_get_sc_object $P5009, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 70
    repr_get_attr_int $I5003, $P5008, $P5009, "$!from"
    set $N5003, $I5003
    sub $N5001, $N5002, $N5003
    set $I5004, $N5001
    substr $S5001, $S5002, $I5001, $I5004
    .return ($S5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_73_1350818088.873") :anon :lex :outer("cuid_80_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 904
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    $P5002 = $P5001."Str"()
    set $N5001, $P5002
    .return ($N5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_74_1350818088.873") :anon :lex :outer("cuid_80_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 905
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    $P5002 = $P5001."Str"()
    set $N5001, $P5002
    .return ($N5001) 
.end
.HLL "nqp"
.namespace []
.sub "Bool" :subid("cuid_75_1350818088.873") :anon :lex :outer("cuid_80_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 906
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 70
    repr_get_attr_int $I5002, $P5001, $P5002, "$!to"
    set $N5001, $I5002
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 70
    repr_get_attr_int $I5003, $P5003, $P5004, "$!from"
    set $N5002, $I5003
    isge $I5001, $N5001, $N5002
    .return ($I5001) 
.end
.HLL "nqp"
.namespace []
.sub "chars" :subid("cuid_76_1350818088.873") :anon :lex :outer("cuid_80_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 907
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 70
    repr_get_attr_int $I5002, $P5001, $P5002, "$!to"
    set $N5001, $I5002
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 70
    repr_get_attr_int $I5003, $P5003, $P5004, "$!from"
    set $N5002, $I5003
    isge $I5001, $N5001, $N5002
    unless $I5001 goto if272_else775 
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 70
    repr_get_attr_int $I5004, $P5005, $P5006, "$!to"
    set $N5004, $I5004
    nqp_decontainerize $P5007, _lex_param_0
    nqp_get_sc_object $P5008, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 70
    repr_get_attr_int $I5005, $P5007, $P5008, "$!from"
    set $N5005, $I5005
    sub $N5003, $N5004, $N5005
    box $P5010, $N5003
    set $P5009, $P5010
    goto if272_end776
  if272_else775:
    box $P5011, 0
    set $P5009, $P5011
  if272_end776:
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "!make" :subid("cuid_77_1350818088.873") :anon :lex :outer("cuid_80_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 909
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$ast", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 70
    repr_bind_attr_obj $P5001, $P5002, "$!ast", _lex_param_1
    .return (_lex_param_1) 
.end
.HLL "nqp"
.namespace []
.sub "ast" :subid("cuid_78_1350818088.873") :anon :lex :outer("cuid_80_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 910
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 70
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!ast"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "!dump_str" :subid("cuid_79_1350818088.873") :anon :lex :outer("cuid_80_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 912
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5019 = 'cuid_128_1350818088.873' 
    capture_lex $P5019 
    .const 'Sub' $P5019 = 'cuid_129_1350818088.873' 
    capture_lex $P5019 
    .lex "&dump_array", $P101 
    .lex "$str", $P102 
    .lex "self", _lex_param_0 
    .lex "$key", _lex_param_1 
    .const 'Sub' $P5001 = 'cuid_128_1350818088.873' 
    capture_lex $P5001
    set $P101, $P5001
    nqp_get_sc_object $P5002, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P102, $P5002
    set $S5006, _lex_param_1
    concat $S5005, $S5006, ": "
.annotate 'line', 924
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
.annotate 'line', 925
    nqp_decontainerize $P5008, _lex_param_0
    $P5009 = $P5008."list"()
    $P5010 = "&dump_array"(_lex_param_1, $P5009)
    set $S5012, $P5010
    concat $S5010, $S5011, $S5012
    box $P5011, $S5010
    set $P102, $P5011
.annotate 'line', 926
    nqp_decontainerize $P5015, _lex_param_0
    $P5016 = $P5015."hash"()
    set $P5012, $P5016
    iter $P5014, $P5016
  for_next784:
    unless $P5014, for_done786
    shift $P5018, $P5014
  for_redo785:
    .const 'Sub' $P5017 = 'cuid_129_1350818088.873' 
    capture_lex $P5017
    $P5012 = $P5017($P5018)
    goto for_next784
  for_done786:
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "dump_array" :subid("cuid_128_1350818088.873") :anon :lex :outer("cuid_79_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 913
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5011 = 'cuid_127_1350818088.873' 
    capture_lex $P5011 
    .lex "$str", $P101 
    .lex "$key", _lex_param_0 
    .lex "$item", _lex_param_1 
    nqp_get_sc_object $P5001, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P101, $P5001
    box $P5002, ""
    set $P101, $P5002
.annotate 'line', 915
    nqp_get_sc_object $P5003, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 36
    $P5004 = $P5003."ACCEPTS"(_lex_param_1)
    unless $P5004 goto if273_else777 
    set $S5002, $P101
.annotate 'line', 916
    $P5005 = _lex_param_1."!dump_str"(_lex_param_0)
    set $S5003, $P5005
    concat $S5001, $S5002, $S5003
    box $P5006, $S5001
    set $P101, $P5006
    goto if273_end778
  if273_else777:
    isnull $I5002, _lex_param_1
    not $I5001, $I5002
    box $P5010, $I5001
    set $P5009, $P5010
    unless $I5001 goto if274_end780 
    .const 'Sub' $P5007 = 'cuid_127_1350818088.873' 
    capture_lex $P5007
    $P5008 = $P5007()
    set $P5009, $P5008
  if274_end780:
  if273_end778:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_127_1350818088.873") :anon :lex :outer("cuid_128_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 918
    .const 'Sub' $P5009 = 'cuid_126_1350818088.873' 
    capture_lex $P5009 
    .lex "$n", $P101 
    nqp_get_sc_object $P5001, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P101, $P5001
    box $P5002, 0
    set $P101, $P5002
    find_lex $P5006, "$item"
    set $P5003, $P5006
    iter $P5005, $P5006
  for_next781:
    unless $P5005, for_done783
    shift $P5008, $P5005
  for_redo782:
    .const 'Sub' $P5007 = 'cuid_126_1350818088.873' 
    capture_lex $P5007
    $P5003 = $P5007($P5008)
    goto for_next781
  for_done783:
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_126_1350818088.873") :anon :lex :outer("cuid_127_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 920
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    .local pmc tmp_5 
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
    set tmp_5, $P5006
    set $N5002, tmp_5
    set $N5003, 1
    add $N5001, $N5002, $N5003
    box $P5007, $N5001
    store_lex "$n", $P5007
    .return (tmp_5) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_129_1350818088.873") :anon :lex :outer("cuid_79_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 926
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
.sub "" :subid("cuid_86_1350818088.873") :anon :lex :outer("cuid_1_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 931
    .const 'Sub' $P5010 = 'cuid_81_1350818088.873' 
    capture_lex $P5010 
    .const 'Sub' $P5010 = 'cuid_82_1350818088.873' 
    capture_lex $P5010 
    .const 'Sub' $P5010 = 'cuid_83_1350818088.873' 
    capture_lex $P5010 
    .const 'Sub' $P5010 = 'cuid_84_1350818088.873' 
    capture_lex $P5010 
    .const 'Sub' $P5010 = 'cuid_85_1350818088.873' 
    capture_lex $P5010 
    .lex "$EMPTY_MATCH_LIST", $P101 
    .lex "$EMPTY_MATCH_HASH", $P102 
    .lex "$?PACKAGE", $P103 
    .lex "$?CLASS", $P104 
    nqp_get_sc_object $P5001, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P101, $P5001
    nqp_get_sc_object $P5002, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P102, $P5002
    new $P5003, 'ResizablePMCArray'
    set $P101, $P5003
    new $P5004, 'Hash'
    set $P102, $P5004
    .const 'Sub' $P5005 = 'cuid_81_1350818088.873' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_82_1350818088.873' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_83_1350818088.873' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_84_1350818088.873' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_85_1350818088.873' 
    capture_lex $P5009
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "MATCH" :subid("cuid_81_1350818088.873") :anon :lex :outer("cuid_86_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 934
    .param pmc _lex_param_0 
    .const 'Sub' $P5008 = 'cuid_130_1350818088.873' 
    capture_lex $P5008 
    .lex "$match", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P101, $P5001
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 83
    getattribute $P5002, $P5003, $P5004, "$!match"
    set $P101, $P5002
    nqp_get_sc_object $P5005, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 70
    type_check $I5001, $P101, $P5005
    set $I5003, $I5001
    if $I5001 goto unless276_end790 
    nqp_ishash $I5002, $P101
    set $I5003, $I5002
  unless276_end790:
    if $I5003 goto unless275_end788 
    .const 'Sub' $P5006 = 'cuid_130_1350818088.873' 
    capture_lex $P5006
    $P5007 = $P5006()
  unless275_end788:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_130_1350818088.873") :anon :lex :outer("cuid_81_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 936
    .lex "$list", $P101 
    .lex "$hash", $P102 
    .lex "%ch", $P103 
    .lex "$key", $S101 
    .lex "$iter", $P104 
    nqp_get_sc_object $P5001, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P101, $P5001
    nqp_get_sc_object $P5002, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P102, $P5002
    new $P5003, 'Hash'
    set $P103, $P5003
    set $S101, ""
    nqp_get_sc_object $P5004, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P104, $P5004
    find_lex $P5005, "$EMPTY_MATCH_LIST"
    set $P101, $P5005
    find_lex $P5006, "$EMPTY_MATCH_HASH"
    set $P102, $P5006
    nqp_get_sc_object $P5008, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 70
    repr_instance_of $P5007, $P5008
    store_lex "$match", $P5007
    find_lex $P5010, "self"
    nqp_decontainerize $P5009, $P5010
    nqp_get_sc_object $P5011, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 83
    find_lex $P5012, "$match"
    setattribute $P5009, $P5011, "$!match", $P5012
    find_lex $P5013, "$match"
    nqp_get_sc_object $P5014, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 70
    find_lex $P5016, "self"
    nqp_decontainerize $P5015, $P5016
    setattribute $P5013, $P5014, "$!cursor", $P5015
    find_lex $P5017, "$match"
    nqp_get_sc_object $P5018, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 70
    find_lex $P5021, "self"
    nqp_decontainerize $P5020, $P5021
    nqp_get_sc_object $P5022, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 83
    getattribute $P5019, $P5020, $P5022, "$!orig"
    setattribute $P5017, $P5018, "$!orig", $P5019
    find_lex $P5023, "$match"
    nqp_get_sc_object $P5024, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 70
    find_lex $P5026, "self"
    nqp_decontainerize $P5025, $P5026
    nqp_get_sc_object $P5027, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 83
    repr_get_attr_int $I5001, $P5025, $P5027, "$!from"
    repr_bind_attr_int $P5023, $P5024, "$!from", $I5001
    find_lex $P5028, "$match"
    nqp_get_sc_object $P5029, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 70
    find_lex $P5031, "self"
    nqp_decontainerize $P5030, $P5031
    nqp_get_sc_object $P5032, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 83
    repr_get_attr_int $I5002, $P5030, $P5032, "$!pos"
    repr_bind_attr_int $P5028, $P5029, "$!to", $I5002
.annotate 'line', 945
    find_lex $P5034, "self"
    nqp_decontainerize $P5033, $P5034
    $P5035 = $P5033."CAPHASH"()
    set $P103, $P5035
    iter $P5036, $P103
    set $P104, $P5036
  while277_test791:
    set $P5052, $P104
    unless $P104 goto while277_done795 
  while277_redo793:
.annotate 'line', 948
    shift $P5037, $P104
    set $S5001, $P5037
    set $S101, $S5001
    iseq $I5003, $S101, "$!from"
    set $I5005, $I5003
    if $I5003 goto unless279_end799 
    iseq $I5004, $S101, "$!to"
    set $I5005, $I5004
  unless279_end799:
    unless $I5005 goto if278_else796 
.annotate 'line', 950
    find_lex $P5038, "$match"
    nqp_get_sc_object $P5039, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 70
.annotate 'line', 951
    set $P5040, $P103[$S101]
    unless_null $P5040, fallback800
    nqp_get_sc_object $P5041, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P5040, $P5041
  fallback800:
    $P5042 = $P5040."from"()
    set $I5006, $P5042
    repr_bind_attr_int $P5038, $P5039, $S101, $I5006
    box $P5051, $I5006
    set $P5050, $P5051
    goto if278_end797
  if278_else796:
    is_cclass $I5007, .CCLASS_NUMERIC, $S101, 0
    unless $I5007 goto if280_else801 
.annotate 'line', 953
    if $P101 goto unless281_end804 
    new $P5043, 'ResizablePMCArray'
    set $P101, $P5043
  unless281_end804:
    set $I5008, $S101
    set $P5044, $P103[$S101]
    unless_null $P5044, fallback805
    nqp_get_sc_object $P5045, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P5044, $P5045
  fallback805:
    set $P101[$I5008], $P5044
    set $P5049, $P5044
    goto if280_end802
  if280_else801:
.annotate 'line', 957
    if $P102 goto unless282_end807 
    new $P5046, 'Hash'
    set $P102, $P5046
  unless282_end807:
    set $P5047, $P103[$S101]
    unless_null $P5047, fallback808
    nqp_get_sc_object $P5048, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P5047, $P5048
  fallback808:
    set $P102[$S101], $P5047
    set $P5049, $P5047
  if280_end802:
    set $P5050, $P5049
  if278_end797:
    set $P5052, $P5050
    goto while277_test791 
  while277_done795:
    find_lex $P5053, "$match"
    nqp_get_sc_object $P5054, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 36
    setattribute $P5053, $P5054, "@!array", $P101
    find_lex $P5055, "$match"
    nqp_get_sc_object $P5056, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 36
    setattribute $P5055, $P5056, "%!hash", $P102
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "Bool" :subid("cuid_82_1350818088.873") :anon :lex :outer("cuid_86_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 968
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5002, _lex_param_0
    find_lex $P5003, "$?CLASS"
    getattribute $P5001, $P5002, $P5003, "$!match"
    isnull $I5002, $P5001
    not $I5001, $I5002
    set $I5004, $I5001
    unless $I5001 goto if283_end810 
    nqp_decontainerize $P5005, _lex_param_0
    find_lex $P5006, "$?CLASS"
    getattribute $P5004, $P5005, $P5006, "$!match"
    istrue $I5003, $P5004
    set $I5004, $I5003
  if283_end810:
    .return ($I5004) 
.end
.HLL "nqp"
.namespace []
.sub "parse" :subid("cuid_83_1350818088.873") :anon :lex :outer("cuid_86_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 973
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :named("rule") :optional 
    .param int haz_param_20 :opt_flag 
    .param pmc _lex_param_3 :named("actions") :optional 
    .param int haz_param_21 :opt_flag 
    .param pmc _lex_param_4 :slurpy :named 
    if haz_param_20, default813
    box $P5011, "TOP"
    set _lex_param_2, $P5011
  default813:
    if haz_param_21, default814
    nqp_get_sc_object $P5012, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set _lex_param_3, $P5012
  default814:
    .lex "$*ACTIONS", $P101 
    .lex "$cur", $P102 
    .lex "self", _lex_param_0 
    .lex "$target", _lex_param_1 
    .lex "$rule", _lex_param_2 
    .lex "$actions", _lex_param_3 
    .lex "%options", _lex_param_4 
    nqp_get_sc_object $P5001, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P101, $P5001
    nqp_get_sc_object $P5002, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P102, $P5002
    set $P101, _lex_param_3
.annotate 'line', 975
    nqp_decontainerize $P5003, _lex_param_0
    $P5004 = $P5003."!cursor_init"(_lex_param_1, _lex_param_4 :flat :named)
    set $P102, $P5004
    is_invokable $I5001, _lex_param_2
    unless $I5001 goto if284_else811 
.annotate 'line', 977
    $P5005 = _lex_param_2($P102)
    $P5006 = $P5005."MATCH"()
    set $P5010, $P5006
    goto if284_end812
  if284_else811:
.annotate 'line', 978
    set $S5001, _lex_param_2
    find_method $P5007, $P102, $S5001
    $P5008 = $P5007($P102)
    $P5009 = $P5008."MATCH"()
    set $P5010, $P5009
  if284_end812:
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "!INTERPOLATE" :subid("cuid_84_1350818088.873") :anon :lex :outer("cuid_86_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 981
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5006 = 'cuid_135_1350818088.873' 
    capture_lex $P5006 
    .const 'Sub' $P5006 = 'cuid_136_1350818088.873' 
    capture_lex $P5006 
    .lex "self", _lex_param_0 
    .lex "$var", _lex_param_1 
    root_new $P101, ['parrot';'Continuation']
    set_label $P101, lexotic_815
    .lex "RETURN", $P101
    nqp_islist $I5001, _lex_param_1
    unless $I5001 goto if285_else817 
    .const 'Sub' $P5001 = 'cuid_135_1350818088.873' 
    capture_lex $P5001
    $P5002 = $P5001()
    set $P5005, $P5002
    goto if285_end818
  if285_else817:
    .const 'Sub' $P5003 = 'cuid_136_1350818088.873' 
    capture_lex $P5003
    $P5004 = $P5003()
    set $P5005, $P5004
  if285_end818:
    goto lexotic_816
  lexotic_815:
    .get_results ($P5005)
  lexotic_816:
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_135_1350818088.873") :anon :lex :outer("cuid_84_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 982
    .const 'Sub' $P5016 = 'cuid_133_1350818088.873' 
    capture_lex $P5016 
    .lex "$maxlen", $I101 
    .lex "$cur", $P101 
    .lex "$pos", $I102 
    .lex "$tgt", $S101 
    .lex "$eos", $I103 
    set $I101, 0
    nqp_get_sc_object $P5001, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P101, $P5001
    set $I102, 0
    set $S101, ""
    set $I103, 0
    set $I101, -1
.annotate 'line', 984
    find_lex $P5003, "self"
    nqp_decontainerize $P5002, $P5003
    $P5004 = $P5002."!cursor_start"()
    set $P101, $P5004
    find_lex $P5005, "$?CLASS"
    repr_get_attr_int $I5001, $P101, $P5005, "$!from"
    set $I102, $I5001
.annotate 'line', 986
    $P5006 = $P101."target"()
    set $S5001, $P5006
    set $S101, $S5001
    length $I5002, $S101
    set $I103, $I5002
    find_lex $P5010, "$var"
    set $P5007, $P5010
    iter $P5009, $P5010
  for_next831:
    unless $P5009, for_done833
    shift $P5012, $P5009
  for_redo832:
    .const 'Sub' $P5011 = 'cuid_133_1350818088.873' 
    capture_lex $P5011
    $P5007 = $P5011($P5012)
    goto for_next831
  for_done833:
    set $N5001, $I101
    set $N5002, 0
    isge $I5003, $N5001, $N5002
    unless $I5003 goto if292_end835 
.annotate 'line', 1003
    set $N5004, $I102
    set $N5005, $I101
    add $N5003, $N5004, $N5005
    $P5013 = $P101."!cursor_pass"($N5003, "")
  if292_end835:
    find_lex $P5014, "RETURN"
    $P5015 = $P5014($P101)
    .return ($P5015) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_133_1350818088.873") :anon :lex :outer("cuid_135_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 988
    .param pmc _lex_param_0 
    .const 'Sub' $P5006 = 'cuid_132_1350818088.873' 
    capture_lex $P5006 
    .const 'Sub' $P5006 = 'cuid_134_1350818088.873' 
    capture_lex $P5006 
    .lex "$_", _lex_param_0 
    is_invokable $I5001, _lex_param_0
    unless $I5001 goto if286_else819 
    .const 'Sub' $P5001 = 'cuid_132_1350818088.873' 
    capture_lex $P5001
    $P5002 = $P5001()
    set $P5005, $P5002
    goto if286_end820
  if286_else819:
    .const 'Sub' $P5003 = 'cuid_134_1350818088.873' 
    capture_lex $P5003
    $P5004 = $P5003()
    set $P5005, $P5004
  if286_end820:
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_132_1350818088.873") :anon :lex :outer("cuid_133_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 989
    .const 'Sub' $P5009 = 'cuid_131_1350818088.873' 
    capture_lex $P5009 
    .lex "$res", $P101 
    nqp_get_sc_object $P5001, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P101, $P5001
.annotate 'line', 990
    find_lex $P5004, "self"
    nqp_decontainerize $P5003, $P5004
    find_lex $P5002, "$_"
    $P5005 = $P5002($P5003)
    set $P101, $P5005
    set $P5008, $P101
    unless $P101 goto if287_end822 
    .const 'Sub' $P5006 = 'cuid_131_1350818088.873' 
    capture_lex $P5006
    $P5007 = $P5006()
    set $P5008, $P5007
  if287_end822:
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_131_1350818088.873") :anon :lex :outer("cuid_132_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 991
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
    unless $I5004 goto if288_end824 
    store_lex "$maxlen", $I101
    set $I5006, $I101
  if288_end824:
    .return ($I5006) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_134_1350818088.873") :anon :lex :outer("cuid_133_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 997
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
    unless $I5002 goto if291_end830 
    find_lex $I5005, "$pos"
    set $N5004, $I5005
    set $N5005, $I101
    add $N5003, $N5004, $N5005
    find_lex $I5006, "$eos"
    set $N5006, $I5006
    isle $I5004, $N5003, $N5006
    set $I5007, $I5004
  if291_end830:
    set $I5010, $I5007
    unless $I5007 goto if290_end828 
    find_lex $S5003, "$tgt"
    find_lex $I5009, "$pos"
    substr $S5002, $S5003, $I5009, $I101
    find_lex $P5002, "$_"
    set $S5004, $P5002
    iseq $I5008, $S5002, $S5004
    set $I5010, $I5008
  if290_end828:
    set $I5011, $I5010
    unless $I5010 goto if289_end826 
    store_lex "$maxlen", $I101
    set $I5011, $I101
  if289_end826:
    .return ($I5011) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_136_1350818088.873") :anon :lex :outer("cuid_84_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1006
    .lex "$cur", $P101 
    .lex "$pos", $I101 
    .lex "$tgt", $S101 
    .lex "$len", $I102 
    .lex "$adv", $I103 
    nqp_get_sc_object $P5001, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P101, $P5001
    set $I101, 0
    set $S101, ""
    set $I102, 0
    set $I103, 0
    find_lex $P5002, "$var"
    is_invokable $I5001, $P5002
    unless $I5001 goto if293_end837 
.annotate 'line', 1007
    find_lex $P5006, "self"
    nqp_decontainerize $P5005, $P5006
    find_lex $P5004, "$var"
    $P5007 = $P5004($P5005)
    find_lex $P5003, "RETURN"
    $P5008 = $P5003($P5007)
  if293_end837:
.annotate 'line', 1008
    find_lex $P5010, "self"
    nqp_decontainerize $P5009, $P5010
    $P5011 = $P5009."!cursor_start"()
    set $P101, $P5011
    find_lex $P5012, "$?CLASS"
    repr_get_attr_int $I5002, $P101, $P5012, "$!from"
    set $I101, $I5002
.annotate 'line', 1010
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
    if $I5005 goto unless295_end841 
    substr $S5003, $S101, $I101, $I102
    find_lex $P5015, "$var"
    set $S5004, $P5015
    isne $I5007, $S5003, $S5004
    set $I5008, $I5007
  unless295_end841:
    unless $I5008 goto if294_end839 
    find_lex $P5016, "RETURN"
    $P5017 = $P5016($P101)
  if294_end839:
.annotate 'line', 1015
    $P101."!cursor_pass"($I103, "")
    find_lex $P5018, "RETURN"
    $P5019 = $P5018($P101)
    .return ($P5019) 
.end
.HLL "nqp"
.namespace []
.sub "!INTERPOLATE_REGEX" :subid("cuid_85_1350818088.873") :anon :lex :outer("cuid_86_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1020
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5007 = 'cuid_139_1350818088.873' 
    capture_lex $P5007 
    .lex "self", _lex_param_0 
    .lex "$var", _lex_param_1 
    root_new $P101, ['parrot';'Continuation']
    set_label $P101, lexotic_842
    .lex "RETURN", $P101
    is_invokable $I5001, _lex_param_1
    if $I5001 goto unless296_end845 
    .const 'Sub' $P5001 = 'cuid_139_1350818088.873' 
    capture_lex $P5001
    $P5002 = $P5001()
  unless296_end845:
.annotate 'line', 1036
    nqp_decontainerize $P5004, _lex_param_0
    $P5005 = $P5004."!INTERPOLATE"(_lex_param_1)
    find_lex $P5003, "RETURN"
    $P5006 = $P5003($P5005)
    goto lexotic_843
  lexotic_842:
    .get_results ($P5006)
  lexotic_843:
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_139_1350818088.873") :anon :lex :outer("cuid_85_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1021
    .const 'Sub' $P5009 = 'cuid_138_1350818088.873' 
    capture_lex $P5009 
    .lex "$rxcompiler", $P101 
    nqp_get_sc_object $P5001, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P101, $P5001
    compreg $P5002, "QRegex::P6Regex"
    set $P101, $P5002
    find_lex $P5003, "$var"
    nqp_islist $I5001, $P5003
    unless $I5001 goto if297_else846 
    .const 'Sub' $P5004 = 'cuid_138_1350818088.873' 
    capture_lex $P5004
    $P5005 = $P5004()
    set $P5008, $P5005
    goto if297_end847
  if297_else846:
.annotate 'line', 1032
.annotate 'line', 1033
    find_lex $P5006, "$var"
    $P5007 = $P101."compile"($P5006)
    store_lex "$var", $P5007
    set $P5008, $P5007
  if297_end847:
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_138_1350818088.873") :anon :lex :outer("cuid_139_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1023
    .const 'Sub' $P5009 = 'cuid_137_1350818088.873' 
    capture_lex $P5009 
    .lex "$res", $P101 
    nqp_get_sc_object $P5001, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P101, $P5001
    new $P5002, 'ResizablePMCArray'
    set $P101, $P5002
    find_lex $P5006, "$var"
    set $P5003, $P5006
    iter $P5005, $P5006
  for_next850:
    unless $P5005, for_done852
    shift $P5008, $P5005
  for_redo851:
    .const 'Sub' $P5007 = 'cuid_137_1350818088.873' 
    capture_lex $P5007
    $P5003 = $P5007($P5008)
    goto for_next850
  for_done852:
    store_lex "$var", $P101
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_137_1350818088.873") :anon :lex :outer("cuid_138_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1025
    .param pmc _lex_param_0 
    .lex "$elem", $P101 
    .lex "$_", _lex_param_0 
    nqp_get_sc_object $P5001, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2", 15
    set $P101, $P5001
    set $P101, _lex_param_0
    is_invokable $I5001, $P101
    if $I5001 goto unless298_end849 
.annotate 'line', 1027
    find_lex $P5002, "$rxcompiler"
    $P5003 = $P5002."compile"($P101)
    set $P101, $P5003
  unless298_end849:
    find_lex $P5004, "$res"
    push $P5004, $P101
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_100_1350818088.873") :anon :lex :outer("cuid_1_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1040
    .const 'Sub' $P5004 = 'cuid_97_1350818088.873' 
    capture_lex $P5004 
    .const 'Sub' $P5004 = 'cuid_98_1350818088.873' 
    capture_lex $P5004 
    .const 'Sub' $P5004 = 'cuid_99_1350818088.873' 
    capture_lex $P5004 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_97_1350818088.873' 
    capture_lex $P5001
    .const 'Sub' $P5002 = 'cuid_98_1350818088.873' 
    capture_lex $P5002
    .const 'Sub' $P5003 = 'cuid_99_1350818088.873' 
    capture_lex $P5003
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "new" :subid("cuid_97_1350818088.873") :anon :lex :outer("cuid_100_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1042
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$code", _lex_param_1 
.annotate 'line', 1043
    nqp_decontainerize $P5001, _lex_param_0
    $P5002 = $P5001."bless"(_lex_param_1 :named("code"))
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "ACCEPTS" :subid("cuid_98_1350818088.873") :anon :lex :outer("cuid_100_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1045
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$target", _lex_param_1 
.annotate 'line', 1046
    nqp_get_sc_object $P5001, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 83
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5001."parse"(_lex_param_1, $P5002 :named("rule"))
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "Str" :subid("cuid_99_1350818088.873") :anon :lex :outer("cuid_100_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1048
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 89
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!code"
    set $S5001, $P5003
    .return ($S5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_102_1350818088.873") :anon :lex :outer("cuid_1_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1053
    .const 'Sub' $P5002 = 'cuid_101_1350818088.873' 
    capture_lex $P5002 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_101_1350818088.873' 
    capture_lex $P5001
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "ACCEPTS" :subid("cuid_101_1350818088.873") :anon :lex :outer("cuid_102_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1054
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$target", _lex_param_1 
.annotate 'line', 1055
    nqp_get_sc_object $P5001, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 83
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5001."parse"(_lex_param_1, $P5002 :named("rule"), 0 :named("c"))
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_141_1350818088.873") :load :init
.annotate 'file', "src\\stage2\\QRegex.nqp"
    .const 'Sub' $P5001 = 'cuid_140_1350818088.873' 
    capture_lex $P5001 
    .local pmc cur_sc 
    nqp_dynop_setup 
    nqp_bigint_setup 
    getinterp $P5001
    get_class $P5002, "LexPad"
    get_class $P5003, "NQPLexPad"
    $P5001."hll_map"($P5002, $P5003)
    load_bytecode "ModuleLoader.pbc"
    .const 'Sub' $P5001 = "cuid_1_1350818088.873" 
    get_hll_global $P5002, "ModuleLoader"
    $P5003 = $P5002."load_setting"("NQPCORE")
    $P5001."set_outer_ctx"($P5003)
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P5001, "ModuleLoader"
    $P5001."load_module"("QASTNode")
    nqp_create_sc $P5001, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888"
    set cur_sc, $P5001
    cur_sc."set_description"("src\\stage2\\QRegex.nqp")
    new $P5002, 'ResizableStringArray'
    null $S5001
    push $P5002, $S5001
    push $P5002, "P6opaque"
    push $P5002, "QAST"
    push $P5002, "QRegex"
    push $P5002, "NQPCursorRole"
    push $P5002, "NQPMatch"
    push $P5002, "NQPCursor"
    push $P5002, "NQPRegexMethod"
    push $P5002, "NQPRegex"
    push $P5002, "DEFAULT"
    push $P5002, "CREATE"
    push $P5002, "30CEAB4AE1E5238AF0BCBD7892C9B2296753F2A2-1350818086.2"
    push $P5002, "src\\stage2\\NQPCORE.setting"
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
    push $P5002, "addstate"
    push $P5002, "addedge"
    push $P5002, "states"
    push $P5002, "addnode"
    push $P5002, "regex_nfa"
    push $P5002, "fate"
    push $P5002, "alt"
    push $P5002, "anchor"
    push $P5002, "cclass"
    push $P5002, "concat"
    push $P5002, "enumcharlist"
    push $P5002, "literal"
    push $P5002, "subrule"
    push $P5002, "quant"
    push $P5002, "qastnode"
    push $P5002, "subcapture"
    push $P5002, "save"
    push $P5002, "qast"
    push $P5002, "mergesubrule"
    push $P5002, "mergesubstates"
    push $P5002, "run"
    push $P5002, "run_alt"
    push $P5002, "$!states"
    push $P5002, "$!edges"
    push $P5002, "Uninstantiable"
    push $P5002, "BUILD"
    push $P5002, "list"
    push $P5002, "hash"
    push $P5002, "from"
    push $P5002, "orig"
    push $P5002, "to"
    push $P5002, "CURSOR"
    push $P5002, "Bool"
    push $P5002, "chars"
    push $P5002, "!make"
    push $P5002, "ast"
    push $P5002, "!dump_str"
    push $P5002, "@!array"
    push $P5002, "%!hash"
    push $P5002, "$!orig"
    push $P5002, "$!from"
    push $P5002, "$!to"
    push $P5002, "$!ast"
    push $P5002, "$!cursor"
    push $P5002, "MATCH"
    push $P5002, "parse"
    push $P5002, "!INTERPOLATE"
    push $P5002, "!INTERPOLATE_REGEX"
    push $P5002, "target"
    push $P5002, "pos"
    push $P5002, "CAPHASH"
    push $P5002, "!cursor_init"
    push $P5002, "!cursor_start"
    push $P5002, "!cursor_start_subcapture"
    push $P5002, "!cursor_capture"
    push $P5002, "!cursor_push_cstack"
    push $P5002, "!cursor_pass"
    push $P5002, "!cursor_fail"
    push $P5002, "!cursor_next"
    push $P5002, "!cursor_more"
    push $P5002, "!reduce"
    push $P5002, "!reduce_with_match"
    push $P5002, "!protoregex"
    push $P5002, "!protoregex_nfa"
    push $P5002, "!protoregex_table"
    push $P5002, "!alt"
    push $P5002, "!alt_nfa"
    push $P5002, "!BACKREF"
    push $P5002, "!LITERAL"
    push $P5002, "at"
    push $P5002, "before"
    push $P5002, "after"
    push $P5002, "ws"
    push $P5002, "ww"
    push $P5002, "wb"
    push $P5002, "ident"
    push $P5002, "alpha"
    push $P5002, "alnum"
    push $P5002, "upper"
    push $P5002, "lower"
    push $P5002, "digit"
    push $P5002, "xdigit"
    push $P5002, "space"
    push $P5002, "blank"
    push $P5002, "cntrl"
    push $P5002, "punct"
    push $P5002, "FAILGOAL"
    push $P5002, "$!target"
    push $P5002, "$!pos"
    push $P5002, "$!match"
    push $P5002, "$!name"
    push $P5002, "$!bstack"
    push $P5002, "$!cstack"
    push $P5002, "$!regexsub"
    push $P5002, "$!restart"
    push $P5002, "$!code"
    push $P5002, "__6MODEL_CORE__"
    push $P5002, "GLOBALish"
    push $P5002, "EXPORT"
    push $P5002, "BE58E51235EED3306B26CFF0B8705FAD5A9CA65C-1350818082.792"
    push $P5002, "src\\stage2\\gen\\nqp-mo.pm"
    push $P5002, "QRegex::NFA"
    push $P5002, "edges"
    push $P5002, "get_string"
    push $P5002, "get_integer"
    push $P5002, "get_number"
    push $P5002, "match"
    push $P5002, "name"
    push $P5002, "bstack"
    push $P5002, "cstack"
    push $P5002, "regexsub"
    push $P5002, "restart"
    push $P5002, "invoke"
    push $P5002, "code"
    push $P5002, "CompileTimeValue"
    push $P5002, "5999FA70DED24A5080F4680C3CF5A9B13CAD7450-1350818087.302"
    push $P5002, "src\\stage2\\QASTNode.nqp"
    push $P5002, "SpecialArg"
    push $P5002, "Node"
    push $P5002, "Regex"
    push $P5002, "IVal"
    push $P5002, "NVal"
    push $P5002, "SVal"
    push $P5002, "BVal"
    push $P5002, "WVal"
    push $P5002, "Want"
    push $P5002, "Var"
    push $P5002, "VarWithFallback"
    push $P5002, "Op"
    push $P5002, "VM"
    push $P5002, "Stmts"
    push $P5002, "Stmt"
    push $P5002, "Block"
    push $P5002, "BlockMemo"
    push $P5002, "Unquote"
    push $P5002, "CompUnit"
    push $P5002, "InlinePlaceholder"
    push $P5002, "NFA"
    push $P5002, "$?PACKAGE"
    push $P5002, "$?ROLE"
    push $P5002, "$NO_CAPS"
    push $P5002, "$pass_mark"
    push $P5002, "@EMPTY"
    push $P5002, "$?CLASS"
    .const 'Sub' $P5003 = 'cuid_140_1350818088.873' 
    capture_lex $P5003
    $P5004 = $P5003()
    nqp_deserialize_sc "AQAAAEAAAAAEAAAAYAAAAAwAAADAAAAAXBQAAKgAAADcHgAAnkAAACgAAABeRAAAAQAAAG5EAACyRAAAAAAAAAsAAAAMAAAAeQAAAAAAAAB8AAAAfQAAAIwAAACNAAAAAQAAAAAAAAABAAAA/AAAAAEAAACkAQAAAQAAAEwCAAAxAAAANAUAAAEAAAB0BQAAAQAAAIIIAAABAAAAyA0AAAEAAABcDwAAAQAAAAYRAAABAAAAxhIAADEAAABgEwAAAAAAAF8AAAAAAAAAAAAAAAoABwAAAAIAAAACAAAAAABgAAAAAwAAAAIAAAAAAGEAAAAEAAAAAgAAAAAAHAAAAAUAAAACAAAAAABGAAAABgAAAAIAAAAAAFMAAAAHAAAAAgAAAAAAWQAAAAgAAAACAAAAAABdAAAACgAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAAAAAAAAMAAAAAAGIAAAAAAAAAAQAAAAoAAQAAAAkAAAACAAAAAAACAAAACgAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAAEAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAAAQAAAAMAAAAAAGMAAAAAAAAAAgAAAAoAAQAAAAQAAAACAAAAAAAcAAAACgAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAAIAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAAAgAAAAMAAAAAAGQAAAAAAAAAAwAAAAoAAAAAAAoAIwAAAAoAAAACAAEAAAAQAAAADQAAAAIAAQAAABEAAAAOAAAAAgABAAAAEgAAAA8AAAACAAAAAAAEAAAAEAAAAAIAAQAAABQAAAARAAAAAgABAAAAFwAAABIAAAACAAEAAAAZAAAAEwAAAAIAAQAAABsAAAAUAAAAAgABAAAAHQAAABUAAAACAAEAAAAfAAAAFgAAAAIAAQAAACAAAAAXAAAAAgABAAAAIgAAABgAAAACAAAAAAAbAAAAGQAAAAIAAAAAAAUAAAAaAAAAAgAAAAAABgAAABsAAAACAAAAAAAHAAAAHAAAAAIAAAAAAAgAAAAdAAAAAgAAAAAACQAAAB4AAAACAAAAAAAKAAAAHwAAAAIAAAAAAAsAAAAgAAAAAgAAAAAADAAAACEAAAACAAAAAAANAAAAIgAAAAIAAAAAAA4AAAAjAAAAAgAAAAAADwAAACQAAAACAAAAAAAQAAAAJQAAAAIAAAAAABEAAAAmAAAAAgAAAAAAEgAAACcAAAACAAAAAAATAAAAKAAAAAIAAAAAABQAAAApAAAAAgAAAAAAFQAAACoAAAACAAAAAAAWAAAAKwAAAAIAAAAAABcAAAAsAAAAAgAAAAAAGAAAAC0AAAACAAAAAAAZAAAALgAAAAIAAAAAABoAAAAAAAAAAAAAAAIAAAAAAAAAAgAAAAAAAwAAAAIAAQAAAA8AAAAEAAAAAAAAAAEAAAAAAAAABQAAAAAAAAADAAAAAAAAAAAAAgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAQAAAA8AAAACAAEAAAAPAAAA////////////////////////////////AAAAAAAAAAACAAAAAAAAAAIAAQAAAA8AAAADAAIAAAAAAAMAAAAKAAIAAAAvAAAABAAAAAAAAAAAADAAAAAEAAEAAAAAAAAAAAAAAGUAAAAAAAAAHAAAAAoAAAAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABmAAAAAAAAAEYAAAAKAAAAAAAKABkAAAAKAAAAAgABAAAAEAAAAA0AAAACAAEAAAARAAAADgAAAAIAAQAAABIAAAAPAAAAAgABAAAAJQAAABAAAAACAAAAAABLAAAAEQAAAAIAAQAAABcAAAASAAAAAgABAAAAGQAAABMAAAACAAEAAAAbAAAAFAAAAAIAAQAAAB0AAAAVAAAAAgABAAAAHwAAABYAAAACAAEAAAAgAAAAFwAAAAIAAQAAACIAAAAYAAAAAgABAAAAIwAAADIAAAACAAEAAAAmAAAAMwAAAAIAAQAAACcAAAA0AAAAAgABAAAAKAAAADUAAAACAAAAAABHAAAANgAAAAIAAAAAAEgAAAA3AAAAAgAAAAAASQAAADgAAAACAAAAAABKAAAAOQAAAAIAAAAAAE4AAAA6AAAAAgAAAAAATwAAADsAAAACAAAAAABQAAAAPAAAAAIAAAAAAFEAAAA9AAAAAgAAAAAAUgAAAAAAAAAAAAAAAwAAAAAAAAACAAAAAABGAAAAAgABAAAAJAAAAAIAAQAAAA8AAAAEAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAACAAAAAABOAAAAAAAAAAAAAAAHAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAQAAAAIAAAABAAAAAAAAAAEAAAACAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAABAAEAAgABAAAADwAAAAEAAQACAAEAAAAPAAAAAgABAAAADwAAAP///////////////////////////////wAAAAAAAAAAAwAAAAAAAAACAAEAAAAPAAAAAwACAAEAAAAkAAAACgACAAAAPgAAAAQAAAAAAAAAAAA/AAAABAABAAAAAAAAAAIAAAAAAEYAAAAKAAUAAABAAAAABAACAAAAAAAAAEEAAAAEAAMAAAAAAAAAQgAAAAQABAAAAAAAAABDAAAABAAFAAAAAAAAAEQAAAAEAAYAAAAAAAAAAAAAAGcAAAAAAAAAUwAAAAoAAAAAAAoAOgAAAAoAAAACAAEAAAAQAAAADQAAAAIAAQAAABEAAAAOAAAAAgABAAAAEgAAAA8AAAACAAEAAAATAAAAEAAAAAIAAQAAABQAAAARAAAAAgABAAAAFwAAABIAAAACAAEAAAAZAAAAEwAAAAIAAQAAABsAAAAUAAAAAgABAAAAHQAAABUAAAACAAEAAAAfAAAAFgAAAAIAAQAAACAAAAAXAAAAAgABAAAAIgAAABgAAAACAAEAAAAjAAAARQAAAAIAAAAAAFQAAAA5AAAAAgAAAAAAVQAAAEYAAAACAAAAAABWAAAARwAAAAIAAAAAAFcAAABIAAAAAgAAAAAAWAAAAEkAAAACAAAAAABoAAAANQAAAAIAAAAAAGkAAABKAAAAAgAAAAAAagAAAEsAAAACAAAAAABrAAAATAAAAAIAAAAAAGwAAABNAAAAAgAAAAAAbQAAAE4AAAACAAAAAABuAAAATwAAAAIAAAAAAG8AAABQAAAAAgAAAAAAcAAAAFEAAAACAAAAAABxAAAAUgAAAAIAAAAAAHIAAABTAAAAAgAAAAAAcwAAAFQAAAACAAAAAAB0AAAAVQAAAAIAAAAAAHUAAABWAAAAAgAAAAAAdgAAAFcAAAACAAAAAAB3AAAAWAAAAAIAAAAAAHgAAABZAAAAAgAAAAAAeQAAAFoAAAACAAAAAAB6AAAAWwAAAAIAAAAAAHsAAABcAAAAAgAAAAAAfAAAAF0AAAACAAAAAAB9AAAAXgAAAAIAAAAAAH4AAABfAAAAAgAAAAAAfwAAAGAAAAACAAAAAACAAAAAYQAAAAIAAAAAAIEAAABiAAAAAgAAAAAAggAAAGMAAAACAAAAAACDAAAAZAAAAAIAAAAAAIQAAABlAAAAAgAAAAAAhQAAAGYAAAACAAAAAACGAAAAZwAAAAIAAAAAAIcAAABoAAAAAgAAAAAAiAAAAGkAAAACAAAAAACJAAAAagAAAAIAAAAAAIoAAABrAAAAAgAAAAAAiwAAAGwAAAACAAAAAACMAAAAbQAAAAIAAAAAAI0AAABuAAAAAgAAAAAAjgAAAG8AAAACAAAAAACPAAAAAAAAAAAAAAAEAAAAAAAAAAIAAAAAAFMAAAACAAEAAAAPAAAAAgAAAAAAHAAAAAIAAAAAAJAAAAAEAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAACAAAAAABVAAAAAAAAAAAAAAAKAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAABAAAABAAAAAEAAAAAAAAAAQAAAAIAAAABAAAAAAAAAAEAAAACAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAQAAAA8AAAABAAEAAQACAAEAAAAPAAAAAgABAAAADwAAAAIAAQAAAA8AAAACAAEAAAAPAAAAAgABAAAADwAAAAIAAQAAAA8AAAD///////////////////////////////8AAAAAAAAAAAIAAAAAAAAAAgABAAAADwAAAAMAAgAAAAAAUwAAAAoACgAAAEAAAAAEAAAAAAAAAAAAcAAAAAQAAQAAAAAAAABBAAAABAACAAAAAAAAAHEAAAAEAAMAAAAAAAAAcgAAAAQABAAAAAAAAABzAAAABAAFAAAAAAAAAHQAAAAEAAYAAAAAAAAAdQAAAAQABwAAAAAAAAB2AAAABAAIAAAAAAAAAHcAAAAEAAkAAAAAAAAAAAAAAJEAAAAAAAAAWQAAAAoAAAAAAAoADQAAAAoAAAACAAEAAAAQAAAADQAAAAIAAQAAABEAAAAOAAAAAgABAAAAEgAAAA8AAAACAAAAAABaAAAAEAAAAAIAAAAAAFwAAAARAAAAAgABAAAAFwAAABIAAAACAAEAAAAZAAAAEwAAAAIAAQAAABsAAAAUAAAAAgABAAAAHQAAABUAAAACAAEAAAAfAAAAFgAAAAIAAAAAAFsAAAAXAAAAAgABAAAAIgAAABgAAAACAAEAAAAjAAAAAAAAAAAAAAACAAAAAAAAAAIAAAAAAFkAAAACAAEAAAAPAAAABAAAAAAAAAABAAAAAAAAAAUAAAAAAAAAAwAAAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAgABAAAADwAAAP///////////////////////////////wAAAAAAAAAAAgAAAAAAAAACAAEAAAAPAAAAAwACAAAAAABZAAAACgABAAAAeAAAAAQAAAAAAAAAAAAAAAAAkgAAAAAAAABdAAAACgAAAAAACgANAAAACgAAAAIAAQAAABAAAAANAAAAAgABAAAAEQAAAA4AAAACAAEAAAASAAAADwAAAAIAAAAAAFoAAAAQAAAAAgAAAAAAXAAAABEAAAACAAEAAAAXAAAAEgAAAAIAAQAAABkAAAATAAAAAgABAAAAGwAAABQAAAACAAEAAAAdAAAAFQAAAAIAAQAAAB8AAAAWAAAAAgAAAAAAXgAAABcAAAACAAEAAAAiAAAAGAAAAAIAAQAAACMAAAAAAAAAAAAAAAMAAAAAAAAAAgAAAAAAXQAAAAIAAAAAAFkAAAACAAEAAAAPAAAABAAAAAAAAAABAAAAAAAAAAUAAAAAAAAAAwAAAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAgABAAAADwAAAP///////////////////////////////wAAAAAAAAAAAwAAAAAAAAACAAEAAAAPAAAAAwACAAAAAABZAAAACgABAAAAeAAAAAQAAAAAAAAAAAACAAAAAABdAAAAAwAAAAAApQAAAAAAAABgAAAACgAVAAAAiwAAAAIABAAAAAMAAACOAAAAAgAEAAAACAAAAI8AAAACAAQAAAAMAAAAkAAAAAIABAAAACcAAACRAAAAAgAEAAAALwAAAJIAAAACAAQAAAAzAAAAkwAAAAIABAAAADcAAACUAAAAAgAEAAAAOwAAAJUAAAACAAQAAAA+AAAAlgAAAAIABAAAAEIAAACXAAAAAgAEAAAARwAAAJgAAAACAAQAAABPAAAAmQAAAAIABAAAAFEAAACaAAAAAgAEAAAAVwAAAJsAAAACAAQAAABbAAAAnAAAAAIABAAAAF8AAACdAAAAAgAEAAAAYwAAAJ4AAAACAAQAAABrAAAAnwAAAAIABAAAAG4AAACgAAAAAgAEAAAAcQAAAKEAAAACAAQAAAB6AAAACgAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAGAAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAAYAAAAAMAAAAAAKYAAAAAAAAAYQAAAAoAAQAAAKIAAAACAAAAAAADAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAAGEAAAADAAAAAACnAAAAAAAAAJAAAAADAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAIAAAAAAAAAAAAAAAAAAAADAAAAAAAAAAAAAAABAAAABQAAAAAAAAABAAAAAQAAAAUAAAAQAAAAAQAAAAEAAAAFAAAAIAAAAAEAAAABAAAABQAAADAAAAABAAAAAQAAAAUAAABAAAAAAQAAAAEAAAAFAAAAUAAAAAEAAAABAAAABQAAAGAAAAABAAAAAQAAAAUAAABwAAAAAQAAAAEAAAAFAAAAgAAAAAEAAAABAAAABQAAAJAAAAABAAAAAQAAAAUAAACgAAAAAQAAAAEAAAAFAAAAsAAAAAEAAAABAAAABQAAAMAAAAABAAAAAQAAAAUAAADQAAAAAQAAAAEAAAAFAAAA4AAAAAEAAAABAAAABQAAAPAAAAABAAAAAQAAAAUAAAAAAQAAAQAAAAEAAAAFAAAAEAEAAAEAAAABAAAABQAAACABAAABAAAAAQAAAAUAAAAwAQAAAQAAAAEAAAAFAAAAQAEAAAEAAAABAAAABQAAAFABAAABAAAAAQAAAAUAAABgAQAAAQAAAAEAAAAFAAAAcAEAAAEAAAAAAAAABAAAAIABAAAAAAAAAQAAAAUAAACAAQAAAQAAAAEAAAAFAAAAkAEAAAEAAAABAAAABQAAAKABAAABAAAAAQAAAAUAAACwAQAAAQAAAAEAAAAFAAAAwAEAAAEAAAABAAAABQAAANABAAABAAAAAQAAAAUAAADgAQAAAQAAAAEAAAAFAAAA8AEAAAEAAAABAAAABQAAAAACAAABAAAAAQAAAAUAAAAQAgAAAQAAAAEAAAAFAAAAIAIAAAEAAAABAAAABQAAADACAAABAAAAAQAAAAUAAABAAgAAAQAAAAEAAAAFAAAAUAIAAAEAAAABAAAABQAAAGACAAABAAAAAQAAAAUAAABwAgAAAQAAAAEAAAAFAAAAgAIAAAEAAAABAAAABQAAAJACAAABAAAAAQAAAAUAAACgAgAAAQAAAAEAAAAFAAAAsAIAAAEAAAABAAAABQAAAMACAAABAAAAAQAAAAUAAADQAgAAAQAAAAEAAAAFAAAA4AIAAAEAAAABAAAABQAAAPACAAABAAAAAQAAAAUAAAAAAwAAAQAAAAEAAAAFAAAAEAMAAAEAAAABAAAABQAAACADAAABAAAAAQAAAAUAAAAwAwAAAQAAAAEAAAAFAAAAQAMAAAEAAAABAAAABQAAAFADAAABAAAAAQAAAAUAAABgAwAAAQAAAAEAAAAFAAAAcAMAAAEAAAABAAAABQAAAIADAAABAAAAAQAAAAUAAACQAwAAAQAAAAEAAAAFAAAAoAMAAAEAAAABAAAABQAAALADAAABAAAAAQAAAAUAAADAAwAAAQAAAAEAAAAFAAAA0AMAAAEAAAABAAAABQAAAOADAAABAAAAAQAAAAUAAADwAwAAAQAAAAEAAAAFAAAAAAQAAAEAAAAAAAAABQAAABAEAAAAAAAAAQAAAAUAAAAQBAAAAQAAAAEAAAAFAAAAIAQAAAEAAAABAAAABQAAADAEAAABAAAAAQAAAAUAAABABAAAAQAAAAEAAAAFAAAAUAQAAAEAAAABAAAABQAAAGAEAAABAAAAAQAAAAUAAABwBAAAAQAAAAEAAAAFAAAAgAQAAAEAAAABAAAABQAAAJAEAAABAAAAAQAAAAUAAACgBAAAAQAAAAEAAAAFAAAAsAQAAAEAAAABAAAABQAAAMAEAAABAAAAAAAAAAYAAADQBAAAAAAAAAEAAAAFAAAA0AQAAAEAAAABAAAABQAAAOAEAAABAAAAAQAAAAUAAADwBAAAAQAAAAEAAAAFAAAAAAUAAAEAAAABAAAABQAAABAFAAABAAAAAAAAAAcAAAAgBQAAAAAAAAEAAAAFAAAAIAUAAAEAAAABAAAABQAAADAFAAABAAAAAQAAAAUAAABABQAAAQAAAAAAAAAIAAAAUAUAAAAAAAABAAAABQAAAFAFAAABAAAAAgAAAAAAAABgBQAAAQAAAAAAAAAJAAAAcAUAAAAAAAAAAAAACgAAAHAFAAAAAAAAAgAAAAAAAABwBQAAAQAAAAIAAAAAAAAAgAUAAAEAAAADAAAABwAAAJAFAAABAAAAAwAAAAYAAAAmCQAAAQAAAAMAAAAHAAAAFAwAAAEAAAADAAAABwAAAGYOAAABAAAAAQAAAAUAAADiFgAAAQAAAAEAAAAFAAAA8hYAAAEAAAABAAAABQAAAAIXAAABAAAAAQAAAAUAAAASFwAAAQAAAAEAAAAFAAAAIhcAAAEAAAABAAAABQAAADIXAAABAAAAAQAAAAUAAABCFwAAAQAAAAEAAAAFAAAAUhcAAAEAAAABAAAABQAAAGIXAAABAAAAAQAAAAUAAAByFwAAAQAAAAEAAAAFAAAAghcAAAEAAAABAAAABQAAAJIXAAABAAAAAQAAAAUAAACiFwAAAQAAAAEAAAAFAAAAshcAAAEAAAABAAAABQAAAMIXAAABAAAAAQAAAAUAAADSFwAAAQAAAAEAAAAFAAAA4hcAAAEAAAABAAAABQAAAPIXAAABAAAAAQAAAAUAAAACGAAAAQAAAAEAAAAFAAAAEhgAAAEAAAABAAAABQAAACIYAAABAAAAAQAAAAUAAAAyGAAAAQAAAAEAAAAFAAAAQhgAAAEAAAABAAAABQAAAFIYAAABAAAAAQAAAAUAAABiGAAAAQAAAAEAAAAFAAAAchgAAAEAAAABAAAABQAAAIIYAAABAAAAAQAAAAUAAACSGAAAAQAAAAEAAAAFAAAAohgAAAEAAAABAAAABQAAALIYAAABAAAAAQAAAAUAAADCGAAAAQAAAAEAAAAFAAAA0hgAAAEAAAABAAAABQAAAOIYAAABAAAAAQAAAAUAAADyGAAAAQAAAAEAAAAFAAAAAhkAAAEAAAABAAAABQAAABIZAAABAAAAAQAAAAUAAAAiGQAAAQAAAAEAAAAFAAAAMhkAAAEAAAABAAAABQAAAEIZAAABAAAAAQAAAAUAAABSGQAAAQAAAAAAAAALAAAAYhkAAAAAAAADAAAABwAAAGIZAAABAAAAAwAAAAcAAADOGgAAAQAAAAMAAAAJAAAAsBsAAAEAAAADAAAACQAAANgbAAABAAAAAwAAAAkAAAAAHAAAAQAAAAMAAAAJAAAAKBwAAAEAAAADAAAACQAAAFgcAAABAAAAAwAAAAkAAACIHAAAAQAAAAMAAAAJAAAAuBwAAAEAAAADAAAACQAAAOAcAAABAAAAAwAAAAkAAAAIHQAAAQAAAAMAAAAJAAAAMB0AAAEAAAADAAAACQAAAFgdAAABAAAAAwAAAAkAAACAHQAAAQAAAAMAAAAJAAAAqB0AAAEAAAADAAAACQAAANAdAAABAAAAAwAAAAkAAAAAHgAAAQAAAAMAAAAJAAAAMB4AAAEAAAADAAAACQAAAFgeAAABAAAAAwAAAAkAAACAHgAAAQAAAAIAAAAAAAAAqB4AAAEAAAACAAAAAAAAALgeAAABAAAAAwAAAAMAAADIHgAAAQAAAAsAAAAAAAAAAAABAAEAAQALAAAAAAABAAAAAQABAAEACwAAAAAAAgAAAAEAAQABAAsAAAAAAAMAAAABAAEAAQALAAAAAAAEAAAAAQABAAEACwAAAAAABQAAAAEAAQABAAsAAAAAAAYAAAABAAEAAQALAAAAAAAHAAAAAQABAAEACwAAAAAACAAAAAEAAQABAAsAAAAAAAkAAAABAAEAAQALAAAAAAAKAAAAAQABAAEACwAAAAAACwAAAAEAAQABAAsAAAAAAAwAAAABAAEAAQALAAAAAAANAAAAAQABAAEACwAAAAAADgAAAAEAAQABAAsAAAAAAA8AAAABAAEAAQALAAAAAAAQAAAAAQABAAEACwAAAAAAEQAAAAEAAQABAAsAAAAAABIAAAABAAEAAQALAAAAAAATAAAAAQABAAEACwAAAAAAFAAAAAEAAQABAAsAAAAAABUAAAABAAEAAQALAAAAAAAWAAAAAQABAAEACwAAAAAAFwAAAAEAAQABAAsAAAAAABgAAAABAAEAAQALAAAAAAAZAAAAAQABAAEACwAAAAAAGgAAAAEAAQABAAsAAAAAABsAAAABAAEAAQALAAAAAAAcAAAAAQABAAEACwAAAAAAHQAAAAEAAQABAAsAAAAAAB4AAAABAAEAAQALAAAAAAAfAAAAAQABAAEACwAAAAAAIAAAAAEAAQABAAsAAAAAACEAAAABAAEAAQALAAAAAAAiAAAAAQABAAEACwAAAAAAIwAAAAEAAQABAAsAAAAAACQAAAABAAEAAQALAAAAAAAlAAAAAQABAAEACwAAAAAAJgAAAAEAAQABAAsAAAAAACcAAAABAAEAAQALAAAAAAAoAAAAAQABAAEACwAAAAAAKQAAAAEAAQABAAsAAAAAACoAAAABAAEAAQALAAAAAAArAAAAAQABAAEACwAAAAAALAAAAAEAAQABAAsAAAAAAC0AAAABAAEAAQALAAAAAAAuAAAAAQABAAEACwAAAAAALwAAAAEAAQABAAsAAAAAADAAAAABAAEAAQALAAAAAAAxAAAAAQABAAEACwAAAAAAMgAAAAEAAQABAAsAAAAAADMAAAABAAEAAQALAAAAAAA0AAAAAQABAAEACwAAAAAANQAAAAEAAQABAAsAAAAAADYAAAABAAEAAQALAAAAAAA3AAAAAQABAAEACwAAAAAAOAAAAAEAAQABAAsAAAAAADkAAAABAAEAAQALAAAAAAA6AAAAAQABAAEACwAAAAAAOwAAAAEAAQABAAsAAAAAADwAAAABAAEAAQALAAAAAAA9AAAAAQABAAEACwAAAAAAPgAAAAEAAQABAAsAAAAAAD8AAAABAAEAAQALAAAAAABAAAAAAQABAAEACwAAAAAAQQAAAAEAAQABAAsAAAAAAEIAAAABAAEAAQALAAAAAABDAAAAAQABAAEACwAAAAAARAAAAAEAAQABAAsAAAAAAEUAAAABAAEAAQALAAAAAABGAAAAAQABAAEACwAAAAAARwAAAAEAAQABAAsAAAAAAEgAAAABAAEAAQALAAAAAABJAAAAAQABAAEACwAAAAAASgAAAAEAAQABAAsAAAAAAEsAAAABAAEAAQALAAAAAABMAAAAAQABAAEACwAAAAAATQAAAAEAAQABAAsAAAAAAE4AAAABAAEAAQALAAAAAABPAAAAAQABAAEACwAAAAAAUAAAAAEAAQABAAsAAAAAAFEAAAABAAEAAQALAAAAAABSAAAAAQABAAEACwAAAAAAUwAAAAEAAQABAAsAAAAAAFQAAAABAAEAAQALAAAAAABVAAAAAQABAAEAegAAAAcAAAAAAAoAAAAAAHsAAAAHAAAAAAAKAAAAAAAJAAAABwAAAAAACgAAAAAABgB+AAAACgACAAAALwAAAAIAAAAAAJMAAAAwAAAAAgAAAAAAlAAAAAoAGAAAAA8AAAACAAAAAAAEAAAAGQAAAAIAAAAAAAUAAAAaAAAAAgAAAAAABgAAABsAAAACAAAAAAAHAAAAHAAAAAIAAAAAAAgAAAAdAAAAAgAAAAAACQAAAB4AAAACAAAAAAAKAAAAHwAAAAIAAAAAAAsAAAAgAAAAAgAAAAAADAAAACEAAAACAAAAAAANAAAAIgAAAAIAAAAAAA4AAAAjAAAAAgAAAAAADwAAACQAAAACAAAAAAAQAAAAJQAAAAIAAAAAABEAAAAmAAAAAgAAAAAAEgAAACcAAAACAAAAAAATAAAAKAAAAAIAAAAAABQAAAApAAAAAgAAAAAAFQAAACoAAAACAAAAAAAWAAAAKwAAAAIAAAAAABcAAAAsAAAAAgAAAAAAGAAAAC0AAAACAAAAAAAZAAAALgAAAAIAAAAAABoAAAAYAAAAAgAAAAAAGwAAAAcAGAAAAAIAAAAAAAQAAAACAAAAAAAFAAAAAgAAAAAABgAAAAIAAAAAAAcAAAACAAAAAAAIAAAAAgAAAAAACQAAAAIAAAAAAAoAAAACAAAAAAALAAAAAgAAAAAADAAAAAIAAAAAAA0AAAACAAAAAAAOAAAAAgAAAAAADwAAAAIAAAAAABAAAAACAAAAAAARAAAAAgAAAAAAEgAAAAIAAAAAABMAAAACAAAAAAAUAAAAAgAAAAAAFQAAAAIAAAAAABYAAAACAAAAAAAXAAAAAgAAAAAAGAAAAAIAAAAAABkAAAACAAAAAAAaAAAAAgAAAAAAGwAAAAcAAAAAAAcAAQAAAAIAAQAAAA8AAAAHAAAAAAACAAEAAAAPAAAABwAAAAAACgAAAAAABAABAAAAAAAAAAcAAgAAAAIAAAAAAAMAAAACAAEAAAAPAAAABwAAAAAACgAAAAAACgAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAIAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAAwAAAAYAGwAAAAYALwAAAAcABAAAAAQAAQAAAAAAAAACAAAAAAADAAAABgB/AAAABgAwAAAABwACAAAABwAEAAAABAABAAAAAAAAAAIAAAAAAAMAAAAGABsAAAAGAC8AAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAAwAAAAYAfwAAAAYAMAAAAAEABgAEAAAACgAKAAAAQAAAAAIAAAAAAJUAAABwAAAAAgAAAAAAlgAAAEEAAAACAAAAAACXAAAAcQAAAAIAAAAAAJgAAAByAAAAAgAAAAAAmQAAAHMAAAACAAAAAACaAAAAdAAAAAIAAAAAAJsAAAB1AAAAAgAAAAAAnAAAAHYAAAACAAAAAACdAAAAdwAAAAIAAAAAAJ4AAAAKACgAAABJAAAAAgAAAAAAHQAAADUAAAACAAAAAAAeAAAASgAAAAIAAAAAAB8AAABLAAAAAgAAAAAAIAAAAEwAAAACAAAAAAAhAAAATQAAAAIAAAAAACIAAABOAAAAAgAAAAAAIwAAAE8AAAACAAAAAAAkAAAAUAAAAAIAAAAAACUAAABRAAAAAgAAAAAAJgAAAFIAAAACAAAAAAAnAAAAUwAAAAIAAAAAACgAAABUAAAAAgAAAAAAKQAAAFUAAAACAAAAAAAqAAAAVgAAAAIAAAAAACsAAABXAAAAAgAAAAAALAAAAFgAAAACAAAAAAAtAAAAWQAAAAIAAAAAAC4AAABaAAAAAgAAAAAALwAAAFsAAAACAAAAAAAwAAAAXAAAAAIAAAAAADEAAABdAAAAAgAAAAAAMgAAAF4AAAACAAAAAAAzAAAAXwAAAAIAAAAAADQAAABgAAAAAgAAAAAANQAAAGEAAAACAAAAAAA2AAAAYgAAAAIAAAAAADcAAABjAAAAAgAAAAAAOAAAAGQAAAACAAAAAAA5AAAAZQAAAAIAAAAAADoAAABmAAAAAgAAAAAAOwAAAGcAAAACAAAAAAA8AAAAaAAAAAIAAAAAAD0AAABpAAAAAgAAAAAAPgAAAGoAAAACAAAAAAA/AAAAawAAAAIAAAAAAEAAAABsAAAAAgAAAAAAQQAAAG0AAAACAAAAAABCAAAAbgAAAAIAAAAAAEMAAABvAAAAAgAAAAAARAAAAAcAAAAAAAcAAAAAAAQAAQAAAAAAAAACAAAAAABFAAAABgAFAAAACgAFAAAAQAAAAAIAAAAAAJ8AAABBAAAAAgAAAAAAoAAAAEIAAAACAAAAAAChAAAAQwAAAAIAAAAAAKIAAABEAAAAAgAAAAAAowAAAAoACgAAADUAAAACAAAAAABHAAAANgAAAAIAAAAAAEgAAAA3AAAAAgAAAAAASQAAADgAAAACAAAAAABKAAAAEAAAAAIAAAAAAEsAAAA5AAAAAgAAAAAATgAAADoAAAACAAAAAABPAAAAOwAAAAIAAAAAAFAAAAA8AAAAAgAAAAAAUQAAAD0AAAACAAAAAABSAAAABwAKAAAAAgAAAAAARwAAAAIAAAAAAEgAAAACAAAAAABJAAAAAgAAAAAASgAAAAIAAAAAAEsAAAACAAAAAABOAAAAAgAAAAAATwAAAAIAAAAAAFAAAAACAAAAAABRAAAAAgAAAAAAUgAAAAcAAAAAAAcAAQAAAAIAAQAAACQAAAAHAAAAAAABAAcAAAAAAAoAAAAAAAQAAQAAAAAAAAAHAAMAAAACAAAAAABGAAAAAgABAAAAJAAAAAIAAQAAAA8AAAAHAAAAAAAKAAMAAACAAAAAAgAAAAAASwAAAIEAAAACAAAAAABMAAAAggAAAAIAAAAAAE0AAAAKAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAgAAAAcAAgAAAAQAAAAAAAAAAAACAAEAAAAmAAAABwACAAAABAAAAAAAAAAAAAIAAQAAACYAAAAHAAEAAAAHAAIAAAAEAAAAAAAAAAAAAgABAAAAJgAAAAEABgAGAAAACgAKAAAAQAAAAAIAAAAAAJUAAABwAAAAAgAAAAAAlgAAAEEAAAACAAAAAACXAAAAcQAAAAIAAAAAAJgAAAByAAAAAgAAAAAAmQAAAHMAAAACAAAAAACaAAAAdAAAAAIAAAAAAJsAAAB1AAAAAgAAAAAAnAAAAHYAAAACAAAAAACdAAAAdwAAAAIAAAAAAJ4AAAAKAC0AAABFAAAAAgAAAAAAVAAAADkAAAACAAAAAABVAAAARgAAAAIAAAAAAFYAAABHAAAAAgAAAAAAVwAAAEgAAAACAAAAAABYAAAASQAAAAIAAAAAAGgAAAA1AAAAAgAAAAAAaQAAAEoAAAACAAAAAABqAAAASwAAAAIAAAAAAGsAAABMAAAAAgAAAAAAbAAAAE0AAAACAAAAAABtAAAATgAAAAIAAAAAAG4AAABPAAAAAgAAAAAAbwAAAFAAAAACAAAAAABwAAAAUQAAAAIAAAAAAHEAAABSAAAAAgAAAAAAcgAAAFMAAAACAAAAAABzAAAAVAAAAAIAAAAAAHQAAABVAAAAAgAAAAAAdQAAAFYAAAACAAAAAAB2AAAAVwAAAAIAAAAAAHcAAABYAAAAAgAAAAAAeAAAAFkAAAACAAAAAAB5AAAAWgAAAAIAAAAAAHoAAABbAAAAAgAAAAAAewAAAFwAAAACAAAAAAB8AAAAXQAAAAIAAAAAAH0AAABeAAAAAgAAAAAAfgAAAF8AAAACAAAAAAB/AAAAYAAAAAIAAAAAAIAAAABhAAAAAgAAAAAAgQAAAGIAAAACAAAAAACCAAAAYwAAAAIAAAAAAIMAAABkAAAAAgAAAAAAhAAAAGUAAAACAAAAAACFAAAAZgAAAAIAAAAAAIYAAABnAAAAAgAAAAAAhwAAAGgAAAACAAAAAACIAAAAaQAAAAIAAAAAAIkAAABqAAAAAgAAAAAAigAAAGsAAAACAAAAAACLAAAAbAAAAAIAAAAAAIwAAABtAAAAAgAAAAAAjQAAAG4AAAACAAAAAACOAAAAbwAAAAIAAAAAAI8AAAAHAC0AAAACAAAAAABUAAAAAgAAAAAAVQAAAAIAAAAAAFYAAAACAAAAAABXAAAAAgAAAAAAWAAAAAIAAAAAAGgAAAACAAAAAABpAAAAAgAAAAAAagAAAAIAAAAAAGsAAAACAAAAAABsAAAAAgAAAAAAbQAAAAIAAAAAAG4AAAACAAAAAABvAAAAAgAAAAAAcAAAAAIAAAAAAHEAAAACAAAAAAByAAAAAgAAAAAAcwAAAAIAAAAAAHQAAAACAAAAAAB1AAAAAgAAAAAAdgAAAAIAAAAAAHcAAAACAAAAAAB4AAAAAgAAAAAAeQAAAAIAAAAAAHoAAAACAAAAAAB7AAAAAgAAAAAAfAAAAAIAAAAAAH0AAAACAAAAAAB+AAAAAgAAAAAAfwAAAAIAAAAAAIAAAAACAAAAAACBAAAAAgAAAAAAggAAAAIAAAAAAIMAAAACAAAAAACEAAAAAgAAAAAAhQAAAAIAAAAAAIYAAAACAAAAAACHAAAAAgAAAAAAiAAAAAIAAAAAAIkAAAACAAAAAACKAAAAAgAAAAAAiwAAAAIAAAAAAIwAAAACAAAAAACNAAAAAgAAAAAAjgAAAAIAAAAAAI8AAAAHAAAAAAAHAAEAAAACAAEAAAAPAAAABwABAAAAAgAAAAAAHAAAAAIAAQAAAA8AAAAHAAAAAAAKAAAAAAAEAAEAAAAAAAAABwACAAAAAgAAAAAAUwAAAAIAAQAAAA8AAAAHAAIAAAACAAAAAAAcAAAAAgAAAAAAkAAAAAoAAAAAAAoAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwAKAAAABwAEAAAABAABAAAAAAAAAAIAAAAAAFMAAAAGADYAAAAGAEAAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAUwAAAAYASQAAAAYAcAAAAAcABAAAAAQAAQAAAAAAAAACAAAAAABTAAAABgA1AAAABgBBAAAABwAEAAAABAABAAAAAAAAAAIAAAAAAFMAAAAGAEoAAAAGAHEAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAUwAAAAYAgwAAAAYAcgAAAAcABAAAAAQAAQAAAAAAAAACAAAAAABTAAAABgCEAAAABgBzAAAABwAEAAAABAABAAAAAAAAAAIAAAAAAFMAAAAGAIUAAAAGAHQAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAUwAAAAYAhgAAAAYAdQAAAAcABAAAAAQAAQAAAAAAAAACAAAAAABTAAAABgCHAAAABgB2AAAABwAEAAAABAABAAAAAAAAAAIAAAAAAFMAAAAGAIgAAAAGAHcAAAAHAAoAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAUwAAAAYANgAAAAYAQAAAAAcABAAAAAQAAQAAAAAAAAACAAAAAABTAAAABgBJAAAABgBwAAAABwAEAAAABAABAAAAAAAAAAIAAAAAAFMAAAAGADUAAAAGAEEAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAUwAAAAYASgAAAAYAcQAAAAcABAAAAAQAAQAAAAAAAAACAAAAAABTAAAABgCDAAAABgByAAAABwAEAAAABAABAAAAAAAAAAIAAAAAAFMAAAAGAIQAAAAGAHMAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAUwAAAAYAhQAAAAYAdAAAAAcABAAAAAQAAQAAAAAAAAACAAAAAABTAAAABgCGAAAABgB1AAAABwAEAAAABAABAAAAAAAAAAIAAAAAAFMAAAAGAIcAAAAGAHYAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAUwAAAAYAiAAAAAYAdwAAAAEADAAAAAAAVgAAAAEAAQABAAwAAAAAAFcAAAABAAEAAQAMAAAAAABYAAAAAQABAAEADAAAAAAAWQAAAAEAAQABAAwAAAAAAFoAAAABAAEAAQAMAAAAAABbAAAAAQABAAEADAAAAAAAXAAAAAEAAQABAAwAAAAAAF0AAAABAAEAAQAMAAAAAABeAAAAAQABAAEADAAAAAAAXwAAAAEAAQABAAwAAAAAAGAAAAABAAEAAQAMAAAAAABhAAAAAQABAAEADAAAAAAAYgAAAAEAAQABAAwAAAAAAGMAAAABAAEAAQAMAAAAAABkAAAAAQABAAEADAAAAAAAZQAAAAEAAQABAAwAAAAAAGYAAAABAAEAAQAMAAAAAABnAAAAAQABAAEADAAAAAAAaAAAAAEAAQABAAwAAAAAAGkAAAABAAEAAQAMAAAAAABqAAAAAQABAAEADAAAAAAAawAAAAEAAQABAAwAAAAAAGwAAAABAAEAAQAMAAAAAABtAAAAAQABAAEADAAAAAAAbgAAAAEAAQABAAwAAAAAAG8AAAABAAEAAQAMAAAAAABwAAAAAQABAAEADAAAAAAAcQAAAAEAAQABAAwAAAAAAHIAAAABAAEAAQAMAAAAAABzAAAAAQABAAEADAAAAAAAdAAAAAEAAQABAAwAAAAAAHUAAAABAAEAAQAMAAAAAAB2AAAAAQABAAEADAAAAAAAdwAAAAEAAQABAAwAAAAAAHgAAAABAAEAAQAMAAAAAAB5AAAAAQABAAEADAAAAAAAegAAAAEAAQABAAwAAAAAAHsAAAABAAEAAQAMAAAAAAB8AAAAAQABAAEADAAAAAAAfQAAAAEAAQABAAYABwAAAAoAAQAAAHgAAAACAAAAAACkAAAACgADAAAADwAAAAIAAAAAAFoAAAAWAAAAAgAAAAAAWwAAABAAAAACAAAAAABcAAAABwADAAAAAgAAAAAAWgAAAAIAAAAAAFsAAAACAAAAAABcAAAABwAAAAAABwABAAAAAgABAAAADwAAAAcAAAAAAAIAAQAAAA8AAAAHAAAAAAAKAAAAAAAEAAEAAAAAAAAABwACAAAAAgAAAAAAWQAAAAIAAQAAAA8AAAAHAAAAAAAKAAEAAACAAAAAAgAAAAAAXAAAAAoAAQAAAIkAAAAHAAIAAAACAAAAAABZAAAABgB4AAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAEAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAWQAAAAYAigAAAAYAeAAAAAcAAQAAAAcABAAAAAQAAQAAAAAAAAACAAAAAABZAAAABgCKAAAABgB4AAAAAQAGAAgAAAAKAAAAAAAKAAEAAAAWAAAAAgAAAAAAXgAAAAcAAQAAAAIAAAAAAF4AAAAHAAAAAAAHAAEAAAACAAAAAABZAAAABwAAAAAAAQAHAAAAAAAKAAAAAAAEAAEAAAAAAAAABwADAAAAAgAAAAAAXQAAAAIAAAAAAFkAAAACAAEAAAAPAAAABwAAAAAACgAAAAAACgAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAEAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAWQAAAAYAigAAAAYAeAAAAAcAAAAAAAEABgAvAAAAAwAEAAAAAAAAAAAAAwACAAEAAAAPAAAABAABAAAAAAAAAAYAMAAAAAMABAAAAAAAAAAAAAMAAgABAAAADwAAAAQAAQAAAAAAAAAGAEAAAAADAAQAAAAAAAAAAAADAAIAAQAAAA8AAAAEAAEAAAAAAAAABgBwAAAAAgABAAAABAAAAAQAAQAAAAAAAAADAAIAAQAAAAQAAAAEAAEAAAAAAAAABgBBAAAAAgABAAAAAgAAAAQAAQAAAAAAAAADAAIAAQAAAAIAAAAEAAEAAAAAAAAABgBxAAAAAgABAAAAAgAAAAQAAQAAAAAAAAADAAIAAQAAAAIAAAAEAAEAAAAAAAAABgByAAAAAwAEAAAAAAAAAAAAAwACAAEAAAAPAAAABAABAAAAAAAAAAYAcwAAAAMABAAAAAAAAAAAAAMAAgABAAAADwAAAAQAAQAAAAAAAAAGAHQAAAADAAQAAAAAAAAAAAADAAIAAQAAAA8AAAAEAAEAAAAAAAAABgB1AAAAAwAEAAAAAAAAAAAAAwACAAEAAAAPAAAABAABAAAAAAAAAAYAdgAAAAMABAAAAAAAAAAAAAMAAgABAAAADwAAAAQAAQAAAAAAAAAGAHcAAAADAAQAAAAAAAAAAAADAAIAAQAAAA8AAAAEAAEAAAAAAAAABgBAAAAAAwAEAAAAAAAAAAAAAwACAAEAAAAPAAAABAABAAAAAAAAAAYAQQAAAAIAAQAAAAIAAAAEAAEAAAAAAAAAAwACAAEAAAACAAAABAABAAAAAAAAAAYAQgAAAAIAAQAAAAIAAAAEAAEAAAAAAAAAAwACAAEAAAACAAAABAABAAAAAAAAAAYAQwAAAAMABAAAAAAAAAAAAAMAAgABAAAADwAAAAQAAQAAAAAAAAAGAEQAAAADAAQAAAAAAAAAAAADAAIAAQAAAA8AAAAEAAEAAAAAAAAABgB4AAAAAwAEAAAAAAAAAAAAAwACAAEAAAAPAAAABAABAAAAAAAAAAIAAAAHAAAAAAAKAAAAAAADAAAABwAAAAAACgAAAAAABgAEAAAAAgAAAAAAHAAAAAoACgAAAEAAAAACAAAAAACVAAAAcAAAAAIAAAAAAJYAAABBAAAAAgAAAAAAlwAAAHEAAAACAAAAAACYAAAAcgAAAAIAAAAAAJkAAABzAAAAAgAAAAAAmgAAAHQAAAACAAAAAACbAAAAdQAAAAIAAAAAAJwAAAB2AAAAAgAAAAAAnQAAAHcAAAACAAAAAACeAAAACgAoAAAASQAAAAIAAAAAAGgAAAA1AAAAAgAAAAAAaQAAAEoAAAACAAAAAABqAAAASwAAAAIAAAAAAGsAAABMAAAAAgAAAAAAbAAAAE0AAAACAAAAAABtAAAATgAAAAIAAAAAAG4AAABPAAAAAgAAAAAAbwAAAFAAAAACAAAAAABwAAAAUQAAAAIAAAAAAHEAAABSAAAAAgAAAAAAcgAAAFMAAAACAAAAAABzAAAAVAAAAAIAAAAAAHQAAABVAAAAAgAAAAAAdQAAAFYAAAACAAAAAAB2AAAAVwAAAAIAAAAAAHcAAABYAAAAAgAAAAAAeAAAAFkAAAACAAAAAAB5AAAAWgAAAAIAAAAAAHoAAABbAAAAAgAAAAAAewAAAFwAAAACAAAAAAB8AAAAXQAAAAIAAAAAAH0AAABeAAAAAgAAAAAAfgAAAF8AAAACAAAAAAB/AAAAYAAAAAIAAAAAAIAAAABhAAAAAgAAAAAAgQAAAGIAAAACAAAAAACCAAAAYwAAAAIAAAAAAIMAAABkAAAAAgAAAAAAhAAAAGUAAAACAAAAAACFAAAAZgAAAAIAAAAAAIYAAABnAAAAAgAAAAAAhwAAAGgAAAACAAAAAACIAAAAaQAAAAIAAAAAAIkAAABqAAAAAgAAAAAAigAAAGsAAAACAAAAAACLAAAAbAAAAAIAAAAAAIwAAABtAAAAAgAAAAAAjQAAAG4AAAACAAAAAACOAAAAbwAAAAIAAAAAAI8AAAAHAAAAAAAHAAAAAAAHAAAAAAAHAAAAAAAEAAEAAAAAAAAAAAAAABgAAAABAAAAAQAAAAAAAABoAAAAAAAAABkAAAABAAAAAQAAAAAAAABpAAAAAAAAABoAAAABAAAAAQAAAAAAAABqAAAAAAAAABsAAAABAAAAAQAAAAAAAABrAAAAAAAAABwAAAABAAAAAQAAAAAAAABsAAAAAAAAAB0AAAABAAAAAQAAAAAAAABtAAAAAAAAAB4AAAABAAAAAQAAAAAAAABuAAAAAAAAAB8AAAABAAAAAQAAAAAAAABvAAAAAAAAACAAAAABAAAAAQAAAAAAAABwAAAAAAAAACEAAAABAAAAAQAAAAAAAABxAAAAAAAAACIAAAABAAAAAQAAAAAAAAByAAAAAAAAACMAAAABAAAAAQAAAAAAAABzAAAAAAAAACQAAAABAAAAAQAAAAAAAAB0AAAAAAAAACUAAAABAAAAAQAAAAAAAAB1AAAAAAAAACYAAAABAAAAAQAAAAAAAAB2AAAAAAAAACcAAAABAAAAAQAAAAAAAAB3AAAAAAAAACgAAAABAAAAAQAAAAAAAAB4AAAAAAAAACkAAAABAAAAAQAAAAAAAAB5AAAAAAAAACoAAAABAAAAAQAAAAAAAAB6AAAAAAAAACsAAAABAAAAAQAAAAAAAAB7AAAAAAAAACwAAAABAAAAAQAAAAAAAAB8AAAAAAAAAC0AAAABAAAAAQAAAAAAAAB9AAAAAAAAAC4AAAABAAAAAQAAAAAAAAB+AAAAAAAAAC8AAAABAAAAAQAAAAAAAAB/AAAAAAAAADAAAAABAAAAAQAAAAAAAACAAAAAAAAAADEAAAABAAAAAQAAAAAAAACBAAAAAAAAADIAAAABAAAAAQAAAAAAAACCAAAAAAAAADMAAAABAAAAAQAAAAAAAACDAAAAAAAAADQAAAABAAAAAQAAAAAAAACEAAAAAAAAADUAAAABAAAAAQAAAAAAAACFAAAAAAAAADYAAAABAAAAAQAAAAAAAACGAAAAAAAAADcAAAABAAAAAQAAAAAAAACHAAAAAAAAADgAAAABAAAAAQAAAAAAAACIAAAAAAAAADkAAAABAAAAAQAAAAAAAACJAAAAAAAAADoAAAABAAAAAQAAAAAAAACKAAAAAAAAADsAAAABAAAAAQAAAAAAAACLAAAAAAAAADwAAAABAAAAAQAAAAAAAACMAAAAAAAAAD0AAAABAAAAAQAAAAAAAACNAAAAAAAAAD4AAAABAAAAAQAAAAAAAACOAAAAAAAAAD8AAAABAAAAAQAAAAAAAACPAAAAAAAAAEAAAAAAAAAAAAAAAAYAAAAAAAAAowAAAAMApAAAAAMApQAAAAoAAAAAAKYAAAAEAAEAAAAAAAAApwAAAAcAAAAAAKgAAAACAAAAAABTAAAA", cur_sc, $P5002, $P5004
    .const "LexInfo" $P5001 = "cuid_1_1350818088.873"
    nqp_get_sc_object $P5002, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 0
    $P5001."set_static_lexpad_value"("GLOBALish", $P5002)
    .const "LexInfo" $P5003 = "cuid_1_1350818088.873"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1350818088.873"
    nqp_get_sc_object $P5002, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 0
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_1_1350818088.873"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1350818088.873"
    nqp_get_sc_object $P5002, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 1
    $P5001."set_static_lexpad_value"("EXPORT", $P5002)
    .const "LexInfo" $P5003 = "cuid_1_1350818088.873"
    $P5003."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_2_1350818088.873" 
    nqp_get_sc_object $P5002, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 4
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_3_1350818088.873" 
    nqp_get_sc_object $P5002, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 5
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_4_1350818088.873" 
    nqp_get_sc_object $P5002, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 6
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_5_1350818088.873" 
    nqp_get_sc_object $P5002, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 7
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_6_1350818088.873" 
    nqp_get_sc_object $P5002, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 8
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_7_1350818088.873" 
    nqp_get_sc_object $P5002, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 9
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_8_1350818088.873" 
    nqp_get_sc_object $P5002, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 10
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_9_1350818088.873" 
    nqp_get_sc_object $P5002, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 11
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_10_1350818088.873" 
    nqp_get_sc_object $P5002, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 12
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_11_1350818088.873" 
    nqp_get_sc_object $P5002, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 13
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_12_1350818088.873" 
    nqp_get_sc_object $P5002, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 14
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_13_1350818088.873" 
    nqp_get_sc_object $P5002, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 15
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_14_1350818088.873" 
    nqp_get_sc_object $P5002, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 16
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_15_1350818088.873" 
    nqp_get_sc_object $P5002, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 17
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_16_1350818088.873" 
    nqp_get_sc_object $P5002, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 18
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_17_1350818088.873" 
    nqp_get_sc_object $P5002, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 19
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_18_1350818088.873" 
    nqp_get_sc_object $P5002, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 20
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_19_1350818088.873" 
    nqp_get_sc_object $P5002, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 21
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_20_1350818088.873" 
    nqp_get_sc_object $P5002, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 22
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_21_1350818088.873" 
    nqp_get_sc_object $P5002, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 23
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_22_1350818088.873" 
    nqp_get_sc_object $P5002, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 24
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_23_1350818088.873" 
    nqp_get_sc_object $P5002, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 25
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_24_1350818088.873" 
    nqp_get_sc_object $P5002, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 26
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_25_1350818088.873" 
    nqp_get_sc_object $P5002, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 27
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_26_1350818088.873"
    nqp_get_sc_object $P5002, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 3
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_26_1350818088.873"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_26_1350818088.873"
    nqp_get_sc_object $P5002, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 3
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_26_1350818088.873"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1350818088.873"
    nqp_get_sc_object $P5002, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 28
    $P5001."set_static_lexpad_value"("NQPCursorRole", $P5002)
    .const "LexInfo" $P5003 = "cuid_1_1350818088.873"
    $P5003."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_27_1350818088.873" 
    nqp_get_sc_object $P5002, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 29
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_28_1350818088.873" 
    nqp_get_sc_object $P5002, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 30
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_29_1350818088.873" 
    nqp_get_sc_object $P5002, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 31
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_30_1350818088.873" 
    nqp_get_sc_object $P5002, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 32
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_31_1350818088.873" 
    nqp_get_sc_object $P5002, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 33
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_32_1350818088.873" 
    nqp_get_sc_object $P5002, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 34
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_33_1350818088.873" 
    nqp_get_sc_object $P5002, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 35
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_34_1350818088.873" 
    nqp_get_sc_object $P5002, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 36
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_35_1350818088.873" 
    nqp_get_sc_object $P5002, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 37
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_36_1350818088.873" 
    nqp_get_sc_object $P5002, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 38
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_37_1350818088.873" 
    nqp_get_sc_object $P5002, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 39
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_38_1350818088.873" 
    nqp_get_sc_object $P5002, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 40
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_39_1350818088.873" 
    nqp_get_sc_object $P5002, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 41
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_40_1350818088.873" 
    nqp_get_sc_object $P5002, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 42
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_41_1350818088.873" 
    nqp_get_sc_object $P5002, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 43
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_42_1350818088.873" 
    nqp_get_sc_object $P5002, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 44
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_43_1350818088.873" 
    nqp_get_sc_object $P5002, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 45
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_44_1350818088.873" 
    nqp_get_sc_object $P5002, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 46
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_45_1350818088.873" 
    nqp_get_sc_object $P5002, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 47
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_46_1350818088.873" 
    nqp_get_sc_object $P5002, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 48
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_47_1350818088.873" 
    nqp_get_sc_object $P5002, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 49
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_48_1350818088.873" 
    nqp_get_sc_object $P5002, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 50
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_49_1350818088.873" 
    nqp_get_sc_object $P5002, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 51
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_50_1350818088.873" 
    nqp_get_sc_object $P5002, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 52
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_51_1350818088.873" 
    nqp_get_sc_object $P5002, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 53
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_52_1350818088.873" 
    nqp_get_sc_object $P5002, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 54
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_53_1350818088.873" 
    nqp_get_sc_object $P5002, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 55
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_54_1350818088.873" 
    nqp_get_sc_object $P5002, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 56
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_55_1350818088.873" 
    nqp_get_sc_object $P5002, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 57
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_56_1350818088.873" 
    nqp_get_sc_object $P5002, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 58
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_57_1350818088.873" 
    nqp_get_sc_object $P5002, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 59
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_58_1350818088.873" 
    nqp_get_sc_object $P5002, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 60
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_59_1350818088.873" 
    nqp_get_sc_object $P5002, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 61
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_60_1350818088.873" 
    nqp_get_sc_object $P5002, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 62
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_61_1350818088.873" 
    nqp_get_sc_object $P5002, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 63
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_62_1350818088.873" 
    nqp_get_sc_object $P5002, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 64
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_63_1350818088.873" 
    nqp_get_sc_object $P5002, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 65
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_64_1350818088.873" 
    nqp_get_sc_object $P5002, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 66
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_65_1350818088.873" 
    nqp_get_sc_object $P5002, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 67
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_66_1350818088.873" 
    nqp_get_sc_object $P5002, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 68
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_67_1350818088.873" 
    nqp_get_sc_object $P5002, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 69
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_67_1350818088.873"
    nqp_get_sc_object $P5002, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 28
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_67_1350818088.873"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_67_1350818088.873"
    nqp_get_sc_object $P5002, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 28
    $P5001."set_static_lexpad_value"("$?ROLE", $P5002)
    .const "LexInfo" $P5003 = "cuid_67_1350818088.873"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1350818088.873"
    nqp_get_sc_object $P5002, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 70
    $P5001."set_static_lexpad_value"("NQPMatch", $P5002)
    .const "LexInfo" $P5003 = "cuid_1_1350818088.873"
    $P5003."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_68_1350818088.873" 
    nqp_get_sc_object $P5002, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 71
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_69_1350818088.873" 
    nqp_get_sc_object $P5002, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 72
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_70_1350818088.873" 
    nqp_get_sc_object $P5002, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 73
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_71_1350818088.873" 
    nqp_get_sc_object $P5002, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 74
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_72_1350818088.873" 
    nqp_get_sc_object $P5002, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 75
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_73_1350818088.873" 
    nqp_get_sc_object $P5002, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 76
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_74_1350818088.873" 
    nqp_get_sc_object $P5002, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 77
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_75_1350818088.873" 
    nqp_get_sc_object $P5002, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 78
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_76_1350818088.873" 
    nqp_get_sc_object $P5002, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 79
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_77_1350818088.873" 
    nqp_get_sc_object $P5002, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 80
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_78_1350818088.873" 
    nqp_get_sc_object $P5002, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 81
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_79_1350818088.873" 
    nqp_get_sc_object $P5002, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 82
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_80_1350818088.873"
    nqp_get_sc_object $P5002, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 70
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_80_1350818088.873"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_80_1350818088.873"
    nqp_get_sc_object $P5002, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 70
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_80_1350818088.873"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1350818088.873"
    nqp_get_sc_object $P5002, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 83
    $P5001."set_static_lexpad_value"("NQPCursor", $P5002)
    .const "LexInfo" $P5003 = "cuid_1_1350818088.873"
    $P5003."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_81_1350818088.873" 
    nqp_get_sc_object $P5002, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 84
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_82_1350818088.873" 
    nqp_get_sc_object $P5002, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 85
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_83_1350818088.873" 
    nqp_get_sc_object $P5002, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 86
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_84_1350818088.873" 
    nqp_get_sc_object $P5002, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 87
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_85_1350818088.873" 
    nqp_get_sc_object $P5002, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 88
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_86_1350818088.873"
    nqp_get_sc_object $P5002, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 83
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_86_1350818088.873"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_86_1350818088.873"
    nqp_get_sc_object $P5002, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 83
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_86_1350818088.873"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1350818088.873"
    nqp_get_sc_object $P5002, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 89
    $P5001."set_static_lexpad_value"("NQPRegexMethod", $P5002)
    .const "LexInfo" $P5003 = "cuid_1_1350818088.873"
    $P5003."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_97_1350818088.873" 
    nqp_get_sc_object $P5002, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 90
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_98_1350818088.873" 
    nqp_get_sc_object $P5002, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 91
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_99_1350818088.873" 
    nqp_get_sc_object $P5002, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 92
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_100_1350818088.873"
    nqp_get_sc_object $P5002, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 89
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_100_1350818088.873"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_100_1350818088.873"
    nqp_get_sc_object $P5002, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 89
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_100_1350818088.873"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1350818088.873"
    nqp_get_sc_object $P5002, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 93
    $P5001."set_static_lexpad_value"("NQPRegex", $P5002)
    .const "LexInfo" $P5003 = "cuid_1_1350818088.873"
    $P5003."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_101_1350818088.873" 
    nqp_get_sc_object $P5002, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 94
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_102_1350818088.873"
    nqp_get_sc_object $P5002, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 93
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_102_1350818088.873"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_102_1350818088.873"
    nqp_get_sc_object $P5002, "BA642C35E917B47150EDF16F09352BE4F2901C60-1350818088.888", 93
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_102_1350818088.873"
    $P5004 = $P5003."finish_static_lexpad"()
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_140_1350818088.873") :anon :lex :outer("cuid_141_1350818088.873")
.annotate 'file', "src\\stage2\\QRegex.nqp"
    new $P5001, 'ResizablePMCArray'
    .const 'Sub' $P5002 = "cuid_2_1350818088.873" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_3_1350818088.873" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_4_1350818088.873" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_5_1350818088.873" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_6_1350818088.873" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_7_1350818088.873" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_8_1350818088.873" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_9_1350818088.873" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_10_1350818088.873" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_11_1350818088.873" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_12_1350818088.873" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_13_1350818088.873" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_14_1350818088.873" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_15_1350818088.873" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_16_1350818088.873" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_17_1350818088.873" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_18_1350818088.873" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_19_1350818088.873" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_20_1350818088.873" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_21_1350818088.873" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_22_1350818088.873" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_23_1350818088.873" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_24_1350818088.873" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_25_1350818088.873" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_27_1350818088.873" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_28_1350818088.873" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_29_1350818088.873" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_30_1350818088.873" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_31_1350818088.873" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_32_1350818088.873" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_33_1350818088.873" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_34_1350818088.873" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_35_1350818088.873" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_36_1350818088.873" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_37_1350818088.873" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_38_1350818088.873" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_39_1350818088.873" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_40_1350818088.873" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_41_1350818088.873" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_42_1350818088.873" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_43_1350818088.873" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_44_1350818088.873" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_45_1350818088.873" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_46_1350818088.873" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_47_1350818088.873" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_48_1350818088.873" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_49_1350818088.873" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_50_1350818088.873" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_51_1350818088.873" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_52_1350818088.873" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_53_1350818088.873" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_54_1350818088.873" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_55_1350818088.873" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_56_1350818088.873" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_57_1350818088.873" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_58_1350818088.873" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_59_1350818088.873" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_60_1350818088.873" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_61_1350818088.873" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_62_1350818088.873" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_63_1350818088.873" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_64_1350818088.873" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_65_1350818088.873" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_66_1350818088.873" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_67_1350818088.873" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_68_1350818088.873" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_69_1350818088.873" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_70_1350818088.873" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_71_1350818088.873" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_72_1350818088.873" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_73_1350818088.873" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_74_1350818088.873" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_75_1350818088.873" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_76_1350818088.873" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_77_1350818088.873" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_78_1350818088.873" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_79_1350818088.873" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_81_1350818088.873" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_82_1350818088.873" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_83_1350818088.873" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_84_1350818088.873" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_85_1350818088.873" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_97_1350818088.873" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_98_1350818088.873" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_99_1350818088.873" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_101_1350818088.873" 
    push $P5001, $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_142_1350818088.873") :load
.annotate 'file', "src\\stage2\\QRegex.nqp"
    .const 'Sub' $P5001 = "cuid_1_1350818088.873" 
    $P5002 = $P5001()
    .return ($P5002) 
.end