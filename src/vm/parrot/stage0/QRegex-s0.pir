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
.include 'nqp_const.pir'
.loadlib "nqp_group"
.loadlib "nqp_ops"
.loadlib "nqp_bigint_ops"
.loadlib "trans_ops"
.loadlib "io_ops"
.HLL "nqp"
.namespace []
.sub "<mainline>" :subid("cuid_126_1431289885.65252") :anon :lex
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
    .param pmc _lex_param_0 :slurpy 
    .const 'Sub' $P5050 = 'cuid_127_1431289885.65252' 
    capture_lex $P5050 
    .const 'Sub' $P5050 = 'cuid_135_1431289885.65252' 
    capture_lex $P5050 
    .const 'Sub' $P5050 = 'cuid_90_1431289885.65252' 
    capture_lex $P5050 
    .const 'Sub' $P5050 = 'cuid_136_1431289885.65252' 
    capture_lex $P5050 
    .const 'Sub' $P5050 = 'cuid_141_1431289885.65252' 
    capture_lex $P5050 
    .const 'Sub' $P5050 = 'cuid_142_1431289885.65252' 
    capture_lex $P5050 
    .const 'Sub' $P5050 = 'cuid_143_1431289885.65252' 
    capture_lex $P5050 
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
    .local pmc fb_tmp_18 
    .local pmc fb_tmp_19 
    .local pmc fb_tmp_20 
.annotate 'line', 959
.annotate 'line', 960
    nqp_get_sc_object $P5001, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 9
    nqp_get_sc_object $P5002, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 3
    $P5001."SET_NFA_TYPE"($P5002)
    find_dynamic_lex $P5003, "$*CTXSAVE"
    set ctxsave, $P5003
    isnull $I5001, ctxsave
    if $I5001 goto unless158_end335 
    can $I5002, ctxsave, "ctxsave"
    box $P5006, $I5002
    set $P5005, $P5006
    unless $I5002 goto if159_end337 
    $P5004 = ctxsave."ctxsave"()
    set $P5005, $P5004
  if159_end337:
  unless158_end335:
.annotate 'line', 1
    .const 'Sub' $P5031 = 'cuid_127_1431289885.65252' 
    capture_lex $P5031
    $P5032 = $P5031()
    .const 'Sub' $P5033 = 'cuid_135_1431289885.65252' 
    capture_lex $P5033
    $P5034 = $P5033()
    .const 'Sub' $P5035 = 'cuid_90_1431289885.65252' 
    capture_lex $P5035
    .const 'Sub' $P5036 = 'cuid_136_1431289885.65252' 
    capture_lex $P5036
    $P5037 = $P5036()
    .const 'Sub' $P5038 = 'cuid_141_1431289885.65252' 
    capture_lex $P5038
    $P5039 = $P5038()
    .const 'Sub' $P5040 = 'cuid_142_1431289885.65252' 
    capture_lex $P5040
    $P5041 = $P5040()
    nqp_get_sc_object $P5042, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 121
    nqp_get_sc_object $P5043, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 121
    null $P5044
    set_invocation_spec $P5042, $P5043, "$!code", $P5044
    .const 'Sub' $P5045 = 'cuid_143_1431289885.65252' 
    capture_lex $P5045
    $P5046 = $P5045()
    nqp_get_sc_object $P5047, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 126
    nqp_get_sc_object $P5048, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 121
    null $P5049
    set_invocation_spec $P5047, $P5048, "$!code", $P5049
    .return () 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_127_1431289885.65252") :anon :lex :outer("cuid_126_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 11
    .const 'Sub' $P5090 = 'cuid_128_1431289885.65252' 
    capture_lex $P5090 
    .const 'Sub' $P5090 = 'cuid_129_1431289885.65252' 
    capture_lex $P5090 
    .const 'Sub' $P5090 = 'cuid_1_1431289885.65252' 
    capture_lex $P5090 
    .const 'Sub' $P5090 = 'cuid_2_1431289885.65252' 
    capture_lex $P5090 
    .const 'Sub' $P5090 = 'cuid_3_1431289885.65252' 
    capture_lex $P5090 
    .const 'Sub' $P5090 = 'cuid_4_1431289885.65252' 
    capture_lex $P5090 
    .const 'Sub' $P5090 = 'cuid_5_1431289885.65252' 
    capture_lex $P5090 
    .const 'Sub' $P5090 = 'cuid_6_1431289885.65252' 
    capture_lex $P5090 
    .const 'Sub' $P5090 = 'cuid_7_1431289885.65252' 
    capture_lex $P5090 
    .const 'Sub' $P5090 = 'cuid_8_1431289885.65252' 
    capture_lex $P5090 
    .const 'Sub' $P5090 = 'cuid_9_1431289885.65252' 
    capture_lex $P5090 
    .const 'Sub' $P5090 = 'cuid_10_1431289885.65252' 
    capture_lex $P5090 
    .const 'Sub' $P5090 = 'cuid_11_1431289885.65252' 
    capture_lex $P5090 
    .const 'Sub' $P5090 = 'cuid_12_1431289885.65252' 
    capture_lex $P5090 
    .const 'Sub' $P5090 = 'cuid_13_1431289885.65252' 
    capture_lex $P5090 
    .const 'Sub' $P5090 = 'cuid_14_1431289885.65252' 
    capture_lex $P5090 
    .const 'Sub' $P5090 = 'cuid_15_1431289885.65252' 
    capture_lex $P5090 
    .const 'Sub' $P5090 = 'cuid_16_1431289885.65252' 
    capture_lex $P5090 
    .const 'Sub' $P5090 = 'cuid_17_1431289885.65252' 
    capture_lex $P5090 
    .const 'Sub' $P5090 = 'cuid_18_1431289885.65252' 
    capture_lex $P5090 
    .const 'Sub' $P5090 = 'cuid_19_1431289885.65252' 
    capture_lex $P5090 
    .const 'Sub' $P5090 = 'cuid_20_1431289885.65252' 
    capture_lex $P5090 
    .const 'Sub' $P5090 = 'cuid_21_1431289885.65252' 
    capture_lex $P5090 
    .const 'Sub' $P5090 = 'cuid_22_1431289885.65252' 
    capture_lex $P5090 
    .const 'Sub' $P5090 = 'cuid_23_1431289885.65252' 
    capture_lex $P5090 
    .const 'Sub' $P5090 = 'cuid_132_1431289885.65252' 
    capture_lex $P5090 
    .const 'Sub' $P5090 = 'cuid_24_1431289885.65252' 
    capture_lex $P5090 
    .const 'Sub' $P5090 = 'cuid_25_1431289885.65252' 
    capture_lex $P5090 
    .const 'Sub' $P5090 = 'cuid_26_1431289885.65252' 
    capture_lex $P5090 
    .const 'Sub' $P5090 = 'cuid_27_1431289885.65252' 
    capture_lex $P5090 
    .const 'Sub' $P5090 = 'cuid_28_1431289885.65252' 
    capture_lex $P5090 
    .const 'Sub' $P5090 = 'cuid_29_1431289885.65252' 
    capture_lex $P5090 
    .const 'Sub' $P5090 = 'cuid_30_1431289885.65252' 
    capture_lex $P5090 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .lex "$EDGE_FATE", $P103 
    .lex "$EDGE_EPSILON", $P104 
    .lex "$EDGE_CODEPOINT", $P105 
    .lex "$EDGE_CHARCLASS", $P106 
    .lex "$EDGE_CHARCLASS_NEG", $P107 
    .lex "$EDGE_CHARLIST", $P108 
    .lex "$EDGE_CHARLIST_NEG", $P109 
    .lex "$EDGE_SUBRULE", $P110 
    .lex "$EDGE_CODEPOINT_I", $P111 
    .lex "$EDGE_GENERIC_VAR", $P112 
    .lex "$EDGE_CHARRANGE", $P113 
    .lex "$EDGE_CODEPOINT_LL", $P114 
    .lex "$EDGE_CODEPOINT_I_LL", $P115 
    .lex "$EDGE_CODEPOINT_M", $P116 
    .lex "$ACTIONS", $P117 
    .lex "$nfadeb", $P118 
    .lex "$ind", $P119 
    .lex "&dentin", $P120 
    .lex "&dentout", $P121 
    .lex "%cclass_code", $P122 
    .lex "NFAType", $P123 
    .local pmc __lowered_lex_441 
    .local pmc __lowered_lex_442 
    .local pmc __lowered_lex_443 
    .local pmc __lowered_lex_444 
    nqp_get_sc_object $P5001, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P117, $P5001
    nqp_get_sc_object $P5002, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P118, $P5002
    nqp_get_sc_object $P5003, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P119, $P5003
    .const 'Sub' $P5004 = 'cuid_128_1431289885.65252' 
    capture_lex $P5004
    set $P120, $P5004
    .const 'Sub' $P5005 = 'cuid_129_1431289885.65252' 
    capture_lex $P5005
    set $P121, $P5005
    new $P5006, 'Hash'
    set $P122, $P5006
.annotate 'line', 172
    box $P5007, 65535
    set $P122["."], $P5007
    box $P5008, 8
    set $P122["d"], $P5008
    box $P5009, 32
    set $P122["s"], $P5009
    box $P5010, 8192
    set $P122["w"], $P5010
    box $P5011, 4096
    set $P122["n"], $P5011
    box $P5012, 4096
    set $P122["nl"], $P5012
    nqp_getenvhash $P5013
    exists $I5001, $P5013["NQP_NFA_DEB"]
    box $P5014, $I5001
    set $P118, $P5014
    new $P5015, 'QRPA'
    assign $P5015, 18
    assign $P5015, 0
    box $P5016, "FATE"
    push $P5015, $P5016
    box $P5017, "EPSILON"
    push $P5015, $P5017
    box $P5018, "CODEPOINT"
    push $P5015, $P5018
    box $P5019, "CODEPOINT_NEG"
    push $P5015, $P5019
    box $P5020, "CHARCLASS"
    push $P5015, $P5020
    box $P5021, "CHARCLASS_NEG"
    push $P5015, $P5021
    box $P5022, "CHARLIST"
    push $P5015, $P5022
    box $P5023, "CHARLIST_NEG"
    push $P5015, $P5023
    box $P5024, "SUBRULE"
    push $P5015, $P5024
    box $P5025, "CODEPOINT_I"
    push $P5015, $P5025
    box $P5026, "CODEPOINT_I_NEG"
    push $P5015, $P5026
    box $P5027, "GENERIC_VAR"
    push $P5015, $P5027
    box $P5028, "CHARRANGE"
    push $P5015, $P5028
    box $P5029, "CHARRANGE_NEG"
    push $P5015, $P5029
    box $P5030, "CODEPOINT_LL"
    push $P5015, $P5030
    box $P5031, "CODEPOINT_I_LL"
    push $P5015, $P5031
    box $P5032, "CODEPOINT_M"
    push $P5015, $P5032
    box $P5033, "CODEPOINT_M_NEG"
    push $P5015, $P5033
    set $P117, $P5015
    get_who $P5034, $P101
    box $P5035, 0
    set $P5034["$nfatime"], $P5035
    get_who $P5036, $P101
    box $P5037, 0
    set $P5036["$etctime"], $P5037
    get_who $P5038, $P101
    time $N5001
    box $P5039, $N5001
    set $P5038["$lastnfatime"], $P5039
.annotate 'line', 11
    box $P5040, 0
    set $P103, $P5040
    box $P5041, 1
    set $P104, $P5041
    box $P5042, 2
    set $P105, $P5042
    box $P5043, 3
    set __lowered_lex_441, $P5043
    box $P5044, 4
    set $P106, $P5044
    box $P5045, 5
    set $P107, $P5045
    box $P5046, 6
    set $P108, $P5046
    box $P5047, 7
    set $P109, $P5047
    box $P5048, 8
    set $P110, $P5048
    box $P5049, 9
    set $P111, $P5049
    box $P5050, 10
    set __lowered_lex_442, $P5050
    box $P5051, 11
    set $P112, $P5051
    box $P5052, 12
    set $P113, $P5052
    box $P5053, 13
    set __lowered_lex_443, $P5053
    box $P5054, 14
    set $P114, $P5054
    box $P5055, 15
    set $P115, $P5055
    box $P5056, 16
    set $P116, $P5056
    box $P5057, 17
    set __lowered_lex_444, $P5057
    .const 'Sub' $P5058 = 'cuid_1_1431289885.65252' 
    capture_lex $P5058
    .const 'Sub' $P5059 = 'cuid_2_1431289885.65252' 
    capture_lex $P5059
    .const 'Sub' $P5060 = 'cuid_3_1431289885.65252' 
    capture_lex $P5060
    .const 'Sub' $P5061 = 'cuid_4_1431289885.65252' 
    capture_lex $P5061
    .const 'Sub' $P5062 = 'cuid_5_1431289885.65252' 
    capture_lex $P5062
    .const 'Sub' $P5063 = 'cuid_6_1431289885.65252' 
    capture_lex $P5063
    .const 'Sub' $P5064 = 'cuid_7_1431289885.65252' 
    capture_lex $P5064
    .const 'Sub' $P5065 = 'cuid_8_1431289885.65252' 
    capture_lex $P5065
    .const 'Sub' $P5066 = 'cuid_9_1431289885.65252' 
    capture_lex $P5066
    .const 'Sub' $P5067 = 'cuid_10_1431289885.65252' 
    capture_lex $P5067
    .const 'Sub' $P5068 = 'cuid_11_1431289885.65252' 
    capture_lex $P5068
    .const 'Sub' $P5069 = 'cuid_12_1431289885.65252' 
    capture_lex $P5069
    .const 'Sub' $P5070 = 'cuid_13_1431289885.65252' 
    capture_lex $P5070
    .const 'Sub' $P5071 = 'cuid_14_1431289885.65252' 
    capture_lex $P5071
    .const 'Sub' $P5072 = 'cuid_15_1431289885.65252' 
    capture_lex $P5072
    .const 'Sub' $P5073 = 'cuid_16_1431289885.65252' 
    capture_lex $P5073
    .const 'Sub' $P5074 = 'cuid_17_1431289885.65252' 
    capture_lex $P5074
    .const 'Sub' $P5075 = 'cuid_18_1431289885.65252' 
    capture_lex $P5075
    .const 'Sub' $P5076 = 'cuid_19_1431289885.65252' 
    capture_lex $P5076
    .const 'Sub' $P5077 = 'cuid_20_1431289885.65252' 
    capture_lex $P5077
    .const 'Sub' $P5078 = 'cuid_21_1431289885.65252' 
    capture_lex $P5078
    .const 'Sub' $P5079 = 'cuid_22_1431289885.65252' 
    capture_lex $P5079
    .const 'Sub' $P5080 = 'cuid_23_1431289885.65252' 
    capture_lex $P5080
    .const 'Sub' $P5081 = 'cuid_132_1431289885.65252' 
    capture_lex $P5081
    $P5082 = $P5081()
    .const 'Sub' $P5083 = 'cuid_24_1431289885.65252' 
    capture_lex $P5083
    .const 'Sub' $P5084 = 'cuid_25_1431289885.65252' 
    capture_lex $P5084
    .const 'Sub' $P5085 = 'cuid_26_1431289885.65252' 
    capture_lex $P5085
    .const 'Sub' $P5086 = 'cuid_27_1431289885.65252' 
    capture_lex $P5086
    .const 'Sub' $P5087 = 'cuid_28_1431289885.65252' 
    capture_lex $P5087
    .const 'Sub' $P5088 = 'cuid_29_1431289885.65252' 
    capture_lex $P5088
    .const 'Sub' $P5089 = 'cuid_30_1431289885.65252' 
    capture_lex $P5089
    .return ($P5089) 
.end
.HLL "nqp"
.namespace []
.sub "dentin" :subid("cuid_128_1431289885.65252") :anon :lex :outer("cuid_127_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 35

    find_lex $P5001, "$nfadeb"
    unless $P5001 goto if169_else350 
.annotate 'line', 36
    find_lex $P5002, "$ind"
    set $N5002, $P5002
    set $N5003, 2
    add $N5001, $N5002, $N5003
    box $P5003, $N5001
    store_lex "$ind", $P5003
    find_lex $P5004, "$ind"
    set $I5001, $P5004
    repeat $S5001, " ", $I5001
    set $S5002, $S5001
    goto if169_end351
  if169_else350:
.annotate 'line', 40

    set $S5002, ""
  if169_end351:
    .return ($S5002) 
.end
.HLL "nqp"
.namespace []
.sub "dentout" :subid("cuid_129_1431289885.65252") :anon :lex :outer("cuid_127_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 43
    .param pmc __lowered_lex_200 
    find_lex $P5001, "$nfadeb"
    unless $P5001 goto if170_end353 
    find_lex $P5002, "$ind"
    set $N5002, $P5002
    set $N5003, 2
    sub $N5001, $N5002, $N5003
    box $P5003, $N5001
    store_lex "$ind", $P5003
  if170_end353:
    .return (__lowered_lex_200) 
.end
.HLL "nqp"
.namespace []
.sub "new" :subid("cuid_1_1431289885.65252") :anon :lex :outer("cuid_127_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 66
    .param pmc __lowered_lex_201 
    .local pmc __lowered_lex_202 
.annotate 'line', 67
    nqp_decontainerize $P5001, __lowered_lex_201
    new $P5002, 'QRPA'
    new $P5003, 'QRPA'
    $P5004 = $P5001."bless"($P5002 :named("states"), 0 :named("edges"), 0 :named("LITEND"), $P5003 :named("known"))
    set __lowered_lex_202, $P5004
.annotate 'line', 68
    __lowered_lex_202."addstate"()
.annotate 'line', 69
    __lowered_lex_202."addstate"()
    .return (__lowered_lex_202) 
.end
.HLL "nqp"
.namespace []
.sub "from_saved" :subid("cuid_2_1431289885.65252") :anon :lex :outer("cuid_127_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 73
    .param pmc __lowered_lex_203 
    .param pmc __lowered_lex_204 
.annotate 'line', 74
    nqp_decontainerize $P5001, __lowered_lex_203
    $P5002 = $P5001."bless"(__lowered_lex_204 :named("states"), 1 :named("edges"))
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "addstate" :subid("cuid_3_1431289885.65252") :anon :lex :outer("cuid_127_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 77
    .param pmc __lowered_lex_205 
    .local pmc __lowered_lex_206 
    .local int __lowered_lex_207 
.annotate 'line', 78
    $P5001 = "&dentin"()
    set __lowered_lex_206, $P5001
    nqp_decontainerize $P5002, __lowered_lex_205
    nqp_get_sc_object $P5003, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 3
    repr_get_attr_obj $P5004, $P5002, $P5003, "$!states", 0
    set $N5001, $P5004
    set $I5001, $N5001
    set __lowered_lex_207, $I5001
    find_lex $P5005, "$nfadeb"
    unless $P5005 goto if171_end355 
.annotate 'line', 80
    set $S5003, __lowered_lex_206
    concat $S5002, $S5003, " addstate "
    set $S5004, __lowered_lex_207
    concat $S5001, $S5002, $S5004
    $P5006 = "&note"($S5001)
  if171_end355:
    nqp_decontainerize $P5007, __lowered_lex_205
    nqp_get_sc_object $P5008, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 3
    repr_get_attr_obj $P5009, $P5007, $P5008, "$!states", 0
    new $P5010, 'QRPA'
    set $P5009[__lowered_lex_207], $P5010
.annotate 'line', 82
    $P5011 = "&dentout"(__lowered_lex_207)
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "addedge" :subid("cuid_4_1431289885.65252") :anon :lex :outer("cuid_127_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 85
    .param pmc __lowered_lex_208 
    .param pmc __lowered_lex_209 
    .param pmc __lowered_lex_210 
    .param pmc __lowered_lex_211 
    .param pmc __lowered_lex_212 
    .param pmc __lowered_lex_213 :named("newedge") :optional 
    .param int haz_param_10 :opt_flag 
    .local pmc __lowered_lex_214 
    .local pmc __lowered_lex_215 
    .local pmc __lowered_lex_216 
    .local pmc __lowered_lex_217 
    .local pmc fb_tmp_21 
    .local pmc fb_tmp_22 
    .local pmc fb_tmp_23 
    .local pmc fb_tmp_24 
    .local pmc fb_tmp_25 
    if haz_param_10, default392
    box $P5061, 1
    set __lowered_lex_213, $P5061
  default392:
.annotate 'line', 86
    $P5001 = "&dentin"()
    set __lowered_lex_214, $P5001
    nqp_get_sc_object $P5002, "69262D203AA461F498C95CCF7FF3EA8AC3EE1FD5-1431289882.84207", 77
    type_check $I5001, __lowered_lex_212, $P5002
    unless $I5001 goto if172_else356 
.annotate 'line', 87
    $P5003 = __lowered_lex_212."value"()
    set $P5004, $P5003
    goto if172_end357
  if172_else356:
    set $P5004, __lowered_lex_212
  if172_end357:
    set __lowered_lex_215, $P5004
    set $N5001, __lowered_lex_211
    find_lex $P5005, "$EDGE_SUBRULE"
    set $N5002, $P5005
    iseq $I5002, $N5001, $N5002
    unless $I5002 goto if173_else358 
    box $P5007, ""
    set $P5006, $P5007
    goto if173_end359
  if173_else358:
    set $P5006, __lowered_lex_215
  if173_end359:
    set __lowered_lex_216, $P5006
    find_lex $P5008, "$nfadeb"
    unless $P5008 goto if174_end361 
.annotate 'line', 89
    set $S5007, __lowered_lex_214
    concat $S5006, $S5007, " addedge "
    set $S5008, __lowered_lex_209
    concat $S5005, $S5006, $S5008
    concat $S5004, $S5005, " -> "
    set $S5009, __lowered_lex_210
    concat $S5003, $S5004, $S5009
    concat $S5002, $S5003, " "
    find_lex $P5010, "$ACTIONS"
    set fb_tmp_21, $P5010
    repr_defined $I5004, fb_tmp_21
    unless $I5004 goto if175_else363 
    set $I5006, __lowered_lex_211
    band $I5005, $I5006, 255
    set $P5011, fb_tmp_21[$I5005]
    set $P5013, $P5011
    goto if175_end364
  if175_else363:
    null $P5012
    set $P5013, $P5012
  if175_end364:
    unless_null $P5013, vivi_176365
    nqp_get_sc_object $P5014, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5013, $P5014
  vivi_176365:
    set $P5009, $P5013
    defined $I5003, $P5009
    if $I5003, defor362
    box $P5015, "unk"
    set $P5009, $P5015
  defor362:
    set $S5010, $P5009
    concat $S5001, $S5002, $S5010
    $P5016 = "&note"($S5001)
  if174_end361:
    unless __lowered_lex_213 goto if177_end367 
    nqp_decontainerize $P5017, __lowered_lex_208
    nqp_get_sc_object $P5018, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 3
    box $P5019, 1
    repr_bind_attr_obj $P5017, $P5018, "$!edges", 1, $P5019
  if177_end367:
    set $N5003, __lowered_lex_210
    set $N5004, 0
    islt $I5007, $N5003, $N5004
    unless $I5007 goto if178_end369 
.annotate 'line', 91
    nqp_decontainerize $P5020, __lowered_lex_208
    $P5021 = $P5020."addstate"()
    set __lowered_lex_210, $P5021
  if178_end369:
    nqp_decontainerize $P5022, __lowered_lex_208
    nqp_get_sc_object $P5023, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 3
    repr_get_attr_obj $P5024, $P5022, $P5023, "$!states", 0
    set fb_tmp_22, $P5024
    repr_defined $I5008, fb_tmp_22
    unless $I5008 goto if179_else370 
    set $I5009, __lowered_lex_209
    set $P5025, fb_tmp_22[$I5009]
    set $P5027, $P5025
    goto if179_end371
  if179_else370:
    null $P5026
    set $P5027, $P5026
  if179_end371:
    unless_null $P5027, vivi_180372
    nqp_get_sc_object $P5028, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5027, $P5028
  vivi_180372:
    set __lowered_lex_217, $P5027
    set $N5005, __lowered_lex_211
    find_lex $P5029, "$EDGE_FATE"
    set $N5006, $P5029
    iseq $I5010, $N5005, $N5006
    unless $I5010 goto if181_end374 
.annotate 'line', 93
    nqp_decontainerize $P5030, __lowered_lex_208
    nqp_get_sc_object $P5031, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 3
    repr_get_attr_obj $P5032, $P5030, $P5031, "$!known", 5
    set fb_tmp_23, $P5032
    repr_defined $I5011, fb_tmp_23
    unless $I5011 goto if183_else377 
    set $I5012, __lowered_lex_215
    set $P5033, fb_tmp_23[$I5012]
    set $P5035, $P5033
    goto if183_end378
  if183_else377:
    null $P5034
    set $P5035, $P5034
  if183_end378:
    unless_null $P5035, vivi_184379
    nqp_get_sc_object $P5036, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5035, $P5036
  vivi_184379:
    unless $P5035 goto if182_else375 
.annotate 'line', 94
    isfalse $I5013, __lowered_lex_210
    set $I5017, $I5013
    if $I5013 goto unless186_end383 
    set $N5007, __lowered_lex_210
    nqp_decontainerize $P5037, __lowered_lex_208
    nqp_get_sc_object $P5038, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 3
    repr_get_attr_obj $P5039, $P5037, $P5038, "$!known", 5
    set fb_tmp_24, $P5039
    repr_defined $I5015, fb_tmp_24
    unless $I5015 goto if187_else384 
    set $I5016, __lowered_lex_215
    set $P5040, fb_tmp_24[$I5016]
    set $P5042, $P5040
    goto if187_end385
  if187_else384:
    null $P5041
    set $P5042, $P5041
  if187_end385:
    unless_null $P5042, vivi_188386
    nqp_get_sc_object $P5043, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5042, $P5043
  vivi_188386:
    set $N5008, $P5042
    iseq $I5014, $N5007, $N5008
    set $I5017, $I5014
  unless186_end383:
    box $P5053, $I5017
    set $P5052, $P5053
    unless $I5017 goto if185_end381 
.annotate 'line', 95
    find_lex $P5044, "$EDGE_EPSILON"
    set __lowered_lex_211, $P5044
    nqp_decontainerize $P5045, __lowered_lex_208
    nqp_get_sc_object $P5046, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 3
    repr_get_attr_obj $P5047, $P5045, $P5046, "$!known", 5
    set fb_tmp_25, $P5047
    repr_defined $I5018, fb_tmp_25
    unless $I5018 goto if189_else387 
    set $I5019, __lowered_lex_215
    set $P5048, fb_tmp_25[$I5019]
    set $P5050, $P5048
    goto if189_end388
  if189_else387:
    null $P5049
    set $P5050, $P5049
  if189_end388:
    unless_null $P5050, vivi_190389
    nqp_get_sc_object $P5051, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5050, $P5051
  vivi_190389:
    set __lowered_lex_210, $P5050
    set $P5052, __lowered_lex_210
  if185_end381:
    set $P5059, $P5052
    goto if182_end376
  if182_else375:
    set $N5009, __lowered_lex_217
    set $N5010, 0
    iseq $I5020, $N5009, $N5010
    box $P5058, $I5020
    set $P5057, $P5058
    unless $I5020 goto if191_end391 
.annotate 'line', 100
    nqp_decontainerize $P5054, __lowered_lex_208
    nqp_get_sc_object $P5055, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 3
    repr_get_attr_obj $P5056, $P5054, $P5055, "$!known", 5
    set $I5021, __lowered_lex_215
    set $P5056[$I5021], __lowered_lex_209
    set $P5057, __lowered_lex_209
  if191_end391:
    set $P5059, $P5057
  if182_end376:
  if181_end374:
    push __lowered_lex_217, __lowered_lex_211
    push __lowered_lex_217, __lowered_lex_215
    push __lowered_lex_217, __lowered_lex_210
.annotate 'line', 107
    $P5060 = "&dentout"(__lowered_lex_210)
    .return ($P5060) 
.end
.HLL "nqp"
.namespace []
.sub "states" :subid("cuid_5_1431289885.65252") :anon :lex :outer("cuid_127_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 110
    .param pmc __lowered_lex_218 
    nqp_decontainerize $P5001, __lowered_lex_218
    nqp_get_sc_object $P5002, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 3
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!states", 0
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "addnode" :subid("cuid_6_1431289885.65252") :anon :lex :outer("cuid_127_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 112
    .param pmc __lowered_lex_219 
    .param pmc __lowered_lex_220 
    .param pmc _lex_param_0 :named("vars_as_generic") :optional 
    .param int haz_param_11 :opt_flag 
    .lex "$*vars_as_generic", _lex_param_0 
    .local pmc __lowered_lex_221 
    if haz_param_11, default397
    nqp_get_sc_object $P5013, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set _lex_param_0, $P5013
  default397:
.annotate 'line', 113
    $P5001 = "&dentin"()
    set __lowered_lex_221, $P5001
    find_lex $P5002, "$nfadeb"
    unless $P5002 goto if192_end394 
.annotate 'line', 114
    set $S5002, __lowered_lex_221
    concat $S5001, $S5002, " addnode"
    $P5003 = "&note"($S5001)
  if192_end394:
.annotate 'line', 116
    nqp_decontainerize $P5004, __lowered_lex_219
    $P5004."regex_nfa"(__lowered_lex_220, 1, 0)
    nqp_decontainerize $P5005, __lowered_lex_219
    nqp_get_sc_object $P5006, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 3
    box $P5007, 0
    repr_bind_attr_obj $P5005, $P5006, "$!LITEND", 4, $P5007
    find_lex $P5008, "$nfadeb"
    unless $P5008 goto if193_end396 
.annotate 'line', 118
    nqp_decontainerize $P5009, __lowered_lex_219
    $P5010 = $P5009."mydump"()
  if193_end396:
.annotate 'line', 119
    nqp_decontainerize $P5011, __lowered_lex_219
    $P5012 = "&dentout"($P5011)
    .return ($P5012) 
.end
.HLL "nqp"
.namespace []
.sub "regex_nfa" :subid("cuid_7_1431289885.65252") :anon :lex :outer("cuid_127_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 122
    .param pmc __lowered_lex_222 
    .param pmc __lowered_lex_223 
    .param pmc __lowered_lex_224 
    .param pmc __lowered_lex_225 
    .local pmc __lowered_lex_226 
    .local pmc __lowered_lex_227 
    .local pmc __lowered_lex_228 
.annotate 'line', 123
    $P5001 = "&dentin"()
    set __lowered_lex_226, $P5001
.annotate 'line', 124
    $P5003 = __lowered_lex_223."rxtype"()
    set $P5002, $P5003
    defined $I5001, $P5002
    if $I5001, defor398
    box $P5004, "concat"
    set $P5002, $P5004
  defor398:
    set __lowered_lex_227, $P5002
    find_lex $P5005, "$nfadeb"
    unless $P5005 goto if194_end400 
.annotate 'line', 125
    set $S5007, __lowered_lex_226
    concat $S5006, $S5007, " regex_nfa "
    set $S5008, __lowered_lex_224
    concat $S5005, $S5006, $S5008
    concat $S5004, $S5005, " -> "
    set $S5009, __lowered_lex_225
    concat $S5003, $S5004, $S5009
    concat $S5002, $S5003, " "
    set $S5010, __lowered_lex_227
    concat $S5001, $S5002, $S5010
    $P5006 = "&note"($S5001)
  if194_end400:
    set $S5011, __lowered_lex_227
    iseq $I5002, $S5011, "literal"
    set $I5004, $I5002
    if $I5002 goto unless197_end406 
    set $S5012, __lowered_lex_227
    iseq $I5003, $S5012, "concat"
    set $I5004, $I5003
  unless197_end406:
    set $I5006, $I5004
    if $I5004 goto unless196_end404 
    set $S5013, __lowered_lex_227
    iseq $I5005, $S5013, "alt"
    set $I5006, $I5005
  unless196_end404:
    if $I5006 goto unless195_end402 
    nqp_decontainerize $P5007, __lowered_lex_222
    nqp_get_sc_object $P5008, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 3
    box $P5009, 1
    repr_bind_attr_obj $P5007, $P5008, "$!LITEND", 4, $P5009
  unless195_end402:
.annotate 'line', 129
    nqp_decontainerize $P5011, __lowered_lex_222
    get_how $P5010, $P5011
    nqp_decontainerize $P5012, __lowered_lex_222
    $P5013 = $P5010."can"($P5012, __lowered_lex_227)
    unless $P5013 goto if198_else407 
.annotate 'line', 130
    nqp_decontainerize $P5014, __lowered_lex_222
    set $S5014, __lowered_lex_227
    $P5015 = $P5014.$S5014(__lowered_lex_223, __lowered_lex_224, __lowered_lex_225)
    set $P5018, $P5015
    goto if198_end408
  if198_else407:
.annotate 'line', 131
    nqp_decontainerize $P5016, __lowered_lex_222
    $P5017 = $P5016."fate"(__lowered_lex_223, __lowered_lex_224, __lowered_lex_225)
    set $P5018, $P5017
  if198_end408:
    set __lowered_lex_228, $P5018
    find_lex $P5019, "$nfadeb"
    unless $P5019 goto if199_end410 
.annotate 'line', 132
    set $S5017, __lowered_lex_226
    concat $S5016, $S5017, " ...regex_nfa returns "
    set $S5018, __lowered_lex_228
    concat $S5015, $S5016, $S5018
    $P5020 = "&note"($S5015)
  if199_end410:
.annotate 'line', 134
    $P5021 = "&dentout"(__lowered_lex_228)
    .return ($P5021) 
.end
.HLL "nqp"
.namespace []
.sub "fate" :subid("cuid_8_1431289885.65252") :anon :lex :outer("cuid_127_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 137
    .param pmc __lowered_lex_229 
    .param pmc __lowered_lex_230 
    .param pmc __lowered_lex_231 
    .param pmc __lowered_lex_232 
    .local pmc __lowered_lex_233 
.annotate 'line', 138
    $P5001 = "&dentin"()
    set __lowered_lex_233, $P5001
    find_lex $P5002, "$nfadeb"
    unless $P5002 goto if200_end412 
.annotate 'line', 139
    set $S5005, __lowered_lex_233
    concat $S5004, $S5005, " fate "
    set $S5006, __lowered_lex_231
    concat $S5003, $S5004, $S5006
    concat $S5002, $S5003, " -> "
    set $S5007, __lowered_lex_232
    concat $S5001, $S5002, $S5007
    $P5003 = "&note"($S5001)
  if200_end412:
.annotate 'line', 140
    nqp_decontainerize $P5004, __lowered_lex_229
    find_lex $P5005, "$EDGE_FATE"
    $P5006 = $P5004."addedge"(__lowered_lex_231, 0, $P5005, 0, 0 :named("newedge"))
    $P5007 = "&dentout"($P5006)
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "alt" :subid("cuid_9_1431289885.65252") :anon :lex :outer("cuid_127_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 143
    .param pmc __lowered_lex_236 
    .param pmc __lowered_lex_237 
    .param pmc __lowered_lex_238 
    .param pmc __lowered_lex_239 
    .local pmc __lowered_lex_240 
    .local pmc __lowered_lex_241 
    .local pmc __lowered_lex_242 
    .local pmc lowered_for_it__7 
    .local pmc __lowered_lex_235 
    .local int __lowered_lex_234 
    nqp_get_sc_object $P5001, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_242, $P5001
.annotate 'line', 144
    $P5002 = "&dentin"()
    set __lowered_lex_240, $P5002
    find_lex $P5003, "$nfadeb"
    unless $P5003 goto if201_end414 
.annotate 'line', 145
    $P5004 = __lowered_lex_237."dump"()
    $P5005 = "&note"($P5004)
  if201_end414:
    nqp_decontainerize $P5006, __lowered_lex_236
    nqp_get_sc_object $P5007, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 3
    repr_get_attr_obj $P5008, $P5006, $P5007, "$!LITEND", 4
    set __lowered_lex_241, $P5008
.annotate 'line', 148
    $P5010 = __lowered_lex_237."list"()
    iter $P5009, $P5010
    set lowered_for_it__7, $P5009
    new $P5026, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5026, while202_handlers418
    push_eh $P5026
  while202_test415:
    set $P5025, lowered_for_it__7
    unless lowered_for_it__7 goto while202_done419 
  while202_redo417:
    shift $P5011, lowered_for_it__7
    set __lowered_lex_235, $P5011
    find_lex $P5012, "$nfadeb"
    unless $P5012 goto if203_end421 
.annotate 'line', 149
    set $S5002, __lowered_lex_240
    concat $S5001, $S5002, " alternative"
    $P5013 = "&note"($S5001)
  if203_end421:
    nqp_decontainerize $P5014, __lowered_lex_236
    nqp_get_sc_object $P5015, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 3
    repr_bind_attr_obj $P5014, $P5015, "$!LITEND", 4, __lowered_lex_241
.annotate 'line', 152
    nqp_decontainerize $P5016, __lowered_lex_236
    $P5017 = $P5016."regex_nfa"(__lowered_lex_235, __lowered_lex_238, __lowered_lex_239)
    set $I5001, $P5017
    set __lowered_lex_234, $I5001
    nqp_decontainerize $P5018, __lowered_lex_236
    nqp_get_sc_object $P5019, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 3
    repr_get_attr_obj $P5020, $P5018, $P5019, "$!LITEND", 4
    unless $P5020 goto if204_end423 
    box $P5021, 1
    set __lowered_lex_242, $P5021
  if204_end423:
    set $N5001, __lowered_lex_239
    set $N5002, 0
    islt $I5002, $N5001, $N5002
    set $I5004, $I5002
    unless $I5002 goto if206_end427 
    isgt $I5003, __lowered_lex_234, 0
    set $I5004, $I5003
  if206_end427:
    box $P5024, $I5004
    set $P5023, $P5024
    unless $I5004 goto if205_end425 
    box $P5022, __lowered_lex_234
    set __lowered_lex_239, $P5022
    set $P5023, __lowered_lex_239
  if205_end425:
    set $P5025, $P5023
    goto while202_test415 
  while202_handlers418:
    .get_results ($P5026)
    pop_upto_eh $P5026
    getattribute $P5027, $P5026, 'type'
    eq $P5027, .CONTROL_LOOP_NEXT, while202_test415
    eq $P5027, .CONTROL_LOOP_REDO, while202_redo417
  while202_done419:
    pop_eh 
    nqp_decontainerize $P5028, __lowered_lex_236
    nqp_get_sc_object $P5029, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 3
    repr_bind_attr_obj $P5028, $P5029, "$!LITEND", 4, __lowered_lex_242
.annotate 'line', 160
    $P5030 = "&dentout"(__lowered_lex_239)
    .return ($P5030) 
.end
.HLL "nqp"
.namespace []
.sub "anchor" :subid("cuid_10_1431289885.65252") :anon :lex :outer("cuid_127_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 163
    .param pmc __lowered_lex_243 
    .param pmc __lowered_lex_244 
    .param pmc __lowered_lex_245 
    .param pmc __lowered_lex_246 
.annotate 'line', 164
    nqp_decontainerize $P5001, __lowered_lex_243
    find_lex $P5002, "$EDGE_EPSILON"
    $P5003 = $P5001."addedge"(__lowered_lex_245, __lowered_lex_246, $P5002, 0)
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "dba" :subid("cuid_11_1431289885.65252") :anon :lex :outer("cuid_127_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 167
    .param pmc __lowered_lex_247 
    .param pmc __lowered_lex_248 
    .param pmc __lowered_lex_249 
    .param pmc __lowered_lex_250 
.annotate 'line', 168
    nqp_decontainerize $P5001, __lowered_lex_247
    find_lex $P5002, "$EDGE_EPSILON"
    $P5003 = $P5001."addedge"(__lowered_lex_249, __lowered_lex_250, $P5002, 0)
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "cclass" :subid("cuid_12_1431289885.65252") :anon :lex :outer("cuid_127_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 188
    .param pmc __lowered_lex_251 
    .param pmc __lowered_lex_252 
    .param pmc __lowered_lex_253 
    .param pmc __lowered_lex_254 
    .local pmc __lowered_lex_255 
    .local pmc fb_tmp_26 
.annotate 'line', 189
    $P5001 = "&dentin"()
    set __lowered_lex_255, $P5001
.annotate 'line', 190
    nqp_decontainerize $P5002, __lowered_lex_251
    find_lex $P5003, "$EDGE_CHARCLASS"
    set $N5002, $P5003
    $P5004 = __lowered_lex_252."negate"()
    istrue $I5001, $P5004
    set $N5003, $I5001
    add $N5001, $N5002, $N5003
    find_lex $P5005, "%cclass_code"
    set fb_tmp_26, $P5005
    repr_defined $I5002, fb_tmp_26
    unless $I5002 goto if207_else428 
.annotate 'line', 191
    $P5007 = __lowered_lex_252."name"()
    set $S5001, $P5007
    set $P5006, fb_tmp_26[$S5001]
    set $P5009, $P5006
    goto if207_end429
  if207_else428:
    null $P5008
    set $P5009, $P5008
  if207_end429:
    unless_null $P5009, vivi_208430
    nqp_get_sc_object $P5010, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5009, $P5010
  vivi_208430:
    $P5011 = $P5002."addedge"(__lowered_lex_253, __lowered_lex_254, $N5001, $P5009)
    $P5012 = "&dentout"($P5011)
    .return ($P5012) 
.end
.HLL "nqp"
.namespace []
.sub "concat" :subid("cuid_13_1431289885.65252") :anon :lex :outer("cuid_127_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 194
    .param pmc __lowered_lex_256 
    .param pmc __lowered_lex_257 
    .param pmc __lowered_lex_258 
    .param pmc __lowered_lex_259 
    .local pmc __lowered_lex_260 
    .local int __lowered_lex_261 
    .local int __lowered_lex_262 
    .local pmc __lowered_lex_263 
    .local pmc fb_tmp_27 
    .local pmc fb_tmp_28 
.annotate 'line', 195
    $P5001 = "&dentin"()
    set __lowered_lex_260, $P5001
    find_lex $P5002, "$nfadeb"
    unless $P5002 goto if209_end432 
.annotate 'line', 196
    set $S5005, __lowered_lex_260
    concat $S5004, $S5005, " concat "
    set $S5006, __lowered_lex_258
    concat $S5003, $S5004, $S5006
    concat $S5002, $S5003, " -> "
    set $S5007, __lowered_lex_259
    concat $S5001, $S5002, $S5007
    $P5003 = "&note"($S5001)
  if209_end432:
    set __lowered_lex_261, 0
.annotate 'line', 198
    $P5004 = __lowered_lex_257."list"()
    set $N5002, $P5004
    set $N5003, 1
    sub $N5001, $N5002, $N5003
    set $I5001, $N5001
    set __lowered_lex_262, $I5001
  while210_test433:
    set $N5004, __lowered_lex_258
    set $N5005, 0
    isgt $I5002, $N5004, $N5005
    set $I5004, $I5002
    unless $I5002 goto if211_end439 
    islt $I5003, __lowered_lex_261, __lowered_lex_262
    set $I5004, $I5003
  if211_end439:
    box $P5012, $I5004
    set $P5011, $P5012
    unless $I5004 goto while210_done437 
  while210_redo435:
.annotate 'line', 199
.annotate 'line', 200
    nqp_decontainerize $P5005, __lowered_lex_256
    set fb_tmp_27, __lowered_lex_257
    repr_defined $I5005, fb_tmp_27
    unless $I5005 goto if212_else440 
    set $P5006, fb_tmp_27[__lowered_lex_261]
    set $P5008, $P5006
    goto if212_end441
  if212_else440:
    null $P5007
    set $P5008, $P5007
  if212_end441:
    unless_null $P5008, vivi_213442
    nqp_get_sc_object $P5009, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5008, $P5009
  vivi_213442:
    $P5010 = $P5005."regex_nfa"($P5008, __lowered_lex_258, -1)
    set __lowered_lex_258, $P5010
    add $I5006, __lowered_lex_261, 1
    set __lowered_lex_261, $I5006
    box $P5013, __lowered_lex_261
    set $P5011, $P5013
    goto while210_test433 
  while210_done437:
    find_lex $P5014, "$nfadeb"
    unless $P5014 goto if214_end444 
.annotate 'line', 203
    set $S5012, __lowered_lex_260
    concat $S5011, $S5012, " ...concat created "
    set $S5013, __lowered_lex_258
    concat $S5010, $S5011, $S5013
    concat $S5009, $S5010, ", n = "
    set $S5014, __lowered_lex_262
    concat $S5008, $S5009, $S5014
    $P5015 = "&note"($S5008)
  if214_end444:
    set $N5006, __lowered_lex_258
    set $N5007, 0
    isgt $I5007, $N5006, $N5007
    set $I5009, $I5007
    unless $I5007 goto if216_end448 
    isge $I5008, __lowered_lex_262, 0
    set $I5009, $I5008
  if216_end448:
    unless $I5009 goto if215_else445 
.annotate 'line', 204
    nqp_decontainerize $P5016, __lowered_lex_256
    set fb_tmp_28, __lowered_lex_257
    repr_defined $I5010, fb_tmp_28
    unless $I5010 goto if217_else449 
    set $P5017, fb_tmp_28[__lowered_lex_261]
    set $P5019, $P5017
    goto if217_end450
  if217_else449:
    null $P5018
    set $P5019, $P5018
  if217_end450:
    unless_null $P5019, vivi_218451
    nqp_get_sc_object $P5020, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5019, $P5020
  vivi_218451:
    $P5021 = $P5016."regex_nfa"($P5019, __lowered_lex_258, __lowered_lex_259)
    set $P5022, $P5021
    goto if215_end446
  if215_else445:
    set $P5022, __lowered_lex_259
  if215_end446:
    set __lowered_lex_263, $P5022
    find_lex $P5023, "$nfadeb"
    unless $P5023 goto if219_end453 
.annotate 'line', 205
    set $S5017, __lowered_lex_260
    concat $S5016, $S5017, " ...concat returns "
    set $S5018, __lowered_lex_263
    concat $S5015, $S5016, $S5018
    $P5024 = "&note"($S5015)
  if219_end453:
.annotate 'line', 206
    $P5025 = "&dentout"(__lowered_lex_263)
    .return ($P5025) 
.end
.HLL "nqp"
.namespace []
.sub "enumcharlist" :subid("cuid_14_1431289885.65252") :anon :lex :outer("cuid_127_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 209
    .param pmc __lowered_lex_264 
    .param pmc __lowered_lex_265 
    .param pmc __lowered_lex_266 
    .param pmc __lowered_lex_267 
    .local pmc __lowered_lex_268 
    .local pmc __lowered_lex_269 
    .local pmc fb_tmp_29 
.annotate 'line', 210
    $P5001 = "&dentin"()
    set __lowered_lex_268, $P5001
    find_lex $P5002, "$nfadeb"
    unless $P5002 goto if220_end455 
.annotate 'line', 211
    set $S5005, __lowered_lex_268
    concat $S5004, $S5005, " enumcharlist "
    set $S5006, __lowered_lex_266
    concat $S5003, $S5004, $S5006
    concat $S5002, $S5003, " -> "
    set $S5007, __lowered_lex_267
    concat $S5001, $S5002, $S5007
    $P5003 = "&note"($S5001)
  if220_end455:
    set fb_tmp_29, __lowered_lex_265
    repr_defined $I5001, fb_tmp_29
    unless $I5001 goto if221_else456 
    set $P5004, fb_tmp_29[0]
    set $P5006, $P5004
    goto if221_end457
  if221_else456:
    null $P5005
    set $P5006, $P5005
  if221_end457:
    unless_null $P5006, vivi_222458
    nqp_get_sc_object $P5007, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5006, $P5007
  vivi_222458:
    set __lowered_lex_269, $P5006
.annotate 'line', 213
    $P5008 = __lowered_lex_265."subtype"()
    set $S5008, $P5008
    iseq $I5002, $S5008, "zerowidth"
    unless $I5002 goto if223_else459 
.annotate 'line', 214
    nqp_decontainerize $P5009, __lowered_lex_264
    find_lex $P5010, "$EDGE_CHARLIST"
    set $N5002, $P5010
    $P5011 = __lowered_lex_265."negate"()
    istrue $I5003, $P5011
    set $N5003, $I5003
    add $N5001, $N5002, $N5003
    $P5012 = $P5009."addedge"(__lowered_lex_266, -1, $N5001, __lowered_lex_269)
    set __lowered_lex_266, $P5012
.annotate 'line', 215
    nqp_decontainerize $P5013, __lowered_lex_264
    find_lex $P5014, "$EDGE_FATE"
    $P5015 = $P5013."addedge"(__lowered_lex_266, 0, $P5014, 0)
    $P5016 = "&dentout"($P5015)
    set $P5022, $P5016
    goto if223_end460
  if223_else459:
.annotate 'line', 217
.annotate 'line', 218
    nqp_decontainerize $P5017, __lowered_lex_264
    find_lex $P5018, "$EDGE_CHARLIST"
    set $N5005, $P5018
    $P5019 = __lowered_lex_265."negate"()
    istrue $I5004, $P5019
    set $N5006, $I5004
    add $N5004, $N5005, $N5006
    $P5020 = $P5017."addedge"(__lowered_lex_266, __lowered_lex_267, $N5004, __lowered_lex_269)
    $P5021 = "&dentout"($P5020)
    set $P5022, $P5021
  if223_end460:
    .return ($P5022) 
.end
.HLL "nqp"
.namespace []
.sub "charrange" :subid("cuid_15_1431289885.65252") :anon :lex :outer("cuid_127_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 222
    .param pmc __lowered_lex_270 
    .param pmc __lowered_lex_271 
    .param pmc __lowered_lex_272 
    .param pmc __lowered_lex_273 
    .local pmc __lowered_lex_274 
    .local pmc fb_tmp_30 
    .local pmc fb_tmp_31 
    .local pmc fb_tmp_32 
    .local pmc fb_tmp_33 
.annotate 'line', 223
    $P5001 = "&dentin"()
    set __lowered_lex_274, $P5001
    find_lex $P5002, "$nfadeb"
    unless $P5002 goto if224_end462 
.annotate 'line', 224
    set $S5005, __lowered_lex_274
    concat $S5004, $S5005, " charrange "
    set $S5006, __lowered_lex_272
    concat $S5003, $S5004, $S5006
    concat $S5002, $S5003, " -> "
    set $S5007, __lowered_lex_273
    concat $S5001, $S5002, $S5007
    $P5003 = "&note"($S5001)
  if224_end462:
.annotate 'line', 225
    $P5004 = __lowered_lex_271."subtype"()
    set $S5008, $P5004
    iseq $I5001, $S5008, "zerowidth"
    unless $I5001 goto if225_else463 
.annotate 'line', 226
    nqp_decontainerize $P5005, __lowered_lex_270
    find_lex $P5006, "$EDGE_CHARRANGE"
    set $N5002, $P5006
    $P5007 = __lowered_lex_271."negate"()
    istrue $I5002, $P5007
    set $N5003, $I5002
    add $N5001, $N5002, $N5003
    new $P5008, 'QRPA'
    assign $P5008, 2
    assign $P5008, 0
.annotate 'line', 227
    set fb_tmp_30, __lowered_lex_271
    repr_defined $I5003, fb_tmp_30
    unless $I5003 goto if226_else465 
    set $P5009, fb_tmp_30[1]
    set $P5011, $P5009
    goto if226_end466
  if226_else465:
    null $P5010
    set $P5011, $P5010
  if226_end466:
    unless_null $P5011, vivi_227467
    nqp_get_sc_object $P5012, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5011, $P5012
  vivi_227467:
    $P5013 = $P5011."value"()
    push $P5008, $P5013
    set fb_tmp_31, __lowered_lex_271
    repr_defined $I5004, fb_tmp_31
    unless $I5004 goto if228_else468 
    set $P5014, fb_tmp_31[2]
    set $P5016, $P5014
    goto if228_end469
  if228_else468:
    null $P5015
    set $P5016, $P5015
  if228_end469:
    unless_null $P5016, vivi_229470
    nqp_get_sc_object $P5017, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5016, $P5017
  vivi_229470:
    $P5018 = $P5016."value"()
    push $P5008, $P5018
    $P5019 = $P5005."addedge"(__lowered_lex_272, -1, $N5001, $P5008)
    set __lowered_lex_272, $P5019
.annotate 'line', 228
    nqp_decontainerize $P5020, __lowered_lex_270
    find_lex $P5021, "$EDGE_FATE"
    $P5022 = $P5020."addedge"(__lowered_lex_272, 0, $P5021, 0)
    $P5023 = "&dentout"($P5022)
    set $P5040, $P5023
    goto if225_end464
  if225_else463:
.annotate 'line', 230
.annotate 'line', 231
    nqp_decontainerize $P5024, __lowered_lex_270
    find_lex $P5025, "$EDGE_CHARRANGE"
    set $N5005, $P5025
    $P5026 = __lowered_lex_271."negate"()
    istrue $I5005, $P5026
    set $N5006, $I5005
    add $N5004, $N5005, $N5006
    new $P5027, 'QRPA'
    assign $P5027, 2
    assign $P5027, 0
.annotate 'line', 232
    set fb_tmp_32, __lowered_lex_271
    repr_defined $I5006, fb_tmp_32
    unless $I5006 goto if230_else471 
    set $P5028, fb_tmp_32[1]
    set $P5030, $P5028
    goto if230_end472
  if230_else471:
    null $P5029
    set $P5030, $P5029
  if230_end472:
    unless_null $P5030, vivi_231473
    nqp_get_sc_object $P5031, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5030, $P5031
  vivi_231473:
    $P5032 = $P5030."value"()
    push $P5027, $P5032
    set fb_tmp_33, __lowered_lex_271
    repr_defined $I5007, fb_tmp_33
    unless $I5007 goto if232_else474 
    set $P5033, fb_tmp_33[2]
    set $P5035, $P5033
    goto if232_end475
  if232_else474:
    null $P5034
    set $P5035, $P5034
  if232_end475:
    unless_null $P5035, vivi_233476
    nqp_get_sc_object $P5036, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5035, $P5036
  vivi_233476:
    $P5037 = $P5035."value"()
    push $P5027, $P5037
    $P5038 = $P5024."addedge"(__lowered_lex_272, __lowered_lex_273, $N5004, $P5027)
    $P5039 = "&dentout"($P5038)
    set $P5040, $P5039
  if225_end464:
    .return ($P5040) 
.end
.HLL "nqp"
.namespace []
.sub "literal" :subid("cuid_16_1431289885.65252") :anon :lex :outer("cuid_127_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 236
    .param pmc __lowered_lex_279 
    .param pmc __lowered_lex_280 
    .param pmc __lowered_lex_281 
    .param pmc __lowered_lex_282 
    .local pmc __lowered_lex_283 
    .local int __lowered_lex_284 
    .local int __lowered_lex_285 
    .local pmc fb_tmp_34 
    .local pmc fb_tmp_35 
    .local string __lowered_lex_275 
    .local string __lowered_lex_276 
    .local pmc fb_tmp_36 
    .local pmc fb_tmp_37 
    .local string __lowered_lex_277 
    .local pmc fb_tmp_38 
    .local string __lowered_lex_278 
    .local pmc fb_tmp_39 
.annotate 'line', 237
    $P5001 = "&dentin"()
    set __lowered_lex_283, $P5001
    set fb_tmp_34, __lowered_lex_280
    repr_defined $I5003, fb_tmp_34
    unless $I5003 goto if234_else477 
    set $P5002, fb_tmp_34[0]
    set $P5004, $P5002
    goto if234_end478
  if234_else477:
    null $P5003
    set $P5004, $P5003
  if234_end478:
    unless_null $P5004, vivi_235479
    nqp_get_sc_object $P5005, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5004, $P5005
  vivi_235479:
    set $S5001, $P5004
    length $I5002, $S5001
    sub $I5001, $I5002, 1
    set __lowered_lex_284, $I5001
    set __lowered_lex_285, 0
    isge $I5004, __lowered_lex_284, 0
    unless $I5004 goto if236_else480 
.annotate 'line', 240
    find_lex $P5006, "$nfadeb"
    unless $P5006 goto if237_end483 
.annotate 'line', 241
    set $S5008, __lowered_lex_283
    concat $S5007, $S5008, " literal "
    set $S5009, __lowered_lex_281
    concat $S5006, $S5007, $S5009
    concat $S5005, $S5006, " -> "
    set $S5010, __lowered_lex_282
    concat $S5004, $S5005, $S5010
    concat $S5003, $S5004, " "
    set fb_tmp_35, __lowered_lex_280
    repr_defined $I5005, fb_tmp_35
    unless $I5005 goto if238_else484 
    set $P5007, fb_tmp_35[0]
    set $P5009, $P5007
    goto if238_end485
  if238_else484:
    null $P5008
    set $P5009, $P5008
  if238_end485:
    unless_null $P5009, vivi_239486
    nqp_get_sc_object $P5010, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5009, $P5010
  vivi_239486:
    set $S5011, $P5009
    concat $S5002, $S5003, $S5011
    $P5011 = "&note"($S5002)
  if237_end483:
.annotate 'line', 242
    $P5012 = __lowered_lex_280."subtype"()
    set $S5012, $P5012
    iseq $I5006, $S5012, "ignorecase"
    unless $I5006 goto if240_else487 
    set fb_tmp_36, __lowered_lex_280
    repr_defined $I5007, fb_tmp_36
    unless $I5007 goto if241_else489 
    set $P5013, fb_tmp_36[0]
    set $P5015, $P5013
    goto if241_end490
  if241_else489:
    null $P5014
    set $P5015, $P5014
  if241_end490:
    unless_null $P5015, vivi_242491
    nqp_get_sc_object $P5016, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5015, $P5016
  vivi_242491:
    set $S5014, $P5015
    downcase $S5013, $S5014
    set __lowered_lex_275, $S5013
    set fb_tmp_37, __lowered_lex_280
    repr_defined $I5008, fb_tmp_37
    unless $I5008 goto if243_else492 
    set $P5017, fb_tmp_37[0]
    set $P5019, $P5017
    goto if243_end493
  if243_else492:
    null $P5018
    set $P5019, $P5018
  if243_end493:
    unless_null $P5019, vivi_244494
    nqp_get_sc_object $P5020, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5019, $P5020
  vivi_244494:
    set $S5016, $P5019
    upcase $S5015, $S5016
    set __lowered_lex_276, $S5015
  while245_test495:
    islt $I5009, __lowered_lex_285, __lowered_lex_284
    box $P5028, $I5009
    set $P5027, $P5028
    unless $I5009 goto while245_done499 
  while245_redo497:
.annotate 'line', 245
.annotate 'line', 246
    nqp_decontainerize $P5021, __lowered_lex_279
    find_lex $P5022, "$EDGE_CODEPOINT_I"
    new $P5023, 'QRPA'
    assign $P5023, 2
    assign $P5023, 0
    ord $I5010, __lowered_lex_275, __lowered_lex_285
    box $P5024, $I5010
    push $P5023, $P5024
    ord $I5011, __lowered_lex_276, __lowered_lex_285
    box $P5025, $I5011
    push $P5023, $P5025
    $P5026 = $P5021."addedge"(__lowered_lex_281, -1, $P5022, $P5023)
    set __lowered_lex_281, $P5026
    add $I5012, __lowered_lex_285, 1
    set __lowered_lex_285, $I5012
    box $P5029, __lowered_lex_285
    set $P5027, $P5029
    goto while245_test495 
  while245_done499:
.annotate 'line', 250
    nqp_decontainerize $P5030, __lowered_lex_279
    nqp_decontainerize $P5031, __lowered_lex_279
    nqp_get_sc_object $P5032, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 3
    repr_get_attr_obj $P5033, $P5031, $P5032, "$!LITEND", 4
    unless $P5033 goto if246_else500 
    find_lex $P5034, "$EDGE_CODEPOINT_I"
    set $P5036, $P5034
    goto if246_end501
  if246_else500:
    find_lex $P5035, "$EDGE_CODEPOINT_I_LL"
    set $P5036, $P5035
  if246_end501:
    new $P5037, 'QRPA'
    assign $P5037, 2
    assign $P5037, 0
    ord $I5013, __lowered_lex_275, __lowered_lex_285
    box $P5038, $I5013
    push $P5037, $P5038
    ord $I5014, __lowered_lex_276, __lowered_lex_285
    box $P5039, $I5014
    push $P5037, $P5039
    $P5040 = $P5030."addedge"(__lowered_lex_281, __lowered_lex_282, $P5036, $P5037)
    $P5041 = "&dentout"($P5040)
    set $P5073, $P5041
    goto if240_end488
  if240_else487:
.annotate 'line', 253
    $P5042 = __lowered_lex_280."subtype"()
    set $S5017, $P5042
    iseq $I5015, $S5017, "ignoremark"
    unless $I5015 goto if247_else502 
    set fb_tmp_38, __lowered_lex_280
    repr_defined $I5016, fb_tmp_38
    unless $I5016 goto if248_else504 
    set $P5043, fb_tmp_38[0]
    set $P5045, $P5043
    goto if248_end505
  if248_else504:
    null $P5044
    set $P5045, $P5044
  if248_end505:
    unless_null $P5045, vivi_249506
    nqp_get_sc_object $P5046, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5045, $P5046
  vivi_249506:
    set $S5018, $P5045
    set __lowered_lex_277, $S5018
  while250_test507:
    isle $I5017, __lowered_lex_285, __lowered_lex_284
    box $P5051, $I5017
    set $P5050, $P5051
    unless $I5017 goto while250_done511 
  while250_redo509:
.annotate 'line', 255
.annotate 'line', 256
    nqp_decontainerize $P5047, __lowered_lex_279
    find_lex $P5048, "$EDGE_CODEPOINT_M"
    nqp_string_ordbase_at $I5018, __lowered_lex_277, __lowered_lex_285
    $P5049 = $P5047."addedge"(__lowered_lex_281, -1, $P5048, $I5018)
    set __lowered_lex_281, $P5049
    add $I5019, __lowered_lex_285, 1
    set __lowered_lex_285, $I5019
    box $P5052, __lowered_lex_285
    set $P5050, $P5052
    goto while250_test507 
  while250_done511:
    set $P5072, $P5050
    goto if247_end503
  if247_else502:
.annotate 'line', 262
    set fb_tmp_39, __lowered_lex_280
    repr_defined $I5020, fb_tmp_39
    unless $I5020 goto if251_else512 
    set $P5053, fb_tmp_39[0]
    set $P5055, $P5053
    goto if251_end513
  if251_else512:
    null $P5054
    set $P5055, $P5054
  if251_end513:
    unless_null $P5055, vivi_252514
    nqp_get_sc_object $P5056, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5055, $P5056
  vivi_252514:
    set $S5019, $P5055
    set __lowered_lex_278, $S5019
  while253_test515:
    islt $I5021, __lowered_lex_285, __lowered_lex_284
    box $P5061, $I5021
    set $P5060, $P5061
    unless $I5021 goto while253_done519 
  while253_redo517:
.annotate 'line', 264
.annotate 'line', 265
    nqp_decontainerize $P5057, __lowered_lex_279
    find_lex $P5058, "$EDGE_CODEPOINT"
    ord $I5022, __lowered_lex_278, __lowered_lex_285
    $P5059 = $P5057."addedge"(__lowered_lex_281, -1, $P5058, $I5022)
    set __lowered_lex_281, $P5059
    add $I5023, __lowered_lex_285, 1
    set __lowered_lex_285, $I5023
    box $P5062, __lowered_lex_285
    set $P5060, $P5062
    goto while253_test515 
  while253_done519:
.annotate 'line', 268
    nqp_decontainerize $P5063, __lowered_lex_279
    nqp_decontainerize $P5064, __lowered_lex_279
    nqp_get_sc_object $P5065, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 3
    repr_get_attr_obj $P5066, $P5064, $P5065, "$!LITEND", 4
    unless $P5066 goto if254_else520 
    find_lex $P5067, "$EDGE_CODEPOINT"
    set $P5069, $P5067
    goto if254_end521
  if254_else520:
    find_lex $P5068, "$EDGE_CODEPOINT_LL"
    set $P5069, $P5068
  if254_end521:
    ord $I5024, __lowered_lex_278, __lowered_lex_285
    $P5070 = $P5063."addedge"(__lowered_lex_281, __lowered_lex_282, $P5069, $I5024)
    $P5071 = "&dentout"($P5070)
    set $P5072, $P5071
  if247_end503:
    set $P5073, $P5072
  if240_end488:
    set $P5080, $P5073
    goto if236_end481
  if236_else480:
.annotate 'line', 271
    find_lex $P5074, "$nfadeb"
    unless $P5074 goto if255_end523 
.annotate 'line', 272
    set $S5025, __lowered_lex_283
    concat $S5024, $S5025, " literal "
    set $S5026, __lowered_lex_281
    concat $S5023, $S5024, $S5026
    concat $S5022, $S5023, " -> "
    set $S5027, __lowered_lex_282
    concat $S5021, $S5022, $S5027
    concat $S5020, $S5021, " ''"
    $P5075 = "&note"($S5020)
  if255_end523:
.annotate 'line', 273
    nqp_decontainerize $P5076, __lowered_lex_279
    find_lex $P5077, "$EDGE_EPSILON"
    $P5078 = $P5076."addedge"(__lowered_lex_281, __lowered_lex_282, $P5077, 0)
    $P5079 = "&dentout"($P5078)
    set $P5080, $P5079
  if236_end481:
    .return ($P5080) 
.end
.HLL "nqp"
.namespace []
.sub "subrule" :subid("cuid_17_1431289885.65252") :anon :lex :outer("cuid_127_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 277
    .param pmc __lowered_lex_291 
    .param pmc __lowered_lex_292 
    .param pmc __lowered_lex_293 
    .param pmc __lowered_lex_294 
    .local pmc __lowered_lex_295 
    .local pmc __lowered_lex_296 
    .local int __lowered_lex_286 
    .local pmc fb_tmp_40 
    .local pmc fb_tmp_41 
    .local pmc fb_tmp_42 
    .local pmc fb_tmp_43 
    .local pmc fb_tmp_44 
    .local pmc fb_tmp_45 
    .local pmc fb_tmp_46 
    .local pmc fb_tmp_47 
    .local pmc fb_tmp_48 
    .local pmc fb_tmp_49 
    .local pmc fb_tmp_50 
    .local pmc fb_tmp_51 
    .local pmc fb_tmp_52 
    .local pmc fb_tmp_53 
    .local pmc fb_tmp_54 
    .local pmc fb_tmp_55 
    .local pmc fb_tmp_56 
    .local pmc fb_tmp_57 
    .local pmc fb_tmp_58 
    .local pmc fb_tmp_59 
    .local int __lowered_lex_287 
    .local int __lowered_lex_288 
    .local int __lowered_lex_289 
    .local int __lowered_lex_290 
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
    .local pmc fb_tmp_73 
    .local pmc fb_tmp_74 
.annotate 'line', 278
    $P5001 = "&dentin"()
    set __lowered_lex_295, $P5001
.annotate 'line', 279
    $P5002 = __lowered_lex_292."subtype"()
    set __lowered_lex_296, $P5002
    find_lex $P5003, "$nfadeb"
    unless $P5003 goto if256_end525 
.annotate 'line', 280
    set $S5007, __lowered_lex_295
    concat $S5006, $S5007, " subrule "
    set $S5008, __lowered_lex_293
    concat $S5005, $S5006, $S5008
    concat $S5004, $S5005, " -> "
    set $S5009, __lowered_lex_294
    concat $S5003, $S5004, $S5009
    concat $S5002, $S5003, " "
    $P5004 = __lowered_lex_292."name"()
    set $S5010, $P5004
    concat $S5001, $S5002, $S5010
    $P5005 = "&note"($S5001)
  if256_end525:
.annotate 'line', 281
    $P5006 = __lowered_lex_292."name"()
    set $S5011, $P5006
    iseq $I5001, $S5011, "before"
    set $I5003, $I5001
    unless $I5001 goto if258_end529 
    $P5007 = __lowered_lex_292."negate"()
    isfalse $I5002, $P5007
    set $I5003, $I5002
  if258_end529:
    unless $I5003 goto if257_else526 
.annotate 'line', 282
    nqp_decontainerize $P5008, __lowered_lex_291
    $P5009 = $P5008."addstate"()
    set $I5004, $P5009
    set __lowered_lex_286, $I5004
.annotate 'line', 283
    nqp_decontainerize $P5010, __lowered_lex_291
    set fb_tmp_41, __lowered_lex_292
    repr_defined $I5006, fb_tmp_41
    unless $I5006 goto if260_else532 
    set $P5011, fb_tmp_41[0]
    set $P5013, $P5011
    goto if260_end533
  if260_else532:
    null $P5012
    set $P5013, $P5012
  if260_end533:
    unless_null $P5013, vivi_261534
    nqp_get_sc_object $P5014, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5013, $P5014
  vivi_261534:
    set fb_tmp_40, $P5013
    repr_defined $I5005, fb_tmp_40
    unless $I5005 goto if259_else530 
    set $P5015, fb_tmp_40[1]
    set $P5017, $P5015
    goto if259_end531
  if259_else530:
    null $P5016
    set $P5017, $P5016
  if259_end531:
    unless_null $P5017, vivi_262535
    nqp_get_sc_object $P5018, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5017, $P5018
  vivi_262535:
    $P5019 = $P5017."ann"("orig_qast")
    $P5010."regex_nfa"($P5019, __lowered_lex_293, __lowered_lex_286)
.annotate 'line', 284
    nqp_decontainerize $P5020, __lowered_lex_291
    $P5021 = $P5020."fate"(__lowered_lex_292, __lowered_lex_286, __lowered_lex_294)
    $P5022 = "&dentout"($P5021)
    set $P5256, $P5022
    goto if257_end527
  if257_else526:
    set $S5012, __lowered_lex_296
    isne $I5007, $S5012, "zerowidth"
    set $I5019, $I5007
    unless $I5007 goto if264_end539 
.annotate 'line', 287
    $P5023 = __lowered_lex_292."name"()
    set $S5013, $P5023
    iseq $I5008, $S5013, "alpha"
    set $I5018, $I5008
    if $I5008 goto unless265_end541 
    set $S5014, __lowered_lex_296
    iseq $I5009, $S5014, "method"
    set $I5017, $I5009
    unless $I5009 goto if266_end543 
.annotate 'line', 289
    nqp_get_sc_object $P5024, "69262D203AA461F498C95CCF7FF3EA8AC3EE1FD5-1431289882.84207", 77
    set fb_tmp_43, __lowered_lex_292
    repr_defined $I5012, fb_tmp_43
    unless $I5012 goto if269_else548 
    set $P5025, fb_tmp_43[0]
    set $P5027, $P5025
    goto if269_end549
  if269_else548:
    null $P5026
    set $P5027, $P5026
  if269_end549:
    unless_null $P5027, vivi_270550
    nqp_get_sc_object $P5028, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5027, $P5028
  vivi_270550:
    set fb_tmp_42, $P5027
    repr_defined $I5011, fb_tmp_42
    unless $I5011 goto if268_else546 
    set $P5029, fb_tmp_42[0]
    set $P5031, $P5029
    goto if268_end547
  if268_else546:
    null $P5030
    set $P5031, $P5030
  if268_end547:
    unless_null $P5031, vivi_271551
    nqp_get_sc_object $P5032, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5031, $P5032
  vivi_271551:
    $P5033 = $P5024."ACCEPTS"($P5031)
    unless $P5033 goto if267_else544 
    set fb_tmp_45, __lowered_lex_292
    repr_defined $I5014, fb_tmp_45
    unless $I5014 goto if273_else554 
    set $P5034, fb_tmp_45[0]
    set $P5036, $P5034
    goto if273_end555
  if273_else554:
    null $P5035
    set $P5036, $P5035
  if273_end555:
    unless_null $P5036, vivi_274556
    nqp_get_sc_object $P5037, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5036, $P5037
  vivi_274556:
    set fb_tmp_44, $P5036
    repr_defined $I5013, fb_tmp_44
    unless $I5013 goto if272_else552 
    set $P5038, fb_tmp_44[0]
    set $P5040, $P5038
    goto if272_end553
  if272_else552:
    null $P5039
    set $P5040, $P5039
  if272_end553:
    unless_null $P5040, vivi_275557
    nqp_get_sc_object $P5041, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5040, $P5041
  vivi_275557:
    $P5042 = $P5040."value"()
    set $P5051, $P5042
    goto if267_end545
  if267_else544:
    set fb_tmp_47, __lowered_lex_292
    repr_defined $I5016, fb_tmp_47
    unless $I5016 goto if277_else560 
    set $P5043, fb_tmp_47[0]
    set $P5045, $P5043
    goto if277_end561
  if277_else560:
    null $P5044
    set $P5045, $P5044
  if277_end561:
    unless_null $P5045, vivi_278562
    nqp_get_sc_object $P5046, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5045, $P5046
  vivi_278562:
    set fb_tmp_46, $P5045
    repr_defined $I5015, fb_tmp_46
    unless $I5015 goto if276_else558 
    set $P5047, fb_tmp_46[0]
    set $P5049, $P5047
    goto if276_end559
  if276_else558:
    null $P5048
    set $P5049, $P5048
  if276_end559:
    unless_null $P5049, vivi_279563
    nqp_get_sc_object $P5050, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5049, $P5050
  vivi_279563:
    set $P5051, $P5049
  if267_end545:
    set $S5015, $P5051
    iseq $I5010, $S5015, "alpha"
    set $I5017, $I5010
  if266_end543:
    set $I5018, $I5017
  unless265_end541:
    set $I5019, $I5018
  if264_end539:
    unless $I5019 goto if263_else536 
.annotate 'line', 290
    nqp_decontainerize $P5052, __lowered_lex_291
    find_lex $P5053, "$EDGE_CHARCLASS"
    set $N5002, $P5053
    $P5054 = __lowered_lex_292."negate"()
    set $N5003, $P5054
    add $N5001, $N5002, $N5003
    $P5055 = $P5052."addedge"(__lowered_lex_293, __lowered_lex_294, $N5001, 4)
    set __lowered_lex_294, $P5055
.annotate 'line', 292
    nqp_decontainerize $P5056, __lowered_lex_291
    find_lex $P5057, "$EDGE_CODEPOINT"
    set $N5005, $P5057
    $P5058 = __lowered_lex_292."negate"()
    set $N5006, $P5058
    add $N5004, $N5005, $N5006
    $P5059 = $P5056."addedge"(__lowered_lex_293, __lowered_lex_294, $N5004, 95)
    $P5060 = "&dentout"($P5059)
    set $P5255, $P5060
    goto if263_end537
  if263_else536:
.annotate 'line', 294
    $P5061 = __lowered_lex_292."negate"()
    isfalse $I5020, $P5061
    set $I5032, $I5020
    unless $I5020 goto if281_end567 
.annotate 'line', 295
    $P5062 = __lowered_lex_292."name"()
    set $S5016, $P5062
    iseq $I5021, $S5016, "ws"
    set $I5031, $I5021
    if $I5021 goto unless282_end569 
    set $S5017, __lowered_lex_296
    iseq $I5022, $S5017, "method"
    set $I5030, $I5022
    unless $I5022 goto if283_end571 
.annotate 'line', 297
    nqp_get_sc_object $P5063, "69262D203AA461F498C95CCF7FF3EA8AC3EE1FD5-1431289882.84207", 77
    set fb_tmp_49, __lowered_lex_292
    repr_defined $I5025, fb_tmp_49
    unless $I5025 goto if286_else576 
    set $P5064, fb_tmp_49[0]
    set $P5066, $P5064
    goto if286_end577
  if286_else576:
    null $P5065
    set $P5066, $P5065
  if286_end577:
    unless_null $P5066, vivi_287578
    nqp_get_sc_object $P5067, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5066, $P5067
  vivi_287578:
    set fb_tmp_48, $P5066
    repr_defined $I5024, fb_tmp_48
    unless $I5024 goto if285_else574 
    set $P5068, fb_tmp_48[0]
    set $P5070, $P5068
    goto if285_end575
  if285_else574:
    null $P5069
    set $P5070, $P5069
  if285_end575:
    unless_null $P5070, vivi_288579
    nqp_get_sc_object $P5071, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5070, $P5071
  vivi_288579:
    $P5072 = $P5063."ACCEPTS"($P5070)
    unless $P5072 goto if284_else572 
    set fb_tmp_51, __lowered_lex_292
    repr_defined $I5027, fb_tmp_51
    unless $I5027 goto if290_else582 
    set $P5073, fb_tmp_51[0]
    set $P5075, $P5073
    goto if290_end583
  if290_else582:
    null $P5074
    set $P5075, $P5074
  if290_end583:
    unless_null $P5075, vivi_291584
    nqp_get_sc_object $P5076, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5075, $P5076
  vivi_291584:
    set fb_tmp_50, $P5075
    repr_defined $I5026, fb_tmp_50
    unless $I5026 goto if289_else580 
    set $P5077, fb_tmp_50[0]
    set $P5079, $P5077
    goto if289_end581
  if289_else580:
    null $P5078
    set $P5079, $P5078
  if289_end581:
    unless_null $P5079, vivi_292585
    nqp_get_sc_object $P5080, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5079, $P5080
  vivi_292585:
    $P5081 = $P5079."value"()
    set $P5090, $P5081
    goto if284_end573
  if284_else572:
    set fb_tmp_53, __lowered_lex_292
    repr_defined $I5029, fb_tmp_53
    unless $I5029 goto if294_else588 
    set $P5082, fb_tmp_53[0]
    set $P5084, $P5082
    goto if294_end589
  if294_else588:
    null $P5083
    set $P5084, $P5083
  if294_end589:
    unless_null $P5084, vivi_295590
    nqp_get_sc_object $P5085, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5084, $P5085
  vivi_295590:
    set fb_tmp_52, $P5084
    repr_defined $I5028, fb_tmp_52
    unless $I5028 goto if293_else586 
    set $P5086, fb_tmp_52[0]
    set $P5088, $P5086
    goto if293_end587
  if293_else586:
    null $P5087
    set $P5088, $P5087
  if293_end587:
    unless_null $P5088, vivi_296591
    nqp_get_sc_object $P5089, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5088, $P5089
  vivi_296591:
    set $P5090, $P5088
  if284_end573:
    set $S5018, $P5090
    iseq $I5023, $S5018, "ws"
    set $I5030, $I5023
  if283_end571:
    set $I5031, $I5030
  unless282_end569:
    set $I5032, $I5031
  if281_end567:
    unless $I5032 goto if280_else564 
.annotate 'line', 298
    nqp_decontainerize $P5091, __lowered_lex_291
    $P5092 = $P5091."fate"(__lowered_lex_292, __lowered_lex_293, __lowered_lex_294)
    $P5093 = "&dentout"($P5092)
    set $P5254, $P5093
    goto if280_end565
  if280_else564:
.annotate 'line', 300
    $P5094 = __lowered_lex_292."negate"()
    isfalse $I5033, $P5094
    set $I5035, $I5033
    unless $I5033 goto if299_end597 
    set $S5019, __lowered_lex_296
    isne $I5034, $S5019, "zerowidth"
    set $I5035, $I5034
  if299_end597:
    set $I5047, $I5035
    unless $I5035 goto if298_end595 
.annotate 'line', 301
    $P5095 = __lowered_lex_292."name"()
    set $S5020, $P5095
    iseq $I5036, $S5020, "ident"
    set $I5046, $I5036
    if $I5036 goto unless300_end599 
    set $S5021, __lowered_lex_296
    iseq $I5037, $S5021, "method"
    set $I5045, $I5037
    unless $I5037 goto if301_end601 
.annotate 'line', 303
    nqp_get_sc_object $P5096, "69262D203AA461F498C95CCF7FF3EA8AC3EE1FD5-1431289882.84207", 77
    set fb_tmp_55, __lowered_lex_292
    repr_defined $I5040, fb_tmp_55
    unless $I5040 goto if304_else606 
    set $P5097, fb_tmp_55[0]
    set $P5099, $P5097
    goto if304_end607
  if304_else606:
    null $P5098
    set $P5099, $P5098
  if304_end607:
    unless_null $P5099, vivi_305608
    nqp_get_sc_object $P5100, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5099, $P5100
  vivi_305608:
    set fb_tmp_54, $P5099
    repr_defined $I5039, fb_tmp_54
    unless $I5039 goto if303_else604 
    set $P5101, fb_tmp_54[0]
    set $P5103, $P5101
    goto if303_end605
  if303_else604:
    null $P5102
    set $P5103, $P5102
  if303_end605:
    unless_null $P5103, vivi_306609
    nqp_get_sc_object $P5104, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5103, $P5104
  vivi_306609:
    $P5105 = $P5096."ACCEPTS"($P5103)
    unless $P5105 goto if302_else602 
    set fb_tmp_57, __lowered_lex_292
    repr_defined $I5042, fb_tmp_57
    unless $I5042 goto if308_else612 
    set $P5106, fb_tmp_57[0]
    set $P5108, $P5106
    goto if308_end613
  if308_else612:
    null $P5107
    set $P5108, $P5107
  if308_end613:
    unless_null $P5108, vivi_309614
    nqp_get_sc_object $P5109, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5108, $P5109
  vivi_309614:
    set fb_tmp_56, $P5108
    repr_defined $I5041, fb_tmp_56
    unless $I5041 goto if307_else610 
    set $P5110, fb_tmp_56[0]
    set $P5112, $P5110
    goto if307_end611
  if307_else610:
    null $P5111
    set $P5112, $P5111
  if307_end611:
    unless_null $P5112, vivi_310615
    nqp_get_sc_object $P5113, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5112, $P5113
  vivi_310615:
    $P5114 = $P5112."value"()
    set $P5123, $P5114
    goto if302_end603
  if302_else602:
    set fb_tmp_59, __lowered_lex_292
    repr_defined $I5044, fb_tmp_59
    unless $I5044 goto if312_else618 
    set $P5115, fb_tmp_59[0]
    set $P5117, $P5115
    goto if312_end619
  if312_else618:
    null $P5116
    set $P5117, $P5116
  if312_end619:
    unless_null $P5117, vivi_313620
    nqp_get_sc_object $P5118, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5117, $P5118
  vivi_313620:
    set fb_tmp_58, $P5117
    repr_defined $I5043, fb_tmp_58
    unless $I5043 goto if311_else616 
    set $P5119, fb_tmp_58[0]
    set $P5121, $P5119
    goto if311_end617
  if311_else616:
    null $P5120
    set $P5121, $P5120
  if311_end617:
    unless_null $P5121, vivi_314621
    nqp_get_sc_object $P5122, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5121, $P5122
  vivi_314621:
    set $P5123, $P5121
  if302_end603:
    set $S5022, $P5123
    iseq $I5038, $S5022, "ident"
    set $I5045, $I5038
  if301_end601:
    set $I5046, $I5045
  unless300_end599:
    set $I5047, $I5046
  if298_end595:
    unless $I5047 goto if297_else592 
.annotate 'line', 304
    nqp_decontainerize $P5124, __lowered_lex_291
    $P5125 = $P5124."addstate"()
    set $I5048, $P5125
    set __lowered_lex_287, $I5048
.annotate 'line', 305
    nqp_decontainerize $P5126, __lowered_lex_291
    find_lex $P5127, "$EDGE_EPSILON"
    $P5126."addedge"(__lowered_lex_293, __lowered_lex_287, $P5127, 0)
.annotate 'line', 307
    nqp_decontainerize $P5128, __lowered_lex_291
    $P5129 = $P5128."addstate"()
    set $I5049, $P5129
    set __lowered_lex_288, $I5049
.annotate 'line', 308
    nqp_decontainerize $P5130, __lowered_lex_291
    find_lex $P5131, "$EDGE_CHARCLASS"
    $P5130."addedge"(__lowered_lex_287, __lowered_lex_288, $P5131, 4)
.annotate 'line', 309
    nqp_decontainerize $P5132, __lowered_lex_291
    find_lex $P5133, "$EDGE_CODEPOINT"
    $P5132."addedge"(__lowered_lex_287, __lowered_lex_288, $P5133, 95)
.annotate 'line', 311
    nqp_decontainerize $P5134, __lowered_lex_291
    $P5135 = $P5134."addstate"()
    set $I5050, $P5135
    set __lowered_lex_289, $I5050
.annotate 'line', 313
    nqp_decontainerize $P5136, __lowered_lex_291
    find_lex $P5137, "$EDGE_CHARCLASS"
    $P5136."addedge"(__lowered_lex_288, __lowered_lex_289, $P5137, 8192)
.annotate 'line', 314
    nqp_decontainerize $P5138, __lowered_lex_291
    find_lex $P5139, "$EDGE_EPSILON"
    $P5138."addedge"(__lowered_lex_289, __lowered_lex_288, $P5139, 0)
.annotate 'line', 315
    nqp_decontainerize $P5140, __lowered_lex_291
    find_lex $P5141, "$EDGE_EPSILON"
    $P5142 = $P5140."addedge"(__lowered_lex_288, __lowered_lex_294, $P5141, 0)
    set __lowered_lex_294, $P5142
.annotate 'line', 316
    $P5143 = "&dentout"(__lowered_lex_294)
    set $P5253, $P5143
    goto if297_end593
  if297_else592:
    set $S5023, __lowered_lex_296
    iseq $I5051, $S5023, "zerowidth"
    unless $I5051 goto if315_else622 
.annotate 'line', 318
.annotate 'line', 319
    $P5144 = __lowered_lex_292."negate"()
    unless $P5144 goto if316_else624 
.annotate 'line', 320
    nqp_decontainerize $P5145, __lowered_lex_291
    $P5146 = $P5145."fate"(__lowered_lex_292, __lowered_lex_293, __lowered_lex_294)
    $P5147 = "&dentout"($P5146)
    set $P5156, $P5147
    goto if316_end625
  if316_else624:
.annotate 'line', 322
.annotate 'line', 323
    nqp_decontainerize $P5148, __lowered_lex_291
    $P5149 = $P5148."addstate"()
    set $I5052, $P5149
    set __lowered_lex_290, $I5052
.annotate 'line', 324
    nqp_decontainerize $P5150, __lowered_lex_291
    find_lex $P5151, "$EDGE_SUBRULE"
    $P5152 = __lowered_lex_292."name"()
    $P5150."addedge"(__lowered_lex_293, __lowered_lex_290, $P5151, $P5152)
.annotate 'line', 325
    nqp_decontainerize $P5153, __lowered_lex_291
    $P5154 = $P5153."fate"(__lowered_lex_292, __lowered_lex_290, __lowered_lex_294)
    $P5155 = "&dentout"($P5154)
    set $P5156, $P5155
  if316_end625:
    set $P5252, $P5156
    goto if315_end623
  if315_else622:
    find_dynamic_lex $P5157, "$*vars_as_generic"
    unless_null $P5157, fallback638
    nqp_get_sc_object $P5159, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 0
    get_who $P5158, $P5159
    set fb_tmp_60, $P5158
    repr_defined $I5053, fb_tmp_60
    unless $I5053 goto if323_else639 
    set $P5160, fb_tmp_60["$vars_as_generic"]
    set $P5162, $P5160
    goto if323_end640
  if323_else639:
    null $P5161
    set $P5162, $P5161
  if323_end640:
    unless_null $P5162, vivi_324641
    nqp_get_sc_object $P5163, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5162, $P5163
  vivi_324641:
    unless_null $P5162, vivi_325642
    die "Contextual $*vars_as_generic not found"
    box $P5164, "Contextual $*vars_as_generic not found"
    set $P5162, $P5164
  vivi_325642:
    set $P5157, $P5162
  fallback638:
    set $P5165, $P5157
    unless $P5157 goto if322_end637 
    set $S5024, __lowered_lex_296
    iseq $I5054, $S5024, "method"
    box $P5166, $I5054
    set $P5165, $P5166
  if322_end637:
    set $P5177, $P5165
    unless $P5165 goto if321_end635 
.annotate 'line', 329
    nqp_get_sc_object $P5167, "69262D203AA461F498C95CCF7FF3EA8AC3EE1FD5-1431289882.84207", 77
    set fb_tmp_62, __lowered_lex_292
    repr_defined $I5056, fb_tmp_62
    unless $I5056 goto if327_else645 
    set $P5168, fb_tmp_62[0]
    set $P5170, $P5168
    goto if327_end646
  if327_else645:
    null $P5169
    set $P5170, $P5169
  if327_end646:
    unless_null $P5170, vivi_328647
    nqp_get_sc_object $P5171, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5170, $P5171
  vivi_328647:
    set fb_tmp_61, $P5170
    repr_defined $I5055, fb_tmp_61
    unless $I5055 goto if326_else643 
    set $P5172, fb_tmp_61[0]
    set $P5174, $P5172
    goto if326_end644
  if326_else643:
    null $P5173
    set $P5174, $P5173
  if326_end644:
    unless_null $P5174, vivi_329648
    nqp_get_sc_object $P5175, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5174, $P5175
  vivi_329648:
    $P5176 = $P5167."ACCEPTS"($P5174)
    set $P5177, $P5176
  if321_end635:
    set $P5187, $P5177
    unless $P5177 goto if320_end633 
    set fb_tmp_64, __lowered_lex_292
    repr_defined $I5059, fb_tmp_64
    unless $I5059 goto if331_else651 
    set $P5178, fb_tmp_64[0]
    set $P5180, $P5178
    goto if331_end652
  if331_else651:
    null $P5179
    set $P5180, $P5179
  if331_end652:
    unless_null $P5180, vivi_332653
    nqp_get_sc_object $P5181, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5180, $P5181
  vivi_332653:
    set fb_tmp_63, $P5180
    repr_defined $I5058, fb_tmp_63
    unless $I5058 goto if330_else649 
    set $P5182, fb_tmp_63[0]
    set $P5184, $P5182
    goto if330_end650
  if330_else649:
    null $P5183
    set $P5184, $P5183
  if330_end650:
    unless_null $P5184, vivi_333654
    nqp_get_sc_object $P5185, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5184, $P5185
  vivi_333654:
    $P5186 = $P5184."value"()
    set $S5025, $P5186
    iseq $I5057, $S5025, "!INTERPOLATE"
    box $P5188, $I5057
    set $P5187, $P5188
  if320_end633:
    set $P5199, $P5187
    unless $P5187 goto if319_end631 
.annotate 'line', 330
    nqp_get_sc_object $P5189, "69262D203AA461F498C95CCF7FF3EA8AC3EE1FD5-1431289882.84207", 103
    set fb_tmp_66, __lowered_lex_292
    repr_defined $I5061, fb_tmp_66
    unless $I5061 goto if335_else657 
    set $P5190, fb_tmp_66[0]
    set $P5192, $P5190
    goto if335_end658
  if335_else657:
    null $P5191
    set $P5192, $P5191
  if335_end658:
    unless_null $P5192, vivi_336659
    nqp_get_sc_object $P5193, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5192, $P5193
  vivi_336659:
    set fb_tmp_65, $P5192
    repr_defined $I5060, fb_tmp_65
    unless $I5060 goto if334_else655 
    set $P5194, fb_tmp_65[1]
    set $P5196, $P5194
    goto if334_end656
  if334_else655:
    null $P5195
    set $P5196, $P5195
  if334_end656:
    unless_null $P5196, vivi_337660
    nqp_get_sc_object $P5197, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5196, $P5197
  vivi_337660:
    $P5198 = $P5189."ACCEPTS"($P5196)
    set $P5199, $P5198
  if319_end631:
    set $P5209, $P5199
    unless $P5199 goto if318_end629 
    set fb_tmp_68, __lowered_lex_292
    repr_defined $I5064, fb_tmp_68
    unless $I5064 goto if339_else663 
    set $P5200, fb_tmp_68[0]
    set $P5202, $P5200
    goto if339_end664
  if339_else663:
    null $P5201
    set $P5202, $P5201
  if339_end664:
    unless_null $P5202, vivi_340665
    nqp_get_sc_object $P5203, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5202, $P5203
  vivi_340665:
    set fb_tmp_67, $P5202
    repr_defined $I5063, fb_tmp_67
    unless $I5063 goto if338_else661 
    set $P5204, fb_tmp_67[1]
    set $P5206, $P5204
    goto if338_end662
  if338_else661:
    null $P5205
    set $P5206, $P5205
  if338_end662:
    unless_null $P5206, vivi_341666
    nqp_get_sc_object $P5207, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5206, $P5207
  vivi_341666:
    $P5208 = $P5206."scope"()
    set $S5026, $P5208
    iseq $I5062, $S5026, "lexical"
    box $P5210, $I5062
    set $P5209, $P5210
  if318_end629:
    unless $P5209 goto if317_else626 
    nqp_decontainerize $P5211, __lowered_lex_291
    nqp_get_sc_object $P5212, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 3
    repr_bind_attr_int $P5211, $P5212, "$!generic", 2, 1
.annotate 'line', 332
    nqp_decontainerize $P5213, __lowered_lex_291
    find_lex $P5214, "$EDGE_GENERIC_VAR"
    set fb_tmp_70, __lowered_lex_292
    repr_defined $I5066, fb_tmp_70
    unless $I5066 goto if343_else669 
    set $P5215, fb_tmp_70[0]
    set $P5217, $P5215
    goto if343_end670
  if343_else669:
    null $P5216
    set $P5217, $P5216
  if343_end670:
    unless_null $P5217, vivi_344671
    nqp_get_sc_object $P5218, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5217, $P5218
  vivi_344671:
    set fb_tmp_69, $P5217
    repr_defined $I5065, fb_tmp_69
    unless $I5065 goto if342_else667 
    set $P5219, fb_tmp_69[1]
    set $P5221, $P5219
    goto if342_end668
  if342_else667:
    null $P5220
    set $P5221, $P5220
  if342_end668:
    unless_null $P5221, vivi_345672
    nqp_get_sc_object $P5222, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5221, $P5222
  vivi_345672:
    $P5223 = $P5221."name"()
    $P5224 = $P5213."addedge"(__lowered_lex_293, __lowered_lex_294, $P5214, $P5223)
    $P5225 = "&dentout"($P5224)
    set $P5251, $P5225
    goto if317_end627
  if317_else626:
.annotate 'line', 334
.annotate 'line', 335
    set $S5027, __lowered_lex_296
    iseq $I5067, $S5027, "capture"
    box $P5231, $I5067
    set $P5230, $P5231
    unless $I5067 goto if347_end676 
    set fb_tmp_71, __lowered_lex_292
    repr_defined $I5068, fb_tmp_71
    unless $I5068 goto if348_else677 
    set $P5226, fb_tmp_71[1]
    set $P5228, $P5226
    goto if348_end678
  if348_else677:
    null $P5227
    set $P5228, $P5227
  if348_end678:
    unless_null $P5228, vivi_349679
    nqp_get_sc_object $P5229, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5228, $P5229
  vivi_349679:
    set $P5230, $P5228
  if347_end676:
    unless $P5230 goto if346_else673 
.annotate 'line', 336
    nqp_decontainerize $P5232, __lowered_lex_291
    set fb_tmp_72, __lowered_lex_292
    repr_defined $I5069, fb_tmp_72
    unless $I5069 goto if350_else680 
    set $P5233, fb_tmp_72[1]
    set $P5235, $P5233
    goto if350_end681
  if350_else680:
    null $P5234
    set $P5235, $P5234
  if350_end681:
    unless_null $P5235, vivi_351682
    nqp_get_sc_object $P5236, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5235, $P5236
  vivi_351682:
    $P5237 = $P5232."regex_nfa"($P5235, __lowered_lex_293, __lowered_lex_294)
    set $P5249, $P5237
    goto if346_end674
  if346_else673:
.annotate 'line', 337
    nqp_decontainerize $P5238, __lowered_lex_291
    find_lex $P5239, "$EDGE_SUBRULE"
    set fb_tmp_74, __lowered_lex_292
    repr_defined $I5071, fb_tmp_74
    unless $I5071 goto if353_else685 
    set $P5240, fb_tmp_74[0]
    set $P5242, $P5240
    goto if353_end686
  if353_else685:
    null $P5241
    set $P5242, $P5241
  if353_end686:
    unless_null $P5242, vivi_354687
    nqp_get_sc_object $P5243, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5242, $P5243
  vivi_354687:
    set fb_tmp_73, $P5242
    repr_defined $I5070, fb_tmp_73
    unless $I5070 goto if352_else683 
    set $P5244, fb_tmp_73[0]
    set $P5246, $P5244
    goto if352_end684
  if352_else683:
    null $P5245
    set $P5246, $P5245
  if352_end684:
    unless_null $P5246, vivi_355688
    nqp_get_sc_object $P5247, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5246, $P5247
  vivi_355688:
    $P5248 = $P5238."addedge"(__lowered_lex_293, __lowered_lex_294, $P5239, $P5246)
    set $P5249, $P5248
  if346_end674:
    $P5250 = "&dentout"($P5249)
    set $P5251, $P5250
  if317_end627:
    set $P5252, $P5251
  if315_end623:
    set $P5253, $P5252
  if297_end593:
    set $P5254, $P5253
  if280_end565:
    set $P5255, $P5254
  if263_end537:
    set $P5256, $P5255
  if257_end527:
    .return ($P5256) 
.end
.HLL "nqp"
.namespace []
.sub "quant" :subid("cuid_18_1431289885.65252") :anon :lex :outer("cuid_127_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 341
    .param pmc __lowered_lex_311 
    .param pmc __lowered_lex_312 
    .param pmc __lowered_lex_313 
    .param pmc __lowered_lex_314 
    .local pmc __lowered_lex_315 
    .local int __lowered_lex_316 
    .local int __lowered_lex_317 
    .local int __lowered_lex_300 
    .local int __lowered_lex_301 
    .local int __lowered_lex_302 
    .local pmc fb_tmp_75 
    .local int __lowered_lex_297 
    .local pmc fb_tmp_76 
    .local pmc fb_tmp_77 
    .local int __lowered_lex_298 
    .local pmc __lowered_lex_299 
    .local pmc fb_tmp_78 
    .local pmc fb_tmp_79 
    .local pmc fb_tmp_80 
    .local int __lowered_lex_303 
    .local int __lowered_lex_304 
    .local int __lowered_lex_305 
    .local pmc fb_tmp_81 
    .local pmc fb_tmp_82 
    .local int __lowered_lex_306 
    .local pmc fb_tmp_83 
    .local int __lowered_lex_307 
    .local int __lowered_lex_308 
    .local int __lowered_lex_309 
    .local pmc fb_tmp_84 
    .local pmc fb_tmp_85 
    .local pmc fb_tmp_86 
    .local int __lowered_lex_310 
    .local pmc fb_tmp_87 
    root_new $P101, ['parrot';'Continuation']
    set_label $P101, lexotic_689
    .lex "RETURN", $P101
.annotate 'line', 342
    $P5001 = "&dentin"()
    set __lowered_lex_315, $P5001
    set $N5002, 0
.annotate 'line', 343
    $P5003 = __lowered_lex_312."min"()
    set $P5002, $P5003
    defined $I5001, $P5002
    if $I5001, defor691
    box $P5004, 0
    set $P5002, $P5004
  defor691:
    set $N5003, $P5002
    add $N5001, $N5002, $N5003
    set $I5002, $N5001
    set __lowered_lex_316, $I5002
    set $N5005, 0
.annotate 'line', 344
    $P5006 = __lowered_lex_312."max"()
    set $P5005, $P5006
    defined $I5003, $P5005
    if $I5003, defor692
    box $P5007, -1
    set $P5005, $P5007
  defor692:
    set $N5006, $P5005
    add $N5004, $N5005, $N5006
    set $I5004, $N5004
    set __lowered_lex_317, $I5004
    find_lex $P5008, "$nfadeb"
    unless $P5008 goto if356_end694 
.annotate 'line', 345
    set $S5009, __lowered_lex_315
    concat $S5008, $S5009, " quant "
    set $S5010, __lowered_lex_313
    concat $S5007, $S5008, $S5010
    concat $S5006, $S5007, " -> "
    set $S5011, __lowered_lex_314
    concat $S5005, $S5006, $S5011
    concat $S5004, $S5005, " "
    set $S5012, __lowered_lex_316
    concat $S5003, $S5004, $S5012
    concat $S5002, $S5003, " "
    set $S5013, __lowered_lex_317
    concat $S5001, $S5002, $S5013
    $P5009 = "&note"($S5001)
  if356_end694:
    isgt $I5005, __lowered_lex_317, 1
    set $I5007, $I5005
    if $I5005 goto unless358_end698 
    isgt $I5006, __lowered_lex_316, 1
    set $I5007, $I5006
  unless358_end698:
    unless $I5007 goto if357_end696 
    set __lowered_lex_301, 0
.annotate 'line', 347
    set __lowered_lex_300, 0
    set fb_tmp_75, __lowered_lex_312
    repr_defined $I5009, fb_tmp_75
    unless $I5009 goto if359_else699 
    set $P5010, fb_tmp_75[1]
    set $P5012, $P5010
    goto if359_end700
  if359_else699:
    null $P5011
    set $P5012, $P5011
  if359_end700:
    unless_null $P5012, vivi_360701
    nqp_get_sc_object $P5013, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5012, $P5013
  vivi_360701:
    defined $I5008, $P5012
    set __lowered_lex_302, $I5008
  while361_test702:
    islt $I5010, __lowered_lex_300, __lowered_lex_317
    set $I5012, $I5010
    if $I5010 goto unless362_end708 
    islt $I5011, __lowered_lex_300, __lowered_lex_316
    set $I5012, $I5011
  unless362_end708:
    box $P5032, $I5012
    set $P5031, $P5032
    unless $I5012 goto while361_done706 
  while361_redo704:
.annotate 'line', 351
    isge $I5013, __lowered_lex_300, __lowered_lex_316
    unless $I5013 goto if363_end710 
.annotate 'line', 352
.annotate 'line', 353
    nqp_decontainerize $P5014, __lowered_lex_311
    find_lex $P5015, "$EDGE_EPSILON"
    $P5016 = $P5014."addedge"(__lowered_lex_313, __lowered_lex_314, $P5015, 0)
    set $I5014, $P5016
    set __lowered_lex_297, $I5014
    find_lex $P5017, "$nfadeb"
    unless $P5017 goto if364_end712 
.annotate 'line', 354
    set $S5016, __lowered_lex_315
    concat $S5015, $S5016, " ...quant f = "
    set $S5017, __lowered_lex_297
    concat $S5014, $S5015, $S5017
    $P5018 = "&note"($S5014)
  if364_end712:
    set $I5015, __lowered_lex_301
    if __lowered_lex_301 goto unless365_end714 
    set $I5015, __lowered_lex_297
  unless365_end714:
    set __lowered_lex_301, $I5015
  if363_end710:
    set $I5017, __lowered_lex_302
    unless __lowered_lex_302 goto if367_end718 
    isgt $I5016, __lowered_lex_300, 0
    set $I5017, $I5016
  if367_end718:
    unless $I5017 goto if366_end716 
.annotate 'line', 357
.annotate 'line', 358
    nqp_decontainerize $P5019, __lowered_lex_311
    set fb_tmp_76, __lowered_lex_312
    repr_defined $I5018, fb_tmp_76
    unless $I5018 goto if368_else719 
    set $P5020, fb_tmp_76[1]
    set $P5022, $P5020
    goto if368_end720
  if368_else719:
    null $P5021
    set $P5022, $P5021
  if368_end720:
    unless_null $P5022, vivi_369721
    nqp_get_sc_object $P5023, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5022, $P5023
  vivi_369721:
    $P5024 = $P5019."regex_nfa"($P5022, __lowered_lex_313, -1)
    set __lowered_lex_313, $P5024
  if366_end716:
.annotate 'line', 360
    nqp_decontainerize $P5025, __lowered_lex_311
    set fb_tmp_77, __lowered_lex_312
    repr_defined $I5019, fb_tmp_77
    unless $I5019 goto if370_else722 
    set $P5026, fb_tmp_77[0]
    set $P5028, $P5026
    goto if370_end723
  if370_else722:
    null $P5027
    set $P5028, $P5027
  if370_end723:
    unless_null $P5028, vivi_371724
    nqp_get_sc_object $P5029, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5028, $P5029
  vivi_371724:
    $P5030 = $P5025."regex_nfa"($P5028, __lowered_lex_313, -1)
    set __lowered_lex_313, $P5030
    add $I5020, __lowered_lex_300, 1
    set __lowered_lex_300, $I5020
    box $P5033, __lowered_lex_300
    set $P5031, $P5033
    goto while361_test702 
  while361_done706:
.annotate 'line', 363
    nqp_decontainerize $P5034, __lowered_lex_311
    find_lex $P5035, "$EDGE_EPSILON"
    $P5036 = $P5034."addedge"(__lowered_lex_313, __lowered_lex_314, $P5035, 0)
    set $I5021, $P5036
    set __lowered_lex_301, $I5021
    iseq $I5022, __lowered_lex_317, -1
    unless $I5022 goto if372_end726 
.annotate 'line', 364
.annotate 'line', 365
    nqp_decontainerize $P5037, __lowered_lex_311
    $P5038 = $P5037."addstate"()
    set $I5023, $P5038
    set __lowered_lex_298, $I5023
.annotate 'line', 366
    nqp_decontainerize $P5039, __lowered_lex_311
    find_lex $P5040, "$EDGE_EPSILON"
    $P5039."addedge"(__lowered_lex_313, __lowered_lex_298, $P5040, 0)
    box $P5041, __lowered_lex_298
    set __lowered_lex_313, $P5041
.annotate 'line', 368
    nqp_decontainerize $P5042, __lowered_lex_311
    $P5043 = $P5042."addstate"()
    set __lowered_lex_299, $P5043
.annotate 'line', 369
    nqp_decontainerize $P5044, __lowered_lex_311
    find_lex $P5045, "$EDGE_EPSILON"
    $P5044."addedge"(__lowered_lex_299, __lowered_lex_314, $P5045, 0)
.annotate 'line', 370
    nqp_decontainerize $P5046, __lowered_lex_311
    find_lex $P5047, "$EDGE_EPSILON"
    $P5046."addedge"(__lowered_lex_299, __lowered_lex_313, $P5047, 0)
    set $I5025, __lowered_lex_302
    unless __lowered_lex_302 goto if374_end730 
    isgt $I5024, __lowered_lex_300, 0
    set $I5025, $I5024
  if374_end730:
    unless $I5025 goto if373_end728 
.annotate 'line', 371
.annotate 'line', 372
    nqp_decontainerize $P5048, __lowered_lex_311
    set fb_tmp_78, __lowered_lex_312
    repr_defined $I5026, fb_tmp_78
    unless $I5026 goto if375_else731 
    set $P5049, fb_tmp_78[1]
    set $P5051, $P5049
    goto if375_end732
  if375_else731:
    null $P5050
    set $P5051, $P5050
  if375_end732:
    unless_null $P5051, vivi_376733
    nqp_get_sc_object $P5052, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5051, $P5052
  vivi_376733:
    $P5053 = $P5048."regex_nfa"($P5051, __lowered_lex_313, -1)
    set __lowered_lex_313, $P5053
  if373_end728:
.annotate 'line', 374
    nqp_decontainerize $P5054, __lowered_lex_311
    set fb_tmp_79, __lowered_lex_312
    repr_defined $I5027, fb_tmp_79
    unless $I5027 goto if377_else734 
    set $P5055, fb_tmp_79[0]
    set $P5057, $P5055
    goto if377_end735
  if377_else734:
    null $P5056
    set $P5057, $P5056
  if377_end735:
    unless_null $P5057, vivi_378736
    nqp_get_sc_object $P5058, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5057, $P5058
  vivi_378736:
    $P5059 = $P5054."regex_nfa"($P5057, __lowered_lex_313, __lowered_lex_299)
  if372_end726:
    set $N5007, __lowered_lex_314
    set $N5008, 0
    islt $I5028, $N5007, $N5008
    set $I5030, $I5028
    unless $I5028 goto if380_end740 
    isgt $I5029, __lowered_lex_301, 0
    set $I5030, $I5029
  if380_end740:
    unless $I5030 goto if379_end738 
    box $P5060, __lowered_lex_301
    set __lowered_lex_314, $P5060
  if379_end738:
    find_lex $P5061, "$nfadeb"
    unless $P5061 goto if381_end742 
.annotate 'line', 377
    set $S5022, __lowered_lex_315
    concat $S5021, $S5022, " ...quant returns "
    set $S5023, __lowered_lex_314
    concat $S5020, $S5021, $S5023
    concat $S5019, $S5020, " with st = "
    set $S5024, __lowered_lex_301
    concat $S5018, $S5019, $S5024
    $P5062 = "&note"($S5018)
  if381_end742:
.annotate 'line', 378
    $P5063 = "&dentout"(__lowered_lex_314)
    $P5064 = "RETURN"($P5063)
  if357_end696:
    iseq $I5031, __lowered_lex_317, -1
    unless $I5031 goto if382_else743 
.annotate 'line', 380
    iseq $I5032, __lowered_lex_316, 0
    unless $I5032 goto if383_else745 
.annotate 'line', 381
    set fb_tmp_80, __lowered_lex_312
    repr_defined $I5034, fb_tmp_80
    unless $I5034 goto if385_else749 
    set $P5065, fb_tmp_80[1]
    set $P5067, $P5065
    goto if385_end750
  if385_else749:
    null $P5066
    set $P5067, $P5066
  if385_end750:
    unless_null $P5067, vivi_386751
    nqp_get_sc_object $P5068, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5067, $P5068
  vivi_386751:
    defined $I5033, $P5067
    unless $I5033 goto if384_else747 
.annotate 'line', 382
.annotate 'line', 383
    nqp_decontainerize $P5069, __lowered_lex_311
    $P5070 = $P5069."addstate"()
    set $I5035, $P5070
    set __lowered_lex_303, $I5035
.annotate 'line', 384
    nqp_decontainerize $P5071, __lowered_lex_311
    find_lex $P5072, "$EDGE_EPSILON"
    $P5071."addedge"(__lowered_lex_313, __lowered_lex_303, $P5072, 0)
.annotate 'line', 385
    nqp_decontainerize $P5073, __lowered_lex_311
    $P5074 = $P5073."addstate"()
    set $I5036, $P5074
    set __lowered_lex_304, $I5036
    find_lex $P5075, "$nfadeb"
    unless $P5075 goto if387_end753 
.annotate 'line', 386
    set $S5029, __lowered_lex_315
    concat $S5028, $S5029, " ...in quant *%, start = "
    set $S5030, __lowered_lex_303
    concat $S5027, $S5028, $S5030
    concat $S5026, $S5027, ", looper = "
    set $S5031, __lowered_lex_304
    concat $S5025, $S5026, $S5031
    $P5076 = "&note"($S5025)
  if387_end753:
.annotate 'line', 387
    nqp_decontainerize $P5077, __lowered_lex_311
    set fb_tmp_81, __lowered_lex_312
    repr_defined $I5037, fb_tmp_81
    unless $I5037 goto if388_else754 
    set $P5078, fb_tmp_81[0]
    set $P5080, $P5078
    goto if388_end755
  if388_else754:
    null $P5079
    set $P5080, $P5079
  if388_end755:
    unless_null $P5080, vivi_389756
    nqp_get_sc_object $P5081, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5080, $P5081
  vivi_389756:
    $P5082 = $P5077."regex_nfa"($P5080, __lowered_lex_303, __lowered_lex_304)
    set $I5038, $P5082
    set __lowered_lex_305, $I5038
.annotate 'line', 388
    nqp_decontainerize $P5083, __lowered_lex_311
    set fb_tmp_82, __lowered_lex_312
    repr_defined $I5039, fb_tmp_82
    unless $I5039 goto if390_else757 
    set $P5084, fb_tmp_82[1]
    set $P5086, $P5084
    goto if390_end758
  if390_else757:
    null $P5085
    set $P5086, $P5085
  if390_end758:
    unless_null $P5086, vivi_391759
    nqp_get_sc_object $P5087, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5086, $P5087
  vivi_391759:
    $P5083."regex_nfa"($P5086, __lowered_lex_304, __lowered_lex_303)
    set $N5009, __lowered_lex_314
    set $N5010, 0
    islt $I5040, $N5009, $N5010
    if $I5040 goto unless392_end761 
.annotate 'line', 389
    nqp_decontainerize $P5088, __lowered_lex_311
    find_lex $P5089, "$EDGE_EPSILON"
    $P5090 = $P5088."addedge"(__lowered_lex_304, __lowered_lex_314, $P5089, 0)
  unless392_end761:
.annotate 'line', 390
    nqp_decontainerize $P5091, __lowered_lex_311
    find_lex $P5092, "$EDGE_EPSILON"
    $P5093 = $P5091."addedge"(__lowered_lex_313, __lowered_lex_314, $P5092, 0)
    set $I5041, $P5093
    set __lowered_lex_305, $I5041
    set $N5011, __lowered_lex_314
    set $N5012, 0
    islt $I5042, $N5011, $N5012
    set $I5044, $I5042
    unless $I5042 goto if394_end765 
    isgt $I5043, __lowered_lex_305, 0
    set $I5044, $I5043
  if394_end765:
    box $P5096, $I5044
    set $P5095, $P5096
    unless $I5044 goto if393_end763 
    box $P5094, __lowered_lex_305
    set __lowered_lex_314, $P5094
    set $P5095, __lowered_lex_314
  if393_end763:
    set $P5110, $P5095
    goto if384_end748
  if384_else747:
.annotate 'line', 393
    find_lex $P5097, "$nfadeb"
    unless $P5097 goto if395_end767 
.annotate 'line', 394
    set $S5033, __lowered_lex_315
    concat $S5032, $S5033, " ...in quant *"
    $P5098 = "&note"($S5032)
  if395_end767:
.annotate 'line', 395
    nqp_decontainerize $P5099, __lowered_lex_311
    set fb_tmp_83, __lowered_lex_312
    repr_defined $I5045, fb_tmp_83
    unless $I5045 goto if396_else768 
    set $P5100, fb_tmp_83[0]
    set $P5102, $P5100
    goto if396_end769
  if396_else768:
    null $P5101
    set $P5102, $P5101
  if396_end769:
    unless_null $P5102, vivi_397770
    nqp_get_sc_object $P5103, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5102, $P5103
  vivi_397770:
    $P5099."regex_nfa"($P5102, __lowered_lex_313, __lowered_lex_313)
.annotate 'line', 396
    nqp_decontainerize $P5104, __lowered_lex_311
    find_lex $P5105, "$EDGE_EPSILON"
    $P5106 = $P5104."addedge"(__lowered_lex_313, __lowered_lex_314, $P5105, 0)
    set $I5046, $P5106
    set __lowered_lex_306, $I5046
    set $N5013, __lowered_lex_314
    set $N5014, 0
    islt $I5047, $N5013, $N5014
    set $I5049, $I5047
    unless $I5047 goto if399_end774 
    isgt $I5048, __lowered_lex_306, 0
    set $I5049, $I5048
  if399_end774:
    box $P5109, $I5049
    set $P5108, $P5109
    unless $I5049 goto if398_end772 
    box $P5107, __lowered_lex_306
    set __lowered_lex_314, $P5107
    set $P5108, __lowered_lex_314
  if398_end772:
    set $P5110, $P5108
  if384_end748:
    goto if383_end746
  if383_else745:
.annotate 'line', 399
.annotate 'line', 400
    nqp_decontainerize $P5111, __lowered_lex_311
    $P5112 = $P5111."addstate"()
    set $I5050, $P5112
    set __lowered_lex_307, $I5050
.annotate 'line', 401
    nqp_decontainerize $P5113, __lowered_lex_311
    find_lex $P5114, "$EDGE_EPSILON"
    $P5113."addedge"(__lowered_lex_313, __lowered_lex_307, $P5114, 0)
.annotate 'line', 402
    nqp_decontainerize $P5115, __lowered_lex_311
    $P5116 = $P5115."addstate"()
    set $I5051, $P5116
    set __lowered_lex_308, $I5051
    find_lex $P5117, "$nfadeb"
    unless $P5117 goto if400_end776 
.annotate 'line', 403
    set $S5038, __lowered_lex_315
    concat $S5037, $S5038, " ...in quant +, start = "
    set $S5039, __lowered_lex_307
    concat $S5036, $S5037, $S5039
    concat $S5035, $S5036, ", looper = "
    set $S5040, __lowered_lex_308
    concat $S5034, $S5035, $S5040
    $P5118 = "&note"($S5034)
  if400_end776:
.annotate 'line', 404
    nqp_decontainerize $P5119, __lowered_lex_311
    set fb_tmp_84, __lowered_lex_312
    repr_defined $I5052, fb_tmp_84
    unless $I5052 goto if401_else777 
    set $P5120, fb_tmp_84[0]
    set $P5122, $P5120
    goto if401_end778
  if401_else777:
    null $P5121
    set $P5122, $P5121
  if401_end778:
    unless_null $P5122, vivi_402779
    nqp_get_sc_object $P5123, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5122, $P5123
  vivi_402779:
    $P5124 = $P5119."regex_nfa"($P5122, __lowered_lex_307, __lowered_lex_308)
    set $I5053, $P5124
    set __lowered_lex_309, $I5053
    set fb_tmp_85, __lowered_lex_312
    repr_defined $I5055, fb_tmp_85
    unless $I5055 goto if404_else782 
    set $P5125, fb_tmp_85[1]
    set $P5127, $P5125
    goto if404_end783
  if404_else782:
    null $P5126
    set $P5127, $P5126
  if404_end783:
    unless_null $P5127, vivi_405784
    nqp_get_sc_object $P5128, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5127, $P5128
  vivi_405784:
    defined $I5054, $P5127
    unless $I5054 goto if403_else780 
.annotate 'line', 405
.annotate 'line', 406
    nqp_decontainerize $P5129, __lowered_lex_311
    set fb_tmp_86, __lowered_lex_312
    repr_defined $I5056, fb_tmp_86
    unless $I5056 goto if406_else785 
    set $P5130, fb_tmp_86[1]
    set $P5132, $P5130
    goto if406_end786
  if406_else785:
    null $P5131
    set $P5132, $P5131
  if406_end786:
    unless_null $P5132, vivi_407787
    nqp_get_sc_object $P5133, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5132, $P5133
  vivi_407787:
    $P5134 = $P5129."regex_nfa"($P5132, __lowered_lex_308, __lowered_lex_307)
    goto if403_end781
  if403_else780:
.annotate 'line', 408
    find_lex $P5135, "$nfadeb"
    unless $P5135 goto if408_end789 
.annotate 'line', 409
    set $S5042, __lowered_lex_315
    concat $S5041, $S5042, " ...in quant +, no node[1]"
    $P5136 = "&note"($S5041)
  if408_end789:
.annotate 'line', 410
    nqp_decontainerize $P5137, __lowered_lex_311
    find_lex $P5138, "$EDGE_EPSILON"
    $P5139 = $P5137."addedge"(__lowered_lex_308, __lowered_lex_307, $P5138, 0)
  if403_end781:
    set $N5015, __lowered_lex_314
    set $N5016, 0
    islt $I5057, $N5015, $N5016
    if $I5057 goto unless409_end791 
.annotate 'line', 412
    nqp_decontainerize $P5140, __lowered_lex_311
    find_lex $P5141, "$EDGE_EPSILON"
    $P5142 = $P5140."addedge"(__lowered_lex_308, __lowered_lex_314, $P5141, 0)
  unless409_end791:
    set $N5017, __lowered_lex_314
    set $N5018, 0
    islt $I5058, $N5017, $N5018
    set $I5060, $I5058
    unless $I5058 goto if411_end795 
    isgt $I5059, __lowered_lex_309, 0
    set $I5060, $I5059
  if411_end795:
    box $P5145, $I5060
    set $P5144, $P5145
    unless $I5060 goto if410_end793 
    box $P5143, __lowered_lex_309
    set __lowered_lex_314, $P5143
    set $P5144, __lowered_lex_314
  if410_end793:
  if383_end746:
    find_lex $P5146, "$nfadeb"
    unless $P5146 goto if412_end797 
.annotate 'line', 415
    set $S5045, __lowered_lex_315
    concat $S5044, $S5045, " ...quant returns "
    set $S5046, __lowered_lex_314
    concat $S5043, $S5044, $S5046
    $P5147 = "&note"($S5043)
  if412_end797:
.annotate 'line', 416
    $P5148 = "&dentout"(__lowered_lex_314)
    set $P5169, $P5148
    goto if382_end744
  if382_else743:
    iseq $I5061, __lowered_lex_316, 0
    set $I5063, $I5061
    unless $I5061 goto if414_end801 
    iseq $I5062, __lowered_lex_317, 1
    set $I5063, $I5062
  if414_end801:
    unless $I5063 goto if413_else798 
.annotate 'line', 417
.annotate 'line', 418
    nqp_decontainerize $P5149, __lowered_lex_311
    set fb_tmp_87, __lowered_lex_312
    repr_defined $I5064, fb_tmp_87
    unless $I5064 goto if415_else802 
    set $P5150, fb_tmp_87[0]
    set $P5152, $P5150
    goto if415_end803
  if415_else802:
    null $P5151
    set $P5152, $P5151
  if415_end803:
    unless_null $P5152, vivi_416804
    nqp_get_sc_object $P5153, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5152, $P5153
  vivi_416804:
    $P5154 = $P5149."regex_nfa"($P5152, __lowered_lex_313, __lowered_lex_314)
    set $I5065, $P5154
    set __lowered_lex_310, $I5065
    set $N5019, __lowered_lex_314
    set $N5020, 0
    islt $I5066, $N5019, $N5020
    set $I5068, $I5066
    unless $I5066 goto if418_end808 
    isgt $I5067, __lowered_lex_310, 0
    set $I5068, $I5067
  if418_end808:
    unless $I5068 goto if417_end806 
    box $P5155, __lowered_lex_310
    set __lowered_lex_314, $P5155
  if417_end806:
.annotate 'line', 420
    nqp_decontainerize $P5156, __lowered_lex_311
    find_lex $P5157, "$EDGE_EPSILON"
    $P5158 = $P5156."addedge"(__lowered_lex_313, __lowered_lex_314, $P5157, 0)
    set $I5069, $P5158
    set __lowered_lex_310, $I5069
    set $N5021, __lowered_lex_314
    set $N5022, 0
    islt $I5070, $N5021, $N5022
    set $I5072, $I5070
    unless $I5070 goto if420_end812 
    isgt $I5071, __lowered_lex_310, 0
    set $I5072, $I5071
  if420_end812:
    unless $I5072 goto if419_end810 
    box $P5159, __lowered_lex_310
    set __lowered_lex_314, $P5159
  if419_end810:
    find_lex $P5160, "$nfadeb"
    unless $P5160 goto if421_end814 
.annotate 'line', 422
    set $S5049, __lowered_lex_315
    concat $S5048, $S5049, " ...quant returns "
    set $S5050, __lowered_lex_314
    concat $S5047, $S5048, $S5050
    $P5161 = "&note"($S5047)
  if421_end814:
.annotate 'line', 423
    $P5162 = "&dentout"(__lowered_lex_314)
    set $P5168, $P5162
    goto if413_end799
  if413_else798:
.annotate 'line', 424
    find_lex $P5163, "$nfadeb"
    unless $P5163 goto if422_end816 
.annotate 'line', 425
    set $S5052, __lowered_lex_315
    concat $S5051, $S5052, " ...quant returns fate"
    $P5164 = "&note"($S5051)
  if422_end816:
.annotate 'line', 426
    nqp_decontainerize $P5165, __lowered_lex_311
    $P5166 = $P5165."fate"(__lowered_lex_312, __lowered_lex_313, __lowered_lex_314)
    $P5167 = "&dentout"($P5166)
    set $P5168, $P5167
  if413_end799:
    set $P5169, $P5168
  if382_end744:
    goto lexotic_690
  lexotic_689:
    .get_results ($P5169)
  lexotic_690:
    .return ($P5169) 
.end
.HLL "nqp"
.namespace []
.sub "qastnode" :subid("cuid_19_1431289885.65252") :anon :lex :outer("cuid_127_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 430
    .param pmc __lowered_lex_318 
    .param pmc __lowered_lex_319 
    .param pmc __lowered_lex_320 
    .param pmc __lowered_lex_321 
    .local pmc __lowered_lex_322 
.annotate 'line', 431
    $P5001 = "&dentin"()
    set __lowered_lex_322, $P5001
    find_lex $P5002, "$nfadeb"
    unless $P5002 goto if423_end818 
.annotate 'line', 432
    set $S5005, __lowered_lex_322
    concat $S5004, $S5005, " qastnode "
    set $S5006, __lowered_lex_320
    concat $S5003, $S5004, $S5006
    concat $S5002, $S5003, " -> "
    set $S5007, __lowered_lex_321
    concat $S5001, $S5002, $S5007
    $P5003 = "&note"($S5001)
  if423_end818:
.annotate 'line', 433
    $P5004 = __lowered_lex_319."subtype"()
    set $S5008, $P5004
    iseq $I5001, $S5008, "zerowidth"
    set $I5003, $I5001
    if $I5001 goto unless425_end822 
    $P5005 = __lowered_lex_319."subtype"()
    set $S5009, $P5005
    iseq $I5002, $S5009, "declarative"
    set $I5003, $I5002
  unless425_end822:
    unless $I5003 goto if424_else819 
.annotate 'line', 434
    nqp_decontainerize $P5006, __lowered_lex_318
    find_lex $P5007, "$EDGE_EPSILON"
    $P5008 = $P5006."addedge"(__lowered_lex_320, __lowered_lex_321, $P5007, 0)
    set $P5011, $P5008
    goto if424_end820
  if424_else819:
.annotate 'line', 435
    nqp_decontainerize $P5009, __lowered_lex_318
    $P5010 = $P5009."fate"(__lowered_lex_319, __lowered_lex_320, __lowered_lex_321)
    set $P5011, $P5010
  if424_end820:
    $P5012 = "&dentout"($P5011)
    .return ($P5012) 
.end
.HLL "nqp"
.namespace []
.sub "subcapture" :subid("cuid_20_1431289885.65252") :anon :lex :outer("cuid_127_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 438
    .param pmc __lowered_lex_323 
    .param pmc __lowered_lex_324 
    .param pmc __lowered_lex_325 
    .param pmc __lowered_lex_326 
    .local pmc __lowered_lex_327 
    .local pmc fb_tmp_88 
.annotate 'line', 439
    $P5001 = "&dentin"()
    set __lowered_lex_327, $P5001
    find_lex $P5002, "$nfadeb"
    unless $P5002 goto if426_end824 
.annotate 'line', 440
    set $S5005, __lowered_lex_327
    concat $S5004, $S5005, " subcapture "
    set $S5006, __lowered_lex_325
    concat $S5003, $S5004, $S5006
    concat $S5002, $S5003, " -> "
    set $S5007, __lowered_lex_326
    concat $S5001, $S5002, $S5007
    $P5003 = "&note"($S5001)
  if426_end824:
.annotate 'line', 441
    nqp_decontainerize $P5004, __lowered_lex_323
    set fb_tmp_88, __lowered_lex_324
    repr_defined $I5001, fb_tmp_88
    unless $I5001 goto if427_else825 
    set $P5005, fb_tmp_88[0]
    set $P5007, $P5005
    goto if427_end826
  if427_else825:
    null $P5006
    set $P5007, $P5006
  if427_end826:
    unless_null $P5007, vivi_428827
    nqp_get_sc_object $P5008, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5007, $P5008
  vivi_428827:
    $P5009 = $P5004."regex_nfa"($P5007, __lowered_lex_325, __lowered_lex_326)
    $P5010 = "&dentout"($P5009)
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "save" :subid("cuid_21_1431289885.65252") :anon :lex :outer("cuid_127_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 444
    .param pmc __lowered_lex_328 
    .param pmc __lowered_lex_329 :named("non_empty") :optional 
    .param int haz_param_12 :opt_flag 
    .local pmc __lowered_lex_330 
    if haz_param_12, default836
    nqp_get_sc_object $P5015, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_329, $P5015
  default836:
    root_new $P101, ['parrot';'Continuation']
    set_label $P101, lexotic_828
    .lex "RETURN", $P101
.annotate 'line', 445
    $P5001 = "&dentin"()
    set __lowered_lex_330, $P5001
    find_lex $P5002, "$nfadeb"
    unless $P5002 goto if429_end831 
.annotate 'line', 446
    set $S5002, __lowered_lex_330
    concat $S5001, $S5002, " save"
    $P5003 = "&note"($S5001)
  if429_end831:
    nqp_decontainerize $P5004, __lowered_lex_328
    nqp_get_sc_object $P5005, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 3
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!edges", 1
    if $P5006 goto unless430_end833 
.annotate 'line', 447
    if __lowered_lex_329 goto unless431_end835 
    $P5007 = "RETURN"(0)
  unless431_end835:
.annotate 'line', 449
    nqp_decontainerize $P5008, __lowered_lex_328
    find_lex $P5009, "$EDGE_FATE"
    $P5010 = $P5008."addedge"(1, 0, $P5009, 0, 1 :named("newedge"))
  unless430_end833:
.annotate 'line', 451
    nqp_decontainerize $P5011, __lowered_lex_328
    nqp_get_sc_object $P5012, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 3
    repr_get_attr_obj $P5013, $P5011, $P5012, "$!states", 0
    $P5014 = "&dentout"($P5013)
    goto lexotic_829
  lexotic_828:
    .get_results ($P5014)
  lexotic_829:
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "mergesubrule" :subid("cuid_22_1431289885.65252") :anon :lex :outer("cuid_127_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 454
    .param pmc __lowered_lex_345 
    .param pmc __lowered_lex_346 
    .param pmc __lowered_lex_347 
    .param pmc __lowered_lex_348 
    .param pmc _lex_param_0 
    .param pmc __lowered_lex_349 
    .param pmc __lowered_lex_350 :optional 
    .param int haz_param_13 :opt_flag 
    .const 'Sub' $P5101 = 'cuid_130_1431289885.65252' 
    capture_lex $P5101 
    .const 'Sub' $P5101 = 'cuid_131_1431289885.65252' 
    capture_lex $P5101 
    .lex "$err", $P101 
    .lex "$cursor", _lex_param_0 
    .local pmc __lowered_lex_351 
    .local pmc __lowered_lex_352 
    .local pmc __lowered_lex_353 
    .local pmc __lowered_lex_354 
    .local pmc __lowered_lex_355 
    .local pmc __lowered_lex_332 
    .local pmc __lowered_lex_333 
    .local int __lowered_lex_334 
    .local pmc lowered_for_it__8 
    .local pmc fb_tmp_89 
    .local pmc __lowered_lex_331 
    .local int __lowered_lex_342 
    .local int __lowered_lex_343 
    .local int __lowered_lex_344 
    .local pmc __lowered_lex_335 
    .local pmc fb_tmp_90 
    .local pmc lowered_for_it__9 
    .local pmc fb_tmp_91 
    .local pmc __lowered_lex_336 
    .local pmc fb_tmp_92 
    if haz_param_13, default933
    new $P5100, 'Hash'
    set __lowered_lex_350, $P5100
  default933:
    new $P5001, 'QRPA'
    set __lowered_lex_353, $P5001
    nqp_get_sc_object $P5002, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_354, $P5002
    nqp_get_sc_object $P5003, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_355, $P5003
.annotate 'line', 455
    $P5004 = "&dentin"()
    set __lowered_lex_351, $P5004
    repr_clone $P5005, __lowered_lex_350
    set __lowered_lex_352, $P5005
    getinterp $P5006
    $P5007 = $P5006."stderr_handle"()
    set $P101, $P5007
    nqp_get_sc_object $P5008, "69262D203AA461F498C95CCF7FF3EA8AC3EE1FD5-1431289882.84207", 103
    type_check $I5001, __lowered_lex_349, $P5008
    unless $I5001 goto if432_else837 
.annotate 'line', 461
.annotate 'line', 462
    $P5009 = __lowered_lex_349."ann"("coderef")
    set __lowered_lex_354, $P5009
.annotate 'line', 463
    $P5010 = __lowered_lex_354."name"()
    set __lowered_lex_355, $P5010
    find_lex $P5011, "$nfadeb"
    unless $P5011 goto if433_end840 
.annotate 'line', 464
    set $S5009, __lowered_lex_351
    concat $S5008, $S5009, " mergesubrule "
    set $S5010, __lowered_lex_355
    concat $S5007, $S5008, $S5010
    concat $S5006, $S5007, " start "
    set $S5011, __lowered_lex_346
    concat $S5005, $S5006, $S5011
    concat $S5004, $S5005, " to "
    set $S5012, __lowered_lex_347
    concat $S5003, $S5004, $S5012
    concat $S5002, $S5003, " fate "
    set $S5013, __lowered_lex_348
    concat $S5001, $S5002, $S5013
    $P5012 = "&note"($S5001)
  if433_end840:
    set $S5014, __lowered_lex_355
    exists $I5003, __lowered_lex_352[$S5014]
    not $I5002, $I5003
    unless $I5002 goto if434_else841 
.annotate 'line', 465
    can $I5004, __lowered_lex_354, "NFA"
    unless $I5004 goto if435_end844 
.annotate 'line', 466
.annotate 'line', 467
    $P5013 = __lowered_lex_354."NFA"()
    set __lowered_lex_353, $P5013
    isnull $I5005, __lowered_lex_353
    box $P5016, $I5005
    set $P5015, $P5016
    unless $I5005 goto if436_end846 
    new $P5014, 'QRPA'
    set __lowered_lex_353, $P5014
    set $P5015, __lowered_lex_353
  if436_end846:
  if435_end844:
    set $S5015, __lowered_lex_355
    box $P5017, 1
    set __lowered_lex_352[$S5015], $P5017
    set $P5021, $P5017
    goto if434_end842
  if434_else841:
.annotate 'line', 472
    find_lex $P5018, "$nfadeb"
    set $P5020, $P5018
    unless $P5018 goto if437_end848 
    set $S5019, __lowered_lex_351
    concat $S5018, $S5019, " ...skipping "
    set $S5020, __lowered_lex_355
    concat $S5017, $S5018, $S5020
    concat $S5016, $S5017, " to avoid left recursion\n"
    $P5019 = $P101."print"($S5016)
    set $P5020, $P5019
  if437_end848:
    set $P5021, $P5020
  if434_end842:
    goto if432_end838
  if432_else837:
    set $S5021, __lowered_lex_349
    can $I5006, _lex_param_0, $S5021
    box $P5056, $I5006
    set $P5055, $P5056
    unless $I5006 goto if438_end850 
.annotate 'line', 476
    find_lex $P5022, "$nfadeb"
    unless $P5022 goto if439_end852 
    set $S5031, __lowered_lex_351
    concat $S5030, $S5031, " mergesubrule "
    set $S5032, __lowered_lex_349
    concat $S5029, $S5030, $S5032
    concat $S5028, $S5029, " start "
    set $S5033, __lowered_lex_346
    concat $S5027, $S5028, $S5033
    concat $S5026, $S5027, " to "
    set $S5034, __lowered_lex_347
    concat $S5025, $S5026, $S5034
    concat $S5024, $S5025, " fate "
    set $S5035, __lowered_lex_348
    concat $S5023, $S5024, $S5035
    concat $S5022, $S5023, "\n"
    $P5023 = $P101."print"($S5022)
  if439_end852:
    set __lowered_lex_355, __lowered_lex_349
    set $S5036, __lowered_lex_349
    exists $I5008, __lowered_lex_352[$S5036]
    not $I5007, $I5008
    unless $I5007 goto if440_else853 
.annotate 'line', 479
.annotate 'line', 480
    get_how $P5024, _lex_param_0
    $P5025 = $P5024."find_method"(_lex_param_0, __lowered_lex_349, 1 :named("no_trace"))
    set __lowered_lex_354, $P5025
    can $I5009, __lowered_lex_354, "NFA"
    unless $I5009 goto if441_end856 
.annotate 'line', 481
.annotate 'line', 482
    $P5026 = __lowered_lex_354."NFA"()
    set __lowered_lex_353, $P5026
    isnull $I5010, __lowered_lex_353
    box $P5029, $I5010
    set $P5028, $P5029
    unless $I5010 goto if442_end858 
    new $P5027, 'QRPA'
    set __lowered_lex_353, $P5027
    set $P5028, __lowered_lex_353
  if442_end858:
  if441_end856:
    isfalse $I5011, __lowered_lex_353
    unless $I5011 goto if443_end860 
.annotate 'line', 485
.annotate 'line', 488
    get_how $P5030, _lex_param_0
    .const 'Sub' $P5032 = 'cuid_130_1431289885.65252' 
    capture_lex $P5032
    newclosure $P5031, $P5032
    $P5033 = $P5030."cache"(_lex_param_0, "!protoregex_table", $P5031)
    set __lowered_lex_332, $P5033
.annotate 'line', 489
    nqp_get_sc_object $P5034, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 3
    $P5035 = $P5034."new"()
    set __lowered_lex_333, $P5035
    set __lowered_lex_334, 0
    set $S5037, __lowered_lex_349
    exists $I5012, __lowered_lex_332[$S5037]
    unless $I5012 goto if444_end862 
.annotate 'line', 491
    set fb_tmp_89, __lowered_lex_332
    repr_defined $I5013, fb_tmp_89
    unless $I5013 goto if445_else863 
    set $S5038, __lowered_lex_349
    set $P5037, fb_tmp_89[$S5038]
    set $P5039, $P5037
    goto if445_end864
  if445_else863:
    null $P5038
    set $P5039, $P5038
  if445_end864:
    unless_null $P5039, vivi_446865
    nqp_get_sc_object $P5040, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5039, $P5040
  vivi_446865:
    iter $P5036, $P5039
    set lowered_for_it__8, $P5036
    new $P5044, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5044, while447_handlers869
    push_eh $P5044
  while447_test866:
    set $P5043, lowered_for_it__8
    unless lowered_for_it__8 goto while447_done870 
  while447_redo868:
.annotate 'line', 492
    shift $P5041, lowered_for_it__8
    set __lowered_lex_331, $P5041
.annotate 'line', 493
    find_lex $P5042, "$EDGE_SUBRULE"
    __lowered_lex_333."addedge"(1, 0, $P5042, __lowered_lex_331)
    set __lowered_lex_334, 1
    box $P5045, __lowered_lex_334
    set $P5043, $P5045
    goto while447_test866 
  while447_handlers869:
    .get_results ($P5044)
    pop_upto_eh $P5044
    getattribute $P5046, $P5044, 'type'
    eq $P5046, .CONTROL_LOOP_NEXT, while447_test866
    eq $P5046, .CONTROL_LOOP_REDO, while447_redo868
  while447_done870:
    pop_eh 
  if444_end862:
    box $P5049, __lowered_lex_334
    set $P5048, $P5049
    unless __lowered_lex_334 goto if448_end872 
.annotate 'line', 497
    $P5047 = __lowered_lex_333."states"()
    set __lowered_lex_353, $P5047
    set $P5048, __lowered_lex_353
  if448_end872:
  if443_end860:
    set $S5039, __lowered_lex_349
    box $P5050, 1
    set __lowered_lex_352[$S5039], $P5050
    set $P5054, $P5050
    goto if440_end854
  if440_else853:
.annotate 'line', 501
    find_lex $P5051, "$nfadeb"
    set $P5053, $P5051
    unless $P5051 goto if449_end874 
    set $S5043, __lowered_lex_351
    concat $S5042, $S5043, " ...skipping "
    set $S5044, __lowered_lex_349
    concat $S5041, $S5042, $S5044
    concat $S5040, $S5041, " to avoid left recursion\n"
    $P5052 = $P101."print"($S5040)
    set $P5053, $P5052
  if449_end874:
    set $P5054, $P5053
  if440_end854:
    set $P5055, $P5054
  if438_end850:
  if432_end838:
    find_lex $P5057, "$nfadeb"
    unless $P5057 goto if450_end876 
.annotate 'line', 505
    set __lowered_lex_342, 1
    set $N5001, __lowered_lex_353
    set $I5014, $N5001
    set __lowered_lex_343, $I5014
    set __lowered_lex_344, 0
  while451_test877:
    islt $I5015, __lowered_lex_342, __lowered_lex_343
    box $P5064, $I5015
    set $P5063, $P5064
    unless $I5015 goto while451_done881 
  while451_redo879:
.annotate 'line', 509
    set fb_tmp_90, __lowered_lex_353
    repr_defined $I5016, fb_tmp_90
    unless $I5016 goto if452_else882 
    set $P5058, fb_tmp_90[__lowered_lex_342]
    set $P5060, $P5058
    goto if452_end883
  if452_else882:
    null $P5059
    set $P5060, $P5059
  if452_end883:
    unless_null $P5060, vivi_453884
    nqp_get_sc_object $P5061, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5060, $P5061
  vivi_453884:
    set __lowered_lex_335, $P5060
    set $N5002, __lowered_lex_335
    set $N5003, 0
    iseq $I5017, $N5002, $N5003
    unless $I5017 goto if454_end886 
.annotate 'line', 511
    set $S5048, __lowered_lex_351
    concat $S5047, $S5048, " ...Bad at "
    set $S5049, __lowered_lex_342
    concat $S5046, $S5047, $S5049
    concat $S5045, $S5046, ":\n"
    $P5062 = $P101."print"($S5045)
    add $I5018, __lowered_lex_344, 1
    set __lowered_lex_344, $I5018
  if454_end886:
    add $I5019, __lowered_lex_342, 1
    set __lowered_lex_342, $I5019
    box $P5065, __lowered_lex_342
    set $P5063, $P5065
    goto while451_test877 
  while451_done881:
    isgt $I5020, __lowered_lex_344, 0
    box $P5096, $I5020
    set $P5095, $P5096
    unless $I5020 goto if455_end888 
.annotate 'line', 517
    set $S5055, __lowered_lex_351
    concat $S5054, $S5055, " ...attempt to merge "
    set $S5056, __lowered_lex_344
    concat $S5053, $S5054, $S5056
    concat $S5052, $S5053, " empty states from "
    set $S5057, __lowered_lex_355
    concat $S5051, $S5052, $S5057
    concat $S5050, $S5051, "\n"
    $P5066 = $P101."print"($S5050)
    $P5067 = $P101."print"("Fates:\n")
    set fb_tmp_91, __lowered_lex_353
    repr_defined $I5021, fb_tmp_91
    unless $I5021 goto if456_else889 
    set $P5069, fb_tmp_91[0]
    set $P5071, $P5069
    goto if456_end890
  if456_else889:
    null $P5070
    set $P5071, $P5070
  if456_end890:
    unless_null $P5071, vivi_457891
    nqp_get_sc_object $P5072, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5071, $P5072
  vivi_457891:
    iter $P5068, $P5071
    set lowered_for_it__9, $P5068
    new $P5076, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5076, while458_handlers895
    push_eh $P5076
  while458_test892:
    set $P5075, lowered_for_it__9
    unless lowered_for_it__9 goto while458_done896 
  while458_redo894:
.annotate 'line', 520
    shift $P5073, lowered_for_it__9
    set __lowered_lex_336, $P5073
    set $S5060, __lowered_lex_336
    concat $S5059, "\t", $S5060
    concat $S5058, $S5059, "\n"
    $P5074 = $P101."print"($S5058)
    set $P5075, $P5074
    goto while458_test892 
  while458_handlers895:
    .get_results ($P5076)
    pop_upto_eh $P5076
    getattribute $P5077, $P5076, 'type'
    eq $P5077, .CONTROL_LOOP_NEXT, while458_test892
    eq $P5077, .CONTROL_LOOP_REDO, while458_redo894
  while458_done896:
    pop_eh 
    $P5078 = $P101."print"("\n")
    set __lowered_lex_342, 1
  while459_test897:
    islt $I5022, __lowered_lex_342, __lowered_lex_343
    box $P5093, $I5022
    set $P5092, $P5093
    unless $I5022 goto while459_done901 
  while459_redo899:
.annotate 'line', 525
    set $S5062, __lowered_lex_342
    concat $S5061, $S5062, ":"
    $P5079 = $P101."print"($S5061)
    set fb_tmp_92, __lowered_lex_353
    repr_defined $I5023, fb_tmp_92
    unless $I5023 goto if460_else902 
    set $P5083, fb_tmp_92[__lowered_lex_342]
    set $P5085, $P5083
    goto if460_end903
  if460_else902:
    null $P5084
    set $P5085, $P5084
  if460_end903:
    unless_null $P5085, vivi_461904
    nqp_get_sc_object $P5086, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5085, $P5086
  vivi_461904:
    set $P5080, $P5085
    iter $P5082, $P5085
  for_next930:
    unless $P5082, for_done932
    shift $P5088, $P5082
    shift $P5089, $P5082
    shift $P5090, $P5082
  for_redo931:
    .const 'Sub' $P5087 = 'cuid_131_1431289885.65252' 
    capture_lex $P5087
    $P5080 = $P5087($P5088, $P5089, $P5090)
    goto for_next930
  for_done932:
    $P5091 = $P101."print"("\n")
    add $I5024, __lowered_lex_342, 1
    set __lowered_lex_342, $I5024
    box $P5094, __lowered_lex_342
    set $P5092, $P5094
    goto while459_test897 
  while459_done901:
    set $P5095, $P5092
  if455_end888:
  if450_end876:
.annotate 'line', 554
    nqp_decontainerize $P5097, __lowered_lex_345
    $P5098 = $P5097."mergesubstates"(__lowered_lex_346, __lowered_lex_347, __lowered_lex_348, __lowered_lex_353, _lex_param_0, __lowered_lex_352)
    $P5099 = "&dentout"($P5098)
    .return ($P5099) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_130_1431289885.65252") :anon :lex :outer("cuid_22_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 488

    find_lex $P5001, "$cursor"
    $P5002 = $P5001."!protoregex_table"()
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_131_1431289885.65252") :anon :lex :outer("cuid_22_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 527
    .param pmc __lowered_lex_337 
    .param pmc __lowered_lex_338 
    .param pmc __lowered_lex_339 
    .local pmc __lowered_lex_340 
    .local pmc __lowered_lex_341 
    .local pmc fb_tmp_93 
    .local pmc fb_tmp_94 
    set $I5002, __lowered_lex_337
    band $I5001, $I5002, 255
    box $P5001, $I5001
    set __lowered_lex_340, $P5001
    find_lex $P5002, "$ACTIONS"
    set fb_tmp_93, $P5002
    repr_defined $I5003, fb_tmp_93
    unless $I5003 goto if462_else905 
    set $I5004, __lowered_lex_340
    set $P5003, fb_tmp_93[$I5004]
    set $P5005, $P5003
    goto if462_end906
  if462_else905:
    null $P5004
    set $P5005, $P5004
  if462_end906:
    unless_null $P5005, vivi_463907
    nqp_get_sc_object $P5006, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5005, $P5006
  vivi_463907:
    set __lowered_lex_341, $P5005
    set $N5001, __lowered_lex_340
    find_lex $P5007, "$EDGE_CODEPOINT"
    set $N5002, $P5007
    iseq $I5005, $N5001, $N5002
    set $I5007, $I5005
    if $I5005 goto unless465_end911 
    set $N5003, __lowered_lex_340
    find_lex $P5008, "$EDGE_CODEPOINT_LL"
    set $N5004, $P5008
    iseq $I5006, $N5003, $N5004
    set $I5007, $I5006
  unless465_end911:
    unless $I5007 goto if464_else908 
.annotate 'line', 530
    find_lex $P5009, "$err"
    set $S5007, __lowered_lex_339
    concat $S5006, "\t", $S5007
    concat $S5005, $S5006, " "
    set $S5008, __lowered_lex_341
    concat $S5004, $S5005, $S5008
    concat $S5003, $S5004, " "
    set $I5008, __lowered_lex_338
    chr $S5009, $I5008
    concat $S5002, $S5003, $S5009
    concat $S5001, $S5002, "\n"
    $P5010 = $P5009."print"($S5001)
    set $P5040, $P5010
    goto if464_end909
  if464_else908:
    set $N5005, __lowered_lex_340
    find_lex $P5011, "$EDGE_FATE"
    set $N5006, $P5011
    iseq $I5009, $N5005, $N5006
    unless $I5009 goto if466_else912 
.annotate 'line', 533
    find_lex $P5012, "$err"
    set $S5016, __lowered_lex_339
    concat $S5015, "\t", $S5016
    concat $S5014, $S5015, " "
    set $S5017, __lowered_lex_341
    concat $S5013, $S5014, $S5017
    concat $S5012, $S5013, " "
    set $S5018, __lowered_lex_338
    concat $S5011, $S5012, $S5018
    concat $S5010, $S5011, "\n"
    $P5013 = $P5012."print"($S5010)
    set $P5039, $P5013
    goto if466_end913
  if466_else912:
    set $N5007, __lowered_lex_340
    find_lex $P5014, "$EDGE_CHARCLASS"
    set $N5008, $P5014
    iseq $I5010, $N5007, $N5008
    set $I5012, $I5010
    if $I5010 goto unless468_end917 
    set $N5009, __lowered_lex_340
    find_lex $P5015, "$EDGE_CHARCLASS_NEG"
    set $N5010, $P5015
    iseq $I5011, $N5009, $N5010
    set $I5012, $I5011
  unless468_end917:
    unless $I5012 goto if467_else914 
.annotate 'line', 536
    find_lex $P5016, "$err"
    set $S5025, __lowered_lex_339
    concat $S5024, "\t", $S5025
    concat $S5023, $S5024, " "
    set $S5026, __lowered_lex_341
    concat $S5022, $S5023, $S5026
    concat $S5021, $S5022, " "
    set $S5027, __lowered_lex_338
    concat $S5020, $S5021, $S5027
    concat $S5019, $S5020, "\n"
    $P5017 = $P5016."print"($S5019)
    set $P5038, $P5017
    goto if467_end915
  if467_else914:
    set $N5011, __lowered_lex_340
    find_lex $P5018, "$EDGE_CHARLIST"
    set $N5012, $P5018
    iseq $I5013, $N5011, $N5012
    set $I5015, $I5013
    if $I5013 goto unless470_end921 
    set $N5013, __lowered_lex_340
    find_lex $P5019, "$EDGE_CHARLIST_NEG"
    set $N5014, $P5019
    iseq $I5014, $N5013, $N5014
    set $I5015, $I5014
  unless470_end921:
    unless $I5015 goto if469_else918 
.annotate 'line', 539
    find_lex $P5020, "$err"
    set $S5034, __lowered_lex_339
    concat $S5033, "\t", $S5034
    concat $S5032, $S5033, " "
    set $S5035, __lowered_lex_341
    concat $S5031, $S5032, $S5035
    concat $S5030, $S5031, " "
    set $S5036, __lowered_lex_338
    concat $S5029, $S5030, $S5036
    concat $S5028, $S5029, "\n"
    $P5021 = $P5020."print"($S5028)
    set $P5037, $P5021
    goto if469_end919
  if469_else918:
    set $N5015, __lowered_lex_340
    find_lex $P5022, "$EDGE_SUBRULE"
    set $N5016, $P5022
    iseq $I5016, $N5015, $N5016
    set $I5019, $I5016
    unless $I5016 goto if472_end925 
    find_lex $P5024, "$?PACKAGE"
    get_who $P5023, $P5024
    set fb_tmp_94, $P5023
    repr_defined $I5018, fb_tmp_94
    unless $I5018 goto if473_else926 
    set $P5025, fb_tmp_94["BOOTStr"]
    set $P5027, $P5025
    goto if473_end927
  if473_else926:
    null $P5026
    set $P5027, $P5026
  if473_end927:
    unless_null $P5027, vivi_475929
    nqp_get_sc_object $P5030, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 0
    get_who $P5029, $P5030
    set $P5028, $P5029["BOOTStr"]
    unless_null $P5028, vivi_474928
    nqp_get_sc_object $P5031, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5028, $P5031
  vivi_474928:
    set $P5027, $P5028
  vivi_475929:
    type_check $I5017, __lowered_lex_338, $P5027
    set $I5019, $I5017
  if472_end925:
    unless $I5019 goto if471_else922 
.annotate 'line', 542
    find_lex $P5032, "$err"
    set $S5043, __lowered_lex_339
    concat $S5042, "\t", $S5043
    concat $S5041, $S5042, " "
    set $S5044, __lowered_lex_341
    concat $S5040, $S5041, $S5044
    concat $S5039, $S5040, " "
    set $S5045, __lowered_lex_338
    concat $S5038, $S5039, $S5045
    concat $S5037, $S5038, "\n"
    $P5033 = $P5032."print"($S5037)
    set $P5036, $P5033
    goto if471_end923
  if471_else922:
.annotate 'line', 545
    find_lex $P5034, "$err"
    set $S5050, __lowered_lex_339
    concat $S5049, "\t", $S5050
    concat $S5048, $S5049, " "
    set $S5051, __lowered_lex_341
    concat $S5047, $S5048, $S5051
    concat $S5046, $S5047, "\n"
    $P5035 = $P5034."print"($S5046)
    set $P5036, $P5035
  if471_end923:
    set $P5037, $P5036
  if469_end919:
    set $P5038, $P5037
  if467_end915:
    set $P5039, $P5038
  if466_end913:
    set $P5040, $P5039
  if464_end909:
    .return ($P5040) 
.end
.HLL "nqp"
.namespace []
.sub "mergesubstates" :subid("cuid_23_1431289885.65252") :anon :lex :outer("cuid_127_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 557
    .param pmc __lowered_lex_364 
    .param pmc __lowered_lex_365 
    .param pmc __lowered_lex_366 
    .param pmc __lowered_lex_367 
    .param pmc __lowered_lex_368 
    .param pmc __lowered_lex_369 
    .param pmc __lowered_lex_370 :optional 
    .param int haz_param_14 :opt_flag 
    .local pmc __lowered_lex_371 
    .local pmc fb_tmp_95 
    .local int __lowered_lex_361 
    .local int __lowered_lex_362 
    .local int __lowered_lex_363 
    .local pmc __lowered_lex_358 
    .local int __lowered_lex_359 
    .local int __lowered_lex_360 
    .local pmc fb_tmp_96 
    .local pmc fb_tmp_97 
    .local pmc fb_tmp_98 
    .local pmc fb_tmp_99 
    .local pmc __lowered_lex_356 
    .local pmc __lowered_lex_357 
    .local pmc fb_tmp_100 
    .local pmc fb_tmp_101 
    .local pmc fb_tmp_102 
    .local pmc fb_tmp_103 
    .local pmc fb_tmp_104 
    if haz_param_14, default995
    new $P5100, 'Hash'
    set __lowered_lex_370, $P5100
  default995:
.annotate 'line', 558
    $P5001 = "&dentin"()
    set __lowered_lex_371, $P5001
    find_lex $P5002, "$nfadeb"
    unless $P5002 goto if476_end935 
.annotate 'line', 559
    set $S5007, __lowered_lex_371
    concat $S5006, $S5007, " mergesubstates start "
    set $S5008, __lowered_lex_365
    concat $S5005, $S5006, $S5008
    concat $S5004, $S5005, " to "
    set $S5009, __lowered_lex_366
    concat $S5003, $S5004, $S5009
    concat $S5002, $S5003, " fate "
    set $S5010, __lowered_lex_367
    concat $S5001, $S5002, $S5010
    $P5003 = "&note"($S5001)
  if476_end935:
    nqp_decontainerize $P5004, __lowered_lex_364
    nqp_get_sc_object $P5005, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 3
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!states", 0
    set fb_tmp_95, $P5006
    repr_defined $I5001, fb_tmp_95
    unless $I5001 goto if477_else936 
    set $P5007, fb_tmp_95[0]
    set $P5009, $P5007
    goto if477_end937
  if477_else936:
    null $P5008
    set $P5009, $P5008
  if477_end937:
    unless_null $P5009, vivi_478938
    nqp_get_sc_object $P5010, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5009, $P5010
  vivi_478938:
    set $I5002, __lowered_lex_367
    set $P5009[$I5002], __lowered_lex_367
    unless __lowered_lex_368 goto if479_else939 
.annotate 'line', 561
.annotate 'line', 563
    nqp_decontainerize $P5011, __lowered_lex_364
    $P5012 = $P5011."addstate"()
    set $I5003, $P5012
    set __lowered_lex_361, $I5003
    repr_clone $P5013, __lowered_lex_368
    set __lowered_lex_368, $P5013
    shift $P5014, __lowered_lex_368
    new $P5021, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5021, while480_handlers944
    push_eh $P5021
  while480_test941:
    set $P5020, __lowered_lex_368
    unless __lowered_lex_368 goto while480_done945 
  while480_redo943:
    nqp_decontainerize $P5015, __lowered_lex_364
    nqp_get_sc_object $P5016, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 3
    repr_get_attr_obj $P5017, $P5015, $P5016, "$!states", 0
    shift $P5019, __lowered_lex_368
    repr_clone $P5018, $P5019
    push $P5017, $P5018
    set $P5020, $P5017
    goto while480_test941 
  while480_handlers944:
    .get_results ($P5021)
    pop_upto_eh $P5021
    getattribute $P5022, $P5021, 'type'
    eq $P5022, .CONTROL_LOOP_NEXT, while480_test941
    eq $P5022, .CONTROL_LOOP_REDO, while480_redo943
  while480_done945:
    pop_eh 
    nqp_decontainerize $P5023, __lowered_lex_364
    nqp_get_sc_object $P5024, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 3
    repr_get_attr_obj $P5025, $P5023, $P5024, "$!states", 0
    elements $I5004, $P5025
    set __lowered_lex_362, $I5004
    set __lowered_lex_363, __lowered_lex_361
  while481_test946:
    islt $I5005, __lowered_lex_363, __lowered_lex_362
    box $P5083, $I5005
    set $P5082, $P5083
    unless $I5005 goto while481_done950 
  while481_redo948:
.annotate 'line', 577
    nqp_decontainerize $P5026, __lowered_lex_364
    nqp_get_sc_object $P5027, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 3
    repr_get_attr_obj $P5028, $P5026, $P5027, "$!states", 0
    set fb_tmp_96, $P5028
    repr_defined $I5006, fb_tmp_96
    unless $I5006 goto if482_else951 
    set $P5029, fb_tmp_96[__lowered_lex_363]
    set $P5031, $P5029
    goto if482_end952
  if482_else951:
    null $P5030
    set $P5031, $P5030
  if482_end952:
    unless_null $P5031, vivi_483953
    nqp_get_sc_object $P5032, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5031, $P5032
  vivi_483953:
    set __lowered_lex_358, $P5031
    set __lowered_lex_359, 0
    elements $I5007, __lowered_lex_358
    set __lowered_lex_360, $I5007
  while484_test954:
    islt $I5008, __lowered_lex_359, __lowered_lex_360
    box $P5080, $I5008
    set $P5079, $P5080
    unless $I5008 goto while484_done958 
  while484_redo956:
.annotate 'line', 581
    add $I5009, __lowered_lex_359, 2
    set fb_tmp_97, __lowered_lex_358
    repr_defined $I5010, fb_tmp_97
    unless $I5010 goto if485_else959 
    add $I5011, __lowered_lex_359, 2
    set $P5033, fb_tmp_97[$I5011]
    set $P5035, $P5033
    goto if485_end960
  if485_else959:
    null $P5034
    set $P5035, $P5034
  if485_end960:
    unless_null $P5035, vivi_486961
    nqp_get_sc_object $P5036, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5035, $P5036
  vivi_486961:
    set $N5002, $P5035
    set $N5003, __lowered_lex_361
    add $N5001, $N5002, $N5003
    box $P5037, $N5001
    set __lowered_lex_358[$I5009], $P5037
    set fb_tmp_98, __lowered_lex_358
    repr_defined $I5013, fb_tmp_98
    unless $I5013 goto if488_else964 
    set $P5038, fb_tmp_98[__lowered_lex_359]
    set $P5040, $P5038
    goto if488_end965
  if488_else964:
    null $P5039
    set $P5040, $P5039
  if488_end965:
    unless_null $P5040, vivi_489966
    nqp_get_sc_object $P5041, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5040, $P5041
  vivi_489966:
    set $N5004, $P5040
    find_lex $P5042, "$EDGE_FATE"
    set $N5005, $P5042
    iseq $I5012, $N5004, $N5005
    unless $I5012 goto if487_else962 
.annotate 'line', 583
    set $N5006, __lowered_lex_366
    set $N5007, 0
    isgt $I5014, $N5006, $N5007
    unless $I5014 goto if490_else967 
.annotate 'line', 584
    add $I5015, __lowered_lex_359, 1
    set __lowered_lex_358[$I5015], __lowered_lex_367
    set $P5044, __lowered_lex_367
    goto if490_end968
  if490_else967:
.annotate 'line', 587
    find_lex $P5043, "$EDGE_EPSILON"
    set __lowered_lex_358[__lowered_lex_359], $P5043
    set $P5044, $P5043
  if490_end968:
    goto if487_end963
  if487_else962:
    set fb_tmp_99, __lowered_lex_358
    repr_defined $I5017, fb_tmp_99
    unless $I5017 goto if492_else971 
    set $P5045, fb_tmp_99[__lowered_lex_359]
    set $P5047, $P5045
    goto if492_end972
  if492_else971:
    null $P5046
    set $P5047, $P5046
  if492_end972:
    unless_null $P5047, vivi_493973
    nqp_get_sc_object $P5048, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5047, $P5048
  vivi_493973:
    set $N5008, $P5047
    find_lex $P5049, "$EDGE_SUBRULE"
    set $N5009, $P5049
    iseq $I5016, $N5008, $N5009
    unless $I5016 goto if491_else969 
.annotate 'line', 591
    set fb_tmp_100, __lowered_lex_358
    repr_defined $I5018, fb_tmp_100
    unless $I5018 goto if494_else974 
    add $I5019, __lowered_lex_359, 2
    set $P5050, fb_tmp_100[$I5019]
    set $P5052, $P5050
    goto if494_end975
  if494_else974:
    null $P5051
    set $P5052, $P5051
  if494_end975:
    unless_null $P5052, vivi_495976
    nqp_get_sc_object $P5053, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5052, $P5053
  vivi_495976:
    set __lowered_lex_356, $P5052
    set fb_tmp_101, __lowered_lex_358
    repr_defined $I5020, fb_tmp_101
    unless $I5020 goto if496_else977 
    add $I5021, __lowered_lex_359, 1
    set $P5054, fb_tmp_101[$I5021]
    set $P5056, $P5054
    goto if496_end978
  if496_else977:
    null $P5055
    set $P5056, $P5055
  if496_end978:
    unless_null $P5056, vivi_497979
    nqp_get_sc_object $P5057, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5056, $P5057
  vivi_497979:
    set __lowered_lex_357, $P5056
    new $P5058, 'QRPA'
    splice __lowered_lex_358, $P5058, __lowered_lex_359, 3
.annotate 'line', 595
    nqp_decontainerize $P5059, __lowered_lex_364
    $P5059."mergesubrule"(__lowered_lex_363, __lowered_lex_356, __lowered_lex_367, __lowered_lex_369, __lowered_lex_357, __lowered_lex_370)
    sub $I5022, __lowered_lex_359, 3
    set __lowered_lex_359, $I5022
    sub $I5023, __lowered_lex_360, 3
    set __lowered_lex_360, $I5023
    box $P5078, __lowered_lex_360
    set $P5077, $P5078
    goto if491_end970
  if491_else969:
    set fb_tmp_102, __lowered_lex_358
    repr_defined $I5025, fb_tmp_102
    unless $I5025 goto if500_else984 
    set $P5060, fb_tmp_102[__lowered_lex_359]
    set $P5062, $P5060
    goto if500_end985
  if500_else984:
    null $P5061
    set $P5062, $P5061
  if500_end985:
    unless_null $P5062, vivi_501986
    nqp_get_sc_object $P5063, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5062, $P5063
  vivi_501986:
    set $N5010, $P5062
    find_lex $P5064, "$EDGE_CODEPOINT_LL"
    set $N5011, $P5064
    iseq $I5024, $N5010, $N5011
    set $I5028, $I5024
    if $I5024 goto unless499_end983 
    set fb_tmp_103, __lowered_lex_358
    repr_defined $I5027, fb_tmp_103
    unless $I5027 goto if502_else987 
    set $P5065, fb_tmp_103[__lowered_lex_359]
    set $P5067, $P5065
    goto if502_end988
  if502_else987:
    null $P5066
    set $P5067, $P5066
  if502_end988:
    unless_null $P5067, vivi_503989
    nqp_get_sc_object $P5068, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5067, $P5068
  vivi_503989:
    set $N5012, $P5067
    find_lex $P5069, "$EDGE_CODEPOINT_I_LL"
    set $N5013, $P5069
    iseq $I5026, $N5012, $N5013
    set $I5028, $I5026
  unless499_end983:
    box $P5076, $I5028
    set $P5075, $P5076
    unless $I5028 goto if498_end981 
.annotate 'line', 599
    set fb_tmp_104, __lowered_lex_358
    repr_defined $I5029, fb_tmp_104
    unless $I5029 goto if504_else990 
    set $P5070, fb_tmp_104[__lowered_lex_359]
    set $P5072, $P5070
    goto if504_end991
  if504_else990:
    null $P5071
    set $P5072, $P5071
  if504_end991:
    unless_null $P5072, vivi_505992
    nqp_get_sc_object $P5073, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5072, $P5073
  vivi_505992:
    set $N5016, $P5072
    set $N5018, 256
    set $N5019, __lowered_lex_367
    mul $N5017, $N5018, $N5019
    add $N5015, $N5016, $N5017
    set $N5020, 1073741824
    sub $N5014, $N5015, $N5020
    box $P5074, $N5014
    set __lowered_lex_358[__lowered_lex_359], $P5074
    set $P5075, $P5074
  if498_end981:
    set $P5077, $P5075
  if491_end970:
  if487_end963:
    add $I5030, __lowered_lex_359, 3
    set __lowered_lex_359, $I5030
    box $P5081, __lowered_lex_359
    set $P5079, $P5081
    goto while484_test954 
  while484_done958:
    add $I5031, __lowered_lex_363, 1
    set __lowered_lex_363, $I5031
    box $P5084, __lowered_lex_363
    set $P5082, $P5084
    goto while481_test946 
  while481_done950:
.annotate 'line', 609
    nqp_decontainerize $P5085, __lowered_lex_364
    add $I5032, __lowered_lex_361, 1
    find_lex $P5086, "$EDGE_EPSILON"
    $P5085."addedge"(__lowered_lex_365, $I5032, $P5086, 0)
.annotate 'line', 610
    set $N5021, __lowered_lex_366
    set $N5022, 0
    isgt $I5033, $N5021, $N5022
    unless $I5033 goto if506_else993 
.annotate 'line', 611
    nqp_decontainerize $P5087, __lowered_lex_364
    find_lex $P5088, "$EDGE_EPSILON"
    $P5089 = $P5087."addedge"(__lowered_lex_361, __lowered_lex_366, $P5088, 0)
    set $P5093, $P5089
    goto if506_end994
  if506_else993:
.annotate 'line', 612
    nqp_decontainerize $P5090, __lowered_lex_364
    find_lex $P5091, "$EDGE_FATE"
    $P5092 = $P5090."addedge"(__lowered_lex_361, 0, $P5091, __lowered_lex_367)
    set $P5093, $P5092
  if506_end994:
    $P5094 = "&dentout"($P5093)
    set $P5099, $P5094
    goto if479_end940
  if479_else939:
.annotate 'line', 614
.annotate 'line', 615
    nqp_decontainerize $P5095, __lowered_lex_364
    find_lex $P5096, "$EDGE_FATE"
    $P5097 = $P5095."addedge"(__lowered_lex_365, 0, $P5096, __lowered_lex_367)
    $P5098 = "&dentout"($P5097)
    set $P5099, $P5098
  if479_end940:
    .return ($P5099) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_132_1431289885.65252") :anon :lex :outer("cuid_127_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 620
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    nqp_get_sc_object $P5001, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "run" :subid("cuid_24_1431289885.65252") :anon :lex :outer("cuid_127_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 622
    .param pmc __lowered_lex_372 
    .param string __lowered_lex_373 
    .param int __lowered_lex_374 
    .local pmc __lowered_lex_375 
    nqp_decontainerize $P5001, __lowered_lex_372
    nqp_get_sc_object $P5002, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 3
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!nfa_object", 3
    repr_defined $I5001, $P5003
    if $I5001 goto unless507_end997 
.annotate 'line', 623
    find_lex $P5004, "$nfadeb"
    unless $P5004 goto if508_end999 
.annotate 'line', 624
    nqp_decontainerize $P5005, __lowered_lex_372
    $P5006 = $P5005."mydump"()
  if508_end999:
    nqp_disable_sc_write_barrier 
    nqp_decontainerize $P5007, __lowered_lex_372
    nqp_get_sc_object $P5008, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 3
    nqp_decontainerize $P5010, __lowered_lex_372
    nqp_get_sc_object $P5011, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 3
    repr_get_attr_obj $P5012, $P5010, $P5011, "$!states", 0
    nqp_get_sc_object $P5013, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 27
    nqp_nfa_from_statelist $P5009, $P5012, $P5013
    repr_bind_attr_obj $P5007, $P5008, "$!nfa_object", 3, $P5009
    nqp_enable_sc_write_barrier 
  unless507_end997:
    nqp_decontainerize $P5015, __lowered_lex_372
    nqp_get_sc_object $P5016, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 3
    repr_get_attr_obj $P5017, $P5015, $P5016, "$!nfa_object", 3
    nqp_nfa_run_proto $P5014, $P5017, __lowered_lex_373, __lowered_lex_374
    set __lowered_lex_375, $P5014
    .return (__lowered_lex_375) 
.end
.HLL "nqp"
.namespace []
.sub "run_alt" :subid("cuid_25_1431289885.65252") :anon :lex :outer("cuid_127_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 641
    .param pmc __lowered_lex_376 
    .param string __lowered_lex_377 
    .param int __lowered_lex_378 
    .param pmc __lowered_lex_379 
    .param pmc __lowered_lex_380 
    .param pmc __lowered_lex_381 
    .local pmc __lowered_lex_382 
    nqp_decontainerize $P5001, __lowered_lex_376
    nqp_get_sc_object $P5002, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 3
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!nfa_object", 3
    repr_defined $I5001, $P5003
    if $I5001 goto unless509_end1001 
.annotate 'line', 642
    find_lex $P5004, "$nfadeb"
    unless $P5004 goto if510_end1003 
.annotate 'line', 643
    nqp_decontainerize $P5005, __lowered_lex_376
    $P5006 = $P5005."mydump"()
  if510_end1003:
    nqp_disable_sc_write_barrier 
    nqp_decontainerize $P5007, __lowered_lex_376
    nqp_get_sc_object $P5008, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 3
    nqp_decontainerize $P5010, __lowered_lex_376
    nqp_get_sc_object $P5011, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 3
    repr_get_attr_obj $P5012, $P5010, $P5011, "$!states", 0
    nqp_get_sc_object $P5013, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 27
    nqp_nfa_from_statelist $P5009, $P5012, $P5013
    repr_bind_attr_obj $P5007, $P5008, "$!nfa_object", 3, $P5009
    nqp_enable_sc_write_barrier 
  unless509_end1001:
    nqp_decontainerize $P5014, __lowered_lex_376
    nqp_get_sc_object $P5015, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 3
    repr_get_attr_obj $P5016, $P5014, $P5015, "$!nfa_object", 3
    nqp_nfa_run_alt $P5016, __lowered_lex_377, __lowered_lex_378, __lowered_lex_379, __lowered_lex_380, __lowered_lex_381
    set __lowered_lex_382, $P5016
    .return (__lowered_lex_382) 
.end
.HLL "nqp"
.namespace []
.sub "generic" :subid("cuid_26_1431289885.65252") :anon :lex :outer("cuid_127_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 660
    .param pmc __lowered_lex_383 
    nqp_decontainerize $P5001, __lowered_lex_383
    nqp_get_sc_object $P5002, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 3
    repr_get_attr_int $I5001, $P5001, $P5002, "$!generic", 2
    .return ($I5001) 
.end
.HLL "nqp"
.namespace []
.sub "instantiate_generic" :subid("cuid_27_1431289885.65252") :anon :lex :outer("cuid_127_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 664
    .param pmc __lowered_lex_392 
    .param pmc __lowered_lex_393 
    .local pmc __lowered_lex_394 
    .local pmc __lowered_lex_395 
    .local int __lowered_lex_396 
    .local pmc lowered_for_it__10 
    .local pmc __lowered_lex_384 
    .local pmc lowered_for_it__11 
    .local pmc __lowered_lex_388 
    .local pmc __lowered_lex_389 
    .local int __lowered_lex_390 
    .local int __lowered_lex_391 
    .local pmc __lowered_lex_385 
    .local pmc __lowered_lex_386 
    .local pmc __lowered_lex_387 
    .local pmc fb_tmp_105 
    .local pmc fb_tmp_106 
    .local pmc fb_tmp_107 
    .local int tmp_4 
    new $P5001, 'QRPA'
    set __lowered_lex_395, $P5001
    nqp_decontainerize $P5003, __lowered_lex_392
    repr_instance_of $P5002, $P5003
    set __lowered_lex_394, $P5002
    nqp_decontainerize $P5005, __lowered_lex_392
    nqp_get_sc_object $P5006, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 3
    repr_get_attr_obj $P5007, $P5005, $P5006, "$!states", 0
    iter $P5004, $P5007
    set lowered_for_it__10, $P5004
    new $P5011, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5011, while511_handlers1007
    push_eh $P5011
  while511_test1004:
    set $P5010, lowered_for_it__10
    unless lowered_for_it__10 goto while511_done1008 
  while511_redo1006:
.annotate 'line', 668
    shift $P5008, lowered_for_it__10
    set __lowered_lex_384, $P5008
    repr_clone $P5009, __lowered_lex_384
    push __lowered_lex_395, $P5009
    set $P5010, __lowered_lex_395
    goto while511_test1004 
  while511_handlers1007:
    .get_results ($P5011)
    pop_upto_eh $P5011
    getattribute $P5012, $P5011, 'type'
    eq $P5012, .CONTROL_LOOP_NEXT, while511_test1004
    eq $P5012, .CONTROL_LOOP_REDO, while511_redo1006
  while511_done1008:
    pop_eh 
    nqp_get_sc_object $P5013, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 3
    setattribute __lowered_lex_394, $P5013, "$!states", __lowered_lex_395
    nqp_get_sc_object $P5014, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 3
    nqp_decontainerize $P5015, __lowered_lex_392
    nqp_get_sc_object $P5016, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 3
    repr_get_attr_obj $P5017, $P5015, $P5016, "$!edges", 1
    setattribute __lowered_lex_394, $P5014, "$!edges", $P5017
    set __lowered_lex_396, 0
    iter $P5018, __lowered_lex_395
    set lowered_for_it__11, $P5018
    new $P5048, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5048, while512_handlers1012
    push_eh $P5048
  while512_test1009:
    set $P5047, lowered_for_it__11
    unless lowered_for_it__11 goto while512_done1013 
  while512_redo1011:
.annotate 'line', 677
    shift $P5019, lowered_for_it__11
    set __lowered_lex_388, $P5019
    new $P5020, 'QRPA'
    set __lowered_lex_389, $P5020
    set __lowered_lex_390, 0
    elements $I5001, __lowered_lex_388
    set __lowered_lex_391, $I5001
  while513_test1014:
    islt $I5002, __lowered_lex_390, __lowered_lex_391
    box $P5045, $I5002
    set $P5044, $P5045
    unless $I5002 goto while513_done1018 
  while513_redo1016:
.annotate 'line', 681
    set fb_tmp_105, __lowered_lex_388
    repr_defined $I5003, fb_tmp_105
    unless $I5003 goto if514_else1019 
    set $P5021, fb_tmp_105[__lowered_lex_390]
    set $P5023, $P5021
    goto if514_end1020
  if514_else1019:
    null $P5022
    set $P5023, $P5022
  if514_end1020:
    unless_null $P5023, vivi_5151021
    nqp_get_sc_object $P5024, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5023, $P5024
  vivi_5151021:
    set __lowered_lex_385, $P5023
    set fb_tmp_106, __lowered_lex_388
    repr_defined $I5004, fb_tmp_106
    unless $I5004 goto if516_else1022 
    add $I5005, __lowered_lex_390, 1
    set $P5025, fb_tmp_106[$I5005]
    set $P5027, $P5025
    goto if516_end1023
  if516_else1022:
    null $P5026
    set $P5027, $P5026
  if516_end1023:
    unless_null $P5027, vivi_5171024
    nqp_get_sc_object $P5028, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5027, $P5028
  vivi_5171024:
    set __lowered_lex_386, $P5027
    set fb_tmp_107, __lowered_lex_388
    repr_defined $I5006, fb_tmp_107
    unless $I5006 goto if518_else1025 
    add $I5007, __lowered_lex_390, 2
    set $P5029, fb_tmp_107[$I5007]
    set $P5031, $P5029
    goto if518_end1026
  if518_else1025:
    null $P5030
    set $P5031, $P5030
  if518_end1026:
    unless_null $P5031, vivi_5191027
    nqp_get_sc_object $P5032, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5031, $P5032
  vivi_5191027:
    set __lowered_lex_387, $P5031
    set $N5001, __lowered_lex_385
    find_lex $P5033, "$EDGE_GENERIC_VAR"
    set $N5002, $P5033
    iseq $I5008, $N5001, $N5002
    unless $I5008 goto if520_end1029 
.annotate 'line', 685
    set $S5001, __lowered_lex_386
    exists $I5009, __lowered_lex_393[$S5001]
    unless $I5009 goto if521_else1030 
.annotate 'line', 686
.annotate 'line', 687
.annotate 'line', 688
    nqp_get_sc_object $P5034, "69262D203AA461F498C95CCF7FF3EA8AC3EE1FD5-1431289882.84207", 51
    set $S5002, __lowered_lex_386
    set $P5035, __lowered_lex_393[$S5002]
    $P5036 = $P5034."new"($P5035, "literal" :named("rxtype"))
    __lowered_lex_394."literal"($P5036, __lowered_lex_396, __lowered_lex_387)
    find_lex $P5037, "$EDGE_EPSILON"
    set __lowered_lex_388[__lowered_lex_390], $P5037
    add $I5010, __lowered_lex_390, 1
    box $P5038, 0
    set __lowered_lex_388[$I5010], $P5038
    add $I5011, __lowered_lex_390, 2
    box $P5039, 0
    set __lowered_lex_388[$I5011], $P5039
    set $P5043, $P5039
    goto if521_end1031
  if521_else1030:
.annotate 'line', 694
    find_lex $P5040, "$EDGE_FATE"
    set __lowered_lex_388[__lowered_lex_390], $P5040
    add $I5012, __lowered_lex_390, 1
    box $P5041, 0
    set __lowered_lex_388[$I5012], $P5041
    add $I5013, __lowered_lex_390, 2
    box $P5042, 0
    set __lowered_lex_388[$I5013], $P5042
    set $P5043, $P5042
  if521_end1031:
  if520_end1029:
    add $I5014, __lowered_lex_390, 3
    set __lowered_lex_390, $I5014
    box $P5046, __lowered_lex_390
    set $P5044, $P5046
    goto while513_test1014 
  while513_done1018:
    set tmp_4, __lowered_lex_396
    add $I5015, tmp_4, 1
    set __lowered_lex_396, $I5015
    box $P5049, tmp_4
    set $P5047, $P5049
    goto while512_test1009 
  while512_handlers1012:
    .get_results ($P5048)
    pop_upto_eh $P5048
    getattribute $P5050, $P5048, 'type'
    eq $P5050, .CONTROL_LOOP_NEXT, while512_test1009
    eq $P5050, .CONTROL_LOOP_REDO, while512_redo1011
  while512_done1013:
    pop_eh 
    .return (__lowered_lex_394) 
.end
.HLL "nqp"
.namespace []
.sub "__dump" :subid("cuid_28_1431289885.65252") :anon :lex :outer("cuid_127_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 708
    .param pmc __lowered_lex_398 
    .param pmc __lowered_lex_399 
    .param pmc __lowered_lex_400 
    .local pmc __lowered_lex_401 
    .local pmc __lowered_lex_402 
    .local pmc lowered_for_it__12 
    .local pmc __lowered_lex_397 
.annotate 'line', 709
    $P5001 = __lowered_lex_399."newIndent"()
    set __lowered_lex_401, $P5001
.annotate 'line', 710
    "&print"("[")
    box $P5002, 0
    set __lowered_lex_402, $P5002
    nqp_decontainerize $P5004, __lowered_lex_398
    nqp_get_sc_object $P5005, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 3
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!states", 0
    iter $P5003, $P5006
    set lowered_for_it__12, $P5003
    new $P5014, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5014, while522_handlers1035
    push_eh $P5014
  while522_test1032:
    set $P5013, lowered_for_it__12
    unless lowered_for_it__12 goto while522_done1036 
  while522_redo1034:
    shift $P5007, lowered_for_it__12
    set __lowered_lex_397, $P5007
.annotate 'line', 712
.annotate 'line', 713
    set $S5003, __lowered_lex_401
    concat $S5002, "\n", $S5003
    concat $S5001, $S5002, "'%d' => [%s]"
    new $P5010, 'QRPA'
    assign $P5010, 2
    assign $P5010, 0
    push $P5010, __lowered_lex_402
    join $S5004, ", ", __lowered_lex_397
    box $P5011, $S5004
    push $P5010, $P5011
    new $P5009, 'ResizableStringArray'
    push $P5009, "nqp"
    get_root_global $P5008, $P5009, "sprintf"
    $S5005 = $P5008($S5001, $P5010)
    "&print"($S5005)
    set $N5002, __lowered_lex_402
    set $N5003, 1
    add $N5001, $N5002, $N5003
    box $P5012, $N5001
    set __lowered_lex_402, $P5012
    set $P5013, __lowered_lex_402
    goto while522_test1032 
  while522_handlers1035:
    .get_results ($P5014)
    pop_upto_eh $P5014
    getattribute $P5015, $P5014, 'type'
    eq $P5015, .CONTROL_LOOP_NEXT, while522_test1032
    eq $P5015, .CONTROL_LOOP_REDO, while522_redo1034
  while522_done1036:
    pop_eh 
.annotate 'line', 716
    __lowered_lex_399."deleteIndent"()
.annotate 'line', 717
    $P5016 = __lowered_lex_399."indent"()
    $P5017 = "&print"("\n", $P5016, "]")
    .return ($P5017) 
.end
.HLL "nqp"
.namespace []
.sub "optimize" :subid("cuid_29_1431289885.65252") :anon :lex :outer("cuid_127_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 720
    .param pmc __lowered_lex_429 
    .local int __lowered_lex_430 
    .local pmc __lowered_lex_431 
    .local pmc __lowered_lex_432 
    .local pmc __lowered_lex_433 
    .local int __lowered_lex_427 
    .local int __lowered_lex_428 
    .local pmc __lowered_lex_405 
    .local pmc fb_tmp_108 
    .local int __lowered_lex_404 
    .local pmc fb_tmp_109 
    .local pmc fb_tmp_110 
    .local pmc fb_tmp_111 
    .local pmc __lowered_lex_403 
    .local pmc fb_tmp_112 
    .local pmc fb_tmp_113 
    .local pmc fb_tmp_114 
    .local pmc fb_tmp_115 
    .local pmc __lowered_lex_410 
    .local pmc fb_tmp_116 
    .local int __lowered_lex_408 
    .local int __lowered_lex_409 
    .local int __lowered_lex_406 
    .local int __lowered_lex_407 
    .local pmc fb_tmp_117 
    .local pmc __lowered_lex_414 
    .local int __lowered_lex_415 
    .local int __lowered_lex_416 
    .local pmc fb_tmp_118 
    .local pmc fb_tmp_119 
    .local int __lowered_lex_413 
    .local pmc fb_tmp_120 
    .local pmc __lowered_lex_412 
    .local pmc fb_tmp_121 
    .local int __lowered_lex_411 
    .local pmc fb_tmp_122 
    .local pmc fb_tmp_123 
    .local pmc fb_tmp_124 
    .local pmc fb_tmp_125 
    .local pmc __lowered_lex_426 
    .local pmc fb_tmp_126 
    .local pmc fb_tmp_127 
    .local pmc __lowered_lex_425 
    .local pmc __lowered_lex_422 
    .local int __lowered_lex_423 
    .local int __lowered_lex_424 
    .local pmc fb_tmp_128 
    .local pmc fb_tmp_129 
    .local int __lowered_lex_418 
    .local int __lowered_lex_419 
    .local pmc fb_tmp_130 
    .local pmc fb_tmp_131 
    .local pmc __lowered_lex_417 
    .local pmc fb_tmp_132 
    .local int __lowered_lex_421 
    .local pmc fb_tmp_133 
    .local pmc __lowered_lex_420 
    .local pmc fb_tmp_134 
    .local pmc fb_tmp_135 
    .local pmc fb_tmp_136 
    .local pmc fb_tmp_137 
    .local pmc fb_tmp_138 
    nqp_decontainerize $P5001, __lowered_lex_429
    nqp_get_sc_object $P5002, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 3
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!states", 0
    elements $I5001, $P5003
    set __lowered_lex_430, $I5001
    getinterp $P5004
    $P5005 = $P5004."stderr_handle"()
    set __lowered_lex_431, $P5005
    find_lex $P5006, "$nfadeb"
    unless $P5006 goto if523_end1038 
    set $S5003, __lowered_lex_430
    concat $S5002, "------------------------------------------\n   ", $S5003
    concat $S5001, $S5002, " states\n"
    $P5007 = __lowered_lex_431."print"($S5001)
  if523_end1038:
    new $P5008, 'ResizableIntegerArray'
    set __lowered_lex_432, $P5008
    add $I5002, __lowered_lex_430, 1
    assign __lowered_lex_432, $I5002
    new $P5009, 'ResizableIntegerArray'
    set __lowered_lex_433, $P5009
    add $I5003, __lowered_lex_430, 1
    assign __lowered_lex_433, $I5003
    isgt $I5004, __lowered_lex_430, 3
    box $P5280, $I5004
    set $P5279, $P5280
    unless $I5004 goto if524_end1040 
.annotate 'line', 728
    find_lex $P5010, "$nfadeb"
    unless $P5010 goto if525_end1042 
.annotate 'line', 729
    nqp_decontainerize $P5011, __lowered_lex_429
    $P5012 = $P5011."mydump"()
  if525_end1042:
    set __lowered_lex_427, 1
  while526_test1043:
    islt $I5005, __lowered_lex_427, __lowered_lex_430
    box $P5071, $I5005
    set $P5070, $P5071
    unless $I5005 goto while526_done1047 
  while526_redo1045:
.annotate 'line', 733
    nqp_decontainerize $P5013, __lowered_lex_429
    nqp_get_sc_object $P5014, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 3
    repr_get_attr_obj $P5015, $P5013, $P5014, "$!states", 0
    set fb_tmp_108, $P5015
    repr_defined $I5006, fb_tmp_108
    unless $I5006 goto if527_else1048 
    set $P5016, fb_tmp_108[__lowered_lex_427]
    set $P5018, $P5016
    goto if527_end1049
  if527_else1048:
    null $P5017
    set $P5018, $P5017
  if527_end1049:
    unless_null $P5018, vivi_5281050
    nqp_get_sc_object $P5019, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5018, $P5019
  vivi_5281050:
    set __lowered_lex_405, $P5018
    elements $I5008, __lowered_lex_405
    iseq $I5007, $I5008, 3
    unless $I5007 goto if529_end1052 
.annotate 'line', 735
    set fb_tmp_109, __lowered_lex_405
    repr_defined $I5009, fb_tmp_109
    unless $I5009 goto if530_else1053 
    set $P5020, fb_tmp_109[2]
    set $P5022, $P5020
    goto if530_end1054
  if530_else1053:
    null $P5021
    set $P5022, $P5021
  if530_end1054:
    unless_null $P5022, vivi_5311055
    nqp_get_sc_object $P5023, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5022, $P5023
  vivi_5311055:
    set $I5010, $P5022
    set __lowered_lex_404, $I5010
    set fb_tmp_110, __lowered_lex_405
    repr_defined $I5012, fb_tmp_110
    unless $I5012 goto if533_else1058 
    set $P5024, fb_tmp_110[0]
    set $P5026, $P5024
    goto if533_end1059
  if533_else1058:
    null $P5025
    set $P5026, $P5025
  if533_end1059:
    unless_null $P5026, vivi_5341060
    nqp_get_sc_object $P5027, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5026, $P5027
  vivi_5341060:
    set $N5001, $P5026
    find_lex $P5028, "$EDGE_EPSILON"
    set $N5002, $P5028
    iseq $I5011, $N5001, $N5002
    unless $I5011 goto if532_else1056 
.annotate 'line', 737
    set __lowered_lex_432[__lowered_lex_427], __lowered_lex_404
    box $P5069, __lowered_lex_404
    set $P5068, $P5069
    goto if532_end1057
  if532_else1056:
    set fb_tmp_111, __lowered_lex_405
    repr_defined $I5014, fb_tmp_111
    unless $I5014 goto if536_else1063 
    set $P5029, fb_tmp_111[0]
    set $P5031, $P5029
    goto if536_end1064
  if536_else1063:
    null $P5030
    set $P5031, $P5030
  if536_end1064:
    unless_null $P5031, vivi_5371065
    nqp_get_sc_object $P5032, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5031, $P5032
  vivi_5371065:
    set $N5003, $P5031
    find_lex $P5033, "$EDGE_FATE"
    set $N5004, $P5033
    iseq $I5013, $N5003, $N5004
    box $P5067, $I5013
    set $P5066, $P5067
    unless $I5013 goto if535_end1062 
.annotate 'line', 740
    box $P5065, __lowered_lex_404
    set $P5064, $P5065
    unless __lowered_lex_404 goto if538_end1067 
.annotate 'line', 742
  while539_test1068:
    set $I5015, __lowered_lex_432[__lowered_lex_404]
    box $P5035, $I5015
    set $P5034, $P5035
    unless $I5015 goto while539_done1072 
  while539_redo1070:
.annotate 'line', 743
    set $I5016, __lowered_lex_432[__lowered_lex_404]
    set __lowered_lex_404, $I5016
    box $P5036, __lowered_lex_404
    set $P5034, $P5036
    goto while539_test1068 
  while539_done1072:
    nqp_decontainerize $P5037, __lowered_lex_429
    nqp_get_sc_object $P5038, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 3
    repr_get_attr_obj $P5039, $P5037, $P5038, "$!states", 0
    set fb_tmp_112, $P5039
    repr_defined $I5017, fb_tmp_112
    unless $I5017 goto if540_else1073 
    set $P5040, fb_tmp_112[__lowered_lex_404]
    set $P5042, $P5040
    goto if540_end1074
  if540_else1073:
    null $P5041
    set $P5042, $P5041
  if540_end1074:
    unless_null $P5042, vivi_5411075
    nqp_get_sc_object $P5043, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5042, $P5043
  vivi_5411075:
    set __lowered_lex_403, $P5042
    set $N5005, __lowered_lex_403
    box $P5050, $N5005
    set $P5049, $P5050
    unless $N5005 goto if544_end1081 
    set fb_tmp_113, __lowered_lex_403
    repr_defined $I5019, fb_tmp_113
    unless $I5019 goto if545_else1082 
    set $P5044, fb_tmp_113[0]
    set $P5046, $P5044
    goto if545_end1083
  if545_else1082:
    null $P5045
    set $P5046, $P5045
  if545_end1083:
    unless_null $P5046, vivi_5461084
    nqp_get_sc_object $P5047, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5046, $P5047
  vivi_5461084:
    set $N5006, $P5046
    find_lex $P5048, "$EDGE_FATE"
    set $N5007, $P5048
    iseq $I5018, $N5006, $N5007
    box $P5051, $I5018
    set $P5049, $P5051
  if544_end1081:
    set $P5060, $P5049
    unless $P5049 goto if543_end1079 
    set fb_tmp_114, __lowered_lex_403
    repr_defined $I5021, fb_tmp_114
    unless $I5021 goto if547_else1085 
    set $P5052, fb_tmp_114[1]
    set $P5054, $P5052
    goto if547_end1086
  if547_else1085:
    null $P5053
    set $P5054, $P5053
  if547_end1086:
    unless_null $P5054, vivi_5481087
    nqp_get_sc_object $P5055, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5054, $P5055
  vivi_5481087:
    set $N5008, $P5054
    set fb_tmp_115, __lowered_lex_405
    repr_defined $I5022, fb_tmp_115
    unless $I5022 goto if549_else1088 
    set $P5056, fb_tmp_115[1]
    set $P5058, $P5056
    goto if549_end1089
  if549_else1088:
    null $P5057
    set $P5058, $P5057
  if549_end1089:
    unless_null $P5058, vivi_5501090
    nqp_get_sc_object $P5059, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5058, $P5059
  vivi_5501090:
    set $N5009, $P5058
    iseq $I5020, $N5008, $N5009
    box $P5061, $I5020
    set $P5060, $P5061
  if543_end1079:
    set $P5062, $P5060
    unless $P5060 goto if542_end1077 
.annotate 'line', 747
    set __lowered_lex_432[__lowered_lex_427], __lowered_lex_404
    box $P5063, __lowered_lex_404
    set $P5062, $P5063
  if542_end1077:
    set $P5064, $P5062
  if538_end1067:
    set $P5066, $P5064
  if535_end1062:
    set $P5068, $P5066
  if532_end1057:
  if529_end1052:
    add $I5023, __lowered_lex_427, 1
    set __lowered_lex_427, $I5023
    box $P5072, __lowered_lex_427
    set $P5070, $P5072
    goto while526_test1043 
  while526_done1047:
    find_lex $P5073, "$nfadeb"
    unless $P5073 goto if551_end1092 
    set $S5006, __lowered_lex_430
    concat $S5005, "now ", $S5006
    concat $S5004, $S5005, " states before unlinking empties\n"
    $P5074 = __lowered_lex_431."print"($S5004)
  if551_end1092:
    set __lowered_lex_427, 1
  while552_test1093:
    islt $I5024, __lowered_lex_427, __lowered_lex_430
    box $P5100, $I5024
    set $P5099, $P5100
    unless $I5024 goto while552_done1097 
  while552_redo1095:
.annotate 'line', 769
    nqp_decontainerize $P5075, __lowered_lex_429
    nqp_get_sc_object $P5076, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 3
    repr_get_attr_obj $P5077, $P5075, $P5076, "$!states", 0
    set fb_tmp_116, $P5077
    repr_defined $I5025, fb_tmp_116
    unless $I5025 goto if553_else1098 
    set $P5078, fb_tmp_116[__lowered_lex_427]
    set $P5080, $P5078
    goto if553_end1099
  if553_else1098:
    null $P5079
    set $P5080, $P5079
  if553_end1099:
    unless_null $P5080, vivi_5541100
    nqp_get_sc_object $P5081, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5080, $P5081
  vivi_5541100:
    set __lowered_lex_410, $P5080
    set $I5026, __lowered_lex_432[__lowered_lex_427]
    set $I5028, $I5026
    unless $I5026 goto if556_end1104 
    isgt $I5027, __lowered_lex_427, 1
    set $I5028, $I5027
  if556_end1104:
    unless $I5028 goto if555_else1101 
.annotate 'line', 771
    nqp_decontainerize $P5082, __lowered_lex_429
    nqp_get_sc_object $P5083, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 3
    repr_get_attr_obj $P5084, $P5082, $P5083, "$!states", 0
    new $P5085, 'QRPA'
    set $P5084[__lowered_lex_427], $P5085
    goto if555_end1102
  if555_else1101:
.annotate 'line', 774
    elements $I5029, __lowered_lex_410
    set __lowered_lex_408, $I5029
    set __lowered_lex_409, 2
  while557_test1105:
    islt $I5030, __lowered_lex_409, __lowered_lex_408
    box $P5097, $I5030
    set $P5096, $P5097
    unless $I5030 goto while557_done1109 
  while557_redo1107:
.annotate 'line', 777
    set fb_tmp_117, __lowered_lex_410
    repr_defined $I5031, fb_tmp_117
    unless $I5031 goto if558_else1110 
    set $P5086, fb_tmp_117[__lowered_lex_409]
    set $P5088, $P5086
    goto if558_end1111
  if558_else1110:
    null $P5087
    set $P5088, $P5087
  if558_end1111:
    unless_null $P5088, vivi_5591112
    nqp_get_sc_object $P5089, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5088, $P5089
  vivi_5591112:
    set $I5032, $P5088
    set __lowered_lex_406, $I5032
    set __lowered_lex_407, __lowered_lex_406
    set $I5034, __lowered_lex_406
    unless __lowered_lex_406 goto if561_end1116 
    set $I5033, __lowered_lex_432[__lowered_lex_406]
    set $I5034, $I5033
  if561_end1116:
    unless $I5034 goto if560_end1114 
.annotate 'line', 780
  while562_test1117:
    set $I5035, __lowered_lex_432[__lowered_lex_406]
    box $P5094, $I5035
    set $P5093, $P5094
    unless $I5035 goto while562_done1121 
  while562_redo1119:
.annotate 'line', 781
    set $I5036, __lowered_lex_432[__lowered_lex_406]
    set __lowered_lex_406, $I5036
    find_lex $P5090, "$nfadeb"
    set $P5092, $P5090
    unless $P5090 goto if563_end1123 
    set $S5011, __lowered_lex_407
    concat $S5010, "  chasing ", $S5011
    concat $S5009, $S5010, " to "
    set $S5012, __lowered_lex_406
    concat $S5008, $S5009, $S5012
    concat $S5007, $S5008, "\n"
    $P5091 = __lowered_lex_431."print"($S5007)
    set $P5092, $P5091
  if563_end1123:
    set $P5093, $P5092
    goto while562_test1117 
  while562_done1121:
    box $P5095, __lowered_lex_406
    set __lowered_lex_410[__lowered_lex_409], $P5095
  if560_end1114:
    set $I5038, __lowered_lex_433[__lowered_lex_406]
    add $I5037, $I5038, 1
    set __lowered_lex_433[__lowered_lex_406], $I5037
    add $I5039, __lowered_lex_409, 3
    set __lowered_lex_409, $I5039
    box $P5098, __lowered_lex_409
    set $P5096, $P5098
    goto while557_test1105 
  while557_done1109:
  if555_end1102:
    add $I5040, __lowered_lex_427, 1
    set __lowered_lex_427, $I5040
    box $P5101, __lowered_lex_427
    set $P5099, $P5101
    goto while552_test1093 
  while552_done1097:
    find_lex $P5102, "$nfadeb"
    unless $P5102 goto if564_end1125 
.annotate 'line', 794
    nqp_decontainerize $P5103, __lowered_lex_429
    $P5104 = $P5103."mydump"()
  if564_end1125:
    find_lex $P5105, "$nfadeb"
    unless $P5105 goto if565_end1127 
    set $S5015, __lowered_lex_430
    concat $S5014, "now ", $S5015
    concat $S5013, $S5014, " states before stealing singleton edges\n"
    $P5106 = __lowered_lex_431."print"($S5013)
  if565_end1127:
    set __lowered_lex_427, 1
  while566_test1128:
    islt $I5041, __lowered_lex_427, __lowered_lex_430
    box $P5158, $I5041
    set $P5157, $P5158
    unless $I5041 goto while566_done1132 
  while566_redo1130:
.annotate 'line', 798
    nqp_decontainerize $P5107, __lowered_lex_429
    nqp_get_sc_object $P5108, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 3
    repr_get_attr_obj $P5109, $P5107, $P5108, "$!states", 0
    set fb_tmp_118, $P5109
    repr_defined $I5042, fb_tmp_118
    unless $I5042 goto if567_else1133 
    set $P5110, fb_tmp_118[__lowered_lex_427]
    set $P5112, $P5110
    goto if567_end1134
  if567_else1133:
    null $P5111
    set $P5112, $P5111
  if567_end1134:
    unless_null $P5112, vivi_5681135
    nqp_get_sc_object $P5113, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5112, $P5113
  vivi_5681135:
    set __lowered_lex_414, $P5112
    elements $I5043, __lowered_lex_414
    set __lowered_lex_415, $I5043
    set __lowered_lex_416, 0
  while569_test1136:
    islt $I5044, __lowered_lex_416, __lowered_lex_415
    box $P5155, $I5044
    set $P5154, $P5155
    unless $I5044 goto while569_done1140 
  while569_redo1138:
.annotate 'line', 802
    set fb_tmp_119, __lowered_lex_414
    repr_defined $I5046, fb_tmp_119
    unless $I5046 goto if571_else1143 
    set $P5114, fb_tmp_119[__lowered_lex_416]
    set $P5116, $P5114
    goto if571_end1144
  if571_else1143:
    null $P5115
    set $P5116, $P5115
  if571_end1144:
    unless_null $P5116, vivi_5721145
    nqp_get_sc_object $P5117, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5116, $P5117
  vivi_5721145:
    set $N5010, $P5116
    find_lex $P5118, "$EDGE_EPSILON"
    set $N5011, $P5118
    iseq $I5045, $N5010, $N5011
    unless $I5045 goto if570_end1142 
.annotate 'line', 805
    set fb_tmp_120, __lowered_lex_414
    repr_defined $I5047, fb_tmp_120
    unless $I5047 goto if573_else1146 
    add $I5048, __lowered_lex_416, 2
    set $P5119, fb_tmp_120[$I5048]
    set $P5121, $P5119
    goto if573_end1147
  if573_else1146:
    null $P5120
    set $P5121, $P5120
  if573_end1147:
    unless_null $P5121, vivi_5741148
    nqp_get_sc_object $P5122, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5121, $P5122
  vivi_5741148:
    set $I5049, $P5121
    set __lowered_lex_413, $I5049
    box $P5153, __lowered_lex_413
    set $P5152, $P5153
    unless __lowered_lex_413 goto if575_end1150 
.annotate 'line', 807
    nqp_decontainerize $P5123, __lowered_lex_429
    nqp_get_sc_object $P5124, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 3
    repr_get_attr_obj $P5125, $P5123, $P5124, "$!states", 0
    set fb_tmp_121, $P5125
    repr_defined $I5050, fb_tmp_121
    unless $I5050 goto if576_else1151 
    set $P5126, fb_tmp_121[__lowered_lex_413]
    set $P5128, $P5126
    goto if576_end1152
  if576_else1151:
    null $P5127
    set $P5128, $P5127
  if576_end1152:
    unless_null $P5128, vivi_5771153
    nqp_get_sc_object $P5129, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5128, $P5129
  vivi_5771153:
    set __lowered_lex_412, $P5128
    set $N5012, __lowered_lex_412
    set $N5013, 3
    iseq $I5051, $N5012, $N5013
    box $P5151, $I5051
    set $P5150, $P5151
    unless $I5051 goto if578_end1155 
.annotate 'line', 809
    find_lex $P5130, "$nfadeb"
    unless $P5130 goto if579_end1157 
    set $S5020, __lowered_lex_427
    concat $S5019, "  ", $S5020
    concat $S5018, $S5019, " stealing "
    set $S5021, __lowered_lex_413
    concat $S5017, $S5018, $S5021
    concat $S5016, $S5017, "\n"
    $P5131 = __lowered_lex_431."print"($S5016)
  if579_end1157:
    set fb_tmp_122, __lowered_lex_412
    repr_defined $I5052, fb_tmp_122
    unless $I5052 goto if580_else1158 
    set $P5132, fb_tmp_122[0]
    set $P5134, $P5132
    goto if580_end1159
  if580_else1158:
    null $P5133
    set $P5134, $P5133
  if580_end1159:
    unless_null $P5134, vivi_5811160
    nqp_get_sc_object $P5135, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5134, $P5135
  vivi_5811160:
    set __lowered_lex_414[__lowered_lex_416], $P5134
    add $I5053, __lowered_lex_416, 1
    set fb_tmp_123, __lowered_lex_412
    repr_defined $I5054, fb_tmp_123
    unless $I5054 goto if582_else1161 
    set $P5136, fb_tmp_123[1]
    set $P5138, $P5136
    goto if582_end1162
  if582_else1161:
    null $P5137
    set $P5138, $P5137
  if582_end1162:
    unless_null $P5138, vivi_5831163
    nqp_get_sc_object $P5139, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5138, $P5139
  vivi_5831163:
    set __lowered_lex_414[$I5053], $P5138
    add $I5055, __lowered_lex_416, 2
    set fb_tmp_124, __lowered_lex_412
    repr_defined $I5056, fb_tmp_124
    unless $I5056 goto if584_else1164 
    set $P5140, fb_tmp_124[2]
    set $P5142, $P5140
    goto if584_end1165
  if584_else1164:
    null $P5141
    set $P5142, $P5141
  if584_end1165:
    unless_null $P5142, vivi_5851166
    nqp_get_sc_object $P5143, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5142, $P5143
  vivi_5851166:
    set __lowered_lex_414[$I5055], $P5142
    set $I5057, __lowered_lex_433[__lowered_lex_413]
    set __lowered_lex_411, $I5057
    sub $I5058, __lowered_lex_411, 1
    set __lowered_lex_411, $I5058
    set __lowered_lex_433[__lowered_lex_413], __lowered_lex_411
    box $P5149, __lowered_lex_411
    set $P5148, $P5149
    if __lowered_lex_411 goto unless586_end1168 
    nqp_decontainerize $P5144, __lowered_lex_429
    nqp_get_sc_object $P5145, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 3
    repr_get_attr_obj $P5146, $P5144, $P5145, "$!states", 0
    new $P5147, 'QRPA'
    set $P5146[__lowered_lex_413], $P5147
    set $P5148, $P5147
  unless586_end1168:
    set $P5150, $P5148
  if578_end1155:
    set $P5152, $P5150
  if575_end1150:
  if570_end1142:
    add $I5059, __lowered_lex_416, 3
    set __lowered_lex_416, $I5059
    box $P5156, __lowered_lex_416
    set $P5154, $P5156
    goto while569_test1136 
  while569_done1140:
    add $I5060, __lowered_lex_427, 1
    set __lowered_lex_427, $I5060
    box $P5159, __lowered_lex_427
    set $P5157, $P5159
    goto while566_test1128 
  while566_done1132:
    find_lex $P5160, "$nfadeb"
    unless $P5160 goto if587_end1170 
.annotate 'line', 826
    nqp_decontainerize $P5161, __lowered_lex_429
    $P5162 = $P5161."mydump"()
  if587_end1170:
    find_lex $P5163, "$nfadeb"
    unless $P5163 goto if588_end1172 
    set $S5024, __lowered_lex_430
    concat $S5023, "now ", $S5024
    concat $S5022, $S5023, " states before calculating remap\n"
    $P5164 = __lowered_lex_431."print"($S5022)
  if588_end1172:
    set __lowered_lex_428, 1
    set __lowered_lex_427, 1
  while589_test1173:
    islt $I5061, __lowered_lex_427, __lowered_lex_430
    box $P5173, $I5061
    set $P5172, $P5173
    unless $I5061 goto while589_done1177 
  while589_redo1175:
.annotate 'line', 832
    nqp_decontainerize $P5165, __lowered_lex_429
    nqp_get_sc_object $P5166, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 3
    repr_get_attr_obj $P5167, $P5165, $P5166, "$!states", 0
    set fb_tmp_125, $P5167
    repr_defined $I5062, fb_tmp_125
    unless $I5062 goto if591_else1180 
    set $P5168, fb_tmp_125[__lowered_lex_427]
    set $P5170, $P5168
    goto if591_end1181
  if591_else1180:
    null $P5169
    set $P5170, $P5169
  if591_end1181:
    unless_null $P5170, vivi_5921182
    nqp_get_sc_object $P5171, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5170, $P5171
  vivi_5921182:
    set $N5014, $P5170
    unless $N5014 goto if590_else1178 
.annotate 'line', 833
    set __lowered_lex_432[__lowered_lex_427], __lowered_lex_428
    add $I5063, __lowered_lex_428, 1
    set __lowered_lex_428, $I5063
    goto if590_end1179
  if590_else1178:
.annotate 'line', 837
    set __lowered_lex_432[__lowered_lex_427], 0
  if590_end1179:
    add $I5064, __lowered_lex_427, 1
    set __lowered_lex_427, $I5064
    box $P5174, __lowered_lex_427
    set $P5172, $P5174
    goto while589_test1173 
  while589_done1177:
    find_lex $P5175, "$nfadeb"
    unless $P5175 goto if593_end1184 
.annotate 'line', 855
    nqp_decontainerize $P5176, __lowered_lex_429
    $P5177 = $P5176."mydump"()
  if593_end1184:
    find_lex $P5178, "$nfadeb"
    unless $P5178 goto if594_end1186 
    set $S5029, __lowered_lex_430
    concat $S5028, "now ", $S5029
    concat $S5027, $S5028, " states mapping to "
    set $S5030, __lowered_lex_428
    concat $S5026, $S5027, $S5030
    concat $S5025, $S5026, " states\n"
    $P5179 = __lowered_lex_431."print"($S5025)
  if594_end1186:
    islt $I5065, __lowered_lex_428, __lowered_lex_430
    unless $I5065 goto if595_end1188 
.annotate 'line', 857
    new $P5180, 'QRPA'
    set __lowered_lex_426, $P5180
    assign __lowered_lex_426, __lowered_lex_428
    nqp_decontainerize $P5181, __lowered_lex_429
    nqp_get_sc_object $P5182, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 3
    repr_get_attr_obj $P5183, $P5181, $P5182, "$!states", 0
    set fb_tmp_126, $P5183
    repr_defined $I5066, fb_tmp_126
    unless $I5066 goto if596_else1189 
    set $P5184, fb_tmp_126[0]
    set $P5186, $P5184
    goto if596_end1190
  if596_else1189:
    null $P5185
    set $P5186, $P5185
  if596_end1190:
    unless_null $P5186, vivi_5971191
    nqp_get_sc_object $P5187, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5186, $P5187
  vivi_5971191:
    set __lowered_lex_426[0], $P5186
    set __lowered_lex_427, 1
  while598_test1192:
    islt $I5067, __lowered_lex_427, __lowered_lex_430
    box $P5271, $I5067
    set $P5270, $P5271
    unless $I5067 goto while598_done1196 
  while598_redo1194:
.annotate 'line', 862
    nqp_decontainerize $P5188, __lowered_lex_429
    nqp_get_sc_object $P5189, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 3
    repr_get_attr_obj $P5190, $P5188, $P5189, "$!states", 0
    set fb_tmp_127, $P5190
    repr_defined $I5068, fb_tmp_127
    unless $I5068 goto if600_else1199 
    set $P5191, fb_tmp_127[__lowered_lex_427]
    set $P5193, $P5191
    goto if600_end1200
  if600_else1199:
    null $P5192
    set $P5193, $P5192
  if600_end1200:
    unless_null $P5193, vivi_6011201
    nqp_get_sc_object $P5194, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5193, $P5194
  vivi_6011201:
    set $N5015, $P5193
    unless $N5015 goto if599_else1197 
.annotate 'line', 863
    set $I5069, __lowered_lex_432[__lowered_lex_427]
    box $P5195, $I5069
    set __lowered_lex_425, $P5195
    set $N5016, __lowered_lex_425
    set $N5017, __lowered_lex_427
    isgt $I5070, $N5016, $N5017
    unless $I5070 goto if602_end1203 
    set $S5033, __lowered_lex_425
    concat $S5032, "OOPS outrageous ", $S5033
    concat $S5031, $S5032, "\n"
    $P5196 = __lowered_lex_431."print"($S5031)
  if602_end1203:
    unless __lowered_lex_425 goto if603_else1204 
.annotate 'line', 866
    set $I5071, __lowered_lex_425
    nqp_decontainerize $P5197, __lowered_lex_429
    nqp_get_sc_object $P5198, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 3
    repr_get_attr_obj $P5199, $P5197, $P5198, "$!states", 0
    set fb_tmp_128, $P5199
    repr_defined $I5072, fb_tmp_128
    unless $I5072 goto if604_else1206 
    set $P5200, fb_tmp_128[__lowered_lex_427]
    set $P5202, $P5200
    goto if604_end1207
  if604_else1206:
    null $P5201
    set $P5202, $P5201
  if604_end1207:
    unless_null $P5202, vivi_6051208
    nqp_get_sc_object $P5203, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5202, $P5203
  vivi_6051208:
    set __lowered_lex_426[$I5071], $P5202
    set fb_tmp_129, __lowered_lex_426
    repr_defined $I5073, fb_tmp_129
    unless $I5073 goto if606_else1209 
    set $I5074, __lowered_lex_425
    set $P5204, fb_tmp_129[$I5074]
    set $P5206, $P5204
    goto if606_end1210
  if606_else1209:
    null $P5205
    set $P5206, $P5205
  if606_end1210:
    unless_null $P5206, vivi_6071211
    nqp_get_sc_object $P5207, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5206, $P5207
  vivi_6071211:
    set __lowered_lex_422, $P5206
    elements $I5075, __lowered_lex_422
    set __lowered_lex_423, $I5075
    set __lowered_lex_424, 2
  while608_test1212:
    islt $I5076, __lowered_lex_424, __lowered_lex_423
    box $P5225, $I5076
    set $P5224, $P5225
    unless $I5076 goto while608_done1216 
  while608_redo1214:
.annotate 'line', 871
    set fb_tmp_130, __lowered_lex_422
    repr_defined $I5077, fb_tmp_130
    unless $I5077 goto if609_else1217 
    set $P5208, fb_tmp_130[__lowered_lex_424]
    set $P5210, $P5208
    goto if609_end1218
  if609_else1217:
    null $P5209
    set $P5210, $P5209
  if609_end1218:
    unless_null $P5210, vivi_6101219
    nqp_get_sc_object $P5211, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5210, $P5211
  vivi_6101219:
    set $I5078, $P5210
    set __lowered_lex_418, $I5078
    set fb_tmp_131, __lowered_lex_422
    repr_defined $I5080, fb_tmp_131
    unless $I5080 goto if611_else1220 
    sub $I5081, __lowered_lex_424, 2
    set $P5212, fb_tmp_131[$I5081]
    set $P5214, $P5212
    goto if611_end1221
  if611_else1220:
    null $P5213
    set $P5214, $P5213
  if611_end1221:
    unless_null $P5214, vivi_6121222
    nqp_get_sc_object $P5215, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5214, $P5215
  vivi_6121222:
    set $I5082, $P5214
    band $I5079, $I5082, 255
    set __lowered_lex_419, $I5079
    unless __lowered_lex_418 goto if613_end1224 
.annotate 'line', 874
    set $I5083, __lowered_lex_432[__lowered_lex_418]
    box $P5216, $I5083
    set __lowered_lex_417, $P5216
    find_lex $P5217, "$nfadeb"
    unless $P5217 goto if614_end1226 
    set $S5040, __lowered_lex_427
    concat $S5039, "In ", $S5040
    concat $S5038, $S5039, " -> "
    set $S5041, __lowered_lex_425
    concat $S5037, $S5038, $S5041
    concat $S5036, $S5037, " remapping "
    find_lex $P5218, "$ACTIONS"
    set fb_tmp_132, $P5218
    repr_defined $I5084, fb_tmp_132
    unless $I5084 goto if615_else1227 
    set $P5219, fb_tmp_132[__lowered_lex_419]
    set $P5221, $P5219
    goto if615_end1228
  if615_else1227:
    null $P5220
    set $P5221, $P5220
  if615_end1228:
    unless_null $P5221, vivi_6161229
    nqp_get_sc_object $P5222, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5221, $P5222
  vivi_6161229:
    set $S5042, $P5221
    concat $S5035, $S5036, $S5042
    set $S5047, __lowered_lex_418
    concat $S5046, " ", $S5047
    concat $S5045, $S5046, " -> "
    set $S5048, __lowered_lex_417
    concat $S5044, $S5045, $S5048
    concat $S5043, $S5044, "\n"
    concat $S5034, $S5035, $S5043
    $P5223 = __lowered_lex_431."print"($S5034)
  if614_end1226:
    set __lowered_lex_422[__lowered_lex_424], __lowered_lex_417
  if613_end1224:
    add $I5085, __lowered_lex_424, 3
    set __lowered_lex_424, $I5085
    box $P5226, __lowered_lex_424
    set $P5224, $P5226
    goto while608_test1212 
  while608_done1216:
    set __lowered_lex_424, 3
  while617_test1230:
    islt $I5086, __lowered_lex_424, __lowered_lex_423
    box $P5261, $I5086
    set $P5260, $P5261
    unless $I5086 goto while617_done1234 
  while617_redo1232:
.annotate 'line', 883
    set fb_tmp_133, __lowered_lex_422
    repr_defined $I5088, fb_tmp_133
    unless $I5088 goto if618_else1235 
    set $P5227, fb_tmp_133[__lowered_lex_424]
    set $P5229, $P5227
    goto if618_end1236
  if618_else1235:
    null $P5228
    set $P5229, $P5228
  if618_end1236:
    unless_null $P5229, vivi_6191237
    nqp_get_sc_object $P5230, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5229, $P5230
  vivi_6191237:
    set $I5089, $P5229
    band $I5087, $I5089, 255
    set __lowered_lex_421, $I5087
    set $N5018, __lowered_lex_421
    find_lex $P5231, "$EDGE_CHARLIST"
    set $N5019, $P5231
    islt $I5090, $N5018, $N5019
    unless $I5090 goto if620_end1239 
.annotate 'line', 885
    box $P5232, 0
    set __lowered_lex_420, $P5232
  while621_test1240:
    set $N5020, __lowered_lex_420
    set $N5021, __lowered_lex_424
    islt $I5091, $N5020, $N5021
    box $P5259, $I5091
    set $P5258, $P5259
    unless $I5091 goto while621_done1244 
  while621_redo1242:
.annotate 'line', 887
    set $N5022, __lowered_lex_421
    set fb_tmp_134, __lowered_lex_422
    repr_defined $I5093, fb_tmp_134
    unless $I5093 goto if625_else1251 
    set $I5094, __lowered_lex_420
    set $P5233, fb_tmp_134[$I5094]
    set $P5235, $P5233
    goto if625_end1252
  if625_else1251:
    null $P5234
    set $P5235, $P5234
  if625_end1252:
    unless_null $P5235, vivi_6261253
    nqp_get_sc_object $P5236, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5235, $P5236
  vivi_6261253:
    set $N5023, $P5235
    iseq $I5092, $N5022, $N5023
    set $I5100, $I5092
    unless $I5092 goto if624_end1250 
    set fb_tmp_135, __lowered_lex_422
    repr_defined $I5096, fb_tmp_135
    unless $I5096 goto if627_else1254 
    add $I5097, __lowered_lex_424, 2
    set $P5237, fb_tmp_135[$I5097]
    set $P5239, $P5237
    goto if627_end1255
  if627_else1254:
    null $P5238
    set $P5239, $P5238
  if627_end1255:
    unless_null $P5239, vivi_6281256
    nqp_get_sc_object $P5240, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5239, $P5240
  vivi_6281256:
    set $N5024, $P5239
    set fb_tmp_136, __lowered_lex_422
    repr_defined $I5098, fb_tmp_136
    unless $I5098 goto if629_else1257 
    set $N5026, __lowered_lex_420
    set $N5027, 2
    add $N5025, $N5026, $N5027
    set $I5099, $N5025
    set $P5241, fb_tmp_136[$I5099]
    set $P5243, $P5241
    goto if629_end1258
  if629_else1257:
    null $P5242
    set $P5243, $P5242
  if629_end1258:
    unless_null $P5243, vivi_6301259
    nqp_get_sc_object $P5244, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5243, $P5244
  vivi_6301259:
    set $N5028, $P5243
    iseq $I5095, $N5024, $N5028
    set $I5100, $I5095
  if624_end1250:
    set $I5106, $I5100
    unless $I5100 goto if623_end1248 
    set fb_tmp_137, __lowered_lex_422
    repr_defined $I5102, fb_tmp_137
    unless $I5102 goto if631_else1260 
    add $I5103, __lowered_lex_424, 1
    set $P5245, fb_tmp_137[$I5103]
    set $P5247, $P5245
    goto if631_end1261
  if631_else1260:
    null $P5246
    set $P5247, $P5246
  if631_end1261:
    unless_null $P5247, vivi_6321262
    nqp_get_sc_object $P5248, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5247, $P5248
  vivi_6321262:
    set $N5029, $P5247
    set fb_tmp_138, __lowered_lex_422
    repr_defined $I5104, fb_tmp_138
    unless $I5104 goto if633_else1263 
    set $N5031, __lowered_lex_420
    set $N5032, 1
    add $N5030, $N5031, $N5032
    set $I5105, $N5030
    set $P5249, fb_tmp_138[$I5105]
    set $P5251, $P5249
    goto if633_end1264
  if633_else1263:
    null $P5250
    set $P5251, $P5250
  if633_end1264:
    unless_null $P5251, vivi_6341265
    nqp_get_sc_object $P5252, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5251, $P5252
  vivi_6341265:
    set $N5033, $P5251
    iseq $I5101, $N5029, $N5033
    set $I5106, $I5101
  if623_end1248:
    unless $I5106 goto if622_end1246 
.annotate 'line', 888
    find_lex $P5253, "$nfadeb"
    unless $P5253 goto if635_end1267 
    set $S5055, __lowered_lex_427
    concat $S5054, "Deleting dup edge at ", $S5055
    concat $S5053, $S5054, " "
    set $S5056, __lowered_lex_424
    concat $S5052, $S5053, $S5056
    concat $S5051, $S5052, "/"
    set $S5057, __lowered_lex_420
    concat $S5050, $S5051, $S5057
    concat $S5049, $S5050, "\n"
    $P5254 = __lowered_lex_431."print"($S5049)
  if635_end1267:
    box $P5255, __lowered_lex_424
    set __lowered_lex_420, $P5255
    new $P5256, 'QRPA'
    splice __lowered_lex_422, $P5256, __lowered_lex_424, 3
    sub $I5107, __lowered_lex_424, 3
    set __lowered_lex_424, $I5107
    sub $I5108, __lowered_lex_423, 3
    set __lowered_lex_423, $I5108
  if622_end1246:
    set $N5035, __lowered_lex_420
    set $N5036, 3
    add $N5034, $N5035, $N5036
    box $P5257, $N5034
    set __lowered_lex_420, $P5257
    set $P5258, __lowered_lex_420
    goto while621_test1240 
  while621_done1244:
  if620_end1239:
    add $I5109, __lowered_lex_424, 3
    set __lowered_lex_424, $I5109
    box $P5262, __lowered_lex_424
    set $P5260, $P5262
    goto while617_test1230 
  while617_done1234:
    set $P5266, $P5260
    goto if603_end1205
  if603_else1204:
.annotate 'line', 901
    find_lex $P5263, "$nfadeb"
    set $P5265, $P5263
    unless $P5263 goto if636_end1269 
    set $S5060, __lowered_lex_427
    concat $S5059, "False mapping for ", $S5060
    concat $S5058, $S5059, "\n"
    $P5264 = __lowered_lex_431."print"($S5058)
    set $P5265, $P5264
  if636_end1269:
    set $P5266, $P5265
  if603_end1205:
    goto if599_end1198
  if599_else1197:
.annotate 'line', 905
    find_lex $P5267, "$nfadeb"
    set $P5269, $P5267
    unless $P5267 goto if637_end1271 
    set $S5063, __lowered_lex_427
    concat $S5062, "Skipping ", $S5063
    concat $S5061, $S5062, "\n"
    $P5268 = __lowered_lex_431."print"($S5061)
    set $P5269, $P5268
  if637_end1271:
  if599_end1198:
    add $I5110, __lowered_lex_427, 1
    set __lowered_lex_427, $I5110
    box $P5272, __lowered_lex_427
    set $P5270, $P5272
    goto while598_test1192 
  while598_done1196:
    nqp_decontainerize $P5273, __lowered_lex_429
    nqp_get_sc_object $P5274, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 3
    setattribute $P5273, $P5274, "$!states", __lowered_lex_426
  if595_end1188:
    find_lex $P5275, "$nfadeb"
    set $P5278, $P5275
    unless $P5275 goto if638_end1273 
.annotate 'line', 912
    nqp_decontainerize $P5276, __lowered_lex_429
    $P5277 = $P5276."mydump"()
    set $P5278, $P5277
  if638_end1273:
    set $P5279, $P5278
  if524_end1040:
    .return ($P5279) 
.end
.HLL "nqp"
.namespace []
.sub "mydump" :subid("cuid_30_1431289885.65252") :anon :lex :outer("cuid_127_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 916
    .param pmc _lex_param_0 
    .const 'Sub' $P5008 = 'cuid_134_1431289885.65252' 
    capture_lex $P5008 
    .lex "$send", $I101 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 3
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!states", 0
    elements $I5001, $P5003
    set $I101, $I5001
    isgt $I5002, $I101, 1
    box $P5007, $I5002
    set $P5006, $P5007
    unless $I5002 goto if639_end1275 
    .const 'Sub' $P5004 = 'cuid_134_1431289885.65252' 
    capture_lex $P5004
    $P5005 = $P5004()
    set $P5006, $P5005
  if639_end1275:
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_134_1431289885.65252") :anon :lex :outer("cuid_30_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 918
    .const 'Sub' $P5041 = 'cuid_133_1431289885.65252' 
    capture_lex $P5041 
    .lex "$err", $P101 
    .local int __lowered_lex_440 
    .local pmc lowered_for_it__13 
    .local pmc fb_tmp_139 
    .local pmc __lowered_lex_434 
    .local pmc fb_tmp_140 
    getinterp $P5001
    $P5002 = $P5001."stderr_handle"()
    set $P101, $P5002
    find_lex $I5001, "$send"
    set $S5003, $I5001
    concat $S5002, "==========================================\n   ", $S5003
    concat $S5001, $S5002, " states\n"
    $P5003 = $P101."print"($S5001)
    $P5004 = $P101."print"("Fates:\n")
    find_lex $P5007, "self"
    nqp_decontainerize $P5006, $P5007
    nqp_get_sc_object $P5008, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 3
    repr_get_attr_obj $P5009, $P5006, $P5008, "$!states", 0
    set fb_tmp_139, $P5009
    repr_defined $I5002, fb_tmp_139
    unless $I5002 goto if640_else1276 
    set $P5010, fb_tmp_139[0]
    set $P5012, $P5010
    goto if640_end1277
  if640_else1276:
    null $P5011
    set $P5012, $P5011
  if640_end1277:
    unless_null $P5012, vivi_6411278
    nqp_get_sc_object $P5013, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5012, $P5013
  vivi_6411278:
    iter $P5005, $P5012
    set lowered_for_it__13, $P5005
    new $P5018, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5018, while642_handlers1282
    push_eh $P5018
  while642_test1279:
    set $P5017, lowered_for_it__13
    unless lowered_for_it__13 goto while642_done1283 
  while642_redo1281:
.annotate 'line', 922
    shift $P5014, lowered_for_it__13
    set __lowered_lex_434, $P5014
    isnull $I5003, __lowered_lex_434
    unless $I5003 goto if643_end1285 
    box $P5015, ""
    set __lowered_lex_434, $P5015
  if643_end1285:
    set $S5006, __lowered_lex_434
    concat $S5005, "\t", $S5006
    concat $S5004, $S5005, "\n"
    $P5016 = $P101."print"($S5004)
    set $P5017, $P5016
    goto while642_test1279 
  while642_handlers1282:
    .get_results ($P5018)
    pop_upto_eh $P5018
    getattribute $P5019, $P5018, 'type'
    eq $P5019, .CONTROL_LOOP_NEXT, while642_test1279
    eq $P5019, .CONTROL_LOOP_REDO, while642_redo1281
  while642_done1283:
    pop_eh 
    $P5020 = $P101."print"("\n")
    set __lowered_lex_440, 1
  while644_test1286:
    find_lex $I5005, "$send"
    islt $I5004, __lowered_lex_440, $I5005
    box $P5039, $I5004
    set $P5038, $P5039
    unless $I5004 goto while644_done1290 
  while644_redo1288:
.annotate 'line', 928
    set $S5008, __lowered_lex_440
    concat $S5007, $S5008, ":"
    $P5021 = $P101."print"($S5007)
    find_lex $P5026, "self"
    nqp_decontainerize $P5025, $P5026
    nqp_get_sc_object $P5027, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 3
    repr_get_attr_obj $P5028, $P5025, $P5027, "$!states", 0
    set fb_tmp_140, $P5028
    repr_defined $I5006, fb_tmp_140
    unless $I5006 goto if645_else1291 
    set $P5029, fb_tmp_140[__lowered_lex_440]
    set $P5031, $P5029
    goto if645_end1292
  if645_else1291:
    null $P5030
    set $P5031, $P5030
  if645_end1292:
    unless_null $P5031, vivi_6461293
    nqp_get_sc_object $P5032, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5031, $P5032
  vivi_6461293:
    set $P5022, $P5031
    iter $P5024, $P5031
  for_next1319:
    unless $P5024, for_done1321
    shift $P5034, $P5024
    shift $P5035, $P5024
    shift $P5036, $P5024
  for_redo1320:
    .const 'Sub' $P5033 = 'cuid_133_1431289885.65252' 
    capture_lex $P5033
    $P5022 = $P5033($P5034, $P5035, $P5036)
    goto for_next1319
  for_done1321:
    $P5037 = $P101."print"("\n")
    add $I5007, __lowered_lex_440, 1
    set __lowered_lex_440, $I5007
    box $P5040, __lowered_lex_440
    set $P5038, $P5040
    goto while644_test1286 
  while644_done1290:
    .return ($P5038) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_133_1431289885.65252") :anon :lex :outer("cuid_134_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 930
    .param pmc __lowered_lex_435 
    .param pmc __lowered_lex_436 
    .param pmc __lowered_lex_437 
    .local pmc __lowered_lex_438 
    .local pmc __lowered_lex_439 
    .local pmc fb_tmp_141 
    .local pmc fb_tmp_142 
    set $I5002, __lowered_lex_435
    band $I5001, $I5002, 255
    box $P5001, $I5001
    set __lowered_lex_438, $P5001
    find_lex $P5002, "$ACTIONS"
    set fb_tmp_141, $P5002
    repr_defined $I5003, fb_tmp_141
    unless $I5003 goto if647_else1294 
    set $I5004, __lowered_lex_438
    set $P5003, fb_tmp_141[$I5004]
    set $P5005, $P5003
    goto if647_end1295
  if647_else1294:
    null $P5004
    set $P5005, $P5004
  if647_end1295:
    unless_null $P5005, vivi_6481296
    nqp_get_sc_object $P5006, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5005, $P5006
  vivi_6481296:
    set __lowered_lex_439, $P5005
    set $N5001, __lowered_lex_438
    find_lex $P5007, "$EDGE_CODEPOINT"
    set $N5002, $P5007
    iseq $I5005, $N5001, $N5002
    set $I5007, $I5005
    if $I5005 goto unless650_end1300 
    set $N5003, __lowered_lex_438
    find_lex $P5008, "$EDGE_CODEPOINT_LL"
    set $N5004, $P5008
    iseq $I5006, $N5003, $N5004
    set $I5007, $I5006
  unless650_end1300:
    unless $I5007 goto if649_else1297 
.annotate 'line', 933
    find_lex $P5009, "$err"
    set $S5007, __lowered_lex_437
    concat $S5006, "\t", $S5007
    concat $S5005, $S5006, " "
    set $S5008, __lowered_lex_439
    concat $S5004, $S5005, $S5008
    concat $S5003, $S5004, " "
    set $I5008, __lowered_lex_436
    chr $S5009, $I5008
    concat $S5002, $S5003, $S5009
    concat $S5001, $S5002, "\n"
    $P5010 = $P5009."print"($S5001)
    set $P5040, $P5010
    goto if649_end1298
  if649_else1297:
    set $N5005, __lowered_lex_438
    find_lex $P5011, "$EDGE_FATE"
    set $N5006, $P5011
    iseq $I5009, $N5005, $N5006
    unless $I5009 goto if651_else1301 
.annotate 'line', 936
    find_lex $P5012, "$err"
    set $S5016, __lowered_lex_437
    concat $S5015, "\t", $S5016
    concat $S5014, $S5015, " "
    set $S5017, __lowered_lex_439
    concat $S5013, $S5014, $S5017
    concat $S5012, $S5013, " "
    set $S5018, __lowered_lex_436
    concat $S5011, $S5012, $S5018
    concat $S5010, $S5011, "\n"
    $P5013 = $P5012."print"($S5010)
    set $P5039, $P5013
    goto if651_end1302
  if651_else1301:
    set $N5007, __lowered_lex_438
    find_lex $P5014, "$EDGE_CHARCLASS"
    set $N5008, $P5014
    iseq $I5010, $N5007, $N5008
    set $I5012, $I5010
    if $I5010 goto unless653_end1306 
    set $N5009, __lowered_lex_438
    find_lex $P5015, "$EDGE_CHARCLASS_NEG"
    set $N5010, $P5015
    iseq $I5011, $N5009, $N5010
    set $I5012, $I5011
  unless653_end1306:
    unless $I5012 goto if652_else1303 
.annotate 'line', 939
    find_lex $P5016, "$err"
    set $S5025, __lowered_lex_437
    concat $S5024, "\t", $S5025
    concat $S5023, $S5024, " "
    set $S5026, __lowered_lex_439
    concat $S5022, $S5023, $S5026
    concat $S5021, $S5022, " "
    set $S5027, __lowered_lex_436
    concat $S5020, $S5021, $S5027
    concat $S5019, $S5020, "\n"
    $P5017 = $P5016."print"($S5019)
    set $P5038, $P5017
    goto if652_end1304
  if652_else1303:
    set $N5011, __lowered_lex_438
    find_lex $P5018, "$EDGE_CHARLIST"
    set $N5012, $P5018
    iseq $I5013, $N5011, $N5012
    set $I5015, $I5013
    if $I5013 goto unless655_end1310 
    set $N5013, __lowered_lex_438
    find_lex $P5019, "$EDGE_CHARLIST_NEG"
    set $N5014, $P5019
    iseq $I5014, $N5013, $N5014
    set $I5015, $I5014
  unless655_end1310:
    unless $I5015 goto if654_else1307 
.annotate 'line', 942
    find_lex $P5020, "$err"
    set $S5034, __lowered_lex_437
    concat $S5033, "\t", $S5034
    concat $S5032, $S5033, " "
    set $S5035, __lowered_lex_439
    concat $S5031, $S5032, $S5035
    concat $S5030, $S5031, " "
    set $S5036, __lowered_lex_436
    concat $S5029, $S5030, $S5036
    concat $S5028, $S5029, "\n"
    $P5021 = $P5020."print"($S5028)
    set $P5037, $P5021
    goto if654_end1308
  if654_else1307:
    set $N5015, __lowered_lex_438
    find_lex $P5022, "$EDGE_SUBRULE"
    set $N5016, $P5022
    iseq $I5016, $N5015, $N5016
    set $I5019, $I5016
    unless $I5016 goto if657_end1314 
    find_lex $P5024, "$?PACKAGE"
    get_who $P5023, $P5024
    set fb_tmp_142, $P5023
    repr_defined $I5018, fb_tmp_142
    unless $I5018 goto if658_else1315 
    set $P5025, fb_tmp_142["BOOTStr"]
    set $P5027, $P5025
    goto if658_end1316
  if658_else1315:
    null $P5026
    set $P5027, $P5026
  if658_end1316:
    unless_null $P5027, vivi_6601318
    nqp_get_sc_object $P5030, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 0
    get_who $P5029, $P5030
    set $P5028, $P5029["BOOTStr"]
    unless_null $P5028, vivi_6591317
    nqp_get_sc_object $P5031, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5028, $P5031
  vivi_6591317:
    set $P5027, $P5028
  vivi_6601318:
    type_check $I5017, __lowered_lex_436, $P5027
    set $I5019, $I5017
  if657_end1314:
    unless $I5019 goto if656_else1311 
.annotate 'line', 945
    find_lex $P5032, "$err"
    set $S5043, __lowered_lex_437
    concat $S5042, "\t", $S5043
    concat $S5041, $S5042, " "
    set $S5044, __lowered_lex_439
    concat $S5040, $S5041, $S5044
    concat $S5039, $S5040, " "
    set $S5045, __lowered_lex_436
    concat $S5038, $S5039, $S5045
    concat $S5037, $S5038, "\n"
    $P5033 = $P5032."print"($S5037)
    set $P5036, $P5033
    goto if656_end1312
  if656_else1311:
.annotate 'line', 948
    find_lex $P5034, "$err"
    set $S5050, __lowered_lex_437
    concat $S5049, "\t", $S5050
    concat $S5048, $S5049, " "
    set $S5051, __lowered_lex_439
    concat $S5047, $S5048, $S5051
    concat $S5046, $S5047, "\n"
    $P5035 = $P5034."print"($S5046)
    set $P5036, $P5035
  if656_end1312:
    set $P5037, $P5036
  if654_end1308:
    set $P5038, $P5037
  if652_end1304:
    set $P5039, $P5038
  if651_end1302:
    set $P5040, $P5039
  if649_end1298:
    .return ($P5040) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_135_1431289885.65252") :anon :lex :outer("cuid_126_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 967
    .const 'Sub' $P5005 = 'cuid_31_1431289885.65252' 
    capture_lex $P5005 
    .const 'Sub' $P5005 = 'cuid_32_1431289885.65252' 
    capture_lex $P5005 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .lex "%cursors_created", $P103 
    .lex "$cursors_total", $P104 
    new $P5001, 'Hash'
    set $P103, $P5001
    nqp_get_sc_object $P5002, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P104, $P5002
    .const 'Sub' $P5003 = 'cuid_31_1431289885.65252' 
    capture_lex $P5003
    .const 'Sub' $P5004 = 'cuid_32_1431289885.65252' 
    capture_lex $P5004
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "log_cc" :subid("cuid_31_1431289885.65252") :anon :lex :outer("cuid_135_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 981
    .param pmc __lowered_lex_445 
    .param pmc __lowered_lex_446 
    .local pmc tmp_5 
    .local pmc fb_tmp_143 
    .local pmc tmp_6 
    find_lex $P5001, "%cursors_created"
    set fb_tmp_143, $P5001
    repr_defined $I5001, fb_tmp_143
    unless $I5001 goto if661_else1322 
    set $S5001, __lowered_lex_446
    set $P5002, fb_tmp_143[$S5001]
    set $P5004, $P5002
    goto if661_end1323
  if661_else1322:
    null $P5003
    set $P5004, $P5003
  if661_end1323:
    unless_null $P5004, vivi_6621324
    nqp_get_sc_object $P5005, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5004, $P5005
  vivi_6621324:
    set tmp_5, $P5004
    find_lex $P5006, "%cursors_created"
    set $S5002, __lowered_lex_446
    set $I5003, tmp_5
    add $I5002, $I5003, 1
    box $P5007, $I5002
    set $P5006[$S5002], $P5007
    find_lex $P5001, "$cursors_total"
    set tmp_6, $P5001
    set $I5002, tmp_6
    add $I5001, $I5002, 1
    box $P5002, $I5001
    store_lex "$cursors_total", $P5002
    .return (tmp_6) 
.end
.HLL "nqp"
.namespace []
.sub "log_dump" :subid("cuid_32_1431289885.65252") :anon :lex :outer("cuid_135_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 985
    .param pmc __lowered_lex_448 
    .local pmc lowered_for_it__14 
    .local pmc __lowered_lex_447 
    find_lex $P5002, "%cursors_created"
    iter $P5001, $P5002
    set lowered_for_it__14, $P5001
    new $P5008, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5008, while663_handlers1328
    push_eh $P5008
  while663_test1325:
    set $P5007, lowered_for_it__14
    unless lowered_for_it__14 goto while663_done1329 
  while663_redo1327:
    shift $P5003, lowered_for_it__14
    set __lowered_lex_447, $P5003
.annotate 'line', 986
.annotate 'line', 987
    $P5004 = __lowered_lex_447."value"()
    set $S5003, $P5004
    concat $S5002, $S5003, "\t"
    $P5005 = __lowered_lex_447."key"()
    set $S5004, $P5005
    concat $S5001, $S5002, $S5004
    $P5006 = "&say"($S5001)
    set $P5007, $P5006
    goto while663_test1325 
  while663_handlers1328:
    .get_results ($P5008)
    pop_upto_eh $P5008
    getattribute $P5009, $P5008, 'type'
    eq $P5009, .CONTROL_LOOP_NEXT, while663_test1325
    eq $P5009, .CONTROL_LOOP_REDO, while663_redo1327
  while663_done1329:
    pop_eh 
.annotate 'line', 989
    find_lex $P5010, "$cursors_total"
    set $S5006, $P5010
    concat $S5005, "TOTAL: ", $S5006
    $P5011 = "&say"($S5005)
    .return ($P5011) 
.end
.loadlib "nqp_group"
.loadlib "nqp_ops"
.loadlib "nqp_bigint_ops"
.loadlib "trans_ops"
.loadlib "io_ops"
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_90_1431289885.65252") :anon :lex :outer("cuid_126_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 993
    .param pmc _lex_param_0 
    .const 'Sub' $P5064 = 'cuid_33_1431289885.65252' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_34_1431289885.65252' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_35_1431289885.65252' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_36_1431289885.65252' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_37_1431289885.65252' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_38_1431289885.65252' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_39_1431289885.65252' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_40_1431289885.65252' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_41_1431289885.65252' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_42_1431289885.65252' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_43_1431289885.65252' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_44_1431289885.65252' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_45_1431289885.65252' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_46_1431289885.65252' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_47_1431289885.65252' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_48_1431289885.65252' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_49_1431289885.65252' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_50_1431289885.65252' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_51_1431289885.65252' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_52_1431289885.65252' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_53_1431289885.65252' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_54_1431289885.65252' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_55_1431289885.65252' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_56_1431289885.65252' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_57_1431289885.65252' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_58_1431289885.65252' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_59_1431289885.65252' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_60_1431289885.65252' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_61_1431289885.65252' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_62_1431289885.65252' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_63_1431289885.65252' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_64_1431289885.65252' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_65_1431289885.65252' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_66_1431289885.65252' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_67_1431289885.65252' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_68_1431289885.65252' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_69_1431289885.65252' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_70_1431289885.65252' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_71_1431289885.65252' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_72_1431289885.65252' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_73_1431289885.65252' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_74_1431289885.65252' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_75_1431289885.65252' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_76_1431289885.65252' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_77_1431289885.65252' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_78_1431289885.65252' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_79_1431289885.65252' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_80_1431289885.65252' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_81_1431289885.65252' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_82_1431289885.65252' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_83_1431289885.65252' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_84_1431289885.65252' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_85_1431289885.65252' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_86_1431289885.65252' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_87_1431289885.65252' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_88_1431289885.65252' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_89_1431289885.65252' 
    capture_lex $P5064 
    .lex "$?PACKAGE", $P101 
    .lex "$?ROLE", $P102 
    .lex "$NO_CAPS", $P103 
    .lex "$NO_RESTART", $P104 
    .lex "$RESTART", $P105 
    .lex "$pass_mark", $P106 
    .lex "@EMPTY", $P107 
    .lex "$?CLASS", _lex_param_0 
    .const 'Sub' $P5001 = 'cuid_33_1431289885.65252' 
    capture_lex $P5001
    .const 'Sub' $P5002 = 'cuid_34_1431289885.65252' 
    capture_lex $P5002
    .const 'Sub' $P5003 = 'cuid_35_1431289885.65252' 
    capture_lex $P5003
    .const 'Sub' $P5004 = 'cuid_36_1431289885.65252' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_37_1431289885.65252' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_38_1431289885.65252' 
    capture_lex $P5006
    new $P5007, 'Hash'
    set $P103, $P5007
    .const 'Sub' $P5008 = 'cuid_39_1431289885.65252' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_40_1431289885.65252' 
    capture_lex $P5009
    box $P5010, 0
    set $P104, $P5010
    box $P5011, 1
    set $P105, $P5011
    .const 'Sub' $P5012 = 'cuid_41_1431289885.65252' 
    capture_lex $P5012
    .const 'Sub' $P5013 = 'cuid_42_1431289885.65252' 
    capture_lex $P5013
    .const 'Sub' $P5014 = 'cuid_43_1431289885.65252' 
    capture_lex $P5014
    .const 'Sub' $P5015 = 'cuid_44_1431289885.65252' 
    capture_lex $P5015
    .const 'Sub' $P5016 = 'cuid_45_1431289885.65252' 
    capture_lex $P5016
    .const 'Sub' $P5017 = 'cuid_46_1431289885.65252' 
    capture_lex $P5017
    .const 'Sub' $P5018 = 'cuid_47_1431289885.65252' 
    capture_lex $P5018
    box $P5019, 1
    set $P106, $P5019
    .const 'Sub' $P5020 = 'cuid_48_1431289885.65252' 
    capture_lex $P5020
    .const 'Sub' $P5021 = 'cuid_49_1431289885.65252' 
    capture_lex $P5021
    .const 'Sub' $P5022 = 'cuid_50_1431289885.65252' 
    capture_lex $P5022
    .const 'Sub' $P5023 = 'cuid_51_1431289885.65252' 
    capture_lex $P5023
    .const 'Sub' $P5024 = 'cuid_52_1431289885.65252' 
    capture_lex $P5024
    .const 'Sub' $P5025 = 'cuid_53_1431289885.65252' 
    capture_lex $P5025
    .const 'Sub' $P5026 = 'cuid_54_1431289885.65252' 
    capture_lex $P5026
    .const 'Sub' $P5027 = 'cuid_55_1431289885.65252' 
    capture_lex $P5027
    new $P5028, 'QRPA'
    set $P107, $P5028
    .const 'Sub' $P5029 = 'cuid_56_1431289885.65252' 
    capture_lex $P5029
    .const 'Sub' $P5030 = 'cuid_57_1431289885.65252' 
    capture_lex $P5030
    .const 'Sub' $P5031 = 'cuid_58_1431289885.65252' 
    capture_lex $P5031
    .const 'Sub' $P5032 = 'cuid_59_1431289885.65252' 
    capture_lex $P5032
    .const 'Sub' $P5033 = 'cuid_60_1431289885.65252' 
    capture_lex $P5033
    .const 'Sub' $P5034 = 'cuid_61_1431289885.65252' 
    capture_lex $P5034
    .const 'Sub' $P5035 = 'cuid_62_1431289885.65252' 
    capture_lex $P5035
    .const 'Sub' $P5036 = 'cuid_63_1431289885.65252' 
    capture_lex $P5036
    .const 'Sub' $P5037 = 'cuid_64_1431289885.65252' 
    capture_lex $P5037
    .const 'Sub' $P5038 = 'cuid_65_1431289885.65252' 
    capture_lex $P5038
    .const 'Sub' $P5039 = 'cuid_66_1431289885.65252' 
    capture_lex $P5039
    .const 'Sub' $P5040 = 'cuid_67_1431289885.65252' 
    capture_lex $P5040
    .const 'Sub' $P5041 = 'cuid_68_1431289885.65252' 
    capture_lex $P5041
    .const 'Sub' $P5042 = 'cuid_69_1431289885.65252' 
    capture_lex $P5042
    .const 'Sub' $P5043 = 'cuid_70_1431289885.65252' 
    capture_lex $P5043
    .const 'Sub' $P5044 = 'cuid_71_1431289885.65252' 
    capture_lex $P5044
    .const 'Sub' $P5045 = 'cuid_72_1431289885.65252' 
    capture_lex $P5045
    .const 'Sub' $P5046 = 'cuid_73_1431289885.65252' 
    capture_lex $P5046
    .const 'Sub' $P5047 = 'cuid_74_1431289885.65252' 
    capture_lex $P5047
    .const 'Sub' $P5048 = 'cuid_75_1431289885.65252' 
    capture_lex $P5048
    .const 'Sub' $P5049 = 'cuid_76_1431289885.65252' 
    capture_lex $P5049
    .const 'Sub' $P5050 = 'cuid_77_1431289885.65252' 
    capture_lex $P5050
    .const 'Sub' $P5051 = 'cuid_78_1431289885.65252' 
    capture_lex $P5051
    .const 'Sub' $P5052 = 'cuid_79_1431289885.65252' 
    capture_lex $P5052
    .const 'Sub' $P5053 = 'cuid_80_1431289885.65252' 
    capture_lex $P5053
    .const 'Sub' $P5054 = 'cuid_81_1431289885.65252' 
    capture_lex $P5054
    .const 'Sub' $P5055 = 'cuid_82_1431289885.65252' 
    capture_lex $P5055
    .const 'Sub' $P5056 = 'cuid_83_1431289885.65252' 
    capture_lex $P5056
    .const 'Sub' $P5057 = 'cuid_84_1431289885.65252' 
    capture_lex $P5057
    .const 'Sub' $P5058 = 'cuid_85_1431289885.65252' 
    capture_lex $P5058
    .const 'Sub' $P5059 = 'cuid_86_1431289885.65252' 
    capture_lex $P5059
    .const 'Sub' $P5060 = 'cuid_87_1431289885.65252' 
    capture_lex $P5060
    .const 'Sub' $P5061 = 'cuid_88_1431289885.65252' 
    capture_lex $P5061
    .const 'Sub' $P5062 = 'cuid_89_1431289885.65252' 
    capture_lex $P5062
    getinterp $P5063
    set $P5063, $P5063['lexpad']
    .return ($P5063) 
.end
.HLL "nqp"
.namespace []
.sub "orig" :subid("cuid_33_1431289885.65252") :anon :lex :outer("cuid_90_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 1004
    .param pmc __lowered_lex_1 
    nqp_decontainerize $P5002, __lowered_lex_1
    find_lex $P5003, "$?CLASS"
    repr_get_attr_obj $P5004, $P5002, $P5003, "$!shared"
    nqp_get_sc_object $P5005, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 35
    getattribute $P5001, $P5004, $P5005, "$!orig"
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "target" :subid("cuid_34_1431289885.65252") :anon :lex :outer("cuid_90_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 1005
    .param pmc __lowered_lex_2 
    nqp_decontainerize $P5001, __lowered_lex_2
    find_lex $P5002, "$?CLASS"
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!shared"
    nqp_get_sc_object $P5004, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 35
    repr_get_attr_str $S5001, $P5003, $P5004, "$!target", 2
    .return ($S5001) 
.end
.HLL "nqp"
.namespace []
.sub "from" :subid("cuid_35_1431289885.65252") :anon :lex :outer("cuid_90_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 1006
    .param pmc __lowered_lex_3 
    nqp_decontainerize $P5001, __lowered_lex_3
    find_lex $P5002, "$?CLASS"
    repr_get_attr_int $I5001, $P5001, $P5002, "$!from"
    .return ($I5001) 
.end
.HLL "nqp"
.namespace []
.sub "pos" :subid("cuid_36_1431289885.65252") :anon :lex :outer("cuid_90_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 1007
    .param pmc __lowered_lex_4 
    nqp_decontainerize $P5001, __lowered_lex_4
    find_lex $P5002, "$?CLASS"
    repr_get_attr_int $I5001, $P5001, $P5002, "$!pos"
    .return ($I5001) 
.end
.HLL "nqp"
.namespace []
.sub "prune" :subid("cuid_37_1431289885.65252") :anon :lex :outer("cuid_90_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 1009
    .param pmc __lowered_lex_5 
    nqp_decontainerize $P5001, __lowered_lex_5
    find_lex $P5002, "$?CLASS"
    nqp_get_sc_object $P5003, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    repr_bind_attr_obj $P5001, $P5002, "$!match", $P5003
    nqp_decontainerize $P5004, __lowered_lex_5
    find_lex $P5005, "$?CLASS"
    nqp_get_sc_object $P5006, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    repr_bind_attr_obj $P5004, $P5005, "$!bstack", $P5006
    nqp_decontainerize $P5007, __lowered_lex_5
    find_lex $P5008, "$?CLASS"
    nqp_get_sc_object $P5009, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    repr_bind_attr_obj $P5007, $P5008, "$!cstack", $P5009
    nqp_decontainerize $P5010, __lowered_lex_5
    find_lex $P5011, "$?CLASS"
    nqp_get_sc_object $P5012, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    repr_bind_attr_obj $P5010, $P5011, "$!regexsub", $P5012
    .return ($P5012) 
.end
.HLL "nqp"
.namespace []
.sub "!APPEND_TO_ORIG" :subid("cuid_38_1431289885.65252") :anon :lex :outer("cuid_90_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 1016
    .param pmc __lowered_lex_6 
    .param pmc __lowered_lex_7 
    .local pmc __lowered_lex_8 
    .local pmc __lowered_lex_9 
    nqp_decontainerize $P5002, __lowered_lex_6
    find_lex $P5003, "$?CLASS"
    repr_get_attr_obj $P5004, $P5002, $P5003, "$!shared"
    nqp_get_sc_object $P5005, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 35
    getattribute $P5001, $P5004, $P5005, "$!orig"
    set __lowered_lex_8, $P5001
    set $S5002, __lowered_lex_8
    set $S5003, __lowered_lex_7
    concat $S5001, $S5002, $S5003
    box $P5006, $S5001
    set __lowered_lex_8, $P5006
    nqp_decontainerize $P5007, __lowered_lex_6
    find_lex $P5008, "$?CLASS"
    repr_get_attr_obj $P5009, $P5007, $P5008, "$!shared"
    nqp_get_sc_object $P5010, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 35
    setattribute $P5009, $P5010, "$!orig", __lowered_lex_8
    nqp_decontainerize $P5011, __lowered_lex_6
    find_lex $P5012, "$?CLASS"
    repr_get_attr_obj $P5013, $P5011, $P5012, "$!shared"
    nqp_get_sc_object $P5014, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 35
    repr_get_attr_str $S5004, $P5013, $P5014, "$!target", 2
    box $P5015, $S5004
    set __lowered_lex_9, $P5015
    set $S5006, __lowered_lex_9
    set $S5007, __lowered_lex_7
    concat $S5005, $S5006, $S5007
    box $P5016, $S5005
    set __lowered_lex_9, $P5016
    nqp_decontainerize $P5017, __lowered_lex_6
    find_lex $P5018, "$?CLASS"
    repr_get_attr_obj $P5019, $P5017, $P5018, "$!shared"
    nqp_get_sc_object $P5020, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 35
    set $S5008, __lowered_lex_9
    repr_bind_attr_str $P5019, $P5020, "$!target", 2, $S5008
    .return (2) 
.end
.HLL "nqp"
.namespace []
.sub "CAPHASH" :subid("cuid_39_1431289885.65252") :anon :lex :outer("cuid_90_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 1026
    .param pmc __lowered_lex_11 
    .local pmc __lowered_lex_12 
    .local pmc __lowered_lex_13 
    .local pmc __lowered_lex_14 
    .local string __lowered_lex_15 
    .local pmc __lowered_lex_16 
    .local int __lowered_lex_17 
    .local int __lowered_lex_18 
    .local pmc __lowered_lex_19 
    .local pmc __lowered_lex_20 
    .local pmc __lowered_lex_21 
    .local pmc fb_tmp_144 
    .local pmc fb_tmp_145 
    .local pmc lowered_for_it__1 
    .local pmc __lowered_lex_10 
    .local pmc fb_tmp_146 
    .local pmc fb_tmp_147 
    .local int tmp_7 
    nqp_get_sc_object $P5001, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_14, $P5001
    set __lowered_lex_15, ""
    nqp_get_sc_object $P5002, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_16, $P5002
    set __lowered_lex_17, 0
    set __lowered_lex_18, 0
    nqp_get_sc_object $P5003, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_19, $P5003
    nqp_get_sc_object $P5004, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_20, $P5004
    nqp_get_sc_object $P5005, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_21, $P5005
    new $P5006, 'Hash'
    set __lowered_lex_12, $P5006
    find_lex $P5007, "$NO_CAPS"
    set __lowered_lex_13, $P5007
    nqp_decontainerize $P5008, __lowered_lex_11
    find_lex $P5009, "$?CLASS"
    repr_get_attr_obj $P5010, $P5008, $P5009, "$!regexsub"
    isnull $I5002, $P5010
    not $I5001, $I5002
    set $I5004, $I5001
    unless $I5001 goto if665_end1333 
    nqp_decontainerize $P5011, __lowered_lex_11
    find_lex $P5012, "$?CLASS"
    repr_get_attr_obj $P5013, $P5011, $P5012, "$!regexsub"
    defined $I5003, $P5013
    set $I5004, $I5003
  if665_end1333:
    unless $I5004 goto if664_end1331 
.annotate 'line', 1038
    nqp_decontainerize $P5014, __lowered_lex_11
    find_lex $P5015, "$?CLASS"
    repr_get_attr_obj $P5016, $P5014, $P5015, "$!regexsub"
    can $I5005, $P5016, "CAPS"
    unless $I5005 goto if666_else1334 
.annotate 'line', 1039
    nqp_decontainerize $P5017, __lowered_lex_11
    find_lex $P5018, "$?CLASS"
    repr_get_attr_obj $P5019, $P5017, $P5018, "$!regexsub"
    $P5020 = $P5019."CAPS"()
    set $P5022, $P5020
    goto if666_end1335
  if666_else1334:
    null $P5021
    set $P5022, $P5021
  if666_end1335:
    set __lowered_lex_13, $P5022
    isnull $I5007, __lowered_lex_13
    not $I5006, $I5007
    box $P5024, $I5006
    set $P5023, $P5024
    unless $I5006 goto if668_end1339 
    set $P5023, __lowered_lex_13
  if668_end1339:
    set $P5033, $P5023
    unless $P5023 goto if667_end1337 
.annotate 'line', 1040
    iter $P5025, __lowered_lex_13
    set __lowered_lex_14, $P5025
  while669_test1340:
    set $P5032, __lowered_lex_14
    unless __lowered_lex_14 goto while669_done1344 
  while669_redo1342:
.annotate 'line', 1042
    shift $P5026, __lowered_lex_14
    $P5027 = $P5026."key"()
    set $S5001, $P5027
    set __lowered_lex_15, $S5001
    set $P5028, __lowered_lex_13[__lowered_lex_15]
    set $N5001, $P5028
    set $N5002, 2
    isge $I5008, $N5001, $N5002
    box $P5031, $I5008
    set $P5030, $P5031
    unless $I5008 goto if670_end1346 
    new $P5029, 'QRPA'
    set __lowered_lex_12[__lowered_lex_15], $P5029
    set $P5030, $P5029
  if670_end1346:
    set $P5032, $P5030
    goto while669_test1340 
  while669_done1344:
    set $P5033, $P5032
  if667_end1337:
  if664_end1331:
    nqp_decontainerize $P5034, __lowered_lex_11
    find_lex $P5035, "$?CLASS"
    repr_get_attr_obj $P5036, $P5034, $P5035, "$!cstack"
    isnull $I5010, $P5036
    not $I5009, $I5010
    box $P5041, $I5009
    set $P5040, $P5041
    unless $I5009 goto if672_end1350 
    nqp_decontainerize $P5037, __lowered_lex_11
    find_lex $P5038, "$?CLASS"
    repr_get_attr_obj $P5039, $P5037, $P5038, "$!cstack"
    set $P5040, $P5039
  if672_end1350:
    unless $P5040 goto if671_end1348 
.annotate 'line', 1048
    nqp_decontainerize $P5042, __lowered_lex_11
    find_lex $P5043, "$?CLASS"
    repr_get_attr_obj $P5044, $P5042, $P5043, "$!cstack"
    set __lowered_lex_16, $P5044
    elements $I5011, __lowered_lex_16
    set __lowered_lex_18, $I5011
  while673_test1351:
    islt $I5012, __lowered_lex_17, __lowered_lex_18
    box $P5075, $I5012
    set $P5074, $P5075
    unless $I5012 goto while673_done1355 
  while673_redo1353:
.annotate 'line', 1051
    set $P5045, __lowered_lex_16[__lowered_lex_17]
    set __lowered_lex_19, $P5045
.annotate 'line', 1053
    $P5046 = __lowered_lex_19."MATCH"()
    set __lowered_lex_20, $P5046
    find_lex $P5048, "$?CLASS"
    getattribute $P5047, __lowered_lex_19, $P5048, "$!name"
    set __lowered_lex_21, $P5047
    isnull $I5014, __lowered_lex_21
    not $I5013, $I5014
    set $I5016, $I5013
    unless $I5013 goto if675_end1359 
    defined $I5015, __lowered_lex_21
    set $I5016, $I5015
  if675_end1359:
    unless $I5016 goto if674_end1357 
.annotate 'line', 1055
    set $S5002, __lowered_lex_21
    index $I5018, $S5002, "=", 0
    set $N5003, $I5018
    set $N5004, 0
    islt $I5017, $N5003, $N5004
    unless $I5017 goto if676_else1360 
.annotate 'line', 1056
    set fb_tmp_144, __lowered_lex_13
    repr_defined $I5020, fb_tmp_144
    unless $I5020 goto if678_else1364 
    set $S5003, __lowered_lex_21
    set $P5049, fb_tmp_144[$S5003]
    set $P5051, $P5049
    goto if678_end1365
  if678_else1364:
    null $P5050
    set $P5051, $P5050
  if678_end1365:
    unless_null $P5051, vivi_6791366
    nqp_get_sc_object $P5052, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5051, $P5052
  vivi_6791366:
    set $N5005, $P5051
    set $N5006, 2
    isge $I5019, $N5005, $N5006
    unless $I5019 goto if677_else1362 
    set fb_tmp_145, __lowered_lex_12
    repr_defined $I5021, fb_tmp_145
    unless $I5021 goto if680_else1367 
    set $S5004, __lowered_lex_21
    set $P5053, fb_tmp_145[$S5004]
    set $P5055, $P5053
    goto if680_end1368
  if680_else1367:
    null $P5054
    set $P5055, $P5054
  if680_end1368:
    unless_null $P5055, vivi_6811369
    nqp_get_sc_object $P5056, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5055, $P5056
  vivi_6811369:
    push $P5055, __lowered_lex_20
    set $P5057, $P5055
    goto if677_end1363
  if677_else1362:
    set $S5005, __lowered_lex_21
    set __lowered_lex_12[$S5005], __lowered_lex_20
    set $P5057, __lowered_lex_20
  if677_end1363:
    set $P5073, $P5057
    goto if676_end1361
  if676_else1360:
.annotate 'line', 1061
    set $S5006, __lowered_lex_21
    split $P5059, "=", $S5006
    iter $P5058, $P5059
    set lowered_for_it__1, $P5058
    new $P5071, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5071, while682_handlers1373
    push_eh $P5071
  while682_test1370:
    set $P5070, lowered_for_it__1
    unless lowered_for_it__1 goto while682_done1374 
  while682_redo1372:
.annotate 'line', 1062
    shift $P5060, lowered_for_it__1
    set __lowered_lex_10, $P5060
    set fb_tmp_146, __lowered_lex_13
    repr_defined $I5023, fb_tmp_146
    unless $I5023 goto if684_else1377 
    set $S5007, __lowered_lex_10
    set $P5061, fb_tmp_146[$S5007]
    set $P5063, $P5061
    goto if684_end1378
  if684_else1377:
    null $P5062
    set $P5063, $P5062
  if684_end1378:
    unless_null $P5063, vivi_6851379
    nqp_get_sc_object $P5064, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5063, $P5064
  vivi_6851379:
    set $N5007, $P5063
    set $N5008, 2
    isge $I5022, $N5007, $N5008
    unless $I5022 goto if683_else1375 
    set fb_tmp_147, __lowered_lex_12
    repr_defined $I5024, fb_tmp_147
    unless $I5024 goto if686_else1380 
    set $S5008, __lowered_lex_10
    set $P5065, fb_tmp_147[$S5008]
    set $P5067, $P5065
    goto if686_end1381
  if686_else1380:
    null $P5066
    set $P5067, $P5066
  if686_end1381:
    unless_null $P5067, vivi_6871382
    nqp_get_sc_object $P5068, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5067, $P5068
  vivi_6871382:
    push $P5067, __lowered_lex_20
    set $P5069, $P5067
    goto if683_end1376
  if683_else1375:
    set $S5009, __lowered_lex_10
    set __lowered_lex_12[$S5009], __lowered_lex_20
    set $P5069, __lowered_lex_20
  if683_end1376:
    set $P5070, $P5069
    goto while682_test1370 
  while682_handlers1373:
    .get_results ($P5071)
    pop_upto_eh $P5071
    getattribute $P5072, $P5071, 'type'
    eq $P5072, .CONTROL_LOOP_NEXT, while682_test1370
    eq $P5072, .CONTROL_LOOP_REDO, while682_redo1372
  while682_done1374:
    pop_eh 
    set $P5073, $P5070
  if676_end1361:
  if674_end1357:
    set tmp_7, __lowered_lex_17
    add $I5025, tmp_7, 1
    set __lowered_lex_17, $I5025
    box $P5076, tmp_7
    set $P5074, $P5076
    goto while673_test1351 
  while673_done1355:
  if671_end1348:
    nqp_decontainerize $P5077, __lowered_lex_11
    find_lex $P5078, "$?CLASS"
    repr_get_attr_obj $P5079, $P5077, $P5078, "$!bstack"
    defined $I5025, $P5079
    if $I5025 goto unless688_end1384 
.annotate 'line', 1075
    nqp_decontainerize $P5080, __lowered_lex_11
    find_lex $P5081, "$?CLASS"
    null $P5082
    repr_bind_attr_obj $P5080, $P5081, "$!cstack", $P5082
    nqp_decontainerize $P5083, __lowered_lex_11
    find_lex $P5084, "$?CLASS"
    null $P5085
    repr_bind_attr_obj $P5083, $P5084, "$!regexsub", $P5085
  unless688_end1384:
    .return (__lowered_lex_12) 
.end
.HLL "nqp"
.namespace []
.sub "!cursor_init" :subid("cuid_40_1431289885.65252") :anon :lex :outer("cuid_90_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 1083
    .param pmc __lowered_lex_22 
    .param pmc __lowered_lex_23 
    .param pmc __lowered_lex_24 :named("p") :optional 
    .param int haz_param_15 :opt_flag 
    .param pmc __lowered_lex_25 :named("c") :optional 
    .param int haz_param_16 :opt_flag 
    .param pmc __lowered_lex_26 :named("shared") :optional 
    .param int haz_param_17 :opt_flag 
    .local pmc __lowered_lex_27 
    if haz_param_15, default1389
    box $P5021, 0
    set __lowered_lex_24, $P5021
  default1389:
    if haz_param_16, default1390
    nqp_get_sc_object $P5022, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_25, $P5022
  default1390:
    if haz_param_17, default1391
    nqp_get_sc_object $P5023, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_26, $P5023
  default1391:
.annotate 'line', 1084
    nqp_decontainerize $P5001, __lowered_lex_22
    $P5002 = $P5001."CREATE"()
    set __lowered_lex_27, $P5002
    if __lowered_lex_26 goto unless689_end1386 
.annotate 'line', 1085
    nqp_get_sc_object $P5004, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 35
    repr_instance_of $P5003, $P5004
    set __lowered_lex_26, $P5003
    nqp_get_sc_object $P5005, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 35
    find_lex $P5006, "$?CLASS"
    setattribute __lowered_lex_26, $P5005, "$!CUR_CLASS", $P5006
    nqp_get_sc_object $P5007, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 35
    setattribute __lowered_lex_26, $P5007, "$!orig", __lowered_lex_23
    nqp_get_sc_object $P5008, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 35
    set $S5002, __lowered_lex_23
    find_encoding $I5001, "ucs4"
    trans_encoding $S5001, $S5002, $I5001
    repr_bind_attr_str __lowered_lex_26, $P5008, "$!target", 2, $S5001
    nqp_get_sc_object $P5009, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 35
    repr_bind_attr_int __lowered_lex_26, $P5009, "$!highwater", 3, 0
    nqp_get_sc_object $P5010, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 35
    new $P5011, 'ResizableStringArray'
    setattribute __lowered_lex_26, $P5010, "@!highexpect", $P5011
    nqp_get_sc_object $P5012, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 35
    new $P5013, 'Hash'
    setattribute __lowered_lex_26, $P5012, "%!marks", $P5013
  unless689_end1386:
    find_lex $P5014, "$?CLASS"
    setattribute __lowered_lex_27, $P5014, "$!shared", __lowered_lex_26
    defined $I5002, __lowered_lex_25
    unless $I5002 goto if690_else1387 
.annotate 'line', 1096
    find_lex $P5015, "$?CLASS"
    repr_bind_attr_int __lowered_lex_27, $P5015, "$!from", -1
    find_lex $P5016, "$?CLASS"
    set $I5003, __lowered_lex_25
    repr_bind_attr_int __lowered_lex_27, $P5016, "$!pos", $I5003
    goto if690_end1388
  if690_else1387:
.annotate 'line', 1100
    find_lex $P5017, "$?CLASS"
    set $I5004, __lowered_lex_24
    repr_bind_attr_int __lowered_lex_27, $P5017, "$!from", $I5004
    find_lex $P5018, "$?CLASS"
    set $I5005, __lowered_lex_24
    repr_bind_attr_int __lowered_lex_27, $P5018, "$!pos", $I5005
  if690_end1388:
    nqp_get_sc_object $P5019, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 35
.annotate 'line', 1104
    $P5020 = __lowered_lex_27."!cursor_start_cur"()
    setattribute __lowered_lex_26, $P5019, "$!fail_cursor", $P5020
    .return (__lowered_lex_27) 
.end
.HLL "nqp"
.namespace []
.sub "!cursor_start_all" :subid("cuid_41_1431289885.65252") :anon :lex :outer("cuid_90_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 1112
    .param pmc __lowered_lex_28 
    .local pmc __lowered_lex_29 
    .local pmc __lowered_lex_30 
    .local pmc __lowered_lex_31 
    new $P5001, 'QRPA'
    set __lowered_lex_29, $P5001
    nqp_decontainerize $P5003, __lowered_lex_28
    repr_instance_of $P5002, $P5003
    set __lowered_lex_30, $P5002
    getinterp $P5004
    set $P5004, $P5004['sub';1]
    set __lowered_lex_31, $P5004
    find_lex $P5005, "$?CLASS"
    nqp_decontainerize $P5006, __lowered_lex_28
    find_lex $P5007, "$?CLASS"
    repr_get_attr_obj $P5008, $P5006, $P5007, "$!shared"
    setattribute __lowered_lex_30, $P5005, "$!shared", $P5008
    find_lex $P5009, "$?CLASS"
    get_sub_code_object $P5010, __lowered_lex_31
    unless_null $P5010, vivi_6911392
    set $P5010, __lowered_lex_31
  vivi_6911392:
    setattribute __lowered_lex_30, $P5009, "$!regexsub", $P5010
    nqp_decontainerize $P5011, __lowered_lex_28
    find_lex $P5012, "$?CLASS"
    repr_get_attr_obj $P5013, $P5011, $P5012, "$!restart"
    defined $I5001, $P5013
    unless $I5001 goto if692_else1393 
.annotate 'line', 1120
    find_lex $P5014, "$?CLASS"
    nqp_decontainerize $P5015, __lowered_lex_28
    find_lex $P5016, "$?CLASS"
    repr_get_attr_int $I5002, $P5015, $P5016, "$!pos"
    repr_bind_attr_int __lowered_lex_30, $P5014, "$!pos", $I5002
    nqp_decontainerize $P5017, __lowered_lex_28
    find_lex $P5018, "$?CLASS"
    repr_get_attr_obj $P5019, $P5017, $P5018, "$!cstack"
    unless $P5019 goto if693_end1396 
    find_lex $P5020, "$?CLASS"
    nqp_decontainerize $P5022, __lowered_lex_28
    find_lex $P5023, "$?CLASS"
    repr_get_attr_obj $P5024, $P5022, $P5023, "$!cstack"
    repr_clone $P5021, $P5024
    setattribute __lowered_lex_30, $P5020, "$!cstack", $P5021
  if693_end1396:
    set __lowered_lex_29[0], __lowered_lex_30
    nqp_decontainerize $P5025, __lowered_lex_28
    find_lex $P5026, "$?CLASS"
    repr_get_attr_obj $P5027, $P5025, $P5026, "$!shared"
    nqp_get_sc_object $P5028, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 35
    repr_get_attr_str $S5001, $P5027, $P5028, "$!target", 2
    box $P5029, $S5001
    set __lowered_lex_29[1], $P5029
    find_lex $P5030, "$?CLASS"
    nqp_decontainerize $P5031, __lowered_lex_28
    find_lex $P5032, "$?CLASS"
    repr_get_attr_int $I5003, $P5031, $P5032, "$!from"
    repr_bind_attr_int __lowered_lex_30, $P5030, "$!from", $I5003
    box $P5033, $I5003
    set __lowered_lex_29[2], $P5033
    find_lex $P5034, "$?CLASS"
    set __lowered_lex_29[3], $P5034
    find_lex $P5035, "$?CLASS"
    nqp_decontainerize $P5037, __lowered_lex_28
    find_lex $P5038, "$?CLASS"
    repr_get_attr_obj $P5039, $P5037, $P5038, "$!bstack"
    repr_clone $P5036, $P5039
    setattribute __lowered_lex_30, $P5035, "$!bstack", $P5036
    set __lowered_lex_29[4], $P5036
    find_lex $P5040, "$RESTART"
    set __lowered_lex_29[5], $P5040
    set $P5055, __lowered_lex_29
    goto if692_end1394
  if692_else1393:
.annotate 'line', 1131
    find_lex $P5041, "$?CLASS"
    repr_bind_attr_int __lowered_lex_30, $P5041, "$!pos", -3
    set __lowered_lex_29[0], __lowered_lex_30
    nqp_decontainerize $P5042, __lowered_lex_28
    find_lex $P5043, "$?CLASS"
    repr_get_attr_obj $P5044, $P5042, $P5043, "$!shared"
    nqp_get_sc_object $P5045, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 35
    repr_get_attr_str $S5002, $P5044, $P5045, "$!target", 2
    box $P5046, $S5002
    set __lowered_lex_29[1], $P5046
    find_lex $P5047, "$?CLASS"
    nqp_decontainerize $P5048, __lowered_lex_28
    find_lex $P5049, "$?CLASS"
    repr_get_attr_int $I5004, $P5048, $P5049, "$!pos"
    repr_bind_attr_int __lowered_lex_30, $P5047, "$!from", $I5004
    box $P5050, $I5004
    set __lowered_lex_29[2], $P5050
    find_lex $P5051, "$?CLASS"
    set __lowered_lex_29[3], $P5051
    find_lex $P5052, "$?CLASS"
    new $P5053, 'ResizableIntegerArray'
    setattribute __lowered_lex_30, $P5052, "$!bstack", $P5053
    set __lowered_lex_29[4], $P5053
    find_lex $P5054, "$NO_RESTART"
    set __lowered_lex_29[5], $P5054
    set $P5055, __lowered_lex_29
  if692_end1394:
    .return ($P5055) 
.end
.HLL "nqp"
.namespace []
.sub "!cursor_start" :subid("cuid_42_1431289885.65252") :anon :lex :outer("cuid_90_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 1145
    .param pmc __lowered_lex_32 
    .local pmc __lowered_lex_33 
    .local pmc __lowered_lex_34 
    nqp_decontainerize $P5002, __lowered_lex_32
    repr_instance_of $P5001, $P5002
    set __lowered_lex_33, $P5001
    getinterp $P5003
    set $P5003, $P5003['sub';1]
    set __lowered_lex_34, $P5003
    find_lex $P5004, "$?CLASS"
    nqp_decontainerize $P5005, __lowered_lex_32
    find_lex $P5006, "$?CLASS"
    repr_get_attr_obj $P5007, $P5005, $P5006, "$!shared"
    setattribute __lowered_lex_33, $P5004, "$!shared", $P5007
    find_lex $P5008, "$?CLASS"
    get_sub_code_object $P5009, __lowered_lex_34
    unless_null $P5009, vivi_6941397
    set $P5009, __lowered_lex_34
  vivi_6941397:
    setattribute __lowered_lex_33, $P5008, "$!regexsub", $P5009
    nqp_decontainerize $P5010, __lowered_lex_32
    find_lex $P5011, "$?CLASS"
    repr_get_attr_obj $P5012, $P5010, $P5011, "$!restart"
    defined $I5001, $P5012
    unless $I5001 goto if695_else1398 
.annotate 'line', 1152
    find_lex $P5013, "$?CLASS"
    nqp_decontainerize $P5014, __lowered_lex_32
    find_lex $P5015, "$?CLASS"
    repr_get_attr_int $I5002, $P5014, $P5015, "$!pos"
    repr_bind_attr_int __lowered_lex_33, $P5013, "$!pos", $I5002
    nqp_decontainerize $P5016, __lowered_lex_32
    find_lex $P5017, "$?CLASS"
    repr_get_attr_obj $P5018, $P5016, $P5017, "$!cstack"
    unless $P5018 goto if696_end1401 
    find_lex $P5019, "$?CLASS"
    nqp_decontainerize $P5021, __lowered_lex_32
    find_lex $P5022, "$?CLASS"
    repr_get_attr_obj $P5023, $P5021, $P5022, "$!cstack"
    repr_clone $P5020, $P5023
    setattribute __lowered_lex_33, $P5019, "$!cstack", $P5020
  if696_end1401:
    find_lex $P5024, "$?CLASS"
    nqp_decontainerize $P5025, __lowered_lex_32
    find_lex $P5026, "$?CLASS"
    repr_get_attr_int $I5003, $P5025, $P5026, "$!from"
    repr_bind_attr_int __lowered_lex_33, $P5024, "$!from", $I5003
    find_lex $P5027, "$?CLASS"
    nqp_decontainerize $P5029, __lowered_lex_32
    find_lex $P5030, "$?CLASS"
    repr_get_attr_obj $P5031, $P5029, $P5030, "$!bstack"
    repr_clone $P5028, $P5031
    setattribute __lowered_lex_33, $P5027, "$!bstack", $P5028
    set $P5038, __lowered_lex_33
    goto if695_end1399
  if695_else1398:
.annotate 'line', 1159
    find_lex $P5032, "$?CLASS"
    repr_bind_attr_int __lowered_lex_33, $P5032, "$!pos", -3
    find_lex $P5033, "$?CLASS"
    nqp_decontainerize $P5034, __lowered_lex_32
    find_lex $P5035, "$?CLASS"
    repr_get_attr_int $I5004, $P5034, $P5035, "$!pos"
    repr_bind_attr_int __lowered_lex_33, $P5033, "$!from", $I5004
    find_lex $P5036, "$?CLASS"
    new $P5037, 'ResizableIntegerArray'
    setattribute __lowered_lex_33, $P5036, "$!bstack", $P5037
    set $P5038, __lowered_lex_33
  if695_end1399:
    .return ($P5038) 
.end
.HLL "nqp"
.namespace []
.sub "!cursor_start_cur" :subid("cuid_43_1431289885.65252") :anon :lex :outer("cuid_90_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 1168
    .param pmc __lowered_lex_35 
    .local pmc __lowered_lex_36 
    .local pmc __lowered_lex_37 
    nqp_decontainerize $P5002, __lowered_lex_35
    repr_instance_of $P5001, $P5002
    set __lowered_lex_36, $P5001
    getinterp $P5003
    set $P5003, $P5003['sub';1]
    set __lowered_lex_37, $P5003
    find_lex $P5004, "$?CLASS"
    nqp_decontainerize $P5005, __lowered_lex_35
    find_lex $P5006, "$?CLASS"
    repr_get_attr_obj $P5007, $P5005, $P5006, "$!shared"
    setattribute __lowered_lex_36, $P5004, "$!shared", $P5007
    find_lex $P5008, "$?CLASS"
    get_sub_code_object $P5009, __lowered_lex_37
    unless_null $P5009, vivi_6971402
    set $P5009, __lowered_lex_37
  vivi_6971402:
    setattribute __lowered_lex_36, $P5008, "$!regexsub", $P5009
    nqp_decontainerize $P5010, __lowered_lex_35
    find_lex $P5011, "$?CLASS"
    repr_get_attr_obj $P5012, $P5010, $P5011, "$!restart"
    defined $I5001, $P5012
    unless $I5001 goto if698_end1404 
.annotate 'line', 1175
    box $P5013, "!cursor_start_cur cannot restart a cursor"
    die $P5013
  if698_end1404:
    find_lex $P5014, "$?CLASS"
    repr_bind_attr_int __lowered_lex_36, $P5014, "$!pos", -3
    find_lex $P5015, "$?CLASS"
    nqp_decontainerize $P5016, __lowered_lex_35
    find_lex $P5017, "$?CLASS"
    repr_get_attr_int $I5002, $P5016, $P5017, "$!pos"
    repr_bind_attr_int __lowered_lex_36, $P5015, "$!from", $I5002
    find_lex $P5018, "$?CLASS"
    new $P5019, 'ResizableIntegerArray'
    setattribute __lowered_lex_36, $P5018, "$!bstack", $P5019
    .return (__lowered_lex_36) 
.end
.HLL "nqp"
.namespace []
.sub "!cursor_start_fail" :subid("cuid_44_1431289885.65252") :anon :lex :outer("cuid_90_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 1184
    .param pmc __lowered_lex_38 
    nqp_decontainerize $P5002, __lowered_lex_38
    find_lex $P5003, "$?CLASS"
    repr_get_attr_obj $P5004, $P5002, $P5003, "$!shared"
    nqp_get_sc_object $P5005, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 35
    getattribute $P5001, $P5004, $P5005, "$!fail_cursor"
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "!cursor_start_subcapture" :subid("cuid_45_1431289885.65252") :anon :lex :outer("cuid_90_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 1188
    .param pmc __lowered_lex_39 
    .param pmc __lowered_lex_40 
    .local pmc __lowered_lex_41 
    nqp_decontainerize $P5002, __lowered_lex_39
    repr_instance_of $P5001, $P5002
    set __lowered_lex_41, $P5001
    find_lex $P5003, "$?CLASS"
    nqp_decontainerize $P5004, __lowered_lex_39
    find_lex $P5005, "$?CLASS"
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!shared"
    setattribute __lowered_lex_41, $P5003, "$!shared", $P5006
    find_lex $P5007, "$?CLASS"
    set $I5001, __lowered_lex_40
    repr_bind_attr_int __lowered_lex_41, $P5007, "$!from", $I5001
    find_lex $P5008, "$?CLASS"
    repr_bind_attr_int __lowered_lex_41, $P5008, "$!pos", -3
    .return (__lowered_lex_41) 
.end
.HLL "nqp"
.namespace []
.sub "!cursor_capture" :subid("cuid_46_1431289885.65252") :anon :lex :outer("cuid_90_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 1196
    .param pmc __lowered_lex_42 
    .param pmc __lowered_lex_43 
    .param pmc __lowered_lex_44 
    nqp_decontainerize $P5001, __lowered_lex_42
    find_lex $P5002, "$?CLASS"
    null $P5003
    repr_bind_attr_obj $P5001, $P5002, "$!match", $P5003
    nqp_decontainerize $P5004, __lowered_lex_42
    find_lex $P5005, "$?CLASS"
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!cstack"
    defined $I5001, $P5006
    if $I5001 goto unless699_end1406 
    nqp_decontainerize $P5007, __lowered_lex_42
    find_lex $P5008, "$?CLASS"
    new $P5009, 'QRPA'
    repr_bind_attr_obj $P5007, $P5008, "$!cstack", $P5009
  unless699_end1406:
    nqp_decontainerize $P5010, __lowered_lex_42
    find_lex $P5011, "$?CLASS"
    repr_get_attr_obj $P5012, $P5010, $P5011, "$!cstack"
    push $P5012, __lowered_lex_43
    find_lex $P5013, "$?CLASS"
    setattribute __lowered_lex_43, $P5013, "$!name", __lowered_lex_44
    nqp_decontainerize $P5014, __lowered_lex_42
    find_lex $P5015, "$?CLASS"
    repr_get_attr_obj $P5016, $P5014, $P5015, "$!bstack"
    push $P5016, 0
    nqp_decontainerize $P5017, __lowered_lex_42
    find_lex $P5018, "$?CLASS"
    repr_get_attr_obj $P5019, $P5017, $P5018, "$!bstack"
    nqp_decontainerize $P5020, __lowered_lex_42
    find_lex $P5021, "$?CLASS"
    repr_get_attr_int $I5002, $P5020, $P5021, "$!pos"
    push $P5019, $I5002
    nqp_decontainerize $P5022, __lowered_lex_42
    find_lex $P5023, "$?CLASS"
    repr_get_attr_obj $P5024, $P5022, $P5023, "$!bstack"
    push $P5024, 0
    nqp_decontainerize $P5025, __lowered_lex_42
    find_lex $P5026, "$?CLASS"
    repr_get_attr_obj $P5027, $P5025, $P5026, "$!bstack"
    nqp_decontainerize $P5028, __lowered_lex_42
    find_lex $P5029, "$?CLASS"
    repr_get_attr_obj $P5030, $P5028, $P5029, "$!cstack"
    elements $I5003, $P5030
    push $P5027, $I5003
    nqp_decontainerize $P5031, __lowered_lex_42
    find_lex $P5032, "$?CLASS"
    repr_get_attr_obj $P5033, $P5031, $P5032, "$!cstack"
    .return ($P5033) 
.end
.HLL "nqp"
.namespace []
.sub "!cursor_push_cstack" :subid("cuid_47_1431289885.65252") :anon :lex :outer("cuid_90_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 1208
    .param pmc __lowered_lex_45 
    .param pmc __lowered_lex_46 
    nqp_decontainerize $P5001, __lowered_lex_45
    find_lex $P5002, "$?CLASS"
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!cstack"
    defined $I5001, $P5003
    if $I5001 goto unless700_end1408 
    nqp_decontainerize $P5004, __lowered_lex_45
    find_lex $P5005, "$?CLASS"
    new $P5006, 'QRPA'
    repr_bind_attr_obj $P5004, $P5005, "$!cstack", $P5006
  unless700_end1408:
    nqp_decontainerize $P5007, __lowered_lex_45
    find_lex $P5008, "$?CLASS"
    repr_get_attr_obj $P5009, $P5007, $P5008, "$!cstack"
    push $P5009, __lowered_lex_46
    nqp_decontainerize $P5010, __lowered_lex_45
    find_lex $P5011, "$?CLASS"
    repr_get_attr_obj $P5012, $P5010, $P5011, "$!cstack"
    .return ($P5012) 
.end
.HLL "nqp"
.namespace []
.sub "!cursor_pass" :subid("cuid_48_1431289885.65252") :anon :lex :outer("cuid_90_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 1215
    .param pmc __lowered_lex_47 
    .param int __lowered_lex_48 
    .param string __lowered_lex_49 :optional 
    .param int haz_param_18 :opt_flag 
    .param pmc __lowered_lex_50 :named("backtrack") :optional 
    .param int haz_param_19 :opt_flag 
    if haz_param_18, default1415
    set $S5001, ""
    set __lowered_lex_49, $S5001
  default1415:
    if haz_param_19, default1416
    nqp_get_sc_object $P5017, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_50, $P5017
  default1416:
    nqp_decontainerize $P5001, __lowered_lex_47
    find_lex $P5002, "$?CLASS"
    find_lex $P5003, "$pass_mark"
    repr_bind_attr_obj $P5001, $P5002, "$!match", $P5003
    nqp_decontainerize $P5004, __lowered_lex_47
    find_lex $P5005, "$?CLASS"
    repr_bind_attr_int $P5004, $P5005, "$!pos", __lowered_lex_48
    unless __lowered_lex_50 goto if701_end1410 
    nqp_decontainerize $P5006, __lowered_lex_47
    find_lex $P5007, "$?CLASS"
    nqp_decontainerize $P5008, __lowered_lex_47
    find_lex $P5009, "$?CLASS"
    repr_get_attr_obj $P5010, $P5008, $P5009, "$!regexsub"
    repr_bind_attr_obj $P5006, $P5007, "$!restart", $P5010
  if701_end1410:
    if __lowered_lex_50 goto unless702_end1412 
    nqp_decontainerize $P5011, __lowered_lex_47
    find_lex $P5012, "$?CLASS"
    null $P5013
    repr_bind_attr_obj $P5011, $P5012, "$!bstack", $P5013
  unless702_end1412:
    unless __lowered_lex_49 goto if703_end1414 
.annotate 'line', 1222
    nqp_decontainerize $P5014, __lowered_lex_47
    $P5015 = $P5014."!reduce"(__lowered_lex_49)
  if703_end1414:
    nqp_decontainerize $P5016, __lowered_lex_47
    .return ($P5016) 
.end
.HLL "nqp"
.namespace []
.sub "!cursor_fail" :subid("cuid_49_1431289885.65252") :anon :lex :outer("cuid_90_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 1226
    .param pmc __lowered_lex_51 
    nqp_decontainerize $P5001, __lowered_lex_51
    find_lex $P5002, "$?CLASS"
    null $P5003
    repr_bind_attr_obj $P5001, $P5002, "$!match", $P5003
    nqp_decontainerize $P5004, __lowered_lex_51
    find_lex $P5005, "$?CLASS"
    null $P5006
    repr_bind_attr_obj $P5004, $P5005, "$!bstack", $P5006
    nqp_decontainerize $P5007, __lowered_lex_51
    find_lex $P5008, "$?CLASS"
    null $P5009
    repr_bind_attr_obj $P5007, $P5008, "$!cstack", $P5009
    nqp_decontainerize $P5010, __lowered_lex_51
    find_lex $P5011, "$?CLASS"
    null $P5012
    repr_bind_attr_obj $P5010, $P5011, "$!regexsub", $P5012
    nqp_decontainerize $P5013, __lowered_lex_51
    find_lex $P5014, "$?CLASS"
    repr_bind_attr_int $P5013, $P5014, "$!pos", -3
    .return (-3) 
.end
.HLL "nqp"
.namespace []
.sub "!cursor_pos" :subid("cuid_50_1431289885.65252") :anon :lex :outer("cuid_90_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 1234
    .param pmc __lowered_lex_52 
    .param int __lowered_lex_53 
    nqp_decontainerize $P5001, __lowered_lex_52
    find_lex $P5002, "$?CLASS"
    repr_bind_attr_int $P5001, $P5002, "$!pos", __lowered_lex_53
    .return (__lowered_lex_53) 
.end
.HLL "nqp"
.namespace []
.sub "!cursor_next" :subid("cuid_51_1431289885.65252") :anon :lex :outer("cuid_90_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 1238
    .param pmc __lowered_lex_55 
    .local pmc __lowered_lex_54 
    nqp_decontainerize $P5001, __lowered_lex_55
    find_lex $P5002, "$?CLASS"
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!restart"
    defined $I5001, $P5003
    unless $I5001 goto if704_else1417 
.annotate 'line', 1239
.annotate 'line', 1240
    nqp_decontainerize $P5007, __lowered_lex_55
    nqp_decontainerize $P5004, __lowered_lex_55
    find_lex $P5005, "$?CLASS"
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!restart"
    $P5008 = $P5006($P5007)
    set $P5011, $P5008
    goto if704_end1418
  if704_else1417:
.annotate 'line', 1242
.annotate 'line', 1243
    nqp_decontainerize $P5009, __lowered_lex_55
    $P5010 = $P5009."!cursor_start_cur"()
    set __lowered_lex_54, $P5010
.annotate 'line', 1244
    __lowered_lex_54."!cursor_fail"()
    set $P5011, __lowered_lex_54
  if704_end1418:
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "!cursor_more" :subid("cuid_52_1431289885.65252") :anon :lex :outer("cuid_90_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 1249
    .param pmc __lowered_lex_56 
    .param pmc __lowered_lex_57 :slurpy :named 
    .local pmc __lowered_lex_58 
    .local pmc fb_tmp_148 
    .local pmc fb_tmp_149 
    root_new $P101, ['parrot';'Continuation']
    set_label $P101, lexotic_1419
    .lex "RETURN", $P101
    set fb_tmp_148, __lowered_lex_57
    repr_defined $I5001, fb_tmp_148
    unless $I5001 goto if706_else1423 
    set $P5001, fb_tmp_148["ex"]
    set $P5003, $P5001
    goto if706_end1424
  if706_else1423:
    null $P5002
    set $P5003, $P5002
  if706_end1424:
    unless_null $P5003, vivi_7071425
    nqp_get_sc_object $P5004, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5003, $P5004
  vivi_7071425:
    unless $P5003 goto if705_end1422 
.annotate 'line', 1250
    nqp_decontainerize $P5005, __lowered_lex_56
    $P5006 = $P5005."!cursor_next"()
    $P5007 = "RETURN"($P5006)
  if705_end1422:
.annotate 'line', 1251
    nqp_decontainerize $P5008, __lowered_lex_56
    $P5009 = $P5008."CREATE"()
    set __lowered_lex_58, $P5009
    find_lex $P5010, "$?CLASS"
    nqp_decontainerize $P5011, __lowered_lex_56
    find_lex $P5012, "$?CLASS"
    repr_get_attr_obj $P5013, $P5011, $P5012, "$!shared"
    setattribute __lowered_lex_58, $P5010, "$!shared", $P5013
    find_lex $P5014, "$?CLASS"
    repr_bind_attr_int __lowered_lex_58, $P5014, "$!from", -1
    find_lex $P5015, "$?CLASS"
    set fb_tmp_149, __lowered_lex_57
    repr_defined $I5002, fb_tmp_149
    unless $I5002 goto if710_else1430 
    set $P5016, fb_tmp_149["ov"]
    set $P5018, $P5016
    goto if710_end1431
  if710_else1430:
    null $P5017
    set $P5018, $P5017
  if710_end1431:
    unless_null $P5018, vivi_7111432
    nqp_get_sc_object $P5019, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5018, $P5019
  vivi_7111432:
    set $P5024, $P5018
    if $P5018 goto unless709_end1429 
    nqp_decontainerize $P5020, __lowered_lex_56
    find_lex $P5021, "$?CLASS"
    repr_get_attr_int $I5004, $P5020, $P5021, "$!from"
    nqp_decontainerize $P5022, __lowered_lex_56
    find_lex $P5023, "$?CLASS"
    repr_get_attr_int $I5005, $P5022, $P5023, "$!pos"
    isge $I5003, $I5004, $I5005
    box $P5025, $I5003
    set $P5024, $P5025
  unless709_end1429:
    unless $P5024 goto if708_else1426 
    nqp_decontainerize $P5026, __lowered_lex_56
    find_lex $P5027, "$?CLASS"
    repr_get_attr_int $I5007, $P5026, $P5027, "$!from"
    add $I5006, $I5007, 1
    set $I5009, $I5006
    goto if708_end1427
  if708_else1426:
    nqp_decontainerize $P5028, __lowered_lex_56
    find_lex $P5029, "$?CLASS"
    repr_get_attr_int $I5008, $P5028, $P5029, "$!pos"
    set $I5009, $I5008
  if708_end1427:
    repr_bind_attr_int __lowered_lex_58, $P5015, "$!pos", $I5009
.annotate 'line', 1256
    nqp_decontainerize $P5030, __lowered_lex_56
    find_lex $P5031, "$?CLASS"
    repr_get_attr_obj $P5032, $P5030, $P5031, "$!regexsub"
    $P5033 = $P5032(__lowered_lex_58)
    goto lexotic_1420
  lexotic_1419:
    .get_results ($P5033)
  lexotic_1420:
    .return ($P5033) 
.end
.HLL "nqp"
.namespace []
.sub "!reduce" :subid("cuid_53_1431289885.65252") :anon :lex :outer("cuid_90_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 1259
    .param pmc __lowered_lex_59 
    .param string __lowered_lex_60 
    .local pmc __lowered_lex_61 
    find_dynamic_lex $P5001, "$*ACTIONS"
    set __lowered_lex_61, $P5001
    isnull $I5002, __lowered_lex_61
    not $I5001, $I5002
    set $I5004, $I5001
    unless $I5001 goto if713_end1436 
    can $I5003, __lowered_lex_61, __lowered_lex_60
    set $I5004, $I5003
  if713_end1436:
    unless $I5004 goto if712_end1434 
.annotate 'line', 1261
    nqp_decontainerize $P5003, __lowered_lex_59
    $P5004 = $P5003."MATCH"()
    find_method $P5002, __lowered_lex_61, __lowered_lex_60
    $P5005 = $P5002(__lowered_lex_61, $P5004)
  if712_end1434:
    nqp_decontainerize $P5006, __lowered_lex_59
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "!reduce_with_match" :subid("cuid_54_1431289885.65252") :anon :lex :outer("cuid_90_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 1266
    .param pmc __lowered_lex_62 
    .param string __lowered_lex_63 
    .param string __lowered_lex_64 
    .param pmc __lowered_lex_65 
    .local pmc __lowered_lex_66 
    find_dynamic_lex $P5001, "$*ACTIONS"
    set __lowered_lex_66, $P5001
    isnull $I5002, __lowered_lex_66
    not $I5001, $I5002
    set $I5004, $I5001
    unless $I5001 goto if715_end1440 
    can $I5003, __lowered_lex_66, __lowered_lex_63
    set $I5004, $I5003
  if715_end1440:
    box $P5005, $I5004
    set $P5004, $P5005
    unless $I5004 goto if714_end1438 
.annotate 'line', 1268
    find_method $P5002, __lowered_lex_66, __lowered_lex_63
    $P5003 = $P5002(__lowered_lex_66, __lowered_lex_65, __lowered_lex_64)
    set $P5004, $P5003
  if714_end1438:
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "!shared" :subid("cuid_55_1431289885.65252") :anon :lex :outer("cuid_90_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 1272
    .param pmc __lowered_lex_67 
    nqp_decontainerize $P5001, __lowered_lex_67
    find_lex $P5002, "$?CLASS"
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!shared"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "!protoregex" :subid("cuid_56_1431289885.65252") :anon :lex :outer("cuid_90_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 1275
    .param pmc __lowered_lex_68 
    .param pmc __lowered_lex_69 
    .local pmc __lowered_lex_70 
    .local pmc __lowered_lex_71 
    .local pmc __lowered_lex_72 
    .local int __lowered_lex_73 
    .local pmc __lowered_lex_74 
    .local pmc __lowered_lex_75 
    .local pmc __lowered_lex_76 
    .local pmc fb_tmp_150 
    nqp_get_sc_object $P5001, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_75, $P5001
    nqp_get_sc_object $P5002, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_76, $P5002
    nqp_decontainerize $P5003, __lowered_lex_68
    find_lex $P5004, "$?CLASS"
    repr_get_attr_obj $P5005, $P5003, $P5004, "$!shared"
    set __lowered_lex_70, $P5005
.annotate 'line', 1278
    nqp_decontainerize $P5007, __lowered_lex_68
    get_how $P5006, $P5007
    nqp_decontainerize $P5008, __lowered_lex_68
    $P5009 = $P5006."cache_get"($P5008, __lowered_lex_69)
    set __lowered_lex_71, $P5009
    isnull $I5001, __lowered_lex_71
    unless $I5001 goto if716_end1442 
.annotate 'line', 1279
.annotate 'line', 1280
    nqp_decontainerize $P5010, __lowered_lex_68
    $P5011 = $P5010."!protoregex_nfa"(__lowered_lex_69)
    set __lowered_lex_71, $P5011
.annotate 'line', 1281
    nqp_decontainerize $P5013, __lowered_lex_68
    get_how $P5012, $P5013
    nqp_decontainerize $P5014, __lowered_lex_68
    $P5015 = $P5012."cache_add"($P5014, __lowered_lex_69, __lowered_lex_71)
  if716_end1442:
.annotate 'line', 1283
    nqp_get_sc_object $P5016, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 35
    repr_get_attr_str $S5001, __lowered_lex_70, $P5016, "$!target", 2
    nqp_decontainerize $P5017, __lowered_lex_68
    find_lex $P5018, "$?CLASS"
    repr_get_attr_int $I5002, $P5017, $P5018, "$!pos"
    $P5019 = __lowered_lex_71."run"($S5001, $I5002)
    set __lowered_lex_72, $P5019
    nqp_get_sc_object $P5020, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 35
    repr_get_attr_int $I5003, __lowered_lex_70, $P5020, "$!highwater", 3
    set __lowered_lex_73, $I5003
    nqp_decontainerize $P5021, __lowered_lex_68
    find_lex $P5022, "$?CLASS"
    repr_get_attr_int $I5005, $P5021, $P5022, "$!pos"
    isgt $I5004, $I5005, __lowered_lex_73
    unless $I5004 goto if717_end1444 
.annotate 'line', 1287
    nqp_get_sc_object $P5023, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 35
    nqp_decontainerize $P5024, __lowered_lex_68
    find_lex $P5025, "$?CLASS"
    repr_get_attr_int $I5006, $P5024, $P5025, "$!pos"
    repr_bind_attr_int __lowered_lex_70, $P5023, "$!highwater", 3, $I5006
  if717_end1444:
.annotate 'line', 1292
    $P5026 = __lowered_lex_71."states"()
    set fb_tmp_150, $P5026
    repr_defined $I5007, fb_tmp_150
    unless $I5007 goto if718_else1445 
    set $P5027, fb_tmp_150[0]
    set $P5029, $P5027
    goto if718_end1446
  if718_else1445:
    null $P5028
    set $P5029, $P5028
  if718_end1446:
    unless_null $P5029, vivi_7191447
    nqp_get_sc_object $P5030, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5029, $P5030
  vivi_7191447:
    set __lowered_lex_74, $P5029
  while720_test1448:
    set $P5038, __lowered_lex_72
    unless __lowered_lex_72 goto while720_done1452 
  while720_redo1450:
.annotate 'line', 1295
    pop $I5008, __lowered_lex_72
    set $P5031, __lowered_lex_74[$I5008]
    set __lowered_lex_76, $P5031
.annotate 'line', 1298
    nqp_decontainerize $P5032, __lowered_lex_68
    set $S5002, __lowered_lex_76
    $P5033 = $P5032.$S5002()
    set __lowered_lex_75, $P5033
    find_lex $P5034, "$?CLASS"
    repr_get_attr_int $I5010, __lowered_lex_75, $P5034, "$!pos"
    isge $I5009, $I5010, 0
    box $P5037, $I5009
    set $P5036, $P5037
    unless $I5009 goto if721_end1454 
    find_lex $P5035, "@EMPTY"
    set __lowered_lex_72, $P5035
    set $P5036, __lowered_lex_72
  if721_end1454:
    set $P5038, $P5036
    goto while720_test1448 
  while720_done1452:
    set $P5039, __lowered_lex_75
    defined $I5011, $P5039
    if $I5011, defor1455
    nqp_get_sc_object $P5041, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 35
    getattribute $P5040, __lowered_lex_70, $P5041, "$!fail_cursor"
    set $P5039, $P5040
  defor1455:
    .return ($P5039) 
.end
.HLL "nqp"
.namespace []
.sub "!protoregex_nfa" :subid("cuid_57_1431289885.65252") :anon :lex :outer("cuid_90_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 1304
    .param pmc _lex_param_0 
    .param pmc __lowered_lex_78 
    .const 'Sub' $P5024 = 'cuid_113_1431289885.65252' 
    capture_lex $P5024 
    .lex "self", _lex_param_0 
    .local pmc __lowered_lex_79 
    .local pmc __lowered_lex_80 
    .local pmc __lowered_lex_81 
    .local int __lowered_lex_82 
    .local int __lowered_lex_83 
    .local pmc fb_tmp_151 
    .local pmc lowered_for_it__2 
    .local pmc fb_tmp_152 
    .local pmc __lowered_lex_77 
.annotate 'line', 1305
    nqp_decontainerize $P5002, _lex_param_0
    get_how $P5001, $P5002
    nqp_decontainerize $P5003, _lex_param_0
    .const 'Sub' $P5005 = 'cuid_113_1431289885.65252' 
    capture_lex $P5005
    newclosure $P5004, $P5005
    $P5006 = $P5001."cache"($P5003, "!protoregex_table", $P5004)
    set __lowered_lex_79, $P5006
.annotate 'line', 1306
    nqp_get_sc_object $P5007, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 3
    $P5008 = $P5007."new"()
    set __lowered_lex_80, $P5008
.annotate 'line', 1307
    $P5009 = __lowered_lex_80."states"()
    set fb_tmp_151, $P5009
    repr_defined $I5001, fb_tmp_151
    unless $I5001 goto if722_else1456 
    set $P5010, fb_tmp_151[0]
    set $P5012, $P5010
    goto if722_end1457
  if722_else1456:
    null $P5011
    set $P5012, $P5011
  if722_end1457:
    unless_null $P5012, vivi_7231458
    nqp_get_sc_object $P5013, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5012, $P5013
  vivi_7231458:
    set __lowered_lex_81, $P5012
    set __lowered_lex_82, 1
    set __lowered_lex_83, 0
    set $S5001, __lowered_lex_78
    exists $I5002, __lowered_lex_79[$S5001]
    unless $I5002 goto if724_end1460 
.annotate 'line', 1310
    set fb_tmp_152, __lowered_lex_79
    repr_defined $I5003, fb_tmp_152
    unless $I5003 goto if725_else1461 
    set $S5002, __lowered_lex_78
    set $P5015, fb_tmp_152[$S5002]
    set $P5017, $P5015
    goto if725_end1462
  if725_else1461:
    null $P5016
    set $P5017, $P5016
  if725_end1462:
    unless_null $P5017, vivi_7261463
    nqp_get_sc_object $P5018, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5017, $P5018
  vivi_7261463:
    iter $P5014, $P5017
    set lowered_for_it__2, $P5014
    new $P5022, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5022, while727_handlers1467
    push_eh $P5022
  while727_test1464:
    set $P5021, lowered_for_it__2
    unless lowered_for_it__2 goto while727_done1468 
  while727_redo1466:
.annotate 'line', 1311
    shift $P5019, lowered_for_it__2
    set __lowered_lex_77, $P5019
    add $I5004, __lowered_lex_83, 1
    set __lowered_lex_83, $I5004
.annotate 'line', 1313
    nqp_decontainerize $P5020, _lex_param_0
    __lowered_lex_80."mergesubrule"(__lowered_lex_82, 0, __lowered_lex_83, $P5020, __lowered_lex_77)
    set __lowered_lex_81[__lowered_lex_83], __lowered_lex_77
    set $P5021, __lowered_lex_77
    goto while727_test1464 
  while727_handlers1467:
    .get_results ($P5022)
    pop_upto_eh $P5022
    getattribute $P5023, $P5022, 'type'
    eq $P5023, .CONTROL_LOOP_NEXT, while727_test1464
    eq $P5023, .CONTROL_LOOP_REDO, while727_redo1466
  while727_done1468:
    pop_eh 
  if724_end1460:
.annotate 'line', 1317
    __lowered_lex_80."optimize"()
    .return (__lowered_lex_80) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_113_1431289885.65252") :anon :lex :outer("cuid_57_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 1305

    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    $P5003 = $P5001."!protoregex_table"()
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "!protoregex_table" :subid("cuid_58_1431289885.65252") :anon :lex :outer("cuid_90_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 1321
    .param pmc __lowered_lex_88 
    .local pmc __lowered_lex_89 
    .local pmc lowered_for_it__3 
    .local pmc __lowered_lex_85 
    .local string __lowered_lex_86 
    .local int __lowered_lex_87 
    .local string __lowered_lex_84 
    .local pmc fb_tmp_153 
    new $P5001, 'Hash'
    set __lowered_lex_89, $P5001
.annotate 'line', 1323
    nqp_decontainerize $P5004, __lowered_lex_88
    get_how $P5003, $P5004
    nqp_decontainerize $P5005, __lowered_lex_88
    $P5006 = $P5003."methods"($P5005)
    iter $P5002, $P5006
    set lowered_for_it__3, $P5002
    new $P5018, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5018, while728_handlers1472
    push_eh $P5018
  while728_test1469:
    set $P5017, lowered_for_it__3
    unless lowered_for_it__3 goto while728_done1473 
  while728_redo1471:
    shift $P5007, lowered_for_it__3
    set __lowered_lex_85, $P5007
.annotate 'line', 1324
    $P5008 = __lowered_lex_85."name"()
    set $S5001, $P5008
    set __lowered_lex_86, $S5001
    index $I5001, __lowered_lex_86, ":", 0
    set __lowered_lex_87, $I5001
    isgt $I5002, __lowered_lex_87, 0
    box $P5016, $I5002
    set $P5015, $P5016
    unless $I5002 goto if729_end1475 
.annotate 'line', 1326
    substr $S5002, __lowered_lex_86, 0, __lowered_lex_87
    set __lowered_lex_84, $S5002
    exists $I5003, __lowered_lex_89[__lowered_lex_84]
    if $I5003 goto unless730_end1477 
    new $P5009, 'QRPA'
    set __lowered_lex_89[__lowered_lex_84], $P5009
  unless730_end1477:
    set fb_tmp_153, __lowered_lex_89
    repr_defined $I5004, fb_tmp_153
    unless $I5004 goto if731_else1478 
    set $P5010, fb_tmp_153[__lowered_lex_84]
    set $P5012, $P5010
    goto if731_end1479
  if731_else1478:
    null $P5011
    set $P5012, $P5011
  if731_end1479:
    unless_null $P5012, vivi_7321480
    nqp_get_sc_object $P5013, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5012, $P5013
  vivi_7321480:
    box $P5014, __lowered_lex_86
    push $P5012, $P5014
    set $P5015, $P5012
  if729_end1475:
    set $P5017, $P5015
    goto while728_test1469 
  while728_handlers1472:
    .get_results ($P5018)
    pop_upto_eh $P5018
    getattribute $P5019, $P5018, 'type'
    eq $P5019, .CONTROL_LOOP_NEXT, while728_test1469
    eq $P5019, .CONTROL_LOOP_REDO, while728_redo1471
  while728_done1473:
    pop_eh 
    .return (__lowered_lex_89) 
.end
.HLL "nqp"
.namespace []
.sub "!alt" :subid("cuid_59_1431289885.65252") :anon :lex :outer("cuid_90_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 1335
    .param pmc __lowered_lex_90 
    .param int __lowered_lex_91 
    .param string __lowered_lex_92 
    .param pmc __lowered_lex_93 :optional 
    .param int haz_param_20 :opt_flag 
    .local pmc __lowered_lex_94 
    .local int __lowered_lex_95 
    .local pmc __lowered_lex_96 
    if haz_param_20, default1485
    new $P5027, 'QRPA'
    set __lowered_lex_93, $P5027
  default1485:
    nqp_decontainerize $P5001, __lowered_lex_90
    find_lex $P5002, "$?CLASS"
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!shared"
    set __lowered_lex_94, $P5003
    nqp_get_sc_object $P5004, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 35
    repr_get_attr_int $I5001, __lowered_lex_94, $P5004, "$!highwater", 3
    set __lowered_lex_95, $I5001
    isgt $I5002, __lowered_lex_91, __lowered_lex_95
    unless $I5002 goto if733_end1482 
.annotate 'line', 1339
    nqp_get_sc_object $P5005, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 35
    repr_bind_attr_int __lowered_lex_94, $P5005, "$!highwater", 3, __lowered_lex_91
  if733_end1482:
.annotate 'line', 1344
    nqp_decontainerize $P5007, __lowered_lex_90
    get_how $P5006, $P5007
    nqp_decontainerize $P5008, __lowered_lex_90
    $P5009 = $P5006."cache_get"($P5008, __lowered_lex_92)
    set __lowered_lex_96, $P5009
    isnull $I5003, __lowered_lex_96
    unless $I5003 goto if734_end1484 
.annotate 'line', 1345
.annotate 'line', 1346
    nqp_decontainerize $P5010, __lowered_lex_90
    nqp_decontainerize $P5011, __lowered_lex_90
    find_lex $P5012, "$?CLASS"
    repr_get_attr_obj $P5013, $P5011, $P5012, "$!regexsub"
    $P5014 = $P5010."!alt_nfa"($P5013, __lowered_lex_92)
    set __lowered_lex_96, $P5014
.annotate 'line', 1347
    nqp_decontainerize $P5016, __lowered_lex_90
    get_how $P5015, $P5016
    nqp_decontainerize $P5017, __lowered_lex_90
    $P5018 = $P5015."cache_add"($P5017, __lowered_lex_92, __lowered_lex_96)
  if734_end1484:
.annotate 'line', 1349
    nqp_get_sc_object $P5019, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 35
    repr_get_attr_str $S5001, __lowered_lex_94, $P5019, "$!target", 2
    nqp_decontainerize $P5020, __lowered_lex_90
    find_lex $P5021, "$?CLASS"
    repr_get_attr_obj $P5022, $P5020, $P5021, "$!bstack"
    nqp_decontainerize $P5023, __lowered_lex_90
    find_lex $P5024, "$?CLASS"
    repr_get_attr_obj $P5025, $P5023, $P5024, "$!cstack"
    $P5026 = __lowered_lex_96."run_alt"($S5001, __lowered_lex_91, $P5022, $P5025, __lowered_lex_93)
    .return ($P5026) 
.end
.HLL "nqp"
.namespace []
.sub "!alt_nfa" :subid("cuid_60_1431289885.65252") :anon :lex :outer("cuid_90_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 1352
    .param pmc __lowered_lex_98 
    .param pmc __lowered_lex_99 
    .param string __lowered_lex_100 
    .local pmc __lowered_lex_101 
    .local int __lowered_lex_102 
    .local int __lowered_lex_103 
    .local pmc lowered_for_it__4 
    .local pmc __lowered_lex_97 
    .local int tmp_8 
.annotate 'line', 1353
    nqp_get_sc_object $P5001, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 3
    $P5002 = $P5001."new"()
    set __lowered_lex_101, $P5002
    set __lowered_lex_102, 1
    set __lowered_lex_103, 0
.annotate 'line', 1356
    $P5004 = __lowered_lex_99."ALT_NFA"(__lowered_lex_100)
    iter $P5003, $P5004
    set lowered_for_it__4, $P5003
    new $P5008, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5008, while735_handlers1489
    push_eh $P5008
  while735_test1486:
    set $P5007, lowered_for_it__4
    unless lowered_for_it__4 goto while735_done1490 
  while735_redo1488:
    shift $P5005, lowered_for_it__4
    set __lowered_lex_97, $P5005
.annotate 'line', 1357
    nqp_decontainerize $P5006, __lowered_lex_98
    __lowered_lex_101."mergesubstates"(__lowered_lex_102, 0, __lowered_lex_103, __lowered_lex_97, $P5006)
    set tmp_8, __lowered_lex_103
    add $I5001, tmp_8, 1
    set __lowered_lex_103, $I5001
    box $P5009, tmp_8
    set $P5007, $P5009
    goto while735_test1486 
  while735_handlers1489:
    .get_results ($P5008)
    pop_upto_eh $P5008
    getattribute $P5010, $P5008, 'type'
    eq $P5010, .CONTROL_LOOP_NEXT, while735_test1486
    eq $P5010, .CONTROL_LOOP_REDO, while735_redo1488
  while735_done1490:
    pop_eh 
.annotate 'line', 1360
    __lowered_lex_101."optimize"()
    .return (__lowered_lex_101) 
.end
.HLL "nqp"
.namespace []
.sub "!precompute_nfas" :subid("cuid_61_1431289885.65252") :anon :lex :outer("cuid_90_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 1364
    .param pmc _lex_param_0 
    .const 'Sub' $P5031 = 'cuid_116_1431289885.65252' 
    capture_lex $P5031 
    .const 'Sub' $P5031 = 'cuid_117_1431289885.65252' 
    capture_lex $P5031 
    .const 'Sub' $P5031 = 'cuid_119_1431289885.65252' 
    capture_lex $P5031 
    .lex "&precomp_alt_nfas", $P101 
    .lex "self", _lex_param_0 
    .local pmc __lowered_lex_106 
    .local pmc lowered_for_it__6 
    .local pmc __lowered_lex_105 
    .local pmc lowered_for_it__5 
    .local pmc __lowered_lex_104 
    .const 'Sub' $P5001 = 'cuid_116_1431289885.65252' 
    capture_lex $P5001
    set $P101, $P5001
.annotate 'line', 1366
    nqp_decontainerize $P5003, _lex_param_0
    get_how $P5002, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    .const 'Sub' $P5006 = 'cuid_117_1431289885.65252' 
    capture_lex $P5006
    newclosure $P5005, $P5006
    $P5007 = $P5002."cache"($P5004, "!protoregex_table", $P5005)
    set __lowered_lex_106, $P5007
    set $P5008, __lowered_lex_106
    iter $P5010, __lowered_lex_106
  for_next1496:
    unless $P5010, for_done1498
    shift $P5012, $P5010
  for_redo1497:
    .const 'Sub' $P5011 = 'cuid_119_1431289885.65252' 
    capture_lex $P5011
    $P5008 = $P5011($P5012)
    goto for_next1496
  for_done1498:
.annotate 'line', 1379
    nqp_decontainerize $P5015, _lex_param_0
    get_how $P5014, $P5015
    nqp_decontainerize $P5016, _lex_param_0
    $P5017 = $P5014."methods"($P5016)
    iter $P5013, $P5017
    set lowered_for_it__6, $P5013
    new $P5029, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5029, while737_handlers1502
    push_eh $P5029
  while737_test1499:
    set $P5028, lowered_for_it__6
    unless lowered_for_it__6 goto while737_done1503 
  while737_redo1501:
    shift $P5018, lowered_for_it__6
    set __lowered_lex_105, $P5018
.annotate 'line', 1380
    "&precomp_alt_nfas"(__lowered_lex_105)
    can $I5001, __lowered_lex_105, "NESTED_CODES"
    box $P5027, $I5001
    set $P5026, $P5027
    unless $I5001 goto if738_end1505 
.annotate 'line', 1381
.annotate 'line', 1382
    $P5020 = __lowered_lex_105."NESTED_CODES"()
    iter $P5019, $P5020
    set lowered_for_it__5, $P5019
    new $P5024, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5024, while739_handlers1509
    push_eh $P5024
  while739_test1506:
    set $P5023, lowered_for_it__5
    unless lowered_for_it__5 goto while739_done1510 
  while739_redo1508:
    shift $P5021, lowered_for_it__5
    set __lowered_lex_104, $P5021
.annotate 'line', 1383
    $P5022 = "&precomp_alt_nfas"(__lowered_lex_104)
    set $P5023, $P5022
    goto while739_test1506 
  while739_handlers1509:
    .get_results ($P5024)
    pop_upto_eh $P5024
    getattribute $P5025, $P5024, 'type'
    eq $P5025, .CONTROL_LOOP_NEXT, while739_test1506
    eq $P5025, .CONTROL_LOOP_REDO, while739_redo1508
  while739_done1510:
    pop_eh 
    set $P5026, $P5023
  if738_end1505:
    set $P5028, $P5026
    goto while737_test1499 
  while737_handlers1502:
    .get_results ($P5029)
    pop_upto_eh $P5029
    getattribute $P5030, $P5029, 'type'
    eq $P5030, .CONTROL_LOOP_NEXT, while737_test1499
    eq $P5030, .CONTROL_LOOP_REDO, while737_redo1501
  while737_done1503:
    pop_eh 
    .return ($P5028) 
.end
.HLL "nqp"
.namespace []
.sub "precomp_alt_nfas" :subid("cuid_116_1431289885.65252") :anon :lex :outer("cuid_61_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 1372
    .param pmc _lex_param_0 
    .const 'Sub' $P5009 = 'cuid_115_1431289885.65252' 
    capture_lex $P5009 
    .lex "$meth", _lex_param_0 
    can $I5001, _lex_param_0, "ALT_NFAS"
    box $P5008, $I5001
    set $P5007, $P5008
    unless $I5001 goto if736_end1492 
.annotate 'line', 1373
.annotate 'line', 1374
    $P5004 = _lex_param_0."ALT_NFAS"()
    set $P5001, $P5004
    iter $P5003, $P5004
  for_next1493:
    unless $P5003, for_done1495
    shift $P5006, $P5003
  for_redo1494:
    .const 'Sub' $P5005 = 'cuid_115_1431289885.65252' 
    capture_lex $P5005
    $P5001 = $P5005($P5006)
    goto for_next1493
  for_done1495:
    set $P5007, $P5001
  if736_end1492:
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_115_1431289885.65252") :anon :lex :outer("cuid_116_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 1374
    .param pmc _lex_param_0 
    .const 'Sub' $P5009 = 'cuid_114_1431289885.65252' 
    capture_lex $P5009 
    .lex "$name", _lex_param_0 
.annotate 'line', 1375
    find_lex $P5003, "self"
    nqp_decontainerize $P5002, $P5003
    get_how $P5001, $P5002
    find_lex $P5005, "self"
    nqp_decontainerize $P5004, $P5005
    set $S5001, _lex_param_0
    .const 'Sub' $P5007 = 'cuid_114_1431289885.65252' 
    capture_lex $P5007
    newclosure $P5006, $P5007
    $P5008 = $P5001."cache"($P5004, $S5001, $P5006)
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_114_1431289885.65252") :anon :lex :outer("cuid_115_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 1375

    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    find_lex $P5003, "$meth"
    find_lex $P5004, "$name"
    $P5005 = $P5004."key"()
    $P5006 = $P5001."!alt_nfa"($P5003, $P5005)
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_117_1431289885.65252") :anon :lex :outer("cuid_61_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 1366

    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    $P5003 = $P5001."!protoregex_table"()
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_119_1431289885.65252") :anon :lex :outer("cuid_61_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 1367
    .param pmc _lex_param_0 
    .const 'Sub' $P5010 = 'cuid_118_1431289885.65252' 
    capture_lex $P5010 
    .lex "$_", _lex_param_0 
.annotate 'line', 1368
    find_lex $P5003, "self"
    nqp_decontainerize $P5002, $P5003
    get_how $P5001, $P5002
    find_lex $P5005, "self"
    nqp_decontainerize $P5004, $P5005
    $P5006 = _lex_param_0."key"()
    .const 'Sub' $P5008 = 'cuid_118_1431289885.65252' 
    capture_lex $P5008
    newclosure $P5007, $P5008
    $P5009 = $P5001."cache"($P5004, $P5006, $P5007)
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_118_1431289885.65252") :anon :lex :outer("cuid_119_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 1368

    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    find_lex $P5003, "$_"
    $P5004 = $P5003."key"()
    $P5005 = $P5001."!protoregex_nfa"($P5004)
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "!dba" :subid("cuid_62_1431289885.65252") :anon :lex :outer("cuid_90_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 1389
    .param pmc __lowered_lex_107 
    .param int __lowered_lex_108 
    .param string __lowered_lex_109 
    .local pmc __lowered_lex_110 
    .local int __lowered_lex_111 
    .local pmc __lowered_lex_112 
    nqp_get_sc_object $P5001, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_112, $P5001
    nqp_decontainerize $P5002, __lowered_lex_107
    find_lex $P5003, "$?CLASS"
    repr_get_attr_obj $P5004, $P5002, $P5003, "$!shared"
    set __lowered_lex_110, $P5004
    nqp_get_sc_object $P5005, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 35
    repr_get_attr_int $I5001, __lowered_lex_110, $P5005, "$!highwater", 3
    set __lowered_lex_111, $I5001
    isge $I5002, __lowered_lex_108, __lowered_lex_111
    unless $I5002 goto if740_end1512 
.annotate 'line', 1393
    nqp_get_sc_object $P5007, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 35
    getattribute $P5006, __lowered_lex_110, $P5007, "@!highexpect"
    set __lowered_lex_112, $P5006
    isgt $I5003, __lowered_lex_108, __lowered_lex_111
    unless $I5003 goto if741_end1514 
.annotate 'line', 1395
    assign __lowered_lex_112, 0
    nqp_get_sc_object $P5008, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 35
    repr_bind_attr_int __lowered_lex_110, $P5008, "$!highwater", 3, __lowered_lex_108
  if741_end1514:
    push __lowered_lex_112, __lowered_lex_109
  if740_end1512:
    nqp_get_sc_object $P5009, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "!highwater" :subid("cuid_63_1431289885.65252") :anon :lex :outer("cuid_90_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 1404
    .param pmc __lowered_lex_113 
    nqp_decontainerize $P5001, __lowered_lex_113
    find_lex $P5002, "$?CLASS"
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!shared"
    nqp_get_sc_object $P5004, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 35
    repr_get_attr_int $I5001, $P5003, $P5004, "$!highwater", 3
    .return ($I5001) 
.end
.HLL "nqp"
.namespace []
.sub "!highexpect" :subid("cuid_64_1431289885.65252") :anon :lex :outer("cuid_90_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 1408
    .param pmc __lowered_lex_114 
    nqp_decontainerize $P5002, __lowered_lex_114
    find_lex $P5003, "$?CLASS"
    repr_get_attr_obj $P5004, $P5002, $P5003, "$!shared"
    nqp_get_sc_object $P5005, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 35
    getattribute $P5001, $P5004, $P5005, "@!highexpect"
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "!fresh_highexpect" :subid("cuid_65_1431289885.65252") :anon :lex :outer("cuid_90_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 1412
    .param pmc __lowered_lex_115 
    .local pmc __lowered_lex_116 
    nqp_decontainerize $P5002, __lowered_lex_115
    find_lex $P5003, "$?CLASS"
    repr_get_attr_obj $P5004, $P5002, $P5003, "$!shared"
    nqp_get_sc_object $P5005, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 35
    getattribute $P5001, $P5004, $P5005, "@!highexpect"
    set __lowered_lex_116, $P5001
    nqp_decontainerize $P5006, __lowered_lex_115
    find_lex $P5007, "$?CLASS"
    repr_get_attr_obj $P5008, $P5006, $P5007, "$!shared"
    nqp_get_sc_object $P5009, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 35
    new $P5010, 'ResizableStringArray'
    setattribute $P5008, $P5009, "@!highexpect", $P5010
    .return (__lowered_lex_116) 
.end
.HLL "nqp"
.namespace []
.sub "!set_highexpect" :subid("cuid_66_1431289885.65252") :anon :lex :outer("cuid_90_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 1418
    .param pmc __lowered_lex_117 
    .param pmc __lowered_lex_118 
    nqp_decontainerize $P5001, __lowered_lex_117
    find_lex $P5002, "$?CLASS"
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!shared"
    nqp_get_sc_object $P5004, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 35
    setattribute $P5003, $P5004, "@!highexpect", __lowered_lex_118
    .return (__lowered_lex_118) 
.end
.HLL "nqp"
.namespace []
.sub "!clear_highwater" :subid("cuid_67_1431289885.65252") :anon :lex :outer("cuid_90_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 1422
    .param pmc __lowered_lex_119 
    .local pmc __lowered_lex_120 
    nqp_decontainerize $P5002, __lowered_lex_119
    find_lex $P5003, "$?CLASS"
    repr_get_attr_obj $P5004, $P5002, $P5003, "$!shared"
    nqp_get_sc_object $P5005, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 35
    getattribute $P5001, $P5004, $P5005, "@!highexpect"
    set __lowered_lex_120, $P5001
    assign __lowered_lex_120, 0
    nqp_decontainerize $P5006, __lowered_lex_119
    find_lex $P5007, "$?CLASS"
    repr_get_attr_obj $P5008, $P5006, $P5007, "$!shared"
    nqp_get_sc_object $P5009, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 35
    repr_bind_attr_int $P5008, $P5009, "$!highwater", 3, -1
    .return (3) 
.end
.HLL "nqp"
.namespace []
.sub "!BACKREF" :subid("cuid_68_1431289885.65252") :anon :lex :outer("cuid_90_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 1428
    .param pmc __lowered_lex_124 
    .param pmc __lowered_lex_125 
    .local pmc __lowered_lex_126 
    .local int __lowered_lex_127 
    .local pmc fb_tmp_154 
    .local pmc fb_tmp_155 
    .local pmc tmp_9 
    .local pmc __lowered_lex_121 
    .local int __lowered_lex_122 
    .local string __lowered_lex_123 
    .local pmc fb_tmp_156 
.annotate 'line', 1429
    nqp_decontainerize $P5001, __lowered_lex_124
    $P5002 = $P5001."!cursor_start_cur"()
    set __lowered_lex_126, $P5002
    nqp_decontainerize $P5003, __lowered_lex_124
    find_lex $P5004, "$?CLASS"
    repr_get_attr_obj $P5005, $P5003, $P5004, "$!cstack"
    unless $P5005 goto if742_else1515 
    nqp_decontainerize $P5006, __lowered_lex_124
    find_lex $P5007, "$?CLASS"
    repr_get_attr_obj $P5008, $P5006, $P5007, "$!cstack"
    elements $I5002, $P5008
    sub $I5001, $I5002, 1
    set $I5003, $I5001
    goto if742_end1516
  if742_else1515:
    set $I5003, -1
  if742_end1516:
    set __lowered_lex_127, $I5003
    new $P5028, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5028, while743_handlers1520
    push_eh $P5028
  while743_test1517:
    isge $I5004, __lowered_lex_127, 0
    set $I5010, $I5004
    unless $I5004 goto if744_end1523 
    nqp_decontainerize $P5010, __lowered_lex_124
    find_lex $P5011, "$?CLASS"
    repr_get_attr_obj $P5012, $P5010, $P5011, "$!cstack"
    set fb_tmp_154, $P5012
    repr_defined $I5006, fb_tmp_154
    unless $I5006 goto if746_else1526 
    set $P5013, fb_tmp_154[__lowered_lex_127]
    set $P5015, $P5013
    goto if746_end1527
  if746_else1526:
    null $P5014
    set $P5015, $P5014
  if746_end1527:
    unless_null $P5015, vivi_7471528
    nqp_get_sc_object $P5016, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5015, $P5016
  vivi_7471528:
    find_lex $P5017, "$?CLASS"
    getattribute $P5009, $P5015, $P5017, "$!name"
    isnull $I5005, $P5009
    set $I5009, $I5005
    if $I5005 goto unless745_end1525 
    nqp_decontainerize $P5019, __lowered_lex_124
    find_lex $P5020, "$?CLASS"
    repr_get_attr_obj $P5021, $P5019, $P5020, "$!cstack"
    set fb_tmp_155, $P5021
    repr_defined $I5008, fb_tmp_155
    unless $I5008 goto if748_else1529 
    set $P5022, fb_tmp_155[__lowered_lex_127]
    set $P5024, $P5022
    goto if748_end1530
  if748_else1529:
    null $P5023
    set $P5024, $P5023
  if748_end1530:
    unless_null $P5024, vivi_7491531
    nqp_get_sc_object $P5025, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5024, $P5025
  vivi_7491531:
    find_lex $P5026, "$?CLASS"
    getattribute $P5018, $P5024, $P5026, "$!name"
    set $S5001, $P5018
    set $S5002, __lowered_lex_125
    isne $I5007, $S5001, $S5002
    set $I5009, $I5007
  unless745_end1525:
    set $I5010, $I5009
  if744_end1523:
    box $P5029, $I5010
    set $P5027, $P5029
    unless $I5010 goto while743_done1521 
  while743_redo1519:
    box $P5027, __lowered_lex_127
    set tmp_9, $P5027
    set $I5012, tmp_9
    sub $I5011, $I5012, 1
    set __lowered_lex_127, $I5011
    set $P5027, tmp_9
    goto while743_test1517 
  while743_handlers1520:
    .get_results ($P5028)
    pop_upto_eh $P5028
    getattribute $P5030, $P5028, 'type'
    eq $P5030, .CONTROL_LOOP_NEXT, while743_test1517
    eq $P5030, .CONTROL_LOOP_REDO, while743_redo1519
  while743_done1521:
    pop_eh 
    isge $I5011, __lowered_lex_127, 0
    unless $I5011 goto if750_end1533 
.annotate 'line', 1433
    nqp_decontainerize $P5031, __lowered_lex_124
    find_lex $P5032, "$?CLASS"
    repr_get_attr_obj $P5033, $P5031, $P5032, "$!cstack"
    set fb_tmp_156, $P5033
    repr_defined $I5012, fb_tmp_156
    unless $I5012 goto if751_else1534 
    set $P5034, fb_tmp_156[__lowered_lex_127]
    set $P5036, $P5034
    goto if751_end1535
  if751_else1534:
    null $P5035
    set $P5036, $P5035
  if751_end1535:
    unless_null $P5036, vivi_7521536
    nqp_get_sc_object $P5037, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5036, $P5037
  vivi_7521536:
    set __lowered_lex_121, $P5036
.annotate 'line', 1435
    $P5038 = __lowered_lex_121."pos"()
    set $N5002, $P5038
    $P5039 = __lowered_lex_121."from"()
    set $N5003, $P5039
    sub $N5001, $N5002, $N5003
    set $I5013, $N5001
    set __lowered_lex_122, $I5013
    nqp_decontainerize $P5040, __lowered_lex_124
    find_lex $P5041, "$?CLASS"
    repr_get_attr_obj $P5042, $P5040, $P5041, "$!shared"
    nqp_get_sc_object $P5043, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 35
    repr_get_attr_str $S5003, $P5042, $P5043, "$!target", 2
    set __lowered_lex_123, $S5003
    nqp_decontainerize $P5044, __lowered_lex_124
    find_lex $P5045, "$?CLASS"
    repr_get_attr_int $I5015, $P5044, $P5045, "$!pos"
    substr $S5004, __lowered_lex_123, $I5015, __lowered_lex_122
.annotate 'line', 1439
    $P5046 = __lowered_lex_121."from"()
    set $I5016, $P5046
    substr $S5005, __lowered_lex_123, $I5016, __lowered_lex_122
    iseq $I5014, $S5004, $S5005
    box $P5051, $I5014
    set $P5050, $P5051
    unless $I5014 goto if753_end1538 
.annotate 'line', 1437
    nqp_decontainerize $P5047, __lowered_lex_124
    find_lex $P5048, "$?CLASS"
    repr_get_attr_int $I5018, $P5047, $P5048, "$!pos"
    add $I5017, $I5018, __lowered_lex_122
    $P5049 = __lowered_lex_126."!cursor_pass"($I5017, "")
    set $P5050, $P5049
  if753_end1538:
  if750_end1533:
    .return (__lowered_lex_126) 
.end
.HLL "nqp"
.namespace []
.sub "!LITERAL" :subid("cuid_69_1431289885.65252") :anon :lex :outer("cuid_90_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 1444
    .param pmc __lowered_lex_128 
    .param string __lowered_lex_129 
    .param int __lowered_lex_130 :optional 
    .param int haz_param_21 :opt_flag 
    .local pmc __lowered_lex_131 
    .local int __lowered_lex_132 
    .local string __lowered_lex_133 
    if haz_param_21, default1545
    set $I5011, 0
    set __lowered_lex_130, $I5011
  default1545:
    nqp_get_sc_object $P5001, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_131, $P5001
    length $I5001, __lowered_lex_129
    set __lowered_lex_132, $I5001
    nqp_decontainerize $P5002, __lowered_lex_128
    find_lex $P5003, "$?CLASS"
    repr_get_attr_obj $P5004, $P5002, $P5003, "$!shared"
    nqp_get_sc_object $P5005, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 35
    repr_get_attr_str $S5001, $P5004, $P5005, "$!target", 2
    set __lowered_lex_133, $S5001
    islt $I5002, __lowered_lex_132, 1
    set $I5008, $I5002
    if $I5002 goto unless755_end1542 
    unless __lowered_lex_130 goto if756_else1543 
    nqp_decontainerize $P5006, __lowered_lex_128
    find_lex $P5007, "$?CLASS"
    repr_get_attr_int $I5004, $P5006, $P5007, "$!pos"
    substr $S5003, __lowered_lex_133, $I5004, __lowered_lex_132
    downcase $S5002, $S5003
    downcase $S5004, __lowered_lex_129
    iseq $I5003, $S5002, $S5004
    set $I5007, $I5003
    goto if756_end1544
  if756_else1543:
    nqp_decontainerize $P5008, __lowered_lex_128
    find_lex $P5009, "$?CLASS"
    repr_get_attr_int $I5006, $P5008, $P5009, "$!pos"
    substr $S5005, __lowered_lex_133, $I5006, __lowered_lex_132
    iseq $I5005, $S5005, __lowered_lex_129
    set $I5007, $I5005
  if756_end1544:
    set $I5008, $I5007
  unless755_end1542:
    unless $I5008 goto if754_else1539 
.annotate 'line', 1450
.annotate 'line', 1451
    nqp_decontainerize $P5010, __lowered_lex_128
    $P5011 = $P5010."!cursor_start_cur"()
    set __lowered_lex_131, $P5011
.annotate 'line', 1452
    nqp_decontainerize $P5012, __lowered_lex_128
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5010, $P5012, $P5013, "$!pos"
    add $I5009, $I5010, __lowered_lex_132
    $P5014 = __lowered_lex_131."!cursor_pass"($I5009)
    goto if754_end1540
  if754_else1539:
.annotate 'line', 1454
    nqp_decontainerize $P5016, __lowered_lex_128
    find_lex $P5017, "$?CLASS"
    repr_get_attr_obj $P5018, $P5016, $P5017, "$!shared"
    nqp_get_sc_object $P5019, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 35
    getattribute $P5015, $P5018, $P5019, "$!fail_cursor"
    set __lowered_lex_131, $P5015
  if754_end1540:
    .return (__lowered_lex_131) 
.end
.HLL "nqp"
.namespace []
.sub "!DYNQUANT_LIMITS" :subid("cuid_70_1431289885.65252") :anon :lex :outer("cuid_90_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 1460
    .param pmc __lowered_lex_134 
    .param pmc __lowered_lex_135 
    .local pmc fb_tmp_157 
    .local pmc fb_tmp_158 
    .local pmc fb_tmp_159 
    .local pmc fb_tmp_160 
    nqp_islist $I5001, __lowered_lex_135
    unless $I5001 goto if757_else1546 
.annotate 'line', 1461
    set $N5001, __lowered_lex_135
    set $N5002, 1
    isgt $I5002, $N5001, $N5002
    unless $I5002 goto if758_else1548 
    new $P5001, 'ResizableIntegerArray'
    assign $P5001, 2
    assign $P5001, 0
    set fb_tmp_157, __lowered_lex_135
    repr_defined $I5003, fb_tmp_157
    unless $I5003 goto if759_else1550 
    set $P5002, fb_tmp_157[0]
    set $P5004, $P5002
    goto if759_end1551
  if759_else1550:
    null $P5003
    set $P5004, $P5003
  if759_end1551:
    unless_null $P5004, vivi_7601552
    nqp_get_sc_object $P5005, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5004, $P5005
  vivi_7601552:
    set $I5004, $P5004
    push $P5001, $I5004
    set fb_tmp_158, __lowered_lex_135
    repr_defined $I5005, fb_tmp_158
    unless $I5005 goto if761_else1553 
    set $P5006, fb_tmp_158[1]
    set $P5008, $P5006
    goto if761_end1554
  if761_else1553:
    null $P5007
    set $P5008, $P5007
  if761_end1554:
    unless_null $P5008, vivi_7621555
    nqp_get_sc_object $P5009, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5008, $P5009
  vivi_7621555:
    set $I5006, $P5008
    push $P5001, $I5006
    set $P5019, $P5001
    goto if758_end1549
  if758_else1548:
    new $P5010, 'ResizableIntegerArray'
    assign $P5010, 2
    assign $P5010, 0
    set fb_tmp_159, __lowered_lex_135
    repr_defined $I5007, fb_tmp_159
    unless $I5007 goto if763_else1556 
    set $P5011, fb_tmp_159[0]
    set $P5013, $P5011
    goto if763_end1557
  if763_else1556:
    null $P5012
    set $P5013, $P5012
  if763_end1557:
    unless_null $P5013, vivi_7641558
    nqp_get_sc_object $P5014, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5013, $P5014
  vivi_7641558:
    set $I5008, $P5013
    push $P5010, $I5008
    set fb_tmp_160, __lowered_lex_135
    repr_defined $I5009, fb_tmp_160
    unless $I5009 goto if765_else1559 
    set $P5015, fb_tmp_160[0]
    set $P5017, $P5015
    goto if765_end1560
  if765_else1559:
    null $P5016
    set $P5017, $P5016
  if765_end1560:
    unless_null $P5017, vivi_7661561
    nqp_get_sc_object $P5018, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5017, $P5018
  vivi_7661561:
    set $I5010, $P5017
    push $P5010, $I5010
    set $P5019, $P5010
  if758_end1549:
    set $P5021, $P5019
    goto if757_end1547
  if757_else1546:
.annotate 'line', 1464
    new $P5020, 'ResizableIntegerArray'
    assign $P5020, 2
    assign $P5020, 0
    set $I5011, __lowered_lex_135
    push $P5020, $I5011
    set $I5012, __lowered_lex_135
    push $P5020, $I5012
    set $P5021, $P5020
  if757_end1547:
    .return ($P5021) 
.end
.HLL "nqp"
.namespace []
.sub "!DELEGATE_ACCEPTS" :subid("cuid_71_1431289885.65252") :anon :lex :outer("cuid_90_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 1469
    .param pmc __lowered_lex_136 
    .param pmc __lowered_lex_137 
    .param pmc __lowered_lex_138 
.annotate 'line', 1470
    $P5001 = __lowered_lex_137."ACCEPTS"(__lowered_lex_138)
    unless $P5001 goto if767_else1562 
    set $I5001, 1
    goto if767_end1563
  if767_else1562:
    set $I5001, 0
  if767_end1563:
    .return ($I5001) 
.end
.HLL "nqp"
.namespace []
.sub "at" :subid("cuid_72_1431289885.65252") :anon :lex :outer("cuid_90_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 1473
    .param pmc __lowered_lex_139 
    .param pmc __lowered_lex_140 
    .local pmc __lowered_lex_141 
.annotate 'line', 1474
    nqp_decontainerize $P5001, __lowered_lex_139
    $P5002 = $P5001."!cursor_start_cur"()
    set __lowered_lex_141, $P5002
    set $N5001, __lowered_lex_140
    nqp_decontainerize $P5003, __lowered_lex_139
    find_lex $P5004, "$?CLASS"
    repr_get_attr_int $I5002, $P5003, $P5004, "$!pos"
    set $N5002, $I5002
    iseq $I5001, $N5001, $N5002
    unless $I5001 goto if768_end1565 
.annotate 'line', 1475
    nqp_decontainerize $P5005, __lowered_lex_139
    find_lex $P5006, "$?CLASS"
    repr_get_attr_int $I5003, $P5005, $P5006, "$!pos"
    $P5007 = __lowered_lex_141."!cursor_pass"($I5003)
  if768_end1565:
    .return (__lowered_lex_141) 
.end
.HLL "nqp"
.namespace []
.sub "before" :subid("cuid_73_1431289885.65252") :anon :lex :outer("cuid_90_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 1479
    .param pmc __lowered_lex_142 
    .param pmc __lowered_lex_143 
    .param pmc __lowered_lex_144 :optional 
    .param int haz_param_22 :opt_flag 
    .local int __lowered_lex_145 
    .local pmc __lowered_lex_146 
    .local pmc __lowered_lex_147 
    if haz_param_22, default1570
    box $P5036, 0
    set __lowered_lex_144, $P5036
  default1570:
    nqp_decontainerize $P5001, __lowered_lex_142
    find_lex $P5002, "$?CLASS"
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!shared"
    nqp_get_sc_object $P5004, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 35
    repr_get_attr_int $I5001, $P5003, $P5004, "$!highwater", 3
    set __lowered_lex_145, $I5001
    nqp_decontainerize $P5006, __lowered_lex_142
    find_lex $P5007, "$?CLASS"
    repr_get_attr_obj $P5008, $P5006, $P5007, "$!shared"
    nqp_get_sc_object $P5009, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 35
    getattribute $P5005, $P5008, $P5009, "@!highexpect"
    set __lowered_lex_146, $P5005
    nqp_decontainerize $P5010, __lowered_lex_142
    find_lex $P5011, "$?CLASS"
    repr_get_attr_obj $P5012, $P5010, $P5011, "$!shared"
    nqp_get_sc_object $P5013, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 35
    new $P5014, 'ResizableStringArray'
    setattribute $P5012, $P5013, "@!highexpect", $P5014
.annotate 'line', 1483
    nqp_decontainerize $P5015, __lowered_lex_142
    $P5016 = $P5015."!cursor_start_cur"()
    set __lowered_lex_147, $P5016
    find_lex $P5017, "$?CLASS"
    nqp_decontainerize $P5018, __lowered_lex_142
    find_lex $P5019, "$?CLASS"
    repr_get_attr_int $I5002, $P5018, $P5019, "$!pos"
    set $N5002, $I5002
    set $N5003, __lowered_lex_144
    sub $N5001, $N5002, $N5003
    set $I5003, $N5001
    repr_bind_attr_int __lowered_lex_147, $P5017, "$!pos", $I5003
    nqp_decontainerize $P5020, __lowered_lex_142
    find_lex $P5021, "$?CLASS"
    repr_get_attr_int $I5005, $P5020, $P5021, "$!pos"
    set $N5004, $I5005
    set $N5005, __lowered_lex_144
    isge $I5004, $N5004, $N5005
    set $I5008, $I5004
    unless $I5004 goto if770_end1569 
.annotate 'line', 1485
    $P5022 = __lowered_lex_143(__lowered_lex_147)
    find_lex $P5023, "$?CLASS"
    repr_get_attr_int $I5007, $P5022, $P5023, "$!pos"
    isge $I5006, $I5007, 0
    set $I5008, $I5006
  if770_end1569:
    unless $I5008 goto if769_else1566 
.annotate 'line', 1486
    nqp_decontainerize $P5024, __lowered_lex_142
    find_lex $P5025, "$?CLASS"
    repr_get_attr_int $I5009, $P5024, $P5025, "$!pos"
    $P5026 = __lowered_lex_147."!cursor_pass"($I5009, "before")
    goto if769_end1567
  if769_else1566:
    find_lex $P5027, "$?CLASS"
    repr_bind_attr_int __lowered_lex_147, $P5027, "$!pos", -3
  if769_end1567:
    nqp_decontainerize $P5028, __lowered_lex_142
    find_lex $P5029, "$?CLASS"
    repr_get_attr_obj $P5030, $P5028, $P5029, "$!shared"
    nqp_get_sc_object $P5031, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 35
    repr_bind_attr_int $P5030, $P5031, "$!highwater", 3, __lowered_lex_145
    nqp_decontainerize $P5032, __lowered_lex_142
    find_lex $P5033, "$?CLASS"
    repr_get_attr_obj $P5034, $P5032, $P5033, "$!shared"
    nqp_get_sc_object $P5035, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 35
    setattribute $P5034, $P5035, "@!highexpect", __lowered_lex_146
    .return (__lowered_lex_147) 
.end
.HLL "nqp"
.namespace []
.sub "after" :subid("cuid_74_1431289885.65252") :anon :lex :outer("cuid_90_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 1495
    .param pmc __lowered_lex_148 
    .param pmc __lowered_lex_149 
    .local int __lowered_lex_150 
    .local pmc __lowered_lex_151 
    .local pmc __lowered_lex_152 
    .local string __lowered_lex_153 
    .local pmc __lowered_lex_154 
    nqp_decontainerize $P5001, __lowered_lex_148
    find_lex $P5002, "$?CLASS"
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!shared"
    nqp_get_sc_object $P5004, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 35
    repr_get_attr_int $I5001, $P5003, $P5004, "$!highwater", 3
    set __lowered_lex_150, $I5001
    nqp_decontainerize $P5006, __lowered_lex_148
    find_lex $P5007, "$?CLASS"
    repr_get_attr_obj $P5008, $P5006, $P5007, "$!shared"
    nqp_get_sc_object $P5009, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 35
    getattribute $P5005, $P5008, $P5009, "@!highexpect"
    set __lowered_lex_151, $P5005
    nqp_decontainerize $P5010, __lowered_lex_148
    find_lex $P5011, "$?CLASS"
    repr_get_attr_obj $P5012, $P5010, $P5011, "$!shared"
    nqp_get_sc_object $P5013, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 35
    new $P5014, 'ResizableStringArray'
    setattribute $P5012, $P5013, "@!highexpect", $P5014
.annotate 'line', 1499
    nqp_decontainerize $P5015, __lowered_lex_148
    $P5016 = $P5015."!cursor_start_cur"()
    set __lowered_lex_152, $P5016
    nqp_decontainerize $P5017, __lowered_lex_148
    find_lex $P5018, "$?CLASS"
    repr_get_attr_obj $P5019, $P5017, $P5018, "$!shared"
    nqp_get_sc_object $P5020, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 35
    repr_get_attr_str $S5001, $P5019, $P5020, "$!target_flipped", 7
    set __lowered_lex_153, $S5001
    set $S5002, __lowered_lex_153
    isnull $I5002, $S5002
    unless $I5002 goto if771_end1572 
.annotate 'line', 1501
    nqp_decontainerize $P5022, __lowered_lex_148
    find_lex $P5023, "$?CLASS"
    repr_get_attr_obj $P5024, $P5022, $P5023, "$!shared"
    nqp_get_sc_object $P5025, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 35
    repr_get_attr_str $S5004, $P5024, $P5025, "$!target", 2
    box $P5021, $S5004
    $P5026 = $P5021."reverse"()
    set $S5003, $P5026
    set __lowered_lex_153, $S5003
    nqp_decontainerize $P5027, __lowered_lex_148
    find_lex $P5028, "$?CLASS"
    repr_get_attr_obj $P5029, $P5027, $P5028, "$!shared"
    nqp_get_sc_object $P5030, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 35
    repr_bind_attr_str $P5029, $P5030, "$!target_flipped", 7, __lowered_lex_153
  if771_end1572:
    nqp_decontainerize $P5032, __lowered_lex_148
    find_lex $P5033, "$?CLASS"
    repr_get_attr_obj $P5034, $P5032, $P5033, "$!shared"
    repr_clone $P5031, $P5034
    set __lowered_lex_154, $P5031
    nqp_get_sc_object $P5035, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 35
    repr_bind_attr_str __lowered_lex_154, $P5035, "$!target", 2, __lowered_lex_153
    find_lex $P5036, "$?CLASS"
    setattribute __lowered_lex_152, $P5036, "$!shared", __lowered_lex_154
    find_lex $P5037, "$?CLASS"
    length $I5004, __lowered_lex_153
    nqp_decontainerize $P5038, __lowered_lex_148
    find_lex $P5039, "$?CLASS"
    repr_get_attr_int $I5005, $P5038, $P5039, "$!pos"
    sub $I5003, $I5004, $I5005
    repr_bind_attr_int __lowered_lex_152, $P5037, "$!from", $I5003
    find_lex $P5040, "$?CLASS"
    length $I5007, __lowered_lex_153
    nqp_decontainerize $P5041, __lowered_lex_148
    find_lex $P5042, "$?CLASS"
    repr_get_attr_int $I5008, $P5041, $P5042, "$!pos"
    sub $I5006, $I5007, $I5008
    repr_bind_attr_int __lowered_lex_152, $P5040, "$!pos", $I5006
.annotate 'line', 1510
    $P5043 = __lowered_lex_149(__lowered_lex_152)
    find_lex $P5044, "$?CLASS"
    repr_get_attr_int $I5010, $P5043, $P5044, "$!pos"
    isge $I5009, $I5010, 0
    unless $I5009 goto if772_else1573 
.annotate 'line', 1511
    nqp_decontainerize $P5045, __lowered_lex_148
    find_lex $P5046, "$?CLASS"
    repr_get_attr_int $I5011, $P5045, $P5046, "$!pos"
    $P5047 = __lowered_lex_152."!cursor_pass"($I5011, "after")
    goto if772_end1574
  if772_else1573:
    find_lex $P5048, "$?CLASS"
    repr_bind_attr_int __lowered_lex_152, $P5048, "$!pos", -3
  if772_end1574:
    nqp_decontainerize $P5049, __lowered_lex_148
    find_lex $P5050, "$?CLASS"
    repr_get_attr_obj $P5051, $P5049, $P5050, "$!shared"
    nqp_get_sc_object $P5052, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 35
    repr_bind_attr_int $P5051, $P5052, "$!highwater", 3, __lowered_lex_150
    nqp_decontainerize $P5053, __lowered_lex_148
    find_lex $P5054, "$?CLASS"
    repr_get_attr_obj $P5055, $P5053, $P5054, "$!shared"
    nqp_get_sc_object $P5056, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 35
    setattribute $P5055, $P5056, "@!highexpect", __lowered_lex_151
    .return (__lowered_lex_152) 
.end
.HLL "nqp"
.namespace []
.sub "ws" :subid("cuid_75_1431289885.65252") :anon :lex :outer("cuid_90_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 1518
    .param pmc __lowered_lex_155 
    .local string __lowered_lex_156 
    .local pmc __lowered_lex_157 
    nqp_decontainerize $P5001, __lowered_lex_155
    find_lex $P5002, "$?CLASS"
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!shared"
    nqp_get_sc_object $P5004, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 35
    repr_get_attr_str $S5001, $P5003, $P5004, "$!target", 2
    set __lowered_lex_156, $S5001
.annotate 'line', 1521
    nqp_decontainerize $P5005, __lowered_lex_155
    $P5006 = $P5005."!cursor_start_cur"()
    set __lowered_lex_157, $P5006
    nqp_decontainerize $P5007, __lowered_lex_155
    find_lex $P5008, "$?CLASS"
    repr_get_attr_int $I5002, $P5007, $P5008, "$!pos"
    length $I5003, __lowered_lex_156
    isge $I5001, $I5002, $I5003
    unless $I5001 goto if773_else1575 
.annotate 'line', 1523
    nqp_decontainerize $P5009, __lowered_lex_155
    find_lex $P5010, "$?CLASS"
    repr_get_attr_int $I5004, $P5009, $P5010, "$!pos"
    $P5011 = __lowered_lex_157."!cursor_pass"($I5004, "ws")
    goto if773_end1576
  if773_else1575:
    nqp_decontainerize $P5012, __lowered_lex_155
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5006, $P5012, $P5013, "$!pos"
    islt $I5005, $I5006, 1
    set $I5010, $I5005
    if $I5005 goto unless776_end1582 
    nqp_decontainerize $P5014, __lowered_lex_155
    find_lex $P5015, "$?CLASS"
    repr_get_attr_int $I5009, $P5014, $P5015, "$!pos"
    is_cclass $I5008, 8192, __lowered_lex_156, $I5009
    not $I5007, $I5008
    set $I5010, $I5007
  unless776_end1582:
    set $I5015, $I5010
    if $I5010 goto unless775_end1580 
    nqp_decontainerize $P5016, __lowered_lex_155
    find_lex $P5017, "$?CLASS"
    repr_get_attr_int $I5014, $P5016, $P5017, "$!pos"
    sub $I5013, $I5014, 1
    is_cclass $I5012, 8192, __lowered_lex_156, $I5013
    not $I5011, $I5012
    set $I5015, $I5011
  unless775_end1580:
    box $P5022, $I5015
    set $P5021, $P5022
    unless $I5015 goto if774_end1578 
.annotate 'line', 1527
    nqp_decontainerize $P5018, __lowered_lex_155
    find_lex $P5019, "$?CLASS"
    repr_get_attr_int $I5017, $P5018, $P5019, "$!pos"
    length $I5018, __lowered_lex_156
    find_not_cclass $I5016, 32, __lowered_lex_156, $I5017, $I5018
    $P5020 = __lowered_lex_157."!cursor_pass"($I5016, "ws")
    set $P5021, $P5020
  if774_end1578:
  if773_end1576:
    .return (__lowered_lex_157) 
.end
.HLL "nqp"
.namespace []
.sub "ww" :subid("cuid_76_1431289885.65252") :anon :lex :outer("cuid_90_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 1534
    .param pmc __lowered_lex_158 
    .local pmc __lowered_lex_159 
    .local string __lowered_lex_160 
    nqp_get_sc_object $P5001, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_159, $P5001
    nqp_decontainerize $P5002, __lowered_lex_158
    find_lex $P5003, "$?CLASS"
    repr_get_attr_obj $P5004, $P5002, $P5003, "$!shared"
    nqp_get_sc_object $P5005, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 35
    repr_get_attr_str $S5001, $P5004, $P5005, "$!target", 2
    set __lowered_lex_160, $S5001
    nqp_decontainerize $P5006, __lowered_lex_158
    find_lex $P5007, "$?CLASS"
    repr_get_attr_int $I5002, $P5006, $P5007, "$!pos"
    isgt $I5001, $I5002, 0
    set $I5006, $I5001
    unless $I5001 goto if780_end1590 
    nqp_decontainerize $P5008, __lowered_lex_158
    find_lex $P5009, "$?CLASS"
    repr_get_attr_int $I5004, $P5008, $P5009, "$!pos"
    length $I5005, __lowered_lex_160
    isne $I5003, $I5004, $I5005
    set $I5006, $I5003
  if780_end1590:
    set $I5009, $I5006
    unless $I5006 goto if779_end1588 
    nqp_decontainerize $P5010, __lowered_lex_158
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5008, $P5010, $P5011, "$!pos"
    is_cclass $I5007, 8192, __lowered_lex_160, $I5008
    set $I5009, $I5007
  if779_end1588:
    set $I5013, $I5009
    unless $I5009 goto if778_end1586 
    nqp_decontainerize $P5012, __lowered_lex_158
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5012, $P5012, $P5013, "$!pos"
    sub $I5011, $I5012, 1
    is_cclass $I5010, 8192, __lowered_lex_160, $I5011
    set $I5013, $I5010
  if778_end1586:
    unless $I5013 goto if777_else1583 
.annotate 'line', 1539
.annotate 'line', 1540
    nqp_decontainerize $P5014, __lowered_lex_158
    $P5015 = $P5014."!cursor_start_cur"()
    set __lowered_lex_159, $P5015
.annotate 'line', 1541
    nqp_decontainerize $P5016, __lowered_lex_158
    find_lex $P5017, "$?CLASS"
    repr_get_attr_int $I5014, $P5016, $P5017, "$!pos"
    $P5018 = __lowered_lex_159."!cursor_pass"($I5014, "ww")
    goto if777_end1584
  if777_else1583:
.annotate 'line', 1543
    nqp_decontainerize $P5020, __lowered_lex_158
    find_lex $P5021, "$?CLASS"
    repr_get_attr_obj $P5022, $P5020, $P5021, "$!shared"
    nqp_get_sc_object $P5023, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 35
    getattribute $P5019, $P5022, $P5023, "$!fail_cursor"
    set __lowered_lex_159, $P5019
  if777_end1584:
    .return (__lowered_lex_159) 
.end
.HLL "nqp"
.namespace []
.sub "wb" :subid("cuid_77_1431289885.65252") :anon :lex :outer("cuid_90_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 1549
    .param pmc __lowered_lex_161 
    .local pmc __lowered_lex_162 
    .local string __lowered_lex_163 
.annotate 'line', 1550
    nqp_decontainerize $P5001, __lowered_lex_161
    $P5002 = $P5001."!cursor_start_cur"()
    set __lowered_lex_162, $P5002
    nqp_decontainerize $P5003, __lowered_lex_161
    find_lex $P5004, "$?CLASS"
    repr_get_attr_obj $P5005, $P5003, $P5004, "$!shared"
    nqp_get_sc_object $P5006, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 35
    repr_get_attr_str $S5001, $P5005, $P5006, "$!target", 2
    set __lowered_lex_163, $S5001
    nqp_decontainerize $P5007, __lowered_lex_161
    find_lex $P5008, "$?CLASS"
    repr_get_attr_int $I5002, $P5007, $P5008, "$!pos"
    iseq $I5001, $I5002, 0
    set $I5005, $I5001
    unless $I5001 goto if784_end1598 
    nqp_decontainerize $P5009, __lowered_lex_161
    find_lex $P5010, "$?CLASS"
    repr_get_attr_int $I5004, $P5009, $P5010, "$!pos"
    is_cclass $I5003, 8192, __lowered_lex_163, $I5004
    set $I5005, $I5003
  if784_end1598:
    set $I5013, $I5005
    if $I5005 goto unless783_end1596 
    nqp_decontainerize $P5011, __lowered_lex_161
    find_lex $P5012, "$?CLASS"
    repr_get_attr_int $I5007, $P5011, $P5012, "$!pos"
    length $I5008, __lowered_lex_163
    iseq $I5006, $I5007, $I5008
    set $I5012, $I5006
    unless $I5006 goto if785_end1600 
    nqp_decontainerize $P5013, __lowered_lex_161
    find_lex $P5014, "$?CLASS"
    repr_get_attr_int $I5011, $P5013, $P5014, "$!pos"
    sub $I5010, $I5011, 1
    is_cclass $I5009, 8192, __lowered_lex_163, $I5010
    set $I5012, $I5009
  if785_end1600:
    set $I5013, $I5012
  unless783_end1596:
    set $I5020, $I5013
    if $I5013 goto unless782_end1594 
    nqp_decontainerize $P5015, __lowered_lex_161
    find_lex $P5016, "$?CLASS"
    repr_get_attr_int $I5017, $P5015, $P5016, "$!pos"
    sub $I5016, $I5017, 1
    is_cclass $I5015, 8192, __lowered_lex_163, $I5016
    set $N5001, $I5015
    nqp_decontainerize $P5017, __lowered_lex_161
    find_lex $P5018, "$?CLASS"
    repr_get_attr_int $I5019, $P5017, $P5018, "$!pos"
    is_cclass $I5018, 8192, __lowered_lex_163, $I5019
    set $N5002, $I5018
    isne $I5014, $N5001, $N5002
    set $I5020, $I5014
  unless782_end1594:
    unless $I5020 goto if781_end1592 
.annotate 'line', 1552
    nqp_decontainerize $P5019, __lowered_lex_161
    find_lex $P5020, "$?CLASS"
    repr_get_attr_int $I5021, $P5019, $P5020, "$!pos"
    $P5021 = __lowered_lex_162."!cursor_pass"($I5021, "wb")
  if781_end1592:
    .return (__lowered_lex_162) 
.end
.HLL "nqp"
.namespace []
.sub "ident" :subid("cuid_78_1431289885.65252") :anon :lex :outer("cuid_90_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 1561
    .param pmc __lowered_lex_164 
    .local pmc __lowered_lex_165 
    .local string __lowered_lex_166 
    nqp_get_sc_object $P5001, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_165, $P5001
    nqp_decontainerize $P5002, __lowered_lex_164
    find_lex $P5003, "$?CLASS"
    repr_get_attr_obj $P5004, $P5002, $P5003, "$!shared"
    nqp_get_sc_object $P5005, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 35
    repr_get_attr_str $S5001, $P5004, $P5005, "$!target", 2
    set __lowered_lex_166, $S5001
    nqp_decontainerize $P5006, __lowered_lex_164
    find_lex $P5007, "$?CLASS"
    repr_get_attr_int $I5002, $P5006, $P5007, "$!pos"
    length $I5003, __lowered_lex_166
    islt $I5001, $I5002, $I5003
    set $I5010, $I5001
    unless $I5001 goto if787_end1604 
    nqp_decontainerize $P5008, __lowered_lex_164
    find_lex $P5009, "$?CLASS"
    repr_get_attr_int $I5006, $P5008, $P5009, "$!pos"
    ord $I5005, __lowered_lex_166, $I5006
    iseq $I5004, $I5005, 95
    set $I5009, $I5004
    if $I5004 goto unless788_end1606 
    nqp_decontainerize $P5010, __lowered_lex_164
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5008, $P5010, $P5011, "$!pos"
    is_cclass $I5007, 4, __lowered_lex_166, $I5008
    set $I5009, $I5007
  unless788_end1606:
    set $I5010, $I5009
  if787_end1604:
    unless $I5010 goto if786_else1601 
.annotate 'line', 1566
.annotate 'line', 1567
    nqp_decontainerize $P5012, __lowered_lex_164
    $P5013 = $P5012."!cursor_start_cur"()
    set __lowered_lex_165, $P5013
.annotate 'line', 1568
    nqp_decontainerize $P5014, __lowered_lex_164
    find_lex $P5015, "$?CLASS"
    repr_get_attr_int $I5012, $P5014, $P5015, "$!pos"
    length $I5013, __lowered_lex_166
    find_not_cclass $I5011, 8192, __lowered_lex_166, $I5012, $I5013
    $P5016 = __lowered_lex_165."!cursor_pass"($I5011)
    goto if786_end1602
  if786_else1601:
.annotate 'line', 1573
    nqp_decontainerize $P5018, __lowered_lex_164
    find_lex $P5019, "$?CLASS"
    repr_get_attr_obj $P5020, $P5018, $P5019, "$!shared"
    nqp_get_sc_object $P5021, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 35
    getattribute $P5017, $P5020, $P5021, "$!fail_cursor"
    set __lowered_lex_165, $P5017
  if786_end1602:
    .return (__lowered_lex_165) 
.end
.HLL "nqp"
.namespace []
.sub "alpha" :subid("cuid_79_1431289885.65252") :anon :lex :outer("cuid_90_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 1579
    .param pmc __lowered_lex_167 
    .local pmc __lowered_lex_168 
    .local string __lowered_lex_169 
.annotate 'line', 1580
    nqp_decontainerize $P5001, __lowered_lex_167
    $P5002 = $P5001."!cursor_start_cur"()
    set __lowered_lex_168, $P5002
    nqp_decontainerize $P5003, __lowered_lex_167
    find_lex $P5004, "$?CLASS"
    repr_get_attr_obj $P5005, $P5003, $P5004, "$!shared"
    nqp_get_sc_object $P5006, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 35
    repr_get_attr_str $S5001, $P5005, $P5006, "$!target", 2
    set __lowered_lex_169, $S5001
    nqp_decontainerize $P5007, __lowered_lex_167
    find_lex $P5008, "$?CLASS"
    repr_get_attr_int $I5002, $P5007, $P5008, "$!pos"
    length $I5003, __lowered_lex_169
    islt $I5001, $I5002, $I5003
    set $I5010, $I5001
    unless $I5001 goto if790_end1610 
    nqp_decontainerize $P5009, __lowered_lex_167
    find_lex $P5010, "$?CLASS"
    repr_get_attr_int $I5005, $P5009, $P5010, "$!pos"
    is_cclass $I5004, 4, __lowered_lex_169, $I5005
    set $I5009, $I5004
    if $I5004 goto unless791_end1612 
    nqp_decontainerize $P5011, __lowered_lex_167
    find_lex $P5012, "$?CLASS"
    repr_get_attr_int $I5008, $P5011, $P5012, "$!pos"
    ord $I5007, __lowered_lex_169, $I5008
    iseq $I5006, $I5007, 95
    set $I5009, $I5006
  unless791_end1612:
    set $I5010, $I5009
  if790_end1610:
    unless $I5010 goto if789_end1608 
.annotate 'line', 1582
    nqp_decontainerize $P5013, __lowered_lex_167
    find_lex $P5014, "$?CLASS"
    repr_get_attr_int $I5012, $P5013, $P5014, "$!pos"
    add $I5011, $I5012, 1
    $P5015 = __lowered_lex_168."!cursor_pass"($I5011, "alpha")
  if789_end1608:
    .return (__lowered_lex_168) 
.end
.HLL "nqp"
.namespace []
.sub "alnum" :subid("cuid_80_1431289885.65252") :anon :lex :outer("cuid_90_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 1589
    .param pmc __lowered_lex_170 
    .local pmc __lowered_lex_171 
    .local string __lowered_lex_172 
.annotate 'line', 1590
    nqp_decontainerize $P5001, __lowered_lex_170
    $P5002 = $P5001."!cursor_start_cur"()
    set __lowered_lex_171, $P5002
    nqp_decontainerize $P5003, __lowered_lex_170
    find_lex $P5004, "$?CLASS"
    repr_get_attr_obj $P5005, $P5003, $P5004, "$!shared"
    nqp_get_sc_object $P5006, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 35
    repr_get_attr_str $S5001, $P5005, $P5006, "$!target", 2
    set __lowered_lex_172, $S5001
    nqp_decontainerize $P5007, __lowered_lex_170
    find_lex $P5008, "$?CLASS"
    repr_get_attr_int $I5002, $P5007, $P5008, "$!pos"
    length $I5003, __lowered_lex_172
    islt $I5001, $I5002, $I5003
    set $I5010, $I5001
    unless $I5001 goto if793_end1616 
    nqp_decontainerize $P5009, __lowered_lex_170
    find_lex $P5010, "$?CLASS"
    repr_get_attr_int $I5005, $P5009, $P5010, "$!pos"
    is_cclass $I5004, 2048, __lowered_lex_172, $I5005
    set $I5009, $I5004
    if $I5004 goto unless794_end1618 
    nqp_decontainerize $P5011, __lowered_lex_170
    find_lex $P5012, "$?CLASS"
    repr_get_attr_int $I5008, $P5011, $P5012, "$!pos"
    ord $I5007, __lowered_lex_172, $I5008
    iseq $I5006, $I5007, 95
    set $I5009, $I5006
  unless794_end1618:
    set $I5010, $I5009
  if793_end1616:
    unless $I5010 goto if792_end1614 
.annotate 'line', 1592
    nqp_decontainerize $P5013, __lowered_lex_170
    find_lex $P5014, "$?CLASS"
    repr_get_attr_int $I5012, $P5013, $P5014, "$!pos"
    add $I5011, $I5012, 1
    $P5015 = __lowered_lex_171."!cursor_pass"($I5011, "alnum")
  if792_end1614:
    .return (__lowered_lex_171) 
.end
.HLL "nqp"
.namespace []
.sub "upper" :subid("cuid_81_1431289885.65252") :anon :lex :outer("cuid_90_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 1599
    .param pmc __lowered_lex_173 
    .local pmc __lowered_lex_174 
    .local string __lowered_lex_175 
.annotate 'line', 1600
    nqp_decontainerize $P5001, __lowered_lex_173
    $P5002 = $P5001."!cursor_start_cur"()
    set __lowered_lex_174, $P5002
    nqp_decontainerize $P5003, __lowered_lex_173
    find_lex $P5004, "$?CLASS"
    repr_get_attr_obj $P5005, $P5003, $P5004, "$!shared"
    nqp_get_sc_object $P5006, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 35
    repr_get_attr_str $S5001, $P5005, $P5006, "$!target", 2
    set __lowered_lex_175, $S5001
    nqp_decontainerize $P5007, __lowered_lex_173
    find_lex $P5008, "$?CLASS"
    repr_get_attr_int $I5002, $P5007, $P5008, "$!pos"
    length $I5003, __lowered_lex_175
    islt $I5001, $I5002, $I5003
    set $I5006, $I5001
    unless $I5001 goto if796_end1622 
    nqp_decontainerize $P5009, __lowered_lex_173
    find_lex $P5010, "$?CLASS"
    repr_get_attr_int $I5005, $P5009, $P5010, "$!pos"
    is_cclass $I5004, 1, __lowered_lex_175, $I5005
    set $I5006, $I5004
  if796_end1622:
    unless $I5006 goto if795_end1620 
.annotate 'line', 1602
    nqp_decontainerize $P5011, __lowered_lex_173
    find_lex $P5012, "$?CLASS"
    repr_get_attr_int $I5008, $P5011, $P5012, "$!pos"
    add $I5007, $I5008, 1
    $P5013 = __lowered_lex_174."!cursor_pass"($I5007, "upper")
  if795_end1620:
    .return (__lowered_lex_174) 
.end
.HLL "nqp"
.namespace []
.sub "lower" :subid("cuid_82_1431289885.65252") :anon :lex :outer("cuid_90_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 1608
    .param pmc __lowered_lex_176 
    .local pmc __lowered_lex_177 
    .local string __lowered_lex_178 
.annotate 'line', 1609
    nqp_decontainerize $P5001, __lowered_lex_176
    $P5002 = $P5001."!cursor_start_cur"()
    set __lowered_lex_177, $P5002
    nqp_decontainerize $P5003, __lowered_lex_176
    find_lex $P5004, "$?CLASS"
    repr_get_attr_obj $P5005, $P5003, $P5004, "$!shared"
    nqp_get_sc_object $P5006, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 35
    repr_get_attr_str $S5001, $P5005, $P5006, "$!target", 2
    set __lowered_lex_178, $S5001
    nqp_decontainerize $P5007, __lowered_lex_176
    find_lex $P5008, "$?CLASS"
    repr_get_attr_int $I5002, $P5007, $P5008, "$!pos"
    length $I5003, __lowered_lex_178
    islt $I5001, $I5002, $I5003
    set $I5006, $I5001
    unless $I5001 goto if798_end1626 
    nqp_decontainerize $P5009, __lowered_lex_176
    find_lex $P5010, "$?CLASS"
    repr_get_attr_int $I5005, $P5009, $P5010, "$!pos"
    is_cclass $I5004, 2, __lowered_lex_178, $I5005
    set $I5006, $I5004
  if798_end1626:
    unless $I5006 goto if797_end1624 
.annotate 'line', 1611
    nqp_decontainerize $P5011, __lowered_lex_176
    find_lex $P5012, "$?CLASS"
    repr_get_attr_int $I5008, $P5011, $P5012, "$!pos"
    add $I5007, $I5008, 1
    $P5013 = __lowered_lex_177."!cursor_pass"($I5007, "lower")
  if797_end1624:
    .return (__lowered_lex_177) 
.end
.HLL "nqp"
.namespace []
.sub "digit" :subid("cuid_83_1431289885.65252") :anon :lex :outer("cuid_90_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 1617
    .param pmc __lowered_lex_179 
    .local pmc __lowered_lex_180 
    .local string __lowered_lex_181 
.annotate 'line', 1618
    nqp_decontainerize $P5001, __lowered_lex_179
    $P5002 = $P5001."!cursor_start_cur"()
    set __lowered_lex_180, $P5002
    nqp_decontainerize $P5003, __lowered_lex_179
    find_lex $P5004, "$?CLASS"
    repr_get_attr_obj $P5005, $P5003, $P5004, "$!shared"
    nqp_get_sc_object $P5006, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 35
    repr_get_attr_str $S5001, $P5005, $P5006, "$!target", 2
    set __lowered_lex_181, $S5001
    nqp_decontainerize $P5007, __lowered_lex_179
    find_lex $P5008, "$?CLASS"
    repr_get_attr_int $I5002, $P5007, $P5008, "$!pos"
    length $I5003, __lowered_lex_181
    islt $I5001, $I5002, $I5003
    set $I5006, $I5001
    unless $I5001 goto if800_end1630 
    nqp_decontainerize $P5009, __lowered_lex_179
    find_lex $P5010, "$?CLASS"
    repr_get_attr_int $I5005, $P5009, $P5010, "$!pos"
    is_cclass $I5004, 8, __lowered_lex_181, $I5005
    set $I5006, $I5004
  if800_end1630:
    unless $I5006 goto if799_end1628 
.annotate 'line', 1620
    nqp_decontainerize $P5011, __lowered_lex_179
    find_lex $P5012, "$?CLASS"
    repr_get_attr_int $I5008, $P5011, $P5012, "$!pos"
    add $I5007, $I5008, 1
    $P5013 = __lowered_lex_180."!cursor_pass"($I5007, "digit")
  if799_end1628:
    .return (__lowered_lex_180) 
.end
.HLL "nqp"
.namespace []
.sub "xdigit" :subid("cuid_84_1431289885.65252") :anon :lex :outer("cuid_90_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 1626
    .param pmc __lowered_lex_182 
    .local pmc __lowered_lex_183 
    .local string __lowered_lex_184 
.annotate 'line', 1627
    nqp_decontainerize $P5001, __lowered_lex_182
    $P5002 = $P5001."!cursor_start_cur"()
    set __lowered_lex_183, $P5002
    nqp_decontainerize $P5003, __lowered_lex_182
    find_lex $P5004, "$?CLASS"
    repr_get_attr_obj $P5005, $P5003, $P5004, "$!shared"
    nqp_get_sc_object $P5006, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 35
    repr_get_attr_str $S5001, $P5005, $P5006, "$!target", 2
    set __lowered_lex_184, $S5001
    nqp_decontainerize $P5007, __lowered_lex_182
    find_lex $P5008, "$?CLASS"
    repr_get_attr_int $I5002, $P5007, $P5008, "$!pos"
    length $I5003, __lowered_lex_184
    islt $I5001, $I5002, $I5003
    set $I5006, $I5001
    unless $I5001 goto if802_end1634 
    nqp_decontainerize $P5009, __lowered_lex_182
    find_lex $P5010, "$?CLASS"
    repr_get_attr_int $I5005, $P5009, $P5010, "$!pos"
    is_cclass $I5004, 16, __lowered_lex_184, $I5005
    set $I5006, $I5004
  if802_end1634:
    unless $I5006 goto if801_end1632 
.annotate 'line', 1629
    nqp_decontainerize $P5011, __lowered_lex_182
    find_lex $P5012, "$?CLASS"
    repr_get_attr_int $I5008, $P5011, $P5012, "$!pos"
    add $I5007, $I5008, 1
    $P5013 = __lowered_lex_183."!cursor_pass"($I5007, "xdigit")
  if801_end1632:
    .return (__lowered_lex_183) 
.end
.HLL "nqp"
.namespace []
.sub "space" :subid("cuid_85_1431289885.65252") :anon :lex :outer("cuid_90_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 1635
    .param pmc __lowered_lex_185 
    .local pmc __lowered_lex_186 
    .local string __lowered_lex_187 
.annotate 'line', 1636
    nqp_decontainerize $P5001, __lowered_lex_185
    $P5002 = $P5001."!cursor_start_cur"()
    set __lowered_lex_186, $P5002
    nqp_decontainerize $P5003, __lowered_lex_185
    find_lex $P5004, "$?CLASS"
    repr_get_attr_obj $P5005, $P5003, $P5004, "$!shared"
    nqp_get_sc_object $P5006, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 35
    repr_get_attr_str $S5001, $P5005, $P5006, "$!target", 2
    set __lowered_lex_187, $S5001
    nqp_decontainerize $P5007, __lowered_lex_185
    find_lex $P5008, "$?CLASS"
    repr_get_attr_int $I5002, $P5007, $P5008, "$!pos"
    length $I5003, __lowered_lex_187
    islt $I5001, $I5002, $I5003
    set $I5006, $I5001
    unless $I5001 goto if804_end1638 
    nqp_decontainerize $P5009, __lowered_lex_185
    find_lex $P5010, "$?CLASS"
    repr_get_attr_int $I5005, $P5009, $P5010, "$!pos"
    is_cclass $I5004, 32, __lowered_lex_187, $I5005
    set $I5006, $I5004
  if804_end1638:
    unless $I5006 goto if803_end1636 
.annotate 'line', 1638
    nqp_decontainerize $P5011, __lowered_lex_185
    find_lex $P5012, "$?CLASS"
    repr_get_attr_int $I5008, $P5011, $P5012, "$!pos"
    add $I5007, $I5008, 1
    $P5013 = __lowered_lex_186."!cursor_pass"($I5007, "space")
  if803_end1636:
    .return (__lowered_lex_186) 
.end
.HLL "nqp"
.namespace []
.sub "blank" :subid("cuid_86_1431289885.65252") :anon :lex :outer("cuid_90_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 1644
    .param pmc __lowered_lex_188 
    .local pmc __lowered_lex_189 
    .local string __lowered_lex_190 
.annotate 'line', 1645
    nqp_decontainerize $P5001, __lowered_lex_188
    $P5002 = $P5001."!cursor_start_cur"()
    set __lowered_lex_189, $P5002
    nqp_decontainerize $P5003, __lowered_lex_188
    find_lex $P5004, "$?CLASS"
    repr_get_attr_obj $P5005, $P5003, $P5004, "$!shared"
    nqp_get_sc_object $P5006, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 35
    repr_get_attr_str $S5001, $P5005, $P5006, "$!target", 2
    set __lowered_lex_190, $S5001
    nqp_decontainerize $P5007, __lowered_lex_188
    find_lex $P5008, "$?CLASS"
    repr_get_attr_int $I5002, $P5007, $P5008, "$!pos"
    length $I5003, __lowered_lex_190
    islt $I5001, $I5002, $I5003
    set $I5006, $I5001
    unless $I5001 goto if806_end1642 
    nqp_decontainerize $P5009, __lowered_lex_188
    find_lex $P5010, "$?CLASS"
    repr_get_attr_int $I5005, $P5009, $P5010, "$!pos"
    is_cclass $I5004, 256, __lowered_lex_190, $I5005
    set $I5006, $I5004
  if806_end1642:
    unless $I5006 goto if805_end1640 
.annotate 'line', 1647
    nqp_decontainerize $P5011, __lowered_lex_188
    find_lex $P5012, "$?CLASS"
    repr_get_attr_int $I5008, $P5011, $P5012, "$!pos"
    add $I5007, $I5008, 1
    $P5013 = __lowered_lex_189."!cursor_pass"($I5007, "blank")
  if805_end1640:
    .return (__lowered_lex_189) 
.end
.HLL "nqp"
.namespace []
.sub "cntrl" :subid("cuid_87_1431289885.65252") :anon :lex :outer("cuid_90_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 1653
    .param pmc __lowered_lex_191 
    .local pmc __lowered_lex_192 
    .local string __lowered_lex_193 
.annotate 'line', 1654
    nqp_decontainerize $P5001, __lowered_lex_191
    $P5002 = $P5001."!cursor_start_cur"()
    set __lowered_lex_192, $P5002
    nqp_decontainerize $P5003, __lowered_lex_191
    find_lex $P5004, "$?CLASS"
    repr_get_attr_obj $P5005, $P5003, $P5004, "$!shared"
    nqp_get_sc_object $P5006, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 35
    repr_get_attr_str $S5001, $P5005, $P5006, "$!target", 2
    set __lowered_lex_193, $S5001
    nqp_decontainerize $P5007, __lowered_lex_191
    find_lex $P5008, "$?CLASS"
    repr_get_attr_int $I5002, $P5007, $P5008, "$!pos"
    length $I5003, __lowered_lex_193
    islt $I5001, $I5002, $I5003
    set $I5006, $I5001
    unless $I5001 goto if808_end1646 
    nqp_decontainerize $P5009, __lowered_lex_191
    find_lex $P5010, "$?CLASS"
    repr_get_attr_int $I5005, $P5009, $P5010, "$!pos"
    is_cclass $I5004, 512, __lowered_lex_193, $I5005
    set $I5006, $I5004
  if808_end1646:
    unless $I5006 goto if807_end1644 
.annotate 'line', 1656
    nqp_decontainerize $P5011, __lowered_lex_191
    find_lex $P5012, "$?CLASS"
    repr_get_attr_int $I5008, $P5011, $P5012, "$!pos"
    add $I5007, $I5008, 1
    $P5013 = __lowered_lex_192."!cursor_pass"($I5007, "cntrl")
  if807_end1644:
    .return (__lowered_lex_192) 
.end
.HLL "nqp"
.namespace []
.sub "punct" :subid("cuid_88_1431289885.65252") :anon :lex :outer("cuid_90_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 1662
    .param pmc __lowered_lex_194 
    .local pmc __lowered_lex_195 
    .local string __lowered_lex_196 
.annotate 'line', 1663
    nqp_decontainerize $P5001, __lowered_lex_194
    $P5002 = $P5001."!cursor_start_cur"()
    set __lowered_lex_195, $P5002
    nqp_decontainerize $P5003, __lowered_lex_194
    find_lex $P5004, "$?CLASS"
    repr_get_attr_obj $P5005, $P5003, $P5004, "$!shared"
    nqp_get_sc_object $P5006, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 35
    repr_get_attr_str $S5001, $P5005, $P5006, "$!target", 2
    set __lowered_lex_196, $S5001
    nqp_decontainerize $P5007, __lowered_lex_194
    find_lex $P5008, "$?CLASS"
    repr_get_attr_int $I5002, $P5007, $P5008, "$!pos"
    length $I5003, __lowered_lex_196
    islt $I5001, $I5002, $I5003
    set $I5006, $I5001
    unless $I5001 goto if810_end1650 
    nqp_decontainerize $P5009, __lowered_lex_194
    find_lex $P5010, "$?CLASS"
    repr_get_attr_int $I5005, $P5009, $P5010, "$!pos"
    is_cclass $I5004, 1024, __lowered_lex_196, $I5005
    set $I5006, $I5004
  if810_end1650:
    unless $I5006 goto if809_end1648 
.annotate 'line', 1665
    nqp_decontainerize $P5011, __lowered_lex_194
    find_lex $P5012, "$?CLASS"
    repr_get_attr_int $I5008, $P5011, $P5012, "$!pos"
    add $I5007, $I5008, 1
    $P5013 = __lowered_lex_195."!cursor_pass"($I5007, "punct")
  if809_end1648:
    .return (__lowered_lex_195) 
.end
.HLL "nqp"
.namespace []
.sub "FAILGOAL" :subid("cuid_89_1431289885.65252") :anon :lex :outer("cuid_90_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 1671
    .param pmc __lowered_lex_197 
    .param pmc __lowered_lex_198 
    .param pmc __lowered_lex_199 :optional 
    .param int haz_param_23 :opt_flag 
    if haz_param_23, default1653
    nqp_get_sc_object $P5004, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_199, $P5004
  default1653:
    if __lowered_lex_199 goto unless811_end1652 
.annotate 'line', 1672
    getinterp $P5001
    set $P5001, $P5001['sub';1]
    set $S5001, $P5001
    box $P5002, $S5001
    set __lowered_lex_199, $P5002
  unless811_end1652:
    set $S5005, __lowered_lex_199
    concat $S5004, "Unable to parse expression in ", $S5005
    concat $S5003, $S5004, "; couldn't find final "
    set $S5006, __lowered_lex_198
    concat $S5002, $S5003, $S5006
    box $P5003, $S5002
    die $P5003
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_136_1431289885.65252") :anon :lex :outer("cuid_126_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 1680
    .const 'Sub' $P5018 = 'cuid_91_1431289885.65252' 
    capture_lex $P5018 
    .const 'Sub' $P5018 = 'cuid_92_1431289885.65252' 
    capture_lex $P5018 
    .const 'Sub' $P5018 = 'cuid_93_1431289885.65252' 
    capture_lex $P5018 
    .const 'Sub' $P5018 = 'cuid_94_1431289885.65252' 
    capture_lex $P5018 
    .const 'Sub' $P5018 = 'cuid_95_1431289885.65252' 
    capture_lex $P5018 
    .const 'Sub' $P5018 = 'cuid_96_1431289885.65252' 
    capture_lex $P5018 
    .const 'Sub' $P5018 = 'cuid_97_1431289885.65252' 
    capture_lex $P5018 
    .const 'Sub' $P5018 = 'cuid_98_1431289885.65252' 
    capture_lex $P5018 
    .const 'Sub' $P5018 = 'cuid_99_1431289885.65252' 
    capture_lex $P5018 
    .const 'Sub' $P5018 = 'cuid_100_1431289885.65252' 
    capture_lex $P5018 
    .const 'Sub' $P5018 = 'cuid_101_1431289885.65252' 
    capture_lex $P5018 
    .const 'Sub' $P5018 = 'cuid_102_1431289885.65252' 
    capture_lex $P5018 
    .const 'Sub' $P5018 = 'cuid_103_1431289885.65252' 
    capture_lex $P5018 
    .const 'Sub' $P5018 = 'cuid_104_1431289885.65252' 
    capture_lex $P5018 
    .const 'Sub' $P5018 = 'cuid_105_1431289885.65252' 
    capture_lex $P5018 
    .const 'Sub' $P5018 = 'cuid_106_1431289885.65252' 
    capture_lex $P5018 
    .const 'Sub' $P5018 = 'cuid_107_1431289885.65252' 
    capture_lex $P5018 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_91_1431289885.65252' 
    capture_lex $P5001
    .const 'Sub' $P5002 = 'cuid_92_1431289885.65252' 
    capture_lex $P5002
    .const 'Sub' $P5003 = 'cuid_93_1431289885.65252' 
    capture_lex $P5003
    .const 'Sub' $P5004 = 'cuid_94_1431289885.65252' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_95_1431289885.65252' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_96_1431289885.65252' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_97_1431289885.65252' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_98_1431289885.65252' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_99_1431289885.65252' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_100_1431289885.65252' 
    capture_lex $P5010
    .const 'Sub' $P5011 = 'cuid_101_1431289885.65252' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_102_1431289885.65252' 
    capture_lex $P5012
    .const 'Sub' $P5013 = 'cuid_103_1431289885.65252' 
    capture_lex $P5013
    .const 'Sub' $P5014 = 'cuid_104_1431289885.65252' 
    capture_lex $P5014
    .const 'Sub' $P5015 = 'cuid_105_1431289885.65252' 
    capture_lex $P5015
    .const 'Sub' $P5016 = 'cuid_106_1431289885.65252' 
    capture_lex $P5016
    .const 'Sub' $P5017 = 'cuid_107_1431289885.65252' 
    capture_lex $P5017
    .return ($P5017) 
.end
.HLL "nqp"
.namespace []
.sub "from" :subid("cuid_91_1431289885.65252") :anon :lex :outer("cuid_136_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 1687
    .param pmc __lowered_lex_449 
    nqp_decontainerize $P5001, __lowered_lex_449
    nqp_get_sc_object $P5002, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 97
    repr_get_attr_int $I5001, $P5001, $P5002, "$!from", 3
    .return ($I5001) 
.end
.HLL "nqp"
.namespace []
.sub "orig" :subid("cuid_92_1431289885.65252") :anon :lex :outer("cuid_136_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 1688
    .param pmc __lowered_lex_450 
    nqp_decontainerize $P5001, __lowered_lex_450
    nqp_get_sc_object $P5002, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 97
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!orig", 2
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "to" :subid("cuid_93_1431289885.65252") :anon :lex :outer("cuid_136_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 1689
    .param pmc __lowered_lex_451 
    nqp_decontainerize $P5001, __lowered_lex_451
    nqp_get_sc_object $P5002, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 97
    repr_get_attr_int $I5001, $P5001, $P5002, "$!to", 4
    .return ($I5001) 
.end
.HLL "nqp"
.namespace []
.sub "CURSOR" :subid("cuid_94_1431289885.65252") :anon :lex :outer("cuid_136_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 1690
    .param pmc __lowered_lex_452 
    nqp_decontainerize $P5001, __lowered_lex_452
    nqp_get_sc_object $P5002, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 97
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!cursor", 6
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "PRECURSOR" :subid("cuid_95_1431289885.65252") :anon :lex :outer("cuid_136_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 1691
    .param pmc __lowered_lex_453 
    nqp_decontainerize $P5001, __lowered_lex_453
    nqp_get_sc_object $P5002, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 97
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!cursor", 6
    nqp_decontainerize $P5004, __lowered_lex_453
    nqp_get_sc_object $P5005, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 97
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!orig", 2
    nqp_decontainerize $P5007, __lowered_lex_453
    nqp_get_sc_object $P5008, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 97
    repr_get_attr_int $I5001, $P5007, $P5008, "$!from", 3
    $P5009 = $P5003."!cursor_init"($P5006, $I5001 :named("p"))
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "Str" :subid("cuid_96_1431289885.65252") :anon :lex :outer("cuid_136_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 1692
    .param pmc __lowered_lex_454 
    nqp_decontainerize $P5001, __lowered_lex_454
    nqp_get_sc_object $P5002, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 97
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!orig", 2
    set $S5002, $P5003
    nqp_decontainerize $P5004, __lowered_lex_454
    nqp_get_sc_object $P5005, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 97
    repr_get_attr_int $I5001, $P5004, $P5005, "$!from", 3
    nqp_decontainerize $P5006, __lowered_lex_454
    nqp_get_sc_object $P5007, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 97
    repr_get_attr_int $I5003, $P5006, $P5007, "$!to", 4
    nqp_decontainerize $P5008, __lowered_lex_454
    nqp_get_sc_object $P5009, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 97
    repr_get_attr_int $I5004, $P5008, $P5009, "$!from", 3
    sub $I5002, $I5003, $I5004
    substr $S5001, $S5002, $I5001, $I5002
    .return ($S5001) 
.end
.HLL "nqp"
.namespace []
.sub "Int" :subid("cuid_97_1431289885.65252") :anon :lex :outer("cuid_136_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 1693
    .param pmc __lowered_lex_455 
    nqp_decontainerize $P5001, __lowered_lex_455
    $P5002 = $P5001."Str"()
    set $N5001, $P5002
    .return ($N5001) 
.end
.HLL "nqp"
.namespace []
.sub "Num" :subid("cuid_98_1431289885.65252") :anon :lex :outer("cuid_136_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 1694
    .param pmc __lowered_lex_456 
    nqp_decontainerize $P5001, __lowered_lex_456
    $P5002 = $P5001."Str"()
    set $N5001, $P5002
    .return ($N5001) 
.end
.HLL "nqp"
.namespace []
.sub "Bool" :subid("cuid_99_1431289885.65252") :anon :lex :outer("cuid_136_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 1695
    .param pmc __lowered_lex_457 
    nqp_decontainerize $P5001, __lowered_lex_457
    nqp_get_sc_object $P5002, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 97
    repr_get_attr_int $I5002, $P5001, $P5002, "$!to", 4
    nqp_decontainerize $P5003, __lowered_lex_457
    nqp_get_sc_object $P5004, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 97
    repr_get_attr_int $I5003, $P5003, $P5004, "$!from", 3
    isge $I5001, $I5002, $I5003
    .return ($I5001) 
.end
.HLL "nqp"
.namespace []
.sub "chars" :subid("cuid_100_1431289885.65252") :anon :lex :outer("cuid_136_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 1696
    .param pmc __lowered_lex_458 
    nqp_decontainerize $P5001, __lowered_lex_458
    nqp_get_sc_object $P5002, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 97
    repr_get_attr_int $I5002, $P5001, $P5002, "$!to", 4
    nqp_decontainerize $P5003, __lowered_lex_458
    nqp_get_sc_object $P5004, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 97
    repr_get_attr_int $I5003, $P5003, $P5004, "$!from", 3
    isge $I5001, $I5002, $I5003
    unless $I5001 goto if812_else1654 
    nqp_decontainerize $P5005, __lowered_lex_458
    nqp_get_sc_object $P5006, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 97
    repr_get_attr_int $I5005, $P5005, $P5006, "$!to", 4
    nqp_decontainerize $P5007, __lowered_lex_458
    nqp_get_sc_object $P5008, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 97
    repr_get_attr_int $I5006, $P5007, $P5008, "$!from", 3
    sub $I5004, $I5005, $I5006
    set $I5007, $I5004
    goto if812_end1655
  if812_else1654:
    set $I5007, 0
  if812_end1655:
    .return ($I5007) 
.end
.HLL "nqp"
.namespace []
.sub "prune" :subid("cuid_101_1431289885.65252") :anon :lex :outer("cuid_136_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 1698
    .param pmc __lowered_lex_459 
.annotate 'line', 1699
    nqp_decontainerize $P5001, __lowered_lex_459
    $P5001."capture_prune"()
    nqp_decontainerize $P5002, __lowered_lex_459
    nqp_get_sc_object $P5003, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 97
    nqp_get_sc_object $P5004, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    repr_bind_attr_obj $P5002, $P5003, "$!cursor", 6, $P5004
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "!make" :subid("cuid_102_1431289885.65252") :anon :lex :outer("cuid_136_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 1703
    .param pmc __lowered_lex_460 
    .param pmc __lowered_lex_461 
    nqp_decontainerize $P5001, __lowered_lex_460
    nqp_get_sc_object $P5002, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 97
    repr_bind_attr_obj $P5001, $P5002, "$!made", 5, __lowered_lex_461
    .return (__lowered_lex_461) 
.end
.HLL "nqp"
.namespace []
.sub "make" :subid("cuid_103_1431289885.65252") :anon :lex :outer("cuid_136_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 1704
    .param pmc __lowered_lex_462 
    .param pmc __lowered_lex_463 
    nqp_decontainerize $P5001, __lowered_lex_462
    nqp_get_sc_object $P5002, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 97
    repr_bind_attr_obj $P5001, $P5002, "$!made", 5, __lowered_lex_463
    .return (__lowered_lex_463) 
.end
.HLL "nqp"
.namespace []
.sub "made" :subid("cuid_104_1431289885.65252") :anon :lex :outer("cuid_136_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 1705
    .param pmc __lowered_lex_464 
    nqp_decontainerize $P5001, __lowered_lex_464
    nqp_get_sc_object $P5002, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 97
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!made", 5
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "ast" :subid("cuid_105_1431289885.65252") :anon :lex :outer("cuid_136_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 1706
    .param pmc __lowered_lex_465 
    nqp_decontainerize $P5001, __lowered_lex_465
    nqp_get_sc_object $P5002, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 97
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!made", 5
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "dump" :subid("cuid_106_1431289885.65252") :anon :lex :outer("cuid_136_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 1708
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :optional 
    .param int haz_param_24 :opt_flag 
    .const 'Sub' $P5009 = 'cuid_138_1431289885.65252' 
    capture_lex $P5009 
    .lex "self", _lex_param_0 
    .lex "$indent", _lex_param_1 
    if haz_param_24, default1691
    nqp_get_sc_object $P5008, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set _lex_param_1, $P5008
  default1691:
    defined $I5001, _lex_param_1
    if $I5001 goto unless813_end1657 
.annotate 'line', 1709
    box $P5001, 0
    set _lex_param_1, $P5001
  unless813_end1657:
.annotate 'line', 1712
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."Bool"()
    unless $P5003 goto if814_else1658 
    .const 'Sub' $P5004 = 'cuid_138_1431289885.65252' 
    capture_lex $P5004
    $P5005 = $P5004()
    set $P5006, $P5005
    goto if814_end1659
  if814_else1658:
.annotate 'line', 1766
    set $I5002, _lex_param_1
    repeat $S5002, " ", $I5002
    concat $S5001, $S5002, "- NO MATCH\n"
    box $P5007, $S5001
    set $P5006, $P5007
  if814_end1659:
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_138_1431289885.65252") :anon :lex :outer("cuid_106_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 1712
    .const 'Sub' $P5045 = 'cuid_137_1431289885.65252' 
    capture_lex $P5045 
    .const 'Sub' $P5045 = 'cuid_139_1431289885.65252' 
    capture_lex $P5045 
    .lex "&dump_match", $P101 
    .lex "&dump_match_array", $P102 
    .local pmc __lowered_lex_477 
    .local int __lowered_lex_478 
    .local pmc lowered_for_it__16 
    .local pmc __lowered_lex_475 
    .local pmc lowered_for_it__17 
    .local pmc __lowered_lex_476 
    new $P5001, 'QRPA'
    set __lowered_lex_477, $P5001
    .const 'Sub' $P5002 = 'cuid_137_1431289885.65252' 
    capture_lex $P5002
    set $P101, $P5002
    .const 'Sub' $P5003 = 'cuid_139_1431289885.65252' 
    capture_lex $P5003
    set $P102, $P5003
    set __lowered_lex_478, 0
.annotate 'line', 1745
    find_lex $P5005, "self"
    nqp_decontainerize $P5004, $P5005
    $P5006 = $P5004."list"()
    unless $P5006 goto if818_end1670 
.annotate 'line', 1746
    find_lex $P5009, "self"
    nqp_decontainerize $P5008, $P5009
    $P5010 = $P5008."list"()
    iter $P5007, $P5010
    set lowered_for_it__16, $P5007
    new $P5018, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5018, while819_handlers1674
    push_eh $P5018
  while819_test1671:
    set $P5017, lowered_for_it__16
    unless lowered_for_it__16 goto while819_done1675 
  while819_redo1673:
    shift $P5011, lowered_for_it__16
    set __lowered_lex_475, $P5011
    unless __lowered_lex_475 goto if820_end1677 
.annotate 'line', 1747
    nqp_islist $I5001, __lowered_lex_475
    unless $I5001 goto if821_else1678 
.annotate 'line', 1749
    find_lex $P5012, "$indent"
    $P5013 = "&dump_match_array"(__lowered_lex_477, $P5012, __lowered_lex_478, __lowered_lex_475)
    set $P5016, $P5013
    goto if821_end1679
  if821_else1678:
.annotate 'line', 1750
    find_lex $P5014, "$indent"
    $P5015 = "&dump_match"(__lowered_lex_477, $P5014, __lowered_lex_478, __lowered_lex_475)
    set $P5016, $P5015
  if821_end1679:
  if820_end1677:
    add $I5002, __lowered_lex_478, 1
    set __lowered_lex_478, $I5002
    box $P5019, __lowered_lex_478
    set $P5017, $P5019
    goto while819_test1671 
  while819_handlers1674:
    .get_results ($P5018)
    pop_upto_eh $P5018
    getattribute $P5020, $P5018, 'type'
    eq $P5020, .CONTROL_LOOP_NEXT, while819_test1671
    eq $P5020, .CONTROL_LOOP_REDO, while819_redo1673
  while819_done1675:
    pop_eh 
  if818_end1670:
.annotate 'line', 1755
    find_lex $P5022, "self"
    nqp_decontainerize $P5021, $P5022
    $P5023 = $P5021."hash"()
    unless $P5023 goto if822_end1681 
.annotate 'line', 1756
    find_lex $P5026, "self"
    nqp_decontainerize $P5025, $P5026
    $P5027 = $P5025."hash"()
    iter $P5024, $P5027
    set lowered_for_it__17, $P5024
    new $P5042, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5042, while823_handlers1685
    push_eh $P5042
  while823_test1682:
    set $P5041, lowered_for_it__17
    unless lowered_for_it__17 goto while823_done1686 
  while823_redo1684:
    shift $P5028, lowered_for_it__17
    set __lowered_lex_476, $P5028
.annotate 'line', 1757
    $P5029 = __lowered_lex_476."value"()
    set $P5040, $P5029
    unless $P5029 goto if824_end1688 
.annotate 'line', 1758
    $P5030 = __lowered_lex_476."value"()
    nqp_islist $I5003, $P5030
    unless $I5003 goto if825_else1689 
.annotate 'line', 1759
    find_lex $P5031, "$indent"
    $P5032 = __lowered_lex_476."key"()
    $P5033 = __lowered_lex_476."value"()
    $P5034 = "&dump_match_array"(__lowered_lex_477, $P5031, $P5032, $P5033)
    set $P5039, $P5034
    goto if825_end1690
  if825_else1689:
.annotate 'line', 1760
    find_lex $P5035, "$indent"
    $P5036 = __lowered_lex_476."key"()
    $P5037 = __lowered_lex_476."value"()
    $P5038 = "&dump_match"(__lowered_lex_477, $P5035, $P5036, $P5037)
    set $P5039, $P5038
  if825_end1690:
    set $P5040, $P5039
  if824_end1688:
    set $P5041, $P5040
    goto while823_test1682 
  while823_handlers1685:
    .get_results ($P5042)
    pop_upto_eh $P5042
    getattribute $P5043, $P5042, 'type'
    eq $P5043, .CONTROL_LOOP_NEXT, while823_test1682
    eq $P5043, .CONTROL_LOOP_REDO, while823_redo1684
  while823_done1686:
    pop_eh 
  if822_end1681:
.annotate 'line', 1764
    $P5044 = "&join"("", __lowered_lex_477)
    .return ($P5044) 
.end
.HLL "nqp"
.namespace []
.sub "dump_match" :subid("cuid_137_1431289885.65252") :anon :lex :outer("cuid_138_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 1715
    .param pmc __lowered_lex_466 
    .param pmc __lowered_lex_467 
    .param pmc __lowered_lex_468 
    .param pmc __lowered_lex_469 
    set $I5001, __lowered_lex_467
    repeat $S5001, " ", $I5001
    box $P5001, $S5001
    push __lowered_lex_466, $P5001
    box $P5002, "- "
    push __lowered_lex_466, $P5002
    push __lowered_lex_466, __lowered_lex_468
    box $P5003, ": "
    push __lowered_lex_466, $P5003
    can $I5002, __lowered_lex_469, "Str"
    unless $I5002 goto if815_else1660 
.annotate 'line', 1720
.annotate 'line', 1721
    $P5004 = __lowered_lex_469."Str"()
    push __lowered_lex_466, $P5004
    goto if815_end1661
  if815_else1660:
.annotate 'line', 1723
    box $P5005, "<object>"
    push __lowered_lex_466, $P5005
  if815_end1661:
    box $P5006, "\n"
    push __lowered_lex_466, $P5006
    can $I5003, __lowered_lex_469, "dump"
    box $P5009, $I5003
    set $P5008, $P5009
    unless $I5003 goto if816_end1663 
.annotate 'line', 1727
.annotate 'line', 1728
    set $N5002, __lowered_lex_467
    set $N5003, 2
    add $N5001, $N5002, $N5003
    $P5007 = __lowered_lex_469."dump"($N5001)
    push __lowered_lex_466, $P5007
    set $P5008, __lowered_lex_466
  if816_end1663:
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "dump_match_array" :subid("cuid_139_1431289885.65252") :anon :lex :outer("cuid_138_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 1732
    .param pmc __lowered_lex_471 
    .param pmc __lowered_lex_472 
    .param pmc __lowered_lex_473 
    .param pmc __lowered_lex_474 
    .local pmc lowered_for_it__15 
    .local pmc __lowered_lex_470 
    set $I5001, __lowered_lex_472
    repeat $S5001, " ", $I5001
    box $P5001, $S5001
    push __lowered_lex_471, $P5001
    box $P5002, "- "
    push __lowered_lex_471, $P5002
    push __lowered_lex_471, __lowered_lex_473
    box $P5003, ": "
    push __lowered_lex_471, $P5003
    set $N5001, __lowered_lex_474
    set $S5002, $N5001
    box $P5004, $S5002
    push __lowered_lex_471, $P5004
    box $P5005, " matches\n"
    push __lowered_lex_471, $P5005
    iter $P5006, __lowered_lex_474
    set lowered_for_it__15, $P5006
    new $P5010, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5010, while817_handlers1667
    push_eh $P5010
  while817_test1664:
    set $P5009, lowered_for_it__15
    unless lowered_for_it__15 goto while817_done1668 
  while817_redo1666:
    shift $P5007, lowered_for_it__15
    set __lowered_lex_470, $P5007
.annotate 'line', 1739
.annotate 'line', 1740
    set $N5003, __lowered_lex_472
    set $N5004, 2
    add $N5002, $N5003, $N5004
    $P5008 = __lowered_lex_470."dump"($N5002)
    push __lowered_lex_471, $P5008
    set $P5009, __lowered_lex_471
    goto while817_test1664 
  while817_handlers1667:
    .get_results ($P5010)
    pop_upto_eh $P5010
    getattribute $P5011, $P5010, 'type'
    eq $P5011, .CONTROL_LOOP_NEXT, while817_test1664
    eq $P5011, .CONTROL_LOOP_REDO, while817_redo1666
  while817_done1668:
    pop_eh 
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "!dump_str" :subid("cuid_107_1431289885.65252") :anon :lex :outer("cuid_136_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 1771
    .param pmc __lowered_lex_486 
    .param pmc __lowered_lex_487 
    .const 'Sub' $P5028 = 'cuid_140_1431289885.65252' 
    capture_lex $P5028 
    .lex "&dump_array", $P101 
    .local pmc __lowered_lex_488 
    .local int __lowered_lex_489 
    .local pmc lowered_for_it__19 
    .local pmc __lowered_lex_484 
    .local int tmp_11 
    .local pmc lowered_for_it__20 
    .local pmc __lowered_lex_485 
    .const 'Sub' $P5001 = 'cuid_140_1431289885.65252' 
    capture_lex $P5001
    set $P101, $P5001
    set $S5006, __lowered_lex_487
    concat $S5005, $S5006, ": "
.annotate 'line', 1784
    nqp_decontainerize $P5002, __lowered_lex_486
    $P5003 = $P5002."Str"()
    set $S5008, $P5003
    escape $S5007, $S5008
    concat $S5004, $S5005, $S5007
    concat $S5003, $S5004, " @ "
    nqp_decontainerize $P5004, __lowered_lex_486
    $P5005 = $P5004."from"()
    set $S5009, $P5005
    concat $S5002, $S5003, $S5009
    concat $S5001, $S5002, "\n"
    box $P5006, $S5001
    set __lowered_lex_488, $P5006
    set __lowered_lex_489, 0
.annotate 'line', 1786
    nqp_decontainerize $P5008, __lowered_lex_486
    $P5009 = $P5008."list"()
    iter $P5007, $P5009
    set lowered_for_it__19, $P5007
    new $P5014, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5014, while829_handlers1704
    push_eh $P5014
  while829_test1701:
    set $P5013, lowered_for_it__19
    unless lowered_for_it__19 goto while829_done1705 
  while829_redo1703:
    shift $P5010, lowered_for_it__19
    set __lowered_lex_484, $P5010
    set $S5011, __lowered_lex_488
    set $S5015, __lowered_lex_487
    concat $S5014, $S5015, "["
    set $S5016, __lowered_lex_489
    concat $S5013, $S5014, $S5016
    concat $S5012, $S5013, "]"
    $P5011 = "&dump_array"($S5012, __lowered_lex_484)
    set $S5017, $P5011
    concat $S5010, $S5011, $S5017
    box $P5012, $S5010
    set __lowered_lex_488, $P5012
    set tmp_11, __lowered_lex_489
    add $I5001, tmp_11, 1
    set __lowered_lex_489, $I5001
    box $P5015, tmp_11
    set $P5013, $P5015
    goto while829_test1701 
  while829_handlers1704:
    .get_results ($P5014)
    pop_upto_eh $P5014
    getattribute $P5016, $P5014, 'type'
    eq $P5016, .CONTROL_LOOP_NEXT, while829_test1701
    eq $P5016, .CONTROL_LOOP_REDO, while829_redo1703
  while829_done1705:
    pop_eh 
.annotate 'line', 1787
    nqp_decontainerize $P5018, __lowered_lex_486
    $P5019 = $P5018."hash"()
    iter $P5017, $P5019
    set lowered_for_it__20, $P5017
    new $P5026, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5026, while830_handlers1709
    push_eh $P5026
  while830_test1706:
    set $P5025, lowered_for_it__20
    unless lowered_for_it__20 goto while830_done1710 
  while830_redo1708:
    shift $P5020, lowered_for_it__20
    set __lowered_lex_485, $P5020
    set $S5019, __lowered_lex_488
    set $S5023, __lowered_lex_487
    concat $S5022, $S5023, "<"
    $P5021 = __lowered_lex_485."key"()
    set $S5024, $P5021
    concat $S5021, $S5022, $S5024
    concat $S5020, $S5021, ">"
    $P5022 = __lowered_lex_485."value"()
    $P5023 = "&dump_array"($S5020, $P5022)
    set $S5025, $P5023
    concat $S5018, $S5019, $S5025
    box $P5024, $S5018
    set __lowered_lex_488, $P5024
    set $P5025, __lowered_lex_488
    goto while830_test1706 
  while830_handlers1709:
    .get_results ($P5026)
    pop_upto_eh $P5026
    getattribute $P5027, $P5026, 'type'
    eq $P5027, .CONTROL_LOOP_NEXT, while830_test1706
    eq $P5027, .CONTROL_LOOP_REDO, while830_redo1708
  while830_done1710:
    pop_eh 
    .return (__lowered_lex_488) 
.end
.HLL "nqp"
.namespace []
.sub "dump_array" :subid("cuid_140_1431289885.65252") :anon :lex :outer("cuid_107_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 1772
    .param pmc __lowered_lex_481 
    .param pmc __lowered_lex_482 
    .local pmc __lowered_lex_483 
    .local int __lowered_lex_480 
    .local pmc lowered_for_it__18 
    .local pmc __lowered_lex_479 
    .local int tmp_10 
    box $P5001, ""
    set __lowered_lex_483, $P5001
    nqp_get_sc_object $P5002, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 43
    type_check $I5001, __lowered_lex_482, $P5002
    unless $I5001 goto if826_else1692 
.annotate 'line', 1774
    set $S5002, __lowered_lex_483
.annotate 'line', 1775
    $P5003 = __lowered_lex_482."!dump_str"(__lowered_lex_481)
    set $S5003, $P5003
    concat $S5001, $S5002, $S5003
    box $P5004, $S5001
    set __lowered_lex_483, $P5004
    goto if826_end1693
  if826_else1692:
    nqp_islist $I5002, __lowered_lex_482
    box $P5015, $I5002
    set $P5014, $P5015
    unless $I5002 goto if827_end1695 
.annotate 'line', 1777
    set $S5005, __lowered_lex_483
    set $S5007, __lowered_lex_481
    concat $S5006, $S5007, ": list\n"
    concat $S5004, $S5005, $S5006
    box $P5005, $S5004
    set __lowered_lex_483, $P5005
    set __lowered_lex_480, 0
    iter $P5006, __lowered_lex_482
    set lowered_for_it__18, $P5006
    new $P5011, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5011, while828_handlers1699
    push_eh $P5011
  while828_test1696:
    set $P5010, lowered_for_it__18
    unless lowered_for_it__18 goto while828_done1700 
  while828_redo1698:
    shift $P5007, lowered_for_it__18
    set __lowered_lex_479, $P5007
.annotate 'line', 1780
    set $S5009, __lowered_lex_483
    set $S5011, __lowered_lex_481
    set $S5014, __lowered_lex_480
    concat $S5013, "[", $S5014
    concat $S5012, $S5013, "]"
    concat $S5010, $S5011, $S5012
    $P5008 = "&dump_array"($S5010, __lowered_lex_479)
    set $S5015, $P5008
    concat $S5008, $S5009, $S5015
    box $P5009, $S5008
    set __lowered_lex_483, $P5009
    set tmp_10, __lowered_lex_480
    add $I5003, tmp_10, 1
    set __lowered_lex_480, $I5003
    box $P5012, tmp_10
    set $P5010, $P5012
    goto while828_test1696 
  while828_handlers1699:
    .get_results ($P5011)
    pop_upto_eh $P5011
    getattribute $P5013, $P5011, 'type'
    eq $P5013, .CONTROL_LOOP_NEXT, while828_test1696
    eq $P5013, .CONTROL_LOOP_REDO, while828_redo1698
  while828_done1700:
    pop_eh 
    set $P5014, $P5010
  if827_end1695:
  if826_end1693:
    .return (__lowered_lex_483) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_141_1431289885.65252") :anon :lex :outer("cuid_126_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 1792
    .const 'Sub' $P5008 = 'cuid_108_1431289885.65252' 
    capture_lex $P5008 
    .const 'Sub' $P5008 = 'cuid_109_1431289885.65252' 
    capture_lex $P5008 
    .const 'Sub' $P5008 = 'cuid_110_1431289885.65252' 
    capture_lex $P5008 
    .const 'Sub' $P5008 = 'cuid_111_1431289885.65252' 
    capture_lex $P5008 
    .const 'Sub' $P5008 = 'cuid_112_1431289885.65252' 
    capture_lex $P5008 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .lex "@EMPTY_LIST", $P103 
    .lex "$NO_CAPS", $P104 
    new $P5001, 'QRPA'
    set $P103, $P5001
    new $P5002, 'Hash'
    set $P104, $P5002
    .const 'Sub' $P5003 = 'cuid_108_1431289885.65252' 
    capture_lex $P5003
    .const 'Sub' $P5004 = 'cuid_109_1431289885.65252' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_110_1431289885.65252' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_111_1431289885.65252' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_112_1431289885.65252' 
    capture_lex $P5007
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "MATCH" :subid("cuid_108_1431289885.65252") :anon :lex :outer("cuid_141_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 1795
    .param pmc __lowered_lex_506 
    .local pmc __lowered_lex_507 
    .local pmc __lowered_lex_501 
    .local pmc __lowered_lex_502 
    .local pmc __lowered_lex_503 
    .local pmc __lowered_lex_504 
    .local pmc __lowered_lex_505 
    .local pmc __lowered_lex_492 
    .local pmc __lowered_lex_491 
    .local string __lowered_lex_490 
    .local int __lowered_lex_499 
    .local int __lowered_lex_500 
    .local pmc __lowered_lex_497 
    .local pmc __lowered_lex_498 
    .local pmc __lowered_lex_496 
    .local int __lowered_lex_493 
    .local pmc fb_tmp_161 
    .local pmc fb_tmp_162 
    .local pmc lowered_for_it__21 
    .local pmc __lowered_lex_494 
    .local int __lowered_lex_495 
    .local pmc fb_tmp_163 
    .local pmc fb_tmp_164 
    .local int tmp_12 
    nqp_decontainerize $P5002, __lowered_lex_506
    nqp_get_sc_object $P5003, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 115
    getattribute $P5001, $P5002, $P5003, "$!match"
    set __lowered_lex_507, $P5001
    isnull $I5001, __lowered_lex_507
    set $I5007, $I5001
    if $I5001 goto unless832_end1714 
    nqp_get_sc_object $P5004, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 97
    type_check $I5003, __lowered_lex_507, $P5004
    not $I5002, $I5003
    set $I5006, $I5002
    unless $I5002 goto if833_end1716 
    nqp_ishash $I5005, __lowered_lex_507
    not $I5004, $I5005
    set $I5006, $I5004
  if833_end1716:
    set $I5007, $I5006
  unless832_end1714:
    unless $I5007 goto if831_end1712 
    nqp_get_sc_object $P5005, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_501, $P5005
.annotate 'line', 1797
    new $P5006, 'Hash'
    set __lowered_lex_502, $P5006
    nqp_get_sc_object $P5008, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 97
    repr_instance_of $P5007, $P5008
    set __lowered_lex_507, $P5007
    nqp_decontainerize $P5009, __lowered_lex_506
    nqp_get_sc_object $P5010, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 115
    setattribute $P5009, $P5010, "$!match", __lowered_lex_507
    nqp_get_sc_object $P5011, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 97
    nqp_decontainerize $P5012, __lowered_lex_506
    setattribute __lowered_lex_507, $P5011, "$!cursor", $P5012
    nqp_get_sc_object $P5013, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 97
.annotate 'line', 1804
    nqp_decontainerize $P5014, __lowered_lex_506
    $P5015 = $P5014."orig"()
    setattribute __lowered_lex_507, $P5013, "$!orig", $P5015
    nqp_get_sc_object $P5016, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 97
    nqp_decontainerize $P5017, __lowered_lex_506
    nqp_get_sc_object $P5018, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 115
    repr_get_attr_int $I5008, $P5017, $P5018, "$!from", 1
    repr_bind_attr_int __lowered_lex_507, $P5016, "$!from", 3, $I5008
    nqp_get_sc_object $P5019, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 97
    nqp_decontainerize $P5020, __lowered_lex_506
    nqp_get_sc_object $P5021, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 115
    repr_get_attr_int $I5009, $P5020, $P5021, "$!pos", 2
    repr_bind_attr_int __lowered_lex_507, $P5019, "$!to", 4, $I5009
    find_lex $P5022, "$NO_CAPS"
    set __lowered_lex_503, $P5022
    nqp_decontainerize $P5024, __lowered_lex_506
    nqp_get_sc_object $P5025, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 115
    getattribute $P5023, $P5024, $P5025, "$!regexsub"
    set __lowered_lex_504, $P5023
    isnull $I5011, __lowered_lex_504
    not $I5010, $I5011
    set $I5013, $I5010
    unless $I5010 goto if835_end1720 
    defined $I5012, __lowered_lex_504
    set $I5013, $I5012
  if835_end1720:
    unless $I5013 goto if834_end1718 
.annotate 'line', 1811
    can $I5014, __lowered_lex_504, "CAPS"
    unless $I5014 goto if836_else1721 
.annotate 'line', 1812
    $P5026 = __lowered_lex_504."CAPS"()
    set $P5028, $P5026
    goto if836_end1722
  if836_else1721:
    null $P5027
    set $P5028, $P5027
  if836_end1722:
    set __lowered_lex_503, $P5028
    isnull $I5016, __lowered_lex_503
    not $I5015, $I5016
    set $I5018, $I5015
    unless $I5015 goto if838_end1726 
    istrue $I5017, __lowered_lex_503
    set $I5018, $I5017
  if838_end1726:
    box $P5042, $I5018
    set $P5041, $P5042
    unless $I5018 goto if837_end1724 
.annotate 'line', 1813
    iter $P5029, __lowered_lex_503
    set __lowered_lex_492, $P5029
  while839_test1727:
    set $P5040, __lowered_lex_492
    unless __lowered_lex_492 goto while839_done1731 
  while839_redo1729:
.annotate 'line', 1815
    shift $P5030, __lowered_lex_492
    set __lowered_lex_491, $P5030
    $P5031 = __lowered_lex_491."value"()
    set $N5001, $P5031
    set $N5002, 2
    isge $I5019, $N5001, $N5002
    box $P5039, $I5019
    set $P5038, $P5039
    unless $I5019 goto if840_end1733 
.annotate 'line', 1817
    $P5032 = __lowered_lex_491."key"()
    set $S5001, $P5032
    set __lowered_lex_490, $S5001
    is_cclass $I5020, 8, __lowered_lex_490, 0
    unless $I5020 goto if841_else1734 
    set $P5033, __lowered_lex_501
    defined $I5021, $P5033
    if $I5021, defor1736
    new $P5034, 'QRPA'
    set __lowered_lex_501, $P5034
    set $P5033, __lowered_lex_501
  defor1736:
    set $I5022, __lowered_lex_490
    new $P5035, 'QRPA'
    set $P5033[$I5022], $P5035
    set $P5037, $P5035
    goto if841_end1735
  if841_else1734:
    new $P5036, 'QRPA'
    set __lowered_lex_502[__lowered_lex_490], $P5036
    set $P5037, $P5036
  if841_end1735:
    set $P5038, $P5037
  if840_end1733:
    set $P5040, $P5038
    goto while839_test1727 
  while839_done1731:
    set $P5041, $P5040
  if837_end1724:
  if834_end1718:
    nqp_decontainerize $P5044, __lowered_lex_506
    nqp_get_sc_object $P5045, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 115
    getattribute $P5043, $P5044, $P5045, "$!cstack"
    set __lowered_lex_505, $P5043
    isnull $I5024, __lowered_lex_503
    not $I5023, $I5024
    box $P5047, $I5023
    set $P5046, $P5047
    unless $I5023 goto if845_end1744 
    set $P5046, __lowered_lex_503
  if845_end1744:
    set $P5048, $P5046
    unless $P5046 goto if844_end1742 
    isnull $I5026, __lowered_lex_505
    not $I5025, $I5026
    box $P5049, $I5025
    set $P5048, $P5049
  if844_end1742:
    set $P5050, $P5048
    unless $P5048 goto if843_end1740 
    istrue $I5027, __lowered_lex_505
    box $P5051, $I5027
    set $P5050, $P5051
  if843_end1740:
    unless $P5050 goto if842_end1738 
    set __lowered_lex_500, 0
.annotate 'line', 1831
    elements $I5028, __lowered_lex_505
    set __lowered_lex_499, $I5028
  while846_test1745:
    islt $I5029, __lowered_lex_500, __lowered_lex_499
    box $P5094, $I5029
    set $P5093, $P5094
    unless $I5029 goto while846_done1749 
  while846_redo1747:
.annotate 'line', 1834
    set $P5052, __lowered_lex_505[__lowered_lex_500]
    set __lowered_lex_497, $P5052
    find_lex $P5054, "$?CLASS"
    getattribute $P5053, __lowered_lex_497, $P5054, "$!name"
    set __lowered_lex_498, $P5053
    isnull $I5031, __lowered_lex_498
    not $I5030, $I5031
    set $I5033, $I5030
    unless $I5030 goto if849_end1755 
    defined $I5032, __lowered_lex_498
    set $I5033, $I5032
  if849_end1755:
    set $I5035, $I5033
    unless $I5033 goto if848_end1753 
    set $S5002, __lowered_lex_498
    isne $I5034, $S5002, ""
    set $I5035, $I5034
  if848_end1753:
    unless $I5035 goto if847_end1751 
.annotate 'line', 1837
.annotate 'line', 1838
    $P5055 = __lowered_lex_497."MATCH"()
    set __lowered_lex_496, $P5055
    set $S5003, __lowered_lex_498
    ord $I5037, $S5003, 0
    set $N5003, $I5037
    set $N5004, 36
    iseq $I5036, $N5003, $N5004
    set $I5041, $I5036
    unless $I5036 goto if851_end1759 
    set $S5004, __lowered_lex_498
    iseq $I5038, $S5004, "$!from"
    set $I5040, $I5038
    if $I5038 goto unless852_end1761 
    set $S5005, __lowered_lex_498
    iseq $I5039, $S5005, "$!to"
    set $I5040, $I5039
  unless852_end1761:
    set $I5041, $I5040
  if851_end1759:
    unless $I5041 goto if850_else1756 
.annotate 'line', 1839
    nqp_get_sc_object $P5056, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 97
    set $S5006, __lowered_lex_498
.annotate 'line', 1840
    $P5057 = __lowered_lex_496."from"()
    set $I5042, $P5057
    repr_bind_attr_int __lowered_lex_507, $P5056, $S5006, $I5042
    box $P5092, $I5042
    set $P5091, $P5092
    goto if850_end1757
  if850_else1756:
    set $S5007, __lowered_lex_498
    index $I5044, $S5007, "=", 0
    set $N5005, $I5044
    set $N5006, 0
    islt $I5043, $N5005, $N5006
    unless $I5043 goto if853_else1762 
.annotate 'line', 1842
    set fb_tmp_161, __lowered_lex_503
    repr_defined $I5046, fb_tmp_161
    unless $I5046 goto if854_else1764 
    set $S5008, __lowered_lex_498
    set $P5058, fb_tmp_161[$S5008]
    set $P5060, $P5058
    goto if854_end1765
  if854_else1764:
    null $P5059
    set $P5060, $P5059
  if854_end1765:
    unless_null $P5060, vivi_8551766
    nqp_get_sc_object $P5061, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5060, $P5061
  vivi_8551766:
    set $N5007, $P5060
    set $N5008, 2
    isge $I5045, $N5007, $N5008
    set __lowered_lex_493, $I5045
    set $S5009, __lowered_lex_498
    is_cclass $I5047, 8, $S5009, 0
    unless $I5047 goto if856_else1767 
.annotate 'line', 1844
    repr_defined $I5048, __lowered_lex_501
    if $I5048 goto unless857_end1770 
    new $P5062, 'QRPA'
    set __lowered_lex_501, $P5062
  unless857_end1770:
    unless __lowered_lex_493 goto if858_else1771 
    set $I5049, __lowered_lex_498
    set $P5063, __lowered_lex_501[$I5049]
    push $P5063, __lowered_lex_496
    set $P5064, $P5063
    goto if858_end1772
  if858_else1771:
    set $I5050, __lowered_lex_498
    set __lowered_lex_501[$I5050], __lowered_lex_496
    set $P5064, __lowered_lex_496
  if858_end1772:
    set $P5070, $P5064
    goto if856_end1768
  if856_else1767:
.annotate 'line', 1850
    unless __lowered_lex_493 goto if859_else1773 
    set fb_tmp_162, __lowered_lex_502
    repr_defined $I5051, fb_tmp_162
    unless $I5051 goto if860_else1775 
    set $S5010, __lowered_lex_498
    set $P5065, fb_tmp_162[$S5010]
    set $P5067, $P5065
    goto if860_end1776
  if860_else1775:
    null $P5066
    set $P5067, $P5066
  if860_end1776:
    unless_null $P5067, vivi_8611777
    nqp_get_sc_object $P5068, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5067, $P5068
  vivi_8611777:
    push $P5067, __lowered_lex_496
    set $P5069, $P5067
    goto if859_end1774
  if859_else1773:
    set $S5011, __lowered_lex_498
    set __lowered_lex_502[$S5011], __lowered_lex_496
    set $P5069, __lowered_lex_496
  if859_end1774:
    set $P5070, $P5069
  if856_end1768:
    set $P5090, $P5070
    goto if853_end1763
  if853_else1762:
.annotate 'line', 1856
    set $S5012, __lowered_lex_498
    split $P5072, "=", $S5012
    iter $P5071, $P5072
    set lowered_for_it__21, $P5071
    new $P5088, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5088, while862_handlers1781
    push_eh $P5088
  while862_test1778:
    set $P5087, lowered_for_it__21
    unless lowered_for_it__21 goto while862_done1782 
  while862_redo1780:
.annotate 'line', 1857
    shift $P5073, lowered_for_it__21
    set __lowered_lex_494, $P5073
    set fb_tmp_163, __lowered_lex_503
    repr_defined $I5053, fb_tmp_163
    unless $I5053 goto if863_else1783 
    set $S5013, __lowered_lex_494
    set $P5074, fb_tmp_163[$S5013]
    set $P5076, $P5074
    goto if863_end1784
  if863_else1783:
    null $P5075
    set $P5076, $P5075
  if863_end1784:
    unless_null $P5076, vivi_8641785
    nqp_get_sc_object $P5077, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5076, $P5077
  vivi_8641785:
    set $N5009, $P5076
    set $N5010, 2
    isge $I5052, $N5009, $N5010
    set __lowered_lex_495, $I5052
    set $S5014, __lowered_lex_494
    is_cclass $I5054, 8, $S5014, 0
    unless $I5054 goto if865_else1786 
.annotate 'line', 1859
    repr_defined $I5055, __lowered_lex_501
    if $I5055 goto unless866_end1789 
    new $P5078, 'QRPA'
    set __lowered_lex_501, $P5078
  unless866_end1789:
    unless __lowered_lex_495 goto if867_else1790 
    set $I5056, __lowered_lex_494
    set $P5079, __lowered_lex_501[$I5056]
    push $P5079, __lowered_lex_496
    set $P5080, $P5079
    goto if867_end1791
  if867_else1790:
    set $I5057, __lowered_lex_494
    set __lowered_lex_501[$I5057], __lowered_lex_496
    set $P5080, __lowered_lex_496
  if867_end1791:
    set $P5086, $P5080
    goto if865_end1787
  if865_else1786:
.annotate 'line', 1865
    unless __lowered_lex_495 goto if868_else1792 
    set fb_tmp_164, __lowered_lex_502
    repr_defined $I5058, fb_tmp_164
    unless $I5058 goto if869_else1794 
    set $S5015, __lowered_lex_494
    set $P5081, fb_tmp_164[$S5015]
    set $P5083, $P5081
    goto if869_end1795
  if869_else1794:
    null $P5082
    set $P5083, $P5082
  if869_end1795:
    unless_null $P5083, vivi_8701796
    nqp_get_sc_object $P5084, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set $P5083, $P5084
  vivi_8701796:
    push $P5083, __lowered_lex_496
    set $P5085, $P5083
    goto if868_end1793
  if868_else1792:
    set $S5016, __lowered_lex_494
    set __lowered_lex_502[$S5016], __lowered_lex_496
    set $P5085, __lowered_lex_496
  if868_end1793:
    set $P5086, $P5085
  if865_end1787:
    set $P5087, $P5086
    goto while862_test1778 
  while862_handlers1781:
    .get_results ($P5088)
    pop_upto_eh $P5088
    getattribute $P5089, $P5088, 'type'
    eq $P5089, .CONTROL_LOOP_NEXT, while862_test1778
    eq $P5089, .CONTROL_LOOP_REDO, while862_redo1780
  while862_done1782:
    pop_eh 
    set $P5090, $P5087
  if853_end1763:
    set $P5091, $P5090
  if850_end1757:
  if847_end1751:
    set tmp_12, __lowered_lex_500
    add $I5059, tmp_12, 1
    set __lowered_lex_500, $I5059
    box $P5095, tmp_12
    set $P5093, $P5095
    goto while846_test1745 
  while846_done1749:
  if842_end1738:
    nqp_get_sc_object $P5096, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 43
    repr_defined $I5059, __lowered_lex_501
    unless $I5059 goto if871_else1797 
    set $P5098, __lowered_lex_501
    goto if871_end1798
  if871_else1797:
    find_lex $P5097, "@EMPTY_LIST"
    set $P5098, $P5097
  if871_end1798:
    setattribute __lowered_lex_507, $P5096, "@!array", $P5098
    nqp_get_sc_object $P5099, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 43
    setattribute __lowered_lex_507, $P5099, "%!hash", __lowered_lex_502
    nqp_decontainerize $P5101, __lowered_lex_506
    nqp_get_sc_object $P5102, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 115
    getattribute $P5100, $P5101, $P5102, "$!bstack"
    defined $I5060, $P5100
    box $P5110, $I5060
    set $P5109, $P5110
    if $I5060 goto unless872_end1800 
.annotate 'line', 1881
    nqp_decontainerize $P5103, __lowered_lex_506
    nqp_get_sc_object $P5104, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 115
    null $P5105
    setattribute $P5103, $P5104, "$!cstack", $P5105
    nqp_decontainerize $P5106, __lowered_lex_506
    nqp_get_sc_object $P5107, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 115
    null $P5108
    setattribute $P5106, $P5107, "$!regexsub", $P5108
    set $P5109, $P5108
  unless872_end1800:
  if831_end1712:
    .return (__lowered_lex_507) 
.end
.HLL "nqp"
.namespace []
.sub "Bool" :subid("cuid_109_1431289885.65252") :anon :lex :outer("cuid_141_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 1889
    .param pmc __lowered_lex_508 
    nqp_decontainerize $P5002, __lowered_lex_508
    find_lex $P5003, "$?CLASS"
    getattribute $P5001, $P5002, $P5003, "$!match"
    isnull $I5002, $P5001
    not $I5001, $I5002
    set $I5004, $I5001
    unless $I5001 goto if873_end1802 
    nqp_decontainerize $P5005, __lowered_lex_508
    find_lex $P5006, "$?CLASS"
    getattribute $P5004, $P5005, $P5006, "$!match"
    istrue $I5003, $P5004
    set $I5004, $I5003
  if873_end1802:
    .return ($I5004) 
.end
.HLL "nqp"
.namespace []
.sub "parse" :subid("cuid_110_1431289885.65252") :anon :lex :outer("cuid_141_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 1894
    .param pmc __lowered_lex_509 
    .param pmc __lowered_lex_510 
    .param pmc __lowered_lex_511 :named("rule") :optional 
    .param int haz_param_25 :opt_flag 
    .param pmc __lowered_lex_512 :named("actions") :optional 
    .param int haz_param_26 :opt_flag 
    .param pmc __lowered_lex_513 :slurpy :named 
    .lex "$*ACTIONS", $P101 
    .local pmc __lowered_lex_514 
    if haz_param_25, default1805
    box $P5009, "TOP"
    set __lowered_lex_511, $P5009
  default1805:
    if haz_param_26, default1806
    nqp_get_sc_object $P5010, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561", 26
    set __lowered_lex_512, $P5010
  default1806:
    set $P101, __lowered_lex_512
.annotate 'line', 1896
    nqp_decontainerize $P5001, __lowered_lex_509
    $P5002 = $P5001."!cursor_init"(__lowered_lex_510, __lowered_lex_513 :flat :named)
    set __lowered_lex_514, $P5002
    is_invokable $I5001, __lowered_lex_511
    unless $I5001 goto if874_else1803 
.annotate 'line', 1898
    $P5003 = __lowered_lex_511(__lowered_lex_514)
    $P5004 = $P5003."MATCH"()
    set $P5008, $P5004
    goto if874_end1804
  if874_else1803:
.annotate 'line', 1899
    set $S5001, __lowered_lex_511
    find_method $P5005, __lowered_lex_514, $S5001
    $P5006 = $P5005(__lowered_lex_514)
    $P5007 = $P5006."MATCH"()
    set $P5008, $P5007
  if874_end1804:
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "!INTERPOLATE" :subid("cuid_111_1431289885.65252") :anon :lex :outer("cuid_141_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 1902
    .param pmc __lowered_lex_529 
    .param pmc __lowered_lex_530 
    .param pmc __lowered_lex_531 :optional 
    .param int haz_param_27 :opt_flag 
    .local int __lowered_lex_519 
    .local pmc __lowered_lex_520 
    .local int __lowered_lex_521 
    .local string __lowered_lex_522 
    .local int __lowered_lex_523 
    .local pmc lowered_for_it__22 
    .local pmc __lowered_lex_518 
    .local pmc __lowered_lex_516 
    .local int __lowered_lex_515 
    .local int __lowered_lex_517 
    .local pmc __lowered_lex_524 
    .local int __lowered_lex_525 
    .local string __lowered_lex_526 
    .local int __lowered_lex_527 
    .local int __lowered_lex_528 
    if haz_param_27, default1840
    box $P5029, 0
    set __lowered_lex_531, $P5029
  default1840:
    root_new $P101, ['parrot';'Continuation']
    set_label $P101, lexotic_1807
    .lex "RETURN", $P101
    nqp_islist $I5001, __lowered_lex_530
    unless $I5001 goto if875_else1809 
.annotate 'line', 1903
    set __lowered_lex_519, -1
.annotate 'line', 1905
    nqp_decontainerize $P5001, __lowered_lex_529
    $P5002 = $P5001."!cursor_start_cur"()
    set __lowered_lex_520, $P5002
    find_lex $P5003, "$?CLASS"
    repr_get_attr_int $I5002, __lowered_lex_520, $P5003, "$!from"
    set __lowered_lex_521, $I5002
.annotate 'line', 1907
    $P5004 = __lowered_lex_520."target"()
    set $S5001, $P5004
    set __lowered_lex_522, $S5001
    length $I5003, __lowered_lex_522
    set __lowered_lex_523, $I5003
    iter $P5005, __lowered_lex_530
    set lowered_for_it__22, $P5005
    new $P5017, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5017, while876_handlers1814
    push_eh $P5017
  while876_test1811:
    set $P5016, lowered_for_it__22
    unless lowered_for_it__22 goto while876_done1815 
  while876_redo1813:
    shift $P5006, lowered_for_it__22
    set __lowered_lex_518, $P5006
.annotate 'line', 1909
    is_invokable $I5004, __lowered_lex_518
    unless $I5004 goto if877_else1816 
.annotate 'line', 1910
.annotate 'line', 1911
    nqp_decontainerize $P5007, __lowered_lex_529
    $P5008 = __lowered_lex_518($P5007)
    set __lowered_lex_516, $P5008
    set $P5010, __lowered_lex_516
    unless __lowered_lex_516 goto if878_end1819 
.annotate 'line', 1912
    find_lex $P5009, "$?CLASS"
    repr_get_attr_int $I5005, __lowered_lex_516, $P5009, "$!pos"
    set __lowered_lex_515, $I5005
    sub $I5006, __lowered_lex_515, __lowered_lex_521
    set __lowered_lex_515, $I5006
    isgt $I5007, __lowered_lex_515, __lowered_lex_519
    set $I5008, $I5007
    unless $I5007 goto if879_end1821 
    set __lowered_lex_519, __lowered_lex_515
    set $I5008, __lowered_lex_519
  if879_end1821:
    box $P5011, $I5008
    set $P5010, $P5011
  if878_end1819:
    goto if877_end1817
  if877_else1816:
.annotate 'line', 1918
    set $S5002, __lowered_lex_518
    length $I5009, $S5002
    set __lowered_lex_517, $I5009
    isgt $I5010, __lowered_lex_517, __lowered_lex_519
    set $I5013, $I5010
    unless $I5010 goto if882_end1827 
    add $I5012, __lowered_lex_521, __lowered_lex_517
    isle $I5011, $I5012, __lowered_lex_523
    set $I5013, $I5011
  if882_end1827:
    set $I5015, $I5013
    unless $I5013 goto if881_end1825 
    substr $S5003, __lowered_lex_522, __lowered_lex_521, __lowered_lex_517
    set $S5004, __lowered_lex_518
    iseq $I5014, $S5003, $S5004
    set $I5015, $I5014
  if881_end1825:
    set $I5016, $I5015
    unless $I5015 goto if880_end1823 
    set __lowered_lex_519, __lowered_lex_517
    set $I5016, __lowered_lex_519
  if880_end1823:
  if877_end1817:
    set $P5012, __lowered_lex_531
    unless __lowered_lex_531 goto if884_end1831 
    isgt $I5017, __lowered_lex_519, -1
    box $P5013, $I5017
    set $P5012, $P5013
  if884_end1831:
    set $P5014, $P5012
    unless $P5012 goto if883_end1829 
    die 0, .CONTROL_LOOP_LAST
    box $P5015, 0
    set $P5014, $P5015
  if883_end1829:
    set $P5016, $P5014
    goto while876_test1811 
  while876_handlers1814:
    .get_results ($P5017)
    pop_upto_eh $P5017
    getattribute $P5018, $P5017, 'type'
    eq $P5018, .CONTROL_LOOP_NEXT, while876_test1811
    eq $P5018, .CONTROL_LOOP_REDO, while876_redo1813
  while876_done1815:
    pop_eh 
    isge $I5018, __lowered_lex_519, 0
    unless $I5018 goto if885_end1833 
.annotate 'line', 1925
    add $I5019, __lowered_lex_521, __lowered_lex_519
    $P5019 = __lowered_lex_520."!cursor_pass"($I5019, "")
  if885_end1833:
    set $P5028, __lowered_lex_520
    goto if875_end1810
  if875_else1809:
.annotate 'line', 1928
    is_invokable $I5020, __lowered_lex_530
    unless $I5020 goto if886_end1835 
.annotate 'line', 1929
    nqp_decontainerize $P5020, __lowered_lex_529
    $P5021 = __lowered_lex_530($P5020)
    $P5022 = "RETURN"($P5021)
  if886_end1835:
.annotate 'line', 1930
    nqp_decontainerize $P5023, __lowered_lex_529
    $P5024 = $P5023."!cursor_start_cur"()
    set __lowered_lex_524, $P5024
    find_lex $P5025, "$?CLASS"
    repr_get_attr_int $I5021, __lowered_lex_524, $P5025, "$!from"
    set __lowered_lex_525, $I5021
.annotate 'line', 1932
    $P5026 = __lowered_lex_524."target"()
    set $S5005, $P5026
    set __lowered_lex_526, $S5005
    set $S5006, __lowered_lex_530
    length $I5022, $S5006
    set __lowered_lex_527, $I5022
    add $I5023, __lowered_lex_525, __lowered_lex_527
    set __lowered_lex_528, $I5023
    length $I5025, __lowered_lex_526
    isgt $I5024, __lowered_lex_528, $I5025
    set $I5027, $I5024
    if $I5024 goto unless888_end1839 
    substr $S5007, __lowered_lex_526, __lowered_lex_525, __lowered_lex_527
    set $S5008, __lowered_lex_530
    isne $I5026, $S5007, $S5008
    set $I5027, $I5026
  unless888_end1839:
    unless $I5027 goto if887_end1837 
    $P5027 = "RETURN"(__lowered_lex_524)
  if887_end1837:
.annotate 'line', 1937
    __lowered_lex_524."!cursor_pass"(__lowered_lex_528, "")
    set $P5028, __lowered_lex_524
  if875_end1810:
    goto lexotic_1808
  lexotic_1807:
    .get_results ($P5028)
  lexotic_1808:
    .return ($P5028) 
.end
.HLL "nqp"
.namespace []
.sub "!INTERPOLATE_REGEX" :subid("cuid_112_1431289885.65252") :anon :lex :outer("cuid_141_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 1942
    .param pmc __lowered_lex_536 
    .param pmc __lowered_lex_537 
    .local pmc __lowered_lex_535 
    .local pmc __lowered_lex_534 
    .local pmc lowered_for_it__23 
    .local pmc __lowered_lex_533 
    .local pmc __lowered_lex_532 
    is_invokable $I5001, __lowered_lex_537
    if $I5001 goto unless889_end1842 
.annotate 'line', 1943
    compreg $P5001, "QRegex::P6Regex"
    set __lowered_lex_535, $P5001
    nqp_islist $I5002, __lowered_lex_537
    unless $I5002 goto if890_else1843 
.annotate 'line', 1945
    new $P5002, 'QRPA'
    set __lowered_lex_534, $P5002
    iter $P5003, __lowered_lex_537
    set lowered_for_it__23, $P5003
    new $P5007, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5007, while891_handlers1848
    push_eh $P5007
  while891_test1845:
    set $P5006, lowered_for_it__23
    unless lowered_for_it__23 goto while891_done1849 
  while891_redo1847:
    shift $P5004, lowered_for_it__23
    set __lowered_lex_533, $P5004
.annotate 'line', 1947
    set __lowered_lex_532, __lowered_lex_533
    is_invokable $I5003, __lowered_lex_532
    if $I5003 goto unless892_end1851 
.annotate 'line', 1949
    $P5005 = __lowered_lex_535."compile"(__lowered_lex_532)
    set __lowered_lex_532, $P5005
  unless892_end1851:
    push __lowered_lex_534, __lowered_lex_532
    set $P5006, __lowered_lex_534
    goto while891_test1845 
  while891_handlers1848:
    .get_results ($P5007)
    pop_upto_eh $P5007
    getattribute $P5008, $P5007, 'type'
    eq $P5008, .CONTROL_LOOP_NEXT, while891_test1845
    eq $P5008, .CONTROL_LOOP_REDO, while891_redo1847
  while891_done1849:
    pop_eh 
    set __lowered_lex_537, __lowered_lex_534
    set $P5010, __lowered_lex_537
    goto if890_end1844
  if890_else1843:
.annotate 'line', 1954
.annotate 'line', 1955
    $P5009 = __lowered_lex_535."compile"(__lowered_lex_537)
    set __lowered_lex_537, $P5009
    set $P5010, __lowered_lex_537
  if890_end1844:
  unless889_end1842:
.annotate 'line', 1958
    nqp_decontainerize $P5011, __lowered_lex_536
    $P5012 = $P5011."!INTERPOLATE"(__lowered_lex_537)
    .return ($P5012) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_142_1431289885.65252") :anon :lex :outer("cuid_126_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 1962
    .const 'Sub' $P5005 = 'cuid_121_1431289885.65252' 
    capture_lex $P5005 
    .const 'Sub' $P5005 = 'cuid_122_1431289885.65252' 
    capture_lex $P5005 
    .const 'Sub' $P5005 = 'cuid_123_1431289885.65252' 
    capture_lex $P5005 
    .const 'Sub' $P5005 = 'cuid_124_1431289885.65252' 
    capture_lex $P5005 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_121_1431289885.65252' 
    capture_lex $P5001
    .const 'Sub' $P5002 = 'cuid_122_1431289885.65252' 
    capture_lex $P5002
    .const 'Sub' $P5003 = 'cuid_123_1431289885.65252' 
    capture_lex $P5003
    .const 'Sub' $P5004 = 'cuid_124_1431289885.65252' 
    capture_lex $P5004
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "new" :subid("cuid_121_1431289885.65252") :anon :lex :outer("cuid_142_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 1964
    .param pmc __lowered_lex_538 
    .param pmc __lowered_lex_539 
.annotate 'line', 1965
    nqp_decontainerize $P5001, __lowered_lex_538
    $P5002 = $P5001."bless"(__lowered_lex_539 :named("code"))
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "ACCEPTS" :subid("cuid_122_1431289885.65252") :anon :lex :outer("cuid_142_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 1967
    .param pmc __lowered_lex_540 
    .param pmc __lowered_lex_542 
    .local pmc __lowered_lex_541 
    set __lowered_lex_541, __lowered_lex_540
.annotate 'line', 1968
    nqp_get_sc_object $P5001, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 115
    nqp_decontainerize $P5002, __lowered_lex_541
    $P5003 = $P5001."parse"(__lowered_lex_542, $P5002 :named("rule"))
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "name" :subid("cuid_123_1431289885.65252") :anon :lex :outer("cuid_142_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 1970
    .param pmc __lowered_lex_543 
    nqp_decontainerize $P5001, __lowered_lex_543
    nqp_get_sc_object $P5002, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 121
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!code", 0
    set $S5001, $P5003
    .return ($S5001) 
.end
.HLL "nqp"
.namespace []
.sub "Str" :subid("cuid_124_1431289885.65252") :anon :lex :outer("cuid_142_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 1973
    .param pmc __lowered_lex_544 
.annotate 'line', 1974
    nqp_decontainerize $P5001, __lowered_lex_544
    $P5002 = $P5001."name"()
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_143_1431289885.65252") :anon :lex :outer("cuid_126_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 1979
    .const 'Sub' $P5002 = 'cuid_125_1431289885.65252' 
    capture_lex $P5002 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_125_1431289885.65252' 
    capture_lex $P5001
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "ACCEPTS" :subid("cuid_125_1431289885.65252") :anon :lex :outer("cuid_143_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
.annotate 'line', 1980
    .param pmc __lowered_lex_545 
    .param pmc __lowered_lex_547 
    .local pmc __lowered_lex_546 
    set __lowered_lex_546, __lowered_lex_545
.annotate 'line', 1981
    nqp_get_sc_object $P5001, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 115
    nqp_decontainerize $P5002, __lowered_lex_546
    $P5003 = $P5001."parse"(__lowered_lex_547, $P5002 :named("rule"), 0 :named("c"))
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_145_1431289885.65252") :load :init
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
    .const 'Sub' $P5235 = 'cuid_144_1431289885.65252' 
    capture_lex $P5235 
    .local pmc cur_sc 
    .local pmc conflicts 
    nqp_dynop_setup 
    nqp_bigint_setup 
    getinterp $P5001
    get_class $P5002, "LexPad"
    get_class $P5003, "NQPLexPad"
    $P5004 = $P5001."hll_map"($P5002, $P5003)
    load_bytecode "ModuleLoader.pbc"
    .const 'Sub' $P5001 = "cuid_126_1431289885.65252" 
    get_hll_global $P5002, "ModuleLoader"
    $P5003 = $P5002."load_setting"("NQPCORE")
    $P5004 = $P5001."set_outer_ctx"($P5003)
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P5001, "ModuleLoader"
    $P5001."load_module"("QASTNode")
    nqp_create_sc $P5001, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999"
    set cur_sc, $P5001
    $P5002 = cur_sc."set_description"("gen/parrot/stage2/QRegex.nqp")
    new $P5003, 'QRPA'
    set conflicts, $P5003
    new $P5004, 'ResizableStringArray'
    assign $P5004, 225
    assign $P5004, 0
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
    push $P5004, "ParseShared"
    push $P5004, "CREATE"
    push $P5004, "A6B3036E2CE42BAC0C4A2DA57E9821AFDE4F8463-1431289881.08561"
    push $P5004, "gen/parrot/stage2/NQPCORE.setting"
    push $P5004, "bless"
    push $P5004, "BUILDALL"
    push $P5004, "new"
    push $P5004, "Str"
    push $P5004, "Numeric"
    push $P5004, "Int"
    push $P5004, "defined"
    push $P5004, "ACCEPTS"
    push $P5004, "isa"
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
    push $P5004, "charrange"
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
    push $P5004, "__dump"
    push $P5004, "optimize"
    push $P5004, "mydump"
    push $P5004, "$!states"
    push $P5004, "$!edges"
    push $P5004, "$!generic"
    push $P5004, "$!nfa_object"
    push $P5004, "$!LITEND"
    push $P5004, "$!known"
    push $P5004, "NFA"
    push $P5004, "log_cc"
    push $P5004, "log_dump"
    push $P5004, "$!CUR_CLASS"
    push $P5004, "$!orig"
    push $P5004, "$!target"
    push $P5004, "$!highwater"
    push $P5004, "@!highexpect"
    push $P5004, "%!marks"
    push $P5004, "$!fail_cursor"
    push $P5004, "$!target_flipped"
    push $P5004, "Uninstantiable"
    push $P5004, "BUILD"
    push $P5004, "list"
    push $P5004, "hash"
    push $P5004, "capture_prune"
    push $P5004, "from"
    push $P5004, "orig"
    push $P5004, "to"
    push $P5004, "CURSOR"
    push $P5004, "PRECURSOR"
    push $P5004, "Num"
    push $P5004, "Bool"
    push $P5004, "chars"
    push $P5004, "prune"
    push $P5004, "!make"
    push $P5004, "make"
    push $P5004, "made"
    push $P5004, "ast"
    push $P5004, "dump"
    push $P5004, "!dump_str"
    push $P5004, "@!array"
    push $P5004, "%!hash"
    push $P5004, "$!from"
    push $P5004, "$!to"
    push $P5004, "$!made"
    push $P5004, "$!cursor"
    push $P5004, "MATCH"
    push $P5004, "parse"
    push $P5004, "!INTERPOLATE"
    push $P5004, "!INTERPOLATE_REGEX"
    push $P5004, "target"
    push $P5004, "pos"
    push $P5004, "!APPEND_TO_ORIG"
    push $P5004, "CAPHASH"
    push $P5004, "!cursor_init"
    push $P5004, "!cursor_start_all"
    push $P5004, "!cursor_start"
    push $P5004, "!cursor_start_cur"
    push $P5004, "!cursor_start_fail"
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
    push $P5004, "!DYNQUANT_LIMITS"
    push $P5004, "!DELEGATE_ACCEPTS"
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
    push $P5004, "name"
    push $P5004, "$!code"
    push $P5004, "__6MODEL_CORE__"
    push $P5004, "GLOBALish"
    push $P5004, "EXPORT"
    push $P5004, "1D042E2F8164839D3F4D2EBE66C02A86E8A792AE-1431289877.48024"
    push $P5004, "gen/parrot/stage2/nqpmo.nqp"
    push $P5004, "QRegex::NFA"
    push $P5004, "edges"
    push $P5004, "nfa_object"
    push $P5004, "LITEND"
    push $P5004, "known"
    push $P5004, "NFAType"
    push $P5004, "CUR_CLASS"
    push $P5004, "highwater"
    push $P5004, "highexpect"
    push $P5004, "marks"
    push $P5004, "fail_cursor"
    push $P5004, "target_flipped"
    push $P5004, "get_string"
    push $P5004, "get_integer"
    push $P5004, "get_number"
    push $P5004, "cursor"
    push $P5004, "shared"
    push $P5004, "match"
    push $P5004, "bstack"
    push $P5004, "cstack"
    push $P5004, "regexsub"
    push $P5004, "restart"
    push $P5004, "code"
    push $P5004, "CompileTimeValue"
    push $P5004, "69262D203AA461F498C95CCF7FF3EA8AC3EE1FD5-1431289882.84207"
    push $P5004, "gen/parrot/stage2/QASTNode.nqp"
    push $P5004, "SpecialArg"
    push $P5004, "Children"
    push $P5004, "Node"
    push $P5004, "NodeList"
    push $P5004, "RegexCursorType"
    push $P5004, "Regex"
    push $P5004, "IVal"
    push $P5004, "NVal"
    push $P5004, "SVal"
    push $P5004, "BVal"
    push $P5004, "WVal"
    push $P5004, "Want"
    push $P5004, "Var"
    push $P5004, "VarWithFallback"
    push $P5004, "ParamTypeCheck"
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
    push $P5004, "$pass_mark"
    push $P5004, "@EMPTY"
    push $P5004, "$?CLASS"
    .const 'Sub' $P5005 = 'cuid_144_1431289885.65252' 
    capture_lex $P5005
    $P5006 = $P5005()
    nqp_deserialize_sc "BwAAAEAAAAAEAAAAYAAAAA4AAAAIAQAAJhoAAOsAAADWKAAAll0AADsAAAAeYwAAAQAAAC5jAACeYwAAAAAAAAwAAAANAAAAowAAAAAAAACmAAAApwAAAMAAAADBAAAAAQAAAAAAAAC4AAAAAQAAABQBAAB4AQAAAQAAANQBAABGAgAAAQAAAKICAAAuBQAAOgAAAFoGAACwBgAAAQAAALAGAADCBwAARQAAAB4JAAB0CQAAAQAAAHQJAACGCwAAAQAAANIMAABIEQAAAQAAANQSAADYEwAAAQAAAGQUAAByFQAAAQAAAAoWAACwFwAAAQAAAAwYAABwGAAARQAAAMwYAAAeGQAAAAAAAIAAAAAAAAAAAAAAAAoABwAAAAIAAAACAAAAAACBAAAAAwAAAAIAAAAAAIIAAAAEAAAAAgAAAAAAJgAAAAUAAAACAAAAAABhAAAABgAAAAIAAAAAAHMAAAAHAAAAAgAAAAAAeQAAAAgAAAACAAAAAAB+AAAACgAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAQAAAAAAAAACAAAAAAAAAAAAAwD/////////////////////AAAAAIMAAAAAAAAAAQAAAAoAAQAAAAkAAAACAAAAAAACAAAACgAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAAEAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAQAAAAAAAAACAAAAAAABAAAAAwD/////////////////////AAAAAIQAAAAAAAAAAgAAAAoAAgAAAAoAAAACAAAAAAAjAAAABAAAAAIAAAAAACYAAAAKAAAAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAAAAgAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAAAIAAAADAP////////////////////8AAAAAhQAAAAAAAAADAAAACgAAAAAACgAnAAAACwAAAAIAAQAAABsAAAAOAAAAAgABAAAAHAAAAA8AAAACAAEAAAAdAAAAEAAAAAIAAAAAAAQAAAARAAAAAgABAAAAHwAAABIAAAACAAEAAAAiAAAAEwAAAAIAAQAAACQAAAAUAAAAAgABAAAAJgAAABUAAAACAAEAAAAnAAAAFgAAAAIAAQAAACkAAAAXAAAAAgAAAAAABQAAABgAAAACAAAAAAAGAAAAGQAAAAIAAAAAAAcAAAAaAAAAAgAAAAAACAAAABsAAAACAAAAAAAJAAAAHAAAAAIAAAAAAAoAAAAdAAAAAgAAAAAACwAAAB4AAAACAAAAAAAMAAAAHwAAAAIAAAAAAA0AAAAgAAAAAgAAAAAADgAAACEAAAACAAAAAAAPAAAAIgAAAAIAAAAAABAAAAAjAAAAAgAAAAAAEQAAACQAAAACAAAAAAASAAAAJQAAAAIAAAAAABMAAAAmAAAAAgAAAAAAFAAAACcAAAACAAAAAAAVAAAAKAAAAAIAAAAAABYAAAApAAAAAgAAAAAAFwAAACoAAAACAAAAAAAYAAAAKwAAAAIAAAAAABkAAAAsAAAAAgAAAAAAGgAAAC0AAAACAAAAAAAcAAAALgAAAAIAAAAAAB0AAAAvAAAAAgAAAAAAHgAAADAAAAACAAAAAAAfAAAAMQAAAAIAAAAAACAAAAAyAAAAAgAAAAAAIQAAADMAAAACAAAAAAAiAAAAAAAAAAAAAAACAAAAAAAAAAIAAAAAAAMAAAACAAEAAAAaAAAABAAAAAAAAAABAAAAAAAAAAUAAAAAAAAAAwAAAAAAAAAAAAAAAAAAAAAABgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAABAAAAAgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAEAAAAaAAAAAgABAAAAGgAAAAEAAgABAAAAGgAAAAIAAQAAABoAAAACAAEAAAAaAAAA////////////////////////////////AAAAAAAAAAACAAAAAAAAAAIAAQAAABoAAAADAAIAAAAAAAMAAAAKAAYAAAA0AAAABAAAAAAAAAAAADUAAAAEAAEAAAAAAAAANgAAAAQAAgAAAAAAAAA3AAAABAADAAAAAAAAADgAAAAEAAQAAAAAAAAAOQAAAAQABQAAAAAAAAD/////////////////////AAAAAIYAAAAAAAAAGwAAAAoAAAAAAAoAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAAAbAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAhwAAAAAAAAAjAAAACgAAAAAACgAMAAAACwAAAAIAAQAAABsAAAAOAAAAAgABAAAAHAAAAA8AAAACAAEAAAAdAAAAEAAAAAIAAQAAAB4AAAARAAAAAgABAAAAHwAAABIAAAACAAEAAAAiAAAAEwAAAAIAAQAAACQAAAAUAAAAAgABAAAAJgAAABUAAAACAAEAAAAnAAAAFgAAAAIAAQAAACkAAAA7AAAAAgAAAAAAJAAAADwAAAACAAAAAAAlAAAAAAAAAAAAAAACAAAAAAAAAAIAAAAAACMAAAACAAEAAAAaAAAABAAAAAAAAAABAAAAAAAAAAUAAAAAAAAAAwAAAAAAAAAAAAAAAAAAAAAACAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAABAAAABAAAAAEAAAAAAAAAAQAAAAIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAEAAAAEAAAAAAAAAAAAAAABAAAAAAAAAAIAAQAAABoAAAACAAEAAAAaAAAAAQABAAEAAQACAAEAAAAaAAAAAQD///////////////////////////////8AAAAAAAAAAAIAAAAAAAAAAgABAAAAGgAAAAMAAgAAAAAAIwAAAAoACAAAAD0AAAAEAAAAAAAAAAAAPgAAAAQAAQAAAAAAAAA/AAAABAACAAAAAAAAAEAAAAAEAAMAAAAAAAAAQQAAAAQABAAAAAAAAABCAAAABAAFAAAAAAAAAEMAAAAEAAYAAAAAAAAARAAAAAQABwAAAAAAAAD/////////////////////AAAAAIgAAAAAAAAAJgAAAAoAAAAAAAoAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAAAmAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAiQAAAAAAAABhAAAACgAAAAAACgAdAAAACwAAAAIAAQAAABsAAAAOAAAAAgABAAAAHAAAAA8AAAACAAEAAAAdAAAAEAAAAAIAAQAAACwAAAARAAAAAgAAAAAAZwAAABIAAAACAAEAAAAiAAAAEwAAAAIAAAAAAGgAAAAUAAAAAgABAAAAJgAAABUAAAACAAEAAAAnAAAAFgAAAAIAAQAAACkAAABGAAAAAgABAAAALQAAAEcAAAACAAEAAAAuAAAASAAAAAIAAQAAAC8AAABJAAAAAgABAAAAMAAAAEoAAAACAAAAAABiAAAASwAAAAIAAAAAAGMAAABMAAAAAgAAAAAAZAAAAE0AAAACAAAAAABlAAAATgAAAAIAAAAAAGYAAABPAAAAAgAAAAAAaQAAAFAAAAACAAAAAABqAAAAUQAAAAIAAAAAAGsAAABSAAAAAgAAAAAAbAAAAFMAAAACAAAAAABtAAAAVAAAAAIAAAAAAG4AAABVAAAAAgAAAAAAbwAAAFYAAAACAAAAAABwAAAAVwAAAAIAAAAAAHEAAABYAAAAAgAAAAAAcgAAAAAAAAAAAAAAAwAAAAAAAAACAAAAAABhAAAAAgABAAAAKwAAAAIAAQAAABoAAAAEAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAACAAAAAABqAAAAAAAAAAAAAAAAAAAAAAAAAAcAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAABAAAAAgAAAAEAAAAAAAAAAQAAAAIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAEAAQACAAEAAAAaAAAAAQABAAIAAQAAABoAAAACAAEAAAAaAAAA////////////////////////////////AAAAAAAAAAADAAAAAAAAAAIAAQAAABoAAAADAAIAAQAAACsAAAAKAAIAAABZAAAABAAAAAAAAAAAAFoAAAAEAAEAAAAAAAAAAgAAAAAAYQAAAAoABQAAAD4AAAAEAAIAAAAAAAAAWwAAAAQAAwAAAAAAAABcAAAABAAEAAAAAAAAAF0AAAAEAAUAAAAAAAAAXgAAAAQABgAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAAAAAIoAAAAAAAAAcwAAAAoAAAAAAAoASAAAAAsAAAACAAEAAAAbAAAADgAAAAIAAQAAABwAAAAPAAAAAgABAAAAHQAAABAAAAACAAEAAAAeAAAAEQAAAAIAAQAAAB8AAAASAAAAAgABAAAAIgAAABMAAAACAAEAAAAkAAAAFAAAAAIAAQAAACYAAAAVAAAAAgABAAAAJwAAABYAAAACAAEAAAApAAAAXwAAAAIAAAAAAHQAAABQAAAAAgAAAAAAdQAAAGAAAAACAAAAAAB2AAAAYQAAAAIAAAAAAHcAAABiAAAAAgAAAAAAeAAAAEsAAAACAAAAAACLAAAAYwAAAAIAAAAAAIwAAABKAAAAAgAAAAAAjQAAAGQAAAACAAAAAACOAAAAUgAAAAIAAAAAAI8AAABlAAAAAgAAAAAAkAAAAGYAAAACAAAAAACRAAAAZwAAAAIAAAAAAJIAAABoAAAAAgAAAAAAkwAAAGkAAAACAAAAAACUAAAAagAAAAIAAAAAAJUAAABrAAAAAgAAAAAAlgAAAGwAAAACAAAAAACXAAAAbQAAAAIAAAAAAJgAAABuAAAAAgAAAAAAmQAAAG8AAAACAAAAAACaAAAAcAAAAAIAAAAAAJsAAABxAAAAAgAAAAAAnAAAAHIAAAACAAAAAACdAAAAcwAAAAIAAAAAAJ4AAAB0AAAAAgAAAAAAnwAAAHUAAAACAAAAAACgAAAAdgAAAAIAAAAAAKEAAAB3AAAAAgAAAAAAogAAAHgAAAACAAAAAACjAAAAeQAAAAIAAAAAAKQAAAB6AAAAAgAAAAAApQAAAHsAAAACAAAAAACmAAAAfAAAAAIAAAAAAKcAAAB9AAAAAgAAAAAAqAAAAH4AAAACAAAAAACpAAAAfwAAAAIAAAAAAKoAAACAAAAAAgAAAAAAqwAAAIEAAAACAAAAAACsAAAAggAAAAIAAAAAAK0AAACDAAAAAgAAAAAArgAAAIQAAAACAAAAAACvAAAAhQAAAAIAAAAAALAAAACGAAAAAgAAAAAAsQAAAIcAAAACAAAAAACyAAAAiAAAAAIAAAAAALMAAACJAAAAAgAAAAAAtAAAAIoAAAACAAAAAAC1AAAAiwAAAAIAAAAAALYAAACMAAAAAgAAAAAAtwAAAI0AAAACAAAAAAC4AAAAjgAAAAIAAAAAALkAAACPAAAAAgAAAAAAugAAAJAAAAACAAAAAAC7AAAAkQAAAAIAAAAAALwAAACSAAAAAgAAAAAAvQAAAJMAAAACAAAAAAC+AAAAlAAAAAIAAAAAAL8AAACVAAAAAgAAAAAAwAAAAJYAAAACAAAAAADBAAAAlwAAAAIAAAAAAMIAAACYAAAAAgAAAAAAwwAAAAAAAAAAAAAABAAAAAAAAAACAAAAAABzAAAAAgABAAAAGgAAAAIAAAAAACYAAAACAAAAAADEAAAABAAAAAAAAAABAAAAAAAAAAAAAAAAAAAAAgAAAAAAdQAAAAAAAAAAAAAAAAAAAAAAAAAJAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAABAAAAAgAAAAEAAAAAAAAAAQAAAAIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAgABAAAAGgAAAAEAAQACAAEAAAAaAAAAAgABAAAAGgAAAAIAAQAAABoAAAACAAEAAAAaAAAAAgABAAAAGgAAAAIAAQAAABoAAAD///////////////////////////////8AAAAAAAAAAAIAAAAAAAAAAgABAAAAGgAAAAMAAgAAAAAAcwAAAAoACQAAAJkAAAAEAAAAAAAAAAAAWwAAAAQAAQAAAAAAAACaAAAABAACAAAAAAAAAJsAAAAEAAMAAAAAAAAAnAAAAAQABAAAAAAAAACdAAAABAAFAAAAAAAAAJ4AAAAEAAYAAAAAAAAAnwAAAAQABwAAAAAAAACgAAAABAAIAAAAAAAAAP////////////////////8AAAAAxQAAAAAAAAB5AAAACgAAAAAACgALAAAACwAAAAIAAQAAABsAAAAOAAAAAgABAAAAHAAAAA8AAAACAAEAAAAdAAAAEAAAAAIAAAAAAHoAAAARAAAAAgAAAAAAfQAAABIAAAACAAEAAAAiAAAAEwAAAAIAAQAAACQAAAAUAAAAAgABAAAAJgAAABUAAAACAAAAAADGAAAAFgAAAAIAAQAAACkAAAChAAAAAgAAAAAAfAAAAAAAAAAAAAAAAgAAAAAAAAACAAAAAAB5AAAAAgABAAAAGgAAAAQAAAAAAAAAAQAAAAAAAAAFAAAAAAAAAAMAAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAgABAAAAGgAAAP///////////////////////////////wAAAAAAAAAAAgAAAAAAAAACAAEAAAAaAAAAAwACAAAAAAB5AAAACgABAAAAogAAAAQAAAAAAAAAAAD/////////////////////AAAAAMcAAAAAAAAAfgAAAAoAAAAAAAoACwAAAAsAAAACAAEAAAAbAAAADgAAAAIAAQAAABwAAAAPAAAAAgABAAAAHQAAABAAAAACAAAAAAB6AAAAEQAAAAIAAAAAAH0AAAASAAAAAgABAAAAIgAAABMAAAACAAEAAAAkAAAAFAAAAAIAAQAAACYAAAAVAAAAAgAAAAAAyAAAABYAAAACAAEAAAApAAAAoQAAAAIAAAAAAHwAAAAAAAAAAAAAAAMAAAAAAAAAAgAAAAAAfgAAAAIAAAAAAHkAAAACAAEAAAAaAAAABAAAAAAAAAABAAAAAAAAAAUAAAAAAAAAAwAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAEAAAAaAAAA////////////////////////////////AAAAAAAAAAADAAAAAAAAAAIAAQAAABoAAAADAAIAAAAAAHkAAAAKAAEAAACiAAAABAAAAAAAAAAAAAIAAAAAAH4AAAADAP////////////////////8AAAAA6AAAAAAAAACBAAAACgAYAAAAvwAAAAIABAAAAAMAAADCAAAAAgAEAAAACQAAAMMAAAACAAQAAAANAAAAxAAAAAIABAAAABcAAADFAAAAAgAEAAAALQAAAMYAAAACAAQAAAAvAAAAxwAAAAIABAAAADMAAADIAAAAAgAEAAAAPwAAAMkAAAACAAQAAABGAAAAygAAAAIABAAAAE0AAADLAAAAAgAEAAAAVAAAAMwAAAACAAQAAABZAAAAzQAAAAIABAAAAGAAAADOAAAAAgAEAAAAZwAAAM8AAAACAAQAAABzAAAA0AAAAAIABAAAAHUAAADRAAAAAgAEAAAAdwAAANIAAAACAAQAAACBAAAA0wAAAAIABAAAAIYAAADUAAAAAgAEAAAAjQAAANUAAAACAAQAAACUAAAA1gAAAAIABAAAAKEAAADXAAAAAgAEAAAApQAAANgAAAACAAQAAACwAAAACgAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAIEAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAQAAAAAAAAACAAAAAACBAAAAAwD/////////////////////AAAAAOkAAAAAAAAAggAAAAoAAQAAADoAAAACAAAAAAADAAAACgAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAIIAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP///////////////////////////////wAAAAAAAAAAAQAAAAAAAAACAAAAAACCAAAAAwD/////////////////////AAAAAOoAAAAAAAAAxAAAAAMACgAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAMQAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAIAAAAAAAAAAAAAAAAAAAADAAAAAAAAAAAAAAABAAAABQAAAAAAAAABAAAAAQAAAAUAAAAUAAAAAQAAAAEAAAAFAAAAKAAAAAEAAAABAAAABQAAADwAAAABAAAAAQAAAAUAAABQAAAAAQAAAAEAAAAFAAAAZAAAAAEAAAABAAAABQAAAHgAAAABAAAAAQAAAAUAAACMAAAAAQAAAAEAAAAFAAAAoAAAAAEAAAABAAAABQAAALQAAAABAAAAAQAAAAUAAADIAAAAAQAAAAEAAAAFAAAA3AAAAAEAAAABAAAABQAAAPAAAAABAAAAAQAAAAUAAAAEAQAAAQAAAAEAAAAFAAAAGAEAAAEAAAABAAAABQAAACwBAAABAAAAAQAAAAUAAABAAQAAAQAAAAEAAAAFAAAAVAEAAAEAAAABAAAABQAAAGgBAAABAAAAAQAAAAUAAAB8AQAAAQAAAAEAAAAFAAAAkAEAAAEAAAABAAAABQAAAKQBAAABAAAAAQAAAAUAAAC4AQAAAQAAAAAAAAAEAAAAzAEAAAAAAAABAAAABQAAAMwBAAABAAAAAQAAAAUAAADgAQAAAQAAAAEAAAAFAAAA9AEAAAEAAAABAAAABQAAAAgCAAABAAAAAQAAAAUAAAAcAgAAAQAAAAEAAAAFAAAAMAIAAAEAAAABAAAABQAAAEQCAAABAAAAAAAAAAUAAABYAgAAAAAAAAEAAAAFAAAAWAIAAAEAAAABAAAABQAAAGwCAAABAAAAAAAAAAYAAACAAgAAAAAAAAEAAAAFAAAAgAIAAAEAAAABAAAABQAAAJQCAAABAAAAAQAAAAUAAACoAgAAAQAAAAEAAAAFAAAAvAIAAAEAAAABAAAABQAAANACAAABAAAAAQAAAAUAAADkAgAAAQAAAAEAAAAFAAAA+AIAAAEAAAABAAAABQAAAAwDAAABAAAAAQAAAAUAAAAgAwAAAQAAAAEAAAAFAAAANAMAAAEAAAABAAAABQAAAEgDAAABAAAAAQAAAAUAAABcAwAAAQAAAAEAAAAFAAAAcAMAAAEAAAABAAAABQAAAIQDAAABAAAAAQAAAAUAAACYAwAAAQAAAAEAAAAFAAAArAMAAAEAAAABAAAABQAAAMADAAABAAAAAQAAAAUAAADUAwAAAQAAAAEAAAAFAAAA6AMAAAEAAAABAAAABQAAAPwDAAABAAAAAQAAAAUAAAAQBAAAAQAAAAEAAAAFAAAAJAQAAAEAAAABAAAABQAAADgEAAABAAAAAQAAAAUAAABMBAAAAQAAAAEAAAAFAAAAYAQAAAEAAAABAAAABQAAAHQEAAABAAAAAQAAAAUAAACIBAAAAQAAAAEAAAAFAAAAnAQAAAEAAAABAAAABQAAALAEAAABAAAAAQAAAAUAAADEBAAAAQAAAAEAAAAFAAAA2AQAAAEAAAABAAAABQAAAOwEAAABAAAAAQAAAAUAAAAABQAAAQAAAAEAAAAFAAAAFAUAAAEAAAABAAAABQAAACgFAAABAAAAAQAAAAUAAAA8BQAAAQAAAAEAAAAFAAAAUAUAAAEAAAABAAAABQAAAGQFAAABAAAAAQAAAAUAAAB4BQAAAQAAAAEAAAAFAAAAjAUAAAEAAAABAAAABQAAAKAFAAABAAAAAQAAAAUAAAC0BQAAAQAAAAEAAAAFAAAAyAUAAAEAAAABAAAABQAAANwFAAABAAAAAQAAAAUAAADwBQAAAQAAAAEAAAAFAAAABAYAAAEAAAABAAAABQAAABgGAAABAAAAAQAAAAUAAAAsBgAAAQAAAAEAAAAFAAAAQAYAAAEAAAABAAAABQAAAFQGAAABAAAAAQAAAAUAAABoBgAAAQAAAAEAAAAFAAAAfAYAAAEAAAABAAAABQAAAJAGAAABAAAAAQAAAAUAAACkBgAAAQAAAAEAAAAFAAAAuAYAAAEAAAABAAAABQAAAMwGAAABAAAAAQAAAAUAAADgBgAAAQAAAAEAAAAFAAAA9AYAAAEAAAAAAAAABwAAAAgHAAAAAAAAAQAAAAUAAAAIBwAAAQAAAAEAAAAFAAAAHAcAAAEAAAABAAAABQAAADAHAAABAAAAAQAAAAUAAABEBwAAAQAAAAEAAAAFAAAAWAcAAAEAAAABAAAABQAAAGwHAAABAAAAAQAAAAUAAACABwAAAQAAAAEAAAAFAAAAlAcAAAEAAAABAAAABQAAAKgHAAABAAAAAQAAAAUAAAC8BwAAAQAAAAEAAAAFAAAA0AcAAAEAAAABAAAABQAAAOQHAAABAAAAAQAAAAUAAAD4BwAAAQAAAAEAAAAFAAAADAgAAAEAAAABAAAABQAAACAIAAABAAAAAQAAAAUAAAA0CAAAAQAAAAEAAAAFAAAASAgAAAEAAAAAAAAACAAAAFwIAAAAAAAAAQAAAAUAAABcCAAAAQAAAAEAAAAFAAAAcAgAAAEAAAABAAAABQAAAIQIAAABAAAAAQAAAAUAAACYCAAAAQAAAAEAAAAFAAAArAgAAAEAAAAAAAAACQAAAMAIAAAAAAAAAQAAAAUAAADACAAAAQAAAAEAAAAFAAAA1AgAAAEAAAABAAAABQAAAPAIAAABAAAAAQAAAAUAAAAECQAAAQAAAAAAAAAKAAAAGAkAAAAAAAABAAAABQAAABgJAAABAAAAAgAAAAAAAAA0CQAAAQAAAAAAAAALAAAARAkAAAAAAAAAAAAADAAAAEQJAAAAAAAAAgAAAAAAAABECQAAAQAAAAIAAAAAAAAAVAkAAAEAAAADAAAABwAAAGQJAAABAAAAAgAAAAAAAADoDgAAAQAAAAMAAAAHAAAA+A4AAAEAAAADAAAABgAAAIgSAAABAAAAAwAAAAcAAAAyFgAAAQAAAAMAAAAHAAAAbhoAAAEAAAABAAAABQAAABIkAAABAAAAAQAAAAUAAAAmJAAAAQAAAAEAAAAFAAAAOiQAAAEAAAABAAAABQAAAE4kAAABAAAAAQAAAAUAAABiJAAAAQAAAAEAAAAFAAAAdiQAAAEAAAABAAAABQAAAIokAAABAAAAAQAAAAUAAACeJAAAAQAAAAEAAAAFAAAAsiQAAAEAAAABAAAABQAAAMYkAAABAAAAAQAAAAUAAADaJAAAAQAAAAEAAAAFAAAA7iQAAAEAAAABAAAABQAAAAIlAAABAAAAAQAAAAUAAAAWJQAAAQAAAAEAAAAFAAAAKiUAAAEAAAABAAAABQAAAD4lAAABAAAAAQAAAAUAAABSJQAAAQAAAAEAAAAFAAAAZiUAAAEAAAABAAAABQAAAHolAAABAAAAAQAAAAUAAACOJQAAAQAAAAEAAAAFAAAAoiUAAAEAAAABAAAABQAAALYlAAABAAAAAQAAAAUAAADKJQAAAQAAAAEAAAAFAAAA3iUAAAEAAAABAAAABQAAAPIlAAABAAAAAQAAAAUAAAAGJgAAAQAAAAEAAAAFAAAAGiYAAAEAAAABAAAABQAAAC4mAAABAAAAAQAAAAUAAABCJgAAAQAAAAEAAAAFAAAAViYAAAEAAAABAAAABQAAAGomAAABAAAAAQAAAAUAAAB+JgAAAQAAAAEAAAAFAAAAkiYAAAEAAAABAAAABQAAAKYmAAABAAAAAQAAAAUAAAC6JgAAAQAAAAEAAAAFAAAAziYAAAEAAAABAAAABQAAAOImAAABAAAAAQAAAAUAAAD2JgAAAQAAAAEAAAAFAAAACicAAAEAAAABAAAABQAAAB4nAAABAAAAAQAAAAUAAAAyJwAAAQAAAAEAAAAFAAAARicAAAEAAAABAAAABQAAAFonAAABAAAAAQAAAAUAAABuJwAAAQAAAAEAAAAFAAAAgicAAAEAAAABAAAABQAAAJYnAAABAAAAAQAAAAUAAACqJwAAAQAAAAEAAAAFAAAAvicAAAEAAAABAAAABQAAANInAAABAAAAAQAAAAUAAADmJwAAAQAAAAEAAAAFAAAA+icAAAEAAAABAAAABQAAAA4oAAABAAAAAQAAAAUAAAAiKAAAAQAAAAEAAAAFAAAANigAAAEAAAABAAAABQAAAEooAAABAAAAAQAAAAUAAABeKAAAAQAAAAEAAAAFAAAAcigAAAEAAAAAAAAADQAAAIYoAAAAAAAAAwAAAAcAAACGKAAAAQAAAAEAAAAFAAAAACoAAAEAAAADAAAABwAAACwqAAABAAAAAQAAAAUAAAAwKwAAAQAAAAEAAAAGAAAAZisAAAEAAAABAAAABgAAAJIrAAABAAAAAwAAAAkAAAC+KwAAAQAAAAMAAAAJAAAA6isAAAEAAAADAAAACQAAABYsAAABAAAAAwAAAAkAAABKLAAAAQAAAAMAAAAJAAAAdiwAAAEAAAADAAAACQAAAKIsAAABAAAAAwAAAAkAAADOLAAAAQAAAAMAAAAJAAAA+iwAAAEAAAADAAAACQAAACYtAAABAAAAAwAAAAkAAABaLQAAAQAAAAMAAAAJAAAAji0AAAEAAAADAAAACQAAALItAAABAAAAAwAAAAkAAADWLQAAAQAAAAMAAAAJAAAAAi4AAAEAAAADAAAACQAAADYuAAABAAAAAwAAAAkAAABiLgAAAQAAAAMAAAAJAAAAli4AAAEAAAADAAAACQAAAMouAAABAAAAAwAAAAkAAAD2LgAAAQAAAAMAAAAJAAAAIi8AAAEAAAADAAAACQAAAE4vAAABAAAAAwAAAAkAAAB6LwAAAQAAAAMAAAAJAAAApi8AAAEAAAADAAAACQAAANIvAAABAAAAAwAAAAkAAAD+LwAAAQAAAAMAAAAJAAAAMjAAAAEAAAADAAAACQAAAGYwAAABAAAAAwAAAAkAAACSMAAAAQAAAAMAAAAJAAAAvjAAAAEAAAACAAAAAAAAAOowAAABAAAAAgAAAAAAAAD6MAAAAQAAAAMAAAADAAAACjEAAAEAAAALAAAAAAAAAAAAAQABAAEAAQADAAsAAAAAAAEAAAABAAEAAQABAAMACwAAAAAAAgAAAAEAAQABAAEAAwALAAAAAAADAAAAAQABAAEAAQADAAsAAAAAAAQAAAABAAEAAQABAAMACwAAAAAABQAAAAEAAQABAAEAAwALAAAAAAAGAAAAAQABAAEAAQADAAsAAAAAAAcAAAABAAEAAQABAAMACwAAAAAACAAAAAEAAQABAAEAAwALAAAAAAAJAAAAAQABAAEAAQADAAsAAAAAAAoAAAABAAEAAQABAAMACwAAAAAACwAAAAEAAQABAAEAAwALAAAAAAAMAAAAAQABAAEAAQADAAsAAAAAAA0AAAABAAEAAQABAAMACwAAAAAADgAAAAEAAQABAAEAAwALAAAAAAAPAAAAAQABAAEAAQADAAsAAAAAABAAAAABAAEAAQABAAMACwAAAAAAEQAAAAEAAQABAAEAAwALAAAAAAASAAAAAQABAAEAAQADAAsAAAAAABMAAAABAAEAAQABAAMACwAAAAAAFAAAAAEAAQABAAEAAwALAAAAAAAVAAAAAQABAAEAAQADAAsAAAAAABYAAAABAAEAAQABAAMACwAAAAAAFwAAAAEAAQABAAEAAwALAAAAAAAYAAAAAQABAAEAAQADAAsAAAAAABkAAAABAAEAAQABAAMACwAAAAAAGgAAAAEAAQABAAEAAwALAAAAAAAbAAAAAQABAAEAAQADAAsAAAAAABwAAAABAAEAAQABAAMACwAAAAAAHQAAAAEAAQABAAEAAwALAAAAAAAeAAAAAQABAAEAAQADAAsAAAAAAB8AAAABAAEAAQABAAMACwAAAAAAIAAAAAEAAQABAAEAAwALAAAAAAAhAAAAAQABAAEAAQADAAsAAAAAACIAAAABAAEAAQABAAMACwAAAAAAIwAAAAEAAQABAAEAAwALAAAAAAAkAAAAAQABAAEAAQADAAsAAAAAACUAAAABAAEAAQABAAMACwAAAAAAJgAAAAEAAQABAAEAAwALAAAAAAAnAAAAAQABAAEAAQADAAsAAAAAACgAAAABAAEAAQABAAMACwAAAAAAKQAAAAEAAQABAAEAAwALAAAAAAAqAAAAAQABAAEAAQADAAsAAAAAACsAAAABAAEAAQABAAMACwAAAAAALAAAAAEAAQABAAEAAwALAAAAAAAtAAAAAQABAAEAAQADAAsAAAAAAC4AAAABAAEAAQABAAMACwAAAAAALwAAAAEAAQABAAEAAwALAAAAAAAwAAAAAQABAAEAAQADAAsAAAAAADEAAAABAAEAAQABAAMACwAAAAAAMgAAAAEAAQABAAEAAwALAAAAAAAzAAAAAQABAAEAAQADAAsAAAAAADQAAAABAAEAAQABAAMACwAAAAAANQAAAAEAAQABAAEAAwALAAAAAAA2AAAAAQABAAEAAQADAAsAAAAAADcAAAABAAEAAQABAAMACwAAAAAAOAAAAAEAAQABAAEAAwALAAAAAAA5AAAAAQABAAEAAQADAAsAAAAAADoAAAABAAEAAQABAAMACwAAAAAAOwAAAAEAAQABAAEAAwALAAAAAAA8AAAAAQABAAEAAQADAAsAAAAAAD0AAAABAAEAAQABAAMACwAAAAAAPgAAAAEAAQABAAEAAwALAAAAAAA/AAAAAQABAAEAAQADAAsAAAAAAEAAAAABAAEAAQABAAMACwAAAAAAQQAAAAEAAQABAAEAAwALAAAAAABCAAAAAQABAAEAAQADAAsAAAAAAEMAAAABAAEAAQABAAMACwAAAAAARAAAAAEAAQABAAEAAwALAAAAAABFAAAAAQABAAEAAQADAAsAAAAAAEYAAAABAAEAAQABAAMACwAAAAAARwAAAAEAAQABAAEAAwALAAAAAABIAAAAAQABAAEAAQADAAsAAAAAAEkAAAABAAEAAQABAAMACwAAAAAASgAAAAEAAQABAAEAAwALAAAAAABLAAAAAQABAAEAAQADAAsAAAAAAEwAAAABAAEAAQABAAMACwAAAAAATQAAAAEAAQABAAEAAwALAAAAAABOAAAAAQABAAEAAQADAAsAAAAAAE8AAAABAAEAAQABAAMACwAAAAAAUAAAAAEAAQABAAEAAwALAAAAAABRAAAAAQABAAEAAQADAAsAAAAAAFIAAAABAAEAAQABAAMACwAAAAAAUwAAAAEAAQABAAEAAwALAAAAAABUAAAAAQABAAEAAQADAAsAAAAAAFUAAAABAAEAAQABAAMACwAAAAAAVgAAAAEAAQABAAEAAwALAAAAAABXAAAAAQABAAEAAQADAAsAAAAAAFgAAAABAAEAAQABAAMACwAAAAAAWQAAAAEAAQABAAEAAwALAAAAAABaAAAAAQABAAEAAQADAAsAAAAAAFsAAAABAAEAAQABAAMACwAAAAAAXAAAAAEAAQABAAEAAwALAAAAAABdAAAAAQABAAEAAQADAAsAAAAAAF4AAAABAAEAAQABAAMACwAAAAAAXwAAAAEAAQABAAEAAwALAAAAAABgAAAAAQABAAEAAQADAAsAAAAAAGEAAAABAAEAAQABAAMACwAAAAAAYgAAAAEAAQABAAEAAwALAAAAAABjAAAAAQABAAEAAQADAAsAAAAAAGQAAAABAAEAAQABAAMACwAAAAAAZQAAAAEAAQABAAEAAwALAAAAAABmAAAAAQABAAEAAQADAAsAAAAAAGcAAAABAAEAAQABAAMACwAAAAAAaAAAAAEAAQABAAEAAwALAAAAAABpAAAAAQABAAEAAQADAAsAAAAAAGoAAAABAAEAAQABAAMACwAAAAAAawAAAAEAAQABAAEAAwALAAAAAABsAAAAAQABAAEAAQADAAsAAAAAAG0AAAABAAEAAQABAAMACwAAAAAAbgAAAAEAAQABAAEAAwALAAAAAABvAAAAAQABAAEAAQADAAsAAAAAAHAAAAABAAEAAQABAAMACwAAAAAAcQAAAAIAAAAAAMkAAAABAAEAAQADAAsAAAAAAHIAAAABAAEAAQABAAMACwAAAAAAcwAAAAEAAQABAAEAAwALAAAAAAB0AAAAAgAAAAAAygAAAAEAAQABAAMApAAAAAcAAAAAAAoAAAAAAKUAAAAHAAAAAAAKAAAAAAAJAAAABwAAAAAACgAAAAAABgCoAAAABwAGAAAAAgAAAAAAywAAAAIAAAAAAMwAAAACAAAAAADNAAAAAgAAAAAAzgAAAAIAAAAAAM8AAAACAAAAAADQAAAACgAeAAAAEAAAAAIAAAAAAAQAAAAXAAAAAgAAAAAABQAAABgAAAACAAAAAAAGAAAAGQAAAAIAAAAAAAcAAAAaAAAAAgAAAAAACAAAABsAAAACAAAAAAAJAAAAHAAAAAIAAAAAAAoAAAAdAAAAAgAAAAAACwAAAB4AAAACAAAAAAAMAAAAHwAAAAIAAAAAAA0AAAAgAAAAAgAAAAAADgAAACEAAAACAAAAAAAPAAAAIgAAAAIAAAAAABAAAAAjAAAAAgAAAAAAEQAAACQAAAACAAAAAAASAAAAJQAAAAIAAAAAABMAAAAmAAAAAgAAAAAAFAAAACcAAAACAAAAAAAVAAAAKAAAAAIAAAAAABYAAAApAAAAAgAAAAAAFwAAACoAAAACAAAAAAAYAAAAKwAAAAIAAAAAABkAAAAsAAAAAgAAAAAAGgAAAC0AAAACAAAAAAAcAAAALgAAAAIAAAAAAB0AAAAvAAAAAgAAAAAAHgAAADAAAAACAAAAAAAfAAAAMQAAAAIAAAAAACAAAAAyAAAAAgAAAAAAIQAAADMAAAACAAAAAAAiAAAABwAeAAAAAgAAAAAABAAAAAIAAAAAAAUAAAACAAAAAAAGAAAAAgAAAAAABwAAAAIAAAAAAAgAAAACAAAAAAAJAAAAAgAAAAAACgAAAAIAAAAAAAsAAAACAAAAAAAMAAAAAgAAAAAADQAAAAIAAAAAAA4AAAACAAAAAAAPAAAAAgAAAAAAEAAAAAIAAAAAABEAAAACAAAAAAASAAAAAgAAAAAAEwAAAAIAAAAAABQAAAACAAAAAAAVAAAAAgAAAAAAFgAAAAIAAAAAABcAAAACAAAAAAAYAAAAAgAAAAAAGQAAAAIAAAAAABoAAAACAAAAAAAcAAAAAgAAAAAAHQAAAAIAAAAAAB4AAAACAAAAAAAfAAAAAgAAAAAAIAAAAAIAAAAAACEAAAACAAAAAAAiAAAABwAAAAAABwABAAAAAgABAAAAGgAAAAcAAAAAAAIAAQAAABoAAAAHAAAAAAAKAAAAAAAEAAEAAAAAAAAABwACAAAAAgAAAAAAAwAAAAIAAQAAABoAAAAHAAAAAAABAAQAAAAAAAAAAAAKAAAAAAAKAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAEABwAGAAAABwAEAAAABAABAAAAAAAAAAIAAAAAAAMAAAAGABoAAAAGADQAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAAwAAAAYAqQAAAAYANQAAAAcABAAAAAQAAQAAAAAAAAACAAAAAAADAAAABgAvAAAABgA2AAAABwAEAAAABAABAAAAAAAAAAIAAAAAAAMAAAAGAKoAAAAGADcAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAAwAAAAYAqwAAAAYAOAAAAAcABAAAAAQAAQAAAAAAAAACAAAAAAADAAAABgCsAAAABgA5AAAABwAGAAAABwAEAAAABAABAAAAAAAAAAIAAAAAAAMAAAAGABoAAAAGADQAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAAwAAAAYAqQAAAAYANQAAAAcABAAAAAQAAQAAAAAAAAACAAAAAAADAAAABgAvAAAABgA2AAAABwAEAAAABAABAAAAAAAAAAIAAAAAAAMAAAAGAKoAAAAGADcAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAAwAAAAYAqwAAAAYAOAAAAAcABAAAAAQAAQAAAAAAAAACAAAAAAADAAAABgCsAAAABgA5AAAAAQCtAAAABwAAAAAACgAAAAAABgAKAAAABwAIAAAAAgAAAAAA0QAAAAIAAAAAANIAAAACAAAAAADTAAAAAgAAAAAA1AAAAAIAAAAAANUAAAACAAAAAADWAAAAAgAAAAAA1wAAAAIAAAAAANgAAAAKAAIAAAA7AAAAAgAAAAAAJAAAADwAAAACAAAAAAAlAAAABwACAAAAAgAAAAAAJAAAAAIAAAAAACUAAAAHAAAAAAAHAAEAAAACAAEAAAAaAAAABwAAAAAAAgABAAAAGgAAAAcAAAAAAAoAAAAAAAQAAQAAAAAAAAAHAAIAAAACAAAAAAAjAAAAAgABAAAAGgAAAAcAAAAAAAEABAAAAAAAAAAAAAoAAAAAAAoAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAAAQAHAAgAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAIwAAAAYArgAAAAYAPQAAAAcABAAAAAQAAQAAAAAAAAACAAAAAAAjAAAABgBLAAAABgA+AAAABwAEAAAABAABAAAAAAAAAAIAAAAAACMAAAAGAGMAAAAGAD8AAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAIwAAAAYArwAAAAYAQAAAAAcABAAAAAQAAgAAAAAAAAACAAAAAAAjAAAABgCwAAAABgBBAAAABwAEAAAABAADAAAAAAAAAAIAAAAAACMAAAAGALEAAAAGAEIAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAIwAAAAYAsgAAAAYAQwAAAAcABAAAAAQAAQAAAAAAAAACAAAAAAAjAAAABgCzAAAABgBEAAAABwAIAAAABwAEAAAABAABAAAAAAAAAAIAAAAAACMAAAAGAK4AAAAGAD0AAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAIwAAAAYASwAAAAYAPgAAAAcABAAAAAQAAQAAAAAAAAACAAAAAAAjAAAABgBjAAAABgA/AAAABwAEAAAABAABAAAAAAAAAAIAAAAAACMAAAAGAK8AAAAGAEAAAAAHAAQAAAAEAAIAAAAAAAAAAgAAAAAAIwAAAAYAsAAAAAYAQQAAAAcABAAAAAQAAwAAAAAAAAACAAAAAAAjAAAABgCxAAAABgBCAAAABwAEAAAABAABAAAAAAAAAAIAAAAAACMAAAAGALIAAAAGAEMAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAIwAAAAYAswAAAAYARAAAAAEABgAEAAAABwAJAAAAAgAAAAAA2QAAAAIAAAAAANoAAAACAAAAAADbAAAAAgAAAAAA3AAAAAIAAAAAAN0AAAACAAAAAADeAAAAAgAAAAAA3wAAAAIAAAAAAOAAAAACAAAAAADhAAAACgA5AAAASwAAAAIAAAAAACcAAABjAAAAAgAAAAAAKAAAAEoAAAACAAAAAAApAAAAZAAAAAIAAAAAACoAAABSAAAAAgAAAAAAKwAAAGUAAAACAAAAAAAsAAAAZgAAAAIAAAAAAC0AAABnAAAAAgAAAAAALgAAAGgAAAACAAAAAAAvAAAAaQAAAAIAAAAAADAAAABqAAAAAgAAAAAAMQAAAGsAAAACAAAAAAAyAAAAbAAAAAIAAAAAADMAAABtAAAAAgAAAAAANAAAAG4AAAACAAAAAAA1AAAAbwAAAAIAAAAAADYAAABwAAAAAgAAAAAANwAAAHEAAAACAAAAAAA4AAAAcgAAAAIAAAAAADkAAABzAAAAAgAAAAAAOgAAAHQAAAACAAAAAAA7AAAAdQAAAAIAAAAAADwAAAB2AAAAAgAAAAAAPQAAAHcAAAACAAAAAAA+AAAAeAAAAAIAAAAAAD8AAAB5AAAAAgAAAAAAQAAAAHoAAAACAAAAAABBAAAAewAAAAIAAAAAAEIAAAB8AAAAAgAAAAAAQwAAAH0AAAACAAAAAABEAAAAfgAAAAIAAAAAAEUAAAB/AAAAAgAAAAAARgAAAIAAAAACAAAAAABHAAAAgQAAAAIAAAAAAEgAAACCAAAAAgAAAAAASQAAAIMAAAACAAAAAABKAAAAhAAAAAIAAAAAAEsAAACFAAAAAgAAAAAATAAAAIYAAAACAAAAAABNAAAAhwAAAAIAAAAAAE4AAACIAAAAAgAAAAAATwAAAIkAAAACAAAAAABQAAAAigAAAAIAAAAAAFEAAACLAAAAAgAAAAAAUgAAAIwAAAACAAAAAABTAAAAjQAAAAIAAAAAAFQAAACOAAAAAgAAAAAAVQAAAI8AAAACAAAAAABWAAAAkAAAAAIAAAAAAFcAAACRAAAAAgAAAAAAWAAAAJIAAAACAAAAAABZAAAAkwAAAAIAAAAAAFoAAACUAAAAAgAAAAAAWwAAAJUAAAACAAAAAABcAAAAlgAAAAIAAAAAAF0AAACXAAAAAgAAAAAAXgAAAJgAAAACAAAAAABfAAAABwAAAAAABwAAAAAABAABAAAAAAAAAAIAAAAAAGAAAAAGAAUAAAAHAAUAAAACAAAAAADiAAAAAgAAAAAA4wAAAAIAAAAAAOQAAAACAAAAAADlAAAAAgAAAAAA5gAAAAoAEQAAAEoAAAACAAAAAABiAAAASwAAAAIAAAAAAGMAAABMAAAAAgAAAAAAZAAAAE0AAAACAAAAAABlAAAATgAAAAIAAAAAAGYAAAARAAAAAgAAAAAAZwAAABMAAAACAAAAAABoAAAATwAAAAIAAAAAAGkAAABQAAAAAgAAAAAAagAAAFEAAAACAAAAAABrAAAAUgAAAAIAAAAAAGwAAABTAAAAAgAAAAAAbQAAAFQAAAACAAAAAABuAAAAVQAAAAIAAAAAAG8AAABWAAAAAgAAAAAAcAAAAFcAAAACAAAAAABxAAAAWAAAAAIAAAAAAHIAAAAHABEAAAACAAAAAABiAAAAAgAAAAAAYwAAAAIAAAAAAGQAAAACAAAAAABlAAAAAgAAAAAAZgAAAAIAAAAAAGcAAAACAAAAAABoAAAAAgAAAAAAaQAAAAIAAAAAAGoAAAACAAAAAABrAAAAAgAAAAAAbAAAAAIAAAAAAG0AAAACAAAAAABuAAAAAgAAAAAAbwAAAAIAAAAAAHAAAAACAAAAAABxAAAAAgAAAAAAcgAAAAcAAAAAAAcAAQAAAAIAAQAAACsAAAAHAAAAAAABAAcAAAAAAAoAAAAAAAQAAQAAAAAAAAAHAAMAAAACAAAAAABhAAAAAgABAAAAKwAAAAIAAQAAABoAAAAHAAAAAAABAAQAAAAAAAAAAAAKAAMAAAC0AAAAAgAAAAAAZwAAALUAAAACAAAAAABoAAAAtgAAAAIAAAAAAGkAAAAKAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAEABwAGAAAABwACAAAABAAAAAAAAAAAAAIAAQAAAC0AAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAYQAAAAYASwAAAAYAPgAAAAcABAAAAAQAAQAAAAAAAAACAAAAAABhAAAABgBKAAAABgBbAAAABwAEAAAABAABAAAAAAAAAAIAAAAAAGEAAAAGAEwAAAAGAFwAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAYQAAAAYAVQAAAAYAXQAAAAcABAAAAAQAAQAAAAAAAAACAAAAAABhAAAABgC3AAAABgBeAAAABwAFAAAABwAEAAAABAABAAAAAAAAAAIAAAAAAGEAAAAGAEsAAAAGAD4AAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAYQAAAAYASgAAAAYAWwAAAAcABAAAAAQAAQAAAAAAAAACAAAAAABhAAAABgBMAAAABgBcAAAABwAEAAAABAABAAAAAAAAAAIAAAAAAGEAAAAGAFUAAAAGAF0AAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAYQAAAAYAtwAAAAYAXgAAAAEABgAGAAAABwAJAAAAAgAAAAAA2QAAAAIAAAAAANoAAAACAAAAAADbAAAAAgAAAAAA3AAAAAIAAAAAAN0AAAACAAAAAADeAAAAAgAAAAAA3wAAAAIAAAAAAOAAAAACAAAAAADhAAAACgA+AAAAXwAAAAIAAAAAAHQAAABQAAAAAgAAAAAAdQAAAGAAAAACAAAAAAB2AAAAYQAAAAIAAAAAAHcAAABiAAAAAgAAAAAAeAAAAEsAAAACAAAAAACLAAAAYwAAAAIAAAAAAIwAAABKAAAAAgAAAAAAjQAAAGQAAAACAAAAAACOAAAAUgAAAAIAAAAAAI8AAABlAAAAAgAAAAAAkAAAAGYAAAACAAAAAACRAAAAZwAAAAIAAAAAAJIAAABoAAAAAgAAAAAAkwAAAGkAAAACAAAAAACUAAAAagAAAAIAAAAAAJUAAABrAAAAAgAAAAAAlgAAAGwAAAACAAAAAACXAAAAbQAAAAIAAAAAAJgAAABuAAAAAgAAAAAAmQAAAG8AAAACAAAAAACaAAAAcAAAAAIAAAAAAJsAAABxAAAAAgAAAAAAnAAAAHIAAAACAAAAAACdAAAAcwAAAAIAAAAAAJ4AAAB0AAAAAgAAAAAAnwAAAHUAAAACAAAAAACgAAAAdgAAAAIAAAAAAKEAAAB3AAAAAgAAAAAAogAAAHgAAAACAAAAAACjAAAAeQAAAAIAAAAAAKQAAAB6AAAAAgAAAAAApQAAAHsAAAACAAAAAACmAAAAfAAAAAIAAAAAAKcAAAB9AAAAAgAAAAAAqAAAAH4AAAACAAAAAACpAAAAfwAAAAIAAAAAAKoAAACAAAAAAgAAAAAAqwAAAIEAAAACAAAAAACsAAAAggAAAAIAAAAAAK0AAACDAAAAAgAAAAAArgAAAIQAAAACAAAAAACvAAAAhQAAAAIAAAAAALAAAACGAAAAAgAAAAAAsQAAAIcAAAACAAAAAACyAAAAiAAAAAIAAAAAALMAAACJAAAAAgAAAAAAtAAAAIoAAAACAAAAAAC1AAAAiwAAAAIAAAAAALYAAACMAAAAAgAAAAAAtwAAAI0AAAACAAAAAAC4AAAAjgAAAAIAAAAAALkAAACPAAAAAgAAAAAAugAAAJAAAAACAAAAAAC7AAAAkQAAAAIAAAAAALwAAACSAAAAAgAAAAAAvQAAAJMAAAACAAAAAAC+AAAAlAAAAAIAAAAAAL8AAACVAAAAAgAAAAAAwAAAAJYAAAACAAAAAADBAAAAlwAAAAIAAAAAAMIAAACYAAAAAgAAAAAAwwAAAAcAPgAAAAIAAAAAAHQAAAACAAAAAAB1AAAAAgAAAAAAdgAAAAIAAAAAAHcAAAACAAAAAAB4AAAAAgAAAAAAiwAAAAIAAAAAAIwAAAACAAAAAACNAAAAAgAAAAAAjgAAAAIAAAAAAI8AAAACAAAAAACQAAAAAgAAAAAAkQAAAAIAAAAAAJIAAAACAAAAAACTAAAAAgAAAAAAlAAAAAIAAAAAAJUAAAACAAAAAACWAAAAAgAAAAAAlwAAAAIAAAAAAJgAAAACAAAAAACZAAAAAgAAAAAAmgAAAAIAAAAAAJsAAAACAAAAAACcAAAAAgAAAAAAnQAAAAIAAAAAAJ4AAAACAAAAAACfAAAAAgAAAAAAoAAAAAIAAAAAAKEAAAACAAAAAACiAAAAAgAAAAAAowAAAAIAAAAAAKQAAAACAAAAAAClAAAAAgAAAAAApgAAAAIAAAAAAKcAAAACAAAAAACoAAAAAgAAAAAAqQAAAAIAAAAAAKoAAAACAAAAAACrAAAAAgAAAAAArAAAAAIAAAAAAK0AAAACAAAAAACuAAAAAgAAAAAArwAAAAIAAAAAALAAAAACAAAAAACxAAAAAgAAAAAAsgAAAAIAAAAAALMAAAACAAAAAAC0AAAAAgAAAAAAtQAAAAIAAAAAALYAAAACAAAAAAC3AAAAAgAAAAAAuAAAAAIAAAAAALkAAAACAAAAAAC6AAAAAgAAAAAAuwAAAAIAAAAAALwAAAACAAAAAAC9AAAAAgAAAAAAvgAAAAIAAAAAAL8AAAACAAAAAADAAAAAAgAAAAAAwQAAAAIAAAAAAMIAAAACAAAAAADDAAAABwAAAAAABwABAAAAAgABAAAAGgAAAAcAAQAAAAIAAAAAACYAAAACAAEAAAAaAAAABwAAAAAACgAAAAAABAABAAAAAAAAAAcAAgAAAAIAAAAAAHMAAAACAAEAAAAaAAAABwACAAAAAgAAAAAAJgAAAAIAAAAAAMQAAAABAAQAAAAAAAAAAAAKAAAAAAAKAAAAAAAEAAAAAAAAAAAABAAAAAAAAAAAAAEABwAJAAAABwAEAAAABAABAAAAAAAAAAIAAAAAAHMAAAAGALgAAAAGAJkAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAcwAAAAYASgAAAAYAWwAAAAcABAAAAAQAAQAAAAAAAAACAAAAAABzAAAABgBkAAAABgCaAAAABwAEAAAABAABAAAAAAAAAAIAAAAAAHMAAAAGALkAAAAGAJsAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAcwAAAAYAoQAAAAYAnAAAAAcABAAAAAQAAQAAAAAAAAACAAAAAABzAAAABgC6AAAABgCdAAAABwAEAAAABAABAAAAAAAAAAIAAAAAAHMAAAAGALsAAAAGAJ4AAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAcwAAAAYAvAAAAAYAnwAAAAcABAAAAAQAAQAAAAAAAAACAAAAAABzAAAABgC9AAAABgCgAAAABwAJAAAABwAEAAAABAABAAAAAAAAAAIAAAAAAHMAAAAGALgAAAAGAJkAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAcwAAAAYASgAAAAYAWwAAAAcABAAAAAQAAQAAAAAAAAACAAAAAABzAAAABgBkAAAABgCaAAAABwAEAAAABAABAAAAAAAAAAIAAAAAAHMAAAAGALkAAAAGAJsAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAcwAAAAYAoQAAAAYAnAAAAAcABAAAAAQAAQAAAAAAAAACAAAAAABzAAAABgC6AAAABgCdAAAABwAEAAAABAABAAAAAAAAAAIAAAAAAHMAAAAGALsAAAAGAJ4AAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAcwAAAAYAvAAAAAYAnwAAAAcABAAAAAQAAQAAAAAAAAACAAAAAABzAAAABgC9AAAABgCgAAAAAQAMAAAAAAB1AAAAAQABAAEAAQADAAwAAAAAAHYAAAABAAEAAQABAAMADAAAAAAAdwAAAAEAAQABAAEAAwAMAAAAAAB4AAAAAQABAAEAAQADAAwAAAAAAHkAAAABAAEAAQABAAMADAAAAAAAegAAAAEAAQABAAEAAwAMAAAAAAB7AAAAAQABAAEAAQADAAwAAAAAAHwAAAABAAEAAQABAAMADAAAAAAAfQAAAAEAAQABAAEAAwAMAAAAAAB+AAAAAQABAAEAAQADAAwAAAAAAH8AAAABAAEAAQABAAMADAAAAAAAgAAAAAEAAQABAAEAAwAMAAAAAACBAAAAAQABAAEAAQADAAwAAAAAAIIAAAABAAEAAQABAAMADAAAAAAAgwAAAAEAAQABAAEAAwAMAAAAAACEAAAAAQABAAEAAQADAAwAAAAAAIUAAAABAAEAAQABAAMADAAAAAAAhgAAAAEAAQABAAEAAwAMAAAAAACHAAAAAQABAAEAAQADAAwAAAAAAIgAAAABAAEAAQABAAMADAAAAAAAiQAAAAEAAQABAAEAAwAMAAAAAACKAAAAAQABAAEAAQADAAwAAAAAAIsAAAABAAEAAQABAAMADAAAAAAAjAAAAAEAAQABAAEAAwAMAAAAAACNAAAAAQABAAEAAQADAAwAAAAAAI4AAAABAAEAAQABAAMADAAAAAAAjwAAAAEAAQABAAEAAwAMAAAAAACQAAAAAQABAAEAAQADAAwAAAAAAJEAAAABAAEAAQABAAMADAAAAAAAkgAAAAEAAQABAAEAAwAMAAAAAACTAAAAAQABAAEAAQADAAwAAAAAAJQAAAABAAEAAQABAAMADAAAAAAAlQAAAAEAAQABAAEAAwAMAAAAAACWAAAAAQABAAEAAQADAAwAAAAAAJcAAAABAAEAAQABAAMADAAAAAAAmAAAAAEAAQABAAEAAwAMAAAAAACZAAAAAQABAAEAAQADAAwAAAAAAJoAAAABAAEAAQABAAMADAAAAAAAmwAAAAEAAQABAAEAAwAMAAAAAACcAAAAAQABAAEAAQADAAwAAAAAAJ0AAAABAAEAAQABAAMADAAAAAAAngAAAAEAAQABAAEAAwAMAAAAAACfAAAAAQABAAEAAQADAAwAAAAAAKAAAAABAAEAAQABAAMADAAAAAAAoQAAAAEAAQABAAEAAwAMAAAAAACiAAAAAQABAAEAAQADAAwAAAAAAKMAAAABAAEAAQABAAMADAAAAAAApAAAAAEAAQABAAEAAwAMAAAAAAClAAAAAQABAAEAAQADAAwAAAAAAKYAAAABAAEAAQABAAMADAAAAAAApwAAAAEAAQABAAEAAwAMAAAAAACoAAAAAQABAAEAAQADAAwAAAAAAKkAAAABAAEAAQABAAMADAAAAAAAqgAAAAEAAQABAAEAAwAMAAAAAACrAAAAAQABAAEAAQADAAwAAAAAAKwAAAABAAEAAQABAAMADAAAAAAArQAAAAEAAQABAAEAAwAGAAcAAAAHAAEAAAACAAAAAADnAAAACgAEAAAAEAAAAAIAAAAAAHoAAAChAAAAAgAAAAAAfAAAABEAAAACAAAAAAB9AAAAFQAAAAIAAAAAAMYAAAAHAAMAAAACAAAAAAB6AAAAAgAAAAAAfAAAAAIAAAAAAH0AAAAHAAEAAAAKAAIAAAChAAAABgAVAAAAvgAAAAIAAAAAAHsAAAAHAAEAAAACAAEAAAAaAAAABwAAAAAAAgABAAAAGgAAAAcAAAAAAAoAAAAAAAQAAQAAAAAAAAAHAAIAAAACAAAAAAB5AAAAAgABAAAAGgAAAAcAAAAAAAEABAAAAAAAAAAAAAoAAAAAAAoAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAAAQAHAAEAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAeQAAAAYAvgAAAAYAogAAAAcAAQAAAAcABAAAAAQAAQAAAAAAAAACAAAAAAB5AAAABgC+AAAABgCiAAAAAQAMAAAAAACuAAAAAQAHAAIAAAACAAEAAAAoAAAAAgAAAAAAewAAAAMAAwADAAYACAAAAAcAAAAAAAoAAQAAABUAAAACAAAAAADIAAAABwAAAAAABwABAAAACgACAAAAoQAAAAYAFQAAAL4AAAACAAAAAAB/AAAABwABAAAAAgAAAAAAeQAAAAcAAAAAAAEABwAAAAAACgAAAAAABAABAAAAAAAAAAcAAwAAAAIAAAAAAH4AAAACAAAAAAB5AAAAAgABAAAAGgAAAAcAAAAAAAEABAAAAAAAAAAAAAoAAAAAAAoAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAAAQAHAAEAAAAHAAQAAAAEAAEAAAAAAAAAAgAAAAAAeQAAAAYAvgAAAAYAogAAAAcAAAAAAAEADAAAAAAArwAAAAEABwADAAAAAgABAAAAKAAAAAIAAAAAAHsAAAACAAAAAAB/AAAAAwADAAMABwACAAAAAgAAAAAAeQAAAAMABwACAAAABAABAAAAAAAAAAQAAAAAAAAAAAAHAAIAAAACAAAAAAB+AAAAAwAHAAIAAAAEAAEAAAAAAAAABAAAAAAAAAAAAAYANAAAAAMABAAAAAAAAAAAAAMAAgABAAAAGgAAAAQAAQAAAAAAAAABAAEABgA1AAAAAwAEAAAAAAAAAAAAAwACAAEAAAAaAAAABAABAAAAAAAAAAEAAQAGADYAAAACAAEAAAACAAAABAABAAAAAAAAAAMAAgABAAAAAgAAAAQAAQAAAAAAAAABAAEABgA3AAAAAwAEAAAAAAAAAAAAAwACAAEAAAAaAAAABAABAAAAAAAAAAEAAQAGADgAAAADAAQAAAAAAAAAAAADAAIAAQAAABoAAAAEAAEAAAAAAAAAAQABAAYAOQAAAAMABAAAAAAAAAAAAAMAAgABAAAAGgAAAAQAAQAAAAAAAAABAAEABgA9AAAAAwAEAAAAAAAAAAAAAwACAAEAAAAaAAAABAABAAAAAAAAAAEAAQAGAD4AAAADAAQAAAAAAAAAAAADAAIAAQAAABoAAAAEAAEAAAAAAAAAAQABAAYAPwAAAAIAAQAAAAQAAAAEAAEAAAAAAAAAAwACAAEAAAAEAAAABAABAAAAAAAAAAEAAQAGAEAAAAACAAEAAAACAAAABAABAAAAAAAAAAMAAgABAAAAAgAAAAQAAQAAAAAAAAABAAEABgBBAAAAAwAEAAAAAAAAAAAAAwADAAQAAAAAAAAAAAABAAEABgBCAAAAAwAEAAAAAAAAAAAAAwADAAQAAAAAAAAAAAABAAEABgBDAAAAAwAEAAAAAAAAAAAAAwACAAEAAAAaAAAABAABAAAAAAAAAAEAAQAGAEQAAAACAAEAAAAEAAAABAABAAAAAAAAAAMAAgABAAAABAAAAAQAAQAAAAAAAAABAAEABgCZAAAAAwAEAAAAAAAAAAAAAwACAAEAAAAaAAAABAABAAAAAAAAAAEAAQAGAFsAAAACAAEAAAACAAAABAABAAAAAAAAAAMAAgABAAAAAgAAAAQAAQAAAAAAAAABAAEABgCaAAAAAgABAAAAAgAAAAQAAQAAAAAAAAADAAIAAQAAAAIAAAAEAAEAAAAAAAAAAQABAAYAmwAAAAMABAAAAAAAAAAAAAMAAgABAAAAGgAAAAQAAQAAAAAAAAABAAEABgCcAAAAAwAEAAAAAAAAAAAAAwACAAEAAAAaAAAABAABAAAAAAAAAAEAAQAGAJ0AAAADAAQAAAAAAAAAAAADAAIAAQAAABoAAAAEAAEAAAAAAAAAAQABAAYAngAAAAMABAAAAAAAAAAAAAMAAgABAAAAGgAAAAQAAQAAAAAAAAABAAEABgCfAAAAAwAEAAAAAAAAAAAAAwACAAEAAAAaAAAABAABAAAAAAAAAAEAAQAGAKAAAAADAAQAAAAAAAAAAAADAAIAAQAAABoAAAAEAAEAAAAAAAAAAQABAAYAPgAAAAMABAAAAAAAAAAAAAMAAgABAAAAGgAAAAQAAQAAAAAAAAABAAEABgBbAAAAAgABAAAAAgAAAAQAAQAAAAAAAAADAAIAAQAAAAIAAAAEAAEAAAAAAAAAAQABAAYAXAAAAAIAAQAAAAIAAAAEAAEAAAAAAAAAAwACAAEAAAACAAAABAABAAAAAAAAAAEAAQAGAF0AAAADAAQAAAAAAAAAAAADAAIAAQAAABoAAAAEAAEAAAAAAAAAAQABAAYAXgAAAAMABAAAAAAAAAAAAAMAAgABAAAAGgAAAAQAAQAAAAAAAAABAAEABgCiAAAAAwAEAAAAAAAAAAAAAwACAAEAAAAaAAAABAABAAAAAAAAAAEAAQACAAAABwAAAAAACgAAAAAAAwAAAAcAAAAAAAoAAAAAAAYABAAAAAIAAAAAACYAAAAHAAkAAAACAAAAAADZAAAAAgAAAAAA2gAAAAIAAAAAANsAAAACAAAAAADcAAAAAgAAAAAA3QAAAAIAAAAAAN4AAAACAAAAAADfAAAAAgAAAAAA4AAAAAIAAAAAAOEAAAAKADkAAABLAAAAAgAAAAAAiwAAAGMAAAACAAAAAACMAAAASgAAAAIAAAAAAI0AAABkAAAAAgAAAAAAjgAAAFIAAAACAAAAAACPAAAAZQAAAAIAAAAAAJAAAABmAAAAAgAAAAAAkQAAAGcAAAACAAAAAACSAAAAaAAAAAIAAAAAAJMAAABpAAAAAgAAAAAAlAAAAGoAAAACAAAAAACVAAAAawAAAAIAAAAAAJYAAABsAAAAAgAAAAAAlwAAAG0AAAACAAAAAACYAAAAbgAAAAIAAAAAAJkAAABvAAAAAgAAAAAAmgAAAHAAAAACAAAAAACbAAAAcQAAAAIAAAAAAJwAAAByAAAAAgAAAAAAnQAAAHMAAAACAAAAAACeAAAAdAAAAAIAAAAAAJ8AAAB1AAAAAgAAAAAAoAAAAHYAAAACAAAAAAChAAAAdwAAAAIAAAAAAKIAAAB4AAAAAgAAAAAAowAAAHkAAAACAAAAAACkAAAAegAAAAIAAAAAAKUAAAB7AAAAAgAAAAAApgAAAHwAAAACAAAAAACnAAAAfQAAAAIAAAAAAKgAAAB+AAAAAgAAAAAAqQAAAH8AAAACAAAAAACqAAAAgAAAAAIAAAAAAKsAAACBAAAAAgAAAAAArAAAAIIAAAACAAAAAACtAAAAgwAAAAIAAAAAAK4AAACEAAAAAgAAAAAArwAAAIUAAAACAAAAAACwAAAAhgAAAAIAAAAAALEAAACHAAAAAgAAAAAAsgAAAIgAAAACAAAAAACzAAAAiQAAAAIAAAAAALQAAACKAAAAAgAAAAAAtQAAAIsAAAACAAAAAAC2AAAAjAAAAAIAAAAAALcAAACNAAAAAgAAAAAAuAAAAI4AAAACAAAAAAC5AAAAjwAAAAIAAAAAALoAAACQAAAAAgAAAAAAuwAAAJEAAAACAAAAAAC8AAAAkgAAAAIAAAAAAL0AAACTAAAAAgAAAAAAvgAAAJQAAAACAAAAAAC/AAAAlQAAAAIAAAAAAMAAAACWAAAAAgAAAAAAwQAAAJcAAAACAAAAAADCAAAAmAAAAAIAAAAAAMMAAAAHAAAAAAAHAAAAAAAHAAAAAAAHAAAAAAAEAAEAAAAAAAAAAAAAACAAAAABAAAAAQAAAAAAAACLAAAAAAAAACEAAAABAAAAAQAAAAAAAACMAAAAAAAAACIAAAABAAAAAQAAAAAAAACNAAAAAAAAACMAAAABAAAAAQAAAAAAAACOAAAAAAAAACQAAAABAAAAAQAAAAAAAACPAAAAAAAAACUAAAABAAAAAQAAAAAAAACQAAAAAAAAACYAAAABAAAAAQAAAAAAAACRAAAAAAAAACcAAAABAAAAAQAAAAAAAACSAAAAAAAAACgAAAABAAAAAQAAAAAAAACTAAAAAAAAACkAAAABAAAAAQAAAAAAAACUAAAAAAAAACoAAAABAAAAAQAAAAAAAACVAAAAAAAAACsAAAABAAAAAQAAAAAAAACWAAAAAAAAACwAAAABAAAAAQAAAAAAAACXAAAAAAAAAC0AAAABAAAAAQAAAAAAAACYAAAAAAAAAC4AAAABAAAAAQAAAAAAAACZAAAAAAAAAC8AAAABAAAAAQAAAAAAAACaAAAAAAAAADAAAAABAAAAAQAAAAAAAACbAAAAAAAAADEAAAABAAAAAQAAAAAAAACcAAAAAAAAADIAAAABAAAAAQAAAAAAAACdAAAAAAAAADMAAAABAAAAAQAAAAAAAACeAAAAAAAAADQAAAABAAAAAQAAAAAAAACfAAAAAAAAADUAAAABAAAAAQAAAAAAAACgAAAAAAAAADYAAAABAAAAAQAAAAAAAAChAAAAAAAAADcAAAABAAAAAQAAAAAAAACiAAAAAAAAADgAAAABAAAAAQAAAAAAAACjAAAAAAAAADkAAAABAAAAAQAAAAAAAACkAAAAAAAAADoAAAABAAAAAQAAAAAAAAClAAAAAAAAADsAAAABAAAAAQAAAAAAAACmAAAAAAAAADwAAAABAAAAAQAAAAAAAACnAAAAAAAAAD0AAAABAAAAAQAAAAAAAACoAAAAAAAAAD4AAAABAAAAAQAAAAAAAACpAAAAAAAAAD8AAAABAAAAAQAAAAAAAACqAAAAAAAAAEAAAAABAAAAAQAAAAAAAACrAAAAAAAAAEEAAAABAAAAAQAAAAAAAACsAAAAAAAAAEIAAAABAAAAAQAAAAAAAACtAAAAAAAAAEMAAAABAAAAAQAAAAAAAACuAAAAAAAAAEQAAAABAAAAAQAAAAAAAACvAAAAAAAAAEUAAAABAAAAAQAAAAAAAACwAAAAAAAAAEYAAAABAAAAAQAAAAAAAACxAAAAAAAAAEcAAAABAAAAAQAAAAAAAACyAAAAAAAAAEgAAAABAAAAAQAAAAAAAACzAAAAAAAAAEkAAAABAAAAAQAAAAAAAAC0AAAAAAAAAEoAAAABAAAAAQAAAAAAAAC1AAAAAAAAAEsAAAABAAAAAQAAAAAAAAC2AAAAAAAAAEwAAAABAAAAAQAAAAAAAAC3AAAAAAAAAE0AAAABAAAAAQAAAAAAAAC4AAAAAAAAAE4AAAABAAAAAQAAAAAAAAC5AAAAAAAAAE8AAAABAAAAAQAAAAAAAAC6AAAAAAAAAFAAAAABAAAAAQAAAAAAAAC7AAAAAAAAAFEAAAABAAAAAQAAAAAAAAC8AAAAAAAAAFIAAAABAAAAAQAAAAAAAAC9AAAAAAAAAFMAAAABAAAAAQAAAAAAAAC+AAAAAAAAAFQAAAABAAAAAQAAAAAAAAC/AAAAAAAAAFUAAAABAAAAAQAAAAAAAADAAAAAAAAAAFYAAAABAAAAAQAAAAAAAADBAAAAAAAAAFcAAAABAAAAAQAAAAAAAADCAAAAAAAAAFgAAAABAAAAAQAAAAAAAADDAAAAAQAAACcAAAAAAAAAAQAAAAAAAADGAAAAAQAAACcAAAAAAAAAAQAAAAAAAADIAAAAAAAAAFkAAAAAAAAAAAAAAAgAAAAAAAAA2QAAAAIAAAAAACYAAADaAAAAAgAAAAAAJgAAANsAAAAKAAAAAADcAAAABAAAAAAAAAAAAN0AAAAEAAEAAAAAAAAA3gAAAAQAAQAAAAAAAADfAAAABwAAAAAA4AAAAAIAAAAAAHMAAAA=", cur_sc, $P5004, $P5006, conflicts
    unless conflicts goto if893_end1853 
    die "Repossession conflicts occurred during deserialization"
  if893_end1853:
    .const 'Sub' $P5001 = "cuid_1_1431289885.65252" 
    nqp_get_sc_object $P5002, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 4
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5003 = "cuid_2_1431289885.65252" 
    nqp_get_sc_object $P5004, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 5
    set_sub_code_object $P5003, $P5004
    .const 'Sub' $P5005 = "cuid_3_1431289885.65252" 
    nqp_get_sc_object $P5006, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 6
    set_sub_code_object $P5005, $P5006
    .const 'Sub' $P5007 = "cuid_4_1431289885.65252" 
    nqp_get_sc_object $P5008, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 7
    set_sub_code_object $P5007, $P5008
    .const 'Sub' $P5009 = "cuid_5_1431289885.65252" 
    nqp_get_sc_object $P5010, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 8
    set_sub_code_object $P5009, $P5010
    .const 'Sub' $P5011 = "cuid_6_1431289885.65252" 
    nqp_get_sc_object $P5012, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 9
    set_sub_code_object $P5011, $P5012
    .const 'Sub' $P5013 = "cuid_7_1431289885.65252" 
    nqp_get_sc_object $P5014, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 10
    set_sub_code_object $P5013, $P5014
    .const 'Sub' $P5015 = "cuid_8_1431289885.65252" 
    nqp_get_sc_object $P5016, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 11
    set_sub_code_object $P5015, $P5016
    .const 'Sub' $P5017 = "cuid_9_1431289885.65252" 
    nqp_get_sc_object $P5018, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 12
    set_sub_code_object $P5017, $P5018
    .const 'Sub' $P5019 = "cuid_10_1431289885.65252" 
    nqp_get_sc_object $P5020, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 13
    set_sub_code_object $P5019, $P5020
    .const 'Sub' $P5021 = "cuid_11_1431289885.65252" 
    nqp_get_sc_object $P5022, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 14
    set_sub_code_object $P5021, $P5022
    .const 'Sub' $P5023 = "cuid_12_1431289885.65252" 
    nqp_get_sc_object $P5024, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 15
    set_sub_code_object $P5023, $P5024
    .const 'Sub' $P5025 = "cuid_13_1431289885.65252" 
    nqp_get_sc_object $P5026, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 16
    set_sub_code_object $P5025, $P5026
    .const 'Sub' $P5027 = "cuid_14_1431289885.65252" 
    nqp_get_sc_object $P5028, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 17
    set_sub_code_object $P5027, $P5028
    .const 'Sub' $P5029 = "cuid_15_1431289885.65252" 
    nqp_get_sc_object $P5030, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 18
    set_sub_code_object $P5029, $P5030
    .const 'Sub' $P5031 = "cuid_16_1431289885.65252" 
    nqp_get_sc_object $P5032, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 19
    set_sub_code_object $P5031, $P5032
    .const 'Sub' $P5033 = "cuid_17_1431289885.65252" 
    nqp_get_sc_object $P5034, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 20
    set_sub_code_object $P5033, $P5034
    .const 'Sub' $P5035 = "cuid_18_1431289885.65252" 
    nqp_get_sc_object $P5036, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 21
    set_sub_code_object $P5035, $P5036
    .const 'Sub' $P5037 = "cuid_19_1431289885.65252" 
    nqp_get_sc_object $P5038, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 22
    set_sub_code_object $P5037, $P5038
    .const 'Sub' $P5039 = "cuid_20_1431289885.65252" 
    nqp_get_sc_object $P5040, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 23
    set_sub_code_object $P5039, $P5040
    .const 'Sub' $P5041 = "cuid_21_1431289885.65252" 
    nqp_get_sc_object $P5042, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 24
    set_sub_code_object $P5041, $P5042
    .const 'Sub' $P5043 = "cuid_22_1431289885.65252" 
    nqp_get_sc_object $P5044, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 25
    set_sub_code_object $P5043, $P5044
    .const 'Sub' $P5045 = "cuid_23_1431289885.65252" 
    nqp_get_sc_object $P5046, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 26
    set_sub_code_object $P5045, $P5046
    .const 'Sub' $P5047 = "cuid_24_1431289885.65252" 
    nqp_get_sc_object $P5048, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 28
    set_sub_code_object $P5047, $P5048
    .const 'Sub' $P5049 = "cuid_25_1431289885.65252" 
    nqp_get_sc_object $P5050, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 29
    set_sub_code_object $P5049, $P5050
    .const 'Sub' $P5051 = "cuid_26_1431289885.65252" 
    nqp_get_sc_object $P5052, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 30
    set_sub_code_object $P5051, $P5052
    .const 'Sub' $P5053 = "cuid_27_1431289885.65252" 
    nqp_get_sc_object $P5054, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 31
    set_sub_code_object $P5053, $P5054
    .const 'Sub' $P5055 = "cuid_28_1431289885.65252" 
    nqp_get_sc_object $P5056, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 32
    set_sub_code_object $P5055, $P5056
    .const 'Sub' $P5057 = "cuid_29_1431289885.65252" 
    nqp_get_sc_object $P5058, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 33
    set_sub_code_object $P5057, $P5058
    .const 'Sub' $P5059 = "cuid_30_1431289885.65252" 
    nqp_get_sc_object $P5060, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 34
    set_sub_code_object $P5059, $P5060
    .const 'Sub' $P5061 = "cuid_31_1431289885.65252" 
    nqp_get_sc_object $P5062, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 36
    set_sub_code_object $P5061, $P5062
    .const 'Sub' $P5063 = "cuid_32_1431289885.65252" 
    nqp_get_sc_object $P5064, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 37
    set_sub_code_object $P5063, $P5064
    .const 'Sub' $P5065 = "cuid_33_1431289885.65252" 
    nqp_get_sc_object $P5066, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 39
    set_sub_code_object $P5065, $P5066
    .const 'Sub' $P5067 = "cuid_34_1431289885.65252" 
    nqp_get_sc_object $P5068, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 40
    set_sub_code_object $P5067, $P5068
    .const 'Sub' $P5069 = "cuid_35_1431289885.65252" 
    nqp_get_sc_object $P5070, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 41
    set_sub_code_object $P5069, $P5070
    .const 'Sub' $P5071 = "cuid_36_1431289885.65252" 
    nqp_get_sc_object $P5072, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 42
    set_sub_code_object $P5071, $P5072
    .const 'Sub' $P5073 = "cuid_37_1431289885.65252" 
    nqp_get_sc_object $P5074, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 43
    set_sub_code_object $P5073, $P5074
    .const 'Sub' $P5075 = "cuid_38_1431289885.65252" 
    nqp_get_sc_object $P5076, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 44
    set_sub_code_object $P5075, $P5076
    .const 'Sub' $P5077 = "cuid_39_1431289885.65252" 
    nqp_get_sc_object $P5078, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 45
    set_sub_code_object $P5077, $P5078
    .const 'Sub' $P5079 = "cuid_40_1431289885.65252" 
    nqp_get_sc_object $P5080, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 46
    set_sub_code_object $P5079, $P5080
    .const 'Sub' $P5081 = "cuid_41_1431289885.65252" 
    nqp_get_sc_object $P5082, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 47
    set_sub_code_object $P5081, $P5082
    .const 'Sub' $P5083 = "cuid_42_1431289885.65252" 
    nqp_get_sc_object $P5084, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 48
    set_sub_code_object $P5083, $P5084
    .const 'Sub' $P5085 = "cuid_43_1431289885.65252" 
    nqp_get_sc_object $P5086, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 49
    set_sub_code_object $P5085, $P5086
    .const 'Sub' $P5087 = "cuid_44_1431289885.65252" 
    nqp_get_sc_object $P5088, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 50
    set_sub_code_object $P5087, $P5088
    .const 'Sub' $P5089 = "cuid_45_1431289885.65252" 
    nqp_get_sc_object $P5090, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 51
    set_sub_code_object $P5089, $P5090
    .const 'Sub' $P5091 = "cuid_46_1431289885.65252" 
    nqp_get_sc_object $P5092, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 52
    set_sub_code_object $P5091, $P5092
    .const 'Sub' $P5093 = "cuid_47_1431289885.65252" 
    nqp_get_sc_object $P5094, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 53
    set_sub_code_object $P5093, $P5094
    .const 'Sub' $P5095 = "cuid_48_1431289885.65252" 
    nqp_get_sc_object $P5096, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 54
    set_sub_code_object $P5095, $P5096
    .const 'Sub' $P5097 = "cuid_49_1431289885.65252" 
    nqp_get_sc_object $P5098, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 55
    set_sub_code_object $P5097, $P5098
    .const 'Sub' $P5099 = "cuid_50_1431289885.65252" 
    nqp_get_sc_object $P5100, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 56
    set_sub_code_object $P5099, $P5100
    .const 'Sub' $P5101 = "cuid_51_1431289885.65252" 
    nqp_get_sc_object $P5102, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 57
    set_sub_code_object $P5101, $P5102
    .const 'Sub' $P5103 = "cuid_52_1431289885.65252" 
    nqp_get_sc_object $P5104, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 58
    set_sub_code_object $P5103, $P5104
    .const 'Sub' $P5105 = "cuid_53_1431289885.65252" 
    nqp_get_sc_object $P5106, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 59
    set_sub_code_object $P5105, $P5106
    .const 'Sub' $P5107 = "cuid_54_1431289885.65252" 
    nqp_get_sc_object $P5108, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 60
    set_sub_code_object $P5107, $P5108
    .const 'Sub' $P5109 = "cuid_55_1431289885.65252" 
    nqp_get_sc_object $P5110, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 61
    set_sub_code_object $P5109, $P5110
    .const 'Sub' $P5111 = "cuid_56_1431289885.65252" 
    nqp_get_sc_object $P5112, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 62
    set_sub_code_object $P5111, $P5112
    .const 'Sub' $P5113 = "cuid_57_1431289885.65252" 
    nqp_get_sc_object $P5114, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 63
    set_sub_code_object $P5113, $P5114
    .const 'Sub' $P5115 = "cuid_58_1431289885.65252" 
    nqp_get_sc_object $P5116, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 64
    set_sub_code_object $P5115, $P5116
    .const 'Sub' $P5117 = "cuid_59_1431289885.65252" 
    nqp_get_sc_object $P5118, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 65
    set_sub_code_object $P5117, $P5118
    .const 'Sub' $P5119 = "cuid_60_1431289885.65252" 
    nqp_get_sc_object $P5120, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 66
    set_sub_code_object $P5119, $P5120
    .const 'Sub' $P5121 = "cuid_61_1431289885.65252" 
    nqp_get_sc_object $P5122, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 67
    set_sub_code_object $P5121, $P5122
    .const 'Sub' $P5123 = "cuid_62_1431289885.65252" 
    nqp_get_sc_object $P5124, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 68
    set_sub_code_object $P5123, $P5124
    .const 'Sub' $P5125 = "cuid_63_1431289885.65252" 
    nqp_get_sc_object $P5126, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 69
    set_sub_code_object $P5125, $P5126
    .const 'Sub' $P5127 = "cuid_64_1431289885.65252" 
    nqp_get_sc_object $P5128, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 70
    set_sub_code_object $P5127, $P5128
    .const 'Sub' $P5129 = "cuid_65_1431289885.65252" 
    nqp_get_sc_object $P5130, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 71
    set_sub_code_object $P5129, $P5130
    .const 'Sub' $P5131 = "cuid_66_1431289885.65252" 
    nqp_get_sc_object $P5132, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 72
    set_sub_code_object $P5131, $P5132
    .const 'Sub' $P5133 = "cuid_67_1431289885.65252" 
    nqp_get_sc_object $P5134, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 73
    set_sub_code_object $P5133, $P5134
    .const 'Sub' $P5135 = "cuid_68_1431289885.65252" 
    nqp_get_sc_object $P5136, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 74
    set_sub_code_object $P5135, $P5136
    .const 'Sub' $P5137 = "cuid_69_1431289885.65252" 
    nqp_get_sc_object $P5138, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 75
    set_sub_code_object $P5137, $P5138
    .const 'Sub' $P5139 = "cuid_70_1431289885.65252" 
    nqp_get_sc_object $P5140, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 76
    set_sub_code_object $P5139, $P5140
    .const 'Sub' $P5141 = "cuid_71_1431289885.65252" 
    nqp_get_sc_object $P5142, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 77
    set_sub_code_object $P5141, $P5142
    .const 'Sub' $P5143 = "cuid_72_1431289885.65252" 
    nqp_get_sc_object $P5144, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 78
    set_sub_code_object $P5143, $P5144
    .const 'Sub' $P5145 = "cuid_73_1431289885.65252" 
    nqp_get_sc_object $P5146, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 79
    set_sub_code_object $P5145, $P5146
    .const 'Sub' $P5147 = "cuid_74_1431289885.65252" 
    nqp_get_sc_object $P5148, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 80
    set_sub_code_object $P5147, $P5148
    .const 'Sub' $P5149 = "cuid_75_1431289885.65252" 
    nqp_get_sc_object $P5150, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 81
    set_sub_code_object $P5149, $P5150
    .const 'Sub' $P5151 = "cuid_76_1431289885.65252" 
    nqp_get_sc_object $P5152, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 82
    set_sub_code_object $P5151, $P5152
    .const 'Sub' $P5153 = "cuid_77_1431289885.65252" 
    nqp_get_sc_object $P5154, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 83
    set_sub_code_object $P5153, $P5154
    .const 'Sub' $P5155 = "cuid_78_1431289885.65252" 
    nqp_get_sc_object $P5156, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 84
    set_sub_code_object $P5155, $P5156
    .const 'Sub' $P5157 = "cuid_79_1431289885.65252" 
    nqp_get_sc_object $P5158, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 85
    set_sub_code_object $P5157, $P5158
    .const 'Sub' $P5159 = "cuid_80_1431289885.65252" 
    nqp_get_sc_object $P5160, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 86
    set_sub_code_object $P5159, $P5160
    .const 'Sub' $P5161 = "cuid_81_1431289885.65252" 
    nqp_get_sc_object $P5162, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 87
    set_sub_code_object $P5161, $P5162
    .const 'Sub' $P5163 = "cuid_82_1431289885.65252" 
    nqp_get_sc_object $P5164, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 88
    set_sub_code_object $P5163, $P5164
    .const 'Sub' $P5165 = "cuid_83_1431289885.65252" 
    nqp_get_sc_object $P5166, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 89
    set_sub_code_object $P5165, $P5166
    .const 'Sub' $P5167 = "cuid_84_1431289885.65252" 
    nqp_get_sc_object $P5168, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 90
    set_sub_code_object $P5167, $P5168
    .const 'Sub' $P5169 = "cuid_85_1431289885.65252" 
    nqp_get_sc_object $P5170, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 91
    set_sub_code_object $P5169, $P5170
    .const 'Sub' $P5171 = "cuid_86_1431289885.65252" 
    nqp_get_sc_object $P5172, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 92
    set_sub_code_object $P5171, $P5172
    .const 'Sub' $P5173 = "cuid_87_1431289885.65252" 
    nqp_get_sc_object $P5174, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 93
    set_sub_code_object $P5173, $P5174
    .const 'Sub' $P5175 = "cuid_88_1431289885.65252" 
    nqp_get_sc_object $P5176, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 94
    set_sub_code_object $P5175, $P5176
    .const 'Sub' $P5177 = "cuid_89_1431289885.65252" 
    nqp_get_sc_object $P5178, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 95
    set_sub_code_object $P5177, $P5178
    .const 'Sub' $P5179 = "cuid_90_1431289885.65252" 
    nqp_get_sc_object $P5180, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 96
    set_sub_code_object $P5179, $P5180
    .const 'Sub' $P5181 = "cuid_91_1431289885.65252" 
    nqp_get_sc_object $P5182, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 98
    set_sub_code_object $P5181, $P5182
    .const 'Sub' $P5183 = "cuid_92_1431289885.65252" 
    nqp_get_sc_object $P5184, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 99
    set_sub_code_object $P5183, $P5184
    .const 'Sub' $P5185 = "cuid_93_1431289885.65252" 
    nqp_get_sc_object $P5186, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 100
    set_sub_code_object $P5185, $P5186
    .const 'Sub' $P5187 = "cuid_94_1431289885.65252" 
    nqp_get_sc_object $P5188, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 101
    set_sub_code_object $P5187, $P5188
    .const 'Sub' $P5189 = "cuid_95_1431289885.65252" 
    nqp_get_sc_object $P5190, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 102
    set_sub_code_object $P5189, $P5190
    .const 'Sub' $P5191 = "cuid_96_1431289885.65252" 
    nqp_get_sc_object $P5192, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 103
    set_sub_code_object $P5191, $P5192
    .const 'Sub' $P5193 = "cuid_97_1431289885.65252" 
    nqp_get_sc_object $P5194, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 104
    set_sub_code_object $P5193, $P5194
    .const 'Sub' $P5195 = "cuid_98_1431289885.65252" 
    nqp_get_sc_object $P5196, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 105
    set_sub_code_object $P5195, $P5196
    .const 'Sub' $P5197 = "cuid_99_1431289885.65252" 
    nqp_get_sc_object $P5198, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 106
    set_sub_code_object $P5197, $P5198
    .const 'Sub' $P5199 = "cuid_100_1431289885.65252" 
    nqp_get_sc_object $P5200, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 107
    set_sub_code_object $P5199, $P5200
    .const 'Sub' $P5201 = "cuid_101_1431289885.65252" 
    nqp_get_sc_object $P5202, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 108
    set_sub_code_object $P5201, $P5202
    .const 'Sub' $P5203 = "cuid_102_1431289885.65252" 
    nqp_get_sc_object $P5204, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 109
    set_sub_code_object $P5203, $P5204
    .const 'Sub' $P5205 = "cuid_103_1431289885.65252" 
    nqp_get_sc_object $P5206, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 110
    set_sub_code_object $P5205, $P5206
    .const 'Sub' $P5207 = "cuid_104_1431289885.65252" 
    nqp_get_sc_object $P5208, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 111
    set_sub_code_object $P5207, $P5208
    .const 'Sub' $P5209 = "cuid_105_1431289885.65252" 
    nqp_get_sc_object $P5210, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 112
    set_sub_code_object $P5209, $P5210
    .const 'Sub' $P5211 = "cuid_106_1431289885.65252" 
    nqp_get_sc_object $P5212, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 113
    set_sub_code_object $P5211, $P5212
    .const 'Sub' $P5213 = "cuid_107_1431289885.65252" 
    nqp_get_sc_object $P5214, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 114
    set_sub_code_object $P5213, $P5214
    .const 'Sub' $P5215 = "cuid_108_1431289885.65252" 
    nqp_get_sc_object $P5216, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 116
    set_sub_code_object $P5215, $P5216
    .const 'Sub' $P5217 = "cuid_109_1431289885.65252" 
    nqp_get_sc_object $P5218, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 117
    set_sub_code_object $P5217, $P5218
    .const 'Sub' $P5219 = "cuid_110_1431289885.65252" 
    nqp_get_sc_object $P5220, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 118
    set_sub_code_object $P5219, $P5220
    .const 'Sub' $P5221 = "cuid_111_1431289885.65252" 
    nqp_get_sc_object $P5222, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 119
    set_sub_code_object $P5221, $P5222
    .const 'Sub' $P5223 = "cuid_112_1431289885.65252" 
    nqp_get_sc_object $P5224, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 120
    set_sub_code_object $P5223, $P5224
    .const 'Sub' $P5225 = "cuid_121_1431289885.65252" 
    nqp_get_sc_object $P5226, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 122
    set_sub_code_object $P5225, $P5226
    .const 'Sub' $P5227 = "cuid_122_1431289885.65252" 
    nqp_get_sc_object $P5228, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 123
    set_sub_code_object $P5227, $P5228
    .const 'Sub' $P5229 = "cuid_123_1431289885.65252" 
    nqp_get_sc_object $P5230, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 124
    set_sub_code_object $P5229, $P5230
    .const 'Sub' $P5231 = "cuid_124_1431289885.65252" 
    nqp_get_sc_object $P5232, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 125
    set_sub_code_object $P5231, $P5232
    .const 'Sub' $P5233 = "cuid_125_1431289885.65252" 
    nqp_get_sc_object $P5234, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 127
    set_sub_code_object $P5233, $P5234
    .const "LexInfo" $P5235 = "cuid_126_1431289885.65252"
    new $P5236, 'ResizableStringArray'
    assign $P5236, 9
    assign $P5236, 0
    push $P5236, "GLOBALish"
    push $P5236, "$?PACKAGE"
    push $P5236, "EXPORT"
    push $P5236, "ParseShared"
    push $P5236, "NQPCursorRole"
    push $P5236, "NQPMatch"
    push $P5236, "NQPCursor"
    push $P5236, "NQPRegexMethod"
    push $P5236, "NQPRegex"
    new $P5237, 'QRPA'
    assign $P5237, 9
    assign $P5237, 0
    nqp_get_sc_object $P5238, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 0
    push $P5237, $P5238
    nqp_get_sc_object $P5239, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 0
    push $P5237, $P5239
    nqp_get_sc_object $P5240, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 1
    push $P5237, $P5240
    nqp_get_sc_object $P5241, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 35
    push $P5237, $P5241
    nqp_get_sc_object $P5242, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 38
    push $P5237, $P5242
    nqp_get_sc_object $P5243, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 97
    push $P5237, $P5243
    nqp_get_sc_object $P5244, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 115
    push $P5237, $P5244
    nqp_get_sc_object $P5245, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 121
    push $P5237, $P5245
    nqp_get_sc_object $P5246, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 126
    push $P5237, $P5246
    new $P5247, 'ResizableIntegerArray'
    assign $P5247, 9
    $P5235."setup_static_lexpad"($P5236, $P5237, $P5247)
    .const "LexInfo" $P5235 = "cuid_127_1431289885.65252"
    new $P5236, 'ResizableStringArray'
    assign $P5236, 3
    assign $P5236, 0
    push $P5236, "$?PACKAGE"
    push $P5236, "$?CLASS"
    push $P5236, "NFAType"
    new $P5237, 'QRPA'
    assign $P5237, 3
    assign $P5237, 0
    nqp_get_sc_object $P5238, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 3
    push $P5237, $P5238
    nqp_get_sc_object $P5239, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 3
    push $P5237, $P5239
    nqp_get_sc_object $P5240, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 27
    push $P5237, $P5240
    new $P5241, 'ResizableIntegerArray'
    assign $P5241, 3
    $P5235."setup_static_lexpad"($P5236, $P5237, $P5241)
    .const "LexInfo" $P5235 = "cuid_132_1431289885.65252"
    new $P5236, 'ResizableStringArray'
    assign $P5236, 2
    assign $P5236, 0
    push $P5236, "$?PACKAGE"
    push $P5236, "$?CLASS"
    new $P5237, 'QRPA'
    assign $P5237, 2
    assign $P5237, 0
    nqp_get_sc_object $P5238, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 27
    push $P5237, $P5238
    nqp_get_sc_object $P5239, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 27
    push $P5237, $P5239
    new $P5240, 'ResizableIntegerArray'
    assign $P5240, 2
    $P5235."setup_static_lexpad"($P5236, $P5237, $P5240)
    .const "LexInfo" $P5235 = "cuid_135_1431289885.65252"
    new $P5236, 'ResizableStringArray'
    assign $P5236, 2
    assign $P5236, 0
    push $P5236, "$?PACKAGE"
    push $P5236, "$?CLASS"
    new $P5237, 'QRPA'
    assign $P5237, 2
    assign $P5237, 0
    nqp_get_sc_object $P5238, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 35
    push $P5237, $P5238
    nqp_get_sc_object $P5239, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 35
    push $P5237, $P5239
    new $P5240, 'ResizableIntegerArray'
    assign $P5240, 2
    $P5235."setup_static_lexpad"($P5236, $P5237, $P5240)
    .const "LexInfo" $P5235 = "cuid_90_1431289885.65252"
    new $P5236, 'ResizableStringArray'
    assign $P5236, 2
    assign $P5236, 0
    push $P5236, "$?PACKAGE"
    push $P5236, "$?ROLE"
    new $P5237, 'QRPA'
    assign $P5237, 2
    assign $P5237, 0
    nqp_get_sc_object $P5238, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 38
    push $P5237, $P5238
    nqp_get_sc_object $P5239, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 38
    push $P5237, $P5239
    new $P5240, 'ResizableIntegerArray'
    assign $P5240, 2
    $P5235."setup_static_lexpad"($P5236, $P5237, $P5240)
    .const "LexInfo" $P5235 = "cuid_136_1431289885.65252"
    new $P5236, 'ResizableStringArray'
    assign $P5236, 2
    assign $P5236, 0
    push $P5236, "$?PACKAGE"
    push $P5236, "$?CLASS"
    new $P5237, 'QRPA'
    assign $P5237, 2
    assign $P5237, 0
    nqp_get_sc_object $P5238, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 97
    push $P5237, $P5238
    nqp_get_sc_object $P5239, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 97
    push $P5237, $P5239
    new $P5240, 'ResizableIntegerArray'
    assign $P5240, 2
    $P5235."setup_static_lexpad"($P5236, $P5237, $P5240)
    .const "LexInfo" $P5235 = "cuid_141_1431289885.65252"
    new $P5236, 'ResizableStringArray'
    assign $P5236, 2
    assign $P5236, 0
    push $P5236, "$?PACKAGE"
    push $P5236, "$?CLASS"
    new $P5237, 'QRPA'
    assign $P5237, 2
    assign $P5237, 0
    nqp_get_sc_object $P5238, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 115
    push $P5237, $P5238
    nqp_get_sc_object $P5239, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 115
    push $P5237, $P5239
    new $P5240, 'ResizableIntegerArray'
    assign $P5240, 2
    $P5235."setup_static_lexpad"($P5236, $P5237, $P5240)
    .const "LexInfo" $P5235 = "cuid_142_1431289885.65252"
    new $P5236, 'ResizableStringArray'
    assign $P5236, 2
    assign $P5236, 0
    push $P5236, "$?PACKAGE"
    push $P5236, "$?CLASS"
    new $P5237, 'QRPA'
    assign $P5237, 2
    assign $P5237, 0
    nqp_get_sc_object $P5238, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 121
    push $P5237, $P5238
    nqp_get_sc_object $P5239, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 121
    push $P5237, $P5239
    new $P5240, 'ResizableIntegerArray'
    assign $P5240, 2
    $P5235."setup_static_lexpad"($P5236, $P5237, $P5240)
    .const "LexInfo" $P5235 = "cuid_143_1431289885.65252"
    new $P5236, 'ResizableStringArray'
    assign $P5236, 2
    assign $P5236, 0
    push $P5236, "$?PACKAGE"
    push $P5236, "$?CLASS"
    new $P5237, 'QRPA'
    assign $P5237, 2
    assign $P5237, 0
    nqp_get_sc_object $P5238, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 126
    push $P5237, $P5238
    nqp_get_sc_object $P5239, "04F6DF32596F46780CCB691981DC37EC9DB1CC6C-1431289885.6999", 126
    push $P5237, $P5239
    new $P5240, 'ResizableIntegerArray'
    assign $P5240, 2
    $P5241 = $P5235."setup_static_lexpad"($P5236, $P5237, $P5240)
    .return ($P5241) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_144_1431289885.65252") :anon :lex :outer("cuid_145_1431289885.65252")
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
    new $P5001, 'ResizablePMCArray'
    assign $P5001, 117
    assign $P5001, 0
    .const 'Sub' $P5002 = "cuid_1_1431289885.65252" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_2_1431289885.65252" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_3_1431289885.65252" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_4_1431289885.65252" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_5_1431289885.65252" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_6_1431289885.65252" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_7_1431289885.65252" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_8_1431289885.65252" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_9_1431289885.65252" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_10_1431289885.65252" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_11_1431289885.65252" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_12_1431289885.65252" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_13_1431289885.65252" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_14_1431289885.65252" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_15_1431289885.65252" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_16_1431289885.65252" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_17_1431289885.65252" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_18_1431289885.65252" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_19_1431289885.65252" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_20_1431289885.65252" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_21_1431289885.65252" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_22_1431289885.65252" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_23_1431289885.65252" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_24_1431289885.65252" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_25_1431289885.65252" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_26_1431289885.65252" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_27_1431289885.65252" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_28_1431289885.65252" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_29_1431289885.65252" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_30_1431289885.65252" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_31_1431289885.65252" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_32_1431289885.65252" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_33_1431289885.65252" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_34_1431289885.65252" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_35_1431289885.65252" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_36_1431289885.65252" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_37_1431289885.65252" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_38_1431289885.65252" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_39_1431289885.65252" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_40_1431289885.65252" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_41_1431289885.65252" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_42_1431289885.65252" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_43_1431289885.65252" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_44_1431289885.65252" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_45_1431289885.65252" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_46_1431289885.65252" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_47_1431289885.65252" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_48_1431289885.65252" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_49_1431289885.65252" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_50_1431289885.65252" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_51_1431289885.65252" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_52_1431289885.65252" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_53_1431289885.65252" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_54_1431289885.65252" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_55_1431289885.65252" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_56_1431289885.65252" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_57_1431289885.65252" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_58_1431289885.65252" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_59_1431289885.65252" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_60_1431289885.65252" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_61_1431289885.65252" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_62_1431289885.65252" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_63_1431289885.65252" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_64_1431289885.65252" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_65_1431289885.65252" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_66_1431289885.65252" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_67_1431289885.65252" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_68_1431289885.65252" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_69_1431289885.65252" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_70_1431289885.65252" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_71_1431289885.65252" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_72_1431289885.65252" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_73_1431289885.65252" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_74_1431289885.65252" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_75_1431289885.65252" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_76_1431289885.65252" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_77_1431289885.65252" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_78_1431289885.65252" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_79_1431289885.65252" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_80_1431289885.65252" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_81_1431289885.65252" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_82_1431289885.65252" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_83_1431289885.65252" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_84_1431289885.65252" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_85_1431289885.65252" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_86_1431289885.65252" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_87_1431289885.65252" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_88_1431289885.65252" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_89_1431289885.65252" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_90_1431289885.65252" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_91_1431289885.65252" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_92_1431289885.65252" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_93_1431289885.65252" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_94_1431289885.65252" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_95_1431289885.65252" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_96_1431289885.65252" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_97_1431289885.65252" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_98_1431289885.65252" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_99_1431289885.65252" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_100_1431289885.65252" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_101_1431289885.65252" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_102_1431289885.65252" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_103_1431289885.65252" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_104_1431289885.65252" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_105_1431289885.65252" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_106_1431289885.65252" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_107_1431289885.65252" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_108_1431289885.65252" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_109_1431289885.65252" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_110_1431289885.65252" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_111_1431289885.65252" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_112_1431289885.65252" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_121_1431289885.65252" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_122_1431289885.65252" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_123_1431289885.65252" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_124_1431289885.65252" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_125_1431289885.65252" 
    push $P5001, $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_146_1431289885.65252") :load
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
    .const 'Sub' $P5001 = "cuid_126_1431289885.65252" 
    $P5002 = $P5001()
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_147_1431289885.65252") :main
.annotate 'file', "gen/parrot/stage2/QRegex.nqp"
    .param pmc ARGS :slurpy 
    .const 'Sub' $P5001 = "cuid_126_1431289885.65252" 
    $P5002 = $P5001(ARGS :flat)
    .return ($P5002) 
.end