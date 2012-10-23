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
.sub "" :subid("cuid_1_1351011918.305") :anon :lex
.annotate 'file', "src\\stage2\\QRegex.nqp"
    .param pmc _lex_param_0 :slurpy 
    .const 'Sub' $P5020 = 'cuid_28_1351011918.305' 
    capture_lex $P5020 
    .const 'Sub' $P5020 = 'cuid_70_1351011918.305' 
    capture_lex $P5020 
    .const 'Sub' $P5020 = 'cuid_83_1351011918.305' 
    capture_lex $P5020 
    .const 'Sub' $P5020 = 'cuid_89_1351011918.305' 
    capture_lex $P5020 
    .const 'Sub' $P5020 = 'cuid_106_1351011918.305' 
    capture_lex $P5020 
    .const 'Sub' $P5020 = 'cuid_108_1351011918.305' 
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
    if $I5001 goto unless98_end240 
    can $I5002, ctxsave, "ctxsave"
    box $P5004, $I5002
    set $P5003, $P5004
    unless $I5002 goto if99_end242 
    $P5002 = ctxsave."ctxsave"()
    set $P5003, $P5002
  if99_end242:
  unless98_end240:
.annotate 'line', 1
    .const 'Sub' $P5005 = 'cuid_28_1351011918.305' 
    capture_lex $P5005
    $P5006 = $P5005()
    .const 'Sub' $P5007 = 'cuid_70_1351011918.305' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_83_1351011918.305' 
    capture_lex $P5008
    $P5009 = $P5008()
    .const 'Sub' $P5010 = 'cuid_89_1351011918.305' 
    capture_lex $P5010
    $P5011 = $P5010()
    .const 'Sub' $P5012 = 'cuid_106_1351011918.305' 
    capture_lex $P5012
    $P5013 = $P5012()
    .const 'Sub' $P5014 = 'cuid_108_1351011918.305' 
    capture_lex $P5014
    $P5015 = $P5014()
    unless _lex_param_0 goto if303_end903 
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P5016, "ModuleLoader"
    getinterp $P5018
    set $P5017, $P5018["context"]
    $P5019 = $P5016."set_mainline_module"($P5017)
  if303_end903:
    .return () 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_28_1351011918.305") :anon :lex :outer("cuid_1_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 7
    .const 'Sub' $P5058 = 'cuid_2_1351011918.305' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_3_1351011918.305' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_4_1351011918.305' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_5_1351011918.305' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_6_1351011918.305' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_7_1351011918.305' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_8_1351011918.305' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_9_1351011918.305' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_10_1351011918.305' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_11_1351011918.305' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_12_1351011918.305' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_13_1351011918.305' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_14_1351011918.305' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_15_1351011918.305' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_16_1351011918.305' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_17_1351011918.305' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_18_1351011918.305' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_19_1351011918.305' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_20_1351011918.305' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_21_1351011918.305' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_22_1351011918.305' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_23_1351011918.305' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_24_1351011918.305' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_25_1351011918.305' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_26_1351011918.305' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_27_1351011918.305' 
    capture_lex $P5058 
    .lex "%cclass_code", $P101 
    .lex "$?PACKAGE", $P102 
    .lex "$?CLASS", $P103 
    new $P5001, 'Hash'
    set $P101, $P5001
.annotate 'line', 79
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
    .const 'Sub' $P5032 = 'cuid_2_1351011918.305' 
    capture_lex $P5032
    .const 'Sub' $P5033 = 'cuid_3_1351011918.305' 
    capture_lex $P5033
    .const 'Sub' $P5034 = 'cuid_4_1351011918.305' 
    capture_lex $P5034
    .const 'Sub' $P5035 = 'cuid_5_1351011918.305' 
    capture_lex $P5035
    .const 'Sub' $P5036 = 'cuid_6_1351011918.305' 
    capture_lex $P5036
    .const 'Sub' $P5037 = 'cuid_7_1351011918.305' 
    capture_lex $P5037
    .const 'Sub' $P5038 = 'cuid_8_1351011918.305' 
    capture_lex $P5038
    .const 'Sub' $P5039 = 'cuid_9_1351011918.305' 
    capture_lex $P5039
    .const 'Sub' $P5040 = 'cuid_10_1351011918.305' 
    capture_lex $P5040
    .const 'Sub' $P5041 = 'cuid_11_1351011918.305' 
    capture_lex $P5041
    .const 'Sub' $P5042 = 'cuid_12_1351011918.305' 
    capture_lex $P5042
    .const 'Sub' $P5043 = 'cuid_13_1351011918.305' 
    capture_lex $P5043
    .const 'Sub' $P5044 = 'cuid_14_1351011918.305' 
    capture_lex $P5044
    .const 'Sub' $P5045 = 'cuid_15_1351011918.305' 
    capture_lex $P5045
    .const 'Sub' $P5046 = 'cuid_16_1351011918.305' 
    capture_lex $P5046
    .const 'Sub' $P5047 = 'cuid_17_1351011918.305' 
    capture_lex $P5047
    .const 'Sub' $P5048 = 'cuid_18_1351011918.305' 
    capture_lex $P5048
    .const 'Sub' $P5049 = 'cuid_19_1351011918.305' 
    capture_lex $P5049
    .const 'Sub' $P5050 = 'cuid_20_1351011918.305' 
    capture_lex $P5050
    .const 'Sub' $P5051 = 'cuid_21_1351011918.305' 
    capture_lex $P5051
    .const 'Sub' $P5052 = 'cuid_22_1351011918.305' 
    capture_lex $P5052
    .const 'Sub' $P5053 = 'cuid_23_1351011918.305' 
    capture_lex $P5053
    .const 'Sub' $P5054 = 'cuid_24_1351011918.305' 
    capture_lex $P5054
    .const 'Sub' $P5055 = 'cuid_25_1351011918.305' 
    capture_lex $P5055
    .const 'Sub' $P5056 = 'cuid_26_1351011918.305' 
    capture_lex $P5056
    .const 'Sub' $P5057 = 'cuid_27_1351011918.305' 
    capture_lex $P5057
    .return ($P5057) 
.end
.HLL "nqp"
.namespace []
.sub "new" :subid("cuid_2_1351011918.305") :anon :lex :outer("cuid_28_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 25
    .param pmc _lex_param_0 
    .lex "$new", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P101, $P5001
.annotate 'line', 26
    nqp_decontainerize $P5002, _lex_param_0
    new $P5003, 'ResizablePMCArray'
    new $P5004, 'ResizablePMCArray'
    $P5005 = $P5002."bless"($P5003 :named("states"), $P5004 :named("edges"))
    set $P101, $P5005
.annotate 'line', 27
    $P101."addstate"()
.annotate 'line', 28
    $P101."addstate"()
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "addstate" :subid("cuid_3_1351011918.305") :anon :lex :outer("cuid_28_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 32
    .param pmc _lex_param_0 
    .lex "$id", $I101 
    .lex "self", _lex_param_0 
    set $I101, 0
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 3
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!states"
    set $N5001, $P5003
    set $I5001, $N5001
    set $I101, $I5001
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 3
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!states"
    new $P5007, 'ResizablePMCArray'
    set $P5006[$I101], $P5007
    .return ($I101) 
.end
.HLL "nqp"
.namespace []
.sub "addedge" :subid("cuid_4_1351011918.305") :anon :lex :outer("cuid_28_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 38
    .param pmc _lex_param_0 
    .param int _lex_param_1 
    .param int _lex_param_2 
    .param pmc _lex_param_3 
    .param pmc _lex_param_4 
    .param pmc _lex_param_5 :named("newedge") :optional 
    .param int haz_param_8 :opt_flag 
    if haz_param_8, default251
    box $P5020, 1
    set _lex_param_5, $P5020
  default251:
    .lex "$st", $P101 
    .lex "self", _lex_param_0 
    .lex "$from", _lex_param_1 
    .lex "$to", _lex_param_2 
    .lex "$action", _lex_param_3 
    .lex "$value", _lex_param_4 
    .lex "$newedge", _lex_param_5 
    nqp_get_sc_object $P5001, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P101, $P5001
    unless _lex_param_5 goto if100_end244 
    nqp_decontainerize $P5002, _lex_param_0
    nqp_get_sc_object $P5003, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 3
    box $P5004, 1
    repr_bind_attr_obj $P5002, $P5003, "$!edges", $P5004
  if100_end244:
    set $N5001, _lex_param_2
    set $N5002, 0
    islt $I5001, $N5001, $N5002
    unless $I5001 goto if101_end246 
.annotate 'line', 40
    nqp_decontainerize $P5005, _lex_param_0
    $P5006 = $P5005."addstate"()
    set $I5002, $P5006
    set _lex_param_2, $I5002
  if101_end246:
    nqp_decontainerize $P5008, _lex_param_0
    nqp_get_sc_object $P5009, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 3
    repr_get_attr_obj $P5010, $P5008, $P5009, "$!states"
    set $P5007, $P5010[_lex_param_1]
    unless_null $P5007, fallback247
    nqp_get_sc_object $P5011, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5007, $P5011
  fallback247:
    set $P101, $P5007
    push $P101, _lex_param_3
    nqp_get_sc_object $P5015, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 0
    nqp_get_package_through_who $P5014, $P5015, "QAST"
    get_who $P5013, $P5014
    set $P5012, $P5013["SVal"]
    unless_null $P5012, fallback250
    nqp_get_sc_object $P5016, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5012, $P5016
  fallback250:
    type_check $I5003, _lex_param_4, $P5012
    unless $I5003 goto if102_else248 
.annotate 'line', 43
    $P5017 = _lex_param_4."value"()
    set $P5018, $P5017
    goto if102_end249
  if102_else248:
    set $P5018, _lex_param_4
  if102_end249:
    push $P101, $P5018
    box $P5019, _lex_param_2
    push $P101, $P5019
    .return (_lex_param_2) 
.end
.HLL "nqp"
.namespace []
.sub "states" :subid("cuid_5_1351011918.305") :anon :lex :outer("cuid_28_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 48
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 3
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!states"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "addnode" :subid("cuid_6_1351011918.305") :anon :lex :outer("cuid_28_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 50
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :named("vars_as_generic") :optional 
    .param int haz_param_9 :opt_flag 
    if haz_param_9, default252
    nqp_get_sc_object $P5003, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set _lex_param_2, $P5003
  default252:
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$*vars_as_generic", _lex_param_2 
.annotate 'line', 51
    nqp_decontainerize $P5001, _lex_param_0
    $P5001."regex_nfa"(_lex_param_1, 1, 0)
    nqp_decontainerize $P5002, _lex_param_0
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "regex_nfa" :subid("cuid_7_1351011918.305") :anon :lex :outer("cuid_28_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 55
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param int _lex_param_2 
    .param int _lex_param_3 
    .lex "$method", $P101 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$from", _lex_param_2 
    .lex "$to", _lex_param_3 
    nqp_get_sc_object $P5001, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P101, $P5001
.annotate 'line', 56
    $P5003 = _lex_param_1."rxtype"()
    set $P5002, $P5003
    defined $I5001, $P5002
    if $I5001, defor253
    box $P5004, "concat"
    set $P5002, $P5004
  defor253:
    set $P101, $P5002
.annotate 'line', 57
    nqp_decontainerize $P5006, _lex_param_0
    get_how $P5005, $P5006
    nqp_decontainerize $P5007, _lex_param_0
    $P5008 = $P5005."can"($P5007, $P101)
    unless $P5008 goto if103_else254 
.annotate 'line', 58
    nqp_decontainerize $P5009, _lex_param_0
    set $S5001, $P101
    $P5010 = $P5009.$S5001(_lex_param_1, _lex_param_2, _lex_param_3)
    set $P5013, $P5010
    goto if103_end255
  if103_else254:
.annotate 'line', 59
    nqp_decontainerize $P5011, _lex_param_0
    $P5012 = $P5011."fate"(_lex_param_1, _lex_param_2, _lex_param_3)
    set $P5013, $P5012
  if103_end255:
    .return ($P5013) 
.end
.HLL "nqp"
.namespace []
.sub "fate" :subid("cuid_8_1351011918.305") :anon :lex :outer("cuid_28_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 62
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param int _lex_param_2 
    .param int _lex_param_3 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$from", _lex_param_2 
    .lex "$to", _lex_param_3 
.annotate 'line', 63
    nqp_decontainerize $P5001, _lex_param_0
    find_lex $P5004, "$?PACKAGE"
    get_who $P5003, $P5004
    set $P5002, $P5003["$EDGE_FATE"]
    unless_null $P5002, fallback256
    nqp_get_sc_object $P5005, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5002, $P5005
  fallback256:
    $P5006 = $P5001."addedge"(_lex_param_2, 0, $P5002, 0, 0 :named("newedge"))
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "alt" :subid("cuid_9_1351011918.305") :anon :lex :outer("cuid_28_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 66
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param int _lex_param_2 
    .param int _lex_param_3 
    .const 'Sub' $P5007 = 'cuid_109_1351011918.305' 
    capture_lex $P5007 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$from", _lex_param_2 
    .lex "$to", _lex_param_3 
.annotate 'line', 67
    $P5004 = _lex_param_1."list"()
    set $P5001, $P5004
    iter $P5003, $P5004
  for_next261:
    unless $P5003, for_done263
    shift $P5006, $P5003
  for_redo262:
    .const 'Sub' $P5005 = 'cuid_109_1351011918.305' 
    capture_lex $P5005
    $P5001 = $P5005($P5006)
    goto for_next261
  for_done263:
    .return (_lex_param_3) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_109_1351011918.305") :anon :lex :outer("cuid_9_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 67
    .param pmc _lex_param_0 
    .lex "$st", $I101 
    .lex "$_", _lex_param_0 
    set $I101, 0
.annotate 'line', 68
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
    unless $I5004 goto if105_end260 
    set $N5003, $I101
    set $N5004, 0
    isgt $I5006, $N5003, $N5004
    set $I5007, $I5006
  if105_end260:
    set $I5008, $I5007
    unless $I5007 goto if104_end258 
    store_lex "$to", $I101
    set $I5008, $I101
  if104_end258:
    .return ($I5008) 
.end
.HLL "nqp"
.namespace []
.sub "anchor" :subid("cuid_10_1351011918.305") :anon :lex :outer("cuid_28_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 74
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param int _lex_param_2 
    .param int _lex_param_3 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$from", _lex_param_2 
    .lex "$to", _lex_param_3 
.annotate 'line', 75
    nqp_decontainerize $P5001, _lex_param_0
    find_lex $P5004, "$?PACKAGE"
    get_who $P5003, $P5004
    set $P5002, $P5003["$EDGE_EPSILON"]
    unless_null $P5002, fallback264
    nqp_get_sc_object $P5005, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5002, $P5005
  fallback264:
    $P5006 = $P5001."addedge"(_lex_param_2, _lex_param_3, $P5002, 0)
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "cclass" :subid("cuid_11_1351011918.305") :anon :lex :outer("cuid_28_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 88
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param int _lex_param_2 
    .param int _lex_param_3 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$from", _lex_param_2 
    .lex "$to", _lex_param_3 
.annotate 'line', 89
    nqp_decontainerize $P5001, _lex_param_0
    find_lex $P5004, "$?PACKAGE"
    get_who $P5003, $P5004
    set $P5002, $P5003["$EDGE_CHARCLASS"]
    unless_null $P5002, fallback265
    nqp_get_sc_object $P5005, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5002, $P5005
  fallback265:
    set $N5002, $P5002
    $P5006 = _lex_param_1."negate"()
    istrue $I5001, $P5006
    set $N5003, $I5001
    add $N5001, $N5002, $N5003
    find_lex $P5008, "%cclass_code"
.annotate 'line', 90
    $P5009 = _lex_param_1."subtype"()
    set $S5002, $P5009
    downcase $S5001, $S5002
    set $P5007, $P5008[$S5001]
    unless_null $P5007, fallback266
    nqp_get_sc_object $P5010, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5007, $P5010
  fallback266:
    $P5011 = $P5001."addedge"(_lex_param_2, _lex_param_3, $N5001, $P5007)
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "concat" :subid("cuid_12_1351011918.305") :anon :lex :outer("cuid_28_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 93
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
.annotate 'line', 95
    $P5001 = _lex_param_1."list"()
    set $N5002, $P5001
    set $N5003, 1
    sub $N5001, $N5002, $N5003
    set $I5001, $N5001
    set $I102, $I5001
  while106_test267:
    set $N5004, _lex_param_2
    set $N5005, 0
    isgt $I5002, $N5004, $N5005
    set $I5004, $I5002
    unless $I5002 goto if107_end273 
    set $N5006, $I101
    set $N5007, $I102
    islt $I5003, $N5006, $N5007
    set $I5004, $I5003
  if107_end273:
    set $I5007, $I5004
    unless $I5004 goto while106_done271 
  while106_redo269:
.annotate 'line', 96
.annotate 'line', 97
    nqp_decontainerize $P5002, _lex_param_0
    set $P5003, _lex_param_1[$I101]
    unless_null $P5003, fallback274
    nqp_get_sc_object $P5004, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5003, $P5004
  fallback274:
    $P5005 = $P5002."regex_nfa"($P5003, _lex_param_2, -1)
    set $I5005, $P5005
    set _lex_param_2, $I5005
    set $N5009, $I101
    set $N5010, 1
    add $N5008, $N5009, $N5010
    set $I5006, $N5008
    set $I101, $I5006
    set $I5007, $I101
    goto while106_test267 
  while106_done271:
    set $N5011, _lex_param_2
    set $N5012, 0
    isgt $I5008, $N5011, $N5012
    set $I5010, $I5008
    unless $I5008 goto if109_end278 
    set $N5013, $I102
    set $N5014, 0
    isge $I5009, $N5013, $N5014
    set $I5010, $I5009
  if109_end278:
    unless $I5010 goto if108_else275 
.annotate 'line', 100
    nqp_decontainerize $P5006, _lex_param_0
    set $P5007, _lex_param_1[$I101]
    unless_null $P5007, fallback279
    nqp_get_sc_object $P5008, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5007, $P5008
  fallback279:
    $P5009 = $P5006."regex_nfa"($P5007, _lex_param_2, _lex_param_3)
    set $P5010, $P5009
    goto if108_end276
  if108_else275:
    box $P5011, _lex_param_3
    set $P5010, $P5011
  if108_end276:
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "enumcharlist" :subid("cuid_13_1351011918.305") :anon :lex :outer("cuid_28_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 103
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param int _lex_param_2 
    .param int _lex_param_3 
    .lex "$charlist", $P101 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$from", _lex_param_2 
    .lex "$to", _lex_param_3 
    nqp_get_sc_object $P5001, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P101, $P5001
    set $P5002, _lex_param_1[0]
    unless_null $P5002, fallback280
    nqp_get_sc_object $P5003, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5002, $P5003
  fallback280:
    set $P101, $P5002
.annotate 'line', 105
    $P5004 = _lex_param_1."subtype"()
    set $S5001, $P5004
    iseq $I5001, $S5001, "zerowidth"
    unless $I5001 goto if110_else281 
.annotate 'line', 106
    nqp_decontainerize $P5005, _lex_param_0
    find_lex $P5008, "$?PACKAGE"
    get_who $P5007, $P5008
    set $P5006, $P5007["$EDGE_CHARLIST"]
    unless_null $P5006, fallback283
    nqp_get_sc_object $P5009, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5006, $P5009
  fallback283:
    set $N5002, $P5006
    $P5010 = _lex_param_1."negate"()
    istrue $I5002, $P5010
    set $N5003, $I5002
    add $N5001, $N5002, $N5003
    $P5011 = $P5005."addedge"(_lex_param_2, -1, $N5001, $P101)
    set $I5003, $P5011
    set _lex_param_2, $I5003
.annotate 'line', 107
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5015, "$?PACKAGE"
    get_who $P5014, $P5015
    set $P5013, $P5014["$EDGE_FATE"]
    unless_null $P5013, fallback284
    nqp_get_sc_object $P5016, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5013, $P5016
  fallback284:
    $P5017 = $P5012."addedge"(_lex_param_2, 0, $P5013, 0)
    set $P5025, $P5017
    goto if110_end282
  if110_else281:
.annotate 'line', 109
.annotate 'line', 110
    nqp_decontainerize $P5018, _lex_param_0
    find_lex $P5021, "$?PACKAGE"
    get_who $P5020, $P5021
    set $P5019, $P5020["$EDGE_CHARLIST"]
    unless_null $P5019, fallback285
    nqp_get_sc_object $P5022, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5019, $P5022
  fallback285:
    set $N5005, $P5019
    $P5023 = _lex_param_1."negate"()
    istrue $I5004, $P5023
    set $N5006, $I5004
    add $N5004, $N5005, $N5006
    $P5024 = $P5018."addedge"(_lex_param_2, _lex_param_3, $N5004, $P101)
    set $P5025, $P5024
  if110_end282:
    .return ($P5025) 
.end
.HLL "nqp"
.namespace []
.sub "literal" :subid("cuid_14_1351011918.305") :anon :lex :outer("cuid_28_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 114
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param int _lex_param_2 
    .param int _lex_param_3 
    .const 'Sub' $P5016 = 'cuid_110_1351011918.305' 
    capture_lex $P5016 
    .const 'Sub' $P5016 = 'cuid_111_1351011918.305' 
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
    unless_null $P5001, fallback286
    nqp_get_sc_object $P5002, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5001, $P5002
  fallback286:
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
    unless $I5003 goto if111_else287 
.annotate 'line', 117
.annotate 'line', 118
    $P5003 = _lex_param_1."subtype"()
    set $S5002, $P5003
    iseq $I5004, $S5002, "ignorecase"
    unless $I5004 goto if112_else289 
    .const 'Sub' $P5004 = 'cuid_110_1351011918.305' 
    capture_lex $P5004
    $P5005 = $P5004()
    set $P5008, $P5005
    goto if112_end290
  if112_else289:
    .const 'Sub' $P5006 = 'cuid_111_1351011918.305' 
    capture_lex $P5006
    $P5007 = $P5006()
    set $P5008, $P5007
  if112_end290:
    set $P5015, $P5008
    goto if111_end288
  if111_else287:
.annotate 'line', 138
.annotate 'line', 139
    nqp_decontainerize $P5009, _lex_param_0
    find_lex $P5012, "$?PACKAGE"
    get_who $P5011, $P5012
    set $P5010, $P5011["$EDGE_EPSILON"]
    unless_null $P5010, fallback308
    nqp_get_sc_object $P5013, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5010, $P5013
  fallback308:
    $P5014 = $P5009."addedge"(_lex_param_2, _lex_param_3, $P5010, 0)
    set $P5015, $P5014
  if111_end288:
    .return ($P5015) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_110_1351011918.305") :anon :lex :outer("cuid_14_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 118
    .lex "$litconst_lc", $S101 
    .lex "$litconst_uc", $S102 
    set $S101, ""
    set $S102, ""
    find_lex $P5002, "$node"
    set $P5001, $P5002[0]
    unless_null $P5001, fallback291
    nqp_get_sc_object $P5003, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5001, $P5003
  fallback291:
    set $S5002, $P5001
    downcase $S5001, $S5002
    set $S101, $S5001
    find_lex $P5005, "$node"
    set $P5004, $P5005[0]
    unless_null $P5004, fallback292
    nqp_get_sc_object $P5006, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5004, $P5006
  fallback292:
    set $S5004, $P5004
    upcase $S5003, $S5004
    set $S102, $S5003
  while113_test293:
    find_lex $I5002, "$i"
    set $N5001, $I5002
    find_lex $I5003, "$litlen"
    set $N5002, $I5003
    islt $I5001, $N5001, $N5002
    set $I5012, $I5001
    unless $I5001 goto while113_done297 
  while113_redo295:
.annotate 'line', 121
.annotate 'line', 122
    find_lex $P5008, "self"
    nqp_decontainerize $P5007, $P5008
    find_lex $I5004, "$from"
    find_lex $P5011, "$?PACKAGE"
    get_who $P5010, $P5011
    set $P5009, $P5010["$EDGE_CODEPOINT_I"]
    unless_null $P5009, fallback298
    nqp_get_sc_object $P5012, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5009, $P5012
  fallback298:
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
    goto while113_test293 
  while113_done297:
.annotate 'line', 126
    find_lex $P5018, "self"
    nqp_decontainerize $P5017, $P5018
    find_lex $I5013, "$from"
    find_lex $I5014, "$to"
    find_lex $P5021, "$?PACKAGE"
    get_who $P5020, $P5021
    set $P5019, $P5020["$EDGE_CODEPOINT_I"]
    unless_null $P5019, fallback299
    nqp_get_sc_object $P5022, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5019, $P5022
  fallback299:
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
.sub "" :subid("cuid_111_1351011918.305") :anon :lex :outer("cuid_14_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 129
    .lex "$litconst", $S101 
    set $S101, ""
    find_lex $P5002, "$node"
    set $P5001, $P5002[0]
    unless_null $P5001, fallback300
    nqp_get_sc_object $P5003, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5001, $P5003
  fallback300:
    set $S5001, $P5001
    set $S101, $S5001
  while114_test301:
    find_lex $I5002, "$i"
    set $N5001, $I5002
    find_lex $I5003, "$litlen"
    set $N5002, $I5003
    islt $I5001, $N5001, $N5002
    set $I5010, $I5001
    unless $I5001 goto while114_done305 
  while114_redo303:
.annotate 'line', 131
.annotate 'line', 132
    find_lex $P5005, "self"
    nqp_decontainerize $P5004, $P5005
    find_lex $I5004, "$from"
    find_lex $P5008, "$?PACKAGE"
    get_who $P5007, $P5008
    set $P5006, $P5007["$EDGE_CODEPOINT"]
    unless_null $P5006, fallback306
    nqp_get_sc_object $P5009, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5006, $P5009
  fallback306:
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
    goto while114_test301 
  while114_done305:
.annotate 'line', 135
    find_lex $P5012, "self"
    nqp_decontainerize $P5011, $P5012
    find_lex $I5011, "$from"
    find_lex $I5012, "$to"
    find_lex $P5015, "$?PACKAGE"
    get_who $P5014, $P5015
    set $P5013, $P5014["$EDGE_CODEPOINT"]
    unless_null $P5013, fallback307
    nqp_get_sc_object $P5016, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5013, $P5016
  fallback307:
    find_lex $I5014, "$i"
    ord $I5013, $S101, $I5014
    $P5017 = $P5011."addedge"($I5011, $I5012, $P5013, $I5013)
    .return ($P5017) 
.end
.HLL "nqp"
.namespace []
.sub "subrule" :subid("cuid_15_1351011918.305") :anon :lex :outer("cuid_28_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 143
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param int _lex_param_2 
    .param int _lex_param_3 
    .const 'Sub' $P5128 = 'cuid_112_1351011918.305' 
    capture_lex $P5128 
    .const 'Sub' $P5128 = 'cuid_113_1351011918.305' 
    capture_lex $P5128 
    .lex "$subtype", $P101 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$from", _lex_param_2 
    .lex "$to", _lex_param_3 
    nqp_get_sc_object $P5001, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P101, $P5001
.annotate 'line', 144
    $P5002 = _lex_param_1."subtype"()
    set $P101, $P5002
.annotate 'line', 145
    $P5003 = _lex_param_1."name"()
    set $S5001, $P5003
    iseq $I5001, $S5001, "before"
    set $I5003, $I5001
    unless $I5001 goto if116_end312 
    $P5004 = _lex_param_1."negate"()
    isfalse $I5002, $P5004
    set $I5003, $I5002
  if116_end312:
    unless $I5003 goto if115_else309 
    .const 'Sub' $P5005 = 'cuid_112_1351011918.305' 
    capture_lex $P5005
    $P5006 = $P5005()
    set $P5127, $P5006
    goto if115_end310
  if115_else309:
    set $S5002, $P101
    isne $I5004, $S5002, "zerowidth"
    set $I5010, $I5004
    unless $I5004 goto if118_end319 
.annotate 'line', 151
    $P5007 = _lex_param_1."name"()
    set $S5003, $P5007
    iseq $I5005, $S5003, "alpha"
    set $I5009, $I5005
    if $I5005 goto unless119_end321 
    set $S5004, $P101
    iseq $I5006, $S5004, "method"
    set $I5008, $I5006
    unless $I5006 goto if120_end323 
.annotate 'line', 153
    nqp_get_sc_object $P5011, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 0
    nqp_get_package_through_who $P5010, $P5011, "QAST"
    get_who $P5009, $P5010
    set $P5008, $P5009["SVal"]
    unless_null $P5008, fallback326
    nqp_get_sc_object $P5012, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5008, $P5012
  fallback326:
    set $P5014, _lex_param_1[0]
    unless_null $P5014, fallback327
    nqp_get_sc_object $P5015, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5014, $P5015
  fallback327:
    set $P5013, $P5014[0]
    unless_null $P5013, fallback328
    nqp_get_sc_object $P5016, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5013, $P5016
  fallback328:
    $P5017 = $P5008."ACCEPTS"($P5013)
    unless $P5017 goto if121_else324 
    set $P5019, _lex_param_1[0]
    unless_null $P5019, fallback329
    nqp_get_sc_object $P5020, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5019, $P5020
  fallback329:
    set $P5018, $P5019[0]
    unless_null $P5018, fallback330
    nqp_get_sc_object $P5021, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5018, $P5021
  fallback330:
    $P5022 = $P5018."value"()
    set $P5027, $P5022
    goto if121_end325
  if121_else324:
    set $P5024, _lex_param_1[0]
    unless_null $P5024, fallback331
    nqp_get_sc_object $P5025, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5024, $P5025
  fallback331:
    set $P5023, $P5024[0]
    unless_null $P5023, fallback332
    nqp_get_sc_object $P5026, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5023, $P5026
  fallback332:
    set $P5027, $P5023
  if121_end325:
    set $S5005, $P5027
    iseq $I5007, $S5005, "alpha"
    set $I5008, $I5007
  if120_end323:
    set $I5009, $I5008
  unless119_end321:
    set $I5010, $I5009
  if118_end319:
    unless $I5010 goto if117_else316 
.annotate 'line', 154
    nqp_decontainerize $P5028, _lex_param_0
    find_lex $P5031, "$?PACKAGE"
    get_who $P5030, $P5031
    set $P5029, $P5030["$EDGE_CHARCLASS"]
    unless_null $P5029, fallback333
    nqp_get_sc_object $P5032, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5029, $P5032
  fallback333:
    set $N5002, $P5029
    $P5033 = _lex_param_1."negate"()
    set $N5003, $P5033
    add $N5001, $N5002, $N5003
    $P5034 = $P5028."addedge"(_lex_param_2, _lex_param_3, $N5001, .CCLASS_ALPHABETIC)
    set $I5011, $P5034
    set _lex_param_3, $I5011
.annotate 'line', 156
    nqp_decontainerize $P5035, _lex_param_0
    find_lex $P5038, "$?PACKAGE"
    get_who $P5037, $P5038
    set $P5036, $P5037["$EDGE_CODEPOINT"]
    unless_null $P5036, fallback334
    nqp_get_sc_object $P5039, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5036, $P5039
  fallback334:
    set $N5005, $P5036
    $P5040 = _lex_param_1."negate"()
    set $N5006, $P5040
    add $N5004, $N5005, $N5006
    $P5041 = $P5035."addedge"(_lex_param_2, _lex_param_3, $N5004, 95)
    set $P5126, $P5041
    goto if117_end317
  if117_else316:
    set $S5006, $P101
    iseq $I5012, $S5006, "zerowidth"
    unless $I5012 goto if122_else335 
.annotate 'line', 158
.annotate 'line', 159
    $P5042 = _lex_param_1."negate"()
    unless $P5042 goto if123_else337 
.annotate 'line', 160
    nqp_decontainerize $P5043, _lex_param_0
    $P5044 = $P5043."fate"(_lex_param_1, _lex_param_2, _lex_param_3)
    set $P5047, $P5044
    goto if123_end338
  if123_else337:
    .const 'Sub' $P5045 = 'cuid_113_1351011918.305' 
    capture_lex $P5045
    $P5046 = $P5045()
    set $P5047, $P5046
  if123_end338:
    set $P5125, $P5047
    goto if122_end336
  if122_else335:
    find_dynamic_lex $P5048, "$*vars_as_generic"
    unless_null $P5048, fallback352
    nqp_get_sc_object $P5051, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 0
    get_who $P5050, $P5051
    set $P5049, $P5050["$vars_as_generic"]
    unless_null $P5049, fallback353
    nqp_get_sc_object $P5052, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5049, $P5052
  fallback353:
    unless_null $P5049, vivi_130354
    die "Contextual $*vars_as_generic not found"
    box $P5053, "Contextual $*vars_as_generic not found"
    set $P5049, $P5053
  vivi_130354:
    set $P5048, $P5049
  fallback352:
    set $P5054, $P5048
    unless $P5048 goto if129_end351 
    set $S5007, $P101
    iseq $I5013, $S5007, "method"
    box $P5055, $I5013
    set $P5054, $P5055
  if129_end351:
    set $P5066, $P5054
    unless $P5054 goto if128_end349 
.annotate 'line', 169
    nqp_get_sc_object $P5059, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 0
    nqp_get_package_through_who $P5058, $P5059, "QAST"
    get_who $P5057, $P5058
    set $P5056, $P5057["SVal"]
    unless_null $P5056, fallback355
    nqp_get_sc_object $P5060, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5056, $P5060
  fallback355:
    set $P5062, _lex_param_1[0]
    unless_null $P5062, fallback356
    nqp_get_sc_object $P5063, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5062, $P5063
  fallback356:
    set $P5061, $P5062[0]
    unless_null $P5061, fallback357
    nqp_get_sc_object $P5064, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5061, $P5064
  fallback357:
    $P5065 = $P5056."ACCEPTS"($P5061)
    set $P5066, $P5065
  if128_end349:
    set $P5072, $P5066
    unless $P5066 goto if127_end347 
    set $P5068, _lex_param_1[0]
    unless_null $P5068, fallback358
    nqp_get_sc_object $P5069, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5068, $P5069
  fallback358:
    set $P5067, $P5068[0]
    unless_null $P5067, fallback359
    nqp_get_sc_object $P5070, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5067, $P5070
  fallback359:
    $P5071 = $P5067."value"()
    set $S5008, $P5071
    iseq $I5014, $S5008, "!INTERPOLATE"
    box $P5073, $I5014
    set $P5072, $P5073
  if127_end347:
    set $P5084, $P5072
    unless $P5072 goto if126_end345 
.annotate 'line', 170
    nqp_get_sc_object $P5077, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 0
    nqp_get_package_through_who $P5076, $P5077, "QAST"
    get_who $P5075, $P5076
    set $P5074, $P5075["Var"]
    unless_null $P5074, fallback360
    nqp_get_sc_object $P5078, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5074, $P5078
  fallback360:
    set $P5080, _lex_param_1[0]
    unless_null $P5080, fallback361
    nqp_get_sc_object $P5081, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5080, $P5081
  fallback361:
    set $P5079, $P5080[1]
    unless_null $P5079, fallback362
    nqp_get_sc_object $P5082, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5079, $P5082
  fallback362:
    $P5083 = $P5074."ACCEPTS"($P5079)
    set $P5084, $P5083
  if126_end345:
    set $P5090, $P5084
    unless $P5084 goto if125_end343 
    set $P5086, _lex_param_1[0]
    unless_null $P5086, fallback363
    nqp_get_sc_object $P5087, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5086, $P5087
  fallback363:
    set $P5085, $P5086[1]
    unless_null $P5085, fallback364
    nqp_get_sc_object $P5088, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5085, $P5088
  fallback364:
    $P5089 = $P5085."scope"()
    set $S5009, $P5089
    iseq $I5015, $S5009, "lexical"
    box $P5091, $I5015
    set $P5090, $P5091
  if125_end343:
    unless $P5090 goto if124_else340 
    nqp_decontainerize $P5092, _lex_param_0
    nqp_get_sc_object $P5093, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 3
    repr_bind_attr_int $P5092, $P5093, "$!generic", 1
.annotate 'line', 172
    nqp_decontainerize $P5094, _lex_param_0
    find_lex $P5097, "$?PACKAGE"
    get_who $P5096, $P5097
    set $P5095, $P5096["$EDGE_GENERIC_VAR"]
    unless_null $P5095, fallback365
    nqp_get_sc_object $P5098, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5095, $P5098
  fallback365:
    set $P5100, _lex_param_1[0]
    unless_null $P5100, fallback366
    nqp_get_sc_object $P5101, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5100, $P5101
  fallback366:
    set $P5099, $P5100[1]
    unless_null $P5099, fallback367
    nqp_get_sc_object $P5102, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5099, $P5102
  fallback367:
    $P5103 = $P5099."name"()
    $P5104 = $P5094."addedge"(_lex_param_2, _lex_param_3, $P5095, $P5103)
    set $P5124, $P5104
    goto if124_end341
  if124_else340:
.annotate 'line', 174
    set $S5010, $P101
    iseq $I5016, $S5010, "capture"
    box $P5108, $I5016
    set $P5107, $P5108
    unless $I5016 goto if132_end371 
    set $P5105, _lex_param_1[1]
    unless_null $P5105, fallback372
    nqp_get_sc_object $P5106, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5105, $P5106
  fallback372:
    set $P5107, $P5105
  if132_end371:
    unless $P5107 goto if131_else368 
.annotate 'line', 176
    nqp_decontainerize $P5109, _lex_param_0
    set $P5110, _lex_param_1[1]
    unless_null $P5110, fallback373
    nqp_get_sc_object $P5111, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5110, $P5111
  fallback373:
    $P5112 = $P5109."regex_nfa"($P5110, _lex_param_2, _lex_param_3)
    set $P5123, $P5112
    goto if131_end369
  if131_else368:
.annotate 'line', 177
    nqp_decontainerize $P5113, _lex_param_0
    find_lex $P5116, "$?PACKAGE"
    get_who $P5115, $P5116
    set $P5114, $P5115["$EDGE_SUBRULE"]
    unless_null $P5114, fallback374
    nqp_get_sc_object $P5117, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5114, $P5117
  fallback374:
    set $P5119, _lex_param_1[0]
    unless_null $P5119, fallback375
    nqp_get_sc_object $P5120, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5119, $P5120
  fallback375:
    set $P5118, $P5119[0]
    unless_null $P5118, fallback376
    nqp_get_sc_object $P5121, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5118, $P5121
  fallback376:
    $P5122 = $P5113."addedge"(_lex_param_2, _lex_param_3, $P5114, $P5118)
    set $P5123, $P5122
  if131_end369:
    set $P5124, $P5123
  if124_end341:
    set $P5125, $P5124
  if122_end336:
    set $P5126, $P5125
  if117_end317:
    set $P5127, $P5126
  if115_end310:
    .return ($P5127) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_112_1351011918.305") :anon :lex :outer("cuid_15_1351011918.305")
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
    find_lex $P5009, "$node"
    set $P5008, $P5009[0]
    unless_null $P5008, fallback313
    nqp_get_sc_object $P5010, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5008, $P5010
  fallback313:
    set $P5007, $P5008[1]
    unless_null $P5007, fallback314
    nqp_get_sc_object $P5011, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5007, $P5011
  fallback314:
    set $P5006, $P5007["orig_qast"]
    unless_null $P5006, fallback315
    nqp_get_sc_object $P5012, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5006, $P5012
  fallback315:
    find_lex $I5002, "$from"
    $P5004."regex_nfa"($P5006, $I5002, $I101)
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
.sub "" :subid("cuid_113_1351011918.305") :anon :lex :outer("cuid_15_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 162
    .lex "$end", $I101 
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
    find_lex $I5002, "$from"
    find_lex $P5008, "$?PACKAGE"
    get_who $P5007, $P5008
    set $P5006, $P5007["$EDGE_SUBRULE"]
    unless_null $P5006, fallback339
    nqp_get_sc_object $P5009, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5006, $P5009
  fallback339:
    find_lex $P5010, "$node"
    $P5011 = $P5010."name"()
    $P5004."addedge"($I5002, $I101, $P5006, $P5011)
.annotate 'line', 165
    find_lex $P5013, "self"
    nqp_decontainerize $P5012, $P5013
    find_lex $P5014, "$node"
    find_lex $I5003, "$to"
    $P5015 = $P5012."fate"($P5014, $I101, $I5003)
    .return ($P5015) 
.end
.HLL "nqp"
.namespace []
.sub "quant" :subid("cuid_16_1351011918.305") :anon :lex :outer("cuid_28_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 181
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param int _lex_param_2 
    .param int _lex_param_3 
    .const 'Sub' $P5025 = 'cuid_115_1351011918.305' 
    capture_lex $P5025 
    .const 'Sub' $P5025 = 'cuid_117_1351011918.305' 
    capture_lex $P5025 
    .const 'Sub' $P5025 = 'cuid_118_1351011918.305' 
    capture_lex $P5025 
    .const 'Sub' $P5025 = 'cuid_119_1351011918.305' 
    capture_lex $P5025 
    .const 'Sub' $P5025 = 'cuid_120_1351011918.305' 
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
    set_label $P101, lexotic_377
    .lex "RETURN", $P101
    set $N5002, 0
.annotate 'line', 182
    $P5002 = _lex_param_1."min"()
    set $P5001, $P5002
    defined $I5001, $P5001
    if $I5001, defor379
    box $P5003, 0
    set $P5001, $P5003
  defor379:
    set $N5003, $P5001
    add $N5001, $N5002, $N5003
    set $I5002, $N5001
    set $I101, $I5002
    set $N5005, 0
.annotate 'line', 183
    $P5005 = _lex_param_1."max"()
    set $P5004, $P5005
    defined $I5003, $P5004
    if $I5003, defor380
    box $P5006, -1
    set $P5004, $P5006
  defor380:
    set $N5006, $P5004
    add $N5004, $N5005, $N5006
    set $I5004, $N5004
    set $I102, $I5004
    set $N5007, $I102
    set $N5008, 1
    isgt $I5005, $N5007, $N5008
    set $I5007, $I5005
    if $I5005 goto unless134_end384 
    set $N5009, $I101
    set $N5010, 1
    isgt $I5006, $N5009, $N5010
    set $I5007, $I5006
  unless134_end384:
    unless $I5007 goto if133_end382 
    .const 'Sub' $P5007 = 'cuid_115_1351011918.305' 
    capture_lex $P5007
    $P5008 = $P5007()
  if133_end382:
    set $N5011, $I102
    set $N5012, -1
    iseq $I5008, $N5011, $N5012
    unless $I5008 goto if146_else420 
.annotate 'line', 216
    set $N5013, $I101
    set $N5014, 0
    iseq $I5009, $N5013, $N5014
    unless $I5009 goto if147_else422 
.annotate 'line', 217
    set $P5009, _lex_param_1[1]
    unless_null $P5009, fallback426
    nqp_get_sc_object $P5010, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5009, $P5010
  fallback426:
    defined $I5010, $P5009
    unless $I5010 goto if148_else424 
    .const 'Sub' $P5011 = 'cuid_117_1351011918.305' 
    capture_lex $P5011
    $P5012 = $P5011()
    set $P5015, $P5012
    goto if148_end425
  if148_else424:
    .const 'Sub' $P5013 = 'cuid_118_1351011918.305' 
    capture_lex $P5013
    $P5014 = $P5013()
    set $P5015, $P5014
  if148_end425:
    goto if147_end423
  if147_else422:
    .const 'Sub' $P5016 = 'cuid_119_1351011918.305' 
    capture_lex $P5016
    $P5017 = $P5016()
  if147_end423:
    box $P5024, _lex_param_3
    set $P5023, $P5024
    goto if146_end421
  if146_else420:
    set $N5015, $I101
    set $N5016, 0
    iseq $I5011, $N5015, $N5016
    set $I5013, $I5011
    unless $I5011 goto if157_end457 
    set $N5017, $I102
    set $N5018, 1
    iseq $I5012, $N5017, $N5018
    set $I5013, $I5012
  if157_end457:
    unless $I5013 goto if156_else454 
    .const 'Sub' $P5018 = 'cuid_120_1351011918.305' 
    capture_lex $P5018
    $P5019 = $P5018()
    set $P5022, $P5019
    goto if156_end455
  if156_else454:
.annotate 'line', 254
.annotate 'line', 255
    nqp_decontainerize $P5020, _lex_param_0
    $P5021 = $P5020."fate"(_lex_param_1, _lex_param_2, _lex_param_3)
    set $P5022, $P5021
  if156_end455:
    set $P5023, $P5022
  if146_end421:
    goto lexotic_378
  lexotic_377:
    .get_results ($P5023)
  lexotic_378:
    .return ($P5023) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_115_1351011918.305") :anon :lex :outer("cuid_16_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 185
    .const 'Sub' $P5028 = 'cuid_114_1351011918.305' 
    capture_lex $P5028 
    .const 'Sub' $P5028 = 'cuid_116_1351011918.305' 
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
    unless_null $P5001, fallback385
    nqp_get_sc_object $P5003, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5001, $P5003
  fallback385:
    defined $I5001, $P5001
    set $I103, $I5001
  while135_test386:
    set $N5001, $I101
    find_lex $I5003, "$max"
    set $N5002, $I5003
    islt $I5002, $N5001, $N5002
    set $I5006, $I5002
    if $I5002 goto unless136_end392 
    set $N5003, $I101
    find_lex $I5005, "$min"
    set $N5004, $I5005
    islt $I5004, $N5003, $N5004
    set $I5006, $I5004
  unless136_end392:
    set $I5016, $I5006
    unless $I5006 goto while135_done390 
  while135_redo388:
.annotate 'line', 189
    set $N5005, $I101
    find_lex $I5008, "$min"
    set $N5006, $I5008
    isge $I5007, $N5005, $N5006
    unless $I5007 goto if137_end394 
    .const 'Sub' $P5004 = 'cuid_114_1351011918.305' 
    capture_lex $P5004
    $P5005 = $P5004()
  if137_end394:
    set $I5010, $I103
    unless $I103 goto if140_end401 
    set $N5007, $I101
    set $N5008, 0
    isgt $I5009, $N5007, $N5008
    set $I5010, $I5009
  if140_end401:
    unless $I5010 goto if139_end399 
.annotate 'line', 194
.annotate 'line', 195
    find_lex $P5007, "self"
    nqp_decontainerize $P5006, $P5007
    find_lex $P5009, "$node"
    set $P5008, $P5009[1]
    unless_null $P5008, fallback402
    nqp_get_sc_object $P5010, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5008, $P5010
  fallback402:
    find_lex $I5011, "$from"
    $P5011 = $P5006."regex_nfa"($P5008, $I5011, -1)
    set $I5012, $P5011
    store_lex "$from", $I5012
  if139_end399:
.annotate 'line', 197
    find_lex $P5013, "self"
    nqp_decontainerize $P5012, $P5013
    find_lex $P5015, "$node"
    set $P5014, $P5015[0]
    unless_null $P5014, fallback403
    nqp_get_sc_object $P5016, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5014, $P5016
  fallback403:
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
    goto while135_test386 
  while135_done390:
.annotate 'line', 200
    find_lex $P5019, "self"
    nqp_decontainerize $P5018, $P5019
    find_lex $I5017, "$from"
    find_lex $I5018, "$to"
    find_lex $P5022, "$?PACKAGE"
    get_who $P5021, $P5022
    set $P5020, $P5021["$EDGE_EPSILON"]
    unless_null $P5020, fallback404
    nqp_get_sc_object $P5023, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5020, $P5023
  fallback404:
    $P5018."addedge"($I5017, $I5018, $P5020, 0)
    find_lex $I5020, "$max"
    set $N5012, $I5020
    set $N5013, -1
    iseq $I5019, $N5012, $N5013
    unless $I5019 goto if141_end406 
    .const 'Sub' $P5024 = 'cuid_116_1351011918.305' 
    capture_lex $P5024
    $P5025 = $P5024()
  if141_end406:
    find_lex $I5022, "$to"
    set $N5014, $I5022
    set $N5015, 0
    islt $I5021, $N5014, $N5015
    set $I5024, $I5021
    unless $I5021 goto if145_end419 
    set $N5016, $I102
    set $N5017, 0
    isgt $I5023, $N5016, $N5017
    set $I5024, $I5023
  if145_end419:
    unless $I5024 goto if144_end417 
    store_lex "$to", $I102
  if144_end417:
    find_lex $I5025, "$to"
    find_lex $P5026, "RETURN"
    $P5027 = $P5026($I5025)
    .return ($P5027) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_114_1351011918.305") :anon :lex :outer("cuid_115_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 190
    .lex "$f", $I101 
    set $I101, 0
.annotate 'line', 191
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    find_lex $I5001, "$from"
    find_lex $I5002, "$to"
    find_lex $P5005, "$?PACKAGE"
    get_who $P5004, $P5005
    set $P5003, $P5004["$EDGE_EPSILON"]
    unless_null $P5003, fallback395
    nqp_get_sc_object $P5006, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5003, $P5006
  fallback395:
    $P5007 = $P5001."addedge"($I5001, $I5002, $P5003, 0)
    set $I5003, $P5007
    set $I101, $I5003
    find_lex $I5004, "$st"
    set $I5005, $I5004
    if $I5004 goto unless138_end397 
    set $I5005, $I101
  unless138_end397:
    store_lex "$st", $I5005
    .return ($I5005) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_116_1351011918.305") :anon :lex :outer("cuid_115_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 201
    .lex "$start", $I101 
    .lex "$looper", $P101 
    set $I101, 0
    nqp_get_sc_object $P5001, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P101, $P5001
.annotate 'line', 202
    find_lex $P5003, "self"
    nqp_decontainerize $P5002, $P5003
    $P5004 = $P5002."addstate"()
    set $I5001, $P5004
    set $I101, $I5001
.annotate 'line', 203
    find_lex $P5006, "self"
    nqp_decontainerize $P5005, $P5006
    find_lex $I5002, "$from"
    find_lex $P5009, "$?PACKAGE"
    get_who $P5008, $P5009
    set $P5007, $P5008["$EDGE_EPSILON"]
    unless_null $P5007, fallback407
    nqp_get_sc_object $P5010, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5007, $P5010
  fallback407:
    $P5005."addedge"($I5002, $I101, $P5007, 0)
    store_lex "$from", $I101
.annotate 'line', 205
    find_lex $P5012, "self"
    nqp_decontainerize $P5011, $P5012
    $P5013 = $P5011."addstate"()
    set $P101, $P5013
.annotate 'line', 206
    find_lex $P5015, "self"
    nqp_decontainerize $P5014, $P5015
    find_lex $I5003, "$to"
    find_lex $P5018, "$?PACKAGE"
    get_who $P5017, $P5018
    set $P5016, $P5017["$EDGE_EPSILON"]
    unless_null $P5016, fallback408
    nqp_get_sc_object $P5019, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5016, $P5019
  fallback408:
    $P5014."addedge"($P101, $I5003, $P5016, 0)
.annotate 'line', 207
    find_lex $P5021, "self"
    nqp_decontainerize $P5020, $P5021
    find_lex $I5004, "$from"
    find_lex $P5024, "$?PACKAGE"
    get_who $P5023, $P5024
    set $P5022, $P5023["$EDGE_EPSILON"]
    unless_null $P5022, fallback409
    nqp_get_sc_object $P5025, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5022, $P5025
  fallback409:
    $P5020."addedge"($P101, $I5004, $P5022, 0)
    find_lex $I5005, "$has_sep"
    set $I5008, $I5005
    unless $I5005 goto if143_end413 
    find_lex $I5007, "$count"
    set $N5001, $I5007
    set $N5002, 0
    isgt $I5006, $N5001, $N5002
    set $I5008, $I5006
  if143_end413:
    unless $I5008 goto if142_end411 
.annotate 'line', 208
.annotate 'line', 209
    find_lex $P5027, "self"
    nqp_decontainerize $P5026, $P5027
    find_lex $P5029, "$node"
    set $P5028, $P5029[1]
    unless_null $P5028, fallback414
    nqp_get_sc_object $P5030, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5028, $P5030
  fallback414:
    find_lex $I5009, "$from"
    $P5031 = $P5026."regex_nfa"($P5028, $I5009, -1)
    set $I5010, $P5031
    store_lex "$from", $I5010
  if142_end411:
.annotate 'line', 211
    find_lex $P5033, "self"
    nqp_decontainerize $P5032, $P5033
    find_lex $P5035, "$node"
    set $P5034, $P5035[0]
    unless_null $P5034, fallback415
    nqp_get_sc_object $P5036, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5034, $P5036
  fallback415:
    find_lex $I5011, "$from"
    $P5037 = $P5032."regex_nfa"($P5034, $I5011, $P101)
    .return ($P5037) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_117_1351011918.305") :anon :lex :outer("cuid_16_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 218
    .lex "$start", $I101 
    .lex "$looper", $I102 
    .lex "$st", $I103 
    set $I101, 0
    set $I102, 0
    set $I103, 0
.annotate 'line', 219
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    $P5003 = $P5001."addstate"()
    set $I5001, $P5003
    set $I101, $I5001
.annotate 'line', 220
    find_lex $P5005, "self"
    nqp_decontainerize $P5004, $P5005
    find_lex $I5002, "$from"
    find_lex $P5008, "$?PACKAGE"
    get_who $P5007, $P5008
    set $P5006, $P5007["$EDGE_EPSILON"]
    unless_null $P5006, fallback427
    nqp_get_sc_object $P5009, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5006, $P5009
  fallback427:
    $P5004."addedge"($I5002, $I101, $P5006, 0)
.annotate 'line', 221
    find_lex $P5011, "self"
    nqp_decontainerize $P5010, $P5011
    $P5012 = $P5010."addstate"()
    set $I5003, $P5012
    set $I102, $I5003
.annotate 'line', 222
    find_lex $P5014, "self"
    nqp_decontainerize $P5013, $P5014
    find_lex $P5016, "$node"
    set $P5015, $P5016[0]
    unless_null $P5015, fallback428
    nqp_get_sc_object $P5017, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5015, $P5017
  fallback428:
    $P5018 = $P5013."regex_nfa"($P5015, $I101, $I102)
    set $I5004, $P5018
    set $I103, $I5004
.annotate 'line', 223
    find_lex $P5020, "self"
    nqp_decontainerize $P5019, $P5020
    find_lex $P5022, "$node"
    set $P5021, $P5022[1]
    unless_null $P5021, fallback429
    nqp_get_sc_object $P5023, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5021, $P5023
  fallback429:
    $P5019."regex_nfa"($P5021, $I102, $I101)
.annotate 'line', 224
    find_lex $P5025, "self"
    nqp_decontainerize $P5024, $P5025
    find_lex $I5005, "$to"
    find_lex $P5028, "$?PACKAGE"
    get_who $P5027, $P5028
    set $P5026, $P5027["$EDGE_EPSILON"]
    unless_null $P5026, fallback430
    nqp_get_sc_object $P5029, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5026, $P5029
  fallback430:
    $P5024."addedge"($I102, $I5005, $P5026, 0)
.annotate 'line', 225
    find_lex $P5031, "self"
    nqp_decontainerize $P5030, $P5031
    find_lex $I5006, "$from"
    find_lex $I5007, "$to"
    find_lex $P5034, "$?PACKAGE"
    get_who $P5033, $P5034
    set $P5032, $P5033["$EDGE_EPSILON"]
    unless_null $P5032, fallback431
    nqp_get_sc_object $P5035, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5032, $P5035
  fallback431:
    $P5036 = $P5030."addedge"($I5006, $I5007, $P5032, 0)
    set $I5008, $P5036
    set $I103, $I5008
    find_lex $I5010, "$to"
    set $N5001, $I5010
    set $N5002, 0
    islt $I5009, $N5001, $N5002
    set $I5012, $I5009
    unless $I5009 goto if150_end435 
    set $N5003, $I103
    set $N5004, 0
    isgt $I5011, $N5003, $N5004
    set $I5012, $I5011
  if150_end435:
    set $I5013, $I5012
    unless $I5012 goto if149_end433 
    store_lex "$to", $I103
    set $I5013, $I103
  if149_end433:
    .return ($I5013) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_118_1351011918.305") :anon :lex :outer("cuid_16_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 228
    .lex "$st", $I101 
    set $I101, 0
.annotate 'line', 229
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    find_lex $P5004, "$node"
    set $P5003, $P5004[0]
    unless_null $P5003, fallback436
    nqp_get_sc_object $P5005, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5003, $P5005
  fallback436:
    find_lex $I5001, "$from"
    find_lex $I5002, "$from"
    $P5001."regex_nfa"($P5003, $I5001, $I5002)
.annotate 'line', 230
    find_lex $P5007, "self"
    nqp_decontainerize $P5006, $P5007
    find_lex $I5003, "$from"
    find_lex $I5004, "$to"
    find_lex $P5010, "$?PACKAGE"
    get_who $P5009, $P5010
    set $P5008, $P5009["$EDGE_EPSILON"]
    unless_null $P5008, fallback437
    nqp_get_sc_object $P5011, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5008, $P5011
  fallback437:
    $P5012 = $P5006."addedge"($I5003, $I5004, $P5008, 0)
    set $I5005, $P5012
    set $I101, $I5005
    find_lex $I5007, "$to"
    set $N5001, $I5007
    set $N5002, 0
    islt $I5006, $N5001, $N5002
    set $I5009, $I5006
    unless $I5006 goto if152_end441 
    set $N5003, $I101
    set $N5004, 0
    isgt $I5008, $N5003, $N5004
    set $I5009, $I5008
  if152_end441:
    set $I5010, $I5009
    unless $I5009 goto if151_end439 
    store_lex "$to", $I101
    set $I5010, $I101
  if151_end439:
    .return ($I5010) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_119_1351011918.305") :anon :lex :outer("cuid_16_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 233
    .lex "$start", $I101 
    .lex "$looper", $I102 
    .lex "$st", $I103 
    set $I101, 0
    set $I102, 0
    set $I103, 0
.annotate 'line', 234
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    $P5003 = $P5001."addstate"()
    set $I5001, $P5003
    set $I101, $I5001
.annotate 'line', 235
    find_lex $P5005, "self"
    nqp_decontainerize $P5004, $P5005
    find_lex $I5002, "$from"
    find_lex $P5008, "$?PACKAGE"
    get_who $P5007, $P5008
    set $P5006, $P5007["$EDGE_EPSILON"]
    unless_null $P5006, fallback442
    nqp_get_sc_object $P5009, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5006, $P5009
  fallback442:
    $P5004."addedge"($I5002, $I101, $P5006, 0)
.annotate 'line', 236
    find_lex $P5011, "self"
    nqp_decontainerize $P5010, $P5011
    $P5012 = $P5010."addstate"()
    set $I5003, $P5012
    set $I102, $I5003
.annotate 'line', 237
    find_lex $P5014, "self"
    nqp_decontainerize $P5013, $P5014
    find_lex $P5016, "$node"
    set $P5015, $P5016[0]
    unless_null $P5015, fallback443
    nqp_get_sc_object $P5017, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5015, $P5017
  fallback443:
    $P5018 = $P5013."regex_nfa"($P5015, $I101, $I102)
    set $I5004, $P5018
    set $I103, $I5004
    find_lex $P5020, "$node"
    set $P5019, $P5020[1]
    unless_null $P5019, fallback446
    nqp_get_sc_object $P5021, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5019, $P5021
  fallback446:
    defined $I5005, $P5019
    unless $I5005 goto if153_else444 
.annotate 'line', 238
.annotate 'line', 239
    find_lex $P5023, "self"
    nqp_decontainerize $P5022, $P5023
    find_lex $P5025, "$node"
    set $P5024, $P5025[1]
    unless_null $P5024, fallback447
    nqp_get_sc_object $P5026, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5024, $P5026
  fallback447:
    $P5027 = $P5022."regex_nfa"($P5024, $I102, $I101)
    goto if153_end445
  if153_else444:
.annotate 'line', 241
.annotate 'line', 242
    find_lex $P5029, "self"
    nqp_decontainerize $P5028, $P5029
    find_lex $P5032, "$?PACKAGE"
    get_who $P5031, $P5032
    set $P5030, $P5031["$EDGE_EPSILON"]
    unless_null $P5030, fallback448
    nqp_get_sc_object $P5033, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5030, $P5033
  fallback448:
    $P5034 = $P5028."addedge"($I102, $I101, $P5030, 0)
  if153_end445:
.annotate 'line', 244
    find_lex $P5036, "self"
    nqp_decontainerize $P5035, $P5036
    find_lex $I5006, "$to"
    find_lex $P5039, "$?PACKAGE"
    get_who $P5038, $P5039
    set $P5037, $P5038["$EDGE_EPSILON"]
    unless_null $P5037, fallback449
    nqp_get_sc_object $P5040, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5037, $P5040
  fallback449:
    $P5035."addedge"($I102, $I5006, $P5037, 0)
    find_lex $I5008, "$to"
    set $N5001, $I5008
    set $N5002, 0
    islt $I5007, $N5001, $N5002
    set $I5010, $I5007
    unless $I5007 goto if155_end453 
    set $N5003, $I103
    set $N5004, 0
    isgt $I5009, $N5003, $N5004
    set $I5010, $I5009
  if155_end453:
    set $I5011, $I5010
    unless $I5010 goto if154_end451 
    store_lex "$to", $I103
    set $I5011, $I103
  if154_end451:
    .return ($I5011) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_120_1351011918.305") :anon :lex :outer("cuid_16_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 248
    .lex "$st", $I101 
    set $I101, 0
.annotate 'line', 249
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    find_lex $P5004, "$node"
    set $P5003, $P5004[0]
    unless_null $P5003, fallback458
    nqp_get_sc_object $P5005, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5003, $P5005
  fallback458:
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
    unless $I5004 goto if159_end462 
    set $N5003, $I101
    set $N5004, 0
    isgt $I5006, $N5003, $N5004
    set $I5007, $I5006
  if159_end462:
    unless $I5007 goto if158_end460 
    store_lex "$to", $I101
  if158_end460:
.annotate 'line', 251
    find_lex $P5008, "self"
    nqp_decontainerize $P5007, $P5008
    find_lex $I5008, "$from"
    find_lex $I5009, "$to"
    find_lex $P5011, "$?PACKAGE"
    get_who $P5010, $P5011
    set $P5009, $P5010["$EDGE_EPSILON"]
    unless_null $P5009, fallback463
    nqp_get_sc_object $P5012, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5009, $P5012
  fallback463:
    $P5013 = $P5007."addedge"($I5008, $I5009, $P5009, 0)
    set $I5010, $P5013
    set $I101, $I5010
    find_lex $I5012, "$to"
    set $N5005, $I5012
    set $N5006, 0
    islt $I5011, $N5005, $N5006
    set $I5014, $I5011
    unless $I5011 goto if161_end467 
    set $N5007, $I101
    set $N5008, 0
    isgt $I5013, $N5007, $N5008
    set $I5014, $I5013
  if161_end467:
    unless $I5014 goto if160_end465 
    store_lex "$to", $I101
  if160_end465:
    find_lex $I5015, "$to"
    .return ($I5015) 
.end
.HLL "nqp"
.namespace []
.sub "qastnode" :subid("cuid_17_1351011918.305") :anon :lex :outer("cuid_28_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 259
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param int _lex_param_2 
    .param int _lex_param_3 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$from", _lex_param_2 
    .lex "$to", _lex_param_3 
.annotate 'line', 260
    $P5001 = _lex_param_1."subtype"()
    set $S5001, $P5001
    iseq $I5001, $S5001, "zerowidth"
    set $I5003, $I5001
    if $I5001 goto unless163_end471 
    $P5002 = _lex_param_1."subtype"()
    set $S5002, $P5002
    iseq $I5002, $S5002, "declarative"
    set $I5003, $I5002
  unless163_end471:
    unless $I5003 goto if162_else468 
.annotate 'line', 261
    nqp_decontainerize $P5003, _lex_param_0
    find_lex $P5006, "$?PACKAGE"
    get_who $P5005, $P5006
    set $P5004, $P5005["$EDGE_EPSILON"]
    unless_null $P5004, fallback472
    nqp_get_sc_object $P5007, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5004, $P5007
  fallback472:
    $P5008 = $P5003."addedge"(_lex_param_2, _lex_param_3, $P5004, 0)
    set $P5011, $P5008
    goto if162_end469
  if162_else468:
.annotate 'line', 262
    nqp_decontainerize $P5009, _lex_param_0
    $P5010 = $P5009."fate"(_lex_param_1, _lex_param_2, _lex_param_3)
    set $P5011, $P5010
  if162_end469:
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "subcapture" :subid("cuid_18_1351011918.305") :anon :lex :outer("cuid_28_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 265
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param int _lex_param_2 
    .param int _lex_param_3 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$from", _lex_param_2 
    .lex "$to", _lex_param_3 
.annotate 'line', 266
    nqp_decontainerize $P5001, _lex_param_0
    set $P5002, _lex_param_1[0]
    unless_null $P5002, fallback473
    nqp_get_sc_object $P5003, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5002, $P5003
  fallback473:
    $P5004 = $P5001."regex_nfa"($P5002, _lex_param_2, _lex_param_3)
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "save" :subid("cuid_19_1351011918.305") :anon :lex :outer("cuid_28_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 269
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("non_empty") :optional 
    .param int haz_param_10 :opt_flag 
    if haz_param_10, default481
    nqp_get_sc_object $P5015, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set _lex_param_1, $P5015
  default481:
    .lex "self", _lex_param_0 
    .lex "$non_empty", _lex_param_1 
    root_new $P101, ['parrot';'Continuation']
    set_label $P101, lexotic_474
    .lex "RETURN", $P101
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 3
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!edges"
    if $P5003 goto unless164_end477 
.annotate 'line', 270
    if _lex_param_1 goto unless165_end479 
    find_lex $P5004, "RETURN"
    $P5005 = $P5004(0)
  unless165_end479:
.annotate 'line', 272
    nqp_decontainerize $P5006, _lex_param_0
    find_lex $P5009, "$?PACKAGE"
    get_who $P5008, $P5009
    set $P5007, $P5008["$EDGE_FATE"]
    unless_null $P5007, fallback480
    nqp_get_sc_object $P5010, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5007, $P5010
  fallback480:
    $P5011 = $P5006."addedge"(1, 0, $P5007, 0, 1 :named("newedge"))
  unless164_end477:
    nqp_decontainerize $P5012, _lex_param_0
    nqp_get_sc_object $P5013, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 3
    repr_get_attr_obj $P5014, $P5012, $P5013, "$!states"
    goto lexotic_475
  lexotic_474:
    .get_results ($P5014)
  lexotic_475:
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "qast" :subid("cuid_20_1351011918.305") :anon :lex :outer("cuid_28_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 277
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("non_empty") :optional 
    .param int haz_param_11 :opt_flag 
    .const 'Sub' $P5028 = 'cuid_124_1351011918.305' 
    capture_lex $P5028 
    if haz_param_11, default508
    nqp_get_sc_object $P5027, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set _lex_param_1, $P5027
  default508:
    .lex "$past", $P101 
    .lex "self", _lex_param_0 
    .lex "$non_empty", _lex_param_1 
    nqp_get_sc_object $P5001, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P101, $P5001
    root_new $P102, ['parrot';'Continuation']
    set_label $P102, lexotic_482
    .lex "RETURN", $P102
    nqp_decontainerize $P5002, _lex_param_0
    nqp_get_sc_object $P5003, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 3
    repr_get_attr_obj $P5004, $P5002, $P5003, "$!edges"
    if $P5004 goto unless166_end485 
.annotate 'line', 278
    if _lex_param_1 goto unless167_end487 
    find_lex $P5005, "RETURN"
    $P5006 = $P5005(0)
  unless167_end487:
.annotate 'line', 280
    nqp_decontainerize $P5007, _lex_param_0
    find_lex $P5010, "$?PACKAGE"
    get_who $P5009, $P5010
    set $P5008, $P5009["$EDGE_FATE"]
    unless_null $P5008, fallback488
    nqp_get_sc_object $P5011, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5008, $P5011
  fallback488:
    $P5012 = $P5007."addedge"(1, 0, $P5008, 0, 1 :named("newedge"))
  unless166_end485:
.annotate 'line', 282
    nqp_get_sc_object $P5016, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 0
    nqp_get_package_through_who $P5015, $P5016, "QAST"
    get_who $P5014, $P5015
    set $P5013, $P5014["Op"]
    unless_null $P5013, fallback489
    nqp_get_sc_object $P5017, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5013, $P5017
  fallback489:
    $P5018 = $P5013."new"("list" :named("op"))
    set $P101, $P5018
    nqp_decontainerize $P5022, _lex_param_0
    nqp_get_sc_object $P5023, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 3
    repr_get_attr_obj $P5024, $P5022, $P5023, "$!states"
    set $P5019, $P5024
    iter $P5021, $P5024
  for_next505:
    unless $P5021, for_done507
    shift $P5026, $P5021
  for_redo506:
    .const 'Sub' $P5025 = 'cuid_124_1351011918.305' 
    capture_lex $P5025
    $P5019 = $P5025($P5026)
    goto for_next505
  for_done507:
    goto lexotic_483
  lexotic_482:
    .get_results ($P101)
  lexotic_483:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_124_1351011918.305") :anon :lex :outer("cuid_20_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 283
    .param pmc _lex_param_0 
    .const 'Sub' $P5015 = 'cuid_123_1351011918.305' 
    capture_lex $P5015 
    .lex "$list", $P101 
    .lex "@values", _lex_param_0 
    nqp_get_sc_object $P5001, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P101, $P5001
.annotate 'line', 284
    nqp_get_sc_object $P5005, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 0
    nqp_get_package_through_who $P5004, $P5005, "QAST"
    get_who $P5003, $P5004
    set $P5002, $P5003["Op"]
    unless_null $P5002, fallback490
    nqp_get_sc_object $P5006, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5002, $P5006
  fallback490:
    $P5007 = $P5002."new"("list" :named("op"))
    set $P101, $P5007
    set $P5008, _lex_param_0
    iter $P5010, _lex_param_0
  for_next502:
    unless $P5010, for_done504
    shift $P5012, $P5010
  for_redo503:
    .const 'Sub' $P5011 = 'cuid_123_1351011918.305' 
    capture_lex $P5011
    $P5008 = $P5011($P5012)
    goto for_next502
  for_done504:
.annotate 'line', 300
    find_lex $P5013, "$past"
    $P5014 = $P5013."push"($P101)
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_123_1351011918.305") :anon :lex :outer("cuid_124_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 285
    .param pmc _lex_param_0 
    .const 'Sub' $P5021 = 'cuid_122_1351011918.305' 
    capture_lex $P5021 
    .lex "$_", _lex_param_0 
    nqp_islist $I5001, _lex_param_0
    unless $I5001 goto if168_else491 
    .const 'Sub' $P5001 = 'cuid_122_1351011918.305' 
    capture_lex $P5001
    $P5002 = $P5001()
    set $P5020, $P5002
    goto if168_end492
  if168_else491:
    set $N5001, _lex_param_0
    set $S5001, $N5001
    set $S5002, _lex_param_0
    iseq $I5002, $S5001, $S5002
    unless $I5002 goto if169_else498 
.annotate 'line', 293
.annotate 'line', 294
    find_lex $P5003, "$list"
    nqp_get_sc_object $P5007, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 0
    nqp_get_package_through_who $P5006, $P5007, "QAST"
    get_who $P5005, $P5006
    set $P5004, $P5005["IVal"]
    unless_null $P5004, fallback500
    nqp_get_sc_object $P5008, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5004, $P5008
  fallback500:
    $P5009 = $P5004."new"(_lex_param_0 :named("value"))
    $P5010 = $P5003."push"($P5009)
    set $P5019, $P5010
    goto if169_end499
  if169_else498:
.annotate 'line', 296
.annotate 'line', 297
    find_lex $P5011, "$list"
    nqp_get_sc_object $P5015, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 0
    nqp_get_package_through_who $P5014, $P5015, "QAST"
    get_who $P5013, $P5014
    set $P5012, $P5013["SVal"]
    unless_null $P5012, fallback501
    nqp_get_sc_object $P5016, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5012, $P5016
  fallback501:
    $P5017 = $P5012."new"(_lex_param_0 :named("value"))
    $P5018 = $P5011."push"($P5017)
    set $P5019, $P5018
  if169_end499:
    set $P5020, $P5019
  if168_end492:
    .return ($P5020) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_122_1351011918.305") :anon :lex :outer("cuid_123_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 286
    .const 'Sub' $P5016 = 'cuid_121_1351011918.305' 
    capture_lex $P5016 
    .lex "$arglist", $P101 
    nqp_get_sc_object $P5001, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P101, $P5001
.annotate 'line', 287
    nqp_get_sc_object $P5005, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 0
    nqp_get_package_through_who $P5004, $P5005, "QAST"
    get_who $P5003, $P5004
    set $P5002, $P5003["Op"]
    unless_null $P5002, fallback493
    nqp_get_sc_object $P5006, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5002, $P5006
  fallback493:
    $P5007 = $P5002."new"("list_i" :named("op"))
    set $P101, $P5007
    find_lex $P5011, "$_"
    set $P5008, $P5011
    iter $P5010, $P5011
  for_next495:
    unless $P5010, for_done497
    shift $P5013, $P5010
  for_redo496:
    .const 'Sub' $P5012 = 'cuid_121_1351011918.305' 
    capture_lex $P5012
    $P5008 = $P5012($P5013)
    goto for_next495
  for_done497:
.annotate 'line', 291
    find_lex $P5014, "$list"
    $P5015 = $P5014."push"($P101)
    .return ($P5015) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_121_1351011918.305") :anon :lex :outer("cuid_122_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 288
    .param pmc _lex_param_0 
    .lex "$i", _lex_param_0 
.annotate 'line', 289
    find_lex $P5001, "$arglist"
    nqp_get_sc_object $P5005, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 0
    nqp_get_package_through_who $P5004, $P5005, "QAST"
    get_who $P5003, $P5004
    set $P5002, $P5003["IVal"]
    unless_null $P5002, fallback494
    nqp_get_sc_object $P5006, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5002, $P5006
  fallback494:
    $P5007 = $P5002."new"(_lex_param_0 :named("value"))
    $P5008 = $P5001."push"($P5007)
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "mergesubrule" :subid("cuid_21_1351011918.305") :anon :lex :outer("cuid_28_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 305
    .param pmc _lex_param_0 
    .param int _lex_param_1 
    .param int _lex_param_2 
    .param pmc _lex_param_3 
    .param pmc _lex_param_4 
    .param string _lex_param_5 
    .param pmc _lex_param_6 :optional 
    .param int haz_param_12 :opt_flag 
    .const 'Sub' $P5014 = 'cuid_125_1351011918.305' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_127_1351011918.305' 
    capture_lex $P5014 
    if haz_param_12, default531
    new $P5013, 'Hash'
    set _lex_param_6, $P5013
  default531:
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
    unless $I5001 goto if170_end510 
.annotate 'line', 309
    exists $I5003, $P101[_lex_param_5]
    not $I5002, $I5003
    unless $I5002 goto if171_end512 
    .const 'Sub' $P5004 = 'cuid_125_1351011918.305' 
    capture_lex $P5004
    $P5005 = $P5004()
  if171_end512:
    isfalse $I5004, $P102
    set $I5007, $I5004
    unless $I5004 goto if175_end520 
    exists $I5006, $P101[_lex_param_5]
    not $I5005, $I5006
    set $I5007, $I5005
  if175_end520:
    box $P5009, $I5007
    set $P5008, $P5009
    unless $I5007 goto if174_end518 
    .const 'Sub' $P5006 = 'cuid_127_1351011918.305' 
    capture_lex $P5006
    $P5007 = $P5006()
    set $P5008, $P5007
  if174_end518:
  if170_end510:
    box $P5010, 1
    set $P101[_lex_param_5], $P5010
.annotate 'line', 331
    nqp_decontainerize $P5011, _lex_param_0
    $P5012 = $P5011."mergesubstates"(_lex_param_1, _lex_param_2, _lex_param_3, $P102, _lex_param_4, $P101)
    .return ($P5012) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_125_1351011918.305") :anon :lex :outer("cuid_21_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 310
    .lex "$meth", $P101 
    nqp_get_sc_object $P5001, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P101, $P5001
.annotate 'line', 311
    find_lex $P5003, "$cursor"
    get_how $P5002, $P5003
    find_lex $P5004, "$cursor"
    find_lex $S5001, "$name"
    $P5005 = $P5002."find_method"($P5004, $S5001, 1 :named("no_trace"))
    set $P101, $P5005
    can $I5001, $P101, "NFA"
    unless $I5001 goto if172_end514 
.annotate 'line', 312
    $P5006 = $P101."NFA"()
    store_lex "@substates", $P5006
  if172_end514:
    find_lex $P5007, "@substates"
    isnull $I5002, $P5007
    box $P5010, $I5002
    set $P5009, $P5010
    unless $I5002 goto if173_end516 
    new $P5008, 'ResizablePMCArray'
    store_lex "@substates", $P5008
    set $P5009, $P5008
  if173_end516:
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_127_1351011918.305") :anon :lex :outer("cuid_21_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 315
    .const 'Sub' $P5025 = 'cuid_126_1351011918.305' 
    capture_lex $P5025 
    .const 'Sub' $P5025 = 'cuid_128_1351011918.305' 
    capture_lex $P5025 
    .lex "%protorx", $P101 
    .lex "$nfa", $P102 
    .lex "$gotmatch", $I101 
    new $P5001, 'Hash'
    set $P101, $P5001
    nqp_get_sc_object $P5002, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P102, $P5002
    set $I101, 0
.annotate 'line', 318
    find_lex $P5004, "$cursor"
    get_how $P5003, $P5004
    find_lex $P5005, "$cursor"
    .const 'Sub' $P5007 = 'cuid_126_1351011918.305' 
    capture_lex $P5007
    newclosure $P5006, $P5007
    $P5008 = $P5003."cache"($P5005, "!protoregex_table", $P5006)
    set $P101, $P5008
.annotate 'line', 319
    nqp_get_sc_object $P5012, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 0
    nqp_get_package_through_who $P5011, $P5012, "QRegex"
    get_who $P5010, $P5011
    set $P5009, $P5010["NFA"]
    unless_null $P5009, fallback521
    nqp_get_sc_object $P5013, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5009, $P5013
  fallback521:
    $P5014 = $P5009."new"()
    set $P102, $P5014
    set $I101, 0
    find_lex $S5001, "$name"
    exists $I5001, $P101[$S5001]
    unless $I5001 goto if176_end523 
.annotate 'line', 321
    find_lex $S5002, "$name"
    set $P5018, $P101[$S5002]
    unless_null $P5018, fallback524
    nqp_get_sc_object $P5019, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5018, $P5019
  fallback524:
    set $P5015, $P5018
    iter $P5017, $P5018
  for_next526:
    unless $P5017, for_done528
    shift $P5021, $P5017
  for_redo527:
    .const 'Sub' $P5020 = 'cuid_128_1351011918.305' 
    capture_lex $P5020
    $P5015 = $P5020($P5021)
    goto for_next526
  for_done528:
  if176_end523:
    box $P5024, $I101
    set $P5023, $P5024
    unless $I101 goto if177_end530 
.annotate 'line', 327
    $P5022 = $P102."states"()
    store_lex "@substates", $P5022
    set $P5023, $P5022
  if177_end530:
    .return ($P5023) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_126_1351011918.305") :anon :lex :outer("cuid_127_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 318

    find_lex $P5001, "$cursor"
    $P5002 = $P5001."!protoregex_table"()
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_128_1351011918.305") :anon :lex :outer("cuid_127_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 322
    .param pmc _lex_param_0 
    .lex "$rxname", _lex_param_0 
.annotate 'line', 323
    find_lex $P5001, "$nfa"
    find_lex $P5004, "$?PACKAGE"
    get_who $P5003, $P5004
    set $P5002, $P5003["$EDGE_SUBRULE"]
    unless_null $P5002, fallback525
    nqp_get_sc_object $P5005, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5002, $P5005
  fallback525:
    $P5001."addedge"(1, 0, $P5002, _lex_param_0)
    store_lex "$gotmatch", 1
    .return (1) 
.end
.HLL "nqp"
.namespace []
.sub "mergesubstates" :subid("cuid_22_1351011918.305") :anon :lex :outer("cuid_28_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 334
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .param pmc _lex_param_4 
    .param pmc _lex_param_5 
    .param pmc _lex_param_6 :optional 
    .param int haz_param_13 :opt_flag 
    .const 'Sub' $P5011 = 'cuid_130_1351011918.305' 
    capture_lex $P5011 
    if haz_param_13, default567
    new $P5010, 'Hash'
    set _lex_param_6, $P5010
  default567:
    .lex "self", _lex_param_0 
    .lex "$start", _lex_param_1 
    .lex "$to", _lex_param_2 
    .lex "$fate", _lex_param_3 
    .lex "@substates", _lex_param_4 
    .lex "$cursor", _lex_param_5 
    .lex "%seen", _lex_param_6 
    unless _lex_param_4 goto if178_else532 
    .const 'Sub' $P5001 = 'cuid_130_1351011918.305' 
    capture_lex $P5001
    $P5002 = $P5001()
    set $P5009, $P5002
    goto if178_end533
  if178_else532:
.annotate 'line', 370
.annotate 'line', 371
    nqp_decontainerize $P5003, _lex_param_0
    find_lex $P5006, "$?PACKAGE"
    get_who $P5005, $P5006
    set $P5004, $P5005["$EDGE_FATE"]
    unless_null $P5004, fallback566
    nqp_get_sc_object $P5007, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5004, $P5007
  fallback566:
    $P5008 = $P5003."addedge"(_lex_param_1, 0, $P5004, _lex_param_3)
    set $P5009, $P5008
  if178_end533:
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_130_1351011918.305") :anon :lex :outer("cuid_22_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 335
    .const 'Sub' $P5051 = 'cuid_129_1351011918.305' 
    capture_lex $P5051 
    .lex "$substart", $I101 
    .lex "$subend", $I102 
    .lex "$i", $I103 
    set $I101, 0
    set $I102, 0
    set $I103, 0
.annotate 'line', 337
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
    set_label $P5017, while179_handlers537
    push_eh $P5017
  while179_test534:
    find_lex $P5008, "@substates"
    set $P5016, $P5008
    unless $P5008 goto while179_done538 
  while179_redo536:
    find_lex $P5010, "self"
    nqp_decontainerize $P5009, $P5010
    nqp_get_sc_object $P5011, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 3
    repr_get_attr_obj $P5012, $P5009, $P5011, "$!states"
    find_lex $P5015, "@substates"
    shift $P5014, $P5015
    clone $P5013, $P5014
    push $P5012, $P5013
    set $P5016, $P5012
    goto while179_test534 
  while179_handlers537:
    .get_results ($P5017)
    pop_upto_eh $P5017
    getattribute $P5017, $P5017, 'type'
    eq $P5017, .CONTROL_LOOP_NEXT, while179_test534
    eq $P5017, .CONTROL_LOOP_REDO, while179_redo536
  while179_done538:
    pop_eh 
    find_lex $P5019, "self"
    nqp_decontainerize $P5018, $P5019
    nqp_get_sc_object $P5020, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 3
    repr_get_attr_obj $P5021, $P5018, $P5020, "$!states"
    elements $I5002, $P5021
    set $I102, $I5002
    set $I103, $I101
  while180_test539:
    set $N5001, $I103
    set $N5002, $I102
    islt $I5003, $N5001, $N5002
    box $P5025, $I5003
    set $P5024, $P5025
    unless $I5003 goto while180_done543 
  while180_redo541:
    .const 'Sub' $P5022 = 'cuid_129_1351011918.305' 
    capture_lex $P5022
    $P5023 = $P5022()
    set $P5024, $P5023
    goto while180_test539 
  while180_done543:
.annotate 'line', 365
    find_lex $P5027, "self"
    nqp_decontainerize $P5026, $P5027
    find_lex $P5028, "$start"
    set $N5004, $I101
    set $N5005, 1
    add $N5003, $N5004, $N5005
    find_lex $P5031, "$?PACKAGE"
    get_who $P5030, $P5031
    set $P5029, $P5030["$EDGE_EPSILON"]
    unless_null $P5029, fallback561
    nqp_get_sc_object $P5032, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5029, $P5032
  fallback561:
    $P5026."addedge"($P5028, $N5003, $P5029, 0)
    find_lex $P5033, "$to"
    set $N5006, $P5033
    set $N5007, 0
    isgt $I5004, $N5006, $N5007
    unless $I5004 goto if184_else562 
.annotate 'line', 367
    find_lex $P5035, "self"
    nqp_decontainerize $P5034, $P5035
    find_lex $P5036, "$to"
    find_lex $P5039, "$?PACKAGE"
    get_who $P5038, $P5039
    set $P5037, $P5038["$EDGE_EPSILON"]
    unless_null $P5037, fallback564
    nqp_get_sc_object $P5040, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5037, $P5040
  fallback564:
    $P5041 = $P5034."addedge"($I101, $P5036, $P5037, 0)
    set $P5050, $P5041
    goto if184_end563
  if184_else562:
.annotate 'line', 368
    find_lex $P5043, "self"
    nqp_decontainerize $P5042, $P5043
    find_lex $P5046, "$?PACKAGE"
    get_who $P5045, $P5046
    set $P5044, $P5045["$EDGE_FATE"]
    unless_null $P5044, fallback565
    nqp_get_sc_object $P5047, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5044, $P5047
  fallback565:
    find_lex $P5048, "$fate"
    $P5049 = $P5042."addedge"($I101, 0, $P5044, $P5048)
    set $P5050, $P5049
  if184_end563:
    .return ($P5050) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_129_1351011918.305") :anon :lex :outer("cuid_130_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 351
    .lex "$substate", $P101 
    .lex "$j", $I101 
    .lex "$k", $I102 
    nqp_get_sc_object $P5001, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P101, $P5001
    set $I101, 0
    set $I102, 0
    find_lex $P5004, "self"
    nqp_decontainerize $P5003, $P5004
    nqp_get_sc_object $P5005, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 3
    repr_get_attr_obj $P5006, $P5003, $P5005, "$!states"
    find_lex $I5001, "$i"
    set $P5002, $P5006[$I5001]
    unless_null $P5002, fallback544
    nqp_get_sc_object $P5007, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5002, $P5007
  fallback544:
    set $P101, $P5002
    set $I101, 0
    elements $I5002, $P101
    set $I102, $I5002
  while181_test545:
    set $N5001, $I101
    set $N5002, $I102
    islt $I5003, $N5001, $N5002
    set $I5014, $I5003
    unless $I5003 goto while181_done549 
  while181_redo547:
.annotate 'line', 355
    set $N5004, $I101
    set $N5005, 2
    add $N5003, $N5004, $N5005
    set $I5004, $N5003
    set $N5008, $I101
    set $N5009, 2
    add $N5007, $N5008, $N5009
    set $I5005, $N5007
    set $P5008, $P101[$I5005]
    unless_null $P5008, fallback550
    nqp_get_sc_object $P5009, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5008, $P5009
  fallback550:
    set $N5010, $P5008
    find_lex $I5006, "$substart"
    set $N5011, $I5006
    add $N5006, $N5010, $N5011
    box $P5010, $N5006
    set $P101[$I5004], $P5010
    set $P5011, $P101[$I101]
    unless_null $P5011, fallback553
    nqp_get_sc_object $P5012, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5011, $P5012
  fallback553:
    set $N5012, $P5011
    find_lex $P5015, "$?PACKAGE"
    get_who $P5014, $P5015
    set $P5013, $P5014["$EDGE_FATE"]
    unless_null $P5013, fallback554
    nqp_get_sc_object $P5016, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5013, $P5016
  fallback554:
    set $N5013, $P5013
    iseq $I5007, $N5012, $N5013
    unless $I5007 goto if182_end552 
    set $N5015, $I101
    set $N5016, 1
    add $N5014, $N5015, $N5016
    set $I5008, $N5014
    find_lex $P5017, "$fate"
    set $P101[$I5008], $P5017
  if182_end552:
    set $P5018, $P101[$I101]
    unless_null $P5018, fallback557
    nqp_get_sc_object $P5019, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5018, $P5019
  fallback557:
    set $N5017, $P5018
    find_lex $P5022, "$?PACKAGE"
    get_who $P5021, $P5022
    set $P5020, $P5021["$EDGE_SUBRULE"]
    unless_null $P5020, fallback558
    nqp_get_sc_object $P5023, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5020, $P5023
  fallback558:
    set $N5018, $P5020
    iseq $I5009, $N5017, $N5018
    unless $I5009 goto if183_end556 
.annotate 'line', 359
    find_lex $P5025, "self"
    nqp_decontainerize $P5024, $P5025
    find_lex $I5010, "$i"
    set $N5020, $I101
    set $N5021, 2
    add $N5019, $N5020, $N5021
    set $I5011, $N5019
    set $P5026, $P101[$I5011]
    unless_null $P5026, fallback559
    nqp_get_sc_object $P5027, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5026, $P5027
  fallback559:
    find_lex $P5028, "$fate"
    find_lex $P5029, "$cursor"
    set $N5023, $I101
    set $N5024, 1
    add $N5022, $N5023, $N5024
    set $I5012, $N5022
    set $P5030, $P101[$I5012]
    unless_null $P5030, fallback560
    nqp_get_sc_object $P5031, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5030, $P5031
  fallback560:
    find_lex $P5032, "%seen"
    $P5033 = $P5024."mergesubrule"($I5010, $P5026, $P5028, $P5029, $P5030, $P5032)
  if183_end556:
    set $N5026, $I101
    set $N5027, 3
    add $N5025, $N5026, $N5027
    set $I5013, $N5025
    set $I101, $I5013
    set $I5014, $I101
    goto while181_test545 
  while181_done549:
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
.sub "run" :subid("cuid_23_1351011918.305") :anon :lex :outer("cuid_28_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 375
    .param pmc _lex_param_0 
    .param string _lex_param_1 
    .param int _lex_param_2 
    .lex "self", _lex_param_0 
    .lex "$target", _lex_param_1 
    .lex "$offset", _lex_param_2 
    nqp_decontainerize $P5002, _lex_param_0
    nqp_get_sc_object $P5003, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 3
    repr_get_attr_obj $P5004, $P5002, $P5003, "$!states"
    set $S5001, _lex_param_1
    set $I5001, _lex_param_2
    nqp_nfa_run_protoregex $P5001, $P5004, $S5001, $I5001
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "run_alt" :subid("cuid_24_1351011918.305") :anon :lex :outer("cuid_28_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 425
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
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 3
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!states"
    set $S5001, _lex_param_1
    set $I5001, _lex_param_2
    nqp_nfa_run_alternation $P5003, $S5001, $I5001, _lex_param_3, _lex_param_4, _lex_param_5
    .return () 
.end
.HLL "nqp"
.namespace []
.sub "generic" :subid("cuid_25_1351011918.305") :anon :lex :outer("cuid_28_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 429
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 3
    repr_get_attr_int $I5001, $P5001, $P5002, "$!generic"
    .return ($I5001) 
.end
.HLL "nqp"
.namespace []
.sub "instantiate_generic" :subid("cuid_26_1351011918.305") :anon :lex :outer("cuid_28_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 433
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5031 = 'cuid_131_1351011918.305' 
    capture_lex $P5031 
    .const 'Sub' $P5031 = 'cuid_133_1351011918.305' 
    capture_lex $P5031 
    .lex "$copy", $P101 
    .lex "@copied_states", $P102 
    .lex "$from", $I101 
    .lex "self", _lex_param_0 
    .lex "$env", _lex_param_1 
    nqp_get_sc_object $P5001, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P101, $P5001
    new $P5002, 'ResizablePMCArray'
    set $P102, $P5002
    set $I101, 0
    nqp_decontainerize $P5004, _lex_param_0
    repr_instance_of $P5003, $P5004
    set $P101, $P5003
    nqp_decontainerize $P5008, _lex_param_0
    nqp_get_sc_object $P5009, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 3
    repr_get_attr_obj $P5010, $P5008, $P5009, "$!states"
    set $P5005, $P5010
    iter $P5007, $P5010
  for_next568:
    unless $P5007, for_done570
    shift $P5012, $P5007
  for_redo569:
    .const 'Sub' $P5011 = 'cuid_131_1351011918.305' 
    capture_lex $P5011
    $P5005 = $P5011($P5012)
    goto for_next568
  for_done570:
    nqp_get_sc_object $P5016, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 0
    nqp_get_package_through_who $P5015, $P5016, "QRegex"
    get_who $P5014, $P5015
    set $P5013, $P5014["NFA"]
    unless_null $P5013, fallback571
    nqp_get_sc_object $P5017, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5013, $P5017
  fallback571:
    setattribute $P101, $P5013, "$!states", $P102
    nqp_get_sc_object $P5021, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 0
    nqp_get_package_through_who $P5020, $P5021, "QRegex"
    get_who $P5019, $P5020
    set $P5018, $P5019["NFA"]
    unless_null $P5018, fallback572
    nqp_get_sc_object $P5022, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5018, $P5022
  fallback572:
    nqp_decontainerize $P5023, _lex_param_0
    nqp_get_sc_object $P5024, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 3
    repr_get_attr_obj $P5025, $P5023, $P5024, "$!edges"
    setattribute $P101, $P5018, "$!edges", $P5025
    set $I101, 0
    set $P5026, $P102
    iter $P5028, $P102
  for_next589:
    unless $P5028, for_done591
    shift $P5030, $P5028
  for_redo590:
    .const 'Sub' $P5029 = 'cuid_133_1351011918.305' 
    capture_lex $P5029
    $P5026 = $P5029($P5030)
    goto for_next589
  for_done591:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_131_1351011918.305") :anon :lex :outer("cuid_26_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 437
    .param pmc _lex_param_0 
    .lex "@values", _lex_param_0 
    find_lex $P5001, "@copied_states"
    clone $P5002, _lex_param_0
    push $P5001, $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_133_1351011918.305") :anon :lex :outer("cuid_26_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 446
    .param pmc _lex_param_0 
    .const 'Sub' $P5006 = 'cuid_132_1351011918.305' 
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
  while185_test573:
    set $N5001, $I101
    set $N5002, $I102
    islt $I5002, $N5001, $N5002
    box $P5005, $I5002
    set $P5004, $P5005
    unless $I5002 goto while185_done577 
  while185_redo575:
    .const 'Sub' $P5002 = 'cuid_132_1351011918.305' 
    capture_lex $P5002
    $P5003 = $P5002()
    set $P5004, $P5003
    goto while185_test573 
  while185_done577:
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
.sub "" :subid("cuid_132_1351011918.305") :anon :lex :outer("cuid_133_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 450
    .lex "$act", $P101 
    .lex "$arg", $P102 
    .lex "$to", $P103 
    nqp_get_sc_object $P5001, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P101, $P5001
    nqp_get_sc_object $P5002, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P102, $P5002
    nqp_get_sc_object $P5003, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P103, $P5003
    find_lex $P5005, "@values"
    find_lex $I5001, "$i"
    set $P5004, $P5005[$I5001]
    unless_null $P5004, fallback578
    nqp_get_sc_object $P5006, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5004, $P5006
  fallback578:
    set $P101, $P5004
    find_lex $P5008, "@values"
    find_lex $I5002, "$i"
    set $N5002, $I5002
    set $N5003, 1
    add $N5001, $N5002, $N5003
    set $I5003, $N5001
    set $P5007, $P5008[$I5003]
    unless_null $P5007, fallback579
    nqp_get_sc_object $P5009, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5007, $P5009
  fallback579:
    set $P102, $P5007
    find_lex $P5011, "@values"
    find_lex $I5004, "$i"
    set $N5005, $I5004
    set $N5006, 2
    add $N5004, $N5005, $N5006
    set $I5005, $N5004
    set $P5010, $P5011[$I5005]
    unless_null $P5010, fallback580
    nqp_get_sc_object $P5012, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5010, $P5012
  fallback580:
    set $P103, $P5010
    set $N5007, $P101
    find_lex $P5015, "$?PACKAGE"
    get_who $P5014, $P5015
    set $P5013, $P5014["$EDGE_GENERIC_VAR"]
    unless_null $P5013, fallback583
    nqp_get_sc_object $P5016, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5013, $P5016
  fallback583:
    set $N5008, $P5013
    iseq $I5006, $N5007, $N5008
    unless $I5006 goto if186_end582 
.annotate 'line', 454
    find_lex $P5017, "$env"
    set $S5001, $P102
    exists $I5007, $P5017[$S5001]
    unless $I5007 goto if187_else584 
.annotate 'line', 455
.annotate 'line', 456
    find_lex $P5018, "$copy"
.annotate 'line', 457
    nqp_get_sc_object $P5022, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 0
    nqp_get_package_through_who $P5021, $P5022, "QAST"
    get_who $P5020, $P5021
    set $P5019, $P5020["Regex"]
    unless_null $P5019, fallback586
    nqp_get_sc_object $P5023, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5019, $P5023
  fallback586:
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
    unless_null $P5028, fallback587
    nqp_get_sc_object $P5031, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5028, $P5031
  fallback587:
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
    goto if187_end585
  if187_else584:
.annotate 'line', 463
    find_lex $P5036, "@values"
    find_lex $I5014, "$i"
    find_lex $P5039, "$?PACKAGE"
    get_who $P5038, $P5039
    set $P5037, $P5038["$EDGE_FATE"]
    unless_null $P5037, fallback588
    nqp_get_sc_object $P5040, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5037, $P5040
  fallback588:
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
  if187_end585:
  if186_end582:
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
.sub "__dump" :subid("cuid_27_1351011918.305") :anon :lex :outer("cuid_28_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 477
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .const 'Sub' $P5015 = 'cuid_134_1351011918.305' 
    capture_lex $P5015 
    .lex "$subindent", $P101 
    .lex "$st", $P102 
    .lex "self", _lex_param_0 
    .lex "$dumper", _lex_param_1 
    .lex "$label", _lex_param_2 
    nqp_get_sc_object $P5001, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P101, $P5001
    nqp_get_sc_object $P5002, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P102, $P5002
.annotate 'line', 478
    $P5003 = _lex_param_1."newIndent"()
    set $P101, $P5003
.annotate 'line', 479
    "&print"("[")
    box $P5004, 0
    set $P102, $P5004
    nqp_decontainerize $P5008, _lex_param_0
    nqp_get_sc_object $P5009, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 3
    repr_get_attr_obj $P5010, $P5008, $P5009, "$!states"
    set $P5005, $P5010
    iter $P5007, $P5010
  for_next592:
    unless $P5007, for_done594
    shift $P5012, $P5007
  for_redo593:
    .const 'Sub' $P5011 = 'cuid_134_1351011918.305' 
    capture_lex $P5011
    $P5005 = $P5011($P5012)
    goto for_next592
  for_done594:
.annotate 'line', 485
    _lex_param_1."deleteIndent"()
.annotate 'line', 486
    $P5013 = _lex_param_1."indent"()
    $P5014 = "&print"("\n", $P5013, "]")
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_134_1351011918.305") :anon :lex :outer("cuid_27_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 481
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 482
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
.sub "" :subid("cuid_70_1351011918.305") :anon :lex :outer("cuid_1_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 491
    .param pmc _lex_param_0 
    .const 'Sub' $P5049 = 'cuid_29_1351011918.305' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_30_1351011918.305' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_31_1351011918.305' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_32_1351011918.305' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_33_1351011918.305' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_34_1351011918.305' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_35_1351011918.305' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_36_1351011918.305' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_37_1351011918.305' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_38_1351011918.305' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_39_1351011918.305' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_40_1351011918.305' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_41_1351011918.305' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_42_1351011918.305' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_43_1351011918.305' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_44_1351011918.305' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_45_1351011918.305' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_46_1351011918.305' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_47_1351011918.305' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_48_1351011918.305' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_49_1351011918.305' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_50_1351011918.305' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_51_1351011918.305' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_52_1351011918.305' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_53_1351011918.305' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_54_1351011918.305' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_55_1351011918.305' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_56_1351011918.305' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_57_1351011918.305' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_58_1351011918.305' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_59_1351011918.305' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_60_1351011918.305' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_61_1351011918.305' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_62_1351011918.305' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_63_1351011918.305' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_64_1351011918.305' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_65_1351011918.305' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_66_1351011918.305' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_67_1351011918.305' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_68_1351011918.305' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_69_1351011918.305' 
    capture_lex $P5049 
    .lex "$?PACKAGE", $P101 
    .lex "$?ROLE", $P102 
    .lex "$NO_CAPS", $P103 
    .lex "$pass_mark", $P104 
    .lex "@EMPTY", $P105 
    .lex "$?CLASS", _lex_param_0 
    nqp_get_sc_object $P5001, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P103, $P5001
    nqp_get_sc_object $P5002, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P104, $P5002
    new $P5003, 'ResizablePMCArray'
    set $P105, $P5003
    .const 'Sub' $P5004 = 'cuid_29_1351011918.305' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_30_1351011918.305' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_31_1351011918.305' 
    capture_lex $P5006
    new $P5007, 'Hash'
    set $P103, $P5007
    .const 'Sub' $P5008 = 'cuid_32_1351011918.305' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_33_1351011918.305' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_34_1351011918.305' 
    capture_lex $P5010
    .const 'Sub' $P5011 = 'cuid_35_1351011918.305' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_36_1351011918.305' 
    capture_lex $P5012
    .const 'Sub' $P5013 = 'cuid_37_1351011918.305' 
    capture_lex $P5013
    box $P5014, 1
    set $P104, $P5014
    .const 'Sub' $P5015 = 'cuid_38_1351011918.305' 
    capture_lex $P5015
    .const 'Sub' $P5016 = 'cuid_39_1351011918.305' 
    capture_lex $P5016
    .const 'Sub' $P5017 = 'cuid_40_1351011918.305' 
    capture_lex $P5017
    .const 'Sub' $P5018 = 'cuid_41_1351011918.305' 
    capture_lex $P5018
    .const 'Sub' $P5019 = 'cuid_42_1351011918.305' 
    capture_lex $P5019
    .const 'Sub' $P5020 = 'cuid_43_1351011918.305' 
    capture_lex $P5020
    new $P5021, 'ResizablePMCArray'
    set $P105, $P5021
    .const 'Sub' $P5022 = 'cuid_44_1351011918.305' 
    capture_lex $P5022
    .const 'Sub' $P5023 = 'cuid_45_1351011918.305' 
    capture_lex $P5023
    .const 'Sub' $P5024 = 'cuid_46_1351011918.305' 
    capture_lex $P5024
    .const 'Sub' $P5025 = 'cuid_47_1351011918.305' 
    capture_lex $P5025
    .const 'Sub' $P5026 = 'cuid_48_1351011918.305' 
    capture_lex $P5026
    .const 'Sub' $P5027 = 'cuid_49_1351011918.305' 
    capture_lex $P5027
    .const 'Sub' $P5028 = 'cuid_50_1351011918.305' 
    capture_lex $P5028
    .const 'Sub' $P5029 = 'cuid_51_1351011918.305' 
    capture_lex $P5029
    .const 'Sub' $P5030 = 'cuid_52_1351011918.305' 
    capture_lex $P5030
    .const 'Sub' $P5031 = 'cuid_53_1351011918.305' 
    capture_lex $P5031
    .const 'Sub' $P5032 = 'cuid_54_1351011918.305' 
    capture_lex $P5032
    .const 'Sub' $P5033 = 'cuid_55_1351011918.305' 
    capture_lex $P5033
    .const 'Sub' $P5034 = 'cuid_56_1351011918.305' 
    capture_lex $P5034
    .const 'Sub' $P5035 = 'cuid_57_1351011918.305' 
    capture_lex $P5035
    .const 'Sub' $P5036 = 'cuid_58_1351011918.305' 
    capture_lex $P5036
    .const 'Sub' $P5037 = 'cuid_59_1351011918.305' 
    capture_lex $P5037
    .const 'Sub' $P5038 = 'cuid_60_1351011918.305' 
    capture_lex $P5038
    .const 'Sub' $P5039 = 'cuid_61_1351011918.305' 
    capture_lex $P5039
    .const 'Sub' $P5040 = 'cuid_62_1351011918.305' 
    capture_lex $P5040
    .const 'Sub' $P5041 = 'cuid_63_1351011918.305' 
    capture_lex $P5041
    .const 'Sub' $P5042 = 'cuid_64_1351011918.305' 
    capture_lex $P5042
    .const 'Sub' $P5043 = 'cuid_65_1351011918.305' 
    capture_lex $P5043
    .const 'Sub' $P5044 = 'cuid_66_1351011918.305' 
    capture_lex $P5044
    .const 'Sub' $P5045 = 'cuid_67_1351011918.305' 
    capture_lex $P5045
    .const 'Sub' $P5046 = 'cuid_68_1351011918.305' 
    capture_lex $P5046
    .const 'Sub' $P5047 = 'cuid_69_1351011918.305' 
    capture_lex $P5047
    getinterp $P5048
    set $P5048, $P5048['lexpad']
    .return ($P5048) 
.end
.HLL "nqp"
.namespace []
.sub "target" :subid("cuid_29_1351011918.305") :anon :lex :outer("cuid_70_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 503
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    find_lex $P5002, "$?CLASS"
    repr_get_attr_str $S5001, $P5001, $P5002, "$!target"
    .return ($S5001) 
.end
.HLL "nqp"
.namespace []
.sub "from" :subid("cuid_30_1351011918.305") :anon :lex :outer("cuid_70_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 504
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    find_lex $P5002, "$?CLASS"
    repr_get_attr_int $I5001, $P5001, $P5002, "$!from"
    .return ($I5001) 
.end
.HLL "nqp"
.namespace []
.sub "pos" :subid("cuid_31_1351011918.305") :anon :lex :outer("cuid_70_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 505
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    find_lex $P5002, "$?CLASS"
    repr_get_attr_int $I5001, $P5001, $P5002, "$!pos"
    .return ($I5001) 
.end
.HLL "nqp"
.namespace []
.sub "CAPHASH" :subid("cuid_32_1351011918.305") :anon :lex :outer("cuid_70_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 508
    .param pmc _lex_param_0 
    .const 'Sub' $P5064 = 'cuid_90_1351011918.305' 
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
    nqp_get_sc_object $P5001, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P101, $P5001
    new $P5002, 'Hash'
    set $P102, $P5002
    nqp_get_sc_object $P5003, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P103, $P5003
    set $S101, ""
    nqp_get_sc_object $P5004, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P104, $P5004
    set $I101, 0
    set $I102, 0
    nqp_get_sc_object $P5005, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P105, $P5005
    nqp_get_sc_object $P5006, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P106, $P5006
    nqp_get_sc_object $P5007, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
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
    unless $I5001 goto if189_end598 
    nqp_decontainerize $P5013, _lex_param_0
    find_lex $P5014, "$?CLASS"
    repr_get_attr_obj $P5015, $P5013, $P5014, "$!regexsub"
    defined $I5003, $P5015
    set $I5004, $I5003
  if189_end598:
    unless $I5004 goto if188_end596 
.annotate 'line', 520
    nqp_decontainerize $P5016, _lex_param_0
    find_lex $P5017, "$?CLASS"
    repr_get_attr_obj $P5018, $P5016, $P5017, "$!regexsub"
    can $I5005, $P5018, "CAPS"
    unless $I5005 goto if190_else599 
.annotate 'line', 521
    nqp_decontainerize $P5019, _lex_param_0
    find_lex $P5020, "$?CLASS"
    repr_get_attr_obj $P5021, $P5019, $P5020, "$!regexsub"
    $P5022 = $P5021."CAPS"()
    set $P5024, $P5022
    goto if190_end600
  if190_else599:
    null $P5023
    set $P5024, $P5023
  if190_end600:
    set $P102, $P5024
    isnull $I5007, $P102
    not $I5006, $I5007
    box $P5026, $I5006
    set $P5025, $P5026
    unless $I5006 goto if192_end604 
    set $P5025, $P102
  if192_end604:
    set $P5034, $P5025
    unless $P5025 goto if191_end602 
.annotate 'line', 522
    iter $P5027, $P102
    set $P103, $P5027
  while193_test605:
    set $P5033, $P103
    unless $P103 goto while193_done609 
  while193_redo607:
.annotate 'line', 524
    shift $S5001, $P103
    set $S101, $S5001
    set $P5028, $P102[$S101]
    unless_null $P5028, fallback612
    nqp_get_sc_object $P5029, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5028, $P5029
  fallback612:
    set $N5001, $P5028
    set $N5002, 2
    isge $I5008, $N5001, $N5002
    box $P5032, $I5008
    set $P5031, $P5032
    unless $I5008 goto if194_end611 
    new $P5030, 'ResizablePMCArray'
    set $P101[$S101], $P5030
    set $P5031, $P5030
  if194_end611:
    set $P5033, $P5031
    goto while193_test605 
  while193_done609:
    set $P5034, $P5033
  if191_end602:
  if188_end596:
    nqp_decontainerize $P5035, _lex_param_0
    find_lex $P5036, "$?CLASS"
    repr_get_attr_obj $P5037, $P5035, $P5036, "$!cstack"
    isnull $I5010, $P5037
    not $I5009, $I5010
    box $P5042, $I5009
    set $P5041, $P5042
    unless $I5009 goto if196_end616 
    nqp_decontainerize $P5038, _lex_param_0
    find_lex $P5039, "$?CLASS"
    repr_get_attr_obj $P5040, $P5038, $P5039, "$!cstack"
    set $P5041, $P5040
  if196_end616:
    unless $P5041 goto if195_end614 
.annotate 'line', 530
    nqp_decontainerize $P5043, _lex_param_0
    find_lex $P5044, "$?CLASS"
    repr_get_attr_obj $P5045, $P5043, $P5044, "$!cstack"
    set $P104, $P5045
    elements $I5011, $P104
    set $I102, $I5011
  while197_test617:
    set $N5003, $I101
    set $N5004, $I102
    islt $I5012, $N5003, $N5004
    box $P5063, $I5012
    set $P5062, $P5063
    unless $I5012 goto while197_done621 
  while197_redo619:
.annotate 'line', 533
    set $P5046, $P104[$I101]
    set $P105, $P5046
.annotate 'line', 535
    $P5047 = $P105."MATCH"()
    set $P106, $P5047
    find_lex $P5049, "$?CLASS"
    getattribute $P5048, $P105, $P5049, "$!name"
    set $P107, $P5048
    isnull $I5014, $P107
    not $I5013, $I5014
    set $I5016, $I5013
    unless $I5013 goto if199_end625 
    defined $I5015, $P107
    set $I5016, $I5015
  if199_end625:
    unless $I5016 goto if198_end623 
.annotate 'line', 537
    set $S5002, $P107
    index $I5018, $S5002, "=", 0
    set $N5005, $I5018
    set $N5006, 0
    islt $I5017, $N5005, $N5006
    unless $I5017 goto if200_else626 
.annotate 'line', 538
    set $S5003, $P107
    set $P5050, $P102[$S5003]
    unless_null $P5050, fallback630
    nqp_get_sc_object $P5051, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5050, $P5051
  fallback630:
    set $N5007, $P5050
    set $N5008, 2
    isge $I5019, $N5007, $N5008
    unless $I5019 goto if201_else628 
    set $S5004, $P107
    set $P5052, $P101[$S5004]
    unless_null $P5052, fallback631
    nqp_get_sc_object $P5053, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5052, $P5053
  fallback631:
    push $P5052, $P106
    set $P5054, $P5052
    goto if201_end629
  if201_else628:
    set $S5005, $P107
    set $P101[$S5005], $P106
    set $P5054, $P106
  if201_end629:
    set $P5061, $P5054
    goto if200_end627
  if200_else626:
.annotate 'line', 543
    set $S5006, $P107
    split $P5058, "=", $S5006
    set $P5055, $P5058
    iter $P5057, $P5058
  for_next636:
    unless $P5057, for_done638
    shift $P5060, $P5057
  for_redo637:
    .const 'Sub' $P5059 = 'cuid_90_1351011918.305' 
    capture_lex $P5059
    $P5055 = $P5059($P5060)
    goto for_next636
  for_done638:
    set $P5061, $P5055
  if200_end627:
  if198_end623:
    box $P5062, $I101
    set tmp_5, $P5062
    set $N5010, tmp_5
    set $N5011, 1
    add $N5009, $N5010, $N5011
    set $I5020, $N5009
    set $I101, $I5020
    set $P5062, tmp_5
    goto while197_test617 
  while197_done621:
  if195_end614:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_90_1351011918.305") :anon :lex :outer("cuid_32_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 544
    .param pmc _lex_param_0 
    .lex "$name", _lex_param_0 
    find_lex $P5002, "%caplist"
    set $S5001, _lex_param_0
    set $P5001, $P5002[$S5001]
    unless_null $P5001, fallback634
    nqp_get_sc_object $P5003, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5001, $P5003
  fallback634:
    set $N5001, $P5001
    set $N5002, 2
    isge $I5001, $N5001, $N5002
    unless $I5001 goto if202_else632 
    find_lex $P5005, "$caps"
    set $S5002, _lex_param_0
    set $P5004, $P5005[$S5002]
    unless_null $P5004, fallback635
    nqp_get_sc_object $P5006, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5004, $P5006
  fallback635:
    find_lex $P5007, "$submatch"
    push $P5004, $P5007
    set $P5010, $P5004
    goto if202_end633
  if202_else632:
    find_lex $P5008, "$caps"
    set $S5003, _lex_param_0
    find_lex $P5009, "$submatch"
    set $P5008[$S5003], $P5009
    set $P5010, $P5009
  if202_end633:
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "!cursor_init" :subid("cuid_33_1351011918.305") :anon :lex :outer("cuid_70_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 557
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :named("p") :optional 
    .param int haz_param_14 :opt_flag 
    .param pmc _lex_param_3 :named("c") :optional 
    .param int haz_param_15 :opt_flag 
    if haz_param_14, default641
    box $P5011, 0
    set _lex_param_2, $P5011
  default641:
    if haz_param_15, default642
    nqp_get_sc_object $P5012, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set _lex_param_3, $P5012
  default642:
    .lex "$new", $P101 
    .lex "self", _lex_param_0 
    .lex "$target", _lex_param_1 
    .lex "$p", _lex_param_2 
    .lex "$c", _lex_param_3 
    nqp_get_sc_object $P5001, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P101, $P5001
.annotate 'line', 558
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
    unless $I5002 goto if203_else639 
.annotate 'line', 562
    find_lex $P5007, "$?CLASS"
    repr_bind_attr_int $P101, $P5007, "$!from", -1
    find_lex $P5008, "$?CLASS"
    set $I5003, _lex_param_3
    repr_bind_attr_int $P101, $P5008, "$!pos", $I5003
    goto if203_end640
  if203_else639:
.annotate 'line', 566
    find_lex $P5009, "$?CLASS"
    set $I5004, _lex_param_2
    repr_bind_attr_int $P101, $P5009, "$!from", $I5004
    find_lex $P5010, "$?CLASS"
    set $I5005, _lex_param_2
    repr_bind_attr_int $P101, $P5010, "$!pos", $I5005
  if203_end640:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "!cursor_start" :subid("cuid_34_1351011918.305") :anon :lex :outer("cuid_70_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 573
    .param pmc _lex_param_0 
    .lex "$new", $P101 
    .lex "$sub", $P102 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P101, $P5001
    nqp_get_sc_object $P5002, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
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
    unless_null $P5011, vivi_204643
    set $P5011, $P102
  vivi_204643:
    setattribute $P101, $P5010, "$!regexsub", $P5011
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_obj $P5014, $P5012, $P5013, "$!restart"
    defined $I5001, $P5014
    unless $I5001 goto if205_end645 
.annotate 'line', 581
    find_lex $P5015, "$?CLASS"
    nqp_decontainerize $P5016, _lex_param_0
    find_lex $P5017, "$?CLASS"
    repr_get_attr_int $I5002, $P5016, $P5017, "$!pos"
    repr_bind_attr_int $P101, $P5015, "$!pos", $I5002
    nqp_decontainerize $P5018, _lex_param_0
    find_lex $P5019, "$?CLASS"
    repr_get_attr_obj $P5020, $P5018, $P5019, "$!cstack"
    unless $P5020 goto if206_end647 
    find_lex $P5021, "$?CLASS"
    nqp_decontainerize $P5023, _lex_param_0
    find_lex $P5024, "$?CLASS"
    repr_get_attr_obj $P5025, $P5023, $P5024, "$!cstack"
    clone $P5022, $P5025
    setattribute $P101, $P5021, "$!cstack", $P5022
  if206_end647:
    find_lex $P5026, "$?CLASS"
    nqp_decontainerize $P5027, _lex_param_0
    find_lex $P5028, "$?CLASS"
    repr_get_attr_str $S5001, $P5027, $P5028, "$!target"
    repr_bind_attr_str $P101, $P5026, "$!target", $S5001
    find_lex $P5029, "$?CLASS"
    nqp_decontainerize $P5030, _lex_param_0
    find_lex $P5031, "$?CLASS"
    repr_get_attr_int $I5003, $P5030, $P5031, "$!from"
    repr_bind_attr_int $P101, $P5029, "$!from", $I5003
    find_lex $P5032, "$?CLASS"
    find_lex $P5033, "$?CLASS"
    nqp_decontainerize $P5035, _lex_param_0
    find_lex $P5036, "$?CLASS"
    repr_get_attr_obj $P5037, $P5035, $P5036, "$!bstack"
    clone $P5034, $P5037
    setattribute $P101, $P5033, "$!bstack", $P5034
    .return ($P101, $S5001, $I5003, $P5032, $P5034, 1)
  if205_end645:
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
    repr_get_attr_int $I5004, $P5043, $P5044, "$!pos"
    repr_bind_attr_int $P101, $P5042, "$!from", $I5004
    find_lex $P5045, "$?CLASS"
    find_lex $P5046, "$?CLASS"
    new $P5047, "ResizableIntegerArray"
    setattribute $P101, $P5046, "$!bstack", $P5047
    .return ($P101, $S5002, $I5004, $P5045, $P5047, 0)
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "!cursor_start_subcapture" :subid("cuid_35_1351011918.305") :anon :lex :outer("cuid_70_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 603
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$new", $P101 
    .lex "self", _lex_param_0 
    .lex "$from", _lex_param_1 
    nqp_get_sc_object $P5001, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
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
.sub "!cursor_capture" :subid("cuid_36_1351011918.305") :anon :lex :outer("cuid_70_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 612
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
    if $I5001 goto unless207_end649 
    nqp_decontainerize $P5007, _lex_param_0
    find_lex $P5008, "$?CLASS"
    new $P5009, 'ResizablePMCArray'
    repr_bind_attr_obj $P5007, $P5008, "$!cstack", $P5009
  unless207_end649:
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
.sub "!cursor_push_cstack" :subid("cuid_37_1351011918.305") :anon :lex :outer("cuid_70_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 624
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$capture", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    find_lex $P5002, "$?CLASS"
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!cstack"
    defined $I5001, $P5003
    if $I5001 goto unless208_end651 
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    new $P5006, 'ResizablePMCArray'
    repr_bind_attr_obj $P5004, $P5005, "$!cstack", $P5006
  unless208_end651:
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
.sub "!cursor_pass" :subid("cuid_38_1351011918.305") :anon :lex :outer("cuid_70_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 631
    .param pmc _lex_param_0 
    .param int _lex_param_1 
    .param pmc _lex_param_2 :optional 
    .param int haz_param_16 :opt_flag 
    .param pmc _lex_param_3 :named("backtrack") :optional 
    .param int haz_param_17 :opt_flag 
    if haz_param_16, default658
    nqp_get_sc_object $P5017, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set _lex_param_2, $P5017
  default658:
    if haz_param_17, default659
    nqp_get_sc_object $P5018, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set _lex_param_3, $P5018
  default659:
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
    unless _lex_param_3 goto if209_end653 
    nqp_decontainerize $P5006, _lex_param_0
    find_lex $P5007, "$?CLASS"
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_obj $P5010, $P5008, $P5009, "$!regexsub"
    repr_bind_attr_obj $P5006, $P5007, "$!restart", $P5010
  if209_end653:
    if _lex_param_3 goto unless210_end655 
    nqp_decontainerize $P5011, _lex_param_0
    find_lex $P5012, "$?CLASS"
    null $P5013
    repr_bind_attr_obj $P5011, $P5012, "$!bstack", $P5013
  unless210_end655:
    set $P5016, _lex_param_2
    unless _lex_param_2 goto if211_end657 
.annotate 'line', 638
    nqp_decontainerize $P5014, _lex_param_0
    $P5015 = $P5014."!reduce"(_lex_param_2)
    set $P5016, $P5015
  if211_end657:
    .return ($P5016) 
.end
.HLL "nqp"
.namespace []
.sub "!cursor_fail" :subid("cuid_39_1351011918.305") :anon :lex :outer("cuid_70_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 641
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
.sub "!cursor_next" :subid("cuid_40_1351011918.305") :anon :lex :outer("cuid_70_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 647
    .param pmc _lex_param_0 
    .const 'Sub' $P5012 = 'cuid_91_1351011918.305' 
    capture_lex $P5012 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    find_lex $P5002, "$?CLASS"
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!restart"
    defined $I5001, $P5003
    unless $I5001 goto if212_else660 
.annotate 'line', 648
.annotate 'line', 649
    nqp_decontainerize $P5007, _lex_param_0
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!restart"
    $P5008 = $P5006($P5007)
    set $P5011, $P5008
    goto if212_end661
  if212_else660:
    .const 'Sub' $P5009 = 'cuid_91_1351011918.305' 
    capture_lex $P5009
    $P5010 = $P5009()
    set $P5011, $P5010
  if212_end661:
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_91_1351011918.305") :anon :lex :outer("cuid_40_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 651
    .lex "$cur", $P101 
    nqp_get_sc_object $P5001, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P101, $P5001
.annotate 'line', 652
    find_lex $P5003, "self"
    nqp_decontainerize $P5002, $P5003
    $P5004 = $P5002."!cursor_start"()
    set $P101, $P5004
.annotate 'line', 653
    $P101."!cursor_fail"()
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "!cursor_more" :subid("cuid_41_1351011918.305") :anon :lex :outer("cuid_70_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 658
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy :named 
    .lex "$new", $P101 
    .lex "self", _lex_param_0 
    .lex "%opts", _lex_param_1 
    nqp_get_sc_object $P5001, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P101, $P5001
    root_new $P102, ['parrot';'Continuation']
    set_label $P102, lexotic_662
    .lex "RETURN", $P102
    set $P5002, _lex_param_1["ex"]
    unless_null $P5002, fallback666
    nqp_get_sc_object $P5003, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5002, $P5003
  fallback666:
    unless $P5002 goto if213_end665 
.annotate 'line', 659
    nqp_decontainerize $P5005, _lex_param_0
    $P5006 = $P5005."!cursor_next"()
    find_lex $P5004, "RETURN"
    $P5007 = $P5004($P5006)
  if213_end665:
.annotate 'line', 660
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
    unless_null $P5019, fallback671
    nqp_get_sc_object $P5020, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5019, $P5020
  fallback671:
    set $P5025, $P5019
    if $P5019 goto unless215_end670 
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
  unless215_end670:
    unless $P5025 goto if214_else667 
    nqp_decontainerize $P5027, _lex_param_0
    find_lex $P5028, "$?CLASS"
    repr_get_attr_int $I5004, $P5027, $P5028, "$!from"
    set $N5004, $I5004
    set $N5005, 1
    add $N5003, $N5004, $N5005
    box $P5032, $N5003
    set $P5031, $P5032
    goto if214_end668
  if214_else667:
    nqp_decontainerize $P5029, _lex_param_0
    find_lex $P5030, "$?CLASS"
    repr_get_attr_int $I5005, $P5029, $P5030, "$!pos"
    box $P5033, $I5005
    set $P5031, $P5033
  if214_end668:
    set $I5006, $P5031
    repr_bind_attr_int $P101, $P5018, "$!pos", $I5006
.annotate 'line', 666
    nqp_decontainerize $P5034, _lex_param_0
    find_lex $P5035, "$?CLASS"
    repr_get_attr_obj $P5036, $P5034, $P5035, "$!regexsub"
    $P5037 = $P5036($P101)
    goto lexotic_663
  lexotic_662:
    .get_results ($P5037)
  lexotic_663:
    .return ($P5037) 
.end
.HLL "nqp"
.namespace []
.sub "!reduce" :subid("cuid_42_1351011918.305") :anon :lex :outer("cuid_70_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 669
    .param pmc _lex_param_0 
    .param string _lex_param_1 
    .lex "$actions", $P101 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    nqp_get_sc_object $P5001, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P101, $P5001
    find_dynamic_lex $P5002, "$*ACTIONS"
    set $P101, $P5002
    isnull $I5002, $P101
    not $I5001, $I5002
    set $I5004, $I5001
    unless $I5001 goto if217_end675 
    can $I5003, $P101, _lex_param_1
    set $I5004, $I5003
  if217_end675:
    box $P5008, $I5004
    set $P5007, $P5008
    unless $I5004 goto if216_end673 
.annotate 'line', 671
    nqp_decontainerize $P5004, _lex_param_0
    $P5005 = $P5004."MATCH"()
    find_method $P5003, $P101, _lex_param_1
    $P5006 = $P5003($P101, $P5005)
    set $P5007, $P5006
  if216_end673:
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "!reduce_with_match" :subid("cuid_43_1351011918.305") :anon :lex :outer("cuid_70_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 675
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .lex "$actions", $P101 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    .lex "$key", _lex_param_2 
    .lex "$match", _lex_param_3 
    nqp_get_sc_object $P5001, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P101, $P5001
    find_dynamic_lex $P5002, "$*ACTIONS"
    set $P101, $P5002
    isnull $I5002, $P101
    not $I5001, $I5002
    set $I5004, $I5001
    unless $I5001 goto if219_end679 
    set $S5001, _lex_param_1
    can $I5003, $P101, $S5001
    set $I5004, $I5003
  if219_end679:
    box $P5006, $I5004
    set $P5005, $P5006
    unless $I5004 goto if218_end677 
.annotate 'line', 677
    set $S5002, _lex_param_1
    find_method $P5003, $P101, $S5002
    $P5004 = $P5003($P101, _lex_param_3, _lex_param_2)
    set $P5005, $P5004
  if218_end677:
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "!protoregex" :subid("cuid_44_1351011918.305") :anon :lex :outer("cuid_70_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 682
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5031 = 'cuid_92_1351011918.305' 
    capture_lex $P5031 
    .lex "$nfa", $P101 
    .lex "@fates", $P102 
    .lex "@rxfate", $P103 
    .lex "$cur", $P104 
    .lex "$rxname", $P105 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    nqp_get_sc_object $P5001, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P101, $P5001
    new $P5002, 'ResizablePMCArray'
    set $P102, $P5002
    new $P5003, 'ResizablePMCArray'
    set $P103, $P5003
    nqp_get_sc_object $P5004, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P104, $P5004
    nqp_get_sc_object $P5005, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P105, $P5005
.annotate 'line', 684
    nqp_decontainerize $P5007, _lex_param_0
    get_how $P5006, $P5007
    nqp_decontainerize $P5008, _lex_param_0
    .const 'Sub' $P5010 = 'cuid_92_1351011918.305' 
    capture_lex $P5010
    newclosure $P5009, $P5010
    $P5011 = $P5006."cache"($P5008, _lex_param_1, $P5009)
    set $P101, $P5011
.annotate 'line', 685
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_str $S5001, $P5012, $P5013, "$!target"
    nqp_decontainerize $P5014, _lex_param_0
    find_lex $P5015, "$?CLASS"
    repr_get_attr_int $I5001, $P5014, $P5015, "$!pos"
    $P5016 = $P101."run"($S5001, $I5001)
    set $P102, $P5016
.annotate 'line', 688
    $P5018 = $P101."states"()
    set $P5017, $P5018[0]
    unless_null $P5017, fallback680
    nqp_get_sc_object $P5019, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5017, $P5019
  fallback680:
    set $P103, $P5017
  while220_test681:
    set $P5027, $P102
    unless $P102 goto while220_done685 
  while220_redo683:
.annotate 'line', 691
    pop $I5002, $P102
    set $P5020, $P103[$I5002]
    set $P105, $P5020
.annotate 'line', 694
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
    unless $I5003 goto if221_end687 
    find_lex $P5024, "@EMPTY"
    set $P102, $P5024
    set $P5025, $P102
  if221_end687:
    set $P5027, $P5025
    goto while220_test681 
  while220_done685:
    set $P5028, $P104
    defined $I5005, $P5028
    if $I5005, defor688
.annotate 'line', 697
    nqp_decontainerize $P5029, _lex_param_0
    $P5030 = $P5029."!cursor_start"()
    set $P5028, $P5030
  defor688:
    .return ($P5028) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_92_1351011918.305") :anon :lex :outer("cuid_44_1351011918.305")
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
.sub "!protoregex_nfa" :subid("cuid_45_1351011918.305") :anon :lex :outer("cuid_70_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 700
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5026 = 'cuid_93_1351011918.305' 
    capture_lex $P5026 
    .const 'Sub' $P5026 = 'cuid_94_1351011918.305' 
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
    nqp_get_sc_object $P5002, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P102, $P5002
    new $P5003, 'ResizablePMCArray'
    set $P103, $P5003
    set $I101, 0
    set $I102, 0
.annotate 'line', 701
    nqp_decontainerize $P5005, _lex_param_0
    get_how $P5004, $P5005
    nqp_decontainerize $P5006, _lex_param_0
    .const 'Sub' $P5008 = 'cuid_93_1351011918.305' 
    capture_lex $P5008
    newclosure $P5007, $P5008
    $P5009 = $P5004."cache"($P5006, "!protoregex_table", $P5007)
    set $P101, $P5009
.annotate 'line', 702
    nqp_get_sc_object $P5013, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 0
    nqp_get_package_through_who $P5012, $P5013, "QRegex"
    get_who $P5011, $P5012
    set $P5010, $P5011["NFA"]
    unless_null $P5010, fallback689
    nqp_get_sc_object $P5014, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5010, $P5014
  fallback689:
    $P5015 = $P5010."new"()
    set $P102, $P5015
.annotate 'line', 703
    $P5017 = $P102."states"()
    set $P5016, $P5017[0]
    unless_null $P5016, fallback690
    nqp_get_sc_object $P5018, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5016, $P5018
  fallback690:
    set $P103, $P5016
    set $I101, 1
    set $I102, 0
    set $S5001, _lex_param_1
    exists $I5001, $P101[$S5001]
    unless $I5001 goto if222_end692 
.annotate 'line', 706
    set $S5002, _lex_param_1
    set $P5022, $P101[$S5002]
    unless_null $P5022, fallback693
    nqp_get_sc_object $P5023, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5022, $P5023
  fallback693:
    set $P5019, $P5022
    iter $P5021, $P5022
  for_next694:
    unless $P5021, for_done696
    shift $P5025, $P5021
  for_redo695:
    .const 'Sub' $P5024 = 'cuid_94_1351011918.305' 
    capture_lex $P5024
    $P5019 = $P5024($P5025)
    goto for_next694
  for_done696:
  if222_end692:
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_93_1351011918.305") :anon :lex :outer("cuid_45_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 701

    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    $P5003 = $P5001."!protoregex_table"()
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_94_1351011918.305") :anon :lex :outer("cuid_45_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 707
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
.annotate 'line', 710
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
.sub "!protoregex_table" :subid("cuid_46_1351011918.305") :anon :lex :outer("cuid_70_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 716
    .param pmc _lex_param_0 
    .const 'Sub' $P5011 = 'cuid_96_1351011918.305' 
    capture_lex $P5011 
    .lex "%protorx", $P101 
    .lex "self", _lex_param_0 
    new $P5001, 'Hash'
    set $P101, $P5001
.annotate 'line', 718
    nqp_decontainerize $P5006, _lex_param_0
    get_how $P5005, $P5006
    nqp_decontainerize $P5007, _lex_param_0
    $P5008 = $P5005."methods"($P5007)
    set $P5002, $P5008
    iter $P5004, $P5008
  for_next702:
    unless $P5004, for_done704
    shift $P5010, $P5004
  for_redo703:
    .const 'Sub' $P5009 = 'cuid_96_1351011918.305' 
    capture_lex $P5009
    $P5002 = $P5009($P5010)
    goto for_next702
  for_done704:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_96_1351011918.305") :anon :lex :outer("cuid_46_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 718
    .param pmc _lex_param_0 
    .const 'Sub' $P5005 = 'cuid_95_1351011918.305' 
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
    unless $I5002 goto if223_end698 
    .const 'Sub' $P5001 = 'cuid_95_1351011918.305' 
    capture_lex $P5001
    $P5002 = $P5001()
    set $P5003, $P5002
  if223_end698:
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_95_1351011918.305") :anon :lex :outer("cuid_96_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 721
    .lex "$prefix", $S101 
    set $S101, ""
    find_lex $S5002, "$methname"
    find_lex $I5001, "$sympos"
    substr $S5001, $S5002, 0, $I5001
    set $S101, $S5001
    find_lex $P5001, "%protorx"
    exists $I5002, $P5001[$S101]
    if $I5002 goto unless224_end700 
    find_lex $P5002, "%protorx"
    new $P5003, 'ResizablePMCArray'
    set $P5002[$S101], $P5003
  unless224_end700:
    find_lex $P5005, "%protorx"
    set $P5004, $P5005[$S101]
    unless_null $P5004, fallback701
    nqp_get_sc_object $P5006, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5004, $P5006
  fallback701:
    find_lex $S5003, "$methname"
    box $P5007, $S5003
    push $P5004, $P5007
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "!alt" :subid("cuid_47_1351011918.305") :anon :lex :outer("cuid_70_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 730
    .param pmc _lex_param_0 
    .param int _lex_param_1 
    .param string _lex_param_2 
    .param pmc _lex_param_3 :optional 
    .param int haz_param_18 :opt_flag 
    .const 'Sub' $P5018 = 'cuid_97_1351011918.305' 
    capture_lex $P5018 
    if haz_param_18, default705
    new $P5017, 'ResizablePMCArray'
    set _lex_param_3, $P5017
  default705:
    .lex "$nfa", $P101 
    .lex "self", _lex_param_0 
    .lex "$pos", _lex_param_1 
    .lex "$name", _lex_param_2 
    .lex "@labels", _lex_param_3 
    nqp_get_sc_object $P5001, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P101, $P5001
.annotate 'line', 731
    nqp_decontainerize $P5003, _lex_param_0
    get_how $P5002, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    .const 'Sub' $P5006 = 'cuid_97_1351011918.305' 
    capture_lex $P5006
    newclosure $P5005, $P5006
    $P5007 = $P5002."cache"($P5004, _lex_param_2, $P5005)
    set $P101, $P5007
.annotate 'line', 732
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_str $S5001, $P5008, $P5009, "$!target"
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_obj $P5012, $P5010, $P5011, "$!bstack"
    nqp_decontainerize $P5013, _lex_param_0
    find_lex $P5014, "$?CLASS"
    repr_get_attr_obj $P5015, $P5013, $P5014, "$!cstack"
    $P5016 = $P101."run_alt"($S5001, _lex_param_1, $P5012, $P5015, _lex_param_3)
    .return ($P5016) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_97_1351011918.305") :anon :lex :outer("cuid_47_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 731

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
.sub "!alt_nfa" :subid("cuid_48_1351011918.305") :anon :lex :outer("cuid_70_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 735
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param string _lex_param_2 
    .const 'Sub' $P5018 = 'cuid_98_1351011918.305' 
    capture_lex $P5018 
    .lex "$nfa", $P101 
    .lex "@fates", $P102 
    .lex "$start", $I101 
    .lex "$fate", $I102 
    .lex "self", _lex_param_0 
    .lex "$regex", _lex_param_1 
    .lex "$name", _lex_param_2 
    nqp_get_sc_object $P5001, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P101, $P5001
    new $P5002, 'ResizablePMCArray'
    set $P102, $P5002
    set $I101, 0
    set $I102, 0
.annotate 'line', 736
    nqp_get_sc_object $P5006, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 0
    nqp_get_package_through_who $P5005, $P5006, "QRegex"
    get_who $P5004, $P5005
    set $P5003, $P5004["NFA"]
    unless_null $P5003, fallback706
    nqp_get_sc_object $P5007, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5003, $P5007
  fallback706:
    $P5008 = $P5003."new"()
    set $P101, $P5008
.annotate 'line', 737
    $P5010 = $P101."states"()
    set $P5009, $P5010[0]
    unless_null $P5009, fallback707
    nqp_get_sc_object $P5011, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5009, $P5011
  fallback707:
    set $P102, $P5009
    set $I101, 1
    set $I102, 0
.annotate 'line', 740
    $P5015 = _lex_param_1."ALT_NFA"(_lex_param_2)
    set $P5012, $P5015
    iter $P5014, $P5015
  for_next708:
    unless $P5014, for_done710
    shift $P5017, $P5014
  for_redo709:
    .const 'Sub' $P5016 = 'cuid_98_1351011918.305' 
    capture_lex $P5016
    $P5012 = $P5016($P5017)
    goto for_next708
  for_done710:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_98_1351011918.305") :anon :lex :outer("cuid_48_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 740
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    .local pmc tmp_6 
    find_lex $P5001, "@fates"
    find_lex $I5001, "$fate"
    find_lex $I5002, "$fate"
    box $P5002, $I5002
    set $P5001[$I5001], $P5002
.annotate 'line', 742
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
.sub "!precompute_nfas" :subid("cuid_49_1351011918.305") :anon :lex :outer("cuid_70_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 748
    .param pmc _lex_param_0 
    .const 'Sub' $P5013 = 'cuid_99_1351011918.305' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_101_1351011918.305' 
    capture_lex $P5013 
    .lex "%protorx", $P101 
    .lex "self", _lex_param_0 
    new $P5001, 'Hash'
    set $P101, $P5001
.annotate 'line', 750
    nqp_decontainerize $P5003, _lex_param_0
    get_how $P5002, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    .const 'Sub' $P5006 = 'cuid_99_1351011918.305' 
    capture_lex $P5006
    newclosure $P5005, $P5006
    $P5007 = $P5002."cache"($P5004, "!protoregex_table", $P5005)
    set $P101, $P5007
    set $P5008, $P101
    iter $P5010, $P101
  for_next711:
    unless $P5010, for_done713
    shift $P5012, $P5010
  for_redo712:
    .const 'Sub' $P5011 = 'cuid_101_1351011918.305' 
    capture_lex $P5011
    $P5008 = $P5011($P5012)
    goto for_next711
  for_done713:
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_99_1351011918.305") :anon :lex :outer("cuid_49_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 750

    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    $P5003 = $P5001."!protoregex_table"()
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_101_1351011918.305") :anon :lex :outer("cuid_49_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 751
    .param pmc _lex_param_0 
    .const 'Sub' $P5010 = 'cuid_100_1351011918.305' 
    capture_lex $P5010 
    .lex "$_", _lex_param_0 
.annotate 'line', 752
    find_lex $P5003, "self"
    nqp_decontainerize $P5002, $P5003
    get_how $P5001, $P5002
    find_lex $P5005, "self"
    nqp_decontainerize $P5004, $P5005
    $P5006 = _lex_param_0."key"()
    .const 'Sub' $P5008 = 'cuid_100_1351011918.305' 
    capture_lex $P5008
    newclosure $P5007, $P5008
    $P5009 = $P5001."cache"($P5004, $P5006, $P5007)
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_100_1351011918.305") :anon :lex :outer("cuid_101_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 752

    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    find_lex $P5003, "$_"
    $P5004 = $P5003."key"()
    $P5005 = $P5001."!protoregex_nfa"($P5004)
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "!BACKREF" :subid("cuid_50_1351011918.305") :anon :lex :outer("cuid_70_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 756
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5032 = 'cuid_102_1351011918.305' 
    capture_lex $P5032 
    .lex "$cur", $P101 
    .lex "$n", $I101 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    .local pmc tmp_7 
    nqp_get_sc_object $P5001, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P101, $P5001
    set $I101, 0
.annotate 'line', 757
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start"()
    set $P101, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!cstack"
    unless $P5006 goto if225_else714 
    nqp_decontainerize $P5007, _lex_param_0
    find_lex $P5008, "$?CLASS"
    repr_get_attr_obj $P5009, $P5007, $P5008, "$!cstack"
    elements $I5001, $P5009
    set $N5002, $I5001
    set $N5003, 1
    sub $N5001, $N5002, $N5003
    box $P5011, $N5001
    set $P5010, $P5011
    goto if225_end715
  if225_else714:
    box $P5012, -1
    set $P5010, $P5012
  if225_end715:
    set $I5002, $P5010
    set $I101, $I5002
    new $P5028, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5028, while226_handlers719
    push_eh $P5028
  while226_test716:
    set $N5004, $I101
    set $N5005, 0
    isge $I5003, $N5004, $N5005
    set $I5007, $I5003
    unless $I5003 goto if227_end722 
    nqp_decontainerize $P5015, _lex_param_0
    find_lex $P5016, "$?CLASS"
    repr_get_attr_obj $P5017, $P5015, $P5016, "$!cstack"
    set $P5014, $P5017[$I101]
    unless_null $P5014, fallback725
    nqp_get_sc_object $P5018, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5014, $P5018
  fallback725:
    find_lex $P5019, "$?CLASS"
    getattribute $P5013, $P5014, $P5019, "$!name"
    isnull $I5004, $P5013
    set $I5006, $I5004
    if $I5004 goto unless228_end724 
    nqp_decontainerize $P5022, _lex_param_0
    find_lex $P5023, "$?CLASS"
    repr_get_attr_obj $P5024, $P5022, $P5023, "$!cstack"
    set $P5021, $P5024[$I101]
    unless_null $P5021, fallback726
    nqp_get_sc_object $P5025, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5021, $P5025
  fallback726:
    find_lex $P5026, "$?CLASS"
    getattribute $P5020, $P5021, $P5026, "$!name"
    set $S5001, $P5020
    set $S5002, _lex_param_1
    isne $I5005, $S5001, $S5002
    set $I5006, $I5005
  unless228_end724:
    set $I5007, $I5006
  if227_end722:
    box $P5029, $I5007
    set $P5027, $P5029
    unless $I5007 goto while226_done720 
  while226_redo718:
    box $P5027, $I101
    set tmp_7, $P5027
    set $N5007, tmp_7
    set $N5008, 1
    sub $N5006, $N5007, $N5008
    set $I5008, $N5006
    set $I101, $I5008
    set $P5027, tmp_7
    goto while226_test716 
  while226_handlers719:
    .get_results ($P5028)
    pop_upto_eh $P5028
    getattribute $P5028, $P5028, 'type'
    eq $P5028, .CONTROL_LOOP_NEXT, while226_test716
    eq $P5028, .CONTROL_LOOP_REDO, while226_redo718
  while226_done720:
    pop_eh 
    set $N5006, $I101
    set $N5007, 0
    isge $I5008, $N5006, $N5007
    unless $I5008 goto if229_end728 
    .const 'Sub' $P5030 = 'cuid_102_1351011918.305' 
    capture_lex $P5030
    $P5031 = $P5030()
  if229_end728:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_102_1351011918.305") :anon :lex :outer("cuid_50_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 761
    .lex "$subcur", $P101 
    .lex "$litlen", $I101 
    nqp_get_sc_object $P5001, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P101, $P5001
    set $I101, 0
    find_lex $P5004, "self"
    nqp_decontainerize $P5003, $P5004
    find_lex $P5005, "$?CLASS"
    repr_get_attr_obj $P5006, $P5003, $P5005, "$!cstack"
    find_lex $I5001, "$n"
    set $P5002, $P5006[$I5001]
    unless_null $P5002, fallback729
    nqp_get_sc_object $P5007, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5002, $P5007
  fallback729:
    set $P101, $P5002
.annotate 'line', 763
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
.annotate 'line', 766
    $P5019 = $P101."from"()
    set $I5005, $P5019
    substr $S5003, $S5004, $I5005, $I101
    iseq $I5003, $S5001, $S5003
    box $P5026, $I5003
    set $P5025, $P5026
    unless $I5003 goto if230_end731 
.annotate 'line', 764
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
  if230_end731:
    .return ($P5025) 
.end
.HLL "nqp"
.namespace []
.sub "!LITERAL" :subid("cuid_51_1351011918.305") :anon :lex :outer("cuid_70_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 771
    .param pmc _lex_param_0 
    .param string _lex_param_1 
    .param int _lex_param_2 :optional 
    .param int haz_param_19 :opt_flag 
    if haz_param_19, default738
    set $I5010, 0
    set _lex_param_2, $I5010
  default738:
    .lex "$cur", $P101 
    .lex "$litlen", $I101 
    .lex "self", _lex_param_0 
    .lex "$str", _lex_param_1 
    .lex "$i", _lex_param_2 
    nqp_get_sc_object $P5001, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P101, $P5001
    set $I101, 0
.annotate 'line', 772
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start"()
    set $P101, $P5003
    length $I5001, _lex_param_1
    set $I101, $I5001
    set $N5001, $I101
    set $N5002, 1
    islt $I5002, $N5001, $N5002
    set $I5008, $I5002
    if $I5002 goto unless232_end735 
    unless _lex_param_2 goto if233_else736 
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
    goto if233_end737
  if233_else736:
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_str $S5006, $P5008, $P5009, "$!target"
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5006, $P5010, $P5011, "$!pos"
    substr $S5005, $S5006, $I5006, $I101
    iseq $I5005, $S5005, _lex_param_1
    set $I5007, $I5005
  if233_end737:
    set $I5008, $I5007
  unless232_end735:
    unless $I5008 goto if231_end733 
.annotate 'line', 774
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5009, $P5012, $P5013, "$!pos"
    set $N5004, $I5009
    set $N5005, $I101
    add $N5003, $N5004, $N5005
    $P5014 = $P101."!cursor_pass"($N5003)
  if231_end733:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "at" :subid("cuid_52_1351011918.305") :anon :lex :outer("cuid_70_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 781
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    .lex "$pos", _lex_param_1 
    nqp_get_sc_object $P5001, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P101, $P5001
.annotate 'line', 782
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start"()
    set $P101, $P5003
    set $N5001, _lex_param_1
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_int $I5002, $P5004, $P5005, "$!pos"
    set $N5002, $I5002
    iseq $I5001, $N5001, $N5002
    unless $I5001 goto if234_end740 
.annotate 'line', 783
    nqp_decontainerize $P5006, _lex_param_0
    find_lex $P5007, "$?CLASS"
    repr_get_attr_int $I5003, $P5006, $P5007, "$!pos"
    $P5008 = $P101."!cursor_pass"($I5003)
  if234_end740:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "before" :subid("cuid_53_1351011918.305") :anon :lex :outer("cuid_70_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 787
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    .lex "$regex", _lex_param_1 
    nqp_get_sc_object $P5001, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P101, $P5001
.annotate 'line', 788
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start"()
    set $P101, $P5003
    find_lex $P5004, "$?CLASS"
    nqp_decontainerize $P5005, _lex_param_0
    find_lex $P5006, "$?CLASS"
    repr_get_attr_int $I5001, $P5005, $P5006, "$!pos"
    repr_bind_attr_int $P101, $P5004, "$!pos", $I5001
.annotate 'line', 790
    $P5007 = _lex_param_1($P101)
    find_lex $P5008, "$?CLASS"
    repr_get_attr_int $I5003, $P5007, $P5008, "$!pos"
    set $N5001, $I5003
    set $N5002, 0
    isge $I5002, $N5001, $N5002
    unless $I5002 goto if235_else741 
.annotate 'line', 791
    nqp_decontainerize $P5009, _lex_param_0
    find_lex $P5010, "$?CLASS"
    repr_get_attr_int $I5004, $P5009, $P5010, "$!pos"
    $P5011 = $P101."!cursor_pass"($I5004, "before")
    goto if235_end742
  if235_else741:
    find_lex $P5012, "$?CLASS"
    repr_bind_attr_int $P101, $P5012, "$!pos", -3
  if235_end742:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "after" :subid("cuid_54_1351011918.305") :anon :lex :outer("cuid_70_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 798
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    .lex "$regex", _lex_param_1 
    nqp_get_sc_object $P5001, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P101, $P5001
.annotate 'line', 799
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start"()
    set $P101, $P5003
    find_lex $P5004, "$?CLASS"
.annotate 'line', 800
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
.annotate 'line', 803
    $P5019 = _lex_param_1($P101)
    find_lex $P5020, "$?CLASS"
    repr_get_attr_int $I5008, $P5019, $P5020, "$!pos"
    set $N5007, $I5008
    set $N5008, 0
    isge $I5007, $N5007, $N5008
    unless $I5007 goto if236_else743 
.annotate 'line', 804
    nqp_decontainerize $P5021, _lex_param_0
    find_lex $P5022, "$?CLASS"
    repr_get_attr_int $I5009, $P5021, $P5022, "$!pos"
    $P5023 = $P101."!cursor_pass"($I5009, "after")
    goto if236_end744
  if236_else743:
    find_lex $P5024, "$?CLASS"
    repr_bind_attr_int $P101, $P5024, "$!pos", -3
  if236_end744:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "ws" :subid("cuid_55_1351011918.305") :anon :lex :outer("cuid_70_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 809
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P101, $P5001
.annotate 'line', 811
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
    unless $I5001 goto if237_else745 
.annotate 'line', 813
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_int $I5004, $P5008, $P5009, "$!pos"
    $P5010 = $P101."!cursor_pass"($I5004, "ws")
    goto if237_end746
  if237_else745:
    nqp_decontainerize $P5011, _lex_param_0
    find_lex $P5012, "$?CLASS"
    repr_get_attr_int $I5006, $P5011, $P5012, "$!pos"
    set $N5003, $I5006
    set $N5004, 1
    islt $I5005, $N5003, $N5004
    set $I5010, $I5005
    if $I5005 goto unless240_end752 
    nqp_decontainerize $P5013, _lex_param_0
    find_lex $P5014, "$?CLASS"
    repr_get_attr_str $S5002, $P5013, $P5014, "$!target"
    nqp_decontainerize $P5015, _lex_param_0
    find_lex $P5016, "$?CLASS"
    repr_get_attr_int $I5009, $P5015, $P5016, "$!pos"
    is_cclass $I5008, .CCLASS_WORD, $S5002, $I5009
    not $I5007, $I5008
    set $I5010, $I5007
  unless240_end752:
    set $I5015, $I5010
    if $I5010 goto unless239_end750 
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
  unless239_end750:
    box $P5029, $I5015
    set $P5028, $P5029
    unless $I5015 goto if238_end748 
.annotate 'line', 817
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
  if238_end748:
  if237_end746:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "ww" :subid("cuid_56_1351011918.305") :anon :lex :outer("cuid_70_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 824
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P101, $P5001
.annotate 'line', 825
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
    unless $I5001 goto if244_end760 
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
  if244_end760:
    set $I5009, $I5006
    unless $I5006 goto if243_end758 
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_str $S5002, $P5010, $P5011, "$!target"
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5008, $P5012, $P5013, "$!pos"
    is_cclass $I5007, .CCLASS_WORD, $S5002, $I5008
    set $I5009, $I5007
  if243_end758:
    set $I5013, $I5009
    unless $I5009 goto if242_end756 
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
  if242_end756:
    unless $I5013 goto if241_end754 
.annotate 'line', 826
    nqp_decontainerize $P5018, _lex_param_0
    find_lex $P5019, "$?CLASS"
    repr_get_attr_int $I5014, $P5018, $P5019, "$!pos"
    $P5020 = $P101."!cursor_pass"($I5014, "ww")
  if241_end754:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "wb" :subid("cuid_57_1351011918.305") :anon :lex :outer("cuid_70_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 834
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P101, $P5001
.annotate 'line', 835
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
    unless $I5001 goto if248_end768 
    nqp_decontainerize $P5006, _lex_param_0
    find_lex $P5007, "$?CLASS"
    repr_get_attr_str $S5001, $P5006, $P5007, "$!target"
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_int $I5004, $P5008, $P5009, "$!pos"
    is_cclass $I5003, .CCLASS_WORD, $S5001, $I5004
    set $I5005, $I5003
  if248_end768:
    set $I5013, $I5005
    if $I5005 goto unless247_end766 
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
    unless $I5006 goto if249_end770 
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
  if249_end770:
    set $I5013, $I5012
  unless247_end766:
    set $I5020, $I5013
    if $I5013 goto unless246_end764 
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
  unless246_end764:
    unless $I5020 goto if245_end762 
.annotate 'line', 836
    nqp_decontainerize $P5026, _lex_param_0
    find_lex $P5027, "$?CLASS"
    repr_get_attr_int $I5021, $P5026, $P5027, "$!pos"
    $P5028 = $P101."!cursor_pass"($I5021, "wb")
  if245_end762:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "ident" :subid("cuid_58_1351011918.305") :anon :lex :outer("cuid_70_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 845
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P101, $P5001
.annotate 'line', 846
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
    unless $I5001 goto if251_end774 
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
    if $I5004 goto unless252_end776 
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_str $S5003, $P5012, $P5013, "$!target"
    nqp_decontainerize $P5014, _lex_param_0
    find_lex $P5015, "$?CLASS"
    repr_get_attr_int $I5008, $P5014, $P5015, "$!pos"
    is_cclass $I5007, .CCLASS_ALPHABETIC, $S5003, $I5008
    set $I5009, $I5007
  unless252_end776:
    set $I5010, $I5009
  if251_end774:
    unless $I5010 goto if250_end772 
.annotate 'line', 847
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
  if250_end772:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "alpha" :subid("cuid_59_1351011918.305") :anon :lex :outer("cuid_70_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 857
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P101, $P5001
.annotate 'line', 858
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
    unless $I5001 goto if254_end780 
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_str $S5002, $P5008, $P5009, "$!target"
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, .CCLASS_ALPHABETIC, $S5002, $I5005
    set $I5009, $I5004
    if $I5004 goto unless255_end782 
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
  unless255_end782:
    set $I5010, $I5009
  if254_end780:
    unless $I5010 goto if253_end778 
.annotate 'line', 859
    nqp_decontainerize $P5016, _lex_param_0
    find_lex $P5017, "$?CLASS"
    repr_get_attr_int $I5011, $P5016, $P5017, "$!pos"
    set $N5006, $I5011
    set $N5007, 1
    add $N5005, $N5006, $N5007
    $P5018 = $P101."!cursor_pass"($N5005, "alpha")
  if253_end778:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "alnum" :subid("cuid_60_1351011918.305") :anon :lex :outer("cuid_70_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 866
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P101, $P5001
.annotate 'line', 867
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
    unless $I5001 goto if257_end786 
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_str $S5002, $P5008, $P5009, "$!target"
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, .CCLASS_ALPHANUMERIC, $S5002, $I5005
    set $I5009, $I5004
    if $I5004 goto unless258_end788 
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
  unless258_end788:
    set $I5010, $I5009
  if257_end786:
    unless $I5010 goto if256_end784 
.annotate 'line', 868
    nqp_decontainerize $P5016, _lex_param_0
    find_lex $P5017, "$?CLASS"
    repr_get_attr_int $I5011, $P5016, $P5017, "$!pos"
    set $N5006, $I5011
    set $N5007, 1
    add $N5005, $N5006, $N5007
    $P5018 = $P101."!cursor_pass"($N5005, "alnum")
  if256_end784:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "upper" :subid("cuid_61_1351011918.305") :anon :lex :outer("cuid_70_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 875
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P101, $P5001
.annotate 'line', 876
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
    unless $I5001 goto if260_end792 
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_str $S5002, $P5008, $P5009, "$!target"
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, .CCLASS_UPPERCASE, $S5002, $I5005
    set $I5006, $I5004
  if260_end792:
    unless $I5006 goto if259_end790 
.annotate 'line', 877
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5007, $P5012, $P5013, "$!pos"
    set $N5004, $I5007
    set $N5005, 1
    add $N5003, $N5004, $N5005
    $P5014 = $P101."!cursor_pass"($N5003, "upper")
  if259_end790:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "lower" :subid("cuid_62_1351011918.305") :anon :lex :outer("cuid_70_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 883
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P101, $P5001
.annotate 'line', 884
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
    unless $I5001 goto if262_end796 
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_str $S5002, $P5008, $P5009, "$!target"
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, .CCLASS_LOWERCASE, $S5002, $I5005
    set $I5006, $I5004
  if262_end796:
    unless $I5006 goto if261_end794 
.annotate 'line', 885
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5007, $P5012, $P5013, "$!pos"
    set $N5004, $I5007
    set $N5005, 1
    add $N5003, $N5004, $N5005
    $P5014 = $P101."!cursor_pass"($N5003, "lower")
  if261_end794:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "digit" :subid("cuid_63_1351011918.305") :anon :lex :outer("cuid_70_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 891
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P101, $P5001
.annotate 'line', 892
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
    unless $I5001 goto if264_end800 
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_str $S5002, $P5008, $P5009, "$!target"
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, .CCLASS_NUMERIC, $S5002, $I5005
    set $I5006, $I5004
  if264_end800:
    unless $I5006 goto if263_end798 
.annotate 'line', 893
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5007, $P5012, $P5013, "$!pos"
    set $N5004, $I5007
    set $N5005, 1
    add $N5003, $N5004, $N5005
    $P5014 = $P101."!cursor_pass"($N5003, "digit")
  if263_end798:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "xdigit" :subid("cuid_64_1351011918.305") :anon :lex :outer("cuid_70_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 899
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P101, $P5001
.annotate 'line', 900
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
    unless $I5001 goto if266_end804 
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_str $S5002, $P5008, $P5009, "$!target"
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, .CCLASS_HEXADECIMAL, $S5002, $I5005
    set $I5006, $I5004
  if266_end804:
    unless $I5006 goto if265_end802 
.annotate 'line', 901
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5007, $P5012, $P5013, "$!pos"
    set $N5004, $I5007
    set $N5005, 1
    add $N5003, $N5004, $N5005
    $P5014 = $P101."!cursor_pass"($N5003, "xdigit")
  if265_end802:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "space" :subid("cuid_65_1351011918.305") :anon :lex :outer("cuid_70_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 907
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P101, $P5001
.annotate 'line', 908
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
    unless $I5001 goto if268_end808 
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_str $S5002, $P5008, $P5009, "$!target"
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, .CCLASS_WHITESPACE, $S5002, $I5005
    set $I5006, $I5004
  if268_end808:
    unless $I5006 goto if267_end806 
.annotate 'line', 909
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5007, $P5012, $P5013, "$!pos"
    set $N5004, $I5007
    set $N5005, 1
    add $N5003, $N5004, $N5005
    $P5014 = $P101."!cursor_pass"($N5003, "space")
  if267_end806:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "blank" :subid("cuid_66_1351011918.305") :anon :lex :outer("cuid_70_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 915
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P101, $P5001
.annotate 'line', 916
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
    unless $I5001 goto if270_end812 
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_str $S5002, $P5008, $P5009, "$!target"
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, .CCLASS_BLANK, $S5002, $I5005
    set $I5006, $I5004
  if270_end812:
    unless $I5006 goto if269_end810 
.annotate 'line', 917
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5007, $P5012, $P5013, "$!pos"
    set $N5004, $I5007
    set $N5005, 1
    add $N5003, $N5004, $N5005
    $P5014 = $P101."!cursor_pass"($N5003, "blank")
  if269_end810:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "cntrl" :subid("cuid_67_1351011918.305") :anon :lex :outer("cuid_70_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 923
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P101, $P5001
.annotate 'line', 924
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
    unless $I5001 goto if272_end816 
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_str $S5002, $P5008, $P5009, "$!target"
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, .CCLASS_CONTROL, $S5002, $I5005
    set $I5006, $I5004
  if272_end816:
    unless $I5006 goto if271_end814 
.annotate 'line', 925
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5007, $P5012, $P5013, "$!pos"
    set $N5004, $I5007
    set $N5005, 1
    add $N5003, $N5004, $N5005
    $P5014 = $P101."!cursor_pass"($N5003, "cntrl")
  if271_end814:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "punct" :subid("cuid_68_1351011918.305") :anon :lex :outer("cuid_70_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 931
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P101, $P5001
.annotate 'line', 932
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
    unless $I5001 goto if274_end820 
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_str $S5002, $P5008, $P5009, "$!target"
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, .CCLASS_PUNCTUATION, $S5002, $I5005
    set $I5006, $I5004
  if274_end820:
    unless $I5006 goto if273_end818 
.annotate 'line', 933
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5007, $P5012, $P5013, "$!pos"
    set $N5004, $I5007
    set $N5005, 1
    add $N5003, $N5004, $N5005
    $P5014 = $P101."!cursor_pass"($N5003, "punct")
  if273_end818:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "FAILGOAL" :subid("cuid_69_1351011918.305") :anon :lex :outer("cuid_70_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 939
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :optional 
    .param int haz_param_20 :opt_flag 
    if haz_param_20, default823
    nqp_get_sc_object $P5004, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set _lex_param_2, $P5004
  default823:
    .lex "self", _lex_param_0 
    .lex "$goal", _lex_param_1 
    .lex "$dba", _lex_param_2 
    if _lex_param_2 goto unless275_end822 
.annotate 'line', 940

                $P5001 = getinterp
                $P5001 = $P5001['sub';1]
            
    set $S5001, $P5001
    box $P5002, $S5001
    set _lex_param_2, $P5002
  unless275_end822:
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
.sub "" :subid("cuid_83_1351011918.305") :anon :lex :outer("cuid_1_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 951
    .const 'Sub' $P5013 = 'cuid_71_1351011918.305' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_72_1351011918.305' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_73_1351011918.305' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_74_1351011918.305' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_75_1351011918.305' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_76_1351011918.305' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_77_1351011918.305' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_78_1351011918.305' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_79_1351011918.305' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_80_1351011918.305' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_81_1351011918.305' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_82_1351011918.305' 
    capture_lex $P5013 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_71_1351011918.305' 
    capture_lex $P5001
    .const 'Sub' $P5002 = 'cuid_72_1351011918.305' 
    capture_lex $P5002
    .const 'Sub' $P5003 = 'cuid_73_1351011918.305' 
    capture_lex $P5003
    .const 'Sub' $P5004 = 'cuid_74_1351011918.305' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_75_1351011918.305' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_76_1351011918.305' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_77_1351011918.305' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_78_1351011918.305' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_79_1351011918.305' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_80_1351011918.305' 
    capture_lex $P5010
    .const 'Sub' $P5011 = 'cuid_81_1351011918.305' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_82_1351011918.305' 
    capture_lex $P5012
    .return ($P5012) 
.end
.HLL "nqp"
.namespace []
.sub "from" :subid("cuid_71_1351011918.305") :anon :lex :outer("cuid_83_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 958
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 73
    repr_get_attr_int $I5001, $P5001, $P5002, "$!from"
    .return ($I5001) 
.end
.HLL "nqp"
.namespace []
.sub "orig" :subid("cuid_72_1351011918.305") :anon :lex :outer("cuid_83_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 959
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 73
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!orig"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "to" :subid("cuid_73_1351011918.305") :anon :lex :outer("cuid_83_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 960
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 73
    repr_get_attr_int $I5001, $P5001, $P5002, "$!to"
    .return ($I5001) 
.end
.HLL "nqp"
.namespace []
.sub "CURSOR" :subid("cuid_74_1351011918.305") :anon :lex :outer("cuid_83_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 961
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 73
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!cursor"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "Str" :subid("cuid_75_1351011918.305") :anon :lex :outer("cuid_83_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 962
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 73
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!orig"
    set $S5002, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 73
    repr_get_attr_int $I5001, $P5004, $P5005, "$!from"
    nqp_decontainerize $P5006, _lex_param_0
    nqp_get_sc_object $P5007, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 73
    repr_get_attr_int $I5002, $P5006, $P5007, "$!to"
    set $N5002, $I5002
    nqp_decontainerize $P5008, _lex_param_0
    nqp_get_sc_object $P5009, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 73
    repr_get_attr_int $I5003, $P5008, $P5009, "$!from"
    set $N5003, $I5003
    sub $N5001, $N5002, $N5003
    set $I5004, $N5001
    substr $S5001, $S5002, $I5001, $I5004
    .return ($S5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_76_1351011918.305") :anon :lex :outer("cuid_83_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 963
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    $P5002 = $P5001."Str"()
    set $N5001, $P5002
    .return ($N5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_77_1351011918.305") :anon :lex :outer("cuid_83_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 964
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    $P5002 = $P5001."Str"()
    set $N5001, $P5002
    .return ($N5001) 
.end
.HLL "nqp"
.namespace []
.sub "Bool" :subid("cuid_78_1351011918.305") :anon :lex :outer("cuid_83_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 965
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 73
    repr_get_attr_int $I5002, $P5001, $P5002, "$!to"
    set $N5001, $I5002
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 73
    repr_get_attr_int $I5003, $P5003, $P5004, "$!from"
    set $N5002, $I5003
    isge $I5001, $N5001, $N5002
    .return ($I5001) 
.end
.HLL "nqp"
.namespace []
.sub "chars" :subid("cuid_79_1351011918.305") :anon :lex :outer("cuid_83_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 966
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 73
    repr_get_attr_int $I5002, $P5001, $P5002, "$!to"
    set $N5001, $I5002
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 73
    repr_get_attr_int $I5003, $P5003, $P5004, "$!from"
    set $N5002, $I5003
    isge $I5001, $N5001, $N5002
    unless $I5001 goto if276_else824 
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 73
    repr_get_attr_int $I5004, $P5005, $P5006, "$!to"
    set $N5004, $I5004
    nqp_decontainerize $P5007, _lex_param_0
    nqp_get_sc_object $P5008, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 73
    repr_get_attr_int $I5005, $P5007, $P5008, "$!from"
    set $N5005, $I5005
    sub $N5003, $N5004, $N5005
    box $P5010, $N5003
    set $P5009, $P5010
    goto if276_end825
  if276_else824:
    box $P5011, 0
    set $P5009, $P5011
  if276_end825:
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "!make" :subid("cuid_80_1351011918.305") :anon :lex :outer("cuid_83_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 968
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$ast", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 73
    repr_bind_attr_obj $P5001, $P5002, "$!ast", _lex_param_1
    .return (_lex_param_1) 
.end
.HLL "nqp"
.namespace []
.sub "ast" :subid("cuid_81_1351011918.305") :anon :lex :outer("cuid_83_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 969
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 73
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!ast"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "!dump_str" :subid("cuid_82_1351011918.305") :anon :lex :outer("cuid_83_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 971
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5019 = 'cuid_137_1351011918.305' 
    capture_lex $P5019 
    .const 'Sub' $P5019 = 'cuid_138_1351011918.305' 
    capture_lex $P5019 
    .lex "&dump_array", $P101 
    .lex "$str", $P102 
    .lex "self", _lex_param_0 
    .lex "$key", _lex_param_1 
    .const 'Sub' $P5001 = 'cuid_137_1351011918.305' 
    capture_lex $P5001
    set $P101, $P5001
    nqp_get_sc_object $P5002, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P102, $P5002
    set $S5006, _lex_param_1
    concat $S5005, $S5006, ": "
.annotate 'line', 983
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
.annotate 'line', 984
    nqp_decontainerize $P5008, _lex_param_0
    $P5009 = $P5008."list"()
    $P5010 = "&dump_array"(_lex_param_1, $P5009)
    set $S5012, $P5010
    concat $S5010, $S5011, $S5012
    box $P5011, $S5010
    set $P102, $P5011
.annotate 'line', 985
    nqp_decontainerize $P5015, _lex_param_0
    $P5016 = $P5015."hash"()
    set $P5012, $P5016
    iter $P5014, $P5016
  for_next833:
    unless $P5014, for_done835
    shift $P5018, $P5014
  for_redo834:
    .const 'Sub' $P5017 = 'cuid_138_1351011918.305' 
    capture_lex $P5017
    $P5012 = $P5017($P5018)
    goto for_next833
  for_done835:
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "dump_array" :subid("cuid_137_1351011918.305") :anon :lex :outer("cuid_82_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 972
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5011 = 'cuid_136_1351011918.305' 
    capture_lex $P5011 
    .lex "$str", $P101 
    .lex "$key", _lex_param_0 
    .lex "$item", _lex_param_1 
    nqp_get_sc_object $P5001, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P101, $P5001
    box $P5002, ""
    set $P101, $P5002
.annotate 'line', 974
    nqp_get_sc_object $P5003, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 39
    $P5004 = $P5003."ACCEPTS"(_lex_param_1)
    unless $P5004 goto if277_else826 
    set $S5002, $P101
.annotate 'line', 975
    $P5005 = _lex_param_1."!dump_str"(_lex_param_0)
    set $S5003, $P5005
    concat $S5001, $S5002, $S5003
    box $P5006, $S5001
    set $P101, $P5006
    goto if277_end827
  if277_else826:
    isnull $I5002, _lex_param_1
    not $I5001, $I5002
    box $P5010, $I5001
    set $P5009, $P5010
    unless $I5001 goto if278_end829 
    .const 'Sub' $P5007 = 'cuid_136_1351011918.305' 
    capture_lex $P5007
    $P5008 = $P5007()
    set $P5009, $P5008
  if278_end829:
  if277_end827:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_136_1351011918.305") :anon :lex :outer("cuid_137_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 977
    .const 'Sub' $P5009 = 'cuid_135_1351011918.305' 
    capture_lex $P5009 
    .lex "$n", $P101 
    nqp_get_sc_object $P5001, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P101, $P5001
    box $P5002, 0
    set $P101, $P5002
    find_lex $P5006, "$item"
    set $P5003, $P5006
    iter $P5005, $P5006
  for_next830:
    unless $P5005, for_done832
    shift $P5008, $P5005
  for_redo831:
    .const 'Sub' $P5007 = 'cuid_135_1351011918.305' 
    capture_lex $P5007
    $P5003 = $P5007($P5008)
    goto for_next830
  for_done832:
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_135_1351011918.305") :anon :lex :outer("cuid_136_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 979
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
.sub "" :subid("cuid_138_1351011918.305") :anon :lex :outer("cuid_82_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 985
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
.sub "" :subid("cuid_89_1351011918.305") :anon :lex :outer("cuid_1_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 990
    .const 'Sub' $P5010 = 'cuid_84_1351011918.305' 
    capture_lex $P5010 
    .const 'Sub' $P5010 = 'cuid_85_1351011918.305' 
    capture_lex $P5010 
    .const 'Sub' $P5010 = 'cuid_86_1351011918.305' 
    capture_lex $P5010 
    .const 'Sub' $P5010 = 'cuid_87_1351011918.305' 
    capture_lex $P5010 
    .const 'Sub' $P5010 = 'cuid_88_1351011918.305' 
    capture_lex $P5010 
    .lex "$EMPTY_MATCH_LIST", $P101 
    .lex "$EMPTY_MATCH_HASH", $P102 
    .lex "$?PACKAGE", $P103 
    .lex "$?CLASS", $P104 
    nqp_get_sc_object $P5001, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P101, $P5001
    nqp_get_sc_object $P5002, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P102, $P5002
    new $P5003, 'ResizablePMCArray'
    set $P101, $P5003
    new $P5004, 'Hash'
    set $P102, $P5004
    .const 'Sub' $P5005 = 'cuid_84_1351011918.305' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_85_1351011918.305' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_86_1351011918.305' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_87_1351011918.305' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_88_1351011918.305' 
    capture_lex $P5009
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "MATCH" :subid("cuid_84_1351011918.305") :anon :lex :outer("cuid_89_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 993
    .param pmc _lex_param_0 
    .const 'Sub' $P5008 = 'cuid_139_1351011918.305' 
    capture_lex $P5008 
    .lex "$match", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P101, $P5001
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 86
    getattribute $P5002, $P5003, $P5004, "$!match"
    set $P101, $P5002
    nqp_get_sc_object $P5005, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 73
    type_check $I5001, $P101, $P5005
    set $I5003, $I5001
    if $I5001 goto unless280_end839 
    nqp_ishash $I5002, $P101
    set $I5003, $I5002
  unless280_end839:
    if $I5003 goto unless279_end837 
    .const 'Sub' $P5006 = 'cuid_139_1351011918.305' 
    capture_lex $P5006
    $P5007 = $P5006()
  unless279_end837:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_139_1351011918.305") :anon :lex :outer("cuid_84_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 995
    .lex "$list", $P101 
    .lex "$hash", $P102 
    .lex "%ch", $P103 
    .lex "$key", $S101 
    .lex "$iter", $P104 
    nqp_get_sc_object $P5001, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P101, $P5001
    nqp_get_sc_object $P5002, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P102, $P5002
    new $P5003, 'Hash'
    set $P103, $P5003
    set $S101, ""
    nqp_get_sc_object $P5004, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P104, $P5004
    find_lex $P5005, "$EMPTY_MATCH_LIST"
    set $P101, $P5005
    find_lex $P5006, "$EMPTY_MATCH_HASH"
    set $P102, $P5006
    nqp_get_sc_object $P5008, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 73
    repr_instance_of $P5007, $P5008
    store_lex "$match", $P5007
    find_lex $P5010, "self"
    nqp_decontainerize $P5009, $P5010
    nqp_get_sc_object $P5011, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 86
    find_lex $P5012, "$match"
    setattribute $P5009, $P5011, "$!match", $P5012
    find_lex $P5013, "$match"
    nqp_get_sc_object $P5014, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 73
    find_lex $P5016, "self"
    nqp_decontainerize $P5015, $P5016
    setattribute $P5013, $P5014, "$!cursor", $P5015
    find_lex $P5017, "$match"
    nqp_get_sc_object $P5018, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 73
    find_lex $P5021, "self"
    nqp_decontainerize $P5020, $P5021
    nqp_get_sc_object $P5022, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 86
    getattribute $P5019, $P5020, $P5022, "$!orig"
    setattribute $P5017, $P5018, "$!orig", $P5019
    find_lex $P5023, "$match"
    nqp_get_sc_object $P5024, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 73
    find_lex $P5026, "self"
    nqp_decontainerize $P5025, $P5026
    nqp_get_sc_object $P5027, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 86
    repr_get_attr_int $I5001, $P5025, $P5027, "$!from"
    repr_bind_attr_int $P5023, $P5024, "$!from", $I5001
    find_lex $P5028, "$match"
    nqp_get_sc_object $P5029, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 73
    find_lex $P5031, "self"
    nqp_decontainerize $P5030, $P5031
    nqp_get_sc_object $P5032, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 86
    repr_get_attr_int $I5002, $P5030, $P5032, "$!pos"
    repr_bind_attr_int $P5028, $P5029, "$!to", $I5002
.annotate 'line', 1004
    find_lex $P5034, "self"
    nqp_decontainerize $P5033, $P5034
    $P5035 = $P5033."CAPHASH"()
    set $P103, $P5035
    iter $P5036, $P103
    set $P104, $P5036
  while281_test840:
    set $P5052, $P104
    unless $P104 goto while281_done844 
  while281_redo842:
.annotate 'line', 1007
    shift $P5037, $P104
    set $S5001, $P5037
    set $S101, $S5001
    iseq $I5003, $S101, "$!from"
    set $I5005, $I5003
    if $I5003 goto unless283_end848 
    iseq $I5004, $S101, "$!to"
    set $I5005, $I5004
  unless283_end848:
    unless $I5005 goto if282_else845 
.annotate 'line', 1009
    find_lex $P5038, "$match"
    nqp_get_sc_object $P5039, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 73
.annotate 'line', 1010
    set $P5040, $P103[$S101]
    unless_null $P5040, fallback849
    nqp_get_sc_object $P5041, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5040, $P5041
  fallback849:
    $P5042 = $P5040."from"()
    set $I5006, $P5042
    repr_bind_attr_int $P5038, $P5039, $S101, $I5006
    box $P5051, $I5006
    set $P5050, $P5051
    goto if282_end846
  if282_else845:
    is_cclass $I5007, .CCLASS_NUMERIC, $S101, 0
    unless $I5007 goto if284_else850 
.annotate 'line', 1012
    if $P101 goto unless285_end853 
    new $P5043, 'ResizablePMCArray'
    set $P101, $P5043
  unless285_end853:
    set $I5008, $S101
    set $P5044, $P103[$S101]
    unless_null $P5044, fallback854
    nqp_get_sc_object $P5045, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5044, $P5045
  fallback854:
    set $P101[$I5008], $P5044
    set $P5049, $P5044
    goto if284_end851
  if284_else850:
.annotate 'line', 1016
    if $P102 goto unless286_end856 
    new $P5046, 'Hash'
    set $P102, $P5046
  unless286_end856:
    set $P5047, $P103[$S101]
    unless_null $P5047, fallback857
    nqp_get_sc_object $P5048, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P5047, $P5048
  fallback857:
    set $P102[$S101], $P5047
    set $P5049, $P5047
  if284_end851:
    set $P5050, $P5049
  if282_end846:
    set $P5052, $P5050
    goto while281_test840 
  while281_done844:
    find_lex $P5053, "$match"
    nqp_get_sc_object $P5054, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 39
    setattribute $P5053, $P5054, "@!array", $P101
    find_lex $P5055, "$match"
    nqp_get_sc_object $P5056, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 39
    setattribute $P5055, $P5056, "%!hash", $P102
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "Bool" :subid("cuid_85_1351011918.305") :anon :lex :outer("cuid_89_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1027
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5002, _lex_param_0
    find_lex $P5003, "$?CLASS"
    getattribute $P5001, $P5002, $P5003, "$!match"
    isnull $I5002, $P5001
    not $I5001, $I5002
    set $I5004, $I5001
    unless $I5001 goto if287_end859 
    nqp_decontainerize $P5005, _lex_param_0
    find_lex $P5006, "$?CLASS"
    getattribute $P5004, $P5005, $P5006, "$!match"
    istrue $I5003, $P5004
    set $I5004, $I5003
  if287_end859:
    .return ($I5004) 
.end
.HLL "nqp"
.namespace []
.sub "parse" :subid("cuid_86_1351011918.305") :anon :lex :outer("cuid_89_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1032
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :named("rule") :optional 
    .param int haz_param_21 :opt_flag 
    .param pmc _lex_param_3 :named("actions") :optional 
    .param int haz_param_22 :opt_flag 
    .param pmc _lex_param_4 :slurpy :named 
    if haz_param_21, default862
    box $P5011, "TOP"
    set _lex_param_2, $P5011
  default862:
    if haz_param_22, default863
    nqp_get_sc_object $P5012, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set _lex_param_3, $P5012
  default863:
    .lex "$*ACTIONS", $P101 
    .lex "$cur", $P102 
    .lex "self", _lex_param_0 
    .lex "$target", _lex_param_1 
    .lex "$rule", _lex_param_2 
    .lex "$actions", _lex_param_3 
    .lex "%options", _lex_param_4 
    nqp_get_sc_object $P5001, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P101, $P5001
    nqp_get_sc_object $P5002, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P102, $P5002
    set $P101, _lex_param_3
.annotate 'line', 1034
    nqp_decontainerize $P5003, _lex_param_0
    $P5004 = $P5003."!cursor_init"(_lex_param_1, _lex_param_4 :flat :named)
    set $P102, $P5004
    is_invokable $I5001, _lex_param_2
    unless $I5001 goto if288_else860 
.annotate 'line', 1036
    $P5005 = _lex_param_2($P102)
    $P5006 = $P5005."MATCH"()
    set $P5010, $P5006
    goto if288_end861
  if288_else860:
.annotate 'line', 1037
    set $S5001, _lex_param_2
    find_method $P5007, $P102, $S5001
    $P5008 = $P5007($P102)
    $P5009 = $P5008."MATCH"()
    set $P5010, $P5009
  if288_end861:
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "!INTERPOLATE" :subid("cuid_87_1351011918.305") :anon :lex :outer("cuid_89_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1040
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5006 = 'cuid_144_1351011918.305' 
    capture_lex $P5006 
    .const 'Sub' $P5006 = 'cuid_145_1351011918.305' 
    capture_lex $P5006 
    .lex "self", _lex_param_0 
    .lex "$var", _lex_param_1 
    root_new $P101, ['parrot';'Continuation']
    set_label $P101, lexotic_864
    .lex "RETURN", $P101
    nqp_islist $I5001, _lex_param_1
    unless $I5001 goto if289_else866 
    .const 'Sub' $P5001 = 'cuid_144_1351011918.305' 
    capture_lex $P5001
    $P5002 = $P5001()
    set $P5005, $P5002
    goto if289_end867
  if289_else866:
    .const 'Sub' $P5003 = 'cuid_145_1351011918.305' 
    capture_lex $P5003
    $P5004 = $P5003()
    set $P5005, $P5004
  if289_end867:
    goto lexotic_865
  lexotic_864:
    .get_results ($P5005)
  lexotic_865:
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_144_1351011918.305") :anon :lex :outer("cuid_87_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1041
    .const 'Sub' $P5016 = 'cuid_142_1351011918.305' 
    capture_lex $P5016 
    .lex "$maxlen", $I101 
    .lex "$cur", $P101 
    .lex "$pos", $I102 
    .lex "$tgt", $S101 
    .lex "$eos", $I103 
    set $I101, 0
    nqp_get_sc_object $P5001, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P101, $P5001
    set $I102, 0
    set $S101, ""
    set $I103, 0
    set $I101, -1
.annotate 'line', 1043
    find_lex $P5003, "self"
    nqp_decontainerize $P5002, $P5003
    $P5004 = $P5002."!cursor_start"()
    set $P101, $P5004
    find_lex $P5005, "$?CLASS"
    repr_get_attr_int $I5001, $P101, $P5005, "$!from"
    set $I102, $I5001
.annotate 'line', 1045
    $P5006 = $P101."target"()
    set $S5001, $P5006
    set $S101, $S5001
    length $I5002, $S101
    set $I103, $I5002
    find_lex $P5010, "$var"
    set $P5007, $P5010
    iter $P5009, $P5010
  for_next880:
    unless $P5009, for_done882
    shift $P5012, $P5009
  for_redo881:
    .const 'Sub' $P5011 = 'cuid_142_1351011918.305' 
    capture_lex $P5011
    $P5007 = $P5011($P5012)
    goto for_next880
  for_done882:
    set $N5001, $I101
    set $N5002, 0
    isge $I5003, $N5001, $N5002
    unless $I5003 goto if296_end884 
.annotate 'line', 1062
    set $N5004, $I102
    set $N5005, $I101
    add $N5003, $N5004, $N5005
    $P5013 = $P101."!cursor_pass"($N5003, "")
  if296_end884:
    find_lex $P5014, "RETURN"
    $P5015 = $P5014($P101)
    .return ($P5015) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_142_1351011918.305") :anon :lex :outer("cuid_144_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1047
    .param pmc _lex_param_0 
    .const 'Sub' $P5006 = 'cuid_141_1351011918.305' 
    capture_lex $P5006 
    .const 'Sub' $P5006 = 'cuid_143_1351011918.305' 
    capture_lex $P5006 
    .lex "$_", _lex_param_0 
    is_invokable $I5001, _lex_param_0
    unless $I5001 goto if290_else868 
    .const 'Sub' $P5001 = 'cuid_141_1351011918.305' 
    capture_lex $P5001
    $P5002 = $P5001()
    set $P5005, $P5002
    goto if290_end869
  if290_else868:
    .const 'Sub' $P5003 = 'cuid_143_1351011918.305' 
    capture_lex $P5003
    $P5004 = $P5003()
    set $P5005, $P5004
  if290_end869:
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_141_1351011918.305") :anon :lex :outer("cuid_142_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1048
    .const 'Sub' $P5009 = 'cuid_140_1351011918.305' 
    capture_lex $P5009 
    .lex "$res", $P101 
    nqp_get_sc_object $P5001, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P101, $P5001
.annotate 'line', 1049
    find_lex $P5004, "self"
    nqp_decontainerize $P5003, $P5004
    find_lex $P5002, "$_"
    $P5005 = $P5002($P5003)
    set $P101, $P5005
    set $P5008, $P101
    unless $P101 goto if291_end871 
    .const 'Sub' $P5006 = 'cuid_140_1351011918.305' 
    capture_lex $P5006
    $P5007 = $P5006()
    set $P5008, $P5007
  if291_end871:
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_140_1351011918.305") :anon :lex :outer("cuid_141_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1050
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
    unless $I5004 goto if292_end873 
    store_lex "$maxlen", $I101
    set $I5006, $I101
  if292_end873:
    .return ($I5006) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_143_1351011918.305") :anon :lex :outer("cuid_142_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1056
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
    unless $I5002 goto if295_end879 
    find_lex $I5005, "$pos"
    set $N5004, $I5005
    set $N5005, $I101
    add $N5003, $N5004, $N5005
    find_lex $I5006, "$eos"
    set $N5006, $I5006
    isle $I5004, $N5003, $N5006
    set $I5007, $I5004
  if295_end879:
    set $I5010, $I5007
    unless $I5007 goto if294_end877 
    find_lex $S5003, "$tgt"
    find_lex $I5009, "$pos"
    substr $S5002, $S5003, $I5009, $I101
    find_lex $P5002, "$_"
    set $S5004, $P5002
    iseq $I5008, $S5002, $S5004
    set $I5010, $I5008
  if294_end877:
    set $I5011, $I5010
    unless $I5010 goto if293_end875 
    store_lex "$maxlen", $I101
    set $I5011, $I101
  if293_end875:
    .return ($I5011) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_145_1351011918.305") :anon :lex :outer("cuid_87_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1065
    .lex "$cur", $P101 
    .lex "$pos", $I101 
    .lex "$tgt", $S101 
    .lex "$len", $I102 
    .lex "$adv", $I103 
    nqp_get_sc_object $P5001, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P101, $P5001
    set $I101, 0
    set $S101, ""
    set $I102, 0
    set $I103, 0
    find_lex $P5002, "$var"
    is_invokable $I5001, $P5002
    unless $I5001 goto if297_end886 
.annotate 'line', 1066
    find_lex $P5006, "self"
    nqp_decontainerize $P5005, $P5006
    find_lex $P5004, "$var"
    $P5007 = $P5004($P5005)
    find_lex $P5003, "RETURN"
    $P5008 = $P5003($P5007)
  if297_end886:
.annotate 'line', 1067
    find_lex $P5010, "self"
    nqp_decontainerize $P5009, $P5010
    $P5011 = $P5009."!cursor_start"()
    set $P101, $P5011
    find_lex $P5012, "$?CLASS"
    repr_get_attr_int $I5002, $P101, $P5012, "$!from"
    set $I101, $I5002
.annotate 'line', 1069
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
    if $I5005 goto unless299_end890 
    substr $S5003, $S101, $I101, $I102
    find_lex $P5015, "$var"
    set $S5004, $P5015
    isne $I5007, $S5003, $S5004
    set $I5008, $I5007
  unless299_end890:
    unless $I5008 goto if298_end888 
    find_lex $P5016, "RETURN"
    $P5017 = $P5016($P101)
  if298_end888:
.annotate 'line', 1074
    $P101."!cursor_pass"($I103, "")
    find_lex $P5018, "RETURN"
    $P5019 = $P5018($P101)
    .return ($P5019) 
.end
.HLL "nqp"
.namespace []
.sub "!INTERPOLATE_REGEX" :subid("cuid_88_1351011918.305") :anon :lex :outer("cuid_89_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1079
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5007 = 'cuid_148_1351011918.305' 
    capture_lex $P5007 
    .lex "self", _lex_param_0 
    .lex "$var", _lex_param_1 
    root_new $P101, ['parrot';'Continuation']
    set_label $P101, lexotic_891
    .lex "RETURN", $P101
    is_invokable $I5001, _lex_param_1
    if $I5001 goto unless300_end894 
    .const 'Sub' $P5001 = 'cuid_148_1351011918.305' 
    capture_lex $P5001
    $P5002 = $P5001()
  unless300_end894:
.annotate 'line', 1095
    nqp_decontainerize $P5004, _lex_param_0
    $P5005 = $P5004."!INTERPOLATE"(_lex_param_1)
    find_lex $P5003, "RETURN"
    $P5006 = $P5003($P5005)
    goto lexotic_892
  lexotic_891:
    .get_results ($P5006)
  lexotic_892:
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_148_1351011918.305") :anon :lex :outer("cuid_88_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1080
    .const 'Sub' $P5009 = 'cuid_147_1351011918.305' 
    capture_lex $P5009 
    .lex "$rxcompiler", $P101 
    nqp_get_sc_object $P5001, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P101, $P5001
    compreg $P5002, "QRegex::P6Regex"
    set $P101, $P5002
    find_lex $P5003, "$var"
    nqp_islist $I5001, $P5003
    unless $I5001 goto if301_else895 
    .const 'Sub' $P5004 = 'cuid_147_1351011918.305' 
    capture_lex $P5004
    $P5005 = $P5004()
    set $P5008, $P5005
    goto if301_end896
  if301_else895:
.annotate 'line', 1091
.annotate 'line', 1092
    find_lex $P5006, "$var"
    $P5007 = $P101."compile"($P5006)
    store_lex "$var", $P5007
    set $P5008, $P5007
  if301_end896:
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_147_1351011918.305") :anon :lex :outer("cuid_148_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1082
    .const 'Sub' $P5009 = 'cuid_146_1351011918.305' 
    capture_lex $P5009 
    .lex "$res", $P101 
    nqp_get_sc_object $P5001, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P101, $P5001
    new $P5002, 'ResizablePMCArray'
    set $P101, $P5002
    find_lex $P5006, "$var"
    set $P5003, $P5006
    iter $P5005, $P5006
  for_next899:
    unless $P5005, for_done901
    shift $P5008, $P5005
  for_redo900:
    .const 'Sub' $P5007 = 'cuid_146_1351011918.305' 
    capture_lex $P5007
    $P5003 = $P5007($P5008)
    goto for_next899
  for_done901:
    store_lex "$var", $P101
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_146_1351011918.305") :anon :lex :outer("cuid_147_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1084
    .param pmc _lex_param_0 
    .lex "$elem", $P101 
    .lex "$_", _lex_param_0 
    nqp_get_sc_object $P5001, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493", 18
    set $P101, $P5001
    set $P101, _lex_param_0
    is_invokable $I5001, $P101
    if $I5001 goto unless302_end898 
.annotate 'line', 1086
    find_lex $P5002, "$rxcompiler"
    $P5003 = $P5002."compile"($P101)
    set $P101, $P5003
  unless302_end898:
    find_lex $P5004, "$res"
    push $P5004, $P101
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_106_1351011918.305") :anon :lex :outer("cuid_1_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1099
    .const 'Sub' $P5004 = 'cuid_103_1351011918.305' 
    capture_lex $P5004 
    .const 'Sub' $P5004 = 'cuid_104_1351011918.305' 
    capture_lex $P5004 
    .const 'Sub' $P5004 = 'cuid_105_1351011918.305' 
    capture_lex $P5004 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_103_1351011918.305' 
    capture_lex $P5001
    .const 'Sub' $P5002 = 'cuid_104_1351011918.305' 
    capture_lex $P5002
    .const 'Sub' $P5003 = 'cuid_105_1351011918.305' 
    capture_lex $P5003
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "new" :subid("cuid_103_1351011918.305") :anon :lex :outer("cuid_106_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1101
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$code", _lex_param_1 
.annotate 'line', 1102
    nqp_decontainerize $P5001, _lex_param_0
    $P5002 = $P5001."bless"(_lex_param_1 :named("code"))
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "ACCEPTS" :subid("cuid_104_1351011918.305") :anon :lex :outer("cuid_106_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1104
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$target", _lex_param_1 
.annotate 'line', 1105
    nqp_get_sc_object $P5001, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 86
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5001."parse"(_lex_param_1, $P5002 :named("rule"))
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "Str" :subid("cuid_105_1351011918.305") :anon :lex :outer("cuid_106_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1107
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 92
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!code"
    set $S5001, $P5003
    .return ($S5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_108_1351011918.305") :anon :lex :outer("cuid_1_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1112
    .const 'Sub' $P5002 = 'cuid_107_1351011918.305' 
    capture_lex $P5002 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_107_1351011918.305' 
    capture_lex $P5001
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "ACCEPTS" :subid("cuid_107_1351011918.305") :anon :lex :outer("cuid_108_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1113
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$target", _lex_param_1 
.annotate 'line', 1114
    nqp_get_sc_object $P5001, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 86
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5001."parse"(_lex_param_1, $P5002 :named("rule"), 0 :named("c"))
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_150_1351011918.305") :load :init
.annotate 'file', "src\\stage2\\QRegex.nqp"
    .const 'Sub' $P5001 = 'cuid_149_1351011918.305' 
    capture_lex $P5001 
    .local pmc cur_sc 
    nqp_dynop_setup 
    nqp_bigint_setup 
    getinterp $P5001
    get_class $P5002, "LexPad"
    get_class $P5003, "NQPLexPad"
    $P5001."hll_map"($P5002, $P5003)
    load_bytecode "ModuleLoader.pbc"
    .const 'Sub' $P5001 = "cuid_1_1351011918.305" 
    get_hll_global $P5002, "ModuleLoader"
    $P5003 = $P5002."load_setting"("NQPCORE")
    $P5001."set_outer_ctx"($P5003)
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P5001, "ModuleLoader"
    $P5001."load_module"("QASTNode")
    nqp_create_sc $P5001, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321"
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
    push $P5002, "27C8824D4FAD337D61473EDCA9A4B41877C48B0C-1351011915.493"
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
    push $P5002, "generic"
    push $P5002, "instantiate_generic"
    push $P5002, "$!states"
    push $P5002, "$!edges"
    push $P5002, "$!generic"
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
    push $P5002, "!precompute_nfas"
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
    push $P5002, "9CEC585F74483B36B3161C05E7470C3A0671A630-1351011912.11"
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
    push $P5002, "16DB1CA83A28E7980973C07333DCEC2A69D52B08-1351011916.753"
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
    .const 'Sub' $P5003 = 'cuid_149_1351011918.305' 
    capture_lex $P5003
    $P5004 = $P5003()
    nqp_deserialize_sc "AQAAAEAAAAAEAAAAYAAAAAwAAADAAAAAmBQAAK0AAABoHwAAWEIAACkAAAAwRgAAAQAAAEBGAACERgAAAAAAAAsAAAAMAAAAfQAAAAAAAACAAAAAgQAAAJAAAACRAAAAAQAAAAAAAAABAAAA/AAAAAEAAACkAQAAAQAAAEwCAAA0AAAAcAUAAAEAAACwBQAAAQAAAL4IAAABAAAAEg4AAAEAAACmDwAAAQAAAFARAAABAAAAAhMAADQAAACcEwAAAAAAAGIAAAAAAAAAAAAAAAoABwAAAAIAAAACAAAAAABjAAAAAwAAAAIAAAAAAGQAAAAEAAAAAgAAAAAAHgAAAAUAAAACAAAAAABJAAAABgAAAAIAAAAAAFYAAAAHAAAAAgAAAAAAXAAAAAgAAAACAAAAAABgAAAACgAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAAAAAAAAMAAAAAAGUAAAAAAAAAAQAAAAoAAQAAAAkAAAACAAAAAAACAAAACgAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAAEAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAAAQAAAAMAAAAAAGYAAAAAAAAAAgAAAAoAAQAAAAQAAAACAAAAAAAeAAAACgAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAAIAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAAAgAAAAMAAAAAAGcAAAAAAAAAAwAAAAoAAAAAAAoAJQAAAAoAAAACAAEAAAATAAAADQAAAAIAAQAAABQAAAAOAAAAAgABAAAAFQAAAA8AAAACAAAAAAAEAAAAEAAAAAIAAQAAABcAAAARAAAAAgABAAAAGgAAABIAAAACAAEA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/////////////wAAAAAAAAAAAgAAAAAAAAACAAEAAAASAAAAAwACAAAAAABWAAAACgAKAAAAQwAAAAQAAAAAAAAAAAB0AAAABAABAAAAAAAAAEQAAAAEAAIAAAAAAAAAdQAAAAQAAwAAAAAAAAB2AAAABAAEAAAAAAAAAHcAAAAEAAUAAAAAAAAAeAAAAAQABgAAAAAAAAB5AAAABAAHAAAAAAAAAHoAAAAEAAgAAAAAAAAAewAAAAQACQAAAAAAAAAAAAAAlQAAAAAAAABcAAAACgAAAAAACgANAAAACgAAAAIAAQAAABMAAAANAAAAAgABAAAAFAAAAA4AAAACAAEAAAAVAAAADwAAAAIAAAAAAF0AAAAQAAAAAgAAAAAAXwAAABEAAAACAAEAAAAaAAAAEgAAAAIAAQAAABwAAAATAAAAAgABAAAAHgAAABQAAAACAAEAAAAgAAAAFQAAAAIAAQAAACIAAAAWAAAAAgAAAAAAXgAAABcAAAACAAEAAAAlAAAAGAAAAAIAAQAAACYAAAAAAAAAAAAAAAIAAAAAAAAAAgAAAAAAXAAAAAIAAQAAABIAAAAEAAAAAAAAAAEAAAAAAAAABQAAAAAAAAADAAAAAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAEAAAASAAAA////////////////////////////////AAAAAAAAAAACAAAAAAAAAAIAAQAAABIAAAADAAIAAAAAAFwAAAAKAAEAAAB8AAAABAAAAAAAAAAAAAAAAACWAAAAAAAAAGAAAAAKAAAAAAAKAA0AAAAKAAAAAgABAAAAEwAAAA0AAAACAAEAAAAUAAAADgAAAAIAAQAAABUAAAAPAAAAAgAAAAAAXQAAABAAAAACAAAAAABfAAAAEQAAAAIAAQAAABoAAAASAAAAAgABAAAAHAAAABMAAAACAAEAAAAeAAAAFAAAAAIAAQAAACAAAAAVAAAAAgABAAAAIgAAABYAAAACAAAAAABhAAAAFwAAAAIAAQAAACUAAAAYAAAAAgABAAAAJgAAAAAAAAAAAAAAAwAAAAAAAAACAAAAAABgAAAAAgAAAAAAXAAAAAIAAQAAABIAAAAEAAAAAAAAAAEAAAAAAAAABQAAAAAAAAADAAAAAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAEAAAASAAAA////////////////////////////////AAAAAAAAAAADAAAAAAAAAAIAAQAAABIAAAADAAIAAAAAAFwAAAAKAAEAAAB8AAAABAAAAAAAAAAAAAIAAAAAAGAAAAADAAAAAACqAAAAAAAAAGMAAAAKABQAAACPAAAAAgAEAAAAAwAAAJIAAAACAAQAAAAIAAAAkwAAAAIABAAAAAwAAACUAAAAAgAEAAAAJwAAAJUAAAACAAQAAAAvAAAAlgAAAAIABAAAADMAAACXAAAAAgAEAAAANwAAAJgAAAACAAQAAAA7AAAAmQAAAAIABAAAAD4AAACaAAAAAgAEAAAAQgAAAJsAAAACAAQAAABHAAAAnAAAAAIABAAAAE8AAACdAAAAAgAEAAAAUQAAAJ4AAAACAAQAAABXAAAAnwAAAAIABAAAAFsAAACgAAAAAgAEAAAAXwAAAKEAAAACAAQAAABjAAAAogAAAAIABAAAAGsAAACjAAAAAgAEAAAAbgAAAKQAAAACAAQAAAB3AAAACgAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAGMAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAAYwAAAAMAAAAAAKsAAAAAAAAAZAAAAAoAAQAAAKUAAAACAAAAAAADAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAAGQAAAADAAAAAACsAAAAAAAAAJQAAAADAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAIAAAAAAAAAAAAAAAAAAAADAAAAAAAAAAAAAAABAAAABQAAAAAAAAABAAAAAQAAAAUAAAAQAAAAAQAAAAEAAAAFAAAAIAAAAAEAAAABAAAABQAAADAAAAABAAAAAQAAAAUAAABAAAAAAQAAAAEAAAAFAAAAUAAAAAEAAAABAAAABQAAAGAAAAABAAAAAQAAAAUAAABwAAAAAQAAAAEAAAAFAAAAgAAAAAEAAAABAAAABQAAAJAAAAABAAAAAQAAAAUAAACgAAAAAQAAAAEAAAAFAAAAsAAAAAEAAAABAAAABQAAAMAAAAABAAAAAQAAAAUAAADQAAAAAQAAAAEAAAAFAAAA4AAAAAEAAAABAAAABQAAAPAAAAABAAAAAQAAAAUAAAAAAQAAAQAAAAEAAAAFAAAAEAEAAAEAAAABAAAABQAAACABAAABAAAAAQAAAAUAAAAwAQAAAQAAAAEAAAAFAAAAQAEAAAEAAAABAAAABQAAAFABAAABAAAAAQAAAAUAAABgAQAAAQAAAAEAAAAFAAAAcAEAAAEAAAABAAAABQAAAIABAAABAAAAAQAAAAUAAACQAQAAAQAAAAAAAAAEAAAAoAEAAAAAAAABAAAABQAAAKABAAABAAAAAQAAAAUAAACwAQAAAQAAAAEAAAAFAAAAwAEAAAEAAAABAAAABQAAANABAAABAAAAAQAAAAUAAADgAQAAAQAAAAEAAAAFAAAA8AEAAAEAAAABAAAABQAAAAACAAABAAAAAQAAAAUAAAAQAgAAAQAAAAEAAAAFAAAAIAIAAAEAAAABAAAABQAAADACAAABAAAAAQAAAAUAAABAAgAAAQAAAAEAAAAFAAAAUAIAAAEAAAABAAAABQAAAGACAAABAAAAAQAAAAUAAABwAgAAAQAAAAEAAAAFAAAAgAIAAAEAAAABAAAABQAAAJACAAABAAAAAQAAAAUAAACgAgAAAQAAAAEAAAAFAAAAsAIAAAEAAAABAAAABQAAAMACAAABAAAAAQAAAAUAAADQAgAAAQAAAAEAAAAFAAAA4AIAAAEAAAABAAAABQAAAPACAAABAAAAAQAAAAUAAAAAAwAAAQAAAAEAAAAFAAAAEAMAAAEAAAABAAAABQAAACADAAABAAAAAQAAAAUAAAAwAwAAAQAAAAEAAAAFAAAAQAMAAAEAAAABAAAABQAAAFADAAABAAAAAQAAAAUAAABgAwAAAQAAAAEAAAAFAAAAcAMAAAEAAAABAAAABQAAAIADAAABAAAAAQAAAAUAAACQAwAAAQAAAAEAAAAFAAAAoAMAAAEAAAABAAAABQAAALADAAABAAAAAQAAAAUAAADAAwAAAQAAAAEAAAAFAAAA0AMAAAEAAAABAAAABQAAAOADAAABAAAAAQAAAAUAAADwAwAAAQAAAAEAAAAFAAAAAAQAAAEAAAABAAAABQAAABAEAAABAAAAAQAAAAUAAAAgBAAAAQAAAAEAAAAFAAAAMAQAAAEAAAAAAAAABQAAAEAEAAAAAAAAAQAAAAUAAABABAAAAQAAAAEAAAAFAAAAUAQAAAEAAAABAAAABQAAAGAEAAABAAAAAQAAAAUAAABwBAAAAQAAAAEAAAAFAAAAgAQAAAEAAAABAAAABQAAAJAEAAABAAAAAQAAAAUAAACgBAAAAQAAAAEAAAAFAAAAsAQAAAEAAAABAAAABQAAAMAEAAABAAAAAQAAAAUAAADQBAAAAQAAAAEAAAAFAAAA4AQAAAEAAAABAAAABQAAAPAEAAABAAAAAAAAAAYAAAAABQAAAAAAAAEAAAAFAAAAAAUAAAEAAAABAAAABQAAABAFAAABAAAAAQAAAAUAAAAgBQAAAQAAAAEAAAAFAAAAMAUAAAEAAAABAAAABQAAAEAFAAABAAAAAAAAAAcAAABQBQAAAAAAAAEAAAAFAAAAUAUAAAEAAAABAAAABQAAAGAFAAABAAAAAQAAAAUAAABwBQAAAQAAAAAAAAAIAAAAgAUAAAAAAAABAAAABQAAAIAFAAABAAAAAgAAAAAAAACQBQAAAQAAAAAAAAAJAAAAoAUAAAAAAAAAAAAACgAAAKAFAAAAAAAAAgAAAAAAAACgBQAAAQAAAAIAAAAAAAAAsAUAAAEAAAADAAAABwAAAMAFAAABAAAAAwAAAAYAAADgCQAAAQAAAAMAAAAHAAAA3AwAAAEAAAADAAAABwAAAC4PAAABAAAAAQAAAAUAAADCFwAAAQAAAAEAAAAFAAAA0hcAAAEAAAABAAAABQAAAOIXAAABAAAAAQAAAAUAAADyFwAAAQAAAAEAAAAFAAAAAhgAAAEAAAABAAAABQAAABIYAAABAAAAAQAAAAUAAAAiGAAAAQAAAAEAAAAFAAAAMhgAAAEAAAABAAAABQAAAEIYAAABAAAAAQAAAAUAAABSGAAAAQAAAAEAAAAFAAAAYhgAAAEAAAABAAAABQAAAHIYAAABAAAAAQAAAAUAAACCGAAAAQAAAAEAAAAFAAAAkhgAAAEAAAABAAAABQAAAKIYAAABAAAAAQAAAAUAAACyGAAAAQAAAAEAAAAFAAAAwhgAAAEAAAABAAAABQAAANIYAAABAAAAAQAAAAUAAADiGAAAAQAAAAEAAAAFAAAA8hgAAAEAAAABAAAABQAAAAIZAAABAAAAAQAAAAUAAAASGQAAAQAAAAEAAAAFAAAAIhkAAAEAAAABAAAABQAAADIZAAABAAAAAQAAAAUAAABCGQAAAQAAAAEAAAAFAAAAUhkAAAEAAAABAAAABQAAAGIZAAABAAAAAQAAAAUAAAByGQAAAQAAAAEAAAAFAAAAghkAAAEAAAABAAAABQAAAJIZAAABAAAAAQAAAAUAAACiGQAAAQAAAAEAAAAFAAAAshkAAAEAAAABAAAABQAAAMIZAAABAAAAAQAAAAUAAADSGQAAAQAAAAEAAAAFAAAA4hkAAAEAAAABAAAABQAAAPIZAAABAAAAAQAAAAUAAAACGgAAAQAAAAEAAAAFAAAAEhoAAAEAAAABAAAABQAAACIaAAABAAAAAQAAAAUAAAAyGgAAAQAAAAEAAAAFAAAAQhoAAAEAAAAAAAAACwAAAFIaAAAAAAAAAwAAAAcAAABSGgAAAQAAAAMAAAAHAAAAvhsAAAEAAAADAAAACQAAAKAcAAABAAAAAwAAAAkAAADIHAAAAQAAAAMAAAAJAAAA8BwAAAEAAAADAAAACQAAACAdAAABAAAAAwAAAAkAAABIHQAAAQAAAAMAAAAJAAAAeB0AAAEAAAADAAAACQAAAKgdAAABAAAAAwAAAAkAAADYHQAAAQAAAAMAAAAJAAAAAB4AAAEAAAADAAAACQAAACgeAAABAAAAAwAAAAkAAABQHgAAAQAAAAMAAAAJAAAAeB4AAAEAAAADAAAACQAAAKAeAAABAAAAAwAAAAkAAADIHgAAAQAAAAMAAAAJAAAA8B4AAAEAAAADAAAACQAAACAfAAABAAAAAwAAAAkAAABQHwAAAQAAAAMAAAAJAAAAeB8AAAEAAAADAAAACQAAAKAfAAABAAAAAgAAAAAAAADIHwAAAQAAAAIAAAAAAAAA2B8AAAEAAAADAAAAAwAAAOgfAAABAAAACwAAAAAAAAAAAAEAAQABAAsAAAAAAAEAAAABAAEAAQALAAAAAAACAAAAAQABAAEACwAAAAAAAwAAAAEAAQABAAsAAAAAAAQAAAABAAEAAQALAAAAAAAFAAAAAQABAAEACwAAAAAABgAAAAEAAQABAAsAAAAAAAcAAAABAAEAAQALAAAAAAAIAAAAAQABAAEACwAAAAAACQAAAAEAAQABAAsAAAAAAAoAAAABAAEAAQALAAAAAAALAAAAAQABAAEACwAAAAAADAAAAAEAAQABAAsAAAAAAA0AAAABAAEAAQALAAAAAAAOAAAAAQABAAEACwAAAAAADwAAAAEAAQABAAsAAAAAABAAAAABAAEAAQALAAAAAAARAAAAAQABAAEACwAAAAAAEgAAAAEAAQABAAsAAAAAABMAAAABAAEAAQALAAAAAAAUAAAAAQABAAEACwAAAAAAFQAAAAEAAQABAAsAAAAAABYAAAABAAEAAQALAAAAAAAXAAAAAQABAAEACwAAAAAAGAAAAAEAAQABAAsAAAAAABkAAAABAAEAAQALAAAAAAAaAAAAAQABAAEACwAAAAAAGwAAAAEAAQABAAsAAAAAABwAAAABAAEAAQALAAAAAAAdAAAAAQABAAEACwAAAAAAHgAAAAEAAQABAAsAAAAAAB8AAAABAAEAAQALAAAAAAAgAAAAAQABAAEACwAAAAAAIQAAAAEAAQABAAsAAAAAACIAAAABAAEAAQALAAAAAAAjAAAAAQABAAEACwAAAAAAJAAAAAEAAQABAAsAAAAAACUAAAABAAEAAQALAAAAAAAmAAAAAQABAAEACwAAAAAAJwAAAAEAAQABAAsAAAAAACgAAAABAAEAAQALAAAAAAApAAAAAQABAAEACwAAAAAAKgAAAAEAAQABAAsAAAAAACsAAAABAAEAAQALAAAAAAAsAAAAAQABAAEACwAAAAAALQAAAAEAAQABAAsAAAAAAC4AAAABAAEAAQALAAAAAAAvAAAAAQABAAEACwAAAAAAMAAAAAEAAQABAAsAAAAAADEAAAABAAEAAQALAAAAAAAyAAAAAQABAAEACwAAAAAAMwAAAAEAAQABAAsAAAAAADQAAAABAAEAAQALAAAAAAA1AAAAAQABAAEACwAAAAAANgAAAAEAAQABAAsAAAAAADcAAAABAAEAAQALAAAAAAA4AAAAAQABAAEACwAAAAAAOQAAAAEAAQABAAsAAAAAADoAAAABAAEAAQALAAAAAAA7AAAAAQABAAEA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agAAAAEAAQABAAwAAAAAAGsAAAABAAEAAQAMAAAAAABsAAAAAQABAAEADAAAAAAAbQAAAAEAAQABAAwAAAAAAG4AAAABAAEAAQAMAAAAAABvAAAAAQABAAEADAAAAAAAcAAAAAEAAQABAAwAAAAAAHEAAAABAAEAAQAMAAAAAAByAAAAAQABAAEADAAAAAAAcwAAAAEAAQABAAwAAAAAAHQAAAABAAEAAQAMAAAAAAB1AAAAAQABAAEADAAAAAAAdgAAAAEAAQABAAwAAAAAAHcAAAABAAEAAQAMAAAAAAB4AAAAAQABAAEADAAAAAAAeQAAAAEAAQABAAwAAAAAAHoAAAABAAEAAQAMAAAAAAB7AAAAAQABAAEADAAAAAAAfAAAAAEAAQABAAwAAAAAAH0AAAABAAEAAQAMAAAAAAB+AAAAAQABAAEADAAAAAAAfwAAAAEAAQABAAwAAAAAAIAAAAABAAEAAQAMAAAAAACBAAAAAQABAAEABgAHAAAACgABAAAAfAAAAAIAAAAAAKkAAAAKAAMAAAAPAAAAAgAAAAAAXQAAABYAAAACAAAAAABeAAAAEAAAAAIAAAAAAF8AAAAHAAMAAAACAAAAAABdAAAAAgAAAAAAXgAAAAIAAAAAAF8AAAAHAAAAAAAHAAEAAAACAAEAAAASAAAABwAAAAAAAgABAAAAEgAAAAcAAAAAAAoAAAAAAAQAAQAAAAAAAAAHAAIAAAACAAAAAABcAAAAAgABAAAAEgAAAAcAAAAAAAoAAQAAAIQAAAACAAAAAABfAAAACgABAAAAjQAAAAcAAgAAAAIAAAAAAFwAAAAGAHwAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAQAAAAcABAAAAAQAAQAAAAAAAAACAAAAAABcAAAABgCOAAAABgB8AAAABwABAAAABwAEAAAABAABAAAAAAAAAAIAAAAAAFwAAAAGAI4AAAAGAHwAAAABAAYACAAAAAoAAAAAAAoAAQAAABYAAAACAAAAAABhAAAABwABAAAAAgAAAAAAYQAAAAcAAAAAAAcAAQAAAAIAAAAAAFwAAAAHAAAAAAABAAcAAAAAAAoAAAAAAAQAAQAAAAAAAAAHAAMAAAACAAAAAABgAAAAAgAAAAAAXAAAAAIAAQAAABIAAAAHAAAAAAAKAAAAAAAKAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcAAQAAAAcABAAAAAQAAQAAAAAAAAACAAAAAABcAAAABgCOAAAABgB8AAAABwAAAAAAAQAGADEAAAADAAQAAAAAAAAAAAADAAIAAQAAABIAAAAEAAEAAAAAAAAABgAyAAAAAwAEAAAAAAAAAAAAAwACAAEAAAASAAAABAABAAAAAAAAAAYAMwAAAAIAAQAAAAIAAAAEAAEAAAAAAAAAAwACAAEAAAACAAAABAABAAAAAAAAAAYAQwAAAAMABAAAAAAAAAAAAAMAAgABAAAAEgAAAAQAAQAAAAAAAAAGAHQAAAACAAEAAAAEAAAABAABAAAAAAAAAAMAAgABAAAABAAAAAQAAQAAAAAAAAAGAEQAAAACAAEAAAACAAAABAABAAAAAAAAAAMAAgABAAAAAgAAAAQAAQAAAAAAAAAGAHUAAAACAAEAAAACAAAABAABAAAAAAAAAAMAAgABAAAAAgAAAAQAAQAAAAAAAAAGAHYAAAADAAQAAAAAAAAAAAADAAIAAQAAABIAAAAEAAEAAAAAAAAABgB3AAAAAwAEAAAAAAAAAAAAAwACAAEAAAASAAAABAABAAAAAAAAAAYAeAAAAAMABAAAAAAAAAAAAAMAAgABAAAAEgAAAAQAAQAAAAAAAAAGAHkAAAADAAQAAAAAAAAAAAADAAIAAQAAABIAAAAEAAEAAAAAAAAABgB6AAAAAwAEAAAAAAAAAAAAAwACAAEAAAASAAAABAABAAAAAAAAAAYAewAAAAMABAAAAAAAAAAAAAMAAgABAAAAEgAAAAQAAQAAAAAAAAAGAEMAAAADAAQAAAAAAAAAAAADAAIAAQAAABIAAAAEAAEAAAAAAAAABgBEAAAAAgABAAAAAgAAAAQAAQAAAAAAAAADAAIAAQAAAAIAAAAEAAEAAAAAAAAABgBFAAAAAgABAAAAAgAAAAQAAQAAAAAAAAADAAIAAQAAAAIAAAAEAAEAAAAAAAAABgBGAAAAAwAEAAAAAAAAAAAAAwACAAEAAAASAAAABAABAAAAAAAAAAYARwAAAAMABAAAAAAAAAAAAAMAAgABAAAAEgAAAAQAAQAAAAAAAAAGAHwAAAADAAQAAAAAAAAAAAADAAIAAQAAABIAAAAEAAEAAAAAAAAAAgAAAAcAAAAAAAoAAAAAAAMAAAAHAAAA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", cur_sc, $P5002, $P5004
    .const "LexInfo" $P5001 = "cuid_1_1351011918.305"
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 0
    $P5001."set_static_lexpad_value"("GLOBALish", $P5002)
    .const "LexInfo" $P5003 = "cuid_1_1351011918.305"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1351011918.305"
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 0
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_1_1351011918.305"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1351011918.305"
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 1
    $P5001."set_static_lexpad_value"("EXPORT", $P5002)
    .const "LexInfo" $P5003 = "cuid_1_1351011918.305"
    $P5003."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_2_1351011918.305" 
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 4
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_3_1351011918.305" 
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 5
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_4_1351011918.305" 
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 6
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_5_1351011918.305" 
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 7
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_6_1351011918.305" 
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 8
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_7_1351011918.305" 
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 9
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_8_1351011918.305" 
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 10
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_9_1351011918.305" 
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 11
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_10_1351011918.305" 
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 12
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_11_1351011918.305" 
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 13
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_12_1351011918.305" 
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 14
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_13_1351011918.305" 
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 15
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_14_1351011918.305" 
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 16
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_15_1351011918.305" 
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 17
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_16_1351011918.305" 
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 18
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_17_1351011918.305" 
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 19
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_18_1351011918.305" 
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 20
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_19_1351011918.305" 
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 21
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_20_1351011918.305" 
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 22
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_21_1351011918.305" 
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 23
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_22_1351011918.305" 
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 24
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_23_1351011918.305" 
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 25
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_24_1351011918.305" 
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 26
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_25_1351011918.305" 
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 27
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_26_1351011918.305" 
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 28
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_27_1351011918.305" 
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 29
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_28_1351011918.305"
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 3
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_28_1351011918.305"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_28_1351011918.305"
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 3
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_28_1351011918.305"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1351011918.305"
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 30
    $P5001."set_static_lexpad_value"("NQPCursorRole", $P5002)
    .const "LexInfo" $P5003 = "cuid_1_1351011918.305"
    $P5003."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_29_1351011918.305" 
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 31
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_30_1351011918.305" 
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 32
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_31_1351011918.305" 
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 33
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_32_1351011918.305" 
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 34
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_33_1351011918.305" 
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 35
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_34_1351011918.305" 
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 36
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_35_1351011918.305" 
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 37
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_36_1351011918.305" 
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 38
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_37_1351011918.305" 
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 39
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_38_1351011918.305" 
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 40
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_39_1351011918.305" 
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 41
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_40_1351011918.305" 
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 42
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_41_1351011918.305" 
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 43
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_42_1351011918.305" 
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 44
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_43_1351011918.305" 
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 45
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_44_1351011918.305" 
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 46
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_45_1351011918.305" 
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 47
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_46_1351011918.305" 
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 48
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_47_1351011918.305" 
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 49
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_48_1351011918.305" 
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 50
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_49_1351011918.305" 
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 51
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_50_1351011918.305" 
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 52
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_51_1351011918.305" 
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 53
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_52_1351011918.305" 
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 54
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_53_1351011918.305" 
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 55
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_54_1351011918.305" 
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 56
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_55_1351011918.305" 
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 57
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_56_1351011918.305" 
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 58
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_57_1351011918.305" 
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 59
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_58_1351011918.305" 
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 60
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_59_1351011918.305" 
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 61
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_60_1351011918.305" 
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 62
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_61_1351011918.305" 
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 63
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_62_1351011918.305" 
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 64
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_63_1351011918.305" 
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 65
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_64_1351011918.305" 
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 66
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_65_1351011918.305" 
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 67
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_66_1351011918.305" 
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 68
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_67_1351011918.305" 
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 69
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_68_1351011918.305" 
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 70
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_69_1351011918.305" 
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 71
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_70_1351011918.305" 
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 72
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_70_1351011918.305"
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 30
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_70_1351011918.305"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_70_1351011918.305"
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 30
    $P5001."set_static_lexpad_value"("$?ROLE", $P5002)
    .const "LexInfo" $P5003 = "cuid_70_1351011918.305"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1351011918.305"
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 73
    $P5001."set_static_lexpad_value"("NQPMatch", $P5002)
    .const "LexInfo" $P5003 = "cuid_1_1351011918.305"
    $P5003."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_71_1351011918.305" 
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 74
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_72_1351011918.305" 
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 75
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_73_1351011918.305" 
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 76
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_74_1351011918.305" 
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 77
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_75_1351011918.305" 
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 78
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_76_1351011918.305" 
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 79
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_77_1351011918.305" 
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 80
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_78_1351011918.305" 
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 81
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_79_1351011918.305" 
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 82
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_80_1351011918.305" 
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 83
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_81_1351011918.305" 
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 84
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_82_1351011918.305" 
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 85
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_83_1351011918.305"
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 73
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_83_1351011918.305"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_83_1351011918.305"
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 73
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_83_1351011918.305"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1351011918.305"
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 86
    $P5001."set_static_lexpad_value"("NQPCursor", $P5002)
    .const "LexInfo" $P5003 = "cuid_1_1351011918.305"
    $P5003."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_84_1351011918.305" 
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 87
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_85_1351011918.305" 
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 88
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_86_1351011918.305" 
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 89
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_87_1351011918.305" 
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 90
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_88_1351011918.305" 
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 91
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_89_1351011918.305"
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 86
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_89_1351011918.305"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_89_1351011918.305"
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 86
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_89_1351011918.305"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1351011918.305"
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 92
    $P5001."set_static_lexpad_value"("NQPRegexMethod", $P5002)
    .const "LexInfo" $P5003 = "cuid_1_1351011918.305"
    $P5003."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_103_1351011918.305" 
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 93
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_104_1351011918.305" 
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 94
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_105_1351011918.305" 
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 95
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_106_1351011918.305"
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 92
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_106_1351011918.305"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_106_1351011918.305"
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 92
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_106_1351011918.305"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1351011918.305"
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 96
    $P5001."set_static_lexpad_value"("NQPRegex", $P5002)
    .const "LexInfo" $P5003 = "cuid_1_1351011918.305"
    $P5003."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_107_1351011918.305" 
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 97
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_108_1351011918.305"
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 96
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_108_1351011918.305"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_108_1351011918.305"
    nqp_get_sc_object $P5002, "94EF88E69015E8A056F00D764A2A659835DB8CB7-1351011918.321", 96
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_108_1351011918.305"
    $P5004 = $P5003."finish_static_lexpad"()
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_149_1351011918.305") :anon :lex :outer("cuid_150_1351011918.305")
.annotate 'file', "src\\stage2\\QRegex.nqp"
    new $P5001, 'ResizablePMCArray'
    .const 'Sub' $P5002 = "cuid_2_1351011918.305" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_3_1351011918.305" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_4_1351011918.305" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_5_1351011918.305" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_6_1351011918.305" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_7_1351011918.305" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_8_1351011918.305" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_9_1351011918.305" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_10_1351011918.305" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_11_1351011918.305" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_12_1351011918.305" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_13_1351011918.305" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_14_1351011918.305" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_15_1351011918.305" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_16_1351011918.305" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_17_1351011918.305" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_18_1351011918.305" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_19_1351011918.305" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_20_1351011918.305" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_21_1351011918.305" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_22_1351011918.305" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_23_1351011918.305" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_24_1351011918.305" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_25_1351011918.305" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_26_1351011918.305" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_27_1351011918.305" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_29_1351011918.305" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_30_1351011918.305" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_31_1351011918.305" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_32_1351011918.305" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_33_1351011918.305" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_34_1351011918.305" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_35_1351011918.305" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_36_1351011918.305" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_37_1351011918.305" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_38_1351011918.305" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_39_1351011918.305" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_40_1351011918.305" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_41_1351011918.305" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_42_1351011918.305" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_43_1351011918.305" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_44_1351011918.305" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_45_1351011918.305" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_46_1351011918.305" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_47_1351011918.305" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_48_1351011918.305" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_49_1351011918.305" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_50_1351011918.305" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_51_1351011918.305" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_52_1351011918.305" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_53_1351011918.305" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_54_1351011918.305" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_55_1351011918.305" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_56_1351011918.305" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_57_1351011918.305" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_58_1351011918.305" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_59_1351011918.305" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_60_1351011918.305" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_61_1351011918.305" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_62_1351011918.305" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_63_1351011918.305" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_64_1351011918.305" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_65_1351011918.305" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_66_1351011918.305" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_67_1351011918.305" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_68_1351011918.305" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_69_1351011918.305" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_70_1351011918.305" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_71_1351011918.305" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_72_1351011918.305" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_73_1351011918.305" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_74_1351011918.305" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_75_1351011918.305" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_76_1351011918.305" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_77_1351011918.305" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_78_1351011918.305" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_79_1351011918.305" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_80_1351011918.305" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_81_1351011918.305" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_82_1351011918.305" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_84_1351011918.305" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_85_1351011918.305" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_86_1351011918.305" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_87_1351011918.305" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_88_1351011918.305" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_103_1351011918.305" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_104_1351011918.305" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_105_1351011918.305" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_107_1351011918.305" 
    push $P5001, $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_151_1351011918.305") :load
.annotate 'file', "src\\stage2\\QRegex.nqp"
    .const 'Sub' $P5001 = "cuid_1_1351011918.305" 
    $P5002 = $P5001()
    .return ($P5002) 
.end