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
.sub "" :subid("cuid_1_1349901726.63") :anon :lex
.annotate 'file', "src\\stage2\\QRegex.nqp"
    .param pmc _lex_param_0 :slurpy 
    .const 'Sub' $P5023 = 'cuid_25_1349901726.63' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_66_1349901726.63' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_79_1349901726.63' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_85_1349901726.63' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_99_1349901726.63' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_101_1349901726.63' 
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
    if $I5001 goto unless96_end235 
    can $I5002, ctxsave, "ctxsave"
    box $P5004, $I5002
    set $P5003, $P5004
    unless $I5002 goto if97_end237 
    $P5002 = ctxsave."ctxsave"()
    set $P5003, $P5002
  if97_end237:
    set $P5005, $P5003
  unless96_end235:
.annotate 'line', 1
    .const 'Sub' $P5007 = 'cuid_25_1349901726.63' 
    capture_lex $P5007
    $P5008 = $P5007()
    .const 'Sub' $P5009 = 'cuid_66_1349901726.63' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_79_1349901726.63' 
    capture_lex $P5010
    $P5011 = $P5010()
    .const 'Sub' $P5012 = 'cuid_85_1349901726.63' 
    capture_lex $P5012
    $P5013 = $P5012()
    .const 'Sub' $P5014 = 'cuid_99_1349901726.63' 
    capture_lex $P5014
    $P5015 = $P5014()
    .const 'Sub' $P5016 = 'cuid_101_1349901726.63' 
    capture_lex $P5016
    $P5017 = $P5016()
    set $P5022, _lex_param_0
    unless _lex_param_0 goto if284_end813 
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P5018, "ModuleLoader"
    getinterp $P5020
    set $P5019, $P5020["context"]
    $P5021 = $P5018."set_mainline_module"($P5019)
    set $P5022, $P5021
  if284_end813:
    .return () 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_25_1349901726.63") :anon :lex :outer("cuid_1_1349901726.63")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 7
    .const 'Sub' $P5049 = 'cuid_2_1349901726.63' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_3_1349901726.63' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_4_1349901726.63' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_5_1349901726.63' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_6_1349901726.63' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_7_1349901726.63' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_8_1349901726.63' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_9_1349901726.63' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_10_1349901726.63' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_11_1349901726.63' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_12_1349901726.63' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_13_1349901726.63' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_14_1349901726.63' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_15_1349901726.63' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_16_1349901726.63' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_17_1349901726.63' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_18_1349901726.63' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_19_1349901726.63' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_20_1349901726.63' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_21_1349901726.63' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_22_1349901726.63' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_23_1349901726.63' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_24_1349901726.63' 
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
    .const 'Sub' $P5026 = 'cuid_2_1349901726.63' 
    capture_lex $P5026
    .const 'Sub' $P5027 = 'cuid_3_1349901726.63' 
    capture_lex $P5027
    .const 'Sub' $P5028 = 'cuid_4_1349901726.63' 
    capture_lex $P5028
    .const 'Sub' $P5029 = 'cuid_5_1349901726.63' 
    capture_lex $P5029
    .const 'Sub' $P5030 = 'cuid_6_1349901726.63' 
    capture_lex $P5030
    .const 'Sub' $P5031 = 'cuid_7_1349901726.63' 
    capture_lex $P5031
    .const 'Sub' $P5032 = 'cuid_8_1349901726.63' 
    capture_lex $P5032
    .const 'Sub' $P5033 = 'cuid_9_1349901726.63' 
    capture_lex $P5033
    .const 'Sub' $P5034 = 'cuid_10_1349901726.63' 
    capture_lex $P5034
    .const 'Sub' $P5035 = 'cuid_11_1349901726.63' 
    capture_lex $P5035
    .const 'Sub' $P5036 = 'cuid_12_1349901726.63' 
    capture_lex $P5036
    .const 'Sub' $P5037 = 'cuid_13_1349901726.63' 
    capture_lex $P5037
    .const 'Sub' $P5038 = 'cuid_14_1349901726.63' 
    capture_lex $P5038
    .const 'Sub' $P5039 = 'cuid_15_1349901726.63' 
    capture_lex $P5039
    .const 'Sub' $P5040 = 'cuid_16_1349901726.63' 
    capture_lex $P5040
    .const 'Sub' $P5041 = 'cuid_17_1349901726.63' 
    capture_lex $P5041
    .const 'Sub' $P5042 = 'cuid_18_1349901726.63' 
    capture_lex $P5042
    .const 'Sub' $P5043 = 'cuid_19_1349901726.63' 
    capture_lex $P5043
    .const 'Sub' $P5044 = 'cuid_20_1349901726.63' 
    capture_lex $P5044
    .const 'Sub' $P5045 = 'cuid_21_1349901726.63' 
    capture_lex $P5045
    .const 'Sub' $P5046 = 'cuid_22_1349901726.63' 
    capture_lex $P5046
    .const 'Sub' $P5047 = 'cuid_23_1349901726.63' 
    capture_lex $P5047
    .const 'Sub' $P5048 = 'cuid_24_1349901726.63' 
    capture_lex $P5048
    .return ($P5048) 
.end
.HLL "nqp"
.namespace []
.sub "new" :subid("cuid_2_1349901726.63") :anon :lex :outer("cuid_25_1349901726.63")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 21
    .param pmc _lex_param_0 
    .lex "$new", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
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
.sub "addstate" :subid("cuid_3_1349901726.63") :anon :lex :outer("cuid_25_1349901726.63")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 28
    .param pmc _lex_param_0 
    .lex "$id", $I101 
    .lex "self", _lex_param_0 
    set $I101, 0
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 3
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!states"
    set $N5001, $P5003
    set $I5001, $N5001
    set $I101, $I5001
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 3
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!states"
    new $P5007, 'ResizablePMCArray'
    set $P5006[$I101], $P5007
    .return ($I101) 
.end
.HLL "nqp"
.namespace []
.sub "addedge" :subid("cuid_4_1349901726.63") :anon :lex :outer("cuid_25_1349901726.63")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 34
    .param pmc _lex_param_0 
    .param int _lex_param_1 
    .param int _lex_param_2 
    .param pmc _lex_param_3 
    .param pmc _lex_param_4 
    .param pmc _lex_param_5 :named("newedge") :optional 
    .param int haz_param_8 :opt_flag 
    if haz_param_8, default243
    box $P5014, 1
    set _lex_param_5, $P5014
  default243:
    .lex "$st", $P101 
    .lex "self", _lex_param_0 
    .lex "$from", _lex_param_1 
    .lex "$to", _lex_param_2 
    .lex "$action", _lex_param_3 
    .lex "$value", _lex_param_4 
    .lex "$newedge", _lex_param_5 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P101, $P5001
    set $P5005, _lex_param_5
    unless _lex_param_5 goto if98_end239 
    nqp_decontainerize $P5002, _lex_param_0
    nqp_get_sc_object $P5003, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 3
    box $P5004, 1
    repr_bind_attr_obj $P5002, $P5003, "$!edges", $P5004
    set $P5005, $P5004
  if98_end239:
    set $N5001, _lex_param_2
    set $N5002, 0
    islt $I5001, $N5001, $N5002
    set $I5003, $I5001
    unless $I5001 goto if99_end241 
.annotate 'line', 36
    nqp_decontainerize $P5006, _lex_param_0
    $P5007 = $P5006."addstate"()
    set $I5002, $P5007
    set _lex_param_2, $I5002
    set $I5003, _lex_param_2
  if99_end241:
    nqp_decontainerize $P5009, _lex_param_0
    nqp_get_sc_object $P5010, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 3
    repr_get_attr_obj $P5011, $P5009, $P5010, "$!states"
    set $P5008, $P5011[_lex_param_1]
    unless_null $P5008, fallback242
    nqp_get_sc_object $P5012, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5008, $P5012
  fallback242:
    set $P101, $P5008
    push $P101, _lex_param_3
    push $P101, _lex_param_4
    box $P5013, _lex_param_2
    push $P101, $P5013
    .return (_lex_param_2) 
.end
.HLL "nqp"
.namespace []
.sub "states" :subid("cuid_5_1349901726.63") :anon :lex :outer("cuid_25_1349901726.63")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 44
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 3
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!states"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "addnode" :subid("cuid_6_1349901726.63") :anon :lex :outer("cuid_25_1349901726.63")
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
.sub "regex_nfa" :subid("cuid_7_1349901726.63") :anon :lex :outer("cuid_25_1349901726.63")
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
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P101, $P5001
.annotate 'line', 52
    $P5003 = _lex_param_1."rxtype"()
    set $P5002, $P5003
    defined $I5001, $P5002
    if $I5001, defor244
    box $P5004, "concat"
    set $P5002, $P5004
  defor244:
    set $P101, $P5002
.annotate 'line', 53
    nqp_decontainerize $P5006, _lex_param_0
    get_how $P5005, $P5006
    nqp_decontainerize $P5007, _lex_param_0
    $P5008 = $P5005."can"($P5007, $P101)
    unless $P5008 goto if100_else245 
.annotate 'line', 54
    nqp_decontainerize $P5009, _lex_param_0
    set $S5001, $P101
    $P5010 = $P5009.$S5001(_lex_param_1, _lex_param_2, _lex_param_3)
    set $P5013, $P5010
    goto if100_end246
  if100_else245:
.annotate 'line', 55
    nqp_decontainerize $P5011, _lex_param_0
    $P5012 = $P5011."fate"(_lex_param_1, _lex_param_2, _lex_param_3)
    set $P5013, $P5012
  if100_end246:
    .return ($P5013) 
.end
.HLL "nqp"
.namespace []
.sub "fate" :subid("cuid_8_1349901726.63") :anon :lex :outer("cuid_25_1349901726.63")
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
    unless_null $P5002, fallback247
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5002, $P5005
  fallback247:
    $P5006 = $P5001."addedge"(_lex_param_2, 0, $P5002, 0, 0 :named("newedge"))
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "alt" :subid("cuid_9_1349901726.63") :anon :lex :outer("cuid_25_1349901726.63")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 62
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param int _lex_param_2 
    .param int _lex_param_3 
    .const 'Sub' $P5007 = 'cuid_102_1349901726.63' 
    capture_lex $P5007 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$from", _lex_param_2 
    .lex "$to", _lex_param_3 
.annotate 'line', 63
    $P5004 = _lex_param_1."list"()
    set $P5001, $P5004
    iter $P5003, $P5004
  for_next252:
    unless $P5003, for_done254
    shift $P5006, $P5003
  for_redo253:
    .const 'Sub' $P5005 = 'cuid_102_1349901726.63' 
    capture_lex $P5005
    $P5001 = $P5005($P5006)
    goto for_next252
  for_done254:
    .return (_lex_param_3) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_102_1349901726.63") :anon :lex :outer("cuid_9_1349901726.63")
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
    unless $I5004 goto if102_end251 
    set $N5003, $I101
    set $N5004, 0
    isgt $I5006, $N5003, $N5004
    set $I5007, $I5006
  if102_end251:
    set $I5008, $I5007
    unless $I5007 goto if101_end249 
    store_lex "$to", $I101
    set $I5008, $I101
  if101_end249:
    .return ($I5008) 
.end
.HLL "nqp"
.namespace []
.sub "anchor" :subid("cuid_10_1349901726.63") :anon :lex :outer("cuid_25_1349901726.63")
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
    unless_null $P5002, fallback255
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5002, $P5005
  fallback255:
    $P5006 = $P5001."addedge"(_lex_param_2, _lex_param_3, $P5002, 0)
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "cclass" :subid("cuid_11_1349901726.63") :anon :lex :outer("cuid_25_1349901726.63")
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
    unless_null $P5002, fallback256
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5002, $P5005
  fallback256:
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
    unless_null $P5007, fallback257
    nqp_get_sc_object $P5010, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5007, $P5010
  fallback257:
    $P5011 = $P5001."addedge"(_lex_param_2, _lex_param_3, $N5001, $P5007)
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "concat" :subid("cuid_12_1349901726.63") :anon :lex :outer("cuid_25_1349901726.63")
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
  while103_test258:
    set $N5004, _lex_param_2
    set $N5005, 0
    isgt $I5002, $N5004, $N5005
    set $I5004, $I5002
    unless $I5002 goto if104_end264 
    set $N5006, $I101
    set $N5007, $I102
    islt $I5003, $N5006, $N5007
    set $I5004, $I5003
  if104_end264:
    set $I5007, $I5004
    unless $I5004 goto while103_done262 
  while103_redo260:
.annotate 'line', 92
.annotate 'line', 93
    nqp_decontainerize $P5002, _lex_param_0
    set $P5003, _lex_param_1[$I101]
    unless_null $P5003, fallback265
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5003, $P5004
  fallback265:
    $P5005 = $P5002."regex_nfa"($P5003, _lex_param_2, -1)
    set $I5005, $P5005
    set _lex_param_2, $I5005
    set $N5009, $I101
    set $N5010, 1
    add $N5008, $N5009, $N5010
    set $I5006, $N5008
    set $I101, $I5006
    set $I5007, $I101
    goto while103_test258 
  while103_done262:
    set $N5011, _lex_param_2
    set $N5012, 0
    isgt $I5008, $N5011, $N5012
    set $I5010, $I5008
    unless $I5008 goto if106_end269 
    set $N5013, $I102
    set $N5014, 0
    isge $I5009, $N5013, $N5014
    set $I5010, $I5009
  if106_end269:
    unless $I5010 goto if105_else266 
.annotate 'line', 96
    nqp_decontainerize $P5006, _lex_param_0
    set $P5007, _lex_param_1[$I101]
    unless_null $P5007, fallback270
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5007, $P5008
  fallback270:
    $P5009 = $P5006."regex_nfa"($P5007, _lex_param_2, _lex_param_3)
    set $P5010, $P5009
    goto if105_end267
  if105_else266:
    box $P5011, _lex_param_3
    set $P5010, $P5011
  if105_end267:
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "enumcharlist" :subid("cuid_13_1349901726.63") :anon :lex :outer("cuid_25_1349901726.63")
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
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P101, $P5001
    set $P5002, _lex_param_1[0]
    unless_null $P5002, fallback271
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5002, $P5003
  fallback271:
    set $P101, $P5002
.annotate 'line', 101
    $P5004 = _lex_param_1."subtype"()
    set $S5001, $P5004
    iseq $I5001, $S5001, "zerowidth"
    unless $I5001 goto if107_else272 
.annotate 'line', 102
    nqp_decontainerize $P5005, _lex_param_0
    find_lex $P5008, "$?PACKAGE"
    get_who $P5007, $P5008
    set $P5006, $P5007["$EDGE_CHARLIST"]
    unless_null $P5006, fallback274
    nqp_get_sc_object $P5009, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5006, $P5009
  fallback274:
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
    unless_null $P5013, fallback275
    nqp_get_sc_object $P5016, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5013, $P5016
  fallback275:
    $P5017 = $P5012."addedge"(_lex_param_2, 0, $P5013, 0)
    set $P5025, $P5017
    goto if107_end273
  if107_else272:
.annotate 'line', 105
.annotate 'line', 106
    nqp_decontainerize $P5018, _lex_param_0
    find_lex $P5021, "$?PACKAGE"
    get_who $P5020, $P5021
    set $P5019, $P5020["$EDGE_CHARLIST"]
    unless_null $P5019, fallback276
    nqp_get_sc_object $P5022, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5019, $P5022
  fallback276:
    set $N5005, $P5019
    $P5023 = _lex_param_1."negate"()
    istrue $I5004, $P5023
    set $N5006, $I5004
    add $N5004, $N5005, $N5006
    $P5024 = $P5018."addedge"(_lex_param_2, _lex_param_3, $N5004, $P101)
    set $P5025, $P5024
  if107_end273:
    .return ($P5025) 
.end
.HLL "nqp"
.namespace []
.sub "literal" :subid("cuid_14_1349901726.63") :anon :lex :outer("cuid_25_1349901726.63")
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
    unless_null $P5001, fallback277
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5001, $P5002
  fallback277:
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
    unless $I5003 goto if108_else278 
.annotate 'line', 114
  while109_test280:
    set $N5006, $I102
    set $N5007, $I101
    islt $I5004, $N5006, $N5007
    set $I5008, $I5004
    unless $I5004 goto while109_done284 
  while109_redo282:
.annotate 'line', 115
.annotate 'line', 116
    nqp_decontainerize $P5003, _lex_param_0
    find_lex $P5006, "$?PACKAGE"
    get_who $P5005, $P5006
    set $P5004, $P5005["$EDGE_CODEPOINT"]
    unless_null $P5004, fallback285
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5004, $P5007
  fallback285:
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
    goto while109_test280 
  while109_done284:
.annotate 'line', 119
    nqp_decontainerize $P5009, _lex_param_0
    find_lex $P5012, "$?PACKAGE"
    get_who $P5011, $P5012
    set $P5010, $P5011["$EDGE_CODEPOINT"]
    unless_null $P5010, fallback286
    nqp_get_sc_object $P5013, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5010, $P5013
  fallback286:
    ord $I5009, $S101, $I102
    $P5014 = $P5009."addedge"(_lex_param_2, _lex_param_3, $P5010, $I5009)
    set $P5021, $P5014
    goto if108_end279
  if108_else278:
.annotate 'line', 121
.annotate 'line', 122
    nqp_decontainerize $P5015, _lex_param_0
    find_lex $P5018, "$?PACKAGE"
    get_who $P5017, $P5018
    set $P5016, $P5017["$EDGE_EPSILON"]
    unless_null $P5016, fallback287
    nqp_get_sc_object $P5019, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5016, $P5019
  fallback287:
    $P5020 = $P5015."addedge"(_lex_param_2, _lex_param_3, $P5016, 0)
    set $P5021, $P5020
  if108_end279:
    .return ($P5021) 
.end
.HLL "nqp"
.namespace []
.sub "subrule" :subid("cuid_15_1349901726.63") :anon :lex :outer("cuid_25_1349901726.63")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 126
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param int _lex_param_2 
    .param int _lex_param_3 
    .const 'Sub' $P5070 = 'cuid_103_1349901726.63' 
    capture_lex $P5070 
    .const 'Sub' $P5070 = 'cuid_104_1349901726.63' 
    capture_lex $P5070 
    .lex "$subtype", $P101 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$from", _lex_param_2 
    .lex "$to", _lex_param_3 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P101, $P5001
.annotate 'line', 127
    $P5002 = _lex_param_1."subtype"()
    set $P101, $P5002
.annotate 'line', 128
    $P5003 = _lex_param_1."name"()
    set $S5001, $P5003
    iseq $I5001, $S5001, "before"
    set $I5003, $I5001
    unless $I5001 goto if111_end291 
    $P5004 = _lex_param_1."negate"()
    isfalse $I5002, $P5004
    set $I5003, $I5002
  if111_end291:
    unless $I5003 goto if110_else288 
    .const 'Sub' $P5005 = 'cuid_103_1349901726.63' 
    capture_lex $P5005
    $P5006 = $P5005()
    set $P5069, $P5006
    goto if110_end289
  if110_else288:
    set $S5002, $P101
    isne $I5004, $S5002, "zerowidth"
    set $I5010, $I5004
    unless $I5004 goto if113_end298 
.annotate 'line', 134
    $P5007 = _lex_param_1."name"()
    set $S5003, $P5007
    iseq $I5005, $S5003, "alpha"
    set $I5009, $I5005
    if $I5005 goto unless114_end300 
    set $S5004, $P101
    iseq $I5006, $S5004, "method"
    set $I5008, $I5006
    unless $I5006 goto if115_end302 
.annotate 'line', 136
    nqp_get_sc_object $P5011, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 0
    nqp_get_package_through_who $P5010, $P5011, "QAST"
    get_who $P5009, $P5010
    set $P5008, $P5009["SVal"]
    unless_null $P5008, fallback305
    nqp_get_sc_object $P5012, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5008, $P5012
  fallback305:
    set $P5014, _lex_param_1[0]
    unless_null $P5014, fallback306
    nqp_get_sc_object $P5015, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5014, $P5015
  fallback306:
    set $P5013, $P5014[0]
    unless_null $P5013, fallback307
    nqp_get_sc_object $P5016, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5013, $P5016
  fallback307:
    $P5017 = $P5008."ACCEPTS"($P5013)
    unless $P5017 goto if116_else303 
    set $P5019, _lex_param_1[0]
    unless_null $P5019, fallback308
    nqp_get_sc_object $P5020, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5019, $P5020
  fallback308:
    set $P5018, $P5019[0]
    unless_null $P5018, fallback309
    nqp_get_sc_object $P5021, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5018, $P5021
  fallback309:
    $P5022 = $P5018."value"()
    set $P5027, $P5022
    goto if116_end304
  if116_else303:
    set $P5024, _lex_param_1[0]
    unless_null $P5024, fallback310
    nqp_get_sc_object $P5025, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5024, $P5025
  fallback310:
    set $P5023, $P5024[0]
    unless_null $P5023, fallback311
    nqp_get_sc_object $P5026, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5023, $P5026
  fallback311:
    set $P5027, $P5023
  if116_end304:
    set $S5005, $P5027
    iseq $I5007, $S5005, "alpha"
    set $I5008, $I5007
  if115_end302:
    set $I5009, $I5008
  unless114_end300:
    set $I5010, $I5009
  if113_end298:
    unless $I5010 goto if112_else295 
.annotate 'line', 137
    nqp_decontainerize $P5028, _lex_param_0
    find_lex $P5031, "$?PACKAGE"
    get_who $P5030, $P5031
    set $P5029, $P5030["$EDGE_CHARCLASS"]
    unless_null $P5029, fallback312
    nqp_get_sc_object $P5032, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5029, $P5032
  fallback312:
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
    unless_null $P5036, fallback313
    nqp_get_sc_object $P5039, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5036, $P5039
  fallback313:
    set $N5005, $P5036
    $P5040 = _lex_param_1."negate"()
    set $N5006, $P5040
    add $N5004, $N5005, $N5006
    $P5041 = $P5035."addedge"(_lex_param_2, _lex_param_3, $N5004, 95)
    set $P5068, $P5041
    goto if112_end296
  if112_else295:
    set $S5006, $P101
    iseq $I5012, $S5006, "zerowidth"
    unless $I5012 goto if117_else314 
.annotate 'line', 141
.annotate 'line', 142
    $P5042 = _lex_param_1."negate"()
    unless $P5042 goto if118_else316 
.annotate 'line', 143
    nqp_decontainerize $P5043, _lex_param_0
    $P5044 = $P5043."fate"(_lex_param_1, _lex_param_2, _lex_param_3)
    set $P5047, $P5044
    goto if118_end317
  if118_else316:
    .const 'Sub' $P5045 = 'cuid_104_1349901726.63' 
    capture_lex $P5045
    $P5046 = $P5045()
    set $P5047, $P5046
  if118_end317:
    set $P5067, $P5047
    goto if117_end315
  if117_else314:
.annotate 'line', 151
    set $S5007, $P101
    iseq $I5013, $S5007, "capture"
    box $P5051, $I5013
    set $P5050, $P5051
    unless $I5013 goto if120_end322 
    set $P5048, _lex_param_1[1]
    unless_null $P5048, fallback323
    nqp_get_sc_object $P5049, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5048, $P5049
  fallback323:
    set $P5050, $P5048
  if120_end322:
    unless $P5050 goto if119_else319 
.annotate 'line', 153
    nqp_decontainerize $P5052, _lex_param_0
    set $P5053, _lex_param_1[1]
    unless_null $P5053, fallback324
    nqp_get_sc_object $P5054, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5053, $P5054
  fallback324:
    $P5055 = $P5052."regex_nfa"($P5053, _lex_param_2, _lex_param_3)
    set $P5066, $P5055
    goto if119_end320
  if119_else319:
.annotate 'line', 154
    nqp_decontainerize $P5056, _lex_param_0
    find_lex $P5059, "$?PACKAGE"
    get_who $P5058, $P5059
    set $P5057, $P5058["$EDGE_SUBRULE"]
    unless_null $P5057, fallback325
    nqp_get_sc_object $P5060, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5057, $P5060
  fallback325:
    set $P5062, _lex_param_1[0]
    unless_null $P5062, fallback326
    nqp_get_sc_object $P5063, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5062, $P5063
  fallback326:
    set $P5061, $P5062[0]
    unless_null $P5061, fallback327
    nqp_get_sc_object $P5064, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5061, $P5064
  fallback327:
    $P5065 = $P5056."addedge"(_lex_param_2, _lex_param_3, $P5057, $P5061)
    set $P5066, $P5065
  if119_end320:
    set $P5067, $P5066
  if117_end315:
    set $P5068, $P5067
  if112_end296:
    set $P5069, $P5068
  if110_end289:
    .return ($P5069) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_103_1349901726.63") :anon :lex :outer("cuid_15_1349901726.63")
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
    unless_null $P5008, fallback292
    nqp_get_sc_object $P5010, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5008, $P5010
  fallback292:
    set $P5007, $P5008[1]
    unless_null $P5007, fallback293
    nqp_get_sc_object $P5011, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5007, $P5011
  fallback293:
    set $P5006, $P5007["orig_qast"]
    unless_null $P5006, fallback294
    nqp_get_sc_object $P5012, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5006, $P5012
  fallback294:
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
.sub "" :subid("cuid_104_1349901726.63") :anon :lex :outer("cuid_15_1349901726.63")
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
    unless_null $P5006, fallback318
    nqp_get_sc_object $P5009, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5006, $P5009
  fallback318:
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
.sub "quant" :subid("cuid_16_1349901726.63") :anon :lex :outer("cuid_25_1349901726.63")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 158
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param int _lex_param_2 
    .param int _lex_param_3 
    .const 'Sub' $P5028 = 'cuid_106_1349901726.63' 
    capture_lex $P5028 
    .const 'Sub' $P5028 = 'cuid_108_1349901726.63' 
    capture_lex $P5028 
    .const 'Sub' $P5028 = 'cuid_109_1349901726.63' 
    capture_lex $P5028 
    .const 'Sub' $P5028 = 'cuid_110_1349901726.63' 
    capture_lex $P5028 
    .const 'Sub' $P5028 = 'cuid_111_1349901726.63' 
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
    set_label $P101, lexotic_328
    .lex "RETURN", $P101
    set $N5002, 0
.annotate 'line', 159
    $P5002 = _lex_param_1."min"()
    set $P5001, $P5002
    defined $I5001, $P5001
    if $I5001, defor330
    box $P5003, 0
    set $P5001, $P5003
  defor330:
    set $N5003, $P5001
    add $N5001, $N5002, $N5003
    set $I5002, $N5001
    set $I101, $I5002
    set $N5005, 0
.annotate 'line', 160
    $P5005 = _lex_param_1."max"()
    set $P5004, $P5005
    defined $I5003, $P5004
    if $I5003, defor331
    box $P5006, -1
    set $P5004, $P5006
  defor331:
    set $N5006, $P5004
    add $N5004, $N5005, $N5006
    set $I5004, $N5004
    set $I102, $I5004
    set $N5007, $I102
    set $N5008, 1
    isgt $I5005, $N5007, $N5008
    set $I5007, $I5005
    if $I5005 goto unless122_end335 
    set $N5009, $I101
    set $N5010, 1
    isgt $I5006, $N5009, $N5010
    set $I5007, $I5006
  unless122_end335:
    box $P5010, $I5007
    set $P5009, $P5010
    unless $I5007 goto if121_end333 
    .const 'Sub' $P5007 = 'cuid_106_1349901726.63' 
    capture_lex $P5007
    $P5008 = $P5007()
    set $P5009, $P5008
  if121_end333:
    set $N5011, $I102
    set $N5012, -1
    iseq $I5008, $N5011, $N5012
    unless $I5008 goto if134_else371 
.annotate 'line', 193
    set $N5013, $I101
    set $N5014, 0
    iseq $I5009, $N5013, $N5014
    unless $I5009 goto if135_else373 
.annotate 'line', 194
    set $P5011, _lex_param_1[1]
    unless_null $P5011, fallback377
    nqp_get_sc_object $P5012, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5011, $P5012
  fallback377:
    defined $I5010, $P5011
    unless $I5010 goto if136_else375 
    .const 'Sub' $P5013 = 'cuid_108_1349901726.63' 
    capture_lex $P5013
    $P5014 = $P5013()
    set $P5017, $P5014
    goto if136_end376
  if136_else375:
    .const 'Sub' $P5015 = 'cuid_109_1349901726.63' 
    capture_lex $P5015
    $P5016 = $P5015()
    set $P5017, $P5016
  if136_end376:
    set $P5020, $P5017
    goto if135_end374
  if135_else373:
    .const 'Sub' $P5018 = 'cuid_110_1349901726.63' 
    capture_lex $P5018
    $P5019 = $P5018()
    set $P5020, $P5019
  if135_end374:
    box $P5027, _lex_param_3
    set $P5026, $P5027
    goto if134_end372
  if134_else371:
    set $N5015, $I101
    set $N5016, 0
    iseq $I5011, $N5015, $N5016
    set $I5013, $I5011
    unless $I5011 goto if145_end408 
    set $N5017, $I102
    set $N5018, 1
    iseq $I5012, $N5017, $N5018
    set $I5013, $I5012
  if145_end408:
    unless $I5013 goto if144_else405 
    .const 'Sub' $P5021 = 'cuid_111_1349901726.63' 
    capture_lex $P5021
    $P5022 = $P5021()
    set $P5025, $P5022
    goto if144_end406
  if144_else405:
.annotate 'line', 231
.annotate 'line', 232
    nqp_decontainerize $P5023, _lex_param_0
    $P5024 = $P5023."fate"(_lex_param_1, _lex_param_2, _lex_param_3)
    set $P5025, $P5024
  if144_end406:
    set $P5026, $P5025
  if134_end372:
    goto lexotic_329
  lexotic_328:
    .get_results ($P5026)
  lexotic_329:
    .return ($P5026) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_106_1349901726.63") :anon :lex :outer("cuid_16_1349901726.63")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 162
    .const 'Sub' $P5033 = 'cuid_105_1349901726.63' 
    capture_lex $P5033 
    .const 'Sub' $P5033 = 'cuid_107_1349901726.63' 
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
    unless_null $P5001, fallback336
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5001, $P5003
  fallback336:
    defined $I5001, $P5001
    set $I103, $I5001
  while123_test337:
    set $N5001, $I101
    find_lex $I5003, "$max"
    set $N5002, $I5003
    islt $I5002, $N5001, $N5002
    set $I5006, $I5002
    if $I5002 goto unless124_end343 
    set $N5003, $I101
    find_lex $I5005, "$min"
    set $N5004, $I5005
    islt $I5004, $N5003, $N5004
    set $I5006, $I5004
  unless124_end343:
    set $I5017, $I5006
    unless $I5006 goto while123_done341 
  while123_redo339:
.annotate 'line', 166
    set $N5005, $I101
    find_lex $I5008, "$min"
    set $N5006, $I5008
    isge $I5007, $N5005, $N5006
    box $P5007, $I5007
    set $P5006, $P5007
    unless $I5007 goto if125_end345 
    .const 'Sub' $P5004 = 'cuid_105_1349901726.63' 
    capture_lex $P5004
    $P5005 = $P5004()
    set $P5006, $P5005
  if125_end345:
    set $I5010, $I103
    unless $I103 goto if128_end352 
    set $N5007, $I101
    set $N5008, 0
    isgt $I5009, $N5007, $N5008
    set $I5010, $I5009
  if128_end352:
    set $I5013, $I5010
    unless $I5010 goto if127_end350 
.annotate 'line', 171
.annotate 'line', 172
    find_lex $P5009, "self"
    nqp_decontainerize $P5008, $P5009
    find_lex $P5011, "$node"
    set $P5010, $P5011[1]
    unless_null $P5010, fallback353
    nqp_get_sc_object $P5012, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5010, $P5012
  fallback353:
    find_lex $I5011, "$from"
    $P5013 = $P5008."regex_nfa"($P5010, $I5011, -1)
    set $I5012, $P5013
    store_lex "$from", $I5012
    set $I5013, $I5012
  if127_end350:
.annotate 'line', 174
    find_lex $P5015, "self"
    nqp_decontainerize $P5014, $P5015
    find_lex $P5017, "$node"
    set $P5016, $P5017[0]
    unless_null $P5016, fallback354
    nqp_get_sc_object $P5018, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5016, $P5018
  fallback354:
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
    goto while123_test337 
  while123_done341:
.annotate 'line', 177
    find_lex $P5021, "self"
    nqp_decontainerize $P5020, $P5021
    find_lex $I5018, "$from"
    find_lex $I5019, "$to"
    find_lex $P5024, "$?PACKAGE"
    get_who $P5023, $P5024
    set $P5022, $P5023["$EDGE_EPSILON"]
    unless_null $P5022, fallback355
    nqp_get_sc_object $P5025, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5022, $P5025
  fallback355:
    $P5026 = $P5020."addedge"($I5018, $I5019, $P5022, 0)
    find_lex $I5021, "$max"
    set $N5012, $I5021
    set $N5013, -1
    iseq $I5020, $N5012, $N5013
    box $P5030, $I5020
    set $P5029, $P5030
    unless $I5020 goto if129_end357 
    .const 'Sub' $P5027 = 'cuid_107_1349901726.63' 
    capture_lex $P5027
    $P5028 = $P5027()
    set $P5029, $P5028
  if129_end357:
    find_lex $I5023, "$to"
    set $N5014, $I5023
    set $N5015, 0
    islt $I5022, $N5014, $N5015
    set $I5025, $I5022
    unless $I5022 goto if133_end370 
    set $N5016, $I102
    set $N5017, 0
    isgt $I5024, $N5016, $N5017
    set $I5025, $I5024
  if133_end370:
    set $I5026, $I5025
    unless $I5025 goto if132_end368 
    store_lex "$to", $I102
    set $I5026, $I102
  if132_end368:
    find_lex $I5027, "$to"
    find_lex $P5031, "RETURN"
    $P5032 = $P5031($I5027)
    .return ($P5032) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_105_1349901726.63") :anon :lex :outer("cuid_106_1349901726.63")
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
    unless_null $P5003, fallback346
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5003, $P5006
  fallback346:
    $P5007 = $P5001."addedge"($I5001, $I5002, $P5003, 0)
    set $I5003, $P5007
    set $I101, $I5003
    find_lex $I5004, "$st"
    set $I5005, $I5004
    if $I5004 goto unless126_end348 
    set $I5005, $I101
  unless126_end348:
    store_lex "$st", $I5005
    .return ($I5005) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_107_1349901726.63") :anon :lex :outer("cuid_106_1349901726.63")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 178
    .lex "$start", $I101 
    .lex "$looper", $P101 
    set $I101, 0
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
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
    unless_null $P5007, fallback358
    nqp_get_sc_object $P5010, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5007, $P5010
  fallback358:
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
    unless_null $P5017, fallback359
    nqp_get_sc_object $P5020, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5017, $P5020
  fallback359:
    $P5021 = $P5015."addedge"($P101, $I5003, $P5017, 0)
.annotate 'line', 184
    find_lex $P5023, "self"
    nqp_decontainerize $P5022, $P5023
    find_lex $I5004, "$from"
    find_lex $P5026, "$?PACKAGE"
    get_who $P5025, $P5026
    set $P5024, $P5025["$EDGE_EPSILON"]
    unless_null $P5024, fallback360
    nqp_get_sc_object $P5027, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5024, $P5027
  fallback360:
    $P5028 = $P5022."addedge"($P101, $I5004, $P5024, 0)
    find_lex $I5005, "$has_sep"
    set $I5008, $I5005
    unless $I5005 goto if131_end364 
    find_lex $I5007, "$count"
    set $N5001, $I5007
    set $N5002, 0
    isgt $I5006, $N5001, $N5002
    set $I5008, $I5006
  if131_end364:
    set $I5011, $I5008
    unless $I5008 goto if130_end362 
.annotate 'line', 185
.annotate 'line', 186
    find_lex $P5030, "self"
    nqp_decontainerize $P5029, $P5030
    find_lex $P5032, "$node"
    set $P5031, $P5032[1]
    unless_null $P5031, fallback365
    nqp_get_sc_object $P5033, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5031, $P5033
  fallback365:
    find_lex $I5009, "$from"
    $P5034 = $P5029."regex_nfa"($P5031, $I5009, -1)
    set $I5010, $P5034
    store_lex "$from", $I5010
    set $I5011, $I5010
  if130_end362:
.annotate 'line', 188
    find_lex $P5036, "self"
    nqp_decontainerize $P5035, $P5036
    find_lex $P5038, "$node"
    set $P5037, $P5038[0]
    unless_null $P5037, fallback366
    nqp_get_sc_object $P5039, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5037, $P5039
  fallback366:
    find_lex $I5012, "$from"
    $P5040 = $P5035."regex_nfa"($P5037, $I5012, $P101)
    .return ($P5040) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_108_1349901726.63") :anon :lex :outer("cuid_16_1349901726.63")
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
    unless_null $P5006, fallback378
    nqp_get_sc_object $P5009, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5006, $P5009
  fallback378:
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
    unless_null $P5016, fallback379
    nqp_get_sc_object $P5018, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5016, $P5018
  fallback379:
    $P5019 = $P5014."regex_nfa"($P5016, $I101, $I102)
    set $I5004, $P5019
    set $I103, $I5004
.annotate 'line', 200
    find_lex $P5021, "self"
    nqp_decontainerize $P5020, $P5021
    find_lex $P5023, "$node"
    set $P5022, $P5023[1]
    unless_null $P5022, fallback380
    nqp_get_sc_object $P5024, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5022, $P5024
  fallback380:
    $P5025 = $P5020."regex_nfa"($P5022, $I102, $I101)
.annotate 'line', 201
    find_lex $P5027, "self"
    nqp_decontainerize $P5026, $P5027
    find_lex $I5005, "$to"
    find_lex $P5030, "$?PACKAGE"
    get_who $P5029, $P5030
    set $P5028, $P5029["$EDGE_EPSILON"]
    unless_null $P5028, fallback381
    nqp_get_sc_object $P5031, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5028, $P5031
  fallback381:
    $P5032 = $P5026."addedge"($I102, $I5005, $P5028, 0)
.annotate 'line', 202
    find_lex $P5034, "self"
    nqp_decontainerize $P5033, $P5034
    find_lex $I5006, "$from"
    find_lex $I5007, "$to"
    find_lex $P5037, "$?PACKAGE"
    get_who $P5036, $P5037
    set $P5035, $P5036["$EDGE_EPSILON"]
    unless_null $P5035, fallback382
    nqp_get_sc_object $P5038, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5035, $P5038
  fallback382:
    $P5039 = $P5033."addedge"($I5006, $I5007, $P5035, 0)
    set $I5008, $P5039
    set $I103, $I5008
    find_lex $I5010, "$to"
    set $N5001, $I5010
    set $N5002, 0
    islt $I5009, $N5001, $N5002
    set $I5012, $I5009
    unless $I5009 goto if138_end386 
    set $N5003, $I103
    set $N5004, 0
    isgt $I5011, $N5003, $N5004
    set $I5012, $I5011
  if138_end386:
    set $I5013, $I5012
    unless $I5012 goto if137_end384 
    store_lex "$to", $I103
    set $I5013, $I103
  if137_end384:
    .return ($I5013) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_109_1349901726.63") :anon :lex :outer("cuid_16_1349901726.63")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 205
    .lex "$st", $I101 
    set $I101, 0
.annotate 'line', 206
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    find_lex $P5004, "$node"
    set $P5003, $P5004[0]
    unless_null $P5003, fallback387
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5003, $P5005
  fallback387:
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
    unless_null $P5009, fallback388
    nqp_get_sc_object $P5012, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5009, $P5012
  fallback388:
    $P5013 = $P5007."addedge"($I5003, $I5004, $P5009, 0)
    set $I5005, $P5013
    set $I101, $I5005
    find_lex $I5007, "$to"
    set $N5001, $I5007
    set $N5002, 0
    islt $I5006, $N5001, $N5002
    set $I5009, $I5006
    unless $I5006 goto if140_end392 
    set $N5003, $I101
    set $N5004, 0
    isgt $I5008, $N5003, $N5004
    set $I5009, $I5008
  if140_end392:
    set $I5010, $I5009
    unless $I5009 goto if139_end390 
    store_lex "$to", $I101
    set $I5010, $I101
  if139_end390:
    .return ($I5010) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_110_1349901726.63") :anon :lex :outer("cuid_16_1349901726.63")
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
    unless_null $P5006, fallback393
    nqp_get_sc_object $P5009, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5006, $P5009
  fallback393:
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
    unless_null $P5016, fallback394
    nqp_get_sc_object $P5018, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5016, $P5018
  fallback394:
    $P5019 = $P5014."regex_nfa"($P5016, $I101, $I102)
    set $I5004, $P5019
    set $I103, $I5004
    find_lex $P5021, "$node"
    set $P5020, $P5021[1]
    unless_null $P5020, fallback397
    nqp_get_sc_object $P5022, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5020, $P5022
  fallback397:
    defined $I5005, $P5020
    unless $I5005 goto if141_else395 
.annotate 'line', 215
.annotate 'line', 216
    find_lex $P5024, "self"
    nqp_decontainerize $P5023, $P5024
    find_lex $P5026, "$node"
    set $P5025, $P5026[1]
    unless_null $P5025, fallback398
    nqp_get_sc_object $P5027, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5025, $P5027
  fallback398:
    $P5028 = $P5023."regex_nfa"($P5025, $I102, $I101)
    set $P5036, $P5028
    goto if141_end396
  if141_else395:
.annotate 'line', 218
.annotate 'line', 219
    find_lex $P5030, "self"
    nqp_decontainerize $P5029, $P5030
    find_lex $P5033, "$?PACKAGE"
    get_who $P5032, $P5033
    set $P5031, $P5032["$EDGE_EPSILON"]
    unless_null $P5031, fallback399
    nqp_get_sc_object $P5034, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5031, $P5034
  fallback399:
    $P5035 = $P5029."addedge"($I102, $I101, $P5031, 0)
    set $P5036, $P5035
  if141_end396:
.annotate 'line', 221
    find_lex $P5038, "self"
    nqp_decontainerize $P5037, $P5038
    find_lex $I5006, "$to"
    find_lex $P5041, "$?PACKAGE"
    get_who $P5040, $P5041
    set $P5039, $P5040["$EDGE_EPSILON"]
    unless_null $P5039, fallback400
    nqp_get_sc_object $P5042, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5039, $P5042
  fallback400:
    $P5043 = $P5037."addedge"($I102, $I5006, $P5039, 0)
    find_lex $I5008, "$to"
    set $N5001, $I5008
    set $N5002, 0
    islt $I5007, $N5001, $N5002
    set $I5010, $I5007
    unless $I5007 goto if143_end404 
    set $N5003, $I103
    set $N5004, 0
    isgt $I5009, $N5003, $N5004
    set $I5010, $I5009
  if143_end404:
    set $I5011, $I5010
    unless $I5010 goto if142_end402 
    store_lex "$to", $I103
    set $I5011, $I103
  if142_end402:
    .return ($I5011) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_111_1349901726.63") :anon :lex :outer("cuid_16_1349901726.63")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 225
    .lex "$st", $I101 
    set $I101, 0
.annotate 'line', 226
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    find_lex $P5004, "$node"
    set $P5003, $P5004[0]
    unless_null $P5003, fallback409
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5003, $P5005
  fallback409:
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
    unless $I5004 goto if147_end413 
    set $N5003, $I101
    set $N5004, 0
    isgt $I5006, $N5003, $N5004
    set $I5007, $I5006
  if147_end413:
    set $I5008, $I5007
    unless $I5007 goto if146_end411 
    store_lex "$to", $I101
    set $I5008, $I101
  if146_end411:
.annotate 'line', 228
    find_lex $P5008, "self"
    nqp_decontainerize $P5007, $P5008
    find_lex $I5009, "$from"
    find_lex $I5010, "$to"
    find_lex $P5011, "$?PACKAGE"
    get_who $P5010, $P5011
    set $P5009, $P5010["$EDGE_EPSILON"]
    unless_null $P5009, fallback414
    nqp_get_sc_object $P5012, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5009, $P5012
  fallback414:
    $P5013 = $P5007."addedge"($I5009, $I5010, $P5009, 0)
    set $I5011, $P5013
    set $I101, $I5011
    find_lex $I5013, "$to"
    set $N5005, $I5013
    set $N5006, 0
    islt $I5012, $N5005, $N5006
    set $I5015, $I5012
    unless $I5012 goto if149_end418 
    set $N5007, $I101
    set $N5008, 0
    isgt $I5014, $N5007, $N5008
    set $I5015, $I5014
  if149_end418:
    set $I5016, $I5015
    unless $I5015 goto if148_end416 
    store_lex "$to", $I101
    set $I5016, $I101
  if148_end416:
    find_lex $I5017, "$to"
    .return ($I5017) 
.end
.HLL "nqp"
.namespace []
.sub "qastnode" :subid("cuid_17_1349901726.63") :anon :lex :outer("cuid_25_1349901726.63")
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
    if $I5001 goto unless151_end422 
    $P5002 = _lex_param_1."subtype"()
    set $S5002, $P5002
    iseq $I5002, $S5002, "declarative"
    set $I5003, $I5002
  unless151_end422:
    unless $I5003 goto if150_else419 
.annotate 'line', 238
    nqp_decontainerize $P5003, _lex_param_0
    find_lex $P5006, "$?PACKAGE"
    get_who $P5005, $P5006
    set $P5004, $P5005["$EDGE_EPSILON"]
    unless_null $P5004, fallback423
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5004, $P5007
  fallback423:
    $P5008 = $P5003."addedge"(_lex_param_2, _lex_param_3, $P5004, 0)
    set $P5011, $P5008
    goto if150_end420
  if150_else419:
.annotate 'line', 239
    nqp_decontainerize $P5009, _lex_param_0
    $P5010 = $P5009."fate"(_lex_param_1, _lex_param_2, _lex_param_3)
    set $P5011, $P5010
  if150_end420:
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "subcapture" :subid("cuid_18_1349901726.63") :anon :lex :outer("cuid_25_1349901726.63")
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
    unless_null $P5002, fallback424
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5002, $P5003
  fallback424:
    $P5004 = $P5001."regex_nfa"($P5002, _lex_param_2, _lex_param_3)
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "qast" :subid("cuid_19_1349901726.63") :anon :lex :outer("cuid_25_1349901726.63")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 246
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("non_empty") :optional 
    .param int haz_param_9 :opt_flag 
    .const 'Sub' $P5030 = 'cuid_113_1349901726.63' 
    capture_lex $P5030 
    if haz_param_9, default447
    nqp_get_sc_object $P5029, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set _lex_param_1, $P5029
  default447:
    .lex "$past", $P101 
    .lex "self", _lex_param_0 
    .lex "$non_empty", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P101, $P5001
    root_new $P102, ['parrot';'Continuation']
    set_label $P102, lexotic_425
    .lex "RETURN", $P102
    nqp_decontainerize $P5002, _lex_param_0
    nqp_get_sc_object $P5003, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 3
    repr_get_attr_obj $P5004, $P5002, $P5003, "$!edges"
    set $P5014, $P5004
    if $P5004 goto unless152_end428 
.annotate 'line', 247
    set $P5007, _lex_param_1
    if _lex_param_1 goto unless153_end430 
    find_lex $P5005, "RETURN"
    $P5006 = $P5005(0)
    set $P5007, $P5006
  unless153_end430:
.annotate 'line', 249
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5011, "$?PACKAGE"
    get_who $P5010, $P5011
    set $P5009, $P5010["$EDGE_FATE"]
    unless_null $P5009, fallback431
    nqp_get_sc_object $P5012, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5009, $P5012
  fallback431:
    $P5013 = $P5008."addedge"(1, 0, $P5009, 0, 1 :named("newedge"))
    set $P5014, $P5013
  unless152_end428:
.annotate 'line', 251
    nqp_get_sc_object $P5018, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 0
    nqp_get_package_through_who $P5017, $P5018, "QAST"
    get_who $P5016, $P5017
    set $P5015, $P5016["Op"]
    unless_null $P5015, fallback432
    nqp_get_sc_object $P5019, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5015, $P5019
  fallback432:
    $P5020 = $P5015."new"("list" :named("op"))
    set $P101, $P5020
    nqp_decontainerize $P5024, _lex_param_0
    nqp_get_sc_object $P5025, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 3
    repr_get_attr_obj $P5026, $P5024, $P5025, "$!states"
    set $P5021, $P5026
    iter $P5023, $P5026
  for_next444:
    unless $P5023, for_done446
    shift $P5028, $P5023
  for_redo445:
    .const 'Sub' $P5027 = 'cuid_113_1349901726.63' 
    capture_lex $P5027
    $P5021 = $P5027($P5028)
    goto for_next444
  for_done446:
    goto lexotic_426
  lexotic_425:
    .get_results ($P101)
  lexotic_426:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_113_1349901726.63") :anon :lex :outer("cuid_19_1349901726.63")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 252
    .param pmc _lex_param_0 
    .const 'Sub' $P5015 = 'cuid_112_1349901726.63' 
    capture_lex $P5015 
    .lex "$list", $P101 
    .lex "@values", _lex_param_0 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P101, $P5001
.annotate 'line', 253
    nqp_get_sc_object $P5005, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 0
    nqp_get_package_through_who $P5004, $P5005, "QAST"
    get_who $P5003, $P5004
    set $P5002, $P5003["Op"]
    unless_null $P5002, fallback433
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5002, $P5006
  fallback433:
    $P5007 = $P5002."new"("list" :named("op"))
    set $P101, $P5007
    set $P5008, _lex_param_0
    iter $P5010, _lex_param_0
  for_next441:
    unless $P5010, for_done443
    shift $P5012, $P5010
  for_redo442:
    .const 'Sub' $P5011 = 'cuid_112_1349901726.63' 
    capture_lex $P5011
    $P5008 = $P5011($P5012)
    goto for_next441
  for_done443:
.annotate 'line', 265
    find_lex $P5013, "$past"
    $P5014 = $P5013."push"($P101)
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_112_1349901726.63") :anon :lex :outer("cuid_113_1349901726.63")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 254
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 255
    nqp_get_sc_object $P5004, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 0
    nqp_get_package_through_who $P5003, $P5004, "QAST"
    get_who $P5002, $P5003
    set $P5001, $P5002["SVal"]
    unless_null $P5001, fallback436
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5001, $P5005
  fallback436:
    $P5006 = $P5001."ACCEPTS"(_lex_param_0)
    unless $P5006 goto if154_else434 
.annotate 'line', 256
    find_lex $P5007, "$list"
    $P5008 = $P5007."push"(_lex_param_0)
    set $P5026, $P5008
    goto if154_end435
  if154_else434:
    set $N5001, _lex_param_0
    set $S5001, $N5001
    set $S5002, _lex_param_0
    iseq $I5001, $S5001, $S5002
    unless $I5001 goto if155_else437 
.annotate 'line', 258
.annotate 'line', 259
    find_lex $P5009, "$list"
    nqp_get_sc_object $P5013, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 0
    nqp_get_package_through_who $P5012, $P5013, "QAST"
    get_who $P5011, $P5012
    set $P5010, $P5011["IVal"]
    unless_null $P5010, fallback439
    nqp_get_sc_object $P5014, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5010, $P5014
  fallback439:
    $P5015 = $P5010."new"(_lex_param_0 :named("value"))
    $P5016 = $P5009."push"($P5015)
    set $P5025, $P5016
    goto if155_end438
  if155_else437:
.annotate 'line', 261
.annotate 'line', 262
    find_lex $P5017, "$list"
    nqp_get_sc_object $P5021, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 0
    nqp_get_package_through_who $P5020, $P5021, "QAST"
    get_who $P5019, $P5020
    set $P5018, $P5019["SVal"]
    unless_null $P5018, fallback440
    nqp_get_sc_object $P5022, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5018, $P5022
  fallback440:
    $P5023 = $P5018."new"(_lex_param_0 :named("value"))
    $P5024 = $P5017."push"($P5023)
    set $P5025, $P5024
  if155_end438:
    set $P5026, $P5025
  if154_end435:
    .return ($P5026) 
.end
.HLL "nqp"
.namespace []
.sub "mergesubrule" :subid("cuid_20_1349901726.63") :anon :lex :outer("cuid_25_1349901726.63")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 270
    .param pmc _lex_param_0 
    .param int _lex_param_1 
    .param int _lex_param_2 
    .param pmc _lex_param_3 
    .param pmc _lex_param_4 
    .param string _lex_param_5 
    .param pmc _lex_param_6 :optional 
    .param int haz_param_10 :opt_flag 
    .const 'Sub' $P5020 = 'cuid_114_1349901726.63' 
    capture_lex $P5020 
    .const 'Sub' $P5020 = 'cuid_116_1349901726.63' 
    capture_lex $P5020 
    if haz_param_10, default470
    new $P5019, 'Hash'
    set _lex_param_6, $P5019
  default470:
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
    unless $I5001 goto if156_end449 
.annotate 'line', 274
    exists $I5003, $P101[_lex_param_5]
    box $P5004, $I5003
    isfalse $I5002, $P5004
    box $P5008, $I5002
    set $P5007, $P5008
    unless $I5002 goto if157_end451 
    .const 'Sub' $P5005 = 'cuid_114_1349901726.63' 
    capture_lex $P5005
    $P5006 = $P5005()
    set $P5007, $P5006
  if157_end451:
    isfalse $I5004, $P102
    set $I5007, $I5004
    unless $I5004 goto if161_end459 
    exists $I5006, $P101[_lex_param_5]
    box $P5009, $I5006
    isfalse $I5005, $P5009
    set $I5007, $I5005
  if161_end459:
    box $P5013, $I5007
    set $P5012, $P5013
    unless $I5007 goto if160_end457 
    .const 'Sub' $P5010 = 'cuid_116_1349901726.63' 
    capture_lex $P5010
    $P5011 = $P5010()
    set $P5012, $P5011
  if160_end457:
    set $P5014, $P5012
  if156_end449:
    box $P5016, 1
    set $P101[_lex_param_5], $P5016
.annotate 'line', 296
    nqp_decontainerize $P5017, _lex_param_0
    $P5018 = $P5017."mergesubstates"(_lex_param_1, _lex_param_2, _lex_param_3, $P102, _lex_param_4, $P101)
    .return ($P5018) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_114_1349901726.63") :anon :lex :outer("cuid_20_1349901726.63")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 275
    .lex "$meth", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
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
    unless $I5001 goto if158_end453 
.annotate 'line', 277
    $P5006 = $P101."nqpattr"("nfa")
    store_lex "@substates", $P5006
    set $P5007, $P5006
  if158_end453:
    find_lex $P5009, "@substates"
    isnull $I5002, $P5009
    box $P5012, $I5002
    set $P5011, $P5012
    unless $I5002 goto if159_end455 
    new $P5010, 'ResizablePMCArray'
    store_lex "@substates", $P5010
    set $P5011, $P5010
  if159_end455:
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_116_1349901726.63") :anon :lex :outer("cuid_20_1349901726.63")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 280
    .const 'Sub' $P5027 = 'cuid_115_1349901726.63' 
    capture_lex $P5027 
    .const 'Sub' $P5027 = 'cuid_117_1349901726.63' 
    capture_lex $P5027 
    .lex "%protorx", $P101 
    .lex "$nfa", $P102 
    .lex "$gotmatch", $I101 
    new $P5001, 'Hash'
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P102, $P5002
    set $I101, 0
.annotate 'line', 283
    find_lex $P5004, "$cursor"
    get_how $P5003, $P5004
    find_lex $P5005, "$cursor"
    .const 'Sub' $P5007 = 'cuid_115_1349901726.63' 
    capture_lex $P5007
    newclosure $P5006, $P5007
    $P5008 = $P5003."cache"($P5005, "!protoregex_table", $P5006)
    set $P101, $P5008
.annotate 'line', 284
    nqp_get_sc_object $P5012, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 0
    nqp_get_package_through_who $P5011, $P5012, "QRegex"
    get_who $P5010, $P5011
    set $P5009, $P5010["NFA"]
    unless_null $P5009, fallback460
    nqp_get_sc_object $P5013, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5009, $P5013
  fallback460:
    $P5014 = $P5009."new"()
    set $P102, $P5014
    set $I101, 0
    find_lex $S5001, "$name"
    exists $I5001, $P101[$S5001]
    box $P5023, $I5001
    set $P5022, $P5023
    unless $I5001 goto if162_end462 
.annotate 'line', 286
    find_lex $S5002, "$name"
    set $P5018, $P101[$S5002]
    unless_null $P5018, fallback463
    nqp_get_sc_object $P5019, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5018, $P5019
  fallback463:
    set $P5015, $P5018
    iter $P5017, $P5018
  for_next465:
    unless $P5017, for_done467
    shift $P5021, $P5017
  for_redo466:
    .const 'Sub' $P5020 = 'cuid_117_1349901726.63' 
    capture_lex $P5020
    $P5015 = $P5020($P5021)
    goto for_next465
  for_done467:
    set $P5022, $P5015
  if162_end462:
    box $P5026, $I101
    set $P5025, $P5026
    unless $I101 goto if163_end469 
.annotate 'line', 292
    $P5024 = $P102."states"()
    store_lex "@substates", $P5024
    set $P5025, $P5024
  if163_end469:
    .return ($P5025) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_115_1349901726.63") :anon :lex :outer("cuid_116_1349901726.63")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 283

    find_lex $P5001, "$cursor"
    $P5002 = $P5001."!protoregex_table"()
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_117_1349901726.63") :anon :lex :outer("cuid_116_1349901726.63")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 287
    .param pmc _lex_param_0 
    .lex "$rxname", _lex_param_0 
.annotate 'line', 288
    find_lex $P5001, "$nfa"
    find_lex $P5004, "$?PACKAGE"
    get_who $P5003, $P5004
    set $P5002, $P5003["$EDGE_SUBRULE"]
    unless_null $P5002, fallback464
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5002, $P5005
  fallback464:
    $P5006 = $P5001."addedge"(1, 0, $P5002, _lex_param_0)
    store_lex "$gotmatch", 1
    .return (1) 
.end
.HLL "nqp"
.namespace []
.sub "mergesubstates" :subid("cuid_21_1349901726.63") :anon :lex :outer("cuid_25_1349901726.63")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 299
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .param pmc _lex_param_4 
    .param pmc _lex_param_5 
    .param pmc _lex_param_6 :optional 
    .param int haz_param_11 :opt_flag 
    .const 'Sub' $P5011 = 'cuid_119_1349901726.63' 
    capture_lex $P5011 
    if haz_param_11, default506
    new $P5010, 'Hash'
    set _lex_param_6, $P5010
  default506:
    .lex "self", _lex_param_0 
    .lex "$start", _lex_param_1 
    .lex "$to", _lex_param_2 
    .lex "$fate", _lex_param_3 
    .lex "@substates", _lex_param_4 
    .lex "$cursor", _lex_param_5 
    .lex "%seen", _lex_param_6 
    unless _lex_param_4 goto if164_else471 
    .const 'Sub' $P5001 = 'cuid_119_1349901726.63' 
    capture_lex $P5001
    $P5002 = $P5001()
    set $P5009, $P5002
    goto if164_end472
  if164_else471:
.annotate 'line', 335
.annotate 'line', 336
    nqp_decontainerize $P5003, _lex_param_0
    find_lex $P5006, "$?PACKAGE"
    get_who $P5005, $P5006
    set $P5004, $P5005["$EDGE_FATE"]
    unless_null $P5004, fallback505
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5004, $P5007
  fallback505:
    $P5008 = $P5003."addedge"(_lex_param_1, 0, $P5004, _lex_param_3)
    set $P5009, $P5008
  if164_end472:
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_119_1349901726.63") :anon :lex :outer("cuid_21_1349901726.63")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 300
    .const 'Sub' $P5052 = 'cuid_118_1349901726.63' 
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
    set_label $P5017, while165_handlers476
    push_eh $P5017
  while165_test473:
    find_lex $P5008, "@substates"
    set $P5016, $P5008
    unless $P5008 goto while165_done477 
  while165_redo475:
    find_lex $P5010, "self"
    nqp_decontainerize $P5009, $P5010
    nqp_get_sc_object $P5011, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 3
    repr_get_attr_obj $P5012, $P5009, $P5011, "$!states"
    find_lex $P5015, "@substates"
    shift $P5014, $P5015
    clone $P5013, $P5014
    push $P5012, $P5013
    set $P5016, $P5012
    goto while165_test473 
  while165_handlers476:
    .get_results ($P5017)
    pop_upto_eh $P5017
    getattribute $P5017, $P5017, 'type'
    eq $P5017, .CONTROL_LOOP_NEXT, while165_test473
    eq $P5017, .CONTROL_LOOP_REDO, while165_redo475
  while165_done477:
    pop_eh 
    find_lex $P5019, "self"
    nqp_decontainerize $P5018, $P5019
    nqp_get_sc_object $P5020, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 3
    repr_get_attr_obj $P5021, $P5018, $P5020, "$!states"
    elements $I5002, $P5021
    set $I102, $I5002
    set $I103, $I101
  while166_test478:
    set $N5001, $I103
    set $N5002, $I102
    islt $I5003, $N5001, $N5002
    box $P5025, $I5003
    set $P5024, $P5025
    unless $I5003 goto while166_done482 
  while166_redo480:
    .const 'Sub' $P5022 = 'cuid_118_1349901726.63' 
    capture_lex $P5022
    $P5023 = $P5022()
    set $P5024, $P5023
    goto while166_test478 
  while166_done482:
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
    unless_null $P5029, fallback500
    nqp_get_sc_object $P5032, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5029, $P5032
  fallback500:
    $P5033 = $P5026."addedge"($P5028, $N5003, $P5029, 0)
    find_lex $P5034, "$to"
    set $N5006, $P5034
    set $N5007, 0
    isgt $I5004, $N5006, $N5007
    unless $I5004 goto if170_else501 
.annotate 'line', 332
    find_lex $P5036, "self"
    nqp_decontainerize $P5035, $P5036
    find_lex $P5037, "$to"
    find_lex $P5040, "$?PACKAGE"
    get_who $P5039, $P5040
    set $P5038, $P5039["$EDGE_EPSILON"]
    unless_null $P5038, fallback503
    nqp_get_sc_object $P5041, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5038, $P5041
  fallback503:
    $P5042 = $P5035."addedge"($I101, $P5037, $P5038, 0)
    set $P5051, $P5042
    goto if170_end502
  if170_else501:
.annotate 'line', 333
    find_lex $P5044, "self"
    nqp_decontainerize $P5043, $P5044
    find_lex $P5047, "$?PACKAGE"
    get_who $P5046, $P5047
    set $P5045, $P5046["$EDGE_FATE"]
    unless_null $P5045, fallback504
    nqp_get_sc_object $P5048, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5045, $P5048
  fallback504:
    find_lex $P5049, "$fate"
    $P5050 = $P5043."addedge"($I101, 0, $P5045, $P5049)
    set $P5051, $P5050
  if170_end502:
    .return ($P5051) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_118_1349901726.63") :anon :lex :outer("cuid_119_1349901726.63")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 316
    .lex "$substate", $P101 
    .lex "$j", $I101 
    .lex "$k", $I102 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P101, $P5001
    set $I101, 0
    set $I102, 0
    find_lex $P5004, "self"
    nqp_decontainerize $P5003, $P5004
    nqp_get_sc_object $P5005, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 3
    repr_get_attr_obj $P5006, $P5003, $P5005, "$!states"
    find_lex $I5001, "$i"
    set $P5002, $P5006[$I5001]
    unless_null $P5002, fallback483
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5002, $P5007
  fallback483:
    set $P101, $P5002
    set $I101, 0
    elements $I5002, $P101
    set $I102, $I5002
  while167_test484:
    set $N5001, $I101
    set $N5002, $I102
    islt $I5003, $N5001, $N5002
    set $I5014, $I5003
    unless $I5003 goto while167_done488 
  while167_redo486:
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
    unless_null $P5008, fallback489
    nqp_get_sc_object $P5009, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5008, $P5009
  fallback489:
    set $N5010, $P5008
    find_lex $I5006, "$substart"
    set $N5011, $I5006
    add $N5006, $N5010, $N5011
    box $P5010, $N5006
    set $P101[$I5004], $P5010
    set $P5011, $P101[$I101]
    unless_null $P5011, fallback492
    nqp_get_sc_object $P5012, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5011, $P5012
  fallback492:
    set $N5012, $P5011
    find_lex $P5015, "$?PACKAGE"
    get_who $P5014, $P5015
    set $P5013, $P5014["$EDGE_FATE"]
    unless_null $P5013, fallback493
    nqp_get_sc_object $P5016, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5013, $P5016
  fallback493:
    set $N5013, $P5013
    iseq $I5007, $N5012, $N5013
    box $P5019, $I5007
    set $P5018, $P5019
    unless $I5007 goto if168_end491 
    set $N5015, $I101
    set $N5016, 1
    add $N5014, $N5015, $N5016
    set $I5008, $N5014
    find_lex $P5017, "$fate"
    set $P101[$I5008], $P5017
    set $P5018, $P5017
  if168_end491:
    set $P5020, $P101[$I101]
    unless_null $P5020, fallback496
    nqp_get_sc_object $P5021, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5020, $P5021
  fallback496:
    set $N5017, $P5020
    find_lex $P5024, "$?PACKAGE"
    get_who $P5023, $P5024
    set $P5022, $P5023["$EDGE_SUBRULE"]
    unless_null $P5022, fallback497
    nqp_get_sc_object $P5025, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5022, $P5025
  fallback497:
    set $N5018, $P5022
    iseq $I5009, $N5017, $N5018
    box $P5037, $I5009
    set $P5036, $P5037
    unless $I5009 goto if169_end495 
.annotate 'line', 324
    find_lex $P5027, "self"
    nqp_decontainerize $P5026, $P5027
    find_lex $I5010, "$i"
    set $N5020, $I101
    set $N5021, 2
    add $N5019, $N5020, $N5021
    set $I5011, $N5019
    set $P5028, $P101[$I5011]
    unless_null $P5028, fallback498
    nqp_get_sc_object $P5029, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5028, $P5029
  fallback498:
    find_lex $P5030, "$fate"
    find_lex $P5031, "$cursor"
    set $N5023, $I101
    set $N5024, 1
    add $N5022, $N5023, $N5024
    set $I5012, $N5022
    set $P5032, $P101[$I5012]
    unless_null $P5032, fallback499
    nqp_get_sc_object $P5033, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5032, $P5033
  fallback499:
    find_lex $P5034, "%seen"
    $P5035 = $P5026."mergesubrule"($I5010, $P5028, $P5030, $P5031, $P5032, $P5034)
    set $P5036, $P5035
  if169_end495:
    set $N5026, $I101
    set $N5027, 3
    add $N5025, $N5026, $N5027
    set $I5013, $N5025
    set $I101, $I5013
    set $I5014, $I101
    goto while167_test484 
  while167_done488:
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
.sub "run" :subid("cuid_22_1349901726.63") :anon :lex :outer("cuid_25_1349901726.63")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 340
    .param pmc _lex_param_0 
    .param string _lex_param_1 
    .param int _lex_param_2 
    .lex "self", _lex_param_0 
    .lex "$target", _lex_param_1 
    .lex "$offset", _lex_param_2 
    nqp_decontainerize $P5002, _lex_param_0
    nqp_get_sc_object $P5003, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 3
    repr_get_attr_obj $P5004, $P5002, $P5003, "$!states"
    set $S5001, _lex_param_1
    set $I5001, _lex_param_2
    nqp_nfa_run_protoregex $P5001, $P5004, $S5001, $I5001
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "run_alt" :subid("cuid_23_1349901726.63") :anon :lex :outer("cuid_25_1349901726.63")
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
    nqp_get_sc_object $P5002, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 3
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!states"
    set $S5001, _lex_param_1
    set $I5001, _lex_param_2
    nqp_nfa_run_alternation $P5003, $S5001, $I5001, _lex_param_3, _lex_param_4
    .return () 
.end
.HLL "nqp"
.namespace []
.sub "__dump" :subid("cuid_24_1349901726.63") :anon :lex :outer("cuid_25_1349901726.63")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 394
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .const 'Sub' $P5017 = 'cuid_120_1349901726.63' 
    capture_lex $P5017 
    .lex "$subindent", $P101 
    .lex "$st", $P102 
    .lex "self", _lex_param_0 
    .lex "$dumper", _lex_param_1 
    .lex "$label", _lex_param_2 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P102, $P5002
.annotate 'line', 395
    $P5003 = _lex_param_1."newIndent"()
    set $P101, $P5003
.annotate 'line', 396
    $P5004 = "&print"("[")
    box $P5005, 0
    set $P102, $P5005
    nqp_decontainerize $P5009, _lex_param_0
    nqp_get_sc_object $P5010, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 3
    repr_get_attr_obj $P5011, $P5009, $P5010, "$!states"
    set $P5006, $P5011
    iter $P5008, $P5011
  for_next507:
    unless $P5008, for_done509
    shift $P5013, $P5008
  for_redo508:
    .const 'Sub' $P5012 = 'cuid_120_1349901726.63' 
    capture_lex $P5012
    $P5006 = $P5012($P5013)
    goto for_next507
  for_done509:
.annotate 'line', 402
    $P5014 = _lex_param_1."deleteIndent"()
.annotate 'line', 403
    $P5015 = _lex_param_1."indent"()
    $P5016 = "&print"("\n", $P5015, "]")
    .return ($P5016) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_120_1349901726.63") :anon :lex :outer("cuid_24_1349901726.63")
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
.sub "" :subid("cuid_66_1349901726.63") :anon :lex :outer("cuid_1_1349901726.63")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 408
    .param pmc _lex_param_0 
    .const 'Sub' $P5047 = 'cuid_26_1349901726.63' 
    capture_lex $P5047 
    .const 'Sub' $P5047 = 'cuid_27_1349901726.63' 
    capture_lex $P5047 
    .const 'Sub' $P5047 = 'cuid_28_1349901726.63' 
    capture_lex $P5047 
    .const 'Sub' $P5047 = 'cuid_29_1349901726.63' 
    capture_lex $P5047 
    .const 'Sub' $P5047 = 'cuid_30_1349901726.63' 
    capture_lex $P5047 
    .const 'Sub' $P5047 = 'cuid_31_1349901726.63' 
    capture_lex $P5047 
    .const 'Sub' $P5047 = 'cuid_32_1349901726.63' 
    capture_lex $P5047 
    .const 'Sub' $P5047 = 'cuid_33_1349901726.63' 
    capture_lex $P5047 
    .const 'Sub' $P5047 = 'cuid_34_1349901726.63' 
    capture_lex $P5047 
    .const 'Sub' $P5047 = 'cuid_35_1349901726.63' 
    capture_lex $P5047 
    .const 'Sub' $P5047 = 'cuid_36_1349901726.63' 
    capture_lex $P5047 
    .const 'Sub' $P5047 = 'cuid_37_1349901726.63' 
    capture_lex $P5047 
    .const 'Sub' $P5047 = 'cuid_38_1349901726.63' 
    capture_lex $P5047 
    .const 'Sub' $P5047 = 'cuid_39_1349901726.63' 
    capture_lex $P5047 
    .const 'Sub' $P5047 = 'cuid_40_1349901726.63' 
    capture_lex $P5047 
    .const 'Sub' $P5047 = 'cuid_41_1349901726.63' 
    capture_lex $P5047 
    .const 'Sub' $P5047 = 'cuid_42_1349901726.63' 
    capture_lex $P5047 
    .const 'Sub' $P5047 = 'cuid_43_1349901726.63' 
    capture_lex $P5047 
    .const 'Sub' $P5047 = 'cuid_44_1349901726.63' 
    capture_lex $P5047 
    .const 'Sub' $P5047 = 'cuid_45_1349901726.63' 
    capture_lex $P5047 
    .const 'Sub' $P5047 = 'cuid_46_1349901726.63' 
    capture_lex $P5047 
    .const 'Sub' $P5047 = 'cuid_47_1349901726.63' 
    capture_lex $P5047 
    .const 'Sub' $P5047 = 'cuid_48_1349901726.63' 
    capture_lex $P5047 
    .const 'Sub' $P5047 = 'cuid_49_1349901726.63' 
    capture_lex $P5047 
    .const 'Sub' $P5047 = 'cuid_50_1349901726.63' 
    capture_lex $P5047 
    .const 'Sub' $P5047 = 'cuid_51_1349901726.63' 
    capture_lex $P5047 
    .const 'Sub' $P5047 = 'cuid_52_1349901726.63' 
    capture_lex $P5047 
    .const 'Sub' $P5047 = 'cuid_53_1349901726.63' 
    capture_lex $P5047 
    .const 'Sub' $P5047 = 'cuid_54_1349901726.63' 
    capture_lex $P5047 
    .const 'Sub' $P5047 = 'cuid_55_1349901726.63' 
    capture_lex $P5047 
    .const 'Sub' $P5047 = 'cuid_56_1349901726.63' 
    capture_lex $P5047 
    .const 'Sub' $P5047 = 'cuid_57_1349901726.63' 
    capture_lex $P5047 
    .const 'Sub' $P5047 = 'cuid_58_1349901726.63' 
    capture_lex $P5047 
    .const 'Sub' $P5047 = 'cuid_59_1349901726.63' 
    capture_lex $P5047 
    .const 'Sub' $P5047 = 'cuid_60_1349901726.63' 
    capture_lex $P5047 
    .const 'Sub' $P5047 = 'cuid_61_1349901726.63' 
    capture_lex $P5047 
    .const 'Sub' $P5047 = 'cuid_62_1349901726.63' 
    capture_lex $P5047 
    .const 'Sub' $P5047 = 'cuid_63_1349901726.63' 
    capture_lex $P5047 
    .const 'Sub' $P5047 = 'cuid_64_1349901726.63' 
    capture_lex $P5047 
    .const 'Sub' $P5047 = 'cuid_65_1349901726.63' 
    capture_lex $P5047 
    .lex "$NO_CAPS", $P101 
    .lex "$pass_mark", $P102 
    .lex "@EMPTY", $P103 
    .lex "$?CLASS", _lex_param_0 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P102, $P5002
    new $P5003, 'ResizablePMCArray'
    set $P103, $P5003
    .const 'Sub' $P5004 = 'cuid_26_1349901726.63' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_27_1349901726.63' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_28_1349901726.63' 
    capture_lex $P5006
    new $P5007, 'Hash'
    set $P101, $P5007
    .const 'Sub' $P5008 = 'cuid_29_1349901726.63' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_30_1349901726.63' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_31_1349901726.63' 
    capture_lex $P5010
    .const 'Sub' $P5011 = 'cuid_32_1349901726.63' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_33_1349901726.63' 
    capture_lex $P5012
    .const 'Sub' $P5013 = 'cuid_34_1349901726.63' 
    capture_lex $P5013
    box $P5014, 1
    set $P102, $P5014
    .const 'Sub' $P5015 = 'cuid_35_1349901726.63' 
    capture_lex $P5015
    .const 'Sub' $P5016 = 'cuid_36_1349901726.63' 
    capture_lex $P5016
    .const 'Sub' $P5017 = 'cuid_37_1349901726.63' 
    capture_lex $P5017
    .const 'Sub' $P5018 = 'cuid_38_1349901726.63' 
    capture_lex $P5018
    .const 'Sub' $P5019 = 'cuid_39_1349901726.63' 
    capture_lex $P5019
    .const 'Sub' $P5020 = 'cuid_40_1349901726.63' 
    capture_lex $P5020
    new $P5021, 'ResizablePMCArray'
    set $P103, $P5021
    .const 'Sub' $P5022 = 'cuid_41_1349901726.63' 
    capture_lex $P5022
    .const 'Sub' $P5023 = 'cuid_42_1349901726.63' 
    capture_lex $P5023
    .const 'Sub' $P5024 = 'cuid_43_1349901726.63' 
    capture_lex $P5024
    .const 'Sub' $P5025 = 'cuid_44_1349901726.63' 
    capture_lex $P5025
    .const 'Sub' $P5026 = 'cuid_45_1349901726.63' 
    capture_lex $P5026
    .const 'Sub' $P5027 = 'cuid_46_1349901726.63' 
    capture_lex $P5027
    .const 'Sub' $P5028 = 'cuid_47_1349901726.63' 
    capture_lex $P5028
    .const 'Sub' $P5029 = 'cuid_48_1349901726.63' 
    capture_lex $P5029
    .const 'Sub' $P5030 = 'cuid_49_1349901726.63' 
    capture_lex $P5030
    .const 'Sub' $P5031 = 'cuid_50_1349901726.63' 
    capture_lex $P5031
    .const 'Sub' $P5032 = 'cuid_51_1349901726.63' 
    capture_lex $P5032
    .const 'Sub' $P5033 = 'cuid_52_1349901726.63' 
    capture_lex $P5033
    .const 'Sub' $P5034 = 'cuid_53_1349901726.63' 
    capture_lex $P5034
    .const 'Sub' $P5035 = 'cuid_54_1349901726.63' 
    capture_lex $P5035
    .const 'Sub' $P5036 = 'cuid_55_1349901726.63' 
    capture_lex $P5036
    .const 'Sub' $P5037 = 'cuid_56_1349901726.63' 
    capture_lex $P5037
    .const 'Sub' $P5038 = 'cuid_57_1349901726.63' 
    capture_lex $P5038
    .const 'Sub' $P5039 = 'cuid_58_1349901726.63' 
    capture_lex $P5039
    .const 'Sub' $P5040 = 'cuid_59_1349901726.63' 
    capture_lex $P5040
    .const 'Sub' $P5041 = 'cuid_60_1349901726.63' 
    capture_lex $P5041
    .const 'Sub' $P5042 = 'cuid_61_1349901726.63' 
    capture_lex $P5042
    .const 'Sub' $P5043 = 'cuid_62_1349901726.63' 
    capture_lex $P5043
    .const 'Sub' $P5044 = 'cuid_63_1349901726.63' 
    capture_lex $P5044
    .const 'Sub' $P5045 = 'cuid_64_1349901726.63' 
    capture_lex $P5045
    .const 'Sub' $P5046 = 'cuid_65_1349901726.63' 
    capture_lex $P5046
    .return ($P5046) 
.end
.HLL "nqp"
.namespace []
.sub "target" :subid("cuid_26_1349901726.63") :anon :lex :outer("cuid_66_1349901726.63")
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
.sub "from" :subid("cuid_27_1349901726.63") :anon :lex :outer("cuid_66_1349901726.63")
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
.sub "pos" :subid("cuid_28_1349901726.63") :anon :lex :outer("cuid_66_1349901726.63")
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
.sub "CAPHASH" :subid("cuid_29_1349901726.63") :anon :lex :outer("cuid_66_1349901726.63")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 425
    .param pmc _lex_param_0 
    .const 'Sub' $P5069 = 'cuid_86_1349901726.63' 
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
    .local pmc tmp_3 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P101, $P5001
    new $P5002, 'Hash'
    set $P102, $P5002
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P103, $P5003
    set $S101, ""
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P104, $P5004
    set $I101, 0
    set $I102, 0
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P105, $P5005
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P106, $P5006
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
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
    unless $I5001 goto if172_end513 
    nqp_decontainerize $P5014, _lex_param_0
    find_lex $P5015, "$?CLASS"
    repr_get_attr_obj $P5016, $P5014, $P5015, "$!regexsub"
    set $P5017, $P5016
  if172_end513:
    set $P5034, $P5017
    unless $P5017 goto if171_end511 
.annotate 'line', 437
.annotate 'line', 438
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
    unless $I5003 goto if174_end517 
    set $P5024, $P102
  if174_end517:
    set $P5033, $P5024
    unless $P5024 goto if173_end515 
.annotate 'line', 439
    iter $P5026, $P102
    set $P103, $P5026
  while175_test518:
    set $P5032, $P103
    unless $P103 goto while175_done522 
  while175_redo520:
.annotate 'line', 441
    shift $S5001, $P103
    set $S101, $S5001
    set $P5027, $P102[$S101]
    unless_null $P5027, fallback525
    nqp_get_sc_object $P5028, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5027, $P5028
  fallback525:
    set $N5001, $P5027
    set $N5002, 2
    isge $I5005, $N5001, $N5002
    box $P5031, $I5005
    set $P5030, $P5031
    unless $I5005 goto if176_end524 
    new $P5029, 'ResizablePMCArray'
    set $P101[$S101], $P5029
    set $P5030, $P5029
  if176_end524:
    set $P5032, $P5030
    goto while175_test518 
  while175_done522:
    set $P5033, $P5032
  if173_end515:
    set $P5034, $P5033
  if171_end511:
    nqp_decontainerize $P5035, _lex_param_0
    find_lex $P5036, "$?CLASS"
    repr_get_attr_obj $P5037, $P5035, $P5036, "$!cstack"
    isnull $I5007, $P5037
    box $P5038, $I5007
    isfalse $I5006, $P5038
    box $P5043, $I5006
    set $P5042, $P5043
    unless $I5006 goto if178_end529 
    nqp_decontainerize $P5039, _lex_param_0
    find_lex $P5040, "$?CLASS"
    repr_get_attr_obj $P5041, $P5039, $P5040, "$!cstack"
    set $P5042, $P5041
  if178_end529:
    set $P5068, $P5042
    unless $P5042 goto if177_end527 
.annotate 'line', 447
    nqp_decontainerize $P5044, _lex_param_0
    find_lex $P5045, "$?CLASS"
    repr_get_attr_obj $P5046, $P5044, $P5045, "$!cstack"
    set $P104, $P5046
    elements $I5008, $P104
    set $I102, $I5008
  while179_test530:
    set $N5003, $I101
    set $N5004, $I102
    islt $I5009, $N5003, $N5004
    box $P5067, $I5009
    set $P5066, $P5067
    unless $I5009 goto while179_done534 
  while179_redo532:
.annotate 'line', 450
    set $P5047, $P104[$I101]
    set $P105, $P5047
.annotate 'line', 452
    $P5048 = $P105."MATCH"()
    set $P106, $P5048
    find_lex $P5050, "$?CLASS"
    getattribute $P5049, $P105, $P5050, "$!name"
    set $P107, $P5049
    isnull $I5011, $P107
    box $P5051, $I5011
    isfalse $I5010, $P5051
    set $I5013, $I5010
    unless $I5010 goto if181_end538 
    defined $I5012, $P107
    set $I5013, $I5012
  if181_end538:
    box $P5065, $I5013
    set $P5064, $P5065
    unless $I5013 goto if180_end536 
.annotate 'line', 454
    set $S5002, $P107
    index $I5015, $S5002, "=", 0
    set $N5005, $I5015
    set $N5006, 0
    islt $I5014, $N5005, $N5006
    unless $I5014 goto if182_else539 
.annotate 'line', 455
    set $S5003, $P107
    set $P5052, $P102[$S5003]
    unless_null $P5052, fallback543
    nqp_get_sc_object $P5053, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5052, $P5053
  fallback543:
    set $N5007, $P5052
    set $N5008, 2
    isge $I5016, $N5007, $N5008
    unless $I5016 goto if183_else541 
    set $S5004, $P107
    set $P5054, $P101[$S5004]
    unless_null $P5054, fallback544
    nqp_get_sc_object $P5055, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5054, $P5055
  fallback544:
    push $P5054, $P106
    set $P5056, $P5054
    goto if183_end542
  if183_else541:
    set $S5005, $P107
    set $P101[$S5005], $P106
    set $P5056, $P106
  if183_end542:
    set $P5063, $P5056
    goto if182_end540
  if182_else539:
.annotate 'line', 460
    set $S5006, $P107
    split $P5060, "=", $S5006
    set $P5057, $P5060
    iter $P5059, $P5060
  for_next549:
    unless $P5059, for_done551
    shift $P5062, $P5059
  for_redo550:
    .const 'Sub' $P5061 = 'cuid_86_1349901726.63' 
    capture_lex $P5061
    $P5057 = $P5061($P5062)
    goto for_next549
  for_done551:
    set $P5063, $P5057
  if182_end540:
    set $P5064, $P5063
  if180_end536:
    box $P5066, $I101
    set tmp_3, $P5066
    set $N5010, tmp_3
    set $N5011, 1
    add $N5009, $N5010, $N5011
    set $I5017, $N5009
    set $I101, $I5017
    set $P5066, tmp_3
    goto while179_test530 
  while179_done534:
    set $P5068, $P5066
  if177_end527:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_86_1349901726.63") :anon :lex :outer("cuid_29_1349901726.63")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 461
    .param pmc _lex_param_0 
    .lex "$name", _lex_param_0 
    find_lex $P5002, "%caplist"
    set $S5001, _lex_param_0
    set $P5001, $P5002[$S5001]
    unless_null $P5001, fallback547
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5001, $P5003
  fallback547:
    set $N5001, $P5001
    set $N5002, 2
    isge $I5001, $N5001, $N5002
    unless $I5001 goto if184_else545 
    find_lex $P5005, "$caps"
    set $S5002, _lex_param_0
    set $P5004, $P5005[$S5002]
    unless_null $P5004, fallback548
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5004, $P5006
  fallback548:
    find_lex $P5007, "$submatch"
    push $P5004, $P5007
    set $P5010, $P5004
    goto if184_end546
  if184_else545:
    find_lex $P5008, "$caps"
    set $S5003, _lex_param_0
    find_lex $P5009, "$submatch"
    set $P5008[$S5003], $P5009
    set $P5010, $P5009
  if184_end546:
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "!cursor_init" :subid("cuid_30_1349901726.63") :anon :lex :outer("cuid_66_1349901726.63")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 474
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :named("p") :optional 
    .param int haz_param_12 :opt_flag 
    .param pmc _lex_param_3 :named("c") :optional 
    .param int haz_param_13 :opt_flag 
    if haz_param_12, default554
    box $P5011, 0
    set _lex_param_2, $P5011
  default554:
    if haz_param_13, default555
    nqp_get_sc_object $P5012, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set _lex_param_3, $P5012
  default555:
    .lex "$new", $P101 
    .lex "self", _lex_param_0 
    .lex "$target", _lex_param_1 
    .lex "$p", _lex_param_2 
    .lex "$c", _lex_param_3 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P101, $P5001
.annotate 'line', 475
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
    unless $I5002 goto if185_else552 
.annotate 'line', 479
    find_lex $P5007, "$?CLASS"
    repr_bind_attr_int $P101, $P5007, "$!from", -1
    find_lex $P5008, "$?CLASS"
    set $I5003, _lex_param_3
    repr_bind_attr_int $P101, $P5008, "$!pos", $I5003
    set $I5006, $I5003
    goto if185_end553
  if185_else552:
.annotate 'line', 483
    find_lex $P5009, "$?CLASS"
    set $I5004, _lex_param_2
    repr_bind_attr_int $P101, $P5009, "$!from", $I5004
    find_lex $P5010, "$?CLASS"
    set $I5005, _lex_param_2
    repr_bind_attr_int $P101, $P5010, "$!pos", $I5005
    set $I5006, $I5005
  if185_end553:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "!cursor_start" :subid("cuid_31_1349901726.63") :anon :lex :outer("cuid_66_1349901726.63")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 490
    .param pmc _lex_param_0 
    .lex "$new", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
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
    unless $P5012 goto if186_end557 
.annotate 'line', 497
    find_lex $P5013, "$?CLASS"
    nqp_decontainerize $P5014, _lex_param_0
    find_lex $P5015, "$?CLASS"
    repr_get_attr_int $I5001, $P5014, $P5015, "$!pos"
    repr_bind_attr_int $P101, $P5013, "$!pos", $I5001
    nqp_decontainerize $P5016, _lex_param_0
    find_lex $P5017, "$?CLASS"
    repr_get_attr_obj $P5018, $P5016, $P5017, "$!cstack"
    set $P5024, $P5018
    unless $P5018 goto if187_end559 
    find_lex $P5019, "$?CLASS"
    nqp_decontainerize $P5021, _lex_param_0
    find_lex $P5022, "$?CLASS"
    repr_get_attr_obj $P5023, $P5021, $P5022, "$!cstack"
    clone $P5020, $P5023
    setattribute $P101, $P5019, "$!cstack", $P5020
    set $P5024, $P5020
  if187_end559:
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
  if186_end557:
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
.sub "!cursor_start_subcapture" :subid("cuid_32_1349901726.63") :anon :lex :outer("cuid_66_1349901726.63")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 519
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$new", $P101 
    .lex "self", _lex_param_0 
    .lex "$from", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
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
.sub "!cursor_capture" :subid("cuid_33_1349901726.63") :anon :lex :outer("cuid_66_1349901726.63")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 528
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
    if $I5001 goto unless188_end561 
    nqp_decontainerize $P5007, _lex_param_0
    find_lex $P5008, "$?CLASS"
    new $P5009, 'ResizablePMCArray'
    repr_bind_attr_obj $P5007, $P5008, "$!cstack", $P5009
    set $P5010, $P5009
  unless188_end561:
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
.sub "!cursor_push_cstack" :subid("cuid_34_1349901726.63") :anon :lex :outer("cuid_66_1349901726.63")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 540
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
    if $I5001 goto unless189_end563 
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    new $P5006, 'ResizablePMCArray'
    repr_bind_attr_obj $P5004, $P5005, "$!cstack", $P5006
    set $P5007, $P5006
  unless189_end563:
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
.sub "!cursor_pass" :subid("cuid_35_1349901726.63") :anon :lex :outer("cuid_66_1349901726.63")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 547
    .param pmc _lex_param_0 
    .param int _lex_param_1 
    .param pmc _lex_param_2 :optional 
    .param int haz_param_14 :opt_flag 
    .param pmc _lex_param_3 :named("backtrack") :optional 
    .param int haz_param_15 :opt_flag 
    if haz_param_14, default570
    nqp_get_sc_object $P5019, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set _lex_param_2, $P5019
  default570:
    if haz_param_15, default571
    nqp_get_sc_object $P5020, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set _lex_param_3, $P5020
  default571:
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
    unless _lex_param_3 goto if190_end565 
    nqp_decontainerize $P5006, _lex_param_0
    find_lex $P5007, "$?CLASS"
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_obj $P5010, $P5008, $P5009, "$!regexsub"
    repr_bind_attr_obj $P5006, $P5007, "$!restart", $P5010
    set $P5011, $P5010
  if190_end565:
    set $P5015, _lex_param_3
    if _lex_param_3 goto unless191_end567 
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    null $P5014
    repr_bind_attr_obj $P5012, $P5013, "$!bstack", $P5014
    set $P5015, $P5014
  unless191_end567:
    set $P5018, _lex_param_2
    unless _lex_param_2 goto if192_end569 
.annotate 'line', 554
    nqp_decontainerize $P5016, _lex_param_0
    $P5017 = $P5016."!reduce"(_lex_param_2)
    set $P5018, $P5017
  if192_end569:
    .return ($P5018) 
.end
.HLL "nqp"
.namespace []
.sub "!cursor_fail" :subid("cuid_36_1349901726.63") :anon :lex :outer("cuid_66_1349901726.63")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 557
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
.sub "!cursor_next" :subid("cuid_37_1349901726.63") :anon :lex :outer("cuid_66_1349901726.63")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 563
    .param pmc _lex_param_0 
    .const 'Sub' $P5012 = 'cuid_87_1349901726.63' 
    capture_lex $P5012 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    find_lex $P5002, "$?CLASS"
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!restart"
    unless $P5003 goto if193_else572 
.annotate 'line', 564
.annotate 'line', 565
    nqp_decontainerize $P5007, _lex_param_0
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!restart"
    $P5008 = $P5006($P5007)
    set $P5011, $P5008
    goto if193_end573
  if193_else572:
    .const 'Sub' $P5009 = 'cuid_87_1349901726.63' 
    capture_lex $P5009
    $P5010 = $P5009()
    set $P5011, $P5010
  if193_end573:
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_87_1349901726.63") :anon :lex :outer("cuid_37_1349901726.63")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 567
    .lex "$cur", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P101, $P5001
.annotate 'line', 568
    find_lex $P5003, "self"
    nqp_decontainerize $P5002, $P5003
    $P5004 = $P5002."!cursor_start"()
    set $P101, $P5004
.annotate 'line', 569
    $P5005 = $P101."!cursor_fail"()
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "!cursor_more" :subid("cuid_38_1349901726.63") :anon :lex :outer("cuid_66_1349901726.63")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 574
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy :named 
    .lex "$new", $P101 
    .lex "self", _lex_param_0 
    .lex "%opts", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P101, $P5001
    root_new $P102, ['parrot';'Continuation']
    set_label $P102, lexotic_574
    .lex "RETURN", $P102
    set $P5002, _lex_param_1["ex"]
    unless_null $P5002, fallback578
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5002, $P5003
  fallback578:
    set $P5008, $P5002
    unless $P5002 goto if194_end577 
.annotate 'line', 575
    nqp_decontainerize $P5005, _lex_param_0
    $P5006 = $P5005."!cursor_next"()
    find_lex $P5004, "RETURN"
    $P5007 = $P5004($P5006)
    set $P5008, $P5007
  if194_end577:
.annotate 'line', 576
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
    unless_null $P5020, fallback583
    nqp_get_sc_object $P5021, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5020, $P5021
  fallback583:
    set $P5026, $P5020
    if $P5020 goto unless196_end582 
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
  unless196_end582:
    unless $P5026 goto if195_else579 
    nqp_decontainerize $P5028, _lex_param_0
    find_lex $P5029, "$?CLASS"
    repr_get_attr_int $I5004, $P5028, $P5029, "$!from"
    set $N5004, $I5004
    set $N5005, 1
    add $N5003, $N5004, $N5005
    box $P5033, $N5003
    set $P5032, $P5033
    goto if195_end580
  if195_else579:
    nqp_decontainerize $P5030, _lex_param_0
    find_lex $P5031, "$?CLASS"
    repr_get_attr_int $I5005, $P5030, $P5031, "$!pos"
    box $P5034, $I5005
    set $P5032, $P5034
  if195_end580:
    set $I5006, $P5032
    repr_bind_attr_int $P101, $P5019, "$!pos", $I5006
.annotate 'line', 582
    nqp_decontainerize $P5035, _lex_param_0
    find_lex $P5036, "$?CLASS"
    repr_get_attr_obj $P5037, $P5035, $P5036, "$!regexsub"
    $P5038 = $P5037($P101)
    goto lexotic_575
  lexotic_574:
    .get_results ($P5038)
  lexotic_575:
    .return ($P5038) 
.end
.HLL "nqp"
.namespace []
.sub "!reduce" :subid("cuid_39_1349901726.63") :anon :lex :outer("cuid_66_1349901726.63")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 585
    .param pmc _lex_param_0 
    .param string _lex_param_1 
    .lex "$actions", $P101 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P101, $P5001
    find_dynamic_lex $P5002, "$*ACTIONS"
    set $P101, $P5002
    isnull $I5002, $P101
    box $P5003, $I5002
    isfalse $I5001, $P5003
    set $I5004, $I5001
    unless $I5001 goto if198_end587 
    can $I5003, $P101, _lex_param_1
    set $I5004, $I5003
  if198_end587:
    box $P5009, $I5004
    set $P5008, $P5009
    unless $I5004 goto if197_end585 
.annotate 'line', 587
    nqp_decontainerize $P5005, _lex_param_0
    $P5006 = $P5005."MATCH"()
    find_method $P5004, $P101, _lex_param_1
    $P5007 = $P5004($P101, $P5006)
    set $P5008, $P5007
  if197_end585:
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "!reduce_with_match" :subid("cuid_40_1349901726.63") :anon :lex :outer("cuid_66_1349901726.63")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 591
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .lex "$actions", $P101 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    .lex "$key", _lex_param_2 
    .lex "$match", _lex_param_3 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P101, $P5001
    find_dynamic_lex $P5002, "$*ACTIONS"
    set $P101, $P5002
    isnull $I5002, $P101
    box $P5003, $I5002
    isfalse $I5001, $P5003
    set $I5004, $I5001
    unless $I5001 goto if200_end591 
    set $S5001, _lex_param_1
    can $I5003, $P101, $S5001
    set $I5004, $I5003
  if200_end591:
    box $P5007, $I5004
    set $P5006, $P5007
    unless $I5004 goto if199_end589 
.annotate 'line', 593
    set $S5002, _lex_param_1
    find_method $P5004, $P101, $S5002
    $P5005 = $P5004($P101, _lex_param_3, _lex_param_2)
    set $P5006, $P5005
  if199_end589:
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "!protoregex" :subid("cuid_41_1349901726.63") :anon :lex :outer("cuid_66_1349901726.63")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 598
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5031 = 'cuid_88_1349901726.63' 
    capture_lex $P5031 
    .lex "$nfa", $P101 
    .lex "@fates", $P102 
    .lex "@rxfate", $P103 
    .lex "$cur", $P104 
    .lex "$rxname", $P105 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P101, $P5001
    new $P5002, 'ResizablePMCArray'
    set $P102, $P5002
    new $P5003, 'ResizablePMCArray'
    set $P103, $P5003
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P104, $P5004
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P105, $P5005
.annotate 'line', 600
    nqp_decontainerize $P5007, _lex_param_0
    get_how $P5006, $P5007
    nqp_decontainerize $P5008, _lex_param_0
    .const 'Sub' $P5010 = 'cuid_88_1349901726.63' 
    capture_lex $P5010
    newclosure $P5009, $P5010
    $P5011 = $P5006."cache"($P5008, _lex_param_1, $P5009)
    set $P101, $P5011
.annotate 'line', 601
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_str $S5001, $P5012, $P5013, "$!target"
    nqp_decontainerize $P5014, _lex_param_0
    find_lex $P5015, "$?CLASS"
    repr_get_attr_int $I5001, $P5014, $P5015, "$!pos"
    $P5016 = $P101."run"($S5001, $I5001)
    set $P102, $P5016
.annotate 'line', 604
    $P5018 = $P101."states"()
    set $P5017, $P5018[0]
    unless_null $P5017, fallback592
    nqp_get_sc_object $P5019, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5017, $P5019
  fallback592:
    set $P103, $P5017
  while201_test593:
    set $P5027, $P102
    unless $P102 goto while201_done597 
  while201_redo595:
.annotate 'line', 607
    pop $I5002, $P102
    set $P5020, $P103[$I5002]
    set $P105, $P5020
.annotate 'line', 610
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
    unless $I5003 goto if202_end599 
    find_lex $P5024, "@EMPTY"
    set $P102, $P5024
    set $P5025, $P102
  if202_end599:
    set $P5027, $P5025
    goto while201_test593 
  while201_done597:
    set $P5028, $P104
    defined $I5005, $P5028
    if $I5005, defor600
.annotate 'line', 613
    nqp_decontainerize $P5029, _lex_param_0
    $P5030 = $P5029."!cursor_start"()
    set $P5028, $P5030
  defor600:
    .return ($P5028) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_88_1349901726.63") :anon :lex :outer("cuid_41_1349901726.63")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 600

    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    find_lex $P5003, "$name"
    $P5004 = $P5001."!protoregex_nfa"($P5003)
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "!protoregex_nfa" :subid("cuid_42_1349901726.63") :anon :lex :outer("cuid_66_1349901726.63")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 616
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5028 = 'cuid_89_1349901726.63' 
    capture_lex $P5028 
    .const 'Sub' $P5028 = 'cuid_90_1349901726.63' 
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
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P102, $P5002
    new $P5003, 'ResizablePMCArray'
    set $P103, $P5003
    set $I101, 0
    set $I102, 0
.annotate 'line', 617
    nqp_decontainerize $P5005, _lex_param_0
    get_how $P5004, $P5005
    nqp_decontainerize $P5006, _lex_param_0
    .const 'Sub' $P5008 = 'cuid_89_1349901726.63' 
    capture_lex $P5008
    newclosure $P5007, $P5008
    $P5009 = $P5004."cache"($P5006, "!protoregex_table", $P5007)
    set $P101, $P5009
.annotate 'line', 618
    nqp_get_sc_object $P5013, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 0
    nqp_get_package_through_who $P5012, $P5013, "QRegex"
    get_who $P5011, $P5012
    set $P5010, $P5011["NFA"]
    unless_null $P5010, fallback601
    nqp_get_sc_object $P5014, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5010, $P5014
  fallback601:
    $P5015 = $P5010."new"()
    set $P102, $P5015
.annotate 'line', 619
    $P5017 = $P102."states"()
    set $P5016, $P5017[0]
    unless_null $P5016, fallback602
    nqp_get_sc_object $P5018, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5016, $P5018
  fallback602:
    set $P103, $P5016
    set $I101, 1
    set $I102, 0
    set $S5001, _lex_param_1
    exists $I5001, $P101[$S5001]
    box $P5027, $I5001
    set $P5026, $P5027
    unless $I5001 goto if203_end604 
.annotate 'line', 622
    set $S5002, _lex_param_1
    set $P5022, $P101[$S5002]
    unless_null $P5022, fallback605
    nqp_get_sc_object $P5023, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5022, $P5023
  fallback605:
    set $P5019, $P5022
    iter $P5021, $P5022
  for_next606:
    unless $P5021, for_done608
    shift $P5025, $P5021
  for_redo607:
    .const 'Sub' $P5024 = 'cuid_90_1349901726.63' 
    capture_lex $P5024
    $P5019 = $P5024($P5025)
    goto for_next606
  for_done608:
    set $P5026, $P5019
  if203_end604:
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_89_1349901726.63") :anon :lex :outer("cuid_42_1349901726.63")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 617

    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    $P5003 = $P5001."!protoregex_table"()
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_90_1349901726.63") :anon :lex :outer("cuid_42_1349901726.63")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 623
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
.annotate 'line', 626
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
.sub "!protoregex_table" :subid("cuid_43_1349901726.63") :anon :lex :outer("cuid_66_1349901726.63")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 632
    .param pmc _lex_param_0 
    .const 'Sub' $P5011 = 'cuid_92_1349901726.63' 
    capture_lex $P5011 
    .lex "%protorx", $P101 
    .lex "self", _lex_param_0 
    new $P5001, 'Hash'
    set $P101, $P5001
.annotate 'line', 634
    nqp_decontainerize $P5006, _lex_param_0
    get_how $P5005, $P5006
    nqp_decontainerize $P5007, _lex_param_0
    $P5008 = $P5005."methods"($P5007)
    set $P5002, $P5008
    iter $P5004, $P5008
  for_next614:
    unless $P5004, for_done616
    shift $P5010, $P5004
  for_redo615:
    .const 'Sub' $P5009 = 'cuid_92_1349901726.63' 
    capture_lex $P5009
    $P5002 = $P5009($P5010)
    goto for_next614
  for_done616:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_92_1349901726.63") :anon :lex :outer("cuid_43_1349901726.63")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 634
    .param pmc _lex_param_0 
    .const 'Sub' $P5005 = 'cuid_91_1349901726.63' 
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
    unless $I5002 goto if204_end610 
    .const 'Sub' $P5001 = 'cuid_91_1349901726.63' 
    capture_lex $P5001
    $P5002 = $P5001()
    set $P5003, $P5002
  if204_end610:
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_91_1349901726.63") :anon :lex :outer("cuid_92_1349901726.63")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 637
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
    if $I5002 goto unless205_end612 
    find_lex $P5002, "%protorx"
    new $P5003, 'ResizablePMCArray'
    set $P5002[$S101], $P5003
    set $P5004, $P5003
  unless205_end612:
    find_lex $P5007, "%protorx"
    set $P5006, $P5007[$S101]
    unless_null $P5006, fallback613
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5006, $P5008
  fallback613:
    find_lex $S5003, "$methname"
    box $P5009, $S5003
    push $P5006, $P5009
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "!alt" :subid("cuid_44_1349901726.63") :anon :lex :outer("cuid_66_1349901726.63")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 646
    .param pmc _lex_param_0 
    .param int _lex_param_1 
    .param string _lex_param_2 
    .param pmc _lex_param_3 :optional 
    .param int haz_param_16 :opt_flag 
    .const 'Sub' $P5018 = 'cuid_93_1349901726.63' 
    capture_lex $P5018 
    if haz_param_16, default617
    new $P5017, 'ResizablePMCArray'
    set _lex_param_3, $P5017
  default617:
    .lex "$nfa", $P101 
    .lex "self", _lex_param_0 
    .lex "$pos", _lex_param_1 
    .lex "$name", _lex_param_2 
    .lex "@labels", _lex_param_3 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P101, $P5001
.annotate 'line', 647
    nqp_decontainerize $P5003, _lex_param_0
    get_how $P5002, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    .const 'Sub' $P5006 = 'cuid_93_1349901726.63' 
    capture_lex $P5006
    newclosure $P5005, $P5006
    $P5007 = $P5002."cache"($P5004, _lex_param_2, $P5005)
    set $P101, $P5007
.annotate 'line', 648
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
.sub "" :subid("cuid_93_1349901726.63") :anon :lex :outer("cuid_44_1349901726.63")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 647

    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    find_lex $S5001, "$name"
    find_lex $P5003, "@labels"
    $P5004 = $P5001."!alt_nfa"($S5001, $P5003)
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "!alt_nfa" :subid("cuid_45_1349901726.63") :anon :lex :outer("cuid_66_1349901726.63")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 651
    .param pmc _lex_param_0 
    .param string _lex_param_1 
    .param pmc _lex_param_2 
    .const 'Sub' $P5021 = 'cuid_94_1349901726.63' 
    capture_lex $P5021 
    .lex "$nfa", $P101 
    .lex "@fates", $P102 
    .lex "$start", $I101 
    .lex "$fate", $I102 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    .lex "@labels", _lex_param_2 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P101, $P5001
    new $P5002, 'ResizablePMCArray'
    set $P102, $P5002
    set $I101, 0
    set $I102, 0
.annotate 'line', 652
    nqp_get_sc_object $P5006, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 0
    nqp_get_package_through_who $P5005, $P5006, "QRegex"
    get_who $P5004, $P5005
    set $P5003, $P5004["NFA"]
    unless_null $P5003, fallback618
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5003, $P5007
  fallback618:
    $P5008 = $P5003."new"()
    set $P101, $P5008
.annotate 'line', 653
    $P5010 = $P101."states"()
    set $P5009, $P5010[0]
    unless_null $P5009, fallback619
    nqp_get_sc_object $P5011, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5009, $P5011
  fallback619:
    set $P102, $P5009
    set $I101, 1
    set $I102, 0
.annotate 'line', 656
    nqp_decontainerize $P5015, _lex_param_0
    find_lex $P5016, "$?CLASS"
    repr_get_attr_obj $P5017, $P5015, $P5016, "$!regexsub"
    $P5018 = $P5017."nqpattr"(_lex_param_1)
    set $P5012, $P5018
    iter $P5014, $P5018
  for_next621:
    unless $P5014, for_done623
    shift $P5020, $P5014
  for_redo622:
    .const 'Sub' $P5019 = 'cuid_94_1349901726.63' 
    capture_lex $P5019
    $P5012 = $P5019($P5020)
    goto for_next621
  for_done623:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_94_1349901726.63") :anon :lex :outer("cuid_45_1349901726.63")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 656
    .param pmc _lex_param_0 
    .lex "$label", $P101 
    .lex "$_", _lex_param_0 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P101, $P5001
    find_lex $P5003, "@labels"
    find_lex $I5001, "$fate"
    set $P5002, $P5003[$I5001]
    unless_null $P5002, fallback620
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5002, $P5004
  fallback620:
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
.annotate 'line', 660
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
.sub "!BACKREF" :subid("cuid_46_1349901726.63") :anon :lex :outer("cuid_66_1349901726.63")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 665
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5034 = 'cuid_95_1349901726.63' 
    capture_lex $P5034 
    .lex "$cur", $P101 
    .lex "$n", $I101 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    .local pmc tmp_4 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P101, $P5001
    set $I101, 0
.annotate 'line', 666
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start"()
    set $P101, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!cstack"
    unless $P5006 goto if206_else624 
    nqp_decontainerize $P5007, _lex_param_0
    find_lex $P5008, "$?CLASS"
    repr_get_attr_obj $P5009, $P5007, $P5008, "$!cstack"
    elements $I5001, $P5009
    set $N5002, $I5001
    set $N5003, 1
    sub $N5001, $N5002, $N5003
    box $P5011, $N5001
    set $P5010, $P5011
    goto if206_end625
  if206_else624:
    box $P5012, -1
    set $P5010, $P5012
  if206_end625:
    set $I5002, $P5010
    set $I101, $I5002
    new $P5028, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5028, while207_handlers629
    push_eh $P5028
  while207_test626:
    set $N5004, $I101
    set $N5005, 0
    isge $I5003, $N5004, $N5005
    set $I5007, $I5003
    unless $I5003 goto if208_end632 
    nqp_decontainerize $P5015, _lex_param_0
    find_lex $P5016, "$?CLASS"
    repr_get_attr_obj $P5017, $P5015, $P5016, "$!cstack"
    set $P5014, $P5017[$I101]
    unless_null $P5014, fallback635
    nqp_get_sc_object $P5018, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5014, $P5018
  fallback635:
    find_lex $P5019, "$?CLASS"
    getattribute $P5013, $P5014, $P5019, "$!name"
    isnull $I5004, $P5013
    set $I5006, $I5004
    if $I5004 goto unless209_end634 
    nqp_decontainerize $P5022, _lex_param_0
    find_lex $P5023, "$?CLASS"
    repr_get_attr_obj $P5024, $P5022, $P5023, "$!cstack"
    set $P5021, $P5024[$I101]
    unless_null $P5021, fallback636
    nqp_get_sc_object $P5025, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5021, $P5025
  fallback636:
    find_lex $P5026, "$?CLASS"
    getattribute $P5020, $P5021, $P5026, "$!name"
    set $S5001, $P5020
    set $S5002, _lex_param_1
    isne $I5005, $S5001, $S5002
    set $I5006, $I5005
  unless209_end634:
    set $I5007, $I5006
  if208_end632:
    box $P5029, $I5007
    set $P5027, $P5029
    unless $I5007 goto while207_done630 
  while207_redo628:
    box $P5027, $I101
    set tmp_4, $P5027
    set $N5007, tmp_4
    set $N5008, 1
    sub $N5006, $N5007, $N5008
    set $I5008, $N5006
    set $I101, $I5008
    set $P5027, tmp_4
    goto while207_test626 
  while207_handlers629:
    .get_results ($P5028)
    pop_upto_eh $P5028
    getattribute $P5028, $P5028, 'type'
    eq $P5028, .CONTROL_LOOP_NEXT, while207_test626
    eq $P5028, .CONTROL_LOOP_REDO, while207_redo628
  while207_done630:
    pop_eh 
    set $N5006, $I101
    set $N5007, 0
    isge $I5008, $N5006, $N5007
    box $P5033, $I5008
    set $P5032, $P5033
    unless $I5008 goto if210_end638 
    .const 'Sub' $P5030 = 'cuid_95_1349901726.63' 
    capture_lex $P5030
    $P5031 = $P5030()
    set $P5032, $P5031
  if210_end638:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_95_1349901726.63") :anon :lex :outer("cuid_46_1349901726.63")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 670
    .lex "$subcur", $P101 
    .lex "$litlen", $I101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P101, $P5001
    set $I101, 0
    find_lex $P5004, "self"
    nqp_decontainerize $P5003, $P5004
    find_lex $P5005, "$?CLASS"
    repr_get_attr_obj $P5006, $P5003, $P5005, "$!cstack"
    find_lex $I5001, "$n"
    set $P5002, $P5006[$I5001]
    unless_null $P5002, fallback639
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5002, $P5007
  fallback639:
    set $P101, $P5002
.annotate 'line', 672
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
.annotate 'line', 675
    $P5019 = $P101."from"()
    set $I5005, $P5019
    substr $S5003, $S5004, $I5005, $I101
    iseq $I5003, $S5001, $S5003
    box $P5026, $I5003
    set $P5025, $P5026
    unless $I5003 goto if211_end641 
.annotate 'line', 673
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
  if211_end641:
    .return ($P5025) 
.end
.HLL "nqp"
.namespace []
.sub "!LITERAL" :subid("cuid_47_1349901726.63") :anon :lex :outer("cuid_66_1349901726.63")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 680
    .param pmc _lex_param_0 
    .param string _lex_param_1 
    .param int _lex_param_2 :optional 
    .param int haz_param_17 :opt_flag 
    if haz_param_17, default648
    set $I5010, 0
    set _lex_param_2, $I5010
  default648:
    .lex "$cur", $P101 
    .lex "$litlen", $I101 
    .lex "self", _lex_param_0 
    .lex "$str", _lex_param_1 
    .lex "$i", _lex_param_2 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P101, $P5001
    set $I101, 0
.annotate 'line', 681
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start"()
    set $P101, $P5003
    length $I5001, _lex_param_1
    set $I101, $I5001
    set $N5001, $I101
    set $N5002, 1
    islt $I5002, $N5001, $N5002
    set $I5008, $I5002
    if $I5002 goto unless213_end645 
    unless _lex_param_2 goto if214_else646 
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
    goto if214_end647
  if214_else646:
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_str $S5006, $P5008, $P5009, "$!target"
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5006, $P5010, $P5011, "$!pos"
    substr $S5005, $S5006, $I5006, $I101
    iseq $I5005, $S5005, _lex_param_1
    set $I5007, $I5005
  if214_end647:
    set $I5008, $I5007
  unless213_end645:
    box $P5016, $I5008
    set $P5015, $P5016
    unless $I5008 goto if212_end643 
.annotate 'line', 683
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5009, $P5012, $P5013, "$!pos"
    set $N5004, $I5009
    set $N5005, $I101
    add $N5003, $N5004, $N5005
    $P5014 = $P101."!cursor_pass"($N5003)
    set $P5015, $P5014
  if212_end643:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "at" :subid("cuid_48_1349901726.63") :anon :lex :outer("cuid_66_1349901726.63")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 690
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    .lex "$pos", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P101, $P5001
.annotate 'line', 691
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
    unless $I5001 goto if215_end650 
.annotate 'line', 692
    nqp_decontainerize $P5006, _lex_param_0
    find_lex $P5007, "$?CLASS"
    repr_get_attr_int $I5003, $P5006, $P5007, "$!pos"
    $P5008 = $P101."!cursor_pass"($I5003)
    set $P5009, $P5008
  if215_end650:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "before" :subid("cuid_49_1349901726.63") :anon :lex :outer("cuid_66_1349901726.63")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 696
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    .lex "$regex", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P101, $P5001
.annotate 'line', 697
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start"()
    set $P101, $P5003
    find_lex $P5004, "$?CLASS"
    nqp_decontainerize $P5005, _lex_param_0
    find_lex $P5006, "$?CLASS"
    repr_get_attr_int $I5001, $P5005, $P5006, "$!pos"
    repr_bind_attr_int $P101, $P5004, "$!pos", $I5001
.annotate 'line', 699
    $P5007 = _lex_param_1($P101)
    find_lex $P5008, "$?CLASS"
    repr_get_attr_int $I5003, $P5007, $P5008, "$!pos"
    set $N5001, $I5003
    set $N5002, 0
    isge $I5002, $N5001, $N5002
    unless $I5002 goto if216_else651 
.annotate 'line', 700
    nqp_decontainerize $P5009, _lex_param_0
    find_lex $P5010, "$?CLASS"
    repr_get_attr_int $I5004, $P5009, $P5010, "$!pos"
    $P5011 = $P101."!cursor_pass"($I5004, "before")
    set $P5013, $P5011
    goto if216_end652
  if216_else651:
    find_lex $P5012, "$?CLASS"
    repr_bind_attr_int $P101, $P5012, "$!pos", -3
    box $P5014, -3
    set $P5013, $P5014
  if216_end652:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "after" :subid("cuid_50_1349901726.63") :anon :lex :outer("cuid_66_1349901726.63")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 707
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    .lex "$regex", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P101, $P5001
.annotate 'line', 708
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start"()
    set $P101, $P5003
    find_lex $P5004, "$?CLASS"
.annotate 'line', 709
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
.annotate 'line', 712
    $P5019 = _lex_param_1($P101)
    find_lex $P5020, "$?CLASS"
    repr_get_attr_int $I5008, $P5019, $P5020, "$!pos"
    set $N5007, $I5008
    set $N5008, 0
    isge $I5007, $N5007, $N5008
    unless $I5007 goto if217_else653 
.annotate 'line', 713
    nqp_decontainerize $P5021, _lex_param_0
    find_lex $P5022, "$?CLASS"
    repr_get_attr_int $I5009, $P5021, $P5022, "$!pos"
    $P5023 = $P101."!cursor_pass"($I5009, "after")
    set $P5025, $P5023
    goto if217_end654
  if217_else653:
    find_lex $P5024, "$?CLASS"
    repr_bind_attr_int $P101, $P5024, "$!pos", -3
    box $P5026, -3
    set $P5025, $P5026
  if217_end654:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "ws" :subid("cuid_51_1349901726.63") :anon :lex :outer("cuid_66_1349901726.63")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 718
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P101, $P5001
.annotate 'line', 720
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
    unless $I5001 goto if218_else655 
.annotate 'line', 722
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_int $I5004, $P5008, $P5009, "$!pos"
    $P5010 = $P101."!cursor_pass"($I5004, "ws")
    set $P5032, $P5010
    goto if218_end656
  if218_else655:
    nqp_decontainerize $P5011, _lex_param_0
    find_lex $P5012, "$?CLASS"
    repr_get_attr_int $I5006, $P5011, $P5012, "$!pos"
    set $N5003, $I5006
    set $N5004, 1
    islt $I5005, $N5003, $N5004
    set $I5010, $I5005
    if $I5005 goto unless221_end662 
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
  unless221_end662:
    set $I5015, $I5010
    if $I5010 goto unless220_end660 
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
  unless220_end660:
    box $P5031, $I5015
    set $P5030, $P5031
    unless $I5015 goto if219_end658 
.annotate 'line', 726
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
  if219_end658:
    set $P5032, $P5030
  if218_end656:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "ww" :subid("cuid_52_1349901726.63") :anon :lex :outer("cuid_66_1349901726.63")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 733
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P101, $P5001
.annotate 'line', 734
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
    unless $I5001 goto if225_end670 
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
  if225_end670:
    set $I5009, $I5006
    unless $I5006 goto if224_end668 
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_str $S5002, $P5010, $P5011, "$!target"
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5008, $P5012, $P5013, "$!pos"
    is_cclass $I5007, .CCLASS_WORD, $S5002, $I5008
    set $I5009, $I5007
  if224_end668:
    set $I5013, $I5009
    unless $I5009 goto if223_end666 
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
  if223_end666:
    box $P5022, $I5013
    set $P5021, $P5022
    unless $I5013 goto if222_end664 
.annotate 'line', 735
    nqp_decontainerize $P5018, _lex_param_0
    find_lex $P5019, "$?CLASS"
    repr_get_attr_int $I5014, $P5018, $P5019, "$!pos"
    $P5020 = $P101."!cursor_pass"($I5014, "ww")
    set $P5021, $P5020
  if222_end664:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "wb" :subid("cuid_53_1349901726.63") :anon :lex :outer("cuid_66_1349901726.63")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 743
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P101, $P5001
.annotate 'line', 744
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
    unless $I5001 goto if229_end678 
    nqp_decontainerize $P5006, _lex_param_0
    find_lex $P5007, "$?CLASS"
    repr_get_attr_str $S5001, $P5006, $P5007, "$!target"
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_int $I5004, $P5008, $P5009, "$!pos"
    is_cclass $I5003, .CCLASS_WORD, $S5001, $I5004
    set $I5005, $I5003
  if229_end678:
    set $I5013, $I5005
    if $I5005 goto unless228_end676 
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
    unless $I5006 goto if230_end680 
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
  if230_end680:
    set $I5013, $I5012
  unless228_end676:
    set $I5020, $I5013
    if $I5013 goto unless227_end674 
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
  unless227_end674:
    box $P5030, $I5020
    set $P5029, $P5030
    unless $I5020 goto if226_end672 
.annotate 'line', 745
    nqp_decontainerize $P5026, _lex_param_0
    find_lex $P5027, "$?CLASS"
    repr_get_attr_int $I5021, $P5026, $P5027, "$!pos"
    $P5028 = $P101."!cursor_pass"($I5021, "wb")
    set $P5029, $P5028
  if226_end672:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "ident" :subid("cuid_54_1349901726.63") :anon :lex :outer("cuid_66_1349901726.63")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 754
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P101, $P5001
.annotate 'line', 755
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
    unless $I5001 goto if232_end684 
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
    if $I5004 goto unless233_end686 
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_str $S5003, $P5012, $P5013, "$!target"
    nqp_decontainerize $P5014, _lex_param_0
    find_lex $P5015, "$?CLASS"
    repr_get_attr_int $I5008, $P5014, $P5015, "$!pos"
    is_cclass $I5007, .CCLASS_ALPHABETIC, $S5003, $I5008
    set $I5009, $I5007
  unless233_end686:
    set $I5010, $I5009
  if232_end684:
    box $P5024, $I5010
    set $P5023, $P5024
    unless $I5010 goto if231_end682 
.annotate 'line', 756
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
  if231_end682:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "alpha" :subid("cuid_55_1349901726.63") :anon :lex :outer("cuid_66_1349901726.63")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 766
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P101, $P5001
.annotate 'line', 767
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
    unless $I5001 goto if235_end690 
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_str $S5002, $P5008, $P5009, "$!target"
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, .CCLASS_ALPHABETIC, $S5002, $I5005
    set $I5009, $I5004
    if $I5004 goto unless236_end692 
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
  unless236_end692:
    set $I5010, $I5009
  if235_end690:
    box $P5020, $I5010
    set $P5019, $P5020
    unless $I5010 goto if234_end688 
.annotate 'line', 768
    nqp_decontainerize $P5016, _lex_param_0
    find_lex $P5017, "$?CLASS"
    repr_get_attr_int $I5011, $P5016, $P5017, "$!pos"
    set $N5006, $I5011
    set $N5007, 1
    add $N5005, $N5006, $N5007
    $P5018 = $P101."!cursor_pass"($N5005, "alpha")
    set $P5019, $P5018
  if234_end688:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "alnum" :subid("cuid_56_1349901726.63") :anon :lex :outer("cuid_66_1349901726.63")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 775
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P101, $P5001
.annotate 'line', 776
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
    unless $I5001 goto if238_end696 
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_str $S5002, $P5008, $P5009, "$!target"
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, .CCLASS_ALPHANUMERIC, $S5002, $I5005
    set $I5009, $I5004
    if $I5004 goto unless239_end698 
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
  unless239_end698:
    set $I5010, $I5009
  if238_end696:
    box $P5020, $I5010
    set $P5019, $P5020
    unless $I5010 goto if237_end694 
.annotate 'line', 777
    nqp_decontainerize $P5016, _lex_param_0
    find_lex $P5017, "$?CLASS"
    repr_get_attr_int $I5011, $P5016, $P5017, "$!pos"
    set $N5006, $I5011
    set $N5007, 1
    add $N5005, $N5006, $N5007
    $P5018 = $P101."!cursor_pass"($N5005, "alnum")
    set $P5019, $P5018
  if237_end694:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "upper" :subid("cuid_57_1349901726.63") :anon :lex :outer("cuid_66_1349901726.63")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 784
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P101, $P5001
.annotate 'line', 785
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
    unless $I5001 goto if241_end702 
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_str $S5002, $P5008, $P5009, "$!target"
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, .CCLASS_UPPERCASE, $S5002, $I5005
    set $I5006, $I5004
  if241_end702:
    box $P5016, $I5006
    set $P5015, $P5016
    unless $I5006 goto if240_end700 
.annotate 'line', 786
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5007, $P5012, $P5013, "$!pos"
    set $N5004, $I5007
    set $N5005, 1
    add $N5003, $N5004, $N5005
    $P5014 = $P101."!cursor_pass"($N5003, "upper")
    set $P5015, $P5014
  if240_end700:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "lower" :subid("cuid_58_1349901726.63") :anon :lex :outer("cuid_66_1349901726.63")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 792
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P101, $P5001
.annotate 'line', 793
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
    unless $I5001 goto if243_end706 
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_str $S5002, $P5008, $P5009, "$!target"
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, .CCLASS_LOWERCASE, $S5002, $I5005
    set $I5006, $I5004
  if243_end706:
    box $P5016, $I5006
    set $P5015, $P5016
    unless $I5006 goto if242_end704 
.annotate 'line', 794
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5007, $P5012, $P5013, "$!pos"
    set $N5004, $I5007
    set $N5005, 1
    add $N5003, $N5004, $N5005
    $P5014 = $P101."!cursor_pass"($N5003, "lower")
    set $P5015, $P5014
  if242_end704:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "digit" :subid("cuid_59_1349901726.63") :anon :lex :outer("cuid_66_1349901726.63")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 800
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P101, $P5001
.annotate 'line', 801
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
    unless $I5001 goto if245_end710 
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_str $S5002, $P5008, $P5009, "$!target"
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, .CCLASS_NUMERIC, $S5002, $I5005
    set $I5006, $I5004
  if245_end710:
    box $P5016, $I5006
    set $P5015, $P5016
    unless $I5006 goto if244_end708 
.annotate 'line', 802
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5007, $P5012, $P5013, "$!pos"
    set $N5004, $I5007
    set $N5005, 1
    add $N5003, $N5004, $N5005
    $P5014 = $P101."!cursor_pass"($N5003, "digit")
    set $P5015, $P5014
  if244_end708:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "xdigit" :subid("cuid_60_1349901726.63") :anon :lex :outer("cuid_66_1349901726.63")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 808
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P101, $P5001
.annotate 'line', 809
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
    unless $I5001 goto if247_end714 
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_str $S5002, $P5008, $P5009, "$!target"
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, .CCLASS_HEXADECIMAL, $S5002, $I5005
    set $I5006, $I5004
  if247_end714:
    box $P5016, $I5006
    set $P5015, $P5016
    unless $I5006 goto if246_end712 
.annotate 'line', 810
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5007, $P5012, $P5013, "$!pos"
    set $N5004, $I5007
    set $N5005, 1
    add $N5003, $N5004, $N5005
    $P5014 = $P101."!cursor_pass"($N5003, "xdigit")
    set $P5015, $P5014
  if246_end712:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "space" :subid("cuid_61_1349901726.63") :anon :lex :outer("cuid_66_1349901726.63")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 816
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
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
    unless $I5001 goto if249_end718 
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_str $S5002, $P5008, $P5009, "$!target"
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, .CCLASS_WHITESPACE, $S5002, $I5005
    set $I5006, $I5004
  if249_end718:
    box $P5016, $I5006
    set $P5015, $P5016
    unless $I5006 goto if248_end716 
.annotate 'line', 818
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5007, $P5012, $P5013, "$!pos"
    set $N5004, $I5007
    set $N5005, 1
    add $N5003, $N5004, $N5005
    $P5014 = $P101."!cursor_pass"($N5003, "space")
    set $P5015, $P5014
  if248_end716:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "blank" :subid("cuid_62_1349901726.63") :anon :lex :outer("cuid_66_1349901726.63")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 824
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
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
    unless $I5001 goto if251_end722 
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_str $S5002, $P5008, $P5009, "$!target"
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, .CCLASS_BLANK, $S5002, $I5005
    set $I5006, $I5004
  if251_end722:
    box $P5016, $I5006
    set $P5015, $P5016
    unless $I5006 goto if250_end720 
.annotate 'line', 826
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5007, $P5012, $P5013, "$!pos"
    set $N5004, $I5007
    set $N5005, 1
    add $N5003, $N5004, $N5005
    $P5014 = $P101."!cursor_pass"($N5003, "blank")
    set $P5015, $P5014
  if250_end720:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "cntrl" :subid("cuid_63_1349901726.63") :anon :lex :outer("cuid_66_1349901726.63")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 832
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
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
    unless $I5001 goto if253_end726 
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_str $S5002, $P5008, $P5009, "$!target"
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, .CCLASS_CONTROL, $S5002, $I5005
    set $I5006, $I5004
  if253_end726:
    box $P5016, $I5006
    set $P5015, $P5016
    unless $I5006 goto if252_end724 
.annotate 'line', 834
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5007, $P5012, $P5013, "$!pos"
    set $N5004, $I5007
    set $N5005, 1
    add $N5003, $N5004, $N5005
    $P5014 = $P101."!cursor_pass"($N5003, "cntrl")
    set $P5015, $P5014
  if252_end724:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "punct" :subid("cuid_64_1349901726.63") :anon :lex :outer("cuid_66_1349901726.63")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 840
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
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
    unless $I5001 goto if255_end730 
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_str $S5002, $P5008, $P5009, "$!target"
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, .CCLASS_PUNCTUATION, $S5002, $I5005
    set $I5006, $I5004
  if255_end730:
    box $P5016, $I5006
    set $P5015, $P5016
    unless $I5006 goto if254_end728 
.annotate 'line', 842
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5007, $P5012, $P5013, "$!pos"
    set $N5004, $I5007
    set $N5005, 1
    add $N5003, $N5004, $N5005
    $P5014 = $P101."!cursor_pass"($N5003, "punct")
    set $P5015, $P5014
  if254_end728:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "FAILGOAL" :subid("cuid_65_1349901726.63") :anon :lex :outer("cuid_66_1349901726.63")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 848
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :optional 
    .param int haz_param_18 :opt_flag 
    if haz_param_18, default733
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set _lex_param_2, $P5005
  default733:
    .lex "self", _lex_param_0 
    .lex "$goal", _lex_param_1 
    .lex "$dba", _lex_param_2 
    set $P5003, _lex_param_2
    if _lex_param_2 goto unless256_end732 
.annotate 'line', 849

                $P5001 = getinterp
                $P5001 = $P5001['sub';1]
            
    set $S5001, $P5001
    box $P5002, $S5001
    set _lex_param_2, $P5002
    set $P5003, _lex_param_2
  unless256_end732:
    set $S5005, _lex_param_2
    concat $S5004, "Unable to parse expression in ", $S5005
    concat $S5003, $S5004, "; couldn't find final "
    set $S5006, _lex_param_1
    concat $S5002, $S5003, $S5006
    box $P5004, $S5002
    die $P5004
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_79_1349901726.63") :anon :lex :outer("cuid_1_1349901726.63")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 860
    .const 'Sub' $P5013 = 'cuid_67_1349901726.63' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_68_1349901726.63' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_69_1349901726.63' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_70_1349901726.63' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_71_1349901726.63' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_72_1349901726.63' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_73_1349901726.63' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_74_1349901726.63' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_75_1349901726.63' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_76_1349901726.63' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_77_1349901726.63' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_78_1349901726.63' 
    capture_lex $P5013 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_67_1349901726.63' 
    capture_lex $P5001
    .const 'Sub' $P5002 = 'cuid_68_1349901726.63' 
    capture_lex $P5002
    .const 'Sub' $P5003 = 'cuid_69_1349901726.63' 
    capture_lex $P5003
    .const 'Sub' $P5004 = 'cuid_70_1349901726.63' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_71_1349901726.63' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_72_1349901726.63' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_73_1349901726.63' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_74_1349901726.63' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_75_1349901726.63' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_76_1349901726.63' 
    capture_lex $P5010
    .const 'Sub' $P5011 = 'cuid_77_1349901726.63' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_78_1349901726.63' 
    capture_lex $P5012
    .return ($P5012) 
.end
.HLL "nqp"
.namespace []
.sub "from" :subid("cuid_67_1349901726.63") :anon :lex :outer("cuid_79_1349901726.63")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 867
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 69
    repr_get_attr_int $I5001, $P5001, $P5002, "$!from"
    .return ($I5001) 
.end
.HLL "nqp"
.namespace []
.sub "orig" :subid("cuid_68_1349901726.63") :anon :lex :outer("cuid_79_1349901726.63")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 868
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 69
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!orig"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "to" :subid("cuid_69_1349901726.63") :anon :lex :outer("cuid_79_1349901726.63")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 869
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 69
    repr_get_attr_int $I5001, $P5001, $P5002, "$!to"
    .return ($I5001) 
.end
.HLL "nqp"
.namespace []
.sub "CURSOR" :subid("cuid_70_1349901726.63") :anon :lex :outer("cuid_79_1349901726.63")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 870
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 69
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!cursor"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "Str" :subid("cuid_71_1349901726.63") :anon :lex :outer("cuid_79_1349901726.63")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 871
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 69
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!orig"
    set $S5002, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 69
    repr_get_attr_int $I5001, $P5004, $P5005, "$!from"
    nqp_decontainerize $P5006, _lex_param_0
    nqp_get_sc_object $P5007, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 69
    repr_get_attr_int $I5002, $P5006, $P5007, "$!to"
    set $N5002, $I5002
    nqp_decontainerize $P5008, _lex_param_0
    nqp_get_sc_object $P5009, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 69
    repr_get_attr_int $I5003, $P5008, $P5009, "$!from"
    set $N5003, $I5003
    sub $N5001, $N5002, $N5003
    set $I5004, $N5001
    substr $S5001, $S5002, $I5001, $I5004
    .return ($S5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_72_1349901726.63") :anon :lex :outer("cuid_79_1349901726.63")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 872
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    $P5002 = $P5001."Str"()
    set $N5001, $P5002
    .return ($N5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_73_1349901726.63") :anon :lex :outer("cuid_79_1349901726.63")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 873
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    $P5002 = $P5001."Str"()
    set $N5001, $P5002
    .return ($N5001) 
.end
.HLL "nqp"
.namespace []
.sub "Bool" :subid("cuid_74_1349901726.63") :anon :lex :outer("cuid_79_1349901726.63")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 874
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 69
    repr_get_attr_int $I5002, $P5001, $P5002, "$!to"
    set $N5001, $I5002
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 69
    repr_get_attr_int $I5003, $P5003, $P5004, "$!from"
    set $N5002, $I5003
    isge $I5001, $N5001, $N5002
    .return ($I5001) 
.end
.HLL "nqp"
.namespace []
.sub "chars" :subid("cuid_75_1349901726.63") :anon :lex :outer("cuid_79_1349901726.63")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 875
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 69
    repr_get_attr_int $I5002, $P5001, $P5002, "$!to"
    set $N5001, $I5002
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 69
    repr_get_attr_int $I5003, $P5003, $P5004, "$!from"
    set $N5002, $I5003
    isge $I5001, $N5001, $N5002
    unless $I5001 goto if257_else734 
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 69
    repr_get_attr_int $I5004, $P5005, $P5006, "$!to"
    set $N5004, $I5004
    nqp_decontainerize $P5007, _lex_param_0
    nqp_get_sc_object $P5008, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 69
    repr_get_attr_int $I5005, $P5007, $P5008, "$!from"
    set $N5005, $I5005
    sub $N5003, $N5004, $N5005
    box $P5010, $N5003
    set $P5009, $P5010
    goto if257_end735
  if257_else734:
    box $P5011, 0
    set $P5009, $P5011
  if257_end735:
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "!make" :subid("cuid_76_1349901726.63") :anon :lex :outer("cuid_79_1349901726.63")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 877
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$ast", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 69
    repr_bind_attr_obj $P5001, $P5002, "$!ast", _lex_param_1
    .return (_lex_param_1) 
.end
.HLL "nqp"
.namespace []
.sub "ast" :subid("cuid_77_1349901726.63") :anon :lex :outer("cuid_79_1349901726.63")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 878
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 69
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!ast"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "!dump_str" :subid("cuid_78_1349901726.63") :anon :lex :outer("cuid_79_1349901726.63")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 880
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5019 = 'cuid_123_1349901726.63' 
    capture_lex $P5019 
    .const 'Sub' $P5019 = 'cuid_124_1349901726.63' 
    capture_lex $P5019 
    .lex "&dump_array", $P101 
    .lex "$str", $P102 
    .lex "self", _lex_param_0 
    .lex "$key", _lex_param_1 
    .const 'Sub' $P5001 = 'cuid_123_1349901726.63' 
    capture_lex $P5001
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P102, $P5002
    set $S5006, _lex_param_1
    concat $S5005, $S5006, ": "
.annotate 'line', 892
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
.annotate 'line', 893
    nqp_decontainerize $P5008, _lex_param_0
    $P5009 = $P5008."list"()
    $P5010 = "&dump_array"(_lex_param_1, $P5009)
    set $S5012, $P5010
    concat $S5010, $S5011, $S5012
    box $P5011, $S5010
    set $P102, $P5011
.annotate 'line', 894
    nqp_decontainerize $P5015, _lex_param_0
    $P5016 = $P5015."hash"()
    set $P5012, $P5016
    iter $P5014, $P5016
  for_next743:
    unless $P5014, for_done745
    shift $P5018, $P5014
  for_redo744:
    .const 'Sub' $P5017 = 'cuid_124_1349901726.63' 
    capture_lex $P5017
    $P5012 = $P5017($P5018)
    goto for_next743
  for_done745:
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "dump_array" :subid("cuid_123_1349901726.63") :anon :lex :outer("cuid_78_1349901726.63")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 881
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5013 = 'cuid_122_1349901726.63' 
    capture_lex $P5013 
    .lex "$str", $P101 
    .lex "$key", _lex_param_0 
    .lex "$item", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P101, $P5001
    box $P5002, ""
    set $P101, $P5002
.annotate 'line', 883
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 28
    $P5004 = $P5003."ACCEPTS"(_lex_param_1)
    unless $P5004 goto if258_else736 
    set $S5002, $P101
.annotate 'line', 884
    $P5005 = _lex_param_1."!dump_str"(_lex_param_0)
    set $S5003, $P5005
    concat $S5001, $S5002, $S5003
    box $P5006, $S5001
    set $P101, $P5006
    set $P5012, $P101
    goto if258_end737
  if258_else736:
    isnull $I5002, _lex_param_1
    box $P5007, $I5002
    isfalse $I5001, $P5007
    box $P5011, $I5001
    set $P5010, $P5011
    unless $I5001 goto if259_end739 
    .const 'Sub' $P5008 = 'cuid_122_1349901726.63' 
    capture_lex $P5008
    $P5009 = $P5008()
    set $P5010, $P5009
  if259_end739:
    set $P5012, $P5010
  if258_end737:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_122_1349901726.63") :anon :lex :outer("cuid_123_1349901726.63")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 886
    .const 'Sub' $P5009 = 'cuid_121_1349901726.63' 
    capture_lex $P5009 
    .lex "$n", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P101, $P5001
    box $P5002, 0
    set $P101, $P5002
    find_lex $P5006, "$item"
    set $P5003, $P5006
    iter $P5005, $P5006
  for_next740:
    unless $P5005, for_done742
    shift $P5008, $P5005
  for_redo741:
    .const 'Sub' $P5007 = 'cuid_121_1349901726.63' 
    capture_lex $P5007
    $P5003 = $P5007($P5008)
    goto for_next740
  for_done742:
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_121_1349901726.63") :anon :lex :outer("cuid_122_1349901726.63")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 888
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
.sub "" :subid("cuid_124_1349901726.63") :anon :lex :outer("cuid_78_1349901726.63")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 894
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
.sub "" :subid("cuid_85_1349901726.63") :anon :lex :outer("cuid_1_1349901726.63")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 899
    .const 'Sub' $P5010 = 'cuid_80_1349901726.63' 
    capture_lex $P5010 
    .const 'Sub' $P5010 = 'cuid_81_1349901726.63' 
    capture_lex $P5010 
    .const 'Sub' $P5010 = 'cuid_82_1349901726.63' 
    capture_lex $P5010 
    .const 'Sub' $P5010 = 'cuid_83_1349901726.63' 
    capture_lex $P5010 
    .const 'Sub' $P5010 = 'cuid_84_1349901726.63' 
    capture_lex $P5010 
    .lex "$EMPTY_MATCH_LIST", $P101 
    .lex "$EMPTY_MATCH_HASH", $P102 
    .lex "$?PACKAGE", $P103 
    .lex "$?CLASS", $P104 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P102, $P5002
    new $P5003, 'ResizablePMCArray'
    set $P101, $P5003
    new $P5004, 'Hash'
    set $P102, $P5004
    .const 'Sub' $P5005 = 'cuid_80_1349901726.63' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_81_1349901726.63' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_82_1349901726.63' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_83_1349901726.63' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_84_1349901726.63' 
    capture_lex $P5009
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "MATCH" :subid("cuid_80_1349901726.63") :anon :lex :outer("cuid_85_1349901726.63")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 902
    .param pmc _lex_param_0 
    .const 'Sub' $P5010 = 'cuid_125_1349901726.63' 
    capture_lex $P5010 
    .lex "$match", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P101, $P5001
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 82
    getattribute $P5002, $P5003, $P5004, "$!match"
    set $P101, $P5002
    nqp_get_sc_object $P5005, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 69
    type_check $I5001, $P101, $P5005
    set $I5003, $I5001
    if $I5001 goto unless261_end749 
    nqp_ishash $I5002, $P101
    set $I5003, $I5002
  unless261_end749:
    box $P5009, $I5003
    set $P5008, $P5009
    if $I5003 goto unless260_end747 
    .const 'Sub' $P5006 = 'cuid_125_1349901726.63' 
    capture_lex $P5006
    $P5007 = $P5006()
    set $P5008, $P5007
  unless260_end747:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_125_1349901726.63") :anon :lex :outer("cuid_80_1349901726.63")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 904
    .lex "$list", $P101 
    .lex "$hash", $P102 
    .lex "%ch", $P103 
    .lex "$key", $S101 
    .lex "$iter", $P104 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P102, $P5002
    new $P5003, 'Hash'
    set $P103, $P5003
    set $S101, ""
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P104, $P5004
    find_lex $P5005, "$EMPTY_MATCH_LIST"
    set $P101, $P5005
    find_lex $P5006, "$EMPTY_MATCH_HASH"
    set $P102, $P5006
    nqp_get_sc_object $P5008, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 69
    repr_instance_of $P5007, $P5008
    store_lex "$match", $P5007
    find_lex $P5010, "self"
    nqp_decontainerize $P5009, $P5010
    nqp_get_sc_object $P5011, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 82
    find_lex $P5012, "$match"
    setattribute $P5009, $P5011, "$!match", $P5012
    find_lex $P5013, "$match"
    nqp_get_sc_object $P5014, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 69
    find_lex $P5016, "self"
    nqp_decontainerize $P5015, $P5016
    setattribute $P5013, $P5014, "$!cursor", $P5015
    find_lex $P5017, "$match"
    nqp_get_sc_object $P5018, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 69
    find_lex $P5021, "self"
    nqp_decontainerize $P5020, $P5021
    nqp_get_sc_object $P5022, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 82
    getattribute $P5019, $P5020, $P5022, "$!orig"
    setattribute $P5017, $P5018, "$!orig", $P5019
    find_lex $P5023, "$match"
    nqp_get_sc_object $P5024, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 69
    find_lex $P5026, "self"
    nqp_decontainerize $P5025, $P5026
    nqp_get_sc_object $P5027, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 82
    repr_get_attr_int $I5001, $P5025, $P5027, "$!from"
    repr_bind_attr_int $P5023, $P5024, "$!from", $I5001
    find_lex $P5028, "$match"
    nqp_get_sc_object $P5029, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 69
    find_lex $P5031, "self"
    nqp_decontainerize $P5030, $P5031
    nqp_get_sc_object $P5032, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 82
    repr_get_attr_int $I5002, $P5030, $P5032, "$!pos"
    repr_bind_attr_int $P5028, $P5029, "$!to", $I5002
.annotate 'line', 913
    find_lex $P5034, "self"
    nqp_decontainerize $P5033, $P5034
    $P5035 = $P5033."CAPHASH"()
    set $P103, $P5035
    iter $P5036, $P103
    set $P104, $P5036
  while262_test750:
    set $P5054, $P104
    unless $P104 goto while262_done754 
  while262_redo752:
.annotate 'line', 916
    shift $P5037, $P104
    set $S5001, $P5037
    set $S101, $S5001
    iseq $I5003, $S101, "$!from"
    set $I5005, $I5003
    if $I5003 goto unless264_end758 
    iseq $I5004, $S101, "$!to"
    set $I5005, $I5004
  unless264_end758:
    unless $I5005 goto if263_else755 
.annotate 'line', 918
    find_lex $P5038, "$match"
    nqp_get_sc_object $P5039, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 69
.annotate 'line', 919
    set $P5040, $P103[$S101]
    unless_null $P5040, fallback759
    nqp_get_sc_object $P5041, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5040, $P5041
  fallback759:
    $P5042 = $P5040."from"()
    set $I5006, $P5042
    repr_bind_attr_int $P5038, $P5039, $S101, $I5006
    box $P5053, $I5006
    set $P5052, $P5053
    goto if263_end756
  if263_else755:
    is_cclass $I5007, .CCLASS_NUMERIC, $S101, 0
    unless $I5007 goto if265_else760 
.annotate 'line', 921
    set $P5044, $P101
    if $P101 goto unless266_end763 
    new $P5043, 'ResizablePMCArray'
    set $P101, $P5043
    set $P5044, $P101
  unless266_end763:
    set $I5008, $S101
    set $P5045, $P103[$S101]
    unless_null $P5045, fallback764
    nqp_get_sc_object $P5046, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5045, $P5046
  fallback764:
    set $P101[$I5008], $P5045
    set $P5051, $P5045
    goto if265_end761
  if265_else760:
.annotate 'line', 925
    set $P5048, $P102
    if $P102 goto unless267_end766 
    new $P5047, 'Hash'
    set $P102, $P5047
    set $P5048, $P102
  unless267_end766:
    set $P5049, $P103[$S101]
    unless_null $P5049, fallback767
    nqp_get_sc_object $P5050, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P5049, $P5050
  fallback767:
    set $P102[$S101], $P5049
    set $P5051, $P5049
  if265_end761:
    set $P5052, $P5051
  if263_end756:
    set $P5054, $P5052
    goto while262_test750 
  while262_done754:
    find_lex $P5055, "$match"
    nqp_get_sc_object $P5056, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 28
    setattribute $P5055, $P5056, "@!array", $P101
    find_lex $P5057, "$match"
    nqp_get_sc_object $P5058, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 28
    setattribute $P5057, $P5058, "%!hash", $P102
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "Bool" :subid("cuid_81_1349901726.63") :anon :lex :outer("cuid_85_1349901726.63")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 936
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5002, _lex_param_0
    find_lex $P5003, "$?CLASS"
    getattribute $P5001, $P5002, $P5003, "$!match"
    isnull $I5002, $P5001
    box $P5004, $I5002
    isfalse $I5001, $P5004
    set $I5004, $I5001
    unless $I5001 goto if268_end769 
    nqp_decontainerize $P5006, _lex_param_0
    find_lex $P5007, "$?CLASS"
    getattribute $P5005, $P5006, $P5007, "$!match"
    istrue $I5003, $P5005
    set $I5004, $I5003
  if268_end769:
    .return ($I5004) 
.end
.HLL "nqp"
.namespace []
.sub "parse" :subid("cuid_82_1349901726.63") :anon :lex :outer("cuid_85_1349901726.63")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 941
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :named("rule") :optional 
    .param int haz_param_19 :opt_flag 
    .param pmc _lex_param_3 :named("actions") :optional 
    .param int haz_param_20 :opt_flag 
    .param pmc _lex_param_4 :slurpy :named 
    if haz_param_19, default772
    box $P5011, "TOP"
    set _lex_param_2, $P5011
  default772:
    if haz_param_20, default773
    nqp_get_sc_object $P5012, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set _lex_param_3, $P5012
  default773:
    .lex "$*ACTIONS", $P101 
    .lex "$cur", $P102 
    .lex "self", _lex_param_0 
    .lex "$target", _lex_param_1 
    .lex "$rule", _lex_param_2 
    .lex "$actions", _lex_param_3 
    .lex "%options", _lex_param_4 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P102, $P5002
    set $P101, _lex_param_3
.annotate 'line', 943
    nqp_decontainerize $P5003, _lex_param_0
    $P5004 = $P5003."!cursor_init"(_lex_param_1, _lex_param_4 :flat :named)
    set $P102, $P5004
    is_invokable $I5001, _lex_param_2
    unless $I5001 goto if269_else770 
.annotate 'line', 945
    $P5005 = _lex_param_2($P102)
    $P5006 = $P5005."MATCH"()
    set $P5010, $P5006
    goto if269_end771
  if269_else770:
.annotate 'line', 946
    set $S5001, _lex_param_2
    find_method $P5007, $P102, $S5001
    $P5008 = $P5007($P102)
    $P5009 = $P5008."MATCH"()
    set $P5010, $P5009
  if269_end771:
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "!INTERPOLATE" :subid("cuid_83_1349901726.63") :anon :lex :outer("cuid_85_1349901726.63")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 949
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5006 = 'cuid_130_1349901726.63' 
    capture_lex $P5006 
    .const 'Sub' $P5006 = 'cuid_131_1349901726.63' 
    capture_lex $P5006 
    .lex "self", _lex_param_0 
    .lex "$var", _lex_param_1 
    root_new $P101, ['parrot';'Continuation']
    set_label $P101, lexotic_774
    .lex "RETURN", $P101
    nqp_islist $I5001, _lex_param_1
    unless $I5001 goto if270_else776 
    .const 'Sub' $P5001 = 'cuid_130_1349901726.63' 
    capture_lex $P5001
    $P5002 = $P5001()
    set $P5005, $P5002
    goto if270_end777
  if270_else776:
    .const 'Sub' $P5003 = 'cuid_131_1349901726.63' 
    capture_lex $P5003
    $P5004 = $P5003()
    set $P5005, $P5004
  if270_end777:
    goto lexotic_775
  lexotic_774:
    .get_results ($P5005)
  lexotic_775:
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_130_1349901726.63") :anon :lex :outer("cuid_83_1349901726.63")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 950
    .const 'Sub' $P5018 = 'cuid_128_1349901726.63' 
    capture_lex $P5018 
    .lex "$maxlen", $I101 
    .lex "$cur", $P101 
    .lex "$pos", $I102 
    .lex "$tgt", $S101 
    .lex "$eos", $I103 
    set $I101, 0
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P101, $P5001
    set $I102, 0
    set $S101, ""
    set $I103, 0
    set $I101, -1
.annotate 'line', 952
    find_lex $P5003, "self"
    nqp_decontainerize $P5002, $P5003
    $P5004 = $P5002."!cursor_start"()
    set $P101, $P5004
    find_lex $P5005, "$?CLASS"
    repr_get_attr_int $I5001, $P101, $P5005, "$!from"
    set $I102, $I5001
.annotate 'line', 954
    $P5006 = $P101."target"()
    set $S5001, $P5006
    set $S101, $S5001
    length $I5002, $S101
    set $I103, $I5002
    find_lex $P5010, "$var"
    set $P5007, $P5010
    iter $P5009, $P5010
  for_next790:
    unless $P5009, for_done792
    shift $P5012, $P5009
  for_redo791:
    .const 'Sub' $P5011 = 'cuid_128_1349901726.63' 
    capture_lex $P5011
    $P5007 = $P5011($P5012)
    goto for_next790
  for_done792:
    set $N5001, $I101
    set $N5002, 0
    isge $I5003, $N5001, $N5002
    box $P5015, $I5003
    set $P5014, $P5015
    unless $I5003 goto if277_end794 
.annotate 'line', 971
    set $N5004, $I102
    set $N5005, $I101
    add $N5003, $N5004, $N5005
    $P5013 = $P101."!cursor_pass"($N5003, "")
    set $P5014, $P5013
  if277_end794:
    find_lex $P5016, "RETURN"
    $P5017 = $P5016($P101)
    .return ($P5017) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_128_1349901726.63") :anon :lex :outer("cuid_130_1349901726.63")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 956
    .param pmc _lex_param_0 
    .const 'Sub' $P5006 = 'cuid_127_1349901726.63' 
    capture_lex $P5006 
    .const 'Sub' $P5006 = 'cuid_129_1349901726.63' 
    capture_lex $P5006 
    .lex "$_", _lex_param_0 
    is_invokable $I5001, _lex_param_0
    unless $I5001 goto if271_else778 
    .const 'Sub' $P5001 = 'cuid_127_1349901726.63' 
    capture_lex $P5001
    $P5002 = $P5001()
    set $P5005, $P5002
    goto if271_end779
  if271_else778:
    .const 'Sub' $P5003 = 'cuid_129_1349901726.63' 
    capture_lex $P5003
    $P5004 = $P5003()
    set $P5005, $P5004
  if271_end779:
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_127_1349901726.63") :anon :lex :outer("cuid_128_1349901726.63")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 957
    .const 'Sub' $P5009 = 'cuid_126_1349901726.63' 
    capture_lex $P5009 
    .lex "$res", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P101, $P5001
.annotate 'line', 958
    find_lex $P5004, "self"
    nqp_decontainerize $P5003, $P5004
    find_lex $P5002, "$_"
    $P5005 = $P5002($P5003)
    set $P101, $P5005
    set $P5008, $P101
    unless $P101 goto if272_end781 
    .const 'Sub' $P5006 = 'cuid_126_1349901726.63' 
    capture_lex $P5006
    $P5007 = $P5006()
    set $P5008, $P5007
  if272_end781:
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_126_1349901726.63") :anon :lex :outer("cuid_127_1349901726.63")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 959
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
    unless $I5004 goto if273_end783 
    store_lex "$maxlen", $I101
    set $I5006, $I101
  if273_end783:
    .return ($I5006) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_129_1349901726.63") :anon :lex :outer("cuid_128_1349901726.63")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 965
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
    unless $I5002 goto if276_end789 
    find_lex $I5005, "$pos"
    set $N5004, $I5005
    set $N5005, $I101
    add $N5003, $N5004, $N5005
    find_lex $I5006, "$eos"
    set $N5006, $I5006
    isle $I5004, $N5003, $N5006
    set $I5007, $I5004
  if276_end789:
    set $I5010, $I5007
    unless $I5007 goto if275_end787 
    find_lex $S5003, "$tgt"
    find_lex $I5009, "$pos"
    substr $S5002, $S5003, $I5009, $I101
    find_lex $P5002, "$_"
    set $S5004, $P5002
    iseq $I5008, $S5002, $S5004
    set $I5010, $I5008
  if275_end787:
    set $I5011, $I5010
    unless $I5010 goto if274_end785 
    store_lex "$maxlen", $I101
    set $I5011, $I101
  if274_end785:
    .return ($I5011) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_131_1349901726.63") :anon :lex :outer("cuid_83_1349901726.63")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 974
    .lex "$cur", $P101 
    .lex "$pos", $I101 
    .lex "$tgt", $S101 
    .lex "$len", $I102 
    .lex "$adv", $I103 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P101, $P5001
    set $I101, 0
    set $S101, ""
    set $I102, 0
    set $I103, 0
    find_lex $P5002, "$var"
    is_invokable $I5001, $P5002
    box $P5010, $I5001
    set $P5009, $P5010
    unless $I5001 goto if278_end796 
.annotate 'line', 975
    find_lex $P5006, "self"
    nqp_decontainerize $P5005, $P5006
    find_lex $P5004, "$var"
    $P5007 = $P5004($P5005)
    find_lex $P5003, "RETURN"
    $P5008 = $P5003($P5007)
    set $P5009, $P5008
  if278_end796:
.annotate 'line', 976
    find_lex $P5012, "self"
    nqp_decontainerize $P5011, $P5012
    $P5013 = $P5011."!cursor_start"()
    set $P101, $P5013
    find_lex $P5014, "$?CLASS"
    repr_get_attr_int $I5002, $P101, $P5014, "$!from"
    set $I101, $I5002
.annotate 'line', 978
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
    if $I5005 goto unless280_end800 
    substr $S5003, $S101, $I101, $I102
    find_lex $P5017, "$var"
    set $S5004, $P5017
    isne $I5007, $S5003, $S5004
    set $I5008, $I5007
  unless280_end800:
    box $P5021, $I5008
    set $P5020, $P5021
    unless $I5008 goto if279_end798 
    find_lex $P5018, "RETURN"
    $P5019 = $P5018($P101)
    set $P5020, $P5019
  if279_end798:
.annotate 'line', 983
    $P5022 = $P101."!cursor_pass"($I103, "")
    find_lex $P5023, "RETURN"
    $P5024 = $P5023($P101)
    .return ($P5024) 
.end
.HLL "nqp"
.namespace []
.sub "!INTERPOLATE_REGEX" :subid("cuid_84_1349901726.63") :anon :lex :outer("cuid_85_1349901726.63")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 988
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5009 = 'cuid_134_1349901726.63' 
    capture_lex $P5009 
    .lex "self", _lex_param_0 
    .lex "$var", _lex_param_1 
    root_new $P101, ['parrot';'Continuation']
    set_label $P101, lexotic_801
    .lex "RETURN", $P101
    is_invokable $I5001, _lex_param_1
    box $P5004, $I5001
    set $P5003, $P5004
    if $I5001 goto unless281_end804 
    .const 'Sub' $P5001 = 'cuid_134_1349901726.63' 
    capture_lex $P5001
    $P5002 = $P5001()
    set $P5003, $P5002
  unless281_end804:
.annotate 'line', 1004
    nqp_decontainerize $P5006, _lex_param_0
    $P5007 = $P5006."!INTERPOLATE"(_lex_param_1)
    find_lex $P5005, "RETURN"
    $P5008 = $P5005($P5007)
    goto lexotic_802
  lexotic_801:
    .get_results ($P5008)
  lexotic_802:
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_134_1349901726.63") :anon :lex :outer("cuid_84_1349901726.63")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 989
    .const 'Sub' $P5009 = 'cuid_133_1349901726.63' 
    capture_lex $P5009 
    .lex "$rxcompiler", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P101, $P5001
    compreg $P5002, "QRegex::P6Regex"
    set $P101, $P5002
    find_lex $P5003, "$var"
    nqp_islist $I5001, $P5003
    unless $I5001 goto if282_else805 
    .const 'Sub' $P5004 = 'cuid_133_1349901726.63' 
    capture_lex $P5004
    $P5005 = $P5004()
    set $P5008, $P5005
    goto if282_end806
  if282_else805:
.annotate 'line', 1000
.annotate 'line', 1001
    find_lex $P5006, "$var"
    $P5007 = $P101."compile"($P5006)
    store_lex "$var", $P5007
    set $P5008, $P5007
  if282_end806:
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_133_1349901726.63") :anon :lex :outer("cuid_134_1349901726.63")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 991
    .const 'Sub' $P5009 = 'cuid_132_1349901726.63' 
    capture_lex $P5009 
    .lex "$res", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P101, $P5001
    new $P5002, 'ResizablePMCArray'
    set $P101, $P5002
    find_lex $P5006, "$var"
    set $P5003, $P5006
    iter $P5005, $P5006
  for_next809:
    unless $P5005, for_done811
    shift $P5008, $P5005
  for_redo810:
    .const 'Sub' $P5007 = 'cuid_132_1349901726.63' 
    capture_lex $P5007
    $P5003 = $P5007($P5008)
    goto for_next809
  for_done811:
    store_lex "$var", $P101
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_132_1349901726.63") :anon :lex :outer("cuid_133_1349901726.63")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 993
    .param pmc _lex_param_0 
    .lex "$elem", $P101 
    .lex "$_", _lex_param_0 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999", 7
    set $P101, $P5001
    set $P101, _lex_param_0
    is_invokable $I5001, $P101
    box $P5005, $I5001
    set $P5004, $P5005
    if $I5001 goto unless283_end808 
.annotate 'line', 995
    find_lex $P5002, "$rxcompiler"
    $P5003 = $P5002."compile"($P101)
    set $P101, $P5003
    set $P5004, $P101
  unless283_end808:
    find_lex $P5006, "$res"
    push $P5006, $P101
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_99_1349901726.63") :anon :lex :outer("cuid_1_1349901726.63")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1008
    .const 'Sub' $P5004 = 'cuid_96_1349901726.63' 
    capture_lex $P5004 
    .const 'Sub' $P5004 = 'cuid_97_1349901726.63' 
    capture_lex $P5004 
    .const 'Sub' $P5004 = 'cuid_98_1349901726.63' 
    capture_lex $P5004 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_96_1349901726.63' 
    capture_lex $P5001
    .const 'Sub' $P5002 = 'cuid_97_1349901726.63' 
    capture_lex $P5002
    .const 'Sub' $P5003 = 'cuid_98_1349901726.63' 
    capture_lex $P5003
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "new" :subid("cuid_96_1349901726.63") :anon :lex :outer("cuid_99_1349901726.63")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1010
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$code", _lex_param_1 
.annotate 'line', 1011
    nqp_decontainerize $P5001, _lex_param_0
    $P5002 = $P5001."bless"(_lex_param_1 :named("code"))
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "ACCEPTS" :subid("cuid_97_1349901726.63") :anon :lex :outer("cuid_99_1349901726.63")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1013
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$target", _lex_param_1 
.annotate 'line', 1014
    nqp_get_sc_object $P5001, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 82
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5001."parse"(_lex_param_1, $P5002 :named("rule"))
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "Str" :subid("cuid_98_1349901726.63") :anon :lex :outer("cuid_99_1349901726.63")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1016
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 88
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!code"
    set $S5001, $P5003
    .return ($S5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_101_1349901726.63") :anon :lex :outer("cuid_1_1349901726.63")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1021
    .const 'Sub' $P5002 = 'cuid_100_1349901726.63' 
    capture_lex $P5002 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_100_1349901726.63' 
    capture_lex $P5001
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "ACCEPTS" :subid("cuid_100_1349901726.63") :anon :lex :outer("cuid_101_1349901726.63")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1022
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$target", _lex_param_1 
.annotate 'line', 1023
    nqp_get_sc_object $P5001, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 82
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5001."parse"(_lex_param_1, $P5002 :named("rule"), 0 :named("c"))
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_136_1349901726.63") :load :init
.annotate 'file', "src\\stage2\\QRegex.nqp"
    .const 'Sub' $P5001 = 'cuid_135_1349901726.63' 
    capture_lex $P5001 
    .local pmc cur_sc 
    nqp_dynop_setup 
    nqp_bigint_setup 
    getinterp $P5001
    get_class $P5002, "LexPad"
    get_class $P5003, "NQPLexPad"
    $P5004 = $P5001."hll_map"($P5002, $P5003)
    load_bytecode "ModuleLoader.pbc"
    .const 'Sub' $P5001 = "cuid_1_1349901726.63" 
    get_hll_global $P5002, "ModuleLoader"
    $P5003 = $P5002."load_setting"("NQPCORE")
    $P5004 = $P5001."set_outer_ctx"($P5003)
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P5001, "ModuleLoader"
    $P5002 = $P5001."load_module"("QASTNode")
    nqp_create_sc $P5001, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644"
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
    push $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1349901723.999"
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
    push $P5003, "569A1B419F724EEF275BC7729D702142D988A435-1349901720.709"
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
    push $P5003, "5999FA70DED24A5080F4680C3CF5A9B13CAD7450-1349901725.026"
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
    .const 'Sub' $P5004 = 'cuid_135_1349901726.63' 
    capture_lex $P5004
    $P5005 = $P5004()
    nqp_deserialize_sc "AQAAAEAAAAAEAAAAYAAAAAwAAADAAAAAThQAAKcAAAC+HgAAWEAAACgAAAAYRAAAAQAAAChEAABgRAAAAAAAAAsAAAAMAAAAeAAAAAAAAAB7AAAAfAAAAIsAAACMAAAAAQAAAAAAAAABAAAA/AAAAAEAAACkAQAAAQAAAEwCAAAwAAAAJgUAAAEAAABmBQAAAQAAAHQIAAABAAAAug0AAAEAAABODwAAAQAAAPgQAAABAAAAuBIAADAAAABSEwAAAAAAAF4AAAAAAAAAAAAAAAoABwAAAAIAAAACAAAAAABfAAAAAwAAAAIAAAAAAGAAAAAEAAAAAgAAAAAAGwAAAAUAAAACAAAAAABFAAAABgAAAAIAAAAAAFIAAAAHAAAAAgAAAAAAWAAAAAgAAAACAAAAAABcAAAACgAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAAAAAAAAMAAAAAAGEAAAAAAAAAAQAAAAoAAQAAAAkAAAACAAAAAAACAAAACgAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAAEAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAAAQAAAAMAAAAAAGIAAAAAAAAAAgAAAAoAAQAAAAQAAAACAAAAAAAbAAAACgAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAAIAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAAAgAAAAMAAAAAAGMAAAAAAAAAAwAAAAoAAAAAAAoAIgAAAAoAAAACAAEAAAAIAAAADQAAAAIAAQAAAAkAAAAOAAAAAgABAAAACgAAAA8AAAACAAAAAAAEAAAAEAAAAAIAAQAAAAwAAAARAAAAAgABAAAADwAAABIAAAACAAEAAAARAAAAEwAAAAIAAQAAABMAAAAUAAAAAgABAAAAFQAAABUAAAACAAEAAAAXAAAAFgAAAAIAAQAAABgAAAAXAAAAAgABAAAAGgAAABgAAAACAAAAAAAaAAAAGQAAAAIAAAAAAAUAAAAaAAAAAgAAAAAABgAAABsAAAACAAAAAAAHAAAAHAAAAAIAAAAAAAgAAAAdAAAAAgAAAAAACQAAAB4AAAACAAAAAAAKAAAAHwAAAAIAAAAAAAsAAAAgAAAAAgAAAAAADAAAACEAAAACAAAAAAANAAAAIgAAAAIAAAAAAA4AAAAjAAAAAgAAAAAADwAAACQAAAACAAAAAAAQAAAAJQAAAAIAAAAAABEAAAAmAAAAAgAAAAAAEgAAACcAAAACAAAAAAATAAAAKAAAAAIAAAAAABQAAAApAAAAAgAAAAAAFQAAACoAAAACAAAAAAAWAAAAKwAAAAIAAAAAABcAAAAsAAAAAgAAAAAAGAAAAC0AAAACAAAAAAAZAAAAAAAAAAAAAAACAAAAAAAAAAIAAAAAAAMAAAACAAEAAAAHAAAABAAAAAAAAAABAAAAAAAAAAUAAAAAAAAAAwAAAAAAAAAAAAIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAEAAAAHAAAAAgABAAAABwAAAP///////////////////////////////wAAAAAAAAAAAgAAAAAAAAACAAEAAAAHAAAAAwACAAAAAAADAAAACgACAAAALgAAAAQAAAAAAAAAAAAvAAAABAABAAAAAAAAAAAAAABkAAAAAAAAABsAAAAKAAAAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAZQAAAAAAAABFAAAACgAAAAAACgAZAAAACgAAAAIAAQAAAAgAAAANAAAAAgABAAAACQAAAA4AAAACAAEAAAAKAAAADwAAAAIAAQAAAB0AAAAQAAAAAgAAAAAASgAAABEAAAACAAEAAAAPAAAAEgAAAAIAAQAAABEAAAATAAAAAgABAAAAEwAAABQAAAACAAEAAAAVAAAAFQAAAAIAAQAAABcAAAAWAAAAAgABAAAAGAAAABcAAAACAAEAAAAaAAAAGAAAAAIAAQAAABsAAAAxAAAAAgABAAAAHgAAADIAAAACAAEAAAAfAAAAMwAAAAIAAQAAACAAAAA0AAAAAgAAAAAARgAAADUAAAACAAAAAABHAAAANgAAAAIAAAAAAEgAAAA3AAAAAgAAAAAASQAAADgAAAACAAAAAABNAAAAOQAAAAIAAAAAAE4AAAA6AAAAAgAAAAAATwAAADsAAAACAAAAAABQAAAAPAAAAAIAAAAAAFEAAAAAAAAAAAAAAAMAAAAAAAAAAgAAAAAARQAAAAIAAQAAABwAAAACAAEAAAAHAAAABAAAAAAAAAABAAAAAAAAAAAAAAAAAAAAAgAAAAAATQAAAAAAAAAAAAAABwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAEAAAACAAAAAQAAAAAAAAABAAAAAgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAQABAAIAAQAAAAcAAAABAAEAAgABAAAABwAAAAIAAQAAAAcAAAD///////////////////////////////8AAAAAAAAAAAMAAAAAAAAAAgABAAAABwAAAAMAAgABAAAAHAAAAAoAAgAAAD0AAAAEAAAAAAAAAAAAPgAAAAQAAQAAAAAAAAACAAAAAABFAAAACgAFAAAAPwAAAAQAAgAAAAAAAABAAAAABAADAAAAAAAAAEEAAAAEAAQAAAAAAAAAQgAAAAQABQAAAAAAAABDAAAABAAGAAAAAAAAAAAAAABmAAAAAAAAAFIAAAAKAAAAAAAKADoAAAAKAAAAAgABAAAACAAAAA0AAAACAAEAAAAJAAAADgAAAAIAAQAAAAoAAAAPAAAAAgABAAAACwAAABAAAAACAAEAAAAMAAAAEQAAAAIAAQAAAA8AAAASAAAAAgABAAAAEQAAABMAAAACAAEAAAATAAAAFAAAAAIAAQAAABUAAAAVAAAAAgABAAAAFwAAABYAAAACAAEAAAAYAAAAFwAAAAIAAQAAABoAAAAYAAAAAgABAAAAGwAAAEQAAAACAAAAAABTAAAAOAAAAAIAAAAAAFQAAABFAAAAAgAAAAAAVQAAAEYAAAACAAAAAABWAAAARwAAAAIAAAAAAFcAAABIAAAAAgAAAAAAZwAAADQAAAACAAAAAABoAAAASQAAAAIAAAAAAGkAAABKAAAAAgAAAAAAagAAAEsAAAACAAAAAABrAAAATAAAAAIAAAAAAGwAAABNAAAAAgAAAAAAbQAAAE4AAAACAAAAAABuAAAATwAAAAIAAAAAAG8AAABQAAAAAgAAAAAAcAAAAFEAAAACAAAAAABxAAAAUgAAAAIAAAAAAHIAAABTAAAAAgAAAAAAcwAAAFQAAAACAAAAAAB0AAAAVQAAAAIAAAAAAHUAAABWAAAAAgAAAAAAdgAAAFcAAAACAAAAAAB3AAAAWAAAAAIAAAAAAHgAAABZAAAAAgAAAAAAeQAAAFoAAAACAAAAAAB6AAAAWwAAAAIAAAAAAHsAAABcAAAAAgAAAAAAfAAAAF0AAAACAAAAAAB9AAAAXgAAAAIAAAAAAH4AAABfAAAAAgAAAAAAfwAAAGAAAAACAAAAAACAAAAAYQAAAAIAAAAAAIEAAABiAAAAAgAAAAAAggAAAGMAAAACAAAAAACDAAAAZAAAAAIAAAAAAIQAAABlAAAAAgAAAAAAhQAAAGYAAAACAAAAAACGAAAAZwAAAAIAAAAAAIcAAABoAAAAAgAAAAAAiAAAAGkAAAACAAAAAACJAAAAagAAAAIAAAAAAIoAAABrAAAAAgAAAAAAiwAAAGwAAAACAAAAAACMAAAAbQAAAAIAAAAAAI0AAABuAAAAAgAAAAAAjgAAAAAAAAAAAAAABAAAAAAAAAACAAAAAABSAAAAAgABAAAABwAAAAIAAAAAABsAAAACAAAAAACPAAAABAAAAAAAAAABAAAAAAAAAAAAAAAAAAAAAgAAAAAAVAAAAAAAAAAAAAAACgAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAQAAAAQAAAABAAAAAAAAAAEAAAACAAAAAQAAAAAAAAABAAAAAgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAEAAAAHAAAAAQABAAEAAgABAAAABwAAAAIAAQAAAAcAAAACAAEAAAAHAAAAAgABAAAABwAAAAIAAQAAAAcAAAACAAEAAAAHAAAA////////////////////////////////AAAAAAAAAAACAAAAAAAAAAIAAQAAAAcAAAADAAIAAAAAAFIAAAAKAAoAAAA/AAAABAAAAAAAAAAAAG8AAAAEAAEAAAAAAAAAQAAAAAQAAgAAAAAAAABwAAAABAADAAAAAAAAAHEAAAAEAAQAAAAAAAAAcgAAAAQABQAAAAAAAABzAAAABAAGAAAAAAAAAHQAAAAEAAcAAAAAAAAAdQAAAAQACAAAAAAAAAB2AAAABAAJAAAAAAAAAAAAAACQAAAAAAAAAFgAAAAKAAAAAAAKAA0AAAAKAAAAAgABAAAACAAAAA0AAAACAAEAAAAJAAAADgAAAAIAAQAAAAoAAAAPAAAAAgAAAAAAWQAAABAAAAACAAAAAABbAAAAEQAAAAIAAQAAAA8AAAASAAAAAgABAAAAEQAAABMAAAACAAEAAAATAAAAFAAAAAIAAQAAABUAAAAVAAAAAgABAAAAFwAAABYAAAACAAAAAABaAAAAFwAAAAIAAQAAABoAAAAYAAAAAgABAAAAGwAAAAAAAAAAAAAAAgAAAAAAAAACAAAAAABYAAAAAgABAAAABwAAAAQAAAAAAAAAAQAAAAAAAAAFAAAAAAAAAAMAAAAAAAAAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAQAAAAcAAAD///////////////////////////////8AAAAAAAAAAAIAAAAAAAAAAgABAAAABwAAAAMAAgAAAAAAWAAAAAoAAQAAAHcAAAAEAAAAAAAAAAAAAAAAAJEAAAAAAAAAXAAAAAoAAAAAAAoADQAAAAoAAAACAAEAAAAIAAAADQAAAAIAAQAAAAkAAAAOAAAAAgABAAAACgAAAA8AAAACAAAAAABZAAAAEAAAAAIAAAAAAFsAAAARAAAAAgABAAAADwAAABIAAAACAAEAAAARAAAAEwAAAAIAAQAAABMAAAAUAAAAAgABAAAAFQAAABUAAAACAAEAAAAXAAAAFgAAAAIAAAAAAF0AAAAXAAAAAgABAAAAGgAAABgAAAACAAEAAAAbAAAAAAAAAAAAAAADAAAAAAAAAAIAAAAAAFwAAAACAAAAAABYAAAAAgABAAAABwAAAAQAAAAAAAAAAQAAAAAAAAAFAAAAAAAAAAMAAAAAAAAAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAQAAAAcAAAD///////////////////////////////8AAAAAAAAAAAMAAAAAAAAAAgABAAAABwAAAAMAAgAAAAAAWAAAAAoAAQAAAHcAAAAEAAAAAAAAAAAAAgAAAAAAXAAAAAMAAAAAAKQAAAAAAAAAXwAAAAoAFQAAAIoAAAACAAQAAAADAAAAjQAAAAIABAAAAAgAAACOAAAAAgAEAAAADAAAAI8AAAACAAQAAAAnAAAAkAAAAAIABAAAAC8AAACRAAAAAgAEAAAAMwAAAJIAAAACAAQAAAA3AAAAkwAAAAIABAAAADsAAACUAAAAAgAEAAAAPgAAAJUAAAACAAQAAABCAAAAlgAAAAIABAAAAEcAAACXAAAAAgAEAAAATwAAAJgAAAACAAQAAABRAAAAmQAAAAIABAAAAFcAAACaAAAAAgAEAAAAWwAAAJsAAAACAAQAAABfAAAAnAAAAAIABAAAAGMAAACdAAAAAgAEAAAAawAAAJ4AAAACAAQAAABuAAAAnwAAAAIABAAAAHEAAACgAAAAAgAEAAAAegAAAAoAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAABfAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAAF8AAAADAAAAAAClAAAAAAAAAGAAAAAKAAEAAAChAAAAAgAAAAAAAwAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAQAAAAAAAAACAAAAAABgAAAAAwAAAAAApgAAAAAAAACPAAAAAwABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAACAAAAAAAAAAAAAAAAAAAAAwAAAAAAAAAAAAAAAQAAAAUAAAAAAAAAAQAAAAEAAAAFAAAAEAAAAAEAAAABAAAABQAAACAAAAABAAAAAQAAAAUAAAAwAAAAAQAAAAEAAAAFAAAAQAAAAAEAAAABAAAABQAAAFAAAAABAAAAAQAAAAUAAABgAAAAAQAAAAEAAAAFAAAAcAAAAAEAAAABAAAABQAAAIAAAAABAAAAAQAAAAUAAACQAAAAAQAAAAEAAAAFAAAAoAAAAAEAAAABAAAABQAAALAAAAABAAAAAQAAAAUAAADAAAAAAQAAAAEAAAAFAAAA0AAAAAEAAAABAAAABQAAAOAAAAABAAAAAQAAAAUAAADwAAAAAQAAAAEAAAAFAAAAAAEAAAEAAAABAAAABQAAABABAAABAAAAAQAAAAUAAAAgAQAAAQAAAAEAAAAFAAAAMAEAAAEAAAABAAAABQAAAEABAAABAAAAAQAAAAUAAABQAQAAAQAAAAEAAAAFAAAAYAEAAAEAAAAAAAAABAAAAHABAAAAAAAAAQAAAAUAAABwAQAAAQAAAAEAAAAFAAAAgAEAAAEAAAABAAAABQAAAJABAAABAAAAAQAAAAUAAACgAQAAAQAAAAEAAAAFAAAAsAEAAAEAAAABAAAABQAAAMABAAABAAAAAQAAAAUAAADQAQAAAQAAAAEAAAAFAAAA4AEAAAEAAAABAAAABQAAAPABAAABAAAAAQAAAAUAAAAAAgAAAQAAAAEAAAAFAAAAEAIAAAEAAAABAAAABQAAACACAAABAAAAAQAAAAUAAAAwAgAAAQAAAAEAAAAFAAAAQAIAAAEAAAABAAAABQAAAFACAAABAAAAAQAAAAUAAABgAgAAAQAAAAEAAAAFAAAAcAIAAAEAAAABAAAABQAAAIACAAABAAAAAQAAAAUAAACQAgAAAQAAAAEAAAAFAAAAoAIAAAEAAAABAAAABQAAALACAAABAAAAAQAAAAUAAADAAgAAAQAAAAEAAAAFAAAA0AIAAAEAAAABAAAABQAAAOACAAABAAAAAQAAAAUAAADwAgAAAQAAAAEAAAAFAAAAAAMAAAEAAAABAAAABQAAABADAAABAAAAAQAAAAUAAAAgAwAAAQAAAAEAAAAFAAAAMAMAAAEAAAABAAAABQAAAEADAAABAAAAAQAAAAUAAABQAwAAAQAAAAEAAAAFAAAAYAMAAAEAAAABAAAABQAAAHADAAABAAAAAQAAAAUAAACAAwAAAQAAAAEAAAAFAAAAkAMAAAEAAAABAAAABQAAAKADAAABAAAAAQAAAAUAAACwAwAAAQAAAAEAAAAFAAAAwAMAAAEAAAABAAAABQAAANADAAABAAAAAQAAAAUAAADgAwAAAQAAAAEAAAAFAAAA8AMAAAEAAAAAAAAABQAAAAAEAAAAAAAAAQAAAAUAAAAABAAAAQAAAAEAAAAFAAAAEAQAAAEAAAABAAAABQAAACAEAAABAAAAAQAAAAUAAAAwBAAAAQAAAAEAAAAFAAAAQAQAAAEAAAABAAAABQAAAFAEAAABAAAAAQAAAAUAAABgBAAAAQAAAAEAAAAFAAAAcAQAAAEAAAABAAAABQAAAIAEAAABAAAAAQAAAAUAAACQBAAAAQAAAAEAAAAFAAAAoAQAAAEAAAABAAAABQAAALAEAAABAAAAAAAAAAYAAADABAAAAAAAAAEAAAAFAAAAwAQAAAEAAAABAAAABQAAANAEAAABAAAAAQAAAAUAAADgBAAAAQAAAAEAAAAFAAAA8AQAAAEAAAABAAAABQAAAAAFAAABAAAAAAAAAAcAAAAQBQAAAAAAAAEAAAAFAAAAEAUAAAEAAAABAAAABQAAACAFAAABAAAAAQAAAAUAAAAwBQAAAQAAAAAAAAAIAAAAQAUAAAAAAAABAAAABQAAAEAFAAABAAAAAgAAAAAAAABQBQAAAQAAAAAAAAAJAAAAYAUAAAAAAAAAAAAACgAAAGAFAAAAAAAAAgAAAAAAAABgBQAAAQAAAAIAAAAAAAAAcAUAAAEAAAADAAAABgAAAIAFAAABAAAAAwAAAAUAAAD+CAAAAQAAAAMAAAAGAAAA7AsAAAEAAAADAAAABgAAAD4OAAABAAAAAQAAAAUAAAC6FgAAAQAAAAEAAAAFAAAAyhYAAAEAAAABAAAABQAAANoWAAABAAAAAQAAAAUAAADqFgAAAQAAAAEAAAAFAAAA+hYAAAEAAAABAAAABQAAAAoXAAABAAAAAQAAAAUAAAAaFwAAAQAAAAEAAAAFAAAAKhcAAAEAAAABAAAABQAAADoXAAABAAAAAQAAAAUAAABKFwAAAQAAAAEAAAAFAAAAWhcAAAEAAAABAAAABQAAAGoXAAABAAAAAQAAAAUAAAB6FwAAAQAAAAEAAAAFAAAAihcAAAEAAAABAAAABQAAAJoXAAABAAAAAQAAAAUAAACqFwAAAQAAAAEAAAAFAAAAuhcAAAEAAAABAAAABQAAAMoXAAABAAAAAQAAAAUAAADaFwAAAQAAAAEAAAAFAAAA6hcAAAEAAAABAAAABQAAAPoXAAABAAAAAQAAAAUAAAAKGAAAAQAAAAEAAAAFAAAAGhgAAAEAAAABAAAABQAAACoYAAABAAAAAQAAAAUAAAA6GAAAAQAAAAEAAAAFAAAAShgAAAEAAAABAAAABQAAAFoYAAABAAAAAQAAAAUAAABqGAAAAQAAAAEAAAAFAAAAehgAAAEAAAABAAAABQAAAIoYAAABAAAAAQAAAAUAAACaGAAAAQAAAAEAAAAFAAAAqhgAAAEAAAABAAAABQAAALoYAAABAAAAAQAAAAUAAADKGAAAAQAAAAEAAAAFAAAA2hgAAAEAAAABAAAABQAAAOoYAAABAAAAAQAAAAUAAAD6GAAAAQAAAAEAAAAFAAAAChkAAAEAAAABAAAABQAAABoZAAABAAAAAQAAAAUAAAAqGQAAAQAAAAAAAAALAAAAOhkAAAAAAAADAAAABgAAADoZAAABAAAAAwAAAAYAAACmGgAAAQAAAAMAAAAIAAAAiBsAAAEAAAADAAAACAAAALAbAAABAAAAAwAAAAgAAADYGwAAAQAAAAMAAAAIAAAAABwAAAEAAAADAAAACAAAADAcAAABAAAAAwAAAAgAAABgHAAAAQAAAAMAAAAIAAAAkBwAAAEAAAADAAAACAAAALgcAAABAAAAAwAAAAgAAADgHAAAAQAAAAMAAAAIAAAACB0AAAEAAAADAAAACAAAADAdAAABAAAAAwAAAAgAAABYHQAAAQAAAAMAAAAIAAAAgB0AAAEAAAADAAAACAAAAKgdAAABAAAAAwAAAAgAAADYHQAAAQAAAAMAAAAIAAAACB4AAAEAAAADAAAACAAAADAeAAABAAAAAwAAAAgAAABYHgAAAQAAAAIAAAAAAAAAgB4AAAEAAAACAAAAAAAAAJAeAAABAAAAAwAAAAMAAACgHgAAAQAAAAsAAAAAAAAAAAABAAEAAQALAAAAAAABAAAAAQABAAEACwAAAAAAAgAAAAEAAQABAAsAAAAAAAMAAAABAAEAAQALAAAAAAAEAAAAAQABAAEACwAAAAAABQAAAAEAAQABAAsAAAAAAAYAAAABAAEAAQALAAAAAAAHAAAAAQABAAEACwAAAAAACAAAAAEAAQABAAsAAAAAAAkAAAABAAEAAQALAAAAAAAKAAAAAQABAAEACwAAAAAACwAAAAEAAQABAAsAAAAAAAwAAAABAAEAAQALAAAAAAANAAAAAQABAAEACwAAAAAADgAAAAEAAQABAAsAAAAAAA8AAAABAAEAAQALAAAAAAAQAAAAAQABAAEACwAAAAAAEQAAAAEAAQABAAsAAAAAABIAAAABAAEAAQALAAAAAAATAAAAAQABAAEACwAAAAAAFAAAAAEAAQABAAsAAAAAABUAAAABAAEAAQALAAAAAAAWAAAAAQABAAEACwAAAAAAFwAAAAEAAQABAAsAAAAAABgAAAABAAEAAQALAAAAAAAZAAAAAQABAAEACwAAAAAAGgAAAAEAAQABAAsAAAAAABsAAAABAAEAAQALAAAAAAAcAAAAAQABAAEACwAAAAAAHQAAAAEAAQABAAsAAAAAAB4AAAABAAEAAQALAAAAAAAfAAAAAQABAAEACwAAAAAAIAAAAAEAAQABAAsAAAAAACEAAAABAAEAAQALAAAAAAAiAAAAAQABAAEACwAAAAAAIwAAAAEAAQABAAsAAAAAACQAAAABAAEAAQALAAAAAAAlAAAAAQABAAEACwAAAAAAJgAAAAEAAQABAAsAAAAAACcAAAABAAEAAQALAAAAAAAoAAAAAQABAAEACwAAAAAAKQAAAAEAAQABAAsAAAAAACoAAAABAAEAAQALAAAAAAArAAAAAQABAAEACwAAAAAALAAAAAEAAQABAAsAAAAAAC0AAAABAAEAAQALAAAAAAAuAAAAAQABAAEACwAAAAAALwAAAAEAAQABAAsAAAAAADAAAAABAAEAAQALAAAAAAAxAAAAAQABAAEACwAAAAAAMgAAAAEAAQABAAsAAAAAADMAAAABAAEAAQALAAAAAAA0AAAAAQABAAEACwAAAAAANQAAAAEAAQABAAsAAAAAADYAAAABAAEAAQALAAAAAAA3AAAAAQABAAEACwAAAAAAOAAAAAEAAQABAAsAAAAAADkAAAABAAEAAQALAAAAAAA6AAAAAQABAAEACwAAAAAAOwAAAAEAAQABAAsAAAAAADwAAAABAAEAAQALAAAAAAA9AAAAAQABAAEACwAAAAAAPgAAAAEAAQABAAsAAAAAAD8AAAABAAEAAQALAAAAAABAAAAAAQABAAEACwAAAAAAQQAAAAEAAQABAAsAAAAAAEIAAAABAAEAAQALAAAAAABDAAAAAQABAAEACwAAAAAARAAAAAEAAQABAAsAAAAAAEUAAAABAAEAAQALAAAAAABGAAAAAQABAAEACwAAAAAARwAAAAEAAQABAAsAAAAAAEgAAAABAAEAAQALAAAAAABJAAAAAQABAAEACwAAAAAASgAAAAEAAQABAAsAAAAAAEsAAAABAAEAAQALAAAAAABMAAAAAQABAAEACwAAAAAATQAAAAEAAQABAAsAAAAAAE4AAAABAAEAAQALAAAAAABPAAAAAQABAAEACwAAAAAAUAAAAAEAAQABAAsAAAAAAFEAAAABAAEAAQALAAAAAABSAAAAAQABAAEACwAAAAAAUwAAAAEAAQABAAsAAAAAAFQAAAABAAEAAQB5AAAABwAAAAAACgAAAAAAegAAAAcAAAAAAAoAAAAAAAkAAAAHAAAAAAAKAAAAAAAGAH0AAAAKAAIAAAAuAAAAAgAAAAAAkgAAAC8AAAACAAAAAACTAAAACgAXAAAADwAAAAIAAAAAAAQAAAAZAAAAAgAAAAAABQAAABoAAAACAAAAAAAGAAAAGwAAAAIAAAAAAAcAAAAcAAAAAgAAAAAACAAAAB0AAAACAAAAAAAJAAAAHgAAAAIAAAAAAAoAAAAfAAAAAgAAAAAACwAAACAAAAACAAAAAAAMAAAAIQAAAAIAAAAAAA0AAAAiAAAAAgAAAAAADgAAACMAAAACAAAAAAAPAAAAJAAAAAIAAAAAABAAAAAlAAAAAgAAAAAAEQAAACYAAAACAAAAAAASAAAAJwAAAAIAAAAAABMAAAAoAAAAAgAAAAAAFAAAACkAAAACAAAAAAAVAAAAKgAAAAIAAAAAABYAAAArAAAAAgAAAAAAFwAAACwAAAACAAAAAAAYAAAALQAAAAIAAAAAABkAAAAYAAAAAgAAAAAAGgAAAAcAFwAAAAIAAAAAAAQAAAACAAAAAAAFAAAAAgAAAAAABgAAAAIAAAAAAAcAAAACAAAAAAAIAAAAAgAAAAAACQAAAAIAAAAAAAoAAAACAAAAAAALAAAAAgAAAAAADAAAAAIAAAAAAA0AAAACAAAAAAAOAAAAAgAAAAAADwAAAAIAAAAAABAAAAACAAAAAAARAAAAAgAAAAAAEgAAAAIAAAAAABMAAAACAAAAAAAUAAAAAgAAAAAAFQAAAAIAAAAAABYAAAACAAAAAAAXAAAAAgAAAAAAGAAAAAIAAAAAABkAAAACAAAAAAAaAAAABwAAAAAABwABAAAAAgABAAAABwAAAAcAAAAAAAIAAQAAAAcAAAAHAAAAAAAKAAAAAAAEAAEAAAAAAAAABwACAAAAAgAAAAAAAwAAAAIAAQAAAAcAAAAHAAAAAAAKAAAAAAAKAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAgAAAAcABAAAAAQAAQAAAAAAAAACAAAAAAADAAAABgAbAAAABgAuAAAABwAEAAAABAABAAAAAAAAAAIAAAAAAAMAAAAGAH4AAAAGAC8AAAAHAAIAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAAwAAAAYAGwAAAAYALgAAAAcABAAAAAQAAQAAAAAAAAACAAAAAAADAAAABgB+AAAABgAvAAAAAQAGAAQAAAAKAAoAAAA/AAAAAgAAAAAAlAAAAG8AAAACAAAAAACVAAAAQAAAAAIAAAAAAJYAAABwAAAAAgAAAAAAlwAAAHEAAAACAAAAAACYAAAAcgAAAAIAAAAAAJkAAABzAAAAAgAAAAAAmgAAAHQAAAACAAAAAACbAAAAdQAAAAIAAAAAAJwAAAB2AAAAAgAAAAAAnQAAAAoAKAAAAEgAAAACAAAAAAAcAAAANAAAAAIAAAAAAB0AAABJAAAAAgAAAAAAHgAAAEoAAAACAAAAAAAfAAAASwAAAAIAAAAAACAAAABMAAAAAgAAAAAAIQAAAE0AAAACAAAAAAAiAAAATgAAAAIAAAAAACMAAABPAAAAAgAAAAAAJAAAAFAAAAACAAAAAAAlAAAAUQAAAAIAAAAAACYAAABSAAAAAgAAAAAAJwAAAFMAAAACAAAAAAAoAAAAVAAAAAIAAAAAACkAAABVAAAAAgAAAAAAKgAAAFYAAAACAAAAAAArAAAAVwAAAAIAAAAAACwAAABYAAAAAgAAAAAALQAAAFkAAAACAAAAAAAuAAAAWgAAAAIAAAAAAC8AAABbAAAAAgAAAAAAMAAAAFwAAAACAAAAAAAxAAAAXQAAAAIAAAAAADIAAABeAAAAAgAAAAAAMwAAAF8AAAACAAAAAAA0AAAAYAAAAAIAAAAAADUAAABhAAAAAgAAAAAANgAAAGIAAAACAAAAAAA3AAAAYwAAAAIAAAAAADgAAABkAAAAAgAAAAAAOQAAAGUAAAACAAAAAAA6AAAAZgAAAAIAAAAAADsAAABnAAAAAgAAAAAAPAAAAGgAAAACAAAAAAA9AAAAaQAAAAIAAAAAAD4AAABqAAAAAgAAAAAAPwAAAGsAAAACAAAAAABAAAAAbAAAAAIAAAAAAEEAAABtAAAAAgAAAAAAQgAAAG4AAAACAAAAAABDAAAABwAAAAAABwAAAAAABAABAAAAAAAAAAIAAAAAAEQAAAAGAAUAAAAKAAUAAAA/AAAAAgAAAAAAngAAAEAAAAACAAAAAACfAAAAQQAAAAIAAAAAAKAAAABCAAAAAgAAAAAAoQAAAEMAAAACAAAAAACiAAAACgAKAAAANAAAAAIAAAAAAEYAAAA1AAAAAgAAAAAARwAAADYAAAACAAAAAABIAAAANwAAAAIAAAAAAEkAAAAQAAAAAgAAAAAASgAAADgAAAACAAAAAABNAAAAOQAAAAIAAAAAAE4AAAA6AAAAAgAAAAAATwAAADsAAAACAAAAAABQAAAAPAAAAAIAAAAAAFEAAAAHAAoAAAACAAAAAABGAAAAAgAAAAAARwAAAAIAAAAAAEgAAAACAAAAAABJAAAAAgAAAAAASgAAAAIAAAAAAE0AAAACAAAAAABOAAAAAgAAAAAATwAAAAIAAAAAAFAAAAACAAAAAABRAAAABwAAAAAABwABAAAAAgABAAAAHAAAAAcAAAAAAAEABwAAAAAACgAAAAAABAABAAAAAAAAAAcAAwAAAAIAAAAAAEUAAAACAAEAAAAcAAAAAgABAAAABwAAAAcAAAAAAAoAAwAAAH8AAAACAAAAAABKAAAAgAAAAAIAAAAAAEsAAACBAAAAAgAAAAAATAAAAAoAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwACAAAABwACAAAABAAAAAAAAAAAAAIAAQAAAB4AAAAHAAIAAAAEAAAAAAAAAAAAAgABAAAAHgAAAAcAAQAAAAcAAgAAAAQAAAAAAAAAAAACAAEAAAAeAAAAAQAGAAYAAAAKAAoAAAA/AAAAAgAAAAAAlAAAAG8AAAACAAAAAACVAAAAQAAAAAIAAAAAAJYAAABwAAAAAgAAAAAAlwAAAHEAAAACAAAAAACYAAAAcgAAAAIAAAAAAJkAAABzAAAAAgAAAAAAmgAAAHQAAAACAAAAAACbAAAAdQAAAAIAAAAAAJwAAAB2AAAAAgAAAAAAnQAAAAoALQAAAEQAAAACAAAAAABTAAAAOAAAAAIAAAAAAFQAAABFAAAAAgAAAAAAVQAAAEYAAAACAAAAAABWAAAARwAAAAIAAAAAAFcAAABIAAAAAgAAAAAAZwAAADQAAAACAAAAAABoAAAASQAAAAIAAAAAAGkAAABKAAAAAgAAAAAAagAAAEsAAAACAAAAAABrAAAATAAAAAIAAAAAAGwAAABNAAAAAgAAAAAAbQAAAE4AAAACAAAAAABuAAAATwAAAAIAAAAAAG8AAABQAAAAAgAAAAAAcAAAAFEAAAACAAAAAABxAAAAUgAAAAIAAAAAAHIAAABTAAAAAgAAAAAAcwAAAFQAAAACAAAAAAB0AAAAVQAAAAIAAAAAAHUAAABWAAAAAgAAAAAAdgAAAFcAAAACAAAAAAB3AAAAWAAAAAIAAAAAAHgAAABZAAAAAgAAAAAAeQAAAFoAAAACAAAAAAB6AAAAWwAAAAIAAAAAAHsAAABcAAAAAgAAAAAAfAAAAF0AAAACAAAAAAB9AAAAXgAAAAIAAAAAAH4AAABfAAAAAgAAAAAAfwAAAGAAAAACAAAAAACAAAAAYQAAAAIAAAAAAIEAAABiAAAAAgAAAAAAggAAAGMAAAACAAAAAACDAAAAZAAAAAIAAAAAAIQAAABlAAAAAgAAAAAAhQAAAGYAAAACAAAAAACGAAAAZwAAAAIAAAAAAIcAAABoAAAAAgAAAAAAiAAAAGkAAAACAAAAAACJAAAAagAAAAIAAAAAAIoAAABrAAAAAgAAAAAAiwAAAGwAAAACAAAAAACMAAAAbQAAAAIAAAAAAI0AAABuAAAAAgAAAAAAjgAAAAcALQAAAAIAAAAAAFMAAAACAAAAAABUAAAAAgAAAAAAVQAAAAIAAAAAAFYAAAACAAAAAABXAAAAAgAAAAAAZwAAAAIAAAAAAGgAAAACAAAAAABpAAAAAgAAAAAAagAAAAIAAAAAAGsAAAACAAAAAABsAAAAAgAAAAAAbQAAAAIAAAAAAG4AAAACAAAAAABvAAAAAgAAAAAAcAAAAAIAAAAAAHEAAAACAAAAAAByAAAAAgAAAAAAcwAAAAIAAAAAAHQAAAACAAAAAAB1AAAAAgAAAAAAdgAAAAIAAAAAAHcAAAACAAAAAAB4AAAAAgAAAAAAeQAAAAIAAAAAAHoAAAACAAAAAAB7AAAAAgAAAAAAfAAAAAIAAAAAAH0AAAACAAAAAAB+AAAAAgAAAAAAfwAAAAIAAAAAAIAAAAACAAAAAACBAAAAAgAAAAAAggAAAAIAAAAAAIMAAAACAAAAAACEAAAAAgAAAAAAhQAAAAIAAAAAAIYAAAACAAAAAACHAAAAAgAAAAAAiAAAAAIAAAAAAIkAAAACAAAAAACKAAAAAgAAAAAAiwAAAAIAAAAAAIwAAAACAAAAAACNAAAAAgAAAAAAjgAAAAcAAAAAAAcAAQAAAAIAAQAAAAcAAAAHAAEAAAACAAAAAAAbAAAAAgABAAAABwAAAAcAAAAAAAoAAAAAAAQAAQAAAAAAAAAHAAIAAAACAAAAAABSAAAAAgABAAAABwAAAAcAAgAAAAIAAAAAABsAAAACAAAAAACPAAAACgAAAAAACgAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAoAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAUgAAAAYANQAAAAYAPwAAAAcABAAAAAQAAQAAAAAAAAACAAAAAABSAAAABgBIAAAABgBvAAAABwAEAAAABAABAAAAAAAAAAIAAAAAAFIAAAAGADQAAAAGAEAAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAUgAAAAYASQAAAAYAcAAAAAcABAAAAAQAAQAAAAAAAAACAAAAAABSAAAABgCCAAAABgBxAAAABwAEAAAABAABAAAAAAAAAAIAAAAAAFIAAAAGAIMAAAAGAHIAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAUgAAAAYAhAAAAAYAcwAAAAcABAAAAAQAAQAAAAAAAAACAAAAAABSAAAABgCFAAAABgB0AAAABwAEAAAABAABAAAAAAAAAAIAAAAAAFIAAAAGAIYAAAAGAHUAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAUgAAAAYAhwAAAAYAdgAAAAcACgAAAAcABAAAAAQAAQAAAAAAAAACAAAAAABSAAAABgA1AAAABgA/AAAABwAEAAAABAABAAAAAAAAAAIAAAAAAFIAAAAGAEgAAAAGAG8AAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAUgAAAAYANAAAAAYAQAAAAAcABAAAAAQAAQAAAAAAAAACAAAAAABSAAAABgBJAAAABgBwAAAABwAEAAAABAABAAAAAAAAAAIAAAAAAFIAAAAGAIIAAAAGAHEAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAUgAAAAYAgwAAAAYAcgAAAAcABAAAAAQAAQAAAAAAAAACAAAAAABSAAAABgCEAAAABgBzAAAABwAEAAAABAABAAAAAAAAAAIAAAAAAFIAAAAGAIUAAAAGAHQAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAUgAAAAYAhgAAAAYAdQAAAAcABAAAAAQAAQAAAAAAAAACAAAAAABSAAAABgCHAAAABgB2AAAAAQAMAAAAAABVAAAAAQABAAEADAAAAAAAVgAAAAEAAQABAAwAAAAAAFcAAAABAAEAAQAMAAAAAABYAAAAAQABAAEADAAAAAAAWQAAAAEAAQABAAwAAAAAAFoAAAABAAEAAQAMAAAAAABbAAAAAQABAAEADAAAAAAAXAAAAAEAAQABAAwAAAAAAF0AAAABAAEAAQAMAAAAAABeAAAAAQABAAEADAAAAAAAXwAAAAEAAQABAAwAAAAAAGAAAAABAAEAAQAMAAAAAABhAAAAAQABAAEADAAAAAAAYgAAAAEAAQABAAwAAAAAAGMAAAABAAEAAQAMAAAAAABkAAAAAQABAAEADAAAAAAAZQAAAAEAAQABAAwAAAAAAGYAAAABAAEAAQAMAAAAAABnAAAAAQABAAEADAAAAAAAaAAAAAEAAQABAAwAAAAAAGkAAAABAAEAAQAMAAAAAABqAAAAAQABAAEADAAAAAAAawAAAAEAAQABAAwAAAAAAGwAAAABAAEAAQAMAAAAAABtAAAAAQABAAEADAAAAAAAbgAAAAEAAQABAAwAAAAAAG8AAAABAAEAAQAMAAAAAABwAAAAAQABAAEADAAAAAAAcQAAAAEAAQABAAwAAAAAAHIAAAABAAEAAQAMAAAAAABzAAAAAQABAAEADAAAAAAAdAAAAAEAAQABAAwAAAAAAHUAAAABAAEAAQAMAAAAAAB2AAAAAQABAAEADAAAAAAAdwAAAAEAAQABAAwAAAAAAHgAAAABAAEAAQAMAAAAAAB5AAAAAQABAAEADAAAAAAAegAAAAEAAQABAAwAAAAAAHsAAAABAAEAAQAMAAAAAAB8AAAAAQABAAEABgAHAAAACgABAAAAdwAAAAIAAAAAAKMAAAAKAAMAAAAPAAAAAgAAAAAAWQAAABYAAAACAAAAAABaAAAAEAAAAAIAAAAAAFsAAAAHAAMAAAACAAAAAABZAAAAAgAAAAAAWgAAAAIAAAAAAFsAAAAHAAAAAAAHAAEAAAACAAEAAAAHAAAABwAAAAAAAgABAAAABwAAAAcAAAAAAAoAAAAAAAQAAQAAAAAAAAAHAAIAAAACAAAAAABYAAAAAgABAAAABwAAAAcAAAAAAAoAAQAAAH8AAAACAAAAAABbAAAACgABAAAAiAAAAAcAAgAAAAIAAAAAAFgAAAAGAHcAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAQAAAAcABAAAAAQAAQAAAAAAAAACAAAAAABYAAAABgCJAAAABgB3AAAABwABAAAABwAEAAAABAABAAAAAAAAAAIAAAAAAFgAAAAGAIkAAAAGAHcAAAABAAYACAAAAAoAAAAAAAoAAQAAABYAAAACAAAAAABdAAAABwABAAAAAgAAAAAAXQAAAAcAAAAAAAcAAQAAAAIAAAAAAFgAAAAHAAAAAAABAAcAAAAAAAoAAAAAAAQAAQAAAAAAAAAHAAMAAAACAAAAAABcAAAAAgAAAAAAWAAAAAIAAQAAAAcAAAAHAAAAAAAKAAAAAAAKAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAQAAAAcABAAAAAQAAQAAAAAAAAACAAAAAABYAAAABgCJAAAABgB3AAAABwAAAAAAAQAGAC4AAAADAAQAAAAAAAAAAAADAAIAAQAAAAcAAAAEAAEAAAAAAAAABgAvAAAAAwAEAAAAAAAAAAAAAwACAAEAAAAHAAAABAABAAAAAAAAAAYAPwAAAAMABAAAAAAAAAAAAAMAAgABAAAABwAAAAQAAQAAAAAAAAAGAG8AAAACAAEAAAAEAAAABAABAAAAAAAAAAMAAgABAAAABAAAAAQAAQAAAAAAAAAGAEAAAAACAAEAAAACAAAABAABAAAAAAAAAAMAAgABAAAAAgAAAAQAAQAAAAAAAAAGAHAAAAACAAEAAAACAAAABAABAAAAAAAAAAMAAgABAAAAAgAAAAQAAQAAAAAAAAAGAHEAAAADAAQAAAAAAAAAAAADAAIAAQAAAAcAAAAEAAEAAAAAAAAABgByAAAAAwAEAAAAAAAAAAAAAwACAAEAAAAHAAAABAABAAAAAAAAAAYAcwAAAAMABAAAAAAAAAAAAAMAAgABAAAABwAAAAQAAQAAAAAAAAAGAHQAAAADAAQAAAAAAAAAAAADAAIAAQAAAAcAAAAEAAEAAAAAAAAABgB1AAAAAwAEAAAAAAAAAAAAAwACAAEAAAAHAAAABAABAAAAAAAAAAYAdgAAAAMABAAAAAAAAAAAAAMAAgABAAAABwAAAAQAAQAAAAAAAAAGAD8AAAADAAQAAAAAAAAAAAADAAIAAQAAAAcAAAAEAAEAAAAAAAAABgBAAAAAAgABAAAAAgAAAAQAAQAAAAAAAAADAAIAAQAAAAIAAAAEAAEAAAAAAAAABgBBAAAAAgABAAAAAgAAAAQAAQAAAAAAAAADAAIAAQAAAAIAAAAEAAEAAAAAAAAABgBCAAAAAwAEAAAAAAAAAAAAAwACAAEAAAAHAAAABAABAAAAAAAAAAYAQwAAAAMABAAAAAAAAAAAAAMAAgABAAAABwAAAAQAAQAAAAAAAAAGAHcAAAADAAQAAAAAAAAAAAADAAIAAQAAAAcAAAAEAAEAAAAAAAAAAgAAAAcAAAAAAAoAAAAAAAMAAAAHAAAAAAAKAAAAAAAGAAQAAAACAAAAAAAbAAAACgAKAAAAPwAAAAIAAAAAAJQAAABvAAAAAgAAAAAAlQAAAEAAAAACAAAAAACWAAAAcAAAAAIAAAAAAJcAAABxAAAAAgAAAAAAmAAAAHIAAAACAAAAAACZAAAAcwAAAAIAAAAAAJoAAAB0AAAAAgAAAAAAmwAAAHUAAAACAAAAAACcAAAAdgAAAAIAAAAAAJ0AAAAKACgAAABIAAAAAgAAAAAAZwAAADQAAAACAAAAAABoAAAASQAAAAIAAAAAAGkAAABKAAAAAgAAAAAAagAAAEsAAAACAAAAAABrAAAATAAAAAIAAAAAAGwAAABNAAAAAgAAAAAAbQAAAE4AAAACAAAAAABuAAAATwAAAAIAAAAAAG8AAABQAAAAAgAAAAAAcAAAAFEAAAACAAAAAABxAAAAUgAAAAIAAAAAAHIAAABTAAAAAgAAAAAAcwAAAFQAAAACAAAAAAB0AAAAVQAAAAIAAAAAAHUAAABWAAAAAgAAAAAAdgAAAFcAAAACAAAAAAB3AAAAWAAAAAIAAAAAAHgAAABZAAAAAgAAAAAAeQAAAFoAAAACAAAAAAB6AAAAWwAAAAIAAAAAAHsAAABcAAAAAgAAAAAAfAAAAF0AAAACAAAAAAB9AAAAXgAAAAIAAAAAAH4AAABfAAAAAgAAAAAAfwAAAGAAAAACAAAAAACAAAAAYQAAAAIAAAAAAIEAAABiAAAAAgAAAAAAggAAAGMAAAACAAAAAACDAAAAZAAAAAIAAAAAAIQAAABlAAAAAgAAAAAAhQAAAGYAAAACAAAAAACGAAAAZwAAAAIAAAAAAIcAAABoAAAAAgAAAAAAiAAAAGkAAAACAAAAAACJAAAAagAAAAIAAAAAAIoAAABrAAAAAgAAAAAAiwAAAGwAAAACAAAAAACMAAAAbQAAAAIAAAAAAI0AAABuAAAAAgAAAAAAjgAAAAcAAAAAAAcAAAAAAAcAAAAAAAcAAAAAAAQAAQAAAAAAAAAAAAAAFwAAAAEAAAABAAAAAAAAAGcAAAAAAAAAGAAAAAEAAAABAAAAAAAAAGgAAAAAAAAAGQAAAAEAAAABAAAAAAAAAGkAAAAAAAAAGgAAAAEAAAABAAAAAAAAAGoAAAAAAAAAGwAAAAEAAAABAAAAAAAAAGsAAAAAAAAAHAAAAAEAAAABAAAAAAAAAGwAAAAAAAAAHQAAAAEAAAABAAAAAAAAAG0AAAAAAAAAHgAAAAEAAAABAAAAAAAAAG4AAAAAAAAAHwAAAAEAAAABAAAAAAAAAG8AAAAAAAAAIAAAAAEAAAABAAAAAAAAAHAAAAAAAAAAIQAAAAEAAAABAAAAAAAAAHEAAAAAAAAAIgAAAAEAAAABAAAAAAAAAHIAAAAAAAAAIwAAAAEAAAABAAAAAAAAAHMAAAAAAAAAJAAAAAEAAAABAAAAAAAAAHQAAAAAAAAAJQAAAAEAAAABAAAAAAAAAHUAAAAAAAAAJgAAAAEAAAABAAAAAAAAAHYAAAAAAAAAJwAAAAEAAAABAAAAAAAAAHcAAAAAAAAAKAAAAAEAAAABAAAAAAAAAHgAAAAAAAAAKQAAAAEAAAABAAAAAAAAAHkAAAAAAAAAKgAAAAEAAAABAAAAAAAAAHoAAAAAAAAAKwAAAAEAAAABAAAAAAAAAHsAAAAAAAAALAAAAAEAAAABAAAAAAAAAHwAAAAAAAAALQAAAAEAAAABAAAAAAAAAH0AAAAAAAAALgAAAAEAAAABAAAAAAAAAH4AAAAAAAAALwAAAAEAAAABAAAAAAAAAH8AAAAAAAAAMAAAAAEAAAABAAAAAAAAAIAAAAAAAAAAMQAAAAEAAAABAAAAAAAAAIEAAAAAAAAAMgAAAAEAAAABAAAAAAAAAIIAAAAAAAAAMwAAAAEAAAABAAAAAAAAAIMAAAAAAAAANAAAAAEAAAABAAAAAAAAAIQAAAAAAAAANQAAAAEAAAABAAAAAAAAAIUAAAAAAAAANgAAAAEAAAABAAAAAAAAAIYAAAAAAAAANwAAAAEAAAABAAAAAAAAAIcAAAAAAAAAOAAAAAEAAAABAAAAAAAAAIgAAAAAAAAAOQAAAAEAAAABAAAAAAAAAIkAAAAAAAAAOgAAAAEAAAABAAAAAAAAAIoAAAAAAAAAOwAAAAEAAAABAAAAAAAAAIsAAAAAAAAAPAAAAAEAAAABAAAAAAAAAIwAAAAAAAAAPQAAAAEAAAABAAAAAAAAAI0AAAAAAAAAPgAAAAEAAAABAAAAAAAAAI4AAAAAAAAAPwAAAAAAAAAAAAAABAAAAAAAAACiAAAACgAAAAAAowAAAAQAAQAAAAAAAACkAAAABwAAAAAApQAAAAIAAAAAAFIAAAA=", cur_sc, $P5003, $P5005
    .const "LexInfo" $P5001 = "cuid_1_1349901726.63"
    nqp_get_sc_object $P5002, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 0
    $P5003 = $P5001."set_static_lexpad_value"("GLOBALish", $P5002)
    .const "LexInfo" $P5004 = "cuid_1_1349901726.63"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1349901726.63"
    nqp_get_sc_object $P5002, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 0
    $P5003 = $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5004 = "cuid_1_1349901726.63"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1349901726.63"
    nqp_get_sc_object $P5002, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 1
    $P5003 = $P5001."set_static_lexpad_value"("EXPORT", $P5002)
    .const "LexInfo" $P5004 = "cuid_1_1349901726.63"
    $P5005 = $P5004."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_2_1349901726.63" 
    nqp_get_sc_object $P5002, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 4
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_3_1349901726.63" 
    nqp_get_sc_object $P5002, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 5
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_4_1349901726.63" 
    nqp_get_sc_object $P5002, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 6
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_5_1349901726.63" 
    nqp_get_sc_object $P5002, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 7
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_6_1349901726.63" 
    nqp_get_sc_object $P5002, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 8
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_7_1349901726.63" 
    nqp_get_sc_object $P5002, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 9
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_8_1349901726.63" 
    nqp_get_sc_object $P5002, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 10
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_9_1349901726.63" 
    nqp_get_sc_object $P5002, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 11
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_10_1349901726.63" 
    nqp_get_sc_object $P5002, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 12
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_11_1349901726.63" 
    nqp_get_sc_object $P5002, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 13
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_12_1349901726.63" 
    nqp_get_sc_object $P5002, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 14
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_13_1349901726.63" 
    nqp_get_sc_object $P5002, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 15
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_14_1349901726.63" 
    nqp_get_sc_object $P5002, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 16
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_15_1349901726.63" 
    nqp_get_sc_object $P5002, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 17
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_16_1349901726.63" 
    nqp_get_sc_object $P5002, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 18
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_17_1349901726.63" 
    nqp_get_sc_object $P5002, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 19
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_18_1349901726.63" 
    nqp_get_sc_object $P5002, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 20
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_19_1349901726.63" 
    nqp_get_sc_object $P5002, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 21
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_20_1349901726.63" 
    nqp_get_sc_object $P5002, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 22
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_21_1349901726.63" 
    nqp_get_sc_object $P5002, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 23
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_22_1349901726.63" 
    nqp_get_sc_object $P5002, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 24
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_23_1349901726.63" 
    nqp_get_sc_object $P5002, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 25
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_24_1349901726.63" 
    nqp_get_sc_object $P5002, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 26
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_25_1349901726.63"
    nqp_get_sc_object $P5002, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 3
    $P5003 = $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5004 = "cuid_25_1349901726.63"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_25_1349901726.63"
    nqp_get_sc_object $P5002, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 3
    $P5003 = $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5004 = "cuid_25_1349901726.63"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1349901726.63"
    nqp_get_sc_object $P5002, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 27
    $P5003 = $P5001."set_static_lexpad_value"("NQPCursorRole", $P5002)
    .const "LexInfo" $P5004 = "cuid_1_1349901726.63"
    $P5005 = $P5004."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_26_1349901726.63" 
    nqp_get_sc_object $P5002, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 28
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_27_1349901726.63" 
    nqp_get_sc_object $P5002, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 29
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_28_1349901726.63" 
    nqp_get_sc_object $P5002, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 30
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_29_1349901726.63" 
    nqp_get_sc_object $P5002, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 31
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_30_1349901726.63" 
    nqp_get_sc_object $P5002, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 32
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_31_1349901726.63" 
    nqp_get_sc_object $P5002, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 33
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_32_1349901726.63" 
    nqp_get_sc_object $P5002, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 34
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_33_1349901726.63" 
    nqp_get_sc_object $P5002, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 35
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_34_1349901726.63" 
    nqp_get_sc_object $P5002, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 36
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_35_1349901726.63" 
    nqp_get_sc_object $P5002, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 37
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_36_1349901726.63" 
    nqp_get_sc_object $P5002, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 38
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_37_1349901726.63" 
    nqp_get_sc_object $P5002, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 39
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_38_1349901726.63" 
    nqp_get_sc_object $P5002, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 40
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_39_1349901726.63" 
    nqp_get_sc_object $P5002, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 41
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_40_1349901726.63" 
    nqp_get_sc_object $P5002, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 42
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_41_1349901726.63" 
    nqp_get_sc_object $P5002, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 43
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_42_1349901726.63" 
    nqp_get_sc_object $P5002, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 44
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_43_1349901726.63" 
    nqp_get_sc_object $P5002, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 45
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_44_1349901726.63" 
    nqp_get_sc_object $P5002, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 46
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_45_1349901726.63" 
    nqp_get_sc_object $P5002, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 47
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_46_1349901726.63" 
    nqp_get_sc_object $P5002, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 48
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_47_1349901726.63" 
    nqp_get_sc_object $P5002, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 49
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_48_1349901726.63" 
    nqp_get_sc_object $P5002, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 50
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_49_1349901726.63" 
    nqp_get_sc_object $P5002, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 51
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_50_1349901726.63" 
    nqp_get_sc_object $P5002, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 52
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_51_1349901726.63" 
    nqp_get_sc_object $P5002, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 53
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_52_1349901726.63" 
    nqp_get_sc_object $P5002, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 54
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_53_1349901726.63" 
    nqp_get_sc_object $P5002, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 55
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_54_1349901726.63" 
    nqp_get_sc_object $P5002, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 56
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_55_1349901726.63" 
    nqp_get_sc_object $P5002, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 57
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_56_1349901726.63" 
    nqp_get_sc_object $P5002, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 58
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_57_1349901726.63" 
    nqp_get_sc_object $P5002, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 59
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_58_1349901726.63" 
    nqp_get_sc_object $P5002, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 60
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_59_1349901726.63" 
    nqp_get_sc_object $P5002, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 61
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_60_1349901726.63" 
    nqp_get_sc_object $P5002, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 62
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_61_1349901726.63" 
    nqp_get_sc_object $P5002, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 63
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_62_1349901726.63" 
    nqp_get_sc_object $P5002, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 64
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_63_1349901726.63" 
    nqp_get_sc_object $P5002, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 65
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_64_1349901726.63" 
    nqp_get_sc_object $P5002, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 66
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_65_1349901726.63" 
    nqp_get_sc_object $P5002, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 67
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_66_1349901726.63" 
    nqp_get_sc_object $P5002, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 68
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_66_1349901726.63"
    nqp_get_sc_object $P5002, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 27
    $P5003 = $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5004 = "cuid_66_1349901726.63"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_66_1349901726.63"
    nqp_get_sc_object $P5002, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 27
    $P5003 = $P5001."set_static_lexpad_value"("$?ROLE", $P5002)
    .const "LexInfo" $P5004 = "cuid_66_1349901726.63"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1349901726.63"
    nqp_get_sc_object $P5002, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 69
    $P5003 = $P5001."set_static_lexpad_value"("NQPMatch", $P5002)
    .const "LexInfo" $P5004 = "cuid_1_1349901726.63"
    $P5005 = $P5004."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_67_1349901726.63" 
    nqp_get_sc_object $P5002, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 70
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_68_1349901726.63" 
    nqp_get_sc_object $P5002, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 71
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_69_1349901726.63" 
    nqp_get_sc_object $P5002, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 72
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_70_1349901726.63" 
    nqp_get_sc_object $P5002, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 73
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_71_1349901726.63" 
    nqp_get_sc_object $P5002, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 74
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_72_1349901726.63" 
    nqp_get_sc_object $P5002, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 75
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_73_1349901726.63" 
    nqp_get_sc_object $P5002, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 76
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_74_1349901726.63" 
    nqp_get_sc_object $P5002, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 77
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_75_1349901726.63" 
    nqp_get_sc_object $P5002, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 78
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_76_1349901726.63" 
    nqp_get_sc_object $P5002, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 79
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_77_1349901726.63" 
    nqp_get_sc_object $P5002, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 80
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_78_1349901726.63" 
    nqp_get_sc_object $P5002, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 81
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_79_1349901726.63"
    nqp_get_sc_object $P5002, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 69
    $P5003 = $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5004 = "cuid_79_1349901726.63"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_79_1349901726.63"
    nqp_get_sc_object $P5002, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 69
    $P5003 = $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5004 = "cuid_79_1349901726.63"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1349901726.63"
    nqp_get_sc_object $P5002, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 82
    $P5003 = $P5001."set_static_lexpad_value"("NQPCursor", $P5002)
    .const "LexInfo" $P5004 = "cuid_1_1349901726.63"
    $P5005 = $P5004."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_80_1349901726.63" 
    nqp_get_sc_object $P5002, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 83
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_81_1349901726.63" 
    nqp_get_sc_object $P5002, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 84
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_82_1349901726.63" 
    nqp_get_sc_object $P5002, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 85
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_83_1349901726.63" 
    nqp_get_sc_object $P5002, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 86
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_84_1349901726.63" 
    nqp_get_sc_object $P5002, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 87
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_85_1349901726.63"
    nqp_get_sc_object $P5002, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 82
    $P5003 = $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5004 = "cuid_85_1349901726.63"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_85_1349901726.63"
    nqp_get_sc_object $P5002, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 82
    $P5003 = $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5004 = "cuid_85_1349901726.63"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1349901726.63"
    nqp_get_sc_object $P5002, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 88
    $P5003 = $P5001."set_static_lexpad_value"("NQPRegexMethod", $P5002)
    .const "LexInfo" $P5004 = "cuid_1_1349901726.63"
    $P5005 = $P5004."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_96_1349901726.63" 
    nqp_get_sc_object $P5002, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 89
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_97_1349901726.63" 
    nqp_get_sc_object $P5002, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 90
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_98_1349901726.63" 
    nqp_get_sc_object $P5002, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 91
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_99_1349901726.63"
    nqp_get_sc_object $P5002, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 88
    $P5003 = $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5004 = "cuid_99_1349901726.63"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_99_1349901726.63"
    nqp_get_sc_object $P5002, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 88
    $P5003 = $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5004 = "cuid_99_1349901726.63"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1349901726.63"
    nqp_get_sc_object $P5002, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 92
    $P5003 = $P5001."set_static_lexpad_value"("NQPRegex", $P5002)
    .const "LexInfo" $P5004 = "cuid_1_1349901726.63"
    $P5005 = $P5004."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_100_1349901726.63" 
    nqp_get_sc_object $P5002, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 93
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_101_1349901726.63"
    nqp_get_sc_object $P5002, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 92
    $P5003 = $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5004 = "cuid_101_1349901726.63"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_101_1349901726.63"
    nqp_get_sc_object $P5002, "BDAF195F9A328EEA7908B67B6DA35935692329D3-1349901726.644", 92
    $P5003 = $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5004 = "cuid_101_1349901726.63"
    $P5005 = $P5004."finish_static_lexpad"()
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_135_1349901726.63") :anon :lex :outer("cuid_136_1349901726.63")
.annotate 'file', "src\\stage2\\QRegex.nqp"
    new $P5001, 'ResizablePMCArray'
    .const 'Sub' $P5002 = "cuid_2_1349901726.63" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_3_1349901726.63" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_4_1349901726.63" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_5_1349901726.63" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_6_1349901726.63" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_7_1349901726.63" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_8_1349901726.63" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_9_1349901726.63" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_10_1349901726.63" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_11_1349901726.63" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_12_1349901726.63" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_13_1349901726.63" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_14_1349901726.63" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_15_1349901726.63" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_16_1349901726.63" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_17_1349901726.63" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_18_1349901726.63" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_19_1349901726.63" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_20_1349901726.63" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_21_1349901726.63" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_22_1349901726.63" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_23_1349901726.63" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_24_1349901726.63" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_26_1349901726.63" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_27_1349901726.63" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_28_1349901726.63" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_29_1349901726.63" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_30_1349901726.63" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_31_1349901726.63" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_32_1349901726.63" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_33_1349901726.63" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_34_1349901726.63" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_35_1349901726.63" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_36_1349901726.63" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_37_1349901726.63" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_38_1349901726.63" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_39_1349901726.63" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_40_1349901726.63" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_41_1349901726.63" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_42_1349901726.63" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_43_1349901726.63" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_44_1349901726.63" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_45_1349901726.63" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_46_1349901726.63" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_47_1349901726.63" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_48_1349901726.63" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_49_1349901726.63" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_50_1349901726.63" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_51_1349901726.63" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_52_1349901726.63" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_53_1349901726.63" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_54_1349901726.63" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_55_1349901726.63" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_56_1349901726.63" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_57_1349901726.63" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_58_1349901726.63" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_59_1349901726.63" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_60_1349901726.63" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_61_1349901726.63" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_62_1349901726.63" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_63_1349901726.63" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_64_1349901726.63" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_65_1349901726.63" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_66_1349901726.63" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_67_1349901726.63" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_68_1349901726.63" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_69_1349901726.63" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_70_1349901726.63" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_71_1349901726.63" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_72_1349901726.63" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_73_1349901726.63" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_74_1349901726.63" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_75_1349901726.63" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_76_1349901726.63" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_77_1349901726.63" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_78_1349901726.63" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_80_1349901726.63" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_81_1349901726.63" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_82_1349901726.63" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_83_1349901726.63" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_84_1349901726.63" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_96_1349901726.63" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_97_1349901726.63" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_98_1349901726.63" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_100_1349901726.63" 
    push $P5001, $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_137_1349901726.63") :load
.annotate 'file', "src\\stage2\\QRegex.nqp"
    .const 'Sub' $P5001 = "cuid_1_1349901726.63" 
    $P5002 = $P5001()
    .return ($P5002) 
.end