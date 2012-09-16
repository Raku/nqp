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
.sub "" :subid("cuid_1_1347804141.46") :anon :lex
.annotate 'file', "src\\stage2\\QRegex.nqp"
    .param pmc _lex_param_0 :slurpy 
    .const 'Sub' $P5023 = 'cuid_25_1347804141.46' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_66_1347804141.46' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_79_1347804141.46' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_85_1347804141.46' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_99_1347804141.46' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_101_1347804141.46' 
    capture_lex $P5023 
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
    box $P5006, $I5001
    set $P5005, $P5006
    if $I5001 goto unless95_end232 
    can $I5002, ctxsave, "ctxsave"
    box $P5004, $I5002
    set $P5003, $P5004
    unless $I5002 goto if96_end234 
    $P5002 = ctxsave."ctxsave"()
    set $P5003, $P5002
  if96_end234:
    set $P5005, $P5003
  unless95_end232:
.annotate 'line', 1
    .const 'Sub' $P5007 = 'cuid_25_1347804141.46' 
    capture_lex $P5007
    $P5008 = $P5007()
    .const 'Sub' $P5009 = 'cuid_66_1347804141.46' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_79_1347804141.46' 
    capture_lex $P5010
    $P5011 = $P5010()
    .const 'Sub' $P5012 = 'cuid_85_1347804141.46' 
    capture_lex $P5012
    $P5013 = $P5012()
    .const 'Sub' $P5014 = 'cuid_99_1347804141.46' 
    capture_lex $P5014
    $P5015 = $P5014()
    .const 'Sub' $P5016 = 'cuid_101_1347804141.46' 
    capture_lex $P5016
    $P5017 = $P5016()
    set $P5022, _lex_param_0
    unless _lex_param_0 goto if282_end807 
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P5018, "ModuleLoader"
    getinterp $P5020
    set $P5019, $P5020["context"]
    $P5021 = $P5018."set_mainline_module"($P5019)
    set $P5022, $P5021
  if282_end807:
    .return () 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_25_1347804141.46") :anon :lex :outer("cuid_1_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 7
    .const 'Sub' $P5049 = 'cuid_2_1347804141.46' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_3_1347804141.46' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_4_1347804141.46' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_5_1347804141.46' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_6_1347804141.46' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_7_1347804141.46' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_8_1347804141.46' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_9_1347804141.46' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_10_1347804141.46' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_11_1347804141.46' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_12_1347804141.46' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_13_1347804141.46' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_14_1347804141.46' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_15_1347804141.46' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_16_1347804141.46' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_17_1347804141.46' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_18_1347804141.46' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_19_1347804141.46' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_20_1347804141.46' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_21_1347804141.46' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_22_1347804141.46' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_23_1347804141.46' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_24_1347804141.46' 
    capture_lex $P5049 
    .lex "%cclass_code", $P101 
    .lex "$?PACKAGE", $P102 
    .lex "$?CLASS", $P103 
    new $P5001, 'Hash'
    set $P101, $P5001
.annotate 'line', 75
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
    .const 'Sub' $P5026 = 'cuid_2_1347804141.46' 
    capture_lex $P5026
    .const 'Sub' $P5027 = 'cuid_3_1347804141.46' 
    capture_lex $P5027
    .const 'Sub' $P5028 = 'cuid_4_1347804141.46' 
    capture_lex $P5028
    .const 'Sub' $P5029 = 'cuid_5_1347804141.46' 
    capture_lex $P5029
    .const 'Sub' $P5030 = 'cuid_6_1347804141.46' 
    capture_lex $P5030
    .const 'Sub' $P5031 = 'cuid_7_1347804141.46' 
    capture_lex $P5031
    .const 'Sub' $P5032 = 'cuid_8_1347804141.46' 
    capture_lex $P5032
    .const 'Sub' $P5033 = 'cuid_9_1347804141.46' 
    capture_lex $P5033
    .const 'Sub' $P5034 = 'cuid_10_1347804141.46' 
    capture_lex $P5034
    .const 'Sub' $P5035 = 'cuid_11_1347804141.46' 
    capture_lex $P5035
    .const 'Sub' $P5036 = 'cuid_12_1347804141.46' 
    capture_lex $P5036
    .const 'Sub' $P5037 = 'cuid_13_1347804141.46' 
    capture_lex $P5037
    .const 'Sub' $P5038 = 'cuid_14_1347804141.46' 
    capture_lex $P5038
    .const 'Sub' $P5039 = 'cuid_15_1347804141.46' 
    capture_lex $P5039
    .const 'Sub' $P5040 = 'cuid_16_1347804141.46' 
    capture_lex $P5040
    .const 'Sub' $P5041 = 'cuid_17_1347804141.46' 
    capture_lex $P5041
    .const 'Sub' $P5042 = 'cuid_18_1347804141.46' 
    capture_lex $P5042
    .const 'Sub' $P5043 = 'cuid_19_1347804141.46' 
    capture_lex $P5043
    .const 'Sub' $P5044 = 'cuid_20_1347804141.46' 
    capture_lex $P5044
    .const 'Sub' $P5045 = 'cuid_21_1347804141.46' 
    capture_lex $P5045
    .const 'Sub' $P5046 = 'cuid_22_1347804141.46' 
    capture_lex $P5046
    .const 'Sub' $P5047 = 'cuid_23_1347804141.46' 
    capture_lex $P5047
    .const 'Sub' $P5048 = 'cuid_24_1347804141.46' 
    capture_lex $P5048
    .return ($P5048) 
.end
.HLL "nqp"
.namespace []
.sub "new" :subid("cuid_2_1347804141.46") :anon :lex :outer("cuid_25_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 21
    .param pmc _lex_param_0 
    .lex "$new", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P101, $P5001
.annotate 'line', 22
    nqp_decontainerize $P5002, _lex_param_0
    new $P5003, 'ResizablePMCArray'
    new $P5004, 'ResizablePMCArray'
    $P5005 = $P5002."bless"($P5003 :named("states"), $P5004 :named("edges"))
    set $P101, $P5005
.annotate 'line', 23
    $P5006 = $P101."addstate"()
.annotate 'line', 24
    $P5007 = $P101."addstate"()
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "addstate" :subid("cuid_3_1347804141.46") :anon :lex :outer("cuid_25_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 28
    .param pmc _lex_param_0 
    .lex "$id", $I101 
    .lex "self", _lex_param_0 
    set $I101, 0
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 3
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!states"
    set $N5001, $P5003
    set $I5001, $N5001
    set $I101, $I5001
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 3
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!states"
    new $P5007, 'ResizablePMCArray'
    set $P5006[$I101], $P5007
    .return ($I101) 
.end
.HLL "nqp"
.namespace []
.sub "addedge" :subid("cuid_4_1347804141.46") :anon :lex :outer("cuid_25_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 34
    .param pmc _lex_param_0 
    .param int _lex_param_1 
    .param int _lex_param_2 
    .param pmc _lex_param_3 
    .param pmc _lex_param_4 
    .param pmc _lex_param_5 :named("newedge") :optional 
    .param int haz_param_7 :opt_flag 
    if haz_param_7, default240
    box $P5014, 1
    set _lex_param_5, $P5014
  default240:
    .lex "$st", $P101 
    .lex "self", _lex_param_0 
    .lex "$from", _lex_param_1 
    .lex "$to", _lex_param_2 
    .lex "$action", _lex_param_3 
    .lex "$value", _lex_param_4 
    .lex "$newedge", _lex_param_5 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P101, $P5001
    set $P5005, _lex_param_5
    unless _lex_param_5 goto if97_end236 
    nqp_decontainerize $P5002, _lex_param_0
    nqp_get_sc_object $P5003, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 3
    box $P5004, 1
    repr_bind_attr_obj $P5002, $P5003, "$!edges", $P5004
    set $P5005, $P5004
  if97_end236:
    set $N5001, _lex_param_2
    set $N5002, 0
    islt $I5001, $N5001, $N5002
    set $I5003, $I5001
    unless $I5001 goto if98_end238 
.annotate 'line', 36
    nqp_decontainerize $P5006, _lex_param_0
    $P5007 = $P5006."addstate"()
    set $I5002, $P5007
    set _lex_param_2, $I5002
    set $I5003, _lex_param_2
  if98_end238:
    nqp_decontainerize $P5009, _lex_param_0
    nqp_get_sc_object $P5010, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 3
    repr_get_attr_obj $P5011, $P5009, $P5010, "$!states"
    set $P5008, $P5011[_lex_param_1]
    unless_null $P5008, fallback239
    nqp_get_sc_object $P5012, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5008, $P5012
  fallback239:
    set $P101, $P5008
    push $P101, _lex_param_3
    push $P101, _lex_param_4
    box $P5013, _lex_param_2
    push $P101, $P5013
    .return (_lex_param_2) 
.end
.HLL "nqp"
.namespace []
.sub "states" :subid("cuid_5_1347804141.46") :anon :lex :outer("cuid_25_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 44
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 3
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!states"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "addnode" :subid("cuid_6_1347804141.46") :anon :lex :outer("cuid_25_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 46
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
.annotate 'line', 47
    nqp_decontainerize $P5001, _lex_param_0
    $P5002 = $P5001."regex_nfa"(_lex_param_1, 1, 0)
    nqp_decontainerize $P5003, _lex_param_0
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "regex_nfa" :subid("cuid_7_1347804141.46") :anon :lex :outer("cuid_25_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 51
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param int _lex_param_2 
    .param int _lex_param_3 
    .lex "$method", $P101 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$from", _lex_param_2 
    .lex "$to", _lex_param_3 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P101, $P5001
.annotate 'line', 52
    $P5003 = _lex_param_1."rxtype"()
    set $P5002, $P5003
    defined $I5001, $P5002
    if $I5001, defor241
    box $P5004, "concat"
    set $P5002, $P5004
  defor241:
    set $P101, $P5002
.annotate 'line', 53
    nqp_decontainerize $P5006, _lex_param_0
    get_how $P5005, $P5006
    nqp_decontainerize $P5007, _lex_param_0
    $P5008 = $P5005."can"($P5007, $P101)
    unless $P5008 goto if99_else242 
.annotate 'line', 54
    nqp_decontainerize $P5009, _lex_param_0
    set $S5001, $P101
    $P5010 = $P5009.$S5001(_lex_param_1, _lex_param_2, _lex_param_3)
    set $P5013, $P5010
    goto if99_end243
  if99_else242:
.annotate 'line', 55
    nqp_decontainerize $P5011, _lex_param_0
    $P5012 = $P5011."fate"(_lex_param_1, _lex_param_2, _lex_param_3)
    set $P5013, $P5012
  if99_end243:
    .return ($P5013) 
.end
.HLL "nqp"
.namespace []
.sub "fate" :subid("cuid_8_1347804141.46") :anon :lex :outer("cuid_25_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 58
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param int _lex_param_2 
    .param int _lex_param_3 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$from", _lex_param_2 
    .lex "$to", _lex_param_3 
.annotate 'line', 59
    nqp_decontainerize $P5001, _lex_param_0
    find_lex $P5004, "$?PACKAGE"
    get_who $P5003, $P5004
    set $P5002, $P5003["$EDGE_FATE"]
    unless_null $P5002, fallback244
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5002, $P5005
  fallback244:
    $P5006 = $P5001."addedge"(_lex_param_2, 0, $P5002, 0, 0 :named("newedge"))
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "alt" :subid("cuid_9_1347804141.46") :anon :lex :outer("cuid_25_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 62
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param int _lex_param_2 
    .param int _lex_param_3 
    .const 'Sub' $P5007 = 'cuid_102_1347804141.46' 
    capture_lex $P5007 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$from", _lex_param_2 
    .lex "$to", _lex_param_3 
.annotate 'line', 63
    $P5004 = _lex_param_1."list"()
    set $P5001, $P5004
    iter $P5003, $P5004
  for_next249:
    unless $P5003, for_done251
    shift $P5006, $P5003
  for_redo250:
    .const 'Sub' $P5005 = 'cuid_102_1347804141.46' 
    capture_lex $P5005
    $P5001 = $P5005($P5006)
    goto for_next249
  for_done251:
    .return (_lex_param_3) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_102_1347804141.46") :anon :lex :outer("cuid_9_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 63
    .param pmc _lex_param_0 
    .lex "$st", $I101 
    .lex "$_", _lex_param_0 
    set $I101, 0
.annotate 'line', 64
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
    unless $I5004 goto if101_end248 
    set $N5003, $I101
    set $N5004, 0
    isgt $I5006, $N5003, $N5004
    set $I5007, $I5006
  if101_end248:
    set $I5008, $I5007
    unless $I5007 goto if100_end246 
    store_lex "$to", $I101
    set $I5008, $I101
  if100_end246:
    .return ($I5008) 
.end
.HLL "nqp"
.namespace []
.sub "anchor" :subid("cuid_10_1347804141.46") :anon :lex :outer("cuid_25_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 70
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param int _lex_param_2 
    .param int _lex_param_3 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$from", _lex_param_2 
    .lex "$to", _lex_param_3 
.annotate 'line', 71
    nqp_decontainerize $P5001, _lex_param_0
    find_lex $P5004, "$?PACKAGE"
    get_who $P5003, $P5004
    set $P5002, $P5003["$EDGE_EPSILON"]
    unless_null $P5002, fallback252
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5002, $P5005
  fallback252:
    $P5006 = $P5001."addedge"(_lex_param_2, _lex_param_3, $P5002, 0)
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "cclass" :subid("cuid_11_1347804141.46") :anon :lex :outer("cuid_25_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 84
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param int _lex_param_2 
    .param int _lex_param_3 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$from", _lex_param_2 
    .lex "$to", _lex_param_3 
.annotate 'line', 85
    nqp_decontainerize $P5001, _lex_param_0
    find_lex $P5004, "$?PACKAGE"
    get_who $P5003, $P5004
    set $P5002, $P5003["$EDGE_CHARCLASS"]
    unless_null $P5002, fallback253
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5002, $P5005
  fallback253:
    set $N5002, $P5002
    $P5006 = _lex_param_1."negate"()
    istrue $I5001, $P5006
    set $N5003, $I5001
    add $N5001, $N5002, $N5003
    find_lex $P5008, "%cclass_code"
.annotate 'line', 86
    $P5009 = _lex_param_1."subtype"()
    set $S5002, $P5009
    downcase $S5001, $S5002
    set $P5007, $P5008[$S5001]
    unless_null $P5007, fallback254
    nqp_get_sc_object $P5010, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5007, $P5010
  fallback254:
    $P5011 = $P5001."addedge"(_lex_param_2, _lex_param_3, $N5001, $P5007)
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "concat" :subid("cuid_12_1347804141.46") :anon :lex :outer("cuid_25_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 89
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
.annotate 'line', 91
    $P5001 = _lex_param_1."list"()
    set $N5002, $P5001
    set $N5003, 1
    sub $N5001, $N5002, $N5003
    set $I5001, $N5001
    set $I102, $I5001
  while102_test255:
    set $N5004, _lex_param_2
    set $N5005, 0
    isgt $I5002, $N5004, $N5005
    set $I5004, $I5002
    unless $I5002 goto if103_end261 
    set $N5006, $I101
    set $N5007, $I102
    islt $I5003, $N5006, $N5007
    set $I5004, $I5003
  if103_end261:
    set $I5007, $I5004
    unless $I5004 goto while102_done259 
  while102_redo257:
.annotate 'line', 92
.annotate 'line', 93
    nqp_decontainerize $P5002, _lex_param_0
    set $P5003, _lex_param_1[$I101]
    unless_null $P5003, fallback262
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5003, $P5004
  fallback262:
    $P5005 = $P5002."regex_nfa"($P5003, _lex_param_2, -1)
    set $I5005, $P5005
    set _lex_param_2, $I5005
    set $N5009, $I101
    set $N5010, 1
    add $N5008, $N5009, $N5010
    set $I5006, $N5008
    set $I101, $I5006
    set $I5007, $I101
    goto while102_test255 
  while102_done259:
    set $N5011, _lex_param_2
    set $N5012, 0
    isgt $I5008, $N5011, $N5012
    set $I5010, $I5008
    unless $I5008 goto if105_end266 
    set $N5013, $I102
    set $N5014, 0
    isge $I5009, $N5013, $N5014
    set $I5010, $I5009
  if105_end266:
    unless $I5010 goto if104_else263 
.annotate 'line', 96
    nqp_decontainerize $P5006, _lex_param_0
    set $P5007, _lex_param_1[$I101]
    unless_null $P5007, fallback267
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5007, $P5008
  fallback267:
    $P5009 = $P5006."regex_nfa"($P5007, _lex_param_2, _lex_param_3)
    set $P5010, $P5009
    goto if104_end264
  if104_else263:
    box $P5011, _lex_param_3
    set $P5010, $P5011
  if104_end264:
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "enumcharlist" :subid("cuid_13_1347804141.46") :anon :lex :outer("cuid_25_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 99
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param int _lex_param_2 
    .param int _lex_param_3 
    .lex "$charlist", $P101 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$from", _lex_param_2 
    .lex "$to", _lex_param_3 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P101, $P5001
    set $P5002, _lex_param_1[0]
    unless_null $P5002, fallback268
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5002, $P5003
  fallback268:
    set $P101, $P5002
.annotate 'line', 101
    $P5004 = _lex_param_1."subtype"()
    set $S5001, $P5004
    iseq $I5001, $S5001, "zerowidth"
    unless $I5001 goto if106_else269 
.annotate 'line', 102
    nqp_decontainerize $P5005, _lex_param_0
    find_lex $P5008, "$?PACKAGE"
    get_who $P5007, $P5008
    set $P5006, $P5007["$EDGE_CHARLIST"]
    unless_null $P5006, fallback271
    nqp_get_sc_object $P5009, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5006, $P5009
  fallback271:
    set $N5002, $P5006
    $P5010 = _lex_param_1."negate"()
    istrue $I5002, $P5010
    set $N5003, $I5002
    add $N5001, $N5002, $N5003
    $P5011 = $P5005."addedge"(_lex_param_2, -1, $N5001, $P101)
    set $I5003, $P5011
    set _lex_param_2, $I5003
.annotate 'line', 103
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5015, "$?PACKAGE"
    get_who $P5014, $P5015
    set $P5013, $P5014["$EDGE_FATE"]
    unless_null $P5013, fallback272
    nqp_get_sc_object $P5016, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5013, $P5016
  fallback272:
    $P5017 = $P5012."addedge"(_lex_param_2, 0, $P5013, 0)
    set $P5025, $P5017
    goto if106_end270
  if106_else269:
.annotate 'line', 105
.annotate 'line', 106
    nqp_decontainerize $P5018, _lex_param_0
    find_lex $P5021, "$?PACKAGE"
    get_who $P5020, $P5021
    set $P5019, $P5020["$EDGE_CHARLIST"]
    unless_null $P5019, fallback273
    nqp_get_sc_object $P5022, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5019, $P5022
  fallback273:
    set $N5005, $P5019
    $P5023 = _lex_param_1."negate"()
    istrue $I5004, $P5023
    set $N5006, $I5004
    add $N5004, $N5005, $N5006
    $P5024 = $P5018."addedge"(_lex_param_2, _lex_param_3, $N5004, $P101)
    set $P5025, $P5024
  if106_end270:
    .return ($P5025) 
.end
.HLL "nqp"
.namespace []
.sub "literal" :subid("cuid_14_1347804141.46") :anon :lex :outer("cuid_25_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 110
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param int _lex_param_2 
    .param int _lex_param_3 
    .lex "$litconst", $S101 
    .lex "$litlen", $I101 
    .lex "$i", $I102 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$from", _lex_param_2 
    .lex "$to", _lex_param_3 
    set $S101, ""
    set $I101, 0
    set $I102, 0
    set $P5001, _lex_param_1[0]
    unless_null $P5001, fallback274
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5001, $P5002
  fallback274:
    set $S5001, $P5001
    set $S101, $S5001
    length $I5001, $S101
    set $N5002, $I5001
    set $N5003, 1
    sub $N5001, $N5002, $N5003
    set $I5002, $N5001
    set $I101, $I5002
    set $I102, 0
    set $N5004, $I101
    set $N5005, 0
    isge $I5003, $N5004, $N5005
    unless $I5003 goto if107_else275 
.annotate 'line', 114
  while108_test277:
    set $N5006, $I102
    set $N5007, $I101
    islt $I5004, $N5006, $N5007
    set $I5008, $I5004
    unless $I5004 goto while108_done281 
  while108_redo279:
.annotate 'line', 115
.annotate 'line', 116
    nqp_decontainerize $P5003, _lex_param_0
    find_lex $P5006, "$?PACKAGE"
    get_who $P5005, $P5006
    set $P5004, $P5005["$EDGE_CODEPOINT"]
    unless_null $P5004, fallback282
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5004, $P5007
  fallback282:
    ord $I5005, $S101, $I102
    $P5008 = $P5003."addedge"(_lex_param_2, -1, $P5004, $I5005)
    set $I5006, $P5008
    set _lex_param_2, $I5006
    set $N5009, $I102
    set $N5010, 1
    add $N5008, $N5009, $N5010
    set $I5007, $N5008
    set $I102, $I5007
    set $I5008, $I102
    goto while108_test277 
  while108_done281:
.annotate 'line', 119
    nqp_decontainerize $P5009, _lex_param_0
    find_lex $P5012, "$?PACKAGE"
    get_who $P5011, $P5012
    set $P5010, $P5011["$EDGE_CODEPOINT"]
    unless_null $P5010, fallback283
    nqp_get_sc_object $P5013, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5010, $P5013
  fallback283:
    ord $I5009, $S101, $I102
    $P5014 = $P5009."addedge"(_lex_param_2, _lex_param_3, $P5010, $I5009)
    set $P5021, $P5014
    goto if107_end276
  if107_else275:
.annotate 'line', 121
.annotate 'line', 122
    nqp_decontainerize $P5015, _lex_param_0
    find_lex $P5018, "$?PACKAGE"
    get_who $P5017, $P5018
    set $P5016, $P5017["$EDGE_EPSILON"]
    unless_null $P5016, fallback284
    nqp_get_sc_object $P5019, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5016, $P5019
  fallback284:
    $P5020 = $P5015."addedge"(_lex_param_2, _lex_param_3, $P5016, 0)
    set $P5021, $P5020
  if107_end276:
    .return ($P5021) 
.end
.HLL "nqp"
.namespace []
.sub "subrule" :subid("cuid_15_1347804141.46") :anon :lex :outer("cuid_25_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 126
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param int _lex_param_2 
    .param int _lex_param_3 
    .const 'Sub' $P5070 = 'cuid_103_1347804141.46' 
    capture_lex $P5070 
    .const 'Sub' $P5070 = 'cuid_104_1347804141.46' 
    capture_lex $P5070 
    .lex "$subtype", $P101 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$from", _lex_param_2 
    .lex "$to", _lex_param_3 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P101, $P5001
.annotate 'line', 127
    $P5002 = _lex_param_1."subtype"()
    set $P101, $P5002
.annotate 'line', 128
    $P5003 = _lex_param_1."name"()
    set $S5001, $P5003
    iseq $I5001, $S5001, "before"
    set $I5003, $I5001
    unless $I5001 goto if110_end288 
    $P5004 = _lex_param_1."negate"()
    isfalse $I5002, $P5004
    set $I5003, $I5002
  if110_end288:
    unless $I5003 goto if109_else285 
    .const 'Sub' $P5005 = 'cuid_103_1347804141.46' 
    capture_lex $P5005
    $P5006 = $P5005()
    set $P5069, $P5006
    goto if109_end286
  if109_else285:
    set $S5002, $P101
    isne $I5004, $S5002, "zerowidth"
    set $I5010, $I5004
    unless $I5004 goto if112_end295 
.annotate 'line', 134
    $P5007 = _lex_param_1."name"()
    set $S5003, $P5007
    iseq $I5005, $S5003, "alpha"
    set $I5009, $I5005
    if $I5005 goto unless113_end297 
    set $S5004, $P101
    iseq $I5006, $S5004, "method"
    set $I5008, $I5006
    unless $I5006 goto if114_end299 
.annotate 'line', 136
    nqp_get_sc_object $P5011, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 0
    nqp_get_package_through_who $P5010, $P5011, "QAST"
    get_who $P5009, $P5010
    set $P5008, $P5009["SVal"]
    unless_null $P5008, fallback302
    nqp_get_sc_object $P5012, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5008, $P5012
  fallback302:
    set $P5014, _lex_param_1[0]
    unless_null $P5014, fallback303
    nqp_get_sc_object $P5015, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5014, $P5015
  fallback303:
    set $P5013, $P5014[0]
    unless_null $P5013, fallback304
    nqp_get_sc_object $P5016, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5013, $P5016
  fallback304:
    $P5017 = $P5008."ACCEPTS"($P5013)
    unless $P5017 goto if115_else300 
    set $P5019, _lex_param_1[0]
    unless_null $P5019, fallback305
    nqp_get_sc_object $P5020, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5019, $P5020
  fallback305:
    set $P5018, $P5019[0]
    unless_null $P5018, fallback306
    nqp_get_sc_object $P5021, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5018, $P5021
  fallback306:
    $P5022 = $P5018."value"()
    set $P5027, $P5022
    goto if115_end301
  if115_else300:
    set $P5024, _lex_param_1[0]
    unless_null $P5024, fallback307
    nqp_get_sc_object $P5025, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5024, $P5025
  fallback307:
    set $P5023, $P5024[0]
    unless_null $P5023, fallback308
    nqp_get_sc_object $P5026, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5023, $P5026
  fallback308:
    set $P5027, $P5023
  if115_end301:
    set $S5005, $P5027
    iseq $I5007, $S5005, "alpha"
    set $I5008, $I5007
  if114_end299:
    set $I5009, $I5008
  unless113_end297:
    set $I5010, $I5009
  if112_end295:
    unless $I5010 goto if111_else292 
.annotate 'line', 137
    nqp_decontainerize $P5028, _lex_param_0
    find_lex $P5031, "$?PACKAGE"
    get_who $P5030, $P5031
    set $P5029, $P5030["$EDGE_CHARCLASS"]
    unless_null $P5029, fallback309
    nqp_get_sc_object $P5032, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5029, $P5032
  fallback309:
    set $N5002, $P5029
    $P5033 = _lex_param_1."negate"()
    set $N5003, $P5033
    add $N5001, $N5002, $N5003
    $P5034 = $P5028."addedge"(_lex_param_2, _lex_param_3, $N5001, .CCLASS_ALPHABETIC)
    set $I5011, $P5034
    set _lex_param_3, $I5011
.annotate 'line', 139
    nqp_decontainerize $P5035, _lex_param_0
    find_lex $P5038, "$?PACKAGE"
    get_who $P5037, $P5038
    set $P5036, $P5037["$EDGE_CODEPOINT"]
    unless_null $P5036, fallback310
    nqp_get_sc_object $P5039, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5036, $P5039
  fallback310:
    set $N5005, $P5036
    $P5040 = _lex_param_1."negate"()
    set $N5006, $P5040
    add $N5004, $N5005, $N5006
    $P5041 = $P5035."addedge"(_lex_param_2, _lex_param_3, $N5004, 95)
    set $P5068, $P5041
    goto if111_end293
  if111_else292:
    set $S5006, $P101
    iseq $I5012, $S5006, "zerowidth"
    unless $I5012 goto if116_else311 
.annotate 'line', 141
.annotate 'line', 142
    $P5042 = _lex_param_1."negate"()
    unless $P5042 goto if117_else313 
.annotate 'line', 143
    nqp_decontainerize $P5043, _lex_param_0
    $P5044 = $P5043."fate"(_lex_param_1, _lex_param_2, _lex_param_3)
    set $P5047, $P5044
    goto if117_end314
  if117_else313:
    .const 'Sub' $P5045 = 'cuid_104_1347804141.46' 
    capture_lex $P5045
    $P5046 = $P5045()
    set $P5047, $P5046
  if117_end314:
    set $P5067, $P5047
    goto if116_end312
  if116_else311:
.annotate 'line', 151
    set $S5007, $P101
    iseq $I5013, $S5007, "capture"
    box $P5051, $I5013
    set $P5050, $P5051
    unless $I5013 goto if119_end319 
    set $P5048, _lex_param_1[1]
    unless_null $P5048, fallback320
    nqp_get_sc_object $P5049, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5048, $P5049
  fallback320:
    set $P5050, $P5048
  if119_end319:
    unless $P5050 goto if118_else316 
.annotate 'line', 153
    nqp_decontainerize $P5052, _lex_param_0
    set $P5053, _lex_param_1[1]
    unless_null $P5053, fallback321
    nqp_get_sc_object $P5054, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5053, $P5054
  fallback321:
    $P5055 = $P5052."regex_nfa"($P5053, _lex_param_2, _lex_param_3)
    set $P5066, $P5055
    goto if118_end317
  if118_else316:
.annotate 'line', 154
    nqp_decontainerize $P5056, _lex_param_0
    find_lex $P5059, "$?PACKAGE"
    get_who $P5058, $P5059
    set $P5057, $P5058["$EDGE_SUBRULE"]
    unless_null $P5057, fallback322
    nqp_get_sc_object $P5060, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5057, $P5060
  fallback322:
    set $P5062, _lex_param_1[0]
    unless_null $P5062, fallback323
    nqp_get_sc_object $P5063, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5062, $P5063
  fallback323:
    set $P5061, $P5062[0]
    unless_null $P5061, fallback324
    nqp_get_sc_object $P5064, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5061, $P5064
  fallback324:
    $P5065 = $P5056."addedge"(_lex_param_2, _lex_param_3, $P5057, $P5061)
    set $P5066, $P5065
  if118_end317:
    set $P5067, $P5066
  if116_end312:
    set $P5068, $P5067
  if111_end293:
    set $P5069, $P5068
  if109_end286:
    .return ($P5069) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_103_1347804141.46") :anon :lex :outer("cuid_15_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 128
    .lex "$end", $I101 
    set $I101, 0
.annotate 'line', 129
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    $P5003 = $P5001."addstate"()
    set $I5001, $P5003
    set $I101, $I5001
.annotate 'line', 130
    find_lex $P5005, "self"
    nqp_decontainerize $P5004, $P5005
    find_lex $P5009, "$node"
    set $P5008, $P5009[0]
    unless_null $P5008, fallback289
    nqp_get_sc_object $P5010, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5008, $P5010
  fallback289:
    set $P5007, $P5008[1]
    unless_null $P5007, fallback290
    nqp_get_sc_object $P5011, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5007, $P5011
  fallback290:
    set $P5006, $P5007["orig_qast"]
    unless_null $P5006, fallback291
    nqp_get_sc_object $P5012, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5006, $P5012
  fallback291:
    find_lex $I5002, "$from"
    $P5013 = $P5004."regex_nfa"($P5006, $I5002, $I101)
.annotate 'line', 131
    find_lex $P5015, "self"
    nqp_decontainerize $P5014, $P5015
    find_lex $P5016, "$node"
    find_lex $I5003, "$to"
    $P5017 = $P5014."fate"($P5016, $I101, $I5003)
    .return ($P5017) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_104_1347804141.46") :anon :lex :outer("cuid_15_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 145
    .lex "$end", $I101 
    set $I101, 0
.annotate 'line', 146
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    $P5003 = $P5001."addstate"()
    set $I5001, $P5003
    set $I101, $I5001
.annotate 'line', 147
    find_lex $P5005, "self"
    nqp_decontainerize $P5004, $P5005
    find_lex $I5002, "$from"
    find_lex $P5008, "$?PACKAGE"
    get_who $P5007, $P5008
    set $P5006, $P5007["$EDGE_SUBRULE"]
    unless_null $P5006, fallback315
    nqp_get_sc_object $P5009, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5006, $P5009
  fallback315:
    find_lex $P5010, "$node"
    $P5011 = $P5010."name"()
    $P5012 = $P5004."addedge"($I5002, $I101, $P5006, $P5011)
.annotate 'line', 148
    find_lex $P5014, "self"
    nqp_decontainerize $P5013, $P5014
    find_lex $P5015, "$node"
    find_lex $I5003, "$to"
    $P5016 = $P5013."fate"($P5015, $I101, $I5003)
    .return ($P5016) 
.end
.HLL "nqp"
.namespace []
.sub "quant" :subid("cuid_16_1347804141.46") :anon :lex :outer("cuid_25_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 158
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param int _lex_param_2 
    .param int _lex_param_3 
    .const 'Sub' $P5028 = 'cuid_106_1347804141.46' 
    capture_lex $P5028 
    .const 'Sub' $P5028 = 'cuid_108_1347804141.46' 
    capture_lex $P5028 
    .const 'Sub' $P5028 = 'cuid_109_1347804141.46' 
    capture_lex $P5028 
    .const 'Sub' $P5028 = 'cuid_110_1347804141.46' 
    capture_lex $P5028 
    .const 'Sub' $P5028 = 'cuid_111_1347804141.46' 
    capture_lex $P5028 
    .lex "$min", $I101 
    .lex "$max", $I102 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$from", _lex_param_2 
    .lex "$to", _lex_param_3 
    set $I101, 0
    set $I102, 0
    root_new $P101, ['parrot';'Continuation']
    set_label $P101, lexotic_325
    .lex "RETURN", $P101
    set $N5002, 0
.annotate 'line', 159
    $P5002 = _lex_param_1."min"()
    set $P5001, $P5002
    defined $I5001, $P5001
    if $I5001, defor327
    box $P5003, 0
    set $P5001, $P5003
  defor327:
    set $N5003, $P5001
    add $N5001, $N5002, $N5003
    set $I5002, $N5001
    set $I101, $I5002
    set $N5005, 0
.annotate 'line', 160
    $P5005 = _lex_param_1."max"()
    set $P5004, $P5005
    defined $I5003, $P5004
    if $I5003, defor328
    box $P5006, -1
    set $P5004, $P5006
  defor328:
    set $N5006, $P5004
    add $N5004, $N5005, $N5006
    set $I5004, $N5004
    set $I102, $I5004
    set $N5007, $I102
    set $N5008, 1
    isgt $I5005, $N5007, $N5008
    set $I5007, $I5005
    if $I5005 goto unless121_end332 
    set $N5009, $I101
    set $N5010, 1
    isgt $I5006, $N5009, $N5010
    set $I5007, $I5006
  unless121_end332:
    box $P5010, $I5007
    set $P5009, $P5010
    unless $I5007 goto if120_end330 
    .const 'Sub' $P5007 = 'cuid_106_1347804141.46' 
    capture_lex $P5007
    $P5008 = $P5007()
    set $P5009, $P5008
  if120_end330:
    set $N5011, $I102
    set $N5012, -1
    iseq $I5008, $N5011, $N5012
    unless $I5008 goto if133_else368 
.annotate 'line', 193
    set $N5013, $I101
    set $N5014, 0
    iseq $I5009, $N5013, $N5014
    unless $I5009 goto if134_else370 
.annotate 'line', 194
    set $P5011, _lex_param_1[1]
    unless_null $P5011, fallback374
    nqp_get_sc_object $P5012, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5011, $P5012
  fallback374:
    defined $I5010, $P5011
    unless $I5010 goto if135_else372 
    .const 'Sub' $P5013 = 'cuid_108_1347804141.46' 
    capture_lex $P5013
    $P5014 = $P5013()
    set $P5017, $P5014
    goto if135_end373
  if135_else372:
    .const 'Sub' $P5015 = 'cuid_109_1347804141.46' 
    capture_lex $P5015
    $P5016 = $P5015()
    set $P5017, $P5016
  if135_end373:
    set $P5020, $P5017
    goto if134_end371
  if134_else370:
    .const 'Sub' $P5018 = 'cuid_110_1347804141.46' 
    capture_lex $P5018
    $P5019 = $P5018()
    set $P5020, $P5019
  if134_end371:
    box $P5027, _lex_param_3
    set $P5026, $P5027
    goto if133_end369
  if133_else368:
    set $N5015, $I101
    set $N5016, 0
    iseq $I5011, $N5015, $N5016
    set $I5013, $I5011
    unless $I5011 goto if144_end405 
    set $N5017, $I102
    set $N5018, 1
    iseq $I5012, $N5017, $N5018
    set $I5013, $I5012
  if144_end405:
    unless $I5013 goto if143_else402 
    .const 'Sub' $P5021 = 'cuid_111_1347804141.46' 
    capture_lex $P5021
    $P5022 = $P5021()
    set $P5025, $P5022
    goto if143_end403
  if143_else402:
.annotate 'line', 231
.annotate 'line', 232
    nqp_decontainerize $P5023, _lex_param_0
    $P5024 = $P5023."fate"(_lex_param_1, _lex_param_2, _lex_param_3)
    set $P5025, $P5024
  if143_end403:
    set $P5026, $P5025
  if133_end369:
    goto lexotic_326
  lexotic_325:
    .get_results ($P5026)
  lexotic_326:
    .return ($P5026) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_106_1347804141.46") :anon :lex :outer("cuid_16_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 162
    .const 'Sub' $P5033 = 'cuid_105_1347804141.46' 
    capture_lex $P5033 
    .const 'Sub' $P5033 = 'cuid_107_1347804141.46' 
    capture_lex $P5033 
    .lex "$count", $I101 
    .lex "$st", $I102 
    .lex "$has_sep", $I103 
    set $I101, 0
    set $I102, 0
    set $I103, 0
    set $I101, 0
    find_lex $P5002, "$node"
    set $P5001, $P5002[1]
    unless_null $P5001, fallback333
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5001, $P5003
  fallback333:
    defined $I5001, $P5001
    set $I103, $I5001
  while122_test334:
    set $N5001, $I101
    find_lex $I5003, "$max"
    set $N5002, $I5003
    islt $I5002, $N5001, $N5002
    set $I5006, $I5002
    if $I5002 goto unless123_end340 
    set $N5003, $I101
    find_lex $I5005, "$min"
    set $N5004, $I5005
    islt $I5004, $N5003, $N5004
    set $I5006, $I5004
  unless123_end340:
    set $I5017, $I5006
    unless $I5006 goto while122_done338 
  while122_redo336:
.annotate 'line', 166
    set $N5005, $I101
    find_lex $I5008, "$min"
    set $N5006, $I5008
    isge $I5007, $N5005, $N5006
    box $P5007, $I5007
    set $P5006, $P5007
    unless $I5007 goto if124_end342 
    .const 'Sub' $P5004 = 'cuid_105_1347804141.46' 
    capture_lex $P5004
    $P5005 = $P5004()
    set $P5006, $P5005
  if124_end342:
    set $I5010, $I103
    unless $I103 goto if127_end349 
    set $N5007, $I101
    set $N5008, 0
    isgt $I5009, $N5007, $N5008
    set $I5010, $I5009
  if127_end349:
    set $I5013, $I5010
    unless $I5010 goto if126_end347 
.annotate 'line', 171
.annotate 'line', 172
    find_lex $P5009, "self"
    nqp_decontainerize $P5008, $P5009
    find_lex $P5011, "$node"
    set $P5010, $P5011[1]
    unless_null $P5010, fallback350
    nqp_get_sc_object $P5012, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5010, $P5012
  fallback350:
    find_lex $I5011, "$from"
    $P5013 = $P5008."regex_nfa"($P5010, $I5011, -1)
    set $I5012, $P5013
    store_lex "$from", $I5012
    set $I5013, $I5012
  if126_end347:
.annotate 'line', 174
    find_lex $P5015, "self"
    nqp_decontainerize $P5014, $P5015
    find_lex $P5017, "$node"
    set $P5016, $P5017[0]
    unless_null $P5016, fallback351
    nqp_get_sc_object $P5018, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5016, $P5018
  fallback351:
    find_lex $I5014, "$from"
    $P5019 = $P5014."regex_nfa"($P5016, $I5014, -1)
    set $I5015, $P5019
    store_lex "$from", $I5015
    set $N5010, $I101
    set $N5011, 1
    add $N5009, $N5010, $N5011
    set $I5016, $N5009
    set $I101, $I5016
    set $I5017, $I101
    goto while122_test334 
  while122_done338:
.annotate 'line', 177
    find_lex $P5021, "self"
    nqp_decontainerize $P5020, $P5021
    find_lex $I5018, "$from"
    find_lex $I5019, "$to"
    find_lex $P5024, "$?PACKAGE"
    get_who $P5023, $P5024
    set $P5022, $P5023["$EDGE_EPSILON"]
    unless_null $P5022, fallback352
    nqp_get_sc_object $P5025, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5022, $P5025
  fallback352:
    $P5026 = $P5020."addedge"($I5018, $I5019, $P5022, 0)
    find_lex $I5021, "$max"
    set $N5012, $I5021
    set $N5013, -1
    iseq $I5020, $N5012, $N5013
    box $P5030, $I5020
    set $P5029, $P5030
    unless $I5020 goto if128_end354 
    .const 'Sub' $P5027 = 'cuid_107_1347804141.46' 
    capture_lex $P5027
    $P5028 = $P5027()
    set $P5029, $P5028
  if128_end354:
    find_lex $I5023, "$to"
    set $N5014, $I5023
    set $N5015, 0
    islt $I5022, $N5014, $N5015
    set $I5025, $I5022
    unless $I5022 goto if132_end367 
    set $N5016, $I102
    set $N5017, 0
    isgt $I5024, $N5016, $N5017
    set $I5025, $I5024
  if132_end367:
    set $I5026, $I5025
    unless $I5025 goto if131_end365 
    store_lex "$to", $I102
    set $I5026, $I102
  if131_end365:
    find_lex $I5027, "$to"
    find_lex $P5031, "RETURN"
    $P5032 = $P5031($I5027)
    .return ($P5032) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_105_1347804141.46") :anon :lex :outer("cuid_106_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 167
    .lex "$f", $I101 
    set $I101, 0
.annotate 'line', 168
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    find_lex $I5001, "$from"
    find_lex $I5002, "$to"
    find_lex $P5005, "$?PACKAGE"
    get_who $P5004, $P5005
    set $P5003, $P5004["$EDGE_EPSILON"]
    unless_null $P5003, fallback343
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5003, $P5006
  fallback343:
    $P5007 = $P5001."addedge"($I5001, $I5002, $P5003, 0)
    set $I5003, $P5007
    set $I101, $I5003
    find_lex $I5004, "$st"
    set $I5005, $I5004
    if $I5004 goto unless125_end345 
    set $I5005, $I101
  unless125_end345:
    store_lex "$st", $I5005
    .return ($I5005) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_107_1347804141.46") :anon :lex :outer("cuid_106_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 178
    .lex "$start", $I101 
    .lex "$looper", $P101 
    set $I101, 0
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P101, $P5001
.annotate 'line', 179
    find_lex $P5003, "self"
    nqp_decontainerize $P5002, $P5003
    $P5004 = $P5002."addstate"()
    set $I5001, $P5004
    set $I101, $I5001
.annotate 'line', 180
    find_lex $P5006, "self"
    nqp_decontainerize $P5005, $P5006
    find_lex $I5002, "$from"
    find_lex $P5009, "$?PACKAGE"
    get_who $P5008, $P5009
    set $P5007, $P5008["$EDGE_EPSILON"]
    unless_null $P5007, fallback355
    nqp_get_sc_object $P5010, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5007, $P5010
  fallback355:
    $P5011 = $P5005."addedge"($I5002, $I101, $P5007, 0)
    store_lex "$from", $I101
.annotate 'line', 182
    find_lex $P5013, "self"
    nqp_decontainerize $P5012, $P5013
    $P5014 = $P5012."addstate"()
    set $P101, $P5014
.annotate 'line', 183
    find_lex $P5016, "self"
    nqp_decontainerize $P5015, $P5016
    find_lex $I5003, "$to"
    find_lex $P5019, "$?PACKAGE"
    get_who $P5018, $P5019
    set $P5017, $P5018["$EDGE_EPSILON"]
    unless_null $P5017, fallback356
    nqp_get_sc_object $P5020, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5017, $P5020
  fallback356:
    $P5021 = $P5015."addedge"($P101, $I5003, $P5017, 0)
.annotate 'line', 184
    find_lex $P5023, "self"
    nqp_decontainerize $P5022, $P5023
    find_lex $I5004, "$from"
    find_lex $P5026, "$?PACKAGE"
    get_who $P5025, $P5026
    set $P5024, $P5025["$EDGE_EPSILON"]
    unless_null $P5024, fallback357
    nqp_get_sc_object $P5027, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5024, $P5027
  fallback357:
    $P5028 = $P5022."addedge"($P101, $I5004, $P5024, 0)
    find_lex $I5005, "$has_sep"
    set $I5008, $I5005
    unless $I5005 goto if130_end361 
    find_lex $I5007, "$count"
    set $N5001, $I5007
    set $N5002, 0
    isgt $I5006, $N5001, $N5002
    set $I5008, $I5006
  if130_end361:
    set $I5011, $I5008
    unless $I5008 goto if129_end359 
.annotate 'line', 185
.annotate 'line', 186
    find_lex $P5030, "self"
    nqp_decontainerize $P5029, $P5030
    find_lex $P5032, "$node"
    set $P5031, $P5032[1]
    unless_null $P5031, fallback362
    nqp_get_sc_object $P5033, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5031, $P5033
  fallback362:
    find_lex $I5009, "$from"
    $P5034 = $P5029."regex_nfa"($P5031, $I5009, -1)
    set $I5010, $P5034
    store_lex "$from", $I5010
    set $I5011, $I5010
  if129_end359:
.annotate 'line', 188
    find_lex $P5036, "self"
    nqp_decontainerize $P5035, $P5036
    find_lex $P5038, "$node"
    set $P5037, $P5038[0]
    unless_null $P5037, fallback363
    nqp_get_sc_object $P5039, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5037, $P5039
  fallback363:
    find_lex $I5012, "$from"
    $P5040 = $P5035."regex_nfa"($P5037, $I5012, $P101)
    .return ($P5040) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_108_1347804141.46") :anon :lex :outer("cuid_16_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 195
    .lex "$start", $I101 
    .lex "$looper", $I102 
    .lex "$st", $I103 
    set $I101, 0
    set $I102, 0
    set $I103, 0
.annotate 'line', 196
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    $P5003 = $P5001."addstate"()
    set $I5001, $P5003
    set $I101, $I5001
.annotate 'line', 197
    find_lex $P5005, "self"
    nqp_decontainerize $P5004, $P5005
    find_lex $I5002, "$from"
    find_lex $P5008, "$?PACKAGE"
    get_who $P5007, $P5008
    set $P5006, $P5007["$EDGE_EPSILON"]
    unless_null $P5006, fallback375
    nqp_get_sc_object $P5009, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5006, $P5009
  fallback375:
    $P5010 = $P5004."addedge"($I5002, $I101, $P5006, 0)
.annotate 'line', 198
    find_lex $P5012, "self"
    nqp_decontainerize $P5011, $P5012
    $P5013 = $P5011."addstate"()
    set $I5003, $P5013
    set $I102, $I5003
.annotate 'line', 199
    find_lex $P5015, "self"
    nqp_decontainerize $P5014, $P5015
    find_lex $P5017, "$node"
    set $P5016, $P5017[0]
    unless_null $P5016, fallback376
    nqp_get_sc_object $P5018, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5016, $P5018
  fallback376:
    $P5019 = $P5014."regex_nfa"($P5016, $I101, $I102)
    set $I5004, $P5019
    set $I103, $I5004
.annotate 'line', 200
    find_lex $P5021, "self"
    nqp_decontainerize $P5020, $P5021
    find_lex $P5023, "$node"
    set $P5022, $P5023[1]
    unless_null $P5022, fallback377
    nqp_get_sc_object $P5024, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5022, $P5024
  fallback377:
    $P5025 = $P5020."regex_nfa"($P5022, $I102, $I101)
.annotate 'line', 201
    find_lex $P5027, "self"
    nqp_decontainerize $P5026, $P5027
    find_lex $I5005, "$to"
    find_lex $P5030, "$?PACKAGE"
    get_who $P5029, $P5030
    set $P5028, $P5029["$EDGE_EPSILON"]
    unless_null $P5028, fallback378
    nqp_get_sc_object $P5031, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5028, $P5031
  fallback378:
    $P5032 = $P5026."addedge"($I102, $I5005, $P5028, 0)
.annotate 'line', 202
    find_lex $P5034, "self"
    nqp_decontainerize $P5033, $P5034
    find_lex $I5006, "$from"
    find_lex $I5007, "$to"
    find_lex $P5037, "$?PACKAGE"
    get_who $P5036, $P5037
    set $P5035, $P5036["$EDGE_EPSILON"]
    unless_null $P5035, fallback379
    nqp_get_sc_object $P5038, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5035, $P5038
  fallback379:
    $P5039 = $P5033."addedge"($I5006, $I5007, $P5035, 0)
    set $I5008, $P5039
    set $I103, $I5008
    find_lex $I5010, "$to"
    set $N5001, $I5010
    set $N5002, 0
    islt $I5009, $N5001, $N5002
    set $I5012, $I5009
    unless $I5009 goto if137_end383 
    set $N5003, $I103
    set $N5004, 0
    isgt $I5011, $N5003, $N5004
    set $I5012, $I5011
  if137_end383:
    set $I5013, $I5012
    unless $I5012 goto if136_end381 
    store_lex "$to", $I103
    set $I5013, $I103
  if136_end381:
    .return ($I5013) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_109_1347804141.46") :anon :lex :outer("cuid_16_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 205
    .lex "$st", $I101 
    set $I101, 0
.annotate 'line', 206
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    find_lex $P5004, "$node"
    set $P5003, $P5004[0]
    unless_null $P5003, fallback384
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5003, $P5005
  fallback384:
    find_lex $I5001, "$from"
    find_lex $I5002, "$from"
    $P5006 = $P5001."regex_nfa"($P5003, $I5001, $I5002)
.annotate 'line', 207
    find_lex $P5008, "self"
    nqp_decontainerize $P5007, $P5008
    find_lex $I5003, "$from"
    find_lex $I5004, "$to"
    find_lex $P5011, "$?PACKAGE"
    get_who $P5010, $P5011
    set $P5009, $P5010["$EDGE_EPSILON"]
    unless_null $P5009, fallback385
    nqp_get_sc_object $P5012, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5009, $P5012
  fallback385:
    $P5013 = $P5007."addedge"($I5003, $I5004, $P5009, 0)
    set $I5005, $P5013
    set $I101, $I5005
    find_lex $I5007, "$to"
    set $N5001, $I5007
    set $N5002, 0
    islt $I5006, $N5001, $N5002
    set $I5009, $I5006
    unless $I5006 goto if139_end389 
    set $N5003, $I101
    set $N5004, 0
    isgt $I5008, $N5003, $N5004
    set $I5009, $I5008
  if139_end389:
    set $I5010, $I5009
    unless $I5009 goto if138_end387 
    store_lex "$to", $I101
    set $I5010, $I101
  if138_end387:
    .return ($I5010) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_110_1347804141.46") :anon :lex :outer("cuid_16_1347804141.46")
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
    unless_null $P5006, fallback390
    nqp_get_sc_object $P5009, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5006, $P5009
  fallback390:
    $P5010 = $P5004."addedge"($I5002, $I101, $P5006, 0)
.annotate 'line', 213
    find_lex $P5012, "self"
    nqp_decontainerize $P5011, $P5012
    $P5013 = $P5011."addstate"()
    set $I5003, $P5013
    set $I102, $I5003
.annotate 'line', 214
    find_lex $P5015, "self"
    nqp_decontainerize $P5014, $P5015
    find_lex $P5017, "$node"
    set $P5016, $P5017[0]
    unless_null $P5016, fallback391
    nqp_get_sc_object $P5018, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5016, $P5018
  fallback391:
    $P5019 = $P5014."regex_nfa"($P5016, $I101, $I102)
    set $I5004, $P5019
    set $I103, $I5004
    find_lex $P5021, "$node"
    set $P5020, $P5021[1]
    unless_null $P5020, fallback394
    nqp_get_sc_object $P5022, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5020, $P5022
  fallback394:
    defined $I5005, $P5020
    unless $I5005 goto if140_else392 
.annotate 'line', 215
.annotate 'line', 216
    find_lex $P5024, "self"
    nqp_decontainerize $P5023, $P5024
    find_lex $P5026, "$node"
    set $P5025, $P5026[1]
    unless_null $P5025, fallback395
    nqp_get_sc_object $P5027, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5025, $P5027
  fallback395:
    $P5028 = $P5023."regex_nfa"($P5025, $I102, $I101)
    set $P5036, $P5028
    goto if140_end393
  if140_else392:
.annotate 'line', 218
.annotate 'line', 219
    find_lex $P5030, "self"
    nqp_decontainerize $P5029, $P5030
    find_lex $P5033, "$?PACKAGE"
    get_who $P5032, $P5033
    set $P5031, $P5032["$EDGE_EPSILON"]
    unless_null $P5031, fallback396
    nqp_get_sc_object $P5034, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5031, $P5034
  fallback396:
    $P5035 = $P5029."addedge"($I102, $I101, $P5031, 0)
    set $P5036, $P5035
  if140_end393:
.annotate 'line', 221
    find_lex $P5038, "self"
    nqp_decontainerize $P5037, $P5038
    find_lex $I5006, "$to"
    find_lex $P5041, "$?PACKAGE"
    get_who $P5040, $P5041
    set $P5039, $P5040["$EDGE_EPSILON"]
    unless_null $P5039, fallback397
    nqp_get_sc_object $P5042, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5039, $P5042
  fallback397:
    $P5043 = $P5037."addedge"($I102, $I5006, $P5039, 0)
    find_lex $I5008, "$to"
    set $N5001, $I5008
    set $N5002, 0
    islt $I5007, $N5001, $N5002
    set $I5010, $I5007
    unless $I5007 goto if142_end401 
    set $N5003, $I103
    set $N5004, 0
    isgt $I5009, $N5003, $N5004
    set $I5010, $I5009
  if142_end401:
    set $I5011, $I5010
    unless $I5010 goto if141_end399 
    store_lex "$to", $I103
    set $I5011, $I103
  if141_end399:
    .return ($I5011) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_111_1347804141.46") :anon :lex :outer("cuid_16_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 225
    .lex "$st", $I101 
    set $I101, 0
.annotate 'line', 226
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    find_lex $P5004, "$node"
    set $P5003, $P5004[0]
    unless_null $P5003, fallback406
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5003, $P5005
  fallback406:
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
    unless $I5004 goto if146_end410 
    set $N5003, $I101
    set $N5004, 0
    isgt $I5006, $N5003, $N5004
    set $I5007, $I5006
  if146_end410:
    set $I5008, $I5007
    unless $I5007 goto if145_end408 
    store_lex "$to", $I101
    set $I5008, $I101
  if145_end408:
.annotate 'line', 228
    find_lex $P5008, "self"
    nqp_decontainerize $P5007, $P5008
    find_lex $I5009, "$from"
    find_lex $I5010, "$to"
    find_lex $P5011, "$?PACKAGE"
    get_who $P5010, $P5011
    set $P5009, $P5010["$EDGE_EPSILON"]
    unless_null $P5009, fallback411
    nqp_get_sc_object $P5012, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5009, $P5012
  fallback411:
    $P5013 = $P5007."addedge"($I5009, $I5010, $P5009, 0)
    set $I5011, $P5013
    set $I101, $I5011
    find_lex $I5013, "$to"
    set $N5005, $I5013
    set $N5006, 0
    islt $I5012, $N5005, $N5006
    set $I5015, $I5012
    unless $I5012 goto if148_end415 
    set $N5007, $I101
    set $N5008, 0
    isgt $I5014, $N5007, $N5008
    set $I5015, $I5014
  if148_end415:
    set $I5016, $I5015
    unless $I5015 goto if147_end413 
    store_lex "$to", $I101
    set $I5016, $I101
  if147_end413:
    find_lex $I5017, "$to"
    .return ($I5017) 
.end
.HLL "nqp"
.namespace []
.sub "qastnode" :subid("cuid_17_1347804141.46") :anon :lex :outer("cuid_25_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 236
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param int _lex_param_2 
    .param int _lex_param_3 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$from", _lex_param_2 
    .lex "$to", _lex_param_3 
.annotate 'line', 237
    $P5001 = _lex_param_1."subtype"()
    set $S5001, $P5001
    iseq $I5001, $S5001, "zerowidth"
    set $I5003, $I5001
    if $I5001 goto unless150_end419 
    $P5002 = _lex_param_1."subtype"()
    set $S5002, $P5002
    iseq $I5002, $S5002, "declarative"
    set $I5003, $I5002
  unless150_end419:
    unless $I5003 goto if149_else416 
.annotate 'line', 238
    nqp_decontainerize $P5003, _lex_param_0
    find_lex $P5006, "$?PACKAGE"
    get_who $P5005, $P5006
    set $P5004, $P5005["$EDGE_EPSILON"]
    unless_null $P5004, fallback420
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5004, $P5007
  fallback420:
    $P5008 = $P5003."addedge"(_lex_param_2, _lex_param_3, $P5004, 0)
    set $P5011, $P5008
    goto if149_end417
  if149_else416:
.annotate 'line', 239
    nqp_decontainerize $P5009, _lex_param_0
    $P5010 = $P5009."fate"(_lex_param_1, _lex_param_2, _lex_param_3)
    set $P5011, $P5010
  if149_end417:
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "subcapture" :subid("cuid_18_1347804141.46") :anon :lex :outer("cuid_25_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 242
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param int _lex_param_2 
    .param int _lex_param_3 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$from", _lex_param_2 
    .lex "$to", _lex_param_3 
.annotate 'line', 243
    nqp_decontainerize $P5001, _lex_param_0
    set $P5002, _lex_param_1[0]
    unless_null $P5002, fallback421
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5002, $P5003
  fallback421:
    $P5004 = $P5001."regex_nfa"($P5002, _lex_param_2, _lex_param_3)
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "qast" :subid("cuid_19_1347804141.46") :anon :lex :outer("cuid_25_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 246
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("non_empty") :optional 
    .param int haz_param_8 :opt_flag 
    .const 'Sub' $P5030 = 'cuid_113_1347804141.46' 
    capture_lex $P5030 
    if haz_param_8, default444
    nqp_get_sc_object $P5029, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set _lex_param_1, $P5029
  default444:
    .lex "$past", $P101 
    .lex "self", _lex_param_0 
    .lex "$non_empty", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P101, $P5001
    root_new $P102, ['parrot';'Continuation']
    set_label $P102, lexotic_422
    .lex "RETURN", $P102
    nqp_decontainerize $P5002, _lex_param_0
    nqp_get_sc_object $P5003, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 3
    repr_get_attr_obj $P5004, $P5002, $P5003, "$!edges"
    set $P5014, $P5004
    if $P5004 goto unless151_end425 
.annotate 'line', 247
    set $P5007, _lex_param_1
    if _lex_param_1 goto unless152_end427 
    find_lex $P5005, "RETURN"
    $P5006 = $P5005(0)
    set $P5007, $P5006
  unless152_end427:
.annotate 'line', 249
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5011, "$?PACKAGE"
    get_who $P5010, $P5011
    set $P5009, $P5010["$EDGE_FATE"]
    unless_null $P5009, fallback428
    nqp_get_sc_object $P5012, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5009, $P5012
  fallback428:
    $P5013 = $P5008."addedge"(1, 0, $P5009, 0, 1 :named("newedge"))
    set $P5014, $P5013
  unless151_end425:
.annotate 'line', 251
    nqp_get_sc_object $P5018, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 0
    nqp_get_package_through_who $P5017, $P5018, "QAST"
    get_who $P5016, $P5017
    set $P5015, $P5016["Op"]
    unless_null $P5015, fallback429
    nqp_get_sc_object $P5019, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5015, $P5019
  fallback429:
    $P5020 = $P5015."new"("list" :named("op"))
    set $P101, $P5020
    nqp_decontainerize $P5024, _lex_param_0
    nqp_get_sc_object $P5025, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 3
    repr_get_attr_obj $P5026, $P5024, $P5025, "$!states"
    set $P5021, $P5026
    iter $P5023, $P5026
  for_next441:
    unless $P5023, for_done443
    shift $P5028, $P5023
  for_redo442:
    .const 'Sub' $P5027 = 'cuid_113_1347804141.46' 
    capture_lex $P5027
    $P5021 = $P5027($P5028)
    goto for_next441
  for_done443:
    goto lexotic_423
  lexotic_422:
    .get_results ($P101)
  lexotic_423:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_113_1347804141.46") :anon :lex :outer("cuid_19_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 252
    .param pmc _lex_param_0 
    .const 'Sub' $P5015 = 'cuid_112_1347804141.46' 
    capture_lex $P5015 
    .lex "$list", $P101 
    .lex "@values", _lex_param_0 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P101, $P5001
.annotate 'line', 253
    nqp_get_sc_object $P5005, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 0
    nqp_get_package_through_who $P5004, $P5005, "QAST"
    get_who $P5003, $P5004
    set $P5002, $P5003["Op"]
    unless_null $P5002, fallback430
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5002, $P5006
  fallback430:
    $P5007 = $P5002."new"("list" :named("op"))
    set $P101, $P5007
    set $P5008, _lex_param_0
    iter $P5010, _lex_param_0
  for_next438:
    unless $P5010, for_done440
    shift $P5012, $P5010
  for_redo439:
    .const 'Sub' $P5011 = 'cuid_112_1347804141.46' 
    capture_lex $P5011
    $P5008 = $P5011($P5012)
    goto for_next438
  for_done440:
.annotate 'line', 265
    find_lex $P5013, "$past"
    $P5014 = $P5013."push"($P101)
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_112_1347804141.46") :anon :lex :outer("cuid_113_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 254
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 255
    nqp_get_sc_object $P5004, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 0
    nqp_get_package_through_who $P5003, $P5004, "QAST"
    get_who $P5002, $P5003
    set $P5001, $P5002["SVal"]
    unless_null $P5001, fallback433
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5001, $P5005
  fallback433:
    $P5006 = $P5001."ACCEPTS"(_lex_param_0)
    unless $P5006 goto if153_else431 
.annotate 'line', 256
    find_lex $P5007, "$list"
    $P5008 = $P5007."push"(_lex_param_0)
    set $P5026, $P5008
    goto if153_end432
  if153_else431:
    set $N5001, _lex_param_0
    set $S5001, $N5001
    set $S5002, _lex_param_0
    iseq $I5001, $S5001, $S5002
    unless $I5001 goto if154_else434 
.annotate 'line', 258
.annotate 'line', 259
    find_lex $P5009, "$list"
    nqp_get_sc_object $P5013, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 0
    nqp_get_package_through_who $P5012, $P5013, "QAST"
    get_who $P5011, $P5012
    set $P5010, $P5011["IVal"]
    unless_null $P5010, fallback436
    nqp_get_sc_object $P5014, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5010, $P5014
  fallback436:
    $P5015 = $P5010."new"(_lex_param_0 :named("value"))
    $P5016 = $P5009."push"($P5015)
    set $P5025, $P5016
    goto if154_end435
  if154_else434:
.annotate 'line', 261
.annotate 'line', 262
    find_lex $P5017, "$list"
    nqp_get_sc_object $P5021, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 0
    nqp_get_package_through_who $P5020, $P5021, "QAST"
    get_who $P5019, $P5020
    set $P5018, $P5019["SVal"]
    unless_null $P5018, fallback437
    nqp_get_sc_object $P5022, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5018, $P5022
  fallback437:
    $P5023 = $P5018."new"(_lex_param_0 :named("value"))
    $P5024 = $P5017."push"($P5023)
    set $P5025, $P5024
  if154_end435:
    set $P5026, $P5025
  if153_end432:
    .return ($P5026) 
.end
.HLL "nqp"
.namespace []
.sub "mergesubrule" :subid("cuid_20_1347804141.46") :anon :lex :outer("cuid_25_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 270
    .param pmc _lex_param_0 
    .param int _lex_param_1 
    .param int _lex_param_2 
    .param pmc _lex_param_3 
    .param pmc _lex_param_4 
    .param string _lex_param_5 
    .param pmc _lex_param_6 :optional 
    .param int haz_param_9 :opt_flag 
    .const 'Sub' $P5020 = 'cuid_114_1347804141.46' 
    capture_lex $P5020 
    .const 'Sub' $P5020 = 'cuid_116_1347804141.46' 
    capture_lex $P5020 
    if haz_param_9, default467
    new $P5019, 'Hash'
    set _lex_param_6, $P5019
  default467:
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
    box $P5015, $I5001
    set $P5014, $P5015
    unless $I5001 goto if155_end446 
.annotate 'line', 274
    exists $I5003, $P101[_lex_param_5]
    box $P5004, $I5003
    isfalse $I5002, $P5004
    box $P5008, $I5002
    set $P5007, $P5008
    unless $I5002 goto if156_end448 
    .const 'Sub' $P5005 = 'cuid_114_1347804141.46' 
    capture_lex $P5005
    $P5006 = $P5005()
    set $P5007, $P5006
  if156_end448:
    isfalse $I5004, $P102
    set $I5007, $I5004
    unless $I5004 goto if160_end456 
    exists $I5006, $P101[_lex_param_5]
    box $P5009, $I5006
    isfalse $I5005, $P5009
    set $I5007, $I5005
  if160_end456:
    box $P5013, $I5007
    set $P5012, $P5013
    unless $I5007 goto if159_end454 
    .const 'Sub' $P5010 = 'cuid_116_1347804141.46' 
    capture_lex $P5010
    $P5011 = $P5010()
    set $P5012, $P5011
  if159_end454:
    set $P5014, $P5012
  if155_end446:
    box $P5016, 1
    set $P101[_lex_param_5], $P5016
.annotate 'line', 296
    nqp_decontainerize $P5017, _lex_param_0
    $P5018 = $P5017."mergesubstates"(_lex_param_1, _lex_param_2, _lex_param_3, $P102, _lex_param_4, $P101)
    .return ($P5018) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_114_1347804141.46") :anon :lex :outer("cuid_20_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 275
    .lex "$meth", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P101, $P5001
.annotate 'line', 276
    find_lex $P5003, "$cursor"
    get_how $P5002, $P5003
    find_lex $P5004, "$cursor"
    find_lex $S5001, "$name"
    $P5005 = $P5002."find_method"($P5004, $S5001, 1 :named("no_trace"))
    set $P101, $P5005
    can $I5001, $P101, "nqpattr"
    box $P5008, $I5001
    set $P5007, $P5008
    unless $I5001 goto if157_end450 
.annotate 'line', 277
    $P5006 = $P101."nqpattr"("nfa")
    store_lex "@substates", $P5006
    set $P5007, $P5006
  if157_end450:
    find_lex $P5009, "@substates"
    isnull $I5002, $P5009
    box $P5012, $I5002
    set $P5011, $P5012
    unless $I5002 goto if158_end452 
    new $P5010, 'ResizablePMCArray'
    store_lex "@substates", $P5010
    set $P5011, $P5010
  if158_end452:
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_116_1347804141.46") :anon :lex :outer("cuid_20_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 280
    .const 'Sub' $P5027 = 'cuid_115_1347804141.46' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_117_1347804141.46' 
    capture_lex $P5027 
    .lex "%protorx", $P101 
    .lex "$nfa", $P102 
    .lex "$gotmatch", $I101 
    new $P5001, 'Hash'
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P102, $P5002
    set $I101, 0
.annotate 'line', 283
    find_lex $P5004, "$cursor"
    get_how $P5003, $P5004
    find_lex $P5005, "$cursor"
    .const 'Sub' $P5007 = 'cuid_115_1347804141.46' 
    capture_lex $P5007
    newclosure $P5006, $P5007
    $P5008 = $P5003."cache"($P5005, "!protoregex_table", $P5006)
    set $P101, $P5008
.annotate 'line', 284
    nqp_get_sc_object $P5012, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 0
    nqp_get_package_through_who $P5011, $P5012, "QRegex"
    get_who $P5010, $P5011
    set $P5009, $P5010["NFA"]
    unless_null $P5009, fallback457
    nqp_get_sc_object $P5013, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5009, $P5013
  fallback457:
    $P5014 = $P5009."new"()
    set $P102, $P5014
    set $I101, 0
    find_lex $S5001, "$name"
    exists $I5001, $P101[$S5001]
    box $P5023, $I5001
    set $P5022, $P5023
    unless $I5001 goto if161_end459 
.annotate 'line', 286
    find_lex $S5002, "$name"
    set $P5018, $P101[$S5002]
    unless_null $P5018, fallback460
    nqp_get_sc_object $P5019, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5018, $P5019
  fallback460:
    set $P5015, $P5018
    iter $P5017, $P5018
  for_next462:
    unless $P5017, for_done464
    shift $P5021, $P5017
  for_redo463:
    .const 'Sub' $P5020 = 'cuid_117_1347804141.46' 
    capture_lex $P5020
    $P5015 = $P5020($P5021)
    goto for_next462
  for_done464:
    set $P5022, $P5015
  if161_end459:
    box $P5026, $I101
    set $P5025, $P5026
    unless $I101 goto if162_end466 
.annotate 'line', 292
    $P5024 = $P102."states"()
    store_lex "@substates", $P5024
    set $P5025, $P5024
  if162_end466:
    .return ($P5025) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_115_1347804141.46") :anon :lex :outer("cuid_116_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 283

    find_lex $P5001, "$cursor"
    $P5002 = $P5001."!protoregex_table"()
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_117_1347804141.46") :anon :lex :outer("cuid_116_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 287
    .param pmc _lex_param_0 
    .lex "$rxname", _lex_param_0 
.annotate 'line', 288
    find_lex $P5001, "$nfa"
    find_lex $P5004, "$?PACKAGE"
    get_who $P5003, $P5004
    set $P5002, $P5003["$EDGE_SUBRULE"]
    unless_null $P5002, fallback461
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5002, $P5005
  fallback461:
    $P5006 = $P5001."addedge"(1, 0, $P5002, _lex_param_0)
    store_lex "$gotmatch", 1
    .return (1) 
.end
.HLL "nqp"
.namespace []
.sub "mergesubstates" :subid("cuid_21_1347804141.46") :anon :lex :outer("cuid_25_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 299
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .param pmc _lex_param_4 
    .param pmc _lex_param_5 
    .param pmc _lex_param_6 :optional 
    .param int haz_param_10 :opt_flag 
    .const 'Sub' $P5011 = 'cuid_119_1347804141.46' 
    capture_lex $P5011 
    if haz_param_10, default503
    new $P5010, 'Hash'
    set _lex_param_6, $P5010
  default503:
    .lex "self", _lex_param_0 
    .lex "$start", _lex_param_1 
    .lex "$to", _lex_param_2 
    .lex "$fate", _lex_param_3 
    .lex "@substates", _lex_param_4 
    .lex "$cursor", _lex_param_5 
    .lex "%seen", _lex_param_6 
    unless _lex_param_4 goto if163_else468 
    .const 'Sub' $P5001 = 'cuid_119_1347804141.46' 
    capture_lex $P5001
    $P5002 = $P5001()
    set $P5009, $P5002
    goto if163_end469
  if163_else468:
.annotate 'line', 335
.annotate 'line', 336
    nqp_decontainerize $P5003, _lex_param_0
    find_lex $P5006, "$?PACKAGE"
    get_who $P5005, $P5006
    set $P5004, $P5005["$EDGE_FATE"]
    unless_null $P5004, fallback502
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5004, $P5007
  fallback502:
    $P5008 = $P5003."addedge"(_lex_param_1, 0, $P5004, _lex_param_3)
    set $P5009, $P5008
  if163_end469:
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_119_1347804141.46") :anon :lex :outer("cuid_21_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 300
    .const 'Sub' $P5052 = 'cuid_118_1347804141.46' 
    capture_lex $P5052 
    .lex "$substart", $I101 
    .lex "$subend", $I102 
    .lex "$i", $I103 
    set $I101, 0
    set $I102, 0
    set $I103, 0
.annotate 'line', 302
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
    set_label $P5017, while164_handlers473
    push_eh $P5017
  while164_test470:
    find_lex $P5008, "@substates"
    set $P5016, $P5008
    unless $P5008 goto while164_done474 
  while164_redo472:
    find_lex $P5010, "self"
    nqp_decontainerize $P5009, $P5010
    nqp_get_sc_object $P5011, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 3
    repr_get_attr_obj $P5012, $P5009, $P5011, "$!states"
    find_lex $P5015, "@substates"
    shift $P5014, $P5015
    clone $P5013, $P5014
    push $P5012, $P5013
    set $P5016, $P5012
    goto while164_test470 
  while164_handlers473:
    .get_results ($P5017)
    pop_upto_eh $P5017
    getattribute $P5017, $P5017, 'type'
    eq $P5017, .CONTROL_LOOP_NEXT, while164_test470
    eq $P5017, .CONTROL_LOOP_REDO, while164_redo472
  while164_done474:
    pop_eh 
    find_lex $P5019, "self"
    nqp_decontainerize $P5018, $P5019
    nqp_get_sc_object $P5020, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 3
    repr_get_attr_obj $P5021, $P5018, $P5020, "$!states"
    elements $I5002, $P5021
    set $I102, $I5002
    set $I103, $I101
  while165_test475:
    set $N5001, $I103
    set $N5002, $I102
    islt $I5003, $N5001, $N5002
    box $P5025, $I5003
    set $P5024, $P5025
    unless $I5003 goto while165_done479 
  while165_redo477:
    .const 'Sub' $P5022 = 'cuid_118_1347804141.46' 
    capture_lex $P5022
    $P5023 = $P5022()
    set $P5024, $P5023
    goto while165_test475 
  while165_done479:
.annotate 'line', 330
    find_lex $P5027, "self"
    nqp_decontainerize $P5026, $P5027
    find_lex $P5028, "$start"
    set $N5004, $I101
    set $N5005, 1
    add $N5003, $N5004, $N5005
    find_lex $P5031, "$?PACKAGE"
    get_who $P5030, $P5031
    set $P5029, $P5030["$EDGE_EPSILON"]
    unless_null $P5029, fallback497
    nqp_get_sc_object $P5032, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5029, $P5032
  fallback497:
    $P5033 = $P5026."addedge"($P5028, $N5003, $P5029, 0)
    find_lex $P5034, "$to"
    set $N5006, $P5034
    set $N5007, 0
    isgt $I5004, $N5006, $N5007
    unless $I5004 goto if169_else498 
.annotate 'line', 332
    find_lex $P5036, "self"
    nqp_decontainerize $P5035, $P5036
    find_lex $P5037, "$to"
    find_lex $P5040, "$?PACKAGE"
    get_who $P5039, $P5040
    set $P5038, $P5039["$EDGE_EPSILON"]
    unless_null $P5038, fallback500
    nqp_get_sc_object $P5041, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5038, $P5041
  fallback500:
    $P5042 = $P5035."addedge"($I101, $P5037, $P5038, 0)
    set $P5051, $P5042
    goto if169_end499
  if169_else498:
.annotate 'line', 333
    find_lex $P5044, "self"
    nqp_decontainerize $P5043, $P5044
    find_lex $P5047, "$?PACKAGE"
    get_who $P5046, $P5047
    set $P5045, $P5046["$EDGE_FATE"]
    unless_null $P5045, fallback501
    nqp_get_sc_object $P5048, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5045, $P5048
  fallback501:
    find_lex $P5049, "$fate"
    $P5050 = $P5043."addedge"($I101, 0, $P5045, $P5049)
    set $P5051, $P5050
  if169_end499:
    .return ($P5051) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_118_1347804141.46") :anon :lex :outer("cuid_119_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 316
    .lex "$substate", $P101 
    .lex "$j", $I101 
    .lex "$k", $I102 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P101, $P5001
    set $I101, 0
    set $I102, 0
    find_lex $P5004, "self"
    nqp_decontainerize $P5003, $P5004
    nqp_get_sc_object $P5005, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 3
    repr_get_attr_obj $P5006, $P5003, $P5005, "$!states"
    find_lex $I5001, "$i"
    set $P5002, $P5006[$I5001]
    unless_null $P5002, fallback480
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5002, $P5007
  fallback480:
    set $P101, $P5002
    set $I101, 0
    elements $I5002, $P101
    set $I102, $I5002
  while166_test481:
    set $N5001, $I101
    set $N5002, $I102
    islt $I5003, $N5001, $N5002
    set $I5014, $I5003
    unless $I5003 goto while166_done485 
  while166_redo483:
.annotate 'line', 320
    set $N5004, $I101
    set $N5005, 2
    add $N5003, $N5004, $N5005
    set $I5004, $N5003
    set $N5008, $I101
    set $N5009, 2
    add $N5007, $N5008, $N5009
    set $I5005, $N5007
    set $P5008, $P101[$I5005]
    unless_null $P5008, fallback486
    nqp_get_sc_object $P5009, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5008, $P5009
  fallback486:
    set $N5010, $P5008
    find_lex $I5006, "$substart"
    set $N5011, $I5006
    add $N5006, $N5010, $N5011
    box $P5010, $N5006
    set $P101[$I5004], $P5010
    set $P5011, $P101[$I101]
    unless_null $P5011, fallback489
    nqp_get_sc_object $P5012, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5011, $P5012
  fallback489:
    set $N5012, $P5011
    find_lex $P5015, "$?PACKAGE"
    get_who $P5014, $P5015
    set $P5013, $P5014["$EDGE_FATE"]
    unless_null $P5013, fallback490
    nqp_get_sc_object $P5016, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5013, $P5016
  fallback490:
    set $N5013, $P5013
    iseq $I5007, $N5012, $N5013
    box $P5019, $I5007
    set $P5018, $P5019
    unless $I5007 goto if167_end488 
    set $N5015, $I101
    set $N5016, 1
    add $N5014, $N5015, $N5016
    set $I5008, $N5014
    find_lex $P5017, "$fate"
    set $P101[$I5008], $P5017
    set $P5018, $P5017
  if167_end488:
    set $P5020, $P101[$I101]
    unless_null $P5020, fallback493
    nqp_get_sc_object $P5021, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5020, $P5021
  fallback493:
    set $N5017, $P5020
    find_lex $P5024, "$?PACKAGE"
    get_who $P5023, $P5024
    set $P5022, $P5023["$EDGE_SUBRULE"]
    unless_null $P5022, fallback494
    nqp_get_sc_object $P5025, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5022, $P5025
  fallback494:
    set $N5018, $P5022
    iseq $I5009, $N5017, $N5018
    box $P5037, $I5009
    set $P5036, $P5037
    unless $I5009 goto if168_end492 
.annotate 'line', 324
    find_lex $P5027, "self"
    nqp_decontainerize $P5026, $P5027
    find_lex $I5010, "$i"
    set $N5020, $I101
    set $N5021, 2
    add $N5019, $N5020, $N5021
    set $I5011, $N5019
    set $P5028, $P101[$I5011]
    unless_null $P5028, fallback495
    nqp_get_sc_object $P5029, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5028, $P5029
  fallback495:
    find_lex $P5030, "$fate"
    find_lex $P5031, "$cursor"
    set $N5023, $I101
    set $N5024, 1
    add $N5022, $N5023, $N5024
    set $I5012, $N5022
    set $P5032, $P101[$I5012]
    unless_null $P5032, fallback496
    nqp_get_sc_object $P5033, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5032, $P5033
  fallback496:
    find_lex $P5034, "%seen"
    $P5035 = $P5026."mergesubrule"($I5010, $P5028, $P5030, $P5031, $P5032, $P5034)
    set $P5036, $P5035
  if168_end492:
    set $N5026, $I101
    set $N5027, 3
    add $N5025, $N5026, $N5027
    set $I5013, $N5025
    set $I101, $I5013
    set $I5014, $I101
    goto while166_test481 
  while166_done485:
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
.sub "run" :subid("cuid_22_1347804141.46") :anon :lex :outer("cuid_25_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 340
    .param pmc _lex_param_0 
    .param string _lex_param_1 
    .param int _lex_param_2 
    .lex "self", _lex_param_0 
    .lex "$target", _lex_param_1 
    .lex "$offset", _lex_param_2 
    nqp_decontainerize $P5002, _lex_param_0
    nqp_get_sc_object $P5003, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 3
    repr_get_attr_obj $P5004, $P5002, $P5003, "$!states"
    set $S5001, _lex_param_1
    set $I5001, _lex_param_2
    nqp_nfa_run_protoregex $P5001, $P5004, $S5001, $I5001
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "run_alt" :subid("cuid_23_1347804141.46") :anon :lex :outer("cuid_25_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 390
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
    nqp_get_sc_object $P5002, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 3
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!states"
    set $S5001, _lex_param_1
    set $I5001, _lex_param_2
    nqp_nfa_run_alternation $P5003, $S5001, $I5001, _lex_param_3, _lex_param_4
    .return () 
.end
.HLL "nqp"
.namespace []
.sub "__dump" :subid("cuid_24_1347804141.46") :anon :lex :outer("cuid_25_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 394
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .const 'Sub' $P5017 = 'cuid_120_1347804141.46' 
    capture_lex $P5017 
    .lex "$subindent", $P101 
    .lex "$st", $P102 
    .lex "self", _lex_param_0 
    .lex "$dumper", _lex_param_1 
    .lex "$label", _lex_param_2 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P102, $P5002
.annotate 'line', 395
    $P5003 = _lex_param_1."newIndent"()
    set $P101, $P5003
.annotate 'line', 396
    $P5004 = "&print"("[")
    box $P5005, 0
    set $P102, $P5005
    nqp_decontainerize $P5009, _lex_param_0
    nqp_get_sc_object $P5010, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 3
    repr_get_attr_obj $P5011, $P5009, $P5010, "$!states"
    set $P5006, $P5011
    iter $P5008, $P5011
  for_next504:
    unless $P5008, for_done506
    shift $P5013, $P5008
  for_redo505:
    .const 'Sub' $P5012 = 'cuid_120_1347804141.46' 
    capture_lex $P5012
    $P5006 = $P5012($P5013)
    goto for_next504
  for_done506:
.annotate 'line', 402
    $P5014 = _lex_param_1."deleteIndent"()
.annotate 'line', 403
    $P5015 = _lex_param_1."indent"()
    $P5016 = "&print"("\n", $P5015, "]")
    .return ($P5016) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_120_1347804141.46") :anon :lex :outer("cuid_24_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 398
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 399
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
    $P5005 = "&print"($S5001)
    find_lex $P5006, "$st"
    set $N5002, $P5006
    set $N5003, 1
    add $N5001, $N5002, $N5003
    box $P5007, $N5001
    store_lex "$st", $P5007
    .return ($P5007) 
.end
.loadlib "nqp_group"
.loadlib "nqp_ops"
.loadlib "nqp_bigint_ops"
.loadlib "trans_ops"
.loadlib "io_ops"
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_66_1347804141.46") :anon :lex :outer("cuid_1_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 408
    .param pmc _lex_param_0 
    .const 'Sub' $P5047 = 'cuid_26_1347804141.46' 
    capture_lex $P5047 
    .const 'Sub' $P5047 = 'cuid_27_1347804141.46' 
    capture_lex $P5047 
    .const 'Sub' $P5047 = 'cuid_28_1347804141.46' 
    capture_lex $P5047 
    .const 'Sub' $P5047 = 'cuid_29_1347804141.46' 
    capture_lex $P5047 
    .const 'Sub' $P5047 = 'cuid_30_1347804141.46' 
    capture_lex $P5047 
    .const 'Sub' $P5047 = 'cuid_31_1347804141.46' 
    capture_lex $P5047 
    .const 'Sub' $P5047 = 'cuid_32_1347804141.46' 
    capture_lex $P5047 
    .const 'Sub' $P5047 = 'cuid_33_1347804141.46' 
    capture_lex $P5047 
    .const 'Sub' $P5047 = 'cuid_34_1347804141.46' 
    capture_lex $P5047 
    .const 'Sub' $P5047 = 'cuid_35_1347804141.46' 
    capture_lex $P5047 
    .const 'Sub' $P5047 = 'cuid_36_1347804141.46' 
    capture_lex $P5047 
    .const 'Sub' $P5047 = 'cuid_37_1347804141.46' 
    capture_lex $P5047 
    .const 'Sub' $P5047 = 'cuid_38_1347804141.46' 
    capture_lex $P5047 
    .const 'Sub' $P5047 = 'cuid_39_1347804141.46' 
    capture_lex $P5047 
    .const 'Sub' $P5047 = 'cuid_40_1347804141.46' 
    capture_lex $P5047 
    .const 'Sub' $P5047 = 'cuid_41_1347804141.46' 
    capture_lex $P5047 
    .const 'Sub' $P5047 = 'cuid_42_1347804141.46' 
    capture_lex $P5047 
    .const 'Sub' $P5047 = 'cuid_43_1347804141.46' 
    capture_lex $P5047 
    .const 'Sub' $P5047 = 'cuid_44_1347804141.46' 
    capture_lex $P5047 
    .const 'Sub' $P5047 = 'cuid_45_1347804141.46' 
    capture_lex $P5047 
    .const 'Sub' $P5047 = 'cuid_46_1347804141.46' 
    capture_lex $P5047 
    .const 'Sub' $P5047 = 'cuid_47_1347804141.46' 
    capture_lex $P5047 
    .const 'Sub' $P5047 = 'cuid_48_1347804141.46' 
    capture_lex $P5047 
    .const 'Sub' $P5047 = 'cuid_49_1347804141.46' 
    capture_lex $P5047 
    .const 'Sub' $P5047 = 'cuid_50_1347804141.46' 
    capture_lex $P5047 
    .const 'Sub' $P5047 = 'cuid_51_1347804141.46' 
    capture_lex $P5047 
    .const 'Sub' $P5047 = 'cuid_52_1347804141.46' 
    capture_lex $P5047 
    .const 'Sub' $P5047 = 'cuid_53_1347804141.46' 
    capture_lex $P5047 
    .const 'Sub' $P5047 = 'cuid_54_1347804141.46' 
    capture_lex $P5047 
    .const 'Sub' $P5047 = 'cuid_55_1347804141.46' 
    capture_lex $P5047 
    .const 'Sub' $P5047 = 'cuid_56_1347804141.46' 
    capture_lex $P5047 
    .const 'Sub' $P5047 = 'cuid_57_1347804141.46' 
    capture_lex $P5047 
    .const 'Sub' $P5047 = 'cuid_58_1347804141.46' 
    capture_lex $P5047 
    .const 'Sub' $P5047 = 'cuid_59_1347804141.46' 
    capture_lex $P5047 
    .const 'Sub' $P5047 = 'cuid_60_1347804141.46' 
    capture_lex $P5047 
    .const 'Sub' $P5047 = 'cuid_61_1347804141.46' 
    capture_lex $P5047 
    .const 'Sub' $P5047 = 'cuid_62_1347804141.46' 
    capture_lex $P5047 
    .const 'Sub' $P5047 = 'cuid_63_1347804141.46' 
    capture_lex $P5047 
    .const 'Sub' $P5047 = 'cuid_64_1347804141.46' 
    capture_lex $P5047 
    .const 'Sub' $P5047 = 'cuid_65_1347804141.46' 
    capture_lex $P5047 
    .lex "$NO_CAPS", $P101 
    .lex "$pass_mark", $P102 
    .lex "@EMPTY", $P103 
    .lex "$?CLASS", _lex_param_0 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P102, $P5002
    new $P5003, 'ResizablePMCArray'
    set $P103, $P5003
    .const 'Sub' $P5004 = 'cuid_26_1347804141.46' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_27_1347804141.46' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_28_1347804141.46' 
    capture_lex $P5006
    new $P5007, 'Hash'
    set $P101, $P5007
    .const 'Sub' $P5008 = 'cuid_29_1347804141.46' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_30_1347804141.46' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_31_1347804141.46' 
    capture_lex $P5010
    .const 'Sub' $P5011 = 'cuid_32_1347804141.46' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_33_1347804141.46' 
    capture_lex $P5012
    .const 'Sub' $P5013 = 'cuid_34_1347804141.46' 
    capture_lex $P5013
    box $P5014, 1
    set $P102, $P5014
    .const 'Sub' $P5015 = 'cuid_35_1347804141.46' 
    capture_lex $P5015
    .const 'Sub' $P5016 = 'cuid_36_1347804141.46' 
    capture_lex $P5016
    .const 'Sub' $P5017 = 'cuid_37_1347804141.46' 
    capture_lex $P5017
    .const 'Sub' $P5018 = 'cuid_38_1347804141.46' 
    capture_lex $P5018
    .const 'Sub' $P5019 = 'cuid_39_1347804141.46' 
    capture_lex $P5019
    .const 'Sub' $P5020 = 'cuid_40_1347804141.46' 
    capture_lex $P5020
    new $P5021, 'ResizablePMCArray'
    set $P103, $P5021
    .const 'Sub' $P5022 = 'cuid_41_1347804141.46' 
    capture_lex $P5022
    .const 'Sub' $P5023 = 'cuid_42_1347804141.46' 
    capture_lex $P5023
    .const 'Sub' $P5024 = 'cuid_43_1347804141.46' 
    capture_lex $P5024
    .const 'Sub' $P5025 = 'cuid_44_1347804141.46' 
    capture_lex $P5025
    .const 'Sub' $P5026 = 'cuid_45_1347804141.46' 
    capture_lex $P5026
    .const 'Sub' $P5027 = 'cuid_46_1347804141.46' 
    capture_lex $P5027
    .const 'Sub' $P5028 = 'cuid_47_1347804141.46' 
    capture_lex $P5028
    .const 'Sub' $P5029 = 'cuid_48_1347804141.46' 
    capture_lex $P5029
    .const 'Sub' $P5030 = 'cuid_49_1347804141.46' 
    capture_lex $P5030
    .const 'Sub' $P5031 = 'cuid_50_1347804141.46' 
    capture_lex $P5031
    .const 'Sub' $P5032 = 'cuid_51_1347804141.46' 
    capture_lex $P5032
    .const 'Sub' $P5033 = 'cuid_52_1347804141.46' 
    capture_lex $P5033
    .const 'Sub' $P5034 = 'cuid_53_1347804141.46' 
    capture_lex $P5034
    .const 'Sub' $P5035 = 'cuid_54_1347804141.46' 
    capture_lex $P5035
    .const 'Sub' $P5036 = 'cuid_55_1347804141.46' 
    capture_lex $P5036
    .const 'Sub' $P5037 = 'cuid_56_1347804141.46' 
    capture_lex $P5037
    .const 'Sub' $P5038 = 'cuid_57_1347804141.46' 
    capture_lex $P5038
    .const 'Sub' $P5039 = 'cuid_58_1347804141.46' 
    capture_lex $P5039
    .const 'Sub' $P5040 = 'cuid_59_1347804141.46' 
    capture_lex $P5040
    .const 'Sub' $P5041 = 'cuid_60_1347804141.46' 
    capture_lex $P5041
    .const 'Sub' $P5042 = 'cuid_61_1347804141.46' 
    capture_lex $P5042
    .const 'Sub' $P5043 = 'cuid_62_1347804141.46' 
    capture_lex $P5043
    .const 'Sub' $P5044 = 'cuid_63_1347804141.46' 
    capture_lex $P5044
    .const 'Sub' $P5045 = 'cuid_64_1347804141.46' 
    capture_lex $P5045
    .const 'Sub' $P5046 = 'cuid_65_1347804141.46' 
    capture_lex $P5046
    .return ($P5046) 
.end
.HLL "nqp"
.namespace []
.sub "target" :subid("cuid_26_1347804141.46") :anon :lex :outer("cuid_66_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 420
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    find_lex $P5002, "$?CLASS"
    repr_get_attr_str $S5001, $P5001, $P5002, "$!target"
    .return ($S5001) 
.end
.HLL "nqp"
.namespace []
.sub "from" :subid("cuid_27_1347804141.46") :anon :lex :outer("cuid_66_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 421
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    find_lex $P5002, "$?CLASS"
    repr_get_attr_int $I5001, $P5001, $P5002, "$!from"
    .return ($I5001) 
.end
.HLL "nqp"
.namespace []
.sub "pos" :subid("cuid_28_1347804141.46") :anon :lex :outer("cuid_66_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 422
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    find_lex $P5002, "$?CLASS"
    repr_get_attr_int $I5001, $P5001, $P5002, "$!pos"
    .return ($I5001) 
.end
.HLL "nqp"
.namespace []
.sub "CAPHASH" :subid("cuid_29_1347804141.46") :anon :lex :outer("cuid_66_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 425
    .param pmc _lex_param_0 
    .const 'Sub' $P5071 = 'cuid_86_1347804141.46' 
    capture_lex $P5071 
    .lex "$caps", $P101 
    .lex "%caplist", $P102 
    .lex "$iter", $P103 
    .lex "$curcap", $P104 
    .lex "$subcur", $P105 
    .lex "$submatch", $P106 
    .lex "$name", $P107 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P101, $P5001
    new $P5002, 'Hash'
    set $P102, $P5002
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P103, $P5003
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P104, $P5004
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P105, $P5005
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P106, $P5006
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P107, $P5007
    new $P5008, 'Hash'
    set $P101, $P5008
    find_lex $P5009, "$NO_CAPS"
    set $P102, $P5009
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_obj $P5012, $P5010, $P5011, "$!regexsub"
    isnull $I5002, $P5012
    box $P5013, $I5002
    isfalse $I5001, $P5013
    box $P5018, $I5001
    set $P5017, $P5018
    unless $I5001 goto if171_end510 
    nqp_decontainerize $P5014, _lex_param_0
    find_lex $P5015, "$?CLASS"
    repr_get_attr_obj $P5016, $P5014, $P5015, "$!regexsub"
    set $P5017, $P5016
  if171_end510:
    set $P5036, $P5017
    unless $P5017 goto if170_end508 
.annotate 'line', 434
.annotate 'line', 435
    nqp_decontainerize $P5019, _lex_param_0
    find_lex $P5020, "$?CLASS"
    repr_get_attr_obj $P5021, $P5019, $P5020, "$!regexsub"
    $P5022 = $P5021."nqpattr"("caps")
    set $P102, $P5022
    isnull $I5004, $P102
    box $P5023, $I5004
    isfalse $I5003, $P5023
    box $P5025, $I5003
    set $P5024, $P5025
    unless $I5003 goto if173_end514 
    set $P5024, $P102
  if173_end514:
    set $P5035, $P5024
    unless $P5024 goto if172_end512 
.annotate 'line', 436
    iter $P5026, $P102
    set $P103, $P5026
  while174_test515:
    set $P5034, $P103
    unless $P103 goto while174_done519 
  while174_redo517:
.annotate 'line', 438
    shift $P5027, $P103
    set $S5001, $P5027
    box $P5028, $S5001
    set $P104, $P5028
    set $S5002, $P104
    set $P5029, $P102[$S5002]
    unless_null $P5029, fallback522
    nqp_get_sc_object $P5030, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5029, $P5030
  fallback522:
    set $N5001, $P5029
    set $N5002, 2
    isge $I5005, $N5001, $N5002
    box $P5033, $I5005
    set $P5032, $P5033
    unless $I5005 goto if175_end521 
    set $S5003, $P104
    new $P5031, 'ResizablePMCArray'
    set $P101[$S5003], $P5031
    set $P5032, $P5031
  if175_end521:
    set $P5034, $P5032
    goto while174_test515 
  while174_done519:
    set $P5035, $P5034
  if172_end512:
    set $P5036, $P5035
  if170_end508:
    nqp_decontainerize $P5037, _lex_param_0
    find_lex $P5038, "$?CLASS"
    repr_get_attr_obj $P5039, $P5037, $P5038, "$!cstack"
    isnull $I5007, $P5039
    box $P5040, $I5007
    isfalse $I5006, $P5040
    box $P5045, $I5006
    set $P5044, $P5045
    unless $I5006 goto if177_end526 
    nqp_decontainerize $P5041, _lex_param_0
    find_lex $P5042, "$?CLASS"
    repr_get_attr_obj $P5043, $P5041, $P5042, "$!cstack"
    set $P5044, $P5043
  if177_end526:
    set $P5070, $P5044
    unless $P5044 goto if176_end524 
.annotate 'line', 444
    nqp_decontainerize $P5047, _lex_param_0
    find_lex $P5048, "$?CLASS"
    repr_get_attr_obj $P5049, $P5047, $P5048, "$!cstack"
    iter $P5046, $P5049
    set $P103, $P5046
  while178_test527:
    set $P5069, $P103
    unless $P103 goto while178_done531 
  while178_redo529:
.annotate 'line', 446
    shift $P5050, $P103
    set $P105, $P5050
.annotate 'line', 448
    $P5051 = $P105."MATCH"()
    set $P106, $P5051
    find_lex $P5053, "$?CLASS"
    getattribute $P5052, $P105, $P5053, "$!name"
    set $P107, $P5052
    isnull $I5009, $P107
    box $P5054, $I5009
    isfalse $I5008, $P5054
    set $I5011, $I5008
    unless $I5008 goto if180_end535 
    defined $I5010, $P107
    set $I5011, $I5010
  if180_end535:
    box $P5068, $I5011
    set $P5067, $P5068
    unless $I5011 goto if179_end533 
.annotate 'line', 450
    set $S5004, $P107
    index $I5013, $S5004, "=", 0
    set $N5003, $I5013
    set $N5004, 0
    islt $I5012, $N5003, $N5004
    unless $I5012 goto if181_else536 
.annotate 'line', 451
    set $S5005, $P107
    set $P5055, $P102[$S5005]
    unless_null $P5055, fallback540
    nqp_get_sc_object $P5056, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5055, $P5056
  fallback540:
    set $N5005, $P5055
    set $N5006, 2
    isge $I5014, $N5005, $N5006
    unless $I5014 goto if182_else538 
    set $S5006, $P107
    set $P5057, $P101[$S5006]
    unless_null $P5057, fallback541
    nqp_get_sc_object $P5058, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5057, $P5058
  fallback541:
    push $P5057, $P106
    set $P5059, $P5057
    goto if182_end539
  if182_else538:
    set $S5007, $P107
    set $P101[$S5007], $P106
    set $P5059, $P106
  if182_end539:
    set $P5066, $P5059
    goto if181_end537
  if181_else536:
.annotate 'line', 456
    set $S5008, $P107
    split $P5063, "=", $S5008
    set $P5060, $P5063
    iter $P5062, $P5063
  for_next546:
    unless $P5062, for_done548
    shift $P5065, $P5062
  for_redo547:
    .const 'Sub' $P5064 = 'cuid_86_1347804141.46' 
    capture_lex $P5064
    $P5060 = $P5064($P5065)
    goto for_next546
  for_done548:
    set $P5066, $P5060
  if181_end537:
    set $P5067, $P5066
  if179_end533:
    set $P5069, $P5067
    goto while178_test527 
  while178_done531:
    set $P5070, $P5069
  if176_end524:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_86_1347804141.46") :anon :lex :outer("cuid_29_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 457
    .param pmc _lex_param_0 
    .lex "$name", _lex_param_0 
    find_lex $P5002, "%caplist"
    set $S5001, _lex_param_0
    set $P5001, $P5002[$S5001]
    unless_null $P5001, fallback544
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5001, $P5003
  fallback544:
    set $N5001, $P5001
    set $N5002, 2
    isge $I5001, $N5001, $N5002
    unless $I5001 goto if183_else542 
    find_lex $P5005, "$caps"
    set $S5002, _lex_param_0
    set $P5004, $P5005[$S5002]
    unless_null $P5004, fallback545
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5004, $P5006
  fallback545:
    find_lex $P5007, "$submatch"
    push $P5004, $P5007
    set $P5010, $P5004
    goto if183_end543
  if183_else542:
    find_lex $P5008, "$caps"
    set $S5003, _lex_param_0
    find_lex $P5009, "$submatch"
    set $P5008[$S5003], $P5009
    set $P5010, $P5009
  if183_end543:
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "!cursor_init" :subid("cuid_30_1347804141.46") :anon :lex :outer("cuid_66_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 469
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :named("p") :optional 
    .param int haz_param_11 :opt_flag 
    .param pmc _lex_param_3 :named("c") :optional 
    .param int haz_param_12 :opt_flag 
    if haz_param_11, default551
    box $P5011, 0
    set _lex_param_2, $P5011
  default551:
    if haz_param_12, default552
    nqp_get_sc_object $P5012, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set _lex_param_3, $P5012
  default552:
    .lex "$new", $P101 
    .lex "self", _lex_param_0 
    .lex "$target", _lex_param_1 
    .lex "$p", _lex_param_2 
    .lex "$c", _lex_param_3 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P101, $P5001
.annotate 'line', 470
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
    unless $I5002 goto if184_else549 
.annotate 'line', 474
    find_lex $P5007, "$?CLASS"
    repr_bind_attr_int $P101, $P5007, "$!from", -1
    find_lex $P5008, "$?CLASS"
    set $I5003, _lex_param_3
    repr_bind_attr_int $P101, $P5008, "$!pos", $I5003
    set $I5006, $I5003
    goto if184_end550
  if184_else549:
.annotate 'line', 478
    find_lex $P5009, "$?CLASS"
    set $I5004, _lex_param_2
    repr_bind_attr_int $P101, $P5009, "$!from", $I5004
    find_lex $P5010, "$?CLASS"
    set $I5005, _lex_param_2
    repr_bind_attr_int $P101, $P5010, "$!pos", $I5005
    set $I5006, $I5005
  if184_end550:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "!cursor_start" :subid("cuid_31_1347804141.46") :anon :lex :outer("cuid_66_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 485
    .param pmc _lex_param_0 
    .lex "$new", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
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

            $P0 = getinterp
            $P5009 = $P0['sub';1]
        
    setattribute $P101, $P5008, "$!regexsub", $P5009
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_obj $P5012, $P5010, $P5011, "$!restart"
    set $P5037, $P5012
    unless $P5012 goto if185_end554 
.annotate 'line', 492
    find_lex $P5013, "$?CLASS"
    nqp_decontainerize $P5014, _lex_param_0
    find_lex $P5015, "$?CLASS"
    repr_get_attr_int $I5001, $P5014, $P5015, "$!pos"
    repr_bind_attr_int $P101, $P5013, "$!pos", $I5001
    nqp_decontainerize $P5016, _lex_param_0
    find_lex $P5017, "$?CLASS"
    repr_get_attr_obj $P5018, $P5016, $P5017, "$!cstack"
    set $P5024, $P5018
    unless $P5018 goto if186_end556 
    find_lex $P5019, "$?CLASS"
    nqp_decontainerize $P5021, _lex_param_0
    find_lex $P5022, "$?CLASS"
    repr_get_attr_obj $P5023, $P5021, $P5022, "$!cstack"
    clone $P5020, $P5023
    setattribute $P101, $P5019, "$!cstack", $P5020
    set $P5024, $P5020
  if186_end556:
    find_lex $P5025, "$?CLASS"
    nqp_decontainerize $P5026, _lex_param_0
    find_lex $P5027, "$?CLASS"
    repr_get_attr_str $S5001, $P5026, $P5027, "$!target"
    repr_bind_attr_str $P101, $P5025, "$!target", $S5001
    find_lex $P5028, "$?CLASS"
    nqp_decontainerize $P5029, _lex_param_0
    find_lex $P5030, "$?CLASS"
    repr_get_attr_int $I5002, $P5029, $P5030, "$!from"
    repr_bind_attr_int $P101, $P5028, "$!from", $I5002
    find_lex $P5031, "$?CLASS"
    find_lex $P5032, "$?CLASS"
    nqp_decontainerize $P5034, _lex_param_0
    find_lex $P5035, "$?CLASS"
    repr_get_attr_obj $P5036, $P5034, $P5035, "$!bstack"
    clone $P5033, $P5036
    setattribute $P101, $P5032, "$!bstack", $P5033
    .return ($P101, $S5001, $I5002, $P5031, $P5033, 1)
    set $P5037, $P101
  if185_end554:
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
.sub "!cursor_start_subcapture" :subid("cuid_32_1347804141.46") :anon :lex :outer("cuid_66_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 514
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$new", $P101 
    .lex "self", _lex_param_0 
    .lex "$from", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
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
.sub "!cursor_capture" :subid("cuid_33_1347804141.46") :anon :lex :outer("cuid_66_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 523
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
    box $P5011, $I5001
    set $P5010, $P5011
    if $I5001 goto unless187_end558 
    nqp_decontainerize $P5007, _lex_param_0
    find_lex $P5008, "$?CLASS"
    new $P5009, 'ResizablePMCArray'
    repr_bind_attr_obj $P5007, $P5008, "$!cstack", $P5009
    set $P5010, $P5009
  unless187_end558:
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_obj $P5014, $P5012, $P5013, "$!cstack"
    push $P5014, _lex_param_1
    find_lex $P5015, "$?CLASS"
    setattribute _lex_param_1, $P5015, "$!name", _lex_param_2
    nqp_decontainerize $P5016, _lex_param_0
    find_lex $P5017, "$?CLASS"
    repr_get_attr_obj $P5018, $P5016, $P5017, "$!bstack"
    push $P5018, 0
    nqp_decontainerize $P5019, _lex_param_0
    find_lex $P5020, "$?CLASS"
    repr_get_attr_obj $P5021, $P5019, $P5020, "$!bstack"
    nqp_decontainerize $P5022, _lex_param_0
    find_lex $P5023, "$?CLASS"
    repr_get_attr_int $I5002, $P5022, $P5023, "$!pos"
    push $P5021, $I5002
    nqp_decontainerize $P5024, _lex_param_0
    find_lex $P5025, "$?CLASS"
    repr_get_attr_obj $P5026, $P5024, $P5025, "$!bstack"
    push $P5026, 0
    nqp_decontainerize $P5027, _lex_param_0
    find_lex $P5028, "$?CLASS"
    repr_get_attr_obj $P5029, $P5027, $P5028, "$!bstack"
    nqp_decontainerize $P5030, _lex_param_0
    find_lex $P5031, "$?CLASS"
    repr_get_attr_obj $P5032, $P5030, $P5031, "$!cstack"
    elements $I5003, $P5032
    push $P5029, $I5003
    nqp_decontainerize $P5033, _lex_param_0
    find_lex $P5034, "$?CLASS"
    repr_get_attr_obj $P5035, $P5033, $P5034, "$!cstack"
    .return ($P5035) 
.end
.HLL "nqp"
.namespace []
.sub "!cursor_push_cstack" :subid("cuid_34_1347804141.46") :anon :lex :outer("cuid_66_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 535
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$capture", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    find_lex $P5002, "$?CLASS"
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!cstack"
    defined $I5001, $P5003
    box $P5008, $I5001
    set $P5007, $P5008
    if $I5001 goto unless188_end560 
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    new $P5006, 'ResizablePMCArray'
    repr_bind_attr_obj $P5004, $P5005, "$!cstack", $P5006
    set $P5007, $P5006
  unless188_end560:
    nqp_decontainerize $P5009, _lex_param_0
    find_lex $P5010, "$?CLASS"
    repr_get_attr_obj $P5011, $P5009, $P5010, "$!cstack"
    push $P5011, _lex_param_1
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_obj $P5014, $P5012, $P5013, "$!cstack"
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "!cursor_pass" :subid("cuid_35_1347804141.46") :anon :lex :outer("cuid_66_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 542
    .param pmc _lex_param_0 
    .param int _lex_param_1 
    .param pmc _lex_param_2 :optional 
    .param int haz_param_13 :opt_flag 
    .param pmc _lex_param_3 :named("backtrack") :optional 
    .param int haz_param_14 :opt_flag 
    if haz_param_13, default567
    nqp_get_sc_object $P5019, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set _lex_param_2, $P5019
  default567:
    if haz_param_14, default568
    nqp_get_sc_object $P5020, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set _lex_param_3, $P5020
  default568:
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
    set $P5011, _lex_param_3
    unless _lex_param_3 goto if189_end562 
    nqp_decontainerize $P5006, _lex_param_0
    find_lex $P5007, "$?CLASS"
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_obj $P5010, $P5008, $P5009, "$!regexsub"
    repr_bind_attr_obj $P5006, $P5007, "$!restart", $P5010
    set $P5011, $P5010
  if189_end562:
    set $P5015, _lex_param_3
    if _lex_param_3 goto unless190_end564 
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    null $P5014
    repr_bind_attr_obj $P5012, $P5013, "$!bstack", $P5014
    set $P5015, $P5014
  unless190_end564:
    set $P5018, _lex_param_2
    unless _lex_param_2 goto if191_end566 
.annotate 'line', 549
    nqp_decontainerize $P5016, _lex_param_0
    $P5017 = $P5016."!reduce"(_lex_param_2)
    set $P5018, $P5017
  if191_end566:
    .return ($P5018) 
.end
.HLL "nqp"
.namespace []
.sub "!cursor_fail" :subid("cuid_36_1347804141.46") :anon :lex :outer("cuid_66_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 552
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
.sub "!cursor_next" :subid("cuid_37_1347804141.46") :anon :lex :outer("cuid_66_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 558
    .param pmc _lex_param_0 
    .const 'Sub' $P5012 = 'cuid_87_1347804141.46' 
    capture_lex $P5012 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    find_lex $P5002, "$?CLASS"
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!restart"
    unless $P5003 goto if192_else569 
.annotate 'line', 559
.annotate 'line', 560
    nqp_decontainerize $P5007, _lex_param_0
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!restart"
    $P5008 = $P5006($P5007)
    set $P5011, $P5008
    goto if192_end570
  if192_else569:
    .const 'Sub' $P5009 = 'cuid_87_1347804141.46' 
    capture_lex $P5009
    $P5010 = $P5009()
    set $P5011, $P5010
  if192_end570:
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_87_1347804141.46") :anon :lex :outer("cuid_37_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 562
    .lex "$cur", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P101, $P5001
.annotate 'line', 563
    find_lex $P5003, "self"
    nqp_decontainerize $P5002, $P5003
    $P5004 = $P5002."!cursor_start"()
    set $P101, $P5004
.annotate 'line', 564
    $P5005 = $P101."!cursor_fail"()
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "!cursor_more" :subid("cuid_38_1347804141.46") :anon :lex :outer("cuid_66_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 569
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy :named 
    .lex "$new", $P101 
    .lex "self", _lex_param_0 
    .lex "%opts", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P101, $P5001
    root_new $P102, ['parrot';'Continuation']
    set_label $P102, lexotic_571
    .lex "RETURN", $P102
    set $P5002, _lex_param_1["ex"]
    unless_null $P5002, fallback575
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5002, $P5003
  fallback575:
    set $P5008, $P5002
    unless $P5002 goto if193_end574 
.annotate 'line', 570
    nqp_decontainerize $P5005, _lex_param_0
    $P5006 = $P5005."!cursor_next"()
    find_lex $P5004, "RETURN"
    $P5007 = $P5004($P5006)
    set $P5008, $P5007
  if193_end574:
.annotate 'line', 571
    nqp_decontainerize $P5009, _lex_param_0
    $P5010 = $P5009."CREATE"()
    set $P101, $P5010
    find_lex $P5011, "$?CLASS"
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_obj $P5014, $P5012, $P5013, "$!orig"
    setattribute $P101, $P5011, "$!orig", $P5014
    find_lex $P5015, "$?CLASS"
    nqp_decontainerize $P5016, _lex_param_0
    find_lex $P5017, "$?CLASS"
    repr_get_attr_str $S5001, $P5016, $P5017, "$!target"
    repr_bind_attr_str $P101, $P5015, "$!target", $S5001
    find_lex $P5018, "$?CLASS"
    repr_bind_attr_int $P101, $P5018, "$!from", -1
    find_lex $P5019, "$?CLASS"
    set $P5020, _lex_param_1["ov"]
    unless_null $P5020, fallback580
    nqp_get_sc_object $P5021, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5020, $P5021
  fallback580:
    set $P5026, $P5020
    if $P5020 goto unless195_end579 
    nqp_decontainerize $P5022, _lex_param_0
    find_lex $P5023, "$?CLASS"
    repr_get_attr_int $I5002, $P5022, $P5023, "$!from"
    set $N5001, $I5002
    nqp_decontainerize $P5024, _lex_param_0
    find_lex $P5025, "$?CLASS"
    repr_get_attr_int $I5003, $P5024, $P5025, "$!pos"
    set $N5002, $I5003
    isge $I5001, $N5001, $N5002
    box $P5027, $I5001
    set $P5026, $P5027
  unless195_end579:
    unless $P5026 goto if194_else576 
    nqp_decontainerize $P5028, _lex_param_0
    find_lex $P5029, "$?CLASS"
    repr_get_attr_int $I5004, $P5028, $P5029, "$!from"
    set $N5004, $I5004
    set $N5005, 1
    add $N5003, $N5004, $N5005
    box $P5033, $N5003
    set $P5032, $P5033
    goto if194_end577
  if194_else576:
    nqp_decontainerize $P5030, _lex_param_0
    find_lex $P5031, "$?CLASS"
    repr_get_attr_int $I5005, $P5030, $P5031, "$!pos"
    box $P5034, $I5005
    set $P5032, $P5034
  if194_end577:
    set $I5006, $P5032
    repr_bind_attr_int $P101, $P5019, "$!pos", $I5006
.annotate 'line', 577
    nqp_decontainerize $P5035, _lex_param_0
    find_lex $P5036, "$?CLASS"
    repr_get_attr_obj $P5037, $P5035, $P5036, "$!regexsub"
    $P5038 = $P5037($P101)
    goto lexotic_572
  lexotic_571:
    .get_results ($P5038)
  lexotic_572:
    .return ($P5038) 
.end
.HLL "nqp"
.namespace []
.sub "!reduce" :subid("cuid_39_1347804141.46") :anon :lex :outer("cuid_66_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 580
    .param pmc _lex_param_0 
    .param string _lex_param_1 
    .lex "$actions", $P101 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P101, $P5001
    find_dynamic_lex $P5002, "$*ACTIONS"
    set $P101, $P5002
    isnull $I5002, $P101
    box $P5003, $I5002
    isfalse $I5001, $P5003
    set $I5004, $I5001
    unless $I5001 goto if197_end584 
    can $I5003, $P101, _lex_param_1
    set $I5004, $I5003
  if197_end584:
    box $P5009, $I5004
    set $P5008, $P5009
    unless $I5004 goto if196_end582 
.annotate 'line', 582
    nqp_decontainerize $P5005, _lex_param_0
    $P5006 = $P5005."MATCH"()
    find_method $P5004, $P101, _lex_param_1
    $P5007 = $P5004($P101, $P5006)
    set $P5008, $P5007
  if196_end582:
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "!reduce_with_match" :subid("cuid_40_1347804141.46") :anon :lex :outer("cuid_66_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 586
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .lex "$actions", $P101 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    .lex "$key", _lex_param_2 
    .lex "$match", _lex_param_3 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P101, $P5001
    find_dynamic_lex $P5002, "$*ACTIONS"
    set $P101, $P5002
    isnull $I5002, $P101
    box $P5003, $I5002
    isfalse $I5001, $P5003
    set $I5004, $I5001
    unless $I5001 goto if199_end588 
    set $S5001, _lex_param_1
    can $I5003, $P101, $S5001
    set $I5004, $I5003
  if199_end588:
    box $P5007, $I5004
    set $P5006, $P5007
    unless $I5004 goto if198_end586 
.annotate 'line', 588
    set $S5002, _lex_param_1
    find_method $P5004, $P101, $S5002
    $P5005 = $P5004($P101, _lex_param_3, _lex_param_2)
    set $P5006, $P5005
  if198_end586:
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "!protoregex" :subid("cuid_41_1347804141.46") :anon :lex :outer("cuid_66_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 593
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5031 = 'cuid_88_1347804141.46' 
    capture_lex $P5031 
    .lex "$nfa", $P101 
    .lex "@fates", $P102 
    .lex "@rxfate", $P103 
    .lex "$cur", $P104 
    .lex "$rxname", $P105 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P101, $P5001
    new $P5002, 'ResizablePMCArray'
    set $P102, $P5002
    new $P5003, 'ResizablePMCArray'
    set $P103, $P5003
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P104, $P5004
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P105, $P5005
.annotate 'line', 595
    nqp_decontainerize $P5007, _lex_param_0
    get_how $P5006, $P5007
    nqp_decontainerize $P5008, _lex_param_0
    .const 'Sub' $P5010 = 'cuid_88_1347804141.46' 
    capture_lex $P5010
    newclosure $P5009, $P5010
    $P5011 = $P5006."cache"($P5008, _lex_param_1, $P5009)
    set $P101, $P5011
.annotate 'line', 596
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_str $S5001, $P5012, $P5013, "$!target"
    nqp_decontainerize $P5014, _lex_param_0
    find_lex $P5015, "$?CLASS"
    repr_get_attr_int $I5001, $P5014, $P5015, "$!pos"
    $P5016 = $P101."run"($S5001, $I5001)
    set $P102, $P5016
.annotate 'line', 599
    $P5018 = $P101."states"()
    set $P5017, $P5018[0]
    unless_null $P5017, fallback589
    nqp_get_sc_object $P5019, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5017, $P5019
  fallback589:
    set $P103, $P5017
  while200_test590:
    set $P5027, $P102
    unless $P102 goto while200_done594 
  while200_redo592:
.annotate 'line', 602
    pop $I5002, $P102
    set $P5020, $P103[$I5002]
    set $P105, $P5020
.annotate 'line', 605
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
    unless $I5003 goto if201_end596 
    find_lex $P5024, "@EMPTY"
    set $P102, $P5024
    set $P5025, $P102
  if201_end596:
    set $P5027, $P5025
    goto while200_test590 
  while200_done594:
    set $P5028, $P104
    defined $I5005, $P5028
    if $I5005, defor597
.annotate 'line', 608
    nqp_decontainerize $P5029, _lex_param_0
    $P5030 = $P5029."!cursor_start"()
    set $P5028, $P5030
  defor597:
    .return ($P5028) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_88_1347804141.46") :anon :lex :outer("cuid_41_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 595

    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    find_lex $P5003, "$name"
    $P5004 = $P5001."!protoregex_nfa"($P5003)
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "!protoregex_nfa" :subid("cuid_42_1347804141.46") :anon :lex :outer("cuid_66_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 611
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5028 = 'cuid_89_1347804141.46' 
    capture_lex $P5028 
    .const 'Sub' $P5028 = 'cuid_90_1347804141.46' 
    capture_lex $P5028 
    .lex "%protorx", $P101 
    .lex "$nfa", $P102 
    .lex "@fates", $P103 
    .lex "$start", $I101 
    .lex "$fate", $I102 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    new $P5001, 'Hash'
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P102, $P5002
    new $P5003, 'ResizablePMCArray'
    set $P103, $P5003
    set $I101, 0
    set $I102, 0
.annotate 'line', 612
    nqp_decontainerize $P5005, _lex_param_0
    get_how $P5004, $P5005
    nqp_decontainerize $P5006, _lex_param_0
    .const 'Sub' $P5008 = 'cuid_89_1347804141.46' 
    capture_lex $P5008
    newclosure $P5007, $P5008
    $P5009 = $P5004."cache"($P5006, "!protoregex_table", $P5007)
    set $P101, $P5009
.annotate 'line', 613
    nqp_get_sc_object $P5013, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 0
    nqp_get_package_through_who $P5012, $P5013, "QRegex"
    get_who $P5011, $P5012
    set $P5010, $P5011["NFA"]
    unless_null $P5010, fallback598
    nqp_get_sc_object $P5014, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5010, $P5014
  fallback598:
    $P5015 = $P5010."new"()
    set $P102, $P5015
.annotate 'line', 614
    $P5017 = $P102."states"()
    set $P5016, $P5017[0]
    unless_null $P5016, fallback599
    nqp_get_sc_object $P5018, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5016, $P5018
  fallback599:
    set $P103, $P5016
    set $I101, 1
    set $I102, 0
    set $S5001, _lex_param_1
    exists $I5001, $P101[$S5001]
    box $P5027, $I5001
    set $P5026, $P5027
    unless $I5001 goto if202_end601 
.annotate 'line', 617
    set $S5002, _lex_param_1
    set $P5022, $P101[$S5002]
    unless_null $P5022, fallback602
    nqp_get_sc_object $P5023, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5022, $P5023
  fallback602:
    set $P5019, $P5022
    iter $P5021, $P5022
  for_next603:
    unless $P5021, for_done605
    shift $P5025, $P5021
  for_redo604:
    .const 'Sub' $P5024 = 'cuid_90_1347804141.46' 
    capture_lex $P5024
    $P5019 = $P5024($P5025)
    goto for_next603
  for_done605:
    set $P5026, $P5019
  if202_end601:
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_89_1347804141.46") :anon :lex :outer("cuid_42_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 612

    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    $P5003 = $P5001."!protoregex_table"()
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_90_1347804141.46") :anon :lex :outer("cuid_42_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 618
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
.annotate 'line', 621
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
.sub "!protoregex_table" :subid("cuid_43_1347804141.46") :anon :lex :outer("cuid_66_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 627
    .param pmc _lex_param_0 
    .const 'Sub' $P5011 = 'cuid_92_1347804141.46' 
    capture_lex $P5011 
    .lex "%protorx", $P101 
    .lex "self", _lex_param_0 
    new $P5001, 'Hash'
    set $P101, $P5001
.annotate 'line', 629
    nqp_decontainerize $P5006, _lex_param_0
    get_how $P5005, $P5006
    nqp_decontainerize $P5007, _lex_param_0
    $P5008 = $P5005."methods"($P5007)
    set $P5002, $P5008
    iter $P5004, $P5008
  for_next611:
    unless $P5004, for_done613
    shift $P5010, $P5004
  for_redo612:
    .const 'Sub' $P5009 = 'cuid_92_1347804141.46' 
    capture_lex $P5009
    $P5002 = $P5009($P5010)
    goto for_next611
  for_done613:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_92_1347804141.46") :anon :lex :outer("cuid_43_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 629
    .param pmc _lex_param_0 
    .const 'Sub' $P5005 = 'cuid_91_1347804141.46' 
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
    unless $I5002 goto if203_end607 
    .const 'Sub' $P5001 = 'cuid_91_1347804141.46' 
    capture_lex $P5001
    $P5002 = $P5001()
    set $P5003, $P5002
  if203_end607:
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_91_1347804141.46") :anon :lex :outer("cuid_92_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 632
    .lex "$prefix", $S101 
    set $S101, ""
    find_lex $S5002, "$methname"
    find_lex $I5001, "$sympos"
    substr $S5001, $S5002, 0, $I5001
    set $S101, $S5001
    find_lex $P5001, "%protorx"
    exists $I5002, $P5001[$S101]
    box $P5005, $I5002
    set $P5004, $P5005
    if $I5002 goto unless204_end609 
    find_lex $P5002, "%protorx"
    new $P5003, 'ResizablePMCArray'
    set $P5002[$S101], $P5003
    set $P5004, $P5003
  unless204_end609:
    find_lex $P5007, "%protorx"
    set $P5006, $P5007[$S101]
    unless_null $P5006, fallback610
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5006, $P5008
  fallback610:
    find_lex $S5003, "$methname"
    box $P5009, $S5003
    push $P5006, $P5009
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "!alt" :subid("cuid_44_1347804141.46") :anon :lex :outer("cuid_66_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 641
    .param pmc _lex_param_0 
    .param int _lex_param_1 
    .param string _lex_param_2 
    .param pmc _lex_param_3 :optional 
    .param int haz_param_15 :opt_flag 
    .const 'Sub' $P5018 = 'cuid_93_1347804141.46' 
    capture_lex $P5018 
    if haz_param_15, default614
    new $P5017, 'ResizablePMCArray'
    set _lex_param_3, $P5017
  default614:
    .lex "$nfa", $P101 
    .lex "self", _lex_param_0 
    .lex "$pos", _lex_param_1 
    .lex "$name", _lex_param_2 
    .lex "@labels", _lex_param_3 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P101, $P5001
.annotate 'line', 642
    nqp_decontainerize $P5003, _lex_param_0
    get_how $P5002, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    .const 'Sub' $P5006 = 'cuid_93_1347804141.46' 
    capture_lex $P5006
    newclosure $P5005, $P5006
    $P5007 = $P5002."cache"($P5004, _lex_param_2, $P5005)
    set $P101, $P5007
.annotate 'line', 643
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
.sub "" :subid("cuid_93_1347804141.46") :anon :lex :outer("cuid_44_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 642

    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    find_lex $S5001, "$name"
    find_lex $P5003, "@labels"
    $P5004 = $P5001."!alt_nfa"($S5001, $P5003)
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "!alt_nfa" :subid("cuid_45_1347804141.46") :anon :lex :outer("cuid_66_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 646
    .param pmc _lex_param_0 
    .param string _lex_param_1 
    .param pmc _lex_param_2 
    .const 'Sub' $P5021 = 'cuid_94_1347804141.46' 
    capture_lex $P5021 
    .lex "$nfa", $P101 
    .lex "@fates", $P102 
    .lex "$start", $I101 
    .lex "$fate", $I102 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    .lex "@labels", _lex_param_2 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P101, $P5001
    new $P5002, 'ResizablePMCArray'
    set $P102, $P5002
    set $I101, 0
    set $I102, 0
.annotate 'line', 647
    nqp_get_sc_object $P5006, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 0
    nqp_get_package_through_who $P5005, $P5006, "QRegex"
    get_who $P5004, $P5005
    set $P5003, $P5004["NFA"]
    unless_null $P5003, fallback615
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5003, $P5007
  fallback615:
    $P5008 = $P5003."new"()
    set $P101, $P5008
.annotate 'line', 648
    $P5010 = $P101."states"()
    set $P5009, $P5010[0]
    unless_null $P5009, fallback616
    nqp_get_sc_object $P5011, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5009, $P5011
  fallback616:
    set $P102, $P5009
    set $I101, 1
    set $I102, 0
.annotate 'line', 651
    nqp_decontainerize $P5015, _lex_param_0
    find_lex $P5016, "$?CLASS"
    repr_get_attr_obj $P5017, $P5015, $P5016, "$!regexsub"
    $P5018 = $P5017."nqpattr"(_lex_param_1)
    set $P5012, $P5018
    iter $P5014, $P5018
  for_next618:
    unless $P5014, for_done620
    shift $P5020, $P5014
  for_redo619:
    .const 'Sub' $P5019 = 'cuid_94_1347804141.46' 
    capture_lex $P5019
    $P5012 = $P5019($P5020)
    goto for_next618
  for_done620:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_94_1347804141.46") :anon :lex :outer("cuid_45_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 651
    .param pmc _lex_param_0 
    .lex "$label", $P101 
    .lex "$_", _lex_param_0 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P101, $P5001
    find_lex $P5003, "@labels"
    find_lex $I5001, "$fate"
    set $P5002, $P5003[$I5001]
    unless_null $P5002, fallback617
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5002, $P5004
  fallback617:
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
.annotate 'line', 655
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
.sub "!BACKREF" :subid("cuid_46_1347804141.46") :anon :lex :outer("cuid_66_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 660
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5034 = 'cuid_95_1347804141.46' 
    capture_lex $P5034 
    .lex "$cur", $P101 
    .lex "$n", $I101 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    .local pmc tmp_2 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P101, $P5001
    set $I101, 0
.annotate 'line', 661
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start"()
    set $P101, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!cstack"
    unless $P5006 goto if205_else621 
    nqp_decontainerize $P5007, _lex_param_0
    find_lex $P5008, "$?CLASS"
    repr_get_attr_obj $P5009, $P5007, $P5008, "$!cstack"
    elements $I5001, $P5009
    set $N5002, $I5001
    set $N5003, 1
    sub $N5001, $N5002, $N5003
    box $P5011, $N5001
    set $P5010, $P5011
    goto if205_end622
  if205_else621:
    box $P5012, -1
    set $P5010, $P5012
  if205_end622:
    set $I5002, $P5010
    set $I101, $I5002
    new $P5028, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5028, while206_handlers626
    push_eh $P5028
  while206_test623:
    set $N5004, $I101
    set $N5005, 0
    isge $I5003, $N5004, $N5005
    set $I5007, $I5003
    unless $I5003 goto if207_end629 
    nqp_decontainerize $P5015, _lex_param_0
    find_lex $P5016, "$?CLASS"
    repr_get_attr_obj $P5017, $P5015, $P5016, "$!cstack"
    set $P5014, $P5017[$I101]
    unless_null $P5014, fallback632
    nqp_get_sc_object $P5018, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5014, $P5018
  fallback632:
    find_lex $P5019, "$?CLASS"
    getattribute $P5013, $P5014, $P5019, "$!name"
    isnull $I5004, $P5013
    set $I5006, $I5004
    if $I5004 goto unless208_end631 
    nqp_decontainerize $P5022, _lex_param_0
    find_lex $P5023, "$?CLASS"
    repr_get_attr_obj $P5024, $P5022, $P5023, "$!cstack"
    set $P5021, $P5024[$I101]
    unless_null $P5021, fallback633
    nqp_get_sc_object $P5025, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5021, $P5025
  fallback633:
    find_lex $P5026, "$?CLASS"
    getattribute $P5020, $P5021, $P5026, "$!name"
    set $S5001, $P5020
    set $S5002, _lex_param_1
    isne $I5005, $S5001, $S5002
    set $I5006, $I5005
  unless208_end631:
    set $I5007, $I5006
  if207_end629:
    box $P5029, $I5007
    set $P5027, $P5029
    unless $I5007 goto while206_done627 
  while206_redo625:
    box $P5027, $I101
    set tmp_2, $P5027
    set $N5007, tmp_2
    set $N5008, 1
    sub $N5006, $N5007, $N5008
    set $I5008, $N5006
    set $I101, $I5008
    set $P5027, tmp_2
    goto while206_test623 
  while206_handlers626:
    .get_results ($P5028)
    pop_upto_eh $P5028
    getattribute $P5028, $P5028, 'type'
    eq $P5028, .CONTROL_LOOP_NEXT, while206_test623
    eq $P5028, .CONTROL_LOOP_REDO, while206_redo625
  while206_done627:
    pop_eh 
    set $N5006, $I101
    set $N5007, 0
    isge $I5008, $N5006, $N5007
    box $P5033, $I5008
    set $P5032, $P5033
    unless $I5008 goto if209_end635 
    .const 'Sub' $P5030 = 'cuid_95_1347804141.46' 
    capture_lex $P5030
    $P5031 = $P5030()
    set $P5032, $P5031
  if209_end635:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_95_1347804141.46") :anon :lex :outer("cuid_46_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 665
    .lex "$subcur", $P101 
    .lex "$litlen", $I101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P101, $P5001
    set $I101, 0
    find_lex $P5004, "self"
    nqp_decontainerize $P5003, $P5004
    find_lex $P5005, "$?CLASS"
    repr_get_attr_obj $P5006, $P5003, $P5005, "$!cstack"
    find_lex $I5001, "$n"
    set $P5002, $P5006[$I5001]
    unless_null $P5002, fallback636
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5002, $P5007
  fallback636:
    set $P101, $P5002
.annotate 'line', 667
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
.annotate 'line', 670
    $P5019 = $P101."from"()
    set $I5005, $P5019
    substr $S5003, $S5004, $I5005, $I101
    iseq $I5003, $S5001, $S5003
    box $P5026, $I5003
    set $P5025, $P5026
    unless $I5003 goto if210_end638 
.annotate 'line', 668
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
  if210_end638:
    .return ($P5025) 
.end
.HLL "nqp"
.namespace []
.sub "!LITERAL" :subid("cuid_47_1347804141.46") :anon :lex :outer("cuid_66_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 675
    .param pmc _lex_param_0 
    .param string _lex_param_1 
    .param int _lex_param_2 :optional 
    .param int haz_param_16 :opt_flag 
    if haz_param_16, default645
    set $I5010, 0
    set _lex_param_2, $I5010
  default645:
    .lex "$cur", $P101 
    .lex "$litlen", $I101 
    .lex "self", _lex_param_0 
    .lex "$str", _lex_param_1 
    .lex "$i", _lex_param_2 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P101, $P5001
    set $I101, 0
.annotate 'line', 676
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start"()
    set $P101, $P5003
    length $I5001, _lex_param_1
    set $I101, $I5001
    set $N5001, $I101
    set $N5002, 1
    islt $I5002, $N5001, $N5002
    set $I5008, $I5002
    if $I5002 goto unless212_end642 
    unless _lex_param_2 goto if213_else643 
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
    goto if213_end644
  if213_else643:
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_str $S5006, $P5008, $P5009, "$!target"
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5006, $P5010, $P5011, "$!pos"
    substr $S5005, $S5006, $I5006, $I101
    iseq $I5005, $S5005, _lex_param_1
    set $I5007, $I5005
  if213_end644:
    set $I5008, $I5007
  unless212_end642:
    box $P5016, $I5008
    set $P5015, $P5016
    unless $I5008 goto if211_end640 
.annotate 'line', 678
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5009, $P5012, $P5013, "$!pos"
    set $N5004, $I5009
    set $N5005, $I101
    add $N5003, $N5004, $N5005
    $P5014 = $P101."!cursor_pass"($N5003)
    set $P5015, $P5014
  if211_end640:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "at" :subid("cuid_48_1347804141.46") :anon :lex :outer("cuid_66_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 685
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    .lex "$pos", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P101, $P5001
.annotate 'line', 686
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start"()
    set $P101, $P5003
    set $N5001, _lex_param_1
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_int $I5002, $P5004, $P5005, "$!pos"
    set $N5002, $I5002
    iseq $I5001, $N5001, $N5002
    box $P5010, $I5001
    set $P5009, $P5010
    unless $I5001 goto if214_end647 
.annotate 'line', 687
    nqp_decontainerize $P5006, _lex_param_0
    find_lex $P5007, "$?CLASS"
    repr_get_attr_int $I5003, $P5006, $P5007, "$!pos"
    $P5008 = $P101."!cursor_pass"($I5003)
    set $P5009, $P5008
  if214_end647:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "before" :subid("cuid_49_1347804141.46") :anon :lex :outer("cuid_66_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 691
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    .lex "$regex", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P101, $P5001
.annotate 'line', 692
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start"()
    set $P101, $P5003
    find_lex $P5004, "$?CLASS"
    nqp_decontainerize $P5005, _lex_param_0
    find_lex $P5006, "$?CLASS"
    repr_get_attr_int $I5001, $P5005, $P5006, "$!pos"
    repr_bind_attr_int $P101, $P5004, "$!pos", $I5001
.annotate 'line', 694
    $P5007 = _lex_param_1($P101)
    find_lex $P5008, "$?CLASS"
    repr_get_attr_int $I5003, $P5007, $P5008, "$!pos"
    set $N5001, $I5003
    set $N5002, 0
    isge $I5002, $N5001, $N5002
    unless $I5002 goto if215_else648 
.annotate 'line', 695
    nqp_decontainerize $P5009, _lex_param_0
    find_lex $P5010, "$?CLASS"
    repr_get_attr_int $I5004, $P5009, $P5010, "$!pos"
    $P5011 = $P101."!cursor_pass"($I5004, "before")
    set $P5013, $P5011
    goto if215_end649
  if215_else648:
    find_lex $P5012, "$?CLASS"
    repr_bind_attr_int $P101, $P5012, "$!pos", -3
    box $P5014, -3
    set $P5013, $P5014
  if215_end649:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "after" :subid("cuid_50_1347804141.46") :anon :lex :outer("cuid_66_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 702
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    .lex "$regex", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P101, $P5001
.annotate 'line', 703
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start"()
    set $P101, $P5003
    find_lex $P5004, "$?CLASS"
.annotate 'line', 704
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
.annotate 'line', 707
    $P5019 = _lex_param_1($P101)
    find_lex $P5020, "$?CLASS"
    repr_get_attr_int $I5008, $P5019, $P5020, "$!pos"
    set $N5007, $I5008
    set $N5008, 0
    isge $I5007, $N5007, $N5008
    unless $I5007 goto if216_else650 
.annotate 'line', 708
    nqp_decontainerize $P5021, _lex_param_0
    find_lex $P5022, "$?CLASS"
    repr_get_attr_int $I5009, $P5021, $P5022, "$!pos"
    $P5023 = $P101."!cursor_pass"($I5009, "after")
    set $P5025, $P5023
    goto if216_end651
  if216_else650:
    find_lex $P5024, "$?CLASS"
    repr_bind_attr_int $P101, $P5024, "$!pos", -3
    box $P5026, -3
    set $P5025, $P5026
  if216_end651:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "ws" :subid("cuid_51_1347804141.46") :anon :lex :outer("cuid_66_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 713
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P101, $P5001
.annotate 'line', 715
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
    unless $I5001 goto if217_else652 
.annotate 'line', 717
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_int $I5004, $P5008, $P5009, "$!pos"
    $P5010 = $P101."!cursor_pass"($I5004, "ws")
    set $P5032, $P5010
    goto if217_end653
  if217_else652:
    nqp_decontainerize $P5011, _lex_param_0
    find_lex $P5012, "$?CLASS"
    repr_get_attr_int $I5006, $P5011, $P5012, "$!pos"
    set $N5003, $I5006
    set $N5004, 1
    islt $I5005, $N5003, $N5004
    set $I5010, $I5005
    if $I5005 goto unless220_end659 
    nqp_decontainerize $P5013, _lex_param_0
    find_lex $P5014, "$?CLASS"
    repr_get_attr_str $S5002, $P5013, $P5014, "$!target"
    nqp_decontainerize $P5015, _lex_param_0
    find_lex $P5016, "$?CLASS"
    repr_get_attr_int $I5009, $P5015, $P5016, "$!pos"
    is_cclass $I5008, .CCLASS_WORD, $S5002, $I5009
    box $P5017, $I5008
    isfalse $I5007, $P5017
    set $I5010, $I5007
  unless220_end659:
    set $I5015, $I5010
    if $I5010 goto unless219_end657 
    nqp_decontainerize $P5018, _lex_param_0
    find_lex $P5019, "$?CLASS"
    repr_get_attr_str $S5003, $P5018, $P5019, "$!target"
    nqp_decontainerize $P5020, _lex_param_0
    find_lex $P5021, "$?CLASS"
    repr_get_attr_int $I5013, $P5020, $P5021, "$!pos"
    set $N5006, $I5013
    set $N5007, 1
    sub $N5005, $N5006, $N5007
    set $I5014, $N5005
    is_cclass $I5012, .CCLASS_WORD, $S5003, $I5014
    box $P5022, $I5012
    isfalse $I5011, $P5022
    set $I5015, $I5011
  unless219_end657:
    box $P5031, $I5015
    set $P5030, $P5031
    unless $I5015 goto if218_end655 
.annotate 'line', 721
    nqp_decontainerize $P5023, _lex_param_0
    find_lex $P5024, "$?CLASS"
    repr_get_attr_str $S5004, $P5023, $P5024, "$!target"
    nqp_decontainerize $P5025, _lex_param_0
    find_lex $P5026, "$?CLASS"
    repr_get_attr_int $I5017, $P5025, $P5026, "$!pos"
    nqp_decontainerize $P5027, _lex_param_0
    find_lex $P5028, "$?CLASS"
    repr_get_attr_str $S5005, $P5027, $P5028, "$!target"
    length $I5018, $S5005
    find_not_cclass $I5016, .CCLASS_WHITESPACE, $S5004, $I5017, $I5018
    $P5029 = $P101."!cursor_pass"($I5016, "ws")
    set $P5030, $P5029
  if218_end655:
    set $P5032, $P5030
  if217_end653:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "ww" :subid("cuid_52_1347804141.46") :anon :lex :outer("cuid_66_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 728
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P101, $P5001
.annotate 'line', 729
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
    unless $I5001 goto if224_end667 
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
  if224_end667:
    set $I5009, $I5006
    unless $I5006 goto if223_end665 
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_str $S5002, $P5010, $P5011, "$!target"
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5008, $P5012, $P5013, "$!pos"
    is_cclass $I5007, .CCLASS_WORD, $S5002, $I5008
    set $I5009, $I5007
  if223_end665:
    set $I5013, $I5009
    unless $I5009 goto if222_end663 
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
  if222_end663:
    box $P5022, $I5013
    set $P5021, $P5022
    unless $I5013 goto if221_end661 
.annotate 'line', 730
    nqp_decontainerize $P5018, _lex_param_0
    find_lex $P5019, "$?CLASS"
    repr_get_attr_int $I5014, $P5018, $P5019, "$!pos"
    $P5020 = $P101."!cursor_pass"($I5014, "ww")
    set $P5021, $P5020
  if221_end661:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "wb" :subid("cuid_53_1347804141.46") :anon :lex :outer("cuid_66_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 738
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P101, $P5001
.annotate 'line', 739
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
    unless $I5001 goto if228_end675 
    nqp_decontainerize $P5006, _lex_param_0
    find_lex $P5007, "$?CLASS"
    repr_get_attr_str $S5001, $P5006, $P5007, "$!target"
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_int $I5004, $P5008, $P5009, "$!pos"
    is_cclass $I5003, .CCLASS_WORD, $S5001, $I5004
    set $I5005, $I5003
  if228_end675:
    set $I5013, $I5005
    if $I5005 goto unless227_end673 
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
    unless $I5006 goto if229_end677 
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
  if229_end677:
    set $I5013, $I5012
  unless227_end673:
    set $I5020, $I5013
    if $I5013 goto unless226_end671 
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
  unless226_end671:
    box $P5030, $I5020
    set $P5029, $P5030
    unless $I5020 goto if225_end669 
.annotate 'line', 740
    nqp_decontainerize $P5026, _lex_param_0
    find_lex $P5027, "$?CLASS"
    repr_get_attr_int $I5021, $P5026, $P5027, "$!pos"
    $P5028 = $P101."!cursor_pass"($I5021, "wb")
    set $P5029, $P5028
  if225_end669:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "ident" :subid("cuid_54_1347804141.46") :anon :lex :outer("cuid_66_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 749
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P101, $P5001
.annotate 'line', 750
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
    unless $I5001 goto if231_end681 
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
    if $I5004 goto unless232_end683 
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_str $S5003, $P5012, $P5013, "$!target"
    nqp_decontainerize $P5014, _lex_param_0
    find_lex $P5015, "$?CLASS"
    repr_get_attr_int $I5008, $P5014, $P5015, "$!pos"
    is_cclass $I5007, .CCLASS_ALPHABETIC, $S5003, $I5008
    set $I5009, $I5007
  unless232_end683:
    set $I5010, $I5009
  if231_end681:
    box $P5024, $I5010
    set $P5023, $P5024
    unless $I5010 goto if230_end679 
.annotate 'line', 751
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
    set $P5023, $P5022
  if230_end679:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "alpha" :subid("cuid_55_1347804141.46") :anon :lex :outer("cuid_66_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 761
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P101, $P5001
.annotate 'line', 762
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
    unless $I5001 goto if234_end687 
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_str $S5002, $P5008, $P5009, "$!target"
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, .CCLASS_ALPHABETIC, $S5002, $I5005
    set $I5009, $I5004
    if $I5004 goto unless235_end689 
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
  unless235_end689:
    set $I5010, $I5009
  if234_end687:
    box $P5020, $I5010
    set $P5019, $P5020
    unless $I5010 goto if233_end685 
.annotate 'line', 763
    nqp_decontainerize $P5016, _lex_param_0
    find_lex $P5017, "$?CLASS"
    repr_get_attr_int $I5011, $P5016, $P5017, "$!pos"
    set $N5006, $I5011
    set $N5007, 1
    add $N5005, $N5006, $N5007
    $P5018 = $P101."!cursor_pass"($N5005, "alpha")
    set $P5019, $P5018
  if233_end685:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "alnum" :subid("cuid_56_1347804141.46") :anon :lex :outer("cuid_66_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 770
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P101, $P5001
.annotate 'line', 771
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
    unless $I5001 goto if237_end693 
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_str $S5002, $P5008, $P5009, "$!target"
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, .CCLASS_ALPHANUMERIC, $S5002, $I5005
    set $I5009, $I5004
    if $I5004 goto unless238_end695 
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
  unless238_end695:
    set $I5010, $I5009
  if237_end693:
    box $P5020, $I5010
    set $P5019, $P5020
    unless $I5010 goto if236_end691 
.annotate 'line', 772
    nqp_decontainerize $P5016, _lex_param_0
    find_lex $P5017, "$?CLASS"
    repr_get_attr_int $I5011, $P5016, $P5017, "$!pos"
    set $N5006, $I5011
    set $N5007, 1
    add $N5005, $N5006, $N5007
    $P5018 = $P101."!cursor_pass"($N5005, "alnum")
    set $P5019, $P5018
  if236_end691:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "upper" :subid("cuid_57_1347804141.46") :anon :lex :outer("cuid_66_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 779
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P101, $P5001
.annotate 'line', 780
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
    unless $I5001 goto if240_end699 
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_str $S5002, $P5008, $P5009, "$!target"
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, .CCLASS_UPPERCASE, $S5002, $I5005
    set $I5006, $I5004
  if240_end699:
    box $P5016, $I5006
    set $P5015, $P5016
    unless $I5006 goto if239_end697 
.annotate 'line', 781
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5007, $P5012, $P5013, "$!pos"
    set $N5004, $I5007
    set $N5005, 1
    add $N5003, $N5004, $N5005
    $P5014 = $P101."!cursor_pass"($N5003, "upper")
    set $P5015, $P5014
  if239_end697:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "lower" :subid("cuid_58_1347804141.46") :anon :lex :outer("cuid_66_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 787
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P101, $P5001
.annotate 'line', 788
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
    unless $I5001 goto if242_end703 
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_str $S5002, $P5008, $P5009, "$!target"
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, .CCLASS_LOWERCASE, $S5002, $I5005
    set $I5006, $I5004
  if242_end703:
    box $P5016, $I5006
    set $P5015, $P5016
    unless $I5006 goto if241_end701 
.annotate 'line', 789
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5007, $P5012, $P5013, "$!pos"
    set $N5004, $I5007
    set $N5005, 1
    add $N5003, $N5004, $N5005
    $P5014 = $P101."!cursor_pass"($N5003, "lower")
    set $P5015, $P5014
  if241_end701:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "digit" :subid("cuid_59_1347804141.46") :anon :lex :outer("cuid_66_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 795
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P101, $P5001
.annotate 'line', 796
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
    unless $I5001 goto if244_end707 
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_str $S5002, $P5008, $P5009, "$!target"
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, .CCLASS_NUMERIC, $S5002, $I5005
    set $I5006, $I5004
  if244_end707:
    box $P5016, $I5006
    set $P5015, $P5016
    unless $I5006 goto if243_end705 
.annotate 'line', 797
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5007, $P5012, $P5013, "$!pos"
    set $N5004, $I5007
    set $N5005, 1
    add $N5003, $N5004, $N5005
    $P5014 = $P101."!cursor_pass"($N5003, "digit")
    set $P5015, $P5014
  if243_end705:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "xdigit" :subid("cuid_60_1347804141.46") :anon :lex :outer("cuid_66_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 803
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P101, $P5001
.annotate 'line', 804
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
    unless $I5001 goto if246_end711 
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_str $S5002, $P5008, $P5009, "$!target"
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, .CCLASS_HEXADECIMAL, $S5002, $I5005
    set $I5006, $I5004
  if246_end711:
    box $P5016, $I5006
    set $P5015, $P5016
    unless $I5006 goto if245_end709 
.annotate 'line', 805
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5007, $P5012, $P5013, "$!pos"
    set $N5004, $I5007
    set $N5005, 1
    add $N5003, $N5004, $N5005
    $P5014 = $P101."!cursor_pass"($N5003, "xdigit")
    set $P5015, $P5014
  if245_end709:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "space" :subid("cuid_61_1347804141.46") :anon :lex :outer("cuid_66_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 811
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P101, $P5001
.annotate 'line', 812
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
    unless $I5001 goto if248_end715 
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_str $S5002, $P5008, $P5009, "$!target"
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, .CCLASS_WHITESPACE, $S5002, $I5005
    set $I5006, $I5004
  if248_end715:
    box $P5016, $I5006
    set $P5015, $P5016
    unless $I5006 goto if247_end713 
.annotate 'line', 813
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5007, $P5012, $P5013, "$!pos"
    set $N5004, $I5007
    set $N5005, 1
    add $N5003, $N5004, $N5005
    $P5014 = $P101."!cursor_pass"($N5003, "space")
    set $P5015, $P5014
  if247_end713:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "blank" :subid("cuid_62_1347804141.46") :anon :lex :outer("cuid_66_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 819
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P101, $P5001
.annotate 'line', 820
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
    unless $I5001 goto if250_end719 
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_str $S5002, $P5008, $P5009, "$!target"
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, .CCLASS_BLANK, $S5002, $I5005
    set $I5006, $I5004
  if250_end719:
    box $P5016, $I5006
    set $P5015, $P5016
    unless $I5006 goto if249_end717 
.annotate 'line', 821
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5007, $P5012, $P5013, "$!pos"
    set $N5004, $I5007
    set $N5005, 1
    add $N5003, $N5004, $N5005
    $P5014 = $P101."!cursor_pass"($N5003, "blank")
    set $P5015, $P5014
  if249_end717:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "cntrl" :subid("cuid_63_1347804141.46") :anon :lex :outer("cuid_66_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 827
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P101, $P5001
.annotate 'line', 828
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
    unless $I5001 goto if252_end723 
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_str $S5002, $P5008, $P5009, "$!target"
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, .CCLASS_CONTROL, $S5002, $I5005
    set $I5006, $I5004
  if252_end723:
    box $P5016, $I5006
    set $P5015, $P5016
    unless $I5006 goto if251_end721 
.annotate 'line', 829
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5007, $P5012, $P5013, "$!pos"
    set $N5004, $I5007
    set $N5005, 1
    add $N5003, $N5004, $N5005
    $P5014 = $P101."!cursor_pass"($N5003, "cntrl")
    set $P5015, $P5014
  if251_end721:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "punct" :subid("cuid_64_1347804141.46") :anon :lex :outer("cuid_66_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 835
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P101, $P5001
.annotate 'line', 836
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
    unless $I5001 goto if254_end727 
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_str $S5002, $P5008, $P5009, "$!target"
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, .CCLASS_PUNCTUATION, $S5002, $I5005
    set $I5006, $I5004
  if254_end727:
    box $P5016, $I5006
    set $P5015, $P5016
    unless $I5006 goto if253_end725 
.annotate 'line', 837
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5007, $P5012, $P5013, "$!pos"
    set $N5004, $I5007
    set $N5005, 1
    add $N5003, $N5004, $N5005
    $P5014 = $P101."!cursor_pass"($N5003, "punct")
    set $P5015, $P5014
  if253_end725:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "FAILGOAL" :subid("cuid_65_1347804141.46") :anon :lex :outer("cuid_66_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 843
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$sub", $P101 
    .lex "self", _lex_param_0 
    .lex "$goal", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P101, $P5001

            $P5002 = getinterp
            $P5002 = $P5002['sub';1]
        
    set $P101, $P5002
    set $S5003, $P101
    concat $S5002, "Unable to parse ", $S5003
    set $S5005, _lex_param_1
    concat $S5004, ", couldn't find final ", $S5005
    concat $S5001, $S5002, $S5004
    box $P5003, $S5001
    die $P5003
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_79_1347804141.46") :anon :lex :outer("cuid_1_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 853
    .const 'Sub' $P5013 = 'cuid_67_1347804141.46' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_68_1347804141.46' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_69_1347804141.46' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_70_1347804141.46' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_71_1347804141.46' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_72_1347804141.46' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_73_1347804141.46' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_74_1347804141.46' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_75_1347804141.46' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_76_1347804141.46' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_77_1347804141.46' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_78_1347804141.46' 
    capture_lex $P5013 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_67_1347804141.46' 
    capture_lex $P5001
    .const 'Sub' $P5002 = 'cuid_68_1347804141.46' 
    capture_lex $P5002
    .const 'Sub' $P5003 = 'cuid_69_1347804141.46' 
    capture_lex $P5003
    .const 'Sub' $P5004 = 'cuid_70_1347804141.46' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_71_1347804141.46' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_72_1347804141.46' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_73_1347804141.46' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_74_1347804141.46' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_75_1347804141.46' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_76_1347804141.46' 
    capture_lex $P5010
    .const 'Sub' $P5011 = 'cuid_77_1347804141.46' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_78_1347804141.46' 
    capture_lex $P5012
    .return ($P5012) 
.end
.HLL "nqp"
.namespace []
.sub "from" :subid("cuid_67_1347804141.46") :anon :lex :outer("cuid_79_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 860
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 69
    repr_get_attr_int $I5001, $P5001, $P5002, "$!from"
    .return ($I5001) 
.end
.HLL "nqp"
.namespace []
.sub "orig" :subid("cuid_68_1347804141.46") :anon :lex :outer("cuid_79_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 861
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 69
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!orig"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "to" :subid("cuid_69_1347804141.46") :anon :lex :outer("cuid_79_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 862
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 69
    repr_get_attr_int $I5001, $P5001, $P5002, "$!to"
    .return ($I5001) 
.end
.HLL "nqp"
.namespace []
.sub "CURSOR" :subid("cuid_70_1347804141.46") :anon :lex :outer("cuid_79_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 863
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 69
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!cursor"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "Str" :subid("cuid_71_1347804141.46") :anon :lex :outer("cuid_79_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 864
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 69
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!orig"
    set $S5002, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 69
    repr_get_attr_int $I5001, $P5004, $P5005, "$!from"
    nqp_decontainerize $P5006, _lex_param_0
    nqp_get_sc_object $P5007, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 69
    repr_get_attr_int $I5002, $P5006, $P5007, "$!to"
    set $N5002, $I5002
    nqp_decontainerize $P5008, _lex_param_0
    nqp_get_sc_object $P5009, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 69
    repr_get_attr_int $I5003, $P5008, $P5009, "$!from"
    set $N5003, $I5003
    sub $N5001, $N5002, $N5003
    set $I5004, $N5001
    substr $S5001, $S5002, $I5001, $I5004
    .return ($S5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_72_1347804141.46") :anon :lex :outer("cuid_79_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 865
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    $P5002 = $P5001."Str"()
    set $N5001, $P5002
    .return ($N5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_73_1347804141.46") :anon :lex :outer("cuid_79_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 866
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    $P5002 = $P5001."Str"()
    set $N5001, $P5002
    .return ($N5001) 
.end
.HLL "nqp"
.namespace []
.sub "Bool" :subid("cuid_74_1347804141.46") :anon :lex :outer("cuid_79_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 867
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 69
    repr_get_attr_int $I5002, $P5001, $P5002, "$!to"
    set $N5001, $I5002
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 69
    repr_get_attr_int $I5003, $P5003, $P5004, "$!from"
    set $N5002, $I5003
    isge $I5001, $N5001, $N5002
    .return ($I5001) 
.end
.HLL "nqp"
.namespace []
.sub "chars" :subid("cuid_75_1347804141.46") :anon :lex :outer("cuid_79_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 868
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 69
    repr_get_attr_int $I5002, $P5001, $P5002, "$!to"
    set $N5001, $I5002
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 69
    repr_get_attr_int $I5003, $P5003, $P5004, "$!from"
    set $N5002, $I5003
    isge $I5001, $N5001, $N5002
    unless $I5001 goto if255_else728 
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 69
    repr_get_attr_int $I5004, $P5005, $P5006, "$!to"
    set $N5004, $I5004
    nqp_decontainerize $P5007, _lex_param_0
    nqp_get_sc_object $P5008, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 69
    repr_get_attr_int $I5005, $P5007, $P5008, "$!from"
    set $N5005, $I5005
    sub $N5003, $N5004, $N5005
    box $P5010, $N5003
    set $P5009, $P5010
    goto if255_end729
  if255_else728:
    box $P5011, 0
    set $P5009, $P5011
  if255_end729:
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "!make" :subid("cuid_76_1347804141.46") :anon :lex :outer("cuid_79_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 870
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$ast", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 69
    repr_bind_attr_obj $P5001, $P5002, "$!ast", _lex_param_1
    .return (_lex_param_1) 
.end
.HLL "nqp"
.namespace []
.sub "ast" :subid("cuid_77_1347804141.46") :anon :lex :outer("cuid_79_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 871
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 69
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!ast"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "!dump_str" :subid("cuid_78_1347804141.46") :anon :lex :outer("cuid_79_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 873
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5019 = 'cuid_123_1347804141.46' 
    capture_lex $P5019 
    .const 'Sub' $P5019 = 'cuid_124_1347804141.46' 
    capture_lex $P5019 
    .lex "&dump_array", $P101 
    .lex "$str", $P102 
    .lex "self", _lex_param_0 
    .lex "$key", _lex_param_1 
    .const 'Sub' $P5001 = 'cuid_123_1347804141.46' 
    capture_lex $P5001
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P102, $P5002
    set $S5006, _lex_param_1
    concat $S5005, $S5006, ": "
.annotate 'line', 885
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
.annotate 'line', 886
    nqp_decontainerize $P5008, _lex_param_0
    $P5009 = $P5008."list"()
    $P5010 = "&dump_array"(_lex_param_1, $P5009)
    set $S5012, $P5010
    concat $S5010, $S5011, $S5012
    box $P5011, $S5010
    set $P102, $P5011
.annotate 'line', 887
    nqp_decontainerize $P5015, _lex_param_0
    $P5016 = $P5015."hash"()
    set $P5012, $P5016
    iter $P5014, $P5016
  for_next737:
    unless $P5014, for_done739
    shift $P5018, $P5014
  for_redo738:
    .const 'Sub' $P5017 = 'cuid_124_1347804141.46' 
    capture_lex $P5017
    $P5012 = $P5017($P5018)
    goto for_next737
  for_done739:
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "dump_array" :subid("cuid_123_1347804141.46") :anon :lex :outer("cuid_78_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 874
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5013 = 'cuid_122_1347804141.46' 
    capture_lex $P5013 
    .lex "$str", $P101 
    .lex "$key", _lex_param_0 
    .lex "$item", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P101, $P5001
    box $P5002, ""
    set $P101, $P5002
.annotate 'line', 876
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 28
    $P5004 = $P5003."ACCEPTS"(_lex_param_1)
    unless $P5004 goto if256_else730 
    set $S5002, $P101
.annotate 'line', 877
    $P5005 = _lex_param_1."!dump_str"(_lex_param_0)
    set $S5003, $P5005
    concat $S5001, $S5002, $S5003
    box $P5006, $S5001
    set $P101, $P5006
    set $P5012, $P101
    goto if256_end731
  if256_else730:
    isnull $I5002, _lex_param_1
    box $P5007, $I5002
    isfalse $I5001, $P5007
    box $P5011, $I5001
    set $P5010, $P5011
    unless $I5001 goto if257_end733 
    .const 'Sub' $P5008 = 'cuid_122_1347804141.46' 
    capture_lex $P5008
    $P5009 = $P5008()
    set $P5010, $P5009
  if257_end733:
    set $P5012, $P5010
  if256_end731:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_122_1347804141.46") :anon :lex :outer("cuid_123_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 879
    .const 'Sub' $P5009 = 'cuid_121_1347804141.46' 
    capture_lex $P5009 
    .lex "$n", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P101, $P5001
    box $P5002, 0
    set $P101, $P5002
    find_lex $P5006, "$item"
    set $P5003, $P5006
    iter $P5005, $P5006
  for_next734:
    unless $P5005, for_done736
    shift $P5008, $P5005
  for_redo735:
    .const 'Sub' $P5007 = 'cuid_121_1347804141.46' 
    capture_lex $P5007
    $P5003 = $P5007($P5008)
    goto for_next734
  for_done736:
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_121_1347804141.46") :anon :lex :outer("cuid_122_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 881
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    .local pmc tmp_3 
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
    set tmp_3, $P5006
    set $N5002, tmp_3
    set $N5003, 1
    add $N5001, $N5002, $N5003
    box $P5007, $N5001
    store_lex "$n", $P5007
    .return (tmp_3) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_124_1347804141.46") :anon :lex :outer("cuid_78_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 887
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
.sub "" :subid("cuid_85_1347804141.46") :anon :lex :outer("cuid_1_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 892
    .const 'Sub' $P5010 = 'cuid_80_1347804141.46' 
    capture_lex $P5010 
    .const 'Sub' $P5010 = 'cuid_81_1347804141.46' 
    capture_lex $P5010 
    .const 'Sub' $P5010 = 'cuid_82_1347804141.46' 
    capture_lex $P5010 
    .const 'Sub' $P5010 = 'cuid_83_1347804141.46' 
    capture_lex $P5010 
    .const 'Sub' $P5010 = 'cuid_84_1347804141.46' 
    capture_lex $P5010 
    .lex "$EMPTY_MATCH_LIST", $P101 
    .lex "$EMPTY_MATCH_HASH", $P102 
    .lex "$?PACKAGE", $P103 
    .lex "$?CLASS", $P104 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P102, $P5002
    new $P5003, 'ResizablePMCArray'
    set $P101, $P5003
    new $P5004, 'Hash'
    set $P102, $P5004
    .const 'Sub' $P5005 = 'cuid_80_1347804141.46' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_81_1347804141.46' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_82_1347804141.46' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_83_1347804141.46' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_84_1347804141.46' 
    capture_lex $P5009
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "MATCH" :subid("cuid_80_1347804141.46") :anon :lex :outer("cuid_85_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 895
    .param pmc _lex_param_0 
    .const 'Sub' $P5010 = 'cuid_125_1347804141.46' 
    capture_lex $P5010 
    .lex "$match", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P101, $P5001
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 82
    getattribute $P5002, $P5003, $P5004, "$!match"
    set $P101, $P5002
    nqp_get_sc_object $P5005, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 69
    type_check $I5001, $P101, $P5005
    set $I5003, $I5001
    if $I5001 goto unless259_end743 
    nqp_ishash $I5002, $P101
    set $I5003, $I5002
  unless259_end743:
    box $P5009, $I5003
    set $P5008, $P5009
    if $I5003 goto unless258_end741 
    .const 'Sub' $P5006 = 'cuid_125_1347804141.46' 
    capture_lex $P5006
    $P5007 = $P5006()
    set $P5008, $P5007
  unless258_end741:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_125_1347804141.46") :anon :lex :outer("cuid_80_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 897
    .lex "$list", $P101 
    .lex "$hash", $P102 
    .lex "%ch", $P103 
    .lex "$key", $S101 
    .lex "$iter", $P104 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P102, $P5002
    new $P5003, 'Hash'
    set $P103, $P5003
    set $S101, ""
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P104, $P5004
    find_lex $P5005, "$EMPTY_MATCH_LIST"
    set $P101, $P5005
    find_lex $P5006, "$EMPTY_MATCH_HASH"
    set $P102, $P5006
    nqp_get_sc_object $P5008, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 69
    repr_instance_of $P5007, $P5008
    store_lex "$match", $P5007
    find_lex $P5010, "self"
    nqp_decontainerize $P5009, $P5010
    nqp_get_sc_object $P5011, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 82
    find_lex $P5012, "$match"
    setattribute $P5009, $P5011, "$!match", $P5012
    find_lex $P5013, "$match"
    nqp_get_sc_object $P5014, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 69
    find_lex $P5016, "self"
    nqp_decontainerize $P5015, $P5016
    setattribute $P5013, $P5014, "$!cursor", $P5015
    find_lex $P5017, "$match"
    nqp_get_sc_object $P5018, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 69
    find_lex $P5021, "self"
    nqp_decontainerize $P5020, $P5021
    nqp_get_sc_object $P5022, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 82
    getattribute $P5019, $P5020, $P5022, "$!orig"
    setattribute $P5017, $P5018, "$!orig", $P5019
    find_lex $P5023, "$match"
    nqp_get_sc_object $P5024, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 69
    find_lex $P5026, "self"
    nqp_decontainerize $P5025, $P5026
    nqp_get_sc_object $P5027, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 82
    repr_get_attr_int $I5001, $P5025, $P5027, "$!from"
    repr_bind_attr_int $P5023, $P5024, "$!from", $I5001
    find_lex $P5028, "$match"
    nqp_get_sc_object $P5029, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 69
    find_lex $P5031, "self"
    nqp_decontainerize $P5030, $P5031
    nqp_get_sc_object $P5032, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 82
    repr_get_attr_int $I5002, $P5030, $P5032, "$!pos"
    repr_bind_attr_int $P5028, $P5029, "$!to", $I5002
.annotate 'line', 906
    find_lex $P5034, "self"
    nqp_decontainerize $P5033, $P5034
    $P5035 = $P5033."CAPHASH"()
    set $P103, $P5035
    iter $P5036, $P103
    set $P104, $P5036
  while260_test744:
    set $P5054, $P104
    unless $P104 goto while260_done748 
  while260_redo746:
.annotate 'line', 909
    shift $P5037, $P104
    set $S5001, $P5037
    set $S101, $S5001
    iseq $I5003, $S101, "$!from"
    set $I5005, $I5003
    if $I5003 goto unless262_end752 
    iseq $I5004, $S101, "$!to"
    set $I5005, $I5004
  unless262_end752:
    unless $I5005 goto if261_else749 
.annotate 'line', 911
    find_lex $P5038, "$match"
    nqp_get_sc_object $P5039, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 69
.annotate 'line', 912
    set $P5040, $P103[$S101]
    unless_null $P5040, fallback753
    nqp_get_sc_object $P5041, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5040, $P5041
  fallback753:
    $P5042 = $P5040."from"()
    set $I5006, $P5042
    repr_bind_attr_int $P5038, $P5039, $S101, $I5006
    box $P5053, $I5006
    set $P5052, $P5053
    goto if261_end750
  if261_else749:
    is_cclass $I5007, .CCLASS_NUMERIC, $S101, 0
    unless $I5007 goto if263_else754 
.annotate 'line', 914
    set $P5044, $P101
    if $P101 goto unless264_end757 
    new $P5043, 'ResizablePMCArray'
    set $P101, $P5043
    set $P5044, $P101
  unless264_end757:
    set $I5008, $S101
    set $P5045, $P103[$S101]
    unless_null $P5045, fallback758
    nqp_get_sc_object $P5046, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5045, $P5046
  fallback758:
    set $P101[$I5008], $P5045
    set $P5051, $P5045
    goto if263_end755
  if263_else754:
.annotate 'line', 918
    set $P5048, $P102
    if $P102 goto unless265_end760 
    new $P5047, 'Hash'
    set $P102, $P5047
    set $P5048, $P102
  unless265_end760:
    set $P5049, $P103[$S101]
    unless_null $P5049, fallback761
    nqp_get_sc_object $P5050, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P5049, $P5050
  fallback761:
    set $P102[$S101], $P5049
    set $P5051, $P5049
  if263_end755:
    set $P5052, $P5051
  if261_end750:
    set $P5054, $P5052
    goto while260_test744 
  while260_done748:
    find_lex $P5055, "$match"
    nqp_get_sc_object $P5056, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 28
    setattribute $P5055, $P5056, "@!array", $P101
    find_lex $P5057, "$match"
    nqp_get_sc_object $P5058, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 28
    setattribute $P5057, $P5058, "%!hash", $P102
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "Bool" :subid("cuid_81_1347804141.46") :anon :lex :outer("cuid_85_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 929
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5002, _lex_param_0
    find_lex $P5003, "$?CLASS"
    getattribute $P5001, $P5002, $P5003, "$!match"
    isnull $I5002, $P5001
    box $P5004, $I5002
    isfalse $I5001, $P5004
    set $I5004, $I5001
    unless $I5001 goto if266_end763 
    nqp_decontainerize $P5006, _lex_param_0
    find_lex $P5007, "$?CLASS"
    getattribute $P5005, $P5006, $P5007, "$!match"
    istrue $I5003, $P5005
    set $I5004, $I5003
  if266_end763:
    .return ($I5004) 
.end
.HLL "nqp"
.namespace []
.sub "parse" :subid("cuid_82_1347804141.46") :anon :lex :outer("cuid_85_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 934
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :named("rule") :optional 
    .param int haz_param_17 :opt_flag 
    .param pmc _lex_param_3 :named("actions") :optional 
    .param int haz_param_18 :opt_flag 
    .param pmc _lex_param_4 :slurpy :named 
    if haz_param_17, default766
    box $P5011, "TOP"
    set _lex_param_2, $P5011
  default766:
    if haz_param_18, default767
    nqp_get_sc_object $P5012, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set _lex_param_3, $P5012
  default767:
    .lex "$*ACTIONS", $P101 
    .lex "$cur", $P102 
    .lex "self", _lex_param_0 
    .lex "$target", _lex_param_1 
    .lex "$rule", _lex_param_2 
    .lex "$actions", _lex_param_3 
    .lex "%options", _lex_param_4 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P102, $P5002
    set $P101, _lex_param_3
.annotate 'line', 936
    nqp_decontainerize $P5003, _lex_param_0
    $P5004 = $P5003."!cursor_init"(_lex_param_1, _lex_param_4 :flat :named)
    set $P102, $P5004
    is_invokable $I5001, _lex_param_2
    unless $I5001 goto if267_else764 
.annotate 'line', 938
    $P5005 = _lex_param_2($P102)
    $P5006 = $P5005."MATCH"()
    set $P5010, $P5006
    goto if267_end765
  if267_else764:
.annotate 'line', 939
    set $S5001, _lex_param_2
    find_method $P5007, $P102, $S5001
    $P5008 = $P5007($P102)
    $P5009 = $P5008."MATCH"()
    set $P5010, $P5009
  if267_end765:
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "!INTERPOLATE" :subid("cuid_83_1347804141.46") :anon :lex :outer("cuid_85_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 942
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5006 = 'cuid_130_1347804141.46' 
    capture_lex $P5006 
    .const 'Sub' $P5006 = 'cuid_131_1347804141.46' 
    capture_lex $P5006 
    .lex "self", _lex_param_0 
    .lex "$var", _lex_param_1 
    root_new $P101, ['parrot';'Continuation']
    set_label $P101, lexotic_768
    .lex "RETURN", $P101
    nqp_islist $I5001, _lex_param_1
    unless $I5001 goto if268_else770 
    .const 'Sub' $P5001 = 'cuid_130_1347804141.46' 
    capture_lex $P5001
    $P5002 = $P5001()
    set $P5005, $P5002
    goto if268_end771
  if268_else770:
    .const 'Sub' $P5003 = 'cuid_131_1347804141.46' 
    capture_lex $P5003
    $P5004 = $P5003()
    set $P5005, $P5004
  if268_end771:
    goto lexotic_769
  lexotic_768:
    .get_results ($P5005)
  lexotic_769:
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_130_1347804141.46") :anon :lex :outer("cuid_83_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 943
    .const 'Sub' $P5018 = 'cuid_128_1347804141.46' 
    capture_lex $P5018 
    .lex "$maxlen", $I101 
    .lex "$cur", $P101 
    .lex "$pos", $I102 
    .lex "$tgt", $S101 
    .lex "$eos", $I103 
    set $I101, 0
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P101, $P5001
    set $I102, 0
    set $S101, ""
    set $I103, 0
    set $I101, -1
.annotate 'line', 945
    find_lex $P5003, "self"
    nqp_decontainerize $P5002, $P5003
    $P5004 = $P5002."!cursor_start"()
    set $P101, $P5004
    find_lex $P5005, "$?CLASS"
    repr_get_attr_int $I5001, $P101, $P5005, "$!from"
    set $I102, $I5001
.annotate 'line', 947
    $P5006 = $P101."target"()
    set $S5001, $P5006
    set $S101, $S5001
    length $I5002, $S101
    set $I103, $I5002
    find_lex $P5010, "$var"
    set $P5007, $P5010
    iter $P5009, $P5010
  for_next784:
    unless $P5009, for_done786
    shift $P5012, $P5009
  for_redo785:
    .const 'Sub' $P5011 = 'cuid_128_1347804141.46' 
    capture_lex $P5011
    $P5007 = $P5011($P5012)
    goto for_next784
  for_done786:
    set $N5001, $I101
    set $N5002, 0
    isge $I5003, $N5001, $N5002
    box $P5015, $I5003
    set $P5014, $P5015
    unless $I5003 goto if275_end788 
.annotate 'line', 964
    set $N5004, $I102
    set $N5005, $I101
    add $N5003, $N5004, $N5005
    $P5013 = $P101."!cursor_pass"($N5003, "")
    set $P5014, $P5013
  if275_end788:
    find_lex $P5016, "RETURN"
    $P5017 = $P5016($P101)
    .return ($P5017) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_128_1347804141.46") :anon :lex :outer("cuid_130_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 949
    .param pmc _lex_param_0 
    .const 'Sub' $P5006 = 'cuid_127_1347804141.46' 
    capture_lex $P5006 
    .const 'Sub' $P5006 = 'cuid_129_1347804141.46' 
    capture_lex $P5006 
    .lex "$_", _lex_param_0 
    is_invokable $I5001, _lex_param_0
    unless $I5001 goto if269_else772 
    .const 'Sub' $P5001 = 'cuid_127_1347804141.46' 
    capture_lex $P5001
    $P5002 = $P5001()
    set $P5005, $P5002
    goto if269_end773
  if269_else772:
    .const 'Sub' $P5003 = 'cuid_129_1347804141.46' 
    capture_lex $P5003
    $P5004 = $P5003()
    set $P5005, $P5004
  if269_end773:
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_127_1347804141.46") :anon :lex :outer("cuid_128_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 950
    .const 'Sub' $P5009 = 'cuid_126_1347804141.46' 
    capture_lex $P5009 
    .lex "$res", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P101, $P5001
.annotate 'line', 951
    find_lex $P5004, "self"
    nqp_decontainerize $P5003, $P5004
    find_lex $P5002, "$_"
    $P5005 = $P5002($P5003)
    set $P101, $P5005
    set $P5008, $P101
    unless $P101 goto if270_end775 
    .const 'Sub' $P5006 = 'cuid_126_1347804141.46' 
    capture_lex $P5006
    $P5007 = $P5006()
    set $P5008, $P5007
  if270_end775:
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_126_1347804141.46") :anon :lex :outer("cuid_127_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 952
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
    unless $I5004 goto if271_end777 
    store_lex "$maxlen", $I101
    set $I5006, $I101
  if271_end777:
    .return ($I5006) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_129_1347804141.46") :anon :lex :outer("cuid_128_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 958
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
    unless $I5002 goto if274_end783 
    find_lex $I5005, "$pos"
    set $N5004, $I5005
    set $N5005, $I101
    add $N5003, $N5004, $N5005
    find_lex $I5006, "$eos"
    set $N5006, $I5006
    isle $I5004, $N5003, $N5006
    set $I5007, $I5004
  if274_end783:
    set $I5010, $I5007
    unless $I5007 goto if273_end781 
    find_lex $S5003, "$tgt"
    find_lex $I5009, "$pos"
    substr $S5002, $S5003, $I5009, $I101
    find_lex $P5002, "$_"
    set $S5004, $P5002
    iseq $I5008, $S5002, $S5004
    set $I5010, $I5008
  if273_end781:
    set $I5011, $I5010
    unless $I5010 goto if272_end779 
    store_lex "$maxlen", $I101
    set $I5011, $I101
  if272_end779:
    .return ($I5011) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_131_1347804141.46") :anon :lex :outer("cuid_83_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 967
    .lex "$cur", $P101 
    .lex "$pos", $I101 
    .lex "$tgt", $S101 
    .lex "$len", $I102 
    .lex "$adv", $I103 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P101, $P5001
    set $I101, 0
    set $S101, ""
    set $I102, 0
    set $I103, 0
    find_lex $P5002, "$var"
    is_invokable $I5001, $P5002
    box $P5010, $I5001
    set $P5009, $P5010
    unless $I5001 goto if276_end790 
.annotate 'line', 968
    find_lex $P5006, "self"
    nqp_decontainerize $P5005, $P5006
    find_lex $P5004, "$var"
    $P5007 = $P5004($P5005)
    find_lex $P5003, "RETURN"
    $P5008 = $P5003($P5007)
    set $P5009, $P5008
  if276_end790:
.annotate 'line', 969
    find_lex $P5012, "self"
    nqp_decontainerize $P5011, $P5012
    $P5013 = $P5011."!cursor_start"()
    set $P101, $P5013
    find_lex $P5014, "$?CLASS"
    repr_get_attr_int $I5002, $P101, $P5014, "$!from"
    set $I101, $I5002
.annotate 'line', 971
    $P5015 = $P101."target"()
    set $S5001, $P5015
    set $S101, $S5001
    find_lex $P5016, "$var"
    set $S5002, $P5016
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
    if $I5005 goto unless278_end794 
    substr $S5003, $S101, $I101, $I102
    find_lex $P5017, "$var"
    set $S5004, $P5017
    isne $I5007, $S5003, $S5004
    set $I5008, $I5007
  unless278_end794:
    box $P5021, $I5008
    set $P5020, $P5021
    unless $I5008 goto if277_end792 
    find_lex $P5018, "RETURN"
    $P5019 = $P5018($P101)
    set $P5020, $P5019
  if277_end792:
.annotate 'line', 976
    $P5022 = $P101."!cursor_pass"($I103, "")
    find_lex $P5023, "RETURN"
    $P5024 = $P5023($P101)
    .return ($P5024) 
.end
.HLL "nqp"
.namespace []
.sub "!INTERPOLATE_REGEX" :subid("cuid_84_1347804141.46") :anon :lex :outer("cuid_85_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 981
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5009 = 'cuid_134_1347804141.46' 
    capture_lex $P5009 
    .lex "self", _lex_param_0 
    .lex "$var", _lex_param_1 
    root_new $P101, ['parrot';'Continuation']
    set_label $P101, lexotic_795
    .lex "RETURN", $P101
    is_invokable $I5001, _lex_param_1
    box $P5004, $I5001
    set $P5003, $P5004
    if $I5001 goto unless279_end798 
    .const 'Sub' $P5001 = 'cuid_134_1347804141.46' 
    capture_lex $P5001
    $P5002 = $P5001()
    set $P5003, $P5002
  unless279_end798:
.annotate 'line', 997
    nqp_decontainerize $P5006, _lex_param_0
    $P5007 = $P5006."!INTERPOLATE"(_lex_param_1)
    find_lex $P5005, "RETURN"
    $P5008 = $P5005($P5007)
    goto lexotic_796
  lexotic_795:
    .get_results ($P5008)
  lexotic_796:
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_134_1347804141.46") :anon :lex :outer("cuid_84_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 982
    .const 'Sub' $P5009 = 'cuid_133_1347804141.46' 
    capture_lex $P5009 
    .lex "$rxcompiler", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P101, $P5001
    compreg $P5002, "QRegex::P6Regex"
    set $P101, $P5002
    find_lex $P5003, "$var"
    nqp_islist $I5001, $P5003
    unless $I5001 goto if280_else799 
    .const 'Sub' $P5004 = 'cuid_133_1347804141.46' 
    capture_lex $P5004
    $P5005 = $P5004()
    set $P5008, $P5005
    goto if280_end800
  if280_else799:
.annotate 'line', 993
.annotate 'line', 994
    find_lex $P5006, "$var"
    $P5007 = $P101."compile"($P5006)
    store_lex "$var", $P5007
    set $P5008, $P5007
  if280_end800:
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_133_1347804141.46") :anon :lex :outer("cuid_134_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 984
    .const 'Sub' $P5009 = 'cuid_132_1347804141.46' 
    capture_lex $P5009 
    .lex "$res", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P101, $P5001
    new $P5002, 'ResizablePMCArray'
    set $P101, $P5002
    find_lex $P5006, "$var"
    set $P5003, $P5006
    iter $P5005, $P5006
  for_next803:
    unless $P5005, for_done805
    shift $P5008, $P5005
  for_redo804:
    .const 'Sub' $P5007 = 'cuid_132_1347804141.46' 
    capture_lex $P5007
    $P5003 = $P5007($P5008)
    goto for_next803
  for_done805:
    store_lex "$var", $P101
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_132_1347804141.46") :anon :lex :outer("cuid_133_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 986
    .param pmc _lex_param_0 
    .lex "$elem", $P101 
    .lex "$_", _lex_param_0 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939", 7
    set $P101, $P5001
    set $P101, _lex_param_0
    is_invokable $I5001, $P101
    box $P5005, $I5001
    set $P5004, $P5005
    if $I5001 goto unless281_end802 
.annotate 'line', 988
    find_lex $P5002, "$rxcompiler"
    $P5003 = $P5002."compile"($P101)
    set $P101, $P5003
    set $P5004, $P101
  unless281_end802:
    find_lex $P5006, "$res"
    push $P5006, $P101
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_99_1347804141.46") :anon :lex :outer("cuid_1_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1001
    .const 'Sub' $P5004 = 'cuid_96_1347804141.46' 
    capture_lex $P5004 
    .const 'Sub' $P5004 = 'cuid_97_1347804141.46' 
    capture_lex $P5004 
    .const 'Sub' $P5004 = 'cuid_98_1347804141.46' 
    capture_lex $P5004 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_96_1347804141.46' 
    capture_lex $P5001
    .const 'Sub' $P5002 = 'cuid_97_1347804141.46' 
    capture_lex $P5002
    .const 'Sub' $P5003 = 'cuid_98_1347804141.46' 
    capture_lex $P5003
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "new" :subid("cuid_96_1347804141.46") :anon :lex :outer("cuid_99_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1003
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$code", _lex_param_1 
.annotate 'line', 1004
    nqp_decontainerize $P5001, _lex_param_0
    $P5002 = $P5001."bless"(_lex_param_1 :named("code"))
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "ACCEPTS" :subid("cuid_97_1347804141.46") :anon :lex :outer("cuid_99_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1006
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$target", _lex_param_1 
.annotate 'line', 1007
    nqp_get_sc_object $P5001, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 82
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5001."parse"(_lex_param_1, $P5002 :named("rule"))
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "Str" :subid("cuid_98_1347804141.46") :anon :lex :outer("cuid_99_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1009
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 88
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!code"
    set $S5001, $P5003
    .return ($S5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_101_1347804141.46") :anon :lex :outer("cuid_1_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1014
    .const 'Sub' $P5002 = 'cuid_100_1347804141.46' 
    capture_lex $P5002 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_100_1347804141.46' 
    capture_lex $P5001
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "ACCEPTS" :subid("cuid_100_1347804141.46") :anon :lex :outer("cuid_101_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1015
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$target", _lex_param_1 
.annotate 'line', 1016
    nqp_get_sc_object $P5001, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 82
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5001."parse"(_lex_param_1, $P5002 :named("rule"), 0 :named("c"))
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_136_1347804141.46") :load :init
.annotate 'file', "src\\stage2\\QRegex.nqp"
    .const 'Sub' $P5001 = 'cuid_135_1347804141.46' 
    capture_lex $P5001 
    .local pmc cur_sc 
    nqp_dynop_setup 
    nqp_bigint_setup 
    getinterp $P5001
    get_class $P5002, "LexPad"
    get_class $P5003, "NQPLexPad"
    $P5004 = $P5001."hll_map"($P5002, $P5003)
    load_bytecode "ModuleLoader.pbc"
    .const 'Sub' $P5001 = "cuid_1_1347804141.46" 
    get_hll_global $P5002, "ModuleLoader"
    $P5003 = $P5002."load_setting"("NQPCORE")
    $P5004 = $P5001."set_outer_ctx"($P5003)
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P5001, "ModuleLoader"
    $P5002 = $P5001."load_module"("QASTNode")
    nqp_create_sc $P5001, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474"
    set cur_sc, $P5001
    $P5002 = cur_sc."set_description"("src\\stage2\\QRegex.nqp")
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
    push $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1347804138.939"
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
    push $P5003, "addstate"
    push $P5003, "addedge"
    push $P5003, "states"
    push $P5003, "addnode"
    push $P5003, "regex_nfa"
    push $P5003, "fate"
    push $P5003, "alt"
    push $P5003, "anchor"
    push $P5003, "cclass"
    push $P5003, "concat"
    push $P5003, "enumcharlist"
    push $P5003, "literal"
    push $P5003, "subrule"
    push $P5003, "quant"
    push $P5003, "qastnode"
    push $P5003, "subcapture"
    push $P5003, "qast"
    push $P5003, "mergesubrule"
    push $P5003, "mergesubstates"
    push $P5003, "run"
    push $P5003, "run_alt"
    push $P5003, "$!states"
    push $P5003, "$!edges"
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
    push $P5003, "$!orig"
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
    push $P5003, "!cursor_next"
    push $P5003, "!cursor_more"
    push $P5003, "!reduce"
    push $P5003, "!reduce_with_match"
    push $P5003, "!protoregex"
    push $P5003, "!protoregex_nfa"
    push $P5003, "!protoregex_table"
    push $P5003, "!alt"
    push $P5003, "!alt_nfa"
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
    push $P5003, "$!target"
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
    push $P5003, "569A1B419F724EEF275BC7729D702142D988A435-1347804135.739"
    push $P5003, "src\\stage2\\gen\\nqp-mo.pm"
    push $P5003, "QRegex::NFA"
    push $P5003, "edges"
    push $P5003, "get_string"
    push $P5003, "get_integer"
    push $P5003, "get_number"
    push $P5003, "match"
    push $P5003, "name"
    push $P5003, "bstack"
    push $P5003, "cstack"
    push $P5003, "regexsub"
    push $P5003, "restart"
    push $P5003, "invoke"
    push $P5003, "code"
    push $P5003, "CompileTimeValue"
    push $P5003, "5999FA70DED24A5080F4680C3CF5A9B13CAD7450-1347804139.915"
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
    push $P5003, "BlockMemo"
    push $P5003, "Unquote"
    push $P5003, "CompUnit"
    push $P5003, "InlinePlaceholder"
    push $P5003, "NFA"
    push $P5003, "$NO_CAPS"
    push $P5003, "$pass_mark"
    push $P5003, "@EMPTY"
    push $P5003, "$?CLASS"
    .const 'Sub' $P5004 = 'cuid_135_1347804141.46' 
    capture_lex $P5004
    $P5005 = $P5004()
    nqp_deserialize_sc "AQAAAEAAAAAEAAAAYAAAAAwAAADAAAAAThQAAKcAAAC+HgAAWEAAACgAAAAYRAAAAQAAAChEAABgRAAAAAAAAAsAAAAMAAAAeAAAAAAAAAB7AAAAfAAAAIsAAACMAAAAAQAAAAAAAAABAAAA/AAAAAEAAACkAQAAAQAAAEwCAAAwAAAAJgUAAAEAAABmBQAAAQAAAHQIAAABAAAAug0AAAEAAABODwAAAQAAAPgQAAABAAAAuBIAADAAAABSEwAAAAAAAF4AAAAAAAAAAAAAAAoABwAAAAIAAAACAAAAAABfAAAAAwAAAAIAAAAAAGAAAAAEAAAAAgAAAAAAGwAAAAUAAAACAAAAAABFAAAABgAAAAIAAAAAAFIAAAAHAAAAAgAAAAAAWAAAAAgAAAACAAAAAABcAAAACgAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAAAAAAAAMAAAAAAGEAAAAAAAAAAQAAAAoAAQAAAAkAAAACAAAAAAACAAAACgAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAAEAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAAAQAAAAMAAAAAAGIAAAAAAAAAAgAAAAoAAQAAAAQAAAACAAAAAAAbAAAACgAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAAIAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAAAgAAAAMAAAAAAGMAAAAAAAAAAwAAAAoAAAAAAAoAIgAAAAoAAAACAAEAAAAIAAAADQAAAAIAAQAAAAkAAAAOAAAAAgABAAAACgAAAA8AAAACAAAAAAAEAAAAEAAAAAIAAQAAAAwAAAARAAAAAgABAAAADwAAABIAAAACAAEAAAARAAAAEwAAAAIAAQAAABMAAAAUAAAAAgABAAAAFQAAABUAAAACAAEAAAAXAAAAFgAAAAIAAQAAABgAAAAXAAAAAgABAAAAGgAAABgAAAACAAAAAAAaAAAAGQAAAAIAAAAAAAUAAAAaAAAAAgAAAAAABgAAABsAAAACAAAAAAAHAAAAHAAAAAIAAAAAAAgAAAAdAAAAAgAAAAAACQAAAB4AAAACAAAAAAAKAAAAHwAAAAIAAAAAAAsAAAAgAAAAAgAAAAAADAAAACEAAAACAAAAAAANAAAAIgAAAAIAAAAAAA4AAAAjAAAAAgAAAAAADwAAACQAAAACAAAAAAAQAAAAJQAAAAIAAAAAABEAAAAmAAAAAgAAAAAAEgAAACcAAAACAAAAAAATAAAAKAAAAAIAAAAAABQAAAApAAAAAgAAAAAAFQAAACoAAAACAAAAAAAWAAAAKwAAAAIAAAAAABcAAAAsAAAAAgAAAAAAGAAAAC0AAAACAAAAAAAZAAAAAAAAAAAAAAACAAAAAAAAAAIAAAAAAAMAAAACAAEAAAAHAAAABAAAAAAAAAABAAAAAAAAAAUAAAAAAAAAAwAAAAAAAAAAAAIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAEAAAAHAAAAAgABAAAABwAAAP///////////////////////////////wAAAAAAAAAAAgAAAAAAAAACAAEAAAAHAAAAAwACAAAAAAADAAAACgACAAAALgAAAAQAAAAAAAAAAAAvAAAABAABAAAAAAAAAAAAAABkAAAAAAAAABsAAAAKAAAAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAZQAAAAAAAABFAAAACgAAAAAACgAZAAAACgAAAAIAAQAAAAgAAAANAAAAAgABAAAACQAAAA4AAAACAAEAAAAKAAAADwAAAAIAAQAAAB0AAAAQAAAAAgAAAAAASgAAABEAAAACAAEAAAAPAAAAEgAAAAIAAQAAABEAAAATAAAAAgABAAAAEwAAABQAAAACAAEAAAAVAAAAFQAAAAIAAQAAABcAAAAWAAAAAgABAAAAGAAAABcAAAACAAEAAAAaAAAAGAAAAAIAAQAAABsAAAAxAAAAAgABAAAAHgAAADIAAAACAAEAAAAfAAAAMwAAAAIAAQAAACAAAAA0AAAAAgAAAAAARgAAADUAAAACAAAAAABHAAAANgAAAAIAAAAAAEgAAAA3AAAAAgAAAAAASQAAADgAAAACAAAAAABNAAAAOQAAAAIAAAAAAE4AAAA6AAAAAgAAAAAATwAAADsAAAACAAAAAABQAAAAPAAAAAIAAAAAAFEAAAAAAAAAAAAAAAMAAAAAAAAAAgAAAAAARQAAAAIAAQAAABwAAAACAAEAAAAHAAAABAAAAAAAAAABAAAAAAAAAAAAAAAAAAAAAgAAAAAATQAAAAAAAAAAAAAABwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAEAAAACAAAAAQAAAAAAAAABAAAAAgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAQABAAIAAQAAAAcAAAABAAEAAgABAAAABwAAAAIAAQAAAAcAAAD///////////////////////////////8AAAAAAAAAAAMAAAAAAAAAAgABAAAABwAAAAMAAgABAAAAHAAAAAoAAgAAAD0AAAAEAAAAAAAAAAAAPgAAAAQAAQAAAAAAAAACAAAAAABFAAAACgAFAAAAPwAAAAQAAgAAAAAAAABAAAAABAADAAAAAAAAAEEAAAAEAAQAAAAAAAAAQgAAAAQABQAAAAAAAABDAAAABAAGAAAAAAAAAAAAAABmAAAAAAAAAFIAAAAKAAAAAAAKADoAAAAKAAAAAgABAAAACAAAAA0AAAACAAEAAAAJAAAADgAAAAIAAQAAAAoAAAAPAAAAAgABAAAACwAAABAAAAACAAEAAAAMAAAAEQAAAAIAAQAAAA8AAAASAAAAAgABAAAAEQAAABMAAAACAAEAAAATAAAAFAAAAAIAAQAAABUAAAAVAAAAAgABAAAAFwAAABYAAAACAAEAAAAYAAAAFwAAAAIAAQAAABoAAAAYAAAAAgABAAAAGwAAAEQAAAACAAAAAABTAAAAOAAAAAIAAAAAAFQAAABFAAAAAgAAAAAAVQAAAEYAAAACAAAAAABWAAAARwAAAAIAAAAAAFcAAABIAAAAAgAAAAAAZwAAADQAAAACAAAAAABoAAAASQAAAAIAAAAAAGkAAABKAAAAAgAAAAAAagAAAEsAAAACAAAAAABrAAAATAAAAAIAAAAAAGwAAABNAAAAAgAAAAAAbQAAAE4AAAACAAAAAABuAAAATwAAAAIAAAAAAG8AAABQAAAAAgAAAAAAcAAAAFEAAAACAAAAAABxAAAAUgAAAAIAAAAAAHIAAABTAAAAAgAAAAAAcwAAAFQAAAACAAAAAAB0AAAAVQAAAAIAAAAAAHUAAABWAAAAAgAAAAAAdgAAAFcAAAACAAAAAAB3AAAAWAAAAAIAAAAAAHgAAABZAAAAAgAAAAAAeQAAAFoAAAACAAAAAAB6AAAAWwAAAAIAAAAAAHsAAABcAAAAAgAAAAAAfAAAAF0AAAACAAAAAAB9AAAAXgAAAAIAAAAAAH4AAABfAAAAAgAAAAAAfwAAAGAAAAACAAAAAACAAAAAYQAAAAIAAAAAAIEAAABiAAAAAgAAAAAAggAAAGMAAAACAAAAAACDAAAAZAAAAAIAAAAAAIQAAABlAAAAAgAAAAAAhQAAAGYAAAACAAAAAACGAAAAZwAAAAIAAAAAAIcAAABoAAAAAgAAAAAAiAAAAGkAAAACAAAAAACJAAAAagAAAAIAAAAAAIoAAABrAAAAAgAAAAAAiwAAAGwAAAACAAAAAACMAAAAbQAAAAIAAAAAAI0AAABuAAAAAgAAAAAAjgAAAAAAAAAAAAAABAAAAAAAAAACAAAAAABSAAAAAgABAAAABwAAAAIAAAAAABsAAAACAAAAAACPAAAABAAAAAAAAAABAAAAAAAAAAAAAAAAAAAAAgAAAAAAVAAAAAAAAAAAAAAACgAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAQAAAAQAAAABAAAAAAAAAAEAAAACAAAAAQAAAAAAAAABAAAAAgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAEAAAAHAAAAAQABAAEAAgABAAAABwAAAAIAAQAAAAcAAAACAAEAAAAHAAAAAgABAAAABwAAAAIAAQAAAAcAAAACAAEAAAAHAAAA////////////////////////////////AAAAAAAAAAACAAAAAAAAAAIAAQAAAAcAAAADAAIAAAAAAFIAAAAKAAoAAAA/AAAABAAAAAAAAAAAAG8AAAAEAAEAAAAAAAAAQAAAAAQAAgAAAAAAAABwAAAABAADAAAAAAAAAHEAAAAEAAQAAAAAAAAAcgAAAAQABQAAAAAAAABzAAAABAAGAAAAAAAAAHQAAAAEAAcAAAAAAAAAdQAAAAQACAAAAAAAAAB2AAAABAAJAAAAAAAAAAAAAACQAAAAAAAAAFgAAAAKAAAAAAAKAA0AAAAKAAAAAgABAAAACAAAAA0AAAACAAEAAAAJAAAADgAAAAIAAQAAAAoAAAAPAAAAAgAAAAAAWQAAABAAAAACAAAAAABbAAAAEQAAAAIAAQAAAA8AAAASAAAAAgABAAAAEQAAABMAAAACAAEAAAATAAAAFAAAAAIAAQAAABUAAAAVAAAAAgABAAAAFwAAABYAAAACAAAAAABaAAAAFwAAAAIAAQAAABoAAAAYAAAAAgABAAAAGwAAAAAAAAAAAAAAAgAAAAAAAAACAAAAAABYAAAAAgABAAAABwAAAAQAAAAAAAAAAQAAAAAAAAAFAAAAAAAAAAMAAAAAAAAAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAQAAAAcAAAD///////////////////////////////8AAAAAAAAAAAIAAAAAAAAAAgABAAAABwAAAAMAAgAAAAAAWAAAAAoAAQAAAHcAAAAEAAAAAAAAAAAAAAAAAJEAAAAAAAAAXAAAAAoAAAAAAAoADQAAAAoAAAACAAEAAAAIAAAADQAAAAIAAQAAAAkAAAAOAAAAAgABAAAACgAAAA8AAAACAAAAAABZAAAAEAAAAAIAAAAAAFsAAAARAAAAAgABAAAADwAAABIAAAACAAEAAAARAAAAEwAAAAIAAQAAABMAAAAUAAAAAgABAAAAFQAAABUAAAACAAEAAAAXAAAAFgAAAAIAAAAAAF0AAAAXAAAAAgABAAAAGgAAABgAAAACAAEAAAAbAAAAAAAAAAAAAAADAAAAAAAAAAIAAAAAAFwAAAACAAAAAABYAAAAAgABAAAABwAAAAQAAAAAAAAAAQAAAAAAAAAFAAAAAAAAAAMAAAAAAAAAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAQAAAAcAAAD///////////////////////////////8AAAAAAAAAAAMAAAAAAAAAAgABAAAABwAAAAMAAgAAAAAAWAAAAAoAAQAAAHcAAAAEAAAAAAAAAAAAAgAAAAAAXAAAAAMAAAAAAKQAAAAAAAAAXwAAAAoAFQAAAIoAAAACAAQAAAADAAAAjQAAAAIABAAAAAgAAACOAAAAAgAEAAAADAAAAI8AAAACAAQAAAAnAAAAkAAAAAIABAAAAC8AAACRAAAAAgAEAAAAMwAAAJIAAAACAAQAAAA3AAAAkwAAAAIABAAAADsAAACUAAAAAgAEAAAAPgAAAJUAAAACAAQAAABCAAAAlgAAAAIABAAAAEcAAACXAAAAAgAEAAAATwAAAJgAAAACAAQAAABRAAAAmQAAAAIABAAAAFcAAACaAAAAAgAEAAAAWwAAAJsAAAACAAQAAABfAAAAnAAAAAIABAAAAGMAAACdAAAAAgAEAAAAawAAAJ4AAAACAAQAAABuAAAAnwAAAAIABAAAAHEAAACgAAAAAgAEAAAAegAAAAoAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAABfAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAAF8AAAADAAAAAAClAAAAAAAAAGAAAAAKAAEAAAChAAAAAgAAAAAAAwAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAQAAAAAAAAACAAAAAABgAAAAAwAAAAAApgAAAAAAAACPAAAAAwABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAACAAAAAAAAAAAAAAAAAAAAAwAAAAAAAAAAAAAAAQAAAAUAAAAAAAAAAQAAAAEAAAAFAAAAEAAAAAEAAAABAAAABQAAACAAAAABAAAAAQAAAAUAAAAwAAAAAQAAAAEAAAAFAAAAQAAAAAEAAAABAAAABQAAAFAAAAABAAAAAQAAAAUAAABgAAAAAQAAAAEAAAAFAAAAcAAAAAEAAAABAAAABQAAAIAAAAABAAAAAQAAAAUAAACQAAAAAQAAAAEAAAAFAAAAoAAAAAEAAAABAAAABQAAALAAAAABAAAAAQAAAAUAAADAAAAAAQAAAAEAAAAFAAAA0AAAAAEAAAABAAAABQAAAOAAAAABAAAAAQAAAAUAAADwAAAAAQAAAAEAAAAFAAAAAAEAAAEAAAABAAAABQAAABABAAABAAAAAQAAAAUAAAAgAQAAAQAAAAEAAAAFAAAAMAEAAAEAAAABAAAABQAAAEABAAABAAAAAQAAAAUAAABQAQAAAQAAAAEAAAAFAAAAYAEAAAEAAAAAAAAABAAAAHABAAAAAAAAAQAAAAUAAABwAQAAAQAAAAEAAAAFAAAAgAEAAAEAAAABAAAABQAAAJABAAABAAAAAQAAAAUAAACgAQAAAQAAAAEAAAAFAAAAsAEAAAEAAAABAAAABQAAAMABAAABAAAAAQAAAAUAAADQAQAAAQAAAAEAAAAFAAAA4AEAAAEAAAABAAAABQAAAPABAAABAAAAAQAAAAUAAAAAAgAAAQAAAAEAAAAFAAAAEAIAAAEAAAABAAAABQAAACACAAABAAAAAQAAAAUAAAAwAgAAAQAAAAEAAAAFAAAAQAIAAAEAAAABAAAABQAAAFACAAABAAAAAQAAAAUAAABgAgAAAQAAAAEAAAAFAAAAcAIAAAEAAAABAAAABQAAAIACAAABAAAAAQAAAAUAAACQAgAAAQAAAAEAAAAFAAAAoAIAAAEAAAABAAAABQAAALACAAABAAAAAQAAAAUAAADAAgAAAQAAAAEAAAAFAAAA0AIAAAEAAAABAAAABQAAAOACAAABAAAAAQAAAAUAAADwAgAAAQAAAAEAAAAFAAAAAAMAAAEAAAABAAAABQAAABADAAABAAAAAQAAAAUAAAAgAwAAAQAAAAEAAAAFAAAAMAMAAAEAAAABAAAABQAAAEADAAABAAAAAQAAAAUAAABQAwAAAQAAAAEAAAAFAAAAYAMAAAEAAAABAAAABQAAAHADAAABAAAAAQAAAAUAAACAAwAAAQAAAAEAAAAFAAAAkAMAAAEAAAABAAAABQAAAKADAAABAAAAAQAAAAUAAACwAwAAAQAAAAEAAAAFAAAAwAMAAAEAAAABAAAABQAAANADAAABAAAAAQAAAAUAAADgAwAAAQAAAAEAAAAFAAAA8AMAAAEAAAAAAAAABQAAAAAEAAAAAAAAAQAAAAUAAAAABAAAAQAAAAEAAAAFAAAAEAQAAAEAAAABAAAABQAAACAEAAABAAAAAQAAAAUAAAAwBAAAAQAAAAEAAAAFAAAAQAQAAAEAAAABAAAABQAAAFAEAAABAAAAAQAAAAUAAABgBAAAAQAAAAEAAAAFAAAAcAQAAAEAAAABAAAABQAAAIAEAAABAAAAAQAAAAUAAACQBAAAAQAAAAEAAAAFAAAAoAQAAAEAAAABAAAABQAAALAEAAABAAAAAAAAAAYAAADABAAAAAAAAAEAAAAFAAAAwAQAAAEAAAABAAAABQAAANAEAAABAAAAAQAAAAUAAADgBAAAAQAAAAEAAAAFAAAA8AQAAAEAAAABAAAABQAAAAAFAAABAAAAAAAAAAcAAAAQBQAAAAAAAAEAAAAFAAAAEAUAAAEAAAABAAAABQAAACAFAAABAAAAAQAAAAUAAAAwBQAAAQAAAAAAAAAIAAAAQAUAAAAAAAABAAAABQAAAEAFAAABAAAAAgAAAAAAAABQBQAAAQAAAAAAAAAJAAAAYAUAAAAAAAAAAAAACgAAAGAFAAAAAAAAAgAAAAAAAABgBQAAAQAAAAIAAAAAAAAAcAUAAAEAAAADAAAABgAAAIAFAAABAAAAAwAAAAUAAAD+CAAAAQAAAAMAAAAGAAAA7AsAAAEAAAADAAAABgAAAD4OAAABAAAAAQAAAAUAAAC6FgAAAQAAAAEAAAAFAAAAyhYAAAEAAAABAAAABQAAANoWAAABAAAAAQAAAAUAAADqFgAAAQAAAAEAAAAFAAAA+hYAAAEAAAABAAAABQAAAAoXAAABAAAAAQAAAAUAAAAaFwAAAQAAAAEAAAAFAAAAKhcAAAEAAAABAAAABQAAADoXAAABAAAAAQAAAAUAAABKFwAAAQAAAAEAAAAFAAAAWhcAAAEAAAABAAAABQAAAGoXAAABAAAAAQAAAAUAAAB6FwAAAQAAAAEAAAAFAAAAihcAAAEAAAABAAAABQAAAJoXAAABAAAAAQAAAAUAAACqFwAAAQAAAAEAAAAFAAAAuhcAAAEAAAABAAAABQAAAMoXAAABAAAAAQAAAAUAAADaFwAAAQAAAAEAAAAFAAAA6hcAAAEAAAABAAAABQAAAPoXAAABAAAAAQAAAAUAAAAKGAAAAQAAAAEAAAAFAAAAGhgAAAEAAAABAAAABQAAACoYAAABAAAAAQAAAAUAAAA6GAAAAQAAAAEAAAAFAAAAShgAAAEAAAABAAAABQAAAFoYAAABAAAAAQAAAAUAAABqGAAAAQAAAAEAAAAFAAAAehgAAAEAAAABAAAABQAAAIoYAAABAAAAAQAAAAUAAACaGAAAAQAAAAEAAAAFAAAAqhgAAAEAAAABAAAABQAAALoYAAABAAAAAQAAAAUAAADKGAAAAQAAAAEAAAAFAAAA2hgAAAEAAAABAAAABQAAAOoYAAABAAAAAQAAAAUAAAD6GAAAAQAAAAEAAAAFAAAAChkAAAEAAAABAAAABQAAABoZAAABAAAAAQAAAAUAAAAqGQAAAQAAAAAAAAALAAAAOhkAAAAAAAADAAAABgAAADoZAAABAAAAAwAAAAYAAACmGgAAAQAAAAMAAAAIAAAAiBsAAAEAAAADAAAACAAAALAbAAABAAAAAwAAAAgAAADYGwAAAQAAAAMAAAAIAAAAABwAAAEAAAADAAAACAAAADAcAAABAAAAAwAAAAgAAABgHAAAAQAAAAMAAAAIAAAAkBwAAAEAAAADAAAACAAAALgcAAABAAAAAwAAAAgAAADgHAAAAQAAAAMAAAAIAAAACB0AAAEAAAADAAAACAAAADAdAAABAAAAAwAAAAgAAABYHQAAAQAAAAMAAAAIAAAAgB0AAAEAAAADAAAACAAAAKgdAAABAAAAAwAAAAgAAADYHQAAAQAAAAMAAAAIAAAACB4AAAEAAAADAAAACAAAADAeAAABAAAAAwAAAAgAAABYHgAAAQAAAAIAAAAAAAAAgB4AAAEAAAACAAAAAAAAAJAeAAABAAAAAwAAAAMAAACgHgAAAQAAAAsAAAAAAAAAAAABAAEAAQALAAAAAAABAAAAAQABAAEACwAAAAAAAgAAAAEAAQABAAsAAAAAAAMAAAABAAEAAQALAAAAAAAEAAAAAQABAAEACwAAAAAABQAAAAEAAQABAAsAAAAAAAYAAAABAAEAAQALAAAAAAAHAAAAAQABAAEACwAAAAAACAAAAAEAAQABAAsAAAAAAAkAAAABAAEAAQALAAAAAAAKAAAAAQABAAEACwAAAAAACwAAAAEAAQABAAsAAAAAAAwAAAABAAEAAQALAAAAAAANAAAAAQABAAEACwAAAAAADgAAAAEAAQABAAsAAAAAAA8AAAABAAEAAQALAAAAAAAQAAAAAQABAAEACwAAAAAAEQAAAAEAAQABAAsAAAAAABIAAAABAAEAAQALAAAAAAATAAAAAQABAAEACwAAAAAAFAAAAAEAAQABAAsAAAAAABUAAAABAAEAAQALAAAAAAAWAAAAAQABAAEACwAAAAAAFwAAAAEAAQABAAsAAAAAABgAAAABAAEAAQALAAAAAAAZAAAAAQABAAEACwAAAAAAGgAAAAEAAQABAAsAAAAAABsAAAABAAEAAQALAAAAAAAcAAAAAQABAAEACwAAAAAAHQAAAAEAAQABAAsAAAAAAB4AAAABAAEAAQALAAAAAAAfAAAAAQABAAEACwAAAAAAIAAAAAEAAQABAAsAAAAAACEAAAABAAEAAQALAAAAAAAiAAAAAQABAAEACwAAAAAAIwAAAAEAAQABAAsAAAAAACQAAAABAAEAAQALAAAAAAAlAAAAAQABAAEACwAAAAAAJgAAAAEAAQABAAsAAAAAACcAAAABAAEAAQALAAAAAAAoAAAAAQABAAEACwAAAAAAKQAAAAEAAQABAAsAAAAAACoAAAABAAEAAQALAAAAAAArAAAAAQABAAEACwAAAAAALAAAAAEAAQABAAsAAAAAAC0AAAABAAEAAQALAAAAAAAuAAAAAQABAAEACwAAAAAALwAAAAEAAQABAAsAAAAAADAAAAABAAEAAQALAAAAAAAxAAAAAQABAAEACwAAAAAAMgAAAAEAAQABAAsAAAAAADMAAAABAAEAAQALAAAAAAA0AAAAAQABAAEACwAAAAAANQAAAAEAAQABAAsAAAAAADYAAAABAAEAAQALAAAAAAA3AAAAAQABAAEACwAAAAAAOAAAAAEAAQABAAsAAAAAADkAAAABAAEAAQALAAAAAAA6AAAAAQABAAEACwAAAAAAOwAAAAEAAQABAAsAAAAAADwAAAABAAEAAQALAAAAAAA9AAAAAQABAAEACwAAAAAAPgAAAAEAAQABAAsAAAAAAD8AAAABAAEAAQALAAAAAABAAAAAAQABAAEACwAAAAAAQQAAAAEAAQABAAsAAAAAAEIAAAABAAEAAQALAAAAAABDAAAAAQABAAEACwAAAAAARAAAAAEAAQABAAsAAAAAAEUAAAABAAEAAQALAAAAAABGAAAAAQABAAEACwAAAAAARwAAAAEAAQABAAsAAAAAAEgAAAABAAEAAQALAAAAAABJAAAAAQABAAEACwAAAAAASgAAAAEAAQABAAsAAAAAAEsAAAABAAEAAQALAAAAAABMAAAAAQABAAEACwAAAAAATQAAAAEAAQABAAsAAAAAAE4AAAABAAEAAQALAAAAAABPAAAAAQABAAEACwAAAAAAUAAAAAEAAQABAAsAAAAAAFEAAAABAAEAAQALAAAAAABSAAAAAQABAAEACwAAAAAAUwAAAAEAAQABAAsAAAAAAFQAAAABAAEAAQB5AAAABwAAAAAACgAAAAAAegAAAAcAAAAAAAoAAAAAAAkAAAAHAAAAAAAKAAAAAAAGAH0AAAAKAAIAAAAuAAAAAgAAAAAAkgAAAC8AAAACAAAAAACTAAAACgAXAAAADwAAAAIAAAAAAAQAAAAZAAAAAgAAAAAABQAAABoAAAACAAAAAAAGAAAAGwAAAAIAAAAAAAcAAAAcAAAAAgAAAAAACAAAAB0AAAACAAAAAAAJAAAAHgAAAAIAAAAAAAoAAAAfAAAAAgAAAAAACwAAACAAAAACAAAAAAAMAAAAIQAAAAIAAAAAAA0AAAAiAAAAAgAAAAAADgAAACMAAAACAAAAAAAPAAAAJAAAAAIAAAAAABAAAAAlAAAAAgAAAAAAEQAAACYAAAACAAAAAAASAAAAJwAAAAIAAAAAABMAAAAoAAAAAgAAAAAAFAAAACkAAAACAAAAAAAVAAAAKgAAAAIAAAAAABYAAAArAAAAAgAAAAAAFwAAACwAAAACAAAAAAAYAAAALQAAAAIAAAAAABkAAAAYAAAAAgAAAAAAGgAAAAcAFwAAAAIAAAAAAAQAAAACAAAAAAAFAAAAAgAAAAAABgAAAAIAAAAAAAcAAAACAAAAAAAIAAAAAgAAAAAACQAAAAIAAAAAAAoAAAACAAAAAAALAAAAAgAAAAAADAAAAAIAAAAAAA0AAAACAAAAAAAOAAAAAgAAAAAADwAAAAIAAAAAABAAAAACAAAAAAARAAAAAgAAAAAAEgAAAAIAAAAAABMAAAACAAAAAAAUAAAAAgAAAAAAFQAAAAIAAAAAABYAAAACAAAAAAAXAAAAAgAAAAAAGAAAAAIAAAAAABkAAAACAAAAAAAaAAAABwAAAAAABwABAAAAAgABAAAABwAAAAcAAAAAAAIAAQAAAAcAAAAHAAAAAAAKAAAAAAAEAAEAAAAAAAAABwACAAAAAgAAAAAAAwAAAAIAAQAAAAcAAAAHAAAAAAAKAAAAAAAKAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAgAAAAcABAAAAAQAAQAAAAAAAAACAAAAAAADAAAABgAbAAAABgAuAAAABwAEAAAABAABAAAAAAAAAAIAAAAAAAMAAAAGAH4AAAAGAC8AAAAHAAIAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAAwAAAAYAGwAAAAYALgAAAAcABAAAAAQAAQAAAAAAAAACAAAAAAADAAAABgB+AAAABgAvAAAAAQAGAAQAAAAKAAoAAAA/AAAAAgAAAAAAlAAAAG8AAAACAAAAAACVAAAAQAAAAAIAAAAAAJYAAABwAAAAAgAAAAAAlwAAAHEAAAACAAAAAACYAAAAcgAAAAIAAAAAAJkAAABzAAAAAgAAAAAAmgAAAHQAAAACAAAAAACbAAAAdQAAAAIAAAAAAJwAAAB2AAAAAgAAAAAAnQAAAAoAKAAAAEgAAAACAAAAAAAcAAAANAAAAAIAAAAAAB0AAABJAAAAAgAAAAAAHgAAAEoAAAACAAAAAAAfAAAASwAAAAIAAAAAACAAAABMAAAAAgAAAAAAIQAAAE0AAAACAAAAAAAiAAAATgAAAAIAAAAAACMAAABPAAAAAgAAAAAAJAAAAFAAAAACAAAAAAAlAAAAUQAAAAIAAAAAACYAAABSAAAAAgAAAAAAJwAAAFMAAAACAAAAAAAoAAAAVAAAAAIAAAAAACkAAABVAAAAAgAAAAAAKgAAAFYAAAACAAAAAAArAAAAVwAAAAIAAAAAACwAAABYAAAAAgAAAAAALQAAAFkAAAACAAAAAAAuAAAAWgAAAAIAAAAAAC8AAABbAAAAAgAAAAAAMAAAAFwAAAACAAAAAAAxAAAAXQAAAAIAAAAAADIAAABeAAAAAgAAAAAAMwAAAF8AAAACAAAAAAA0AAAAYAAAAAIAAAAAADUAAABhAAAAAgAAAAAANgAAAGIAAAACAAAAAAA3AAAAYwAAAAIAAAAAADgAAABkAAAAAgAAAAAAOQAAAGUAAAACAAAAAAA6AAAAZgAAAAIAAAAAADsAAABnAAAAAgAAAAAAPAAAAGgAAAACAAAAAAA9AAAAaQAAAAIAAAAAAD4AAABqAAAAAgAAAAAAPwAAAGsAAAACAAAAAABAAAAAbAAAAAIAAAAAAEEAAABtAAAAAgAAAAAAQgAAAG4AAAACAAAAAABDAAAABwAAAAAABwAAAAAABAABAAAAAAAAAAIAAAAAAEQAAAAGAAUAAAAKAAUAAAA/AAAAAgAAAAAAngAAAEAAAAACAAAAAACfAAAAQQAAAAIAAAAAAKAAAABCAAAAAgAAAAAAoQAAAEMAAAACAAAAAACiAAAACgAKAAAANAAAAAIAAAAAAEYAAAA1AAAAAgAAAAAARwAAADYAAAACAAAAAABIAAAANwAAAAIAAAAAAEkAAAAQAAAAAgAAAAAASgAAADgAAAACAAAAAABNAAAAOQAAAAIAAAAAAE4AAAA6AAAAAgAAAAAATwAAADsAAAACAAAAAABQAAAAPAAAAAIAAAAAAFEAAAAHAAoAAAACAAAAAABGAAAAAgAAAAAARwAAAAIAAAAAAEgAAAACAAAAAABJAAAAAgAAAAAASgAAAAIAAAAAAE0AAAACAAAAAABOAAAAAgAAAAAATwAAAAIAAAAAAFAAAAACAAAAAABRAAAABwAAAAAABwABAAAAAgABAAAAHAAAAAcAAAAAAAEABwAAAAAACgAAAAAABAABAAAAAAAAAAcAAwAAAAIAAAAAAEUAAAACAAEAAAAcAAAAAgABAAAABwAAAAcAAAAAAAoAAwAAAH8AAAACAAAAAABKAAAAgAAAAAIAAAAAAEsAAACBAAAAAgAAAAAATAAAAAoAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwACAAAABwACAAAABAAAAAAAAAAAAAIAAQAAAB4AAAAHAAIAAAAEAAAAAAAAAAAAAgABAAAAHgAAAAcAAQAAAAcAAgAAAAQAAAAAAAAAAAACAAEAAAAeAAAAAQAGAAYAAAAKAAoAAAA/AAAAAgAAAAAAlAAAAG8AAAACAAAAAACVAAAAQAAAAAIAAAAAAJYAAABwAAAAAgAAAAAAlwAAAHEAAAACAAAAAACYAAAAcgAAAAIAAAAAAJkAAABzAAAAAgAAAAAAmgAAAHQAAAACAAAAAACbAAAAdQAAAAIAAAAAAJwAAAB2AAAAAgAAAAAAnQAAAAoALQAAAEQAAAACAAAAAABTAAAAOAAAAAIAAAAAAFQAAABFAAAAAgAAAAAAVQAAAEYAAAACAAAAAABWAAAARwAAAAIAAAAAAFcAAABIAAAAAgAAAAAAZwAAADQAAAACAAAAAABoAAAASQAAAAIAAAAAAGkAAABKAAAAAgAAAAAAagAAAEsAAAACAAAAAABrAAAATAAAAAIAAAAAAGwAAABNAAAAAgAAAAAAbQAAAE4AAAACAAAAAABuAAAATwAAAAIAAAAAAG8AAABQAAAAAgAAAAAAcAAAAFEAAAACAAAAAABxAAAAUgAAAAIAAAAAAHIAAABTAAAAAgAAAAAAcwAAAFQAAAACAAAAAAB0AAAAVQAAAAIAAAAAAHUAAABWAAAAAgAAAAAAdgAAAFcAAAACAAAAAAB3AAAAWAAAAAIAAAAAAHgAAABZAAAAAgAAAAAAeQAAAFoAAAACAAAAAAB6AAAAWwAAAAIAAAAAAHsAAABcAAAAAgAAAAAAfAAAAF0AAAACAAAAAAB9AAAAXgAAAAIAAAAAAH4AAABfAAAAAgAAAAAAfwAAAGAAAAACAAAAAACAAAAAYQAAAAIAAAAAAIEAAABiAAAAAgAAAAAAggAAAGMAAAACAAAAAACDAAAAZAAAAAIAAAAAAIQAAABlAAAAAgAAAAAAhQAAAGYAAAACAAAAAACGAAAAZwAAAAIAAAAAAIcAAABoAAAAAgAAAAAAiAAAAGkAAAACAAAAAACJAAAAagAAAAIAAAAAAIoAAABrAAAAAgAAAAAAiwAAAGwAAAACAAAAAACMAAAAbQAAAAIAAAAAAI0AAABuAAAAAgAAAAAAjgAAAAcALQAAAAIAAAAAAFMAAAACAAAAAABUAAAAAgAAAAAAVQAAAAIAAAAAAFYAAAACAAAAAABXAAAAAgAAAAAAZwAAAAIAAAAAAGgAAAACAAAAAABpAAAAAgAAAAAAagAAAAIAAAAAAGsAAAACAAAAAABsAAAAAgAAAAAAbQAAAAIAAAAAAG4AAAACAAAAAABvAAAAAgAAAAAAcAAAAAIAAAAAAHEAAAACAAAAAAByAAAAAgAAAAAAcwAAAAIAAAAAAHQAAAACAAAAAAB1AAAAAgAAAAAAdgAAAAIAAAAAAHcAAAACAAAAAAB4AAAAAgAAAAAAeQAAAAIAAAAAAHoAAAACAAAAAAB7AAAAAgAAAAAAfAAAAAIAAAAAAH0AAAACAAAAAAB+AAAAAgAAAAAAfwAAAAIAAAAAAIAAAAACAAAAAACBAAAAAgAAAAAAggAAAAIAAAAAAIMAAAACAAAAAACEAAAAAgAAAAAAhQAAAAIAAAAAAIYAAAACAAAAAACHAAAAAgAAAAAAiAAAAAIAAAAAAIkAAAACAAAAAACKAAAAAgAAAAAAiwAAAAIAAAAAAIwAAAACAAAAAACNAAAAAgAAAAAAjgAAAAcAAAAAAAcAAQAAAAIAAQAAAAcAAAAHAAEAAAACAAAAAAAbAAAAAgABAAAABwAAAAcAAAAAAAoAAAAAAAQAAQAAAAAAAAAHAAIAAAACAAAAAABSAAAAAgABAAAABwAAAAcAAgAAAAIAAAAAABsAAAACAAAAAACPAAAACgAAAAAACgAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAoAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAUgAAAAYANQAAAAYAPwAAAAcABAAAAAQAAQAAAAAAAAACAAAAAABSAAAABgBIAAAABgBvAAAABwAEAAAABAABAAAAAAAAAAIAAAAAAFIAAAAGADQAAAAGAEAAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAUgAAAAYASQAAAAYAcAAAAAcABAAAAAQAAQAAAAAAAAACAAAAAABSAAAABgCCAAAABgBxAAAABwAEAAAABAABAAAAAAAAAAIAAAAAAFIAAAAGAIMAAAAGAHIAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAUgAAAAYAhAAAAAYAcwAAAAcABAAAAAQAAQAAAAAAAAACAAAAAABSAAAABgCFAAAABgB0AAAABwAEAAAABAABAAAAAAAAAAIAAAAAAFIAAAAGAIYAAAAGAHUAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAUgAAAAYAhwAAAAYAdgAAAAcACgAAAAcABAAAAAQAAQAAAAAAAAACAAAAAABSAAAABgA1AAAABgA/AAAABwAEAAAABAABAAAAAAAAAAIAAAAAAFIAAAAGAEgAAAAGAG8AAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAUgAAAAYANAAAAAYAQAAAAAcABAAAAAQAAQAAAAAAAAACAAAAAABSAAAABgBJAAAABgBwAAAABwAEAAAABAABAAAAAAAAAAIAAAAAAFIAAAAGAIIAAAAGAHEAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAUgAAAAYAgwAAAAYAcgAAAAcABAAAAAQAAQAAAAAAAAACAAAAAABSAAAABgCEAAAABgBzAAAABwAEAAAABAABAAAAAAAAAAIAAAAAAFIAAAAGAIUAAAAGAHQAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAUgAAAAYAhgAAAAYAdQAAAAcABAAAAAQAAQAAAAAAAAACAAAAAABSAAAABgCHAAAABgB2AAAAAQAMAAAAAABVAAAAAQABAAEADAAAAAAAVgAAAAEAAQABAAwAAAAAAFcAAAABAAEAAQAMAAAAAABYAAAAAQABAAEADAAAAAAAWQAAAAEAAQABAAwAAAAAAFoAAAABAAEAAQAMAAAAAABbAAAAAQABAAEADAAAAAAAXAAAAAEAAQABAAwAAAAAAF0AAAABAAEAAQAMAAAAAABeAAAAAQABAAEADAAAAAAAXwAAAAEAAQABAAwAAAAAAGAAAAABAAEAAQAMAAAAAABhAAAAAQABAAEADAAAAAAAYgAAAAEAAQABAAwAAAAAAGMAAAABAAEAAQAMAAAAAABkAAAAAQABAAEADAAAAAAAZQAAAAEAAQABAAwAAAAAAGYAAAABAAEAAQAMAAAAAABnAAAAAQABAAEADAAAAAAAaAAAAAEAAQABAAwAAAAAAGkAAAABAAEAAQAMAAAAAABqAAAAAQABAAEADAAAAAAAawAAAAEAAQABAAwAAAAAAGwAAAABAAEAAQAMAAAAAABtAAAAAQABAAEADAAAAAAAbgAAAAEAAQABAAwAAAAAAG8AAAABAAEAAQAMAAAAAABwAAAAAQABAAEADAAAAAAAcQAAAAEAAQABAAwAAAAAAHIAAAABAAEAAQAMAAAAAABzAAAAAQABAAEADAAAAAAAdAAAAAEAAQABAAwAAAAAAHUAAAABAAEAAQAMAAAAAAB2AAAAAQABAAEADAAAAAAAdwAAAAEAAQABAAwAAAAAAHgAAAABAAEAAQAMAAAAAAB5AAAAAQABAAEADAAAAAAAegAAAAEAAQABAAwAAAAAAHsAAAABAAEAAQAMAAAAAAB8AAAAAQABAAEABgAHAAAACgABAAAAdwAAAAIAAAAAAKMAAAAKAAMAAAAPAAAAAgAAAAAAWQAAABYAAAACAAAAAABaAAAAEAAAAAIAAAAAAFsAAAAHAAMAAAACAAAAAABZAAAAAgAAAAAAWgAAAAIAAAAAAFsAAAAHAAAAAAAHAAEAAAACAAEAAAAHAAAABwAAAAAAAgABAAAABwAAAAcAAAAAAAoAAAAAAAQAAQAAAAAAAAAHAAIAAAACAAAAAABYAAAAAgABAAAABwAAAAcAAAAAAAoAAQAAAH8AAAACAAAAAABbAAAACgABAAAAiAAAAAcAAgAAAAIAAAAAAFgAAAAGAHcAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAQAAAAcABAAAAAQAAQAAAAAAAAACAAAAAABYAAAABgCJAAAABgB3AAAABwABAAAABwAEAAAABAABAAAAAAAAAAIAAAAAAFgAAAAGAIkAAAAGAHcAAAABAAYACAAAAAoAAAAAAAoAAQAAABYAAAACAAAAAABdAAAABwABAAAAAgAAAAAAXQAAAAcAAAAAAAcAAQAAAAIAAAAAAFgAAAAHAAAAAAABAAcAAAAAAAoAAAAAAAQAAQAAAAAAAAAHAAMAAAACAAAAAABcAAAAAgAAAAAAWAAAAAIAAQAAAAcAAAAHAAAAAAAKAAAAAAAKAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAQAAAAcABAAAAAQAAQAAAAAAAAACAAAAAABYAAAABgCJAAAABgB3AAAABwAAAAAAAQAGAC4AAAADAAQAAAAAAAAAAAADAAIAAQAAAAcAAAAEAAEAAAAAAAAABgAvAAAAAwAEAAAAAAAAAAAAAwACAAEAAAAHAAAABAABAAAAAAAAAAYAPwAAAAMABAAAAAAAAAAAAAMAAgABAAAABwAAAAQAAQAAAAAAAAAGAG8AAAACAAEAAAAEAAAABAABAAAAAAAAAAMAAgABAAAABAAAAAQAAQAAAAAAAAAGAEAAAAACAAEAAAACAAAABAABAAAAAAAAAAMAAgABAAAAAgAAAAQAAQAAAAAAAAAGAHAAAAACAAEAAAACAAAABAABAAAAAAAAAAMAAgABAAAAAgAAAAQAAQAAAAAAAAAGAHEAAAADAAQAAAAAAAAAAAADAAIAAQAAAAcAAAAEAAEAAAAAAAAABgByAAAAAwAEAAAAAAAAAAAAAwACAAEAAAAHAAAABAABAAAAAAAAAAYAcwAAAAMABAAAAAAAAAAAAAMAAgABAAAABwAAAAQAAQAAAAAAAAAGAHQAAAADAAQAAAAAAAAAAAADAAIAAQAAAAcAAAAEAAEAAAAAAAAABgB1AAAAAwAEAAAAAAAAAAAAAwACAAEAAAAHAAAABAABAAAAAAAAAAYAdgAAAAMABAAAAAAAAAAAAAMAAgABAAAABwAAAAQAAQAAAAAAAAAGAD8AAAADAAQAAAAAAAAAAAADAAIAAQAAAAcAAAAEAAEAAAAAAAAABgBAAAAAAgABAAAAAgAAAAQAAQAAAAAAAAADAAIAAQAAAAIAAAAEAAEAAAAAAAAABgBBAAAAAgABAAAAAgAAAAQAAQAAAAAAAAADAAIAAQAAAAIAAAAEAAEAAAAAAAAABgBCAAAAAwAEAAAAAAAAAAAAAwACAAEAAAAHAAAABAABAAAAAAAAAAYAQwAAAAMABAAAAAAAAAAAAAMAAgABAAAABwAAAAQAAQAAAAAAAAAGAHcAAAADAAQAAAAAAAAAAAADAAIAAQAAAAcAAAAEAAEAAAAAAAAAAgAAAAcAAAAAAAoAAAAAAAMAAAAHAAAAAAAKAAAAAAAGAAQAAAACAAAAAAAbAAAACgAKAAAAPwAAAAIAAAAAAJQAAABvAAAAAgAAAAAAlQAAAEAAAAACAAAAAACWAAAAcAAAAAIAAAAAAJcAAABxAAAAAgAAAAAAmAAAAHIAAAACAAAAAACZAAAAcwAAAAIAAAAAAJoAAAB0AAAAAgAAAAAAmwAAAHUAAAACAAAAAACcAAAAdgAAAAIAAAAAAJ0AAAAKACgAAABIAAAAAgAAAAAAZwAAADQAAAACAAAAAABoAAAASQAAAAIAAAAAAGkAAABKAAAAAgAAAAAAagAAAEsAAAACAAAAAABrAAAATAAAAAIAAAAAAGwAAABNAAAAAgAAAAAAbQAAAE4AAAACAAAAAABuAAAATwAAAAIAAAAAAG8AAABQAAAAAgAAAAAAcAAAAFEAAAACAAAAAABxAAAAUgAAAAIAAAAAAHIAAABTAAAAAgAAAAAAcwAAAFQAAAACAAAAAAB0AAAAVQAAAAIAAAAAAHUAAABWAAAAAgAAAAAAdgAAAFcAAAACAAAAAAB3AAAAWAAAAAIAAAAAAHgAAABZAAAAAgAAAAAAeQAAAFoAAAACAAAAAAB6AAAAWwAAAAIAAAAAAHsAAABcAAAAAgAAAAAAfAAAAF0AAAACAAAAAAB9AAAAXgAAAAIAAAAAAH4AAABfAAAAAgAAAAAAfwAAAGAAAAACAAAAAACAAAAAYQAAAAIAAAAAAIEAAABiAAAAAgAAAAAAggAAAGMAAAACAAAAAACDAAAAZAAAAAIAAAAAAIQAAABlAAAAAgAAAAAAhQAAAGYAAAACAAAAAACGAAAAZwAAAAIAAAAAAIcAAABoAAAAAgAAAAAAiAAAAGkAAAACAAAAAACJAAAAagAAAAIAAAAAAIoAAABrAAAAAgAAAAAAiwAAAGwAAAACAAAAAACMAAAAbQAAAAIAAAAAAI0AAABuAAAAAgAAAAAAjgAAAAcAAAAAAAcAAAAAAAcAAAAAAAcAAAAAAAQAAQAAAAAAAAAAAAAAFwAAAAEAAAABAAAAAAAAAGcAAAAAAAAAGAAAAAEAAAABAAAAAAAAAGgAAAAAAAAAGQAAAAEAAAABAAAAAAAAAGkAAAAAAAAAGgAAAAEAAAABAAAAAAAAAGoAAAAAAAAAGwAAAAEAAAABAAAAAAAAAGsAAAAAAAAAHAAAAAEAAAABAAAAAAAAAGwAAAAAAAAAHQAAAAEAAAABAAAAAAAAAG0AAAAAAAAAHgAAAAEAAAABAAAAAAAAAG4AAAAAAAAAHwAAAAEAAAABAAAAAAAAAG8AAAAAAAAAIAAAAAEAAAABAAAAAAAAAHAAAAAAAAAAIQAAAAEAAAABAAAAAAAAAHEAAAAAAAAAIgAAAAEAAAABAAAAAAAAAHIAAAAAAAAAIwAAAAEAAAABAAAAAAAAAHMAAAAAAAAAJAAAAAEAAAABAAAAAAAAAHQAAAAAAAAAJQAAAAEAAAABAAAAAAAAAHUAAAAAAAAAJgAAAAEAAAABAAAAAAAAAHYAAAAAAAAAJwAAAAEAAAABAAAAAAAAAHcAAAAAAAAAKAAAAAEAAAABAAAAAAAAAHgAAAAAAAAAKQAAAAEAAAABAAAAAAAAAHkAAAAAAAAAKgAAAAEAAAABAAAAAAAAAHoAAAAAAAAAKwAAAAEAAAABAAAAAAAAAHsAAAAAAAAALAAAAAEAAAABAAAAAAAAAHwAAAAAAAAALQAAAAEAAAABAAAAAAAAAH0AAAAAAAAALgAAAAEAAAABAAAAAAAAAH4AAAAAAAAALwAAAAEAAAABAAAAAAAAAH8AAAAAAAAAMAAAAAEAAAABAAAAAAAAAIAAAAAAAAAAMQAAAAEAAAABAAAAAAAAAIEAAAAAAAAAMgAAAAEAAAABAAAAAAAAAIIAAAAAAAAAMwAAAAEAAAABAAAAAAAAAIMAAAAAAAAANAAAAAEAAAABAAAAAAAAAIQAAAAAAAAANQAAAAEAAAABAAAAAAAAAIUAAAAAAAAANgAAAAEAAAABAAAAAAAAAIYAAAAAAAAANwAAAAEAAAABAAAAAAAAAIcAAAAAAAAAOAAAAAEAAAABAAAAAAAAAIgAAAAAAAAAOQAAAAEAAAABAAAAAAAAAIkAAAAAAAAAOgAAAAEAAAABAAAAAAAAAIoAAAAAAAAAOwAAAAEAAAABAAAAAAAAAIsAAAAAAAAAPAAAAAEAAAABAAAAAAAAAIwAAAAAAAAAPQAAAAEAAAABAAAAAAAAAI0AAAAAAAAAPgAAAAEAAAABAAAAAAAAAI4AAAAAAAAAPwAAAAAAAAAAAAAABAAAAAAAAACiAAAACgAAAAAAowAAAAQAAQAAAAAAAACkAAAABwAAAAAApQAAAAIAAAAAAFIAAAA=", cur_sc, $P5003, $P5005
    .const "LexInfo" $P5001 = "cuid_1_1347804141.46"
    nqp_get_sc_object $P5002, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 0
    $P5003 = $P5001."set_static_lexpad_value"("GLOBALish", $P5002)
    .const "LexInfo" $P5004 = "cuid_1_1347804141.46"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1347804141.46"
    nqp_get_sc_object $P5002, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 0
    $P5003 = $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5004 = "cuid_1_1347804141.46"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1347804141.46"
    nqp_get_sc_object $P5002, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 1
    $P5003 = $P5001."set_static_lexpad_value"("EXPORT", $P5002)
    .const "LexInfo" $P5004 = "cuid_1_1347804141.46"
    $P5005 = $P5004."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_2_1347804141.46" 
    nqp_get_sc_object $P5002, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 4
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_3_1347804141.46" 
    nqp_get_sc_object $P5002, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 5
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_4_1347804141.46" 
    nqp_get_sc_object $P5002, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 6
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_5_1347804141.46" 
    nqp_get_sc_object $P5002, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 7
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_6_1347804141.46" 
    nqp_get_sc_object $P5002, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 8
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_7_1347804141.46" 
    nqp_get_sc_object $P5002, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 9
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_8_1347804141.46" 
    nqp_get_sc_object $P5002, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 10
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_9_1347804141.46" 
    nqp_get_sc_object $P5002, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 11
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_10_1347804141.46" 
    nqp_get_sc_object $P5002, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 12
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_11_1347804141.46" 
    nqp_get_sc_object $P5002, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 13
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_12_1347804141.46" 
    nqp_get_sc_object $P5002, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 14
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_13_1347804141.46" 
    nqp_get_sc_object $P5002, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 15
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_14_1347804141.46" 
    nqp_get_sc_object $P5002, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 16
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_15_1347804141.46" 
    nqp_get_sc_object $P5002, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 17
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_16_1347804141.46" 
    nqp_get_sc_object $P5002, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 18
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_17_1347804141.46" 
    nqp_get_sc_object $P5002, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 19
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_18_1347804141.46" 
    nqp_get_sc_object $P5002, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 20
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_19_1347804141.46" 
    nqp_get_sc_object $P5002, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 21
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_20_1347804141.46" 
    nqp_get_sc_object $P5002, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 22
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_21_1347804141.46" 
    nqp_get_sc_object $P5002, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 23
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_22_1347804141.46" 
    nqp_get_sc_object $P5002, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 24
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_23_1347804141.46" 
    nqp_get_sc_object $P5002, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 25
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_24_1347804141.46" 
    nqp_get_sc_object $P5002, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 26
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_25_1347804141.46"
    nqp_get_sc_object $P5002, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 3
    $P5003 = $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5004 = "cuid_25_1347804141.46"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_25_1347804141.46"
    nqp_get_sc_object $P5002, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 3
    $P5003 = $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5004 = "cuid_25_1347804141.46"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1347804141.46"
    nqp_get_sc_object $P5002, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 27
    $P5003 = $P5001."set_static_lexpad_value"("NQPCursorRole", $P5002)
    .const "LexInfo" $P5004 = "cuid_1_1347804141.46"
    $P5005 = $P5004."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_26_1347804141.46" 
    nqp_get_sc_object $P5002, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 28
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_27_1347804141.46" 
    nqp_get_sc_object $P5002, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 29
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_28_1347804141.46" 
    nqp_get_sc_object $P5002, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 30
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_29_1347804141.46" 
    nqp_get_sc_object $P5002, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 31
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_30_1347804141.46" 
    nqp_get_sc_object $P5002, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 32
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_31_1347804141.46" 
    nqp_get_sc_object $P5002, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 33
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_32_1347804141.46" 
    nqp_get_sc_object $P5002, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 34
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_33_1347804141.46" 
    nqp_get_sc_object $P5002, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 35
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_34_1347804141.46" 
    nqp_get_sc_object $P5002, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 36
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_35_1347804141.46" 
    nqp_get_sc_object $P5002, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 37
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_36_1347804141.46" 
    nqp_get_sc_object $P5002, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 38
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_37_1347804141.46" 
    nqp_get_sc_object $P5002, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 39
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_38_1347804141.46" 
    nqp_get_sc_object $P5002, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 40
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_39_1347804141.46" 
    nqp_get_sc_object $P5002, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 41
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_40_1347804141.46" 
    nqp_get_sc_object $P5002, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 42
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_41_1347804141.46" 
    nqp_get_sc_object $P5002, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 43
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_42_1347804141.46" 
    nqp_get_sc_object $P5002, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 44
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_43_1347804141.46" 
    nqp_get_sc_object $P5002, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 45
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_44_1347804141.46" 
    nqp_get_sc_object $P5002, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 46
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_45_1347804141.46" 
    nqp_get_sc_object $P5002, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 47
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_46_1347804141.46" 
    nqp_get_sc_object $P5002, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 48
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_47_1347804141.46" 
    nqp_get_sc_object $P5002, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 49
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_48_1347804141.46" 
    nqp_get_sc_object $P5002, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 50
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_49_1347804141.46" 
    nqp_get_sc_object $P5002, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 51
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_50_1347804141.46" 
    nqp_get_sc_object $P5002, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 52
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_51_1347804141.46" 
    nqp_get_sc_object $P5002, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 53
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_52_1347804141.46" 
    nqp_get_sc_object $P5002, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 54
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_53_1347804141.46" 
    nqp_get_sc_object $P5002, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 55
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_54_1347804141.46" 
    nqp_get_sc_object $P5002, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 56
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_55_1347804141.46" 
    nqp_get_sc_object $P5002, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 57
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_56_1347804141.46" 
    nqp_get_sc_object $P5002, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 58
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_57_1347804141.46" 
    nqp_get_sc_object $P5002, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 59
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_58_1347804141.46" 
    nqp_get_sc_object $P5002, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 60
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_59_1347804141.46" 
    nqp_get_sc_object $P5002, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 61
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_60_1347804141.46" 
    nqp_get_sc_object $P5002, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 62
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_61_1347804141.46" 
    nqp_get_sc_object $P5002, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 63
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_62_1347804141.46" 
    nqp_get_sc_object $P5002, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 64
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_63_1347804141.46" 
    nqp_get_sc_object $P5002, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 65
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_64_1347804141.46" 
    nqp_get_sc_object $P5002, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 66
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_65_1347804141.46" 
    nqp_get_sc_object $P5002, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 67
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_66_1347804141.46" 
    nqp_get_sc_object $P5002, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 68
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_66_1347804141.46"
    nqp_get_sc_object $P5002, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 27
    $P5003 = $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5004 = "cuid_66_1347804141.46"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_66_1347804141.46"
    nqp_get_sc_object $P5002, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 27
    $P5003 = $P5001."set_static_lexpad_value"("$?ROLE", $P5002)
    .const "LexInfo" $P5004 = "cuid_66_1347804141.46"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1347804141.46"
    nqp_get_sc_object $P5002, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 69
    $P5003 = $P5001."set_static_lexpad_value"("NQPMatch", $P5002)
    .const "LexInfo" $P5004 = "cuid_1_1347804141.46"
    $P5005 = $P5004."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_67_1347804141.46" 
    nqp_get_sc_object $P5002, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 70
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_68_1347804141.46" 
    nqp_get_sc_object $P5002, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 71
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_69_1347804141.46" 
    nqp_get_sc_object $P5002, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 72
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_70_1347804141.46" 
    nqp_get_sc_object $P5002, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 73
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_71_1347804141.46" 
    nqp_get_sc_object $P5002, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 74
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_72_1347804141.46" 
    nqp_get_sc_object $P5002, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 75
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_73_1347804141.46" 
    nqp_get_sc_object $P5002, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 76
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_74_1347804141.46" 
    nqp_get_sc_object $P5002, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 77
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_75_1347804141.46" 
    nqp_get_sc_object $P5002, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 78
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_76_1347804141.46" 
    nqp_get_sc_object $P5002, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 79
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_77_1347804141.46" 
    nqp_get_sc_object $P5002, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 80
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_78_1347804141.46" 
    nqp_get_sc_object $P5002, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 81
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_79_1347804141.46"
    nqp_get_sc_object $P5002, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 69
    $P5003 = $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5004 = "cuid_79_1347804141.46"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_79_1347804141.46"
    nqp_get_sc_object $P5002, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 69
    $P5003 = $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5004 = "cuid_79_1347804141.46"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1347804141.46"
    nqp_get_sc_object $P5002, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 82
    $P5003 = $P5001."set_static_lexpad_value"("NQPCursor", $P5002)
    .const "LexInfo" $P5004 = "cuid_1_1347804141.46"
    $P5005 = $P5004."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_80_1347804141.46" 
    nqp_get_sc_object $P5002, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 83
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_81_1347804141.46" 
    nqp_get_sc_object $P5002, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 84
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_82_1347804141.46" 
    nqp_get_sc_object $P5002, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 85
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_83_1347804141.46" 
    nqp_get_sc_object $P5002, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 86
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_84_1347804141.46" 
    nqp_get_sc_object $P5002, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 87
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_85_1347804141.46"
    nqp_get_sc_object $P5002, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 82
    $P5003 = $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5004 = "cuid_85_1347804141.46"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_85_1347804141.46"
    nqp_get_sc_object $P5002, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 82
    $P5003 = $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5004 = "cuid_85_1347804141.46"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1347804141.46"
    nqp_get_sc_object $P5002, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 88
    $P5003 = $P5001."set_static_lexpad_value"("NQPRegexMethod", $P5002)
    .const "LexInfo" $P5004 = "cuid_1_1347804141.46"
    $P5005 = $P5004."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_96_1347804141.46" 
    nqp_get_sc_object $P5002, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 89
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_97_1347804141.46" 
    nqp_get_sc_object $P5002, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 90
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_98_1347804141.46" 
    nqp_get_sc_object $P5002, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 91
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_99_1347804141.46"
    nqp_get_sc_object $P5002, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 88
    $P5003 = $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5004 = "cuid_99_1347804141.46"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_99_1347804141.46"
    nqp_get_sc_object $P5002, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 88
    $P5003 = $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5004 = "cuid_99_1347804141.46"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1347804141.46"
    nqp_get_sc_object $P5002, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 92
    $P5003 = $P5001."set_static_lexpad_value"("NQPRegex", $P5002)
    .const "LexInfo" $P5004 = "cuid_1_1347804141.46"
    $P5005 = $P5004."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_100_1347804141.46" 
    nqp_get_sc_object $P5002, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 93
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_101_1347804141.46"
    nqp_get_sc_object $P5002, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 92
    $P5003 = $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5004 = "cuid_101_1347804141.46"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_101_1347804141.46"
    nqp_get_sc_object $P5002, "9B1FF812C0CCC4381C163922C45606220ADF053B-1347804141.474", 92
    $P5003 = $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5004 = "cuid_101_1347804141.46"
    $P5005 = $P5004."finish_static_lexpad"()
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_135_1347804141.46") :anon :lex :outer("cuid_136_1347804141.46")
.annotate 'file', "src\\stage2\\QRegex.nqp"
    new $P5001, 'ResizablePMCArray'
    .const 'Sub' $P5002 = "cuid_2_1347804141.46" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_3_1347804141.46" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_4_1347804141.46" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_5_1347804141.46" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_6_1347804141.46" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_7_1347804141.46" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_8_1347804141.46" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_9_1347804141.46" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_10_1347804141.46" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_11_1347804141.46" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_12_1347804141.46" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_13_1347804141.46" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_14_1347804141.46" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_15_1347804141.46" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_16_1347804141.46" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_17_1347804141.46" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_18_1347804141.46" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_19_1347804141.46" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_20_1347804141.46" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_21_1347804141.46" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_22_1347804141.46" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_23_1347804141.46" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_24_1347804141.46" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_26_1347804141.46" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_27_1347804141.46" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_28_1347804141.46" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_29_1347804141.46" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_30_1347804141.46" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_31_1347804141.46" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_32_1347804141.46" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_33_1347804141.46" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_34_1347804141.46" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_35_1347804141.46" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_36_1347804141.46" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_37_1347804141.46" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_38_1347804141.46" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_39_1347804141.46" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_40_1347804141.46" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_41_1347804141.46" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_42_1347804141.46" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_43_1347804141.46" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_44_1347804141.46" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_45_1347804141.46" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_46_1347804141.46" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_47_1347804141.46" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_48_1347804141.46" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_49_1347804141.46" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_50_1347804141.46" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_51_1347804141.46" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_52_1347804141.46" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_53_1347804141.46" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_54_1347804141.46" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_55_1347804141.46" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_56_1347804141.46" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_57_1347804141.46" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_58_1347804141.46" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_59_1347804141.46" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_60_1347804141.46" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_61_1347804141.46" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_62_1347804141.46" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_63_1347804141.46" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_64_1347804141.46" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_65_1347804141.46" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_66_1347804141.46" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_67_1347804141.46" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_68_1347804141.46" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_69_1347804141.46" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_70_1347804141.46" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_71_1347804141.46" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_72_1347804141.46" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_73_1347804141.46" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_74_1347804141.46" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_75_1347804141.46" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_76_1347804141.46" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_77_1347804141.46" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_78_1347804141.46" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_80_1347804141.46" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_81_1347804141.46" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_82_1347804141.46" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_83_1347804141.46" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_84_1347804141.46" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_96_1347804141.46" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_97_1347804141.46" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_98_1347804141.46" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_100_1347804141.46" 
    push $P5001, $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_137_1347804141.46") :load
.annotate 'file', "src\\stage2\\QRegex.nqp"
    .const 'Sub' $P5001 = "cuid_1_1347804141.46" 
    $P5002 = $P5001()
    .return ($P5002) 
.end