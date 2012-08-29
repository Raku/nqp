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
.sub "" :subid("cuid_1_1346277585.603") :anon :lex
.annotate 'file', "src\\stage2\\QRegex.nqp"
    .param pmc _lex_param_0 :slurpy 
    .const 'Sub' $P5025 = 'cuid_26_1346277585.603' 
    capture_lex $P5025 
    .const 'Sub' $P5025 = 'cuid_67_1346277585.603' 
    capture_lex $P5025 
    .const 'Sub' $P5025 = 'cuid_80_1346277585.603' 
    capture_lex $P5025 
    .const 'Sub' $P5025 = 'cuid_86_1346277585.603' 
    capture_lex $P5025 
    .const 'Sub' $P5025 = 'cuid_100_1346277585.603' 
    capture_lex $P5025 
    .const 'Sub' $P5025 = 'cuid_102_1346277585.603' 
    capture_lex $P5025 
    .const 'Sub' $P5025 = 'cuid_103_1346277585.603' 
    capture_lex $P5025 
    .lex "GLOBALish", $P101 
    .lex "$?PACKAGE", $P102 
    .lex "NQPCursorRole", $P103 
    .lex "NQPMatch", $P104 
    .lex "NQPCursor", $P105 
    .lex "NQPRegexMethod", $P106 
    .lex "NQPRegex", $P107 
    .lex "EXPORT", $P108 
    .lex "@ARGS", _lex_param_0 
    .local pmc ctxsave 
    find_dynamic_lex $P5001, "$*CTXSAVE"
    set ctxsave, $P5001
    isnull $I5001, ctxsave
    box $P5006, $I5001
    set $P5005, $P5006
    if $I5001 goto unless95_end236 
    can $I5002, ctxsave, "ctxsave"
    box $P5004, $I5002
    set $P5003, $P5004
    unless $I5002 goto if96_end238 
    $P5002 = ctxsave."ctxsave"()
    set $P5003, $P5002
  if96_end238:
    set $P5005, $P5003
  unless95_end236:
.annotate 'line', 1
    .const 'Sub' $P5007 = 'cuid_26_1346277585.603' 
    capture_lex $P5007
    $P5008 = $P5007()
    .const 'Sub' $P5009 = 'cuid_67_1346277585.603' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_80_1346277585.603' 
    capture_lex $P5010
    $P5011 = $P5010()
    .const 'Sub' $P5012 = 'cuid_86_1346277585.603' 
    capture_lex $P5012
    $P5013 = $P5012()
    .const 'Sub' $P5014 = 'cuid_100_1346277585.603' 
    capture_lex $P5014
    $P5015 = $P5014()
    .const 'Sub' $P5016 = 'cuid_102_1346277585.603' 
    capture_lex $P5016
    $P5017 = $P5016()
    .const 'Sub' $P5018 = 'cuid_103_1346277585.603' 
    capture_lex $P5018
    $P5019 = $P5018()
    set $P5024, _lex_param_0
    unless _lex_param_0 goto if284_end838 
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P5020, "ModuleLoader"
    getinterp $P5022
    set $P5021, $P5022["context"]
    $P5023 = $P5020."set_mainline_module"($P5021)
    set $P5024, $P5023
  if284_end838:
    .return () 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_26_1346277585.603") :anon :lex :outer("cuid_1_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 7
    .const 'Sub' $P5050 = 'cuid_2_1346277585.603' 
    capture_lex $P5050 
    .const 'Sub' $P5050 = 'cuid_3_1346277585.603' 
    capture_lex $P5050 
    .const 'Sub' $P5050 = 'cuid_4_1346277585.603' 
    capture_lex $P5050 
    .const 'Sub' $P5050 = 'cuid_5_1346277585.603' 
    capture_lex $P5050 
    .const 'Sub' $P5050 = 'cuid_6_1346277585.603' 
    capture_lex $P5050 
    .const 'Sub' $P5050 = 'cuid_7_1346277585.603' 
    capture_lex $P5050 
    .const 'Sub' $P5050 = 'cuid_8_1346277585.603' 
    capture_lex $P5050 
    .const 'Sub' $P5050 = 'cuid_9_1346277585.603' 
    capture_lex $P5050 
    .const 'Sub' $P5050 = 'cuid_10_1346277585.603' 
    capture_lex $P5050 
    .const 'Sub' $P5050 = 'cuid_11_1346277585.603' 
    capture_lex $P5050 
    .const 'Sub' $P5050 = 'cuid_12_1346277585.603' 
    capture_lex $P5050 
    .const 'Sub' $P5050 = 'cuid_13_1346277585.603' 
    capture_lex $P5050 
    .const 'Sub' $P5050 = 'cuid_14_1346277585.603' 
    capture_lex $P5050 
    .const 'Sub' $P5050 = 'cuid_15_1346277585.603' 
    capture_lex $P5050 
    .const 'Sub' $P5050 = 'cuid_16_1346277585.603' 
    capture_lex $P5050 
    .const 'Sub' $P5050 = 'cuid_17_1346277585.603' 
    capture_lex $P5050 
    .const 'Sub' $P5050 = 'cuid_18_1346277585.603' 
    capture_lex $P5050 
    .const 'Sub' $P5050 = 'cuid_19_1346277585.603' 
    capture_lex $P5050 
    .const 'Sub' $P5050 = 'cuid_20_1346277585.603' 
    capture_lex $P5050 
    .const 'Sub' $P5050 = 'cuid_21_1346277585.603' 
    capture_lex $P5050 
    .const 'Sub' $P5050 = 'cuid_22_1346277585.603' 
    capture_lex $P5050 
    .const 'Sub' $P5050 = 'cuid_23_1346277585.603' 
    capture_lex $P5050 
    .const 'Sub' $P5050 = 'cuid_24_1346277585.603' 
    capture_lex $P5050 
    .const 'Sub' $P5050 = 'cuid_25_1346277585.603' 
    capture_lex $P5050 
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
    .const 'Sub' $P5026 = 'cuid_2_1346277585.603' 
    capture_lex $P5026
    .const 'Sub' $P5027 = 'cuid_3_1346277585.603' 
    capture_lex $P5027
    .const 'Sub' $P5028 = 'cuid_4_1346277585.603' 
    capture_lex $P5028
    .const 'Sub' $P5029 = 'cuid_5_1346277585.603' 
    capture_lex $P5029
    .const 'Sub' $P5030 = 'cuid_6_1346277585.603' 
    capture_lex $P5030
    .const 'Sub' $P5031 = 'cuid_7_1346277585.603' 
    capture_lex $P5031
    .const 'Sub' $P5032 = 'cuid_8_1346277585.603' 
    capture_lex $P5032
    .const 'Sub' $P5033 = 'cuid_9_1346277585.603' 
    capture_lex $P5033
    .const 'Sub' $P5034 = 'cuid_10_1346277585.603' 
    capture_lex $P5034
    .const 'Sub' $P5035 = 'cuid_11_1346277585.603' 
    capture_lex $P5035
    .const 'Sub' $P5036 = 'cuid_12_1346277585.603' 
    capture_lex $P5036
    .const 'Sub' $P5037 = 'cuid_13_1346277585.603' 
    capture_lex $P5037
    .const 'Sub' $P5038 = 'cuid_14_1346277585.603' 
    capture_lex $P5038
    .const 'Sub' $P5039 = 'cuid_15_1346277585.603' 
    capture_lex $P5039
    .const 'Sub' $P5040 = 'cuid_16_1346277585.603' 
    capture_lex $P5040
    .const 'Sub' $P5041 = 'cuid_17_1346277585.603' 
    capture_lex $P5041
    .const 'Sub' $P5042 = 'cuid_18_1346277585.603' 
    capture_lex $P5042
    .const 'Sub' $P5043 = 'cuid_19_1346277585.603' 
    capture_lex $P5043
    .const 'Sub' $P5044 = 'cuid_20_1346277585.603' 
    capture_lex $P5044
    .const 'Sub' $P5045 = 'cuid_21_1346277585.603' 
    capture_lex $P5045
    .const 'Sub' $P5046 = 'cuid_22_1346277585.603' 
    capture_lex $P5046
    .const 'Sub' $P5047 = 'cuid_23_1346277585.603' 
    capture_lex $P5047
    .const 'Sub' $P5048 = 'cuid_24_1346277585.603' 
    capture_lex $P5048
    .const 'Sub' $P5049 = 'cuid_25_1346277585.603' 
    capture_lex $P5049
    .return ($P5049) 
.end
.HLL "nqp"
.namespace []
.sub "new" :subid("cuid_2_1346277585.603") :anon :lex :outer("cuid_26_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 21
    .param pmc _lex_param_0 
    .lex "$new", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
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
.sub "addstate" :subid("cuid_3_1346277585.603") :anon :lex :outer("cuid_26_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 28
    .param pmc _lex_param_0 
    .lex "$id", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    nqp_decontainerize $P5002, _lex_param_0
    nqp_get_sc_object $P5003, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 1
    repr_get_attr_obj $P5004, $P5002, $P5003, "$!states"
    set $N5001, $P5004
    box $P5005, $N5001
    set $P101, $P5005
    nqp_decontainerize $P5006, _lex_param_0
    nqp_get_sc_object $P5007, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 1
    repr_get_attr_obj $P5008, $P5006, $P5007, "$!states"
    set $I5001, $P101
    new $P5009, 'ResizablePMCArray'
    set $P5008[$I5001], $P5009
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "addedge" :subid("cuid_4_1346277585.603") :anon :lex :outer("cuid_26_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 34
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .param pmc _lex_param_4 
    .param pmc _lex_param_5 :named("newedge") :optional 
    .param int haz_param_7 :opt_flag 
    if haz_param_7, default244
    box $P5016, 1
    set _lex_param_5, $P5016
  default244:
    .lex "$st", $P101 
    .lex "self", _lex_param_0 
    .lex "$from", _lex_param_1 
    .lex "$to", _lex_param_2 
    .lex "$action", _lex_param_3 
    .lex "$value", _lex_param_4 
    .lex "$newedge", _lex_param_5 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    set $P5005, _lex_param_5
    unless _lex_param_5 goto if97_end240 
    nqp_decontainerize $P5002, _lex_param_0
    nqp_get_sc_object $P5003, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 1
    box $P5004, 1
    repr_bind_attr_obj $P5002, $P5003, "$!edges", $P5004
    set $P5005, $P5004
  if97_end240:
    set $N5001, _lex_param_2
    set $N5002, 0
    islt $I5001, $N5001, $N5002
    box $P5009, $I5001
    set $P5008, $P5009
    unless $I5001 goto if98_end242 
.annotate 'line', 36
    nqp_decontainerize $P5006, _lex_param_0
    $P5007 = $P5006."addstate"()
    set _lex_param_2, $P5007
    set $P5008, _lex_param_2
  if98_end242:
    nqp_decontainerize $P5011, _lex_param_0
    nqp_get_sc_object $P5012, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 1
    repr_get_attr_obj $P5013, $P5011, $P5012, "$!states"
    set $I5002, _lex_param_1
    set $P5010, $P5013[$I5002]
    unless_null $P5010, fallback243
    nqp_get_sc_object $P5014, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5010, $P5014
  fallback243:
    set $P101, $P5010
    push $P101, _lex_param_3
    push $P101, _lex_param_4
    set $N5004, _lex_param_2
    set $N5005, 0
    add $N5003, $N5004, $N5005
    box $P5015, $N5003
    push $P101, $P5015
    .return (_lex_param_2) 
.end
.HLL "nqp"
.namespace []
.sub "states" :subid("cuid_5_1346277585.603") :anon :lex :outer("cuid_26_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 44
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 1
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!states"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "addnode" :subid("cuid_6_1346277585.603") :anon :lex :outer("cuid_26_1346277585.603")
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
.sub "regex_nfa" :subid("cuid_7_1346277585.603") :anon :lex :outer("cuid_26_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 51
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .lex "$method", $P101 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$from", _lex_param_2 
    .lex "$to", _lex_param_3 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
.annotate 'line', 52
    $P5003 = _lex_param_1."rxtype"()
    set $P5002, $P5003
    defined $I5001, $P5002
    if $I5001, defor245
    box $P5004, "concat"
    set $P5002, $P5004
  defor245:
    set $P101, $P5002
.annotate 'line', 53
    nqp_decontainerize $P5006, _lex_param_0
    get_how $P5005, $P5006
    nqp_decontainerize $P5007, _lex_param_0
    $P5008 = $P5005."can"($P5007, $P101)
    unless $P5008 goto if99_else246 
.annotate 'line', 54
    nqp_decontainerize $P5009, _lex_param_0
    set $S5001, $P101
    $P5010 = $P5009.$S5001(_lex_param_1, _lex_param_2, _lex_param_3)
    set $P5013, $P5010
    goto if99_end247
  if99_else246:
.annotate 'line', 55
    nqp_decontainerize $P5011, _lex_param_0
    $P5012 = $P5011."fate"(_lex_param_1, _lex_param_2, _lex_param_3)
    set $P5013, $P5012
  if99_end247:
    .return ($P5013) 
.end
.HLL "nqp"
.namespace []
.sub "fate" :subid("cuid_8_1346277585.603") :anon :lex :outer("cuid_26_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 58
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$from", _lex_param_2 
    .lex "$to", _lex_param_3 
.annotate 'line', 59
    nqp_decontainerize $P5001, _lex_param_0
    find_lex $P5004, "$?PACKAGE"
    get_who $P5003, $P5004
    set $P5002, $P5003["$EDGE_FATE"]
    unless_null $P5002, fallback248
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5002, $P5005
  fallback248:
    $P5006 = $P5001."addedge"(_lex_param_2, 0, $P5002, 0, 0 :named("newedge"))
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "alt" :subid("cuid_9_1346277585.603") :anon :lex :outer("cuid_26_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 62
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .const 'Sub' $P5008 = 'cuid_105_1346277585.603' 
    capture_lex $P5008 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$from", _lex_param_2 
    .lex "$to", _lex_param_3 
.annotate 'line', 63
    $P5004 = _lex_param_1."list"()
    set $P5001, $P5004
    iter $P5003, $P5004
    new $P5006, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5006, for_handlers253
    push_eh $P5006
  for_next254:
    unless $P5003, for_done256
    shift $P5007, $P5003
  for_redo255:
    .const 'Sub' $P5005 = 'cuid_105_1346277585.603' 
    capture_lex $P5005
    $P5001 = $P5005($P5007)
    goto for_next254
  for_handlers253:
    .get_results ($P5006)
    pop_upto_eh $P5006
    getattribute $P5006, $P5006, 'type'
    eq $P5006, .CONTROL_LOOP_NEXT, for_next254
    eq $P5006, .CONTROL_LOOP_REDO, for_redo255
  for_done256:
    pop_eh 
    .return (_lex_param_3) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_105_1346277585.603") :anon :lex :outer("cuid_9_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 63
    .param pmc _lex_param_0 
    .lex "$st", $P101 
    .lex "$_", _lex_param_0 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
.annotate 'line', 64
    find_lex $P5003, "self"
    nqp_decontainerize $P5002, $P5003
    find_lex $P5004, "$from"
    find_lex $P5005, "$to"
    $P5006 = $P5002."regex_nfa"(_lex_param_0, $P5004, $P5005)
    set $P101, $P5006
    find_lex $P5007, "$to"
    set $N5001, $P5007
    set $N5002, 0
    islt $I5001, $N5001, $N5002
    set $I5003, $I5001
    unless $I5001 goto if101_end252 
    set $N5003, $P101
    set $N5004, 0
    isgt $I5002, $N5003, $N5004
    set $I5003, $I5002
  if101_end252:
    box $P5009, $I5003
    set $P5008, $P5009
    unless $I5003 goto if100_end250 
    store_lex "$to", $P101
    set $P5008, $P101
  if100_end250:
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "anchor" :subid("cuid_10_1346277585.603") :anon :lex :outer("cuid_26_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 70
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$from", _lex_param_2 
    .lex "$to", _lex_param_3 
.annotate 'line', 71
    nqp_decontainerize $P5001, _lex_param_0
    find_lex $P5004, "$?PACKAGE"
    get_who $P5003, $P5004
    set $P5002, $P5003["$EDGE_EPSILON"]
    unless_null $P5002, fallback257
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5002, $P5005
  fallback257:
    $P5006 = $P5001."addedge"(_lex_param_2, _lex_param_3, $P5002, 0)
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "cclass" :subid("cuid_11_1346277585.603") :anon :lex :outer("cuid_26_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 84
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$from", _lex_param_2 
    .lex "$to", _lex_param_3 
.annotate 'line', 85
    nqp_decontainerize $P5001, _lex_param_0
    find_lex $P5004, "$?PACKAGE"
    get_who $P5003, $P5004
    set $P5002, $P5003["$EDGE_CHARCLASS"]
    unless_null $P5002, fallback258
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5002, $P5005
  fallback258:
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
    unless_null $P5007, fallback259
    nqp_get_sc_object $P5010, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5007, $P5010
  fallback259:
    $P5011 = $P5001."addedge"(_lex_param_2, _lex_param_3, $N5001, $P5007)
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "concat" :subid("cuid_12_1346277585.603") :anon :lex :outer("cuid_26_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 89
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .lex "$i", $P101 
    .lex "$n", $P102 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$from", _lex_param_2 
    .lex "$to", _lex_param_3 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P102, $P5002
    box $P5003, 0
    set $P101, $P5003
.annotate 'line', 91
    $P5004 = _lex_param_1."list"()
    set $N5002, $P5004
    set $N5003, 1
    sub $N5001, $N5002, $N5003
    box $P5005, $N5001
    set $P102, $P5005
    new $P5012, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5012, while102_handlers263
    push_eh $P5012
  while102_test260:
    set $N5004, _lex_param_2
    set $N5005, 0
    isgt $I5001, $N5004, $N5005
    set $I5003, $I5001
    unless $I5001 goto if103_end266 
    set $N5006, $P101
    set $N5007, $P102
    islt $I5002, $N5006, $N5007
    set $I5003, $I5002
  if103_end266:
    box $P5013, $I5003
    set $P5011, $P5013
    unless $I5003 goto while102_done264 
  while102_redo262:
.annotate 'line', 92
.annotate 'line', 93
    nqp_decontainerize $P5006, _lex_param_0
    set $I5004, $P101
    set $P5007, _lex_param_1[$I5004]
    unless_null $P5007, fallback267
    nqp_get_sc_object $P5008, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5007, $P5008
  fallback267:
    $P5009 = $P5006."regex_nfa"($P5007, _lex_param_2, -1)
    set _lex_param_2, $P5009
    set $N5009, $P101
    set $N5010, 1
    add $N5008, $N5009, $N5010
    box $P5010, $N5008
    set $P101, $P5010
    set $P5011, $P101
    goto while102_test260 
  while102_handlers263:
    .get_results ($P5012)
    pop_upto_eh $P5012
    getattribute $P5012, $P5012, 'type'
    eq $P5012, .CONTROL_LOOP_NEXT, while102_test260
    eq $P5012, .CONTROL_LOOP_REDO, while102_redo262
  while102_done264:
    pop_eh 
    set $N5011, _lex_param_2
    set $N5012, 0
    isgt $I5005, $N5011, $N5012
    set $I5007, $I5005
    unless $I5005 goto if105_end271 
    set $N5013, $P102
    set $N5014, 0
    isge $I5006, $N5013, $N5014
    set $I5007, $I5006
  if105_end271:
    unless $I5007 goto if104_else268 
.annotate 'line', 96
    nqp_decontainerize $P5014, _lex_param_0
    set $I5008, $P101
    set $P5015, _lex_param_1[$I5008]
    unless_null $P5015, fallback272
    nqp_get_sc_object $P5016, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5015, $P5016
  fallback272:
    $P5017 = $P5014."regex_nfa"($P5015, _lex_param_2, _lex_param_3)
    set $P5018, $P5017
    goto if104_end269
  if104_else268:
    set $P5018, _lex_param_3
  if104_end269:
    .return ($P5018) 
.end
.HLL "nqp"
.namespace []
.sub "enumcharlist" :subid("cuid_13_1346277585.603") :anon :lex :outer("cuid_26_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 99
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .lex "$charlist", $P101 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$from", _lex_param_2 
    .lex "$to", _lex_param_3 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    set $P5002, _lex_param_1[0]
    unless_null $P5002, fallback273
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5002, $P5003
  fallback273:
    set $P101, $P5002
.annotate 'line', 101
    $P5004 = _lex_param_1."subtype"()
    set $S5001, $P5004
    iseq $I5001, $S5001, "zerowidth"
    unless $I5001 goto if106_else274 
.annotate 'line', 102
    nqp_decontainerize $P5005, _lex_param_0
    find_lex $P5008, "$?PACKAGE"
    get_who $P5007, $P5008
    set $P5006, $P5007["$EDGE_CHARLIST"]
    unless_null $P5006, fallback276
    nqp_get_sc_object $P5009, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5006, $P5009
  fallback276:
    set $N5002, $P5006
    $P5010 = _lex_param_1."negate"()
    istrue $I5002, $P5010
    set $N5003, $I5002
    add $N5001, $N5002, $N5003
    $P5011 = $P5005."addedge"(_lex_param_2, -1, $N5001, $P101)
    set _lex_param_2, $P5011
.annotate 'line', 103
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5015, "$?PACKAGE"
    get_who $P5014, $P5015
    set $P5013, $P5014["$EDGE_FATE"]
    unless_null $P5013, fallback277
    nqp_get_sc_object $P5016, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5013, $P5016
  fallback277:
    $P5017 = $P5012."addedge"(_lex_param_2, 0, $P5013, 0)
    set $P5025, $P5017
    goto if106_end275
  if106_else274:
.annotate 'line', 105
.annotate 'line', 106
    nqp_decontainerize $P5018, _lex_param_0
    find_lex $P5021, "$?PACKAGE"
    get_who $P5020, $P5021
    set $P5019, $P5020["$EDGE_CHARLIST"]
    unless_null $P5019, fallback278
    nqp_get_sc_object $P5022, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5019, $P5022
  fallback278:
    set $N5005, $P5019
    $P5023 = _lex_param_1."negate"()
    istrue $I5003, $P5023
    set $N5006, $I5003
    add $N5004, $N5005, $N5006
    $P5024 = $P5018."addedge"(_lex_param_2, _lex_param_3, $N5004, $P101)
    set $P5025, $P5024
  if106_end275:
    .return ($P5025) 
.end
.HLL "nqp"
.namespace []
.sub "literal" :subid("cuid_14_1346277585.603") :anon :lex :outer("cuid_26_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 110
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .lex "$litconst", $P101 
    .lex "$litlen", $P102 
    .lex "$i", $P103 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$from", _lex_param_2 
    .lex "$to", _lex_param_3 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P102, $P5002
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P103, $P5003
    set $P5004, _lex_param_1[0]
    unless_null $P5004, fallback279
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5004, $P5005
  fallback279:
    set $P101, $P5004
    set $S5001, $P101
    length $I5001, $S5001
    set $N5002, $I5001
    set $N5003, 1
    sub $N5001, $N5002, $N5003
    box $P5006, $N5001
    set $P102, $P5006
    box $P5007, 0
    set $P103, $P5007
    set $N5004, $P102
    set $N5005, 0
    isge $I5002, $N5004, $N5005
    unless $I5002 goto if107_else280 
.annotate 'line', 114
    new $P5016, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5016, while108_handlers285
    push_eh $P5016
  while108_test282:
    set $N5006, $P103
    set $N5007, $P102
    islt $I5003, $N5006, $N5007
    box $P5017, $I5003
    set $P5015, $P5017
    unless $I5003 goto while108_done286 
  while108_redo284:
.annotate 'line', 115
.annotate 'line', 116
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5011, "$?PACKAGE"
    get_who $P5010, $P5011
    set $P5009, $P5010["$EDGE_CODEPOINT"]
    unless_null $P5009, fallback287
    nqp_get_sc_object $P5012, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5009, $P5012
  fallback287:
    set $S5002, $P101
    set $I5005, $P103
    ord $I5004, $S5002, $I5005
    $P5013 = $P5008."addedge"(_lex_param_2, -1, $P5009, $I5004)
    set _lex_param_2, $P5013
    set $N5009, $P103
    set $N5010, 1
    add $N5008, $N5009, $N5010
    box $P5014, $N5008
    set $P103, $P5014
    set $P5015, $P103
    goto while108_test282 
  while108_handlers285:
    .get_results ($P5016)
    pop_upto_eh $P5016
    getattribute $P5016, $P5016, 'type'
    eq $P5016, .CONTROL_LOOP_NEXT, while108_test282
    eq $P5016, .CONTROL_LOOP_REDO, while108_redo284
  while108_done286:
    pop_eh 
.annotate 'line', 119
    nqp_decontainerize $P5018, _lex_param_0
    find_lex $P5021, "$?PACKAGE"
    get_who $P5020, $P5021
    set $P5019, $P5020["$EDGE_CODEPOINT"]
    unless_null $P5019, fallback288
    nqp_get_sc_object $P5022, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5019, $P5022
  fallback288:
    set $S5003, $P101
    set $I5007, $P103
    ord $I5006, $S5003, $I5007
    $P5023 = $P5018."addedge"(_lex_param_2, _lex_param_3, $P5019, $I5006)
    set $P5030, $P5023
    goto if107_end281
  if107_else280:
.annotate 'line', 121
.annotate 'line', 122
    nqp_decontainerize $P5024, _lex_param_0
    find_lex $P5027, "$?PACKAGE"
    get_who $P5026, $P5027
    set $P5025, $P5026["$EDGE_EPSILON"]
    unless_null $P5025, fallback289
    nqp_get_sc_object $P5028, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5025, $P5028
  fallback289:
    $P5029 = $P5024."addedge"(_lex_param_2, _lex_param_3, $P5025, 0)
    set $P5030, $P5029
  if107_end281:
    .return ($P5030) 
.end
.HLL "nqp"
.namespace []
.sub "subrule" :subid("cuid_15_1346277585.603") :anon :lex :outer("cuid_26_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 126
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .const 'Sub' $P5070 = 'cuid_106_1346277585.603' 
    capture_lex $P5070 
    .const 'Sub' $P5070 = 'cuid_107_1346277585.603' 
    capture_lex $P5070 
    .lex "$subtype", $P101 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$from", _lex_param_2 
    .lex "$to", _lex_param_3 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
.annotate 'line', 127
    $P5002 = _lex_param_1."subtype"()
    set $P101, $P5002
.annotate 'line', 128
    $P5003 = _lex_param_1."name"()
    set $S5001, $P5003
    iseq $I5001, $S5001, "before"
    set $I5003, $I5001
    unless $I5001 goto if110_end293 
    $P5004 = _lex_param_1."negate"()
    isfalse $I5002, $P5004
    set $I5003, $I5002
  if110_end293:
    unless $I5003 goto if109_else290 
    .const 'Sub' $P5005 = 'cuid_106_1346277585.603' 
    capture_lex $P5005
    $P5006 = $P5005()
    set $P5069, $P5006
    goto if109_end291
  if109_else290:
    set $S5002, $P101
    isne $I5004, $S5002, "zerowidth"
    set $I5010, $I5004
    unless $I5004 goto if112_end300 
.annotate 'line', 134
    $P5007 = _lex_param_1."name"()
    set $S5003, $P5007
    iseq $I5005, $S5003, "alpha"
    set $I5009, $I5005
    if $I5005 goto unless113_end302 
    set $S5004, $P101
    iseq $I5006, $S5004, "method"
    set $I5008, $I5006
    unless $I5006 goto if114_end304 
.annotate 'line', 136
    get_hll_global $P5011, "GLOBAL"
    nqp_get_package_through_who $P5010, $P5011, "QAST"
    get_who $P5009, $P5010
    set $P5008, $P5009["SVal"]
    unless_null $P5008, fallback307
    nqp_get_sc_object $P5012, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5008, $P5012
  fallback307:
    set $P5014, _lex_param_1[0]
    unless_null $P5014, fallback308
    nqp_get_sc_object $P5015, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5014, $P5015
  fallback308:
    set $P5013, $P5014[0]
    unless_null $P5013, fallback309
    nqp_get_sc_object $P5016, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5013, $P5016
  fallback309:
    $P5017 = $P5008."ACCEPTS"($P5013)
    unless $P5017 goto if115_else305 
    set $P5019, _lex_param_1[0]
    unless_null $P5019, fallback310
    nqp_get_sc_object $P5020, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5019, $P5020
  fallback310:
    set $P5018, $P5019[0]
    unless_null $P5018, fallback311
    nqp_get_sc_object $P5021, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5018, $P5021
  fallback311:
    $P5022 = $P5018."value"()
    set $P5027, $P5022
    goto if115_end306
  if115_else305:
    set $P5024, _lex_param_1[0]
    unless_null $P5024, fallback312
    nqp_get_sc_object $P5025, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5024, $P5025
  fallback312:
    set $P5023, $P5024[0]
    unless_null $P5023, fallback313
    nqp_get_sc_object $P5026, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5023, $P5026
  fallback313:
    set $P5027, $P5023
  if115_end306:
    set $S5005, $P5027
    iseq $I5007, $S5005, "alpha"
    set $I5008, $I5007
  if114_end304:
    set $I5009, $I5008
  unless113_end302:
    set $I5010, $I5009
  if112_end300:
    unless $I5010 goto if111_else297 
.annotate 'line', 137
    nqp_decontainerize $P5028, _lex_param_0
    find_lex $P5031, "$?PACKAGE"
    get_who $P5030, $P5031
    set $P5029, $P5030["$EDGE_CHARCLASS"]
    unless_null $P5029, fallback314
    nqp_get_sc_object $P5032, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5029, $P5032
  fallback314:
    set $N5002, $P5029
    $P5033 = _lex_param_1."negate"()
    set $N5003, $P5033
    add $N5001, $N5002, $N5003
    $P5034 = $P5028."addedge"(_lex_param_2, _lex_param_3, $N5001, .CCLASS_ALPHABETIC)
    set _lex_param_3, $P5034
.annotate 'line', 139
    nqp_decontainerize $P5035, _lex_param_0
    find_lex $P5038, "$?PACKAGE"
    get_who $P5037, $P5038
    set $P5036, $P5037["$EDGE_CODEPOINT"]
    unless_null $P5036, fallback315
    nqp_get_sc_object $P5039, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5036, $P5039
  fallback315:
    set $N5005, $P5036
    $P5040 = _lex_param_1."negate"()
    set $N5006, $P5040
    add $N5004, $N5005, $N5006
    $P5041 = $P5035."addedge"(_lex_param_2, _lex_param_3, $N5004, 95)
    set $P5068, $P5041
    goto if111_end298
  if111_else297:
    set $S5006, $P101
    iseq $I5011, $S5006, "zerowidth"
    unless $I5011 goto if116_else316 
.annotate 'line', 141
.annotate 'line', 142
    $P5042 = _lex_param_1."negate"()
    unless $P5042 goto if117_else318 
.annotate 'line', 143
    nqp_decontainerize $P5043, _lex_param_0
    $P5044 = $P5043."fate"(_lex_param_1, _lex_param_2, _lex_param_3)
    set $P5047, $P5044
    goto if117_end319
  if117_else318:
    .const 'Sub' $P5045 = 'cuid_107_1346277585.603' 
    capture_lex $P5045
    $P5046 = $P5045()
    set $P5047, $P5046
  if117_end319:
    set $P5067, $P5047
    goto if116_end317
  if116_else316:
.annotate 'line', 151
    set $S5007, $P101
    iseq $I5012, $S5007, "capture"
    box $P5051, $I5012
    set $P5050, $P5051
    unless $I5012 goto if119_end324 
    set $P5048, _lex_param_1[1]
    unless_null $P5048, fallback325
    nqp_get_sc_object $P5049, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5048, $P5049
  fallback325:
    set $P5050, $P5048
  if119_end324:
    unless $P5050 goto if118_else321 
.annotate 'line', 153
    nqp_decontainerize $P5052, _lex_param_0
    set $P5053, _lex_param_1[1]
    unless_null $P5053, fallback326
    nqp_get_sc_object $P5054, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5053, $P5054
  fallback326:
    $P5055 = $P5052."regex_nfa"($P5053, _lex_param_2, _lex_param_3)
    set $P5066, $P5055
    goto if118_end322
  if118_else321:
.annotate 'line', 154
    nqp_decontainerize $P5056, _lex_param_0
    find_lex $P5059, "$?PACKAGE"
    get_who $P5058, $P5059
    set $P5057, $P5058["$EDGE_SUBRULE"]
    unless_null $P5057, fallback327
    nqp_get_sc_object $P5060, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5057, $P5060
  fallback327:
    set $P5062, _lex_param_1[0]
    unless_null $P5062, fallback328
    nqp_get_sc_object $P5063, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5062, $P5063
  fallback328:
    set $P5061, $P5062[0]
    unless_null $P5061, fallback329
    nqp_get_sc_object $P5064, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5061, $P5064
  fallback329:
    $P5065 = $P5056."addedge"(_lex_param_2, _lex_param_3, $P5057, $P5061)
    set $P5066, $P5065
  if118_end322:
    set $P5067, $P5066
  if116_end317:
    set $P5068, $P5067
  if111_end298:
    set $P5069, $P5068
  if109_end291:
    .return ($P5069) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_106_1346277585.603") :anon :lex :outer("cuid_15_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 128
    .lex "$end", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
.annotate 'line', 129
    find_lex $P5003, "self"
    nqp_decontainerize $P5002, $P5003
    $P5004 = $P5002."addstate"()
    set $P101, $P5004
.annotate 'line', 130
    find_lex $P5006, "self"
    nqp_decontainerize $P5005, $P5006
    find_lex $P5010, "$node"
    set $P5009, $P5010[0]
    unless_null $P5009, fallback294
    nqp_get_sc_object $P5011, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5009, $P5011
  fallback294:
    set $P5008, $P5009[1]
    unless_null $P5008, fallback295
    nqp_get_sc_object $P5012, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5008, $P5012
  fallback295:
    set $P5007, $P5008["orig_qast"]
    unless_null $P5007, fallback296
    nqp_get_sc_object $P5013, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5007, $P5013
  fallback296:
    find_lex $P5014, "$from"
    $P5015 = $P5005."regex_nfa"($P5007, $P5014, $P101)
.annotate 'line', 131
    find_lex $P5017, "self"
    nqp_decontainerize $P5016, $P5017
    find_lex $P5018, "$node"
    find_lex $P5019, "$to"
    $P5020 = $P5016."fate"($P5018, $P101, $P5019)
    .return ($P5020) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_107_1346277585.603") :anon :lex :outer("cuid_15_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 145
    .lex "$end", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
.annotate 'line', 146
    find_lex $P5003, "self"
    nqp_decontainerize $P5002, $P5003
    $P5004 = $P5002."addstate"()
    set $P101, $P5004
.annotate 'line', 147
    find_lex $P5006, "self"
    nqp_decontainerize $P5005, $P5006
    find_lex $P5007, "$from"
    find_lex $P5010, "$?PACKAGE"
    get_who $P5009, $P5010
    set $P5008, $P5009["$EDGE_SUBRULE"]
    unless_null $P5008, fallback320
    nqp_get_sc_object $P5011, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5008, $P5011
  fallback320:
    find_lex $P5012, "$node"
    $P5013 = $P5012."name"()
    $P5014 = $P5005."addedge"($P5007, $P101, $P5008, $P5013)
.annotate 'line', 148
    find_lex $P5016, "self"
    nqp_decontainerize $P5015, $P5016
    find_lex $P5017, "$node"
    find_lex $P5018, "$to"
    $P5019 = $P5015."fate"($P5017, $P101, $P5018)
    .return ($P5019) 
.end
.HLL "nqp"
.namespace []
.sub "quant" :subid("cuid_16_1346277585.603") :anon :lex :outer("cuid_26_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 158
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .const 'Sub' $P5031 = 'cuid_109_1346277585.603' 
    capture_lex $P5031 
    .const 'Sub' $P5031 = 'cuid_111_1346277585.603' 
    capture_lex $P5031 
    .const 'Sub' $P5031 = 'cuid_112_1346277585.603' 
    capture_lex $P5031 
    .const 'Sub' $P5031 = 'cuid_113_1346277585.603' 
    capture_lex $P5031 
    .const 'Sub' $P5031 = 'cuid_114_1346277585.603' 
    capture_lex $P5031 
    .lex "$min", $P101 
    .lex "$max", $P102 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$from", _lex_param_2 
    .lex "$to", _lex_param_3 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P102, $P5002
    root_new $P103, ['parrot';'Continuation']
    set_label $P103, lexotic_330
    .lex "RETURN", $P103
    set $N5002, 0
.annotate 'line', 159
    $P5004 = _lex_param_1."min"()
    set $P5003, $P5004
    defined $I5001, $P5003
    if $I5001, defor332
    box $P5005, 0
    set $P5003, $P5005
  defor332:
    set $N5003, $P5003
    add $N5001, $N5002, $N5003
    box $P5006, $N5001
    set $P101, $P5006
    set $N5005, 0
.annotate 'line', 160
    $P5008 = _lex_param_1."max"()
    set $P5007, $P5008
    defined $I5002, $P5007
    if $I5002, defor333
    box $P5009, -1
    set $P5007, $P5009
  defor333:
    set $N5006, $P5007
    add $N5004, $N5005, $N5006
    box $P5010, $N5004
    set $P102, $P5010
    set $N5007, $P102
    set $N5008, 1
    isgt $I5003, $N5007, $N5008
    set $I5005, $I5003
    if $I5003 goto unless121_end337 
    set $N5009, $P101
    set $N5010, 1
    isgt $I5004, $N5009, $N5010
    set $I5005, $I5004
  unless121_end337:
    box $P5014, $I5005
    set $P5013, $P5014
    unless $I5005 goto if120_end335 
    .const 'Sub' $P5011 = 'cuid_109_1346277585.603' 
    capture_lex $P5011
    $P5012 = $P5011()
    set $P5013, $P5012
  if120_end335:
    set $N5011, $P102
    set $N5012, -1
    iseq $I5006, $N5011, $N5012
    unless $I5006 goto if133_else373 
.annotate 'line', 193
    set $N5013, $P101
    set $N5014, 0
    iseq $I5007, $N5013, $N5014
    unless $I5007 goto if134_else375 
.annotate 'line', 194
    set $P5015, _lex_param_1[1]
    unless_null $P5015, fallback379
    nqp_get_sc_object $P5016, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5015, $P5016
  fallback379:
    defined $I5008, $P5015
    unless $I5008 goto if135_else377 
    .const 'Sub' $P5017 = 'cuid_111_1346277585.603' 
    capture_lex $P5017
    $P5018 = $P5017()
    set $P5021, $P5018
    goto if135_end378
  if135_else377:
    .const 'Sub' $P5019 = 'cuid_112_1346277585.603' 
    capture_lex $P5019
    $P5020 = $P5019()
    set $P5021, $P5020
  if135_end378:
    set $P5024, $P5021
    goto if134_end376
  if134_else375:
    .const 'Sub' $P5022 = 'cuid_113_1346277585.603' 
    capture_lex $P5022
    $P5023 = $P5022()
    set $P5024, $P5023
  if134_end376:
    set $P5030, _lex_param_3
    goto if133_end374
  if133_else373:
    set $N5015, $P101
    set $N5016, 0
    iseq $I5009, $N5015, $N5016
    set $I5011, $I5009
    unless $I5009 goto if144_end410 
    set $N5017, $P102
    set $N5018, 1
    iseq $I5010, $N5017, $N5018
    set $I5011, $I5010
  if144_end410:
    unless $I5011 goto if143_else407 
    .const 'Sub' $P5025 = 'cuid_114_1346277585.603' 
    capture_lex $P5025
    $P5026 = $P5025()
    set $P5029, $P5026
    goto if143_end408
  if143_else407:
.annotate 'line', 231
.annotate 'line', 232
    nqp_decontainerize $P5027, _lex_param_0
    $P5028 = $P5027."fate"(_lex_param_1, _lex_param_2, _lex_param_3)
    set $P5029, $P5028
  if143_end408:
    set $P5030, $P5029
  if133_end374:
    goto lexotic_331
  lexotic_330:
    .get_results ($P5030)
  lexotic_331:
    .return ($P5030) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_109_1346277585.603") :anon :lex :outer("cuid_16_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 162
    .const 'Sub' $P5057 = 'cuid_108_1346277585.603' 
    capture_lex $P5057 
    .const 'Sub' $P5057 = 'cuid_110_1346277585.603' 
    capture_lex $P5057 
    .lex "$count", $P101 
    .lex "$st", $P102 
    .lex "$has_sep", $P103 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P102, $P5002
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P103, $P5003
    box $P5004, 0
    set $P101, $P5004
    find_lex $P5006, "$node"
    set $P5005, $P5006[1]
    unless_null $P5005, fallback338
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5005, $P5007
  fallback338:
    defined $I5001, $P5005
    box $P5008, $I5001
    set $P103, $P5008
    new $P5035, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5035, while122_handlers342
    push_eh $P5035
  while122_test339:
    set $N5001, $P101
    find_lex $P5009, "$max"
    set $N5002, $P5009
    islt $I5002, $N5001, $N5002
    set $I5004, $I5002
    if $I5002 goto unless123_end345 
    set $N5003, $P101
    find_lex $P5010, "$min"
    set $N5004, $P5010
    islt $I5003, $N5003, $N5004
    set $I5004, $I5003
  unless123_end345:
    box $P5036, $I5004
    set $P5034, $P5036
    unless $I5004 goto while122_done343 
  while122_redo341:
.annotate 'line', 166
    set $N5005, $P101
    find_lex $P5011, "$min"
    set $N5006, $P5011
    isge $I5005, $N5005, $N5006
    box $P5015, $I5005
    set $P5014, $P5015
    unless $I5005 goto if124_end347 
    .const 'Sub' $P5012 = 'cuid_108_1346277585.603' 
    capture_lex $P5012
    $P5013 = $P5012()
    set $P5014, $P5013
  if124_end347:
    set $P5016, $P103
    unless $P103 goto if127_end354 
    set $N5007, $P101
    set $N5008, 0
    isgt $I5006, $N5007, $N5008
    box $P5017, $I5006
    set $P5016, $P5017
  if127_end354:
    set $P5025, $P5016
    unless $P5016 goto if126_end352 
.annotate 'line', 171
.annotate 'line', 172
    find_lex $P5019, "self"
    nqp_decontainerize $P5018, $P5019
    find_lex $P5021, "$node"
    set $P5020, $P5021[1]
    unless_null $P5020, fallback355
    nqp_get_sc_object $P5022, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5020, $P5022
  fallback355:
    find_lex $P5023, "$from"
    $P5024 = $P5018."regex_nfa"($P5020, $P5023, -1)
    store_lex "$from", $P5024
    set $P5025, $P5024
  if126_end352:
.annotate 'line', 174
    find_lex $P5027, "self"
    nqp_decontainerize $P5026, $P5027
    find_lex $P5029, "$node"
    set $P5028, $P5029[0]
    unless_null $P5028, fallback356
    nqp_get_sc_object $P5030, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5028, $P5030
  fallback356:
    find_lex $P5031, "$from"
    $P5032 = $P5026."regex_nfa"($P5028, $P5031, -1)
    store_lex "$from", $P5032
    set $N5010, $P101
    set $N5011, 1
    add $N5009, $N5010, $N5011
    box $P5033, $N5009
    set $P101, $P5033
    set $P5034, $P101
    goto while122_test339 
  while122_handlers342:
    .get_results ($P5035)
    pop_upto_eh $P5035
    getattribute $P5035, $P5035, 'type'
    eq $P5035, .CONTROL_LOOP_NEXT, while122_test339
    eq $P5035, .CONTROL_LOOP_REDO, while122_redo341
  while122_done343:
    pop_eh 
.annotate 'line', 177
    find_lex $P5038, "self"
    nqp_decontainerize $P5037, $P5038
    find_lex $P5039, "$from"
    find_lex $P5040, "$to"
    find_lex $P5043, "$?PACKAGE"
    get_who $P5042, $P5043
    set $P5041, $P5042["$EDGE_EPSILON"]
    unless_null $P5041, fallback357
    nqp_get_sc_object $P5044, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5041, $P5044
  fallback357:
    $P5045 = $P5037."addedge"($P5039, $P5040, $P5041, 0)
    find_lex $P5046, "$max"
    set $N5012, $P5046
    set $N5013, -1
    iseq $I5007, $N5012, $N5013
    box $P5050, $I5007
    set $P5049, $P5050
    unless $I5007 goto if128_end359 
    .const 'Sub' $P5047 = 'cuid_110_1346277585.603' 
    capture_lex $P5047
    $P5048 = $P5047()
    set $P5049, $P5048
  if128_end359:
    find_lex $P5051, "$to"
    set $N5014, $P5051
    set $N5015, 0
    islt $I5008, $N5014, $N5015
    set $I5010, $I5008
    unless $I5008 goto if132_end372 
    set $N5016, $P102
    set $N5017, 0
    isgt $I5009, $N5016, $N5017
    set $I5010, $I5009
  if132_end372:
    box $P5053, $I5010
    set $P5052, $P5053
    unless $I5010 goto if131_end370 
    store_lex "$to", $P102
    set $P5052, $P102
  if131_end370:
    find_lex $P5055, "$to"
    find_lex $P5054, "RETURN"
    $P5056 = $P5054($P5055)
    .return ($P5056) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_108_1346277585.603") :anon :lex :outer("cuid_109_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 167
    .lex "$f", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
.annotate 'line', 168
    find_lex $P5003, "self"
    nqp_decontainerize $P5002, $P5003
    find_lex $P5004, "$from"
    find_lex $P5005, "$to"
    find_lex $P5008, "$?PACKAGE"
    get_who $P5007, $P5008
    set $P5006, $P5007["$EDGE_EPSILON"]
    unless_null $P5006, fallback348
    nqp_get_sc_object $P5009, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5006, $P5009
  fallback348:
    $P5010 = $P5002."addedge"($P5004, $P5005, $P5006, 0)
    set $P101, $P5010
    find_lex $P5011, "$st"
    set $P5012, $P5011
    if $P5011 goto unless125_end350 
    set $P5012, $P101
  unless125_end350:
    store_lex "$st", $P5012
    .return ($P5012) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_110_1346277585.603") :anon :lex :outer("cuid_109_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 178
    .lex "$start", $P101 
    .lex "$looper", $P102 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P102, $P5002
.annotate 'line', 179
    find_lex $P5004, "self"
    nqp_decontainerize $P5003, $P5004
    $P5005 = $P5003."addstate"()
    set $P101, $P5005
.annotate 'line', 180
    find_lex $P5007, "self"
    nqp_decontainerize $P5006, $P5007
    find_lex $P5008, "$from"
    find_lex $P5011, "$?PACKAGE"
    get_who $P5010, $P5011
    set $P5009, $P5010["$EDGE_EPSILON"]
    unless_null $P5009, fallback360
    nqp_get_sc_object $P5012, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5009, $P5012
  fallback360:
    $P5013 = $P5006."addedge"($P5008, $P101, $P5009, 0)
    store_lex "$from", $P101
.annotate 'line', 182
    find_lex $P5015, "self"
    nqp_decontainerize $P5014, $P5015
    $P5016 = $P5014."addstate"()
    set $P102, $P5016
.annotate 'line', 183
    find_lex $P5018, "self"
    nqp_decontainerize $P5017, $P5018
    find_lex $P5019, "$to"
    find_lex $P5022, "$?PACKAGE"
    get_who $P5021, $P5022
    set $P5020, $P5021["$EDGE_EPSILON"]
    unless_null $P5020, fallback361
    nqp_get_sc_object $P5023, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5020, $P5023
  fallback361:
    $P5024 = $P5017."addedge"($P102, $P5019, $P5020, 0)
.annotate 'line', 184
    find_lex $P5026, "self"
    nqp_decontainerize $P5025, $P5026
    find_lex $P5027, "$from"
    find_lex $P5030, "$?PACKAGE"
    get_who $P5029, $P5030
    set $P5028, $P5029["$EDGE_EPSILON"]
    unless_null $P5028, fallback362
    nqp_get_sc_object $P5031, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5028, $P5031
  fallback362:
    $P5032 = $P5025."addedge"($P102, $P5027, $P5028, 0)
    find_lex $P5033, "$has_sep"
    set $P5035, $P5033
    unless $P5033 goto if130_end366 
    find_lex $P5034, "$count"
    set $N5001, $P5034
    set $N5002, 0
    isgt $I5001, $N5001, $N5002
    box $P5036, $I5001
    set $P5035, $P5036
  if130_end366:
    set $P5044, $P5035
    unless $P5035 goto if129_end364 
.annotate 'line', 185
.annotate 'line', 186
    find_lex $P5038, "self"
    nqp_decontainerize $P5037, $P5038
    find_lex $P5040, "$node"
    set $P5039, $P5040[1]
    unless_null $P5039, fallback367
    nqp_get_sc_object $P5041, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5039, $P5041
  fallback367:
    find_lex $P5042, "$from"
    $P5043 = $P5037."regex_nfa"($P5039, $P5042, -1)
    store_lex "$from", $P5043
    set $P5044, $P5043
  if129_end364:
.annotate 'line', 188
    find_lex $P5046, "self"
    nqp_decontainerize $P5045, $P5046
    find_lex $P5048, "$node"
    set $P5047, $P5048[0]
    unless_null $P5047, fallback368
    nqp_get_sc_object $P5049, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5047, $P5049
  fallback368:
    find_lex $P5050, "$from"
    $P5051 = $P5045."regex_nfa"($P5047, $P5050, $P102)
    .return ($P5051) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_111_1346277585.603") :anon :lex :outer("cuid_16_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 195
    .lex "$start", $P101 
    .lex "$looper", $P102 
    .lex "$st", $P103 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P102, $P5002
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P103, $P5003
.annotate 'line', 196
    find_lex $P5005, "self"
    nqp_decontainerize $P5004, $P5005
    $P5006 = $P5004."addstate"()
    set $P101, $P5006
.annotate 'line', 197
    find_lex $P5008, "self"
    nqp_decontainerize $P5007, $P5008
    find_lex $P5009, "$from"
    find_lex $P5012, "$?PACKAGE"
    get_who $P5011, $P5012
    set $P5010, $P5011["$EDGE_EPSILON"]
    unless_null $P5010, fallback380
    nqp_get_sc_object $P5013, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5010, $P5013
  fallback380:
    $P5014 = $P5007."addedge"($P5009, $P101, $P5010, 0)
.annotate 'line', 198
    find_lex $P5016, "self"
    nqp_decontainerize $P5015, $P5016
    $P5017 = $P5015."addstate"()
    set $P102, $P5017
.annotate 'line', 199
    find_lex $P5019, "self"
    nqp_decontainerize $P5018, $P5019
    find_lex $P5021, "$node"
    set $P5020, $P5021[0]
    unless_null $P5020, fallback381
    nqp_get_sc_object $P5022, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5020, $P5022
  fallback381:
    $P5023 = $P5018."regex_nfa"($P5020, $P101, $P102)
    set $P103, $P5023
.annotate 'line', 200
    find_lex $P5025, "self"
    nqp_decontainerize $P5024, $P5025
    find_lex $P5027, "$node"
    set $P5026, $P5027[1]
    unless_null $P5026, fallback382
    nqp_get_sc_object $P5028, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5026, $P5028
  fallback382:
    $P5029 = $P5024."regex_nfa"($P5026, $P102, $P101)
.annotate 'line', 201
    find_lex $P5031, "self"
    nqp_decontainerize $P5030, $P5031
    find_lex $P5032, "$to"
    find_lex $P5035, "$?PACKAGE"
    get_who $P5034, $P5035
    set $P5033, $P5034["$EDGE_EPSILON"]
    unless_null $P5033, fallback383
    nqp_get_sc_object $P5036, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5033, $P5036
  fallback383:
    $P5037 = $P5030."addedge"($P102, $P5032, $P5033, 0)
.annotate 'line', 202
    find_lex $P5039, "self"
    nqp_decontainerize $P5038, $P5039
    find_lex $P5040, "$from"
    find_lex $P5041, "$to"
    find_lex $P5044, "$?PACKAGE"
    get_who $P5043, $P5044
    set $P5042, $P5043["$EDGE_EPSILON"]
    unless_null $P5042, fallback384
    nqp_get_sc_object $P5045, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5042, $P5045
  fallback384:
    $P5046 = $P5038."addedge"($P5040, $P5041, $P5042, 0)
    set $P103, $P5046
    find_lex $P5047, "$to"
    set $N5001, $P5047
    set $N5002, 0
    islt $I5001, $N5001, $N5002
    set $I5003, $I5001
    unless $I5001 goto if137_end388 
    set $N5003, $P103
    set $N5004, 0
    isgt $I5002, $N5003, $N5004
    set $I5003, $I5002
  if137_end388:
    box $P5049, $I5003
    set $P5048, $P5049
    unless $I5003 goto if136_end386 
    store_lex "$to", $P103
    set $P5048, $P103
  if136_end386:
    .return ($P5048) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_112_1346277585.603") :anon :lex :outer("cuid_16_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 205
    .lex "$st", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
.annotate 'line', 206
    find_lex $P5003, "self"
    nqp_decontainerize $P5002, $P5003
    find_lex $P5005, "$node"
    set $P5004, $P5005[0]
    unless_null $P5004, fallback389
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5004, $P5006
  fallback389:
    find_lex $P5007, "$from"
    find_lex $P5008, "$from"
    $P5009 = $P5002."regex_nfa"($P5004, $P5007, $P5008)
.annotate 'line', 207
    find_lex $P5011, "self"
    nqp_decontainerize $P5010, $P5011
    find_lex $P5012, "$from"
    find_lex $P5013, "$to"
    find_lex $P5016, "$?PACKAGE"
    get_who $P5015, $P5016
    set $P5014, $P5015["$EDGE_EPSILON"]
    unless_null $P5014, fallback390
    nqp_get_sc_object $P5017, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5014, $P5017
  fallback390:
    $P5018 = $P5010."addedge"($P5012, $P5013, $P5014, 0)
    set $P101, $P5018
    find_lex $P5019, "$to"
    set $N5001, $P5019
    set $N5002, 0
    islt $I5001, $N5001, $N5002
    set $I5003, $I5001
    unless $I5001 goto if139_end394 
    set $N5003, $P101
    set $N5004, 0
    isgt $I5002, $N5003, $N5004
    set $I5003, $I5002
  if139_end394:
    box $P5021, $I5003
    set $P5020, $P5021
    unless $I5003 goto if138_end392 
    store_lex "$to", $P101
    set $P5020, $P101
  if138_end392:
    .return ($P5020) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_113_1346277585.603") :anon :lex :outer("cuid_16_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 210
    .lex "$start", $P101 
    .lex "$looper", $P102 
    .lex "$st", $P103 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P102, $P5002
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P103, $P5003
.annotate 'line', 211
    find_lex $P5005, "self"
    nqp_decontainerize $P5004, $P5005
    $P5006 = $P5004."addstate"()
    set $P101, $P5006
.annotate 'line', 212
    find_lex $P5008, "self"
    nqp_decontainerize $P5007, $P5008
    find_lex $P5009, "$from"
    find_lex $P5012, "$?PACKAGE"
    get_who $P5011, $P5012
    set $P5010, $P5011["$EDGE_EPSILON"]
    unless_null $P5010, fallback395
    nqp_get_sc_object $P5013, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5010, $P5013
  fallback395:
    $P5014 = $P5007."addedge"($P5009, $P101, $P5010, 0)
.annotate 'line', 213
    find_lex $P5016, "self"
    nqp_decontainerize $P5015, $P5016
    $P5017 = $P5015."addstate"()
    set $P102, $P5017
.annotate 'line', 214
    find_lex $P5019, "self"
    nqp_decontainerize $P5018, $P5019
    find_lex $P5021, "$node"
    set $P5020, $P5021[0]
    unless_null $P5020, fallback396
    nqp_get_sc_object $P5022, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5020, $P5022
  fallback396:
    $P5023 = $P5018."regex_nfa"($P5020, $P101, $P102)
    set $P103, $P5023
    find_lex $P5025, "$node"
    set $P5024, $P5025[1]
    unless_null $P5024, fallback399
    nqp_get_sc_object $P5026, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5024, $P5026
  fallback399:
    defined $I5001, $P5024
    unless $I5001 goto if140_else397 
.annotate 'line', 215
.annotate 'line', 216
    find_lex $P5028, "self"
    nqp_decontainerize $P5027, $P5028
    find_lex $P5030, "$node"
    set $P5029, $P5030[1]
    unless_null $P5029, fallback400
    nqp_get_sc_object $P5031, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5029, $P5031
  fallback400:
    $P5032 = $P5027."regex_nfa"($P5029, $P102, $P101)
    set $P5040, $P5032
    goto if140_end398
  if140_else397:
.annotate 'line', 218
.annotate 'line', 219
    find_lex $P5034, "self"
    nqp_decontainerize $P5033, $P5034
    find_lex $P5037, "$?PACKAGE"
    get_who $P5036, $P5037
    set $P5035, $P5036["$EDGE_EPSILON"]
    unless_null $P5035, fallback401
    nqp_get_sc_object $P5038, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5035, $P5038
  fallback401:
    $P5039 = $P5033."addedge"($P102, $P101, $P5035, 0)
    set $P5040, $P5039
  if140_end398:
.annotate 'line', 221
    find_lex $P5042, "self"
    nqp_decontainerize $P5041, $P5042
    find_lex $P5043, "$to"
    find_lex $P5046, "$?PACKAGE"
    get_who $P5045, $P5046
    set $P5044, $P5045["$EDGE_EPSILON"]
    unless_null $P5044, fallback402
    nqp_get_sc_object $P5047, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5044, $P5047
  fallback402:
    $P5048 = $P5041."addedge"($P102, $P5043, $P5044, 0)
    find_lex $P5049, "$to"
    set $N5001, $P5049
    set $N5002, 0
    islt $I5002, $N5001, $N5002
    set $I5004, $I5002
    unless $I5002 goto if142_end406 
    set $N5003, $P103
    set $N5004, 0
    isgt $I5003, $N5003, $N5004
    set $I5004, $I5003
  if142_end406:
    box $P5051, $I5004
    set $P5050, $P5051
    unless $I5004 goto if141_end404 
    store_lex "$to", $P103
    set $P5050, $P103
  if141_end404:
    .return ($P5050) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_114_1346277585.603") :anon :lex :outer("cuid_16_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 225
    .lex "$st", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
.annotate 'line', 226
    find_lex $P5003, "self"
    nqp_decontainerize $P5002, $P5003
    find_lex $P5005, "$node"
    set $P5004, $P5005[0]
    unless_null $P5004, fallback411
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5004, $P5006
  fallback411:
    find_lex $P5007, "$from"
    find_lex $P5008, "$to"
    $P5009 = $P5002."regex_nfa"($P5004, $P5007, $P5008)
    set $P101, $P5009
    find_lex $P5010, "$to"
    set $N5001, $P5010
    set $N5002, 0
    islt $I5001, $N5001, $N5002
    set $I5003, $I5001
    unless $I5001 goto if146_end415 
    set $N5003, $P101
    set $N5004, 0
    isgt $I5002, $N5003, $N5004
    set $I5003, $I5002
  if146_end415:
    box $P5012, $I5003
    set $P5011, $P5012
    unless $I5003 goto if145_end413 
    store_lex "$to", $P101
    set $P5011, $P101
  if145_end413:
.annotate 'line', 228
    find_lex $P5014, "self"
    nqp_decontainerize $P5013, $P5014
    find_lex $P5015, "$from"
    find_lex $P5016, "$to"
    find_lex $P5019, "$?PACKAGE"
    get_who $P5018, $P5019
    set $P5017, $P5018["$EDGE_EPSILON"]
    unless_null $P5017, fallback416
    nqp_get_sc_object $P5020, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5017, $P5020
  fallback416:
    $P5021 = $P5013."addedge"($P5015, $P5016, $P5017, 0)
    set $P101, $P5021
    find_lex $P5022, "$to"
    set $N5005, $P5022
    set $N5006, 0
    islt $I5004, $N5005, $N5006
    set $I5006, $I5004
    unless $I5004 goto if148_end420 
    set $N5007, $P101
    set $N5008, 0
    isgt $I5005, $N5007, $N5008
    set $I5006, $I5005
  if148_end420:
    box $P5024, $I5006
    set $P5023, $P5024
    unless $I5006 goto if147_end418 
    store_lex "$to", $P101
    set $P5023, $P101
  if147_end418:
    find_lex $P5025, "$to"
    .return ($P5025) 
.end
.HLL "nqp"
.namespace []
.sub "qastnode" :subid("cuid_17_1346277585.603") :anon :lex :outer("cuid_26_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 236
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$from", _lex_param_2 
    .lex "$to", _lex_param_3 
.annotate 'line', 237
    $P5001 = _lex_param_1."subtype"()
    set $S5001, $P5001
    iseq $I5001, $S5001, "zerowidth"
    set $I5003, $I5001
    if $I5001 goto unless150_end424 
    $P5002 = _lex_param_1."subtype"()
    set $S5002, $P5002
    iseq $I5002, $S5002, "declarative"
    set $I5003, $I5002
  unless150_end424:
    unless $I5003 goto if149_else421 
.annotate 'line', 238
    nqp_decontainerize $P5003, _lex_param_0
    find_lex $P5006, "$?PACKAGE"
    get_who $P5005, $P5006
    set $P5004, $P5005["$EDGE_EPSILON"]
    unless_null $P5004, fallback425
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5004, $P5007
  fallback425:
    $P5008 = $P5003."addedge"(_lex_param_2, _lex_param_3, $P5004, 0)
    set $P5011, $P5008
    goto if149_end422
  if149_else421:
.annotate 'line', 239
    nqp_decontainerize $P5009, _lex_param_0
    $P5010 = $P5009."fate"(_lex_param_1, _lex_param_2, _lex_param_3)
    set $P5011, $P5010
  if149_end422:
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "subcapture" :subid("cuid_18_1346277585.603") :anon :lex :outer("cuid_26_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 242
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$from", _lex_param_2 
    .lex "$to", _lex_param_3 
.annotate 'line', 243
    nqp_decontainerize $P5001, _lex_param_0
    set $P5002, _lex_param_1[0]
    unless_null $P5002, fallback426
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5002, $P5003
  fallback426:
    $P5004 = $P5001."regex_nfa"($P5002, _lex_param_2, _lex_param_3)
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "past" :subid("cuid_19_1346277585.603") :anon :lex :outer("cuid_26_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 246
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("non_empty") :optional 
    .param int haz_param_8 :opt_flag 
    .const 'Sub' $P5031 = 'cuid_115_1346277585.603' 
    capture_lex $P5031 
    if haz_param_8, default440
    nqp_get_sc_object $P5030, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set _lex_param_1, $P5030
  default440:
    .lex "$past", $P101 
    .lex "self", _lex_param_0 
    .lex "$non_empty", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    root_new $P102, ['parrot';'Continuation']
    set_label $P102, lexotic_427
    .lex "RETURN", $P102
    nqp_decontainerize $P5002, _lex_param_0
    nqp_get_sc_object $P5003, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 1
    repr_get_attr_obj $P5004, $P5002, $P5003, "$!edges"
    set $P5014, $P5004
    if $P5004 goto unless151_end430 
.annotate 'line', 247
    set $P5007, _lex_param_1
    if _lex_param_1 goto unless152_end432 
    find_lex $P5005, "RETURN"
    $P5006 = $P5005(0)
    set $P5007, $P5006
  unless152_end432:
.annotate 'line', 249
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5011, "$?PACKAGE"
    get_who $P5010, $P5011
    set $P5009, $P5010["$EDGE_FATE"]
    unless_null $P5009, fallback433
    nqp_get_sc_object $P5012, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5009, $P5012
  fallback433:
    $P5013 = $P5008."addedge"(1, 0, $P5009, 0, 1 :named("newedge"))
    set $P5014, $P5013
  unless151_end430:
.annotate 'line', 251
    get_hll_global $P5018, "GLOBAL"
    nqp_get_package_through_who $P5017, $P5018, "PAST"
    get_who $P5016, $P5017
    set $P5015, $P5016["Op"]
    unless_null $P5015, fallback434
    nqp_get_sc_object $P5019, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5015, $P5019
  fallback434:
    $P5020 = $P5015."new"("list" :named("pasttype"))
    set $P101, $P5020
    nqp_decontainerize $P5024, _lex_param_0
    nqp_get_sc_object $P5025, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 1
    repr_get_attr_obj $P5026, $P5024, $P5025, "$!states"
    set $P5021, $P5026
    iter $P5023, $P5026
    new $P5028, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5028, for_handlers436
    push_eh $P5028
  for_next437:
    unless $P5023, for_done439
    shift $P5029, $P5023
  for_redo438:
    .const 'Sub' $P5027 = 'cuid_115_1346277585.603' 
    capture_lex $P5027
    $P5021 = $P5027($P5029)
    goto for_next437
  for_handlers436:
    .get_results ($P5028)
    pop_upto_eh $P5028
    getattribute $P5028, $P5028, 'type'
    eq $P5028, .CONTROL_LOOP_NEXT, for_next437
    eq $P5028, .CONTROL_LOOP_REDO, for_redo438
  for_done439:
    pop_eh 
    goto lexotic_428
  lexotic_427:
    .get_results ($P101)
  lexotic_428:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_115_1346277585.603") :anon :lex :outer("cuid_19_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 252
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 253
    find_lex $P5001, "$past"
    get_hll_global $P5005, "GLOBAL"
    nqp_get_package_through_who $P5004, $P5005, "PAST"
    get_who $P5003, $P5004
    set $P5002, $P5003["Op"]
    unless_null $P5002, fallback435
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5002, $P5006
  fallback435:
    $P5007 = $P5002."new"(_lex_param_0 :flat, "list" :named("pasttype"))
    $P5008 = $P5001."push"($P5007)
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "qast" :subid("cuid_20_1346277585.603") :anon :lex :outer("cuid_26_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 258
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("non_empty") :optional 
    .param int haz_param_9 :opt_flag 
    .const 'Sub' $P5031 = 'cuid_117_1346277585.603' 
    capture_lex $P5031 
    if haz_param_9, default465
    nqp_get_sc_object $P5030, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set _lex_param_1, $P5030
  default465:
    .lex "$past", $P101 
    .lex "self", _lex_param_0 
    .lex "$non_empty", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    root_new $P102, ['parrot';'Continuation']
    set_label $P102, lexotic_441
    .lex "RETURN", $P102
    nqp_decontainerize $P5002, _lex_param_0
    nqp_get_sc_object $P5003, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 1
    repr_get_attr_obj $P5004, $P5002, $P5003, "$!edges"
    set $P5014, $P5004
    if $P5004 goto unless153_end444 
.annotate 'line', 259
    set $P5007, _lex_param_1
    if _lex_param_1 goto unless154_end446 
    find_lex $P5005, "RETURN"
    $P5006 = $P5005(0)
    set $P5007, $P5006
  unless154_end446:
.annotate 'line', 261
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5011, "$?PACKAGE"
    get_who $P5010, $P5011
    set $P5009, $P5010["$EDGE_FATE"]
    unless_null $P5009, fallback447
    nqp_get_sc_object $P5012, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5009, $P5012
  fallback447:
    $P5013 = $P5008."addedge"(1, 0, $P5009, 0, 1 :named("newedge"))
    set $P5014, $P5013
  unless153_end444:
.annotate 'line', 263
    get_hll_global $P5018, "GLOBAL"
    nqp_get_package_through_who $P5017, $P5018, "QAST"
    get_who $P5016, $P5017
    set $P5015, $P5016["Op"]
    unless_null $P5015, fallback448
    nqp_get_sc_object $P5019, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5015, $P5019
  fallback448:
    $P5020 = $P5015."new"("list" :named("op"))
    set $P101, $P5020
    nqp_decontainerize $P5024, _lex_param_0
    nqp_get_sc_object $P5025, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 1
    repr_get_attr_obj $P5026, $P5024, $P5025, "$!states"
    set $P5021, $P5026
    iter $P5023, $P5026
    new $P5028, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5028, for_handlers461
    push_eh $P5028
  for_next462:
    unless $P5023, for_done464
    shift $P5029, $P5023
  for_redo463:
    .const 'Sub' $P5027 = 'cuid_117_1346277585.603' 
    capture_lex $P5027
    $P5021 = $P5027($P5029)
    goto for_next462
  for_handlers461:
    .get_results ($P5028)
    pop_upto_eh $P5028
    getattribute $P5028, $P5028, 'type'
    eq $P5028, .CONTROL_LOOP_NEXT, for_next462
    eq $P5028, .CONTROL_LOOP_REDO, for_redo463
  for_done464:
    pop_eh 
    goto lexotic_442
  lexotic_441:
    .get_results ($P101)
  lexotic_442:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_117_1346277585.603") :anon :lex :outer("cuid_20_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 264
    .param pmc _lex_param_0 
    .const 'Sub' $P5016 = 'cuid_116_1346277585.603' 
    capture_lex $P5016 
    .lex "$list", $P101 
    .lex "@values", _lex_param_0 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
.annotate 'line', 265
    get_hll_global $P5005, "GLOBAL"
    nqp_get_package_through_who $P5004, $P5005, "QAST"
    get_who $P5003, $P5004
    set $P5002, $P5003["Op"]
    unless_null $P5002, fallback449
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5002, $P5006
  fallback449:
    $P5007 = $P5002."new"("list" :named("op"))
    set $P101, $P5007
    set $P5008, _lex_param_0
    iter $P5010, _lex_param_0
    new $P5012, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5012, for_handlers457
    push_eh $P5012
  for_next458:
    unless $P5010, for_done460
    shift $P5013, $P5010
  for_redo459:
    .const 'Sub' $P5011 = 'cuid_116_1346277585.603' 
    capture_lex $P5011
    $P5008 = $P5011($P5013)
    goto for_next458
  for_handlers457:
    .get_results ($P5012)
    pop_upto_eh $P5012
    getattribute $P5012, $P5012, 'type'
    eq $P5012, .CONTROL_LOOP_NEXT, for_next458
    eq $P5012, .CONTROL_LOOP_REDO, for_redo459
  for_done460:
    pop_eh 
.annotate 'line', 277
    find_lex $P5014, "$past"
    $P5015 = $P5014."push"($P101)
    .return ($P5015) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_116_1346277585.603") :anon :lex :outer("cuid_117_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 266
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 267
    get_hll_global $P5004, "GLOBAL"
    nqp_get_package_through_who $P5003, $P5004, "QAST"
    get_who $P5002, $P5003
    set $P5001, $P5002["SVal"]
    unless_null $P5001, fallback452
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5001, $P5005
  fallback452:
    $P5006 = $P5001."ACCEPTS"(_lex_param_0)
    unless $P5006 goto if155_else450 
.annotate 'line', 268
    find_lex $P5007, "$list"
    $P5008 = $P5007."push"(_lex_param_0)
    set $P5026, $P5008
    goto if155_end451
  if155_else450:
    set $N5001, _lex_param_0
    set $S5001, $N5001
    set $S5002, _lex_param_0
    iseq $I5001, $S5001, $S5002
    unless $I5001 goto if156_else453 
.annotate 'line', 270
.annotate 'line', 271
    find_lex $P5009, "$list"
    get_hll_global $P5013, "GLOBAL"
    nqp_get_package_through_who $P5012, $P5013, "QAST"
    get_who $P5011, $P5012
    set $P5010, $P5011["IVal"]
    unless_null $P5010, fallback455
    nqp_get_sc_object $P5014, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5010, $P5014
  fallback455:
    $P5015 = $P5010."new"(_lex_param_0 :named("value"))
    $P5016 = $P5009."push"($P5015)
    set $P5025, $P5016
    goto if156_end454
  if156_else453:
.annotate 'line', 273
.annotate 'line', 274
    find_lex $P5017, "$list"
    get_hll_global $P5021, "GLOBAL"
    nqp_get_package_through_who $P5020, $P5021, "QAST"
    get_who $P5019, $P5020
    set $P5018, $P5019["SVal"]
    unless_null $P5018, fallback456
    nqp_get_sc_object $P5022, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5018, $P5022
  fallback456:
    $P5023 = $P5018."new"(_lex_param_0 :named("value"))
    $P5024 = $P5017."push"($P5023)
    set $P5025, $P5024
  if156_end454:
    set $P5026, $P5025
  if155_end451:
    .return ($P5026) 
.end
.HLL "nqp"
.namespace []
.sub "mergesubrule" :subid("cuid_21_1346277585.603") :anon :lex :outer("cuid_26_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 282
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .param pmc _lex_param_4 
    .param pmc _lex_param_5 
    .param pmc _lex_param_6 :optional 
    .param int haz_param_10 :opt_flag 
    .const 'Sub' $P5020 = 'cuid_118_1346277585.603' 
    capture_lex $P5020 
    .const 'Sub' $P5020 = 'cuid_120_1346277585.603' 
    capture_lex $P5020 
    if haz_param_10, default489
    new $P5019, 'Hash'
    set _lex_param_6, $P5019
  default489:
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
    set $S5001, _lex_param_5
    can $I5001, _lex_param_4, $S5001
    box $P5015, $I5001
    set $P5014, $P5015
    unless $I5001 goto if157_end467 
.annotate 'line', 286
    set $S5002, _lex_param_5
    exists $I5003, $P101[$S5002]
    box $P5004, $I5003
    isfalse $I5002, $P5004
    box $P5008, $I5002
    set $P5007, $P5008
    unless $I5002 goto if158_end469 
    .const 'Sub' $P5005 = 'cuid_118_1346277585.603' 
    capture_lex $P5005
    $P5006 = $P5005()
    set $P5007, $P5006
  if158_end469:
    isfalse $I5004, $P102
    set $I5007, $I5004
    unless $I5004 goto if162_end477 
    set $S5003, _lex_param_5
    exists $I5006, $P101[$S5003]
    box $P5009, $I5006
    isfalse $I5005, $P5009
    set $I5007, $I5005
  if162_end477:
    box $P5013, $I5007
    set $P5012, $P5013
    unless $I5007 goto if161_end475 
    .const 'Sub' $P5010 = 'cuid_120_1346277585.603' 
    capture_lex $P5010
    $P5011 = $P5010()
    set $P5012, $P5011
  if161_end475:
    set $P5014, $P5012
  if157_end467:
    set $S5004, _lex_param_5
    box $P5016, 1
    set $P101[$S5004], $P5016
.annotate 'line', 308
    nqp_decontainerize $P5017, _lex_param_0
    $P5018 = $P5017."mergesubstates"(_lex_param_1, _lex_param_2, _lex_param_3, $P102, _lex_param_4, $P101)
    .return ($P5018) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_118_1346277585.603") :anon :lex :outer("cuid_21_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 287
    .lex "$meth", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
.annotate 'line', 288
    find_lex $P5003, "$cursor"
    get_how $P5002, $P5003
    find_lex $P5004, "$cursor"
    find_lex $P5005, "$name"
    $P5006 = $P5002."find_method"($P5004, $P5005, 1 :named("no_trace"))
    set $P101, $P5006
    can $I5001, $P101, "nqpattr"
    box $P5009, $I5001
    set $P5008, $P5009
    unless $I5001 goto if159_end471 
.annotate 'line', 289
    $P5007 = $P101."nqpattr"("nfa")
    store_lex "@substates", $P5007
    set $P5008, $P5007
  if159_end471:
    find_lex $P5010, "@substates"
    isnull $I5002, $P5010
    box $P5013, $I5002
    set $P5012, $P5013
    unless $I5002 goto if160_end473 
    new $P5011, 'ResizablePMCArray'
    store_lex "@substates", $P5011
    set $P5012, $P5011
  if160_end473:
    .return ($P5012) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_120_1346277585.603") :anon :lex :outer("cuid_21_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 292
    .const 'Sub' $P5031 = 'cuid_119_1346277585.603' 
    capture_lex $P5031 
    .const 'Sub' $P5031 = 'cuid_121_1346277585.603' 
    capture_lex $P5031 
    .lex "%protorx", $P101 
    .lex "$nfa", $P102 
    .lex "$gotmatch", $P103 
    new $P5001, 'Hash'
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P102, $P5002
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P103, $P5003
.annotate 'line', 295
    find_lex $P5005, "$cursor"
    get_how $P5004, $P5005
    find_lex $P5006, "$cursor"
    .const 'Sub' $P5008 = 'cuid_119_1346277585.603' 
    capture_lex $P5008
    newclosure $P5007, $P5008
    $P5009 = $P5004."cache"($P5006, "!protoregex_table", $P5007)
    set $P101, $P5009
.annotate 'line', 296
    get_hll_global $P5013, "GLOBAL"
    nqp_get_package_through_who $P5012, $P5013, "QRegex"
    get_who $P5011, $P5012
    set $P5010, $P5011["NFA"]
    unless_null $P5010, fallback478
    nqp_get_sc_object $P5014, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5010, $P5014
  fallback478:
    $P5015 = $P5010."new"()
    set $P102, $P5015
    box $P5016, 0
    set $P103, $P5016
    find_lex $P5017, "$name"
    set $S5001, $P5017
    exists $I5001, $P101[$S5001]
    box $P5028, $I5001
    set $P5027, $P5028
    unless $I5001 goto if163_end480 
.annotate 'line', 298
    find_lex $P5022, "$name"
    set $S5002, $P5022
    set $P5021, $P101[$S5002]
    unless_null $P5021, fallback481
    nqp_get_sc_object $P5023, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5021, $P5023
  fallback481:
    set $P5018, $P5021
    iter $P5020, $P5021
    new $P5025, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5025, for_handlers483
    push_eh $P5025
  for_next484:
    unless $P5020, for_done486
    shift $P5026, $P5020
  for_redo485:
    .const 'Sub' $P5024 = 'cuid_121_1346277585.603' 
    capture_lex $P5024
    $P5018 = $P5024($P5026)
    goto for_next484
  for_handlers483:
    .get_results ($P5025)
    pop_upto_eh $P5025
    getattribute $P5025, $P5025, 'type'
    eq $P5025, .CONTROL_LOOP_NEXT, for_next484
    eq $P5025, .CONTROL_LOOP_REDO, for_redo485
  for_done486:
    pop_eh 
    set $P5027, $P5018
  if163_end480:
    set $P5030, $P103
    unless $P103 goto if164_end488 
.annotate 'line', 304
    $P5029 = $P102."states"()
    store_lex "@substates", $P5029
    set $P5030, $P5029
  if164_end488:
    .return ($P5030) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_119_1346277585.603") :anon :lex :outer("cuid_120_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 295

    find_lex $P5001, "$cursor"
    $P5002 = $P5001."!protoregex_table"()
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_121_1346277585.603") :anon :lex :outer("cuid_120_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 299
    .param pmc _lex_param_0 
    .lex "$rxname", _lex_param_0 
.annotate 'line', 300
    find_lex $P5001, "$nfa"
    find_lex $P5004, "$?PACKAGE"
    get_who $P5003, $P5004
    set $P5002, $P5003["$EDGE_SUBRULE"]
    unless_null $P5002, fallback482
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5002, $P5005
  fallback482:
    $P5006 = $P5001."addedge"(1, 0, $P5002, _lex_param_0)
    box $P5007, 1
    store_lex "$gotmatch", $P5007
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "mergesubstates" :subid("cuid_22_1346277585.603") :anon :lex :outer("cuid_26_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 311
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .param pmc _lex_param_4 
    .param pmc _lex_param_5 
    .param pmc _lex_param_6 :optional 
    .param int haz_param_11 :opt_flag 
    .const 'Sub' $P5011 = 'cuid_123_1346277585.603' 
    capture_lex $P5011 
    if haz_param_11, default525
    new $P5010, 'Hash'
    set _lex_param_6, $P5010
  default525:
    .lex "self", _lex_param_0 
    .lex "$start", _lex_param_1 
    .lex "$to", _lex_param_2 
    .lex "$fate", _lex_param_3 
    .lex "@substates", _lex_param_4 
    .lex "$cursor", _lex_param_5 
    .lex "%seen", _lex_param_6 
    unless _lex_param_4 goto if165_else490 
    .const 'Sub' $P5001 = 'cuid_123_1346277585.603' 
    capture_lex $P5001
    $P5002 = $P5001()
    set $P5009, $P5002
    goto if165_end491
  if165_else490:
.annotate 'line', 347
.annotate 'line', 348
    nqp_decontainerize $P5003, _lex_param_0
    find_lex $P5006, "$?PACKAGE"
    get_who $P5005, $P5006
    set $P5004, $P5005["$EDGE_FATE"]
    unless_null $P5004, fallback524
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5004, $P5007
  fallback524:
    $P5008 = $P5003."addedge"(_lex_param_1, 0, $P5004, _lex_param_3)
    set $P5009, $P5008
  if165_end491:
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_123_1346277585.603") :anon :lex :outer("cuid_22_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 312
    .const 'Sub' $P5057 = 'cuid_122_1346277585.603' 
    capture_lex $P5057 
    .lex "$substart", $P101 
    .lex "$subend", $P102 
    .lex "$i", $P103 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P102, $P5002
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P103, $P5003
.annotate 'line', 314
    find_lex $P5005, "self"
    nqp_decontainerize $P5004, $P5005
    $P5006 = $P5004."addstate"()
    set $P101, $P5006
    find_lex $P5008, "@substates"
    clone $P5007, $P5008
    store_lex "@substates", $P5007
    find_lex $P5010, "@substates"
    shift $P5009, $P5010
    new $P5020, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5020, while166_handlers495
    push_eh $P5020
  while166_test492:
    find_lex $P5011, "@substates"
    set $P5019, $P5011
    unless $P5011 goto while166_done496 
  while166_redo494:
    find_lex $P5013, "self"
    nqp_decontainerize $P5012, $P5013
    nqp_get_sc_object $P5014, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 1
    repr_get_attr_obj $P5015, $P5012, $P5014, "$!states"
    find_lex $P5018, "@substates"
    shift $P5017, $P5018
    clone $P5016, $P5017
    push $P5015, $P5016
    set $P5019, $P5015
    goto while166_test492 
  while166_handlers495:
    .get_results ($P5020)
    pop_upto_eh $P5020
    getattribute $P5020, $P5020, 'type'
    eq $P5020, .CONTROL_LOOP_NEXT, while166_test492
    eq $P5020, .CONTROL_LOOP_REDO, while166_redo494
  while166_done496:
    pop_eh 
    find_lex $P5022, "self"
    nqp_decontainerize $P5021, $P5022
    nqp_get_sc_object $P5023, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 1
    repr_get_attr_obj $P5024, $P5021, $P5023, "$!states"
    elements $I5001, $P5024
    box $P5025, $I5001
    set $P102, $P5025
    set $P103, $P101
    new $P5029, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5029, while167_handlers500
    push_eh $P5029
  while167_test497:
    set $N5001, $P103
    set $N5002, $P102
    islt $I5002, $N5001, $N5002
    box $P5030, $I5002
    set $P5028, $P5030
    unless $I5002 goto while167_done501 
  while167_redo499:
    .const 'Sub' $P5026 = 'cuid_122_1346277585.603' 
    capture_lex $P5026
    $P5027 = $P5026()
    set $P5028, $P5027
    goto while167_test497 
  while167_handlers500:
    .get_results ($P5029)
    pop_upto_eh $P5029
    getattribute $P5029, $P5029, 'type'
    eq $P5029, .CONTROL_LOOP_NEXT, while167_test497
    eq $P5029, .CONTROL_LOOP_REDO, while167_redo499
  while167_done501:
    pop_eh 
.annotate 'line', 342
    find_lex $P5032, "self"
    nqp_decontainerize $P5031, $P5032
    find_lex $P5033, "$start"
    set $N5004, $P101
    set $N5005, 1
    add $N5003, $N5004, $N5005
    find_lex $P5036, "$?PACKAGE"
    get_who $P5035, $P5036
    set $P5034, $P5035["$EDGE_EPSILON"]
    unless_null $P5034, fallback519
    nqp_get_sc_object $P5037, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5034, $P5037
  fallback519:
    $P5038 = $P5031."addedge"($P5033, $N5003, $P5034, 0)
    find_lex $P5039, "$to"
    set $N5006, $P5039
    set $N5007, 0
    isgt $I5003, $N5006, $N5007
    unless $I5003 goto if171_else520 
.annotate 'line', 344
    find_lex $P5041, "self"
    nqp_decontainerize $P5040, $P5041
    find_lex $P5042, "$to"
    find_lex $P5045, "$?PACKAGE"
    get_who $P5044, $P5045
    set $P5043, $P5044["$EDGE_EPSILON"]
    unless_null $P5043, fallback522
    nqp_get_sc_object $P5046, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5043, $P5046
  fallback522:
    $P5047 = $P5040."addedge"($P101, $P5042, $P5043, 0)
    set $P5056, $P5047
    goto if171_end521
  if171_else520:
.annotate 'line', 345
    find_lex $P5049, "self"
    nqp_decontainerize $P5048, $P5049
    find_lex $P5052, "$?PACKAGE"
    get_who $P5051, $P5052
    set $P5050, $P5051["$EDGE_FATE"]
    unless_null $P5050, fallback523
    nqp_get_sc_object $P5053, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5050, $P5053
  fallback523:
    find_lex $P5054, "$fate"
    $P5055 = $P5048."addedge"($P101, 0, $P5050, $P5054)
    set $P5056, $P5055
  if171_end521:
    .return ($P5056) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_122_1346277585.603") :anon :lex :outer("cuid_123_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 328
    .lex "$substate", $P101 
    .lex "$j", $P102 
    .lex "$k", $P103 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P102, $P5002
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P103, $P5003
    find_lex $P5006, "self"
    nqp_decontainerize $P5005, $P5006
    nqp_get_sc_object $P5007, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 1
    repr_get_attr_obj $P5008, $P5005, $P5007, "$!states"
    find_lex $P5009, "$i"
    set $I5001, $P5009
    set $P5004, $P5008[$I5001]
    unless_null $P5004, fallback502
    nqp_get_sc_object $P5010, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5004, $P5010
  fallback502:
    set $P101, $P5004
    box $P5011, 0
    set $P102, $P5011
    elements $I5002, $P101
    box $P5012, $I5002
    set $P103, $P5012
    new $P5047, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5047, while168_handlers506
    push_eh $P5047
  while168_test503:
    set $N5001, $P102
    set $N5002, $P103
    islt $I5003, $N5001, $N5002
    box $P5048, $I5003
    set $P5046, $P5048
    unless $I5003 goto while168_done507 
  while168_redo505:
.annotate 'line', 332
    set $N5004, $P102
    set $N5005, 2
    add $N5003, $N5004, $N5005
    set $I5004, $N5003
    set $N5008, $P102
    set $N5009, 2
    add $N5007, $N5008, $N5009
    set $I5005, $N5007
    set $P5013, $P101[$I5005]
    unless_null $P5013, fallback508
    nqp_get_sc_object $P5014, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5013, $P5014
  fallback508:
    set $N5010, $P5013
    find_lex $P5015, "$substart"
    set $N5011, $P5015
    add $N5006, $N5010, $N5011
    box $P5016, $N5006
    set $P101[$I5004], $P5016
    set $I5007, $P102
    set $P5017, $P101[$I5007]
    unless_null $P5017, fallback511
    nqp_get_sc_object $P5018, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5017, $P5018
  fallback511:
    set $N5012, $P5017
    find_lex $P5021, "$?PACKAGE"
    get_who $P5020, $P5021
    set $P5019, $P5020["$EDGE_FATE"]
    unless_null $P5019, fallback512
    nqp_get_sc_object $P5022, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5019, $P5022
  fallback512:
    set $N5013, $P5019
    iseq $I5006, $N5012, $N5013
    box $P5025, $I5006
    set $P5024, $P5025
    unless $I5006 goto if169_end510 
    set $N5015, $P102
    set $N5016, 1
    add $N5014, $N5015, $N5016
    set $I5008, $N5014
    find_lex $P5023, "$fate"
    set $P101[$I5008], $P5023
    set $P5024, $P5023
  if169_end510:
    set $I5010, $P102
    set $P5026, $P101[$I5010]
    unless_null $P5026, fallback515
    nqp_get_sc_object $P5027, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5026, $P5027
  fallback515:
    set $N5017, $P5026
    find_lex $P5030, "$?PACKAGE"
    get_who $P5029, $P5030
    set $P5028, $P5029["$EDGE_SUBRULE"]
    unless_null $P5028, fallback516
    nqp_get_sc_object $P5031, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5028, $P5031
  fallback516:
    set $N5018, $P5028
    iseq $I5009, $N5017, $N5018
    box $P5044, $I5009
    set $P5043, $P5044
    unless $I5009 goto if170_end514 
.annotate 'line', 336
    find_lex $P5033, "self"
    nqp_decontainerize $P5032, $P5033
    find_lex $P5034, "$i"
    set $N5020, $P102
    set $N5021, 2
    add $N5019, $N5020, $N5021
    set $I5011, $N5019
    set $P5035, $P101[$I5011]
    unless_null $P5035, fallback517
    nqp_get_sc_object $P5036, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5035, $P5036
  fallback517:
    find_lex $P5037, "$fate"
    find_lex $P5038, "$cursor"
    set $N5023, $P102
    set $N5024, 1
    add $N5022, $N5023, $N5024
    set $I5012, $N5022
    set $P5039, $P101[$I5012]
    unless_null $P5039, fallback518
    nqp_get_sc_object $P5040, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5039, $P5040
  fallback518:
    find_lex $P5041, "%seen"
    $P5042 = $P5032."mergesubrule"($P5034, $P5035, $P5037, $P5038, $P5039, $P5041)
    set $P5043, $P5042
  if170_end514:
    set $N5026, $P102
    set $N5027, 3
    add $N5025, $N5026, $N5027
    box $P5045, $N5025
    set $P102, $P5045
    set $P5046, $P102
    goto while168_test503 
  while168_handlers506:
    .get_results ($P5047)
    pop_upto_eh $P5047
    getattribute $P5047, $P5047, 'type'
    eq $P5047, .CONTROL_LOOP_NEXT, while168_test503
    eq $P5047, .CONTROL_LOOP_REDO, while168_redo505
  while168_done507:
    pop_eh 
    find_lex $P5049, "$i"
    set $N5029, $P5049
    set $N5030, 1
    add $N5028, $N5029, $N5030
    box $P5050, $N5028
    store_lex "$i", $P5050
    .return ($P5050) 
.end
.HLL "nqp"
.namespace []
.sub "run" :subid("cuid_23_1346277585.603") :anon :lex :outer("cuid_26_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 352
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .lex "self", _lex_param_0 
    .lex "$target", _lex_param_1 
    .lex "$offset", _lex_param_2 
    nqp_decontainerize $P5002, _lex_param_0
    nqp_get_sc_object $P5003, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 1
    repr_get_attr_obj $P5004, $P5002, $P5003, "$!states"
    set $S5001, _lex_param_1
    set $I5001, _lex_param_2
    nqp_nfa_run_protoregex $P5001, $P5004, $S5001, $I5001
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "run_alt" :subid("cuid_24_1346277585.603") :anon :lex :outer("cuid_26_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 402
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .param pmc _lex_param_4 
    .lex "self", _lex_param_0 
    .lex "$target", _lex_param_1 
    .lex "$offset", _lex_param_2 
    .lex "$bstack", _lex_param_3 
    .lex "$cstack", _lex_param_4 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 1
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!states"
    set $S5001, _lex_param_1
    set $I5001, _lex_param_2
    nqp_nfa_run_alternation $P5003, $S5001, $I5001, _lex_param_3, _lex_param_4
    .return () 
.end
.HLL "nqp"
.namespace []
.sub "__dump" :subid("cuid_25_1346277585.603") :anon :lex :outer("cuid_26_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 406
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .const 'Sub' $P5018 = 'cuid_124_1346277585.603' 
    capture_lex $P5018 
    .lex "$subindent", $P101 
    .lex "$st", $P102 
    .lex "self", _lex_param_0 
    .lex "$dumper", _lex_param_1 
    .lex "$label", _lex_param_2 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P102, $P5002
.annotate 'line', 407
    $P5003 = _lex_param_1."newIndent"()
    set $P101, $P5003
.annotate 'line', 408
    $P5004 = "&print"("[")
    box $P5005, 0
    set $P102, $P5005
    nqp_decontainerize $P5009, _lex_param_0
    nqp_get_sc_object $P5010, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 1
    repr_get_attr_obj $P5011, $P5009, $P5010, "$!states"
    set $P5006, $P5011
    iter $P5008, $P5011
    new $P5013, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5013, for_handlers526
    push_eh $P5013
  for_next527:
    unless $P5008, for_done529
    shift $P5014, $P5008
  for_redo528:
    .const 'Sub' $P5012 = 'cuid_124_1346277585.603' 
    capture_lex $P5012
    $P5006 = $P5012($P5014)
    goto for_next527
  for_handlers526:
    .get_results ($P5013)
    pop_upto_eh $P5013
    getattribute $P5013, $P5013, 'type'
    eq $P5013, .CONTROL_LOOP_NEXT, for_next527
    eq $P5013, .CONTROL_LOOP_REDO, for_redo528
  for_done529:
    pop_eh 
.annotate 'line', 414
    $P5015 = _lex_param_1."deleteIndent"()
.annotate 'line', 415
    $P5016 = _lex_param_1."indent"()
    $P5017 = "&print"("\n", $P5016, "]")
    .return ($P5017) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_124_1346277585.603") :anon :lex :outer("cuid_25_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 410
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 411
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
.sub "" :subid("cuid_67_1346277585.603") :anon :lex :outer("cuid_1_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 420
    .param pmc _lex_param_0 
    .const 'Sub' $P5045 = 'cuid_27_1346277585.603' 
    capture_lex $P5045 
    .const 'Sub' $P5045 = 'cuid_28_1346277585.603' 
    capture_lex $P5045 
    .const 'Sub' $P5045 = 'cuid_29_1346277585.603' 
    capture_lex $P5045 
    .const 'Sub' $P5045 = 'cuid_30_1346277585.603' 
    capture_lex $P5045 
    .const 'Sub' $P5045 = 'cuid_31_1346277585.603' 
    capture_lex $P5045 
    .const 'Sub' $P5045 = 'cuid_32_1346277585.603' 
    capture_lex $P5045 
    .const 'Sub' $P5045 = 'cuid_33_1346277585.603' 
    capture_lex $P5045 
    .const 'Sub' $P5045 = 'cuid_34_1346277585.603' 
    capture_lex $P5045 
    .const 'Sub' $P5045 = 'cuid_35_1346277585.603' 
    capture_lex $P5045 
    .const 'Sub' $P5045 = 'cuid_36_1346277585.603' 
    capture_lex $P5045 
    .const 'Sub' $P5045 = 'cuid_37_1346277585.603' 
    capture_lex $P5045 
    .const 'Sub' $P5045 = 'cuid_38_1346277585.603' 
    capture_lex $P5045 
    .const 'Sub' $P5045 = 'cuid_39_1346277585.603' 
    capture_lex $P5045 
    .const 'Sub' $P5045 = 'cuid_40_1346277585.603' 
    capture_lex $P5045 
    .const 'Sub' $P5045 = 'cuid_41_1346277585.603' 
    capture_lex $P5045 
    .const 'Sub' $P5045 = 'cuid_42_1346277585.603' 
    capture_lex $P5045 
    .const 'Sub' $P5045 = 'cuid_43_1346277585.603' 
    capture_lex $P5045 
    .const 'Sub' $P5045 = 'cuid_44_1346277585.603' 
    capture_lex $P5045 
    .const 'Sub' $P5045 = 'cuid_45_1346277585.603' 
    capture_lex $P5045 
    .const 'Sub' $P5045 = 'cuid_46_1346277585.603' 
    capture_lex $P5045 
    .const 'Sub' $P5045 = 'cuid_47_1346277585.603' 
    capture_lex $P5045 
    .const 'Sub' $P5045 = 'cuid_48_1346277585.603' 
    capture_lex $P5045 
    .const 'Sub' $P5045 = 'cuid_49_1346277585.603' 
    capture_lex $P5045 
    .const 'Sub' $P5045 = 'cuid_50_1346277585.603' 
    capture_lex $P5045 
    .const 'Sub' $P5045 = 'cuid_51_1346277585.603' 
    capture_lex $P5045 
    .const 'Sub' $P5045 = 'cuid_52_1346277585.603' 
    capture_lex $P5045 
    .const 'Sub' $P5045 = 'cuid_53_1346277585.603' 
    capture_lex $P5045 
    .const 'Sub' $P5045 = 'cuid_54_1346277585.603' 
    capture_lex $P5045 
    .const 'Sub' $P5045 = 'cuid_55_1346277585.603' 
    capture_lex $P5045 
    .const 'Sub' $P5045 = 'cuid_56_1346277585.603' 
    capture_lex $P5045 
    .const 'Sub' $P5045 = 'cuid_57_1346277585.603' 
    capture_lex $P5045 
    .const 'Sub' $P5045 = 'cuid_58_1346277585.603' 
    capture_lex $P5045 
    .const 'Sub' $P5045 = 'cuid_59_1346277585.603' 
    capture_lex $P5045 
    .const 'Sub' $P5045 = 'cuid_60_1346277585.603' 
    capture_lex $P5045 
    .const 'Sub' $P5045 = 'cuid_61_1346277585.603' 
    capture_lex $P5045 
    .const 'Sub' $P5045 = 'cuid_62_1346277585.603' 
    capture_lex $P5045 
    .const 'Sub' $P5045 = 'cuid_63_1346277585.603' 
    capture_lex $P5045 
    .const 'Sub' $P5045 = 'cuid_64_1346277585.603' 
    capture_lex $P5045 
    .const 'Sub' $P5045 = 'cuid_65_1346277585.603' 
    capture_lex $P5045 
    .const 'Sub' $P5045 = 'cuid_66_1346277585.603' 
    capture_lex $P5045 
    .lex "$NO_CAPS", $P101 
    .lex "$pass_mark", $P102 
    .lex "$?CLASS", _lex_param_0 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P102, $P5002
    .const 'Sub' $P5003 = 'cuid_27_1346277585.603' 
    capture_lex $P5003
    .const 'Sub' $P5004 = 'cuid_28_1346277585.603' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_29_1346277585.603' 
    capture_lex $P5005
    new $P5006, 'Hash'
    set $P101, $P5006
    .const 'Sub' $P5007 = 'cuid_30_1346277585.603' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_31_1346277585.603' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_32_1346277585.603' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_33_1346277585.603' 
    capture_lex $P5010
    .const 'Sub' $P5011 = 'cuid_34_1346277585.603' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_35_1346277585.603' 
    capture_lex $P5012
    box $P5013, 1
    set $P102, $P5013
    .const 'Sub' $P5014 = 'cuid_36_1346277585.603' 
    capture_lex $P5014
    .const 'Sub' $P5015 = 'cuid_37_1346277585.603' 
    capture_lex $P5015
    .const 'Sub' $P5016 = 'cuid_38_1346277585.603' 
    capture_lex $P5016
    .const 'Sub' $P5017 = 'cuid_39_1346277585.603' 
    capture_lex $P5017
    .const 'Sub' $P5018 = 'cuid_40_1346277585.603' 
    capture_lex $P5018
    .const 'Sub' $P5019 = 'cuid_41_1346277585.603' 
    capture_lex $P5019
    .const 'Sub' $P5020 = 'cuid_42_1346277585.603' 
    capture_lex $P5020
    .const 'Sub' $P5021 = 'cuid_43_1346277585.603' 
    capture_lex $P5021
    .const 'Sub' $P5022 = 'cuid_44_1346277585.603' 
    capture_lex $P5022
    .const 'Sub' $P5023 = 'cuid_45_1346277585.603' 
    capture_lex $P5023
    .const 'Sub' $P5024 = 'cuid_46_1346277585.603' 
    capture_lex $P5024
    .const 'Sub' $P5025 = 'cuid_47_1346277585.603' 
    capture_lex $P5025
    .const 'Sub' $P5026 = 'cuid_48_1346277585.603' 
    capture_lex $P5026
    .const 'Sub' $P5027 = 'cuid_49_1346277585.603' 
    capture_lex $P5027
    .const 'Sub' $P5028 = 'cuid_50_1346277585.603' 
    capture_lex $P5028
    .const 'Sub' $P5029 = 'cuid_51_1346277585.603' 
    capture_lex $P5029
    .const 'Sub' $P5030 = 'cuid_52_1346277585.603' 
    capture_lex $P5030
    .const 'Sub' $P5031 = 'cuid_53_1346277585.603' 
    capture_lex $P5031
    .const 'Sub' $P5032 = 'cuid_54_1346277585.603' 
    capture_lex $P5032
    .const 'Sub' $P5033 = 'cuid_55_1346277585.603' 
    capture_lex $P5033
    .const 'Sub' $P5034 = 'cuid_56_1346277585.603' 
    capture_lex $P5034
    .const 'Sub' $P5035 = 'cuid_57_1346277585.603' 
    capture_lex $P5035
    .const 'Sub' $P5036 = 'cuid_58_1346277585.603' 
    capture_lex $P5036
    .const 'Sub' $P5037 = 'cuid_59_1346277585.603' 
    capture_lex $P5037
    .const 'Sub' $P5038 = 'cuid_60_1346277585.603' 
    capture_lex $P5038
    .const 'Sub' $P5039 = 'cuid_61_1346277585.603' 
    capture_lex $P5039
    .const 'Sub' $P5040 = 'cuid_62_1346277585.603' 
    capture_lex $P5040
    .const 'Sub' $P5041 = 'cuid_63_1346277585.603' 
    capture_lex $P5041
    .const 'Sub' $P5042 = 'cuid_64_1346277585.603' 
    capture_lex $P5042
    .const 'Sub' $P5043 = 'cuid_65_1346277585.603' 
    capture_lex $P5043
    .const 'Sub' $P5044 = 'cuid_66_1346277585.603' 
    capture_lex $P5044
    .return ($P5044) 
.end
.HLL "nqp"
.namespace []
.sub "target" :subid("cuid_27_1346277585.603") :anon :lex :outer("cuid_67_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 432
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    find_lex $P5002, "$?CLASS"
    repr_get_attr_str $S5001, $P5001, $P5002, "$!target"
    .return ($S5001) 
.end
.HLL "nqp"
.namespace []
.sub "from" :subid("cuid_28_1346277585.603") :anon :lex :outer("cuid_67_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 433
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    find_lex $P5002, "$?CLASS"
    repr_get_attr_int $I5001, $P5001, $P5002, "$!from"
    .return ($I5001) 
.end
.HLL "nqp"
.namespace []
.sub "pos" :subid("cuid_29_1346277585.603") :anon :lex :outer("cuid_67_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 434
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    find_lex $P5002, "$?CLASS"
    repr_get_attr_int $I5001, $P5001, $P5002, "$!pos"
    .return ($I5001) 
.end
.HLL "nqp"
.namespace []
.sub "CAPHASH" :subid("cuid_30_1346277585.603") :anon :lex :outer("cuid_67_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 437
    .param pmc _lex_param_0 
    .const 'Sub' $P5074 = 'cuid_87_1346277585.603' 
    capture_lex $P5074 
    .lex "$caps", $P101 
    .lex "%caplist", $P102 
    .lex "$iter", $P103 
    .lex "$curcap", $P104 
    .lex "$subcur", $P105 
    .lex "$submatch", $P106 
    .lex "$name", $P107 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    new $P5002, 'Hash'
    set $P102, $P5002
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P103, $P5003
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P104, $P5004
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P105, $P5005
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P106, $P5006
    nqp_get_sc_object $P5007, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
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
    unless $I5001 goto if173_end533 
    nqp_decontainerize $P5014, _lex_param_0
    find_lex $P5015, "$?CLASS"
    repr_get_attr_obj $P5016, $P5014, $P5015, "$!regexsub"
    set $P5017, $P5016
  if173_end533:
    set $P5037, $P5017
    unless $P5017 goto if172_end531 
.annotate 'line', 446
.annotate 'line', 447
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
    unless $I5003 goto if175_end537 
    set $P5024, $P102
  if175_end537:
    set $P5036, $P5024
    unless $P5024 goto if174_end535 
.annotate 'line', 448
    iter $P5026, $P102
    set $P103, $P5026
    new $P5035, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5035, while176_handlers541
    push_eh $P5035
  while176_test538:
    set $P5034, $P103
    unless $P103 goto while176_done542 
  while176_redo540:
.annotate 'line', 450
    shift $P5027, $P103
    set $S5001, $P5027
    box $P5028, $S5001
    set $P104, $P5028
    set $S5002, $P104
    set $P5029, $P102[$S5002]
    unless_null $P5029, fallback545
    nqp_get_sc_object $P5030, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5029, $P5030
  fallback545:
    set $N5001, $P5029
    set $N5002, 2
    isge $I5005, $N5001, $N5002
    box $P5033, $I5005
    set $P5032, $P5033
    unless $I5005 goto if177_end544 
    set $S5003, $P104
    new $P5031, 'ResizablePMCArray'
    set $P101[$S5003], $P5031
    set $P5032, $P5031
  if177_end544:
    set $P5034, $P5032
    goto while176_test538 
  while176_handlers541:
    .get_results ($P5035)
    pop_upto_eh $P5035
    getattribute $P5035, $P5035, 'type'
    eq $P5035, .CONTROL_LOOP_NEXT, while176_test538
    eq $P5035, .CONTROL_LOOP_REDO, while176_redo540
  while176_done542:
    pop_eh 
    set $P5036, $P5034
  if174_end535:
    set $P5037, $P5036
  if172_end531:
    nqp_decontainerize $P5038, _lex_param_0
    find_lex $P5039, "$?CLASS"
    repr_get_attr_obj $P5040, $P5038, $P5039, "$!cstack"
    isnull $I5007, $P5040
    box $P5041, $I5007
    isfalse $I5006, $P5041
    box $P5046, $I5006
    set $P5045, $P5046
    unless $I5006 goto if179_end549 
    nqp_decontainerize $P5042, _lex_param_0
    find_lex $P5043, "$?CLASS"
    repr_get_attr_obj $P5044, $P5042, $P5043, "$!cstack"
    set $P5045, $P5044
  if179_end549:
    set $P5073, $P5045
    unless $P5045 goto if178_end547 
.annotate 'line', 456
    nqp_decontainerize $P5048, _lex_param_0
    find_lex $P5049, "$?CLASS"
    repr_get_attr_obj $P5050, $P5048, $P5049, "$!cstack"
    iter $P5047, $P5050
    set $P103, $P5047
    new $P5072, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5072, while180_handlers553
    push_eh $P5072
  while180_test550:
    set $P5071, $P103
    unless $P103 goto while180_done554 
  while180_redo552:
.annotate 'line', 458
    shift $P5051, $P103
    set $P105, $P5051
.annotate 'line', 460
    $P5052 = $P105."MATCH"()
    set $P106, $P5052
    find_lex $P5054, "$?CLASS"
    getattribute $P5053, $P105, $P5054, "$!name"
    set $P107, $P5053
    isnull $I5009, $P107
    box $P5055, $I5009
    isfalse $I5008, $P5055
    set $I5011, $I5008
    unless $I5008 goto if182_end558 
    defined $I5010, $P107
    set $I5011, $I5010
  if182_end558:
    box $P5070, $I5011
    set $P5069, $P5070
    unless $I5011 goto if181_end556 
.annotate 'line', 462
    set $S5004, $P107
    index $I5013, $S5004, "=", 0
    set $N5003, $I5013
    set $N5004, 0
    islt $I5012, $N5003, $N5004
    unless $I5012 goto if183_else559 
.annotate 'line', 463
    set $S5005, $P107
    set $P5056, $P102[$S5005]
    unless_null $P5056, fallback563
    nqp_get_sc_object $P5057, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5056, $P5057
  fallback563:
    set $N5005, $P5056
    set $N5006, 2
    isge $I5014, $N5005, $N5006
    unless $I5014 goto if184_else561 
    set $S5006, $P107
    set $P5058, $P101[$S5006]
    unless_null $P5058, fallback564
    nqp_get_sc_object $P5059, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5058, $P5059
  fallback564:
    push $P5058, $P106
    set $P5060, $P5058
    goto if184_end562
  if184_else561:
    set $S5007, $P107
    set $P101[$S5007], $P106
    set $P5060, $P106
  if184_end562:
    set $P5068, $P5060
    goto if183_end560
  if183_else559:
.annotate 'line', 468
    set $S5008, $P107
    split $P5064, "=", $S5008
    set $P5061, $P5064
    iter $P5063, $P5064
    new $P5066, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5066, for_handlers569
    push_eh $P5066
  for_next570:
    unless $P5063, for_done572
    shift $P5067, $P5063
  for_redo571:
    .const 'Sub' $P5065 = 'cuid_87_1346277585.603' 
    capture_lex $P5065
    $P5061 = $P5065($P5067)
    goto for_next570
  for_handlers569:
    .get_results ($P5066)
    pop_upto_eh $P5066
    getattribute $P5066, $P5066, 'type'
    eq $P5066, .CONTROL_LOOP_NEXT, for_next570
    eq $P5066, .CONTROL_LOOP_REDO, for_redo571
  for_done572:
    pop_eh 
    set $P5068, $P5061
  if183_end560:
    set $P5069, $P5068
  if181_end556:
    set $P5071, $P5069
    goto while180_test550 
  while180_handlers553:
    .get_results ($P5072)
    pop_upto_eh $P5072
    getattribute $P5072, $P5072, 'type'
    eq $P5072, .CONTROL_LOOP_NEXT, while180_test550
    eq $P5072, .CONTROL_LOOP_REDO, while180_redo552
  while180_done554:
    pop_eh 
    set $P5073, $P5071
  if178_end547:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_87_1346277585.603") :anon :lex :outer("cuid_30_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 469
    .param pmc _lex_param_0 
    .lex "$name", _lex_param_0 
    find_lex $P5002, "%caplist"
    set $S5001, _lex_param_0
    set $P5001, $P5002[$S5001]
    unless_null $P5001, fallback567
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5001, $P5003
  fallback567:
    set $N5001, $P5001
    set $N5002, 2
    isge $I5001, $N5001, $N5002
    unless $I5001 goto if185_else565 
    find_lex $P5005, "$caps"
    set $S5002, _lex_param_0
    set $P5004, $P5005[$S5002]
    unless_null $P5004, fallback568
    nqp_get_sc_object $P5006, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5004, $P5006
  fallback568:
    find_lex $P5007, "$submatch"
    push $P5004, $P5007
    set $P5010, $P5004
    goto if185_end566
  if185_else565:
    find_lex $P5008, "$caps"
    set $S5003, _lex_param_0
    find_lex $P5009, "$submatch"
    set $P5008[$S5003], $P5009
    set $P5010, $P5009
  if185_end566:
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "!cursor_init" :subid("cuid_31_1346277585.603") :anon :lex :outer("cuid_67_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 481
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :named("p") :optional 
    .param int haz_param_12 :opt_flag 
    .param pmc _lex_param_3 :named("c") :optional 
    .param int haz_param_13 :opt_flag 
    if haz_param_12, default575
    box $P5011, 0
    set _lex_param_2, $P5011
  default575:
    if haz_param_13, default576
    nqp_get_sc_object $P5012, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set _lex_param_3, $P5012
  default576:
    .lex "$new", $P101 
    .lex "self", _lex_param_0 
    .lex "$target", _lex_param_1 
    .lex "$p", _lex_param_2 
    .lex "$c", _lex_param_3 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
.annotate 'line', 482
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
    unless $I5002 goto if186_else573 
.annotate 'line', 486
    find_lex $P5007, "$?CLASS"
    repr_bind_attr_int $P101, $P5007, "$!from", -1
    find_lex $P5008, "$?CLASS"
    set $I5003, _lex_param_3
    repr_bind_attr_int $P101, $P5008, "$!pos", $I5003
    set $I5006, $I5003
    goto if186_end574
  if186_else573:
.annotate 'line', 490
    find_lex $P5009, "$?CLASS"
    set $I5004, _lex_param_2
    repr_bind_attr_int $P101, $P5009, "$!from", $I5004
    find_lex $P5010, "$?CLASS"
    set $I5005, _lex_param_2
    repr_bind_attr_int $P101, $P5010, "$!pos", $I5005
    set $I5006, $I5005
  if186_end574:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "!cursor_start" :subid("cuid_32_1346277585.603") :anon :lex :outer("cuid_67_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 497
    .param pmc _lex_param_0 
    .lex "$new", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
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
    unless $P5012 goto if187_end578 
.annotate 'line', 504
    find_lex $P5013, "$?CLASS"
    nqp_decontainerize $P5014, _lex_param_0
    find_lex $P5015, "$?CLASS"
    repr_get_attr_int $I5001, $P5014, $P5015, "$!pos"
    repr_bind_attr_int $P101, $P5013, "$!pos", $I5001
    nqp_decontainerize $P5016, _lex_param_0
    find_lex $P5017, "$?CLASS"
    repr_get_attr_obj $P5018, $P5016, $P5017, "$!cstack"
    set $P5024, $P5018
    unless $P5018 goto if188_end580 
    find_lex $P5019, "$?CLASS"
    nqp_decontainerize $P5021, _lex_param_0
    find_lex $P5022, "$?CLASS"
    repr_get_attr_obj $P5023, $P5021, $P5022, "$!cstack"
    clone $P5020, $P5023
    setattribute $P101, $P5019, "$!cstack", $P5020
    set $P5024, $P5020
  if188_end580:
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
  if187_end578:
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
.sub "!cursor_start_subcapture" :subid("cuid_33_1346277585.603") :anon :lex :outer("cuid_67_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 526
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$new", $P101 
    .lex "self", _lex_param_0 
    .lex "$from", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
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
.sub "!cursor_capture" :subid("cuid_34_1346277585.603") :anon :lex :outer("cuid_67_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 535
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
    if $I5001 goto unless189_end582 
    nqp_decontainerize $P5007, _lex_param_0
    find_lex $P5008, "$?CLASS"
    new $P5009, 'ResizablePMCArray'
    repr_bind_attr_obj $P5007, $P5008, "$!cstack", $P5009
    set $P5010, $P5009
  unless189_end582:
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
.sub "!cursor_push_cstack" :subid("cuid_35_1346277585.603") :anon :lex :outer("cuid_67_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 547
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
    if $I5001 goto unless190_end584 
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    new $P5006, 'ResizablePMCArray'
    repr_bind_attr_obj $P5004, $P5005, "$!cstack", $P5006
    set $P5007, $P5006
  unless190_end584:
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
.sub "!cursor_pass" :subid("cuid_36_1346277585.603") :anon :lex :outer("cuid_67_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 554
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :optional 
    .param int haz_param_14 :opt_flag 
    .param pmc _lex_param_3 :named("backtrack") :optional 
    .param int haz_param_15 :opt_flag 
    if haz_param_14, default591
    nqp_get_sc_object $P5019, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set _lex_param_2, $P5019
  default591:
    if haz_param_15, default592
    nqp_get_sc_object $P5020, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set _lex_param_3, $P5020
  default592:
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
    set $I5001, _lex_param_1
    repr_bind_attr_int $P5004, $P5005, "$!pos", $I5001
    set $P5011, _lex_param_3
    unless _lex_param_3 goto if191_end586 
    nqp_decontainerize $P5006, _lex_param_0
    find_lex $P5007, "$?CLASS"
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_obj $P5010, $P5008, $P5009, "$!regexsub"
    repr_bind_attr_obj $P5006, $P5007, "$!restart", $P5010
    set $P5011, $P5010
  if191_end586:
    set $P5015, _lex_param_3
    if _lex_param_3 goto unless192_end588 
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    null $P5014
    repr_bind_attr_obj $P5012, $P5013, "$!bstack", $P5014
    set $P5015, $P5014
  unless192_end588:
    set $P5018, _lex_param_2
    unless _lex_param_2 goto if193_end590 
.annotate 'line', 561
    nqp_decontainerize $P5016, _lex_param_0
    $P5017 = $P5016."!reduce"(_lex_param_2)
    set $P5018, $P5017
  if193_end590:
    .return ($P5018) 
.end
.HLL "nqp"
.namespace []
.sub "!cursor_fail" :subid("cuid_37_1346277585.603") :anon :lex :outer("cuid_67_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 564
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
.sub "!cursor_next" :subid("cuid_38_1346277585.603") :anon :lex :outer("cuid_67_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 570
    .param pmc _lex_param_0 
    .const 'Sub' $P5012 = 'cuid_88_1346277585.603' 
    capture_lex $P5012 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    find_lex $P5002, "$?CLASS"
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!restart"
    unless $P5003 goto if194_else593 
.annotate 'line', 571
.annotate 'line', 572
    nqp_decontainerize $P5007, _lex_param_0
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!restart"
    $P5008 = $P5006($P5007)
    set $P5011, $P5008
    goto if194_end594
  if194_else593:
    .const 'Sub' $P5009 = 'cuid_88_1346277585.603' 
    capture_lex $P5009
    $P5010 = $P5009()
    set $P5011, $P5010
  if194_end594:
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_88_1346277585.603") :anon :lex :outer("cuid_38_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 574
    .lex "$cur", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
.annotate 'line', 575
    find_lex $P5003, "self"
    nqp_decontainerize $P5002, $P5003
    $P5004 = $P5002."!cursor_start"()
    set $P101, $P5004
.annotate 'line', 576
    $P5005 = $P101."!cursor_fail"()
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "!cursor_more" :subid("cuid_39_1346277585.603") :anon :lex :outer("cuid_67_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 581
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy :named 
    .lex "$new", $P101 
    .lex "self", _lex_param_0 
    .lex "%opts", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    root_new $P102, ['parrot';'Continuation']
    set_label $P102, lexotic_595
    .lex "RETURN", $P102
    set $P5002, _lex_param_1["ex"]
    unless_null $P5002, fallback599
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5002, $P5003
  fallback599:
    set $P5008, $P5002
    unless $P5002 goto if195_end598 
.annotate 'line', 582
    nqp_decontainerize $P5005, _lex_param_0
    $P5006 = $P5005."!cursor_next"()
    find_lex $P5004, "RETURN"
    $P5007 = $P5004($P5006)
    set $P5008, $P5007
  if195_end598:
.annotate 'line', 583
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
    unless_null $P5020, fallback604
    nqp_get_sc_object $P5021, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5020, $P5021
  fallback604:
    set $P5026, $P5020
    if $P5020 goto unless197_end603 
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
  unless197_end603:
    unless $P5026 goto if196_else600 
    nqp_decontainerize $P5028, _lex_param_0
    find_lex $P5029, "$?CLASS"
    repr_get_attr_int $I5004, $P5028, $P5029, "$!from"
    set $N5004, $I5004
    set $N5005, 1
    add $N5003, $N5004, $N5005
    box $P5033, $N5003
    set $P5032, $P5033
    goto if196_end601
  if196_else600:
    nqp_decontainerize $P5030, _lex_param_0
    find_lex $P5031, "$?CLASS"
    repr_get_attr_int $I5005, $P5030, $P5031, "$!pos"
    box $P5034, $I5005
    set $P5032, $P5034
  if196_end601:
    set $I5006, $P5032
    repr_bind_attr_int $P101, $P5019, "$!pos", $I5006
.annotate 'line', 589
    nqp_decontainerize $P5035, _lex_param_0
    find_lex $P5036, "$?CLASS"
    repr_get_attr_obj $P5037, $P5035, $P5036, "$!regexsub"
    $P5038 = $P5037($P101)
    goto lexotic_596
  lexotic_595:
    .get_results ($P5038)
  lexotic_596:
    .return ($P5038) 
.end
.HLL "nqp"
.namespace []
.sub "!reduce" :subid("cuid_40_1346277585.603") :anon :lex :outer("cuid_67_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 592
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$actions", $P101 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    find_dynamic_lex $P5002, "$*ACTIONS"
    set $P101, $P5002
    isnull $I5002, $P101
    box $P5003, $I5002
    isfalse $I5001, $P5003
    set $I5004, $I5001
    unless $I5001 goto if199_end608 
    set $S5001, _lex_param_1
    can $I5003, $P101, $S5001
    set $I5004, $I5003
  if199_end608:
    box $P5009, $I5004
    set $P5008, $P5009
    unless $I5004 goto if198_end606 
.annotate 'line', 594
    nqp_decontainerize $P5005, _lex_param_0
    $P5006 = $P5005."MATCH"()
    set $S5002, _lex_param_1
    find_method $P5004, $P101, $S5002
    $P5007 = $P5004($P101, $P5006)
    set $P5008, $P5007
  if198_end606:
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "!reduce_with_match" :subid("cuid_41_1346277585.603") :anon :lex :outer("cuid_67_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 598
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .lex "$actions", $P101 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    .lex "$key", _lex_param_2 
    .lex "$match", _lex_param_3 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    find_dynamic_lex $P5002, "$*ACTIONS"
    set $P101, $P5002
    isnull $I5002, $P101
    box $P5003, $I5002
    isfalse $I5001, $P5003
    set $I5004, $I5001
    unless $I5001 goto if201_end612 
    set $S5001, _lex_param_1
    can $I5003, $P101, $S5001
    set $I5004, $I5003
  if201_end612:
    box $P5007, $I5004
    set $P5006, $P5007
    unless $I5004 goto if200_end610 
.annotate 'line', 600
    set $S5002, _lex_param_1
    find_method $P5004, $P101, $S5002
    $P5005 = $P5004($P101, _lex_param_3, _lex_param_2)
    set $P5006, $P5005
  if200_end610:
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "!protoregex" :subid("cuid_42_1346277585.603") :anon :lex :outer("cuid_67_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 604
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5030 = 'cuid_89_1346277585.603' 
    capture_lex $P5030 
    .lex "$nfa", $P101 
    .lex "@fates", $P102 
    .lex "@rxfate", $P103 
    .lex "$cur", $P104 
    .lex "$rxname", $P105 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    new $P5002, 'ResizablePMCArray'
    set $P102, $P5002
    new $P5003, 'ResizablePMCArray'
    set $P103, $P5003
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P104, $P5004
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P105, $P5005
.annotate 'line', 606
    nqp_decontainerize $P5007, _lex_param_0
    get_how $P5006, $P5007
    nqp_decontainerize $P5008, _lex_param_0
    .const 'Sub' $P5010 = 'cuid_89_1346277585.603' 
    capture_lex $P5010
    newclosure $P5009, $P5010
    $P5011 = $P5006."cache"($P5008, _lex_param_1, $P5009)
    set $P101, $P5011
.annotate 'line', 607
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_str $S5001, $P5012, $P5013, "$!target"
    nqp_decontainerize $P5014, _lex_param_0
    find_lex $P5015, "$?CLASS"
    repr_get_attr_int $I5001, $P5014, $P5015, "$!pos"
    $P5016 = $P101."run"($S5001, $I5001)
    set $P102, $P5016
.annotate 'line', 610
    $P5018 = $P101."states"()
    set $P5017, $P5018[0]
    unless_null $P5017, fallback613
    nqp_get_sc_object $P5019, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5017, $P5019
  fallback613:
    set $P103, $P5017
    new $P5025, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5025, while202_handlers617
    push_eh $P5025
  while202_test614:
    set $P5024, $P102
    unless $P102 goto while202_done618 
  while202_redo616:
.annotate 'line', 613
    pop $I5002, $P102
    set $P5020, $P103[$I5002]
    set $P105, $P5020
.annotate 'line', 616
    nqp_decontainerize $P5021, _lex_param_0
    set $S5002, $P105
    $P5022 = $P5021.$S5002()
    set $P104, $P5022
    find_lex $P5023, "$?CLASS"
    repr_get_attr_int $I5004, $P104, $P5023, "$!pos"
    set $N5001, $I5004
    set $N5002, 0
    isge $I5003, $N5001, $N5002
    set $I5005, $I5003
    unless $I5003 goto if203_end620 
    die 0, .CONTROL_LOOP_LAST
    set $I5005, 0
  if203_end620:
    box $P5026, $I5005
    set $P5024, $P5026
    goto while202_test614 
  while202_handlers617:
    .get_results ($P5025)
    pop_upto_eh $P5025
    getattribute $P5025, $P5025, 'type'
    eq $P5025, .CONTROL_LOOP_NEXT, while202_test614
    eq $P5025, .CONTROL_LOOP_REDO, while202_redo616
  while202_done618:
    pop_eh 
    set $P5027, $P104
    defined $I5006, $P5027
    if $I5006, defor621
.annotate 'line', 619
    nqp_decontainerize $P5028, _lex_param_0
    $P5029 = $P5028."!cursor_start"()
    set $P5027, $P5029
  defor621:
    .return ($P5027) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_89_1346277585.603") :anon :lex :outer("cuid_42_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 606

    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    find_lex $P5003, "$name"
    $P5004 = $P5001."!protoregex_nfa"($P5003)
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "!protoregex_nfa" :subid("cuid_43_1346277585.603") :anon :lex :outer("cuid_67_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 622
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5033 = 'cuid_90_1346277585.603' 
    capture_lex $P5033 
    .const 'Sub' $P5033 = 'cuid_91_1346277585.603' 
    capture_lex $P5033 
    .lex "%protorx", $P101 
    .lex "$nfa", $P102 
    .lex "@fates", $P103 
    .lex "$start", $P104 
    .lex "$fate", $P105 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    new $P5001, 'Hash'
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P102, $P5002
    new $P5003, 'ResizablePMCArray'
    set $P103, $P5003
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P104, $P5004
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P105, $P5005
.annotate 'line', 623
    nqp_decontainerize $P5007, _lex_param_0
    get_how $P5006, $P5007
    nqp_decontainerize $P5008, _lex_param_0
    .const 'Sub' $P5010 = 'cuid_90_1346277585.603' 
    capture_lex $P5010
    newclosure $P5009, $P5010
    $P5011 = $P5006."cache"($P5008, "!protoregex_table", $P5009)
    set $P101, $P5011
.annotate 'line', 624
    get_hll_global $P5015, "GLOBAL"
    nqp_get_package_through_who $P5014, $P5015, "QRegex"
    get_who $P5013, $P5014
    set $P5012, $P5013["NFA"]
    unless_null $P5012, fallback622
    nqp_get_sc_object $P5016, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5012, $P5016
  fallback622:
    $P5017 = $P5012."new"()
    set $P102, $P5017
.annotate 'line', 625
    $P5019 = $P102."states"()
    set $P5018, $P5019[0]
    unless_null $P5018, fallback623
    nqp_get_sc_object $P5020, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5018, $P5020
  fallback623:
    set $P103, $P5018
    box $P5021, 1
    set $P104, $P5021
    box $P5022, 0
    set $P105, $P5022
    set $S5001, _lex_param_1
    exists $I5001, $P101[$S5001]
    box $P5032, $I5001
    set $P5031, $P5032
    unless $I5001 goto if204_end625 
.annotate 'line', 628
    set $S5002, _lex_param_1
    set $P5026, $P101[$S5002]
    unless_null $P5026, fallback626
    nqp_get_sc_object $P5027, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5026, $P5027
  fallback626:
    set $P5023, $P5026
    iter $P5025, $P5026
    new $P5029, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5029, for_handlers627
    push_eh $P5029
  for_next628:
    unless $P5025, for_done630
    shift $P5030, $P5025
  for_redo629:
    .const 'Sub' $P5028 = 'cuid_91_1346277585.603' 
    capture_lex $P5028
    $P5023 = $P5028($P5030)
    goto for_next628
  for_handlers627:
    .get_results ($P5029)
    pop_upto_eh $P5029
    getattribute $P5029, $P5029, 'type'
    eq $P5029, .CONTROL_LOOP_NEXT, for_next628
    eq $P5029, .CONTROL_LOOP_REDO, for_redo629
  for_done630:
    pop_eh 
    set $P5031, $P5023
  if204_end625:
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_90_1346277585.603") :anon :lex :outer("cuid_43_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 623

    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    $P5003 = $P5001."!protoregex_table"()
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_91_1346277585.603") :anon :lex :outer("cuid_43_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 629
    .param pmc _lex_param_0 
    .lex "$rxname", _lex_param_0 
    find_lex $P5001, "$fate"
    set $N5002, $P5001
    set $N5003, 1
    add $N5001, $N5002, $N5003
    box $P5002, $N5001
    store_lex "$fate", $P5002
    find_lex $P5003, "@fates"
    find_lex $P5004, "$fate"
    set $I5001, $P5004
    set $P5003[$I5001], _lex_param_0
.annotate 'line', 632
    find_lex $P5005, "$nfa"
    find_lex $P5006, "$start"
    find_lex $P5007, "$fate"
    find_lex $P5009, "self"
    nqp_decontainerize $P5008, $P5009
    $P5010 = $P5005."mergesubrule"($P5006, 0, $P5007, $P5008, _lex_param_0)
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "!protoregex_table" :subid("cuid_44_1346277585.603") :anon :lex :outer("cuid_67_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 638
    .param pmc _lex_param_0 
    .const 'Sub' $P5012 = 'cuid_93_1346277585.603' 
    capture_lex $P5012 
    .lex "%protorx", $P101 
    .lex "self", _lex_param_0 
    new $P5001, 'Hash'
    set $P101, $P5001
.annotate 'line', 640
    nqp_decontainerize $P5006, _lex_param_0
    get_how $P5005, $P5006
    nqp_decontainerize $P5007, _lex_param_0
    $P5008 = $P5005."methods"($P5007)
    set $P5002, $P5008
    iter $P5004, $P5008
    new $P5010, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5010, for_handlers636
    push_eh $P5010
  for_next637:
    unless $P5004, for_done639
    shift $P5011, $P5004
  for_redo638:
    .const 'Sub' $P5009 = 'cuid_93_1346277585.603' 
    capture_lex $P5009
    $P5002 = $P5009($P5011)
    goto for_next637
  for_handlers636:
    .get_results ($P5010)
    pop_upto_eh $P5010
    getattribute $P5010, $P5010, 'type'
    eq $P5010, .CONTROL_LOOP_NEXT, for_next637
    eq $P5010, .CONTROL_LOOP_REDO, for_redo638
  for_done639:
    pop_eh 
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_93_1346277585.603") :anon :lex :outer("cuid_44_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 640
    .param pmc _lex_param_0 
    .const 'Sub' $P5009 = 'cuid_92_1346277585.603' 
    capture_lex $P5009 
    .lex "$methname", $P101 
    .lex "$sympos", $P102 
    .lex "$meth", _lex_param_0 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P102, $P5002
    set $S5001, _lex_param_0
    box $P5003, $S5001
    set $P101, $P5003
    set $S5002, $P101
    index $I5001, $S5002, ":sym<", 0
    box $P5004, $I5001
    set $P102, $P5004
    set $N5001, $P102
    set $N5002, 0
    isgt $I5002, $N5001, $N5002
    box $P5008, $I5002
    set $P5007, $P5008
    unless $I5002 goto if205_end632 
    .const 'Sub' $P5005 = 'cuid_92_1346277585.603' 
    capture_lex $P5005
    $P5006 = $P5005()
    set $P5007, $P5006
  if205_end632:
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_92_1346277585.603") :anon :lex :outer("cuid_93_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 643
    .lex "$prefix", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    find_lex $P5002, "$methname"
    set $S5002, $P5002
    find_lex $P5003, "$sympos"
    set $I5001, $P5003
    substr $S5001, $S5002, 0, $I5001
    box $P5004, $S5001
    set $P101, $P5004
    find_lex $P5005, "%protorx"
    set $S5003, $P101
    exists $I5002, $P5005[$S5003]
    box $P5009, $I5002
    set $P5008, $P5009
    if $I5002 goto unless206_end634 
    find_lex $P5006, "%protorx"
    set $S5004, $P101
    new $P5007, 'ResizablePMCArray'
    set $P5006[$S5004], $P5007
    set $P5008, $P5007
  unless206_end634:
    find_lex $P5011, "%protorx"
    set $S5005, $P101
    set $P5010, $P5011[$S5005]
    unless_null $P5010, fallback635
    nqp_get_sc_object $P5012, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5010, $P5012
  fallback635:
    find_lex $P5013, "$methname"
    push $P5010, $P5013
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "!alt" :subid("cuid_45_1346277585.603") :anon :lex :outer("cuid_67_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 652
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 :optional 
    .param int haz_param_16 :opt_flag 
    .const 'Sub' $P5018 = 'cuid_94_1346277585.603' 
    capture_lex $P5018 
    if haz_param_16, default640
    new $P5017, 'ResizablePMCArray'
    set _lex_param_3, $P5017
  default640:
    .lex "$nfa", $P101 
    .lex "self", _lex_param_0 
    .lex "$pos", _lex_param_1 
    .lex "$name", _lex_param_2 
    .lex "@labels", _lex_param_3 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
.annotate 'line', 653
    nqp_decontainerize $P5003, _lex_param_0
    get_how $P5002, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    .const 'Sub' $P5006 = 'cuid_94_1346277585.603' 
    capture_lex $P5006
    newclosure $P5005, $P5006
    $P5007 = $P5002."cache"($P5004, _lex_param_2, $P5005)
    set $P101, $P5007
.annotate 'line', 654
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
.sub "" :subid("cuid_94_1346277585.603") :anon :lex :outer("cuid_45_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 653

    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    find_lex $P5003, "$name"
    find_lex $P5004, "@labels"
    $P5005 = $P5001."!alt_nfa"($P5003, $P5004)
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "!alt_nfa" :subid("cuid_46_1346277585.603") :anon :lex :outer("cuid_67_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 657
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .const 'Sub' $P5026 = 'cuid_95_1346277585.603' 
    capture_lex $P5026 
    .lex "$nfa", $P101 
    .lex "@fates", $P102 
    .lex "$start", $P103 
    .lex "$fate", $P104 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    .lex "@labels", _lex_param_2 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    new $P5002, 'ResizablePMCArray'
    set $P102, $P5002
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P103, $P5003
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P104, $P5004
.annotate 'line', 658
    get_hll_global $P5008, "GLOBAL"
    nqp_get_package_through_who $P5007, $P5008, "QRegex"
    get_who $P5006, $P5007
    set $P5005, $P5006["NFA"]
    unless_null $P5005, fallback641
    nqp_get_sc_object $P5009, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5005, $P5009
  fallback641:
    $P5010 = $P5005."new"()
    set $P101, $P5010
.annotate 'line', 659
    $P5012 = $P101."states"()
    set $P5011, $P5012[0]
    unless_null $P5011, fallback642
    nqp_get_sc_object $P5013, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5011, $P5013
  fallback642:
    set $P102, $P5011
    box $P5014, 1
    set $P103, $P5014
    box $P5015, 0
    set $P104, $P5015
.annotate 'line', 662
    nqp_decontainerize $P5019, _lex_param_0
    find_lex $P5020, "$?CLASS"
    repr_get_attr_obj $P5021, $P5019, $P5020, "$!regexsub"
    $P5022 = $P5021."nqpattr"(_lex_param_1)
    set $P5016, $P5022
    iter $P5018, $P5022
    new $P5024, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5024, for_handlers644
    push_eh $P5024
  for_next645:
    unless $P5018, for_done647
    shift $P5025, $P5018
  for_redo646:
    .const 'Sub' $P5023 = 'cuid_95_1346277585.603' 
    capture_lex $P5023
    $P5016 = $P5023($P5025)
    goto for_next645
  for_handlers644:
    .get_results ($P5024)
    pop_upto_eh $P5024
    getattribute $P5024, $P5024, 'type'
    eq $P5024, .CONTROL_LOOP_NEXT, for_next645
    eq $P5024, .CONTROL_LOOP_REDO, for_redo646
  for_done647:
    pop_eh 
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_95_1346277585.603") :anon :lex :outer("cuid_46_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 662
    .param pmc _lex_param_0 
    .lex "$label", $P101 
    .lex "$_", _lex_param_0 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    find_lex $P5003, "@labels"
    find_lex $P5004, "$fate"
    set $I5001, $P5004
    set $P5002, $P5003[$I5001]
    unless_null $P5002, fallback643
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5002, $P5005
  fallback643:
    set $P101, $P5002
    find_lex $P5006, "$fate"
    set $N5002, $P5006
    set $N5003, 1
    add $N5001, $N5002, $N5003
    box $P5007, $N5001
    store_lex "$fate", $P5007
    find_lex $P5008, "@fates"
    find_lex $P5009, "$fate"
    set $I5002, $P5009
    set $P5008[$I5002], $P101
.annotate 'line', 666
    find_lex $P5010, "$nfa"
    find_lex $P5011, "$start"
    find_lex $P5012, "$fate"
    find_lex $P5014, "self"
    nqp_decontainerize $P5013, $P5014
    $P5015 = $P5010."mergesubstates"($P5011, 0, $P5012, _lex_param_0, $P5013)
    .return ($P5015) 
.end
.HLL "nqp"
.namespace []
.sub "!BACKREF" :subid("cuid_47_1346277585.603") :anon :lex :outer("cuid_67_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 671
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5035 = 'cuid_96_1346277585.603' 
    capture_lex $P5035 
    .lex "$cur", $P101 
    .lex "$n", $P102 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    .local pmc tmp_2 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P102, $P5002
.annotate 'line', 672
    nqp_decontainerize $P5003, _lex_param_0
    $P5004 = $P5003."!cursor_start"()
    set $P101, $P5004
    nqp_decontainerize $P5005, _lex_param_0
    find_lex $P5006, "$?CLASS"
    repr_get_attr_obj $P5007, $P5005, $P5006, "$!cstack"
    unless $P5007 goto if207_else648 
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_obj $P5010, $P5008, $P5009, "$!cstack"
    elements $I5001, $P5010
    set $N5002, $I5001
    set $N5003, 1
    sub $N5001, $N5002, $N5003
    box $P5012, $N5001
    set $P5011, $P5012
    goto if207_end649
  if207_else648:
    box $P5013, -1
    set $P5011, $P5013
  if207_end649:
    set $P102, $P5011
    new $P5029, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5029, while208_handlers653
    push_eh $P5029
  while208_test650:
    set $N5004, $P102
    set $N5005, 0
    isge $I5002, $N5004, $N5005
    set $I5008, $I5002
    unless $I5002 goto if209_end656 
    nqp_decontainerize $P5016, _lex_param_0
    find_lex $P5017, "$?CLASS"
    repr_get_attr_obj $P5018, $P5016, $P5017, "$!cstack"
    set $I5004, $P102
    set $P5015, $P5018[$I5004]
    unless_null $P5015, fallback659
    nqp_get_sc_object $P5019, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5015, $P5019
  fallback659:
    find_lex $P5020, "$?CLASS"
    getattribute $P5014, $P5015, $P5020, "$!name"
    isnull $I5003, $P5014
    set $I5007, $I5003
    if $I5003 goto unless210_end658 
    nqp_decontainerize $P5023, _lex_param_0
    find_lex $P5024, "$?CLASS"
    repr_get_attr_obj $P5025, $P5023, $P5024, "$!cstack"
    set $I5006, $P102
    set $P5022, $P5025[$I5006]
    unless_null $P5022, fallback660
    nqp_get_sc_object $P5026, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5022, $P5026
  fallback660:
    find_lex $P5027, "$?CLASS"
    getattribute $P5021, $P5022, $P5027, "$!name"
    set $S5001, $P5021
    set $S5002, _lex_param_1
    isne $I5005, $S5001, $S5002
    set $I5007, $I5005
  unless210_end658:
    set $I5008, $I5007
  if209_end656:
    box $P5030, $I5008
    set $P5028, $P5030
    unless $I5008 goto while208_done654 
  while208_redo652:
    set tmp_2, $P102
    set $N5007, tmp_2
    set $N5008, 1
    sub $N5006, $N5007, $N5008
    box $P5028, $N5006
    set $P102, $P5028
    set $P5028, tmp_2
    goto while208_test650 
  while208_handlers653:
    .get_results ($P5029)
    pop_upto_eh $P5029
    getattribute $P5029, $P5029, 'type'
    eq $P5029, .CONTROL_LOOP_NEXT, while208_test650
    eq $P5029, .CONTROL_LOOP_REDO, while208_redo652
  while208_done654:
    pop_eh 
    set $N5006, $P102
    set $N5007, 0
    isge $I5009, $N5006, $N5007
    box $P5034, $I5009
    set $P5033, $P5034
    unless $I5009 goto if211_end662 
    .const 'Sub' $P5031 = 'cuid_96_1346277585.603' 
    capture_lex $P5031
    $P5032 = $P5031()
    set $P5033, $P5032
  if211_end662:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_96_1346277585.603") :anon :lex :outer("cuid_47_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 676
    .lex "$subcur", $P101 
    .lex "$litlen", $P102 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P102, $P5002
    find_lex $P5005, "self"
    nqp_decontainerize $P5004, $P5005
    find_lex $P5006, "$?CLASS"
    repr_get_attr_obj $P5007, $P5004, $P5006, "$!cstack"
    find_lex $P5008, "$n"
    set $I5001, $P5008
    set $P5003, $P5007[$I5001]
    unless_null $P5003, fallback663
    nqp_get_sc_object $P5009, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5003, $P5009
  fallback663:
    set $P101, $P5003
.annotate 'line', 678
    $P5010 = $P101."pos"()
    set $N5002, $P5010
    $P5011 = $P101."from"()
    set $N5003, $P5011
    sub $N5001, $N5002, $N5003
    box $P5012, $N5001
    set $P102, $P5012
    find_lex $P5014, "self"
    nqp_decontainerize $P5013, $P5014
    find_lex $P5015, "$?CLASS"
    repr_get_attr_str $S5002, $P5013, $P5015, "$!target"
    find_lex $P5017, "self"
    nqp_decontainerize $P5016, $P5017
    find_lex $P5018, "$?CLASS"
    repr_get_attr_int $I5003, $P5016, $P5018, "$!pos"
    set $I5004, $P102
    substr $S5001, $S5002, $I5003, $I5004
    find_lex $P5020, "self"
    nqp_decontainerize $P5019, $P5020
    find_lex $P5021, "$?CLASS"
    repr_get_attr_str $S5004, $P5019, $P5021, "$!target"
.annotate 'line', 681
    $P5022 = $P101."from"()
    set $I5005, $P5022
    set $I5006, $P102
    substr $S5003, $S5004, $I5005, $I5006
    iseq $I5002, $S5001, $S5003
    box $P5029, $I5002
    set $P5028, $P5029
    unless $I5002 goto if212_end665 
.annotate 'line', 679
    find_lex $P5023, "$cur"
    find_lex $P5025, "self"
    nqp_decontainerize $P5024, $P5025
    find_lex $P5026, "$?CLASS"
    repr_get_attr_int $I5007, $P5024, $P5026, "$!pos"
    set $N5005, $I5007
    set $N5006, $P102
    add $N5004, $N5005, $N5006
    $P5027 = $P5023."!cursor_pass"($N5004, "")
    set $P5028, $P5027
  if212_end665:
    .return ($P5028) 
.end
.HLL "nqp"
.namespace []
.sub "!LITERAL" :subid("cuid_48_1346277585.603") :anon :lex :outer("cuid_67_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 686
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :optional 
    .param int haz_param_17 :opt_flag 
    if haz_param_17, default672
    box $P5019, 0
    set _lex_param_2, $P5019
  default672:
    .lex "$cur", $P101 
    .lex "$litlen", $P102 
    .lex "self", _lex_param_0 
    .lex "$str", _lex_param_1 
    .lex "$i", _lex_param_2 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P102, $P5002
.annotate 'line', 687
    nqp_decontainerize $P5003, _lex_param_0
    $P5004 = $P5003."!cursor_start"()
    set $P101, $P5004
    set $S5001, _lex_param_1
    length $I5001, $S5001
    box $P5005, $I5001
    set $P102, $P5005
    set $N5001, $P102
    set $N5002, 1
    islt $I5002, $N5001, $N5002
    set $I5010, $I5002
    if $I5002 goto unless214_end669 
    unless _lex_param_2 goto if215_else670 
    nqp_decontainerize $P5006, _lex_param_0
    find_lex $P5007, "$?CLASS"
    repr_get_attr_str $S5004, $P5006, $P5007, "$!target"
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_int $I5004, $P5008, $P5009, "$!pos"
    set $I5005, $P102
    substr $S5003, $S5004, $I5004, $I5005
    downcase $S5002, $S5003
    set $S5006, _lex_param_1
    downcase $S5005, $S5006
    iseq $I5003, $S5002, $S5005
    set $I5009, $I5003
    goto if215_end671
  if215_else670:
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_str $S5008, $P5010, $P5011, "$!target"
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5007, $P5012, $P5013, "$!pos"
    set $I5008, $P102
    substr $S5007, $S5008, $I5007, $I5008
    set $S5009, _lex_param_1
    iseq $I5006, $S5007, $S5009
    set $I5009, $I5006
  if215_end671:
    set $I5010, $I5009
  unless214_end669:
    box $P5018, $I5010
    set $P5017, $P5018
    unless $I5010 goto if213_end667 
.annotate 'line', 689
    nqp_decontainerize $P5014, _lex_param_0
    find_lex $P5015, "$?CLASS"
    repr_get_attr_int $I5011, $P5014, $P5015, "$!pos"
    set $N5004, $I5011
    set $N5005, $P102
    add $N5003, $N5004, $N5005
    $P5016 = $P101."!cursor_pass"($N5003)
    set $P5017, $P5016
  if213_end667:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "at" :subid("cuid_49_1346277585.603") :anon :lex :outer("cuid_67_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 696
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    .lex "$pos", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
.annotate 'line', 697
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
    unless $I5001 goto if216_end674 
.annotate 'line', 698
    nqp_decontainerize $P5006, _lex_param_0
    find_lex $P5007, "$?CLASS"
    repr_get_attr_int $I5003, $P5006, $P5007, "$!pos"
    $P5008 = $P101."!cursor_pass"($I5003)
    set $P5009, $P5008
  if216_end674:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "before" :subid("cuid_50_1346277585.603") :anon :lex :outer("cuid_67_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 702
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    .lex "$regex", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
.annotate 'line', 703
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start"()
    set $P101, $P5003
    find_lex $P5004, "$?CLASS"
    nqp_decontainerize $P5005, _lex_param_0
    find_lex $P5006, "$?CLASS"
    repr_get_attr_int $I5001, $P5005, $P5006, "$!pos"
    repr_bind_attr_int $P101, $P5004, "$!pos", $I5001
.annotate 'line', 705
    $P5007 = _lex_param_1($P101)
    find_lex $P5008, "$?CLASS"
    repr_get_attr_int $I5003, $P5007, $P5008, "$!pos"
    set $N5001, $I5003
    set $N5002, 0
    isge $I5002, $N5001, $N5002
    unless $I5002 goto if217_else675 
.annotate 'line', 706
    nqp_decontainerize $P5009, _lex_param_0
    find_lex $P5010, "$?CLASS"
    repr_get_attr_int $I5004, $P5009, $P5010, "$!pos"
    $P5011 = $P101."!cursor_pass"($I5004, "before")
    set $P5013, $P5011
    goto if217_end676
  if217_else675:
    find_lex $P5012, "$?CLASS"
    repr_bind_attr_int $P101, $P5012, "$!pos", -3
    box $P5014, -3
    set $P5013, $P5014
  if217_end676:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "after" :subid("cuid_51_1346277585.603") :anon :lex :outer("cuid_67_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 713
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    .lex "$regex", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
.annotate 'line', 714
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start"()
    set $P101, $P5003
    find_lex $P5004, "$?CLASS"
.annotate 'line', 715
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
.annotate 'line', 718
    $P5019 = _lex_param_1($P101)
    find_lex $P5020, "$?CLASS"
    repr_get_attr_int $I5008, $P5019, $P5020, "$!pos"
    set $N5007, $I5008
    set $N5008, 0
    isge $I5007, $N5007, $N5008
    unless $I5007 goto if218_else677 
.annotate 'line', 719
    nqp_decontainerize $P5021, _lex_param_0
    find_lex $P5022, "$?CLASS"
    repr_get_attr_int $I5009, $P5021, $P5022, "$!pos"
    $P5023 = $P101."!cursor_pass"($I5009, "after")
    set $P5025, $P5023
    goto if218_end678
  if218_else677:
    find_lex $P5024, "$?CLASS"
    repr_bind_attr_int $P101, $P5024, "$!pos", -3
    box $P5026, -3
    set $P5025, $P5026
  if218_end678:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "ws" :subid("cuid_52_1346277585.603") :anon :lex :outer("cuid_67_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 724
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
.annotate 'line', 726
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
    unless $I5001 goto if219_else679 
.annotate 'line', 728
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_int $I5004, $P5008, $P5009, "$!pos"
    $P5010 = $P101."!cursor_pass"($I5004, "ws")
    set $P5032, $P5010
    goto if219_end680
  if219_else679:
    nqp_decontainerize $P5011, _lex_param_0
    find_lex $P5012, "$?CLASS"
    repr_get_attr_int $I5006, $P5011, $P5012, "$!pos"
    set $N5003, $I5006
    set $N5004, 1
    islt $I5005, $N5003, $N5004
    set $I5010, $I5005
    if $I5005 goto unless222_end686 
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
  unless222_end686:
    set $I5015, $I5010
    if $I5010 goto unless221_end684 
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
  unless221_end684:
    box $P5031, $I5015
    set $P5030, $P5031
    unless $I5015 goto if220_end682 
.annotate 'line', 732
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
  if220_end682:
    set $P5032, $P5030
  if219_end680:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "ww" :subid("cuid_53_1346277585.603") :anon :lex :outer("cuid_67_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 739
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
.annotate 'line', 740
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
    unless $I5001 goto if226_end694 
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
  if226_end694:
    set $I5009, $I5006
    unless $I5006 goto if225_end692 
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_str $S5002, $P5010, $P5011, "$!target"
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5008, $P5012, $P5013, "$!pos"
    is_cclass $I5007, .CCLASS_WORD, $S5002, $I5008
    set $I5009, $I5007
  if225_end692:
    set $I5013, $I5009
    unless $I5009 goto if224_end690 
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
  if224_end690:
    box $P5022, $I5013
    set $P5021, $P5022
    unless $I5013 goto if223_end688 
.annotate 'line', 741
    nqp_decontainerize $P5018, _lex_param_0
    find_lex $P5019, "$?CLASS"
    repr_get_attr_int $I5014, $P5018, $P5019, "$!pos"
    $P5020 = $P101."!cursor_pass"($I5014, "ww")
    set $P5021, $P5020
  if223_end688:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "wb" :subid("cuid_54_1346277585.603") :anon :lex :outer("cuid_67_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 749
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
.annotate 'line', 750
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
    unless $I5001 goto if230_end702 
    nqp_decontainerize $P5006, _lex_param_0
    find_lex $P5007, "$?CLASS"
    repr_get_attr_str $S5001, $P5006, $P5007, "$!target"
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_int $I5004, $P5008, $P5009, "$!pos"
    is_cclass $I5003, .CCLASS_WORD, $S5001, $I5004
    set $I5005, $I5003
  if230_end702:
    set $I5013, $I5005
    if $I5005 goto unless229_end700 
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
    unless $I5006 goto if231_end704 
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
  if231_end704:
    set $I5013, $I5012
  unless229_end700:
    set $I5020, $I5013
    if $I5013 goto unless228_end698 
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
  unless228_end698:
    box $P5030, $I5020
    set $P5029, $P5030
    unless $I5020 goto if227_end696 
.annotate 'line', 751
    nqp_decontainerize $P5026, _lex_param_0
    find_lex $P5027, "$?CLASS"
    repr_get_attr_int $I5021, $P5026, $P5027, "$!pos"
    $P5028 = $P101."!cursor_pass"($I5021, "wb")
    set $P5029, $P5028
  if227_end696:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "ident" :subid("cuid_55_1346277585.603") :anon :lex :outer("cuid_67_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 760
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
.annotate 'line', 761
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
    unless $I5001 goto if233_end708 
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
    if $I5004 goto unless234_end710 
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_str $S5003, $P5012, $P5013, "$!target"
    nqp_decontainerize $P5014, _lex_param_0
    find_lex $P5015, "$?CLASS"
    repr_get_attr_int $I5008, $P5014, $P5015, "$!pos"
    is_cclass $I5007, .CCLASS_ALPHABETIC, $S5003, $I5008
    set $I5009, $I5007
  unless234_end710:
    set $I5010, $I5009
  if233_end708:
    box $P5024, $I5010
    set $P5023, $P5024
    unless $I5010 goto if232_end706 
.annotate 'line', 762
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
  if232_end706:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "alpha" :subid("cuid_56_1346277585.603") :anon :lex :outer("cuid_67_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 772
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
.annotate 'line', 773
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
    unless $I5001 goto if236_end714 
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_str $S5002, $P5008, $P5009, "$!target"
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, .CCLASS_ALPHABETIC, $S5002, $I5005
    set $I5009, $I5004
    if $I5004 goto unless237_end716 
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
  unless237_end716:
    set $I5010, $I5009
  if236_end714:
    box $P5020, $I5010
    set $P5019, $P5020
    unless $I5010 goto if235_end712 
.annotate 'line', 774
    nqp_decontainerize $P5016, _lex_param_0
    find_lex $P5017, "$?CLASS"
    repr_get_attr_int $I5011, $P5016, $P5017, "$!pos"
    set $N5006, $I5011
    set $N5007, 1
    add $N5005, $N5006, $N5007
    $P5018 = $P101."!cursor_pass"($N5005, "alpha")
    set $P5019, $P5018
  if235_end712:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "alnum" :subid("cuid_57_1346277585.603") :anon :lex :outer("cuid_67_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 781
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
.annotate 'line', 782
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
    unless $I5001 goto if239_end720 
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_str $S5002, $P5008, $P5009, "$!target"
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, .CCLASS_ALPHANUMERIC, $S5002, $I5005
    set $I5009, $I5004
    if $I5004 goto unless240_end722 
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
  unless240_end722:
    set $I5010, $I5009
  if239_end720:
    box $P5020, $I5010
    set $P5019, $P5020
    unless $I5010 goto if238_end718 
.annotate 'line', 783
    nqp_decontainerize $P5016, _lex_param_0
    find_lex $P5017, "$?CLASS"
    repr_get_attr_int $I5011, $P5016, $P5017, "$!pos"
    set $N5006, $I5011
    set $N5007, 1
    add $N5005, $N5006, $N5007
    $P5018 = $P101."!cursor_pass"($N5005, "alnum")
    set $P5019, $P5018
  if238_end718:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "upper" :subid("cuid_58_1346277585.603") :anon :lex :outer("cuid_67_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 790
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
.annotate 'line', 791
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
    unless $I5001 goto if242_end726 
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_str $S5002, $P5008, $P5009, "$!target"
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, .CCLASS_UPPERCASE, $S5002, $I5005
    set $I5006, $I5004
  if242_end726:
    box $P5016, $I5006
    set $P5015, $P5016
    unless $I5006 goto if241_end724 
.annotate 'line', 792
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5007, $P5012, $P5013, "$!pos"
    set $N5004, $I5007
    set $N5005, 1
    add $N5003, $N5004, $N5005
    $P5014 = $P101."!cursor_pass"($N5003, "upper")
    set $P5015, $P5014
  if241_end724:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "lower" :subid("cuid_59_1346277585.603") :anon :lex :outer("cuid_67_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 798
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
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
    set $I5006, $I5001
    unless $I5001 goto if244_end730 
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_str $S5002, $P5008, $P5009, "$!target"
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, .CCLASS_LOWERCASE, $S5002, $I5005
    set $I5006, $I5004
  if244_end730:
    box $P5016, $I5006
    set $P5015, $P5016
    unless $I5006 goto if243_end728 
.annotate 'line', 800
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5007, $P5012, $P5013, "$!pos"
    set $N5004, $I5007
    set $N5005, 1
    add $N5003, $N5004, $N5005
    $P5014 = $P101."!cursor_pass"($N5003, "lower")
    set $P5015, $P5014
  if243_end728:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "digit" :subid("cuid_60_1346277585.603") :anon :lex :outer("cuid_67_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 806
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
.annotate 'line', 807
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
    unless $I5001 goto if246_end734 
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_str $S5002, $P5008, $P5009, "$!target"
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, .CCLASS_NUMERIC, $S5002, $I5005
    set $I5006, $I5004
  if246_end734:
    box $P5016, $I5006
    set $P5015, $P5016
    unless $I5006 goto if245_end732 
.annotate 'line', 808
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5007, $P5012, $P5013, "$!pos"
    set $N5004, $I5007
    set $N5005, 1
    add $N5003, $N5004, $N5005
    $P5014 = $P101."!cursor_pass"($N5003, "digit")
    set $P5015, $P5014
  if245_end732:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "xdigit" :subid("cuid_61_1346277585.603") :anon :lex :outer("cuid_67_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 814
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
.annotate 'line', 815
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
    unless $I5001 goto if248_end738 
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_str $S5002, $P5008, $P5009, "$!target"
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, .CCLASS_HEXADECIMAL, $S5002, $I5005
    set $I5006, $I5004
  if248_end738:
    box $P5016, $I5006
    set $P5015, $P5016
    unless $I5006 goto if247_end736 
.annotate 'line', 816
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5007, $P5012, $P5013, "$!pos"
    set $N5004, $I5007
    set $N5005, 1
    add $N5003, $N5004, $N5005
    $P5014 = $P101."!cursor_pass"($N5003, "xdigit")
    set $P5015, $P5014
  if247_end736:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "space" :subid("cuid_62_1346277585.603") :anon :lex :outer("cuid_67_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 822
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
.annotate 'line', 823
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
    unless $I5001 goto if250_end742 
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_str $S5002, $P5008, $P5009, "$!target"
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, .CCLASS_WHITESPACE, $S5002, $I5005
    set $I5006, $I5004
  if250_end742:
    box $P5016, $I5006
    set $P5015, $P5016
    unless $I5006 goto if249_end740 
.annotate 'line', 824
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5007, $P5012, $P5013, "$!pos"
    set $N5004, $I5007
    set $N5005, 1
    add $N5003, $N5004, $N5005
    $P5014 = $P101."!cursor_pass"($N5003, "space")
    set $P5015, $P5014
  if249_end740:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "blank" :subid("cuid_63_1346277585.603") :anon :lex :outer("cuid_67_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 830
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
.annotate 'line', 831
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
    unless $I5001 goto if252_end746 
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_str $S5002, $P5008, $P5009, "$!target"
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, .CCLASS_BLANK, $S5002, $I5005
    set $I5006, $I5004
  if252_end746:
    box $P5016, $I5006
    set $P5015, $P5016
    unless $I5006 goto if251_end744 
.annotate 'line', 832
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5007, $P5012, $P5013, "$!pos"
    set $N5004, $I5007
    set $N5005, 1
    add $N5003, $N5004, $N5005
    $P5014 = $P101."!cursor_pass"($N5003, "blank")
    set $P5015, $P5014
  if251_end744:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "cntrl" :subid("cuid_64_1346277585.603") :anon :lex :outer("cuid_67_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 838
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
.annotate 'line', 839
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
    unless $I5001 goto if254_end750 
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_str $S5002, $P5008, $P5009, "$!target"
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, .CCLASS_CONTROL, $S5002, $I5005
    set $I5006, $I5004
  if254_end750:
    box $P5016, $I5006
    set $P5015, $P5016
    unless $I5006 goto if253_end748 
.annotate 'line', 840
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5007, $P5012, $P5013, "$!pos"
    set $N5004, $I5007
    set $N5005, 1
    add $N5003, $N5004, $N5005
    $P5014 = $P101."!cursor_pass"($N5003, "cntrl")
    set $P5015, $P5014
  if253_end748:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "punct" :subid("cuid_65_1346277585.603") :anon :lex :outer("cuid_67_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 846
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
.annotate 'line', 847
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
    unless $I5001 goto if256_end754 
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_str $S5002, $P5008, $P5009, "$!target"
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, .CCLASS_PUNCTUATION, $S5002, $I5005
    set $I5006, $I5004
  if256_end754:
    box $P5016, $I5006
    set $P5015, $P5016
    unless $I5006 goto if255_end752 
.annotate 'line', 848
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5007, $P5012, $P5013, "$!pos"
    set $N5004, $I5007
    set $N5005, 1
    add $N5003, $N5004, $N5005
    $P5014 = $P101."!cursor_pass"($N5003, "punct")
    set $P5015, $P5014
  if255_end752:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "FAILGOAL" :subid("cuid_66_1346277585.603") :anon :lex :outer("cuid_67_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 854
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$sub", $P101 
    .lex "self", _lex_param_0 
    .lex "$goal", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
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
.sub "" :subid("cuid_80_1346277585.603") :anon :lex :outer("cuid_1_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 864
    .const 'Sub' $P5013 = 'cuid_68_1346277585.603' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_69_1346277585.603' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_70_1346277585.603' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_71_1346277585.603' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_72_1346277585.603' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_73_1346277585.603' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_74_1346277585.603' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_75_1346277585.603' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_76_1346277585.603' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_77_1346277585.603' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_78_1346277585.603' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_79_1346277585.603' 
    capture_lex $P5013 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_68_1346277585.603' 
    capture_lex $P5001
    .const 'Sub' $P5002 = 'cuid_69_1346277585.603' 
    capture_lex $P5002
    .const 'Sub' $P5003 = 'cuid_70_1346277585.603' 
    capture_lex $P5003
    .const 'Sub' $P5004 = 'cuid_71_1346277585.603' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_72_1346277585.603' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_73_1346277585.603' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_74_1346277585.603' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_75_1346277585.603' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_76_1346277585.603' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_77_1346277585.603' 
    capture_lex $P5010
    .const 'Sub' $P5011 = 'cuid_78_1346277585.603' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_79_1346277585.603' 
    capture_lex $P5012
    .return ($P5012) 
.end
.HLL "nqp"
.namespace []
.sub "from" :subid("cuid_68_1346277585.603") :anon :lex :outer("cuid_80_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 871
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 68
    repr_get_attr_int $I5001, $P5001, $P5002, "$!from"
    .return ($I5001) 
.end
.HLL "nqp"
.namespace []
.sub "orig" :subid("cuid_69_1346277585.603") :anon :lex :outer("cuid_80_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 872
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 68
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!orig"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "to" :subid("cuid_70_1346277585.603") :anon :lex :outer("cuid_80_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 873
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 68
    repr_get_attr_int $I5001, $P5001, $P5002, "$!to"
    .return ($I5001) 
.end
.HLL "nqp"
.namespace []
.sub "CURSOR" :subid("cuid_71_1346277585.603") :anon :lex :outer("cuid_80_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 874
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 68
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!cursor"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "Str" :subid("cuid_72_1346277585.603") :anon :lex :outer("cuid_80_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 875
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 68
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!orig"
    set $S5002, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 68
    repr_get_attr_int $I5001, $P5004, $P5005, "$!from"
    nqp_decontainerize $P5006, _lex_param_0
    nqp_get_sc_object $P5007, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 68
    repr_get_attr_int $I5002, $P5006, $P5007, "$!to"
    set $N5002, $I5002
    nqp_decontainerize $P5008, _lex_param_0
    nqp_get_sc_object $P5009, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 68
    repr_get_attr_int $I5003, $P5008, $P5009, "$!from"
    set $N5003, $I5003
    sub $N5001, $N5002, $N5003
    set $I5004, $N5001
    substr $S5001, $S5002, $I5001, $I5004
    .return ($S5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_73_1346277585.603") :anon :lex :outer("cuid_80_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 876
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    $P5002 = $P5001."Str"()
    set $N5001, $P5002
    .return ($N5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_74_1346277585.603") :anon :lex :outer("cuid_80_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 877
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    $P5002 = $P5001."Str"()
    set $N5001, $P5002
    .return ($N5001) 
.end
.HLL "nqp"
.namespace []
.sub "Bool" :subid("cuid_75_1346277585.603") :anon :lex :outer("cuid_80_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 878
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 68
    repr_get_attr_int $I5002, $P5001, $P5002, "$!to"
    set $N5001, $I5002
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 68
    repr_get_attr_int $I5003, $P5003, $P5004, "$!from"
    set $N5002, $I5003
    isge $I5001, $N5001, $N5002
    .return ($I5001) 
.end
.HLL "nqp"
.namespace []
.sub "chars" :subid("cuid_76_1346277585.603") :anon :lex :outer("cuid_80_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 879
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 68
    repr_get_attr_int $I5002, $P5001, $P5002, "$!to"
    set $N5001, $I5002
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 68
    repr_get_attr_int $I5003, $P5003, $P5004, "$!from"
    set $N5002, $I5003
    isge $I5001, $N5001, $N5002
    unless $I5001 goto if257_else755 
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 68
    repr_get_attr_int $I5004, $P5005, $P5006, "$!to"
    set $N5004, $I5004
    nqp_decontainerize $P5007, _lex_param_0
    nqp_get_sc_object $P5008, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 68
    repr_get_attr_int $I5005, $P5007, $P5008, "$!from"
    set $N5005, $I5005
    sub $N5003, $N5004, $N5005
    box $P5010, $N5003
    set $P5009, $P5010
    goto if257_end756
  if257_else755:
    box $P5011, 0
    set $P5009, $P5011
  if257_end756:
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "!make" :subid("cuid_77_1346277585.603") :anon :lex :outer("cuid_80_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 881
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$ast", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 68
    repr_bind_attr_obj $P5001, $P5002, "$!ast", _lex_param_1
    .return (_lex_param_1) 
.end
.HLL "nqp"
.namespace []
.sub "ast" :subid("cuid_78_1346277585.603") :anon :lex :outer("cuid_80_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 882
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 68
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!ast"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "!dump_str" :subid("cuid_79_1346277585.603") :anon :lex :outer("cuid_80_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 884
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5020 = 'cuid_127_1346277585.603' 
    capture_lex $P5020 
    .const 'Sub' $P5020 = 'cuid_128_1346277585.603' 
    capture_lex $P5020 
    .lex "&dump_array", $P101 
    .lex "$str", $P102 
    .lex "self", _lex_param_0 
    .lex "$key", _lex_param_1 
    .const 'Sub' $P5001 = 'cuid_127_1346277585.603' 
    capture_lex $P5001
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P102, $P5002
    set $S5006, _lex_param_1
    concat $S5005, $S5006, ": "
.annotate 'line', 896
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
.annotate 'line', 897
    nqp_decontainerize $P5008, _lex_param_0
    $P5009 = $P5008."list"()
    $P5010 = "&dump_array"(_lex_param_1, $P5009)
    set $S5012, $P5010
    concat $S5010, $S5011, $S5012
    box $P5011, $S5010
    set $P102, $P5011
.annotate 'line', 898
    nqp_decontainerize $P5015, _lex_param_0
    $P5016 = $P5015."hash"()
    set $P5012, $P5016
    iter $P5014, $P5016
    new $P5018, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5018, for_handlers765
    push_eh $P5018
  for_next766:
    unless $P5014, for_done768
    shift $P5019, $P5014
  for_redo767:
    .const 'Sub' $P5017 = 'cuid_128_1346277585.603' 
    capture_lex $P5017
    $P5012 = $P5017($P5019)
    goto for_next766
  for_handlers765:
    .get_results ($P5018)
    pop_upto_eh $P5018
    getattribute $P5018, $P5018, 'type'
    eq $P5018, .CONTROL_LOOP_NEXT, for_next766
    eq $P5018, .CONTROL_LOOP_REDO, for_redo767
  for_done768:
    pop_eh 
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "dump_array" :subid("cuid_127_1346277585.603") :anon :lex :outer("cuid_79_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 885
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5013 = 'cuid_126_1346277585.603' 
    capture_lex $P5013 
    .lex "$str", $P101 
    .lex "$key", _lex_param_0 
    .lex "$item", _lex_param_1 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    box $P5002, ""
    set $P101, $P5002
.annotate 'line', 887
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 28
    $P5004 = $P5003."ACCEPTS"(_lex_param_1)
    unless $P5004 goto if258_else757 
    set $S5002, $P101
.annotate 'line', 888
    $P5005 = _lex_param_1."!dump_str"(_lex_param_0)
    set $S5003, $P5005
    concat $S5001, $S5002, $S5003
    box $P5006, $S5001
    set $P101, $P5006
    set $P5012, $P101
    goto if258_end758
  if258_else757:
    isnull $I5002, _lex_param_1
    box $P5007, $I5002
    isfalse $I5001, $P5007
    box $P5011, $I5001
    set $P5010, $P5011
    unless $I5001 goto if259_end760 
    .const 'Sub' $P5008 = 'cuid_126_1346277585.603' 
    capture_lex $P5008
    $P5009 = $P5008()
    set $P5010, $P5009
  if259_end760:
    set $P5012, $P5010
  if258_end758:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_126_1346277585.603") :anon :lex :outer("cuid_127_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 890
    .const 'Sub' $P5010 = 'cuid_125_1346277585.603' 
    capture_lex $P5010 
    .lex "$n", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    box $P5002, 0
    set $P101, $P5002
    find_lex $P5006, "$item"
    set $P5003, $P5006
    iter $P5005, $P5006
    new $P5008, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5008, for_handlers761
    push_eh $P5008
  for_next762:
    unless $P5005, for_done764
    shift $P5009, $P5005
  for_redo763:
    .const 'Sub' $P5007 = 'cuid_125_1346277585.603' 
    capture_lex $P5007
    $P5003 = $P5007($P5009)
    goto for_next762
  for_handlers761:
    .get_results ($P5008)
    pop_upto_eh $P5008
    getattribute $P5008, $P5008, 'type'
    eq $P5008, .CONTROL_LOOP_NEXT, for_next762
    eq $P5008, .CONTROL_LOOP_REDO, for_redo763
  for_done764:
    pop_eh 
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_125_1346277585.603") :anon :lex :outer("cuid_126_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 892
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
.sub "" :subid("cuid_128_1346277585.603") :anon :lex :outer("cuid_79_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 898
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
.sub "" :subid("cuid_86_1346277585.603") :anon :lex :outer("cuid_1_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 903
    .const 'Sub' $P5010 = 'cuid_81_1346277585.603' 
    capture_lex $P5010 
    .const 'Sub' $P5010 = 'cuid_82_1346277585.603' 
    capture_lex $P5010 
    .const 'Sub' $P5010 = 'cuid_83_1346277585.603' 
    capture_lex $P5010 
    .const 'Sub' $P5010 = 'cuid_84_1346277585.603' 
    capture_lex $P5010 
    .const 'Sub' $P5010 = 'cuid_85_1346277585.603' 
    capture_lex $P5010 
    .lex "$EMPTY_MATCH_LIST", $P101 
    .lex "$EMPTY_MATCH_HASH", $P102 
    .lex "$?PACKAGE", $P103 
    .lex "$?CLASS", $P104 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P102, $P5002
    new $P5003, 'ResizablePMCArray'
    set $P101, $P5003
    new $P5004, 'Hash'
    set $P102, $P5004
    .const 'Sub' $P5005 = 'cuid_81_1346277585.603' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_82_1346277585.603' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_83_1346277585.603' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_84_1346277585.603' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_85_1346277585.603' 
    capture_lex $P5009
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "MATCH" :subid("cuid_81_1346277585.603") :anon :lex :outer("cuid_86_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 906
    .param pmc _lex_param_0 
    .const 'Sub' $P5010 = 'cuid_129_1346277585.603' 
    capture_lex $P5010 
    .lex "$match", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 81
    getattribute $P5002, $P5003, $P5004, "$!match"
    set $P101, $P5002
    nqp_get_sc_object $P5005, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 68
    type_check $I5001, $P101, $P5005
    set $I5003, $I5001
    if $I5001 goto unless261_end772 
    nqp_ishash $I5002, $P101
    set $I5003, $I5002
  unless261_end772:
    box $P5009, $I5003
    set $P5008, $P5009
    if $I5003 goto unless260_end770 
    .const 'Sub' $P5006 = 'cuid_129_1346277585.603' 
    capture_lex $P5006
    $P5007 = $P5006()
    set $P5008, $P5007
  unless260_end770:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_129_1346277585.603") :anon :lex :outer("cuid_81_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 908
    .lex "$list", $P101 
    .lex "$hash", $P102 
    .lex "%ch", $P103 
    .lex "$key", $P104 
    .lex "$iter", $P105 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P102, $P5002
    new $P5003, 'Hash'
    set $P103, $P5003
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P104, $P5004
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P105, $P5005
    find_lex $P5006, "$EMPTY_MATCH_LIST"
    set $P101, $P5006
    find_lex $P5007, "$EMPTY_MATCH_HASH"
    set $P102, $P5007
    nqp_get_sc_object $P5009, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 68
    repr_instance_of $P5008, $P5009
    store_lex "$match", $P5008
    find_lex $P5011, "self"
    nqp_decontainerize $P5010, $P5011
    nqp_get_sc_object $P5012, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 81
    find_lex $P5013, "$match"
    setattribute $P5010, $P5012, "$!match", $P5013
    find_lex $P5014, "$match"
    nqp_get_sc_object $P5015, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 68
    find_lex $P5017, "self"
    nqp_decontainerize $P5016, $P5017
    setattribute $P5014, $P5015, "$!cursor", $P5016
    find_lex $P5018, "$match"
    nqp_get_sc_object $P5019, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 68
    find_lex $P5022, "self"
    nqp_decontainerize $P5021, $P5022
    nqp_get_sc_object $P5023, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 81
    getattribute $P5020, $P5021, $P5023, "$!orig"
    setattribute $P5018, $P5019, "$!orig", $P5020
    find_lex $P5024, "$match"
    nqp_get_sc_object $P5025, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 68
    find_lex $P5027, "self"
    nqp_decontainerize $P5026, $P5027
    nqp_get_sc_object $P5028, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 81
    repr_get_attr_int $I5001, $P5026, $P5028, "$!from"
    repr_bind_attr_int $P5024, $P5025, "$!from", $I5001
    find_lex $P5029, "$match"
    nqp_get_sc_object $P5030, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 68
    find_lex $P5032, "self"
    nqp_decontainerize $P5031, $P5032
    nqp_get_sc_object $P5033, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 81
    repr_get_attr_int $I5002, $P5031, $P5033, "$!pos"
    repr_bind_attr_int $P5029, $P5030, "$!to", $I5002
.annotate 'line', 917
    find_lex $P5035, "self"
    nqp_decontainerize $P5034, $P5035
    $P5036 = $P5034."CAPHASH"()
    set $P103, $P5036
    iter $P5037, $P103
    set $P105, $P5037
    new $P5057, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5057, while262_handlers776
    push_eh $P5057
  while262_test773:
    set $P5056, $P105
    unless $P105 goto while262_done777 
  while262_redo775:
.annotate 'line', 920
    shift $P5038, $P105
    set $S5001, $P5038
    box $P5039, $S5001
    set $P104, $P5039
    set $S5002, $P104
    iseq $I5003, $S5002, "$!from"
    set $I5005, $I5003
    if $I5003 goto unless264_end781 
    set $S5003, $P104
    iseq $I5004, $S5003, "$!to"
    set $I5005, $I5004
  unless264_end781:
    unless $I5005 goto if263_else778 
.annotate 'line', 922
    find_lex $P5040, "$match"
    nqp_get_sc_object $P5041, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 68
    set $S5004, $P104
.annotate 'line', 923
    set $S5005, $P104
    set $P5042, $P103[$S5005]
    unless_null $P5042, fallback782
    nqp_get_sc_object $P5043, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5042, $P5043
  fallback782:
    $P5044 = $P5042."from"()
    set $I5006, $P5044
    repr_bind_attr_int $P5040, $P5041, $S5004, $I5006
    box $P5055, $I5006
    set $P5054, $P5055
    goto if263_end779
  if263_else778:
    set $S5006, $P104
    is_cclass $I5007, .CCLASS_NUMERIC, $S5006, 0
    unless $I5007 goto if265_else783 
.annotate 'line', 925
    set $P5046, $P101
    if $P101 goto unless266_end786 
    new $P5045, 'ResizablePMCArray'
    set $P101, $P5045
    set $P5046, $P101
  unless266_end786:
    set $I5008, $P104
    set $S5007, $P104
    set $P5047, $P103[$S5007]
    unless_null $P5047, fallback787
    nqp_get_sc_object $P5048, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5047, $P5048
  fallback787:
    set $P101[$I5008], $P5047
    set $P5053, $P5047
    goto if265_end784
  if265_else783:
.annotate 'line', 929
    set $P5050, $P102
    if $P102 goto unless267_end789 
    new $P5049, 'Hash'
    set $P102, $P5049
    set $P5050, $P102
  unless267_end789:
    set $S5008, $P104
    set $S5009, $P104
    set $P5051, $P103[$S5009]
    unless_null $P5051, fallback790
    nqp_get_sc_object $P5052, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P5051, $P5052
  fallback790:
    set $P102[$S5008], $P5051
    set $P5053, $P5051
  if265_end784:
    set $P5054, $P5053
  if263_end779:
    set $P5056, $P5054
    goto while262_test773 
  while262_handlers776:
    .get_results ($P5057)
    pop_upto_eh $P5057
    getattribute $P5057, $P5057, 'type'
    eq $P5057, .CONTROL_LOOP_NEXT, while262_test773
    eq $P5057, .CONTROL_LOOP_REDO, while262_redo775
  while262_done777:
    pop_eh 
    find_lex $P5058, "$match"
    nqp_get_sc_object $P5059, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 28
    setattribute $P5058, $P5059, "@!array", $P101
    find_lex $P5060, "$match"
    nqp_get_sc_object $P5061, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 28
    setattribute $P5060, $P5061, "%!hash", $P102
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "Bool" :subid("cuid_82_1346277585.603") :anon :lex :outer("cuid_86_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 940
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5002, _lex_param_0
    find_lex $P5003, "$?CLASS"
    getattribute $P5001, $P5002, $P5003, "$!match"
    isnull $I5002, $P5001
    box $P5004, $I5002
    isfalse $I5001, $P5004
    set $I5004, $I5001
    unless $I5001 goto if268_end792 
    nqp_decontainerize $P5006, _lex_param_0
    find_lex $P5007, "$?CLASS"
    getattribute $P5005, $P5006, $P5007, "$!match"
    istrue $I5003, $P5005
    set $I5004, $I5003
  if268_end792:
    .return ($I5004) 
.end
.HLL "nqp"
.namespace []
.sub "parse" :subid("cuid_83_1346277585.603") :anon :lex :outer("cuid_86_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 945
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :named("rule") :optional 
    .param int haz_param_18 :opt_flag 
    .param pmc _lex_param_3 :named("actions") :optional 
    .param int haz_param_19 :opt_flag 
    .param pmc _lex_param_4 :slurpy :named 
    if haz_param_18, default795
    box $P5011, "TOP"
    set _lex_param_2, $P5011
  default795:
    if haz_param_19, default796
    nqp_get_sc_object $P5012, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set _lex_param_3, $P5012
  default796:
    .lex "$*ACTIONS", $P101 
    .lex "$cur", $P102 
    .lex "self", _lex_param_0 
    .lex "$target", _lex_param_1 
    .lex "$rule", _lex_param_2 
    .lex "$actions", _lex_param_3 
    .lex "%options", _lex_param_4 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P102, $P5002
    set $P101, _lex_param_3
.annotate 'line', 947
    nqp_decontainerize $P5003, _lex_param_0
    $P5004 = $P5003."!cursor_init"(_lex_param_1, _lex_param_4 :flat :named)
    set $P102, $P5004
    is_invokable $I5001, _lex_param_2
    unless $I5001 goto if269_else793 
.annotate 'line', 949
    $P5005 = _lex_param_2($P102)
    $P5006 = $P5005."MATCH"()
    set $P5010, $P5006
    goto if269_end794
  if269_else793:
.annotate 'line', 950
    set $S5001, _lex_param_2
    find_method $P5007, $P102, $S5001
    $P5008 = $P5007($P102)
    $P5009 = $P5008."MATCH"()
    set $P5010, $P5009
  if269_end794:
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "!INTERPOLATE" :subid("cuid_84_1346277585.603") :anon :lex :outer("cuid_86_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 953
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5006 = 'cuid_134_1346277585.603' 
    capture_lex $P5006 
    .const 'Sub' $P5006 = 'cuid_135_1346277585.603' 
    capture_lex $P5006 
    .lex "self", _lex_param_0 
    .lex "$var", _lex_param_1 
    root_new $P101, ['parrot';'Continuation']
    set_label $P101, lexotic_797
    .lex "RETURN", $P101
    does $I5001, _lex_param_1, "array"
    unless $I5001 goto if270_else799 
    .const 'Sub' $P5001 = 'cuid_134_1346277585.603' 
    capture_lex $P5001
    $P5002 = $P5001()
    set $P5005, $P5002
    goto if270_end800
  if270_else799:
    .const 'Sub' $P5003 = 'cuid_135_1346277585.603' 
    capture_lex $P5003
    $P5004 = $P5003()
    set $P5005, $P5004
  if270_end800:
    goto lexotic_798
  lexotic_797:
    .get_results ($P5005)
  lexotic_798:
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_134_1346277585.603") :anon :lex :outer("cuid_84_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 954
    .const 'Sub' $P5026 = 'cuid_132_1346277585.603' 
    capture_lex $P5026 
    .lex "$maxlen", $P101 
    .lex "$cur", $P102 
    .lex "$pos", $P103 
    .lex "$tgt", $P104 
    .lex "$eos", $P105 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P102, $P5002
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P103, $P5003
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P104, $P5004
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P105, $P5005
    box $P5006, -1
    set $P101, $P5006
.annotate 'line', 956
    find_lex $P5008, "self"
    nqp_decontainerize $P5007, $P5008
    $P5009 = $P5007."!cursor_start"()
    set $P102, $P5009
    find_lex $P5010, "$?CLASS"
    repr_get_attr_int $I5001, $P102, $P5010, "$!from"
    box $P5011, $I5001
    set $P103, $P5011
.annotate 'line', 958
    $P5012 = $P102."target"()
    set $P104, $P5012
    set $S5001, $P104
    length $I5002, $S5001
    box $P5013, $I5002
    set $P105, $P5013
    find_lex $P5017, "$var"
    set $P5014, $P5017
    iter $P5016, $P5017
    new $P5019, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5019, for_handlers813
    push_eh $P5019
  for_next814:
    unless $P5016, for_done816
    shift $P5020, $P5016
  for_redo815:
    .const 'Sub' $P5018 = 'cuid_132_1346277585.603' 
    capture_lex $P5018
    $P5014 = $P5018($P5020)
    goto for_next814
  for_handlers813:
    .get_results ($P5019)
    pop_upto_eh $P5019
    getattribute $P5019, $P5019, 'type'
    eq $P5019, .CONTROL_LOOP_NEXT, for_next814
    eq $P5019, .CONTROL_LOOP_REDO, for_redo815
  for_done816:
    pop_eh 
    set $N5001, $P101
    set $N5002, 0
    isge $I5003, $N5001, $N5002
    box $P5023, $I5003
    set $P5022, $P5023
    unless $I5003 goto if277_end818 
.annotate 'line', 975
    set $N5004, $P103
    set $N5005, $P101
    add $N5003, $N5004, $N5005
    $P5021 = $P102."!cursor_pass"($N5003, "")
    set $P5022, $P5021
  if277_end818:
    find_lex $P5024, "RETURN"
    $P5025 = $P5024($P102)
    .return ($P5025) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_132_1346277585.603") :anon :lex :outer("cuid_134_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 960
    .param pmc _lex_param_0 
    .const 'Sub' $P5006 = 'cuid_131_1346277585.603' 
    capture_lex $P5006 
    .const 'Sub' $P5006 = 'cuid_133_1346277585.603' 
    capture_lex $P5006 
    .lex "$_", _lex_param_0 
    is_invokable $I5001, _lex_param_0
    unless $I5001 goto if271_else801 
    .const 'Sub' $P5001 = 'cuid_131_1346277585.603' 
    capture_lex $P5001
    $P5002 = $P5001()
    set $P5005, $P5002
    goto if271_end802
  if271_else801:
    .const 'Sub' $P5003 = 'cuid_133_1346277585.603' 
    capture_lex $P5003
    $P5004 = $P5003()
    set $P5005, $P5004
  if271_end802:
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_131_1346277585.603") :anon :lex :outer("cuid_132_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 961
    .const 'Sub' $P5009 = 'cuid_130_1346277585.603' 
    capture_lex $P5009 
    .lex "$res", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
.annotate 'line', 962
    find_lex $P5004, "self"
    nqp_decontainerize $P5003, $P5004
    find_lex $P5002, "$_"
    $P5005 = $P5002($P5003)
    set $P101, $P5005
    set $P5008, $P101
    unless $P101 goto if272_end804 
    .const 'Sub' $P5006 = 'cuid_130_1346277585.603' 
    capture_lex $P5006
    $P5007 = $P5006()
    set $P5008, $P5007
  if272_end804:
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_130_1346277585.603") :anon :lex :outer("cuid_131_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 963
    .lex "$adv", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    find_lex $P5002, "$res"
    find_lex $P5003, "$?CLASS"
    repr_get_attr_int $I5001, $P5002, $P5003, "$!pos"
    box $P5004, $I5001
    set $P101, $P5004
    set $N5002, $P101
    find_lex $P5005, "$pos"
    set $N5003, $P5005
    sub $N5001, $N5002, $N5003
    box $P5006, $N5001
    set $P101, $P5006
    set $N5004, $P101
    find_lex $P5007, "$maxlen"
    set $N5005, $P5007
    isgt $I5002, $N5004, $N5005
    box $P5009, $I5002
    set $P5008, $P5009
    unless $I5002 goto if273_end806 
    store_lex "$maxlen", $P101
    set $P5008, $P101
  if273_end806:
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_133_1346277585.603") :anon :lex :outer("cuid_132_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 969
    .lex "$len", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    find_lex $P5002, "$_"
    set $S5001, $P5002
    length $I5001, $S5001
    box $P5003, $I5001
    set $P101, $P5003
    set $N5001, $P101
    find_lex $P5004, "$maxlen"
    set $N5002, $P5004
    isgt $I5002, $N5001, $N5002
    set $I5004, $I5002
    unless $I5002 goto if276_end812 
    find_lex $P5005, "$pos"
    set $N5004, $P5005
    set $N5005, $P101
    add $N5003, $N5004, $N5005
    find_lex $P5006, "$eos"
    set $N5006, $P5006
    isle $I5003, $N5003, $N5006
    set $I5004, $I5003
  if276_end812:
    set $I5008, $I5004
    unless $I5004 goto if275_end810 
    find_lex $P5007, "$tgt"
    set $S5003, $P5007
    find_lex $P5008, "$pos"
    set $I5006, $P5008
    set $I5007, $P101
    substr $S5002, $S5003, $I5006, $I5007
    find_lex $P5009, "$_"
    set $S5004, $P5009
    iseq $I5005, $S5002, $S5004
    set $I5008, $I5005
  if275_end810:
    box $P5011, $I5008
    set $P5010, $P5011
    unless $I5008 goto if274_end808 
    store_lex "$maxlen", $P101
    set $P5010, $P101
  if274_end808:
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_135_1346277585.603") :anon :lex :outer("cuid_84_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 978
    .lex "$cur", $P101 
    .lex "$pos", $P102 
    .lex "$tgt", $P103 
    .lex "$len", $P104 
    .lex "$adv", $P105 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    nqp_get_sc_object $P5002, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P102, $P5002
    nqp_get_sc_object $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P103, $P5003
    nqp_get_sc_object $P5004, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P104, $P5004
    nqp_get_sc_object $P5005, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P105, $P5005
    find_lex $P5006, "$var"
    is_invokable $I5001, $P5006
    box $P5014, $I5001
    set $P5013, $P5014
    unless $I5001 goto if278_end820 
.annotate 'line', 979
    find_lex $P5010, "self"
    nqp_decontainerize $P5009, $P5010
    find_lex $P5008, "$var"
    $P5011 = $P5008($P5009)
    find_lex $P5007, "RETURN"
    $P5012 = $P5007($P5011)
    set $P5013, $P5012
  if278_end820:
.annotate 'line', 980
    find_lex $P5016, "self"
    nqp_decontainerize $P5015, $P5016
    $P5017 = $P5015."!cursor_start"()
    set $P101, $P5017
    find_lex $P5018, "$?CLASS"
    repr_get_attr_int $I5002, $P101, $P5018, "$!from"
    box $P5019, $I5002
    set $P102, $P5019
.annotate 'line', 982
    $P5020 = $P101."target"()
    set $P103, $P5020
    find_lex $P5021, "$var"
    set $S5001, $P5021
    length $I5003, $S5001
    box $P5022, $I5003
    set $P104, $P5022
    set $N5002, $P102
    set $N5003, $P104
    add $N5001, $N5002, $N5003
    box $P5023, $N5001
    set $P105, $P5023
    set $N5004, $P105
    set $S5002, $P103
    length $I5005, $S5002
    set $N5005, $I5005
    isgt $I5004, $N5004, $N5005
    set $I5009, $I5004
    if $I5004 goto unless280_end824 
    set $S5004, $P103
    set $I5007, $P102
    set $I5008, $P104
    substr $S5003, $S5004, $I5007, $I5008
    find_lex $P5024, "$var"
    set $S5005, $P5024
    isne $I5006, $S5003, $S5005
    set $I5009, $I5006
  unless280_end824:
    box $P5028, $I5009
    set $P5027, $P5028
    unless $I5009 goto if279_end822 
    find_lex $P5025, "RETURN"
    $P5026 = $P5025($P101)
    set $P5027, $P5026
  if279_end822:
.annotate 'line', 987
    $P5029 = $P101."!cursor_pass"($P105, "")
    find_lex $P5030, "RETURN"
    $P5031 = $P5030($P101)
    .return ($P5031) 
.end
.HLL "nqp"
.namespace []
.sub "!INTERPOLATE_REGEX" :subid("cuid_85_1346277585.603") :anon :lex :outer("cuid_86_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 992
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5009 = 'cuid_138_1346277585.603' 
    capture_lex $P5009 
    .lex "self", _lex_param_0 
    .lex "$var", _lex_param_1 
    root_new $P101, ['parrot';'Continuation']
    set_label $P101, lexotic_825
    .lex "RETURN", $P101
    is_invokable $I5001, _lex_param_1
    box $P5004, $I5001
    set $P5003, $P5004
    if $I5001 goto unless281_end828 
    .const 'Sub' $P5001 = 'cuid_138_1346277585.603' 
    capture_lex $P5001
    $P5002 = $P5001()
    set $P5003, $P5002
  unless281_end828:
.annotate 'line', 1008
    nqp_decontainerize $P5006, _lex_param_0
    $P5007 = $P5006."!INTERPOLATE"(_lex_param_1)
    find_lex $P5005, "RETURN"
    $P5008 = $P5005($P5007)
    goto lexotic_826
  lexotic_825:
    .get_results ($P5008)
  lexotic_826:
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_138_1346277585.603") :anon :lex :outer("cuid_85_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 993
    .const 'Sub' $P5009 = 'cuid_137_1346277585.603' 
    capture_lex $P5009 
    .lex "$rxcompiler", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    compreg $P5002, "QRegex::P6Regex"
    set $P101, $P5002
    find_lex $P5003, "$var"
    does $I5001, $P5003, "array"
    unless $I5001 goto if282_else829 
    .const 'Sub' $P5004 = 'cuid_137_1346277585.603' 
    capture_lex $P5004
    $P5005 = $P5004()
    set $P5008, $P5005
    goto if282_end830
  if282_else829:
.annotate 'line', 1004
.annotate 'line', 1005
    find_lex $P5006, "$var"
    $P5007 = $P101."compile"($P5006)
    store_lex "$var", $P5007
    set $P5008, $P5007
  if282_end830:
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_137_1346277585.603") :anon :lex :outer("cuid_138_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 995
    .const 'Sub' $P5010 = 'cuid_136_1346277585.603' 
    capture_lex $P5010 
    .lex "$res", $P101 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    new $P5002, 'ResizablePMCArray'
    set $P101, $P5002
    find_lex $P5006, "$var"
    set $P5003, $P5006
    iter $P5005, $P5006
    new $P5008, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5008, for_handlers833
    push_eh $P5008
  for_next834:
    unless $P5005, for_done836
    shift $P5009, $P5005
  for_redo835:
    .const 'Sub' $P5007 = 'cuid_136_1346277585.603' 
    capture_lex $P5007
    $P5003 = $P5007($P5009)
    goto for_next834
  for_handlers833:
    .get_results ($P5008)
    pop_upto_eh $P5008
    getattribute $P5008, $P5008, 'type'
    eq $P5008, .CONTROL_LOOP_NEXT, for_next834
    eq $P5008, .CONTROL_LOOP_REDO, for_redo835
  for_done836:
    pop_eh 
    store_lex "$var", $P101
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_136_1346277585.603") :anon :lex :outer("cuid_137_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 997
    .param pmc _lex_param_0 
    .lex "$elem", $P101 
    .lex "$_", _lex_param_0 
    nqp_get_sc_object $P5001, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649", 7
    set $P101, $P5001
    set $P101, _lex_param_0
    is_invokable $I5001, $P101
    box $P5005, $I5001
    set $P5004, $P5005
    if $I5001 goto unless283_end832 
.annotate 'line', 999
    find_lex $P5002, "$rxcompiler"
    $P5003 = $P5002."compile"($P101)
    set $P101, $P5003
    set $P5004, $P101
  unless283_end832:
    find_lex $P5006, "$res"
    push $P5006, $P101
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_100_1346277585.603") :anon :lex :outer("cuid_1_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1012
    .const 'Sub' $P5004 = 'cuid_97_1346277585.603' 
    capture_lex $P5004 
    .const 'Sub' $P5004 = 'cuid_98_1346277585.603' 
    capture_lex $P5004 
    .const 'Sub' $P5004 = 'cuid_99_1346277585.603' 
    capture_lex $P5004 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_97_1346277585.603' 
    capture_lex $P5001
    .const 'Sub' $P5002 = 'cuid_98_1346277585.603' 
    capture_lex $P5002
    .const 'Sub' $P5003 = 'cuid_99_1346277585.603' 
    capture_lex $P5003
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "new" :subid("cuid_97_1346277585.603") :anon :lex :outer("cuid_100_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1014
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$code", _lex_param_1 
.annotate 'line', 1015
    nqp_decontainerize $P5001, _lex_param_0
    $P5002 = $P5001."bless"(_lex_param_1 :named("code"))
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "ACCEPTS" :subid("cuid_98_1346277585.603") :anon :lex :outer("cuid_100_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1017
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$target", _lex_param_1 
.annotate 'line', 1018
    nqp_get_sc_object $P5001, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 81
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5001."parse"(_lex_param_1, $P5002 :named("rule"))
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "Str" :subid("cuid_99_1346277585.603") :anon :lex :outer("cuid_100_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1020
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 87
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!code"
    set $S5001, $P5003
    .return ($S5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_102_1346277585.603") :anon :lex :outer("cuid_1_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1025
    .const 'Sub' $P5002 = 'cuid_101_1346277585.603' 
    capture_lex $P5002 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_101_1346277585.603' 
    capture_lex $P5001
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "ACCEPTS" :subid("cuid_101_1346277585.603") :anon :lex :outer("cuid_102_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1026
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$target", _lex_param_1 
.annotate 'line', 1027
    nqp_get_sc_object $P5001, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 81
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5001."parse"(_lex_param_1, $P5002 :named("rule"), 0 :named("c"))
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_103_1346277585.603") :anon :lex :outer("cuid_1_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1031
    .const 'Sub' $P5003 = 'cuid_104_1346277585.603' 
    capture_lex $P5003 
    .lex "DEFAULT", $P101 
    .lex "$?PACKAGE", $P102 
    .lex "$?CLASS", $P103 
    .const 'Sub' $P5001 = 'cuid_104_1346277585.603' 
    capture_lex $P5001
    $P5002 = $P5001()
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_104_1346277585.603") :anon :lex :outer("cuid_103_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1032
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    get_who $P5001, $P101
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 26
    set $P5001["NQPCursorRole"], $P5002
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_140_1346277585.603") :load :init
.annotate 'file', "src\\stage2\\QRegex.nqp"
    .const 'Sub' $P5001 = 'cuid_139_1346277585.603' 
    capture_lex $P5001 
    .local pmc cur_sc 
    nqp_dynop_setup 
    nqp_bigint_setup 
    getinterp $P5001
    get_class $P5002, "LexPad"
    get_class $P5003, "NQPLexPad"
    $P5004 = $P5001."hll_map"($P5002, $P5003)
    load_bytecode "ModuleLoader.pbc"
    .const 'Sub' $P5001 = "cuid_1_1346277585.603" 
    get_hll_global $P5002, "ModuleLoader"
    $P5003 = $P5002."load_setting"("NQPCORE")
    $P5004 = $P5001."set_outer_ctx"($P5003)
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P5001, "ModuleLoader"
    $P5002 = $P5001."load_module"("QASTNode")
    nqp_create_sc $P5001, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638"
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
    push $P5003, "CREATE"
    push $P5003, "1DCC61F2B3C9F696581992363C3E43733F596AA9-1346277580.649"
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
    push $P5003, "past"
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
    push $P5003, "DEFAULT"
    push $P5003, "__6MODEL_CORE__"
    push $P5003, "GLOBALish"
    push $P5003, "737799CC9C4B888950184E8D92A500CE7A5E08DA-1346277574.503"
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
    push $P5003, "EXPORT"
    push $P5003, "CompileTimeValue"
    push $P5003, "AA49D86054CDC686E34A37C6F89EC4059A76B342-1346277582.704"
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
    push $P5003, "$?CLASS"
    .const 'Sub' $P5004 = 'cuid_139_1346277585.603' 
    capture_lex $P5004
    $P5005 = $P5004()
    nqp_deserialize_sc "AQAAAEAAAAAEAAAAYAAAAAwAAADAAAAAohMAAKgAAAAiHgAA5D8AACgAAACkQwAAAQAAALRDAADiQwAAAAAAAAoAAAALAAAAeQAAAAAAAAB7AAAAfAAAAIwAAACNAAAAAQAAAAAAAAABAAAA/AAAADAAAADkAwAAAQAAACQEAAABAAAAMgcAAAEAAAB4DAAAAQAAAAwOAAAwAAAAtg8AADAAAAAIEAAAAQAAAEwQAAABAAAADBIAADAAAACmEgAAAAAAAF8AAAAAAAAAAAAAAAoABwAAAAIAAAACAAAAAABgAAAAAwAAAAIAAAAAAGEAAAAEAAAAAgAAAAAAGgAAAAUAAAACAAAAAABEAAAABgAAAAIAAAAAAFEAAAAHAAAAAgAAAAAAVwAAAAgAAAACAAAAAABbAAAACgAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAAAAAAAAMAAAAAAGIAAAAAAAAAAQAAAAoAAAAAAAoAIwAAAAkAAAACAAEAAAAIAAAADAAAAAIAAQAAAAkAAAANAAAAAgABAAAACgAAAA4AAAACAAAAAAACAAAADwAAAAIAAQAAAAwAAAAQAAAAAgABAAAADwAAABEAAAACAAEAAAARAAAAEgAAAAIAAQAAABMAAAATAAAAAgABAAAAFQAAABQAAAACAAEAAAAXAAAAFQAAAAIAAQAAABgAAAAWAAAAAgABAAAAGgAAABcAAAACAAAAAAAZAAAAGAAAAAIAAAAAAAMAAAAZAAAAAgAAAAAABAAAABoAAAACAAAAAAAFAAAAGwAAAAIAAAAAAAYAAAAcAAAAAgAAAAAABwAAAB0AAAACAAAAAAAIAAAAHgAAAAIAAAAAAAkAAAAfAAAAAgAAAAAACgAAACAAAAACAAAAAAALAAAAIQAAAAIAAAAAAAwAAAAiAAAAAgAAAAAADQAAACMAAAACAAAAAAAOAAAAJAAAAAIAAAAAAA8AAAAlAAAAAgAAAAAAEAAAACYAAAACAAAAAAARAAAAJwAAAAIAAAAAABIAAAAoAAAAAgAAAAAAEwAAACkAAAACAAAAAAAUAAAAKgAAAAIAAAAAABUAAAArAAAAAgAAAAAAFgAAACwAAAACAAAAAAAXAAAALQAAAAIAAAAAABgAAAAAAAAAAAAAAAIAAAAAAAAAAgAAAAAAAQAAAAIAAQAAAAcAAAAEAAAAAAAAAAEAAAAAAAAABQAAAAAAAAADAAAAAAAAAAAAAgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAQAAAAcAAAACAAEAAAAHAAAA////////////////////////////////AAAAAAAAAAACAAAAAAAAAAIAAQAAAAcAAAADAAIAAAAAAAEAAAAKAAIAAAAuAAAABAAAAAAAAAAAAC8AAAAEAAEAAAAAAAAAAAAAAGMAAAAAAAAAGgAAAAoAAAAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABkAAAAAAAAAEQAAAAKAAAAAAAKABkAAAAJAAAAAgABAAAACAAAAAwAAAACAAEAAAAJAAAADQAAAAIAAQAAAAoAAAAOAAAAAgABAAAAHQAAAA8AAAACAAAAAABJAAAAEAAAAAIAAQAAAA8AAAARAAAAAgABAAAAEQAAABIAAAACAAEAAAATAAAAEwAAAAIAAQAAABUAAAAUAAAAAgABAAAAFwAAABUAAAACAAEAAAAYAAAAFgAAAAIAAQAAABoAAAAXAAAAAgABAAAAGwAAADEAAAACAAEAAAAeAAAAMgAAAAIAAQAAAB8AAAAzAAAAAgABAAAAIAAAADQAAAACAAAAAABFAAAANQAAAAIAAAAAAEYAAAA2AAAAAgAAAAAARwAAADcAAAACAAAAAABIAAAAOAAAAAIAAAAAAEwAAAA5AAAAAgAAAAAATQAAADoAAAACAAAAAABOAAAAOwAAAAIAAAAAAE8AAAA8AAAAAgAAAAAAUAAAAAAAAAAAAAAAAwAAAAAAAAACAAAAAABEAAAAAgABAAAAHAAAAAIAAQAAAAcAAAAEAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAACAAAAAABMAAAAAAAAAAAAAAAHAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAQAAAAIAAAABAAAAAAAAAAEAAAACAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAABAAEAAgABAAAABwAAAAEAAQACAAEAAAAHAAAAAgABAAAABwAAAP///////////////////////////////wAAAAAAAAAAAwAAAAAAAAACAAEAAAAHAAAAAwACAAEAAAAcAAAACgACAAAAPQAAAAQAAAAAAAAAAAA+AAAABAABAAAAAAAAAAIAAAAAAEQAAAAKAAUAAAA/AAAABAACAAAAAAAAAEAAAAAEAAMAAAAAAAAAQQAAAAQABAAAAAAAAABCAAAABAAFAAAAAAAAAEMAAAAEAAYAAAAAAAAAAAAAAGUAAAAAAAAAUQAAAAoAAAAAAAoAOgAAAAkAAAACAAEAAAAIAAAADAAAAAIAAQAAAAkAAAANAAAAAgABAAAACgAAAA4AAAACAAEAAAALAAAADwAAAAIAAQAAAAwAAAAQAAAAAgABAAAADwAAABEAAAACAAEAAAARAAAAEgAAAAIAAQAAABMAAAATAAAAAgABAAAAFQAAABQAAAACAAEAAAAXAAAAFQAAAAIAAQAAABgAAAAWAAAAAgABAAAAGgAAABcAAAACAAEAAAAbAAAARAAAAAIAAAAAAFIAAAA4AAAAAgAAAAAAUwAAAEUAAAACAAAAAABUAAAARgAAAAIAAAAAAFUAAABHAAAAAgAAAAAAVgAAAEgAAAACAAAAAABmAAAANAAAAAIAAAAAAGcAAABJAAAAAgAAAAAAaAAAAEoAAAACAAAAAABpAAAASwAAAAIAAAAAAGoAAABMAAAAAgAAAAAAawAAAE0AAAACAAAAAABsAAAATgAAAAIAAAAAAG0AAABPAAAAAgAAAAAAbgAAAFAAAAACAAAAAABvAAAAUQAAAAIAAAAAAHAAAABSAAAAAgAAAAAAcQAAAFMAAAACAAAAAAByAAAAVAAAAAIAAAAAAHMAAABVAAAAAgAAAAAAdAAAAFYAAAACAAAAAAB1AAAAVwAAAAIAAAAAAHYAAABYAAAAAgAAAAAAdwAAAFkAAAACAAAAAAB4AAAAWgAAAAIAAAAAAHkAAABbAAAAAgAAAAAAegAAAFwAAAACAAAAAAB7AAAAXQAAAAIAAAAAAHwAAABeAAAAAgAAAAAAfQAAAF8AAAACAAAAAAB+AAAAYAAAAAIAAAAAAH8AAABhAAAAAgAAAAAAgAAAAGIAAAACAAAAAACBAAAAYwAAAAIAAAAAAIIAAABkAAAAAgAAAAAAgwAAAGUAAAACAAAAAACEAAAAZgAAAAIAAAAAAIUAAABnAAAAAgAAAAAAhgAAAGgAAAACAAAAAACHAAAAaQAAAAIAAAAAAIgAAABqAAAAAgAAAAAAiQAAAGsAAAACAAAAAACKAAAAbAAAAAIAAAAAAIsAAABtAAAAAgAAAAAAjAAAAG4AAAACAAAAAACNAAAAAAAAAAAAAAAEAAAAAAAAAAIAAAAAAFEAAAACAAEAAAAHAAAAAgAAAAAAGgAAAAIAAAAAAI4AAAAEAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAACAAAAAABTAAAAAAAAAAAAAAAKAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAABAAAABAAAAAEAAAAAAAAAAQAAAAIAAAABAAAAAAAAAAEAAAACAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAQAAAAcAAAABAAEAAQACAAEAAAAHAAAAAgABAAAABwAAAAIAAQAAAAcAAAACAAEAAAAHAAAAAgABAAAABwAAAAIAAQAAAAcAAAD///////////////////////////////8AAAAAAAAAAAIAAAAAAAAAAgABAAAABwAAAAMAAgAAAAAAUQAAAAoACgAAAD8AAAAEAAAAAAAAAAAAbwAAAAQAAQAAAAAAAABAAAAABAACAAAAAAAAAHAAAAAEAAMAAAAAAAAAcQAAAAQABAAAAAAAAAByAAAABAAFAAAAAAAAAHMAAAAEAAYAAAAAAAAAdAAAAAQABwAAAAAAAAB1AAAABAAIAAAAAAAAAHYAAAAEAAkAAAAAAAAAAAAAAI8AAAAAAAAAVwAAAAoAAAAAAAoADQAAAAkAAAACAAEAAAAIAAAADAAAAAIAAQAAAAkAAAANAAAAAgABAAAACgAAAA4AAAACAAAAAABYAAAADwAAAAIAAAAAAFoAAAAQAAAAAgABAAAADwAAABEAAAACAAEAAAARAAAAEgAAAAIAAQAAABMAAAATAAAAAgABAAAAFQAAABQAAAACAAEAAAAXAAAAFQAAAAIAAAAAAFkAAAAWAAAAAgABAAAAGgAAABcAAAACAAEAAAAbAAAAAAAAAAAAAAACAAAAAAAAAAIAAAAAAFcAAAACAAEAAAAHAAAABAAAAAAAAAABAAAAAAAAAAUAAAAAAAAAAwAAAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAgABAAAABwAAAP///////////////////////////////wAAAAAAAAAAAgAAAAAAAAACAAEAAAAHAAAAAwACAAAAAABXAAAACgABAAAAdwAAAAQAAAAAAAAAAAAAAAAAkAAAAAAAAABbAAAACgAAAAAACgANAAAACQAAAAIAAQAAAAgAAAAMAAAAAgABAAAACQAAAA0AAAACAAEAAAAKAAAADgAAAAIAAAAAAFgAAAAPAAAAAgAAAAAAWgAAABAAAAACAAEAAAAPAAAAEQAAAAIAAQAAABEAAAASAAAAAgABAAAAEwAAABMAAAACAAEAAAAVAAAAFAAAAAIAAQAAABcAAAAVAAAAAgAAAAAAXAAAABYAAAACAAEAAAAaAAAAFwAAAAIAAQAAABsAAAAAAAAAAAAAAAMAAAAAAAAAAgAAAAAAWwAAAAIAAAAAAFcAAAACAAEAAAAHAAAABAAAAAAAAAABAAAAAAAAAAUAAAAAAAAAAwAAAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAgABAAAABwAAAP///////////////////////////////wAAAAAAAAAAAwAAAAAAAAACAAEAAAAHAAAAAwACAAAAAABXAAAACgABAAAAdwAAAAQAAAAAAAAAAAACAAAAAABbAAAAAwAAAAAAkQAAAAAAAABdAAAACgABAAAAeAAAAAIAAAAAAF4AAAAKAAAAAAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAJIAAAAAAAAAXgAAAAoAAAAAAAoAAAAAAAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAApQAAAAAAAABgAAAACgAVAAAAiwAAAAIABAAAAAEAAACOAAAAAgAEAAAABgAAAI8AAAACAAQAAAAKAAAAkAAAAAIABAAAACUAAACRAAAAAgAEAAAALQAAAJIAAAACAAQAAAAxAAAAkwAAAAIABAAAADUAAACUAAAAAgAEAAAAOQAAAJUAAAACAAQAAAA7AAAAlgAAAAIABAAAAD8AAACXAAAAAgAEAAAARAAAAJgAAAACAAQAAABMAAAAmQAAAAIABAAAAE4AAACaAAAAAgAEAAAAVAAAAJsAAAACAAQAAABYAAAAnAAAAAIABAAAAFwAAACdAAAAAgAEAAAAYAAAAJ4AAAACAAQAAABnAAAAnwAAAAIABAAAAGoAAACgAAAAAgAEAAAAbQAAAKEAAAACAAQAAAB2AAAACgAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAGAAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAAYAAAAAMAAAAAAKYAAAAAAAAAYQAAAAoAAQAAAKIAAAACAAAAAAABAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAAGEAAAADAAAAAACnAAAAAAAAAI4AAAADAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAAAAAAAAQAAAAUAAAAAAAAAAQAAAAEAAAAFAAAAEAAAAAEAAAABAAAABQAAACAAAAABAAAAAQAAAAUAAAAwAAAAAQAAAAEAAAAFAAAAQAAAAAEAAAABAAAABQAAAFAAAAABAAAAAQAAAAUAAABgAAAAAQAAAAEAAAAFAAAAcAAAAAEAAAABAAAABQAAAIAAAAABAAAAAQAAAAUAAACQAAAAAQAAAAEAAAAFAAAAoAAAAAEAAAABAAAABQAAALAAAAABAAAAAQAAAAUAAADAAAAAAQAAAAEAAAAFAAAA0AAAAAEAAAABAAAABQAAAOAAAAABAAAAAQAAAAUAAADwAAAAAQAAAAEAAAAFAAAAAAEAAAEAAAABAAAABQAAABABAAABAAAAAQAAAAUAAAAgAQAAAQAAAAEAAAAFAAAAMAEAAAEAAAABAAAABQAAAEABAAABAAAAAQAAAAUAAABQAQAAAQAAAAEAAAAFAAAAYAEAAAEAAAABAAAABQAAAHABAAABAAAAAAAAAAIAAACAAQAAAAAAAAEAAAAFAAAAgAEAAAEAAAABAAAABQAAAJABAAABAAAAAQAAAAUAAACgAQAAAQAAAAEAAAAFAAAAsAEAAAEAAAABAAAABQAAAMABAAABAAAAAQAAAAUAAADQAQAAAQAAAAEAAAAFAAAA4AEAAAEAAAABAAAABQAAAPABAAABAAAAAQAAAAUAAAAAAgAAAQAAAAEAAAAFAAAAEAIAAAEAAAABAAAABQAAACACAAABAAAAAQAAAAUAAAAwAgAAAQAAAAEAAAAFAAAAQAIAAAEAAAABAAAABQAAAFACAAABAAAAAQAAAAUAAABgAgAAAQAAAAEAAAAFAAAAcAIAAAEAAAABAAAABQAAAIACAAABAAAAAQAAAAUAAACQAgAAAQAAAAEAAAAFAAAAoAIAAAEAAAABAAAABQAAALACAAABAAAAAQAAAAUAAADAAgAAAQAAAAEAAAAFAAAA0AIAAAEAAAABAAAABQAAAOACAAABAAAAAQAAAAUAAADwAgAAAQAAAAEAAAAFAAAAAAMAAAEAAAABAAAABQAAABADAAABAAAAAQAAAAUAAAAgAwAAAQAAAAEAAAAFAAAAMAMAAAEAAAABAAAABQAAAEADAAABAAAAAQAAAAUAAABQAwAAAQAAAAEAAAAFAAAAYAMAAAEAAAABAAAABQAAAHADAAABAAAAAQAAAAUAAACAAwAAAQAAAAEAAAAFAAAAkAMAAAEAAAABAAAABQAAAKADAAABAAAAAQAAAAUAAACwAwAAAQAAAAEAAAAFAAAAwAMAAAEAAAABAAAABQAAANADAAABAAAAAQAAAAUAAADgAwAAAQAAAAEAAAAFAAAA8AMAAAEAAAABAAAABQAAAAAEAAABAAAAAAAAAAMAAAAQBAAAAAAAAAEAAAAFAAAAEAQAAAEAAAABAAAABQAAACAEAAABAAAAAQAAAAUAAAAwBAAAAQAAAAEAAAAFAAAAQAQAAAEAAAABAAAABQAAAFAEAAABAAAAAQAAAAUAAABgBAAAAQAAAAEAAAAFAAAAcAQAAAEAAAABAAAABQAAAIAEAAABAAAAAQAAAAUAAACQBAAAAQAAAAEAAAAFAAAAoAQAAAEAAAABAAAABQAAALAEAAABAAAAAQAAAAUAAADABAAAAQAAAAAAAAAEAAAA0AQAAAAAAAABAAAABQAAANAEAAABAAAAAQAAAAUAAADgBAAAAQAAAAEAAAAFAAAA8AQAAAEAAAABAAAABQAAAAAFAAABAAAAAQAAAAUAAAAQBQAAAQAAAAAAAAAFAAAAIAUAAAAAAAABAAAABQAAACAFAAABAAAAAQAAAAUAAAAwBQAAAQAAAAEAAAAFAAAAQAUAAAEAAAAAAAAABgAAAFAFAAAAAAAAAQAAAAUAAABQBQAAAQAAAAAAAAAHAAAAYAUAAAAAAAAAAAAACAAAAGAFAAAAAAAAAgAAAAAAAABgBQAAAQAAAAAAAAAJAAAAcAUAAAAAAAAAAAAACgAAAHAFAAAAAAAAAwAAAAYAAABwBQAAAQAAAAMAAAAFAAAABgkAAAEAAAADAAAABgAAAPQLAAABAAAAAwAAAAYAAABGDgAAAQAAAAEAAAAFAAAAwhYAAAEAAAABAAAABQAAANIWAAABAAAAAQAAAAUAAADiFgAAAQAAAAEAAAAFAAAA8hYAAAEAAAABAAAABQAAAAIXAAABAAAAAQAAAAUAAAASFwAAAQAAAAEAAAAFAAAAIhcAAAEAAAABAAAABQAAADIXAAABAAAAAQAAAAUAAABCFwAAAQAAAAEAAAAFAAAAUhcAAAEAAAABAAAABQAAAGIXAAABAAAAAQAAAAUAAAByFwAAAQAAAAEAAAAFAAAAghcAAAEAAAABAAAABQAAAJIXAAABAAAAAQAAAAUAAACiFwAAAQAAAAEAAAAFAAAAshcAAAEAAAABAAAABQAAAMIXAAABAAAAAQAAAAUAAADSFwAAAQAAAAEAAAAFAAAA4hcAAAEAAAABAAAABQAAAPIXAAABAAAAAQAAAAUAAAACGAAAAQAAAAEAAAAFAAAAEhgAAAEAAAABAAAABQAAACIYAAABAAAAAQAAAAUAAAAyGAAAAQAAAAEAAAAFAAAAQhgAAAEAAAABAAAABQAAAFIYAAABAAAAAQAAAAUAAABiGAAAAQAAAAEAAAAFAAAAchgAAAEAAAABAAAABQAAAIIYAAABAAAAAQAAAAUAAACSGAAAAQAAAAEAAAAFAAAAohgAAAEAAAABAAAABQAAALIYAAABAAAAAQAAAAUAAADCGAAAAQAAAAEAAAAFAAAA0hgAAAEAAAABAAAABQAAAOIYAAABAAAAAQAAAAUAAADyGAAAAQAAAAEAAAAFAAAAAhkAAAEAAAABAAAABQAAABIZAAABAAAAAQAAAAUAAAAiGQAAAQAAAAEAAAAFAAAAMhkAAAEAAAAAAAAACwAAAEIZAAAAAAAAAwAAAAYAAABCGQAAAQAAAAMAAAAGAAAArhoAAAEAAAADAAAACQAAAJAbAAABAAAAAwAAAAkAAACgGwAAAQAAAAMAAAAIAAAAsBsAAAEAAAADAAAACAAAANgbAAABAAAAAwAAAAgAAAAAHAAAAQAAAAMAAAAIAAAAKBwAAAEAAAADAAAACAAAAFgcAAABAAAAAwAAAAgAAACIHAAAAQAAAAMAAAAIAAAAuBwAAAEAAAADAAAACAAAAOAcAAABAAAAAwAAAAgAAAAIHQAAAQAAAAMAAAAIAAAAMB0AAAEAAAADAAAACAAAAFgdAAABAAAAAwAAAAgAAACAHQAAAQAAAAMAAAAIAAAAqB0AAAEAAAADAAAACAAAANAdAAABAAAAAwAAAAgAAAAAHgAAAQAAAAMAAAAIAAAAMB4AAAEAAAADAAAACAAAAFgeAAABAAAAAwAAAAgAAACAHgAAAQAAAAIAAAAAAAAAqB4AAAEAAAACAAAAAAAAALgeAAABAAAAAwAAAAMAAADIHgAAAQAAAAsAAAAAAAAAAAABAAEAAQALAAAAAAABAAAAAQABAAEACwAAAAAAAgAAAAEAAQABAAsAAAAAAAMAAAABAAEAAQALAAAAAAAEAAAAAQABAAEACwAAAAAABQAAAAEAAQABAAsAAAAAAAYAAAABAAEAAQALAAAAAAAHAAAAAQABAAEACwAAAAAACAAAAAEAAQABAAsAAAAAAAkAAAABAAEAAQALAAAAAAAKAAAAAQABAAEACwAAAAAACwAAAAEAAQABAAsAAAAAAAwAAAABAAEAAQALAAAAAAANAAAAAQABAAEACwAAAAAADgAAAAEAAQABAAsAAAAAAA8AAAABAAEAAQALAAAAAAAQAAAAAQABAAEACwAAAAAAEQAAAAEAAQABAAsAAAAAABIAAAABAAEAAQALAAAAAAATAAAAAQABAAEACwAAAAAAFAAAAAEAAQABAAsAAAAAABUAAAABAAEAAQALAAAAAAAWAAAAAQABAAEACwAAAAAAFwAAAAEAAQABAAsAAAAAABgAAAABAAEAAQALAAAAAAAZAAAAAQABAAEACwAAAAAAGgAAAAEAAQABAAsAAAAAABsAAAABAAEAAQALAAAAAAAcAAAAAQABAAEACwAAAAAAHQAAAAEAAQABAAsAAAAAAB4AAAABAAEAAQALAAAAAAAfAAAAAQABAAEACwAAAAAAIAAAAAEAAQABAAsAAAAAACEAAAABAAEAAQALAAAAAAAiAAAAAQABAAEACwAAAAAAIwAAAAEAAQABAAsAAAAAACQAAAABAAEAAQALAAAAAAAlAAAAAQABAAEACwAAAAAAJgAAAAEAAQABAAsAAAAAACcAAAABAAEAAQALAAAAAAAoAAAAAQABAAEACwAAAAAAKQAAAAEAAQABAAsAAAAAACoAAAABAAEAAQALAAAAAAArAAAAAQABAAEACwAAAAAALAAAAAEAAQABAAsAAAAAAC0AAAABAAEAAQALAAAAAAAuAAAAAQABAAEACwAAAAAALwAAAAEAAQABAAsAAAAAADAAAAABAAEAAQALAAAAAAAxAAAAAQABAAEACwAAAAAAMgAAAAEAAQABAAsAAAAAADMAAAABAAEAAQALAAAAAAA0AAAAAQABAAEACwAAAAAANQAAAAEAAQABAAsAAAAAADYAAAABAAEAAQALAAAAAAA3AAAAAQABAAEACwAAAAAAOAAAAAEAAQABAAsAAAAAADkAAAABAAEAAQALAAAAAAA6AAAAAQABAAEACwAAAAAAOwAAAAEAAQABAAsAAAAAADwAAAABAAEAAQALAAAAAAA9AAAAAQABAAEACwAAAAAAPgAAAAEAAQABAAsAAAAAAD8AAAABAAEAAQALAAAAAABAAAAAAQABAAEACwAAAAAAQQAAAAEAAQABAAsAAAAAAEIAAAABAAEAAQALAAAAAABDAAAAAQABAAEACwAAAAAARAAAAAEAAQABAAsAAAAAAEUAAAABAAEAAQALAAAAAABGAAAAAQABAAEACwAAAAAARwAAAAEAAQABAAsAAAAAAEgAAAABAAEAAQALAAAAAABJAAAAAQABAAEACwAAAAAASgAAAAEAAQABAAsAAAAAAEsAAAABAAEAAQALAAAAAABMAAAAAQABAAEACwAAAAAATQAAAAEAAQABAAsAAAAAAE4AAAABAAEAAQALAAAAAABPAAAAAQABAAEACwAAAAAAUAAAAAEAAQABAAsAAAAAAFEAAAABAAEAAQALAAAAAABSAAAAAQABAAEACwAAAAAAUwAAAAEAAQABAAsAAAAAAFQAAAABAAEAAQALAAAAAABVAAAAAQABAAEAegAAAAcAAAAAAAoAAAAAAAYAfQAAAAoAAgAAAC4AAAACAAAAAACTAAAALwAAAAIAAAAAAJQAAAAKABgAAAAOAAAAAgAAAAAAAgAAABgAAAACAAAAAAADAAAAGQAAAAIAAAAAAAQAAAAaAAAAAgAAAAAABQAAABsAAAACAAAAAAAGAAAAHAAAAAIAAAAAAAcAAAAdAAAAAgAAAAAACAAAAB4AAAACAAAAAAAJAAAAHwAAAAIAAAAAAAoAAAAgAAAAAgAAAAAACwAAACEAAAACAAAAAAAMAAAAIgAAAAIAAAAAAA0AAAAjAAAAAgAAAAAADgAAACQAAAACAAAAAAAPAAAAJQAAAAIAAAAAABAAAAAmAAAAAgAAAAAAEQAAACcAAAACAAAAAAASAAAAKAAAAAIAAAAAABMAAAApAAAAAgAAAAAAFAAAACoAAAACAAAAAAAVAAAAKwAAAAIAAAAAABYAAAAsAAAAAgAAAAAAFwAAAC0AAAACAAAAAAAYAAAAFwAAAAIAAAAAABkAAAAHABgAAAACAAAAAAACAAAAAgAAAAAAAwAAAAIAAAAAAAQAAAACAAAAAAAFAAAAAgAAAAAABgAAAAIAAAAAAAcAAAACAAAAAAAIAAAAAgAAAAAACQAAAAIAAAAAAAoAAAACAAAAAAALAAAAAgAAAAAADAAAAAIAAAAAAA0AAAACAAAAAAAOAAAAAgAAAAAADwAAAAIAAAAAABAAAAACAAAAAAARAAAAAgAAAAAAEgAAAAIAAAAAABMAAAACAAAAAAAUAAAAAgAAAAAAFQAAAAIAAAAAABYAAAACAAAAAAAXAAAAAgAAAAAAGAAAAAIAAAAAABkAAAAHAAAAAAAHAAEAAAACAAEAAAAHAAAABwAAAAAAAgABAAAABwAAAAcAAAAAAAoAAAAAAAQAAQAAAAAAAAAHAAIAAAACAAAAAAABAAAAAgABAAAABwAAAAcAAAAAAAoAAAAAAAoAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwACAAAABwAEAAAABAABAAAAAAAAAAIAAAAAAAEAAAAGABoAAAAGAC4AAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAAQAAAAYAfgAAAAYALwAAAAcAAgAAAAcABAAAAAQAAQAAAAAAAAACAAAAAAABAAAABgAaAAAABgAuAAAABwAEAAAABAABAAAAAAAAAAIAAAAAAAEAAAAGAH4AAAAGAC8AAAABAAYABAAAAAoACgAAAD8AAAACAAAAAACVAAAAbwAAAAIAAAAAAJYAAABAAAAAAgAAAAAAlwAAAHAAAAACAAAAAACYAAAAcQAAAAIAAAAAAJkAAAByAAAAAgAAAAAAmgAAAHMAAAACAAAAAACbAAAAdAAAAAIAAAAAAJwAAAB1AAAAAgAAAAAAnQAAAHYAAAACAAAAAACeAAAACgAoAAAASAAAAAIAAAAAABsAAAA0AAAAAgAAAAAAHAAAAEkAAAACAAAAAAAdAAAASgAAAAIAAAAAAB4AAABLAAAAAgAAAAAAHwAAAEwAAAACAAAAAAAgAAAATQAAAAIAAAAAACEAAABOAAAAAgAAAAAAIgAAAE8AAAACAAAAAAAjAAAAUAAAAAIAAAAAACQAAABRAAAAAgAAAAAAJQAAAFIAAAACAAAAAAAmAAAAUwAAAAIAAAAAACcAAABUAAAAAgAAAAAAKAAAAFUAAAACAAAAAAApAAAAVgAAAAIAAAAAACoAAABXAAAAAgAAAAAAKwAAAFgAAAACAAAAAAAsAAAAWQAAAAIAAAAAAC0AAABaAAAAAgAAAAAALgAAAFsAAAACAAAAAAAvAAAAXAAAAAIAAAAAADAAAABdAAAAAgAAAAAAMQAAAF4AAAACAAAAAAAyAAAAXwAAAAIAAAAAADMAAABgAAAAAgAAAAAANAAAAGEAAAACAAAAAAA1AAAAYgAAAAIAAAAAADYAAABjAAAAAgAAAAAANwAAAGQAAAACAAAAAAA4AAAAZQAAAAIAAAAAADkAAABmAAAAAgAAAAAAOgAAAGcAAAACAAAAAAA7AAAAaAAAAAIAAAAAADwAAABpAAAAAgAAAAAAPQAAAGoAAAACAAAAAAA+AAAAawAAAAIAAAAAAD8AAABsAAAAAgAAAAAAQAAAAG0AAAACAAAAAABBAAAAbgAAAAIAAAAAAEIAAAAHAAAAAAAHAAAAAAAEAAEAAAAAAAAAAgAAAAAAQwAAAAYABQAAAAoABQAAAD8AAAACAAAAAACfAAAAQAAAAAIAAAAAAKAAAABBAAAAAgAAAAAAoQAAAEIAAAACAAAAAACiAAAAQwAAAAIAAAAAAKMAAAAKAAoAAAA0AAAAAgAAAAAARQAAADUAAAACAAAAAABGAAAANgAAAAIAAAAAAEcAAAA3AAAAAgAAAAAASAAAAA8AAAACAAAAAABJAAAAOAAAAAIAAAAAAEwAAAA5AAAAAgAAAAAATQAAADoAAAACAAAAAABOAAAAOwAAAAIAAAAAAE8AAAA8AAAAAgAAAAAAUAAAAAcACgAAAAIAAAAAAEUAAAACAAAAAABGAAAAAgAAAAAARwAAAAIAAAAAAEgAAAACAAAAAABJAAAAAgAAAAAATAAAAAIAAAAAAE0AAAACAAAAAABOAAAAAgAAAAAATwAAAAIAAAAAAFAAAAAHAAAAAAAHAAEAAAACAAEAAAAcAAAABwAAAAAAAQAHAAAAAAAKAAAAAAAEAAEAAAAAAAAABwADAAAAAgAAAAAARAAAAAIAAQAAABwAAAACAAEAAAAHAAAABwAAAAAACgADAAAAfwAAAAIAAAAAAEkAAACAAAAAAgAAAAAASgAAAIEAAAACAAAAAABLAAAACgAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAIAAAAHAAIAAAAEAAAAAAAAAAAAAgABAAAAHgAAAAcAAgAAAAQAAAAAAAAAAAACAAEAAAAeAAAABwABAAAABwACAAAABAAAAAAAAAAAAAIAAQAAAB4AAAABAAYABgAAAAoACgAAAD8AAAACAAAAAACVAAAAbwAAAAIAAAAAAJYAAABAAAAAAgAAAAAAlwAAAHAAAAACAAAAAACYAAAAcQAAAAIAAAAAAJkAAAByAAAAAgAAAAAAmgAAAHMAAAACAAAAAACbAAAAdAAAAAIAAAAAAJwAAAB1AAAAAgAAAAAAnQAAAHYAAAACAAAAAACeAAAACgAtAAAARAAAAAIAAAAAAFIAAAA4AAAAAgAAAAAAUwAAAEUAAAACAAAAAABUAAAARgAAAAIAAAAAAFUAAABHAAAAAgAAAAAAVgAAAEgAAAACAAAAAABmAAAANAAAAAIAAAAAAGcAAABJAAAAAgAAAAAAaAAAAEoAAAACAAAAAABpAAAASwAAAAIAAAAAAGoAAABMAAAAAgAAAAAAawAAAE0AAAACAAAAAABsAAAATgAAAAIAAAAAAG0AAABPAAAAAgAAAAAAbgAAAFAAAAACAAAAAABvAAAAUQAAAAIAAAAAAHAAAABSAAAAAgAAAAAAcQAAAFMAAAACAAAAAAByAAAAVAAAAAIAAAAAAHMAAABVAAAAAgAAAAAAdAAAAFYAAAACAAAAAAB1AAAAVwAAAAIAAAAAAHYAAABYAAAAAgAAAAAAdwAAAFkAAAACAAAAAAB4AAAAWgAAAAIAAAAAAHkAAABbAAAAAgAAAAAAegAAAFwAAAACAAAAAAB7AAAAXQAAAAIAAAAAAHwAAABeAAAAAgAAAAAAfQAAAF8AAAACAAAAAAB+AAAAYAAAAAIAAAAAAH8AAABhAAAAAgAAAAAAgAAAAGIAAAACAAAAAACBAAAAYwAAAAIAAAAAAIIAAABkAAAAAgAAAAAAgwAAAGUAAAACAAAAAACEAAAAZgAAAAIAAAAAAIUAAABnAAAAAgAAAAAAhgAAAGgAAAACAAAAAACHAAAAaQAAAAIAAAAAAIgAAABqAAAAAgAAAAAAiQAAAGsAAAACAAAAAACKAAAAbAAAAAIAAAAAAIsAAABtAAAAAgAAAAAAjAAAAG4AAAACAAAAAACNAAAABwAtAAAAAgAAAAAAUgAAAAIAAAAAAFMAAAACAAAAAABUAAAAAgAAAAAAVQAAAAIAAAAAAFYAAAACAAAAAABmAAAAAgAAAAAAZwAAAAIAAAAAAGgAAAACAAAAAABpAAAAAgAAAAAAagAAAAIAAAAAAGsAAAACAAAAAABsAAAAAgAAAAAAbQAAAAIAAAAAAG4AAAACAAAAAABvAAAAAgAAAAAAcAAAAAIAAAAAAHEAAAACAAAAAAByAAAAAgAAAAAAcwAAAAIAAAAAAHQAAAACAAAAAAB1AAAAAgAAAAAAdgAAAAIAAAAAAHcAAAACAAAAAAB4AAAAAgAAAAAAeQAAAAIAAAAAAHoAAAACAAAAAAB7AAAAAgAAAAAAfAAAAAIAAAAAAH0AAAACAAAAAAB+AAAAAgAAAAAAfwAAAAIAAAAAAIAAAAACAAAAAACBAAAAAgAAAAAAggAAAAIAAAAAAIMAAAACAAAAAACEAAAAAgAAAAAAhQAAAAIAAAAAAIYAAAACAAAAAACHAAAAAgAAAAAAiAAAAAIAAAAAAIkAAAACAAAAAACKAAAAAgAAAAAAiwAAAAIAAAAAAIwAAAACAAAAAACNAAAABwAAAAAABwABAAAAAgABAAAABwAAAAcAAQAAAAIAAAAAABoAAAACAAEAAAAHAAAABwAAAAAACgAAAAAABAABAAAAAAAAAAcAAgAAAAIAAAAAAFEAAAACAAEAAAAHAAAABwACAAAAAgAAAAAAGgAAAAIAAAAAAI4AAAAKAAAAAAAKAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcACgAAAAcABAAAAAQAAQAAAAAAAAACAAAAAABRAAAABgA1AAAABgA/AAAABwAEAAAABAABAAAAAAAAAAIAAAAAAFEAAAAGAEgAAAAGAG8AAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAUQAAAAYANAAAAAYAQAAAAAcABAAAAAQAAQAAAAAAAAACAAAAAABRAAAABgBJAAAABgBwAAAABwAEAAAABAABAAAAAAAAAAIAAAAAAFEAAAAGAIIAAAAGAHEAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAUQAAAAYAgwAAAAYAcgAAAAcABAAAAAQAAQAAAAAAAAACAAAAAABRAAAABgCEAAAABgBzAAAABwAEAAAABAABAAAAAAAAAAIAAAAAAFEAAAAGAIUAAAAGAHQAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAUQAAAAYAhgAAAAYAdQAAAAcABAAAAAQAAQAAAAAAAAACAAAAAABRAAAABgCHAAAABgB2AAAABwAKAAAABwAEAAAABAABAAAAAAAAAAIAAAAAAFEAAAAGADUAAAAGAD8AAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAUQAAAAYASAAAAAYAbwAAAAcABAAAAAQAAQAAAAAAAAACAAAAAABRAAAABgA0AAAABgBAAAAABwAEAAAABAABAAAAAAAAAAIAAAAAAFEAAAAGAEkAAAAGAHAAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAUQAAAAYAggAAAAYAcQAAAAcABAAAAAQAAQAAAAAAAAACAAAAAABRAAAABgCDAAAABgByAAAABwAEAAAABAABAAAAAAAAAAIAAAAAAFEAAAAGAIQAAAAGAHMAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAUQAAAAYAhQAAAAYAdAAAAAcABAAAAAQAAQAAAAAAAAACAAAAAABRAAAABgCGAAAABgB1AAAABwAEAAAABAABAAAAAAAAAAIAAAAAAFEAAAAGAIcAAAAGAHYAAAABAAwAAAAAAFYAAAABAAEAAQAMAAAAAABXAAAAAQABAAEADAAAAAAAWAAAAAEAAQABAAwAAAAAAFkAAAABAAEAAQAMAAAAAABaAAAAAQABAAEADAAAAAAAWwAAAAEAAQABAAwAAAAAAFwAAAABAAEAAQAMAAAAAABdAAAAAQABAAEADAAAAAAAXgAAAAEAAQABAAwAAAAAAF8AAAABAAEAAQAMAAAAAABgAAAAAQABAAEADAAAAAAAYQAAAAEAAQABAAwAAAAAAGIAAAABAAEAAQAMAAAAAABjAAAAAQABAAEADAAAAAAAZAAAAAEAAQABAAwAAAAAAGUAAAABAAEAAQAMAAAAAABmAAAAAQABAAEADAAAAAAAZwAAAAEAAQABAAwAAAAAAGgAAAABAAEAAQAMAAAAAABpAAAAAQABAAEADAAAAAAAagAAAAEAAQABAAwAAAAAAGsAAAABAAEAAQAMAAAAAABsAAAAAQABAAEADAAAAAAAbQAAAAEAAQABAAwAAAAAAG4AAAABAAEAAQAMAAAAAABvAAAAAQABAAEADAAAAAAAcAAAAAEAAQABAAwAAAAAAHEAAAABAAEAAQAMAAAAAAByAAAAAQABAAEADAAAAAAAcwAAAAEAAQABAAwAAAAAAHQAAAABAAEAAQAMAAAAAAB1AAAAAQABAAEADAAAAAAAdgAAAAEAAQABAAwAAAAAAHcAAAABAAEAAQAMAAAAAAB4AAAAAQABAAEADAAAAAAAeQAAAAEAAQABAAwAAAAAAHoAAAABAAEAAQAMAAAAAAB7AAAAAQABAAEADAAAAAAAfAAAAAEAAQABAAwAAAAAAH0AAAABAAEAAQAGAAcAAAAKAAEAAAB3AAAAAgAAAAAApAAAAAoAAwAAAA4AAAACAAAAAABYAAAAFQAAAAIAAAAAAFkAAAAPAAAAAgAAAAAAWgAAAAcAAwAAAAIAAAAAAFgAAAACAAAAAABZAAAAAgAAAAAAWgAAAAcAAAAAAAcAAQAAAAIAAQAAAAcAAAAHAAAAAAACAAEAAAAHAAAABwAAAAAACgAAAAAABAABAAAAAAAAAAcAAgAAAAIAAAAAAFcAAAACAAEAAAAHAAAABwAAAAAACgABAAAAfwAAAAIAAAAAAFoAAAAKAAEAAACIAAAABwACAAAAAgAAAAAAVwAAAAYAdwAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwABAAAABwAEAAAABAABAAAAAAAAAAIAAAAAAFcAAAAGAIkAAAAGAHcAAAAHAAEAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAVwAAAAYAiQAAAAYAdwAAAAEABgAIAAAACgAAAAAACgABAAAAFQAAAAIAAAAAAFwAAAAHAAEAAAACAAAAAABcAAAABwAAAAAABwABAAAAAgAAAAAAVwAAAAcAAAAAAAEABwAAAAAACgAAAAAABAABAAAAAAAAAAcAAwAAAAIAAAAAAFsAAAACAAAAAABXAAAAAgABAAAABwAAAAcAAAAAAAoAAAAAAAoAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwABAAAABwAEAAAABAABAAAAAAAAAAIAAAAAAFcAAAAGAIkAAAAGAHcAAAAHAAAAAAABAAYAigAAAAQAAQAAAAAAAAAGAHgAAAAEAAEAAAAAAAAABgAuAAAAAwAEAAAAAAAAAAAAAwACAAEAAAAHAAAABAABAAAAAAAAAAYALwAAAAMABAAAAAAAAAAAAAMAAgABAAAABwAAAAQAAQAAAAAAAAAGAD8AAAADAAQAAAAAAAAAAAADAAIAAQAAAAcAAAAEAAEAAAAAAAAABgBvAAAAAgABAAAABAAAAAQAAQAAAAAAAAADAAIAAQAAAAQAAAAEAAEAAAAAAAAABgBAAAAAAgABAAAAAgAAAAQAAQAAAAAAAAADAAIAAQAAAAIAAAAEAAEAAAAAAAAABgBwAAAAAgABAAAAAgAAAAQAAQAAAAAAAAADAAIAAQAAAAIAAAAEAAEAAAAAAAAABgBxAAAAAwAEAAAAAAAAAAAAAwACAAEAAAAHAAAABAABAAAAAAAAAAYAcgAAAAMABAAAAAAAAAAAAAMAAgABAAAABwAAAAQAAQAAAAAAAAAGAHMAAAADAAQAAAAAAAAAAAADAAIAAQAAAAcAAAAEAAEAAAAAAAAABgB0AAAAAwAEAAAAAAAAAAAAAwACAAEAAAAHAAAABAABAAAAAAAAAAYAdQAAAAMABAAAAAAAAAAAAAMAAgABAAAABwAAAAQAAQAAAAAAAAAGAHYAAAADAAQAAAAAAAAAAAADAAIAAQAAAAcAAAAEAAEAAAAAAAAABgA/AAAAAwAEAAAAAAAAAAAAAwACAAEAAAAHAAAABAABAAAAAAAAAAYAQAAAAAIAAQAAAAIAAAAEAAEAAAAAAAAAAwACAAEAAAACAAAABAABAAAAAAAAAAYAQQAAAAIAAQAAAAIAAAAEAAEAAAAAAAAAAwACAAEAAAACAAAABAABAAAAAAAAAAYAQgAAAAMABAAAAAAAAAAAAAMAAgABAAAABwAAAAQAAQAAAAAAAAAGAEMAAAADAAQAAAAAAAAAAAADAAIAAQAAAAcAAAAEAAEAAAAAAAAABgB3AAAAAwAEAAAAAAAAAAAAAwACAAEAAAAHAAAABAABAAAAAAAAAAIAAAAHAAAAAAAKAAAAAAADAAAABwAAAAAACgAAAAAABgAEAAAAAgAAAAAAGgAAAAoACgAAAD8AAAACAAAAAACVAAAAbwAAAAIAAAAAAJYAAABAAAAAAgAAAAAAlwAAAHAAAAACAAAAAACYAAAAcQAAAAIAAAAAAJkAAAByAAAAAgAAAAAAmgAAAHMAAAACAAAAAACbAAAAdAAAAAIAAAAAAJwAAAB1AAAAAgAAAAAAnQAAAHYAAAACAAAAAACeAAAACgAoAAAASAAAAAIAAAAAAGYAAAA0AAAAAgAAAAAAZwAAAEkAAAACAAAAAABoAAAASgAAAAIAAAAAAGkAAABLAAAAAgAAAAAAagAAAEwAAAACAAAAAABrAAAATQAAAAIAAAAAAGwAAABOAAAAAgAAAAAAbQAAAE8AAAACAAAAAABuAAAAUAAAAAIAAAAAAG8AAABRAAAAAgAAAAAAcAAAAFIAAAACAAAAAABxAAAAUwAAAAIAAAAAAHIAAABUAAAAAgAAAAAAcwAAAFUAAAACAAAAAAB0AAAAVgAAAAIAAAAAAHUAAABXAAAAAgAAAAAAdgAAAFgAAAACAAAAAAB3AAAAWQAAAAIAAAAAAHgAAABaAAAAAgAAAAAAeQAAAFsAAAACAAAAAAB6AAAAXAAAAAIAAAAAAHsAAABdAAAAAgAAAAAAfAAAAF4AAAACAAAAAAB9AAAAXwAAAAIAAAAAAH4AAABgAAAAAgAAAAAAfwAAAGEAAAACAAAAAACAAAAAYgAAAAIAAAAAAIEAAABjAAAAAgAAAAAAggAAAGQAAAACAAAAAACDAAAAZQAAAAIAAAAAAIQAAABmAAAAAgAAAAAAhQAAAGcAAAACAAAAAACGAAAAaAAAAAIAAAAAAIcAAABpAAAAAgAAAAAAiAAAAGoAAAACAAAAAACJAAAAawAAAAIAAAAAAIoAAABsAAAAAgAAAAAAiwAAAG0AAAACAAAAAACMAAAAbgAAAAIAAAAAAI0AAAAHAAAAAAAHAAAAAAAHAAAAAAAHAAAAAAAEAAEAAAAAAAAAAAAAABgAAAABAAAAAQAAAAAAAABmAAAAAAAAABkAAAABAAAAAQAAAAAAAABnAAAAAAAAABoAAAABAAAAAQAAAAAAAABoAAAAAAAAABsAAAABAAAAAQAAAAAAAABpAAAAAAAAABwAAAABAAAAAQAAAAAAAABqAAAAAAAAAB0AAAABAAAAAQAAAAAAAABrAAAAAAAAAB4AAAABAAAAAQAAAAAAAABsAAAAAAAAAB8AAAABAAAAAQAAAAAAAABtAAAAAAAAACAAAAABAAAAAQAAAAAAAABuAAAAAAAAACEAAAABAAAAAQAAAAAAAABvAAAAAAAAACIAAAABAAAAAQAAAAAAAABwAAAAAAAAACMAAAABAAAAAQAAAAAAAABxAAAAAAAAACQAAAABAAAAAQAAAAAAAAByAAAAAAAAACUAAAABAAAAAQAAAAAAAABzAAAAAAAAACYAAAABAAAAAQAAAAAAAAB0AAAAAAAAACcAAAABAAAAAQAAAAAAAAB1AAAAAAAAACgAAAABAAAAAQAAAAAAAAB2AAAAAAAAACkAAAABAAAAAQAAAAAAAAB3AAAAAAAAACoAAAABAAAAAQAAAAAAAAB4AAAAAAAAACsAAAABAAAAAQAAAAAAAAB5AAAAAAAAACwAAAABAAAAAQAAAAAAAAB6AAAAAAAAAC0AAAABAAAAAQAAAAAAAAB7AAAAAAAAAC4AAAABAAAAAQAAAAAAAAB8AAAAAAAAAC8AAAABAAAAAQAAAAAAAAB9AAAAAAAAADAAAAABAAAAAQAAAAAAAAB+AAAAAAAAADEAAAABAAAAAQAAAAAAAAB/AAAAAAAAADIAAAABAAAAAQAAAAAAAACAAAAAAAAAADMAAAABAAAAAQAAAAAAAACBAAAAAAAAADQAAAABAAAAAQAAAAAAAACCAAAAAAAAADUAAAABAAAAAQAAAAAAAACDAAAAAAAAADYAAAABAAAAAQAAAAAAAACEAAAAAAAAADcAAAABAAAAAQAAAAAAAACFAAAAAAAAADgAAAABAAAAAQAAAAAAAACGAAAAAAAAADkAAAABAAAAAQAAAAAAAACHAAAAAAAAADoAAAABAAAAAQAAAAAAAACIAAAAAAAAADsAAAABAAAAAQAAAAAAAACJAAAAAAAAADwAAAABAAAAAQAAAAAAAACKAAAAAAAAAD0AAAABAAAAAQAAAAAAAACLAAAAAAAAAD4AAAABAAAAAQAAAAAAAACMAAAAAAAAAD8AAAABAAAAAQAAAAAAAACNAAAAAAAAAEAAAAAAAAAAAAAAAAMAAAAAAAAAowAAAAoAAAAAAKQAAAAEAAEAAAAAAAAApQAAAAIAAAAAAFEAAAA=", cur_sc, $P5003, $P5005
    .const "LexInfo" $P5001 = "cuid_1_1346277585.603"
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 0
    $P5003 = $P5001."set_static_lexpad_value"("GLOBALish", $P5002)
    .const "LexInfo" $P5004 = "cuid_1_1346277585.603"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1346277585.603"
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 0
    $P5003 = $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5004 = "cuid_1_1346277585.603"
    $P5005 = $P5004."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_2_1346277585.603" 
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 2
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_3_1346277585.603" 
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 3
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_4_1346277585.603" 
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 4
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_5_1346277585.603" 
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 5
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_6_1346277585.603" 
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 6
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_7_1346277585.603" 
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 7
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_8_1346277585.603" 
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 8
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_9_1346277585.603" 
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 9
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_10_1346277585.603" 
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 10
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_11_1346277585.603" 
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 11
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_12_1346277585.603" 
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 12
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_13_1346277585.603" 
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 13
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_14_1346277585.603" 
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 14
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_15_1346277585.603" 
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 15
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_16_1346277585.603" 
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 16
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_17_1346277585.603" 
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 17
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_18_1346277585.603" 
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 18
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_19_1346277585.603" 
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 19
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_20_1346277585.603" 
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 20
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_21_1346277585.603" 
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 21
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_22_1346277585.603" 
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 22
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_23_1346277585.603" 
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 23
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_24_1346277585.603" 
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 24
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_25_1346277585.603" 
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 25
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_26_1346277585.603"
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 1
    $P5003 = $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5004 = "cuid_26_1346277585.603"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_26_1346277585.603"
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 1
    $P5003 = $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5004 = "cuid_26_1346277585.603"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1346277585.603"
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 26
    $P5003 = $P5001."set_static_lexpad_value"("NQPCursorRole", $P5002)
    .const "LexInfo" $P5004 = "cuid_1_1346277585.603"
    $P5005 = $P5004."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_27_1346277585.603" 
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 27
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_28_1346277585.603" 
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 28
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_29_1346277585.603" 
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 29
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_30_1346277585.603" 
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 30
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_31_1346277585.603" 
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 31
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_32_1346277585.603" 
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 32
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_33_1346277585.603" 
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 33
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_34_1346277585.603" 
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 34
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_35_1346277585.603" 
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 35
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_36_1346277585.603" 
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 36
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_37_1346277585.603" 
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 37
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_38_1346277585.603" 
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 38
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_39_1346277585.603" 
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 39
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_40_1346277585.603" 
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 40
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_41_1346277585.603" 
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 41
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_42_1346277585.603" 
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 42
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_43_1346277585.603" 
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 43
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_44_1346277585.603" 
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 44
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_45_1346277585.603" 
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 45
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_46_1346277585.603" 
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 46
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_47_1346277585.603" 
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 47
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_48_1346277585.603" 
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 48
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_49_1346277585.603" 
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 49
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_50_1346277585.603" 
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 50
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_51_1346277585.603" 
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 51
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_52_1346277585.603" 
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 52
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_53_1346277585.603" 
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 53
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_54_1346277585.603" 
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 54
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_55_1346277585.603" 
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 55
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_56_1346277585.603" 
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 56
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_57_1346277585.603" 
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 57
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_58_1346277585.603" 
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 58
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_59_1346277585.603" 
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 59
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_60_1346277585.603" 
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 60
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_61_1346277585.603" 
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 61
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_62_1346277585.603" 
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 62
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_63_1346277585.603" 
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 63
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_64_1346277585.603" 
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 64
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_65_1346277585.603" 
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 65
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_66_1346277585.603" 
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 66
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_67_1346277585.603" 
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 67
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_67_1346277585.603"
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 26
    $P5003 = $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5004 = "cuid_67_1346277585.603"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_67_1346277585.603"
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 26
    $P5003 = $P5001."set_static_lexpad_value"("$?ROLE", $P5002)
    .const "LexInfo" $P5004 = "cuid_67_1346277585.603"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1346277585.603"
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 68
    $P5003 = $P5001."set_static_lexpad_value"("NQPMatch", $P5002)
    .const "LexInfo" $P5004 = "cuid_1_1346277585.603"
    $P5005 = $P5004."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_68_1346277585.603" 
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 69
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_69_1346277585.603" 
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 70
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_70_1346277585.603" 
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 71
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_71_1346277585.603" 
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 72
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_72_1346277585.603" 
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 73
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_73_1346277585.603" 
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 74
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_74_1346277585.603" 
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 75
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_75_1346277585.603" 
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 76
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_76_1346277585.603" 
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 77
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_77_1346277585.603" 
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 78
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_78_1346277585.603" 
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 79
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_79_1346277585.603" 
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 80
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_80_1346277585.603"
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 68
    $P5003 = $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5004 = "cuid_80_1346277585.603"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_80_1346277585.603"
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 68
    $P5003 = $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5004 = "cuid_80_1346277585.603"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1346277585.603"
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 81
    $P5003 = $P5001."set_static_lexpad_value"("NQPCursor", $P5002)
    .const "LexInfo" $P5004 = "cuid_1_1346277585.603"
    $P5005 = $P5004."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_81_1346277585.603" 
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 82
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_82_1346277585.603" 
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 83
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_83_1346277585.603" 
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 84
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_84_1346277585.603" 
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 85
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_85_1346277585.603" 
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 86
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_86_1346277585.603"
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 81
    $P5003 = $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5004 = "cuid_86_1346277585.603"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_86_1346277585.603"
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 81
    $P5003 = $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5004 = "cuid_86_1346277585.603"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1346277585.603"
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 87
    $P5003 = $P5001."set_static_lexpad_value"("NQPRegexMethod", $P5002)
    .const "LexInfo" $P5004 = "cuid_1_1346277585.603"
    $P5005 = $P5004."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_97_1346277585.603" 
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 88
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_98_1346277585.603" 
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 89
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_99_1346277585.603" 
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 90
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_100_1346277585.603"
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 87
    $P5003 = $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5004 = "cuid_100_1346277585.603"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_100_1346277585.603"
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 87
    $P5003 = $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5004 = "cuid_100_1346277585.603"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1346277585.603"
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 91
    $P5003 = $P5001."set_static_lexpad_value"("NQPRegex", $P5002)
    .const "LexInfo" $P5004 = "cuid_1_1346277585.603"
    $P5005 = $P5004."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_101_1346277585.603" 
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 92
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_102_1346277585.603"
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 91
    $P5003 = $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5004 = "cuid_102_1346277585.603"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_102_1346277585.603"
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 91
    $P5003 = $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5004 = "cuid_102_1346277585.603"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1346277585.603"
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 93
    $P5003 = $P5001."set_static_lexpad_value"("EXPORT", $P5002)
    .const "LexInfo" $P5004 = "cuid_1_1346277585.603"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_103_1346277585.603"
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 94
    $P5003 = $P5001."set_static_lexpad_value"("DEFAULT", $P5002)
    .const "LexInfo" $P5004 = "cuid_103_1346277585.603"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_104_1346277585.603"
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 94
    $P5003 = $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5004 = "cuid_104_1346277585.603"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_104_1346277585.603"
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 94
    $P5003 = $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5004 = "cuid_104_1346277585.603"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_103_1346277585.603"
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 93
    $P5003 = $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5004 = "cuid_103_1346277585.603"
    $P5005 = $P5004."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_103_1346277585.603"
    nqp_get_sc_object $P5002, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 93
    $P5003 = $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5004 = "cuid_103_1346277585.603"
    $P5005 = $P5004."finish_static_lexpad"()
    nqp_get_sc_object $P5001, "C93A2896AF049E45B5F868F2B78F46945E34D3FC-1346277585.638", 0
    set_hll_global "GLOBAL", $P5001
    .return () 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_139_1346277585.603") :anon :lex :outer("cuid_140_1346277585.603")
.annotate 'file', "src\\stage2\\QRegex.nqp"
    new $P5001, 'ResizablePMCArray'
    .const 'Sub' $P5002 = "cuid_2_1346277585.603" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_3_1346277585.603" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_4_1346277585.603" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_5_1346277585.603" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_6_1346277585.603" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_7_1346277585.603" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_8_1346277585.603" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_9_1346277585.603" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_10_1346277585.603" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_11_1346277585.603" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_12_1346277585.603" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_13_1346277585.603" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_14_1346277585.603" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_15_1346277585.603" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_16_1346277585.603" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_17_1346277585.603" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_18_1346277585.603" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_19_1346277585.603" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_20_1346277585.603" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_21_1346277585.603" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_22_1346277585.603" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_23_1346277585.603" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_24_1346277585.603" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_25_1346277585.603" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_27_1346277585.603" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_28_1346277585.603" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_29_1346277585.603" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_30_1346277585.603" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_31_1346277585.603" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_32_1346277585.603" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_33_1346277585.603" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_34_1346277585.603" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_35_1346277585.603" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_36_1346277585.603" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_37_1346277585.603" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_38_1346277585.603" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_39_1346277585.603" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_40_1346277585.603" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_41_1346277585.603" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_42_1346277585.603" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_43_1346277585.603" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_44_1346277585.603" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_45_1346277585.603" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_46_1346277585.603" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_47_1346277585.603" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_48_1346277585.603" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_49_1346277585.603" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_50_1346277585.603" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_51_1346277585.603" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_52_1346277585.603" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_53_1346277585.603" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_54_1346277585.603" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_55_1346277585.603" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_56_1346277585.603" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_57_1346277585.603" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_58_1346277585.603" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_59_1346277585.603" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_60_1346277585.603" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_61_1346277585.603" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_62_1346277585.603" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_63_1346277585.603" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_64_1346277585.603" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_65_1346277585.603" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_66_1346277585.603" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_67_1346277585.603" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_68_1346277585.603" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_69_1346277585.603" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_70_1346277585.603" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_71_1346277585.603" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_72_1346277585.603" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_73_1346277585.603" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_74_1346277585.603" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_75_1346277585.603" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_76_1346277585.603" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_77_1346277585.603" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_78_1346277585.603" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_79_1346277585.603" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_81_1346277585.603" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_82_1346277585.603" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_83_1346277585.603" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_84_1346277585.603" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_85_1346277585.603" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_97_1346277585.603" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_98_1346277585.603" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_99_1346277585.603" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_101_1346277585.603" 
    push $P5001, $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_141_1346277585.603") :load
.annotate 'file', "src\\stage2\\QRegex.nqp"
    .const 'Sub' $P5001 = "cuid_1_1346277585.603" 
    $P5002 = $P5001()
    .return ($P5002) 
.end