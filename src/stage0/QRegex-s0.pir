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
.sub "" :subid("cuid_1_1351021530.153") :anon :lex
.annotate 'file', "src\\stage2\\QRegex.nqp"
    .param pmc _lex_param_0 :slurpy 
    .const 'Sub' $P5020 = 'cuid_28_1351021530.153' 
    capture_lex $P5020 
    .const 'Sub' $P5020 = 'cuid_70_1351021530.153' 
    capture_lex $P5020 
    .const 'Sub' $P5020 = 'cuid_83_1351021530.153' 
    capture_lex $P5020 
    .const 'Sub' $P5020 = 'cuid_89_1351021530.153' 
    capture_lex $P5020 
    .const 'Sub' $P5020 = 'cuid_111_1351021530.153' 
    capture_lex $P5020 
    .const 'Sub' $P5020 = 'cuid_113_1351021530.153' 
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
    if $I5001 goto unless100_end253 
    can $I5002, ctxsave, "ctxsave"
    box $P5004, $I5002
    set $P5003, $P5004
    unless $I5002 goto if101_end255 
    $P5002 = ctxsave."ctxsave"()
    set $P5003, $P5002
  if101_end255:
  unless100_end253:
.annotate 'line', 1
    .const 'Sub' $P5005 = 'cuid_28_1351021530.153' 
    capture_lex $P5005
    $P5006 = $P5005()
    .const 'Sub' $P5007 = 'cuid_70_1351021530.153' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_83_1351021530.153' 
    capture_lex $P5008
    $P5009 = $P5008()
    .const 'Sub' $P5010 = 'cuid_89_1351021530.153' 
    capture_lex $P5010
    $P5011 = $P5010()
    .const 'Sub' $P5012 = 'cuid_111_1351021530.153' 
    capture_lex $P5012
    $P5013 = $P5012()
    .const 'Sub' $P5014 = 'cuid_113_1351021530.153' 
    capture_lex $P5014
    $P5015 = $P5014()
    unless _lex_param_0 goto if307_end929 
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P5016, "ModuleLoader"
    getinterp $P5018
    set $P5017, $P5018["context"]
    $P5019 = $P5016."set_mainline_module"($P5017)
  if307_end929:
    .return () 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_28_1351021530.153") :anon :lex :outer("cuid_1_1351021530.153")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 7
    .const 'Sub' $P5058 = 'cuid_2_1351021530.153' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_3_1351021530.153' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_4_1351021530.153' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_5_1351021530.153' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_6_1351021530.153' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_7_1351021530.153' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_8_1351021530.153' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_9_1351021530.153' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_10_1351021530.153' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_11_1351021530.153' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_12_1351021530.153' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_13_1351021530.153' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_14_1351021530.153' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_15_1351021530.153' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_16_1351021530.153' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_17_1351021530.153' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_18_1351021530.153' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_19_1351021530.153' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_20_1351021530.153' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_21_1351021530.153' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_22_1351021530.153' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_23_1351021530.153' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_24_1351021530.153' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_25_1351021530.153' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_26_1351021530.153' 
    capture_lex $P5058 
    .const 'Sub' $P5058 = 'cuid_27_1351021530.153' 
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
    .const 'Sub' $P5032 = 'cuid_2_1351021530.153' 
    capture_lex $P5032
    .const 'Sub' $P5033 = 'cuid_3_1351021530.153' 
    capture_lex $P5033
    .const 'Sub' $P5034 = 'cuid_4_1351021530.153' 
    capture_lex $P5034
    .const 'Sub' $P5035 = 'cuid_5_1351021530.153' 
    capture_lex $P5035
    .const 'Sub' $P5036 = 'cuid_6_1351021530.153' 
    capture_lex $P5036
    .const 'Sub' $P5037 = 'cuid_7_1351021530.153' 
    capture_lex $P5037
    .const 'Sub' $P5038 = 'cuid_8_1351021530.153' 
    capture_lex $P5038
    .const 'Sub' $P5039 = 'cuid_9_1351021530.153' 
    capture_lex $P5039
    .const 'Sub' $P5040 = 'cuid_10_1351021530.153' 
    capture_lex $P5040
    .const 'Sub' $P5041 = 'cuid_11_1351021530.153' 
    capture_lex $P5041
    .const 'Sub' $P5042 = 'cuid_12_1351021530.153' 
    capture_lex $P5042
    .const 'Sub' $P5043 = 'cuid_13_1351021530.153' 
    capture_lex $P5043
    .const 'Sub' $P5044 = 'cuid_14_1351021530.153' 
    capture_lex $P5044
    .const 'Sub' $P5045 = 'cuid_15_1351021530.153' 
    capture_lex $P5045
    .const 'Sub' $P5046 = 'cuid_16_1351021530.153' 
    capture_lex $P5046
    .const 'Sub' $P5047 = 'cuid_17_1351021530.153' 
    capture_lex $P5047
    .const 'Sub' $P5048 = 'cuid_18_1351021530.153' 
    capture_lex $P5048
    .const 'Sub' $P5049 = 'cuid_19_1351021530.153' 
    capture_lex $P5049
    .const 'Sub' $P5050 = 'cuid_20_1351021530.153' 
    capture_lex $P5050
    .const 'Sub' $P5051 = 'cuid_21_1351021530.153' 
    capture_lex $P5051
    .const 'Sub' $P5052 = 'cuid_22_1351021530.153' 
    capture_lex $P5052
    .const 'Sub' $P5053 = 'cuid_23_1351021530.153' 
    capture_lex $P5053
    .const 'Sub' $P5054 = 'cuid_24_1351021530.153' 
    capture_lex $P5054
    .const 'Sub' $P5055 = 'cuid_25_1351021530.153' 
    capture_lex $P5055
    .const 'Sub' $P5056 = 'cuid_26_1351021530.153' 
    capture_lex $P5056
    .const 'Sub' $P5057 = 'cuid_27_1351021530.153' 
    capture_lex $P5057
    .return ($P5057) 
.end
.HLL "nqp"
.namespace []
.sub "new" :subid("cuid_2_1351021530.153") :anon :lex :outer("cuid_28_1351021530.153")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 25
    .param pmc _lex_param_0 
    .lex "$new", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
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
.sub "addstate" :subid("cuid_3_1351021530.153") :anon :lex :outer("cuid_28_1351021530.153")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 32
    .param pmc _lex_param_0 
    .lex "$id", $I101 
    .lex "self", _lex_param_0 
    set $I101, 0
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 3
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!states"
    set $N5001, $P5003
    set $I5001, $N5001
    set $I101, $I5001
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 3
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!states"
    new $P5007, 'ResizablePMCArray'
    set $P5006[$I101], $P5007
    .return ($I101) 
.end
.HLL "nqp"
.namespace []
.sub "addedge" :subid("cuid_4_1351021530.153") :anon :lex :outer("cuid_28_1351021530.153")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 38
    .param pmc _lex_param_0 
    .param int _lex_param_1 
    .param int _lex_param_2 
    .param pmc _lex_param_3 
    .param pmc _lex_param_4 
    .param pmc _lex_param_5 :named("newedge") :optional 
    .param int haz_param_8 :opt_flag 
    if haz_param_8, default264
    box $P5020, 1
    set _lex_param_5, $P5020
  default264:
    .lex "$st", $P101 
    .lex "self", _lex_param_0 
    .lex "$from", _lex_param_1 
    .lex "$to", _lex_param_2 
    .lex "$action", _lex_param_3 
    .lex "$value", _lex_param_4 
    .lex "$newedge", _lex_param_5 
    nqp_get_sc_object $P5001, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P101, $P5001
    unless _lex_param_5 goto if102_end257 
    nqp_decontainerize $P5002, _lex_param_0
    nqp_get_sc_object $P5003, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 3
    box $P5004, 1
    repr_bind_attr_obj $P5002, $P5003, "$!edges", $P5004
  if102_end257:
    set $N5001, _lex_param_2
    set $N5002, 0
    islt $I5001, $N5001, $N5002
    unless $I5001 goto if103_end259 
.annotate 'line', 40
    nqp_decontainerize $P5005, _lex_param_0
    $P5006 = $P5005."addstate"()
    set $I5002, $P5006
    set _lex_param_2, $I5002
  if103_end259:
    nqp_decontainerize $P5008, _lex_param_0
    nqp_get_sc_object $P5009, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 3
    repr_get_attr_obj $P5010, $P5008, $P5009, "$!states"
    set $P5007, $P5010[_lex_param_1]
    unless_null $P5007, fallback260
    nqp_get_sc_object $P5011, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5007, $P5011
  fallback260:
    set $P101, $P5007
    push $P101, _lex_param_3
    nqp_get_sc_object $P5015, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 0
    nqp_get_package_through_who $P5014, $P5015, "QAST"
    get_who $P5013, $P5014
    set $P5012, $P5013["SVal"]
    unless_null $P5012, fallback263
    nqp_get_sc_object $P5016, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5012, $P5016
  fallback263:
    type_check $I5003, _lex_param_4, $P5012
    unless $I5003 goto if104_else261 
.annotate 'line', 43
    $P5017 = _lex_param_4."value"()
    set $P5018, $P5017
    goto if104_end262
  if104_else261:
    set $P5018, _lex_param_4
  if104_end262:
    push $P101, $P5018
    box $P5019, _lex_param_2
    push $P101, $P5019
    .return (_lex_param_2) 
.end
.HLL "nqp"
.namespace []
.sub "states" :subid("cuid_5_1351021530.153") :anon :lex :outer("cuid_28_1351021530.153")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 48
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 3
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!states"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "addnode" :subid("cuid_6_1351021530.153") :anon :lex :outer("cuid_28_1351021530.153")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 50
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :named("vars_as_generic") :optional 
    .param int haz_param_9 :opt_flag 
    if haz_param_9, default265
    nqp_get_sc_object $P5003, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set _lex_param_2, $P5003
  default265:
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
.sub "regex_nfa" :subid("cuid_7_1351021530.153") :anon :lex :outer("cuid_28_1351021530.153")
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
    nqp_get_sc_object $P5001, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P101, $P5001
.annotate 'line', 56
    $P5003 = _lex_param_1."rxtype"()
    set $P5002, $P5003
    defined $I5001, $P5002
    if $I5001, defor266
    box $P5004, "concat"
    set $P5002, $P5004
  defor266:
    set $P101, $P5002
.annotate 'line', 57
    nqp_decontainerize $P5006, _lex_param_0
    get_how $P5005, $P5006
    nqp_decontainerize $P5007, _lex_param_0
    $P5008 = $P5005."can"($P5007, $P101)
    unless $P5008 goto if105_else267 
.annotate 'line', 58
    nqp_decontainerize $P5009, _lex_param_0
    set $S5001, $P101
    $P5010 = $P5009.$S5001(_lex_param_1, _lex_param_2, _lex_param_3)
    set $P5013, $P5010
    goto if105_end268
  if105_else267:
.annotate 'line', 59
    nqp_decontainerize $P5011, _lex_param_0
    $P5012 = $P5011."fate"(_lex_param_1, _lex_param_2, _lex_param_3)
    set $P5013, $P5012
  if105_end268:
    .return ($P5013) 
.end
.HLL "nqp"
.namespace []
.sub "fate" :subid("cuid_8_1351021530.153") :anon :lex :outer("cuid_28_1351021530.153")
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
    unless_null $P5002, fallback269
    nqp_get_sc_object $P5005, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5002, $P5005
  fallback269:
    $P5006 = $P5001."addedge"(_lex_param_2, 0, $P5002, 0, 0 :named("newedge"))
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "alt" :subid("cuid_9_1351021530.153") :anon :lex :outer("cuid_28_1351021530.153")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 66
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param int _lex_param_2 
    .param int _lex_param_3 
    .const 'Sub' $P5007 = 'cuid_114_1351021530.153' 
    capture_lex $P5007 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$from", _lex_param_2 
    .lex "$to", _lex_param_3 
.annotate 'line', 67
    $P5004 = _lex_param_1."list"()
    set $P5001, $P5004
    iter $P5003, $P5004
  for_next274:
    unless $P5003, for_done276
    shift $P5006, $P5003
  for_redo275:
    .const 'Sub' $P5005 = 'cuid_114_1351021530.153' 
    capture_lex $P5005
    $P5001 = $P5005($P5006)
    goto for_next274
  for_done276:
    .return (_lex_param_3) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_114_1351021530.153") :anon :lex :outer("cuid_9_1351021530.153")
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
    unless $I5004 goto if107_end273 
    set $N5003, $I101
    set $N5004, 0
    isgt $I5006, $N5003, $N5004
    set $I5007, $I5006
  if107_end273:
    set $I5008, $I5007
    unless $I5007 goto if106_end271 
    store_lex "$to", $I101
    set $I5008, $I101
  if106_end271:
    .return ($I5008) 
.end
.HLL "nqp"
.namespace []
.sub "anchor" :subid("cuid_10_1351021530.153") :anon :lex :outer("cuid_28_1351021530.153")
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
    unless_null $P5002, fallback277
    nqp_get_sc_object $P5005, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5002, $P5005
  fallback277:
    $P5006 = $P5001."addedge"(_lex_param_2, _lex_param_3, $P5002, 0)
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "cclass" :subid("cuid_11_1351021530.153") :anon :lex :outer("cuid_28_1351021530.153")
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
    unless_null $P5002, fallback278
    nqp_get_sc_object $P5005, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5002, $P5005
  fallback278:
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
    unless_null $P5007, fallback279
    nqp_get_sc_object $P5010, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5007, $P5010
  fallback279:
    $P5011 = $P5001."addedge"(_lex_param_2, _lex_param_3, $N5001, $P5007)
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "concat" :subid("cuid_12_1351021530.153") :anon :lex :outer("cuid_28_1351021530.153")
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
  while108_test280:
    set $N5004, _lex_param_2
    set $N5005, 0
    isgt $I5002, $N5004, $N5005
    set $I5004, $I5002
    unless $I5002 goto if109_end286 
    set $N5006, $I101
    set $N5007, $I102
    islt $I5003, $N5006, $N5007
    set $I5004, $I5003
  if109_end286:
    set $I5007, $I5004
    unless $I5004 goto while108_done284 
  while108_redo282:
.annotate 'line', 96
.annotate 'line', 97
    nqp_decontainerize $P5002, _lex_param_0
    set $P5003, _lex_param_1[$I101]
    unless_null $P5003, fallback287
    nqp_get_sc_object $P5004, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5003, $P5004
  fallback287:
    $P5005 = $P5002."regex_nfa"($P5003, _lex_param_2, -1)
    set $I5005, $P5005
    set _lex_param_2, $I5005
    set $N5009, $I101
    set $N5010, 1
    add $N5008, $N5009, $N5010
    set $I5006, $N5008
    set $I101, $I5006
    set $I5007, $I101
    goto while108_test280 
  while108_done284:
    set $N5011, _lex_param_2
    set $N5012, 0
    isgt $I5008, $N5011, $N5012
    set $I5010, $I5008
    unless $I5008 goto if111_end291 
    set $N5013, $I102
    set $N5014, 0
    isge $I5009, $N5013, $N5014
    set $I5010, $I5009
  if111_end291:
    unless $I5010 goto if110_else288 
.annotate 'line', 100
    nqp_decontainerize $P5006, _lex_param_0
    set $P5007, _lex_param_1[$I101]
    unless_null $P5007, fallback292
    nqp_get_sc_object $P5008, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5007, $P5008
  fallback292:
    $P5009 = $P5006."regex_nfa"($P5007, _lex_param_2, _lex_param_3)
    set $P5010, $P5009
    goto if110_end289
  if110_else288:
    box $P5011, _lex_param_3
    set $P5010, $P5011
  if110_end289:
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "enumcharlist" :subid("cuid_13_1351021530.153") :anon :lex :outer("cuid_28_1351021530.153")
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
    nqp_get_sc_object $P5001, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P101, $P5001
    set $P5002, _lex_param_1[0]
    unless_null $P5002, fallback293
    nqp_get_sc_object $P5003, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5002, $P5003
  fallback293:
    set $P101, $P5002
.annotate 'line', 105
    $P5004 = _lex_param_1."subtype"()
    set $S5001, $P5004
    iseq $I5001, $S5001, "zerowidth"
    unless $I5001 goto if112_else294 
.annotate 'line', 106
    nqp_decontainerize $P5005, _lex_param_0
    find_lex $P5008, "$?PACKAGE"
    get_who $P5007, $P5008
    set $P5006, $P5007["$EDGE_CHARLIST"]
    unless_null $P5006, fallback296
    nqp_get_sc_object $P5009, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5006, $P5009
  fallback296:
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
    unless_null $P5013, fallback297
    nqp_get_sc_object $P5016, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5013, $P5016
  fallback297:
    $P5017 = $P5012."addedge"(_lex_param_2, 0, $P5013, 0)
    set $P5025, $P5017
    goto if112_end295
  if112_else294:
.annotate 'line', 109
.annotate 'line', 110
    nqp_decontainerize $P5018, _lex_param_0
    find_lex $P5021, "$?PACKAGE"
    get_who $P5020, $P5021
    set $P5019, $P5020["$EDGE_CHARLIST"]
    unless_null $P5019, fallback298
    nqp_get_sc_object $P5022, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5019, $P5022
  fallback298:
    set $N5005, $P5019
    $P5023 = _lex_param_1."negate"()
    istrue $I5004, $P5023
    set $N5006, $I5004
    add $N5004, $N5005, $N5006
    $P5024 = $P5018."addedge"(_lex_param_2, _lex_param_3, $N5004, $P101)
    set $P5025, $P5024
  if112_end295:
    .return ($P5025) 
.end
.HLL "nqp"
.namespace []
.sub "literal" :subid("cuid_14_1351021530.153") :anon :lex :outer("cuid_28_1351021530.153")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 114
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param int _lex_param_2 
    .param int _lex_param_3 
    .const 'Sub' $P5016 = 'cuid_115_1351021530.153' 
    capture_lex $P5016 
    .const 'Sub' $P5016 = 'cuid_116_1351021530.153' 
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
    unless_null $P5001, fallback299
    nqp_get_sc_object $P5002, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5001, $P5002
  fallback299:
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
    unless $I5003 goto if113_else300 
.annotate 'line', 117
.annotate 'line', 118
    $P5003 = _lex_param_1."subtype"()
    set $S5002, $P5003
    iseq $I5004, $S5002, "ignorecase"
    unless $I5004 goto if114_else302 
    .const 'Sub' $P5004 = 'cuid_115_1351021530.153' 
    capture_lex $P5004
    $P5005 = $P5004()
    set $P5008, $P5005
    goto if114_end303
  if114_else302:
    .const 'Sub' $P5006 = 'cuid_116_1351021530.153' 
    capture_lex $P5006
    $P5007 = $P5006()
    set $P5008, $P5007
  if114_end303:
    set $P5015, $P5008
    goto if113_end301
  if113_else300:
.annotate 'line', 138
.annotate 'line', 139
    nqp_decontainerize $P5009, _lex_param_0
    find_lex $P5012, "$?PACKAGE"
    get_who $P5011, $P5012
    set $P5010, $P5011["$EDGE_EPSILON"]
    unless_null $P5010, fallback321
    nqp_get_sc_object $P5013, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5010, $P5013
  fallback321:
    $P5014 = $P5009."addedge"(_lex_param_2, _lex_param_3, $P5010, 0)
    set $P5015, $P5014
  if113_end301:
    .return ($P5015) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_115_1351021530.153") :anon :lex :outer("cuid_14_1351021530.153")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 118
    .lex "$litconst_lc", $S101 
    .lex "$litconst_uc", $S102 
    set $S101, ""
    set $S102, ""
    find_lex $P5002, "$node"
    set $P5001, $P5002[0]
    unless_null $P5001, fallback304
    nqp_get_sc_object $P5003, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5001, $P5003
  fallback304:
    set $S5002, $P5001
    downcase $S5001, $S5002
    set $S101, $S5001
    find_lex $P5005, "$node"
    set $P5004, $P5005[0]
    unless_null $P5004, fallback305
    nqp_get_sc_object $P5006, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5004, $P5006
  fallback305:
    set $S5004, $P5004
    upcase $S5003, $S5004
    set $S102, $S5003
  while115_test306:
    find_lex $I5002, "$i"
    set $N5001, $I5002
    find_lex $I5003, "$litlen"
    set $N5002, $I5003
    islt $I5001, $N5001, $N5002
    set $I5012, $I5001
    unless $I5001 goto while115_done310 
  while115_redo308:
.annotate 'line', 121
.annotate 'line', 122
    find_lex $P5008, "self"
    nqp_decontainerize $P5007, $P5008
    find_lex $I5004, "$from"
    find_lex $P5011, "$?PACKAGE"
    get_who $P5010, $P5011
    set $P5009, $P5010["$EDGE_CODEPOINT_I"]
    unless_null $P5009, fallback311
    nqp_get_sc_object $P5012, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5009, $P5012
  fallback311:
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
    goto while115_test306 
  while115_done310:
.annotate 'line', 126
    find_lex $P5018, "self"
    nqp_decontainerize $P5017, $P5018
    find_lex $I5013, "$from"
    find_lex $I5014, "$to"
    find_lex $P5021, "$?PACKAGE"
    get_who $P5020, $P5021
    set $P5019, $P5020["$EDGE_CODEPOINT_I"]
    unless_null $P5019, fallback312
    nqp_get_sc_object $P5022, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5019, $P5022
  fallback312:
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
.sub "" :subid("cuid_116_1351021530.153") :anon :lex :outer("cuid_14_1351021530.153")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 129
    .lex "$litconst", $S101 
    set $S101, ""
    find_lex $P5002, "$node"
    set $P5001, $P5002[0]
    unless_null $P5001, fallback313
    nqp_get_sc_object $P5003, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5001, $P5003
  fallback313:
    set $S5001, $P5001
    set $S101, $S5001
  while116_test314:
    find_lex $I5002, "$i"
    set $N5001, $I5002
    find_lex $I5003, "$litlen"
    set $N5002, $I5003
    islt $I5001, $N5001, $N5002
    set $I5010, $I5001
    unless $I5001 goto while116_done318 
  while116_redo316:
.annotate 'line', 131
.annotate 'line', 132
    find_lex $P5005, "self"
    nqp_decontainerize $P5004, $P5005
    find_lex $I5004, "$from"
    find_lex $P5008, "$?PACKAGE"
    get_who $P5007, $P5008
    set $P5006, $P5007["$EDGE_CODEPOINT"]
    unless_null $P5006, fallback319
    nqp_get_sc_object $P5009, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5006, $P5009
  fallback319:
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
    goto while116_test314 
  while116_done318:
.annotate 'line', 135
    find_lex $P5012, "self"
    nqp_decontainerize $P5011, $P5012
    find_lex $I5011, "$from"
    find_lex $I5012, "$to"
    find_lex $P5015, "$?PACKAGE"
    get_who $P5014, $P5015
    set $P5013, $P5014["$EDGE_CODEPOINT"]
    unless_null $P5013, fallback320
    nqp_get_sc_object $P5016, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5013, $P5016
  fallback320:
    find_lex $I5014, "$i"
    ord $I5013, $S101, $I5014
    $P5017 = $P5011."addedge"($I5011, $I5012, $P5013, $I5013)
    .return ($P5017) 
.end
.HLL "nqp"
.namespace []
.sub "subrule" :subid("cuid_15_1351021530.153") :anon :lex :outer("cuid_28_1351021530.153")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 143
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param int _lex_param_2 
    .param int _lex_param_3 
    .const 'Sub' $P5128 = 'cuid_117_1351021530.153' 
    capture_lex $P5128 
    .const 'Sub' $P5128 = 'cuid_118_1351021530.153' 
    capture_lex $P5128 
    .lex "$subtype", $P101 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$from", _lex_param_2 
    .lex "$to", _lex_param_3 
    nqp_get_sc_object $P5001, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P101, $P5001
.annotate 'line', 144
    $P5002 = _lex_param_1."subtype"()
    set $P101, $P5002
.annotate 'line', 145
    $P5003 = _lex_param_1."name"()
    set $S5001, $P5003
    iseq $I5001, $S5001, "before"
    set $I5003, $I5001
    unless $I5001 goto if118_end325 
    $P5004 = _lex_param_1."negate"()
    isfalse $I5002, $P5004
    set $I5003, $I5002
  if118_end325:
    unless $I5003 goto if117_else322 
    .const 'Sub' $P5005 = 'cuid_117_1351021530.153' 
    capture_lex $P5005
    $P5006 = $P5005()
    set $P5127, $P5006
    goto if117_end323
  if117_else322:
    set $S5002, $P101
    isne $I5004, $S5002, "zerowidth"
    set $I5010, $I5004
    unless $I5004 goto if120_end332 
.annotate 'line', 151
    $P5007 = _lex_param_1."name"()
    set $S5003, $P5007
    iseq $I5005, $S5003, "alpha"
    set $I5009, $I5005
    if $I5005 goto unless121_end334 
    set $S5004, $P101
    iseq $I5006, $S5004, "method"
    set $I5008, $I5006
    unless $I5006 goto if122_end336 
.annotate 'line', 153
    nqp_get_sc_object $P5011, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 0
    nqp_get_package_through_who $P5010, $P5011, "QAST"
    get_who $P5009, $P5010
    set $P5008, $P5009["SVal"]
    unless_null $P5008, fallback339
    nqp_get_sc_object $P5012, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5008, $P5012
  fallback339:
    set $P5014, _lex_param_1[0]
    unless_null $P5014, fallback340
    nqp_get_sc_object $P5015, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5014, $P5015
  fallback340:
    set $P5013, $P5014[0]
    unless_null $P5013, fallback341
    nqp_get_sc_object $P5016, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5013, $P5016
  fallback341:
    $P5017 = $P5008."ACCEPTS"($P5013)
    unless $P5017 goto if123_else337 
    set $P5019, _lex_param_1[0]
    unless_null $P5019, fallback342
    nqp_get_sc_object $P5020, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5019, $P5020
  fallback342:
    set $P5018, $P5019[0]
    unless_null $P5018, fallback343
    nqp_get_sc_object $P5021, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5018, $P5021
  fallback343:
    $P5022 = $P5018."value"()
    set $P5027, $P5022
    goto if123_end338
  if123_else337:
    set $P5024, _lex_param_1[0]
    unless_null $P5024, fallback344
    nqp_get_sc_object $P5025, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5024, $P5025
  fallback344:
    set $P5023, $P5024[0]
    unless_null $P5023, fallback345
    nqp_get_sc_object $P5026, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5023, $P5026
  fallback345:
    set $P5027, $P5023
  if123_end338:
    set $S5005, $P5027
    iseq $I5007, $S5005, "alpha"
    set $I5008, $I5007
  if122_end336:
    set $I5009, $I5008
  unless121_end334:
    set $I5010, $I5009
  if120_end332:
    unless $I5010 goto if119_else329 
.annotate 'line', 154
    nqp_decontainerize $P5028, _lex_param_0
    find_lex $P5031, "$?PACKAGE"
    get_who $P5030, $P5031
    set $P5029, $P5030["$EDGE_CHARCLASS"]
    unless_null $P5029, fallback346
    nqp_get_sc_object $P5032, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5029, $P5032
  fallback346:
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
    unless_null $P5036, fallback347
    nqp_get_sc_object $P5039, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5036, $P5039
  fallback347:
    set $N5005, $P5036
    $P5040 = _lex_param_1."negate"()
    set $N5006, $P5040
    add $N5004, $N5005, $N5006
    $P5041 = $P5035."addedge"(_lex_param_2, _lex_param_3, $N5004, 95)
    set $P5126, $P5041
    goto if119_end330
  if119_else329:
    set $S5006, $P101
    iseq $I5012, $S5006, "zerowidth"
    unless $I5012 goto if124_else348 
.annotate 'line', 158
.annotate 'line', 159
    $P5042 = _lex_param_1."negate"()
    unless $P5042 goto if125_else350 
.annotate 'line', 160
    nqp_decontainerize $P5043, _lex_param_0
    $P5044 = $P5043."fate"(_lex_param_1, _lex_param_2, _lex_param_3)
    set $P5047, $P5044
    goto if125_end351
  if125_else350:
    .const 'Sub' $P5045 = 'cuid_118_1351021530.153' 
    capture_lex $P5045
    $P5046 = $P5045()
    set $P5047, $P5046
  if125_end351:
    set $P5125, $P5047
    goto if124_end349
  if124_else348:
    find_dynamic_lex $P5048, "$*vars_as_generic"
    unless_null $P5048, fallback365
    nqp_get_sc_object $P5051, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 0
    get_who $P5050, $P5051
    set $P5049, $P5050["$vars_as_generic"]
    unless_null $P5049, fallback366
    nqp_get_sc_object $P5052, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5049, $P5052
  fallback366:
    unless_null $P5049, vivi_132367
    die "Contextual $*vars_as_generic not found"
    box $P5053, "Contextual $*vars_as_generic not found"
    set $P5049, $P5053
  vivi_132367:
    set $P5048, $P5049
  fallback365:
    set $P5054, $P5048
    unless $P5048 goto if131_end364 
    set $S5007, $P101
    iseq $I5013, $S5007, "method"
    box $P5055, $I5013
    set $P5054, $P5055
  if131_end364:
    set $P5066, $P5054
    unless $P5054 goto if130_end362 
.annotate 'line', 169
    nqp_get_sc_object $P5059, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 0
    nqp_get_package_through_who $P5058, $P5059, "QAST"
    get_who $P5057, $P5058
    set $P5056, $P5057["SVal"]
    unless_null $P5056, fallback368
    nqp_get_sc_object $P5060, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5056, $P5060
  fallback368:
    set $P5062, _lex_param_1[0]
    unless_null $P5062, fallback369
    nqp_get_sc_object $P5063, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5062, $P5063
  fallback369:
    set $P5061, $P5062[0]
    unless_null $P5061, fallback370
    nqp_get_sc_object $P5064, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5061, $P5064
  fallback370:
    $P5065 = $P5056."ACCEPTS"($P5061)
    set $P5066, $P5065
  if130_end362:
    set $P5072, $P5066
    unless $P5066 goto if129_end360 
    set $P5068, _lex_param_1[0]
    unless_null $P5068, fallback371
    nqp_get_sc_object $P5069, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5068, $P5069
  fallback371:
    set $P5067, $P5068[0]
    unless_null $P5067, fallback372
    nqp_get_sc_object $P5070, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5067, $P5070
  fallback372:
    $P5071 = $P5067."value"()
    set $S5008, $P5071
    iseq $I5014, $S5008, "!INTERPOLATE"
    box $P5073, $I5014
    set $P5072, $P5073
  if129_end360:
    set $P5084, $P5072
    unless $P5072 goto if128_end358 
.annotate 'line', 170
    nqp_get_sc_object $P5077, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 0
    nqp_get_package_through_who $P5076, $P5077, "QAST"
    get_who $P5075, $P5076
    set $P5074, $P5075["Var"]
    unless_null $P5074, fallback373
    nqp_get_sc_object $P5078, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5074, $P5078
  fallback373:
    set $P5080, _lex_param_1[0]
    unless_null $P5080, fallback374
    nqp_get_sc_object $P5081, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5080, $P5081
  fallback374:
    set $P5079, $P5080[1]
    unless_null $P5079, fallback375
    nqp_get_sc_object $P5082, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5079, $P5082
  fallback375:
    $P5083 = $P5074."ACCEPTS"($P5079)
    set $P5084, $P5083
  if128_end358:
    set $P5090, $P5084
    unless $P5084 goto if127_end356 
    set $P5086, _lex_param_1[0]
    unless_null $P5086, fallback376
    nqp_get_sc_object $P5087, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5086, $P5087
  fallback376:
    set $P5085, $P5086[1]
    unless_null $P5085, fallback377
    nqp_get_sc_object $P5088, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5085, $P5088
  fallback377:
    $P5089 = $P5085."scope"()
    set $S5009, $P5089
    iseq $I5015, $S5009, "lexical"
    box $P5091, $I5015
    set $P5090, $P5091
  if127_end356:
    unless $P5090 goto if126_else353 
    nqp_decontainerize $P5092, _lex_param_0
    nqp_get_sc_object $P5093, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 3
    repr_bind_attr_int $P5092, $P5093, "$!generic", 1
.annotate 'line', 172
    nqp_decontainerize $P5094, _lex_param_0
    find_lex $P5097, "$?PACKAGE"
    get_who $P5096, $P5097
    set $P5095, $P5096["$EDGE_GENERIC_VAR"]
    unless_null $P5095, fallback378
    nqp_get_sc_object $P5098, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5095, $P5098
  fallback378:
    set $P5100, _lex_param_1[0]
    unless_null $P5100, fallback379
    nqp_get_sc_object $P5101, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5100, $P5101
  fallback379:
    set $P5099, $P5100[1]
    unless_null $P5099, fallback380
    nqp_get_sc_object $P5102, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5099, $P5102
  fallback380:
    $P5103 = $P5099."name"()
    $P5104 = $P5094."addedge"(_lex_param_2, _lex_param_3, $P5095, $P5103)
    set $P5124, $P5104
    goto if126_end354
  if126_else353:
.annotate 'line', 174
    set $S5010, $P101
    iseq $I5016, $S5010, "capture"
    box $P5108, $I5016
    set $P5107, $P5108
    unless $I5016 goto if134_end384 
    set $P5105, _lex_param_1[1]
    unless_null $P5105, fallback385
    nqp_get_sc_object $P5106, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5105, $P5106
  fallback385:
    set $P5107, $P5105
  if134_end384:
    unless $P5107 goto if133_else381 
.annotate 'line', 176
    nqp_decontainerize $P5109, _lex_param_0
    set $P5110, _lex_param_1[1]
    unless_null $P5110, fallback386
    nqp_get_sc_object $P5111, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5110, $P5111
  fallback386:
    $P5112 = $P5109."regex_nfa"($P5110, _lex_param_2, _lex_param_3)
    set $P5123, $P5112
    goto if133_end382
  if133_else381:
.annotate 'line', 177
    nqp_decontainerize $P5113, _lex_param_0
    find_lex $P5116, "$?PACKAGE"
    get_who $P5115, $P5116
    set $P5114, $P5115["$EDGE_SUBRULE"]
    unless_null $P5114, fallback387
    nqp_get_sc_object $P5117, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5114, $P5117
  fallback387:
    set $P5119, _lex_param_1[0]
    unless_null $P5119, fallback388
    nqp_get_sc_object $P5120, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5119, $P5120
  fallback388:
    set $P5118, $P5119[0]
    unless_null $P5118, fallback389
    nqp_get_sc_object $P5121, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5118, $P5121
  fallback389:
    $P5122 = $P5113."addedge"(_lex_param_2, _lex_param_3, $P5114, $P5118)
    set $P5123, $P5122
  if133_end382:
    set $P5124, $P5123
  if126_end354:
    set $P5125, $P5124
  if124_end349:
    set $P5126, $P5125
  if119_end330:
    set $P5127, $P5126
  if117_end323:
    .return ($P5127) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_117_1351021530.153") :anon :lex :outer("cuid_15_1351021530.153")
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
    unless_null $P5008, fallback326
    nqp_get_sc_object $P5010, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5008, $P5010
  fallback326:
    set $P5007, $P5008[1]
    unless_null $P5007, fallback327
    nqp_get_sc_object $P5011, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5007, $P5011
  fallback327:
    set $P5006, $P5007["orig_qast"]
    unless_null $P5006, fallback328
    nqp_get_sc_object $P5012, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5006, $P5012
  fallback328:
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
.sub "" :subid("cuid_118_1351021530.153") :anon :lex :outer("cuid_15_1351021530.153")
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
    unless_null $P5006, fallback352
    nqp_get_sc_object $P5009, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5006, $P5009
  fallback352:
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
.sub "quant" :subid("cuid_16_1351021530.153") :anon :lex :outer("cuid_28_1351021530.153")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 181
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param int _lex_param_2 
    .param int _lex_param_3 
    .const 'Sub' $P5025 = 'cuid_120_1351021530.153' 
    capture_lex $P5025 
    .const 'Sub' $P5025 = 'cuid_122_1351021530.153' 
    capture_lex $P5025 
    .const 'Sub' $P5025 = 'cuid_123_1351021530.153' 
    capture_lex $P5025 
    .const 'Sub' $P5025 = 'cuid_124_1351021530.153' 
    capture_lex $P5025 
    .const 'Sub' $P5025 = 'cuid_125_1351021530.153' 
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
    set_label $P101, lexotic_390
    .lex "RETURN", $P101
    set $N5002, 0
.annotate 'line', 182
    $P5002 = _lex_param_1."min"()
    set $P5001, $P5002
    defined $I5001, $P5001
    if $I5001, defor392
    box $P5003, 0
    set $P5001, $P5003
  defor392:
    set $N5003, $P5001
    add $N5001, $N5002, $N5003
    set $I5002, $N5001
    set $I101, $I5002
    set $N5005, 0
.annotate 'line', 183
    $P5005 = _lex_param_1."max"()
    set $P5004, $P5005
    defined $I5003, $P5004
    if $I5003, defor393
    box $P5006, -1
    set $P5004, $P5006
  defor393:
    set $N5006, $P5004
    add $N5004, $N5005, $N5006
    set $I5004, $N5004
    set $I102, $I5004
    set $N5007, $I102
    set $N5008, 1
    isgt $I5005, $N5007, $N5008
    set $I5007, $I5005
    if $I5005 goto unless136_end397 
    set $N5009, $I101
    set $N5010, 1
    isgt $I5006, $N5009, $N5010
    set $I5007, $I5006
  unless136_end397:
    unless $I5007 goto if135_end395 
    .const 'Sub' $P5007 = 'cuid_120_1351021530.153' 
    capture_lex $P5007
    $P5008 = $P5007()
  if135_end395:
    set $N5011, $I102
    set $N5012, -1
    iseq $I5008, $N5011, $N5012
    unless $I5008 goto if148_else433 
.annotate 'line', 216
    set $N5013, $I101
    set $N5014, 0
    iseq $I5009, $N5013, $N5014
    unless $I5009 goto if149_else435 
.annotate 'line', 217
    set $P5009, _lex_param_1[1]
    unless_null $P5009, fallback439
    nqp_get_sc_object $P5010, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5009, $P5010
  fallback439:
    defined $I5010, $P5009
    unless $I5010 goto if150_else437 
    .const 'Sub' $P5011 = 'cuid_122_1351021530.153' 
    capture_lex $P5011
    $P5012 = $P5011()
    set $P5015, $P5012
    goto if150_end438
  if150_else437:
    .const 'Sub' $P5013 = 'cuid_123_1351021530.153' 
    capture_lex $P5013
    $P5014 = $P5013()
    set $P5015, $P5014
  if150_end438:
    goto if149_end436
  if149_else435:
    .const 'Sub' $P5016 = 'cuid_124_1351021530.153' 
    capture_lex $P5016
    $P5017 = $P5016()
  if149_end436:
    box $P5024, _lex_param_3
    set $P5023, $P5024
    goto if148_end434
  if148_else433:
    set $N5015, $I101
    set $N5016, 0
    iseq $I5011, $N5015, $N5016
    set $I5013, $I5011
    unless $I5011 goto if159_end470 
    set $N5017, $I102
    set $N5018, 1
    iseq $I5012, $N5017, $N5018
    set $I5013, $I5012
  if159_end470:
    unless $I5013 goto if158_else467 
    .const 'Sub' $P5018 = 'cuid_125_1351021530.153' 
    capture_lex $P5018
    $P5019 = $P5018()
    set $P5022, $P5019
    goto if158_end468
  if158_else467:
.annotate 'line', 254
.annotate 'line', 255
    nqp_decontainerize $P5020, _lex_param_0
    $P5021 = $P5020."fate"(_lex_param_1, _lex_param_2, _lex_param_3)
    set $P5022, $P5021
  if158_end468:
    set $P5023, $P5022
  if148_end434:
    goto lexotic_391
  lexotic_390:
    .get_results ($P5023)
  lexotic_391:
    .return ($P5023) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_120_1351021530.153") :anon :lex :outer("cuid_16_1351021530.153")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 185
    .const 'Sub' $P5028 = 'cuid_119_1351021530.153' 
    capture_lex $P5028 
    .const 'Sub' $P5028 = 'cuid_121_1351021530.153' 
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
    unless_null $P5001, fallback398
    nqp_get_sc_object $P5003, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5001, $P5003
  fallback398:
    defined $I5001, $P5001
    set $I103, $I5001
  while137_test399:
    set $N5001, $I101
    find_lex $I5003, "$max"
    set $N5002, $I5003
    islt $I5002, $N5001, $N5002
    set $I5006, $I5002
    if $I5002 goto unless138_end405 
    set $N5003, $I101
    find_lex $I5005, "$min"
    set $N5004, $I5005
    islt $I5004, $N5003, $N5004
    set $I5006, $I5004
  unless138_end405:
    set $I5016, $I5006
    unless $I5006 goto while137_done403 
  while137_redo401:
.annotate 'line', 189
    set $N5005, $I101
    find_lex $I5008, "$min"
    set $N5006, $I5008
    isge $I5007, $N5005, $N5006
    unless $I5007 goto if139_end407 
    .const 'Sub' $P5004 = 'cuid_119_1351021530.153' 
    capture_lex $P5004
    $P5005 = $P5004()
  if139_end407:
    set $I5010, $I103
    unless $I103 goto if142_end414 
    set $N5007, $I101
    set $N5008, 0
    isgt $I5009, $N5007, $N5008
    set $I5010, $I5009
  if142_end414:
    unless $I5010 goto if141_end412 
.annotate 'line', 194
.annotate 'line', 195
    find_lex $P5007, "self"
    nqp_decontainerize $P5006, $P5007
    find_lex $P5009, "$node"
    set $P5008, $P5009[1]
    unless_null $P5008, fallback415
    nqp_get_sc_object $P5010, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5008, $P5010
  fallback415:
    find_lex $I5011, "$from"
    $P5011 = $P5006."regex_nfa"($P5008, $I5011, -1)
    set $I5012, $P5011
    store_lex "$from", $I5012
  if141_end412:
.annotate 'line', 197
    find_lex $P5013, "self"
    nqp_decontainerize $P5012, $P5013
    find_lex $P5015, "$node"
    set $P5014, $P5015[0]
    unless_null $P5014, fallback416
    nqp_get_sc_object $P5016, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5014, $P5016
  fallback416:
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
    goto while137_test399 
  while137_done403:
.annotate 'line', 200
    find_lex $P5019, "self"
    nqp_decontainerize $P5018, $P5019
    find_lex $I5017, "$from"
    find_lex $I5018, "$to"
    find_lex $P5022, "$?PACKAGE"
    get_who $P5021, $P5022
    set $P5020, $P5021["$EDGE_EPSILON"]
    unless_null $P5020, fallback417
    nqp_get_sc_object $P5023, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5020, $P5023
  fallback417:
    $P5018."addedge"($I5017, $I5018, $P5020, 0)
    find_lex $I5020, "$max"
    set $N5012, $I5020
    set $N5013, -1
    iseq $I5019, $N5012, $N5013
    unless $I5019 goto if143_end419 
    .const 'Sub' $P5024 = 'cuid_121_1351021530.153' 
    capture_lex $P5024
    $P5025 = $P5024()
  if143_end419:
    find_lex $I5022, "$to"
    set $N5014, $I5022
    set $N5015, 0
    islt $I5021, $N5014, $N5015
    set $I5024, $I5021
    unless $I5021 goto if147_end432 
    set $N5016, $I102
    set $N5017, 0
    isgt $I5023, $N5016, $N5017
    set $I5024, $I5023
  if147_end432:
    unless $I5024 goto if146_end430 
    store_lex "$to", $I102
  if146_end430:
    find_lex $I5025, "$to"
    find_lex $P5026, "RETURN"
    $P5027 = $P5026($I5025)
    .return ($P5027) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_119_1351021530.153") :anon :lex :outer("cuid_120_1351021530.153")
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
    unless_null $P5003, fallback408
    nqp_get_sc_object $P5006, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5003, $P5006
  fallback408:
    $P5007 = $P5001."addedge"($I5001, $I5002, $P5003, 0)
    set $I5003, $P5007
    set $I101, $I5003
    find_lex $I5004, "$st"
    set $I5005, $I5004
    if $I5004 goto unless140_end410 
    set $I5005, $I101
  unless140_end410:
    store_lex "$st", $I5005
    .return ($I5005) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_121_1351021530.153") :anon :lex :outer("cuid_120_1351021530.153")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 201
    .lex "$start", $I101 
    .lex "$looper", $P101 
    set $I101, 0
    nqp_get_sc_object $P5001, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
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
    unless_null $P5007, fallback420
    nqp_get_sc_object $P5010, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5007, $P5010
  fallback420:
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
    unless_null $P5016, fallback421
    nqp_get_sc_object $P5019, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5016, $P5019
  fallback421:
    $P5014."addedge"($P101, $I5003, $P5016, 0)
.annotate 'line', 207
    find_lex $P5021, "self"
    nqp_decontainerize $P5020, $P5021
    find_lex $I5004, "$from"
    find_lex $P5024, "$?PACKAGE"
    get_who $P5023, $P5024
    set $P5022, $P5023["$EDGE_EPSILON"]
    unless_null $P5022, fallback422
    nqp_get_sc_object $P5025, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5022, $P5025
  fallback422:
    $P5020."addedge"($P101, $I5004, $P5022, 0)
    find_lex $I5005, "$has_sep"
    set $I5008, $I5005
    unless $I5005 goto if145_end426 
    find_lex $I5007, "$count"
    set $N5001, $I5007
    set $N5002, 0
    isgt $I5006, $N5001, $N5002
    set $I5008, $I5006
  if145_end426:
    unless $I5008 goto if144_end424 
.annotate 'line', 208
.annotate 'line', 209
    find_lex $P5027, "self"
    nqp_decontainerize $P5026, $P5027
    find_lex $P5029, "$node"
    set $P5028, $P5029[1]
    unless_null $P5028, fallback427
    nqp_get_sc_object $P5030, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5028, $P5030
  fallback427:
    find_lex $I5009, "$from"
    $P5031 = $P5026."regex_nfa"($P5028, $I5009, -1)
    set $I5010, $P5031
    store_lex "$from", $I5010
  if144_end424:
.annotate 'line', 211
    find_lex $P5033, "self"
    nqp_decontainerize $P5032, $P5033
    find_lex $P5035, "$node"
    set $P5034, $P5035[0]
    unless_null $P5034, fallback428
    nqp_get_sc_object $P5036, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5034, $P5036
  fallback428:
    find_lex $I5011, "$from"
    $P5037 = $P5032."regex_nfa"($P5034, $I5011, $P101)
    .return ($P5037) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_122_1351021530.153") :anon :lex :outer("cuid_16_1351021530.153")
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
    unless_null $P5006, fallback440
    nqp_get_sc_object $P5009, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5006, $P5009
  fallback440:
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
    unless_null $P5015, fallback441
    nqp_get_sc_object $P5017, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5015, $P5017
  fallback441:
    $P5018 = $P5013."regex_nfa"($P5015, $I101, $I102)
    set $I5004, $P5018
    set $I103, $I5004
.annotate 'line', 223
    find_lex $P5020, "self"
    nqp_decontainerize $P5019, $P5020
    find_lex $P5022, "$node"
    set $P5021, $P5022[1]
    unless_null $P5021, fallback442
    nqp_get_sc_object $P5023, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5021, $P5023
  fallback442:
    $P5019."regex_nfa"($P5021, $I102, $I101)
.annotate 'line', 224
    find_lex $P5025, "self"
    nqp_decontainerize $P5024, $P5025
    find_lex $I5005, "$to"
    find_lex $P5028, "$?PACKAGE"
    get_who $P5027, $P5028
    set $P5026, $P5027["$EDGE_EPSILON"]
    unless_null $P5026, fallback443
    nqp_get_sc_object $P5029, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5026, $P5029
  fallback443:
    $P5024."addedge"($I102, $I5005, $P5026, 0)
.annotate 'line', 225
    find_lex $P5031, "self"
    nqp_decontainerize $P5030, $P5031
    find_lex $I5006, "$from"
    find_lex $I5007, "$to"
    find_lex $P5034, "$?PACKAGE"
    get_who $P5033, $P5034
    set $P5032, $P5033["$EDGE_EPSILON"]
    unless_null $P5032, fallback444
    nqp_get_sc_object $P5035, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5032, $P5035
  fallback444:
    $P5036 = $P5030."addedge"($I5006, $I5007, $P5032, 0)
    set $I5008, $P5036
    set $I103, $I5008
    find_lex $I5010, "$to"
    set $N5001, $I5010
    set $N5002, 0
    islt $I5009, $N5001, $N5002
    set $I5012, $I5009
    unless $I5009 goto if152_end448 
    set $N5003, $I103
    set $N5004, 0
    isgt $I5011, $N5003, $N5004
    set $I5012, $I5011
  if152_end448:
    set $I5013, $I5012
    unless $I5012 goto if151_end446 
    store_lex "$to", $I103
    set $I5013, $I103
  if151_end446:
    .return ($I5013) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_123_1351021530.153") :anon :lex :outer("cuid_16_1351021530.153")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 228
    .lex "$st", $I101 
    set $I101, 0
.annotate 'line', 229
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    find_lex $P5004, "$node"
    set $P5003, $P5004[0]
    unless_null $P5003, fallback449
    nqp_get_sc_object $P5005, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5003, $P5005
  fallback449:
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
    unless_null $P5008, fallback450
    nqp_get_sc_object $P5011, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5008, $P5011
  fallback450:
    $P5012 = $P5006."addedge"($I5003, $I5004, $P5008, 0)
    set $I5005, $P5012
    set $I101, $I5005
    find_lex $I5007, "$to"
    set $N5001, $I5007
    set $N5002, 0
    islt $I5006, $N5001, $N5002
    set $I5009, $I5006
    unless $I5006 goto if154_end454 
    set $N5003, $I101
    set $N5004, 0
    isgt $I5008, $N5003, $N5004
    set $I5009, $I5008
  if154_end454:
    set $I5010, $I5009
    unless $I5009 goto if153_end452 
    store_lex "$to", $I101
    set $I5010, $I101
  if153_end452:
    .return ($I5010) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_124_1351021530.153") :anon :lex :outer("cuid_16_1351021530.153")
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
    unless_null $P5006, fallback455
    nqp_get_sc_object $P5009, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5006, $P5009
  fallback455:
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
    unless_null $P5015, fallback456
    nqp_get_sc_object $P5017, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5015, $P5017
  fallback456:
    $P5018 = $P5013."regex_nfa"($P5015, $I101, $I102)
    set $I5004, $P5018
    set $I103, $I5004
    find_lex $P5020, "$node"
    set $P5019, $P5020[1]
    unless_null $P5019, fallback459
    nqp_get_sc_object $P5021, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5019, $P5021
  fallback459:
    defined $I5005, $P5019
    unless $I5005 goto if155_else457 
.annotate 'line', 238
.annotate 'line', 239
    find_lex $P5023, "self"
    nqp_decontainerize $P5022, $P5023
    find_lex $P5025, "$node"
    set $P5024, $P5025[1]
    unless_null $P5024, fallback460
    nqp_get_sc_object $P5026, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5024, $P5026
  fallback460:
    $P5027 = $P5022."regex_nfa"($P5024, $I102, $I101)
    goto if155_end458
  if155_else457:
.annotate 'line', 241
.annotate 'line', 242
    find_lex $P5029, "self"
    nqp_decontainerize $P5028, $P5029
    find_lex $P5032, "$?PACKAGE"
    get_who $P5031, $P5032
    set $P5030, $P5031["$EDGE_EPSILON"]
    unless_null $P5030, fallback461
    nqp_get_sc_object $P5033, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5030, $P5033
  fallback461:
    $P5034 = $P5028."addedge"($I102, $I101, $P5030, 0)
  if155_end458:
.annotate 'line', 244
    find_lex $P5036, "self"
    nqp_decontainerize $P5035, $P5036
    find_lex $I5006, "$to"
    find_lex $P5039, "$?PACKAGE"
    get_who $P5038, $P5039
    set $P5037, $P5038["$EDGE_EPSILON"]
    unless_null $P5037, fallback462
    nqp_get_sc_object $P5040, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5037, $P5040
  fallback462:
    $P5035."addedge"($I102, $I5006, $P5037, 0)
    find_lex $I5008, "$to"
    set $N5001, $I5008
    set $N5002, 0
    islt $I5007, $N5001, $N5002
    set $I5010, $I5007
    unless $I5007 goto if157_end466 
    set $N5003, $I103
    set $N5004, 0
    isgt $I5009, $N5003, $N5004
    set $I5010, $I5009
  if157_end466:
    set $I5011, $I5010
    unless $I5010 goto if156_end464 
    store_lex "$to", $I103
    set $I5011, $I103
  if156_end464:
    .return ($I5011) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_125_1351021530.153") :anon :lex :outer("cuid_16_1351021530.153")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 248
    .lex "$st", $I101 
    set $I101, 0
.annotate 'line', 249
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    find_lex $P5004, "$node"
    set $P5003, $P5004[0]
    unless_null $P5003, fallback471
    nqp_get_sc_object $P5005, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5003, $P5005
  fallback471:
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
    unless $I5004 goto if161_end475 
    set $N5003, $I101
    set $N5004, 0
    isgt $I5006, $N5003, $N5004
    set $I5007, $I5006
  if161_end475:
    unless $I5007 goto if160_end473 
    store_lex "$to", $I101
  if160_end473:
.annotate 'line', 251
    find_lex $P5008, "self"
    nqp_decontainerize $P5007, $P5008
    find_lex $I5008, "$from"
    find_lex $I5009, "$to"
    find_lex $P5011, "$?PACKAGE"
    get_who $P5010, $P5011
    set $P5009, $P5010["$EDGE_EPSILON"]
    unless_null $P5009, fallback476
    nqp_get_sc_object $P5012, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5009, $P5012
  fallback476:
    $P5013 = $P5007."addedge"($I5008, $I5009, $P5009, 0)
    set $I5010, $P5013
    set $I101, $I5010
    find_lex $I5012, "$to"
    set $N5005, $I5012
    set $N5006, 0
    islt $I5011, $N5005, $N5006
    set $I5014, $I5011
    unless $I5011 goto if163_end480 
    set $N5007, $I101
    set $N5008, 0
    isgt $I5013, $N5007, $N5008
    set $I5014, $I5013
  if163_end480:
    unless $I5014 goto if162_end478 
    store_lex "$to", $I101
  if162_end478:
    find_lex $I5015, "$to"
    .return ($I5015) 
.end
.HLL "nqp"
.namespace []
.sub "qastnode" :subid("cuid_17_1351021530.153") :anon :lex :outer("cuid_28_1351021530.153")
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
    if $I5001 goto unless165_end484 
    $P5002 = _lex_param_1."subtype"()
    set $S5002, $P5002
    iseq $I5002, $S5002, "declarative"
    set $I5003, $I5002
  unless165_end484:
    unless $I5003 goto if164_else481 
.annotate 'line', 261
    nqp_decontainerize $P5003, _lex_param_0
    find_lex $P5006, "$?PACKAGE"
    get_who $P5005, $P5006
    set $P5004, $P5005["$EDGE_EPSILON"]
    unless_null $P5004, fallback485
    nqp_get_sc_object $P5007, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5004, $P5007
  fallback485:
    $P5008 = $P5003."addedge"(_lex_param_2, _lex_param_3, $P5004, 0)
    set $P5011, $P5008
    goto if164_end482
  if164_else481:
.annotate 'line', 262
    nqp_decontainerize $P5009, _lex_param_0
    $P5010 = $P5009."fate"(_lex_param_1, _lex_param_2, _lex_param_3)
    set $P5011, $P5010
  if164_end482:
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "subcapture" :subid("cuid_18_1351021530.153") :anon :lex :outer("cuid_28_1351021530.153")
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
    unless_null $P5002, fallback486
    nqp_get_sc_object $P5003, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5002, $P5003
  fallback486:
    $P5004 = $P5001."regex_nfa"($P5002, _lex_param_2, _lex_param_3)
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "save" :subid("cuid_19_1351021530.153") :anon :lex :outer("cuid_28_1351021530.153")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 269
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("non_empty") :optional 
    .param int haz_param_10 :opt_flag 
    if haz_param_10, default494
    nqp_get_sc_object $P5015, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set _lex_param_1, $P5015
  default494:
    .lex "self", _lex_param_0 
    .lex "$non_empty", _lex_param_1 
    root_new $P101, ['parrot';'Continuation']
    set_label $P101, lexotic_487
    .lex "RETURN", $P101
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 3
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!edges"
    if $P5003 goto unless166_end490 
.annotate 'line', 270
    if _lex_param_1 goto unless167_end492 
    find_lex $P5004, "RETURN"
    $P5005 = $P5004(0)
  unless167_end492:
.annotate 'line', 272
    nqp_decontainerize $P5006, _lex_param_0
    find_lex $P5009, "$?PACKAGE"
    get_who $P5008, $P5009
    set $P5007, $P5008["$EDGE_FATE"]
    unless_null $P5007, fallback493
    nqp_get_sc_object $P5010, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5007, $P5010
  fallback493:
    $P5011 = $P5006."addedge"(1, 0, $P5007, 0, 1 :named("newedge"))
  unless166_end490:
    nqp_decontainerize $P5012, _lex_param_0
    nqp_get_sc_object $P5013, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 3
    repr_get_attr_obj $P5014, $P5012, $P5013, "$!states"
    goto lexotic_488
  lexotic_487:
    .get_results ($P5014)
  lexotic_488:
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "qast" :subid("cuid_20_1351021530.153") :anon :lex :outer("cuid_28_1351021530.153")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 277
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("non_empty") :optional 
    .param int haz_param_11 :opt_flag 
    .const 'Sub' $P5028 = 'cuid_129_1351021530.153' 
    capture_lex $P5028 
    if haz_param_11, default521
    nqp_get_sc_object $P5027, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set _lex_param_1, $P5027
  default521:
    .lex "$past", $P101 
    .lex "self", _lex_param_0 
    .lex "$non_empty", _lex_param_1 
    nqp_get_sc_object $P5001, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P101, $P5001
    root_new $P102, ['parrot';'Continuation']
    set_label $P102, lexotic_495
    .lex "RETURN", $P102
    nqp_decontainerize $P5002, _lex_param_0
    nqp_get_sc_object $P5003, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 3
    repr_get_attr_obj $P5004, $P5002, $P5003, "$!edges"
    if $P5004 goto unless168_end498 
.annotate 'line', 278
    if _lex_param_1 goto unless169_end500 
    find_lex $P5005, "RETURN"
    $P5006 = $P5005(0)
  unless169_end500:
.annotate 'line', 280
    nqp_decontainerize $P5007, _lex_param_0
    find_lex $P5010, "$?PACKAGE"
    get_who $P5009, $P5010
    set $P5008, $P5009["$EDGE_FATE"]
    unless_null $P5008, fallback501
    nqp_get_sc_object $P5011, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5008, $P5011
  fallback501:
    $P5012 = $P5007."addedge"(1, 0, $P5008, 0, 1 :named("newedge"))
  unless168_end498:
.annotate 'line', 282
    nqp_get_sc_object $P5016, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 0
    nqp_get_package_through_who $P5015, $P5016, "QAST"
    get_who $P5014, $P5015
    set $P5013, $P5014["Op"]
    unless_null $P5013, fallback502
    nqp_get_sc_object $P5017, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5013, $P5017
  fallback502:
    $P5018 = $P5013."new"("list" :named("op"))
    set $P101, $P5018
    nqp_decontainerize $P5022, _lex_param_0
    nqp_get_sc_object $P5023, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 3
    repr_get_attr_obj $P5024, $P5022, $P5023, "$!states"
    set $P5019, $P5024
    iter $P5021, $P5024
  for_next518:
    unless $P5021, for_done520
    shift $P5026, $P5021
  for_redo519:
    .const 'Sub' $P5025 = 'cuid_129_1351021530.153' 
    capture_lex $P5025
    $P5019 = $P5025($P5026)
    goto for_next518
  for_done520:
    goto lexotic_496
  lexotic_495:
    .get_results ($P101)
  lexotic_496:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_129_1351021530.153") :anon :lex :outer("cuid_20_1351021530.153")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 283
    .param pmc _lex_param_0 
    .const 'Sub' $P5015 = 'cuid_128_1351021530.153' 
    capture_lex $P5015 
    .lex "$list", $P101 
    .lex "@values", _lex_param_0 
    nqp_get_sc_object $P5001, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P101, $P5001
.annotate 'line', 284
    nqp_get_sc_object $P5005, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 0
    nqp_get_package_through_who $P5004, $P5005, "QAST"
    get_who $P5003, $P5004
    set $P5002, $P5003["Op"]
    unless_null $P5002, fallback503
    nqp_get_sc_object $P5006, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5002, $P5006
  fallback503:
    $P5007 = $P5002."new"("list" :named("op"))
    set $P101, $P5007
    set $P5008, _lex_param_0
    iter $P5010, _lex_param_0
  for_next515:
    unless $P5010, for_done517
    shift $P5012, $P5010
  for_redo516:
    .const 'Sub' $P5011 = 'cuid_128_1351021530.153' 
    capture_lex $P5011
    $P5008 = $P5011($P5012)
    goto for_next515
  for_done517:
.annotate 'line', 300
    find_lex $P5013, "$past"
    $P5014 = $P5013."push"($P101)
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_128_1351021530.153") :anon :lex :outer("cuid_129_1351021530.153")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 285
    .param pmc _lex_param_0 
    .const 'Sub' $P5021 = 'cuid_127_1351021530.153' 
    capture_lex $P5021 
    .lex "$_", _lex_param_0 
    nqp_islist $I5001, _lex_param_0
    unless $I5001 goto if170_else504 
    .const 'Sub' $P5001 = 'cuid_127_1351021530.153' 
    capture_lex $P5001
    $P5002 = $P5001()
    set $P5020, $P5002
    goto if170_end505
  if170_else504:
    set $N5001, _lex_param_0
    set $S5001, $N5001
    set $S5002, _lex_param_0
    iseq $I5002, $S5001, $S5002
    unless $I5002 goto if171_else511 
.annotate 'line', 293
.annotate 'line', 294
    find_lex $P5003, "$list"
    nqp_get_sc_object $P5007, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 0
    nqp_get_package_through_who $P5006, $P5007, "QAST"
    get_who $P5005, $P5006
    set $P5004, $P5005["IVal"]
    unless_null $P5004, fallback513
    nqp_get_sc_object $P5008, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5004, $P5008
  fallback513:
    $P5009 = $P5004."new"(_lex_param_0 :named("value"))
    $P5010 = $P5003."push"($P5009)
    set $P5019, $P5010
    goto if171_end512
  if171_else511:
.annotate 'line', 296
.annotate 'line', 297
    find_lex $P5011, "$list"
    nqp_get_sc_object $P5015, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 0
    nqp_get_package_through_who $P5014, $P5015, "QAST"
    get_who $P5013, $P5014
    set $P5012, $P5013["SVal"]
    unless_null $P5012, fallback514
    nqp_get_sc_object $P5016, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5012, $P5016
  fallback514:
    $P5017 = $P5012."new"(_lex_param_0 :named("value"))
    $P5018 = $P5011."push"($P5017)
    set $P5019, $P5018
  if171_end512:
    set $P5020, $P5019
  if170_end505:
    .return ($P5020) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_127_1351021530.153") :anon :lex :outer("cuid_128_1351021530.153")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 286
    .const 'Sub' $P5016 = 'cuid_126_1351021530.153' 
    capture_lex $P5016 
    .lex "$arglist", $P101 
    nqp_get_sc_object $P5001, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P101, $P5001
.annotate 'line', 287
    nqp_get_sc_object $P5005, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 0
    nqp_get_package_through_who $P5004, $P5005, "QAST"
    get_who $P5003, $P5004
    set $P5002, $P5003["Op"]
    unless_null $P5002, fallback506
    nqp_get_sc_object $P5006, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5002, $P5006
  fallback506:
    $P5007 = $P5002."new"("list_i" :named("op"))
    set $P101, $P5007
    find_lex $P5011, "$_"
    set $P5008, $P5011
    iter $P5010, $P5011
  for_next508:
    unless $P5010, for_done510
    shift $P5013, $P5010
  for_redo509:
    .const 'Sub' $P5012 = 'cuid_126_1351021530.153' 
    capture_lex $P5012
    $P5008 = $P5012($P5013)
    goto for_next508
  for_done510:
.annotate 'line', 291
    find_lex $P5014, "$list"
    $P5015 = $P5014."push"($P101)
    .return ($P5015) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_126_1351021530.153") :anon :lex :outer("cuid_127_1351021530.153")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 288
    .param pmc _lex_param_0 
    .lex "$i", _lex_param_0 
.annotate 'line', 289
    find_lex $P5001, "$arglist"
    nqp_get_sc_object $P5005, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 0
    nqp_get_package_through_who $P5004, $P5005, "QAST"
    get_who $P5003, $P5004
    set $P5002, $P5003["IVal"]
    unless_null $P5002, fallback507
    nqp_get_sc_object $P5006, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5002, $P5006
  fallback507:
    $P5007 = $P5002."new"(_lex_param_0 :named("value"))
    $P5008 = $P5001."push"($P5007)
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "mergesubrule" :subid("cuid_21_1351021530.153") :anon :lex :outer("cuid_28_1351021530.153")
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
    .const 'Sub' $P5014 = 'cuid_130_1351021530.153' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_132_1351021530.153' 
    capture_lex $P5014 
    if haz_param_12, default544
    new $P5013, 'Hash'
    set _lex_param_6, $P5013
  default544:
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
    unless $I5001 goto if172_end523 
.annotate 'line', 309
    exists $I5003, $P101[_lex_param_5]
    not $I5002, $I5003
    unless $I5002 goto if173_end525 
    .const 'Sub' $P5004 = 'cuid_130_1351021530.153' 
    capture_lex $P5004
    $P5005 = $P5004()
  if173_end525:
    isfalse $I5004, $P102
    set $I5007, $I5004
    unless $I5004 goto if177_end533 
    exists $I5006, $P101[_lex_param_5]
    not $I5005, $I5006
    set $I5007, $I5005
  if177_end533:
    box $P5009, $I5007
    set $P5008, $P5009
    unless $I5007 goto if176_end531 
    .const 'Sub' $P5006 = 'cuid_132_1351021530.153' 
    capture_lex $P5006
    $P5007 = $P5006()
    set $P5008, $P5007
  if176_end531:
  if172_end523:
    box $P5010, 1
    set $P101[_lex_param_5], $P5010
.annotate 'line', 331
    nqp_decontainerize $P5011, _lex_param_0
    $P5012 = $P5011."mergesubstates"(_lex_param_1, _lex_param_2, _lex_param_3, $P102, _lex_param_4, $P101)
    .return ($P5012) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_130_1351021530.153") :anon :lex :outer("cuid_21_1351021530.153")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 310
    .lex "$meth", $P101 
    nqp_get_sc_object $P5001, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P101, $P5001
.annotate 'line', 311
    find_lex $P5003, "$cursor"
    get_how $P5002, $P5003
    find_lex $P5004, "$cursor"
    find_lex $S5001, "$name"
    $P5005 = $P5002."find_method"($P5004, $S5001, 1 :named("no_trace"))
    set $P101, $P5005
    can $I5001, $P101, "NFA"
    unless $I5001 goto if174_end527 
.annotate 'line', 312
    $P5006 = $P101."NFA"()
    store_lex "@substates", $P5006
  if174_end527:
    find_lex $P5007, "@substates"
    isnull $I5002, $P5007
    box $P5010, $I5002
    set $P5009, $P5010
    unless $I5002 goto if175_end529 
    new $P5008, 'ResizablePMCArray'
    store_lex "@substates", $P5008
    set $P5009, $P5008
  if175_end529:
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_132_1351021530.153") :anon :lex :outer("cuid_21_1351021530.153")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 315
    .const 'Sub' $P5025 = 'cuid_131_1351021530.153' 
    capture_lex $P5025 
    .const 'Sub' $P5025 = 'cuid_133_1351021530.153' 
    capture_lex $P5025 
    .lex "%protorx", $P101 
    .lex "$nfa", $P102 
    .lex "$gotmatch", $I101 
    new $P5001, 'Hash'
    set $P101, $P5001
    nqp_get_sc_object $P5002, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P102, $P5002
    set $I101, 0
.annotate 'line', 318
    find_lex $P5004, "$cursor"
    get_how $P5003, $P5004
    find_lex $P5005, "$cursor"
    .const 'Sub' $P5007 = 'cuid_131_1351021530.153' 
    capture_lex $P5007
    newclosure $P5006, $P5007
    $P5008 = $P5003."cache"($P5005, "!protoregex_table", $P5006)
    set $P101, $P5008
.annotate 'line', 319
    nqp_get_sc_object $P5012, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 0
    nqp_get_package_through_who $P5011, $P5012, "QRegex"
    get_who $P5010, $P5011
    set $P5009, $P5010["NFA"]
    unless_null $P5009, fallback534
    nqp_get_sc_object $P5013, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5009, $P5013
  fallback534:
    $P5014 = $P5009."new"()
    set $P102, $P5014
    set $I101, 0
    find_lex $S5001, "$name"
    exists $I5001, $P101[$S5001]
    unless $I5001 goto if178_end536 
.annotate 'line', 321
    find_lex $S5002, "$name"
    set $P5018, $P101[$S5002]
    unless_null $P5018, fallback537
    nqp_get_sc_object $P5019, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5018, $P5019
  fallback537:
    set $P5015, $P5018
    iter $P5017, $P5018
  for_next539:
    unless $P5017, for_done541
    shift $P5021, $P5017
  for_redo540:
    .const 'Sub' $P5020 = 'cuid_133_1351021530.153' 
    capture_lex $P5020
    $P5015 = $P5020($P5021)
    goto for_next539
  for_done541:
  if178_end536:
    box $P5024, $I101
    set $P5023, $P5024
    unless $I101 goto if179_end543 
.annotate 'line', 327
    $P5022 = $P102."states"()
    store_lex "@substates", $P5022
    set $P5023, $P5022
  if179_end543:
    .return ($P5023) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_131_1351021530.153") :anon :lex :outer("cuid_132_1351021530.153")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 318

    find_lex $P5001, "$cursor"
    $P5002 = $P5001."!protoregex_table"()
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_133_1351021530.153") :anon :lex :outer("cuid_132_1351021530.153")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 322
    .param pmc _lex_param_0 
    .lex "$rxname", _lex_param_0 
.annotate 'line', 323
    find_lex $P5001, "$nfa"
    find_lex $P5004, "$?PACKAGE"
    get_who $P5003, $P5004
    set $P5002, $P5003["$EDGE_SUBRULE"]
    unless_null $P5002, fallback538
    nqp_get_sc_object $P5005, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5002, $P5005
  fallback538:
    $P5001."addedge"(1, 0, $P5002, _lex_param_0)
    store_lex "$gotmatch", 1
    .return (1) 
.end
.HLL "nqp"
.namespace []
.sub "mergesubstates" :subid("cuid_22_1351021530.153") :anon :lex :outer("cuid_28_1351021530.153")
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
    .const 'Sub' $P5011 = 'cuid_135_1351021530.153' 
    capture_lex $P5011 
    if haz_param_13, default580
    new $P5010, 'Hash'
    set _lex_param_6, $P5010
  default580:
    .lex "self", _lex_param_0 
    .lex "$start", _lex_param_1 
    .lex "$to", _lex_param_2 
    .lex "$fate", _lex_param_3 
    .lex "@substates", _lex_param_4 
    .lex "$cursor", _lex_param_5 
    .lex "%seen", _lex_param_6 
    unless _lex_param_4 goto if180_else545 
    .const 'Sub' $P5001 = 'cuid_135_1351021530.153' 
    capture_lex $P5001
    $P5002 = $P5001()
    set $P5009, $P5002
    goto if180_end546
  if180_else545:
.annotate 'line', 370
.annotate 'line', 371
    nqp_decontainerize $P5003, _lex_param_0
    find_lex $P5006, "$?PACKAGE"
    get_who $P5005, $P5006
    set $P5004, $P5005["$EDGE_FATE"]
    unless_null $P5004, fallback579
    nqp_get_sc_object $P5007, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5004, $P5007
  fallback579:
    $P5008 = $P5003."addedge"(_lex_param_1, 0, $P5004, _lex_param_3)
    set $P5009, $P5008
  if180_end546:
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_135_1351021530.153") :anon :lex :outer("cuid_22_1351021530.153")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 335
    .const 'Sub' $P5051 = 'cuid_134_1351021530.153' 
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
    set_label $P5017, while181_handlers550
    push_eh $P5017
  while181_test547:
    find_lex $P5008, "@substates"
    set $P5016, $P5008
    unless $P5008 goto while181_done551 
  while181_redo549:
    find_lex $P5010, "self"
    nqp_decontainerize $P5009, $P5010
    nqp_get_sc_object $P5011, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 3
    repr_get_attr_obj $P5012, $P5009, $P5011, "$!states"
    find_lex $P5015, "@substates"
    shift $P5014, $P5015
    clone $P5013, $P5014
    push $P5012, $P5013
    set $P5016, $P5012
    goto while181_test547 
  while181_handlers550:
    .get_results ($P5017)
    pop_upto_eh $P5017
    getattribute $P5017, $P5017, 'type'
    eq $P5017, .CONTROL_LOOP_NEXT, while181_test547
    eq $P5017, .CONTROL_LOOP_REDO, while181_redo549
  while181_done551:
    pop_eh 
    find_lex $P5019, "self"
    nqp_decontainerize $P5018, $P5019
    nqp_get_sc_object $P5020, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 3
    repr_get_attr_obj $P5021, $P5018, $P5020, "$!states"
    elements $I5002, $P5021
    set $I102, $I5002
    set $I103, $I101
  while182_test552:
    set $N5001, $I103
    set $N5002, $I102
    islt $I5003, $N5001, $N5002
    box $P5025, $I5003
    set $P5024, $P5025
    unless $I5003 goto while182_done556 
  while182_redo554:
    .const 'Sub' $P5022 = 'cuid_134_1351021530.153' 
    capture_lex $P5022
    $P5023 = $P5022()
    set $P5024, $P5023
    goto while182_test552 
  while182_done556:
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
    unless_null $P5029, fallback574
    nqp_get_sc_object $P5032, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5029, $P5032
  fallback574:
    $P5026."addedge"($P5028, $N5003, $P5029, 0)
    find_lex $P5033, "$to"
    set $N5006, $P5033
    set $N5007, 0
    isgt $I5004, $N5006, $N5007
    unless $I5004 goto if186_else575 
.annotate 'line', 367
    find_lex $P5035, "self"
    nqp_decontainerize $P5034, $P5035
    find_lex $P5036, "$to"
    find_lex $P5039, "$?PACKAGE"
    get_who $P5038, $P5039
    set $P5037, $P5038["$EDGE_EPSILON"]
    unless_null $P5037, fallback577
    nqp_get_sc_object $P5040, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5037, $P5040
  fallback577:
    $P5041 = $P5034."addedge"($I101, $P5036, $P5037, 0)
    set $P5050, $P5041
    goto if186_end576
  if186_else575:
.annotate 'line', 368
    find_lex $P5043, "self"
    nqp_decontainerize $P5042, $P5043
    find_lex $P5046, "$?PACKAGE"
    get_who $P5045, $P5046
    set $P5044, $P5045["$EDGE_FATE"]
    unless_null $P5044, fallback578
    nqp_get_sc_object $P5047, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5044, $P5047
  fallback578:
    find_lex $P5048, "$fate"
    $P5049 = $P5042."addedge"($I101, 0, $P5044, $P5048)
    set $P5050, $P5049
  if186_end576:
    .return ($P5050) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_134_1351021530.153") :anon :lex :outer("cuid_135_1351021530.153")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 351
    .lex "$substate", $P101 
    .lex "$j", $I101 
    .lex "$k", $I102 
    nqp_get_sc_object $P5001, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P101, $P5001
    set $I101, 0
    set $I102, 0
    find_lex $P5004, "self"
    nqp_decontainerize $P5003, $P5004
    nqp_get_sc_object $P5005, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 3
    repr_get_attr_obj $P5006, $P5003, $P5005, "$!states"
    find_lex $I5001, "$i"
    set $P5002, $P5006[$I5001]
    unless_null $P5002, fallback557
    nqp_get_sc_object $P5007, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5002, $P5007
  fallback557:
    set $P101, $P5002
    set $I101, 0
    elements $I5002, $P101
    set $I102, $I5002
  while183_test558:
    set $N5001, $I101
    set $N5002, $I102
    islt $I5003, $N5001, $N5002
    set $I5014, $I5003
    unless $I5003 goto while183_done562 
  while183_redo560:
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
    unless_null $P5008, fallback563
    nqp_get_sc_object $P5009, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5008, $P5009
  fallback563:
    set $N5010, $P5008
    find_lex $I5006, "$substart"
    set $N5011, $I5006
    add $N5006, $N5010, $N5011
    box $P5010, $N5006
    set $P101[$I5004], $P5010
    set $P5011, $P101[$I101]
    unless_null $P5011, fallback566
    nqp_get_sc_object $P5012, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5011, $P5012
  fallback566:
    set $N5012, $P5011
    find_lex $P5015, "$?PACKAGE"
    get_who $P5014, $P5015
    set $P5013, $P5014["$EDGE_FATE"]
    unless_null $P5013, fallback567
    nqp_get_sc_object $P5016, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5013, $P5016
  fallback567:
    set $N5013, $P5013
    iseq $I5007, $N5012, $N5013
    unless $I5007 goto if184_end565 
    set $N5015, $I101
    set $N5016, 1
    add $N5014, $N5015, $N5016
    set $I5008, $N5014
    find_lex $P5017, "$fate"
    set $P101[$I5008], $P5017
  if184_end565:
    set $P5018, $P101[$I101]
    unless_null $P5018, fallback570
    nqp_get_sc_object $P5019, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5018, $P5019
  fallback570:
    set $N5017, $P5018
    find_lex $P5022, "$?PACKAGE"
    get_who $P5021, $P5022
    set $P5020, $P5021["$EDGE_SUBRULE"]
    unless_null $P5020, fallback571
    nqp_get_sc_object $P5023, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5020, $P5023
  fallback571:
    set $N5018, $P5020
    iseq $I5009, $N5017, $N5018
    unless $I5009 goto if185_end569 
.annotate 'line', 359
    find_lex $P5025, "self"
    nqp_decontainerize $P5024, $P5025
    find_lex $I5010, "$i"
    set $N5020, $I101
    set $N5021, 2
    add $N5019, $N5020, $N5021
    set $I5011, $N5019
    set $P5026, $P101[$I5011]
    unless_null $P5026, fallback572
    nqp_get_sc_object $P5027, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5026, $P5027
  fallback572:
    find_lex $P5028, "$fate"
    find_lex $P5029, "$cursor"
    set $N5023, $I101
    set $N5024, 1
    add $N5022, $N5023, $N5024
    set $I5012, $N5022
    set $P5030, $P101[$I5012]
    unless_null $P5030, fallback573
    nqp_get_sc_object $P5031, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5030, $P5031
  fallback573:
    find_lex $P5032, "%seen"
    $P5033 = $P5024."mergesubrule"($I5010, $P5026, $P5028, $P5029, $P5030, $P5032)
  if185_end569:
    set $N5026, $I101
    set $N5027, 3
    add $N5025, $N5026, $N5027
    set $I5013, $N5025
    set $I101, $I5013
    set $I5014, $I101
    goto while183_test558 
  while183_done562:
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
.sub "run" :subid("cuid_23_1351021530.153") :anon :lex :outer("cuid_28_1351021530.153")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 375
    .param pmc _lex_param_0 
    .param string _lex_param_1 
    .param int _lex_param_2 
    .lex "self", _lex_param_0 
    .lex "$target", _lex_param_1 
    .lex "$offset", _lex_param_2 
    nqp_decontainerize $P5002, _lex_param_0
    nqp_get_sc_object $P5003, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 3
    repr_get_attr_obj $P5004, $P5002, $P5003, "$!states"
    set $S5001, _lex_param_1
    set $I5001, _lex_param_2
    nqp_nfa_run_protoregex $P5001, $P5004, $S5001, $I5001
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "run_alt" :subid("cuid_24_1351021530.153") :anon :lex :outer("cuid_28_1351021530.153")
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
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 3
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!states"
    set $S5001, _lex_param_1
    set $I5001, _lex_param_2
    nqp_nfa_run_alternation $P5003, $S5001, $I5001, _lex_param_3, _lex_param_4, _lex_param_5
    .return () 
.end
.HLL "nqp"
.namespace []
.sub "generic" :subid("cuid_25_1351021530.153") :anon :lex :outer("cuid_28_1351021530.153")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 429
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 3
    repr_get_attr_int $I5001, $P5001, $P5002, "$!generic"
    .return ($I5001) 
.end
.HLL "nqp"
.namespace []
.sub "instantiate_generic" :subid("cuid_26_1351021530.153") :anon :lex :outer("cuid_28_1351021530.153")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 433
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5031 = 'cuid_136_1351021530.153' 
    capture_lex $P5031 
    .const 'Sub' $P5031 = 'cuid_138_1351021530.153' 
    capture_lex $P5031 
    .lex "$copy", $P101 
    .lex "@copied_states", $P102 
    .lex "$from", $I101 
    .lex "self", _lex_param_0 
    .lex "$env", _lex_param_1 
    nqp_get_sc_object $P5001, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P101, $P5001
    new $P5002, 'ResizablePMCArray'
    set $P102, $P5002
    set $I101, 0
    nqp_decontainerize $P5004, _lex_param_0
    repr_instance_of $P5003, $P5004
    set $P101, $P5003
    nqp_decontainerize $P5008, _lex_param_0
    nqp_get_sc_object $P5009, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 3
    repr_get_attr_obj $P5010, $P5008, $P5009, "$!states"
    set $P5005, $P5010
    iter $P5007, $P5010
  for_next581:
    unless $P5007, for_done583
    shift $P5012, $P5007
  for_redo582:
    .const 'Sub' $P5011 = 'cuid_136_1351021530.153' 
    capture_lex $P5011
    $P5005 = $P5011($P5012)
    goto for_next581
  for_done583:
    nqp_get_sc_object $P5016, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 0
    nqp_get_package_through_who $P5015, $P5016, "QRegex"
    get_who $P5014, $P5015
    set $P5013, $P5014["NFA"]
    unless_null $P5013, fallback584
    nqp_get_sc_object $P5017, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5013, $P5017
  fallback584:
    setattribute $P101, $P5013, "$!states", $P102
    nqp_get_sc_object $P5021, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 0
    nqp_get_package_through_who $P5020, $P5021, "QRegex"
    get_who $P5019, $P5020
    set $P5018, $P5019["NFA"]
    unless_null $P5018, fallback585
    nqp_get_sc_object $P5022, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5018, $P5022
  fallback585:
    nqp_decontainerize $P5023, _lex_param_0
    nqp_get_sc_object $P5024, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 3
    repr_get_attr_obj $P5025, $P5023, $P5024, "$!edges"
    setattribute $P101, $P5018, "$!edges", $P5025
    set $I101, 0
    set $P5026, $P102
    iter $P5028, $P102
  for_next602:
    unless $P5028, for_done604
    shift $P5030, $P5028
  for_redo603:
    .const 'Sub' $P5029 = 'cuid_138_1351021530.153' 
    capture_lex $P5029
    $P5026 = $P5029($P5030)
    goto for_next602
  for_done604:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_136_1351021530.153") :anon :lex :outer("cuid_26_1351021530.153")
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
.sub "" :subid("cuid_138_1351021530.153") :anon :lex :outer("cuid_26_1351021530.153")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 446
    .param pmc _lex_param_0 
    .const 'Sub' $P5006 = 'cuid_137_1351021530.153' 
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
  while187_test586:
    set $N5001, $I101
    set $N5002, $I102
    islt $I5002, $N5001, $N5002
    box $P5005, $I5002
    set $P5004, $P5005
    unless $I5002 goto while187_done590 
  while187_redo588:
    .const 'Sub' $P5002 = 'cuid_137_1351021530.153' 
    capture_lex $P5002
    $P5003 = $P5002()
    set $P5004, $P5003
    goto while187_test586 
  while187_done590:
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
.sub "" :subid("cuid_137_1351021530.153") :anon :lex :outer("cuid_138_1351021530.153")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 450
    .lex "$act", $P101 
    .lex "$arg", $P102 
    .lex "$to", $P103 
    nqp_get_sc_object $P5001, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P101, $P5001
    nqp_get_sc_object $P5002, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P102, $P5002
    nqp_get_sc_object $P5003, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P103, $P5003
    find_lex $P5005, "@values"
    find_lex $I5001, "$i"
    set $P5004, $P5005[$I5001]
    unless_null $P5004, fallback591
    nqp_get_sc_object $P5006, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5004, $P5006
  fallback591:
    set $P101, $P5004
    find_lex $P5008, "@values"
    find_lex $I5002, "$i"
    set $N5002, $I5002
    set $N5003, 1
    add $N5001, $N5002, $N5003
    set $I5003, $N5001
    set $P5007, $P5008[$I5003]
    unless_null $P5007, fallback592
    nqp_get_sc_object $P5009, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5007, $P5009
  fallback592:
    set $P102, $P5007
    find_lex $P5011, "@values"
    find_lex $I5004, "$i"
    set $N5005, $I5004
    set $N5006, 2
    add $N5004, $N5005, $N5006
    set $I5005, $N5004
    set $P5010, $P5011[$I5005]
    unless_null $P5010, fallback593
    nqp_get_sc_object $P5012, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5010, $P5012
  fallback593:
    set $P103, $P5010
    set $N5007, $P101
    find_lex $P5015, "$?PACKAGE"
    get_who $P5014, $P5015
    set $P5013, $P5014["$EDGE_GENERIC_VAR"]
    unless_null $P5013, fallback596
    nqp_get_sc_object $P5016, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5013, $P5016
  fallback596:
    set $N5008, $P5013
    iseq $I5006, $N5007, $N5008
    unless $I5006 goto if188_end595 
.annotate 'line', 454
    find_lex $P5017, "$env"
    set $S5001, $P102
    exists $I5007, $P5017[$S5001]
    unless $I5007 goto if189_else597 
.annotate 'line', 455
.annotate 'line', 456
    find_lex $P5018, "$copy"
.annotate 'line', 457
    nqp_get_sc_object $P5022, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 0
    nqp_get_package_through_who $P5021, $P5022, "QAST"
    get_who $P5020, $P5021
    set $P5019, $P5020["Regex"]
    unless_null $P5019, fallback599
    nqp_get_sc_object $P5023, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5019, $P5023
  fallback599:
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
    unless_null $P5028, fallback600
    nqp_get_sc_object $P5031, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5028, $P5031
  fallback600:
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
    goto if189_end598
  if189_else597:
.annotate 'line', 463
    find_lex $P5036, "@values"
    find_lex $I5014, "$i"
    find_lex $P5039, "$?PACKAGE"
    get_who $P5038, $P5039
    set $P5037, $P5038["$EDGE_FATE"]
    unless_null $P5037, fallback601
    nqp_get_sc_object $P5040, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5037, $P5040
  fallback601:
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
  if189_end598:
  if188_end595:
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
.sub "__dump" :subid("cuid_27_1351021530.153") :anon :lex :outer("cuid_28_1351021530.153")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 477
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .const 'Sub' $P5015 = 'cuid_139_1351021530.153' 
    capture_lex $P5015 
    .lex "$subindent", $P101 
    .lex "$st", $P102 
    .lex "self", _lex_param_0 
    .lex "$dumper", _lex_param_1 
    .lex "$label", _lex_param_2 
    nqp_get_sc_object $P5001, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P101, $P5001
    nqp_get_sc_object $P5002, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P102, $P5002
.annotate 'line', 478
    $P5003 = _lex_param_1."newIndent"()
    set $P101, $P5003
.annotate 'line', 479
    "&print"("[")
    box $P5004, 0
    set $P102, $P5004
    nqp_decontainerize $P5008, _lex_param_0
    nqp_get_sc_object $P5009, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 3
    repr_get_attr_obj $P5010, $P5008, $P5009, "$!states"
    set $P5005, $P5010
    iter $P5007, $P5010
  for_next605:
    unless $P5007, for_done607
    shift $P5012, $P5007
  for_redo606:
    .const 'Sub' $P5011 = 'cuid_139_1351021530.153' 
    capture_lex $P5011
    $P5005 = $P5011($P5012)
    goto for_next605
  for_done607:
.annotate 'line', 485
    _lex_param_1."deleteIndent"()
.annotate 'line', 486
    $P5013 = _lex_param_1."indent"()
    $P5014 = "&print"("\n", $P5013, "]")
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_139_1351021530.153") :anon :lex :outer("cuid_27_1351021530.153")
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
.sub "" :subid("cuid_70_1351021530.153") :anon :lex :outer("cuid_1_1351021530.153")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 491
    .param pmc _lex_param_0 
    .const 'Sub' $P5049 = 'cuid_29_1351021530.153' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_30_1351021530.153' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_31_1351021530.153' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_32_1351021530.153' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_33_1351021530.153' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_34_1351021530.153' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_35_1351021530.153' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_36_1351021530.153' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_37_1351021530.153' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_38_1351021530.153' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_39_1351021530.153' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_40_1351021530.153' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_41_1351021530.153' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_42_1351021530.153' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_43_1351021530.153' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_44_1351021530.153' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_45_1351021530.153' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_46_1351021530.153' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_47_1351021530.153' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_48_1351021530.153' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_49_1351021530.153' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_50_1351021530.153' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_51_1351021530.153' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_52_1351021530.153' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_53_1351021530.153' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_54_1351021530.153' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_55_1351021530.153' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_56_1351021530.153' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_57_1351021530.153' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_58_1351021530.153' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_59_1351021530.153' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_60_1351021530.153' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_61_1351021530.153' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_62_1351021530.153' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_63_1351021530.153' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_64_1351021530.153' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_65_1351021530.153' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_66_1351021530.153' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_67_1351021530.153' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_68_1351021530.153' 
    capture_lex $P5049 
    .const 'Sub' $P5049 = 'cuid_69_1351021530.153' 
    capture_lex $P5049 
    .lex "$?PACKAGE", $P101 
    .lex "$?ROLE", $P102 
    .lex "$NO_CAPS", $P103 
    .lex "$pass_mark", $P104 
    .lex "@EMPTY", $P105 
    .lex "$?CLASS", _lex_param_0 
    nqp_get_sc_object $P5001, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P103, $P5001
    nqp_get_sc_object $P5002, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P104, $P5002
    new $P5003, 'ResizablePMCArray'
    set $P105, $P5003
    .const 'Sub' $P5004 = 'cuid_29_1351021530.153' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_30_1351021530.153' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_31_1351021530.153' 
    capture_lex $P5006
    new $P5007, 'Hash'
    set $P103, $P5007
    .const 'Sub' $P5008 = 'cuid_32_1351021530.153' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_33_1351021530.153' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_34_1351021530.153' 
    capture_lex $P5010
    .const 'Sub' $P5011 = 'cuid_35_1351021530.153' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_36_1351021530.153' 
    capture_lex $P5012
    .const 'Sub' $P5013 = 'cuid_37_1351021530.153' 
    capture_lex $P5013
    box $P5014, 1
    set $P104, $P5014
    .const 'Sub' $P5015 = 'cuid_38_1351021530.153' 
    capture_lex $P5015
    .const 'Sub' $P5016 = 'cuid_39_1351021530.153' 
    capture_lex $P5016
    .const 'Sub' $P5017 = 'cuid_40_1351021530.153' 
    capture_lex $P5017
    .const 'Sub' $P5018 = 'cuid_41_1351021530.153' 
    capture_lex $P5018
    .const 'Sub' $P5019 = 'cuid_42_1351021530.153' 
    capture_lex $P5019
    .const 'Sub' $P5020 = 'cuid_43_1351021530.153' 
    capture_lex $P5020
    new $P5021, 'ResizablePMCArray'
    set $P105, $P5021
    .const 'Sub' $P5022 = 'cuid_44_1351021530.153' 
    capture_lex $P5022
    .const 'Sub' $P5023 = 'cuid_45_1351021530.153' 
    capture_lex $P5023
    .const 'Sub' $P5024 = 'cuid_46_1351021530.153' 
    capture_lex $P5024
    .const 'Sub' $P5025 = 'cuid_47_1351021530.153' 
    capture_lex $P5025
    .const 'Sub' $P5026 = 'cuid_48_1351021530.153' 
    capture_lex $P5026
    .const 'Sub' $P5027 = 'cuid_49_1351021530.153' 
    capture_lex $P5027
    .const 'Sub' $P5028 = 'cuid_50_1351021530.153' 
    capture_lex $P5028
    .const 'Sub' $P5029 = 'cuid_51_1351021530.153' 
    capture_lex $P5029
    .const 'Sub' $P5030 = 'cuid_52_1351021530.153' 
    capture_lex $P5030
    .const 'Sub' $P5031 = 'cuid_53_1351021530.153' 
    capture_lex $P5031
    .const 'Sub' $P5032 = 'cuid_54_1351021530.153' 
    capture_lex $P5032
    .const 'Sub' $P5033 = 'cuid_55_1351021530.153' 
    capture_lex $P5033
    .const 'Sub' $P5034 = 'cuid_56_1351021530.153' 
    capture_lex $P5034
    .const 'Sub' $P5035 = 'cuid_57_1351021530.153' 
    capture_lex $P5035
    .const 'Sub' $P5036 = 'cuid_58_1351021530.153' 
    capture_lex $P5036
    .const 'Sub' $P5037 = 'cuid_59_1351021530.153' 
    capture_lex $P5037
    .const 'Sub' $P5038 = 'cuid_60_1351021530.153' 
    capture_lex $P5038
    .const 'Sub' $P5039 = 'cuid_61_1351021530.153' 
    capture_lex $P5039
    .const 'Sub' $P5040 = 'cuid_62_1351021530.153' 
    capture_lex $P5040
    .const 'Sub' $P5041 = 'cuid_63_1351021530.153' 
    capture_lex $P5041
    .const 'Sub' $P5042 = 'cuid_64_1351021530.153' 
    capture_lex $P5042
    .const 'Sub' $P5043 = 'cuid_65_1351021530.153' 
    capture_lex $P5043
    .const 'Sub' $P5044 = 'cuid_66_1351021530.153' 
    capture_lex $P5044
    .const 'Sub' $P5045 = 'cuid_67_1351021530.153' 
    capture_lex $P5045
    .const 'Sub' $P5046 = 'cuid_68_1351021530.153' 
    capture_lex $P5046
    .const 'Sub' $P5047 = 'cuid_69_1351021530.153' 
    capture_lex $P5047
    getinterp $P5048
    set $P5048, $P5048['lexpad']
    .return ($P5048) 
.end
.HLL "nqp"
.namespace []
.sub "target" :subid("cuid_29_1351021530.153") :anon :lex :outer("cuid_70_1351021530.153")
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
.sub "from" :subid("cuid_30_1351021530.153") :anon :lex :outer("cuid_70_1351021530.153")
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
.sub "pos" :subid("cuid_31_1351021530.153") :anon :lex :outer("cuid_70_1351021530.153")
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
.sub "CAPHASH" :subid("cuid_32_1351021530.153") :anon :lex :outer("cuid_70_1351021530.153")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 508
    .param pmc _lex_param_0 
    .const 'Sub' $P5064 = 'cuid_90_1351021530.153' 
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
    nqp_get_sc_object $P5001, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P101, $P5001
    new $P5002, 'Hash'
    set $P102, $P5002
    nqp_get_sc_object $P5003, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P103, $P5003
    set $S101, ""
    nqp_get_sc_object $P5004, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P104, $P5004
    set $I101, 0
    set $I102, 0
    nqp_get_sc_object $P5005, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P105, $P5005
    nqp_get_sc_object $P5006, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P106, $P5006
    nqp_get_sc_object $P5007, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
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
    unless $I5001 goto if191_end611 
    nqp_decontainerize $P5013, _lex_param_0
    find_lex $P5014, "$?CLASS"
    repr_get_attr_obj $P5015, $P5013, $P5014, "$!regexsub"
    defined $I5003, $P5015
    set $I5004, $I5003
  if191_end611:
    unless $I5004 goto if190_end609 
.annotate 'line', 520
    nqp_decontainerize $P5016, _lex_param_0
    find_lex $P5017, "$?CLASS"
    repr_get_attr_obj $P5018, $P5016, $P5017, "$!regexsub"
    can $I5005, $P5018, "CAPS"
    unless $I5005 goto if192_else612 
.annotate 'line', 521
    nqp_decontainerize $P5019, _lex_param_0
    find_lex $P5020, "$?CLASS"
    repr_get_attr_obj $P5021, $P5019, $P5020, "$!regexsub"
    $P5022 = $P5021."CAPS"()
    set $P5024, $P5022
    goto if192_end613
  if192_else612:
    null $P5023
    set $P5024, $P5023
  if192_end613:
    set $P102, $P5024
    isnull $I5007, $P102
    not $I5006, $I5007
    box $P5026, $I5006
    set $P5025, $P5026
    unless $I5006 goto if194_end617 
    set $P5025, $P102
  if194_end617:
    set $P5034, $P5025
    unless $P5025 goto if193_end615 
.annotate 'line', 522
    iter $P5027, $P102
    set $P103, $P5027
  while195_test618:
    set $P5033, $P103
    unless $P103 goto while195_done622 
  while195_redo620:
.annotate 'line', 524
    shift $S5001, $P103
    set $S101, $S5001
    set $P5028, $P102[$S101]
    unless_null $P5028, fallback625
    nqp_get_sc_object $P5029, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5028, $P5029
  fallback625:
    set $N5001, $P5028
    set $N5002, 2
    isge $I5008, $N5001, $N5002
    box $P5032, $I5008
    set $P5031, $P5032
    unless $I5008 goto if196_end624 
    new $P5030, 'ResizablePMCArray'
    set $P101[$S101], $P5030
    set $P5031, $P5030
  if196_end624:
    set $P5033, $P5031
    goto while195_test618 
  while195_done622:
    set $P5034, $P5033
  if193_end615:
  if190_end609:
    nqp_decontainerize $P5035, _lex_param_0
    find_lex $P5036, "$?CLASS"
    repr_get_attr_obj $P5037, $P5035, $P5036, "$!cstack"
    isnull $I5010, $P5037
    not $I5009, $I5010
    box $P5042, $I5009
    set $P5041, $P5042
    unless $I5009 goto if198_end629 
    nqp_decontainerize $P5038, _lex_param_0
    find_lex $P5039, "$?CLASS"
    repr_get_attr_obj $P5040, $P5038, $P5039, "$!cstack"
    set $P5041, $P5040
  if198_end629:
    unless $P5041 goto if197_end627 
.annotate 'line', 530
    nqp_decontainerize $P5043, _lex_param_0
    find_lex $P5044, "$?CLASS"
    repr_get_attr_obj $P5045, $P5043, $P5044, "$!cstack"
    set $P104, $P5045
    elements $I5011, $P104
    set $I102, $I5011
  while199_test630:
    set $N5003, $I101
    set $N5004, $I102
    islt $I5012, $N5003, $N5004
    box $P5063, $I5012
    set $P5062, $P5063
    unless $I5012 goto while199_done634 
  while199_redo632:
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
    unless $I5013 goto if201_end638 
    defined $I5015, $P107
    set $I5016, $I5015
  if201_end638:
    unless $I5016 goto if200_end636 
.annotate 'line', 537
    set $S5002, $P107
    index $I5018, $S5002, "=", 0
    set $N5005, $I5018
    set $N5006, 0
    islt $I5017, $N5005, $N5006
    unless $I5017 goto if202_else639 
.annotate 'line', 538
    set $S5003, $P107
    set $P5050, $P102[$S5003]
    unless_null $P5050, fallback643
    nqp_get_sc_object $P5051, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5050, $P5051
  fallback643:
    set $N5007, $P5050
    set $N5008, 2
    isge $I5019, $N5007, $N5008
    unless $I5019 goto if203_else641 
    set $S5004, $P107
    set $P5052, $P101[$S5004]
    unless_null $P5052, fallback644
    nqp_get_sc_object $P5053, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5052, $P5053
  fallback644:
    push $P5052, $P106
    set $P5054, $P5052
    goto if203_end642
  if203_else641:
    set $S5005, $P107
    set $P101[$S5005], $P106
    set $P5054, $P106
  if203_end642:
    set $P5061, $P5054
    goto if202_end640
  if202_else639:
.annotate 'line', 543
    set $S5006, $P107
    split $P5058, "=", $S5006
    set $P5055, $P5058
    iter $P5057, $P5058
  for_next649:
    unless $P5057, for_done651
    shift $P5060, $P5057
  for_redo650:
    .const 'Sub' $P5059 = 'cuid_90_1351021530.153' 
    capture_lex $P5059
    $P5055 = $P5059($P5060)
    goto for_next649
  for_done651:
    set $P5061, $P5055
  if202_end640:
  if200_end636:
    box $P5062, $I101
    set tmp_5, $P5062
    set $N5010, tmp_5
    set $N5011, 1
    add $N5009, $N5010, $N5011
    set $I5020, $N5009
    set $I101, $I5020
    set $P5062, tmp_5
    goto while199_test630 
  while199_done634:
  if197_end627:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_90_1351021530.153") :anon :lex :outer("cuid_32_1351021530.153")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 544
    .param pmc _lex_param_0 
    .lex "$name", _lex_param_0 
    find_lex $P5002, "%caplist"
    set $S5001, _lex_param_0
    set $P5001, $P5002[$S5001]
    unless_null $P5001, fallback647
    nqp_get_sc_object $P5003, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5001, $P5003
  fallback647:
    set $N5001, $P5001
    set $N5002, 2
    isge $I5001, $N5001, $N5002
    unless $I5001 goto if204_else645 
    find_lex $P5005, "$caps"
    set $S5002, _lex_param_0
    set $P5004, $P5005[$S5002]
    unless_null $P5004, fallback648
    nqp_get_sc_object $P5006, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5004, $P5006
  fallback648:
    find_lex $P5007, "$submatch"
    push $P5004, $P5007
    set $P5010, $P5004
    goto if204_end646
  if204_else645:
    find_lex $P5008, "$caps"
    set $S5003, _lex_param_0
    find_lex $P5009, "$submatch"
    set $P5008[$S5003], $P5009
    set $P5010, $P5009
  if204_end646:
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "!cursor_init" :subid("cuid_33_1351021530.153") :anon :lex :outer("cuid_70_1351021530.153")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 557
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :named("p") :optional 
    .param int haz_param_14 :opt_flag 
    .param pmc _lex_param_3 :named("c") :optional 
    .param int haz_param_15 :opt_flag 
    if haz_param_14, default654
    box $P5011, 0
    set _lex_param_2, $P5011
  default654:
    if haz_param_15, default655
    nqp_get_sc_object $P5012, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set _lex_param_3, $P5012
  default655:
    .lex "$new", $P101 
    .lex "self", _lex_param_0 
    .lex "$target", _lex_param_1 
    .lex "$p", _lex_param_2 
    .lex "$c", _lex_param_3 
    nqp_get_sc_object $P5001, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
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
    unless $I5002 goto if205_else652 
.annotate 'line', 562
    find_lex $P5007, "$?CLASS"
    repr_bind_attr_int $P101, $P5007, "$!from", -1
    find_lex $P5008, "$?CLASS"
    set $I5003, _lex_param_3
    repr_bind_attr_int $P101, $P5008, "$!pos", $I5003
    goto if205_end653
  if205_else652:
.annotate 'line', 566
    find_lex $P5009, "$?CLASS"
    set $I5004, _lex_param_2
    repr_bind_attr_int $P101, $P5009, "$!from", $I5004
    find_lex $P5010, "$?CLASS"
    set $I5005, _lex_param_2
    repr_bind_attr_int $P101, $P5010, "$!pos", $I5005
  if205_end653:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "!cursor_start" :subid("cuid_34_1351021530.153") :anon :lex :outer("cuid_70_1351021530.153")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 573
    .param pmc _lex_param_0 
    .lex "$new", $P101 
    .lex "$sub", $P102 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P101, $P5001
    nqp_get_sc_object $P5002, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
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
    unless_null $P5011, vivi_206656
    set $P5011, $P102
  vivi_206656:
    setattribute $P101, $P5010, "$!regexsub", $P5011
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_obj $P5014, $P5012, $P5013, "$!restart"
    defined $I5001, $P5014
    unless $I5001 goto if207_end658 
.annotate 'line', 581
    find_lex $P5015, "$?CLASS"
    nqp_decontainerize $P5016, _lex_param_0
    find_lex $P5017, "$?CLASS"
    repr_get_attr_int $I5002, $P5016, $P5017, "$!pos"
    repr_bind_attr_int $P101, $P5015, "$!pos", $I5002
    nqp_decontainerize $P5018, _lex_param_0
    find_lex $P5019, "$?CLASS"
    repr_get_attr_obj $P5020, $P5018, $P5019, "$!cstack"
    unless $P5020 goto if208_end660 
    find_lex $P5021, "$?CLASS"
    nqp_decontainerize $P5023, _lex_param_0
    find_lex $P5024, "$?CLASS"
    repr_get_attr_obj $P5025, $P5023, $P5024, "$!cstack"
    clone $P5022, $P5025
    setattribute $P101, $P5021, "$!cstack", $P5022
  if208_end660:
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
  if207_end658:
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
.sub "!cursor_start_subcapture" :subid("cuid_35_1351021530.153") :anon :lex :outer("cuid_70_1351021530.153")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 603
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$new", $P101 
    .lex "self", _lex_param_0 
    .lex "$from", _lex_param_1 
    nqp_get_sc_object $P5001, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
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
.sub "!cursor_capture" :subid("cuid_36_1351021530.153") :anon :lex :outer("cuid_70_1351021530.153")
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
    if $I5001 goto unless209_end662 
    nqp_decontainerize $P5007, _lex_param_0
    find_lex $P5008, "$?CLASS"
    new $P5009, 'ResizablePMCArray'
    repr_bind_attr_obj $P5007, $P5008, "$!cstack", $P5009
  unless209_end662:
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
.sub "!cursor_push_cstack" :subid("cuid_37_1351021530.153") :anon :lex :outer("cuid_70_1351021530.153")
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
    if $I5001 goto unless210_end664 
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    new $P5006, 'ResizablePMCArray'
    repr_bind_attr_obj $P5004, $P5005, "$!cstack", $P5006
  unless210_end664:
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
.sub "!cursor_pass" :subid("cuid_38_1351021530.153") :anon :lex :outer("cuid_70_1351021530.153")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 631
    .param pmc _lex_param_0 
    .param int _lex_param_1 
    .param pmc _lex_param_2 :optional 
    .param int haz_param_16 :opt_flag 
    .param pmc _lex_param_3 :named("backtrack") :optional 
    .param int haz_param_17 :opt_flag 
    if haz_param_16, default671
    nqp_get_sc_object $P5017, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set _lex_param_2, $P5017
  default671:
    if haz_param_17, default672
    nqp_get_sc_object $P5018, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set _lex_param_3, $P5018
  default672:
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
    unless _lex_param_3 goto if211_end666 
    nqp_decontainerize $P5006, _lex_param_0
    find_lex $P5007, "$?CLASS"
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_obj $P5010, $P5008, $P5009, "$!regexsub"
    repr_bind_attr_obj $P5006, $P5007, "$!restart", $P5010
  if211_end666:
    if _lex_param_3 goto unless212_end668 
    nqp_decontainerize $P5011, _lex_param_0
    find_lex $P5012, "$?CLASS"
    null $P5013
    repr_bind_attr_obj $P5011, $P5012, "$!bstack", $P5013
  unless212_end668:
    set $P5016, _lex_param_2
    unless _lex_param_2 goto if213_end670 
.annotate 'line', 638
    nqp_decontainerize $P5014, _lex_param_0
    $P5015 = $P5014."!reduce"(_lex_param_2)
    set $P5016, $P5015
  if213_end670:
    .return ($P5016) 
.end
.HLL "nqp"
.namespace []
.sub "!cursor_fail" :subid("cuid_39_1351021530.153") :anon :lex :outer("cuid_70_1351021530.153")
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
.sub "!cursor_next" :subid("cuid_40_1351021530.153") :anon :lex :outer("cuid_70_1351021530.153")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 647
    .param pmc _lex_param_0 
    .const 'Sub' $P5012 = 'cuid_91_1351021530.153' 
    capture_lex $P5012 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    find_lex $P5002, "$?CLASS"
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!restart"
    defined $I5001, $P5003
    unless $I5001 goto if214_else673 
.annotate 'line', 648
.annotate 'line', 649
    nqp_decontainerize $P5007, _lex_param_0
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!restart"
    $P5008 = $P5006($P5007)
    set $P5011, $P5008
    goto if214_end674
  if214_else673:
    .const 'Sub' $P5009 = 'cuid_91_1351021530.153' 
    capture_lex $P5009
    $P5010 = $P5009()
    set $P5011, $P5010
  if214_end674:
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_91_1351021530.153") :anon :lex :outer("cuid_40_1351021530.153")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 651
    .lex "$cur", $P101 
    nqp_get_sc_object $P5001, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
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
.sub "!cursor_more" :subid("cuid_41_1351021530.153") :anon :lex :outer("cuid_70_1351021530.153")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 658
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy :named 
    .lex "$new", $P101 
    .lex "self", _lex_param_0 
    .lex "%opts", _lex_param_1 
    nqp_get_sc_object $P5001, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P101, $P5001
    root_new $P102, ['parrot';'Continuation']
    set_label $P102, lexotic_675
    .lex "RETURN", $P102
    set $P5002, _lex_param_1["ex"]
    unless_null $P5002, fallback679
    nqp_get_sc_object $P5003, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5002, $P5003
  fallback679:
    unless $P5002 goto if215_end678 
.annotate 'line', 659
    nqp_decontainerize $P5005, _lex_param_0
    $P5006 = $P5005."!cursor_next"()
    find_lex $P5004, "RETURN"
    $P5007 = $P5004($P5006)
  if215_end678:
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
    unless_null $P5019, fallback684
    nqp_get_sc_object $P5020, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5019, $P5020
  fallback684:
    set $P5025, $P5019
    if $P5019 goto unless217_end683 
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
  unless217_end683:
    unless $P5025 goto if216_else680 
    nqp_decontainerize $P5027, _lex_param_0
    find_lex $P5028, "$?CLASS"
    repr_get_attr_int $I5004, $P5027, $P5028, "$!from"
    set $N5004, $I5004
    set $N5005, 1
    add $N5003, $N5004, $N5005
    box $P5032, $N5003
    set $P5031, $P5032
    goto if216_end681
  if216_else680:
    nqp_decontainerize $P5029, _lex_param_0
    find_lex $P5030, "$?CLASS"
    repr_get_attr_int $I5005, $P5029, $P5030, "$!pos"
    box $P5033, $I5005
    set $P5031, $P5033
  if216_end681:
    set $I5006, $P5031
    repr_bind_attr_int $P101, $P5018, "$!pos", $I5006
.annotate 'line', 666
    nqp_decontainerize $P5034, _lex_param_0
    find_lex $P5035, "$?CLASS"
    repr_get_attr_obj $P5036, $P5034, $P5035, "$!regexsub"
    $P5037 = $P5036($P101)
    goto lexotic_676
  lexotic_675:
    .get_results ($P5037)
  lexotic_676:
    .return ($P5037) 
.end
.HLL "nqp"
.namespace []
.sub "!reduce" :subid("cuid_42_1351021530.153") :anon :lex :outer("cuid_70_1351021530.153")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 669
    .param pmc _lex_param_0 
    .param string _lex_param_1 
    .lex "$actions", $P101 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    nqp_get_sc_object $P5001, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P101, $P5001
    find_dynamic_lex $P5002, "$*ACTIONS"
    set $P101, $P5002
    isnull $I5002, $P101
    not $I5001, $I5002
    set $I5004, $I5001
    unless $I5001 goto if219_end688 
    can $I5003, $P101, _lex_param_1
    set $I5004, $I5003
  if219_end688:
    box $P5008, $I5004
    set $P5007, $P5008
    unless $I5004 goto if218_end686 
.annotate 'line', 671
    nqp_decontainerize $P5004, _lex_param_0
    $P5005 = $P5004."MATCH"()
    find_method $P5003, $P101, _lex_param_1
    $P5006 = $P5003($P101, $P5005)
    set $P5007, $P5006
  if218_end686:
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "!reduce_with_match" :subid("cuid_43_1351021530.153") :anon :lex :outer("cuid_70_1351021530.153")
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
    nqp_get_sc_object $P5001, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P101, $P5001
    find_dynamic_lex $P5002, "$*ACTIONS"
    set $P101, $P5002
    isnull $I5002, $P101
    not $I5001, $I5002
    set $I5004, $I5001
    unless $I5001 goto if221_end692 
    set $S5001, _lex_param_1
    can $I5003, $P101, $S5001
    set $I5004, $I5003
  if221_end692:
    box $P5006, $I5004
    set $P5005, $P5006
    unless $I5004 goto if220_end690 
.annotate 'line', 677
    set $S5002, _lex_param_1
    find_method $P5003, $P101, $S5002
    $P5004 = $P5003($P101, _lex_param_3, _lex_param_2)
    set $P5005, $P5004
  if220_end690:
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "!protoregex" :subid("cuid_44_1351021530.153") :anon :lex :outer("cuid_70_1351021530.153")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 682
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5031 = 'cuid_92_1351021530.153' 
    capture_lex $P5031 
    .lex "$nfa", $P101 
    .lex "@fates", $P102 
    .lex "@rxfate", $P103 
    .lex "$cur", $P104 
    .lex "$rxname", $P105 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    nqp_get_sc_object $P5001, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P101, $P5001
    new $P5002, 'ResizablePMCArray'
    set $P102, $P5002
    new $P5003, 'ResizablePMCArray'
    set $P103, $P5003
    nqp_get_sc_object $P5004, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P104, $P5004
    nqp_get_sc_object $P5005, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P105, $P5005
.annotate 'line', 684
    nqp_decontainerize $P5007, _lex_param_0
    get_how $P5006, $P5007
    nqp_decontainerize $P5008, _lex_param_0
    .const 'Sub' $P5010 = 'cuid_92_1351021530.153' 
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
    unless_null $P5017, fallback693
    nqp_get_sc_object $P5019, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5017, $P5019
  fallback693:
    set $P103, $P5017
  while222_test694:
    set $P5027, $P102
    unless $P102 goto while222_done698 
  while222_redo696:
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
    unless $I5003 goto if223_end700 
    find_lex $P5024, "@EMPTY"
    set $P102, $P5024
    set $P5025, $P102
  if223_end700:
    set $P5027, $P5025
    goto while222_test694 
  while222_done698:
    set $P5028, $P104
    defined $I5005, $P5028
    if $I5005, defor701
.annotate 'line', 697
    nqp_decontainerize $P5029, _lex_param_0
    $P5030 = $P5029."!cursor_start"()
    set $P5028, $P5030
  defor701:
    .return ($P5028) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_92_1351021530.153") :anon :lex :outer("cuid_44_1351021530.153")
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
.sub "!protoregex_nfa" :subid("cuid_45_1351021530.153") :anon :lex :outer("cuid_70_1351021530.153")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 700
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5026 = 'cuid_93_1351021530.153' 
    capture_lex $P5026 
    .const 'Sub' $P5026 = 'cuid_94_1351021530.153' 
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
    nqp_get_sc_object $P5002, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P102, $P5002
    new $P5003, 'ResizablePMCArray'
    set $P103, $P5003
    set $I101, 0
    set $I102, 0
.annotate 'line', 701
    nqp_decontainerize $P5005, _lex_param_0
    get_how $P5004, $P5005
    nqp_decontainerize $P5006, _lex_param_0
    .const 'Sub' $P5008 = 'cuid_93_1351021530.153' 
    capture_lex $P5008
    newclosure $P5007, $P5008
    $P5009 = $P5004."cache"($P5006, "!protoregex_table", $P5007)
    set $P101, $P5009
.annotate 'line', 702
    nqp_get_sc_object $P5013, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 0
    nqp_get_package_through_who $P5012, $P5013, "QRegex"
    get_who $P5011, $P5012
    set $P5010, $P5011["NFA"]
    unless_null $P5010, fallback702
    nqp_get_sc_object $P5014, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5010, $P5014
  fallback702:
    $P5015 = $P5010."new"()
    set $P102, $P5015
.annotate 'line', 703
    $P5017 = $P102."states"()
    set $P5016, $P5017[0]
    unless_null $P5016, fallback703
    nqp_get_sc_object $P5018, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5016, $P5018
  fallback703:
    set $P103, $P5016
    set $I101, 1
    set $I102, 0
    set $S5001, _lex_param_1
    exists $I5001, $P101[$S5001]
    unless $I5001 goto if224_end705 
.annotate 'line', 706
    set $S5002, _lex_param_1
    set $P5022, $P101[$S5002]
    unless_null $P5022, fallback706
    nqp_get_sc_object $P5023, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5022, $P5023
  fallback706:
    set $P5019, $P5022
    iter $P5021, $P5022
  for_next707:
    unless $P5021, for_done709
    shift $P5025, $P5021
  for_redo708:
    .const 'Sub' $P5024 = 'cuid_94_1351021530.153' 
    capture_lex $P5024
    $P5019 = $P5024($P5025)
    goto for_next707
  for_done709:
  if224_end705:
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_93_1351021530.153") :anon :lex :outer("cuid_45_1351021530.153")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 701

    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    $P5003 = $P5001."!protoregex_table"()
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_94_1351021530.153") :anon :lex :outer("cuid_45_1351021530.153")
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
.sub "!protoregex_table" :subid("cuid_46_1351021530.153") :anon :lex :outer("cuid_70_1351021530.153")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 716
    .param pmc _lex_param_0 
    .const 'Sub' $P5011 = 'cuid_96_1351021530.153' 
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
  for_next715:
    unless $P5004, for_done717
    shift $P5010, $P5004
  for_redo716:
    .const 'Sub' $P5009 = 'cuid_96_1351021530.153' 
    capture_lex $P5009
    $P5002 = $P5009($P5010)
    goto for_next715
  for_done717:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_96_1351021530.153") :anon :lex :outer("cuid_46_1351021530.153")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 718
    .param pmc _lex_param_0 
    .const 'Sub' $P5005 = 'cuid_95_1351021530.153' 
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
    unless $I5002 goto if225_end711 
    .const 'Sub' $P5001 = 'cuid_95_1351021530.153' 
    capture_lex $P5001
    $P5002 = $P5001()
    set $P5003, $P5002
  if225_end711:
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_95_1351021530.153") :anon :lex :outer("cuid_96_1351021530.153")
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
    if $I5002 goto unless226_end713 
    find_lex $P5002, "%protorx"
    new $P5003, 'ResizablePMCArray'
    set $P5002[$S101], $P5003
  unless226_end713:
    find_lex $P5005, "%protorx"
    set $P5004, $P5005[$S101]
    unless_null $P5004, fallback714
    nqp_get_sc_object $P5006, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5004, $P5006
  fallback714:
    find_lex $S5003, "$methname"
    box $P5007, $S5003
    push $P5004, $P5007
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "!alt" :subid("cuid_47_1351021530.153") :anon :lex :outer("cuid_70_1351021530.153")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 730
    .param pmc _lex_param_0 
    .param int _lex_param_1 
    .param string _lex_param_2 
    .param pmc _lex_param_3 :optional 
    .param int haz_param_18 :opt_flag 
    .const 'Sub' $P5018 = 'cuid_97_1351021530.153' 
    capture_lex $P5018 
    if haz_param_18, default718
    new $P5017, 'ResizablePMCArray'
    set _lex_param_3, $P5017
  default718:
    .lex "$nfa", $P101 
    .lex "self", _lex_param_0 
    .lex "$pos", _lex_param_1 
    .lex "$name", _lex_param_2 
    .lex "@labels", _lex_param_3 
    nqp_get_sc_object $P5001, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P101, $P5001
.annotate 'line', 731
    nqp_decontainerize $P5003, _lex_param_0
    get_how $P5002, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    .const 'Sub' $P5006 = 'cuid_97_1351021530.153' 
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
.sub "" :subid("cuid_97_1351021530.153") :anon :lex :outer("cuid_47_1351021530.153")
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
.sub "!alt_nfa" :subid("cuid_48_1351021530.153") :anon :lex :outer("cuid_70_1351021530.153")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 735
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param string _lex_param_2 
    .const 'Sub' $P5018 = 'cuid_98_1351021530.153' 
    capture_lex $P5018 
    .lex "$nfa", $P101 
    .lex "@fates", $P102 
    .lex "$start", $I101 
    .lex "$fate", $I102 
    .lex "self", _lex_param_0 
    .lex "$regex", _lex_param_1 
    .lex "$name", _lex_param_2 
    nqp_get_sc_object $P5001, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P101, $P5001
    new $P5002, 'ResizablePMCArray'
    set $P102, $P5002
    set $I101, 0
    set $I102, 0
.annotate 'line', 736
    nqp_get_sc_object $P5006, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 0
    nqp_get_package_through_who $P5005, $P5006, "QRegex"
    get_who $P5004, $P5005
    set $P5003, $P5004["NFA"]
    unless_null $P5003, fallback719
    nqp_get_sc_object $P5007, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5003, $P5007
  fallback719:
    $P5008 = $P5003."new"()
    set $P101, $P5008
.annotate 'line', 737
    $P5010 = $P101."states"()
    set $P5009, $P5010[0]
    unless_null $P5009, fallback720
    nqp_get_sc_object $P5011, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5009, $P5011
  fallback720:
    set $P102, $P5009
    set $I101, 1
    set $I102, 0
.annotate 'line', 740
    $P5015 = _lex_param_1."ALT_NFA"(_lex_param_2)
    set $P5012, $P5015
    iter $P5014, $P5015
  for_next721:
    unless $P5014, for_done723
    shift $P5017, $P5014
  for_redo722:
    .const 'Sub' $P5016 = 'cuid_98_1351021530.153' 
    capture_lex $P5016
    $P5012 = $P5016($P5017)
    goto for_next721
  for_done723:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_98_1351021530.153") :anon :lex :outer("cuid_48_1351021530.153")
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
.sub "!precompute_nfas" :subid("cuid_49_1351021530.153") :anon :lex :outer("cuid_70_1351021530.153")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 748
    .param pmc _lex_param_0 
    .const 'Sub' $P5023 = 'cuid_101_1351021530.153' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_102_1351021530.153' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_104_1351021530.153' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_106_1351021530.153' 
    capture_lex $P5023 
    .lex "%protorx", $P101 
    .lex "&precomp_alt_nfas", $P102 
    .lex "self", _lex_param_0 
    new $P5001, 'Hash'
    set $P101, $P5001
    .const 'Sub' $P5002 = 'cuid_101_1351021530.153' 
    capture_lex $P5002
    set $P102, $P5002
.annotate 'line', 750
    nqp_decontainerize $P5004, _lex_param_0
    get_how $P5003, $P5004
    nqp_decontainerize $P5005, _lex_param_0
    .const 'Sub' $P5007 = 'cuid_102_1351021530.153' 
    capture_lex $P5007
    newclosure $P5006, $P5007
    $P5008 = $P5003."cache"($P5005, "!protoregex_table", $P5006)
    set $P101, $P5008
    set $P5009, $P101
    iter $P5011, $P101
  for_next729:
    unless $P5011, for_done731
    shift $P5013, $P5011
  for_redo730:
    .const 'Sub' $P5012 = 'cuid_104_1351021530.153' 
    capture_lex $P5012
    $P5009 = $P5012($P5013)
    goto for_next729
  for_done731:
.annotate 'line', 763
    nqp_decontainerize $P5018, _lex_param_0
    get_how $P5017, $P5018
    nqp_decontainerize $P5019, _lex_param_0
    $P5020 = $P5017."methods"($P5019)
    set $P5014, $P5020
    iter $P5016, $P5020
  for_next737:
    unless $P5016, for_done739
    shift $P5022, $P5016
  for_redo738:
    .const 'Sub' $P5021 = 'cuid_106_1351021530.153' 
    capture_lex $P5021
    $P5014 = $P5021($P5022)
    goto for_next737
  for_done739:
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "precomp_alt_nfas" :subid("cuid_101_1351021530.153") :anon :lex :outer("cuid_49_1351021530.153")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 756
    .param pmc _lex_param_0 
    .const 'Sub' $P5009 = 'cuid_100_1351021530.153' 
    capture_lex $P5009 
    .lex "$meth", _lex_param_0 
    can $I5001, _lex_param_0, "ALT_NFAS"
    box $P5008, $I5001
    set $P5007, $P5008
    unless $I5001 goto if227_end725 
.annotate 'line', 757
.annotate 'line', 758
    $P5004 = _lex_param_0."ALT_NFAS"()
    set $P5001, $P5004
    iter $P5003, $P5004
  for_next726:
    unless $P5003, for_done728
    shift $P5006, $P5003
  for_redo727:
    .const 'Sub' $P5005 = 'cuid_100_1351021530.153' 
    capture_lex $P5005
    $P5001 = $P5005($P5006)
    goto for_next726
  for_done728:
    set $P5007, $P5001
  if227_end725:
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_100_1351021530.153") :anon :lex :outer("cuid_101_1351021530.153")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 758
    .param pmc _lex_param_0 
    .const 'Sub' $P5009 = 'cuid_99_1351021530.153' 
    capture_lex $P5009 
    .lex "$name", _lex_param_0 
.annotate 'line', 759
    find_lex $P5003, "self"
    nqp_decontainerize $P5002, $P5003
    get_how $P5001, $P5002
    find_lex $P5005, "self"
    nqp_decontainerize $P5004, $P5005
    .const 'Sub' $P5007 = 'cuid_99_1351021530.153' 
    capture_lex $P5007
    newclosure $P5006, $P5007
    $P5008 = $P5001."cache"($P5004, _lex_param_0, $P5006)
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_99_1351021530.153") :anon :lex :outer("cuid_100_1351021530.153")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 759

    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    find_lex $P5003, "$meth"
    find_lex $P5004, "$name"
    $P5005 = $P5001."!alt_nfa"($P5003, $P5004)
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_102_1351021530.153") :anon :lex :outer("cuid_49_1351021530.153")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 750

    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    $P5003 = $P5001."!protoregex_table"()
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_104_1351021530.153") :anon :lex :outer("cuid_49_1351021530.153")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 751
    .param pmc _lex_param_0 
    .const 'Sub' $P5010 = 'cuid_103_1351021530.153' 
    capture_lex $P5010 
    .lex "$_", _lex_param_0 
.annotate 'line', 752
    find_lex $P5003, "self"
    nqp_decontainerize $P5002, $P5003
    get_how $P5001, $P5002
    find_lex $P5005, "self"
    nqp_decontainerize $P5004, $P5005
    $P5006 = _lex_param_0."key"()
    .const 'Sub' $P5008 = 'cuid_103_1351021530.153' 
    capture_lex $P5008
    newclosure $P5007, $P5008
    $P5009 = $P5001."cache"($P5004, $P5006, $P5007)
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_103_1351021530.153") :anon :lex :outer("cuid_104_1351021530.153")
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
.sub "" :subid("cuid_106_1351021530.153") :anon :lex :outer("cuid_49_1351021530.153")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 763
    .param pmc _lex_param_0 
    .const 'Sub' $P5009 = 'cuid_105_1351021530.153' 
    capture_lex $P5009 
    .lex "$meth", _lex_param_0 
.annotate 'line', 764
    "&precomp_alt_nfas"(_lex_param_0)
    can $I5001, _lex_param_0, "NESTED_CODES"
    box $P5008, $I5001
    set $P5007, $P5008
    unless $I5001 goto if228_end733 
.annotate 'line', 765
.annotate 'line', 766
    $P5004 = _lex_param_0."NESTED_CODES"()
    set $P5001, $P5004
    iter $P5003, $P5004
  for_next734:
    unless $P5003, for_done736
    shift $P5006, $P5003
  for_redo735:
    .const 'Sub' $P5005 = 'cuid_105_1351021530.153' 
    capture_lex $P5005
    $P5001 = $P5005($P5006)
    goto for_next734
  for_done736:
    set $P5007, $P5001
  if228_end733:
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_105_1351021530.153") :anon :lex :outer("cuid_106_1351021530.153")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 766
    .param pmc _lex_param_0 
    .lex "$code", _lex_param_0 
.annotate 'line', 767
    $P5001 = "&precomp_alt_nfas"(_lex_param_0)
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "!BACKREF" :subid("cuid_50_1351021530.153") :anon :lex :outer("cuid_70_1351021530.153")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 773
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5032 = 'cuid_107_1351021530.153' 
    capture_lex $P5032 
    .lex "$cur", $P101 
    .lex "$n", $I101 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    .local pmc tmp_7 
    nqp_get_sc_object $P5001, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P101, $P5001
    set $I101, 0
.annotate 'line', 774
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start"()
    set $P101, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!cstack"
    unless $P5006 goto if229_else740 
    nqp_decontainerize $P5007, _lex_param_0
    find_lex $P5008, "$?CLASS"
    repr_get_attr_obj $P5009, $P5007, $P5008, "$!cstack"
    elements $I5001, $P5009
    set $N5002, $I5001
    set $N5003, 1
    sub $N5001, $N5002, $N5003
    box $P5011, $N5001
    set $P5010, $P5011
    goto if229_end741
  if229_else740:
    box $P5012, -1
    set $P5010, $P5012
  if229_end741:
    set $I5002, $P5010
    set $I101, $I5002
    new $P5028, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5028, while230_handlers745
    push_eh $P5028
  while230_test742:
    set $N5004, $I101
    set $N5005, 0
    isge $I5003, $N5004, $N5005
    set $I5007, $I5003
    unless $I5003 goto if231_end748 
    nqp_decontainerize $P5015, _lex_param_0
    find_lex $P5016, "$?CLASS"
    repr_get_attr_obj $P5017, $P5015, $P5016, "$!cstack"
    set $P5014, $P5017[$I101]
    unless_null $P5014, fallback751
    nqp_get_sc_object $P5018, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5014, $P5018
  fallback751:
    find_lex $P5019, "$?CLASS"
    getattribute $P5013, $P5014, $P5019, "$!name"
    isnull $I5004, $P5013
    set $I5006, $I5004
    if $I5004 goto unless232_end750 
    nqp_decontainerize $P5022, _lex_param_0
    find_lex $P5023, "$?CLASS"
    repr_get_attr_obj $P5024, $P5022, $P5023, "$!cstack"
    set $P5021, $P5024[$I101]
    unless_null $P5021, fallback752
    nqp_get_sc_object $P5025, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5021, $P5025
  fallback752:
    find_lex $P5026, "$?CLASS"
    getattribute $P5020, $P5021, $P5026, "$!name"
    set $S5001, $P5020
    set $S5002, _lex_param_1
    isne $I5005, $S5001, $S5002
    set $I5006, $I5005
  unless232_end750:
    set $I5007, $I5006
  if231_end748:
    box $P5029, $I5007
    set $P5027, $P5029
    unless $I5007 goto while230_done746 
  while230_redo744:
    box $P5027, $I101
    set tmp_7, $P5027
    set $N5007, tmp_7
    set $N5008, 1
    sub $N5006, $N5007, $N5008
    set $I5008, $N5006
    set $I101, $I5008
    set $P5027, tmp_7
    goto while230_test742 
  while230_handlers745:
    .get_results ($P5028)
    pop_upto_eh $P5028
    getattribute $P5028, $P5028, 'type'
    eq $P5028, .CONTROL_LOOP_NEXT, while230_test742
    eq $P5028, .CONTROL_LOOP_REDO, while230_redo744
  while230_done746:
    pop_eh 
    set $N5006, $I101
    set $N5007, 0
    isge $I5008, $N5006, $N5007
    unless $I5008 goto if233_end754 
    .const 'Sub' $P5030 = 'cuid_107_1351021530.153' 
    capture_lex $P5030
    $P5031 = $P5030()
  if233_end754:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_107_1351021530.153") :anon :lex :outer("cuid_50_1351021530.153")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 778
    .lex "$subcur", $P101 
    .lex "$litlen", $I101 
    nqp_get_sc_object $P5001, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P101, $P5001
    set $I101, 0
    find_lex $P5004, "self"
    nqp_decontainerize $P5003, $P5004
    find_lex $P5005, "$?CLASS"
    repr_get_attr_obj $P5006, $P5003, $P5005, "$!cstack"
    find_lex $I5001, "$n"
    set $P5002, $P5006[$I5001]
    unless_null $P5002, fallback755
    nqp_get_sc_object $P5007, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5002, $P5007
  fallback755:
    set $P101, $P5002
.annotate 'line', 780
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
.annotate 'line', 783
    $P5019 = $P101."from"()
    set $I5005, $P5019
    substr $S5003, $S5004, $I5005, $I101
    iseq $I5003, $S5001, $S5003
    box $P5026, $I5003
    set $P5025, $P5026
    unless $I5003 goto if234_end757 
.annotate 'line', 781
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
  if234_end757:
    .return ($P5025) 
.end
.HLL "nqp"
.namespace []
.sub "!LITERAL" :subid("cuid_51_1351021530.153") :anon :lex :outer("cuid_70_1351021530.153")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 788
    .param pmc _lex_param_0 
    .param string _lex_param_1 
    .param int _lex_param_2 :optional 
    .param int haz_param_19 :opt_flag 
    if haz_param_19, default764
    set $I5010, 0
    set _lex_param_2, $I5010
  default764:
    .lex "$cur", $P101 
    .lex "$litlen", $I101 
    .lex "self", _lex_param_0 
    .lex "$str", _lex_param_1 
    .lex "$i", _lex_param_2 
    nqp_get_sc_object $P5001, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P101, $P5001
    set $I101, 0
.annotate 'line', 789
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start"()
    set $P101, $P5003
    length $I5001, _lex_param_1
    set $I101, $I5001
    set $N5001, $I101
    set $N5002, 1
    islt $I5002, $N5001, $N5002
    set $I5008, $I5002
    if $I5002 goto unless236_end761 
    unless _lex_param_2 goto if237_else762 
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
    goto if237_end763
  if237_else762:
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_str $S5006, $P5008, $P5009, "$!target"
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5006, $P5010, $P5011, "$!pos"
    substr $S5005, $S5006, $I5006, $I101
    iseq $I5005, $S5005, _lex_param_1
    set $I5007, $I5005
  if237_end763:
    set $I5008, $I5007
  unless236_end761:
    unless $I5008 goto if235_end759 
.annotate 'line', 791
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5009, $P5012, $P5013, "$!pos"
    set $N5004, $I5009
    set $N5005, $I101
    add $N5003, $N5004, $N5005
    $P5014 = $P101."!cursor_pass"($N5003)
  if235_end759:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "at" :subid("cuid_52_1351021530.153") :anon :lex :outer("cuid_70_1351021530.153")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 798
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    .lex "$pos", _lex_param_1 
    nqp_get_sc_object $P5001, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P101, $P5001
.annotate 'line', 799
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start"()
    set $P101, $P5003
    set $N5001, _lex_param_1
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_int $I5002, $P5004, $P5005, "$!pos"
    set $N5002, $I5002
    iseq $I5001, $N5001, $N5002
    unless $I5001 goto if238_end766 
.annotate 'line', 800
    nqp_decontainerize $P5006, _lex_param_0
    find_lex $P5007, "$?CLASS"
    repr_get_attr_int $I5003, $P5006, $P5007, "$!pos"
    $P5008 = $P101."!cursor_pass"($I5003)
  if238_end766:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "before" :subid("cuid_53_1351021530.153") :anon :lex :outer("cuid_70_1351021530.153")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 804
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    .lex "$regex", _lex_param_1 
    nqp_get_sc_object $P5001, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P101, $P5001
.annotate 'line', 805
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start"()
    set $P101, $P5003
    find_lex $P5004, "$?CLASS"
    nqp_decontainerize $P5005, _lex_param_0
    find_lex $P5006, "$?CLASS"
    repr_get_attr_int $I5001, $P5005, $P5006, "$!pos"
    repr_bind_attr_int $P101, $P5004, "$!pos", $I5001
.annotate 'line', 807
    $P5007 = _lex_param_1($P101)
    find_lex $P5008, "$?CLASS"
    repr_get_attr_int $I5003, $P5007, $P5008, "$!pos"
    set $N5001, $I5003
    set $N5002, 0
    isge $I5002, $N5001, $N5002
    unless $I5002 goto if239_else767 
.annotate 'line', 808
    nqp_decontainerize $P5009, _lex_param_0
    find_lex $P5010, "$?CLASS"
    repr_get_attr_int $I5004, $P5009, $P5010, "$!pos"
    $P5011 = $P101."!cursor_pass"($I5004, "before")
    goto if239_end768
  if239_else767:
    find_lex $P5012, "$?CLASS"
    repr_bind_attr_int $P101, $P5012, "$!pos", -3
  if239_end768:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "after" :subid("cuid_54_1351021530.153") :anon :lex :outer("cuid_70_1351021530.153")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 815
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    .lex "$regex", _lex_param_1 
    nqp_get_sc_object $P5001, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P101, $P5001
.annotate 'line', 816
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start"()
    set $P101, $P5003
    find_lex $P5004, "$?CLASS"
.annotate 'line', 817
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
.annotate 'line', 820
    $P5019 = _lex_param_1($P101)
    find_lex $P5020, "$?CLASS"
    repr_get_attr_int $I5008, $P5019, $P5020, "$!pos"
    set $N5007, $I5008
    set $N5008, 0
    isge $I5007, $N5007, $N5008
    unless $I5007 goto if240_else769 
.annotate 'line', 821
    nqp_decontainerize $P5021, _lex_param_0
    find_lex $P5022, "$?CLASS"
    repr_get_attr_int $I5009, $P5021, $P5022, "$!pos"
    $P5023 = $P101."!cursor_pass"($I5009, "after")
    goto if240_end770
  if240_else769:
    find_lex $P5024, "$?CLASS"
    repr_bind_attr_int $P101, $P5024, "$!pos", -3
  if240_end770:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "ws" :subid("cuid_55_1351021530.153") :anon :lex :outer("cuid_70_1351021530.153")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 826
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
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
    isge $I5001, $N5001, $N5002
    unless $I5001 goto if241_else771 
.annotate 'line', 830
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_int $I5004, $P5008, $P5009, "$!pos"
    $P5010 = $P101."!cursor_pass"($I5004, "ws")
    goto if241_end772
  if241_else771:
    nqp_decontainerize $P5011, _lex_param_0
    find_lex $P5012, "$?CLASS"
    repr_get_attr_int $I5006, $P5011, $P5012, "$!pos"
    set $N5003, $I5006
    set $N5004, 1
    islt $I5005, $N5003, $N5004
    set $I5010, $I5005
    if $I5005 goto unless244_end778 
    nqp_decontainerize $P5013, _lex_param_0
    find_lex $P5014, "$?CLASS"
    repr_get_attr_str $S5002, $P5013, $P5014, "$!target"
    nqp_decontainerize $P5015, _lex_param_0
    find_lex $P5016, "$?CLASS"
    repr_get_attr_int $I5009, $P5015, $P5016, "$!pos"
    is_cclass $I5008, .CCLASS_WORD, $S5002, $I5009
    not $I5007, $I5008
    set $I5010, $I5007
  unless244_end778:
    set $I5015, $I5010
    if $I5010 goto unless243_end776 
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
  unless243_end776:
    box $P5029, $I5015
    set $P5028, $P5029
    unless $I5015 goto if242_end774 
.annotate 'line', 834
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
  if242_end774:
  if241_end772:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "ww" :subid("cuid_56_1351021530.153") :anon :lex :outer("cuid_70_1351021530.153")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 841
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P101, $P5001
.annotate 'line', 842
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
    unless $I5001 goto if248_end786 
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
  if248_end786:
    set $I5009, $I5006
    unless $I5006 goto if247_end784 
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_str $S5002, $P5010, $P5011, "$!target"
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5008, $P5012, $P5013, "$!pos"
    is_cclass $I5007, .CCLASS_WORD, $S5002, $I5008
    set $I5009, $I5007
  if247_end784:
    set $I5013, $I5009
    unless $I5009 goto if246_end782 
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
  if246_end782:
    unless $I5013 goto if245_end780 
.annotate 'line', 843
    nqp_decontainerize $P5018, _lex_param_0
    find_lex $P5019, "$?CLASS"
    repr_get_attr_int $I5014, $P5018, $P5019, "$!pos"
    $P5020 = $P101."!cursor_pass"($I5014, "ww")
  if245_end780:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "wb" :subid("cuid_57_1351021530.153") :anon :lex :outer("cuid_70_1351021530.153")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 851
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P101, $P5001
.annotate 'line', 852
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
    unless $I5001 goto if252_end794 
    nqp_decontainerize $P5006, _lex_param_0
    find_lex $P5007, "$?CLASS"
    repr_get_attr_str $S5001, $P5006, $P5007, "$!target"
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_int $I5004, $P5008, $P5009, "$!pos"
    is_cclass $I5003, .CCLASS_WORD, $S5001, $I5004
    set $I5005, $I5003
  if252_end794:
    set $I5013, $I5005
    if $I5005 goto unless251_end792 
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
    unless $I5006 goto if253_end796 
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
  if253_end796:
    set $I5013, $I5012
  unless251_end792:
    set $I5020, $I5013
    if $I5013 goto unless250_end790 
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
  unless250_end790:
    unless $I5020 goto if249_end788 
.annotate 'line', 853
    nqp_decontainerize $P5026, _lex_param_0
    find_lex $P5027, "$?CLASS"
    repr_get_attr_int $I5021, $P5026, $P5027, "$!pos"
    $P5028 = $P101."!cursor_pass"($I5021, "wb")
  if249_end788:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "ident" :subid("cuid_58_1351021530.153") :anon :lex :outer("cuid_70_1351021530.153")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 862
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P101, $P5001
.annotate 'line', 863
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
    unless $I5001 goto if255_end800 
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
    if $I5004 goto unless256_end802 
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_str $S5003, $P5012, $P5013, "$!target"
    nqp_decontainerize $P5014, _lex_param_0
    find_lex $P5015, "$?CLASS"
    repr_get_attr_int $I5008, $P5014, $P5015, "$!pos"
    is_cclass $I5007, .CCLASS_ALPHABETIC, $S5003, $I5008
    set $I5009, $I5007
  unless256_end802:
    set $I5010, $I5009
  if255_end800:
    unless $I5010 goto if254_end798 
.annotate 'line', 864
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
  if254_end798:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "alpha" :subid("cuid_59_1351021530.153") :anon :lex :outer("cuid_70_1351021530.153")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 874
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P101, $P5001
.annotate 'line', 875
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
    unless $I5001 goto if258_end806 
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_str $S5002, $P5008, $P5009, "$!target"
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, .CCLASS_ALPHABETIC, $S5002, $I5005
    set $I5009, $I5004
    if $I5004 goto unless259_end808 
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
  unless259_end808:
    set $I5010, $I5009
  if258_end806:
    unless $I5010 goto if257_end804 
.annotate 'line', 876
    nqp_decontainerize $P5016, _lex_param_0
    find_lex $P5017, "$?CLASS"
    repr_get_attr_int $I5011, $P5016, $P5017, "$!pos"
    set $N5006, $I5011
    set $N5007, 1
    add $N5005, $N5006, $N5007
    $P5018 = $P101."!cursor_pass"($N5005, "alpha")
  if257_end804:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "alnum" :subid("cuid_60_1351021530.153") :anon :lex :outer("cuid_70_1351021530.153")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 883
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
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
    set $I5010, $I5001
    unless $I5001 goto if261_end812 
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_str $S5002, $P5008, $P5009, "$!target"
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, .CCLASS_ALPHANUMERIC, $S5002, $I5005
    set $I5009, $I5004
    if $I5004 goto unless262_end814 
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
  unless262_end814:
    set $I5010, $I5009
  if261_end812:
    unless $I5010 goto if260_end810 
.annotate 'line', 885
    nqp_decontainerize $P5016, _lex_param_0
    find_lex $P5017, "$?CLASS"
    repr_get_attr_int $I5011, $P5016, $P5017, "$!pos"
    set $N5006, $I5011
    set $N5007, 1
    add $N5005, $N5006, $N5007
    $P5018 = $P101."!cursor_pass"($N5005, "alnum")
  if260_end810:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "upper" :subid("cuid_61_1351021530.153") :anon :lex :outer("cuid_70_1351021530.153")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 892
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P101, $P5001
.annotate 'line', 893
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
    unless $I5001 goto if264_end818 
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_str $S5002, $P5008, $P5009, "$!target"
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, .CCLASS_UPPERCASE, $S5002, $I5005
    set $I5006, $I5004
  if264_end818:
    unless $I5006 goto if263_end816 
.annotate 'line', 894
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5007, $P5012, $P5013, "$!pos"
    set $N5004, $I5007
    set $N5005, 1
    add $N5003, $N5004, $N5005
    $P5014 = $P101."!cursor_pass"($N5003, "upper")
  if263_end816:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "lower" :subid("cuid_62_1351021530.153") :anon :lex :outer("cuid_70_1351021530.153")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 900
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P101, $P5001
.annotate 'line', 901
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
    unless $I5001 goto if266_end822 
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_str $S5002, $P5008, $P5009, "$!target"
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, .CCLASS_LOWERCASE, $S5002, $I5005
    set $I5006, $I5004
  if266_end822:
    unless $I5006 goto if265_end820 
.annotate 'line', 902
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5007, $P5012, $P5013, "$!pos"
    set $N5004, $I5007
    set $N5005, 1
    add $N5003, $N5004, $N5005
    $P5014 = $P101."!cursor_pass"($N5003, "lower")
  if265_end820:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "digit" :subid("cuid_63_1351021530.153") :anon :lex :outer("cuid_70_1351021530.153")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 908
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P101, $P5001
.annotate 'line', 909
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
    unless $I5001 goto if268_end826 
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_str $S5002, $P5008, $P5009, "$!target"
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, .CCLASS_NUMERIC, $S5002, $I5005
    set $I5006, $I5004
  if268_end826:
    unless $I5006 goto if267_end824 
.annotate 'line', 910
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5007, $P5012, $P5013, "$!pos"
    set $N5004, $I5007
    set $N5005, 1
    add $N5003, $N5004, $N5005
    $P5014 = $P101."!cursor_pass"($N5003, "digit")
  if267_end824:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "xdigit" :subid("cuid_64_1351021530.153") :anon :lex :outer("cuid_70_1351021530.153")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 916
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P101, $P5001
.annotate 'line', 917
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
    unless $I5001 goto if270_end830 
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_str $S5002, $P5008, $P5009, "$!target"
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, .CCLASS_HEXADECIMAL, $S5002, $I5005
    set $I5006, $I5004
  if270_end830:
    unless $I5006 goto if269_end828 
.annotate 'line', 918
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5007, $P5012, $P5013, "$!pos"
    set $N5004, $I5007
    set $N5005, 1
    add $N5003, $N5004, $N5005
    $P5014 = $P101."!cursor_pass"($N5003, "xdigit")
  if269_end828:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "space" :subid("cuid_65_1351021530.153") :anon :lex :outer("cuid_70_1351021530.153")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 924
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P101, $P5001
.annotate 'line', 925
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
    unless $I5001 goto if272_end834 
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_str $S5002, $P5008, $P5009, "$!target"
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, .CCLASS_WHITESPACE, $S5002, $I5005
    set $I5006, $I5004
  if272_end834:
    unless $I5006 goto if271_end832 
.annotate 'line', 926
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5007, $P5012, $P5013, "$!pos"
    set $N5004, $I5007
    set $N5005, 1
    add $N5003, $N5004, $N5005
    $P5014 = $P101."!cursor_pass"($N5003, "space")
  if271_end832:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "blank" :subid("cuid_66_1351021530.153") :anon :lex :outer("cuid_70_1351021530.153")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 932
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P101, $P5001
.annotate 'line', 933
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
    unless $I5001 goto if274_end838 
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_str $S5002, $P5008, $P5009, "$!target"
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, .CCLASS_BLANK, $S5002, $I5005
    set $I5006, $I5004
  if274_end838:
    unless $I5006 goto if273_end836 
.annotate 'line', 934
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5007, $P5012, $P5013, "$!pos"
    set $N5004, $I5007
    set $N5005, 1
    add $N5003, $N5004, $N5005
    $P5014 = $P101."!cursor_pass"($N5003, "blank")
  if273_end836:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "cntrl" :subid("cuid_67_1351021530.153") :anon :lex :outer("cuid_70_1351021530.153")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 940
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P101, $P5001
.annotate 'line', 941
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
    unless $I5001 goto if276_end842 
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_str $S5002, $P5008, $P5009, "$!target"
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, .CCLASS_CONTROL, $S5002, $I5005
    set $I5006, $I5004
  if276_end842:
    unless $I5006 goto if275_end840 
.annotate 'line', 942
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5007, $P5012, $P5013, "$!pos"
    set $N5004, $I5007
    set $N5005, 1
    add $N5003, $N5004, $N5005
    $P5014 = $P101."!cursor_pass"($N5003, "cntrl")
  if275_end840:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "punct" :subid("cuid_68_1351021530.153") :anon :lex :outer("cuid_70_1351021530.153")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 948
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P101, $P5001
.annotate 'line', 949
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
    unless $I5001 goto if278_end846 
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_str $S5002, $P5008, $P5009, "$!target"
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, .CCLASS_PUNCTUATION, $S5002, $I5005
    set $I5006, $I5004
  if278_end846:
    unless $I5006 goto if277_end844 
.annotate 'line', 950
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5007, $P5012, $P5013, "$!pos"
    set $N5004, $I5007
    set $N5005, 1
    add $N5003, $N5004, $N5005
    $P5014 = $P101."!cursor_pass"($N5003, "punct")
  if277_end844:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "FAILGOAL" :subid("cuid_69_1351021530.153") :anon :lex :outer("cuid_70_1351021530.153")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 956
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :optional 
    .param int haz_param_20 :opt_flag 
    if haz_param_20, default849
    nqp_get_sc_object $P5004, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set _lex_param_2, $P5004
  default849:
    .lex "self", _lex_param_0 
    .lex "$goal", _lex_param_1 
    .lex "$dba", _lex_param_2 
    if _lex_param_2 goto unless279_end848 
.annotate 'line', 957

                $P5001 = getinterp
                $P5001 = $P5001['sub';1]
            
    set $S5001, $P5001
    box $P5002, $S5001
    set _lex_param_2, $P5002
  unless279_end848:
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
.sub "" :subid("cuid_83_1351021530.153") :anon :lex :outer("cuid_1_1351021530.153")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 968
    .const 'Sub' $P5013 = 'cuid_71_1351021530.153' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_72_1351021530.153' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_73_1351021530.153' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_74_1351021530.153' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_75_1351021530.153' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_76_1351021530.153' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_77_1351021530.153' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_78_1351021530.153' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_79_1351021530.153' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_80_1351021530.153' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_81_1351021530.153' 
    capture_lex $P5013 
    .const 'Sub' $P5013 = 'cuid_82_1351021530.153' 
    capture_lex $P5013 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_71_1351021530.153' 
    capture_lex $P5001
    .const 'Sub' $P5002 = 'cuid_72_1351021530.153' 
    capture_lex $P5002
    .const 'Sub' $P5003 = 'cuid_73_1351021530.153' 
    capture_lex $P5003
    .const 'Sub' $P5004 = 'cuid_74_1351021530.153' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_75_1351021530.153' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_76_1351021530.153' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_77_1351021530.153' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_78_1351021530.153' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_79_1351021530.153' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_80_1351021530.153' 
    capture_lex $P5010
    .const 'Sub' $P5011 = 'cuid_81_1351021530.153' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_82_1351021530.153' 
    capture_lex $P5012
    .return ($P5012) 
.end
.HLL "nqp"
.namespace []
.sub "from" :subid("cuid_71_1351021530.153") :anon :lex :outer("cuid_83_1351021530.153")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 975
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 73
    repr_get_attr_int $I5001, $P5001, $P5002, "$!from"
    .return ($I5001) 
.end
.HLL "nqp"
.namespace []
.sub "orig" :subid("cuid_72_1351021530.153") :anon :lex :outer("cuid_83_1351021530.153")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 976
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 73
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!orig"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "to" :subid("cuid_73_1351021530.153") :anon :lex :outer("cuid_83_1351021530.153")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 977
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 73
    repr_get_attr_int $I5001, $P5001, $P5002, "$!to"
    .return ($I5001) 
.end
.HLL "nqp"
.namespace []
.sub "CURSOR" :subid("cuid_74_1351021530.153") :anon :lex :outer("cuid_83_1351021530.153")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 978
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 73
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!cursor"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "Str" :subid("cuid_75_1351021530.153") :anon :lex :outer("cuid_83_1351021530.153")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 979
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 73
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!orig"
    set $S5002, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 73
    repr_get_attr_int $I5001, $P5004, $P5005, "$!from"
    nqp_decontainerize $P5006, _lex_param_0
    nqp_get_sc_object $P5007, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 73
    repr_get_attr_int $I5002, $P5006, $P5007, "$!to"
    set $N5002, $I5002
    nqp_decontainerize $P5008, _lex_param_0
    nqp_get_sc_object $P5009, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 73
    repr_get_attr_int $I5003, $P5008, $P5009, "$!from"
    set $N5003, $I5003
    sub $N5001, $N5002, $N5003
    set $I5004, $N5001
    substr $S5001, $S5002, $I5001, $I5004
    .return ($S5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_76_1351021530.153") :anon :lex :outer("cuid_83_1351021530.153")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 980
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    $P5002 = $P5001."Str"()
    set $N5001, $P5002
    .return ($N5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_77_1351021530.153") :anon :lex :outer("cuid_83_1351021530.153")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 981
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    $P5002 = $P5001."Str"()
    set $N5001, $P5002
    .return ($N5001) 
.end
.HLL "nqp"
.namespace []
.sub "Bool" :subid("cuid_78_1351021530.153") :anon :lex :outer("cuid_83_1351021530.153")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 982
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 73
    repr_get_attr_int $I5002, $P5001, $P5002, "$!to"
    set $N5001, $I5002
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 73
    repr_get_attr_int $I5003, $P5003, $P5004, "$!from"
    set $N5002, $I5003
    isge $I5001, $N5001, $N5002
    .return ($I5001) 
.end
.HLL "nqp"
.namespace []
.sub "chars" :subid("cuid_79_1351021530.153") :anon :lex :outer("cuid_83_1351021530.153")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 983
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 73
    repr_get_attr_int $I5002, $P5001, $P5002, "$!to"
    set $N5001, $I5002
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 73
    repr_get_attr_int $I5003, $P5003, $P5004, "$!from"
    set $N5002, $I5003
    isge $I5001, $N5001, $N5002
    unless $I5001 goto if280_else850 
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 73
    repr_get_attr_int $I5004, $P5005, $P5006, "$!to"
    set $N5004, $I5004
    nqp_decontainerize $P5007, _lex_param_0
    nqp_get_sc_object $P5008, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 73
    repr_get_attr_int $I5005, $P5007, $P5008, "$!from"
    set $N5005, $I5005
    sub $N5003, $N5004, $N5005
    box $P5010, $N5003
    set $P5009, $P5010
    goto if280_end851
  if280_else850:
    box $P5011, 0
    set $P5009, $P5011
  if280_end851:
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "!make" :subid("cuid_80_1351021530.153") :anon :lex :outer("cuid_83_1351021530.153")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 985
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$ast", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 73
    repr_bind_attr_obj $P5001, $P5002, "$!ast", _lex_param_1
    .return (_lex_param_1) 
.end
.HLL "nqp"
.namespace []
.sub "ast" :subid("cuid_81_1351021530.153") :anon :lex :outer("cuid_83_1351021530.153")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 986
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 73
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!ast"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "!dump_str" :subid("cuid_82_1351021530.153") :anon :lex :outer("cuid_83_1351021530.153")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 988
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5019 = 'cuid_142_1351021530.153' 
    capture_lex $P5019 
    .const 'Sub' $P5019 = 'cuid_143_1351021530.153' 
    capture_lex $P5019 
    .lex "&dump_array", $P101 
    .lex "$str", $P102 
    .lex "self", _lex_param_0 
    .lex "$key", _lex_param_1 
    .const 'Sub' $P5001 = 'cuid_142_1351021530.153' 
    capture_lex $P5001
    set $P101, $P5001
    nqp_get_sc_object $P5002, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P102, $P5002
    set $S5006, _lex_param_1
    concat $S5005, $S5006, ": "
.annotate 'line', 1000
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
.annotate 'line', 1001
    nqp_decontainerize $P5008, _lex_param_0
    $P5009 = $P5008."list"()
    $P5010 = "&dump_array"(_lex_param_1, $P5009)
    set $S5012, $P5010
    concat $S5010, $S5011, $S5012
    box $P5011, $S5010
    set $P102, $P5011
.annotate 'line', 1002
    nqp_decontainerize $P5015, _lex_param_0
    $P5016 = $P5015."hash"()
    set $P5012, $P5016
    iter $P5014, $P5016
  for_next859:
    unless $P5014, for_done861
    shift $P5018, $P5014
  for_redo860:
    .const 'Sub' $P5017 = 'cuid_143_1351021530.153' 
    capture_lex $P5017
    $P5012 = $P5017($P5018)
    goto for_next859
  for_done861:
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "dump_array" :subid("cuid_142_1351021530.153") :anon :lex :outer("cuid_82_1351021530.153")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 989
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5011 = 'cuid_141_1351021530.153' 
    capture_lex $P5011 
    .lex "$str", $P101 
    .lex "$key", _lex_param_0 
    .lex "$item", _lex_param_1 
    nqp_get_sc_object $P5001, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P101, $P5001
    box $P5002, ""
    set $P101, $P5002
.annotate 'line', 991
    nqp_get_sc_object $P5003, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 42
    $P5004 = $P5003."ACCEPTS"(_lex_param_1)
    unless $P5004 goto if281_else852 
    set $S5002, $P101
.annotate 'line', 992
    $P5005 = _lex_param_1."!dump_str"(_lex_param_0)
    set $S5003, $P5005
    concat $S5001, $S5002, $S5003
    box $P5006, $S5001
    set $P101, $P5006
    goto if281_end853
  if281_else852:
    isnull $I5002, _lex_param_1
    not $I5001, $I5002
    box $P5010, $I5001
    set $P5009, $P5010
    unless $I5001 goto if282_end855 
    .const 'Sub' $P5007 = 'cuid_141_1351021530.153' 
    capture_lex $P5007
    $P5008 = $P5007()
    set $P5009, $P5008
  if282_end855:
  if281_end853:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_141_1351021530.153") :anon :lex :outer("cuid_142_1351021530.153")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 994
    .const 'Sub' $P5009 = 'cuid_140_1351021530.153' 
    capture_lex $P5009 
    .lex "$n", $P101 
    nqp_get_sc_object $P5001, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P101, $P5001
    box $P5002, 0
    set $P101, $P5002
    find_lex $P5006, "$item"
    set $P5003, $P5006
    iter $P5005, $P5006
  for_next856:
    unless $P5005, for_done858
    shift $P5008, $P5005
  for_redo857:
    .const 'Sub' $P5007 = 'cuid_140_1351021530.153' 
    capture_lex $P5007
    $P5003 = $P5007($P5008)
    goto for_next856
  for_done858:
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_140_1351021530.153") :anon :lex :outer("cuid_141_1351021530.153")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 996
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
.sub "" :subid("cuid_143_1351021530.153") :anon :lex :outer("cuid_82_1351021530.153")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1002
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
.sub "" :subid("cuid_89_1351021530.153") :anon :lex :outer("cuid_1_1351021530.153")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1007
    .const 'Sub' $P5010 = 'cuid_84_1351021530.153' 
    capture_lex $P5010 
    .const 'Sub' $P5010 = 'cuid_85_1351021530.153' 
    capture_lex $P5010 
    .const 'Sub' $P5010 = 'cuid_86_1351021530.153' 
    capture_lex $P5010 
    .const 'Sub' $P5010 = 'cuid_87_1351021530.153' 
    capture_lex $P5010 
    .const 'Sub' $P5010 = 'cuid_88_1351021530.153' 
    capture_lex $P5010 
    .lex "$EMPTY_MATCH_LIST", $P101 
    .lex "$EMPTY_MATCH_HASH", $P102 
    .lex "$?PACKAGE", $P103 
    .lex "$?CLASS", $P104 
    nqp_get_sc_object $P5001, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P101, $P5001
    nqp_get_sc_object $P5002, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P102, $P5002
    new $P5003, 'ResizablePMCArray'
    set $P101, $P5003
    new $P5004, 'Hash'
    set $P102, $P5004
    .const 'Sub' $P5005 = 'cuid_84_1351021530.153' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_85_1351021530.153' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_86_1351021530.153' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_87_1351021530.153' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_88_1351021530.153' 
    capture_lex $P5009
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "MATCH" :subid("cuid_84_1351021530.153") :anon :lex :outer("cuid_89_1351021530.153")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1010
    .param pmc _lex_param_0 
    .const 'Sub' $P5008 = 'cuid_144_1351021530.153' 
    capture_lex $P5008 
    .lex "$match", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P101, $P5001
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 86
    getattribute $P5002, $P5003, $P5004, "$!match"
    set $P101, $P5002
    nqp_get_sc_object $P5005, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 73
    type_check $I5001, $P101, $P5005
    set $I5003, $I5001
    if $I5001 goto unless284_end865 
    nqp_ishash $I5002, $P101
    set $I5003, $I5002
  unless284_end865:
    if $I5003 goto unless283_end863 
    .const 'Sub' $P5006 = 'cuid_144_1351021530.153' 
    capture_lex $P5006
    $P5007 = $P5006()
  unless283_end863:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_144_1351021530.153") :anon :lex :outer("cuid_84_1351021530.153")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1012
    .lex "$list", $P101 
    .lex "$hash", $P102 
    .lex "%ch", $P103 
    .lex "$key", $S101 
    .lex "$iter", $P104 
    nqp_get_sc_object $P5001, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P101, $P5001
    nqp_get_sc_object $P5002, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P102, $P5002
    new $P5003, 'Hash'
    set $P103, $P5003
    set $S101, ""
    nqp_get_sc_object $P5004, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P104, $P5004
    find_lex $P5005, "$EMPTY_MATCH_LIST"
    set $P101, $P5005
    find_lex $P5006, "$EMPTY_MATCH_HASH"
    set $P102, $P5006
    nqp_get_sc_object $P5008, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 73
    repr_instance_of $P5007, $P5008
    store_lex "$match", $P5007
    find_lex $P5010, "self"
    nqp_decontainerize $P5009, $P5010
    nqp_get_sc_object $P5011, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 86
    find_lex $P5012, "$match"
    setattribute $P5009, $P5011, "$!match", $P5012
    find_lex $P5013, "$match"
    nqp_get_sc_object $P5014, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 73
    find_lex $P5016, "self"
    nqp_decontainerize $P5015, $P5016
    setattribute $P5013, $P5014, "$!cursor", $P5015
    find_lex $P5017, "$match"
    nqp_get_sc_object $P5018, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 73
    find_lex $P5021, "self"
    nqp_decontainerize $P5020, $P5021
    nqp_get_sc_object $P5022, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 86
    getattribute $P5019, $P5020, $P5022, "$!orig"
    setattribute $P5017, $P5018, "$!orig", $P5019
    find_lex $P5023, "$match"
    nqp_get_sc_object $P5024, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 73
    find_lex $P5026, "self"
    nqp_decontainerize $P5025, $P5026
    nqp_get_sc_object $P5027, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 86
    repr_get_attr_int $I5001, $P5025, $P5027, "$!from"
    repr_bind_attr_int $P5023, $P5024, "$!from", $I5001
    find_lex $P5028, "$match"
    nqp_get_sc_object $P5029, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 73
    find_lex $P5031, "self"
    nqp_decontainerize $P5030, $P5031
    nqp_get_sc_object $P5032, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 86
    repr_get_attr_int $I5002, $P5030, $P5032, "$!pos"
    repr_bind_attr_int $P5028, $P5029, "$!to", $I5002
.annotate 'line', 1021
    find_lex $P5034, "self"
    nqp_decontainerize $P5033, $P5034
    $P5035 = $P5033."CAPHASH"()
    set $P103, $P5035
    iter $P5036, $P103
    set $P104, $P5036
  while285_test866:
    set $P5052, $P104
    unless $P104 goto while285_done870 
  while285_redo868:
.annotate 'line', 1024
    shift $P5037, $P104
    set $S5001, $P5037
    set $S101, $S5001
    iseq $I5003, $S101, "$!from"
    set $I5005, $I5003
    if $I5003 goto unless287_end874 
    iseq $I5004, $S101, "$!to"
    set $I5005, $I5004
  unless287_end874:
    unless $I5005 goto if286_else871 
.annotate 'line', 1026
    find_lex $P5038, "$match"
    nqp_get_sc_object $P5039, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 73
.annotate 'line', 1027
    set $P5040, $P103[$S101]
    unless_null $P5040, fallback875
    nqp_get_sc_object $P5041, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5040, $P5041
  fallback875:
    $P5042 = $P5040."from"()
    set $I5006, $P5042
    repr_bind_attr_int $P5038, $P5039, $S101, $I5006
    box $P5051, $I5006
    set $P5050, $P5051
    goto if286_end872
  if286_else871:
    is_cclass $I5007, .CCLASS_NUMERIC, $S101, 0
    unless $I5007 goto if288_else876 
.annotate 'line', 1029
    if $P101 goto unless289_end879 
    new $P5043, 'ResizablePMCArray'
    set $P101, $P5043
  unless289_end879:
    set $I5008, $S101
    set $P5044, $P103[$S101]
    unless_null $P5044, fallback880
    nqp_get_sc_object $P5045, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5044, $P5045
  fallback880:
    set $P101[$I5008], $P5044
    set $P5049, $P5044
    goto if288_end877
  if288_else876:
.annotate 'line', 1033
    if $P102 goto unless290_end882 
    new $P5046, 'Hash'
    set $P102, $P5046
  unless290_end882:
    set $P5047, $P103[$S101]
    unless_null $P5047, fallback883
    nqp_get_sc_object $P5048, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P5047, $P5048
  fallback883:
    set $P102[$S101], $P5047
    set $P5049, $P5047
  if288_end877:
    set $P5050, $P5049
  if286_end872:
    set $P5052, $P5050
    goto while285_test866 
  while285_done870:
    find_lex $P5053, "$match"
    nqp_get_sc_object $P5054, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 42
    setattribute $P5053, $P5054, "@!array", $P101
    find_lex $P5055, "$match"
    nqp_get_sc_object $P5056, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 42
    setattribute $P5055, $P5056, "%!hash", $P102
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "Bool" :subid("cuid_85_1351021530.153") :anon :lex :outer("cuid_89_1351021530.153")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1044
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5002, _lex_param_0
    find_lex $P5003, "$?CLASS"
    getattribute $P5001, $P5002, $P5003, "$!match"
    isnull $I5002, $P5001
    not $I5001, $I5002
    set $I5004, $I5001
    unless $I5001 goto if291_end885 
    nqp_decontainerize $P5005, _lex_param_0
    find_lex $P5006, "$?CLASS"
    getattribute $P5004, $P5005, $P5006, "$!match"
    istrue $I5003, $P5004
    set $I5004, $I5003
  if291_end885:
    .return ($I5004) 
.end
.HLL "nqp"
.namespace []
.sub "parse" :subid("cuid_86_1351021530.153") :anon :lex :outer("cuid_89_1351021530.153")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1049
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :named("rule") :optional 
    .param int haz_param_21 :opt_flag 
    .param pmc _lex_param_3 :named("actions") :optional 
    .param int haz_param_22 :opt_flag 
    .param pmc _lex_param_4 :slurpy :named 
    if haz_param_21, default888
    box $P5011, "TOP"
    set _lex_param_2, $P5011
  default888:
    if haz_param_22, default889
    nqp_get_sc_object $P5012, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set _lex_param_3, $P5012
  default889:
    .lex "$*ACTIONS", $P101 
    .lex "$cur", $P102 
    .lex "self", _lex_param_0 
    .lex "$target", _lex_param_1 
    .lex "$rule", _lex_param_2 
    .lex "$actions", _lex_param_3 
    .lex "%options", _lex_param_4 
    nqp_get_sc_object $P5001, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P101, $P5001
    nqp_get_sc_object $P5002, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P102, $P5002
    set $P101, _lex_param_3
.annotate 'line', 1051
    nqp_decontainerize $P5003, _lex_param_0
    $P5004 = $P5003."!cursor_init"(_lex_param_1, _lex_param_4 :flat :named)
    set $P102, $P5004
    is_invokable $I5001, _lex_param_2
    unless $I5001 goto if292_else886 
.annotate 'line', 1053
    $P5005 = _lex_param_2($P102)
    $P5006 = $P5005."MATCH"()
    set $P5010, $P5006
    goto if292_end887
  if292_else886:
.annotate 'line', 1054
    set $S5001, _lex_param_2
    find_method $P5007, $P102, $S5001
    $P5008 = $P5007($P102)
    $P5009 = $P5008."MATCH"()
    set $P5010, $P5009
  if292_end887:
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "!INTERPOLATE" :subid("cuid_87_1351021530.153") :anon :lex :outer("cuid_89_1351021530.153")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1057
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5006 = 'cuid_149_1351021530.153' 
    capture_lex $P5006 
    .const 'Sub' $P5006 = 'cuid_150_1351021530.153' 
    capture_lex $P5006 
    .lex "self", _lex_param_0 
    .lex "$var", _lex_param_1 
    root_new $P101, ['parrot';'Continuation']
    set_label $P101, lexotic_890
    .lex "RETURN", $P101
    nqp_islist $I5001, _lex_param_1
    unless $I5001 goto if293_else892 
    .const 'Sub' $P5001 = 'cuid_149_1351021530.153' 
    capture_lex $P5001
    $P5002 = $P5001()
    set $P5005, $P5002
    goto if293_end893
  if293_else892:
    .const 'Sub' $P5003 = 'cuid_150_1351021530.153' 
    capture_lex $P5003
    $P5004 = $P5003()
    set $P5005, $P5004
  if293_end893:
    goto lexotic_891
  lexotic_890:
    .get_results ($P5005)
  lexotic_891:
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_149_1351021530.153") :anon :lex :outer("cuid_87_1351021530.153")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1058
    .const 'Sub' $P5016 = 'cuid_147_1351021530.153' 
    capture_lex $P5016 
    .lex "$maxlen", $I101 
    .lex "$cur", $P101 
    .lex "$pos", $I102 
    .lex "$tgt", $S101 
    .lex "$eos", $I103 
    set $I101, 0
    nqp_get_sc_object $P5001, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P101, $P5001
    set $I102, 0
    set $S101, ""
    set $I103, 0
    set $I101, -1
.annotate 'line', 1060
    find_lex $P5003, "self"
    nqp_decontainerize $P5002, $P5003
    $P5004 = $P5002."!cursor_start"()
    set $P101, $P5004
    find_lex $P5005, "$?CLASS"
    repr_get_attr_int $I5001, $P101, $P5005, "$!from"
    set $I102, $I5001
.annotate 'line', 1062
    $P5006 = $P101."target"()
    set $S5001, $P5006
    set $S101, $S5001
    length $I5002, $S101
    set $I103, $I5002
    find_lex $P5010, "$var"
    set $P5007, $P5010
    iter $P5009, $P5010
  for_next906:
    unless $P5009, for_done908
    shift $P5012, $P5009
  for_redo907:
    .const 'Sub' $P5011 = 'cuid_147_1351021530.153' 
    capture_lex $P5011
    $P5007 = $P5011($P5012)
    goto for_next906
  for_done908:
    set $N5001, $I101
    set $N5002, 0
    isge $I5003, $N5001, $N5002
    unless $I5003 goto if300_end910 
.annotate 'line', 1079
    set $N5004, $I102
    set $N5005, $I101
    add $N5003, $N5004, $N5005
    $P5013 = $P101."!cursor_pass"($N5003, "")
  if300_end910:
    find_lex $P5014, "RETURN"
    $P5015 = $P5014($P101)
    .return ($P5015) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_147_1351021530.153") :anon :lex :outer("cuid_149_1351021530.153")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1064
    .param pmc _lex_param_0 
    .const 'Sub' $P5006 = 'cuid_146_1351021530.153' 
    capture_lex $P5006 
    .const 'Sub' $P5006 = 'cuid_148_1351021530.153' 
    capture_lex $P5006 
    .lex "$_", _lex_param_0 
    is_invokable $I5001, _lex_param_0
    unless $I5001 goto if294_else894 
    .const 'Sub' $P5001 = 'cuid_146_1351021530.153' 
    capture_lex $P5001
    $P5002 = $P5001()
    set $P5005, $P5002
    goto if294_end895
  if294_else894:
    .const 'Sub' $P5003 = 'cuid_148_1351021530.153' 
    capture_lex $P5003
    $P5004 = $P5003()
    set $P5005, $P5004
  if294_end895:
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_146_1351021530.153") :anon :lex :outer("cuid_147_1351021530.153")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1065
    .const 'Sub' $P5009 = 'cuid_145_1351021530.153' 
    capture_lex $P5009 
    .lex "$res", $P101 
    nqp_get_sc_object $P5001, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P101, $P5001
.annotate 'line', 1066
    find_lex $P5004, "self"
    nqp_decontainerize $P5003, $P5004
    find_lex $P5002, "$_"
    $P5005 = $P5002($P5003)
    set $P101, $P5005
    set $P5008, $P101
    unless $P101 goto if295_end897 
    .const 'Sub' $P5006 = 'cuid_145_1351021530.153' 
    capture_lex $P5006
    $P5007 = $P5006()
    set $P5008, $P5007
  if295_end897:
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_145_1351021530.153") :anon :lex :outer("cuid_146_1351021530.153")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1067
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
    unless $I5004 goto if296_end899 
    store_lex "$maxlen", $I101
    set $I5006, $I101
  if296_end899:
    .return ($I5006) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_148_1351021530.153") :anon :lex :outer("cuid_147_1351021530.153")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1073
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
    unless $I5002 goto if299_end905 
    find_lex $I5005, "$pos"
    set $N5004, $I5005
    set $N5005, $I101
    add $N5003, $N5004, $N5005
    find_lex $I5006, "$eos"
    set $N5006, $I5006
    isle $I5004, $N5003, $N5006
    set $I5007, $I5004
  if299_end905:
    set $I5010, $I5007
    unless $I5007 goto if298_end903 
    find_lex $S5003, "$tgt"
    find_lex $I5009, "$pos"
    substr $S5002, $S5003, $I5009, $I101
    find_lex $P5002, "$_"
    set $S5004, $P5002
    iseq $I5008, $S5002, $S5004
    set $I5010, $I5008
  if298_end903:
    set $I5011, $I5010
    unless $I5010 goto if297_end901 
    store_lex "$maxlen", $I101
    set $I5011, $I101
  if297_end901:
    .return ($I5011) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_150_1351021530.153") :anon :lex :outer("cuid_87_1351021530.153")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1082
    .lex "$cur", $P101 
    .lex "$pos", $I101 
    .lex "$tgt", $S101 
    .lex "$len", $I102 
    .lex "$adv", $I103 
    nqp_get_sc_object $P5001, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P101, $P5001
    set $I101, 0
    set $S101, ""
    set $I102, 0
    set $I103, 0
    find_lex $P5002, "$var"
    is_invokable $I5001, $P5002
    unless $I5001 goto if301_end912 
.annotate 'line', 1083
    find_lex $P5006, "self"
    nqp_decontainerize $P5005, $P5006
    find_lex $P5004, "$var"
    $P5007 = $P5004($P5005)
    find_lex $P5003, "RETURN"
    $P5008 = $P5003($P5007)
  if301_end912:
.annotate 'line', 1084
    find_lex $P5010, "self"
    nqp_decontainerize $P5009, $P5010
    $P5011 = $P5009."!cursor_start"()
    set $P101, $P5011
    find_lex $P5012, "$?CLASS"
    repr_get_attr_int $I5002, $P101, $P5012, "$!from"
    set $I101, $I5002
.annotate 'line', 1086
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
    if $I5005 goto unless303_end916 
    substr $S5003, $S101, $I101, $I102
    find_lex $P5015, "$var"
    set $S5004, $P5015
    isne $I5007, $S5003, $S5004
    set $I5008, $I5007
  unless303_end916:
    unless $I5008 goto if302_end914 
    find_lex $P5016, "RETURN"
    $P5017 = $P5016($P101)
  if302_end914:
.annotate 'line', 1091
    $P101."!cursor_pass"($I103, "")
    find_lex $P5018, "RETURN"
    $P5019 = $P5018($P101)
    .return ($P5019) 
.end
.HLL "nqp"
.namespace []
.sub "!INTERPOLATE_REGEX" :subid("cuid_88_1351021530.153") :anon :lex :outer("cuid_89_1351021530.153")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1096
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5007 = 'cuid_153_1351021530.153' 
    capture_lex $P5007 
    .lex "self", _lex_param_0 
    .lex "$var", _lex_param_1 
    root_new $P101, ['parrot';'Continuation']
    set_label $P101, lexotic_917
    .lex "RETURN", $P101
    is_invokable $I5001, _lex_param_1
    if $I5001 goto unless304_end920 
    .const 'Sub' $P5001 = 'cuid_153_1351021530.153' 
    capture_lex $P5001
    $P5002 = $P5001()
  unless304_end920:
.annotate 'line', 1112
    nqp_decontainerize $P5004, _lex_param_0
    $P5005 = $P5004."!INTERPOLATE"(_lex_param_1)
    find_lex $P5003, "RETURN"
    $P5006 = $P5003($P5005)
    goto lexotic_918
  lexotic_917:
    .get_results ($P5006)
  lexotic_918:
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_153_1351021530.153") :anon :lex :outer("cuid_88_1351021530.153")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1097
    .const 'Sub' $P5009 = 'cuid_152_1351021530.153' 
    capture_lex $P5009 
    .lex "$rxcompiler", $P101 
    nqp_get_sc_object $P5001, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P101, $P5001
    compreg $P5002, "QRegex::P6Regex"
    set $P101, $P5002
    find_lex $P5003, "$var"
    nqp_islist $I5001, $P5003
    unless $I5001 goto if305_else921 
    .const 'Sub' $P5004 = 'cuid_152_1351021530.153' 
    capture_lex $P5004
    $P5005 = $P5004()
    set $P5008, $P5005
    goto if305_end922
  if305_else921:
.annotate 'line', 1108
.annotate 'line', 1109
    find_lex $P5006, "$var"
    $P5007 = $P101."compile"($P5006)
    store_lex "$var", $P5007
    set $P5008, $P5007
  if305_end922:
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_152_1351021530.153") :anon :lex :outer("cuid_153_1351021530.153")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1099
    .const 'Sub' $P5009 = 'cuid_151_1351021530.153' 
    capture_lex $P5009 
    .lex "$res", $P101 
    nqp_get_sc_object $P5001, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P101, $P5001
    new $P5002, 'ResizablePMCArray'
    set $P101, $P5002
    find_lex $P5006, "$var"
    set $P5003, $P5006
    iter $P5005, $P5006
  for_next925:
    unless $P5005, for_done927
    shift $P5008, $P5005
  for_redo926:
    .const 'Sub' $P5007 = 'cuid_151_1351021530.153' 
    capture_lex $P5007
    $P5003 = $P5007($P5008)
    goto for_next925
  for_done927:
    store_lex "$var", $P101
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_151_1351021530.153") :anon :lex :outer("cuid_152_1351021530.153")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1101
    .param pmc _lex_param_0 
    .lex "$elem", $P101 
    .lex "$_", _lex_param_0 
    nqp_get_sc_object $P5001, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503", 21
    set $P101, $P5001
    set $P101, _lex_param_0
    is_invokable $I5001, $P101
    if $I5001 goto unless306_end924 
.annotate 'line', 1103
    find_lex $P5002, "$rxcompiler"
    $P5003 = $P5002."compile"($P101)
    set $P101, $P5003
  unless306_end924:
    find_lex $P5004, "$res"
    push $P5004, $P101
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_111_1351021530.153") :anon :lex :outer("cuid_1_1351021530.153")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1116
    .const 'Sub' $P5004 = 'cuid_108_1351021530.153' 
    capture_lex $P5004 
    .const 'Sub' $P5004 = 'cuid_109_1351021530.153' 
    capture_lex $P5004 
    .const 'Sub' $P5004 = 'cuid_110_1351021530.153' 
    capture_lex $P5004 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_108_1351021530.153' 
    capture_lex $P5001
    .const 'Sub' $P5002 = 'cuid_109_1351021530.153' 
    capture_lex $P5002
    .const 'Sub' $P5003 = 'cuid_110_1351021530.153' 
    capture_lex $P5003
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "new" :subid("cuid_108_1351021530.153") :anon :lex :outer("cuid_111_1351021530.153")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1118
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$code", _lex_param_1 
.annotate 'line', 1119
    nqp_decontainerize $P5001, _lex_param_0
    $P5002 = $P5001."bless"(_lex_param_1 :named("code"))
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "ACCEPTS" :subid("cuid_109_1351021530.153") :anon :lex :outer("cuid_111_1351021530.153")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1121
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$target", _lex_param_1 
.annotate 'line', 1122
    nqp_get_sc_object $P5001, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 86
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5001."parse"(_lex_param_1, $P5002 :named("rule"))
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "Str" :subid("cuid_110_1351021530.153") :anon :lex :outer("cuid_111_1351021530.153")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1124
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 92
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!code"
    set $S5001, $P5003
    .return ($S5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_113_1351021530.153") :anon :lex :outer("cuid_1_1351021530.153")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1129
    .const 'Sub' $P5002 = 'cuid_112_1351021530.153' 
    capture_lex $P5002 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_112_1351021530.153' 
    capture_lex $P5001
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "ACCEPTS" :subid("cuid_112_1351021530.153") :anon :lex :outer("cuid_113_1351021530.153")
.annotate 'file', "src\\stage2\\QRegex.nqp"
.annotate 'line', 1130
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$target", _lex_param_1 
.annotate 'line', 1131
    nqp_get_sc_object $P5001, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 86
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5001."parse"(_lex_param_1, $P5002 :named("rule"), 0 :named("c"))
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_155_1351021530.153") :load :init
.annotate 'file', "src\\stage2\\QRegex.nqp"
    .const 'Sub' $P5001 = 'cuid_154_1351021530.153' 
    capture_lex $P5001 
    .local pmc cur_sc 
    nqp_dynop_setup 
    nqp_bigint_setup 
    getinterp $P5001
    get_class $P5002, "LexPad"
    get_class $P5003, "NQPLexPad"
    $P5001."hll_map"($P5002, $P5003)
    load_bytecode "ModuleLoader.pbc"
    .const 'Sub' $P5001 = "cuid_1_1351021530.153" 
    get_hll_global $P5002, "ModuleLoader"
    $P5003 = $P5002."load_setting"("NQPCORE")
    $P5001."set_outer_ctx"($P5003)
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P5001, "ModuleLoader"
    $P5001."load_module"("QASTNode")
    nqp_create_sc $P5001, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178"
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
    push $P5002, "CCEC8EB447A57E4A046F86900DC8DFE7AC7ABED0-1351021527.503"
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
    push $P5002, "55513D3AD249F7C9BD852BE8C803DA6CC8E551F6-1351021524.324"
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
    push $P5002, "16DB1CA83A28E7980973C07333DCEC2A69D52B08-1351021528.701"
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
    .const 'Sub' $P5003 = 'cuid_154_1351021530.153' 
    capture_lex $P5003
    $P5004 = $P5003()
    nqp_deserialize_sc "AQAAAEAAAAAEAAAAYAAAAAwAAADAAAAAmBQAAK0AAABoHwAAYkIAACkAAAA6RgAAAQAAAEpGAACORgAAAAAAAAsAAAAMAAAAfQAAAAAAAACAAAAAgQAAAJAAAACRAAAAAQAAAAAAAAABAAAA/AAAAAEAAACkAQAAAQAAAEwCAAA0AAAAcAUAAAEAAACwBQAAAQAAAL4IAAABAAAAEg4AAAEAAACmDwAAAQAAAFARAAABAAAAAhMAADQAAACcEwAAAAAAAGIAAAAAAAAAAAAAAAoABwAAAAIAAAACAAAAAABjAAAAAwAAAAIAAAAAAGQAAAAEAAAAAgAAAAAAHgAAAAUAAAACAAAAAABJAAAABgAAAAIAAAAAAFYAAAAHAAAAAgAAAAAAXAAAAAgAAAACAAAAAABgAAAACgAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAAAAAAAAMAAAAAAGUAAAAAAAAAAQAAAAoAAQAAAAkAAAACAAAAAAACAAAACgAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAAEAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAAAQAAAAMAAAAAAGYAAAAAAAAAAgAAAAoAAQAAAAQAAAACAAAAAAAeAAAACgAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAAIAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAAAgAAAAMAAAAAAGcAAAAAAAAAAwAAAAoAAAAAAAoAJQAAAAoAAAACAAEAAAAWAAAADQAAAAIAAQAAABcAAAAOAAAAAgABAAAAGAAAAA8AAAACAAAAAAAEAAAAEAAAAAIAAQAAABoAAAARAAAAAgABAAAAHQAAABIAAAACAAEAAAAfAAAAEwAAAAIAAQAAACEAAAAUAAAAAgABAAAAIwAAABUAAAACAAEAAAAlAAAAFgAAAAIAAQAAACYAAAAXAAAAAgABAAAAKAAAABgAAAACAAAAAAAdAAAAGQAAAAIAAAAAAAUAAAAaAAAAAgAAAAAABgAAABsAAAACAAAAAAAHAAAAHAAAAAIAAAAAAAgAAAAdAAAAAgAAAAAACQAAAB4AAAACAAAAAAAKAAAAHwAAAAIAAAAAAAsAAAAgAAAAAgAAAAAADAAAACEAAAACAAAAAAANAAAAIgAAAAIAAAAAAA4AAAAjAAAAAgAAAAAADwAAACQAAAACAAAAAAAQAAAAJQAAAAIAAAAAABEAAAAmAAAAAgAAAAAAEgAAACcAAAACAAAAAAATAAAAKAAAAAIAAAAAABQAAAApAAAAAgAAAAAAFQAAACoAAAACAAAAAAAWAAAAKwAAAAIAAAAAABcAAAAsAAAAAgAAAAAAGAAAAC0AAAACAAAAAAAZAAAALgAAAAIAAAAAABoAAAAvAAAAAgAAAAAAGwAAADAAAAACAAAAAAAcAAAAAAAAAAAAAAACAAAAAAAAAAIAAAAAAAMAAAACAAEAAAAVAAAABAAAAAAAAAABAAAAAAAAAAUAAAAAAAAAAwAAAAAAAAAAAAMAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAQAAAAIAAAAAAAAAAAAAAAEAAAAAAAAAAgABAAAAFQAAAAIAAQAAABUAAAABAP///////////////////////////////wAAAAAAAAAAAgAAAAAAAAACAAEAAAAVAAAAAwACAAAAAAADAAAACgADAAAAMQAAAAQAAAAAAAAAAAAyAAAABAABAAAAAAAAADMAAAAEAAIAAAAAAAAAAAAAAGgAAAAAAAAAHgAAAAoAAAAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABpAAAAAAAAAEkAAAAKAAAAAAAKABkAAAAKAAAAAgABAAAAFgAAAA0AAAACAAEAAAAXAAAADgAAAAIAAQAAABgAAAAPAAAAAgABAAAAKwAAABAAAAACAAAAAABOAAAAEQAAAAIAAQAAAB0AAAASAAAAAgABAAAAHwAAABMAAAACAAEAAAAhAAAAFAAAAAIAAQAAACMAAAAVAAAAAgABAAAAJQAAABYAAAACAAEAAAAmAAAAFwAAAAIAAQAAACgAAAAYAAAAAgABAAAAKQAAADUAAAACAAEAAAAsAAAANgAAAAIAAQAAAC0AAAA3AAAAAgABAAAALgAAADgAAAACAAAAAABKAAAAOQAAAAIAAAAAAEsAAAA6AAAAAgAAAAAATAAAADsAAAACAAAAAABNAAAAPAAAAAIAAAAAAFEAAAA9AAAAAgAAAAAAUgAAAD4AAAACAAAAAABTAAAAPwAAAAIAAAAAAFQAAABAAAAAAgAAAAAAVQAAAAAAAAAAAAAAAwAAAAAAAAACAAAAAABJAAAAAgABAAAAKgAAAAIAAQAAABUAAAAEAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAACAAAAAABRAAAAAAAAAAAAAAAHAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAQAAAAIAAAABAAAAAAAAAAEAAAACAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAABAAEAAgABAAAAFQAAAAEAAQACAAEAAAAVAAAAAgABAAAAFQAAAP///////////////////////////////wAAAAAAAAAAAwAAAAAAAAACAAEAAAAVAAAAAwACAAEAAAAqAAAACgACAAAAQQAAAAQAAAAAAAAAAABCAAAABAABAAAAAAAAAAIAAAAAAEkAAAAKAAUAAABDAAAABAACAAAAAAAAAEQAAAAEAAMAAAAAAAAARQAAAAQABAAAAAAAAABGAAAABAAFAAAAAAAAAEcAAAAEAAYAAAAAAAAAAAAAAGoAAAAAAAAAVgAAAAoAAAAAAAoAOwAAAAoAAAACAAEAAAAWAAAADQAAAAIAAQAAABcAAAAOAAAAAgABAAAAGAAAAA8AAAACAAEAAAAZAAAAEAAAAAIAAQAAABoAAAARAAAAAgABAAAAHQAAABIAAAACAAEAAAAfAAAAEwAAAAIAAQAAACEAAAAUAAAAAgABAAAAIwAAABUAAAACAAEAAAAlAAAAFgAAAAIAAQAAACYAAAAXAAAAAgABAAAAKAAAABgAAAACAAEAAAApAAAASAAAAAIAAAAAAFcAAAA8AAAAAgAAAAAAWAAAAEkAAAACAAAAAABZAAAASgAAAAIAAAAAAFoAAABLAAAAAgAAAAAAWwAAAEwAAAACAAAAAABrAAAAOAAAAAIAAAAAAGwAAABNAAAAAgAAAAAAbQAAAE4AAAACAAAAAABuAAAATwAAAAIAAAAAAG8AAABQAAAAAgAAAAAAcAAAAFEAAAACAAAAAABxAAAAUgAAAAIAAAAAAHIAAABTAAAAAgAAAAAAcwAAAFQAAAACAAAAAAB0AAAAVQAAAAIAAAAAAHUAAABWAAAAAgAAAAAAdgAAAFcAAAACAAAAAAB3AAAAWAAAAAIAAAAAAHgAAABZAAAAAgAAAAAAeQAAAFoAAAACAAAAAAB6AAAAWwAAAAIAAAAAAHsAAABcAAAAAgAAAAAAfAAAAF0AAAACAAAAAAB9AAAAXgAAAAIAAAAAAH4AAABfAAAAAgAAAAAAfwAAAGAAAAACAAAAAACAAAAAYQAAAAIAAAAAAIEAAABiAAAAAgAAAAAAggAAAGMAAAACAAAAAACDAAAAZAAAAAIAAAAAAIQAAABlAAAAAgAAAAAAhQAAAGYAAAACAAAAAACGAAAAZwAAAAIAAAAAAIcAAABoAAAAAgAAAAAAiAAAAGkAAAACAAAAAACJAAAAagAAAAIAAAAAAIoAAABrAAAAAgAAAAAAiwAAAGwAAAACAAAAAACMAAAAbQAAAAIAAAAAAI0AAABuAAAAAgAAAAAAjgAAAG8AAAACAAAAAACPAAAAcAAAAAIAAAAAAJAAAABxAAAAAgAAAAAAkQAAAHIAAAACAAAAAACSAAAAcwAAAAIAAAAAAJMAAAAAAAAAAAAAAAQAAAAAAAAAAgAAAAAAVgAAAAIAAQAAABUAAAACAAAAAAAeAAAAAgAAAAAAlAAAAAQAAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAIAAAAAAFgAAAAAAAAAAAAAAAoAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAEAAAAEAAAAAQAAAAAAAAABAAAAAgAAAAEAAAAAAAAAAQAAAAIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAgABAAAAFQAAAAEAAQABAAIAAQAAABUAAAACAAEAAAAVAAAAAgABAAAAFQAAAAIAAQAAABUAAAACAAEAAAAVAAAAAgABAAAAFQAAAP///////////////////////////////wAAAAAAAAAAAgAAAAAAAAACAAEAAAAVAAAAAwACAAAAAABWAAAACgAKAAAAQwAAAAQAAAAAAAAAAAB0AAAABAABAAAAAAAAAEQAAAAEAAIAAAAAAAAAdQAAAAQAAwAAAAAAAAB2AAAABAAEAAAAAAAAAHcAAAAEAAUAAAAAAAAAeAAAAAQABgAAAAAAAAB5AAAABAAHAAAAAAAAAHoAAAAEAAgAAAAAAAAAewAAAAQACQAAAAAAAAAAAAAAlQAAAAAAAABcAAAACgAAAAAACgANAAAACgAAAAIAAQAAABYAAAANAAAAAgABAAAAFwAAAA4AAAACAAEAAAAYAAAADwAAAAIAAAAAAF0AAAAQAAAAAgAAAAAAXwAAABEAAAACAAEAAAAdAAAAEgAAAAIAAQAAAB8AAAATAAAAAgABAAAAIQAAABQAAAACAAEAAAAjAAAAFQAAAAIAAQAAACUAAAAWAAAAAgAAAAAAXgAAABcAAAACAAEAAAAoAAAAGAAAAAIAAQAAACkAAAAAAAAAAAAAAAIAAAAAAAAAAgAAAAAAXAAAAAIAAQAAABUAAAAEAAAAAAAAAAEAAAAAAAAABQAAAAAAAAADAAAAAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAEAAAAVAAAA////////////////////////////////AAAAAAAAAAACAAAAAAAAAAIAAQAAABUAAAADAAIAAAAAAFwAAAAKAAEAAAB8AAAABAAAAAAAAAAAAAAAAACWAAAAAAAAAGAAAAAKAAAAAAAKAA0AAAAKAAAAAgABAAAAFgAAAA0AAAACAAEAAAAXAAAADgAAAAIAAQAAABgAAAAPAAAAAgAAAAAAXQAAABAAAAACAAAAAABfAAAAEQAAAAIAAQAAAB0AAAASAAAAAgABAAAAHwAAABMAAAACAAEAAAAhAAAAFAAAAAIAAQAAACMAAAAVAAAAAgABAAAAJQAAABYAAAACAAAAAABhAAAAFwAAAAIAAQAAACgAAAAYAAAAAgABAAAAKQAAAAAAAAAAAAAAAwAAAAAAAAACAAAAAABgAAAAAgAAAAAAXAAAAAIAAQAAABUAAAAEAAAAAAAAAAEAAAAAAAAABQAAAAAAAAADAAAAAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAEAAAAVAAAA////////////////////////////////AAAAAAAAAAADAAAAAAAAAAIAAQAAABUAAAADAAIAAAAAAFwAAAAKAAEAAAB8AAAABAAAAAAAAAAAAAIAAAAAAGAAAAADAAAAAACqAAAAAAAAAGMAAAAKABQAAACPAAAAAgAEAAAAAwAAAJIAAAACAAQAAAAIAAAAkwAAAAIABAAAAAwAAACUAAAAAgAEAAAAJwAAAJUAAAACAAQAAAAvAAAAlgAAAAIABAAAADMAAACXAAAAAgAEAAAANwAAAJgAAAACAAQAAAA7AAAAmQAAAAIABAAAAD4AAACaAAAAAgAEAAAAQgAAAJsAAAACAAQAAABHAAAAnAAAAAIABAAAAE8AAACdAAAAAgAEAAAAUQAAAJ4AAAACAAQAAABXAAAAnwAAAAIABAAAAFsAAACgAAAAAgAEAAAAXwAAAKEAAAACAAQAAABjAAAAogAAAAIABAAAAGsAAACjAAAAAgAEAAAAbgAAAKQAAAACAAQAAAB3AAAACgAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAGMAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAAYwAAAAMAAAAAAKsAAAAAAAAAZAAAAAoAAQAAAKUAAAACAAAAAAADAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAAGQAAAADAAAAAACsAAAAAAAAAJQAAAADAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAIAAAAAAAAAAAAAAAAAAAADAAAAAAAAAAAAAAABAAAABQAAAAAAAAABAAAAAQAAAAUAAAAQAAAAAQAAAAEAAAAFAAAAIAAAAAEAAAABAAAABQAAADAAAAABAAAAAQAAAAUAAABAAAAAAQAAAAEAAAAFAAAAUAAAAAEAAAABAAAABQAAAGAAAAABAAAAAQAAAAUAAABwAAAAAQAAAAEAAAAFAAAAgAAAAAEAAAABAAAABQAAAJAAAAABAAAAAQAAAAUAAACgAAAAAQAAAAEAAAAFAAAAsAAAAAEAAAABAAAABQAAAMAAAAABAAAAAQAAAAUAAADQAAAAAQAAAAEAAAAFAAAA4AAAAAEAAAABAAAABQAAAPAAAAABAAAAAQAAAAUAAAAAAQAAAQAAAAEAAAAFAAAAEAEAAAEAAAABAAAABQAAACABAAABAAAAAQAAAAUAAAAwAQAAAQAAAAEAAAAFAAAAQAEAAAEAAAABAAAABQAAAFABAAABAAAAAQAAAAUAAABgAQAAAQAAAAEAAAAFAAAAcAEAAAEAAAABAAAABQAAAIABAAABAAAAAQAAAAUAAACQAQAAAQAAAAAAAAAEAAAAoAEAAAAAAAABAAAABQAAAKABAAABAAAAAQAAAAUAAACwAQAAAQAAAAEAAAAFAAAAwAEAAAEAAAABAAAABQAAANABAAABAAAAAQAAAAUAAADgAQAAAQAAAAEAAAAFAAAA8AEAAAEAAAABAAAABQAAAAACAAABAAAAAQAAAAUAAAAQAgAAAQAAAAEAAAAFAAAAIAIAAAEAAAABAAAABQAAADACAAABAAAAAQAAAAUAAABAAgAAAQAAAAEAAAAFAAAAUAIAAAEAAAABAAAABQAAAGACAAABAAAAAQAAAAUAAABwAgAAAQAAAAEAAAAFAAAAgAIAAAEAAAABAAAABQAAAJACAAABAAAAAQAAAAUAAACgAgAAAQAAAAEAAAAFAAAAsAIAAAEAAAABAAAABQAAAMACAAABAAAAAQAAAAUAAADQAgAAAQAAAAEAAAAFAAAA4AIAAAEAAAABAAAABQAAAPACAAABAAAAAQAAAAUAAAAAAwAAAQAAAAEAAAAFAAAAEAMAAAEAAAABAAAABQAAACADAAABAAAAAQAAAAUAAAAwAwAAAQAAAAEAAAAFAAAAQAMAAAEAAAABAAAABQAAAFADAAABAAAAAQAAAAUAAABgAwAAAQAAAAEAAAAFAAAAcAMAAAEAAAABAAAABQAAAIADAAABAAAAAQAAAAUAAACQAwAAAQAAAAEAAAAFAAAAoAMAAAEAAAABAAAABQAAALADAAABAAAAAQAAAAUAAADAAwAAAQAAAAEAAAAFAAAA0AMAAAEAAAABAAAABQAAAOADAAABAAAAAQAAAAUAAADwAwAAAQAAAAEAAAAFAAAAAAQAAAEAAAABAAAABQAAABAEAAABAAAAAQAAAAUAAAAgBAAAAQAAAAEAAAAFAAAAMAQAAAEAAAAAAAAABQAAAEAEAAAAAAAAAQAAAAUAAABABAAAAQAAAAEAAAAFAAAAUAQAAAEAAAABAAAABQAAAGAEAAABAAAAAQAAAAUAAABwBAAAAQAAAAEAAAAFAAAAgAQAAAEAAAABAAAABQAAAJAEAAABAAAAAQAAAAUAAACgBAAAAQAAAAEAAAAFAAAAsAQAAAEAAAABAAAABQAAAMAEAAABAAAAAQAAAAUAAADQBAAAAQAAAAEAAAAFAAAA4AQAAAEAAAABAAAABQAAAPAEAAABAAAAAAAAAAYAAAAABQAAAAAAAAEAAAAFAAAAAAUAAAEAAAABAAAABQAAABAFAAABAAAAAQAAAAUAAAAgBQAAAQAAAAEAAAAFAAAAMAUAAAEAAAABAAAABQAAAEAFAAABAAAAAAAAAAcAAABQBQAAAAAAAAEAAAAFAAAAUAUAAAEAAAABAAAABQAAAGAFAAABAAAAAQAAAAUAAABwBQAAAQAAAAAAAAAIAAAAgAUAAAAAAAABAAAABQAAAIAFAAABAAAAAgAAAAAAAACQBQAAAQAAAAAAAAAJAAAAoAUAAAAAAAAAAAAACgAAAKAFAAAAAAAAAgAAAAAAAACgBQAAAQAAAAIAAAAAAAAAsAUAAAEAAAADAAAABwAAAMAFAAABAAAAAwAAAAYAAADiCQAAAQAAAAMAAAAHAAAA3gwAAAEAAAADAAAABwAAADIPAAABAAAAAQAAAAUAAADIFwAAAQAAAAEAAAAFAAAA2BcAAAEAAAABAAAABQAAAOgXAAABAAAAAQAAAAUAAAD4FwAAAQAAAAEAAAAFAAAACBgAAAEAAAABAAAABQAAABgYAAABAAAAAQAAAAUAAAAoGAAAAQAAAAEAAAAFAAAAOBgAAAEAAAABAAAABQAAAEgYAAABAAAAAQAAAAUAAABYGAAAAQAAAAEAAAAFAAAAaBgAAAEAAAABAAAABQAAAHgYAAABAAAAAQAAAAUAAACIGAAAAQAAAAEAAAAFAAAAmBgAAAEAAAABAAAABQAAAKgYAAABAAAAAQAAAAUAAAC4GAAAAQAAAAEAAAAFAAAAyBgAAAEAAAABAAAABQAAANgYAAABAAAAAQAAAAUAAADoGAAAAQAAAAEAAAAFAAAA+BgAAAEAAAABAAAABQAAAAgZAAABAAAAAQAAAAUAAAAYGQAAAQAAAAEAAAAFAAAAKBkAAAEAAAABAAAABQAAADgZAAABAAAAAQAAAAUAAABIGQAAAQAAAAEAAAAFAAAAWBkAAAEAAAABAAAABQAAAGgZAAABAAAAAQAAAAUAAAB4GQAAAQAAAAEAAAAFAAAAiBkAAAEAAAABAAAABQAAAJgZAAABAAAAAQAAAAUAAACoGQAAAQAAAAEAAAAFAAAAuBkAAAEAAAABAAAABQAAAMgZAAABAAAAAQAAAAUAAADYGQAAAQAAAAEAAAAFAAAA6BkAAAEAAAABAAAABQAAAPgZAAABAAAAAQAAAAUAAAAIGgAAAQAAAAEAAAAFAAAAGBoAAAEAAAABAAAABQAAACgaAAABAAAAAQAAAAUAAAA4GgAAAQAAAAEAAAAFAAAASBoAAAEAAAAAAAAACwAAAFgaAAAAAAAAAwAAAAcAAABYGgAAAQAAAAMAAAAHAAAAxhsAAAEAAAADAAAACQAAAKocAAABAAAAAwAAAAkAAADSHAAAAQAAAAMAAAAJAAAA+hwAAAEAAAADAAAACQAAACodAAABAAAAAwAAAAkAAABSHQAAAQAAAAMAAAAJAAAAgh0AAAEAAAADAAAACQAAALIdAAABAAAAAwAAAAkAAADiHQAAAQAAAAMAAAAJAAAACh4AAAEAAAADAAAACQAAADIeAAABAAAAAwAAAAkAAABaHgAAAQAAAAMAAAAJAAAAgh4AAAEAAAADAAAACQAAAKoeAAABAAAAAwAAAAkAAADSHgAAAQAAAAMAAAAJAAAA+h4AAAEAAAADAAAACQAAACofAAABAAAAAwAAAAkAAABaHwAAAQAAAAMAAAAJAAAAgh8AAAEAAAADAAAACQAAAKofAAABAAAAAgAAAAAAAADSHwAAAQAAAAIAAAAAAAAA4h8AAAEAAAADAAAAAwAAAPIfAAABAAAACwAAAAAAAAAAAAEAAQABAAsAAAAAAAEAAAABAAEAAQALAAAAAAACAAAAAQABAAEACwAAAAAAAwAAAAEAAQABAAsAAAAAAAQAAAABAAEAAQALAAAAAAAFAAAAAQABAAEACwAAAAAABgAAAAEAAQABAAsAAAAAAAcAAAABAAEAAQALAAAAAAAIAAAAAQABAAEACwAAAAAACQAAAAEAAQABAAsAAAAAAAoAAAABAAEAAQALAAAAAAALAAAAAQABAAEACwAAAAAADAAAAAEAAQABAAsAAAAAAA0AAAABAAEAAQALAAAAAAAOAAAAAQABAAEACwAAAAAADwAAAAEAAQABAAsAAAAAABAAAAABAAEAAQALAAAAAAARAAAAAQABAAEACwAAAAAAEgAAAAEAAQABAAsAAAAAABMAAAABAAEAAQALAAAAAAAUAAAAAQABAAEACwAAAAAAFQAAAAEAAQABAAsAAAAAABYAAAABAAEAAQALAAAAAAAXAAAAAQABAAEACwAAAAAAGAAAAAEAAQABAAsAAAAAABkAAAABAAEAAQALAAAAAAAaAAAAAQABAAEACwAAAAAAGwAAAAEAAQABAAsAAAAAABwAAAABAAEAAQALAAAAAAAdAAAAAQABAAEACwAAAAAAHgAAAAEAAQABAAsAAAAAAB8AAAABAAEAAQALAAAAAAAgAAAAAQABAAEACwAAAAAAIQAAAAEAAQABAAsAAAAAACIAAAABAAEAAQALAAAAAAAjAAAAAQABAAEACwAAAAAAJAAAAAEAAQABAAsAAAAAACUAAAABAAEAAQALAAAAAAAmAAAAAQABAAEACwAAAAAAJwAAAAEAAQABAAsAAAAAACgAAAABAAEAAQALAAAAAAApAAAAAQABAAEACwAAAAAAKgAAAAEAAQABAAsAAAAAACsAAAABAAEAAQALAAAAAAAsAAAAAQABAAEACwAAAAAALQAAAAEAAQABAAsAAAAAAC4AAAABAAEAAQALAAAAAAAvAAAAAQABAAEACwAAAAAAMAAAAAEAAQABAAsAAAAAADEAAAABAAEAAQALAAAAAAAyAAAAAQABAAEACwAAAAAAMwAAAAEAAQABAAsAAAAAADQAAAABAAEAAQALAAAAAAA1AAAAAQABAAEACwAAAAAANgAAAAEAAQABAAsAAAAAADcAAAABAAEAAQALAAAAAAA4AAAAAQABAAEACwAAAAAAOQAAAAEAAQABAAsAAAAAADoAAAABAAEAAQALAAAAAAA7AAAAAQABAAEACwAAAAAAPAAAAAEAAQABAAsAAAAAAD0AAAABAAEAAQALAAAAAAA+AAAAAQABAAEACwAAAAAAPwAAAAEAAQABAAsAAAAAAEAAAAABAAEAAQALAAAAAABBAAAAAQABAAEACwAAAAAAQgAAAAEAAQABAAsAAAAAAEMAAAABAAEAAQALAAAAAABEAAAAAQABAAEACwAAAAAARQAAAAEAAQABAAsAAAAAAEYAAAABAAEAAQALAAAAAABHAAAAAQABAAEACwAAAAAASAAAAAEAAQABAAsAAAAAAEkAAAABAAEAAQALAAAAAABKAAAAAQABAAEACwAAAAAASwAAAAEAAQABAAsAAAAAAEwAAAABAAEAAQALAAAAAABNAAAAAQABAAEACwAAAAAATgAAAAEAAQABAAsAAAAAAE8AAAABAAEAAQALAAAAAABQAAAAAQABAAEACwAAAAAAUQAAAAEAAQABAAsAAAAAAFIAAAABAAEAAQALAAAAAABTAAAAAQABAAEACwAAAAAAVAAAAAEAAQABAAsAAAAAAFUAAAABAAEAAQALAAAAAABWAAAAAQABAAEACwAAAAAAVwAAAAEAAQABAAsAAAAAAFgAAAABAAEAAQB+AAAABwAAAAAACgAAAAAAfwAAAAcAAAAAAAoAAAAAAAkAAAAHAAAAAAAKAAAAAAAGAIIAAAAKAAMAAAAxAAAAAgAAAAAAlwAAADIAAAACAAAAAACYAAAAMwAAAAIAAAAAAJkAAAAKABoAAAAPAAAAAgAAAAAABAAAABkAAAACAAAAAAAFAAAAGgAAAAIAAAAAAAYAAAAbAAAAAgAAAAAABwAAABwAAAACAAAAAAAIAAAAHQAAAAIAAAAAAAkAAAAeAAAAAgAAAAAACgAAAB8AAAACAAAAAAALAAAAIAAAAAIAAAAAAAwAAAAhAAAAAgAAAAAADQAAACIAAAACAAAAAAAOAAAAIwAAAAIAAAAAAA8AAAAkAAAAAgAAAAAAEAAAACUAAAACAAAAAAARAAAAJgAAAAIAAAAAABIAAAAnAAAAAgAAAAAAEwAAACgAAAACAAAAAAAUAAAAKQAAAAIAAAAAABUAAAAqAAAAAgAAAAAAFgAAACsAAAACAAAAAAAXAAAALAAAAAIAAAAAABgAAAAtAAAAAgAAAAAAGQAAAC4AAAACAAAAAAAaAAAALwAAAAIAAAAAABsAAAAwAAAAAgAAAAAAHAAAABgAAAACAAAAAAAdAAAABwAaAAAAAgAAAAAABAAAAAIAAAAAAAUAAAACAAAAAAAGAAAAAgAAAAAABwAAAAIAAAAAAAgAAAACAAAAAAAJAAAAAgAAAAAACgAAAAIAAAAAAAsAAAACAAAAAAAMAAAAAgAAAAAADQAAAAIAAAAAAA4AAAACAAAAAAAPAAAAAgAAAAAAEAAAAAIAAAAAABEAAAACAAAAAAASAAAAAgAAAAAAEwAAAAIAAAAAABQAAAACAAAAAAAVAAAAAgAAAAAAFgAAAAIAAAAAABcAAAACAAAAAAAYAAAAAgAAAAAAGQAAAAIAAAAAABoAAAACAAAAAAAbAAAAAgAAAAAAHAAAAAIAAAAAAB0AAAAHAAAAAAAHAAEAAAACAAEAAAAVAAAABwAAAAAAAgABAAAAFQAAAAcAAAAAAAoAAAAAAAQAAQAAAAAAAAAHAAIAAAACAAAAAAADAAAAAgABAAAAFQAAAAcAAAAAAAEACgAAAAAACgAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAMAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAAwAAAAYAGwAAAAYAMQAAAAcABAAAAAQAAQAAAAAAAAACAAAAAAADAAAABgCDAAAABgAyAAAABwAEAAAABAABAAAAAAAAAAIAAAAAAAMAAAAGAC8AAAAGADMAAAAHAAMAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAAwAAAAYAGwAAAAYAMQAAAAcABAAAAAQAAQAAAAAAAAACAAAAAAADAAAABgCDAAAABgAyAAAABwAEAAAABAABAAAAAAAAAAIAAAAAAAMAAAAGAC8AAAAGADMAAAABAAYABAAAAAoACgAAAEMAAAACAAAAAACaAAAAdAAAAAIAAAAAAJsAAABEAAAAAgAAAAAAnAAAAHUAAAACAAAAAACdAAAAdgAAAAIAAAAAAJ4AAAB3AAAAAgAAAAAAnwAAAHgAAAACAAAAAACgAAAAeQAAAAIAAAAAAKEAAAB6AAAAAgAAAAAAogAAAHsAAAACAAAAAACjAAAACgApAAAATAAAAAIAAAAAAB8AAAA4AAAAAgAAAAAAIAAAAE0AAAACAAAAAAAhAAAATgAAAAIAAAAAACIAAABPAAAAAgAAAAAAIwAAAFAAAAACAAAAAAAkAAAAUQAAAAIAAAAAACUAAABSAAAAAgAAAAAAJgAAAFMAAAACAAAAAAAnAAAAVAAAAAIAAAAAACgAAABVAAAAAgAAAAAAKQAAAFYAAAACAAAAAAAqAAAAVwAAAAIAAAAAACsAAABYAAAAAgAAAAAALAAAAFkAAAACAAAAAAAtAAAAWgAAAAIAAAAAAC4AAABbAAAAAgAAAAAALwAAAFwAAAACAAAAAAAwAAAAXQAAAAIAAAAAADEAAABeAAAAAgAAAAAAMgAAAF8AAAACAAAAAAAzAAAAYAAAAAIAAAAAADQAAABhAAAAAgAAAAAANQAAAGIAAAACAAAAAAA2AAAAYwAAAAIAAAAAADcAAABkAAAAAgAAAAAAOAAAAGUAAAACAAAAAAA5AAAAZgAAAAIAAAAAADoAAABnAAAAAgAAAAAAOwAAAGgAAAACAAAAAAA8AAAAaQAAAAIAAAAAAD0AAABqAAAAAgAAAAAAPgAAAGsAAAACAAAAAAA/AAAAbAAAAAIAAAAAAEAAAABtAAAAAgAAAAAAQQAAAG4AAAACAAAAAABCAAAAbwAAAAIAAAAAAEMAAABwAAAAAgAAAAAARAAAAHEAAAACAAAAAABFAAAAcgAAAAIAAAAAAEYAAABzAAAAAgAAAAAARwAAAAcAAAAAAAcAAAAAAAQAAQAAAAAAAAACAAAAAABIAAAABgAFAAAACgAFAAAAQwAAAAIAAAAAAKQAAABEAAAAAgAAAAAApQAAAEUAAAACAAAAAACmAAAARgAAAAIAAAAAAKcAAABHAAAAAgAAAAAAqAAAAAoACgAAADgAAAACAAAAAABKAAAAOQAAAAIAAAAAAEsAAAA6AAAAAgAAAAAATAAAADsAAAACAAAAAABNAAAAEAAAAAIAAAAAAE4AAAA8AAAAAgAAAAAAUQAAAD0AAAACAAAAAABSAAAAPgAAAAIAAAAAAFMAAAA/AAAAAgAAAAAAVAAAAEAAAAACAAAAAABVAAAABwAKAAAAAgAAAAAASgAAAAIAAAAAAEsAAAACAAAAAABMAAAAAgAAAAAATQAAAAIAAAAAAE4AAAACAAAAAABRAAAAAgAAAAAAUgAAAAIAAAAAAFMAAAACAAAAAABUAAAAAgAAAAAAVQAAAAcAAAAAAAcAAQAAAAIAAQAAACoAAAAHAAAAAAABAAcAAAAAAAoAAAAAAAQAAQAAAAAAAAAHAAMAAAACAAAAAABJAAAAAgABAAAAKgAAAAIAAQAAABUAAAAHAAAAAAABAAoAAwAAAIQAAAACAAAAAABOAAAAhQAAAAIAAAAAAE8AAACGAAAAAgAAAAAAUAAAAAoAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwACAAAABwACAAAABAAAAAAAAAAAAAIAAQAAACwAAAAHAAIAAAAEAAAAAAAAAAAAAgABAAAALAAAAAcAAQAAAAcAAgAAAAQAAAAAAAAAAAACAAEAAAAsAAAAAQAGAAYAAAAKAAoAAABDAAAAAgAAAAAAmgAAAHQAAAACAAAAAACbAAAARAAAAAIAAAAAAJwAAAB1AAAAAgAAAAAAnQAAAHYAAAACAAAAAACeAAAAdwAAAAIAAAAAAJ8AAAB4AAAAAgAAAAAAoAAAAHkAAAACAAAAAAChAAAAegAAAAIAAAAAAKIAAAB7AAAAAgAAAAAAowAAAAoALgAAAEgAAAACAAAAAABXAAAAPAAAAAIAAAAAAFgAAABJAAAAAgAAAAAAWQAAAEoAAAACAAAAAABaAAAASwAAAAIAAAAAAFsAAABMAAAAAgAAAAAAawAAADgAAAACAAAAAABsAAAATQAAAAIAAAAAAG0AAABOAAAAAgAAAAAAbgAAAE8AAAACAAAAAABvAAAAUAAAAAIAAAAAAHAAAABRAAAAAgAAAAAAcQAAAFIAAAACAAAAAAByAAAAUwAAAAIAAAAAAHMAAABUAAAAAgAAAAAAdAAAAFUAAAACAAAAAAB1AAAAVgAAAAIAAAAAAHYAAABXAAAAAgAAAAAAdwAAAFgAAAACAAAAAAB4AAAAWQAAAAIAAAAAAHkAAABaAAAAAgAAAAAAegAAAFsAAAACAAAAAAB7AAAAXAAAAAIAAAAAAHwAAABdAAAAAgAAAAAAfQAAAF4AAAACAAAAAAB+AAAAXwAAAAIAAAAAAH8AAABgAAAAAgAAAAAAgAAAAGEAAAACAAAAAACBAAAAYgAAAAIAAAAAAIIAAABjAAAAAgAAAAAAgwAAAGQAAAACAAAAAACEAAAAZQAAAAIAAAAAAIUAAABmAAAAAgAAAAAAhgAAAGcAAAACAAAAAACHAAAAaAAAAAIAAAAAAIgAAABpAAAAAgAAAAAAiQAAAGoAAAACAAAAAACKAAAAawAAAAIAAAAAAIsAAABsAAAAAgAAAAAAjAAAAG0AAAACAAAAAACNAAAAbgAAAAIAAAAAAI4AAABvAAAAAgAAAAAAjwAAAHAAAAACAAAAAACQAAAAcQAAAAIAAAAAAJEAAAByAAAAAgAAAAAAkgAAAHMAAAACAAAAAACTAAAABwAuAAAAAgAAAAAAVwAAAAIAAAAAAFgAAAACAAAAAABZAAAAAgAAAAAAWgAAAAIAAAAAAFsAAAACAAAAAABrAAAAAgAAAAAAbAAAAAIAAAAAAG0AAAACAAAAAABuAAAAAgAAAAAAbwAAAAIAAAAAAHAAAAACAAAAAABxAAAAAgAAAAAAcgAAAAIAAAAAAHMAAAACAAAAAAB0AAAAAgAAAAAAdQAAAAIAAAAAAHYAAAACAAAAAAB3AAAAAgAAAAAAeAAAAAIAAAAAAHkAAAACAAAAAAB6AAAAAgAAAAAAewAAAAIAAAAAAHwAAAACAAAAAAB9AAAAAgAAAAAAfgAAAAIAAAAAAH8AAAACAAAAAACAAAAAAgAAAAAAgQAAAAIAAAAAAIIAAAACAAAAAACDAAAAAgAAAAAAhAAAAAIAAAAAAIUAAAACAAAAAACGAAAAAgAAAAAAhwAAAAIAAAAAAIgAAAACAAAAAACJAAAAAgAAAAAAigAAAAIAAAAAAIsAAAACAAAAAACMAAAAAgAAAAAAjQAAAAIAAAAAAI4AAAACAAAAAACPAAAAAgAAAAAAkAAAAAIAAAAAAJEAAAACAAAAAACSAAAAAgAAAAAAkwAAAAcAAAAAAAcAAQAAAAIAAQAAABUAAAAHAAEAAAACAAAAAAAeAAAAAgABAAAAFQAAAAcAAAAAAAoAAAAAAAQAAQAAAAAAAAAHAAIAAAACAAAAAABWAAAAAgABAAAAFQAAAAcAAgAAAAIAAAAAAB4AAAACAAAAAACUAAAAAQAKAAAAAAAKAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAcACgAAAAcABAAAAAQAAQAAAAAAAAACAAAAAABWAAAABgA5AAAABgBDAAAABwAEAAAABAABAAAAAAAAAAIAAAAAAFYAAAAGAEwAAAAGAHQAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAVgAAAAYAOAAAAAYARAAAAAcABAAAAAQAAQAAAAAAAAACAAAAAABWAAAABgBNAAAABgB1AAAABwAEAAAABAABAAAAAAAAAAIAAAAAAFYAAAAGAIcAAAAGAHYAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAVgAAAAYAiAAAAAYAdwAAAAcABAAAAAQAAQAAAAAAAAACAAAAAABWAAAABgCJAAAABgB4AAAABwAEAAAABAABAAAAAAAAAAIAAAAAAFYAAAAGAIoAAAAGAHkAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAVgAAAAYAiwAAAAYAegAAAAcABAAAAAQAAQAAAAAAAAACAAAAAABWAAAABgCMAAAABgB7AAAABwAKAAAABwAEAAAABAABAAAAAAAAAAIAAAAAAFYAAAAGADkAAAAGAEMAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAVgAAAAYATAAAAAYAdAAAAAcABAAAAAQAAQAAAAAAAAACAAAAAABWAAAABgA4AAAABgBEAAAABwAEAAAABAABAAAAAAAAAAIAAAAAAFYAAAAGAE0AAAAGAHUAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAVgAAAAYAhwAAAAYAdgAAAAcABAAAAAQAAQAAAAAAAAACAAAAAABWAAAABgCIAAAABgB3AAAABwAEAAAABAABAAAAAAAAAAIAAAAAAFYAAAAGAIkAAAAGAHgAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAVgAAAAYAigAAAAYAeQAAAAcABAAAAAQAAQAAAAAAAAACAAAAAABWAAAABgCLAAAABgB6AAAABwAEAAAABAABAAAAAAAAAAIAAAAAAFYAAAAGAIwAAAAGAHsAAAABAAwAAAAAAFkAAAABAAEAAQAMAAAAAABaAAAAAQABAAEADAAAAAAAWwAAAAEAAQABAAwAAAAAAFwAAAABAAEAAQAMAAAAAABdAAAAAQABAAEADAAAAAAAXgAAAAEAAQABAAwAAAAAAF8AAAABAAEAAQAMAAAAAABgAAAAAQABAAEADAAAAAAAYQAAAAEAAQABAAwAAAAAAGIAAAABAAEAAQAMAAAAAABjAAAAAQABAAEADAAAAAAAZAAAAAEAAQABAAwAAAAAAGUAAAABAAEAAQAMAAAAAABmAAAAAQABAAEADAAAAAAAZwAAAAEAAQABAAwAAAAAAGgAAAABAAEAAQAMAAAAAABpAAAAAQABAAEADAAAAAAAagAAAAEAAQABAAwAAAAAAGsAAAABAAEAAQAMAAAAAABsAAAAAQABAAEADAAAAAAAbQAAAAEAAQABAAwAAAAAAG4AAAABAAEAAQAMAAAAAABvAAAAAQABAAEADAAAAAAAcAAAAAEAAQABAAwAAAAAAHEAAAABAAEAAQAMAAAAAAByAAAAAQABAAEADAAAAAAAcwAAAAEAAQABAAwAAAAAAHQAAAABAAEAAQAMAAAAAAB1AAAAAQABAAEADAAAAAAAdgAAAAEAAQABAAwAAAAAAHcAAAABAAEAAQAMAAAAAAB4AAAAAQABAAEADAAAAAAAeQAAAAEAAQABAAwAAAAAAHoAAAABAAEAAQAMAAAAAAB7AAAAAQABAAEADAAAAAAAfAAAAAEAAQABAAwAAAAAAH0AAAABAAEAAQAMAAAAAAB+AAAAAQABAAEADAAAAAAAfwAAAAEAAQABAAwAAAAAAIAAAAABAAEAAQAMAAAAAACBAAAAAQABAAEABgAHAAAACgABAAAAfAAAAAIAAAAAAKkAAAAKAAMAAAAPAAAAAgAAAAAAXQAAABYAAAACAAAAAABeAAAAEAAAAAIAAAAAAF8AAAAHAAMAAAACAAAAAABdAAAAAgAAAAAAXgAAAAIAAAAAAF8AAAAHAAAAAAAHAAEAAAACAAEAAAAVAAAABwAAAAAAAgABAAAAFQAAAAcAAAAAAAoAAAAAAAQAAQAAAAAAAAAHAAIAAAACAAAAAABcAAAAAgABAAAAFQAAAAcAAAAAAAEACgABAAAAhAAAAAIAAAAAAF8AAAAKAAEAAACNAAAABwACAAAAAgAAAAAAXAAAAAYAfAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAABwABAAAABwAEAAAABAABAAAAAAAAAAIAAAAAAFwAAAAGAI4AAAAGAHwAAAAHAAEAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAXAAAAAYAjgAAAAYAfAAAAAEABgAIAAAACgAAAAAACgABAAAAFgAAAAIAAAAAAGEAAAAHAAEAAAACAAAAAABhAAAABwAAAAAABwABAAAAAgAAAAAAXAAAAAcAAAAAAAEABwAAAAAACgAAAAAABAABAAAAAAAAAAcAAwAAAAIAAAAAAGAAAAACAAAAAABcAAAAAgABAAAAFQAAAAcAAAAAAAEACgAAAAAACgAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAHAAEAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAXAAAAAYAjgAAAAYAfAAAAAcAAAAAAAEABgAxAAAAAwAEAAAAAAAAAAAAAwACAAEAAAAVAAAABAABAAAAAAAAAAYAMgAAAAMABAAAAAAAAAAAAAMAAgABAAAAFQAAAAQAAQAAAAAAAAAGADMAAAACAAEAAAACAAAABAABAAAAAAAAAAMAAgABAAAAAgAAAAQAAQAAAAAAAAAGAEMAAAADAAQAAAAAAAAAAAADAAIAAQAAABUAAAAEAAEAAAAAAAAABgB0AAAAAgABAAAABAAAAAQAAQAAAAAAAAADAAIAAQAAAAQAAAAEAAEAAAAAAAAABgBEAAAAAgABAAAAAgAAAAQAAQAAAAAAAAADAAIAAQAAAAIAAAAEAAEAAAAAAAAABgB1AAAAAgABAAAAAgAAAAQAAQAAAAAAAAADAAIAAQAAAAIAAAAEAAEAAAAAAAAABgB2AAAAAwAEAAAAAAAAAAAAAwACAAEAAAAVAAAABAABAAAAAAAAAAYAdwAAAAMABAAAAAAAAAAAAAMAAgABAAAAFQAAAAQAAQAAAAAAAAAGAHgAAAADAAQAAAAAAAAAAAADAAIAAQAAABUAAAAEAAEAAAAAAAAABgB5AAAAAwAEAAAAAAAAAAAAAwACAAEAAAAVAAAABAABAAAAAAAAAAYAegAAAAMABAAAAAAAAAAAAAMAAgABAAAAFQAAAAQAAQAAAAAAAAAGAHsAAAADAAQAAAAAAAAAAAADAAIAAQAAABUAAAAEAAEAAAAAAAAABgBDAAAAAwAEAAAAAAAAAAAAAwACAAEAAAAVAAAABAABAAAAAAAAAAYARAAAAAIAAQAAAAIAAAAEAAEAAAAAAAAAAwACAAEAAAACAAAABAABAAAAAAAAAAYARQAAAAIAAQAAAAIAAAAEAAEAAAAAAAAAAwACAAEAAAACAAAABAABAAAAAAAAAAYARgAAAAMABAAAAAAAAAAAAAMAAgABAAAAFQAAAAQAAQAAAAAAAAAGAEcAAAADAAQAAAAAAAAAAAADAAIAAQAAABUAAAAEAAEAAAAAAAAABgB8AAAAAwAEAAAAAAAAAAAAAwACAAEAAAAVAAAABAABAAAAAAAAAAIAAAAHAAAAAAAKAAAAAAADAAAABwAAAAAACgAAAAAABgAEAAAAAgAAAAAAHgAAAAoACgAAAEMAAAACAAAAAACaAAAAdAAAAAIAAAAAAJsAAABEAAAAAgAAAAAAnAAAAHUAAAACAAAAAACdAAAAdgAAAAIAAAAAAJ4AAAB3AAAAAgAAAAAAnwAAAHgAAAACAAAAAACgAAAAeQAAAAIAAAAAAKEAAAB6AAAAAgAAAAAAogAAAHsAAAACAAAAAACjAAAACgApAAAATAAAAAIAAAAAAGsAAAA4AAAAAgAAAAAAbAAAAE0AAAACAAAAAABtAAAATgAAAAIAAAAAAG4AAABPAAAAAgAAAAAAbwAAAFAAAAACAAAAAABwAAAAUQAAAAIAAAAAAHEAAABSAAAAAgAAAAAAcgAAAFMAAAACAAAAAABzAAAAVAAAAAIAAAAAAHQAAABVAAAAAgAAAAAAdQAAAFYAAAACAAAAAAB2AAAAVwAAAAIAAAAAAHcAAABYAAAAAgAAAAAAeAAAAFkAAAACAAAAAAB5AAAAWgAAAAIAAAAAAHoAAABbAAAAAgAAAAAAewAAAFwAAAACAAAAAAB8AAAAXQAAAAIAAAAAAH0AAABeAAAAAgAAAAAAfgAAAF8AAAACAAAAAAB/AAAAYAAAAAIAAAAAAIAAAABhAAAAAgAAAAAAgQAAAGIAAAACAAAAAACCAAAAYwAAAAIAAAAAAIMAAABkAAAAAgAAAAAAhAAAAGUAAAACAAAAAACFAAAAZgAAAAIAAAAAAIYAAABnAAAAAgAAAAAAhwAAAGgAAAACAAAAAACIAAAAaQAAAAIAAAAAAIkAAABqAAAAAgAAAAAAigAAAGsAAAACAAAAAACLAAAAbAAAAAIAAAAAAIwAAABtAAAAAgAAAAAAjQAAAG4AAAACAAAAAACOAAAAbwAAAAIAAAAAAI8AAABwAAAAAgAAAAAAkAAAAHEAAAACAAAAAACRAAAAcgAAAAIAAAAAAJIAAABzAAAAAgAAAAAAkwAAAAcAAAAAAAcAAAAAAAcAAAAAAAcAAAAAAAQAAQAAAAAAAAAAAAAAGgAAAAEAAAABAAAAAAAAAGsAAAAAAAAAGwAAAAEAAAABAAAAAAAAAGwAAAAAAAAAHAAAAAEAAAABAAAAAAAAAG0AAAAAAAAAHQAAAAEAAAABAAAAAAAAAG4AAAAAAAAAHgAAAAEAAAABAAAAAAAAAG8AAAAAAAAAHwAAAAEAAAABAAAAAAAAAHAAAAAAAAAAIAAAAAEAAAABAAAAAAAAAHEAAAAAAAAAIQAAAAEAAAABAAAAAAAAAHIAAAAAAAAAIgAAAAEAAAABAAAAAAAAAHMAAAAAAAAAIwAAAAEAAAABAAAAAAAAAHQAAAAAAAAAJAAAAAEAAAABAAAAAAAAAHUAAAAAAAAAJQAAAAEAAAABAAAAAAAAAHYAAAAAAAAAJgAAAAEAAAABAAAAAAAAAHcAAAAAAAAAJwAAAAEAAAABAAAAAAAAAHgAAAAAAAAAKAAAAAEAAAABAAAAAAAAAHkAAAAAAAAAKQAAAAEAAAABAAAAAAAAAHoAAAAAAAAAKgAAAAEAAAABAAAAAAAAAHsAAAAAAAAAKwAAAAEAAAABAAAAAAAAAHwAAAAAAAAALAAAAAEAAAABAAAAAAAAAH0AAAAAAAAALQAAAAEAAAABAAAAAAAAAH4AAAAAAAAALgAAAAEAAAABAAAAAAAAAH8AAAAAAAAALwAAAAEAAAABAAAAAAAAAIAAAAAAAAAAMAAAAAEAAAABAAAAAAAAAIEAAAAAAAAAMQAAAAEAAAABAAAAAAAAAIIAAAAAAAAAMgAAAAEAAAABAAAAAAAAAIMAAAAAAAAAMwAAAAEAAAABAAAAAAAAAIQAAAAAAAAANAAAAAEAAAABAAAAAAAAAIUAAAAAAAAANQAAAAEAAAABAAAAAAAAAIYAAAAAAAAANgAAAAEAAAABAAAAAAAAAIcAAAAAAAAANwAAAAEAAAABAAAAAAAAAIgAAAAAAAAAOAAAAAEAAAABAAAAAAAAAIkAAAAAAAAAOQAAAAEAAAABAAAAAAAAAIoAAAAAAAAAOgAAAAEAAAABAAAAAAAAAIsAAAAAAAAAOwAAAAEAAAABAAAAAAAAAIwAAAAAAAAAPAAAAAEAAAABAAAAAAAAAI0AAAAAAAAAPQAAAAEAAAABAAAAAAAAAI4AAAAAAAAAPgAAAAEAAAABAAAAAAAAAI8AAAAAAAAAPwAAAAEAAAABAAAAAAAAAJAAAAAAAAAAQAAAAAEAAAABAAAAAAAAAJEAAAAAAAAAQQAAAAEAAAABAAAAAAAAAJIAAAAAAAAAQgAAAAEAAAABAAAAAAAAAJMAAAAAAAAAQwAAAAAAAAAAAAAABgAAAAAAAACmAAAAAwCnAAAAAwCoAAAACgAAAAAAqQAAAAQAAQAAAAAAAACqAAAABwAAAAAAqwAAAAIAAAAAAFYAAAA=", cur_sc, $P5002, $P5004
    .const "LexInfo" $P5001 = "cuid_1_1351021530.153"
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 0
    $P5001."set_static_lexpad_value"("GLOBALish", $P5002)
    .const "LexInfo" $P5003 = "cuid_1_1351021530.153"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1351021530.153"
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 0
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_1_1351021530.153"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1351021530.153"
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 1
    $P5001."set_static_lexpad_value"("EXPORT", $P5002)
    .const "LexInfo" $P5003 = "cuid_1_1351021530.153"
    $P5003."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_2_1351021530.153" 
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 4
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_3_1351021530.153" 
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 5
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_4_1351021530.153" 
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 6
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_5_1351021530.153" 
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 7
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_6_1351021530.153" 
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 8
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_7_1351021530.153" 
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 9
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_8_1351021530.153" 
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 10
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_9_1351021530.153" 
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 11
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_10_1351021530.153" 
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 12
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_11_1351021530.153" 
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 13
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_12_1351021530.153" 
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 14
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_13_1351021530.153" 
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 15
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_14_1351021530.153" 
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 16
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_15_1351021530.153" 
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 17
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_16_1351021530.153" 
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 18
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_17_1351021530.153" 
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 19
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_18_1351021530.153" 
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 20
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_19_1351021530.153" 
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 21
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_20_1351021530.153" 
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 22
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_21_1351021530.153" 
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 23
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_22_1351021530.153" 
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 24
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_23_1351021530.153" 
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 25
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_24_1351021530.153" 
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 26
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_25_1351021530.153" 
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 27
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_26_1351021530.153" 
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 28
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_27_1351021530.153" 
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 29
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_28_1351021530.153"
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 3
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_28_1351021530.153"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_28_1351021530.153"
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 3
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_28_1351021530.153"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1351021530.153"
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 30
    $P5001."set_static_lexpad_value"("NQPCursorRole", $P5002)
    .const "LexInfo" $P5003 = "cuid_1_1351021530.153"
    $P5003."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_29_1351021530.153" 
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 31
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_30_1351021530.153" 
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 32
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_31_1351021530.153" 
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 33
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_32_1351021530.153" 
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 34
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_33_1351021530.153" 
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 35
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_34_1351021530.153" 
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 36
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_35_1351021530.153" 
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 37
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_36_1351021530.153" 
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 38
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_37_1351021530.153" 
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 39
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_38_1351021530.153" 
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 40
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_39_1351021530.153" 
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 41
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_40_1351021530.153" 
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 42
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_41_1351021530.153" 
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 43
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_42_1351021530.153" 
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 44
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_43_1351021530.153" 
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 45
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_44_1351021530.153" 
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 46
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_45_1351021530.153" 
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 47
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_46_1351021530.153" 
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 48
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_47_1351021530.153" 
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 49
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_48_1351021530.153" 
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 50
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_49_1351021530.153" 
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 51
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_50_1351021530.153" 
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 52
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_51_1351021530.153" 
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 53
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_52_1351021530.153" 
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 54
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_53_1351021530.153" 
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 55
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_54_1351021530.153" 
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 56
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_55_1351021530.153" 
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 57
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_56_1351021530.153" 
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 58
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_57_1351021530.153" 
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 59
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_58_1351021530.153" 
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 60
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_59_1351021530.153" 
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 61
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_60_1351021530.153" 
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 62
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_61_1351021530.153" 
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 63
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_62_1351021530.153" 
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 64
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_63_1351021530.153" 
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 65
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_64_1351021530.153" 
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 66
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_65_1351021530.153" 
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 67
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_66_1351021530.153" 
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 68
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_67_1351021530.153" 
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 69
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_68_1351021530.153" 
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 70
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_69_1351021530.153" 
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 71
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_70_1351021530.153" 
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 72
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_70_1351021530.153"
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 30
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_70_1351021530.153"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_70_1351021530.153"
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 30
    $P5001."set_static_lexpad_value"("$?ROLE", $P5002)
    .const "LexInfo" $P5003 = "cuid_70_1351021530.153"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1351021530.153"
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 73
    $P5001."set_static_lexpad_value"("NQPMatch", $P5002)
    .const "LexInfo" $P5003 = "cuid_1_1351021530.153"
    $P5003."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_71_1351021530.153" 
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 74
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_72_1351021530.153" 
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 75
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_73_1351021530.153" 
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 76
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_74_1351021530.153" 
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 77
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_75_1351021530.153" 
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 78
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_76_1351021530.153" 
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 79
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_77_1351021530.153" 
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 80
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_78_1351021530.153" 
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 81
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_79_1351021530.153" 
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 82
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_80_1351021530.153" 
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 83
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_81_1351021530.153" 
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 84
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_82_1351021530.153" 
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 85
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_83_1351021530.153"
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 73
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_83_1351021530.153"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_83_1351021530.153"
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 73
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_83_1351021530.153"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1351021530.153"
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 86
    $P5001."set_static_lexpad_value"("NQPCursor", $P5002)
    .const "LexInfo" $P5003 = "cuid_1_1351021530.153"
    $P5003."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_84_1351021530.153" 
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 87
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_85_1351021530.153" 
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 88
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_86_1351021530.153" 
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 89
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_87_1351021530.153" 
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 90
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_88_1351021530.153" 
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 91
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_89_1351021530.153"
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 86
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_89_1351021530.153"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_89_1351021530.153"
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 86
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_89_1351021530.153"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1351021530.153"
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 92
    $P5001."set_static_lexpad_value"("NQPRegexMethod", $P5002)
    .const "LexInfo" $P5003 = "cuid_1_1351021530.153"
    $P5003."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_108_1351021530.153" 
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 93
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_109_1351021530.153" 
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 94
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_110_1351021530.153" 
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 95
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_111_1351021530.153"
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 92
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_111_1351021530.153"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_111_1351021530.153"
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 92
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_111_1351021530.153"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_1_1351021530.153"
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 96
    $P5001."set_static_lexpad_value"("NQPRegex", $P5002)
    .const "LexInfo" $P5003 = "cuid_1_1351021530.153"
    $P5003."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_112_1351021530.153" 
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 97
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_113_1351021530.153"
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 96
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_113_1351021530.153"
    $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_113_1351021530.153"
    nqp_get_sc_object $P5002, "07724150D8EEC6E4D62690B51ABFC3A7D3126C88-1351021530.178", 96
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_113_1351021530.153"
    $P5004 = $P5003."finish_static_lexpad"()
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_154_1351021530.153") :anon :lex :outer("cuid_155_1351021530.153")
.annotate 'file', "src\\stage2\\QRegex.nqp"
    new $P5001, 'ResizablePMCArray'
    .const 'Sub' $P5002 = "cuid_2_1351021530.153" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_3_1351021530.153" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_4_1351021530.153" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_5_1351021530.153" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_6_1351021530.153" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_7_1351021530.153" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_8_1351021530.153" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_9_1351021530.153" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_10_1351021530.153" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_11_1351021530.153" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_12_1351021530.153" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_13_1351021530.153" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_14_1351021530.153" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_15_1351021530.153" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_16_1351021530.153" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_17_1351021530.153" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_18_1351021530.153" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_19_1351021530.153" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_20_1351021530.153" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_21_1351021530.153" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_22_1351021530.153" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_23_1351021530.153" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_24_1351021530.153" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_25_1351021530.153" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_26_1351021530.153" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_27_1351021530.153" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_29_1351021530.153" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_30_1351021530.153" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_31_1351021530.153" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_32_1351021530.153" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_33_1351021530.153" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_34_1351021530.153" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_35_1351021530.153" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_36_1351021530.153" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_37_1351021530.153" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_38_1351021530.153" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_39_1351021530.153" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_40_1351021530.153" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_41_1351021530.153" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_42_1351021530.153" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_43_1351021530.153" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_44_1351021530.153" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_45_1351021530.153" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_46_1351021530.153" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_47_1351021530.153" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_48_1351021530.153" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_49_1351021530.153" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_50_1351021530.153" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_51_1351021530.153" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_52_1351021530.153" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_53_1351021530.153" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_54_1351021530.153" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_55_1351021530.153" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_56_1351021530.153" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_57_1351021530.153" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_58_1351021530.153" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_59_1351021530.153" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_60_1351021530.153" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_61_1351021530.153" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_62_1351021530.153" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_63_1351021530.153" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_64_1351021530.153" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_65_1351021530.153" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_66_1351021530.153" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_67_1351021530.153" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_68_1351021530.153" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_69_1351021530.153" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_70_1351021530.153" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_71_1351021530.153" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_72_1351021530.153" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_73_1351021530.153" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_74_1351021530.153" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_75_1351021530.153" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_76_1351021530.153" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_77_1351021530.153" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_78_1351021530.153" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_79_1351021530.153" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_80_1351021530.153" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_81_1351021530.153" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_82_1351021530.153" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_84_1351021530.153" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_85_1351021530.153" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_86_1351021530.153" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_87_1351021530.153" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_88_1351021530.153" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_108_1351021530.153" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_109_1351021530.153" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_110_1351021530.153" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_112_1351021530.153" 
    push $P5001, $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_156_1351021530.153") :load
.annotate 'file', "src\\stage2\\QRegex.nqp"
    .const 'Sub' $P5001 = "cuid_1_1351021530.153" 
    $P5002 = $P5001()
    .return ($P5002) 
.end