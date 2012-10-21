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
.sub "" :subid("cuid_1_1350819711.531") :anon :lex
.annotate 'file', "src\\stage2\\QRegex.nqp"
    .param pmc _lex_param_0 :slurpy 
    .const 'Sub' $P5020 = 'cuid_26_1350819711.531' 
    capture_lex $P5020 
    .const 'Sub' $P5020 = 'cuid_67_1350819711.531' 
    capture_lex $P5020 
    .const 'Sub' $P5020 = 'cuid_80_1350819711.531' 
    capture_lex $P5020 
    .const 'Sub' $P5020 = 'cuid_86_1350819711.531' 
    capture_lex $P5020 
    .const 'Sub' $P5020 = 'cuid_100_1350819711.531' 
    capture_lex $P5020 
    .const 'Sub' $P5020 = 'cuid_102_1350819711.531' 
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
    if $I5001 goto unless98_end238 
    can $I5002, ctxsave, "ctxsave"
    box $P5004, $I5002
    set $P5003, $P5004
    unless $I5002 goto if99_end240 
    $P5002 = ctxsave."ctxsave"()
    set $P5003, $P5002
  if99_end240:
  unless98_end238:
.annotate 'line', 1
    .const 'Sub' $P5005 = 'cuid_26_1350819711.531' 
    capture_lex $P5005
    $P5006 = $P5005()
    .const 'Sub' $P5007 = 'cuid_67_1350819711.531' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_80_1350819711.531' 
    capture_lex $P5008
    $P5009 = $P5008()
    .const 'Sub' $P5010 = 'cuid_86_1350819711.531' 
    capture_lex $P5010
    $P5011 = $P5010()
    .const 'Sub' $P5012 = 'cuid_100_1350819711.531' 
    capture_lex $P5012
    $P5013 = $P5012()
    .const 'Sub' $P5014 = 'cuid_102_1350819711.531' 
    capture_lex $P5014
    $P5015 = $P5014()
    unless _lex_param_0 goto if293_end846 
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P5016, "ModuleLoader"
    getinterp $P5018
    set $P5017, $P5018["context"]
    $P5019 = $P5016."set_mainline_module"($P5017)
  if293_end846:
    .return () 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_26_1350819711.531") :anon :lex :outer("cuid_1_1350819711.531")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 7
    .const 'Sub' $P5054 = 'cuid_2_1350819711.531' 
    capture_lex $P5054 
    .const 'Sub' $P5054 = 'cuid_3_1350819711.531' 
    capture_lex $P5054 
    .const 'Sub' $P5054 = 'cuid_4_1350819711.531' 
    capture_lex $P5054 
    .const 'Sub' $P5054 = 'cuid_5_1350819711.531' 
    capture_lex $P5054 
    .const 'Sub' $P5054 = 'cuid_6_1350819711.531' 
    capture_lex $P5054 
    .const 'Sub' $P5054 = 'cuid_7_1350819711.531' 
    capture_lex $P5054 
    .const 'Sub' $P5054 = 'cuid_8_1350819711.531' 
    capture_lex $P5054 
    .const 'Sub' $P5054 = 'cuid_9_1350819711.531' 
    capture_lex $P5054 
    .const 'Sub' $P5054 = 'cuid_10_1350819711.531' 
    capture_lex $P5054 
    .const 'Sub' $P5054 = 'cuid_11_1350819711.531' 
    capture_lex $P5054 
    .const 'Sub' $P5054 = 'cuid_12_1350819711.531' 
    capture_lex $P5054 
    .const 'Sub' $P5054 = 'cuid_13_1350819711.531' 
    capture_lex $P5054 
    .const 'Sub' $P5054 = 'cuid_14_1350819711.531' 
    capture_lex $P5054 
    .const 'Sub' $P5054 = 'cuid_15_1350819711.531' 
    capture_lex $P5054 
    .const 'Sub' $P5054 = 'cuid_16_1350819711.531' 
    capture_lex $P5054 
    .const 'Sub' $P5054 = 'cuid_17_1350819711.531' 
    capture_lex $P5054 
    .const 'Sub' $P5054 = 'cuid_18_1350819711.531' 
    capture_lex $P5054 
    .const 'Sub' $P5054 = 'cuid_19_1350819711.531' 
    capture_lex $P5054 
    .const 'Sub' $P5054 = 'cuid_20_1350819711.531' 
    capture_lex $P5054 
    .const 'Sub' $P5054 = 'cuid_21_1350819711.531' 
    capture_lex $P5054 
    .const 'Sub' $P5054 = 'cuid_22_1350819711.531' 
    capture_lex $P5054 
    .const 'Sub' $P5054 = 'cuid_23_1350819711.531' 
    capture_lex $P5054 
    .const 'Sub' $P5054 = 'cuid_24_1350819711.531' 
    capture_lex $P5054 
    .const 'Sub' $P5054 = 'cuid_25_1350819711.531' 
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
    .const 'Sub' $P5030 = 'cuid_2_1350819711.531' 
    capture_lex $P5030
    .const 'Sub' $P5031 = 'cuid_3_1350819711.531' 
    capture_lex $P5031
    .const 'Sub' $P5032 = 'cuid_4_1350819711.531' 
    capture_lex $P5032
    .const 'Sub' $P5033 = 'cuid_5_1350819711.531' 
    capture_lex $P5033
    .const 'Sub' $P5034 = 'cuid_6_1350819711.531' 
    capture_lex $P5034
    .const 'Sub' $P5035 = 'cuid_7_1350819711.531' 
    capture_lex $P5035
    .const 'Sub' $P5036 = 'cuid_8_1350819711.531' 
    capture_lex $P5036
    .const 'Sub' $P5037 = 'cuid_9_1350819711.531' 
    capture_lex $P5037
    .const 'Sub' $P5038 = 'cuid_10_1350819711.531' 
    capture_lex $P5038
    .const 'Sub' $P5039 = 'cuid_11_1350819711.531' 
    capture_lex $P5039
    .const 'Sub' $P5040 = 'cuid_12_1350819711.531' 
    capture_lex $P5040
    .const 'Sub' $P5041 = 'cuid_13_1350819711.531' 
    capture_lex $P5041
    .const 'Sub' $P5042 = 'cuid_14_1350819711.531' 
    capture_lex $P5042
    .const 'Sub' $P5043 = 'cuid_15_1350819711.531' 
    capture_lex $P5043
    .const 'Sub' $P5044 = 'cuid_16_1350819711.531' 
    capture_lex $P5044
    .const 'Sub' $P5045 = 'cuid_17_1350819711.531' 
    capture_lex $P5045
    .const 'Sub' $P5046 = 'cuid_18_1350819711.531' 
    capture_lex $P5046
    .const 'Sub' $P5047 = 'cuid_19_1350819711.531' 
    capture_lex $P5047
    .const 'Sub' $P5048 = 'cuid_20_1350819711.531' 
    capture_lex $P5048
    .const 'Sub' $P5049 = 'cuid_21_1350819711.531' 
    capture_lex $P5049
    .const 'Sub' $P5050 = 'cuid_22_1350819711.531' 
    capture_lex $P5050
    .const 'Sub' $P5051 = 'cuid_23_1350819711.531' 
    capture_lex $P5051
    .const 'Sub' $P5052 = 'cuid_24_1350819711.531' 
    capture_lex $P5052
    .const 'Sub' $P5053 = 'cuid_25_1350819711.531' 
    capture_lex $P5053
    .return ($P5053) 
.end
.HLL "nqp"
.namespace []
.sub "new" :subid("cuid_2_1350819711.531") :anon :lex :outer("cuid_26_1350819711.531")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 23
    .param pmc _lex_param_0 
    .lex "$new", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
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
.sub "addstate" :subid("cuid_3_1350819711.531") :anon :lex :outer("cuid_26_1350819711.531")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 30
    .param pmc _lex_param_0 
    .lex "$id", $I101 
    .lex "self", _lex_param_0 
    set $I101, 0
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 3
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!states"
    set $N5001, $P5003
    set $I5001, $N5001
    set $I101, $I5001
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 3
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!states"
    new $P5007, 'ResizablePMCArray'
    set $P5006[$I101], $P5007
    .return ($I101) 
.end
.HLL "nqp"
.namespace []
.sub "addedge" :subid("cuid_4_1350819711.531") :anon :lex :outer("cuid_26_1350819711.531")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 36
    .param pmc _lex_param_0 
    .param int _lex_param_1 
    .param int _lex_param_2 
    .param pmc _lex_param_3 
    .param pmc _lex_param_4 
    .param pmc _lex_param_5 :named("newedge") :optional 
    .param int haz_param_8 :opt_flag 
    if haz_param_8, default249
    box $P5020, 1
    set _lex_param_5, $P5020
  default249:
    .lex "$st", $P101 
    .lex "self", _lex_param_0 
    .lex "$from", _lex_param_1 
    .lex "$to", _lex_param_2 
    .lex "$action", _lex_param_3 
    .lex "$value", _lex_param_4 
    .lex "$newedge", _lex_param_5 
    nqp_get_sc_object $P5001, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P101, $P5001
    unless _lex_param_5 goto if100_end242 
    nqp_decontainerize $P5002, _lex_param_0
    nqp_get_sc_object $P5003, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 3
    box $P5004, 1
    repr_bind_attr_obj $P5002, $P5003, "$!edges", $P5004
  if100_end242:
    set $N5001, _lex_param_2
    set $N5002, 0
    islt $I5001, $N5001, $N5002
    unless $I5001 goto if101_end244 
.annotate 'line', 38
    nqp_decontainerize $P5005, _lex_param_0
    $P5006 = $P5005."addstate"()
    set $I5002, $P5006
    set _lex_param_2, $I5002
  if101_end244:
    nqp_decontainerize $P5008, _lex_param_0
    nqp_get_sc_object $P5009, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 3
    repr_get_attr_obj $P5010, $P5008, $P5009, "$!states"
    set $P5007, $P5010[_lex_param_1]
    unless_null $P5007, fallback245
    nqp_get_sc_object $P5011, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P5007, $P5011
  fallback245:
    set $P101, $P5007
    push $P101, _lex_param_3
    nqp_get_sc_object $P5015, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 0
    nqp_get_package_through_who $P5014, $P5015, "QAST"
    get_who $P5013, $P5014
    set $P5012, $P5013["SVal"]
    unless_null $P5012, fallback248
    nqp_get_sc_object $P5016, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P5012, $P5016
  fallback248:
    type_check $I5003, _lex_param_4, $P5012
    unless $I5003 goto if102_else246 
.annotate 'line', 41
    $P5017 = _lex_param_4."value"()
    set $P5018, $P5017
    goto if102_end247
  if102_else246:
    set $P5018, _lex_param_4
  if102_end247:
    push $P101, $P5018
    box $P5019, _lex_param_2
    push $P101, $P5019
    .return (_lex_param_2) 
.end
.HLL "nqp"
.namespace []
.sub "states" :subid("cuid_5_1350819711.531") :anon :lex :outer("cuid_26_1350819711.531")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 46
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 3
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!states"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "addnode" :subid("cuid_6_1350819711.531") :anon :lex :outer("cuid_26_1350819711.531")
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
.sub "regex_nfa" :subid("cuid_7_1350819711.531") :anon :lex :outer("cuid_26_1350819711.531")
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
    nqp_get_sc_object $P5001, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P101, $P5001
.annotate 'line', 54
    $P5003 = _lex_param_1."rxtype"()
    set $P5002, $P5003
    defined $I5001, $P5002
    if $I5001, defor250
    box $P5004, "concat"
    set $P5002, $P5004
  defor250:
    set $P101, $P5002
.annotate 'line', 55
    nqp_decontainerize $P5006, _lex_param_0
    get_how $P5005, $P5006
    nqp_decontainerize $P5007, _lex_param_0
    $P5008 = $P5005."can"($P5007, $P101)
    unless $P5008 goto if103_else251 
.annotate 'line', 56
    nqp_decontainerize $P5009, _lex_param_0
    set $S5001, $P101
    $P5010 = $P5009.$S5001(_lex_param_1, _lex_param_2, _lex_param_3)
    set $P5013, $P5010
    goto if103_end252
  if103_else251:
.annotate 'line', 57
    nqp_decontainerize $P5011, _lex_param_0
    $P5012 = $P5011."fate"(_lex_param_1, _lex_param_2, _lex_param_3)
    set $P5013, $P5012
  if103_end252:
    .return ($P5013) 
.end
.HLL "nqp"
.namespace []
.sub "fate" :subid("cuid_8_1350819711.531") :anon :lex :outer("cuid_26_1350819711.531")
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
    unless_null $P5002, fallback253
    nqp_get_sc_object $P5005, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P5002, $P5005
  fallback253:
    $P5006 = $P5001."addedge"(_lex_param_2, 0, $P5002, 0, 0 :named("newedge"))
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "alt" :subid("cuid_9_1350819711.531") :anon :lex :outer("cuid_26_1350819711.531")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 64
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param int _lex_param_2 
    .param int _lex_param_3 
    .const 'Sub' $P5007 = 'cuid_103_1350819711.531' 
    capture_lex $P5007 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$from", _lex_param_2 
    .lex "$to", _lex_param_3 
.annotate 'line', 65
    $P5004 = _lex_param_1."list"()
    set $P5001, $P5004
    iter $P5003, $P5004
  for_next258:
    unless $P5003, for_done260
    shift $P5006, $P5003
  for_redo259:
    .const 'Sub' $P5005 = 'cuid_103_1350819711.531' 
    capture_lex $P5005
    $P5001 = $P5005($P5006)
    goto for_next258
  for_done260:
    .return (_lex_param_3) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_103_1350819711.531") :anon :lex :outer("cuid_9_1350819711.531")
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
    unless $I5004 goto if105_end257 
    set $N5003, $I101
    set $N5004, 0
    isgt $I5006, $N5003, $N5004
    set $I5007, $I5006
  if105_end257:
    set $I5008, $I5007
    unless $I5007 goto if104_end255 
    store_lex "$to", $I101
    set $I5008, $I101
  if104_end255:
    .return ($I5008) 
.end
.HLL "nqp"
.namespace []
.sub "anchor" :subid("cuid_10_1350819711.531") :anon :lex :outer("cuid_26_1350819711.531")
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
    unless_null $P5002, fallback261
    nqp_get_sc_object $P5005, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P5002, $P5005
  fallback261:
    $P5006 = $P5001."addedge"(_lex_param_2, _lex_param_3, $P5002, 0)
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "cclass" :subid("cuid_11_1350819711.531") :anon :lex :outer("cuid_26_1350819711.531")
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
    unless_null $P5002, fallback262
    nqp_get_sc_object $P5005, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P5002, $P5005
  fallback262:
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
    unless_null $P5007, fallback263
    nqp_get_sc_object $P5010, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P5007, $P5010
  fallback263:
    $P5011 = $P5001."addedge"(_lex_param_2, _lex_param_3, $N5001, $P5007)
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "concat" :subid("cuid_12_1350819711.531") :anon :lex :outer("cuid_26_1350819711.531")
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
  while106_test264:
    set $N5004, _lex_param_2
    set $N5005, 0
    isgt $I5002, $N5004, $N5005
    set $I5004, $I5002
    unless $I5002 goto if107_end270 
    set $N5006, $I101
    set $N5007, $I102
    islt $I5003, $N5006, $N5007
    set $I5004, $I5003
  if107_end270:
    set $I5007, $I5004
    unless $I5004 goto while106_done268 
  while106_redo266:
.annotate 'line', 94
.annotate 'line', 95
    nqp_decontainerize $P5002, _lex_param_0
    set $P5003, _lex_param_1[$I101]
    unless_null $P5003, fallback271
    nqp_get_sc_object $P5004, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P5003, $P5004
  fallback271:
    $P5005 = $P5002."regex_nfa"($P5003, _lex_param_2, -1)
    set $I5005, $P5005
    set _lex_param_2, $I5005
    set $N5009, $I101
    set $N5010, 1
    add $N5008, $N5009, $N5010
    set $I5006, $N5008
    set $I101, $I5006
    set $I5007, $I101
    goto while106_test264 
  while106_done268:
    set $N5011, _lex_param_2
    set $N5012, 0
    isgt $I5008, $N5011, $N5012
    set $I5010, $I5008
    unless $I5008 goto if109_end275 
    set $N5013, $I102
    set $N5014, 0
    isge $I5009, $N5013, $N5014
    set $I5010, $I5009
  if109_end275:
    unless $I5010 goto if108_else272 
.annotate 'line', 98
    nqp_decontainerize $P5006, _lex_param_0
    set $P5007, _lex_param_1[$I101]
    unless_null $P5007, fallback276
    nqp_get_sc_object $P5008, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P5007, $P5008
  fallback276:
    $P5009 = $P5006."regex_nfa"($P5007, _lex_param_2, _lex_param_3)
    set $P5010, $P5009
    goto if108_end273
  if108_else272:
    box $P5011, _lex_param_3
    set $P5010, $P5011
  if108_end273:
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "enumcharlist" :subid("cuid_13_1350819711.531") :anon :lex :outer("cuid_26_1350819711.531")
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
    nqp_get_sc_object $P5001, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P101, $P5001
    set $P5002, _lex_param_1[0]
    unless_null $P5002, fallback277
    nqp_get_sc_object $P5003, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P5002, $P5003
  fallback277:
    set $P101, $P5002
.annotate 'line', 103
    $P5004 = _lex_param_1."subtype"()
    set $S5001, $P5004
    iseq $I5001, $S5001, "zerowidth"
    unless $I5001 goto if110_else278 
.annotate 'line', 104
    nqp_decontainerize $P5005, _lex_param_0
    find_lex $P5008, "$?PACKAGE"
    get_who $P5007, $P5008
    set $P5006, $P5007["$EDGE_CHARLIST"]
    unless_null $P5006, fallback280
    nqp_get_sc_object $P5009, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P5006, $P5009
  fallback280:
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
    unless_null $P5013, fallback281
    nqp_get_sc_object $P5016, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P5013, $P5016
  fallback281:
    $P5017 = $P5012."addedge"(_lex_param_2, 0, $P5013, 0)
    set $P5025, $P5017
    goto if110_end279
  if110_else278:
.annotate 'line', 107
.annotate 'line', 108
    nqp_decontainerize $P5018, _lex_param_0
    find_lex $P5021, "$?PACKAGE"
    get_who $P5020, $P5021
    set $P5019, $P5020["$EDGE_CHARLIST"]
    unless_null $P5019, fallback282
    nqp_get_sc_object $P5022, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P5019, $P5022
  fallback282:
    set $N5005, $P5019
    $P5023 = _lex_param_1."negate"()
    istrue $I5004, $P5023
    set $N5006, $I5004
    add $N5004, $N5005, $N5006
    $P5024 = $P5018."addedge"(_lex_param_2, _lex_param_3, $N5004, $P101)
    set $P5025, $P5024
  if110_end279:
    .return ($P5025) 
.end
.HLL "nqp"
.namespace []
.sub "literal" :subid("cuid_14_1350819711.531") :anon :lex :outer("cuid_26_1350819711.531")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 112
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param int _lex_param_2 
    .param int _lex_param_3 
    .const 'Sub' $P5016 = 'cuid_104_1350819711.531' 
    capture_lex $P5016 
    .const 'Sub' $P5016 = 'cuid_105_1350819711.531' 
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
    unless_null $P5001, fallback283
    nqp_get_sc_object $P5002, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P5001, $P5002
  fallback283:
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
    unless $I5003 goto if111_else284 
.annotate 'line', 115
.annotate 'line', 116
    $P5003 = _lex_param_1."subtype"()
    set $S5002, $P5003
    iseq $I5004, $S5002, "ignorecase"
    unless $I5004 goto if112_else286 
    .const 'Sub' $P5004 = 'cuid_104_1350819711.531' 
    capture_lex $P5004
    $P5005 = $P5004()
    set $P5008, $P5005
    goto if112_end287
  if112_else286:
    .const 'Sub' $P5006 = 'cuid_105_1350819711.531' 
    capture_lex $P5006
    $P5007 = $P5006()
    set $P5008, $P5007
  if112_end287:
    set $P5015, $P5008
    goto if111_end285
  if111_else284:
.annotate 'line', 136
.annotate 'line', 137
    nqp_decontainerize $P5009, _lex_param_0
    find_lex $P5012, "$?PACKAGE"
    get_who $P5011, $P5012
    set $P5010, $P5011["$EDGE_EPSILON"]
    unless_null $P5010, fallback305
    nqp_get_sc_object $P5013, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P5010, $P5013
  fallback305:
    $P5014 = $P5009."addedge"(_lex_param_2, _lex_param_3, $P5010, 0)
    set $P5015, $P5014
  if111_end285:
    .return ($P5015) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_104_1350819711.531") :anon :lex :outer("cuid_14_1350819711.531")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 116
    .lex "$litconst_lc", $S101 
    .lex "$litconst_uc", $S102 
    set $S101, ""
    set $S102, ""
    find_lex $P5002, "$node"
    set $P5001, $P5002[0]
    unless_null $P5001, fallback288
    nqp_get_sc_object $P5003, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P5001, $P5003
  fallback288:
    set $S5002, $P5001
    downcase $S5001, $S5002
    set $S101, $S5001
    find_lex $P5005, "$node"
    set $P5004, $P5005[0]
    unless_null $P5004, fallback289
    nqp_get_sc_object $P5006, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P5004, $P5006
  fallback289:
    set $S5004, $P5004
    upcase $S5003, $S5004
    set $S102, $S5003
  while113_test290:
    find_lex $I5002, "$i"
    set $N5001, $I5002
    find_lex $I5003, "$litlen"
    set $N5002, $I5003
    islt $I5001, $N5001, $N5002
    set $I5012, $I5001
    unless $I5001 goto while113_done294 
  while113_redo292:
.annotate 'line', 119
.annotate 'line', 120
    find_lex $P5008, "self"
    nqp_decontainerize $P5007, $P5008
    find_lex $I5004, "$from"
    find_lex $P5011, "$?PACKAGE"
    get_who $P5010, $P5011
    set $P5009, $P5010["$EDGE_CODEPOINT_I"]
    unless_null $P5009, fallback295
    nqp_get_sc_object $P5012, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P5009, $P5012
  fallback295:
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
    goto while113_test290 
  while113_done294:
.annotate 'line', 124
    find_lex $P5018, "self"
    nqp_decontainerize $P5017, $P5018
    find_lex $I5013, "$from"
    find_lex $I5014, "$to"
    find_lex $P5021, "$?PACKAGE"
    get_who $P5020, $P5021
    set $P5019, $P5020["$EDGE_CODEPOINT_I"]
    unless_null $P5019, fallback296
    nqp_get_sc_object $P5022, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P5019, $P5022
  fallback296:
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
.sub "" :subid("cuid_105_1350819711.531") :anon :lex :outer("cuid_14_1350819711.531")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 127
    .lex "$litconst", $S101 
    set $S101, ""
    find_lex $P5002, "$node"
    set $P5001, $P5002[0]
    unless_null $P5001, fallback297
    nqp_get_sc_object $P5003, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P5001, $P5003
  fallback297:
    set $S5001, $P5001
    set $S101, $S5001
  while114_test298:
    find_lex $I5002, "$i"
    set $N5001, $I5002
    find_lex $I5003, "$litlen"
    set $N5002, $I5003
    islt $I5001, $N5001, $N5002
    set $I5010, $I5001
    unless $I5001 goto while114_done302 
  while114_redo300:
.annotate 'line', 129
.annotate 'line', 130
    find_lex $P5005, "self"
    nqp_decontainerize $P5004, $P5005
    find_lex $I5004, "$from"
    find_lex $P5008, "$?PACKAGE"
    get_who $P5007, $P5008
    set $P5006, $P5007["$EDGE_CODEPOINT"]
    unless_null $P5006, fallback303
    nqp_get_sc_object $P5009, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P5006, $P5009
  fallback303:
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
    goto while114_test298 
  while114_done302:
.annotate 'line', 133
    find_lex $P5012, "self"
    nqp_decontainerize $P5011, $P5012
    find_lex $I5011, "$from"
    find_lex $I5012, "$to"
    find_lex $P5015, "$?PACKAGE"
    get_who $P5014, $P5015
    set $P5013, $P5014["$EDGE_CODEPOINT"]
    unless_null $P5013, fallback304
    nqp_get_sc_object $P5016, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P5013, $P5016
  fallback304:
    find_lex $I5014, "$i"
    ord $I5013, $S101, $I5014
    $P5017 = $P5011."addedge"($I5011, $I5012, $P5013, $I5013)
    .return ($P5017) 
.end
.HLL "nqp"
.namespace []
.sub "subrule" :subid("cuid_15_1350819711.531") :anon :lex :outer("cuid_26_1350819711.531")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 141
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param int _lex_param_2 
    .param int _lex_param_3 
    .const 'Sub' $P5070 = 'cuid_106_1350819711.531' 
    capture_lex $P5070 
    .const 'Sub' $P5070 = 'cuid_107_1350819711.531' 
    capture_lex $P5070 
    .lex "$subtype", $P101 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$from", _lex_param_2 
    .lex "$to", _lex_param_3 
    nqp_get_sc_object $P5001, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P101, $P5001
.annotate 'line', 142
    $P5002 = _lex_param_1."subtype"()
    set $P101, $P5002
.annotate 'line', 143
    $P5003 = _lex_param_1."name"()
    set $S5001, $P5003
    iseq $I5001, $S5001, "before"
    set $I5003, $I5001
    unless $I5001 goto if116_end309 
    $P5004 = _lex_param_1."negate"()
    isfalse $I5002, $P5004
    set $I5003, $I5002
  if116_end309:
    unless $I5003 goto if115_else306 
    .const 'Sub' $P5005 = 'cuid_106_1350819711.531' 
    capture_lex $P5005
    $P5006 = $P5005()
    set $P5069, $P5006
    goto if115_end307
  if115_else306:
    set $S5002, $P101
    isne $I5004, $S5002, "zerowidth"
    set $I5010, $I5004
    unless $I5004 goto if118_end316 
.annotate 'line', 149
    $P5007 = _lex_param_1."name"()
    set $S5003, $P5007
    iseq $I5005, $S5003, "alpha"
    set $I5009, $I5005
    if $I5005 goto unless119_end318 
    set $S5004, $P101
    iseq $I5006, $S5004, "method"
    set $I5008, $I5006
    unless $I5006 goto if120_end320 
.annotate 'line', 151
    nqp_get_sc_object $P5011, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 0
    nqp_get_package_through_who $P5010, $P5011, "QAST"
    get_who $P5009, $P5010
    set $P5008, $P5009["SVal"]
    unless_null $P5008, fallback323
    nqp_get_sc_object $P5012, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P5008, $P5012
  fallback323:
    set $P5014, _lex_param_1[0]
    unless_null $P5014, fallback324
    nqp_get_sc_object $P5015, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P5014, $P5015
  fallback324:
    set $P5013, $P5014[0]
    unless_null $P5013, fallback325
    nqp_get_sc_object $P5016, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P5013, $P5016
  fallback325:
    $P5017 = $P5008."ACCEPTS"($P5013)
    unless $P5017 goto if121_else321 
    set $P5019, _lex_param_1[0]
    unless_null $P5019, fallback326
    nqp_get_sc_object $P5020, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P5019, $P5020
  fallback326:
    set $P5018, $P5019[0]
    unless_null $P5018, fallback327
    nqp_get_sc_object $P5021, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P5018, $P5021
  fallback327:
    $P5022 = $P5018."value"()
    set $P5027, $P5022
    goto if121_end322
  if121_else321:
    set $P5024, _lex_param_1[0]
    unless_null $P5024, fallback328
    nqp_get_sc_object $P5025, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P5024, $P5025
  fallback328:
    set $P5023, $P5024[0]
    unless_null $P5023, fallback329
    nqp_get_sc_object $P5026, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P5023, $P5026
  fallback329:
    set $P5027, $P5023
  if121_end322:
    set $S5005, $P5027
    iseq $I5007, $S5005, "alpha"
    set $I5008, $I5007
  if120_end320:
    set $I5009, $I5008
  unless119_end318:
    set $I5010, $I5009
  if118_end316:
    unless $I5010 goto if117_else313 
.annotate 'line', 152
    nqp_decontainerize $P5028, _lex_param_0
    find_lex $P5031, "$?PACKAGE"
    get_who $P5030, $P5031
    set $P5029, $P5030["$EDGE_CHARCLASS"]
    unless_null $P5029, fallback330
    nqp_get_sc_object $P5032, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P5029, $P5032
  fallback330:
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
    unless_null $P5036, fallback331
    nqp_get_sc_object $P5039, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P5036, $P5039
  fallback331:
    set $N5005, $P5036
    $P5040 = _lex_param_1."negate"()
    set $N5006, $P5040
    add $N5004, $N5005, $N5006
    $P5041 = $P5035."addedge"(_lex_param_2, _lex_param_3, $N5004, 95)
    set $P5068, $P5041
    goto if117_end314
  if117_else313:
    set $S5006, $P101
    iseq $I5012, $S5006, "zerowidth"
    unless $I5012 goto if122_else332 
.annotate 'line', 156
.annotate 'line', 157
    $P5042 = _lex_param_1."negate"()
    unless $P5042 goto if123_else334 
.annotate 'line', 158
    nqp_decontainerize $P5043, _lex_param_0
    $P5044 = $P5043."fate"(_lex_param_1, _lex_param_2, _lex_param_3)
    set $P5047, $P5044
    goto if123_end335
  if123_else334:
    .const 'Sub' $P5045 = 'cuid_107_1350819711.531' 
    capture_lex $P5045
    $P5046 = $P5045()
    set $P5047, $P5046
  if123_end335:
    set $P5067, $P5047
    goto if122_end333
  if122_else332:
.annotate 'line', 166
    set $S5007, $P101
    iseq $I5013, $S5007, "capture"
    box $P5051, $I5013
    set $P5050, $P5051
    unless $I5013 goto if125_end340 
    set $P5048, _lex_param_1[1]
    unless_null $P5048, fallback341
    nqp_get_sc_object $P5049, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P5048, $P5049
  fallback341:
    set $P5050, $P5048
  if125_end340:
    unless $P5050 goto if124_else337 
.annotate 'line', 168
    nqp_decontainerize $P5052, _lex_param_0
    set $P5053, _lex_param_1[1]
    unless_null $P5053, fallback342
    nqp_get_sc_object $P5054, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P5053, $P5054
  fallback342:
    $P5055 = $P5052."regex_nfa"($P5053, _lex_param_2, _lex_param_3)
    set $P5066, $P5055
    goto if124_end338
  if124_else337:
.annotate 'line', 169
    nqp_decontainerize $P5056, _lex_param_0
    find_lex $P5059, "$?PACKAGE"
    get_who $P5058, $P5059
    set $P5057, $P5058["$EDGE_SUBRULE"]
    unless_null $P5057, fallback343
    nqp_get_sc_object $P5060, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P5057, $P5060
  fallback343:
    set $P5062, _lex_param_1[0]
    unless_null $P5062, fallback344
    nqp_get_sc_object $P5063, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P5062, $P5063
  fallback344:
    set $P5061, $P5062[0]
    unless_null $P5061, fallback345
    nqp_get_sc_object $P5064, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P5061, $P5064
  fallback345:
    $P5065 = $P5056."addedge"(_lex_param_2, _lex_param_3, $P5057, $P5061)
    set $P5066, $P5065
  if124_end338:
    set $P5067, $P5066
  if122_end333:
    set $P5068, $P5067
  if117_end314:
    set $P5069, $P5068
  if115_end307:
    .return ($P5069) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_106_1350819711.531") :anon :lex :outer("cuid_15_1350819711.531")
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
    unless_null $P5008, fallback310
    nqp_get_sc_object $P5010, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P5008, $P5010
  fallback310:
    set $P5007, $P5008[1]
    unless_null $P5007, fallback311
    nqp_get_sc_object $P5011, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P5007, $P5011
  fallback311:
    set $P5006, $P5007["orig_qast"]
    unless_null $P5006, fallback312
    nqp_get_sc_object $P5012, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P5006, $P5012
  fallback312:
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
.sub "" :subid("cuid_107_1350819711.531") :anon :lex :outer("cuid_15_1350819711.531")
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
    unless_null $P5006, fallback336
    nqp_get_sc_object $P5009, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P5006, $P5009
  fallback336:
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
.sub "quant" :subid("cuid_16_1350819711.531") :anon :lex :outer("cuid_26_1350819711.531")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 173
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param int _lex_param_2 
    .param int _lex_param_3 
    .const 'Sub' $P5025 = 'cuid_109_1350819711.531' 
    capture_lex $P5025 
    .const 'Sub' $P5025 = 'cuid_111_1350819711.531' 
    capture_lex $P5025 
    .const 'Sub' $P5025 = 'cuid_112_1350819711.531' 
    capture_lex $P5025 
    .const 'Sub' $P5025 = 'cuid_113_1350819711.531' 
    capture_lex $P5025 
    .const 'Sub' $P5025 = 'cuid_114_1350819711.531' 
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
    set_label $P101, lexotic_346
    .lex "RETURN", $P101
    set $N5002, 0
.annotate 'line', 174
    $P5002 = _lex_param_1."min"()
    set $P5001, $P5002
    defined $I5001, $P5001
    if $I5001, defor348
    box $P5003, 0
    set $P5001, $P5003
  defor348:
    set $N5003, $P5001
    add $N5001, $N5002, $N5003
    set $I5002, $N5001
    set $I101, $I5002
    set $N5005, 0
.annotate 'line', 175
    $P5005 = _lex_param_1."max"()
    set $P5004, $P5005
    defined $I5003, $P5004
    if $I5003, defor349
    box $P5006, -1
    set $P5004, $P5006
  defor349:
    set $N5006, $P5004
    add $N5004, $N5005, $N5006
    set $I5004, $N5004
    set $I102, $I5004
    set $N5007, $I102
    set $N5008, 1
    isgt $I5005, $N5007, $N5008
    set $I5007, $I5005
    if $I5005 goto unless127_end353 
    set $N5009, $I101
    set $N5010, 1
    isgt $I5006, $N5009, $N5010
    set $I5007, $I5006
  unless127_end353:
    unless $I5007 goto if126_end351 
    .const 'Sub' $P5007 = 'cuid_109_1350819711.531' 
    capture_lex $P5007
    $P5008 = $P5007()
  if126_end351:
    set $N5011, $I102
    set $N5012, -1
    iseq $I5008, $N5011, $N5012
    unless $I5008 goto if139_else389 
.annotate 'line', 208
    set $N5013, $I101
    set $N5014, 0
    iseq $I5009, $N5013, $N5014
    unless $I5009 goto if140_else391 
.annotate 'line', 209
    set $P5009, _lex_param_1[1]
    unless_null $P5009, fallback395
    nqp_get_sc_object $P5010, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P5009, $P5010
  fallback395:
    defined $I5010, $P5009
    unless $I5010 goto if141_else393 
    .const 'Sub' $P5011 = 'cuid_111_1350819711.531' 
    capture_lex $P5011
    $P5012 = $P5011()
    set $P5015, $P5012
    goto if141_end394
  if141_else393:
    .const 'Sub' $P5013 = 'cuid_112_1350819711.531' 
    capture_lex $P5013
    $P5014 = $P5013()
    set $P5015, $P5014
  if141_end394:
    goto if140_end392
  if140_else391:
    .const 'Sub' $P5016 = 'cuid_113_1350819711.531' 
    capture_lex $P5016
    $P5017 = $P5016()
  if140_end392:
    box $P5024, _lex_param_3
    set $P5023, $P5024
    goto if139_end390
  if139_else389:
    set $N5015, $I101
    set $N5016, 0
    iseq $I5011, $N5015, $N5016
    set $I5013, $I5011
    unless $I5011 goto if150_end426 
    set $N5017, $I102
    set $N5018, 1
    iseq $I5012, $N5017, $N5018
    set $I5013, $I5012
  if150_end426:
    unless $I5013 goto if149_else423 
    .const 'Sub' $P5018 = 'cuid_114_1350819711.531' 
    capture_lex $P5018
    $P5019 = $P5018()
    set $P5022, $P5019
    goto if149_end424
  if149_else423:
.annotate 'line', 246
.annotate 'line', 247
    nqp_decontainerize $P5020, _lex_param_0
    $P5021 = $P5020."fate"(_lex_param_1, _lex_param_2, _lex_param_3)
    set $P5022, $P5021
  if149_end424:
    set $P5023, $P5022
  if139_end390:
    goto lexotic_347
  lexotic_346:
    .get_results ($P5023)
  lexotic_347:
    .return ($P5023) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_109_1350819711.531") :anon :lex :outer("cuid_16_1350819711.531")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 177
    .const 'Sub' $P5028 = 'cuid_108_1350819711.531' 
    capture_lex $P5028 
    .const 'Sub' $P5028 = 'cuid_110_1350819711.531' 
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
    unless_null $P5001, fallback354
    nqp_get_sc_object $P5003, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P5001, $P5003
  fallback354:
    defined $I5001, $P5001
    set $I103, $I5001
  while128_test355:
    set $N5001, $I101
    find_lex $I5003, "$max"
    set $N5002, $I5003
    islt $I5002, $N5001, $N5002
    set $I5006, $I5002
    if $I5002 goto unless129_end361 
    set $N5003, $I101
    find_lex $I5005, "$min"
    set $N5004, $I5005
    islt $I5004, $N5003, $N5004
    set $I5006, $I5004
  unless129_end361:
    set $I5016, $I5006
    unless $I5006 goto while128_done359 
  while128_redo357:
.annotate 'line', 181
    set $N5005, $I101
    find_lex $I5008, "$min"
    set $N5006, $I5008
    isge $I5007, $N5005, $N5006
    unless $I5007 goto if130_end363 
    .const 'Sub' $P5004 = 'cuid_108_1350819711.531' 
    capture_lex $P5004
    $P5005 = $P5004()
  if130_end363:
    set $I5010, $I103
    unless $I103 goto if133_end370 
    set $N5007, $I101
    set $N5008, 0
    isgt $I5009, $N5007, $N5008
    set $I5010, $I5009
  if133_end370:
    unless $I5010 goto if132_end368 
.annotate 'line', 186
.annotate 'line', 187
    find_lex $P5007, "self"
    nqp_decontainerize $P5006, $P5007
    find_lex $P5009, "$node"
    set $P5008, $P5009[1]
    unless_null $P5008, fallback371
    nqp_get_sc_object $P5010, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P5008, $P5010
  fallback371:
    find_lex $I5011, "$from"
    $P5011 = $P5006."regex_nfa"($P5008, $I5011, -1)
    set $I5012, $P5011
    store_lex "$from", $I5012
  if132_end368:
.annotate 'line', 189
    find_lex $P5013, "self"
    nqp_decontainerize $P5012, $P5013
    find_lex $P5015, "$node"
    set $P5014, $P5015[0]
    unless_null $P5014, fallback372
    nqp_get_sc_object $P5016, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P5014, $P5016
  fallback372:
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
    goto while128_test355 
  while128_done359:
.annotate 'line', 192
    find_lex $P5019, "self"
    nqp_decontainerize $P5018, $P5019
    find_lex $I5017, "$from"
    find_lex $I5018, "$to"
    find_lex $P5022, "$?PACKAGE"
    get_who $P5021, $P5022
    set $P5020, $P5021["$EDGE_EPSILON"]
    unless_null $P5020, fallback373
    nqp_get_sc_object $P5023, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P5020, $P5023
  fallback373:
    $P5018."addedge"($I5017, $I5018, $P5020, 0)
    find_lex $I5020, "$max"
    set $N5012, $I5020
    set $N5013, -1
    iseq $I5019, $N5012, $N5013
    unless $I5019 goto if134_end375 
    .const 'Sub' $P5024 = 'cuid_110_1350819711.531' 
    capture_lex $P5024
    $P5025 = $P5024()
  if134_end375:
    find_lex $I5022, "$to"
    set $N5014, $I5022
    set $N5015, 0
    islt $I5021, $N5014, $N5015
    set $I5024, $I5021
    unless $I5021 goto if138_end388 
    set $N5016, $I102
    set $N5017, 0
    isgt $I5023, $N5016, $N5017
    set $I5024, $I5023
  if138_end388:
    unless $I5024 goto if137_end386 
    store_lex "$to", $I102
  if137_end386:
    find_lex $I5025, "$to"
    find_lex $P5026, "RETURN"
    $P5027 = $P5026($I5025)
    .return ($P5027) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_108_1350819711.531") :anon :lex :outer("cuid_109_1350819711.531")
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
    unless_null $P5003, fallback364
    nqp_get_sc_object $P5006, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P5003, $P5006
  fallback364:
    $P5007 = $P5001."addedge"($I5001, $I5002, $P5003, 0)
    set $I5003, $P5007
    set $I101, $I5003
    find_lex $I5004, "$st"
    set $I5005, $I5004
    if $I5004 goto unless131_end366 
    set $I5005, $I101
  unless131_end366:
    store_lex "$st", $I5005
    .return ($I5005) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_110_1350819711.531") :anon :lex :outer("cuid_109_1350819711.531")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 193
    .lex "$start", $I101 
    .lex "$looper", $P101 
    set $I101, 0
    nqp_get_sc_object $P5001, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
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
    unless_null $P5007, fallback376
    nqp_get_sc_object $P5010, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P5007, $P5010
  fallback376:
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
    unless_null $P5016, fallback377
    nqp_get_sc_object $P5019, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P5016, $P5019
  fallback377:
    $P5014."addedge"($P101, $I5003, $P5016, 0)
.annotate 'line', 199
    find_lex $P5021, "self"
    nqp_decontainerize $P5020, $P5021
    find_lex $I5004, "$from"
    find_lex $P5024, "$?PACKAGE"
    get_who $P5023, $P5024
    set $P5022, $P5023["$EDGE_EPSILON"]
    unless_null $P5022, fallback378
    nqp_get_sc_object $P5025, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P5022, $P5025
  fallback378:
    $P5020."addedge"($P101, $I5004, $P5022, 0)
    find_lex $I5005, "$has_sep"
    set $I5008, $I5005
    unless $I5005 goto if136_end382 
    find_lex $I5007, "$count"
    set $N5001, $I5007
    set $N5002, 0
    isgt $I5006, $N5001, $N5002
    set $I5008, $I5006
  if136_end382:
    unless $I5008 goto if135_end380 
.annotate 'line', 200
.annotate 'line', 201
    find_lex $P5027, "self"
    nqp_decontainerize $P5026, $P5027
    find_lex $P5029, "$node"
    set $P5028, $P5029[1]
    unless_null $P5028, fallback383
    nqp_get_sc_object $P5030, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P5028, $P5030
  fallback383:
    find_lex $I5009, "$from"
    $P5031 = $P5026."regex_nfa"($P5028, $I5009, -1)
    set $I5010, $P5031
    store_lex "$from", $I5010
  if135_end380:
.annotate 'line', 203
    find_lex $P5033, "self"
    nqp_decontainerize $P5032, $P5033
    find_lex $P5035, "$node"
    set $P5034, $P5035[0]
    unless_null $P5034, fallback384
    nqp_get_sc_object $P5036, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P5034, $P5036
  fallback384:
    find_lex $I5011, "$from"
    $P5037 = $P5032."regex_nfa"($P5034, $I5011, $P101)
    .return ($P5037) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_111_1350819711.531") :anon :lex :outer("cuid_16_1350819711.531")
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
    unless_null $P5006, fallback396
    nqp_get_sc_object $P5009, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P5006, $P5009
  fallback396:
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
    unless_null $P5015, fallback397
    nqp_get_sc_object $P5017, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P5015, $P5017
  fallback397:
    $P5018 = $P5013."regex_nfa"($P5015, $I101, $I102)
    set $I5004, $P5018
    set $I103, $I5004
.annotate 'line', 215
    find_lex $P5020, "self"
    nqp_decontainerize $P5019, $P5020
    find_lex $P5022, "$node"
    set $P5021, $P5022[1]
    unless_null $P5021, fallback398
    nqp_get_sc_object $P5023, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P5021, $P5023
  fallback398:
    $P5019."regex_nfa"($P5021, $I102, $I101)
.annotate 'line', 216
    find_lex $P5025, "self"
    nqp_decontainerize $P5024, $P5025
    find_lex $I5005, "$to"
    find_lex $P5028, "$?PACKAGE"
    get_who $P5027, $P5028
    set $P5026, $P5027["$EDGE_EPSILON"]
    unless_null $P5026, fallback399
    nqp_get_sc_object $P5029, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P5026, $P5029
  fallback399:
    $P5024."addedge"($I102, $I5005, $P5026, 0)
.annotate 'line', 217
    find_lex $P5031, "self"
    nqp_decontainerize $P5030, $P5031
    find_lex $I5006, "$from"
    find_lex $I5007, "$to"
    find_lex $P5034, "$?PACKAGE"
    get_who $P5033, $P5034
    set $P5032, $P5033["$EDGE_EPSILON"]
    unless_null $P5032, fallback400
    nqp_get_sc_object $P5035, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P5032, $P5035
  fallback400:
    $P5036 = $P5030."addedge"($I5006, $I5007, $P5032, 0)
    set $I5008, $P5036
    set $I103, $I5008
    find_lex $I5010, "$to"
    set $N5001, $I5010
    set $N5002, 0
    islt $I5009, $N5001, $N5002
    set $I5012, $I5009
    unless $I5009 goto if143_end404 
    set $N5003, $I103
    set $N5004, 0
    isgt $I5011, $N5003, $N5004
    set $I5012, $I5011
  if143_end404:
    set $I5013, $I5012
    unless $I5012 goto if142_end402 
    store_lex "$to", $I103
    set $I5013, $I103
  if142_end402:
    .return ($I5013) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_112_1350819711.531") :anon :lex :outer("cuid_16_1350819711.531")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 220
    .lex "$st", $I101 
    set $I101, 0
.annotate 'line', 221
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    find_lex $P5004, "$node"
    set $P5003, $P5004[0]
    unless_null $P5003, fallback405
    nqp_get_sc_object $P5005, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P5003, $P5005
  fallback405:
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
    unless_null $P5008, fallback406
    nqp_get_sc_object $P5011, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P5008, $P5011
  fallback406:
    $P5012 = $P5006."addedge"($I5003, $I5004, $P5008, 0)
    set $I5005, $P5012
    set $I101, $I5005
    find_lex $I5007, "$to"
    set $N5001, $I5007
    set $N5002, 0
    islt $I5006, $N5001, $N5002
    set $I5009, $I5006
    unless $I5006 goto if145_end410 
    set $N5003, $I101
    set $N5004, 0
    isgt $I5008, $N5003, $N5004
    set $I5009, $I5008
  if145_end410:
    set $I5010, $I5009
    unless $I5009 goto if144_end408 
    store_lex "$to", $I101
    set $I5010, $I101
  if144_end408:
    .return ($I5010) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_113_1350819711.531") :anon :lex :outer("cuid_16_1350819711.531")
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
    unless_null $P5006, fallback411
    nqp_get_sc_object $P5009, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P5006, $P5009
  fallback411:
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
    unless_null $P5015, fallback412
    nqp_get_sc_object $P5017, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P5015, $P5017
  fallback412:
    $P5018 = $P5013."regex_nfa"($P5015, $I101, $I102)
    set $I5004, $P5018
    set $I103, $I5004
    find_lex $P5020, "$node"
    set $P5019, $P5020[1]
    unless_null $P5019, fallback415
    nqp_get_sc_object $P5021, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P5019, $P5021
  fallback415:
    defined $I5005, $P5019
    unless $I5005 goto if146_else413 
.annotate 'line', 230
.annotate 'line', 231
    find_lex $P5023, "self"
    nqp_decontainerize $P5022, $P5023
    find_lex $P5025, "$node"
    set $P5024, $P5025[1]
    unless_null $P5024, fallback416
    nqp_get_sc_object $P5026, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P5024, $P5026
  fallback416:
    $P5027 = $P5022."regex_nfa"($P5024, $I102, $I101)
    goto if146_end414
  if146_else413:
.annotate 'line', 233
.annotate 'line', 234
    find_lex $P5029, "self"
    nqp_decontainerize $P5028, $P5029
    find_lex $P5032, "$?PACKAGE"
    get_who $P5031, $P5032
    set $P5030, $P5031["$EDGE_EPSILON"]
    unless_null $P5030, fallback417
    nqp_get_sc_object $P5033, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P5030, $P5033
  fallback417:
    $P5034 = $P5028."addedge"($I102, $I101, $P5030, 0)
  if146_end414:
.annotate 'line', 236
    find_lex $P5036, "self"
    nqp_decontainerize $P5035, $P5036
    find_lex $I5006, "$to"
    find_lex $P5039, "$?PACKAGE"
    get_who $P5038, $P5039
    set $P5037, $P5038["$EDGE_EPSILON"]
    unless_null $P5037, fallback418
    nqp_get_sc_object $P5040, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P5037, $P5040
  fallback418:
    $P5035."addedge"($I102, $I5006, $P5037, 0)
    find_lex $I5008, "$to"
    set $N5001, $I5008
    set $N5002, 0
    islt $I5007, $N5001, $N5002
    set $I5010, $I5007
    unless $I5007 goto if148_end422 
    set $N5003, $I103
    set $N5004, 0
    isgt $I5009, $N5003, $N5004
    set $I5010, $I5009
  if148_end422:
    set $I5011, $I5010
    unless $I5010 goto if147_end420 
    store_lex "$to", $I103
    set $I5011, $I103
  if147_end420:
    .return ($I5011) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_114_1350819711.531") :anon :lex :outer("cuid_16_1350819711.531")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 240
    .lex "$st", $I101 
    set $I101, 0
.annotate 'line', 241
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    find_lex $P5004, "$node"
    set $P5003, $P5004[0]
    unless_null $P5003, fallback427
    nqp_get_sc_object $P5005, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P5003, $P5005
  fallback427:
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
    unless $I5004 goto if152_end431 
    set $N5003, $I101
    set $N5004, 0
    isgt $I5006, $N5003, $N5004
    set $I5007, $I5006
  if152_end431:
    unless $I5007 goto if151_end429 
    store_lex "$to", $I101
  if151_end429:
.annotate 'line', 243
    find_lex $P5008, "self"
    nqp_decontainerize $P5007, $P5008
    find_lex $I5008, "$from"
    find_lex $I5009, "$to"
    find_lex $P5011, "$?PACKAGE"
    get_who $P5010, $P5011
    set $P5009, $P5010["$EDGE_EPSILON"]
    unless_null $P5009, fallback432
    nqp_get_sc_object $P5012, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P5009, $P5012
  fallback432:
    $P5013 = $P5007."addedge"($I5008, $I5009, $P5009, 0)
    set $I5010, $P5013
    set $I101, $I5010
    find_lex $I5012, "$to"
    set $N5005, $I5012
    set $N5006, 0
    islt $I5011, $N5005, $N5006
    set $I5014, $I5011
    unless $I5011 goto if154_end436 
    set $N5007, $I101
    set $N5008, 0
    isgt $I5013, $N5007, $N5008
    set $I5014, $I5013
  if154_end436:
    unless $I5014 goto if153_end434 
    store_lex "$to", $I101
  if153_end434:
    find_lex $I5015, "$to"
    .return ($I5015) 
.end
.HLL "nqp"
.namespace []
.sub "qastnode" :subid("cuid_17_1350819711.531") :anon :lex :outer("cuid_26_1350819711.531")
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
    if $I5001 goto unless156_end440 
    $P5002 = _lex_param_1."subtype"()
    set $S5002, $P5002
    iseq $I5002, $S5002, "declarative"
    set $I5003, $I5002
  unless156_end440:
    unless $I5003 goto if155_else437 
.annotate 'line', 253
    nqp_decontainerize $P5003, _lex_param_0
    find_lex $P5006, "$?PACKAGE"
    get_who $P5005, $P5006
    set $P5004, $P5005["$EDGE_EPSILON"]
    unless_null $P5004, fallback441
    nqp_get_sc_object $P5007, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P5004, $P5007
  fallback441:
    $P5008 = $P5003."addedge"(_lex_param_2, _lex_param_3, $P5004, 0)
    set $P5011, $P5008
    goto if155_end438
  if155_else437:
.annotate 'line', 254
    nqp_decontainerize $P5009, _lex_param_0
    $P5010 = $P5009."fate"(_lex_param_1, _lex_param_2, _lex_param_3)
    set $P5011, $P5010
  if155_end438:
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "subcapture" :subid("cuid_18_1350819711.531") :anon :lex :outer("cuid_26_1350819711.531")
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
    unless_null $P5002, fallback442
    nqp_get_sc_object $P5003, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P5002, $P5003
  fallback442:
    $P5004 = $P5001."regex_nfa"($P5002, _lex_param_2, _lex_param_3)
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "save" :subid("cuid_19_1350819711.531") :anon :lex :outer("cuid_26_1350819711.531")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 261
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("non_empty") :optional 
    .param int haz_param_9 :opt_flag 
    if haz_param_9, default450
    nqp_get_sc_object $P5015, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set _lex_param_1, $P5015
  default450:
    .lex "self", _lex_param_0 
    .lex "$non_empty", _lex_param_1 
    root_new $P101, ['parrot';'Continuation']
    set_label $P101, lexotic_443
    .lex "RETURN", $P101
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 3
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!edges"
    if $P5003 goto unless157_end446 
.annotate 'line', 262
    if _lex_param_1 goto unless158_end448 
    find_lex $P5004, "RETURN"
    $P5005 = $P5004(0)
  unless158_end448:
.annotate 'line', 264
    nqp_decontainerize $P5006, _lex_param_0
    find_lex $P5009, "$?PACKAGE"
    get_who $P5008, $P5009
    set $P5007, $P5008["$EDGE_FATE"]
    unless_null $P5007, fallback449
    nqp_get_sc_object $P5010, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P5007, $P5010
  fallback449:
    $P5011 = $P5006."addedge"(1, 0, $P5007, 0, 1 :named("newedge"))
  unless157_end446:
    nqp_decontainerize $P5012, _lex_param_0
    nqp_get_sc_object $P5013, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 3
    repr_get_attr_obj $P5014, $P5012, $P5013, "$!states"
    goto lexotic_444
  lexotic_443:
    .get_results ($P5014)
  lexotic_444:
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "qast" :subid("cuid_20_1350819711.531") :anon :lex :outer("cuid_26_1350819711.531")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 269
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("non_empty") :optional 
    .param int haz_param_10 :opt_flag 
    .const 'Sub' $P5028 = 'cuid_118_1350819711.531' 
    capture_lex $P5028 
    if haz_param_10, default477
    nqp_get_sc_object $P5027, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set _lex_param_1, $P5027
  default477:
    .lex "$past", $P101 
    .lex "self", _lex_param_0 
    .lex "$non_empty", _lex_param_1 
    nqp_get_sc_object $P5001, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P101, $P5001
    root_new $P102, ['parrot';'Continuation']
    set_label $P102, lexotic_451
    .lex "RETURN", $P102
    nqp_decontainerize $P5002, _lex_param_0
    nqp_get_sc_object $P5003, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 3
    repr_get_attr_obj $P5004, $P5002, $P5003, "$!edges"
    if $P5004 goto unless159_end454 
.annotate 'line', 270
    if _lex_param_1 goto unless160_end456 
    find_lex $P5005, "RETURN"
    $P5006 = $P5005(0)
  unless160_end456:
.annotate 'line', 272
    nqp_decontainerize $P5007, _lex_param_0
    find_lex $P5010, "$?PACKAGE"
    get_who $P5009, $P5010
    set $P5008, $P5009["$EDGE_FATE"]
    unless_null $P5008, fallback457
    nqp_get_sc_object $P5011, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P5008, $P5011
  fallback457:
    $P5012 = $P5007."addedge"(1, 0, $P5008, 0, 1 :named("newedge"))
  unless159_end454:
.annotate 'line', 274
    nqp_get_sc_object $P5016, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 0
    nqp_get_package_through_who $P5015, $P5016, "QAST"
    get_who $P5014, $P5015
    set $P5013, $P5014["Op"]
    unless_null $P5013, fallback458
    nqp_get_sc_object $P5017, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P5013, $P5017
  fallback458:
    $P5018 = $P5013."new"("list" :named("op"))
    set $P101, $P5018
    nqp_decontainerize $P5022, _lex_param_0
    nqp_get_sc_object $P5023, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 3
    repr_get_attr_obj $P5024, $P5022, $P5023, "$!states"
    set $P5019, $P5024
    iter $P5021, $P5024
  for_next474:
    unless $P5021, for_done476
    shift $P5026, $P5021
  for_redo475:
    .const 'Sub' $P5025 = 'cuid_118_1350819711.531' 
    capture_lex $P5025
    $P5019 = $P5025($P5026)
    goto for_next474
  for_done476:
    goto lexotic_452
  lexotic_451:
    .get_results ($P101)
  lexotic_452:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_118_1350819711.531") :anon :lex :outer("cuid_20_1350819711.531")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 275
    .param pmc _lex_param_0 
    .const 'Sub' $P5015 = 'cuid_117_1350819711.531' 
    capture_lex $P5015 
    .lex "$list", $P101 
    .lex "@values", _lex_param_0 
    nqp_get_sc_object $P5001, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P101, $P5001
.annotate 'line', 276
    nqp_get_sc_object $P5005, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 0
    nqp_get_package_through_who $P5004, $P5005, "QAST"
    get_who $P5003, $P5004
    set $P5002, $P5003["Op"]
    unless_null $P5002, fallback459
    nqp_get_sc_object $P5006, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P5002, $P5006
  fallback459:
    $P5007 = $P5002."new"("list" :named("op"))
    set $P101, $P5007
    set $P5008, _lex_param_0
    iter $P5010, _lex_param_0
  for_next471:
    unless $P5010, for_done473
    shift $P5012, $P5010
  for_redo472:
    .const 'Sub' $P5011 = 'cuid_117_1350819711.531' 
    capture_lex $P5011
    $P5008 = $P5011($P5012)
    goto for_next471
  for_done473:
.annotate 'line', 292
    find_lex $P5013, "$past"
    $P5014 = $P5013."push"($P101)
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_117_1350819711.531") :anon :lex :outer("cuid_118_1350819711.531")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 277
    .param pmc _lex_param_0 
    .const 'Sub' $P5021 = 'cuid_116_1350819711.531' 
    capture_lex $P5021 
    .lex "$_", _lex_param_0 
    nqp_islist $I5001, _lex_param_0
    unless $I5001 goto if161_else460 
    .const 'Sub' $P5001 = 'cuid_116_1350819711.531' 
    capture_lex $P5001
    $P5002 = $P5001()
    set $P5020, $P5002
    goto if161_end461
  if161_else460:
    set $N5001, _lex_param_0
    set $S5001, $N5001
    set $S5002, _lex_param_0
    iseq $I5002, $S5001, $S5002
    unless $I5002 goto if162_else467 
.annotate 'line', 285
.annotate 'line', 286
    find_lex $P5003, "$list"
    nqp_get_sc_object $P5007, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 0
    nqp_get_package_through_who $P5006, $P5007, "QAST"
    get_who $P5005, $P5006
    set $P5004, $P5005["IVal"]
    unless_null $P5004, fallback469
    nqp_get_sc_object $P5008, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P5004, $P5008
  fallback469:
    $P5009 = $P5004."new"(_lex_param_0 :named("value"))
    $P5010 = $P5003."push"($P5009)
    set $P5019, $P5010
    goto if162_end468
  if162_else467:
.annotate 'line', 288
.annotate 'line', 289
    find_lex $P5011, "$list"
    nqp_get_sc_object $P5015, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 0
    nqp_get_package_through_who $P5014, $P5015, "QAST"
    get_who $P5013, $P5014
    set $P5012, $P5013["SVal"]
    unless_null $P5012, fallback470
    nqp_get_sc_object $P5016, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P5012, $P5016
  fallback470:
    $P5017 = $P5012."new"(_lex_param_0 :named("value"))
    $P5018 = $P5011."push"($P5017)
    set $P5019, $P5018
  if162_end468:
    set $P5020, $P5019
  if161_end461:
    .return ($P5020) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_116_1350819711.531") :anon :lex :outer("cuid_117_1350819711.531")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 278
    .const 'Sub' $P5016 = 'cuid_115_1350819711.531' 
    capture_lex $P5016 
    .lex "$arglist", $P101 
    nqp_get_sc_object $P5001, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P101, $P5001
.annotate 'line', 279
    nqp_get_sc_object $P5005, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 0
    nqp_get_package_through_who $P5004, $P5005, "QAST"
    get_who $P5003, $P5004
    set $P5002, $P5003["Op"]
    unless_null $P5002, fallback462
    nqp_get_sc_object $P5006, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P5002, $P5006
  fallback462:
    $P5007 = $P5002."new"("list_i" :named("op"))
    set $P101, $P5007
    find_lex $P5011, "$_"
    set $P5008, $P5011
    iter $P5010, $P5011
  for_next464:
    unless $P5010, for_done466
    shift $P5013, $P5010
  for_redo465:
    .const 'Sub' $P5012 = 'cuid_115_1350819711.531' 
    capture_lex $P5012
    $P5008 = $P5012($P5013)
    goto for_next464
  for_done466:
.annotate 'line', 283
    find_lex $P5014, "$list"
    $P5015 = $P5014."push"($P101)
    .return ($P5015) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_115_1350819711.531") :anon :lex :outer("cuid_116_1350819711.531")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 280
    .param pmc _lex_param_0 
    .lex "$i", _lex_param_0 
.annotate 'line', 281
    find_lex $P5001, "$arglist"
    nqp_get_sc_object $P5005, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 0
    nqp_get_package_through_who $P5004, $P5005, "QAST"
    get_who $P5003, $P5004
    set $P5002, $P5003["IVal"]
    unless_null $P5002, fallback463
    nqp_get_sc_object $P5006, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P5002, $P5006
  fallback463:
    $P5007 = $P5002."new"(_lex_param_0 :named("value"))
    $P5008 = $P5001."push"($P5007)
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "mergesubrule" :subid("cuid_21_1350819711.531") :anon :lex :outer("cuid_26_1350819711.531")
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
    .const 'Sub' $P5014 = 'cuid_119_1350819711.531' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_121_1350819711.531' 
    capture_lex $P5014 
    if haz_param_11, default500
    new $P5013, 'Hash'
    set _lex_param_6, $P5013
  default500:
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
    unless $I5001 goto if163_end479 
.annotate 'line', 301
    exists $I5003, $P101[_lex_param_5]
    not $I5002, $I5003
    unless $I5002 goto if164_end481 
    .const 'Sub' $P5004 = 'cuid_119_1350819711.531' 
    capture_lex $P5004
    $P5005 = $P5004()
  if164_end481:
    isfalse $I5004, $P102
    set $I5007, $I5004
    unless $I5004 goto if168_end489 
    exists $I5006, $P101[_lex_param_5]
    not $I5005, $I5006
    set $I5007, $I5005
  if168_end489:
    box $P5009, $I5007
    set $P5008, $P5009
    unless $I5007 goto if167_end487 
    .const 'Sub' $P5006 = 'cuid_121_1350819711.531' 
    capture_lex $P5006
    $P5007 = $P5006()
    set $P5008, $P5007
  if167_end487:
  if163_end479:
    box $P5010, 1
    set $P101[_lex_param_5], $P5010
.annotate 'line', 323
    nqp_decontainerize $P5011, _lex_param_0
    $P5012 = $P5011."mergesubstates"(_lex_param_1, _lex_param_2, _lex_param_3, $P102, _lex_param_4, $P101)
    .return ($P5012) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_119_1350819711.531") :anon :lex :outer("cuid_21_1350819711.531")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 302
    .lex "$meth", $P101 
    nqp_get_sc_object $P5001, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P101, $P5001
.annotate 'line', 303
    find_lex $P5003, "$cursor"
    get_how $P5002, $P5003
    find_lex $P5004, "$cursor"
    find_lex $S5001, "$name"
    $P5005 = $P5002."find_method"($P5004, $S5001, 1 :named("no_trace"))
    set $P101, $P5005
    can $I5001, $P101, "NFA"
    unless $I5001 goto if165_end483 
.annotate 'line', 304
    $P5006 = $P101."NFA"()
    store_lex "@substates", $P5006
  if165_end483:
    find_lex $P5007, "@substates"
    isnull $I5002, $P5007
    box $P5010, $I5002
    set $P5009, $P5010
    unless $I5002 goto if166_end485 
    new $P5008, 'ResizablePMCArray'
    store_lex "@substates", $P5008
    set $P5009, $P5008
  if166_end485:
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_121_1350819711.531") :anon :lex :outer("cuid_21_1350819711.531")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 307
    .const 'Sub' $P5025 = 'cuid_120_1350819711.531' 
    capture_lex $P5025 
    .const 'Sub' $P5025 = 'cuid_122_1350819711.531' 
    capture_lex $P5025 
    .lex "%protorx", $P101 
    .lex "$nfa", $P102 
    .lex "$gotmatch", $I101 
    new $P5001, 'Hash'
    set $P101, $P5001
    nqp_get_sc_object $P5002, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P102, $P5002
    set $I101, 0
.annotate 'line', 310
    find_lex $P5004, "$cursor"
    get_how $P5003, $P5004
    find_lex $P5005, "$cursor"
    .const 'Sub' $P5007 = 'cuid_120_1350819711.531' 
    capture_lex $P5007
    newclosure $P5006, $P5007
    $P5008 = $P5003."cache"($P5005, "!protoregex_table", $P5006)
    set $P101, $P5008
.annotate 'line', 311
    nqp_get_sc_object $P5012, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 0
    nqp_get_package_through_who $P5011, $P5012, "QRegex"
    get_who $P5010, $P5011
    set $P5009, $P5010["NFA"]
    unless_null $P5009, fallback490
    nqp_get_sc_object $P5013, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P5009, $P5013
  fallback490:
    $P5014 = $P5009."new"()
    set $P102, $P5014
    set $I101, 0
    find_lex $S5001, "$name"
    exists $I5001, $P101[$S5001]
    unless $I5001 goto if169_end492 
.annotate 'line', 313
    find_lex $S5002, "$name"
    set $P5018, $P101[$S5002]
    unless_null $P5018, fallback493
    nqp_get_sc_object $P5019, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P5018, $P5019
  fallback493:
    set $P5015, $P5018
    iter $P5017, $P5018
  for_next495:
    unless $P5017, for_done497
    shift $P5021, $P5017
  for_redo496:
    .const 'Sub' $P5020 = 'cuid_122_1350819711.531' 
    capture_lex $P5020
    $P5015 = $P5020($P5021)
    goto for_next495
  for_done497:
  if169_end492:
    box $P5024, $I101
    set $P5023, $P5024
    unless $I101 goto if170_end499 
.annotate 'line', 319
    $P5022 = $P102."states"()
    store_lex "@substates", $P5022
    set $P5023, $P5022
  if170_end499:
    .return ($P5023) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_120_1350819711.531") :anon :lex :outer("cuid_121_1350819711.531")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 310

    find_lex $P5001, "$cursor"
    $P5002 = $P5001."!protoregex_table"()
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_122_1350819711.531") :anon :lex :outer("cuid_121_1350819711.531")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 314
    .param pmc _lex_param_0 
    .lex "$rxname", _lex_param_0 
.annotate 'line', 315
    find_lex $P5001, "$nfa"
    find_lex $P5004, "$?PACKAGE"
    get_who $P5003, $P5004
    set $P5002, $P5003["$EDGE_SUBRULE"]
    unless_null $P5002, fallback494
    nqp_get_sc_object $P5005, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P5002, $P5005
  fallback494:
    $P5001."addedge"(1, 0, $P5002, _lex_param_0)
    store_lex "$gotmatch", 1
    .return (1) 
.end
.HLL "nqp"
.namespace []
.sub "mergesubstates" :subid("cuid_22_1350819711.531") :anon :lex :outer("cuid_26_1350819711.531")
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
    .const 'Sub' $P5011 = 'cuid_124_1350819711.531' 
    capture_lex $P5011 
    if haz_param_12, default536
    new $P5010, 'Hash'
    set _lex_param_6, $P5010
  default536:
    .lex "self", _lex_param_0 
    .lex "$start", _lex_param_1 
    .lex "$to", _lex_param_2 
    .lex "$fate", _lex_param_3 
    .lex "@substates", _lex_param_4 
    .lex "$cursor", _lex_param_5 
    .lex "%seen", _lex_param_6 
    unless _lex_param_4 goto if171_else501 
    .const 'Sub' $P5001 = 'cuid_124_1350819711.531' 
    capture_lex $P5001
    $P5002 = $P5001()
    set $P5009, $P5002
    goto if171_end502
  if171_else501:
.annotate 'line', 362
.annotate 'line', 363
    nqp_decontainerize $P5003, _lex_param_0
    find_lex $P5006, "$?PACKAGE"
    get_who $P5005, $P5006
    set $P5004, $P5005["$EDGE_FATE"]
    unless_null $P5004, fallback535
    nqp_get_sc_object $P5007, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P5004, $P5007
  fallback535:
    $P5008 = $P5003."addedge"(_lex_param_1, 0, $P5004, _lex_param_3)
    set $P5009, $P5008
  if171_end502:
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_124_1350819711.531") :anon :lex :outer("cuid_22_1350819711.531")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 327
    .const 'Sub' $P5051 = 'cuid_123_1350819711.531' 
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
    set_label $P5017, while172_handlers506
    push_eh $P5017
  while172_test503:
    find_lex $P5008, "@substates"
    set $P5016, $P5008
    unless $P5008 goto while172_done507 
  while172_redo505:
    find_lex $P5010, "self"
    nqp_decontainerize $P5009, $P5010
    nqp_get_sc_object $P5011, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 3
    repr_get_attr_obj $P5012, $P5009, $P5011, "$!states"
    find_lex $P5015, "@substates"
    shift $P5014, $P5015
    clone $P5013, $P5014
    push $P5012, $P5013
    set $P5016, $P5012
    goto while172_test503 
  while172_handlers506:
    .get_results ($P5017)
    pop_upto_eh $P5017
    getattribute $P5017, $P5017, 'type'
    eq $P5017, .CONTROL_LOOP_NEXT, while172_test503
    eq $P5017, .CONTROL_LOOP_REDO, while172_redo505
  while172_done507:
    pop_eh 
    find_lex $P5019, "self"
    nqp_decontainerize $P5018, $P5019
    nqp_get_sc_object $P5020, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 3
    repr_get_attr_obj $P5021, $P5018, $P5020, "$!states"
    elements $I5002, $P5021
    set $I102, $I5002
    set $I103, $I101
  while173_test508:
    set $N5001, $I103
    set $N5002, $I102
    islt $I5003, $N5001, $N5002
    box $P5025, $I5003
    set $P5024, $P5025
    unless $I5003 goto while173_done512 
  while173_redo510:
    .const 'Sub' $P5022 = 'cuid_123_1350819711.531' 
    capture_lex $P5022
    $P5023 = $P5022()
    set $P5024, $P5023
    goto while173_test508 
  while173_done512:
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
    unless_null $P5029, fallback530
    nqp_get_sc_object $P5032, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P5029, $P5032
  fallback530:
    $P5026."addedge"($P5028, $N5003, $P5029, 0)
    find_lex $P5033, "$to"
    set $N5006, $P5033
    set $N5007, 0
    isgt $I5004, $N5006, $N5007
    unless $I5004 goto if177_else531 
.annotate 'line', 359
    find_lex $P5035, "self"
    nqp_decontainerize $P5034, $P5035
    find_lex $P5036, "$to"
    find_lex $P5039, "$?PACKAGE"
    get_who $P5038, $P5039
    set $P5037, $P5038["$EDGE_EPSILON"]
    unless_null $P5037, fallback533
    nqp_get_sc_object $P5040, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P5037, $P5040
  fallback533:
    $P5041 = $P5034."addedge"($I101, $P5036, $P5037, 0)
    set $P5050, $P5041
    goto if177_end532
  if177_else531:
.annotate 'line', 360
    find_lex $P5043, "self"
    nqp_decontainerize $P5042, $P5043
    find_lex $P5046, "$?PACKAGE"
    get_who $P5045, $P5046
    set $P5044, $P5045["$EDGE_FATE"]
    unless_null $P5044, fallback534
    nqp_get_sc_object $P5047, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P5044, $P5047
  fallback534:
    find_lex $P5048, "$fate"
    $P5049 = $P5042."addedge"($I101, 0, $P5044, $P5048)
    set $P5050, $P5049
  if177_end532:
    .return ($P5050) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_123_1350819711.531") :anon :lex :outer("cuid_124_1350819711.531")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 343
    .lex "$substate", $P101 
    .lex "$j", $I101 
    .lex "$k", $I102 
    nqp_get_sc_object $P5001, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P101, $P5001
    set $I101, 0
    set $I102, 0
    find_lex $P5004, "self"
    nqp_decontainerize $P5003, $P5004
    nqp_get_sc_object $P5005, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 3
    repr_get_attr_obj $P5006, $P5003, $P5005, "$!states"
    find_lex $I5001, "$i"
    set $P5002, $P5006[$I5001]
    unless_null $P5002, fallback513
    nqp_get_sc_object $P5007, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P5002, $P5007
  fallback513:
    set $P101, $P5002
    set $I101, 0
    elements $I5002, $P101
    set $I102, $I5002
  while174_test514:
    set $N5001, $I101
    set $N5002, $I102
    islt $I5003, $N5001, $N5002
    set $I5014, $I5003
    unless $I5003 goto while174_done518 
  while174_redo516:
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
    unless_null $P5008, fallback519
    nqp_get_sc_object $P5009, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P5008, $P5009
  fallback519:
    set $N5010, $P5008
    find_lex $I5006, "$substart"
    set $N5011, $I5006
    add $N5006, $N5010, $N5011
    box $P5010, $N5006
    set $P101[$I5004], $P5010
    set $P5011, $P101[$I101]
    unless_null $P5011, fallback522
    nqp_get_sc_object $P5012, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P5011, $P5012
  fallback522:
    set $N5012, $P5011
    find_lex $P5015, "$?PACKAGE"
    get_who $P5014, $P5015
    set $P5013, $P5014["$EDGE_FATE"]
    unless_null $P5013, fallback523
    nqp_get_sc_object $P5016, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P5013, $P5016
  fallback523:
    set $N5013, $P5013
    iseq $I5007, $N5012, $N5013
    unless $I5007 goto if175_end521 
    set $N5015, $I101
    set $N5016, 1
    add $N5014, $N5015, $N5016
    set $I5008, $N5014
    find_lex $P5017, "$fate"
    set $P101[$I5008], $P5017
  if175_end521:
    set $P5018, $P101[$I101]
    unless_null $P5018, fallback526
    nqp_get_sc_object $P5019, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P5018, $P5019
  fallback526:
    set $N5017, $P5018
    find_lex $P5022, "$?PACKAGE"
    get_who $P5021, $P5022
    set $P5020, $P5021["$EDGE_SUBRULE"]
    unless_null $P5020, fallback527
    nqp_get_sc_object $P5023, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P5020, $P5023
  fallback527:
    set $N5018, $P5020
    iseq $I5009, $N5017, $N5018
    unless $I5009 goto if176_end525 
.annotate 'line', 351
    find_lex $P5025, "self"
    nqp_decontainerize $P5024, $P5025
    find_lex $I5010, "$i"
    set $N5020, $I101
    set $N5021, 2
    add $N5019, $N5020, $N5021
    set $I5011, $N5019
    set $P5026, $P101[$I5011]
    unless_null $P5026, fallback528
    nqp_get_sc_object $P5027, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P5026, $P5027
  fallback528:
    find_lex $P5028, "$fate"
    find_lex $P5029, "$cursor"
    set $N5023, $I101
    set $N5024, 1
    add $N5022, $N5023, $N5024
    set $I5012, $N5022
    set $P5030, $P101[$I5012]
    unless_null $P5030, fallback529
    nqp_get_sc_object $P5031, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P5030, $P5031
  fallback529:
    find_lex $P5032, "%seen"
    $P5033 = $P5024."mergesubrule"($I5010, $P5026, $P5028, $P5029, $P5030, $P5032)
  if176_end525:
    set $N5026, $I101
    set $N5027, 3
    add $N5025, $N5026, $N5027
    set $I5013, $N5025
    set $I101, $I5013
    set $I5014, $I101
    goto while174_test514 
  while174_done518:
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
.sub "run" :subid("cuid_23_1350819711.531") :anon :lex :outer("cuid_26_1350819711.531")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 367
    .param pmc _lex_param_0 
    .param string _lex_param_1 
    .param int _lex_param_2 
    .lex "self", _lex_param_0 
    .lex "$target", _lex_param_1 
    .lex "$offset", _lex_param_2 
    nqp_decontainerize $P5002, _lex_param_0
    nqp_get_sc_object $P5003, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 3
    repr_get_attr_obj $P5004, $P5002, $P5003, "$!states"
    set $S5001, _lex_param_1
    set $I5001, _lex_param_2
    nqp_nfa_run_protoregex $P5001, $P5004, $S5001, $I5001
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "run_alt" :subid("cuid_24_1350819711.531") :anon :lex :outer("cuid_26_1350819711.531")
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
    nqp_get_sc_object $P5002, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 3
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!states"
    set $S5001, _lex_param_1
    set $I5001, _lex_param_2
    nqp_nfa_run_alternation $P5003, $S5001, $I5001, _lex_param_3, _lex_param_4
    .return () 
.end
.HLL "nqp"
.namespace []
.sub "__dump" :subid("cuid_25_1350819711.531") :anon :lex :outer("cuid_26_1350819711.531")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 421
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .const 'Sub' $P5015 = 'cuid_125_1350819711.531' 
    capture_lex $P5015 
    .lex "$subindent", $P101 
    .lex "$st", $P102 
    .lex "self", _lex_param_0 
    .lex "$dumper", _lex_param_1 
    .lex "$label", _lex_param_2 
    nqp_get_sc_object $P5001, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P101, $P5001
    nqp_get_sc_object $P5002, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P102, $P5002
.annotate 'line', 422
    $P5003 = _lex_param_1."newIndent"()
    set $P101, $P5003
.annotate 'line', 423
    "&print"("[")
    box $P5004, 0
    set $P102, $P5004
    nqp_decontainerize $P5008, _lex_param_0
    nqp_get_sc_object $P5009, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 3
    repr_get_attr_obj $P5010, $P5008, $P5009, "$!states"
    set $P5005, $P5010
    iter $P5007, $P5010
  for_next537:
    unless $P5007, for_done539
    shift $P5012, $P5007
  for_redo538:
    .const 'Sub' $P5011 = 'cuid_125_1350819711.531' 
    capture_lex $P5011
    $P5005 = $P5011($P5012)
    goto for_next537
  for_done539:
.annotate 'line', 429
    _lex_param_1."deleteIndent"()
.annotate 'line', 430
    $P5013 = _lex_param_1."indent"()
    $P5014 = "&print"("\n", $P5013, "]")
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_125_1350819711.531") :anon :lex :outer("cuid_25_1350819711.531")
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
.sub "" :subid("cuid_67_1350819711.531") :anon :lex :outer("cuid_1_1350819711.531")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 435
    .param pmc _lex_param_0 
    .const 'Sub' $P5048 = 'cuid_27_1350819711.531' 
    capture_lex $P5048 
    .const 'Sub' $P5048 = 'cuid_28_1350819711.531' 
    capture_lex $P5048 
    .const 'Sub' $P5048 = 'cuid_29_1350819711.531' 
    capture_lex $P5048 
    .const 'Sub' $P5048 = 'cuid_30_1350819711.531' 
    capture_lex $P5048 
    .const 'Sub' $P5048 = 'cuid_31_1350819711.531' 
    capture_lex $P5048 
    .const 'Sub' $P5048 = 'cuid_32_1350819711.531' 
    capture_lex $P5048 
    .const 'Sub' $P5048 = 'cuid_33_1350819711.531' 
    capture_lex $P5048 
    .const 'Sub' $P5048 = 'cuid_34_1350819711.531' 
    capture_lex $P5048 
    .const 'Sub' $P5048 = 'cuid_35_1350819711.531' 
    capture_lex $P5048 
    .const 'Sub' $P5048 = 'cuid_36_1350819711.531' 
    capture_lex $P5048 
    .const 'Sub' $P5048 = 'cuid_37_1350819711.531' 
    capture_lex $P5048 
    .const 'Sub' $P5048 = 'cuid_38_1350819711.531' 
    capture_lex $P5048 
    .const 'Sub' $P5048 = 'cuid_39_1350819711.531' 
    capture_lex $P5048 
    .const 'Sub' $P5048 = 'cuid_40_1350819711.531' 
    capture_lex $P5048 
    .const 'Sub' $P5048 = 'cuid_41_1350819711.531' 
    capture_lex $P5048 
    .const 'Sub' $P5048 = 'cuid_42_1350819711.531' 
    capture_lex $P5048 
    .const 'Sub' $P5048 = 'cuid_43_1350819711.531' 
    capture_lex $P5048 
    .const 'Sub' $P5048 = 'cuid_44_1350819711.531' 
    capture_lex $P5048 
    .const 'Sub' $P5048 = 'cuid_45_1350819711.531' 
    capture_lex $P5048 
    .const 'Sub' $P5048 = 'cuid_46_1350819711.531' 
    capture_lex $P5048 
    .const 'Sub' $P5048 = 'cuid_47_1350819711.531' 
    capture_lex $P5048 
    .const 'Sub' $P5048 = 'cuid_48_1350819711.531' 
    capture_lex $P5048 
    .const 'Sub' $P5048 = 'cuid_49_1350819711.531' 
    capture_lex $P5048 
    .const 'Sub' $P5048 = 'cuid_50_1350819711.531' 
    capture_lex $P5048 
    .const 'Sub' $P5048 = 'cuid_51_1350819711.531' 
    capture_lex $P5048 
    .const 'Sub' $P5048 = 'cuid_52_1350819711.531' 
    capture_lex $P5048 
    .const 'Sub' $P5048 = 'cuid_53_1350819711.531' 
    capture_lex $P5048 
    .const 'Sub' $P5048 = 'cuid_54_1350819711.531' 
    capture_lex $P5048 
    .const 'Sub' $P5048 = 'cuid_55_1350819711.531' 
    capture_lex $P5048 
    .const 'Sub' $P5048 = 'cuid_56_1350819711.531' 
    capture_lex $P5048 
    .const 'Sub' $P5048 = 'cuid_57_1350819711.531' 
    capture_lex $P5048 
    .const 'Sub' $P5048 = 'cuid_58_1350819711.531' 
    capture_lex $P5048 
    .const 'Sub' $P5048 = 'cuid_59_1350819711.531' 
    capture_lex $P5048 
    .const 'Sub' $P5048 = 'cuid_60_1350819711.531' 
    capture_lex $P5048 
    .const 'Sub' $P5048 = 'cuid_61_1350819711.531' 
    capture_lex $P5048 
    .const 'Sub' $P5048 = 'cuid_62_1350819711.531' 
    capture_lex $P5048 
    .const 'Sub' $P5048 = 'cuid_63_1350819711.531' 
    capture_lex $P5048 
    .const 'Sub' $P5048 = 'cuid_64_1350819711.531' 
    capture_lex $P5048 
    .const 'Sub' $P5048 = 'cuid_65_1350819711.531' 
    capture_lex $P5048 
    .const 'Sub' $P5048 = 'cuid_66_1350819711.531' 
    capture_lex $P5048 
    .lex "$?PACKAGE", $P101 
    .lex "$?ROLE", $P102 
    .lex "$NO_CAPS", $P103 
    .lex "$pass_mark", $P104 
    .lex "@EMPTY", $P105 
    .lex "$?CLASS", _lex_param_0 
    nqp_get_sc_object $P5001, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P103, $P5001
    nqp_get_sc_object $P5002, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P104, $P5002
    new $P5003, 'ResizablePMCArray'
    set $P105, $P5003
    .const 'Sub' $P5004 = 'cuid_27_1350819711.531' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_28_1350819711.531' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_29_1350819711.531' 
    capture_lex $P5006
    new $P5007, 'Hash'
    set $P103, $P5007
    .const 'Sub' $P5008 = 'cuid_30_1350819711.531' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_31_1350819711.531' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_32_1350819711.531' 
    capture_lex $P5010
    .const 'Sub' $P5011 = 'cuid_33_1350819711.531' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_34_1350819711.531' 
    capture_lex $P5012
    .const 'Sub' $P5013 = 'cuid_35_1350819711.531' 
    capture_lex $P5013
    box $P5014, 1
    set $P104, $P5014
    .const 'Sub' $P5015 = 'cuid_36_1350819711.531' 
    capture_lex $P5015
    .const 'Sub' $P5016 = 'cuid_37_1350819711.531' 
    capture_lex $P5016
    .const 'Sub' $P5017 = 'cuid_38_1350819711.531' 
    capture_lex $P5017
    .const 'Sub' $P5018 = 'cuid_39_1350819711.531' 
    capture_lex $P5018
    .const 'Sub' $P5019 = 'cuid_40_1350819711.531' 
    capture_lex $P5019
    .const 'Sub' $P5020 = 'cuid_41_1350819711.531' 
    capture_lex $P5020
    new $P5021, 'ResizablePMCArray'
    set $P105, $P5021
    .const 'Sub' $P5022 = 'cuid_42_1350819711.531' 
    capture_lex $P5022
    .const 'Sub' $P5023 = 'cuid_43_1350819711.531' 
    capture_lex $P5023
    .const 'Sub' $P5024 = 'cuid_44_1350819711.531' 
    capture_lex $P5024
    .const 'Sub' $P5025 = 'cuid_45_1350819711.531' 
    capture_lex $P5025
    .const 'Sub' $P5026 = 'cuid_46_1350819711.531' 
    capture_lex $P5026
    .const 'Sub' $P5027 = 'cuid_47_1350819711.531' 
    capture_lex $P5027
    .const 'Sub' $P5028 = 'cuid_48_1350819711.531' 
    capture_lex $P5028
    .const 'Sub' $P5029 = 'cuid_49_1350819711.531' 
    capture_lex $P5029
    .const 'Sub' $P5030 = 'cuid_50_1350819711.531' 
    capture_lex $P5030
    .const 'Sub' $P5031 = 'cuid_51_1350819711.531' 
    capture_lex $P5031
    .const 'Sub' $P5032 = 'cuid_52_1350819711.531' 
    capture_lex $P5032
    .const 'Sub' $P5033 = 'cuid_53_1350819711.531' 
    capture_lex $P5033
    .const 'Sub' $P5034 = 'cuid_54_1350819711.531' 
    capture_lex $P5034
    .const 'Sub' $P5035 = 'cuid_55_1350819711.531' 
    capture_lex $P5035
    .const 'Sub' $P5036 = 'cuid_56_1350819711.531' 
    capture_lex $P5036
    .const 'Sub' $P5037 = 'cuid_57_1350819711.531' 
    capture_lex $P5037
    .const 'Sub' $P5038 = 'cuid_58_1350819711.531' 
    capture_lex $P5038
    .const 'Sub' $P5039 = 'cuid_59_1350819711.531' 
    capture_lex $P5039
    .const 'Sub' $P5040 = 'cuid_60_1350819711.531' 
    capture_lex $P5040
    .const 'Sub' $P5041 = 'cuid_61_1350819711.531' 
    capture_lex $P5041
    .const 'Sub' $P5042 = 'cuid_62_1350819711.531' 
    capture_lex $P5042
    .const 'Sub' $P5043 = 'cuid_63_1350819711.531' 
    capture_lex $P5043
    .const 'Sub' $P5044 = 'cuid_64_1350819711.531' 
    capture_lex $P5044
    .const 'Sub' $P5045 = 'cuid_65_1350819711.531' 
    capture_lex $P5045
    .const 'Sub' $P5046 = 'cuid_66_1350819711.531' 
    capture_lex $P5046
    getinterp $P5047
    set $P5047, $P5047['lexpad']
    .return ($P5047) 
.end
.HLL "nqp"
.namespace []
.sub "target" :subid("cuid_27_1350819711.531") :anon :lex :outer("cuid_67_1350819711.531")
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
.sub "from" :subid("cuid_28_1350819711.531") :anon :lex :outer("cuid_67_1350819711.531")
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
.sub "pos" :subid("cuid_29_1350819711.531") :anon :lex :outer("cuid_67_1350819711.531")
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
.sub "CAPHASH" :subid("cuid_30_1350819711.531") :anon :lex :outer("cuid_67_1350819711.531")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 452
    .param pmc _lex_param_0 
    .const 'Sub' $P5066 = 'cuid_87_1350819711.531' 
    capture_lex $P5066 
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
    nqp_get_sc_object $P5001, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P101, $P5001
    new $P5002, 'Hash'
    set $P102, $P5002
    nqp_get_sc_object $P5003, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P103, $P5003
    set $S101, ""
    nqp_get_sc_object $P5004, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P104, $P5004
    set $I101, 0
    set $I102, 0
    nqp_get_sc_object $P5005, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P105, $P5005
    nqp_get_sc_object $P5006, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P106, $P5006
    nqp_get_sc_object $P5007, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
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
    unless $I5001 goto if179_end543 
    nqp_decontainerize $P5013, _lex_param_0
    find_lex $P5014, "$?CLASS"
    repr_get_attr_obj $P5015, $P5013, $P5014, "$!regexsub"
    set $P5016, $P5015
  if179_end543:
    unless $P5016 goto if178_end541 
.annotate 'line', 464
    nqp_decontainerize $P5018, _lex_param_0
    find_lex $P5019, "$?CLASS"
    repr_get_attr_obj $P5020, $P5018, $P5019, "$!regexsub"
    can $I5003, $P5020, "CAPS"
    unless $I5003 goto if180_else544 
.annotate 'line', 465
    nqp_decontainerize $P5021, _lex_param_0
    find_lex $P5022, "$?CLASS"
    repr_get_attr_obj $P5023, $P5021, $P5022, "$!regexsub"
    $P5024 = $P5023."CAPS"()
    set $P5026, $P5024
    goto if180_end545
  if180_else544:
    null $P5025
    set $P5026, $P5025
  if180_end545:
    set $P102, $P5026
    isnull $I5005, $P102
    not $I5004, $I5005
    box $P5028, $I5004
    set $P5027, $P5028
    unless $I5004 goto if182_end549 
    set $P5027, $P102
  if182_end549:
    set $P5036, $P5027
    unless $P5027 goto if181_end547 
.annotate 'line', 466
    iter $P5029, $P102
    set $P103, $P5029
  while183_test550:
    set $P5035, $P103
    unless $P103 goto while183_done554 
  while183_redo552:
.annotate 'line', 468
    shift $S5001, $P103
    set $S101, $S5001
    set $P5030, $P102[$S101]
    unless_null $P5030, fallback557
    nqp_get_sc_object $P5031, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P5030, $P5031
  fallback557:
    set $N5001, $P5030
    set $N5002, 2
    isge $I5006, $N5001, $N5002
    box $P5034, $I5006
    set $P5033, $P5034
    unless $I5006 goto if184_end556 
    new $P5032, 'ResizablePMCArray'
    set $P101[$S101], $P5032
    set $P5033, $P5032
  if184_end556:
    set $P5035, $P5033
    goto while183_test550 
  while183_done554:
    set $P5036, $P5035
  if181_end547:
  if178_end541:
    nqp_decontainerize $P5037, _lex_param_0
    find_lex $P5038, "$?CLASS"
    repr_get_attr_obj $P5039, $P5037, $P5038, "$!cstack"
    isnull $I5008, $P5039
    not $I5007, $I5008
    box $P5044, $I5007
    set $P5043, $P5044
    unless $I5007 goto if186_end561 
    nqp_decontainerize $P5040, _lex_param_0
    find_lex $P5041, "$?CLASS"
    repr_get_attr_obj $P5042, $P5040, $P5041, "$!cstack"
    set $P5043, $P5042
  if186_end561:
    unless $P5043 goto if185_end559 
.annotate 'line', 474
    nqp_decontainerize $P5045, _lex_param_0
    find_lex $P5046, "$?CLASS"
    repr_get_attr_obj $P5047, $P5045, $P5046, "$!cstack"
    set $P104, $P5047
    elements $I5009, $P104
    set $I102, $I5009
  while187_test562:
    set $N5003, $I101
    set $N5004, $I102
    islt $I5010, $N5003, $N5004
    box $P5065, $I5010
    set $P5064, $P5065
    unless $I5010 goto while187_done566 
  while187_redo564:
.annotate 'line', 477
    set $P5048, $P104[$I101]
    set $P105, $P5048
.annotate 'line', 479
    $P5049 = $P105."MATCH"()
    set $P106, $P5049
    find_lex $P5051, "$?CLASS"
    getattribute $P5050, $P105, $P5051, "$!name"
    set $P107, $P5050
    isnull $I5012, $P107
    not $I5011, $I5012
    set $I5014, $I5011
    unless $I5011 goto if189_end570 
    defined $I5013, $P107
    set $I5014, $I5013
  if189_end570:
    unless $I5014 goto if188_end568 
.annotate 'line', 481
    set $S5002, $P107
    index $I5016, $S5002, "=", 0
    set $N5005, $I5016
    set $N5006, 0
    islt $I5015, $N5005, $N5006
    unless $I5015 goto if190_else571 
.annotate 'line', 482
    set $S5003, $P107
    set $P5052, $P102[$S5003]
    unless_null $P5052, fallback575
    nqp_get_sc_object $P5053, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P5052, $P5053
  fallback575:
    set $N5007, $P5052
    set $N5008, 2
    isge $I5017, $N5007, $N5008
    unless $I5017 goto if191_else573 
    set $S5004, $P107
    set $P5054, $P101[$S5004]
    unless_null $P5054, fallback576
    nqp_get_sc_object $P5055, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P5054, $P5055
  fallback576:
    push $P5054, $P106
    set $P5056, $P5054
    goto if191_end574
  if191_else573:
    set $S5005, $P107
    set $P101[$S5005], $P106
    set $P5056, $P106
  if191_end574:
    set $P5063, $P5056
    goto if190_end572
  if190_else571:
.annotate 'line', 487
    set $S5006, $P107
    split $P5060, "=", $S5006
    set $P5057, $P5060
    iter $P5059, $P5060
  for_next581:
    unless $P5059, for_done583
    shift $P5062, $P5059
  for_redo582:
    .const 'Sub' $P5061 = 'cuid_87_1350819711.531' 
    capture_lex $P5061
    $P5057 = $P5061($P5062)
    goto for_next581
  for_done583:
    set $P5063, $P5057
  if190_end572:
  if188_end568:
    box $P5064, $I101
    set tmp_3, $P5064
    set $N5010, tmp_3
    set $N5011, 1
    add $N5009, $N5010, $N5011
    set $I5018, $N5009
    set $I101, $I5018
    set $P5064, tmp_3
    goto while187_test562 
  while187_done566:
  if185_end559:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_87_1350819711.531") :anon :lex :outer("cuid_30_1350819711.531")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 488
    .param pmc _lex_param_0 
    .lex "$name", _lex_param_0 
    find_lex $P5002, "%caplist"
    set $S5001, _lex_param_0
    set $P5001, $P5002[$S5001]
    unless_null $P5001, fallback579
    nqp_get_sc_object $P5003, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P5001, $P5003
  fallback579:
    set $N5001, $P5001
    set $N5002, 2
    isge $I5001, $N5001, $N5002
    unless $I5001 goto if192_else577 
    find_lex $P5005, "$caps"
    set $S5002, _lex_param_0
    set $P5004, $P5005[$S5002]
    unless_null $P5004, fallback580
    nqp_get_sc_object $P5006, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P5004, $P5006
  fallback580:
    find_lex $P5007, "$submatch"
    push $P5004, $P5007
    set $P5010, $P5004
    goto if192_end578
  if192_else577:
    find_lex $P5008, "$caps"
    set $S5003, _lex_param_0
    find_lex $P5009, "$submatch"
    set $P5008[$S5003], $P5009
    set $P5010, $P5009
  if192_end578:
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "!cursor_init" :subid("cuid_31_1350819711.531") :anon :lex :outer("cuid_67_1350819711.531")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 501
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :named("p") :optional 
    .param int haz_param_13 :opt_flag 
    .param pmc _lex_param_3 :named("c") :optional 
    .param int haz_param_14 :opt_flag 
    if haz_param_13, default586
    box $P5011, 0
    set _lex_param_2, $P5011
  default586:
    if haz_param_14, default587
    nqp_get_sc_object $P5012, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set _lex_param_3, $P5012
  default587:
    .lex "$new", $P101 
    .lex "self", _lex_param_0 
    .lex "$target", _lex_param_1 
    .lex "$p", _lex_param_2 
    .lex "$c", _lex_param_3 
    nqp_get_sc_object $P5001, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P101, $P5001
.annotate 'line', 502
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
    unless $I5002 goto if193_else584 
.annotate 'line', 506
    find_lex $P5007, "$?CLASS"
    repr_bind_attr_int $P101, $P5007, "$!from", -1
    find_lex $P5008, "$?CLASS"
    set $I5003, _lex_param_3
    repr_bind_attr_int $P101, $P5008, "$!pos", $I5003
    goto if193_end585
  if193_else584:
.annotate 'line', 510
    find_lex $P5009, "$?CLASS"
    set $I5004, _lex_param_2
    repr_bind_attr_int $P101, $P5009, "$!from", $I5004
    find_lex $P5010, "$?CLASS"
    set $I5005, _lex_param_2
    repr_bind_attr_int $P101, $P5010, "$!pos", $I5005
  if193_end585:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "!cursor_start" :subid("cuid_32_1350819711.531") :anon :lex :outer("cuid_67_1350819711.531")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 517
    .param pmc _lex_param_0 
    .lex "$new", $P101 
    .lex "$sub", $P102 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P101, $P5001
    nqp_get_sc_object $P5002, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
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
    unless_null $P5011, vivi_194588
    set $P5011, $P102
  vivi_194588:
    setattribute $P101, $P5010, "$!regexsub", $P5011
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_obj $P5014, $P5012, $P5013, "$!restart"
    unless $P5014 goto if195_end590 
.annotate 'line', 525
    find_lex $P5015, "$?CLASS"
    nqp_decontainerize $P5016, _lex_param_0
    find_lex $P5017, "$?CLASS"
    repr_get_attr_int $I5001, $P5016, $P5017, "$!pos"
    repr_bind_attr_int $P101, $P5015, "$!pos", $I5001
    nqp_decontainerize $P5018, _lex_param_0
    find_lex $P5019, "$?CLASS"
    repr_get_attr_obj $P5020, $P5018, $P5019, "$!cstack"
    unless $P5020 goto if196_end592 
    find_lex $P5021, "$?CLASS"
    nqp_decontainerize $P5023, _lex_param_0
    find_lex $P5024, "$?CLASS"
    repr_get_attr_obj $P5025, $P5023, $P5024, "$!cstack"
    clone $P5022, $P5025
    setattribute $P101, $P5021, "$!cstack", $P5022
  if196_end592:
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
  if195_end590:
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
.sub "!cursor_start_subcapture" :subid("cuid_33_1350819711.531") :anon :lex :outer("cuid_67_1350819711.531")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 547
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$new", $P101 
    .lex "self", _lex_param_0 
    .lex "$from", _lex_param_1 
    nqp_get_sc_object $P5001, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
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
.sub "!cursor_capture" :subid("cuid_34_1350819711.531") :anon :lex :outer("cuid_67_1350819711.531")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 556
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
    if $I5001 goto unless197_end594 
    nqp_decontainerize $P5007, _lex_param_0
    find_lex $P5008, "$?CLASS"
    new $P5009, 'ResizablePMCArray'
    repr_bind_attr_obj $P5007, $P5008, "$!cstack", $P5009
  unless197_end594:
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
.sub "!cursor_push_cstack" :subid("cuid_35_1350819711.531") :anon :lex :outer("cuid_67_1350819711.531")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 568
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$capture", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    find_lex $P5002, "$?CLASS"
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!cstack"
    defined $I5001, $P5003
    if $I5001 goto unless198_end596 
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    new $P5006, 'ResizablePMCArray'
    repr_bind_attr_obj $P5004, $P5005, "$!cstack", $P5006
  unless198_end596:
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
.sub "!cursor_pass" :subid("cuid_36_1350819711.531") :anon :lex :outer("cuid_67_1350819711.531")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 575
    .param pmc _lex_param_0 
    .param int _lex_param_1 
    .param pmc _lex_param_2 :optional 
    .param int haz_param_15 :opt_flag 
    .param pmc _lex_param_3 :named("backtrack") :optional 
    .param int haz_param_16 :opt_flag 
    if haz_param_15, default603
    nqp_get_sc_object $P5017, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set _lex_param_2, $P5017
  default603:
    if haz_param_16, default604
    nqp_get_sc_object $P5018, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set _lex_param_3, $P5018
  default604:
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
    unless _lex_param_3 goto if199_end598 
    nqp_decontainerize $P5006, _lex_param_0
    find_lex $P5007, "$?CLASS"
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_obj $P5010, $P5008, $P5009, "$!regexsub"
    repr_bind_attr_obj $P5006, $P5007, "$!restart", $P5010
  if199_end598:
    if _lex_param_3 goto unless200_end600 
    nqp_decontainerize $P5011, _lex_param_0
    find_lex $P5012, "$?CLASS"
    null $P5013
    repr_bind_attr_obj $P5011, $P5012, "$!bstack", $P5013
  unless200_end600:
    set $P5016, _lex_param_2
    unless _lex_param_2 goto if201_end602 
.annotate 'line', 582
    nqp_decontainerize $P5014, _lex_param_0
    $P5015 = $P5014."!reduce"(_lex_param_2)
    set $P5016, $P5015
  if201_end602:
    .return ($P5016) 
.end
.HLL "nqp"
.namespace []
.sub "!cursor_fail" :subid("cuid_37_1350819711.531") :anon :lex :outer("cuid_67_1350819711.531")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 585
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
.sub "!cursor_next" :subid("cuid_38_1350819711.531") :anon :lex :outer("cuid_67_1350819711.531")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 591
    .param pmc _lex_param_0 
    .const 'Sub' $P5012 = 'cuid_88_1350819711.531' 
    capture_lex $P5012 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    find_lex $P5002, "$?CLASS"
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!restart"
    unless $P5003 goto if202_else605 
.annotate 'line', 592
.annotate 'line', 593
    nqp_decontainerize $P5007, _lex_param_0
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!restart"
    $P5008 = $P5006($P5007)
    set $P5011, $P5008
    goto if202_end606
  if202_else605:
    .const 'Sub' $P5009 = 'cuid_88_1350819711.531' 
    capture_lex $P5009
    $P5010 = $P5009()
    set $P5011, $P5010
  if202_end606:
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_88_1350819711.531") :anon :lex :outer("cuid_38_1350819711.531")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 595
    .lex "$cur", $P101 
    nqp_get_sc_object $P5001, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P101, $P5001
.annotate 'line', 596
    find_lex $P5003, "self"
    nqp_decontainerize $P5002, $P5003
    $P5004 = $P5002."!cursor_start"()
    set $P101, $P5004
.annotate 'line', 597
    $P101."!cursor_fail"()
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "!cursor_more" :subid("cuid_39_1350819711.531") :anon :lex :outer("cuid_67_1350819711.531")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 602
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy :named 
    .lex "$new", $P101 
    .lex "self", _lex_param_0 
    .lex "%opts", _lex_param_1 
    nqp_get_sc_object $P5001, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P101, $P5001
    root_new $P102, ['parrot';'Continuation']
    set_label $P102, lexotic_607
    .lex "RETURN", $P102
    set $P5002, _lex_param_1["ex"]
    unless_null $P5002, fallback611
    nqp_get_sc_object $P5003, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P5002, $P5003
  fallback611:
    unless $P5002 goto if203_end610 
.annotate 'line', 603
    nqp_decontainerize $P5005, _lex_param_0
    $P5006 = $P5005."!cursor_next"()
    find_lex $P5004, "RETURN"
    $P5007 = $P5004($P5006)
  if203_end610:
.annotate 'line', 604
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
    unless_null $P5019, fallback616
    nqp_get_sc_object $P5020, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P5019, $P5020
  fallback616:
    set $P5025, $P5019
    if $P5019 goto unless205_end615 
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
  unless205_end615:
    unless $P5025 goto if204_else612 
    nqp_decontainerize $P5027, _lex_param_0
    find_lex $P5028, "$?CLASS"
    repr_get_attr_int $I5004, $P5027, $P5028, "$!from"
    set $N5004, $I5004
    set $N5005, 1
    add $N5003, $N5004, $N5005
    box $P5032, $N5003
    set $P5031, $P5032
    goto if204_end613
  if204_else612:
    nqp_decontainerize $P5029, _lex_param_0
    find_lex $P5030, "$?CLASS"
    repr_get_attr_int $I5005, $P5029, $P5030, "$!pos"
    box $P5033, $I5005
    set $P5031, $P5033
  if204_end613:
    set $I5006, $P5031
    repr_bind_attr_int $P101, $P5018, "$!pos", $I5006
.annotate 'line', 610
    nqp_decontainerize $P5034, _lex_param_0
    find_lex $P5035, "$?CLASS"
    repr_get_attr_obj $P5036, $P5034, $P5035, "$!regexsub"
    $P5037 = $P5036($P101)
    goto lexotic_608
  lexotic_607:
    .get_results ($P5037)
  lexotic_608:
    .return ($P5037) 
.end
.HLL "nqp"
.namespace []
.sub "!reduce" :subid("cuid_40_1350819711.531") :anon :lex :outer("cuid_67_1350819711.531")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 613
    .param pmc _lex_param_0 
    .param string _lex_param_1 
    .lex "$actions", $P101 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    nqp_get_sc_object $P5001, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P101, $P5001
    find_dynamic_lex $P5002, "$*ACTIONS"
    set $P101, $P5002
    isnull $I5002, $P101
    not $I5001, $I5002
    set $I5004, $I5001
    unless $I5001 goto if207_end620 
    can $I5003, $P101, _lex_param_1
    set $I5004, $I5003
  if207_end620:
    box $P5008, $I5004
    set $P5007, $P5008
    unless $I5004 goto if206_end618 
.annotate 'line', 615
    nqp_decontainerize $P5004, _lex_param_0
    $P5005 = $P5004."MATCH"()
    find_method $P5003, $P101, _lex_param_1
    $P5006 = $P5003($P101, $P5005)
    set $P5007, $P5006
  if206_end618:
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "!reduce_with_match" :subid("cuid_41_1350819711.531") :anon :lex :outer("cuid_67_1350819711.531")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 619
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .lex "$actions", $P101 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    .lex "$key", _lex_param_2 
    .lex "$match", _lex_param_3 
    nqp_get_sc_object $P5001, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P101, $P5001
    find_dynamic_lex $P5002, "$*ACTIONS"
    set $P101, $P5002
    isnull $I5002, $P101
    not $I5001, $I5002
    set $I5004, $I5001
    unless $I5001 goto if209_end624 
    set $S5001, _lex_param_1
    can $I5003, $P101, $S5001
    set $I5004, $I5003
  if209_end624:
    box $P5006, $I5004
    set $P5005, $P5006
    unless $I5004 goto if208_end622 
.annotate 'line', 621
    set $S5002, _lex_param_1
    find_method $P5003, $P101, $S5002
    $P5004 = $P5003($P101, _lex_param_3, _lex_param_2)
    set $P5005, $P5004
  if208_end622:
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "!protoregex" :subid("cuid_42_1350819711.531") :anon :lex :outer("cuid_67_1350819711.531")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 626
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5031 = 'cuid_89_1350819711.531' 
    capture_lex $P5031 
    .lex "$nfa", $P101 
    .lex "@fates", $P102 
    .lex "@rxfate", $P103 
    .lex "$cur", $P104 
    .lex "$rxname", $P105 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    nqp_get_sc_object $P5001, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P101, $P5001
    new $P5002, 'ResizablePMCArray'
    set $P102, $P5002
    new $P5003, 'ResizablePMCArray'
    set $P103, $P5003
    nqp_get_sc_object $P5004, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P104, $P5004
    nqp_get_sc_object $P5005, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P105, $P5005
.annotate 'line', 628
    nqp_decontainerize $P5007, _lex_param_0
    get_how $P5006, $P5007
    nqp_decontainerize $P5008, _lex_param_0
    .const 'Sub' $P5010 = 'cuid_89_1350819711.531' 
    capture_lex $P5010
    newclosure $P5009, $P5010
    $P5011 = $P5006."cache"($P5008, _lex_param_1, $P5009)
    set $P101, $P5011
.annotate 'line', 629
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_str $S5001, $P5012, $P5013, "$!target"
    nqp_decontainerize $P5014, _lex_param_0
    find_lex $P5015, "$?CLASS"
    repr_get_attr_int $I5001, $P5014, $P5015, "$!pos"
    $P5016 = $P101."run"($S5001, $I5001)
    set $P102, $P5016
.annotate 'line', 632
    $P5018 = $P101."states"()
    set $P5017, $P5018[0]
    unless_null $P5017, fallback625
    nqp_get_sc_object $P5019, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P5017, $P5019
  fallback625:
    set $P103, $P5017
  while210_test626:
    set $P5027, $P102
    unless $P102 goto while210_done630 
  while210_redo628:
.annotate 'line', 635
    pop $I5002, $P102
    set $P5020, $P103[$I5002]
    set $P105, $P5020
.annotate 'line', 638
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
    unless $I5003 goto if211_end632 
    find_lex $P5024, "@EMPTY"
    set $P102, $P5024
    set $P5025, $P102
  if211_end632:
    set $P5027, $P5025
    goto while210_test626 
  while210_done630:
    set $P5028, $P104
    defined $I5005, $P5028
    if $I5005, defor633
.annotate 'line', 641
    nqp_decontainerize $P5029, _lex_param_0
    $P5030 = $P5029."!cursor_start"()
    set $P5028, $P5030
  defor633:
    .return ($P5028) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_89_1350819711.531") :anon :lex :outer("cuid_42_1350819711.531")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 628

    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    find_lex $P5003, "$name"
    $P5004 = $P5001."!protoregex_nfa"($P5003)
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "!protoregex_nfa" :subid("cuid_43_1350819711.531") :anon :lex :outer("cuid_67_1350819711.531")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 644
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5026 = 'cuid_90_1350819711.531' 
    capture_lex $P5026 
    .const 'Sub' $P5026 = 'cuid_91_1350819711.531' 
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
    nqp_get_sc_object $P5002, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P102, $P5002
    new $P5003, 'ResizablePMCArray'
    set $P103, $P5003
    set $I101, 0
    set $I102, 0
.annotate 'line', 645
    nqp_decontainerize $P5005, _lex_param_0
    get_how $P5004, $P5005
    nqp_decontainerize $P5006, _lex_param_0
    .const 'Sub' $P5008 = 'cuid_90_1350819711.531' 
    capture_lex $P5008
    newclosure $P5007, $P5008
    $P5009 = $P5004."cache"($P5006, "!protoregex_table", $P5007)
    set $P101, $P5009
.annotate 'line', 646
    nqp_get_sc_object $P5013, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 0
    nqp_get_package_through_who $P5012, $P5013, "QRegex"
    get_who $P5011, $P5012
    set $P5010, $P5011["NFA"]
    unless_null $P5010, fallback634
    nqp_get_sc_object $P5014, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P5010, $P5014
  fallback634:
    $P5015 = $P5010."new"()
    set $P102, $P5015
.annotate 'line', 647
    $P5017 = $P102."states"()
    set $P5016, $P5017[0]
    unless_null $P5016, fallback635
    nqp_get_sc_object $P5018, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P5016, $P5018
  fallback635:
    set $P103, $P5016
    set $I101, 1
    set $I102, 0
    set $S5001, _lex_param_1
    exists $I5001, $P101[$S5001]
    unless $I5001 goto if212_end637 
.annotate 'line', 650
    set $S5002, _lex_param_1
    set $P5022, $P101[$S5002]
    unless_null $P5022, fallback638
    nqp_get_sc_object $P5023, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P5022, $P5023
  fallback638:
    set $P5019, $P5022
    iter $P5021, $P5022
  for_next639:
    unless $P5021, for_done641
    shift $P5025, $P5021
  for_redo640:
    .const 'Sub' $P5024 = 'cuid_91_1350819711.531' 
    capture_lex $P5024
    $P5019 = $P5024($P5025)
    goto for_next639
  for_done641:
  if212_end637:
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_90_1350819711.531") :anon :lex :outer("cuid_43_1350819711.531")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 645

    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    $P5003 = $P5001."!protoregex_table"()
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_91_1350819711.531") :anon :lex :outer("cuid_43_1350819711.531")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 651
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
.annotate 'line', 654
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
.sub "!protoregex_table" :subid("cuid_44_1350819711.531") :anon :lex :outer("cuid_67_1350819711.531")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 660
    .param pmc _lex_param_0 
    .const 'Sub' $P5011 = 'cuid_93_1350819711.531' 
    capture_lex $P5011 
    .lex "%protorx", $P101 
    .lex "self", _lex_param_0 
    new $P5001, 'Hash'
    set $P101, $P5001
.annotate 'line', 662
    nqp_decontainerize $P5006, _lex_param_0
    get_how $P5005, $P5006
    nqp_decontainerize $P5007, _lex_param_0
    $P5008 = $P5005."methods"($P5007)
    set $P5002, $P5008
    iter $P5004, $P5008
  for_next647:
    unless $P5004, for_done649
    shift $P5010, $P5004
  for_redo648:
    .const 'Sub' $P5009 = 'cuid_93_1350819711.531' 
    capture_lex $P5009
    $P5002 = $P5009($P5010)
    goto for_next647
  for_done649:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_93_1350819711.531") :anon :lex :outer("cuid_44_1350819711.531")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 662
    .param pmc _lex_param_0 
    .const 'Sub' $P5005 = 'cuid_92_1350819711.531' 
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
    unless $I5002 goto if213_end643 
    .const 'Sub' $P5001 = 'cuid_92_1350819711.531' 
    capture_lex $P5001
    $P5002 = $P5001()
    set $P5003, $P5002
  if213_end643:
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_92_1350819711.531") :anon :lex :outer("cuid_93_1350819711.531")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 665
    .lex "$prefix", $S101 
    set $S101, ""
    find_lex $S5002, "$methname"
    find_lex $I5001, "$sympos"
    substr $S5001, $S5002, 0, $I5001
    set $S101, $S5001
    find_lex $P5001, "%protorx"
    exists $I5002, $P5001[$S101]
    if $I5002 goto unless214_end645 
    find_lex $P5002, "%protorx"
    new $P5003, 'ResizablePMCArray'
    set $P5002[$S101], $P5003
  unless214_end645:
    find_lex $P5005, "%protorx"
    set $P5004, $P5005[$S101]
    unless_null $P5004, fallback646
    nqp_get_sc_object $P5006, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P5004, $P5006
  fallback646:
    find_lex $S5003, "$methname"
    box $P5007, $S5003
    push $P5004, $P5007
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "!alt" :subid("cuid_45_1350819711.531") :anon :lex :outer("cuid_67_1350819711.531")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 674
    .param pmc _lex_param_0 
    .param int _lex_param_1 
    .param string _lex_param_2 
    .param pmc _lex_param_3 :optional 
    .param int haz_param_17 :opt_flag 
    .const 'Sub' $P5018 = 'cuid_94_1350819711.531' 
    capture_lex $P5018 
    if haz_param_17, default650
    new $P5017, 'ResizablePMCArray'
    set _lex_param_3, $P5017
  default650:
    .lex "$nfa", $P101 
    .lex "self", _lex_param_0 
    .lex "$pos", _lex_param_1 
    .lex "$name", _lex_param_2 
    .lex "@labels", _lex_param_3 
    nqp_get_sc_object $P5001, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P101, $P5001
.annotate 'line', 675
    nqp_decontainerize $P5003, _lex_param_0
    get_how $P5002, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    .const 'Sub' $P5006 = 'cuid_94_1350819711.531' 
    capture_lex $P5006
    newclosure $P5005, $P5006
    $P5007 = $P5002."cache"($P5004, _lex_param_2, $P5005)
    set $P101, $P5007
.annotate 'line', 676
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
.sub "" :subid("cuid_94_1350819711.531") :anon :lex :outer("cuid_45_1350819711.531")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 675

    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    find_lex $S5001, "$name"
    find_lex $P5003, "@labels"
    $P5004 = $P5001."!alt_nfa"($S5001, $P5003)
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "!alt_nfa" :subid("cuid_46_1350819711.531") :anon :lex :outer("cuid_67_1350819711.531")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 679
    .param pmc _lex_param_0 
    .param string _lex_param_1 
    .param pmc _lex_param_2 
    .const 'Sub' $P5021 = 'cuid_95_1350819711.531' 
    capture_lex $P5021 
    .lex "$nfa", $P101 
    .lex "@fates", $P102 
    .lex "$start", $I101 
    .lex "$fate", $I102 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    .lex "@labels", _lex_param_2 
    nqp_get_sc_object $P5001, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P101, $P5001
    new $P5002, 'ResizablePMCArray'
    set $P102, $P5002
    set $I101, 0
    set $I102, 0
.annotate 'line', 680
    nqp_get_sc_object $P5006, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 0
    nqp_get_package_through_who $P5005, $P5006, "QRegex"
    get_who $P5004, $P5005
    set $P5003, $P5004["NFA"]
    unless_null $P5003, fallback651
    nqp_get_sc_object $P5007, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P5003, $P5007
  fallback651:
    $P5008 = $P5003."new"()
    set $P101, $P5008
.annotate 'line', 681
    $P5010 = $P101."states"()
    set $P5009, $P5010[0]
    unless_null $P5009, fallback652
    nqp_get_sc_object $P5011, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P5009, $P5011
  fallback652:
    set $P102, $P5009
    set $I101, 1
    set $I102, 0
.annotate 'line', 684
    nqp_decontainerize $P5015, _lex_param_0
    find_lex $P5016, "$?CLASS"
    repr_get_attr_obj $P5017, $P5015, $P5016, "$!regexsub"
    $P5018 = $P5017."ALT_NFA"(_lex_param_1)
    set $P5012, $P5018
    iter $P5014, $P5018
  for_next654:
    unless $P5014, for_done656
    shift $P5020, $P5014
  for_redo655:
    .const 'Sub' $P5019 = 'cuid_95_1350819711.531' 
    capture_lex $P5019
    $P5012 = $P5019($P5020)
    goto for_next654
  for_done656:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_95_1350819711.531") :anon :lex :outer("cuid_46_1350819711.531")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 684
    .param pmc _lex_param_0 
    .lex "$label", $P101 
    .lex "$_", _lex_param_0 
    nqp_get_sc_object $P5001, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P101, $P5001
    find_lex $P5003, "@labels"
    find_lex $I5001, "$fate"
    set $P5002, $P5003[$I5001]
    unless_null $P5002, fallback653
    nqp_get_sc_object $P5004, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P5002, $P5004
  fallback653:
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
.annotate 'line', 688
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
.sub "!BACKREF" :subid("cuid_47_1350819711.531") :anon :lex :outer("cuid_67_1350819711.531")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 693
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5032 = 'cuid_96_1350819711.531' 
    capture_lex $P5032 
    .lex "$cur", $P101 
    .lex "$n", $I101 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    .local pmc tmp_4 
    nqp_get_sc_object $P5001, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P101, $P5001
    set $I101, 0
.annotate 'line', 694
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start"()
    set $P101, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!cstack"
    unless $P5006 goto if215_else657 
    nqp_decontainerize $P5007, _lex_param_0
    find_lex $P5008, "$?CLASS"
    repr_get_attr_obj $P5009, $P5007, $P5008, "$!cstack"
    elements $I5001, $P5009
    set $N5002, $I5001
    set $N5003, 1
    sub $N5001, $N5002, $N5003
    box $P5011, $N5001
    set $P5010, $P5011
    goto if215_end658
  if215_else657:
    box $P5012, -1
    set $P5010, $P5012
  if215_end658:
    set $I5002, $P5010
    set $I101, $I5002
    new $P5028, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5028, while216_handlers662
    push_eh $P5028
  while216_test659:
    set $N5004, $I101
    set $N5005, 0
    isge $I5003, $N5004, $N5005
    set $I5007, $I5003
    unless $I5003 goto if217_end665 
    nqp_decontainerize $P5015, _lex_param_0
    find_lex $P5016, "$?CLASS"
    repr_get_attr_obj $P5017, $P5015, $P5016, "$!cstack"
    set $P5014, $P5017[$I101]
    unless_null $P5014, fallback668
    nqp_get_sc_object $P5018, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P5014, $P5018
  fallback668:
    find_lex $P5019, "$?CLASS"
    getattribute $P5013, $P5014, $P5019, "$!name"
    isnull $I5004, $P5013
    set $I5006, $I5004
    if $I5004 goto unless218_end667 
    nqp_decontainerize $P5022, _lex_param_0
    find_lex $P5023, "$?CLASS"
    repr_get_attr_obj $P5024, $P5022, $P5023, "$!cstack"
    set $P5021, $P5024[$I101]
    unless_null $P5021, fallback669
    nqp_get_sc_object $P5025, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P5021, $P5025
  fallback669:
    find_lex $P5026, "$?CLASS"
    getattribute $P5020, $P5021, $P5026, "$!name"
    set $S5001, $P5020
    set $S5002, _lex_param_1
    isne $I5005, $S5001, $S5002
    set $I5006, $I5005
  unless218_end667:
    set $I5007, $I5006
  if217_end665:
    box $P5029, $I5007
    set $P5027, $P5029
    unless $I5007 goto while216_done663 
  while216_redo661:
    box $P5027, $I101
    set tmp_4, $P5027
    set $N5007, tmp_4
    set $N5008, 1
    sub $N5006, $N5007, $N5008
    set $I5008, $N5006
    set $I101, $I5008
    set $P5027, tmp_4
    goto while216_test659 
  while216_handlers662:
    .get_results ($P5028)
    pop_upto_eh $P5028
    getattribute $P5028, $P5028, 'type'
    eq $P5028, .CONTROL_LOOP_NEXT, while216_test659
    eq $P5028, .CONTROL_LOOP_REDO, while216_redo661
  while216_done663:
    pop_eh 
    set $N5006, $I101
    set $N5007, 0
    isge $I5008, $N5006, $N5007
    unless $I5008 goto if219_end671 
    .const 'Sub' $P5030 = 'cuid_96_1350819711.531' 
    capture_lex $P5030
    $P5031 = $P5030()
  if219_end671:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_96_1350819711.531") :anon :lex :outer("cuid_47_1350819711.531")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 698
    .lex "$subcur", $P101 
    .lex "$litlen", $I101 
    nqp_get_sc_object $P5001, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P101, $P5001
    set $I101, 0
    find_lex $P5004, "self"
    nqp_decontainerize $P5003, $P5004
    find_lex $P5005, "$?CLASS"
    repr_get_attr_obj $P5006, $P5003, $P5005, "$!cstack"
    find_lex $I5001, "$n"
    set $P5002, $P5006[$I5001]
    unless_null $P5002, fallback672
    nqp_get_sc_object $P5007, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P5002, $P5007
  fallback672:
    set $P101, $P5002
.annotate 'line', 700
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
.annotate 'line', 703
    $P5019 = $P101."from"()
    set $I5005, $P5019
    substr $S5003, $S5004, $I5005, $I101
    iseq $I5003, $S5001, $S5003
    box $P5026, $I5003
    set $P5025, $P5026
    unless $I5003 goto if220_end674 
.annotate 'line', 701
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
  if220_end674:
    .return ($P5025) 
.end
.HLL "nqp"
.namespace []
.sub "!LITERAL" :subid("cuid_48_1350819711.531") :anon :lex :outer("cuid_67_1350819711.531")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 708
    .param pmc _lex_param_0 
    .param string _lex_param_1 
    .param int _lex_param_2 :optional 
    .param int haz_param_18 :opt_flag 
    if haz_param_18, default681
    set $I5010, 0
    set _lex_param_2, $I5010
  default681:
    .lex "$cur", $P101 
    .lex "$litlen", $I101 
    .lex "self", _lex_param_0 
    .lex "$str", _lex_param_1 
    .lex "$i", _lex_param_2 
    nqp_get_sc_object $P5001, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P101, $P5001
    set $I101, 0
.annotate 'line', 709
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start"()
    set $P101, $P5003
    length $I5001, _lex_param_1
    set $I101, $I5001
    set $N5001, $I101
    set $N5002, 1
    islt $I5002, $N5001, $N5002
    set $I5008, $I5002
    if $I5002 goto unless222_end678 
    unless _lex_param_2 goto if223_else679 
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
    goto if223_end680
  if223_else679:
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_str $S5006, $P5008, $P5009, "$!target"
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5006, $P5010, $P5011, "$!pos"
    substr $S5005, $S5006, $I5006, $I101
    iseq $I5005, $S5005, _lex_param_1
    set $I5007, $I5005
  if223_end680:
    set $I5008, $I5007
  unless222_end678:
    unless $I5008 goto if221_end676 
.annotate 'line', 711
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5009, $P5012, $P5013, "$!pos"
    set $N5004, $I5009
    set $N5005, $I101
    add $N5003, $N5004, $N5005
    $P5014 = $P101."!cursor_pass"($N5003)
  if221_end676:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "at" :subid("cuid_49_1350819711.531") :anon :lex :outer("cuid_67_1350819711.531")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 718
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    .lex "$pos", _lex_param_1 
    nqp_get_sc_object $P5001, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P101, $P5001
.annotate 'line', 719
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start"()
    set $P101, $P5003
    set $N5001, _lex_param_1
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_int $I5002, $P5004, $P5005, "$!pos"
    set $N5002, $I5002
    iseq $I5001, $N5001, $N5002
    unless $I5001 goto if224_end683 
.annotate 'line', 720
    nqp_decontainerize $P5006, _lex_param_0
    find_lex $P5007, "$?CLASS"
    repr_get_attr_int $I5003, $P5006, $P5007, "$!pos"
    $P5008 = $P101."!cursor_pass"($I5003)
  if224_end683:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "before" :subid("cuid_50_1350819711.531") :anon :lex :outer("cuid_67_1350819711.531")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 724
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    .lex "$regex", _lex_param_1 
    nqp_get_sc_object $P5001, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P101, $P5001
.annotate 'line', 725
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start"()
    set $P101, $P5003
    find_lex $P5004, "$?CLASS"
    nqp_decontainerize $P5005, _lex_param_0
    find_lex $P5006, "$?CLASS"
    repr_get_attr_int $I5001, $P5005, $P5006, "$!pos"
    repr_bind_attr_int $P101, $P5004, "$!pos", $I5001
.annotate 'line', 727
    $P5007 = _lex_param_1($P101)
    find_lex $P5008, "$?CLASS"
    repr_get_attr_int $I5003, $P5007, $P5008, "$!pos"
    set $N5001, $I5003
    set $N5002, 0
    isge $I5002, $N5001, $N5002
    unless $I5002 goto if225_else684 
.annotate 'line', 728
    nqp_decontainerize $P5009, _lex_param_0
    find_lex $P5010, "$?CLASS"
    repr_get_attr_int $I5004, $P5009, $P5010, "$!pos"
    $P5011 = $P101."!cursor_pass"($I5004, "before")
    goto if225_end685
  if225_else684:
    find_lex $P5012, "$?CLASS"
    repr_bind_attr_int $P101, $P5012, "$!pos", -3
  if225_end685:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "after" :subid("cuid_51_1350819711.531") :anon :lex :outer("cuid_67_1350819711.531")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 735
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    .lex "$regex", _lex_param_1 
    nqp_get_sc_object $P5001, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P101, $P5001
.annotate 'line', 736
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start"()
    set $P101, $P5003
    find_lex $P5004, "$?CLASS"
.annotate 'line', 737
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
.annotate 'line', 740
    $P5019 = _lex_param_1($P101)
    find_lex $P5020, "$?CLASS"
    repr_get_attr_int $I5008, $P5019, $P5020, "$!pos"
    set $N5007, $I5008
    set $N5008, 0
    isge $I5007, $N5007, $N5008
    unless $I5007 goto if226_else686 
.annotate 'line', 741
    nqp_decontainerize $P5021, _lex_param_0
    find_lex $P5022, "$?CLASS"
    repr_get_attr_int $I5009, $P5021, $P5022, "$!pos"
    $P5023 = $P101."!cursor_pass"($I5009, "after")
    goto if226_end687
  if226_else686:
    find_lex $P5024, "$?CLASS"
    repr_bind_attr_int $P101, $P5024, "$!pos", -3
  if226_end687:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "ws" :subid("cuid_52_1350819711.531") :anon :lex :outer("cuid_67_1350819711.531")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 746
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P101, $P5001
.annotate 'line', 748
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
    unless $I5001 goto if227_else688 
.annotate 'line', 750
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_int $I5004, $P5008, $P5009, "$!pos"
    $P5010 = $P101."!cursor_pass"($I5004, "ws")
    goto if227_end689
  if227_else688:
    nqp_decontainerize $P5011, _lex_param_0
    find_lex $P5012, "$?CLASS"
    repr_get_attr_int $I5006, $P5011, $P5012, "$!pos"
    set $N5003, $I5006
    set $N5004, 1
    islt $I5005, $N5003, $N5004
    set $I5010, $I5005
    if $I5005 goto unless230_end695 
    nqp_decontainerize $P5013, _lex_param_0
    find_lex $P5014, "$?CLASS"
    repr_get_attr_str $S5002, $P5013, $P5014, "$!target"
    nqp_decontainerize $P5015, _lex_param_0
    find_lex $P5016, "$?CLASS"
    repr_get_attr_int $I5009, $P5015, $P5016, "$!pos"
    is_cclass $I5008, .CCLASS_WORD, $S5002, $I5009
    not $I5007, $I5008
    set $I5010, $I5007
  unless230_end695:
    set $I5015, $I5010
    if $I5010 goto unless229_end693 
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
  unless229_end693:
    box $P5029, $I5015
    set $P5028, $P5029
    unless $I5015 goto if228_end691 
.annotate 'line', 754
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
  if228_end691:
  if227_end689:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "ww" :subid("cuid_53_1350819711.531") :anon :lex :outer("cuid_67_1350819711.531")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 761
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P101, $P5001
.annotate 'line', 762
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
    unless $I5001 goto if234_end703 
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
  if234_end703:
    set $I5009, $I5006
    unless $I5006 goto if233_end701 
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_str $S5002, $P5010, $P5011, "$!target"
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5008, $P5012, $P5013, "$!pos"
    is_cclass $I5007, .CCLASS_WORD, $S5002, $I5008
    set $I5009, $I5007
  if233_end701:
    set $I5013, $I5009
    unless $I5009 goto if232_end699 
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
  if232_end699:
    unless $I5013 goto if231_end697 
.annotate 'line', 763
    nqp_decontainerize $P5018, _lex_param_0
    find_lex $P5019, "$?CLASS"
    repr_get_attr_int $I5014, $P5018, $P5019, "$!pos"
    $P5020 = $P101."!cursor_pass"($I5014, "ww")
  if231_end697:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "wb" :subid("cuid_54_1350819711.531") :anon :lex :outer("cuid_67_1350819711.531")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 771
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P101, $P5001
.annotate 'line', 772
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
    unless $I5001 goto if238_end711 
    nqp_decontainerize $P5006, _lex_param_0
    find_lex $P5007, "$?CLASS"
    repr_get_attr_str $S5001, $P5006, $P5007, "$!target"
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_int $I5004, $P5008, $P5009, "$!pos"
    is_cclass $I5003, .CCLASS_WORD, $S5001, $I5004
    set $I5005, $I5003
  if238_end711:
    set $I5013, $I5005
    if $I5005 goto unless237_end709 
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
    unless $I5006 goto if239_end713 
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
  if239_end713:
    set $I5013, $I5012
  unless237_end709:
    set $I5020, $I5013
    if $I5013 goto unless236_end707 
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
  unless236_end707:
    unless $I5020 goto if235_end705 
.annotate 'line', 773
    nqp_decontainerize $P5026, _lex_param_0
    find_lex $P5027, "$?CLASS"
    repr_get_attr_int $I5021, $P5026, $P5027, "$!pos"
    $P5028 = $P101."!cursor_pass"($I5021, "wb")
  if235_end705:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "ident" :subid("cuid_55_1350819711.531") :anon :lex :outer("cuid_67_1350819711.531")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 782
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P101, $P5001
.annotate 'line', 783
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
    unless $I5001 goto if241_end717 
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
    if $I5004 goto unless242_end719 
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_str $S5003, $P5012, $P5013, "$!target"
    nqp_decontainerize $P5014, _lex_param_0
    find_lex $P5015, "$?CLASS"
    repr_get_attr_int $I5008, $P5014, $P5015, "$!pos"
    is_cclass $I5007, .CCLASS_ALPHABETIC, $S5003, $I5008
    set $I5009, $I5007
  unless242_end719:
    set $I5010, $I5009
  if241_end717:
    unless $I5010 goto if240_end715 
.annotate 'line', 784
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
  if240_end715:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "alpha" :subid("cuid_56_1350819711.531") :anon :lex :outer("cuid_67_1350819711.531")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 794
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P101, $P5001
.annotate 'line', 795
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
    unless $I5001 goto if244_end723 
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_str $S5002, $P5008, $P5009, "$!target"
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, .CCLASS_ALPHABETIC, $S5002, $I5005
    set $I5009, $I5004
    if $I5004 goto unless245_end725 
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
  unless245_end725:
    set $I5010, $I5009
  if244_end723:
    unless $I5010 goto if243_end721 
.annotate 'line', 796
    nqp_decontainerize $P5016, _lex_param_0
    find_lex $P5017, "$?CLASS"
    repr_get_attr_int $I5011, $P5016, $P5017, "$!pos"
    set $N5006, $I5011
    set $N5007, 1
    add $N5005, $N5006, $N5007
    $P5018 = $P101."!cursor_pass"($N5005, "alpha")
  if243_end721:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "alnum" :subid("cuid_57_1350819711.531") :anon :lex :outer("cuid_67_1350819711.531")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 803
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
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
    set $I5010, $I5001
    unless $I5001 goto if247_end729 
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_str $S5002, $P5008, $P5009, "$!target"
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, .CCLASS_ALPHANUMERIC, $S5002, $I5005
    set $I5009, $I5004
    if $I5004 goto unless248_end731 
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
  unless248_end731:
    set $I5010, $I5009
  if247_end729:
    unless $I5010 goto if246_end727 
.annotate 'line', 805
    nqp_decontainerize $P5016, _lex_param_0
    find_lex $P5017, "$?CLASS"
    repr_get_attr_int $I5011, $P5016, $P5017, "$!pos"
    set $N5006, $I5011
    set $N5007, 1
    add $N5005, $N5006, $N5007
    $P5018 = $P101."!cursor_pass"($N5005, "alnum")
  if246_end727:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "upper" :subid("cuid_58_1350819711.531") :anon :lex :outer("cuid_67_1350819711.531")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 812
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P101, $P5001
.annotate 'line', 813
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
    unless $I5001 goto if250_end735 
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_str $S5002, $P5008, $P5009, "$!target"
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, .CCLASS_UPPERCASE, $S5002, $I5005
    set $I5006, $I5004
  if250_end735:
    unless $I5006 goto if249_end733 
.annotate 'line', 814
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5007, $P5012, $P5013, "$!pos"
    set $N5004, $I5007
    set $N5005, 1
    add $N5003, $N5004, $N5005
    $P5014 = $P101."!cursor_pass"($N5003, "upper")
  if249_end733:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "lower" :subid("cuid_59_1350819711.531") :anon :lex :outer("cuid_67_1350819711.531")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 820
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P101, $P5001
.annotate 'line', 821
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
    unless $I5001 goto if252_end739 
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_str $S5002, $P5008, $P5009, "$!target"
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, .CCLASS_LOWERCASE, $S5002, $I5005
    set $I5006, $I5004
  if252_end739:
    unless $I5006 goto if251_end737 
.annotate 'line', 822
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5007, $P5012, $P5013, "$!pos"
    set $N5004, $I5007
    set $N5005, 1
    add $N5003, $N5004, $N5005
    $P5014 = $P101."!cursor_pass"($N5003, "lower")
  if251_end737:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "digit" :subid("cuid_60_1350819711.531") :anon :lex :outer("cuid_67_1350819711.531")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 828
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P101, $P5001
.annotate 'line', 829
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
    unless $I5001 goto if254_end743 
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_str $S5002, $P5008, $P5009, "$!target"
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, .CCLASS_NUMERIC, $S5002, $I5005
    set $I5006, $I5004
  if254_end743:
    unless $I5006 goto if253_end741 
.annotate 'line', 830
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5007, $P5012, $P5013, "$!pos"
    set $N5004, $I5007
    set $N5005, 1
    add $N5003, $N5004, $N5005
    $P5014 = $P101."!cursor_pass"($N5003, "digit")
  if253_end741:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "xdigit" :subid("cuid_61_1350819711.531") :anon :lex :outer("cuid_67_1350819711.531")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 836
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P101, $P5001
.annotate 'line', 837
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
    unless $I5001 goto if256_end747 
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_str $S5002, $P5008, $P5009, "$!target"
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, .CCLASS_HEXADECIMAL, $S5002, $I5005
    set $I5006, $I5004
  if256_end747:
    unless $I5006 goto if255_end745 
.annotate 'line', 838
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5007, $P5012, $P5013, "$!pos"
    set $N5004, $I5007
    set $N5005, 1
    add $N5003, $N5004, $N5005
    $P5014 = $P101."!cursor_pass"($N5003, "xdigit")
  if255_end745:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "space" :subid("cuid_62_1350819711.531") :anon :lex :outer("cuid_67_1350819711.531")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 844
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P101, $P5001
.annotate 'line', 845
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
    unless $I5001 goto if258_end751 
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_str $S5002, $P5008, $P5009, "$!target"
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, .CCLASS_WHITESPACE, $S5002, $I5005
    set $I5006, $I5004
  if258_end751:
    unless $I5006 goto if257_end749 
.annotate 'line', 846
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5007, $P5012, $P5013, "$!pos"
    set $N5004, $I5007
    set $N5005, 1
    add $N5003, $N5004, $N5005
    $P5014 = $P101."!cursor_pass"($N5003, "space")
  if257_end749:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "blank" :subid("cuid_63_1350819711.531") :anon :lex :outer("cuid_67_1350819711.531")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 852
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P101, $P5001
.annotate 'line', 853
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
    unless $I5001 goto if260_end755 
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_str $S5002, $P5008, $P5009, "$!target"
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, .CCLASS_BLANK, $S5002, $I5005
    set $I5006, $I5004
  if260_end755:
    unless $I5006 goto if259_end753 
.annotate 'line', 854
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5007, $P5012, $P5013, "$!pos"
    set $N5004, $I5007
    set $N5005, 1
    add $N5003, $N5004, $N5005
    $P5014 = $P101."!cursor_pass"($N5003, "blank")
  if259_end753:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "cntrl" :subid("cuid_64_1350819711.531") :anon :lex :outer("cuid_67_1350819711.531")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 860
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P101, $P5001
.annotate 'line', 861
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
    unless $I5001 goto if262_end759 
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_str $S5002, $P5008, $P5009, "$!target"
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, .CCLASS_CONTROL, $S5002, $I5005
    set $I5006, $I5004
  if262_end759:
    unless $I5006 goto if261_end757 
.annotate 'line', 862
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5007, $P5012, $P5013, "$!pos"
    set $N5004, $I5007
    set $N5005, 1
    add $N5003, $N5004, $N5005
    $P5014 = $P101."!cursor_pass"($N5003, "cntrl")
  if261_end757:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "punct" :subid("cuid_65_1350819711.531") :anon :lex :outer("cuid_67_1350819711.531")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 868
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P101, $P5001
.annotate 'line', 869
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
    unless $I5001 goto if264_end763 
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_str $S5002, $P5008, $P5009, "$!target"
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, .CCLASS_PUNCTUATION, $S5002, $I5005
    set $I5006, $I5004
  if264_end763:
    unless $I5006 goto if263_end761 
.annotate 'line', 870
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5007, $P5012, $P5013, "$!pos"
    set $N5004, $I5007
    set $N5005, 1
    add $N5003, $N5004, $N5005
    $P5014 = $P101."!cursor_pass"($N5003, "punct")
  if263_end761:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "FAILGOAL" :subid("cuid_66_1350819711.531") :anon :lex :outer("cuid_67_1350819711.531")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 876
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :optional 
    .param int haz_param_19 :opt_flag 
    if haz_param_19, default766
    nqp_get_sc_object $P5004, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set _lex_param_2, $P5004
  default766:
    .lex "self", _lex_param_0 
    .lex "$goal", _lex_param_1 
    .lex "$dba", _lex_param_2 
    if _lex_param_2 goto unless265_end765 
.annotate 'line', 877

                $P5001 = getinterp
                $P5001 = $P5001['sub';1]
            
    set $S5001, $P5001
    box $P5002, $S5001
    set _lex_param_2, $P5002
  unless265_end765:
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
.sub "" :subid("cuid_80_1350819711.531") :anon :lex :outer("cuid_1_1350819711.531")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 888
    .const 'Sub' $P5013 = 'cuid_68_1350819711.531' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_69_1350819711.531' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_70_1350819711.531' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_71_1350819711.531' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_72_1350819711.531' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_73_1350819711.531' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_74_1350819711.531' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_75_1350819711.531' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_76_1350819711.531' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_77_1350819711.531' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_78_1350819711.531' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_79_1350819711.531' 
    capture_lex $P5013 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_68_1350819711.531' 
    capture_lex $P5001
    .const 'Sub' $P5002 = 'cuid_69_1350819711.531' 
    capture_lex $P5002
    .const 'Sub' $P5003 = 'cuid_70_1350819711.531' 
    capture_lex $P5003
    .const 'Sub' $P5004 = 'cuid_71_1350819711.531' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_72_1350819711.531' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_73_1350819711.531' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_74_1350819711.531' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_75_1350819711.531' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_76_1350819711.531' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_77_1350819711.531' 
    capture_lex $P5010
    .const 'Sub' $P5011 = 'cuid_78_1350819711.531' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_79_1350819711.531' 
    capture_lex $P5012
    .return ($P5012) 
.end
.HLL "nqp"
.namespace []
.sub "from" :subid("cuid_68_1350819711.531") :anon :lex :outer("cuid_80_1350819711.531")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 895
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 70
    repr_get_attr_int $I5001, $P5001, $P5002, "$!from"
    .return ($I5001) 
.end
.HLL "nqp"
.namespace []
.sub "orig" :subid("cuid_69_1350819711.531") :anon :lex :outer("cuid_80_1350819711.531")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 896
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 70
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!orig"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "to" :subid("cuid_70_1350819711.531") :anon :lex :outer("cuid_80_1350819711.531")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 897
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 70
    repr_get_attr_int $I5001, $P5001, $P5002, "$!to"
    .return ($I5001) 
.end
.HLL "nqp"
.namespace []
.sub "CURSOR" :subid("cuid_71_1350819711.531") :anon :lex :outer("cuid_80_1350819711.531")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 898
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 70
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!cursor"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "Str" :subid("cuid_72_1350819711.531") :anon :lex :outer("cuid_80_1350819711.531")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 899
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 70
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!orig"
    set $S5002, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 70
    repr_get_attr_int $I5001, $P5004, $P5005, "$!from"
    nqp_decontainerize $P5006, _lex_param_0
    nqp_get_sc_object $P5007, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 70
    repr_get_attr_int $I5002, $P5006, $P5007, "$!to"
    set $N5002, $I5002
    nqp_decontainerize $P5008, _lex_param_0
    nqp_get_sc_object $P5009, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 70
    repr_get_attr_int $I5003, $P5008, $P5009, "$!from"
    set $N5003, $I5003
    sub $N5001, $N5002, $N5003
    set $I5004, $N5001
    substr $S5001, $S5002, $I5001, $I5004
    .return ($S5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_73_1350819711.531") :anon :lex :outer("cuid_80_1350819711.531")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 900
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    $P5002 = $P5001."Str"()
    set $N5001, $P5002
    .return ($N5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_74_1350819711.531") :anon :lex :outer("cuid_80_1350819711.531")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 901
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    $P5002 = $P5001."Str"()
    set $N5001, $P5002
    .return ($N5001) 
.end
.HLL "nqp"
.namespace []
.sub "Bool" :subid("cuid_75_1350819711.531") :anon :lex :outer("cuid_80_1350819711.531")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 902
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 70
    repr_get_attr_int $I5002, $P5001, $P5002, "$!to"
    set $N5001, $I5002
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 70
    repr_get_attr_int $I5003, $P5003, $P5004, "$!from"
    set $N5002, $I5003
    isge $I5001, $N5001, $N5002
    .return ($I5001) 
.end
.HLL "nqp"
.namespace []
.sub "chars" :subid("cuid_76_1350819711.531") :anon :lex :outer("cuid_80_1350819711.531")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 903
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 70
    repr_get_attr_int $I5002, $P5001, $P5002, "$!to"
    set $N5001, $I5002
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 70
    repr_get_attr_int $I5003, $P5003, $P5004, "$!from"
    set $N5002, $I5003
    isge $I5001, $N5001, $N5002
    unless $I5001 goto if266_else767 
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 70
    repr_get_attr_int $I5004, $P5005, $P5006, "$!to"
    set $N5004, $I5004
    nqp_decontainerize $P5007, _lex_param_0
    nqp_get_sc_object $P5008, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 70
    repr_get_attr_int $I5005, $P5007, $P5008, "$!from"
    set $N5005, $I5005
    sub $N5003, $N5004, $N5005
    box $P5010, $N5003
    set $P5009, $P5010
    goto if266_end768
  if266_else767:
    box $P5011, 0
    set $P5009, $P5011
  if266_end768:
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "!make" :subid("cuid_77_1350819711.531") :anon :lex :outer("cuid_80_1350819711.531")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 905
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$ast", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 70
    repr_bind_attr_obj $P5001, $P5002, "$!ast", _lex_param_1
    .return (_lex_param_1) 
.end
.HLL "nqp"
.namespace []
.sub "ast" :subid("cuid_78_1350819711.531") :anon :lex :outer("cuid_80_1350819711.531")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 906
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 70
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!ast"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "!dump_str" :subid("cuid_79_1350819711.531") :anon :lex :outer("cuid_80_1350819711.531")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 908
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5019 = 'cuid_128_1350819711.531' 
    capture_lex $P5019 
    .const 'Sub' $P5019 = 'cuid_129_1350819711.531' 
    capture_lex $P5019 
    .lex "&dump_array", $P101 
    .lex "$str", $P102 
    .lex "self", _lex_param_0 
    .lex "$key", _lex_param_1 
    .const 'Sub' $P5001 = 'cuid_128_1350819711.531' 
    capture_lex $P5001
    set $P101, $P5001
    nqp_get_sc_object $P5002, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P102, $P5002
    set $S5006, _lex_param_1
    concat $S5005, $S5006, ": "
.annotate 'line', 920
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
.annotate 'line', 921
    nqp_decontainerize $P5008, _lex_param_0
    $P5009 = $P5008."list"()
    $P5010 = "&dump_array"(_lex_param_1, $P5009)
    set $S5012, $P5010
    concat $S5010, $S5011, $S5012
    box $P5011, $S5010
    set $P102, $P5011
.annotate 'line', 922
    nqp_decontainerize $P5015, _lex_param_0
    $P5016 = $P5015."hash"()
    set $P5012, $P5016
    iter $P5014, $P5016
  for_next776:
    unless $P5014, for_done778
    shift $P5018, $P5014
  for_redo777:
    .const 'Sub' $P5017 = 'cuid_129_1350819711.531' 
    capture_lex $P5017
    $P5012 = $P5017($P5018)
    goto for_next776
  for_done778:
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "dump_array" :subid("cuid_128_1350819711.531") :anon :lex :outer("cuid_79_1350819711.531")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 909
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5011 = 'cuid_127_1350819711.531' 
    capture_lex $P5011 
    .lex "$str", $P101 
    .lex "$key", _lex_param_0 
    .lex "$item", _lex_param_1 
    nqp_get_sc_object $P5001, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P101, $P5001
    box $P5002, ""
    set $P101, $P5002
.annotate 'line', 911
    nqp_get_sc_object $P5003, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 35
    $P5004 = $P5003."ACCEPTS"(_lex_param_1)
    unless $P5004 goto if267_else769 
    set $S5002, $P101
.annotate 'line', 912
    $P5005 = _lex_param_1."!dump_str"(_lex_param_0)
    set $S5003, $P5005
    concat $S5001, $S5002, $S5003
    box $P5006, $S5001
    set $P101, $P5006
    goto if267_end770
  if267_else769:
    isnull $I5002, _lex_param_1
    not $I5001, $I5002
    box $P5010, $I5001
    set $P5009, $P5010
    unless $I5001 goto if268_end772 
    .const 'Sub' $P5007 = 'cuid_127_1350819711.531' 
    capture_lex $P5007
    $P5008 = $P5007()
    set $P5009, $P5008
  if268_end772:
  if267_end770:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_127_1350819711.531") :anon :lex :outer("cuid_128_1350819711.531")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 914
    .const 'Sub' $P5009 = 'cuid_126_1350819711.531' 
    capture_lex $P5009 
    .lex "$n", $P101 
    nqp_get_sc_object $P5001, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P101, $P5001
    box $P5002, 0
    set $P101, $P5002
    find_lex $P5006, "$item"
    set $P5003, $P5006
    iter $P5005, $P5006
  for_next773:
    unless $P5005, for_done775
    shift $P5008, $P5005
  for_redo774:
    .const 'Sub' $P5007 = 'cuid_126_1350819711.531' 
    capture_lex $P5007
    $P5003 = $P5007($P5008)
    goto for_next773
  for_done775:
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_126_1350819711.531") :anon :lex :outer("cuid_127_1350819711.531")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 916
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
.sub "" :subid("cuid_129_1350819711.531") :anon :lex :outer("cuid_79_1350819711.531")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 922
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
.sub "" :subid("cuid_86_1350819711.531") :anon :lex :outer("cuid_1_1350819711.531")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 927
    .const 'Sub' $P5010 = 'cuid_81_1350819711.531' 
    capture_lex $P5010 
    .const 'Sub' $P5010 = 'cuid_82_1350819711.531' 
    capture_lex $P5010 
    .const 'Sub' $P5010 = 'cuid_83_1350819711.531' 
    capture_lex $P5010 
    .const 'Sub' $P5010 = 'cuid_84_1350819711.531' 
    capture_lex $P5010 
    .const 'Sub' $P5010 = 'cuid_85_1350819711.531' 
    capture_lex $P5010 
    .lex "$EMPTY_MATCH_LIST", $P101 
    .lex "$EMPTY_MATCH_HASH", $P102 
    .lex "$?PACKAGE", $P103 
    .lex "$?CLASS", $P104 
    nqp_get_sc_object $P5001, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P101, $P5001
    nqp_get_sc_object $P5002, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P102, $P5002
    new $P5003, 'ResizablePMCArray'
    set $P101, $P5003
    new $P5004, 'Hash'
    set $P102, $P5004
    .const 'Sub' $P5005 = 'cuid_81_1350819711.531' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_82_1350819711.531' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_83_1350819711.531' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_84_1350819711.531' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_85_1350819711.531' 
    capture_lex $P5009
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "MATCH" :subid("cuid_81_1350819711.531") :anon :lex :outer("cuid_86_1350819711.531")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 930
    .param pmc _lex_param_0 
    .const 'Sub' $P5008 = 'cuid_130_1350819711.531' 
    capture_lex $P5008 
    .lex "$match", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P101, $P5001
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 83
    getattribute $P5002, $P5003, $P5004, "$!match"
    set $P101, $P5002
    nqp_get_sc_object $P5005, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 70
    type_check $I5001, $P101, $P5005
    set $I5003, $I5001
    if $I5001 goto unless270_end782 
    nqp_ishash $I5002, $P101
    set $I5003, $I5002
  unless270_end782:
    if $I5003 goto unless269_end780 
    .const 'Sub' $P5006 = 'cuid_130_1350819711.531' 
    capture_lex $P5006
    $P5007 = $P5006()
  unless269_end780:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_130_1350819711.531") :anon :lex :outer("cuid_81_1350819711.531")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 932
    .lex "$list", $P101 
    .lex "$hash", $P102 
    .lex "%ch", $P103 
    .lex "$key", $S101 
    .lex "$iter", $P104 
    nqp_get_sc_object $P5001, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P101, $P5001
    nqp_get_sc_object $P5002, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P102, $P5002
    new $P5003, 'Hash'
    set $P103, $P5003
    set $S101, ""
    nqp_get_sc_object $P5004, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P104, $P5004
    find_lex $P5005, "$EMPTY_MATCH_LIST"
    set $P101, $P5005
    find_lex $P5006, "$EMPTY_MATCH_HASH"
    set $P102, $P5006
    nqp_get_sc_object $P5008, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 70
    repr_instance_of $P5007, $P5008
    store_lex "$match", $P5007
    find_lex $P5010, "self"
    nqp_decontainerize $P5009, $P5010
    nqp_get_sc_object $P5011, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 83
    find_lex $P5012, "$match"
    setattribute $P5009, $P5011, "$!match", $P5012
    find_lex $P5013, "$match"
    nqp_get_sc_object $P5014, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 70
    find_lex $P5016, "self"
    nqp_decontainerize $P5015, $P5016
    setattribute $P5013, $P5014, "$!cursor", $P5015
    find_lex $P5017, "$match"
    nqp_get_sc_object $P5018, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 70
    find_lex $P5021, "self"
    nqp_decontainerize $P5020, $P5021
    nqp_get_sc_object $P5022, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 83
    getattribute $P5019, $P5020, $P5022, "$!orig"
    setattribute $P5017, $P5018, "$!orig", $P5019
    find_lex $P5023, "$match"
    nqp_get_sc_object $P5024, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 70
    find_lex $P5026, "self"
    nqp_decontainerize $P5025, $P5026
    nqp_get_sc_object $P5027, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 83
    repr_get_attr_int $I5001, $P5025, $P5027, "$!from"
    repr_bind_attr_int $P5023, $P5024, "$!from", $I5001
    find_lex $P5028, "$match"
    nqp_get_sc_object $P5029, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 70
    find_lex $P5031, "self"
    nqp_decontainerize $P5030, $P5031
    nqp_get_sc_object $P5032, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 83
    repr_get_attr_int $I5002, $P5030, $P5032, "$!pos"
    repr_bind_attr_int $P5028, $P5029, "$!to", $I5002
.annotate 'line', 941
    find_lex $P5034, "self"
    nqp_decontainerize $P5033, $P5034
    $P5035 = $P5033."CAPHASH"()
    set $P103, $P5035
    iter $P5036, $P103
    set $P104, $P5036
  while271_test783:
    set $P5052, $P104
    unless $P104 goto while271_done787 
  while271_redo785:
.annotate 'line', 944
    shift $P5037, $P104
    set $S5001, $P5037
    set $S101, $S5001
    iseq $I5003, $S101, "$!from"
    set $I5005, $I5003
    if $I5003 goto unless273_end791 
    iseq $I5004, $S101, "$!to"
    set $I5005, $I5004
  unless273_end791:
    unless $I5005 goto if272_else788 
.annotate 'line', 946
    find_lex $P5038, "$match"
    nqp_get_sc_object $P5039, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 70
.annotate 'line', 947
    set $P5040, $P103[$S101]
    unless_null $P5040, fallback792
    nqp_get_sc_object $P5041, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P5040, $P5041
  fallback792:
    $P5042 = $P5040."from"()
    set $I5006, $P5042
    repr_bind_attr_int $P5038, $P5039, $S101, $I5006
    box $P5051, $I5006
    set $P5050, $P5051
    goto if272_end789
  if272_else788:
    is_cclass $I5007, .CCLASS_NUMERIC, $S101, 0
    unless $I5007 goto if274_else793 
.annotate 'line', 949
    if $P101 goto unless275_end796 
    new $P5043, 'ResizablePMCArray'
    set $P101, $P5043
  unless275_end796:
    set $I5008, $S101
    set $P5044, $P103[$S101]
    unless_null $P5044, fallback797
    nqp_get_sc_object $P5045, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P5044, $P5045
  fallback797:
    set $P101[$I5008], $P5044
    set $P5049, $P5044
    goto if274_end794
  if274_else793:
.annotate 'line', 953
    if $P102 goto unless276_end799 
    new $P5046, 'Hash'
    set $P102, $P5046
  unless276_end799:
    set $P5047, $P103[$S101]
    unless_null $P5047, fallback800
    nqp_get_sc_object $P5048, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P5047, $P5048
  fallback800:
    set $P102[$S101], $P5047
    set $P5049, $P5047
  if274_end794:
    set $P5050, $P5049
  if272_end789:
    set $P5052, $P5050
    goto while271_test783 
  while271_done787:
    find_lex $P5053, "$match"
    nqp_get_sc_object $P5054, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 35
    setattribute $P5053, $P5054, "@!array", $P101
    find_lex $P5055, "$match"
    nqp_get_sc_object $P5056, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 35
    setattribute $P5055, $P5056, "%!hash", $P102
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "Bool" :subid("cuid_82_1350819711.531") :anon :lex :outer("cuid_86_1350819711.531")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 964
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5002, _lex_param_0
    find_lex $P5003, "$?CLASS"
    getattribute $P5001, $P5002, $P5003, "$!match"
    isnull $I5002, $P5001
    not $I5001, $I5002
    set $I5004, $I5001
    unless $I5001 goto if277_end802 
    nqp_decontainerize $P5005, _lex_param_0
    find_lex $P5006, "$?CLASS"
    getattribute $P5004, $P5005, $P5006, "$!match"
    istrue $I5003, $P5004
    set $I5004, $I5003
  if277_end802:
    .return ($I5004) 
.end
.HLL "nqp"
.namespace []
.sub "parse" :subid("cuid_83_1350819711.531") :anon :lex :outer("cuid_86_1350819711.531")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 969
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :named("rule") :optional 
    .param int haz_param_20 :opt_flag 
    .param pmc _lex_param_3 :named("actions") :optional 
    .param int haz_param_21 :opt_flag 
    .param pmc _lex_param_4 :slurpy :named 
    if haz_param_20, default805
    box $P5011, "TOP"
    set _lex_param_2, $P5011
  default805:
    if haz_param_21, default806
    nqp_get_sc_object $P5012, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set _lex_param_3, $P5012
  default806:
    .lex "$*ACTIONS", $P101 
    .lex "$cur", $P102 
    .lex "self", _lex_param_0 
    .lex "$target", _lex_param_1 
    .lex "$rule", _lex_param_2 
    .lex "$actions", _lex_param_3 
    .lex "%options", _lex_param_4 
    nqp_get_sc_object $P5001, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P101, $P5001
    nqp_get_sc_object $P5002, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P102, $P5002
    set $P101, _lex_param_3
.annotate 'line', 971
    nqp_decontainerize $P5003, _lex_param_0
    $P5004 = $P5003."!cursor_init"(_lex_param_1, _lex_param_4 :flat :named)
    set $P102, $P5004
    is_invokable $I5001, _lex_param_2
    unless $I5001 goto if278_else803 
.annotate 'line', 973
    $P5005 = _lex_param_2($P102)
    $P5006 = $P5005."MATCH"()
    set $P5010, $P5006
    goto if278_end804
  if278_else803:
.annotate 'line', 974
    set $S5001, _lex_param_2
    find_method $P5007, $P102, $S5001
    $P5008 = $P5007($P102)
    $P5009 = $P5008."MATCH"()
    set $P5010, $P5009
  if278_end804:
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "!INTERPOLATE" :subid("cuid_84_1350819711.531") :anon :lex :outer("cuid_86_1350819711.531")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 977
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5006 = 'cuid_135_1350819711.531' 
    capture_lex $P5006 
    .const 'Sub' $P5006 = 'cuid_136_1350819711.531' 
    capture_lex $P5006 
    .lex "self", _lex_param_0 
    .lex "$var", _lex_param_1 
    root_new $P101, ['parrot';'Continuation']
    set_label $P101, lexotic_807
    .lex "RETURN", $P101
    nqp_islist $I5001, _lex_param_1
    unless $I5001 goto if279_else809 
    .const 'Sub' $P5001 = 'cuid_135_1350819711.531' 
    capture_lex $P5001
    $P5002 = $P5001()
    set $P5005, $P5002
    goto if279_end810
  if279_else809:
    .const 'Sub' $P5003 = 'cuid_136_1350819711.531' 
    capture_lex $P5003
    $P5004 = $P5003()
    set $P5005, $P5004
  if279_end810:
    goto lexotic_808
  lexotic_807:
    .get_results ($P5005)
  lexotic_808:
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_135_1350819711.531") :anon :lex :outer("cuid_84_1350819711.531")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 978
    .const 'Sub' $P5016 = 'cuid_133_1350819711.531' 
    capture_lex $P5016 
    .lex "$maxlen", $I101 
    .lex "$cur", $P101 
    .lex "$pos", $I102 
    .lex "$tgt", $S101 
    .lex "$eos", $I103 
    set $I101, 0
    nqp_get_sc_object $P5001, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P101, $P5001
    set $I102, 0
    set $S101, ""
    set $I103, 0
    set $I101, -1
.annotate 'line', 980
    find_lex $P5003, "self"
    nqp_decontainerize $P5002, $P5003
    $P5004 = $P5002."!cursor_start"()
    set $P101, $P5004
    find_lex $P5005, "$?CLASS"
    repr_get_attr_int $I5001, $P101, $P5005, "$!from"
    set $I102, $I5001
.annotate 'line', 982
    $P5006 = $P101."target"()
    set $S5001, $P5006
    set $S101, $S5001
    length $I5002, $S101
    set $I103, $I5002
    find_lex $P5010, "$var"
    set $P5007, $P5010
    iter $P5009, $P5010
  for_next823:
    unless $P5009, for_done825
    shift $P5012, $P5009
  for_redo824:
    .const 'Sub' $P5011 = 'cuid_133_1350819711.531' 
    capture_lex $P5011
    $P5007 = $P5011($P5012)
    goto for_next823
  for_done825:
    set $N5001, $I101
    set $N5002, 0
    isge $I5003, $N5001, $N5002
    unless $I5003 goto if286_end827 
.annotate 'line', 999
    set $N5004, $I102
    set $N5005, $I101
    add $N5003, $N5004, $N5005
    $P5013 = $P101."!cursor_pass"($N5003, "")
  if286_end827:
    find_lex $P5014, "RETURN"
    $P5015 = $P5014($P101)
    .return ($P5015) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_133_1350819711.531") :anon :lex :outer("cuid_135_1350819711.531")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 984
    .param pmc _lex_param_0 
    .const 'Sub' $P5006 = 'cuid_132_1350819711.531' 
    capture_lex $P5006 
    .const 'Sub' $P5006 = 'cuid_134_1350819711.531' 
    capture_lex $P5006 
    .lex "$_", _lex_param_0 
    is_invokable $I5001, _lex_param_0
    unless $I5001 goto if280_else811 
    .const 'Sub' $P5001 = 'cuid_132_1350819711.531' 
    capture_lex $P5001
    $P5002 = $P5001()
    set $P5005, $P5002
    goto if280_end812
  if280_else811:
    .const 'Sub' $P5003 = 'cuid_134_1350819711.531' 
    capture_lex $P5003
    $P5004 = $P5003()
    set $P5005, $P5004
  if280_end812:
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_132_1350819711.531") :anon :lex :outer("cuid_133_1350819711.531")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 985
    .const 'Sub' $P5009 = 'cuid_131_1350819711.531' 
    capture_lex $P5009 
    .lex "$res", $P101 
    nqp_get_sc_object $P5001, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P101, $P5001
.annotate 'line', 986
    find_lex $P5004, "self"
    nqp_decontainerize $P5003, $P5004
    find_lex $P5002, "$_"
    $P5005 = $P5002($P5003)
    set $P101, $P5005
    set $P5008, $P101
    unless $P101 goto if281_end814 
    .const 'Sub' $P5006 = 'cuid_131_1350819711.531' 
    capture_lex $P5006
    $P5007 = $P5006()
    set $P5008, $P5007
  if281_end814:
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_131_1350819711.531") :anon :lex :outer("cuid_132_1350819711.531")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 987
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
    unless $I5004 goto if282_end816 
    store_lex "$maxlen", $I101
    set $I5006, $I101
  if282_end816:
    .return ($I5006) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_134_1350819711.531") :anon :lex :outer("cuid_133_1350819711.531")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 993
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
    unless $I5002 goto if285_end822 
    find_lex $I5005, "$pos"
    set $N5004, $I5005
    set $N5005, $I101
    add $N5003, $N5004, $N5005
    find_lex $I5006, "$eos"
    set $N5006, $I5006
    isle $I5004, $N5003, $N5006
    set $I5007, $I5004
  if285_end822:
    set $I5010, $I5007
    unless $I5007 goto if284_end820 
    find_lex $S5003, "$tgt"
    find_lex $I5009, "$pos"
    substr $S5002, $S5003, $I5009, $I101
    find_lex $P5002, "$_"
    set $S5004, $P5002
    iseq $I5008, $S5002, $S5004
    set $I5010, $I5008
  if284_end820:
    set $I5011, $I5010
    unless $I5010 goto if283_end818 
    store_lex "$maxlen", $I101
    set $I5011, $I101
  if283_end818:
    .return ($I5011) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_136_1350819711.531") :anon :lex :outer("cuid_84_1350819711.531")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1002
    .lex "$cur", $P101 
    .lex "$pos", $I101 
    .lex "$tgt", $S101 
    .lex "$len", $I102 
    .lex "$adv", $I103 
    nqp_get_sc_object $P5001, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P101, $P5001
    set $I101, 0
    set $S101, ""
    set $I102, 0
    set $I103, 0
    find_lex $P5002, "$var"
    is_invokable $I5001, $P5002
    unless $I5001 goto if287_end829 
.annotate 'line', 1003
    find_lex $P5006, "self"
    nqp_decontainerize $P5005, $P5006
    find_lex $P5004, "$var"
    $P5007 = $P5004($P5005)
    find_lex $P5003, "RETURN"
    $P5008 = $P5003($P5007)
  if287_end829:
.annotate 'line', 1004
    find_lex $P5010, "self"
    nqp_decontainerize $P5009, $P5010
    $P5011 = $P5009."!cursor_start"()
    set $P101, $P5011
    find_lex $P5012, "$?CLASS"
    repr_get_attr_int $I5002, $P101, $P5012, "$!from"
    set $I101, $I5002
.annotate 'line', 1006
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
    if $I5005 goto unless289_end833 
    substr $S5003, $S101, $I101, $I102
    find_lex $P5015, "$var"
    set $S5004, $P5015
    isne $I5007, $S5003, $S5004
    set $I5008, $I5007
  unless289_end833:
    unless $I5008 goto if288_end831 
    find_lex $P5016, "RETURN"
    $P5017 = $P5016($P101)
  if288_end831:
.annotate 'line', 1011
    $P101."!cursor_pass"($I103, "")
    find_lex $P5018, "RETURN"
    $P5019 = $P5018($P101)
    .return ($P5019) 
.end
.HLL "nqp"
.namespace []
.sub "!INTERPOLATE_REGEX" :subid("cuid_85_1350819711.531") :anon :lex :outer("cuid_86_1350819711.531")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1016
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5007 = 'cuid_139_1350819711.531' 
    capture_lex $P5007 
    .lex "self", _lex_param_0 
    .lex "$var", _lex_param_1 
    root_new $P101, ['parrot';'Continuation']
    set_label $P101, lexotic_834
    .lex "RETURN", $P101
    is_invokable $I5001, _lex_param_1
    if $I5001 goto unless290_end837 
    .const 'Sub' $P5001 = 'cuid_139_1350819711.531' 
    capture_lex $P5001
    $P5002 = $P5001()
  unless290_end837:
.annotate 'line', 1032
    nqp_decontainerize $P5004, _lex_param_0
    $P5005 = $P5004."!INTERPOLATE"(_lex_param_1)
    find_lex $P5003, "RETURN"
    $P5006 = $P5003($P5005)
    goto lexotic_835
  lexotic_834:
    .get_results ($P5006)
  lexotic_835:
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_139_1350819711.531") :anon :lex :outer("cuid_85_1350819711.531")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1017
    .const 'Sub' $P5009 = 'cuid_138_1350819711.531' 
    capture_lex $P5009 
    .lex "$rxcompiler", $P101 
    nqp_get_sc_object $P5001, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P101, $P5001
    compreg $P5002, "QRegex::P6Regex"
    set $P101, $P5002
    find_lex $P5003, "$var"
    nqp_islist $I5001, $P5003
    unless $I5001 goto if291_else838 
    .const 'Sub' $P5004 = 'cuid_138_1350819711.531' 
    capture_lex $P5004
    $P5005 = $P5004()
    set $P5008, $P5005
    goto if291_end839
  if291_else838:
.annotate 'line', 1028
.annotate 'line', 1029
    find_lex $P5006, "$var"
    $P5007 = $P101."compile"($P5006)
    store_lex "$var", $P5007
    set $P5008, $P5007
  if291_end839:
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_138_1350819711.531") :anon :lex :outer("cuid_139_1350819711.531")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1019
    .const 'Sub' $P5009 = 'cuid_137_1350819711.531' 
    capture_lex $P5009 
    .lex "$res", $P101 
    nqp_get_sc_object $P5001, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P101, $P5001
    new $P5002, 'ResizablePMCArray'
    set $P101, $P5002
    find_lex $P5006, "$var"
    set $P5003, $P5006
    iter $P5005, $P5006
  for_next842:
    unless $P5005, for_done844
    shift $P5008, $P5005
  for_redo843:
    .const 'Sub' $P5007 = 'cuid_137_1350819711.531' 
    capture_lex $P5007
    $P5003 = $P5007($P5008)
    goto for_next842
  for_done844:
    store_lex "$var", $P101
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_137_1350819711.531") :anon :lex :outer("cuid_138_1350819711.531")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1021
    .param pmc _lex_param_0 
    .lex "$elem", $P101 
    .lex "$_", _lex_param_0 
    nqp_get_sc_object $P5001, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011", 14
    set $P101, $P5001
    set $P101, _lex_param_0
    is_invokable $I5001, $P101
    if $I5001 goto unless292_end841 
.annotate 'line', 1023
    find_lex $P5002, "$rxcompiler"
    $P5003 = $P5002."compile"($P101)
    set $P101, $P5003
  unless292_end841:
    find_lex $P5004, "$res"
    push $P5004, $P101
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_100_1350819711.531") :anon :lex :outer("cuid_1_1350819711.531")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1036
    .const 'Sub' $P5004 = 'cuid_97_1350819711.531' 
    capture_lex $P5004 
    .const 'Sub' $P5004 = 'cuid_98_1350819711.531' 
    capture_lex $P5004 
    .const 'Sub' $P5004 = 'cuid_99_1350819711.531' 
    capture_lex $P5004 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_97_1350819711.531' 
    capture_lex $P5001
    .const 'Sub' $P5002 = 'cuid_98_1350819711.531' 
    capture_lex $P5002
    .const 'Sub' $P5003 = 'cuid_99_1350819711.531' 
    capture_lex $P5003
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "new" :subid("cuid_97_1350819711.531") :anon :lex :outer("cuid_100_1350819711.531")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1038
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$code", _lex_param_1 
.annotate 'line', 1039
    nqp_decontainerize $P5001, _lex_param_0
    $P5002 = $P5001."bless"(_lex_param_1 :named("code"))
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "ACCEPTS" :subid("cuid_98_1350819711.531") :anon :lex :outer("cuid_100_1350819711.531")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1041
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$target", _lex_param_1 
.annotate 'line', 1042
    nqp_get_sc_object $P5001, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 83
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5001."parse"(_lex_param_1, $P5002 :named("rule"))
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "Str" :subid("cuid_99_1350819711.531") :anon :lex :outer("cuid_100_1350819711.531")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1044
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 89
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!code"
    set $S5001, $P5003
    .return ($S5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_102_1350819711.531") :anon :lex :outer("cuid_1_1350819711.531")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1049
    .const 'Sub' $P5002 = 'cuid_101_1350819711.531' 
    capture_lex $P5002 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_101_1350819711.531' 
    capture_lex $P5001
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "ACCEPTS" :subid("cuid_101_1350819711.531") :anon :lex :outer("cuid_102_1350819711.531")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1050
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$target", _lex_param_1 
.annotate 'line', 1051
    nqp_get_sc_object $P5001, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 83
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5001."parse"(_lex_param_1, $P5002 :named("rule"), 0 :named("c"))
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_141_1350819711.531") :load :init
.annotate 'file', "src\\stage2\\QRegex.nqp"
    .const 'Sub' $P5001 = 'cuid_140_1350819711.531' 
    capture_lex $P5001 
    .local pmc cur_sc 
    nqp_dynop_setup 
    nqp_bigint_setup 
    getinterp $P5001
    get_class $P5002, "LexPad"
    get_class $P5003, "NQPLexPad"
    $P5001."hll_map"($P5002, $P5003)
    load_bytecode "ModuleLoader.pbc"
    .const 'Sub' $P5001 = "cuid_1_1350819711.531" 
    get_hll_global $P5002, "ModuleLoader"
    $P5003 = $P5002."load_setting"("NQPCORE")
    $P5001."set_outer_ctx"($P5003)
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P5001, "ModuleLoader"
    $P5001."load_module"("QASTNode")
    nqp_create_sc $P5001, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546"
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
    push $P5002, "EB0E93B356AB9BB2B4EC928BCE92F398441589E5-1350819709.011"
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
    push $P5002, "BE58E51235EED3306B26CFF0B8705FAD5A9CA65C-1350819705.793"
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
    push $P5002, "16DB1CA83A28E7980973C07333DCEC2A69D52B08-1350819710.059"
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
    .const 'Sub' $P5003 = 'cuid_140_1350819711.531' 
    capture_lex $P5003
    $P5004 = $P5003()
    nqp_deserialize_sc "AQAAAEAAAAAEAAAAYAAAAAwAAADAAAAAThQAAKgAAADOHgAAkEAAACgAAABQRAAAAQAAAGBEAACkRAAAAAAAAAsAAAAMAAAAeQAAAAAAAAB8AAAAfQAAAIwAAACNAAAAAQAAAAAAAAABAAAA/AAAAAEAAACkAQAAAQAAAEwCAAAxAAAANAUAAAEAAAB0BQAAAQAAAIIIAAABAAAAyA0AAAEAAABcDwAAAQAAAAYRAAABAAAAuBIAADEAAABSEwAAAAAAAF8AAAAAAAAAAAAAAAoABwAAAAIAAAACAAAAAABgAAAAAwAAAAIAAAAAAGEAAAAEAAAAAgAAAAAAHAAAAAUAAAACAAAAAABGAAAABgAAAAIAAAAAAFMAAAAHAAAAAgAAAAAAWQAAAAgAAAACAAAAAABdAAAACgAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAAAAAAAAMAAAAAAGIAAAAAAAAAAQAAAAoAAQAAAAkAAAACAAAAAAACAAAACgAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAAEAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAAAQAAAAMAAAAAAGMAAAAAAAAAAgAAAAoAAQAAAAQAAAACAAAAAAAcAAAACgAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAAIAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAAAgAAAAMAAAAAAGQAAAAAAAAAAwAAAAoAAAAAAAoAIwAAAAoAAAACAAEAAAAPAAAADQAAAAIAAQAAABAAAAAOAAAAAgABAAAAEQAAAA8AAAACAAAAAAAEAAAAEAAAAAIAAQAAABMAAAARAAAAAgABAAAAFgAAABIAAAACAAEA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AQAAAAAAAABBAAAABAACAAAAAAAAAHEAAAAEAAMAAAAAAAAAcgAAAAQABAAAAAAAAABzAAAABAAFAAAAAAAAAHQAAAAEAAYAAAAAAAAAdQAAAAQABwAAAAAAAAB2AAAABAAIAAAAAAAAAHcAAAAEAAkAAAAAAAAAAAAAAJEAAAAAAAAAWQAAAAoAAAAAAAoADQAAAAoAAAACAAEAAAAPAAAADQAAAAIAAQAAABAAAAAOAAAAAgABAAAAEQAAAA8AAAACAAAAAABaAAAAEAAAAAIAAAAAAFwAAAARAAAAAgABAAAAFgAAABIAAAACAAEAAAAYAAAAEwAAAAIAAQAAABoAAAAUAAAAAgABAAAAHAAAABUAAAACAAEAAAAeAAAAFgAAAAIAAAAAAFsAAAAXAAAAAgABAAAAIQAAABgAAAACAAEAAAAiAAAAAAAAAAAAAAACAAAAAAAAAAIAAAAAAFkAAAACAAEAAAAOAAAABAAAAAAAAAABAAAAAAAAAAUAAAAAAAAAAwAAAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAgABAAAADgAAAP///////////////////////////////wAAAAAAAAAAAgAAAAAAAAACAAEAAAAOAAAAAwACAAAAAABZAAAACgABAAAAeAAAAAQAAAAAAAAAAAAAAAAAkgAAAAAAAABdAAAACgAAAAAACgANAAAACgAAAAIAAQAAAA8AAAANAAAAAgABAAAAEAAAAA4AAAACAAEAAAARAAAADwAAAAIAAAAAAFoAAAAQAAAAAgAAAAAAXAAAABEAAAACAAEAAAAWAAAAEgAAAAIAAQAAABgAAAATAAAAAgABAAAAGgAAABQAAAACAAEAAAAcAAAAFQAAAAIAAQAAAB4AAAAWAAAAAgAAAAAAXgAAABcAAAACAAEAAAAhAAAAGAAAAAIAAQAAACIAAAAAAAAAAAAAAAMAAAAAAAAAAgAAAAAAXQAAAAIAAAAAAFkAAAACAAEAAAAOAAAABAAAAAAAAAABAAAAAAAAAAUAAAAAAAAAAwAAAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAgABAAAADgAAAP///////////////////////////////wAAAAAAAAAAAwAAAAAAAAACAAEAAAAOAAAAAwACAAAAAABZAAAACgABAAAAeAAAAAQAAAAAAAAAAAACAAAAAABdAAAAAwAAAAAApQAAAAAAAABgAAAACgAUAAAAiwAAAAIABAAAAAMAAACOAAAAAgAEAAAACAAAAI8AAAACAAQAAAAMAAAAkAAAAAIABAAAACcAAACRAAAAAgAEAAAALwAAAJIAAAACAAQAAAAzAAAAkwAAAAIABAAAADcAAACUAAAAAgAEAAAAOwAAAJUAAAACAAQAAAA+AAAAlgAAAAIABAAAAEIAAACXAAAAAgAEAAAARwAAAJgAAAACAAQAAABPAAAAmQAAAAIABAAAAFEAAACaAAAAAgAEAAAAVwAAAJsAAAACAAQAAABbAAAAnAAAAAIABAAAAF8AAACdAAAAAgAEAAAAYwAAAJ4AAAACAAQAAABrAAAAnwAAAAIABAAAAG4AAACgAAAAAgAEAAAAdwAAAAoAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAABgAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAAGAAAAADAAAAAACmAAAAAAAAAGEAAAAKAAEAAAChAAAAAgAAAAAAAwAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAQAAAAAAAAACAAAAAABhAAAAAwAAAAAApwAAAAAAAACQAAAAAwABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAACAAAAAAAAAAAAAAAAAAAAAwAAAAAAAAAAAAAAAQAAAAUAAAAAAAAAAQAAAAEAAAAFAAAAEAAAAAEAAAABAAAABQAAACAAAAABAAAAAQAAAAUAAAAwAAAAAQAAAAEAAAAFAAAAQAAAAAEAAAABAAAABQAAAFAAAAABAAAAAQAAAAUAAABgAAAAAQAAAAEAAAAFAAAAcAAAAAEAAAABAAAABQAAAIAAAAABAAAAAQAAAAUAAACQAAAAAQAAAAEAAAAFAAAAoAAAAAEAAAABAAAABQAAALAAAAABAAAAAQAAAAUAAADAAAAAAQAAAAEAAAAFAAAA0AAAAAEAAAABAAAABQAAAOAAAAABAAAAAQAAAAUAAADwAAAAAQAAAAEAAAAFAAAAAAEAAAEAAAABAAAABQAAABABAAABAAAAAQAAAAUAAAAgAQAAAQAAAAEAAAAFAAAAMAEAAAEAAAABAAAABQAAAEABAAABAAAAAQAAAAUAAABQAQAAAQAAAAEAAAAFAAAAYAEAAAEAAAABAAAABQAAAHABAAABAAAAAAAAAAQAAACAAQAAAAAAAAEAAAAFAAAAgAEAAAEAAAABAAAABQAAAJABAAABAAAAAQAAAAUAAACgAQAAAQAAAAEAAAAFAAAAsAEAAAEAAAABAAAABQAAAMABAAABAAAAAQAAAAUAAADQAQAAAQAAAAEAAAAFAAAA4AEAAAEAAAABAAAABQAAAPABAAABAAAAAQAAAAUAAAAAAgAAAQAAAAEAAAAFAAAAEAIAAAEAAAABAAAABQAAACACAAABAAAAAQAAAAUAAAAwAgAAAQAAAAEAAAAFAAAAQAIAAAEAAAABAAAABQAAAFACAAABAAAAAQAAAAUAAABgAgAAAQAAAAEAAAAFAAAAcAIAAAEAAAABAAAABQAAAIACAAABAAAAAQAAAAUAAACQAgAAAQAAAAEAAAAFAAAAoAIAAAEAAAABAAAABQAAALACAAABAAAAAQAAAAUAAADAAgAAAQAAAAEAAAAFAAAA0AIAAAEAAAABAAAABQAAAOACAAABAAAAAQAAAAUAAADwAgAAAQAAAAEAAAAFAAAAAAMAAAEAAAABAAAABQAAABADAAABAAAAAQAAAAUAAAAgAwAAAQAAAAEAAAAFAAAAMAMAAAEAAAABAAAABQAAAEADAAABAAAAAQAAAAUAAABQAwAAAQAAAAEAAAAFAAAAYAMAAAEAAAABAAAABQAAAHADAAABAAAAAQAAAAUAAACAAwAAAQAAAAEAAAAFAAAAkAMAAAEAAAABAAAABQAAAKADAAABAAAAAQAAAAUAAACwAwAAAQAAAAEAAAAFAAAAwAMAAAEAAAABAAAABQAAANADAAABAAAAAQAAAAUAAADgAwAAAQAAAAEAAAAFAAAA8AMAAAEAAAABAAAABQAAAAAEAAABAAAAAAAAAAUAAAAQBAAAAAAAAAEAAAAFAAAAEAQAAAEAAAABAAAABQAAACAEAAABAAAAAQAAAAUAAAAwBAAAAQAAAAEAAAAFAAAAQAQAAAEAAAABAAAABQAAAFAEAAABAAAAAQAAAAUAAABgBAAAAQAAAAEAAAAFAAAAcAQAAAEAAAABAAAABQAAAIAEAAABAAAAAQAAAAUAAACQBAAAAQAAAAEAAAAFAAAAoAQAAAEAAAABAAAABQAAALAEAAABAAAAAQAAAAUAAADABAAAAQAAAAAAAAAGAAAA0AQAAAAAAAABAAAABQAAANAEAAABAAAAAQAAAAUAAADgBAAAAQAAAAEAAAAFAAAA8AQAAAEAAAABAAAABQAAAAAFAAABAAAAAQAAAAUAAAAQBQAAAQAAAAAAAAAHAAAAIAUAAAAAAAABAAAABQAAACAFAAABAAAAAQAAAAUAAAAwBQAAAQAAAAEAAAAFAAAAQAUAAAEAAAAAAAAACAAAAFAFAAAAAAAAAQAAAAUAAABQBQAAAQAAAAIAAAAAAAAAYAUAAAEAAAAAAAAACQAAAHAFAAAAAAAAAAAAAAoAAABwBQAAAAAAAAIAAAAAAAAAcAUAAAEAAAACAAAAAAAAAIAFAAABAAAAAwAAAAcAAACQBQAAAQAAAAMAAAAGAAAAJgkAAAEAAAADAAAABwAAABQMAAABAAAAAwAAAAcAAABmDgAAAQAAAAEAAAAFAAAA4hYAAAEAAAABAAAABQAAAPIWAAABAAAAAQAAAAUAAAACFwAAAQAAAAEAAAAFAAAAEhcAAAEAAAABAAAABQAAACIXAAABAAAAAQAAAAUAAAAyFwAAAQAAAAEAAAAFAAAAQhcAAAEAAAABAAAABQAAAFIXAAABAAAAAQAAAAUAAABiFwAAAQAAAAEAAAAFAAAAchcAAAEAAAABAAAABQAAAIIXAAABAAAAAQAAAAUAAACSFwAAAQAAAAEAAAAFAAAAohcAAAEAAAABAAAABQAAALIXAAABAAAAAQAAAAUAAADCFwAAAQAAAAEAAAAFAAAA0hcAAAEAAAABAAAABQAAAOIXAAABAAAAAQAAAAUAAADyFwAAAQAAAAEAAAAFAAAAAhgAAAEAAAABAAAABQAAABIYAAABAAAAAQAAAAUAAAAiGAAAAQAAAAEAAAAFAAAAMhgAAAEAAAABAAAABQAAAEIYAAABAAAAAQAAAAUAAABSGAAAAQAAAAEAAAAFAAAAYhgAAAEAAAABAAAABQAAAHIYAAABAAAAAQAAAAUAAACCGAAAAQAAAAEAAAAFAAAAkhgAAAEAAAABAAAABQAAAKIYAAABAAAAAQAAAAUAAACyGAAAAQAAAAEAAAAFAAAAwhgAAAEAAAABAAAABQAAANIYAAABAAAAAQAAAAUAAADiGAAAAQAAAAEAAAAFAAAA8hgAAAEAAAABAAAABQAAAAIZAAABAAAAAQAAAAUAAAASGQAAAQAAAAEAAAAFAAAAIhkAAAEAAAABAAAABQAAADIZAAABAAAAAQAAAAUAAABCGQAAAQAAAAEAAAAFAAAAUhkAAAEAAAAAAAAACwAAAGIZAAAAAAAAAwAAAAcAAABiGQAAAQAAAAMAAAAHAAAAzhoAAAEAAAADAAAACQAAALAbAAABAAAAAwAAAAkAAADYGwAAAQAAAAMAAAAJAAAAABwAAAEAAAADAAAACQAAACgcAAABAAAAAwAAAAkAAABYHAAAAQAAAAMAAAAJAAAAiBwAAAEAAAADAAAACQAAALgcAAABAAAAAwAAAAkAAADgHAAAAQAAAAMAAAAJAAAACB0AAAEAAAADAAAACQAAADAdAAABAAAAAwAAAAkAAABYHQAAAQAAAAMAAAAJAAAAgB0AAAEAAAADAAAACQAAAKgdAAABAAAAAwAAAAkAAADQHQAAAQAAAAMAAAAJAAAAAB4AAAEAAAADAAAACQAAADAeAAABAAAAAwAAAAkAAABYHgAAAQAAAAMAAAAJAAAAgB4AAAEAAAACAAAAAAAAAKgeAAABAAAAAgAAAAAAAAC4HgAAAQAAAAMAAAADAAAAyB4AAAEAAAALAAAAAAAAAAAAAQABAAEACwAAAAAAAQAAAAEAAQABAAsAAAAAAAIAAAABAAEAAQALAAAAAAADAAAAAQABAAEACwAAAAAABAAAAAEAAQABAAsAAAAAAAUAAAABAAEAAQALAAAAAAAGAAAAAQABAAEACwAAAAAABwAAAAEAAQABAAsAAAAAAAgAAAABAAEAAQALAAAAAAAJAAAAAQABAAEACwAAAAAACgAAAAEAAQABAAsAAAAAAAsAAAABAAEAAQALAAAAAAAMAAAAAQABAAEACwAAAAAADQAAAAEAAQABAAsAAAAAAA4AAAABAAEAAQALAAAAAAAPAAAAAQABAAEACwAAAAAAEAAAAAEAAQABAAsAAAAAABEAAAABAAEAAQALAAAAAAASAAAAAQABAAEACwAAAAAAEwAAAAEAAQABAAsAAAAAABQAAAABAAEAAQALAAAAAAAVAAAAAQABAAEACwAAAAAAFgAAAAEAAQABAAsAAAAAABcAAAABAAEAAQALAAAAAAAYAAAAAQABAAEACwAAAAAAGQAAAAEAAQABAAsAAAAAABoAAAABAAEAAQALAAAAAAAbAAAAAQABAAEACwAAAAAAHAAAAAEAAQABAAsAAAAAAB0AAAABAAEAAQALAAAAAAAeAAAAAQABAAEACwAAAAAAHwAAAAEAAQABAAsAAAAAACAAAAABAAEAAQALAAAAAAAhAAAAAQABAAEACwAAAAAAIgAAAAEAAQABAAsAAAAAACMAAAABAAEAAQALAAAAAAAkAAAAAQABAAEACwAAAAAAJQAAAAEAAQABAAsAAAAAACYAAAABAAEAAQALAAAAAAAnAAAAAQABAAEACwAAAAAAKAAAAAEAAQABAAsAAAAAACkAAAABAAEAAQALAAAAAAAqAAAAAQABAAEACwAAAAAAKwAAAAEAAQABAAsAAAAAACwAAAABAAEAAQALAAAAAAAtAAAAAQABAAEACwAAAAAALgAAAAEAAQABAAsAAAAAAC8AAAABAAEAAQALAAAAAAAwAAAAAQABAAEACwAAAAAAMQAAAAEAAQABAAsAAAAAADIAAAABAAEAAQALAAAAAAAzAAAAAQABAAEACwAAAAAANAAAAAEAAQABAAsAAAAAADUAAAABAAEAAQALAAAAAAA2AAAAAQABAAEACwAAAAAANwAAAAEAAQABAAsAAAAAADgAAAABAAEAAQALAAAAAAA5AAAAAQABAAEACwAAAAAAOgAAAAEAAQABAAsAAAAAADsAAAABAAEAAQALAAAAAAA8AAAAAQABAAEACwAAAAAAPQAAAAEAAQABAAsAAAAAAD4AAAABAAEAAQALAAAAAAA/AAAAAQABAAEACwAAAAAAQAAAAAEAAQABAAsAAAAAAEEAAAABAAEAAQALAAAAAABCAAAAAQABAAEACwAAAAAAQwAAAAEAAQABAAsAAAAAAEQAAAABAAEAAQALAAAAAABFAAAA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AgAAAAAApAAAAAoAAwAAAA8AAAACAAAAAABaAAAAFgAAAAIAAAAAAFsAAAAQAAAAAgAAAAAAXAAAAAcAAwAAAAIAAAAAAFoAAAACAAAAAABbAAAAAgAAAAAAXAAAAAcAAAAAAAcAAQAAAAIAAQAAAA4AAAAHAAAAAAACAAEAAAAOAAAABwAAAAAACgAAAAAABAABAAAAAAAAAAcAAgAAAAIAAAAAAFkAAAACAAEAAAAOAAAABwAAAAAACgABAAAAgAAAAAIAAAAAAFwAAAAKAAEAAACJAAAABwACAAAAAgAAAAAAWQAAAAYAeAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwABAAAABwAEAAAABAABAAAAAAAAAAIAAAAAAFkAAAAGAIoAAAAGAHgAAAAHAAEAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAWQAAAAYAigAAAAYAeAAAAAEABgAIAAAACgAAAAAACgABAAAAFgAAAAIAAAAAAF4AAAAHAAEAAAACAAAAAABeAAAABwAAAAAABwABAAAAAgAAAAAAWQAAAAcAAAAAAAEABwAAAAAACgAAAAAABAABAAAAAAAAAAcAAwAAAAIAAAAAAF0AAAACAAAAAABZAAAAAgABAAAADgAAAAcAAAAAAAoAAAAAAAoAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwABAAAABwAEAAAABAABAAAAAAAAAAIAAAAAAFkAAAAGAIoAAAAGAHgAAAAHAAAAAAABAAYALwAAAAMABAAAAAAAAAAAAAMAAgABAAAADgAAAAQAAQAAAAAAAAAGADAAAAADAAQAAAAAAAAAAAADAAIAAQAAAA4AAAAEAAEAAAAAAAAABgBAAAAAAwAEAAAAAAAAAAAAAwACAAEAAAAOAAAABAABAAAAAAAAAAYAcAAAAAIAAQAAAAQAAAAEAAEAAAAAAAAAAwACAAEAAAAEAAAABAABAAAAAAAAAAYAQQAAAAIAAQAAAAIAAAAEAAEAAAAAAAAAAwACAAEAAAACAAAABAABAAAAAAAAAAYAcQAAAAIAAQAAAAIAAAAEAAEAAAAAAAAAAwACAAEAAAACAAAABAABAAAAAAAAAAYAcgAAAAMABAAAAAAAAAAAAAMAAgABAAAADgAAAAQAAQAAAAAAAAAGAHMAAAADAAQAAAAAAAAAAAADAAIA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fwAAAAAAAAAwAAAAAQAAAAEAAAAAAAAAgAAAAAAAAAAxAAAAAQAAAAEAAAAAAAAAgQAAAAAAAAAyAAAAAQAAAAEAAAAAAAAAggAAAAAAAAAzAAAAAQAAAAEAAAAAAAAAgwAAAAAAAAA0AAAAAQAAAAEAAAAAAAAAhAAAAAAAAAA1AAAAAQAAAAEAAAAAAAAAhQAAAAAAAAA2AAAAAQAAAAEAAAAAAAAAhgAAAAAAAAA3AAAAAQAAAAEAAAAAAAAAhwAAAAAAAAA4AAAAAQAAAAEAAAAAAAAAiAAAAAAAAAA5AAAAAQAAAAEAAAAAAAAAiQAAAAAAAAA6AAAAAQAAAAEAAAAAAAAAigAAAAAAAAA7AAAAAQAAAAEAAAAAAAAAiwAAAAAAAAA8AAAAAQAAAAEAAAAAAAAAjAAAAAAAAAA9AAAAAQAAAAEAAAAAAAAAjQAAAAAAAAA+AAAAAQAAAAEAAAAAAAAAjgAAAAAAAAA/AAAAAQAAAAEAAAAAAAAAjwAAAAAAAABAAAAAAAAAAAAAAAAGAAAAAAAAAKIAAAADAKMAAAADAKQAAAAKAAAAAAClAAAABAABAAAAAAAAAKYAAAAHAAAAAACnAAAAAgAAAAAAUwAAAA==", cur_sc, $P5002, $P5004
    .const "LexInfo" $P5001 = "cuid_1_1350819711.531"
    nqp_get_sc_object $P5002, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 0
    $P5001."set_static_lexpad_value"("GLOBALish", $P5002)
    .const "LexInfo" $P5003 = "cuid_1_1350819711.531"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1350819711.531"
    nqp_get_sc_object $P5002, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 0
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_1_1350819711.531"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1350819711.531"
    nqp_get_sc_object $P5002, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 1
    $P5001."set_static_lexpad_value"("EXPORT", $P5002)
    .const "LexInfo" $P5003 = "cuid_1_1350819711.531"
    $P5003."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_2_1350819711.531" 
    nqp_get_sc_object $P5002, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 4
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_3_1350819711.531" 
    nqp_get_sc_object $P5002, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 5
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_4_1350819711.531" 
    nqp_get_sc_object $P5002, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 6
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_5_1350819711.531" 
    nqp_get_sc_object $P5002, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 7
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_6_1350819711.531" 
    nqp_get_sc_object $P5002, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 8
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_7_1350819711.531" 
    nqp_get_sc_object $P5002, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 9
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_8_1350819711.531" 
    nqp_get_sc_object $P5002, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 10
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_9_1350819711.531" 
    nqp_get_sc_object $P5002, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 11
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_10_1350819711.531" 
    nqp_get_sc_object $P5002, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 12
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_11_1350819711.531" 
    nqp_get_sc_object $P5002, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 13
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_12_1350819711.531" 
    nqp_get_sc_object $P5002, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 14
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_13_1350819711.531" 
    nqp_get_sc_object $P5002, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 15
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_14_1350819711.531" 
    nqp_get_sc_object $P5002, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 16
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_15_1350819711.531" 
    nqp_get_sc_object $P5002, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 17
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_16_1350819711.531" 
    nqp_get_sc_object $P5002, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 18
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_17_1350819711.531" 
    nqp_get_sc_object $P5002, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 19
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_18_1350819711.531" 
    nqp_get_sc_object $P5002, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 20
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_19_1350819711.531" 
    nqp_get_sc_object $P5002, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 21
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_20_1350819711.531" 
    nqp_get_sc_object $P5002, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 22
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_21_1350819711.531" 
    nqp_get_sc_object $P5002, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 23
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_22_1350819711.531" 
    nqp_get_sc_object $P5002, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 24
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_23_1350819711.531" 
    nqp_get_sc_object $P5002, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 25
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_24_1350819711.531" 
    nqp_get_sc_object $P5002, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 26
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_25_1350819711.531" 
    nqp_get_sc_object $P5002, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 27
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_26_1350819711.531"
    nqp_get_sc_object $P5002, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 3
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_26_1350819711.531"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_26_1350819711.531"
    nqp_get_sc_object $P5002, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 3
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_26_1350819711.531"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1350819711.531"
    nqp_get_sc_object $P5002, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 28
    $P5001."set_static_lexpad_value"("NQPCursorRole", $P5002)
    .const "LexInfo" $P5003 = "cuid_1_1350819711.531"
    $P5003."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_27_1350819711.531" 
    nqp_get_sc_object $P5002, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 29
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_28_1350819711.531" 
    nqp_get_sc_object $P5002, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 30
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_29_1350819711.531" 
    nqp_get_sc_object $P5002, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 31
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_30_1350819711.531" 
    nqp_get_sc_object $P5002, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 32
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_31_1350819711.531" 
    nqp_get_sc_object $P5002, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 33
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_32_1350819711.531" 
    nqp_get_sc_object $P5002, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 34
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_33_1350819711.531" 
    nqp_get_sc_object $P5002, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 35
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_34_1350819711.531" 
    nqp_get_sc_object $P5002, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 36
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_35_1350819711.531" 
    nqp_get_sc_object $P5002, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 37
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_36_1350819711.531" 
    nqp_get_sc_object $P5002, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 38
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_37_1350819711.531" 
    nqp_get_sc_object $P5002, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 39
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_38_1350819711.531" 
    nqp_get_sc_object $P5002, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 40
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_39_1350819711.531" 
    nqp_get_sc_object $P5002, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 41
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_40_1350819711.531" 
    nqp_get_sc_object $P5002, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 42
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_41_1350819711.531" 
    nqp_get_sc_object $P5002, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 43
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_42_1350819711.531" 
    nqp_get_sc_object $P5002, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 44
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_43_1350819711.531" 
    nqp_get_sc_object $P5002, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 45
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_44_1350819711.531" 
    nqp_get_sc_object $P5002, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 46
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_45_1350819711.531" 
    nqp_get_sc_object $P5002, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 47
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_46_1350819711.531" 
    nqp_get_sc_object $P5002, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 48
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_47_1350819711.531" 
    nqp_get_sc_object $P5002, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 49
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_48_1350819711.531" 
    nqp_get_sc_object $P5002, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 50
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_49_1350819711.531" 
    nqp_get_sc_object $P5002, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 51
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_50_1350819711.531" 
    nqp_get_sc_object $P5002, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 52
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_51_1350819711.531" 
    nqp_get_sc_object $P5002, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 53
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_52_1350819711.531" 
    nqp_get_sc_object $P5002, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 54
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_53_1350819711.531" 
    nqp_get_sc_object $P5002, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 55
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_54_1350819711.531" 
    nqp_get_sc_object $P5002, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 56
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_55_1350819711.531" 
    nqp_get_sc_object $P5002, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 57
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_56_1350819711.531" 
    nqp_get_sc_object $P5002, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 58
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_57_1350819711.531" 
    nqp_get_sc_object $P5002, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 59
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_58_1350819711.531" 
    nqp_get_sc_object $P5002, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 60
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_59_1350819711.531" 
    nqp_get_sc_object $P5002, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 61
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_60_1350819711.531" 
    nqp_get_sc_object $P5002, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 62
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_61_1350819711.531" 
    nqp_get_sc_object $P5002, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 63
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_62_1350819711.531" 
    nqp_get_sc_object $P5002, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 64
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_63_1350819711.531" 
    nqp_get_sc_object $P5002, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 65
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_64_1350819711.531" 
    nqp_get_sc_object $P5002, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 66
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_65_1350819711.531" 
    nqp_get_sc_object $P5002, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 67
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_66_1350819711.531" 
    nqp_get_sc_object $P5002, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 68
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_67_1350819711.531" 
    nqp_get_sc_object $P5002, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 69
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_67_1350819711.531"
    nqp_get_sc_object $P5002, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 28
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_67_1350819711.531"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_67_1350819711.531"
    nqp_get_sc_object $P5002, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 28
    $P5001."set_static_lexpad_value"("$?ROLE", $P5002)
    .const "LexInfo" $P5003 = "cuid_67_1350819711.531"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1350819711.531"
    nqp_get_sc_object $P5002, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 70
    $P5001."set_static_lexpad_value"("NQPMatch", $P5002)
    .const "LexInfo" $P5003 = "cuid_1_1350819711.531"
    $P5003."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_68_1350819711.531" 
    nqp_get_sc_object $P5002, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 71
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_69_1350819711.531" 
    nqp_get_sc_object $P5002, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 72
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_70_1350819711.531" 
    nqp_get_sc_object $P5002, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 73
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_71_1350819711.531" 
    nqp_get_sc_object $P5002, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 74
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_72_1350819711.531" 
    nqp_get_sc_object $P5002, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 75
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_73_1350819711.531" 
    nqp_get_sc_object $P5002, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 76
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_74_1350819711.531" 
    nqp_get_sc_object $P5002, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 77
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_75_1350819711.531" 
    nqp_get_sc_object $P5002, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 78
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_76_1350819711.531" 
    nqp_get_sc_object $P5002, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 79
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_77_1350819711.531" 
    nqp_get_sc_object $P5002, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 80
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_78_1350819711.531" 
    nqp_get_sc_object $P5002, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 81
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_79_1350819711.531" 
    nqp_get_sc_object $P5002, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 82
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_80_1350819711.531"
    nqp_get_sc_object $P5002, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 70
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_80_1350819711.531"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_80_1350819711.531"
    nqp_get_sc_object $P5002, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 70
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_80_1350819711.531"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1350819711.531"
    nqp_get_sc_object $P5002, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 83
    $P5001."set_static_lexpad_value"("NQPCursor", $P5002)
    .const "LexInfo" $P5003 = "cuid_1_1350819711.531"
    $P5003."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_81_1350819711.531" 
    nqp_get_sc_object $P5002, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 84
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_82_1350819711.531" 
    nqp_get_sc_object $P5002, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 85
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_83_1350819711.531" 
    nqp_get_sc_object $P5002, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 86
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_84_1350819711.531" 
    nqp_get_sc_object $P5002, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 87
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_85_1350819711.531" 
    nqp_get_sc_object $P5002, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 88
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_86_1350819711.531"
    nqp_get_sc_object $P5002, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 83
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_86_1350819711.531"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_86_1350819711.531"
    nqp_get_sc_object $P5002, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 83
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_86_1350819711.531"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1350819711.531"
    nqp_get_sc_object $P5002, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 89
    $P5001."set_static_lexpad_value"("NQPRegexMethod", $P5002)
    .const "LexInfo" $P5003 = "cuid_1_1350819711.531"
    $P5003."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_97_1350819711.531" 
    nqp_get_sc_object $P5002, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 90
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_98_1350819711.531" 
    nqp_get_sc_object $P5002, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 91
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_99_1350819711.531" 
    nqp_get_sc_object $P5002, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 92
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_100_1350819711.531"
    nqp_get_sc_object $P5002, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 89
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_100_1350819711.531"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_100_1350819711.531"
    nqp_get_sc_object $P5002, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 89
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_100_1350819711.531"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1350819711.531"
    nqp_get_sc_object $P5002, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 93
    $P5001."set_static_lexpad_value"("NQPRegex", $P5002)
    .const "LexInfo" $P5003 = "cuid_1_1350819711.531"
    $P5003."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_101_1350819711.531" 
    nqp_get_sc_object $P5002, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 94
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_102_1350819711.531"
    nqp_get_sc_object $P5002, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 93
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_102_1350819711.531"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_102_1350819711.531"
    nqp_get_sc_object $P5002, "AADDB16FC17A5E4BFB53FB082E90D946D76DC606-1350819711.546", 93
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_102_1350819711.531"
    $P5004 = $P5003."finish_static_lexpad"()
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_140_1350819711.531") :anon :lex :outer("cuid_141_1350819711.531")
.annotate 'file', "src\\stage2\\QRegex.nqp"
    new $P5001, 'ResizablePMCArray'
    .const 'Sub' $P5002 = "cuid_2_1350819711.531" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_3_1350819711.531" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_4_1350819711.531" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_5_1350819711.531" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_6_1350819711.531" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_7_1350819711.531" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_8_1350819711.531" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_9_1350819711.531" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_10_1350819711.531" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_11_1350819711.531" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_12_1350819711.531" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_13_1350819711.531" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_14_1350819711.531" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_15_1350819711.531" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_16_1350819711.531" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_17_1350819711.531" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_18_1350819711.531" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_19_1350819711.531" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_20_1350819711.531" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_21_1350819711.531" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_22_1350819711.531" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_23_1350819711.531" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_24_1350819711.531" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_25_1350819711.531" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_27_1350819711.531" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_28_1350819711.531" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_29_1350819711.531" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_30_1350819711.531" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_31_1350819711.531" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_32_1350819711.531" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_33_1350819711.531" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_34_1350819711.531" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_35_1350819711.531" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_36_1350819711.531" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_37_1350819711.531" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_38_1350819711.531" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_39_1350819711.531" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_40_1350819711.531" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_41_1350819711.531" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_42_1350819711.531" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_43_1350819711.531" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_44_1350819711.531" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_45_1350819711.531" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_46_1350819711.531" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_47_1350819711.531" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_48_1350819711.531" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_49_1350819711.531" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_50_1350819711.531" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_51_1350819711.531" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_52_1350819711.531" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_53_1350819711.531" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_54_1350819711.531" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_55_1350819711.531" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_56_1350819711.531" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_57_1350819711.531" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_58_1350819711.531" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_59_1350819711.531" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_60_1350819711.531" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_61_1350819711.531" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_62_1350819711.531" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_63_1350819711.531" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_64_1350819711.531" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_65_1350819711.531" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_66_1350819711.531" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_67_1350819711.531" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_68_1350819711.531" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_69_1350819711.531" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_70_1350819711.531" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_71_1350819711.531" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_72_1350819711.531" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_73_1350819711.531" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_74_1350819711.531" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_75_1350819711.531" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_76_1350819711.531" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_77_1350819711.531" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_78_1350819711.531" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_79_1350819711.531" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_81_1350819711.531" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_82_1350819711.531" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_83_1350819711.531" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_84_1350819711.531" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_85_1350819711.531" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_97_1350819711.531" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_98_1350819711.531" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_99_1350819711.531" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_101_1350819711.531" 
    push $P5001, $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_142_1350819711.531") :load
.annotate 'file', "src\\stage2\\QRegex.nqp"
    .const 'Sub' $P5001 = "cuid_1_1350819711.531" 
    $P5002 = $P5001()
    .return ($P5002) 
.end