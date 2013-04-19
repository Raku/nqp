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
.sub "" :subid("cuid_145_1366375320.00413") :anon :lex
.annotate 'file', "src/stage2/QRegex.nqp"
    .param pmc _lex_param_0 :slurpy 
    .const 'Sub' $P5026 = 'cuid_121_1366375320.00413' 
    capture_lex $P5026 
    .const 'Sub' $P5026 = 'cuid_146_1366375320.00413' 
    capture_lex $P5026 
    .const 'Sub' $P5026 = 'cuid_79_1366375320.00413' 
    capture_lex $P5026 
    .const 'Sub' $P5026 = 'cuid_147_1366375320.00413' 
    capture_lex $P5026 
    .const 'Sub' $P5026 = 'cuid_159_1366375320.00413' 
    capture_lex $P5026 
    .const 'Sub' $P5026 = 'cuid_169_1366375320.00413' 
    capture_lex $P5026 
    .const 'Sub' $P5026 = 'cuid_170_1366375320.00413' 
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
    .local pmc ctxsave 
.annotate 'line', 446
.annotate 'line', 447
    nqp_get_sc_object $P5001, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 9
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 3
    $P5001."SET_NFA_TYPE"($P5002)
    find_dynamic_lex $P5003, "$*CTXSAVE"
    set ctxsave, $P5003
    isnull $I5001, ctxsave
    if $I5001 goto unless135_end292 
    can $I5002, ctxsave, "ctxsave"
    box $P5006, $I5002
    set $P5005, $P5006
    unless $I5002 goto if136_end294 
    $P5004 = ctxsave."ctxsave"()
    set $P5005, $P5004
  if136_end294:
  unless135_end292:
.annotate 'line', 1
    .const 'Sub' $P5007 = 'cuid_121_1366375320.00413' 
    capture_lex $P5007
    $P5008 = $P5007()
    .const 'Sub' $P5009 = 'cuid_146_1366375320.00413' 
    capture_lex $P5009
    $P5010 = $P5009()
    .const 'Sub' $P5011 = 'cuid_79_1366375320.00413' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_147_1366375320.00413' 
    capture_lex $P5012
    $P5013 = $P5012()
    .const 'Sub' $P5014 = 'cuid_159_1366375320.00413' 
    capture_lex $P5014
    $P5015 = $P5014()
    .const 'Sub' $P5016 = 'cuid_169_1366375320.00413' 
    capture_lex $P5016
    $P5017 = $P5016()
    nqp_get_sc_object $P5018, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 106
    nqp_get_sc_object $P5019, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 106
    null $P5020
    set_invocation_spec $P5018, $P5019, "$!code", $P5020
    .const 'Sub' $P5021 = 'cuid_170_1366375320.00413' 
    capture_lex $P5021
    $P5022 = $P5021()
    nqp_get_sc_object $P5023, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 111
    nqp_get_sc_object $P5024, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 106
    null $P5025
    set_invocation_spec $P5023, $P5024, "$!code", $P5025
    .return () 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_121_1366375320.00413") :anon :lex :outer("cuid_145_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 7
    .const 'Sub' $P5061 = 'cuid_1_1366375320.00413' 
    capture_lex $P5061 
    .const 'Sub' $P5061 = 'cuid_2_1366375320.00413' 
    capture_lex $P5061 
    .const 'Sub' $P5061 = 'cuid_3_1366375320.00413' 
    capture_lex $P5061 
    .const 'Sub' $P5061 = 'cuid_4_1366375320.00413' 
    capture_lex $P5061 
    .const 'Sub' $P5061 = 'cuid_5_1366375320.00413' 
    capture_lex $P5061 
    .const 'Sub' $P5061 = 'cuid_6_1366375320.00413' 
    capture_lex $P5061 
    .const 'Sub' $P5061 = 'cuid_7_1366375320.00413' 
    capture_lex $P5061 
    .const 'Sub' $P5061 = 'cuid_8_1366375320.00413' 
    capture_lex $P5061 
    .const 'Sub' $P5061 = 'cuid_9_1366375320.00413' 
    capture_lex $P5061 
    .const 'Sub' $P5061 = 'cuid_10_1366375320.00413' 
    capture_lex $P5061 
    .const 'Sub' $P5061 = 'cuid_11_1366375320.00413' 
    capture_lex $P5061 
    .const 'Sub' $P5061 = 'cuid_12_1366375320.00413' 
    capture_lex $P5061 
    .const 'Sub' $P5061 = 'cuid_13_1366375320.00413' 
    capture_lex $P5061 
    .const 'Sub' $P5061 = 'cuid_14_1366375320.00413' 
    capture_lex $P5061 
    .const 'Sub' $P5061 = 'cuid_15_1366375320.00413' 
    capture_lex $P5061 
    .const 'Sub' $P5061 = 'cuid_16_1366375320.00413' 
    capture_lex $P5061 
    .const 'Sub' $P5061 = 'cuid_17_1366375320.00413' 
    capture_lex $P5061 
    .const 'Sub' $P5061 = 'cuid_18_1366375320.00413' 
    capture_lex $P5061 
    .const 'Sub' $P5061 = 'cuid_19_1366375320.00413' 
    capture_lex $P5061 
    .const 'Sub' $P5061 = 'cuid_20_1366375320.00413' 
    capture_lex $P5061 
    .const 'Sub' $P5061 = 'cuid_21_1366375320.00413' 
    capture_lex $P5061 
    .const 'Sub' $P5061 = 'cuid_22_1366375320.00413' 
    capture_lex $P5061 
    .const 'Sub' $P5061 = 'cuid_140_1366375320.00413' 
    capture_lex $P5061 
    .const 'Sub' $P5061 = 'cuid_23_1366375320.00413' 
    capture_lex $P5061 
    .const 'Sub' $P5061 = 'cuid_24_1366375320.00413' 
    capture_lex $P5061 
    .const 'Sub' $P5061 = 'cuid_25_1366375320.00413' 
    capture_lex $P5061 
    .const 'Sub' $P5061 = 'cuid_26_1366375320.00413' 
    capture_lex $P5061 
    .const 'Sub' $P5061 = 'cuid_27_1366375320.00413' 
    capture_lex $P5061 
    .lex "$EDGE_FATE", $P101 
    .lex "$EDGE_EPSILON", $P102 
    .lex "$EDGE_CODEPOINT", $P103 
    .lex "$EDGE_CODEPOINT_NEG", $P104 
    .lex "$EDGE_CHARCLASS", $P105 
    .lex "$EDGE_CHARCLASS_NEG", $P106 
    .lex "$EDGE_CHARLIST", $P107 
    .lex "$EDGE_CHARLIST_NEG", $P108 
    .lex "$EDGE_SUBRULE", $P109 
    .lex "$EDGE_CODEPOINT_I", $P110 
    .lex "$EDGE_CODEPOINT_I_NEG", $P111 
    .lex "$EDGE_GENERIC_VAR", $P112 
    .lex "%cclass_code", $P113 
    .lex "NFAType", $P114 
    .lex "$?PACKAGE", $P115 
    .lex "$?CLASS", $P116 
    nqp_get_sc_object $P5001, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P102, $P5002
    nqp_get_sc_object $P5003, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P103, $P5003
    nqp_get_sc_object $P5004, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P104, $P5004
    nqp_get_sc_object $P5005, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P105, $P5005
    nqp_get_sc_object $P5006, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P106, $P5006
    nqp_get_sc_object $P5007, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P107, $P5007
    nqp_get_sc_object $P5008, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P108, $P5008
    nqp_get_sc_object $P5009, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P109, $P5009
    nqp_get_sc_object $P5010, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P110, $P5010
    nqp_get_sc_object $P5011, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P111, $P5011
    nqp_get_sc_object $P5012, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P112, $P5012
    new $P5013, 'Hash'
    set $P113, $P5013
.annotate 'line', 96
    box $P5014, 65535
    set $P113["."], $P5014
    box $P5015, 8
    set $P113["d"], $P5015
    box $P5016, 32
    set $P113["s"], $P5016
    box $P5017, 8192
    set $P113["w"], $P5017
    box $P5018, 4096
    set $P113["n"], $P5018
    box $P5019, 4096
    set $P113["nl"], $P5019
.annotate 'line', 7
    box $P5020, 0
    set $P101, $P5020
    box $P5021, 1
    set $P102, $P5021
    box $P5022, 2
    set $P103, $P5022
    box $P5023, 3
    set $P104, $P5023
    box $P5024, 4
    set $P105, $P5024
    box $P5025, 5
    set $P106, $P5025
    box $P5026, 6
    set $P107, $P5026
    box $P5027, 7
    set $P108, $P5027
    box $P5028, 8
    set $P109, $P5028
    box $P5029, 9
    set $P110, $P5029
    box $P5030, 10
    set $P111, $P5030
    box $P5031, 11
    set $P112, $P5031
    .const 'Sub' $P5032 = 'cuid_1_1366375320.00413' 
    capture_lex $P5032
    .const 'Sub' $P5033 = 'cuid_2_1366375320.00413' 
    capture_lex $P5033
    .const 'Sub' $P5034 = 'cuid_3_1366375320.00413' 
    capture_lex $P5034
    .const 'Sub' $P5035 = 'cuid_4_1366375320.00413' 
    capture_lex $P5035
    .const 'Sub' $P5036 = 'cuid_5_1366375320.00413' 
    capture_lex $P5036
    .const 'Sub' $P5037 = 'cuid_6_1366375320.00413' 
    capture_lex $P5037
    .const 'Sub' $P5038 = 'cuid_7_1366375320.00413' 
    capture_lex $P5038
    .const 'Sub' $P5039 = 'cuid_8_1366375320.00413' 
    capture_lex $P5039
    .const 'Sub' $P5040 = 'cuid_9_1366375320.00413' 
    capture_lex $P5040
    .const 'Sub' $P5041 = 'cuid_10_1366375320.00413' 
    capture_lex $P5041
    .const 'Sub' $P5042 = 'cuid_11_1366375320.00413' 
    capture_lex $P5042
    .const 'Sub' $P5043 = 'cuid_12_1366375320.00413' 
    capture_lex $P5043
    .const 'Sub' $P5044 = 'cuid_13_1366375320.00413' 
    capture_lex $P5044
    .const 'Sub' $P5045 = 'cuid_14_1366375320.00413' 
    capture_lex $P5045
    .const 'Sub' $P5046 = 'cuid_15_1366375320.00413' 
    capture_lex $P5046
    .const 'Sub' $P5047 = 'cuid_16_1366375320.00413' 
    capture_lex $P5047
    .const 'Sub' $P5048 = 'cuid_17_1366375320.00413' 
    capture_lex $P5048
    .const 'Sub' $P5049 = 'cuid_18_1366375320.00413' 
    capture_lex $P5049
    .const 'Sub' $P5050 = 'cuid_19_1366375320.00413' 
    capture_lex $P5050
    .const 'Sub' $P5051 = 'cuid_20_1366375320.00413' 
    capture_lex $P5051
    .const 'Sub' $P5052 = 'cuid_21_1366375320.00413' 
    capture_lex $P5052
    .const 'Sub' $P5053 = 'cuid_22_1366375320.00413' 
    capture_lex $P5053
    .const 'Sub' $P5054 = 'cuid_140_1366375320.00413' 
    capture_lex $P5054
    $P5055 = $P5054()
    .const 'Sub' $P5056 = 'cuid_23_1366375320.00413' 
    capture_lex $P5056
    .const 'Sub' $P5057 = 'cuid_24_1366375320.00413' 
    capture_lex $P5057
    .const 'Sub' $P5058 = 'cuid_25_1366375320.00413' 
    capture_lex $P5058
    .const 'Sub' $P5059 = 'cuid_26_1366375320.00413' 
    capture_lex $P5059
    .const 'Sub' $P5060 = 'cuid_27_1366375320.00413' 
    capture_lex $P5060
    .return ($P5060) 
.end
.HLL "nqp"
.namespace []
.sub "new" :subid("cuid_1_1366375320.00413") :anon :lex :outer("cuid_121_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 34
    .param pmc _lex_param_0 
    .lex "$new", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P101, $P5001
.annotate 'line', 35
    nqp_decontainerize $P5002, _lex_param_0
    new $P5003, 'QRPA'
    $P5004 = $P5002."bless"($P5003 :named("states"), 0 :named("edges"))
    set $P101, $P5004
.annotate 'line', 36
    $P101."addstate"()
.annotate 'line', 37
    $P101."addstate"()
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "from_saved" :subid("cuid_2_1366375320.00413") :anon :lex :outer("cuid_121_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 41
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$saved", _lex_param_1 
.annotate 'line', 42
    nqp_decontainerize $P5001, _lex_param_0
    $P5002 = $P5001."bless"(_lex_param_1 :named("states"), 1 :named("edges"))
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "addstate" :subid("cuid_3_1366375320.00413") :anon :lex :outer("cuid_121_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 45
    .param pmc _lex_param_0 
    .lex "$id", $I101 
    .lex "self", _lex_param_0 
    set $I101, 0
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 3
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!states"
    set $N5001, $P5003
    set $I5001, $N5001
    set $I101, $I5001
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 3
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!states"
    new $P5007, 'QRPA'
    set $P5006[$I101], $P5007
    .return ($I101) 
.end
.HLL "nqp"
.namespace []
.sub "addedge" :subid("cuid_4_1366375320.00413") :anon :lex :outer("cuid_121_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 51
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
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
    .local pmc fb_tmp_15 
    if haz_param_9, default304
    box $P5017, 1
    set _lex_param_5, $P5017
  default304:
    nqp_get_sc_object $P5001, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P101, $P5001
    unless _lex_param_5 goto if137_end296 
    nqp_decontainerize $P5002, _lex_param_0
    nqp_get_sc_object $P5003, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 3
    box $P5004, 1
    repr_bind_attr_obj $P5002, $P5003, "$!edges", $P5004
  if137_end296:
    set $N5001, _lex_param_2
    set $N5002, 0
    islt $I5001, $N5001, $N5002
    unless $I5001 goto if138_end298 
.annotate 'line', 53
    nqp_decontainerize $P5005, _lex_param_0
    $P5006 = $P5005."addstate"()
    set _lex_param_2, $P5006
  if138_end298:
    nqp_decontainerize $P5007, _lex_param_0
    nqp_get_sc_object $P5008, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 3
    repr_get_attr_obj $P5009, $P5007, $P5008, "$!states"
    set fb_tmp_15, $P5009
    repr_defined $I5002, fb_tmp_15
    unless $I5002 goto if139_else299 
    set $I5003, _lex_param_1
    set $P5010, fb_tmp_15[$I5003]
    set $P5012, $P5010
    goto if139_end300
  if139_else299:
    null $P5011
    set $P5012, $P5011
  if139_end300:
    unless_null $P5012, vivi_140301
    nqp_get_sc_object $P5013, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P5012, $P5013
  vivi_140301:
    set $P101, $P5012
    push $P101, _lex_param_3
    nqp_get_sc_object $P5014, "6F03D67C6A0A511F6F9FDA0C4D1E063D61830D12-1366375318.27176", 52
    type_check $I5004, _lex_param_4, $P5014
    unless $I5004 goto if141_else302 
.annotate 'line', 56
    $P5015 = _lex_param_4."value"()
    set $P5016, $P5015
    goto if141_end303
  if141_else302:
    set $P5016, _lex_param_4
  if141_end303:
    push $P101, $P5016
    push $P101, _lex_param_2
    .return (_lex_param_2) 
.end
.HLL "nqp"
.namespace []
.sub "states" :subid("cuid_5_1366375320.00413") :anon :lex :outer("cuid_121_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 61
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 3
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!states"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "addnode" :subid("cuid_6_1366375320.00413") :anon :lex :outer("cuid_121_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 63
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :named("vars_as_generic") :optional 
    .param int haz_param_10 :opt_flag 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$*vars_as_generic", _lex_param_2 
    if haz_param_10, default305
    nqp_get_sc_object $P5003, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set _lex_param_2, $P5003
  default305:
.annotate 'line', 64
    nqp_decontainerize $P5001, _lex_param_0
    $P5001."regex_nfa"(_lex_param_1, 1, 0)
    nqp_decontainerize $P5002, _lex_param_0
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "regex_nfa" :subid("cuid_7_1366375320.00413") :anon :lex :outer("cuid_121_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 68
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .lex "$method", $P101 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$from", _lex_param_2 
    .lex "$to", _lex_param_3 
    nqp_get_sc_object $P5001, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P101, $P5001
.annotate 'line', 69
    $P5003 = _lex_param_1."rxtype"()
    set $P5002, $P5003
    defined $I5001, $P5002
    if $I5001, defor306
    box $P5004, "concat"
    set $P5002, $P5004
  defor306:
    set $P101, $P5002
.annotate 'line', 70
    nqp_decontainerize $P5006, _lex_param_0
    get_how $P5005, $P5006
    nqp_decontainerize $P5007, _lex_param_0
    $P5008 = $P5005."can"($P5007, $P101)
    unless $P5008 goto if142_else307 
.annotate 'line', 71
    nqp_decontainerize $P5009, _lex_param_0
    set $S5001, $P101
    $P5010 = $P5009.$S5001(_lex_param_1, _lex_param_2, _lex_param_3)
    set $P5013, $P5010
    goto if142_end308
  if142_else307:
.annotate 'line', 72
    nqp_decontainerize $P5011, _lex_param_0
    $P5012 = $P5011."fate"(_lex_param_1, _lex_param_2, _lex_param_3)
    set $P5013, $P5012
  if142_end308:
    .return ($P5013) 
.end
.HLL "nqp"
.namespace []
.sub "fate" :subid("cuid_8_1366375320.00413") :anon :lex :outer("cuid_121_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 75
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$from", _lex_param_2 
    .lex "$to", _lex_param_3 
.annotate 'line', 76
    nqp_decontainerize $P5001, _lex_param_0
    find_lex $P5002, "$EDGE_FATE"
    $P5003 = $P5001."addedge"(_lex_param_2, 0, $P5002, 0, 0 :named("newedge"))
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "alt" :subid("cuid_9_1366375320.00413") :anon :lex :outer("cuid_121_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 79
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .const 'Sub' $P5007 = 'cuid_122_1366375320.00413' 
    capture_lex $P5007 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$from", _lex_param_2 
    .lex "$to", _lex_param_3 
.annotate 'line', 80
    $P5004 = _lex_param_1."list"()
    set $P5001, $P5004
    iter $P5003, $P5004
  for_next313:
    unless $P5003, for_done315
    shift $P5006, $P5003
  for_redo314:
    .const 'Sub' $P5005 = 'cuid_122_1366375320.00413' 
    capture_lex $P5005
    $P5001 = $P5005($P5006)
    goto for_next313
  for_done315:
    .return (_lex_param_3) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_122_1366375320.00413") :anon :lex :outer("cuid_9_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 80
    .param pmc _lex_param_0 
    .lex "$st", $I101 
    .lex "$_", _lex_param_0 
    set $I101, 0
.annotate 'line', 81
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    find_lex $P5003, "$from"
    find_lex $P5004, "$to"
    $P5005 = $P5001."regex_nfa"(_lex_param_0, $P5003, $P5004)
    set $I5001, $P5005
    set $I101, $I5001
    find_lex $P5006, "$to"
    set $N5001, $P5006
    set $N5002, 0
    islt $I5002, $N5001, $N5002
    set $I5004, $I5002
    unless $I5002 goto if144_end312 
    set $N5003, $I101
    set $N5004, 0
    isgt $I5003, $N5003, $N5004
    set $I5004, $I5003
  if144_end312:
    box $P5009, $I5004
    set $P5008, $P5009
    unless $I5004 goto if143_end310 
    box $P5007, $I101
    store_lex "$to", $P5007
    set $P5008, $P5007
  if143_end310:
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "anchor" :subid("cuid_10_1366375320.00413") :anon :lex :outer("cuid_121_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 87
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$from", _lex_param_2 
    .lex "$to", _lex_param_3 
.annotate 'line', 88
    nqp_decontainerize $P5001, _lex_param_0
    find_lex $P5002, "$EDGE_EPSILON"
    $P5003 = $P5001."addedge"(_lex_param_2, _lex_param_3, $P5002, 0)
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "dba" :subid("cuid_11_1366375320.00413") :anon :lex :outer("cuid_121_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 91
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$from", _lex_param_2 
    .lex "$to", _lex_param_3 
.annotate 'line', 92
    nqp_decontainerize $P5001, _lex_param_0
    find_lex $P5002, "$EDGE_EPSILON"
    $P5003 = $P5001."addedge"(_lex_param_2, _lex_param_3, $P5002, 0)
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "cclass" :subid("cuid_12_1366375320.00413") :anon :lex :outer("cuid_121_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 105
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$from", _lex_param_2 
    .lex "$to", _lex_param_3 
    .local pmc fb_tmp_16 
.annotate 'line', 106
    nqp_decontainerize $P5001, _lex_param_0
    find_lex $P5002, "$EDGE_CHARCLASS"
    set $N5002, $P5002
    $P5003 = _lex_param_1."negate"()
    istrue $I5001, $P5003
    set $N5003, $I5001
    add $N5001, $N5002, $N5003
    find_lex $P5004, "%cclass_code"
    set fb_tmp_16, $P5004
    repr_defined $I5002, fb_tmp_16
    unless $I5002 goto if145_else316 
.annotate 'line', 107
    $P5006 = _lex_param_1."name"()
    set $S5001, $P5006
    set $P5005, fb_tmp_16[$S5001]
    set $P5008, $P5005
    goto if145_end317
  if145_else316:
    null $P5007
    set $P5008, $P5007
  if145_end317:
    unless_null $P5008, vivi_146318
    nqp_get_sc_object $P5009, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P5008, $P5009
  vivi_146318:
    $P5010 = $P5001."addedge"(_lex_param_2, _lex_param_3, $N5001, $P5008)
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "concat" :subid("cuid_13_1366375320.00413") :anon :lex :outer("cuid_121_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 110
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .lex "$i", $I101 
    .lex "$n", $I102 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$from", _lex_param_2 
    .lex "$to", _lex_param_3 
    .local pmc fb_tmp_17 
    .local pmc fb_tmp_18 
    set $I101, 0
    set $I102, 0
    set $I101, 0
.annotate 'line', 112
    $P5001 = _lex_param_1."list"()
    set $N5002, $P5001
    set $N5003, 1
    sub $N5001, $N5002, $N5003
    set $I5001, $N5001
    set $I102, $I5001
  while147_test319:
    set $N5004, _lex_param_2
    set $N5005, 0
    isgt $I5002, $N5004, $N5005
    set $I5004, $I5002
    unless $I5002 goto if148_end325 
    set $N5006, $I101
    set $N5007, $I102
    islt $I5003, $N5006, $N5007
    set $I5004, $I5003
  if148_end325:
    set $I5007, $I5004
    unless $I5004 goto while147_done323 
  while147_redo321:
.annotate 'line', 113
.annotate 'line', 114
    nqp_decontainerize $P5002, _lex_param_0
    set fb_tmp_17, _lex_param_1
    repr_defined $I5005, fb_tmp_17
    unless $I5005 goto if149_else326 
    set $P5003, fb_tmp_17[$I101]
    set $P5005, $P5003
    goto if149_end327
  if149_else326:
    null $P5004
    set $P5005, $P5004
  if149_end327:
    unless_null $P5005, vivi_150328
    nqp_get_sc_object $P5006, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P5005, $P5006
  vivi_150328:
    $P5007 = $P5002."regex_nfa"($P5005, _lex_param_2, -1)
    set _lex_param_2, $P5007
    set $N5009, $I101
    set $N5010, 1
    add $N5008, $N5009, $N5010
    set $I5006, $N5008
    set $I101, $I5006
    set $I5007, $I101
    goto while147_test319 
  while147_done323:
    set $N5011, _lex_param_2
    set $N5012, 0
    isgt $I5008, $N5011, $N5012
    set $I5010, $I5008
    unless $I5008 goto if152_end332 
    set $N5013, $I102
    set $N5014, 0
    isge $I5009, $N5013, $N5014
    set $I5010, $I5009
  if152_end332:
    unless $I5010 goto if151_else329 
.annotate 'line', 117
    nqp_decontainerize $P5008, _lex_param_0
    set fb_tmp_18, _lex_param_1
    repr_defined $I5011, fb_tmp_18
    unless $I5011 goto if153_else333 
    set $P5009, fb_tmp_18[$I101]
    set $P5011, $P5009
    goto if153_end334
  if153_else333:
    null $P5010
    set $P5011, $P5010
  if153_end334:
    unless_null $P5011, vivi_154335
    nqp_get_sc_object $P5012, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P5011, $P5012
  vivi_154335:
    $P5013 = $P5008."regex_nfa"($P5011, _lex_param_2, _lex_param_3)
    set $P5014, $P5013
    goto if151_end330
  if151_else329:
    set $P5014, _lex_param_3
  if151_end330:
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "enumcharlist" :subid("cuid_14_1366375320.00413") :anon :lex :outer("cuid_121_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 120
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .lex "$charlist", $P101 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$from", _lex_param_2 
    .lex "$to", _lex_param_3 
    .local pmc fb_tmp_19 
    nqp_get_sc_object $P5001, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P101, $P5001
    set fb_tmp_19, _lex_param_1
    repr_defined $I5001, fb_tmp_19
    unless $I5001 goto if155_else336 
    set $P5002, fb_tmp_19[0]
    set $P5004, $P5002
    goto if155_end337
  if155_else336:
    null $P5003
    set $P5004, $P5003
  if155_end337:
    unless_null $P5004, vivi_156338
    nqp_get_sc_object $P5005, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P5004, $P5005
  vivi_156338:
    set $P101, $P5004
.annotate 'line', 122
    $P5006 = _lex_param_1."subtype"()
    set $S5001, $P5006
    iseq $I5002, $S5001, "zerowidth"
    unless $I5002 goto if157_else339 
.annotate 'line', 123
    nqp_decontainerize $P5007, _lex_param_0
    find_lex $P5008, "$EDGE_CHARLIST"
    set $N5002, $P5008
    $P5009 = _lex_param_1."negate"()
    istrue $I5003, $P5009
    set $N5003, $I5003
    add $N5001, $N5002, $N5003
    $P5010 = $P5007."addedge"(_lex_param_2, -1, $N5001, $P101)
    set _lex_param_2, $P5010
.annotate 'line', 124
    nqp_decontainerize $P5011, _lex_param_0
    find_lex $P5012, "$EDGE_FATE"
    $P5013 = $P5011."addedge"(_lex_param_2, 0, $P5012, 0)
    set $P5018, $P5013
    goto if157_end340
  if157_else339:
.annotate 'line', 126
.annotate 'line', 127
    nqp_decontainerize $P5014, _lex_param_0
    find_lex $P5015, "$EDGE_CHARLIST"
    set $N5005, $P5015
    $P5016 = _lex_param_1."negate"()
    istrue $I5004, $P5016
    set $N5006, $I5004
    add $N5004, $N5005, $N5006
    $P5017 = $P5014."addedge"(_lex_param_2, _lex_param_3, $N5004, $P101)
    set $P5018, $P5017
  if157_end340:
    .return ($P5018) 
.end
.HLL "nqp"
.namespace []
.sub "literal" :subid("cuid_15_1366375320.00413") :anon :lex :outer("cuid_121_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 131
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .const 'Sub' $P5015 = 'cuid_123_1366375320.00413' 
    capture_lex $P5015 
    .const 'Sub' $P5015 = 'cuid_124_1366375320.00413' 
    capture_lex $P5015 
    .lex "$litlen", $I101 
    .lex "$i", $I102 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$from", _lex_param_2 
    .lex "$to", _lex_param_3 
    .local pmc fb_tmp_20 
    set $I101, 0
    set $I102, 0
    set fb_tmp_20, _lex_param_1
    repr_defined $I5002, fb_tmp_20
    unless $I5002 goto if158_else341 
    set $P5001, fb_tmp_20[0]
    set $P5003, $P5001
    goto if158_end342
  if158_else341:
    null $P5002
    set $P5003, $P5002
  if158_end342:
    unless_null $P5003, vivi_159343
    nqp_get_sc_object $P5004, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P5003, $P5004
  vivi_159343:
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
    unless $I5004 goto if160_else344 
.annotate 'line', 134
.annotate 'line', 135
    $P5005 = _lex_param_1."subtype"()
    set $S5002, $P5005
    iseq $I5005, $S5002, "ignorecase"
    unless $I5005 goto if161_else346 
    .const 'Sub' $P5006 = 'cuid_123_1366375320.00413' 
    capture_lex $P5006
    $P5007 = $P5006()
    set $P5010, $P5007
    goto if161_end347
  if161_else346:
    .const 'Sub' $P5008 = 'cuid_124_1366375320.00413' 
    capture_lex $P5008
    $P5009 = $P5008()
    set $P5010, $P5009
  if161_end347:
    set $P5014, $P5010
    goto if160_end345
  if160_else344:
.annotate 'line', 155
.annotate 'line', 156
    nqp_decontainerize $P5011, _lex_param_0
    find_lex $P5012, "$EDGE_EPSILON"
    $P5013 = $P5011."addedge"(_lex_param_2, _lex_param_3, $P5012, 0)
    set $P5014, $P5013
  if160_end345:
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_123_1366375320.00413") :anon :lex :outer("cuid_15_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 135
    .lex "$litconst_lc", $S101 
    .lex "$litconst_uc", $S102 
    .local pmc fb_tmp_21 
    .local pmc fb_tmp_22 
    set $S101, ""
    set $S102, ""
    find_lex $P5001, "$node"
    set fb_tmp_21, $P5001
    repr_defined $I5001, fb_tmp_21
    unless $I5001 goto if162_else348 
    set $P5002, fb_tmp_21[0]
    set $P5004, $P5002
    goto if162_end349
  if162_else348:
    null $P5003
    set $P5004, $P5003
  if162_end349:
    unless_null $P5004, vivi_163350
    nqp_get_sc_object $P5005, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P5004, $P5005
  vivi_163350:
    set $S5002, $P5004
    downcase $S5001, $S5002
    set $S101, $S5001
    find_lex $P5006, "$node"
    set fb_tmp_22, $P5006
    repr_defined $I5002, fb_tmp_22
    unless $I5002 goto if164_else351 
    set $P5007, fb_tmp_22[0]
    set $P5009, $P5007
    goto if164_end352
  if164_else351:
    null $P5008
    set $P5009, $P5008
  if164_end352:
    unless_null $P5009, vivi_165353
    nqp_get_sc_object $P5010, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P5009, $P5010
  vivi_165353:
    set $S5004, $P5009
    upcase $S5003, $S5004
    set $S102, $S5003
  while166_test354:
    find_lex $I5004, "$i"
    set $N5001, $I5004
    find_lex $I5005, "$litlen"
    set $N5002, $I5005
    islt $I5003, $N5001, $N5002
    set $I5012, $I5003
    unless $I5003 goto while166_done358 
  while166_redo356:
.annotate 'line', 138
.annotate 'line', 139
    find_lex $P5012, "self"
    nqp_decontainerize $P5011, $P5012
    find_lex $P5013, "$from"
    find_lex $P5014, "$EDGE_CODEPOINT_I"
    new $P5015, 'QRPA'
    find_lex $I5007, "$i"
    ord $I5006, $S101, $I5007
    box $P5016, $I5006
    push $P5015, $P5016
    find_lex $I5009, "$i"
    ord $I5008, $S102, $I5009
    box $P5017, $I5008
    push $P5015, $P5017
    $P5018 = $P5011."addedge"($P5013, -1, $P5014, $P5015)
    store_lex "$from", $P5018
    find_lex $I5010, "$i"
    set $N5004, $I5010
    set $N5005, 1
    add $N5003, $N5004, $N5005
    set $I5011, $N5003
    store_lex "$i", $I5011
    set $I5012, $I5011
    goto while166_test354 
  while166_done358:
.annotate 'line', 143
    find_lex $P5020, "self"
    nqp_decontainerize $P5019, $P5020
    find_lex $P5021, "$from"
    find_lex $P5022, "$to"
    find_lex $P5023, "$EDGE_CODEPOINT_I"
    new $P5024, 'QRPA'
    find_lex $I5014, "$i"
    ord $I5013, $S101, $I5014
    box $P5025, $I5013
    push $P5024, $P5025
    find_lex $I5016, "$i"
    ord $I5015, $S102, $I5016
    box $P5026, $I5015
    push $P5024, $P5026
    $P5027 = $P5019."addedge"($P5021, $P5022, $P5023, $P5024)
    .return ($P5027) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_124_1366375320.00413") :anon :lex :outer("cuid_15_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 146
    .lex "$litconst", $S101 
    .local pmc fb_tmp_23 
    set $S101, ""
    find_lex $P5001, "$node"
    set fb_tmp_23, $P5001
    repr_defined $I5001, fb_tmp_23
    unless $I5001 goto if167_else359 
    set $P5002, fb_tmp_23[0]
    set $P5004, $P5002
    goto if167_end360
  if167_else359:
    null $P5003
    set $P5004, $P5003
  if167_end360:
    unless_null $P5004, vivi_168361
    nqp_get_sc_object $P5005, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P5004, $P5005
  vivi_168361:
    set $S5001, $P5004
    set $S101, $S5001
  while169_test362:
    find_lex $I5003, "$i"
    set $N5001, $I5003
    find_lex $I5004, "$litlen"
    set $N5002, $I5004
    islt $I5002, $N5001, $N5002
    set $I5009, $I5002
    unless $I5002 goto while169_done366 
  while169_redo364:
.annotate 'line', 148
.annotate 'line', 149
    find_lex $P5007, "self"
    nqp_decontainerize $P5006, $P5007
    find_lex $P5008, "$from"
    find_lex $P5009, "$EDGE_CODEPOINT"
    find_lex $I5006, "$i"
    ord $I5005, $S101, $I5006
    $P5010 = $P5006."addedge"($P5008, -1, $P5009, $I5005)
    store_lex "$from", $P5010
    find_lex $I5007, "$i"
    set $N5004, $I5007
    set $N5005, 1
    add $N5003, $N5004, $N5005
    set $I5008, $N5003
    store_lex "$i", $I5008
    set $I5009, $I5008
    goto while169_test362 
  while169_done366:
.annotate 'line', 152
    find_lex $P5012, "self"
    nqp_decontainerize $P5011, $P5012
    find_lex $P5013, "$from"
    find_lex $P5014, "$to"
    find_lex $P5015, "$EDGE_CODEPOINT"
    find_lex $I5011, "$i"
    ord $I5010, $S101, $I5011
    $P5016 = $P5011."addedge"($P5013, $P5014, $P5015, $I5010)
    .return ($P5016) 
.end
.HLL "nqp"
.namespace []
.sub "subrule" :subid("cuid_16_1366375320.00413") :anon :lex :outer("cuid_121_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 160
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .const 'Sub' $P5146 = 'cuid_125_1366375320.00413' 
    capture_lex $P5146 
    .const 'Sub' $P5146 = 'cuid_126_1366375320.00413' 
    capture_lex $P5146 
    .lex "$subtype", $P101 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$from", _lex_param_2 
    .lex "$to", _lex_param_3 
    .local pmc fb_tmp_27 
    .local pmc fb_tmp_28 
    .local pmc fb_tmp_29 
    .local pmc fb_tmp_30 
    .local pmc fb_tmp_31 
    .local pmc fb_tmp_32 
    .local pmc fb_tmp_33 
    .local pmc fb_tmp_34 
    .local pmc fb_tmp_35 
    .local pmc fb_tmp_36 
    .local pmc fb_tmp_37 
    .local pmc fb_tmp_38 
    .local pmc fb_tmp_39 
    .local pmc fb_tmp_40 
    .local pmc fb_tmp_41 
    .local pmc fb_tmp_42 
    .local pmc fb_tmp_43 
    .local pmc fb_tmp_44 
    .local pmc fb_tmp_45 
    .local pmc fb_tmp_46 
    .local pmc fb_tmp_47 
    nqp_get_sc_object $P5001, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P101, $P5001
.annotate 'line', 161
    $P5002 = _lex_param_1."subtype"()
    set $P101, $P5002
.annotate 'line', 162
    $P5003 = _lex_param_1."name"()
    set $S5001, $P5003
    iseq $I5001, $S5001, "before"
    set $I5003, $I5001
    unless $I5001 goto if171_end370 
    $P5004 = _lex_param_1."negate"()
    isfalse $I5002, $P5004
    set $I5003, $I5002
  if171_end370:
    unless $I5003 goto if170_else367 
    .const 'Sub' $P5005 = 'cuid_125_1366375320.00413' 
    capture_lex $P5005
    $P5006 = $P5005()
    set $P5145, $P5006
    goto if170_end368
  if170_else367:
    set $S5002, $P101
    isne $I5004, $S5002, "zerowidth"
    set $I5016, $I5004
    unless $I5004 goto if179_end383 
.annotate 'line', 168
    $P5007 = _lex_param_1."name"()
    set $S5003, $P5007
    iseq $I5005, $S5003, "alpha"
    set $I5015, $I5005
    if $I5005 goto unless180_end385 
    set $S5004, $P101
    iseq $I5006, $S5004, "method"
    set $I5014, $I5006
    unless $I5006 goto if181_end387 
.annotate 'line', 170
    nqp_get_sc_object $P5008, "6F03D67C6A0A511F6F9FDA0C4D1E063D61830D12-1366375318.27176", 52
    set fb_tmp_28, _lex_param_1
    repr_defined $I5009, fb_tmp_28
    unless $I5009 goto if184_else392 
    set $P5009, fb_tmp_28[0]
    set $P5011, $P5009
    goto if184_end393
  if184_else392:
    null $P5010
    set $P5011, $P5010
  if184_end393:
    unless_null $P5011, vivi_185394
    nqp_get_sc_object $P5012, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P5011, $P5012
  vivi_185394:
    set fb_tmp_27, $P5011
    repr_defined $I5008, fb_tmp_27
    unless $I5008 goto if183_else390 
    set $P5013, fb_tmp_27[0]
    set $P5015, $P5013
    goto if183_end391
  if183_else390:
    null $P5014
    set $P5015, $P5014
  if183_end391:
    unless_null $P5015, vivi_186395
    nqp_get_sc_object $P5016, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P5015, $P5016
  vivi_186395:
    $P5017 = $P5008."ACCEPTS"($P5015)
    unless $P5017 goto if182_else388 
    set fb_tmp_30, _lex_param_1
    repr_defined $I5011, fb_tmp_30
    unless $I5011 goto if188_else398 
    set $P5018, fb_tmp_30[0]
    set $P5020, $P5018
    goto if188_end399
  if188_else398:
    null $P5019
    set $P5020, $P5019
  if188_end399:
    unless_null $P5020, vivi_189400
    nqp_get_sc_object $P5021, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P5020, $P5021
  vivi_189400:
    set fb_tmp_29, $P5020
    repr_defined $I5010, fb_tmp_29
    unless $I5010 goto if187_else396 
    set $P5022, fb_tmp_29[0]
    set $P5024, $P5022
    goto if187_end397
  if187_else396:
    null $P5023
    set $P5024, $P5023
  if187_end397:
    unless_null $P5024, vivi_190401
    nqp_get_sc_object $P5025, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P5024, $P5025
  vivi_190401:
    $P5026 = $P5024."value"()
    set $P5035, $P5026
    goto if182_end389
  if182_else388:
    set fb_tmp_32, _lex_param_1
    repr_defined $I5013, fb_tmp_32
    unless $I5013 goto if192_else404 
    set $P5027, fb_tmp_32[0]
    set $P5029, $P5027
    goto if192_end405
  if192_else404:
    null $P5028
    set $P5029, $P5028
  if192_end405:
    unless_null $P5029, vivi_193406
    nqp_get_sc_object $P5030, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P5029, $P5030
  vivi_193406:
    set fb_tmp_31, $P5029
    repr_defined $I5012, fb_tmp_31
    unless $I5012 goto if191_else402 
    set $P5031, fb_tmp_31[0]
    set $P5033, $P5031
    goto if191_end403
  if191_else402:
    null $P5032
    set $P5033, $P5032
  if191_end403:
    unless_null $P5033, vivi_194407
    nqp_get_sc_object $P5034, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P5033, $P5034
  vivi_194407:
    set $P5035, $P5033
  if182_end389:
    set $S5005, $P5035
    iseq $I5007, $S5005, "alpha"
    set $I5014, $I5007
  if181_end387:
    set $I5015, $I5014
  unless180_end385:
    set $I5016, $I5015
  if179_end383:
    unless $I5016 goto if178_else380 
.annotate 'line', 171
    nqp_decontainerize $P5036, _lex_param_0
    find_lex $P5037, "$EDGE_CHARCLASS"
    set $N5002, $P5037
    $P5038 = _lex_param_1."negate"()
    set $N5003, $P5038
    add $N5001, $N5002, $N5003
    $P5039 = $P5036."addedge"(_lex_param_2, _lex_param_3, $N5001, 4)
    set _lex_param_3, $P5039
.annotate 'line', 173
    nqp_decontainerize $P5040, _lex_param_0
    find_lex $P5041, "$EDGE_CODEPOINT"
    set $N5005, $P5041
    $P5042 = _lex_param_1."negate"()
    set $N5006, $P5042
    add $N5004, $N5005, $N5006
    $P5043 = $P5040."addedge"(_lex_param_2, _lex_param_3, $N5004, 95)
    set $P5144, $P5043
    goto if178_end381
  if178_else380:
    set $S5006, $P101
    iseq $I5017, $S5006, "zerowidth"
    unless $I5017 goto if195_else408 
.annotate 'line', 175
.annotate 'line', 176
    $P5044 = _lex_param_1."negate"()
    unless $P5044 goto if196_else410 
.annotate 'line', 177
    nqp_decontainerize $P5045, _lex_param_0
    $P5046 = $P5045."fate"(_lex_param_1, _lex_param_2, _lex_param_3)
    set $P5049, $P5046
    goto if196_end411
  if196_else410:
    .const 'Sub' $P5047 = 'cuid_126_1366375320.00413' 
    capture_lex $P5047
    $P5048 = $P5047()
    set $P5049, $P5048
  if196_end411:
    set $P5143, $P5049
    goto if195_end409
  if195_else408:
    find_dynamic_lex $P5050, "$*vars_as_generic"
    unless_null $P5050, fallback424
    nqp_get_sc_object $P5052, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 0
    get_who $P5051, $P5052
    set fb_tmp_33, $P5051
    repr_defined $I5018, fb_tmp_33
    unless $I5018 goto if203_else425 
    set $P5053, fb_tmp_33["$vars_as_generic"]
    set $P5055, $P5053
    goto if203_end426
  if203_else425:
    null $P5054
    set $P5055, $P5054
  if203_end426:
    unless_null $P5055, vivi_204427
    nqp_get_sc_object $P5056, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P5055, $P5056
  vivi_204427:
    unless_null $P5055, vivi_205428
    die "Contextual $*vars_as_generic not found"
    box $P5057, "Contextual $*vars_as_generic not found"
    set $P5055, $P5057
  vivi_205428:
    set $P5050, $P5055
  fallback424:
    set $P5058, $P5050
    unless $P5050 goto if202_end423 
    set $S5007, $P101
    iseq $I5019, $S5007, "method"
    box $P5059, $I5019
    set $P5058, $P5059
  if202_end423:
    set $P5070, $P5058
    unless $P5058 goto if201_end421 
.annotate 'line', 186
    nqp_get_sc_object $P5060, "6F03D67C6A0A511F6F9FDA0C4D1E063D61830D12-1366375318.27176", 52
    set fb_tmp_35, _lex_param_1
    repr_defined $I5021, fb_tmp_35
    unless $I5021 goto if207_else431 
    set $P5061, fb_tmp_35[0]
    set $P5063, $P5061
    goto if207_end432
  if207_else431:
    null $P5062
    set $P5063, $P5062
  if207_end432:
    unless_null $P5063, vivi_208433
    nqp_get_sc_object $P5064, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P5063, $P5064
  vivi_208433:
    set fb_tmp_34, $P5063
    repr_defined $I5020, fb_tmp_34
    unless $I5020 goto if206_else429 
    set $P5065, fb_tmp_34[0]
    set $P5067, $P5065
    goto if206_end430
  if206_else429:
    null $P5066
    set $P5067, $P5066
  if206_end430:
    unless_null $P5067, vivi_209434
    nqp_get_sc_object $P5068, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P5067, $P5068
  vivi_209434:
    $P5069 = $P5060."ACCEPTS"($P5067)
    set $P5070, $P5069
  if201_end421:
    set $P5080, $P5070
    unless $P5070 goto if200_end419 
    set fb_tmp_37, _lex_param_1
    repr_defined $I5024, fb_tmp_37
    unless $I5024 goto if211_else437 
    set $P5071, fb_tmp_37[0]
    set $P5073, $P5071
    goto if211_end438
  if211_else437:
    null $P5072
    set $P5073, $P5072
  if211_end438:
    unless_null $P5073, vivi_212439
    nqp_get_sc_object $P5074, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P5073, $P5074
  vivi_212439:
    set fb_tmp_36, $P5073
    repr_defined $I5023, fb_tmp_36
    unless $I5023 goto if210_else435 
    set $P5075, fb_tmp_36[0]
    set $P5077, $P5075
    goto if210_end436
  if210_else435:
    null $P5076
    set $P5077, $P5076
  if210_end436:
    unless_null $P5077, vivi_213440
    nqp_get_sc_object $P5078, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P5077, $P5078
  vivi_213440:
    $P5079 = $P5077."value"()
    set $S5008, $P5079
    iseq $I5022, $S5008, "!INTERPOLATE"
    box $P5081, $I5022
    set $P5080, $P5081
  if200_end419:
    set $P5092, $P5080
    unless $P5080 goto if199_end417 
.annotate 'line', 187
    nqp_get_sc_object $P5082, "6F03D67C6A0A511F6F9FDA0C4D1E063D61830D12-1366375318.27176", 71
    set fb_tmp_39, _lex_param_1
    repr_defined $I5026, fb_tmp_39
    unless $I5026 goto if215_else443 
    set $P5083, fb_tmp_39[0]
    set $P5085, $P5083
    goto if215_end444
  if215_else443:
    null $P5084
    set $P5085, $P5084
  if215_end444:
    unless_null $P5085, vivi_216445
    nqp_get_sc_object $P5086, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P5085, $P5086
  vivi_216445:
    set fb_tmp_38, $P5085
    repr_defined $I5025, fb_tmp_38
    unless $I5025 goto if214_else441 
    set $P5087, fb_tmp_38[1]
    set $P5089, $P5087
    goto if214_end442
  if214_else441:
    null $P5088
    set $P5089, $P5088
  if214_end442:
    unless_null $P5089, vivi_217446
    nqp_get_sc_object $P5090, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P5089, $P5090
  vivi_217446:
    $P5091 = $P5082."ACCEPTS"($P5089)
    set $P5092, $P5091
  if199_end417:
    set $P5102, $P5092
    unless $P5092 goto if198_end415 
    set fb_tmp_41, _lex_param_1
    repr_defined $I5029, fb_tmp_41
    unless $I5029 goto if219_else449 
    set $P5093, fb_tmp_41[0]
    set $P5095, $P5093
    goto if219_end450
  if219_else449:
    null $P5094
    set $P5095, $P5094
  if219_end450:
    unless_null $P5095, vivi_220451
    nqp_get_sc_object $P5096, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P5095, $P5096
  vivi_220451:
    set fb_tmp_40, $P5095
    repr_defined $I5028, fb_tmp_40
    unless $I5028 goto if218_else447 
    set $P5097, fb_tmp_40[1]
    set $P5099, $P5097
    goto if218_end448
  if218_else447:
    null $P5098
    set $P5099, $P5098
  if218_end448:
    unless_null $P5099, vivi_221452
    nqp_get_sc_object $P5100, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P5099, $P5100
  vivi_221452:
    $P5101 = $P5099."scope"()
    set $S5009, $P5101
    iseq $I5027, $S5009, "lexical"
    box $P5103, $I5027
    set $P5102, $P5103
  if198_end415:
    unless $P5102 goto if197_else412 
    nqp_decontainerize $P5104, _lex_param_0
    nqp_get_sc_object $P5105, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 3
    repr_bind_attr_int $P5104, $P5105, "$!generic", 1
.annotate 'line', 189
    nqp_decontainerize $P5106, _lex_param_0
    find_lex $P5107, "$EDGE_GENERIC_VAR"
    set fb_tmp_43, _lex_param_1
    repr_defined $I5031, fb_tmp_43
    unless $I5031 goto if223_else455 
    set $P5108, fb_tmp_43[0]
    set $P5110, $P5108
    goto if223_end456
  if223_else455:
    null $P5109
    set $P5110, $P5109
  if223_end456:
    unless_null $P5110, vivi_224457
    nqp_get_sc_object $P5111, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P5110, $P5111
  vivi_224457:
    set fb_tmp_42, $P5110
    repr_defined $I5030, fb_tmp_42
    unless $I5030 goto if222_else453 
    set $P5112, fb_tmp_42[1]
    set $P5114, $P5112
    goto if222_end454
  if222_else453:
    null $P5113
    set $P5114, $P5113
  if222_end454:
    unless_null $P5114, vivi_225458
    nqp_get_sc_object $P5115, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P5114, $P5115
  vivi_225458:
    $P5116 = $P5114."name"()
    $P5117 = $P5106."addedge"(_lex_param_2, _lex_param_3, $P5107, $P5116)
    set $P5142, $P5117
    goto if197_end413
  if197_else412:
.annotate 'line', 191
    set $S5010, $P101
    iseq $I5032, $S5010, "capture"
    box $P5123, $I5032
    set $P5122, $P5123
    unless $I5032 goto if227_end462 
    set fb_tmp_44, _lex_param_1
    repr_defined $I5033, fb_tmp_44
    unless $I5033 goto if228_else463 
    set $P5118, fb_tmp_44[1]
    set $P5120, $P5118
    goto if228_end464
  if228_else463:
    null $P5119
    set $P5120, $P5119
  if228_end464:
    unless_null $P5120, vivi_229465
    nqp_get_sc_object $P5121, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P5120, $P5121
  vivi_229465:
    set $P5122, $P5120
  if227_end462:
    unless $P5122 goto if226_else459 
.annotate 'line', 193
    nqp_decontainerize $P5124, _lex_param_0
    set fb_tmp_45, _lex_param_1
    repr_defined $I5034, fb_tmp_45
    unless $I5034 goto if230_else466 
    set $P5125, fb_tmp_45[1]
    set $P5127, $P5125
    goto if230_end467
  if230_else466:
    null $P5126
    set $P5127, $P5126
  if230_end467:
    unless_null $P5127, vivi_231468
    nqp_get_sc_object $P5128, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P5127, $P5128
  vivi_231468:
    $P5129 = $P5124."regex_nfa"($P5127, _lex_param_2, _lex_param_3)
    set $P5141, $P5129
    goto if226_end460
  if226_else459:
.annotate 'line', 194
    nqp_decontainerize $P5130, _lex_param_0
    find_lex $P5131, "$EDGE_SUBRULE"
    set fb_tmp_47, _lex_param_1
    repr_defined $I5036, fb_tmp_47
    unless $I5036 goto if233_else471 
    set $P5132, fb_tmp_47[0]
    set $P5134, $P5132
    goto if233_end472
  if233_else471:
    null $P5133
    set $P5134, $P5133
  if233_end472:
    unless_null $P5134, vivi_234473
    nqp_get_sc_object $P5135, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P5134, $P5135
  vivi_234473:
    set fb_tmp_46, $P5134
    repr_defined $I5035, fb_tmp_46
    unless $I5035 goto if232_else469 
    set $P5136, fb_tmp_46[0]
    set $P5138, $P5136
    goto if232_end470
  if232_else469:
    null $P5137
    set $P5138, $P5137
  if232_end470:
    unless_null $P5138, vivi_235474
    nqp_get_sc_object $P5139, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P5138, $P5139
  vivi_235474:
    $P5140 = $P5130."addedge"(_lex_param_2, _lex_param_3, $P5131, $P5138)
    set $P5141, $P5140
  if226_end460:
    set $P5142, $P5141
  if197_end413:
    set $P5143, $P5142
  if195_end409:
    set $P5144, $P5143
  if178_end381:
    set $P5145, $P5144
  if170_end368:
    .return ($P5145) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_125_1366375320.00413") :anon :lex :outer("cuid_16_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 162
    .lex "$end", $I101 
    .local pmc fb_tmp_24 
    .local pmc fb_tmp_25 
    .local pmc fb_tmp_26 
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
    find_lex $P5006, "$node"
    set fb_tmp_26, $P5006
    repr_defined $I5004, fb_tmp_26
    unless $I5004 goto if174_else375 
    set $P5007, fb_tmp_26[0]
    set $P5009, $P5007
    goto if174_end376
  if174_else375:
    null $P5008
    set $P5009, $P5008
  if174_end376:
    unless_null $P5009, vivi_175377
    nqp_get_sc_object $P5010, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P5009, $P5010
  vivi_175377:
    set fb_tmp_25, $P5009
    repr_defined $I5003, fb_tmp_25
    unless $I5003 goto if173_else373 
    set $P5011, fb_tmp_25[1]
    set $P5013, $P5011
    goto if173_end374
  if173_else373:
    null $P5012
    set $P5013, $P5012
  if173_end374:
    unless_null $P5013, vivi_176378
    nqp_get_sc_object $P5014, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P5013, $P5014
  vivi_176378:
    set fb_tmp_24, $P5013
    repr_defined $I5002, fb_tmp_24
    unless $I5002 goto if172_else371 
    set $P5015, fb_tmp_24["orig_qast"]
    set $P5017, $P5015
    goto if172_end372
  if172_else371:
    null $P5016
    set $P5017, $P5016
  if172_end372:
    unless_null $P5017, vivi_177379
    nqp_get_sc_object $P5018, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P5017, $P5018
  vivi_177379:
    find_lex $P5019, "$from"
    $P5004."regex_nfa"($P5017, $P5019, $I101)
.annotate 'line', 165
    find_lex $P5021, "self"
    nqp_decontainerize $P5020, $P5021
    find_lex $P5022, "$node"
    find_lex $P5023, "$to"
    $P5024 = $P5020."fate"($P5022, $I101, $P5023)
    .return ($P5024) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_126_1366375320.00413") :anon :lex :outer("cuid_16_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 179
    .lex "$end", $I101 
    set $I101, 0
.annotate 'line', 180
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    $P5003 = $P5001."addstate"()
    set $I5001, $P5003
    set $I101, $I5001
.annotate 'line', 181
    find_lex $P5005, "self"
    nqp_decontainerize $P5004, $P5005
    find_lex $P5006, "$from"
    find_lex $P5007, "$EDGE_SUBRULE"
    find_lex $P5008, "$node"
    $P5009 = $P5008."name"()
    $P5004."addedge"($P5006, $I101, $P5007, $P5009)
.annotate 'line', 182
    find_lex $P5011, "self"
    nqp_decontainerize $P5010, $P5011
    find_lex $P5012, "$node"
    find_lex $P5013, "$to"
    $P5014 = $P5010."fate"($P5012, $I101, $P5013)
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "quant" :subid("cuid_17_1366375320.00413") :anon :lex :outer("cuid_121_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 198
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .const 'Sub' $P5026 = 'cuid_128_1366375320.00413' 
    capture_lex $P5026 
    .const 'Sub' $P5026 = 'cuid_130_1366375320.00413' 
    capture_lex $P5026 
    .const 'Sub' $P5026 = 'cuid_131_1366375320.00413' 
    capture_lex $P5026 
    .const 'Sub' $P5026 = 'cuid_132_1366375320.00413' 
    capture_lex $P5026 
    .const 'Sub' $P5026 = 'cuid_133_1366375320.00413' 
    capture_lex $P5026 
    .lex "$min", $I101 
    .lex "$max", $I102 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$from", _lex_param_2 
    .lex "$to", _lex_param_3 
    .local pmc fb_tmp_53 
    set $I101, 0
    set $I102, 0
    root_new $P101, ['parrot';'Continuation']
    set_label $P101, lexotic_475
    .lex "RETURN", $P101
    set $N5002, 0
.annotate 'line', 199
    $P5002 = _lex_param_1."min"()
    set $P5001, $P5002
    defined $I5001, $P5001
    if $I5001, defor477
    box $P5003, 0
    set $P5001, $P5003
  defor477:
    set $N5003, $P5001
    add $N5001, $N5002, $N5003
    set $I5002, $N5001
    set $I101, $I5002
    set $N5005, 0
.annotate 'line', 200
    $P5005 = _lex_param_1."max"()
    set $P5004, $P5005
    defined $I5003, $P5004
    if $I5003, defor478
    box $P5006, -1
    set $P5004, $P5006
  defor478:
    set $N5006, $P5004
    add $N5004, $N5005, $N5006
    set $I5004, $N5004
    set $I102, $I5004
    set $N5007, $I102
    set $N5008, 1
    isgt $I5005, $N5007, $N5008
    set $I5007, $I5005
    if $I5005 goto unless237_end482 
    set $N5009, $I101
    set $N5010, 1
    isgt $I5006, $N5009, $N5010
    set $I5007, $I5006
  unless237_end482:
    unless $I5007 goto if236_end480 
    .const 'Sub' $P5007 = 'cuid_128_1366375320.00413' 
    capture_lex $P5007
    $P5008 = $P5007()
  if236_end480:
    set $N5011, $I102
    set $N5012, -1
    iseq $I5008, $N5011, $N5012
    unless $I5008 goto if259_else523 
.annotate 'line', 233
    set $N5013, $I101
    set $N5014, 0
    iseq $I5009, $N5013, $N5014
    unless $I5009 goto if260_else525 
.annotate 'line', 234
    set fb_tmp_53, _lex_param_1
    repr_defined $I5011, fb_tmp_53
    unless $I5011 goto if262_else529 
    set $P5009, fb_tmp_53[1]
    set $P5011, $P5009
    goto if262_end530
  if262_else529:
    null $P5010
    set $P5011, $P5010
  if262_end530:
    unless_null $P5011, vivi_263531
    nqp_get_sc_object $P5012, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P5011, $P5012
  vivi_263531:
    defined $I5010, $P5011
    unless $I5010 goto if261_else527 
    .const 'Sub' $P5013 = 'cuid_130_1366375320.00413' 
    capture_lex $P5013
    $P5014 = $P5013()
    set $P5017, $P5014
    goto if261_end528
  if261_else527:
    .const 'Sub' $P5015 = 'cuid_131_1366375320.00413' 
    capture_lex $P5015
    $P5016 = $P5015()
    set $P5017, $P5016
  if261_end528:
    goto if260_end526
  if260_else525:
    .const 'Sub' $P5018 = 'cuid_132_1366375320.00413' 
    capture_lex $P5018
    $P5019 = $P5018()
  if260_end526:
    set $P5025, _lex_param_3
    goto if259_end524
  if259_else523:
    set $N5015, $I101
    set $N5016, 0
    iseq $I5012, $N5015, $N5016
    set $I5014, $I5012
    unless $I5012 goto if284_end567 
    set $N5017, $I102
    set $N5018, 1
    iseq $I5013, $N5017, $N5018
    set $I5014, $I5013
  if284_end567:
    unless $I5014 goto if283_else564 
    .const 'Sub' $P5020 = 'cuid_133_1366375320.00413' 
    capture_lex $P5020
    $P5021 = $P5020()
    set $P5024, $P5021
    goto if283_end565
  if283_else564:
.annotate 'line', 271
.annotate 'line', 272
    nqp_decontainerize $P5022, _lex_param_0
    $P5023 = $P5022."fate"(_lex_param_1, _lex_param_2, _lex_param_3)
    set $P5024, $P5023
  if283_end565:
    set $P5025, $P5024
  if259_end524:
    goto lexotic_476
  lexotic_475:
    .get_results ($P5025)
  lexotic_476:
    .return ($P5025) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_128_1366375320.00413") :anon :lex :outer("cuid_17_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 202
    .const 'Sub' $P5038 = 'cuid_127_1366375320.00413' 
    capture_lex $P5038 
    .const 'Sub' $P5038 = 'cuid_129_1366375320.00413' 
    capture_lex $P5038 
    .lex "$count", $I101 
    .lex "$st", $I102 
    .lex "$has_sep", $I103 
    .local pmc fb_tmp_48 
    .local pmc fb_tmp_49 
    .local pmc fb_tmp_50 
    set $I101, 0
    set $I102, 0
    set $I103, 0
    set $I101, 0
    find_lex $P5001, "$node"
    set fb_tmp_48, $P5001
    repr_defined $I5002, fb_tmp_48
    unless $I5002 goto if238_else483 
    set $P5002, fb_tmp_48[1]
    set $P5004, $P5002
    goto if238_end484
  if238_else483:
    null $P5003
    set $P5004, $P5003
  if238_end484:
    unless_null $P5004, vivi_239485
    nqp_get_sc_object $P5005, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P5004, $P5005
  vivi_239485:
    defined $I5001, $P5004
    set $I103, $I5001
  while240_test486:
    set $N5001, $I101
    find_lex $I5004, "$max"
    set $N5002, $I5004
    islt $I5003, $N5001, $N5002
    set $I5007, $I5003
    if $I5003 goto unless241_end492 
    set $N5003, $I101
    find_lex $I5006, "$min"
    set $N5004, $I5006
    islt $I5005, $N5003, $N5004
    set $I5007, $I5005
  unless241_end492:
    set $I5015, $I5007
    unless $I5007 goto while240_done490 
  while240_redo488:
.annotate 'line', 206
    set $N5005, $I101
    find_lex $I5009, "$min"
    set $N5006, $I5009
    isge $I5008, $N5005, $N5006
    unless $I5008 goto if242_end494 
    .const 'Sub' $P5006 = 'cuid_127_1366375320.00413' 
    capture_lex $P5006
    $P5007 = $P5006()
  if242_end494:
    set $I5011, $I103
    unless $I103 goto if245_end500 
    set $N5007, $I101
    set $N5008, 0
    isgt $I5010, $N5007, $N5008
    set $I5011, $I5010
  if245_end500:
    unless $I5011 goto if244_end498 
.annotate 'line', 211
.annotate 'line', 212
    find_lex $P5009, "self"
    nqp_decontainerize $P5008, $P5009
    find_lex $P5010, "$node"
    set fb_tmp_49, $P5010
    repr_defined $I5012, fb_tmp_49
    unless $I5012 goto if246_else501 
    set $P5011, fb_tmp_49[1]
    set $P5013, $P5011
    goto if246_end502
  if246_else501:
    null $P5012
    set $P5013, $P5012
  if246_end502:
    unless_null $P5013, vivi_247503
    nqp_get_sc_object $P5014, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P5013, $P5014
  vivi_247503:
    find_lex $P5015, "$from"
    $P5016 = $P5008."regex_nfa"($P5013, $P5015, -1)
    store_lex "$from", $P5016
  if244_end498:
.annotate 'line', 214
    find_lex $P5018, "self"
    nqp_decontainerize $P5017, $P5018
    find_lex $P5019, "$node"
    set fb_tmp_50, $P5019
    repr_defined $I5013, fb_tmp_50
    unless $I5013 goto if248_else504 
    set $P5020, fb_tmp_50[0]
    set $P5022, $P5020
    goto if248_end505
  if248_else504:
    null $P5021
    set $P5022, $P5021
  if248_end505:
    unless_null $P5022, vivi_249506
    nqp_get_sc_object $P5023, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P5022, $P5023
  vivi_249506:
    find_lex $P5024, "$from"
    $P5025 = $P5017."regex_nfa"($P5022, $P5024, -1)
    store_lex "$from", $P5025
    set $N5010, $I101
    set $N5011, 1
    add $N5009, $N5010, $N5011
    set $I5014, $N5009
    set $I101, $I5014
    set $I5015, $I101
    goto while240_test486 
  while240_done490:
.annotate 'line', 217
    find_lex $P5027, "self"
    nqp_decontainerize $P5026, $P5027
    find_lex $P5028, "$from"
    find_lex $P5029, "$to"
    find_lex $P5030, "$EDGE_EPSILON"
    $P5026."addedge"($P5028, $P5029, $P5030, 0)
    find_lex $I5017, "$max"
    set $N5012, $I5017
    set $N5013, -1
    iseq $I5016, $N5012, $N5013
    unless $I5016 goto if250_end508 
    .const 'Sub' $P5031 = 'cuid_129_1366375320.00413' 
    capture_lex $P5031
    $P5032 = $P5031()
  if250_end508:
    find_lex $P5033, "$to"
    set $N5014, $P5033
    set $N5015, 0
    islt $I5018, $N5014, $N5015
    set $I5020, $I5018
    unless $I5018 goto if258_end522 
    set $N5016, $I102
    set $N5017, 0
    isgt $I5019, $N5016, $N5017
    set $I5020, $I5019
  if258_end522:
    unless $I5020 goto if257_end520 
    box $P5034, $I102
    store_lex "$to", $P5034
  if257_end520:
    find_lex $P5036, "$to"
    find_lex $P5035, "RETURN"
    $P5037 = $P5035($P5036)
    .return ($P5037) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_127_1366375320.00413") :anon :lex :outer("cuid_128_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 207
    .lex "$f", $I101 
    set $I101, 0
.annotate 'line', 208
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    find_lex $P5003, "$from"
    find_lex $P5004, "$to"
    find_lex $P5005, "$EDGE_EPSILON"
    $P5006 = $P5001."addedge"($P5003, $P5004, $P5005, 0)
    set $I5001, $P5006
    set $I101, $I5001
    find_lex $I5002, "$st"
    set $I5003, $I5002
    if $I5002 goto unless243_end496 
    set $I5003, $I101
  unless243_end496:
    store_lex "$st", $I5003
    .return ($I5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_129_1366375320.00413") :anon :lex :outer("cuid_128_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 218
    .lex "$start", $I101 
    .lex "$looper", $P101 
    .local pmc fb_tmp_51 
    .local pmc fb_tmp_52 
    set $I101, 0
    nqp_get_sc_object $P5001, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P101, $P5001
.annotate 'line', 219
    find_lex $P5003, "self"
    nqp_decontainerize $P5002, $P5003
    $P5004 = $P5002."addstate"()
    set $I5001, $P5004
    set $I101, $I5001
.annotate 'line', 220
    find_lex $P5006, "self"
    nqp_decontainerize $P5005, $P5006
    find_lex $P5007, "$from"
    find_lex $P5008, "$EDGE_EPSILON"
    $P5005."addedge"($P5007, $I101, $P5008, 0)
    box $P5009, $I101
    store_lex "$from", $P5009
.annotate 'line', 222
    find_lex $P5011, "self"
    nqp_decontainerize $P5010, $P5011
    $P5012 = $P5010."addstate"()
    set $P101, $P5012
.annotate 'line', 223
    find_lex $P5014, "self"
    nqp_decontainerize $P5013, $P5014
    find_lex $P5015, "$to"
    find_lex $P5016, "$EDGE_EPSILON"
    $P5013."addedge"($P101, $P5015, $P5016, 0)
.annotate 'line', 224
    find_lex $P5018, "self"
    nqp_decontainerize $P5017, $P5018
    find_lex $P5019, "$from"
    find_lex $P5020, "$EDGE_EPSILON"
    $P5017."addedge"($P101, $P5019, $P5020, 0)
    find_lex $I5002, "$has_sep"
    set $I5005, $I5002
    unless $I5002 goto if252_end512 
    find_lex $I5004, "$count"
    set $N5001, $I5004
    set $N5002, 0
    isgt $I5003, $N5001, $N5002
    set $I5005, $I5003
  if252_end512:
    unless $I5005 goto if251_end510 
.annotate 'line', 225
.annotate 'line', 226
    find_lex $P5022, "self"
    nqp_decontainerize $P5021, $P5022
    find_lex $P5023, "$node"
    set fb_tmp_51, $P5023
    repr_defined $I5006, fb_tmp_51
    unless $I5006 goto if253_else513 
    set $P5024, fb_tmp_51[1]
    set $P5026, $P5024
    goto if253_end514
  if253_else513:
    null $P5025
    set $P5026, $P5025
  if253_end514:
    unless_null $P5026, vivi_254515
    nqp_get_sc_object $P5027, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P5026, $P5027
  vivi_254515:
    find_lex $P5028, "$from"
    $P5029 = $P5021."regex_nfa"($P5026, $P5028, -1)
    store_lex "$from", $P5029
  if251_end510:
.annotate 'line', 228
    find_lex $P5031, "self"
    nqp_decontainerize $P5030, $P5031
    find_lex $P5032, "$node"
    set fb_tmp_52, $P5032
    repr_defined $I5007, fb_tmp_52
    unless $I5007 goto if255_else516 
    set $P5033, fb_tmp_52[0]
    set $P5035, $P5033
    goto if255_end517
  if255_else516:
    null $P5034
    set $P5035, $P5034
  if255_end517:
    unless_null $P5035, vivi_256518
    nqp_get_sc_object $P5036, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P5035, $P5036
  vivi_256518:
    find_lex $P5037, "$from"
    $P5038 = $P5030."regex_nfa"($P5035, $P5037, $P101)
    .return ($P5038) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_130_1366375320.00413") :anon :lex :outer("cuid_17_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 235
    .lex "$start", $I101 
    .lex "$looper", $I102 
    .lex "$st", $I103 
    .local pmc fb_tmp_54 
    .local pmc fb_tmp_55 
    set $I101, 0
    set $I102, 0
    set $I103, 0
.annotate 'line', 236
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    $P5003 = $P5001."addstate"()
    set $I5001, $P5003
    set $I101, $I5001
.annotate 'line', 237
    find_lex $P5005, "self"
    nqp_decontainerize $P5004, $P5005
    find_lex $P5006, "$from"
    find_lex $P5007, "$EDGE_EPSILON"
    $P5004."addedge"($P5006, $I101, $P5007, 0)
.annotate 'line', 238
    find_lex $P5009, "self"
    nqp_decontainerize $P5008, $P5009
    $P5010 = $P5008."addstate"()
    set $I5002, $P5010
    set $I102, $I5002
.annotate 'line', 239
    find_lex $P5012, "self"
    nqp_decontainerize $P5011, $P5012
    find_lex $P5013, "$node"
    set fb_tmp_54, $P5013
    repr_defined $I5003, fb_tmp_54
    unless $I5003 goto if264_else532 
    set $P5014, fb_tmp_54[0]
    set $P5016, $P5014
    goto if264_end533
  if264_else532:
    null $P5015
    set $P5016, $P5015
  if264_end533:
    unless_null $P5016, vivi_265534
    nqp_get_sc_object $P5017, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P5016, $P5017
  vivi_265534:
    $P5018 = $P5011."regex_nfa"($P5016, $I101, $I102)
    set $I5004, $P5018
    set $I103, $I5004
.annotate 'line', 240
    find_lex $P5020, "self"
    nqp_decontainerize $P5019, $P5020
    find_lex $P5021, "$node"
    set fb_tmp_55, $P5021
    repr_defined $I5005, fb_tmp_55
    unless $I5005 goto if266_else535 
    set $P5022, fb_tmp_55[1]
    set $P5024, $P5022
    goto if266_end536
  if266_else535:
    null $P5023
    set $P5024, $P5023
  if266_end536:
    unless_null $P5024, vivi_267537
    nqp_get_sc_object $P5025, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P5024, $P5025
  vivi_267537:
    $P5019."regex_nfa"($P5024, $I102, $I101)
.annotate 'line', 241
    find_lex $P5027, "self"
    nqp_decontainerize $P5026, $P5027
    find_lex $P5028, "$to"
    find_lex $P5029, "$EDGE_EPSILON"
    $P5026."addedge"($I102, $P5028, $P5029, 0)
.annotate 'line', 242
    find_lex $P5031, "self"
    nqp_decontainerize $P5030, $P5031
    find_lex $P5032, "$from"
    find_lex $P5033, "$to"
    find_lex $P5034, "$EDGE_EPSILON"
    $P5035 = $P5030."addedge"($P5032, $P5033, $P5034, 0)
    set $I5006, $P5035
    set $I103, $I5006
    find_lex $P5036, "$to"
    set $N5001, $P5036
    set $N5002, 0
    islt $I5007, $N5001, $N5002
    set $I5009, $I5007
    unless $I5007 goto if269_end541 
    set $N5003, $I103
    set $N5004, 0
    isgt $I5008, $N5003, $N5004
    set $I5009, $I5008
  if269_end541:
    box $P5039, $I5009
    set $P5038, $P5039
    unless $I5009 goto if268_end539 
    box $P5037, $I103
    store_lex "$to", $P5037
    set $P5038, $P5037
  if268_end539:
    .return ($P5038) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_131_1366375320.00413") :anon :lex :outer("cuid_17_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 245
    .lex "$st", $I101 
    .local pmc fb_tmp_56 
    set $I101, 0
.annotate 'line', 246
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    find_lex $P5003, "$node"
    set fb_tmp_56, $P5003
    repr_defined $I5001, fb_tmp_56
    unless $I5001 goto if270_else542 
    set $P5004, fb_tmp_56[0]
    set $P5006, $P5004
    goto if270_end543
  if270_else542:
    null $P5005
    set $P5006, $P5005
  if270_end543:
    unless_null $P5006, vivi_271544
    nqp_get_sc_object $P5007, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P5006, $P5007
  vivi_271544:
    find_lex $P5008, "$from"
    find_lex $P5009, "$from"
    $P5001."regex_nfa"($P5006, $P5008, $P5009)
.annotate 'line', 247
    find_lex $P5011, "self"
    nqp_decontainerize $P5010, $P5011
    find_lex $P5012, "$from"
    find_lex $P5013, "$to"
    find_lex $P5014, "$EDGE_EPSILON"
    $P5015 = $P5010."addedge"($P5012, $P5013, $P5014, 0)
    set $I5002, $P5015
    set $I101, $I5002
    find_lex $P5016, "$to"
    set $N5001, $P5016
    set $N5002, 0
    islt $I5003, $N5001, $N5002
    set $I5005, $I5003
    unless $I5003 goto if273_end548 
    set $N5003, $I101
    set $N5004, 0
    isgt $I5004, $N5003, $N5004
    set $I5005, $I5004
  if273_end548:
    box $P5019, $I5005
    set $P5018, $P5019
    unless $I5005 goto if272_end546 
    box $P5017, $I101
    store_lex "$to", $P5017
    set $P5018, $P5017
  if272_end546:
    .return ($P5018) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_132_1366375320.00413") :anon :lex :outer("cuid_17_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 250
    .lex "$start", $I101 
    .lex "$looper", $I102 
    .lex "$st", $I103 
    .local pmc fb_tmp_57 
    .local pmc fb_tmp_58 
    .local pmc fb_tmp_59 
    set $I101, 0
    set $I102, 0
    set $I103, 0
.annotate 'line', 251
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    $P5003 = $P5001."addstate"()
    set $I5001, $P5003
    set $I101, $I5001
.annotate 'line', 252
    find_lex $P5005, "self"
    nqp_decontainerize $P5004, $P5005
    find_lex $P5006, "$from"
    find_lex $P5007, "$EDGE_EPSILON"
    $P5004."addedge"($P5006, $I101, $P5007, 0)
.annotate 'line', 253
    find_lex $P5009, "self"
    nqp_decontainerize $P5008, $P5009
    $P5010 = $P5008."addstate"()
    set $I5002, $P5010
    set $I102, $I5002
.annotate 'line', 254
    find_lex $P5012, "self"
    nqp_decontainerize $P5011, $P5012
    find_lex $P5013, "$node"
    set fb_tmp_57, $P5013
    repr_defined $I5003, fb_tmp_57
    unless $I5003 goto if274_else549 
    set $P5014, fb_tmp_57[0]
    set $P5016, $P5014
    goto if274_end550
  if274_else549:
    null $P5015
    set $P5016, $P5015
  if274_end550:
    unless_null $P5016, vivi_275551
    nqp_get_sc_object $P5017, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P5016, $P5017
  vivi_275551:
    $P5018 = $P5011."regex_nfa"($P5016, $I101, $I102)
    set $I5004, $P5018
    set $I103, $I5004
    find_lex $P5019, "$node"
    set fb_tmp_58, $P5019
    repr_defined $I5006, fb_tmp_58
    unless $I5006 goto if277_else554 
    set $P5020, fb_tmp_58[1]
    set $P5022, $P5020
    goto if277_end555
  if277_else554:
    null $P5021
    set $P5022, $P5021
  if277_end555:
    unless_null $P5022, vivi_278556
    nqp_get_sc_object $P5023, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P5022, $P5023
  vivi_278556:
    defined $I5005, $P5022
    unless $I5005 goto if276_else552 
.annotate 'line', 255
.annotate 'line', 256
    find_lex $P5025, "self"
    nqp_decontainerize $P5024, $P5025
    find_lex $P5026, "$node"
    set fb_tmp_59, $P5026
    repr_defined $I5007, fb_tmp_59
    unless $I5007 goto if279_else557 
    set $P5027, fb_tmp_59[1]
    set $P5029, $P5027
    goto if279_end558
  if279_else557:
    null $P5028
    set $P5029, $P5028
  if279_end558:
    unless_null $P5029, vivi_280559
    nqp_get_sc_object $P5030, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P5029, $P5030
  vivi_280559:
    $P5031 = $P5024."regex_nfa"($P5029, $I102, $I101)
    goto if276_end553
  if276_else552:
.annotate 'line', 258
.annotate 'line', 259
    find_lex $P5033, "self"
    nqp_decontainerize $P5032, $P5033
    find_lex $P5034, "$EDGE_EPSILON"
    $P5035 = $P5032."addedge"($I102, $I101, $P5034, 0)
  if276_end553:
.annotate 'line', 261
    find_lex $P5037, "self"
    nqp_decontainerize $P5036, $P5037
    find_lex $P5038, "$to"
    find_lex $P5039, "$EDGE_EPSILON"
    $P5036."addedge"($I102, $P5038, $P5039, 0)
    find_lex $P5040, "$to"
    set $N5001, $P5040
    set $N5002, 0
    islt $I5008, $N5001, $N5002
    set $I5010, $I5008
    unless $I5008 goto if282_end563 
    set $N5003, $I103
    set $N5004, 0
    isgt $I5009, $N5003, $N5004
    set $I5010, $I5009
  if282_end563:
    box $P5043, $I5010
    set $P5042, $P5043
    unless $I5010 goto if281_end561 
    box $P5041, $I103
    store_lex "$to", $P5041
    set $P5042, $P5041
  if281_end561:
    .return ($P5042) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_133_1366375320.00413") :anon :lex :outer("cuid_17_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 265
    .lex "$st", $I101 
    .local pmc fb_tmp_60 
    set $I101, 0
.annotate 'line', 266
    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    find_lex $P5003, "$node"
    set fb_tmp_60, $P5003
    repr_defined $I5001, fb_tmp_60
    unless $I5001 goto if285_else568 
    set $P5004, fb_tmp_60[0]
    set $P5006, $P5004
    goto if285_end569
  if285_else568:
    null $P5005
    set $P5006, $P5005
  if285_end569:
    unless_null $P5006, vivi_286570
    nqp_get_sc_object $P5007, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P5006, $P5007
  vivi_286570:
    find_lex $P5008, "$from"
    find_lex $P5009, "$to"
    $P5010 = $P5001."regex_nfa"($P5006, $P5008, $P5009)
    set $I5002, $P5010
    set $I101, $I5002
    find_lex $P5011, "$to"
    set $N5001, $P5011
    set $N5002, 0
    islt $I5003, $N5001, $N5002
    set $I5005, $I5003
    unless $I5003 goto if288_end574 
    set $N5003, $I101
    set $N5004, 0
    isgt $I5004, $N5003, $N5004
    set $I5005, $I5004
  if288_end574:
    unless $I5005 goto if287_end572 
    box $P5012, $I101
    store_lex "$to", $P5012
  if287_end572:
.annotate 'line', 268
    find_lex $P5014, "self"
    nqp_decontainerize $P5013, $P5014
    find_lex $P5015, "$from"
    find_lex $P5016, "$to"
    find_lex $P5017, "$EDGE_EPSILON"
    $P5018 = $P5013."addedge"($P5015, $P5016, $P5017, 0)
    set $I5006, $P5018
    set $I101, $I5006
    find_lex $P5019, "$to"
    set $N5005, $P5019
    set $N5006, 0
    islt $I5007, $N5005, $N5006
    set $I5009, $I5007
    unless $I5007 goto if290_end578 
    set $N5007, $I101
    set $N5008, 0
    isgt $I5008, $N5007, $N5008
    set $I5009, $I5008
  if290_end578:
    unless $I5009 goto if289_end576 
    box $P5020, $I101
    store_lex "$to", $P5020
  if289_end576:
    find_lex $P5021, "$to"
    .return ($P5021) 
.end
.HLL "nqp"
.namespace []
.sub "qastnode" :subid("cuid_18_1366375320.00413") :anon :lex :outer("cuid_121_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 276
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$from", _lex_param_2 
    .lex "$to", _lex_param_3 
.annotate 'line', 277
    $P5001 = _lex_param_1."subtype"()
    set $S5001, $P5001
    iseq $I5001, $S5001, "zerowidth"
    set $I5003, $I5001
    if $I5001 goto unless292_end582 
    $P5002 = _lex_param_1."subtype"()
    set $S5002, $P5002
    iseq $I5002, $S5002, "declarative"
    set $I5003, $I5002
  unless292_end582:
    unless $I5003 goto if291_else579 
.annotate 'line', 278
    nqp_decontainerize $P5003, _lex_param_0
    find_lex $P5004, "$EDGE_EPSILON"
    $P5005 = $P5003."addedge"(_lex_param_2, _lex_param_3, $P5004, 0)
    set $P5008, $P5005
    goto if291_end580
  if291_else579:
.annotate 'line', 279
    nqp_decontainerize $P5006, _lex_param_0
    $P5007 = $P5006."fate"(_lex_param_1, _lex_param_2, _lex_param_3)
    set $P5008, $P5007
  if291_end580:
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "subcapture" :subid("cuid_19_1366375320.00413") :anon :lex :outer("cuid_121_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 282
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .lex "self", _lex_param_0 
    .lex "$node", _lex_param_1 
    .lex "$from", _lex_param_2 
    .lex "$to", _lex_param_3 
    .local pmc fb_tmp_61 
.annotate 'line', 283
    nqp_decontainerize $P5001, _lex_param_0
    set fb_tmp_61, _lex_param_1
    repr_defined $I5001, fb_tmp_61
    unless $I5001 goto if293_else583 
    set $P5002, fb_tmp_61[0]
    set $P5004, $P5002
    goto if293_end584
  if293_else583:
    null $P5003
    set $P5004, $P5003
  if293_end584:
    unless_null $P5004, vivi_294585
    nqp_get_sc_object $P5005, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P5004, $P5005
  vivi_294585:
    $P5006 = $P5001."regex_nfa"($P5004, _lex_param_2, _lex_param_3)
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "save" :subid("cuid_20_1366375320.00413") :anon :lex :outer("cuid_121_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 286
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :named("non_empty") :optional 
    .param int haz_param_11 :opt_flag 
    .lex "self", _lex_param_0 
    .lex "$non_empty", _lex_param_1 
    if haz_param_11, default592
    nqp_get_sc_object $P5012, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set _lex_param_1, $P5012
  default592:
    root_new $P101, ['parrot';'Continuation']
    set_label $P101, lexotic_586
    .lex "RETURN", $P101
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 3
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!edges"
    if $P5003 goto unless295_end589 
.annotate 'line', 287
    if _lex_param_1 goto unless296_end591 
    find_lex $P5004, "RETURN"
    $P5005 = $P5004(0)
  unless296_end591:
.annotate 'line', 289
    nqp_decontainerize $P5006, _lex_param_0
    find_lex $P5007, "$EDGE_FATE"
    $P5008 = $P5006."addedge"(1, 0, $P5007, 0, 1 :named("newedge"))
  unless295_end589:
    nqp_decontainerize $P5009, _lex_param_0
    nqp_get_sc_object $P5010, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 3
    repr_get_attr_obj $P5011, $P5009, $P5010, "$!states"
    goto lexotic_587
  lexotic_586:
    .get_results ($P5011)
  lexotic_587:
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "mergesubrule" :subid("cuid_21_1366375320.00413") :anon :lex :outer("cuid_121_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 294
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .param pmc _lex_param_4 
    .param string _lex_param_5 
    .param pmc _lex_param_6 :optional 
    .param int haz_param_12 :opt_flag 
    .const 'Sub' $P5014 = 'cuid_134_1366375320.00413' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_136_1366375320.00413' 
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
    if haz_param_12, default615
    new $P5013, 'Hash'
    set _lex_param_6, $P5013
  default615:
    new $P5001, 'Hash'
    set $P101, $P5001
    new $P5002, 'QRPA'
    set $P102, $P5002
    repr_clone $P5003, _lex_param_6
    set $P101, $P5003
    can $I5001, _lex_param_4, _lex_param_5
    unless $I5001 goto if297_end594 
.annotate 'line', 298
    exists $I5003, $P101[_lex_param_5]
    not $I5002, $I5003
    unless $I5002 goto if298_end596 
    .const 'Sub' $P5004 = 'cuid_134_1366375320.00413' 
    capture_lex $P5004
    $P5005 = $P5004()
  if298_end596:
    isfalse $I5004, $P102
    set $I5007, $I5004
    unless $I5004 goto if302_end604 
    exists $I5006, $P101[_lex_param_5]
    not $I5005, $I5006
    set $I5007, $I5005
  if302_end604:
    box $P5009, $I5007
    set $P5008, $P5009
    unless $I5007 goto if301_end602 
    .const 'Sub' $P5006 = 'cuid_136_1366375320.00413' 
    capture_lex $P5006
    $P5007 = $P5006()
    set $P5008, $P5007
  if301_end602:
  if297_end594:
    box $P5010, 1
    set $P101[_lex_param_5], $P5010
.annotate 'line', 320
    nqp_decontainerize $P5011, _lex_param_0
    $P5012 = $P5011."mergesubstates"(_lex_param_1, _lex_param_2, _lex_param_3, $P102, _lex_param_4, $P101)
    .return ($P5012) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_134_1366375320.00413") :anon :lex :outer("cuid_21_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 299
    .lex "$meth", $P101 
    nqp_get_sc_object $P5001, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P101, $P5001
.annotate 'line', 300
    find_lex $P5003, "$cursor"
    get_how $P5002, $P5003
    find_lex $P5004, "$cursor"
    find_lex $S5001, "$name"
    $P5005 = $P5002."find_method"($P5004, $S5001, 1 :named("no_trace"))
    set $P101, $P5005
    can $I5001, $P101, "NFA"
    unless $I5001 goto if299_end598 
.annotate 'line', 301
    $P5006 = $P101."NFA"()
    store_lex "@substates", $P5006
  if299_end598:
    find_lex $P5007, "@substates"
    isnull $I5002, $P5007
    box $P5010, $I5002
    set $P5009, $P5010
    unless $I5002 goto if300_end600 
    new $P5008, 'QRPA'
    store_lex "@substates", $P5008
    set $P5009, $P5008
  if300_end600:
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_136_1366375320.00413") :anon :lex :outer("cuid_21_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 304
    .const 'Sub' $P5023 = 'cuid_135_1366375320.00413' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_137_1366375320.00413' 
    capture_lex $P5023 
    .lex "%protorx", $P101 
    .lex "$nfa", $P102 
    .lex "$gotmatch", $I101 
    .local pmc fb_tmp_62 
    new $P5001, 'Hash'
    set $P101, $P5001
    nqp_get_sc_object $P5002, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P102, $P5002
    set $I101, 0
.annotate 'line', 307
    find_lex $P5004, "$cursor"
    get_how $P5003, $P5004
    find_lex $P5005, "$cursor"
    .const 'Sub' $P5007 = 'cuid_135_1366375320.00413' 
    capture_lex $P5007
    newclosure $P5006, $P5007
    $P5008 = $P5003."cache"($P5005, "!protoregex_table", $P5006)
    set $P101, $P5008
.annotate 'line', 308
    nqp_get_sc_object $P5009, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 3
    $P5010 = $P5009."new"()
    set $P102, $P5010
    set $I101, 0
    find_lex $S5001, "$name"
    exists $I5001, $P101[$S5001]
    unless $I5001 goto if303_end606 
.annotate 'line', 310
    set fb_tmp_62, $P101
    repr_defined $I5002, fb_tmp_62
    unless $I5002 goto if304_else607 
    find_lex $S5002, "$name"
    set $P5014, fb_tmp_62[$S5002]
    set $P5016, $P5014
    goto if304_end608
  if304_else607:
    null $P5015
    set $P5016, $P5015
  if304_end608:
    unless_null $P5016, vivi_305609
    nqp_get_sc_object $P5017, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P5016, $P5017
  vivi_305609:
    set $P5011, $P5016
    iter $P5013, $P5016
  for_next610:
    unless $P5013, for_done612
    shift $P5019, $P5013
  for_redo611:
    .const 'Sub' $P5018 = 'cuid_137_1366375320.00413' 
    capture_lex $P5018
    $P5011 = $P5018($P5019)
    goto for_next610
  for_done612:
  if303_end606:
    box $P5022, $I101
    set $P5021, $P5022
    unless $I101 goto if306_end614 
.annotate 'line', 316
    $P5020 = $P102."states"()
    store_lex "@substates", $P5020
    set $P5021, $P5020
  if306_end614:
    .return ($P5021) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_135_1366375320.00413") :anon :lex :outer("cuid_136_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 307

    find_lex $P5001, "$cursor"
    $P5002 = $P5001."!protoregex_table"()
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_137_1366375320.00413") :anon :lex :outer("cuid_136_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 311
    .param pmc _lex_param_0 
    .lex "$rxname", _lex_param_0 
.annotate 'line', 312
    find_lex $P5001, "$nfa"
    find_lex $P5002, "$EDGE_SUBRULE"
    $P5001."addedge"(1, 0, $P5002, _lex_param_0)
    store_lex "$gotmatch", 1
    .return (1) 
.end
.HLL "nqp"
.namespace []
.sub "mergesubstates" :subid("cuid_22_1366375320.00413") :anon :lex :outer("cuid_121_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 323
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .param pmc _lex_param_4 
    .param pmc _lex_param_5 
    .param pmc _lex_param_6 :optional 
    .param int haz_param_13 :opt_flag 
    .const 'Sub' $P5008 = 'cuid_139_1366375320.00413' 
    capture_lex $P5008 
    .lex "self", _lex_param_0 
    .lex "$start", _lex_param_1 
    .lex "$to", _lex_param_2 
    .lex "$fate", _lex_param_3 
    .lex "@substates", _lex_param_4 
    .lex "$cursor", _lex_param_5 
    .lex "%seen", _lex_param_6 
    if haz_param_13, default657
    new $P5007, 'Hash'
    set _lex_param_6, $P5007
  default657:
    unless _lex_param_4 goto if307_else616 
    .const 'Sub' $P5001 = 'cuid_139_1366375320.00413' 
    capture_lex $P5001
    $P5002 = $P5001()
    set $P5006, $P5002
    goto if307_end617
  if307_else616:
.annotate 'line', 359
.annotate 'line', 360
    nqp_decontainerize $P5003, _lex_param_0
    find_lex $P5004, "$EDGE_FATE"
    $P5005 = $P5003."addedge"(_lex_param_1, 0, $P5004, _lex_param_3)
    set $P5006, $P5005
  if307_end617:
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_139_1366375320.00413") :anon :lex :outer("cuid_22_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 324
    .const 'Sub' $P5042 = 'cuid_138_1366375320.00413' 
    capture_lex $P5042 
    .lex "$substart", $I101 
    .lex "$subend", $I102 
    .lex "$i", $I103 
    set $I101, 0
    set $I102, 0
    set $I103, 0
.annotate 'line', 326
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
    set_label $P5017, while308_handlers621
    push_eh $P5017
  while308_test618:
    find_lex $P5008, "@substates"
    set $P5016, $P5008
    unless $P5008 goto while308_done622 
  while308_redo620:
    find_lex $P5010, "self"
    nqp_decontainerize $P5009, $P5010
    nqp_get_sc_object $P5011, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 3
    repr_get_attr_obj $P5012, $P5009, $P5011, "$!states"
    find_lex $P5015, "@substates"
    shift $P5014, $P5015
    repr_clone $P5013, $P5014
    push $P5012, $P5013
    set $P5016, $P5012
    goto while308_test618 
  while308_handlers621:
    .get_results ($P5017)
    pop_upto_eh $P5017
    getattribute $P5017, $P5017, 'type'
    eq $P5017, .CONTROL_LOOP_NEXT, while308_test618
    eq $P5017, .CONTROL_LOOP_REDO, while308_redo620
  while308_done622:
    pop_eh 
    find_lex $P5019, "self"
    nqp_decontainerize $P5018, $P5019
    nqp_get_sc_object $P5020, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 3
    repr_get_attr_obj $P5021, $P5018, $P5020, "$!states"
    elements $I5002, $P5021
    set $I102, $I5002
    set $I103, $I101
  while309_test623:
    set $N5001, $I103
    set $N5002, $I102
    islt $I5003, $N5001, $N5002
    box $P5025, $I5003
    set $P5024, $P5025
    unless $I5003 goto while309_done627 
  while309_redo625:
    .const 'Sub' $P5022 = 'cuid_138_1366375320.00413' 
    capture_lex $P5022
    $P5023 = $P5022()
    set $P5024, $P5023
    goto while309_test623 
  while309_done627:
.annotate 'line', 354
    find_lex $P5027, "self"
    nqp_decontainerize $P5026, $P5027
    find_lex $P5028, "$start"
    set $N5004, $I101
    set $N5005, 1
    add $N5003, $N5004, $N5005
    find_lex $P5029, "$EDGE_EPSILON"
    $P5026."addedge"($P5028, $N5003, $P5029, 0)
    find_lex $P5030, "$to"
    set $N5006, $P5030
    set $N5007, 0
    isgt $I5004, $N5006, $N5007
    unless $I5004 goto if325_else655 
.annotate 'line', 356
    find_lex $P5032, "self"
    nqp_decontainerize $P5031, $P5032
    find_lex $P5033, "$to"
    find_lex $P5034, "$EDGE_EPSILON"
    $P5035 = $P5031."addedge"($I101, $P5033, $P5034, 0)
    set $P5041, $P5035
    goto if325_end656
  if325_else655:
.annotate 'line', 357
    find_lex $P5037, "self"
    nqp_decontainerize $P5036, $P5037
    find_lex $P5038, "$EDGE_FATE"
    find_lex $P5039, "$fate"
    $P5040 = $P5036."addedge"($I101, 0, $P5038, $P5039)
    set $P5041, $P5040
  if325_end656:
    .return ($P5041) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_138_1366375320.00413") :anon :lex :outer("cuid_139_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 340
    .lex "$substate", $P101 
    .lex "$j", $I101 
    .lex "$k", $I102 
    .local pmc fb_tmp_63 
    .local pmc fb_tmp_64 
    .local pmc fb_tmp_65 
    .local pmc fb_tmp_66 
    .local pmc fb_tmp_67 
    .local pmc fb_tmp_68 
    nqp_get_sc_object $P5001, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P101, $P5001
    set $I101, 0
    set $I102, 0
    find_lex $P5003, "self"
    nqp_decontainerize $P5002, $P5003
    nqp_get_sc_object $P5004, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 3
    repr_get_attr_obj $P5005, $P5002, $P5004, "$!states"
    set fb_tmp_63, $P5005
    repr_defined $I5001, fb_tmp_63
    unless $I5001 goto if310_else628 
    find_lex $I5002, "$i"
    set $P5006, fb_tmp_63[$I5002]
    set $P5008, $P5006
    goto if310_end629
  if310_else628:
    null $P5007
    set $P5008, $P5007
  if310_end629:
    unless_null $P5008, vivi_311630
    nqp_get_sc_object $P5009, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P5008, $P5009
  vivi_311630:
    set $P101, $P5008
    set $I101, 0
    elements $I5003, $P101
    set $I102, $I5003
  while312_test631:
    set $N5001, $I101
    set $N5002, $I102
    islt $I5004, $N5001, $N5002
    set $I5020, $I5004
    unless $I5004 goto while312_done635 
  while312_redo633:
.annotate 'line', 344
    set $N5004, $I101
    set $N5005, 2
    add $N5003, $N5004, $N5005
    set $I5005, $N5003
    set fb_tmp_64, $P101
    repr_defined $I5006, fb_tmp_64
    unless $I5006 goto if313_else636 
    set $N5008, $I101
    set $N5009, 2
    add $N5007, $N5008, $N5009
    set $I5007, $N5007
    set $P5010, fb_tmp_64[$I5007]
    set $P5012, $P5010
    goto if313_end637
  if313_else636:
    null $P5011
    set $P5012, $P5011
  if313_end637:
    unless_null $P5012, vivi_314638
    nqp_get_sc_object $P5013, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P5012, $P5013
  vivi_314638:
    set $N5010, $P5012
    find_lex $I5008, "$substart"
    set $N5011, $I5008
    add $N5006, $N5010, $N5011
    box $P5014, $N5006
    set $P101[$I5005], $P5014
    set fb_tmp_65, $P101
    repr_defined $I5010, fb_tmp_65
    unless $I5010 goto if316_else641 
    set $P5015, fb_tmp_65[$I101]
    set $P5017, $P5015
    goto if316_end642
  if316_else641:
    null $P5016
    set $P5017, $P5016
  if316_end642:
    unless_null $P5017, vivi_317643
    nqp_get_sc_object $P5018, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P5017, $P5018
  vivi_317643:
    set $N5012, $P5017
    find_lex $P5019, "$EDGE_FATE"
    set $N5013, $P5019
    iseq $I5009, $N5012, $N5013
    unless $I5009 goto if315_end640 
    set $N5015, $I101
    set $N5016, 1
    add $N5014, $N5015, $N5016
    set $I5011, $N5014
    find_lex $P5020, "$fate"
    set $P101[$I5011], $P5020
  if315_end640:
    set fb_tmp_66, $P101
    repr_defined $I5013, fb_tmp_66
    unless $I5013 goto if319_else646 
    set $P5021, fb_tmp_66[$I101]
    set $P5023, $P5021
    goto if319_end647
  if319_else646:
    null $P5022
    set $P5023, $P5022
  if319_end647:
    unless_null $P5023, vivi_320648
    nqp_get_sc_object $P5024, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P5023, $P5024
  vivi_320648:
    set $N5017, $P5023
    find_lex $P5025, "$EDGE_SUBRULE"
    set $N5018, $P5025
    iseq $I5012, $N5017, $N5018
    unless $I5012 goto if318_end645 
.annotate 'line', 348
    find_lex $P5027, "self"
    nqp_decontainerize $P5026, $P5027
    find_lex $I5014, "$i"
    set fb_tmp_67, $P101
    repr_defined $I5015, fb_tmp_67
    unless $I5015 goto if321_else649 
    set $N5020, $I101
    set $N5021, 2
    add $N5019, $N5020, $N5021
    set $I5016, $N5019
    set $P5028, fb_tmp_67[$I5016]
    set $P5030, $P5028
    goto if321_end650
  if321_else649:
    null $P5029
    set $P5030, $P5029
  if321_end650:
    unless_null $P5030, vivi_322651
    nqp_get_sc_object $P5031, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P5030, $P5031
  vivi_322651:
    find_lex $P5032, "$fate"
    find_lex $P5033, "$cursor"
    set fb_tmp_68, $P101
    repr_defined $I5017, fb_tmp_68
    unless $I5017 goto if323_else652 
    set $N5023, $I101
    set $N5024, 1
    add $N5022, $N5023, $N5024
    set $I5018, $N5022
    set $P5034, fb_tmp_68[$I5018]
    set $P5036, $P5034
    goto if323_end653
  if323_else652:
    null $P5035
    set $P5036, $P5035
  if323_end653:
    unless_null $P5036, vivi_324654
    nqp_get_sc_object $P5037, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P5036, $P5037
  vivi_324654:
    find_lex $P5038, "%seen"
    $P5039 = $P5026."mergesubrule"($I5014, $P5030, $P5032, $P5033, $P5036, $P5038)
  if318_end645:
    set $N5026, $I101
    set $N5027, 3
    add $N5025, $N5026, $N5027
    set $I5019, $N5025
    set $I101, $I5019
    set $I5020, $I101
    goto while312_test631 
  while312_done635:
    find_lex $I5021, "$i"
    set $N5029, $I5021
    set $N5030, 1
    add $N5028, $N5029, $N5030
    set $I5022, $N5028
    store_lex "$i", $I5022
    .return ($I5022) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_140_1366375320.00413") :anon :lex :outer("cuid_121_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 365
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    nqp_get_sc_object $P5001, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "run" :subid("cuid_23_1366375320.00413") :anon :lex :outer("cuid_121_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 367
    .param pmc _lex_param_0 
    .param string _lex_param_1 
    .param int _lex_param_2 
    .lex "self", _lex_param_0 
    .lex "$target", _lex_param_1 
    .lex "$offset", _lex_param_2 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 3
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!nfa_object"
    repr_defined $I5001, $P5003
    if $I5001 goto unless326_end659 
.annotate 'line', 368
    nqp_disable_sc_write_barrier 
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 3
    nqp_decontainerize $P5007, _lex_param_0
    nqp_get_sc_object $P5008, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 3
    repr_get_attr_obj $P5009, $P5007, $P5008, "$!states"
    nqp_get_sc_object $P5010, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 26
    nqp_nfa_from_statelist $P5006, $P5009, $P5010
    repr_bind_attr_obj $P5004, $P5005, "$!nfa_object", $P5006
    nqp_enable_sc_write_barrier 
  unless326_end659:
    nqp_decontainerize $P5012, _lex_param_0
    nqp_get_sc_object $P5013, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 3
    repr_get_attr_obj $P5014, $P5012, $P5013, "$!nfa_object"
    nqp_nfa_run_proto $P5011, $P5014, _lex_param_1, _lex_param_2
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "run_alt" :subid("cuid_24_1366375320.00413") :anon :lex :outer("cuid_121_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 376
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
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 3
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!nfa_object"
    repr_defined $I5001, $P5003
    if $I5001 goto unless327_end661 
.annotate 'line', 377
    nqp_disable_sc_write_barrier 
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 3
    nqp_decontainerize $P5007, _lex_param_0
    nqp_get_sc_object $P5008, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 3
    repr_get_attr_obj $P5009, $P5007, $P5008, "$!states"
    nqp_get_sc_object $P5010, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 26
    nqp_nfa_from_statelist $P5006, $P5009, $P5010
    repr_bind_attr_obj $P5004, $P5005, "$!nfa_object", $P5006
    nqp_enable_sc_write_barrier 
  unless327_end661:
    nqp_decontainerize $P5011, _lex_param_0
    nqp_get_sc_object $P5012, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 3
    repr_get_attr_obj $P5013, $P5011, $P5012, "$!nfa_object"
    nqp_nfa_run_alt $P5013, _lex_param_1, _lex_param_2, _lex_param_3, _lex_param_4, _lex_param_5
    .return ($P5013) 
.end
.HLL "nqp"
.namespace []
.sub "generic" :subid("cuid_25_1366375320.00413") :anon :lex :outer("cuid_121_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 385
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 3
    repr_get_attr_int $I5001, $P5001, $P5002, "$!generic"
    .return ($I5001) 
.end
.HLL "nqp"
.namespace []
.sub "instantiate_generic" :subid("cuid_26_1366375320.00413") :anon :lex :outer("cuid_121_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 389
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5023 = 'cuid_141_1366375320.00413' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_143_1366375320.00413' 
    capture_lex $P5023 
    .lex "$copy", $P101 
    .lex "@copied_states", $P102 
    .lex "$from", $I101 
    .lex "self", _lex_param_0 
    .lex "$env", _lex_param_1 
    nqp_get_sc_object $P5001, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P101, $P5001
    new $P5002, 'QRPA'
    set $P102, $P5002
    set $I101, 0
    nqp_decontainerize $P5004, _lex_param_0
    repr_instance_of $P5003, $P5004
    set $P101, $P5003
    nqp_decontainerize $P5008, _lex_param_0
    nqp_get_sc_object $P5009, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 3
    repr_get_attr_obj $P5010, $P5008, $P5009, "$!states"
    set $P5005, $P5010
    iter $P5007, $P5010
  for_next662:
    unless $P5007, for_done664
    shift $P5012, $P5007
  for_redo663:
    .const 'Sub' $P5011 = 'cuid_141_1366375320.00413' 
    capture_lex $P5011
    $P5005 = $P5011($P5012)
    goto for_next662
  for_done664:
    nqp_get_sc_object $P5013, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 3
    setattribute $P101, $P5013, "$!states", $P102
    nqp_get_sc_object $P5014, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 3
    nqp_decontainerize $P5015, _lex_param_0
    nqp_get_sc_object $P5016, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 3
    repr_get_attr_obj $P5017, $P5015, $P5016, "$!edges"
    setattribute $P101, $P5014, "$!edges", $P5017
    set $I101, 0
    set $P5018, $P102
    iter $P5020, $P102
  for_next683:
    unless $P5020, for_done685
    shift $P5022, $P5020
  for_redo684:
    .const 'Sub' $P5021 = 'cuid_143_1366375320.00413' 
    capture_lex $P5021
    $P5018 = $P5021($P5022)
    goto for_next683
  for_done685:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_141_1366375320.00413") :anon :lex :outer("cuid_26_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 393
    .param pmc _lex_param_0 
    .lex "@values", _lex_param_0 
    find_lex $P5001, "@copied_states"
    repr_clone $P5002, _lex_param_0
    push $P5001, $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_143_1366375320.00413") :anon :lex :outer("cuid_26_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 402
    .param pmc _lex_param_0 
    .const 'Sub' $P5006 = 'cuid_142_1366375320.00413' 
    capture_lex $P5006 
    .lex "@output_values", $P101 
    .lex "$i", $I101 
    .lex "$n", $I102 
    .lex "@values", _lex_param_0 
    .local pmc tmp_4 
    new $P5001, 'QRPA'
    set $P101, $P5001
    set $I101, 0
    set $I102, 0
    set $I101, 0
    elements $I5001, _lex_param_0
    set $I102, $I5001
  while328_test665:
    set $N5001, $I101
    set $N5002, $I102
    islt $I5002, $N5001, $N5002
    box $P5005, $I5002
    set $P5004, $P5005
    unless $I5002 goto while328_done669 
  while328_redo667:
    .const 'Sub' $P5002 = 'cuid_142_1366375320.00413' 
    capture_lex $P5002
    $P5003 = $P5002()
    set $P5004, $P5003
    goto while328_test665 
  while328_done669:
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
.sub "" :subid("cuid_142_1366375320.00413") :anon :lex :outer("cuid_143_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 406
    .lex "$act", $P101 
    .lex "$arg", $P102 
    .lex "$to", $P103 
    .local pmc fb_tmp_69 
    .local pmc fb_tmp_70 
    .local pmc fb_tmp_71 
    nqp_get_sc_object $P5001, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P102, $P5002
    nqp_get_sc_object $P5003, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P103, $P5003
    find_lex $P5004, "@values"
    set fb_tmp_69, $P5004
    repr_defined $I5001, fb_tmp_69
    unless $I5001 goto if329_else670 
    find_lex $I5002, "$i"
    set $P5005, fb_tmp_69[$I5002]
    set $P5007, $P5005
    goto if329_end671
  if329_else670:
    null $P5006
    set $P5007, $P5006
  if329_end671:
    unless_null $P5007, vivi_330672
    nqp_get_sc_object $P5008, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P5007, $P5008
  vivi_330672:
    set $P101, $P5007
    find_lex $P5009, "@values"
    set fb_tmp_70, $P5009
    repr_defined $I5003, fb_tmp_70
    unless $I5003 goto if331_else673 
    find_lex $I5004, "$i"
    set $N5002, $I5004
    set $N5003, 1
    add $N5001, $N5002, $N5003
    set $I5005, $N5001
    set $P5010, fb_tmp_70[$I5005]
    set $P5012, $P5010
    goto if331_end674
  if331_else673:
    null $P5011
    set $P5012, $P5011
  if331_end674:
    unless_null $P5012, vivi_332675
    nqp_get_sc_object $P5013, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P5012, $P5013
  vivi_332675:
    set $P102, $P5012
    find_lex $P5014, "@values"
    set fb_tmp_71, $P5014
    repr_defined $I5006, fb_tmp_71
    unless $I5006 goto if333_else676 
    find_lex $I5007, "$i"
    set $N5005, $I5007
    set $N5006, 2
    add $N5004, $N5005, $N5006
    set $I5008, $N5004
    set $P5015, fb_tmp_71[$I5008]
    set $P5017, $P5015
    goto if333_end677
  if333_else676:
    null $P5016
    set $P5017, $P5016
  if333_end677:
    unless_null $P5017, vivi_334678
    nqp_get_sc_object $P5018, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P5017, $P5018
  vivi_334678:
    set $P103, $P5017
    set $N5007, $P101
    find_lex $P5019, "$EDGE_GENERIC_VAR"
    set $N5008, $P5019
    iseq $I5009, $N5007, $N5008
    unless $I5009 goto if335_end680 
.annotate 'line', 410
    find_lex $P5020, "$env"
    set $S5001, $P102
    exists $I5010, $P5020[$S5001]
    unless $I5010 goto if336_else681 
.annotate 'line', 411
.annotate 'line', 412
    find_lex $P5021, "$copy"
.annotate 'line', 413
    nqp_get_sc_object $P5022, "6F03D67C6A0A511F6F9FDA0C4D1E063D61830D12-1366375318.27176", 34
    find_lex $P5024, "$env"
    set $S5002, $P102
    set $P5023, $P5024[$S5002]
    $P5025 = $P5022."new"($P5023, "literal" :named("rxtype"))
    find_lex $I5011, "$from"
    $P5021."literal"($P5025, $I5011, $P103)
    find_lex $P5026, "@values"
    find_lex $I5012, "$i"
    find_lex $P5027, "$EDGE_EPSILON"
    set $P5026[$I5012], $P5027
    find_lex $P5028, "@values"
    find_lex $I5013, "$i"
    set $N5010, $I5013
    set $N5011, 1
    add $N5009, $N5010, $N5011
    set $I5014, $N5009
    box $P5029, 0
    set $P5028[$I5014], $P5029
    find_lex $P5030, "@values"
    find_lex $I5015, "$i"
    set $N5013, $I5015
    set $N5014, 2
    add $N5012, $N5013, $N5014
    set $I5016, $N5012
    box $P5031, 0
    set $P5030[$I5016], $P5031
    set $P5038, $P5031
    goto if336_end682
  if336_else681:
.annotate 'line', 419
    find_lex $P5032, "@values"
    find_lex $I5017, "$i"
    find_lex $P5033, "$EDGE_FATE"
    set $P5032[$I5017], $P5033
    find_lex $P5034, "@values"
    find_lex $I5018, "$i"
    set $N5016, $I5018
    set $N5017, 1
    add $N5015, $N5016, $N5017
    set $I5019, $N5015
    box $P5035, 0
    set $P5034[$I5019], $P5035
    find_lex $P5036, "@values"
    find_lex $I5020, "$i"
    set $N5019, $I5020
    set $N5020, 2
    add $N5018, $N5019, $N5020
    set $I5021, $N5018
    box $P5037, 0
    set $P5036[$I5021], $P5037
    set $P5038, $P5037
  if336_end682:
  if335_end680:
    find_lex $I5022, "$i"
    set $N5022, $I5022
    set $N5023, 3
    add $N5021, $N5022, $N5023
    set $I5023, $N5021
    store_lex "$i", $I5023
    .return ($I5023) 
.end
.HLL "nqp"
.namespace []
.sub "__dump" :subid("cuid_27_1366375320.00413") :anon :lex :outer("cuid_121_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 433
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .const 'Sub' $P5015 = 'cuid_144_1366375320.00413' 
    capture_lex $P5015 
    .lex "$subindent", $P101 
    .lex "$st", $P102 
    .lex "self", _lex_param_0 
    .lex "$dumper", _lex_param_1 
    .lex "$label", _lex_param_2 
    nqp_get_sc_object $P5001, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P102, $P5002
.annotate 'line', 434
    $P5003 = _lex_param_1."newIndent"()
    set $P101, $P5003
.annotate 'line', 435
    "&print"("[")
    box $P5004, 0
    set $P102, $P5004
    nqp_decontainerize $P5008, _lex_param_0
    nqp_get_sc_object $P5009, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 3
    repr_get_attr_obj $P5010, $P5008, $P5009, "$!states"
    set $P5005, $P5010
    iter $P5007, $P5010
  for_next686:
    unless $P5007, for_done688
    shift $P5012, $P5007
  for_redo687:
    .const 'Sub' $P5011 = 'cuid_144_1366375320.00413' 
    capture_lex $P5011
    $P5005 = $P5011($P5012)
    goto for_next686
  for_done688:
.annotate 'line', 441
    _lex_param_1."deleteIndent"()
.annotate 'line', 442
    $P5013 = _lex_param_1."indent"()
    $P5014 = "&print"("\n", $P5013, "]")
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_144_1366375320.00413") :anon :lex :outer("cuid_27_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 437
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 438
    find_lex $P5001, "$subindent"
    set $S5004, $P5001
    concat $S5003, "\n", $S5004
    concat $S5002, $S5003, "'%d' => [%s]"
    new $P5002, 'QRPA'
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
.sub "" :subid("cuid_146_1366375320.00413") :anon :lex :outer("cuid_145_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 452
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
.sub "" :subid("cuid_79_1366375320.00413") :anon :lex :outer("cuid_145_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 460
    .param pmc _lex_param_0 
    .const 'Sub' $P5064 = 'cuid_28_1366375320.00413' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_29_1366375320.00413' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_30_1366375320.00413' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_31_1366375320.00413' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_32_1366375320.00413' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_33_1366375320.00413' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_34_1366375320.00413' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_35_1366375320.00413' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_36_1366375320.00413' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_37_1366375320.00413' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_38_1366375320.00413' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_39_1366375320.00413' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_40_1366375320.00413' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_41_1366375320.00413' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_42_1366375320.00413' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_43_1366375320.00413' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_44_1366375320.00413' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_45_1366375320.00413' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_46_1366375320.00413' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_47_1366375320.00413' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_48_1366375320.00413' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_49_1366375320.00413' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_50_1366375320.00413' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_51_1366375320.00413' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_52_1366375320.00413' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_53_1366375320.00413' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_54_1366375320.00413' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_55_1366375320.00413' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_56_1366375320.00413' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_57_1366375320.00413' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_58_1366375320.00413' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_59_1366375320.00413' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_60_1366375320.00413' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_61_1366375320.00413' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_62_1366375320.00413' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_63_1366375320.00413' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_64_1366375320.00413' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_65_1366375320.00413' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_66_1366375320.00413' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_67_1366375320.00413' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_68_1366375320.00413' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_69_1366375320.00413' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_70_1366375320.00413' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_71_1366375320.00413' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_72_1366375320.00413' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_73_1366375320.00413' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_74_1366375320.00413' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_75_1366375320.00413' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_76_1366375320.00413' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_77_1366375320.00413' 
    capture_lex $P5064 
    .const 'Sub' $P5064 = 'cuid_78_1366375320.00413' 
    capture_lex $P5064 
    .lex "$?PACKAGE", $P101 
    .lex "$?ROLE", $P102 
    .lex "$NO_CAPS", $P103 
    .lex "$NO_RESTART", $P104 
    .lex "$RESTART", $P105 
    .lex "@start_result", $P106 
    .lex "$pass_mark", $P107 
    .lex "@EMPTY", $P108 
    .lex "$?CLASS", _lex_param_0 
    nqp_get_sc_object $P5001, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P103, $P5001
    nqp_get_sc_object $P5002, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P104, $P5002
    nqp_get_sc_object $P5003, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P105, $P5003
    new $P5004, 'QRPA'
    set $P106, $P5004
    nqp_get_sc_object $P5005, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P107, $P5005
    new $P5006, 'QRPA'
    set $P108, $P5006
    .const 'Sub' $P5007 = 'cuid_28_1366375320.00413' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_29_1366375320.00413' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_30_1366375320.00413' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_31_1366375320.00413' 
    capture_lex $P5010
    new $P5011, 'Hash'
    set $P103, $P5011
    .const 'Sub' $P5012 = 'cuid_32_1366375320.00413' 
    capture_lex $P5012
    .const 'Sub' $P5013 = 'cuid_33_1366375320.00413' 
    capture_lex $P5013
    box $P5014, 0
    set $P104, $P5014
    box $P5015, 1
    set $P105, $P5015
    .const 'Sub' $P5016 = 'cuid_34_1366375320.00413' 
    capture_lex $P5016
    .const 'Sub' $P5017 = 'cuid_35_1366375320.00413' 
    capture_lex $P5017
    .const 'Sub' $P5018 = 'cuid_36_1366375320.00413' 
    capture_lex $P5018
    .const 'Sub' $P5019 = 'cuid_37_1366375320.00413' 
    capture_lex $P5019
    .const 'Sub' $P5020 = 'cuid_38_1366375320.00413' 
    capture_lex $P5020
    box $P5021, 1
    set $P107, $P5021
    .const 'Sub' $P5022 = 'cuid_39_1366375320.00413' 
    capture_lex $P5022
    .const 'Sub' $P5023 = 'cuid_40_1366375320.00413' 
    capture_lex $P5023
    .const 'Sub' $P5024 = 'cuid_41_1366375320.00413' 
    capture_lex $P5024
    .const 'Sub' $P5025 = 'cuid_42_1366375320.00413' 
    capture_lex $P5025
    .const 'Sub' $P5026 = 'cuid_43_1366375320.00413' 
    capture_lex $P5026
    .const 'Sub' $P5027 = 'cuid_44_1366375320.00413' 
    capture_lex $P5027
    .const 'Sub' $P5028 = 'cuid_45_1366375320.00413' 
    capture_lex $P5028
    .const 'Sub' $P5029 = 'cuid_46_1366375320.00413' 
    capture_lex $P5029
    new $P5030, 'QRPA'
    set $P108, $P5030
    .const 'Sub' $P5031 = 'cuid_47_1366375320.00413' 
    capture_lex $P5031
    .const 'Sub' $P5032 = 'cuid_48_1366375320.00413' 
    capture_lex $P5032
    .const 'Sub' $P5033 = 'cuid_49_1366375320.00413' 
    capture_lex $P5033
    .const 'Sub' $P5034 = 'cuid_50_1366375320.00413' 
    capture_lex $P5034
    .const 'Sub' $P5035 = 'cuid_51_1366375320.00413' 
    capture_lex $P5035
    .const 'Sub' $P5036 = 'cuid_52_1366375320.00413' 
    capture_lex $P5036
    .const 'Sub' $P5037 = 'cuid_53_1366375320.00413' 
    capture_lex $P5037
    .const 'Sub' $P5038 = 'cuid_54_1366375320.00413' 
    capture_lex $P5038
    .const 'Sub' $P5039 = 'cuid_55_1366375320.00413' 
    capture_lex $P5039
    .const 'Sub' $P5040 = 'cuid_56_1366375320.00413' 
    capture_lex $P5040
    .const 'Sub' $P5041 = 'cuid_57_1366375320.00413' 
    capture_lex $P5041
    .const 'Sub' $P5042 = 'cuid_58_1366375320.00413' 
    capture_lex $P5042
    .const 'Sub' $P5043 = 'cuid_59_1366375320.00413' 
    capture_lex $P5043
    .const 'Sub' $P5044 = 'cuid_60_1366375320.00413' 
    capture_lex $P5044
    .const 'Sub' $P5045 = 'cuid_61_1366375320.00413' 
    capture_lex $P5045
    .const 'Sub' $P5046 = 'cuid_62_1366375320.00413' 
    capture_lex $P5046
    .const 'Sub' $P5047 = 'cuid_63_1366375320.00413' 
    capture_lex $P5047
    .const 'Sub' $P5048 = 'cuid_64_1366375320.00413' 
    capture_lex $P5048
    .const 'Sub' $P5049 = 'cuid_65_1366375320.00413' 
    capture_lex $P5049
    .const 'Sub' $P5050 = 'cuid_66_1366375320.00413' 
    capture_lex $P5050
    .const 'Sub' $P5051 = 'cuid_67_1366375320.00413' 
    capture_lex $P5051
    .const 'Sub' $P5052 = 'cuid_68_1366375320.00413' 
    capture_lex $P5052
    .const 'Sub' $P5053 = 'cuid_69_1366375320.00413' 
    capture_lex $P5053
    .const 'Sub' $P5054 = 'cuid_70_1366375320.00413' 
    capture_lex $P5054
    .const 'Sub' $P5055 = 'cuid_71_1366375320.00413' 
    capture_lex $P5055
    .const 'Sub' $P5056 = 'cuid_72_1366375320.00413' 
    capture_lex $P5056
    .const 'Sub' $P5057 = 'cuid_73_1366375320.00413' 
    capture_lex $P5057
    .const 'Sub' $P5058 = 'cuid_74_1366375320.00413' 
    capture_lex $P5058
    .const 'Sub' $P5059 = 'cuid_75_1366375320.00413' 
    capture_lex $P5059
    .const 'Sub' $P5060 = 'cuid_76_1366375320.00413' 
    capture_lex $P5060
    .const 'Sub' $P5061 = 'cuid_77_1366375320.00413' 
    capture_lex $P5061
    .const 'Sub' $P5062 = 'cuid_78_1366375320.00413' 
    capture_lex $P5062
    getinterp $P5063
    set $P5063, $P5063['lexpad']
    .return ($P5063) 
.end
.HLL "nqp"
.namespace []
.sub "orig" :subid("cuid_28_1366375320.00413") :anon :lex :outer("cuid_79_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 471
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5002, _lex_param_0
    find_lex $P5003, "$?CLASS"
    repr_get_attr_obj $P5004, $P5002, $P5003, "$!shared"
    nqp_get_sc_object $P5005, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 32
    getattribute $P5001, $P5004, $P5005, "$!orig"
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "target" :subid("cuid_29_1366375320.00413") :anon :lex :outer("cuid_79_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 472
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    find_lex $P5002, "$?CLASS"
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!shared"
    nqp_get_sc_object $P5004, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 32
    repr_get_attr_str $S5001, $P5003, $P5004, "$!target"
    .return ($S5001) 
.end
.HLL "nqp"
.namespace []
.sub "from" :subid("cuid_30_1366375320.00413") :anon :lex :outer("cuid_79_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 473
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    find_lex $P5002, "$?CLASS"
    repr_get_attr_int $I5001, $P5001, $P5002, "$!from"
    .return ($I5001) 
.end
.HLL "nqp"
.namespace []
.sub "pos" :subid("cuid_31_1366375320.00413") :anon :lex :outer("cuid_79_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 474
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    find_lex $P5002, "$?CLASS"
    repr_get_attr_int $I5001, $P5001, $P5002, "$!pos"
    .return ($I5001) 
.end
.HLL "nqp"
.namespace []
.sub "CAPHASH" :subid("cuid_32_1366375320.00413") :anon :lex :outer("cuid_79_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 477
    .param pmc _lex_param_0 
    .const 'Sub' $P5069 = 'cuid_98_1366375320.00413' 
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
    .local pmc fb_tmp_72 
    .local pmc fb_tmp_73 
    .local pmc tmp_5 
    nqp_get_sc_object $P5001, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P101, $P5001
    new $P5002, 'Hash'
    set $P102, $P5002
    nqp_get_sc_object $P5003, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P103, $P5003
    set $S101, ""
    nqp_get_sc_object $P5004, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P104, $P5004
    set $I101, 0
    set $I102, 0
    nqp_get_sc_object $P5005, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P105, $P5005
    nqp_get_sc_object $P5006, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P106, $P5006
    nqp_get_sc_object $P5007, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
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
    unless $I5001 goto if338_end692 
    nqp_decontainerize $P5013, _lex_param_0
    find_lex $P5014, "$?CLASS"
    repr_get_attr_obj $P5015, $P5013, $P5014, "$!regexsub"
    defined $I5003, $P5015
    set $I5004, $I5003
  if338_end692:
    unless $I5004 goto if337_end690 
.annotate 'line', 489
    nqp_decontainerize $P5016, _lex_param_0
    find_lex $P5017, "$?CLASS"
    repr_get_attr_obj $P5018, $P5016, $P5017, "$!regexsub"
    can $I5005, $P5018, "CAPS"
    unless $I5005 goto if339_else693 
.annotate 'line', 490
    nqp_decontainerize $P5019, _lex_param_0
    find_lex $P5020, "$?CLASS"
    repr_get_attr_obj $P5021, $P5019, $P5020, "$!regexsub"
    $P5022 = $P5021."CAPS"()
    set $P5024, $P5022
    goto if339_end694
  if339_else693:
    null $P5023
    set $P5024, $P5023
  if339_end694:
    set $P102, $P5024
    isnull $I5007, $P102
    not $I5006, $I5007
    box $P5026, $I5006
    set $P5025, $P5026
    unless $I5006 goto if341_end698 
    set $P5025, $P102
  if341_end698:
    set $P5035, $P5025
    unless $P5025 goto if340_end696 
.annotate 'line', 491
    iter $P5027, $P102
    set $P103, $P5027
  while342_test699:
    set $P5034, $P103
    unless $P103 goto while342_done703 
  while342_redo701:
.annotate 'line', 493
    shift $P5028, $P103
    $P5029 = $P5028."key"()
    set $S5001, $P5029
    set $S101, $S5001
    set $P5030, $P102[$S101]
    set $N5001, $P5030
    set $N5002, 2
    isge $I5008, $N5001, $N5002
    box $P5033, $I5008
    set $P5032, $P5033
    unless $I5008 goto if343_end705 
    new $P5031, 'QRPA'
    set $P101[$S101], $P5031
    set $P5032, $P5031
  if343_end705:
    set $P5034, $P5032
    goto while342_test699 
  while342_done703:
    set $P5035, $P5034
  if340_end696:
  if337_end690:
    nqp_decontainerize $P5036, _lex_param_0
    find_lex $P5037, "$?CLASS"
    repr_get_attr_obj $P5038, $P5036, $P5037, "$!cstack"
    isnull $I5010, $P5038
    not $I5009, $I5010
    box $P5043, $I5009
    set $P5042, $P5043
    unless $I5009 goto if345_end709 
    nqp_decontainerize $P5039, _lex_param_0
    find_lex $P5040, "$?CLASS"
    repr_get_attr_obj $P5041, $P5039, $P5040, "$!cstack"
    set $P5042, $P5041
  if345_end709:
    unless $P5042 goto if344_end707 
.annotate 'line', 499
    nqp_decontainerize $P5044, _lex_param_0
    find_lex $P5045, "$?CLASS"
    repr_get_attr_obj $P5046, $P5044, $P5045, "$!cstack"
    set $P104, $P5046
    elements $I5011, $P104
    set $I102, $I5011
  while346_test710:
    set $N5003, $I101
    set $N5004, $I102
    islt $I5012, $N5003, $N5004
    box $P5068, $I5012
    set $P5067, $P5068
    unless $I5012 goto while346_done714 
  while346_redo712:
.annotate 'line', 502
    set $P5047, $P104[$I101]
    set $P105, $P5047
.annotate 'line', 504
    $P5048 = $P105."MATCH"()
    set $P106, $P5048
    find_lex $P5050, "$?CLASS"
    getattribute $P5049, $P105, $P5050, "$!name"
    set $P107, $P5049
    isnull $I5014, $P107
    not $I5013, $I5014
    set $I5016, $I5013
    unless $I5013 goto if348_end718 
    defined $I5015, $P107
    set $I5016, $I5015
  if348_end718:
    unless $I5016 goto if347_end716 
.annotate 'line', 506
    set $S5002, $P107
    index $I5018, $S5002, "=", 0
    set $N5005, $I5018
    set $N5006, 0
    islt $I5017, $N5005, $N5006
    unless $I5017 goto if349_else719 
.annotate 'line', 507
    set fb_tmp_72, $P102
    repr_defined $I5020, fb_tmp_72
    unless $I5020 goto if351_else723 
    set $S5003, $P107
    set $P5051, fb_tmp_72[$S5003]
    set $P5053, $P5051
    goto if351_end724
  if351_else723:
    null $P5052
    set $P5053, $P5052
  if351_end724:
    unless_null $P5053, vivi_352725
    nqp_get_sc_object $P5054, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P5053, $P5054
  vivi_352725:
    set $N5007, $P5053
    set $N5008, 2
    isge $I5019, $N5007, $N5008
    unless $I5019 goto if350_else721 
    set fb_tmp_73, $P101
    repr_defined $I5021, fb_tmp_73
    unless $I5021 goto if353_else726 
    set $S5004, $P107
    set $P5055, fb_tmp_73[$S5004]
    set $P5057, $P5055
    goto if353_end727
  if353_else726:
    null $P5056
    set $P5057, $P5056
  if353_end727:
    unless_null $P5057, vivi_354728
    nqp_get_sc_object $P5058, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P5057, $P5058
  vivi_354728:
    push $P5057, $P106
    set $P5059, $P5057
    goto if350_end722
  if350_else721:
    set $S5005, $P107
    set $P101[$S5005], $P106
    set $P5059, $P106
  if350_end722:
    set $P5066, $P5059
    goto if349_end720
  if349_else719:
.annotate 'line', 512
    set $S5006, $P107
    split $P5063, "=", $S5006
    set $P5060, $P5063
    iter $P5062, $P5063
  for_next737:
    unless $P5062, for_done739
    shift $P5065, $P5062
  for_redo738:
    .const 'Sub' $P5064 = 'cuid_98_1366375320.00413' 
    capture_lex $P5064
    $P5060 = $P5064($P5065)
    goto for_next737
  for_done739:
    set $P5066, $P5060
  if349_end720:
  if347_end716:
    box $P5067, $I101
    set tmp_5, $P5067
    set $N5010, tmp_5
    set $N5011, 1
    add $N5009, $N5010, $N5011
    set $I5022, $N5009
    set $I101, $I5022
    set $P5067, tmp_5
    goto while346_test710 
  while346_done714:
  if344_end707:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_98_1366375320.00413") :anon :lex :outer("cuid_32_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 513
    .param pmc _lex_param_0 
    .lex "$name", _lex_param_0 
    .local pmc fb_tmp_74 
    .local pmc fb_tmp_75 
    find_lex $P5001, "%caplist"
    set fb_tmp_74, $P5001
    repr_defined $I5002, fb_tmp_74
    unless $I5002 goto if356_else731 
    set $S5001, _lex_param_0
    set $P5002, fb_tmp_74[$S5001]
    set $P5004, $P5002
    goto if356_end732
  if356_else731:
    null $P5003
    set $P5004, $P5003
  if356_end732:
    unless_null $P5004, vivi_357733
    nqp_get_sc_object $P5005, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P5004, $P5005
  vivi_357733:
    set $N5001, $P5004
    set $N5002, 2
    isge $I5001, $N5001, $N5002
    unless $I5001 goto if355_else729 
    find_lex $P5006, "$caps"
    set fb_tmp_75, $P5006
    repr_defined $I5003, fb_tmp_75
    unless $I5003 goto if358_else734 
    set $S5002, _lex_param_0
    set $P5007, fb_tmp_75[$S5002]
    set $P5009, $P5007
    goto if358_end735
  if358_else734:
    null $P5008
    set $P5009, $P5008
  if358_end735:
    unless_null $P5009, vivi_359736
    nqp_get_sc_object $P5010, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P5009, $P5010
  vivi_359736:
    find_lex $P5011, "$submatch"
    push $P5009, $P5011
    set $P5014, $P5009
    goto if355_end730
  if355_else729:
    find_lex $P5012, "$caps"
    set $S5003, _lex_param_0
    find_lex $P5013, "$submatch"
    set $P5012[$S5003], $P5013
    set $P5014, $P5013
  if355_end730:
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "!cursor_init" :subid("cuid_33_1366375320.00413") :anon :lex :outer("cuid_79_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 526
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
    if haz_param_14, default744
    box $P5018, 0
    set _lex_param_2, $P5018
  default744:
    if haz_param_15, default745
    nqp_get_sc_object $P5019, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set _lex_param_3, $P5019
  default745:
    if haz_param_16, default746
    nqp_get_sc_object $P5020, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set _lex_param_4, $P5020
  default746:
    nqp_get_sc_object $P5001, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P101, $P5001
.annotate 'line', 527
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."CREATE"()
    set $P101, $P5003
    if _lex_param_4 goto unless360_end741 
.annotate 'line', 528
    nqp_get_sc_object $P5005, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 32
    repr_instance_of $P5004, $P5005
    set _lex_param_4, $P5004
    nqp_get_sc_object $P5006, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 32
    setattribute _lex_param_4, $P5006, "$!orig", _lex_param_1
    nqp_get_sc_object $P5007, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 32
    set $S5002, _lex_param_1
    find_encoding $I5001, "ucs4"
    trans_encoding $S5001, $S5002, $I5001
    repr_bind_attr_str _lex_param_4, $P5007, "$!target", $S5001
    nqp_get_sc_object $P5008, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 32
    repr_bind_attr_int _lex_param_4, $P5008, "$!highwater", 0
    nqp_get_sc_object $P5009, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 32
    new $P5010, 'ResizableStringArray'
    setattribute _lex_param_4, $P5009, "@!highexpect", $P5010
    nqp_get_sc_object $P5011, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 32
    new $P5012, 'Hash'
    setattribute _lex_param_4, $P5011, "%!marks", $P5012
  unless360_end741:
    find_lex $P5013, "$?CLASS"
    setattribute $P101, $P5013, "$!shared", _lex_param_4
    defined $I5002, _lex_param_3
    unless $I5002 goto if361_else742 
.annotate 'line', 538
    find_lex $P5014, "$?CLASS"
    repr_bind_attr_int $P101, $P5014, "$!from", -1
    find_lex $P5015, "$?CLASS"
    set $I5003, _lex_param_3
    repr_bind_attr_int $P101, $P5015, "$!pos", $I5003
    goto if361_end743
  if361_else742:
.annotate 'line', 542
    find_lex $P5016, "$?CLASS"
    set $I5004, _lex_param_2
    repr_bind_attr_int $P101, $P5016, "$!from", $I5004
    find_lex $P5017, "$?CLASS"
    set $I5005, _lex_param_2
    repr_bind_attr_int $P101, $P5017, "$!pos", $I5005
  if361_end743:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "!cursor_start_all" :subid("cuid_34_1366375320.00413") :anon :lex :outer("cuid_79_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 554
    .param pmc _lex_param_0 
    .lex "$new", $P101 
    .lex "$sub", $P102 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
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
    unless_null $P5011, vivi_362747
    set $P5011, $P102
  vivi_362747:
    setattribute $P101, $P5010, "$!regexsub", $P5011
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_obj $P5014, $P5012, $P5013, "$!restart"
    defined $I5001, $P5014
    unless $I5001 goto if363_else748 
.annotate 'line', 559
    find_lex $P5015, "$?CLASS"
    nqp_decontainerize $P5016, _lex_param_0
    find_lex $P5017, "$?CLASS"
    repr_get_attr_int $I5002, $P5016, $P5017, "$!pos"
    repr_bind_attr_int $P101, $P5015, "$!pos", $I5002
    nqp_decontainerize $P5018, _lex_param_0
    find_lex $P5019, "$?CLASS"
    repr_get_attr_obj $P5020, $P5018, $P5019, "$!cstack"
    unless $P5020 goto if364_end751 
    find_lex $P5021, "$?CLASS"
    nqp_decontainerize $P5023, _lex_param_0
    find_lex $P5024, "$?CLASS"
    repr_get_attr_obj $P5025, $P5023, $P5024, "$!cstack"
    repr_clone $P5022, $P5025
    setattribute $P101, $P5021, "$!cstack", $P5022
  if364_end751:
    find_lex $P5026, "@start_result"
    set $P5026[0], $P101
    find_lex $P5027, "@start_result"
    nqp_decontainerize $P5028, _lex_param_0
    find_lex $P5029, "$?CLASS"
    repr_get_attr_obj $P5030, $P5028, $P5029, "$!shared"
    nqp_get_sc_object $P5031, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 32
    repr_get_attr_str $S5001, $P5030, $P5031, "$!target"
    box $P5032, $S5001
    set $P5027[1], $P5032
    find_lex $P5033, "@start_result"
    find_lex $P5034, "$?CLASS"
    nqp_decontainerize $P5035, _lex_param_0
    find_lex $P5036, "$?CLASS"
    repr_get_attr_int $I5003, $P5035, $P5036, "$!from"
    repr_bind_attr_int $P101, $P5034, "$!from", $I5003
    box $P5037, $I5003
    set $P5033[2], $P5037
    find_lex $P5038, "@start_result"
    find_lex $P5039, "$?CLASS"
    set $P5038[3], $P5039
    find_lex $P5040, "@start_result"
    find_lex $P5041, "$?CLASS"
    nqp_decontainerize $P5043, _lex_param_0
    find_lex $P5044, "$?CLASS"
    repr_get_attr_obj $P5045, $P5043, $P5044, "$!bstack"
    repr_clone $P5042, $P5045
    setattribute $P101, $P5041, "$!bstack", $P5042
    set $P5040[4], $P5042
    find_lex $P5046, "@start_result"
    find_lex $P5047, "$RESTART"
    set $P5046[5], $P5047
    find_lex $P5048, "@start_result"
    set $P5070, $P5048
    goto if363_end749
  if363_else748:
.annotate 'line', 570
    find_lex $P5049, "$?CLASS"
    repr_bind_attr_int $P101, $P5049, "$!pos", -3
    find_lex $P5050, "@start_result"
    set $P5050[0], $P101
    find_lex $P5051, "@start_result"
    nqp_decontainerize $P5052, _lex_param_0
    find_lex $P5053, "$?CLASS"
    repr_get_attr_obj $P5054, $P5052, $P5053, "$!shared"
    nqp_get_sc_object $P5055, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 32
    repr_get_attr_str $S5002, $P5054, $P5055, "$!target"
    box $P5056, $S5002
    set $P5051[1], $P5056
    find_lex $P5057, "@start_result"
    find_lex $P5058, "$?CLASS"
    nqp_decontainerize $P5059, _lex_param_0
    find_lex $P5060, "$?CLASS"
    repr_get_attr_int $I5004, $P5059, $P5060, "$!pos"
    repr_bind_attr_int $P101, $P5058, "$!from", $I5004
    box $P5061, $I5004
    set $P5057[2], $P5061
    find_lex $P5062, "@start_result"
    find_lex $P5063, "$?CLASS"
    set $P5062[3], $P5063
    find_lex $P5064, "@start_result"
    find_lex $P5065, "$?CLASS"
    new $P5066, 'ResizableIntegerArray'
    setattribute $P101, $P5065, "$!bstack", $P5066
    set $P5064[4], $P5066
    find_lex $P5067, "@start_result"
    find_lex $P5068, "$NO_RESTART"
    set $P5067[5], $P5068
    find_lex $P5069, "@start_result"
    set $P5070, $P5069
  if363_end749:
    .return ($P5070) 
.end
.HLL "nqp"
.namespace []
.sub "!cursor_start_cur" :subid("cuid_35_1366375320.00413") :anon :lex :outer("cuid_79_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 583
    .param pmc _lex_param_0 
    .lex "$new", $P101 
    .lex "$sub", $P102 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
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
    unless_null $P5011, vivi_365752
    set $P5011, $P102
  vivi_365752:
    setattribute $P101, $P5010, "$!regexsub", $P5011
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_obj $P5014, $P5012, $P5013, "$!restart"
    defined $I5001, $P5014
    unless $I5001 goto if366_end754 
.annotate 'line', 588
    box $P5015, "!cursor_start_cur cannot restart a cursor"
    die $P5015
  if366_end754:
    find_lex $P5016, "$?CLASS"
    repr_bind_attr_int $P101, $P5016, "$!pos", -3
    find_lex $P5017, "$?CLASS"
    nqp_decontainerize $P5018, _lex_param_0
    find_lex $P5019, "$?CLASS"
    repr_get_attr_int $I5002, $P5018, $P5019, "$!pos"
    repr_bind_attr_int $P101, $P5017, "$!from", $I5002
    find_lex $P5020, "$?CLASS"
    new $P5021, 'ResizableIntegerArray'
    setattribute $P101, $P5020, "$!bstack", $P5021
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "!cursor_start_subcapture" :subid("cuid_36_1366375320.00413") :anon :lex :outer("cuid_79_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 597
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$new", $P101 
    .lex "self", _lex_param_0 
    .lex "$from", _lex_param_1 
    nqp_get_sc_object $P5001, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
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
.sub "!cursor_capture" :subid("cuid_37_1366375320.00413") :anon :lex :outer("cuid_79_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 605
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
    if $I5001 goto unless367_end756 
    nqp_decontainerize $P5007, _lex_param_0
    find_lex $P5008, "$?CLASS"
    new $P5009, 'QRPA'
    repr_bind_attr_obj $P5007, $P5008, "$!cstack", $P5009
  unless367_end756:
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
.sub "!cursor_push_cstack" :subid("cuid_38_1366375320.00413") :anon :lex :outer("cuid_79_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 617
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$capture", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    find_lex $P5002, "$?CLASS"
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!cstack"
    defined $I5001, $P5003
    if $I5001 goto unless368_end758 
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    new $P5006, 'QRPA'
    repr_bind_attr_obj $P5004, $P5005, "$!cstack", $P5006
  unless368_end758:
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
.sub "!cursor_pass" :subid("cuid_39_1366375320.00413") :anon :lex :outer("cuid_79_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 624
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
    if haz_param_17, default765
    nqp_get_sc_object $P5017, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set _lex_param_2, $P5017
  default765:
    if haz_param_18, default766
    nqp_get_sc_object $P5018, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set _lex_param_3, $P5018
  default766:
    nqp_decontainerize $P5001, _lex_param_0
    find_lex $P5002, "$?CLASS"
    find_lex $P5003, "$pass_mark"
    repr_bind_attr_obj $P5001, $P5002, "$!match", $P5003
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_bind_attr_int $P5004, $P5005, "$!pos", _lex_param_1
    unless _lex_param_3 goto if369_end760 
    nqp_decontainerize $P5006, _lex_param_0
    find_lex $P5007, "$?CLASS"
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_obj $P5010, $P5008, $P5009, "$!regexsub"
    repr_bind_attr_obj $P5006, $P5007, "$!restart", $P5010
  if369_end760:
    if _lex_param_3 goto unless370_end762 
    nqp_decontainerize $P5011, _lex_param_0
    find_lex $P5012, "$?CLASS"
    null $P5013
    repr_bind_attr_obj $P5011, $P5012, "$!bstack", $P5013
  unless370_end762:
    set $P5016, _lex_param_2
    unless _lex_param_2 goto if371_end764 
.annotate 'line', 631
    nqp_decontainerize $P5014, _lex_param_0
    $P5015 = $P5014."!reduce"(_lex_param_2)
    set $P5016, $P5015
  if371_end764:
    .return ($P5016) 
.end
.HLL "nqp"
.namespace []
.sub "!cursor_fail" :subid("cuid_40_1366375320.00413") :anon :lex :outer("cuid_79_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 634
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
.sub "!cursor_pos" :subid("cuid_41_1366375320.00413") :anon :lex :outer("cuid_79_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 640
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
.sub "!cursor_next" :subid("cuid_42_1366375320.00413") :anon :lex :outer("cuid_79_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 644
    .param pmc _lex_param_0 
    .const 'Sub' $P5012 = 'cuid_99_1366375320.00413' 
    capture_lex $P5012 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    find_lex $P5002, "$?CLASS"
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!restart"
    defined $I5001, $P5003
    unless $I5001 goto if372_else767 
.annotate 'line', 645
.annotate 'line', 646
    nqp_decontainerize $P5007, _lex_param_0
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!restart"
    $P5008 = $P5006($P5007)
    set $P5011, $P5008
    goto if372_end768
  if372_else767:
    .const 'Sub' $P5009 = 'cuid_99_1366375320.00413' 
    capture_lex $P5009
    $P5010 = $P5009()
    set $P5011, $P5010
  if372_end768:
    .return ($P5011) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_99_1366375320.00413") :anon :lex :outer("cuid_42_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 648
    .lex "$cur", $P101 
    nqp_get_sc_object $P5001, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P101, $P5001
.annotate 'line', 649
    find_lex $P5003, "self"
    nqp_decontainerize $P5002, $P5003
    $P5004 = $P5002."!cursor_start_cur"()
    set $P101, $P5004
.annotate 'line', 650
    $P101."!cursor_fail"()
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "!cursor_more" :subid("cuid_43_1366375320.00413") :anon :lex :outer("cuid_79_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 655
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :slurpy :named 
    .lex "$new", $P101 
    .lex "self", _lex_param_0 
    .lex "%opts", _lex_param_1 
    .local pmc fb_tmp_76 
    .local pmc fb_tmp_77 
    nqp_get_sc_object $P5001, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P101, $P5001
    root_new $P102, ['parrot';'Continuation']
    set_label $P102, lexotic_769
    .lex "RETURN", $P102
    set fb_tmp_76, _lex_param_1
    repr_defined $I5001, fb_tmp_76
    unless $I5001 goto if374_else773 
    set $P5002, fb_tmp_76["ex"]
    set $P5004, $P5002
    goto if374_end774
  if374_else773:
    null $P5003
    set $P5004, $P5003
  if374_end774:
    unless_null $P5004, vivi_375775
    nqp_get_sc_object $P5005, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P5004, $P5005
  vivi_375775:
    unless $P5004 goto if373_end772 
.annotate 'line', 656
    nqp_decontainerize $P5007, _lex_param_0
    $P5008 = $P5007."!cursor_next"()
    find_lex $P5006, "RETURN"
    $P5009 = $P5006($P5008)
  if373_end772:
.annotate 'line', 657
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
    set fb_tmp_77, _lex_param_1
    repr_defined $I5002, fb_tmp_77
    unless $I5002 goto if378_else780 
    set $P5018, fb_tmp_77["ov"]
    set $P5020, $P5018
    goto if378_end781
  if378_else780:
    null $P5019
    set $P5020, $P5019
  if378_end781:
    unless_null $P5020, vivi_379782
    nqp_get_sc_object $P5021, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P5020, $P5021
  vivi_379782:
    set $P5026, $P5020
    if $P5020 goto unless377_end779 
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
  unless377_end779:
    unless $P5026 goto if376_else776 
    nqp_decontainerize $P5028, _lex_param_0
    find_lex $P5029, "$?CLASS"
    repr_get_attr_int $I5006, $P5028, $P5029, "$!from"
    set $N5004, $I5006
    set $N5005, 1
    add $N5003, $N5004, $N5005
    box $P5033, $N5003
    set $P5032, $P5033
    goto if376_end777
  if376_else776:
    nqp_decontainerize $P5030, _lex_param_0
    find_lex $P5031, "$?CLASS"
    repr_get_attr_int $I5007, $P5030, $P5031, "$!pos"
    box $P5034, $I5007
    set $P5032, $P5034
  if376_end777:
    set $I5008, $P5032
    repr_bind_attr_int $P101, $P5017, "$!pos", $I5008
.annotate 'line', 662
    nqp_decontainerize $P5035, _lex_param_0
    find_lex $P5036, "$?CLASS"
    repr_get_attr_obj $P5037, $P5035, $P5036, "$!regexsub"
    $P5038 = $P5037($P101)
    goto lexotic_770
  lexotic_769:
    .get_results ($P5038)
  lexotic_770:
    .return ($P5038) 
.end
.HLL "nqp"
.namespace []
.sub "!reduce" :subid("cuid_44_1366375320.00413") :anon :lex :outer("cuid_79_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 665
    .param pmc _lex_param_0 
    .param string _lex_param_1 
    .lex "$actions", $P101 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    nqp_get_sc_object $P5001, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P101, $P5001
    find_dynamic_lex $P5002, "$*ACTIONS"
    set $P101, $P5002
    isnull $I5002, $P101
    not $I5001, $I5002
    set $I5004, $I5001
    unless $I5001 goto if381_end786 
    can $I5003, $P101, _lex_param_1
    set $I5004, $I5003
  if381_end786:
    box $P5008, $I5004
    set $P5007, $P5008
    unless $I5004 goto if380_end784 
.annotate 'line', 667
    nqp_decontainerize $P5004, _lex_param_0
    $P5005 = $P5004."MATCH"()
    find_method $P5003, $P101, _lex_param_1
    $P5006 = $P5003($P101, $P5005)
    set $P5007, $P5006
  if380_end784:
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "!reduce_with_match" :subid("cuid_45_1366375320.00413") :anon :lex :outer("cuid_79_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 671
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 
    .param pmc _lex_param_3 
    .lex "$actions", $P101 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    .lex "$key", _lex_param_2 
    .lex "$match", _lex_param_3 
    nqp_get_sc_object $P5001, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P101, $P5001
    find_dynamic_lex $P5002, "$*ACTIONS"
    set $P101, $P5002
    isnull $I5002, $P101
    not $I5001, $I5002
    set $I5004, $I5001
    unless $I5001 goto if383_end790 
    set $S5001, _lex_param_1
    can $I5003, $P101, $S5001
    set $I5004, $I5003
  if383_end790:
    box $P5006, $I5004
    set $P5005, $P5006
    unless $I5004 goto if382_end788 
.annotate 'line', 673
    set $S5002, _lex_param_1
    find_method $P5003, $P101, $S5002
    $P5004 = $P5003($P101, _lex_param_3, _lex_param_2)
    set $P5005, $P5004
  if382_end788:
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "!shared" :subid("cuid_46_1366375320.00413") :anon :lex :outer("cuid_79_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 677
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    find_lex $P5002, "$?CLASS"
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!shared"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "!protoregex" :subid("cuid_47_1366375320.00413") :anon :lex :outer("cuid_79_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 680
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5042 = 'cuid_100_1366375320.00413' 
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
    .local pmc fb_tmp_78 
    nqp_get_sc_object $P5001, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P102, $P5002
    new $P5003, 'QRPA'
    set $P103, $P5003
    set $I101, 0
    new $P5004, 'QRPA'
    set $P104, $P5004
    nqp_get_sc_object $P5005, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P105, $P5005
    nqp_get_sc_object $P5006, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P106, $P5006
    nqp_decontainerize $P5007, _lex_param_0
    find_lex $P5008, "$?CLASS"
    repr_get_attr_obj $P5009, $P5007, $P5008, "$!shared"
    set $P101, $P5009
.annotate 'line', 683
    nqp_decontainerize $P5011, _lex_param_0
    get_how $P5010, $P5011
    nqp_decontainerize $P5012, _lex_param_0
    .const 'Sub' $P5014 = 'cuid_100_1366375320.00413' 
    capture_lex $P5014
    newclosure $P5013, $P5014
    $P5015 = $P5010."cache"($P5012, _lex_param_1, $P5013)
    set $P102, $P5015
.annotate 'line', 684
    nqp_get_sc_object $P5016, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 32
    repr_get_attr_str $S5001, $P101, $P5016, "$!target"
    nqp_decontainerize $P5017, _lex_param_0
    find_lex $P5018, "$?CLASS"
    repr_get_attr_int $I5001, $P5017, $P5018, "$!pos"
    $P5019 = $P102."run"($S5001, $I5001)
    set $P103, $P5019
    nqp_get_sc_object $P5020, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 32
    repr_get_attr_int $I5002, $P101, $P5020, "$!highwater"
    set $I101, $I5002
    nqp_decontainerize $P5021, _lex_param_0
    find_lex $P5022, "$?CLASS"
    repr_get_attr_int $I5004, $P5021, $P5022, "$!pos"
    set $N5001, $I5004
    set $N5002, $I101
    isgt $I5003, $N5001, $N5002
    unless $I5003 goto if384_end792 
.annotate 'line', 688
    nqp_get_sc_object $P5023, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 32
    nqp_decontainerize $P5024, _lex_param_0
    find_lex $P5025, "$?CLASS"
    repr_get_attr_int $I5005, $P5024, $P5025, "$!pos"
    repr_bind_attr_int $P101, $P5023, "$!highwater", $I5005
  if384_end792:
.annotate 'line', 693
    $P5026 = $P102."states"()
    set fb_tmp_78, $P5026
    repr_defined $I5006, fb_tmp_78
    unless $I5006 goto if385_else793 
    set $P5027, fb_tmp_78[0]
    set $P5029, $P5027
    goto if385_end794
  if385_else793:
    null $P5028
    set $P5029, $P5028
  if385_end794:
    unless_null $P5029, vivi_386795
    nqp_get_sc_object $P5030, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P5029, $P5030
  vivi_386795:
    set $P104, $P5029
  while387_test796:
    set $P5038, $P103
    unless $P103 goto while387_done800 
  while387_redo798:
.annotate 'line', 696
    pop $I5007, $P103
    set $P5031, $P104[$I5007]
    set $P106, $P5031
.annotate 'line', 699
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
    unless $I5008 goto if388_end802 
    find_lex $P5035, "@EMPTY"
    set $P103, $P5035
    set $P5036, $P103
  if388_end802:
    set $P5038, $P5036
    goto while387_test796 
  while387_done800:
    set $P5039, $P105
    defined $I5010, $P5039
    if $I5010, defor803
.annotate 'line', 702
    nqp_decontainerize $P5040, _lex_param_0
    $P5041 = $P5040."!cursor_start_cur"()
    set $P5039, $P5041
  defor803:
    .return ($P5039) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_100_1366375320.00413") :anon :lex :outer("cuid_47_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 683

    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    find_lex $P5003, "$name"
    $P5004 = $P5001."!protoregex_nfa"($P5003)
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "!protoregex_nfa" :subid("cuid_48_1366375320.00413") :anon :lex :outer("cuid_79_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 705
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5026 = 'cuid_101_1366375320.00413' 
    capture_lex $P5026 
    .const 'Sub' $P5026 = 'cuid_102_1366375320.00413' 
    capture_lex $P5026 
    .lex "%protorx", $P101 
    .lex "$nfa", $P102 
    .lex "@fates", $P103 
    .lex "$start", $I101 
    .lex "$fate", $I102 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    .local pmc fb_tmp_79 
    .local pmc fb_tmp_80 
    new $P5001, 'Hash'
    set $P101, $P5001
    nqp_get_sc_object $P5002, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P102, $P5002
    new $P5003, 'QRPA'
    set $P103, $P5003
    set $I101, 0
    set $I102, 0
.annotate 'line', 706
    nqp_decontainerize $P5005, _lex_param_0
    get_how $P5004, $P5005
    nqp_decontainerize $P5006, _lex_param_0
    .const 'Sub' $P5008 = 'cuid_101_1366375320.00413' 
    capture_lex $P5008
    newclosure $P5007, $P5008
    $P5009 = $P5004."cache"($P5006, "!protoregex_table", $P5007)
    set $P101, $P5009
.annotate 'line', 707
    nqp_get_sc_object $P5010, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 3
    $P5011 = $P5010."new"()
    set $P102, $P5011
.annotate 'line', 708
    $P5012 = $P102."states"()
    set fb_tmp_79, $P5012
    repr_defined $I5001, fb_tmp_79
    unless $I5001 goto if389_else804 
    set $P5013, fb_tmp_79[0]
    set $P5015, $P5013
    goto if389_end805
  if389_else804:
    null $P5014
    set $P5015, $P5014
  if389_end805:
    unless_null $P5015, vivi_390806
    nqp_get_sc_object $P5016, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P5015, $P5016
  vivi_390806:
    set $P103, $P5015
    set $I101, 1
    set $I102, 0
    set $S5001, _lex_param_1
    exists $I5002, $P101[$S5001]
    unless $I5002 goto if391_end808 
.annotate 'line', 711
    set fb_tmp_80, $P101
    repr_defined $I5003, fb_tmp_80
    unless $I5003 goto if392_else809 
    set $S5002, _lex_param_1
    set $P5020, fb_tmp_80[$S5002]
    set $P5022, $P5020
    goto if392_end810
  if392_else809:
    null $P5021
    set $P5022, $P5021
  if392_end810:
    unless_null $P5022, vivi_393811
    nqp_get_sc_object $P5023, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P5022, $P5023
  vivi_393811:
    set $P5017, $P5022
    iter $P5019, $P5022
  for_next812:
    unless $P5019, for_done814
    shift $P5025, $P5019
  for_redo813:
    .const 'Sub' $P5024 = 'cuid_102_1366375320.00413' 
    capture_lex $P5024
    $P5017 = $P5024($P5025)
    goto for_next812
  for_done814:
  if391_end808:
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_101_1366375320.00413") :anon :lex :outer("cuid_48_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 706

    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    $P5003 = $P5001."!protoregex_table"()
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_102_1366375320.00413") :anon :lex :outer("cuid_48_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 712
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
.annotate 'line', 715
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
.sub "!protoregex_table" :subid("cuid_49_1366375320.00413") :anon :lex :outer("cuid_79_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 721
    .param pmc _lex_param_0 
    .const 'Sub' $P5011 = 'cuid_104_1366375320.00413' 
    capture_lex $P5011 
    .lex "%protorx", $P101 
    .lex "self", _lex_param_0 
    new $P5001, 'Hash'
    set $P101, $P5001
.annotate 'line', 723
    nqp_decontainerize $P5006, _lex_param_0
    get_how $P5005, $P5006
    nqp_decontainerize $P5007, _lex_param_0
    $P5008 = $P5005."methods"($P5007)
    set $P5002, $P5008
    iter $P5004, $P5008
  for_next822:
    unless $P5004, for_done824
    shift $P5010, $P5004
  for_redo823:
    .const 'Sub' $P5009 = 'cuid_104_1366375320.00413' 
    capture_lex $P5009
    $P5002 = $P5009($P5010)
    goto for_next822
  for_done824:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_104_1366375320.00413") :anon :lex :outer("cuid_49_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 723
    .param pmc _lex_param_0 
    .const 'Sub' $P5006 = 'cuid_103_1366375320.00413' 
    capture_lex $P5006 
    .lex "$methname", $S101 
    .lex "$sympos", $I101 
    .lex "$meth", _lex_param_0 
    set $S101, ""
    set $I101, 0
.annotate 'line', 724
    $P5001 = _lex_param_0."name"()
    set $S5001, $P5001
    set $S101, $S5001
    index $I5001, $S101, ":sym<", 0
    set $I101, $I5001
    set $N5001, $I101
    set $N5002, 0
    isgt $I5002, $N5001, $N5002
    box $P5005, $I5002
    set $P5004, $P5005
    unless $I5002 goto if394_end816 
    .const 'Sub' $P5002 = 'cuid_103_1366375320.00413' 
    capture_lex $P5002
    $P5003 = $P5002()
    set $P5004, $P5003
  if394_end816:
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_103_1366375320.00413") :anon :lex :outer("cuid_104_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 726
    .lex "$prefix", $S101 
    .local pmc fb_tmp_81 
    set $S101, ""
    find_lex $S5002, "$methname"
    find_lex $I5001, "$sympos"
    substr $S5001, $S5002, 0, $I5001
    set $S101, $S5001
    find_lex $P5001, "%protorx"
    exists $I5002, $P5001[$S101]
    if $I5002 goto unless395_end818 
    find_lex $P5002, "%protorx"
    new $P5003, 'QRPA'
    set $P5002[$S101], $P5003
  unless395_end818:
    find_lex $P5004, "%protorx"
    set fb_tmp_81, $P5004
    repr_defined $I5003, fb_tmp_81
    unless $I5003 goto if396_else819 
    set $P5005, fb_tmp_81[$S101]
    set $P5007, $P5005
    goto if396_end820
  if396_else819:
    null $P5006
    set $P5007, $P5006
  if396_end820:
    unless_null $P5007, vivi_397821
    nqp_get_sc_object $P5008, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P5007, $P5008
  vivi_397821:
    find_lex $S5003, "$methname"
    box $P5009, $S5003
    push $P5007, $P5009
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "!alt" :subid("cuid_50_1366375320.00413") :anon :lex :outer("cuid_79_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 735
    .param pmc _lex_param_0 
    .param int _lex_param_1 
    .param string _lex_param_2 
    .param pmc _lex_param_3 :optional 
    .param int haz_param_19 :opt_flag 
    .const 'Sub' $P5023 = 'cuid_105_1366375320.00413' 
    capture_lex $P5023 
    .lex "$shared", $P101 
    .lex "$highwater", $I101 
    .lex "$nfa", $P102 
    .lex "self", _lex_param_0 
    .lex "$pos", _lex_param_1 
    .lex "$name", _lex_param_2 
    .lex "@labels", _lex_param_3 
    if haz_param_19, default827
    new $P5022, 'QRPA'
    set _lex_param_3, $P5022
  default827:
    nqp_get_sc_object $P5001, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P101, $P5001
    set $I101, 0
    nqp_get_sc_object $P5002, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P102, $P5002
    nqp_decontainerize $P5003, _lex_param_0
    find_lex $P5004, "$?CLASS"
    repr_get_attr_obj $P5005, $P5003, $P5004, "$!shared"
    set $P101, $P5005
    nqp_get_sc_object $P5006, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 32
    repr_get_attr_int $I5001, $P101, $P5006, "$!highwater"
    set $I101, $I5001
    set $N5001, _lex_param_1
    set $N5002, $I101
    isgt $I5002, $N5001, $N5002
    unless $I5002 goto if398_end826 
.annotate 'line', 739
    nqp_get_sc_object $P5007, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 32
    repr_bind_attr_int $P101, $P5007, "$!highwater", _lex_param_1
  if398_end826:
.annotate 'line', 744
    nqp_decontainerize $P5009, _lex_param_0
    get_how $P5008, $P5009
    nqp_decontainerize $P5010, _lex_param_0
    .const 'Sub' $P5012 = 'cuid_105_1366375320.00413' 
    capture_lex $P5012
    newclosure $P5011, $P5012
    $P5013 = $P5008."cache"($P5010, _lex_param_2, $P5011)
    set $P102, $P5013
.annotate 'line', 745
    nqp_get_sc_object $P5014, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 32
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
.sub "" :subid("cuid_105_1366375320.00413") :anon :lex :outer("cuid_50_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 744

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
.sub "!alt_nfa" :subid("cuid_51_1366375320.00413") :anon :lex :outer("cuid_79_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 748
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param string _lex_param_2 
    .const 'Sub' $P5016 = 'cuid_106_1366375320.00413' 
    capture_lex $P5016 
    .lex "$nfa", $P101 
    .lex "@fates", $P102 
    .lex "$start", $I101 
    .lex "$fate", $I102 
    .lex "self", _lex_param_0 
    .lex "$regex", _lex_param_1 
    .lex "$name", _lex_param_2 
    .local pmc fb_tmp_82 
    nqp_get_sc_object $P5001, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P101, $P5001
    new $P5002, 'QRPA'
    set $P102, $P5002
    set $I101, 0
    set $I102, 0
.annotate 'line', 749
    nqp_get_sc_object $P5003, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 3
    $P5004 = $P5003."new"()
    set $P101, $P5004
.annotate 'line', 750
    $P5005 = $P101."states"()
    set fb_tmp_82, $P5005
    repr_defined $I5001, fb_tmp_82
    unless $I5001 goto if399_else828 
    set $P5006, fb_tmp_82[0]
    set $P5008, $P5006
    goto if399_end829
  if399_else828:
    null $P5007
    set $P5008, $P5007
  if399_end829:
    unless_null $P5008, vivi_400830
    nqp_get_sc_object $P5009, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P5008, $P5009
  vivi_400830:
    set $P102, $P5008
    set $I101, 1
    set $I102, 0
.annotate 'line', 753
    $P5013 = _lex_param_1."ALT_NFA"(_lex_param_2)
    set $P5010, $P5013
    iter $P5012, $P5013
  for_next831:
    unless $P5012, for_done833
    shift $P5015, $P5012
  for_redo832:
    .const 'Sub' $P5014 = 'cuid_106_1366375320.00413' 
    capture_lex $P5014
    $P5010 = $P5014($P5015)
    goto for_next831
  for_done833:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_106_1366375320.00413") :anon :lex :outer("cuid_51_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 753
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    .local pmc tmp_6 
    find_lex $P5001, "@fates"
    find_lex $I5001, "$fate"
    find_lex $I5002, "$fate"
    box $P5002, $I5002
    set $P5001[$I5001], $P5002
.annotate 'line', 755
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
.sub "!precompute_nfas" :subid("cuid_52_1366375320.00413") :anon :lex :outer("cuid_79_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 761
    .param pmc _lex_param_0 
    .const 'Sub' $P5023 = 'cuid_109_1366375320.00413' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_110_1366375320.00413' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_112_1366375320.00413' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_114_1366375320.00413' 
    capture_lex $P5023 
    .lex "%protorx", $P101 
    .lex "&precomp_alt_nfas", $P102 
    .lex "self", _lex_param_0 
    new $P5001, 'Hash'
    set $P101, $P5001
    .const 'Sub' $P5002 = 'cuid_109_1366375320.00413' 
    capture_lex $P5002
    set $P102, $P5002
.annotate 'line', 763
    nqp_decontainerize $P5004, _lex_param_0
    get_how $P5003, $P5004
    nqp_decontainerize $P5005, _lex_param_0
    .const 'Sub' $P5007 = 'cuid_110_1366375320.00413' 
    capture_lex $P5007
    newclosure $P5006, $P5007
    $P5008 = $P5003."cache"($P5005, "!protoregex_table", $P5006)
    set $P101, $P5008
    set $P5009, $P101
    iter $P5011, $P101
  for_next839:
    unless $P5011, for_done841
    shift $P5013, $P5011
  for_redo840:
    .const 'Sub' $P5012 = 'cuid_112_1366375320.00413' 
    capture_lex $P5012
    $P5009 = $P5012($P5013)
    goto for_next839
  for_done841:
.annotate 'line', 776
    nqp_decontainerize $P5018, _lex_param_0
    get_how $P5017, $P5018
    nqp_decontainerize $P5019, _lex_param_0
    $P5020 = $P5017."methods"($P5019)
    set $P5014, $P5020
    iter $P5016, $P5020
  for_next847:
    unless $P5016, for_done849
    shift $P5022, $P5016
  for_redo848:
    .const 'Sub' $P5021 = 'cuid_114_1366375320.00413' 
    capture_lex $P5021
    $P5014 = $P5021($P5022)
    goto for_next847
  for_done849:
    .return ($P5014) 
.end
.HLL "nqp"
.namespace []
.sub "precomp_alt_nfas" :subid("cuid_109_1366375320.00413") :anon :lex :outer("cuid_52_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 769
    .param pmc _lex_param_0 
    .const 'Sub' $P5009 = 'cuid_108_1366375320.00413' 
    capture_lex $P5009 
    .lex "$meth", _lex_param_0 
    can $I5001, _lex_param_0, "ALT_NFAS"
    box $P5008, $I5001
    set $P5007, $P5008
    unless $I5001 goto if401_end835 
.annotate 'line', 770
.annotate 'line', 771
    $P5004 = _lex_param_0."ALT_NFAS"()
    set $P5001, $P5004
    iter $P5003, $P5004
  for_next836:
    unless $P5003, for_done838
    shift $P5006, $P5003
  for_redo837:
    .const 'Sub' $P5005 = 'cuid_108_1366375320.00413' 
    capture_lex $P5005
    $P5001 = $P5005($P5006)
    goto for_next836
  for_done838:
    set $P5007, $P5001
  if401_end835:
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_108_1366375320.00413") :anon :lex :outer("cuid_109_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 771
    .param pmc _lex_param_0 
    .const 'Sub' $P5009 = 'cuid_107_1366375320.00413' 
    capture_lex $P5009 
    .lex "$name", _lex_param_0 
.annotate 'line', 772
    find_lex $P5003, "self"
    nqp_decontainerize $P5002, $P5003
    get_how $P5001, $P5002
    find_lex $P5005, "self"
    nqp_decontainerize $P5004, $P5005
    .const 'Sub' $P5007 = 'cuid_107_1366375320.00413' 
    capture_lex $P5007
    newclosure $P5006, $P5007
    $P5008 = $P5001."cache"($P5004, _lex_param_0, $P5006)
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_107_1366375320.00413") :anon :lex :outer("cuid_108_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 772

    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    find_lex $P5003, "$meth"
    find_lex $P5004, "$name"
    $P5005 = $P5001."!alt_nfa"($P5003, $P5004)
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_110_1366375320.00413") :anon :lex :outer("cuid_52_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 763

    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    $P5003 = $P5001."!protoregex_table"()
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_112_1366375320.00413") :anon :lex :outer("cuid_52_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 764
    .param pmc _lex_param_0 
    .const 'Sub' $P5010 = 'cuid_111_1366375320.00413' 
    capture_lex $P5010 
    .lex "$_", _lex_param_0 
.annotate 'line', 765
    find_lex $P5003, "self"
    nqp_decontainerize $P5002, $P5003
    get_how $P5001, $P5002
    find_lex $P5005, "self"
    nqp_decontainerize $P5004, $P5005
    $P5006 = _lex_param_0."key"()
    .const 'Sub' $P5008 = 'cuid_111_1366375320.00413' 
    capture_lex $P5008
    newclosure $P5007, $P5008
    $P5009 = $P5001."cache"($P5004, $P5006, $P5007)
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_111_1366375320.00413") :anon :lex :outer("cuid_112_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 765

    find_lex $P5002, "self"
    nqp_decontainerize $P5001, $P5002
    find_lex $P5003, "$_"
    $P5004 = $P5003."key"()
    $P5005 = $P5001."!protoregex_nfa"($P5004)
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_114_1366375320.00413") :anon :lex :outer("cuid_52_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 776
    .param pmc _lex_param_0 
    .const 'Sub' $P5009 = 'cuid_113_1366375320.00413' 
    capture_lex $P5009 
    .lex "$meth", _lex_param_0 
.annotate 'line', 777
    "&precomp_alt_nfas"(_lex_param_0)
    can $I5001, _lex_param_0, "NESTED_CODES"
    box $P5008, $I5001
    set $P5007, $P5008
    unless $I5001 goto if402_end843 
.annotate 'line', 778
.annotate 'line', 779
    $P5004 = _lex_param_0."NESTED_CODES"()
    set $P5001, $P5004
    iter $P5003, $P5004
  for_next844:
    unless $P5003, for_done846
    shift $P5006, $P5003
  for_redo845:
    .const 'Sub' $P5005 = 'cuid_113_1366375320.00413' 
    capture_lex $P5005
    $P5001 = $P5005($P5006)
    goto for_next844
  for_done846:
    set $P5007, $P5001
  if402_end843:
    .return ($P5007) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_113_1366375320.00413") :anon :lex :outer("cuid_114_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 779
    .param pmc _lex_param_0 
    .lex "$code", _lex_param_0 
.annotate 'line', 780
    $P5001 = "&precomp_alt_nfas"(_lex_param_0)
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "!dba" :subid("cuid_53_1366375320.00413") :anon :lex :outer("cuid_79_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 786
    .param pmc _lex_param_0 
    .param int _lex_param_1 
    .param string _lex_param_2 
    .lex "$shared", $P101 
    .lex "$highwater", $I101 
    .lex "$highexpect", $P102 
    .lex "self", _lex_param_0 
    .lex "$pos", _lex_param_1 
    .lex "$dba", _lex_param_2 
    nqp_get_sc_object $P5001, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P101, $P5001
    set $I101, 0
    nqp_get_sc_object $P5002, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P102, $P5002
    nqp_decontainerize $P5003, _lex_param_0
    find_lex $P5004, "$?CLASS"
    repr_get_attr_obj $P5005, $P5003, $P5004, "$!shared"
    set $P101, $P5005
    nqp_get_sc_object $P5006, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 32
    repr_get_attr_int $I5001, $P101, $P5006, "$!highwater"
    set $I101, $I5001
    set $N5001, _lex_param_1
    set $N5002, $I101
    isge $I5002, $N5001, $N5002
    box $P5011, $I5002
    set $P5010, $P5011
    unless $I5002 goto if403_end851 
.annotate 'line', 790
    nqp_get_sc_object $P5008, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 32
    getattribute $P5007, $P101, $P5008, "@!highexpect"
    set $P102, $P5007
    set $N5003, _lex_param_1
    set $N5004, $I101
    isgt $I5003, $N5003, $N5004
    unless $I5003 goto if404_end853 
.annotate 'line', 792
    assign $P102, 0
    nqp_get_sc_object $P5009, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 32
    repr_bind_attr_int $P101, $P5009, "$!highwater", _lex_param_1
  if404_end853:
    push $P102, _lex_param_2
    set $P5010, $P102
  if403_end851:
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "!highwater" :subid("cuid_54_1366375320.00413") :anon :lex :outer("cuid_79_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 800
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    find_lex $P5002, "$?CLASS"
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!shared"
    nqp_get_sc_object $P5004, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 32
    repr_get_attr_int $I5001, $P5003, $P5004, "$!highwater"
    .return ($I5001) 
.end
.HLL "nqp"
.namespace []
.sub "!highexpect" :subid("cuid_55_1366375320.00413") :anon :lex :outer("cuid_79_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 804
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5002, _lex_param_0
    find_lex $P5003, "$?CLASS"
    repr_get_attr_obj $P5004, $P5002, $P5003, "$!shared"
    nqp_get_sc_object $P5005, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 32
    getattribute $P5001, $P5004, $P5005, "@!highexpect"
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "!fresh_highexpect" :subid("cuid_56_1366375320.00413") :anon :lex :outer("cuid_79_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 808
    .param pmc _lex_param_0 
    .lex "@old", $P101 
    .lex "self", _lex_param_0 
    new $P5001, 'QRPA'
    set $P101, $P5001
    nqp_decontainerize $P5003, _lex_param_0
    find_lex $P5004, "$?CLASS"
    repr_get_attr_obj $P5005, $P5003, $P5004, "$!shared"
    nqp_get_sc_object $P5006, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 32
    getattribute $P5002, $P5005, $P5006, "@!highexpect"
    set $P101, $P5002
    nqp_decontainerize $P5007, _lex_param_0
    find_lex $P5008, "$?CLASS"
    repr_get_attr_obj $P5009, $P5007, $P5008, "$!shared"
    nqp_get_sc_object $P5010, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 32
    new $P5011, 'QRPA'
    setattribute $P5009, $P5010, "@!highexpect", $P5011
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "!set_highexpect" :subid("cuid_57_1366375320.00413") :anon :lex :outer("cuid_79_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 814
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "@highexpect", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    find_lex $P5002, "$?CLASS"
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!shared"
    nqp_get_sc_object $P5004, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 32
    setattribute $P5003, $P5004, "@!highexpect", _lex_param_1
    .return (_lex_param_1) 
.end
.HLL "nqp"
.namespace []
.sub "!clear_highwater" :subid("cuid_58_1366375320.00413") :anon :lex :outer("cuid_79_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 818
    .param pmc _lex_param_0 
    .lex "$highexpect", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P101, $P5001
    nqp_decontainerize $P5003, _lex_param_0
    find_lex $P5004, "$?CLASS"
    repr_get_attr_obj $P5005, $P5003, $P5004, "$!shared"
    nqp_get_sc_object $P5006, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 32
    getattribute $P5002, $P5005, $P5006, "@!highexpect"
    set $P101, $P5002
    assign $P101, 0
    nqp_decontainerize $P5007, _lex_param_0
    find_lex $P5008, "$?CLASS"
    repr_get_attr_obj $P5009, $P5007, $P5008, "$!shared"
    nqp_get_sc_object $P5010, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 32
    repr_bind_attr_int $P5009, $P5010, "$!highwater", -1
    .return (-1) 
.end
.HLL "nqp"
.namespace []
.sub "!BACKREF" :subid("cuid_59_1366375320.00413") :anon :lex :outer("cuid_79_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 824
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5036 = 'cuid_115_1366375320.00413' 
    capture_lex $P5036 
    .lex "$cur", $P101 
    .lex "$n", $I101 
    .lex "self", _lex_param_0 
    .lex "$name", _lex_param_1 
    .local pmc fb_tmp_83 
    .local pmc fb_tmp_84 
    .local pmc tmp_7 
    nqp_get_sc_object $P5001, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P101, $P5001
    set $I101, 0
.annotate 'line', 825
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start_cur"()
    set $P101, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!cstack"
    unless $P5006 goto if405_else854 
    nqp_decontainerize $P5007, _lex_param_0
    find_lex $P5008, "$?CLASS"
    repr_get_attr_obj $P5009, $P5007, $P5008, "$!cstack"
    elements $I5001, $P5009
    set $N5002, $I5001
    set $N5003, 1
    sub $N5001, $N5002, $N5003
    box $P5011, $N5001
    set $P5010, $P5011
    goto if405_end855
  if405_else854:
    box $P5012, -1
    set $P5010, $P5012
  if405_end855:
    set $I5002, $P5010
    set $I101, $I5002
    new $P5032, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5032, while406_handlers859
    push_eh $P5032
  while406_test856:
    set $N5004, $I101
    set $N5005, 0
    isge $I5003, $N5004, $N5005
    set $I5009, $I5003
    unless $I5003 goto if407_end862 
    nqp_decontainerize $P5014, _lex_param_0
    find_lex $P5015, "$?CLASS"
    repr_get_attr_obj $P5016, $P5014, $P5015, "$!cstack"
    set fb_tmp_83, $P5016
    repr_defined $I5005, fb_tmp_83
    unless $I5005 goto if409_else865 
    set $P5017, fb_tmp_83[$I101]
    set $P5019, $P5017
    goto if409_end866
  if409_else865:
    null $P5018
    set $P5019, $P5018
  if409_end866:
    unless_null $P5019, vivi_410867
    nqp_get_sc_object $P5020, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P5019, $P5020
  vivi_410867:
    find_lex $P5021, "$?CLASS"
    getattribute $P5013, $P5019, $P5021, "$!name"
    isnull $I5004, $P5013
    set $I5008, $I5004
    if $I5004 goto unless408_end864 
    nqp_decontainerize $P5023, _lex_param_0
    find_lex $P5024, "$?CLASS"
    repr_get_attr_obj $P5025, $P5023, $P5024, "$!cstack"
    set fb_tmp_84, $P5025
    repr_defined $I5007, fb_tmp_84
    unless $I5007 goto if411_else868 
    set $P5026, fb_tmp_84[$I101]
    set $P5028, $P5026
    goto if411_end869
  if411_else868:
    null $P5027
    set $P5028, $P5027
  if411_end869:
    unless_null $P5028, vivi_412870
    nqp_get_sc_object $P5029, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P5028, $P5029
  vivi_412870:
    find_lex $P5030, "$?CLASS"
    getattribute $P5022, $P5028, $P5030, "$!name"
    set $S5001, $P5022
    set $S5002, _lex_param_1
    isne $I5006, $S5001, $S5002
    set $I5008, $I5006
  unless408_end864:
    set $I5009, $I5008
  if407_end862:
    box $P5033, $I5009
    set $P5031, $P5033
    unless $I5009 goto while406_done860 
  while406_redo858:
    box $P5031, $I101
    set tmp_7, $P5031
    set $N5007, tmp_7
    set $N5008, 1
    sub $N5006, $N5007, $N5008
    set $I5010, $N5006
    set $I101, $I5010
    set $P5031, tmp_7
    goto while406_test856 
  while406_handlers859:
    .get_results ($P5032)
    pop_upto_eh $P5032
    getattribute $P5032, $P5032, 'type'
    eq $P5032, .CONTROL_LOOP_NEXT, while406_test856
    eq $P5032, .CONTROL_LOOP_REDO, while406_redo858
  while406_done860:
    pop_eh 
    set $N5006, $I101
    set $N5007, 0
    isge $I5010, $N5006, $N5007
    unless $I5010 goto if413_end872 
    .const 'Sub' $P5034 = 'cuid_115_1366375320.00413' 
    capture_lex $P5034
    $P5035 = $P5034()
  if413_end872:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_115_1366375320.00413") :anon :lex :outer("cuid_59_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 829
    .lex "$subcur", $P101 
    .lex "$litlen", $I101 
    .lex "$target", $S101 
    .local pmc fb_tmp_85 
    nqp_get_sc_object $P5001, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P101, $P5001
    set $I101, 0
    set $S101, ""
    find_lex $P5003, "self"
    nqp_decontainerize $P5002, $P5003
    find_lex $P5004, "$?CLASS"
    repr_get_attr_obj $P5005, $P5002, $P5004, "$!cstack"
    set fb_tmp_85, $P5005
    repr_defined $I5001, fb_tmp_85
    unless $I5001 goto if414_else873 
    find_lex $I5002, "$n"
    set $P5006, fb_tmp_85[$I5002]
    set $P5008, $P5006
    goto if414_end874
  if414_else873:
    null $P5007
    set $P5008, $P5007
  if414_end874:
    unless_null $P5008, vivi_415875
    nqp_get_sc_object $P5009, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P5008, $P5009
  vivi_415875:
    set $P101, $P5008
.annotate 'line', 831
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
    nqp_get_sc_object $P5016, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 32
    repr_get_attr_str $S5001, $P5015, $P5016, "$!target"
    set $S101, $S5001
    find_lex $P5018, "self"
    nqp_decontainerize $P5017, $P5018
    find_lex $P5019, "$?CLASS"
    repr_get_attr_int $I5005, $P5017, $P5019, "$!pos"
    substr $S5002, $S101, $I5005, $I101
.annotate 'line', 835
    $P5020 = $P101."from"()
    set $I5006, $P5020
    substr $S5003, $S101, $I5006, $I101
    iseq $I5004, $S5002, $S5003
    box $P5027, $I5004
    set $P5026, $P5027
    unless $I5004 goto if416_end877 
.annotate 'line', 833
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
  if416_end877:
    .return ($P5026) 
.end
.HLL "nqp"
.namespace []
.sub "!LITERAL" :subid("cuid_60_1366375320.00413") :anon :lex :outer("cuid_79_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 840
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
    if haz_param_20, default884
    set $I5010, 0
    set _lex_param_2, $I5010
  default884:
    nqp_get_sc_object $P5001, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P101, $P5001
    set $I101, 0
    set $S101, ""
.annotate 'line', 841
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start_cur"()
    set $P101, $P5003
    length $I5001, _lex_param_1
    set $I101, $I5001
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!shared"
    nqp_get_sc_object $P5007, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 32
    repr_get_attr_str $S5001, $P5006, $P5007, "$!target"
    set $S101, $S5001
    set $N5001, $I101
    set $N5002, 1
    islt $I5002, $N5001, $N5002
    set $I5008, $I5002
    if $I5002 goto unless418_end881 
    unless _lex_param_2 goto if419_else882 
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_int $I5004, $P5008, $P5009, "$!pos"
    substr $S5003, $S101, $I5004, $I101
    downcase $S5002, $S5003
    downcase $S5004, _lex_param_1
    iseq $I5003, $S5002, $S5004
    set $I5007, $I5003
    goto if419_end883
  if419_else882:
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5006, $P5010, $P5011, "$!pos"
    substr $S5005, $S101, $I5006, $I101
    iseq $I5005, $S5005, _lex_param_1
    set $I5007, $I5005
  if419_end883:
    set $I5008, $I5007
  unless418_end881:
    unless $I5008 goto if417_end879 
.annotate 'line', 844
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5009, $P5012, $P5013, "$!pos"
    set $N5004, $I5009
    set $N5005, $I101
    add $N5003, $N5004, $N5005
    $P5014 = $P101."!cursor_pass"($N5003)
  if417_end879:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "at" :subid("cuid_61_1366375320.00413") :anon :lex :outer("cuid_79_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 851
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    .lex "$pos", _lex_param_1 
    nqp_get_sc_object $P5001, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P101, $P5001
.annotate 'line', 852
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start_cur"()
    set $P101, $P5003
    set $N5001, _lex_param_1
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_int $I5002, $P5004, $P5005, "$!pos"
    set $N5002, $I5002
    iseq $I5001, $N5001, $N5002
    unless $I5001 goto if420_end886 
.annotate 'line', 853
    nqp_decontainerize $P5006, _lex_param_0
    find_lex $P5007, "$?CLASS"
    repr_get_attr_int $I5003, $P5006, $P5007, "$!pos"
    $P5008 = $P101."!cursor_pass"($I5003)
  if420_end886:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "before" :subid("cuid_62_1366375320.00413") :anon :lex :outer("cuid_79_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 857
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$orig_highwater", $I101 
    .lex "$orig_highexpect", $P101 
    .lex "$cur", $P102 
    .lex "self", _lex_param_0 
    .lex "$regex", _lex_param_1 
    set $I101, 0
    nqp_get_sc_object $P5001, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P102, $P5002
    nqp_decontainerize $P5003, _lex_param_0
    find_lex $P5004, "$?CLASS"
    repr_get_attr_obj $P5005, $P5003, $P5004, "$!shared"
    nqp_get_sc_object $P5006, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 32
    repr_get_attr_int $I5001, $P5005, $P5006, "$!highwater"
    set $I101, $I5001
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_obj $P5010, $P5008, $P5009, "$!shared"
    nqp_get_sc_object $P5011, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 32
    getattribute $P5007, $P5010, $P5011, "@!highexpect"
    set $P101, $P5007
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_obj $P5014, $P5012, $P5013, "$!shared"
    nqp_get_sc_object $P5015, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 32
    new $P5016, 'QRPA'
    setattribute $P5014, $P5015, "@!highexpect", $P5016
.annotate 'line', 861
    nqp_decontainerize $P5017, _lex_param_0
    $P5018 = $P5017."!cursor_start_cur"()
    set $P102, $P5018
    find_lex $P5019, "$?CLASS"
    nqp_decontainerize $P5020, _lex_param_0
    find_lex $P5021, "$?CLASS"
    repr_get_attr_int $I5002, $P5020, $P5021, "$!pos"
    repr_bind_attr_int $P102, $P5019, "$!pos", $I5002
.annotate 'line', 863
    $P5022 = _lex_param_1($P102)
    find_lex $P5023, "$?CLASS"
    repr_get_attr_int $I5004, $P5022, $P5023, "$!pos"
    set $N5001, $I5004
    set $N5002, 0
    isge $I5003, $N5001, $N5002
    unless $I5003 goto if421_else887 
.annotate 'line', 864
    nqp_decontainerize $P5024, _lex_param_0
    find_lex $P5025, "$?CLASS"
    repr_get_attr_int $I5005, $P5024, $P5025, "$!pos"
    $P5026 = $P102."!cursor_pass"($I5005, "before")
    goto if421_end888
  if421_else887:
    find_lex $P5027, "$?CLASS"
    repr_bind_attr_int $P102, $P5027, "$!pos", -3
  if421_end888:
    nqp_decontainerize $P5028, _lex_param_0
    find_lex $P5029, "$?CLASS"
    repr_get_attr_obj $P5030, $P5028, $P5029, "$!shared"
    nqp_get_sc_object $P5031, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 32
    repr_bind_attr_int $P5030, $P5031, "$!highwater", $I101
    nqp_decontainerize $P5032, _lex_param_0
    find_lex $P5033, "$?CLASS"
    repr_get_attr_obj $P5034, $P5032, $P5033, "$!shared"
    nqp_get_sc_object $P5035, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 32
    setattribute $P5034, $P5035, "@!highexpect", $P101
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "after" :subid("cuid_63_1366375320.00413") :anon :lex :outer("cuid_79_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 873
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
    nqp_get_sc_object $P5001, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P102, $P5002
    set $S101, ""
    nqp_get_sc_object $P5003, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P103, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!shared"
    nqp_get_sc_object $P5007, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 32
    repr_get_attr_int $I5001, $P5006, $P5007, "$!highwater"
    set $I101, $I5001
    nqp_decontainerize $P5009, _lex_param_0
    find_lex $P5010, "$?CLASS"
    repr_get_attr_obj $P5011, $P5009, $P5010, "$!shared"
    nqp_get_sc_object $P5012, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 32
    getattribute $P5008, $P5011, $P5012, "@!highexpect"
    set $P101, $P5008
    nqp_decontainerize $P5013, _lex_param_0
    find_lex $P5014, "$?CLASS"
    repr_get_attr_obj $P5015, $P5013, $P5014, "$!shared"
    nqp_get_sc_object $P5016, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 32
    new $P5017, 'ResizableStringArray'
    setattribute $P5015, $P5016, "@!highexpect", $P5017
.annotate 'line', 877
    nqp_decontainerize $P5018, _lex_param_0
    $P5019 = $P5018."!cursor_start_cur"()
    set $P102, $P5019
    nqp_decontainerize $P5020, _lex_param_0
    find_lex $P5021, "$?CLASS"
    repr_get_attr_obj $P5022, $P5020, $P5021, "$!shared"
    nqp_get_sc_object $P5023, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 32
    repr_get_attr_str $S5001, $P5022, $P5023, "$!target"
    set $S101, $S5001
    nqp_decontainerize $P5025, _lex_param_0
    find_lex $P5026, "$?CLASS"
    repr_get_attr_obj $P5027, $P5025, $P5026, "$!shared"
    repr_clone $P5024, $P5027
    set $P103, $P5024
    nqp_get_sc_object $P5028, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 32
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
.annotate 'line', 884
    $P5038 = _lex_param_1($P102)
    find_lex $P5039, "$?CLASS"
    repr_get_attr_int $I5009, $P5038, $P5039, "$!pos"
    set $N5007, $I5009
    set $N5008, 0
    isge $I5008, $N5007, $N5008
    unless $I5008 goto if422_else889 
.annotate 'line', 885
    nqp_decontainerize $P5040, _lex_param_0
    find_lex $P5041, "$?CLASS"
    repr_get_attr_int $I5010, $P5040, $P5041, "$!pos"
    $P5042 = $P102."!cursor_pass"($I5010, "after")
    goto if422_end890
  if422_else889:
    find_lex $P5043, "$?CLASS"
    repr_bind_attr_int $P102, $P5043, "$!pos", -3
  if422_end890:
    nqp_decontainerize $P5044, _lex_param_0
    find_lex $P5045, "$?CLASS"
    repr_get_attr_obj $P5046, $P5044, $P5045, "$!shared"
    nqp_get_sc_object $P5047, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 32
    repr_bind_attr_int $P5046, $P5047, "$!highwater", $I101
    nqp_decontainerize $P5048, _lex_param_0
    find_lex $P5049, "$?CLASS"
    repr_get_attr_obj $P5050, $P5048, $P5049, "$!shared"
    nqp_get_sc_object $P5051, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 32
    setattribute $P5050, $P5051, "@!highexpect", $P101
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "ws" :subid("cuid_64_1366375320.00413") :anon :lex :outer("cuid_79_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 892
    .param pmc _lex_param_0 
    .lex "$target", $S101 
    .lex "$cur", $P101 
    .lex "self", _lex_param_0 
    set $S101, ""
    nqp_get_sc_object $P5001, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P101, $P5001
    nqp_decontainerize $P5002, _lex_param_0
    find_lex $P5003, "$?CLASS"
    repr_get_attr_obj $P5004, $P5002, $P5003, "$!shared"
    nqp_get_sc_object $P5005, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 32
    repr_get_attr_str $S5001, $P5004, $P5005, "$!target"
    set $S101, $S5001
.annotate 'line', 895
    nqp_decontainerize $P5006, _lex_param_0
    $P5007 = $P5006."!cursor_start_cur"()
    set $P101, $P5007
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_int $I5002, $P5008, $P5009, "$!pos"
    set $N5001, $I5002
    length $I5003, $S101
    set $N5002, $I5003
    isge $I5001, $N5001, $N5002
    unless $I5001 goto if423_else891 
.annotate 'line', 897
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5004, $P5010, $P5011, "$!pos"
    $P5012 = $P101."!cursor_pass"($I5004, "ws")
    goto if423_end892
  if423_else891:
    nqp_decontainerize $P5013, _lex_param_0
    find_lex $P5014, "$?CLASS"
    repr_get_attr_int $I5006, $P5013, $P5014, "$!pos"
    set $N5003, $I5006
    set $N5004, 1
    islt $I5005, $N5003, $N5004
    set $I5010, $I5005
    if $I5005 goto unless426_end898 
    nqp_decontainerize $P5015, _lex_param_0
    find_lex $P5016, "$?CLASS"
    repr_get_attr_int $I5009, $P5015, $P5016, "$!pos"
    is_cclass $I5008, 8192, $S101, $I5009
    not $I5007, $I5008
    set $I5010, $I5007
  unless426_end898:
    set $I5015, $I5010
    if $I5010 goto unless425_end896 
    nqp_decontainerize $P5017, _lex_param_0
    find_lex $P5018, "$?CLASS"
    repr_get_attr_int $I5013, $P5017, $P5018, "$!pos"
    set $N5006, $I5013
    set $N5007, 1
    sub $N5005, $N5006, $N5007
    set $I5014, $N5005
    is_cclass $I5012, 8192, $S101, $I5014
    not $I5011, $I5012
    set $I5015, $I5011
  unless425_end896:
    box $P5023, $I5015
    set $P5022, $P5023
    unless $I5015 goto if424_end894 
.annotate 'line', 901
    nqp_decontainerize $P5019, _lex_param_0
    find_lex $P5020, "$?CLASS"
    repr_get_attr_int $I5017, $P5019, $P5020, "$!pos"
    length $I5018, $S101
    find_not_cclass $I5016, 32, $S101, $I5017, $I5018
    $P5021 = $P101."!cursor_pass"($I5016, "ws")
    set $P5022, $P5021
  if424_end894:
  if423_end892:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "ww" :subid("cuid_65_1366375320.00413") :anon :lex :outer("cuid_79_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 908
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "$target", $S101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P101, $P5001
    set $S101, ""
.annotate 'line', 909
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start_cur"()
    set $P101, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!shared"
    nqp_get_sc_object $P5007, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 32
    repr_get_attr_str $S5001, $P5006, $P5007, "$!target"
    set $S101, $S5001
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_int $I5002, $P5008, $P5009, "$!pos"
    set $N5001, $I5002
    set $N5002, 0
    isgt $I5001, $N5001, $N5002
    set $I5006, $I5001
    unless $I5001 goto if430_end906 
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5004, $P5010, $P5011, "$!pos"
    set $N5003, $I5004
    length $I5005, $S101
    set $N5004, $I5005
    isne $I5003, $N5003, $N5004
    set $I5006, $I5003
  if430_end906:
    set $I5009, $I5006
    unless $I5006 goto if429_end904 
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5008, $P5012, $P5013, "$!pos"
    is_cclass $I5007, 8192, $S101, $I5008
    set $I5009, $I5007
  if429_end904:
    set $I5013, $I5009
    unless $I5009 goto if428_end902 
    nqp_decontainerize $P5014, _lex_param_0
    find_lex $P5015, "$?CLASS"
    repr_get_attr_int $I5011, $P5014, $P5015, "$!pos"
    set $N5006, $I5011
    set $N5007, 1
    sub $N5005, $N5006, $N5007
    set $I5012, $N5005
    is_cclass $I5010, 8192, $S101, $I5012
    set $I5013, $I5010
  if428_end902:
    unless $I5013 goto if427_end900 
.annotate 'line', 911
    nqp_decontainerize $P5016, _lex_param_0
    find_lex $P5017, "$?CLASS"
    repr_get_attr_int $I5014, $P5016, $P5017, "$!pos"
    $P5018 = $P101."!cursor_pass"($I5014, "ww")
  if427_end900:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "wb" :subid("cuid_66_1366375320.00413") :anon :lex :outer("cuid_79_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 919
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "$target", $S101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P101, $P5001
    set $S101, ""
.annotate 'line', 920
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start_cur"()
    set $P101, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!shared"
    nqp_get_sc_object $P5007, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 32
    repr_get_attr_str $S5001, $P5006, $P5007, "$!target"
    set $S101, $S5001
    nqp_decontainerize $P5008, _lex_param_0
    find_lex $P5009, "$?CLASS"
    repr_get_attr_int $I5002, $P5008, $P5009, "$!pos"
    set $N5001, $I5002
    set $N5002, 0
    iseq $I5001, $N5001, $N5002
    set $I5005, $I5001
    unless $I5001 goto if434_end914 
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5004, $P5010, $P5011, "$!pos"
    is_cclass $I5003, 8192, $S101, $I5004
    set $I5005, $I5003
  if434_end914:
    set $I5013, $I5005
    if $I5005 goto unless433_end912 
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5007, $P5012, $P5013, "$!pos"
    set $N5003, $I5007
    length $I5008, $S101
    set $N5004, $I5008
    iseq $I5006, $N5003, $N5004
    set $I5012, $I5006
    unless $I5006 goto if435_end916 
    nqp_decontainerize $P5014, _lex_param_0
    find_lex $P5015, "$?CLASS"
    repr_get_attr_int $I5010, $P5014, $P5015, "$!pos"
    set $N5006, $I5010
    set $N5007, 1
    sub $N5005, $N5006, $N5007
    set $I5011, $N5005
    is_cclass $I5009, 8192, $S101, $I5011
    set $I5012, $I5009
  if435_end916:
    set $I5013, $I5012
  unless433_end912:
    set $I5020, $I5013
    if $I5013 goto unless432_end910 
    nqp_decontainerize $P5016, _lex_param_0
    find_lex $P5017, "$?CLASS"
    repr_get_attr_int $I5016, $P5016, $P5017, "$!pos"
    set $N5009, $I5016
    set $N5010, 1
    sub $N5008, $N5009, $N5010
    set $I5017, $N5008
    is_cclass $I5015, 8192, $S101, $I5017
    set $N5011, $I5015
    nqp_decontainerize $P5018, _lex_param_0
    find_lex $P5019, "$?CLASS"
    repr_get_attr_int $I5019, $P5018, $P5019, "$!pos"
    is_cclass $I5018, 8192, $S101, $I5019
    set $N5012, $I5018
    isne $I5014, $N5011, $N5012
    set $I5020, $I5014
  unless432_end910:
    unless $I5020 goto if431_end908 
.annotate 'line', 922
    nqp_decontainerize $P5020, _lex_param_0
    find_lex $P5021, "$?CLASS"
    repr_get_attr_int $I5021, $P5020, $P5021, "$!pos"
    $P5022 = $P101."!cursor_pass"($I5021, "wb")
  if431_end908:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "ident" :subid("cuid_67_1366375320.00413") :anon :lex :outer("cuid_79_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 931
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "$target", $S101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P101, $P5001
    set $S101, ""
.annotate 'line', 932
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start_cur"()
    set $P101, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!shared"
    nqp_get_sc_object $P5007, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 32
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
    unless $I5001 goto if437_end920 
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5006, $P5010, $P5011, "$!pos"
    ord $I5005, $S101, $I5006
    set $N5003, $I5005
    set $N5004, 95
    iseq $I5004, $N5003, $N5004
    set $I5009, $I5004
    if $I5004 goto unless438_end922 
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5008, $P5012, $P5013, "$!pos"
    is_cclass $I5007, 4, $S101, $I5008
    set $I5009, $I5007
  unless438_end922:
    set $I5010, $I5009
  if437_end920:
    unless $I5010 goto if436_end918 
.annotate 'line', 934
    nqp_decontainerize $P5014, _lex_param_0
    find_lex $P5015, "$?CLASS"
    repr_get_attr_int $I5012, $P5014, $P5015, "$!pos"
    length $I5013, $S101
    find_not_cclass $I5011, 8192, $S101, $I5012, $I5013
    $P5016 = $P101."!cursor_pass"($I5011)
  if436_end918:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "alpha" :subid("cuid_68_1366375320.00413") :anon :lex :outer("cuid_79_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 944
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "$target", $S101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P101, $P5001
    set $S101, ""
.annotate 'line', 945
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start_cur"()
    set $P101, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!shared"
    nqp_get_sc_object $P5007, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 32
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
    unless $I5001 goto if440_end926 
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, 4, $S101, $I5005
    set $I5009, $I5004
    if $I5004 goto unless441_end928 
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5008, $P5012, $P5013, "$!pos"
    ord $I5007, $S101, $I5008
    set $N5003, $I5007
    set $N5004, 95
    iseq $I5006, $N5003, $N5004
    set $I5009, $I5006
  unless441_end928:
    set $I5010, $I5009
  if440_end926:
    unless $I5010 goto if439_end924 
.annotate 'line', 947
    nqp_decontainerize $P5014, _lex_param_0
    find_lex $P5015, "$?CLASS"
    repr_get_attr_int $I5011, $P5014, $P5015, "$!pos"
    set $N5006, $I5011
    set $N5007, 1
    add $N5005, $N5006, $N5007
    $P5016 = $P101."!cursor_pass"($N5005, "alpha")
  if439_end924:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "alnum" :subid("cuid_69_1366375320.00413") :anon :lex :outer("cuid_79_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 954
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "$target", $S101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P101, $P5001
    set $S101, ""
.annotate 'line', 955
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start_cur"()
    set $P101, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!shared"
    nqp_get_sc_object $P5007, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 32
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
    unless $I5001 goto if443_end932 
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, 2048, $S101, $I5005
    set $I5009, $I5004
    if $I5004 goto unless444_end934 
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5008, $P5012, $P5013, "$!pos"
    ord $I5007, $S101, $I5008
    set $N5003, $I5007
    set $N5004, 95
    iseq $I5006, $N5003, $N5004
    set $I5009, $I5006
  unless444_end934:
    set $I5010, $I5009
  if443_end932:
    unless $I5010 goto if442_end930 
.annotate 'line', 957
    nqp_decontainerize $P5014, _lex_param_0
    find_lex $P5015, "$?CLASS"
    repr_get_attr_int $I5011, $P5014, $P5015, "$!pos"
    set $N5006, $I5011
    set $N5007, 1
    add $N5005, $N5006, $N5007
    $P5016 = $P101."!cursor_pass"($N5005, "alnum")
  if442_end930:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "upper" :subid("cuid_70_1366375320.00413") :anon :lex :outer("cuid_79_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 964
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "$target", $S101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P101, $P5001
    set $S101, ""
.annotate 'line', 965
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start_cur"()
    set $P101, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!shared"
    nqp_get_sc_object $P5007, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 32
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
    unless $I5001 goto if446_end938 
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, 1, $S101, $I5005
    set $I5006, $I5004
  if446_end938:
    unless $I5006 goto if445_end936 
.annotate 'line', 967
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5007, $P5012, $P5013, "$!pos"
    set $N5004, $I5007
    set $N5005, 1
    add $N5003, $N5004, $N5005
    $P5014 = $P101."!cursor_pass"($N5003, "upper")
  if445_end936:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "lower" :subid("cuid_71_1366375320.00413") :anon :lex :outer("cuid_79_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 973
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "$target", $S101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P101, $P5001
    set $S101, ""
.annotate 'line', 974
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start_cur"()
    set $P101, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!shared"
    nqp_get_sc_object $P5007, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 32
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
    unless $I5001 goto if448_end942 
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, 2, $S101, $I5005
    set $I5006, $I5004
  if448_end942:
    unless $I5006 goto if447_end940 
.annotate 'line', 976
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5007, $P5012, $P5013, "$!pos"
    set $N5004, $I5007
    set $N5005, 1
    add $N5003, $N5004, $N5005
    $P5014 = $P101."!cursor_pass"($N5003, "lower")
  if447_end940:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "digit" :subid("cuid_72_1366375320.00413") :anon :lex :outer("cuid_79_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 982
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "$target", $S101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P101, $P5001
    set $S101, ""
.annotate 'line', 983
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start_cur"()
    set $P101, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!shared"
    nqp_get_sc_object $P5007, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 32
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
    unless $I5001 goto if450_end946 
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, 8, $S101, $I5005
    set $I5006, $I5004
  if450_end946:
    unless $I5006 goto if449_end944 
.annotate 'line', 985
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5007, $P5012, $P5013, "$!pos"
    set $N5004, $I5007
    set $N5005, 1
    add $N5003, $N5004, $N5005
    $P5014 = $P101."!cursor_pass"($N5003, "digit")
  if449_end944:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "xdigit" :subid("cuid_73_1366375320.00413") :anon :lex :outer("cuid_79_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 991
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "$target", $S101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P101, $P5001
    set $S101, ""
.annotate 'line', 992
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start_cur"()
    set $P101, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!shared"
    nqp_get_sc_object $P5007, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 32
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
    unless $I5001 goto if452_end950 
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, 16, $S101, $I5005
    set $I5006, $I5004
  if452_end950:
    unless $I5006 goto if451_end948 
.annotate 'line', 994
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5007, $P5012, $P5013, "$!pos"
    set $N5004, $I5007
    set $N5005, 1
    add $N5003, $N5004, $N5005
    $P5014 = $P101."!cursor_pass"($N5003, "xdigit")
  if451_end948:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "space" :subid("cuid_74_1366375320.00413") :anon :lex :outer("cuid_79_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 1000
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "$target", $S101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P101, $P5001
    set $S101, ""
.annotate 'line', 1001
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start_cur"()
    set $P101, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!shared"
    nqp_get_sc_object $P5007, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 32
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
    unless $I5001 goto if454_end954 
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, 32, $S101, $I5005
    set $I5006, $I5004
  if454_end954:
    unless $I5006 goto if453_end952 
.annotate 'line', 1003
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5007, $P5012, $P5013, "$!pos"
    set $N5004, $I5007
    set $N5005, 1
    add $N5003, $N5004, $N5005
    $P5014 = $P101."!cursor_pass"($N5003, "space")
  if453_end952:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "blank" :subid("cuid_75_1366375320.00413") :anon :lex :outer("cuid_79_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 1009
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "$target", $S101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P101, $P5001
    set $S101, ""
.annotate 'line', 1010
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start_cur"()
    set $P101, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!shared"
    nqp_get_sc_object $P5007, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 32
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
    unless $I5001 goto if456_end958 
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, 256, $S101, $I5005
    set $I5006, $I5004
  if456_end958:
    unless $I5006 goto if455_end956 
.annotate 'line', 1012
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5007, $P5012, $P5013, "$!pos"
    set $N5004, $I5007
    set $N5005, 1
    add $N5003, $N5004, $N5005
    $P5014 = $P101."!cursor_pass"($N5003, "blank")
  if455_end956:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "cntrl" :subid("cuid_76_1366375320.00413") :anon :lex :outer("cuid_79_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 1018
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "$target", $S101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P101, $P5001
    set $S101, ""
.annotate 'line', 1019
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start_cur"()
    set $P101, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!shared"
    nqp_get_sc_object $P5007, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 32
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
    unless $I5001 goto if458_end962 
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, 512, $S101, $I5005
    set $I5006, $I5004
  if458_end962:
    unless $I5006 goto if457_end960 
.annotate 'line', 1021
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5007, $P5012, $P5013, "$!pos"
    set $N5004, $I5007
    set $N5005, 1
    add $N5003, $N5004, $N5005
    $P5014 = $P101."!cursor_pass"($N5003, "cntrl")
  if457_end960:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "punct" :subid("cuid_77_1366375320.00413") :anon :lex :outer("cuid_79_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 1027
    .param pmc _lex_param_0 
    .lex "$cur", $P101 
    .lex "$target", $S101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P101, $P5001
    set $S101, ""
.annotate 'line', 1028
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."!cursor_start_cur"()
    set $P101, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    find_lex $P5005, "$?CLASS"
    repr_get_attr_obj $P5006, $P5004, $P5005, "$!shared"
    nqp_get_sc_object $P5007, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 32
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
    unless $I5001 goto if460_end966 
    nqp_decontainerize $P5010, _lex_param_0
    find_lex $P5011, "$?CLASS"
    repr_get_attr_int $I5005, $P5010, $P5011, "$!pos"
    is_cclass $I5004, 1024, $S101, $I5005
    set $I5006, $I5004
  if460_end966:
    unless $I5006 goto if459_end964 
.annotate 'line', 1030
    nqp_decontainerize $P5012, _lex_param_0
    find_lex $P5013, "$?CLASS"
    repr_get_attr_int $I5007, $P5012, $P5013, "$!pos"
    set $N5004, $I5007
    set $N5005, 1
    add $N5003, $N5004, $N5005
    $P5014 = $P101."!cursor_pass"($N5003, "punct")
  if459_end964:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "FAILGOAL" :subid("cuid_78_1366375320.00413") :anon :lex :outer("cuid_79_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 1036
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :optional 
    .param int haz_param_21 :opt_flag 
    .lex "self", _lex_param_0 
    .lex "$goal", _lex_param_1 
    .lex "$dba", _lex_param_2 
    if haz_param_21, default969
    nqp_get_sc_object $P5004, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set _lex_param_2, $P5004
  default969:
    if _lex_param_2 goto unless461_end968 
.annotate 'line', 1037
    getinterp $P5001
    set $P5001, $P5001['sub';1]
    set $S5001, $P5001
    box $P5002, $S5001
    set _lex_param_2, $P5002
  unless461_end968:
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
.sub "" :subid("cuid_147_1366375320.00413") :anon :lex :outer("cuid_145_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 1045
    .const 'Sub' $P5014 = 'cuid_80_1366375320.00413' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_81_1366375320.00413' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_82_1366375320.00413' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_83_1366375320.00413' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_84_1366375320.00413' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_85_1366375320.00413' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_86_1366375320.00413' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_87_1366375320.00413' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_88_1366375320.00413' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_89_1366375320.00413' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_90_1366375320.00413' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_91_1366375320.00413' 
    capture_lex $P5014 
    .const 'Sub' $P5014 = 'cuid_92_1366375320.00413' 
    capture_lex $P5014 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_80_1366375320.00413' 
    capture_lex $P5001
    .const 'Sub' $P5002 = 'cuid_81_1366375320.00413' 
    capture_lex $P5002
    .const 'Sub' $P5003 = 'cuid_82_1366375320.00413' 
    capture_lex $P5003
    .const 'Sub' $P5004 = 'cuid_83_1366375320.00413' 
    capture_lex $P5004
    .const 'Sub' $P5005 = 'cuid_84_1366375320.00413' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_85_1366375320.00413' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_86_1366375320.00413' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_87_1366375320.00413' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_88_1366375320.00413' 
    capture_lex $P5009
    .const 'Sub' $P5010 = 'cuid_89_1366375320.00413' 
    capture_lex $P5010
    .const 'Sub' $P5011 = 'cuid_90_1366375320.00413' 
    capture_lex $P5011
    .const 'Sub' $P5012 = 'cuid_91_1366375320.00413' 
    capture_lex $P5012
    .const 'Sub' $P5013 = 'cuid_92_1366375320.00413' 
    capture_lex $P5013
    .return ($P5013) 
.end
.HLL "nqp"
.namespace []
.sub "from" :subid("cuid_80_1366375320.00413") :anon :lex :outer("cuid_147_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 1052
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 86
    repr_get_attr_int $I5001, $P5001, $P5002, "$!from"
    .return ($I5001) 
.end
.HLL "nqp"
.namespace []
.sub "orig" :subid("cuid_81_1366375320.00413") :anon :lex :outer("cuid_147_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 1053
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 86
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!orig"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "to" :subid("cuid_82_1366375320.00413") :anon :lex :outer("cuid_147_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 1054
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 86
    repr_get_attr_int $I5001, $P5001, $P5002, "$!to"
    .return ($I5001) 
.end
.HLL "nqp"
.namespace []
.sub "CURSOR" :subid("cuid_83_1366375320.00413") :anon :lex :outer("cuid_147_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 1055
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 86
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!cursor"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "Str" :subid("cuid_84_1366375320.00413") :anon :lex :outer("cuid_147_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 1056
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 86
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!orig"
    set $S5002, $P5003
    nqp_decontainerize $P5004, _lex_param_0
    nqp_get_sc_object $P5005, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 86
    repr_get_attr_int $I5001, $P5004, $P5005, "$!from"
    nqp_decontainerize $P5006, _lex_param_0
    nqp_get_sc_object $P5007, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 86
    repr_get_attr_int $I5002, $P5006, $P5007, "$!to"
    set $N5002, $I5002
    nqp_decontainerize $P5008, _lex_param_0
    nqp_get_sc_object $P5009, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 86
    repr_get_attr_int $I5003, $P5008, $P5009, "$!from"
    set $N5003, $I5003
    sub $N5001, $N5002, $N5003
    set $I5004, $N5001
    substr $S5001, $S5002, $I5001, $I5004
    .return ($S5001) 
.end
.HLL "nqp"
.namespace []
.sub "Int" :subid("cuid_85_1366375320.00413") :anon :lex :outer("cuid_147_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 1057
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    $P5002 = $P5001."Str"()
    set $N5001, $P5002
    .return ($N5001) 
.end
.HLL "nqp"
.namespace []
.sub "Num" :subid("cuid_86_1366375320.00413") :anon :lex :outer("cuid_147_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
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
.sub "Bool" :subid("cuid_87_1366375320.00413") :anon :lex :outer("cuid_147_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 1059
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 86
    repr_get_attr_int $I5002, $P5001, $P5002, "$!to"
    set $N5001, $I5002
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 86
    repr_get_attr_int $I5003, $P5003, $P5004, "$!from"
    set $N5002, $I5003
    isge $I5001, $N5001, $N5002
    .return ($I5001) 
.end
.HLL "nqp"
.namespace []
.sub "chars" :subid("cuid_88_1366375320.00413") :anon :lex :outer("cuid_147_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 1060
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 86
    repr_get_attr_int $I5002, $P5001, $P5002, "$!to"
    set $N5001, $I5002
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 86
    repr_get_attr_int $I5003, $P5003, $P5004, "$!from"
    set $N5002, $I5003
    isge $I5001, $N5001, $N5002
    unless $I5001 goto if462_else970 
    nqp_decontainerize $P5005, _lex_param_0
    nqp_get_sc_object $P5006, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 86
    repr_get_attr_int $I5004, $P5005, $P5006, "$!to"
    set $N5004, $I5004
    nqp_decontainerize $P5007, _lex_param_0
    nqp_get_sc_object $P5008, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 86
    repr_get_attr_int $I5005, $P5007, $P5008, "$!from"
    set $N5005, $I5005
    sub $N5003, $N5004, $N5005
    box $P5010, $N5003
    set $P5009, $P5010
    goto if462_end971
  if462_else970:
    box $P5011, 0
    set $P5009, $P5011
  if462_end971:
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "!make" :subid("cuid_89_1366375320.00413") :anon :lex :outer("cuid_147_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 1062
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$ast", _lex_param_1 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 86
    repr_bind_attr_obj $P5001, $P5002, "$!ast", _lex_param_1
    .return (_lex_param_1) 
.end
.HLL "nqp"
.namespace []
.sub "ast" :subid("cuid_90_1366375320.00413") :anon :lex :outer("cuid_147_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 1063
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 86
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!ast"
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "dump" :subid("cuid_91_1366375320.00413") :anon :lex :outer("cuid_147_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 1065
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 :optional 
    .param int haz_param_22 :opt_flag 
    .const 'Sub' $P5010 = 'cuid_149_1366375320.00413' 
    capture_lex $P5010 
    .lex "self", _lex_param_0 
    .lex "$indent", _lex_param_1 
    if haz_param_22, default999
    nqp_get_sc_object $P5009, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set _lex_param_1, $P5009
  default999:
    root_new $P101, ['parrot';'Continuation']
    set_label $P101, lexotic_972
    .lex "RETURN", $P101
    defined $I5001, _lex_param_1
    if $I5001 goto unless463_end975 
.annotate 'line', 1066
    box $P5001, 0
    set _lex_param_1, $P5001
  unless463_end975:
.annotate 'line', 1069
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5002."Bool"()
    unless $P5003 goto if464_else976 
    .const 'Sub' $P5004 = 'cuid_149_1366375320.00413' 
    capture_lex $P5004
    $P5005 = $P5004()
    set $P5008, $P5005
    goto if464_end977
  if464_else976:
.annotate 'line', 1118
    set $I5002, _lex_param_1
    repeat $S5002, " ", $I5002
    concat $S5001, $S5002, "- NO MATCH\n"
    find_lex $P5006, "RETURN"
    $P5007 = $P5006($S5001)
    set $P5008, $P5007
  if464_end977:
    goto lexotic_973
  lexotic_972:
    .get_results ($P5008)
  lexotic_973:
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_149_1366375320.00413") :anon :lex :outer("cuid_91_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 1069
    .const 'Sub' $P5023 = 'cuid_148_1366375320.00413' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_151_1366375320.00413' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_152_1366375320.00413' 
    capture_lex $P5023 
    .const 'Sub' $P5023 = 'cuid_153_1366375320.00413' 
    capture_lex $P5023 
    .lex "@chunks", $P101 
    .lex "&dump_match", $P102 
    .lex "&dump_match_array", $P103 
    .lex "$i", $I101 
    new $P5001, 'QRPA'
    set $P101, $P5001
    .const 'Sub' $P5002 = 'cuid_148_1366375320.00413' 
    capture_lex $P5002
    set $P102, $P5002
    .const 'Sub' $P5003 = 'cuid_151_1366375320.00413' 
    capture_lex $P5003
    set $P103, $P5003
    set $I101, 0
    set $I101, 0
.annotate 'line', 1102
    find_lex $P5008, "self"
    nqp_decontainerize $P5007, $P5008
    $P5009 = $P5007."list"()
    set $P5004, $P5009
    iter $P5006, $P5009
  for_next989:
    unless $P5006, for_done991
    shift $P5011, $P5006
  for_redo990:
    .const 'Sub' $P5010 = 'cuid_152_1366375320.00413' 
    capture_lex $P5010
    $P5004 = $P5010($P5011)
    goto for_next989
  for_done991:
.annotate 'line', 1109
    find_lex $P5016, "self"
    nqp_decontainerize $P5015, $P5016
    $P5017 = $P5015."hash"()
    set $P5012, $P5017
    iter $P5014, $P5017
  for_next996:
    unless $P5014, for_done998
    shift $P5019, $P5014
  for_redo997:
    .const 'Sub' $P5018 = 'cuid_153_1366375320.00413' 
    capture_lex $P5018
    $P5012 = $P5018($P5019)
    goto for_next996
  for_done998:
.annotate 'line', 1116
    $P5021 = "&join"("", $P101)
    find_lex $P5020, "RETURN"
    $P5022 = $P5020($P5021)
    .return ($P5022) 
.end
.HLL "nqp"
.namespace []
.sub "dump_match" :subid("cuid_148_1366375320.00413") :anon :lex :outer("cuid_149_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 1072
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "$key", _lex_param_0 
    .lex "$value", _lex_param_1 
    find_lex $P5001, "@chunks"
    find_lex $P5002, "$indent"
    set $I5001, $P5002
    repeat $S5001, " ", $I5001
    box $P5003, $S5001
    push $P5001, $P5003
    find_lex $P5004, "@chunks"
    box $P5005, "- "
    push $P5004, $P5005
    find_lex $P5006, "@chunks"
    push $P5006, _lex_param_0
    find_lex $P5007, "@chunks"
    box $P5008, ": "
    push $P5007, $P5008
    can $I5002, _lex_param_1, "Str"
    unless $I5002 goto if465_else978 
.annotate 'line', 1077
    find_lex $P5009, "@chunks"
.annotate 'line', 1078
    $P5010 = _lex_param_1."Str"()
    push $P5009, $P5010
    goto if465_end979
  if465_else978:
.annotate 'line', 1080
    find_lex $P5011, "@chunks"
    box $P5012, "<object>"
    push $P5011, $P5012
  if465_end979:
    find_lex $P5013, "@chunks"
    box $P5014, "\n"
    push $P5013, $P5014
    can $I5003, _lex_param_1, "dump"
    box $P5019, $I5003
    set $P5018, $P5019
    unless $I5003 goto if466_end981 
.annotate 'line', 1084
    find_lex $P5015, "@chunks"
.annotate 'line', 1085
    find_lex $P5016, "$indent"
    set $N5002, $P5016
    set $N5003, 2
    add $N5001, $N5002, $N5003
    $P5017 = _lex_param_1."dump"($N5001)
    push $P5015, $P5017
    set $P5018, $P5015
  if466_end981:
    .return ($P5018) 
.end
.HLL "nqp"
.namespace []
.sub "dump_match_array" :subid("cuid_151_1366375320.00413") :anon :lex :outer("cuid_149_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 1089
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5018 = 'cuid_150_1366375320.00413' 
    capture_lex $P5018 
    .lex "$key", _lex_param_0 
    .lex "@matches", _lex_param_1 
    find_lex $P5001, "@chunks"
    find_lex $P5002, "$indent"
    set $I5001, $P5002
    repeat $S5001, " ", $I5001
    box $P5003, $S5001
    push $P5001, $P5003
    find_lex $P5004, "@chunks"
    box $P5005, "- "
    push $P5004, $P5005
    find_lex $P5006, "@chunks"
    push $P5006, _lex_param_0
    find_lex $P5007, "@chunks"
    box $P5008, ": "
    push $P5007, $P5008
    find_lex $P5009, "@chunks"
    set $N5001, _lex_param_1
    set $S5002, $N5001
    box $P5010, $S5002
    push $P5009, $P5010
    find_lex $P5011, "@chunks"
    box $P5012, " matches\n"
    push $P5011, $P5012
    set $P5013, _lex_param_1
    iter $P5015, _lex_param_1
  for_next982:
    unless $P5015, for_done984
    shift $P5017, $P5015
  for_redo983:
    .const 'Sub' $P5016 = 'cuid_150_1366375320.00413' 
    capture_lex $P5016
    $P5013 = $P5016($P5017)
    goto for_next982
  for_done984:
    .return ($P5013) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_150_1366375320.00413") :anon :lex :outer("cuid_151_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 1096
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    find_lex $P5001, "@chunks"
.annotate 'line', 1097
    find_lex $P5002, "$indent"
    set $N5002, $P5002
    set $N5003, 2
    add $N5001, $N5002, $N5003
    $P5003 = _lex_param_0."dump"($N5001)
    push $P5001, $P5003
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_152_1366375320.00413") :anon :lex :outer("cuid_149_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 1102
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
    set $P5004, _lex_param_0
    unless _lex_param_0 goto if467_end986 
.annotate 'line', 1103
    nqp_islist $I5001, _lex_param_0
    unless $I5001 goto if468_else987 
.annotate 'line', 1105
    find_lex $I5002, "$i"
    $P5001 = "&dump_match_array"($I5002, _lex_param_0)
    set $P5003, $P5001
    goto if468_end988
  if468_else987:
.annotate 'line', 1106
    find_lex $I5003, "$i"
    $P5002 = "&dump_match"($I5003, _lex_param_0)
    set $P5003, $P5002
  if468_end988:
    set $P5004, $P5003
  if467_end986:
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_153_1366375320.00413") :anon :lex :outer("cuid_149_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 1109
    .param pmc _lex_param_0 
    .lex "$_", _lex_param_0 
.annotate 'line', 1110
    $P5001 = _lex_param_0."value"()
    set $P5010, $P5001
    unless $P5001 goto if469_end993 
.annotate 'line', 1111
    $P5002 = _lex_param_0."value"()
    nqp_islist $I5001, $P5002
    unless $I5001 goto if470_else994 
.annotate 'line', 1112
    $P5003 = _lex_param_0."key"()
    $P5004 = _lex_param_0."value"()
    $P5005 = "&dump_match_array"($P5003, $P5004)
    set $P5009, $P5005
    goto if470_end995
  if470_else994:
.annotate 'line', 1113
    $P5006 = _lex_param_0."key"()
    $P5007 = _lex_param_0."value"()
    $P5008 = "&dump_match"($P5006, $P5007)
    set $P5009, $P5008
  if470_end995:
    set $P5010, $P5009
  if469_end993:
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "!dump_str" :subid("cuid_92_1366375320.00413") :anon :lex :outer("cuid_147_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 1123
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5019 = 'cuid_156_1366375320.00413' 
    capture_lex $P5019 
    .const 'Sub' $P5019 = 'cuid_157_1366375320.00413' 
    capture_lex $P5019 
    .lex "&dump_array", $P101 
    .lex "$str", $P102 
    .lex "self", _lex_param_0 
    .lex "$key", _lex_param_1 
    .const 'Sub' $P5001 = 'cuid_156_1366375320.00413' 
    capture_lex $P5001
    set $P101, $P5001
    nqp_get_sc_object $P5002, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P102, $P5002
    set $S5006, _lex_param_1
    concat $S5005, $S5006, ": "
.annotate 'line', 1135
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
.annotate 'line', 1136
    nqp_decontainerize $P5008, _lex_param_0
    $P5009 = $P5008."list"()
    $P5010 = "&dump_array"(_lex_param_1, $P5009)
    set $S5012, $P5010
    concat $S5010, $S5011, $S5012
    box $P5011, $S5010
    set $P102, $P5011
.annotate 'line', 1137
    nqp_decontainerize $P5015, _lex_param_0
    $P5016 = $P5015."hash"()
    set $P5012, $P5016
    iter $P5014, $P5016
  for_next1007:
    unless $P5014, for_done1009
    shift $P5018, $P5014
  for_redo1008:
    .const 'Sub' $P5017 = 'cuid_157_1366375320.00413' 
    capture_lex $P5017
    $P5012 = $P5017($P5018)
    goto for_next1007
  for_done1009:
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "dump_array" :subid("cuid_156_1366375320.00413") :anon :lex :outer("cuid_92_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 1124
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5011 = 'cuid_155_1366375320.00413' 
    capture_lex $P5011 
    .lex "$str", $P101 
    .lex "$key", _lex_param_0 
    .lex "$item", _lex_param_1 
    nqp_get_sc_object $P5001, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P101, $P5001
    box $P5002, ""
    set $P101, $P5002
.annotate 'line', 1126
    nqp_get_sc_object $P5003, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 41
    $P5004 = $P5003."ACCEPTS"(_lex_param_1)
    unless $P5004 goto if471_else1000 
    set $S5002, $P101
.annotate 'line', 1127
    $P5005 = _lex_param_1."!dump_str"(_lex_param_0)
    set $S5003, $P5005
    concat $S5001, $S5002, $S5003
    box $P5006, $S5001
    set $P101, $P5006
    goto if471_end1001
  if471_else1000:
    isnull $I5002, _lex_param_1
    not $I5001, $I5002
    box $P5010, $I5001
    set $P5009, $P5010
    unless $I5001 goto if472_end1003 
    .const 'Sub' $P5007 = 'cuid_155_1366375320.00413' 
    capture_lex $P5007
    $P5008 = $P5007()
    set $P5009, $P5008
  if472_end1003:
  if471_end1001:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_155_1366375320.00413") :anon :lex :outer("cuid_156_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 1129
    .const 'Sub' $P5009 = 'cuid_154_1366375320.00413' 
    capture_lex $P5009 
    .lex "$n", $P101 
    nqp_get_sc_object $P5001, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P101, $P5001
    box $P5002, 0
    set $P101, $P5002
    find_lex $P5006, "$item"
    set $P5003, $P5006
    iter $P5005, $P5006
  for_next1004:
    unless $P5005, for_done1006
    shift $P5008, $P5005
  for_redo1005:
    .const 'Sub' $P5007 = 'cuid_154_1366375320.00413' 
    capture_lex $P5007
    $P5003 = $P5007($P5008)
    goto for_next1004
  for_done1006:
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_154_1366375320.00413") :anon :lex :outer("cuid_155_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 1131
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
.sub "" :subid("cuid_157_1366375320.00413") :anon :lex :outer("cuid_92_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 1137
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
.sub "" :subid("cuid_159_1366375320.00413") :anon :lex :outer("cuid_145_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 1142
    .const 'Sub' $P5010 = 'cuid_93_1366375320.00413' 
    capture_lex $P5010 
    .const 'Sub' $P5010 = 'cuid_94_1366375320.00413' 
    capture_lex $P5010 
    .const 'Sub' $P5010 = 'cuid_95_1366375320.00413' 
    capture_lex $P5010 
    .const 'Sub' $P5010 = 'cuid_96_1366375320.00413' 
    capture_lex $P5010 
    .const 'Sub' $P5010 = 'cuid_97_1366375320.00413' 
    capture_lex $P5010 
    .lex "$EMPTY_MATCH_LIST", $P101 
    .lex "$EMPTY_MATCH_HASH", $P102 
    .lex "$?PACKAGE", $P103 
    .lex "$?CLASS", $P104 
    nqp_get_sc_object $P5001, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P102, $P5002
    new $P5003, 'QRPA'
    set $P101, $P5003
    new $P5004, 'Hash'
    set $P102, $P5004
    .const 'Sub' $P5005 = 'cuid_93_1366375320.00413' 
    capture_lex $P5005
    .const 'Sub' $P5006 = 'cuid_94_1366375320.00413' 
    capture_lex $P5006
    .const 'Sub' $P5007 = 'cuid_95_1366375320.00413' 
    capture_lex $P5007
    .const 'Sub' $P5008 = 'cuid_96_1366375320.00413' 
    capture_lex $P5008
    .const 'Sub' $P5009 = 'cuid_97_1366375320.00413' 
    capture_lex $P5009
    .return ($P5009) 
.end
.HLL "nqp"
.namespace []
.sub "MATCH" :subid("cuid_93_1366375320.00413") :anon :lex :outer("cuid_159_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 1145
    .param pmc _lex_param_0 
    .const 'Sub' $P5008 = 'cuid_158_1366375320.00413' 
    capture_lex $P5008 
    .lex "$match", $P101 
    .lex "self", _lex_param_0 
    nqp_get_sc_object $P5001, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P101, $P5001
    nqp_decontainerize $P5003, _lex_param_0
    nqp_get_sc_object $P5004, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 100
    getattribute $P5002, $P5003, $P5004, "$!match"
    set $P101, $P5002
    nqp_get_sc_object $P5005, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 86
    type_check $I5001, $P101, $P5005
    set $I5003, $I5001
    if $I5001 goto unless474_end1013 
    nqp_ishash $I5002, $P101
    set $I5003, $I5002
  unless474_end1013:
    if $I5003 goto unless473_end1011 
    .const 'Sub' $P5006 = 'cuid_158_1366375320.00413' 
    capture_lex $P5006
    $P5007 = $P5006()
  unless473_end1011:
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_158_1366375320.00413") :anon :lex :outer("cuid_93_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 1147
    .lex "$list", $P101 
    .lex "$hash", $P102 
    .lex "%ch", $P103 
    .lex "$curcap", $P104 
    .lex "$key", $S101 
    .lex "$iter", $P105 
    nqp_get_sc_object $P5001, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P102, $P5002
    new $P5003, 'Hash'
    set $P103, $P5003
    nqp_get_sc_object $P5004, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P104, $P5004
    set $S101, ""
    nqp_get_sc_object $P5005, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P105, $P5005
    find_lex $P5006, "$EMPTY_MATCH_LIST"
    set $P101, $P5006
    find_lex $P5007, "$EMPTY_MATCH_HASH"
    set $P102, $P5007
    nqp_get_sc_object $P5009, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 86
    repr_instance_of $P5008, $P5009
    store_lex "$match", $P5008
    find_lex $P5011, "self"
    nqp_decontainerize $P5010, $P5011
    nqp_get_sc_object $P5012, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 100
    find_lex $P5013, "$match"
    setattribute $P5010, $P5012, "$!match", $P5013
    find_lex $P5014, "$match"
    nqp_get_sc_object $P5015, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 86
    find_lex $P5017, "self"
    nqp_decontainerize $P5016, $P5017
    setattribute $P5014, $P5015, "$!cursor", $P5016
    find_lex $P5018, "$match"
    nqp_get_sc_object $P5019, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 86
.annotate 'line', 1153
    find_lex $P5021, "self"
    nqp_decontainerize $P5020, $P5021
    $P5022 = $P5020."orig"()
    setattribute $P5018, $P5019, "$!orig", $P5022
    find_lex $P5023, "$match"
    nqp_get_sc_object $P5024, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 86
    find_lex $P5026, "self"
    nqp_decontainerize $P5025, $P5026
    nqp_get_sc_object $P5027, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 100
    repr_get_attr_int $I5001, $P5025, $P5027, "$!from"
    repr_bind_attr_int $P5023, $P5024, "$!from", $I5001
    find_lex $P5028, "$match"
    nqp_get_sc_object $P5029, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 86
    find_lex $P5031, "self"
    nqp_decontainerize $P5030, $P5031
    nqp_get_sc_object $P5032, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 100
    repr_get_attr_int $I5002, $P5030, $P5032, "$!pos"
    repr_bind_attr_int $P5028, $P5029, "$!to", $I5002
.annotate 'line', 1156
    find_lex $P5034, "self"
    nqp_decontainerize $P5033, $P5034
    $P5035 = $P5033."CAPHASH"()
    set $P103, $P5035
    iter $P5036, $P103
    set $P105, $P5036
  while475_test1014:
    set $P5050, $P105
    unless $P105 goto while475_done1018 
  while475_redo1016:
.annotate 'line', 1160
    shift $P5037, $P105
    set $P104, $P5037
    $P5038 = $P104."key"()
    set $S5001, $P5038
    set $S101, $S5001
    iseq $I5003, $S101, "$!from"
    set $I5005, $I5003
    if $I5003 goto unless477_end1022 
    iseq $I5004, $S101, "$!to"
    set $I5005, $I5004
  unless477_end1022:
    unless $I5005 goto if476_else1019 
.annotate 'line', 1163
    find_lex $P5039, "$match"
    nqp_get_sc_object $P5040, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 86
.annotate 'line', 1164
    $P5041 = $P104."value"()
    $P5042 = $P5041."from"()
    set $I5006, $P5042
    repr_bind_attr_int $P5039, $P5040, $S101, $I5006
    box $P5049, $I5006
    set $P5048, $P5049
    goto if476_end1020
  if476_else1019:
    is_cclass $I5007, 8, $S101, 0
    unless $I5007 goto if478_else1023 
.annotate 'line', 1166
    if $P101 goto unless479_end1026 
    new $P5043, 'QRPA'
    set $P101, $P5043
  unless479_end1026:
    set $I5008, $S101
    $P5044 = $P104."value"()
    set $P101[$I5008], $P5044
    set $P5047, $P5044
    goto if478_end1024
  if478_else1023:
.annotate 'line', 1170
    if $P102 goto unless480_end1028 
    new $P5045, 'Hash'
    set $P102, $P5045
  unless480_end1028:
    $P5046 = $P104."value"()
    set $P102[$S101], $P5046
    set $P5047, $P5046
  if478_end1024:
    set $P5048, $P5047
  if476_end1020:
    set $P5050, $P5048
    goto while475_test1014 
  while475_done1018:
    find_lex $P5051, "$match"
    nqp_get_sc_object $P5052, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 41
    setattribute $P5051, $P5052, "@!array", $P101
    find_lex $P5053, "$match"
    nqp_get_sc_object $P5054, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 41
    setattribute $P5053, $P5054, "%!hash", $P102
    .return ($P102) 
.end
.HLL "nqp"
.namespace []
.sub "Bool" :subid("cuid_94_1366375320.00413") :anon :lex :outer("cuid_159_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 1181
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5002, _lex_param_0
    find_lex $P5003, "$?CLASS"
    getattribute $P5001, $P5002, $P5003, "$!match"
    isnull $I5002, $P5001
    not $I5001, $I5002
    set $I5004, $I5001
    unless $I5001 goto if481_end1030 
    nqp_decontainerize $P5005, _lex_param_0
    find_lex $P5006, "$?CLASS"
    getattribute $P5004, $P5005, $P5006, "$!match"
    istrue $I5003, $P5004
    set $I5004, $I5003
  if481_end1030:
    .return ($I5004) 
.end
.HLL "nqp"
.namespace []
.sub "parse" :subid("cuid_95_1366375320.00413") :anon :lex :outer("cuid_159_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 1186
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :named("rule") :optional 
    .param int haz_param_23 :opt_flag 
    .param pmc _lex_param_3 :named("actions") :optional 
    .param int haz_param_24 :opt_flag 
    .param pmc _lex_param_4 :slurpy :named 
    .lex "$*ACTIONS", $P101 
    .lex "$cur", $P102 
    .lex "self", _lex_param_0 
    .lex "$target", _lex_param_1 
    .lex "$rule", _lex_param_2 
    .lex "$actions", _lex_param_3 
    .lex "%options", _lex_param_4 
    if haz_param_23, default1033
    box $P5011, "TOP"
    set _lex_param_2, $P5011
  default1033:
    if haz_param_24, default1034
    nqp_get_sc_object $P5012, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set _lex_param_3, $P5012
  default1034:
    nqp_get_sc_object $P5001, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P101, $P5001
    nqp_get_sc_object $P5002, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P102, $P5002
    set $P101, _lex_param_3
.annotate 'line', 1188
    nqp_decontainerize $P5003, _lex_param_0
    $P5004 = $P5003."!cursor_init"(_lex_param_1, _lex_param_4 :flat :named)
    set $P102, $P5004
    is_invokable $I5001, _lex_param_2
    unless $I5001 goto if482_else1031 
.annotate 'line', 1190
    $P5005 = _lex_param_2($P102)
    $P5006 = $P5005."MATCH"()
    set $P5010, $P5006
    goto if482_end1032
  if482_else1031:
.annotate 'line', 1191
    set $S5001, _lex_param_2
    find_method $P5007, $P102, $S5001
    $P5008 = $P5007($P102)
    $P5009 = $P5008."MATCH"()
    set $P5010, $P5009
  if482_end1032:
    .return ($P5010) 
.end
.HLL "nqp"
.namespace []
.sub "!INTERPOLATE" :subid("cuid_96_1366375320.00413") :anon :lex :outer("cuid_159_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 1194
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .param pmc _lex_param_2 :optional 
    .param int haz_param_25 :opt_flag 
    .const 'Sub' $P5007 = 'cuid_164_1366375320.00413' 
    capture_lex $P5007 
    .const 'Sub' $P5007 = 'cuid_165_1366375320.00413' 
    capture_lex $P5007 
    .lex "self", _lex_param_0 
    .lex "$var", _lex_param_1 
    .lex "$s", _lex_param_2 
    if haz_param_25, default1067
    box $P5006, 0
    set _lex_param_2, $P5006
  default1067:
    root_new $P101, ['parrot';'Continuation']
    set_label $P101, lexotic_1035
    .lex "RETURN", $P101
    nqp_islist $I5001, _lex_param_1
    unless $I5001 goto if483_else1037 
    .const 'Sub' $P5001 = 'cuid_164_1366375320.00413' 
    capture_lex $P5001
    $P5002 = $P5001()
    set $P5005, $P5002
    goto if483_end1038
  if483_else1037:
    .const 'Sub' $P5003 = 'cuid_165_1366375320.00413' 
    capture_lex $P5003
    $P5004 = $P5003()
    set $P5005, $P5004
  if483_end1038:
    goto lexotic_1036
  lexotic_1035:
    .get_results ($P5005)
  lexotic_1036:
    .return ($P5005) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_164_1366375320.00413") :anon :lex :outer("cuid_96_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 1195
    .const 'Sub' $P5017 = 'cuid_162_1366375320.00413' 
    capture_lex $P5017 
    .lex "$maxlen", $I101 
    .lex "$cur", $P101 
    .lex "$pos", $I102 
    .lex "$tgt", $S101 
    .lex "$eos", $I103 
    set $I101, 0
    nqp_get_sc_object $P5001, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P101, $P5001
    set $I102, 0
    set $S101, ""
    set $I103, 0
    set $I101, -1
.annotate 'line', 1197
    find_lex $P5003, "self"
    nqp_decontainerize $P5002, $P5003
    $P5004 = $P5002."!cursor_start_cur"()
    set $P101, $P5004
    find_lex $P5005, "$?CLASS"
    repr_get_attr_int $I5001, $P101, $P5005, "$!from"
    set $I102, $I5001
.annotate 'line', 1199
    $P5006 = $P101."target"()
    set $S5001, $P5006
    set $S101, $S5001
    length $I5002, $S101
    set $I103, $I5002
    find_lex $P5010, "$var"
    set $P5007, $P5010
    iter $P5009, $P5010
    new $P5012, 'ExceptionHandler', [.CONTROL_LOOP_NEXT;.CONTROL_LOOP_REDO;.CONTROL_LOOP_LAST]
    set_label $P5012, for_handlers1055
    push_eh $P5012
  for_next1056:
    unless $P5009, for_done1058
    shift $P5013, $P5009
  for_redo1057:
    .const 'Sub' $P5011 = 'cuid_162_1366375320.00413' 
    capture_lex $P5011
    $P5007 = $P5011($P5013)
    goto for_next1056
  for_handlers1055:
    .get_results ($P5012)
    pop_upto_eh $P5012
    getattribute $P5012, $P5012, 'type'
    eq $P5012, .CONTROL_LOOP_NEXT, for_next1056
    eq $P5012, .CONTROL_LOOP_REDO, for_redo1057
  for_done1058:
    pop_eh 
    set $N5001, $I101
    set $N5002, 0
    isge $I5003, $N5001, $N5002
    unless $I5003 goto if492_end1060 
.annotate 'line', 1217
    set $N5004, $I102
    set $N5005, $I101
    add $N5003, $N5004, $N5005
    $P5014 = $P101."!cursor_pass"($N5003, "")
  if492_end1060:
    find_lex $P5015, "RETURN"
    $P5016 = $P5015($P101)
    .return ($P5016) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_162_1366375320.00413") :anon :lex :outer("cuid_164_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 1201
    .param pmc _lex_param_0 
    .const 'Sub' $P5010 = 'cuid_161_1366375320.00413' 
    capture_lex $P5010 
    .const 'Sub' $P5010 = 'cuid_163_1366375320.00413' 
    capture_lex $P5010 
    .lex "$_", _lex_param_0 
    is_invokable $I5001, _lex_param_0
    unless $I5001 goto if484_else1039 
    .const 'Sub' $P5001 = 'cuid_161_1366375320.00413' 
    capture_lex $P5001
    $P5002 = $P5001()
    goto if484_end1040
  if484_else1039:
    .const 'Sub' $P5003 = 'cuid_163_1366375320.00413' 
    capture_lex $P5003
    $P5004 = $P5003()
  if484_end1040:
    find_lex $P5005, "$s"
    set $P5006, $P5005
    unless $P5005 goto if491_end1054 
    find_lex $I5003, "$maxlen"
    set $N5001, $I5003
    set $N5002, -1
    isgt $I5002, $N5001, $N5002
    box $P5007, $I5002
    set $P5006, $P5007
  if491_end1054:
    set $P5008, $P5006
    unless $P5006 goto if490_end1052 
    die 0, .CONTROL_LOOP_LAST
    box $P5009, 0
    set $P5008, $P5009
  if490_end1052:
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_161_1366375320.00413") :anon :lex :outer("cuid_162_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 1202
    .const 'Sub' $P5009 = 'cuid_160_1366375320.00413' 
    capture_lex $P5009 
    .lex "$res", $P101 
    nqp_get_sc_object $P5001, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P101, $P5001
.annotate 'line', 1203
    find_lex $P5004, "self"
    nqp_decontainerize $P5003, $P5004
    find_lex $P5002, "$_"
    $P5005 = $P5002($P5003)
    set $P101, $P5005
    set $P5008, $P101
    unless $P101 goto if485_end1042 
    .const 'Sub' $P5006 = 'cuid_160_1366375320.00413' 
    capture_lex $P5006
    $P5007 = $P5006()
    set $P5008, $P5007
  if485_end1042:
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_160_1366375320.00413") :anon :lex :outer("cuid_161_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 1204
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
    unless $I5004 goto if486_end1044 
    store_lex "$maxlen", $I101
    set $I5006, $I101
  if486_end1044:
    .return ($I5006) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_163_1366375320.00413") :anon :lex :outer("cuid_162_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 1210
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
    unless $I5002 goto if489_end1050 
    find_lex $I5005, "$pos"
    set $N5004, $I5005
    set $N5005, $I101
    add $N5003, $N5004, $N5005
    find_lex $I5006, "$eos"
    set $N5006, $I5006
    isle $I5004, $N5003, $N5006
    set $I5007, $I5004
  if489_end1050:
    set $I5010, $I5007
    unless $I5007 goto if488_end1048 
    find_lex $S5003, "$tgt"
    find_lex $I5009, "$pos"
    substr $S5002, $S5003, $I5009, $I101
    find_lex $P5002, "$_"
    set $S5004, $P5002
    iseq $I5008, $S5002, $S5004
    set $I5010, $I5008
  if488_end1048:
    set $I5011, $I5010
    unless $I5010 goto if487_end1046 
    store_lex "$maxlen", $I101
    set $I5011, $I101
  if487_end1046:
    .return ($I5011) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_165_1366375320.00413") :anon :lex :outer("cuid_96_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 1220
    .lex "$cur", $P101 
    .lex "$pos", $I101 
    .lex "$tgt", $S101 
    .lex "$len", $I102 
    .lex "$adv", $I103 
    nqp_get_sc_object $P5001, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P101, $P5001
    set $I101, 0
    set $S101, ""
    set $I102, 0
    set $I103, 0
    find_lex $P5002, "$var"
    is_invokable $I5001, $P5002
    unless $I5001 goto if493_end1062 
.annotate 'line', 1221
    find_lex $P5006, "self"
    nqp_decontainerize $P5005, $P5006
    find_lex $P5004, "$var"
    $P5007 = $P5004($P5005)
    find_lex $P5003, "RETURN"
    $P5008 = $P5003($P5007)
  if493_end1062:
.annotate 'line', 1222
    find_lex $P5010, "self"
    nqp_decontainerize $P5009, $P5010
    $P5011 = $P5009."!cursor_start_cur"()
    set $P101, $P5011
    find_lex $P5012, "$?CLASS"
    repr_get_attr_int $I5002, $P101, $P5012, "$!from"
    set $I101, $I5002
.annotate 'line', 1224
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
    if $I5005 goto unless495_end1066 
    substr $S5003, $S101, $I101, $I102
    find_lex $P5015, "$var"
    set $S5004, $P5015
    isne $I5007, $S5003, $S5004
    set $I5008, $I5007
  unless495_end1066:
    unless $I5008 goto if494_end1064 
    find_lex $P5016, "RETURN"
    $P5017 = $P5016($P101)
  if494_end1064:
.annotate 'line', 1229
    $P101."!cursor_pass"($I103, "")
    find_lex $P5018, "RETURN"
    $P5019 = $P5018($P101)
    .return ($P5019) 
.end
.HLL "nqp"
.namespace []
.sub "!INTERPOLATE_REGEX" :subid("cuid_97_1366375320.00413") :anon :lex :outer("cuid_159_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 1234
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .const 'Sub' $P5007 = 'cuid_168_1366375320.00413' 
    capture_lex $P5007 
    .lex "self", _lex_param_0 
    .lex "$var", _lex_param_1 
    root_new $P101, ['parrot';'Continuation']
    set_label $P101, lexotic_1068
    .lex "RETURN", $P101
    is_invokable $I5001, _lex_param_1
    if $I5001 goto unless496_end1071 
    .const 'Sub' $P5001 = 'cuid_168_1366375320.00413' 
    capture_lex $P5001
    $P5002 = $P5001()
  unless496_end1071:
.annotate 'line', 1250
    nqp_decontainerize $P5004, _lex_param_0
    $P5005 = $P5004."!INTERPOLATE"(_lex_param_1)
    find_lex $P5003, "RETURN"
    $P5006 = $P5003($P5005)
    goto lexotic_1069
  lexotic_1068:
    .get_results ($P5006)
  lexotic_1069:
    .return ($P5006) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_168_1366375320.00413") :anon :lex :outer("cuid_97_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 1235
    .const 'Sub' $P5009 = 'cuid_167_1366375320.00413' 
    capture_lex $P5009 
    .lex "$rxcompiler", $P101 
    nqp_get_sc_object $P5001, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P101, $P5001
    compreg $P5002, "QRegex::P6Regex"
    set $P101, $P5002
    find_lex $P5003, "$var"
    nqp_islist $I5001, $P5003
    unless $I5001 goto if497_else1072 
    .const 'Sub' $P5004 = 'cuid_167_1366375320.00413' 
    capture_lex $P5004
    $P5005 = $P5004()
    set $P5008, $P5005
    goto if497_end1073
  if497_else1072:
.annotate 'line', 1246
.annotate 'line', 1247
    find_lex $P5006, "$var"
    $P5007 = $P101."compile"($P5006)
    store_lex "$var", $P5007
    set $P5008, $P5007
  if497_end1073:
    .return ($P5008) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_167_1366375320.00413") :anon :lex :outer("cuid_168_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 1237
    .const 'Sub' $P5009 = 'cuid_166_1366375320.00413' 
    capture_lex $P5009 
    .lex "$res", $P101 
    nqp_get_sc_object $P5001, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P101, $P5001
    new $P5002, 'QRPA'
    set $P101, $P5002
    find_lex $P5006, "$var"
    set $P5003, $P5006
    iter $P5005, $P5006
  for_next1076:
    unless $P5005, for_done1078
    shift $P5008, $P5005
  for_redo1077:
    .const 'Sub' $P5007 = 'cuid_166_1366375320.00413' 
    capture_lex $P5007
    $P5003 = $P5007($P5008)
    goto for_next1076
  for_done1078:
    store_lex "$var", $P101
    .return ($P101) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_166_1366375320.00413") :anon :lex :outer("cuid_167_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 1239
    .param pmc _lex_param_0 
    .lex "$elem", $P101 
    .lex "$_", _lex_param_0 
    nqp_get_sc_object $P5001, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459", 25
    set $P101, $P5001
    set $P101, _lex_param_0
    is_invokable $I5001, $P101
    if $I5001 goto unless498_end1075 
.annotate 'line', 1241
    find_lex $P5002, "$rxcompiler"
    $P5003 = $P5002."compile"($P101)
    set $P101, $P5003
  unless498_end1075:
    find_lex $P5004, "$res"
    push $P5004, $P101
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_169_1366375320.00413") :anon :lex :outer("cuid_145_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 1254
    .const 'Sub' $P5005 = 'cuid_116_1366375320.00413' 
    capture_lex $P5005 
    .const 'Sub' $P5005 = 'cuid_117_1366375320.00413' 
    capture_lex $P5005 
    .const 'Sub' $P5005 = 'cuid_118_1366375320.00413' 
    capture_lex $P5005 
    .const 'Sub' $P5005 = 'cuid_119_1366375320.00413' 
    capture_lex $P5005 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_116_1366375320.00413' 
    capture_lex $P5001
    .const 'Sub' $P5002 = 'cuid_117_1366375320.00413' 
    capture_lex $P5002
    .const 'Sub' $P5003 = 'cuid_118_1366375320.00413' 
    capture_lex $P5003
    .const 'Sub' $P5004 = 'cuid_119_1366375320.00413' 
    capture_lex $P5004
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "new" :subid("cuid_116_1366375320.00413") :anon :lex :outer("cuid_169_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 1256
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$code", _lex_param_1 
.annotate 'line', 1257
    nqp_decontainerize $P5001, _lex_param_0
    $P5002 = $P5001."bless"(_lex_param_1 :named("code"))
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "ACCEPTS" :subid("cuid_117_1366375320.00413") :anon :lex :outer("cuid_169_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 1259
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$target", _lex_param_1 
.annotate 'line', 1260
    nqp_get_sc_object $P5001, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 100
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5001."parse"(_lex_param_1, $P5002 :named("rule"))
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "name" :subid("cuid_118_1366375320.00413") :anon :lex :outer("cuid_169_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 1262
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
    nqp_decontainerize $P5001, _lex_param_0
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 106
    repr_get_attr_obj $P5003, $P5001, $P5002, "$!code"
    set $S5001, $P5003
    .return ($S5001) 
.end
.HLL "nqp"
.namespace []
.sub "Str" :subid("cuid_119_1366375320.00413") :anon :lex :outer("cuid_169_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 1265
    .param pmc _lex_param_0 
    .lex "self", _lex_param_0 
.annotate 'line', 1266
    nqp_decontainerize $P5001, _lex_param_0
    $P5002 = $P5001."name"()
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_170_1366375320.00413") :anon :lex :outer("cuid_145_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 1271
    .const 'Sub' $P5002 = 'cuid_120_1366375320.00413' 
    capture_lex $P5002 
    .lex "$?PACKAGE", $P101 
    .lex "$?CLASS", $P102 
    .const 'Sub' $P5001 = 'cuid_120_1366375320.00413' 
    capture_lex $P5001
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "ACCEPTS" :subid("cuid_120_1366375320.00413") :anon :lex :outer("cuid_170_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
.annotate 'line', 1272
    .param pmc _lex_param_0 
    .param pmc _lex_param_1 
    .lex "self", _lex_param_0 
    .lex "$target", _lex_param_1 
.annotate 'line', 1273
    nqp_get_sc_object $P5001, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 100
    nqp_decontainerize $P5002, _lex_param_0
    $P5003 = $P5001."parse"(_lex_param_1, $P5002 :named("rule"), 0 :named("c"))
    .return ($P5003) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_172_1366375320.00413") :load :init
.annotate 'file', "src/stage2/QRegex.nqp"
    .const 'Sub' $P5001 = 'cuid_171_1366375320.00413' 
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
    .const 'Sub' $P5001 = "cuid_145_1366375320.00413" 
    get_hll_global $P5002, "ModuleLoader"
    $P5003 = $P5002."load_setting"("NQPCORE")
    $P5004 = $P5001."set_outer_ctx"($P5003)
    load_bytecode "ModuleLoader.pbc"
    get_hll_global $P5001, "ModuleLoader"
    $P5001."load_module"("QASTNode")
    nqp_create_sc $P5001, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982"
    set cur_sc, $P5001
    $P5002 = cur_sc."set_description"("src/stage2/QRegex.nqp")
    new $P5003, 'QRPA'
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
    push $P5004, "ParseShared"
    push $P5004, "CREATE"
    push $P5004, "C1551CDFE97585F388CE084B59E3F76005129174-1366375316.4459"
    push $P5004, "src/stage2/NQPCORE.setting"
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
    push $P5004, "$!states"
    push $P5004, "$!edges"
    push $P5004, "$!generic"
    push $P5004, "$!nfa_object"
    push $P5004, "NFA"
    push $P5004, "$!orig"
    push $P5004, "$!target"
    push $P5004, "$!highwater"
    push $P5004, "@!highexpect"
    push $P5004, "%!marks"
    push $P5004, "Uninstantiable"
    push $P5004, "BUILD"
    push $P5004, "list"
    push $P5004, "hash"
    push $P5004, "from"
    push $P5004, "orig"
    push $P5004, "to"
    push $P5004, "CURSOR"
    push $P5004, "Num"
    push $P5004, "Bool"
    push $P5004, "chars"
    push $P5004, "!make"
    push $P5004, "ast"
    push $P5004, "dump"
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
    push $P5004, "!cursor_start_all"
    push $P5004, "!cursor_start_cur"
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
    push $P5004, "name"
    push $P5004, "$!code"
    push $P5004, "__6MODEL_CORE__"
    push $P5004, "GLOBALish"
    push $P5004, "EXPORT"
    push $P5004, "6F214FD4A6984F7B796452FAC8924B10965001E5-1366375312.91878"
    push $P5004, "src/stage2/gen/nqp-mo.pm"
    push $P5004, "QRegex::NFA"
    push $P5004, "edges"
    push $P5004, "nfa_object"
    push $P5004, "NFAType"
    push $P5004, "highwater"
    push $P5004, "highexpect"
    push $P5004, "marks"
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
    push $P5004, "6F03D67C6A0A511F6F9FDA0C4D1E063D61830D12-1366375318.27176"
    push $P5004, "src/stage2/QASTNode.nqp"
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
    push $P5004, "$?PACKAGE"
    push $P5004, "$?ROLE"
    push $P5004, "$NO_CAPS"
    push $P5004, "$NO_RESTART"
    push $P5004, "$RESTART"
    push $P5004, "@start_result"
    push $P5004, "$pass_mark"
    push $P5004, "@EMPTY"
    push $P5004, "$?CLASS"
    .const 'Sub' $P5005 = 'cuid_171_1366375320.00413' 
    capture_lex $P5005
    $P5006 = $P5005()
    nqp_deserialize_sc "BAAAAEAAAAAEAAAAYAAAAA4AAAAIAQAA/hcAAM0AAADOJAAADlIAADMAAADWVgAAAQAAAOZWAABQVwAAAAAAAAwAAAANAAAAjwAAAAAAAACSAAAAkwAAAKcAAACoAAAAAQAAAAAAAACwAAAAAQAAAAwBAABoAQAAAQAAAMQBAAAuAgAAAQAAAIoCAADkBAAANQAAANAFAAAeBgAAAQAAAB4GAAAMBwAAOwAAAAgIAABWCAAAAQAAAFYIAAAaCgAAAQAAAGYLAACADwAAAQAAAAwRAAAIEgAAAQAAAJQSAACaEwAAAQAAADIUAACYFQAAAQAAAPQVAABQFgAAOwAAAKwWAAD2FgAAAAAAAHEAAAAAAAAAAAAAAAoABwAAAAIAAAACAAAAAAByAAAAAwAAAAIAAAAAAHMAAAAEAAAAAgAAAAAAIQAAAAUAAAACAAAAAABWAAAABgAAAAIAAAAAAGQAAAAHAAAAAgAAAAAAagAAAAgAAAACAAAAAABvAAAACgAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAAAAAAAAMA/////////////////////wAAAAB0AAAAAAAAAAEAAAAKAAEAAAAJAAAAAgAAAAAAAgAAAAoAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAAABAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAAAEAAAADAP////////////////////8AAAAAdQAAAAAAAAACAAAACgACAAAACgAAAAIAAAAAACAAAAAEAAAAAgAAAAAAIQAAAAoAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAAACAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAAAIAAAADAP////////////////////8AAAAAdgAAAAAAAAADAAAACgAAAAAACgAkAAAACwAAAAIAAQAAABoAAAAOAAAAAgABAAAAGwAAAA8AAAACAAEAAAAcAAAAEAAAAAIAAAAAAAQAAAARAAAAAgABAAAAHgAAABIAAAACAAEAAAAhAAAAEwAAAAIAAQAAACMAAAAUAAAAAgABAAAAJQAAABUAAAACAAEAAAAmAAAAFgAAAAIAAQAAACgAAAAXAAAAAgAAAAAABQAAABgAAAACAAAAAAAGAAAAGQAAAAIAAAAAAAcAAAAaAAAAAgAAAAAACAAAABsAAAACAAAAAAAJAAAAHAAAAAIAAAAAAAoAAAAdAAAAAgAAAAAACwAAAB4AAAACAAAAAAAMAAAAHwAAAAIAAAAAAA0AAAAgAAAAAgAAAAAADgAAACEAAAACAAAAAAAPAAAAIgAAAAIAAAAAABAAAAAjAAAAAgAAAAAAEQAAACQAAAACAAAAAAASAAAAJQAAAAIAAAAAABMAAAAmAAAAAgAAAAAAFAAAACcAAAACAAAAAAAVAAAAKAAAAAIAAAAAABYAAAApAAAAAgAAAAAAFwAAACoAAAACAAAAAAAYAAAAKwAAAAIAAAAAABkAAAAsAAAAAgAAAAAAGwAAAC0AAAACAAAAAAAcAAAALgAAAAIAAAAAAB0AAAAvAAAAAgAAAAAAHgAAADAAAAACAAAAAAAfAAAAAAAAAAAAAAACAAAAAAAAAAIAAAAAAAMAAAACAAEAAAAZAAAABAAAAAAAAAABAAAAAAAAAAUAAAAAAAAAAwAAAAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAQAAAAIAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAEAAAAZAAAAAgABAAAAGQAAAAEAAgABAAAAGQAAAP///////////////////////////////wAAAAAAAAAAAgAAAAAAAAACAAEAAAAZAAAAAwACAAAAAAADAAAACgAEAAAAMQAAAAQAAAAAAAAAAAAyAAAABAABAAAAAAAAADMAAAAEAAIAAAAAAAAANAAAAAQAAwAAAAAAAAD/////////////////////AAAAAHcAAAAAAAAAGgAAAAoAAAAAAAoAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAAA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TAAAAAQAAQAAAAAAAACGAAAABAACAAAAAAAAAIcAAAAEAAMAAAAAAAAAiAAAAAQABAAAAAAAAACJAAAABAAFAAAAAAAAAIoAAAAEAAYAAAAAAAAAiwAAAAQABwAAAAAAAACMAAAABAAIAAAAAAAAAP////////////////////8AAAAAsAAAAAAAAABqAAAACgAAAAAACgALAAAACwAAAAIAAQAAABoAAAAOAAAAAgABAAAAGwAAAA8AAAACAAEAAAAcAAAAEAAAAAIAAAAAAGsAAAARAAAAAgAAAAAAbgAAABIAAAACAAEAAAAhAAAAEwAAAAIAAQAAACMAAAAUAAAAAgABAAAAJQAAABUAAAACAAAAAABsAAAAFgAAAAIAAQAAACgAAACNAAAAAgAAAAAAbQAAAAAAAAAAAAAAAgAAAAAAAAACAAAAAABqAAAAAgABAAAAGQAAAAQAAAAAAAAAAQAAAAAAAAAFAAAAAAAAAAMAAAAAAAAAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAQAAABkAAAD///////////////////////////////8AAAAAAAAAAAIAAAAAAAAAAgABAAAAGQAAAAMAAgAAAAAAagAAAAoAAQAAAI4AAAAEAAAAAAAAAAAA/////////////////////wAAAACxAAAAAAAAAG8AAAAKAAAAAAAKAAsAAAALAAAAAgABAAAAGgAAAA4AAAACAAEAAAAbAAAADwAAAAIAAQAAABwAAAAQAAAAAgAAAAAAawAAABEAAAACAAAAAABuAAAAEgAAAAIAAQAAACEAAAATAAAAAgABAAAAIwAAABQAAAACAAEAAAAlAAAAFQAAAAIAAAAAAHAAAAAWAAAAAgABAAAAKAAAAI0AAAACAAAAAABtAAAAAAAAAAAAAAADAAAAAAAAAAIAAAAAAG8AAAACAAAAAABqAAAAAgABAAAAGQAAAAQAAAAAAAAAAQAAAAAAAAAFAAAAAAAAAAMAAAAAAAAAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAQAAABkAAAD///////////////////////////////8AAAAAAAAAAAMAAAAAAAAAAgABAAAAGQAAAAMAAgAAAAAAagAAAAoAAQAAAI4AAAAEAAAAAAAAAAAAAgAAAAAAbwAAAAMA/////////////////////wAAAADKAAAAAAAAAHIAAAAKABQAAACmAAAAAgAEAAAAAwAAAKkAAAACAAQAAAAIAAAAqgAAAAIABAAAAAwAAACrAAAAAgAEAAAAIgAAAKwAAAACAAQAAAAqAAAArQAAAAIABAAAAC8AAACuAAAAAgAEAAAANAAAAK8AAAACAAQAAAA5AAAAsAAAAAIABAAAAD0AAACxAAAAAgAEAAAAQgAAALIAAAACAAQAAABHAAAAswAAAAIABAAAAFAAAAC0AAAAAgAEAAAAUgAAALUAAAACAAQAAABZAAAAtgAAAAIABAAAAF0AAAC3AAAAAgAEAAAAYgAAALgAAAACAAQAAABnAAAAuQAAAAIABAAAAG8AAAC6AAAAAgAEAAAAcgAAALsAAAACAAQAAAB8AAAACgAAAAAAAAAAAAAAAAABAAAAAAAAAAIAAAAAAHIAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD///////////////////////////////8AAAAAAAAAAAEAAAAAAAAAAgAAAAAAcgAAAAMA/////////////////////wAAAADLAAAAAAAAAHMAAAAKAAEAAAA1AAAAAgAAAAAAAwAAAAoAAAAAAAAAAAAAAAAAAQAAAAAAAAACAAAAAABzAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA////////////////////////////////AAAAAAAAAAABAAAAAAAAAAIAAAAAAHMAAAADAP////////////////////8AAAAAzAAAAAAAAACvAAAAAwAKAAAAAAAAAAAAAAAAAAEAAAAAAAAAAgAAAAAArwAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAIAAAAAAAAAAAAAAAAAAAADAAAAAAAAAAAAAAABAAAABQAAAAAAAAABAAAAAQAAAAUAAAAUAAAAAQAAAAEAAAAFAAAAKAAAAAEAAAABAAAABQAAADwAAAABAAAAAQAAAAUAAABQAAAAAQAAAAEAAAAFAAAAZAAAAAEAAAABAAAABQAAAHgAAAABAAAAAQAAAAUAAACMAAAAAQAAAAEAAAAFAAAAoAAAAAEAAAABAAAABQAAALQAAAABAAAAAQAAAAUAAADIAAAAAQAAAAEAAAAFAAAA3AAAAAEAAAABAAAABQAAAPAAAAABAAAAAQAAAAUAAAAEAQAAAQAAAAEAAAAFAAAAGAEAAAEAAAABAAAABQAAACwBAAABAAAAAQAAAAUAAABAAQAAAQAAAAEAAAAFAAAAVAEAAAEAAAABAAAABQAAAGgBAAABAAAAAQAAAAUAAAB8AQAAAQAAAAEAAAAFAAAAkAEAAAEAAAABAAAABQAAAKQBAAABAAAAAAAAAAQAAAC4AQAAAAAAAAEAAAAFAAAAuAEAAAEAAAABAAAABQAAAMwBAAABAAAAAQAAAAUAAADgAQAAAQAAAAEAAAAFAAAA9AEAAAEAAAABAAAABQAAAAgCAAABAAAAAAAAAAUAAAAcAgAAAAAAAAAAAAAGAAAAHAIAAAAAAAABAAAABQAAABwCAAABAAAAAQAAAAUAAAAwAgAAAQAAAAEAAAAFAAAARAIAAAEAAAABAAAABQAAAFgCAAABAAAAAQAAAAUAAABsAgAAAQAAAAEAAAAFAAAAgAIAAAEAAAABAAAABQAAAJQCAAABAAAAAQAAAAUAAACoAgAAAQAAAAEAAAAFAAAAvAIAAAEAAAABAAAABQAAANACAAABAAAAAQAAAAUAAADkAgAAAQAAAAEAAAAFAAAA+AIAAAEAAAABAAAABQAAAAwDAAABAAAAAQAAAAUAAAAgAwAAAQAAAAEAAAAFAAAANAMAAAEAAAABAAAABQAAAEgDAAABAAAAAQAAAAUAAABcAwAAAQAAAAEAAAAFAAAAcAMAAAEAAAABAAAABQAAAIQDAAABAAAAAQAAAAUAAACYAwAAAQAAAAEAAAAFAAAArAMAAAEAAAABAAAABQAAAMADAAABAAAAAQAAAAUAAADUAwAAAQAAAAEAAAAFAAAA6AMAAAEAAAABAAAABQAAAPwDAAABAAAAAQAAAAUAAAAQBAAAAQAAAAEAAAAFAAAAJAQAAAEAAAABAAAABQAAADgEAAABAAAAAQAAAAUAAABMBAAAAQAAAAEAAAAFAAAAYAQAAAEAAAABAAAABQAAAHQEAAABAAAAAQAAAAUAAACIBAAAAQAAAAEAAAAFAAAAnAQAAAEAAAABAAAABQAAALAEAAABAAAAAQAAAAUAAADEBAAAAQAAAAEAAAAFAAAA2AQAAAEAAAABAAAABQAAAOwEAAABAAAAAQAAAAUAAAAABQAAAQAAAAEAAAAFAAAAFAUAAAEAAAABAAAABQAAACgFAAABAAAAAQAAAAUAAAA8BQAAAQAAAAEAAAAFAAAAUAUAAAEAAAABAAAABQAAAGQFAAABAAAAAQAAAAUAAAB4BQAAAQAAAAEAAAAFAAAAjAUAAAEAAAABAAAABQAAAKAFAAABAAAAAQAAAAUAAAC0BQAAAQAAAAEAAAAFAAAAyAUAAAEAAAABAAAABQAAANwFAAABAAAAAQAAAAUAAADwBQAAAQAAAAEAAAAFAAAABAYAAAEAAAABAAAABQAAABgGAAABAAAAAAAAAAcAAAAsBgAAAAAAAAEAAAAFAAAALAYAAAEAAAABAAAABQAAAEAGAAABAAAAAQAAAAUAAABUBgAAAQAAAAEAAAAFAAAAaAYAAAEAAAABAAAABQAAAHwGAAABAAAAAQAAAAUAAACQBgAAAQAAAAEAAAAFAAAApAYAAAEAAAABAAAABQAAALgGAAABAAAAAQAAAAUAAADMBgAAAQAAAAEAAAAFAAAA4AYAAAEAAAABAAAABQAAAPQGAAABAAAAAQAAAAUAAAAIBwAAAQAAAAEAAAAFAAAAHAcAAAEAAAAAAAAACAAAADAHAAAAAAAAAQAAAAUAAAAwBwAAAQAAAAEAAAAFAAAARAcAAAEAAAABAAAABQAAAFgHAAABAAAAAQAAAAUAAABsBwAAAQAAAAEAAAAFAAAAgAcAAAEAAAAAAAAACQAAAJQHAAAAAAAAAQAAAAUAAACUBwAAAQAAAAEAAAAFAAAAqAcAAAEAAAABAAAABQAAALwHAAABAAAAAQAAAAUAAADQBwAAAQAAAAAAAAAKAAAA5AcAAAAAAAABAAAABQAAAOQHAAABAAAAAgAAAAAAAAD4BwAAAQAAAAAAAAALAAAACAgAAAAAAAAAAAAADAAAAAgIAAAAAAAAAgAAAAAAAAAICAAAAQAAAAIAAAAAAAAAGAgAAAEAAAADAAAABwAAACgIAAABAAAAAgAAAAAAAACsDAAAAQAAAAMAAAAHAAAAvAwAAAEAAAADAAAABgAAAA4PAAABAAAAAwAAAAcA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AwALAAAAAAAYAAAAAQABAAEAAQADAAsAAAAAABkAAAABAAEAAQABAAMACwAAAAAAGgAAAAEAAQABAAEAAwALAAAAAAAbAAAAAQABAAEAAQADAAsAAAAAABwAAAABAAEAAQABAAMACwAAAAAAHQAAAAEAAQABAAEAAwALAAAAAAAeAAAAAQABAAEAAQADAAsAAAAAAB8AAAABAAEAAQABAAMACwAAAAAAIAAAAAEAAQABAAEAAwALAAAAAAAhAAAAAQABAAEAAQADAAsAAAAAACIAAAABAAEAAQABAAMACwAAAAAAIwAAAAEAAQABAAEAAwALAAAAAAAkAAAAAQABAAEAAQADAAsAAAAAACUAAAABAAEAAQABAAMACwAAAAAAJgAAAAEAAQABAAEAAwALAAAAAAAnAAAAAQABAAEAAQADAAsAAAAAACgAAAABAAEAAQABAAMACwAAAAAAKQAAAAEAAQABAAEAAwALAAAAAAAqAAAAAQABAAEAAQADAAsAAAAAACsAAAABAAEAAQABAAMACwAAAAAALAAAAAEAAQABAAEAAwALAAAAAAAtAAAAAQABAAEAAQADAAsAAAAAAC4AAAABAAEAAQABAAMACwAAAAAALwAAAAEAAQABAAEAAwALAAAAAAAwAAAAAQABAAEAAQADAAsAAAAAADEAAAABAAEAAQABAAMACwAAAAAAMgAAAAEAAQABAAEAAwALAAAAAAAzAAAAAQABAAEAAQADAAsAAAAAADQAAAABAAEAAQABAAMACwAAAAAANQAAAAEAAQABAAEAAwALAAAAAAA2AAAAAQABAAEAAQADAAsAAAAAADcAAAABAAEAAQABAAMACwAAAAAAOAAAAAEAAQABAAEAAwALAAAAAAA5AAAAAQABAAEAAQADAAsAAAAAADoAAAABAAEAAQABAAMACwAAAAAAOwAAAAEAAQABAAEAAwALAAAAAAA8AAAAAQABAAEAAQADAAsAAAAAAD0AAAABAAEAAQABAAMACwAAAAAAPgAAAAEAAQABAAEAAwALAAAAAAA/AAAAAQABAAEAAQADAAsAAAAAAEAAAAABAAEAAQABAAMACwAAAAAAQQAAAAEAAQABAAEAAwALAAAAAABCAAAAAQABAAEAAQADAAsAAAAAAEMAAAABAAEAAQABAAMACwAAAAAARAAAAAEAAQABAAEAAwALAAAAAABFAAAAAQABAAEAAQADAAsAAAAAAEYAAAABAAEAAQABAAMACwAAAAAARwAAAAEAAQABAAEAAwALAAAAAABIAAAAAQABAAEAAQADAAsAAAAAAEkAAAABAAEAAQABAAMACwAAAAAASgAAAAEAAQABAAEAAwALAAAAAABLAAAAAQABAAEAAQADAAsAAAAAAEwAAAABAAEAAQABAAMACwAAAAAATQAAAAEAAQABAAEAAwALAAAAAABOAAAAAQABAAEAAQADAAsAAAAAAE8AAAABAAEAAQABAAMACwAAAAAAUAAAAAEAAQABAAEAAwALAAAAAABRAAAAAQABAAEAAQADAAsAAAAAAFIAAAABAAEAAQABAAMACwAAAAAAUwAAAAEAAQABAAEAAwALAAAAAABUAAAAAQABAAEAAQADAAsAAAAAAFUAAAABAAEAAQABAAMACwAAAAAAVgAAAAEAAQABAAEAAwALAAAAAABXAAAAAQABAAEAAQADAAsAAAAAAFgAAAABAAEAAQABAAMACwAAAAAAWQAAAAEAAQABAAEAAwALAAAAAABaAAAAAQABAAEAAQADAAsAAAAAAFsAAAABAAEAAQABAAMACwAAAAAAXAAAAAEAAQABAAEAAwALAAAAAABdAAAAAQABAAEAAQADAAsAAAAAAF4AAAABAAEAAQABAAMACwAAAAAAXwAAAAEAAQABAAEAAwALAAAAAABgAAAAAQABAAEAAQADAAsAAAAAAGEAAAABAAEAAQABAAMACwAAAAAAYgAAAAEAAQABAAEAAwALAAAAAABjAAAAAQABAAEAAQADAAsAAAAAAGQAAAABAAEAAQABAAMACwAAAAAAZQAAAAEAAQABAAEAAwCQAAAABwAAAAAACgAAAAAAkQAAAAcAAAAAAAoAAAAAAAkAAAAHAAAAAAAKAAAAAAAGAJQAAAANAAQAAAACAAAAAACyAAAAAgAAAAAAswAAAAIAAAAAALQAAAACAAAAAAC1AAAACgAbAAAAEAAAAAIAAAAAAAQAAAAXAAAAAgAAAAAABQAAABgAAAACAAAAAAAGAAAAGQAAAAIAAAAAAAcAAAAaAAAAAgAAAAAACAAAABsAAAACAAAAAAAJAAAAHAAAAAIAAAAAAAoAAAAdAAAAAgAAAAAACwAAAB4AAAACAAAAAAAMAAAAHwAAAAIAAAAAAA0AAAAgAAAAAgAAAAAADgAAACEAAAACAAAAAAAPAAAAIgAAAAIAAAAAABAAAAAjAAAAAgAAAAAAEQAAACQAAAACAAAAAAASAAAAJQAAAAIAAAAAABMAAAAmAAAAAgAAAAAAFAAAACcAAAACAAAAAAAVAAAAKAAAAAIAAAAAABYAAAApAAAAAgAAAAAAFwAAACoAAAACAAAAAAAYAAAAKwAAAAIAAAAAABkAAAAsAAAAAgAAAAAAGwAAAC0AAAACAAAAAAAcAAAALgAAAAIAAAAAAB0AAAAvAAAAAgAAAAAAHgAAADAAAAACAAAAAAAfAAAADQAbAAAAAgAAAAAABAAAAAIAAAAAAAUAAAACAAAAAAAGAAAAAgAAAAAABwAAAAIAAAAAAAgAAAACAAAAAAAJAAAAAgAAAAAACgAAAAIAAAAAAAsAAAACAAAAAAAMAAAAAgAAAAAADQAAAAIAAAAAAA4AAAACAAAAAAAPAAAAAgAAAAAAEAAAAAIAAAAAABEAAAACAAAAAAASAAAAAgAAAAAAEwAAAAIAAAAAABQAAAACAAAAAAAVAAAAAgAAAAAAFgAAAAIAAAAAABcAAAACAAAAAAAYAAAAAgAAAAAAGQAAAAIAAAAAABsAAAACAAAAAAAcAAAAAgAAAAAAHQAAAAIAAAAAAB4AAAACAAAAAAAfAAAADQAAAAAADQABAAAAAgABAAAAGQAAAA0AAAAAAAIAAQAAABkAAAANAAAAAAAKAAAAAAAEAAEAAAAAAAAADQACAAAAAgAAAAAAAwAAAAIAAQAAABkAAAANAAAAAAABAAoAAAAAAAoAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAADQAEAAAADQAEAAAABAABAAAAAAAAAAIAAAAAAAMAAAAGABoAAAAGADEAAAANAAQAAAAEAAEAAAAAAAAAAgAAAAAAAwAAAAYAlQAAAAYAMgAAAA0ABAAAAAQAAQAAAAAAAAACAAAAAAADAAAABgAuAAAABgAzAAAADQAEAAAABAABAAAAAAAAAAIAAAAAAAMAAAAGAJYAAAAGADQAAAANAAQAAAANAAQAAAAEAAEAAAAAAAAAAgAAAAAAAwAAAAYAGgAAAAYAMQAAAA0ABAAAAAQAAQAAAAAAAAACAAAAAAADAAAABgCVAAAABgAyAAAADQAEAAAABAABAAAA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AgAAAAAAagAAAAIAAQAAABkAAAANAAAAAAABAAoAAAAAAAoAAAAAAAQAAAAAAAAAAAAEAAAAAAAAAAAADQABAAAADQAEAAAABAABAAAAAAAAAAIAAAAAAGoAAAAGAKUAAAAGAI4AAAANAAAAAAABAAYAMQAAAAMABAAAAAAAAAAAAAMAAgABAAAAGQAAAAQAAQAAAAAAAAABAAEABgAyAAAAAwAEAAAAAAAAAAAAAwACAAEAAAAZAAAABAABAAAAAAAAAAEAAQAGADMAAAACAAEAAAACAAAABAABAAAAAAAAAAMAAgABAAAAAgAAAAQAAQAAAAAAAAABAAEABgA0AAAAAwAEAAAAAAAAAAAAAwACAAEAAAAZAAAABAABAAAAAAAAAAEAAQAGADYAAAADAAQAAAAAAAAAAAADAAIAAQAAABkAAAAEAAEAAAAAAAAAAQABAAYANwAAAAIAAQAAAAQAAAAEAAEAAAAAAAAAAwACAAEAAAAEAAAABAABAAAAAAAAAAEAAQAGADgAAAACAAEAAAACAAAABAABAAAAAAAAAAMAAgABAAAAAgAAAAQAAQAAAAAAAAABAAEABgA5AAAAAwAEAAAAAAAAAAAAAwADAAQAAAAAAAAAAAABAAEABgA6AAAAAwAEAAAAAAAAAAAAAwADAAQAAAAAAAAAAAABAAEABgCFAAAAAwAEAAAAAAAAAAAAAwACAAEAAAAZAAAABAABAAAAAAAAAAEAAQAGAEwAAAACAAEAAAACAAAABAABAAAAAAAAAAMAAgABAAAAAgAAAAQAAQAAAAAAAAABAAEABgCGAAAAAgABAAAAAgAAAAQAAQAAAAAAAAADAAIAAQAAAAIAAAAEAAEAAAAAAAAAAQABAAYAhwAAAAMABAAAAAAAAAAAAAMAAgABAAAAGQAAAAQAAQAAAAAAAAABAAEABgCIAAAAAwAEAAAAAAAAAAAAAwACAAEAAAAZAAAABAABAAAAAAAAAAEAAQAGAIkAAAADAAQAAAAAAAAAAAADAAIAAQAAABkAAAAEAAEAAAAAAAAAAQABAAYAigAAAAMABAAAAAAAAAAAAAMAAgABAAAAGQAAAAQAAQAAAAAAAAABAAEABgCLAAAAAwAEAAAAAAAAAAAAAwACAAEAAAAZAAAABAABAAAAAAAAAAEAAQAGAIwAAAADAAQAAAAAAAAA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", cur_sc, $P5004, $P5006, conflicts
    unless conflicts goto if499_end1080 
    die "Repossession conflicts occurred during deserialization"
  if499_end1080:
    .const "LexInfo" $P5001 = "cuid_145_1366375320.00413"
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 0
    $P5001."set_static_lexpad_value"("GLOBALish", $P5002)
    .const "LexInfo" $P5003 = "cuid_145_1366375320.00413"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_145_1366375320.00413"
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 0
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_145_1366375320.00413"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_145_1366375320.00413"
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 1
    $P5001."set_static_lexpad_value"("EXPORT", $P5002)
    .const "LexInfo" $P5003 = "cuid_145_1366375320.00413"
    $P5004 = $P5003."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_1_1366375320.00413" 
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 4
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_2_1366375320.00413" 
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 5
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_3_1366375320.00413" 
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 6
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_4_1366375320.00413" 
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 7
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_5_1366375320.00413" 
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 8
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_6_1366375320.00413" 
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 9
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_7_1366375320.00413" 
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 10
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_8_1366375320.00413" 
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 11
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_9_1366375320.00413" 
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 12
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_10_1366375320.00413" 
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 13
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_11_1366375320.00413" 
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 14
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_12_1366375320.00413" 
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 15
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_13_1366375320.00413" 
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 16
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_14_1366375320.00413" 
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 17
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_15_1366375320.00413" 
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 18
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_16_1366375320.00413" 
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 19
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_17_1366375320.00413" 
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 20
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_18_1366375320.00413" 
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 21
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_19_1366375320.00413" 
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 22
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_20_1366375320.00413" 
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 23
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_21_1366375320.00413" 
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 24
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_22_1366375320.00413" 
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 25
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_121_1366375320.00413"
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 26
    $P5001."set_static_lexpad_value"("NFAType", $P5002)
    .const "LexInfo" $P5003 = "cuid_121_1366375320.00413"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_140_1366375320.00413"
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 26
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_140_1366375320.00413"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_140_1366375320.00413"
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 26
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_140_1366375320.00413"
    $P5004 = $P5003."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_23_1366375320.00413" 
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 27
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_24_1366375320.00413" 
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 28
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_25_1366375320.00413" 
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 29
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_26_1366375320.00413" 
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 30
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_27_1366375320.00413" 
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 31
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_121_1366375320.00413"
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 3
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_121_1366375320.00413"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_121_1366375320.00413"
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 3
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_121_1366375320.00413"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_145_1366375320.00413"
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 32
    $P5001."set_static_lexpad_value"("ParseShared", $P5002)
    .const "LexInfo" $P5003 = "cuid_145_1366375320.00413"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_146_1366375320.00413"
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 32
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_146_1366375320.00413"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_146_1366375320.00413"
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 32
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_146_1366375320.00413"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_145_1366375320.00413"
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 33
    $P5001."set_static_lexpad_value"("NQPCursorRole", $P5002)
    .const "LexInfo" $P5003 = "cuid_145_1366375320.00413"
    $P5004 = $P5003."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_28_1366375320.00413" 
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 34
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_29_1366375320.00413" 
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 35
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_30_1366375320.00413" 
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 36
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_31_1366375320.00413" 
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 37
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_32_1366375320.00413" 
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 38
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_33_1366375320.00413" 
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 39
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_34_1366375320.00413" 
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 40
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_35_1366375320.00413" 
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 41
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_36_1366375320.00413" 
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 42
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_37_1366375320.00413" 
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 43
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_38_1366375320.00413" 
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 44
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_39_1366375320.00413" 
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 45
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_40_1366375320.00413" 
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 46
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_41_1366375320.00413" 
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 47
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_42_1366375320.00413" 
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 48
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_43_1366375320.00413" 
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 49
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_44_1366375320.00413" 
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 50
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_45_1366375320.00413" 
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 51
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_46_1366375320.00413" 
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 52
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_47_1366375320.00413" 
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 53
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_48_1366375320.00413" 
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 54
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_49_1366375320.00413" 
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 55
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_50_1366375320.00413" 
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 56
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_51_1366375320.00413" 
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 57
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_52_1366375320.00413" 
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 58
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_53_1366375320.00413" 
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 59
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_54_1366375320.00413" 
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 60
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_55_1366375320.00413" 
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 61
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_56_1366375320.00413" 
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 62
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_57_1366375320.00413" 
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 63
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_58_1366375320.00413" 
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 64
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_59_1366375320.00413" 
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 65
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_60_1366375320.00413" 
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 66
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_61_1366375320.00413" 
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 67
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_62_1366375320.00413" 
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 68
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_63_1366375320.00413" 
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 69
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_64_1366375320.00413" 
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 70
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_65_1366375320.00413" 
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 71
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_66_1366375320.00413" 
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 72
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_67_1366375320.00413" 
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 73
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_68_1366375320.00413" 
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 74
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_69_1366375320.00413" 
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 75
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_70_1366375320.00413" 
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 76
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_71_1366375320.00413" 
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 77
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_72_1366375320.00413" 
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 78
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_73_1366375320.00413" 
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 79
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_74_1366375320.00413" 
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 80
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_75_1366375320.00413" 
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 81
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_76_1366375320.00413" 
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 82
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_77_1366375320.00413" 
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 83
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_78_1366375320.00413" 
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 84
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_79_1366375320.00413" 
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 85
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_79_1366375320.00413"
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 33
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_79_1366375320.00413"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_79_1366375320.00413"
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 33
    $P5001."set_static_lexpad_value"("$?ROLE", $P5002)
    .const "LexInfo" $P5003 = "cuid_79_1366375320.00413"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_145_1366375320.00413"
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 86
    $P5001."set_static_lexpad_value"("NQPMatch", $P5002)
    .const "LexInfo" $P5003 = "cuid_145_1366375320.00413"
    $P5004 = $P5003."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_80_1366375320.00413" 
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 87
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_81_1366375320.00413" 
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 88
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_82_1366375320.00413" 
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 89
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_83_1366375320.00413" 
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 90
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_84_1366375320.00413" 
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 91
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_85_1366375320.00413" 
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 92
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_86_1366375320.00413" 
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 93
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_87_1366375320.00413" 
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 94
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_88_1366375320.00413" 
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 95
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_89_1366375320.00413" 
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 96
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_90_1366375320.00413" 
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 97
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_91_1366375320.00413" 
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 98
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_92_1366375320.00413" 
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 99
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_147_1366375320.00413"
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 86
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_147_1366375320.00413"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_147_1366375320.00413"
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 86
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_147_1366375320.00413"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_145_1366375320.00413"
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 100
    $P5001."set_static_lexpad_value"("NQPCursor", $P5002)
    .const "LexInfo" $P5003 = "cuid_145_1366375320.00413"
    $P5004 = $P5003."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_93_1366375320.00413" 
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 101
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_94_1366375320.00413" 
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 102
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_95_1366375320.00413" 
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 103
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_96_1366375320.00413" 
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 104
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_97_1366375320.00413" 
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 105
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_159_1366375320.00413"
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 100
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_159_1366375320.00413"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_159_1366375320.00413"
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 100
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_159_1366375320.00413"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_145_1366375320.00413"
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 106
    $P5001."set_static_lexpad_value"("NQPRegexMethod", $P5002)
    .const "LexInfo" $P5003 = "cuid_145_1366375320.00413"
    $P5004 = $P5003."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_116_1366375320.00413" 
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 107
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_117_1366375320.00413" 
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 108
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_118_1366375320.00413" 
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 109
    set_sub_code_object $P5001, $P5002
    .const 'Sub' $P5001 = "cuid_119_1366375320.00413" 
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 110
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_169_1366375320.00413"
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 106
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_169_1366375320.00413"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_169_1366375320.00413"
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 106
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_169_1366375320.00413"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_145_1366375320.00413"
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 111
    $P5001."set_static_lexpad_value"("NQPRegex", $P5002)
    .const "LexInfo" $P5003 = "cuid_145_1366375320.00413"
    $P5004 = $P5003."finish_static_lexpad"()
    .const 'Sub' $P5001 = "cuid_120_1366375320.00413" 
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 112
    set_sub_code_object $P5001, $P5002
    .const "LexInfo" $P5001 = "cuid_170_1366375320.00413"
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 111
    $P5001."set_static_lexpad_value"("$?PACKAGE", $P5002)
    .const "LexInfo" $P5003 = "cuid_170_1366375320.00413"
    $P5004 = $P5003."finish_static_lexpad"()
    .const "LexInfo" $P5001 = "cuid_170_1366375320.00413"
    nqp_get_sc_object $P5002, "17557A4BF9D79163D1673BC4A1E863C878435BF4-1366375320.03982", 111
    $P5001."set_static_lexpad_value"("$?CLASS", $P5002)
    .const "LexInfo" $P5003 = "cuid_170_1366375320.00413"
    $P5004 = $P5003."finish_static_lexpad"()
    .return ($P5004) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_171_1366375320.00413") :anon :lex :outer("cuid_172_1366375320.00413")
.annotate 'file', "src/stage2/QRegex.nqp"
    new $P5001, 'QRPA'
    .const 'Sub' $P5002 = "cuid_1_1366375320.00413" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_2_1366375320.00413" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_3_1366375320.00413" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_4_1366375320.00413" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_5_1366375320.00413" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_6_1366375320.00413" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_7_1366375320.00413" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_8_1366375320.00413" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_9_1366375320.00413" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_10_1366375320.00413" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_11_1366375320.00413" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_12_1366375320.00413" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_13_1366375320.00413" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_14_1366375320.00413" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_15_1366375320.00413" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_16_1366375320.00413" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_17_1366375320.00413" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_18_1366375320.00413" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_19_1366375320.00413" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_20_1366375320.00413" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_21_1366375320.00413" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_22_1366375320.00413" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_23_1366375320.00413" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_24_1366375320.00413" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_25_1366375320.00413" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_26_1366375320.00413" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_27_1366375320.00413" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_28_1366375320.00413" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_29_1366375320.00413" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_30_1366375320.00413" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_31_1366375320.00413" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_32_1366375320.00413" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_33_1366375320.00413" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_34_1366375320.00413" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_35_1366375320.00413" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_36_1366375320.00413" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_37_1366375320.00413" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_38_1366375320.00413" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_39_1366375320.00413" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_40_1366375320.00413" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_41_1366375320.00413" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_42_1366375320.00413" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_43_1366375320.00413" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_44_1366375320.00413" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_45_1366375320.00413" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_46_1366375320.00413" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_47_1366375320.00413" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_48_1366375320.00413" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_49_1366375320.00413" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_50_1366375320.00413" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_51_1366375320.00413" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_52_1366375320.00413" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_53_1366375320.00413" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_54_1366375320.00413" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_55_1366375320.00413" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_56_1366375320.00413" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_57_1366375320.00413" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_58_1366375320.00413" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_59_1366375320.00413" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_60_1366375320.00413" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_61_1366375320.00413" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_62_1366375320.00413" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_63_1366375320.00413" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_64_1366375320.00413" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_65_1366375320.00413" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_66_1366375320.00413" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_67_1366375320.00413" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_68_1366375320.00413" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_69_1366375320.00413" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_70_1366375320.00413" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_71_1366375320.00413" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_72_1366375320.00413" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_73_1366375320.00413" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_74_1366375320.00413" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_75_1366375320.00413" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_76_1366375320.00413" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_77_1366375320.00413" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_78_1366375320.00413" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_79_1366375320.00413" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_80_1366375320.00413" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_81_1366375320.00413" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_82_1366375320.00413" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_83_1366375320.00413" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_84_1366375320.00413" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_85_1366375320.00413" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_86_1366375320.00413" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_87_1366375320.00413" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_88_1366375320.00413" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_89_1366375320.00413" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_90_1366375320.00413" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_91_1366375320.00413" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_92_1366375320.00413" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_93_1366375320.00413" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_94_1366375320.00413" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_95_1366375320.00413" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_96_1366375320.00413" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_97_1366375320.00413" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_116_1366375320.00413" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_117_1366375320.00413" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_118_1366375320.00413" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_119_1366375320.00413" 
    push $P5001, $P5002
    .const 'Sub' $P5002 = "cuid_120_1366375320.00413" 
    push $P5001, $P5002
    .return ($P5001) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_173_1366375320.00413") :load
.annotate 'file', "src/stage2/QRegex.nqp"
    .const 'Sub' $P5001 = "cuid_145_1366375320.00413" 
    $P5002 = $P5001()
    .return ($P5002) 
.end
.HLL "nqp"
.namespace []
.sub "" :subid("cuid_174_1366375320.00413") :main
.annotate 'file', "src/stage2/QRegex.nqp"
    .param pmc ARGS :slurpy 
    .const 'Sub' $P5001 = "cuid_145_1366375320.00413" 
    $P5002 = $P5001(ARGS :flat)
    .return ($P5002) 
.end